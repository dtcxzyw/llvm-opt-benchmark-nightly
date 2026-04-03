begin_hunk_0
  br i1 %.not.i.i, label %_ZN12OutputStreampLEc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 %i.m, 1                  ; 2 uses
  store i64 %i.p, ptr %i.o, align 8
  %i.q = tail call ptr @realloc(ptr noundef nonnull %1, i64 noundef %i.p) #23 ; 3 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !45
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %_ZN12OutputStreampLEc.exit
end_hunk_0
