inline.NumInlined: 746
inline.NumDeleted: 336
begin_hunk_0_@_ZN6duckdb14MapContainsFun11GetFunctionEv:._crit_edge.i.i

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body62 unwind label %bb.h

end_hunk_0
begin_hunk_1_@_ZN6duckdb14MapContainsFun11GetFunctionEv:._crit_edge.i.i
.body62.thread:                                   ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body62

.body62:                                          ; preds = %bb.g, %.body62.thread
  %eh.lpad-body63 = phi { ptr, i32 } [ %i.ad, %.body62.thread ], [ %i.aa, %bb.g ] ; 2 uses
  %.pr = load ptr, ptr %6, align 8, !tbaa !16     ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.j
end_hunk_1
begin_hunk_2_@_ZN6duckdb14MapContainsFun11GetFunctionEv:._crit_edge.i.i
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #20
  br label %.body

.body:                                            ; preds = %bb.j, %.body62, %bb.z
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %bb.z ], [ %eh.lpad-body63, %.body62 ], [ %eh.lpad-body63, %bb.j ]
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bi) #20
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #20
end_hunk_2
