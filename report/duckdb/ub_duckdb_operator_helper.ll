inline.NumInlined: 4538
inline.NumDeleted: 2834
begin_hunk_0_@_ZN6duckdb9make_uniqINS_23MaterializedQueryResultEJRKNS_13StatementTypeERKNS_19StatementPropertiesERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISE_EEENS_10unique_ptrINS_20ColumnDataCollectionESt14default_deleteISK_ELb1EEENS_16ClientPropertiesEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.z, ptr noundef nonnull align 8 dereferenceable(17) %i.aa, i64 17, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !111 ; 3 uses
  %i.ad = load ptr, ptr %3, align 8, !tbaa !112   ; 3 uses
  %i.ae = ptrtoint ptr %i.ac to i64
end_hunk_0
begin_hunk_1_@_ZN6duckdb9make_uniqINS_23MaterializedQueryResultEJRKNS_13StatementTypeERKNS_19StatementPropertiesERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISE_EEENS_10unique_ptrINS_20ColumnDataCollectionESt14default_deleteISK_ELb1EEENS_16ClientPropertiesEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #27
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc12_crit_edge unwind label %bb.n

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc12_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !115
  %.pre19 = load ptr, ptr %i.ab, align 8, !tbaa !115
  br label %.noexc12

.noexc12:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc12_crit_edge, %bb.c
  %12 = phi ptr [ %i.ac, %bb.c ], [ %.pre19, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc12_crit_edge ]
  %13 = phi ptr [ %i.ad, %bb.c ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc12_crit_edge ]
  %i.aj = phi ptr [ null, %bb.c ], [ %i.ai, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc12_crit_edge ] ; 4 uses
  store ptr %i.aj, ptr %9, align 8, !tbaa !112
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !111
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.al, ptr %i.am, align 8, !tbaa !114
  %i.an = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %13, ptr %12, ptr noundef %i.aj)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %.noexc12
end_hunk_1
begin_hunk_2_@_ZN6duckdb9make_uniqINS_17StreamQueryResultEJRKNS_13StatementTypeERKNS_19StatementPropertiesERKNS_6vectorINS_11LogicalTypeELb1ESaIS9_EEERKNS8_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISJ_EEENS_16ClientPropertiesERNS_10shared_ptrINS_12BufferedDataELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit unwind label %bb.x

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit: ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !111 ; 3 uses
  %i.ad = load ptr, ptr %4, align 8, !tbaa !112   ; 3 uses
  %i.ae = ptrtoint ptr %i.ac to i64
end_hunk_2
begin_hunk_3_@_ZN6duckdb9make_uniqINS_17StreamQueryResultEJRKNS_13StatementTypeERKNS_19StatementPropertiesERKNS_6vectorINS_11LogicalTypeELb1ESaIS9_EEERKNS8_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISJ_EEENS_16ClientPropertiesERNS_10shared_ptrINS_12BufferedDataELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #27
          to label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc16_crit_edge unwind label %bb.y

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc16_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %4, align 8, !tbaa !115
  %.pre33 = load ptr, ptr %i.ab, align 8, !tbaa !115
  br label %.noexc16

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc16_crit_edge, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit
  %14 = phi ptr [ %i.ac, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit ], [ %.pre33, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc16_crit_edge ]
  %15 = phi ptr [ %i.ad, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc16_crit_edge ]
  %i.aj = phi ptr [ null, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit ], [ %i.ai, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc16_crit_edge ] ; 4 uses
  store ptr %i.aj, ptr %11, align 8, !tbaa !112
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !111
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.al, ptr %i.am, align 8, !tbaa !114
  %i.an = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %15, ptr %14, ptr noundef %i.aj)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %.noexc16
end_hunk_3
