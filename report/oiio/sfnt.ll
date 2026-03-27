begin_hunk_0
  %i.jr = trunc nuw nsw i64 %n.vec290 to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0157, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add nuw nsw <4 x i32> splat (i32 4), %broadcast.splat
  %invariant.gep = getelementptr [4 x i8], ptr %i.ih, i64 %i.jo
  br label %vector.body292

end_hunk_0
begin_hunk_1
  %index293 = phi i64 [ 0, %vector.ph288 ], [ %index.next295, %vector.body292 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph288 ], [ %vec.ind.next, %vector.body292 ] ; 3 uses
  %i.js = add nuw nsw <4 x i32> %vec.ind, %broadcast.splat
  %.reass = add nuw nsw <4 x i32> %vec.ind, %invariant.op
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index293 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %i.js, ptr %gep, align 4, !tbaa !3
  store <4 x i32> %.reass, ptr %i.jt, align 4, !tbaa !3
  %index.next295 = add nuw i64 %index293, 8       ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.ju = icmp eq i64 %index.next295, %n.vec290
  br i1 %i.ju, label %middle.block296, label %vector.body292, !llvm.loop !107

end_hunk_1
begin_hunk_2
  %i.mh = trunc nuw nsw i64 %n.vec303 to i32
  %broadcast.splatinsert305 = insertelement <4 x i32> poison, i32 %.0157, i64 0
  %broadcast.splat306 = shufflevector <4 x i32> %broadcast.splatinsert305, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op398 = add nuw nsw <4 x i32> splat (i32 4), %broadcast.splat306
  %invariant.gep400 = getelementptr [4 x i8], ptr %i.ih, i64 %i.me
  br label %vector.body307

end_hunk_2
begin_hunk_3
  %index308 = phi i64 [ 0, %vector.ph301 ], [ %index.next312, %vector.body307 ] ; 2 uses
  %vec.ind309 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph301 ], [ %vec.ind.next313, %vector.body307 ] ; 3 uses
  %i.mi = add nuw nsw <4 x i32> %vec.ind309, %broadcast.splat306
  %.reass399 = add nuw nsw <4 x i32> %vec.ind309, %invariant.op398
  %gep401 = getelementptr [4 x i8], ptr %invariant.gep400, i64 %index308 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %gep401, i64 16
  store <4 x i32> %i.mi, ptr %gep401, align 4, !tbaa !3
  store <4 x i32> %.reass399, ptr %i.mj, align 4, !tbaa !3
  %index.next312 = add nuw i64 %index308, 8       ; 2 uses
  %vec.ind.next313 = add nuw nsw <4 x i32> %vec.ind309, splat (i32 8)
  %i.mk = icmp eq i64 %index.next312, %n.vec303
  br i1 %i.mk, label %middle.block314, label %vector.body307, !llvm.loop !110

end_hunk_3
begin_hunk_4
  %i.nj = trunc nuw nsw i64 %n.vec322 to i32
  %broadcast.splatinsert324 = insertelement <4 x i32> poison, i32 %i.nc, i64 0
  %broadcast.splat325 = shufflevector <4 x i32> %broadcast.splatinsert324, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op402 = add nuw nsw <4 x i32> splat (i32 4), %broadcast.splat325
  %i.nk = getelementptr [4 x i8], ptr %i.ih, i64 %i.nf
  br label %vector.body326

end_hunk_4
begin_hunk_5
  %index327 = phi i64 [ 0, %vector.ph320 ], [ %index.next331, %vector.body326 ] ; 2 uses
  %vec.ind328 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph320 ], [ %vec.ind.next332, %vector.body326 ] ; 3 uses
  %i.nl = add nuw nsw <4 x i32> %vec.ind328, %broadcast.splat325
  %.reass403 = add nuw nsw <4 x i32> %vec.ind328, %invariant.op402
  %i.nm = getelementptr [4 x i8], ptr %i.nk, i64 %index327 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  store <4 x i32> %i.nl, ptr %i.nm, align 4, !tbaa !3
  store <4 x i32> %.reass403, ptr %i.nn, align 4, !tbaa !3
  %index.next331 = add nuw i64 %index327, 8       ; 2 uses
  %vec.ind.next332 = add nuw nsw <4 x i32> %vec.ind328, splat (i32 8)
  %i.no = icmp eq i64 %index.next331, %n.vec322
  br i1 %i.no, label %middle.block333, label %vector.body326, !llvm.loop !112

end_hunk_5
begin_hunk_6
vector.body66:                                    ; preds = %vector.body66, %vector.ph61
  %index67 = phi i64 [ 0, %vector.ph61 ], [ %index.next70, %vector.body66 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph61 ], [ %vec.ind.next, %vector.body66 ] ; 3 uses
  %step.add = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %offset.idx68 = shl i64 %index67, 2
  %next.gep69 = getelementptr i8, ptr %.02540, i64 %offset.idx68 ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep69, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep69, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.cd, align 4, !tbaa !3
  %index.next70 = add nuw i64 %index67, 8         ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.ce = icmp eq i64 %index.next70, %n.vec63
  br i1 %i.ce, label %middle.block71, label %vector.body66, !llvm.loop !738

end_hunk_6
