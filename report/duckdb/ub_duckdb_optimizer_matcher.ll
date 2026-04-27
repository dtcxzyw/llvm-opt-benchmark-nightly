inline.NumInlined: 677
inline.NumDeleted: 367
begin_hunk_0_@_ZN6duckdb10SetMatcher5MatchINS_10ExpressionENS_17ExpressionMatcherEEEbRNS_6vectorINS_10unique_ptrIT0_St14default_deleteIS6_ELb1EEELb1ESaIS9_EEERNS4_ISt17reference_wrapperIT_ELb1ESaISF_EEESI_NS0_6PolicyE:bb.a
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_17ExpressionMatcherESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.03858)
  %i.v = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_17ExpressionMatcherESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u) ; 2 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_10ExpressionEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.03858)
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !87, !nonnull !59, !noundef !59
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
end_hunk_0
begin_hunk_1_@_ZN6duckdb10SetMatcher5MatchINS_10ExpressionENS_17ExpressionMatcherEEEbRNS_6vectorINS_10unique_ptrIT0_St14default_deleteIS6_ELb1EEELb1ESaIS9_EEERNS4_ISt17reference_wrapperIT_ELb1ESaISF_EEESI_NS0_6PolicyE:bb.a
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_17ExpressionMatcherESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.03655)
  %i.ay = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_17ExpressionMatcherESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ax) ; 2 uses
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_10ExpressionEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.03655)
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !87, !nonnull !59, !noundef !59
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !10
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
end_hunk_1
begin_hunk_2_@_ZN6duckdb10SetMatcher5MatchINS_10ExpressionENS_17ExpressionMatcherEEEbRNS_6vectorINS_10unique_ptrIT0_St14default_deleteIS6_ELb1EEELb1ESaIS9_EEERNS4_INS5_IT_S7_ISD_ELb1EEELb1ESaISF_EEERNS4_ISt17reference_wrapperISD_ELb1ESaISK_EEENS0_6PolicyE:bb.a

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE9push_backEOS3_.exit
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.as, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE9push_backEOS3_.exit ] ; 5 uses
  %.sroa.015.019 = phi ptr [ %i.a, %.lr.ph ], [ %i.at, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE9push_backEOS3_.exit ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.019) ]
  %i.h = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.015.019)
          to label %bb.c unwind label %.loopexit  ; 2 uses

end_hunk_2
begin_hunk_3_@_ZN6duckdb6vectorINS_10unique_ptrINS_17ExpressionMatcherESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm:bb.a
_ZN6duckdb6vectorINS_10unique_ptrINS_17ExpressionMatcherESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  ret ptr %i.p
}

end_hunk_3
begin_hunk_4_@_ZN6duckdb6vectorISt17reference_wrapperINS_10ExpressionEELb1ESaIS3_EEixEm:bb.a
_ZN6duckdb6vectorISt17reference_wrapperINS_10ExpressionEELb1ESaIS3_EE3getILb1EEERS3_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  ret ptr %i.p
}

end_hunk_4
begin_hunk_5_@_ZN6duckdb10SetMatcher14MatchRecursiveINS_10ExpressionENS_17ExpressionMatcherEEEbRNS_6vectorINS_10unique_ptrIT0_St14default_deleteIS6_ELb1EEELb1ESaIS9_EEERNS4_ISt17reference_wrapperIT_ELb1ESaISF_EEESI_St13unordered_setImSt4hashImESt8equal_toImESaImEEm:bb.a
  %i.bc = call noundef ptr @_ZNK6duckdb10unique_ptrINS_17ExpressionMatcherESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bb) ; 2 uses
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !102
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_10ExpressionEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bd)
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !87, !nonnull !59, !noundef !59
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !10
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
end_hunk_5
begin_hunk_6_@llvm.experimental.noalias.scope.decl
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_6
