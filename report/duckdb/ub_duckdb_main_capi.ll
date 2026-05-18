inline.NumInlined: 10466
inline.NumDeleted: 4631
begin_hunk_0_@_ZN6duckdb17AggregateFunctionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorINS_11LogicalTypeELb1ESaISA_EEERKSA_PFmRKS0_EPFvSI_PhEPFvPNS_6VectorERNS_18AggregateInputDataEmRSO_mEPFvSS_SS_SR_mEPFvSS_SR_SS_mmEPFvSP_SR_mSL_mEPFNS_10unique_ptrINS_12FunctionDataESt14default_deleteIS12_ELb1EEERNS_13ClientContextERS0_RNS9_INS11_INS_10ExpressionES13_IS19_ELb1EEELb1ESaIS1B_EEEEPFvSS_SR_mEPFNS11_INS_14BaseStatisticsES13_IS1J_ELb1EEES17_RNS_24BoundAggregateExpressionERNS_24AggregateStatisticsInputEEPFvSR_RKNS_20WindowPartitionInputEPKhSL_RKNS9_INS_11FrameBoundsELb1ESaIS1X_EEESS_mEPFvRNS_10SerializerENS_12optional_ptrIS12_Lb1EEESI_EPFS15_RNS_12DeserializerES18_E:bb.a
          cleanup
  br label %bb.n

bb.i:                                             ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %19) #37
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.k ], [ %i.an, %bb.j ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #37
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.l ], [ %i.am, %bb.i ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #37
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.m ], [ %i.al, %bb.h ]
  %i.ap = load ptr, ptr %16, align 8, !tbaa !25   ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.b
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.ap) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !92     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i) #37
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !96

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !92
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #39
  br label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define void @duckdb_destroy_aggregate_function(ptr noundef captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !142    ; 3 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(368) %i.a) #37
  store ptr null, ptr %0, align 8, !tbaa !142
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @duckdb_aggregate_function_set_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #37
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.e, ptr noundef nonnull %1, i64 noundef %i.f) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress uwtable
define void @duckdb_aggregate_function_add_parameter(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !144
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !95
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.h, ptr %i.c, align 8, !tbaa !95
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @duckdb_aggregate_function_set_return_type(ptr noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i, label %bb.b

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i: ; preds = %bb.a
  call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load i8, ptr %2, align 8, !tbaa !145
  store i8 %i.d, ptr %i.c, align 8, !tbaa !145
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !146
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 209
  store i8 %i.f, ptr %i.g, align 1, !tbaa !146
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !147
  %i.k = load <2 x ptr>, ptr %i.h, align 8, !tbaa !147
  store <2 x ptr> %i.j, ptr %i.h, align 8, !tbaa !147
  store <2 x ptr> %i.k, ptr %i.i, align 8, !tbaa !147
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #37
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i
  ret void
}

declare void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @duckdb_aggregate_function_set_functions(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %6 = insertelement <4 x ptr> poison, ptr %0, i64 0
  %7 = insertelement <4 x ptr> %6, ptr %1, i64 1
  %8 = insertelement <4 x ptr> %7, ptr %2, i64 2
  %9 = insertelement <4 x ptr> %8, ptr %3, i64 3
  %10 = icmp ne ptr %4, null
  %11 = icmp ne ptr %5, null
  %12 = icmp eq <4 x ptr> %9, splat (ptr null)
  %13 = bitcast <4 x i1> %12 to i4
  %i.a = icmp eq i4 %13, 0
  %op.rdx = and i1 %i.a, %10
  %op.rdx31 = and i1 %op.rdx, %11
  br i1 %op.rdx31, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.c = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_21AggregateFunctionInfoELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %3, ptr %i.f, align 8, !tbaa !88
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %4, ptr %i.g, align 8, !tbaa !89
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %5, ptr %i.h, align 8, !tbaa !90
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @duckdb_aggregate_function_set_destructor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.d = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_21AggregateFunctionInfoELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %1, ptr %i.e, align 8, !tbaa !91
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr @_ZN6duckdb23CAPIAggregateDestructorERNS_6VectorERNS_18AggregateInputDataEm, ptr %i.f, align 8, !tbaa !136
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @duckdb_register_aggregate_function(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.duckdb::AggregateFunctionSet", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.duckdb::AggregateFunction", align 8 ; 10 uses
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne ptr %1, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !33
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !25   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !34   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 %i.h, ptr %i.a, align 8, !tbaa !110
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !25
  %i.k = load i64, ptr %i.a, align 8, !tbaa !110
  store i64 %i.k, ptr %i.e, align 8, !tbaa !35
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.l = phi ptr [ %i.j, %.noexc.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !35
  store i8 %i.m, ptr %i.l, align 1, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.n = load i64, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !34
  %i.p = load ptr, ptr %3, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  invoke void @_ZN6duckdb20AggregateFunctionSetC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull %3)
          to label %bb.e unwind label %bb.s

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.r = load ptr, ptr %3, align 8, !tbaa !25     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.e
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.r) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  invoke void @_ZN6duckdb18BaseScalarFunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(368) %4, ptr noundef nonnull align 8 dereferenceable(368) %1)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17AggregateFunctionE, i64 16), ptr %4, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 240 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(106) %i.t, ptr noundef nonnull align 8 dereferenceable(106) %i.u, i64 106, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 352 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 360 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !108  ; 2 uses
  %i.aa = load <2 x ptr>, ptr %i.w, align 8, !tbaa !147
  store <2 x ptr> %i.aa, ptr %i.v, align 8, !tbaa !147
  %.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb17AggregateFunctionC2ERKS0_.exit, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !3
  br label %_ZN6duckdb17AggregateFunctionC2ERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.af = atomicrmw volatile add ptr %i.ab, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb17AggregateFunctionC2ERKS0_.exit

_ZN6duckdb17AggregateFunctionC2ERKS0_.exit:       ; preds = %bb.h, %bb.g, %.noexc
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !148 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !151
  %.not.i.i.i = icmp eq ptr %i.ah, %i.aj
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb17AggregateFunctionC2ERKS0_.exit
  invoke void @_ZN6duckdb18BaseScalarFunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(368) %i.ah, ptr noundef nonnull align 8 dereferenceable(368) %4)
          to label %.noexc16 unwind label %bb.u

.noexc16:                                         ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17AggregateFunctionE, i64 16), ptr %i.ah, align 8, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(106) %i.ak, ptr noundef nonnull align 8 dereferenceable(106) %i.t, i64 106, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 352
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 360
  store ptr null, ptr %i.am, align 8, !tbaa !108
  %i.an = load <2 x ptr>, ptr %i.v, align 8, !tbaa !147
  store ptr null, ptr %i.x, align 8, !tbaa !108
  store <2 x ptr> %i.an, ptr %i.al, align 8, !tbaa !147
  store ptr null, ptr %i.v, align 8, !tbaa !19
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !148
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 368
  store ptr %i.ap, ptr %i.ag, align 8, !tbaa !148
  br label %_ZN6duckdb11FunctionSetINS_17AggregateFunctionEE11AddFunctionES1_.exit

bb.j:                                             ; preds = %_ZN6duckdb17AggregateFunctionC2ERKS0_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_ZNSt6vectorIN6duckdb17AggregateFunctionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr %i.ah, ptr noundef nonnull align 8 dereferenceable(368) %4)
          to label %_ZN6duckdb11FunctionSetINS_17AggregateFunctionEE11AddFunctionES1_.exit unwind label %bb.u

_ZN6duckdb11FunctionSetINS_17AggregateFunctionEE11AddFunctionES1_.exit: ; preds = %.noexc16, %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17AggregateFunctionE, i64 16), ptr %4, align 8, !tbaa !11
  %i.ar = load ptr, ptr %i.x, align 8, !tbaa !108 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb17AggregateFunctionD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN6duckdb11FunctionSetINS_17AggregateFunctionEE11AddFunctionES1_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.as, align 8, !tbaa !97
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !104
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #37, !inline_history !152
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !11
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
end_hunk_0
