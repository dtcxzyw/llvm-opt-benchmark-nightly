begin_hunk_0
  %i.am = ashr i16 %i.ak, 5
  %i.an = sext i16 %i.am to i32
  %i.ao = load i32, ptr %i.x, align 4
  %i.ap = select i1 %i.al, i32 %i.ao, i32 %i.an   ; 2 uses
  %.not.i.i = trunc i16 %i.ak to i1
  %i.aq = icmp slt i32 %i.ap, 1
  %or.cond3.i = select i1 %.not.i.i, i1 true, i1 %i.aq
  br i1 %or.cond3.i, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit

_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit:    ; preds = %bb.l
  %22 = load i16, ptr %i.y, align 8               ; 2 uses
  %23 = icmp slt i16 %22, 0
  %24 = load i32, ptr %i.z, align 4
  %25 = ashr i16 %22, 5
  %26 = sext i16 %25 to i32
  %27 = select i1 %23, i32 %24, i32 %26
  %i.ar = and i16 %i.ak, 2
  %.not.i.i.i = icmp eq i16 %i.ar, 0
  %i.as = load ptr, ptr %i.ab, align 8
  %i.at = select i1 %.not.i.i.i, ptr %i.as, ptr %i.aa
  %i.au = call noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %i.at, i32 noundef 0, i32 noundef %i.ap, i32 noundef 0, i32 noundef %27) #15
  %.not93 = icmp eq i32 %i.au, -1
  br i1 %.not93, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread, label %bb.t

_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread: ; preds = %bb.l, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit
  %i.av = call ptr @ures_getNextResource_78(ptr noundef %i.ag, ptr noundef null, ptr noundef nonnull %i.e) #15 ; 5 uses
  %i.aw = call ptr @ures_getKey_78(ptr noundef %i.av) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
end_hunk_0
begin_hunk_1
; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
begin_hunk_2
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }

end_hunk_2
