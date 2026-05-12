inline.NumInlined: 367
inline.NumDeleted: 180
begin_hunk_0_@_ZN8ultrahdr17JpegEncoderHelper6encodeEPPKhPKjii12uhdr_img_fmtiPKvm:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %i.bi = load i32, ptr %i.ax, align 4, !tbaa !3, !alias.scope !79
  %broadcast.splatinsert110.a = insertelement <2 x i32> poison, i32 %i.bi, i64 0
  %12 = sitofp <2 x i32> %broadcast.splatinsert110.a to <2 x float>
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = load i32, ptr %i.bb, align 4, !tbaa !3, !alias.scope !79
  %broadcast.splatinsert110 = insertelement <2 x i32> poison, i32 %14, i64 0
  %i.bj = sitofp <2 x i32> %broadcast.splatinsert110 to <2 x float>
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert112 = insertelement <2 x float> poison, float %i.aw, i64 0
  %broadcast.splat113 = shufflevector <2 x float> %broadcast.splatinsert112, <2 x float> poison, <2 x i32> zeroinitializer
end_hunk_0
begin_hunk_1_@_ZN8ultrahdr17JpegEncoderHelper6encodeEPPKhPKjii12uhdr_img_fmtiPKvm:bb.a
  store <2 x i32> %i.bu, ptr %i.bq, align 8, !tbaa !3, !alias.scope !84, !noalias !86
  %i.bv = sitofp <2 x i32> %strided.vec to <2 x float>
  %i.bw = fmul nnan contract <2 x float> %broadcast.splat113, %i.bv
  %i.bx = fdiv contract <2 x float> %i.bw, %13
  %i.by = call contract <2 x float> @llvm.ceil.v2f32(<2 x float> %i.bx)
  %i.bz = fptoui <2 x float> %i.by to <2 x i32>
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index
end_hunk_1
