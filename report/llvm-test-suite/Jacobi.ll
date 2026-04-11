inline.NumInlined: 2
begin_hunk_0_@Jacobi:bb.a
  br i1 %exitcond.not.i, label %.lr.ph53.i.preheader, label %scalar.ph115, !llvm.loop !30

.lr.ph53.i.preheader:                             ; preds = %scalar.ph115, %middle.block130
  br label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %.lr.ph53.i.preheader, %.lr.ph53.i
end_hunk_0
begin_hunk_1_@Jacobi:bb.a
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv55.i
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !8  ; 2 uses
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.bl ; 2 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !11 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.bk ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !11 ; 2 uses
  %i.cy = fneg double %i.cx
  %2 = fmul double %i.bq, %i.cy
  %3 = call double @llvm.fmuladd.f64(double %i.br, double %i.cv, double %2)
  store double %3, ptr %i.cu, align 8, !tbaa !11
  %4 = fmul double %i.br, %i.cx
  %5 = call double @llvm.fmuladd.f64(double %i.bq, double %i.cv, double %4)
  store double %5, ptr %i.cw, align 8, !tbaa !11
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %lftr.wideiv58.i = trunc i64 %indvars.iv.next56.i to i32
  %exitcond59.not.i = icmp eq i32 %i.bz, %lftr.wideiv58.i
end_hunk_1
begin_hunk_2_@Jacobi:bb.a
  br i1 %exitcond.not.i66, label %.lr.ph53.i67.preheader, label %scalar.ph, !llvm.loop !37

.lr.ph53.i67.preheader:                           ; preds = %scalar.ph, %middle.block
  br label %.lr.ph53.i67

.lr.ph53.i67:                                     ; preds = %.lr.ph53.i67.preheader, %.lr.ph53.i67
end_hunk_2
begin_hunk_3_@Jacobi:bb.a
  %i.fl = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv55.i68
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !8  ; 2 uses
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.ec ; 2 uses
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !11 ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.next82 ; 2 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !11 ; 2 uses
  %i.fr = fneg double %i.fq
  %6 = fmul double %i.ei, %i.fr
  %7 = call double @llvm.fmuladd.f64(double %i.ej, double %i.fo, double %6)
  store double %7, ptr %i.fn, align 8, !tbaa !11
  %8 = fmul double %i.ej, %i.fq
  %9 = call double @llvm.fmuladd.f64(double %i.ei, double %i.fo, double %8)
  store double %9, ptr %i.fp, align 8, !tbaa !11
  %indvars.iv.next56.i69 = add nsw i64 %indvars.iv55.i68, 1 ; 2 uses
  %lftr.wideiv58.i70 = trunc i64 %indvars.iv.next56.i69 to i32
  %exitcond59.not.i71 = icmp eq i32 %i.es, %lftr.wideiv58.i70
end_hunk_3
