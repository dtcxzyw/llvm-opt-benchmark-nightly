begin_hunk_0
  %i.dh = ashr i16 %i.df, 5
  %i.di = sext i16 %i.dh to i32
  %i.dj = load i32, ptr %i.cu, align 4
  %9 = select i1 %i.dg, i32 %i.dj, i32 %i.di      ; 4 uses
  %10 = icmp slt i16 %.pre.i50, 0
  %i.dk = select i1 %10, i32 %i.de, i32 %.pre-phi9.i
  %11 = sub nsw i32 %i.dk, %.0.i52
  %12 = and i16 %i.df, 1
  %.not.i.i53 = icmp eq i16 %12, 0
  br i1 %.not.i.i53, label %.sink.split.i.i.i55, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit

.sink.split.i.i.i55:                              ; preds = %_ZNK6icu_7813UnicodeString8pinIndexERi.exit.i
  %spec.select.i.i56 = tail call i32 @llvm.smin.i32(i32 %9, i32 0) ; 2 uses
  %13 = icmp slt i32 %9, 0
  br i1 %13, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit, label %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i

_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i: ; preds = %.sink.split.i.i.i55
  %14 = sub nuw nsw i32 %9, %spec.select.i.i56
  %15 = tail call i32 @llvm.umin.i32(i32 %9, i32 %14) ; 2 uses
  %.not.i = icmp eq i32 %15, 0
  br i1 %.not.i, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i
  %i.dl = and i16 %i.df, 2
  %.not.i.i.i57 = icmp eq i16 %i.dl, 0
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = select i1 %.not.i.i.i57, ptr %i.do, ptr %i.dm
  %i.dq = tail call noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %i.dp, i32 noundef %spec.select.i.i56, i32 noundef %15, i32 noundef %.0.i52, i32 noundef %11) #8
  br label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit

bb.p:                                             ; preds = %bb.l
end_hunk_0
begin_hunk_1
  %i.ea = ashr i16 %i.dy, 5
  %i.eb = sext i16 %i.ea to i32
  %i.ec = load i32, ptr %i.cu, align 4
  %16 = select i1 %i.dz, i32 %i.ec, i32 %i.eb     ; 4 uses
  %17 = icmp slt i16 %.pre.i50, 0
  %i.ed = select i1 %17, i32 %i.dx, i32 %.pre-phi9.i65
  %18 = sub nsw i32 %i.ed, %.0.i66
  %19 = and i16 %i.dy, 1
  %.not.i.i67 = icmp eq i16 %19, 0
  br i1 %.not.i.i67, label %.sink.split.i.i.i69, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit79.thread

.sink.split.i.i.i69:                              ; preds = %_ZNK6icu_7813UnicodeString8pinIndexERi.exit.i64
  %spec.select.i.i70 = tail call i32 @llvm.smin.i32(i32 %16, i32 0) ; 2 uses
  %20 = icmp slt i32 %16, 0
  br i1 %20, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit79.thread, label %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i71

_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i71: ; preds = %.sink.split.i.i.i69
  %21 = sub nuw nsw i32 %16, %spec.select.i.i70
  %22 = tail call i32 @llvm.umin.i32(i32 %16, i32 %21) ; 2 uses
  %.not.i72 = icmp eq i32 %22, 0
  br i1 %.not.i72, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit79.thread, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit79

_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit79: ; preds = %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i71
  %i.ee = and i16 %i.dy, 2
  %.not.i.i.i73 = icmp eq i16 %i.ee, 0
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = select i1 %.not.i.i.i73, ptr %i.eh, ptr %i.ef
  %i.ej = tail call noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %i.ei, i32 noundef %spec.select.i.i70, i32 noundef %22, i32 noundef %.0.i66, i32 noundef %18) #8 ; 2 uses
  %i.ek = icmp sgt i32 %i.ej, -1
  br i1 %i.ek, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit79.thread

_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit79.thread: ; preds = %.sink.split.i.i.i69, %_ZNK6icu_7813UnicodeString8pinIndexERi.exit.i64, %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i71, %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit79
  %i.el = tail call noundef i32 @_ZNK6icu_786NFRule15findTextLenientERKNS_13UnicodeStringES3_iPi(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %3, ptr noundef nonnull %4)
  br label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit

_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit:   ; preds = %bb.o, %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i, %.sink.split.i.i.i55, %_ZNK6icu_7813UnicodeString8pinIndexERi.exit.i, %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit79.thread, %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit79, %bb.k
  %.3 = phi i32 [ %.1, %bb.k ], [ %i.ej, %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit79 ], [ %i.el, %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit79.thread ], [ %i.dq, %bb.o ], [ -1, %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i ], [ -1, %_ZNK6icu_7813UnicodeString8pinIndexERi.exit.i ], [ -1, %.sink.split.i.i.i55 ]
  ret i32 %.3
}

end_hunk_1
begin_hunk_2
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_2
