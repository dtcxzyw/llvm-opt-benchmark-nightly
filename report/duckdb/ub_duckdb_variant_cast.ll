inline.NumInlined: 6391
inline.NumDeleted: 1307
begin_hunk_0_@_ZN6duckdb7variantL13CastToVARIANTERNS_6VectorES2_mRNS_14CastParametersE:bb.a

bb.i:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body124 unwind label %bb.j

end_hunk_0
begin_hunk_1_@_ZN6duckdb7variantL13CastToVARIANTERNS_6VectorES2_mRNS_14CastParametersE:bb.a
.body124.thread:                                  ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body124:                                         ; preds = %bb.i
  %.pr = load ptr, ptr %5, align 8, !tbaa !87     ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.l
end_hunk_1
begin_hunk_2_@_ZN6duckdb7variantL13CastToVARIANTERNS_6VectorES2_mRNS_14CastParametersE:bb.a
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #24
  br label %.body

.body:                                            ; preds = %.body124.thread, %bb.l, %.body124, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.w ], [ %i.s, %.body124 ], [ %i.s, %bb.l ], [ %i.v, %.body124.thread ]
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bd) #24
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 48
end_hunk_2
