inline.NumInlined: 6734
inline.NumDeleted: 3043
begin_hunk_0_@_ZN6duckdb14SetArrowFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextE:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.fh = icmp ult i8 %i.fg, 10
  %i.fi = icmp ult i8 %i.fg, 100
  %. = select i1 %i.fi, i32 2, i32 3              ; 3 uses
  %31 = zext nneg i32 %. to i64
  %i.fj = select i1 %i.fh, i64 1, i64 %31
  %i.fk = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.fk, ptr %13, align 8, !tbaa !12, !alias.scope !353
end_hunk_0
begin_hunk_1_@_ZN6duckdb14SetArrowFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextE:bb.a
  %i.fr = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.fq ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 1
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !20, !noalias !353
  %32 = zext nneg i32 %. to i64
  %33 = getelementptr i8, ptr %i.fl, i64 %32
  %i.fu = getelementptr i8, ptr %33, i64 -1
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !20
  %i.fv = load i8, ptr %i.fr, align 2, !tbaa !20, !noalias !353
  %34 = zext nneg i32 %. to i64
  %35 = getelementptr i8, ptr %i.fl, i64 %34
  %i.fw = getelementptr i8, ptr %35, i64 -2
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !20
  br label %bb.bn

end_hunk_1
begin_hunk_2_@_ZN6duckdb14SetArrowFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextE:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.hl = icmp ult i8 %i.hk, 10
  %i.hm = icmp ult i8 %i.hk, 100
  %.747 = select i1 %i.hm, i32 2, i32 3           ; 3 uses
  %36 = zext nneg i32 %.747 to i64
  %i.hn = select i1 %i.hl, i64 1, i64 %36
  %i.ho = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.ho, ptr %14, align 8, !tbaa !12, !alias.scope !362
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.hn, i8 noundef signext 45)
end_hunk_2
begin_hunk_3_@_ZN6duckdb14SetArrowFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextE:bb.a
  %i.hv = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.hu ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !20, !noalias !362
  %37 = zext nneg i32 %.747 to i64
  %38 = getelementptr i8, ptr %i.hp, i64 %37
  %i.hy = getelementptr i8, ptr %38, i64 -1
  store i8 %i.hx, ptr %i.hy, align 1, !tbaa !20
  %i.hz = load i8, ptr %i.hv, align 2, !tbaa !20, !noalias !362
  %39 = zext nneg i32 %.747 to i64
  %40 = getelementptr i8, ptr %i.hp, i64 %39
  %i.ia = getelementptr i8, ptr %40, i64 -2
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !20
  br label %bb.bv

end_hunk_3
