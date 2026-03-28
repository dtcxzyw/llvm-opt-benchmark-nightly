begin_hunk_0
  %i.c = add nuw nsw i64 %i.b, 8                  ; 2 uses
  %.val312 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val312, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #9, !srcloc !14
  %i.e = icmp ult i32 %.0.copyload.i, 65
  br i1 %i.e, label %bb.b, label %bb.c
end_hunk_0
begin_hunk_1
  %i.n = zext i32 %.0.copyload.i to i64
  %i.o = add nuw nsw i64 %i.n, 63
  %i.p = lshr i64 %i.o, 6                         ; 2 uses
  %i.q = trunc nuw nsw i64 %i.p to i32            ; 3 uses
  %i.r = and i32 %i.q, 3                          ; 2 uses
  %.val311 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.val311, i64 %i.b
  %.0.copyload.i338 = load i32, ptr %i.s, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i338) #9, !srcloc !14
  %2 = icmp ugt i32 %.0.copyload.i, 192
  br i1 %2, label %bb.d, label %.loopexit356

bb.d:                                             ; preds = %bb.c
  %i.t = and i32 %i.q, 134217724
end_hunk_1
begin_hunk_2

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.x = trunc i64 %indvars.iv to i32
  %i.y = shl i32 %i.x, 3                          ; 4 uses
  %i.z = add i32 %i.y, %.0.copyload.i338
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
end_hunk_2
begin_hunk_3
  %.val1122 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ki = getelementptr inbounds nuw i8, ptr %.val1122, i64 %i.kh
  store i64 %i.kg, ptr %i.ki, align 1
  %.not1047 = icmp eq i64 %i.kg, -281474976710656
  br i1 %.not1047, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg, %bb.bf
end_hunk_3
begin_hunk_4
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %.val550, i64 %i.j
  store i8 %i.ah, ptr %i.ai, align 1
  %i.aj = icmp eq i32 %i.ag, 64
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
end_hunk_4
begin_hunk_5
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %.val544, i64 %i.j
  store i8 %i.bg, ptr %i.bh, align 1
  %i.bi = icmp eq i32 %i.bf, 64
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
end_hunk_5
begin_hunk_6

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2 = phi i32 [ 0, %bb.h ], [ %i.bf, %bb.g ]    ; 2 uses
  %.not518 = icmp eq i32 %.2, 56
  br i1 %.not518, label %.loopexit, label %bb.g

.loopexit:                                        ; preds = %bb.i, %.loopexit601
end_hunk_6
begin_hunk_7
  %i.dv = trunc i32 %i.du to i8
  %i.dw = getelementptr inbounds nuw i8, ptr %.val529, i64 %i.j
  store i8 %i.dv, ptr %i.dw, align 1
  %i.dx = icmp eq i32 %i.du, 64
  br i1 %i.dx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
end_hunk_7
