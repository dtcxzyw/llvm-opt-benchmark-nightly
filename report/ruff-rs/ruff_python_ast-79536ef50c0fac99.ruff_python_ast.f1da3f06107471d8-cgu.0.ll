Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_ast-79536ef50c0fac99.ruff_python_ast.f1da3f06107471d8-cgu.0?download=true
inline.NumInlined: 7999
inline.NumDeleted: 3540
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1u_NtB1u_10Parameters17iter_source_order0E0EB1w_:bb.a

middle.block397:                                  ; preds = %vector.body390
  %cmp.n398 = icmp eq i64 %i.fi, %n.vec389
  br i1 %cmp.n398, label %.loopexit, label %scalar.ph386.preheader

scalar.ph386.preheader:                           ; preds = %.lr.ph45.i, %middle.block397
  %.sroa.07.043.i.ph = phi i64 [ 0, %.lr.ph45.i ], [ %n.vec389, %middle.block397 ]
  br label %scalar.ph386

scalar.ph386:                                     ; preds = %scalar.ph386.preheader, %scalar.ph386
  %.sroa.07.043.i = phi i64 [ %i.fr, %scalar.ph386 ], [ %.sroa.07.043.i.ph, %scalar.ph386.preheader ] ; 3 uses
  %i.fr = add nuw i64 %.sroa.07.043.i, 1          ; 2 uses
  %i.fs = xor i64 %.sroa.07.043.i, -1
  %i.ft = getelementptr [8 x i8], ptr %i.cx, i64 %i.fs
  %i.fu = getelementptr [8 x i8], ptr %i.fj, i64 %.sroa.07.043.i
  %i.fv = load i64, ptr %i.ft, align 8, !alias.scope !4545, !noalias !4542
  store i64 %i.fv, ptr %i.fu, align 8, !alias.scope !4542, !noalias !4545
  %exitcond.not.i40 = icmp eq i64 %i.fr, %i.fi
  br i1 %exitcond.not.i40, label %.loopexit, label %scalar.ph386, !llvm.loop !4568

.loopexit:                                        ; preds = %scalar.ph386, %middle.block397, %bb.bc
  %i.fw = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.fw, label %.thread, label %bb.bd

bb.bd:                                            ; preds = %.loopexit
  %.not.i50 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0139358
  br i1 %.not.i50, label %bb.be, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit, !prof !5

bb.be:                                            ; preds = %bb.bd
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @237, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #61, !noalias !4569
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit: ; preds = %bb.bd
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph149, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph149) ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1u_NtB1u_10Parameters17iter_source_order0E0EB1w_(ptr noalias noundef nonnull align 8 %i.fx, i64 noundef %i.fi, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fy = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.fy, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit, %.loopexit
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph149, i64 %i.cs ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4573)
  call void @llvm.experimental.noalias.scope.decl(metadata !4576)
  %.not100 = icmp samesign ult i64 %3, %.sroa.16.0139358
  br i1 %.not100, label %bb.bg, label %bb.bf, !prof !4460

bb.bf:                                            ; preds = %.thread
  %i.ga = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0139358 ; 3 uses
  br label %bb.bh

bb.bg:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.bh:                                            ; preds = %bb.bs, %bb.bf
  %.sroa.43.0.i53 = phi ptr [ %i.ga, %bb.bf ], [ %i.is, %bb.bs ] ; 2 uses
  %.sroa.27.0.i54 = phi i64 [ 0, %bb.bf ], [ %i.iv, %bb.bs ] ; 2 uses
  %.sroa.9.0.i55 = phi ptr [ %.sroa.0.0.ph149, %bb.bf ], [ %i.iw, %bb.bs ] ; 3 uses
  %.sroa.0.0.i56 = phi i64 [ %.sroa.0.0.i38, %bb.bf ], [ %.sroa.16.0139358, %bb.bs ] ; 4 uses
  %i.gb = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i56, i64 3)
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph149, i64 %i.gb ; 2 uses
  %i.gd = icmp ult ptr %.sroa.9.0.i55, %i.gc
  br i1 %i.gd, label %.lr.ph.i76, label %._crit_edge.i57

.lr.ph.i76:                                       ; preds = %bb.bh
  %.val23.i77 = load ptr, ptr %i.fz, align 8, !alias.scope !4573, !noalias !4576, !align !95, !noundef !3 ; 5 uses
  %.not.i.i.i.i.i78 = icmp eq ptr %.val23.i77, null ; 4 uses
  br label %bb.bi

bb.bi:                                            ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit49.i, %.lr.ph.i76
  %.sroa.9.131.i79 = phi ptr [ %.sroa.9.0.i55, %.lr.ph.i76 ], [ %i.hf, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit49.i ] ; 5 uses
  %.sroa.27.130.i80 = phi i64 [ %.sroa.27.0.i54, %.lr.ph.i76 ], [ %i.he, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit49.i ] ; 2 uses
  %.sroa.43.129.i81 = phi ptr [ %.sroa.43.0.i53, %.lr.ph.i76 ], [ %i.hb, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit49.i ] ; 4 uses
  %.val22.i82 = load ptr, ptr %.sroa.9.131.i79, align 8, !alias.scope !4573, !noalias !4576 ; 3 uses
  %i.ge = ptrtoint ptr %.val22.i82 to i64
  br i1 %.not.i.i.i.i.i78, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.i84, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %.val.i.i.i.i.i83 = load i32, ptr %.val23.i77, align 8, !noalias !4578, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.i84

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.i84: ; preds = %bb.bj, %bb.bi
  %.sroa.02.0.i.i.i.i.i85 = phi i32 [ %.val.i.i.i.i.i83, %bb.bj ], [ -1, %bb.bi ]
  %.not.i.i5.i.i.i86 = icmp eq ptr %.val22.i82, null
  br i1 %.not.i.i5.i.i.i86, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit.i, label %bb.bk

bb.bk:                                            ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.i84
  %.val.i.i6.i.i.i87 = load i32, ptr %.val22.i82, align 8, !noalias !4578, !noundef !3
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit.i: ; preds = %bb.bk, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.i84
  %.sroa.02.0.i.i7.i.i.i88 = phi i32 [ %.val.i.i6.i.i.i87, %bb.bk ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.i84 ]
  %i.gf = icmp uge i32 %.sroa.02.0.i.i.i.i.i85, %.sroa.02.0.i.i7.i.i.i88 ; 2 uses
  %i.gg = getelementptr inbounds i8, ptr %.sroa.43.129.i81, i64 -8
  %.sroa.01.0.i.i89 = select i1 %i.gf, ptr %2, ptr %i.gg
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i89, i64 %.sroa.27.130.i80
  store i64 %i.ge, ptr %i.gh, align 8, !alias.scope !4576, !noalias !4579
  %i.gi = zext i1 %i.gf to i64
  %i.gj = add i64 %.sroa.27.130.i80, %i.gi        ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i79, i64 8
  %.val20.i90 = load ptr, ptr %i.gk, align 8, !alias.scope !4573, !noalias !4576 ; 3 uses
  %i.gl = ptrtoint ptr %.val20.i90 to i64
  br i1 %.not.i.i.i.i.i78, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i26.i, label %bb.bl

bb.bl:                                            ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit.i
  %.val.i.i.i.i25.i = load i32, ptr %.val23.i77, align 8, !noalias !4578, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i26.i

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i26.i: ; preds = %bb.bl, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit.i
  %.sroa.02.0.i.i.i.i27.i = phi i32 [ %.val.i.i.i.i25.i, %bb.bl ], [ -1, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit.i ]
  %.not.i.i5.i.i28.i = icmp eq ptr %.val20.i90, null
  br i1 %.not.i.i5.i.i28.i, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit31.i, label %bb.bm

bb.bm:                                            ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i26.i
  %.val.i.i6.i.i29.i = load i32, ptr %.val20.i90, align 8, !noalias !4578, !noundef !3
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit31.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit31.i: ; preds = %bb.bm, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i26.i
  %.sroa.02.0.i.i7.i.i30.i = phi i32 [ %.val.i.i6.i.i29.i, %bb.bm ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i26.i ]
  %i.gm = icmp uge i32 %.sroa.02.0.i.i.i.i27.i, %.sroa.02.0.i.i7.i.i30.i ; 2 uses
  %i.gn = getelementptr inbounds i8, ptr %.sroa.43.129.i81, i64 -16
  %.sroa.01.0.i32.i91 = select i1 %i.gm, ptr %2, ptr %i.gn
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i32.i91, i64 %i.gj
  store i64 %i.gl, ptr %i.go, align 8, !alias.scope !4576, !noalias !4582
  %i.gp = zext i1 %i.gm to i64
  %i.gq = add i64 %i.gj, %i.gp                    ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i79, i64 16
  %.val18.i92 = load ptr, ptr %i.gr, align 8, !alias.scope !4573, !noalias !4576 ; 3 uses
  %i.gs = ptrtoint ptr %.val18.i92 to i64
  br i1 %.not.i.i.i.i.i78, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i35.i, label %bb.bn

bb.bn:                                            ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit31.i
  %.val.i.i.i.i34.i = load i32, ptr %.val23.i77, align 8, !noalias !4578, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i35.i

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i35.i: ; preds = %bb.bn, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit31.i
  %.sroa.02.0.i.i.i.i36.i = phi i32 [ %.val.i.i.i.i34.i, %bb.bn ], [ -1, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit31.i ]
  %.not.i.i5.i.i37.i = icmp eq ptr %.val18.i92, null
  br i1 %.not.i.i5.i.i37.i, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit40.i, label %bb.bo

bb.bo:                                            ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i35.i
  %.val.i.i6.i.i38.i = load i32, ptr %.val18.i92, align 8, !noalias !4578, !noundef !3
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit40.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit40.i: ; preds = %bb.bo, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i35.i
  %.sroa.02.0.i.i7.i.i39.i = phi i32 [ %.val.i.i6.i.i38.i, %bb.bo ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i35.i ]
  %i.gt = icmp uge i32 %.sroa.02.0.i.i.i.i36.i, %.sroa.02.0.i.i7.i.i39.i ; 2 uses
  %i.gu = getelementptr inbounds i8, ptr %.sroa.43.129.i81, i64 -24
  %.sroa.01.0.i41.i93 = select i1 %i.gt, ptr %2, ptr %i.gu
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i41.i93, i64 %i.gq
  store i64 %i.gs, ptr %i.gv, align 8, !alias.scope !4576, !noalias !4585
  %i.gw = zext i1 %i.gt to i64
  %i.gx = add i64 %i.gq, %i.gw                    ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i79, i64 24
  %.val16.i94 = load ptr, ptr %i.gy, align 8, !alias.scope !4573, !noalias !4576 ; 3 uses
  %i.gz = ptrtoint ptr %.val16.i94 to i64
  br i1 %.not.i.i.i.i.i78, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i44.i, label %bb.bp

bb.bp:                                            ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit40.i
  %.val.i.i.i.i43.i = load i32, ptr %.val23.i77, align 8, !noalias !4578, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i44.i

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i44.i: ; preds = %bb.bp, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit40.i
  %.sroa.02.0.i.i.i.i45.i = phi i32 [ %.val.i.i.i.i43.i, %bb.bp ], [ -1, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit40.i ]
  %.not.i.i5.i.i46.i = icmp eq ptr %.val16.i94, null
  br i1 %.not.i.i5.i.i46.i, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit49.i, label %bb.bq

bb.bq:                                            ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i44.i
  %.val.i.i6.i.i47.i = load i32, ptr %.val16.i94, align 8, !noalias !4578, !noundef !3
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit49.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit49.i: ; preds = %bb.bq, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i44.i
  %.sroa.02.0.i.i7.i.i48.i = phi i32 [ %.val.i.i6.i.i47.i, %bb.bq ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i44.i ]
  %i.ha = icmp uge i32 %.sroa.02.0.i.i.i.i45.i, %.sroa.02.0.i.i7.i.i48.i ; 2 uses
  %i.hb = getelementptr inbounds i8, ptr %.sroa.43.129.i81, i64 -32 ; 3 uses
  %.sroa.01.0.i50.i95 = select i1 %i.ha, ptr %2, ptr %i.hb
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i50.i95, i64 %i.gx
  store i64 %i.gz, ptr %i.hc, align 8, !alias.scope !4576, !noalias !4588
  %i.hd = zext i1 %i.ha to i64
  %i.he = add i64 %i.gx, %i.hd                    ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i79, i64 32 ; 3 uses
  %i.hg = icmp ult ptr %i.hf, %i.gc
  br i1 %i.hg, label %bb.bi, label %._crit_edge.i57

._crit_edge.i57:                                  ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit49.i, %bb.bh
  %.sroa.43.1.lcssa.i58 = phi ptr [ %.sroa.43.0.i53, %bb.bh ], [ %i.hb, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit49.i ] ; 4 uses
  %.sroa.27.1.lcssa.i59 = phi i64 [ %.sroa.27.0.i54, %bb.bh ], [ %i.he, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit49.i ] ; 5 uses
  %.sroa.9.1.lcssa.i60 = phi ptr [ %.sroa.9.0.i55, %bb.bh ], [ %i.hf, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit49.i ] ; 7 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph149, i64 %.sroa.0.0.i56 ; 3 uses
  %i.hi = icmp ult ptr %.sroa.9.1.lcssa.i60, %i.hh
  br i1 %i.hi, label %.lr.ph38.i69.preheader, label %._crit_edge39.i61

.lr.ph38.i69.preheader:                           ; preds = %._crit_edge.i57
  %.val15.i74 = load ptr, ptr %i.fz, align 8, !alias.scope !4573, !noalias !4576, !align !95, !noundef !3 ; 2 uses
  %.not.i.i.i.i51.i = icmp eq ptr %.val15.i74, null
  br i1 %.not.i.i.i.i51.i, label %.lr.ph38.i69.us.preheader, label %.lr.ph38.i69.preheader.split

.lr.ph38.i69.us.preheader:                        ; preds = %.lr.ph38.i69.preheader
  %i.hj = shl i64 %.sroa.0.0.i56, 3
  %i.hk = ptrtoaddr ptr %.sroa.9.1.lcssa.i60 to i64
  %i.hl = add i64 %i.hj, %i.c
  %i.hm = xor i64 %i.hk, -1
  %i.hn = add i64 %i.hl, %i.hm                    ; 2 uses
  %i.ho = lshr i64 %i.hn, 3
  %i.hp = add nuw nsw i64 %i.ho, 1                ; 2 uses
  %min.iters.check373 = icmp ult i64 %i.hn, 24
  br i1 %min.iters.check373, label %.lr.ph38.i69.us.preheader405, label %vector.ph374

vector.ph374:                                     ; preds = %.lr.ph38.i69.us.preheader
  %n.vec375 = and i64 %i.hp, 4611686018427387900  ; 5 uses
  %i.hq = shl i64 %n.vec375, 3
  %i.hr = getelementptr i8, ptr %.sroa.9.1.lcssa.i60, i64 %i.hq ; 2 uses
  %i.hs = add i64 %.sroa.27.1.lcssa.i59, %n.vec375 ; 2 uses
  %i.ht = mul i64 %n.vec375, -8
  %i.hu = getelementptr i8, ptr %.sroa.43.1.lcssa.i58, i64 %i.ht ; 2 uses
  %i.hv = getelementptr [8 x i8], ptr %2, i64 %.sroa.27.1.lcssa.i59
  br label %vector.body376

vector.body376:                                   ; preds = %vector.body376, %vector.ph374
  %index377 = phi i64 [ 0, %vector.ph374 ], [ %index.next380, %vector.body376 ] ; 3 uses
  %i.hw = shl i64 %index377, 3
  %next.gep = getelementptr i8, ptr %.sroa.9.1.lcssa.i60, i64 %i.hw ; 2 uses
  %i.hx = getelementptr i8, ptr %next.gep, i64 16
  %wide.load378 = load <2 x ptr>, ptr %next.gep, align 8, !alias.scope !4573, !noalias !4576
  %wide.load379 = load <2 x ptr>, ptr %i.hx, align 8, !alias.scope !4573, !noalias !4576
  %i.hy = ptrtoint <2 x ptr> %wide.load378 to <2 x i64>
  %i.hz = ptrtoint <2 x ptr> %wide.load379 to <2 x i64>
  %i.ia = getelementptr [8 x i8], ptr %i.hv, i64 %index377 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  store <2 x i64> %i.hy, ptr %i.ia, align 8, !alias.scope !4576, !noalias !4591
  store <2 x i64> %i.hz, ptr %i.ib, align 8, !alias.scope !4576, !noalias !4591
  %index.next380 = add nuw i64 %index377, 4       ; 2 uses
  %i.ic = icmp eq i64 %index.next380, %n.vec375
  br i1 %i.ic, label %middle.block381, label %vector.body376, !llvm.loop !4594

middle.block381:                                  ; preds = %vector.body376
  %cmp.n382 = icmp eq i64 %i.hp, %n.vec375
  br i1 %cmp.n382, label %._crit_edge39.i61, label %.lr.ph38.i69.us.preheader405

.lr.ph38.i69.us.preheader405:                     ; preds = %.lr.ph38.i69.us.preheader, %middle.block381
  %.sroa.9.236.i70.us.ph = phi ptr [ %.sroa.9.1.lcssa.i60, %.lr.ph38.i69.us.preheader ], [ %i.hr, %middle.block381 ]
  %.sroa.27.235.i71.us.ph = phi i64 [ %.sroa.27.1.lcssa.i59, %.lr.ph38.i69.us.preheader ], [ %i.hs, %middle.block381 ]
  %.sroa.43.234.i72.us.ph = phi ptr [ %.sroa.43.1.lcssa.i58, %.lr.ph38.i69.us.preheader ], [ %i.hu, %middle.block381 ]
  br label %.lr.ph38.i69.us

.lr.ph38.i69.us:                                  ; preds = %.lr.ph38.i69.us.preheader405, %.lr.ph38.i69.us
  %.sroa.9.236.i70.us = phi ptr [ %i.ih, %.lr.ph38.i69.us ], [ %.sroa.9.236.i70.us.ph, %.lr.ph38.i69.us.preheader405 ] ; 2 uses
  %.sroa.27.235.i71.us = phi i64 [ %i.ig, %.lr.ph38.i69.us ], [ %.sroa.27.235.i71.us.ph, %.lr.ph38.i69.us.preheader405 ] ; 2 uses
  %.sroa.43.234.i72.us = phi ptr [ %i.ie, %.lr.ph38.i69.us ], [ %.sroa.43.234.i72.us.ph, %.lr.ph38.i69.us.preheader405 ]
  %.val.i73.us = load ptr, ptr %.sroa.9.236.i70.us, align 8, !alias.scope !4573, !noalias !4576
  %i.id = ptrtoint ptr %.val.i73.us to i64
  %i.ie = getelementptr inbounds i8, ptr %.sroa.43.234.i72.us, i64 -8 ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.235.i71.us
  store i64 %i.id, ptr %i.if, align 8, !alias.scope !4576, !noalias !4591
  %i.ig = add i64 %.sroa.27.235.i71.us, 1         ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i70.us, i64 8 ; 3 uses
  %i.ii = icmp ult ptr %i.ih, %i.hh
  br i1 %i.ii, label %.lr.ph38.i69.us, label %._crit_edge39.i61, !llvm.loop !4595

.lr.ph38.i69.preheader.split:                     ; preds = %.lr.ph38.i69.preheader
  %.val.i.i.i.i52.i = load i32, ptr %.val15.i74, align 8, !noalias !4578, !noundef !3
  br label %.lr.ph38.i69

._crit_edge39.i61:                                ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit58.i, %.lr.ph38.i69.us, %middle.block381, %._crit_edge.i57
  %.sroa.43.2.lcssa.i62 = phi ptr [ %.sroa.43.1.lcssa.i58, %._crit_edge.i57 ], [ %i.ie, %.lr.ph38.i69.us ], [ %i.hu, %middle.block381 ], [ %i.im, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit58.i ]
  %.sroa.27.2.lcssa.i63 = phi i64 [ %.sroa.27.1.lcssa.i59, %._crit_edge.i57 ], [ %i.ig, %.lr.ph38.i69.us ], [ %i.hs, %middle.block381 ], [ %i.ip, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit58.i ] ; 9 uses
  %.sroa.9.2.lcssa.i64 = phi ptr [ %.sroa.9.1.lcssa.i60, %._crit_edge.i57 ], [ %i.ih, %.lr.ph38.i69.us ], [ %i.hr, %middle.block381 ], [ %i.iq, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit58.i ] ; 2 uses
  %i.ij = icmp eq i64 %.sroa.0.0.i56, %.sroa.16.0139358
  br i1 %i.ij, label %bb.bt, label %bb.bs

.lr.ph38.i69:                                     ; preds = %.lr.ph38.i69.preheader.split, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit58.i
  %.sroa.9.236.i70 = phi ptr [ %i.iq, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit58.i ], [ %.sroa.9.1.lcssa.i60, %.lr.ph38.i69.preheader.split ] ; 2 uses
  %.sroa.27.235.i71 = phi i64 [ %i.ip, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit58.i ], [ %.sroa.27.1.lcssa.i59, %.lr.ph38.i69.preheader.split ] ; 2 uses
  %.sroa.43.234.i72 = phi ptr [ %i.im, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit58.i ], [ %.sroa.43.1.lcssa.i58, %.lr.ph38.i69.preheader.split ]
  %.val.i73 = load ptr, ptr %.sroa.9.236.i70, align 8, !alias.scope !4573, !noalias !4576 ; 3 uses
  %i.ik = ptrtoint ptr %.val.i73 to i64
  %.not.i.i5.i.i55.i = icmp eq ptr %.val.i73, null
  br i1 %.not.i.i5.i.i55.i, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit58.i, label %bb.br

bb.br:                                            ; preds = %.lr.ph38.i69
  %.val.i.i6.i.i56.i = load i32, ptr %.val.i73, align 8, !noalias !4578, !noundef !3
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit58.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBc_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1w_NtB1w_10Parameters17iter_source_order0E0E0B1y_.exit58.i: ; preds = %bb.br, %.lr.ph38.i69
  %.sroa.02.0.i.i7.i.i57.i = phi i32 [ %.val.i.i6.i.i56.i, %bb.br ], [ -1, %.lr.ph38.i69 ]
  %i.il = icmp uge i32 %.val.i.i.i.i52.i, %.sroa.02.0.i.i7.i.i57.i ; 2 uses
  %i.im = getelementptr inbounds i8, ptr %.sroa.43.234.i72, i64 -8 ; 3 uses
  %.sroa.01.0.i59.i75 = select i1 %i.il, ptr %2, ptr %i.im
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i59.i75, i64 %.sroa.27.235.i71
  store i64 %i.ik, ptr %i.in, align 8, !alias.scope !4576, !noalias !4591
  %i.io = zext i1 %i.il to i64
  %i.ip = add i64 %.sroa.27.235.i71, %i.io        ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i70, i64 8 ; 3 uses
  %i.ir = icmp ult ptr %i.iq, %i.hh
  br i1 %i.ir, label %.lr.ph38.i69, label %._crit_edge39.i61

bb.bs:                                            ; preds = %._crit_edge39.i61
  %i.is = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i62, i64 -8
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i63
  %i.iu = load i64, ptr %.sroa.9.2.lcssa.i64, align 8, !alias.scope !4573, !noalias !4596
  store i64 %i.iu, ptr %i.it, align 8, !alias.scope !4576, !noalias !4599
  %i.iv = add i64 %.sroa.27.2.lcssa.i63, 1
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i64, i64 8
  br label %bb.bh

bb.bt:                                            ; preds = %._crit_edge39.i61
  %i.ix = shl i64 %.sroa.27.2.lcssa.i63, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph149, ptr nonnull align 8 %2, i64 %i.ix, i1 false), !alias.scope !4578
  %i.iy = sub i64 %.sroa.16.0139358, %.sroa.27.2.lcssa.i63 ; 7 uses
  %.not47.i65 = icmp eq i64 %.sroa.16.0139358, %.sroa.27.2.lcssa.i63
  br i1 %.not47.i65, label %.outer._crit_edge.thread, label %.lr.ph45.i66

.lr.ph45.i66:                                     ; preds = %bb.bt
  %i.iz = getelementptr [8 x i8], ptr %.sroa.0.0.ph149, i64 %.sroa.27.2.lcssa.i63 ; 2 uses
  %min.iters.check = icmp ult i64 %i.iy, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph45.i66
  %n.vec = and i64 %i.iy, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ja = xor i64 %index, -1
  %i.jb = getelementptr [8 x i8], ptr %i.ga, i64 %i.ja ; 2 uses
  %i.jc = getelementptr [8 x i8], ptr %i.iz, i64 %index ; 2 uses
  %i.jd = getelementptr i8, ptr %i.jb, i64 -8
  %i.je = getelementptr i8, ptr %i.jb, i64 -24
  %wide.load = load <2 x i64>, ptr %i.jd, align 8, !alias.scope !4576, !noalias !4573
  %wide.load370 = load <2 x i64>, ptr %i.je, align 8, !alias.scope !4576, !noalias !4573
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse371 = shufflevector <2 x i64> %wide.load370, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.jf = getelementptr i8, ptr %i.jc, i64 16
  store <2 x i64> %reverse, ptr %i.jc, align 8, !alias.scope !4573, !noalias !4576
  store <2 x i64> %reverse371, ptr %i.jf, align 8, !alias.scope !4573, !noalias !4576
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jg = icmp eq i64 %index.next, %n.vec
  br i1 %i.jg, label %middle.block, label %vector.body, !llvm.loop !4600

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.iy, %n.vec
  br i1 %cmp.n, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1C_NtB1C_10Parameters17iter_source_order0E0E0EB1E_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph45.i66, %middle.block
  %.sroa.07.043.i67.ph = phi i64 [ 0, %.lr.ph45.i66 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.07.043.i67 = phi i64 [ %i.jh, %scalar.ph ], [ %.sroa.07.043.i67.ph, %scalar.ph.preheader ] ; 3 uses
  %i.jh = add nuw i64 %.sroa.07.043.i67, 1        ; 2 uses
  %i.ji = xor i64 %.sroa.07.043.i67, -1
  %i.jj = getelementptr [8 x i8], ptr %i.ga, i64 %i.ji
  %i.jk = getelementptr [8 x i8], ptr %i.iz, i64 %.sroa.07.043.i67
  %i.jl = load i64, ptr %i.jj, align 8, !alias.scope !4576, !noalias !4573
  store i64 %i.jl, ptr %i.jk, align 8, !alias.scope !4573, !noalias !4576
  %exitcond.not.i68 = icmp eq i64 %i.jh, %i.iy
  br i1 %exitcond.not.i68, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1C_NtB1C_10Parameters17iter_source_order0E0E0EB1E_.exit, label %scalar.ph, !llvm.loop !4601

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1C_NtB1C_10Parameters17iter_source_order0E0E0EB1E_.exit: ; preds = %scalar.ph, %middle.block
  %i.jm = icmp ugt i64 %.sroa.27.2.lcssa.i63, %.sroa.16.0139358
  br i1 %i.jm, label %bb.bu, label %.outer, !prof !5

.outer._crit_edge.thread:                         ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1R_NtB1R_10Parameters17iter_source_order0E0EB1T_.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1C_NtB1C_10Parameters17iter_source_order0E0E0EB1E_.exit
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph149, i64 %.sroa.27.2.lcssa.i63 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.jo = icmp ult i64 %i.iy, 33
  br i1 %i.jo, label %.outer._crit_edge, label %.lr.ph

bb.bu:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1C_NtB1C_10Parameters17iter_source_order0E0E0EB1E_.exit
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i63, i64 noundef %.sroa.16.0139358, i64 noundef %.sroa.16.0139358, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #61
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapReECskLngH8kgpZI_15ruff_python_ast(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 captures(none) %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #4 {
bb.a:
  %.not.i = icmp samesign ugt i64 %4, %1
  br i1 %.not.i, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe12split_at_mutCskLngH8kgpZI_15ruff_python_ast.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @237, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #61, !noalias !4602
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe12split_at_mutCskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %bb.a
  %.not.i7 = icmp samesign ugt i64 %4, %3
  br i1 %.not.i7, label %bb.c, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe12split_at_mutCskLngH8kgpZI_15ruff_python_ast.exit11.preheader.split, !prof !5

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe12split_at_mutCskLngH8kgpZI_15ruff_python_ast.exit11.preheader.split: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe12split_at_mutCskLngH8kgpZI_15ruff_python_ast.exit
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe12split_at_mutCskLngH8kgpZI_15ruff_python_ast.exit11._crit_edge, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe12split_at_mutCskLngH8kgpZI_15ruff_python_ast.exit11.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe12split_at_mutCskLngH8kgpZI_15ruff_python_ast.exit11.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe12split_at_mutCskLngH8kgpZI_15ruff_python_ast.exit11.preheader.split
  %i.a = getelementptr [16 x i8], ptr %2, i64 %4  ; 3 uses
  %xtraiter = and i64 %4, 1
  %i.b = icmp eq i64 %4, 1
  br i1 %i.b, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe12split_at_mutCskLngH8kgpZI_15ruff_python_ast.exit11.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe12split_at_mutCskLngH8kgpZI_15ruff_python_ast.exit11.preheader.new

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe12split_at_mutCskLngH8kgpZI_15ruff_python_ast.exit11.preheader.new: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe12split_at_mutCskLngH8kgpZI_15ruff_python_ast.exit11.preheader
  %unroll_iter = and i64 %4, 9223372036854775806
end_hunk_0
