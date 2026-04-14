inline.NumInlined: 38
inline.NumDeleted: 17
begin_hunk_0_@_ZN4absl16strings_internal10ParseFloatILi10EEENS0_11ParsedFloatEPKcS4_NS_12chars_formatE:bb.a
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i8 0, ptr %i.d, align 1
  %i.m = call fastcc noundef i32 @_ZN4absl12_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS3_iPT0_Pb(ptr noundef %.0.lcssa, ptr noundef %2, i32 noundef 19, ptr noundef %i.c, ptr noundef %i.d) ; 4 uses
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %.0.lcssa, i64 %i.n ; 5 uses
  %i.p = icmp sgt i32 %i.m, 49999999
  br i1 %i.p, label %bb.w, label %bb.d

bb.d:                                             ; preds = %.critedge
  %4 = tail call i32 @llvm.smin.i32(i32 %i.m, i32 19)
  %i.q = sub nsw i32 19, %4                       ; 2 uses
  %i.r = tail call i32 @llvm.smax.i32(i32 %i.m, i32 19)
  %.083 = add nsw i32 %i.r, -19                   ; 4 uses
  %i.s = icmp ult ptr %i.o, %2
end_hunk_0
begin_hunk_1_@_ZN4absl16strings_internal10ParseFloatILi10EEENS0_11ParsedFloatEPKcS4_NS_12chars_formatE:bb.a
bb.h:                                             ; preds = %.critedge3, %bb.f
  %.285 = phi i32 [ %i.aj, %.critedge3 ], [ %.083, %bb.f ]
  %.2 = phi ptr [ %.1.lcssa, %.critedge3 ], [ %i.v, %bb.f ] ; 2 uses
  %i.ak = call fastcc noundef i32 @_ZN4absl12_GLOBAL__N_113ConsumeDigitsILi10EmEEiPKcS3_iPT0_Pb(ptr noundef nonnull %.2, ptr noundef nonnull %2, i32 noundef %i.q, ptr noundef %i.c, ptr noundef %i.d) ; 3 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %.2, i64 %i.al
  %i.an = icmp slt i32 %i.ak, 50000000
  %.089. = tail call i32 @llvm.smin.i32(i32 %i.ak, i32 %i.q)
  %.386 = sub nsw i32 %.285, %.089.
  br i1 %i.an, label %bb.i, label %bb.w

end_hunk_1
begin_hunk_2_@_ZN4absl16strings_internal10ParseFloatILi16EEENS0_11ParsedFloatEPKcS4_NS_12chars_formatE:bb.a
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i8 0, ptr %i.d, align 1
  %i.m = call fastcc noundef i32 @_ZN4absl12_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS3_iPT0_Pb(ptr noundef %.0.lcssa, ptr noundef %2, i32 noundef 15, ptr noundef %i.c, ptr noundef %i.d) ; 4 uses
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %.0.lcssa, i64 %i.n ; 5 uses
  %i.p = icmp sgt i32 %i.m, 12499999
  br i1 %i.p, label %bb.w, label %bb.d

bb.d:                                             ; preds = %.critedge
  %4 = tail call i32 @llvm.smin.i32(i32 %i.m, i32 15)
  %i.q = sub nsw i32 15, %4                       ; 2 uses
  %i.r = tail call i32 @llvm.smax.i32(i32 %i.m, i32 15)
  %.081 = add nsw i32 %i.r, -15                   ; 4 uses
  %i.s = icmp ult ptr %i.o, %2
end_hunk_2
begin_hunk_3_@_ZN4absl16strings_internal10ParseFloatILi16EEENS0_11ParsedFloatEPKcS4_NS_12chars_formatE:bb.a
bb.h:                                             ; preds = %.critedge3, %bb.f
  %.283 = phi i32 [ %i.aj, %.critedge3 ], [ %.081, %bb.f ]
  %.2 = phi ptr [ %.1.lcssa, %.critedge3 ], [ %i.v, %bb.f ] ; 2 uses
  %i.ak = call fastcc noundef i32 @_ZN4absl12_GLOBAL__N_113ConsumeDigitsILi16EmEEiPKcS3_iPT0_Pb(ptr noundef nonnull %.2, ptr noundef nonnull %2, i32 noundef %i.q, ptr noundef %i.c, ptr noundef %i.d) ; 3 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %.2, i64 %i.al
  %i.an = icmp slt i32 %i.ak, 12500000
  %.087. = tail call i32 @llvm.smin.i32(i32 %i.ak, i32 %i.q)
  %.384 = sub nsw i32 %.283, %.087.
  br i1 %i.an, label %bb.i, label %bb.w

end_hunk_3
begin_hunk_4_@llvm.memset.p0.i64
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_4
