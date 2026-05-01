inline.NumInlined: 29
inline.NumDeleted: 6
begin_hunk_0_@init_layer3:bb.a

.preheader342:                                    ; preds = %.preheader343.preheader, %.preheader342
  %indvars.iv442 = phi i64 [ 0, %.preheader343.preheader ], [ %indvars.iv.next443, %.preheader342 ] ; 5 uses
  %i.ai = shl nuw nsw i64 %indvars.iv442, 1       ; 2 uses
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = or disjoint i32 %i.aj, 1
end_hunk_0
begin_hunk_1_@init_layer3:bb.a
  %i.am = fmul nnan double %i.al, 0x3FA657184AE74487
  %i.an = tail call double @sin(double noundef %i.am) #11, !tbaa !4
  %i.ao = fmul double %i.an, 5.000000e-01
  %i.ap = trunc i64 %i.ai to i32
  %i.aq = add i32 %i.ap, 19
  %i.ar = uitofp nneg i32 %i.aq to double
  %1 = fmul nnan double %i.ar, 0x400921FB54442D18
  %2 = fdiv double %1, 7.200000e+01
  %3 = tail call double @cos(double noundef %2) #11, !tbaa !4
  %4 = fdiv double %i.ao, %3                      ; 2 uses
  %5 = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @win, i64 288), i64 %indvars.iv442
  store double %4, ptr %5, align 8, !tbaa !8
  %6 = getelementptr inbounds nuw [8 x i8], ptr @win, i64 %indvars.iv442
  store double %4, ptr %6, align 8, !tbaa !8
  %7 = add nuw nsw i64 %indvars.iv442, 18         ; 3 uses
  %8 = shl nuw nsw i64 %7, 1                      ; 2 uses
  %i.as = trunc i64 %8 to i32
  %i.at = or disjoint i32 %i.as, 1
  %i.au = uitofp nneg i32 %i.at to double
  %i.av = fmul nnan double %i.au, 0x3FA657184AE74487
  %i.aw = tail call double @sin(double noundef %i.av) #11, !tbaa !4
  %9 = fmul double %i.aw, 5.000000e-01
  %10 = trunc i64 %8 to i32
  %11 = add i32 %10, 19
  %12 = uitofp nneg i32 %11 to double
  %i.ax = fmul nnan double %12, 0x400921FB54442D18
  %13 = fdiv double %i.ax, 7.200000e+01
  %i.ay = tail call double @cos(double noundef %13) #11, !tbaa !4
  %i.az = fdiv double %9, %i.ay                   ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @win, i64 864), i64 %7
  store double %i.az, ptr %i.ba, align 8, !tbaa !8
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @win, i64 %7
  store double %i.az, ptr %i.bb, align 8, !tbaa !8
  %indvars.iv.next443 = add nuw nsw i64 %indvars.iv442, 1 ; 2 uses
  %exitcond445.not = icmp eq i64 %indvars.iv.next443, 18
end_hunk_1
