Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_physical_plan?download=true
inline.NumInlined: 7975
inline.NumDeleted: 3893
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6duckdb14ArenaAllocator4MakeINS_13PhysicalOrderEJRNS_12PhysicalPlanERNS_6vectorINS_11LogicalTypeELb1ESaIS6_EEENS5_INS_16BoundOrderByNodeELb1ESaISA_EEENS5_ImLb1ESaImEEERmEEEPT_DpOT0_:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !199
  store ptr %i.j, ptr %i.h, align 16, !tbaa !199
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.k = load i64, ptr %5, align 8, !tbaa !194
  invoke void @_ZN6duckdb13PhysicalOrderC1ERNS_12PhysicalPlanENS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS3_INS_16BoundOrderByNodeELb1ESaIS7_EEENS3_ImLb1ESaImEEEmb(ptr noundef nonnull align 8 dereferenceable(185) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, i64 noundef %i.k, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %8, align 16, !tbaa !198   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdlPv(ptr noundef nonnull %i.l) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.b, %bb.c
  %i.m = load ptr, ptr %7, align 16, !tbaa !462   ; 3 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !410  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %_ZSt8_DestroyIN6duckdb16BoundOrderByNodeEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyIN6duckdb16BoundOrderByNodeEEvPT_.exit.i.i.i ], [ %i.m, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !107  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.p) #25
  call void @_ZdlPv(ptr noundef nonnull %i.p) #27
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !288  ; 3 uses
  %.not.i1.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i1.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb16BoundOrderByNodeEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !292
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(88) %i.r) #25, !inline_history !54
  br label %_ZSt8_DestroyIN6duckdb16BoundOrderByNodeEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb16BoundOrderByNodeEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.v, %i.n
  br i1 %.not.i.i.i8, label %_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb16BoundOrderByNodeEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 16, !tbaa !462
  br label %_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorImSaImEED2Ev.exit
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.m, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.w) #27
  br label %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb16BoundOrderByNodeES1_EvT_S3_RSaIT0_E.exit.i, %bb.d
  %i.x = load ptr, ptr %6, align 8, !tbaa !296    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !285  ; 2 uses
  %.not4.i.i.i9 = icmp eq ptr %i.x, %i.z
  br i1 %.not4.i.i.i9, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i10

.lr.ph.i.i.i10:                                   ; preds = %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EED2Ev.exit, %.lr.ph.i.i.i10
  %.05.i.i.i11 = phi ptr [ %i.aa, %.lr.ph.i.i.i10 ], [ %i.x, %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EED2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i11) #25
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i11, i64 24 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.aa, %i.z
  br i1 %.not.i.i.i12, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i10, !llvm.loop !2

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i10
  %.pr.i13 = load ptr, ptr %6, align 8, !tbaa !296
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EED2Ev.exit
  %i.ab = phi ptr [ %.pr.i13, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.x, %_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i14 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i1.i14, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ab) #27
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.e
  ret ptr %i.a

bb.f:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %8, align 16, !tbaa !198  ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorImSaImEED2Ev.exit16, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdlPv(ptr noundef nonnull %i.ad) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit16

_ZNSt6vectorImSaImEED2Ev.exit16:                  ; preds = %bb.f, %bb.g
  call void @_ZNSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #25
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #25
  resume { ptr, i32 } %i.ac
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(136) ptr @_ZN6duckdb12PhysicalPlan4MakeINS_13PhysicalPivotEJNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEERNS_16PhysicalOperatorENS_14BoundPivotInfoEEEES8_DpOT0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(80) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6duckdb14ArenaAllocator4MakeINS_13PhysicalPivotEJRNS_12PhysicalPlanENS_6vectorINS_11LogicalTypeELb1ESaIS6_EEERNS_16PhysicalOperatorENS_14BoundPivotInfoEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(80) %3) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !708  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !709
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.a to i64
  store i64 %i.g, ptr %i.d, align 8
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !708
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.i, ptr %i.c, align 8, !tbaa !708
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !636  ; 5 uses
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #28
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #26 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  %i.w = ptrtoint ptr %i.a to i64
  store i64 %i.w, ptr %i.v, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i ], [ %i.u, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i ], [ %i.j, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2368)
  %i.x = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !2368, !noalias !2367
  store i64 %i.x, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !2367, !noalias !2368
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !53

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.u, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.u, ptr %i.b, align 8, !tbaa !636
  store ptr %i.aa, ptr %i.c, align 8, !tbaa !708
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ab, ptr %i.e, align 8, !tbaa !709
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.b, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN6duckdb14ArenaAllocator4MakeINS_13PhysicalPivotEJRNS_12PhysicalPlanENS_6vectorINS_11LogicalTypeELb1ESaIS6_EEERNS_16PhysicalOperatorENS_14BoundPivotInfoEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(80) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::vector.42", align 16 ; 7 uses
  %6 = alloca %"struct.duckdb::BoundPivotInfo", align 8 ; 12 uses
  %i.a = tail call noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef 296) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load <2 x ptr>, ptr %2, align 8, !tbaa !315
  store <2 x ptr> %i.c, ptr %5, align 16, !tbaa !315
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !286
  store ptr %i.f, ptr %i.d, align 16, !tbaa !286
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.g = load i64, ptr %4, align 8, !tbaa !2371
  store i64 %i.g, ptr %6, align 8, !tbaa !2371
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.k = load <2 x ptr>, ptr %i.i, align 8, !tbaa !315
  store <2 x ptr> %i.k, ptr %i.h, align 8, !tbaa !315
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %7 = load ptr, ptr %i.m, align 8, !tbaa !286
  store ptr %7, ptr %i.l, align 8, !tbaa !286
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.o = load <2 x ptr>, ptr %8, align 8, !tbaa !707
  store <2 x ptr> %i.o, ptr %i.n, align 8, !tbaa !707
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 48
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %12 = load ptr, ptr %11, align 8, !tbaa !529
  store ptr %12, ptr %10, align 8, !tbaa !529
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.q, align 8, !tbaa !75
  store <2 x ptr> %i.r, ptr %i.p, align 8, !tbaa !75
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !287
  store ptr %i.u, ptr %i.s, align 8, !tbaa !287
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb13PhysicalPivotC1ERNS_12PhysicalPlanENS_6vectorINS_11LogicalTypeELb1ESaIS4_EEERNS_16PhysicalOperatorENS_14BoundPivotInfoE(ptr noundef nonnull align 8 dereferenceable(296) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull %6)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !103  ; 3 uses
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !102  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ac, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i ], [ %i.w, %bb.b ] ; 2 uses
  %i.y = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !288 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !292
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(88) %i.y) #25, !inline_history !2369
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, %i.x
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.p, align 8, !tbaa !103
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.ad = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.w, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ad) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !527 ; 3 uses
  %i.af = load ptr, ptr %9, align 8, !tbaa !528   ; 2 uses
  %.not4.i.i.i1.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not4.i.i.i1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i2.i

.lr.ph.i.i.i2.i:                                  ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i3.i = phi ptr [ %i.aj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.ae, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i ] ; 3 uses
  %i.ag = load ptr, ptr %.05.i.i.i3.i, align 8, !tbaa !277 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i
  call void @_ZdlPv(ptr noundef %i.ag) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 32 ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.aj, %i.af
  br i1 %.not.i.i.i4.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i2.i, !llvm.loop !26

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i5.i = load ptr, ptr %i.n, align 8, !tbaa !527
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i
  %i.ak = phi ptr [ %.pr.i5.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ae, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i ] ; 2 uses
  %.not.i.i1.i6.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i1.i6.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ak) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.d, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !296 ; 3 uses
  %i.am = load ptr, ptr %i.j, align 8, !tbaa !285 ; 2 uses
  %.not4.i.i.i7.i = icmp eq ptr %i.al, %i.am
  br i1 %.not4.i.i.i7.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i8.i

.lr.ph.i.i.i8.i:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %.lr.ph.i.i.i8.i
  %.05.i.i.i9.i = phi ptr [ %i.an, %.lr.ph.i.i.i8.i ], [ %i.al, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i9.i) #25
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i9.i, i64 24 ; 2 uses
  %.not.i.i.i10.i = icmp eq ptr %i.an, %i.am
  br i1 %.not.i.i.i10.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i8.i, !llvm.loop !2

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i8.i
  %.pr.i11.i = load ptr, ptr %i.h, align 8, !tbaa !296
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ao = phi ptr [ %.pr.i11.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.al, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i ] ; 2 uses
  %.not.i.i1.i12.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i1.i12.i, label %_ZN6duckdb14BoundPivotInfoD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ao) #27
  br label %_ZN6duckdb14BoundPivotInfoD2Ev.exit

_ZN6duckdb14BoundPivotInfoD2Ev.exit:              ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.e
  %i.ap = load ptr, ptr %5, align 16, !tbaa !296  ; 3 uses
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !285 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6duckdb14BoundPivotInfoD2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %i.ap, %_ZN6duckdb14BoundPivotInfoD2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #25
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %i.aq
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %5, align 16, !tbaa !296
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZN6duckdb14BoundPivotInfoD2Ev.exit
  %i.as = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ap, %_ZN6duckdb14BoundPivotInfoD2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.as) #27
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.f
  ret ptr %i.a

bb.g:                                             ; preds = %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb14BoundPivotInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %6) #25
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #25
  resume { ptr, i32 } %i.at
}

declare void @_ZN6duckdb13PhysicalPivotC1ERNS_12PhysicalPlanENS_6vectorINS_11LogicalTypeELb1ESaIS4_EEERNS_16PhysicalOperatorENS_14BoundPivotInfoE(ptr noundef nonnull align 8 dereferenceable(296), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef nonnull align 8 dereferenceable(136), ptr noundef) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb14BoundPivotInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !288 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !292
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(88) %i.e) #25, !inline_history !3
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !103
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !527  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !528  ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.l, %i.n
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i3 = phi ptr [ %i.r, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.l, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.o = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !277 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2
  tail call void @_ZdlPv(ptr noundef %i.o) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.r, %i.n
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !26

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i5 = load ptr, ptr %i.k, align 8, !tbaa !527
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.s = phi ptr [ %.pr.i5, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.l, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i6 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i6, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !296  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !285  ; 2 uses
  %.not4.i.i.i7 = icmp eq ptr %i.u, %i.w
  br i1 %.not4.i.i.i7, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %.lr.ph.i.i.i8
  %.05.i.i.i9 = phi ptr [ %i.x, %.lr.ph.i.i.i8 ], [ %i.u, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i9) #25
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 24 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.x, %i.w
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i8, !llvm.loop !2

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i8
  %.pr.i11 = load ptr, ptr %i.t, align 8, !tbaa !296
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.y = phi ptr [ %.pr.i11, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.u, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i12 = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i12, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.y) #27
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(136) ptr @_ZN6duckdb12PhysicalPlan4MakeINS_22PhysicalPositionalScanEJRNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEERNS_16PhysicalOperatorES9_EEES9_DpOT0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(136) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::vector.42", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.a = tail call noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef 160) ; 4 uses
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1)
  invoke void @_ZN6duckdb22PhysicalPositionalScanC1ERNS_12PhysicalPlanENS_6vectorINS_11LogicalTypeELb1ESaIS4_EEERNS_16PhysicalOperatorES8_(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(136) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %4, align 8, !tbaa !296    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !285  ; 2 uses
end_hunk_0
