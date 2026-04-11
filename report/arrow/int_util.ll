inline.NumInlined: 2192
inline.NumDeleted: 629
begin_hunk_0_@_ZN5arrow8internal20CheckIntegersInRangeERKNS_9ArraySpanERKNS_6ScalarES6_:bb.a

bb.bb:                                            ; preds = %bb.d
  %i.htx = getelementptr i8, ptr %2, i64 48
  %.val50 = load i64, ptr %i.htx, align 8, !tbaa !714 ; 18 uses
  %i.hty = getelementptr i8, ptr %3, i64 48
  %.val51 = load i64, ptr %i.hty, align 8, !tbaa !714 ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !719)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !716
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal20CheckIntegersInRangeERKNS_9ArraySpanERKNS_6ScalarES6_:bb.a
.lr.ph179.preheader.i.i501:                       ; preds = %bb.bd
  %i.huj = load i64, ptr %i.htz, align 8, !tbaa !295, !noalias !722
  %i.huk = getelementptr inbounds [8 x i8], ptr %i.hud, i64 %i.hua
  %12 = insertelement <8 x i64> poison, i64 %.val50, i64 0
  %13 = shufflevector <8 x i64> %12, <8 x i64> poison, <8 x i32> zeroinitializer
  %14 = insertelement <16 x i64> poison, i64 %.val51, i64 0
  %15 = shufflevector <16 x i64> %14, <16 x i64> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.val50, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert917 = insertelement <2 x i64> poison, i64 %.val51, i64 0
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal20CheckIntegersInRangeERKNS_9ArraySpanERKNS_6ScalarES6_:bb.a
  %.081161.i.i557 = phi i64 [ %i.hvp, %.preheader.i.i556 ], [ 0, %.preheader.preheader.i.i554 ]
  %.082160.i.i558 = phi i64 [ %i.hvo, %.preheader.i.i556 ], [ 0, %.preheader.preheader.i.i554 ] ; 2 uses
  %.085159.i.i559 = phi i1 [ %i.hvn, %.preheader.i.i556 ], [ false, %.preheader.preheader.i.i554 ]
  %i.hvm = getelementptr inbounds nuw [8 x i8], ptr %.088176.i.i503, i64 %.082160.i.i558
  %16 = load <8 x i64>, ptr %i.hvm, align 8, !tbaa !30, !noalias !722 ; 2 uses
  %17 = shufflevector <8 x i64> %16, <8 x i64> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %18 = shufflevector <8 x i64> %16, <8 x i64> %13, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %19 = shufflevector <16 x i64> %15, <16 x i64> %17, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %20 = icmp ugt <16 x i64> %18, %19
  %21 = bitcast <16 x i1> %20 to i16
  %22 = icmp ne i16 %21, 0
  %i.hvn = or i1 %22, %.085159.i.i559             ; 2 uses
  %i.hvo = add nuw nsw i64 %.082160.i.i558, 8
  %i.hvp = add nuw nsw i64 %.081161.i.i557, 1     ; 2 uses
  %exitcond193.not.i.i568 = icmp eq i64 %i.hvp, %smax192.i.i555
end_hunk_2
