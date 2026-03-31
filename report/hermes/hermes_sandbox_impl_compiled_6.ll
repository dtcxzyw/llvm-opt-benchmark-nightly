begin_hunk_0
  %i.c = add nuw nsw i64 %i.b, 8                  ; 2 uses
  %.val312 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val312, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #9, !srcloc !14
  %i.e = icmp ult i32 %.0.copyload.i, 65
  br i1 %i.e, label %bb.b, label %bb.c
end_hunk_0
begin_hunk_1
  %i.n = zext i32 %.0.copyload.i to i64
  %i.o = add nuw nsw i64 %i.n, 63
  %i.p = lshr i64 %i.o, 6                         ; 2 uses
  %i.q = trunc nuw nsw i64 %i.p to i32            ; 4 uses
  %i.r = and i32 %i.q, 3                          ; 2 uses
  %.val311 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.val311, i64 %i.b
  %.0.copyload.i338 = load i32, ptr %i.s, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i338) #9, !srcloc !14
  %2 = add nsw i32 %i.q, -4
  %3 = icmp ult i32 %2, -3
  br i1 %3, label %bb.d, label %.loopexit356

bb.d:                                             ; preds = %bb.c
  %i.t = and i32 %i.q, 134217724
end_hunk_1
