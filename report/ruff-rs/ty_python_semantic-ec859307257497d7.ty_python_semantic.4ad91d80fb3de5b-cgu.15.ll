Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.15?download=true
inline.NumInlined: 7229
inline.NumDeleted: 2860
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RNCNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB4_3Mro15of_dynamic_enum0B8_:bb.a
  store i64 2, ptr %i.l, align 8, !alias.scope !5318, !noalias !5319
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  invoke void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType6object(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.aj, ptr noundef nonnull %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ag, ptr noundef nonnull align 4 %i.ai)
          to label %.noexc9 unwind label %.loopexit

.noexc9:                                          ; preds = %bb.h
  store i8 3, ptr %i.e, align 8, !noalias !5320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx.i2.i, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.k, i64 16, i1 false), !alias.scope !5321, !noalias !5322
  store i64 0, ptr %i.ak, align 8, !alias.scope !5323, !noalias !5324
  store i64 3, ptr %.sroa.48.0..sroa_idx.i1.i, align 8, !alias.scope !5323, !noalias !5324
  store i8 5, ptr %.sroa.44.0..sroa.59.0..sroa_idx.i2.sroa_idx.i, align 8, !alias.scope !5308, !noalias !5324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa.59.0..sroa_idx.i2.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !noalias !5325
  store i64 1, ptr %i.l, align 8, !alias.scope !5323, !noalias !5324
  br label %bb.i

._crit_edge:                                      ; preds = %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.bf = invoke { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseE16into_boxed_sliceBJ_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
          to label %_RNvXs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_3MroINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB7_10class_base9ClassBaseEE4from.exit unwind label %.loopexit.split-lp

bb.i:                                             ; preds = %.noexc9, %.noexc8, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false)
  %i.bg = load i64, ptr %i.j, align 8, !range !54, !alias.scope !5326, !noalias !5327, !noundef !8
  %i.bh = load i32, ptr %i.aq, align 8, !range !55 ; 3 uses
  %i.bi = load i32, ptr %i.ar, align 4, !range !11 ; 7 uses
  %i.bj = load i32, ptr %i.as, align 8            ; 7 uses
  %i.bk = load ptr, ptr %i.au, align 8            ; 9 uses
  %i.bl = load i32, ptr %i.av, align 8            ; 3 uses
  %i.bm = load i32, ptr %i.aw, align 4            ; 2 uses
  %.not26.i.i.i = icmp eq i32 %i.bl, 0
  %.cast = ptrtoint ptr %i.bk to i64              ; 2 uses
  %.promoted = load i8, ptr %i.ap, align 4
  %.promoted48 = load ptr, ptr %i.ax, align 8
  %.promoted49 = load ptr, ptr %i.ay, align 8
  %i.bn = icmp eq i32 %i.bh, 0
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %bb.i
  %i.bo = phi ptr [ %.promoted49, %bb.i ], [ %i.dd, %.backedge ] ; 4 uses
  %i.bp = phi ptr [ %.promoted48, %bb.i ], [ %i.de, %.backedge ] ; 5 uses
  %i.bq = phi i8 [ %.promoted, %bb.i ], [ %i.df, %.backedge ] ; 2 uses
  switch i64 %i.bg, label %default.unreachable [
    i64 0, label %bb.k
    i64 1, label %bb.m
    i64 2, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %i.br = load i64, ptr %i.ao, align 8, !alias.scope !5328, !noalias !5329, !noundef !8 ; 4 uses
  %.not.i.i = icmp eq i64 %i.br, %.cast
  br i1 %.not.i.i, label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = add nuw nsw i64 %i.br, 1
  store i64 %i.bs, ptr %i.ao, align 8, !alias.scope !5328, !noalias !5329
  %i.bt = icmp ult i64 %i.br, 2
  call void @llvm.assume(i1 %i.bt)
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.br
  br label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit

bb.m:                                             ; preds = %bb.j
  %i.bv = load i64, ptr %i.ao, align 8, !alias.scope !5330, !noalias !5331, !noundef !8 ; 4 uses
  %.not.i1.i = icmp eq i64 %i.bv, %.cast
  br i1 %.not.i1.i, label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = add nuw nsw i64 %i.bv, 1
  store i64 %i.bw, ptr %i.ao, align 8, !alias.scope !5330, !noalias !5331
  %i.bx = icmp ult i64 %i.bv, 3
  call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.bv
  br label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit

bb.o:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !5332)
  %i.bz = trunc nuw i8 %i.bq to i1
  br i1 %i.bz, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.ap, align 4, !alias.scope !5332, !noalias !5333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5334
  call void @llvm.experimental.noalias.scope.decl(metadata !5335)
  call void @llvm.experimental.noalias.scope.decl(metadata !5336)
  br i1 %i.bn, label %bb.q, label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread41.sink.split

bb.q:                                             ; preds = %bb.p
  %i.ca = load ptr, ptr %i.ao, align 8, !alias.scope !5337, !noalias !5338, !nonnull !8, !noundef !8
  invoke fastcc void @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral29apply_optional_specialization(ptr noalias noundef align 4 captures(address) dereferenceable(12) %i.at, i32 noundef %i.bi, i32 noundef %i.bj, ptr noundef nonnull %i.ca, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.bk, i32 noundef %i.bl, i32 %i.bm)
          to label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread41 unwind label %bb.ab

_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread41.sink.split: ; preds = %bb.p
  store i32 %i.bh, ptr %i.at, align 4, !alias.scope !5335, !noalias !5339
  store i32 %i.bi, ptr %.sroa.420.0..sroa_idx.i.i, align 4, !alias.scope !5335, !noalias !5339
  store i32 %i.bj, ptr %.sroa.521.0..sroa_idx.i.i, align 4, !alias.scope !5335, !noalias !5339
  br label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread41

_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread41: ; preds = %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread41.sink.split, %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.12, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.12.0..sroa_idx33, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5334
  br label %bb.ac

bb.r:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !5340)
  %i.cb = load ptr, ptr %i.ao, align 8, !alias.scope !5340, !nonnull !8, !noundef !8 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5341)
  %.not.i.i19 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i19, label %bb.s, label %.noexc18

bb.s:                                             ; preds = %bb.r
  switch i32 %i.bh, label %default.unreachable [
    i32 0, label %bb.t
    i32 1, label %bb.u
    i32 2, label %bb.v
    i32 3, label %bb.w
    i32 4, label %bb.x
  ]

bb.t:                                             ; preds = %bb.s
  br i1 %.not26.i.i.i, label %bb.z, label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.cc = invoke noundef nonnull align 8 ptr @_RNvMsg_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literalNtB5_19DynamicClassLiteral7try_mro(i32 noundef %i.bi, i32 noundef %i.bj, ptr noundef nonnull %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.bk)
          to label %.noexc21 unwind label %bb.ab  ; 3 uses

.noexc21:                                         ; preds = %bb.u
  %i.cd = load i64, ptr %i.cc, align 8, !range !56, !noalias !5342, !noundef !8
  %.not25.i.i.i = icmp eq i64 %i.cd, -1           ; 2 uses
  %..i.i.i = select i1 %.not25.i.i.i, i64 8, i64 24
  %.56.i.i.i = select i1 %.not25.i.i.i, i64 16, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 %..i.i.i
  %i.cf = getelementptr i8, ptr %i.cc, i64 %.56.i.i.i
  br label %_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i.i

bb.v:                                             ; preds = %bb.s
  %i.cg = invoke noundef nonnull align 8 ptr @_RNvMsi_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tupleNtB5_24DynamicNamedTupleLiteral3mro(i32 noundef %i.bi, i32 noundef %i.bj, ptr noundef nonnull %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.bk)
          to label %.noexc22 unwind label %bb.ab  ; 2 uses

.noexc22:                                         ; preds = %bb.v
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  br label %_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i.i

bb.w:                                             ; preds = %bb.s
  %i.ci = invoke noundef nonnull align 8 ptr @_RNvMsl_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dictNtB5_23DynamicTypedDictLiteral3mro(i32 noundef %i.bi, i32 noundef %i.bj, ptr noundef nonnull %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.bk)
          to label %.noexc23 unwind label %bb.ab  ; 2 uses

.noexc23:                                         ; preds = %bb.w
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  br label %_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i.i

bb.x:                                             ; preds = %bb.s
  %i.ck = invoke noundef nonnull align 8 ptr @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literalNtB5_18DynamicEnumLiteral7try_mro(i32 noundef %i.bi, i32 noundef %i.bj, ptr noundef nonnull %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.bk)
          to label %.noexc24 unwind label %bb.ab  ; 3 uses

.noexc24:                                         ; preds = %bb.x
  %i.cl = load i64, ptr %i.ck, align 8, !range !56, !noalias !5342, !noundef !8
  %.not.i.i.i = icmp eq i64 %i.cl, -1             ; 2 uses
  %.57.i.i.i = select i1 %.not.i.i.i, i64 8, i64 24
  %.58.i.i.i = select i1 %.not.i.i.i, i64 16, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.57.i.i.i
  %i.cn = getelementptr i8, ptr %i.ck, i64 %.58.i.i.i
  br label %_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i.i

bb.y:                                             ; preds = %bb.t
  %i.co = invoke { i32, i32 } @_RNvMs1_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB5_14Specialization36tuple_runtime_element_specialization(i32 noundef range(i32 1, 0) %i.bl, i32 noundef %i.bm, ptr noundef nonnull %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.bk)
          to label %.noexc25 unwind label %bb.ab  ; 2 uses

.noexc25:                                         ; preds = %bb.y
  %i.cp = extractvalue { i32, i32 } %i.co, 0
  %i.cq = extractvalue { i32, i32 } %i.co, 1
  br label %bb.z

bb.z:                                             ; preds = %.noexc25, %bb.t
  %.sroa.3.0.i.i.i = phi i32 [ %i.cq, %.noexc25 ], [ undef, %bb.t ]
  %.sroa.011.0.i.i.i = phi i32 [ %i.cp, %.noexc25 ], [ 0, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5343
  store i32 %i.bi, ptr %i.c, align 4, !noalias !5344
  store i32 %i.bj, ptr %i.az, align 4, !noalias !5344
  store i32 %.sroa.011.0.i.i.i, ptr %i.b, align 4, !noalias !5344
  store i32 %.sroa.3.0.i.i.i, ptr %i.ba, align 4, !noalias !5344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5344
  store ptr %i.cb, ptr %i.a, align 8, !noalias !5344
  store ptr %i.bk, ptr %i.bb, align 8, !noalias !5344
  store ptr %i.cb, ptr %i.bc, align 8, !noalias !5344
  store ptr %i.bk, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5344
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5344
  store ptr %i.b, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5344
  %i.cr = invoke { i64, ptr } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6result6ResultRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroRNtB2y_14StaticMroErrorEDNtNtB2C_2db2DbEL_NCNvNvMsp_NtNtB2A_5class14static_literalNtB4d_18StaticClassLiteral7try_mro8try_mro_0E0B1T_EB2C_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @534, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %.noexc26 unwind label %bb.ab  ; 2 uses

.noexc26:                                         ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5343
  %i.cs = extractvalue { i64, ptr } %i.cr, 0      ; 2 uses
  %i.ct = extractvalue { i64, ptr } %i.cr, 1      ; 3 uses
  %1 = trunc nuw i64 %i.cs to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ct) ]
  %spec.select.i.i = select i1 %1, i64 40, i64 8
  %spec.select8.idx.i.i = shl i64 %i.cs, 5
  %spec.select8.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 %spec.select8.idx.i.i
  %i.cu = getelementptr i8, ptr %i.ct, i64 %spec.select.i.i
  br label %_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i.i

_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i.i: ; preds = %.noexc26, %.noexc24, %.noexc23, %.noexc22, %.noexc21
  %.val35.i.sink.in.i.i = phi ptr [ %i.cf, %.noexc21 ], [ %i.ch, %.noexc22 ], [ %i.cj, %.noexc23 ], [ %i.cn, %.noexc24 ], [ %i.cu, %.noexc26 ]
  %.val34.i.sink.in.i.i = phi ptr [ %i.ce, %.noexc21 ], [ %i.cg, %.noexc22 ], [ %i.ci, %.noexc23 ], [ %i.cm, %.noexc24 ], [ %spec.select8.i.i, %.noexc26 ]
  %.val34.i.sink.i.i = load ptr, ptr %.val34.i.sink.in.i.i, align 8, !noalias !5342, !nonnull !8, !noundef !8 ; 2 uses
  %.val35.i.sink.i.i = load i64, ptr %.val35.i.sink.in.i.i, align 8, !noalias !5342, !noundef !8 ; 2 uses
  %.idx60.i.i.i = shl nuw nsw i64 %.val35.i.sink.i.i, 4
  %i.cv = getelementptr inbounds nuw i8, ptr %.val34.i.sink.i.i, i64 %.idx60.i.i.i ; 2 uses
  %.sink.i.i.i = icmp eq i64 %.val35.i.sink.i.i, 0
  %spec.select30.idx.i.i.i = select i1 %.sink.i.i.i, i64 0, i64 16
  %spec.select30.i.i.i = getelementptr inbounds nuw i8, ptr %.val34.i.sink.i.i, i64 %spec.select30.idx.i.i.i
  store ptr %i.cv, ptr %i.ay, align 8, !alias.scope !5345, !noalias !5346
  br label %.noexc18

.noexc18:                                         ; preds = %_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i.i, %bb.r
  %i.cw = phi ptr [ %i.cv, %_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i.i ], [ %i.bo, %bb.r ] ; 2 uses
  %i.cx = phi ptr [ %spec.select30.i.i.i, %_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i.i ], [ %i.bp, %bb.r ] ; 3 uses
  %i.cy = icmp eq ptr %i.cx, %i.cw
  br i1 %i.cy, label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %.noexc18
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  store ptr %i.cz, ptr %i.ax, align 8
  br label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit

bb.ab:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.q, %bb.af, %bb.ac
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %bb.n, %bb.l, %bb.aa
  %.sink60 = phi ptr [ %i.by, %bb.n ], [ %i.bu, %bb.l ], [ %i.cx, %bb.aa ] ; 2 uses
  %i.db = phi ptr [ %i.bo, %bb.n ], [ %i.bo, %bb.l ], [ %i.cw, %bb.aa ]
  %i.dc = phi ptr [ %i.bp, %bb.n ], [ %i.bp, %bb.l ], [ %i.cz, %bb.aa ]
  %.sroa.0.038 = load i8, ptr %.sink60, align 4   ; 2 uses
  %.sroa.12.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %.sink60, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.12, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.12.0..sroa_idx31, i64 15, i1 false)
  %.not = icmp eq i8 %.sroa.0.038, -1
  br i1 %.not, label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread41, %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit
  %i.dd = phi ptr [ %i.bo, %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread41 ], [ %i.db, %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit ]
  %i.de = phi ptr [ %i.bp, %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread41 ], [ %i.dc, %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit ]
  %i.df = phi i8 [ 1, %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread41 ], [ %i.bq, %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit ]
  %.sroa.0.03844 = phi i8 [ 3, %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread41 ], [ %.sroa.0.038, %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %.sroa.0.03844, ptr %i.h, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.12, i64 15, i1 false)
  %i.dg = invoke noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.h)
          to label %bb.ad unwind label %bb.ab

_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread: ; preds = %.noexc18, %bb.k, %bb.m, %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dh = icmp eq ptr %i.bd, %i.ab
  br i1 %i.dh, label %._crit_edge, label %bb.e

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.dg, label %.backedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.di = load i64, ptr %i.t, align 8, !alias.scope !5347, !noalias !5348, !noundef !8 ; 3 uses
  %i.dj = load i64, ptr %i.o, align 8, !range !32, !alias.scope !5347, !noalias !5348, !noundef !8
  %i.dk = icmp eq i64 %i.di, %i.dj
  br i1 %i.dk, label %bb.af, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseE8push_mutBK_.exit

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseE8push_mutBK_.exit unwind label %bb.ab

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseE8push_mutBK_.exit: ; preds = %bb.af, %bb.ae
  %i.dl = load ptr, ptr %i.s, align 8, !alias.scope !5347, !noalias !5348, !nonnull !8, !noundef !8
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.dl, i64 %i.di ; 2 uses
  store i8 %.sroa.0.03844, ptr %i.dm, align 4
  %.sroa.5.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5.0..sroa_idx37, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.12, i64 15, i1 false)
  %i.dn = add i64 %i.di, 1
  store i64 %i.dn, ptr %i.t, align 8, !alias.scope !5347, !noalias !5348
  br label %.backedge

.backedge:                                        ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseE8push_mutBK_.exit, %bb.ad
  br label %bb.j

bb.ag:                                            ; preds = %bb.c, %bb.ai
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51
  unreachable

_RNvXs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_3MroINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB7_10class_base9ClassBaseEE4from.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret { ptr, i64 } %i.bf

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit: ; preds = %bb.c
  br i1 %.sroa.02.0, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit
  resume { ptr, i32 } %.pn

bb.ai:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.o) #50
          to label %bb.ah unwind label %bb.ag
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMsF_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_17ModuleLiteralType30available_submodule_attributess0_0B9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = alloca [72 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB2_10ModuleName10components(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.d unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.loopexit.split-lp:                               ; preds = %bb.a, %bb.l, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.d = load i8, ptr %i.c, align 1, !range !57, !alias.scope !5380, !noundef !8
  %i.e = icmp eq i8 %i.d, -40
  br i1 %i.e, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameECsoTR8nlGN3X_18ty_python_semantic.exit, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !alias.scope !5380, !nonnull !8, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !5380, !noundef !8
  invoke void @_RNvNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noundef nonnull %i.f, i64 noundef %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.s

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5381)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  %i.j = load i8, ptr %i.i, align 1, !range !12, !alias.scope !5381, !noundef !8
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val.i = load ptr, ptr %i.l, align 8, !alias.scope !5381, !nonnull !8, !noundef !8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val1.i = load i64, ptr %i.m, align 8, !alias.scope !5381, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5382)
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !5383, !noalias !5384, !noundef !8 ; 4 uses
  %.promoted.i.i = load i64, ptr %i.n, align 8, !alias.scope !5383, !noalias !5384 ; 2 uses
  %i.q = icmp ult i64 %i.p, %.promoted.i.i
  br i1 %i.q, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsoTR8nlGN3X_18ty_python_semantic.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %.not.i.i = icmp ugt i64 %i.p, %.val1.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.t = load i8, ptr %i.s, align 8, !alias.scope !5383, !noalias !5384 ; 2 uses
  %i.u = zext nneg i8 %i.t to i64                 ; 4 uses
  %i.v = icmp ult i8 %i.t, 5
  br i1 %.not.i.i, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsoTR8nlGN3X_18ty_python_semantic.exit.i, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.w = getelementptr i8, ptr %i.r, i64 %i.u
  %i.x = getelementptr i8, ptr %i.w, i64 -1
  tail call void @llvm.assume(i1 %i.v)
  %.pre.i.i = load i8, ptr %i.x, align 1, !alias.scope !5383, !noalias !5384 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph.split.i.i
  %i.y = phi i64 [ %.promoted.i.i, %.lr.ph.split.i.i ], [ %i.an, %bb.j ] ; 3 uses
  %i.z = sub nuw i64 %i.p, %i.y                   ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.y ; 2 uses
  %i.ab = icmp samesign ult i64 %i.z, 16
  br i1 %i.ab, label %.preheader.i.i.i, label %bb.g

.preheader.i.i.i:                                 ; preds = %bb.f
  %.not.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ac = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef range(i64 0, -9223372036854775808) %i.z)
          to label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i unwind label %.loopexit

._crit_edge.i.i.i:                                ; preds = %bb.h, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.z, %bb.h ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.h ], [ 1, %.lr.ph.i.i.i ]
  %i.ad = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.ae = insertvalue { i64, i64 } %i.ad, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.h
end_hunk_0
begin_hunk_1_@_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB2_3Mro16dynamic_fallback:bb.a
  invoke void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType20iter_mro_specialized(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.ag, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.ae, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, i32 noundef 0, i32 undef)
          to label %.noexc11 unwind label %.loopexit

.noexc11:                                         ; preds = %bb.j
  store i64 2, ptr %i.k, align 8, !alias.scope !5912, !noalias !5913
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  invoke void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType6object(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.af, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2)
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %bb.k
  store i8 3, ptr %i.e, align 8, !noalias !5914
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx.i2.i, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.o, i64 16, i1 false), !alias.scope !5915, !noalias !5916
  store i64 0, ptr %i.ag, align 8, !alias.scope !5917, !noalias !5918
  store i64 3, ptr %.sroa.48.0..sroa_idx.i1.i, align 8, !alias.scope !5917, !noalias !5918
  store i8 5, ptr %.sroa.44.0..sroa.59.0..sroa_idx.i2.sroa_idx.i, align 8, !alias.scope !5904, !noalias !5918
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa.59.0..sroa_idx.i2.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !noalias !5919
  store i64 1, ptr %i.k, align 8, !alias.scope !5917, !noalias !5918
  br label %bb.l

bb.l:                                             ; preds = %.noexc12, %.noexc11, %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i64 72, i1 false)
  %i.bf = load i64, ptr %i.j, align 8, !range !54, !alias.scope !5920, !noalias !5921, !noundef !8
  %i.bg = load i32, ptr %i.al, align 8, !range !55 ; 3 uses
  %i.bh = load i32, ptr %i.am, align 4, !range !11 ; 7 uses
  %i.bi = load i32, ptr %i.an, align 8            ; 7 uses
  %i.bj = load ptr, ptr %i.ap, align 8            ; 9 uses
  %i.bk = load i32, ptr %i.aq, align 8            ; 3 uses
  %i.bl = load i32, ptr %i.ar, align 4            ; 2 uses
  %.not26.i.i.i = icmp eq i32 %i.bk, 0
  %.cast = ptrtoint ptr %i.bj to i64              ; 2 uses
  %.promoted = load i8, ptr %i.ak, align 4
  %.promoted56 = load ptr, ptr %i.as, align 8
  %.promoted57 = load ptr, ptr %i.at, align 8
  %i.bm = icmp eq i32 %i.bg, 0
  br label %bb.m

bb.m:                                             ; preds = %.backedge, %bb.l
  %i.bn = phi ptr [ %.promoted57, %bb.l ], [ %i.dc, %.backedge ] ; 4 uses
  %i.bo = phi ptr [ %.promoted56, %bb.l ], [ %i.dd, %.backedge ] ; 5 uses
  %i.bp = phi i8 [ %.promoted, %bb.l ], [ %i.de, %.backedge ] ; 2 uses
  switch i64 %i.bf, label %default.unreachable [
    i64 0, label %bb.n
    i64 1, label %bb.p
    i64 2, label %bb.r
  ]

default.unreachable:                              ; preds = %bb.v, %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.bq = load i64, ptr %i.aj, align 8, !alias.scope !5922, !noalias !5923, !noundef !8 ; 4 uses
  %.not.i.i = icmp eq i64 %i.bq, %.cast
  br i1 %.not.i.i, label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = add nuw nsw i64 %i.bq, 1
  store i64 %i.br, ptr %i.aj, align 8, !alias.scope !5922, !noalias !5923
  %i.bs = icmp ult i64 %i.bq, 2
  call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.bq
  br label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit

bb.p:                                             ; preds = %bb.m
  %i.bu = load i64, ptr %i.aj, align 8, !alias.scope !5924, !noalias !5925, !noundef !8 ; 4 uses
  %.not.i1.i = icmp eq i64 %i.bu, %.cast
  br i1 %.not.i1.i, label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = add nuw nsw i64 %i.bu, 1
  store i64 %i.bv, ptr %i.aj, align 8, !alias.scope !5924, !noalias !5925
  %i.bw = icmp ult i64 %i.bu, 3
  call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.bu
  br label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit

bb.r:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !5926)
  %i.by = trunc nuw i8 %i.bp to i1
  br i1 %i.by, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 1, ptr %i.ak, align 4, !alias.scope !5926, !noalias !5927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5928
  call void @llvm.experimental.noalias.scope.decl(metadata !5929)
  call void @llvm.experimental.noalias.scope.decl(metadata !5930)
  br i1 %i.bm, label %bb.t, label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread49.sink.split

bb.t:                                             ; preds = %bb.s
  %i.bz = load ptr, ptr %i.aj, align 8, !alias.scope !5931, !noalias !5932, !nonnull !8, !noundef !8
  invoke fastcc void @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral29apply_optional_specialization(ptr noalias noundef align 4 captures(address) dereferenceable(12) %i.ao, i32 noundef %i.bh, i32 noundef %i.bi, ptr noundef nonnull %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.bj, i32 noundef %i.bk, i32 %i.bl)
          to label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread49 unwind label %bb.ae

_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread49.sink.split: ; preds = %bb.s
  store i32 %i.bg, ptr %i.ao, align 4, !alias.scope !5929, !noalias !5933
  store i32 %i.bh, ptr %.sroa.420.0..sroa_idx.i.i, align 4, !alias.scope !5929, !noalias !5933
  store i32 %i.bi, ptr %.sroa.521.0..sroa_idx.i.i, align 4, !alias.scope !5929, !noalias !5933
  br label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread49

_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread49: ; preds = %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread49.sink.split, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.12, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.12.0..sroa_idx39, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5928
  br label %bb.af

bb.u:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !5934)
  %i.ca = load ptr, ptr %i.aj, align 8, !alias.scope !5934, !nonnull !8, !noundef !8 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5935)
  %.not.i.i21 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i21, label %bb.v, label %.noexc20

bb.v:                                             ; preds = %bb.u
  switch i32 %i.bg, label %default.unreachable [
    i32 0, label %bb.w
    i32 1, label %bb.x
    i32 2, label %bb.y
    i32 3, label %bb.z
    i32 4, label %bb.aa
  ]

bb.w:                                             ; preds = %bb.v
  br i1 %.not26.i.i.i, label %bb.ac, label %bb.ab

bb.x:                                             ; preds = %bb.v
  %i.cb = invoke noundef nonnull align 8 ptr @_RNvMsg_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literalNtB5_19DynamicClassLiteral7try_mro(i32 noundef %i.bh, i32 noundef %i.bi, ptr noundef nonnull %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.bj)
          to label %.noexc23 unwind label %bb.ae  ; 3 uses

.noexc23:                                         ; preds = %bb.x
  %i.cc = load i64, ptr %i.cb, align 8, !range !56, !noalias !5936, !noundef !8
  %.not25.i.i.i = icmp eq i64 %i.cc, -1           ; 2 uses
  %..i.i.i = select i1 %.not25.i.i.i, i64 8, i64 24
  %.56.i.i.i = select i1 %.not25.i.i.i, i64 16, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %..i.i.i
  %i.ce = getelementptr i8, ptr %i.cb, i64 %.56.i.i.i
  br label %_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i.i

bb.y:                                             ; preds = %bb.v
  %i.cf = invoke noundef nonnull align 8 ptr @_RNvMsi_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tupleNtB5_24DynamicNamedTupleLiteral3mro(i32 noundef %i.bh, i32 noundef %i.bi, ptr noundef nonnull %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.bj)
          to label %.noexc24 unwind label %bb.ae  ; 2 uses

.noexc24:                                         ; preds = %bb.y
  %i.cg = getelementptr i8, ptr %i.cf, i64 8
  br label %_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i.i

bb.z:                                             ; preds = %bb.v
  %i.ch = invoke noundef nonnull align 8 ptr @_RNvMsl_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dictNtB5_23DynamicTypedDictLiteral3mro(i32 noundef %i.bh, i32 noundef %i.bi, ptr noundef nonnull %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.bj)
          to label %.noexc25 unwind label %bb.ae  ; 2 uses

.noexc25:                                         ; preds = %bb.z
  %i.ci = getelementptr i8, ptr %i.ch, i64 8
  br label %_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i.i

bb.aa:                                            ; preds = %bb.v
  %i.cj = invoke noundef nonnull align 8 ptr @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literalNtB5_18DynamicEnumLiteral7try_mro(i32 noundef %i.bh, i32 noundef %i.bi, ptr noundef nonnull %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.bj)
          to label %.noexc26 unwind label %bb.ae  ; 3 uses

.noexc26:                                         ; preds = %bb.aa
  %i.ck = load i64, ptr %i.cj, align 8, !range !56, !noalias !5936, !noundef !8
  %.not.i.i.i = icmp eq i64 %i.ck, -1             ; 2 uses
  %.57.i.i.i = select i1 %.not.i.i.i, i64 8, i64 24
  %.58.i.i.i = select i1 %.not.i.i.i, i64 16, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.57.i.i.i
  %i.cm = getelementptr i8, ptr %i.cj, i64 %.58.i.i.i
  br label %_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i.i

bb.ab:                                            ; preds = %bb.w
  %i.cn = invoke { i32, i32 } @_RNvMs1_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB5_14Specialization36tuple_runtime_element_specialization(i32 noundef range(i32 1, 0) %i.bk, i32 noundef %i.bl, ptr noundef nonnull %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.bj)
          to label %.noexc27 unwind label %bb.ae  ; 2 uses

.noexc27:                                         ; preds = %bb.ab
  %i.co = extractvalue { i32, i32 } %i.cn, 0
  %i.cp = extractvalue { i32, i32 } %i.cn, 1
  br label %bb.ac

bb.ac:                                            ; preds = %.noexc27, %bb.w
  %.sroa.3.0.i.i.i = phi i32 [ %i.cp, %.noexc27 ], [ undef, %bb.w ]
  %.sroa.011.0.i.i.i = phi i32 [ %i.co, %.noexc27 ], [ 0, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5937
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5937
  store i32 %i.bh, ptr %i.c, align 4, !noalias !5938
  store i32 %i.bi, ptr %i.au, align 4, !noalias !5938
  store i32 %.sroa.011.0.i.i.i, ptr %i.b, align 4, !noalias !5938
  store i32 %.sroa.3.0.i.i.i, ptr %i.av, align 4, !noalias !5938
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5938
  store ptr %i.ca, ptr %i.a, align 8, !noalias !5938
  store ptr %i.bj, ptr %i.aw, align 8, !noalias !5938
  store ptr %i.ca, ptr %i.ax, align 8, !noalias !5938
  store ptr %i.bj, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5938
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5938
  store ptr %i.b, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5938
  %i.cq = invoke { i64, ptr } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6result6ResultRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroRNtB2y_14StaticMroErrorEDNtNtB2C_2db2DbEL_NCNvNvMsp_NtNtB2A_5class14static_literalNtB4d_18StaticClassLiteral7try_mro8try_mro_0E0B1T_EB2C_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @534, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %.noexc28 unwind label %bb.ae  ; 2 uses

.noexc28:                                         ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5937
  %i.cr = extractvalue { i64, ptr } %i.cq, 0      ; 2 uses
  %i.cs = extractvalue { i64, ptr } %i.cq, 1      ; 3 uses
  %5 = trunc nuw i64 %i.cr to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cs) ]
  %spec.select.i.i = select i1 %5, i64 40, i64 8
  %spec.select8.idx.i.i = shl i64 %i.cr, 5
  %spec.select8.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 %spec.select8.idx.i.i
  %i.ct = getelementptr i8, ptr %i.cs, i64 %spec.select.i.i
  br label %_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i.i

_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i.i: ; preds = %.noexc28, %.noexc26, %.noexc25, %.noexc24, %.noexc23
  %.val35.i.sink.in.i.i = phi ptr [ %i.ce, %.noexc23 ], [ %i.cg, %.noexc24 ], [ %i.ci, %.noexc25 ], [ %i.cm, %.noexc26 ], [ %i.ct, %.noexc28 ]
  %.val34.i.sink.in.i.i = phi ptr [ %i.cd, %.noexc23 ], [ %i.cf, %.noexc24 ], [ %i.ch, %.noexc25 ], [ %i.cl, %.noexc26 ], [ %spec.select8.i.i, %.noexc28 ]
  %.val34.i.sink.i.i = load ptr, ptr %.val34.i.sink.in.i.i, align 8, !noalias !5936, !nonnull !8, !noundef !8 ; 2 uses
  %.val35.i.sink.i.i = load i64, ptr %.val35.i.sink.in.i.i, align 8, !noalias !5936, !noundef !8 ; 2 uses
  %.idx60.i.i.i = shl nuw nsw i64 %.val35.i.sink.i.i, 4
  %i.cu = getelementptr inbounds nuw i8, ptr %.val34.i.sink.i.i, i64 %.idx60.i.i.i ; 2 uses
  %.sink.i.i.i = icmp eq i64 %.val35.i.sink.i.i, 0
  %spec.select30.idx.i.i.i = select i1 %.sink.i.i.i, i64 0, i64 16
  %spec.select30.i.i.i = getelementptr inbounds nuw i8, ptr %.val34.i.sink.i.i, i64 %spec.select30.idx.i.i.i
  store ptr %i.cu, ptr %i.at, align 8, !alias.scope !5939, !noalias !5940
  br label %.noexc20

.noexc20:                                         ; preds = %_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i.i, %bb.u
  %i.cv = phi ptr [ %i.cu, %_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i.i ], [ %i.bn, %bb.u ] ; 2 uses
  %i.cw = phi ptr [ %spec.select30.i.i.i, %_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i.i ], [ %i.bo, %bb.u ] ; 3 uses
  %i.cx = icmp eq ptr %i.cw, %i.cv
  br i1 %i.cx, label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %.noexc20
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  store ptr %i.cy, ptr %i.as, align 8
  br label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.t, %bb.ai, %bb.af
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %bb.q, %bb.o, %bb.ad
  %.sink67 = phi ptr [ %i.bx, %bb.q ], [ %i.bt, %bb.o ], [ %i.cw, %bb.ad ] ; 2 uses
  %i.da = phi ptr [ %i.bn, %bb.q ], [ %i.bn, %bb.o ], [ %i.cv, %bb.ad ]
  %i.db = phi ptr [ %i.bo, %bb.q ], [ %i.bo, %bb.o ], [ %i.cy, %bb.ad ]
  %.sroa.032.0 = load i8, ptr %.sink67, align 4   ; 2 uses
  %.sroa.12.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %.sink67, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.12, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.12.0..sroa_idx37, i64 15, i1 false)
  %.not4 = icmp eq i8 %.sroa.032.0, -1
  br i1 %.not4, label %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread, label %bb.af

bb.af:                                            ; preds = %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread49, %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit
  %i.dc = phi ptr [ %i.bn, %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread49 ], [ %i.da, %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit ]
  %i.dd = phi ptr [ %i.bo, %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread49 ], [ %i.db, %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit ]
  %i.de = phi i8 [ 1, %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread49 ], [ %i.bp, %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit ]
  %.sroa.032.052 = phi i8 [ 3, %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread49 ], [ %.sroa.032.0, %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %.sroa.032.052, ptr %i.h, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.543.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.12, i64 15, i1 false)
  %i.df = invoke noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.h)
          to label %bb.ag unwind label %bb.ae

_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread: ; preds = %.noexc20, %bb.n, %bb.p, %_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB5_20ClassBaseMroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dg = icmp eq ptr %i.ay, %i.ab
  br i1 %i.dg, label %._crit_edge, label %bb.f

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.df, label %.backedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dh = load i64, ptr %i.w, align 8, !alias.scope !5941, !noalias !5942, !noundef !8 ; 3 uses
  %i.di = load i64, ptr %i.q, align 8, !range !32, !alias.scope !5941, !noalias !5942, !noundef !8
  %i.dj = icmp eq i64 %i.dh, %i.di
  br i1 %i.dj, label %bb.ai, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseE8push_mutBK_.exit

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseE8push_mutBK_.exit unwind label %bb.ae

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseE8push_mutBK_.exit: ; preds = %bb.ai, %bb.ah
  %i.dk = load ptr, ptr %i.v, align 8, !alias.scope !5941, !noalias !5942, !nonnull !8, !noundef !8
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.dh ; 2 uses
  store i8 %.sroa.032.052, ptr %i.dl, align 4
  %.sroa.543.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.543.0..sroa_idx44, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.12, i64 15, i1 false)
  %i.dm = add i64 %i.dh, 1
  store i64 %i.dm, ptr %i.w, align 8, !alias.scope !5941, !noalias !5942
  br label %.backedge

.backedge:                                        ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseE8push_mutBK_.exit, %bb.ag
  br label %bb.m

bb.aj:                                            ; preds = %bb.c, %bb.al
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51
  unreachable

_RNvXs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_3MroINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB7_10class_base9ClassBaseEE4from.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret { ptr, i64 } %i.be

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit: ; preds = %bb.c
  br i1 %.sroa.02.0, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.al, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit
  resume { ptr, i32 } %.pn

bb.al:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.q) #50
          to label %bb.ak unwind label %bb.aj
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB2_3Mro16of_dynamic_class(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 4                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 4                 ; 5 uses
  %i.g = alloca [16 x i8], align 4                ; 7 uses
  %i.h = alloca [16 x i8], align 4                ; 7 uses
  %i.i = alloca [16 x i8], align 4                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.3 = alloca [15 x i8], align 1            ; 2 uses
  %i.n = alloca [16 x i8], align 4                ; 5 uses
  %i.o = alloca [16 x i8], align 4                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 11 uses
  %i.q = alloca [32 x i8], align 8                ; 9 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 5 uses
  %i.t = alloca [72 x i8], align 8                ; 11 uses
  %i.u = alloca [32 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 4                ; 5 uses
  %i.x = alloca [16 x i8], align 4                ; 7 uses
  %i.y = alloca [32 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 15 uses
  %i.aa = alloca [16 x i8], align 4               ; 5 uses
  %.sroa.8 = alloca [16 x i8], align 4            ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %i.ad = alloca [16 x i8], align 8               ; 2 uses
  %i.ae = alloca [16 x i8], align 4               ; 4 uses
  %i.af = alloca [12 x i8], align 4               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 14 uses
  %i.ah = alloca [24 x i8], align 8               ; 12 uses
  %i.ai = alloca [12 x i8], align 4               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.aj = tail call { i32, i32 } @_RNvMsg_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literalNtB5_19DynamicClassLiteral5scope(i32 noundef %3, i32 noundef %4, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2) ; 2 uses
  %i.ak = extractvalue { i32, i32 } %i.aj, 0
  %i.al = extractvalue { i32, i32 } %i.aj, 1
  store i32 3, ptr %i.ai, align 4, !alias.scope !6016
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %i.ak, ptr %.sroa.45.0..sroa_idx.i, align 4, !alias.scope !6016
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 %i.al, ptr %.sroa.56.0..sroa_idx.i, align 4, !alias.scope !6016
  %i.am = tail call { ptr, i64 } @_RNvMsg_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literalNtB5_19DynamicClassLiteral14explicit_bases(i32 noundef %3, i32 noundef %4, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2) ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.am, 1      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.an, i1 noundef zeroext false, i64 noundef 4, i64 noundef 16)
  %i.ao = load i64, ptr %i.j, align 8, !range !35, !noundef !8
  %i.ap = trunc nuw i64 %i.ao to i1
  br i1 %i.ap, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !66, !noundef !8
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.at = load i64, ptr %i.as, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ar, i64 %i.at) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.au = extractvalue { ptr, i64 } %i.am, 0      ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !range !32, !noundef !8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !8, !noundef !8
  %i.az = icmp ule i64 %i.an, %i.aw
  tail call void @llvm.assume(i1 %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 %i.aw, ptr %i.ah, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 6 uses
  store ptr %i.ay, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 7 uses
  store i64 0, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i64 0, ptr %i.ag, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 4 uses
  store i64 0, ptr %i.bd, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  %.idx = shl nuw nsw i64 %i.an, 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx
  %i.bf = icmp eq i64 %i.an, 0
  br i1 %i.bf, label %.thread125.thread, label %.lr.ph
end_hunk_1
begin_hunk_2_@_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instanceNtB5_17KnownInstanceType5class:bb.a
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
    i32 9, label %bb.j
    i32 10, label %bb.k
    i32 11, label %bb.l
    i32 12, label %bb.l
    i32 13, label %bb.l
    i32 14, label %bb.l
    i32 15, label %bb.m
    i32 16, label %bb.n
    i32 17, label %bb.o
    i32 18, label %bb.p
    i32 19, label %bb.q
    i32 20, label %bb.r
    i32 21, label %bb.s
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !range !11, !noundef !8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 4, !noundef !8 ; 2 uses
  %i.i = tail call noundef zeroext i1 @_RNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_15TypeVarInstance12is_paramspec(i32 noundef %i.f, i32 noundef %i.h, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
  br i1 %i.i, label %bb.t, label %bb.u

bb.d:                                             ; preds = %bb.a
  %i.j = tail call { i32, i32 } @_RNvMst_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasType14specialization(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
  %i.k = extractvalue { i32, i32 } %i.j, 0
  %.not = icmp eq i32 %i.k, 0
  %. = select i1 %.not, i8 67, i8 38
  br label %bb.t

bb.e:                                             ; preds = %bb.a
  br label %bb.t

bb.f:                                             ; preds = %bb.a
  br label %bb.t

bb.g:                                             ; preds = %bb.a
  br label %bb.t

bb.h:                                             ; preds = %bb.a
  br label %bb.t

bb.i:                                             ; preds = %bb.a
  br label %bb.t

bb.j:                                             ; preds = %bb.a
  br label %bb.t

bb.k:                                             ; preds = %bb.a
  br label %bb.t

bb.l:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.t

bb.m:                                             ; preds = %bb.a
  br label %bb.t

bb.n:                                             ; preds = %bb.a
  br label %bb.t

bb.o:                                             ; preds = %bb.a
  br label %bb.t

bb.p:                                             ; preds = %bb.a
  br label %bb.t

bb.q:                                             ; preds = %bb.a
  br label %bb.t

bb.r:                                             ; preds = %bb.a
  br label %bb.t

bb.s:                                             ; preds = %bb.a
  br label %bb.t

bb.t:                                             ; preds = %bb.c, %bb.u, %bb.d, %bb.a, %bb.a, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.sroa.0.0 = phi i8 [ 42, %bb.s ], [ %.1, %bb.u ], [ %., %bb.d ], [ 60, %bb.c ], [ 58, %bb.a ], [ 58, %bb.a ], [ 56, %bb.e ], [ 87, %bb.f ], [ 95, %bb.g ], [ 96, %bb.h ], [ 97, %bb.i ], [ 98, %bb.j ], [ 44, %bb.k ], [ 38, %bb.l ], [ 9, %bb.m ], [ 69, %bb.n ], [ 80, %bb.o ], [ 75, %bb.p ], [ 94, %bb.q ], [ 12, %bb.r ]
  ret i8 %.sroa.0.0

bb.u:                                             ; preds = %bb.c
  %i.l = tail call noundef zeroext i1 @_RNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_15TypeVarInstance15is_typevartuple(i32 noundef %i.f, i32 noundef %i.h, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
  %.1 = select i1 %i.l, i8 65, i8 59
  br label %bb.t
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_11MroIterator29full_mro_except_first_element(ptr noalias nofree noundef nonnull align 8 captures(ret: address, provenance) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  %i.c = alloca [8 x i8], align 4                 ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !align !10, !noundef !8 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6330)
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !6330, !noalias !6331, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.b, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtNtB5_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEE18get_or_insert_withNCNvMs3_NtB1c_3mroNtB2H_11MroIterator29full_mro_except_first_element0EB1e_.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i32, ptr %i.k, align 8, !range !55, !noalias !6332, !noundef !8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.n = load i32, ptr %i.m, align 4, !range !11, !noalias !6332, !noundef !8 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i32, ptr %i.o, align 8, !noalias !6332, !noundef !8 ; 5 uses
  switch i32 %i.l, label %default.unreachable [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.h, align 8, !noalias !6332, !noundef !8 ; 2 uses
  %.not26.i.i = icmp eq i32 %i.q, 0
  br i1 %.not26.i.i, label %bb.i, label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.r = tail call noundef nonnull align 8 ptr @_RNvMsg_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literalNtB5_19DynamicClassLiteral7try_mro(i32 noundef %i.n, i32 noundef %i.p, ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.f), !noalias !6332 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !range !56, !noalias !6332, !noundef !8
  %.not25.i.i = icmp eq i64 %i.s, -1              ; 2 uses
  %..i.i = select i1 %.not25.i.i, i64 8, i64 24
  %.56.i.i = select i1 %.not25.i.i, i64 16, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %..i.i
  %i.u = getelementptr i8, ptr %i.r, i64 %.56.i.i
  br label %_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i

bb.e:                                             ; preds = %bb.b
  %i.v = tail call noundef nonnull align 8 ptr @_RNvMsi_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tupleNtB5_24DynamicNamedTupleLiteral3mro(i32 noundef %i.n, i32 noundef %i.p, ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.f), !noalias !6332 ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8
  br label %_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.x = tail call noundef nonnull align 8 ptr @_RNvMsl_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dictNtB5_23DynamicTypedDictLiteral3mro(i32 noundef %i.n, i32 noundef %i.p, ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.f), !noalias !6332 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  br label %_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i

bb.g:                                             ; preds = %bb.b
  %i.z = tail call noundef nonnull align 8 ptr @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literalNtB5_18DynamicEnumLiteral7try_mro(i32 noundef %i.n, i32 noundef %i.p, ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.f), !noalias !6332 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !range !56, !noalias !6332, !noundef !8
  %.not.i.i = icmp eq i64 %i.aa, -1               ; 2 uses
  %.57.i.i = select i1 %.not.i.i, i64 8, i64 24
  %.58.i.i = select i1 %.not.i.i, i64 16, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %.57.i.i
  %i.ac = getelementptr i8, ptr %i.z, i64 %.58.i.i
  br label %_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i

bb.h:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !noalias !6332
  %i.af = tail call { i32, i32 } @_RNvMs1_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB5_14Specialization36tuple_runtime_element_specialization(i32 noundef range(i32 1, 0) %i.q, i32 noundef %i.ae, ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.f), !noalias !6332 ; 2 uses
  %i.ag = extractvalue { i32, i32 } %i.af, 0
  %i.ah = extractvalue { i32, i32 } %i.af, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %.sroa.3.0.i.i = phi i32 [ %i.ah, %bb.h ], [ undef, %bb.c ]
  %.sroa.011.0.i.i = phi i32 [ %i.ag, %bb.h ], [ 0, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6333
  store i32 %i.n, ptr %i.c, align 4, !noalias !6334
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.p, ptr %i.ai, align 4, !noalias !6334
  store i32 %.sroa.011.0.i.i, ptr %i.b, align 4, !noalias !6334
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %.sroa.3.0.i.i, ptr %i.aj, align 4, !noalias !6334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6334
  store ptr %i.d, ptr %i.a, align 8, !noalias !6334
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.ak, align 8, !noalias !6334
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.al, align 8, !noalias !6334
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !6334
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !6334
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.b, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !6334
  %i.am = call { i64, ptr } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6result6ResultRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroRNtB2y_14StaticMroErrorEDNtNtB2C_2db2DbEL_NCNvNvMsp_NtNtB2A_5class14static_literalNtB4d_18StaticClassLiteral7try_mro8try_mro_0E0B1T_EB2C_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @534, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !noalias !6332 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6333
  %i.an = extractvalue { i64, ptr } %i.am, 0      ; 2 uses
  %i.ao = extractvalue { i64, ptr } %i.am, 1      ; 3 uses
  %1 = trunc nuw i64 %i.an to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  %spec.select.i = select i1 %1, i64 40, i64 8
  %spec.select8.idx.i = shl i64 %i.an, 5
  %spec.select8.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 %spec.select8.idx.i
  %i.ap = getelementptr i8, ptr %i.ao, i64 %spec.select.i
  br label %_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i

_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i: ; preds = %bb.i, %bb.g, %bb.f, %bb.e, %bb.d
  %.val35.i.sink.in.i = phi ptr [ %i.u, %bb.d ], [ %i.w, %bb.e ], [ %i.y, %bb.f ], [ %i.ac, %bb.g ], [ %i.ap, %bb.i ]
  %.val34.i.sink.in.i = phi ptr [ %i.t, %bb.d ], [ %i.v, %bb.e ], [ %i.x, %bb.f ], [ %i.ab, %bb.g ], [ %spec.select8.i, %bb.i ]
  %.val34.i.sink.i = load ptr, ptr %.val34.i.sink.in.i, align 8, !noalias !6332, !nonnull !8, !noundef !8 ; 2 uses
  %.val35.i.sink.i = load i64, ptr %.val35.i.sink.in.i, align 8, !noalias !6332, !noundef !8 ; 2 uses
  %.idx60.i.i = shl nuw nsw i64 %.val35.i.sink.i, 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.val34.i.sink.i, i64 %.idx60.i.i
  %.sink.i.i = icmp eq i64 %.val35.i.sink.i, 0
  %spec.select30.idx.i.i = select i1 %.sink.i.i, i64 0, i64 16
  %spec.select30.i.i = getelementptr inbounds nuw i8, ptr %.val34.i.sink.i, i64 %spec.select30.idx.i.i
  store ptr %spec.select30.i.i, ptr %i.g, align 8, !alias.scope !6330, !noalias !6331
  store ptr %i.aq, ptr %i.j, align 8, !alias.scope !6330, !noalias !6331
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtNtB5_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEE18get_or_insert_withNCNvMs3_NtB1c_3mroNtB2H_11MroIterator29full_mro_except_first_element0EB1e_.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtNtB5_5slice4iter4IterNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEE18get_or_insert_withNCNvMs3_NtB1c_3mroNtB2H_11MroIterator29full_mro_except_first_element0EB1e_.exit: ; preds = %bb.a, %_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i
  ret ptr %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types9subscriptNtB5_14SubscriptError18report_diagnostics(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 4 uses
  %i.e = alloca [80 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [80 x i8], align 8                ; 4 uses
  %i.j = alloca [80 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 4 uses
  %i.n = alloca [80 x i8], align 8                ; 4 uses
  %i.o = alloca [80 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [80 x i8], align 8                ; 5 uses
  %i.t = alloca [80 x i8], align 8                ; 5 uses
  %i.u = alloca [48 x i8], align 8                ; 4 uses
  %i.v = alloca [80 x i8], align 8                ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [16 x i8], align 4                ; 4 uses
  %i.y = alloca [16 x i8], align 4                ; 4 uses
  %i.z = alloca [16 x i8], align 4                ; 5 uses
  %i.aa = alloca [48 x i8], align 8               ; 9 uses
  %i.ab = alloca [80 x i8], align 8               ; 5 uses
  %i.ac = alloca [16 x i8], align 4               ; 4 uses
  %i.ad = alloca [80 x i8], align 8               ; 5 uses
  %i.ae = alloca [80 x i8], align 8               ; 6 uses
  %i.af = alloca [48 x i8], align 8               ; 4 uses
  %i.ag = alloca [80 x i8], align 8               ; 6 uses
  %i.ah = alloca [64 x i8], align 8               ; 11 uses
  %i.ai = alloca [80 x i8], align 8               ; 5 uses
  %i.aj = alloca [80 x i8], align 8               ; 5 uses
  %i.ak = alloca [16 x i8], align 4               ; 4 uses
  %i.al = alloca [80 x i8], align 8               ; 5 uses
  %i.am = alloca [80 x i8], align 8               ; 7 uses
  %i.an = alloca [48 x i8], align 8               ; 4 uses
  %i.ao = alloca [80 x i8], align 8               ; 6 uses
  %i.ap = alloca [16 x i8], align 4               ; 4 uses
  %i.aq = alloca [16 x i8], align 4               ; 4 uses
  %i.ar = alloca [12 x i8], align 4               ; 5 uses
  %i.as = alloca [16 x i8], align 4               ; 7 uses
  %i.at = alloca [48 x i8], align 8               ; 9 uses
  %i.au = alloca [80 x i8], align 8               ; 5 uses
  %i.av = alloca [16 x i8], align 4               ; 4 uses
  %i.aw = alloca [80 x i8], align 8               ; 5 uses
  %i.ax = alloca [80 x i8], align 8               ; 6 uses
  %i.ay = alloca [48 x i8], align 8               ; 4 uses
  %i.az = alloca [80 x i8], align 8               ; 6 uses
  %i.ba = alloca [8 x i8], align 8                ; 6 uses
  %i.bb = alloca [32 x i8], align 8               ; 7 uses
  %i.bc = alloca [80 x i8], align 8               ; 5 uses
  %i.bd = alloca [80 x i8], align 8               ; 5 uses
  %i.be = alloca [48 x i8], align 8               ; 4 uses
  %i.bf = alloca [80 x i8], align 8               ; 5 uses
  %i.bg = alloca [8 x i8], align 8                ; 4 uses
  %i.bh = alloca [16 x i8], align 8               ; 5 uses
  %i.bi = alloca [8 x i8], align 8                ; 4 uses
  %i.bj = alloca [80 x i8], align 8               ; 5 uses
  %i.bk = alloca [48 x i8], align 8               ; 4 uses
  %i.bl = alloca [80 x i8], align 8               ; 6 uses
  %i.bm = alloca [16 x i8], align 8               ; 5 uses
  %i.bn = alloca [80 x i8], align 8               ; 5 uses
  %i.bo = alloca [80 x i8], align 8               ; 5 uses
  %i.bp = alloca [80 x i8], align 8               ; 4 uses
  %i.bq = alloca [16 x i8], align 8               ; 5 uses
  %i.br = alloca [16 x i8], align 8               ; 5 uses
  %i.bs = alloca [80 x i8], align 8               ; 5 uses
  %i.bt = alloca [48 x i8], align 8               ; 6 uses
  %i.bu = alloca [80 x i8], align 8               ; 6 uses
  %i.bv = alloca [16 x i8], align 4               ; 4 uses
  %i.bw = load ptr, ptr %2, align 8, !nonnull !8, !noundef !8 ; 9 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !8 ; 2 uses
  %.idx = mul nuw nsw i64 %i.cc, 48
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx
  %i.ce = icmp eq i64 %i.cc, 0
  br i1 %i.ce, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.cf = getelementptr i8, ptr %1, i64 8
  %i.cg = getelementptr i8, ptr %1, i64 16
  %.sroa.484.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.480.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.472.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.476.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.464.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.468.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.sroa.452.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.460.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %.sroa.448.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.cx = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types9subscriptNtB5_18SubscriptErrorKind17report_diagnostic.exit
  %.sroa.0.02 = phi ptr [ %i.ca, %.lr.ph ], [ %i.dd, %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types9subscriptNtB5_18SubscriptErrorKind17report_diagnostic.exit ] ; 31 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6346)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %.val.i = load ptr, ptr %1, align 8, !noalias !6346, !nonnull !8, !noundef !8 ; 16 uses
  %.val107.i = load ptr, ptr %i.cf, align 8, !noalias !6346, !nonnull !8, !align !10, !noundef !8 ; 16 uses
  %.val108.i = load ptr, ptr %i.cg, align 8, !noalias !6346, !nonnull !8, !align !9, !noundef !8 ; 10 uses
  %i.de = load i8, ptr %.sroa.0.02, align 8, !range !43, !alias.scope !6346, !noundef !8
  switch i8 %i.de, label %default.unreachable [
    i8 0, label %switch.lookup
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
  ]

default.unreachable:                              ; preds = %bb.g, %bb.b
  unreachable

switch.lookup:                                    ; preds = %bb.b
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !range !27, !alias.scope !6346, !noundef !8 ; 2 uses
  %i.di = zext nneg i8 %i.dh to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types9subscriptNtB4_13SubscriptKindNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, i64 %i.di
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.dj = zext nneg i8 %i.dh to i64
  %switch.gep3 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types9subscriptNtB4_13SubscriptKindNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt.1126, i64 %i.dj
  %switch.load4 = load ptr, ptr %switch.gep3, align 8
  %i.dk = call { i64, ptr } @_RNvXs6h_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8 %i.bw) ; 2 uses
end_hunk_2
begin_hunk_3_@_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral26has_own_comparison_methods:bb.a
  store ptr %2, ptr %i.e, align 8, !noalias !8014
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %3, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !8014
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !8014
  %i.f = call noundef zeroext i1 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachbDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_NCNvNvMsp_NtNtNtB1Z_5types5class14static_literalNtB2P_18StaticClassLiteral26has_own_comparison_methods27has_own_comparison_methods_0E0bEB1Z_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @534, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral26total_ordering_root_method(ptr dead_on_unwind noalias nofree noundef nonnull writable align 4 captures(none) dereferenceable(16) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, i32 noundef %5, i32 %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  %i.c = alloca [8 x i8], align 4                 ; 5 uses
  %i.d = alloca [16 x i8], align 4                ; 4 uses
  %i.e = alloca [36 x i8], align 4                ; 10 uses
  %i.f = alloca [16 x i8], align 4                ; 6 uses
  %i.g = alloca [16 x i8], align 4                ; 5 uses
  %.sroa.774 = alloca [12 x i8], align 4          ; 8 uses
  %i.h = alloca [36 x i8], align 4                ; 11 uses
  %i.i = alloca [12 x i8], align 4                ; 10 uses
  %i.j = alloca [12 x i8], align 4                ; 10 uses
  %i.k = alloca [80 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 4, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) @562, i64 64, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %.sroa.1062.sroa.9.0..sroa.1062.0..sroa_idx63.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.not26.i.i.i = icmp eq i32 %5, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.768.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  %.sroa.774.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB2_9ClassBase10into_class.exit.peel

bb.b:                                             ; preds = %_RNvXs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i32 -1, ptr %0, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.k, %bb.b
  ret void

_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB2_9ClassBase10into_class.exit.peel: ; preds = %bb.a, %_RNvXs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread
  %i.w = phi i64 [ 0, %bb.a ], [ %i.x, %_RNvXs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread ] ; 2 uses
  %i.x = add nuw nsw i64 %i.w, 1                  ; 3 uses
  store i64 %i.x, ptr %i.k, align 8, !alias.scope !8047
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.6.0..sroa_idx, i64 %i.w ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !8047, !nonnull !8, !noundef !8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !8047, !noundef !8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8048
  call fastcc void @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral29apply_optional_specialization(ptr noalias noundef align 4 captures(address) dereferenceable(12) %i.l, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, i32 noundef %5, i32 %6)
  %.sroa.1062.sroa.8.0.copyload.peel = load i32, ptr %i.l, align 4, !noalias !8049 ; 2 uses
  %.sroa.1062.sroa.9.0.copyload.peel = load i64, ptr %.sroa.1062.sroa.9.0..sroa.1062.0..sroa_idx63.sroa_idx, align 4, !noalias !8049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8048
  %.not17.peel = icmp eq i32 %.sroa.1062.sroa.8.0.copyload.peel, -2
  br i1 %.not17.peel, label %.backedge.peel.preheader, label %bb.d

bb.d:                                             ; preds = %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB2_9ClassBase10into_class.exit.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i32 %.sroa.1062.sroa.8.0.copyload.peel, ptr %i.j, align 4
  store i64 %.sroa.1062.sroa.9.0.copyload.peel, ptr %.sroa.768.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType13class_literal(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.i, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.j, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4)
  %i.ac = load i32, ptr %i.i, align 4, !range !55, !noundef !8
  switch i32 %i.ac, label %default.unreachable144 [
    i32 0, label %.noexc23.peel
    i32 1, label %bb.e
    i32 2, label %.backedge.peel.sink.split153
    i32 3, label %.backedge.peel.sink.split153
    i32 4, label %.backedge.peel.sink.split153
  ]

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.q, align 4, !range !11, !noundef !8
  %i.ae = load i32, ptr %i.r, align 4, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMsg_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literalNtB5_19DynamicClassLiteral16own_class_member(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(none) dereferenceable(36) %i.e, i32 noundef %i.ad, i32 noundef %i.ae, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %i.ab)
  call void @llvm.experimental.noalias.scope.decl(metadata !8050)
  call void @llvm.experimental.noalias.scope.decl(metadata !8051)
  %i.af = load i32, ptr %i.e, align 4, !range !59, !alias.scope !8051, !noalias !8050, !noundef !8
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit29.thread.peel, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit29.peel

_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit29.peel: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.s, i64 16, i1 false), !alias.scope !8052
  %.pr.peel = load i32, ptr %0, align 4
  %.not18.peel = icmp eq i32 %.pr.peel, -1
  br i1 %.not18.peel, label %bb.f, label %.loopexit

_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit29.thread.peel: ; preds = %bb.e
  store i32 -1, ptr %0, align 4, !alias.scope !8050, !noalias !8051
  br label %bb.f

bb.f:                                             ; preds = %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit29.thread.peel, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit29.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.backedge.peel.sink.split153

.noexc23.peel:                                    ; preds = %bb.d
  %i.ah = load i32, ptr %i.q, align 4, !range !11, !noundef !8 ; 2 uses
  %i.ai = load i32, ptr %i.r, align 4, !noundef !8 ; 2 uses
  %i.aj = call noundef nonnull align 8 ptr %i.u(ptr noundef nonnull %3), !inline_history !22 ; 2 uses
  %i.ak = call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1R_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal1__NtB9_18StaticClassLiteral10ingredient5CACHE, ptr noundef nonnull align 8 %i.aj)
  %i.al = call noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralE6fieldsB14_(ptr noundef nonnull align 8 %i.ak, ptr noundef nonnull align 8 %i.aj, i32 noundef range(i32 1, 0) %i.ah, i32 noundef %i.ai)
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 57
  %i.an = load i8, ptr %i.am, align 1, !range !20, !noalias !8053, !noundef !8
  %i.ao = icmp eq i8 %i.an, 1
  br i1 %i.ao, label %.backedge.peel.sink.split153, label %.noexc26.peel

.noexc26.peel:                                    ; preds = %.noexc23.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ap = call noundef nonnull align 8 ptr %i.u(ptr noundef nonnull %3), !inline_history !76 ; 2 uses
  %i.aq = call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1R_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal1__NtB9_18StaticClassLiteral10ingredient5CACHE, ptr noundef nonnull align 8 %i.ap)
  %i.ar = call noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralE6fieldsB14_(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull align 8 %i.ap, i32 noundef range(i32 1, 0) %i.ah, i32 noundef %i.ai) ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i32, ptr %i.as, align 8, !range !11, !noalias !8054, !noundef !8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %i.av = load i32, ptr %i.au, align 4, !noalias !8054, !noundef !8
  call void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6member12class_member(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.h, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, i32 noundef %i.at, i32 noundef %i.av, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.774)
  call void @llvm.experimental.noalias.scope.decl(metadata !8055)
  %i.aw = load i32, ptr %i.h, align 4, !range !59, !alias.scope !8056, !noalias !8055, !noundef !8
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit.thread.peel, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit.peel

_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit.peel: ; preds = %.noexc26.peel
  %.sroa.072.0.copyload73.peel = load i32, ptr %i.v, align 4, !alias.scope !8057 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.774, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.774.0..sroa_idx75, i64 12, i1 false), !alias.scope !8057
  %.not19.peel = icmp eq i32 %.sroa.072.0.copyload73.peel, -1
  br i1 %.not19.peel, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit.thread.peel, label %.loopexit137

_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit.thread.peel: ; preds = %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit.peel, %.noexc26.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.774)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %.backedge.peel.sink.split153

.backedge.peel.sink.split153:                     ; preds = %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit.thread.peel, %bb.f, %bb.d, %bb.d, %bb.d, %.noexc23.peel, %.noexc23, %bb.l, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit.thread, %bb.i, %bb.i, %bb.i
  %.sroa.20.0.ph = phi i64 [ %.sroa.20.2, %.noexc23 ], [ %.sroa.20.2, %bb.i ], [ %.sroa.20.2, %bb.i ], [ %.sroa.20.2, %bb.i ], [ %.sroa.20.2, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit.thread ], [ %.sroa.20.2, %bb.l ], [ undef, %.noexc23.peel ], [ undef, %bb.d ], [ undef, %bb.d ], [ undef, %bb.d ], [ undef, %bb.f ], [ undef, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit.thread.peel ]
  %.sroa.15.0.ph = phi ptr [ %i.bj, %.noexc23 ], [ %i.bj, %bb.i ], [ %i.bj, %bb.i ], [ %i.bj, %bb.i ], [ %i.bj, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit.thread ], [ %i.bj, %bb.l ], [ null, %.noexc23.peel ], [ null, %bb.d ], [ null, %bb.d ], [ null, %bb.d ], [ null, %bb.f ], [ null, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit.thread.peel ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %.backedge.peel.preheader

.backedge.peel.preheader:                         ; preds = %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB2_9ClassBase10into_class.exit.peel, %.backedge.peel.sink.split153
  %.sroa.20.0.ph154 = phi i64 [ %.sroa.20.0.ph, %.backedge.peel.sink.split153 ], [ undef, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB2_9ClassBase10into_class.exit.peel ]
  %.sroa.15.0.ph155 = phi ptr [ %.sroa.15.0.ph, %.backedge.peel.sink.split153 ], [ null, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB2_9ClassBase10into_class.exit.peel ]
  br label %.backedge.peel

.backedge.peel:                                   ; preds = %.backedge.peel.preheader, %bb.h
  %.sroa.20.0 = phi i64 [ %.sroa.20.2, %bb.h ], [ %.sroa.20.0.ph154, %.backedge.peel.preheader ]
  %.sroa.15.0 = phi ptr [ %i.bj, %bb.h ], [ %.sroa.15.0.ph155, %.backedge.peel.preheader ] ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.15.0, null
  br i1 %.not.i.i, label %bb.g, label %.noexc22

bb.g:                                             ; preds = %.backedge.peel
  br i1 %.not26.i.i.i, label %_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i.i, label %.noexc35

.noexc35:                                         ; preds = %bb.g
  %i.ay = call { i32, i32 } @_RNvMs1_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB5_14Specialization36tuple_runtime_element_specialization(i32 noundef range(i32 1, 0) %5, i32 noundef %6, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4) ; 2 uses
  %i.az = extractvalue { i32, i32 } %i.ay, 0
  %i.ba = extractvalue { i32, i32 } %i.ay, 1
  br label %_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i.i

_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i.i: ; preds = %.noexc35, %bb.g
  %.sroa.3.0.i.i.i = phi i32 [ %i.ba, %.noexc35 ], [ undef, %bb.g ]
  %.sroa.011.0.i.i.i = phi i32 [ %i.az, %.noexc35 ], [ 0, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8058
  store i32 %1, ptr %i.c, align 4, !noalias !8059
  store i32 %2, ptr %i.m, align 4, !noalias !8059
  store i32 %.sroa.011.0.i.i.i, ptr %i.b, align 4, !noalias !8059
  store i32 %.sroa.3.0.i.i.i, ptr %i.n, align 4, !noalias !8059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8059
  store ptr %3, ptr %i.a, align 8, !noalias !8059
  store ptr %4, ptr %i.o, align 8, !noalias !8059
  store ptr %3, ptr %i.p, align 8, !noalias !8059
  store ptr %4, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8059
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8059
  store ptr %i.b, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !8059
  %i.bb = call { i64, ptr } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6result6ResultRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroRNtB2y_14StaticMroErrorEDNtNtB2C_2db2DbEL_NCNvNvMsp_NtNtB2A_5class14static_literalNtB4d_18StaticClassLiteral7try_mro8try_mro_0E0B1T_EB2C_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @534, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8058
  %i.bc = extractvalue { i64, ptr } %i.bb, 0      ; 2 uses
  %i.bd = extractvalue { i64, ptr } %i.bb, 1      ; 3 uses
  %7 = trunc nuw i64 %i.bc to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bd) ]
  %spec.select.i.i = select i1 %7, i64 40, i64 8
  %spec.select8.idx.i.i = shl i64 %i.bc, 5
  %spec.select8.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 %spec.select8.idx.i.i
  %i.be = getelementptr i8, ptr %i.bd, i64 %spec.select.i.i
  %.val34.i.sink.i.i = load ptr, ptr %spec.select8.i.i, align 8, !noalias !8060, !nonnull !8, !noundef !8 ; 2 uses
  %.val35.i.sink.i.i = load i64, ptr %i.be, align 8, !noalias !8060, !noundef !8 ; 2 uses
  %.idx60.i.i.i = shl nuw nsw i64 %.val35.i.sink.i.i, 4
  %i.bf = getelementptr inbounds nuw i8, ptr %.val34.i.sink.i.i, i64 %.idx60.i.i.i
  %.sink.i.i.i = icmp eq i64 %.val35.i.sink.i.i, 0
  %spec.select30.idx.i.i.i = select i1 %.sink.i.i.i, i64 0, i64 16
  %spec.select30.i.i.i = getelementptr inbounds nuw i8, ptr %.val34.i.sink.i.i, i64 %spec.select30.idx.i.i.i
  %i.bg = ptrtoint ptr %i.bf to i64
  br label %.noexc22

.noexc22:                                         ; preds = %_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i.i, %.backedge.peel
  %.sroa.20.2 = phi i64 [ %i.bg, %_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i.i ], [ %.sroa.20.0, %.backedge.peel ] ; 8 uses
  %.sroa.15.2 = phi ptr [ %spec.select30.i.i.i, %_RNCNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB7_11MroIterator29full_mro_except_first_element0Bb_.exit.i.i ], [ %.sroa.15.0, %.backedge.peel ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15.2) ]
  %i.bh = inttoptr i64 %.sroa.20.2 to ptr
  %i.bi = icmp eq ptr %.sroa.15.2, %i.bh
  br i1 %i.bi, label %_RNvXs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread, label %_RNvXs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit

_RNvXs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %.noexc22
  %.sroa.059.0.copyload61 = load i8, ptr %.sroa.15.2, align 4, !noalias !8049 ; 2 uses
  %.not16 = icmp eq i8 %.sroa.059.0.copyload61, -1
  br i1 %.not16, label %_RNvXs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread, label %bb.h

bb.h:                                             ; preds = %_RNvXs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit
  %.sroa.1062.sroa.8.0..sroa.1062.0..sroa.15.24.47.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.15.2, i64 4
  %.sroa.1062.sroa.8.0.copyload70 = load i32, ptr %.sroa.1062.sroa.8.0..sroa.1062.0..sroa.15.24.47.sroa_idx.sroa_idx, align 4, !noalias !8049 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.15.2, i64 16 ; 7 uses
  %i.bk = icmp ne i8 %.sroa.059.0.copyload61, 3
  %.not17 = icmp eq i32 %.sroa.1062.sroa.8.0.copyload70, -2
  %or.cond = select i1 %i.bk, i1 true, i1 %.not17
  br i1 %or.cond, label %.backedge.peel, label %bb.i, !llvm.loop !8043

_RNvXs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread: ; preds = %.noexc22, %_RNvXs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit
  %.not.i = icmp eq i64 %i.x, 4
  br i1 %.not.i, label %bb.b, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB2_9ClassBase10into_class.exit.peel

bb.i:                                             ; preds = %bb.h
  %.sroa.1062.sroa.9.0..sroa.1062.0..sroa.15.24.47.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.15.2, i64 8
  %.sroa.1062.sroa.9.0.copyload71 = load i64, ptr %.sroa.1062.sroa.9.0..sroa.1062.0..sroa.15.24.47.sroa_idx.sroa_idx, align 4, !noalias !8049
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i32 %.sroa.1062.sroa.8.0.copyload70, ptr %i.j, align 4
  store i64 %.sroa.1062.sroa.9.0.copyload71, ptr %.sroa.768.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType13class_literal(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.i, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.j, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4)
  %i.bl = load i32, ptr %i.i, align 4, !range !55, !noundef !8
  switch i32 %i.bl, label %default.unreachable144 [
    i32 0, label %.noexc23
    i32 1, label %bb.j
    i32 2, label %.backedge.peel.sink.split153
    i32 3, label %.backedge.peel.sink.split153
    i32 4, label %.backedge.peel.sink.split153
  ], !llvm.loop !8043

default.unreachable144:                           ; preds = %bb.d, %bb.i
  unreachable

.noexc23:                                         ; preds = %bb.i
  %i.bm = load i32, ptr %i.q, align 4, !range !11, !noundef !8 ; 2 uses
  %i.bn = load i32, ptr %i.r, align 4, !noundef !8 ; 2 uses
  %i.bo = call noundef nonnull align 8 ptr %i.u(ptr noundef nonnull %3), !inline_history !22 ; 2 uses
  %i.bp = call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1R_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal1__NtB9_18StaticClassLiteral10ingredient5CACHE, ptr noundef nonnull align 8 %i.bo)
  %i.bq = call noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralE6fieldsB14_(ptr noundef nonnull align 8 %i.bp, ptr noundef nonnull align 8 %i.bo, i32 noundef range(i32 1, 0) %i.bm, i32 noundef %i.bn)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 57
  %i.bs = load i8, ptr %i.br, align 1, !range !20, !noalias !8053, !noundef !8
  %i.bt = icmp eq i8 %i.bs, 1
  br i1 %i.bt, label %.backedge.peel.sink.split153, label %.noexc26, !llvm.loop !8043

bb.j:                                             ; preds = %bb.i
  %i.bu = load i32, ptr %i.q, align 4, !range !11, !noundef !8
  %i.bv = load i32, ptr %i.r, align 4, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMsg_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literalNtB5_19DynamicClassLiteral16own_class_member(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(none) dereferenceable(36) %i.e, i32 noundef %i.bu, i32 noundef %i.bv, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %i.ab)
  call void @llvm.experimental.noalias.scope.decl(metadata !8062)
  call void @llvm.experimental.noalias.scope.decl(metadata !8063)
  %i.bw = load i32, ptr %i.e, align 4, !range !59, !alias.scope !8063, !noalias !8062, !noundef !8
  %i.bx = icmp eq i32 %i.bw, -1
  br i1 %i.bx, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit29.thread, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit29

.noexc26:                                         ; preds = %.noexc23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.by = call noundef nonnull align 8 ptr %i.u(ptr noundef nonnull %3), !inline_history !76 ; 2 uses
  %i.bz = call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1R_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal1__NtB9_18StaticClassLiteral10ingredient5CACHE, ptr noundef nonnull align 8 %i.by)
  %i.ca = call noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal18StaticClassLiteralE6fieldsB14_(ptr noundef nonnull align 8 %i.bz, ptr noundef nonnull align 8 %i.by, i32 noundef range(i32 1, 0) %i.bm, i32 noundef %i.bn) ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load i32, ptr %i.cb, align 8, !range !11, !noalias !8054, !noundef !8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 20
  %i.ce = load i32, ptr %i.cd, align 4, !noalias !8054, !noundef !8
  call void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6member12class_member(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.h, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, i32 noundef %i.cc, i32 noundef %i.ce, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.774)
  call void @llvm.experimental.noalias.scope.decl(metadata !8064)
  %i.cf = load i32, ptr %i.h, align 4, !range !59, !alias.scope !8056, !noalias !8064, !noundef !8
  %i.cg = icmp eq i32 %i.cf, -1
  br i1 %i.cg, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit.thread, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit

_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit: ; preds = %.noexc26
  %.sroa.072.0.copyload73 = load i32, ptr %i.v, align 4, !alias.scope !8065 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.774, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.774.0..sroa_idx75, i64 12, i1 false), !alias.scope !8065
  %.not19 = icmp eq i32 %.sroa.072.0.copyload73, -1
  br i1 %.not19, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit.thread, label %.loopexit137

.loopexit137:                                     ; preds = %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit.peel, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit
  %.sroa.072.0.copyload73.lcssa = phi i32 [ %.sroa.072.0.copyload73, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit ], [ %.sroa.072.0.copyload73.peel, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit.peel ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 %.sroa.072.0.copyload73.lcssa, ptr %i.g, align 4
  %.sroa.774.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.774.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.774, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType20static_class_literal(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.j, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4)
  %i.ch = load i32, ptr %i.f, align 4, !noundef !8
  %.not20 = icmp eq i32 %i.ch, 0                  ; 2 uses
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.480.0.copyload = load i32, ptr %.sroa.480.0..sroa_idx, align 4
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.sroa.581.0.copyload = load i32, ptr %.sroa.581.0..sroa_idx, align 4
  %.sroa.3.0 = select i1 %.not20, i32 undef, i32 %.sroa.581.0.copyload
  %.sroa.03.0 = select i1 %.not20, i32 0, i32 %.sroa.480.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type29apply_optional_specialization(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.g, ptr noundef nonnull %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %4, i32 noundef %.sroa.03.0, i32 %.sroa.3.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.774)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.k

_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit.thread: ; preds = %.noexc26, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.774)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %.backedge.peel.sink.split153, !llvm.loop !8043

bb.k:                                             ; preds = %.loopexit, %.loopexit137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.c

_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit29.thread: ; preds = %bb.j
  store i32 -1, ptr %0, align 4, !alias.scope !8062, !noalias !8063
  br label %bb.l

_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit29: ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.s, i64 16, i1 false), !alias.scope !8066
  %.pr = load i32, ptr %0, align 4
  %.not18 = icmp eq i32 %.pr, -1
  br i1 %.not18, label %bb.l, label %.loopexit

.loopexit:                                        ; preds = %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit29.peel, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.k

bb.l:                                             ; preds = %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit29.thread, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB2_6Member25ignore_possibly_undefined.exit29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.backedge.peel.sink.split153, !llvm.loop !8043
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral28has_named_tuple_class_in_mro(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  %i.c = alloca [12 x i8], align 4                ; 8 uses
  %i.d = alloca [12 x i8], align 4                ; 7 uses
  %i.e = alloca [16 x i8], align 4                ; 10 uses
  %i.f = alloca [56 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %2, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.84.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i32 0, ptr %.sroa.84.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store i32 %0, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i32 %1, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8082
  call void @_RNvXs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f)
  %i.g = load i8, ptr %i.e, align 4, !range !52, !noalias !8082, !noundef !8 ; 2 uses
  %.not14.not.i = icmp eq i8 %i.g, -1
  br i1 %.not14.not.i, label %_RINvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB19_8adapters10filter_map19filter_map_try_foldNtNtB7_10class_base9ClassBaseNtNtB7_5class9ClassTypeuINtNtNtB1b_3ops12control_flow11ControlFlowuENvMB33_B31_10into_classNCINvNvB13_3any5checkB3u_NCNvMsp_NtB3w_14static_literalNtB5u_18StaticClassLiteral28has_named_tuple_class_in_mro0E0E0B3S_EB9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.n = load ptr, ptr %i.j, align 8, !nonnull !8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowuENvMB1g_B1e_10into_classNCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2j_NCNvMsp_NtB2l_14static_literalNtB4N_18StaticClassLiteral28has_named_tuple_class_in_mro0E0E0B1k_.exit.thread.i, %.lr.ph.i
end_hunk_3
