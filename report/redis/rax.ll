inline.NumInlined: 90
inline.NumDeleted: 5
begin_hunk_0_@raxAddChild:bb.a
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = load i32, ptr %1, align 4                ; 6 uses
  %i.f = and i32 %i.e, 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b, !prof !20
end_hunk_0
begin_hunk_1_@raxAddChild:bb.a
  %i.t = add nuw nsw i64 %i.j, %i.n
  %i.u = add nuw nsw i64 %i.t, %i.m
  %i.v = add nuw nsw i64 %i.u, %i.s               ; 2 uses
  %5 = and i32 %i.e, -8
  %i.w = add i32 %5, 8                            ; 2 uses
  %i.x = lshr exact i32 %i.w, 3                   ; 2 uses
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = add nuw nsw i64 %i.y, 4
  %i.aa = xor i32 %i.x, 3
end_hunk_1
begin_hunk_2_@raxAddChild:bb.a
  %i.ae = add nuw nsw i64 %i.z, %i.ad
  %i.af = add nuw nsw i64 %i.ae, %i.s
  %i.ag = add nuw nsw i64 %i.af, %i.ac            ; 3 uses
  %6 = or i32 %i.e, -8
  %7 = add i32 %6, %i.w
  store i32 %7, ptr %1, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.ah = call ptr @zmalloc_usable(i64 noundef 8, ptr noundef nonnull %i.d) #25 ; 5 uses
  %i.ai = icmp eq ptr %i.ah, null
end_hunk_2
begin_hunk_3_@raxRemoveChild:bb.a
  %i.at = add nsw i64 %i.aq, %i.as
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull align 8 %i.y, i64 %i.at, i1 false)
  %i.au = load i32, ptr %1, align 4               ; 4 uses
  %i.av = add i32 %i.au, -8                       ; 2 uses
  store i32 %i.av, ptr %1, align 4
  %i.aw = lshr i32 %i.av, 3                       ; 2 uses
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ay = add nuw nsw i64 %i.ax, 4
  %i.az = xor i32 %i.aw, 3
end_hunk_3
begin_hunk_4_@raxRemoveChild:bb.a
  %i.be = select i1 %.not65, i64 %i.bd, i64 8
  %i.bf = and i32 %i.au, 1
  %.not66 = icmp eq i32 %i.bf, 0
  %i.bg = shl i32 %i.au, 2
  %i.bh = and i32 %i.bg, 8
  %i.bi = xor i32 %i.bh, 8
  %narrow = select i1 %.not66, i32 0, i32 %i.bi
end_hunk_4
