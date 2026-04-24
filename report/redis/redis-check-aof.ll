inline.NumInlined: 8
begin_hunk_0_@checkMultiPartAof:bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %i.a = tail call ptr @aofLoadManifestFromFile(ptr noundef %1) #14 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not = icmp ne ptr %i.b, null                  ; 2 uses
  %spec.select.a = zext i1 %.not to i32           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %.not42 = icmp eq ptr %i.d, null
  br i1 %.not42, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !33
  %4 = trunc i64 %i.f to i32
  %5 = add i32 %4, %spec.select.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_0
