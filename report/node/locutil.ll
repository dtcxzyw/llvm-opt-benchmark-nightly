inline.NumInlined: 84
inline.NumDeleted: 50
begin_hunk_0_@_ZN6icu_7813LocaleUtility12isFallbackOfERKNS_13UnicodeStringES3_:bb.a
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e       ; 2 uses
  %.not.i.i = trunc i16 %i.b to i1
  %i.i = icmp slt i32 %i.h, 1
  %or.cond3.i = select i1 %.not.i.i, i1 true, i1 %i.i
  br i1 %or.cond3.i, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit

_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit:    ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %3 = load i16, ptr %2, align 8                  ; 2 uses
  %4 = icmp slt i16 %3, 0
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %6 = load i32, ptr %5, align 4
  %7 = ashr i16 %3, 5
  %8 = sext i16 %7 to i32
  %9 = select i1 %4, i32 %6, i32 %8
  %i.j = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %.not.i.i.i, ptr %i.m, ptr %i.k
  %i.o = tail call noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %i.n, i32 noundef 0, i32 noundef %i.h, i32 noundef 0, i32 noundef %9) #6
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.b, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread

end_hunk_0
begin_hunk_1_@_ZN6icu_7813LocaleUtility12isFallbackOfERKNS_13UnicodeStringES3_:bb.a
  %i.r = icmp slt i16 %i.q, 0
  %i.s = ashr i16 %i.q, 5
  %i.t = sext i16 %i.s to i32
  %i.u = load i32, ptr %5, align 4
  %i.v = select i1 %i.r, i32 %i.u, i32 %i.t       ; 2 uses
  %i.w = load i16, ptr %i.a, align 8              ; 2 uses
  %i.x = icmp slt i16 %i.w, 0
end_hunk_1
begin_hunk_2_@_ZN6icu_7813LocaleUtility12isFallbackOfERKNS_13UnicodeStringES3_:bb.a
  %i.am = icmp eq i16 %i.al, 95
  br label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread

_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread: ; preds = %bb.d, %bb.c, %bb.a, %bb.b, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit
  %10 = phi i1 [ false, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit ], [ true, %bb.b ], [ false, %bb.a ], [ %i.am, %bb.d ], [ false, %bb.c ]
  ret i1 %10
}

declare noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64), i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1
end_hunk_2
begin_hunk_3_@_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_3
