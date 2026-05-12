inline.NumInlined: 1088
inline.NumDeleted: 543
begin_hunk_0_@_ZN6duckdb12VariantValue9ToVARIANTERNS_6vectorIS0_Lb1ESaIS0_EEERNS_6VectorE:bb.a

bb.i:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body140 unwind label %bb.j

end_hunk_0
begin_hunk_1_@_ZN6duckdb12VariantValue9ToVARIANTERNS_6vectorIS0_Lb1ESaIS0_EEERNS_6VectorE:bb.a
.body140.thread:                                  ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body140:                                         ; preds = %bb.i
  %.pr = load ptr, ptr %3, align 8, !tbaa !152    ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.l
end_hunk_1
begin_hunk_2_@_ZN6duckdb12VariantValue9ToVARIANTERNS_6vectorIS0_Lb1ESaIS0_EEERNS_6VectorE:bb.a
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #21
  br label %.body

.body:                                            ; preds = %.body140.thread, %bb.l, %.body140, %bb.r
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.r ], [ %i.aa, %.body140 ], [ %i.aa, %bb.l ], [ %i.ad, %.body140.thread ]
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.as) #21
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 48
end_hunk_2
begin_hunk_3_@_ZN6duckdb12VariantValue9ToVARIANTERNS_6vectorIS0_Lb1ESaIS0_EEERNS_6VectorE:bb.a

bb.ag:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i149
  %i.fa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body153 unwind label %bb.ah

end_hunk_3
begin_hunk_4_@_ZN6duckdb12VariantValue9ToVARIANTERNS_6vectorIS0_Lb1ESaIS0_EEERNS_6VectorE:bb.a
.body153.thread:                                  ; preds = %bb.ae
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.body121

.body153:                                         ; preds = %bb.ag
  %.pr160 = load ptr, ptr %8, align 8, !tbaa !152 ; 2 uses
  %.not.i.i.i.i119 = icmp eq ptr %.pr160, null
  br i1 %.not.i.i.i.i119, label %.body121, label %bb.aj
end_hunk_4
begin_hunk_5_@_ZN6duckdb12VariantValue9ToVARIANTERNS_6vectorIS0_Lb1ESaIS0_EEERNS_6VectorE:bb.a
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #21
  br label %.body121

.body121:                                         ; preds = %.body153.thread, %bb.aj, %.body153, %bb.au
  %.pn74 = phi { ptr, i32 } [ %i.fz, %bb.au ], [ %i.fa, %.body153 ], [ %i.fa, %bb.aj ], [ %i.fd, %.body153.thread ]
  %i.ga = getelementptr inbounds nuw i8, ptr %9, i64 72
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ga) #21
  %i.gb = getelementptr inbounds nuw i8, ptr %9, i64 48
end_hunk_5
