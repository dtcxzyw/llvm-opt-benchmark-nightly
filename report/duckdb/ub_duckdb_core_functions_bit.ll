inline.NumInlined: 1090
inline.NumDeleted: 414
begin_hunk_0_@_ZN6duckdb12BitStringFun12GetFunctionsEv:bb.a

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body73 unwind label %bb.e

end_hunk_0
begin_hunk_1_@_ZN6duckdb12BitStringFun12GetFunctionsEv:bb.a
.body73.thread:                                   ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body73:                                          ; preds = %bb.d
  %.pr = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.g
end_hunk_1
begin_hunk_2_@_ZN6duckdb12BitStringFun12GetFunctionsEv:bb.a

bb.aa:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i83
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body87 unwind label %bb.ab

end_hunk_2
begin_hunk_3_@_ZN6duckdb12BitStringFun12GetFunctionsEv:bb.a
.body87.thread:                                   ; preds = %bb.z
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body39

.body87:                                          ; preds = %bb.aa
  %.pr95 = load ptr, ptr %8, align 8, !tbaa !7    ; 2 uses
  %.not.i.i.i.i37 = icmp eq ptr %.pr95, null
  br i1 %.not.i.i.i.i37, label %.body39, label %bb.ad
end_hunk_3
begin_hunk_4_@_ZN6duckdb12BitStringFun12GetFunctionsEv:bb.a
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  br label %.body

.body:                                            ; preds = %.body73.thread, %bb.g, %.body73, %bb.bd
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.bd ], [ %i.o, %.body73 ], [ %i.o, %bb.g ], [ %i.r, %.body73.thread ]
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fg) #20
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #20
end_hunk_4
begin_hunk_5_@_ZN6duckdb12BitStringFun12GetFunctionsEv:bb.a
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #20
  br label %.body39

.body39:                                          ; preds = %.body87.thread, %bb.ad, %.body87, %bb.bm
  %.pn27.pn.pn.pn = phi { ptr, i32 } [ %.pn27.pn.pn, %bb.bm ], [ %i.cm, %.body87 ], [ %i.cm, %bb.ad ], [ %i.cp, %.body87.thread ]
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 24
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fq) #20
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #20
end_hunk_5
