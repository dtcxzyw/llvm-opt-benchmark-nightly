inline.NumInlined: 2192
inline.NumDeleted: 629
begin_hunk_0_@_ZN5arrow8internal20CheckIntegersInRangeERKNS_9ArraySpanERKNS_6ScalarES6_:bb.a

bb.bb:                                            ; preds = %bb.d
  %i.htx = getelementptr i8, ptr %2, i64 48
  %.val50 = load i64, ptr %i.htx, align 8, !tbaa !714 ; 25 uses
  %i.hty = getelementptr i8, ptr %3, i64 48
  %.val51 = load i64, ptr %i.hty, align 8, !tbaa !714 ; 25 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !719)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !716
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal20CheckIntegersInRangeERKNS_9ArraySpanERKNS_6ScalarES6_:bb.a
.lr.ph179.preheader.i.i501:                       ; preds = %bb.bd
  %i.huj = load i64, ptr %i.htz, align 8, !tbaa !295, !noalias !722
  %i.huk = getelementptr inbounds [8 x i8], ptr %i.hud, i64 %i.hua
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.val50, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert917 = insertelement <2 x i64> poison, i64 %.val51, i64 0
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal20CheckIntegersInRangeERKNS_9ArraySpanERKNS_6ScalarES6_:bb.a
  %.081161.i.i557 = phi i64 [ %i.hvp, %.preheader.i.i556 ], [ 0, %.preheader.preheader.i.i554 ]
  %.082160.i.i558 = phi i64 [ %i.hvo, %.preheader.i.i556 ], [ 0, %.preheader.preheader.i.i554 ] ; 2 uses
  %.085159.i.i559 = phi i1 [ %i.hvn, %.preheader.i.i556 ], [ false, %.preheader.preheader.i.i554 ]
  %i.hvm = getelementptr inbounds nuw [8 x i8], ptr %.088176.i.i503, i64 %.082160.i.i558 ; 8 uses
  %12 = load i64, ptr %i.hvm, align 8, !tbaa !30, !noalias !722 ; 2 uses
  %13 = icmp ult i64 %12, %.val50
  %14 = icmp ugt i64 %12, %.val51
  %spec.select.i.i560 = or i1 %13, %14
  %15 = or i1 %.085159.i.i559, %spec.select.i.i560
  %16 = getelementptr inbounds nuw i8, ptr %i.hvm, i64 8
  %17 = load i64, ptr %16, align 8, !tbaa !30, !noalias !722 ; 2 uses
  %18 = icmp ult i64 %17, %.val50
  %19 = icmp ugt i64 %17, %.val51
  %spec.select.1.i.i561 = or i1 %18, %19
  %20 = or i1 %15, %spec.select.1.i.i561
  %21 = getelementptr inbounds nuw i8, ptr %i.hvm, i64 16
  %22 = load i64, ptr %21, align 8, !tbaa !30, !noalias !722 ; 2 uses
  %23 = icmp ult i64 %22, %.val50
  %24 = icmp ugt i64 %22, %.val51
  %spec.select.2.i.i562 = or i1 %23, %24
  %25 = or i1 %20, %spec.select.2.i.i562
  %26 = getelementptr inbounds nuw i8, ptr %i.hvm, i64 24
  %27 = load i64, ptr %26, align 8, !tbaa !30, !noalias !722 ; 2 uses
  %28 = icmp ult i64 %27, %.val50
  %29 = icmp ugt i64 %27, %.val51
  %spec.select.3.i.i563 = or i1 %28, %29
  %30 = or i1 %25, %spec.select.3.i.i563
  %31 = getelementptr inbounds nuw i8, ptr %i.hvm, i64 32
  %32 = load i64, ptr %31, align 8, !tbaa !30, !noalias !722 ; 2 uses
  %33 = icmp ult i64 %32, %.val50
  %34 = icmp ugt i64 %32, %.val51
  %spec.select.4.i.i564 = or i1 %33, %34
  %35 = or i1 %30, %spec.select.4.i.i564
  %36 = getelementptr inbounds nuw i8, ptr %i.hvm, i64 40
  %37 = load i64, ptr %36, align 8, !tbaa !30, !noalias !722 ; 2 uses
  %38 = icmp ult i64 %37, %.val50
  %39 = icmp ugt i64 %37, %.val51
  %spec.select.5.i.i565 = or i1 %38, %39
  %40 = or i1 %35, %spec.select.5.i.i565
  %41 = getelementptr inbounds nuw i8, ptr %i.hvm, i64 48
  %42 = load i64, ptr %41, align 8, !tbaa !30, !noalias !722 ; 2 uses
  %43 = icmp ult i64 %42, %.val50
  %44 = icmp ugt i64 %42, %.val51
  %spec.select.6.i.i566 = or i1 %43, %44
  %45 = or i1 %40, %spec.select.6.i.i566
  %46 = getelementptr inbounds nuw i8, ptr %i.hvm, i64 56
  %47 = load i64, ptr %46, align 8, !tbaa !30, !noalias !722 ; 2 uses
  %48 = icmp ult i64 %47, %.val50
  %49 = icmp ugt i64 %47, %.val51
  %spec.select.7.i.i567 = or i1 %48, %49
  %i.hvn = or i1 %45, %spec.select.7.i.i567       ; 2 uses
  %i.hvo = add nuw nsw i64 %.082160.i.i558, 8
  %i.hvp = add nuw nsw i64 %.081161.i.i557, 1     ; 2 uses
  %exitcond193.not.i.i568 = icmp eq i64 %i.hvp, %smax192.i.i555
end_hunk_2
