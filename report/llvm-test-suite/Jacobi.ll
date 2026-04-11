inline.NumInlined: 2
begin_hunk_0_@Jacobi:bb.a
  br i1 %exitcond.not.i, label %.lr.ph53.i.preheader, label %scalar.ph115, !llvm.loop !30

.lr.ph53.i.preheader:                             ; preds = %scalar.ph115, %middle.block130
  %2 = insertelement <2 x double> poison, double %i.bq, i64 0
  %3 = insertelement <2 x double> %2, double %i.br, i64 1
  %4 = insertelement <2 x double> poison, double %i.br, i64 0
  %5 = insertelement <2 x double> %4, double %i.bq, i64 1
  br label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %.lr.ph53.i.preheader, %.lr.ph53.i
end_hunk_0
begin_hunk_1_@Jacobi:bb.a
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv55.i
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !8  ; 2 uses
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.bl ; 2 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !11
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.bk
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !11 ; 2 uses
  %i.cy = fneg double %i.cx
  %6 = insertelement <2 x double> poison, double %i.cy, i64 0
  %7 = insertelement <2 x double> %6, double %i.cx, i64 1
  %8 = fmul <2 x double> %3, %7
  %9 = insertelement <2 x double> poison, double %i.cv, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %5, <2 x double> %10, <2 x double> %8)
  store <2 x double> %11, ptr %i.cu, align 8, !tbaa !11
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %lftr.wideiv58.i = trunc i64 %indvars.iv.next56.i to i32
  %exitcond59.not.i = icmp eq i32 %i.bz, %lftr.wideiv58.i
end_hunk_1
begin_hunk_2_@Jacobi:bb.a
  br i1 %exitcond.not.i66, label %.lr.ph53.i67.preheader, label %scalar.ph, !llvm.loop !37

.lr.ph53.i67.preheader:                           ; preds = %scalar.ph, %middle.block
  %12 = insertelement <2 x double> poison, double %i.ei, i64 0
  %13 = insertelement <2 x double> %12, double %i.ej, i64 1
  %14 = insertelement <2 x double> poison, double %i.ej, i64 0
  %15 = insertelement <2 x double> %14, double %i.ei, i64 1
  br label %.lr.ph53.i67

.lr.ph53.i67:                                     ; preds = %.lr.ph53.i67.preheader, %.lr.ph53.i67
end_hunk_2
begin_hunk_3_@Jacobi:bb.a
  %i.fl = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv55.i68
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !8  ; 2 uses
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.ec ; 2 uses
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !11
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.next82
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !11 ; 2 uses
  %i.fr = fneg double %i.fq
  %16 = insertelement <2 x double> poison, double %i.fr, i64 0
  %17 = insertelement <2 x double> %16, double %i.fq, i64 1
  %18 = fmul <2 x double> %13, %17
  %19 = insertelement <2 x double> poison, double %i.fo, i64 0
  %20 = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> zeroinitializer
  %21 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %20, <2 x double> %18)
  store <2 x double> %21, ptr %i.fn, align 8, !tbaa !11
  %indvars.iv.next56.i69 = add nsw i64 %indvars.iv55.i68, 1 ; 2 uses
  %lftr.wideiv58.i70 = trunc i64 %indvars.iv.next56.i69 to i32
  %exitcond59.not.i71 = icmp eq i32 %i.es, %lftr.wideiv58.i70
end_hunk_3
