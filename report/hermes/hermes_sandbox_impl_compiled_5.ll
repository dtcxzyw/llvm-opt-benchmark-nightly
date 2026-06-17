inline.NumInlined: 16806
inline.NumDeleted: 26
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpPrototypeToString0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %.val585 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ex = getelementptr inbounds nuw i8, ptr %.val585, i64 %i.ae
  %.0.copyload.i666 = load i32, ptr %i.ex, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i666) #8, !srcloc !19
  %.val584 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ey = getelementptr inbounds nuw i8, ptr %.val584, i64 %i.dj
  %.0.copyload.i667 = load i32, ptr %i.ey, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i667) #8, !srcloc !19
  %i.ez = icmp ult i32 %.0.copyload.i667, 65536
  %.val562 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fa = getelementptr inbounds nuw i8, ptr %.val562, i64 %i.q ; 2 uses
  br i1 %i.ez, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 148
  store i32 %.0.copyload.i667, ptr %i.fb, align 1
  %i.fc = add nuw nsw i64 %i.q, 144               ; 2 uses
  %.val561 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fd = getelementptr inbounds nuw i8, ptr %.val561, i64 %i.fc
  store i32 %.0.copyload.i666, ptr %i.fd, align 1
  %.val626 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fe = getelementptr inbounds nuw i8, ptr %.val626, i64 %i.fc
  %.0.copyload.i668 = load i64, ptr %i.fe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i668) #8, !srcloc !20
  %.val617 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ff = getelementptr inbounds nuw i8, ptr %.val617, i64 %i.q
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store i64 %.0.copyload.i668, ptr %i.fg, align 1
  %i.fh = add i32 %i.b, -152
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AcreateDynamic0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %3, i32 noundef %i.fh) #8
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fa, i64 140
  store i32 %.0.copyload.i667, ptr %i.fi, align 1
  %i.fj = add nuw nsw i64 %i.q, 136               ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fk = getelementptr inbounds nuw i8, ptr %.val, i64 %i.fj
  store i32 %.0.copyload.i666, ptr %i.fk, align 1
  %.val625 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fl = getelementptr inbounds nuw i8, ptr %.val625, i64 %i.fj
  %.0.copyload.i669 = load i64, ptr %i.fl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i669) #8, !srcloc !20
  %.val616 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fm = getelementptr inbounds nuw i8, ptr %.val616, i64 %i.q
  store i64 %.0.copyload.i669, ptr %i.fm, align 1
  %i.fn = add i32 %i.b, -16                       ; 2 uses
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar16_t0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x20hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AarrayToString0x3Cchar16_t0x3E0x28llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.fn, i32 noundef %i.c) #8
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACallResult0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x2C0x200x28hermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3ACallResultSpecialize0x2920x3E0x20hermes0x3A0x3Avm0x3A0x3AExternalStringPrimitive0x3Cchar16_t0x3E0x3A0x3Acreate0x3Cstd0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar16_t0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x3E0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar16_t0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x260x260x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %3, i32 noundef %i.fn) #8
  %.val624 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fo = getelementptr inbounds nuw i8, ptr %.val624, i64 %i.q
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 155
  %.0.copyload.i670 = load i8, ptr %i.fp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i670) #8, !srcloc !22
  %i.fq = icmp sgt i8 %.0.copyload.i670, -1
  br i1 %i.fq, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.val583 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fr = getelementptr inbounds nuw i8, ptr %.val583, i64 %i.q
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 144
  %.0.copyload.i671 = load i32, ptr %i.fs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i671) #8, !srcloc !19
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i671) #8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.ae
  %.val582 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ft = getelementptr inbounds nuw i8, ptr %.val582, i64 %i.ae
  %.0.copyload.i672 = load i32, ptr %i.ft, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i672) #8, !srcloc !19
  %i.fu = icmp eq i32 %.0.copyload.i672, %i.dl
  br i1 %i.fu, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i672) #8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.v, %bb.q, %bb.l, %bb.g, %bb.e
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpPrototypeTest0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = add i32 %i.b, -32                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 15 uses
  %i.e = zext i32 %4 to i64                       ; 2 uses
  %.val106 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val106, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.h = zext i32 %i.c to i64                     ; 4 uses
  %.val101 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val101, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %.0.copyload.i, ptr %i.j, align 1
  %.val112 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val112, i64 %i.e
  %.0.copyload.i113 = load i64, ptr %i.k, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i113) #8, !srcloc !20
  %.val109 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val109, i64 %i.h
  store i64 %.0.copyload.i113, ptr %i.l, align 1
  %i.m = add i32 %i.b, -16
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpPrototypeExec0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %i.m, i32 poison, i32 noundef %3, i32 noundef %i.c)
  %.val105 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val105, i64 %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.0.copyload.i114 = load i32, ptr %i.o, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i114) #8, !srcloc !19
  %.not = icmp eq i32 %.0.copyload.i114, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = zext i32 %1 to i64
  %.val100 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val100, i64 %i.p
  store i32 0, ptr %i.q, align 1
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.val111 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val111, i64 %i.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.0.copyload.i115 = load i64, ptr %i.s, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i115) #8, !srcloc !20
  %i.t = zext i32 %3 to i64
  %.val104 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val104, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.0.copyload.i116 = load i32, ptr %i.v, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i116) #8, !srcloc !19
  %i.w = zext i32 %.0.copyload.i116 to i64        ; 2 uses
  %i.x = add nuw nsw i64 %i.w, 164                ; 2 uses
  %.val103 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val103, i64 %i.x
  %.0.copyload.i117 = load i32, ptr %i.y, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i117) #8, !srcloc !19
  %.val102 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val102, i64 %i.w
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 168
  %.0.copyload.i118 = load i32, ptr %i.aa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i118) #8, !srcloc !19
  %i.ab = icmp ult i32 %.0.copyload.i117, %.0.copyload.i118
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = add i32 %.0.copyload.i117, 8
  %.val99 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val99, i64 %i.x
  store i32 %i.ac, ptr %i.ad, align 1
  %i.ae = zext i32 %.0.copyload.i117 to i64
  %.val108 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val108, i64 %i.ae
  store i64 %.0.copyload.i115, ptr %i.af, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ag = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i116, i64 noundef %.0.copyload.i115) #8
  %i.ah = zext i32 %i.ag to i64
  %.val110 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val110, i64 %i.ah
  %.0.copyload.i119 = load i64, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i119) #8, !srcloc !20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i64 [ %.0.copyload.i115, %bb.d ], [ %.0.copyload.i119, %bb.e ]
  %i.aj = zext i32 %1 to i64                      ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 %i.aj
  store i32 1, ptr %i.ak, align 1
  %.mask = and i64 %.0, -140737488355328
  %i.al = icmp ne i64 %.mask, -1548112371908608
  %i.am = zext i1 %i.al to i64
  %i.an = or disjoint i64 %i.am, -1407374883553280
  %.val107 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %.val107, i64 %i.aj
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.an, ptr %i.ap, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpPrototypeSymbolSplit0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 25 uses
  %i.c = add i32 %i.b, -384                       ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 170 uses
  %i.e = zext i32 %i.c to i64                     ; 39 uses
  %.val1486 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val1486, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  store i32 %3, ptr %i.g, align 1
  %i.h = zext i32 %3 to i64
  %i.i = add nuw nsw i64 %i.h, 4                  ; 12 uses
  %.val1552 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val1552, i64 %i.i
  %.0.copyload.i = load i32, ptr %i.j, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.k = add i32 %i.b, -28                        ; 2 uses
  %i.l = add i32 %i.b, -168                       ; 2 uses
  %i.m = zext i32 %i.k to i64
  %.val1485 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val1485, i64 %i.m
  store i32 %i.l, ptr %i.n, align 1
  %.val1570 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val1570, i64 %i.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 348
  store i64 17179869185, ptr %i.p, align 1
  %i.q = add nuw nsw i64 %i.e, 344                ; 2 uses
  %.val1484 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val1484, i64 %i.q
  store i32 %i.k, ptr %i.r, align 1
  %.val1483 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val1483, i64 %i.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 212
  store i32 %.0.copyload.i, ptr %i.t, align 1
  %i.u = add nuw nsw i64 %i.e, 380                ; 3 uses
  %.val1482 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.val1482, i64 %i.u
  store i32 0, ptr %i.v, align 1
  %i.w = add i32 %i.b, -40
  %i.x = add nuw nsw i64 %i.e, 376                ; 2 uses
  %.val1481 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val1481, i64 %i.x
  store i32 %i.w, ptr %i.y, align 1
  %i.z = add nuw nsw i64 %i.e, 372                ; 3 uses
  %.val1480 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1480, i64 %i.z
  store i32 %i.l, ptr %i.aa, align 1
  %i.ab = add i32 %i.b, -176                      ; 2 uses
  %.val1479 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1479, i64 %i.i
  store i32 %i.ab, ptr %i.ac, align 1
  %i.ad = zext i32 %4 to i64                      ; 2 uses
  %.val1551 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1551, i64 %i.ad
  %.0.copyload.i1598 = load i32, ptr %i.ae, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1598) #8, !srcloc !19
  %i.af = zext i32 %.0.copyload.i1598 to i64
  %.val1582 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1582, i64 %i.af
  %.0.copyload.i1599 = load i64, ptr %i.ag, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1599) #8, !srcloc !20
  %i.ah = icmp ugt i64 %.0.copyload.i1599, -844424930131969
  br i1 %i.ah, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ai = and i64 %.0.copyload.i1599, 4294967295
  %.val1550 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val1550, i64 %i.ai
  %.0.copyload.i1600 = load i32, ptr %i.aj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1600) #8, !srcloc !19
  %i.ak = add i32 %.0.copyload.i1600, -436207616
  %i.al = icmp ult i32 %i.ak, 855638016
  br i1 %i.al, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.val1478 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.val1478, i64 %i.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 160
  store i32 0, ptr %i.an, align 1
  %.val1569 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %.val1569, i64 %i.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 152
  store i64 249108103169, ptr %i.ap, align 1
  %.val1477 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %.val1477, i64 %i.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 136
  store i32 3, ptr %i.ar, align 1
  %.val1476 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.val1476, i64 %i.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 128
  store i32 60399, ptr %i.at, align 1
  %i.au = add i32 %i.b, -256
  %i.av = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseTypeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.au) #8
  %i.aw = zext i32 %1 to i64
  %.val1475 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %.val1475, i64 %i.aw
  store i32 %i.av, ptr %i.ax, align 1
  br label %.loopexit1692

bb.d:                                             ; preds = %bb.b
  %i.ay = add i32 %.0.copyload.i1598, -8
  %.val1549 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.val1549, i64 %i.ad
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %.0.copyload.i1601 = load i32, ptr %i.ba, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1601) #8, !srcloc !19
  %.not = icmp eq i32 %.0.copyload.i1601, 0
  %i.bb = select i1 %.not, i32 70392, i32 %i.ay
  %i.bc = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoString_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.bb) #8 ; 2 uses
  %i.bd = icmp eq i32 %i.bc, -1
  br i1 %i.bd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.be = zext i32 %1 to i64
  %.val1474 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.val1474, i64 %i.be
  store i32 0, ptr %i.bf, align 1
  br label %.loopexit1692

bb.f:                                             ; preds = %bb.d
  %i.bg = zext i32 %i.bc to i64
  %i.bh = or disjoint i64 %i.bg, -844424930131968 ; 2 uses
  %.val1548 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val1548, i64 %i.i
  %.0.copyload.i1602 = load i32, ptr %i.bi, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1602) #8, !srcloc !19
  %i.bj = zext i32 %.0.copyload.i1602 to i64      ; 2 uses
  %i.bk = add nuw nsw i64 %i.bj, 164              ; 2 uses
  %.val1547 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.val1547, i64 %i.bk
  %.0.copyload.i1603 = load i32, ptr %i.bl, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1603) #8, !srcloc !19
  %.val1546 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.val1546, i64 %i.bj
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 168
  %.0.copyload.i1604 = load i32, ptr %i.bn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1604) #8, !srcloc !19
  %i.bo = icmp ult i32 %.0.copyload.i1603, %.0.copyload.i1604
  br i1 %i.bo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bp = add i32 %.0.copyload.i1603, 8
  %.val1473 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.val1473, i64 %i.bk
  store i32 %i.bp, ptr %i.bq, align 1
  %i.br = zext i32 %.0.copyload.i1603 to i64
  %.val1568 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.val1568, i64 %i.br
  store i64 %i.bh, ptr %i.bs, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bt = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1602, i64 noundef %i.bh) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.01355 = phi i32 [ %.0.copyload.i1603, %bb.g ], [ %i.bt, %bb.h ] ; 7 uses
  %.val1472 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %.val1472, i64 %i.e
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  store i32 0, ptr %i.bv, align 1
  %i.bw = add nuw nsw i64 %i.e, 128               ; 8 uses
  %.val1471 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1471, i64 %i.bw
  store i32 0, ptr %i.bx, align 1
  %i.by = add i32 %i.b, -192
  %i.bz = add i32 %i.b, -364
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetNamedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3APropertyCacheEntry0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.by, i32 noundef %.0.copyload.i1598, i32 noundef %3, i32 noundef 331, i32 noundef %.0.copyload.i1598, i32 noundef %i.bz, i32 noundef 0) #8
  %.val1545 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %.val1545, i64 %i.e
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 192
  %.0.copyload.i1605 = load i32, ptr %i.cb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1605) #8, !srcloc !19
  %.not1399 = icmp eq i32 %.0.copyload.i1605, 0
  br i1 %.not1399, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cc = zext i32 %1 to i64
  %.val1470 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cd = getelementptr inbounds nuw i8, ptr %.val1470, i64 %i.cc
  store i32 0, ptr %i.cd, align 1
  br label %.loopexit1692

bb.k:                                             ; preds = %bb.i
  %.val1581 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1581, i64 %i.e
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 200
  %.0.copyload.i1606 = load i64, ptr %i.cf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1606) #8, !srcloc !20
  %.val1544 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1544, i64 %i.i
  %.0.copyload.i1607 = load i32, ptr %i.cg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1607) #8, !srcloc !19
  %i.ch = zext i32 %.0.copyload.i1607 to i64      ; 2 uses
  %i.ci = add nuw nsw i64 %i.ch, 164              ; 2 uses
  %.val1543 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %.val1543, i64 %i.ci
  %.0.copyload.i1608 = load i32, ptr %i.cj, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1608) #8, !srcloc !19
  %.val1542 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %.val1542, i64 %i.ch
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 168
  %.0.copyload.i1609 = load i32, ptr %i.cl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1609) #8, !srcloc !19
  %i.cm = icmp ult i32 %.0.copyload.i1608, %.0.copyload.i1609
  br i1 %i.cm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cn = add i32 %.0.copyload.i1608, 8
  %.val1469 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %.val1469, i64 %i.ci
  store i32 %i.cn, ptr %i.co, align 1
  %i.cp = zext i32 %.0.copyload.i1608 to i64
  %.val1567 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %.val1567, i64 %i.cp
  store i64 %.0.copyload.i1606, ptr %i.cq, align 1
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.cr = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1607, i64 noundef %.0.copyload.i1606) #8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.01366 = phi i32 [ %.0.copyload.i1608, %bb.l ], [ %i.cr, %bb.m ]
  %i.cs = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoString_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.01366) #8 ; 2 uses
  %i.ct = icmp eq i32 %i.cs, -1
  br i1 %i.ct, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cu = zext i32 %1 to i64
  %.val1468 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %.val1468, i64 %i.cu
  store i32 0, ptr %i.cv, align 1
  br label %.loopexit1692

bb.p:                                             ; preds = %bb.n
  %i.cw = zext i32 %i.cs to i64
  %i.cx = or disjoint i64 %i.cw, -844424930131968 ; 2 uses
  %.val1541 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %.val1541, i64 %i.i
  %.0.copyload.i1610 = load i32, ptr %i.cy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1610) #8, !srcloc !19
  %i.cz = zext i32 %.0.copyload.i1610 to i64      ; 2 uses
  %i.da = add nuw nsw i64 %i.cz, 164              ; 2 uses
  %.val1540 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %.val1540, i64 %i.da
  %.0.copyload.i1611 = load i32, ptr %i.db, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1611) #8, !srcloc !19
  %.val1539 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dc = getelementptr inbounds nuw i8, ptr %.val1539, i64 %i.cz
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 168
  %.0.copyload.i1612 = load i32, ptr %i.dd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1612) #8, !srcloc !19
  %i.de = icmp ult i32 %.0.copyload.i1611, %.0.copyload.i1612
  br i1 %i.de, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.df = add i32 %.0.copyload.i1611, 8
  %.val1467 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dg = getelementptr inbounds nuw i8, ptr %.val1467, i64 %i.da
  store i32 %i.df, ptr %i.dg, align 1
  %i.dh = zext i32 %.0.copyload.i1611 to i64
  %.val1566 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.di = getelementptr inbounds nuw i8, ptr %.val1566, i64 %i.dh
  store i64 %i.cx, ptr %i.di, align 1
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.dj = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1610, i64 noundef %i.cx) #8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.11367 = phi i32 [ %.0.copyload.i1611, %bb.q ], [ %i.dj, %bb.r ]
  %i.dk = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpConstructorFastCopy0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.0.copyload.i1598, i32 noundef %.11367) ; 4 uses
  %i.dl = icmp eq i32 %i.dk, -1
  %.val1466 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %i.dl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dm = zext i32 %1 to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %.val1466, i64 %i.dm
  store i32 0, ptr %i.dn, align 1
  br label %.loopexit1692

bb.u:                                             ; preds = %bb.s
  %i.do = zext i32 %i.dk to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %.val1466, i64 %i.do
  %.0.copyload.i1613 = load i32, ptr %i.dp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1613) #8, !srcloc !19
  %i.dq = zext i32 %.0.copyload.i1613 to i64
  %i.dr = add nuw nsw i64 %i.dq, 32               ; 2 uses
  %.val1592 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %.val1592, i64 %i.dr
  %.0.copyload.i1614 = load i8, ptr %i.ds, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1614) #8, !srcloc !21
  %i.dt = and i8 %.0.copyload.i1614, -33
  %.val1593 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.du = getelementptr inbounds nuw i8, ptr %.val1593, i64 %i.dr
  store i8 %i.dt, ptr %i.du, align 1
  %i.dv = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSArray0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef 0, i32 noundef 0) #8 ; 17 uses
  %i.dw = icmp eq i32 %i.dv, -1
  br i1 %i.dw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dx = zext i32 %1 to i64
  %.val1465 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dy = getelementptr inbounds nuw i8, ptr %.val1465, i64 %i.dx
  store i32 0, ptr %i.dy, align 1
  br label %.loopexit1692

bb.w:                                             ; preds = %bb.u
  %i.dz = add i32 %.0.copyload.i1598, -16
  %i.ea = icmp ult i32 %.0.copyload.i1601, 2
  %i.eb = select i1 %i.ea, i32 70392, i32 %i.dz   ; 2 uses
  %i.ec = zext i32 %i.eb to i64
  %.val1580 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %.val1580, i64 %i.ec
  %.0.copyload.i1615 = load i64, ptr %i.ed, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1615) #8, !srcloc !20
  %.mask = and i64 %.0.copyload.i1615, -140737488355328
  %i.ee = icmp eq i64 %.mask, -1688849860263936
  br i1 %i.ee, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ef = add i32 %i.b, -256
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoUInt32_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.ef, i32 noundef %3, i32 noundef %i.eb) #8
  %.val1537 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eg = getelementptr inbounds nuw i8, ptr %.val1537, i64 %i.bw
  %.0.copyload.i1616 = load i32, ptr %i.eg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1616) #8, !srcloc !19
  %.not1400 = icmp eq i32 %.0.copyload.i1616, 0
  br i1 %.not1400, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eh = zext i32 %1 to i64
  %.val1464 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ei = getelementptr inbounds nuw i8, ptr %.val1464, i64 %i.eh
  store i32 0, ptr %i.ei, align 1
  br label %.loopexit1692

bb.z:                                             ; preds = %bb.x
  %.val1597 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ej = getelementptr inbounds nuw i8, ptr %.val1597, i64 %i.e
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 136
  %.0.copyload.i1617 = load double, ptr %i.ek, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i1617) #8, !srcloc !37
  %i.el = fcmp uge double %.0.copyload.i1617, f0x41F0000000000000
  %i.em = fcmp ult double %.0.copyload.i1617, 0.000000e+00
  %.not1691 = or i1 %i.el, %i.em
  %i.en = fptoui double %.0.copyload.i1617 to i32 ; 2 uses
  %.not1401 = icmp eq i32 %i.en, 0
  %or.cond = select i1 %.not1691, i1 true, i1 %.not1401
  br i1 %or.cond, label %.thread, label %bb.aa

.thread:                                          ; preds = %bb.z
  %i.eo = zext i32 %i.dv to i64
  %.val1579 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ep = getelementptr inbounds nuw i8, ptr %.val1579, i64 %i.eo
  %.0.copyload.i1618 = load i64, ptr %i.ep, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1618) #8, !srcloc !20
  %i.eq = zext i32 %1 to i64                      ; 2 uses
  %.val1565 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.er = getelementptr inbounds nuw i8, ptr %.val1565, i64 %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store i64 %.0.copyload.i1618, ptr %i.es, align 1
  %.val1463 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.et = getelementptr inbounds nuw i8, ptr %.val1463, i64 %i.eq
  store i32 1, ptr %i.et, align 1
  br label %.loopexit1692

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.01354 = phi i32 [ -1, %bb.w ], [ %i.en, %bb.z ] ; 3 uses
  %i.eu = zext i32 %.01355 to i64                 ; 2 uses
  %.val1536 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ev = getelementptr inbounds nuw i8, ptr %.val1536, i64 %i.eu
  %.0.copyload.i1619 = load i32, ptr %i.ev, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1619) #8, !srcloc !19
  %i.ew = zext i32 %.0.copyload.i1619 to i64
  %.val1535 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ex = getelementptr inbounds nuw i8, ptr %.val1535, i64 %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %.0.copyload.i1620 = load i32, ptr %i.ey, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1620) #8, !srcloc !19
  %i.ez = and i32 %.0.copyload.i1620, 2147483647  ; 4 uses
  %.not1402 = icmp eq i32 %i.ez, 0
  br i1 %.not1402, label %bb.ab, label %bb.ao

bb.ab:                                            ; preds = %bb.aa
  %i.fa = add i32 %i.b, -256
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSRegExp0x3A0x3Asearch0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSRegExp0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.fa, i32 noundef %i.dk, i32 noundef %3, i32 noundef %.01355, i32 noundef 0) #8
  %i.fb = add nuw nsw i64 %i.e, 188               ; 2 uses
  %.val1591 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fc = getelementptr inbounds nuw i8, ptr %.val1591, i64 %i.fb
  %.0.copyload.i1621 = load i8, ptr %i.fc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1621) #8, !srcloc !21
  %.not1420 = icmp eq i8 %.0.copyload.i1621, 0
  br i1 %.not1420, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fd = zext i32 %1 to i64
  %.val1462 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fe = getelementptr inbounds nuw i8, ptr %.val1462, i64 %i.fd
  store i32 0, ptr %i.fe, align 1
  br label %.loopexit1692

bb.ad:                                            ; preds = %bb.ab
  %.val1534 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ff = getelementptr inbounds nuw i8, ptr %.val1534, i64 %i.e
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 132
  %.0.copyload.i1622 = load i32, ptr %i.fg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1622) #8, !srcloc !19
  %.not1421 = icmp eq i32 %.0.copyload.i1622, 0
  br i1 %.not1421, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fh = zext i32 %i.dv to i64
  %.val1578 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fi = getelementptr inbounds nuw i8, ptr %.val1578, i64 %i.fh
  %.0.copyload.i1623 = load i64, ptr %i.fi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1623) #8, !srcloc !20
  %i.fj = zext i32 %1 to i64                      ; 2 uses
  %.val1564 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fk = getelementptr inbounds nuw i8, ptr %.val1564, i64 %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store i64 %.0.copyload.i1623, ptr %i.fl, align 1
  %.val1461 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fm = getelementptr inbounds nuw i8, ptr %.val1461, i64 %i.fj
  store i32 1, ptr %i.fm, align 1
  br label %bb.al

bb.af:                                            ; preds = %bb.ad
  %i.fn = add i32 %i.b, -316
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AArrayImpl0x3A0x3A_setOwnIndexedImpl0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.fn, i32 noundef %i.dv, i32 noundef %3, i32 noundef 0, i32 noundef %.01355) #8
  %.val1533 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fo = getelementptr inbounds nuw i8, ptr %.val1533, i64 %i.i
  %.0.copyload.i1624 = load i32, ptr %i.fo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1624) #8, !srcloc !19
  %i.fp = zext i32 %.0.copyload.i1624 to i64      ; 2 uses
  %i.fq = add nuw nsw i64 %i.fp, 164              ; 2 uses
  %.val1532 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fr = getelementptr inbounds nuw i8, ptr %.val1532, i64 %i.fq
  %.0.copyload.i1625 = load i32, ptr %i.fr, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1625) #8, !srcloc !19
  %.val1531 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fs = getelementptr inbounds nuw i8, ptr %.val1531, i64 %i.fp
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 168
  %.0.copyload.i1626 = load i32, ptr %i.ft, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1626) #8, !srcloc !19
  %i.fu = icmp ult i32 %.0.copyload.i1625, %.0.copyload.i1626
  br i1 %i.fu, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fv = add i32 %.0.copyload.i1625, 8
  %.val1460 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fw = getelementptr inbounds nuw i8, ptr %.val1460, i64 %i.fq
  store i32 %i.fv, ptr %i.fw, align 1
  %i.fx = zext i32 %.0.copyload.i1625 to i64
  %.val1563 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fy = getelementptr inbounds nuw i8, ptr %.val1563, i64 %i.fx
  store i64 4607182418800017408, ptr %i.fy, align 1
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.fz = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1624, i64 noundef 4607182418800017408) #8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.01368 = phi i32 [ %.0.copyload.i1625, %bb.ag ], [ %i.fz, %bb.ah ]
  %.val1459 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ga = getelementptr inbounds nuw i8, ptr %.val1459, i64 %i.e
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store i32 0, ptr %i.gb, align 1
  %.val1458 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gc = getelementptr inbounds nuw i8, ptr %.val1458, i64 %i.e
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 68
  store i32 0, ptr %i.gd, align 1
  %i.ge = add i32 %i.b, -336
  %i.gf = add i32 %i.b, -380
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AputNamedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.ge, i32 noundef %i.dv, i32 noundef %3, i32 noundef 85, i32 noundef %.01368, i32 noundef %i.dv, i32 noundef %i.gf) #8
  %.val1590 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gg = getelementptr inbounds nuw i8, ptr %.val1590, i64 %i.e
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 48
  %.0.copyload.i1627 = load i8, ptr %i.gh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1627) #8, !srcloc !21
  %.not1422 = icmp eq i8 %.0.copyload.i1627, 0
  %.val1457 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not1422, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gi = zext i32 %1 to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %.val1457, i64 %i.gi
  store i32 0, ptr %i.gj, align 1
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.gk = zext i32 %i.dv to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %.val1457, i64 %i.gk
  %.0.copyload.i1628 = load i64, ptr %i.gl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1628) #8, !srcloc !20
  %i.gm = zext i32 %1 to i64                      ; 2 uses
  %.val1562 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gn = getelementptr inbounds nuw i8, ptr %.val1562, i64 %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store i64 %.0.copyload.i1628, ptr %i.go, align 1
  %.val1456 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gp = getelementptr inbounds nuw i8, ptr %.val1456, i64 %i.gm
  store i32 1, ptr %i.gp, align 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ae
  %.val1589 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gq = getelementptr inbounds nuw i8, ptr %.val1589, i64 %i.fb
  %.0.copyload.i1629 = load i8, ptr %i.gq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1629) #8, !srcloc !21
  %.not1423 = icmp eq i8 %.0.copyload.i1629, 0
  br i1 %.not1423, label %.loopexit1692, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.val1530 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gr = getelementptr inbounds nuw i8, ptr %.val1530, i64 %i.bw
  %.0.copyload.i1630 = load i32, ptr %i.gr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1630) #8, !srcloc !19
  %i.gs = add i32 %i.b, -244
  %i.gt = icmp eq i32 %.0.copyload.i1630, %i.gs
  br i1 %i.gt, label %.loopexit1692, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1630) #8
  br label %.loopexit1692

bb.ao:                                            ; preds = %bb.aa
  %.val1529 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gu = getelementptr inbounds nuw i8, ptr %.val1529, i64 %i.i
  %.0.copyload.i1631 = load i32, ptr %i.gu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1631) #8, !srcloc !19
  %i.gv = zext i32 %.0.copyload.i1631 to i64      ; 2 uses
  %i.gw = add nuw nsw i64 %i.gv, 164              ; 2 uses
  %.val1528 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gx = getelementptr inbounds nuw i8, ptr %.val1528, i64 %i.gw
  %.0.copyload.i1632 = load i32, ptr %i.gx, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1632) #8, !srcloc !19
  %.val1527 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gy = getelementptr inbounds nuw i8, ptr %.val1527, i64 %i.gv
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 168
  %.0.copyload.i1633 = load i32, ptr %i.gz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1633) #8, !srcloc !19
  %i.ha = icmp ult i32 %.0.copyload.i1632, %.0.copyload.i1633
  br i1 %i.ha, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hb = add i32 %.0.copyload.i1632, 8
  %.val1455 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hc = getelementptr inbounds nuw i8, ptr %.val1455, i64 %i.gw
  store i32 %i.hb, ptr %i.hc, align 1
  %i.hd = zext i32 %.0.copyload.i1632 to i64      ; 2 uses
  %.val1561 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.he = getelementptr inbounds nuw i8, ptr %.val1561, i64 %i.hd
  store i64 -1688849860263936, ptr %i.he, align 1
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.hf = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1631, i64 noundef -1688849860263936) #8 ; 2 uses
  %.pre = zext i32 %i.hf to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pre-phi = phi i64 [ %.pre, %bb.aq ], [ %i.hd, %bb.ap ] ; 2 uses
  %.01353 = phi i32 [ %i.hf, %bb.aq ], [ %.0.copyload.i1632, %bb.ap ] ; 2 uses
  %i.hg = add i32 %i.b, -244                      ; 3 uses
  %i.hh = add i32 %i.b, -304                      ; 6 uses
  %i.hi = uitofp i32 %.01354 to double            ; 3 uses
  %i.hj = bitcast double %i.hi to i64             ; 2 uses
  %.val1526 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hk = getelementptr inbounds nuw i8, ptr %.val1526, i64 %i.z
  %.0.copyload.i1634 = load i32, ptr %i.hk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1634) #8, !srcloc !19
  %.val1525 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hl = getelementptr inbounds nuw i8, ptr %.val1525, i64 %i.u
  %.0.copyload.i1635 = load i32, ptr %i.hl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1635) #8, !srcloc !19
  %i.hm = shl i32 %.0.copyload.i1635, 2
  %i.hn = add i32 %i.b, -256                      ; 2 uses
  %i.ho = add nuw nsw i64 %i.e, 188               ; 4 uses
  %i.hp = add nuw nsw i64 %i.e, 72                ; 3 uses
  %i.hq = add nuw nsw i64 %i.e, 68                ; 7 uses
  %i.hr = add nuw nsw i64 %i.e, 132               ; 2 uses
  %i.hs = add i32 %i.b, -316                      ; 2 uses
  %i.ht = add i32 %i.b, -336                      ; 2 uses
  %i.hu = add nuw nsw i64 %i.e, 48                ; 2 uses
  %i.hv = add nuw nsw i64 %i.e, 56                ; 2 uses
  %i.hw = add i32 %i.b, -360                      ; 3 uses
  %i.hx = zext i32 %1 to i64                      ; 11 uses
  %i.hy = add i32 %i.b, -340                      ; 2 uses
  %i.hz = add i32 %i.b, -368
  %i.ia = zext i32 %i.dv to i64                   ; 3 uses
  %i.ib = add i32 %i.b, -372
  %i.ic = lshr i8 %.0.copyload.i1614, 3
  %i.id = and i8 %i.ic, 1
  %.lobit = zext nneg i8 %i.id to i32
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.cc
  %.013601816 = phi i32 [ 0, %bb.ar ], [ %.11361.jt0, %bb.cc ] ; 7 uses
  %.013631815 = phi i32 [ 0, %bb.ar ], [ %.6.jt0, %bb.cc ] ; 6 uses
  %.113691814 = phi i32 [ 0, %bb.ar ], [ %.41372.jt0, %bb.cc ]
  %.val1524 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ie = getelementptr inbounds nuw i8, ptr %.val1524, i64 %i.q
  %.0.copyload.i1636 = load i32, ptr %i.ie, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1636) #8, !srcloc !19
  %i.if = add i32 %.0.copyload.i1636, %i.hm
  %i.ig = zext i32 %i.if to i64
  %.val1523 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ih = getelementptr inbounds nuw i8, ptr %.val1523, i64 %i.ig
  %.0.copyload.i1637 = load i32, ptr %i.ih, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1637) #8, !srcloc !19
  %.val1454 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ii = getelementptr inbounds nuw i8, ptr %.val1454, i64 %i.u
  store i32 %.0.copyload.i1635, ptr %i.ii, align 1
  %.val1453 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ij = getelementptr inbounds nuw i8, ptr %.val1453, i64 %i.z
  store i32 %.0.copyload.i1634, ptr %i.ij, align 1
  %i.ik = add i32 %.0.copyload.i1637, 128
  %.val1452 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.il = getelementptr inbounds nuw i8, ptr %.val1452, i64 %i.x
  store i32 %i.ik, ptr %i.il, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSRegExp0x3A0x3Asearch0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSRegExp0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef %i.dk, i32 noundef %3, i32 noundef %.01355, i32 noundef %.113691814) #8
  %.val1588 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.im = getelementptr inbounds nuw i8, ptr %.val1588, i64 %i.ho
  %.0.copyload.i1638 = load i8, ptr %i.im, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1638) #8, !srcloc !21
  %.not1404 = icmp eq i8 %.0.copyload.i1638, 0
  %.val1451 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not1404, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.in = getelementptr inbounds nuw i8, ptr %.val1451, i64 %i.hx
  store i32 0, ptr %i.in, align 1
  br label %.loopexit1692

bb.au:                                            ; preds = %bb.as
  %i.io = getelementptr inbounds nuw i8, ptr %.val1451, i64 %i.hp
  store i64 17179869184, ptr %i.io, align 1
  %.val1450 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ip = getelementptr inbounds nuw i8, ptr %.val1450, i64 %i.hq
  store i32 %i.hh, ptr %i.ip, align 1
  %.val1522 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iq = getelementptr inbounds nuw i8, ptr %.val1522, i64 %i.hr
  %.0.copyload.i1639 = load i32, ptr %i.iq, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1639) #8, !srcloc !19
  %.not1405 = icmp eq i32 %.0.copyload.i1639, 0
  br i1 %.not1405, label %.loopexit.jt3, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ir = icmp ugt i32 %.0.copyload.i1639, 4
  br i1 %i.ir, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.hs, i32 noundef %i.hh, i32 noundef %.0.copyload.i1639, i32 noundef 12) #8
  %.val1521 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.is = getelementptr inbounds nuw i8, ptr %.val1521, i64 %i.hr
  %.0.copyload.i1640 = load i32, ptr %i.is, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1640) #8, !srcloc !19
  %.not1406 = icmp eq i32 %.0.copyload.i1640, 0
  br i1 %.not1406, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.val1520 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.it = getelementptr inbounds nuw i8, ptr %.val1520, i64 %i.hq
  %.0.copyload.i1641 = load i32, ptr %i.it, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1641) #8, !srcloc !19
  br label %bb.ay

bb.ay:                                            ; preds = %bb.av, %bb.ax
  %.01358 = phi i32 [ %.0.copyload.i1640, %bb.ax ], [ %.0.copyload.i1639, %bb.av ]
  %.1 = phi i32 [ %.0.copyload.i1641, %bb.ax ], [ %i.hh, %bb.av ]
  %.val1519 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iu = getelementptr inbounds nuw i8, ptr %.val1519, i64 %i.bw
  %.0.copyload.i1642 = load i32, ptr %i.iu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1642) #8, !srcloc !19
  %i.iv = mul i32 %.01358, 12
  %i.iw = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %.1, i32 noundef %.0.copyload.i1642, i32 noundef %i.iv) #8 ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.aw, %bb.ay
  %.val1449 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ix = getelementptr inbounds nuw i8, ptr %.val1449, i64 %i.hp
  store i32 %.0.copyload.i1639, ptr %i.ix, align 1
  %.val1518 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iy = getelementptr inbounds nuw i8, ptr %.val1518, i64 %i.hq
  %.0.copyload.i1643 = load i32, ptr %i.iy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1643) #8, !srcloc !19
  %i.iz = zext i32 %.0.copyload.i1643 to i64      ; 2 uses
  %.val1517 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ja = getelementptr inbounds nuw i8, ptr %.val1517, i64 %i.iz
  %.0.copyload.i1644 = load i32, ptr %i.ja, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1644) #8, !srcloc !19
  %.not1407 = icmp ult i32 %.0.copyload.i1644, %i.ez
  br i1 %.not1407, label %bb.ba, label %.loopexit.jt3

bb.ba:                                            ; preds = %bb.az
  %.val1516 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jb = getelementptr inbounds nuw i8, ptr %.val1516, i64 %i.iz
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %.0.copyload.i1645 = load i32, ptr %i.jc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1645) #8, !srcloc !19
  %i.jd = add i32 %.0.copyload.i1645, %.0.copyload.i1644 ; 5 uses
  %i.je = icmp eq i32 %.013601816, %i.jd
  br i1 %i.je, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %.val1515 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jf = getelementptr inbounds nuw i8, ptr %.val1515, i64 %i.eu
  %.0.copyload.i1646 = load i32, ptr %i.jf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1646) #8, !srcloc !19
  %i.jg = zext nneg i32 %.0.copyload.i1644 to i64
  %i.jh = tail call i64 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AadvanceStringIndex0x28hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x20const0x2A0x2C0x20unsigned0x20long0x20long0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1646, i64 noundef %i.jg, i32 noundef %.lobit) #8
  %i.ji = trunc i64 %i.jh to i32
  br label %.loopexit

bb.bc:                                            ; preds = %bb.ba
  %i.jj = sub i32 %.0.copyload.i1644, %.013601816
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3Aslice0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ht, i32 noundef %3, i32 noundef %.01355, i32 noundef %.013601816, i32 noundef %i.jj) #8
  %.val1514 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jk = getelementptr inbounds nuw i8, ptr %.val1514, i64 %i.hu
  %.0.copyload.i1647 = load i32, ptr %i.jk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1647) #8, !srcloc !19
  %.not1408 = icmp eq i32 %.0.copyload.i1647, 0
  %.val1448 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not1408, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.jl = getelementptr inbounds nuw i8, ptr %.val1448, i64 %i.hx
  store i32 0, ptr %i.jl, align 1
  br label %.loopexit.jt1

bb.be:                                            ; preds = %bb.bc
  %i.jm = getelementptr inbounds nuw i8, ptr %.val1448, i64 %i.hv
  %.0.copyload.i1648 = load i64, ptr %i.jm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1648) #8, !srcloc !20
  %.val1559 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jn = getelementptr inbounds nuw i8, ptr %.val1559, i64 %.pre-phi
  store i64 %.0.copyload.i1648, ptr %i.jn, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AArrayImpl0x3A0x3A_setOwnIndexedImpl0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.hw, i32 noundef %i.dv, i32 noundef %3, i32 noundef %.013631815, i32 noundef %.01353) #8
  %i.jo = add i32 %.013631815, 1                  ; 3 uses
  %i.jp = icmp eq i32 %.01354, %i.jo
  %.val1513 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %i.jp, label %bb.bf, label %bb.bl

bb.bf:                                            ; preds = %bb.be
  %i.jq = getelementptr inbounds nuw i8, ptr %.val1513, i64 %i.i
  %.0.copyload.i1649 = load i32, ptr %i.jq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1649) #8, !srcloc !19
  %i.jr = zext i32 %.0.copyload.i1649 to i64      ; 2 uses
  %i.js = add nuw nsw i64 %i.jr, 164              ; 2 uses
  %.val1512 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jt = getelementptr inbounds nuw i8, ptr %.val1512, i64 %i.js
  %.0.copyload.i1650 = load i32, ptr %i.jt, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1650) #8, !srcloc !19
  %.val1511 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ju = getelementptr inbounds nuw i8, ptr %.val1511, i64 %i.jr
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 168
  %.0.copyload.i1651 = load i32, ptr %i.jv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1651) #8, !srcloc !19
  %i.jw = icmp ult i32 %.0.copyload.i1650, %.0.copyload.i1651
  br i1 %i.jw, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.jx = add i32 %.0.copyload.i1650, 8
  %.val1447 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jy = getelementptr inbounds nuw i8, ptr %.val1447, i64 %i.js
  store i32 %i.jx, ptr %i.jy, align 1
  %i.jz = zext i32 %.0.copyload.i1650 to i64
  %.val1596 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ka = getelementptr inbounds nuw i8, ptr %.val1596, i64 %i.jz
  store double %i.hi, ptr %i.ka, align 1
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.kb = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1649, i64 noundef %i.hj) #8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.21370 = phi i32 [ %.0.copyload.i1650, %bb.bg ], [ %i.kb, %bb.bh ]
  %.val1446 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kc = getelementptr inbounds nuw i8, ptr %.val1446, i64 %i.e
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 12
  store i32 0, ptr %i.kd, align 1
  %.val1445 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ke = getelementptr inbounds nuw i8, ptr %.val1445, i64 %i.e
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  store i32 0, ptr %i.kf, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AputNamedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.hy, i32 noundef %i.dv, i32 noundef %3, i32 noundef 85, i32 noundef %.21370, i32 noundef %i.dv, i32 noundef %i.ib) #8
  %.val1587 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kg = getelementptr inbounds nuw i8, ptr %.val1587, i64 %i.e
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 44
  %.0.copyload.i1652 = load i8, ptr %i.kh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1652) #8, !srcloc !21
  %.not1413 = icmp eq i8 %.0.copyload.i1652, 0
  %.val1444 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not1413, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ki = getelementptr inbounds nuw i8, ptr %.val1444, i64 %i.hx
  store i32 0, ptr %i.ki, align 1
  br label %.loopexit.jt1

bb.bk:                                            ; preds = %bb.bi
  %i.kj = getelementptr inbounds nuw i8, ptr %.val1444, i64 %i.ia
  %.0.copyload.i1653 = load i64, ptr %i.kj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1653) #8, !srcloc !20
  %.val1558 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kk = getelementptr inbounds nuw i8, ptr %.val1558, i64 %i.hx
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store i64 %.0.copyload.i1653, ptr %i.kl, align 1
  %.val1443 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.km = getelementptr inbounds nuw i8, ptr %.val1443, i64 %i.hx
  store i32 1, ptr %i.km, align 1
  br label %.loopexit.jt1

bb.bl:                                            ; preds = %bb.be
  %i.kn = getelementptr inbounds nuw i8, ptr %.val1513, i64 %i.hp
  %.0.copyload.i1654 = load i32, ptr %i.kn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1654) #8, !srcloc !19
  %i.ko = icmp ult i32 %.0.copyload.i1654, 2
  br i1 %i.ko, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.bl, %bb.br
  %.31371 = phi i32 [ %i.mk, %bb.br ], [ 1, %bb.bl ] ; 2 uses
  %.11364 = phi i32 [ %i.ly, %bb.br ], [ %i.jo, %bb.bl ] ; 2 uses
  %.val1509 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kp = getelementptr inbounds nuw i8, ptr %.val1509, i64 %i.i
  %.0.copyload.i1655 = load i32, ptr %i.kp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1655) #8, !srcloc !19
  %i.kq = zext i32 %.0.copyload.i1655 to i64      ; 6 uses
  %i.kr = add nuw nsw i64 %i.kq, 172              ; 3 uses
  %.val1508 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ks = getelementptr inbounds nuw i8, ptr %.val1508, i64 %i.kr
  %.0.copyload.i1656 = load i32, ptr %i.ks, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1656) #8, !srcloc !19
  %i.kt = add nuw nsw i64 %i.kq, 164              ; 3 uses
  %.val1507 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ku = getelementptr inbounds nuw i8, ptr %.val1507, i64 %i.kt
  %.0.copyload.i1657 = load i32, ptr %i.ku, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1657) #8, !srcloc !19
  %.val1506 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kv = getelementptr inbounds nuw i8, ptr %.val1506, i64 %i.hq
  %.0.copyload.i1658 = load i32, ptr %i.kv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1658) #8, !srcloc !19
  %i.kw = mul i32 %.31371, 12
  %i.kx = add i32 %.0.copyload.i1658, %i.kw
  %i.ky = zext i32 %i.kx to i64                   ; 3 uses
  %.val1586 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kz = getelementptr inbounds nuw i8, ptr %.val1586, i64 %i.ky
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %.0.copyload.i1659 = load i8, ptr %i.la, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1659) #8, !srcloc !21
  %.not1409 = icmp eq i8 %.0.copyload.i1659, 0
  br i1 %.not1409, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %.preheader
  %.val1505 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lb = getelementptr inbounds nuw i8, ptr %.val1505, i64 %i.ky
  %.0.copyload.i1660 = load i32, ptr %i.lb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1660) #8, !srcloc !19
  %.val1504 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lc = getelementptr inbounds nuw i8, ptr %.val1504, i64 %i.ky
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 4
  %.0.copyload.i1661 = load i32, ptr %i.ld, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1661) #8, !srcloc !19
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3Aslice0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.hw, i32 noundef %3, i32 noundef %.01355, i32 noundef %.0.copyload.i1660, i32 noundef %.0.copyload.i1661) #8
  %.val1503 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.le = getelementptr inbounds nuw i8, ptr %.val1503, i64 %i.e
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  %.0.copyload.i1662 = load i32, ptr %i.lf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1662) #8, !srcloc !19
  %.val1442 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lg = getelementptr inbounds nuw i8, ptr %.val1442, i64 %i.hu
  store i32 %.0.copyload.i1662, ptr %i.lg, align 1
  %.val1574 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lh = getelementptr inbounds nuw i8, ptr %.val1574, i64 %i.e
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 32
  %.0.copyload.i1663 = load i64, ptr %i.li, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1663) #8, !srcloc !20
  %.val1557 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lj = getelementptr inbounds nuw i8, ptr %.val1557, i64 %i.hv
  store i64 %.0.copyload.i1663, ptr %i.lj, align 1
  %.not1410 = icmp eq i32 %.0.copyload.i1662, 0
  br i1 %.not1410, label %.sink.split, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.lk = and i64 %.0.copyload.i1663, 4294967295
  %i.ll = or disjoint i64 %i.lk, -844424930131968 ; 2 uses
  %.val1502 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lm = getelementptr inbounds nuw i8, ptr %.val1502, i64 %i.i
  %.0.copyload.i1664 = load i32, ptr %i.lm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1664) #8, !srcloc !19
  %i.ln = zext i32 %.0.copyload.i1664 to i64      ; 2 uses
  %i.lo = add nuw nsw i64 %i.ln, 164              ; 2 uses
  %.val1501 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lp = getelementptr inbounds nuw i8, ptr %.val1501, i64 %i.lo
  %.0.copyload.i1665 = load i32, ptr %i.lp, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1665) #8, !srcloc !19
  %.val1500 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lq = getelementptr inbounds nuw i8, ptr %.val1500, i64 %i.ln
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 168
  %.0.copyload.i1666 = load i32, ptr %i.lr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1666) #8, !srcloc !19
  %i.ls = icmp ult i32 %.0.copyload.i1665, %.0.copyload.i1666
  br i1 %i.ls, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.lt = add i32 %.0.copyload.i1665, 8
  %.val1440 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lu = getelementptr inbounds nuw i8, ptr %.val1440, i64 %i.lo
  store i32 %i.lt, ptr %i.lu, align 1
  %i.lv = zext i32 %.0.copyload.i1665 to i64
  %.val1556 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lw = getelementptr inbounds nuw i8, ptr %.val1556, i64 %i.lv
  store i64 %i.ll, ptr %i.lw, align 1
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.lx = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1664, i64 noundef %i.ll) #8
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp, %.preheader
  %.11359.sink = phi i32 [ 70392, %.preheader ], [ %.0.copyload.i1665, %bb.bo ], [ %i.lx, %bb.bp ]
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AArrayImpl0x3A0x3A_setOwnIndexedImpl0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.hw, i32 noundef %i.dv, i32 noundef %3, i32 noundef %.11364, i32 noundef %.11359.sink) #8
  %i.ly = add i32 %.11364, 1                      ; 3 uses
  %.not1411 = icmp eq i32 %.01354, %i.ly
  %.val1497 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not1411, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lz = getelementptr inbounds nuw i8, ptr %.val1497, i64 %i.kq
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 136
  %.0.copyload.i1667 = load i32, ptr %i.ma, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1667) #8, !srcloc !19
  %i.mb = shl i32 %.0.copyload.i1656, 2
  %i.mc = add i32 %.0.copyload.i1667, %i.mb
  %i.md = zext i32 %i.mc to i64
  %.val1498 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.me = getelementptr inbounds nuw i8, ptr %.val1498, i64 %i.md
  %.0.copyload.i1668 = load i32, ptr %i.me, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1668) #8, !srcloc !19
  %.val1439 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mf = getelementptr inbounds nuw i8, ptr %.val1439, i64 %i.kr
  store i32 %.0.copyload.i1656, ptr %i.mf, align 1
  %.val1438 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mg = getelementptr inbounds nuw i8, ptr %.val1438, i64 %i.kt
  store i32 %.0.copyload.i1657, ptr %i.mg, align 1
  %i.mh = add i32 %.0.copyload.i1668, 128
  %.val1437 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mi = getelementptr inbounds nuw i8, ptr %.val1437, i64 %i.kq
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 168
  store i32 %i.mh, ptr %i.mj, align 1
  %i.mk = add nuw i32 %.31371, 1                  ; 2 uses
  %i.ml = icmp eq i32 %i.mk, %.0.copyload.i1654
  br i1 %i.ml, label %.loopexit, label %.preheader

bb.bs:                                            ; preds = %bb.bq
  %i.mm = getelementptr inbounds nuw i8, ptr %.val1497, i64 %i.i
  %.0.copyload.i1669 = load i32, ptr %i.mm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1669) #8, !srcloc !19
  %i.mn = zext i32 %.0.copyload.i1669 to i64      ; 2 uses
  %i.mo = add nuw nsw i64 %i.mn, 164              ; 2 uses
  %.val1496 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mp = getelementptr inbounds nuw i8, ptr %.val1496, i64 %i.mo
  %.0.copyload.i1670 = load i32, ptr %i.mp, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1670) #8, !srcloc !19
  %.val1495 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mq = getelementptr inbounds nuw i8, ptr %.val1495, i64 %i.mn
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 168
  %.0.copyload.i1671 = load i32, ptr %i.mr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1671) #8, !srcloc !19
  %i.ms = icmp ult i32 %.0.copyload.i1670, %.0.copyload.i1671
  br i1 %i.ms, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.mt = add i32 %.0.copyload.i1670, 8
  %.val1436 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mu = getelementptr inbounds nuw i8, ptr %.val1436, i64 %i.mo
  store i32 %i.mt, ptr %i.mu, align 1
  %i.mv = zext i32 %.0.copyload.i1670 to i64
  %.val1595 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mw = getelementptr inbounds nuw i8, ptr %.val1595, i64 %i.mv
  store double %i.hi, ptr %i.mw, align 1
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.mx = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1669, i64 noundef %i.hj) #8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.21365 = phi i32 [ %.0.copyload.i1670, %bb.bt ], [ %i.mx, %bb.bu ]
  %.val1435 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.my = getelementptr inbounds nuw i8, ptr %.val1435, i64 %i.e
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  store i32 0, ptr %i.mz, align 1
  %.val1434 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.na = getelementptr inbounds nuw i8, ptr %.val1434, i64 %i.e
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 24
  store i32 0, ptr %i.nb, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AputNamedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.hy, i32 noundef %i.dv, i32 noundef %3, i32 noundef 85, i32 noundef %.21365, i32 noundef %i.dv, i32 noundef %i.hz) #8
  %.val1585 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nc = getelementptr inbounds nuw i8, ptr %.val1585, i64 %i.e
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 44
  %.0.copyload.i1672 = load i8, ptr %i.nd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1672) #8, !srcloc !21
  %.not1412 = icmp eq i8 %.0.copyload.i1672, 0
  %.val1433 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not1412, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ne = getelementptr inbounds nuw i8, ptr %.val1433, i64 %i.ia
  %.0.copyload.i1673 = load i64, ptr %i.ne, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1673) #8, !srcloc !20
  %.val1555 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nf = getelementptr inbounds nuw i8, ptr %.val1555, i64 %i.hx
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  store i64 %.0.copyload.i1673, ptr %i.ng, align 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bm, %bb.bw
  %.sink.ph = phi i32 [ 1, %bb.bw ], [ 0, %bb.bm ]
  %.val1432 = load ptr, ptr %i.d, align 8, !tbaa !18
  br label %bb.bx

bb.bx:                                            ; preds = %.sink.split, %bb.bv
  %.val1433.sink = phi ptr [ %.val1433, %bb.bv ], [ %.val1432, %.sink.split ]
  %.sink = phi i32 [ 0, %bb.bv ], [ %.sink.ph, %.sink.split ]
  %i.nh = getelementptr inbounds nuw i8, ptr %.val1433.sink, i64 %i.hx
  store i32 %.sink, ptr %i.nh, align 1
  %.val1494 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ni = getelementptr inbounds nuw i8, ptr %.val1494, i64 %i.kq
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 136
  %.0.copyload.i1674 = load i32, ptr %i.nj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1674) #8, !srcloc !19
  %i.nk = shl i32 %.0.copyload.i1656, 2
  %i.nl = add i32 %.0.copyload.i1674, %i.nk
  %i.nm = zext i32 %i.nl to i64
  %.val1493 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nn = getelementptr inbounds nuw i8, ptr %.val1493, i64 %i.nm
  %.0.copyload.i1675 = load i32, ptr %i.nn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1675) #8, !srcloc !19
  %.val1431 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.no = getelementptr inbounds nuw i8, ptr %.val1431, i64 %i.kr
  store i32 %.0.copyload.i1656, ptr %i.no, align 1
  %.val1430 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.np = getelementptr inbounds nuw i8, ptr %.val1430, i64 %i.kt
  store i32 %.0.copyload.i1657, ptr %i.np, align 1
  %i.nq = add i32 %.0.copyload.i1675, 128
  %.val1429 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nr = getelementptr inbounds nuw i8, ptr %.val1429, i64 %i.kq
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 168
  store i32 %i.nq, ptr %i.ns, align 1
  br label %.loopexit.jt1

.loopexit.jt1:                                    ; preds = %bb.bk, %bb.bj, %bb.bx, %bb.bd
  %.val1492.jt1 = load ptr, ptr %i.d, align 8, !tbaa !18
  %5 = getelementptr inbounds nuw i8, ptr %.val1492.jt1, i64 %i.hq
  %.0.copyload.i1676.jt1 = load i32, ptr %5, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1676.jt1) #8, !srcloc !19
  %.not1414.jt1 = icmp eq i32 %i.hh, %.0.copyload.i1676.jt1
  br i1 %.not1414.jt1, label %9, label %7

.loopexit:                                        ; preds = %bb.br, %bb.bl, %bb.bb
  %.41372.jt0 = phi i32 [ %i.ji, %bb.bb ], [ %i.jd, %bb.bl ], [ %i.jd, %bb.br ] ; 2 uses
  %.6.jt0 = phi i32 [ %.013631815, %bb.bb ], [ %i.jo, %bb.bl ], [ %i.ly, %bb.br ] ; 2 uses
  %.11361.jt0 = phi i32 [ %.013601816, %bb.bb ], [ %i.jd, %bb.bl ], [ %i.jd, %bb.br ] ; 2 uses
  %.val1492 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nt = getelementptr inbounds nuw i8, ptr %.val1492, i64 %i.hq
  %.0.copyload.i1676 = load i32, ptr %i.nt, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1676) #8, !srcloc !19
  %.not1414 = icmp eq i32 %i.hh, %.0.copyload.i1676
  br i1 %.not1414, label %11, label %8

.loopexit.jt3:                                    ; preds = %bb.az, %bb.au
  %.val1492.jt3 = load ptr, ptr %i.d, align 8, !tbaa !18
  %6 = getelementptr inbounds nuw i8, ptr %.val1492.jt3, i64 %i.hq
  %.0.copyload.i1676.jt3 = load i32, ptr %6, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1676.jt3) #8, !srcloc !19
  %.not1414.jt3 = icmp eq i32 %i.hh, %.0.copyload.i1676.jt3
  br i1 %.not1414.jt3, label %bb.bz, label %bb.by

7:                                                ; preds = %.loopexit.jt1
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1676.jt1) #8
  br label %9

8:                                                ; preds = %.loopexit
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1676) #8
  br label %11

bb.by:                                            ; preds = %.loopexit.jt3
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1676.jt3) #8
  br label %bb.bz

9:                                                ; preds = %7, %.loopexit.jt1
  %.val1584.jt1 = load ptr, ptr %i.d, align 8, !tbaa !18
  %10 = getelementptr inbounds nuw i8, ptr %.val1584.jt1, i64 %i.ho
  %.0.copyload.i1677.jt1 = load i8, ptr %10, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1677.jt1) #8, !srcloc !21
  %.not1415.jt1 = icmp eq i8 %.0.copyload.i1677.jt1, 0
  br i1 %.not1415.jt1, label %.loopexit1692, label %13

11:                                               ; preds = %8, %.loopexit
  %.val1584.jt0 = load ptr, ptr %i.d, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %.val1584.jt0, i64 %i.ho
  %.0.copyload.i1677.jt0 = load i8, ptr %12, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1677.jt0) #8, !srcloc !21
  %.not1415.jt0 = icmp eq i8 %.0.copyload.i1677.jt0, 0
  br i1 %.not1415.jt0, label %bb.cc, label %16

bb.bz:                                            ; preds = %bb.by, %.loopexit.jt3
  %.val1584 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nu = getelementptr inbounds nuw i8, ptr %.val1584, i64 %i.ho
  %.0.copyload.i1677 = load i8, ptr %i.nu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1677) #8, !srcloc !21
  %.not1415 = icmp eq i8 %.0.copyload.i1677, 0
  br i1 %.not1415, label %bb.cd, label %bb.ca

13:                                               ; preds = %9
  %.val1491.jt1 = load ptr, ptr %i.d, align 8, !tbaa !18
  %14 = getelementptr inbounds nuw i8, ptr %.val1491.jt1, i64 %i.bw
  %.0.copyload.i1678.jt1 = load i32, ptr %14, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1678.jt1) #8, !srcloc !19
  %15 = icmp eq i32 %.0.copyload.i1678.jt1, %i.hg
  br i1 %15, label %.loopexit1692, label %19

16:                                               ; preds = %11
  %.val1491.jt0 = load ptr, ptr %i.d, align 8, !tbaa !18
  %17 = getelementptr inbounds nuw i8, ptr %.val1491.jt0, i64 %i.bw
  %.0.copyload.i1678.jt0 = load i32, ptr %17, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1678.jt0) #8, !srcloc !19
  %18 = icmp eq i32 %.0.copyload.i1678.jt0, %i.hg
  br i1 %18, label %bb.cc, label %20

bb.ca:                                            ; preds = %bb.bz
  %.val1491 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nv = getelementptr inbounds nuw i8, ptr %.val1491, i64 %i.bw
  %.0.copyload.i1678 = load i32, ptr %i.nv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1678) #8, !srcloc !19
  %i.nw = icmp eq i32 %.0.copyload.i1678, %i.hg
  br i1 %i.nw, label %bb.cd, label %bb.cb

19:                                               ; preds = %13
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1678.jt1) #8
  br label %.loopexit1692

20:                                               ; preds = %16
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1678.jt0) #8
  br label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1678) #8
  br label %bb.cd

bb.cc:                                            ; preds = %20, %16, %11
  %.not1403 = icmp ult i32 %.41372.jt0, %i.ez
  br i1 %.not1403, label %bb.as, label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.bz, %bb.ca, %bb.cb
  %.013631803 = phi i32 [ %.013631815, %bb.cb ], [ %.013631815, %bb.bz ], [ %.013631815, %bb.ca ], [ %.6.jt0, %bb.cc ] ; 2 uses
  %.013601796 = phi i32 [ %.013601816, %bb.cb ], [ %.013601816, %bb.bz ], [ %.013601816, %bb.ca ], [ %.11361.jt0, %bb.cc ] ; 2 uses
  %i.nx = sub i32 %i.ez, %.013601796
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3Aslice0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.hn, i32 noundef %3, i32 noundef %.01355, i32 noundef %.013601796, i32 noundef %i.nx) #8
  %.val1490 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ny = getelementptr inbounds nuw i8, ptr %.val1490, i64 %i.bw
  %.0.copyload.i1679 = load i32, ptr %i.ny, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1679) #8, !srcloc !19
  %.not1418 = icmp eq i32 %.0.copyload.i1679, 0
  %.val1428 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not1418, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.nz = getelementptr inbounds nuw i8, ptr %.val1428, i64 %i.hx
  store i32 0, ptr %i.nz, align 1
  br label %.loopexit1692

bb.cf:                                            ; preds = %bb.cd
  %i.oa = getelementptr inbounds nuw i8, ptr %.val1428, i64 %i.e
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 136
  %.0.copyload.i1680 = load i64, ptr %i.ob, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1680) #8, !srcloc !20
  %.val1554 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oc = getelementptr inbounds nuw i8, ptr %.val1554, i64 %.pre-phi
  store i64 %.0.copyload.i1680, ptr %i.oc, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AArrayImpl0x3A0x3A_setOwnIndexedImpl0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.hs, i32 noundef %i.dv, i32 noundef %3, i32 noundef %.013631803, i32 noundef %.01353) #8
  %i.od = add i32 %.013631803, 1
  %i.oe = uitofp i32 %i.od to double              ; 2 uses
  %.val1489 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.of = getelementptr inbounds nuw i8, ptr %.val1489, i64 %i.i
  %.0.copyload.i1681 = load i32, ptr %i.of, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1681) #8, !srcloc !19
  %i.og = zext i32 %.0.copyload.i1681 to i64      ; 2 uses
  %i.oh = add nuw nsw i64 %i.og, 164              ; 2 uses
  %.val1488 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oi = getelementptr inbounds nuw i8, ptr %.val1488, i64 %i.oh
  %.0.copyload.i1682 = load i32, ptr %i.oi, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1682) #8, !srcloc !19
  %.val1487 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oj = getelementptr inbounds nuw i8, ptr %.val1487, i64 %i.og
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 168
  %.0.copyload.i1683 = load i32, ptr %i.ok, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1683) #8, !srcloc !19
  %i.ol = icmp ult i32 %.0.copyload.i1682, %.0.copyload.i1683
  br i1 %i.ol, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.om = add i32 %.0.copyload.i1682, 8
  %.val1427 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.on = getelementptr inbounds nuw i8, ptr %.val1427, i64 %i.oh
  store i32 %i.om, ptr %i.on, align 1
  %i.oo = zext i32 %.0.copyload.i1682 to i64
  %.val1594 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.op = getelementptr inbounds nuw i8, ptr %.val1594, i64 %i.oo
  store double %i.oe, ptr %i.op, align 1
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.oq = bitcast double %i.oe to i64
  %i.or = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1681, i64 noundef %i.oq) #8
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.51373 = phi i32 [ %.0.copyload.i1682, %bb.cg ], [ %i.or, %bb.ch ]
  %.val1426 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.os = getelementptr inbounds nuw i8, ptr %.val1426, i64 %i.e
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  store i32 0, ptr %i.ot, align 1
  %.val1425 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ou = getelementptr inbounds nuw i8, ptr %.val1425, i64 %i.e
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 68
  store i32 0, ptr %i.ov, align 1
  %i.ow = add i32 %i.b, -376
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AputNamedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.ht, i32 noundef %i.dv, i32 noundef %3, i32 noundef 85, i32 noundef %.51373, i32 noundef %i.dv, i32 noundef %i.ow) #8
  %.val1583 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ox = getelementptr inbounds nuw i8, ptr %.val1583, i64 %i.e
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 48
  %.0.copyload.i1684 = load i8, ptr %i.oy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1684) #8, !srcloc !21
  %.not1419 = icmp eq i8 %.0.copyload.i1684, 0
  %.val1424 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not1419, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.oz = getelementptr inbounds nuw i8, ptr %.val1424, i64 %i.hx
  store i32 0, ptr %i.oz, align 1
  br label %.loopexit1692

bb.ck:                                            ; preds = %bb.ci
  %i.pa = getelementptr inbounds nuw i8, ptr %.val1424, i64 %i.ia
  %.0.copyload.i1685 = load i64, ptr %i.pa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1685) #8, !srcloc !20
  %.val1553 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pb = getelementptr inbounds nuw i8, ptr %.val1553, i64 %i.hx
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  store i64 %.0.copyload.i1685, ptr %i.pc, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pd = getelementptr inbounds nuw i8, ptr %.val, i64 %i.hx
  store i32 1, ptr %i.pd, align 1
  br label %.loopexit1692

.loopexit1692:                                    ; preds = %19, %13, %9, %bb.am, %bb.al, %bb.ck, %bb.cj, %bb.ce, %bb.at, %bb.an, %bb.ac, %.thread, %bb.y, %bb.v, %bb.t, %bb.o, %bb.j, %bb.e, %bb.c
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29(ptr noundef nonnull %0, i32 noundef %i.ab) #8
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AregExpPrototypeSymbolSearch0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 11 uses
  %i.c = add i32 %i.b, -272                       ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 61 uses
  %i.e = zext i32 %i.c to i64                     ; 19 uses
  %.val586 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val586, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store i32 %3, ptr %i.g, align 1
  %i.h = zext i32 %3 to i64                       ; 2 uses
  %i.i = add nuw nsw i64 %i.h, 4                  ; 5 uses
  %.val605 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val605, i64 %i.i
  %.0.copyload.i = load i32, ptr %i.j, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.k = add i32 %i.b, -36                        ; 2 uses
  %i.l = add i32 %i.b, -176                       ; 2 uses
  %i.m = zext i32 %i.k to i64
  %.val585 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val585, i64 %i.m
  store i32 %i.l, ptr %i.n, align 1
  %.val613 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val613, i64 %i.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 228
  store i64 17179869185, ptr %i.p, align 1
  %.val584 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val584, i64 %i.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 224
  store i32 %i.k, ptr %i.r, align 1
  %.val583 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val583, i64 %i.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 92
  store i32 %.0.copyload.i, ptr %i.t, align 1
  %.val582 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val582, i64 %i.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 260
  store i32 0, ptr %i.v, align 1
  %i.w = add i32 %i.b, -48
  %.val581 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val581, i64 %i.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 256
  store i32 %i.w, ptr %i.y, align 1
  %.val580 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %.val580, i64 %i.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 252
  store i32 %i.l, ptr %i.aa, align 1
  %i.ab = add i32 %i.b, -184                      ; 2 uses
  %.val579 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val579, i64 %i.i
  store i32 %i.ab, ptr %i.ac, align 1
  %i.ad = zext i32 %4 to i64                      ; 2 uses
  %.val604 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val604, i64 %i.ad
  %.0.copyload.i622 = load i32, ptr %i.ae, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i622) #8, !srcloc !19
  %i.af = zext i32 %.0.copyload.i622 to i64
  %.val621 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.val621, i64 %i.af
  %.0.copyload.i623 = load i64, ptr %i.ag, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i623) #8, !srcloc !20
  %i.ah = icmp ugt i64 %.0.copyload.i623, -844424930131969
  br i1 %i.ah, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ai = and i64 %.0.copyload.i623, 4294967295   ; 2 uses
  %.val603 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val603, i64 %i.ai
  %.0.copyload.i624 = load i32, ptr %i.aj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i624) #8, !srcloc !19
  %i.ak = add i32 %.0.copyload.i624, -436207616
  %i.al = icmp ult i32 %i.ak, 855638016
  br i1 %i.al, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.val620 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.val620, i64 70384
  %.0.copyload.i625 = load i64, ptr %i.am, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i625) #8, !srcloc !20
  %.pre = and i64 %.0.copyload.i625, 4294967295
  %i.an = icmp ult i64 %.0.copyload.i625, -844424930131968
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.pre-phi = phi i64 [ %i.ai, %bb.b ], [ %.pre, %bb.c ]
  %.0540 = phi i1 [ false, %bb.b ], [ %i.an, %bb.c ]
  %.0 = phi i32 [ %.0.copyload.i622, %bb.b ], [ 70384, %bb.c ] ; 4 uses
  %i.ao = icmp eq i64 %.pre-phi, 0
  %.not549 = or i1 %.0540, %i.ao
  br i1 %.not549, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.val578 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.val578, i64 %i.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  store i32 0, ptr %i.aq, align 1
  %.val612 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.val612, i64 %i.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  store i64 219043332097, ptr %i.as, align 1
  %.val577 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %.val577, i64 %i.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  store i32 3, ptr %i.au, align 1
  %.val576 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %.val576, i64 %i.e
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  store i32 60458, ptr %i.aw, align 1
  %i.ax = add i32 %i.b, -224
  %i.ay = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseTypeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.ax) #8
  %i.az = zext i32 %1 to i64
  %.val575 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %.val575, i64 %i.az
  store i32 %i.ay, ptr %i.ba, align 1
  br label %bb.ax

bb.f:                                             ; preds = %bb.d
  %i.bb = add i32 %.0.copyload.i622, -8
  %.val602 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %.val602, i64 %i.ad
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %.0.copyload.i626 = load i32, ptr %i.bd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i626) #8, !srcloc !19
  %.not = icmp eq i32 %.0.copyload.i626, 0
  %i.be = select i1 %.not, i32 70392, i32 %i.bb
  %i.bf = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoString_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.be) #8 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, -1
  br i1 %i.bg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bh = zext i32 %1 to i64
  %.val574 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val574, i64 %i.bh
  store i32 0, ptr %i.bi, align 1
  br label %bb.ax

bb.h:                                             ; preds = %bb.f
  %i.bj = zext i32 %i.bf to i64
  %i.bk = or disjoint i64 %i.bj, -844424930131968 ; 2 uses
  %.val601 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.val601, i64 %i.i
  %.0.copyload.i627 = load i32, ptr %i.bl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i627) #8, !srcloc !19
  %i.bm = zext i32 %.0.copyload.i627 to i64       ; 2 uses
  %i.bn = add nuw nsw i64 %i.bm, 164              ; 2 uses
  %.val600 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %.val600, i64 %i.bn
  %.0.copyload.i628 = load i32, ptr %i.bo, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i628) #8, !srcloc !19
  %.val599 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %.val599, i64 %i.bm
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 168
  %.0.copyload.i629 = load i32, ptr %i.bq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i629) #8, !srcloc !19
  %i.br = icmp ult i32 %.0.copyload.i628, %.0.copyload.i629
  br i1 %i.br, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bs = add i32 %.0.copyload.i628, 8
  %.val573 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %.val573, i64 %i.bn
  store i32 %i.bs, ptr %i.bt, align 1
  %i.bu = zext i32 %.0.copyload.i628 to i64
  %.val611 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %.val611, i64 %i.bu
  store i64 %i.bk, ptr %i.bv, align 1
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bw = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i627, i64 noundef %i.bk) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0534 = phi i32 [ %.0.copyload.i628, %bb.i ], [ %i.bw, %bb.j ]
  %i.bx = add i32 %i.b, -224
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AgetNamed0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropCacheID0x29(ptr noundef nonnull %0, i32 noundef %i.bx, i32 noundef %3, i32 noundef %.0) #8
  %.val598 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %.val598, i64 %i.e
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %.0.copyload.i630 = load i32, ptr %i.bz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i630) #8, !srcloc !19
  %.not550 = icmp eq i32 %.0.copyload.i630, 0
  br i1 %.not550, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ca = zext i32 %1 to i64
  %.val572 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %.val572, i64 %i.ca
  store i32 0, ptr %i.cb, align 1
  br label %bb.ax

bb.m:                                             ; preds = %bb.k
end_hunk_0
