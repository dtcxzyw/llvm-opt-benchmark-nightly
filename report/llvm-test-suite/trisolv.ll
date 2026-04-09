inline.NumInlined: 12
inline.NumDeleted: 6
begin_hunk_0_@main:bb.a
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %polybench_alloc_data.exit15
  %indvars.iv26.i = phi i64 [ 0, %polybench_alloc_data.exit15 ], [ %indvars.iv.next27.i, %.loopexit ] ; 6 uses
  %indvars.iv24.i = phi i64 [ 1, %polybench_alloc_data.exit15 ], [ %indvars.iv.next25.i, %.loopexit ] ; 5 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv26.i
  store double -9.990000e+02, ptr %i.v, align 8, !tbaa !8
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.x = uitofp nneg i32 %i.w to double
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv26.i
  store double %i.x, ptr %i.y, align 8, !tbaa !8
  %2 = add nuw nsw i64 %indvars.iv26.i, 2000      ; 2 uses
  %i.z = getelementptr inbounds nuw [16000 x i8], ptr %i.e, i64 %indvars.iv26.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv24.i, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.e
  %n.vec = and i64 %indvars.iv24.i, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

end_hunk_1
begin_hunk_2_@main:bb.a
  %i.aa = sub nuw nsw <2 x i64> %broadcast.splat, %vec.ind
  %i.ab = trunc <2 x i64> %i.aa to <2 x i32>
  %i.ac = shl <2 x i32> %i.ab, splat (i32 1)
  %i.ad = add <2 x i32> %i.ac, splat (i32 2)
  %i.ae = uitofp nneg <2 x i32> %i.ad to <2 x double>
  %i.af = fdiv <2 x double> %i.ae, splat (double 2.000000e+03)
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index
end_hunk_2
begin_hunk_3_@main:bb.a

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ai = sub nuw nsw i64 %2, %indvars.iv.i
  %.tr.i = trunc i64 %i.ai to i32
  %i.aj = shl i32 %.tr.i, 1
  %i.ak = add i32 %i.aj, 2
  %i.al = uitofp nneg i32 %i.ak to double
  %i.am = fdiv double %i.al, 2.000000e+03
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i
end_hunk_3
