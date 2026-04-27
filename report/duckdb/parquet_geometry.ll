inline.NumInlined: 1156
inline.NumDeleted: 644
begin_hunk_0_@_ZN6duckdb22GeoParquetFileMetadata7TryReadERKN14duckdb_parquet12FileMetaDataERNS_13ClientContextE:bb.a
  br i1 %.not370421, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.critedge108
  %.sroa.0298.0422 = phi ptr [ %i.og, %.critedge108 ], [ %i.j, %bb.c ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0298.0422, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !13
  %i.o = icmp eq i64 %i.n, 3
end_hunk_0
begin_hunk_1_@_ZN6duckdb22GeoParquetFileMetadata5WriteERN14duckdb_parquet12FileMetaDataE:bb.a
  br label %bb.gm

bb.cg:                                            ; preds = %.lr.ph1600, %_ZN13duckdb_yyjsonL25yyjson_mut_arr_add_strcpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit
  %.sroa.0781.01598 = phi ptr [ %i.nm, %.lr.ph1600 ], [ %i.pz, %_ZN13duckdb_yyjsonL25yyjson_mut_arr_add_strcpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit ] ; 2 uses
  %i.on = load ptr, ptr %.sroa.0781.01598, align 8, !tbaa !18 ; 3 uses
  br i1 %or.cond1264, label %_ZN13duckdb_yyjsonL25yyjson_mut_arr_add_strcpyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valEPKc.exit, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_arrEPNS_14yyjson_mut_valE.exit631, !prof !110

end_hunk_1
begin_hunk_2_@_ZNK6duckdb6vectorINS_19ParquetColumnSchemaELb1ESaIS1_EEixEm:bb.a
_ZNK6duckdb6vectorINS_19ParquetColumnSchemaELb1ESaIS1_EE3getILb1EEERKS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [160 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.q, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.j, %bb.c ] ; 4 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

end_hunk_3
begin_hunk_4_@llvm.experimental.noalias.scope.decl
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_4
