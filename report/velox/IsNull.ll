inline.NumInlined: 6418
inline.NumDeleted: 2089
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_114IsNullFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  br i1 %i.jb, label %middle.block312, label %vector.body305, !llvm.loop !261

middle.block312:                                  ; preds = %vector.body305
  %cmp.n313 = icmp eq i64 %i.im, %n.vec304
  %ind.escape314 = add nsw i64 %i.ip, -8
  br i1 %cmp.n313, label %.preheader.i.loopexit, label %vec.epilog.iter.check319

vec.epilog.iter.check319:                         ; preds = %middle.block312
  %min.epilog.iters.check320 = icmp eq i64 %n.mod.vf303, 0
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_114IsNullFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  br i1 %i.jk, label %vec.epilog.middle.block328, label %vec.epilog.vector.body324, !llvm.loop !263

vec.epilog.middle.block328:                       ; preds = %vec.epilog.vector.body324
  %cmp.n329 = icmp eq i64 %i.im, %n.vec323
  %ind.escape330 = add nsw i64 %i.je, -8
  br i1 %cmp.n329, label %.preheader.i.loopexit, label %.lr.ph31.i.preheader

.lr.ph31.i.preheader:                             ; preds = %iter.check317, %vec.epilog.iter.check319, %vec.epilog.middle.block328
  %indvars.iv181.ph = phi i64 [ %i.ie, %iter.check317 ], [ %i.io, %vec.epilog.iter.check319 ], [ %i.jd, %vec.epilog.middle.block328 ]
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox9functions12_GLOBAL__N_114IsNullFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  br i1 %.not.i95, label %.preheader26.loopexit.i, label %.lr.ph.i, !llvm.loop !264

.preheader.i.loopexit:                            ; preds = %.lr.ph31.i, %vec.epilog.middle.block328, %middle.block312
  %indvars.iv179.lcssa = phi i64 [ %ind.escape330, %vec.epilog.middle.block328 ], [ %ind.escape314, %middle.block312 ], [ %indvars.iv179, %.lr.ph31.i ]
  %i.jp = trunc nuw nsw i64 %indvars.iv179.lcssa to i32
  br label %.preheader.i

end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox9functions12_GLOBAL__N_114IsNullFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  br i1 %i.or, label %middle.block245, label %vector.body238, !llvm.loop !275

middle.block245:                                  ; preds = %vector.body238
  %cmp.n246 = icmp eq i64 %i.oc, %n.vec237
  %ind.escape = add nsw i64 %i.of, -8
  br i1 %cmp.n246, label %.preheader.i133.loopexit, label %vec.epilog.iter.check251

vec.epilog.iter.check251:                         ; preds = %middle.block245
end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox9functions12_GLOBAL__N_114IsNullFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  br i1 %i.pa, label %vec.epilog.middle.block260, label %vec.epilog.vector.body256, !llvm.loop !276

vec.epilog.middle.block260:                       ; preds = %vec.epilog.vector.body256
  %cmp.n261 = icmp eq i64 %i.oc, %n.vec255
  %ind.escape262 = add nsw i64 %i.ou, -8
  br i1 %cmp.n261, label %.preheader.i133.loopexit, label %.lr.ph31.i130.preheader

.lr.ph31.i130.preheader:                          ; preds = %iter.check249, %vec.epilog.iter.check251, %vec.epilog.middle.block260
  %indvars.iv174.ph = phi i64 [ %i.nu, %iter.check249 ], [ %i.oe, %vec.epilog.iter.check251 ], [ %i.ot, %vec.epilog.middle.block260 ]
end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox9functions12_GLOBAL__N_114IsNullFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  br i1 %.not.i124, label %.preheader26.loopexit.i126, label %.lr.ph.i120, !llvm.loop !277

.preheader.i133.loopexit:                         ; preds = %.lr.ph31.i130, %vec.epilog.middle.block260, %middle.block245
  %indvars.iv.lcssa = phi i64 [ %ind.escape262, %vec.epilog.middle.block260 ], [ %ind.escape, %middle.block245 ], [ %indvars.iv, %.lr.ph31.i130 ]
  %i.pf = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  br label %.preheader.i133

end_hunk_5
