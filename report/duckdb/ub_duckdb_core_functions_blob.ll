inline.NumInlined: 846
inline.NumDeleted: 376
begin_hunk_0_@_ZN6duckdb9DecodeFun12GetFunctionsEv:._crit_edge.i.i

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body108 unwind label %bb.d

end_hunk_0
begin_hunk_1_@_ZN6duckdb9DecodeFun12GetFunctionsEv:._crit_edge.i.i
.body108.thread:                                  ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body108:                                         ; preds = %bb.c
  %.pr = load ptr, ptr %3, align 8, !tbaa !7      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.f
end_hunk_1
begin_hunk_2_@_ZN6duckdb9DecodeFun12GetFunctionsEv:._crit_edge.i.i

bb.o:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i118
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body122 unwind label %bb.p

end_hunk_2
begin_hunk_3_@_ZN6duckdb9DecodeFun12GetFunctionsEv:._crit_edge.i.i
.body122.thread:                                  ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body38

.body122:                                         ; preds = %bb.o
  %.pr127 = load ptr, ptr %9, align 8, !tbaa !7   ; 2 uses
  %.not.i.i.i.i36 = icmp eq ptr %.pr127, null
  br i1 %.not.i.i.i.i36, label %.body38, label %bb.r
end_hunk_3
begin_hunk_4_@_ZN6duckdb9DecodeFun12GetFunctionsEv:._crit_edge.i.i
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  br label %.body

.body:                                            ; preds = %.body108.thread, %bb.f, %.body108, %bb.ci
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn21.pn, %bb.ci ], [ %i.m, %.body108 ], [ %i.m, %bb.f ], [ %i.p, %.body108.thread ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #19
  br label %.loopexit130

end_hunk_4
begin_hunk_5_@_ZN6duckdb9DecodeFun12GetFunctionsEv:._crit_edge.i.i
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #19
  br label %.body38

.body38:                                          ; preds = %.body122.thread, %bb.r, %.body122, %bb.cp
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %bb.cp ], [ %i.ap, %.body122 ], [ %i.ap, %bb.r ], [ %i.as, %.body122.thread ]
  %i.ik = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ik) #19
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #19
end_hunk_5
