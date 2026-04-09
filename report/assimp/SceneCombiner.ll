inline.NumInlined: 1372
inline.NumDeleted: 727
begin_hunk_0_@_ZN6Assimp13SceneCombiner11MergeScenesEPP7aiSceneS2_RSt6vectorINS_14AttachmentInfoESaIS5_EEj:bb.a
  %i.ek = phi i64 [ %.pre-phi1081, %.loopexit824 ], [ 0, %.lr.ph859.preheader ] ; 2 uses
  %.0326857 = phi i32 [ %.pre-phi, %.loopexit824 ], [ 0, %.lr.ph859.preheader ] ; 13 uses
  %i.el = add i32 %.0326857, 2
  %i.em = zext i32 %i.el to i64
  %umax1335 = call i64 @llvm.usub.sat.i64(i64 %i.cp, i64 %i.em) ; 2 uses
  %i.en = add nuw nsw i64 %umax1335, 1            ; 2 uses
  %i.eo = add i32 %.0326857, 2
  %i.ep = zext i32 %i.eo to i64
  %i.eq = call i64 @llvm.usub.sat.i64(i64 %i.cp, i64 %i.ep) ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp13SceneCombiner11MergeScenesEPP7aiSceneS2_RSt6vectorINS_14AttachmentInfoESaIS5_EEj:bb.a
.lr.ph856:                                        ; preds = %bb.ae
  %i.ev = getelementptr inbounds nuw [96 x i8], ptr %i.cb, i64 %i.ek
  %.pre1055 = load ptr, ptr %i.ev, align 8        ; 2 uses
  %min.iters.check = icmp ult i64 %umax1335, 23
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph856
end_hunk_1
begin_hunk_2_@_ZN6Assimp13SceneCombiner11MergeScenesEPP7aiSceneS2_RSt6vectorINS_14AttachmentInfoESaIS5_EEj:bb.a
  br i1 %i.fe, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.en, 4611686018427387900     ; 4 uses
  %i.ff = add nuw nsw i64 %n.vec, %i.et
  %.cast = trunc i64 %n.vec to i32
  %i.fg = add i32 %.0329853, %.cast
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %.pre1055, i64 0
end_hunk_2
begin_hunk_3_@_ZN6Assimp13SceneCombiner11MergeScenesEPP7aiSceneS2_RSt6vectorINS_14AttachmentInfoESaIS5_EEj:bb.a
  br i1 %i.gg, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %pred.store.continue1341
  %cmp.n = icmp eq i64 %i.en, %n.vec
  br i1 %cmp.n, label %.loopexit824, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph856, %middle.block
end_hunk_3
