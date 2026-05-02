inline.NumInlined: 7467
inline.NumDeleted: 3072
begin_hunk_0_@"_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_L23IsFunctionallyDependentERKS5_RKNS0_6vectorIS5_Lb1ESaIS5_EEEE3$_0E9_M_invokeERKSt9_Any_dataS6_":bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1637, !nonnull !40 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !384, !range !82, !noundef !40
  %2 = select i1 %i.d, i8 %i.g, i8 0
  store i8 %2, ptr %i.f, align 1, !tbaa !384
  ret void
}

end_hunk_0
