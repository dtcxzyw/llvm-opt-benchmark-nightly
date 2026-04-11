begin_hunk_0_@bilateralFilterKernel:bb.a

.preheader.us.us.us.us:                           ; preds = %._crit_edge.us.us.us.us, %.preheader75.us.us.us
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %._crit_edge.us.us.us.us ], [ 0, %.preheader75.us.us.us ] ; 2 uses
  %.06982.us.us.us.us = phi double [ %9, %._crit_edge.us.us.us.us ], [ 0.000000e+00, %.preheader75.us.us.us ]
  %.07081.us.us.us.us = phi double [ %8, %._crit_edge.us.us.us.us ], [ 0.000000e+00, %.preheader75.us.us.us ]
  %i.m = sub nsw i64 %i.h, %indvars.iv100         ; 3 uses
  %i.n = sub nsw i64 %indvars.iv110, %i.m
  %i.o = getelementptr inbounds [512 x i8], ptr %2, i64 %i.n
end_hunk_0
begin_hunk_1_@bilateralFilterKernel:bb.a

bb.b:                                             ; preds = %bb.b, %.preheader.us.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.preheader.us.us.us.us ] ; 2 uses
  %.178.us.us.us.us = phi double [ %9, %bb.b ], [ %.06982.us.us.us.us, %.preheader.us.us.us.us ]
  %.17177.us.us.us.us = phi double [ %8, %bb.b ], [ %.07081.us.us.us.us, %.preheader.us.us.us.us ]
  %i.q = sub nsw i64 %i.h, %indvars.iv            ; 3 uses
  %i.r = sub nsw i64 %indvars.iv105, %i.q
  %i.s = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.r ; 2 uses
end_hunk_1
begin_hunk_2_@bilateralFilterKernel:bb.a
  %i.v = sitofp i32 %.neg.us.us.us.us to double
  %i.w = fdiv double %i.v, 2.880000e+02
  %i.x = tail call double @exp(double noundef %i.w) #3, !tbaa !4
  %5 = fdiv double %i.x, 0x408C463ABECCB2BB
  %i.y = mul nsw i64 %i.q, %i.q
  %i.z = add nuw nsw i64 %i.y, %i.p
  %i.aa = trunc nsw i64 %i.z to i32
end_hunk_2
begin_hunk_3_@bilateralFilterKernel:bb.a
  %i.af = fpext float %i.ae to double
  %i.ag = fmul double %i.af, 0x3F60000000000000
  %i.ah = tail call double @exp(double noundef %i.ag) #3, !tbaa !4
  %6 = fdiv double %i.ah, 0x409921FB54442D18
  %7 = fmul double %5, %6                         ; 2 uses
  %i.ai = load i32, ptr %i.s, align 4, !tbaa !4
  %i.aj = sitofp i32 %i.ai to double
  %i.ak = fmul double %7, %i.aj
  %8 = fadd double %.17177.us.us.us.us, %i.ak     ; 3 uses
  %9 = fadd double %.178.us.us.us.us, %7          ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count103
  br i1 %exitcond.not, label %._crit_edge.us.us.us.us, label %bb.b, !llvm.loop !8
end_hunk_3
begin_hunk_4_@bilateralFilterKernel:bb.a
  br i1 %exitcond104.not, label %._crit_edge84.split.us.us.us.us, label %.preheader.us.us.us.us, !llvm.loop !10

._crit_edge84.split.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us
  %i.al = fdiv double %8, %9
  %i.am = fptosi double %i.al to i32
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv105
  store i32 %i.am, ptr %i.an, align 4, !tbaa !4
end_hunk_4
