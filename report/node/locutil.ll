begin_hunk_0
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e       ; 4 uses
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %3 = load i16, ptr %2, align 8                  ; 2 uses
  %i.i = icmp slt i16 %3, 0
  %4 = ashr i16 %3, 5
  %5 = sext i16 %4 to i32
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %7 = load i32, ptr %6, align 4
  %8 = select i1 %i.i, i32 %7, i32 %5
  %9 = and i16 %i.b, 1
  %.not.i.i = icmp eq i16 %9, 0
  br i1 %.not.i.i, label %.sink.split.i.i.i, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread

.sink.split.i.i.i:                                ; preds = %bb.a
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.h, i32 0) ; 2 uses
  %10 = icmp slt i32 %i.h, 0
  br i1 %10, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread, label %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i

_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i: ; preds = %.sink.split.i.i.i
  %11 = sub nuw nsw i32 %i.h, %spec.select.i.i
  %12 = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %11) ; 2 uses
  %.not.i = icmp eq i32 %12, 0
  br i1 %.not.i, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit

_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit:    ; preds = %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i
  %i.j = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %.not.i.i.i, ptr %i.m, ptr %i.k
  %i.o = tail call noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %i.n, i32 noundef %spec.select.i.i, i32 noundef %12, i32 noundef 0, i32 noundef %8) #6
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.b, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread

end_hunk_0
begin_hunk_1
  %i.r = icmp slt i16 %i.q, 0
  %i.s = ashr i16 %i.q, 5
  %i.t = sext i16 %i.s to i32
  %i.u = load i32, ptr %6, align 4
  %i.v = select i1 %i.r, i32 %i.u, i32 %i.t       ; 2 uses
  %i.w = load i16, ptr %i.a, align 8              ; 2 uses
  %i.x = icmp slt i16 %i.w, 0
end_hunk_1
begin_hunk_2
  %i.am = icmp eq i16 %i.al, 95
  br label %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread

_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit.thread: ; preds = %bb.d, %bb.c, %.sink.split.i.i.i, %bb.a, %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i, %bb.b, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit
  %13 = phi i1 [ false, %_ZNK6icu_7813UnicodeString7indexOfERKS0_.exit ], [ true, %bb.b ], [ false, %.sink.split.i.i.i ], [ false, %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i ], [ false, %bb.a ], [ %i.am, %bb.d ], [ false, %bb.c ]
  ret i1 %13
}

declare noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64), i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1
end_hunk_2
begin_hunk_3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_3
