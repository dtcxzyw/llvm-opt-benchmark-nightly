inline.NumInlined: 7467
inline.NumDeleted: 3072
begin_hunk_0_@"_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_L23IsFunctionallyDependentERKS5_RKNS0_6vectorIS5_Lb1ESaIS5_EEEE3$_0E9_M_invokeERKSt9_Any_dataS6_":bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1637, !nonnull !40 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !384, !range !82, !noundef !40
  %2 = icmp ne i8 %i.g, 0
  %3 = and i1 %i.d, %2
  %4 = zext i1 %3 to i8
  store i8 %4, ptr %i.f, align 1, !tbaa !384
  ret void
}

end_hunk_0
