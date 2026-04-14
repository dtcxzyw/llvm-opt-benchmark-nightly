inline.NumInlined: 3368
inline.NumDeleted: 1576
begin_hunk_0_@_ZN3fmt3v116detail24write_fractional_secondsIcNS0_14basic_appenderIcEENSt6chrono8durationImSt5ratioILl1ELl1000EEEEEEvRT0_T1_i:bb.a
  %i.j = load i64, ptr %i.i, align 8, !tbaa !30
  %i.k = icmp ult i64 %i.a, %i.j
  %.neg.i.i = sext i1 %i.k to i32
  %i.l = add nsw i32 %.neg.i.i, %i.g              ; 7 uses
  %3 = sub nsw i32 3, %i.l
  %4 = icmp slt i32 %i.l, 3                       ; 2 uses
  %.sroa.speculated = select i1 %4, i32 %3, i32 0 ; 3 uses
  %i.m = icmp slt i32 %2, 0
  br i1 %i.m, label %bb.b, label %bb.f

end_hunk_0
begin_hunk_1_@_ZN3fmt3v116detail24write_fractional_secondsIcNS0_14basic_appenderIcEENSt6chrono8durationImSt5ratioILl1ELl1000EEEEEEvRT0_T1_i:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store i8 46, ptr %i.x, align 1, !tbaa !18
  %.sroa.016.0.copyload = load ptr, ptr %0, align 8, !tbaa !3356 ; 7 uses
  br i1 %4, label %.lr.ph.i, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 8 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN3fmt3v116detail24write_fractional_secondsIcNS0_14basic_appenderIcEENSt6chrono8durationImSt5ratioILl1ELl1000EEEEEEvRT0_T1_i:bb.a
  %i.aw = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated, i32 %2) ; 2 uses
  %i.ax = sub nsw i32 %2, %i.aw                   ; 5 uses
  %.sroa.07.0.copyload = load ptr, ptr %0, align 8, !tbaa !3356 ; 9 uses
  %.not97 = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not97, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit78, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit70
end_hunk_2
begin_hunk_3_@llvm.umin.i64
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_3
