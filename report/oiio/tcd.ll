inline.NumInlined: 112
inline.NumDeleted: 33
begin_hunk_0_@opj_tcd_encode_tile:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ck, -8                      ; 4 uses
  %8 = shl i64 %n.vec, 2
  %9 = getelementptr i8, ptr %i.by, i64 %8
  %10 = load i32, ptr %i.da, align 4, !tbaa !173, !alias.scope !178
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %10, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_0
begin_hunk_1_@opj_tcd_encode_tile:bb.a
  br i1 %cmp.n, label %.loopexit.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph7.i, %middle.block
  %.06.i.ph = phi ptr [ %i.by, %vector.memcheck ], [ %i.by, %.lr.ph7.i ], [ %9, %middle.block ] ; 2 uses
  %.0285.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph7.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ck, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_1
begin_hunk_2_@opj_tcd_decode_tile:bb.a
  br i1 %found.conflict, label %scalar.ph401.preheader, label %vector.ph403

vector.ph403:                                     ; preds = %vector.memcheck
  %12 = getelementptr i8, ptr %.1107.us.i, i64 %i.zb ; 2 uses
  %i.zv = load i32, ptr %i.yu, align 4, !tbaa !173, !alias.scope !268
  %broadcast.splatinsert412 = insertelement <4 x i32> poison, i32 %i.zv, i64 0
  %broadcast.splat413 = shufflevector <4 x i32> %broadcast.splatinsert412, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body408

vector.body408:                                   ; preds = %vector.body408, %vector.ph403
end_hunk_2
