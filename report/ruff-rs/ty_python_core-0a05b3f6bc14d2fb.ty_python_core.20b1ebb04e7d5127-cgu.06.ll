Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_core-0a05b3f6bc14d2fb.ty_python_core.20b1ebb04e7d5127-cgu.06?download=true
inline.NumInlined: 910
inline.NumDeleted: 459
begin_hunk_0_@_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBW_25ScopedEnclosingSnapshotIdENCINvMB6_SBT_16sort_unstable_byNCNvMs2_NtBY_6frozenINtB36_9FrozenMapBU_B1W_E12from_entries0E0EBY_:bb.a

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.bi = load i8, ptr %i.bh, align 4, !range !4, !alias.scope !150, !noalias !151, !noundef !3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.bk = load i8, ptr %i.bj, align 4, !range !4, !alias.scope !151, !noalias !150, !noundef !3
  %i.bl = sub nsw i8 %i.bi, %i.bk
  br label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_.exit7

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_.exit7: ; preds = %.lr.ph, %bb.h, %bb.i, %bb.j
  %.sroa.0.1.i.i.i3 = phi i8 [ %i.bl, %bb.j ], [ %i.bf, %bb.i ], [ %.sroa.0.0.i.i.i4, %bb.h ], [ %i.an, %.lr.ph ]
  %i.bm = icmp eq i8 %.sroa.0.1.i.i.i3, -1
  br i1 %i.bm, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtB15_25ScopedEnclosingSnapshotIdENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB17_6frozenINtB3h_9FrozenMapB13_B25_E12from_entries0E0EB17_.exit, label %bb.k

bb.k:                                             ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_.exit7
  %i.bn = add nuw nsw i64 %.sroa.01.0.i19, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.bn, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtB15_25ScopedEnclosingSnapshotIdENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB17_6frozenINtB3h_9FrozenMapB13_B25_E12from_entries0E0EB17_.exit, label %.lr.ph

.lr.ph22:                                         ; preds = %.preheader, %bb.p
  %i.bo = phi i32 [ %i.bu, %bb.p ], [ %i.c, %.preheader ] ; 2 uses
  %.sroa.01.1.i21 = phi i64 [ %i.cv, %bb.p ], [ 2, %.preheader ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.1.i21 ; 5 uses
  %i.bq = add nsw i64 %.sroa.01.1.i21, -1         ; 2 uses
  %i.br = icmp samesign ult i64 %i.bq, %1
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bq ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !range !5, !alias.scope !158, !noalias !159, !noundef !3 ; 3 uses
  %i.bv = tail call i8 @llvm.ucmp.i8.i32(i32 %i.bu, i32 %i.bo)
  %i.bw = icmp eq i32 %i.bu, %i.bo
  br i1 %i.bw, label %bb.l, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_.exit12

bb.l:                                             ; preds = %.lr.ph22
  %i.bx = load i32, ptr %i.bp, align 4, !range !9, !alias.scope !158, !noalias !159, !noundef !3
  %i.by = trunc nuw nsw i32 %i.bx to i8
  %i.bz = load i32, ptr %i.bs, align 4, !range !9, !alias.scope !159, !noalias !158, !noundef !3
  %i.ca = trunc nuw nsw i32 %i.bz to i8
  %i.cb = sub nsw i8 %i.by, %i.ca                 ; 2 uses
  %i.cc = icmp eq i8 %i.cb, 0
  br i1 %i.cc, label %.sink.split.i.i.i10, label %bb.m

.sink.split.i.i.i10:                              ; preds = %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !range !5, !alias.scope !158, !noalias !159, !noundef !3
  %i.cg = load i32, ptr %i.cd, align 4, !range !5, !alias.scope !159, !noalias !158, !noundef !3
  %i.ch = tail call i8 @llvm.ucmp.i8.i32(i32 %i.cf, i32 %i.cg)
  br label %bb.m

bb.m:                                             ; preds = %.sink.split.i.i.i10, %bb.l
  %.sroa.0.0.i.i.i9 = phi i8 [ %i.cb, %bb.l ], [ %i.ch, %.sink.split.i.i.i10 ] ; 2 uses
  %i.ci = icmp eq i8 %.sroa.0.0.i.i.i9, 0
  br i1 %i.ci, label %bb.n, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_.exit12

bb.n:                                             ; preds = %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !range !5, !alias.scope !158, !noalias !159, !noundef !3 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !range !5, !alias.scope !159, !noalias !158, !noundef !3 ; 2 uses
  %i.cn = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ck, i32 %i.cm)
  %i.co = icmp eq i32 %i.ck, %i.cm
  br i1 %i.co, label %bb.o, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_.exit12

bb.o:                                             ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.cq = load i8, ptr %i.cp, align 4, !range !4, !alias.scope !158, !noalias !159, !noundef !3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.cs = load i8, ptr %i.cr, align 4, !range !4, !alias.scope !159, !noalias !158, !noundef !3
  %i.ct = sub nsw i8 %i.cq, %i.cs
  br label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_.exit12

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_.exit12: ; preds = %.lr.ph22, %bb.m, %bb.n, %bb.o
  %.sroa.0.1.i.i.i8 = phi i8 [ %i.ct, %bb.o ], [ %i.cn, %bb.n ], [ %.sroa.0.0.i.i.i9, %bb.m ], [ %i.bv, %.lr.ph22 ]
  %i.cu = icmp eq i8 %.sroa.0.1.i.i.i8, -1
  br i1 %i.cu, label %bb.p, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtB15_25ScopedEnclosingSnapshotIdENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB17_6frozenINtB3h_9FrozenMapB13_B25_E12from_entries0E0EB17_.exit

bb.p:                                             ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_.exit12
  %i.cv = add nuw nsw i64 %.sroa.01.1.i21, 1      ; 2 uses
  %exitcond29.not = icmp eq i64 %i.cv, %1
  br i1 %exitcond29.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtB15_25ScopedEnclosingSnapshotIdENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB17_6frozenINtB3h_9FrozenMapB13_B25_E12from_entries0E0EB17_.exit, label %.lr.ph22

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtB15_25ScopedEnclosingSnapshotIdENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB17_6frozenINtB3h_9FrozenMapB13_B25_E12from_entries0E0EB17_.exit: ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_.exit7, %bb.k, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_.exit12, %bb.p
  %.sroa.0.0.i = phi i64 [ %1, %bb.p ], [ %.sroa.01.1.i21, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_.exit12 ], [ %1, %bb.k ], [ %.sroa.01.0.i19, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_.exit7 ] ; 2 uses
  %i.cw = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.cx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtB15_25ScopedEnclosingSnapshotIdENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB17_6frozenINtB3h_9FrozenMapB13_B25_E12from_entries0E0EB17_.exit
  br i1 %i.af, label %.lr.ph.preheader.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBx_25ScopedEnclosingSnapshotIdE7reverseBz_.exit

bb.r:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtB15_25ScopedEnclosingSnapshotIdENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB17_6frozenINtB3h_9FrozenMapB13_B25_E12from_entries0E0EB17_.exit
  %i.cy = or i64 %1, 1
  %i.cz = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cy, i1 true)
  %i.da = trunc nuw nsw i64 %i.cz to i32
  %i.db = shl nuw nsw i32 %i.da, 1
  %i.dc = xor i32 %i.db, 126
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtB1a_25ScopedEnclosingSnapshotIdENCINvMB8_SB17_16sort_unstable_byNCNvMs2_NtB1c_6frozenINtB3m_9FrozenMapB18_B2a_E12from_entries0E0EB1c_(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(24) null, i32 noundef %i.dc, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBx_25ScopedEnclosingSnapshotIdE7reverseBz_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBx_25ScopedEnclosingSnapshotIdE7reverseBz_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtB13_25ScopedEnclosingSnapshotIdEEB15_.exit.i.i, %.preheader17, %bb.a, %bb.q, %bb.r
  ret void

.lr.ph.preheader.i.i:                             ; preds = %.preheader, %bb.q
  %i.dd = lshr i64 %1, 1
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtB13_25ScopedEnclosingSnapshotIdEEB15_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.dj, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtB13_25ScopedEnclosingSnapshotIdEEB15_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.df = xor i64 %.sroa.0.017.i.i, -1
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.dh = getelementptr [24 x i8], ptr %i.de, i64 %i.df
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.dh, i64 noundef 3)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtB13_25ScopedEnclosingSnapshotIdEEB15_.exit.i.i unwind label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtB13_25ScopedEnclosingSnapshotIdEEB15_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.dj = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dj, %i.dd
  br i1 %exitcond.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBx_25ScopedEnclosingSnapshotIdE7reverseBz_.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB6_SBT_20sort_unstable_by_keyBU_NCNvMs8_NtB1T_7builderNtB3r_26ExpressionsScopeMapBuilder5build0E0EB1T_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdE7reverseB1u_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load i32, ptr %i.b, align 4, !range !5, !noundef !3 ; 3 uses
  %.val7 = load i32, ptr %0, align 4, !range !5, !noundef !3
  %i.c = icmp ult i32 %.val6, %.val7              ; 2 uses
  %.not22 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader12

.preheader12:                                     ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB6_SB12_20sort_unstable_by_keyB13_NCNvMs8_NtB22_7builderNtB3C_26ExpressionsScopeMapBuilder5build0E0EB22_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB6_SB12_20sort_unstable_by_keyB13_NCNvMs8_NtB22_7builderNtB3C_26ExpressionsScopeMapBuilder5build0E0EB22_.exit, label %.lr.ph18

.lr.ph:                                           ; preds = %.preheader12, %bb.c
  %.val5 = phi i32 [ %.val4, %bb.c ], [ %.val6, %.preheader12 ]
  %.sroa.01.0.i14 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader12 ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i14
  %.val4 = load i32, ptr %i.d, align 4, !range !5, !noundef !3 ; 2 uses
  %i.e = icmp ult i32 %.val4, %.val5
  br i1 %i.e, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB6_SB12_20sort_unstable_by_keyB13_NCNvMs8_NtB22_7builderNtB3C_26ExpressionsScopeMapBuilder5build0E0EB22_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i14, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB6_SB12_20sort_unstable_by_keyB13_NCNvMs8_NtB22_7builderNtB3C_26ExpressionsScopeMapBuilder5build0E0EB22_.exit.thread, label %.lr.ph

.lr.ph18:                                         ; preds = %.preheader, %bb.d
  %.val3 = phi i32 [ %.val, %bb.d ], [ %.val6, %.preheader ]
  %.sroa.01.1.i17 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i17
  %.val = load i32, ptr %i.g, align 4, !range !5, !noundef !3 ; 2 uses
  %i.h = icmp ult i32 %.val, %.val3
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB6_SB12_20sort_unstable_by_keyB13_NCNvMs8_NtB22_7builderNtB3C_26ExpressionsScopeMapBuilder5build0E0EB22_.exit

bb.d:                                             ; preds = %.lr.ph18
  %i.i = add nuw nsw i64 %.sroa.01.1.i17, 1       ; 2 uses
  %exitcond25.not = icmp eq i64 %i.i, %1
  br i1 %exitcond25.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB6_SB12_20sort_unstable_by_keyB13_NCNvMs8_NtB22_7builderNtB3C_26ExpressionsScopeMapBuilder5build0E0EB22_.exit.thread, label %.lr.ph18

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB6_SB12_20sort_unstable_by_keyB13_NCNvMs8_NtB22_7builderNtB3C_26ExpressionsScopeMapBuilder5build0E0EB22_.exit: ; preds = %.lr.ph, %.lr.ph18, %.preheader12, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader12 ], [ 2, %.preheader ], [ %.sroa.01.1.i17, %.lr.ph18 ], [ %.sroa.01.0.i14, %.lr.ph ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB6_SB12_20sort_unstable_by_keyB13_NCNvMs8_NtB22_7builderNtB3C_26ExpressionsScopeMapBuilder5build0E0EB22_.exit.thread, label %bb.e

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB6_SB12_20sort_unstable_by_keyB13_NCNvMs8_NtB22_7builderNtB3C_26ExpressionsScopeMapBuilder5build0E0EB22_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB6_SB12_20sort_unstable_by_keyB13_NCNvMs8_NtB22_7builderNtB3C_26ExpressionsScopeMapBuilder5build0E0EB22_.exit
  br i1 %i.c, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdE12split_at_mutB1u_.exit11.preheader.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdE7reverseB1u_.exit

bb.e:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB6_SB12_20sort_unstable_by_keyB13_NCNvMs8_NtB22_7builderNtB3C_26ExpressionsScopeMapBuilder5build0E0EB22_.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB8_SB17_20sort_unstable_by_keyB18_NCNvMs8_NtB27_7builderNtB3H_26ExpressionsScopeMapBuilder5build0E0EB27_(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.p, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdE7reverseB1u_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdE7reverseB1u_.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdE12split_at_mutB1u_.exit11.i.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdE12split_at_mutB1u_.exit11.i.i.preheader.a, %bb.a, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB6_SB12_20sort_unstable_by_keyB13_NCNvMs8_NtB22_7builderNtB3C_26ExpressionsScopeMapBuilder5build0E0EB22_.exit.thread, %bb.e
  ret void

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdE12split_at_mutB1u_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB6_SB12_20sort_unstable_by_keyB13_NCNvMs8_NtB22_7builderNtB3C_26ExpressionsScopeMapBuilder5build0E0EB22_.exit.thread
  %i.q = lshr i64 %1, 1                           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 4
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdE12split_at_mutB1u_.exit11.i.i.prol.loopexit, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdE12split_at_mutB1u_.exit11.preheader.i.i
  %n.vec = and i64 %i.q, 576460752303423486       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = xor i64 %index, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %wide.vec = load <4 x i32>, ptr %i.t, align 4, !alias.scope !169, !noalias !168
  %i.v = getelementptr i8, ptr %i.u, i64 -8
  %wide.load = load <2 x i64>, ptr %i.v, align 4, !alias.scope !170, !noalias !167
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.t, align 4, !alias.scope !169, !noalias !168
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -8
  %interleaved.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec, ptr %i.w, align 4, !alias.scope !170, !noalias !167
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdE12split_at_mutB1u_.exit11.i.i.preheader.a, label %vector.body, !llvm.loop !165

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdE12split_at_mutB1u_.exit11.i.i.preheader.a: ; preds = %vector.body
  %lcmp.mod.not = icmp eq i64 %i.q, %n.vec
  br i1 %lcmp.mod.not, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdE7reverseB1u_.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdE12split_at_mutB1u_.exit11.i.i.prol.loopexit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdE12split_at_mutB1u_.exit11.i.i.prol.loopexit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdE12split_at_mutB1u_.exit11.preheader.i.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdE12split_at_mutB1u_.exit11.i.i.preheader.a
  %.sroa.0.016.i.i.unr = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdE12split_at_mutB1u_.exit11.preheader.i.i ], [ %n.vec, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdE12split_at_mutB1u_.exit11.i.i.preheader.a ]
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdE12split_at_mutB1u_.exit11.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdE12split_at_mutB1u_.exit11.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdE12split_at_mutB1u_.exit11.i.i.prol.loopexit, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdE12split_at_mutB1u_.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ad, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdE12split_at_mutB1u_.exit11.i.i ], [ %.sroa.0.016.i.i.unr, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdE12split_at_mutB1u_.exit11.i.i.prol.loopexit ] ; 3 uses
  %i.y = xor i64 %.sroa.0.016.i.i, -1
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.aa = getelementptr [8 x i8], ptr %i.r, i64 %i.y ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 4, !alias.scope !170, !noalias !167
  %i.ac = load <2 x i32>, ptr %i.z, align 4, !alias.scope !169, !noalias !168
  store i64 %i.ab, ptr %i.z, align 4, !alias.scope !169, !noalias !168
  store <2 x i32> %i.ac, ptr %i.aa, align 4, !alias.scope !170, !noalias !167
  %i.ad = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.ad, %i.q
  br i1 %exitcond.not.i.i.1, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdE7reverseB1u_.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdE12split_at_mutB1u_.exit11.i.i, !llvm.loop !166
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB6_SBT_16sort_unstable_byNCNvMs2_B2f_NtB2f_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0EB2h_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE7reverseB1S_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 55
  %i.d = load i8, ptr %i.c, align 1, !range !8, !alias.scope !212, !noalias !213, !noundef !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !212, !noalias !213, !noundef !3 ; 4 uses
  %i.g = and i64 %i.f, 72057594037927935
  %i.h = icmp ult i8 %i.d, -48
  %i.i = zext i8 %i.d to i64
  %i.j = add nsw i64 %i.i, -192
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 16)
  %.sroa.0.0.i.i.i.i = select i1 %i.h, i64 %spec.store.select.i.i.i.i, i64 %i.g ; 3 uses
  %i.k = icmp ugt i8 %i.d, -49
  %i.l = load ptr, ptr %i.b, align 8, !alias.scope !212, !noalias !213 ; 3 uses
  %.sroa.01.0.i.i.i.i = select i1 %i.k, ptr %i.l, ptr %i.b ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.n = load i8, ptr %i.m, align 1, !range !8, !alias.scope !214, !noalias !215, !noundef !3 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !214, !noalias !215, !noundef !3
  %i.q = and i64 %i.p, 72057594037927935
  %i.r = icmp ult i8 %i.n, -48
  %i.s = zext i8 %i.n to i64
  %i.t = add nsw i64 %i.s, -192
  %spec.store.select.i9.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 16)
  %.sroa.0.0.i10.i.i.i = select i1 %i.r, i64 %spec.store.select.i9.i.i.i, i64 %i.q ; 3 uses
  %i.u = icmp ugt i8 %i.n, -49
  %i.v = load ptr, ptr %0, align 8, !alias.scope !214, !noalias !215
  %.sroa.01.0.i11.i.i.i = select i1 %i.u, ptr %i.v, ptr %0 ; 2 uses
  %i.w = icmp eq ptr %.sroa.01.0.i.i.i.i, %.sroa.01.0.i11.i.i.i
  %i.x = lshr i64 %i.f, 56
  %i.y = trunc nuw i64 %i.x to i8                 ; 2 uses
  br i1 %i.w, label %.split, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_.exit

.split:                                           ; preds = %bb.b
  %i.z = icmp samesign ult i64 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i10.i.i.i
  br i1 %i.z, label %.preheader, label %.preheader31

.preheader:                                       ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_.exit, %.split
  %.not41 = icmp eq i64 %1, 2
  br i1 %.not41, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB6_SB12_16sort_unstable_byNCNvMs2_B2o_NtB2o_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0EB2q_.exit, label %.lr.ph37

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_.exit: ; preds = %bb.b
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i.i.i, i64 %.sroa.0.0.i10.i.i.i)
  %i.aa = tail call i32 @memcmp(ptr %.sroa.01.0.i.i.i.i, ptr %.sroa.01.0.i11.i.i.i, i64 %spec.store.select.i.i.i) ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp eq i32 %i.aa, 0
  %i.ad = sub nsw i64 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i10.i.i.i
  %spec.select.i.i.i = select i1 %i.ac, i64 %i.ad, i64 %i.ab
  %i.ae = icmp slt i64 %spec.select.i.i.i, 0
  br i1 %i.ae, label %.preheader, label %.preheader31

.preheader31:                                     ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_.exit, %.split
  %.not = icmp eq i64 %1, 2
  br i1 %.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB6_SB12_16sort_unstable_byNCNvMs2_B2o_NtB2o_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0EB2q_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader31, %bb.c
  %i.af = phi ptr [ %i.av, %bb.c ], [ %i.l, %.preheader31 ]
  %i.ag = phi i64 [ %i.ap, %bb.c ], [ %i.f, %.preheader31 ]
  %i.ah = phi i8 [ %i.bd, %bb.c ], [ %i.y, %.preheader31 ] ; 3 uses
  %.sroa.01.0.i33 = phi i64 [ %i.bk, %bb.c ], [ 2, %.preheader31 ] ; 5 uses
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i33 ; 4 uses
  %i.aj = add nsw i64 %.sroa.01.0.i33, -1         ; 2 uses
  %i.ak = icmp samesign ult i64 %i.aj, %1
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 15
  %i.an = load i8, ptr %i.am, align 1, !range !8, !alias.scope !216, !noalias !217, !noundef !3 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !216, !noalias !217, !noundef !3 ; 3 uses
  %i.aq = and i64 %i.ap, 72057594037927935
  %i.ar = icmp ult i8 %i.an, -48
  %i.as = zext i8 %i.an to i64
  %i.at = add nsw i64 %i.as, -192
  %spec.store.select.i.i.i.i3 = tail call i64 @llvm.umin.i64(i64 %i.at, i64 16)
  %.sroa.0.0.i.i.i.i4 = select i1 %i.ar, i64 %spec.store.select.i.i.i.i3, i64 %i.aq ; 3 uses
  %i.au = icmp ugt i8 %i.an, -49
  %i.av = load ptr, ptr %i.ai, align 8, !alias.scope !216, !noalias !217 ; 2 uses
  %.sroa.01.0.i.i.i.i5 = select i1 %i.au, ptr %i.av, ptr %i.ai ; 2 uses
  %i.aw = and i64 %i.ag, 72057594037927935
  %i.ax = icmp ult i8 %i.ah, -48
  %i.ay = zext i8 %i.ah to i64
  %i.az = add nsw i64 %i.ay, -192
  %spec.store.select.i9.i.i.i6 = tail call i64 @llvm.umin.i64(i64 %i.az, i64 16)
  %.sroa.0.0.i10.i.i.i7 = select i1 %i.ax, i64 %spec.store.select.i9.i.i.i6, i64 %i.aw ; 3 uses
  %i.ba = icmp ugt i8 %i.ah, -49
  %.sroa.01.0.i11.i.i.i8 = select i1 %i.ba, ptr %i.af, ptr %i.al ; 2 uses
  %i.bb = icmp eq ptr %.sroa.01.0.i.i.i.i5, %.sroa.01.0.i11.i.i.i8
  %i.bc = lshr i64 %i.ap, 56
  %i.bd = trunc nuw i64 %i.bc to i8
  br i1 %i.bb, label %.split25, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_.exit12

.split25:                                         ; preds = %.lr.ph
  %i.be = icmp samesign ult i64 %.sroa.0.0.i.i.i.i4, %.sroa.0.0.i10.i.i.i7
  br i1 %i.be, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB6_SB12_16sort_unstable_byNCNvMs2_B2o_NtB2o_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0EB2q_.exit, label %bb.c

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_.exit12: ; preds = %.lr.ph
  %spec.store.select.i.i.i9 = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i.i.i4, i64 %.sroa.0.0.i10.i.i.i7)
  %i.bf = tail call i32 @memcmp(ptr %.sroa.01.0.i.i.i.i5, ptr %.sroa.01.0.i11.i.i.i8, i64 %spec.store.select.i.i.i9) ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp eq i32 %i.bf, 0
  %i.bi = sub nsw i64 %.sroa.0.0.i.i.i.i4, %.sroa.0.0.i10.i.i.i7
  %spec.select.i.i.i10 = select i1 %i.bh, i64 %i.bi, i64 %i.bg
  %i.bj = icmp slt i64 %spec.select.i.i.i10, 0
  br i1 %i.bj, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB6_SB12_16sort_unstable_byNCNvMs2_B2o_NtB2o_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0EB2q_.exit, label %bb.c

bb.c:                                             ; preds = %.split25, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_.exit12
  %i.bk = add nuw nsw i64 %.sroa.01.0.i33, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.bk, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB6_SB12_16sort_unstable_byNCNvMs2_B2o_NtB2o_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0EB2q_.exit, label %.lr.ph

.lr.ph37:                                         ; preds = %.preheader, %bb.d
  %i.bl = phi ptr [ %i.cb, %bb.d ], [ %i.l, %.preheader ]
  %i.bm = phi i64 [ %i.bv, %bb.d ], [ %i.f, %.preheader ]
  %i.bn = phi i8 [ %i.cj, %bb.d ], [ %i.y, %.preheader ] ; 3 uses
  %.sroa.01.1.i36 = phi i64 [ %i.cq, %bb.d ], [ 2, %.preheader ] ; 5 uses
  %i.bo = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.1.i36 ; 4 uses
  %i.bp = add nsw i64 %.sroa.01.1.i36, -1         ; 2 uses
  %i.bq = icmp samesign ult i64 %i.bp, %1
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 15
  %i.bt = load i8, ptr %i.bs, align 1, !range !8, !alias.scope !218, !noalias !219, !noundef !3 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !218, !noalias !219, !noundef !3 ; 3 uses
  %i.bw = and i64 %i.bv, 72057594037927935
  %i.bx = icmp ult i8 %i.bt, -48
  %i.by = zext i8 %i.bt to i64
  %i.bz = add nsw i64 %i.by, -192
  %spec.store.select.i.i.i.i13 = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 16)
  %.sroa.0.0.i.i.i.i14 = select i1 %i.bx, i64 %spec.store.select.i.i.i.i13, i64 %i.bw ; 3 uses
  %i.ca = icmp ugt i8 %i.bt, -49
  %i.cb = load ptr, ptr %i.bo, align 8, !alias.scope !218, !noalias !219 ; 2 uses
  %.sroa.01.0.i.i.i.i15 = select i1 %i.ca, ptr %i.cb, ptr %i.bo ; 2 uses
  %i.cc = and i64 %i.bm, 72057594037927935
  %i.cd = icmp ult i8 %i.bn, -48
  %i.ce = zext i8 %i.bn to i64
  %i.cf = add nsw i64 %i.ce, -192
  %spec.store.select.i9.i.i.i16 = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 16)
  %.sroa.0.0.i10.i.i.i17 = select i1 %i.cd, i64 %spec.store.select.i9.i.i.i16, i64 %i.cc ; 3 uses
  %i.cg = icmp ugt i8 %i.bn, -49
  %.sroa.01.0.i11.i.i.i18 = select i1 %i.cg, ptr %i.bl, ptr %i.br ; 2 uses
  %i.ch = icmp eq ptr %.sroa.01.0.i.i.i.i15, %.sroa.01.0.i11.i.i.i18
  %i.ci = lshr i64 %i.bv, 56
  %i.cj = trunc nuw i64 %i.ci to i8
  br i1 %i.ch, label %.split26, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_.exit22

.split26:                                         ; preds = %.lr.ph37
  %i.ck = icmp samesign ult i64 %.sroa.0.0.i.i.i.i14, %.sroa.0.0.i10.i.i.i17
  br i1 %i.ck, label %bb.d, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB6_SB12_16sort_unstable_byNCNvMs2_B2o_NtB2o_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0EB2q_.exit

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_.exit22: ; preds = %.lr.ph37
  %spec.store.select.i.i.i19 = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i.i.i14, i64 %.sroa.0.0.i10.i.i.i17)
  %i.cl = tail call i32 @memcmp(ptr %.sroa.01.0.i.i.i.i15, ptr %.sroa.01.0.i11.i.i.i18, i64 %spec.store.select.i.i.i19) ; 2 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp eq i32 %i.cl, 0
  %i.co = sub nsw i64 %.sroa.0.0.i.i.i.i14, %.sroa.0.0.i10.i.i.i17
  %spec.select.i.i.i20 = select i1 %i.cn, i64 %i.co, i64 %i.cm
  %i.cp = icmp slt i64 %spec.select.i.i.i20, 0
  br i1 %i.cp, label %bb.d, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB6_SB12_16sort_unstable_byNCNvMs2_B2o_NtB2o_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0EB2q_.exit

bb.d:                                             ; preds = %.split26, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_.exit22
  %i.cq = add nuw nsw i64 %.sroa.01.1.i36, 1      ; 2 uses
  %exitcond45.not = icmp eq i64 %i.cq, %1
  br i1 %exitcond45.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB6_SB12_16sort_unstable_byNCNvMs2_B2o_NtB2o_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0EB2q_.exit, label %.lr.ph37

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB6_SB12_16sort_unstable_byNCNvMs2_B2o_NtB2o_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0EB2q_.exit: ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_.exit12, %bb.c, %.split25, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_.exit22, %bb.d, %.split26, %.preheader31, %.preheader
  %.sroa.3.0.i = phi i1 [ true, %.preheader ], [ false, %.preheader31 ], [ true, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_.exit22 ], [ true, %.split26 ], [ true, %bb.d ], [ false, %.split25 ], [ false, %bb.c ], [ false, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_.exit12 ]
  %.sroa.0.0.i = phi i64 [ 2, %.preheader ], [ 2, %.preheader31 ], [ %.sroa.01.1.i36, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_.exit22 ], [ %1, %bb.d ], [ %.sroa.01.1.i36, %.split26 ], [ %.sroa.01.0.i33, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_.exit12 ], [ %1, %bb.c ], [ %.sroa.01.0.i33, %.split25 ] ; 2 uses
  %i.cr = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.cs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB6_SB12_16sort_unstable_byNCNvMs2_B2o_NtB2o_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0EB2q_.exit
  br i1 %.sroa.3.0.i, label %.lr.ph.preheader.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE7reverseB1S_.exit

bb.f:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB6_SB12_16sort_unstable_byNCNvMs2_B2o_NtB2o_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0EB2q_.exit
  %i.ct = or i64 %1, 1
  %i.cu = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ct, i1 true)
  %i.cv = trunc nuw nsw i64 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, 1
  %i.cx = xor i32 %i.cw, 126
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB8_SB17_16sort_unstable_byNCNvMs2_B2t_NtB2t_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0EB2v_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, i32 noundef %i.cx, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE7reverseB1S_.exit
end_hunk_0
begin_hunk_1_@_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB6_SBT_16sort_unstable_byNCNvMs2_B2f_NtB2f_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0E0EB2h_:bb.a
  %i.cx = xor i32 %i.cw, 126
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB8_SB17_16sort_unstable_byNCNvMs2_B2t_NtB2t_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0E0EB2v_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, i32 noundef %i.cx, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE7reverseB1S_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE7reverseB1S_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EEEB2o_.exit.i.i, %bb.a, %bb.e, %bb.f
  ret void

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %i.cy = lshr i64 %1, 1
  %i.cz = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EEEB2o_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.de, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EEEB2o_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.da = xor i64 %.sroa.0.017.i.i, -1
  %i.db = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.dc = getelementptr [40 x i8], ptr %i.cz, i64 %i.da
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull %i.db, ptr noundef nonnull %i.dc, i64 noundef 5)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EEEB2o_.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EEEB2o_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.de = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.de, %i.cy
  br i1 %exitcond.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE7reverseB1S_.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB10_23NarrowingAliasPredicateENCINvMB6_SBT_16sort_unstable_byNCNvMs2_NtB10_6frozenINtB3d_9FrozenMapBU_B24_E12from_entries0E0EB10_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 768614336404564651) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBB_23NarrowingAliasPredicateE7reverseBB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val6 = load i32, ptr %i.b, align 4, !range !5, !noundef !3 ; 3 uses
  %.val7 = load i32, ptr %0, align 4, !range !5, !noundef !3
  %i.c = icmp ult i32 %.val6, %.val7              ; 2 uses
  %.not22 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader12

.preheader12:                                     ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB19_23NarrowingAliasPredicateENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3n_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB19_23NarrowingAliasPredicateENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3n_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit, label %.lr.ph18

.lr.ph:                                           ; preds = %.preheader12, %bb.c
  %.val5 = phi i32 [ %.val4, %bb.c ], [ %.val6, %.preheader12 ]
  %.sroa.01.0.i14 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader12 ] ; 3 uses
  %i.d = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.sroa.01.0.i14
  %.val4 = load i32, ptr %i.d, align 4, !range !5, !noundef !3 ; 2 uses
  %i.e = icmp ult i32 %.val4, %.val5
  br i1 %i.e, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB19_23NarrowingAliasPredicateENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3n_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i14, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB19_23NarrowingAliasPredicateENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3n_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit.thread, label %.lr.ph

.lr.ph18:                                         ; preds = %.preheader, %bb.d
  %.val3 = phi i32 [ %.val, %bb.d ], [ %.val6, %.preheader ]
  %.sroa.01.1.i17 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.sroa.01.1.i17
  %.val = load i32, ptr %i.g, align 4, !range !5, !noundef !3 ; 2 uses
  %i.h = icmp ult i32 %.val, %.val3
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB19_23NarrowingAliasPredicateENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3n_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit

bb.d:                                             ; preds = %.lr.ph18
  %i.i = add nuw nsw i64 %.sroa.01.1.i17, 1       ; 2 uses
  %exitcond25.not = icmp eq i64 %i.i, %1
  br i1 %exitcond25.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB19_23NarrowingAliasPredicateENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3n_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit.thread, label %.lr.ph18

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB19_23NarrowingAliasPredicateENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3n_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit: ; preds = %.lr.ph, %.lr.ph18, %.preheader12, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader12 ], [ 2, %.preheader ], [ %.sroa.01.1.i17, %.lr.ph18 ], [ %.sroa.01.0.i14, %.lr.ph ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB19_23NarrowingAliasPredicateENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3n_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit.thread, label %bb.e

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB19_23NarrowingAliasPredicateENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3n_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB19_23NarrowingAliasPredicateENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3n_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit
  br i1 %i.c, label %.lr.ph.preheader.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBB_23NarrowingAliasPredicateE7reverseBB_.exit

bb.e:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB19_23NarrowingAliasPredicateENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3n_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB1e_23NarrowingAliasPredicateENCINvMB8_SB17_16sort_unstable_byNCNvMs2_NtB1e_6frozenINtB3s_9FrozenMapB18_B2i_E12from_entries0E0EB1e_(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(12) null, i32 noundef %i.p, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBB_23NarrowingAliasPredicateE7reverseBB_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBB_23NarrowingAliasPredicateE7reverseBB_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB17_23NarrowingAliasPredicateEEB17_.exit.i.i, %bb.a, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB19_23NarrowingAliasPredicateENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3n_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB19_23NarrowingAliasPredicateENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3n_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit.thread
  %i.q = lshr i64 %1, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB17_23NarrowingAliasPredicateEEB17_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.y, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB17_23NarrowingAliasPredicateEEB17_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.s = xor i64 %.sroa.0.017.i.i, -1
  %i.t = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.sroa.0.017.i.i ; 2 uses
  %i.u = getelementptr [12 x i8], ptr %i.r, i64 %i.s ; 2 uses
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i64 noundef 1)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB17_23NarrowingAliasPredicateEEB17_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB17_23NarrowingAliasPredicateEEB17_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.w, align 4, !alias.scope !281, !noalias !282
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.x, align 4, !alias.scope !283, !noalias !284
  store i32 %.sroa.02.0.copyload.i.i.i.i.i.i.i, ptr %i.w, align 4, !alias.scope !281, !noalias !282
  store i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.x, align 4, !alias.scope !283, !noalias !284
  %i.y = add nuw nsw i64 %.sroa.0.017.i.i, 1      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.y, %i.q
  br i1 %exitcond.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBB_23NarrowingAliasPredicateE7reverseBB_.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBY_11ScopedUseIdENCINvMB6_SBT_16sort_unstable_byNCNvMs2_NtB10_6frozenINtB30_9FrozenMapBU_B24_E12from_entries0E0EB10_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBz_11ScopedUseIdE7reverseBB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load i32, ptr %i.b, align 4, !range !5, !noundef !3 ; 3 uses
  %.val7 = load i32, ptr %0, align 4, !range !5, !noundef !3
  %i.c = icmp ult i32 %.val6, %.val7              ; 2 uses
  %.not22 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader12

.preheader12:                                     ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB17_11ScopedUseIdENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3b_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB17_11ScopedUseIdENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3b_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit, label %.lr.ph18

.lr.ph:                                           ; preds = %.preheader12, %bb.c
  %.val5 = phi i32 [ %.val4, %bb.c ], [ %.val6, %.preheader12 ]
  %.sroa.01.0.i14 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader12 ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i14
  %.val4 = load i32, ptr %i.d, align 4, !range !5, !noundef !3 ; 2 uses
  %i.e = icmp ult i32 %.val4, %.val5
  br i1 %i.e, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB17_11ScopedUseIdENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3b_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i14, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB17_11ScopedUseIdENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3b_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit.thread, label %.lr.ph

.lr.ph18:                                         ; preds = %.preheader, %bb.d
  %.val3 = phi i32 [ %.val, %bb.d ], [ %.val6, %.preheader ]
  %.sroa.01.1.i17 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i17
  %.val = load i32, ptr %i.g, align 4, !range !5, !noundef !3 ; 2 uses
  %i.h = icmp ult i32 %.val, %.val3
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB17_11ScopedUseIdENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3b_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit

bb.d:                                             ; preds = %.lr.ph18
  %i.i = add nuw nsw i64 %.sroa.01.1.i17, 1       ; 2 uses
  %exitcond25.not = icmp eq i64 %i.i, %1
  br i1 %exitcond25.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB17_11ScopedUseIdENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3b_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit.thread, label %.lr.ph18

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB17_11ScopedUseIdENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3b_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit: ; preds = %.lr.ph, %.lr.ph18, %.preheader12, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader12 ], [ 2, %.preheader ], [ %.sroa.01.1.i17, %.lr.ph18 ], [ %.sroa.01.0.i14, %.lr.ph ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB17_11ScopedUseIdENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3b_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit.thread, label %bb.e

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB17_11ScopedUseIdENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3b_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB17_11ScopedUseIdENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3b_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit
  br i1 %i.c, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBz_11ScopedUseIdE12split_at_mutBB_.exit11.preheader.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBz_11ScopedUseIdE7reverseBB_.exit

bb.e:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB17_11ScopedUseIdENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3b_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB1c_11ScopedUseIdENCINvMB8_SB17_16sort_unstable_byNCNvMs2_NtB1e_6frozenINtB3g_9FrozenMapB18_B2i_E12from_entries0E0EB1e_(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.p, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBz_11ScopedUseIdE7reverseBB_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBz_11ScopedUseIdE7reverseBB_.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBz_11ScopedUseIdE12split_at_mutBB_.exit11.i.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBz_11ScopedUseIdE12split_at_mutBB_.exit11.i.i.preheader.a, %bb.a, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB17_11ScopedUseIdENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3b_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit.thread, %bb.e
  ret void

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBz_11ScopedUseIdE12split_at_mutBB_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB17_11ScopedUseIdENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3b_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit.thread
  %i.q = lshr i64 %1, 1                           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 4
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBz_11ScopedUseIdE12split_at_mutBB_.exit11.i.i.prol.loopexit, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBz_11ScopedUseIdE12split_at_mutBB_.exit11.preheader.i.i
  %n.vec = and i64 %i.q, 576460752303423486       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = xor i64 %index, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %wide.vec = load <4 x i32>, ptr %i.t, align 4, !alias.scope !294, !noalias !293
  %i.v = getelementptr i8, ptr %i.u, i64 -8
  %wide.load = load <2 x i64>, ptr %i.v, align 4, !alias.scope !295, !noalias !292
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.t, align 4, !alias.scope !294, !noalias !293
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -8
  %interleaved.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec, ptr %i.w, align 4, !alias.scope !295, !noalias !292
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBz_11ScopedUseIdE12split_at_mutBB_.exit11.i.i.preheader.a, label %vector.body, !llvm.loop !290

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBz_11ScopedUseIdE12split_at_mutBB_.exit11.i.i.preheader.a: ; preds = %vector.body
  %lcmp.mod.not = icmp eq i64 %i.q, %n.vec
  br i1 %lcmp.mod.not, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBz_11ScopedUseIdE7reverseBB_.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBz_11ScopedUseIdE12split_at_mutBB_.exit11.i.i.prol.loopexit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBz_11ScopedUseIdE12split_at_mutBB_.exit11.i.i.prol.loopexit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBz_11ScopedUseIdE12split_at_mutBB_.exit11.preheader.i.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBz_11ScopedUseIdE12split_at_mutBB_.exit11.i.i.preheader.a
  %.sroa.0.016.i.i.unr = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBz_11ScopedUseIdE12split_at_mutBB_.exit11.preheader.i.i ], [ %n.vec, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBz_11ScopedUseIdE12split_at_mutBB_.exit11.i.i.preheader.a ]
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBz_11ScopedUseIdE12split_at_mutBB_.exit11.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBz_11ScopedUseIdE12split_at_mutBB_.exit11.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBz_11ScopedUseIdE12split_at_mutBB_.exit11.i.i.prol.loopexit, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBz_11ScopedUseIdE12split_at_mutBB_.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ad, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBz_11ScopedUseIdE12split_at_mutBB_.exit11.i.i ], [ %.sroa.0.016.i.i.unr, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBz_11ScopedUseIdE12split_at_mutBB_.exit11.i.i.prol.loopexit ] ; 3 uses
  %i.y = xor i64 %.sroa.0.016.i.i, -1
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.aa = getelementptr [8 x i8], ptr %i.r, i64 %i.y ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 4, !alias.scope !295, !noalias !292
  %i.ac = load <2 x i32>, ptr %i.z, align 4, !alias.scope !294, !noalias !293
  store i64 %i.ab, ptr %i.z, align 4, !alias.scope !294, !noalias !293
  store <2 x i32> %i.ac, ptr %i.aa, align 4, !alias.scope !295, !noalias !292
  %i.ad = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.ad, %i.q
  br i1 %exitcond.not.i.i.1, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBz_11ScopedUseIdE7reverseBB_.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBz_11ScopedUseIdE12split_at_mutBB_.exit11.i.i, !llvm.loop !291
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB10_10definition10DefinitionENCINvMB6_SBT_16sort_unstable_byNCNvMs2_NtB10_6frozenINtB3e_9FrozenMapBU_B24_E12from_entries0E0EB10_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 768614336404564651) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_10definition10DefinitionE7reverseBB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val6 = load i32, ptr %i.b, align 4, !range !5, !noundef !3 ; 3 uses
  %.val7 = load i32, ptr %0, align 4, !range !5, !noundef !3
  %i.c = icmp ult i32 %.val6, %.val7              ; 2 uses
  %.not22 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader12

.preheader12:                                     ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_10definition10DefinitionENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3o_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_10definition10DefinitionENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3o_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit, label %.lr.ph18

.lr.ph:                                           ; preds = %.preheader12, %bb.c
  %.val5 = phi i32 [ %.val4, %bb.c ], [ %.val6, %.preheader12 ]
  %.sroa.01.0.i14 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader12 ] ; 3 uses
  %i.d = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.sroa.01.0.i14
  %.val4 = load i32, ptr %i.d, align 4, !range !5, !noundef !3 ; 2 uses
  %i.e = icmp ult i32 %.val4, %.val5
  br i1 %i.e, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_10definition10DefinitionENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3o_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i14, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_10definition10DefinitionENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3o_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit.thread, label %.lr.ph

.lr.ph18:                                         ; preds = %.preheader, %bb.d
  %.val3 = phi i32 [ %.val, %bb.d ], [ %.val6, %.preheader ]
  %.sroa.01.1.i17 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.sroa.01.1.i17
  %.val = load i32, ptr %i.g, align 4, !range !5, !noundef !3 ; 2 uses
  %i.h = icmp ult i32 %.val, %.val3
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_10definition10DefinitionENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3o_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit

bb.d:                                             ; preds = %.lr.ph18
  %i.i = add nuw nsw i64 %.sroa.01.1.i17, 1       ; 2 uses
  %exitcond25.not = icmp eq i64 %i.i, %1
  br i1 %exitcond25.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_10definition10DefinitionENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3o_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit.thread, label %.lr.ph18

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_10definition10DefinitionENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3o_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit: ; preds = %.lr.ph, %.lr.ph18, %.preheader12, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader12 ], [ 2, %.preheader ], [ %.sroa.01.1.i17, %.lr.ph18 ], [ %.sroa.01.0.i14, %.lr.ph ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_10definition10DefinitionENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3o_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit.thread, label %bb.e

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_10definition10DefinitionENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3o_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_10definition10DefinitionENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3o_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit
  br i1 %i.c, label %.lr.ph.preheader.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_10definition10DefinitionE7reverseBB_.exit

bb.e:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_10definition10DefinitionENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3o_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB1e_10definition10DefinitionENCINvMB8_SB17_16sort_unstable_byNCNvMs2_NtB1e_6frozenINtB3t_9FrozenMapB18_B2i_E12from_entries0E0EB1e_(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(12) null, i32 noundef %i.p, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_10definition10DefinitionE7reverseBB_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_10definition10DefinitionE7reverseBB_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB17_10definition10DefinitionEEB17_.exit.i.i, %bb.a, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_10definition10DefinitionENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3o_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_10definition10DefinitionENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3o_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit.thread
  %i.q = lshr i64 %1, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB17_10definition10DefinitionEEB17_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.y, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB17_10definition10DefinitionEEB17_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.s = xor i64 %.sroa.0.017.i.i, -1
  %i.t = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.sroa.0.017.i.i ; 2 uses
  %i.u = getelementptr [12 x i8], ptr %i.r, i64 %i.s ; 2 uses
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i64 noundef 1)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB17_10definition10DefinitionEEB17_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB17_10definition10DefinitionEEB17_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.w, align 4, !alias.scope !308, !noalias !309
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.x, align 4, !alias.scope !310, !noalias !311
  store i32 %.sroa.02.0.copyload.i.i.i.i.i.i.i, ptr %i.w, align 4, !alias.scope !308, !noalias !309
  store i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.x, align 4, !alias.scope !310, !noalias !311
  %i.y = add nuw nsw i64 %.sroa.0.017.i.i, 1      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.y, %i.q
  br i1 %exitcond.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_10definition10DefinitionE7reverseBB_.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB10_6unpack6UnpackENCINvMB6_SBT_16sort_unstable_byNCNvMs2_NtB10_6frozenINtB34_9FrozenMapBU_B24_E12from_entries0E0EB10_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 768614336404564651) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6unpack6UnpackE7reverseBB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val6 = load i32, ptr %i.b, align 4, !range !5, !noundef !3 ; 3 uses
  %.val7 = load i32, ptr %0, align 4, !range !5, !noundef !3
  %i.c = icmp ult i32 %.val6, %.val7              ; 2 uses
  %.not22 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader12

.preheader12:                                     ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_6unpack6UnpackENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3e_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_6unpack6UnpackENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3e_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit, label %.lr.ph18

.lr.ph:                                           ; preds = %.preheader12, %bb.c
  %.val5 = phi i32 [ %.val4, %bb.c ], [ %.val6, %.preheader12 ]
  %.sroa.01.0.i14 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader12 ] ; 3 uses
  %i.d = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.sroa.01.0.i14
  %.val4 = load i32, ptr %i.d, align 4, !range !5, !noundef !3 ; 2 uses
  %i.e = icmp ult i32 %.val4, %.val5
  br i1 %i.e, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_6unpack6UnpackENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3e_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i14, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_6unpack6UnpackENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3e_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit.thread, label %.lr.ph

.lr.ph18:                                         ; preds = %.preheader, %bb.d
  %.val3 = phi i32 [ %.val, %bb.d ], [ %.val6, %.preheader ]
  %.sroa.01.1.i17 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.sroa.01.1.i17
  %.val = load i32, ptr %i.g, align 4, !range !5, !noundef !3 ; 2 uses
  %i.h = icmp ult i32 %.val, %.val3
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_6unpack6UnpackENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3e_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit

bb.d:                                             ; preds = %.lr.ph18
  %i.i = add nuw nsw i64 %.sroa.01.1.i17, 1       ; 2 uses
  %exitcond25.not = icmp eq i64 %i.i, %1
  br i1 %exitcond25.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_6unpack6UnpackENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3e_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit.thread, label %.lr.ph18

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_6unpack6UnpackENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3e_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit: ; preds = %.lr.ph, %.lr.ph18, %.preheader12, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader12 ], [ 2, %.preheader ], [ %.sroa.01.1.i17, %.lr.ph18 ], [ %.sroa.01.0.i14, %.lr.ph ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_6unpack6UnpackENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3e_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit.thread, label %bb.e

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_6unpack6UnpackENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3e_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_6unpack6UnpackENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3e_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit
  br i1 %i.c, label %.lr.ph.preheader.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6unpack6UnpackE7reverseBB_.exit

bb.e:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_6unpack6UnpackENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3e_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB1e_6unpack6UnpackENCINvMB8_SB17_16sort_unstable_byNCNvMs2_NtB1e_6frozenINtB3j_9FrozenMapB18_B2i_E12from_entries0E0EB1e_(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(12) null, i32 noundef %i.p, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6unpack6UnpackE7reverseBB_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6unpack6UnpackE7reverseBB_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB17_6unpack6UnpackEEB17_.exit.i.i, %bb.a, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_6unpack6UnpackENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3e_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB19_6unpack6UnpackENCINvMB6_SB12_16sort_unstable_byNCNvMs2_NtB19_6frozenINtB3e_9FrozenMapB13_B2d_E12from_entries0E0EB19_.exit.thread
  %i.q = lshr i64 %1, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB17_6unpack6UnpackEEB17_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.y, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB17_6unpack6UnpackEEB17_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.s = xor i64 %.sroa.0.017.i.i, -1
  %i.t = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.sroa.0.017.i.i ; 2 uses
  %i.u = getelementptr [12 x i8], ptr %i.r, i64 %i.s ; 2 uses
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i64 noundef 1)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB17_6unpack6UnpackEEB17_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtB17_6unpack6UnpackEEB17_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
end_hunk_1
begin_hunk_2_@bcmp

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #13 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #16 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { cold noreturn nounwind }
attributes #21 = { noreturn }
attributes #22 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = !{i8 0, i8 2}
!5 = !{i32 1, i32 0}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = !{!"llvm.loop.unroll.runtime.disable"}
!8 = !{i8 0, i8 -45}
!9 = !{i32 0, i32 2}
!10 = !{i64 0, i64 2}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = !{i64 8}
!13 = distinct !{!13, i1 false, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvMs4_NtBU_7helpersNtB2x_10Truthiness9from_exprNCNvNtCs2O29vuvTAEJ_14ty_python_core7builder27literal_iterable_truthiness0E0EB3i_"}
!14 = distinct !{!14, !13, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvMs4_NtBU_7helpersNtB2x_10Truthiness9from_exprNCNvNtCs2O29vuvTAEJ_14ty_python_core7builder27literal_iterable_truthiness0E0EB3i_: argument 0"}
!15 = distinct !{!15, i1 false, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3allNvMs14_BS_BQ_15is_starred_exprECs2O29vuvTAEJ_14ty_python_core"}
!16 = distinct !{!16, !15, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3allNvMs14_BS_BQ_15is_starred_exprECs2O29vuvTAEJ_14ty_python_core: argument 0"}
!17 = !{i32 0, i32 33}
!18 = !{i64 0, i64 3}
!19 = !{i32 -1, i32 33}
!20 = !{!14}
!21 = !{!16}
!22 = distinct !{!22, i1 false, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdEBS_"}
!23 = distinct !{!23, !22, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdEBS_: argument 0"}
!24 = distinct !{!24, !22, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdEBS_: argument 1"}
!25 = distinct !{!25, i1 false, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeId7reverseBy_"}
!26 = distinct !{!26, !25, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeId7reverseBy_: argument 0"}
!27 = distinct !{!27, !6, !7}
!28 = distinct !{!28, !7, !6}
!29 = !{!23}
!30 = !{!24}
!31 = !{!23, !26}
!32 = !{!24, !26}
!33 = distinct !{!33, i1 false, !"_RNvYNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutCs2O29vuvTAEJ_14ty_python_core"}
!34 = distinct !{!34, !33, !"_RNvYNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutCs2O29vuvTAEJ_14ty_python_core: argument 0"}
!35 = distinct !{!35, !33, !"_RNvYNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutCs2O29vuvTAEJ_14ty_python_core: argument 1"}
!36 = distinct !{!36, i1 false, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCs2O29vuvTAEJ_14ty_python_core"}
!37 = distinct !{!37, !36, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCs2O29vuvTAEJ_14ty_python_core: argument 0"}
!38 = distinct !{!38, !36, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCs2O29vuvTAEJ_14ty_python_core: argument 1"}
!39 = distinct !{!39, i1 false, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp"}
!40 = distinct !{!40, !39, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!41 = distinct !{!41, !39, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!42 = distinct !{!42, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp"}
!43 = distinct !{!43, !42, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 0"}
!44 = distinct !{!44, !42, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 1"}
!45 = distinct !{!45, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!46 = distinct !{!46, !45, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!47 = distinct !{!47, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!48 = distinct !{!48, !47, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!49 = distinct !{!49, i1 false, !"_RNvYNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutCs2O29vuvTAEJ_14ty_python_core"}
!50 = distinct !{!50, !49, !"_RNvYNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutCs2O29vuvTAEJ_14ty_python_core: argument 0"}
!51 = distinct !{!51, i1 false, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCs2O29vuvTAEJ_14ty_python_core"}
!52 = distinct !{!52, !51, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCs2O29vuvTAEJ_14ty_python_core: argument 0"}
!53 = distinct !{!53, i1 false, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp"}
!54 = distinct !{!54, !53, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!55 = distinct !{!55, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp"}
!56 = distinct !{!56, !55, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 0"}
!57 = distinct !{!57, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!58 = distinct !{!58, !57, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!59 = distinct !{!59, !49, !"_RNvYNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutCs2O29vuvTAEJ_14ty_python_core: argument 1"}
!60 = distinct !{!60, !51, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCs2O29vuvTAEJ_14ty_python_core: argument 1"}
!61 = distinct !{!61, !53, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!62 = distinct !{!62, !55, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 1"}
!63 = distinct !{!63, i1 false, !"_RNvYNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutCs2O29vuvTAEJ_14ty_python_core"}
!64 = distinct !{!64, !63, !"_RNvYNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutCs2O29vuvTAEJ_14ty_python_core: argument 0"}
!65 = distinct !{!65, i1 false, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCs2O29vuvTAEJ_14ty_python_core"}
!66 = distinct !{!66, !65, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCs2O29vuvTAEJ_14ty_python_core: argument 0"}
!67 = distinct !{!67, i1 false, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp"}
!68 = distinct !{!68, !67, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!69 = distinct !{!69, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp"}
!70 = distinct !{!70, !69, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 0"}
!71 = distinct !{!71, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!72 = distinct !{!72, !71, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!73 = distinct !{!73, !63, !"_RNvYNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutCs2O29vuvTAEJ_14ty_python_core: argument 1"}
!74 = distinct !{!74, !65, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCs2O29vuvTAEJ_14ty_python_core: argument 1"}
!75 = distinct !{!75, !67, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!76 = distinct !{!76, !69, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 1"}
!77 = !{!34}
!78 = !{!35}
!79 = !{!37}
!80 = !{!38}
!81 = !{!40}
!82 = !{!41}
!83 = !{!43}
!84 = !{!44}
!85 = !{!46, !43, !40, !37, !34}
!86 = !{!44, !41, !38, !35}
!87 = !{!48, !44, !41, !38, !35}
!88 = !{!43, !40, !37, !34}
!89 = !{!58, !56, !54, !52, !50}
!90 = !{!62, !61, !60, !59}
!91 = !{!72, !70, !68, !66, !64}
!92 = !{!76, !75, !74, !73}
!93 = distinct !{!93, i1 false, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtBR_10DefinitionEEBT_"}
!94 = distinct !{!94, !93, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtBR_10DefinitionEEBT_: argument 0"}
!95 = distinct !{!95, !93, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtBR_10DefinitionEEBT_: argument 1"}
!96 = distinct !{!96, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj4_ECs2O29vuvTAEJ_14ty_python_core"}
!97 = distinct !{!97, !96, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj4_ECs2O29vuvTAEJ_14ty_python_core: argument 0"}
!98 = distinct !{!98, !96, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj4_ECs2O29vuvTAEJ_14ty_python_core: argument 1"}
!99 = distinct !{!99, i1 false, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtBx_10DefinitionE7reverseBz_"}
!100 = distinct !{!100, !99, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtBx_10DefinitionE7reverseBz_: argument 0"}
!101 = !{!94}
!102 = !{!95}
!103 = !{!97}
!104 = !{!98}
!105 = !{!97, !94, !100}
!106 = !{!98, !95}
!107 = !{!98, !95, !100}
!108 = !{!97, !94}
!109 = distinct !{!109, i1 false, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_"}
!110 = distinct !{!110, !109, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_: argument 0"}
!111 = distinct !{!111, !109, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_: argument 1"}
!112 = distinct !{!112, i1 false, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core6frozenINtB7_9FrozenMapNtNtB9_7use_def20EnclosingSnapshotKeyNtB12_25ScopedEnclosingSnapshotIdE12from_entries0B9_"}
!113 = distinct !{!113, !112, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core6frozenINtB7_9FrozenMapNtNtB9_7use_def20EnclosingSnapshotKeyNtB12_25ScopedEnclosingSnapshotIdE12from_entries0B9_: argument 0"}
!114 = distinct !{!114, !112, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core6frozenINtB7_9FrozenMapNtNtB9_7use_def20EnclosingSnapshotKeyNtB12_25ScopedEnclosingSnapshotIdE12from_entries0B9_: argument 1"}
!115 = distinct !{!115, i1 false, !"_RNvXs34_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_20EnclosingSnapshotKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp"}
!116 = distinct !{!116, !115, !"_RNvXs34_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_20EnclosingSnapshotKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp: argument 0"}
!117 = distinct !{!117, !115, !"_RNvXs34_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_20EnclosingSnapshotKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp: argument 1"}
!118 = distinct !{!118, i1 false, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_"}
!119 = distinct !{!119, !118, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_: argument 0"}
!120 = distinct !{!120, !118, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_: argument 1"}
!121 = distinct !{!121, i1 false, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core6frozenINtB7_9FrozenMapNtNtB9_7use_def20EnclosingSnapshotKeyNtB12_25ScopedEnclosingSnapshotIdE12from_entries0B9_"}
!122 = distinct !{!122, !121, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core6frozenINtB7_9FrozenMapNtNtB9_7use_def20EnclosingSnapshotKeyNtB12_25ScopedEnclosingSnapshotIdE12from_entries0B9_: argument 0"}
!123 = distinct !{!123, !121, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core6frozenINtB7_9FrozenMapNtNtB9_7use_def20EnclosingSnapshotKeyNtB12_25ScopedEnclosingSnapshotIdE12from_entries0B9_: argument 1"}
!124 = distinct !{!124, i1 false, !"_RNvXs34_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_20EnclosingSnapshotKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp"}
!125 = distinct !{!125, !124, !"_RNvXs34_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_20EnclosingSnapshotKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp: argument 0"}
!126 = distinct !{!126, !124, !"_RNvXs34_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_20EnclosingSnapshotKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp: argument 1"}
!127 = distinct !{!127, i1 false, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_"}
!128 = distinct !{!128, !127, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_: argument 0"}
!129 = distinct !{!129, !127, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_: argument 1"}
!130 = distinct !{!130, i1 false, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core6frozenINtB7_9FrozenMapNtNtB9_7use_def20EnclosingSnapshotKeyNtB12_25ScopedEnclosingSnapshotIdE12from_entries0B9_"}
!131 = distinct !{!131, !130, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core6frozenINtB7_9FrozenMapNtNtB9_7use_def20EnclosingSnapshotKeyNtB12_25ScopedEnclosingSnapshotIdE12from_entries0B9_: argument 0"}
!132 = distinct !{!132, !130, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core6frozenINtB7_9FrozenMapNtNtB9_7use_def20EnclosingSnapshotKeyNtB12_25ScopedEnclosingSnapshotIdE12from_entries0B9_: argument 1"}
!133 = distinct !{!133, i1 false, !"_RNvXs34_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_20EnclosingSnapshotKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp"}
!134 = distinct !{!134, !133, !"_RNvXs34_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_20EnclosingSnapshotKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp: argument 0"}
!135 = distinct !{!135, !133, !"_RNvXs34_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_20EnclosingSnapshotKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp: argument 1"}
!136 = !{!110}
!137 = !{!111}
!138 = !{!113}
!139 = !{!114}
!140 = !{!116}
!141 = !{!117}
!142 = !{!116, !113, !110}
!143 = !{!117, !114, !111}
!144 = !{!119}
!145 = !{!120}
!146 = !{!122}
!147 = !{!123}
!148 = !{!125}
!149 = !{!126}
!150 = !{!125, !122, !119}
!151 = !{!126, !123, !120}
!152 = !{!128}
!153 = !{!129}
!154 = !{!131}
!155 = !{!132}
!156 = !{!134}
!157 = !{!135}
!158 = !{!134, !131, !128}
!159 = !{!135, !132, !129}
!160 = distinct !{!160, i1 false, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdEEB1O_"}
!161 = distinct !{!161, !160, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdEEB1O_: argument 0"}
!162 = distinct !{!162, !160, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdEEB1O_: argument 1"}
!163 = distinct !{!163, i1 false, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdE7reverseB1u_"}
!164 = distinct !{!164, !163, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdE7reverseB1u_: argument 0"}
!165 = distinct !{!165, !6, !7}
!166 = distinct !{!166, !7, !6}
!167 = !{!161}
!168 = !{!162}
!169 = !{!161, !164}
!170 = !{!162, !164}
!171 = distinct !{!171, i1 false, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_"}
!172 = distinct !{!172, !171, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_: argument 0"}
!173 = distinct !{!173, !171, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_: argument 1"}
!174 = distinct !{!174, i1 false, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB7_20SemanticIndexBuilder37synthesize_nested_binding_definitions0B9_"}
!175 = distinct !{!175, !174, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB7_20SemanticIndexBuilder37synthesize_nested_binding_definitions0B9_: argument 0"}
!176 = distinct !{!176, !174, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB7_20SemanticIndexBuilder37synthesize_nested_binding_definitions0B9_: argument 1"}
!177 = distinct !{!177, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp"}
!178 = distinct !{!178, !177, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 0"}
!179 = distinct !{!179, !177, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 1"}
!180 = distinct !{!180, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!181 = distinct !{!181, !180, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!182 = distinct !{!182, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!183 = distinct !{!183, !182, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!184 = distinct !{!184, i1 false, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_"}
!185 = distinct !{!185, !184, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_: argument 0"}
!186 = distinct !{!186, i1 false, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB7_20SemanticIndexBuilder37synthesize_nested_binding_definitions0B9_"}
!187 = distinct !{!187, !186, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB7_20SemanticIndexBuilder37synthesize_nested_binding_definitions0B9_: argument 0"}
!188 = distinct !{!188, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp"}
!189 = distinct !{!189, !188, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 0"}
!190 = distinct !{!190, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!191 = distinct !{!191, !190, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!192 = distinct !{!192, !184, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_: argument 1"}
!193 = distinct !{!193, !186, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB7_20SemanticIndexBuilder37synthesize_nested_binding_definitions0B9_: argument 1"}
!194 = distinct !{!194, !188, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 1"}
!195 = distinct !{!195, i1 false, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_"}
!196 = distinct !{!196, !195, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_: argument 0"}
!197 = distinct !{!197, i1 false, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB7_20SemanticIndexBuilder37synthesize_nested_binding_definitions0B9_"}
!198 = distinct !{!198, !197, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB7_20SemanticIndexBuilder37synthesize_nested_binding_definitions0B9_: argument 0"}
!199 = distinct !{!199, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp"}
!200 = distinct !{!200, !199, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 0"}
!201 = distinct !{!201, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!202 = distinct !{!202, !201, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!203 = distinct !{!203, !195, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_: argument 1"}
!204 = distinct !{!204, !197, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB7_20SemanticIndexBuilder37synthesize_nested_binding_definitions0B9_: argument 1"}
!205 = distinct !{!205, !199, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 1"}
!206 = !{!172}
!207 = !{!173}
!208 = !{!175}
!209 = !{!176}
!210 = !{!178}
!211 = !{!179}
!212 = !{!181, !178, !175, !172}
!213 = !{!179, !176, !173}
!214 = !{!183, !179, !176, !173}
!215 = !{!178, !175, !172}
!216 = !{!191, !189, !187, !185}
!217 = !{!194, !193, !192}
!218 = !{!202, !200, !198, !196}
!219 = !{!205, !204, !203}
!220 = distinct !{!220, i1 false, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0E0B1V_"}
!221 = distinct !{!221, !220, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0E0B1V_: argument 0"}
!222 = distinct !{!222, !220, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0E0B1V_: argument 1"}
!223 = distinct !{!223, i1 false, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB7_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0B9_"}
!224 = distinct !{!224, !223, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB7_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0B9_: argument 0"}
!225 = distinct !{!225, !223, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB7_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0B9_: argument 1"}
!226 = distinct !{!226, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp"}
!227 = distinct !{!227, !226, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 0"}
!228 = distinct !{!228, !226, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 1"}
!229 = distinct !{!229, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!230 = distinct !{!230, !229, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!231 = distinct !{!231, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!232 = distinct !{!232, !231, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!233 = distinct !{!233, i1 false, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0E0B1V_"}
!234 = distinct !{!234, !233, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0E0B1V_: argument 0"}
!235 = distinct !{!235, i1 false, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB7_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0B9_"}
!236 = distinct !{!236, !235, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB7_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0B9_: argument 0"}
!237 = distinct !{!237, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp"}
!238 = distinct !{!238, !237, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 0"}
!239 = distinct !{!239, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!240 = distinct !{!240, !239, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!241 = distinct !{!241, !233, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0E0B1V_: argument 1"}
!242 = distinct !{!242, !235, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB7_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0B9_: argument 1"}
!243 = distinct !{!243, !237, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 1"}
!244 = distinct !{!244, i1 false, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0E0B1V_"}
!245 = distinct !{!245, !244, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0E0B1V_: argument 0"}
!246 = distinct !{!246, i1 false, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB7_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0B9_"}
!247 = distinct !{!247, !246, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB7_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0B9_: argument 0"}
!248 = distinct !{!248, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp"}
!249 = distinct !{!249, !248, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 0"}
!250 = distinct !{!250, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!251 = distinct !{!251, !250, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!252 = distinct !{!252, !244, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0E0B1V_: argument 1"}
!253 = distinct !{!253, !246, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB7_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0B9_: argument 1"}
!254 = distinct !{!254, !248, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 1"}
!255 = !{!221}
!256 = !{!222}
!257 = !{!224}
!258 = !{!225}
!259 = !{!227}
!260 = !{!228}
!261 = !{!230, !227, !224, !221}
!262 = !{!228, !225, !222}
!263 = !{!232, !228, !225, !222}
!264 = !{!227, !224, !221}
!265 = !{!240, !238, !236, !234}
!266 = !{!243, !242, !241}
!267 = !{!251, !249, !247, !245}
!268 = !{!254, !253, !252}
!269 = distinct !{!269, i1 false, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBV_23NarrowingAliasPredicateEEBV_"}
!270 = distinct !{!270, !269, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBV_23NarrowingAliasPredicateEEBV_: argument 0"}
!271 = distinct !{!271, !269, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBV_23NarrowingAliasPredicateEEBV_: argument 1"}
!272 = distinct !{!272, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj4_ECs2O29vuvTAEJ_14ty_python_core"}
!273 = distinct !{!273, !272, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj4_ECs2O29vuvTAEJ_14ty_python_core: argument 0"}
!274 = distinct !{!274, !272, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj4_ECs2O29vuvTAEJ_14ty_python_core: argument 1"}
!275 = distinct !{!275, i1 false, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBB_23NarrowingAliasPredicateE7reverseBB_"}
!276 = distinct !{!276, !275, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBB_23NarrowingAliasPredicateE7reverseBB_: argument 0"}
!277 = !{!270}
!278 = !{!271}
!279 = !{!273}
!280 = !{!274}
!281 = !{!273, !270, !276}
!282 = !{!274, !271}
!283 = !{!274, !271, !276}
!284 = !{!273, !270}
!285 = distinct !{!285, i1 false, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBT_11ScopedUseIdEEBV_"}
!286 = distinct !{!286, !285, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBT_11ScopedUseIdEEBV_: argument 0"}
!287 = distinct !{!287, !285, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBT_11ScopedUseIdEEBV_: argument 1"}
!288 = distinct !{!288, i1 false, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBz_11ScopedUseIdE7reverseBB_"}
!289 = distinct !{!289, !288, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtBz_11ScopedUseIdE7reverseBB_: argument 0"}
!290 = distinct !{!290, !6, !7}
!291 = distinct !{!291, !7, !6}
!292 = !{!286}
!293 = !{!287}
!294 = !{!286, !289}
!295 = !{!287, !289}
!296 = distinct !{!296, i1 false, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBV_10definition10DefinitionEEBV_"}
!297 = distinct !{!297, !296, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBV_10definition10DefinitionEEBV_: argument 0"}
!298 = distinct !{!298, !296, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBV_10definition10DefinitionEEBV_: argument 1"}
!299 = distinct !{!299, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj4_ECs2O29vuvTAEJ_14ty_python_core"}
!300 = distinct !{!300, !299, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj4_ECs2O29vuvTAEJ_14ty_python_core: argument 0"}
!301 = distinct !{!301, !299, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj4_ECs2O29vuvTAEJ_14ty_python_core: argument 1"}
!302 = distinct !{!302, i1 false, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_10definition10DefinitionE7reverseBB_"}
!303 = distinct !{!303, !302, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_10definition10DefinitionE7reverseBB_: argument 0"}
!304 = !{!297}
!305 = !{!298}
!306 = !{!300}
!307 = !{!301}
!308 = !{!300, !297, !303}
!309 = !{!301, !298}
!310 = !{!301, !298, !303}
!311 = !{!300, !297}
!312 = distinct !{!312, i1 false, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBV_6unpack6UnpackEEBV_"}
!313 = distinct !{!313, !312, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBV_6unpack6UnpackEEBV_: argument 0"}
!314 = distinct !{!314, !312, !"_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBV_6unpack6UnpackEEBV_: argument 1"}
!315 = distinct !{!315, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj4_ECs2O29vuvTAEJ_14ty_python_core"}
!316 = distinct !{!316, !315, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj4_ECs2O29vuvTAEJ_14ty_python_core: argument 0"}
!317 = distinct !{!317, !315, !"_RINvNtCs4NRVxsYgnAr_4core3ptr10swap_chunkKj4_ECs2O29vuvTAEJ_14ty_python_core: argument 1"}
!318 = distinct !{!318, i1 false, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6unpack6UnpackE7reverseBB_"}
!319 = distinct !{!319, !318, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtBB_6unpack6UnpackE7reverseBB_: argument 0"}
!320 = !{!313}
!321 = !{!314}
!322 = !{!316}
!323 = !{!317}
!324 = !{!316, !313, !319}
!325 = !{!317, !314}
!326 = !{!317, !314, !319}
!327 = !{!316, !313}
!328 = distinct !{!328, i1 false, !"_RNvYNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutCs2O29vuvTAEJ_14ty_python_core"}
!329 = distinct !{!329, !328, !"_RNvYNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutCs2O29vuvTAEJ_14ty_python_core: argument 0"}
!330 = distinct !{!330, !328, !"_RNvYNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutCs2O29vuvTAEJ_14ty_python_core: argument 1"}
!331 = distinct !{!331, i1 false, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCs2O29vuvTAEJ_14ty_python_core"}
!332 = distinct !{!332, !331, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCs2O29vuvTAEJ_14ty_python_core: argument 0"}
!333 = distinct !{!333, !331, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCs2O29vuvTAEJ_14ty_python_core: argument 1"}
!334 = distinct !{!334, i1 false, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp"}
!335 = distinct !{!335, !334, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!336 = distinct !{!336, !334, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!337 = distinct !{!337, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp"}
!338 = distinct !{!338, !337, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 0"}
!339 = distinct !{!339, !337, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 1"}
!340 = distinct !{!340, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!341 = distinct !{!341, !340, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!342 = distinct !{!342, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!343 = distinct !{!343, !342, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!344 = distinct !{!344, i1 false, !"_RNvYNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutCs2O29vuvTAEJ_14ty_python_core"}
!345 = distinct !{!345, !344, !"_RNvYNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutCs2O29vuvTAEJ_14ty_python_core: argument 1"}
!346 = distinct !{!346, i1 false, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCs2O29vuvTAEJ_14ty_python_core"}
!347 = distinct !{!347, !346, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCs2O29vuvTAEJ_14ty_python_core: argument 1"}
!348 = distinct !{!348, i1 false, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp"}
!349 = distinct !{!349, !348, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!350 = distinct !{!350, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp"}
!351 = distinct !{!351, !350, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 1"}
!352 = distinct !{!352, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!353 = distinct !{!353, !352, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!354 = distinct !{!354, !344, !"_RNvYNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutCs2O29vuvTAEJ_14ty_python_core: argument 0"}
!355 = distinct !{!355, !346, !"_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltCs2O29vuvTAEJ_14ty_python_core: argument 0"}
!356 = distinct !{!356, !348, !"_RNvXsN_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!357 = distinct !{!357, !350, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 0"}
!358 = !{!329}
!359 = !{!330}
!360 = !{!332}
!361 = !{!333}
!362 = !{!335}
!363 = !{!336}
!364 = !{!338}
!365 = !{!339}
!366 = !{!341, !338, !335, !332, !329}
!367 = !{!339, !336, !333, !330}
!368 = !{!343, !339, !336, !333, !330}
!369 = !{!338, !335, !332, !329}
!370 = !{!353, !351, !349, !347, !345}
!371 = !{!357, !356, !355, !354}
!372 = distinct !{!372, i1 false, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_"}
!373 = distinct !{!373, !372, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_: argument 0"}
!374 = distinct !{!374, !372, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_: argument 1"}
!375 = distinct !{!375, i1 false, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core6frozenINtB7_9FrozenMapNtNtB9_7use_def20EnclosingSnapshotKeyNtB12_25ScopedEnclosingSnapshotIdE12from_entries0B9_"}
!376 = distinct !{!376, !375, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core6frozenINtB7_9FrozenMapNtNtB9_7use_def20EnclosingSnapshotKeyNtB12_25ScopedEnclosingSnapshotIdE12from_entries0B9_: argument 0"}
!377 = distinct !{!377, !375, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core6frozenINtB7_9FrozenMapNtNtB9_7use_def20EnclosingSnapshotKeyNtB12_25ScopedEnclosingSnapshotIdE12from_entries0B9_: argument 1"}
!378 = distinct !{!378, i1 false, !"_RNvXs34_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_20EnclosingSnapshotKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp"}
!379 = distinct !{!379, !378, !"_RNvXs34_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_20EnclosingSnapshotKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp: argument 0"}
!380 = distinct !{!380, !378, !"_RNvXs34_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_20EnclosingSnapshotKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp: argument 1"}
!381 = distinct !{!381, i1 false, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_"}
!382 = distinct !{!382, !381, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_: argument 0"}
!383 = distinct !{!383, !381, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_: argument 1"}
!384 = distinct !{!384, i1 false, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core6frozenINtB7_9FrozenMapNtNtB9_7use_def20EnclosingSnapshotKeyNtB12_25ScopedEnclosingSnapshotIdE12from_entries0B9_"}
!385 = distinct !{!385, !384, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core6frozenINtB7_9FrozenMapNtNtB9_7use_def20EnclosingSnapshotKeyNtB12_25ScopedEnclosingSnapshotIdE12from_entries0B9_: argument 0"}
!386 = distinct !{!386, !384, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core6frozenINtB7_9FrozenMapNtNtB9_7use_def20EnclosingSnapshotKeyNtB12_25ScopedEnclosingSnapshotIdE12from_entries0B9_: argument 1"}
!387 = distinct !{!387, i1 false, !"_RNvXs34_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_20EnclosingSnapshotKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp"}
!388 = distinct !{!388, !387, !"_RNvXs34_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_20EnclosingSnapshotKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp: argument 0"}
!389 = distinct !{!389, !387, !"_RNvXs34_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_20EnclosingSnapshotKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp: argument 1"}
!390 = distinct !{!390, i1 false, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_"}
!391 = distinct !{!391, !390, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_: argument 0"}
!392 = distinct !{!392, !390, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_: argument 1"}
!393 = distinct !{!393, i1 false, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core6frozenINtB7_9FrozenMapNtNtB9_7use_def20EnclosingSnapshotKeyNtB12_25ScopedEnclosingSnapshotIdE12from_entries0B9_"}
!394 = distinct !{!394, !393, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core6frozenINtB7_9FrozenMapNtNtB9_7use_def20EnclosingSnapshotKeyNtB12_25ScopedEnclosingSnapshotIdE12from_entries0B9_: argument 0"}
!395 = distinct !{!395, !393, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core6frozenINtB7_9FrozenMapNtNtB9_7use_def20EnclosingSnapshotKeyNtB12_25ScopedEnclosingSnapshotIdE12from_entries0B9_: argument 1"}
!396 = distinct !{!396, i1 false, !"_RNvXs34_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_20EnclosingSnapshotKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp"}
!397 = distinct !{!397, !396, !"_RNvXs34_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_20EnclosingSnapshotKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp: argument 0"}
!398 = distinct !{!398, !396, !"_RNvXs34_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB6_20EnclosingSnapshotKeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp: argument 1"}
!399 = !{!373}
!400 = !{!374}
!401 = !{!376}
!402 = !{!377}
!403 = !{!379}
!404 = !{!380}
!405 = !{!379, !376, !373}
!406 = !{!380, !377, !374}
!407 = !{!382}
!408 = !{!383}
!409 = !{!385}
!410 = !{!386}
!411 = !{!388}
!412 = !{!389}
!413 = !{!389, !386, !383}
!414 = !{!388, !385, !382}
!415 = !{!391}
!416 = !{!392}
!417 = !{!394}
!418 = !{!395}
!419 = !{!397}
!420 = !{!398}
!421 = !{!397, !394, !391}
!422 = !{!398, !395, !392}
!423 = distinct !{!423, i1 false, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_"}
!424 = distinct !{!424, !423, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_: argument 0"}
!425 = distinct !{!425, !423, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_: argument 1"}
!426 = distinct !{!426, i1 false, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB7_20SemanticIndexBuilder37synthesize_nested_binding_definitions0B9_"}
!427 = distinct !{!427, !426, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB7_20SemanticIndexBuilder37synthesize_nested_binding_definitions0B9_: argument 0"}
!428 = distinct !{!428, !426, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB7_20SemanticIndexBuilder37synthesize_nested_binding_definitions0B9_: argument 1"}
!429 = distinct !{!429, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp"}
!430 = distinct !{!430, !429, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 0"}
!431 = distinct !{!431, !429, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 1"}
!432 = distinct !{!432, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!433 = distinct !{!433, !432, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!434 = distinct !{!434, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!435 = distinct !{!435, !434, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!436 = distinct !{!436, i1 false, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_"}
!437 = distinct !{!437, !436, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_: argument 1"}
!438 = distinct !{!438, i1 false, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB7_20SemanticIndexBuilder37synthesize_nested_binding_definitions0B9_"}
!439 = distinct !{!439, !438, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB7_20SemanticIndexBuilder37synthesize_nested_binding_definitions0B9_: argument 1"}
!440 = distinct !{!440, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp"}
!441 = distinct !{!441, !440, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 1"}
!442 = distinct !{!442, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!443 = distinct !{!443, !442, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!444 = distinct !{!444, !436, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_: argument 0"}
!445 = distinct !{!445, !438, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB7_20SemanticIndexBuilder37synthesize_nested_binding_definitions0B9_: argument 0"}
!446 = distinct !{!446, !440, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 0"}
!447 = !{!424}
!448 = !{!425}
!449 = !{!427}
!450 = !{!428}
!451 = !{!430}
!452 = !{!431}
!453 = !{!433, !430, !427, !424}
!454 = !{!431, !428, !425}
!455 = !{!435, !431, !428, !425}
!456 = !{!430, !427, !424}
!457 = !{!443, !441, !439, !437}
!458 = !{!446, !445, !444}
!459 = distinct !{!459, i1 false, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0E0B1V_"}
!460 = distinct !{!460, !459, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0E0B1V_: argument 0"}
!461 = distinct !{!461, !459, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0E0B1V_: argument 1"}
!462 = distinct !{!462, i1 false, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB7_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0B9_"}
!463 = distinct !{!463, !462, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB7_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0B9_: argument 0"}
!464 = distinct !{!464, !462, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB7_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0B9_: argument 1"}
!465 = distinct !{!465, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp"}
!466 = distinct !{!466, !465, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 0"}
!467 = distinct !{!467, !465, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 1"}
!468 = distinct !{!468, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!469 = distinct !{!469, !468, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!470 = distinct !{!470, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!471 = distinct !{!471, !470, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!472 = distinct !{!472, i1 false, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0E0B1V_"}
!473 = distinct !{!473, !472, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0E0B1V_: argument 1"}
!474 = distinct !{!474, i1 false, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB7_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0B9_"}
!475 = distinct !{!475, !474, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB7_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0B9_: argument 1"}
!476 = distinct !{!476, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp"}
!477 = distinct !{!477, !476, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 1"}
!478 = distinct !{!478, i1 false, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!479 = distinct !{!479, !478, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!480 = distinct !{!480, !472, !"_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0E0B1V_: argument 0"}
!481 = distinct !{!481, !474, !"_RNCNvMs2_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB7_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0B9_: argument 0"}
!482 = distinct !{!482, !476, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr11content_cmp: argument 0"}
!483 = !{!460}
!484 = !{!461}
!485 = !{!463}
!486 = !{!464}
!487 = !{!466}
!488 = !{!467}
!489 = !{!469, !466, !463, !460}
!490 = !{!467, !464, !461}
!491 = !{!471, !467, !464, !461}
end_hunk_2
