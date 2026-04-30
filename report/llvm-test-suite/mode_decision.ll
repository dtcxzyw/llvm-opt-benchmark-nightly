inline.NumInlined: 14
inline.NumDeleted: 2
begin_hunk_0_@sqrt
; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @adjust_mb16x16_cost(i32 noundef %0) local_unnamed_addr #12 {
bb.a:
  %i.a = sitofp i32 %0 to double                  ; 2 uses
  store double %i.a, ptr @mb16x16_cost, align 8, !tbaa !86
  %i.b = load ptr, ptr @mb16x16_cost_frame, align 8, !tbaa !83
  %i.c = load ptr, ptr @img, align 8, !tbaa !18   ; 4 uses
end_hunk_0
begin_hunk_1_@adjust_mb16x16_cost:bb.a
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.f
  store double %i.a, ptr %i.g, align 8, !tbaa !86
  %1 = load double, ptr @mb16x16_cost, align 8, !tbaa !86 ; 2 uses
  %2 = fcmp olt double %1, 5.120000e+02
  br i1 %2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 15504
end_hunk_1
begin_hunk_2_@adjust_mb16x16_cost:bb.a
  %i.r = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.q
  %i.s = load double, ptr %i.r, align 8, !tbaa !86
  %i.t = fmul double %i.s, 5.120000e+02
  %i.u = fdiv double %1, %i.t
  %i.v = tail call double @sqrt(double noundef %i.u) #16, !tbaa !4
  br label %bb.c

end_hunk_2
