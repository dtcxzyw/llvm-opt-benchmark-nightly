begin_hunk_0
  tail call void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull @.str.5)
  %i.g = load i32, ptr %i.a, align 8              ; 2 uses
  %i.h = load i32, ptr %i.c, align 8
  %i.i = udiv i32 %i.g, %i.h                      ; 2 uses
  %i.j = add i32 %i.i, 1                          ; 3 uses
  %i.k = udiv i32 %i.g, %i.j                      ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 236
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.o = mul i32 %i.k, %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
end_hunk_0
begin_hunk_1

bb.e:                                             ; preds = %_ZN8aiStringaSERKS_.exit
  %i.bn = load i32, ptr %i.a, align 8
  %i.bo = sub i32 %i.bn, %i.o
  %4 = add i32 %i.bo, %i.k                        ; 2 uses
  store i32 %4, ptr %i.az, align 8
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN8aiStringaSERKS_.exit, %bb.e
  %i.bp = phi i32 [ %4, %bb.e ], [ %i.k, %_ZN8aiStringaSERKS_.exit ] ; 6 uses
  %i.bq = zext i32 %i.bp to i64                   ; 3 uses
  %i.br = shl nuw nsw i64 %i.bq, 4
  %i.bs = or disjoint i64 %i.br, 8
end_hunk_1
