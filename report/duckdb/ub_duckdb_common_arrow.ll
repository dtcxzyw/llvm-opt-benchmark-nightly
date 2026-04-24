inline.NumInlined: 6734
inline.NumDeleted: 3043
begin_hunk_0_@_ZN6duckdb14SetArrowFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextE:bb.a
  br label %bb.dc

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.bd, %bb.bd, %bb.bc, %bb.be, %bb.bf
  %31 = phi i1 [ false, %bb.bf ], [ false, %bb.bc ], [ true, %bb.be ], [ true, %bb.bd ], [ true, %bb.bd ] ; 4 uses
  %32 = phi i8 [ 49, %bb.bf ], [ 49, %bb.bc ], [ 48, %bb.be ], [ 48, %bb.bd ], [ 48, %bb.bd ]
  %i.fe = phi i1 [ true, %bb.bf ], [ true, %bb.bc ], [ false, %bb.be ], [ false, %bb.bd ], [ false, %bb.bd ]
  %.0245 = phi i64 [ 256, %bb.bf ], [ 256, %bb.bc ], [ 128, %bb.be ], [ 64, %bb.bd ], [ 64, %bb.bd ]
  %.0245.a = phi i32 [ 256, %bb.bf ], [ 256, %bb.bc ], [ 128, %bb.be ], [ 64, %bb.bd ], [ 64, %bb.bd ] ; 2 uses
  %i.ff = call noundef zeroext i1 @_ZNK6duckdb11LogicalType20GetDecimalPropertiesERhS1_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
end_hunk_0
begin_hunk_1_@_ZN6duckdb14SetArrowFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  %i.fg = load i8, ptr %i.a, align 1, !tbaa !20   ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.fh = icmp ult i8 %i.fg, 10
  %33 = icmp ugt i8 %i.fg, 99                     ; 4 uses
  %. = select i1 %33, i64 3, i64 2
  %.747 = select i1 %33, i64 2, i64 1
  %i.fi = zext i1 %33 to i64
  %i.fj = select i1 %i.fh, i64 1, i64 %.
  %i.fk = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.fk, ptr %13, align 8, !tbaa !12, !alias.scope !353
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %i.fj, i8 noundef signext 45)
end_hunk_1
begin_hunk_2_@_ZN6duckdb14SetArrowFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextE:bb.a

bb.bl:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.fl = load ptr, ptr %13, align 8, !tbaa !15, !alias.scope !353 ; 4 uses
  br i1 %33, label %._crit_edge.i.i.thread, label %._crit_edge.i.i

._crit_edge.i.i.thread:                           ; preds = %bb.bl
  %i.fm = urem i8 %i.fg, 100
end_hunk_2
begin_hunk_3_@_ZN6duckdb14SetArrowFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextE:bb.a
  %i.fq = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.fp ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 1
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !20, !noalias !353
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.747
  store i8 %i.fs, ptr %i.ft, align 1, !tbaa !20
  %i.fu = load i8, ptr %i.fq, align 2, !tbaa !20, !noalias !353
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fi
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !20
  br label %bb.bn

end_hunk_3
begin_hunk_4_@_ZN6duckdb14SetArrowFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextE:bb.a
  store i64 0, ptr %i.hh, align 8, !tbaa !18
  store i8 0, ptr %i.gz, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  %i.hj = load i8, ptr %i.b, align 1, !tbaa !20   ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.hk = icmp ult i8 %i.hj, 10
  %34 = icmp ugt i8 %i.hj, 99                     ; 4 uses
  %.749 = select i1 %34, i64 3, i64 2
  %.750 = select i1 %34, i64 2, i64 1
  %i.hl = zext i1 %34 to i64
  %i.hm = select i1 %i.hk, i64 1, i64 %.749
  %i.hn = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.hn, ptr %14, align 8, !tbaa !12, !alias.scope !362
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.hm, i8 noundef signext 45)
end_hunk_4
begin_hunk_5_@_ZN6duckdb14SetArrowFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextE:bb.a

bb.bt:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i328
  %i.ho = load ptr, ptr %14, align 8, !tbaa !15, !alias.scope !362 ; 4 uses
  br i1 %34, label %._crit_edge.i.i331.thread, label %._crit_edge.i.i331

._crit_edge.i.i331.thread:                        ; preds = %bb.bt
  %i.hp = urem i8 %i.hj, 100
end_hunk_5
begin_hunk_6_@_ZN6duckdb14SetArrowFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextE:bb.a
  %i.ht = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.hs ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 1
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !20, !noalias !362
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.750
  store i8 %i.hv, ptr %i.hw, align 1, !tbaa !20
  %i.hx = load i8, ptr %i.ht, align 2, !tbaa !20, !noalias !362
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hl
  store i8 %i.hx, ptr %i.hy, align 1, !tbaa !20
  br label %bb.bv

end_hunk_6
begin_hunk_7_@_ZN6duckdb14SetArrowFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextE:bb.a
  store i8 0, ptr %i.ki, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %.752 = select i1 %31, i64 2, i64 3
  %.753 = select i1 %31, i64 1, i64 2
  %not. = xor i1 %31, true
  %.754 = zext i1 %not. to i64
  %i.ks = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  store ptr %i.ks, ptr %15, align 8, !tbaa !12, !alias.scope !371
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef %.752, i8 noundef signext 45)
          to label %bb.cg unwind label %bb.ch

bb.cg:                                            ; preds = %.lr.ph.i.i352
  %i.kt = load ptr, ptr %15, align 8, !tbaa !15, !alias.scope !371 ; 4 uses
  br i1 %i.fe, label %.lr.ph.preheader.i.i361, label %._crit_edge.i.i358.thread

.lr.ph.preheader.i.i361:                          ; preds = %bb.cg
  %i.ku = add nsw i32 %.0245.a, -200
  %i.kv = select i1 %31, i32 %.0245.a, i32 %i.ku
  %i.kw = zext nneg i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.kw ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 1
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !20, !noalias !371
  %i.la = getelementptr inbounds nuw i8, ptr %i.kt, i64 %.753
  store i8 %i.kz, ptr %i.la, align 1, !tbaa !20
  %i.lb = load i8, ptr %i.kx, align 8, !tbaa !20, !noalias !371
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kt, i64 %.754
  store i8 %i.lb, ptr %i.lc, align 1, !tbaa !20
  br label %_ZNSt7__cxx119to_stringEi.exit365

._crit_edge.i.i358.thread:                        ; preds = %bb.cg
  %i.ld = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %.0245 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 1
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !20, !noalias !371
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kt, i64 1
end_hunk_7
begin_hunk_8_@_ZN6duckdb14SetArrowFormatERNS_23DuckDBArrowSchemaHolderER11ArrowSchemaRKNS_11LogicalTypeERNS_16ClientPropertiesERNS_13ClientContextE:bb.a
  unreachable

_ZNSt7__cxx119to_stringEi.exit365:                ; preds = %._crit_edge.i.i358.thread, %.lr.ph.preheader.i.i361
  %storemerge.i.i360 = phi i8 [ %32, %.lr.ph.preheader.i.i361 ], [ %i.lh, %._crit_edge.i.i358.thread ]
  store i8 %storemerge.i.i360, ptr %i.kt, align 1, !tbaa !20
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %i.lk = load i64, ptr %i.kr, align 8, !tbaa !18, !noalias !374 ; 4 uses
end_hunk_8
