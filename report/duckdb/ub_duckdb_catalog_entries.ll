inline.NumInlined: 10301
inline.NumDeleted: 5043
begin_hunk_0_@_ZN6duckdb14PackExpressionENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  store ptr %i.g, ptr %2, align 8, !tbaa !15
  br label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.f, %bb.g
  %i.z = phi ptr [ %i.c, %bb.f ], [ %i.g, %bb.g ], [ %i.f, %bb.b ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.aa, align 8, !tbaa !18
end_hunk_0
begin_hunk_1_@_ZNSt13unordered_mapImN6duckdb11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmS1_EEED2Ev:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb17TableCatalogEntry15GetRowIdColumnsEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::vector.145") align 8 captures(none) initializes((0, 24)) %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i:
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #34 ; 3 uses
  %i.b = load i64, ptr @_ZN6duckdb24COLUMN_IDENTIFIER_ROW_IDE, align 8, !tbaa !19
  store i64 %i.b, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !159
  store ptr %i.c, ptr %2, align 8, !tbaa !158
  store ptr %i.c, ptr %3, align 8, !tbaa !160
  ret void
}

end_hunk_1
