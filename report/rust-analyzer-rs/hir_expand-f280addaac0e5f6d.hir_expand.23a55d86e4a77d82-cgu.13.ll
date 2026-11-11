Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_expand-f280addaac0e5f6d.hir_expand.23a55d86e4a77d82-cgu.13?download=true
inline.NumInlined: 1124
inline.NumDeleted: 541
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB6_6StringINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendcE6extendINtNtNtBS_8adapters10filter_map9FilterMapNtNtBU_5ascii13EscapeDefaultNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB2Z_19concat_bytes_expand0E0EEB33_:bb.a
  %.sroa.4.0.extract.shift = lshr i64 %1, 40      ; 2 uses
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !596
  store i64 %1, ptr %i.a, align 8, !noalias !597
  %i.b = icmp ult i8 %.sroa.3.0.extract.trunc, %.sroa.4.0.extract.trunc
  br i1 %i.b, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB1i_19concat_bytes_expand0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB46_6StringINtNtB3e_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1m_.exit.lr.ph.i.i.i, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapNtNtBc_5ascii13EscapeDefaultNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB1C_19concat_bytes_expand0E0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB4e_6StringINtNtB3s_7collect6ExtendcE6extendB3_E0EB1G_.exit

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB1i_19concat_bytes_expand0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB46_6StringINtNtB3e_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1m_.exit.lr.ph.i.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = and i64 %.sroa.3.0.extract.shift, 255
  %wide.trip.count.i.i.i = and i64 %.sroa.4.0.extract.shift, 255
  %.pre.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !598
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB1i_19concat_bytes_expand0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB46_6StringINtNtB3e_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1m_.exit.i.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB1i_19concat_bytes_expand0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB46_6StringINtNtB3e_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1m_.exit.i.i.i: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB1i_19concat_bytes_expand0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB46_6StringINtNtB3e_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1m_.exit.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB1i_19concat_bytes_expand0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB46_6StringINtNtB3e_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1m_.exit.lr.ph.i.i.i
  %i.f = phi i64 [ %.pre.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB1i_19concat_bytes_expand0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB46_6StringINtNtB3e_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1m_.exit.lr.ph.i.i.i ], [ %i.m, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB1i_19concat_bytes_expand0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB46_6StringINtNtB3e_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1m_.exit.i.i.i ] ; 3 uses
  %indvars.iv.i.i.i = phi i64 [ %i.e, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB1i_19concat_bytes_expand0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB46_6StringINtNtB3e_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1m_.exit.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB1i_19concat_bytes_expand0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB46_6StringINtNtB3e_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1m_.exit.i.i.i ] ; 3 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.g = icmp samesign ult i64 %indvars.iv.i.i.i, 4
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i.i
  %i.i = load i8, ptr %i.h, align 1, !range !23, !alias.scope !599, !noalias !597, !noundef !12
  %i.j = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.j)
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.k = load ptr, ptr %i.d, align 8, !alias.scope !598, !nonnull !12, !noundef !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  store i8 %i.i, ptr %i.l, align 1
  %i.m = add nuw i64 %i.f, 1                      ; 2 uses
  store i64 %i.m, ptr %i.c, align 8, !alias.scope !598
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapNtNtBc_5ascii13EscapeDefaultNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB1C_19concat_bytes_expand0E0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB4e_6StringINtNtB3s_7collect6ExtendcE6extendB3_E0EB1G_.exit, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB1i_19concat_bytes_expand0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB46_6StringINtNtB3e_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1m_.exit.i.i.i

_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapNtNtBc_5ascii13EscapeDefaultNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB1C_19concat_bytes_expand0E0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB4e_6StringINtNtB3s_7collect6ExtendcE6extendB3_E0EB1G_.exit: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB1i_19concat_bytes_expand0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB46_6StringINtNtB3e_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1m_.exit.i.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !596
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB6_6StringINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendcE6extendINtNtNtBS_8adapters10filter_map9FilterMapNtNtBU_5ascii13EscapeDefaultNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB2Z_19concat_bytes_expand0Es_0EEB33_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !612 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.3.0.extract.shift = lshr i64 %1, 32      ; 2 uses
  %.sroa.3.0.extract.trunc = trunc i64 %.sroa.3.0.extract.shift to i8
  %.sroa.4.0.extract.shift = lshr i64 %1, 40      ; 2 uses
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !616
  store i64 %1, ptr %i.a, align 8, !noalias !617
  %i.b = icmp ult i8 %.sroa.3.0.extract.trunc, %.sroa.4.0.extract.trunc
  br i1 %i.b, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB1i_19concat_bytes_expand0Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB48_6StringINtNtB3g_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1m_.exit.lr.ph.i.i.i, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapNtNtBc_5ascii13EscapeDefaultNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB1C_19concat_bytes_expand0Es_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB4g_6StringINtNtB3u_7collect6ExtendcE6extendB3_E0EB1G_.exit

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB1i_19concat_bytes_expand0Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB48_6StringINtNtB3g_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1m_.exit.lr.ph.i.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = and i64 %.sroa.3.0.extract.shift, 255
  %wide.trip.count.i.i.i = and i64 %.sroa.4.0.extract.shift, 255
  %.pre.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !618
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB1i_19concat_bytes_expand0Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB48_6StringINtNtB3g_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1m_.exit.i.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB1i_19concat_bytes_expand0Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB48_6StringINtNtB3g_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1m_.exit.i.i.i: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB1i_19concat_bytes_expand0Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB48_6StringINtNtB3g_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1m_.exit.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB1i_19concat_bytes_expand0Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB48_6StringINtNtB3g_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1m_.exit.lr.ph.i.i.i
  %i.f = phi i64 [ %.pre.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB1i_19concat_bytes_expand0Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB48_6StringINtNtB3g_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1m_.exit.lr.ph.i.i.i ], [ %i.m, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB1i_19concat_bytes_expand0Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB48_6StringINtNtB3g_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1m_.exit.i.i.i ] ; 3 uses
  %indvars.iv.i.i.i = phi i64 [ %i.e, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB1i_19concat_bytes_expand0Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB48_6StringINtNtB3g_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1m_.exit.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB1i_19concat_bytes_expand0Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB48_6StringINtNtB3g_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1m_.exit.i.i.i ] ; 3 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.g = icmp samesign ult i64 %indvars.iv.i.i.i, 4
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i.i
  %i.i = load i8, ptr %i.h, align 1, !range !23, !alias.scope !619, !noalias !617, !noundef !12
  %i.j = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.j)
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.k = load ptr, ptr %i.d, align 8, !alias.scope !618, !nonnull !12, !noundef !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  store i8 %i.i, ptr %i.l, align 1
  %i.m = add nuw i64 %i.f, 1                      ; 2 uses
  store i64 %i.m, ptr %i.c, align 8, !alias.scope !618
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapNtNtBc_5ascii13EscapeDefaultNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB1C_19concat_bytes_expand0Es_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB4g_6StringINtNtB3u_7collect6ExtendcE6extendB3_E0EB1G_.exit, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB1i_19concat_bytes_expand0Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB48_6StringINtNtB3g_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1m_.exit.i.i.i

_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapNtNtBc_5ascii13EscapeDefaultNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB1C_19concat_bytes_expand0Es_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB4g_6StringINtNtB3u_7collect6ExtendcE6extendB3_E0EB1G_.exit: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCINvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro27concat_bytes_expand_subtreeQNCNvB1i_19concat_bytes_expand0Es_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB48_6StringINtNtB3g_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1m_.exit.i.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !616
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB6_6StringINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendcE6extendINtNtNtBS_8adapters10filter_map9FilterMapNtNtBU_5ascii13EscapeDefaultNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro19concat_bytes_expands_0EEB32_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !632 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.3.0.extract.shift = lshr i64 %1, 32      ; 2 uses
  %.sroa.3.0.extract.trunc = trunc i64 %.sroa.3.0.extract.shift to i8
  %.sroa.4.0.extract.shift = lshr i64 %1, 40      ; 2 uses
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !635)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !636
  store i64 %1, ptr %i.a, align 8, !noalias !637
  %i.b = icmp ult i8 %.sroa.3.0.extract.trunc, %.sroa.4.0.extract.trunc
  br i1 %i.b, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro19concat_bytes_expands_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB3t_6StringINtNtB2B_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1l_.exit.lr.ph.i.i.i, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapNtNtBc_5ascii13EscapeDefaultNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro19concat_bytes_expands_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB3B_6StringINtNtB2P_7collect6ExtendcE6extendB3_E0EB1F_.exit

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro19concat_bytes_expands_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB3t_6StringINtNtB2B_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1l_.exit.lr.ph.i.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = and i64 %.sroa.3.0.extract.shift, 255
  %wide.trip.count.i.i.i = and i64 %.sroa.4.0.extract.shift, 255
  %.pre.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !638
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro19concat_bytes_expands_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB3t_6StringINtNtB2B_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1l_.exit.i.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro19concat_bytes_expands_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB3t_6StringINtNtB2B_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1l_.exit.i.i.i: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro19concat_bytes_expands_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB3t_6StringINtNtB2B_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1l_.exit.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro19concat_bytes_expands_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB3t_6StringINtNtB2B_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1l_.exit.lr.ph.i.i.i
  %i.f = phi i64 [ %.pre.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro19concat_bytes_expands_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB3t_6StringINtNtB2B_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1l_.exit.lr.ph.i.i.i ], [ %i.m, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro19concat_bytes_expands_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB3t_6StringINtNtB2B_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1l_.exit.i.i.i ] ; 3 uses
  %indvars.iv.i.i.i = phi i64 [ %i.e, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro19concat_bytes_expands_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB3t_6StringINtNtB2B_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1l_.exit.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro19concat_bytes_expands_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB3t_6StringINtNtB2B_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1l_.exit.i.i.i ] ; 3 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.g = icmp samesign ult i64 %indvars.iv.i.i.i, 4
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i.i
  %i.i = load i8, ptr %i.h, align 1, !range !23, !alias.scope !639, !noalias !637, !noundef !12
  %i.j = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.j)
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.k = load ptr, ptr %i.d, align 8, !alias.scope !638, !nonnull !12, !noundef !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  store i8 %i.i, ptr %i.l, align 1
  %i.m = add nuw i64 %i.f, 1                      ; 2 uses
  store i64 %i.m, ptr %i.c, align 8, !alias.scope !638
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapNtNtBc_5ascii13EscapeDefaultNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro19concat_bytes_expands_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB3B_6StringINtNtB2P_7collect6ExtendcE6extendB3_E0EB1F_.exit, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro19concat_bytes_expands_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB3t_6StringINtNtB2B_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1l_.exit.i.i.i

_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapNtNtBc_5ascii13EscapeDefaultNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro19concat_bytes_expands_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB3B_6StringINtNtB2P_7collect6ExtendcE6extendB3_E0EB1F_.exit: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldhcuNCNvNtNtCs33K2ylI4knu_10hir_expand7builtin8fn_macro19concat_bytes_expands_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB3t_6StringINtNtB2B_7collect6ExtendcE6extendINtB4_9FilterMapNtNtBa_5ascii13EscapeDefaultB1d_EE0E0E0B1l_.exit.i.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !636
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB6_6StringINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendcE6extendNtNtNtBU_3str4iter11EscapeDebugECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !653 {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 27 uses
  %.sroa.7 = alloca i64, align 8                  ; 4 uses
  %.sroa.1159 = alloca i64, align 8               ; 4 uses
  %.sroa.0.0.copyload2 = load ptr, ptr %1, align 8, !alias.scope !654 ; 5 uses
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload4 = load ptr, ptr %.sroa.6.0..sroa_idx3, align 8, !alias.scope !654 ; 3 uses
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload6 = load i32, ptr %.sroa.8.0..sroa_idx5, align 8, !alias.scope !654 ; 4 uses
  %.sroa.98.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.98.0.copyload10 = load i8, ptr %.sroa.98.0..sroa_idx9, align 8, !alias.scope !654 ; 3 uses
  %.sroa.11.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.sroa.11.0.copyload12 = load i8, ptr %.sroa.11.0..sroa_idx11, align 1, !alias.scope !654 ; 3 uses
  %.sroa.13.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.sroa.13.0.copyload14 = load i16, ptr %.sroa.13.0..sroa_idx13, align 2, !alias.scope !654
  %.sroa.1315.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.1315.0.copyload17 = load i32, ptr %.sroa.1315.0..sroa_idx16, align 4, !alias.scope !654 ; 3 uses
  %.sroa.1520.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.1520.0.copyload22 = load i8, ptr %.sroa.1520.0..sroa_idx21, align 4, !alias.scope !654 ; 3 uses
  %.sroa.17.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %1, i64 53
  %.sroa.17.0.copyload24 = load i8, ptr %.sroa.17.0..sroa_idx23, align 1, !alias.scope !654 ; 3 uses
  %.sroa.19.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %1, i64 54
  %.sroa.19.0.copyload26 = load i16, ptr %.sroa.19.0..sroa_idx25, align 2, !alias.scope !654
  %.sroa.1927.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.1927.0.copyload29 = load i32, ptr %.sroa.1927.0..sroa_idx28, align 8, !alias.scope !654 ; 3 uses
  %.sroa.2031.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.2031.0.copyload33 = load i8, ptr %.sroa.2031.0..sroa_idx32, align 8, !alias.scope !654 ; 2 uses
  %.sroa.22.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %1, i64 73
  %.sroa.22.0.copyload35 = load i8, ptr %.sroa.22.0..sroa_idx34, align 1, !alias.scope !654 ; 2 uses
  %.sroa.24.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %1, i64 74
  %.sroa.24.0.copyload37 = load i16, ptr %.sroa.24.0..sroa_idx36, align 2, !alias.scope !654
  %.sroa.2438.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %.sroa.2438.0.copyload40 = load i32, ptr %.sroa.2438.0..sroa_idx39, align 4, !alias.scope !654 ; 2 uses
  %.sroa.2643.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %1, i64 92
  %.sroa.2643.0.copyload45 = load i8, ptr %.sroa.2643.0..sroa_idx44, align 4, !alias.scope !654 ; 2 uses
  %.sroa.28.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %1, i64 93
  %.sroa.28.0.copyload47 = load i8, ptr %.sroa.28.0..sroa_idx46, align 1, !alias.scope !654 ; 2 uses
  %.sroa.30.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %1, i64 94
  %.sroa.30.0.copyload49 = load i16, ptr %.sroa.30.0..sroa_idx48, align 2, !alias.scope !654
  %.sroa.3050.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.3050.0.copyload52 = load i32, ptr %.sroa.3050.0..sroa_idx51, align 8, !alias.scope !654 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1159)
  %.not.i.i = icmp eq i32 %.sroa.1927.0.copyload29, 2
  %.not7.i.i = icmp eq i32 %.sroa.8.0.copyload6, 2 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw i32 %.sroa.1927.0.copyload29 to i1
  %i.c = sub i8 %.sroa.22.0.copyload35, %.sroa.2031.0.copyload33
  %i.d = zext i8 %i.c to i64
  %.sroa.7.0.i.i28.i.i = select i1 %i.b, i64 %i.d, i64 0
  %i.e = trunc nuw i32 %.sroa.2438.0.copyload40 to i1
  %i.f = sub i8 %.sroa.28.0.copyload47, %.sroa.2643.0.copyload45
  %i.g = zext i8 %i.f to i64
  %.sroa.8.0.i.i31.i.i = select i1 %i.e, i64 %i.g, i64 0
  %i.h = add nuw nsw i64 %.sroa.8.0.i.i31.i.i, %.sroa.7.0.i.i28.i.i ; 3 uses
  %i.i = icmp ne i32 %.sroa.3050.0.copyload52, 1  ; 3 uses
  br i1 %.not7.i.i, label %bb.e, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterNtNtBb_4char11EscapeDebugEENtNtNtB9_6traits8iterator8Iterator9size_hintCs33K2ylI4knu_10hir_expand.exit.i.i

bb.c:                                             ; preds = %bb.a
  br i1 %.not7.i.i, label %_RNvXs21_NtNtCshzWfHUSfYae_4core3str4iterNtB6_11EscapeDebugNtNtNtNtBa_4iter6traits8iterator8Iterator9size_hint.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = trunc nuw i32 %.sroa.8.0.copyload6 to i1
  %i.k = sub i8 %.sroa.11.0.copyload12, %.sroa.98.0.copyload10
  %i.l = zext i8 %i.k to i64
  %.sroa.7.0.i.i.i.i = select i1 %i.j, i64 %i.l, i64 0
  %i.m = trunc nuw i32 %.sroa.1315.0.copyload17 to i1
  %i.n = sub i8 %.sroa.17.0.copyload24, %.sroa.1520.0.copyload22
  %i.o = zext i8 %i.n to i64
  %.sroa.8.0.i.i.i.i = select i1 %i.m, i64 %i.o, i64 0
  %i.p = add nuw nsw i64 %.sroa.8.0.i.i.i.i, %.sroa.7.0.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload2, null
  %i.q = icmp eq ptr %.sroa.6.0.copyload4, %.sroa.0.0.copyload2
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %i.q
  %spec.select = zext i1 %or.cond.i.i.i.i to i64
  br label %_RNvXs21_NtNtCshzWfHUSfYae_4core3str4iterNtB6_11EscapeDebugNtNtNtNtBa_4iter6traits8iterator8Iterator9size_hint.exit

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterNtNtBb_4char11EscapeDebugEENtNtNtB9_6traits8iterator8Iterator9size_hintCs33K2ylI4knu_10hir_expand.exit.i.i: ; preds = %bb.b
  %spec.select.i.i = select i1 %i.i, i64 %i.h, i64 undef
  %i.r = trunc nuw i32 %.sroa.8.0.copyload6 to i1
  %i.s = sub i8 %.sroa.11.0.copyload12, %.sroa.98.0.copyload10
  %i.t = zext i8 %i.s to i64
  %.sroa.7.0.i.i17.i.i = select i1 %i.r, i64 %i.t, i64 0
  %i.u = trunc nuw i32 %.sroa.1315.0.copyload17 to i1
  %i.v = sub i8 %.sroa.17.0.copyload24, %.sroa.1520.0.copyload22
  %i.w = zext i8 %i.v to i64
  %.sroa.8.0.i.i20.i.i = select i1 %i.u, i64 %i.w, i64 0
  %i.x = add nuw nsw i64 %.sroa.8.0.i.i20.i.i, %.sroa.7.0.i.i17.i.i ; 2 uses
  %.not.i.i21.i.i = icmp eq ptr %.sroa.0.0.copyload2, null
  %i.y = icmp eq ptr %.sroa.6.0.copyload4, %.sroa.0.0.copyload2
  %or.cond.i.i23.i.i = select i1 %.not.i.i21.i.i, i1 true, i1 %i.y ; 2 uses
  %.sroa.636.0.i.i = select i1 %or.cond.i.i23.i.i, i64 %i.x, i64 undef
  %i.z = add nuw nsw i64 %i.h, %i.x
  %or.cond.i.i = select i1 %i.i, i1 %or.cond.i.i23.i.i, i1 false
  %i.aa = add i64 %spec.select.i.i, %.sroa.636.0.i.i
  %.sroa.46.0.i.i = select i1 %or.cond.i.i, i64 %i.aa, i64 undef
  br label %_RNvXs21_NtNtCshzWfHUSfYae_4core3str4iterNtB6_11EscapeDebugNtNtNtNtBa_4iter6traits8iterator8Iterator9size_hint.exit

bb.e:                                             ; preds = %bb.b
  %spec.select74 = zext i1 %i.i to i64
  br label %_RNvXs21_NtNtCshzWfHUSfYae_4core3str4iterNtB6_11EscapeDebugNtNtNtNtBa_4iter6traits8iterator8Iterator9size_hint.exit

_RNvXs21_NtNtCshzWfHUSfYae_4core3str4iterNtB6_11EscapeDebugNtNtNtNtBa_4iter6traits8iterator8Iterator9size_hint.exit: ; preds = %bb.e, %bb.d, %bb.c, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterNtNtBb_4char11EscapeDebugEENtNtNtB9_6traits8iterator8Iterator9size_hintCs33K2ylI4knu_10hir_expand.exit.i.i
  %.sroa.058.0 = phi i64 [ 0, %bb.c ], [ %i.z, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterNtNtBb_4char11EscapeDebugEENtNtNtB9_6traits8iterator8Iterator9size_hintCs33K2ylI4knu_10hir_expand.exit.i.i ], [ %i.p, %bb.d ], [ %i.h, %bb.e ]
  %.sink40.i.i.sroa.phi = phi ptr [ %.sroa.1159, %bb.c ], [ %.sroa.1159, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterNtNtBb_4char11EscapeDebugEENtNtNtB9_6traits8iterator8Iterator9size_hintCs33K2ylI4knu_10hir_expand.exit.i.i ], [ %.sroa.7, %bb.d ], [ %.sroa.7, %bb.e ]
  %.sroa.46.0.sink.i.i = phi i64 [ 0, %bb.c ], [ %.sroa.46.0.i.i, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterNtNtBb_4char11EscapeDebugEENtNtNtB9_6traits8iterator8Iterator9size_hintCs33K2ylI4knu_10hir_expand.exit.i.i ], [ %spec.select, %bb.d ], [ %spec.select74, %bb.e ]
  %.sroa.32.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %1, i64 100
  %.sroa.26.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.20.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.15.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.9.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i64 %.sroa.46.0.sink.i.i, ptr %.sink40.i.i.sroa.phi, align 8, !alias.scope !655
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1159)
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.058.0)
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.661.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.0..sroa_idx7, i64 12, i1 false)
  %.sroa.1165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.1165.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.15.0..sroa_idx19, i64 12, i1 false)
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.16.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.20.0..sroa_idx30, i64 12, i1 false)
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.21.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.26.0..sroa_idx42, i64 12, i1 false)
  %.sroa.2673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.2673.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.32.0..sroa_idx54, i64 20, i1 false)
  store ptr %.sroa.0.0.copyload2, ptr %i.a, align 8, !noalias !657
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.6.0.copyload4, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !657
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %.sroa.8.0.copyload6, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !657
  %.sroa.762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 %.sroa.98.0.copyload10, ptr %.sroa.762.0..sroa_idx, align 8, !noalias !657
  %.sroa.863.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 %.sroa.11.0.copyload12, ptr %.sroa.863.0..sroa_idx, align 1, !noalias !657
  %.sroa.964.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  store i16 %.sroa.13.0.copyload14, ptr %.sroa.964.0..sroa_idx, align 2, !noalias !657
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 %.sroa.1315.0.copyload17, ptr %.sroa.10.0..sroa_idx, align 4, !noalias !657
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i8 %.sroa.1520.0.copyload22, ptr %.sroa.12.0..sroa_idx, align 4, !noalias !657
  %.sroa.1366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 53
  store i8 %.sroa.17.0.copyload24, ptr %.sroa.1366.0..sroa_idx, align 1, !noalias !657
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 54
  store i16 %.sroa.19.0.copyload26, ptr %.sroa.14.0..sroa_idx, align 2, !noalias !657
  %.sroa.1567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 %.sroa.1927.0.copyload29, ptr %.sroa.1567.0..sroa_idx, align 8, !noalias !657
  %.sroa.1768.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 %.sroa.2031.0.copyload33, ptr %.sroa.1768.0..sroa_idx, align 8, !noalias !657
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 73
  store i8 %.sroa.22.0.copyload35, ptr %.sroa.18.0..sroa_idx, align 1, !noalias !657
  %.sroa.1969.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 74
  store i16 %.sroa.24.0.copyload37, ptr %.sroa.1969.0..sroa_idx, align 2, !noalias !657
  %.sroa.2070.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  store i32 %.sroa.2438.0.copyload40, ptr %.sroa.2070.0..sroa_idx, align 4, !noalias !657
  %.sroa.2271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  store i8 %.sroa.2643.0.copyload45, ptr %.sroa.2271.0..sroa_idx, align 4, !noalias !657
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 93
  store i8 %.sroa.28.0.copyload47, ptr %.sroa.23.0..sroa_idx, align 1, !noalias !657
  %.sroa.2472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 94
  store i16 %.sroa.30.0.copyload49, ptr %.sroa.2472.0..sroa_idx, align 2, !noalias !657
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i32 %.sroa.3050.0.copyload52, ptr %.sroa.25.0..sroa_idx, align 8, !noalias !657
  call void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterNtNtBb_4char11EscapeDebugEEINtB13_7FlatMapNtNtNtBb_3str4iter5CharsB1M_NtB2w_23CharEscapeDebugContinueEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB3r_8for_each4callcNCINvXsd_NtCsbSS6DM8SDEO_5alloc6stringNtB4E_6StringINtNtB3v_7collect6ExtendcE6extendNtB2u_11EscapeDebugE0E0ECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(120) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !656
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXst_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBJ_E6extendINtNtB1A_6option8IntoIterBJ_EEBN_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !669 {
bb.a:
  %i.a = icmp ne ptr %1, null                     ; 2 uses
  %i.b = zext i1 %i.a to i64                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !670, !noundef !12 ; 4 uses
  %i.e = icmp ugt i64 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.d, i64 1) ; 2 uses
  %.val.i = load i64, ptr %i.f, align 8, !alias.scope !671
  %i.g = select i1 %i.e, i64 %.val.i, i64 %i.d    ; 3 uses
  %i.h = sub i64 %.sink.i.i, %i.g
  %.not.i = icmp ult i64 %i.h, %i.b
  br i1 %.not.i, label %bb.b, label %.thread54

.thread47:                                        ; preds = %bb.d, %bb.f, %.thread51
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCs33K2ylI4knu_10hir_expand4name4NameEEB13_(ptr %1) #34
          to label %.thread43 unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.g, %i.b                       ; 3 uses
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %.thread51, label %bb.c, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ult i64 %i.i, 2
  %i.l = add i64 %i.i, -1
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = lshr i64 -1, %i.m
  %.sroa.010.0.i = select i1 %i.k, i64 0, i64 %i.n ; 2 uses
  %i.o = icmp eq i64 %.sroa.010.0.i, -1
  br i1 %i.o, label %.thread51, label %bb.d, !prof !18

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw i64 %.sroa.010.0.i, 1
  %i.q = invoke fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E8try_growBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.p)
          to label %bb.e unwind label %.thread47  ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.r = extractvalue { i64, i64 } %i.q, 0        ; 2 uses
  switch i64 %i.r, label %bb.f [
    i64 -1, label %..thread54_crit_edge
    i64 0, label %.thread51
  ], !prof !24

..thread54_crit_edge:                             ; preds = %bb.e
  %.pre = load i64, ptr %i.c, align 8, !alias.scope !672 ; 2 uses
  %.pre70 = tail call i64 @llvm.umax.i64(i64 %.pre, i64 1)
  br label %.thread54

bb.f:                                             ; preds = %bb.e
  %i.s = extractvalue { i64, i64 } %i.q, 1
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.r, i64 noundef %i.s) #38
          to label %.noexc18 unwind label %.thread47

.noexc18:                                         ; preds = %bb.f
  unreachable

.thread51:                                        ; preds = %bb.b, %bb.c, %bb.e
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #37
          to label %.noexc19 unwind label %.thread47

.noexc19:                                         ; preds = %.thread51
  unreachable

.thread54:                                        ; preds = %..thread54_crit_edge, %bb.a
  %.sink.i.pre-phi = phi i64 [ %.pre70, %..thread54_crit_edge ], [ %.sink.i.i, %bb.a ]
  %i.t = phi i64 [ %.pre, %..thread54_crit_edge ], [ %i.d, %bb.a ] ; 2 uses
  %i.u = icmp ugt i64 %i.t, 1                     ; 2 uses
  %i.v = load ptr, ptr %0, align 8, !alias.scope !672, !nonnull !12
  %.sink10.i = select i1 %i.u, ptr %i.v, ptr %0
  %.sink9.i = select i1 %i.u, ptr %i.f, ptr %i.c  ; 3 uses
  %i.w = load i64, ptr %.sink9.i, align 8, !noundef !12 ; 4 uses
  %i.x = icmp ult i64 %i.w, %.sink.i.pre-phi
  br i1 %i.x, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.thread54
  br i1 %i.a, label %bb.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCs33K2ylI4knu_10hir_expand4name4NameEEB13_.exit26

bb.g:                                             ; preds = %.lr.ph.preheader
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sink10.i, i64 %i.w
  store ptr %1, ptr %i.y, align 8
  %i.z = add nuw i64 %i.w, 1                      ; 3 uses
  %i.aa = icmp ugt i64 %i.t, %i.z
  br i1 %i.aa, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCs33K2ylI4knu_10hir_expand4name4NameEEB13_.exit26, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.g
  store i64 %i.z, ptr %.sink9.i, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCs33K2ylI4knu_10hir_expand4name4NameEEB13_.exit

._crit_edge:                                      ; preds = %.thread54
  %.not63 = icmp eq ptr %1, null
  br i1 %.not63, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCs33K2ylI4knu_10hir_expand4name4NameEEB13_.exit, label %.lr.ph66.split.us

.lr.ph66.split.us:                                ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  %i.ab = load i64, ptr %i.c, align 8, !alias.scope !674, !noundef !12 ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, 1                   ; 2 uses
  %i.ad = load ptr, ptr %0, align 8, !alias.scope !674, !nonnull !12
  %.sink10.i.i.us = select i1 %i.ac, ptr %i.ad, ptr %0
  %.sink9.i.i.us = select i1 %i.ac, ptr %i.f, ptr %i.c ; 2 uses
  %.sink.i.i20.us = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ae = load i64, ptr %.sink9.i.i.us, align 8, !alias.scope !673, !noundef !12 ; 2 uses
  %i.af = icmp eq i64 %i.ae, %.sink.i.i20.us
  br i1 %i.af, label %bb.h, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E4pushBM_.exit.us, !prof !18

bb.h:                                             ; preds = %.lr.ph66.split.us
  invoke void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %0, align 8, !alias.scope !673, !nonnull !12, !noundef !12
  %.pre.i.us = load i64, ptr %i.f, align 8, !alias.scope !673
  br label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E4pushBM_.exit.us

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E4pushBM_.exit.us: ; preds = %bb.i, %.lr.ph66.split.us
  %i.ah = phi i64 [ %.pre.i.us, %bb.i ], [ %i.ae, %.lr.ph66.split.us ]
  %.sroa.01.0.i.us = phi ptr [ %i.f, %bb.i ], [ %.sink9.i.i.us, %.lr.ph66.split.us ] ; 2 uses
  %.sroa.0.0.i21.us = phi ptr [ %i.ag, %bb.i ], [ %.sink10.i.i.us, %.lr.ph66.split.us ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i21.us, i64 %i.ah
  store ptr %1, ptr %i.ai, align 8
  %i.aj = load i64, ptr %.sroa.01.0.i.us, align 8, !alias.scope !673, !noundef !12
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %.sroa.01.0.i.us, align 8, !alias.scope !673
end_hunk_0
