inline.NumInlined: 7
begin_hunk_0_@Exptab:bb.a
  %i.ag = getelementptr [8 x i8], ptr %1, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %i.ah, align 4, !tbaa !16
  %2 = getelementptr i8, ptr %1, <4 x i64> <i64 8, i64 8, i64 12, i64 12> ; 2 uses
  %scevgep57 = getelementptr i8, ptr %1, i64 12
  %i.ai = add nsw i64 %i.af, 1
  %scevgep61.a = getelementptr i8, ptr %1, i64 12
  %scevgep63 = getelementptr i8, ptr %1, i64 12
  %scevgep67 = getelementptr i8, ptr %1, i64 16
  %scevgep71 = getelementptr i8, ptr %1, i64 16
  %scevgep73 = getelementptr i8, ptr %1, i64 16
  br label %bb.d
end_hunk_0
begin_hunk_1_@Exptab:bb.a
  %i.as = add nuw i64 %.neg, %smax
  %i.at = add i64 %i.as, %umin
  %i.au = shl i64 %i.at, 3                        ; 6 uses
  %scevgep58 = getelementptr i8, ptr %scevgep57, i64 %i.au
  %scevgep62 = getelementptr i8, ptr %scevgep61.a, i64 %i.au
  %scevgep64 = getelementptr i8, ptr %scevgep63, i64 %i.au
  %scevgep68 = getelementptr i8, ptr %scevgep67, i64 %i.au
  %scevgep72 = getelementptr i8, ptr %scevgep71, i64 %i.au
  %scevgep74 = getelementptr i8, ptr %scevgep73, i64 %i.au
  %3 = insertelement <4 x ptr> poison, ptr %scevgep64, i64 0
  %4 = insertelement <4 x ptr> %3, ptr %scevgep58, i64 1
  %5 = insertelement <4 x ptr> %4, ptr %scevgep74, i64 2
  %6 = insertelement <4 x ptr> %5, ptr %scevgep68, i64 3 ; 2 uses
  %7 = icmp ult <4 x ptr> %2, %6
  %8 = insertelement <4 x ptr> %6, ptr %scevgep62, i64 0
  %9 = insertelement <4 x ptr> %8, ptr %scevgep72, i64 2
  %10 = icmp ult <4 x ptr> %2, %9
  %11 = shufflevector <4 x i1> %10, <4 x i1> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %12 = and <4 x i1> %7, %11
  %13 = bitcast <4 x i1> %12 to i4
  %.not94 = icmp eq i4 %13, 0
  br i1 %.not94, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %smax89, 3                  ; 2 uses
end_hunk_1
