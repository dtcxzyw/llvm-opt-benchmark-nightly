inline.NumInlined: 1090
inline.NumDeleted: 414
begin_hunk_0_@_ZN6duckdb12BitStringFun12GetFunctionsEv:bb.a

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body73 unwind label %bb.e

end_hunk_0
begin_hunk_1_@_ZN6duckdb12BitStringFun12GetFunctionsEv:bb.a
.body73.thread:                                   ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body73

.body73:                                          ; preds = %bb.d, %.body73.thread
  %eh.lpad-body74 = phi { ptr, i32 } [ %i.r, %.body73.thread ], [ %i.o, %bb.d ] ; 2 uses
  %.pr = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.g
end_hunk_1
begin_hunk_2_@_ZN6duckdb12BitStringFun12GetFunctionsEv:bb.a

bb.aa:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i83
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body87 unwind label %bb.ab

end_hunk_2
begin_hunk_3_@_ZN6duckdb12BitStringFun12GetFunctionsEv:bb.a
.body87.thread:                                   ; preds = %bb.z
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body87

.body87:                                          ; preds = %bb.aa, %.body87.thread
  %eh.lpad-body88 = phi { ptr, i32 } [ %i.cp, %.body87.thread ], [ %i.cm, %bb.aa ] ; 2 uses
  %.pr95 = load ptr, ptr %8, align 8, !tbaa !7    ; 2 uses
  %.not.i.i.i.i37 = icmp eq ptr %.pr95, null
  br i1 %.not.i.i.i.i37, label %.body39, label %bb.ad
end_hunk_3
begin_hunk_4_@_ZN6duckdb12BitStringFun12GetFunctionsEv:bb.a
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  br label %.body

.body:                                            ; preds = %bb.g, %.body73, %bb.bd
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.bd ], [ %eh.lpad-body74, %.body73 ], [ %eh.lpad-body74, %bb.g ]
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fg) #20
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #20
end_hunk_4
begin_hunk_5_@_ZN6duckdb12BitStringFun12GetFunctionsEv:bb.a
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #20
  br label %.body39

.body39:                                          ; preds = %bb.ad, %.body87, %bb.bm
  %.pn27.pn.pn.pn = phi { ptr, i32 } [ %.pn27.pn.pn, %bb.bm ], [ %eh.lpad-body88, %.body87 ], [ %eh.lpad-body88, %bb.ad ]
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fq) #20
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #20
end_hunk_5
