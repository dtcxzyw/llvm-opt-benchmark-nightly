inline.NumInlined: 21
inline.NumDeleted: 2
begin_hunk_0_@geoaddCommand:bb.a
.lr.ph107:                                        ; preds = %.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ah = zext i32 %.066.lcssa133138 to i64       ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = add nuw nsw i32 %.066.lcssa133138, 1
  %i.al = zext i32 %i.ak to i64
end_hunk_0
begin_hunk_1_@geoaddCommand:bb.a
  br i1 %.not.1.i, label %bb.j, label %extractLongLatOrReply.exit

bb.j:                                             ; preds = %bb.i
  %2 = load double, ptr %i.a, align 16, !tbaa !20 ; 3 uses
  %3 = call double @llvm.fabs.f64(double %2)
  %or.cond.i = fcmp ogt double %3, 1.800000e+02
  %.pre.i = load double, ptr %i.ai, align 8, !tbaa !20 ; 3 uses
  %4 = call double @llvm.fabs.f64(double %.pre.i)
  %or.cond17.i = fcmp ogt double %4, 0x40554345B1A57F00
  %or.cond20.i = select i1 %or.cond.i, i1 true, i1 %or.cond17.i
  br i1 %or.cond20.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str, double noundef %2, double noundef %.pre.i) #14
  br label %extractLongLatOrReply.exit

extractLongLatOrReply.exit:                       ; preds = %bb.h, %bb.i, %bb.k
end_hunk_1
begin_hunk_2_@geoaddCommand:bb.a

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.bc = call i32 @geohashEncodeWGS84(double noundef %2, double noundef %.pre.i, i8 noundef zeroext 26, ptr noundef nonnull %1) #14 ; 0 uses
  %i.bd = load i64, ptr %1, align 8
  %i.be = load i8, ptr %i.aj, align 8
  %i.bf = call i64 @geohashAlign52Bits(i64 %i.bd, i8 %i.be) #14
end_hunk_2
begin_hunk_3_@llvm.smin.i64
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_3
