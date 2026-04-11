inline.NumInlined: 1907
inline.NumDeleted: 759
begin_hunk_0_@_ZNSt8_Rb_treeIPKvSt4pairIKS1_N7testing8internal12CallReactionEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE5eraseERS3_:bb.a
  br i1 %.not.i32.i, label %_ZNSt8_Rb_treeIPKvSt4pairIKS1_N7testing8internal12CallReactionEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE11equal_rangeERS3_.exit, label %.lr.ph.i25.i, !llvm.loop !494

bb.e:                                             ; preds = %bb.c, %bb.b
  %.sink.i = phi i64 [ 24, %bb.b ], [ 16, %bb.c ]
  %.123.i = phi ptr [ %.02243.i, %bb.b ], [ %.044.i, %bb.c ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.044.i, i64 %.sink.i
  %.0.i = load ptr, ptr %i.r, align 8, !tbaa !352 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %_ZNSt8_Rb_treeIPKvSt4pairIKS1_N7testing8internal12CallReactionEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE11equal_rangeERS3_.exit, label %bb.b, !llvm.loop !495
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeIPN7testing8internal25UntypedFunctionMockerBaseES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE5eraseERKS3_:bb.a
  br i1 %.not.i32.i, label %_ZNSt8_Rb_treeIPN7testing8internal25UntypedFunctionMockerBaseES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE11equal_rangeERKS3_.exit, label %.lr.ph.i25.i, !llvm.loop !498

bb.e:                                             ; preds = %bb.c, %bb.b
  %.sink.i = phi i64 [ 24, %bb.b ], [ 16, %bb.c ]
  %.123.i = phi ptr [ %.02243.i, %bb.b ], [ %.044.i, %bb.c ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.044.i, i64 %.sink.i
  %.0.i = load ptr, ptr %i.r, align 8, !tbaa !352 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %_ZNSt8_Rb_treeIPN7testing8internal25UntypedFunctionMockerBaseES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE11equal_rangeERKS3_.exit, label %bb.b, !llvm.loop !499
end_hunk_1
