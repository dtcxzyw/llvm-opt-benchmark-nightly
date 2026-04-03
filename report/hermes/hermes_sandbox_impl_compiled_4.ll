begin_hunk_0
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %.0.copyload.i4079 = load i32, ptr %i.bf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i4079) #7, !srcloc !13
  %i.bg = and i32 %.0.copyload.i4079, 2147483647  ; 2 uses
  %i.bh = add nuw i32 %i.bg, 2
  %i.bi = udiv i32 %i.bh, 3
  %i.bj = shl nuw i32 %i.bi, 2                    ; 3 uses
end_hunk_0
begin_hunk_1
  br i1 %i.bk, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.bl = add nuw nsw i32 %i.bj, 12
  %i.bm = and i32 %i.bl, 524280                   ; 4 uses
  %i.bn = add i32 %3, 1376
  %i.bo = zext i32 %i.bn to i64
  %.val3851 = load ptr, ptr %i.d, align 8, !tbaa !7
end_hunk_1
begin_hunk_2
  %i.cb = getelementptr inbounds nuw i8, ptr %.val3941, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 %i.bj, ptr %i.cc, align 1
  %i.cd = or disjoint i32 %i.bm, 67108864
  %.val3940 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ce = getelementptr inbounds nuw i8, ptr %.val3940, i64 %i.ca
  store i32 %i.cd, ptr %i.ce, align 1
end_hunk_2
