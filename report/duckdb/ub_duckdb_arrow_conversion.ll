inline.NumInlined: 2075
inline.NumDeleted: 1077
begin_hunk_0_@_ZN6duckdb9ArrowType14CreateListTypeERNS_13ClientContextER11ArrowSchemaNS_21ArrowVariableSizeTypeEb:bb.a
  %8 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %9 = alloca %"class.duckdb::unique_ptr.95", align 8 ; 6 uses
  %10 = alloca %"class.duckdb::shared_ptr", align 8 ; 4 uses
  %11 = alloca %"class.duckdb::unique_ptr.95", align 8 ; 5 uses
  %12 = alloca %"class.duckdb::shared_ptr", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZN6duckdb9ArrowType19GetArrowLogicalTypeERNS_13ClientContextER11ArrowSchema(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %6, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(72) %2)
end_hunk_0
begin_hunk_1_@_ZN6duckdb9ArrowType14CreateListTypeERNS_13ClientContextER11ArrowSchemaNS_21ArrowVariableSizeTypeEb:bb.a

_ZNSt10unique_ptrIN6duckdb13ArrowListInfoESt14default_deleteIS1_EED2Ev.exit29: ; preds = %_ZN6duckdb10shared_ptrINS_9ArrowTypeELb1EEC2IS1_St14default_deleteIS1_ELb1ETnNSt9enable_ifIXaasr17compatible_with_tIT_S1_EE5valuesr3std14is_convertibleINS_10unique_ptrIS7_T0_Lb1EE7pointerEPS1_EE5valueEiE4typeELi0EEEONS8_IS7_S9_XT1_EEE.exit20
  %i.y = load ptr, ptr %11, align 8, !tbaa !184
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36  ; 8 uses
  %.not.i.i.i30 = icmp eq ptr %i.aa, null
end_hunk_1
