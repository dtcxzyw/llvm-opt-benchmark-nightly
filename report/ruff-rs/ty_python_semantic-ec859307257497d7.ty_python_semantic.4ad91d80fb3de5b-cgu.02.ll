Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.02?download=true
inline.NumInlined: 7440
inline.NumDeleted: 2774
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 178
loop-unroll.NumUnrolled: 230
begin_hunk_0_@_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBU_ENvYBT_NtNtB8_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic:bb.a
  %spec.select.i.i.i.i.i12 = select i1 %i.bk, i64 %i.bl, i64 %i.bj
  %i.bm = icmp slt i64 %spec.select.i.i.i.i.i12, 0
  br i1 %i.bm, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB13_ENvYB12_NtNtB8_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.e

_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic.exit13: ; preds = %bb.d
  %i.bn = icmp samesign ult i64 %.sroa.0.0.i.i.i.i.i.i6, %.sroa.0.0.i10.i.i.i.i.i9
  br i1 %i.bn, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB13_ENvYB12_NtNtB8_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.split30, %_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic.exit13
  %i.bo = add nuw nsw i64 %.sroa.01.0.i39, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.bo, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB13_ENvYB12_NtNtB8_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit, label %.lr.ph

.lr.ph45:                                         ; preds = %.preheader, %bb.g
  %.sroa.01.1.i44 = phi i64 [ %i.cx, %bb.g ], [ 2, %.preheader ] ; 6 uses
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.1.i44 ; 4 uses
  %i.bq = add nsw i64 %.sroa.01.1.i44, -1         ; 2 uses
  %i.br = icmp samesign ult i64 %i.bq, %1
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bq ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4223)
  %i.bt = tail call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBO_NvMB2_NtB2_8Ordering5is_ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bs)
  switch i8 %i.bt, label %bb.g [
    i8 2, label %bb.f
    i8 0, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB13_ENvYB12_NtNtB8_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit
  ]

bb.f:                                             ; preds = %.lr.ph45
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4229)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 31
  %i.bx = load i8, ptr %i.bw, align 1, !range !8, !alias.scope !4230, !noundef !6 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !4230, !noundef !6
  %i.ca = and i64 %i.bz, 72057594037927935
  %i.cb = icmp ult i8 %i.bx, -48
  %i.cc = zext i8 %i.bx to i64
  %i.cd = add nsw i64 %i.cc, -192
  %spec.store.select.i.i.i.i.i.i16 = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 16)
  %.sroa.0.0.i.i.i.i.i.i17 = select i1 %i.cb, i64 %spec.store.select.i.i.i.i.i.i16, i64 %i.ca ; 3 uses
  %i.ce = icmp ugt i8 %i.bx, -49
  %i.cf = load ptr, ptr %i.bu, align 8, !alias.scope !4230
  %.sroa.01.0.i.i.i.i.i.i18 = select i1 %i.ce, ptr %i.cf, ptr %i.bu ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bs, i64 31
  %i.ch = load i8, ptr %i.cg, align 1, !range !8, !alias.scope !4231, !noundef !6 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !4231, !noundef !6
  %i.ck = and i64 %i.cj, 72057594037927935
  %i.cl = icmp ult i8 %i.ch, -48
  %i.cm = zext i8 %i.ch to i64
  %i.cn = add nsw i64 %i.cm, -192
  %spec.store.select.i9.i.i.i.i.i19 = tail call i64 @llvm.umin.i64(i64 %i.cn, i64 16)
  %.sroa.0.0.i10.i.i.i.i.i20 = select i1 %i.cl, i64 %spec.store.select.i9.i.i.i.i.i19, i64 %i.ck ; 3 uses
  %i.co = icmp ugt i8 %i.ch, -49
  %i.cp = load ptr, ptr %i.bv, align 8, !alias.scope !4231
  %.sroa.01.0.i11.i.i.i.i.i21 = select i1 %i.co, ptr %i.cp, ptr %i.bv ; 2 uses
  %i.cq = icmp eq ptr %.sroa.01.0.i.i.i.i.i.i18, %.sroa.01.0.i11.i.i.i.i.i21
  br i1 %i.cq, label %_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic.exit24, label %.split32

.split32:                                         ; preds = %bb.f
  %spec.store.select.i.i.i.i.i22 = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i.i.i.i.i17, i64 %.sroa.0.0.i10.i.i.i.i.i20)
  %i.cr = tail call i32 @memcmp(ptr %.sroa.01.0.i.i.i.i.i.i18, ptr %.sroa.01.0.i11.i.i.i.i.i21, i64 %spec.store.select.i.i.i.i.i22) ; 2 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = icmp eq i32 %i.cr, 0
  %i.cu = sub nsw i64 %.sroa.0.0.i.i.i.i.i.i17, %.sroa.0.0.i10.i.i.i.i.i20
  %spec.select.i.i.i.i.i23 = select i1 %i.ct, i64 %i.cu, i64 %i.cs
  %i.cv = icmp slt i64 %spec.select.i.i.i.i.i23, 0
  br i1 %i.cv, label %bb.g, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB13_ENvYB12_NtNtB8_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit

_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic.exit24: ; preds = %bb.f
  %i.cw = icmp samesign ult i64 %.sroa.0.0.i.i.i.i.i.i17, %.sroa.0.0.i10.i.i.i.i.i20
  br i1 %i.cw, label %bb.g, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB13_ENvYB12_NtNtB8_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit

bb.g:                                             ; preds = %.lr.ph45, %.split32, %_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic.exit24
  %i.cx = add nuw nsw i64 %.sroa.01.1.i44, 1      ; 2 uses
  %exitcond55.not = icmp eq i64 %i.cx, %1
  br i1 %exitcond55.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB13_ENvYB12_NtNtB8_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit, label %.lr.ph45

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB13_ENvYB12_NtNtB8_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic.exit13, %bb.e, %.split30, %.lr.ph, %_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic.exit24, %bb.g, %.split32, %.lr.ph45, %.preheader37, %.preheader
  %.sroa.3.0.i = phi i1 [ true, %.preheader ], [ true, %_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic.exit24 ], [ false, %.preheader37 ], [ true, %.lr.ph45 ], [ true, %.split32 ], [ true, %bb.g ], [ false, %.lr.ph ], [ false, %.split30 ], [ false, %bb.e ], [ false, %_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic.exit13 ]
  %.sroa.0.0.i = phi i64 [ 2, %.preheader ], [ %.sroa.01.1.i44, %_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic.exit24 ], [ 2, %.preheader37 ], [ %1, %bb.g ], [ %.sroa.01.1.i44, %.split32 ], [ %.sroa.01.1.i44, %.lr.ph45 ], [ %.sroa.01.0.i39, %_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic.exit13 ], [ %1, %bb.e ], [ %.sroa.01.0.i39, %.split30 ], [ %.sroa.01.0.i39, %.lr.ph ] ; 2 uses
  %i.cy = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.cz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB13_ENvYB12_NtNtB8_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit
  br i1 %.sroa.3.0.i, label %.lr.ph.preheader.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBv_E7reverseCsoTR8nlGN3X_18ty_python_semantic.exit

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB13_ENvYB12_NtNtB8_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit
  %i.da = or i64 %1, 1
  %i.db = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.da, i1 true)
  %i.dc = trunc nuw nsw i64 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 1
  %i.de = xor i32 %i.dd, 126
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB18_ENvYB17_NtNtBa_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, i32 noundef %i.de, ptr noalias noundef nonnull %2)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBv_E7reverseCsoTR8nlGN3X_18ty_python_semantic.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBv_E7reverseCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB11_EECsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %bb.a, %bb.h, %bb.i
  ret void

.lr.ph.preheader.i.i:                             ; preds = %bb.h
  %i.df = lshr i64 %1, 1
  %i.dg = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB11_EECsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.dl, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB11_EECsoTR8nlGN3X_18ty_python_semantic.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.dh = xor i64 %.sroa.0.017.i.i, -1
  %i.di = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.dj = getelementptr [32 x i8], ptr %i.dg, i64 %i.dh
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull %i.di, ptr noundef nonnull %i.dj, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB11_EECsoTR8nlGN3X_18ty_python_semantic.exit.i.i unwind label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #54
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB11_EECsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %.lr.ph.i.i
  %i.dl = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dl, %i.df
  br i1 %exitcond.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBv_E7reverseCsoTR8nlGN3X_18ty_python_semantic.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB10_6frozen16FrozenValueIndexENCINvMB6_SBT_16sort_unstable_byNCNvXsa_B26_INtB26_14FrozenValueMapBU_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtB8_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapBU_B3J_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0EB3N_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #5 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE7reverseCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load i32, ptr %i.b, align 4, !range !19, !noundef !6 ; 3 uses
  %.val7 = load i32, ptr %0, align 4, !range !19, !noundef !6
  %i.c = icmp ult i32 %.val6, %.val7              ; 2 uses
  %.not22 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader12

.preheader12:                                     ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_6frozen16FrozenValueIndexENCINvMB6_SB12_16sort_unstable_byNCNvXsa_B2f_INtB2f_14FrozenValueMapB13_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtB8_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB13_B3U_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0EB3Y_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_6frozen16FrozenValueIndexENCINvMB6_SB12_16sort_unstable_byNCNvXsa_B2f_INtB2f_14FrozenValueMapB13_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtB8_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB13_B3U_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0EB3Y_.exit, label %.lr.ph18

.lr.ph:                                           ; preds = %.preheader12, %bb.c
  %.val5 = phi i32 [ %.val4, %bb.c ], [ %.val6, %.preheader12 ]
  %.sroa.01.0.i14 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader12 ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i14
  %.val4 = load i32, ptr %i.d, align 4, !range !19, !noundef !6 ; 2 uses
  %i.e = icmp ult i32 %.val4, %.val5
  br i1 %i.e, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_6frozen16FrozenValueIndexENCINvMB6_SB12_16sort_unstable_byNCNvXsa_B2f_INtB2f_14FrozenValueMapB13_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtB8_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB13_B3U_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0EB3Y_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i14, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_6frozen16FrozenValueIndexENCINvMB6_SB12_16sort_unstable_byNCNvXsa_B2f_INtB2f_14FrozenValueMapB13_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtB8_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB13_B3U_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0EB3Y_.exit.thread, label %.lr.ph

.lr.ph18:                                         ; preds = %.preheader, %bb.d
  %.val3 = phi i32 [ %.val, %bb.d ], [ %.val6, %.preheader ]
  %.sroa.01.1.i17 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i17
  %.val = load i32, ptr %i.g, align 4, !range !19, !noundef !6 ; 2 uses
  %i.h = icmp ult i32 %.val, %.val3
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_6frozen16FrozenValueIndexENCINvMB6_SB12_16sort_unstable_byNCNvXsa_B2f_INtB2f_14FrozenValueMapB13_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtB8_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB13_B3U_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0EB3Y_.exit

bb.d:                                             ; preds = %.lr.ph18
  %i.i = add nuw nsw i64 %.sroa.01.1.i17, 1       ; 2 uses
  %exitcond25.not = icmp eq i64 %i.i, %1
  br i1 %exitcond25.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_6frozen16FrozenValueIndexENCINvMB6_SB12_16sort_unstable_byNCNvXsa_B2f_INtB2f_14FrozenValueMapB13_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtB8_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB13_B3U_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0EB3Y_.exit.thread, label %.lr.ph18

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_6frozen16FrozenValueIndexENCINvMB6_SB12_16sort_unstable_byNCNvXsa_B2f_INtB2f_14FrozenValueMapB13_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtB8_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB13_B3U_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0EB3Y_.exit: ; preds = %.lr.ph, %.lr.ph18, %.preheader12, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader12 ], [ 2, %.preheader ], [ %.sroa.01.1.i17, %.lr.ph18 ], [ %.sroa.01.0.i14, %.lr.ph ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_6frozen16FrozenValueIndexENCINvMB6_SB12_16sort_unstable_byNCNvXsa_B2f_INtB2f_14FrozenValueMapB13_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtB8_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB13_B3U_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0EB3Y_.exit.thread, label %bb.e

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_6frozen16FrozenValueIndexENCINvMB6_SB12_16sort_unstable_byNCNvXsa_B2f_INtB2f_14FrozenValueMapB13_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtB8_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB13_B3U_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0EB3Y_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_6frozen16FrozenValueIndexENCINvMB6_SB12_16sort_unstable_byNCNvXsa_B2f_INtB2f_14FrozenValueMapB13_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtB8_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB13_B3U_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0EB3Y_.exit
  br i1 %i.c, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit11.preheader.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE7reverseCsoTR8nlGN3X_18ty_python_semantic.exit

bb.e:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_6frozen16FrozenValueIndexENCINvMB6_SB12_16sort_unstable_byNCNvXsa_B2f_INtB2f_14FrozenValueMapB13_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtB8_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB13_B3U_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0EB3Y_.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB1e_6frozen16FrozenValueIndexENCINvMB8_SB17_16sort_unstable_byNCNvXsa_B2k_INtB2k_14FrozenValueMapB18_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtBa_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB18_B3Z_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0EB43_(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.p, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE7reverseCsoTR8nlGN3X_18ty_python_semantic.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE7reverseCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit11.i.i.prol.loopexit, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit11.i.i, %middle.block, %bb.a, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_6frozen16FrozenValueIndexENCINvMB6_SB12_16sort_unstable_byNCNvXsa_B2f_INtB2f_14FrozenValueMapB13_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtB8_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB13_B3U_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0EB3Y_.exit.thread, %bb.e
  ret void

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_6frozen16FrozenValueIndexENCINvMB6_SB12_16sort_unstable_byNCNvXsa_B2f_INtB2f_14FrozenValueMapB13_NtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtB8_7convert4FromINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapB13_B3U_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEE4from0E0EB3Y_.exit.thread
  %i.q = lshr i64 %1, 1                           ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4240)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 4 uses
  %min.iters.check = icmp samesign ult i64 %1, 32
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit11.i.i.preheader.a, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit11.preheader.i.i
  %3 = add nsw i64 %i.q, -1                       ; 2 uses
  %4 = shl nuw nsw i64 %1, 3
  %5 = getelementptr i8, ptr %0, i64 %4
  %scevgep = getelementptr i8, ptr %5, i64 -8     ; 2 uses
  %mul.result.neg = mul nsw i64 %3, -8
  %mul.overflow = icmp ugt i64 %3, 2305843009213693951
  %6 = getelementptr i8, ptr %scevgep, i64 %mul.result.neg
  %7 = icmp ugt ptr %6, %scevgep
  %8 = or i1 %7, %mul.overflow
  br i1 %8, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit11.i.i.preheader.a, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.q, 576460752303423486       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = xor i64 %index, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %wide.vec = load <4 x i32>, ptr %i.t, align 4, !alias.scope !4241
  %i.v = getelementptr i8, ptr %i.u, i64 -8
  %wide.load = load <2 x i64>, ptr %i.v, align 4, !alias.scope !4242
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.t, align 4, !alias.scope !4241
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -8
  %interleaved.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec, ptr %i.w, align 4, !alias.scope !4242
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !4237

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE7reverseCsoTR8nlGN3X_18ty_python_semantic.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit11.i.i.preheader.a

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit11.i.i.preheader.a: ; preds = %vector.scevcheck, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit11.preheader.i.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.016.i.i.ph, 1
  %9 = and i64 %1, 2
  %lcmp.mod.not = icmp eq i64 %9, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit11.i.i.prol.loopexit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit11.i.i.prol

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit11.i.i.prol: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit11.i.i.preheader.a
  %10 = xor i64 %.sroa.0.016.i.i.ph, -1
  %11 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i.ph ; 2 uses
  %12 = getelementptr [8 x i8], ptr %i.r, i64 %10 ; 2 uses
  %13 = load i64, ptr %12, align 4, !alias.scope !4242
  %14 = load <2 x i32>, ptr %11, align 4, !alias.scope !4241
  store i64 %13, ptr %11, align 4, !alias.scope !4241
  store <2 x i32> %14, ptr %12, align 4, !alias.scope !4242
  %15 = or disjoint i64 %.sroa.0.016.i.i.ph, 1
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit11.i.i.prol.loopexit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit11.i.i.prol.loopexit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit11.i.i.prol, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit11.i.i.preheader.a
  %.sroa.0.016.i.i.unr = phi i64 [ %.sroa.0.016.i.i.ph, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit11.i.i.preheader.a ], [ %15, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit11.i.i.prol ]
  %16 = icmp eq i64 %i.q, %.neg
  br i1 %16, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE7reverseCsoTR8nlGN3X_18ty_python_semantic.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit11.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit11.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit11.i.i.prol.loopexit, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ad, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit11.i.i ], [ %.sroa.0.016.i.i.unr, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit11.i.i.prol.loopexit ] ; 5 uses
  %i.y = xor i64 %.sroa.0.016.i.i, -1
  %17 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %18 = getelementptr [8 x i8], ptr %i.r, i64 %i.y ; 2 uses
  %19 = load i64, ptr %18, align 4, !alias.scope !4242
  %20 = load <2 x i32>, ptr %17, align 4, !alias.scope !4241
  store i64 %19, ptr %17, align 4, !alias.scope !4241
  store <2 x i32> %20, ptr %18, align 4, !alias.scope !4242
  %21 = sub i64 -2, %.sroa.0.016.i.i
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i
  %22 = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.aa = getelementptr [8 x i8], ptr %i.r, i64 %21 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 4, !alias.scope !4242
  %i.ac = load <2 x i32>, ptr %22, align 4, !alias.scope !4241
  store i64 %i.ab, ptr %22, align 4, !alias.scope !4241
  store <2 x i32> %i.ac, ptr %i.aa, align 4, !alias.scope !4242
  %i.ad = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.ad, %i.q
  br i1 %exitcond.not.i.i.1, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE7reverseCsoTR8nlGN3X_18ty_python_semantic.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit11.i.i, !llvm.loop !4238
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvMB6_SBT_16sort_unstable_byNCNvMs2_NtB10_6frozenINtB3F_9FrozenMapBU_B24_E12from_entries0E0EB28_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #5 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE7reverseB1J_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load i32, ptr %i.b, align 4, !range !19, !noundef !6 ; 3 uses
  %.val7 = load i32, ptr %0, align 4, !range !19, !noundef !6
  %i.c = icmp ult i32 %.val6, %.val7              ; 2 uses
  %.not22 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader12

.preheader12:                                     ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3P_9FrozenMapB13_B2d_E12from_entries0E0EB2h_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3P_9FrozenMapB13_B2d_E12from_entries0E0EB2h_.exit, label %.lr.ph18

.lr.ph:                                           ; preds = %.preheader12, %bb.c
  %.val5 = phi i32 [ %.val4, %bb.c ], [ %.val6, %.preheader12 ]
  %.sroa.01.0.i14 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader12 ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i14
  %.val4 = load i32, ptr %i.d, align 4, !range !19, !noundef !6 ; 2 uses
  %i.e = icmp ult i32 %.val4, %.val5
  br i1 %i.e, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3P_9FrozenMapB13_B2d_E12from_entries0E0EB2h_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i14, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3P_9FrozenMapB13_B2d_E12from_entries0E0EB2h_.exit.thread, label %.lr.ph

.lr.ph18:                                         ; preds = %.preheader, %bb.d
  %.val3 = phi i32 [ %.val, %bb.d ], [ %.val6, %.preheader ]
  %.sroa.01.1.i17 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i17
  %.val = load i32, ptr %i.g, align 4, !range !19, !noundef !6 ; 2 uses
  %i.h = icmp ult i32 %.val, %.val3
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3P_9FrozenMapB13_B2d_E12from_entries0E0EB2h_.exit

bb.d:                                             ; preds = %.lr.ph18
  %i.i = add nuw nsw i64 %.sroa.01.1.i17, 1       ; 2 uses
  %exitcond25.not = icmp eq i64 %i.i, %1
  br i1 %exitcond25.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3P_9FrozenMapB13_B2d_E12from_entries0E0EB2h_.exit.thread, label %.lr.ph18

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3P_9FrozenMapB13_B2d_E12from_entries0E0EB2h_.exit: ; preds = %.lr.ph, %.lr.ph18, %.preheader12, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader12 ], [ 2, %.preheader ], [ %.sroa.01.1.i17, %.lr.ph18 ], [ %.sroa.01.0.i14, %.lr.ph ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3P_9FrozenMapB13_B2d_E12from_entries0E0EB2h_.exit.thread, label %bb.e

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3P_9FrozenMapB13_B2d_E12from_entries0E0EB2h_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3P_9FrozenMapB13_B2d_E12from_entries0E0EB2h_.exit
  br i1 %i.c, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE12split_at_mutB1J_.exit11.preheader.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE7reverseB1J_.exit

bb.e:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3P_9FrozenMapB13_B2d_E12from_entries0E0EB2h_.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvMB8_SB17_16sort_unstable_byNCNvMs2_NtB1e_6frozenINtB3U_9FrozenMapB18_B2i_E12from_entries0E0EB2m_(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.p, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE7reverseB1J_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE7reverseB1J_.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE12split_at_mutB1J_.exit11.i.i
  %i.q = and i64 %1, 2
  %lcmp.mod.not = icmp eq i64 %i.q, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE7reverseB1J_.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE12split_at_mutB1J_.exit11.i.i.epil.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE12split_at_mutB1J_.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE7reverseB1J_.exit.loopexit.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE12split_at_mutB1J_.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE12split_at_mutB1J_.exit11.preheader.i.i ], [ %i.at, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE7reverseB1J_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod44 = trunc i64 %i.z to i1
  tail call void @llvm.assume(i1 %lcmp.mod44)
  %i.r = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i.epil.init ; 3 uses
  %i.t = getelementptr [8 x i8], ptr %i.aa, i64 %i.r ; 3 uses
  %i.u = load i32, ptr %i.s, align 4, !range !19, !alias.scope !4248, !noundef !6
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.w = load i8, ptr %i.v, align 4, !alias.scope !4248, !noundef !6
  %i.x = load i64, ptr %i.t, align 4, !alias.scope !4249
  store i64 %i.x, ptr %i.s, align 4, !alias.scope !4248
  store i32 %i.u, ptr %i.t, align 4, !alias.scope !4249
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i8 %i.w, ptr %i.y, align 4, !alias.scope !4249
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE7reverseB1J_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE7reverseB1J_.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE12split_at_mutB1J_.exit11.i.i.epil.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE7reverseB1J_.exit.loopexit.unr-lcssa, %bb.a, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3P_9FrozenMapB13_B2d_E12from_entries0E0EB2h_.exit.thread, %bb.e
  ret void

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE12split_at_mutB1J_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3P_9FrozenMapB13_B2d_E12from_entries0E0EB2h_.exit.thread
  %i.z = lshr i64 %1, 1                           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4251)
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 3 uses
  %i.ab = icmp eq i64 %i.z, 1
  br i1 %i.ab, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE12split_at_mutB1J_.exit11.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE12split_at_mutB1J_.exit11.preheader.i.i.new

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE12split_at_mutB1J_.exit11.preheader.i.i.new: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE12split_at_mutB1J_.exit11.preheader.i.i
  %unroll_iter = and i64 %i.z, 576460752303423486
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE12split_at_mutB1J_.exit11.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE12split_at_mutB1J_.exit11.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE12split_at_mutB1J_.exit11.i.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE12split_at_mutB1J_.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE12split_at_mutB1J_.exit11.preheader.i.i.new ], [ %i.at, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE12split_at_mutB1J_.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE12split_at_mutB1J_.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE12split_at_mutB1J_.exit11.i.i ]
  %i.ac = xor i64 %.sroa.0.016.i.i, -1
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 3 uses
  %i.ae = getelementptr [8 x i8], ptr %i.aa, i64 %i.ac ; 3 uses
  %i.af = load i32, ptr %i.ad, align 4, !range !19, !alias.scope !4248, !noundef !6
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ah = load i8, ptr %i.ag, align 4, !alias.scope !4248, !noundef !6
  %i.ai = load i64, ptr %i.ae, align 4, !alias.scope !4249
  store i64 %i.ai, ptr %i.ad, align 4, !alias.scope !4248
  store i32 %i.af, ptr %i.ae, align 4, !alias.scope !4249
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i8 %i.ah, ptr %i.aj, align 4, !alias.scope !4249
  %i.ak = xor i64 %.sroa.0.016.i.i, -2
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.an = getelementptr [8 x i8], ptr %i.aa, i64 %i.ak ; 3 uses
  %i.ao = load i32, ptr %i.am, align 4, !range !19, !alias.scope !4248, !noundef !6
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.aq = load i8, ptr %i.ap, align 4, !alias.scope !4248, !noundef !6
  %i.ar = load i64, ptr %i.an, align 4, !alias.scope !4249
  store i64 %i.ar, ptr %i.am, align 4, !alias.scope !4248
  store i32 %i.ao, ptr %i.an, align 4, !alias.scope !4249
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i8 %i.aq, ptr %i.as, align 4, !alias.scope !4249
  %i.at = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE7reverseB1J_.exit.loopexit.unr-lcssa, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE12split_at_mutB1J_.exit11.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB6_SBT_16sort_unstable_byNCNvMs2_NtB10_6frozenINtB3u_9FrozenMapBU_B24_E12from_entries0E0EB28_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 461168601842738791) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE7reverseB1J_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.val6 = load i32, ptr %i.b, align 4, !range !19, !noundef !6 ; 3 uses
  %.val7 = load i32, ptr %0, align 4, !range !19, !noundef !6
  %i.c = icmp ult i32 %.val6, %.val7              ; 2 uses
  %.not22 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader12

.preheader12:                                     ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3E_9FrozenMapB13_B2d_E12from_entries0E0EB2h_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3E_9FrozenMapB13_B2d_E12from_entries0E0EB2h_.exit, label %.lr.ph18

.lr.ph:                                           ; preds = %.preheader12, %bb.c
  %.val5 = phi i32 [ %.val4, %bb.c ], [ %.val6, %.preheader12 ]
  %.sroa.01.0.i14 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader12 ] ; 3 uses
  %i.d = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %.sroa.01.0.i14
  %.val4 = load i32, ptr %i.d, align 4, !range !19, !noundef !6 ; 2 uses
  %i.e = icmp ult i32 %.val4, %.val5
  br i1 %i.e, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3E_9FrozenMapB13_B2d_E12from_entries0E0EB2h_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i14, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3E_9FrozenMapB13_B2d_E12from_entries0E0EB2h_.exit.thread, label %.lr.ph

.lr.ph18:                                         ; preds = %.preheader, %bb.d
  %.val3 = phi i32 [ %.val, %bb.d ], [ %.val6, %.preheader ]
  %.sroa.01.1.i17 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %.sroa.01.1.i17
  %.val = load i32, ptr %i.g, align 4, !range !19, !noundef !6 ; 2 uses
  %i.h = icmp ult i32 %.val, %.val3
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3E_9FrozenMapB13_B2d_E12from_entries0E0EB2h_.exit

bb.d:                                             ; preds = %.lr.ph18
  %i.i = add nuw nsw i64 %.sroa.01.1.i17, 1       ; 2 uses
  %exitcond25.not = icmp eq i64 %i.i, %1
  br i1 %exitcond25.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3E_9FrozenMapB13_B2d_E12from_entries0E0EB2h_.exit.thread, label %.lr.ph18

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3E_9FrozenMapB13_B2d_E12from_entries0E0EB2h_.exit: ; preds = %.lr.ph, %.lr.ph18, %.preheader12, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader12 ], [ 2, %.preheader ], [ %.sroa.01.1.i17, %.lr.ph18 ], [ %.sroa.01.0.i14, %.lr.ph ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3E_9FrozenMapB13_B2d_E12from_entries0E0EB2h_.exit.thread, label %bb.e

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3E_9FrozenMapB13_B2d_E12from_entries0E0EB2h_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3E_9FrozenMapB13_B2d_E12from_entries0E0EB2h_.exit
  br i1 %i.c, label %.lr.ph.preheader.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE7reverseB1J_.exit

bb.e:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3E_9FrozenMapB13_B2d_E12from_entries0E0EB2h_.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
end_hunk_0
begin_hunk_1_@llvm.umin.i8
!4038 = !{!4030, !4032}
!4039 = distinct !{!4039, i1 true, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRange20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB2s_NtBz_15UnreachableKindENCNvBz_24merge_overlapping_ranges0E0BF_"}
!4040 = distinct !{!4040, !4039, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRange20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB2s_NtBz_15UnreachableKindENCNvBz_24merge_overlapping_ranges0E0BF_: argument 0"}
!4041 = distinct !{!4041, !4039, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRange20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB2s_NtBz_15UnreachableKindENCNvBz_24merge_overlapping_ranges0E0BF_: argument 1"}
!4042 = distinct !{!4042, i1 true, !"_RNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code24merge_overlapping_ranges0B9_"}
!4043 = distinct !{!4043, !4042, !"_RNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code24merge_overlapping_ranges0B9_: argument 0"}
!4044 = distinct !{!4044, !4042, !"_RNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code24merge_overlapping_ranges0B9_: argument 1"}
!4045 = distinct !{!4045, i1 true, !"_RNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code24merge_overlapping_ranges0B9_"}
!4046 = distinct !{!4046, !4045, !"_RNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code24merge_overlapping_ranges0B9_: argument 0"}
!4047 = distinct !{!4047, !4045, !"_RNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code24merge_overlapping_ranges0B9_: argument 1"}
!4048 = distinct !{!4048, i1 true, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRange20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB2s_NtBz_15UnreachableKindENCNvBz_24merge_overlapping_ranges0E0BF_"}
!4049 = distinct !{!4049, !4048, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRange20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB2s_NtBz_15UnreachableKindENCNvBz_24merge_overlapping_ranges0E0BF_: argument 0"}
!4050 = distinct !{!4050, !4048, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRange20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB2s_NtBz_15UnreachableKindENCNvBz_24merge_overlapping_ranges0E0BF_: argument 1"}
!4051 = distinct !{!4051, i1 true, !"_RNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code24merge_overlapping_ranges0B9_"}
!4052 = distinct !{!4052, !4051, !"_RNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code24merge_overlapping_ranges0B9_: argument 0"}
!4053 = distinct !{!4053, !4051, !"_RNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code24merge_overlapping_ranges0B9_: argument 1"}
!4054 = distinct !{!4054, i1 true, !"_RNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code24merge_overlapping_ranges0B9_"}
!4055 = distinct !{!4055, !4054, !"_RNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code24merge_overlapping_ranges0B9_: argument 0"}
!4056 = distinct !{!4056, i1 true, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRange20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB2s_NtBz_15UnreachableKindENCNvBz_24merge_overlapping_ranges0E0BF_"}
!4057 = distinct !{!4057, !4056, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRange20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB2s_NtBz_15UnreachableKindENCNvBz_24merge_overlapping_ranges0E0BF_: argument 0"}
!4058 = distinct !{!4058, !4056, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRange20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB2s_NtBz_15UnreachableKindENCNvBz_24merge_overlapping_ranges0E0BF_: argument 1"}
!4059 = distinct !{!4059, i1 true, !"_RNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code24merge_overlapping_ranges0B9_"}
!4060 = distinct !{!4060, !4059, !"_RNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code24merge_overlapping_ranges0B9_: argument 0"}
!4061 = distinct !{!4061, !4059, !"_RNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code24merge_overlapping_ranges0B9_: argument 1"}
!4062 = distinct !{!4062, i1 true, !"_RNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code24merge_overlapping_ranges0B9_"}
!4063 = distinct !{!4063, !4062, !"_RNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code24merge_overlapping_ranges0B9_: argument 0"}
!4064 = distinct !{!4064, i1 true, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeEBW_"}
!4065 = distinct !{!4065, !4064, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeEBW_: argument 0"}
!4066 = distinct !{!4066, !4064, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeEBW_: argument 1"}
!4067 = distinct !{!4067, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj4_ECsoTR8nlGN3X_18ty_python_semantic"}
!4068 = distinct !{!4068, !4067, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj4_ECsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4069 = distinct !{!4069, !4067, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj4_ECsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4070 = distinct !{!4070, i1 true, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRange7reverseBC_"}
!4071 = distinct !{!4071, !4070, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRange7reverseBC_: argument 0"}
!4072 = !{!4040}
!4073 = !{!4041}
!4074 = !{!4040, !4041}
!4075 = !{!4043}
!4076 = !{!4044}
!4077 = !{!4044, !4040}
!4078 = !{!4046}
!4079 = !{!4047}
!4080 = !{!4047, !4041}
!4081 = !{!4049}
!4082 = !{!4049, !4050}
!4083 = !{!4052}
!4084 = !{!4053}
!4085 = !{!4053, !4049}
!4086 = !{!4055}
!4087 = !{!4057}
!4088 = !{!4057, !4058}
!4089 = !{!4060}
!4090 = !{!4061}
!4091 = !{!4061, !4057}
!4092 = !{!4063}
!4093 = !{!4065}
!4094 = !{!4066}
!4095 = !{!4068}
!4096 = !{!4069}
!4097 = !{!4068, !4065, !4071}
!4098 = !{!4069, !4066, !4071}
!4099 = distinct !{!4099, i1 true, !"_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic"}
!4100 = distinct !{!4100, !4099, !"_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4101 = distinct !{!4101, !4099, !"_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4102 = distinct !{!4102, i1 true, !"_RNvXs1_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp"}
!4103 = distinct !{!4103, !4102, !"_RNvXs1_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 1"}
!4104 = distinct !{!4104, !4102, !"_RNvXs1_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 0"}
!4105 = distinct !{!4105, i1 true, !"_RNvXNtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!4106 = distinct !{!4106, !4105, !"_RNvXNtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!4107 = distinct !{!4107, !4105, !"_RNvXNtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!4108 = distinct !{!4108, i1 true, !"_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic"}
!4109 = distinct !{!4109, !4108, !"_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4110 = distinct !{!4110, !4108, !"_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4111 = distinct !{!4111, i1 true, !"_RNvXs1_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp"}
!4112 = distinct !{!4112, !4111, !"_RNvXs1_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 1"}
!4113 = distinct !{!4113, !4111, !"_RNvXs1_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 0"}
!4114 = distinct !{!4114, i1 true, !"_RNvXNtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!4115 = distinct !{!4115, !4114, !"_RNvXNtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!4116 = distinct !{!4116, !4114, !"_RNvXNtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!4117 = distinct !{!4117, i1 true, !"_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic"}
!4118 = distinct !{!4118, !4117, !"_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4119 = distinct !{!4119, !4117, !"_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4120 = distinct !{!4120, i1 true, !"_RNvXs1_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp"}
!4121 = distinct !{!4121, !4120, !"_RNvXs1_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 1"}
!4122 = distinct !{!4122, !4120, !"_RNvXs1_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 0"}
!4123 = distinct !{!4123, i1 true, !"_RNvXNtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!4124 = distinct !{!4124, !4123, !"_RNvXNtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!4125 = distinct !{!4125, !4123, !"_RNvXNtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!4126 = distinct !{!4126, i1 true, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe7reverseCsoTR8nlGN3X_18ty_python_semantic"}
!4127 = distinct !{!4127, !4126, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe7reverseCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4128 = distinct !{!4128, i1 true, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapReECsoTR8nlGN3X_18ty_python_semantic"}
!4129 = distinct !{!4129, !4128, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapReECsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4130 = distinct !{!4130, !4128, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapReECsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4131 = !{!4107, !4106, !4104, !4103, !4101, !4100}
!4132 = !{!4116, !4115, !4113, !4112, !4110, !4109}
!4133 = !{!4125, !4124, !4122, !4121, !4119, !4118}
!4134 = !{!4129, !4127}
!4135 = !{!4129, !4130, !4127}
!4136 = !{!4130, !4127}
!4137 = !{!4129}
!4138 = !{!4130}
!4139 = distinct !{!4139, i1 true, !"_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic"}
!4140 = distinct !{!4140, !4139, !"_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4141 = distinct !{!4141, !4139, !"_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4142 = distinct !{!4142, i1 true, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBx_ENtNtB7_3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic"}
!4143 = distinct !{!4143, !4142, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBx_ENtNtB7_3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4144 = distinct !{!4144, !4142, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBx_ENtNtB7_3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4145 = distinct !{!4145, i1 true, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic"}
!4146 = distinct !{!4146, !4145, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4147 = distinct !{!4147, !4145, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4148 = distinct !{!4148, i1 true, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp"}
!4149 = distinct !{!4149, !4148, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!4150 = distinct !{!4150, !4148, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!4151 = distinct !{!4151, i1 true, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp"}
!4152 = distinct !{!4152, !4151, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 0"}
!4153 = distinct !{!4153, !4151, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 1"}
!4154 = distinct !{!4154, i1 true, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!4155 = distinct !{!4155, !4154, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!4156 = distinct !{!4156, i1 true, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!4157 = distinct !{!4157, !4156, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!4158 = distinct !{!4158, i1 true, !"_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic"}
!4159 = distinct !{!4159, !4158, !"_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4160 = distinct !{!4160, !4158, !"_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4161 = distinct !{!4161, i1 true, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBx_ENtNtB7_3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic"}
!4162 = distinct !{!4162, !4161, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBx_ENtNtB7_3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4163 = distinct !{!4163, !4161, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBx_ENtNtB7_3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4164 = distinct !{!4164, i1 true, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic"}
!4165 = distinct !{!4165, !4164, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4166 = distinct !{!4166, !4164, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4167 = distinct !{!4167, i1 true, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp"}
!4168 = distinct !{!4168, !4167, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!4169 = distinct !{!4169, !4167, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!4170 = distinct !{!4170, i1 true, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp"}
!4171 = distinct !{!4171, !4170, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 0"}
!4172 = distinct !{!4172, !4170, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 1"}
!4173 = distinct !{!4173, i1 true, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!4174 = distinct !{!4174, !4173, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!4175 = distinct !{!4175, i1 true, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!4176 = distinct !{!4176, !4175, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!4177 = distinct !{!4177, i1 true, !"_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic"}
!4178 = distinct !{!4178, !4177, !"_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4179 = distinct !{!4179, !4177, !"_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4180 = distinct !{!4180, i1 true, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBx_ENtNtB7_3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic"}
!4181 = distinct !{!4181, !4180, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBx_ENtNtB7_3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4182 = distinct !{!4182, !4180, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBx_ENtNtB7_3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4183 = distinct !{!4183, i1 true, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic"}
!4184 = distinct !{!4184, !4183, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4185 = distinct !{!4185, !4183, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4186 = distinct !{!4186, i1 true, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp"}
!4187 = distinct !{!4187, !4186, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!4188 = distinct !{!4188, !4186, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!4189 = distinct !{!4189, i1 true, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp"}
!4190 = distinct !{!4190, !4189, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 0"}
!4191 = distinct !{!4191, !4189, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 1"}
!4192 = distinct !{!4192, i1 true, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!4193 = distinct !{!4193, !4192, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!4194 = distinct !{!4194, i1 true, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!4195 = distinct !{!4195, !4194, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!4196 = !{!4140}
!4197 = !{!4141}
!4198 = !{!4143}
!4199 = !{!4144}
!4200 = !{!4146}
!4201 = !{!4147}
!4202 = !{!4149}
!4203 = !{!4150}
!4204 = !{!4152}
!4205 = !{!4153}
!4206 = !{!4155, !4152, !4149, !4146, !4143, !4140}
!4207 = !{!4157, !4153, !4150, !4147, !4144, !4141}
!4208 = !{!4159}
!4209 = !{!4160}
!4210 = !{!4162}
!4211 = !{!4163}
!4212 = !{!4165}
!4213 = !{!4166}
!4214 = !{!4168}
!4215 = !{!4169}
!4216 = !{!4171}
!4217 = !{!4172}
!4218 = !{!4174, !4171, !4168, !4165, !4162, !4159}
!4219 = !{!4176, !4172, !4169, !4166, !4163, !4160}
!4220 = !{!4178}
!4221 = !{!4179}
!4222 = !{!4181}
!4223 = !{!4182}
!4224 = !{!4184}
!4225 = !{!4185}
!4226 = !{!4187}
!4227 = !{!4188}
!4228 = !{!4190}
!4229 = !{!4191}
!4230 = !{!4193, !4190, !4187, !4184, !4181, !4178}
!4231 = !{!4195, !4191, !4188, !4185, !4182, !4179}
!4232 = distinct !{!4232, i1 true, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBV_6frozen16FrozenValueIndexEECsoTR8nlGN3X_18ty_python_semantic"}
!4233 = distinct !{!4233, !4232, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBV_6frozen16FrozenValueIndexEECsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4234 = distinct !{!4234, !4232, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBV_6frozen16FrozenValueIndexEECsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4235 = distinct !{!4235, i1 true, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE7reverseCsoTR8nlGN3X_18ty_python_semantic"}
!4236 = distinct !{!4236, !4235, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE7reverseCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4237 = distinct !{!4237, !30, !31}
!4238 = distinct !{!4238, !30}
!4239 = !{!4233}
!4240 = !{!4234}
!4241 = !{!4233, !4236}
!4242 = !{!4234, !4236}
!4243 = distinct !{!4243, i1 true, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE7reverseB1J_"}
!4244 = distinct !{!4244, !4243, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE7reverseB1J_: argument 0"}
!4245 = distinct !{!4245, i1 true, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersEEB23_"}
!4246 = distinct !{!4246, !4245, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersEEB23_: argument 0"}
!4247 = distinct !{!4247, !4245, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersEEB23_: argument 1"}
!4248 = !{!4246, !4244}
!4249 = !{!4247, !4244}
!4250 = !{!4246}
!4251 = !{!4247}
!4252 = distinct !{!4252, i1 true, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB23_"}
!4253 = distinct !{!4253, !4252, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB23_: argument 0"}
!4254 = distinct !{!4254, !4252, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB23_: argument 1"}
!4255 = distinct !{!4255, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj4_ECsoTR8nlGN3X_18ty_python_semantic"}
!4256 = distinct !{!4256, !4255, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj4_ECsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4257 = distinct !{!4257, !4255, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj4_ECsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4258 = distinct !{!4258, i1 true, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE7reverseB1J_"}
!4259 = distinct !{!4259, !4258, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE7reverseB1J_: argument 0"}
!4260 = !{!4253}
!4261 = !{!4254}
!4262 = !{!4256}
!4263 = !{!4257}
!4264 = !{!4256, !4253, !4259}
!4265 = !{!4257, !4254, !4259}
!4266 = distinct !{!4266, i1 true, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsE7reverseB1L_"}
!4267 = distinct !{!4267, !4266, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsE7reverseB1L_: argument 0"}
!4268 = distinct !{!4268, i1 true, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsEEB25_"}
!4269 = distinct !{!4269, !4268, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsEEB25_: argument 0"}
!4270 = distinct !{!4270, !4268, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsEEB25_: argument 1"}
!4271 = !{!4269, !4267}
!4272 = !{!4270, !4267}
!4273 = !{!4269}
!4274 = !{!4270}
!4275 = distinct !{!4275, i1 true, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_"}
!4276 = distinct !{!4276, !4275, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_: argument 0"}
!4277 = distinct !{!4277, !4275, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_: argument 1"}
!4278 = distinct !{!4278, i1 true, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtB7_3cmp10PartialOrd2ltBD_"}
!4279 = distinct !{!4279, !4278, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtB7_3cmp10PartialOrd2ltBD_: argument 0"}
!4280 = distinct !{!4280, !4278, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtB7_3cmp10PartialOrd2ltBD_: argument 1"}
!4281 = distinct !{!4281, i1 true, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!4282 = distinct !{!4282, !4281, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!4283 = distinct !{!4283, !4281, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!4284 = distinct !{!4284, i1 true, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_"}
!4285 = distinct !{!4285, !4284, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_: argument 0"}
!4286 = distinct !{!4286, !4284, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_: argument 1"}
!4287 = distinct !{!4287, i1 true, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtB7_3cmp10PartialOrd2ltBD_"}
!4288 = distinct !{!4288, !4287, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtB7_3cmp10PartialOrd2ltBD_: argument 0"}
!4289 = distinct !{!4289, !4287, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtB7_3cmp10PartialOrd2ltBD_: argument 1"}
!4290 = distinct !{!4290, i1 true, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!4291 = distinct !{!4291, !4290, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!4292 = distinct !{!4292, !4290, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!4293 = distinct !{!4293, i1 true, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_"}
!4294 = distinct !{!4294, !4293, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_: argument 0"}
!4295 = distinct !{!4295, !4293, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_: argument 1"}
!4296 = distinct !{!4296, i1 true, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtB7_3cmp10PartialOrd2ltBD_"}
!4297 = distinct !{!4297, !4296, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtB7_3cmp10PartialOrd2ltBD_: argument 0"}
!4298 = distinct !{!4298, !4296, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtB7_3cmp10PartialOrd2ltBD_: argument 1"}
!4299 = distinct !{!4299, i1 true, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!4300 = distinct !{!4300, !4299, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!4301 = distinct !{!4301, !4299, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!4302 = distinct !{!4302, i1 true, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjE7reverseBB_"}
!4303 = distinct !{!4303, !4302, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjE7reverseBB_: argument 0"}
!4304 = distinct !{!4304, i1 true, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjEEBV_"}
!4305 = distinct !{!4305, !4304, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjEEBV_: argument 0"}
!4306 = distinct !{!4306, !4304, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjEEBV_: argument 1"}
!4307 = !{!4276}
!4308 = !{!4277}
!4309 = !{!4279}
!4310 = !{!4280}
!4311 = !{!4282}
!4312 = !{!4283}
!4313 = !{!4282, !4279, !4276}
!4314 = !{!4283, !4280, !4277}
!4315 = !{!4285}
!4316 = !{!4286}
!4317 = !{!4288}
!4318 = !{!4289}
!4319 = !{!4291}
!4320 = !{!4292}
!4321 = !{!4291, !4288, !4285}
!4322 = !{!4292, !4289, !4286}
!4323 = !{!4294}
!4324 = !{!4295}
!4325 = !{!4297}
!4326 = !{!4298}
!4327 = !{!4300}
!4328 = !{!4301}
!4329 = !{!4300, !4297, !4294}
!4330 = !{!4301, !4298, !4295}
!4331 = !{!4305, !4303}
!4332 = !{!4305, !4306, !4303}
!4333 = !{!4306, !4303}
!4334 = !{!4305}
!4335 = !{!4306}
!4336 = distinct !{!4336, i1 true, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_"}
!4337 = distinct !{!4337, !4336, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_: argument 0"}
!4338 = distinct !{!4338, !4336, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_: argument 1"}
!4339 = distinct !{!4339, i1 true, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtB7_3cmp10PartialOrd2ltBD_"}
!4340 = distinct !{!4340, !4339, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtB7_3cmp10PartialOrd2ltBD_: argument 0"}
!4341 = distinct !{!4341, !4339, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtB7_3cmp10PartialOrd2ltBD_: argument 1"}
!4342 = distinct !{!4342, i1 true, !"_RNvXs10_NtNtCs4NRVxsYgnAr_4core3cmp5implsmNtB8_10PartialOrd2lt"}
!4343 = distinct !{!4343, !4342, !"_RNvXs10_NtNtCs4NRVxsYgnAr_4core3cmp5implsmNtB8_10PartialOrd2lt: argument 0"}
!4344 = distinct !{!4344, !4342, !"_RNvXs10_NtNtCs4NRVxsYgnAr_4core3cmp5implsmNtB8_10PartialOrd2lt: argument 1"}
!4345 = distinct !{!4345, i1 true, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_"}
!4346 = distinct !{!4346, !4345, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_: argument 0"}
!4347 = distinct !{!4347, !4345, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_: argument 1"}
!4348 = distinct !{!4348, i1 true, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtB7_3cmp10PartialOrd2ltBD_"}
!4349 = distinct !{!4349, !4348, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtB7_3cmp10PartialOrd2ltBD_: argument 0"}
!4350 = distinct !{!4350, !4348, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtB7_3cmp10PartialOrd2ltBD_: argument 1"}
!4351 = distinct !{!4351, i1 true, !"_RNvXs10_NtNtCs4NRVxsYgnAr_4core3cmp5implsmNtB8_10PartialOrd2lt"}
!4352 = distinct !{!4352, !4351, !"_RNvXs10_NtNtCs4NRVxsYgnAr_4core3cmp5implsmNtB8_10PartialOrd2lt: argument 0"}
!4353 = distinct !{!4353, !4351, !"_RNvXs10_NtNtCs4NRVxsYgnAr_4core3cmp5implsmNtB8_10PartialOrd2lt: argument 1"}
!4354 = distinct !{!4354, i1 true, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_"}
!4355 = distinct !{!4355, !4354, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_: argument 0"}
!4356 = distinct !{!4356, !4354, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_: argument 1"}
!4357 = distinct !{!4357, i1 true, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtB7_3cmp10PartialOrd2ltBD_"}
!4358 = distinct !{!4358, !4357, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtB7_3cmp10PartialOrd2ltBD_: argument 0"}
!4359 = distinct !{!4359, !4357, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtB7_3cmp10PartialOrd2ltBD_: argument 1"}
!4360 = distinct !{!4360, i1 true, !"_RNvXs10_NtNtCs4NRVxsYgnAr_4core3cmp5implsmNtB8_10PartialOrd2lt"}
!4361 = distinct !{!4361, !4360, !"_RNvXs10_NtNtCs4NRVxsYgnAr_4core3cmp5implsmNtB8_10PartialOrd2lt: argument 0"}
!4362 = distinct !{!4362, !4360, !"_RNvXs10_NtNtCs4NRVxsYgnAr_4core3cmp5implsmNtB8_10PartialOrd2lt: argument 1"}
!4363 = distinct !{!4363, i1 true, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymE7reverseBB_"}
!4364 = distinct !{!4364, !4363, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymE7reverseBB_: argument 0"}
!4365 = distinct !{!4365, i1 true, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymEEBV_"}
!4366 = distinct !{!4366, !4365, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymEEBV_: argument 0"}
!4367 = distinct !{!4367, !4365, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymEEBV_: argument 1"}
!4368 = !{!4337}
!4369 = !{!4338}
!4370 = !{!4340}
!4371 = !{!4341}
!4372 = !{!4343}
!4373 = !{!4344}
!4374 = !{!4343, !4340, !4337}
!4375 = !{!4344, !4341, !4338}
!4376 = !{!4346}
!4377 = !{!4347}
!4378 = !{!4349}
!4379 = !{!4350}
!4380 = !{!4352}
!4381 = !{!4353}
!4382 = !{!4352, !4349, !4346}
!4383 = !{!4353, !4350, !4347}
!4384 = !{!4355}
!4385 = !{!4356}
!4386 = !{!4358}
!4387 = !{!4359}
!4388 = !{!4361}
!4389 = !{!4362}
!4390 = !{!4361, !4358, !4355}
!4391 = !{!4362, !4359, !4356}
!4392 = !{!4366, !4364}
!4393 = !{!4367, !4364}
!4394 = !{!4366}
!4395 = !{!4367}
!4396 = distinct !{!4396, i1 true, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapxECsoTR8nlGN3X_18ty_python_semantic"}
!4397 = distinct !{!4397, !4396, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapxECsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4398 = distinct !{!4398, !4396, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapxECsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4399 = distinct !{!4399, i1 true, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSx7reverseCsoTR8nlGN3X_18ty_python_semantic"}
!4400 = distinct !{!4400, !4399, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSx7reverseCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4401 = distinct !{!4401, !30, !31}
!4402 = distinct !{!4402, !31, !30}
!4403 = !{!4397}
!4404 = !{!4398}
!4405 = !{!4397, !4400}
!4406 = !{!4398, !4400}
!4407 = distinct !{!4407, i1 true, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0B1H_"}
!4408 = distinct !{!4408, !4407, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0B1H_: argument 1"}
!4409 = distinct !{!4409, !4407, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0B1H_: argument 0"}
!4410 = distinct !{!4410, i1 true, !"_RNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0B3_"}
!4411 = distinct !{!4411, !4410, !"_RNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0B3_: argument 1"}
!4412 = distinct !{!4412, !4410, !"_RNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0B3_: argument 0"}
!4413 = distinct !{!4413, i1 true, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0B1H_"}
!4414 = distinct !{!4414, !4413, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0B1H_: argument 1"}
!4415 = distinct !{!4415, !4413, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0B1H_: argument 0"}
!4416 = distinct !{!4416, i1 true, !"_RNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0B3_"}
!4417 = distinct !{!4417, !4416, !"_RNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0B3_: argument 1"}
!4418 = distinct !{!4418, !4416, !"_RNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0B3_: argument 0"}
!4419 = distinct !{!4419, i1 true, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0B1H_"}
!4420 = distinct !{!4420, !4419, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0B1H_: argument 1"}
!4421 = distinct !{!4421, !4419, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0B1H_: argument 0"}
!4422 = distinct !{!4422, i1 true, !"_RNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0B3_"}
!4423 = distinct !{!4423, !4422, !"_RNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0B3_: argument 1"}
!4424 = distinct !{!4424, !4422, !"_RNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0B3_: argument 0"}
!4425 = !{!4409, !4408}
!4426 = !{!4412, !4411, !4409, !4408}
!4427 = !{!4415, !4414}
!4428 = !{!4418, !4417, !4415, !4414}
!4429 = !{!4421, !4420}
!4430 = !{!4424, !4423, !4421, !4420}
!4431 = distinct !{!4431, i1 true, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic7sort_byNCINvNtCsoTR8nlGN3X_18ty_python_semantic5fixes7fix_allNvYDNtNtB1A_2db2DbEL_B2p_10check_fileEs0_0E0B1A_"}
!4432 = distinct !{!4432, !4431, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic7sort_byNCINvNtCsoTR8nlGN3X_18ty_python_semantic5fixes7fix_allNvYDNtNtB1A_2db2DbEL_B2p_10check_fileEs0_0E0B1A_: argument 1"}
!4433 = distinct !{!4433, !4431, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic7sort_byNCINvNtCsoTR8nlGN3X_18ty_python_semantic5fixes7fix_allNvYDNtNtB1A_2db2DbEL_B2p_10check_fileEs0_0E0B1A_: argument 0"}
!4434 = distinct !{!4434, i1 true, !"_RNCINvNtCsoTR8nlGN3X_18ty_python_semantic5fixes7fix_allNvYDNtNtB6_2db2DbEL_BV_10check_fileEs0_0B6_"}
!4435 = distinct !{!4435, !4434, !"_RNCINvNtCsoTR8nlGN3X_18ty_python_semantic5fixes7fix_allNvYDNtNtB6_2db2DbEL_BV_10check_fileEs0_0B6_: argument 1"}
!4436 = distinct !{!4436, !4434, !"_RNCINvNtCsoTR8nlGN3X_18ty_python_semantic5fixes7fix_allNvYDNtNtB6_2db2DbEL_BV_10check_fileEs0_0B6_: argument 0"}
!4437 = distinct !{!4437, i1 true, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic7sort_byNCINvNtCsoTR8nlGN3X_18ty_python_semantic5fixes7fix_allNvYDNtNtB1A_2db2DbEL_B2p_10check_fileEs0_0E0B1A_"}
!4438 = distinct !{!4438, !4437, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic7sort_byNCINvNtCsoTR8nlGN3X_18ty_python_semantic5fixes7fix_allNvYDNtNtB1A_2db2DbEL_B2p_10check_fileEs0_0E0B1A_: argument 1"}
end_hunk_1
