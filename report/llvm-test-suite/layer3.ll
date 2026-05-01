inline.NumInlined: 29
inline.NumDeleted: 6
begin_hunk_0_@init_layer3:bb.a

.preheader342:                                    ; preds = %.preheader343.preheader, %.preheader342
  %indvars.iv442 = phi i64 [ 0, %.preheader343.preheader ], [ %indvars.iv.next443, %.preheader342 ] ; 5 uses
  %1 = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @win, i64 288), i64 %indvars.iv442
  %2 = getelementptr inbounds nuw [8 x i8], ptr @win, i64 %indvars.iv442
  %3 = add nuw nsw i64 %indvars.iv442, 18         ; 3 uses
  %4 = shl nuw nsw i64 %3, 1                      ; 2 uses
  %i.ai = shl nuw nsw i64 %indvars.iv442, 1       ; 2 uses
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = or disjoint i32 %i.aj, 1
end_hunk_0
begin_hunk_1_@init_layer3:bb.a
  %i.am = fmul nnan double %i.al, 0x3FA657184AE74487
  %i.an = tail call double @sin(double noundef %i.am) #11, !tbaa !4
  %i.ao = fmul double %i.an, 5.000000e-01
  %5 = trunc i64 %4 to i32
  %i.ap = trunc i64 %i.ai to i32
  %6 = add i32 %5, 19
  %i.aq = add i32 %i.ap, 19
  %i.ar = uitofp nneg i32 %6 to double
  %7 = uitofp nneg i32 %i.aq to double
  %8 = insertelement <2 x double> poison, double %7, i64 0
  %9 = insertelement <2 x double> %8, double %i.ar, i64 1
  %10 = fmul nnan <2 x double> %9, splat (double 0x400921FB54442D18)
  %11 = fdiv <2 x double> %10, splat (double 7.200000e+01) ; 2 uses
  %12 = extractelement <2 x double> %11, i64 0
  %13 = tail call double @cos(double noundef %12) #11, !tbaa !4
  %14 = fdiv double %i.ao, %13                    ; 2 uses
  store double %14, ptr %1, align 8, !tbaa !8
  store double %14, ptr %2, align 8, !tbaa !8
  %i.as = trunc i64 %4 to i32
  %i.at = or disjoint i32 %i.as, 1
  %i.au = uitofp nneg i32 %i.at to double
  %i.av = fmul nnan double %i.au, 0x3FA657184AE74487
  %i.aw = tail call double @sin(double noundef %i.av) #11, !tbaa !4
  %i.ax = fmul double %i.aw, 5.000000e-01
  %15 = extractelement <2 x double> %11, i64 1
  %i.ay = tail call double @cos(double noundef %15) #11, !tbaa !4
  %i.az = fdiv double %i.ax, %i.ay                ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @win, i64 864), i64 %3
  store double %i.az, ptr %i.ba, align 8, !tbaa !8
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @win, i64 %3
  store double %i.az, ptr %i.bb, align 8, !tbaa !8
  %indvars.iv.next443 = add nuw nsw i64 %indvars.iv442, 1 ; 2 uses
  %exitcond445.not = icmp eq i64 %indvars.iv.next443, 18
end_hunk_1
