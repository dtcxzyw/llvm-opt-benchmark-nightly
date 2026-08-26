Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_sql-4f9f54f7d5831ee1.polars_sql.cafc849952b8d473-cgu.00?download=true
inline.NumInlined: 34484
inline.NumDeleted: 5413
begin_hunk_0_@_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr7struct_14StructFunctionECshquuC4dCYVj_10polars_sql:bb.a
  %i.p = load i8, ptr %i.o, align 1, !dbg !64819, !range !61047, !alias.scope !64826, !noundef !11
  %i.q = icmp eq i8 %i.p, -40, !dbg !64835
  br i1 %i.q, label %bb.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit, !dbg !64835, !prof !32

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !64779
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r), !dbg !64836
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit, !dbg !64836

bb.i:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !64837
  %i.t = load i8, ptr %i.s, align 1, !dbg !64837, !range !61047, !alias.scope !64844, !noundef !11
  %i.u = icmp eq i8 %i.t, -40, !dbg !64853
  br i1 %i.u, label %bb.j, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit, !dbg !64853, !prof !32

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !64779
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v), !dbg !64854
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit, !dbg !64854

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.k, %bb.b, %bb.a
  ret void, !dbg !64779

bb.k:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl8selector8SelectorECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(32) %0), !dbg !64779
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit, !dbg !64779
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr8datetime16TemporalFunctionECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 !dbg !64855 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !dbg !64856, !range !62440, !noundef !11
  switch i8 %i.a, label %bb.b [
    i8 0, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 1, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 2, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 3, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 4, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 5, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 6, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 7, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 8, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 9, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 10, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 11, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 12, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 13, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 14, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 15, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 16, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 17, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 18, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 19, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 20, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 21, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 22, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 23, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 24, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 25, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 26, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 27, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 28, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 29, label %bb.d
    i8 30, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 31, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 32, label %bb.e
    i8 33, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 34, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 35, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 36, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 37, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 38, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 39, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 40, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 41, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
    i8 42, label %bb.g
    i8 43, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit
  ], !dbg !64856

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !64857
  %i.c = load i8, ptr %i.b, align 1, !dbg !64857, !range !61631, !alias.scope !64859, !noundef !11
  %cond.i = icmp eq i8 %i.c, -40, !dbg !64857
  br i1 %cond.i, label %bb.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !64857, !prof !61635

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !64856
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !64862
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !64862

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b, %bb.d, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret void, !dbg !64856

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !64856
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e), !dbg !64868
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !64856

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !64870
  %i.g = load i8, ptr %i.f, align 1, !dbg !64870, !range !61047, !alias.scope !64878, !noundef !11
  %i.h = icmp eq i8 %i.g, -40, !dbg !64889
  br i1 %i.h, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !64889, !prof !32

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !64856
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i), !dbg !64890
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !64890

bb.g:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !64891
  %i.k = load i8, ptr %i.j, align 1, !dbg !64891, !range !61631, !alias.scope !64893, !noundef !11
  %cond.i1 = icmp eq i8 %i.k, -40, !dbg !64891
  br i1 %cond.i1, label %bb.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !64891, !prof !61635

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !64856
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l), !dbg !64896
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !64896
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort7options19SortMultipleOptionsECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !64902 {
bb.a:
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !64903

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !64903
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.b) #14
          to label %bb.e unwind label %bb.d, !dbg !64903

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !64903
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.c), !dbg !64903
  ret void, !dbg !64903

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !64903
  unreachable, !dbg !64903

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !64903
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr10row_encode18RowEncodingVariantECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !64904 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !64905, !range !61111, !noundef !11
  switch i64 %i.a, label %bb.b [
    i64 -9223372036854775807, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEEECshquuC4dCYVj_10polars_sql.exit3
    i64 -9223372036854775808, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEEECshquuC4dCYVj_10polars_sql.exit
  ], !dbg !64905

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEEECshquuC4dCYVj_10polars_sql.exit3: ; preds = %bb.a, %bb.e, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEEECshquuC4dCYVj_10polars_sql.exit
  ret void, !dbg !64905

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.c, !dbg !64906

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !64905 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !64909, !range !60760, !alias.scope !64911, !noundef !11
  %i.e = icmp eq i64 %i.d, -9223372036854775808, !dbg !64909
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEEECshquuC4dCYVj_10polars_sql.exit2, label %bb.d, !dbg !64909

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEEECshquuC4dCYVj_10polars_sql.exit2 unwind label %bb.f, !dbg !64909

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !64905 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !64914, !range !60760, !alias.scope !64916, !noundef !11
  %i.h = icmp eq i64 %i.g, -9223372036854775808, !dbg !64914
  br i1 %i.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEEECshquuC4dCYVj_10polars_sql.exit3, label %bb.e, !dbg !64914

bb.e:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEEECshquuC4dCYVj_10polars_sql.exit
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f), !dbg !64914
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEEECshquuC4dCYVj_10polars_sql.exit3, !dbg !64914

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !64905
  unreachable, !dbg !64905

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEEECshquuC4dCYVj_10polars_sql.exit2: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.b, !dbg !64905
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal void @_RNCINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB17_NtNtNtNtB1d_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2Q_8iterator10ExprMapperNCINvMs0_B3G_B17_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4H_10SQLContext14execute_selects3_00E0EE0E0B4J_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !64919 {
bb.a:
  %.sroa.07.i = alloca [112 x i8], align 16       ; 6 uses
  %i.a = alloca [144 x i8], align 16              ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [144 x i8], align 16              ; 6 uses
  %i.d = alloca [144 x i8], align 16              ; 8 uses
  %i.e = alloca [144 x i8], align 16              ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !dbg !64921, !nonnull !11, !align !64922, !noundef !11 ; 5 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 112, !dbg !64923 ; 2 uses
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 16, !dbg !64923 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 144, !dbg !64923
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 16, !dbg !64923 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 152, !dbg !64923
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !64923 ; 3 uses
  store i64 -9223372036854775780, ptr %.sroa.4.0..sroa_idx, align 16, !dbg !64928
  %.not = icmp eq i64 %.sroa.4.0.copyload, -9223372036854775780, !dbg !64930
  br i1 %.not, label %bb.e, label %bb.b, !dbg !64933, !prof !32

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 120, !dbg !64923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !64934, !noalias !64946
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.c, ptr noundef nonnull align 16 dereferenceable(112) %i.f, i64 112, i1 false), !dbg !64950
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 120, !dbg !64934
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, i64 24, i1 false), !dbg !64950
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i), !dbg !64951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !64951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !64934, !noalias !64946
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 112, !dbg !64934
  store i64 %.sroa.4.0.copyload, ptr %.sroa.2.0..sroa_idx, align 16, !dbg !64934, !noalias !64952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !64953, !noalias !64946
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload) ]
  store ptr %.sroa.5.sroa.4.0.copyload, ptr %i.b, align 8, !dbg !64953, !noalias !64946
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  call void @_RINvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7visitor4exprNtNtNtB9_3dsl4expr4ExprNtNtB5_8visitors10TreeWalker12map_childrenNCNCINvYBT_B1g_7rewriteINtNtB7_8iterator10ExprMapperNCINvMs0_B2m_BT_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB3l_10SQLContext14execute_selects3_00E0EE00EB3n_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.d, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull %.sroa.5.sroa.5.0.copyload), !dbg !64954, !noalias !64946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !64955, !noalias !64946
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 112, !dbg !64956
  %i.h = load i64, ptr %i.g, align 16, !dbg !64956, !range !40, !noalias !64946, !noundef !11 ; 2 uses
  %i.i = icmp eq i64 %i.h, -9223372036854775780, !dbg !64956
  br i1 %i.i, label %bb.c, label %bb.d, !dbg !64960

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.07.i, ptr noundef nonnull align 16 dereferenceable(72) %i.d, i64 72, i1 false), !dbg !64961, !noalias !64946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !64962, !noalias !64946
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.e, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.07.i, i64 72, i1 false), !dbg !64963
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 112, !dbg !64963
  store i64 -9223372036854775780, ptr %i.j, align 16, !dbg !64963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !64971, !noalias !64946
  br label %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext14execute_selects3_00E0EE0B2M_.exit, !dbg !64972

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.07.i, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false), !dbg !64975, !noalias !64946
  %.sroa.621.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120, !dbg !64975
  %.sroa.8.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120, !dbg !64934
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx11.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621.0..sroa_idx.i, i64 24, i1 false), !dbg !64975, !noalias !64946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !64962, !noalias !64946
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.a, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.07.i, i64 112, i1 false), !dbg !64934, !noalias !64946
  %.sroa.78.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112, !dbg !64934
  store i64 %i.h, ptr %.sroa.78.0..sroa_idx9.i, align 16, !dbg !64934, !noalias !64946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !64971, !noalias !64946
  call void @_RNvXs_NtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorINtB4_10ExprMapperNCINvMs0_B4_NtNtNtB8_3dsl4expr4Expr8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB1Y_10SQLContext14execute_selects3_00E0ENtNtNtB6_7visitor8visitors16RewritingVisitor6mutateB20_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.5.sroa.4.0.copyload, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull %.sroa.5.sroa.5.0.copyload), !dbg !64976
  br label %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext14execute_selects3_00E0EE0B2M_.exit, !dbg !64976

_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext14execute_selects3_00E0EE0B2M_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i), !dbg !64978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !64978
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !64979
  %i.l = load ptr, ptr %i.k, align 8, !dbg !64979, !nonnull !11, !align !64922, !noundef !11 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %i.l)
          to label %bb.g unwind label %bb.f, !dbg !64979

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2572) #18, !dbg !64980
  unreachable, !dbg !64980

bb.f:                                             ; preds = %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext14execute_selects3_00E0EE0B2M_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.l, ptr noundef nonnull align 16 dereferenceable(144) %i.e, i64 144, i1 false), !dbg !64979
  resume { ptr, i32 } %i.m, !dbg !64981

bb.g:                                             ; preds = %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext14execute_selects3_00E0EE0B2M_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.l, ptr noundef nonnull align 16 dereferenceable(144) %i.e, i64 144, i1 false), !dbg !64979
  ret void, !dbg !64982
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal void @_RNCINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB17_NtNtNtNtB1d_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2Q_8iterator10ExprMapperNCINvMs0_B3G_B17_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4H_10SQLContext16process_group_bys1_00E0EE0E0B4J_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !64983 {
bb.a:
  %.sroa.07.i = alloca [112 x i8], align 16       ; 6 uses
  %i.a = alloca [144 x i8], align 16              ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [144 x i8], align 16              ; 6 uses
  %i.d = alloca [144 x i8], align 16              ; 8 uses
  %i.e = alloca [144 x i8], align 16              ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !dbg !64984, !nonnull !11, !align !64922, !noundef !11 ; 5 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 112, !dbg !64985 ; 2 uses
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 16, !dbg !64985 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 144, !dbg !64985
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 16, !dbg !64985 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 152, !dbg !64985
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !64985 ; 3 uses
  store i64 -9223372036854775780, ptr %.sroa.4.0..sroa_idx, align 16, !dbg !64990
  %.not = icmp eq i64 %.sroa.4.0.copyload, -9223372036854775780, !dbg !64992
  br i1 %.not, label %bb.e, label %bb.b, !dbg !64995, !prof !32

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 120, !dbg !64985
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !64996, !noalias !65001
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.c, ptr noundef nonnull align 16 dereferenceable(112) %i.f, i64 112, i1 false), !dbg !65005
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 120, !dbg !64996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, i64 24, i1 false), !dbg !65005
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i), !dbg !65006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !65006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !64996, !noalias !65001
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 112, !dbg !64996
  store i64 %.sroa.4.0.copyload, ptr %.sroa.2.0..sroa_idx, align 16, !dbg !64996, !noalias !65007
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !65008, !noalias !65001
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload) ]
  store ptr %.sroa.5.sroa.4.0.copyload, ptr %i.b, align 8, !dbg !65008, !noalias !65001
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  call void @_RINvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7visitor4exprNtNtNtB9_3dsl4expr4ExprNtNtB5_8visitors10TreeWalker12map_childrenNCNCINvYBT_B1g_7rewriteINtNtB7_8iterator10ExprMapperNCINvMs0_B2m_BT_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB3l_10SQLContext16process_group_bys1_00E0EE00EB3n_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.d, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull %.sroa.5.sroa.5.0.copyload), !dbg !65009, !noalias !65001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !65010, !noalias !65001
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 112, !dbg !65011
  %i.h = load i64, ptr %i.g, align 16, !dbg !65011, !range !40, !noalias !65001, !noundef !11 ; 2 uses
  %i.i = icmp eq i64 %i.h, -9223372036854775780, !dbg !65011
  br i1 %i.i, label %bb.c, label %bb.d, !dbg !65014

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.07.i, ptr noundef nonnull align 16 dereferenceable(72) %i.d, i64 72, i1 false), !dbg !65015, !noalias !65001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !65016, !noalias !65001
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.e, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.07.i, i64 72, i1 false), !dbg !65017
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 112, !dbg !65017
  store i64 -9223372036854775780, ptr %i.j, align 16, !dbg !65017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !65024, !noalias !65001
  br label %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext16process_group_bys1_00E0EE0B2M_.exit, !dbg !65025

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.07.i, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false), !dbg !65027, !noalias !65001
  %.sroa.621.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120, !dbg !65027
  %.sroa.8.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120, !dbg !64996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx11.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621.0..sroa_idx.i, i64 24, i1 false), !dbg !65027, !noalias !65001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !65016, !noalias !65001
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.a, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.07.i, i64 112, i1 false), !dbg !64996, !noalias !65001
  %.sroa.78.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112, !dbg !64996
  store i64 %i.h, ptr %.sroa.78.0..sroa_idx9.i, align 16, !dbg !64996, !noalias !65001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !65024, !noalias !65001
  call void @_RNvXs_NtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorINtB4_10ExprMapperNCINvMs0_B4_NtNtNtB8_3dsl4expr4Expr8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB1Y_10SQLContext16process_group_bys1_00E0ENtNtNtB6_7visitor8visitors16RewritingVisitor6mutateB20_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.5.sroa.4.0.copyload, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull %.sroa.5.sroa.5.0.copyload), !dbg !65028
  br label %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext16process_group_bys1_00E0EE0B2M_.exit, !dbg !65028

_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext16process_group_bys1_00E0EE0B2M_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i), !dbg !65030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !65030
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !65031
  %i.l = load ptr, ptr %i.k, align 8, !dbg !65031, !nonnull !11, !align !64922, !noundef !11 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %i.l)
          to label %bb.g unwind label %bb.f, !dbg !65031

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2572) #18, !dbg !65032
  unreachable, !dbg !65032

bb.f:                                             ; preds = %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext16process_group_bys1_00E0EE0B2M_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.l, ptr noundef nonnull align 16 dereferenceable(144) %i.e, i64 144, i1 false), !dbg !65031
  resume { ptr, i32 } %i.m, !dbg !65033

bb.g:                                             ; preds = %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext16process_group_bys1_00E0EE0B2M_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.l, ptr noundef nonnull align 16 dereferenceable(144) %i.e, i64 144, i1 false), !dbg !65031
  ret void, !dbg !65034
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal void @_RNCINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB17_NtNtNtNtB1d_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2Q_8iterator10ExprMapperNCINvMs0_B3G_B17_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4F_10SQLContext15expr_or_ordinals0_0E0EE0E0B4H_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !65035 {
bb.a:
  %.sroa.07.i = alloca [112 x i8], align 16       ; 6 uses
  %i.a = alloca [144 x i8], align 16              ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [144 x i8], align 16              ; 6 uses
  %i.d = alloca [144 x i8], align 16              ; 8 uses
  %i.e = alloca [144 x i8], align 16              ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !dbg !65036, !nonnull !11, !align !64922, !noundef !11 ; 5 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 112, !dbg !65037 ; 2 uses
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 16, !dbg !65037 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 144, !dbg !65037
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 16, !dbg !65037 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 152, !dbg !65037
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !65037 ; 3 uses
  store i64 -9223372036854775780, ptr %.sroa.4.0..sroa_idx, align 16, !dbg !65042
  %.not = icmp eq i64 %.sroa.4.0.copyload, -9223372036854775780, !dbg !65044
  br i1 %.not, label %bb.e, label %bb.b, !dbg !65047, !prof !32

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 120, !dbg !65037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !65048, !noalias !65053
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.c, ptr noundef nonnull align 16 dereferenceable(112) %i.f, i64 112, i1 false), !dbg !65057
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 120, !dbg !65048
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, i64 24, i1 false), !dbg !65057
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i), !dbg !65058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !65058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !65048, !noalias !65053
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 112, !dbg !65048
  store i64 %.sroa.4.0.copyload, ptr %.sroa.2.0..sroa_idx, align 16, !dbg !65048, !noalias !65059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !65060, !noalias !65053
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload) ]
  store ptr %.sroa.5.sroa.4.0.copyload, ptr %i.b, align 8, !dbg !65060, !noalias !65053
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  call void @_RINvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7visitor4exprNtNtNtB9_3dsl4expr4ExprNtNtB5_8visitors10TreeWalker12map_childrenNCNCINvYBT_B1g_7rewriteINtNtB7_8iterator10ExprMapperNCINvMs0_B2m_BT_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB3j_10SQLContext15expr_or_ordinals0_0E0EE00EB3l_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.d, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull %.sroa.5.sroa.5.0.copyload), !dbg !65061, !noalias !65053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !65062, !noalias !65053
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 112, !dbg !65063
  %i.h = load i64, ptr %i.g, align 16, !dbg !65063, !range !40, !noalias !65053, !noundef !11 ; 2 uses
  %i.i = icmp eq i64 %i.h, -9223372036854775780, !dbg !65063
  br i1 %i.i, label %bb.c, label %bb.d, !dbg !65066

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.07.i, ptr noundef nonnull align 16 dereferenceable(72) %i.d, i64 72, i1 false), !dbg !65067, !noalias !65053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !65068, !noalias !65053
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.e, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.07.i, i64 72, i1 false), !dbg !65069
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 112, !dbg !65069
  store i64 -9223372036854775780, ptr %i.j, align 16, !dbg !65069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !65076, !noalias !65053
  br label %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2I_10SQLContext15expr_or_ordinals0_0E0EE0B2K_.exit, !dbg !65077

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.07.i, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false), !dbg !65079, !noalias !65053
  %.sroa.621.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120, !dbg !65079
  %.sroa.8.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120, !dbg !65048
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx11.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621.0..sroa_idx.i, i64 24, i1 false), !dbg !65079, !noalias !65053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !65068, !noalias !65053
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.a, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.07.i, i64 112, i1 false), !dbg !65048, !noalias !65053
  %.sroa.78.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112, !dbg !65048
  store i64 %i.h, ptr %.sroa.78.0..sroa_idx9.i, align 16, !dbg !65048, !noalias !65053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !65076, !noalias !65053
  call void @_RNvXs_NtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorINtB4_10ExprMapperNCINvMs0_B4_NtNtNtB8_3dsl4expr4Expr8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB1W_10SQLContext15expr_or_ordinals0_0E0ENtNtNtB6_7visitor8visitors16RewritingVisitor6mutateB1Y_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.5.sroa.4.0.copyload, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull %.sroa.5.sroa.5.0.copyload), !dbg !65080
  br label %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2I_10SQLContext15expr_or_ordinals0_0E0EE0B2K_.exit, !dbg !65080

_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2I_10SQLContext15expr_or_ordinals0_0E0EE0B2K_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i), !dbg !65082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !65082
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !65083
  %i.l = load ptr, ptr %i.k, align 8, !dbg !65083, !nonnull !11, !align !64922, !noundef !11 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %i.l)
          to label %bb.g unwind label %bb.f, !dbg !65083

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2572) #18, !dbg !65084
  unreachable, !dbg !65084

bb.f:                                             ; preds = %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2I_10SQLContext15expr_or_ordinals0_0E0EE0B2K_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.l, ptr noundef nonnull align 16 dereferenceable(144) %i.e, i64 144, i1 false), !dbg !65083
  resume { ptr, i32 } %i.m, !dbg !65085

bb.g:                                             ; preds = %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2I_10SQLContext15expr_or_ordinals0_0E0EE0B2K_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.l, ptr noundef nonnull align 16 dereferenceable(144) %i.e, i64 144, i1 false), !dbg !65083
  ret void, !dbg !65086
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal void @_RNCINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB17_NtNtNtNtB1d_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2Q_8iterator10ExprMapperNCINvMs0_B3G_B17_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE0E0B4D_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !65087 {
bb.a:
  %.sroa.07.i = alloca [112 x i8], align 16       ; 6 uses
  %i.a = alloca [144 x i8], align 16              ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [144 x i8], align 16              ; 6 uses
  %i.d = alloca [144 x i8], align 16              ; 8 uses
  %i.e = alloca [144 x i8], align 16              ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !dbg !65088, !nonnull !11, !align !64922, !noundef !11 ; 5 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 112, !dbg !65089 ; 2 uses
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 16, !dbg !65089 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 144, !dbg !65089
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 16, !dbg !65089 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 152, !dbg !65089
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !65089 ; 3 uses
  store i64 -9223372036854775780, ptr %.sroa.4.0..sroa_idx, align 16, !dbg !65094
  %.not = icmp eq i64 %.sroa.4.0.copyload, -9223372036854775780, !dbg !65096
  br i1 %.not, label %bb.e, label %bb.b, !dbg !65099, !prof !32

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 120, !dbg !65089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !65100, !noalias !65105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.c, ptr noundef nonnull align 16 dereferenceable(112) %i.f, i64 112, i1 false), !dbg !65109
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 120, !dbg !65100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, i64 24, i1 false), !dbg !65109
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i), !dbg !65110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !65110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !65100, !noalias !65105
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 112, !dbg !65100
  store i64 %.sroa.4.0.copyload, ptr %.sroa.2.0..sroa_idx, align 16, !dbg !65100, !noalias !65111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !65112, !noalias !65105
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload) ]
  store ptr %.sroa.5.sroa.4.0.copyload, ptr %i.b, align 8, !dbg !65112, !noalias !65105
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  call void @_RINvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7visitor4exprNtNtNtB9_3dsl4expr4ExprNtNtB5_8visitors10TreeWalker12map_childrenNCNCINvYBT_B1g_7rewriteINtNtB7_8iterator10ExprMapperNCINvMs0_B2m_BT_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE00EB3h_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.d, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull %.sroa.5.sroa.5.0.copyload), !dbg !65113, !noalias !65105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !65114, !noalias !65105
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 112, !dbg !65115
  %i.h = load i64, ptr %i.g, align 16, !dbg !65115, !range !40, !noalias !65105, !noundef !11 ; 2 uses
  %i.i = icmp eq i64 %i.h, -9223372036854775780, !dbg !65115
  br i1 %i.i, label %bb.c, label %bb.d, !dbg !65118

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.07.i, ptr noundef nonnull align 16 dereferenceable(72) %i.d, i64 72, i1 false), !dbg !65119, !noalias !65105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !65120, !noalias !65105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.e, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.07.i, i64 72, i1 false), !dbg !65121
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 112, !dbg !65121
  store i64 -9223372036854775780, ptr %i.j, align 16, !dbg !65121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !65128, !noalias !65105
  br label %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE0B2G_.exit, !dbg !65129

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.07.i, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false), !dbg !65131, !noalias !65105
  %.sroa.621.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120, !dbg !65131
  %.sroa.8.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120, !dbg !65100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx11.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621.0..sroa_idx.i, i64 24, i1 false), !dbg !65131, !noalias !65105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !65120, !noalias !65105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.a, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.07.i, i64 112, i1 false), !dbg !65100, !noalias !65105
  %.sroa.78.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112, !dbg !65100
  store i64 %i.h, ptr %.sroa.78.0..sroa_idx9.i, align 16, !dbg !65100, !noalias !65105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !65128, !noalias !65105
  call void @_RNvXs_NtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorINtB4_10ExprMapperNCINvMs0_B4_NtNtNtB8_3dsl4expr4Expr8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0ENtNtNtB6_7visitor8visitors16RewritingVisitor6mutateB1U_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.5.sroa.4.0.copyload, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull %.sroa.5.sroa.5.0.copyload), !dbg !65132
  br label %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE0B2G_.exit, !dbg !65132

_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE0B2G_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i), !dbg !65134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !65134
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !65135
  %i.l = load ptr, ptr %i.k, align 8, !dbg !65135, !nonnull !11, !align !64922, !noundef !11 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %i.l)
          to label %bb.g unwind label %bb.f, !dbg !65135

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2572) #18, !dbg !65136
  unreachable, !dbg !65136

bb.f:                                             ; preds = %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE0B2G_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.l, ptr noundef nonnull align 16 dereferenceable(144) %i.e, i64 144, i1 false), !dbg !65135
  resume { ptr, i32 } %i.m, !dbg !65137

bb.g:                                             ; preds = %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE0B2G_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.l, ptr noundef nonnull align 16 dereferenceable(144) %i.e, i64 144, i1 false), !dbg !65135
  ret void, !dbg !65138
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal void @_RNCINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB17_NtNtNtNtB1d_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2Q_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4f_10SQLContext18process_subqueries0EE0E0B4h_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !65139 {
bb.a:
  %.sroa.07.i = alloca [112 x i8], align 16       ; 6 uses
  %i.a = alloca [144 x i8], align 16              ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [144 x i8], align 16              ; 6 uses
  %i.d = alloca [144 x i8], align 16              ; 8 uses
  %i.e = alloca [144 x i8], align 16              ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !dbg !65140, !nonnull !11, !align !64922, !noundef !11 ; 5 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 112, !dbg !65141 ; 2 uses
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 16, !dbg !65141 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 144, !dbg !65141
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 16, !dbg !65141 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 152, !dbg !65141
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !65141 ; 3 uses
  store i64 -9223372036854775780, ptr %.sroa.4.0..sroa_idx, align 16, !dbg !65146
  %.not = icmp eq i64 %.sroa.4.0.copyload, -9223372036854775780, !dbg !65148
  br i1 %.not, label %bb.e, label %bb.b, !dbg !65151, !prof !32

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 120, !dbg !65141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !65152, !noalias !65157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.c, ptr noundef nonnull align 16 dereferenceable(112) %i.f, i64 112, i1 false), !dbg !65161
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 120, !dbg !65152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, i64 24, i1 false), !dbg !65161
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i), !dbg !65162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !65162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !65152, !noalias !65157
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 112, !dbg !65152
  store i64 %.sroa.4.0.copyload, ptr %.sroa.2.0..sroa_idx, align 16, !dbg !65152, !noalias !65163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !65164, !noalias !65157
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload) ]
  store ptr %.sroa.5.sroa.4.0.copyload, ptr %i.b, align 8, !dbg !65164, !noalias !65157
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  call void @_RINvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7visitor4exprNtNtNtB9_3dsl4expr4ExprNtNtB5_8visitors10TreeWalker12map_childrenNCNCINvYBT_B1g_7rewriteINtNtB7_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2U_10SQLContext18process_subqueries0EE00EB2W_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.d, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull %.sroa.5.sroa.5.0.copyload), !dbg !65165, !noalias !65157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !65166, !noalias !65157
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 112, !dbg !65167
  %i.h = load i64, ptr %i.g, align 16, !dbg !65167, !range !40, !noalias !65157, !noundef !11 ; 2 uses
  %i.i = icmp eq i64 %i.h, -9223372036854775780, !dbg !65167
  br i1 %i.i, label %bb.c, label %bb.d, !dbg !65170

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.07.i, ptr noundef nonnull align 16 dereferenceable(72) %i.d, i64 72, i1 false), !dbg !65171, !noalias !65157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !65172, !noalias !65157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.e, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.07.i, i64 72, i1 false), !dbg !65173
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 112, !dbg !65173
  store i64 -9223372036854775780, ptr %i.j, align 16, !dbg !65173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !65180, !noalias !65157
  br label %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2j_10SQLContext18process_subqueries0EE0B2l_.exit, !dbg !65181

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.07.i, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false), !dbg !65183, !noalias !65157
  %.sroa.621.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120, !dbg !65183
  %.sroa.8.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120, !dbg !65152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx11.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621.0..sroa_idx.i, i64 24, i1 false), !dbg !65183, !noalias !65157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !65172, !noalias !65157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.a, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.07.i, i64 112, i1 false), !dbg !65152, !noalias !65157
  %.sroa.78.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112, !dbg !65152
  store i64 %i.h, ptr %.sroa.78.0..sroa_idx9.i, align 16, !dbg !65152, !noalias !65157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !65180, !noalias !65157
  call void @_RNvXs_NtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorINtB4_10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB1e_10SQLContext18process_subqueries0ENtNtNtB6_7visitor8visitors16RewritingVisitor6mutateB1g_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.4.0.copyload, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull %.sroa.5.sroa.5.0.copyload), !dbg !65184
  br label %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2j_10SQLContext18process_subqueries0EE0B2l_.exit, !dbg !65184

_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2j_10SQLContext18process_subqueries0EE0B2l_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i), !dbg !65186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !65186
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !65187
  %i.l = load ptr, ptr %i.k, align 8, !dbg !65187, !nonnull !11, !align !64922, !noundef !11 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %i.l)
          to label %bb.g unwind label %bb.f, !dbg !65187

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2572) #18, !dbg !65188
  unreachable, !dbg !65188

bb.f:                                             ; preds = %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2j_10SQLContext18process_subqueries0EE0B2l_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.l, ptr noundef nonnull align 16 dereferenceable(144) %i.e, i64 144, i1 false), !dbg !65187
  resume { ptr, i32 } %i.m, !dbg !65189

bb.g:                                             ; preds = %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2j_10SQLContext18process_subqueries0EE0B2l_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.l, ptr noundef nonnull align 16 dereferenceable(144) %i.e, i64 144, i1 false), !dbg !65187
  ret void, !dbg !65190
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal void @_RNCINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXs14_NtNtCsaRr8xKSRVhT_9sqlparser3ast3dclNtB2i_14SecondaryRolesNtNtB2k_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0E0B3K_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !65191 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.4 = alloca [64 x i8], align 8            ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !65192, !nonnull !11, !align !61164, !noundef !11 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !dbg !65193, !align !61164, !noundef !11 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !65193
  %i.e = load ptr, ptr %i.d, align 8, !dbg !65193 ; 2 uses
  store ptr null, ptr %i.b, align 8, !dbg !65198
  %.not = icmp eq ptr %i.c, null, !dbg !65200
  br i1 %.not, label %bb.f, label %bb.b, !dbg !65203, !prof !32

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65204), !dbg !65207
  %i.f = load i64, ptr %i.c, align 8, !dbg !65209, !range !61111, !alias.scope !65204, !noalias !65218, !noundef !11
  %i.g = icmp sgt i64 %i.f, -1, !dbg !65209
  br i1 %i.g, label %bb.c, label %_RNCINvXs14_NtNtCsaRr8xKSRVhT_9sqlparser3ast3dclNtB9_14SecondaryRolesNtNtBb_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1z_.exit, !dbg !65209

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !65221, !noalias !65223
  call void @_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB7_5IdentENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorEB1N_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e), !dbg !65221, !noalias !65224
  %i.h = load i64, ptr %i.a, align 8, !dbg !65225, !range !65231, !alias.scope !65232, !noalias !65235, !noundef !11 ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 18, !dbg !65225
  br i1 %.not.i.i, label %_RNCINvXs14_NtNtCsaRr8xKSRVhT_9sqlparser3ast3dclNtB9_14SecondaryRolesNtNtBb_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1z_.exit.sink.split, label %bb.d, !dbg !65237

bb.d:                                             ; preds = %bb.c
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !65238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx2.i, i64 64, i1 false), !dbg !65238
  br label %_RNCINvXs14_NtNtCsaRr8xKSRVhT_9sqlparser3ast3dclNtB9_14SecondaryRolesNtNtBb_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1z_.exit.sink.split, !dbg !65240

_RNCINvXs14_NtNtCsaRr8xKSRVhT_9sqlparser3ast3dclNtB9_14SecondaryRolesNtNtBb_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1z_.exit.sink.split: ; preds = %bb.c, %bb.d
  %storemerge.i.ph = phi i64 [ %i.h, %bb.d ], [ 18, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !65241, !noalias !65223
  br label %_RNCINvXs14_NtNtCsaRr8xKSRVhT_9sqlparser3ast3dclNtB9_14SecondaryRolesNtNtBb_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1z_.exit, !dbg !65242

_RNCINvXs14_NtNtCsaRr8xKSRVhT_9sqlparser3ast3dclNtB9_14SecondaryRolesNtNtBb_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1z_.exit: ; preds = %_RNCINvXs14_NtNtCsaRr8xKSRVhT_9sqlparser3ast3dclNtB9_14SecondaryRolesNtNtBb_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1z_.exit.sink.split, %bb.b
  %storemerge.i = phi i64 [ 18, %bb.b ], [ %storemerge.i.ph, %_RNCINvXs14_NtNtCsaRr8xKSRVhT_9sqlparser3ast3dclNtB9_14SecondaryRolesNtNtBb_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1z_.exit.sink.split ], !dbg !65243 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !65242
  %i.j = load ptr, ptr %i.i, align 8, !dbg !65242, !nonnull !11, !align !61164, !noundef !11 ; 6 uses
  %i.k = load i64, ptr %i.j, align 8, !dbg !65244, !range !240, !alias.scope !65246, !noundef !11
  %i.l = and i64 %i.k, 30, !dbg !65244
  %switch.i = icmp eq i64 %i.l, 18, !dbg !65244
  br i1 %switch.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtB4_3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECshquuC4dCYVj_10polars_sql.exit, label %bb.e, !dbg !65244

bb.e:                                             ; preds = %_RNCINvXs14_NtNtCsaRr8xKSRVhT_9sqlparser3ast3dclNtB9_14SecondaryRolesNtNtBb_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1z_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtB4_3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.g, !dbg !65249

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2572) #18, !dbg !65251
  unreachable, !dbg !65251

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge.i, ptr %i.j, align 8, !dbg !65242
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !65242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4, i64 64, i1 false), !dbg !65242
  resume { ptr, i32 } %i.m, !dbg !65252

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtB4_3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RNCINvXs14_NtNtCsaRr8xKSRVhT_9sqlparser3ast3dclNtB9_14SecondaryRolesNtNtBb_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1z_.exit, %bb.e
  store i64 %storemerge.i, ptr %i.j, align 8, !dbg !65242
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !65242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4, i64 64, i1 false), !dbg !65242
  ret void, !dbg !65253
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal void @_RNCINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXs15_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB2i_15IndexConstraintNtNtB2k_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0E0B40_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !65254 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %.sroa.8 = alloca [64 x i8], align 8            ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !65255, !nonnull !11, !align !61164, !noundef !11 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !65256, !align !61164, !noundef !11 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !65256
  %i.h = load ptr, ptr %i.g, align 8, !dbg !65256 ; 5 uses
  store ptr null, ptr %i.e, align 8, !dbg !65261
  %.not = icmp eq ptr %i.f, null, !dbg !65263
  br i1 %.not, label %bb.l, label %bb.b, !dbg !65266, !prof !32

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !65267, !noalias !65275
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48, !dbg !65267
  call void @_RINvXNtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCscgRAwXFJnXP_4core6option6OptionNtB5_5IdentENtB3_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorEB1Q_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h), !dbg !65267, !noalias !65280
  %i.j = load i64, ptr %i.d, align 8, !dbg !65281, !range !65231, !alias.scope !65283, !noalias !65286, !noundef !11 ; 2 uses
  %.not.i5.i = icmp eq i64 %i.j, 18, !dbg !65281
  br i1 %.not.i5.i, label %bb.d, label %bb.c, !dbg !65288

bb.c:                                             ; preds = %bb.b
  %.sroa.720.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !65289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.720.0..sroa_idx21.i, i64 64, i1 false), !dbg !65289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !65290, !noalias !65275
  br label %_RNCINvXs15_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB9_15IndexConstraintNtNtBb_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1P_.exit, !dbg !65291

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !65290, !noalias !65275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !65293, !noalias !65275
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 112, !dbg !65293
  call void @_RINvXNtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB5_3ddl9IndexTypeENtB3_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorEB20_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h), !dbg !65293, !noalias !65280
  %i.l = load i64, ptr %i.c, align 8, !dbg !65294, !range !65231, !alias.scope !65296, !noalias !65299, !noundef !11 ; 2 uses
  %.not.i7.i = icmp eq i64 %i.l, 18, !dbg !65294
  br i1 %.not.i7.i, label %bb.f, label %bb.e, !dbg !65301

bb.e:                                             ; preds = %bb.d
  %.sroa.726.0..sroa_idx27.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !65302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.726.0..sroa_idx27.i, i64 64, i1 false), !dbg !65302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !65303, !noalias !65275
  br label %_RNCINvXs15_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB9_15IndexConstraintNtNtBb_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1P_.exit, !dbg !65291

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !65303, !noalias !65275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !65304, !noalias !65275
  call void @_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB7_3ddl11IndexColumnENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorEB20_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h), !dbg !65304, !noalias !65280
  %i.m = load i64, ptr %i.b, align 8, !dbg !65305, !range !65231, !alias.scope !65307, !noalias !65310, !noundef !11 ; 2 uses
  %.not.i9.i = icmp eq i64 %i.m, 18, !dbg !65305
  br i1 %.not.i9.i, label %bb.h, label %bb.g, !dbg !65312

bb.g:                                             ; preds = %bb.f
  %.sroa.732.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !65313
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.732.0..sroa_idx33.i, i64 64, i1 false), !dbg !65313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !65314, !noalias !65275
  br label %_RNCINvXs15_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB9_15IndexConstraintNtNtBb_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1P_.exit, !dbg !65291

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !65314, !noalias !65275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !65315, !noalias !65275
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !65315
  call void @_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB7_3ddl11IndexOptionENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorEB20_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h), !dbg !65315, !noalias !65280
  %i.o = load i64, ptr %i.a, align 8, !dbg !65316, !range !65231, !alias.scope !65318, !noalias !65321, !noundef !11 ; 2 uses
  %.not.i11.i = icmp eq i64 %i.o, 18, !dbg !65316
  br i1 %.not.i11.i, label %bb.j, label %bb.i, !dbg !65323

bb.i:                                             ; preds = %bb.h
  %.sroa.738.0..sroa_idx39.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !65324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.738.0..sroa_idx39.i, i64 64, i1 false), !dbg !65324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !65325, !noalias !65275
  br label %_RNCINvXs15_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB9_15IndexConstraintNtNtBb_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1P_.exit, !dbg !65291

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !65325, !noalias !65275
  br label %_RNCINvXs15_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB9_15IndexConstraintNtNtBb_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1P_.exit, !dbg !65326

_RNCINvXs15_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB9_15IndexConstraintNtNtBb_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1P_.exit: ; preds = %bb.c, %bb.e, %bb.g, %bb.i, %bb.j
  %.sroa.0.0 = phi i64 [ 18, %bb.j ], [ %i.o, %bb.i ], [ %i.m, %bb.g ], [ %i.l, %bb.e ], [ %i.j, %bb.c ], !dbg !65327 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !65328
  %i.q = load ptr, ptr %i.p, align 8, !dbg !65328, !nonnull !11, !align !61164, !noundef !11 ; 6 uses
  %i.r = load i64, ptr %i.q, align 8, !dbg !65329, !range !240, !alias.scope !65331, !noundef !11
  %i.s = and i64 %i.r, 30, !dbg !65329
  %switch.i = icmp eq i64 %i.s, 18, !dbg !65329
  br i1 %switch.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtB4_3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECshquuC4dCYVj_10polars_sql.exit, label %bb.k, !dbg !65329

bb.k:                                             ; preds = %_RNCINvXs15_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB9_15IndexConstraintNtNtBb_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1P_.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.q)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtB4_3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.m, !dbg !65334

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2572) #18, !dbg !65336
  unreachable, !dbg !65336

bb.m:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0, ptr %i.q, align 8, !dbg !65328
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !65328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8, i64 64, i1 false), !dbg !65328
  resume { ptr, i32 } %i.t, !dbg !65337

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtB4_3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RNCINvXs15_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB9_15IndexConstraintNtNtBb_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1P_.exit, %bb.k
  store i64 %.sroa.0.0, ptr %i.q, align 8, !dbg !65328
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !65328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8, i64 64, i1 false), !dbg !65328
  ret void, !dbg !65338
}
end_hunk_0
begin_hunk_1_@_RNCINvXsdD_NtCsaRr8xKSRVhT_9sqlparser3astNtB9_9StatementNtNtB9_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1n_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !165423
  br label %bb.dj, !dbg !161247

bb.wo:                                            ; preds = %bb.cv
  %.sroa.73281.0..sroa_idx3282 = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !165424
  %.sroa.23284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165425
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.23284.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.73281.0..sroa_idx3282, i64 64, i1 false), !dbg !165424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !165429
  br label %bb.dj, !dbg !161248

bb.wp:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !165429
  br label %bb.dj, !dbg !161247

bb.wq:                                            ; preds = %bb.cw
  %.sroa.73287.0..sroa_idx3288 = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !165430
  %.sroa.23290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165431
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.23290.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.73287.0..sroa_idx3288, i64 64, i1 false), !dbg !165430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !165435
  br label %bb.dj, !dbg !161248

bb.wr:                                            ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !165435
  br label %bb.dj, !dbg !161247

bb.ws:                                            ; preds = %bb.cx
  %.sroa.73293.0..sroa_idx3294 = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !165436
  %.sroa.23296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165437
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.23296.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.73293.0..sroa_idx3294, i64 64, i1 false), !dbg !165436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !165441
  br label %bb.dj, !dbg !165442

bb.wt:                                            ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !165441
  %i.ach = getelementptr inbounds nuw i8, ptr %2, i64 64, !dbg !165444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !165445
  call void @_RINvXs0_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtB8_4ExprENtB6_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorEB1P_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ach, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !165445
  %i.aci = load i64, ptr %i.m, align 8, !dbg !165446, !range !65231, !alias.scope !165448, !noalias !165451, !noundef !11 ; 2 uses
  %.not.i1028 = icmp eq i64 %i.aci, 18, !dbg !165446
  br i1 %.not.i1028, label %bb.wv, label %bb.wu, !dbg !165453

bb.wu:                                            ; preds = %bb.wt
  %.sroa.73299.0..sroa_idx3300 = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !165454
  %.sroa.23302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.23302.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.73299.0..sroa_idx3300, i64 64, i1 false), !dbg !165454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !165459
  br label %bb.dj, !dbg !165442

bb.wv:                                            ; preds = %bb.wt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !165459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !165460
  call void @_RINvXs0_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtB8_4ExprENtB6_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorEB1P_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.sz, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !165460
  %i.acj = load i64, ptr %i.l, align 8, !dbg !165461, !range !65231, !alias.scope !165463, !noalias !165466, !noundef !11 ; 2 uses
  %.not.i1030 = icmp eq i64 %i.acj, 18, !dbg !165461
  br i1 %.not.i1030, label %bb.wx, label %bb.ww, !dbg !165468

bb.ww:                                            ; preds = %bb.wv
  %.sroa.73305.0..sroa_idx3306 = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !165469
  %.sroa.23308.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165470
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.23308.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.73305.0..sroa_idx3306, i64 64, i1 false), !dbg !165469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !165474
  br label %bb.dj, !dbg !165442

bb.wx:                                            ; preds = %bb.wv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !165474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !165475
  call void @_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB7_4ExprENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorEB1M_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ta, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !165475
  %i.ack = load i64, ptr %i.k, align 8, !dbg !165476, !range !65231, !alias.scope !165478, !noalias !165481, !noundef !11 ; 2 uses
  %.not.i1032 = icmp eq i64 %i.ack, 18, !dbg !165476
  br i1 %.not.i1032, label %bb.wz, label %bb.wy, !dbg !165483

bb.wy:                                            ; preds = %bb.wx
  %.sroa.73311.0..sroa_idx3312 = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !165484
  %.sroa.23314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165485
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.23314.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.73311.0..sroa_idx3312, i64 64, i1 false), !dbg !165484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !165489
  br label %bb.dj, !dbg !165442

bb.wz:                                            ; preds = %bb.wx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !165489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !165490
  call void @_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB7_15RaisErrorOptionENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorEB1Y_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.tb, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !165490
  %i.acl = load i64, ptr %i.j, align 8, !dbg !165491, !range !65231, !alias.scope !165493, !noalias !165496, !noundef !11 ; 2 uses
  %.not.i1034 = icmp eq i64 %i.acl, 18, !dbg !165491
  br i1 %.not.i1034, label %bb.xb, label %bb.xa, !dbg !165498

bb.xa:                                            ; preds = %bb.wz
  %.sroa.73317.0..sroa_idx3318 = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !165499
  %.sroa.23320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165500
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.23320.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.73317.0..sroa_idx3318, i64 64, i1 false), !dbg !165499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !165504
  br label %bb.dj, !dbg !165442

bb.xb:                                            ; preds = %bb.wz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !165504
  br label %bb.dj, !dbg !161247

bb.xc:                                            ; preds = %bb.cy
  %.sroa.73323.0..sroa_idx3324 = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !165505
  %.sroa.23326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165506
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.23326.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.73323.0..sroa_idx3324, i64 64, i1 false), !dbg !165505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !165510
  br label %bb.dj, !dbg !161248

bb.xd:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !165510
  br label %bb.dj, !dbg !161247

bb.xe:                                            ; preds = %bb.cz
  %.sroa.73329.0..sroa_idx3330 = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !165511
  %.sroa.23332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.23332.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.73329.0..sroa_idx3330, i64 64, i1 false), !dbg !165511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !165516
  br label %bb.dj, !dbg !161248

bb.xf:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !165516
  br label %bb.dj, !dbg !161247

bb.xg:                                            ; preds = %bb.da
  %.sroa.73335.0..sroa_idx3336 = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !165517
  %.sroa.23338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165518
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.23338.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.73335.0..sroa_idx3336, i64 64, i1 false), !dbg !165517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !165522
  br label %bb.dj, !dbg !161248

bb.xh:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !165522
  br label %bb.dj, !dbg !161247

bb.xi:                                            ; preds = %bb.db
  %.sroa.73341.0..sroa_idx3342 = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !165523
  %.sroa.23344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.23344.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.73341.0..sroa_idx3342, i64 64, i1 false), !dbg !165523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !165528
  br label %bb.dj, !dbg !161248

bb.xj:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !165528
  br label %bb.dj, !dbg !161247

bb.xk:                                            ; preds = %bb.dc
  %.sroa.73347.0..sroa_idx3348 = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !165529
  %.sroa.23350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.23350.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.73347.0..sroa_idx3348, i64 64, i1 false), !dbg !165529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !165534
  br label %bb.dj, !dbg !161248

bb.xl:                                            ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !165534
  br label %bb.dj, !dbg !161247

bb.xm:                                            ; preds = %bb.dd
  %.sroa.73353.0..sroa_idx3354 = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !165535
  %.sroa.23356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.23356.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.73353.0..sroa_idx3354, i64 64, i1 false), !dbg !165535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !165540
  br label %bb.dj, !dbg !161248

bb.xn:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !165540
  br label %bb.dj, !dbg !161247

bb.xo:                                            ; preds = %bb.de
  %.sroa.73359.0..sroa_idx3360 = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !165541
  %.sroa.23362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165542
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.23362.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.73359.0..sroa_idx3360, i64 64, i1 false), !dbg !165541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !165546
  br label %bb.dj, !dbg !161248

bb.xp:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !165546
  br label %bb.dj, !dbg !161247

bb.xq:                                            ; preds = %bb.df
  %.sroa.73365.0..sroa_idx3366 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !165547
  %.sroa.23368.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.23368.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.73365.0..sroa_idx3366, i64 64, i1 false), !dbg !165547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !165552
  br label %bb.dj, !dbg !161248

bb.xr:                                            ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !165552
  br label %bb.dj, !dbg !161247

bb.xs:                                            ; preds = %bb.dg
  %.sroa.73371.0..sroa_idx3372 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !165553
  %.sroa.23374.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165554
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.23374.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.73371.0..sroa_idx3372, i64 64, i1 false), !dbg !165553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !165558
  br label %bb.dj, !dbg !161248

bb.xt:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !165558
  br label %bb.dj, !dbg !161247
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal void @_RNSNvYNCINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4M_10SQLContext14execute_selects3_00E0EE0E0INtNtNtBF_3ops8function6FnOnceuE9call_once6vtableB4O_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !165559 {
bb.a:
  %.sroa.07.i.i.i = alloca [112 x i8], align 16   ; 6 uses
  %i.a = alloca [144 x i8], align 16              ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [144 x i8], align 16              ; 6 uses
  %i.d = alloca [144 x i8], align 16              ; 8 uses
  %i.e = alloca [144 x i8], align 16              ; 7 uses
  %i.f = load ptr, ptr %0, align 8, !dbg !165560, !nonnull !11, !align !64922, !noundef !11 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165560
  %i.h = load ptr, ptr %i.g, align 8, !dbg !165560, !nonnull !11, !align !64922, !noundef !11 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165561), !dbg !165560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !165564, !noalias !165568
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 112, !dbg !165570 ; 2 uses
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 16, !dbg !165570, !alias.scope !165561, !noalias !165573 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 144, !dbg !165570
  %.sroa.5.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 16, !dbg !165570, !alias.scope !165561, !noalias !165573 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 152, !dbg !165570
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !165570, !alias.scope !165561, !noalias !165573 ; 3 uses
  store i64 -9223372036854775780, ptr %.sroa.4.0..sroa_idx.i.i, align 16, !dbg !165576, !alias.scope !165561, !noalias !165573
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i, -9223372036854775780, !dbg !165577
  br i1 %.not.i.i, label %bb.e, label %bb.b, !dbg !165579, !prof !32

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 120, !dbg !165570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !165580, !noalias !165582
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.c, ptr noundef nonnull align 16 dereferenceable(160) %i.f, i64 112, i1 false), !dbg !165586, !noalias !165573
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 120, !dbg !165580
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i, i64 24, i1 false), !dbg !165586, !noalias !165573
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i.i.i), !dbg !165587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !165587, !noalias !165588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !165580, !noalias !165582
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 112, !dbg !165580
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 16, !dbg !165580, !noalias !165589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !165590, !noalias !165582
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload.i.i) ]
  store ptr %.sroa.5.sroa.4.0.copyload.i.i, ptr %i.b, align 8, !dbg !165590, !noalias !165582
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  call void @_RINvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7visitor4exprNtNtNtB9_3dsl4expr4ExprNtNtB5_8visitors10TreeWalker12map_childrenNCNCINvYBT_B1g_7rewriteINtNtB7_8iterator10ExprMapperNCINvMs0_B2m_BT_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB3l_10SQLContext14execute_selects3_00E0EE00EB3n_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.d, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull %.sroa.5.sroa.5.0.copyload.i.i), !dbg !165591, !noalias !165582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !165592, !noalias !165582
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 112, !dbg !165593
  %i.j = load i64, ptr %i.i, align 16, !dbg !165593, !range !40, !noalias !165582, !noundef !11 ; 2 uses
  %i.k = icmp eq i64 %i.j, -9223372036854775780, !dbg !165593
  br i1 %i.k, label %bb.c, label %bb.d, !dbg !165595

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.07.i.i.i, ptr noundef nonnull align 16 dereferenceable(72) %i.d, i64 72, i1 false), !dbg !165596, !noalias !165582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !165597, !noalias !165582
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.e, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.07.i.i.i, i64 72, i1 false), !dbg !165598, !noalias !165588
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 112, !dbg !165598
  store i64 -9223372036854775780, ptr %i.l, align 16, !dbg !165598, !noalias !165588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !165600, !noalias !165582
  br label %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext14execute_selects3_00E0EE0B2M_.exit.i.i, !dbg !165601

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.07.i.i.i, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false), !dbg !165602, !noalias !165582
  %.sroa.621.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120, !dbg !165602
  %.sroa.8.0..sroa_idx11.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120, !dbg !165580
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx11.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621.0..sroa_idx.i.i.i, i64 24, i1 false), !dbg !165602, !noalias !165582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !165597, !noalias !165582
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.a, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.07.i.i.i, i64 112, i1 false), !dbg !165580, !noalias !165582
  %.sroa.78.0..sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112, !dbg !165580
  store i64 %i.j, ptr %.sroa.78.0..sroa_idx9.i.i.i, align 16, !dbg !165580, !noalias !165582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !165600, !noalias !165582
  call void @_RNvXs_NtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorINtB4_10ExprMapperNCINvMs0_B4_NtNtNtB8_3dsl4expr4Expr8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB1Y_10SQLContext14execute_selects3_00E0ENtNtNtB6_7visitor8visitors16RewritingVisitor6mutateB20_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.5.sroa.4.0.copyload.i.i, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull %.sroa.5.sroa.5.0.copyload.i.i), !dbg !165603, !noalias !165588
  br label %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext14execute_selects3_00E0EE0B2M_.exit.i.i, !dbg !165603

_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext14execute_selects3_00E0EE0B2M_.exit.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i.i.i), !dbg !165604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !165604, !noalias !165588
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.h)
          to label %_RNvYNCINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1a_NtNtNtNtB1g_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2T_8iterator10ExprMapperNCINvMs0_B3J_B1a_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4K_10SQLContext14execute_selects3_00E0EE0E0INtNtNtBD_3ops8function6FnOnceuE9call_onceB4M_.exit unwind label %bb.f, !dbg !165605, !noalias !165606

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2572) #18, !dbg !165607, !noalias !165588
  unreachable, !dbg !165607

bb.f:                                             ; preds = %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext14execute_selects3_00E0EE0B2M_.exit.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.h, ptr noundef nonnull align 16 dereferenceable(144) %i.e, i64 144, i1 false), !dbg !165605, !noalias !165606
  resume { ptr, i32 } %i.m, !dbg !165608

_RNvYNCINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1a_NtNtNtNtB1g_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2T_8iterator10ExprMapperNCINvMs0_B3J_B1a_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4K_10SQLContext14execute_selects3_00E0EE0E0INtNtNtBD_3ops8function6FnOnceuE9call_onceB4M_.exit: ; preds = %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext14execute_selects3_00E0EE0B2M_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.h, ptr noundef nonnull align 16 dereferenceable(144) %i.e, i64 144, i1 false), !dbg !165605, !noalias !165606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !165609, !noalias !165568
  ret void, !dbg !165560
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal void @_RNSNvYNCINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4M_10SQLContext16process_group_bys1_00E0EE0E0INtNtNtBF_3ops8function6FnOnceuE9call_once6vtableB4O_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !165610 {
bb.a:
  %.sroa.07.i.i.i = alloca [112 x i8], align 16   ; 6 uses
  %i.a = alloca [144 x i8], align 16              ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [144 x i8], align 16              ; 6 uses
  %i.d = alloca [144 x i8], align 16              ; 8 uses
  %i.e = alloca [144 x i8], align 16              ; 7 uses
  %i.f = load ptr, ptr %0, align 8, !dbg !165611, !nonnull !11, !align !64922, !noundef !11 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165611
  %i.h = load ptr, ptr %i.g, align 8, !dbg !165611, !nonnull !11, !align !64922, !noundef !11 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165612), !dbg !165611
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !165615, !noalias !165619
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 112, !dbg !165621 ; 2 uses
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 16, !dbg !165621, !alias.scope !165612, !noalias !165624 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 144, !dbg !165621
  %.sroa.5.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 16, !dbg !165621, !alias.scope !165612, !noalias !165624 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 152, !dbg !165621
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !165621, !alias.scope !165612, !noalias !165624 ; 3 uses
  store i64 -9223372036854775780, ptr %.sroa.4.0..sroa_idx.i.i, align 16, !dbg !165627, !alias.scope !165612, !noalias !165624
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i, -9223372036854775780, !dbg !165628
  br i1 %.not.i.i, label %bb.e, label %bb.b, !dbg !165630, !prof !32

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 120, !dbg !165621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !165631, !noalias !165633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.c, ptr noundef nonnull align 16 dereferenceable(160) %i.f, i64 112, i1 false), !dbg !165637, !noalias !165624
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 120, !dbg !165631
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i, i64 24, i1 false), !dbg !165637, !noalias !165624
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i.i.i), !dbg !165638
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !165638, !noalias !165639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !165631, !noalias !165633
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 112, !dbg !165631
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 16, !dbg !165631, !noalias !165640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !165641, !noalias !165633
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload.i.i) ]
  store ptr %.sroa.5.sroa.4.0.copyload.i.i, ptr %i.b, align 8, !dbg !165641, !noalias !165633
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  call void @_RINvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7visitor4exprNtNtNtB9_3dsl4expr4ExprNtNtB5_8visitors10TreeWalker12map_childrenNCNCINvYBT_B1g_7rewriteINtNtB7_8iterator10ExprMapperNCINvMs0_B2m_BT_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB3l_10SQLContext16process_group_bys1_00E0EE00EB3n_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.d, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull %.sroa.5.sroa.5.0.copyload.i.i), !dbg !165642, !noalias !165633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !165643, !noalias !165633
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 112, !dbg !165644
  %i.j = load i64, ptr %i.i, align 16, !dbg !165644, !range !40, !noalias !165633, !noundef !11 ; 2 uses
  %i.k = icmp eq i64 %i.j, -9223372036854775780, !dbg !165644
  br i1 %i.k, label %bb.c, label %bb.d, !dbg !165646

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.07.i.i.i, ptr noundef nonnull align 16 dereferenceable(72) %i.d, i64 72, i1 false), !dbg !165647, !noalias !165633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !165648, !noalias !165633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.e, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.07.i.i.i, i64 72, i1 false), !dbg !165649, !noalias !165639
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 112, !dbg !165649
  store i64 -9223372036854775780, ptr %i.l, align 16, !dbg !165649, !noalias !165639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !165651, !noalias !165633
  br label %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext16process_group_bys1_00E0EE0B2M_.exit.i.i, !dbg !165652

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.07.i.i.i, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false), !dbg !165653, !noalias !165633
  %.sroa.621.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120, !dbg !165653
  %.sroa.8.0..sroa_idx11.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120, !dbg !165631
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx11.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621.0..sroa_idx.i.i.i, i64 24, i1 false), !dbg !165653, !noalias !165633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !165648, !noalias !165633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.a, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.07.i.i.i, i64 112, i1 false), !dbg !165631, !noalias !165633
  %.sroa.78.0..sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112, !dbg !165631
  store i64 %i.j, ptr %.sroa.78.0..sroa_idx9.i.i.i, align 16, !dbg !165631, !noalias !165633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !165651, !noalias !165633
  call void @_RNvXs_NtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorINtB4_10ExprMapperNCINvMs0_B4_NtNtNtB8_3dsl4expr4Expr8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB1Y_10SQLContext16process_group_bys1_00E0ENtNtNtB6_7visitor8visitors16RewritingVisitor6mutateB20_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.5.sroa.4.0.copyload.i.i, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull %.sroa.5.sroa.5.0.copyload.i.i), !dbg !165654, !noalias !165639
  br label %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext16process_group_bys1_00E0EE0B2M_.exit.i.i, !dbg !165654

_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext16process_group_bys1_00E0EE0B2M_.exit.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i.i.i), !dbg !165655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !165655, !noalias !165639
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.h)
          to label %_RNvYNCINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1a_NtNtNtNtB1g_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2T_8iterator10ExprMapperNCINvMs0_B3J_B1a_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4K_10SQLContext16process_group_bys1_00E0EE0E0INtNtNtBD_3ops8function6FnOnceuE9call_onceB4M_.exit unwind label %bb.f, !dbg !165656, !noalias !165657

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2572) #18, !dbg !165658, !noalias !165639
  unreachable, !dbg !165658

bb.f:                                             ; preds = %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext16process_group_bys1_00E0EE0B2M_.exit.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.h, ptr noundef nonnull align 16 dereferenceable(144) %i.e, i64 144, i1 false), !dbg !165656, !noalias !165657
  resume { ptr, i32 } %i.m, !dbg !165659

_RNvYNCINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1a_NtNtNtNtB1g_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2T_8iterator10ExprMapperNCINvMs0_B3J_B1a_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4K_10SQLContext16process_group_bys1_00E0EE0E0INtNtNtBD_3ops8function6FnOnceuE9call_onceB4M_.exit: ; preds = %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext16process_group_bys1_00E0EE0B2M_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.h, ptr noundef nonnull align 16 dereferenceable(144) %i.e, i64 144, i1 false), !dbg !165656, !noalias !165657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !165660, !noalias !165619
  ret void, !dbg !165611
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal void @_RNSNvYNCINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4K_10SQLContext15expr_or_ordinals0_0E0EE0E0INtNtNtBF_3ops8function6FnOnceuE9call_once6vtableB4M_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !165661 {
bb.a:
  %.sroa.07.i.i.i = alloca [112 x i8], align 16   ; 6 uses
  %i.a = alloca [144 x i8], align 16              ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [144 x i8], align 16              ; 6 uses
  %i.d = alloca [144 x i8], align 16              ; 8 uses
  %i.e = alloca [144 x i8], align 16              ; 7 uses
  %i.f = load ptr, ptr %0, align 8, !dbg !165662, !nonnull !11, !align !64922, !noundef !11 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165662
  %i.h = load ptr, ptr %i.g, align 8, !dbg !165662, !nonnull !11, !align !64922, !noundef !11 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165663), !dbg !165662
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !165666, !noalias !165670
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 112, !dbg !165672 ; 2 uses
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 16, !dbg !165672, !alias.scope !165663, !noalias !165675 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 144, !dbg !165672
  %.sroa.5.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 16, !dbg !165672, !alias.scope !165663, !noalias !165675 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 152, !dbg !165672
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !165672, !alias.scope !165663, !noalias !165675 ; 3 uses
  store i64 -9223372036854775780, ptr %.sroa.4.0..sroa_idx.i.i, align 16, !dbg !165678, !alias.scope !165663, !noalias !165675
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i, -9223372036854775780, !dbg !165679
  br i1 %.not.i.i, label %bb.e, label %bb.b, !dbg !165681, !prof !32

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 120, !dbg !165672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !165682, !noalias !165684
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.c, ptr noundef nonnull align 16 dereferenceable(160) %i.f, i64 112, i1 false), !dbg !165688, !noalias !165675
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 120, !dbg !165682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i, i64 24, i1 false), !dbg !165688, !noalias !165675
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i.i.i), !dbg !165689
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !165689, !noalias !165690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !165682, !noalias !165684
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 112, !dbg !165682
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 16, !dbg !165682, !noalias !165691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !165692, !noalias !165684
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload.i.i) ]
  store ptr %.sroa.5.sroa.4.0.copyload.i.i, ptr %i.b, align 8, !dbg !165692, !noalias !165684
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  call void @_RINvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7visitor4exprNtNtNtB9_3dsl4expr4ExprNtNtB5_8visitors10TreeWalker12map_childrenNCNCINvYBT_B1g_7rewriteINtNtB7_8iterator10ExprMapperNCINvMs0_B2m_BT_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB3j_10SQLContext15expr_or_ordinals0_0E0EE00EB3l_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.d, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull %.sroa.5.sroa.5.0.copyload.i.i), !dbg !165693, !noalias !165684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !165694, !noalias !165684
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 112, !dbg !165695
  %i.j = load i64, ptr %i.i, align 16, !dbg !165695, !range !40, !noalias !165684, !noundef !11 ; 2 uses
  %i.k = icmp eq i64 %i.j, -9223372036854775780, !dbg !165695
  br i1 %i.k, label %bb.c, label %bb.d, !dbg !165697

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.07.i.i.i, ptr noundef nonnull align 16 dereferenceable(72) %i.d, i64 72, i1 false), !dbg !165698, !noalias !165684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !165699, !noalias !165684
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.e, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.07.i.i.i, i64 72, i1 false), !dbg !165700, !noalias !165690
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 112, !dbg !165700
  store i64 -9223372036854775780, ptr %i.l, align 16, !dbg !165700, !noalias !165690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !165702, !noalias !165684
  br label %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2I_10SQLContext15expr_or_ordinals0_0E0EE0B2K_.exit.i.i, !dbg !165703

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.07.i.i.i, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false), !dbg !165704, !noalias !165684
  %.sroa.621.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120, !dbg !165704
  %.sroa.8.0..sroa_idx11.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120, !dbg !165682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx11.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621.0..sroa_idx.i.i.i, i64 24, i1 false), !dbg !165704, !noalias !165684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !165699, !noalias !165684
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.a, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.07.i.i.i, i64 112, i1 false), !dbg !165682, !noalias !165684
  %.sroa.78.0..sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112, !dbg !165682
  store i64 %i.j, ptr %.sroa.78.0..sroa_idx9.i.i.i, align 16, !dbg !165682, !noalias !165684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !165702, !noalias !165684
  call void @_RNvXs_NtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorINtB4_10ExprMapperNCINvMs0_B4_NtNtNtB8_3dsl4expr4Expr8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB1W_10SQLContext15expr_or_ordinals0_0E0ENtNtNtB6_7visitor8visitors16RewritingVisitor6mutateB1Y_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.5.sroa.4.0.copyload.i.i, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull %.sroa.5.sroa.5.0.copyload.i.i), !dbg !165705, !noalias !165690
  br label %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2I_10SQLContext15expr_or_ordinals0_0E0EE0B2K_.exit.i.i, !dbg !165705

_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2I_10SQLContext15expr_or_ordinals0_0E0EE0B2K_.exit.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i.i.i), !dbg !165706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !165706, !noalias !165690
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.h)
          to label %_RNvYNCINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1a_NtNtNtNtB1g_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2T_8iterator10ExprMapperNCINvMs0_B3J_B1a_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4I_10SQLContext15expr_or_ordinals0_0E0EE0E0INtNtNtBD_3ops8function6FnOnceuE9call_onceB4K_.exit unwind label %bb.f, !dbg !165707, !noalias !165708

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2572) #18, !dbg !165709, !noalias !165690
  unreachable, !dbg !165709

bb.f:                                             ; preds = %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2I_10SQLContext15expr_or_ordinals0_0E0EE0B2K_.exit.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.h, ptr noundef nonnull align 16 dereferenceable(144) %i.e, i64 144, i1 false), !dbg !165707, !noalias !165708
  resume { ptr, i32 } %i.m, !dbg !165710

_RNvYNCINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1a_NtNtNtNtB1g_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2T_8iterator10ExprMapperNCINvMs0_B3J_B1a_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4I_10SQLContext15expr_or_ordinals0_0E0EE0E0INtNtNtBD_3ops8function6FnOnceuE9call_onceB4K_.exit: ; preds = %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2I_10SQLContext15expr_or_ordinals0_0E0EE0B2K_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.h, ptr noundef nonnull align 16 dereferenceable(144) %i.e, i64 144, i1 false), !dbg !165707, !noalias !165708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !165711, !noalias !165670
  ret void, !dbg !165662
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal void @_RNSNvYNCINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCINvMs0_B3L_B1c_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE0E0INtNtNtBF_3ops8function6FnOnceuE9call_once6vtableB4I_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !165712 {
bb.a:
  %.sroa.07.i.i.i = alloca [112 x i8], align 16   ; 6 uses
  %i.a = alloca [144 x i8], align 16              ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [144 x i8], align 16              ; 6 uses
  %i.d = alloca [144 x i8], align 16              ; 8 uses
  %i.e = alloca [144 x i8], align 16              ; 7 uses
  %i.f = load ptr, ptr %0, align 8, !dbg !165713, !nonnull !11, !align !64922, !noundef !11 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165713
  %i.h = load ptr, ptr %i.g, align 8, !dbg !165713, !nonnull !11, !align !64922, !noundef !11 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165714), !dbg !165713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !165717, !noalias !165721
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 112, !dbg !165723 ; 2 uses
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 16, !dbg !165723, !alias.scope !165714, !noalias !165726 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 144, !dbg !165723
  %.sroa.5.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 16, !dbg !165723, !alias.scope !165714, !noalias !165726 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 152, !dbg !165723
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !165723, !alias.scope !165714, !noalias !165726 ; 3 uses
  store i64 -9223372036854775780, ptr %.sroa.4.0..sroa_idx.i.i, align 16, !dbg !165729, !alias.scope !165714, !noalias !165726
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i, -9223372036854775780, !dbg !165730
  br i1 %.not.i.i, label %bb.e, label %bb.b, !dbg !165732, !prof !32

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 120, !dbg !165723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !165733, !noalias !165735
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.c, ptr noundef nonnull align 16 dereferenceable(160) %i.f, i64 112, i1 false), !dbg !165739, !noalias !165726
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 120, !dbg !165733
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i, i64 24, i1 false), !dbg !165739, !noalias !165726
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i.i.i), !dbg !165740
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !165740, !noalias !165741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !165733, !noalias !165735
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 112, !dbg !165733
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 16, !dbg !165733, !noalias !165742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !165743, !noalias !165735
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload.i.i) ]
  store ptr %.sroa.5.sroa.4.0.copyload.i.i, ptr %i.b, align 8, !dbg !165743, !noalias !165735
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  call void @_RINvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7visitor4exprNtNtNtB9_3dsl4expr4ExprNtNtB5_8visitors10TreeWalker12map_childrenNCNCINvYBT_B1g_7rewriteINtNtB7_8iterator10ExprMapperNCINvMs0_B2m_BT_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE00EB3h_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.d, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull %.sroa.5.sroa.5.0.copyload.i.i), !dbg !165744, !noalias !165735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !165745, !noalias !165735
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 112, !dbg !165746
  %i.j = load i64, ptr %i.i, align 16, !dbg !165746, !range !40, !noalias !165735, !noundef !11 ; 2 uses
  %i.k = icmp eq i64 %i.j, -9223372036854775780, !dbg !165746
  br i1 %i.k, label %bb.c, label %bb.d, !dbg !165748

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.07.i.i.i, ptr noundef nonnull align 16 dereferenceable(72) %i.d, i64 72, i1 false), !dbg !165749, !noalias !165735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !165750, !noalias !165735
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.e, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.07.i.i.i, i64 72, i1 false), !dbg !165751, !noalias !165741
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 112, !dbg !165751
  store i64 -9223372036854775780, ptr %i.l, align 16, !dbg !165751, !noalias !165741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !165753, !noalias !165735
  br label %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE0B2G_.exit.i.i, !dbg !165754

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.07.i.i.i, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false), !dbg !165755, !noalias !165735
  %.sroa.621.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120, !dbg !165755
  %.sroa.8.0..sroa_idx11.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120, !dbg !165733
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx11.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621.0..sroa_idx.i.i.i, i64 24, i1 false), !dbg !165755, !noalias !165735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !165750, !noalias !165735
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.a, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.07.i.i.i, i64 112, i1 false), !dbg !165733, !noalias !165735
  %.sroa.78.0..sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112, !dbg !165733
  store i64 %i.j, ptr %.sroa.78.0..sroa_idx9.i.i.i, align 16, !dbg !165733, !noalias !165735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !165753, !noalias !165735
  call void @_RNvXs_NtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorINtB4_10ExprMapperNCINvMs0_B4_NtNtNtB8_3dsl4expr4Expr8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0ENtNtNtB6_7visitor8visitors16RewritingVisitor6mutateB1U_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.5.sroa.4.0.copyload.i.i, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull %.sroa.5.sroa.5.0.copyload.i.i), !dbg !165756, !noalias !165741
  br label %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE0B2G_.exit.i.i, !dbg !165756

_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE0B2G_.exit.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i.i.i), !dbg !165757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !165757, !noalias !165741
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.h)
          to label %_RNvYNCINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1a_NtNtNtNtB1g_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2T_8iterator10ExprMapperNCINvMs0_B3J_B1a_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE0E0INtNtNtBD_3ops8function6FnOnceuE9call_onceB4G_.exit unwind label %bb.f, !dbg !165758, !noalias !165759

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2572) #18, !dbg !165760, !noalias !165741
  unreachable, !dbg !165760

bb.f:                                             ; preds = %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE0B2G_.exit.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.h, ptr noundef nonnull align 16 dereferenceable(144) %i.e, i64 144, i1 false), !dbg !165758, !noalias !165759
  resume { ptr, i32 } %i.m, !dbg !165761

_RNvYNCINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1a_NtNtNtNtB1g_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2T_8iterator10ExprMapperNCINvMs0_B3J_B1a_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE0E0INtNtNtBD_3ops8function6FnOnceuE9call_onceB4G_.exit: ; preds = %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCINvMs0_B1L_B5_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE0B2G_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.h, ptr noundef nonnull align 16 dereferenceable(144) %i.e, i64 144, i1 false), !dbg !165758, !noalias !165759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !165762, !noalias !165721
  ret void, !dbg !165713
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal void @_RNSNvYNCINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1c_NtNtNtNtB1i_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2V_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4k_10SQLContext18process_subqueries0EE0E0INtNtNtBF_3ops8function6FnOnceuE9call_once6vtableB4m_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !165763 {
bb.a:
  %.sroa.07.i.i.i = alloca [112 x i8], align 16   ; 6 uses
  %i.a = alloca [144 x i8], align 16              ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [144 x i8], align 16              ; 6 uses
  %i.d = alloca [144 x i8], align 16              ; 8 uses
  %i.e = alloca [144 x i8], align 16              ; 7 uses
  %i.f = load ptr, ptr %0, align 8, !dbg !165764, !nonnull !11, !align !64922, !noundef !11 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165764
  %i.h = load ptr, ptr %i.g, align 8, !dbg !165764, !nonnull !11, !align !64922, !noundef !11 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165765), !dbg !165764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !165768, !noalias !165772
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 112, !dbg !165774 ; 2 uses
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 16, !dbg !165774, !alias.scope !165765, !noalias !165777 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 144, !dbg !165774
  %.sroa.5.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 16, !dbg !165774, !alias.scope !165765, !noalias !165777 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 152, !dbg !165774
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !165774, !alias.scope !165765, !noalias !165777 ; 3 uses
  store i64 -9223372036854775780, ptr %.sroa.4.0..sroa_idx.i.i, align 16, !dbg !165780, !alias.scope !165765, !noalias !165777
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i, -9223372036854775780, !dbg !165781
  br i1 %.not.i.i, label %bb.e, label %bb.b, !dbg !165783, !prof !32

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 120, !dbg !165774
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !165784, !noalias !165786
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.c, ptr noundef nonnull align 16 dereferenceable(160) %i.f, i64 112, i1 false), !dbg !165790, !noalias !165777
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 120, !dbg !165784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i, i64 24, i1 false), !dbg !165790, !noalias !165777
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i.i.i), !dbg !165791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !165791, !noalias !165792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !165784, !noalias !165786
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 112, !dbg !165784
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 16, !dbg !165784, !noalias !165793
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !165794, !noalias !165786
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload.i.i) ]
  store ptr %.sroa.5.sroa.4.0.copyload.i.i, ptr %i.b, align 8, !dbg !165794, !noalias !165786
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  call void @_RINvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7visitor4exprNtNtNtB9_3dsl4expr4ExprNtNtB5_8visitors10TreeWalker12map_childrenNCNCINvYBT_B1g_7rewriteINtNtB7_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2U_10SQLContext18process_subqueries0EE00EB2W_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.d, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull %.sroa.5.sroa.5.0.copyload.i.i), !dbg !165795, !noalias !165786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !165796, !noalias !165786
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 112, !dbg !165797
  %i.j = load i64, ptr %i.i, align 16, !dbg !165797, !range !40, !noalias !165786, !noundef !11 ; 2 uses
  %i.k = icmp eq i64 %i.j, -9223372036854775780, !dbg !165797
  br i1 %i.k, label %bb.c, label %bb.d, !dbg !165799

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.07.i.i.i, ptr noundef nonnull align 16 dereferenceable(72) %i.d, i64 72, i1 false), !dbg !165800, !noalias !165786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !165801, !noalias !165786
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.e, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.07.i.i.i, i64 72, i1 false), !dbg !165802, !noalias !165792
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 112, !dbg !165802
  store i64 -9223372036854775780, ptr %i.l, align 16, !dbg !165802, !noalias !165792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !165804, !noalias !165786
  br label %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2j_10SQLContext18process_subqueries0EE0B2l_.exit.i.i, !dbg !165805

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.07.i.i.i, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false), !dbg !165806, !noalias !165786
  %.sroa.621.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120, !dbg !165806
  %.sroa.8.0..sroa_idx11.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120, !dbg !165784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx11.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621.0..sroa_idx.i.i.i, i64 24, i1 false), !dbg !165806, !noalias !165786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !165801, !noalias !165786
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.a, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.07.i.i.i, i64 112, i1 false), !dbg !165784, !noalias !165786
  %.sroa.78.0..sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112, !dbg !165784
  store i64 %i.j, ptr %.sroa.78.0..sroa_idx9.i.i.i, align 16, !dbg !165784, !noalias !165786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !165804, !noalias !165786
  call void @_RNvXs_NtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorINtB4_10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB1e_10SQLContext18process_subqueries0ENtNtNtB6_7visitor8visitors16RewritingVisitor6mutateB1g_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.4.0.copyload.i.i, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull %.sroa.5.sroa.5.0.copyload.i.i), !dbg !165807, !noalias !165792
  br label %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2j_10SQLContext18process_subqueries0EE0B2l_.exit.i.i, !dbg !165807

_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2j_10SQLContext18process_subqueries0EE0B2l_.exit.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i.i.i), !dbg !165808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !165808, !noalias !165792
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.h)
          to label %_RNvYNCINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1a_NtNtNtNtB1g_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2T_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4i_10SQLContext18process_subqueries0EE0E0INtNtNtBD_3ops8function6FnOnceuE9call_onceB4k_.exit unwind label %bb.f, !dbg !165809, !noalias !165810

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2572) #18, !dbg !165811, !noalias !165792
  unreachable, !dbg !165811

bb.f:                                             ; preds = %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2j_10SQLContext18process_subqueries0EE0B2l_.exit.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.h, ptr noundef nonnull align 16 dereferenceable(144) %i.e, i64 144, i1 false), !dbg !165809, !noalias !165810
  resume { ptr, i32 } %i.m, !dbg !165812

_RNvYNCINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB1a_NtNtNtNtB1g_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2T_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4i_10SQLContext18process_subqueries0EE0E0INtNtNtBD_3ops8function6FnOnceuE9call_onceB4k_.exit: ; preds = %_RNCINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtNtNtBb_5plans7visitor8visitors10TreeWalker7rewriteINtNtBW_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2j_10SQLContext18process_subqueries0EE0B2l_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.h, ptr noundef nonnull align 16 dereferenceable(144) %i.e, i64 144, i1 false), !dbg !165809, !noalias !165810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !165813, !noalias !165772
  ret void, !dbg !165764
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal void @_RNSNvYNCINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXs14_NtNtCsaRr8xKSRVhT_9sqlparser3ast3dclNtB2n_14SecondaryRolesNtNtB2p_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0E0INtNtBF_8function6FnOnceuE9call_once6vtableB3P_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !165814 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.4.i.i = alloca [64 x i8], align 8        ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !165815, !nonnull !11, !align !61164, !noundef !11 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165815
  %i.d = load ptr, ptr %i.c, align 8, !dbg !165815, !nonnull !11, !align !61164, !noundef !11 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165816), !dbg !165815
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165819), !dbg !165815
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i), !dbg !165821
  %i.e = load ptr, ptr %i.b, align 8, !dbg !165825, !alias.scope !165816, !noalias !165828, !align !61164, !noundef !11 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !165825
  %i.g = load ptr, ptr %i.f, align 8, !dbg !165825, !alias.scope !165816, !noalias !165828 ; 2 uses
  store ptr null, ptr %i.b, align 8, !dbg !165831, !alias.scope !165816, !noalias !165828
  %.not.i.i = icmp eq ptr %i.e, null, !dbg !165832
  br i1 %.not.i.i, label %bb.f, label %bb.b, !dbg !165834, !prof !32

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165835), !dbg !165838
  %i.h = load i64, ptr %i.e, align 8, !dbg !165839, !range !61111, !alias.scope !165835, !noalias !165841, !noundef !11
  %i.i = icmp sgt i64 %i.h, -1, !dbg !165839
  br i1 %i.i, label %bb.c, label %_RNCINvXs14_NtNtCsaRr8xKSRVhT_9sqlparser3ast3dclNtB9_14SecondaryRolesNtNtBb_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1z_.exit.i.i, !dbg !165839

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !165844, !noalias !165845
  call void @_RINvXs_NtNtCsaRr8xKSRVhT_9sqlparser3ast7visitorINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB7_5IdentENtB5_5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorEB1N_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g), !dbg !165844, !noalias !165846
  %i.j = load i64, ptr %i.a, align 8, !dbg !165847, !range !65231, !alias.scope !165849, !noalias !165852, !noundef !11 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.j, 18, !dbg !165847
  br i1 %.not.i.i.i.i, label %_RNCINvXs14_NtNtCsaRr8xKSRVhT_9sqlparser3ast3dclNtB9_14SecondaryRolesNtNtBb_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1z_.exit.sink.split.i.i, label %bb.d, !dbg !165854

bb.d:                                             ; preds = %bb.c
  %.sroa.7.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !165855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx2.i.i.i, i64 64, i1 false), !dbg !165855, !noalias !165856
  br label %_RNCINvXs14_NtNtCsaRr8xKSRVhT_9sqlparser3ast3dclNtB9_14SecondaryRolesNtNtBb_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1z_.exit.sink.split.i.i, !dbg !165857

_RNCINvXs14_NtNtCsaRr8xKSRVhT_9sqlparser3ast3dclNtB9_14SecondaryRolesNtNtBb_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1z_.exit.sink.split.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !165858, !noalias !165845
  br label %_RNCINvXs14_NtNtCsaRr8xKSRVhT_9sqlparser3ast3dclNtB9_14SecondaryRolesNtNtBb_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1z_.exit.i.i, !dbg !165859

_RNCINvXs14_NtNtCsaRr8xKSRVhT_9sqlparser3ast3dclNtB9_14SecondaryRolesNtNtBb_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1z_.exit.i.i: ; preds = %_RNCINvXs14_NtNtCsaRr8xKSRVhT_9sqlparser3ast3dclNtB9_14SecondaryRolesNtNtBb_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1z_.exit.sink.split.i.i, %bb.b
  %storemerge.i.i.i = phi i64 [ 18, %bb.b ], [ %i.j, %_RNCINvXs14_NtNtCsaRr8xKSRVhT_9sqlparser3ast3dclNtB9_14SecondaryRolesNtNtBb_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1z_.exit.sink.split.i.i ], !dbg !165860 ; 2 uses
  %i.k = load i64, ptr %i.d, align 8, !dbg !165861, !range !240, !alias.scope !165863, !noalias !165866, !noundef !11
  %i.l = and i64 %i.k, 30, !dbg !165861
  %switch.i.i.i = icmp eq i64 %i.l, 18, !dbg !165861
  br i1 %switch.i.i.i, label %_RNvYNCINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXs14_NtNtCsaRr8xKSRVhT_9sqlparser3ast3dclNtB2l_14SecondaryRolesNtNtB2n_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0E0INtNtBD_8function6FnOnceuE9call_onceB3N_.exit, label %bb.e, !dbg !165861

bb.e:                                             ; preds = %_RNCINvXs14_NtNtCsaRr8xKSRVhT_9sqlparser3ast3dclNtB9_14SecondaryRolesNtNtBb_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1z_.exit.i.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %_RNvYNCINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXs14_NtNtCsaRr8xKSRVhT_9sqlparser3ast3dclNtB2l_14SecondaryRolesNtNtB2n_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0E0INtNtBD_8function6FnOnceuE9call_onceB3N_.exit unwind label %bb.g, !dbg !165867, !noalias !165866

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2572) #18, !dbg !165869, !noalias !165856
  unreachable, !dbg !165869

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge.i.i.i, ptr %i.d, align 8, !dbg !165859, !alias.scope !165819, !noalias !165866
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !165859
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.i.i, i64 64, i1 false), !dbg !165859, !noalias !165866
  resume { ptr, i32 } %i.m, !dbg !165870

_RNvYNCINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXs14_NtNtCsaRr8xKSRVhT_9sqlparser3ast3dclNtB2l_14SecondaryRolesNtNtB2n_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0E0INtNtBD_8function6FnOnceuE9call_onceB3N_.exit: ; preds = %_RNCINvXs14_NtNtCsaRr8xKSRVhT_9sqlparser3ast3dclNtB9_14SecondaryRolesNtNtBb_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1z_.exit.i.i, %bb.e
  store i64 %storemerge.i.i.i, ptr %i.d, align 8, !dbg !165859, !alias.scope !165819, !noalias !165866
  %.sroa.5.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !165859
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx6.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.i.i, i64 64, i1 false), !dbg !165859, !noalias !165866
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i), !dbg !165871
  ret void, !dbg !165815
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal void @_RNSNvYNCINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXs15_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB2n_15IndexConstraintNtNtB2p_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0E0INtNtBF_8function6FnOnceuE9call_once6vtableB45_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !165872 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load <2 x ptr>, ptr %0, align 8, !dbg !165873
  store <2 x ptr> %i.b, ptr %i.a, align 16, !noalias !165874
  call void @_RNCINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXs15_NtNtCsaRr8xKSRVhT_9sqlparser3ast17table_constraintsNtB2i_15IndexConstraintNtNtB2k_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0E0B40_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !165878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !165878
  ret void, !dbg !165873
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal void @_RNSNvYNCINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXs16_NtCsaRr8xKSRVhT_9sqlparser9tokenizerNtB2n_4SpanNtNtNtB2p_3ast7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0E0INtNtBF_8function6FnOnceuE9call_once6vtableB3K_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !165881 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %.sroa.6.i.i = alloca [64 x i8], align 8        ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !165882, !nonnull !11, !align !61164, !noundef !11 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165882
  %i.e = load ptr, ptr %i.d, align 8, !dbg !165882, !nonnull !11, !align !61164, !noundef !11 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165883), !dbg !165882
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165886), !dbg !165882
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i), !dbg !165888
  %i.f = load ptr, ptr %i.c, align 8, !dbg !165892, !alias.scope !165883, !noalias !165895, !align !61164, !noundef !11 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !165892
  %i.h = load ptr, ptr %i.g, align 8, !dbg !165892, !alias.scope !165883, !noalias !165895 ; 3 uses
  store ptr null, ptr %i.c, align 8, !dbg !165898, !alias.scope !165883, !noalias !165895
  %.not.i.i = icmp eq ptr %i.f, null, !dbg !165899
  br i1 %.not.i.i, label %bb.h, label %bb.b, !dbg !165901, !prof !32

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !165902, !noalias !165904
  call void @_RINvXsV_NtCsaRr8xKSRVhT_9sqlparser9tokenizerNtB6_8LocationNtNtNtB8_3ast7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorEB1v_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h), !dbg !165902, !noalias !165909
  %i.i = load i64, ptr %i.b, align 8, !dbg !165910, !range !65231, !alias.scope !165912, !noalias !165915, !noundef !11 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.i, 18, !dbg !165910
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c, !dbg !165917

bb.c:                                             ; preds = %bb.b
  %.sroa.7.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !165918
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx5.i.i.i, i64 64, i1 false), !dbg !165918, !noalias !165919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !165920, !noalias !165904
  br label %_RNCINvXs16_NtCsaRr8xKSRVhT_9sqlparser9tokenizerNtB9_4SpanNtNtNtBb_3ast7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1u_.exit.i.i, !dbg !165921

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !165920, !noalias !165904
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !165922, !noalias !165904
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !165922
  call void @_RINvXsV_NtCsaRr8xKSRVhT_9sqlparser9tokenizerNtB6_8LocationNtNtNtB8_3ast7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorEB1v_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h), !dbg !165922, !noalias !165909
  %i.k = load i64, ptr %i.a, align 8, !dbg !165923, !range !65231, !alias.scope !165925, !noalias !165928, !noundef !11 ; 2 uses
  %.not.i2.i.i.i = icmp eq i64 %i.k, 18, !dbg !165923
  br i1 %.not.i2.i.i.i, label %bb.f, label %bb.e, !dbg !165930

bb.e:                                             ; preds = %bb.d
  %.sroa.79.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !165931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.79.0..sroa_idx10.i.i.i, i64 64, i1 false), !dbg !165931, !noalias !165919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !165932, !noalias !165904
  br label %_RNCINvXs16_NtCsaRr8xKSRVhT_9sqlparser9tokenizerNtB9_4SpanNtNtNtBb_3ast7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1u_.exit.i.i, !dbg !165921

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !165932, !noalias !165904
  br label %_RNCINvXs16_NtCsaRr8xKSRVhT_9sqlparser9tokenizerNtB9_4SpanNtNtNtBb_3ast7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1u_.exit.i.i, !dbg !165933

_RNCINvXs16_NtCsaRr8xKSRVhT_9sqlparser9tokenizerNtB9_4SpanNtNtNtBb_3ast7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1u_.exit.i.i: ; preds = %bb.f, %bb.e, %bb.c
  %.sroa.0.0.i.i = phi i64 [ 18, %bb.f ], [ %i.k, %bb.e ], [ %i.i, %bb.c ], !dbg !165934 ; 2 uses
  %i.l = load i64, ptr %i.e, align 8, !dbg !165935, !range !240, !alias.scope !165937, !noalias !165940, !noundef !11
  %i.m = and i64 %i.l, 30, !dbg !165935
  %switch.i.i.i = icmp eq i64 %i.m, 18, !dbg !165935
  br i1 %switch.i.i.i, label %_RNvYNCINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXs16_NtCsaRr8xKSRVhT_9sqlparser9tokenizerNtB2l_4SpanNtNtNtB2n_3ast7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0E0INtNtBD_8function6FnOnceuE9call_onceB3I_.exit, label %bb.g, !dbg !165935

bb.g:                                             ; preds = %_RNCINvXs16_NtCsaRr8xKSRVhT_9sqlparser9tokenizerNtB9_4SpanNtNtNtBb_3ast7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1u_.exit.i.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %_RNvYNCINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXs16_NtCsaRr8xKSRVhT_9sqlparser9tokenizerNtB2l_4SpanNtNtNtB2n_3ast7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0E0INtNtBD_8function6FnOnceuE9call_onceB3I_.exit unwind label %bb.i, !dbg !165941, !noalias !165940

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2572) #18, !dbg !165943, !noalias !165919
  unreachable, !dbg !165943

bb.i:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.i.i, ptr %i.e, align 8, !dbg !165944, !alias.scope !165886, !noalias !165940
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !165944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i.i, i64 64, i1 false), !dbg !165944, !noalias !165940
  resume { ptr, i32 } %i.n, !dbg !165945

_RNvYNCINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXs16_NtCsaRr8xKSRVhT_9sqlparser9tokenizerNtB2l_4SpanNtNtNtB2n_3ast7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0E0INtNtBD_8function6FnOnceuE9call_onceB3I_.exit: ; preds = %_RNCINvXs16_NtCsaRr8xKSRVhT_9sqlparser9tokenizerNtB9_4SpanNtNtNtBb_3ast7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0B1u_.exit.i.i, %bb.g
  store i64 %.sroa.0.0.i.i, ptr %i.e, align 8, !dbg !165944, !alias.scope !165886, !noalias !165940
  %.sroa.5.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !165944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx6.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i.i, i64 64, i1 false), !dbg !165944, !noalias !165940
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i), !dbg !165946
  ret void, !dbg !165882
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal void @_RNSNvYNCINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXs19_NtNtCsaRr8xKSRVhT_9sqlparser3ast7triggerNtB2n_19TriggerExecBodyTypeNtNtB2p_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0E0INtNtBF_8function6FnOnceuE9call_once6vtableB3Y_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !165947 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !165948, !nonnull !11, !align !61164, !noundef !11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165948
  %i.c = load ptr, ptr %i.b, align 8, !dbg !165948, !nonnull !11, !align !61164, !noundef !11 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165949), !dbg !165948
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165952), !dbg !165948
  %i.d = load ptr, ptr %i.a, align 8, !dbg !165954, !alias.scope !165949, !noalias !165960, !noundef !11
  store ptr null, ptr %i.a, align 8, !dbg !165963, !alias.scope !165949, !noalias !165960
  %.not.i.i = icmp eq ptr %i.d, null, !dbg !165964
  br i1 %.not.i.i, label %bb.d, label %bb.b, !dbg !165966, !prof !32

end_hunk_1
