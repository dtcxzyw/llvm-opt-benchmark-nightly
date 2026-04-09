inline.NumInlined: 641
inline.NumDeleted: 336
begin_hunk_0_@_ZN6Assimp30SplitLargeMeshesProcess_Vertex9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE:bb.a
.lr.ph.preheader:                                 ; preds = %bb.l
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.ct to i64
  %7 = add i64 %i.cv, -4
  %i.cx = sub i64 %7, %i.cw
  %i.cy = and i64 %i.cx, -4
  %8 = add i64 %i.cy, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.ct, i8 -1, i64 %8, i1 false)
  br label %.loopexit318

.loopexit318:                                     ; preds = %.lr.ph.preheader, %bb.l, %bb.k
end_hunk_0
begin_hunk_1_@_ZN6Assimp30SplitLargeMeshesProcess_Vertex9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE:bb.a

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc179
  %i.tq = ptrtoaddr ptr %i.to to i64
  %9 = add i64 %i.te, -8
  %10 = sub i64 %9, %i.tf                         ; 2 uses
  %i.tr = lshr i64 %10, 3
  %i.ts = add nuw nsw i64 %i.tr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %10, 24
  %i.tt = sub i64 %i.tq, %i.tf
  %diff.check = icmp ult i64 %i.tt, 32
  %or.cond = or i1 %min.iters.check, %diff.check
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj:bb.a
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.an, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.ap = shl i64 %2, 2
  %4 = add i64 %i.ap, -4
  %5 = sub i64 %4, %i.k                           ; 2 uses
  %i.aq = lshr i64 %5, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj:bb.a
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69
  %6 = add i64 %i.f, -4
  %7 = sub i64 %6, %i.j                           ; 2 uses
  %i.bc = lshr i64 %7, 2
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check112 = icmp ult i64 %7, 28
end_hunk_3
