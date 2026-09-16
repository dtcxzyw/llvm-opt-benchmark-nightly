Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_ast-79536ef50c0fac99.ruff_python_ast.f1da3f06107471d8-cgu.0?download=true
inline.NumInlined: 7999
inline.NumDeleted: 3540
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB19_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1y_NtB1y_10Parameters17iter_source_order0E0EB1A_:.lr.ph.i
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.1

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.1: ; preds = %bb.h, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.1
  %.sroa.02.0.i.i7.i30.i.1 = phi i32 [ %.val.i.i6.i29.i.1, %bb.h ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.1 ]
  %i.ab = icmp ult i32 %.sroa.02.0.i.i.i27.i.1, %.sroa.02.0.i.i7.i30.i.1 ; 3 uses
  %..i.i.1 = select i1 %i.ab, ptr %i.r, ptr %i.q
  %i.ac = xor i1 %i.ab, true
  %i.ad = load i64, ptr %..i.i.1, align 8, !alias.scope !4514, !noalias !4517
  store i64 %i.ad, ptr %i.s, align 8, !noalias !4518
  %.neg.i.i.1 = sext i1 %i.ac to i64
  %i.ae = getelementptr [8 x i8], ptr %i.q, i64 %.neg.i.i.1 ; 3 uses
  %.neg15.i.i.1 = sext i1 %i.ab to i64
  %i.af = getelementptr [8 x i8], ptr %i.r, i64 %.neg15.i.i.1 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.011.0.val.i.2 = load ptr, ptr %i.x, align 8, !alias.scope !4514, !align !54, !noundef !46 ; 2 uses
  %.sroa.06.0.val.i.2 = load ptr, ptr %i.z, align 8, !alias.scope !4514 ; 2 uses
  %.not.i.i.i.i.2 = icmp eq ptr %.sroa.011.0.val.i.2, null
  br i1 %.not.i.i.i.i.2, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.2, label %bb.i

bb.i:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.1
  %.val.i.i.i.i.2 = load i32, ptr %.sroa.011.0.val.i.2, align 8, !noalias !4514, !noundef !46
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.2

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.2: ; preds = %bb.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.1
  %.sroa.02.0.i.i.i.i.2 = phi i32 [ %.val.i.i.i.i.2, %bb.i ], [ -1, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.1 ]
  %.not.i.i5.i.i.2 = icmp eq ptr %.sroa.06.0.val.i.2, null
  br i1 %.not.i.i5.i.i.2, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.2, label %bb.j

bb.j:                                             ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.2
  %.val.i.i6.i.i.2 = load i32, ptr %.sroa.06.0.val.i.2, align 8, !noalias !4514, !noundef !46
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.2

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.2: ; preds = %bb.j, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.2
  %.sroa.02.0.i.i7.i.i.2 = phi i32 [ %.val.i.i6.i.i.2, %bb.j ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.2 ]
  %i.ah = icmp ult i32 %.sroa.02.0.i.i.i.i.2, %.sroa.02.0.i.i7.i.i.2 ; 3 uses
  %..i23.i.2 = select i1 %i.ah, ptr %i.x, ptr %i.z
  %i.ai = xor i1 %i.ah, true
  %i.aj = load i64, ptr %..i23.i.2, align 8, !alias.scope !4514, !noalias !4515
  store i64 %i.aj, ptr %i.aa, align 8, !noalias !4516
  %i.ak = zext i1 %i.ah to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ak ; 3 uses
  %i.am = zext i1 %i.ai to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.017.0.val.i.2 = load ptr, ptr %i.ae, align 8, !alias.scope !4514, !align !54, !noundef !46 ; 2 uses
  %.sroa.015.0.val.i.2 = load ptr, ptr %i.af, align 8, !alias.scope !4514 ; 2 uses
  %.not.i.i.i24.i.2 = icmp eq ptr %.sroa.017.0.val.i.2, null
  br i1 %.not.i.i.i24.i.2, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.2, label %bb.k

bb.k:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.2
  %.val.i.i.i25.i.2 = load i32, ptr %.sroa.017.0.val.i.2, align 8, !noalias !4514, !noundef !46
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.2

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.2: ; preds = %bb.k, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.2
  %.sroa.02.0.i.i.i27.i.2 = phi i32 [ %.val.i.i.i25.i.2, %bb.k ], [ -1, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.2 ]
  %.not.i.i5.i28.i.2 = icmp eq ptr %.sroa.015.0.val.i.2, null
  br i1 %.not.i.i5.i28.i.2, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.2, label %bb.l

bb.l:                                             ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.2
  %.val.i.i6.i29.i.2 = load i32, ptr %.sroa.015.0.val.i.2, align 8, !noalias !4514, !noundef !46
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.2

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.2: ; preds = %bb.l, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.2
  %.sroa.02.0.i.i7.i30.i.2 = phi i32 [ %.val.i.i6.i29.i.2, %bb.l ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.2 ]
  %i.ap = icmp ult i32 %.sroa.02.0.i.i.i27.i.2, %.sroa.02.0.i.i7.i30.i.2 ; 3 uses
  %..i.i.2 = select i1 %i.ap, ptr %i.af, ptr %i.ae
  %i.aq = xor i1 %i.ap, true
  %i.ar = load i64, ptr %..i.i.2, align 8, !alias.scope !4514, !noalias !4517
  store i64 %i.ar, ptr %i.ag, align 8, !noalias !4518
  %.neg.i.i.2 = sext i1 %i.aq to i64
  %i.as = getelementptr [8 x i8], ptr %i.ae, i64 %.neg.i.i.2 ; 3 uses
  %.neg15.i.i.2 = sext i1 %i.ap to i64
  %i.at = getelementptr [8 x i8], ptr %i.af, i64 %.neg15.i.i.2 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.011.0.val.i.3 = load ptr, ptr %i.al, align 8, !alias.scope !4514, !align !54, !noundef !46 ; 2 uses
  %.sroa.06.0.val.i.3 = load ptr, ptr %i.an, align 8, !alias.scope !4514 ; 2 uses
  %.not.i.i.i.i.3 = icmp eq ptr %.sroa.011.0.val.i.3, null
  br i1 %.not.i.i.i.i.3, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.3, label %bb.m

bb.m:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.2
  %.val.i.i.i.i.3 = load i32, ptr %.sroa.011.0.val.i.3, align 8, !noalias !4514, !noundef !46
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.3

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.3: ; preds = %bb.m, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.2
  %.sroa.02.0.i.i.i.i.3 = phi i32 [ %.val.i.i.i.i.3, %bb.m ], [ -1, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.2 ]
  %.not.i.i5.i.i.3 = icmp eq ptr %.sroa.06.0.val.i.3, null
  br i1 %.not.i.i5.i.i.3, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.3, label %bb.n

bb.n:                                             ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.3
  %.val.i.i6.i.i.3 = load i32, ptr %.sroa.06.0.val.i.3, align 8, !noalias !4514, !noundef !46
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.3

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.3: ; preds = %bb.n, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.3
  %.sroa.02.0.i.i7.i.i.3 = phi i32 [ %.val.i.i6.i.i.3, %bb.n ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.3 ]
  %i.av = icmp ult i32 %.sroa.02.0.i.i.i.i.3, %.sroa.02.0.i.i7.i.i.3 ; 3 uses
  %..i23.i.3 = select i1 %i.av, ptr %i.al, ptr %i.an
  %i.aw = xor i1 %i.av, true
  %i.ax = load i64, ptr %..i23.i.3, align 8, !alias.scope !4514, !noalias !4515
  store i64 %i.ax, ptr %i.ao, align 8, !noalias !4516
  %i.ay = zext i1 %i.av to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ay
  %i.ba = zext i1 %i.aw to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ba
  %.sroa.017.0.val.i.3 = load ptr, ptr %i.as, align 8, !alias.scope !4514, !align !54, !noundef !46 ; 2 uses
  %.sroa.015.0.val.i.3 = load ptr, ptr %i.at, align 8, !alias.scope !4514 ; 2 uses
  %.not.i.i.i24.i.3 = icmp eq ptr %.sroa.017.0.val.i.3, null
  br i1 %.not.i.i.i24.i.3, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.3, label %bb.o

bb.o:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.3
  %.val.i.i.i25.i.3 = load i32, ptr %.sroa.017.0.val.i.3, align 8, !noalias !4514, !noundef !46
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.3

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.3: ; preds = %bb.o, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.3
  %.sroa.02.0.i.i.i27.i.3 = phi i32 [ %.val.i.i.i25.i.3, %bb.o ], [ -1, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.3 ]
  %.not.i.i5.i28.i.3 = icmp eq ptr %.sroa.015.0.val.i.3, null
  br i1 %.not.i.i5.i28.i.3, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.3, label %bb.p

bb.p:                                             ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.3
  %.val.i.i6.i29.i.3 = load i32, ptr %.sroa.015.0.val.i.3, align 8, !noalias !4514, !noundef !46
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.3

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.3: ; preds = %bb.p, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.3
  %.sroa.02.0.i.i7.i30.i.3 = phi i32 [ %.val.i.i6.i29.i.3, %bb.p ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.3 ]
  %i.bc = icmp ult i32 %.sroa.02.0.i.i.i27.i.3, %.sroa.02.0.i.i7.i30.i.3 ; 3 uses
  %..i.i.3 = select i1 %i.bc, ptr %i.at, ptr %i.as
  %i.bd = xor i1 %i.bc, true
  %i.be = load i64, ptr %..i.i.3, align 8, !alias.scope !4514, !noalias !4517
  store i64 %i.be, ptr %i.au, align 8, !noalias !4518
  %.neg.i.i.3 = sext i1 %i.bd to i64
  %i.bf = getelementptr [8 x i8], ptr %i.as, i64 %.neg.i.i.3
  %.neg15.i.i.3 = sext i1 %i.bc to i64
  %i.bg = getelementptr [8 x i8], ptr %i.at, i64 %.neg15.i.i.3
  %i.bh = getelementptr i8, ptr %i.bg, i64 8
  %i.bi = getelementptr i8, ptr %i.bf, i64 8
  %i.bj = icmp ne ptr %i.bb, %i.bh
  %i.bk = icmp ne ptr %i.az, %i.bi
  %or.cond.i = select i1 %i.bj, i1 true, i1 %i.bk, !prof !91
  br i1 %or.cond.i, label %bb.q, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB1g_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1F_NtB1F_10Parameters17iter_source_order0E0EB1H_.exit, !prof !91

bb.q:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.3
  tail call void @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #61, !noalias !4514
  unreachable

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB1g_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1F_NtB1F_10Parameters17iter_source_order0E0EB1H_.exit: ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.3
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSBW_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1l_NtB1l_10Parameters17iter_source_order0E0EB1n_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ao, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i110 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i115 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ak, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ak ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.eb, %bb.ak ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dz, %bb.ak ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1s_NtB1s_10Parameters17iter_source_order0E0EB1u_.exit
  %.sroa.021.0 = phi i8 [ %i.bj, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1s_NtB1s_10Parameters17iter_source_order0E0EB1u_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1s_NtB1s_10Parameters17iter_source_order0E0EB1u_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph77, label %._crit_edge

.lr.ph77:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.x

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4543)
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i.thread113, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i.thread, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i, %bb.h
  br i1 %4, label %bb.v, label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE7reverseBV_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i = load ptr, ptr %i.q, align 8, !alias.scope !4543, !noalias !4544, !align !54, !noundef !46 ; 4 uses
  %.val11.i = load ptr, ptr %i.o, align 8, !alias.scope !4543, !noalias !4544 ; 2 uses
  %.not.i.i.i47 = icmp eq ptr %.val10.i, null
  br i1 %.not.i.i.i47, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i49, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val.i.i.i48 = load i32, ptr %.val10.i, align 8, !noalias !4545, !noundef !46
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i49

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i49: ; preds = %bb.l, %bb.k
  %.sroa.02.0.i.i.i50 = phi i32 [ %.val.i.i.i48, %bb.l ], [ -1, %bb.k ]
  %.not.i.i5.i51 = icmp eq ptr %.val11.i, null
  br i1 %.not.i.i5.i51, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit54, label %bb.m

bb.m:                                             ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i49
  %.val.i.i6.i52 = load i32, ptr %.val11.i, align 8, !noalias !4545, !noundef !46
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit54

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit54: ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i49, %bb.m
  %.sroa.02.0.i.i7.i53 = phi i32 [ %.val.i.i6.i52, %bb.m ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i49 ]
  %i.r = icmp ult i32 %.sroa.02.0.i.i.i50, %.sroa.02.0.i.i7.i53 ; 2 uses
  %.not84 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader64

.preheader64:                                     ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit54
  br i1 %.not84, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit54
  br i1 %.not84, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i.thread113, label %.lr.ph72

.lr.ph:                                           ; preds = %.preheader64, %bb.p
  %.val9.i = phi ptr [ %.val8.i, %bb.p ], [ %.val10.i, %.preheader64 ] ; 2 uses
  %.sroa.01.0.i.i69 = phi i64 [ %i.w, %bb.p ], [ 2, %.preheader64 ] ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i69
  %i.t = add nsw i64 %.sroa.01.0.i.i69, -1
  %i.u = icmp ult i64 %i.t, %i.n
  tail call void @llvm.assume(i1 %i.u)
  %.val8.i = load ptr, ptr %i.s, align 8, !alias.scope !4543, !noalias !4544, !align !54, !noundef !46 ; 3 uses
  %.not.i.i.i39 = icmp eq ptr %.val8.i, null
  br i1 %.not.i.i.i39, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i41, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %.val.i.i.i40 = load i32, ptr %.val8.i, align 8, !noalias !4545, !noundef !46
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i41

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i41: ; preds = %bb.n, %.lr.ph
  %.sroa.02.0.i.i.i42 = phi i32 [ %.val.i.i.i40, %bb.n ], [ -1, %.lr.ph ]
  %.not.i.i5.i43 = icmp eq ptr %.val9.i, null
  br i1 %.not.i.i5.i43, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit46, label %bb.o

bb.o:                                             ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i41
  %.val.i.i6.i44 = load i32, ptr %.val9.i, align 8, !noalias !4545, !noundef !46
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit46

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit46: ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i41, %bb.o
  %.sroa.02.0.i.i7.i45 = phi i32 [ %.val.i.i6.i44, %bb.o ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i41 ]
  %i.v = icmp ult i32 %.sroa.02.0.i.i.i42, %.sroa.02.0.i.i7.i45
  br i1 %i.v, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i, label %bb.p

bb.p:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit46
  %i.w = add nuw i64 %.sroa.01.0.i.i69, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i, label %.lr.ph

.lr.ph72:                                         ; preds = %.preheader, %bb.s
  %.val7.i = phi ptr [ %.val.i, %bb.s ], [ %.val10.i, %.preheader ] ; 2 uses
  %.sroa.01.1.i.i71 = phi i64 [ %i.ab, %bb.s ], [ 2, %.preheader ] ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i71
  %i.y = add nsw i64 %.sroa.01.1.i.i71, -1
  %i.z = icmp ult i64 %i.y, %i.n
  tail call void @llvm.assume(i1 %i.z)
  %.val.i = load ptr, ptr %i.x, align 8, !alias.scope !4543, !noalias !4544, !align !54, !noundef !46 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph72
  %.val.i.i.i = load i32, ptr %.val.i, align 8, !noalias !4545, !noundef !46
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i: ; preds = %bb.q, %.lr.ph72
  %.sroa.02.0.i.i.i = phi i32 [ %.val.i.i.i, %bb.q ], [ -1, %.lr.ph72 ]
  %.not.i.i5.i = icmp eq ptr %.val7.i, null
  br i1 %.not.i.i5.i, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit, label %bb.r

bb.r:                                             ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i
  %.val.i.i6.i = load i32, ptr %.val7.i, align 8, !noalias !4545, !noundef !46
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit: ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i, %bb.r
  %.sroa.02.0.i.i7.i = phi i32 [ %.val.i.i6.i, %bb.r ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i ]
  %i.aa = icmp ult i32 %.sroa.02.0.i.i.i, %.sroa.02.0.i.i7.i
  br i1 %i.aa, label %bb.s, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i

bb.s:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit
  %i.ab = add nuw i64 %.sroa.01.1.i.i71, 1        ; 2 uses
  %exitcond92.not = icmp eq i64 %i.ab, %i.n
  br i1 %exitcond92.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i, label %.lr.ph72

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i: ; preds = %bb.p, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit46, %bb.s, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i71, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit ], [ %i.n, %bb.s ], [ %.sroa.01.0.i.i69, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit46 ], [ %i.n, %bb.p ] ; 6 uses
  %i.ac = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ac)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.t

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i.thread113: ; preds = %.preheader
  br i1 %.not5.i115, label %bb.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit11.preheader.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i.thread: ; preds = %.preheader64
  br i1 %.not5.i110, label %bb.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE7reverseBV_.exit

bb.t:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i
  br i1 %i.r, label %bb.w, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE7reverseBV_.exit

bb.u:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.ad = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1s_NtB1s_10Parameters17iter_source_order0E0EB1u_.exit

bb.v:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1u_NtB1u_10Parameters17iter_source_order0E0EB1w_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !4523
  %i.ae = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1s_NtB1s_10Parameters17iter_source_order0E0EB1u_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE7reverseBV_.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit11.i.i, %middle.block, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i.thread, %bb.j, %bb.w, %bb.t
  %.sroa.0.0.i.i5962 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.t ], [ %.sroa.0.0.i.i, %bb.w ], [ 2, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i.thread ], [ %.sroa.0.0.i.i111118122, %middle.block ], [ %.sroa.0.0.i.i111118122, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit11.i.i ]
  %i.ag = shl nuw nsw i64 %.sroa.0.0.i.i5962, 1
  %i.ah = or disjoint i64 %i.ag, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1s_NtB1s_10Parameters17iter_source_order0E0EB1u_.exit

bb.w:                                             ; preds = %bb.t
  %i.ai = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4546), !noalias !4544
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4547), !noalias !4544
  %.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE7reverseBV_.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit11.preheader.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i.thread113, %bb.w
  %i.aj = phi i64 [ %i.ai, %bb.w ], [ 1, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i.thread113 ] ; 4 uses
  %.sroa.0.0.i.i111118122 = phi i64 [ %.sroa.0.0.i.i, %bb.w ], [ 2, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i.thread113 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i111118122 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.aj, 4
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit11.preheader.i.i
  %n.vec = and i64 %i.aj, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = xor i64 %index, -1
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.ak, i64 %i.al ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x ptr>, ptr %i.am, align 8, !alias.scope !4548, !noalias !4549
  %wide.load135 = load <2 x ptr>, ptr %i.ao, align 8, !alias.scope !4548, !noalias !4549
  %i.ap = getelementptr i8, ptr %i.an, i64 -8
  %i.aq = getelementptr i8, ptr %i.an, i64 -24
  %wide.load136 = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !4550, !noalias !4551
  %wide.load137 = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !4550, !noalias !4551
  %reverse = shufflevector <2 x i64> %wide.load136, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse138 = shufflevector <2 x i64> %wide.load137, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x i64> %reverse, ptr %i.am, align 8, !alias.scope !4548, !noalias !4549
  store <2 x i64> %reverse138, ptr %i.ar, align 8, !alias.scope !4548, !noalias !4549
  %i.as = getelementptr i8, ptr %i.an, i64 -8
  %i.at = getelementptr i8, ptr %i.an, i64 -24
  %reverse139 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse140 = shufflevector <2 x ptr> %wide.load135, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse139, ptr %i.as, align 8, !alias.scope !4550, !noalias !4551
  store <2 x ptr> %reverse140, ptr %i.at, align 8, !alias.scope !4550, !noalias !4551
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !4529

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE7reverseBV_.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit11.i.i.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit11.i.i.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit11.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit11.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit11.i.i.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ba, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit11.i.i.preheader ] ; 3 uses
  %i.av = xor i64 %.sroa.0.016.i.i, -1
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %i.ak, i64 %i.av ; 2 uses
  %i.ay = load ptr, ptr %i.aw, align 8, !alias.scope !4548, !noalias !4549, !align !54, !noundef !46
  %i.az = load i64, ptr %i.ax, align 8, !alias.scope !4550, !noalias !4551
  store i64 %i.az, ptr %i.aw, align 8, !alias.scope !4548, !noalias !4549
  store ptr %i.ay, ptr %i.ax, align 8, !alias.scope !4550, !noalias !4551
  %i.ba = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ba, %i.aj
  br i1 %exitcond.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE7reverseBV_.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit11.i.i, !llvm.loop !4530

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1s_NtB1s_10Parameters17iter_source_order0E0EB1u_.exit: ; preds = %bb.u, %bb.v, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE7reverseBV_.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ah, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE7reverseBV_.exit ], [ %i.af, %bb.v ], [ %i.ad, %bb.u ] ; 2 uses
  %i.bb = lshr i64 %.sroa.023.0, 1
  %i.bc = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bd = sub nsw i64 %factor, %i.bb
  %i.be = add nuw nsw i64 %i.bc, %factor
  %i.bf = mul i64 %i.bd, %.sroa.0.0
  %i.bg = mul i64 %i.be, %.sroa.0.0
  %i.bh = xor i64 %i.bg, %i.bf
  %i.bi = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bh, i1 false)
  %i.bj = trunc nuw nsw i64 %i.bi to i8
  br label %bb.g

bb.x:                                             ; preds = %.lr.ph77, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1v_NtB1v_10Parameters17iter_source_order0E0EB1x_.exit
  %.sroa.02.176 = phi i64 [ %.sroa.02.0, %.lr.ph77 ], [ %i.bk, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1v_NtB1v_10Parameters17iter_source_order0E0EB1x_.exit ] ; 2 uses
  %.sroa.023.175 = phi i64 [ %.sroa.023.0, %.lr.ph77 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1v_NtB1v_10Parameters17iter_source_order0E0EB1x_.exit ] ; 4 uses
  %i.bk = add i64 %.sroa.02.176, -1               ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noundef !46
  %.not29 = icmp ult i8 %i.bm, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.y

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1v_NtB1v_10Parameters17iter_source_order0E0EB1x_.exit, %bb.x, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.175, %bb.x ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1v_NtB1v_10Parameters17iter_source_order0E0EB1x_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.176, %bb.x ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1v_NtB1v_10Parameters17iter_source_order0E0EB1x_.exit ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bo, align 1
  br i1 %i.k, label %bb.ak, label %bb.al

bb.y:                                             ; preds = %bb.x
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bk
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !46 ; 3 uses
  %i.br = lshr i64 %i.bq, 1                       ; 8 uses
  %i.bs = lshr i64 %.sroa.023.175, 1              ; 6 uses
  %i.bt = add nuw i64 %i.br, %i.bs                ; 4 uses
  %i.bu = sub i64 %.sroa.09.0, %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bu ; 6 uses
  %i.bw = icmp samesign ugt i64 %i.bt, %3
  %i.bx = trunc i64 %.sroa.023.175 to i1
  %i.by = or i64 %i.bq, %.sroa.023.175
  %i.bz = trunc i64 %i.by to i1
  %or.cond3.i = or i1 %i.bw, %i.bz
  br i1 %or.cond3.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ca = trunc i64 %i.bq to i1
  br i1 %i.ca, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.cb = shl nuw nsw i64 %i.bt, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1v_NtB1v_10Parameters17iter_source_order0E0EB1x_.exit

bb.ab:                                            ; preds = %bb.ac, %bb.z
  br i1 %i.bx, label %bb.ad, label %bb.aj

bb.ac:                                            ; preds = %bb.z
  %i.cc = or i64 %i.br, 1
  %i.cd = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true)
  %i.ce = trunc nuw nsw i64 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 1
  %i.cg = xor i32 %i.cf, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1u_NtB1u_10Parameters17iter_source_order0E0EB1w_(ptr noalias noundef nonnull align 8 %i.bv, i64 noundef range(i64 0, 1152921504606846976) %i.br, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !4531
  br label %bb.ab

bb.ad:                                            ; preds = %bb.aj, %bb.ab
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4553)
  %i.ch = icmp eq i64 %i.br, 0
  %i.ci = icmp eq i64 %i.bs, 0
  %or.cond.i = or i1 %i.ci, %i.ch
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1m_NtB1m_10Parameters17iter_source_order0E0EB1o_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 range(i64 0, -9223372036854775808) %i.br) ; 2 uses
  %i.cj = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.cj, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1m_NtB1m_10Parameters17iter_source_order0E0EB1o_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ae
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.br ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.br, %i.bs  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.ck, ptr %i.bv
  %i.cl = shl nuw nsw i64 %.sroa.0.0.i.i35, 3     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cl, i1 false), !alias.scope !4554
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 %i.cl ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.i
  %i.cn = phi ptr [ %i.cy, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.i ], [ %i.cm, %.critedge.i ]
  %i.co = phi ptr [ %i.cw, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.i ], [ %i.ck, %.critedge.i ]
  %.sroa.0.0.i17.i = phi ptr [ %i.cr, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.i ], [ %i.m, %.critedge.i ]
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -8 ; 3 uses
  %i.cq = getelementptr inbounds i8, ptr %i.cn, i64 -8 ; 3 uses
  %i.cr = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -8 ; 2 uses
  %.val.i.i = load ptr, ptr %i.cq, align 8, !alias.scope !4553, !noalias !4555, !align !54, !noundef !46 ; 2 uses
  %.val10.i.i = load ptr, ptr %i.cp, align 8, !alias.scope !4552, !noalias !4556 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i.i.i, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %.preheader.i
end_hunk_0
begin_hunk_1_@_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache21detect_and_initialize

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtNtCs2AWtUsOyxgP_3std3sys6random5linux19hashmap_random_keys() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.fptosi.sat.i128.f64(double) #43

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsb_NtCs4NRVxsYgnAr_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs8_NtCscuBBDlOF0VN_8schemars6schemaNtB5_6SchemaINtNtCs4NRVxsYgnAr_4core7convert7TryFromNtNtCscvBHLZPbXnS_10serde_json5value5ValueE8try_from(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs6_NtCscuBBDlOF0VN_8schemars6schemaNtB5_6Schema13ensure_object(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCscuBBDlOF0VN_8schemars17json_schema_impls10primitivesNtNtCscdodAO9FK5_5alloc6string6StringNtB9_10JsonSchema11json_schema(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(200)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs1_NtNtCs9OSMwK5JXHk_12aho_corasick4util5errorNtB5_10MatchError24invalid_input_unanchored() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs1_NtNtCs9OSMwK5JXHk_12aho_corasick4util5errorNtB5_10MatchError22invalid_input_anchored() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs2MoD74u7shA_14ruff_text_size5rangeNtB2_9TextRangeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter11debug_tuple(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3fmt5floatdNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtNtCs4NRVxsYgnAr_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCs4NRVxsYgnAr_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsm_NtNtCs4NRVxsYgnAr_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsk_NtCs4NRVxsYgnAr_4core3fmtcNtB5_7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noundef nonnull, i64 noundef) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXsf_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsS_NtNtCs9OSMwK5JXHk_12aho_corasick4util10primitivesNtB5_9PatternIDNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter10PrefilterIEL_E9drop_slowBM_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsb2V9IiE8ECc_7seahash6streamNtB5_9SeaHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5write(ptr noalias noundef align 8 dereferenceable(56), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsb2V9IiE8ECc_7seahash6streamNtB5_9SeaHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher8write_u8(ptr noalias noundef align 8 dereferenceable(56), i8 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCs4NRVxsYgnAr_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #43

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsi_NtCs2AWtUsOyxgP_3std4pathNtB5_10ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCs4NRVxsYgnAr_4core3fmtbNtB5_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_6Binary3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtCs4NRVxsYgnAr_4core3fmt3numtNtB7_6Binary3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsc_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_5Octal3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsk_NtNtCs4NRVxsYgnAr_4core3fmt3numtNtB7_5Octal3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXso_NtNtCs4NRVxsYgnAr_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsb_NtCs4NRVxsYgnAr_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias noundef align 8 dereferenceable(24), i32 noundef range(i32 0, 1114112)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare noundef ptr @_RINvNtCs9OSMwK5JXHk_12aho_corasick9automaton24try_find_overlapping_fwdRNtNtB4_3dfa3DFAEB4_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #6

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtCs9OSMwK5JXHk_12aho_corasick9automaton12try_find_fwdRNtNtB4_3dfa3DFAEB4_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path9file_stem(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #57

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #43

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #58

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #43

attributes #0 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2,+avx,+avx2,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { mustprogress norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nofree norecurse nosync nounwind nonlazybind memory(read, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { nofree nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { nofree nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { alwaysinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #36 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #38 = { nofree nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #39 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #40 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #41 = { inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #42 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #43 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #44 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #45 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #46 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #47 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #48 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #49 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #50 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #51 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #52 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #53 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #54 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #55 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #56 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #57 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #58 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #59 = { cold }
attributes #60 = { cold noreturn nounwind }
attributes #61 = { noreturn }
attributes #62 = { nounwind }
attributes #63 = { "function-inline-cost-multiplier"="2" }
attributes #64 = { nounwind memory(inaccessiblemem: readwrite) }
attributes #65 = { cold "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!43, !44}
!llvm.ident = !{!45}

!0 = distinct !{null}
!1 = distinct !{null, null, null}
!2 = distinct !{null, null, null, null}
!3 = distinct !{null}
!4 = distinct !{null}
!5 = distinct !{null, null, null, null}
!6 = distinct !{null}
!7 = distinct !{null}
!8 = distinct !{null}
!9 = distinct !{null}
!10 = distinct !{null, ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEEB1b_, null}
!11 = distinct !{null, ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableStmtEEB1b_, null}
!12 = distinct !{null, ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEEEB1x_, ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementEBF_, ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEEB1b_, null}
!13 = distinct !{null, ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEEEB1x_, ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementEBF_, ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEEB1b_, null, ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEBF_}
!14 = distinct !{null}
!15 = distinct !{null, ptr @_RNvXs40_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_26InterpolatedStringElementsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq, null, null, null}
!16 = distinct !{ptr @_RNvXs7G_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9ArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq, null, null}
!17 = distinct !{null}
!18 = distinct !{null, null, null}
!19 = distinct !{null, null}
!20 = distinct !{null}
!21 = distinct !{null}
!22 = distinct !{null, null}
!23 = distinct !{null}
!24 = distinct !{null}
!25 = distinct !{null}
!26 = distinct !{null}
!27 = distinct !{null}
!28 = distinct !{null, null, ptr @_RINvXs41_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB7_26InterpolatedStringElementsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1j_7tracker15StandardTrackerEB9_, null, null, null}
!29 = distinct !{null}
!30 = distinct !{null, ptr @_RINvXs46_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB7_7TStringNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtBZ_7tracker15StandardTrackerEB9_, null, ptr @_RINvXs41_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB7_26InterpolatedStringElementsNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB1j_7tracker15StandardTrackerEB9_, null}
!31 = distinct !{null, null}
!32 = distinct !{null}
!33 = distinct !{null}
!34 = distinct !{null}
!35 = distinct !{null}
!36 = distinct !{ptr @_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqBK_, null}
!37 = distinct !{null, null, null}
!38 = distinct !{null}
!39 = distinct !{null, null}
!40 = distinct !{null, null}
!41 = distinct !{null, null, null}
!42 = distinct !{null, null, null, null, null}
!43 = !{i32 8, !"PIC Level", i32 2}
!44 = !{i32 2, !"RtLibUseGOT", i32 1}
!45 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!46 = !{}
!47 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!48 = !{i8 -1, i8 -45}
!49 = !{i32 -1, i32 33}
!50 = !{i8 0, i8 26}
!51 = !{i8 0, i8 2}
!52 = !{i64 0, i64 -9223372036854775808}
!53 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!54 = !{i64 8}
!55 = !{i8 97, i8 1}
!56 = !{i64 0, i64 94}
!57 = !{i64 -2, i64 -9223372036854775808}
!58 = !{i64 -1, i64 -9223372036854775808}
!59 = !{!"branch_weights", i32 1, i32 1999}
!60 = !{!"branch_weights", i32 0, i32 1}
!61 = !{!"branch_weights", i32 2002, i32 2000}
!62 = !{i32 0, i32 33}
!63 = !{i64 0, i64 -9223372036854775800}
!64 = !{i64 0, i64 3}
!65 = !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEEB1d_}
!66 = !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_}
!67 = !{i8 -1, i8 -38}
!68 = !{i64 -2, i64 -9223372036854775773}
!69 = !{i8 0, i8 -45}
!70 = !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEEB1z_, ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_}
!71 = !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEEB1z_}
!72 = !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEBF_}
!73 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!74 = !{i64 0, i64 25}
!75 = !{i64 1, i64 536870913}
!76 = !{i8 0, i8 6}
!77 = !{i64 0, i64 4}
!78 = !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEEB1b_}
!79 = !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEEEB1z_, ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEEB1d_}
!80 = !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprEEEB1z_}
!81 = !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableStmtEEB1b_}
!82 = !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparablePatternEEB1b_}
!83 = !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementEBF_}
!84 = !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEEEB1x_, ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementEBF_, ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementEEB1b_}
!85 = !{i64 0, i64 2}
!86 = !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB11_}
!87 = !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEB1d_, ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEEB1z_}
!88 = !{ptr @_RNvXs6_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_, ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEEB1d_}
!89 = !{!"branch_weights", i32 1, i32 4001}
!90 = !{ptr @_RNvXs7G_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9ArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq}
!91 = !{!"branch_weights", i32 4001, i32 4000000}
!92 = !{!"llvm.loop.isvectorized", i32 1}
!93 = !{!"llvm.loop.unroll.runtime.disable"}
!94 = !{i64 0, i64 -9223372036854775807}
!95 = !{i8 97, i8 0}
!96 = !{!"llvm.loop.unroll.disable"}
!97 = !{i64 32}
!98 = !{i8 0, i8 107}
!99 = !{i8 0, i8 -38}
!100 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!101 = !{i64 0, i64 33}
!102 = !{i8 -2, i8 -45}
!103 = !{i64 4}
!104 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!105 = !{!"branch_weights", i32 4000000, i32 4001}
!106 = !{!"branch_weights", i32 -2147483648, i32 -2147483648}
!107 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!108 = !{i32 0, i32 2}
!109 = !{i8 -1, i8 91}
!110 = !{i8 0, i8 3}
!111 = !{i8 0, i8 10}
!112 = !{ptr @_RNvXsy_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB5_14ComparableExprINtNtCs4NRVxsYgnAr_4core7convert4FromRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtB7_9generated4ExprEE4from}
!113 = !{i8 0, i8 13}
!114 = !{i8 0, i8 4}
!115 = !{i8 -1, i8 6}
!116 = !{!"llvm.loop.peeled.count", i32 1}
!117 = !{i32 1, i32 0}
!118 = !{i8 0, i8 9}
end_hunk_1
