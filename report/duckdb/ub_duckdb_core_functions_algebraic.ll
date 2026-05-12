inline.NumInlined: 3036
inline.NumDeleted: 743
begin_hunk_0_@_ZN6duckdb6AvgFun12GetFunctionsEv:bb.a

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body178 unwind label %bb.d

end_hunk_0
begin_hunk_1_@_ZN6duckdb6AvgFun12GetFunctionsEv:bb.a
.body178.thread:                                  ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body178:                                         ; preds = %bb.c
  %.pr = load ptr, ptr %9, align 8, !tbaa !7      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.f
end_hunk_1
begin_hunk_2_@_ZN6duckdb6AvgFun12GetFunctionsEv:bb.a
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #22
  br label %.body

.body:                                            ; preds = %.body178.thread, %bb.f, %.body178, %bb.ed
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ed ], [ %i.h, %.body178 ], [ %i.h, %bb.f ], [ %i.k, %.body178.thread ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #22
  br label %.loopexit

end_hunk_2
begin_hunk_3_@_ZNK6duckdb12_GLOBAL__N_122AverageDecimalBindData4CopyEv
define internal void @_ZNK6duckdb12_GLOBAL__N_122AverageDecimalBindData4CopyEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_122AverageDecimalBindDataESt14default_deleteIS2_EED2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load double, ptr %i.a, align 8
  %2 = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23, !noalias !132, !inline_history !135 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_122AverageDecimalBindDataE, i64 16), ptr %2, align 8, !tbaa !27, !noalias !132
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %.val, ptr %i.b, align 8, !tbaa !64, !noalias !132
  store ptr %2, ptr %0, align 8, !tbaa !67
  ret void
}
end_hunk_3
