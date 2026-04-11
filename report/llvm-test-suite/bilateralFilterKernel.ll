begin_hunk_0_@bilateralFilterKernel:bb.a

.preheader.us.us.us.us:                           ; preds = %._crit_edge.us.us.us.us, %.preheader75.us.us.us
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %._crit_edge.us.us.us.us ], [ 0, %.preheader75.us.us.us ] ; 2 uses
  %5 = phi <2 x double> [ %12, %._crit_edge.us.us.us.us ], [ zeroinitializer, %.preheader75.us.us.us ]
  %i.m = sub nsw i64 %i.h, %indvars.iv100         ; 3 uses
  %i.n = sub nsw i64 %indvars.iv110, %i.m
  %i.o = getelementptr inbounds [512 x i8], ptr %2, i64 %i.n
end_hunk_0
begin_hunk_1_@bilateralFilterKernel:bb.a

bb.b:                                             ; preds = %bb.b, %.preheader.us.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.preheader.us.us.us.us ] ; 2 uses
  %6 = phi <2 x double> [ %12, %bb.b ], [ %5, %.preheader.us.us.us.us ]
  %i.q = sub nsw i64 %i.h, %indvars.iv            ; 3 uses
  %i.r = sub nsw i64 %indvars.iv105, %i.q
  %i.s = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.r ; 2 uses
end_hunk_1
begin_hunk_2_@bilateralFilterKernel:bb.a
  %i.v = sitofp i32 %.neg.us.us.us.us to double
  %i.w = fdiv double %i.v, 2.880000e+02
  %i.x = tail call double @exp(double noundef %i.w) #3, !tbaa !4
  %i.y = mul nsw i64 %i.q, %i.q
  %i.z = add nuw nsw i64 %i.y, %i.p
  %i.aa = trunc nsw i64 %i.z to i32
end_hunk_2
begin_hunk_3_@bilateralFilterKernel:bb.a
  %i.af = fpext float %i.ae to double
  %i.ag = fmul double %i.af, 0x3F60000000000000
  %i.ah = tail call double @exp(double noundef %i.ag) #3, !tbaa !4
  %7 = insertelement <2 x double> poison, double %i.x, i64 0
  %8 = insertelement <2 x double> %7, double %i.ah, i64 1
  %9 = fdiv <2 x double> %8, <double 0x408C463ABECCB2BB, double 0x409921FB54442D18> ; 2 uses
  %i.ai = load i32, ptr %i.s, align 4, !tbaa !4
  %i.aj = sitofp i32 %i.ai to double
  %shift = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %9, %shift ; 2 uses
  %10 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ak = fmul double %10, %i.aj
  %11 = insertelement <2 x double> %foldExtExtBinop, double %i.ak, i64 1
  %12 = fadd <2 x double> %6, %11                 ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count103
  br i1 %exitcond.not, label %._crit_edge.us.us.us.us, label %bb.b, !llvm.loop !8
end_hunk_3
begin_hunk_4_@bilateralFilterKernel:bb.a
  br i1 %exitcond104.not, label %._crit_edge84.split.us.us.us.us, label %.preheader.us.us.us.us, !llvm.loop !10

._crit_edge84.split.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us
  %13 = extractelement <2 x double> %12, i64 0
  %14 = extractelement <2 x double> %12, i64 1
  %i.al = fdiv double %14, %13
  %i.am = fptosi double %i.al to i32
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv105
  store i32 %i.am, ptr %i.an, align 4, !tbaa !4
end_hunk_4
