inline.NumInlined: 607
inline.NumDeleted: 343
begin_hunk_0_@_ZN12MeshSplitter9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS1_jESaIS4_EE:bb.a
.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.q
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.dp to i64
  %7 = add i64 %i.dr, -4
  %i.dt = sub i64 %7, %i.ds
  %i.du = and i64 %i.dt, -4
  %8 = add i64 %i.du, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.dp, i8 -1, i64 %8, i1 false)
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEjEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %bb.q, %bb.p
end_hunk_0
begin_hunk_1_@_ZN12MeshSplitter9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS1_jESaIS4_EE:bb.a

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc182
  %i.uk = ptrtoaddr ptr %i.ui to i64
  %9 = add i64 %i.ty, -8
  %10 = sub i64 %9, %i.tz                         ; 2 uses
  %i.ul = lshr i64 %10, 3
  %i.um = add nuw nsw i64 %i.ul, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %10, 24
  %i.un = sub i64 %i.uk, %i.tz
  %diff.check = icmp ult i64 %i.un, 32
  %or.cond = or i1 %min.iters.check, %diff.check
end_hunk_1
begin_hunk_2_@_Z28ComputeVertexBoneWeightTablePK6aiMesh:bb.a

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.bc = ptrtoaddr ptr %i.ay to i64
  %1 = add i64 %i.ao, -8
  %2 = sub i64 %1, %i.ap                          ; 2 uses
  %i.bd = lshr i64 %2, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %2, 24
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj:bb.a
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.an, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.ap = shl i64 %2, 2
  %4 = add i64 %i.ap, -4
  %5 = sub i64 %4, %i.k                           ; 2 uses
  %i.aq = lshr i64 %5, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj:bb.a
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69
  %6 = add i64 %i.f, -4
  %7 = sub i64 %6, %i.j                           ; 2 uses
  %i.bc = lshr i64 %7, 2
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check112 = icmp ult i64 %7, 28
end_hunk_4
