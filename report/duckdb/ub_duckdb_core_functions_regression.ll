inline.NumInlined: 1031
inline.NumDeleted: 356
begin_hunk_0_@_ZN6duckdb17AggregateFunctionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorINS_11LogicalTypeELb1ESaISA_EEERKSA_PFmRKS0_EPFvSI_PhEPFvPNS_6VectorERNS_18AggregateInputDataEmRSO_mEPFvSS_SS_SR_mEPFvSS_SR_SS_mmENS_20FunctionNullHandlingEPFvSP_SR_mSL_mEPFNS_10unique_ptrINS_12FunctionDataESt14default_deleteIS13_ELb1EEERNS_13ClientContextERS0_RNS9_INS12_INS_10ExpressionES14_IS1A_ELb1EEELb1ESaIS1C_EEEEPFvSS_SR_mEPFNS12_INS_14BaseStatisticsES14_IS1K_ELb1EEES18_RNS_24BoundAggregateExpressionERNS_24AggregateStatisticsInputEEPFvSR_RKNS_20WindowPartitionInputEPKhSL_RKNS9_INS_11FrameBoundsELb1ESaIS1Y_EEESS_mEPFvRNS_10SerializerENS_12optional_ptrIS13_Lb1EEESI_EPFS16_RNS_12DeserializerES19_E:bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !22
  store i8 %i.j, ptr %i.i, align 1, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !19
  %i.m = load ptr, ptr %17, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit unwind label %bb.h

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 noundef zeroext 0)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb18BaseScalarFunctionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6vectorINS_11LogicalTypeELb1ESaIS8_EEES8_NS_17FunctionStabilityES8_NS_20FunctionNullHandlingENS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(236) %0, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19, i8 noundef zeroext 0, ptr noundef nonnull %20, i8 noundef zeroext %9, i8 noundef zeroext 0)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #21
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %19) #21
  %i.o = load ptr, ptr %18, align 8, !tbaa !10    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !15   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.o, %bb.f ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #21
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !24

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %18, align 8, !tbaa !10
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.s = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.o, %bb.f ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.s) #25
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.g
  %i.t = load ptr, ptr %17, align 8, !tbaa !23    ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.b
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.t) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17AggregateFunctionE, i64 16), ptr %0, align 8, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %4, ptr %i.v, align 8, !tbaa !184
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %5, ptr %i.w, align 8, !tbaa !192
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %6, ptr %i.x, align 8, !tbaa !193
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %7, ptr %i.y, align 8, !tbaa !194
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %8, ptr %i.z, align 8, !tbaa !195
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %10, ptr %i.aa, align 8, !tbaa !196
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %14, ptr %i.ab, align 8, !tbaa !197
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr null, ptr %i.ac, align 8, !tbaa !198
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %11, ptr %i.ad, align 8, !tbaa !199
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %12, ptr %i.ae, align 8, !tbaa !200
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr %13, ptr %i.af, align 8, !tbaa !201
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %15, ptr %i.ag, align 8, !tbaa !202
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %16, ptr %i.ah, align 8, !tbaa !203
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i8 1, ptr %i.ai, align 8, !tbaa !204
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 345
  store i8 1, ptr %i.aj, align 1, !tbaa !205
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  ret void

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.al = landingpad { ptr, i32 }
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
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.k ], [ %i.an, %bb.j ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %19) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.l ], [ %i.am, %bb.i ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %18) #21
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.m ], [ %i.al, %bb.h ]
  %i.ap = load ptr, ptr %17, align 8, !tbaa !23   ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.b
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.ap) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN6duckdb18BaseScalarFunctionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6vectorINS_11LogicalTypeELb1ESaIS8_EEES8_NS_17FunctionStabilityES8_NS_20FunctionNullHandlingENS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !10     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.h, label %.noexc.i, label %_ZNSt15__new_allocatorIN6duckdb11LogicalTypeEE8allocateEmPKv.exit.i.i.i, !prof !57

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt15__new_allocatorIN6duckdb11LogicalTypeEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #22
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN6duckdb11LogicalTypeEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorIN6duckdb11LogicalTypeEE8allocateEmPKv.exit.i.i.i ] ; 7 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !14
  %i.n = load ptr, ptr %1, align 8, !tbaa !206    ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !206  ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11LogicalTypeESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.q, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.j, %bb.c ] ; 4 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.013.i.i.i.i) ]
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11LogicalTypeESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !207

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  %i.t = tail call ptr @__cxa_begin_catch(ptr %i.s) #21 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.j, %.014.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i ], [ %i.j, %bb.d ] ; 2 uses
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i.i.i) #21
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, %.014.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !24

_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  invoke void @__cxa_rethrow() #23
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #24
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11LogicalTypeESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.q, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.k, align 8, !tbaa !15
  ret void

.body:                                            ; preds = %bb.e
  %i.y = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  tail call void @_ZdlPv(ptr noundef nonnull %i.y) #25
  br label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_ZN6duckdb17AggregateFunction9StateSizeINS_12_GLOBAL__N_118RegrInterceptStateEEEmRKS0_(ptr nofree nonnull readnone align 8 captures(none) %0) #9 align 2 {
bb.a:
  ret i64 80
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_118RegrInterceptStateENS2_22RegrInterceptOperationELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 80)) %1) #10 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, i8 0, i64 80, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction19BinaryScatterUpdateINS_12_GLOBAL__N_118RegrInterceptStateEddNS2_22RegrInterceptOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS5_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %6 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.b unwind label %bb.bb

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.bc

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.d unwind label %bb.bd

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.e unwind label %bb.bd

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.f unwind label %bb.bd

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.g unwind label %bb.bd

bb.g:                                             ; preds = %bb.f
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76   ; 2 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.h unwind label %bb.bd

bb.h:                                             ; preds = %bb.g
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76   ; 2 uses
  %i.h = load ptr, ptr %5, align 8, !tbaa !92
  %i.i = load ptr, ptr %6, align 8, !tbaa !92
  %i.j = load ptr, ptr %7, align 8, !tbaa !92
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val.i = load ptr, ptr %i.h, align 8           ; 4 uses
  %.val13.i = load ptr, ptr %i.i, align 8         ; 4 uses
  %.val14.i = load ptr, ptr %i.j, align 8         ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !100, !noalias !215 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, null            ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !noalias !215 ; 2 uses
  %.not.i36.i.i = icmp eq ptr %i.n, null          ; 2 uses
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %.not.i36.i.i, i1 false
  %.not18.i.i = icmp eq i64 %4, 0                 ; 2 uses
  br i1 %or.cond.i.i, label %.preheader.i.i, label %.preheader12.i.i

.preheader12.i.i:                                 ; preds = %bb.h
  br i1 %.not18.i.i, label %_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_12_GLOBAL__N_118RegrInterceptStateEddNS2_22RegrInterceptOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESI_SI_RNS_12ValidityMaskESK_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader12.i.i
  %.not.i37.i.i = icmp eq ptr %.val.i, null
  %.not.i38.i.i = icmp eq ptr %.val13.i, null
  %.not.i40.i.i = icmp eq ptr %.val14.i, null
  br label %bb.i

.preheader.i.i:                                   ; preds = %bb.h
  br i1 %.not18.i.i, label %_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_12_GLOBAL__N_118RegrInterceptStateEddNS2_22RegrInterceptOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESI_SI_RNS_12ValidityMaskESK_.exit.i, label %.lr.ph16.i.i

.lr.ph16.i.i:                                     ; preds = %.preheader.i.i
  %.not.i46.i.i = icmp eq ptr %.val.i, null
  %.not.i48.i.i = icmp eq ptr %.val13.i, null
  %.not.i50.i.i = icmp eq ptr %.val14.i, null
  br label %bb.n

bb.i:                                             ; preds = %bb.m, %.lr.ph.i.i
  %.014.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cc, %bb.m ] ; 7 uses
  br i1 %.not.i37.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.014.i.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3, !noalias !215
  %i.q = zext i32 %i.p to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.j, %bb.i
  %i.r = phi i64 [ %i.q, %bb.j ], [ %.014.i.i, %bb.i ] ; 3 uses
  br i1 %.not.i38.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit39.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.val13.i, i64 %.014.i.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3, !noalias !215
  %i.u = zext i32 %i.t to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit39.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit39.i.i: ; preds = %bb.k, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.v = phi i64 [ %i.u, %bb.k ], [ %.014.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i ] ; 3 uses
  br i1 %.not.i40.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit41.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit39.i.i
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %.014.i.i
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3, !noalias !215
  %i.y = zext i32 %i.x to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit41.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit41.i.i: ; preds = %bb.l, %_ZNK6duckdb15SelectionVector9get_indexEm.exit39.i.i
  %i.z = phi i64 [ %i.y, %bb.l ], [ %.014.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit39.i.i ]
  br i1 %.not.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit41.i.i
  %i.aa = lshr i64 %i.r, 6
  %i.ab = and i64 %i.r, 63
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.aa
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !102, !noalias !215
  %i.ae = shl nuw i64 1, %i.ab
  %i.af = and i64 %i.ad, %i.ae
  %.not.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i, label %bb.m, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i
end_hunk_0
begin_hunk_1_@_ZN6duckdb17AggregateFunction12BinaryUpdateINS_12_GLOBAL__N_110RegrSStateEddNS2_16RegrSYYOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  store i32 %i.gh, ptr %i.fv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.gi = atomicrmw volatile add ptr %i.fv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.fy, %bb.r ], [ %i.gi, %bb.s ]
  %i.gj = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.gj, label %bb.t, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !57

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #21
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.p, %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_110RegrSStateEddNS2_16RegrSYYOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i
  %i.gk = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 4 uses
  %i.gn = load atomic i64, ptr %i.gm acquire, align 8 ; 2 uses
  %i.go = icmp eq i64 %i.gn, 4294967297
  %i.gp = trunc i64 %i.gn to i32                  ; 2 uses
  br i1 %i.go, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.gm, align 8, !tbaa !53
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  store i32 0, ptr %i.gq, align 4, !tbaa !55
  %i.gr = load ptr, ptr %i.gl, align 8, !tbaa !50
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(16) %i.gl) #21, !inline_history !423
  %i.gu = load ptr, ptr %i.gl, align 8, !tbaa !50
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(16) %i.gl) #21, !inline_history !423
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.w:                                             ; preds = %bb.u
  %i.gx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.gx, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gy = add nsw i32 %i.gp, -1
  store i32 %i.gy, ptr %i.gm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.y:                                             ; preds = %bb.w
  %i.gz = atomicrmw volatile add ptr %i.gm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.gp, %bb.x ], [ %i.gz, %bb.y ]
  %i.ha = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.ha, label %bb.z, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !57

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gl) #21
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.v, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.hb = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i12.i = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i.i.i12.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i16.i, label %bb.aa

bb.aa:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 4 uses
  %i.he = load atomic i64, ptr %i.hd acquire, align 8 ; 2 uses
  %i.hf = icmp eq i64 %i.he, 4294967297
  %i.hg = trunc i64 %i.he to i32                  ; 2 uses
  br i1 %i.hf, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.hd, align 8, !tbaa !53
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 12
  store i32 0, ptr %i.hh, align 4, !tbaa !55
  %i.hi = load ptr, ptr %i.hc, align 8, !tbaa !50
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8
  call void %i.hk(ptr noundef nonnull align 8 dereferenceable(16) %i.hc) #21, !inline_history !422
  %i.hl = load ptr, ptr %i.hc, align 8, !tbaa !50
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8
  call void %i.hn(ptr noundef nonnull align 8 dereferenceable(16) %i.hc) #21, !inline_history !422
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i16.i

bb.ac:                                            ; preds = %bb.aa
  %i.ho = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i13.i = icmp eq i8 %i.ho, 0
  br i1 %.not.i.i.i.i.i.i13.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hp = add nsw i32 %i.hg, -1
  store i32 %i.hp, ptr %i.hd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i14.i

bb.ae:                                            ; preds = %bb.ac
  %i.hq = atomicrmw volatile add ptr %i.hd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i14.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i14.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i.i15.i = phi i32 [ %i.hg, %bb.ad ], [ %i.hq, %bb.ae ]
  %i.hr = icmp eq i32 %.0.i.i.i.i.i.i.i15.i, 1
  br i1 %i.hr, label %bb.af, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i16.i, !prof !57

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i14.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hc) #21
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i16.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i16.i:       ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i14.i, %bb.ab, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  %i.hs = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i1.i17.i = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i.i1.i17.i, label %_ZN6duckdb17AggregateExecutor12BinaryUpdateINS_12_GLOBAL__N_110RegrSStateEddNS2_16RegrSYYOperationEEEvRNS_18AggregateInputDataERNS_6VectorES8_Phm.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i16.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8 ; 4 uses
  %i.hv = load atomic i64, ptr %i.hu acquire, align 8 ; 2 uses
  %i.hw = icmp eq i64 %i.hv, 4294967297
  %i.hx = trunc i64 %i.hv to i32                  ; 2 uses
  br i1 %i.hw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.hu, align 8, !tbaa !53
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 12
  store i32 0, ptr %i.hy, align 4, !tbaa !55
  %i.hz = load ptr, ptr %i.ht, align 8, !tbaa !50
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(16) %i.ht) #21, !inline_history !423
  %i.ic = load ptr, ptr %i.ht, align 8, !tbaa !50
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dereferenceable(16) %i.ht) #21, !inline_history !423
  br label %_ZN6duckdb17AggregateExecutor12BinaryUpdateINS_12_GLOBAL__N_110RegrSStateEddNS2_16RegrSYYOperationEEEvRNS_18AggregateInputDataERNS_6VectorES8_Phm.exit

bb.ai:                                            ; preds = %bb.ag
  %i.if = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i18.i = icmp eq i8 %i.if, 0
  br i1 %.not.i.i.i.i.i2.i18.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ig = add nsw i32 %i.hx, -1
  store i32 %i.ig, ptr %i.hu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i19.i

bb.ak:                                            ; preds = %bb.ai
  %i.ih = atomicrmw volatile add ptr %i.hu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i19.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i19.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i.i4.i20.i = phi i32 [ %i.hx, %bb.aj ], [ %i.ih, %bb.ak ]
  %i.ii = icmp eq i32 %.0.i.i.i.i.i.i4.i20.i, 1
  br i1 %i.ii, label %bb.al, label %_ZN6duckdb17AggregateExecutor12BinaryUpdateINS_12_GLOBAL__N_110RegrSStateEddNS2_16RegrSYYOperationEEEvRNS_18AggregateInputDataERNS_6VectorES8_Phm.exit, !prof !57

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i19.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ht) #21
  br label %_ZN6duckdb17AggregateExecutor12BinaryUpdateINS_12_GLOBAL__N_110RegrSStateEddNS2_16RegrSYYOperationEEEvRNS_18AggregateInputDataERNS_6VectorES8_Phm.exit

bb.am:                                            ; preds = %bb.a
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.ik = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %6) #21
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn.i = phi { ptr, i32 } [ %i.ik, %bb.an ], [ %i.ij, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn.i

_ZN6duckdb17AggregateExecutor12BinaryUpdateINS_12_GLOBAL__N_110RegrSStateEddNS2_16RegrSYYOperationEEEvRNS_18AggregateInputDataERNS_6VectorES8_Phm.exit: ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i16.i, %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i19.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { cold noreturn }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nounwind }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { noreturn }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZN6duckdb17AggregateFunction15BinaryAggregateINS_12_GLOBAL__N_112RegrSXyStateEdddNS2_16RegrSXYOperationELNS_23AggregateDestructorTypeE0EEES0_RKNS_11LogicalTypeES8_S6_: argument 0"}
!9 = distinct !{!9, !"_ZN6duckdb17AggregateFunction15BinaryAggregateINS_12_GLOBAL__N_112RegrSXyStateEdddNS2_16RegrSXYOperationELNS_23AggregateDestructorTypeE0EEES0_RKNS_11LogicalTypeES8_S6_"}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!12 = !{!"p1 _ZTSN6duckdb11LogicalTypeE", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!11, !12, i64 16}
!15 = !{!11, !12, i64 8}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!18 = !{!"p1 omnipotent char", !13, i64 0}
!19 = !{!20, !21, i64 8}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0, !21, i64 8, !5, i64 16}
!21 = !{!"long", !5, i64 0}
!22 = !{!5, !5, i64 0}
!23 = !{!20, !18, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN6duckdb17AggregateFunction15BinaryAggregateINS_12_GLOBAL__N_118RegrInterceptStateEdddNS2_22RegrInterceptOperationELNS_23AggregateDestructorTypeE0EEES0_RKNS_11LogicalTypeES8_S6_: argument 0"}
!28 = distinct !{!28, !"_ZN6duckdb17AggregateFunction15BinaryAggregateINS_12_GLOBAL__N_118RegrInterceptStateEdddNS2_22RegrInterceptOperationELNS_23AggregateDestructorTypeE0EEES0_RKNS_11LogicalTypeES8_S6_"}
!29 = !{!30, !47, i64 233}
!30 = !{!"_ZTSN6duckdb18BaseScalarFunctionE", !31, i64 0, !37, i64 208, !46, i64 232, !47, i64 233, !48, i64 234, !49, i64 235}
!31 = !{!"_ZTSN6duckdb14SimpleFunctionE", !32, i64 0, !33, i64 136, !33, i64 160, !37, i64 184}
!32 = !{!"_ZTSN6duckdb8FunctionE", !20, i64 8, !20, i64 40, !20, i64 72, !20, i64 104}
!33 = !{!"_ZTSN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEE", !34, i64 0}
!34 = !{!"_ZTSSt6vectorIN6duckdb11LogicalTypeESaIS1_EE", !35, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE12_Vector_implE", !11, i64 0}
!37 = !{!"_ZTSN6duckdb11LogicalTypeE", !38, i64 0, !39, i64 1, !40, i64 8}
!38 = !{!"_ZTSN6duckdb13LogicalTypeIdE", !5, i64 0}
!39 = !{!"_ZTSN6duckdb12PhysicalTypeE", !5, i64 0}
!40 = !{!"_ZTSN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEE", !41, i64 0}
!41 = !{!"_ZTSSt10shared_ptrIN6duckdb13ExtraTypeInfoEE", !42, i64 0}
!42 = !{!"_ZTSSt12__shared_ptrIN6duckdb13ExtraTypeInfoELN9__gnu_cxx12_Lock_policyE2EE", !43, i64 0, !44, i64 8}
!43 = !{!"p1 _ZTSN6duckdb13ExtraTypeInfoE", !13, i64 0}
!44 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !45, i64 0}
!45 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!46 = !{!"_ZTSN6duckdb17FunctionStabilityE", !5, i64 0}
!47 = !{!"_ZTSN6duckdb20FunctionNullHandlingE", !5, i64 0}
!48 = !{!"_ZTSN6duckdb14FunctionErrorsE", !5, i64 0}
!49 = !{!"_ZTSN6duckdb25FunctionCollationHandlingE", !5, i64 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"vtable pointer", !6, i64 0}
!52 = !{!44, !45, i64 0}
!53 = !{!54, !4, i64 8}
!54 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!55 = !{!54, !4, i64 12}
!56 = distinct !{null, null, null, null}
!57 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZN6duckdb17AggregateFunction15BinaryAggregateINS_12_GLOBAL__N_111RegrR2StateEdddNS2_15RegrR2OperationELNS_23AggregateDestructorTypeE0EEES0_RKNS_11LogicalTypeES8_S6_: argument 0"}
!60 = distinct !{!60, !"_ZN6duckdb17AggregateFunction15BinaryAggregateINS_12_GLOBAL__N_111RegrR2StateEdddNS2_15RegrR2OperationELNS_23AggregateDestructorTypeE0EEES0_RKNS_11LogicalTypeES8_S6_"}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZN6duckdb17AggregateFunction15BinaryAggregateINS_12_GLOBAL__N_19RegrStateEdddNS2_16RegrAvgXFunctionELNS_23AggregateDestructorTypeE0EEES0_RKNS_11LogicalTypeES8_S6_: argument 0"}
!63 = distinct !{!63, !"_ZN6duckdb17AggregateFunction15BinaryAggregateINS_12_GLOBAL__N_19RegrStateEdddNS2_16RegrAvgXFunctionELNS_23AggregateDestructorTypeE0EEES0_RKNS_11LogicalTypeES8_S6_"}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZN6duckdb17AggregateFunction15BinaryAggregateINS_12_GLOBAL__N_19RegrStateEdddNS2_16RegrAvgYFunctionELNS_23AggregateDestructorTypeE0EEES0_RKNS_11LogicalTypeES8_S6_: argument 0"}
!66 = distinct !{!66, !"_ZN6duckdb17AggregateFunction15BinaryAggregateINS_12_GLOBAL__N_19RegrStateEdddNS2_16RegrAvgYFunctionELNS_23AggregateDestructorTypeE0EEES0_RKNS_11LogicalTypeES8_S6_"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN6duckdb17AggregateFunction15BinaryAggregateINS_12_GLOBAL__N_110RegrSStateEdddNS2_16RegrSXXOperationELNS_23AggregateDestructorTypeE0EEES0_RKNS_11LogicalTypeES8_S6_: argument 0"}
!69 = distinct !{!69, !"_ZN6duckdb17AggregateFunction15BinaryAggregateINS_12_GLOBAL__N_110RegrSStateEdddNS2_16RegrSXXOperationELNS_23AggregateDestructorTypeE0EEES0_RKNS_11LogicalTypeES8_S6_"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN6duckdb17AggregateFunction15BinaryAggregateINS_12_GLOBAL__N_110RegrSStateEdddNS2_16RegrSYYOperationELNS_23AggregateDestructorTypeE0EEES0_RKNS_11LogicalTypeES8_S6_: argument 0"}
!72 = distinct !{!72, !"_ZN6duckdb17AggregateFunction15BinaryAggregateINS_12_GLOBAL__N_110RegrSStateEdddNS2_16RegrSYYOperationELNS_23AggregateDestructorTypeE0EEES0_RKNS_11LogicalTypeES8_S6_"}
!73 = distinct !{ptr @_ZN6duckdb17AggregateFunctionD2Ev, null, null, null, null}
!74 = !{ptr @_ZN6duckdb17AggregateFunctionD2Ev}
!75 = distinct !{null}
!76 = !{!77, !18, i64 8}
!77 = !{!"_ZTSN6duckdb19UnifiedVectorFormatE", !78, i64 0, !18, i64 8, !79, i64 16, !86, i64 48, !39, i64 72}
!78 = !{!"p1 _ZTSN6duckdb15SelectionVectorE", !13, i64 0}
!79 = !{!"_ZTSN6duckdb12ValidityMaskE", !80, i64 0}
!80 = !{!"_ZTSN6duckdb21TemplatedValidityMaskImEE", !81, i64 0, !82, i64 8, !21, i64 24}
!81 = !{!"p1 long", !13, i64 0}
!82 = !{!"_ZTSN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEE", !83, i64 0}
!83 = !{!"_ZTSSt10shared_ptrIN6duckdb21TemplatedValidityDataImEEE", !84, i64 0}
!84 = !{!"_ZTSSt12__shared_ptrIN6duckdb21TemplatedValidityDataImEELN9__gnu_cxx12_Lock_policyE2EE", !85, i64 0, !44, i64 8}
!85 = !{!"p1 _ZTSN6duckdb21TemplatedValidityDataImEE", !13, i64 0}
!86 = !{!"_ZTSN6duckdb15SelectionVectorE", !87, i64 0, !88, i64 8}
!87 = !{!"p1 int", !13, i64 0}
!88 = !{!"_ZTSN6duckdb10shared_ptrINS_13SelectionDataELb1EEE", !89, i64 0}
!89 = !{!"_ZTSSt10shared_ptrIN6duckdb13SelectionDataEE", !90, i64 0}
!90 = !{!"_ZTSSt12__shared_ptrIN6duckdb13SelectionDataELN9__gnu_cxx12_Lock_policyE2EE", !91, i64 0, !44, i64 8}
!91 = !{!"p1 _ZTSN6duckdb13SelectionDataE", !13, i64 0}
!92 = !{!77, !78, i64 0}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_12_GLOBAL__N_112RegrSXyStateEddNS2_16RegrSXYOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESI_SI_RNS_12ValidityMaskESK_: argument 0"}
!95 = distinct !{!95, !"_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_12_GLOBAL__N_112RegrSXyStateEddNS2_16RegrSXYOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESI_SI_RNS_12ValidityMaskESK_"}
!96 = !{!97}
!97 = distinct !{!97, !95, !"_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_12_GLOBAL__N_112RegrSXyStateEddNS2_16RegrSXYOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESI_SI_RNS_12ValidityMaskESK_: argument 1"}
!98 = !{!99}
!99 = distinct !{!99, !95, !"_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_12_GLOBAL__N_112RegrSXyStateEddNS2_16RegrSXYOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESI_SI_RNS_12ValidityMaskESK_: argument 2"}
!100 = !{!80, !81, i64 0}
!101 = !{!94, !97, !99}
!102 = !{!21, !21, i64 0}
!103 = !{!104, !104, i64 0}
!104 = !{!"p1 _ZTSN6duckdb12_GLOBAL__N_112RegrSXyStateE", !13, i64 0}
!105 = !{!94, !97}
!106 = !{!107, !107, i64 0}
!107 = !{!"double", !5, i64 0}
!108 = !{!97, !99}
!109 = !{!94, !99}
!110 = !{!111, !107, i64 24}
!111 = !{!"_ZTSN6duckdb10CovarStateE", !21, i64 0, !107, i64 8, !107, i64 16, !107, i64 24}
!112 = distinct !{!112, !25}
!113 = distinct !{!113, !25}
!114 = distinct !{null, ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!115 = distinct !{null, ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!116 = !{!37, !39, i64 1}
!117 = !{!39, !39, i64 0}
!118 = !{!119, !18, i64 32}
!119 = !{!"_ZTSN6duckdb6VectorE", !120, i64 0, !37, i64 8, !18, i64 32, !79, i64 40, !121, i64 72, !121, i64 88}
!120 = !{!"_ZTSN6duckdb10VectorTypeE", !5, i64 0}
!121 = !{!"_ZTSN6duckdb10shared_ptrINS_12VectorBufferELb1EEE", !122, i64 0}
!122 = !{!"_ZTSSt10shared_ptrIN6duckdb12VectorBufferEE", !123, i64 0}
!123 = !{!"_ZTSSt12__shared_ptrIN6duckdb12VectorBufferELN9__gnu_cxx12_Lock_policyE2EE", !124, i64 0, !44, i64 8}
!124 = !{!"p1 _ZTSN6duckdb12VectorBufferE", !13, i64 0}
!125 = !{!111, !21, i64 0}
!126 = !{i64 0, i64 8, !102, i64 8, i64 8, !106, i64 16, i64 8, !106, i64 24, i64 8, !106}
!127 = !{!111, !107, i64 8}
!128 = !{!111, !107, i64 16}
!129 = distinct !{!129, !25}
!130 = !{!119, !120, i64 0}
!131 = !{!132, !132, i64 0}
!132 = !{!"p1 _ZTSN6duckdb6VectorE", !13, i64 0}
!133 = !{!134, !134, i64 0}
!134 = !{!"p1 _ZTSN6duckdb18AggregateInputDataE", !13, i64 0}
!135 = !{!136, !21, i64 16}
!136 = !{!"_ZTSN6duckdb21AggregateFinalizeDataE", !132, i64 0, !134, i64 8, !21, i64 16}
!137 = distinct !{!137, !25}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_112RegrSXyStateEddNS2_16RegrSXYOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_: argument 0"}
!140 = distinct !{!140, !"_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_112RegrSXyStateEddNS2_16RegrSXYOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_"}
!141 = !{!142}
!142 = distinct !{!142, !140, !"_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_112RegrSXyStateEddNS2_16RegrSXYOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_: argument 1"}
!143 = !{!144}
!144 = distinct !{!144, !140, !"_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_112RegrSXyStateEddNS2_16RegrSXYOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_: argument 2"}
!145 = !{!139, !142, !144}
!146 = !{!142, !144}
!147 = !{!139, !144}
!148 = !{!139, !142}
!149 = distinct !{!149, !25}
!150 = distinct !{!150, !25}
!151 = distinct !{null, ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!152 = distinct !{null, ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!153 = distinct !{null, null, null, null, null}
!154 = distinct !{null, null, null, null, null}
!155 = !{!77, !39, i64 72}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_: argument 0"}
!158 = distinct !{!158, !"_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_"}
!159 = !{!160, !161, i64 0}
!160 = !{!"_ZTSNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE17_Vector_impl_dataE", !161, i64 0, !161, i64 8, !161, i64 16}
!161 = !{!"p1 _ZTSN6duckdb20ExceptionFormatValueE", !13, i64 0}
!162 = !{!160, !161, i64 8}
!163 = distinct !{!163, !25}
!164 = !{!160, !161, i64 16}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!167 = distinct !{!167, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_"}
end_hunk_1
