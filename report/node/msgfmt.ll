begin_hunk_0
  %i.fl = ashr i16 %i.fd, 5
  %i.fm = sext i16 %i.fl to i32
  %i.fn = load i32, ptr %i.ba, align 4
  %11 = select i1 %i.fk, i32 %i.fn, i32 %i.fm     ; 4 uses
  %12 = icmp slt i16 %.pre.i, 0
  %i.fo = select i1 %12, i32 %i.fj, i32 %.pre8.i
  %13 = sub nsw i32 %i.fo, %.0.i139
  %14 = and i16 %i.fd, 1
  %.not.i.i140 = icmp eq i16 %14, 0
  br i1 %.not.i.i140, label %.sink.split.i.i.i142, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit.thread

.sink.split.i.i.i142:                             ; preds = %_ZNK6icu_7813UnicodeString8pinIndexERi.exit.i
  %spec.select.i.i143 = call i32 @llvm.smin.i32(i32 %11, i32 0) ; 2 uses
  %15 = icmp slt i32 %11, 0
  br i1 %15, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit.thread, label %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i

_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i: ; preds = %.sink.split.i.i.i142
  %16 = sub nuw nsw i32 %11, %spec.select.i.i143
  %17 = call i32 @llvm.umin.i32(i32 %11, i32 %16) ; 2 uses
  %.not.i144 = icmp eq i32 %17, 0
  br i1 %.not.i144, label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit.thread, label %bb.w

bb.w:                                             ; preds = %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i
  %i.fp = and i16 %i.fd, 2
  %.not.i.i.i145 = icmp eq i16 %i.fp, 0
  %i.fq = load ptr, ptr %i.bc, align 8
  %i.fr = select i1 %.not.i.i.i145, ptr %i.fq, ptr %i.bb
  %i.fs = call noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %i.fr, i32 noundef %spec.select.i.i143, i32 noundef %17, i32 noundef %.0.i139, i32 noundef %13) #17
  br label %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit

bb.x:                                             ; preds = %_ZNK6icu_7813MessageFormat33getLiteralStringUntilNextArgumentEi.exit
end_hunk_0
begin_hunk_1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.ah

_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit.thread: ; preds = %.sink.split.i.i.i142, %_ZNK6icu_7813UnicodeString8pinIndexERi.exit.i, %_ZNK6icu_7813UnicodeString10pinIndicesERiS1_.exit.i.i, %_ZNK6icu_7813UnicodeString7indexOfERKS0_i.exit
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.ck, ptr %i.gz, align 4
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %8) #17
end_hunk_1
begin_hunk_2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16
end_hunk_2
