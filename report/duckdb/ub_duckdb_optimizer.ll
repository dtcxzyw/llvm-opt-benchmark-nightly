begin_hunk_0
%"struct.std::hash.448" = type { i8 }
%"struct.std::equal_to.451" = type { i8 }
%"class.std::allocator.1064" = type { i8 }
%"class.duckdb::vector.1097" = type { %"class.std::vector.1098" }
%"class.std::vector.1098" = type { %"struct.std::_Vector_base.1099" }
%"struct.std::_Vector_base.1099" = type { %"struct.std::_Vector_base<std::reference_wrapper<duckdb::Expression>, std::allocator<std::reference_wrapper<duckdb::Expression>>>::_Vector_impl" }
end_hunk_0
begin_hunk_1
; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS_14TableFilterSetE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::vector.114") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1271 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
end_hunk_1
begin_hunk_2
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.sroa.05.0.copyload.i.i.i.i = load <2 x i64>, ptr %.sroa.0.019.i.ptr.i.i.i, align 8
  %i.p = icmp samesign ugt i64 %.sroa.0.019.i.idx.i.i.i, 16
  br i1 %i.p, label %bb.e, label %bb.f, !prof !155

end_hunk_2
begin_hunk_3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  store <2 x i64> %.sroa.05.0.copyload.i.i.i.i, ptr %.sroa.043.1, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.c
end_hunk_3
begin_hunk_4
  br i1 %i.ad, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.sroa.05.0.copyload.i39.i.i.i = load <2 x i64>, ptr %.sroa.0.019.i24.i.i.i, align 8
  %i.ae = ptrtoint ptr %.sroa.0.019.i24.i.i.i to i64
  %i.af = sub i64 %i.ae, %i.f                     ; 3 uses
  %i.ag = ashr exact i64 %i.af, 4                 ; 2 uses
end_hunk_4
begin_hunk_5
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i39.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i39.i.i.i: ; preds = %bb.m, %bb.l, %bb.k
  store <2 x i64> %.sroa.05.0.copyload.i39.i.i.i, ptr %.sroa.043.1, align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.i
end_hunk_5
begin_hunk_6
  %4 = alloca %"class.duckdb::vector.1382", align 16 ; 5 uses
  %5 = alloca %"class.duckdb::vector.1382", align 16 ; 5 uses
  %6 = alloca %"class.duckdb::vector", align 8    ; 8 uses
  %7 = alloca %"class.duckdb::vector.1382", align 8 ; 6 uses
  %8 = alloca %"class.duckdb::vector.1382", align 16 ; 5 uses
  %9 = alloca %"class.duckdb::vector.1382", align 16 ; 5 uses
end_hunk_6
begin_hunk_7
  br label %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EED2Ev.exit148

.lr.ph254:                                        ; preds = %.lr.ph254.preheader, %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EE9push_backERKS1_.exit
  %.sroa.0182.0253 = phi ptr [ %.sroa.0182.5, %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EE9push_backERKS1_.exit ], [ %i.bf, %.lr.ph254.preheader ] ; 11 uses
  %.sroa.0179.0252 = phi ptr [ %i.cq, %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EE9push_backERKS1_.exit ], [ %i.ba, %.lr.ph254.preheader ] ; 2 uses
  %.sroa.19.0251 = phi ptr [ %.sroa.19.2, %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EE9push_backERKS1_.exit ], [ %i.bg, %.lr.ph254.preheader ] ; 5 uses
  %.sroa.12.0250 = phi ptr [ %.sroa.12.2, %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EE9push_backERKS1_.exit ], [ %i.bf, %.lr.ph254.preheader ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0179.0252, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !2013 ; 3 uses
  %i.bk = load ptr, ptr %i.as, align 8, !tbaa !63
end_hunk_7
begin_hunk_8
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.by) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br i1 %.0.i.i.i, label %bb.t, label %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br i1 %.0.i.i.i, label %bb.t, label %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EED2Ev.exit148

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn8.i.i.i = phi { ptr, i32 } [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.bq) #34
  br label %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EED2Ev.exit148

bb.u:                                             ; preds = %bb.r
  unreachable
end_hunk_8
begin_hunk_9
bb.v:                                             ; preds = %.lr.ph254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bj
  %.sroa.0177.0.copyload = load <2 x i64>, ptr %i.ca, align 8 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.12.0250, %.sroa.19.0251
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store <2 x i64> %.sroa.0177.0.copyload, ptr %.sroa.12.0250, align 8
  br label %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EE9push_backERKS1_.exit

bb.x:                                             ; preds = %bb.v
end_hunk_9
begin_hunk_10

.noexc141:                                        ; preds = %_ZNKSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cd
  store <2 x i64> %.sroa.0177.0.copyload, ptr %i.cm, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0182.0253, %.sroa.19.0251
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i

end_hunk_10
begin_hunk_11
  %.sroa.19.2 = phi ptr [ %i.cp, %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.19.0251, %bb.w ] ; 2 uses
  %.sroa.0182.5 = phi ptr [ %i.cl, %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0182.0253, %bb.w ] ; 2 uses
  %.sroa.12.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0179.0252, i64 16 ; 2 uses
  %.not215.a = icmp eq ptr %i.cq, %i.az
  br i1 %.not215.a, label %._crit_edge, label %.lr.ph254
end_hunk_11
begin_hunk_12
.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EED2Ev.exit148

.loopexit.split-lp:                               ; preds = %bb.y
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EED2Ev.exit148

bb.aa:                                            ; preds = %._crit_edge
end_hunk_12
begin_hunk_13
  call void @_ZdlPv(ptr noundef nonnull %i.cw) #35
  br label %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EED2Ev.exit148

_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EED2Ev.exit148: ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit218, %.loopexit.split-lp219, %bb.af, %bb.ae, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.sroa.0184.2 = phi ptr [ null, %bb.af ], [ null, %.loopexit.split-lp219 ], [ %.sroa.0182.0253, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %.sroa.0182.0253, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.sroa.0182.0253, %bb.t ], [ null, %bb.ae ], [ %.sroa.0182.1.ph, %.loopexit218 ], [ %.sroa.0182.0253, %.loopexit ], [ %.sroa.0182.0253, %.loopexit.split-lp ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.cv, %bb.af ], [ %lpad.loopexit.split-lp221, %.loopexit.split-lp219 ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn8.i.i.i, %bb.t ], [ %i.cv, %bb.ae ], [ %lpad.loopexit220, %.loopexit218 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.cx = load ptr, ptr %6, align 8, !tbaa !12    ; 2 uses
  %.not.i.i.i149 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i149, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit150, label %bb.ag
end_hunk_13
begin_hunk_14

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit150: ; preds = %bb.ag, %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EED2Ev.exit148
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %.not.i.i.i151 = icmp eq ptr %.sroa.0184.2, null
  br i1 %.not.i.i.i151, label %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EED2Ev.exit132, label %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EED2Ev.exit132.sink.split

bb.ah:                                            ; preds = %bb.a
end_hunk_14
begin_hunk_15
  ret void

_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EED2Ev.exit132.sink.split: ; preds = %bb.az, %bb.as, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit150, %bb.k, %bb.e
  %.sink = phi ptr [ %i.eu, %bb.as ], [ %.sroa.0184.2, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit150 ], [ %i.ag, %bb.k ], [ %i.o, %bb.e ], [ %i.fv, %bb.az ]
  %.pn109.ph = phi { ptr, i32 } [ %i.et, %bb.as ], [ %.pn, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit150 ], [ %i.af, %bb.k ], [ %i.n, %bb.e ], [ %i.fu, %bb.az ]
  call void @_ZdlPv(ptr noundef nonnull %.sink) #35
  br label %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EED2Ev.exit132
end_hunk_15
begin_hunk_16
define void @_ZN6duckdb27JoinFilterPushdownOptimizer19GenerateJoinFiltersERNS_21LogicalComparisonJoinE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(280) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.132", align 8 ; 17 uses
  %3 = alloca %"class.duckdb::vector.1388", align 8 ; 10 uses
  %4 = alloca %"class.duckdb::vector.1382", align 8 ; 7 uses
  %5 = alloca %"struct.duckdb::JoinFilterPushdownFilter", align 16 ; 14 uses
end_hunk_16
begin_hunk_17
  br i1 %.not335, label %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EED2Ev.exit235.thread, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK6duckdb11LogicalType8IsNestedEv.exit.thread
  %i.h = icmp eq ptr %.sroa.0264.1, %.sroa.11.1
  br i1 %i.h, label %bb.fc, label %bb.w

.lr.ph:                                           ; preds = %bb.b, %_ZNK6duckdb11LogicalType8IsNestedEv.exit.thread
  %storemerge321 = phi i64 [ %i.bk, %_ZNK6duckdb11LogicalType8IsNestedEv.exit.thread ], [ 0, %bb.b ] ; 4 uses
  %.sroa.0262.0320 = phi ptr [ %.sroa.0264.1, %_ZNK6duckdb11LogicalType8IsNestedEv.exit.thread ], [ null, %bb.b ] ; 17 uses
  %.sroa.11.0319 = phi ptr [ %.sroa.11.1, %_ZNK6duckdb11LogicalType8IsNestedEv.exit.thread ], [ null, %bb.b ] ; 12 uses
  %.sroa.18.0318 = phi ptr [ %.sroa.18.1, %_ZNK6duckdb11LogicalType8IsNestedEv.exit.thread ], [ null, %bb.b ] ; 8 uses
  %i.i = invoke noundef nonnull align 8 dereferenceable(17) ptr @_ZN6duckdb6vectorINS_13JoinConditionELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %storemerge321)
end_hunk_17
begin_hunk_18
  br i1 %i.v, label %_ZNK6duckdb11LogicalType8IsNestedEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.k unwind label %.loopexit283

end_hunk_18
begin_hunk_19
          to label %bb.l unwind label %.loopexit283

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %.sroa.0258.0.copyload = load <2 x i64>, ptr %i.y, align 8 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.11.0319, %.sroa.18.0318
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store <2 x i64> %.sroa.0258.0.copyload, ptr %.sroa.11.0319, align 8
  br label %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EE9push_backERKS1_.exit

bb.n:                                             ; preds = %bb.l
end_hunk_19
begin_hunk_20

.noexc95:                                         ; preds = %_ZNKSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ab
  store <2 x i64> %.sroa.0258.0.copyload, ptr %i.ak, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0262.0320, %.sroa.11.0319
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i

end_hunk_20
begin_hunk_21
  br label %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.m
  %.sroa.18.2 = phi ptr [ %i.an, %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.18.0318, %bb.m ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.11.0319, %bb.m ]
  %.sroa.0262.5 = phi ptr [ %i.aj, %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0262.0320, %bb.m ] ; 5 uses
  %.sroa.11.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 16 ; 2 uses
  %i.ao = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_22JoinFilterPushdownInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.q unwind label %.loopexit283 ; 4 uses

end_hunk_21
begin_hunk_22
  store i64 %storemerge321, ptr %i.aq, align 8, !tbaa !66
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.at, ptr %i.ap, align 8, !tbaa !223
  br label %_ZNK6duckdb11LogicalType8IsNestedEv.exit.thread

bb.s:                                             ; preds = %bb.q
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !158 ; 4 uses
end_hunk_22
begin_hunk_23
  store ptr %i.bi, ptr %i.ap, align 8, !tbaa !223
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bd
  store ptr %i.bj, ptr %i.ar, align 8, !tbaa !207
  br label %_ZNK6duckdb11LogicalType8IsNestedEv.exit.thread

_ZNK6duckdb11LogicalType8IsNestedEv.exit.thread:  ; preds = %bb.h, %bb.h, %bb.h, %bb.r, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.i, %bb.f, %bb.c
  %.sroa.18.1 = phi ptr [ %.sroa.18.0318, %bb.c ], [ %.sroa.18.2, %bb.r ], [ %.sroa.18.0318, %bb.i ], [ %.sroa.18.0318, %bb.f ], [ %.sroa.18.2, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.18.0318, %bb.h ], [ %.sroa.18.0318, %bb.h ], [ %.sroa.18.0318, %bb.h ]
  %.sroa.11.1 = phi ptr [ %.sroa.11.0319, %bb.c ], [ %.sroa.11.2, %bb.r ], [ %.sroa.11.0319, %bb.i ], [ %.sroa.11.0319, %bb.f ], [ %.sroa.11.2, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.11.0319, %bb.h ], [ %.sroa.11.0319, %bb.h ], [ %.sroa.11.0319, %bb.h ] ; 4 uses
  %.sroa.0264.1 = phi ptr [ %.sroa.0262.0320, %bb.c ], [ %.sroa.0262.5, %bb.r ], [ %.sroa.0262.0320, %bb.i ], [ %.sroa.0262.0320, %bb.f ], [ %.sroa.0262.5, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.0262.0320, %bb.h ], [ %.sroa.0262.0320, %bb.h ], [ %.sroa.0262.0320, %bb.h ] ; 7 uses
  %i.bk = add nuw i64 %storemerge321, 1           ; 2 uses
  %i.bl = load ptr, ptr %i.e, align 8, !tbaa !1292
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !1293
end_hunk_23
begin_hunk_24
  %.sroa.0262.2.ph = phi ptr [ %.sroa.0262.0320, %bb.j ], [ %.sroa.0262.0320, %bb.k ], [ %.sroa.0262.0320, %_ZNKSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0262.5, %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EE9push_backERKS1_.exit ], [ %.sroa.0262.5, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit286 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

.loopexit.split-lp284:                            ; preds = %bb.o, %bb.t
  %.sroa.0262.2.ph285 = phi ptr [ %.sroa.0262.5, %bb.t ], [ %.sroa.0262.0320, %bb.o ]
  %lpad.loopexit.split-lp287 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.w:                                             ; preds = %._crit_edge
end_hunk_24
begin_hunk_25

bb.y:                                             ; preds = %bb.x
  %i.bv = ptrtoint ptr %.sroa.11.1 to i64
  %i.bw = ptrtoint ptr %.sroa.0264.1 to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.by = icmp ugt i64 %i.bx, 9223372036854775792
end_hunk_25
begin_hunk_26

.lr.ph.i.i.i.i.i.i101:                            ; preds = %.noexc105, %.lr.ph.i.i.i.i.i.i101
  %.09.i.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i101 ], [ %i.bz, %.noexc105 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i101 ], [ %.sroa.0264.1, %.noexc105 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !65
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
end_hunk_26
begin_hunk_27
  br label %bb.fc

bb.fc:                                            ; preds = %._crit_edge, %_ZNSt6vectorIN6duckdb20PushdownFilterTargetESaIS1_EED2Ev.exit
  %.not.i.i.i234 = icmp eq ptr %.sroa.0264.1, null
  br i1 %.not.i.i.i234, label %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EED2Ev.exit235, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0264.1) #35
  br label %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EED2Ev.exit235

_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EED2Ev.exit235: ; preds = %bb.fc, %bb.fd
end_hunk_27
begin_hunk_28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.fi

bb.fi:                                            ; preds = %.loopexit283, %.loopexit.split-lp284, %bb.d, %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EED2Ev.exit108
  %.sroa.0264.4 = phi ptr [ %.sroa.0264.1, %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EED2Ev.exit108 ], [ %.sroa.0262.0320, %bb.d ], [ %.sroa.0262.2.ph, %.loopexit283 ], [ %.sroa.0262.2.ph285, %.loopexit.split-lp284 ] ; 2 uses
  %.pn87.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn, %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EED2Ev.exit108 ], [ %i.l, %bb.d ], [ %lpad.loopexit286, %.loopexit283 ], [ %lpad.loopexit.split-lp287, %.loopexit.split-lp284 ]
  %.not.i.i.i240 = icmp eq ptr %.sroa.0264.4, null
  br i1 %.not.i.i.i240, label %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EED2Ev.exit241, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0264.4) #35
  br label %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EED2Ev.exit241

_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EED2Ev.exit241: ; preds = %bb.fi, %bb.fj
end_hunk_28
begin_hunk_29
  %i.d = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.e = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb14BaseExpression4CastINS_24BoundColumnRefExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.sroa.025.0.copyload = load <2 x i64>, ptr %i.f, align 8
  %i.g = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #37 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store <2 x i64> %.sroa.025.0.copyload, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_29
begin_hunk_30
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.1000", align 8 ; 6 uses
  %3 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %4 = alloca %"class.duckdb::vector.1388", align 8 ; 13 uses
  %5 = alloca %"class.duckdb::vector.1382", align 8 ; 6 uses
  %6 = alloca %"class.duckdb::Value", align 8     ; 8 uses
end_hunk_30
begin_hunk_31
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.x = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb14BaseExpression4CastINS_24BoundColumnRefExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %.sroa.0168.0.copyload = load <2 x i64>, ptr %i.y, align 8
  %i.z = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #37 ; 4 uses
  store <2 x i64> %.sroa.0168.0.copyload, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
end_hunk_31
begin_hunk_32

_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EED2Ev.exit140: ; preds = %bb.bx, %_ZSt8_DestroyIPN6duckdb20PushdownFilterTargetES1_EvT_S3_RSaIT0_E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.by

bb.by:                                            ; preds = %bb.d, %bb.c, %bb.b, %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EED2Ev.exit140
end_hunk_32
begin_hunk_33
  %.pn45.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.bb, %bb.m ], [ %.pn45.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ca ], [ %i.al, %bb.i ], [ %i.al, %bb.j ]
  call void @_ZNSt6vectorIN6duckdb20PushdownFilterTargetESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EED2Ev.exit145

bb.cb:                                            ; preds = %bb.e, %_ZNKSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EE12_M_check_lenEmPKc.exit.i.i
end_hunk_33
begin_hunk_34
          cleanup
  call void @_ZNSt6vectorIN6duckdb20PushdownFilterTargetESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @_ZdlPv(ptr noundef nonnull %i.z) #35
  br label %_ZNSt6vectorIN6duckdb24JoinFilterPushdownColumnESaIS1_EED2Ev.exit145

end_hunk_34
begin_hunk_35
; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_less_iterEEvT_SF_T0_T1_(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #28 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
end_hunk_35
begin_hunk_36
  br i1 %i.cg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i.i.i = load <2 x i64>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !tbaa.struct !65
  store <2 x i64> %.sroa.0.0.copyload.i.i.i.i, ptr %i.cb, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.ch = icmp ult i64 %.val2.i.i.i, %.val3.i27.i.i
  %.sroa.0.0.copyload.i.i30.i.i = load <2 x i64>, ptr %0, align 8 ; 2 uses
  br i1 %i.ch, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false), !tbaa.struct !65
  store <2 x i64> %.sroa.0.0.copyload.i.i30.i.i, ptr %i.cc, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !65
  store <2 x i64> %.sroa.0.0.copyload.i.i30.i.i, ptr %i.f, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph35
end_hunk_36
begin_hunk_37
  br i1 %i.ci, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.0.0.copyload.i.i34.i.i = load <2 x i64>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !65
  store <2 x i64> %.sroa.0.0.copyload.i.i34.i.i, ptr %i.f, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.cj = icmp ult i64 %.val3.i.i.i, %.val3.i27.i.i
  %.sroa.0.0.copyload.i.i37.i.i = load <2 x i64>, ptr %0, align 8 ; 2 uses
  br i1 %i.cj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false), !tbaa.struct !65
  store <2 x i64> %.sroa.0.0.copyload.i.i37.i.i, ptr %i.cc, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !tbaa.struct !65
  store <2 x i64> %.sroa.0.0.copyload.i.i37.i.i, ptr %i.cb, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
end_hunk_37
begin_hunk_38
  br i1 %i.cp, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEET_SF_SF_T0_.exit

bb.v:                                             ; preds = %bb.u
  %.sroa.0.0.copyload.i.i.i16.i = load <2 x i64>, ptr %.sroa.012.1.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 16, i1 false), !tbaa.struct !65
  store <2 x i64> %.sroa.0.0.copyload.i.i.i16.i, ptr %.sroa.0.1.i.i, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_.exit.i, !llvm.loop !4980

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEET_SF_SF_T0_.exit: ; preds = %bb.u
end_hunk_38
