begin_hunk_0
  %i.g = icmp eq i64 %i.f, 0
  %i.h = lshr i64 %i.d, 1
  %spec.select = select i1 %i.g, i64 0, i64 %i.h
  %.sroa.0.0 = sub i64 %i.d, %spec.select
  invoke void @_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE7reserveCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %.sroa.0.0)
          to label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB8_6cloned6ClonedINtNtB8_6filter6FilterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB3w_18LogicalPlanBuilder15sort_with_limitNtNtB3A_4expr4SortINtNtCs6Po7BT7Nknu_5alloc3vec3VecB58_EE00EENCINvXs8_NtCsbpG6u9KFjWn_8indexmap3setINtB6g_8IndexSetB2w_EINtNtNtBa_6traits7collect6ExtendB2w_E6extendBR_E0ENtNtB79_8iterator8Iterator8for_eachNCINvXsb_NtB6i_3mapINtB8A_8IndexMapB2w_uEIB75_TB2w_uEE6extendB3_E0ECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.b

end_hunk_0
