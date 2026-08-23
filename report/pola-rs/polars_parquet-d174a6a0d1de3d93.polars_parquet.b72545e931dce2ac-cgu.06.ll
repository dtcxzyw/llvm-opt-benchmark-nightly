Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.06?download=true
inline.NumInlined: 2903
inline.NumDeleted: 754
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift20file_metadata_thrift18read_file_metadata:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !31012, !noalias !31000
  store i8 %.lcssa.i.i.i, ptr %i.l, align 8, !dbg !31013, !noalias !31000
  store i8 %.sroa.525.0.copyload.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i351, align 1, !dbg !31013, !noalias !31000
  store i16 %.sroa.626.0.copyload.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i.i352, align 2, !dbg !31013, !noalias !31000
  store i8 %.sroa.727.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i353, align 4, !dbg !31013, !noalias !31000
  store i8 %.sroa.828.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i354, align 1, !dbg !31013, !noalias !31000
  invoke void @_RNvXNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtNtB6_5error12ParquetErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtB2_19ThriftProtocolErrorE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l) #32
          to label %.noexc45.i unwind label %.loopexit.split-lp.loopexit.loopexit.i, !dbg !31017, !noalias !30904

.noexc45.i:                                       ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !31009, !noalias !31000
  br label %_RNvYNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift20file_metadata_thrift17read_column_orderINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTQNtNtB6_14parquet_thrift24ThriftSliceInputProtocolEE8call_mutBa_.exit.i, !dbg !31019

.lr.ph.i.i.i:                                     ; preds = %.noexc.i357, %.noexc51.i
  %.sroa.0.053.i.i.i = phi i8 [ %.sroa.0.1.i.i.i, %.noexc51.i ], [ 2, %.noexc.i357 ] ; 7 uses
  %.sroa.016.0.copyload.i.i.i = load i16, ptr %i.mn, align 2, !dbg !31021, !noalias !31000 ; 2 uses
  %.sroa.517.0.copyload.i.i.i = load i8, ptr %.sroa.517.0..sroa_idx.i.i.i, align 4, !dbg !31021, !noalias !31000 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !31012, !noalias !31000
  %i.alj = icmp eq i8 %.sroa.517.0.copyload.i.i.i, 0, !dbg !31022
  br i1 %i.alj, label %bb.tw, label %bb.tx, !dbg !31022

bb.tw:                                            ; preds = %.lr.ph.i.i.i
  %.not35.i.i.i = icmp eq i8 %.sroa.0.053.i.i.i, 2, !dbg !31024
  br i1 %.not35.i.i.i, label %bb.ty, label %_RNvYNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift20file_metadata_thrift17read_column_orderINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTQNtNtB6_14parquet_thrift24ThriftSliceInputProtocolEE8call_mutBa_.exit.thread.i, !dbg !31027

bb.tx:                                            ; preds = %.lr.ph.i.i.i
  switch i16 %.sroa.016.0.copyload.i.i.i, label %bb.ua [
    i16 1, label %bb.ub
    i16 2, label %bb.uc
  ], !dbg !31028

bb.ty:                                            ; preds = %bb.tw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !31029, !noalias !31056
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef 36, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc46.i unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.i, !dbg !31029, !noalias !30904

.noexc46.i:                                       ; preds = %bb.ty
  %i.alk = load i64, ptr %i.j, align 8, !dbg !31029, !range !75, !noalias !31056, !noundef !14
  %i.all = trunc nuw i64 %i.alk to i1, !dbg !31059
  %i.alm = load i64, ptr %i.mp, align 8, !dbg !31060, !range !78, !noalias !31056, !noundef !14 ; 4 uses
  br i1 %i.all, label %bb.tz, label %_RNvYNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift20file_metadata_thrift17read_column_orderINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTQNtNtB6_14parquet_thrift24ThriftSliceInputProtocolEE8call_mutBa_.exit.thread76.i, !dbg !31059, !prof !79

bb.tz:                                            ; preds = %.noexc46.i
  %i.aln = load i64, ptr %i.mq, align 8, !dbg !31061, !noalias !31056
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.alm, i64 %i.aln) #28
          to label %.noexc47.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !31062, !noalias !30904

.noexc47.i:                                       ; preds = %bb.tz
  unreachable, !dbg !31062

_RNvYNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift20file_metadata_thrift17read_column_orderINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTQNtNtB6_14parquet_thrift24ThriftSliceInputProtocolEE8call_mutBa_.exit.thread76.i: ; preds = %.noexc46.i
  %i.alo = load ptr, ptr %i.mq, align 8, !dbg !31064, !noalias !31056, !nonnull !14, !noundef !14 ; 2 uses
  %i.alp = icmp samesign ugt i64 %i.alm, 35, !dbg !31065
  call void @llvm.assume(i1 %i.alp), !dbg !31069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !31072, !noalias !31056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.alo, ptr noundef nonnull align 1 dereferenceable(36) @90, i64 36, i1 false), !dbg !31073, !noalias !31079
  store i64 %i.alm, ptr %i.mo, align 8, !dbg !31080, !alias.scope !31081, !noalias !31082
  store ptr %i.alo, ptr %.sroa.5.0..sroa_idx42.i.i.i, align 8, !dbg !31080, !alias.scope !31081, !noalias !31082
  store i64 36, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !dbg !31080, !alias.scope !31081, !noalias !31082
  %i.alq = trunc i64 %i.alm to i8, !dbg !31083
  br label %.loopexit84.i, !dbg !31086

bb.ua:                                            ; preds = %bb.tx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !31087, !noalias !31000
  invoke void @_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol15skip_till_depthBa_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i8 noundef %.sroa.517.0.copyload.i.i.i, i8 noundef 64)
          to label %.noexc48.i unwind label %.loopexit.i, !dbg !31088, !noalias !30904

.noexc48.i:                                       ; preds = %bb.ua
  %i.alr = load i8, ptr %i.m, align 8, !dbg !31091, !range !26838, !noalias !31000, !noundef !14
  %.not34.i.i.i = icmp eq i8 %i.alr, 9, !dbg !31091
  br i1 %.not34.i.i.i, label %bb.ui, label %bb.uh, !dbg !31094

bb.ub:                                            ; preds = %bb.tx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !31095, !noalias !31000
  invoke fastcc void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift20file_metadata_thrift17read_empty_struct(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc49.i unwind label %.loopexit.i, !dbg !31095, !noalias !30904

.noexc49.i:                                       ; preds = %bb.ub
  %i.als = load i64, ptr %i.o, align 8, !dbg !31096, !range !26930, !noalias !31000, !noundef !14
  %.not33.i.i.i = icmp eq i64 %i.als, -9223372036854775803, !dbg !31096
  br i1 %.not33.i.i.i, label %bb.ue, label %bb.ud, !dbg !31099

bb.uc:                                            ; preds = %bb.tx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !31100, !noalias !31000
  invoke fastcc void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift20file_metadata_thrift17read_empty_struct(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc50.i unwind label %.loopexit.i, !dbg !31100, !noalias !30904

.noexc50.i:                                       ; preds = %bb.uc
  %i.alt = load i64, ptr %i.n, align 8, !dbg !31101, !range !26930, !noalias !31000, !noundef !14
  %.not32.i.i.i = icmp eq i64 %i.alt, -9223372036854775803, !dbg !31101
  br i1 %.not32.i.i.i, label %bb.ug, label %bb.uf, !dbg !31103

bb.ud:                                            ; preds = %.noexc49.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !dbg !31104, !noalias !31082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !31105, !noalias !31000
  br label %_RNvYNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift20file_metadata_thrift17read_column_orderINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTQNtNtB6_14parquet_thrift24ThriftSliceInputProtocolEE8call_mutBa_.exit.i, !dbg !31106

bb.ue:                                            ; preds = %.noexc49.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !31105, !noalias !31000
  %.not.i.i.i.i360 = icmp eq i8 %.sroa.0.053.i.i.i, 2, !dbg !31108
  %spec.select.i.i.i = select i1 %.not.i.i.i.i360, i8 0, i8 %.sroa.0.053.i.i.i, !dbg !31114
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata12column_order14ColumnOrderTagE18get_or_insert_withNCNvB2_13get_or_insert0EBQ_.exit.i.i.i, !dbg !31114

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata12column_order14ColumnOrderTagE18get_or_insert_withNCNvB2_13get_or_insert0EBQ_.exit.i.i.i: ; preds = %bb.ui, %bb.ug, %bb.ue
  %.sroa.0.1.i.i.i = phi i8 [ %.sroa.0.053.i.i.i, %bb.ui ], [ %spec.select.i.i.i, %bb.ue ], [ %spec.select43.i.i.i, %bb.ug ], !dbg !31115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !30995, !noalias !31000
  invoke void @_RNvYNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thrift24ThriftSliceInputProtocolNtB4_26ThriftCompactInputProtocol16read_field_beginBa_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i16 noundef %.sroa.016.0.copyload.i.i.i)
          to label %.noexc51.i unwind label %.loopexit.i, !dbg !31003, !noalias !30904

.noexc51.i:                                       ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata12column_order14ColumnOrderTagE18get_or_insert_withNCNvB2_13get_or_insert0EBQ_.exit.i.i.i
  %i.alu = load i8, ptr %i.p, align 8, !dbg !31004, !range !26838, !noalias !31000, !noundef !14 ; 2 uses
  %.not.i.i.i359 = icmp eq i8 %i.alu, 9, !dbg !31004
  br i1 %.not.i.i.i359, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !dbg !31007

bb.uf:                                            ; preds = %.noexc50.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !dbg !31116, !noalias !31082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !31117, !noalias !31000
  br label %_RNvYNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift20file_metadata_thrift17read_column_orderINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTQNtNtB6_14parquet_thrift24ThriftSliceInputProtocolEE8call_mutBa_.exit.i, !dbg !31106

bb.ug:                                            ; preds = %.noexc50.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !31117, !noalias !31000
  %.not.i36.i.i.i = icmp eq i8 %.sroa.0.053.i.i.i, 2, !dbg !31118
  %spec.select43.i.i.i = select i1 %.not.i36.i.i.i, i8 1, i8 %.sroa.0.053.i.i.i, !dbg !31121
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata12column_order14ColumnOrderTagE18get_or_insert_withNCNvB2_13get_or_insert0EBQ_.exit.i.i.i, !dbg !31121

bb.uh:                                            ; preds = %.noexc48.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !31122, !noalias !31000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !dbg !31125, !noalias !31000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !31126, !noalias !31000
  invoke void @_RNvXNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtNtB6_5error12ParquetErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtB2_19ThriftProtocolErrorE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.k) #32
          to label %.noexc52.i unwind label %.loopexit.split-lp.loopexit.loopexit.i, !dbg !31127, !noalias !30904

.noexc52.i:                                       ; preds = %bb.uh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !31122, !noalias !31000
  br label %_RNvYNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift20file_metadata_thrift17read_column_orderINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTQNtNtB6_14parquet_thrift24ThriftSliceInputProtocolEE8call_mutBa_.exit.i, !dbg !31106

bb.ui:                                            ; preds = %.noexc48.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !31126, !noalias !31000
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata12column_order14ColumnOrderTagE18get_or_insert_withNCNvB2_13get_or_insert0EBQ_.exit.i.i.i, !dbg !31126

.loopexit.i:                                      ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata12column_order14ColumnOrderTagE18get_or_insert_withNCNvB2_13get_or_insert0EBQ_.exit.i.i.i, %bb.uc, %bb.ub, %bb.ua
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.loopexit.i:           ; preds = %bb.ul, %bb.uh, %._crit_edge.i.i.i, %.lr.ph.i349
  %lpad.loopexit82.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.loopexit.split-lp.i:  ; preds = %bb.ty
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.tz
  %lpad.loopexit.split-lp56.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp56.i, %.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit82.i, %.loopexit.split-lp.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata12column_order14ColumnOrderTagEEB1l_(ptr noalias noundef align 8 dereferenceable(24) %i.t) #33
          to label %.body unwind label %bb.un, !dbg !30971, !noalias !30904

_RNvYNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift20file_metadata_thrift17read_column_orderINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTQNtNtB6_14parquet_thrift24ThriftSliceInputProtocolEE8call_mutBa_.exit.i: ; preds = %.noexc52.i, %bb.uf, %bb.ud, %.noexc45.i
  %.pr.pr.i = load i64, ptr %i.s, align 8, !dbg !31131, !noalias !30910 ; 2 uses
  %.not43.i = icmp eq i64 %.pr.pr.i, -9223372036854775803, !dbg !31131
  %.pre.i = load i8, ptr %i.mo, align 8, !dbg !31083, !noalias !30910 ; 2 uses
  br i1 %.not43.i, label %_RNvYNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift20file_metadata_thrift17read_column_orderINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTQNtNtB6_14parquet_thrift24ThriftSliceInputProtocolEE8call_mutBa_.exit.thread.i, label %.loopexit84.i, !dbg !31086

.loopexit84.i:                                    ; preds = %_RNvYNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift20file_metadata_thrift17read_column_orderINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTQNtNtB6_14parquet_thrift24ThriftSliceInputProtocolEE8call_mutBa_.exit.i, %_RNvYNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift20file_metadata_thrift17read_column_orderINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTQNtNtB6_14parquet_thrift24ThriftSliceInputProtocolEE8call_mutBa_.exit.thread76.i
  %.pre81.i = phi i8 [ %i.alq, %_RNvYNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift20file_metadata_thrift17read_column_orderINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTQNtNtB6_14parquet_thrift24ThriftSliceInputProtocolEE8call_mutBa_.exit.thread76.i ], [ %.pre.i, %_RNvYNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift20file_metadata_thrift17read_column_orderINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTQNtNtB6_14parquet_thrift24ThriftSliceInputProtocolEE8call_mutBa_.exit.i ]
  %.pr80.i = phi i64 [ -9223372036854775808, %_RNvYNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift20file_metadata_thrift17read_column_orderINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTQNtNtB6_14parquet_thrift24ThriftSliceInputProtocolEE8call_mutBa_.exit.thread76.i ], [ %.pr.pr.i, %_RNvYNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift20file_metadata_thrift17read_column_orderINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTQNtNtB6_14parquet_thrift24ThriftSliceInputProtocolEE8call_mutBa_.exit.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.340.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.637.0..sroa_idx.i, i64 23, i1 false), !dbg !31132, !noalias !30970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !31133, !noalias !30910
  store i8 %.pre81.i, ptr %i.mr, align 8, !dbg !31134, !alias.scope !30904, !noalias !30970
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata12column_order14ColumnOrderTagENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata12column_order14ColumnOrderTagEEB1l_.exit.i unwind label %bb.uj, !dbg !31141, !noalias !30904

bb.uj:                                            ; preds = %.loopexit84.i
  %i.alv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata12column_order14ColumnOrderTagENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body unwind label %bb.uk, !dbg !31143, !noalias !30904

bb.uk:                                            ; preds = %bb.uj
  %i.alw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !31141, !noalias !30904
  unreachable, !dbg !31141

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata12column_order14ColumnOrderTagEEB1l_.exit.i: ; preds = %.loopexit84.i
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata12column_order14ColumnOrderTagENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift20file_metadata_thrift9read_listNtNtNtB6_8metadata12column_order14ColumnOrderTagNvB2_17read_column_orderEB8_.exit.thread8752 unwind label %.loopexit.loopexit.split-lp, !dbg !31145

_RINvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift20file_metadata_thrift9read_listNtNtNtB6_8metadata12column_order14ColumnOrderTagNvB2_17read_column_orderEB8_.exit.thread8752: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata12column_order14ColumnOrderTagEEB1l_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !30971, !noalias !30910
  br label %.loopexit8763, !dbg !30972

_RNvYNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift20file_metadata_thrift17read_column_orderINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTQNtNtB6_14parquet_thrift24ThriftSliceInputProtocolEE8call_mutBa_.exit.thread.i: ; preds = %_RNvYNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift20file_metadata_thrift17read_column_orderINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTQNtNtB6_14parquet_thrift24ThriftSliceInputProtocolEE8call_mutBa_.exit.i, %bb.tw
  %i.alx = phi i8 [ %.pre.i, %_RNvYNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift20file_metadata_thrift17read_column_orderINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTQNtNtB6_14parquet_thrift24ThriftSliceInputProtocolEE8call_mutBa_.exit.i ], [ %.sroa.0.053.i.i.i, %bb.tw ], !dbg !31083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !31133, !noalias !30910
  %i.aly = load i64, ptr %i.mm, align 8, !dbg !31147, !alias.scope !31152, !noalias !30910, !noundef !14 ; 3 uses
  %i.alz = load i64, ptr %i.t, align 8, !dbg !31155, !range !711, !alias.scope !31152, !noalias !30910, !noundef !14
  %i.ama = icmp eq i64 %i.aly, %i.alz, !dbg !31161
  br i1 %i.ama, label %bb.ul, label %bb.um, !dbg !31161

bb.ul:                                            ; preds = %_RNvYNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift20file_metadata_thrift17read_column_orderINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTQNtNtB6_14parquet_thrift24ThriftSliceInputProtocolEE8call_mutBa_.exit.thread.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata12column_order14ColumnOrderTagE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.um unwind label %.loopexit.split-lp.loopexit.loopexit.i, !dbg !31162, !noalias !30904

bb.um:                                            ; preds = %bb.ul, %_RNvYNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift20file_metadata_thrift17read_column_orderINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTQNtNtB6_14parquet_thrift24ThriftSliceInputProtocolEE8call_mutBa_.exit.thread.i
  %i.amb = load ptr, ptr %i.ml, align 8, !dbg !31163, !alias.scope !31152, !noalias !30910, !nonnull !14, !noundef !14
  %i.amc = getelementptr inbounds nuw i8, ptr %i.amb, i64 %i.aly, !dbg !31172
  store i8 %i.alx, ptr %i.amc, align 1, !dbg !31175, !noalias !30904
  %i.amd = add i64 %i.aly, 1, !dbg !31179
  store i64 %i.amd, ptr %i.mm, align 8, !dbg !31179, !alias.scope !31152, !noalias !30910
  %exitcond.not.i358 = icmp eq i32 %i.alh, %i.aky, !dbg !30958
  br i1 %exitcond.not.i358, label %_RINvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift20file_metadata_thrift9read_listNtNtNtB6_8metadata12column_order14ColumnOrderTagNvB2_17read_column_orderEB8_.exit.thread, label %.lr.ph.i349, !dbg !30968

bb.un:                                            ; preds = %.loopexit.split-lp.i
  %i.ame = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !31180, !noalias !30904
  unreachable, !dbg !31180

bb.uo:                                            ; preds = %bb.j
  %i.amf = load i8, ptr %i.mb, align 8, !dbg !31181, !range !26838, !noundef !14 ; 2 uses
  %.not226 = icmp eq i8 %i.amf, 9, !dbg !31181
  br i1 %.not226, label %bb.uq, label %bb.up, !dbg !31183

bb.up:                                            ; preds = %bb.uo
  %.sroa.5137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mb, i64 1, !dbg !31184
  %.sroa.2.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.lq, i64 1, !dbg !31185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lq), !dbg !31190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.2.0..sroa_idx28, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5137.0..sroa_idx, i64 3, i1 false), !dbg !31184
  %.sroa.6138.0.copyload = load i32, ptr %i.sz, align 4, !dbg !31184
  %.sroa.7139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mb, i64 8, !dbg !31184
  %.sroa.7139.0.copyload = load i64, ptr %.sroa.7139.0..sroa_idx, align 8, !dbg !31184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mb), !dbg !31191
  store i8 %i.amf, ptr %i.lq, align 8, !dbg !31185
  %.sroa.329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lq, i64 4, !dbg !31185
  store i32 %.sroa.6138.0.copyload, ptr %.sroa.329.0..sroa_idx, align 4, !dbg !31185
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lq, i64 8, !dbg !31185
  store i64 %.sroa.7139.0.copyload, ptr %.sroa.430.0..sroa_idx, align 8, !dbg !31185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lp), !dbg !31192
  invoke void @_RNvXNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtNtB6_5error12ParquetErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtB2_19ThriftProtocolErrorE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.lp, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.lq)
          to label %bb.ur unwind label %.loopexit.split-lp, !dbg !31192

bb.uq:                                            ; preds = %bb.uo
  %i.amg = load i32, ptr %i.sz, align 4, !dbg !31194, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mb), !dbg !31191
  br label %.backedge16547, !dbg !31195

bb.ur:                                            ; preds = %bb.up
  %i.amh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !31196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.amh, ptr noundef nonnull align 8 dereferenceable(32) %i.lp, i64 32, i1 false), !dbg !31196
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !31196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lp), !dbg !31197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lq), !dbg !31190
  br label %bb.xk, !dbg !31198

bb.us:                                            ; preds = %.noexc245, %.noexc242
  %.pr = phi i64 [ %.sroa.18.1.ph.i, %.noexc245 ], [ %.pr.pre, %.noexc242 ], !dbg !27249 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lc), !dbg !27300
  %.not225 = icmp eq i64 %.pr, -9223372036854775803, !dbg !27249
  br i1 %.not225, label %bb.uu, label %bb.ut, !dbg !27301

bb.ut:                                            ; preds = %bb.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.633, ptr noundef nonnull align 8 dereferenceable(24) %i.sw, i64 24, i1 false), !dbg !31200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ma), !dbg !31201
  %.sroa.2145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !31202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2145.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.633, i64 24, i1 false), !dbg !31201
  %i.ami = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !31202
  store i64 %.pr, ptr %i.ami, align 8, !dbg !31202
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !31202
  br label %bb.xk, !dbg !31198

bb.uu:                                            ; preds = %.thread, %bb.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.633, ptr noundef nonnull align 8 dereferenceable(24) %i.sw, i64 24, i1 false), !dbg !31209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ma), !dbg !31201
  %i.amj = load i64, ptr %i.mh, align 8, !dbg !31210, !range !78, !alias.scope !31212, !noundef !14
  %i.amk = icmp eq i64 %i.amj, -9223372036854775808, !dbg !31210
  br i1 %i.amk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format13SchemaElementEEECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.uv, !dbg !31210

bb.uv:                                            ; preds = %bb.uu
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format13SchemaElementENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mh)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format13SchemaElementEECsfISxE4fmY1Y_14polars_parquet.exit.i370 unwind label %bb.uw, !dbg !31215

bb.uw:                                            ; preds = %bb.uv
  %i.aml = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format13SchemaElementENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mh)
          to label %.body371 unwind label %bb.ux, !dbg !31217

bb.ux:                                            ; preds = %bb.uw
  %i.amm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !31215
  unreachable, !dbg !31215

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format13SchemaElementEECsfISxE4fmY1Y_14polars_parquet.exit.i370: ; preds = %bb.uv
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format13SchemaElementENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mh)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format13SchemaElementEEECsfISxE4fmY1Y_14polars_parquet.exit unwind label %bb.uy, !dbg !31219

bb.uy:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format13SchemaElementEECsfISxE4fmY1Y_14polars_parquet.exit.i370
  %i.amn = landingpad { ptr, i32 }
          cleanup
  br label %.body371, !dbg !31221

.body371:                                         ; preds = %bb.uw, %bb.uy
  %eh.lpad-body372 = phi { ptr, i32 } [ %i.amn, %bb.uy ], [ %i.aml, %bb.uw ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mh, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.633, i64 24, i1 false), !dbg !31221
  br label %.body, !dbg !31222

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format13SchemaElementEEECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.uu, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format13SchemaElementEECsfISxE4fmY1Y_14polars_parquet.exit.i370
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mh, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.633, i64 24, i1 false), !dbg !31221
  br label %.backedge16547, !dbg !31195

bb.uz:                                            ; preds = %bb.hg
  %i.amo = load i8, ptr %i.lz, align 8, !dbg !31223, !range !26838, !noundef !14 ; 2 uses
  %.not224 = icmp eq i8 %i.amo, 9, !dbg !31223
  br i1 %.not224, label %bb.vb, label %bb.va, !dbg !31225

bb.va:                                            ; preds = %bb.uz
  %.sroa.5150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lz, i64 1, !dbg !31226
  %.sroa.247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lo, i64 1, !dbg !31227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lo), !dbg !31232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.247.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5150.0..sroa_idx, i64 7, i1 false), !dbg !31226
  %.sroa.6151.0.copyload = load i64, ptr %i.qk, align 8, !dbg !31226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lz), !dbg !31233
  store i8 %i.amo, ptr %i.lo, align 8, !dbg !31227
  %.sroa.348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lo, i64 8, !dbg !31227
  store i64 %.sroa.6151.0.copyload, ptr %.sroa.348.0..sroa_idx, align 8, !dbg !31227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ln), !dbg !31234
  invoke void @_RNvXNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet18handwritten_thrift14parquet_thriftNtNtB6_5error12ParquetErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtB2_19ThriftProtocolErrorE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ln, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.lo)
          to label %bb.vc unwind label %.loopexit.split-lp, !dbg !31234

bb.vb:                                            ; preds = %bb.uz
  %i.amp = load i64, ptr %i.qk, align 8, !dbg !31236, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lz), !dbg !31233
  br label %.backedge16547, !dbg !31195

bb.vc:                                            ; preds = %bb.va
  %i.amq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !31237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.amq, ptr noundef nonnull align 8 dereferenceable(32) %i.ln, i64 32, i1 false), !dbg !31237
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !31237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ln), !dbg !31238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lo), !dbg !31232
  br label %bb.xk, !dbg !31198

bb.vd:                                            ; preds = %.noexc298, %.noexc295
  %.pr468 = phi i64 [ %.sroa.17.3.ph.i, %.noexc298 ], [ %.pr468.pre, %.noexc295 ], !dbg !28568 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gv), !dbg !28616
  %.not223 = icmp eq i64 %.pr468, -9223372036854775803, !dbg !28568
  br i1 %.not223, label %bb.vf, label %bb.ve, !dbg !28617

bb.ve:                                            ; preds = %bb.vd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.651, ptr noundef nonnull align 8 dereferenceable(24) %i.qi, i64 24, i1 false), !dbg !31239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ly), !dbg !31240
  %.sroa.2157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !31241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2157.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.651, i64 24, i1 false), !dbg !31240
  %i.amr = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !31241
  store i64 %.pr468, ptr %i.amr, align 8, !dbg !31241
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !31241
  br label %bb.xk, !dbg !31198

bb.vf:                                            ; preds = %.thread469, %bb.vd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.651, ptr noundef nonnull align 8 dereferenceable(24) %i.qi, i64 24, i1 false), !dbg !31247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ly), !dbg !31240
  %i.ams = load i64, ptr %i.mg, align 8, !dbg !31248, !range !78, !alias.scope !31250, !noundef !14
  %i.amt = icmp eq i64 %i.ams, -9223372036854775808, !dbg !31248
  br i1 %i.amt, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compact15CompactRowGroupEEEB1H_.exit, label %bb.vg, !dbg !31248

bb.vg:                                            ; preds = %bb.vf
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compact15CompactRowGroupENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mg)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compact15CompactRowGroupEEB1l_.exit.i374 unwind label %bb.vh, !dbg !31253

bb.vh:                                            ; preds = %bb.vg
  %i.amu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compact15CompactRowGroupENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mg)
          to label %.body375 unwind label %bb.vi, !dbg !31255

bb.vi:                                            ; preds = %bb.vh
  %i.amv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !31253
  unreachable, !dbg !31253

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compact15CompactRowGroupEEB1l_.exit.i374: ; preds = %bb.vg
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compact15CompactRowGroupENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mg)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compact15CompactRowGroupEEEB1H_.exit unwind label %bb.vj, !dbg !31257

bb.vj:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata7compact15CompactRowGroupEEB1l_.exit.i374
  %i.amw = landingpad { ptr, i32 }
          cleanup
  br label %.body375, !dbg !31259

.body375:                                         ; preds = %bb.vh, %bb.vj
end_hunk_0
