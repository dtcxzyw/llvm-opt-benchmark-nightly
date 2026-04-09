inline.NumInlined: 5
inline.NumDeleted: 4
begin_hunk_0_@_ZL43UConverter_fromUnicode_CompoundText_OFFSETSP25UConverterFromUnicodeArgsP10UErrorCode:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8              ; 4 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
end_hunk_0
begin_hunk_1_@_ZL43UConverter_fromUnicode_CompoundText_OFFSETSP25UConverterFromUnicodeArgsP10UErrorCode:bb.a
  %.2130 = phi i32 [ %i.ao, %bb.g ], [ %i.ab, %bb.c ] ; 45 uses
  %.2118 = phi i32 [ %.1117, %bb.g ], [ %.0116, %bb.c ] ; 5 uses
  %.3107 = phi ptr [ %i.al, %bb.g ], [ %i.z, %bb.c ] ; 3 uses
  %.2 = phi ptr [ %.1, %bb.g ], [ %.0103, %bb.c ] ; 6 uses
  %.2271 = ptrtoint ptr %.2 to i64
  %.2270 = ptrtoaddr ptr %.2 to i64
  switch i32 %.2130, label %bb.k [
    i32 10, label %_ZL8getStatei.exit
    i32 9, label %_ZL8getStatei.exit
end_hunk_1
begin_hunk_2_@_ZL43UConverter_fromUnicode_CompoundText_OFFSETSP25UConverterFromUnicodeArgsP10UErrorCode:bb.a
  br i1 %i.fq, label %.lr.ph182.preheader, label %thread-pre-split

.lr.ph182.preheader:                              ; preds = %.loopexit154
  %wide.trip.count = zext nneg i32 %.6127 to i64  ; 2 uses
  %2 = call i64 @llvm.usub.sat.i64(i64 %i.j, i64 %.2271)
  %i.fr = add nsw i64 %wide.trip.count, -1
  %umin272 = call i64 @llvm.umin.i64(i64 %2, i64 %i.fr)
  %i.fs = add i64 %umin272, 1                     ; 3 uses
  %min.iters.check274 = icmp ult i64 %i.fs, 33
  %i.ft = sub i64 %.2270, %i.b
  %diff.check = icmp ult i64 %i.ft, 32
  %or.cond310 = select i1 %min.iters.check274, i1 true, i1 %diff.check
  br i1 %or.cond310, label %.lr.ph182.preheader313, label %vector.ph275
end_hunk_2
begin_hunk_3_@_ZL43UConverter_fromUnicode_CompoundText_OFFSETSP25UConverterFromUnicodeArgsP10UErrorCode:bb.a

.lr.ph182:                                        ; preds = %.lr.ph182.preheader313, %bb.ak
  %indvars.iv214 = phi i64 [ %indvars.iv.next215, %bb.ak ], [ %indvars.iv214.ph, %.lr.ph182.preheader313 ] ; 3 uses
  %.3181 = phi ptr [ %i.gd, %bb.ak ], [ %.3181.ph, %.lr.ph182.preheader313 ] ; 4 uses
  %3 = icmp ult ptr %.3181, %i.i
  br i1 %3, label %bb.ak, label %.critedge

bb.ak:                                            ; preds = %.lr.ph182
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv214
end_hunk_3
begin_hunk_4_@_ZL43UConverter_fromUnicode_CompoundText_OFFSETSP25UConverterFromUnicodeArgsP10UErrorCode:bb.a
  br i1 %exitcond.not.a, label %thread-pre-split, label %.lr.ph182, !llvm.loop !22

.critedge:                                        ; preds = %.lr.ph182
  %i.ge = trunc nuw nsw i64 %indvars.iv214 to i32
  store i32 15, ptr %1, align 4
  br label %.preheader

end_hunk_4
begin_hunk_5_@ucnv_MBCSGetUnicodeSetForUnicode_78
declare void @ucnv_MBCSGetUnicodeSetForUnicode_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_5
