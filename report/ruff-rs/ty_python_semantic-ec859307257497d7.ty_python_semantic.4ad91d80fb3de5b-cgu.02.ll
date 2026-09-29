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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4424)
  %i.bt = tail call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBO_NvMB2_NtB2_8Ordering5is_ltECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bs)
  switch i8 %i.bt, label %bb.g [
    i8 2, label %bb.f
    i8 0, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB13_ENvYB12_NtNtB8_3cmp10PartialOrd2ltECsoTR8nlGN3X_18ty_python_semantic.exit
  ]

bb.f:                                             ; preds = %.lr.ph45
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4430)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 31
  %i.bx = load i8, ptr %i.bw, align 1, !range !8, !alias.scope !4431, !noalias !4432, !noundef !6 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !4431, !noalias !4432, !noundef !6
  %i.ca = and i64 %i.bz, 72057594037927935
  %i.cb = icmp ult i8 %i.bx, -48
  %i.cc = zext i8 %i.bx to i64
  %i.cd = add nsw i64 %i.cc, -192
  %spec.store.select.i.i.i.i.i.i16 = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 16)
  %.sroa.0.0.i.i.i.i.i.i17 = select i1 %i.cb, i64 %spec.store.select.i.i.i.i.i.i16, i64 %i.ca ; 3 uses
  %i.ce = icmp ugt i8 %i.bx, -49
  %i.cf = load ptr, ptr %i.bu, align 8, !alias.scope !4431, !noalias !4432
  %.sroa.01.0.i.i.i.i.i.i18 = select i1 %i.ce, ptr %i.cf, ptr %i.bu ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bs, i64 31
  %i.ch = load i8, ptr %i.cg, align 1, !range !8, !alias.scope !4433, !noalias !4434, !noundef !6 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !4433, !noalias !4434, !noundef !6
  %i.ck = and i64 %i.cj, 72057594037927935
  %i.cl = icmp ult i8 %i.ch, -48
  %i.cm = zext i8 %i.ch to i64
  %i.cn = add nsw i64 %i.cm, -192
  %spec.store.select.i9.i.i.i.i.i19 = tail call i64 @llvm.umin.i64(i64 %i.cn, i64 16)
  %.sroa.0.0.i10.i.i.i.i.i20 = select i1 %i.cl, i64 %spec.store.select.i9.i.i.i.i.i19, i64 %i.ck ; 3 uses
  %i.co = icmp ugt i8 %i.ch, -49
  %i.cp = load ptr, ptr %i.bv, align 8, !alias.scope !4433, !noalias !4434
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4443)
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
  %wide.vec = load <4 x i32>, ptr %i.t, align 4, !alias.scope !4444, !noalias !4443
  %i.v = getelementptr i8, ptr %i.u, i64 -8
  %wide.load = load <2 x i64>, ptr %i.v, align 4, !alias.scope !4445, !noalias !4442
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.t, align 4, !alias.scope !4444, !noalias !4443
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -8
  %interleaved.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec, ptr %i.w, align 4, !alias.scope !4445, !noalias !4442
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !4440

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
  %13 = load i64, ptr %12, align 4, !alias.scope !4445, !noalias !4442
  %14 = load <2 x i32>, ptr %11, align 4, !alias.scope !4444, !noalias !4443
  store i64 %13, ptr %11, align 4, !alias.scope !4444, !noalias !4443
  store <2 x i32> %14, ptr %12, align 4, !alias.scope !4445, !noalias !4442
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
  %19 = load i64, ptr %18, align 4, !alias.scope !4445, !noalias !4442
  %20 = load <2 x i32>, ptr %17, align 4, !alias.scope !4444, !noalias !4443
  store i64 %19, ptr %17, align 4, !alias.scope !4444, !noalias !4443
  store <2 x i32> %20, ptr %18, align 4, !alias.scope !4445, !noalias !4442
  %21 = sub i64 -2, %.sroa.0.016.i.i
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i
  %22 = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.aa = getelementptr [8 x i8], ptr %i.r, i64 %21 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 4, !alias.scope !4445, !noalias !4442
  %i.ac = load <2 x i32>, ptr %22, align 4, !alias.scope !4444, !noalias !4443
  store i64 %i.ab, ptr %22, align 4, !alias.scope !4444, !noalias !4443
  store <2 x i32> %i.ac, ptr %i.aa, align 4, !alias.scope !4445, !noalias !4442
  %i.ad = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.ad, %i.q
  br i1 %exitcond.not.i.i.1, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE7reverseCsoTR8nlGN3X_18ty_python_semantic.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE12split_at_mutCsoTR8nlGN3X_18ty_python_semantic.exit11.i.i, !llvm.loop !4441
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
  %i.u = load i32, ptr %i.s, align 4, !range !19, !alias.scope !4451, !noalias !4452, !noundef !6
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.w = load i8, ptr %i.v, align 4, !alias.scope !4451, !noalias !4452, !noundef !6
  %i.x = load i64, ptr %i.t, align 4, !alias.scope !4453, !noalias !4454
  store i64 %i.x, ptr %i.s, align 4, !alias.scope !4451, !noalias !4452
  store i32 %i.u, ptr %i.t, align 4, !alias.scope !4453, !noalias !4454
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i8 %i.w, ptr %i.y, align 4, !alias.scope !4453, !noalias !4454
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE7reverseB1J_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE7reverseB1J_.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE12split_at_mutB1J_.exit11.i.i.epil.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE7reverseB1J_.exit.loopexit.unr-lcssa, %bb.a, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3P_9FrozenMapB13_B2d_E12from_entries0E0EB2h_.exit.thread, %bb.e
  ret void

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE12split_at_mutB1J_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3P_9FrozenMapB13_B2d_E12from_entries0E0EB2h_.exit.thread
  %i.z = lshr i64 %1, 1                           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4452)
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
  %i.af = load i32, ptr %i.ad, align 4, !range !19, !alias.scope !4451, !noalias !4452, !noundef !6
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ah = load i8, ptr %i.ag, align 4, !alias.scope !4451, !noalias !4452, !noundef !6
  %i.ai = load i64, ptr %i.ae, align 4, !alias.scope !4453, !noalias !4454
  store i64 %i.ai, ptr %i.ad, align 4, !alias.scope !4451, !noalias !4452
  store i32 %i.af, ptr %i.ae, align 4, !alias.scope !4453, !noalias !4454
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i8 %i.ah, ptr %i.aj, align 4, !alias.scope !4453, !noalias !4454
  %i.ak = xor i64 %.sroa.0.016.i.i, -2
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.an = getelementptr [8 x i8], ptr %i.aa, i64 %i.ak ; 3 uses
  %i.ao = load i32, ptr %i.am, align 4, !range !19, !alias.scope !4451, !noalias !4452, !noundef !6
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.aq = load i8, ptr %i.ap, align 4, !alias.scope !4451, !noalias !4452, !noundef !6
  %i.ar = load i64, ptr %i.an, align 4, !alias.scope !4453, !noalias !4454
  store i64 %i.ar, ptr %i.am, align 4, !alias.scope !4451, !noalias !4452
  store i32 %i.ao, ptr %i.an, align 4, !alias.scope !4453, !noalias !4454
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i8 %i.aq, ptr %i.as, align 4, !alias.scope !4453, !noalias !4454
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
!4241 = distinct !{!4241, !4240, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRange20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB2s_NtBz_15UnreachableKindENCNvBz_24merge_overlapping_ranges0E0BF_: argument 0"}
!4242 = distinct !{!4242, !4240, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRange20sort_unstable_by_keyTNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeB2s_NtBz_15UnreachableKindENCNvBz_24merge_overlapping_ranges0E0BF_: argument 1"}
!4243 = distinct !{!4243, !"_RNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code24merge_overlapping_ranges0B9_"}
!4244 = distinct !{!4244, !4243, !"_RNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code24merge_overlapping_ranges0B9_: argument 0"}
!4245 = distinct !{!4245, !4243, !"_RNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code24merge_overlapping_ranges0B9_: argument 1"}
!4246 = distinct !{!4246, !"_RNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code24merge_overlapping_ranges0B9_"}
!4247 = distinct !{!4247, !4246, !"_RNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code24merge_overlapping_ranges0B9_: argument 0"}
!4248 = distinct !{!4248, !4246, !"_RNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code24merge_overlapping_ranges0B9_: argument 1"}
!4249 = distinct !{!4249, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeEBW_"}
!4250 = distinct !{!4250, !4249, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeEBW_: argument 0"}
!4251 = distinct !{!4251, !4249, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRangeEBW_: argument 1"}
!4252 = distinct !{!4252, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj4_ECsoTR8nlGN3X_18ty_python_semantic"}
!4253 = distinct !{!4253, !4252, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj4_ECsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4254 = distinct !{!4254, !4252, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj4_ECsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4255 = distinct !{!4255, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRange7reverseBC_"}
!4256 = distinct !{!4256, !4255, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support16unreachable_code16UnreachableRange7reverseBC_: argument 0"}
!4257 = !{!4223}
!4258 = !{!4224}
!4259 = !{!4223, !4224}
!4260 = !{!4226}
!4261 = !{!4227}
!4262 = !{!4227, !4223}
!4263 = !{!4226, !4224}
!4264 = !{!4227, !4223, !4224}
!4265 = !{!4229}
!4266 = !{!4230}
!4267 = !{!4230, !4224}
!4268 = !{!4229, !4223}
!4269 = !{!4230, !4223, !4224}
!4270 = !{!4232}
!4271 = !{!4232, !4233}
!4272 = !{!4235}
!4273 = !{!4236}
!4274 = !{!4236, !4232}
!4275 = !{!4235, !4233}
!4276 = !{!4236, !4232, !4233}
!4277 = !{!4238}
!4278 = !{!4239, !4232, !4233}
!4279 = !{!4241}
!4280 = !{!4241, !4242}
!4281 = !{!4244}
!4282 = !{!4245}
!4283 = !{!4245, !4241}
!4284 = !{!4244, !4242}
!4285 = !{!4245, !4241, !4242}
!4286 = !{!4247}
!4287 = !{!4248, !4241, !4242}
!4288 = !{!4250}
!4289 = !{!4251}
!4290 = !{!4253}
!4291 = !{!4254}
!4292 = !{!4253, !4250, !4256}
!4293 = !{!4254, !4251}
!4294 = !{!4254, !4251, !4256}
!4295 = !{!4253, !4250}
!4296 = distinct !{!4296, !"_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic"}
!4297 = distinct !{!4297, !4296, !"_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4298 = distinct !{!4298, !4296, !"_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4299 = distinct !{!4299, !"_RNvXs1_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp"}
!4300 = distinct !{!4300, !4299, !"_RNvXs1_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 1"}
!4301 = distinct !{!4301, !4299, !"_RNvXs1_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 0"}
!4302 = distinct !{!4302, !"_RNvXNtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!4303 = distinct !{!4303, !4302, !"_RNvXNtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!4304 = distinct !{!4304, !4302, !"_RNvXNtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!4305 = distinct !{!4305, !"_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic"}
!4306 = distinct !{!4306, !4305, !"_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4307 = distinct !{!4307, !4305, !"_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4308 = distinct !{!4308, !"_RNvXs1_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp"}
!4309 = distinct !{!4309, !4308, !"_RNvXs1_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 1"}
!4310 = distinct !{!4310, !4308, !"_RNvXs1_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 0"}
!4311 = distinct !{!4311, !"_RNvXNtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!4312 = distinct !{!4312, !4311, !"_RNvXNtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!4313 = distinct !{!4313, !4311, !"_RNvXNtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!4314 = distinct !{!4314, !"_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic"}
!4315 = distinct !{!4315, !4314, !"_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4316 = distinct !{!4316, !4314, !"_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4317 = distinct !{!4317, !"_RNvXs1_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp"}
!4318 = distinct !{!4318, !4317, !"_RNvXs1_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 1"}
!4319 = distinct !{!4319, !4317, !"_RNvXs1_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 0"}
!4320 = distinct !{!4320, !"_RNvXNtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!4321 = distinct !{!4321, !4320, !"_RNvXNtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!4322 = distinct !{!4322, !4320, !"_RNvXNtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!4323 = distinct !{!4323, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe7reverseCsoTR8nlGN3X_18ty_python_semantic"}
!4324 = distinct !{!4324, !4323, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSRe7reverseCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4325 = distinct !{!4325, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapReECsoTR8nlGN3X_18ty_python_semantic"}
!4326 = distinct !{!4326, !4325, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapReECsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4327 = distinct !{!4327, !4325, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapReECsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4328 = !{!4304, !4303, !4301, !4300, !4298, !4297}
!4329 = !{!4313, !4312, !4310, !4309, !4307, !4306}
!4330 = !{!4322, !4321, !4319, !4318, !4316, !4315}
!4331 = !{!4326, !4324}
!4332 = !{!4327}
!4333 = !{!4326, !4327, !4324}
!4334 = !{!4327, !4324}
!4335 = !{!4326}
!4336 = distinct !{!4336, !"_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic"}
!4337 = distinct !{!4337, !4336, !"_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4338 = distinct !{!4338, !4336, !"_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4339 = distinct !{!4339, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBx_ENtNtB7_3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic"}
!4340 = distinct !{!4340, !4339, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBx_ENtNtB7_3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4341 = distinct !{!4341, !4339, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBx_ENtNtB7_3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4342 = distinct !{!4342, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic"}
!4343 = distinct !{!4343, !4342, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4344 = distinct !{!4344, !4342, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4345 = distinct !{!4345, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp"}
!4346 = distinct !{!4346, !4345, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!4347 = distinct !{!4347, !4345, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!4348 = distinct !{!4348, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp"}
!4349 = distinct !{!4349, !4348, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 0"}
!4350 = distinct !{!4350, !4348, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 1"}
!4351 = distinct !{!4351, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!4352 = distinct !{!4352, !4351, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!4353 = distinct !{!4353, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!4354 = distinct !{!4354, !4353, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!4355 = distinct !{!4355, !"_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic"}
!4356 = distinct !{!4356, !4355, !"_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4357 = distinct !{!4357, !4355, !"_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4358 = distinct !{!4358, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBx_ENtNtB7_3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic"}
!4359 = distinct !{!4359, !4358, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBx_ENtNtB7_3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4360 = distinct !{!4360, !4358, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBx_ENtNtB7_3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4361 = distinct !{!4361, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic"}
!4362 = distinct !{!4362, !4361, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4363 = distinct !{!4363, !4361, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4364 = distinct !{!4364, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp"}
!4365 = distinct !{!4365, !4364, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!4366 = distinct !{!4366, !4364, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!4367 = distinct !{!4367, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp"}
!4368 = distinct !{!4368, !4367, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 0"}
!4369 = distinct !{!4369, !4367, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 1"}
!4370 = distinct !{!4370, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!4371 = distinct !{!4371, !4370, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!4372 = distinct !{!4372, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!4373 = distinct !{!4373, !4372, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!4374 = distinct !{!4374, !"_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic"}
!4375 = distinct !{!4375, !4374, !"_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4376 = distinct !{!4376, !4374, !"_RNvYNvYTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB6_ENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBX_3ops8function5FnMutTRB5_B23_EE8call_mutCsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4377 = distinct !{!4377, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBx_ENtNtB7_3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic"}
!4378 = distinct !{!4378, !4377, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBx_ENtNtB7_3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4379 = distinct !{!4379, !4377, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameBx_ENtNtB7_3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4380 = distinct !{!4380, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic"}
!4381 = distinct !{!4381, !4380, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4382 = distinct !{!4382, !4380, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4383 = distinct !{!4383, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp"}
!4384 = distinct !{!4384, !4383, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!4385 = distinct !{!4385, !4383, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!4386 = distinct !{!4386, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp"}
!4387 = distinct !{!4387, !4386, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 0"}
!4388 = distinct !{!4388, !4386, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 1"}
!4389 = distinct !{!4389, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!4390 = distinct !{!4390, !4389, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!4391 = distinct !{!4391, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!4392 = distinct !{!4392, !4391, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!4393 = !{!4337}
!4394 = !{!4338}
!4395 = !{!4340}
!4396 = !{!4341}
!4397 = !{!4343}
!4398 = !{!4344}
!4399 = !{!4346}
!4400 = !{!4347}
!4401 = !{!4349}
!4402 = !{!4350}
!4403 = !{!4352, !4349, !4346, !4343, !4340, !4337}
!4404 = !{!4350, !4347, !4344, !4341, !4338}
!4405 = !{!4354, !4350, !4347, !4344, !4341, !4338}
!4406 = !{!4349, !4346, !4343, !4340, !4337}
!4407 = !{!4356}
!4408 = !{!4357}
!4409 = !{!4359}
!4410 = !{!4360}
!4411 = !{!4362}
!4412 = !{!4363}
!4413 = !{!4365}
!4414 = !{!4366}
!4415 = !{!4368}
!4416 = !{!4369}
!4417 = !{!4371, !4368, !4365, !4362, !4359, !4356}
!4418 = !{!4369, !4366, !4363, !4360, !4357}
!4419 = !{!4373, !4369, !4366, !4363, !4360, !4357}
!4420 = !{!4368, !4365, !4362, !4359, !4356}
!4421 = !{!4375}
!4422 = !{!4376}
!4423 = !{!4378}
!4424 = !{!4379}
!4425 = !{!4381}
!4426 = !{!4382}
!4427 = !{!4384}
!4428 = !{!4385}
!4429 = !{!4387}
!4430 = !{!4388}
!4431 = !{!4390, !4387, !4384, !4381, !4378, !4375}
!4432 = !{!4388, !4385, !4382, !4379, !4376}
!4433 = !{!4392, !4388, !4385, !4382, !4379, !4376}
!4434 = !{!4387, !4384, !4381, !4378, !4375}
!4435 = distinct !{!4435, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBV_6frozen16FrozenValueIndexEECsoTR8nlGN3X_18ty_python_semantic"}
!4436 = distinct !{!4436, !4435, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBV_6frozen16FrozenValueIndexEECsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4437 = distinct !{!4437, !4435, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBV_6frozen16FrozenValueIndexEECsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4438 = distinct !{!4438, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE7reverseCsoTR8nlGN3X_18ty_python_semantic"}
!4439 = distinct !{!4439, !4438, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6frozen16FrozenValueIndexE7reverseCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4440 = distinct !{!4440, !30, !31}
!4441 = distinct !{!4441, !30}
!4442 = !{!4436}
!4443 = !{!4437}
!4444 = !{!4436, !4439}
!4445 = !{!4437, !4439}
!4446 = distinct !{!4446, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE7reverseB1J_"}
!4447 = distinct !{!4447, !4446, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersE7reverseB1J_: argument 0"}
!4448 = distinct !{!4448, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersEEB23_"}
!4449 = distinct !{!4449, !4448, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersEEB23_: argument 0"}
!4450 = distinct !{!4450, !4448, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersEEB23_: argument 1"}
!4451 = !{!4449, !4447}
!4452 = !{!4450}
!4453 = !{!4450, !4447}
!4454 = !{!4449}
!4455 = distinct !{!4455, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB23_"}
!4456 = distinct !{!4456, !4455, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB23_: argument 0"}
!4457 = distinct !{!4457, !4455, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEB23_: argument 1"}
!4458 = distinct !{!4458, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj4_ECsoTR8nlGN3X_18ty_python_semantic"}
!4459 = distinct !{!4459, !4458, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj4_ECsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4460 = distinct !{!4460, !4458, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj4_ECsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4461 = distinct !{!4461, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE7reverseB1J_"}
!4462 = distinct !{!4462, !4461, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeE7reverseB1J_: argument 0"}
!4463 = !{!4456}
!4464 = !{!4457}
!4465 = !{!4459}
!4466 = !{!4460}
!4467 = !{!4459, !4456, !4462}
!4468 = !{!4460, !4457}
!4469 = !{!4460, !4457, !4462}
!4470 = !{!4459, !4456}
!4471 = distinct !{!4471, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsE7reverseB1L_"}
!4472 = distinct !{!4472, !4471, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsE7reverseB1L_: argument 0"}
!4473 = distinct !{!4473, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsEEB25_"}
!4474 = distinct !{!4474, !4473, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsEEB25_: argument 0"}
!4475 = distinct !{!4475, !4473, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19TypeExpressionFlagsEEB25_: argument 1"}
!4476 = !{!4474, !4472}
!4477 = !{!4475}
!4478 = !{!4475, !4472}
!4479 = !{!4474}
!4480 = distinct !{!4480, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_"}
!4481 = distinct !{!4481, !4480, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_: argument 0"}
!4482 = distinct !{!4482, !4480, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_: argument 1"}
!4483 = distinct !{!4483, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtB7_3cmp10PartialOrd2ltBD_"}
!4484 = distinct !{!4484, !4483, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtB7_3cmp10PartialOrd2ltBD_: argument 0"}
!4485 = distinct !{!4485, !4483, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtB7_3cmp10PartialOrd2ltBD_: argument 1"}
!4486 = distinct !{!4486, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!4487 = distinct !{!4487, !4486, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!4488 = distinct !{!4488, !4486, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!4489 = distinct !{!4489, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_"}
!4490 = distinct !{!4490, !4489, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_: argument 0"}
!4491 = distinct !{!4491, !4489, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_: argument 1"}
!4492 = distinct !{!4492, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtB7_3cmp10PartialOrd2ltBD_"}
!4493 = distinct !{!4493, !4492, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtB7_3cmp10PartialOrd2ltBD_: argument 0"}
!4494 = distinct !{!4494, !4492, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtB7_3cmp10PartialOrd2ltBD_: argument 1"}
!4495 = distinct !{!4495, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!4496 = distinct !{!4496, !4495, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!4497 = distinct !{!4497, !4495, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!4498 = distinct !{!4498, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_"}
!4499 = distinct !{!4499, !4498, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_: argument 0"}
!4500 = distinct !{!4500, !4498, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_: argument 1"}
!4501 = distinct !{!4501, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtB7_3cmp10PartialOrd2ltBD_"}
!4502 = distinct !{!4502, !4501, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtB7_3cmp10PartialOrd2ltBD_: argument 0"}
!4503 = distinct !{!4503, !4501, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjENtNtB7_3cmp10PartialOrd2ltBD_: argument 1"}
!4504 = distinct !{!4504, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!4505 = distinct !{!4505, !4504, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!4506 = distinct !{!4506, !4504, !"_RNvXsU_NtNtCs4NRVxsYgnAr_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!4507 = distinct !{!4507, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjE7reverseBB_"}
!4508 = distinct !{!4508, !4507, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjE7reverseBB_: argument 0"}
!4509 = distinct !{!4509, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjEEBV_"}
!4510 = distinct !{!4510, !4509, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjEEBV_: argument 0"}
!4511 = distinct !{!4511, !4509, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPriorityjEEBV_: argument 1"}
!4512 = !{!4481}
!4513 = !{!4482}
!4514 = !{!4484}
!4515 = !{!4485}
!4516 = !{!4487}
!4517 = !{!4488}
!4518 = !{!4487, !4484, !4481}
!4519 = !{!4488, !4485, !4482}
!4520 = !{!4490}
!4521 = !{!4491}
!4522 = !{!4493}
!4523 = !{!4494}
!4524 = !{!4496}
!4525 = !{!4497}
!4526 = !{!4496, !4493, !4490}
!4527 = !{!4497, !4494, !4491}
!4528 = !{!4499}
!4529 = !{!4500}
!4530 = !{!4502}
!4531 = !{!4503}
!4532 = !{!4505}
!4533 = !{!4506}
!4534 = !{!4505, !4502, !4499}
!4535 = !{!4506, !4503, !4500}
!4536 = !{!4510, !4508}
!4537 = !{!4511}
!4538 = !{!4510, !4511, !4508}
!4539 = !{!4511, !4508}
!4540 = !{!4510}
!4541 = distinct !{!4541, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_"}
!4542 = distinct !{!4542, !4541, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_: argument 0"}
!4543 = distinct !{!4543, !4541, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_: argument 1"}
!4544 = distinct !{!4544, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtB7_3cmp10PartialOrd2ltBD_"}
!4545 = distinct !{!4545, !4544, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtB7_3cmp10PartialOrd2ltBD_: argument 0"}
!4546 = distinct !{!4546, !4544, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtB7_3cmp10PartialOrd2ltBD_: argument 1"}
!4547 = distinct !{!4547, !"_RNvXs10_NtNtCs4NRVxsYgnAr_4core3cmp5implsmNtB8_10PartialOrd2lt"}
!4548 = distinct !{!4548, !4547, !"_RNvXs10_NtNtCs4NRVxsYgnAr_4core3cmp5implsmNtB8_10PartialOrd2lt: argument 0"}
!4549 = distinct !{!4549, !4547, !"_RNvXs10_NtNtCs4NRVxsYgnAr_4core3cmp5implsmNtB8_10PartialOrd2lt: argument 1"}
!4550 = distinct !{!4550, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_"}
!4551 = distinct !{!4551, !4550, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_: argument 0"}
!4552 = distinct !{!4552, !4550, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_: argument 1"}
!4553 = distinct !{!4553, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtB7_3cmp10PartialOrd2ltBD_"}
!4554 = distinct !{!4554, !4553, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtB7_3cmp10PartialOrd2ltBD_: argument 0"}
!4555 = distinct !{!4555, !4553, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtB7_3cmp10PartialOrd2ltBD_: argument 1"}
!4556 = distinct !{!4556, !"_RNvXs10_NtNtCs4NRVxsYgnAr_4core3cmp5implsmNtB8_10PartialOrd2lt"}
!4557 = distinct !{!4557, !4556, !"_RNvXs10_NtNtCs4NRVxsYgnAr_4core3cmp5implsmNtB8_10PartialOrd2lt: argument 0"}
!4558 = distinct !{!4558, !4556, !"_RNvXs10_NtNtCs4NRVxsYgnAr_4core3cmp5implsmNtB8_10PartialOrd2lt: argument 1"}
!4559 = distinct !{!4559, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_"}
!4560 = distinct !{!4560, !4559, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_: argument 0"}
!4561 = distinct !{!4561, !4559, !"_RNvYNvYTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBc_: argument 1"}
!4562 = distinct !{!4562, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtB7_3cmp10PartialOrd2ltBD_"}
!4563 = distinct !{!4563, !4562, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtB7_3cmp10PartialOrd2ltBD_: argument 0"}
!4564 = distinct !{!4564, !4562, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymENtNtB7_3cmp10PartialOrd2ltBD_: argument 1"}
!4565 = distinct !{!4565, !"_RNvXs10_NtNtCs4NRVxsYgnAr_4core3cmp5implsmNtB8_10PartialOrd2lt"}
!4566 = distinct !{!4566, !4565, !"_RNvXs10_NtNtCs4NRVxsYgnAr_4core3cmp5implsmNtB8_10PartialOrd2lt: argument 0"}
!4567 = distinct !{!4567, !4565, !"_RNvXs10_NtNtCs4NRVxsYgnAr_4core3cmp5implsmNtB8_10PartialOrd2lt: argument 1"}
!4568 = distinct !{!4568, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymE7reverseBB_"}
!4569 = distinct !{!4569, !4568, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymE7reverseBB_: argument 0"}
!4570 = distinct !{!4570, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymEEBV_"}
!4571 = distinct !{!4571, !4570, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymEEBV_: argument 0"}
!4572 = distinct !{!4572, !4570, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class24StructuralMemberPrioritymEEBV_: argument 1"}
!4573 = !{!4542}
!4574 = !{!4543}
!4575 = !{!4545}
!4576 = !{!4546}
!4577 = !{!4548}
!4578 = !{!4549}
!4579 = !{!4548, !4545, !4542}
!4580 = !{!4549, !4546, !4543}
!4581 = !{!4551}
!4582 = !{!4552}
!4583 = !{!4554}
!4584 = !{!4555}
!4585 = !{!4557}
!4586 = !{!4558}
!4587 = !{!4557, !4554, !4551}
!4588 = !{!4558, !4555, !4552}
!4589 = !{!4560}
!4590 = !{!4561}
!4591 = !{!4563}
!4592 = !{!4564}
!4593 = !{!4566}
!4594 = !{!4567}
!4595 = !{!4566, !4563, !4560}
!4596 = !{!4567, !4564, !4561}
!4597 = !{!4571, !4569}
!4598 = !{!4572}
!4599 = !{!4572, !4569}
!4600 = !{!4571}
!4601 = distinct !{!4601, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapxECsoTR8nlGN3X_18ty_python_semantic"}
!4602 = distinct !{!4602, !4601, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapxECsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4603 = distinct !{!4603, !4601, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapxECsoTR8nlGN3X_18ty_python_semantic: argument 1"}
!4604 = distinct !{!4604, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSx7reverseCsoTR8nlGN3X_18ty_python_semantic"}
!4605 = distinct !{!4605, !4604, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSx7reverseCsoTR8nlGN3X_18ty_python_semantic: argument 0"}
!4606 = distinct !{!4606, !30, !31}
!4607 = distinct !{!4607, !31, !30}
!4608 = !{!4602}
!4609 = !{!4603}
!4610 = !{!4602, !4605}
!4611 = !{!4603, !4605}
!4612 = distinct !{!4612, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0B1H_"}
!4613 = distinct !{!4613, !4612, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0B1H_: argument 1"}
!4614 = distinct !{!4614, !4612, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0B1H_: argument 0"}
!4615 = distinct !{!4615, !"_RNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0B3_"}
!4616 = distinct !{!4616, !4615, !"_RNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0B3_: argument 1"}
!4617 = distinct !{!4617, !4615, !"_RNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0B3_: argument 0"}
!4618 = distinct !{!4618, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0B1H_"}
!4619 = distinct !{!4619, !4618, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0B1H_: argument 1"}
!4620 = distinct !{!4620, !4618, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0B1H_: argument 0"}
!4621 = distinct !{!4621, !"_RNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0B3_"}
!4622 = distinct !{!4622, !4621, !"_RNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0B3_: argument 1"}
!4623 = distinct !{!4623, !4621, !"_RNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0B3_: argument 0"}
!4624 = distinct !{!4624, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0B1H_"}
!4625 = distinct !{!4625, !4624, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0B1H_: argument 1"}
!4626 = distinct !{!4626, !4624, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic16sort_unstable_byNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0E0B1H_: argument 0"}
!4627 = distinct !{!4627, !"_RNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0B3_"}
!4628 = distinct !{!4628, !4627, !"_RNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0B3_: argument 1"}
!4629 = distinct !{!4629, !4627, !"_RNCNvCsoTR8nlGN3X_18ty_python_semantic10check_files0_0B3_: argument 0"}
!4630 = !{!4614, !4613}
!4631 = !{!4617, !4616, !4614, !4613}
!4632 = !{!4620, !4619}
!4633 = !{!4623, !4622, !4620, !4619}
!4634 = !{!4626, !4625}
!4635 = !{!4629, !4628, !4626, !4625}
!4636 = distinct !{!4636, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic7sort_byNCINvNtCsoTR8nlGN3X_18ty_python_semantic5fixes7fix_allNvYDNtNtB1A_2db2DbEL_B2p_10check_fileEs0_0E0B1A_"}
!4637 = distinct !{!4637, !4636, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic7sort_byNCINvNtCsoTR8nlGN3X_18ty_python_semantic5fixes7fix_allNvYDNtNtB1A_2db2DbEL_B2p_10check_fileEs0_0E0B1A_: argument 1"}
!4638 = distinct !{!4638, !4636, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnostic7sort_byNCINvNtCsoTR8nlGN3X_18ty_python_semantic5fixes7fix_allNvYDNtNtB1A_2db2DbEL_B2p_10check_fileEs0_0E0B1A_: argument 0"}
!4639 = distinct !{!4639, !"_RNCINvNtCsoTR8nlGN3X_18ty_python_semantic5fixes7fix_allNvYDNtNtB6_2db2DbEL_BV_10check_fileEs0_0B6_"}
!4640 = distinct !{!4640, !4639, !"_RNCINvNtCsoTR8nlGN3X_18ty_python_semantic5fixes7fix_allNvYDNtNtB6_2db2DbEL_BV_10check_fileEs0_0B6_: argument 1"}
!4641 = distinct !{!4641, !4639, !"_RNCINvNtCsoTR8nlGN3X_18ty_python_semantic5fixes7fix_allNvYDNtNtB6_2db2DbEL_BV_10check_fileEs0_0B6_: argument 0"}
end_hunk_1
