Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_arrow?download=true
inline.NumInlined: 6734
inline.NumDeleted: 3043
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN6duckdb13ArrowAppender15InitializeChildERKNS_11LogicalTypeEmRNS_16ClientPropertiesERKNS_10shared_ptrINS_22ArrowTypeExtensionDataELb1EEE:bb.a
  store ptr @_ZN6duckdb15ArrowScalarDataINS_9hugeint_tES1_NS_20ArrowScalarConverterEE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm, ptr %i.ba, align 8, !tbaa !787
  %i.bb = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_ZN6duckdb19ArrowScalarBaseDataINS_9hugeint_tES1_NS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm, ptr %i.bb, align 8, !tbaa !166
  %i.bc = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr @_ZN6duckdb15ArrowScalarDataINS_9hugeint_tES1_NS_20ArrowScalarConverterEE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray, ptr %i.bc, align 8, !tbaa !167
  br label %_ZN6duckdbL26InitializeFunctionPointersERNS_15ArrowAppendDataERKNS_11LogicalTypeE.exit

bb.y:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr @_ZN6duckdb15ArrowScalarDataINS_10uhugeint_tES1_NS_20ArrowScalarConverterEE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm, ptr %i.bd, align 8, !tbaa !787
  %i.be = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_ZN6duckdb19ArrowScalarBaseDataINS_10uhugeint_tES1_NS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm, ptr %i.be, align 8, !tbaa !166
  %i.bf = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr @_ZN6duckdb15ArrowScalarDataINS_10uhugeint_tES1_NS_20ArrowScalarConverterEE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray, ptr %i.bf, align 8, !tbaa !167
  br label %_ZN6duckdbL26InitializeFunctionPointersERNS_15ArrowAppendDataERKNS_11LogicalTypeE.exit

bb.z:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr @_ZN6duckdb15ArrowScalarDataIhhNS_20ArrowScalarConverterEE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm, ptr %i.bg, align 8, !tbaa !787
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_ZN6duckdb19ArrowScalarBaseDataIhhNS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm, ptr %i.bh, align 8, !tbaa !166
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr @_ZN6duckdb15ArrowScalarDataIhhNS_20ArrowScalarConverterEE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray, ptr %i.bi, align 8, !tbaa !167
  br label %_ZN6duckdbL26InitializeFunctionPointersERNS_15ArrowAppendDataERKNS_11LogicalTypeE.exit

bb.aa:                                            ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr @_ZN6duckdb15ArrowScalarDataIttNS_20ArrowScalarConverterEE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm, ptr %i.bj, align 8, !tbaa !787
  %i.bk = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_ZN6duckdb19ArrowScalarBaseDataIttNS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm, ptr %i.bk, align 8, !tbaa !166
  %i.bl = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr @_ZN6duckdb15ArrowScalarDataIttNS_20ArrowScalarConverterEE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray, ptr %i.bl, align 8, !tbaa !167
  br label %_ZN6duckdbL26InitializeFunctionPointersERNS_15ArrowAppendDataERKNS_11LogicalTypeE.exit

bb.ab:                                            ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr @_ZN6duckdb15ArrowScalarDataIjjNS_20ArrowScalarConverterEE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm, ptr %i.bm, align 8, !tbaa !787
  %i.bn = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_ZN6duckdb19ArrowScalarBaseDataIjjNS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm, ptr %i.bn, align 8, !tbaa !166
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr @_ZN6duckdb15ArrowScalarDataIjjNS_20ArrowScalarConverterEE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray, ptr %i.bo, align 8, !tbaa !167
  br label %_ZN6duckdbL26InitializeFunctionPointersERNS_15ArrowAppendDataERKNS_11LogicalTypeE.exit

bb.ac:                                            ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr @_ZN6duckdb15ArrowScalarDataImmNS_20ArrowScalarConverterEE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm, ptr %i.bp, align 8, !tbaa !787
  %i.bq = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_ZN6duckdb19ArrowScalarBaseDataImmNS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm, ptr %i.bq, align 8, !tbaa !166
  %i.br = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr @_ZN6duckdb15ArrowScalarDataImmNS_20ArrowScalarConverterEE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray, ptr %i.br, align 8, !tbaa !167
  br label %_ZN6duckdbL26InitializeFunctionPointersERNS_15ArrowAppendDataERKNS_11LogicalTypeE.exit

bb.ad:                                            ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr @_ZN6duckdb15ArrowScalarDataIffNS_20ArrowScalarConverterEE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm, ptr %i.bs, align 8, !tbaa !787
  %i.bt = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_ZN6duckdb19ArrowScalarBaseDataIffNS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm, ptr %i.bt, align 8, !tbaa !166
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr @_ZN6duckdb15ArrowScalarDataIffNS_20ArrowScalarConverterEE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray, ptr %i.bu, align 8, !tbaa !167
  br label %_ZN6duckdbL26InitializeFunctionPointersERNS_15ArrowAppendDataERKNS_11LogicalTypeE.exit

bb.ae:                                            ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr @_ZN6duckdb15ArrowScalarDataIddNS_20ArrowScalarConverterEE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm, ptr %i.bv, align 8, !tbaa !787
  %i.bw = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_ZN6duckdb19ArrowScalarBaseDataIddNS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm, ptr %i.bw, align 8, !tbaa !166
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr @_ZN6duckdb15ArrowScalarDataIddNS_20ArrowScalarConverterEE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray, ptr %i.bx, align 8, !tbaa !167
  br label %_ZN6duckdbL26InitializeFunctionPointersERNS_15ArrowAppendDataERKNS_11LogicalTypeE.exit

bb.af:                                            ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !132
  switch i8 %i.bz, label %bb.aq [
    i8 5, label %bb.ag
    i8 7, label %bb.aj
    i8 9, label %bb.am
    i8 -52, label %bb.ap
  ]

bb.ag:                                            ; preds = %bb.af
  %i.ca = getelementptr inbounds nuw i8, ptr %i.o, i64 284
  %i.cb = load i8, ptr %i.ca, align 4, !tbaa !789
  %i.cc = icmp ugt i8 %i.cb, 14
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  br i1 %i.cc, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store ptr @_ZN6duckdb15ArrowScalarDataIisNS_20ArrowScalarConverterEE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm, ptr %i.cd, align 8, !tbaa !787
  store ptr @_ZN6duckdb19ArrowScalarBaseDataIisNS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm, ptr %i.ce, align 8, !tbaa !166
  store ptr @_ZN6duckdb15ArrowScalarDataIisNS_20ArrowScalarConverterEE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray, ptr %i.cf, align 8, !tbaa !167
  br label %_ZN6duckdbL26InitializeFunctionPointersERNS_15ArrowAppendDataERKNS_11LogicalTypeE.exit

bb.ai:                                            ; preds = %bb.ag
  store ptr @_ZN6duckdb15ArrowScalarDataINS_9hugeint_tEsNS_20ArrowScalarConverterEE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm, ptr %i.cd, align 8, !tbaa !787
  store ptr @_ZN6duckdb19ArrowScalarBaseDataINS_9hugeint_tEsNS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm, ptr %i.ce, align 8, !tbaa !166
  store ptr @_ZN6duckdb15ArrowScalarDataINS_9hugeint_tEsNS_20ArrowScalarConverterEE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray, ptr %i.cf, align 8, !tbaa !167
  br label %_ZN6duckdbL26InitializeFunctionPointersERNS_15ArrowAppendDataERKNS_11LogicalTypeE.exit

bb.aj:                                            ; preds = %bb.af
  %i.cg = getelementptr inbounds nuw i8, ptr %i.o, i64 284
  %i.ch = load i8, ptr %i.cg, align 4, !tbaa !789
  %i.ci = icmp ugt i8 %i.ch, 14
  %i.cj = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  br i1 %i.ci, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store ptr @_ZN6duckdb15ArrowScalarDataIiiNS_20ArrowScalarConverterEE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm, ptr %i.cj, align 8, !tbaa !787
  store ptr @_ZN6duckdb19ArrowScalarBaseDataIiiNS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm, ptr %i.ck, align 8, !tbaa !166
  store ptr @_ZN6duckdb15ArrowScalarDataIiiNS_20ArrowScalarConverterEE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray, ptr %i.cl, align 8, !tbaa !167
  br label %_ZN6duckdbL26InitializeFunctionPointersERNS_15ArrowAppendDataERKNS_11LogicalTypeE.exit

bb.al:                                            ; preds = %bb.aj
  store ptr @_ZN6duckdb15ArrowScalarDataINS_9hugeint_tEiNS_20ArrowScalarConverterEE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm, ptr %i.cj, align 8, !tbaa !787
  store ptr @_ZN6duckdb19ArrowScalarBaseDataINS_9hugeint_tEiNS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm, ptr %i.ck, align 8, !tbaa !166
  store ptr @_ZN6duckdb15ArrowScalarDataINS_9hugeint_tEiNS_20ArrowScalarConverterEE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray, ptr %i.cl, align 8, !tbaa !167
  br label %_ZN6duckdbL26InitializeFunctionPointersERNS_15ArrowAppendDataERKNS_11LogicalTypeE.exit

bb.am:                                            ; preds = %bb.af
  %i.cm = getelementptr inbounds nuw i8, ptr %i.o, i64 284
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !789
  %i.co = icmp ugt i8 %i.cn, 14
  %i.cp = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  br i1 %i.co, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store ptr @_ZN6duckdb15ArrowScalarDataIllNS_20ArrowScalarConverterEE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm, ptr %i.cp, align 8, !tbaa !787
  store ptr @_ZN6duckdb19ArrowScalarBaseDataIllNS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm, ptr %i.cq, align 8, !tbaa !166
  store ptr @_ZN6duckdb15ArrowScalarDataIllNS_20ArrowScalarConverterEE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray, ptr %i.cr, align 8, !tbaa !167
  br label %_ZN6duckdbL26InitializeFunctionPointersERNS_15ArrowAppendDataERKNS_11LogicalTypeE.exit

bb.ao:                                            ; preds = %bb.am
  store ptr @_ZN6duckdb15ArrowScalarDataINS_9hugeint_tElNS_20ArrowScalarConverterEE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm, ptr %i.cp, align 8, !tbaa !787
  store ptr @_ZN6duckdb19ArrowScalarBaseDataINS_9hugeint_tElNS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm, ptr %i.cq, align 8, !tbaa !166
  store ptr @_ZN6duckdb15ArrowScalarDataINS_9hugeint_tElNS_20ArrowScalarConverterEE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray, ptr %i.cr, align 8, !tbaa !167
  br label %_ZN6duckdbL26InitializeFunctionPointersERNS_15ArrowAppendDataERKNS_11LogicalTypeE.exit

bb.ap:                                            ; preds = %bb.af
  %i.cs = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr @_ZN6duckdb15ArrowScalarDataINS_9hugeint_tES1_NS_20ArrowScalarConverterEE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm, ptr %i.cs, align 8, !tbaa !787
  %i.ct = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_ZN6duckdb19ArrowScalarBaseDataINS_9hugeint_tES1_NS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm, ptr %i.ct, align 8, !tbaa !166
  %i.cu = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr @_ZN6duckdb15ArrowScalarDataINS_9hugeint_tES1_NS_20ArrowScalarConverterEE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray, ptr %i.cu, align 8, !tbaa !167
  br label %_ZN6duckdbL26InitializeFunctionPointersERNS_15ArrowAppendDataERKNS_11LogicalTypeE.exit

bb.aq:                                            ; preds = %bb.af
  %i.cv = call ptr @__cxa_allocate_exception(i64 16) #34, !inline_history !785 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.78, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ar unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, !inline_history !785

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.as unwind label %bb.at, !inline_history !785

bb.as:                                            ; preds = %bb.ar
  invoke void @__cxa_throw(ptr nonnull %i.cv, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.by unwind label %bb.at, !inline_history !785

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.aq
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %.sink.split120.i

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.065.i = phi i1 [ false, %bb.as ], [ true, %bb.ar ] ; 2 uses
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cy = load ptr, ptr %5, align 8, !tbaa !66    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.at
  call void @_ZdlPv(ptr noundef %i.cy) #37, !inline_history !785
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br i1 %.065.i, label %.sink.split120.i, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br i1 %.065.i, label %.sink.split120.i, label %.body

bb.au:                                            ; preds = %bb.i, %bb.i, %bb.i, %bb.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.o, i64 282
  %i.dc = load i8, ptr %i.db, align 2, !tbaa !790, !range !90, !noundef !91
  %i.dd = trunc nuw i8 %i.dc to i1
  %.not.i = icmp ne i8 %i.p, 25
  %or.cond.not.i = or i1 %.not.i, %i.dd
  %14 = getelementptr inbounds nuw i8, ptr %i.o, i64 284
  %15 = load i8, ptr %14, align 4
  %16 = icmp ugt i8 %15, 13
  %or.cond114.i = select i1 %or.cond.not.i, i1 %16, i1 false
  br i1 %or.cond114.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.de = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr @_ZN6duckdb28ArrowVarcharToStringViewData10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm, ptr %i.de, align 8, !tbaa !787
  %i.df = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_ZN6duckdb28ArrowVarcharToStringViewData6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm, ptr %i.df, align 8, !tbaa !166
  %i.dg = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr @_ZN6duckdb28ArrowVarcharToStringViewData8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray, ptr %i.dg, align 8, !tbaa !167
  br label %_ZN6duckdbL26InitializeFunctionPointersERNS_15ArrowAppendDataERKNS_11LogicalTypeE.exit

bb.aw:                                            ; preds = %bb.au
  %i.dh = getelementptr inbounds nuw i8, ptr %i.o, i64 280
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !168
  %i.dj = icmp eq i8 %i.di, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  br i1 %i.dj, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store ptr @_ZN6duckdb16ArrowVarcharDataINS_8string_tENS_21ArrowVarcharConverterElE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm, ptr %i.dk, align 8, !tbaa !787
  store ptr @_ZN6duckdb16ArrowVarcharDataINS_8string_tENS_21ArrowVarcharConverterElE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm, ptr %i.dl, align 8, !tbaa !166
  store ptr @_ZN6duckdb16ArrowVarcharDataINS_8string_tENS_21ArrowVarcharConverterElE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray, ptr %i.dm, align 8, !tbaa !167
  br label %_ZN6duckdbL26InitializeFunctionPointersERNS_15ArrowAppendDataERKNS_11LogicalTypeE.exit

bb.ay:                                            ; preds = %bb.aw
  store ptr @_ZN6duckdb16ArrowVarcharDataINS_8string_tENS_21ArrowVarcharConverterEiE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm, ptr %i.dk, align 8, !tbaa !787
  store ptr @_ZN6duckdb16ArrowVarcharDataINS_8string_tENS_21ArrowVarcharConverterEiE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm, ptr %i.dl, align 8, !tbaa !166
  store ptr @_ZN6duckdb16ArrowVarcharDataINS_8string_tENS_21ArrowVarcharConverterEiE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray, ptr %i.dm, align 8, !tbaa !167
  br label %_ZN6duckdbL26InitializeFunctionPointersERNS_15ArrowAppendDataERKNS_11LogicalTypeE.exit

bb.az:                                            ; preds = %bb.i
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !132
  switch i8 %i.do, label %bb.bd [
    i8 2, label %bb.ba
    i8 4, label %bb.bb
    i8 6, label %bb.bc
  ]

bb.ba:                                            ; preds = %bb.az
  %i.dp = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr @_ZN6duckdb13ArrowEnumDataIhE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm, ptr %i.dp, align 8, !tbaa !787
  %i.dq = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_ZN6duckdb19ArrowScalarBaseDataIhhNS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm, ptr %i.dq, align 8, !tbaa !166
  %i.dr = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr @_ZN6duckdb13ArrowEnumDataIhE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray, ptr %i.dr, align 8, !tbaa !167
  br label %_ZN6duckdbL26InitializeFunctionPointersERNS_15ArrowAppendDataERKNS_11LogicalTypeE.exit

bb.bb:                                            ; preds = %bb.az
  %i.ds = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr @_ZN6duckdb13ArrowEnumDataItE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm, ptr %i.ds, align 8, !tbaa !787
  %i.dt = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_ZN6duckdb19ArrowScalarBaseDataIttNS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm, ptr %i.dt, align 8, !tbaa !166
  %i.du = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr @_ZN6duckdb13ArrowEnumDataItE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray, ptr %i.du, align 8, !tbaa !167
  br label %_ZN6duckdbL26InitializeFunctionPointersERNS_15ArrowAppendDataERKNS_11LogicalTypeE.exit

bb.bc:                                            ; preds = %bb.az
  %i.dv = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr @_ZN6duckdb13ArrowEnumDataIjE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm, ptr %i.dv, align 8, !tbaa !787
  %i.dw = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_ZN6duckdb19ArrowScalarBaseDataIjjNS_20ArrowScalarConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm, ptr %i.dw, align 8, !tbaa !166
  %i.dx = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr @_ZN6duckdb13ArrowEnumDataIjE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray, ptr %i.dx, align 8, !tbaa !167
  br label %_ZN6duckdbL26InitializeFunctionPointersERNS_15ArrowAppendDataERKNS_11LogicalTypeE.exit

bb.bd:                                            ; preds = %bb.az
  %i.dy = call ptr @__cxa_allocate_exception(i64 16) #34, !inline_history !785 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.79, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.be unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.thread.i, !inline_history !785

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.bf unwind label %bb.bg, !inline_history !785

bb.bf:                                            ; preds = %bb.be
  invoke void @__cxa_throw(ptr nonnull %i.dy, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.by unwind label %bb.bg, !inline_history !785

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.thread.i: ; preds = %bb.bd
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %.sink.split120.i

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.063.i = phi i1 [ false, %bb.bf ], [ true, %bb.be ] ; 2 uses
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.eb = load ptr, ptr %7, align 8, !tbaa !66    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i: ; preds = %bb.bg
  call void @_ZdlPv(ptr noundef %i.eb) #37, !inline_history !785
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br i1 %.063.i, label %.sink.split120.i, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br i1 %.063.i, label %.sink.split120.i, label %.body

bb.bh:                                            ; preds = %bb.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr @_ZN6duckdb15ArrowScalarDataINS_13ArrowIntervalENS_10interval_tENS_22ArrowIntervalConverterEE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm, ptr %i.ee, align 8, !tbaa !787
  %i.ef = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_ZN6duckdb19ArrowScalarBaseDataINS_13ArrowIntervalENS_10interval_tENS_22ArrowIntervalConverterEE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm, ptr %i.ef, align 8, !tbaa !166
  %i.eg = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr @_ZN6duckdb15ArrowScalarDataINS_13ArrowIntervalENS_10interval_tENS_22ArrowIntervalConverterEE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray, ptr %i.eg, align 8, !tbaa !167
  br label %_ZN6duckdbL26InitializeFunctionPointersERNS_15ArrowAppendDataERKNS_11LogicalTypeE.exit

bb.bi:                                            ; preds = %bb.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr @_ZN6duckdb14ArrowUnionData10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm, ptr %i.eh, align 8, !tbaa !787
  %i.ei = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_ZN6duckdb14ArrowUnionData6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm, ptr %i.ei, align 8, !tbaa !166
  %i.ej = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr @_ZN6duckdb14ArrowUnionData8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray, ptr %i.ej, align 8, !tbaa !167
  br label %_ZN6duckdbL26InitializeFunctionPointersERNS_15ArrowAppendDataERKNS_11LogicalTypeE.exit

bb.bj:                                            ; preds = %bb.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr @_ZN6duckdb15ArrowStructData10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm, ptr %i.ek, align 8, !tbaa !787
  %i.el = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_ZN6duckdb15ArrowStructData6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm, ptr %i.el, align 8, !tbaa !166
  %i.em = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr @_ZN6duckdb15ArrowStructData8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray, ptr %i.em, align 8, !tbaa !167
  br label %_ZN6duckdbL26InitializeFunctionPointersERNS_15ArrowAppendDataERKNS_11LogicalTypeE.exit

bb.bk:                                            ; preds = %bb.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr @_ZN6duckdb22ArrowFixedSizeListData10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm, ptr %i.en, align 8, !tbaa !787
  %i.eo = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_ZN6duckdb22ArrowFixedSizeListData6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm, ptr %i.eo, align 8, !tbaa !166
  %i.ep = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr @_ZN6duckdb22ArrowFixedSizeListData8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray, ptr %i.ep, align 8, !tbaa !167
  br label %_ZN6duckdbL26InitializeFunctionPointersERNS_15ArrowAppendDataERKNS_11LogicalTypeE.exit

bb.bl:                                            ; preds = %bb.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.o, i64 281
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !791, !range !90, !noundef !91
  %i.es = trunc nuw i8 %i.er to i1
  %i.et = getelementptr inbounds nuw i8, ptr %i.o, i64 284
  %i.eu = load i8, ptr %i.et, align 4
  %i.ev = icmp ugt i8 %i.eu, 13
  %or.cond114.i.a = select i1 %i.es, i1 %i.ev, i1 false
  %i.ew = getelementptr inbounds nuw i8, ptr %i.o, i64 280
  %i.ex = load i8, ptr %i.ew, align 8, !tbaa !168
  %i.ey = icmp eq i8 %i.ex, 1                     ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 4 uses
  br i1 %or.cond114.i.a, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  br i1 %i.ey, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store ptr @_ZN6duckdb17ArrowListViewDataIlE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm, ptr %i.ez, align 8, !tbaa !787
  store ptr @_ZN6duckdb17ArrowListViewDataIlE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm, ptr %i.fa, align 8, !tbaa !166
  store ptr @_ZN6duckdb17ArrowListViewDataIlE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray, ptr %i.fb, align 8, !tbaa !167
  br label %_ZN6duckdbL26InitializeFunctionPointersERNS_15ArrowAppendDataERKNS_11LogicalTypeE.exit

bb.bo:                                            ; preds = %bb.bm
  store ptr @_ZN6duckdb17ArrowListViewDataIiE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm, ptr %i.ez, align 8, !tbaa !787
  store ptr @_ZN6duckdb17ArrowListViewDataIiE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm, ptr %i.fa, align 8, !tbaa !166
  store ptr @_ZN6duckdb17ArrowListViewDataIiE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray, ptr %i.fb, align 8, !tbaa !167
  br label %_ZN6duckdbL26InitializeFunctionPointersERNS_15ArrowAppendDataERKNS_11LogicalTypeE.exit

bb.bp:                                            ; preds = %bb.bl
  br i1 %i.ey, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store ptr @_ZN6duckdb13ArrowListDataIlE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm, ptr %i.ez, align 8, !tbaa !787
  store ptr @_ZN6duckdb13ArrowListDataIlE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm, ptr %i.fa, align 8, !tbaa !166
  store ptr @_ZN6duckdb13ArrowListDataIlE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray, ptr %i.fb, align 8, !tbaa !167
  br label %_ZN6duckdbL26InitializeFunctionPointersERNS_15ArrowAppendDataERKNS_11LogicalTypeE.exit

bb.br:                                            ; preds = %bb.bp
  store ptr @_ZN6duckdb13ArrowListDataIiE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm, ptr %i.ez, align 8, !tbaa !787
  store ptr @_ZN6duckdb13ArrowListDataIiE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm, ptr %i.fa, align 8, !tbaa !166
  store ptr @_ZN6duckdb13ArrowListDataIiE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray, ptr %i.fb, align 8, !tbaa !167
  br label %_ZN6duckdbL26InitializeFunctionPointersERNS_15ArrowAppendDataERKNS_11LogicalTypeE.exit

bb.bs:                                            ; preds = %bb.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr @_ZN6duckdb12ArrowMapDataIiE10InitializeERNS_15ArrowAppendDataERKNS_11LogicalTypeEm, ptr %i.fc, align 8, !tbaa !787
  %i.fd = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_ZN6duckdb12ArrowMapDataIiE6AppendERNS_15ArrowAppendDataERNS_6VectorEmmm, ptr %i.fd, align 8, !tbaa !166
  %i.fe = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr @_ZN6duckdb12ArrowMapDataIiE8FinalizeERNS_15ArrowAppendDataERKNS_11LogicalTypeEP10ArrowArray, ptr %i.fe, align 8, !tbaa !167
  br label %_ZN6duckdbL26InitializeFunctionPointersERNS_15ArrowAppendDataERKNS_11LogicalTypeE.exit

bb.bt:                                            ; preds = %bb.i
  %i.ff = call ptr @__cxa_allocate_exception(i64 16) #34, !inline_history !785 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.80, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.bu unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread.i, !inline_history !785

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  invoke void @_ZNK6duckdb11LogicalType8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.bv unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.thread.i, !inline_history !785
end_hunk_0
