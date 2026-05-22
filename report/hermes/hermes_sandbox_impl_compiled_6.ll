inline.NumInlined: 8639
inline.NumDeleted: 26
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoBoolean0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29:bb.a
  %i.ad = zext i1 %i.ac to i32
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.ae = bitcast i64 %1 to double                ; 2 uses
  %i.af = fcmp oeq double %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = fcmp ord double %i.ae, 0.000000e+00
  %i.ah = zext i1 %i.ag to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.a, %bb.a, %bb.g, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.f ], [ %i.ah, %bb.g ], [ 0, %bb.a ], [ 0, %bb.a ], [ %i.g, %bb.b ], [ 1, %bb.c ], [ %i.ad, %bb.e ], [ %i.w, %bb.d ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !15
  ret i32 %.0
}

declare i32 @w2c_hermes_hermes0x3A0x3Abigint0x3A0x3Acompare0x28hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20long0x20long0x29(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AgetMethod0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ACallable0x3A0x3AexecuteCall10x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ACallable0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHermesValue0x2C0x20bool0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AordinaryToPrimitive0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3APreferredType0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AIdentifier0x2C0x20int0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AIdentifier0x2C0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AIdentifier0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AIdentifier0x2C0x20int0x3E0x3E0x2C0x20hermes0x3A0x3AIdentifier0x2C0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AIdentifier0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AIdentifier0x2C0x20int0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3AIdentifier0x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AIdentifier0x2C0x20int0x3E0x2A0x2C0x20hermes0x3A0x3AIdentifier0x260x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.b = zext i32 %1 to i64                       ; 5 uses
  %i.c = add nuw nsw i64 %i.b, 4                  ; 3 uses
  %.val199 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val199, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = shl i32 %.0.copyload.i, 2
  %i.f = add i32 %i.e, 4
  %i.g = add nuw nsw i64 %i.b, 12                 ; 2 uses
  %.val198 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val198, i64 %i.g
  %.0.copyload.i204 = load i32, ptr %i.h, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i204) #8, !srcloc !14
  %i.i = mul i32 %.0.copyload.i204, 3
  %.not = icmp ult i32 %i.f, %i.i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = shl i32 %.0.copyload.i204, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = xor i32 %.0.copyload.i, -1
  %i.l = add i32 %.0.copyload.i204, %i.k
  %.val197 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val197, i64 %i.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.copyload.i205 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i205) #8, !srcloc !14
  %i.o = sub i32 %i.l, %.0.copyload.i205
  %i.p = lshr i32 %.0.copyload.i204, 3
  %i.q = icmp ugt i32 %i.o, %i.p
  br i1 %i.q, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0179 = phi i32 [ %i.j, %bb.b ], [ %.0.copyload.i204, %bb.c ]
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AIdentifier0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AIdentifier0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AIdentifier0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0179)
  %.val196 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %.val196, i64 %i.g
  %.0.copyload.i206 = load i32, ptr %i.r, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i206) #8, !srcloc !14
  %.not184 = icmp eq i32 %.0.copyload.i206, 0
  br i1 %.not184, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = zext i32 %3 to i64
  %.val195 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val195, i64 %i.s
  %.0.copyload.i207 = load i32, ptr %i.t, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i207) #8, !srcloc !14
  %.val194 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val194, i64 %i.b
  %.0.copyload.i208 = load i32, ptr %i.u, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i208) #8, !srcloc !14
  %i.v = add i32 %.0.copyload.i206, -1            ; 2 uses
  %i.w = lshr i32 %.0.copyload.i207, 4
  %i.x = lshr i32 %.0.copyload.i207, 9
  %i.y = xor i32 %i.w, %i.x
  %i.z = and i32 %i.y, %i.v                       ; 2 uses
  %i.aa = shl nuw nsw i32 %i.z, 3
  %i.ab = add i32 %i.aa, %.0.copyload.i208        ; 3 uses
  %i.ac = zext i32 %i.ab to i64
  %.val193 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.val193, i64 %i.ac
  %.0.copyload.i209 = load i32, ptr %i.ad, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i209) #8, !srcloc !14
  %i.ae = icmp eq i32 %.0.copyload.i207, %.0.copyload.i209
  br i1 %i.ae, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.e, %bb.g
  %.1180 = phi i32 [ %i.aj, %bb.g ], [ 0, %bb.e ] ; 3 uses
  %.0178 = phi i32 [ %.0.copyload.i210, %bb.g ], [ %.0.copyload.i209, %bb.e ] ; 2 uses
  %.0177 = phi i32 [ %i.al, %bb.g ], [ 1, %bb.e ] ; 2 uses
  %.0176 = phi i32 [ %i.am, %bb.g ], [ %i.z, %bb.e ]
  %.0 = phi i32 [ %i.ao, %bb.g ], [ %i.ab, %bb.e ] ; 2 uses
  %i.af = icmp eq i32 %.0178, -4
  %.not187 = icmp eq i32 %.1180, 0                ; 2 uses
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader
  %i.ag = select i1 %.not187, i32 %.0, i32 %.1180
  br label %.loopexit

bb.g:                                             ; preds = %.preheader
  %i.ah = icmp eq i32 %.0178, -8
  %i.ai = select i1 %i.ah, i1 %.not187, i1 false
  %i.aj = select i1 %i.ai, i32 %.0, i32 %.1180
  %i.ak = add i32 %.0176, %.0177
  %i.al = add i32 %.0177, 1
  %i.am = and i32 %i.ak, %i.v                     ; 2 uses
  %i.an = shl i32 %i.am, 3
  %i.ao = add i32 %i.an, %.0.copyload.i208        ; 3 uses
  %i.ap = zext i32 %i.ao to i64
  %.val192 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %.val192, i64 %i.ap
  %.0.copyload.i210 = load i32, ptr %i.aq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i210) #8, !srcloc !14
  %.not186 = icmp eq i32 %.0.copyload.i207, %.0.copyload.i210
  br i1 %.not186, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.g, %bb.d, %bb.e, %bb.c, %bb.f
  %.1 = phi i32 [ %2, %bb.c ], [ %i.ab, %bb.e ], [ %i.ag, %bb.f ], [ 0, %bb.d ], [ %i.ao, %bb.g ] ; 2 uses
  %.val191 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %.val191, i64 %i.c
  %.0.copyload.i211 = load i32, ptr %i.ar, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i211) #8, !srcloc !14
  %i.as = add i32 %.0.copyload.i211, 1
  %.val203 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val203, i64 %i.c
  store i32 %i.as, ptr %i.at, align 1
  %i.au = zext i32 %.1 to i64                     ; 3 uses
  %.val190 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val190, i64 %i.au
  %.0.copyload.i212 = load i32, ptr %i.av, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i212) #8, !srcloc !14
  %.not188 = icmp eq i32 %.0.copyload.i212, -4
  br i1 %.not188, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.aw = add nuw nsw i64 %i.b, 8                 ; 2 uses
  %.val189 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %.val189, i64 %i.aw
  %.0.copyload.i213 = load i32, ptr %i.ax, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i213) #8, !srcloc !14
  %i.ay = add i32 %.0.copyload.i213, -1
  %.val202 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %.val202, i64 %i.aw
  store i32 %i.ay, ptr %i.az, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  %i.ba = zext i32 %3 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ba
  %.0.copyload.i214 = load i32, ptr %i.bb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i214) #8, !srcloc !14
  %.val201 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %.val201, i64 %i.au
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 0, ptr %i.bd, align 1
  %.val200 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %.val200, i64 %i.au
  store i32 %.0.copyload.i214, ptr %i.be, align 1
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AIdentifier0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AIdentifier0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AIdentifier0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 48 uses
  %i.b = zext i32 %1 to i64                       ; 6 uses
  %i.c = add nuw nsw i64 %i.b, 12                 ; 5 uses
  %.val417 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val417, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = add i32 %2, -1
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 4
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 8
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 16
  %i.p = or i64 %i.o, %i.n
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = add i32 %i.q, 1
  %3 = tail call i32 @llvm.umax.i32(i32 %i.r, i32 64) ; 2 uses
  %.val440 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.val440, i64 %i.c
  store i32 %3, ptr %i.s, align 1
  %.val416 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val416, i64 %i.b
  %.0.copyload.i443 = load i32, ptr %i.t, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i443) #8, !srcloc !14
  %i.u = shl i32 %3, 3
  %i.v = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef %0, i32 noundef %i.u) #8 ; 21 uses
  %.val439 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %.val439, i64 %i.b
  store i32 %i.v, ptr %i.w, align 1
  %.not = icmp eq i32 %.0.copyload.i443, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.val442 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %.val442, i64 %i.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i64 0, ptr %i.y, align 1
  %.val415 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val415, i64 %i.c
  %.0.copyload.i444 = load i32, ptr %i.z, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i444) #8, !srcloc !14
  %.not404 = icmp eq i32 %.0.copyload.i444, 0
  br i1 %.not404, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = and i32 %.0.copyload.i444, 7            ; 7 uses
  %.not405 = icmp eq i32 %i.aa, 0
  br i1 %.not405, label %.loopexit453, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.ab = zext i32 %i.v to i64
  %.val438 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.val438, i64 %i.ab
  store i32 -4, ptr %i.ac, align 1
  %i.ad = add i32 %i.v, 8                         ; 2 uses
  %.not406 = icmp eq i32 %i.aa, 1
  br i1 %.not406, label %.loopexit453, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %i.ae = zext i32 %i.ad to i64
  %.val438.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %.val438.1, i64 %i.ae
  store i32 -4, ptr %i.af, align 1
  %i.ag = add i32 %i.v, 16                        ; 2 uses
  %.not406.1 = icmp eq i32 %i.aa, 2
  br i1 %.not406.1, label %.loopexit453, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.ah = zext i32 %i.ag to i64
  %.val438.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %.val438.2, i64 %i.ah
  store i32 -4, ptr %i.ai, align 1
  %i.aj = add i32 %i.v, 24                        ; 2 uses
  %.not406.2 = icmp eq i32 %i.aa, 3
  br i1 %.not406.2, label %.loopexit453, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.ak = zext i32 %i.aj to i64
  %.val438.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val438.3, i64 %i.ak
  store i32 -4, ptr %i.al, align 1
  %i.am = add i32 %i.v, 32                        ; 2 uses
  %.not406.3 = icmp eq i32 %i.aa, 4
  br i1 %.not406.3, label %.loopexit453, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.an = zext i32 %i.am to i64
  %.val438.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.val438.4, i64 %i.an
  store i32 -4, ptr %i.ao, align 1
  %i.ap = add i32 %i.v, 40                        ; 2 uses
  %.not406.4 = icmp eq i32 %i.aa, 5
  br i1 %.not406.4, label %.loopexit453, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.aq = zext i32 %i.ap to i64
  %.val438.5 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %.val438.5, i64 %i.aq
  store i32 -4, ptr %i.ar, align 1
  %i.as = add i32 %i.v, 48                        ; 2 uses
  %.not406.5 = icmp eq i32 %i.aa, 6
  br i1 %.not406.5, label %.loopexit453, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.at = zext i32 %i.as to i64
  %.val438.6 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %.val438.6, i64 %i.at
  store i32 -4, ptr %i.au, align 1
  %i.av = add i32 %i.v, 56
  br label %.loopexit453

.loopexit453:                                     ; preds = %.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %bb.c
  %.1 = phi i32 [ %i.v, %bb.c ], [ %i.ad, %.preheader ], [ %i.ag, %.preheader.1 ], [ %i.aj, %.preheader.2 ], [ %i.am, %.preheader.3 ], [ %i.ap, %.preheader.4 ], [ %i.as, %.preheader.5 ], [ %i.av, %.preheader.6 ]
  %i.aw = add i32 %.0.copyload.i444, 536870911
  %i.ax = and i32 %i.aw, 536870911
  %i.ay = icmp samesign ult i32 %i.ax, 7
  br i1 %i.ay, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.loopexit453
  %i.az = shl i32 %.0.copyload.i444, 3
  %i.ba = add i32 %i.az, %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.2 = phi i32 [ %.1, %bb.d ], [ %i.br, %bb.e ]  ; 2 uses
  %i.bb = zext i32 %.2 to i64                     ; 8 uses
  %.val437 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %.val437, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  store i32 -4, ptr %i.bd, align 1
  %.val436 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %.val436, i64 %i.bb
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  store i32 -4, ptr %i.bf, align 1
  %.val435 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %.val435, i64 %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store i32 -4, ptr %i.bh, align 1
  %.val434 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %.val434, i64 %i.bb
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store i32 -4, ptr %i.bj, align 1
  %.val433 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %.val433, i64 %i.bb
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i32 -4, ptr %i.bl, align 1
  %.val432 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %.val432, i64 %i.bb
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i32 -4, ptr %i.bn, align 1
  %.val431 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %.val431, i64 %i.bb
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 -4, ptr %i.bp, align 1
  %.val430 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %.val430, i64 %i.bb
  store i32 -4, ptr %i.bq, align 1
  %i.br = add i32 %.2, 64                         ; 2 uses
  %.not407 = icmp eq i32 %i.br, %i.ba
  br i1 %.not407, label %.loopexit, label %bb.e

bb.f:                                             ; preds = %bb.a
  %i.bs = add nuw nsw i64 %i.b, 4                 ; 3 uses
  %.val441 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bt = getelementptr inbounds nuw i8, ptr %.val441, i64 %i.bs
  store i64 0, ptr %i.bt, align 1
  %.val414 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val414, i64 %i.c
  %.0.copyload.i445 = load i32, ptr %i.bu, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i445) #8, !srcloc !14
  %.not395 = icmp eq i32 %.0.copyload.i445, 0
  br i1 %.not395, label %.loopexit457, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = and i32 %.0.copyload.i445, 7            ; 7 uses
  %.not396 = icmp eq i32 %i.bv, 0
  br i1 %.not396, label %.loopexit459, label %.preheader458

.preheader458:                                    ; preds = %bb.g
  %i.bw = zext i32 %i.v to i64
  %.val429 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %.val429, i64 %i.bw
  store i32 -4, ptr %i.bx, align 1
  %i.by = add i32 %i.v, 8                         ; 2 uses
  %.not397 = icmp eq i32 %i.bv, 1
  br i1 %.not397, label %.loopexit459, label %.preheader458.1

.preheader458.1:                                  ; preds = %.preheader458
  %i.bz = zext i32 %i.by to i64
  %.val429.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %.val429.1, i64 %i.bz
  store i32 -4, ptr %i.ca, align 1
  %i.cb = add i32 %i.v, 16                        ; 2 uses
  %.not397.1 = icmp eq i32 %i.bv, 2
  br i1 %.not397.1, label %.loopexit459, label %.preheader458.2

.preheader458.2:                                  ; preds = %.preheader458.1
  %i.cc = zext i32 %i.cb to i64
  %.val429.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cd = getelementptr inbounds nuw i8, ptr %.val429.2, i64 %i.cc
  store i32 -4, ptr %i.cd, align 1
  %i.ce = add i32 %i.v, 24                        ; 2 uses
  %.not397.2 = icmp eq i32 %i.bv, 3
  br i1 %.not397.2, label %.loopexit459, label %.preheader458.3

.preheader458.3:                                  ; preds = %.preheader458.2
  %i.cf = zext i32 %i.ce to i64
  %.val429.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %.val429.3, i64 %i.cf
  store i32 -4, ptr %i.cg, align 1
  %i.ch = add i32 %i.v, 32                        ; 2 uses
  %.not397.3 = icmp eq i32 %i.bv, 4
  br i1 %.not397.3, label %.loopexit459, label %.preheader458.4

.preheader458.4:                                  ; preds = %.preheader458.3
  %i.ci = zext i32 %i.ch to i64
  %.val429.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cj = getelementptr inbounds nuw i8, ptr %.val429.4, i64 %i.ci
  store i32 -4, ptr %i.cj, align 1
  %i.ck = add i32 %i.v, 40                        ; 2 uses
  %.not397.4 = icmp eq i32 %i.bv, 5
  br i1 %.not397.4, label %.loopexit459, label %.preheader458.5

.preheader458.5:                                  ; preds = %.preheader458.4
  %i.cl = zext i32 %i.ck to i64
end_hunk_0
begin_hunk_1_@w2c_hermes_llvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AIdentifier0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AIdentifier0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AIdentifier0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29:bb.a

bb.m:                                             ; preds = %.preheader454
  %i.ee = select i1 %.not402, i32 %.0382, i32 %.2386
  %.pre = zext i32 %i.ee to i64
  br label %.loopexit455

bb.n:                                             ; preds = %.preheader454
  %i.ef = icmp eq i32 %.0389, -8
  %i.eg = select i1 %i.ef, i1 %.not402, i1 false
  %i.eh = select i1 %i.eg, i32 %.0382, i32 %.2386
  %i.ei = add i32 %.0387, %.0388
  %i.ej = add i32 %.0388, 1
  %i.ek = and i32 %i.ei, %i.dt                    ; 2 uses
  %i.el = shl i32 %i.ek, 3
  %i.em = add i32 %i.el, %.0.copyload.i447        ; 2 uses
  %i.en = zext i32 %i.em to i64                   ; 2 uses
  %.val409 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.eo = getelementptr inbounds nuw i8, ptr %.val409, i64 %i.en
  %.0.copyload.i450 = load i32, ptr %i.eo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i450) #8, !srcloc !14
  %.not401 = icmp eq i32 %.0.copyload.i446, %.0.copyload.i450
  br i1 %.not401, label %.loopexit455, label %.preheader454

.loopexit455:                                     ; preds = %bb.n, %bb.l, %bb.m
  %.pre-phi = phi i64 [ %.pre, %bb.m ], [ %i.ea, %bb.l ], [ %i.en, %bb.n ] ; 2 uses
  %.val420 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ep = getelementptr inbounds nuw i8, ptr %.val420, i64 %.pre-phi
  store i32 %.0.copyload.i446, ptr %i.ep, align 1
  %.val408 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.eq = getelementptr inbounds nuw i8, ptr %.val408, i64 %i.dp
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %.0.copyload.i451 = load i32, ptr %i.er, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i451) #8, !srcloc !14
  %.val419 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.es = getelementptr inbounds nuw i8, ptr %.val419, i64 %.pre-phi
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  store i32 %.0.copyload.i451, ptr %i.et, align 1
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.eu = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bs
  %.0.copyload.i452 = load i32, ptr %i.eu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i452) #8, !srcloc !14
  %i.ev = add i32 %.0.copyload.i452, 1
  %.val418 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ew = getelementptr inbounds nuw i8, ptr %.val418, i64 %i.bs
  store i32 %i.ev, ptr %i.ew, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.k, %.loopexit455
  %i.ex = add i32 %.6, 8                          ; 2 uses
  %.not403 = icmp eq i32 %i.ex, %i.do
  br i1 %.not403, label %.loopexit456, label %bb.k

.loopexit456:                                     ; preds = %bb.o, %.loopexit457
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i443) #8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.loopexit453, %bb.b, %.loopexit456
  ret void
}

declare i32 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3Abasic_string0x5Babi0x3Av150070x5D0x3Cstd0x3A0x3Anullptr_t0x3E0x28char0x20const0x2A0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_abort(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x2C0x20hermes0x3A0x3ABuiltinMethod0x3A0x3AEnum0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x2C0x20hermes0x3A0x3ABuiltinMethod0x3A0x3AEnum0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x2C0x20hermes0x3A0x3ABuiltinMethod0x3A0x3AEnum0x3E0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x2C0x20hermes0x3A0x3ABuiltinMethod0x3A0x3AEnum0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x2C0x20hermes0x3A0x3ABuiltinMethod0x3A0x3AEnum0x3E0x3E0x3A0x3AInsertIntoBucketImpl0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x3E0x28std0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x20const0x260x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x20const0x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x2C0x20hermes0x3A0x3ABuiltinMethod0x3A0x3AEnum0x3E0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 4 uses
  %i.c = add i32 %i.b, -16                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 11 uses
  %i.e = zext i32 %1 to i64                       ; 4 uses
  %i.f = add nuw nsw i64 %i.e, 4                  ; 3 uses
  %.val121 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %.val121, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.h = shl i32 %.0.copyload.i, 2
  %i.i = add i32 %i.h, 4
  %.val120 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %.val120, i64 %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.0.copyload.i124 = load i32, ptr %i.k, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i124) #8, !srcloc !14
  %i.l = mul i32 %.0.copyload.i124, 3
  %.not = icmp ult i32 %i.i, %i.l
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = shl i32 %.0.copyload.i124, 1
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x2C0x20hermes0x3A0x3ABuiltinMethod0x3A0x3AEnum0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x2C0x20hermes0x3A0x3ABuiltinMethod0x3A0x3AEnum0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.m)
  %i.n = add i32 %i.b, -8
  %i.o = tail call i32 @w2c_hermes_bool0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x2C0x20hermes0x3A0x3ABuiltinMethod0x3A0x3AEnum0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x2C0x20hermes0x3A0x3ABuiltinMethod0x3A0x3AEnum0x3E0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x2C0x20hermes0x3A0x3ABuiltinMethod0x3A0x3AEnum0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x2C0x20hermes0x3A0x3ABuiltinMethod0x3A0x3AEnum0x3E0x3E0x3A0x3ALookupBucketFor0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x3E0x28std0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x20const0x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x2C0x20hermes0x3A0x3ABuiltinMethod0x3A0x3AEnum0x3E0x20const0x2A0x260x290x20const(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %3, i32 noundef %i.n) #8 ; 0 uses
  %i.p = zext i32 %i.c to i64
  %.val119 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %.val119, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.0.copyload.i125 = load i32, ptr %i.r, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i125) #8, !srcloc !14
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = xor i32 %.0.copyload.i, -1
  %i.t = add i32 %.0.copyload.i124, %i.s
  %.val118 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val118, i64 %i.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.copyload.i126 = load i32, ptr %i.v, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i126) #8, !srcloc !14
  %i.w = sub i32 %i.t, %.0.copyload.i126
  %i.x = lshr i32 %.0.copyload.i124, 3
  %i.y = icmp ugt i32 %i.w, %i.x
  br i1 %i.y, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x2C0x20hermes0x3A0x3ABuiltinMethod0x3A0x3AEnum0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x2C0x20hermes0x3A0x3ABuiltinMethod0x3A0x3AEnum0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0.copyload.i124)
  %i.z = add i32 %i.b, -4
  %i.aa = tail call i32 @w2c_hermes_bool0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x2C0x20hermes0x3A0x3ABuiltinMethod0x3A0x3AEnum0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x2C0x20hermes0x3A0x3ABuiltinMethod0x3A0x3AEnum0x3E0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x2C0x20hermes0x3A0x3ABuiltinMethod0x3A0x3AEnum0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x2C0x20hermes0x3A0x3ABuiltinMethod0x3A0x3AEnum0x3E0x3E0x3A0x3ALookupBucketFor0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x3E0x28std0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x20const0x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x2C0x20hermes0x3A0x3ABuiltinMethod0x3A0x3AEnum0x3E0x20const0x2A0x260x290x20const(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %3, i32 noundef %i.z) #8 ; 0 uses
  %i.ab = zext i32 %i.c to i64
  %.val117 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.val117, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %.0.copyload.i127 = load i32, ptr %i.ad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i127) #8, !srcloc !14
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ %.0.copyload.i125, %bb.b ], [ %4, %bb.c ], [ %.0.copyload.i127, %bb.d ] ; 2 uses
  %.val116 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %.val116, i64 %i.f
  %.0.copyload.i128 = load i32, ptr %i.ae, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i128) #8, !srcloc !14
  %i.af = add i32 %.0.copyload.i128, 1
  %.val123 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.val123, i64 %i.f
  store i32 %i.af, ptr %i.ag, align 1
  %i.ah = zext i32 %.0 to i64                     ; 2 uses
  %.val115 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %.val115, i64 %i.ah
  %.0.copyload.i129 = load i32, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i129) #8, !srcloc !14
  %i.aj = icmp eq i32 %.0.copyload.i129, 2147483647
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.val114 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val114, i64 %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %.0.copyload.i130 = load i32, ptr %i.al, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i130) #8, !srcloc !14
  %i.am = icmp eq i32 %.0.copyload.i130, -4
  br i1 %i.am, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.an = add nuw nsw i64 %i.e, 8                 ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 %i.an
  %.0.copyload.i131 = load i32, ptr %i.ao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i131) #8, !srcloc !14
  %i.ap = add i32 %.0.copyload.i131, -1
  %.val122 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %.val122, i64 %i.an
  store i32 %i.ap, ptr %i.aq, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  store i32 %i.b, ptr %i.a, align 8, !tbaa !15
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x2C0x20hermes0x3A0x3ABuiltinMethod0x3A0x3AEnum0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cint0x2C0x20hermes0x3A0x3AIdentifier0x3E0x2C0x20hermes0x3A0x3ABuiltinMethod0x3A0x3AEnum0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 49 uses
  %i.e = zext i32 %1 to i64                       ; 5 uses
  %i.f = add nuw nsw i64 %i.e, 12                 ; 4 uses
  %.val380 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %.val380, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.h = add i32 %2, -1
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = lshr i64 %i.i, 1
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 2
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 4
  %i.o = or i64 %i.n, %i.m                        ; 2 uses
  %i.p = lshr i64 %i.o, 8
  %i.q = or i64 %i.p, %i.o                        ; 2 uses
  %i.r = lshr i64 %i.q, 16
  %i.s = or i64 %i.r, %i.q
  %i.t = trunc nuw i64 %i.s to i32
  %i.u = add i32 %i.t, 1
  %3 = tail call i32 @llvm.umax.i32(i32 %i.u, i32 64) ; 2 uses
  %.val385 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %.val385, i64 %i.f
  store i32 %3, ptr %i.v, align 1
  %.val379 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %.val379, i64 %i.e
  %.0.copyload.i406 = load i32, ptr %i.w, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i406) #8, !srcloc !14
  %i.x = mul i32 %3, 12
  %i.y = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef %0, i32 noundef %i.x) #8 ; 21 uses
  %.val384 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val384, i64 %i.e
  store i32 %i.y, ptr %i.z, align 1
  %.not = icmp eq i32 %.0.copyload.i406, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.val405 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %.val405, i64 %i.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i64 0, ptr %i.ab, align 1
  %.val378 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.val378, i64 %i.f
  %.0.copyload.i407 = load i32, ptr %i.ac, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i407) #8, !srcloc !14
  %.not366 = icmp eq i32 %.0.copyload.i407, 0
  br i1 %.not366, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = mul i32 %.0.copyload.i407, 12           ; 2 uses
  %i.ae = add i32 %i.ad, -12                      ; 2 uses
  %i.af = udiv i32 %i.ae, 12
  %i.ag = add nuw nsw i32 %i.af, 1
  %i.ah = and i32 %i.ag, 7                        ; 7 uses
  %.not367 = icmp eq i32 %i.ah, 0
  br i1 %.not367, label %.loopexit416, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.ai = zext i32 %i.y to i64
  %.val404 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %.val404, i64 %i.ai
  store i64 -15032385537, ptr %i.aj, align 1
  %i.ak = add i32 %i.y, 12                        ; 2 uses
  %.not368 = icmp eq i32 %i.ah, 1
  br i1 %.not368, label %.loopexit416, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %i.al = zext i32 %i.ak to i64
  %.val404.1 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %.val404.1, i64 %i.al
  store i64 -15032385537, ptr %i.am, align 1
  %i.an = add i32 %i.y, 24                        ; 2 uses
  %.not368.1 = icmp eq i32 %i.ah, 2
  br i1 %.not368.1, label %.loopexit416, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.ao = zext i32 %i.an to i64
  %.val404.2 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.val404.2, i64 %i.ao
  store i64 -15032385537, ptr %i.ap, align 1
  %i.aq = add i32 %i.y, 36                        ; 2 uses
  %.not368.2 = icmp eq i32 %i.ah, 3
  br i1 %.not368.2, label %.loopexit416, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.ar = zext i32 %i.aq to i64
  %.val404.3 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %.val404.3, i64 %i.ar
  store i64 -15032385537, ptr %i.as, align 1
  %i.at = add i32 %i.y, 48                        ; 2 uses
  %.not368.3 = icmp eq i32 %i.ah, 4
  br i1 %.not368.3, label %.loopexit416, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.au = zext i32 %i.at to i64
  %.val404.4 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val404.4, i64 %i.au
  store i64 -15032385537, ptr %i.av, align 1
  %i.aw = add i32 %i.y, 60                        ; 2 uses
  %.not368.4 = icmp eq i32 %i.ah, 5
  br i1 %.not368.4, label %.loopexit416, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.ax = zext i32 %i.aw to i64
  %.val404.5 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %.val404.5, i64 %i.ax
  store i64 -15032385537, ptr %i.ay, align 1
  %i.az = add i32 %i.y, 72                        ; 2 uses
  %.not368.5 = icmp eq i32 %i.ah, 6
  br i1 %.not368.5, label %.loopexit416, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.ba = zext i32 %i.az to i64
  %.val404.6 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %.val404.6, i64 %i.ba
  store i64 -15032385537, ptr %i.bb, align 1
  %i.bc = add i32 %i.y, 84
  br label %.loopexit416

.loopexit416:                                     ; preds = %.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %bb.c
  %.1 = phi i32 [ %i.y, %bb.c ], [ %i.ak, %.preheader ], [ %i.an, %.preheader.1 ], [ %i.aq, %.preheader.2 ], [ %i.at, %.preheader.3 ], [ %i.aw, %.preheader.4 ], [ %i.az, %.preheader.5 ], [ %i.bc, %.preheader.6 ]
  %i.bd = icmp ult i32 %i.ae, 84
  br i1 %i.bd, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.loopexit416
  %i.be = add i32 %i.ad, %i.y
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.2 = phi i32 [ %.1, %bb.d ], [ %i.bv, %bb.e ]  ; 2 uses
  %i.bf = zext i32 %.2 to i64                     ; 8 uses
  %.val403 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %.val403, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 84
  store i64 -15032385537, ptr %i.bh, align 1
  %.val402 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %.val402, i64 %i.bf
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  store i64 -15032385537, ptr %i.bj, align 1
  %.val401 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %.val401, i64 %i.bf
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 60
  store i64 -15032385537, ptr %i.bl, align 1
  %.val400 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %.val400, i64 %i.bf
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  store i64 -15032385537, ptr %i.bn, align 1
  %.val399 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %.val399, i64 %i.bf
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 36
  store i64 -15032385537, ptr %i.bp, align 1
  %.val398 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %.val398, i64 %i.bf
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store i64 -15032385537, ptr %i.br, align 1
  %.val397 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %.val397, i64 %i.bf
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i64 -15032385537, ptr %i.bt, align 1
  %.val396 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val396, i64 %i.bf
  store i64 -15032385537, ptr %i.bu, align 1
  %i.bv = add i32 %.2, 96                         ; 2 uses
  %.not369 = icmp eq i32 %i.bv, %i.be
  br i1 %.not369, label %.loopexit, label %bb.e

bb.f:                                             ; preds = %bb.a
  %i.bw = add nuw nsw i64 %i.e, 4                 ; 3 uses
  %.val395 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %.val395, i64 %i.bw
  store i64 0, ptr %i.bx, align 1
  %.val377 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %.val377, i64 %i.f
  %.0.copyload.i408 = load i32, ptr %i.by, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i408) #8, !srcloc !14
  %.not360 = icmp eq i32 %.0.copyload.i408, 0
  br i1 %.not360, label %.loopexit418, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bz = mul i32 %.0.copyload.i408, 12           ; 2 uses
  %i.ca = add i32 %i.bz, -12                      ; 2 uses
  %i.cb = udiv i32 %i.ca, 12
  %i.cc = add nuw nsw i32 %i.cb, 1
  %i.cd = and i32 %i.cc, 7                        ; 7 uses
  %.not361 = icmp eq i32 %i.cd, 0
  br i1 %.not361, label %.loopexit420, label %.preheader419

.preheader419:                                    ; preds = %bb.g
  %i.ce = zext i32 %i.y to i64
  %.val394 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cf = getelementptr inbounds nuw i8, ptr %.val394, i64 %i.ce
  store i64 -15032385537, ptr %i.cf, align 1
  %i.cg = add i32 %i.y, 12                        ; 2 uses
  %.not362 = icmp eq i32 %i.cd, 1
  br i1 %.not362, label %.loopexit420, label %.preheader419.1

.preheader419.1:                                  ; preds = %.preheader419
  %i.ch = zext i32 %i.cg to i64
  %.val394.1 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %.val394.1, i64 %i.ch
  store i64 -15032385537, ptr %i.ci, align 1
  %i.cj = add i32 %i.y, 24                        ; 2 uses
  %.not362.1 = icmp eq i32 %i.cd, 2
  br i1 %.not362.1, label %.loopexit420, label %.preheader419.2

.preheader419.2:                                  ; preds = %.preheader419.1
  %i.ck = zext i32 %i.cj to i64
  %.val394.2 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %.val394.2, i64 %i.ck
  store i64 -15032385537, ptr %i.cl, align 1
  %i.cm = add i32 %i.y, 36                        ; 2 uses
  %.not362.2 = icmp eq i32 %i.cd, 3
  br i1 %.not362.2, label %.loopexit420, label %.preheader419.3

.preheader419.3:                                  ; preds = %.preheader419.2
  %i.cn = zext i32 %i.cm to i64
  %.val394.3 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.co = getelementptr inbounds nuw i8, ptr %.val394.3, i64 %i.cn
  store i64 -15032385537, ptr %i.co, align 1
  %i.cp = add i32 %i.y, 48                        ; 2 uses
  %.not362.3 = icmp eq i32 %i.cd, 4
  br i1 %.not362.3, label %.loopexit420, label %.preheader419.4

.preheader419.4:                                  ; preds = %.preheader419.3
  %i.cq = zext i32 %i.cp to i64
  %.val394.4 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %.val394.4, i64 %i.cq
  store i64 -15032385537, ptr %i.cr, align 1
  %i.cs = add i32 %i.y, 60                        ; 2 uses
end_hunk_1
begin_hunk_2_@w2c_hermes_llvh0x3A0x3ABitVector0x3A0x3Aresize0x28unsigned0x20int0x2C0x20bool0x29:bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %.val340, i64 %i.b
  %.0.copyload.i370 = load i32, ptr %i.bg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i370) #8
  %i.bh = shl nuw nsw i32 %i.au, 2
  %i.bi = add nsw i32 %i.bh, -4
  %i.bj = add i32 %i.bi, %.0.copyload.i370
  %i.bk = zext i32 %i.bj to i64                   ; 3 uses
  %.val339 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %.val339, i64 %i.bk
  %.0.copyload.i371 = load i32, ptr %i.bl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i371) #8
  br i1 %.not332, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = or i32 %.0.copyload.i371, %i.bf
  %.val356 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bn = getelementptr inbounds nuw i8, ptr %.val356, i64 %i.bk
  store i32 %i.bm, ptr %i.bn, align 1
  %.val355 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %.val355, i64 %i.aq
  store i32 %2, ptr %i.bo, align 1
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.bp = xor i32 %i.bf, -1
  %i.bq = and i32 %.0.copyload.i371, %i.bp
  %.val354 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.br = getelementptr inbounds nuw i8, ptr %.val354, i64 %i.bk
  store i32 %i.bq, ptr %i.br, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.j, %bb.p
  %.1 = phi i32 [ %.0.copyload.i364, %bb.j ], [ %.0314, %bb.m ], [ %.0314, %bb.p ]
  %.val353 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %.val353, i64 %i.aq
  store i32 %2, ptr %i.bs, align 1
  %i.bt = icmp uge i32 %2, %.1
  %.not333 = icmp eq i32 %3, 0
  %or.cond = and i1 %.not333, %i.bt
  br i1 %or.cond, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.val338 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val338, i64 %i.c
  %.0.copyload.i372 = load i32, ptr %i.bu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i372) #8, !srcloc !14
  %i.bv = add i32 %2, 31
  %i.bw = lshr i32 %i.bv, 5                       ; 4 uses
  %i.bx = icmp ugt i32 %.0.copyload.i372, %i.bw
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.val337 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %.val337, i64 %i.b
  %.0.copyload.i373 = load i32, ptr %i.by, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i373) #8, !srcloc !14
  %i.bz = shl nuw nsw i32 %i.bw, 2
  %i.ca = add i32 %.0.copyload.i373, %i.bz
  %i.cb = sub nuw i32 %.0.copyload.i372, %i.bw
  %i.cc = shl i32 %i.cb, 2
  %i.cd = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.ca, i32 noundef 0, i32 noundef %i.cc) #8 ; 0 uses
  %.val336 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ce = getelementptr inbounds nuw i8, ptr %.val336, i64 %i.aq
  %.0.copyload.i374 = load i32, ptr %i.ce, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i374) #8, !srcloc !14
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.0 = phi i32 [ %.0.copyload.i374, %bb.s ], [ %2, %bb.r ]
  %i.cf = and i32 %.0, 31                         ; 2 uses
  %.not334 = icmp eq i32 %i.cf, 0
  br i1 %.not334, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val335 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %.val335, i64 %i.b
  %.0.copyload.i375 = load i32, ptr %i.cg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i375) #8, !srcloc !14
  %i.ch = shl nuw nsw i32 %i.bw, 2
  %i.ci = add nsw i32 %i.ch, -4
  %i.cj = add i32 %i.ci, %.0.copyload.i375
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ck
  %.0.copyload.i376 = load i32, ptr %i.cl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i376) #8, !srcloc !14
  %i.cm = shl nsw i32 -1, %i.cf
  %i.cn = xor i32 %i.cm, -1
  %i.co = and i32 %.0.copyload.i376, %i.cn
  %.val352 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cp = getelementptr inbounds nuw i8, ptr %.val352, i64 %i.ck
  store i32 %i.co, ptr %i.cp, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.t, %bb.u
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 2) i32 @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcCompare0x28unsigned0x20long0x20long0x20const0x2A0x2C0x20unsigned0x20long0x20long0x20const0x2A0x2C0x20unsigned0x20int0x29(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.not39 = icmp eq i32 %3, 0
  br i1 %.not39, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = zext i32 %3 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %.not = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv40 = phi i64 [ %i.b, %.lr.ph ], [ %indvars.iv.next, %bb.b ]
  %indvars.iv.next = add nsw i64 %indvars.iv40, -1 ; 3 uses
  %indvars = trunc nuw i64 %indvars.iv.next to i32
  %i.c = shl i32 %indvars, 3                      ; 2 uses
  %i.d = add i32 %i.c, %1
  %i.e = zext i32 %i.d to i64
  %.val36 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %.val36, i64 %i.e
  %.0.copyload.i = load i64, ptr %i.f, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #8, !srcloc !33
  %i.g = add i32 %i.c, %2
  %i.h = zext i32 %i.g to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %.0.copyload.i37 = load i64, ptr %i.i, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i37) #8, !srcloc !33
  %i.j = icmp eq i64 %.0.copyload.i, %.0.copyload.i37
  br i1 %i.j, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %.0.copyload.i, %.0.copyload.i37
  %i.l = select i1 %i.k, i32 1, i32 -1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.d
  %.033 = phi i32 [ %i.l, %bb.d ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.033
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AIdentifier0x2C0x20hermes0x3A0x3AGlobalObjectProperty0x2A0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AIdentifier0x2C0x20hermes0x3A0x3AGlobalObjectProperty0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AIdentifier0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AIdentifier0x2C0x20hermes0x3A0x3AGlobalObjectProperty0x2A0x3E0x3E0x2C0x20hermes0x3A0x3AIdentifier0x2C0x20hermes0x3A0x3AGlobalObjectProperty0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AIdentifier0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AIdentifier0x2C0x20hermes0x3A0x3AGlobalObjectProperty0x2A0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3AIdentifier0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AIdentifier0x2C0x20hermes0x3A0x3AGlobalObjectProperty0x2A0x3E0x2A0x2C0x20hermes0x3A0x3AIdentifier0x20const0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 60 uses
  %i.b = zext i32 %1 to i64                       ; 8 uses
  %i.c = add nuw nsw i64 %i.b, 4                  ; 5 uses
  %.val613 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val613, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = shl i32 %.0.copyload.i, 2
  %i.f = add i32 %i.e, 4
  %i.g = add nuw nsw i64 %i.b, 12                 ; 5 uses
  %.val612 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val612, i64 %i.g
  %.0.copyload.i643 = load i32, ptr %i.h, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i643) #8, !srcloc !14
  %i.i = mul i32 %.0.copyload.i643, 3
  %.not = icmp ult i32 %i.f, %i.i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = shl i32 %.0.copyload.i643, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = xor i32 %.0.copyload.i, -1
  %i.l = add i32 %.0.copyload.i643, %i.k
  %.val611 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val611, i64 %i.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.copyload.i644 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i644) #8, !srcloc !14
  %i.o = sub i32 %i.l, %.0.copyload.i644
  %i.p = lshr i32 %.0.copyload.i643, 3
  %i.q = icmp ugt i32 %i.o, %i.p
  br i1 %i.q, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0552 = phi i32 [ %i.j, %bb.b ], [ %.0.copyload.i643, %bb.c ]
  %.val610 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %.val610, i64 %i.g
  %.0.copyload.i645 = load i32, ptr %i.r, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i645) #8, !srcloc !14
  %i.s = add i32 %.0552, -1
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = lshr i64 %i.t, 1
  %i.v = or i64 %i.u, %i.t                        ; 2 uses
  %i.w = lshr i64 %i.v, 2
  %i.x = or i64 %i.w, %i.v                        ; 2 uses
  %i.y = lshr i64 %i.x, 4
  %i.z = or i64 %i.y, %i.x                        ; 2 uses
  %i.aa = lshr i64 %i.z, 8
  %i.ab = or i64 %i.aa, %i.z                      ; 2 uses
  %i.ac = lshr i64 %i.ab, 16
  %i.ad = or i64 %i.ac, %i.ab
  %i.ae = trunc nuw i64 %i.ad to i32
  %i.af = add i32 %i.ae, 1
  %4 = tail call i32 @llvm.umax.i32(i32 %i.af, i32 64) ; 2 uses
  %.val640 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.val640, i64 %i.g
  store i32 %4, ptr %i.ag, align 1
  %.val609 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.val609, i64 %i.b
  %.0.copyload.i646 = load i32, ptr %i.ah, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i646) #8, !srcloc !14
  %i.ai = shl i32 %4, 3
  %i.aj = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ai) #8 ; 21 uses
  %.val639 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val639, i64 %i.b
  store i32 %i.aj, ptr %i.ak, align 1
  %.not575 = icmp eq i32 %.0.copyload.i646, 0
  %.val642 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val642, i64 %i.c
  store i64 0, ptr %i.al, align 1
  %.val608 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %.val608, i64 %i.g
  %.0.copyload.i647 = load i32, ptr %i.am, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i647) #8
  %.not585 = icmp eq i32 %.0.copyload.i647, 0     ; 2 uses
  br i1 %.not575, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  br i1 %.not585, label %.loopexit663, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = and i32 %.0.copyload.i647, 7            ; 7 uses
  %.not586 = icmp eq i32 %i.an, 0
  br i1 %.not586, label %.loopexit665, label %.preheader664

.preheader664:                                    ; preds = %bb.f
  %i.ao = zext i32 %i.aj to i64
  %.val638 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.val638, i64 %i.ao
  store i32 -4, ptr %i.ap, align 1
  %i.aq = add i32 %i.aj, 8                        ; 2 uses
  %.not587 = icmp eq i32 %i.an, 1
  br i1 %.not587, label %.loopexit665, label %.preheader664.1

.preheader664.1:                                  ; preds = %.preheader664
  %i.ar = zext i32 %i.aq to i64
  %.val638.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %.val638.1, i64 %i.ar
  store i32 -4, ptr %i.as, align 1
  %i.at = add i32 %i.aj, 16                       ; 2 uses
  %.not587.1 = icmp eq i32 %i.an, 2
  br i1 %.not587.1, label %.loopexit665, label %.preheader664.2

.preheader664.2:                                  ; preds = %.preheader664.1
  %i.au = zext i32 %i.at to i64
  %.val638.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val638.2, i64 %i.au
  store i32 -4, ptr %i.av, align 1
  %i.aw = add i32 %i.aj, 24                       ; 2 uses
  %.not587.2 = icmp eq i32 %i.an, 3
  br i1 %.not587.2, label %.loopexit665, label %.preheader664.3

.preheader664.3:                                  ; preds = %.preheader664.2
  %i.ax = zext i32 %i.aw to i64
  %.val638.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %.val638.3, i64 %i.ax
  store i32 -4, ptr %i.ay, align 1
  %i.az = add i32 %i.aj, 32                       ; 2 uses
  %.not587.3 = icmp eq i32 %i.an, 4
  br i1 %.not587.3, label %.loopexit665, label %.preheader664.4

.preheader664.4:                                  ; preds = %.preheader664.3
  %i.ba = zext i32 %i.az to i64
  %.val638.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %.val638.4, i64 %i.ba
  store i32 -4, ptr %i.bb, align 1
  %i.bc = add i32 %i.aj, 40                       ; 2 uses
  %.not587.4 = icmp eq i32 %i.an, 5
  br i1 %.not587.4, label %.loopexit665, label %.preheader664.5

.preheader664.5:                                  ; preds = %.preheader664.4
  %i.bd = zext i32 %i.bc to i64
  %.val638.5 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %.val638.5, i64 %i.bd
  store i32 -4, ptr %i.be, align 1
  %i.bf = add i32 %i.aj, 48                       ; 2 uses
  %.not587.5 = icmp eq i32 %i.an, 6
  br i1 %.not587.5, label %.loopexit665, label %.preheader664.6

.preheader664.6:                                  ; preds = %.preheader664.5
  %i.bg = zext i32 %i.bf to i64
  %.val638.6 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %.val638.6, i64 %i.bg
  store i32 -4, ptr %i.bh, align 1
  %i.bi = add i32 %i.aj, 56
  br label %.loopexit665

.loopexit665:                                     ; preds = %.preheader664, %.preheader664.1, %.preheader664.2, %.preheader664.3, %.preheader664.4, %.preheader664.5, %.preheader664.6, %bb.f
  %.1 = phi i32 [ %i.aj, %bb.f ], [ %i.aq, %.preheader664 ], [ %i.at, %.preheader664.1 ], [ %i.aw, %.preheader664.2 ], [ %i.az, %.preheader664.3 ], [ %i.bc, %.preheader664.4 ], [ %i.bf, %.preheader664.5 ], [ %i.bi, %.preheader664.6 ]
  %i.bj = add i32 %.0.copyload.i647, 536870911
  %i.bk = and i32 %i.bj, 536870911
  %i.bl = icmp samesign ult i32 %i.bk, 7
  br i1 %i.bl, label %.loopexit663, label %bb.g

bb.g:                                             ; preds = %.loopexit665
  %i.bm = shl i32 %.0.copyload.i647, 3
  %i.bn = add i32 %i.bm, %i.aj
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.2 = phi i32 [ %.1, %bb.g ], [ %i.ce, %bb.h ]  ; 2 uses
  %i.bo = zext i32 %.2 to i64                     ; 8 uses
  %.val637 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %.val637, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  store i32 -4, ptr %i.bq, align 1
  %.val636 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.br = getelementptr inbounds nuw i8, ptr %.val636, i64 %i.bo
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  store i32 -4, ptr %i.bs, align 1
  %.val635 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bt = getelementptr inbounds nuw i8, ptr %.val635, i64 %i.bo
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  store i32 -4, ptr %i.bu, align 1
  %.val634 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bv = getelementptr inbounds nuw i8, ptr %.val634, i64 %i.bo
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store i32 -4, ptr %i.bw, align 1
  %.val633 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %.val633, i64 %i.bo
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store i32 -4, ptr %i.by, align 1
  %.val632 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bz = getelementptr inbounds nuw i8, ptr %.val632, i64 %i.bo
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i32 -4, ptr %i.ca, align 1
  %.val631 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cb = getelementptr inbounds nuw i8, ptr %.val631, i64 %i.bo
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 -4, ptr %i.cc, align 1
  %.val630 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cd = getelementptr inbounds nuw i8, ptr %.val630, i64 %i.bo
  store i32 -4, ptr %i.cd, align 1
  %i.ce = add i32 %.2, 64                         ; 2 uses
  %.not588 = icmp eq i32 %i.ce, %i.bn
  br i1 %.not588, label %.loopexit663, label %bb.h

bb.i:                                             ; preds = %bb.d
  br i1 %.not585, label %.loopexit669, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = and i32 %.0.copyload.i647, 7            ; 7 uses
  %.not577 = icmp eq i32 %i.cf, 0
  br i1 %.not577, label %.loopexit671, label %.preheader670

.preheader670:                                    ; preds = %bb.j
  %i.cg = zext i32 %i.aj to i64
  %.val629 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %.val629, i64 %i.cg
  store i32 -4, ptr %i.ch, align 1
  %i.ci = add i32 %i.aj, 8                        ; 2 uses
  %.not578 = icmp eq i32 %i.cf, 1
  br i1 %.not578, label %.loopexit671, label %.preheader670.1

.preheader670.1:                                  ; preds = %.preheader670
  %i.cj = zext i32 %i.ci to i64
  %.val629.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %.val629.1, i64 %i.cj
  store i32 -4, ptr %i.ck, align 1
  %i.cl = add i32 %i.aj, 16                       ; 2 uses
  %.not578.1 = icmp eq i32 %i.cf, 2
  br i1 %.not578.1, label %.loopexit671, label %.preheader670.2

.preheader670.2:                                  ; preds = %.preheader670.1
  %i.cm = zext i32 %i.cl to i64
  %.val629.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cn = getelementptr inbounds nuw i8, ptr %.val629.2, i64 %i.cm
  store i32 -4, ptr %i.cn, align 1
  %i.co = add i32 %i.aj, 24                       ; 2 uses
  %.not578.2 = icmp eq i32 %i.cf, 3
  br i1 %.not578.2, label %.loopexit671, label %.preheader670.3

.preheader670.3:                                  ; preds = %.preheader670.2
  %i.cp = zext i32 %i.co to i64
  %.val629.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cq = getelementptr inbounds nuw i8, ptr %.val629.3, i64 %i.cp
  store i32 -4, ptr %i.cq, align 1
  %i.cr = add i32 %i.aj, 32                       ; 2 uses
  %.not578.3 = icmp eq i32 %i.cf, 4
  br i1 %.not578.3, label %.loopexit671, label %.preheader670.4

.preheader670.4:                                  ; preds = %.preheader670.3
  %i.cs = zext i32 %i.cr to i64
  %.val629.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ct = getelementptr inbounds nuw i8, ptr %.val629.4, i64 %i.cs
  store i32 -4, ptr %i.ct, align 1
  %i.cu = add i32 %i.aj, 40                       ; 2 uses
  %.not578.4 = icmp eq i32 %i.cf, 5
  br i1 %.not578.4, label %.loopexit671, label %.preheader670.5

.preheader670.5:                                  ; preds = %.preheader670.4
  %i.cv = zext i32 %i.cu to i64
  %.val629.5 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cw = getelementptr inbounds nuw i8, ptr %.val629.5, i64 %i.cv
  store i32 -4, ptr %i.cw, align 1
  %i.cx = add i32 %i.aj, 48                       ; 2 uses
  %.not578.5 = icmp eq i32 %i.cf, 6
  br i1 %.not578.5, label %.loopexit671, label %.preheader670.6

.preheader670.6:                                  ; preds = %.preheader670.5
  %i.cy = zext i32 %i.cx to i64
  %.val629.6 = load ptr, ptr %i.a, align 8, !tbaa !7
end_hunk_2
begin_hunk_3_@w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AIdentifier0x2C0x20hermes0x3A0x3AGlobalObjectProperty0x2A0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AIdentifier0x2C0x20hermes0x3A0x3AGlobalObjectProperty0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AIdentifier0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AIdentifier0x2C0x20hermes0x3A0x3AGlobalObjectProperty0x2A0x3E0x3E0x2C0x20hermes0x3A0x3AIdentifier0x2C0x20hermes0x3A0x3AGlobalObjectProperty0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AIdentifier0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AIdentifier0x2C0x20hermes0x3A0x3AGlobalObjectProperty0x2A0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3AIdentifier0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AIdentifier0x2C0x20hermes0x3A0x3AGlobalObjectProperty0x2A0x3E0x2A0x2C0x20hermes0x3A0x3AIdentifier0x20const0x260x29:bb.a
  br i1 %.not593, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.loopexit
  %i.gl = add nuw nsw i64 %i.b, 8                 ; 2 uses
  %.val594 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.gm = getelementptr inbounds nuw i8, ptr %.val594, i64 %i.gl
  %.0.copyload.i661 = load i32, ptr %i.gm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i661) #8, !srcloc !14
  %i.gn = add i32 %.0.copyload.i661, -1
  %.val616 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.go = getelementptr inbounds nuw i8, ptr %.val616, i64 %i.gl
  store i32 %i.gn, ptr %i.go, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.loopexit
  %i.gp = zext i32 %3 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.gq = getelementptr inbounds nuw i8, ptr %.val, i64 %i.gp
  %.0.copyload.i662 = load i32, ptr %i.gq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i662) #8, !srcloc !14
  %.val615 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.gr = getelementptr inbounds nuw i8, ptr %.val615, i64 %i.gj
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  store i32 0, ptr %i.gs, align 1
  %.val614 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.gt = getelementptr inbounds nuw i8, ptr %.val614, i64 %i.gj
  store i32 %.0.copyload.i662, ptr %i.gt, align 1
  ret i32 %.8
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoPropertyKey0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoPrimitive_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APreferredType0x29(ptr noundef %0, i32 noundef %i.c, i32 noundef %1, i32 noundef %2, i32 noundef 1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 13 uses
  %i.e = zext i32 %i.c to i64                     ; 2 uses
  %.val129 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %.val129, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %.not = icmp eq i32 %.0.copyload.i, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val135 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %.val135, i64 %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.0.copyload.i136 = load i64, ptr %i.h, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i136) #8, !srcloc !33
  %i.i = zext i32 %1 to i64
  %i.j = add nuw nsw i64 %i.i, 4                  ; 2 uses
  %.val128 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %.val128, i64 %i.j
  %.0.copyload.i137 = load i32, ptr %i.k, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i137) #8, !srcloc !14
  %i.l = zext i32 %.0.copyload.i137 to i64        ; 2 uses
  %i.m = add nuw nsw i64 %i.l, 164                ; 2 uses
  %.val127 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %.val127, i64 %i.m
  %.0.copyload.i138 = load i32, ptr %i.n, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i138) #8, !srcloc !14
  %.val126 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %.val126, i64 %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  %.0.copyload.i139 = load i32, ptr %i.p, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i139) #8, !srcloc !14
  %i.q = icmp ult i32 %.0.copyload.i138, %.0.copyload.i139
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = add i32 %.0.copyload.i138, 8
  %.val131 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.val131, i64 %i.m
  store i32 %i.r, ptr %i.s, align 1
  %i.t = zext i32 %.0.copyload.i138 to i64
  %.val133 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val133, i64 %i.t
  store i64 %.0.copyload.i136, ptr %i.u, align 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.v = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i137, i64 noundef %.0.copyload.i136) #8 ; 2 uses
  %i.w = zext i32 %i.v to i64
  %.val134 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %.val134, i64 %i.w
  %.0.copyload.i140 = load i64, ptr %i.x, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i140) #8, !srcloc !33
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0120 = phi i32 [ %.0.copyload.i138, %bb.c ], [ %i.v, %bb.d ] ; 2 uses
  %.0 = phi i64 [ %.0.copyload.i136, %bb.c ], [ %.0.copyload.i140, %bb.d ]
  %.mask = and i64 %.0, -140737488355328
  %i.y = icmp eq i64 %.mask, -1266637395197952
  br i1 %i.y, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoString_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0120) ; 2 uses
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = zext i32 %i.z to i64
  %i.ac = or disjoint i64 %i.ab, -844424930131968 ; 2 uses
  %.val125 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.val125, i64 %i.j
  %.0.copyload.i141 = load i32, ptr %i.ad, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i141) #8, !srcloc !14
  %i.ae = zext i32 %.0.copyload.i141 to i64       ; 2 uses
  %i.af = add nuw nsw i64 %i.ae, 164              ; 2 uses
  %.val124 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.val124, i64 %i.af
  %.0.copyload.i142 = load i32, ptr %i.ag, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i142) #8, !srcloc !14
  %.val = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 168
  %.0.copyload.i143 = load i32, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i143) #8, !srcloc !14
  %i.aj = icmp ult i32 %.0.copyload.i142, %.0.copyload.i143
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = add i32 %.0.copyload.i142, 8
  %.val130 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val130, i64 %i.af
  store i32 %i.ak, ptr %i.al, align 1
  %i.am = zext i32 %.0.copyload.i142 to i64
  %.val132 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %.val132, i64 %i.am
  store i64 %i.ac, ptr %i.an, align 1
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ao = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i141, i64 noundef %i.ac) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.a, %bb.f, %bb.i, %bb.h
  %.0119 = phi i32 [ %i.ao, %bb.i ], [ -1, %bb.a ], [ -1, %bb.f ], [ %.0.copyload.i142, %bb.h ], [ %.0120, %bb.e ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !15
  ret i32 %.0119
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x3E0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3ABasicBlock0x2A0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x20const0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 42 uses
  %i.b = zext i32 %1 to i64                       ; 7 uses
  %i.c = add nuw nsw i64 %i.b, 4                  ; 4 uses
  %.val406 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val406, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = shl i32 %.0.copyload.i, 2
  %i.f = add i32 %i.e, 4
  %i.g = add nuw nsw i64 %i.b, 12                 ; 4 uses
  %.val405 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val405, i64 %i.g
  %.0.copyload.i429 = load i32, ptr %i.h, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i429) #8, !srcloc !14
  %i.i = mul i32 %.0.copyload.i429, 3
  %.not = icmp ult i32 %i.f, %i.i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = shl i32 %.0.copyload.i429, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = xor i32 %.0.copyload.i, -1
  %i.l = add i32 %.0.copyload.i429, %i.k
  %.val404 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val404, i64 %i.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.copyload.i430 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i430) #8, !srcloc !14
  %i.o = sub i32 %i.l, %.0.copyload.i430
  %i.p = lshr i32 %.0.copyload.i429, 3
  %i.q = icmp ugt i32 %i.o, %i.p
  br i1 %i.q, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0378 = phi i32 [ %i.j, %bb.b ], [ %.0.copyload.i429, %bb.c ]
  %i.r = add i32 %.0378, -1
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = lshr i64 %i.s, 1
  %i.u = or i64 %i.t, %i.s                        ; 2 uses
  %i.v = lshr i64 %i.u, 2
  %i.w = or i64 %i.v, %i.u                        ; 2 uses
  %i.x = lshr i64 %i.w, 4
  %i.y = or i64 %i.x, %i.w                        ; 2 uses
  %i.z = lshr i64 %i.y, 8
  %i.aa = or i64 %i.z, %i.y                       ; 2 uses
  %i.ab = lshr i64 %i.aa, 16
  %i.ac = or i64 %i.ab, %i.aa
  %i.ad = trunc nuw i64 %i.ac to i32
  %i.ae = add i32 %i.ad, 1
  %4 = tail call i32 @llvm.umax.i32(i32 %i.ae, i32 64) ; 2 uses
  %.val422 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %.val422, i64 %i.g
  store i32 %4, ptr %i.af, align 1
  %.val403 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.val403, i64 %i.b
  %.0.copyload.i431 = load i32, ptr %i.ag, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i431) #8, !srcloc !14
  %i.ah = mul i32 %4, 44
  %i.ai = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ah) #8 ; 13 uses
  %.val421 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %.val421, i64 %i.b
  store i32 %i.ai, ptr %i.aj, align 1
  %.not386 = icmp eq i32 %.0.copyload.i431, 0
  br i1 %.not386, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.val428 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val428, i64 %i.c
  store i64 0, ptr %i.ak, align 1
  %.val402 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val402, i64 %i.g
  %.0.copyload.i432 = load i32, ptr %i.al, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i432) #8, !srcloc !14
  %i.am = mul i32 %.0.copyload.i432, 44           ; 2 uses
  %i.an = add i32 %i.am, -44                      ; 2 uses
  %i.ao = udiv i32 %i.an, 44
  %i.ap = add nuw nsw i32 %i.ao, 1
  %i.aq = and i32 %i.ap, 7                        ; 7 uses
  %.not387 = icmp eq i32 %i.aq, 0
  br i1 %.not387, label %.loopexit444, label %.preheader443

.preheader443:                                    ; preds = %bb.e
  %i.ar = zext i32 %i.ai to i64
  %.val420 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %.val420, i64 %i.ar
  store i32 -4, ptr %i.as, align 1
  %i.at = add i32 %i.ai, 44                       ; 2 uses
  %.not388 = icmp eq i32 %i.aq, 1
  br i1 %.not388, label %.loopexit444, label %.preheader443.1

.preheader443.1:                                  ; preds = %.preheader443
  %i.au = zext i32 %i.at to i64
  %.val420.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val420.1, i64 %i.au
  store i32 -4, ptr %i.av, align 1
  %i.aw = add i32 %i.ai, 88                       ; 2 uses
  %.not388.1 = icmp eq i32 %i.aq, 2
  br i1 %.not388.1, label %.loopexit444, label %.preheader443.2

.preheader443.2:                                  ; preds = %.preheader443.1
  %i.ax = zext i32 %i.aw to i64
  %.val420.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %.val420.2, i64 %i.ax
  store i32 -4, ptr %i.ay, align 1
  %i.az = add i32 %i.ai, 132                      ; 2 uses
  %.not388.2 = icmp eq i32 %i.aq, 3
  br i1 %.not388.2, label %.loopexit444, label %.preheader443.3

.preheader443.3:                                  ; preds = %.preheader443.2
  %i.ba = zext i32 %i.az to i64
  %.val420.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %.val420.3, i64 %i.ba
  store i32 -4, ptr %i.bb, align 1
  %i.bc = add i32 %i.ai, 176                      ; 2 uses
  %.not388.3 = icmp eq i32 %i.aq, 4
  br i1 %.not388.3, label %.loopexit444, label %.preheader443.4

.preheader443.4:                                  ; preds = %.preheader443.3
  %i.bd = zext i32 %i.bc to i64
  %.val420.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %.val420.4, i64 %i.bd
  store i32 -4, ptr %i.be, align 1
  %i.bf = add i32 %i.ai, 220                      ; 2 uses
  %.not388.4 = icmp eq i32 %i.aq, 5
  br i1 %.not388.4, label %.loopexit444, label %.preheader443.5

.preheader443.5:                                  ; preds = %.preheader443.4
  %i.bg = zext i32 %i.bf to i64
  %.val420.5 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %.val420.5, i64 %i.bg
  store i32 -4, ptr %i.bh, align 1
  %i.bi = add i32 %i.ai, 264                      ; 2 uses
  %.not388.5 = icmp eq i32 %i.aq, 6
  br i1 %.not388.5, label %.loopexit444, label %.preheader443.6

.preheader443.6:                                  ; preds = %.preheader443.5
  %i.bj = zext i32 %i.bi to i64
  %.val420.6 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %.val420.6, i64 %i.bj
  store i32 -4, ptr %i.bk, align 1
  %i.bl = add i32 %i.ai, 308
  br label %.loopexit444

.loopexit444:                                     ; preds = %.preheader443, %.preheader443.1, %.preheader443.2, %.preheader443.3, %.preheader443.4, %.preheader443.5, %.preheader443.6, %bb.e
  %.1 = phi i32 [ %i.ai, %bb.e ], [ %i.at, %.preheader443 ], [ %i.aw, %.preheader443.1 ], [ %i.az, %.preheader443.2 ], [ %i.bc, %.preheader443.3 ], [ %i.bf, %.preheader443.4 ], [ %i.bi, %.preheader443.5 ], [ %i.bl, %.preheader443.6 ]
  %i.bm = icmp ult i32 %i.an, 308
  br i1 %i.bm, label %.loopexit442, label %bb.f

bb.f:                                             ; preds = %.loopexit444
  %i.bn = add i32 %i.am, %i.ai
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.2 = phi i32 [ %.1, %bb.f ], [ %i.ce, %bb.g ]  ; 2 uses
  %i.bo = zext i32 %.2 to i64                     ; 8 uses
  %.val419 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %.val419, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 308
  store i32 -4, ptr %i.bq, align 1
  %.val418 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.br = getelementptr inbounds nuw i8, ptr %.val418, i64 %i.bo
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 264
  store i32 -4, ptr %i.bs, align 1
  %.val417 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bt = getelementptr inbounds nuw i8, ptr %.val417, i64 %i.bo
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 220
  store i32 -4, ptr %i.bu, align 1
  %.val416 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bv = getelementptr inbounds nuw i8, ptr %.val416, i64 %i.bo
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 176
  store i32 -4, ptr %i.bw, align 1
  %.val415 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %.val415, i64 %i.bo
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 132
  store i32 -4, ptr %i.by, align 1
  %.val414 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bz = getelementptr inbounds nuw i8, ptr %.val414, i64 %i.bo
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 88
  store i32 -4, ptr %i.ca, align 1
  %.val413 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cb = getelementptr inbounds nuw i8, ptr %.val413, i64 %i.bo
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 44
  store i32 -4, ptr %i.cc, align 1
  %.val412 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cd = getelementptr inbounds nuw i8, ptr %.val412, i64 %i.bo
  store i32 -4, ptr %i.cd, align 1
  %i.ce = add i32 %.2, 352                        ; 2 uses
  %.not389 = icmp eq i32 %i.ce, %i.bn
  br i1 %.not389, label %.loopexit442, label %bb.g

bb.h:                                             ; preds = %bb.d
  %i.cf = mul i32 %.0.copyload.i429, 44
  %i.cg = add i32 %.0.copyload.i431, %i.cf
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x3E0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x3E0x3A0x3AmoveFromOldBuckets0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0.copyload.i431, i32 noundef %i.cg)
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i431) #8
  %.val401 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %.val401, i64 %i.b
  %.0.copyload.i433 = load i32, ptr %i.ch, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i433) #8, !srcloc !14
  %.val400 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %.val400, i64 %i.g
  %.0.copyload.i434 = load i32, ptr %i.ci, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i434) #8, !srcloc !14
  br label %.loopexit442

.loopexit442:                                     ; preds = %bb.g, %.loopexit444, %bb.h
  %.1379 = phi i32 [ %i.ai, %.loopexit444 ], [ %.0.copyload.i433, %bb.h ], [ %i.ai, %bb.g ] ; 2 uses
  %.0376 = phi i32 [ %.0.copyload.i432, %.loopexit444 ], [ %.0.copyload.i434, %bb.h ], [ %.0.copyload.i432, %bb.g ]
  %i.cj = zext i32 %3 to i64
  %.val399 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %.val399, i64 %i.cj
  %.0.copyload.i435 = load i32, ptr %i.ck, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i435) #8, !srcloc !14
  %i.cl = add i32 %.0376, -1                      ; 2 uses
  %i.cm = lshr i32 %.0.copyload.i435, 4
  %i.cn = lshr i32 %.0.copyload.i435, 9
  %i.co = xor i32 %i.cm, %i.cn
  %i.cp = and i32 %i.co, %i.cl                    ; 2 uses
  %i.cq = mul i32 %i.cp, 44
  %i.cr = add i32 %i.cq, %.1379                   ; 3 uses
  %i.cs = zext i32 %i.cr to i64
  %.val398 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ct = getelementptr inbounds nuw i8, ptr %.val398, i64 %i.cs
  %.0.copyload.i436 = load i32, ptr %i.ct, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i436) #8, !srcloc !14
  %i.cu = icmp eq i32 %.0.copyload.i435, %.0.copyload.i436
  br i1 %i.cu, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit442, %bb.j
  %.0380 = phi i32 [ %i.cz, %bb.j ], [ 0, %.loopexit442 ] ; 3 uses
  %.1377 = phi i32 [ %i.dc, %bb.j ], [ %i.cp, %.loopexit442 ]
  %.0375 = phi i32 [ %.0.copyload.i437, %bb.j ], [ %.0.copyload.i436, %.loopexit442 ] ; 2 uses
  %.0374 = phi i32 [ %i.db, %bb.j ], [ 1, %.loopexit442 ] ; 2 uses
  %.3 = phi i32 [ %i.de, %bb.j ], [ %i.cr, %.loopexit442 ] ; 2 uses
  %i.cv = icmp eq i32 %.0375, -4
  %.not392 = icmp eq i32 %.0380, 0                ; 2 uses
  br i1 %i.cv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader
  %i.cw = select i1 %.not392, i32 %.3, i32 %.0380
  br label %bb.k

bb.j:                                             ; preds = %.preheader
  %i.cx = icmp eq i32 %.0375, -8
  %i.cy = select i1 %i.cx, i1 %.not392, i1 false
  %i.cz = select i1 %i.cy, i32 %.3, i32 %.0380
  %i.da = add i32 %.0374, %.1377
  %i.db = add i32 %.0374, 1
  %i.dc = and i32 %i.da, %i.cl                    ; 2 uses
  %i.dd = mul i32 %i.dc, 44
  %i.de = add i32 %i.dd, %.1379                   ; 3 uses
  %i.df = zext i32 %i.de to i64
  %.val397 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dg = getelementptr inbounds nuw i8, ptr %.val397, i64 %i.df
  %.0.copyload.i437 = load i32, ptr %i.dg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i437) #8, !srcloc !14
  %.not391 = icmp eq i32 %.0.copyload.i435, %.0.copyload.i437
  br i1 %.not391, label %.loopexit, label %.preheader
end_hunk_3
begin_hunk_4_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoArrayIndex0x28hermes0x3A0x3Avm0x3A0x3AStringView0x29:bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %.val357, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store i8 0, ptr %i.dg, align 1
  %.val376 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dh = getelementptr inbounds nuw i8, ptr %.val376, i64 %i.de
  store i32 0, ptr %i.dh, align 1
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ac, %bb.o
  %.2.in = phi i64 [ %i.ax, %bb.o ], [ %i.cq, %bb.ac ]
  %.2 = trunc nuw i64 %.2.in to i32
  %i.di = zext i32 %1 to i64                      ; 2 uses
  %.val356 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dj = getelementptr inbounds nuw i8, ptr %.val356, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  store i8 1, ptr %i.dk, align 1
  %.val375 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dl = getelementptr inbounds nuw i8, ptr %.val375, i64 %i.di
  store i32 %.2, ptr %i.dl, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.loopexit, %bb.ai, %bb.ah, %bb.af, %bb.ae
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x3E0x2C0x20hermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AValue0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3AValue0x2A0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AValue0x2A0x2C0x20hermes0x3A0x3ARegister0x3E0x2A0x2C0x20hermes0x3A0x3AValue0x2A0x20const0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.b = zext i32 %1 to i64                       ; 5 uses
  %i.c = add nuw nsw i64 %i.b, 4                  ; 3 uses
  %.val197 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val197, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = shl i32 %.0.copyload.i, 2
  %i.f = add i32 %i.e, 4
  %i.g = add nuw nsw i64 %i.b, 12                 ; 2 uses
  %.val196 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val196, i64 %i.g
  %.0.copyload.i202 = load i32, ptr %i.h, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i202) #8, !srcloc !14
  %i.i = mul i32 %.0.copyload.i202, 3
  %.not = icmp ult i32 %i.f, %i.i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = shl i32 %.0.copyload.i202, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = xor i32 %.0.copyload.i, -1
  %i.l = add i32 %.0.copyload.i202, %i.k
  %.val195 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val195, i64 %i.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.copyload.i203 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i203) #8, !srcloc !14
  %i.o = sub i32 %i.l, %.0.copyload.i203
  %i.p = lshr i32 %.0.copyload.i202, 3
  %i.q = icmp ugt i32 %i.o, %i.p
  br i1 %i.q, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0177 = phi i32 [ %i.j, %bb.b ], [ %.0.copyload.i202, %bb.c ]
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AUniqueString0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0177)
  %i.r = zext i32 %3 to i64
  %.val194 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.val194, i64 %i.r
  %.0.copyload.i204 = load i32, ptr %i.s, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i204) #8, !srcloc !14
  %.val193 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val193, i64 %i.b
  %.0.copyload.i205 = load i32, ptr %i.t, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i205) #8, !srcloc !14
  %.val192 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val192, i64 %i.g
  %.0.copyload.i206 = load i32, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i206) #8, !srcloc !14
  %i.v = add i32 %.0.copyload.i206, -1            ; 2 uses
  %i.w = lshr i32 %.0.copyload.i204, 4
  %i.x = lshr i32 %.0.copyload.i204, 9
  %i.y = xor i32 %i.w, %i.x
  %i.z = and i32 %i.v, %i.y                       ; 2 uses
  %i.aa = shl nuw nsw i32 %i.z, 3
  %i.ab = add i32 %i.aa, %.0.copyload.i205        ; 3 uses
  %i.ac = zext i32 %i.ab to i64
  %.val191 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.val191, i64 %i.ac
  %.0.copyload.i207 = load i32, ptr %i.ad, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i207) #8, !srcloc !14
  %i.ae = icmp eq i32 %.0.copyload.i204, %.0.copyload.i207
  br i1 %i.ae, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.f
  %.0176 = phi i32 [ %i.aj, %bb.f ], [ 0, %bb.d ] ; 3 uses
  %.0175 = phi i32 [ %.0.copyload.i208, %bb.f ], [ %.0.copyload.i207, %bb.d ] ; 2 uses
  %.0174 = phi i32 [ %i.al, %bb.f ], [ 1, %bb.d ] ; 2 uses
  %.0173 = phi i32 [ %i.am, %bb.f ], [ %i.z, %bb.d ]
  %.0 = phi i32 [ %i.ao, %bb.f ], [ %i.ab, %bb.d ] ; 2 uses
  %i.af = icmp eq i32 %.0175, -4
  %.not185 = icmp eq i32 %.0176, 0                ; 2 uses
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader
  %i.ag = select i1 %.not185, i32 %.0, i32 %.0176
  br label %bb.g

bb.f:                                             ; preds = %.preheader
  %i.ah = icmp eq i32 %.0175, -8
  %i.ai = select i1 %i.ah, i1 %.not185, i1 false
  %i.aj = select i1 %i.ai, i32 %.0, i32 %.0176
  %i.ak = add i32 %.0173, %.0174
  %i.al = add i32 %.0174, 1
  %i.am = and i32 %i.ak, %i.v                     ; 2 uses
  %i.an = shl i32 %i.am, 3
  %i.ao = add i32 %i.an, %.0.copyload.i205        ; 3 uses
  %i.ap = zext i32 %i.ao to i64
  %.val190 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %.val190, i64 %i.ap
  %.0.copyload.i208 = load i32, ptr %i.aq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i208) #8, !srcloc !14
  %.not184 = icmp eq i32 %.0.copyload.i204, %.0.copyload.i208
  br i1 %.not184, label %.loopexit, label %.preheader

bb.g:                                             ; preds = %bb.c, %bb.e
  %.1 = phi i32 [ %i.ag, %bb.e ], [ %2, %bb.c ]   ; 2 uses
  %i.ar = zext i32 %.1 to i64
  %.val189 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %.val189, i64 %i.ar
  %.0.copyload.i209 = load i32, ptr %i.as, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i209) #8, !srcloc !14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.d, %bb.g
  %.1178 = phi i32 [ %.0.copyload.i204, %bb.d ], [ %.0.copyload.i209, %bb.g ], [ %.0.copyload.i204, %bb.f ]
  %.2 = phi i32 [ %i.ab, %bb.d ], [ %.1, %bb.g ], [ %i.ao, %bb.f ] ; 2 uses
  %.val188 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val188, i64 %i.c
  %.0.copyload.i210 = load i32, ptr %i.at, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i210) #8, !srcloc !14
  %i.au = add i32 %.0.copyload.i210, 1
  %.val201 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val201, i64 %i.c
  store i32 %i.au, ptr %i.av, align 1
  %.not186 = icmp eq i32 %.1178, -4
  br i1 %.not186, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.aw = add nuw nsw i64 %i.b, 8                 ; 2 uses
  %.val187 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %.val187, i64 %i.aw
  %.0.copyload.i211 = load i32, ptr %i.ax, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i211) #8, !srcloc !14
  %i.ay = add i32 %.0.copyload.i211, -1
  %.val200 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %.val200, i64 %i.aw
  store i32 %i.ay, ptr %i.az, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  %i.ba = zext i32 %3 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ba
  %.0.copyload.i212 = load i32, ptr %i.bb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i212) #8, !srcloc !14
  %i.bc = zext i32 %.2 to i64                     ; 2 uses
  %.val199 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %.val199, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 -1, ptr %i.be, align 1
  %.val198 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.val198, i64 %i.bc
  store i32 %.0.copyload.i212, ptr %i.bf, align 1
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AUniqueString0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 48 uses
  %i.b = zext i32 %1 to i64                       ; 6 uses
  %i.c = add nuw nsw i64 %i.b, 12                 ; 5 uses
  %.val417 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val417, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = add i32 %2, -1
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 4
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 8
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 16
  %i.p = or i64 %i.o, %i.n
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = add i32 %i.q, 1
  %3 = tail call i32 @llvm.umax.i32(i32 %i.r, i32 64) ; 2 uses
  %.val440 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.val440, i64 %i.c
  store i32 %3, ptr %i.s, align 1
  %.val416 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val416, i64 %i.b
  %.0.copyload.i443 = load i32, ptr %i.t, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i443) #8, !srcloc !14
  %i.u = shl i32 %3, 3
  %i.v = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef %0, i32 noundef %i.u) #8 ; 21 uses
  %.val439 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %.val439, i64 %i.b
  store i32 %i.v, ptr %i.w, align 1
  %.not = icmp eq i32 %.0.copyload.i443, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.val442 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %.val442, i64 %i.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i64 0, ptr %i.y, align 1
  %.val415 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val415, i64 %i.c
  %.0.copyload.i444 = load i32, ptr %i.z, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i444) #8, !srcloc !14
  %.not404 = icmp eq i32 %.0.copyload.i444, 0
  br i1 %.not404, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = and i32 %.0.copyload.i444, 7            ; 7 uses
  %.not405 = icmp eq i32 %i.aa, 0
  br i1 %.not405, label %.loopexit453, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.ab = zext i32 %i.v to i64
  %.val438 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.val438, i64 %i.ab
  store i32 -4, ptr %i.ac, align 1
  %i.ad = add i32 %i.v, 8                         ; 2 uses
  %.not406 = icmp eq i32 %i.aa, 1
  br i1 %.not406, label %.loopexit453, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %i.ae = zext i32 %i.ad to i64
  %.val438.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %.val438.1, i64 %i.ae
  store i32 -4, ptr %i.af, align 1
  %i.ag = add i32 %i.v, 16                        ; 2 uses
  %.not406.1 = icmp eq i32 %i.aa, 2
  br i1 %.not406.1, label %.loopexit453, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.ah = zext i32 %i.ag to i64
  %.val438.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %.val438.2, i64 %i.ah
  store i32 -4, ptr %i.ai, align 1
  %i.aj = add i32 %i.v, 24                        ; 2 uses
  %.not406.2 = icmp eq i32 %i.aa, 3
  br i1 %.not406.2, label %.loopexit453, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.ak = zext i32 %i.aj to i64
  %.val438.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val438.3, i64 %i.ak
  store i32 -4, ptr %i.al, align 1
  %i.am = add i32 %i.v, 32                        ; 2 uses
  %.not406.3 = icmp eq i32 %i.aa, 4
  br i1 %.not406.3, label %.loopexit453, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.an = zext i32 %i.am to i64
  %.val438.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.val438.4, i64 %i.an
  store i32 -4, ptr %i.ao, align 1
  %i.ap = add i32 %i.v, 40                        ; 2 uses
  %.not406.4 = icmp eq i32 %i.aa, 5
  br i1 %.not406.4, label %.loopexit453, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.aq = zext i32 %i.ap to i64
  %.val438.5 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %.val438.5, i64 %i.aq
  store i32 -4, ptr %i.ar, align 1
  %i.as = add i32 %i.v, 48                        ; 2 uses
  %.not406.5 = icmp eq i32 %i.aa, 6
  br i1 %.not406.5, label %.loopexit453, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.at = zext i32 %i.as to i64
  %.val438.6 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %.val438.6, i64 %i.at
  store i32 -4, ptr %i.au, align 1
  %i.av = add i32 %i.v, 56
  br label %.loopexit453

.loopexit453:                                     ; preds = %.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %bb.c
  %.1 = phi i32 [ %i.v, %bb.c ], [ %i.ad, %.preheader ], [ %i.ag, %.preheader.1 ], [ %i.aj, %.preheader.2 ], [ %i.am, %.preheader.3 ], [ %i.ap, %.preheader.4 ], [ %i.as, %.preheader.5 ], [ %i.av, %.preheader.6 ]
  %i.aw = add i32 %.0.copyload.i444, 536870911
  %i.ax = and i32 %i.aw, 536870911
  %i.ay = icmp samesign ult i32 %i.ax, 7
  br i1 %i.ay, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.loopexit453
  %i.az = shl i32 %.0.copyload.i444, 3
  %i.ba = add i32 %i.az, %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.2 = phi i32 [ %.1, %bb.d ], [ %i.br, %bb.e ]  ; 2 uses
  %i.bb = zext i32 %.2 to i64                     ; 8 uses
  %.val437 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %.val437, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  store i32 -4, ptr %i.bd, align 1
  %.val436 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %.val436, i64 %i.bb
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  store i32 -4, ptr %i.bf, align 1
  %.val435 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %.val435, i64 %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store i32 -4, ptr %i.bh, align 1
  %.val434 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %.val434, i64 %i.bb
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store i32 -4, ptr %i.bj, align 1
  %.val433 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %.val433, i64 %i.bb
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i32 -4, ptr %i.bl, align 1
  %.val432 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %.val432, i64 %i.bb
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i32 -4, ptr %i.bn, align 1
  %.val431 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %.val431, i64 %i.bb
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 -4, ptr %i.bp, align 1
  %.val430 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %.val430, i64 %i.bb
  store i32 -4, ptr %i.bq, align 1
  %i.br = add i32 %.2, 64                         ; 2 uses
  %.not407 = icmp eq i32 %i.br, %i.ba
  br i1 %.not407, label %.loopexit, label %bb.e

bb.f:                                             ; preds = %bb.a
  %i.bs = add nuw nsw i64 %i.b, 4                 ; 3 uses
  %.val441 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bt = getelementptr inbounds nuw i8, ptr %.val441, i64 %i.bs
  store i64 0, ptr %i.bt, align 1
  %.val414 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val414, i64 %i.c
  %.0.copyload.i445 = load i32, ptr %i.bu, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i445) #8, !srcloc !14
  %.not395 = icmp eq i32 %.0.copyload.i445, 0
  br i1 %.not395, label %.loopexit457, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = and i32 %.0.copyload.i445, 7            ; 7 uses
  %.not396 = icmp eq i32 %i.bv, 0
  br i1 %.not396, label %.loopexit459, label %.preheader458

.preheader458:                                    ; preds = %bb.g
  %i.bw = zext i32 %i.v to i64
  %.val429 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %.val429, i64 %i.bw
  store i32 -4, ptr %i.bx, align 1
  %i.by = add i32 %i.v, 8                         ; 2 uses
  %.not397 = icmp eq i32 %i.bv, 1
  br i1 %.not397, label %.loopexit459, label %.preheader458.1

.preheader458.1:                                  ; preds = %.preheader458
  %i.bz = zext i32 %i.by to i64
  %.val429.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %.val429.1, i64 %i.bz
  store i32 -4, ptr %i.ca, align 1
  %i.cb = add i32 %i.v, 16                        ; 2 uses
  %.not397.1 = icmp eq i32 %i.bv, 2
  br i1 %.not397.1, label %.loopexit459, label %.preheader458.2

.preheader458.2:                                  ; preds = %.preheader458.1
  %i.cc = zext i32 %i.cb to i64
  %.val429.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cd = getelementptr inbounds nuw i8, ptr %.val429.2, i64 %i.cc
  store i32 -4, ptr %i.cd, align 1
  %i.ce = add i32 %i.v, 24                        ; 2 uses
  %.not397.2 = icmp eq i32 %i.bv, 3
  br i1 %.not397.2, label %.loopexit459, label %.preheader458.3

.preheader458.3:                                  ; preds = %.preheader458.2
  %i.cf = zext i32 %i.ce to i64
  %.val429.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %.val429.3, i64 %i.cf
  store i32 -4, ptr %i.cg, align 1
  %i.ch = add i32 %i.v, 32                        ; 2 uses
  %.not397.3 = icmp eq i32 %i.bv, 4
  br i1 %.not397.3, label %.loopexit459, label %.preheader458.4

.preheader458.4:                                  ; preds = %.preheader458.3
  %i.ci = zext i32 %i.ch to i64
  %.val429.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cj = getelementptr inbounds nuw i8, ptr %.val429.4, i64 %i.ci
  store i32 -4, ptr %i.cj, align 1
  %i.ck = add i32 %i.v, 40                        ; 2 uses
  %.not397.4 = icmp eq i32 %i.bv, 5
  br i1 %.not397.4, label %.loopexit459, label %.preheader458.5

.preheader458.5:                                  ; preds = %.preheader458.4
  %i.cl = zext i32 %i.ck to i64
end_hunk_4
begin_hunk_5_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoInt32_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29:bb.a
  %i.q = fcmp une double %.0.copyload.i70, %.061
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = tail call i32 @w2c_hermes_hermes0x3A0x3AtruncateToInt32SlowPath0x28double0x29(ptr noundef nonnull %0, double noundef %.0.copyload.i70) #8
  %.pre = sitofp i32 %i.r to double
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi = phi double [ %.pre, %bb.h ], [ %.061, %bb.g ]
  %i.s = zext i32 %1 to i64                       ; 2 uses
  %.val66 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val66, i64 %i.s
  store i32 1, ptr %i.t, align 1
  %.val69 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val69, i64 %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store double %.pre-phi, ptr %i.v, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  store i32 %i.b, ptr %i.a, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AESTree0x3A0x3AFunctionDeclarationNode0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Chermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AAlreadyEmitted0x3E0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AESTree0x3A0x3AFunctionDeclarationNode0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Chermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AAlreadyEmitted0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AESTree0x3A0x3AFunctionDeclarationNode0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AESTree0x3A0x3AFunctionDeclarationNode0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Chermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AAlreadyEmitted0x3E0x3E0x3E0x2C0x20hermes0x3A0x3AESTree0x3A0x3AFunctionDeclarationNode0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Chermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AAlreadyEmitted0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AESTree0x3A0x3AFunctionDeclarationNode0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AESTree0x3A0x3AFunctionDeclarationNode0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Chermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AAlreadyEmitted0x3E0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3AESTree0x3A0x3AFunctionDeclarationNode0x2A0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AESTree0x3A0x3AFunctionDeclarationNode0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Chermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AAlreadyEmitted0x3E0x3E0x2A0x2C0x20hermes0x3A0x3AESTree0x3A0x3AFunctionDeclarationNode0x2A0x20const0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.b = zext i32 %1 to i64                       ; 5 uses
  %i.c = add nuw nsw i64 %i.b, 4                  ; 3 uses
  %.val197 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val197, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = shl i32 %.0.copyload.i, 2
  %i.f = add i32 %i.e, 4
  %i.g = add nuw nsw i64 %i.b, 12                 ; 2 uses
  %.val196 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val196, i64 %i.g
  %.0.copyload.i202 = load i32, ptr %i.h, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i202) #8, !srcloc !14
  %i.i = mul i32 %.0.copyload.i202, 3
  %.not = icmp ult i32 %i.f, %i.i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = shl i32 %.0.copyload.i202, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = xor i32 %.0.copyload.i, -1
  %i.l = add i32 %.0.copyload.i202, %i.k
  %.val195 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val195, i64 %i.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.copyload.i203 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i203) #8, !srcloc !14
  %i.o = sub i32 %i.l, %.0.copyload.i203
  %i.p = lshr i32 %.0.copyload.i202, 3
  %i.q = icmp ugt i32 %i.o, %i.p
  br i1 %i.q, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0173 = phi i32 [ %i.j, %bb.b ], [ %.0.copyload.i202, %bb.c ]
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AESTree0x3A0x3AFunctionDeclarationNode0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Chermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AAlreadyEmitted0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AESTree0x3A0x3AFunctionDeclarationNode0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AESTree0x3A0x3AFunctionDeclarationNode0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Chermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AAlreadyEmitted0x3E0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0173)
  %i.r = zext i32 %3 to i64
  %.val194 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.val194, i64 %i.r
  %.0.copyload.i204 = load i32, ptr %i.s, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i204) #8, !srcloc !14
  %.val193 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val193, i64 %i.b
  %.0.copyload.i205 = load i32, ptr %i.t, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i205) #8, !srcloc !14
  %.val192 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val192, i64 %i.g
  %.0.copyload.i206 = load i32, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i206) #8, !srcloc !14
  %i.v = add i32 %.0.copyload.i206, -1            ; 2 uses
  %i.w = lshr i32 %.0.copyload.i204, 4
  %i.x = lshr i32 %.0.copyload.i204, 9
  %i.y = xor i32 %i.w, %i.x
  %i.z = and i32 %i.v, %i.y                       ; 2 uses
  %i.aa = mul nuw i32 %i.z, 12
  %i.ab = add i32 %i.aa, %.0.copyload.i205        ; 3 uses
  %i.ac = zext i32 %i.ab to i64
  %.val191 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.val191, i64 %i.ac
  %.0.copyload.i207 = load i32, ptr %i.ad, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i207) #8, !srcloc !14
  %i.ae = icmp eq i32 %.0.copyload.i204, %.0.copyload.i207
  br i1 %i.ae, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.f
  %.0178 = phi i32 [ %i.aj, %bb.f ], [ 0, %bb.d ] ; 3 uses
  %.0177 = phi i32 [ %.0.copyload.i208, %bb.f ], [ %.0.copyload.i207, %bb.d ] ; 2 uses
  %.0176 = phi i32 [ %i.al, %bb.f ], [ 1, %bb.d ] ; 2 uses
  %.0175 = phi i32 [ %i.am, %bb.f ], [ %i.z, %bb.d ]
  %.0 = phi i32 [ %i.ao, %bb.f ], [ %i.ab, %bb.d ] ; 2 uses
  %i.af = icmp eq i32 %.0177, -4
  %.not185 = icmp eq i32 %.0178, 0                ; 2 uses
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader
  %i.ag = select i1 %.not185, i32 %.0, i32 %.0178
  br label %bb.g

bb.f:                                             ; preds = %.preheader
  %i.ah = icmp eq i32 %.0177, -8
  %i.ai = select i1 %i.ah, i1 %.not185, i1 false
  %i.aj = select i1 %i.ai, i32 %.0, i32 %.0178
  %i.ak = add i32 %.0175, %.0176
  %i.al = add i32 %.0176, 1
  %i.am = and i32 %i.ak, %i.v                     ; 2 uses
  %i.an = mul i32 %i.am, 12
  %i.ao = add i32 %i.an, %.0.copyload.i205        ; 3 uses
  %i.ap = zext i32 %i.ao to i64
  %.val190 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %.val190, i64 %i.ap
  %.0.copyload.i208 = load i32, ptr %i.aq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i208) #8, !srcloc !14
  %.not184 = icmp eq i32 %.0.copyload.i204, %.0.copyload.i208
  br i1 %.not184, label %.loopexit, label %.preheader

bb.g:                                             ; preds = %bb.c, %bb.e
  %.1 = phi i32 [ %i.ag, %bb.e ], [ %2, %bb.c ]   ; 2 uses
  %i.ar = zext i32 %.1 to i64
  %.val189 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %.val189, i64 %i.ar
  %.0.copyload.i209 = load i32, ptr %i.as, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i209) #8, !srcloc !14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.d, %bb.g
  %.1174 = phi i32 [ %.0.copyload.i204, %bb.d ], [ %.0.copyload.i209, %bb.g ], [ %.0.copyload.i204, %bb.f ]
  %.2 = phi i32 [ %i.ab, %bb.d ], [ %.1, %bb.g ], [ %i.ao, %bb.f ] ; 2 uses
  %.val188 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val188, i64 %i.c
  %.0.copyload.i210 = load i32, ptr %i.at, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i210) #8, !srcloc !14
  %i.au = add i32 %.0.copyload.i210, 1
  %.val200 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val200, i64 %i.c
  store i32 %i.au, ptr %i.av, align 1
  %.not186 = icmp eq i32 %.1174, -4
  br i1 %.not186, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.aw = add nuw nsw i64 %i.b, 8                 ; 2 uses
  %.val187 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %.val187, i64 %i.aw
  %.0.copyload.i211 = load i32, ptr %i.ax, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i211) #8, !srcloc !14
  %i.ay = add i32 %.0.copyload.i211, -1
  %.val199 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %.val199, i64 %i.aw
  store i32 %i.ay, ptr %i.az, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  %i.ba = zext i32 %3 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ba
  %.0.copyload.i212 = load i32, ptr %i.bb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i212) #8, !srcloc !14
  %i.bc = zext i32 %.2 to i64                     ; 2 uses
  %.val201 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %.val201, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i64 0, ptr %i.be, align 1
  %.val198 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.val198, i64 %i.bc
  store i32 %.0.copyload.i212, ptr %i.bf, align 1
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AESTree0x3A0x3AFunctionDeclarationNode0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Chermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AAlreadyEmitted0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AESTree0x3A0x3AFunctionDeclarationNode0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AESTree0x3A0x3AFunctionDeclarationNode0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Chermes0x3A0x3AFunction0x2A0x2C0x20hermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AAlreadyEmitted0x3E0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 48 uses
  %i.b = zext i32 %1 to i64                       ; 6 uses
  %i.c = add nuw nsw i64 %i.b, 12                 ; 5 uses
  %.val428 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val428, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = add i32 %2, -1
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 4
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 8
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 16
  %i.p = or i64 %i.o, %i.n
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = add i32 %i.q, 1
  %3 = tail call i32 @llvm.umax.i32(i32 %i.r, i32 64) ; 2 uses
  %.val450 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.val450, i64 %i.c
  store i32 %3, ptr %i.s, align 1
  %.val427 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val427, i64 %i.b
  %.0.copyload.i455 = load i32, ptr %i.t, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i455) #8, !srcloc !14
  %i.u = mul i32 %3, 12
  %i.v = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef %0, i32 noundef %i.u) #8 ; 21 uses
  %.val449 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %.val449, i64 %i.b
  store i32 %i.v, ptr %i.w, align 1
  %.not = icmp eq i32 %.0.copyload.i455, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.val453 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %.val453, i64 %i.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i64 0, ptr %i.y, align 1
  %.val426 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val426, i64 %i.c
  %.0.copyload.i456 = load i32, ptr %i.z, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i456) #8, !srcloc !14
  %.not416 = icmp eq i32 %.0.copyload.i456, 0
  br i1 %.not416, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = mul i32 %.0.copyload.i456, 12           ; 2 uses
  %i.ab = add i32 %i.aa, -12                      ; 2 uses
  %i.ac = udiv i32 %i.ab, 12
  %i.ad = add nuw nsw i32 %i.ac, 1
  %i.ae = and i32 %i.ad, 7                        ; 7 uses
  %.not417 = icmp eq i32 %i.ae, 0
  br i1 %.not417, label %.loopexit465, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.af = zext i32 %i.v to i64
  %.val448 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.val448, i64 %i.af
  store i32 -4, ptr %i.ag, align 1
  %i.ah = add i32 %i.v, 12                        ; 2 uses
  %.not418 = icmp eq i32 %i.ae, 1
  br i1 %.not418, label %.loopexit465, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %i.ai = zext i32 %i.ah to i64
  %.val448.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %.val448.1, i64 %i.ai
  store i32 -4, ptr %i.aj, align 1
  %i.ak = add i32 %i.v, 24                        ; 2 uses
  %.not418.1 = icmp eq i32 %i.ae, 2
  br i1 %.not418.1, label %.loopexit465, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.al = zext i32 %i.ak to i64
  %.val448.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %.val448.2, i64 %i.al
  store i32 -4, ptr %i.am, align 1
  %i.an = add i32 %i.v, 36                        ; 2 uses
  %.not418.2 = icmp eq i32 %i.ae, 3
  br i1 %.not418.2, label %.loopexit465, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.ao = zext i32 %i.an to i64
  %.val448.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.val448.3, i64 %i.ao
  store i32 -4, ptr %i.ap, align 1
  %i.aq = add i32 %i.v, 48                        ; 2 uses
  %.not418.3 = icmp eq i32 %i.ae, 4
  br i1 %.not418.3, label %.loopexit465, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.ar = zext i32 %i.aq to i64
  %.val448.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %.val448.4, i64 %i.ar
  store i32 -4, ptr %i.as, align 1
  %i.at = add i32 %i.v, 60                        ; 2 uses
  %.not418.4 = icmp eq i32 %i.ae, 5
  br i1 %.not418.4, label %.loopexit465, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.au = zext i32 %i.at to i64
  %.val448.5 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val448.5, i64 %i.au
  store i32 -4, ptr %i.av, align 1
  %i.aw = add i32 %i.v, 72                        ; 2 uses
  %.not418.5 = icmp eq i32 %i.ae, 6
  br i1 %.not418.5, label %.loopexit465, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.ax = zext i32 %i.aw to i64
  %.val448.6 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %.val448.6, i64 %i.ax
  store i32 -4, ptr %i.ay, align 1
  %i.az = add i32 %i.v, 84
  br label %.loopexit465

.loopexit465:                                     ; preds = %.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %bb.c
  %.1 = phi i32 [ %i.v, %bb.c ], [ %i.ah, %.preheader ], [ %i.ak, %.preheader.1 ], [ %i.an, %.preheader.2 ], [ %i.aq, %.preheader.3 ], [ %i.at, %.preheader.4 ], [ %i.aw, %.preheader.5 ], [ %i.az, %.preheader.6 ]
  %i.ba = icmp ult i32 %i.ab, 84
  br i1 %i.ba, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.loopexit465
  %i.bb = add i32 %i.aa, %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.2 = phi i32 [ %.1, %bb.d ], [ %i.bs, %bb.e ]  ; 2 uses
  %i.bc = zext i32 %.2 to i64                     ; 8 uses
  %.val447 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %.val447, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 84
  store i32 -4, ptr %i.be, align 1
  %.val446 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.val446, i64 %i.bc
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  store i32 -4, ptr %i.bg, align 1
  %.val445 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %.val445, i64 %i.bc
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 60
  store i32 -4, ptr %i.bi, align 1
  %.val444 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %.val444, i64 %i.bc
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  store i32 -4, ptr %i.bk, align 1
  %.val443 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %.val443, i64 %i.bc
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 36
  store i32 -4, ptr %i.bm, align 1
  %.val442 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bn = getelementptr inbounds nuw i8, ptr %.val442, i64 %i.bc
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i32 -4, ptr %i.bo, align 1
  %.val441 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %.val441, i64 %i.bc
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 -4, ptr %i.bq, align 1
  %.val440 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.br = getelementptr inbounds nuw i8, ptr %.val440, i64 %i.bc
  store i32 -4, ptr %i.br, align 1
  %i.bs = add i32 %.2, 96                         ; 2 uses
  %.not419 = icmp eq i32 %i.bs, %i.bb
  br i1 %.not419, label %.loopexit, label %bb.e

bb.f:                                             ; preds = %bb.a
  %i.bt = add nuw nsw i64 %i.b, 4                 ; 3 uses
  %.val452 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val452, i64 %i.bt
  store i64 0, ptr %i.bu, align 1
  %.val425 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bv = getelementptr inbounds nuw i8, ptr %.val425, i64 %i.c
  %.0.copyload.i457 = load i32, ptr %i.bv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i457) #8, !srcloc !14
  %.not407 = icmp eq i32 %.0.copyload.i457, 0
  br i1 %.not407, label %.loopexit469, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bw = mul i32 %.0.copyload.i457, 12           ; 2 uses
  %i.bx = add i32 %i.bw, -12                      ; 2 uses
  %i.by = udiv i32 %i.bx, 12
  %i.bz = add nuw nsw i32 %i.by, 1
  %i.ca = and i32 %i.bz, 7                        ; 7 uses
  %.not408 = icmp eq i32 %i.ca, 0
  br i1 %.not408, label %.loopexit471, label %.preheader470

.preheader470:                                    ; preds = %bb.g
  %i.cb = zext i32 %i.v to i64
  %.val439 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %.val439, i64 %i.cb
  store i32 -4, ptr %i.cc, align 1
  %i.cd = add i32 %i.v, 12                        ; 2 uses
  %.not409 = icmp eq i32 %i.ca, 1
  br i1 %.not409, label %.loopexit471, label %.preheader470.1

.preheader470.1:                                  ; preds = %.preheader470
  %i.ce = zext i32 %i.cd to i64
  %.val439.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cf = getelementptr inbounds nuw i8, ptr %.val439.1, i64 %i.ce
  store i32 -4, ptr %i.cf, align 1
  %i.cg = add i32 %i.v, 24                        ; 2 uses
  %.not409.1 = icmp eq i32 %i.ca, 2
  br i1 %.not409.1, label %.loopexit471, label %.preheader470.2

.preheader470.2:                                  ; preds = %.preheader470.1
  %i.ch = zext i32 %i.cg to i64
  %.val439.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %.val439.2, i64 %i.ch
  store i32 -4, ptr %i.ci, align 1
  %i.cj = add i32 %i.v, 36                        ; 2 uses
  %.not409.2 = icmp eq i32 %i.ca, 3
  br i1 %.not409.2, label %.loopexit471, label %.preheader470.3

.preheader470.3:                                  ; preds = %.preheader470.2
  %i.ck = zext i32 %i.cj to i64
  %.val439.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %.val439.3, i64 %i.ck
  store i32 -4, ptr %i.cl, align 1
  %i.cm = add i32 %i.v, 48                        ; 2 uses
  %.not409.3 = icmp eq i32 %i.ca, 4
  br i1 %.not409.3, label %.loopexit471, label %.preheader470.4

.preheader470.4:                                  ; preds = %.preheader470.3
  %i.cn = zext i32 %i.cm to i64
  %.val439.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.co = getelementptr inbounds nuw i8, ptr %.val439.4, i64 %i.cn
  store i32 -4, ptr %i.co, align 1
  %i.cp = add i32 %i.v, 60                        ; 2 uses
end_hunk_5
begin_hunk_6_@w2c_hermes_llvh0x3A0x3ASmallPtrSetImpl0x3Chermes0x3A0x3ALiteral0x2A0x3E0x3A0x3Ainsert0x28hermes0x3A0x3ALiteral0x2A0x29:bb.a
  %.0.copyload.i245 = load i32, ptr %i.j, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i245) #8, !srcloc !14
  %i.k = shl i32 %.0.copyload.i245, 2             ; 2 uses
  %i.l = add i32 %i.k, %.0.copyload.i             ; 2 uses
  %.not214 = icmp eq i32 %.0.copyload.i245, 0
  br i1 %.not214, label %bb.f, label %.preheader256

.preheader256:                                    ; preds = %bb.b, %bb.c
  %.0206 = phi i32 [ %i.r, %bb.c ], [ %.0.copyload.i, %bb.b ] ; 5 uses
  %.0 = phi i32 [ %i.q, %bb.c ], [ 0, %bb.b ]
  %i.m = zext i32 %.0206 to i64
  %.val231 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %.val231, i64 %i.m
  %.0.copyload.i246 = load i32, ptr %i.n, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i246) #8, !srcloc !14
  %i.o = icmp eq i32 %.0.copyload.i246, %3
  br i1 %i.o, label %bb.i, label %bb.c

bb.c:                                             ; preds = %.preheader256
  %i.p = icmp eq i32 %.0.copyload.i246, -2
  %i.q = select i1 %i.p, i32 %.0206, i32 %.0      ; 5 uses
  %i.r = add i32 %.0206, 4                        ; 2 uses
  %.not215 = icmp eq i32 %i.r, %i.l
  br i1 %.not215, label %bb.d, label %.preheader256

bb.d:                                             ; preds = %bb.c
  %.not216 = icmp eq i32 %i.q, 0
  br i1 %.not216, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = zext i32 %i.q to i64
  %.val243 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val243, i64 %i.s
  store i32 %3, ptr %i.t, align 1
  %i.u = add nuw nsw i64 %i.e, 16                 ; 2 uses
  %.val230 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %.val230, i64 %i.u
  %.0.copyload.i247 = load i32, ptr %i.v, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i247) #8, !srcloc !14
  %i.w = add i32 %.0.copyload.i247, -1
  %.val242 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %.val242, i64 %i.u
  store i32 %i.w, ptr %i.x, align 1
  %i.y = zext i32 %i.c to i64                     ; 2 uses
  %.val222 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val222, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i8 1, ptr %i.aa, align 1
  %.val241 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %.val241, i64 %i.y
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 %i.q, ptr %i.ac, align 1
  br label %bb.j

bb.f:                                             ; preds = %bb.d, %bb.b
  %.val229 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.val229, i64 %i.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.0.copyload.i248 = load i32, ptr %i.ae, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i248) #8, !srcloc !14
  %.not217 = icmp ult i32 %.0.copyload.i245, %.0.copyload.i248
  br i1 %.not217, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = add nuw i32 %.0.copyload.i245, 1
  %.val240 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.val240, i64 %i.i
  store i32 %i.af, ptr %i.ag, align 1
  %i.ah = zext i32 %i.l to i64
  %.val239 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %.val239, i64 %i.ah
  store i32 %3, ptr %i.ai, align 1
  %.val228 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %.val228, i64 %i.e
  %.0.copyload.i249 = load i32, ptr %i.aj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i249) #8, !srcloc !14
  %i.ak = zext i32 %i.c to i64                    ; 2 uses
  %.val221 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val221, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i8 1, ptr %i.am, align 1
  %i.an = add i32 %.0.copyload.i249, %i.k         ; 2 uses
  %.val238 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.val238, i64 %i.ak
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 %i.an, ptr %i.ap, align 1
  br label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.a
  %i.aq = add i32 %i.b, -8
  tail call void @w2c_hermes_llvh0x3A0x3ASmallPtrSetImplBase0x3A0x3Ainsert_imp_big0x28void0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.aq, i32 noundef %2, i32 noundef %3)
  %i.ar = zext i32 %i.c to i64
  %.val227 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %.val227, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.0.copyload.i250 = load i32, ptr %i.at, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i250) #8, !srcloc !14
  br label %bb.j

bb.i:                                             ; preds = %.preheader256
  %i.au = zext i32 %i.c to i64                    ; 2 uses
  %.val220 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val220, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i8 0, ptr %i.aw, align 1
  %.val237 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %.val237, i64 %i.au
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 %.0206, ptr %i.ay, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  %.1 = phi i32 [ %.0.copyload.i250, %bb.h ], [ %i.an, %bb.g ], [ %.0206, %bb.i ], [ %i.q, %bb.e ] ; 3 uses
  %.val226 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %.val226, i64 %i.f
  %.0.copyload.i251 = load i32, ptr %i.az, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i251) #8, !srcloc !14
  %.val225 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %.val225, i64 %i.e
  %.0.copyload.i252 = load i32, ptr %i.ba, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i252) #8, !srcloc !14
  %i.bb = icmp eq i32 %.0.copyload.i251, %.0.copyload.i252
  %i.bc = select i1 %i.bb, i32 12, i32 8
  %i.bd = add i32 %i.bc, %2
  %i.be = zext i32 %i.bd to i64
  %.val224 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.val224, i64 %i.be
  %.0.copyload.i253 = load i32, ptr %i.bf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i253) #8, !srcloc !14
  %i.bg = shl i32 %.0.copyload.i253, 2
  %i.bh = add i32 %i.bg, %.0.copyload.i251        ; 4 uses
  %i.bi = icmp eq i32 %i.bh, %.1
  br i1 %i.bi, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.j, %bb.k
  %.2 = phi i32 [ %i.bm, %bb.k ], [ %.1, %bb.j ]  ; 3 uses
  %i.bj = zext i32 %.2 to i64
  %.val223 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %.val223, i64 %i.bj
  %.0.copyload.i254 = load i32, ptr %i.bk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i254) #8, !srcloc !14
  %i.bl = icmp ult i32 %.0.copyload.i254, -2
  br i1 %i.bl, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %.preheader
  %i.bm = add i32 %.2, 4                          ; 2 uses
  %.not218 = icmp eq i32 %i.bm, %i.bh
  br i1 %.not218, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.k, %.preheader, %bb.j
  %.3 = phi i32 [ %.1, %bb.j ], [ %i.bh, %bb.k ], [ %.2, %.preheader ]
  %i.bn = zext i32 %1 to i64                      ; 3 uses
  %.val236 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %.val236, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i32 %i.bh, ptr %i.bp, align 1
  %.val235 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %.val235, i64 %i.bn
  store i32 %.3, ptr %i.bq, align 1
  %i.br = zext i32 %i.c to i64
  %.val = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %.val, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %.0.copyload.i255 = load i8, ptr %i.bt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i255) #8, !srcloc !13
  %.val219 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val219, i64 %i.bn
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i8 %.0.copyload.i255, ptr %i.bv, align 1
  store i32 %i.b, ptr %i.a, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 46 uses
  %i.e = zext i32 %1 to i64                       ; 5 uses
  %i.f = add nuw nsw i64 %i.e, 12                 ; 4 uses
  %.val355 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %.val355, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.h = add i32 %2, -1
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = lshr i64 %i.i, 1
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 2
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 4
  %i.o = or i64 %i.n, %i.m                        ; 2 uses
  %i.p = lshr i64 %i.o, 8
  %i.q = or i64 %i.p, %i.o                        ; 2 uses
  %i.r = lshr i64 %i.q, 16
  %i.s = or i64 %i.r, %i.q
  %i.t = trunc nuw i64 %i.s to i32
  %i.u = add i32 %i.t, 1
  %3 = tail call i32 @llvm.umax.i32(i32 %i.u, i32 64) ; 2 uses
  %.val359 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %.val359, i64 %i.f
  store i32 %3, ptr %i.v, align 1
  %.val354 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %.val354, i64 %i.e
  %.0.copyload.i383 = load i32, ptr %i.w, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i383) #8, !srcloc !14
  %i.x = mul i32 %3, 12
  %i.y = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef %0, i32 noundef %i.x) #8 ; 21 uses
  %.val358 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val358, i64 %i.e
  store i32 %i.y, ptr %i.z, align 1
  %.not = icmp eq i32 %.0.copyload.i383, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.val380 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %.val380, i64 %i.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i64 0, ptr %i.ab, align 1
  %.val353 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.val353, i64 %i.f
  %.0.copyload.i384 = load i32, ptr %i.ac, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i384) #8, !srcloc !14
  %.not346 = icmp eq i32 %.0.copyload.i384, 0
  br i1 %.not346, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = mul i32 %.0.copyload.i384, 12           ; 2 uses
  %i.ae = add i32 %i.ad, -12                      ; 2 uses
  %i.af = udiv i32 %i.ae, 12
  %i.ag = add nuw nsw i32 %i.af, 1
  %i.ah = and i32 %i.ag, 7                        ; 7 uses
  %.not347 = icmp eq i32 %i.ah, 0
  br i1 %.not347, label %.loopexit391, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.ai = zext i32 %i.y to i64
  %.val379 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %.val379, i64 %i.ai
  store i64 4294967295, ptr %i.aj, align 1
  %i.ak = add i32 %i.y, 12                        ; 2 uses
  %.not348 = icmp eq i32 %i.ah, 1
  br i1 %.not348, label %.loopexit391, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %i.al = zext i32 %i.ak to i64
  %.val379.1 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %.val379.1, i64 %i.al
  store i64 4294967295, ptr %i.am, align 1
  %i.an = add i32 %i.y, 24                        ; 2 uses
  %.not348.1 = icmp eq i32 %i.ah, 2
  br i1 %.not348.1, label %.loopexit391, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.ao = zext i32 %i.an to i64
  %.val379.2 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.val379.2, i64 %i.ao
  store i64 4294967295, ptr %i.ap, align 1
  %i.aq = add i32 %i.y, 36                        ; 2 uses
  %.not348.2 = icmp eq i32 %i.ah, 3
  br i1 %.not348.2, label %.loopexit391, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.ar = zext i32 %i.aq to i64
  %.val379.3 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %.val379.3, i64 %i.ar
  store i64 4294967295, ptr %i.as, align 1
  %i.at = add i32 %i.y, 48                        ; 2 uses
  %.not348.3 = icmp eq i32 %i.ah, 4
  br i1 %.not348.3, label %.loopexit391, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.au = zext i32 %i.at to i64
  %.val379.4 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val379.4, i64 %i.au
  store i64 4294967295, ptr %i.av, align 1
  %i.aw = add i32 %i.y, 60                        ; 2 uses
  %.not348.4 = icmp eq i32 %i.ah, 5
  br i1 %.not348.4, label %.loopexit391, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.ax = zext i32 %i.aw to i64
  %.val379.5 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %.val379.5, i64 %i.ax
  store i64 4294967295, ptr %i.ay, align 1
  %i.az = add i32 %i.y, 72                        ; 2 uses
  %.not348.5 = icmp eq i32 %i.ah, 6
  br i1 %.not348.5, label %.loopexit391, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.ba = zext i32 %i.az to i64
  %.val379.6 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %.val379.6, i64 %i.ba
  store i64 4294967295, ptr %i.bb, align 1
  %i.bc = add i32 %i.y, 84
  br label %.loopexit391

.loopexit391:                                     ; preds = %.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %bb.c
  %.1 = phi i32 [ %i.y, %bb.c ], [ %i.ak, %.preheader ], [ %i.an, %.preheader.1 ], [ %i.aq, %.preheader.2 ], [ %i.at, %.preheader.3 ], [ %i.aw, %.preheader.4 ], [ %i.az, %.preheader.5 ], [ %i.bc, %.preheader.6 ]
  %i.bd = icmp ult i32 %i.ae, 84
  br i1 %i.bd, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.loopexit391
  %i.be = add i32 %i.ad, %i.y
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.2 = phi i32 [ %.1, %bb.d ], [ %i.bv, %bb.e ]  ; 2 uses
  %i.bf = zext i32 %.2 to i64                     ; 8 uses
  %.val378 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %.val378, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 84
  store i64 4294967295, ptr %i.bh, align 1
  %.val377 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %.val377, i64 %i.bf
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  store i64 4294967295, ptr %i.bj, align 1
  %.val376 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %.val376, i64 %i.bf
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 60
  store i64 4294967295, ptr %i.bl, align 1
  %.val375 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %.val375, i64 %i.bf
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  store i64 4294967295, ptr %i.bn, align 1
  %.val374 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %.val374, i64 %i.bf
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 36
  store i64 4294967295, ptr %i.bp, align 1
  %.val373 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %.val373, i64 %i.bf
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store i64 4294967295, ptr %i.br, align 1
  %.val372 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %.val372, i64 %i.bf
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i64 4294967295, ptr %i.bt, align 1
  %.val371 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val371, i64 %i.bf
  store i64 4294967295, ptr %i.bu, align 1
  %i.bv = add i32 %.2, 96                         ; 2 uses
  %.not349 = icmp eq i32 %i.bv, %i.be
  br i1 %.not349, label %.loopexit, label %bb.e

bb.f:                                             ; preds = %bb.a
  %i.bw = add nuw nsw i64 %i.e, 4                 ; 3 uses
  %.val370 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %.val370, i64 %i.bw
  store i64 0, ptr %i.bx, align 1
  %.val352 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %.val352, i64 %i.f
  %.0.copyload.i385 = load i32, ptr %i.by, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i385) #8, !srcloc !14
  %.not339 = icmp eq i32 %.0.copyload.i385, 0
  br i1 %.not339, label %.loopexit393, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bz = mul i32 %.0.copyload.i385, 12           ; 2 uses
  %i.ca = add i32 %i.bz, -12                      ; 2 uses
  %i.cb = udiv i32 %i.ca, 12
  %i.cc = add nuw nsw i32 %i.cb, 1
  %i.cd = and i32 %i.cc, 7                        ; 7 uses
  %.not340 = icmp eq i32 %i.cd, 0
  br i1 %.not340, label %.loopexit395, label %.preheader394

.preheader394:                                    ; preds = %bb.g
  %i.ce = zext i32 %i.y to i64
  %.val369 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cf = getelementptr inbounds nuw i8, ptr %.val369, i64 %i.ce
  store i64 4294967295, ptr %i.cf, align 1
  %i.cg = add i32 %i.y, 12                        ; 2 uses
  %.not341 = icmp eq i32 %i.cd, 1
  br i1 %.not341, label %.loopexit395, label %.preheader394.1

.preheader394.1:                                  ; preds = %.preheader394
  %i.ch = zext i32 %i.cg to i64
  %.val369.1 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %.val369.1, i64 %i.ch
  store i64 4294967295, ptr %i.ci, align 1
  %i.cj = add i32 %i.y, 24                        ; 2 uses
  %.not341.1 = icmp eq i32 %i.cd, 2
  br i1 %.not341.1, label %.loopexit395, label %.preheader394.2

.preheader394.2:                                  ; preds = %.preheader394.1
  %i.ck = zext i32 %i.cj to i64
  %.val369.2 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %.val369.2, i64 %i.ck
  store i64 4294967295, ptr %i.cl, align 1
  %i.cm = add i32 %i.y, 36                        ; 2 uses
  %.not341.2 = icmp eq i32 %i.cd, 3
  br i1 %.not341.2, label %.loopexit395, label %.preheader394.3

.preheader394.3:                                  ; preds = %.preheader394.2
  %i.cn = zext i32 %i.cm to i64
  %.val369.3 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.co = getelementptr inbounds nuw i8, ptr %.val369.3, i64 %i.cn
  store i64 4294967295, ptr %i.co, align 1
  %i.cp = add i32 %i.y, 48                        ; 2 uses
  %.not341.3 = icmp eq i32 %i.cd, 4
  br i1 %.not341.3, label %.loopexit395, label %.preheader394.4

.preheader394.4:                                  ; preds = %.preheader394.3
  %i.cq = zext i32 %i.cp to i64
  %.val369.4 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %.val369.4, i64 %i.cq
  store i64 4294967295, ptr %i.cr, align 1
  %i.cs = add i32 %i.y, 60                        ; 2 uses
  %.not341.4 = icmp eq i32 %i.cd, 5
  br i1 %.not341.4, label %.loopexit395, label %.preheader394.5

.preheader394.5:                                  ; preds = %.preheader394.4
  %i.ct = zext i32 %i.cs to i64
  %.val369.5 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cu = getelementptr inbounds nuw i8, ptr %.val369.5, i64 %i.ct
  store i64 4294967295, ptr %i.cu, align 1
  %i.cv = add i32 %i.y, 72                        ; 2 uses
  %.not341.5 = icmp eq i32 %i.cd, 6
  br i1 %.not341.5, label %.loopexit395, label %.preheader394.6

.preheader394.6:                                  ; preds = %.preheader394.5
  %i.cw = zext i32 %i.cv to i64
  %.val369.6 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cx = getelementptr inbounds nuw i8, ptr %.val369.6, i64 %i.cw
  store i64 4294967295, ptr %i.cx, align 1
  %i.cy = add i32 %i.y, 84
  br label %.loopexit395

.loopexit395:                                     ; preds = %.preheader394, %.preheader394.1, %.preheader394.2, %.preheader394.3, %.preheader394.4, %.preheader394.5, %.preheader394.6, %bb.g
  %.4 = phi i32 [ %i.y, %bb.g ], [ %i.cg, %.preheader394 ], [ %i.cj, %.preheader394.1 ], [ %i.cm, %.preheader394.2 ], [ %i.cp, %.preheader394.3 ], [ %i.cs, %.preheader394.4 ], [ %i.cv, %.preheader394.5 ], [ %i.cy, %.preheader394.6 ]
  %i.cz = icmp ult i32 %i.ca, 84
  br i1 %i.cz, label %.loopexit393, label %bb.h

bb.h:                                             ; preds = %.loopexit395
  %i.da = add i32 %i.bz, %i.y
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.5 = phi i32 [ %.4, %bb.h ], [ %i.dr, %bb.i ]  ; 2 uses
  %i.db = zext i32 %.5 to i64                     ; 8 uses
  %.val368 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dc = getelementptr inbounds nuw i8, ptr %.val368, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 84
  store i64 4294967295, ptr %i.dd, align 1
  %.val367 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.de = getelementptr inbounds nuw i8, ptr %.val367, i64 %i.db
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  store i64 4294967295, ptr %i.df, align 1
  %.val366 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dg = getelementptr inbounds nuw i8, ptr %.val366, i64 %i.db
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 60
  store i64 4294967295, ptr %i.dh, align 1
  %.val365 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.di = getelementptr inbounds nuw i8, ptr %.val365, i64 %i.db
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  store i64 4294967295, ptr %i.dj, align 1
  %.val364 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dk = getelementptr inbounds nuw i8, ptr %.val364, i64 %i.db
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 36
  store i64 4294967295, ptr %i.dl, align 1
  %.val363 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dm = getelementptr inbounds nuw i8, ptr %.val363, i64 %i.db
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store i64 4294967295, ptr %i.dn, align 1
  %.val362 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.do = getelementptr inbounds nuw i8, ptr %.val362, i64 %i.db
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  store i64 4294967295, ptr %i.dp, align 1
  %.val361 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dq = getelementptr inbounds nuw i8, ptr %.val361, i64 %i.db
  store i64 4294967295, ptr %i.dq, align 1
  %i.dr = add i32 %.5, 96                         ; 2 uses
  %.not342 = icmp eq i32 %i.dr, %i.da
  br i1 %.not342, label %.loopexit393, label %bb.i

.loopexit393:                                     ; preds = %bb.i, %.loopexit395, %bb.f
  %.not343 = icmp eq i32 %.0.copyload.i, 0
  br i1 %.not343, label %.loopexit392, label %bb.j

bb.j:                                             ; preds = %.loopexit393
  %i.ds = mul i32 %.0.copyload.i, 12
  %i.dt = add i32 %.0.copyload.i383, %i.ds
  %i.du = add i32 %i.b, -4
  %i.dv = zext i32 %i.c to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  %.6 = phi i32 [ %.0.copyload.i383, %bb.j ], [ %i.em, %bb.m ] ; 3 uses
  %i.dw = zext i32 %.6 to i64                     ; 3 uses
  %.val382 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dx = getelementptr inbounds nuw i8, ptr %.val382, i64 %i.dw
  %.0.copyload.i386 = load i64, ptr %i.dx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i386) #8, !srcloc !33
  %i.dy = and i64 %.0.copyload.i386, 4294967294
  %.not344 = icmp eq i64 %i.dy, 4294967294
  br i1 %.not344, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dz = tail call i32 @w2c_hermes_bool0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x3E0x2C0x20llvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x3E0x3A0x3ALookupBucketFor0x3Cllvh0x3A0x3AStringRef0x3E0x28llvh0x3A0x3AStringRef0x20const0x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x20const0x2A0x260x290x20const(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.6, i32 noundef %i.du) #8 ; 0 uses
  %.val351 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ea = getelementptr inbounds nuw i8, ptr %.val351, i64 %i.dv
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  %.0.copyload.i387 = load i32, ptr %i.eb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i387) #8, !srcloc !14
  %.val381 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ec = getelementptr inbounds nuw i8, ptr %.val381, i64 %i.dw
  %.0.copyload.i388 = load i64, ptr %i.ec, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i388) #8, !srcloc !33
  %i.ed = zext i32 %.0.copyload.i387 to i64       ; 2 uses
  %.val360 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ee = getelementptr inbounds nuw i8, ptr %.val360, i64 %i.ed
  store i64 %.0.copyload.i388, ptr %i.ee, align 1
  %.val350 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ef = getelementptr inbounds nuw i8, ptr %.val350, i64 %i.dw
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %.0.copyload.i389 = load i32, ptr %i.eg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i389) #8, !srcloc !14
  %.val357 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.eh = getelementptr inbounds nuw i8, ptr %.val357, i64 %i.ed
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i32 %.0.copyload.i389, ptr %i.ei, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ej = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bw
  %.0.copyload.i390 = load i32, ptr %i.ej, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i390) #8, !srcloc !14
  %i.ek = add i32 %.0.copyload.i390, 1
  %.val356 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.el = getelementptr inbounds nuw i8, ptr %.val356, i64 %i.bw
  store i32 %i.ek, ptr %i.el, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.em = add i32 %.6, 12                         ; 2 uses
  %.not345 = icmp eq i32 %i.em, %i.dt
  br i1 %.not345, label %.loopexit392, label %bb.k

.loopexit392:                                     ; preds = %bb.m, %.loopexit393
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i383) #8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.loopexit391, %bb.b, %.loopexit392
  store i32 %i.b, ptr %i.a, align 8, !tbaa !15
  ret void
}

declare i32 @w2c_hermes_bool0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x3E0x2C0x20llvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x3E0x3A0x3ALookupBucketFor0x3Cllvh0x3A0x3AStringRef0x3E0x28llvh0x3A0x3AStringRef0x20const0x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x20const0x2A0x260x290x20const(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20hermes0x3A0x3AESTree0x3A0x3AIdentifierNode0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AUniqueString0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20hermes0x3A0x3AESTree0x3A0x3AIdentifierNode0x2A0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 46 uses
  %i.b = zext i32 %1 to i64                       ; 6 uses
  %i.c = add nuw nsw i64 %i.b, 12                 ; 4 uses
  %.val415 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val415, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = add i32 %2, -1
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 4
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 8
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 16
  %i.p = or i64 %i.o, %i.n
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = add i32 %i.q, 1
  %3 = tail call i32 @llvm.umax.i32(i32 %i.r, i32 64) ; 2 uses
  %.val438 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.val438, i64 %i.c
  store i32 %3, ptr %i.s, align 1
  %.val414 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val414, i64 %i.b
  %.0.copyload.i441 = load i32, ptr %i.t, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i441) #8, !srcloc !14
  %i.u = shl i32 %3, 3
  %i.v = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef %0, i32 noundef %i.u) #8 ; 21 uses
  %.val437 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %.val437, i64 %i.b
  store i32 %i.v, ptr %i.w, align 1
  %.not = icmp eq i32 %.0.copyload.i441, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.val440 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %.val440, i64 %i.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i64 0, ptr %i.y, align 1
  %.val413 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val413, i64 %i.c
  %.0.copyload.i442 = load i32, ptr %i.z, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i442) #8, !srcloc !14
  %.not404 = icmp eq i32 %.0.copyload.i442, 0
  br i1 %.not404, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = and i32 %.0.copyload.i442, 7            ; 7 uses
  %.not405 = icmp eq i32 %i.aa, 0
  br i1 %.not405, label %.loopexit449, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.ab = zext i32 %i.v to i64
  %.val436 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.val436, i64 %i.ab
  store i32 -4, ptr %i.ac, align 1
  %i.ad = add i32 %i.v, 8                         ; 2 uses
  %.not406 = icmp eq i32 %i.aa, 1
  br i1 %.not406, label %.loopexit449, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %i.ae = zext i32 %i.ad to i64
  %.val436.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %.val436.1, i64 %i.ae
  store i32 -4, ptr %i.af, align 1
  %i.ag = add i32 %i.v, 16                        ; 2 uses
  %.not406.1 = icmp eq i32 %i.aa, 2
  br i1 %.not406.1, label %.loopexit449, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.ah = zext i32 %i.ag to i64
  %.val436.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %.val436.2, i64 %i.ah
  store i32 -4, ptr %i.ai, align 1
  %i.aj = add i32 %i.v, 24                        ; 2 uses
  %.not406.2 = icmp eq i32 %i.aa, 3
  br i1 %.not406.2, label %.loopexit449, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.ak = zext i32 %i.aj to i64
  %.val436.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val436.3, i64 %i.ak
  store i32 -4, ptr %i.al, align 1
  %i.am = add i32 %i.v, 32                        ; 2 uses
  %.not406.3 = icmp eq i32 %i.aa, 4
  br i1 %.not406.3, label %.loopexit449, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.an = zext i32 %i.am to i64
  %.val436.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.val436.4, i64 %i.an
  store i32 -4, ptr %i.ao, align 1
  %i.ap = add i32 %i.v, 40                        ; 2 uses
  %.not406.4 = icmp eq i32 %i.aa, 5
  br i1 %.not406.4, label %.loopexit449, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.aq = zext i32 %i.ap to i64
  %.val436.5 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %.val436.5, i64 %i.aq
  store i32 -4, ptr %i.ar, align 1
  %i.as = add i32 %i.v, 48                        ; 2 uses
  %.not406.5 = icmp eq i32 %i.aa, 6
  br i1 %.not406.5, label %.loopexit449, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.at = zext i32 %i.as to i64
  %.val436.6 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %.val436.6, i64 %i.at
  store i32 -4, ptr %i.au, align 1
  %i.av = add i32 %i.v, 56
  br label %.loopexit449

.loopexit449:                                     ; preds = %.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %bb.c
  %.1 = phi i32 [ %i.v, %bb.c ], [ %i.ad, %.preheader ], [ %i.ag, %.preheader.1 ], [ %i.aj, %.preheader.2 ], [ %i.am, %.preheader.3 ], [ %i.ap, %.preheader.4 ], [ %i.as, %.preheader.5 ], [ %i.av, %.preheader.6 ]
  %i.aw = add i32 %.0.copyload.i442, 536870911
  %i.ax = and i32 %i.aw, 536870911
  %i.ay = icmp samesign ult i32 %i.ax, 7
  br i1 %i.ay, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.loopexit449
  %i.az = shl i32 %.0.copyload.i442, 3
  %i.ba = add i32 %i.az, %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.2 = phi i32 [ %.1, %bb.d ], [ %i.br, %bb.e ]  ; 2 uses
  %i.bb = zext i32 %.2 to i64                     ; 8 uses
  %.val435 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %.val435, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  store i32 -4, ptr %i.bd, align 1
  %.val434 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %.val434, i64 %i.bb
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  store i32 -4, ptr %i.bf, align 1
  %.val433 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %.val433, i64 %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store i32 -4, ptr %i.bh, align 1
  %.val432 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %.val432, i64 %i.bb
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store i32 -4, ptr %i.bj, align 1
  %.val431 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %.val431, i64 %i.bb
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i32 -4, ptr %i.bl, align 1
  %.val430 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %.val430, i64 %i.bb
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i32 -4, ptr %i.bn, align 1
  %.val429 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %.val429, i64 %i.bb
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 -4, ptr %i.bp, align 1
  %.val428 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %.val428, i64 %i.bb
  store i32 -4, ptr %i.bq, align 1
  %i.br = add i32 %.2, 64                         ; 2 uses
  %.not407 = icmp eq i32 %i.br, %i.ba
  br i1 %.not407, label %.loopexit, label %bb.e

bb.f:                                             ; preds = %bb.a
  %i.bs = add nuw nsw i64 %i.b, 4                 ; 2 uses
  %.val439 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bt = getelementptr inbounds nuw i8, ptr %.val439, i64 %i.bs
  store i64 0, ptr %i.bt, align 1
  %.val412 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val412, i64 %i.c
  %.0.copyload.i443 = load i32, ptr %i.bu, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i443) #8, !srcloc !14
  %.not395 = icmp eq i32 %.0.copyload.i443, 0
  br i1 %.not395, label %.loopexit453, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = and i32 %.0.copyload.i443, 7            ; 7 uses
  %.not396 = icmp eq i32 %i.bv, 0
  br i1 %.not396, label %.loopexit455, label %.preheader454

.preheader454:                                    ; preds = %bb.g
  %i.bw = zext i32 %i.v to i64
  %.val427 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %.val427, i64 %i.bw
  store i32 -4, ptr %i.bx, align 1
  %i.by = add i32 %i.v, 8                         ; 2 uses
  %.not397 = icmp eq i32 %i.bv, 1
  br i1 %.not397, label %.loopexit455, label %.preheader454.1

.preheader454.1:                                  ; preds = %.preheader454
  %i.bz = zext i32 %i.by to i64
  %.val427.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %.val427.1, i64 %i.bz
  store i32 -4, ptr %i.ca, align 1
  %i.cb = add i32 %i.v, 16                        ; 2 uses
  %.not397.1 = icmp eq i32 %i.bv, 2
  br i1 %.not397.1, label %.loopexit455, label %.preheader454.2

.preheader454.2:                                  ; preds = %.preheader454.1
  %i.cc = zext i32 %i.cb to i64
  %.val427.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cd = getelementptr inbounds nuw i8, ptr %.val427.2, i64 %i.cc
  store i32 -4, ptr %i.cd, align 1
  %i.ce = add i32 %i.v, 24                        ; 2 uses
  %.not397.2 = icmp eq i32 %i.bv, 3
  br i1 %.not397.2, label %.loopexit455, label %.preheader454.3

.preheader454.3:                                  ; preds = %.preheader454.2
  %i.cf = zext i32 %i.ce to i64
  %.val427.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %.val427.3, i64 %i.cf
  store i32 -4, ptr %i.cg, align 1
  %i.ch = add i32 %i.v, 32                        ; 2 uses
  %.not397.3 = icmp eq i32 %i.bv, 4
  br i1 %.not397.3, label %.loopexit455, label %.preheader454.4

.preheader454.4:                                  ; preds = %.preheader454.3
  %i.ci = zext i32 %i.ch to i64
  %.val427.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cj = getelementptr inbounds nuw i8, ptr %.val427.4, i64 %i.ci
  store i32 -4, ptr %i.cj, align 1
  %i.ck = add i32 %i.v, 40                        ; 2 uses
  %.not397.4 = icmp eq i32 %i.bv, 5
  br i1 %.not397.4, label %.loopexit455, label %.preheader454.5

.preheader454.5:                                  ; preds = %.preheader454.4
  %i.cl = zext i32 %i.ck to i64
end_hunk_6
begin_hunk_7_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoNumeric_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29:bb.a
  %.val124 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %.val124, i64 %i.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 136
  %.0.copyload.i148 = load i32, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i148) #8, !srcloc !14
  %i.al = shl i32 %.0.copyload.i141, 2
  %i.am = add i32 %.0.copyload.i148, %i.al
  %i.an = zext i32 %i.am to i64
  %.val = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 %i.an
  %.0.copyload.i149 = load i32, ptr %i.ao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i149) #8, !srcloc !14
  %.val134 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.val134, i64 %i.i
  store i32 %.0.copyload.i141, ptr %i.ap, align 1
  %.val133 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %.val133, i64 %i.k
  store i32 %.0.copyload.i142, ptr %i.aq, align 1
  %i.ar = add i32 %.0.copyload.i149, 128
  %.val132 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %.val132, i64 %i.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 168
  store i32 %i.ar, ptr %i.at, align 1
  store i32 %i.b, ptr %i.a, align 8, !tbaa !15
  ret void
}

declare i32 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3Aappend0x28char0x20const0x2A0x2C0x20unsigned0x20long0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Chermes0x3A0x3AInstruction0x2A0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AInstruction0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AInstruction0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Chermes0x3A0x3AInstruction0x2A0x3E0x3E0x2C0x20hermes0x3A0x3AInstruction0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AInstruction0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Chermes0x3A0x3AInstruction0x2A0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3AInstruction0x2A0x20const0x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Chermes0x3A0x3AInstruction0x2A0x3E0x2A0x2C0x20hermes0x3A0x3AInstruction0x2A0x20const0x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 15 uses
  %i.b = zext i32 %1 to i64                       ; 5 uses
  %i.c = add nuw nsw i64 %i.b, 4                  ; 3 uses
  %.val191 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val191, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = shl i32 %.0.copyload.i, 2
  %i.f = add i32 %i.e, 4
  %i.g = add nuw nsw i64 %i.b, 12                 ; 2 uses
  %.val190 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val190, i64 %i.g
  %.0.copyload.i195 = load i32, ptr %i.h, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i195) #8, !srcloc !14
  %i.i = mul i32 %.0.copyload.i195, 3
  %.not = icmp ult i32 %i.f, %i.i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = shl i32 %.0.copyload.i195, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = xor i32 %.0.copyload.i, -1
  %i.l = add i32 %.0.copyload.i195, %i.k
  %.val189 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val189, i64 %i.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.copyload.i196 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i196) #8, !srcloc !14
  %i.o = sub i32 %i.l, %.0.copyload.i196
  %i.p = lshr i32 %.0.copyload.i195, 3
  %i.q = icmp ugt i32 %i.o, %i.p
  br i1 %i.q, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0167 = phi i32 [ %i.j, %bb.b ], [ %.0.copyload.i195, %bb.c ]
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AInstruction0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AInstruction0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Chermes0x3A0x3AInstruction0x2A0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0167)
  %i.r = zext i32 %3 to i64
  %.val188 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.val188, i64 %i.r
  %.0.copyload.i197 = load i32, ptr %i.s, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i197) #8, !srcloc !14
  %.val187 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val187, i64 %i.b
  %.0.copyload.i198 = load i32, ptr %i.t, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i198) #8, !srcloc !14
  %.val186 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val186, i64 %i.g
  %.0.copyload.i199 = load i32, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i199) #8, !srcloc !14
  %i.v = add i32 %.0.copyload.i199, -1            ; 2 uses
  %i.w = lshr i32 %.0.copyload.i197, 4
  %i.x = lshr i32 %.0.copyload.i197, 9
  %i.y = xor i32 %i.w, %i.x
  %i.z = and i32 %i.v, %i.y                       ; 2 uses
  %i.aa = shl nuw nsw i32 %i.z, 2
  %i.ab = add i32 %i.aa, %.0.copyload.i198        ; 3 uses
  %i.ac = zext i32 %i.ab to i64
  %.val185 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.val185, i64 %i.ac
  %.0.copyload.i200 = load i32, ptr %i.ad, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i200) #8, !srcloc !14
  %i.ae = icmp eq i32 %.0.copyload.i197, %.0.copyload.i200
  br i1 %i.ae, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.f
  %.0172 = phi i32 [ %i.aj, %bb.f ], [ 0, %bb.d ] ; 3 uses
  %.0171 = phi i32 [ %.0.copyload.i201, %bb.f ], [ %.0.copyload.i200, %bb.d ] ; 2 uses
  %.0170 = phi i32 [ %i.al, %bb.f ], [ 1, %bb.d ] ; 2 uses
  %.0169 = phi i32 [ %i.am, %bb.f ], [ %i.z, %bb.d ]
  %.0 = phi i32 [ %i.ao, %bb.f ], [ %i.ab, %bb.d ] ; 2 uses
  %i.af = icmp eq i32 %.0171, -4
  %.not179 = icmp eq i32 %.0172, 0                ; 2 uses
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader
  %i.ag = select i1 %.not179, i32 %.0, i32 %.0172
  br label %bb.g

bb.f:                                             ; preds = %.preheader
  %i.ah = icmp eq i32 %.0171, -8
  %i.ai = select i1 %i.ah, i1 %.not179, i1 false
  %i.aj = select i1 %i.ai, i32 %.0, i32 %.0172
  %i.ak = add i32 %.0169, %.0170
  %i.al = add i32 %.0170, 1
  %i.am = and i32 %i.ak, %i.v                     ; 2 uses
  %i.an = shl i32 %i.am, 2
  %i.ao = add i32 %i.an, %.0.copyload.i198        ; 3 uses
  %i.ap = zext i32 %i.ao to i64
  %.val184 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %.val184, i64 %i.ap
  %.0.copyload.i201 = load i32, ptr %i.aq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i201) #8, !srcloc !14
  %.not178 = icmp eq i32 %.0.copyload.i197, %.0.copyload.i201
  br i1 %.not178, label %.loopexit, label %.preheader

bb.g:                                             ; preds = %bb.c, %bb.e
  %.1 = phi i32 [ %i.ag, %bb.e ], [ %2, %bb.c ]   ; 2 uses
  %i.ar = zext i32 %.1 to i64
  %.val183 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %.val183, i64 %i.ar
  %.0.copyload.i202 = load i32, ptr %i.as, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i202) #8, !srcloc !14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.d, %bb.g
  %.1168 = phi i32 [ %.0.copyload.i197, %bb.d ], [ %.0.copyload.i202, %bb.g ], [ %.0.copyload.i197, %bb.f ]
  %.2 = phi i32 [ %i.ab, %bb.d ], [ %.1, %bb.g ], [ %i.ao, %bb.f ] ; 2 uses
  %.val182 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val182, i64 %i.c
  %.0.copyload.i203 = load i32, ptr %i.at, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i203) #8, !srcloc !14
  %i.au = add i32 %.0.copyload.i203, 1
  %.val194 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val194, i64 %i.c
  store i32 %i.au, ptr %i.av, align 1
  %.not180 = icmp eq i32 %.1168, -4
  br i1 %.not180, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.aw = add nuw nsw i64 %i.b, 8                 ; 2 uses
  %.val181 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %.val181, i64 %i.aw
  %.0.copyload.i204 = load i32, ptr %i.ax, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i204) #8, !srcloc !14
  %i.ay = add i32 %.0.copyload.i204, -1
  %.val193 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %.val193, i64 %i.aw
  store i32 %i.ay, ptr %i.az, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  %i.ba = zext i32 %3 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ba
  %.0.copyload.i205 = load i32, ptr %i.bb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i205) #8, !srcloc !14
  %i.bc = zext i32 %.2 to i64
  %.val192 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %.val192, i64 %i.bc
  store i32 %.0.copyload.i205, ptr %i.bd, align 1
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AInstruction0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AInstruction0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Chermes0x3A0x3AInstruction0x2A0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 36 uses
  %i.b = zext i32 %1 to i64                       ; 6 uses
  %i.c = add nuw nsw i64 %i.b, 12                 ; 4 uses
  %.val375 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val375, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = add i32 %2, -1
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 4
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 8
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 16
  %i.p = or i64 %i.o, %i.n
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = add i32 %i.q, 1
  %3 = tail call i32 @llvm.umax.i32(i32 %i.r, i32 64) ; 2 uses
  %.val381 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.val381, i64 %i.c
  store i32 %3, ptr %i.s, align 1
  %.val374 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val374, i64 %i.b
  %.0.copyload.i392 = load i32, ptr %i.t, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i392) #8, !srcloc !14
  %i.u = shl i32 %3, 2
  %i.v = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef %0, i32 noundef %i.u) #8 ; 21 uses
  %.val380 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %.val380, i64 %i.b
  store i32 %i.v, ptr %i.w, align 1
  %.not = icmp eq i32 %.0.copyload.i392, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.val391 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %.val391, i64 %i.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i64 0, ptr %i.y, align 1
  %.val373 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val373, i64 %i.c
  %.0.copyload.i393 = load i32, ptr %i.z, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i393) #8, !srcloc !14
  %.not365 = icmp eq i32 %.0.copyload.i393, 0
  br i1 %.not365, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = and i32 %.0.copyload.i393, 7            ; 7 uses
  %.not366 = icmp eq i32 %i.aa, 0
  br i1 %.not366, label %.loopexit399, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.ab = zext i32 %i.v to i64
  %.val379 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.val379, i64 %i.ab
  store i32 -4, ptr %i.ac, align 1
  %i.ad = add i32 %i.v, 4                         ; 2 uses
  %.not367 = icmp eq i32 %i.aa, 1
  br i1 %.not367, label %.loopexit399, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %i.ae = zext i32 %i.ad to i64
  %.val379.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %.val379.1, i64 %i.ae
  store i32 -4, ptr %i.af, align 1
  %i.ag = add i32 %i.v, 8                         ; 2 uses
  %.not367.1 = icmp eq i32 %i.aa, 2
  br i1 %.not367.1, label %.loopexit399, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.ah = zext i32 %i.ag to i64
  %.val379.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %.val379.2, i64 %i.ah
  store i32 -4, ptr %i.ai, align 1
  %i.aj = add i32 %i.v, 12                        ; 2 uses
  %.not367.2 = icmp eq i32 %i.aa, 3
  br i1 %.not367.2, label %.loopexit399, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.ak = zext i32 %i.aj to i64
  %.val379.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val379.3, i64 %i.ak
  store i32 -4, ptr %i.al, align 1
  %i.am = add i32 %i.v, 16                        ; 2 uses
  %.not367.3 = icmp eq i32 %i.aa, 4
  br i1 %.not367.3, label %.loopexit399, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.an = zext i32 %i.am to i64
  %.val379.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.val379.4, i64 %i.an
  store i32 -4, ptr %i.ao, align 1
  %i.ap = add i32 %i.v, 20                        ; 2 uses
  %.not367.4 = icmp eq i32 %i.aa, 5
  br i1 %.not367.4, label %.loopexit399, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.aq = zext i32 %i.ap to i64
  %.val379.5 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %.val379.5, i64 %i.aq
  store i32 -4, ptr %i.ar, align 1
  %i.as = add i32 %i.v, 24                        ; 2 uses
  %.not367.5 = icmp eq i32 %i.aa, 6
  br i1 %.not367.5, label %.loopexit399, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.at = zext i32 %i.as to i64
  %.val379.6 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %.val379.6, i64 %i.at
  store i32 -4, ptr %i.au, align 1
  %i.av = add i32 %i.v, 28
  br label %.loopexit399

.loopexit399:                                     ; preds = %.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %bb.c
  %.1 = phi i32 [ %i.v, %bb.c ], [ %i.ad, %.preheader ], [ %i.ag, %.preheader.1 ], [ %i.aj, %.preheader.2 ], [ %i.am, %.preheader.3 ], [ %i.ap, %.preheader.4 ], [ %i.as, %.preheader.5 ], [ %i.av, %.preheader.6 ]
  %i.aw = add i32 %.0.copyload.i393, 1073741823
  %i.ax = and i32 %i.aw, 1073741823
  %i.ay = icmp samesign ult i32 %i.ax, 7
  br i1 %i.ay, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.loopexit399
  %i.az = shl i32 %.0.copyload.i393, 2
  %i.ba = add i32 %i.az, %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.2 = phi i32 [ %.1, %bb.d ], [ %i.bj, %bb.e ]  ; 2 uses
  %i.bb = zext i32 %.2 to i64                     ; 4 uses
  %.val390 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %.val390, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store i64 -12884901892, ptr %i.bd, align 1
  %.val389 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %.val389, i64 %i.bb
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 -12884901892, ptr %i.bf, align 1
  %.val388 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %.val388, i64 %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 -12884901892, ptr %i.bh, align 1
  %.val387 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %.val387, i64 %i.bb
  store i64 -12884901892, ptr %i.bi, align 1
  %i.bj = add i32 %.2, 32                         ; 2 uses
  %.not368 = icmp eq i32 %i.bj, %i.ba
  br i1 %.not368, label %.loopexit, label %bb.e

bb.f:                                             ; preds = %bb.a
  %i.bk = add nuw nsw i64 %i.b, 4                 ; 2 uses
  %.val386 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %.val386, i64 %i.bk
  store i64 0, ptr %i.bl, align 1
  %.val372 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %.val372, i64 %i.c
  %.0.copyload.i394 = load i32, ptr %i.bm, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i394) #8, !srcloc !14
  %.not356 = icmp eq i32 %.0.copyload.i394, 0
  br i1 %.not356, label %.loopexit403, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = and i32 %.0.copyload.i394, 7            ; 7 uses
  %.not357 = icmp eq i32 %i.bn, 0
  br i1 %.not357, label %.loopexit405, label %.preheader404

.preheader404:                                    ; preds = %bb.g
  %i.bo = zext i32 %i.v to i64
  %.val378 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %.val378, i64 %i.bo
  store i32 -4, ptr %i.bp, align 1
  %i.bq = add i32 %i.v, 4                         ; 2 uses
  %.not358 = icmp eq i32 %i.bn, 1
  br i1 %.not358, label %.loopexit405, label %.preheader404.1

.preheader404.1:                                  ; preds = %.preheader404
  %i.br = zext i32 %i.bq to i64
  %.val378.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %.val378.1, i64 %i.br
  store i32 -4, ptr %i.bs, align 1
  %i.bt = add i32 %i.v, 8                         ; 2 uses
  %.not358.1 = icmp eq i32 %i.bn, 2
  br i1 %.not358.1, label %.loopexit405, label %.preheader404.2

.preheader404.2:                                  ; preds = %.preheader404.1
  %i.bu = zext i32 %i.bt to i64
  %.val378.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bv = getelementptr inbounds nuw i8, ptr %.val378.2, i64 %i.bu
  store i32 -4, ptr %i.bv, align 1
  %i.bw = add i32 %i.v, 12                        ; 2 uses
  %.not358.2 = icmp eq i32 %i.bn, 3
  br i1 %.not358.2, label %.loopexit405, label %.preheader404.3

.preheader404.3:                                  ; preds = %.preheader404.2
  %i.bx = zext i32 %i.bw to i64
  %.val378.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %.val378.3, i64 %i.bx
  store i32 -4, ptr %i.by, align 1
  %i.bz = add i32 %i.v, 16                        ; 2 uses
  %.not358.3 = icmp eq i32 %i.bn, 4
  br i1 %.not358.3, label %.loopexit405, label %.preheader404.4

.preheader404.4:                                  ; preds = %.preheader404.3
  %i.ca = zext i32 %i.bz to i64
  %.val378.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cb = getelementptr inbounds nuw i8, ptr %.val378.4, i64 %i.ca
  store i32 -4, ptr %i.cb, align 1
  %i.cc = add i32 %i.v, 20                        ; 2 uses
  %.not358.4 = icmp eq i32 %i.bn, 5
  br i1 %.not358.4, label %.loopexit405, label %.preheader404.5

.preheader404.5:                                  ; preds = %.preheader404.4
  %i.cd = zext i32 %i.cc to i64
  %.val378.5 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ce = getelementptr inbounds nuw i8, ptr %.val378.5, i64 %i.cd
  store i32 -4, ptr %i.ce, align 1
  %i.cf = add i32 %i.v, 24                        ; 2 uses
  %.not358.5 = icmp eq i32 %i.bn, 6
  br i1 %.not358.5, label %.loopexit405, label %.preheader404.6

.preheader404.6:                                  ; preds = %.preheader404.5
  %i.cg = zext i32 %i.cf to i64
  %.val378.6 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %.val378.6, i64 %i.cg
  store i32 -4, ptr %i.ch, align 1
  %i.ci = add i32 %i.v, 28
  br label %.loopexit405

.loopexit405:                                     ; preds = %.preheader404, %.preheader404.1, %.preheader404.2, %.preheader404.3, %.preheader404.4, %.preheader404.5, %.preheader404.6, %bb.g
end_hunk_7
begin_hunk_8_@w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x3E0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x3E0x3A0x3AmoveFromOldBuckets0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x2A0x29:bb.a
  %.val418 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dr = getelementptr inbounds nuw i8, ptr %.val418, i64 %.pre-phi
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  store i64 %.0.copyload.i443, ptr %i.ds, align 1
  %i.dt = add i32 %.0, 48
  %i.du = zext i32 %i.dt to i64
  %.val383 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dv = getelementptr inbounds nuw i8, ptr %.val383, i64 %i.du
  %.0.copyload.i444 = load i32, ptr %i.dv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i444) #8, !srcloc !14
  %.val398 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dw = getelementptr inbounds nuw i8, ptr %.val398, i64 %.pre-phi
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  store i32 %.0.copyload.i444, ptr %i.dx, align 1
  %.val397 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dy = getelementptr inbounds nuw i8, ptr %.val397, i64 %i.az
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  store i32 0, ptr %i.dz, align 1
  %i.ea = add nuw nsw i64 %i.az, 40               ; 2 uses
  %.val417 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.eb = getelementptr inbounds nuw i8, ptr %.val417, i64 %i.ea
  store i64 0, ptr %i.eb, align 1
  %i.ec = add i32 %.0, 52
  %i.ed = zext i32 %i.ec to i64
  %.val426 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ee = getelementptr inbounds nuw i8, ptr %.val426, i64 %i.ed
  %.0.copyload.i445 = load i64, ptr %i.ee, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i445) #8, !srcloc !33
  %.val416 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ef = getelementptr inbounds nuw i8, ptr %.val416, i64 %.pre-phi
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 52
  store i64 %.0.copyload.i445, ptr %i.eg, align 1
  %i.eh = add i32 %.0, 60
  %i.ei = zext i32 %i.eh to i64
  %.val382 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ej = getelementptr inbounds nuw i8, ptr %.val382, i64 %i.ei
  %.0.copyload.i446 = load i32, ptr %i.ej, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i446) #8, !srcloc !14
  %.val396 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ek = getelementptr inbounds nuw i8, ptr %.val396, i64 %.pre-phi
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 60
  store i32 %.0.copyload.i446, ptr %i.el, align 1
  %.val395 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.em = getelementptr inbounds nuw i8, ptr %.val395, i64 %i.az
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 60
  store i32 0, ptr %i.en, align 1
  %.val415 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.eo = getelementptr inbounds nuw i8, ptr %.val415, i64 %i.az
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 52
  store i64 0, ptr %i.ep, align 1
  %.val381 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.eq = getelementptr inbounds nuw i8, ptr %.val381, i64 %i.c
  %.0.copyload.i447 = load i32, ptr %i.eq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i447) #8, !srcloc !14
  %i.er = add i32 %.0.copyload.i447, 1
  %.val394 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.es = getelementptr inbounds nuw i8, ptr %.val394, i64 %i.c
  store i32 %i.er, ptr %i.es, align 1
  %.val380 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.et = getelementptr inbounds nuw i8, ptr %.val380, i64 %i.ea
  %.0.copyload.i448 = load i32, ptr %i.et, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i448) #8, !srcloc !14
  tail call void @w2c_hermes_dlfree(ptr noundef %0, i32 noundef %.0.copyload.i448) #8
  %.val379 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.eu = getelementptr inbounds nuw i8, ptr %.val379, i64 %i.dm
  %.0.copyload.i449 = load i32, ptr %i.eu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i449) #8, !srcloc !14
  tail call void @w2c_hermes_dlfree(ptr noundef %0, i32 noundef %.0.copyload.i449) #8
  %.val378 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ev = getelementptr inbounds nuw i8, ptr %.val378, i64 %i.cy
  %.0.copyload.i450 = load i32, ptr %i.ev, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i450) #8, !srcloc !14
  tail call void @w2c_hermes_dlfree(ptr noundef %0, i32 noundef %.0.copyload.i450) #8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ew = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ca
  %.0.copyload.i451 = load i32, ptr %i.ew, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i451) #8, !srcloc !14
  tail call void @w2c_hermes_dlfree(ptr noundef %0, i32 noundef %.0.copyload.i451) #8
  br label %bb.h

bb.h:                                             ; preds = %.preheader452, %.preheader452, %.loopexit
  %i.ex = add i32 %.0, 64                         ; 2 uses
  %.not377 = icmp eq i32 %i.ex, %3
  br i1 %.not377, label %.loopexit453, label %.preheader452

.loopexit453:                                     ; preds = %bb.h, %.loopexit454
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, -3) i32 @w2c_hermes_llvh0x3A0x3ABumpPtrAllocatorImpl0x3Cllvh0x3A0x3AMallocAllocator0x2C0x204096ul0x2C0x204096ul0x3E0x3A0x3AAllocate0x28unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 22 uses
  %i.b = zext i32 %1 to i64                       ; 11 uses
  %i.c = add nuw nsw i64 %i.b, 48                 ; 2 uses
  %.val230 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val230, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = add i32 %.0.copyload.i, %2
  %.val239 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %.val239, i64 %i.c
  store i32 %i.e, ptr %i.f, align 1
  %.val229 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %.val229, i64 %i.b
  %.0.copyload.i240 = load i32, ptr %i.g, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i240) #8, !srcloc !14
  %i.h = add i32 %.0.copyload.i240, 3
  %i.i = and i32 %i.h, -4                         ; 3 uses
  %i.j = sub i32 %2, %.0.copyload.i240
  %i.k = add i32 %i.j, %i.i
  %i.l = add nuw nsw i64 %i.b, 4                  ; 2 uses
  %.val228 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val228, i64 %i.l
  %.0.copyload.i241 = load i32, ptr %i.m, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i241) #8, !srcloc !14
  %i.n = sub i32 %.0.copyload.i241, %.0.copyload.i240
  %.not = icmp ugt i32 %i.k, %i.n
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = add i32 %i.i, %2
  %.val238 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %.val238, i64 %i.b
  store i32 %i.o, ptr %i.p, align 1
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.q = add i32 %2, 3                            ; 3 uses
  %i.r = icmp ugt i32 %i.q, 4096
  br i1 %i.r, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.s = tail call i32 @w2c_hermes_dlmalloc(ptr noundef nonnull %0, i32 noundef %i.q) #8 ; 3 uses
  %.not216 = icmp eq i32 %i.s, 0
  br i1 %.not216, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef 54812)
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.t = add nuw nsw i64 %i.b, 40                 ; 4 uses
  %.val227 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val227, i64 %i.t
  %.0.copyload.i242 = load i32, ptr %i.u, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i242) #8, !srcloc !14
  %.val226 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %.val226, i64 %i.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  %.0.copyload.i243 = load i32, ptr %i.w, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i243) #8, !srcloc !14
  %.not217 = icmp ult i32 %.0.copyload.i242, %.0.copyload.i243
  br i1 %.not217, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = add i32 %1, 36
  %i.y = add i32 %1, 48
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.x, i32 noundef %i.y, i32 noundef 0, i32 noundef 8)
  %.val225 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val225, i64 %i.t
  %.0.copyload.i244 = load i32, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i244) #8, !srcloc !14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0211 = phi i32 [ %.0.copyload.i244, %bb.g ], [ %.0.copyload.i242, %bb.f ]
  %.val224 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %.val224, i64 %i.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  %.0.copyload.i245 = load i32, ptr %i.ab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i245) #8, !srcloc !14
  %i.ac = shl i32 %.0211, 3
  %i.ad = add i32 %.0.copyload.i245, %i.ac
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %.val237 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %.val237, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 %i.q, ptr %i.ag, align 1
  %.val236 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.val236, i64 %i.ae
  store i32 %i.s, ptr %i.ah, align 1
  %.val223 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %.val223, i64 %i.t
  %.0.copyload.i246 = load i32, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i246) #8, !srcloc !14
  %i.aj = add i32 %.0.copyload.i246, 1
  %.val235 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val235, i64 %i.t
  store i32 %i.aj, ptr %i.ak, align 1
  %i.al = add i32 %i.s, 3
  %i.am = and i32 %i.al, -4
  br label %bb.n

bb.i:                                             ; preds = %bb.c
  %i.an = add nuw nsw i64 %i.b, 12                ; 4 uses
  %.val222 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.val222, i64 %i.an
  %.0.copyload.i247 = load i32, ptr %i.ao, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i247) #8, !srcloc !14
  %i.ap = tail call i32 @llvm.umin.i32(i32 %.0.copyload.i247, i32 3967)
  %i.aq = lshr i32 %i.ap, 7
  %i.ar = shl i32 4096, %i.aq                     ; 2 uses
  %i.as = tail call i32 @w2c_hermes_dlmalloc(ptr noundef nonnull %0, i32 noundef %i.ar) #8 ; 4 uses
  %.not214 = icmp eq i32 %i.as, 0
  br i1 %.not214, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef 54812)
  unreachable

bb.k:                                             ; preds = %bb.i
  %.val220 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val220, i64 %i.b
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.0.copyload.i249 = load i32, ptr %i.au, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i249) #8, !srcloc !14
  %.not215 = icmp ugt i32 %.0.copyload.i249, %.0.copyload.i247
  br i1 %.not215, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = add i32 %1, 8
  %i.aw = add i32 %1, 20
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.av, i32 noundef %i.aw, i32 noundef 0, i32 noundef 4)
  %.val219 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %.val219, i64 %i.an
  %.0.copyload.i250 = load i32, ptr %i.ax, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i250) #8, !srcloc !14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2 = phi i32 [ %.0.copyload.i250, %bb.l ], [ %.0.copyload.i247, %bb.k ]
  %.val218 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %.val218, i64 %i.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.0.copyload.i251 = load i32, ptr %i.az, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i251) #8, !srcloc !14
  %i.ba = shl i32 %.2, 2
  %i.bb = add i32 %.0.copyload.i251, %i.ba
  %i.bc = zext i32 %i.bb to i64
  %.val234 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %.val234, i64 %i.bc
  store i32 %i.as, ptr %i.bd, align 1
  %i.be = add i32 %i.ar, %i.as
  %.val233 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.val233, i64 %i.l
  store i32 %i.be, ptr %i.bf, align 1
  %i.bg = add i32 %i.as, 3
  %i.bh = and i32 %i.bg, -4                       ; 2 uses
  %i.bi = add i32 %i.bh, %2
  %.val232 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %.val232, i64 %i.b
  store i32 %i.bi, ptr %i.bj, align 1
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %i.an
  %.0.copyload.i252 = load i32, ptr %i.bk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i252) #8, !srcloc !14
  %i.bl = add i32 %.0.copyload.i252, 1
  %.val231 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %.val231, i64 %i.an
  store i32 %i.bl, ptr %i.bm, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ %i.am, %bb.h ], [ %i.bh, %bb.m ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden double @w2c_hermes_hermes_g_strtod(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 13 uses
  %i.c = add i32 %i.b, -2384                      ; 21 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 265 uses
  %i.e = zext i32 %i.c to i64                     ; 33 uses
  %i.f = add nuw nsw i64 %i.e, 16                 ; 11 uses
  %.val4804 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %.val4804, i64 %i.f
  store i64 0, ptr %i.g, align 1
  %i.h = add i32 %i.b, -2328                      ; 7 uses
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %.val4803 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %.val4803, i64 %i.i
  store i64 0, ptr %i.j, align 1
  %.val4802 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %.val4802, i64 %i.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 0, ptr %i.l, align 1
  %.val4801 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val4801, i64 %i.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i64 0, ptr %i.n, align 1
  %.val4800 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %.val4800, i64 %i.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 0, ptr %i.p, align 1
  %i.q = add nuw nsw i64 %i.e, 24                 ; 7 uses
  %.val4799 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %.val4799, i64 %i.q
  store i64 0, ptr %i.r, align 1
  %.val4784 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.val4784, i64 %i.f
  store i32 %i.h, ptr %i.s, align 1
  %i.t = add nuw nsw i64 %i.e, 8                  ; 6 uses
  %.val4798 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val4798, i64 %i.t
  store i64 0, ptr %i.u, align 1
  %.val4783 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %.val4783, i64 %i.t
  store i32 288, ptr %i.v, align 1
  %i.w = add nuw nsw i64 %i.e, 2360               ; 47 uses
  %.val4797 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %.val4797, i64 %i.w
  store i64 0, ptr %i.x, align 1
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.04151 = phi i32 [ %1, %bb.a ], [ %i.am, %bb.e ] ; 4 uses
  %i.y = zext i32 %.04151 to i64                  ; 2 uses
  %.val4825 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val4825, i64 %i.y
  %.0.copyload.i = load i8, ptr %i.z, align 1     ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i) #8, !srcloc !34
  %i.aa = sext i8 %.0.copyload.i to i32           ; 2 uses
  %i.ab = add nsw i32 %i.aa, -9
  %i.ac = icmp ult i32 %i.ab, 5
  br i1 %i.ac, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i8 %.0.copyload.i, label %.loopexit5086 [
    i8 32, label %bb.e
    i8 0, label %.loopexit5085
    i8 45, label %.loopexit5088
    i8 43, label %.loopexit5088.loopexit
  ]

.loopexit5088.loopexit:                           ; preds = %bb.c
  br label %.loopexit5088

.loopexit5088:                                    ; preds = %bb.c, %.loopexit5088.loopexit
  %.04207 = phi i32 [ 0, %.loopexit5088.loopexit ], [ 1, %bb.c ]
  %.val4609 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.val4609, i64 %i.y
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %.0.copyload.i4868 = load i8, ptr %i.ae, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4868) #8, !srcloc !13
  %.not = icmp eq i8 %.0.copyload.i4868, 0
  br i1 %.not, label %.loopexit5085, label %bb.d

bb.d:                                             ; preds = %.loopexit5088
  %i.af = zext i8 %.0.copyload.i4868 to i32
  %i.ag = add i32 %.04151, 1
  br label %.loopexit5086

.loopexit5086:                                    ; preds = %bb.c, %bb.d
  %.04264 = phi i32 [ %i.af, %bb.d ], [ %i.aa, %bb.c ] ; 7 uses
  %.14208 = phi i32 [ %.04207, %bb.d ], [ 0, %bb.c ] ; 10 uses
  %.1 = phi i32 [ %i.ag, %bb.d ], [ %.04151, %bb.c ] ; 2 uses
  %i.ah = and i32 %.04264, 255                    ; 3 uses
  %.not4461 = icmp eq i32 %i.ah, 48
  br i1 %.not4461, label %.preheader5083, label %bb.f

.preheader5083:                                   ; preds = %.loopexit5086, %.preheader5083
  %.2 = phi i32 [ %i.al, %.preheader5083 ], [ %.1, %.loopexit5086 ] ; 2 uses
  %i.ai = zext i32 %.2 to i64
  %.val4608 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %.val4608, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %.0.copyload.i4869 = load i8, ptr %i.ak, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i4869) #8, !srcloc !13
  %i.al = add i32 %.2, 1                          ; 3 uses
  switch i8 %.0.copyload.i4869, label %.loopexit5084 [
    i8 48, label %.preheader5083
    i8 0, label %.loopexit5085
  ]

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.am = add i32 %.04151, 1
  br label %bb.b

.loopexit5084:                                    ; preds = %.preheader5083
  %i.an = zext i8 %.0.copyload.i4869 to i32
  br label %bb.f

bb.f:                                             ; preds = %.loopexit5084, %.loopexit5086
  %.04246 = phi i32 [ %.1, %.loopexit5086 ], [ %i.al, %.loopexit5084 ] ; 12 uses
  %.04153 = phi i32 [ %.04264, %.loopexit5086 ], [ %i.an, %.loopexit5084 ] ; 3 uses
  %sext = shl i32 %.04153, 24
  %i.ao = ashr exact i32 %sext, 24                ; 2 uses
  %i.ap = add nsw i32 %.04153, 208
  %i.aq = and i32 %i.ap, 254
  %i.ar = icmp samesign ult i32 %i.aq, 10         ; 2 uses
  br i1 %i.ar, label %.preheader5080, label %bb.m

.preheader5080:                                   ; preds = %bb.f, %bb.j
  %.04345 = phi i32 [ %i.bf, %bb.j ], [ %i.ao, %bb.f ] ; 2 uses
  %.04322 = phi i32 [ %i.ba, %bb.j ], [ %.04246, %bb.f ] ; 3 uses
  %.04291 = phi i32 [ %.14292, %bb.j ], [ 0, %bb.f ] ; 3 uses
  %.04286 = phi i32 [ %i.bb, %bb.j ], [ 0, %bb.f ] ; 3 uses
end_hunk_8
begin_hunk_9_@w2c_hermes_llvh0x3A0x3Ahashing0x3A0x3Adetail0x3A0x3Ahash_short0x28char0x20const0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x20long0x29:bb.a
  %i.ch = mul i64 %i.cg, -7070675565921424023
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.ci = icmp ugt i32 %2, 32
  br i1 %i.ci, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.ck = zext i32 %1 to i64                      ; 4 uses
  %.val428 = load ptr, ptr %i.cj, align 8, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %.val428, i64 %i.ck
  %.0.copyload.i446 = load i64, ptr %i.cl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i446) #8, !srcloc !33
  %i.cm = add i32 %2, %1                          ; 4 uses
  %i.cn = add i32 %i.cm, -16
  %i.co = zext i32 %i.cn to i64
  %.val427 = load ptr, ptr %i.cj, align 8, !tbaa !7
  %i.cp = getelementptr inbounds nuw i8, ptr %.val427, i64 %i.co
  %.0.copyload.i447 = load i64, ptr %i.cp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i447) #8, !srcloc !33
  %i.cq = zext i32 %2 to i64
  %i.cr = add i64 %.0.copyload.i447, %i.cq
  %i.cs = mul i64 %i.cr, -4348849565147123417
  %i.ct = add i64 %i.cs, %.0.copyload.i446        ; 4 uses
  %.val426 = load ptr, ptr %i.cj, align 8, !tbaa !7
  %i.cu = getelementptr inbounds nuw i8, ptr %.val426, i64 %i.ck
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.0.copyload.i448 = load i64, ptr %i.cv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i448) #8, !srcloc !33
  %i.cw = add i64 %i.ct, %.0.copyload.i448        ; 3 uses
  %.val425 = load ptr, ptr %i.cj, align 8, !tbaa !7
  %i.cx = getelementptr inbounds nuw i8, ptr %.val425, i64 %i.ck
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %.0.copyload.i449 = load i64, ptr %i.cy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i449) #8, !srcloc !33
  %i.cz = add i64 %.0.copyload.i449, %i.cw        ; 3 uses
  %.val424 = load ptr, ptr %i.cj, align 8, !tbaa !7
  %i.da = getelementptr inbounds nuw i8, ptr %.val424, i64 %i.ck
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %.0.copyload.i450 = load i64, ptr %i.db, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i450) #8, !srcloc !33
  %i.dc = add i64 %.0.copyload.i450, %i.cz
  %i.dd = add i32 %i.cm, -32
  %i.de = zext i32 %i.dd to i64
  %.val423 = load ptr, ptr %i.cj, align 8, !tbaa !7
  %i.df = getelementptr inbounds nuw i8, ptr %.val423, i64 %i.de
  %.0.copyload.i451 = load i64, ptr %i.df, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i451) #8, !srcloc !33
  %i.dg = add i64 %.0.copyload.i451, %.0.copyload.i449 ; 4 uses
  %i.dh = tail call i64 @llvm.fshl.i64(i64 %i.dg, i64 %i.dg, i64 27)
  %i.di = add i64 %i.dc, %i.dh
  %i.dj = add i32 %i.cm, -8
  %i.dk = zext i32 %i.dj to i64
  %.val422 = load ptr, ptr %i.cj, align 8, !tbaa !7
  %i.dl = getelementptr inbounds nuw i8, ptr %.val422, i64 %i.dk
  %.0.copyload.i452 = load i64, ptr %i.dl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i452) #8, !srcloc !33
  %i.dm = add i64 %.0.copyload.i452, %i.dg        ; 2 uses
  %i.dn = tail call i64 @llvm.fshl.i64(i64 %i.dm, i64 %i.dm, i64 12)
  %i.do = add i64 %i.di, %i.dn
  %i.dp = add i32 %i.cm, -24
  %i.dq = zext i32 %i.dp to i64
  %.val421 = load ptr, ptr %i.cj, align 8, !tbaa !7
  %i.dr = getelementptr inbounds nuw i8, ptr %.val421, i64 %i.dq
  %.0.copyload.i453 = load i64, ptr %i.dr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i453) #8, !srcloc !33
  %i.ds = add i64 %.0.copyload.i453, %i.dg        ; 3 uses
  %i.dt = tail call i64 @llvm.fshl.i64(i64 %i.ds, i64 %i.ds, i64 57)
  %i.du = add i64 %i.do, %i.dt
  %i.dv = add i64 %i.ds, %.0.copyload.i447        ; 3 uses
  %i.dw = tail call i64 @llvm.fshl.i64(i64 %i.dv, i64 %i.dv, i64 33)
  %i.dx = add i64 %i.du, %i.dw
  %i.dy = mul i64 %i.dx, -7286425919675154353
  %i.dz = tail call i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 57)
  %i.ea = tail call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 27)
  %i.eb = add i64 %i.dz, %i.ea
  %i.ec = add i64 %.0.copyload.i450, %i.ct        ; 2 uses
  %i.ed = tail call i64 @llvm.fshl.i64(i64 %i.ec, i64 %i.ec, i64 12)
  %i.ee = tail call i64 @llvm.fshl.i64(i64 %i.cz, i64 %i.cz, i64 33)
  %i.ef = add i64 %i.eb, %i.ee
  %i.eg = add i64 %i.ef, %i.ed                    ; 2 uses
  %i.eh = add i64 %.0.copyload.i452, %i.eg
  %i.ei = add i64 %i.eh, %i.dv
  %i.ej = mul i64 %i.ei, -4348849565147123417
  %i.ek = add i64 %i.dy, %i.ej                    ; 2 uses
  %i.el = lshr i64 %i.ek, 47
  %i.em = xor i64 %i.el, %i.ek
  %i.en = mul i64 %i.em, -4348849565147123417
  %i.eo = xor i64 %i.en, %3
  %i.ep = add i64 %i.eo, %i.eg                    ; 2 uses
  %i.eq = lshr i64 %i.ep, 47
  %i.er = xor i64 %i.eq, %i.ep
  %i.es = mul i64 %i.er, -7286425919675154353
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.eu = zext i32 %1 to i64
  %.val438 = load ptr, ptr %i.et, align 8, !tbaa !7
  %i.ev = getelementptr inbounds nuw i8, ptr %.val438, i64 %i.eu
  %.0.copyload.i454 = load i8, ptr %i.ev, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i454) #8, !srcloc !40
  %i.ew = zext i8 %.0.copyload.i454 to i64
  %i.ex = lshr i32 %2, 1
  %i.ey = add i32 %i.ex, %1
  %i.ez = zext i32 %i.ey to i64
  %.val437 = load ptr, ptr %i.et, align 8, !tbaa !7
  %i.fa = getelementptr inbounds nuw i8, ptr %.val437, i64 %i.ez
  %.0.copyload.i455 = load i8, ptr %i.fa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i455) #8, !srcloc !40
  %i.fb = zext i8 %.0.copyload.i455 to i64
  %i.fc = shl nuw nsw i64 %i.fb, 8
  %i.fd = or disjoint i64 %i.fc, %i.ew
  %i.fe = mul i64 %i.fd, -7286425919675154353
  %i.ff = add i32 %2, %1
  %i.fg = add i32 %i.ff, -1
  %i.fh = zext i32 %i.fg to i64
  %.val = load ptr, ptr %i.et, align 8, !tbaa !7
  %i.fi = getelementptr inbounds nuw i8, ptr %.val, i64 %i.fh
  %.0.copyload.i456 = load i8, ptr %i.fi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i456) #8, !srcloc !13
  %i.fj = zext i8 %.0.copyload.i456 to i32
  %i.fk = shl nuw nsw i32 %i.fj, 2
  %i.fl = add nuw nsw i32 %i.fk, %2
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = mul i64 %i.fm, -3942382747735136937
  %i.fo = xor i64 %i.fe, %i.fn
  %i.fp = xor i64 %i.fo, %3                       ; 2 uses
  %i.fq = lshr i64 %i.fp, 47
  %i.fr = xor i64 %i.fq, %i.fp
  %i.fs = mul i64 %i.fr, -7286425919675154353
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ft = xor i64 %3, -7286425919675154353
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i64 [ %i.x, %bb.b ], [ %i.au, %bb.d ], [ %i.ch, %bb.f ], [ %i.es, %bb.h ], [ %i.fs, %bb.j ], [ %i.ft, %bb.k ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Cllvh0x3A0x3ADomTreeNodeBase0x3Chermes0x3A0x3ABasicBlock0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Cllvh0x3A0x3ADomTreeNodeBase0x3Chermes0x3A0x3ABasicBlock0x3E0x3E0x3E0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Cllvh0x3A0x3ADomTreeNodeBase0x3Chermes0x3A0x3ABasicBlock0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Cllvh0x3A0x3ADomTreeNodeBase0x3Chermes0x3A0x3ABasicBlock0x3E0x3E0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Cllvh0x3A0x3ADomTreeNodeBase0x3Chermes0x3A0x3ABasicBlock0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Cllvh0x3A0x3ADomTreeNodeBase0x3Chermes0x3A0x3ABasicBlock0x3E0x3E0x3E0x3E0x3E0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Cllvh0x3A0x3ADomTreeNodeBase0x3Chermes0x3A0x3ABasicBlock0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Cllvh0x3A0x3ADomTreeNodeBase0x3Chermes0x3A0x3ABasicBlock0x3E0x3E0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Cllvh0x3A0x3ADomTreeNodeBase0x3Chermes0x3A0x3ABasicBlock0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Cllvh0x3A0x3ADomTreeNodeBase0x3Chermes0x3A0x3ABasicBlock0x3E0x3E0x3E0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3ABasicBlock0x2A0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Cllvh0x3A0x3ADomTreeNodeBase0x3Chermes0x3A0x3ABasicBlock0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Cllvh0x3A0x3ADomTreeNodeBase0x3Chermes0x3A0x3ABasicBlock0x3E0x3E0x3E0x3E0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x20const0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 69 uses
  %i.b = zext i32 %1 to i64                       ; 9 uses
  %i.c = add nuw nsw i64 %i.b, 4                  ; 7 uses
  %.val662 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val662, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = shl i32 %.0.copyload.i, 2
  %i.f = add i32 %i.e, 4
  %i.g = add nuw nsw i64 %i.b, 12                 ; 6 uses
  %.val661 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val661, i64 %i.g
  %.0.copyload.i695 = load i32, ptr %i.h, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i695) #8, !srcloc !14
  %i.i = mul i32 %.0.copyload.i695, 3
  %.not = icmp ult i32 %i.f, %i.i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = shl i32 %.0.copyload.i695, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = xor i32 %.0.copyload.i, -1
  %i.l = add i32 %.0.copyload.i695, %i.k
  %.val660 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val660, i64 %i.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.copyload.i696 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i696) #8, !srcloc !14
  %i.o = sub i32 %i.l, %.0.copyload.i696
  %i.p = lshr i32 %.0.copyload.i695, 3
  %i.q = icmp ugt i32 %i.o, %i.p
  br i1 %i.q, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0603 = phi i32 [ %i.j, %bb.b ], [ %.0.copyload.i695, %bb.c ]
  %i.r = add i32 %.0603, -1
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = lshr i64 %i.s, 1
  %i.u = or i64 %i.t, %i.s                        ; 2 uses
  %i.v = lshr i64 %i.u, 2
  %i.w = or i64 %i.v, %i.u                        ; 2 uses
  %i.x = lshr i64 %i.w, 4
  %i.y = or i64 %i.x, %i.w                        ; 2 uses
  %i.z = lshr i64 %i.y, 8
  %i.aa = or i64 %i.z, %i.y                       ; 2 uses
  %i.ab = lshr i64 %i.aa, 16
  %i.ac = or i64 %i.ab, %i.aa
  %i.ad = trunc nuw i64 %i.ac to i32
  %i.ae = add i32 %i.ad, 1
  %4 = tail call i32 @llvm.umax.i32(i32 %i.ae, i32 64) ; 2 uses
  %.val692 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %.val692, i64 %i.g
  store i32 %4, ptr %i.af, align 1
  %.val659 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.val659, i64 %i.b
  %.0.copyload.i697 = load i32, ptr %i.ag, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i697) #8, !srcloc !14
  %i.ah = shl i32 %4, 3
  %i.ai = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ah) #8 ; 13 uses
  %.val691 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %.val691, i64 %i.b
  store i32 %i.ai, ptr %i.aj, align 1
  %.not620 = icmp eq i32 %.0.copyload.i697, 0
  br i1 %.not620, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.val694 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val694, i64 %i.c
  store i64 0, ptr %i.ak, align 1
  %.val658 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val658, i64 %i.g
  %.0.copyload.i698 = load i32, ptr %i.al, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i698) #8, !srcloc !14
  %i.am = add i32 %.0.copyload.i698, 536870911
  %i.an = and i32 %i.am, 536870911
  %i.ao = and i32 %.0.copyload.i698, 7            ; 7 uses
  %.not632 = icmp eq i32 %i.ao, 0
  br i1 %.not632, label %.loopexit721, label %.preheader720

.preheader720:                                    ; preds = %bb.e
  %i.ap = zext i32 %i.ai to i64
  %.val690 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %.val690, i64 %i.ap
  store i32 -4, ptr %i.aq, align 1
  %i.ar = add i32 %i.ai, 8                        ; 2 uses
  %.not633 = icmp eq i32 %i.ao, 1
  br i1 %.not633, label %.loopexit721, label %.preheader720.1

.preheader720.1:                                  ; preds = %.preheader720
  %i.as = zext i32 %i.ar to i64
  %.val690.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val690.1, i64 %i.as
  store i32 -4, ptr %i.at, align 1
  %i.au = add i32 %i.ai, 16                       ; 2 uses
  %.not633.1 = icmp eq i32 %i.ao, 2
  br i1 %.not633.1, label %.loopexit721, label %.preheader720.2

.preheader720.2:                                  ; preds = %.preheader720.1
  %i.av = zext i32 %i.au to i64
  %.val690.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %.val690.2, i64 %i.av
  store i32 -4, ptr %i.aw, align 1
  %i.ax = add i32 %i.ai, 24                       ; 2 uses
  %.not633.2 = icmp eq i32 %i.ao, 3
  br i1 %.not633.2, label %.loopexit721, label %.preheader720.3

.preheader720.3:                                  ; preds = %.preheader720.2
  %i.ay = zext i32 %i.ax to i64
  %.val690.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %.val690.3, i64 %i.ay
  store i32 -4, ptr %i.az, align 1
  %i.ba = add i32 %i.ai, 32                       ; 2 uses
  %.not633.3 = icmp eq i32 %i.ao, 4
  br i1 %.not633.3, label %.loopexit721, label %.preheader720.4

.preheader720.4:                                  ; preds = %.preheader720.3
  %i.bb = zext i32 %i.ba to i64
  %.val690.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %.val690.4, i64 %i.bb
  store i32 -4, ptr %i.bc, align 1
  %i.bd = add i32 %i.ai, 40                       ; 2 uses
  %.not633.4 = icmp eq i32 %i.ao, 5
  br i1 %.not633.4, label %.loopexit721, label %.preheader720.5

.preheader720.5:                                  ; preds = %.preheader720.4
  %i.be = zext i32 %i.bd to i64
  %.val690.5 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.val690.5, i64 %i.be
  store i32 -4, ptr %i.bf, align 1
  %i.bg = add i32 %i.ai, 48                       ; 2 uses
  %.not633.5 = icmp eq i32 %i.ao, 6
  br i1 %.not633.5, label %.loopexit721, label %.preheader720.6

.preheader720.6:                                  ; preds = %.preheader720.5
  %i.bh = zext i32 %i.bg to i64
  %.val690.6 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %.val690.6, i64 %i.bh
  store i32 -4, ptr %i.bi, align 1
  %i.bj = add i32 %i.ai, 56
  br label %.loopexit721

.loopexit721:                                     ; preds = %.preheader720, %.preheader720.1, %.preheader720.2, %.preheader720.3, %.preheader720.4, %.preheader720.5, %.preheader720.6, %bb.e
  %.1 = phi i32 [ %i.ai, %bb.e ], [ %i.ar, %.preheader720 ], [ %i.au, %.preheader720.1 ], [ %i.ax, %.preheader720.2 ], [ %i.ba, %.preheader720.3 ], [ %i.bd, %.preheader720.4 ], [ %i.bg, %.preheader720.5 ], [ %i.bj, %.preheader720.6 ]
  %i.bk = icmp samesign ult i32 %i.an, 7
  br i1 %i.bk, label %.loopexit719, label %bb.f

bb.f:                                             ; preds = %.loopexit721
  %i.bl = shl i32 %.0.copyload.i698, 3
  %i.bm = add i32 %i.bl, %i.ai
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.2 = phi i32 [ %.1, %bb.f ], [ %i.cd, %bb.g ]  ; 2 uses
  %i.bn = zext i32 %.2 to i64                     ; 8 uses
  %.val689 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %.val689, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  store i32 -4, ptr %i.bp, align 1
  %.val688 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %.val688, i64 %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  store i32 -4, ptr %i.br, align 1
  %.val687 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %.val687, i64 %i.bn
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  store i32 -4, ptr %i.bt, align 1
  %.val686 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val686, i64 %i.bn
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store i32 -4, ptr %i.bv, align 1
  %.val685 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %.val685, i64 %i.bn
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store i32 -4, ptr %i.bx, align 1
  %.val684 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %.val684, i64 %i.bn
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i32 -4, ptr %i.bz, align 1
  %.val683 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %.val683, i64 %i.bn
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i32 -4, ptr %i.cb, align 1
  %.val682 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %.val682, i64 %i.bn
  store i32 -4, ptr %i.cc, align 1
  %i.cd = add i32 %.2, 64                         ; 2 uses
  %.not634 = icmp eq i32 %i.cd, %i.bm
  br i1 %.not634, label %.loopexit719, label %bb.g

bb.h:                                             ; preds = %bb.d
  %i.ce = shl i32 %.0.copyload.i695, 3            ; 2 uses
  %i.cf = add i32 %.0.copyload.i697, %i.ce
  %.val693 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %.val693, i64 %i.c
  store i64 0, ptr %i.cg, align 1
  %.val657 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %.val657, i64 %i.g
  %.0.copyload.i699 = load i32, ptr %i.ch, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i699) #8, !srcloc !14
  %.not621 = icmp eq i32 %.0.copyload.i699, 0
  br i1 %.not621, label %.loopexit726, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val656 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %.val656, i64 %i.b
  %.0.copyload.i700 = load i32, ptr %i.ci, align 1 ; 11 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i700) #8, !srcloc !14
  %i.cj = and i32 %.0.copyload.i699, 7            ; 7 uses
  %.not622 = icmp eq i32 %i.cj, 0
  br i1 %.not622, label %.loopexit728, label %.preheader727

.preheader727:                                    ; preds = %bb.i
  %i.ck = zext i32 %.0.copyload.i700 to i64
  %.val681 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %.val681, i64 %i.ck
  store i32 -4, ptr %i.cl, align 1
  %i.cm = add i32 %.0.copyload.i700, 8            ; 2 uses
  %.not623 = icmp eq i32 %i.cj, 1
  br i1 %.not623, label %.loopexit728, label %.preheader727.1

.preheader727.1:                                  ; preds = %.preheader727
  %i.cn = zext i32 %i.cm to i64
  %.val681.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.co = getelementptr inbounds nuw i8, ptr %.val681.1, i64 %i.cn
  store i32 -4, ptr %i.co, align 1
  %i.cp = add i32 %.0.copyload.i700, 16           ; 2 uses
  %.not623.1 = icmp eq i32 %i.cj, 2
  br i1 %.not623.1, label %.loopexit728, label %.preheader727.2

.preheader727.2:                                  ; preds = %.preheader727.1
  %i.cq = zext i32 %i.cp to i64
  %.val681.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %.val681.2, i64 %i.cq
  store i32 -4, ptr %i.cr, align 1
  %i.cs = add i32 %.0.copyload.i700, 24           ; 2 uses
  %.not623.2 = icmp eq i32 %i.cj, 3
  br i1 %.not623.2, label %.loopexit728, label %.preheader727.3

.preheader727.3:                                  ; preds = %.preheader727.2
  %i.ct = zext i32 %i.cs to i64
  %.val681.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cu = getelementptr inbounds nuw i8, ptr %.val681.3, i64 %i.ct
  store i32 -4, ptr %i.cu, align 1
  %i.cv = add i32 %.0.copyload.i700, 32           ; 2 uses
  %.not623.3 = icmp eq i32 %i.cj, 4
  br i1 %.not623.3, label %.loopexit728, label %.preheader727.4

.preheader727.4:                                  ; preds = %.preheader727.3
  %i.cw = zext i32 %i.cv to i64
  %.val681.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cx = getelementptr inbounds nuw i8, ptr %.val681.4, i64 %i.cw
  store i32 -4, ptr %i.cx, align 1
  %i.cy = add i32 %.0.copyload.i700, 40           ; 2 uses
  %.not623.4 = icmp eq i32 %i.cj, 5
  br i1 %.not623.4, label %.loopexit728, label %.preheader727.5

.preheader727.5:                                  ; preds = %.preheader727.4
  %i.cz = zext i32 %i.cy to i64
end_hunk_9
begin_hunk_10_@w2c_hermes_llvh0x3A0x3ASmallSet0x3Cdouble0x2C0x204u0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aless0x3Cdouble0x3E0x3E0x3A0x3Ainsert0x28double0x20const0x260x29:bb.a
  %.0.copyload.i561 = load i32, ptr %i.cl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i561) #8, !srcloc !14
  %.not461 = icmp eq i32 %.0.copyload.i561, 0
  br i1 %.not461, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.loopexit579
  %.val511 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cm = getelementptr inbounds nuw i8, ptr %.val511, i64 %i.bj
  store i32 %.0.copyload.i561, ptr %i.cm, align 1
  %.val482 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cn = getelementptr inbounds nuw i8, ptr %.val482, i64 %i.ch
  %.0.copyload.i562 = load i32, ptr %i.cn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i562) #8, !srcloc !14
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.loopexit579
  %.4 = phi i32 [ %.0.copyload.i562, %bb.w ], [ %i.ca, %.loopexit579 ]
  %.val481 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.co = getelementptr inbounds nuw i8, ptr %.val481, i64 %i.bi
  %.0.copyload.i563 = load i32, ptr %i.co, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i563) #8, !srcloc !14
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree_balance_after_insert0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Ftree_node_base0x3Cvoid0x2A0x3E0x2A0x3E0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree_node_base0x3Cvoid0x2A0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree_node_base0x3Cvoid0x2A0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i563, i32 noundef %.4) #8
  %.val480 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cp = getelementptr inbounds nuw i8, ptr %.val480, i64 %i.c
  %.0.copyload.i564 = load i32, ptr %i.cp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i564) #8, !srcloc !14
  %i.cq = add i32 %.0.copyload.i564, 1
  %.val510 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %.val510, i64 %i.c
  store i32 %i.cq, ptr %i.cr, align 1
  %.val479 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cs = getelementptr inbounds nuw i8, ptr %.val479, i64 %i.ak
  %.0.copyload.i565 = load i32, ptr %i.cs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i565) #8, !srcloc !14
  br label %.loopexit578

.loopexit578:                                     ; preds = %bb.t, %bb.x
  %.2 = phi i32 [ %.0.copyload.i565, %bb.x ], [ %.1, %bb.t ]
  %i.ct = add i32 %.2, -1                         ; 3 uses
  %.val509 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cu = getelementptr inbounds nuw i8, ptr %.val509, i64 %i.ak
  store i32 %i.ct, ptr %i.cu, align 1
  %.not462 = icmp eq i32 %i.ct, 0
  br i1 %.not462, label %bb.y, label %bb.r

bb.y:                                             ; preds = %.loopexit578
  %.val525 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cv = getelementptr inbounds nuw i8, ptr %.val525, i64 %i.ao
  %.0.copyload.i566 = load double, ptr %i.cv, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i566) #8, !srcloc !35
  %.val478 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cw = getelementptr inbounds nuw i8, ptr %.val478, i64 %i.bi
  %.0.copyload.i567 = load i32, ptr %i.cw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i567) #8, !srcloc !14
  %.not463 = icmp eq i32 %.0.copyload.i567, 0
  br i1 %.not463, label %.loopexit576, label %.preheader

.preheader:                                       ; preds = %bb.y, %.preheader.backedge
  %.5 = phi i32 [ %.5.be, %.preheader.backedge ], [ %.0.copyload.i567, %bb.y ] ; 5 uses
  %i.cx = zext i32 %.5 to i64                     ; 3 uses
  %.val524 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cy = getelementptr inbounds nuw i8, ptr %.val524, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %.0.copyload.i568 = load double, ptr %i.cz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i568) #8, !srcloc !35
  %i.da = fcmp ogt double %.0.copyload.i568, %.0.copyload.i566
  br i1 %i.da, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.preheader
  %.val477 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.db = getelementptr inbounds nuw i8, ptr %.val477, i64 %i.cx
  %.0.copyload.i569 = load i32, ptr %i.db, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i569) #8, !srcloc !14
  %.not465 = icmp eq i32 %.0.copyload.i569, 0
  br i1 %.not465, label %.loopexit576, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.z, %bb.ab
  %.5.be = phi i32 [ %.0.copyload.i569, %bb.z ], [ %.0.copyload.i570, %bb.ab ]
  br label %.preheader

bb.aa:                                            ; preds = %.preheader
  %i.dc = fcmp ule double %.0.copyload.i566, %.0.copyload.i568
  br i1 %i.dc, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val476 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dd = getelementptr inbounds nuw i8, ptr %.val476, i64 %i.cx
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %.0.copyload.i570 = load i32, ptr %i.de, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i570) #8, !srcloc !14
  %.not464 = icmp eq i32 %.0.copyload.i570, 0
  br i1 %.not464, label %bb.ac, label %.preheader.backedge

bb.ac:                                            ; preds = %bb.ab
  %i.df = add i32 %.5, 4
  br label %.loopexit576

.loopexit576:                                     ; preds = %bb.z, %bb.y, %bb.ac
  %.3 = phi i32 [ %i.bh, %bb.y ], [ %.5, %bb.ac ], [ %.5, %bb.z ]
  %.2427 = phi i32 [ %i.bh, %bb.y ], [ %i.df, %bb.ac ], [ %.5, %bb.z ]
  %i.dg = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef 24) #8 ; 3 uses
  %i.dh = zext i32 %i.dg to i64                   ; 3 uses
  %.val508 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.di = getelementptr inbounds nuw i8, ptr %.val508, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i32 %.3, ptr %i.dj, align 1
  %.val519 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dk = getelementptr inbounds nuw i8, ptr %.val519, i64 %i.dh
  store i64 0, ptr %i.dk, align 1
  %.val532 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dl = getelementptr inbounds nuw i8, ptr %.val532, i64 %i.dh
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store double %.0.copyload.i566, ptr %i.dm, align 1
  %i.dn = zext i32 %.2427 to i64                  ; 2 uses
  %.val507 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.do = getelementptr inbounds nuw i8, ptr %.val507, i64 %i.dn
  store i32 %i.dg, ptr %i.do, align 1
  %.val475 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dp = getelementptr inbounds nuw i8, ptr %.val475, i64 %i.bj
  %.0.copyload.i571 = load i32, ptr %i.dp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i571) #8, !srcloc !14
  %i.dq = zext i32 %.0.copyload.i571 to i64
  %.val474 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dr = getelementptr inbounds nuw i8, ptr %.val474, i64 %i.dq
  %.0.copyload.i572 = load i32, ptr %i.dr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i572) #8, !srcloc !14
  %.not466 = icmp eq i32 %.0.copyload.i572, 0
  br i1 %.not466, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.loopexit576
  %.val506 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ds = getelementptr inbounds nuw i8, ptr %.val506, i64 %i.bj
  store i32 %.0.copyload.i572, ptr %i.ds, align 1
  %.val473 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dt = getelementptr inbounds nuw i8, ptr %.val473, i64 %i.dn
  %.0.copyload.i573 = load i32, ptr %i.dt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i573) #8, !srcloc !14
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.loopexit576
  %.6 = phi i32 [ %.0.copyload.i573, %bb.ad ], [ %i.dg, %.loopexit576 ]
  %.val472 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.du = getelementptr inbounds nuw i8, ptr %.val472, i64 %i.bi
  %.0.copyload.i574 = load i32, ptr %i.du, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i574) #8, !srcloc !14
  tail call void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree_balance_after_insert0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Ftree_node_base0x3Cvoid0x2A0x3E0x2A0x3E0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree_node_base0x3Cvoid0x2A0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree_node_base0x3Cvoid0x2A0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i574, i32 noundef %.6) #8
  %.val471 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dv = getelementptr inbounds nuw i8, ptr %.val471, i64 %i.c
  %.0.copyload.i575 = load i32, ptr %i.dv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i575) #8, !srcloc !14
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.h, %bb.p, %bb.ae
  %.0.copyload.i575.sink = phi i32 [ %.0.copyload.i575, %bb.ae ], [ %.0.copyload.i553, %bb.p ], [ %.0.copyload.i544, %bb.h ]
  %.sink612 = phi i64 [ %i.c, %bb.ae ], [ %i.ak, %bb.p ], [ %i.c, %bb.h ]
  %i.dw = add i32 %.0.copyload.i575.sink, 1
  %.val505 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dx = getelementptr inbounds nuw i8, ptr %.val505, i64 %.sink612
  store i32 %i.dw, ptr %i.dx, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.aa, %.loopexit.sink.split, %bb.m
  %.0 = phi i8 [ 0, %bb.m ], [ 1, %.loopexit.sink.split ], [ 1, %bb.aa ], [ 0, %bb.d ]
  %i.dy = zext i32 %1 to i64                      ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dz = getelementptr inbounds nuw i8, ptr %.val, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  store i8 %.0, ptr %i.ea, align 1
  %.val504 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.eb = getelementptr inbounds nuw i8, ptr %.val504, i64 %i.dy
  store i32 1, ptr %i.eb, align 1
  ret void
}

declare void @w2c_hermes_void0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree_balance_after_insert0x3Cstd0x3A0x3A_0x5F20x3A0x3A_0x5Ftree_node_base0x3Cvoid0x2A0x3E0x2A0x3E0x28std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree_node_base0x3Cvoid0x2A0x3E0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3A_0x5Ftree_node_base0x3Cvoid0x2A0x3E0x2A0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3ASmallDenseMap0x3Chermes0x3A0x3ABasicBlock0x20const0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x2016u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x20const0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x20const0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = add i32 %i.b, -128                       ; 5 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = icmp ugt i32 %2, 15
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = add i32 %2, -1
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 4
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 8
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 16
  %i.p = or i64 %i.o, %i.n
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = add i32 %i.q, 1
  %3 = tail call i32 @llvm.umax.i32(i32 %i.r, i32 64)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %3, %bb.b ], [ %2, %bb.a ]      ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 73 uses
  %i.t = zext i32 %1 to i64                       ; 38 uses
  %.val561 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val561, i64 %i.t
  %.0.copyload.i = load i32, ptr %i.u, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.v = and i32 %.0.copyload.i, 1
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.al, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = icmp ult i32 %.0, 16
  br i1 %i.w, label %bb.ap, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = add nuw nsw i64 %i.t, 8                  ; 2 uses
  %.val560 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %.val560, i64 %i.x
  %.0.copyload.i600 = load i32, ptr %i.y, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i600) #8, !srcloc !14
  switch i32 %.0.copyload.i600, label %bb.f [
    i32 -8, label %bb.g
    i32 -4, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.z = zext i32 %i.c to i64                     ; 2 uses
  %.val599 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %.val599, i64 %i.z
  store i32 %.0.copyload.i600, ptr %i.aa, align 1
  %.val559 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %.val559, i64 %i.t
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %.0.copyload.i601 = load i32, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i601) #8, !srcloc !14
  %.val598 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.val598, i64 %i.z
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 %.0.copyload.i601, ptr %i.ae, align 1
  %i.af = add i32 %i.b, -120
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.f
  %.0524 = phi i32 [ %i.af, %bb.f ], [ %i.c, %bb.e ], [ %i.c, %bb.e ] ; 4 uses
  %.val558 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.val558, i64 %i.t
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.0.copyload.i602 = load i32, ptr %i.ah, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i602) #8, !srcloc !14
  switch i32 %.0.copyload.i602, label %bb.h [
    i32 -8, label %bb.i
    i32 -4, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ai = zext i32 %.0524 to i64                  ; 2 uses
  %.val597 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %.val597, i64 %i.ai
  store i32 %.0.copyload.i602, ptr %i.aj, align 1
  %.val557 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val557, i64 %i.t
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %.0.copyload.i603 = load i32, ptr %i.al, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i603) #8, !srcloc !14
  %.val596 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %.val596, i64 %i.ai
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 %.0.copyload.i603, ptr %i.an, align 1
  %i.ao = add i32 %.0524, 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.g, %bb.h
  %.1 = phi i32 [ %i.ao, %bb.h ], [ %.0524, %bb.g ], [ %.0524, %bb.g ] ; 4 uses
  %.val556 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.val556, i64 %i.t
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.0.copyload.i604 = load i32, ptr %i.aq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i604) #8, !srcloc !14
  switch i32 %.0.copyload.i604, label %bb.j [
    i32 -8, label %bb.k
    i32 -4, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.ar = zext i32 %.1 to i64                     ; 2 uses
  %.val595 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %.val595, i64 %i.ar
  store i32 %.0.copyload.i604, ptr %i.as, align 1
  %.val555 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val555, i64 %i.t
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 28
  %.0.copyload.i605 = load i32, ptr %i.au, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i605) #8, !srcloc !14
  %.val594 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val594, i64 %i.ar
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 %.0.copyload.i605, ptr %i.aw, align 1
  %i.ax = add i32 %.1, 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.i, %bb.j
  %.2 = phi i32 [ %i.ax, %bb.j ], [ %.1, %bb.i ], [ %.1, %bb.i ] ; 4 uses
  %.val554 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %.val554, i64 %i.t
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %.0.copyload.i606 = load i32, ptr %i.az, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i606) #8, !srcloc !14
  switch i32 %.0.copyload.i606, label %bb.l [
    i32 -8, label %bb.m
    i32 -4, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.ba = zext i32 %.2 to i64                     ; 2 uses
  %.val593 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %.val593, i64 %i.ba
  store i32 %.0.copyload.i606, ptr %i.bb, align 1
  %.val553 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %.val553, i64 %i.t
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 36
  %.0.copyload.i607 = load i32, ptr %i.bd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i607) #8, !srcloc !14
  %.val592 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %.val592, i64 %i.ba
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 %.0.copyload.i607, ptr %i.bf, align 1
  %i.bg = add i32 %.2, 8
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.k, %bb.l
  %.3 = phi i32 [ %i.bg, %bb.l ], [ %.2, %bb.k ], [ %.2, %bb.k ] ; 4 uses
  %.val552 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %.val552, i64 %i.t
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %.0.copyload.i608 = load i32, ptr %i.bi, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i608) #8, !srcloc !14
  switch i32 %.0.copyload.i608, label %bb.n [
    i32 -8, label %bb.o
    i32 -4, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.bj = zext i32 %.3 to i64                     ; 2 uses
  %.val591 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %.val591, i64 %i.bj
  store i32 %.0.copyload.i608, ptr %i.bk, align 1
  %.val551 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %.val551, i64 %i.t
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 44
  %.0.copyload.i609 = load i32, ptr %i.bm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i609) #8, !srcloc !14
  %.val590 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.bn = getelementptr inbounds nuw i8, ptr %.val590, i64 %i.bj
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 %.0.copyload.i609, ptr %i.bo, align 1
  %i.bp = add i32 %.3, 8
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.m, %bb.n
  %.4 = phi i32 [ %i.bp, %bb.n ], [ %.3, %bb.m ], [ %.3, %bb.m ] ; 4 uses
  %.val550 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %.val550, i64 %i.t
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %.0.copyload.i610 = load i32, ptr %i.br, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i610) #8, !srcloc !14
  switch i32 %.0.copyload.i610, label %bb.p [
    i32 -8, label %bb.q
    i32 -4, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.bs = zext i32 %.4 to i64                     ; 2 uses
  %.val589 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.bt = getelementptr inbounds nuw i8, ptr %.val589, i64 %i.bs
  store i32 %.0.copyload.i610, ptr %i.bt, align 1
  %.val549 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val549, i64 %i.t
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 52
  %.0.copyload.i611 = load i32, ptr %i.bv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i611) #8, !srcloc !14
  %.val588 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %.val588, i64 %i.bs
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i32 %.0.copyload.i611, ptr %i.bx, align 1
  %i.by = add i32 %.4, 8
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.o, %bb.p
  %.5 = phi i32 [ %i.by, %bb.p ], [ %.4, %bb.o ], [ %.4, %bb.o ] ; 4 uses
  %.val548 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.bz = getelementptr inbounds nuw i8, ptr %.val548, i64 %i.t
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  %.0.copyload.i612 = load i32, ptr %i.ca, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i612) #8, !srcloc !14
  switch i32 %.0.copyload.i612, label %bb.r [
    i32 -8, label %bb.s
    i32 -4, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
end_hunk_10
begin_hunk_11_@w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ASmallDenseMap0x3Chermes0x3A0x3ABasicBlock0x20const0x2A0x2C0x20int0x2C0x2016u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x20const0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x20const0x2A0x2C0x20int0x3E0x3E0x2C0x20hermes0x3A0x3ABasicBlock0x20const0x2A0x2C0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x20const0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x20const0x2A0x2C0x20int0x3E0x3E0x3A0x3AmoveFromOldBuckets0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x20const0x2A0x2C0x20int0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x20const0x2A0x2C0x20int0x3E0x2A0x29:bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %.val282, i64 %i.i
  %.0.copyload.i307 = load i32, ptr %i.bn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i307) #8, !srcloc !14
  %i.bo = add i32 %.0.copyload.i307, -1
  %i.bp = select i1 %.not273, i32 %i.bo, i32 15   ; 2 uses
  %i.bq = lshr i32 %.0.copyload.i304, 4
  %i.br = lshr i32 %.0.copyload.i304, 9
  %i.bs = xor i32 %i.bq, %i.br
  %i.bt = and i32 %i.bp, %i.bs                    ; 2 uses
  %i.bu = shl nuw nsw i32 %i.bt, 3
  %i.bv = add i32 %i.bu, %i.bm                    ; 2 uses
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %.val281 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %.val281, i64 %i.bw
  %.0.copyload.i308 = load i32, ptr %i.bx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i308) #8, !srcloc !14
  %i.by = icmp eq i32 %.0.copyload.i304, %.0.copyload.i308
  br i1 %i.by, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.e, %bb.g
  %.0262 = phi i32 [ %i.cg, %bb.g ], [ %i.bt, %bb.e ]
  %.1260 = phi i32 [ %i.ci, %bb.g ], [ %i.bv, %bb.e ] ; 2 uses
  %.0258 = phi i32 [ %.0.copyload.i309, %bb.g ], [ %.0.copyload.i308, %bb.e ] ; 2 uses
  %.0257 = phi i32 [ %i.cd, %bb.g ], [ 0, %bb.e ] ; 3 uses
  %.0256 = phi i32 [ %i.cf, %bb.g ], [ 1, %bb.e ] ; 2 uses
  %i.bz = icmp eq i32 %.0258, -4
  %.not276 = icmp eq i32 %.0257, 0                ; 2 uses
  br i1 %i.bz, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader
  %i.ca = select i1 %.not276, i32 %.1260, i32 %.0257
  %.pre = zext i32 %i.ca to i64
  br label %.loopexit

bb.g:                                             ; preds = %.preheader
  %i.cb = icmp eq i32 %.0258, -8
  %i.cc = select i1 %i.cb, i1 %.not276, i1 false
  %i.cd = select i1 %i.cc, i32 %.1260, i32 %.0257
  %i.ce = add i32 %.0256, %.0262
  %i.cf = add i32 %.0256, 1
  %i.cg = and i32 %i.ce, %i.bp                    ; 2 uses
  %i.ch = shl i32 %i.cg, 3
  %i.ci = add i32 %i.ch, %i.bm                    ; 2 uses
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %.val280 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %.val280, i64 %i.cj
  %.0.copyload.i309 = load i32, ptr %i.ck, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i309) #8, !srcloc !14
  %.not275 = icmp eq i32 %.0.copyload.i304, %.0.copyload.i309
  br i1 %.not275, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.g, %bb.e, %bb.f
  %.pre-phi = phi i64 [ %.pre, %bb.f ], [ %i.bw, %bb.e ], [ %i.cj, %bb.g ] ; 2 uses
  %.val290 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %.val290, i64 %.pre-phi
  store i32 %.0.copyload.i304, ptr %i.cl, align 1
  %.val279 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cm = getelementptr inbounds nuw i8, ptr %.val279, i64 %i.bg
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %.0.copyload.i310 = load i32, ptr %i.cn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i310) #8, !srcloc !14
  %.val289 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.co = getelementptr inbounds nuw i8, ptr %.val289, i64 %.pre-phi
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store i32 %.0.copyload.i310, ptr %i.cp, align 1
  %.val278 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cq = getelementptr inbounds nuw i8, ptr %.val278, i64 %i.b
  %.0.copyload.i311 = load i32, ptr %i.cq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i311) #8, !srcloc !14
  %i.cr = add i32 %.0.copyload.i311, 2
  %.val288 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cs = getelementptr inbounds nuw i8, ptr %.val288, i64 %i.b
  store i32 %i.cr, ptr %i.cs, align 1
  br label %bb.h

bb.h:                                             ; preds = %.preheader312, %.preheader312, %.loopexit
  %i.ct = add i32 %.0, 8                          ; 2 uses
  %.not277 = icmp eq i32 %i.ct, %3
  br i1 %.not277, label %.loopexit313, label %.preheader312

.loopexit313:                                     ; preds = %bb.h, %.loopexit314
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3AFoldingSetNodeID0x3A0x3AAddInteger0x28unsigned0x20long0x20long0x29(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 13 uses
  %i.b = zext i32 %1 to i64                       ; 4 uses
  %i.c = add nuw nsw i64 %i.b, 4                  ; 7 uses
  %.val97 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val97, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = add nuw nsw i64 %i.b, 8                  ; 2 uses
  %.val96 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %.val96, i64 %i.e
  %.0.copyload.i102 = load i32, ptr %i.f, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i102) #8, !srcloc !14
  %.not = icmp ult i32 %.0.copyload.i, %.0.copyload.i102
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %1, 12
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.g, i32 noundef 0, i32 noundef 4)
  %.val95 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val95, i64 %i.c
  %.0.copyload.i103 = load i32, ptr %i.h, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i103) #8, !srcloc !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %.0.copyload.i103, %bb.b ], [ %.0.copyload.i, %bb.a ]
  %.val94 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %.val94, i64 %i.b
  %.0.copyload.i104 = load i32, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i104) #8, !srcloc !14
  %i.j = shl i32 %.0, 2
  %i.k = add i32 %.0.copyload.i104, %i.j
  %i.l = zext i32 %i.k to i64
  %.val101 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.m = trunc i64 %2 to i32
  %i.n = getelementptr inbounds nuw i8, ptr %.val101, i64 %i.l
  store i32 %i.m, ptr %i.n, align 1
  %.val93 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %.val93, i64 %i.c
  %.0.copyload.i105 = load i32, ptr %i.o, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i105) #8, !srcloc !14
  %i.p = add i32 %.0.copyload.i105, 1             ; 3 uses
  %.val99 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %.val99, i64 %i.c
  store i32 %i.p, ptr %i.q, align 1
  %.val92 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %.val92, i64 %i.e
  %.0.copyload.i106 = load i32, ptr %i.r, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i106) #8, !srcloc !14
  %.not89 = icmp ugt i32 %.0.copyload.i106, %i.p
  br i1 %.not89, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = add i32 %1, 12
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.s, i32 noundef 0, i32 noundef 4)
  %.val91 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val91, i64 %i.c
  %.0.copyload.i107 = load i32, ptr %i.t, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i107) #8, !srcloc !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %.0.copyload.i107, %bb.d ], [ %i.p, %bb.c ]
  %.val90 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val90, i64 %i.b
  %.0.copyload.i108 = load i32, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i108) #8, !srcloc !14
  %i.v = shl i32 %.1, 2
  %i.w = add i32 %.0.copyload.i108, %i.v
  %i.x = lshr i64 %2, 32
  %i.y = zext i32 %i.w to i64
  %.val100 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.z = trunc nuw i64 %i.x to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %.val100, i64 %i.y
  store i32 %i.z, ptr %i.aa, align 1
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 %i.c
  %.0.copyload.i109 = load i32, ptr %i.ab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i109) #8, !srcloc !14
  %i.ac = add i32 %.0.copyload.i109, 1
  %.val98 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.val98, i64 %i.c
  store i32 %i.ac, ptr %i.ad, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x2C0x20llvh0x3A0x3AScopedHashTableVal0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x2C0x20hermes0x3A0x3AValue0x2A0x3E0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x2C0x20llvh0x3A0x3AScopedHashTableVal0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x2C0x20hermes0x3A0x3AValue0x2A0x3E0x2A0x3E0x3E0x2C0x200x28anonymous0x20namespace0x290x3A0x3ACSEValue0x2C0x20llvh0x3A0x3AScopedHashTableVal0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x2C0x20hermes0x3A0x3AValue0x2A0x3E0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x2C0x20llvh0x3A0x3AScopedHashTableVal0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x2C0x20hermes0x3A0x3AValue0x2A0x3E0x2A0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 48 uses
  %i.e = zext i32 %1 to i64                       ; 6 uses
  %i.f = add nuw nsw i64 %i.e, 12                 ; 5 uses
  %.val352 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %.val352, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.h = add i32 %2, -1
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = lshr i64 %i.i, 1
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 2
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 4
  %i.o = or i64 %i.n, %i.m                        ; 2 uses
  %i.p = lshr i64 %i.o, 8
  %i.q = or i64 %i.p, %i.o                        ; 2 uses
  %i.r = lshr i64 %i.q, 16
  %i.s = or i64 %i.r, %i.q
  %i.t = trunc nuw i64 %i.s to i32
  %i.u = add i32 %i.t, 1
  %3 = tail call i32 @llvm.umax.i32(i32 %i.u, i32 64) ; 2 uses
  %.val375 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %.val375, i64 %i.f
  store i32 %3, ptr %i.v, align 1
  %.val351 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %.val351, i64 %i.e
  %.0.copyload.i378 = load i32, ptr %i.w, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i378) #8, !srcloc !14
  %i.x = shl i32 %3, 3
  %i.y = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef %0, i32 noundef %i.x) #8 ; 21 uses
  %.val374 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val374, i64 %i.e
  store i32 %i.y, ptr %i.z, align 1
  %.not = icmp eq i32 %.0.copyload.i378, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.val377 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %.val377, i64 %i.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i64 0, ptr %i.ab, align 1
  %.val350 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.val350, i64 %i.f
  %.0.copyload.i379 = load i32, ptr %i.ac, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i379) #8, !srcloc !14
  %.not339 = icmp eq i32 %.0.copyload.i379, 0
  br i1 %.not339, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = and i32 %.0.copyload.i379, 7            ; 7 uses
  %.not340 = icmp eq i32 %i.ad, 0
  br i1 %.not340, label %.loopexit388, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.ae = zext i32 %i.y to i64
  %.val373 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %.val373, i64 %i.ae
  store i32 -4, ptr %i.af, align 1
  %i.ag = add i32 %i.y, 8                         ; 2 uses
  %.not341 = icmp eq i32 %i.ad, 1
  br i1 %.not341, label %.loopexit388, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %i.ah = zext i32 %i.ag to i64
  %.val373.1 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %.val373.1, i64 %i.ah
  store i32 -4, ptr %i.ai, align 1
  %i.aj = add i32 %i.y, 16                        ; 2 uses
  %.not341.1 = icmp eq i32 %i.ad, 2
  br i1 %.not341.1, label %.loopexit388, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.ak = zext i32 %i.aj to i64
  %.val373.2 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val373.2, i64 %i.ak
  store i32 -4, ptr %i.al, align 1
  %i.am = add i32 %i.y, 24                        ; 2 uses
  %.not341.2 = icmp eq i32 %i.ad, 3
  br i1 %.not341.2, label %.loopexit388, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.an = zext i32 %i.am to i64
  %.val373.3 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.val373.3, i64 %i.an
  store i32 -4, ptr %i.ao, align 1
  %i.ap = add i32 %i.y, 32                        ; 2 uses
  %.not341.3 = icmp eq i32 %i.ad, 4
  br i1 %.not341.3, label %.loopexit388, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.aq = zext i32 %i.ap to i64
  %.val373.4 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %.val373.4, i64 %i.aq
  store i32 -4, ptr %i.ar, align 1
  %i.as = add i32 %i.y, 40                        ; 2 uses
  %.not341.4 = icmp eq i32 %i.ad, 5
  br i1 %.not341.4, label %.loopexit388, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.at = zext i32 %i.as to i64
  %.val373.5 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %.val373.5, i64 %i.at
  store i32 -4, ptr %i.au, align 1
  %i.av = add i32 %i.y, 48                        ; 2 uses
  %.not341.5 = icmp eq i32 %i.ad, 6
  br i1 %.not341.5, label %.loopexit388, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.aw = zext i32 %i.av to i64
  %.val373.6 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %.val373.6, i64 %i.aw
  store i32 -4, ptr %i.ax, align 1
  %i.ay = add i32 %i.y, 56
  br label %.loopexit388

.loopexit388:                                     ; preds = %.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %bb.c
  %.1328 = phi i32 [ %i.y, %bb.c ], [ %i.ag, %.preheader ], [ %i.aj, %.preheader.1 ], [ %i.am, %.preheader.2 ], [ %i.ap, %.preheader.3 ], [ %i.as, %.preheader.4 ], [ %i.av, %.preheader.5 ], [ %i.ay, %.preheader.6 ]
  %i.az = add i32 %.0.copyload.i379, 536870911
  %i.ba = and i32 %i.az, 536870911
  %i.bb = icmp samesign ult i32 %i.ba, 7
  br i1 %i.bb, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.loopexit388
  %i.bc = shl i32 %.0.copyload.i379, 3
  %i.bd = add i32 %i.bc, %i.y
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.2 = phi i32 [ %.1328, %bb.d ], [ %i.bu, %bb.e ] ; 2 uses
  %i.be = zext i32 %.2 to i64                     ; 8 uses
  %.val372 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.val372, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  store i32 -4, ptr %i.bg, align 1
  %.val371 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %.val371, i64 %i.be
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store i32 -4, ptr %i.bi, align 1
  %.val370 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %.val370, i64 %i.be
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  store i32 -4, ptr %i.bk, align 1
  %.val369 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %.val369, i64 %i.be
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store i32 -4, ptr %i.bm, align 1
  %.val368 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bn = getelementptr inbounds nuw i8, ptr %.val368, i64 %i.be
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i32 -4, ptr %i.bo, align 1
  %.val367 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %.val367, i64 %i.be
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i32 -4, ptr %i.bq, align 1
  %.val366 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.br = getelementptr inbounds nuw i8, ptr %.val366, i64 %i.be
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 -4, ptr %i.bs, align 1
  %.val365 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bt = getelementptr inbounds nuw i8, ptr %.val365, i64 %i.be
  store i32 -4, ptr %i.bt, align 1
  %i.bu = add i32 %.2, 64                         ; 2 uses
  %.not342 = icmp eq i32 %i.bu, %i.bd
  br i1 %.not342, label %.loopexit, label %bb.e

bb.f:                                             ; preds = %bb.a
  %i.bv = add nuw nsw i64 %i.e, 4                 ; 3 uses
  %.val376 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %.val376, i64 %i.bv
  store i64 0, ptr %i.bw, align 1
  %.val349 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %.val349, i64 %i.f
  %.0.copyload.i380 = load i32, ptr %i.bx, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i380) #8, !srcloc !14
  %.not333 = icmp eq i32 %.0.copyload.i380, 0
  br i1 %.not333, label %.loopexit390, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.by = and i32 %.0.copyload.i380, 7            ; 7 uses
  %.not334 = icmp eq i32 %i.by, 0
  br i1 %.not334, label %.loopexit392, label %.preheader391

.preheader391:                                    ; preds = %bb.g
  %i.bz = zext i32 %i.y to i64
  %.val364 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %.val364, i64 %i.bz
  store i32 -4, ptr %i.ca, align 1
  %i.cb = add i32 %i.y, 8                         ; 2 uses
  %.not335 = icmp eq i32 %i.by, 1
  br i1 %.not335, label %.loopexit392, label %.preheader391.1

.preheader391.1:                                  ; preds = %.preheader391
  %i.cc = zext i32 %i.cb to i64
  %.val364.1 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cd = getelementptr inbounds nuw i8, ptr %.val364.1, i64 %i.cc
  store i32 -4, ptr %i.cd, align 1
  %i.ce = add i32 %i.y, 16                        ; 2 uses
  %.not335.1 = icmp eq i32 %i.by, 2
  br i1 %.not335.1, label %.loopexit392, label %.preheader391.2

.preheader391.2:                                  ; preds = %.preheader391.1
  %i.cf = zext i32 %i.ce to i64
  %.val364.2 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %.val364.2, i64 %i.cf
  store i32 -4, ptr %i.cg, align 1
  %i.ch = add i32 %i.y, 24                        ; 2 uses
  %.not335.2 = icmp eq i32 %i.by, 3
  br i1 %.not335.2, label %.loopexit392, label %.preheader391.3

.preheader391.3:                                  ; preds = %.preheader391.2
  %i.ci = zext i32 %i.ch to i64
  %.val364.3 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cj = getelementptr inbounds nuw i8, ptr %.val364.3, i64 %i.ci
  store i32 -4, ptr %i.cj, align 1
  %i.ck = add i32 %i.y, 32                        ; 2 uses
  %.not335.3 = icmp eq i32 %i.by, 4
  br i1 %.not335.3, label %.loopexit392, label %.preheader391.4

.preheader391.4:                                  ; preds = %.preheader391.3
  %i.cl = zext i32 %i.ck to i64
  %.val364.4 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cm = getelementptr inbounds nuw i8, ptr %.val364.4, i64 %i.cl
  store i32 -4, ptr %i.cm, align 1
  %i.cn = add i32 %i.y, 40                        ; 2 uses
  %.not335.4 = icmp eq i32 %i.by, 5
  br i1 %.not335.4, label %.loopexit392, label %.preheader391.5

.preheader391.5:                                  ; preds = %.preheader391.4
  %i.co = zext i32 %i.cn to i64
  %.val364.5 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cp = getelementptr inbounds nuw i8, ptr %.val364.5, i64 %i.co
  store i32 -4, ptr %i.cp, align 1
  %i.cq = add i32 %i.y, 48                        ; 2 uses
  %.not335.5 = icmp eq i32 %i.by, 6
  br i1 %.not335.5, label %.loopexit392, label %.preheader391.6

.preheader391.6:                                  ; preds = %.preheader391.5
  %i.cr = zext i32 %i.cq to i64
  %.val364.6 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cs = getelementptr inbounds nuw i8, ptr %.val364.6, i64 %i.cr
  store i32 -4, ptr %i.cs, align 1
  %i.ct = add i32 %i.y, 56
  br label %.loopexit392

.loopexit392:                                     ; preds = %.preheader391, %.preheader391.1, %.preheader391.2, %.preheader391.3, %.preheader391.4, %.preheader391.5, %.preheader391.6, %bb.g
  %.4 = phi i32 [ %i.y, %bb.g ], [ %i.cb, %.preheader391 ], [ %i.ce, %.preheader391.1 ], [ %i.ch, %.preheader391.2 ], [ %i.ck, %.preheader391.3 ], [ %i.cn, %.preheader391.4 ], [ %i.cq, %.preheader391.5 ], [ %i.ct, %.preheader391.6 ]
  %i.cu = add i32 %.0.copyload.i380, 536870911
  %i.cv = and i32 %i.cu, 536870911
  %i.cw = icmp samesign ult i32 %i.cv, 7
  br i1 %i.cw, label %.loopexit390, label %bb.h

bb.h:                                             ; preds = %.loopexit392
  %i.cx = shl i32 %.0.copyload.i380, 3
  %i.cy = add i32 %i.cx, %i.y
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.5 = phi i32 [ %.4, %bb.h ], [ %i.dp, %bb.i ]  ; 2 uses
  %i.cz = zext i32 %.5 to i64                     ; 8 uses
  %.val363 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.da = getelementptr inbounds nuw i8, ptr %.val363, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  store i32 -4, ptr %i.db, align 1
  %.val362 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dc = getelementptr inbounds nuw i8, ptr %.val362, i64 %i.cz
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  store i32 -4, ptr %i.dd, align 1
  %.val361 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.de = getelementptr inbounds nuw i8, ptr %.val361, i64 %i.cz
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  store i32 -4, ptr %i.df, align 1
  %.val360 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dg = getelementptr inbounds nuw i8, ptr %.val360, i64 %i.cz
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  store i32 -4, ptr %i.dh, align 1
  %.val359 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.di = getelementptr inbounds nuw i8, ptr %.val359, i64 %i.cz
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  store i32 -4, ptr %i.dj, align 1
  %.val358 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dk = getelementptr inbounds nuw i8, ptr %.val358, i64 %i.cz
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store i32 -4, ptr %i.dl, align 1
  %.val357 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dm = getelementptr inbounds nuw i8, ptr %.val357, i64 %i.cz
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i32 -4, ptr %i.dn, align 1
  %.val356 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.do = getelementptr inbounds nuw i8, ptr %.val356, i64 %i.cz
  store i32 -4, ptr %i.do, align 1
  %i.dp = add i32 %.5, 64                         ; 2 uses
  %.not336 = icmp eq i32 %i.dp, %i.cy
  br i1 %.not336, label %.loopexit390, label %bb.i

.loopexit390:                                     ; preds = %bb.i, %.loopexit392, %bb.f
  %.not337 = icmp eq i32 %.0.copyload.i, 0
  br i1 %.not337, label %.loopexit389, label %bb.j

bb.j:                                             ; preds = %.loopexit390
  %i.dq = shl i32 %.0.copyload.i, 3
  %i.dr = add i32 %.0.copyload.i378, %i.dq
  %i.ds = add i32 %i.b, -4
  %i.dt = zext i32 %i.c to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  %.6 = phi i32 [ %.0.copyload.i378, %bb.j ], [ %i.el, %bb.m ] ; 3 uses
  %i.du = zext i32 %.6 to i64                     ; 3 uses
  %.val348 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dv = getelementptr inbounds nuw i8, ptr %.val348, i64 %i.du
  %.0.copyload.i381 = load i32, ptr %i.dv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i381) #8, !srcloc !14
  switch i32 %.0.copyload.i381, label %bb.l [
    i32 -8, label %bb.m
    i32 -4, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %.val347 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dw = getelementptr inbounds nuw i8, ptr %.val347, i64 %i.e
  %.0.copyload.i382 = load i32, ptr %i.dw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i382) #8, !srcloc !14
  %.val346 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dx = getelementptr inbounds nuw i8, ptr %.val346, i64 %i.f
  %.0.copyload.i383 = load i32, ptr %i.dx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i383) #8, !srcloc !14
  %i.dy = tail call i32 @w2c_hermes_bool0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x2C0x20llvh0x3A0x3AScopedHashTableVal0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x2C0x20hermes0x3A0x3AValue0x2A0x3E0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x2C0x20llvh0x3A0x3AScopedHashTableVal0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x2C0x20hermes0x3A0x3AValue0x2A0x3E0x2A0x3E0x3E0x2C0x200x28anonymous0x20namespace0x290x3A0x3ACSEValue0x2C0x20llvh0x3A0x3AScopedHashTableVal0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x2C0x20hermes0x3A0x3AValue0x2A0x3E0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x2C0x20llvh0x3A0x3AScopedHashTableVal0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x2C0x20hermes0x3A0x3AValue0x2A0x3E0x2A0x3E0x3E0x3A0x3ALookupBucketFor0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x3E0x280x28anonymous0x20namespace0x290x3A0x3ACSEValue0x20const0x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x2C0x20llvh0x3A0x3AScopedHashTableVal0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x2C0x20hermes0x3A0x3AValue0x2A0x3E0x2A0x3E0x20const0x2A0x260x290x20const(ptr noundef nonnull %0, i32 noundef %.0.copyload.i382, i32 noundef %.0.copyload.i383, i32 noundef %.6, i32 noundef %i.ds) #8 ; 0 uses
  %.val345 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dz = getelementptr inbounds nuw i8, ptr %.val345, i64 %i.dt
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  %.0.copyload.i384 = load i32, ptr %i.ea, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i384) #8, !srcloc !14
  %.val344 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.eb = getelementptr inbounds nuw i8, ptr %.val344, i64 %i.du
  %.0.copyload.i385 = load i32, ptr %i.eb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i385) #8, !srcloc !14
  %i.ec = zext i32 %.0.copyload.i384 to i64       ; 2 uses
  %.val355 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ed = getelementptr inbounds nuw i8, ptr %.val355, i64 %i.ec
  store i32 %.0.copyload.i385, ptr %i.ed, align 1
  %.val343 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ee = getelementptr inbounds nuw i8, ptr %.val343, i64 %i.du
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %.0.copyload.i386 = load i32, ptr %i.ef, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i386) #8, !srcloc !14
  %.val354 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.eg = getelementptr inbounds nuw i8, ptr %.val354, i64 %i.ec
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  store i32 %.0.copyload.i386, ptr %i.eh, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ei = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bv
  %.0.copyload.i387 = load i32, ptr %i.ei, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i387) #8, !srcloc !14
  %i.ej = add i32 %.0.copyload.i387, 1
  %.val353 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ek = getelementptr inbounds nuw i8, ptr %.val353, i64 %i.bv
  store i32 %i.ej, ptr %i.ek, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.k, %bb.l
  %i.el = add i32 %.6, 8                          ; 2 uses
  %.not338 = icmp eq i32 %i.el, %i.dr
  br i1 %.not338, label %.loopexit389, label %bb.k

.loopexit389:                                     ; preds = %bb.m, %.loopexit390
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i378) #8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.loopexit388, %bb.b, %.loopexit389
  store i32 %i.b, ptr %i.a, align 8, !tbaa !15
  ret void
}

declare i32 @w2c_hermes_bool0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x2C0x20llvh0x3A0x3AScopedHashTableVal0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x2C0x20hermes0x3A0x3AValue0x2A0x3E0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x2C0x20llvh0x3A0x3AScopedHashTableVal0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x2C0x20hermes0x3A0x3AValue0x2A0x3E0x2A0x3E0x3E0x2C0x200x28anonymous0x20namespace0x290x3A0x3ACSEValue0x2C0x20llvh0x3A0x3AScopedHashTableVal0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x2C0x20hermes0x3A0x3AValue0x2A0x3E0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x2C0x20llvh0x3A0x3AScopedHashTableVal0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x2C0x20hermes0x3A0x3AValue0x2A0x3E0x2A0x3E0x3E0x3A0x3ALookupBucketFor0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x3E0x280x28anonymous0x20namespace0x290x3A0x3ACSEValue0x20const0x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x2C0x20llvh0x3A0x3AScopedHashTableVal0x3C0x28anonymous0x20namespace0x290x3A0x3ACSEValue0x2C0x20hermes0x3A0x3AValue0x2A0x3E0x2A0x3E0x20const0x2A0x260x290x20const(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ARegister0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ARegister0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ARegister0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 47 uses
  %i.e = zext i32 %1 to i64                       ; 5 uses
  %i.f = add nuw nsw i64 %i.e, 12                 ; 4 uses
  %.val349 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %.val349, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.h = add i32 %2, -1
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = lshr i64 %i.i, 1
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 2
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 4
  %i.o = or i64 %i.n, %i.m                        ; 2 uses
  %i.p = lshr i64 %i.o, 8
  %i.q = or i64 %i.p, %i.o                        ; 2 uses
  %i.r = lshr i64 %i.q, 16
  %i.s = or i64 %i.r, %i.q
  %i.t = trunc nuw i64 %i.s to i32
  %i.u = add i32 %i.t, 1
  %3 = tail call i32 @llvm.umax.i32(i32 %i.u, i32 64) ; 2 uses
  %.val372 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %.val372, i64 %i.f
  store i32 %3, ptr %i.v, align 1
  %.val348 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %.val348, i64 %i.e
  %.0.copyload.i375 = load i32, ptr %i.w, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i375) #8, !srcloc !14
  %i.x = shl i32 %3, 3
  %i.y = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef %0, i32 noundef %i.x) #8 ; 21 uses
  %.val371 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val371, i64 %i.e
  store i32 %i.y, ptr %i.z, align 1
  %.not = icmp eq i32 %.0.copyload.i375, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.val374 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %.val374, i64 %i.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i64 0, ptr %i.ab, align 1
  %.val347 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.val347, i64 %i.f
  %.0.copyload.i376 = load i32, ptr %i.ac, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i376) #8, !srcloc !14
  %.not337 = icmp eq i32 %.0.copyload.i376, 0
  br i1 %.not337, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = and i32 %.0.copyload.i376, 7            ; 7 uses
  %.not338 = icmp eq i32 %i.ad, 0
  br i1 %.not338, label %.loopexit384, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.ae = zext i32 %i.y to i64
  %.val370 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %.val370, i64 %i.ae
  store i32 -1, ptr %i.af, align 1
  %i.ag = add i32 %i.y, 8                         ; 2 uses
  %.not339 = icmp eq i32 %i.ad, 1
  br i1 %.not339, label %.loopexit384, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %i.ah = zext i32 %i.ag to i64
  %.val370.1 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %.val370.1, i64 %i.ah
  store i32 -1, ptr %i.ai, align 1
  %i.aj = add i32 %i.y, 16                        ; 2 uses
  %.not339.1 = icmp eq i32 %i.ad, 2
  br i1 %.not339.1, label %.loopexit384, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.ak = zext i32 %i.aj to i64
  %.val370.2 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val370.2, i64 %i.ak
  store i32 -1, ptr %i.al, align 1
  %i.am = add i32 %i.y, 24                        ; 2 uses
  %.not339.2 = icmp eq i32 %i.ad, 3
  br i1 %.not339.2, label %.loopexit384, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.an = zext i32 %i.am to i64
  %.val370.3 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.val370.3, i64 %i.an
  store i32 -1, ptr %i.ao, align 1
  %i.ap = add i32 %i.y, 32                        ; 2 uses
  %.not339.3 = icmp eq i32 %i.ad, 4
  br i1 %.not339.3, label %.loopexit384, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.aq = zext i32 %i.ap to i64
  %.val370.4 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %.val370.4, i64 %i.aq
  store i32 -1, ptr %i.ar, align 1
  %i.as = add i32 %i.y, 40                        ; 2 uses
  %.not339.4 = icmp eq i32 %i.ad, 5
  br i1 %.not339.4, label %.loopexit384, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.at = zext i32 %i.as to i64
  %.val370.5 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %.val370.5, i64 %i.at
  store i32 -1, ptr %i.au, align 1
  %i.av = add i32 %i.y, 48                        ; 2 uses
  %.not339.5 = icmp eq i32 %i.ad, 6
  br i1 %.not339.5, label %.loopexit384, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.aw = zext i32 %i.av to i64
  %.val370.6 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %.val370.6, i64 %i.aw
  store i32 -1, ptr %i.ax, align 1
  %i.ay = add i32 %i.y, 56
  br label %.loopexit384

.loopexit384:                                     ; preds = %.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %bb.c
  %.1 = phi i32 [ %i.y, %bb.c ], [ %i.ag, %.preheader ], [ %i.aj, %.preheader.1 ], [ %i.am, %.preheader.2 ], [ %i.ap, %.preheader.3 ], [ %i.as, %.preheader.4 ], [ %i.av, %.preheader.5 ], [ %i.ay, %.preheader.6 ]
  %i.az = add i32 %.0.copyload.i376, 536870911
  %i.ba = and i32 %i.az, 536870911
  %i.bb = icmp samesign ult i32 %i.ba, 7
  br i1 %i.bb, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.loopexit384
  %i.bc = shl i32 %.0.copyload.i376, 3
  %i.bd = add i32 %i.bc, %i.y
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.2 = phi i32 [ %.1, %bb.d ], [ %i.bu, %bb.e ]  ; 2 uses
  %i.be = zext i32 %.2 to i64                     ; 8 uses
  %.val369 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.val369, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  store i32 -1, ptr %i.bg, align 1
  %.val368 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %.val368, i64 %i.be
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store i32 -1, ptr %i.bi, align 1
  %.val367 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %.val367, i64 %i.be
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  store i32 -1, ptr %i.bk, align 1
  %.val366 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %.val366, i64 %i.be
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store i32 -1, ptr %i.bm, align 1
  %.val365 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bn = getelementptr inbounds nuw i8, ptr %.val365, i64 %i.be
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i32 -1, ptr %i.bo, align 1
  %.val364 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %.val364, i64 %i.be
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i32 -1, ptr %i.bq, align 1
  %.val363 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.br = getelementptr inbounds nuw i8, ptr %.val363, i64 %i.be
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 -1, ptr %i.bs, align 1
  %.val362 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bt = getelementptr inbounds nuw i8, ptr %.val362, i64 %i.be
  store i32 -1, ptr %i.bt, align 1
  %i.bu = add i32 %.2, 64                         ; 2 uses
  %.not340 = icmp eq i32 %i.bu, %i.bd
  br i1 %.not340, label %.loopexit, label %bb.e

bb.f:                                             ; preds = %bb.a
  %i.bv = add nuw nsw i64 %i.e, 4                 ; 3 uses
  %.val373 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %.val373, i64 %i.bv
  store i64 0, ptr %i.bw, align 1
  %.val346 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %.val346, i64 %i.f
  %.0.copyload.i377 = load i32, ptr %i.bx, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i377) #8, !srcloc !14
  %.not331 = icmp eq i32 %.0.copyload.i377, 0
  br i1 %.not331, label %.loopexit386, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.by = and i32 %.0.copyload.i377, 7            ; 7 uses
  %.not332 = icmp eq i32 %i.by, 0
  br i1 %.not332, label %.loopexit388, label %.preheader387

.preheader387:                                    ; preds = %bb.g
  %i.bz = zext i32 %i.y to i64
  %.val361 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %.val361, i64 %i.bz
  store i32 -1, ptr %i.ca, align 1
  %i.cb = add i32 %i.y, 8                         ; 2 uses
  %.not333 = icmp eq i32 %i.by, 1
  br i1 %.not333, label %.loopexit388, label %.preheader387.1

.preheader387.1:                                  ; preds = %.preheader387
  %i.cc = zext i32 %i.cb to i64
  %.val361.1 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cd = getelementptr inbounds nuw i8, ptr %.val361.1, i64 %i.cc
  store i32 -1, ptr %i.cd, align 1
  %i.ce = add i32 %i.y, 16                        ; 2 uses
  %.not333.1 = icmp eq i32 %i.by, 2
  br i1 %.not333.1, label %.loopexit388, label %.preheader387.2

.preheader387.2:                                  ; preds = %.preheader387.1
  %i.cf = zext i32 %i.ce to i64
  %.val361.2 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %.val361.2, i64 %i.cf
  store i32 -1, ptr %i.cg, align 1
  %i.ch = add i32 %i.y, 24                        ; 2 uses
  %.not333.2 = icmp eq i32 %i.by, 3
  br i1 %.not333.2, label %.loopexit388, label %.preheader387.3

.preheader387.3:                                  ; preds = %.preheader387.2
  %i.ci = zext i32 %i.ch to i64
  %.val361.3 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cj = getelementptr inbounds nuw i8, ptr %.val361.3, i64 %i.ci
  store i32 -1, ptr %i.cj, align 1
  %i.ck = add i32 %i.y, 32                        ; 2 uses
  %.not333.3 = icmp eq i32 %i.by, 4
  br i1 %.not333.3, label %.loopexit388, label %.preheader387.4

.preheader387.4:                                  ; preds = %.preheader387.3
  %i.cl = zext i32 %i.ck to i64
  %.val361.4 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cm = getelementptr inbounds nuw i8, ptr %.val361.4, i64 %i.cl
  store i32 -1, ptr %i.cm, align 1
  %i.cn = add i32 %i.y, 40                        ; 2 uses
  %.not333.4 = icmp eq i32 %i.by, 5
  br i1 %.not333.4, label %.loopexit388, label %.preheader387.5

.preheader387.5:                                  ; preds = %.preheader387.4
  %i.co = zext i32 %i.cn to i64
end_hunk_11
begin_hunk_12_@w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20unsigned0x20int0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AUniqueString0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20unsigned0x20int0x3E0x3E0x2C0x20hermes0x3A0x3AUniqueString0x2A0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AUniqueString0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20unsigned0x20long0x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20hermes0x3A0x3AUniqueString0x2A0x260x260x2C0x20unsigned0x20long0x260x260x29:bb.a
  %i.e = shl i32 %.0.copyload.i, 2
  %i.f = add i32 %i.e, 4
  %i.g = add nuw nsw i64 %i.b, 12                 ; 2 uses
  %.val198 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val198, i64 %i.g
  %.0.copyload.i204 = load i32, ptr %i.h, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i204) #8, !srcloc !14
  %i.i = mul i32 %.0.copyload.i204, 3
  %.not = icmp ult i32 %i.f, %i.i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = shl i32 %.0.copyload.i204, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = xor i32 %.0.copyload.i, -1
  %i.l = add i32 %.0.copyload.i204, %i.k
  %.val197 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val197, i64 %i.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.copyload.i205 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i205) #8, !srcloc !14
  %i.o = sub i32 %i.l, %.0.copyload.i205
  %i.p = lshr i32 %.0.copyload.i204, 3
  %i.q = icmp ugt i32 %i.o, %i.p
  br i1 %i.q, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0174 = phi i32 [ %i.j, %bb.b ], [ %.0.copyload.i204, %bb.c ]
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AUniqueString0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0174)
  %i.r = zext i32 %3 to i64
  %.val196 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.val196, i64 %i.r
  %.0.copyload.i206 = load i32, ptr %i.s, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i206) #8, !srcloc !14
  %.val195 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val195, i64 %i.b
  %.0.copyload.i207 = load i32, ptr %i.t, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i207) #8, !srcloc !14
  %.val194 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val194, i64 %i.g
  %.0.copyload.i208 = load i32, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i208) #8, !srcloc !14
  %i.v = add i32 %.0.copyload.i208, -1            ; 2 uses
  %i.w = lshr i32 %.0.copyload.i206, 4
  %i.x = lshr i32 %.0.copyload.i206, 9
  %i.y = xor i32 %i.w, %i.x
  %i.z = and i32 %i.v, %i.y                       ; 2 uses
  %i.aa = shl nuw nsw i32 %i.z, 3
  %i.ab = add i32 %i.aa, %.0.copyload.i207        ; 3 uses
  %i.ac = zext i32 %i.ab to i64
  %.val193 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.val193, i64 %i.ac
  %.0.copyload.i209 = load i32, ptr %i.ad, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i209) #8, !srcloc !14
  %i.ae = icmp eq i32 %.0.copyload.i206, %.0.copyload.i209
  br i1 %i.ae, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.f
  %.0179 = phi i32 [ %i.aj, %bb.f ], [ 0, %bb.d ] ; 3 uses
  %.0178 = phi i32 [ %.0.copyload.i210, %bb.f ], [ %.0.copyload.i209, %bb.d ] ; 2 uses
  %.0177 = phi i32 [ %i.al, %bb.f ], [ 1, %bb.d ] ; 2 uses
  %.0176 = phi i32 [ %i.am, %bb.f ], [ %i.z, %bb.d ]
  %.0 = phi i32 [ %i.ao, %bb.f ], [ %i.ab, %bb.d ] ; 2 uses
  %i.af = icmp eq i32 %.0178, -4
  %.not186 = icmp eq i32 %.0179, 0                ; 2 uses
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader
  %i.ag = select i1 %.not186, i32 %.0, i32 %.0179
  br label %bb.g

bb.f:                                             ; preds = %.preheader
  %i.ah = icmp eq i32 %.0178, -8
  %i.ai = select i1 %i.ah, i1 %.not186, i1 false
  %i.aj = select i1 %i.ai, i32 %.0, i32 %.0179
  %i.ak = add i32 %.0176, %.0177
  %i.al = add i32 %.0177, 1
  %i.am = and i32 %i.ak, %i.v                     ; 2 uses
  %i.an = shl i32 %i.am, 3
  %i.ao = add i32 %i.an, %.0.copyload.i207        ; 3 uses
  %i.ap = zext i32 %i.ao to i64
  %.val192 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %.val192, i64 %i.ap
  %.0.copyload.i210 = load i32, ptr %i.aq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i210) #8, !srcloc !14
  %.not185 = icmp eq i32 %.0.copyload.i206, %.0.copyload.i210
  br i1 %.not185, label %.loopexit, label %.preheader

bb.g:                                             ; preds = %bb.c, %bb.e
  %.1 = phi i32 [ %i.ag, %bb.e ], [ %2, %bb.c ]   ; 2 uses
  %i.ar = zext i32 %.1 to i64
  %.val191 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %.val191, i64 %i.ar
  %.0.copyload.i211 = load i32, ptr %i.as, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i211) #8, !srcloc !14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.d, %bb.g
  %.1175 = phi i32 [ %.0.copyload.i206, %bb.d ], [ %.0.copyload.i211, %bb.g ], [ %.0.copyload.i206, %bb.f ]
  %.2 = phi i32 [ %i.ab, %bb.d ], [ %.1, %bb.g ], [ %i.ao, %bb.f ] ; 2 uses
  %.val190 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val190, i64 %i.c
  %.0.copyload.i212 = load i32, ptr %i.at, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i212) #8, !srcloc !14
  %i.au = add i32 %.0.copyload.i212, 1
  %.val203 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val203, i64 %i.c
  store i32 %i.au, ptr %i.av, align 1
  %.not187 = icmp eq i32 %.1175, -4
  br i1 %.not187, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.aw = add nuw nsw i64 %i.b, 8                 ; 2 uses
  %.val189 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %.val189, i64 %i.aw
  %.0.copyload.i213 = load i32, ptr %i.ax, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i213) #8, !srcloc !14
  %i.ay = add i32 %.0.copyload.i213, -1
  %.val202 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %.val202, i64 %i.aw
  store i32 %i.ay, ptr %i.az, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  %i.ba = zext i32 %3 to i64
  %.val188 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %.val188, i64 %i.ba
  %.0.copyload.i214 = load i32, ptr %i.bb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i214) #8, !srcloc !14
  %i.bc = zext i32 %.2 to i64                     ; 2 uses
  %.val201 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %.val201, i64 %i.bc
  store i32 %.0.copyload.i214, ptr %i.bd, align 1
  %i.be = zext i32 %4 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.val, i64 %i.be
  %.0.copyload.i215 = load i32, ptr %i.bf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i215) #8, !srcloc !14
  %.val200 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %.val200, i64 %i.bc
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i32 %.0.copyload.i215, ptr %i.bh, align 1
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AESTree0x3A0x3ANode0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Cllvh0x3A0x3ASmallVector0x3Chermes0x3A0x3Asem0x3A0x3AFunctionInfo0x3A0x3AVarDecl0x2C0x204u0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Cllvh0x3A0x3ASmallVector0x3Chermes0x3A0x3Asem0x3A0x3AFunctionInfo0x3A0x3AVarDecl0x2C0x204u0x3E0x3E0x3E0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AESTree0x3A0x3ANode0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Cllvh0x3A0x3ASmallVector0x3Chermes0x3A0x3Asem0x3A0x3AFunctionInfo0x3A0x3AVarDecl0x2C0x204u0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Cllvh0x3A0x3ASmallVector0x3Chermes0x3A0x3Asem0x3A0x3AFunctionInfo0x3A0x3AVarDecl0x2C0x204u0x3E0x3E0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AESTree0x3A0x3ANode0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AESTree0x3A0x3ANode0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Cllvh0x3A0x3ASmallVector0x3Chermes0x3A0x3Asem0x3A0x3AFunctionInfo0x3A0x3AVarDecl0x2C0x204u0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Cllvh0x3A0x3ASmallVector0x3Chermes0x3A0x3Asem0x3A0x3AFunctionInfo0x3A0x3AVarDecl0x2C0x204u0x3E0x3E0x3E0x3E0x3E0x2C0x20hermes0x3A0x3AESTree0x3A0x3ANode0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Cllvh0x3A0x3ASmallVector0x3Chermes0x3A0x3Asem0x3A0x3AFunctionInfo0x3A0x3AVarDecl0x2C0x204u0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Cllvh0x3A0x3ASmallVector0x3Chermes0x3A0x3Asem0x3A0x3AFunctionInfo0x3A0x3AVarDecl0x2C0x204u0x3E0x3E0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AESTree0x3A0x3ANode0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AESTree0x3A0x3ANode0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Cllvh0x3A0x3ASmallVector0x3Chermes0x3A0x3Asem0x3A0x3AFunctionInfo0x3A0x3AVarDecl0x2C0x204u0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Cllvh0x3A0x3ASmallVector0x3Chermes0x3A0x3Asem0x3A0x3AFunctionInfo0x3A0x3AVarDecl0x2C0x204u0x3E0x3E0x3E0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3AESTree0x3A0x3ANode0x2A0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AESTree0x3A0x3ANode0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Cllvh0x3A0x3ASmallVector0x3Chermes0x3A0x3Asem0x3A0x3AFunctionInfo0x3A0x3AVarDecl0x2C0x204u0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Cllvh0x3A0x3ASmallVector0x3Chermes0x3A0x3Asem0x3A0x3AFunctionInfo0x3A0x3AVarDecl0x2C0x204u0x3E0x3E0x3E0x3E0x2A0x2C0x20hermes0x3A0x3AESTree0x3A0x3ANode0x2A0x20const0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 68 uses
  %i.b = zext i32 %1 to i64                       ; 9 uses
  %i.c = add nuw nsw i64 %i.b, 4                  ; 7 uses
  %.val662 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val662, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = shl i32 %.0.copyload.i, 2
  %i.f = add i32 %i.e, 4
  %i.g = add nuw nsw i64 %i.b, 12                 ; 6 uses
  %.val661 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val661, i64 %i.g
  %.0.copyload.i694 = load i32, ptr %i.h, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i694) #8, !srcloc !14
  %i.i = mul i32 %.0.copyload.i694, 3
  %.not = icmp ult i32 %i.f, %i.i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = shl i32 %.0.copyload.i694, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = xor i32 %.0.copyload.i, -1
  %i.l = add i32 %.0.copyload.i694, %i.k
  %.val660 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val660, i64 %i.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.copyload.i695 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i695) #8, !srcloc !14
  %i.o = sub i32 %i.l, %.0.copyload.i695
  %i.p = lshr i32 %.0.copyload.i694, 3
  %i.q = icmp ugt i32 %i.o, %i.p
  br i1 %i.q, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0603 = phi i32 [ %i.j, %bb.b ], [ %.0.copyload.i694, %bb.c ]
  %i.r = add i32 %.0603, -1
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = lshr i64 %i.s, 1
  %i.u = or i64 %i.t, %i.s                        ; 2 uses
  %i.v = lshr i64 %i.u, 2
  %i.w = or i64 %i.v, %i.u                        ; 2 uses
  %i.x = lshr i64 %i.w, 4
  %i.y = or i64 %i.x, %i.w                        ; 2 uses
  %i.z = lshr i64 %i.y, 8
  %i.aa = or i64 %i.z, %i.y                       ; 2 uses
  %i.ab = lshr i64 %i.aa, 16
  %i.ac = or i64 %i.ab, %i.aa
  %i.ad = trunc nuw i64 %i.ac to i32
  %i.ae = add i32 %i.ad, 1
  %4 = tail call i32 @llvm.umax.i32(i32 %i.ae, i32 64) ; 2 uses
  %.val691 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %.val691, i64 %i.g
  store i32 %4, ptr %i.af, align 1
  %.val659 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.val659, i64 %i.b
  %.0.copyload.i696 = load i32, ptr %i.ag, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i696) #8, !srcloc !14
  %i.ah = shl i32 %4, 3
  %i.ai = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ah) #8 ; 13 uses
  %.val690 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %.val690, i64 %i.b
  store i32 %i.ai, ptr %i.aj, align 1
  %.not620 = icmp eq i32 %.0.copyload.i696, 0
  br i1 %.not620, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.val693 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val693, i64 %i.c
  store i64 0, ptr %i.ak, align 1
  %.val658 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val658, i64 %i.g
  %.0.copyload.i697 = load i32, ptr %i.al, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i697) #8, !srcloc !14
  %i.am = add i32 %.0.copyload.i697, 536870911
  %i.an = and i32 %i.am, 536870911
  %i.ao = and i32 %.0.copyload.i697, 7            ; 7 uses
  %.not632 = icmp eq i32 %i.ao, 0
  br i1 %.not632, label %.loopexit720, label %.preheader719

.preheader719:                                    ; preds = %bb.e
  %i.ap = zext i32 %i.ai to i64
  %.val689 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %.val689, i64 %i.ap
  store i32 -4, ptr %i.aq, align 1
  %i.ar = add i32 %i.ai, 8                        ; 2 uses
  %.not633 = icmp eq i32 %i.ao, 1
  br i1 %.not633, label %.loopexit720, label %.preheader719.1

.preheader719.1:                                  ; preds = %.preheader719
  %i.as = zext i32 %i.ar to i64
  %.val689.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val689.1, i64 %i.as
  store i32 -4, ptr %i.at, align 1
  %i.au = add i32 %i.ai, 16                       ; 2 uses
  %.not633.1 = icmp eq i32 %i.ao, 2
  br i1 %.not633.1, label %.loopexit720, label %.preheader719.2

.preheader719.2:                                  ; preds = %.preheader719.1
  %i.av = zext i32 %i.au to i64
  %.val689.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %.val689.2, i64 %i.av
  store i32 -4, ptr %i.aw, align 1
  %i.ax = add i32 %i.ai, 24                       ; 2 uses
  %.not633.2 = icmp eq i32 %i.ao, 3
  br i1 %.not633.2, label %.loopexit720, label %.preheader719.3

.preheader719.3:                                  ; preds = %.preheader719.2
  %i.ay = zext i32 %i.ax to i64
  %.val689.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %.val689.3, i64 %i.ay
  store i32 -4, ptr %i.az, align 1
  %i.ba = add i32 %i.ai, 32                       ; 2 uses
  %.not633.3 = icmp eq i32 %i.ao, 4
  br i1 %.not633.3, label %.loopexit720, label %.preheader719.4

.preheader719.4:                                  ; preds = %.preheader719.3
  %i.bb = zext i32 %i.ba to i64
  %.val689.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %.val689.4, i64 %i.bb
  store i32 -4, ptr %i.bc, align 1
  %i.bd = add i32 %i.ai, 40                       ; 2 uses
  %.not633.4 = icmp eq i32 %i.ao, 5
  br i1 %.not633.4, label %.loopexit720, label %.preheader719.5

.preheader719.5:                                  ; preds = %.preheader719.4
  %i.be = zext i32 %i.bd to i64
  %.val689.5 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.val689.5, i64 %i.be
  store i32 -4, ptr %i.bf, align 1
  %i.bg = add i32 %i.ai, 48                       ; 2 uses
  %.not633.5 = icmp eq i32 %i.ao, 6
  br i1 %.not633.5, label %.loopexit720, label %.preheader719.6

.preheader719.6:                                  ; preds = %.preheader719.5
  %i.bh = zext i32 %i.bg to i64
  %.val689.6 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %.val689.6, i64 %i.bh
  store i32 -4, ptr %i.bi, align 1
  %i.bj = add i32 %i.ai, 56
  br label %.loopexit720

.loopexit720:                                     ; preds = %.preheader719, %.preheader719.1, %.preheader719.2, %.preheader719.3, %.preheader719.4, %.preheader719.5, %.preheader719.6, %bb.e
  %.1 = phi i32 [ %i.ai, %bb.e ], [ %i.ar, %.preheader719 ], [ %i.au, %.preheader719.1 ], [ %i.ax, %.preheader719.2 ], [ %i.ba, %.preheader719.3 ], [ %i.bd, %.preheader719.4 ], [ %i.bg, %.preheader719.5 ], [ %i.bj, %.preheader719.6 ]
  %i.bk = icmp samesign ult i32 %i.an, 7
  br i1 %i.bk, label %.loopexit718, label %bb.f

bb.f:                                             ; preds = %.loopexit720
  %i.bl = shl i32 %.0.copyload.i697, 3
  %i.bm = add i32 %i.bl, %i.ai
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.2 = phi i32 [ %.1, %bb.f ], [ %i.cd, %bb.g ]  ; 2 uses
  %i.bn = zext i32 %.2 to i64                     ; 8 uses
  %.val688 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %.val688, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  store i32 -4, ptr %i.bp, align 1
  %.val687 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %.val687, i64 %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  store i32 -4, ptr %i.br, align 1
  %.val686 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %.val686, i64 %i.bn
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  store i32 -4, ptr %i.bt, align 1
  %.val685 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val685, i64 %i.bn
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store i32 -4, ptr %i.bv, align 1
  %.val684 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %.val684, i64 %i.bn
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store i32 -4, ptr %i.bx, align 1
  %.val683 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %.val683, i64 %i.bn
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i32 -4, ptr %i.bz, align 1
  %.val682 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %.val682, i64 %i.bn
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i32 -4, ptr %i.cb, align 1
  %.val681 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %.val681, i64 %i.bn
  store i32 -4, ptr %i.cc, align 1
  %i.cd = add i32 %.2, 64                         ; 2 uses
  %.not634 = icmp eq i32 %i.cd, %i.bm
  br i1 %.not634, label %.loopexit718, label %bb.g

bb.h:                                             ; preds = %bb.d
  %i.ce = shl i32 %.0.copyload.i694, 3            ; 2 uses
  %i.cf = add i32 %.0.copyload.i696, %i.ce
  %.val692 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %.val692, i64 %i.c
  store i64 0, ptr %i.cg, align 1
  %.val657 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %.val657, i64 %i.g
  %.0.copyload.i698 = load i32, ptr %i.ch, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i698) #8, !srcloc !14
  %.not621 = icmp eq i32 %.0.copyload.i698, 0
  br i1 %.not621, label %.loopexit725, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val656 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %.val656, i64 %i.b
  %.0.copyload.i699 = load i32, ptr %i.ci, align 1 ; 11 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i699) #8, !srcloc !14
  %i.cj = and i32 %.0.copyload.i698, 7            ; 7 uses
  %.not622 = icmp eq i32 %i.cj, 0
  br i1 %.not622, label %.loopexit727, label %.preheader726

.preheader726:                                    ; preds = %bb.i
  %i.ck = zext i32 %.0.copyload.i699 to i64
  %.val680 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %.val680, i64 %i.ck
  store i32 -4, ptr %i.cl, align 1
  %i.cm = add i32 %.0.copyload.i699, 8            ; 2 uses
  %.not623 = icmp eq i32 %i.cj, 1
  br i1 %.not623, label %.loopexit727, label %.preheader726.1

.preheader726.1:                                  ; preds = %.preheader726
  %i.cn = zext i32 %i.cm to i64
  %.val680.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.co = getelementptr inbounds nuw i8, ptr %.val680.1, i64 %i.cn
  store i32 -4, ptr %i.co, align 1
  %i.cp = add i32 %.0.copyload.i699, 16           ; 2 uses
  %.not623.1 = icmp eq i32 %i.cj, 2
  br i1 %.not623.1, label %.loopexit727, label %.preheader726.2

.preheader726.2:                                  ; preds = %.preheader726.1
  %i.cq = zext i32 %i.cp to i64
  %.val680.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %.val680.2, i64 %i.cq
  store i32 -4, ptr %i.cr, align 1
  %i.cs = add i32 %.0.copyload.i699, 24           ; 2 uses
  %.not623.2 = icmp eq i32 %i.cj, 3
  br i1 %.not623.2, label %.loopexit727, label %.preheader726.3

.preheader726.3:                                  ; preds = %.preheader726.2
  %i.ct = zext i32 %i.cs to i64
  %.val680.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cu = getelementptr inbounds nuw i8, ptr %.val680.3, i64 %i.ct
  store i32 -4, ptr %i.cu, align 1
  %i.cv = add i32 %.0.copyload.i699, 32           ; 2 uses
  %.not623.3 = icmp eq i32 %i.cj, 4
  br i1 %.not623.3, label %.loopexit727, label %.preheader726.4

.preheader726.4:                                  ; preds = %.preheader726.3
  %i.cw = zext i32 %i.cv to i64
  %.val680.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cx = getelementptr inbounds nuw i8, ptr %.val680.4, i64 %i.cw
  store i32 -4, ptr %i.cx, align 1
  %i.cy = add i32 %.0.copyload.i699, 40           ; 2 uses
  %.not623.4 = icmp eq i32 %i.cj, 5
  br i1 %.not623.4, label %.loopexit727, label %.preheader726.5

.preheader726.5:                                  ; preds = %.preheader726.4
  %i.cz = zext i32 %i.cy to i64
end_hunk_12
begin_hunk_13_@w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x20const0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ASmallDenseMap0x3Chermes0x3A0x3ABasicBlock0x20const0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x2016u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x20const0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x20const0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x3E0x3E0x2C0x20hermes0x3A0x3ABasicBlock0x20const0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x20const0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x20const0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3ABasicBlock0x20const0x2A0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x20const0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x3E0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x20const0x2A0x20const0x260x29:bb.a
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i238) #8, !srcloc !14
  %i.i = and i32 %.0.copyload.i, 1                ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  %i.j = select i1 %.not, i32 %.0.copyload.i238, i32 16 ; 5 uses
  %i.k = mul i32 %i.j, 3
  %.not216 = icmp ult i32 %i.f, %i.k
  br i1 %.not216, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = shl i32 %i.j, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = xor i32 %i.d, -1
  %i.n = add i32 %i.j, %i.m
  %.val231 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %.val231, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.0.copyload.i239 = load i32, ptr %i.p, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i239) #8, !srcloc !14
  %i.q = sub i32 %i.n, %.0.copyload.i239
  %i.r = lshr i32 %i.j, 3
  %i.s = icmp ugt i32 %i.q, %i.r
  br i1 %i.s, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0210 = phi i32 [ %i.l, %bb.b ], [ %i.j, %bb.c ]
  tail call void @w2c_hermes_llvh0x3A0x3ASmallDenseMap0x3Chermes0x3A0x3ABasicBlock0x20const0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x2016u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x20const0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x20const0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0210)
  %.val230 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val230, i64 %i.g
  %.0.copyload.i240 = load i32, ptr %i.t, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i240) #8, !srcloc !14
  %.val229 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val229, i64 %i.b
  %.0.copyload.i241 = load i32, ptr %i.u, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i241) #8, !srcloc !14
  %i.v = and i32 %.0.copyload.i241, 1             ; 5 uses
  %.not217 = icmp eq i32 %i.v, 0                  ; 2 uses
  %i.w = select i1 %.not217, i32 %.0.copyload.i240, i32 16 ; 2 uses
  %.not218 = icmp eq i32 %i.w, 0
  br i1 %.not218, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = zext i32 %3 to i64
  %.val228 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %.val228, i64 %i.x
  %.0.copyload.i242 = load i32, ptr %i.y, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i242) #8, !srcloc !14
  %i.z = add i32 %1, 8
  %.val227 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %.val227, i64 %i.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.0.copyload.i243 = load i32, ptr %i.ab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i243) #8, !srcloc !14
  %i.ac = select i1 %.not217, i32 %.0.copyload.i243, i32 %i.z ; 2 uses
  %i.ad = add i32 %i.w, -1                        ; 2 uses
  %i.ae = lshr i32 %.0.copyload.i242, 4
  %i.af = lshr i32 %.0.copyload.i242, 9
  %i.ag = xor i32 %i.ae, %i.af
  %i.ah = and i32 %i.ag, %i.ad                    ; 2 uses
  %i.ai = shl nuw nsw i32 %i.ah, 3
  %i.aj = add i32 %i.ac, %i.ai                    ; 3 uses
  %i.ak = zext i32 %i.aj to i64
  %.val226 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val226, i64 %i.ak
  %.0.copyload.i244 = load i32, ptr %i.al, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i244) #8, !srcloc !14
  %i.am = icmp eq i32 %.0.copyload.i242, %.0.copyload.i244
  br i1 %i.am, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.e, %bb.g
  %.0211 = phi i32 [ %i.aw, %bb.g ], [ %i.aj, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %i.ar, %bb.g ], [ 0, %bb.e ]    ; 3 uses
  %.0209 = phi i32 [ %i.at, %bb.g ], [ 1, %bb.e ] ; 2 uses
  %.0206 = phi i32 [ %.0.copyload.i245, %bb.g ], [ %.0.copyload.i244, %bb.e ] ; 2 uses
  %.0 = phi i32 [ %i.au, %bb.g ], [ %i.ah, %bb.e ]
  %i.an = icmp eq i32 %.0206, -4
  %.not221 = icmp eq i32 %.1, 0                   ; 2 uses
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader
  %i.ao = select i1 %.not221, i32 %.0211, i32 %.1
  br label %.loopexit

bb.g:                                             ; preds = %.preheader
  %i.ap = icmp eq i32 %.0206, -8
  %i.aq = select i1 %i.ap, i1 %.not221, i1 false
  %i.ar = select i1 %i.aq, i32 %.0211, i32 %.1
  %i.as = add i32 %.0, %.0209
  %i.at = add i32 %.0209, 1
  %i.au = and i32 %i.as, %i.ad                    ; 2 uses
  %i.av = shl i32 %i.au, 3
  %i.aw = add i32 %i.av, %i.ac                    ; 3 uses
  %i.ax = zext i32 %i.aw to i64
  %.val225 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %.val225, i64 %i.ax
  %.0.copyload.i245 = load i32, ptr %i.ay, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i245) #8, !srcloc !14
  %.not220 = icmp eq i32 %.0.copyload.i242, %.0.copyload.i245
  br i1 %.not220, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.g, %bb.d, %bb.e, %bb.c, %bb.f
  %.1212 = phi i32 [ %2, %bb.c ], [ %i.aj, %bb.e ], [ %i.ao, %bb.f ], [ 0, %bb.d ], [ %i.aw, %bb.g ] ; 2 uses
  %.0208 = phi i32 [ %.0.copyload.i, %bb.c ], [ %.0.copyload.i241, %bb.e ], [ %.0.copyload.i241, %bb.f ], [ %.0.copyload.i241, %bb.d ], [ %.0.copyload.i241, %bb.g ]
  %.0207 = phi i32 [ %i.i, %bb.c ], [ %i.v, %bb.e ], [ %i.v, %bb.f ], [ %i.v, %bb.d ], [ %i.v, %bb.g ]
  %i.az = and i32 %.0208, -2
  %i.ba = or disjoint i32 %.0207, 2
  %i.bb = add i32 %i.ba, %i.az
  %.val237 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %.val237, i64 %i.b
  store i32 %i.bb, ptr %i.bc, align 1
  %i.bd = zext i32 %.1212 to i64                  ; 3 uses
  %.val224 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %.val224, i64 %i.bd
  %.0.copyload.i246 = load i32, ptr %i.be, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i246) #8, !srcloc !14
  %.not222 = icmp eq i32 %.0.copyload.i246, -4
  br i1 %.not222, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.bf = add nuw nsw i64 %i.b, 4                 ; 2 uses
  %.val223 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %.val223, i64 %i.bf
  %.0.copyload.i247 = load i32, ptr %i.bg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i247) #8, !srcloc !14
  %i.bh = add i32 %.0.copyload.i247, -1
  %.val236 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %.val236, i64 %i.bf
  store i32 %i.bh, ptr %i.bi, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  %i.bj = zext i32 %3 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bj
  %.0.copyload.i248 = load i32, ptr %i.bk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i248) #8, !srcloc !14
  %.val235 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %.val235, i64 %i.bd
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 0, ptr %i.bm, align 1
  %.val234 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bn = getelementptr inbounds nuw i8, ptr %.val234, i64 %i.bd
  store i32 %.0.copyload.i248, ptr %i.bn, align 1
  ret i32 %.1212
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x3E0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3ABasicBlock0x2A0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x20const0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 43 uses
  %i.b = zext i32 %1 to i64                       ; 7 uses
  %i.c = add nuw nsw i64 %i.b, 4                  ; 4 uses
  %.val403 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val403, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = shl i32 %.0.copyload.i, 2
  %i.f = add i32 %i.e, 4
  %i.g = add nuw nsw i64 %i.b, 12                 ; 4 uses
  %.val402 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val402, i64 %i.g
  %.0.copyload.i427 = load i32, ptr %i.h, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i427) #8, !srcloc !14
  %i.i = mul i32 %.0.copyload.i427, 3
  %.not = icmp ult i32 %i.f, %i.i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = shl i32 %.0.copyload.i427, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = xor i32 %.0.copyload.i, -1
  %i.l = add i32 %.0.copyload.i427, %i.k
  %.val401 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val401, i64 %i.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.copyload.i428 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i428) #8, !srcloc !14
  %i.o = sub i32 %i.l, %.0.copyload.i428
  %i.p = lshr i32 %.0.copyload.i427, 3
  %i.q = icmp ugt i32 %i.o, %i.p
  br i1 %i.q, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0376 = phi i32 [ %i.j, %bb.b ], [ %.0.copyload.i427, %bb.c ]
  %i.r = add i32 %.0376, -1
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = lshr i64 %i.s, 1
  %i.u = or i64 %i.t, %i.s                        ; 2 uses
  %i.v = lshr i64 %i.u, 2
  %i.w = or i64 %i.v, %i.u                        ; 2 uses
  %i.x = lshr i64 %i.w, 4
  %i.y = or i64 %i.x, %i.w                        ; 2 uses
  %i.z = lshr i64 %i.y, 8
  %i.aa = or i64 %i.z, %i.y                       ; 2 uses
  %i.ab = lshr i64 %i.aa, 16
  %i.ac = or i64 %i.ab, %i.aa
  %i.ad = trunc nuw i64 %i.ac to i32
  %i.ae = add i32 %i.ad, 1
  %4 = tail call i32 @llvm.umax.i32(i32 %i.ae, i32 64) ; 2 uses
  %.val418 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %.val418, i64 %i.g
  store i32 %4, ptr %i.af, align 1
  %.val400 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.val400, i64 %i.b
  %.0.copyload.i429 = load i32, ptr %i.ag, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i429) #8, !srcloc !14
  %i.ah = shl i32 %4, 6
  %i.ai = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ah) #8 ; 13 uses
  %.val417 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %.val417, i64 %i.b
  store i32 %i.ai, ptr %i.aj, align 1
  %.not383 = icmp eq i32 %.0.copyload.i429, 0
  br i1 %.not383, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.val426 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val426, i64 %i.c
  store i64 0, ptr %i.ak, align 1
  %.val399 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val399, i64 %i.g
  %.0.copyload.i430 = load i32, ptr %i.al, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i430) #8, !srcloc !14
  %i.am = add i32 %.0.copyload.i430, 67108863
  %i.an = and i32 %i.am, 67108863
  %i.ao = and i32 %.0.copyload.i430, 7            ; 7 uses
  %.not384 = icmp eq i32 %i.ao, 0
  br i1 %.not384, label %.loopexit442, label %.preheader441

.preheader441:                                    ; preds = %bb.e
  %i.ap = zext i32 %i.ai to i64
  %.val416 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %.val416, i64 %i.ap
  store i32 -4, ptr %i.aq, align 1
  %i.ar = add i32 %i.ai, 64                       ; 2 uses
  %.not385 = icmp eq i32 %i.ao, 1
  br i1 %.not385, label %.loopexit442, label %.preheader441.1

.preheader441.1:                                  ; preds = %.preheader441
  %i.as = zext i32 %i.ar to i64
  %.val416.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val416.1, i64 %i.as
  store i32 -4, ptr %i.at, align 1
  %i.au = add i32 %i.ai, 128                      ; 2 uses
  %.not385.1 = icmp eq i32 %i.ao, 2
  br i1 %.not385.1, label %.loopexit442, label %.preheader441.2

.preheader441.2:                                  ; preds = %.preheader441.1
  %i.av = zext i32 %i.au to i64
  %.val416.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %.val416.2, i64 %i.av
  store i32 -4, ptr %i.aw, align 1
  %i.ax = add i32 %i.ai, 192                      ; 2 uses
  %.not385.2 = icmp eq i32 %i.ao, 3
  br i1 %.not385.2, label %.loopexit442, label %.preheader441.3

.preheader441.3:                                  ; preds = %.preheader441.2
  %i.ay = zext i32 %i.ax to i64
  %.val416.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %.val416.3, i64 %i.ay
  store i32 -4, ptr %i.az, align 1
  %i.ba = add i32 %i.ai, 256                      ; 2 uses
  %.not385.3 = icmp eq i32 %i.ao, 4
  br i1 %.not385.3, label %.loopexit442, label %.preheader441.4

.preheader441.4:                                  ; preds = %.preheader441.3
  %i.bb = zext i32 %i.ba to i64
  %.val416.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %.val416.4, i64 %i.bb
  store i32 -4, ptr %i.bc, align 1
  %i.bd = add i32 %i.ai, 320                      ; 2 uses
  %.not385.4 = icmp eq i32 %i.ao, 5
  br i1 %.not385.4, label %.loopexit442, label %.preheader441.5

.preheader441.5:                                  ; preds = %.preheader441.4
  %i.be = zext i32 %i.bd to i64
  %.val416.5 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.val416.5, i64 %i.be
  store i32 -4, ptr %i.bf, align 1
  %i.bg = add i32 %i.ai, 384                      ; 2 uses
  %.not385.5 = icmp eq i32 %i.ao, 6
  br i1 %.not385.5, label %.loopexit442, label %.preheader441.6

.preheader441.6:                                  ; preds = %.preheader441.5
  %i.bh = zext i32 %i.bg to i64
  %.val416.6 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %.val416.6, i64 %i.bh
  store i32 -4, ptr %i.bi, align 1
  %i.bj = add i32 %i.ai, 448
  br label %.loopexit442

.loopexit442:                                     ; preds = %.preheader441, %.preheader441.1, %.preheader441.2, %.preheader441.3, %.preheader441.4, %.preheader441.5, %.preheader441.6, %bb.e
  %.1 = phi i32 [ %i.ai, %bb.e ], [ %i.ar, %.preheader441 ], [ %i.au, %.preheader441.1 ], [ %i.ax, %.preheader441.2 ], [ %i.ba, %.preheader441.3 ], [ %i.bd, %.preheader441.4 ], [ %i.bg, %.preheader441.5 ], [ %i.bj, %.preheader441.6 ]
  %i.bk = icmp samesign ult i32 %i.an, 7
  br i1 %i.bk, label %.loopexit440, label %bb.f

bb.f:                                             ; preds = %.loopexit442
  %i.bl = shl i32 %.0.copyload.i430, 6
  %i.bm = add i32 %i.bl, %i.ai
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.2 = phi i32 [ %.1, %bb.f ], [ %i.cd, %bb.g ]  ; 2 uses
  %i.bn = zext i32 %.2 to i64                     ; 8 uses
  %.val415 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %.val415, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 448
  store i32 -4, ptr %i.bp, align 1
  %.val414 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %.val414, i64 %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 384
  store i32 -4, ptr %i.br, align 1
  %.val413 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %.val413, i64 %i.bn
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 320
  store i32 -4, ptr %i.bt, align 1
  %.val412 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val412, i64 %i.bn
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 256
  store i32 -4, ptr %i.bv, align 1
  %.val411 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %.val411, i64 %i.bn
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 192
  store i32 -4, ptr %i.bx, align 1
  %.val410 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %.val410, i64 %i.bn
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 128
  store i32 -4, ptr %i.bz, align 1
  %.val409 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %.val409, i64 %i.bn
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  store i32 -4, ptr %i.cb, align 1
  %.val408 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %.val408, i64 %i.bn
  store i32 -4, ptr %i.cc, align 1
  %i.cd = add i32 %.2, 512                        ; 2 uses
  %.not386 = icmp eq i32 %i.cd, %i.bm
  br i1 %.not386, label %.loopexit440, label %bb.g

bb.h:                                             ; preds = %bb.d
  %i.ce = shl i32 %.0.copyload.i427, 6
  %i.cf = add i32 %.0.copyload.i429, %i.ce
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x3E0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x3E0x3A0x3AmoveFromOldBuckets0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0.copyload.i429, i32 noundef %i.cf)
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i429) #8
  %.val398 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %.val398, i64 %i.b
  %.0.copyload.i431 = load i32, ptr %i.cg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i431) #8, !srcloc !14
  %.val397 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %.val397, i64 %i.g
  %.0.copyload.i432 = load i32, ptr %i.ch, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i432) #8, !srcloc !14
  br label %.loopexit440

.loopexit440:                                     ; preds = %bb.g, %.loopexit442, %bb.h
  %.1377 = phi i32 [ %i.ai, %.loopexit442 ], [ %.0.copyload.i431, %bb.h ], [ %i.ai, %bb.g ] ; 2 uses
  %.0374 = phi i32 [ %.0.copyload.i430, %.loopexit442 ], [ %.0.copyload.i432, %bb.h ], [ %.0.copyload.i430, %bb.g ]
  %i.ci = zext i32 %3 to i64
  %.val396 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cj = getelementptr inbounds nuw i8, ptr %.val396, i64 %i.ci
  %.0.copyload.i433 = load i32, ptr %i.cj, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i433) #8, !srcloc !14
  %i.ck = add i32 %.0374, -1                      ; 2 uses
  %i.cl = lshr i32 %.0.copyload.i433, 4
  %i.cm = lshr i32 %.0.copyload.i433, 9
  %i.cn = xor i32 %i.cl, %i.cm
  %i.co = and i32 %i.cn, %i.ck                    ; 2 uses
  %i.cp = shl i32 %i.co, 6
  %i.cq = add i32 %i.cp, %.1377                   ; 3 uses
  %i.cr = zext i32 %i.cq to i64
  %.val395 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cs = getelementptr inbounds nuw i8, ptr %.val395, i64 %i.cr
  %.0.copyload.i434 = load i32, ptr %i.cs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i434) #8, !srcloc !14
  %i.ct = icmp eq i32 %.0.copyload.i433, %.0.copyload.i434
  br i1 %i.ct, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit440, %bb.j
  %.1375 = phi i32 [ %i.db, %bb.j ], [ %i.co, %.loopexit440 ]
  %.0373 = phi i32 [ %i.cy, %bb.j ], [ 0, %.loopexit440 ] ; 3 uses
  %.0372 = phi i32 [ %.0.copyload.i435, %bb.j ], [ %.0.copyload.i434, %.loopexit440 ] ; 2 uses
  %.0371 = phi i32 [ %i.da, %bb.j ], [ 1, %.loopexit440 ] ; 2 uses
  %.3 = phi i32 [ %i.dd, %bb.j ], [ %i.cq, %.loopexit440 ] ; 2 uses
  %i.cu = icmp eq i32 %.0372, -4
  %.not389 = icmp eq i32 %.0373, 0                ; 2 uses
  br i1 %i.cu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader
  %i.cv = select i1 %.not389, i32 %.3, i32 %.0373
  br label %bb.k

bb.j:                                             ; preds = %.preheader
  %i.cw = icmp eq i32 %.0372, -8
  %i.cx = select i1 %i.cw, i1 %.not389, i1 false
  %i.cy = select i1 %i.cx, i32 %.3, i32 %.0373
  %i.cz = add i32 %.0371, %.1375
  %i.da = add i32 %.0371, 1
  %i.db = and i32 %i.cz, %i.ck                    ; 2 uses
  %i.dc = shl i32 %i.db, 6
  %i.dd = add i32 %i.dc, %.1377                   ; 3 uses
  %i.de = zext i32 %i.dd to i64
  %.val394 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.df = getelementptr inbounds nuw i8, ptr %.val394, i64 %i.de
  %.0.copyload.i435 = load i32, ptr %i.df, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i435) #8, !srcloc !14
  %.not388 = icmp eq i32 %.0.copyload.i433, %.0.copyload.i435
  br i1 %.not388, label %.loopexit, label %.preheader

end_hunk_13
begin_hunk_14_@w2c_hermes_llvh0x3A0x3Areport_fatal_error0x28llvh0x3A0x3ATwine0x20const0x260x2C0x20bool0x29:bb.a
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !23
  %i.ee = zext i32 %.0.copyload.i362 to i64
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %i.ee ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !24 ; 2 uses
  %.not294 = icmp eq ptr %i.eh, null
  br i1 %.not294, label %.critedge298, label %bb.u, !prof !26

bb.u:                                             ; preds = %bb.t
  %i.ei = load ptr, ptr @w2c_hermes_t15, align 8, !tbaa !27 ; 4 uses
  %i.ej = load ptr, ptr %i.ef, align 8, !tbaa !28 ; 4 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %func_types_eq.exit366.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.el = icmp ne ptr %i.ei, null
  %i.em = icmp ne ptr %i.ej, null
  %or.cond.i363 = and i1 %i.el, %i.em
  br i1 %or.cond.i363, label %func_types_eq.exit366, label %.critedge298, !prof !29

func_types_eq.exit366:                            ; preds = %bb.v
  %i.en = load i128, ptr %i.ei, align 1
  %i.eo = load i128, ptr %i.ej, align 1
  %i.ep = xor i128 %i.en, %i.eo
  %i.eq = getelementptr i8, ptr %i.ei, i64 16
  %i.er = getelementptr i8, ptr %i.ej, i64 16
  %i.es = load i128, ptr %i.eq, align 1
  %i.et = load i128, ptr %i.er, align 1
  %i.eu = xor i128 %i.es, %i.et
  %i.ev = or i128 %i.ep, %i.eu
  %i.ew = icmp ne i128 %i.ev, 0
  %i.ex = zext i1 %i.ew to i32
  %.not.i365 = icmp eq i32 %i.ex, 0
  br i1 %.not.i365, label %func_types_eq.exit366.thread, label %.critedge298, !prof !30

.critedge298:                                     ; preds = %bb.v, %bb.t, %bb.s, %func_types_eq.exit366
  tail call void @wasm_rt_trap(i32 noundef 6) #9
  unreachable

func_types_eq.exit366.thread:                     ; preds = %bb.u, %func_types_eq.exit366
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !31
  tail call void %i.eh(ptr noundef %i.ez) #8
  br label %bb.w

bb.w:                                             ; preds = %func_types_eq.exit366.thread, %bb.r
  %.val305 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.fa = getelementptr inbounds nuw i8, ptr %.val305, i64 273188
  %.0.copyload.i367 = load i32, ptr %i.fa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i367) #8, !srcloc !14
  %.not295 = icmp eq i32 %.0.copyload.i367, 0
  br i1 %.not295, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.w, %.preheader
  %.0 = phi i32 [ %.0.copyload.i368, %.preheader ], [ %.0.copyload.i367, %bb.w ] ; 2 uses
  tail call void @w2c_hermes_close_file(ptr noundef nonnull %0, i32 noundef %.0) #8
  %i.fb = zext i32 %.0 to i64
  %.val304 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.fc = getelementptr inbounds nuw i8, ptr %.val304, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 56
  %.0.copyload.i368 = load i32, ptr %i.fd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i368) #8, !srcloc !14
  %.not296 = icmp eq i32 %.0.copyload.i368, 0
  br i1 %.not296, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.w
  %.val303 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.fe = getelementptr inbounds nuw i8, ptr %.val303, i64 273192
  %.0.copyload.i369 = load i32, ptr %i.fe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i369) #8, !srcloc !14
  tail call void @w2c_hermes_close_file(ptr noundef nonnull %0, i32 noundef %.0.copyload.i369) #8
  %.val302 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ff = getelementptr inbounds nuw i8, ptr %.val302, i64 273192
  %.0.copyload.i370 = load i32, ptr %i.ff, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i370) #8, !srcloc !14
  tail call void @w2c_hermes_close_file(ptr noundef nonnull %0, i32 noundef %.0.copyload.i370) #8
  %.val301 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.fg = getelementptr inbounds nuw i8, ptr %.val301, i64 261696
  %.0.copyload.i371 = load i32, ptr %i.fg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i371) #8, !srcloc !14
  tail call void @w2c_hermes_close_file(ptr noundef nonnull %0, i32 noundef %.0.copyload.i371) #8
  tail call void @w2c_hermes_0x5FExit(ptr noundef nonnull %0) #8
  tail call void @wasm_rt_trap(i32 noundef 5) #9
  unreachable
}

declare void @w2c_hermes_close_file(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_0x5FExit(ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3Areport_fatal_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.e = zext i32 %i.c to i64                     ; 3 uses
  %.val29 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %.val29, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 13
  store i8 1, ptr %i.g, align 1
  %i.h = zext i32 %1 to i64
  %.val = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %.0.copyload.i = load i8, ptr %i.i, align 1     ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i) #8, !srcloc !13
  %.not = icmp eq i8 %.0.copyload.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val30 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %.val30, i64 %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %1, ptr %i.k, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ 3, %bb.b ], [ 1, %bb.a ]
  %.val28 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %.val28, i64 %i.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i8 %.0, ptr %i.m, align 1
  %i.n = add i32 %i.b, -12
  tail call void @w2c_hermes_llvh0x3A0x3Areport_fatal_error0x28llvh0x3A0x3ATwine0x20const0x260x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef %i.n, i32 noundef 1)
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @w2c_hermes_llvh0x3A0x3Araw_ostream0x3A0x3Apreferred_buffer_size0x280x290x20const(ptr noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  ret i32 1024
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Chermes0x3A0x3AInstruction0x2A0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ASmallDenseMap0x3Chermes0x3A0x3AInstruction0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x2016u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AInstruction0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Chermes0x3A0x3AInstruction0x2A0x3E0x3E0x2C0x20hermes0x3A0x3AInstruction0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AInstruction0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Chermes0x3A0x3AInstruction0x2A0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3AInstruction0x2A0x20const0x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Chermes0x3A0x3AInstruction0x2A0x3E0x2A0x2C0x20hermes0x3A0x3AInstruction0x2A0x20const0x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 56 uses
  %i.b = zext i32 %1 to i64                       ; 26 uses
  %.val655 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %.val655, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.d = lshr i32 %.0.copyload.i, 1               ; 2 uses
  %i.e = shl i32 %i.d, 2
  %i.f = add i32 %i.e, 4
  %i.g = add nuw nsw i64 %i.b, 12                 ; 6 uses
  %.val654 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val654, i64 %i.g
  %.0.copyload.i681 = load i32, ptr %i.h, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i681) #8, !srcloc !14
  %i.i = and i32 %.0.copyload.i, 1                ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  %i.j = select i1 %.not, i32 %.0.copyload.i681, i32 16 ; 5 uses
  %i.k = mul i32 %i.j, 3
  %.not617 = icmp ult i32 %i.f, %i.k
  br i1 %.not617, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = shl i32 %i.j, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = xor i32 %i.d, -1
  %i.n = add i32 %i.j, %i.m
  %.val653 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %.val653, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.0.copyload.i682 = load i32, ptr %i.p, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i682) #8, !srcloc !14
  %i.q = sub i32 %i.n, %.0.copyload.i682
  %i.r = lshr i32 %i.j, 3
  %i.s = icmp ugt i32 %i.q, %i.r
  br i1 %i.s, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0607 = phi i32 [ %i.l, %bb.b ], [ %i.j, %bb.c ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !15   ; 3 uses
  %i.v = add i32 %i.u, -64                        ; 5 uses
  store i32 %i.v, ptr %i.t, align 8, !tbaa !15
  %i.w = icmp ugt i32 %.0607, 15
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = add i32 %.0607, -1
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = lshr i64 %i.y, 1
  %i.aa = or i64 %i.z, %i.y                       ; 2 uses
  %i.ab = lshr i64 %i.aa, 2
  %i.ac = or i64 %i.ab, %i.aa                     ; 2 uses
  %i.ad = lshr i64 %i.ac, 4
  %i.ae = or i64 %i.ad, %i.ac                     ; 2 uses
  %i.af = lshr i64 %i.ae, 8
  %i.ag = or i64 %i.af, %i.ae                     ; 2 uses
  %i.ah = lshr i64 %i.ag, 16
  %i.ai = or i64 %i.ah, %i.ag
  %i.aj = trunc nuw i64 %i.ai to i32
  %i.ak = add i32 %i.aj, 1
  %4 = tail call i32 @llvm.umax.i32(i32 %i.ak, i32 64)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1608 = phi i32 [ %4, %bb.e ], [ %.0607, %bb.d ] ; 6 uses
  %.val652 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val652, i64 %i.b
  %.0.copyload.i683 = load i32, ptr %i.al, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i683) #8, !srcloc !14
  %i.am = and i32 %.0.copyload.i683, 1
  %.not618 = icmp eq i32 %i.am, 0
  br i1 %.not618, label %bb.ao, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = icmp ult i32 %.1608, 16
  br i1 %i.an, label %bb.as, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = add nuw nsw i64 %i.b, 8                 ; 2 uses
  %.val651 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.val651, i64 %i.ao
  %.0.copyload.i684 = load i32, ptr %i.ap, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i684) #8, !srcloc !14
  switch i32 %.0.copyload.i684, label %bb.i [
    i32 -8, label %bb.j
    i32 -4, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.aq = zext i32 %i.v to i64
  %.val680 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %.val680, i64 %i.aq
  store i32 %.0.copyload.i684, ptr %i.ar, align 1
  %i.as = add i32 %i.u, -60
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.h, %bb.i
  %.0 = phi i32 [ %i.as, %bb.i ], [ %i.v, %bb.h ], [ %i.v, %bb.h ] ; 4 uses
  %.val650 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val650, i64 %i.g
  %.0.copyload.i685 = load i32, ptr %i.at, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i685) #8, !srcloc !14
  switch i32 %.0.copyload.i685, label %bb.k [
    i32 -8, label %bb.l
    i32 -4, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.au = zext i32 %.0 to i64
  %.val679 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val679, i64 %i.au
  store i32 %.0.copyload.i685, ptr %i.av, align 1
  %i.aw = add i32 %.0, 4
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.j, %bb.k
  %.1 = phi i32 [ %i.aw, %bb.k ], [ %.0, %bb.j ], [ %.0, %bb.j ] ; 4 uses
  %.val649 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %.val649, i64 %i.b
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.0.copyload.i686 = load i32, ptr %i.ay, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i686) #8, !srcloc !14
  switch i32 %.0.copyload.i686, label %bb.m [
    i32 -8, label %bb.n
    i32 -4, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.az = zext i32 %.1 to i64
  %.val678 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %.val678, i64 %i.az
  store i32 %.0.copyload.i686, ptr %i.ba, align 1
  %i.bb = add i32 %.1, 4
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.l, %bb.m
  %.2 = phi i32 [ %i.bb, %bb.m ], [ %.1, %bb.l ], [ %.1, %bb.l ] ; 4 uses
  %.val648 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %.val648, i64 %i.b
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  %.0.copyload.i687 = load i32, ptr %i.bd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i687) #8, !srcloc !14
  switch i32 %.0.copyload.i687, label %bb.o [
    i32 -8, label %bb.p
    i32 -4, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.be = zext i32 %.2 to i64
  %.val677 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.val677, i64 %i.be
  store i32 %.0.copyload.i687, ptr %i.bf, align 1
  %i.bg = add i32 %.2, 4
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.n, %bb.o
  %.3 = phi i32 [ %i.bg, %bb.o ], [ %.2, %bb.n ], [ %.2, %bb.n ] ; 4 uses
  %.val647 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %.val647, i64 %i.b
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %.0.copyload.i688 = load i32, ptr %i.bi, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i688) #8, !srcloc !14
  switch i32 %.0.copyload.i688, label %bb.q [
    i32 -8, label %bb.r
    i32 -4, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.bj = zext i32 %.3 to i64
  %.val676 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %.val676, i64 %i.bj
  store i32 %.0.copyload.i688, ptr %i.bk, align 1
  %i.bl = add i32 %.3, 4
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.p, %bb.q
  %.4 = phi i32 [ %i.bl, %bb.q ], [ %.3, %bb.p ], [ %.3, %bb.p ] ; 4 uses
  %.val646 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %.val646, i64 %i.b
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 28
  %.0.copyload.i689 = load i32, ptr %i.bn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i689) #8, !srcloc !14
  switch i32 %.0.copyload.i689, label %bb.s [
    i32 -8, label %bb.t
    i32 -4, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.bo = zext i32 %.4 to i64
  %.val675 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %.val675, i64 %i.bo
  store i32 %.0.copyload.i689, ptr %i.bp, align 1
  %i.bq = add i32 %.4, 4
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.r, %bb.s
  %.5 = phi i32 [ %i.bq, %bb.s ], [ %.4, %bb.r ], [ %.4, %bb.r ] ; 4 uses
  %.val645 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.br = getelementptr inbounds nuw i8, ptr %.val645, i64 %i.b
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %.0.copyload.i690 = load i32, ptr %i.bs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i690) #8, !srcloc !14
  switch i32 %.0.copyload.i690, label %bb.u [
    i32 -8, label %bb.v
    i32 -4, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.bt = zext i32 %.5 to i64
  %.val674 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val674, i64 %i.bt
  store i32 %.0.copyload.i690, ptr %i.bu, align 1
  %i.bv = add i32 %.5, 4
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.t, %bb.u
  %.6 = phi i32 [ %i.bv, %bb.u ], [ %.5, %bb.t ], [ %.5, %bb.t ] ; 4 uses
  %.val644 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %.val644, i64 %i.b
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 36
  %.0.copyload.i691 = load i32, ptr %i.bx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i691) #8, !srcloc !14
  switch i32 %.0.copyload.i691, label %bb.w [
    i32 -8, label %bb.x
    i32 -4, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.by = zext i32 %.6 to i64
  %.val673 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bz = getelementptr inbounds nuw i8, ptr %.val673, i64 %i.by
  store i32 %.0.copyload.i691, ptr %i.bz, align 1
  %i.ca = add i32 %.6, 4
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.v, %bb.w
  %.7 = phi i32 [ %i.ca, %bb.w ], [ %.6, %bb.v ], [ %.6, %bb.v ] ; 4 uses
  %.val643 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cb = getelementptr inbounds nuw i8, ptr %.val643, i64 %i.b
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %.0.copyload.i692 = load i32, ptr %i.cc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i692) #8, !srcloc !14
  switch i32 %.0.copyload.i692, label %bb.y [
    i32 -8, label %bb.z
    i32 -4, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.cd = zext i32 %.7 to i64
  %.val672 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ce = getelementptr inbounds nuw i8, ptr %.val672, i64 %i.cd
  store i32 %.0.copyload.i692, ptr %i.ce, align 1
  %i.cf = add i32 %.7, 4
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.x, %bb.y
  %.8 = phi i32 [ %i.cf, %bb.y ], [ %.7, %bb.x ], [ %.7, %bb.x ] ; 4 uses
  %.val642 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %.val642, i64 %i.b
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 44
  %.0.copyload.i693 = load i32, ptr %i.ch, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i693) #8, !srcloc !14
  switch i32 %.0.copyload.i693, label %bb.aa [
    i32 -8, label %bb.ab
    i32 -4, label %bb.ab
end_hunk_14
begin_hunk_15_@w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ASmallDenseMap0x3Chermes0x3A0x3AInstruction0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x2016u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AInstruction0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Chermes0x3A0x3AInstruction0x2A0x3E0x3E0x2C0x20hermes0x3A0x3AInstruction0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetEmpty0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AInstruction0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Chermes0x3A0x3AInstruction0x2A0x3E0x3E0x3A0x3AmoveFromOldBuckets0x28llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Chermes0x3A0x3AInstruction0x2A0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseSetPair0x3Chermes0x3A0x3AInstruction0x2A0x3E0x2A0x29:bb.a
  %.not252 = icmp eq i32 %.0.copyload.i275, %.0.copyload.i280
  br i1 %.not252, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.g, %bb.e, %bb.f
  %.pre-phi = phi i64 [ %.pre, %bb.f ], [ %i.bo, %bb.e ], [ %i.cb, %bb.g ]
  %.val265 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cd = getelementptr inbounds nuw i8, ptr %.val265, i64 %.pre-phi
  store i32 %.0.copyload.i275, ptr %i.cd, align 1
  %.val255 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ce = getelementptr inbounds nuw i8, ptr %.val255, i64 %i.b
  %.0.copyload.i281 = load i32, ptr %i.ce, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i281) #8, !srcloc !14
  %i.cf = add i32 %.0.copyload.i281, 2
  %.val264 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %.val264, i64 %i.b
  store i32 %i.cf, ptr %i.cg, align 1
  br label %bb.h

bb.h:                                             ; preds = %.preheader282, %.preheader282, %.loopexit
  %i.ch = add i32 %.0, 4                          ; 2 uses
  %.not254 = icmp eq i32 %i.ch, %3
  br i1 %.not254, label %.loopexit283, label %.preheader282

.loopexit283:                                     ; preds = %bb.h, %.loopexit284
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20long0x2C0x20unsigned0x20int0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Cunsigned0x20long0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cunsigned0x20long0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20long0x2C0x20unsigned0x20int0x3E0x3E0x2C0x20unsigned0x20long0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cunsigned0x20long0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20long0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3AInsertIntoBucket0x3Cunsigned0x20long0x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20long0x2C0x20unsigned0x20int0x3E0x2A0x2C0x20unsigned0x20long0x260x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.b = zext i32 %1 to i64                       ; 5 uses
  %i.c = add nuw nsw i64 %i.b, 4                  ; 3 uses
  %.val192 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val192, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = shl i32 %.0.copyload.i, 2
  %i.f = add i32 %i.e, 4
  %i.g = add nuw nsw i64 %i.b, 12                 ; 2 uses
  %.val191 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val191, i64 %i.g
  %.0.copyload.i197 = load i32, ptr %i.h, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i197) #8, !srcloc !14
  %i.i = mul i32 %.0.copyload.i197, 3
  %.not = icmp ult i32 %i.f, %i.i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = shl i32 %.0.copyload.i197, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = xor i32 %.0.copyload.i, -1
  %i.l = add i32 %.0.copyload.i197, %i.k
  %.val190 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val190, i64 %i.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.copyload.i198 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i198) #8, !srcloc !14
  %i.o = sub i32 %i.l, %.0.copyload.i198
  %i.p = lshr i32 %.0.copyload.i197, 3
  %i.q = icmp ugt i32 %i.o, %i.p
  br i1 %i.q, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0171 = phi i32 [ %i.j, %bb.b ], [ %.0.copyload.i197, %bb.c ]
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Cunsigned0x20long0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cunsigned0x20long0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20long0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0171)
  %i.r = zext i32 %3 to i64
  %.val189 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.val189, i64 %i.r
  %.0.copyload.i199 = load i32, ptr %i.s, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i199) #8, !srcloc !14
  %.val188 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val188, i64 %i.b
  %.0.copyload.i200 = load i32, ptr %i.t, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i200) #8, !srcloc !14
  %.val187 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val187, i64 %i.g
  %.0.copyload.i201 = load i32, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i201) #8, !srcloc !14
  %i.v = add i32 %.0.copyload.i201, -1            ; 2 uses
  %i.w = mul i32 %.0.copyload.i199, 37
  %i.x = and i32 %i.v, %i.w                       ; 2 uses
  %i.y = shl i32 %i.x, 3
  %i.z = add i32 %i.y, %.0.copyload.i200          ; 3 uses
  %i.aa = zext i32 %i.z to i64
  %.val186 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %.val186, i64 %i.aa
  %.0.copyload.i202 = load i32, ptr %i.ab, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i202) #8, !srcloc !14
  %i.ac = icmp eq i32 %.0.copyload.i199, %.0.copyload.i202
  br i1 %i.ac, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.f
  %.0172 = phi i32 [ %i.am, %bb.f ], [ %i.z, %bb.d ] ; 2 uses
  %.0170 = phi i32 [ %i.ah, %bb.f ], [ 0, %bb.d ] ; 3 uses
  %.0169 = phi i32 [ %.0.copyload.i203, %bb.f ], [ %.0.copyload.i202, %bb.d ] ; 2 uses
  %.0168 = phi i32 [ %i.aj, %bb.f ], [ 1, %bb.d ] ; 2 uses
  %.0 = phi i32 [ %i.ak, %bb.f ], [ %i.x, %bb.d ]
  %i.ad = icmp eq i32 %.0169, -1
  %.not180 = icmp eq i32 %.0170, 0                ; 2 uses
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader
  %i.ae = select i1 %.not180, i32 %.0172, i32 %.0170
  br label %bb.g

bb.f:                                             ; preds = %.preheader
  %i.af = icmp eq i32 %.0169, -2
  %i.ag = select i1 %i.af, i1 %.not180, i1 false
  %i.ah = select i1 %i.ag, i32 %.0172, i32 %.0170
  %i.ai = add i32 %.0, %.0168
  %i.aj = add i32 %.0168, 1
  %i.ak = and i32 %i.ai, %i.v                     ; 2 uses
  %i.al = shl i32 %i.ak, 3
  %i.am = add i32 %i.al, %.0.copyload.i200        ; 3 uses
  %i.an = zext i32 %i.am to i64
  %.val185 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.val185, i64 %i.an
  %.0.copyload.i203 = load i32, ptr %i.ao, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i203) #8, !srcloc !14
  %.not179 = icmp eq i32 %.0.copyload.i199, %.0.copyload.i203
  br i1 %.not179, label %.loopexit, label %.preheader

bb.g:                                             ; preds = %bb.c, %bb.e
  %.1173 = phi i32 [ %i.ae, %bb.e ], [ %2, %bb.c ] ; 2 uses
  %i.ap = zext i32 %.1173 to i64
  %.val184 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %.val184, i64 %i.ap
  %.0.copyload.i204 = load i32, ptr %i.aq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i204) #8, !srcloc !14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.d, %bb.g
  %.2 = phi i32 [ %i.z, %bb.d ], [ %.1173, %bb.g ], [ %i.am, %bb.f ] ; 2 uses
  %.1 = phi i32 [ %.0.copyload.i199, %bb.d ], [ %.0.copyload.i204, %bb.g ], [ %.0.copyload.i199, %bb.f ]
  %.val183 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %.val183, i64 %i.c
  %.0.copyload.i205 = load i32, ptr %i.ar, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i205) #8, !srcloc !14
  %i.as = add i32 %.0.copyload.i205, 1
  %.val196 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val196, i64 %i.c
  store i32 %i.as, ptr %i.at, align 1
  %.not181 = icmp eq i32 %.1, -1
  br i1 %.not181, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.au = add nuw nsw i64 %i.b, 8                 ; 2 uses
  %.val182 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val182, i64 %i.au
  %.0.copyload.i206 = load i32, ptr %i.av, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i206) #8, !srcloc !14
  %i.aw = add i32 %.0.copyload.i206, -1
  %.val195 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %.val195, i64 %i.au
  store i32 %i.aw, ptr %i.ax, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  %i.ay = zext i32 %3 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ay
  %.0.copyload.i207 = load i32, ptr %i.az, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i207) #8, !srcloc !14
  %i.ba = zext i32 %.2 to i64                     ; 2 uses
  %.val194 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %.val194, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store i32 0, ptr %i.bc, align 1
  %.val193 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %.val193, i64 %i.ba
  store i32 %.0.copyload.i207, ptr %i.bd, align 1
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Cunsigned0x20long0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cunsigned0x20long0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20long0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 46 uses
  %i.b = zext i32 %1 to i64                       ; 5 uses
  %i.c = add nuw nsw i64 %i.b, 12                 ; 5 uses
  %.val409 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val409, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = add i32 %2, -1
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 4
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 8
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 16
  %i.p = or i64 %i.o, %i.n
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = add i32 %i.q, 1
  %3 = tail call i32 @llvm.umax.i32(i32 %i.r, i32 64) ; 2 uses
  %.val432 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.val432, i64 %i.c
  store i32 %3, ptr %i.s, align 1
  %.val408 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val408, i64 %i.b
  %.0.copyload.i435 = load i32, ptr %i.t, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i435) #8, !srcloc !14
  %i.u = shl i32 %3, 3
  %i.v = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef %0, i32 noundef %i.u) #8 ; 23 uses
  %.val431 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %.val431, i64 %i.b
  store i32 %i.v, ptr %i.w, align 1
  %.not = icmp eq i32 %.0.copyload.i435, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.val434 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %.val434, i64 %i.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i64 0, ptr %i.y, align 1
  %.val407 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val407, i64 %i.c
  %.0.copyload.i436 = load i32, ptr %i.z, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i436) #8, !srcloc !14
  %.not398 = icmp eq i32 %.0.copyload.i436, 0
  br i1 %.not398, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = and i32 %.0.copyload.i436, 7            ; 7 uses
  %.not399 = icmp eq i32 %i.aa, 0
  br i1 %.not399, label %.loopexit443, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.ab = zext i32 %i.v to i64
  %.val430 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.val430, i64 %i.ab
  store i32 -1, ptr %i.ac, align 1
  %i.ad = add i32 %i.v, 8                         ; 2 uses
  %.not400 = icmp eq i32 %i.aa, 1
  br i1 %.not400, label %.loopexit443, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %i.ae = zext i32 %i.ad to i64
  %.val430.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %.val430.1, i64 %i.ae
  store i32 -1, ptr %i.af, align 1
  %i.ag = add i32 %i.v, 16                        ; 2 uses
  %.not400.1 = icmp eq i32 %i.aa, 2
  br i1 %.not400.1, label %.loopexit443, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.ah = zext i32 %i.ag to i64
  %.val430.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %.val430.2, i64 %i.ah
  store i32 -1, ptr %i.ai, align 1
  %i.aj = add i32 %i.v, 24                        ; 2 uses
  %.not400.2 = icmp eq i32 %i.aa, 3
  br i1 %.not400.2, label %.loopexit443, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.ak = zext i32 %i.aj to i64
  %.val430.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val430.3, i64 %i.ak
  store i32 -1, ptr %i.al, align 1
  %i.am = add i32 %i.v, 32                        ; 2 uses
  %.not400.3 = icmp eq i32 %i.aa, 4
  br i1 %.not400.3, label %.loopexit443, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.an = zext i32 %i.am to i64
  %.val430.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.val430.4, i64 %i.an
  store i32 -1, ptr %i.ao, align 1
  %i.ap = add i32 %i.v, 40                        ; 2 uses
  %.not400.4 = icmp eq i32 %i.aa, 5
  br i1 %.not400.4, label %.loopexit443, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.aq = zext i32 %i.ap to i64
  %.val430.5 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %.val430.5, i64 %i.aq
  store i32 -1, ptr %i.ar, align 1
  %i.as = add i32 %i.v, 48                        ; 2 uses
  %.not400.5 = icmp eq i32 %i.aa, 6
  br i1 %.not400.5, label %.loopexit443, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.at = zext i32 %i.as to i64
  %.val430.6 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %.val430.6, i64 %i.at
  store i32 -1, ptr %i.au, align 1
  %i.av = add i32 %i.v, 56
  br label %.loopexit443

.loopexit443:                                     ; preds = %.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %bb.c
  %.1 = phi i32 [ %i.v, %bb.c ], [ %i.ad, %.preheader ], [ %i.ag, %.preheader.1 ], [ %i.aj, %.preheader.2 ], [ %i.am, %.preheader.3 ], [ %i.ap, %.preheader.4 ], [ %i.as, %.preheader.5 ], [ %i.av, %.preheader.6 ]
  %i.aw = add i32 %.0.copyload.i436, 536870911
  %i.ax = and i32 %i.aw, 536870911
  %i.ay = icmp samesign ult i32 %i.ax, 7
  br i1 %i.ay, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.loopexit443
  %i.az = shl i32 %.0.copyload.i436, 3
  %i.ba = add i32 %i.az, %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.2 = phi i32 [ %.1, %bb.d ], [ %i.br, %bb.e ]  ; 2 uses
  %i.bb = zext i32 %.2 to i64                     ; 8 uses
  %.val429 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %.val429, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  store i32 -1, ptr %i.bd, align 1
  %.val428 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %.val428, i64 %i.bb
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  store i32 -1, ptr %i.bf, align 1
  %.val427 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %.val427, i64 %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store i32 -1, ptr %i.bh, align 1
  %.val426 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %.val426, i64 %i.bb
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store i32 -1, ptr %i.bj, align 1
  %.val425 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %.val425, i64 %i.bb
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i32 -1, ptr %i.bl, align 1
  %.val424 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %.val424, i64 %i.bb
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i32 -1, ptr %i.bn, align 1
  %.val423 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %.val423, i64 %i.bb
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 -1, ptr %i.bp, align 1
  %.val422 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %.val422, i64 %i.bb
  store i32 -1, ptr %i.bq, align 1
  %i.br = add i32 %.2, 64                         ; 2 uses
  %.not401 = icmp eq i32 %i.br, %i.ba
  br i1 %.not401, label %.loopexit, label %bb.e

bb.f:                                             ; preds = %bb.a
  %i.bs = add nuw nsw i64 %i.b, 4                 ; 2 uses
  %.val433 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bt = getelementptr inbounds nuw i8, ptr %.val433, i64 %i.bs
  store i64 0, ptr %i.bt, align 1
  %.val406 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val406, i64 %i.c
  %.0.copyload.i437 = load i32, ptr %i.bu, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i437) #8, !srcloc !14
  %.not389 = icmp eq i32 %.0.copyload.i437, 0
  br i1 %.not389, label %.loopexit447, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = and i32 %.0.copyload.i437, 7            ; 7 uses
  %.not390 = icmp eq i32 %i.bv, 0
  br i1 %.not390, label %.loopexit449, label %.preheader448

.preheader448:                                    ; preds = %bb.g
  %i.bw = zext i32 %i.v to i64
  %.val421 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %.val421, i64 %i.bw
  store i32 -1, ptr %i.bx, align 1
  %i.by = add i32 %i.v, 8                         ; 2 uses
  %.not391 = icmp eq i32 %i.bv, 1
  br i1 %.not391, label %.loopexit449, label %.preheader448.1

.preheader448.1:                                  ; preds = %.preheader448
  %i.bz = zext i32 %i.by to i64
  %.val421.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %.val421.1, i64 %i.bz
  store i32 -1, ptr %i.ca, align 1
  %i.cb = add i32 %i.v, 16                        ; 2 uses
  %.not391.1 = icmp eq i32 %i.bv, 2
  br i1 %.not391.1, label %.loopexit449, label %.preheader448.2

.preheader448.2:                                  ; preds = %.preheader448.1
  %i.cc = zext i32 %i.cb to i64
  %.val421.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cd = getelementptr inbounds nuw i8, ptr %.val421.2, i64 %i.cc
  store i32 -1, ptr %i.cd, align 1
  %i.ce = add i32 %i.v, 24                        ; 2 uses
  %.not391.2 = icmp eq i32 %i.bv, 3
  br i1 %.not391.2, label %.loopexit449, label %.preheader448.3

.preheader448.3:                                  ; preds = %.preheader448.2
  %i.cf = zext i32 %i.ce to i64
  %.val421.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %.val421.3, i64 %i.cf
  store i32 -1, ptr %i.cg, align 1
  %i.ch = add i32 %i.v, 32                        ; 2 uses
  %.not391.3 = icmp eq i32 %i.bv, 4
  br i1 %.not391.3, label %.loopexit449, label %.preheader448.4

.preheader448.4:                                  ; preds = %.preheader448.3
  %i.ci = zext i32 %i.ch to i64
  %.val421.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cj = getelementptr inbounds nuw i8, ptr %.val421.4, i64 %i.ci
  store i32 -1, ptr %i.cj, align 1
  %i.ck = add i32 %i.v, 40                        ; 2 uses
  %.not391.4 = icmp eq i32 %i.bv, 5
  br i1 %.not391.4, label %.loopexit449, label %.preheader448.5

.preheader448.5:                                  ; preds = %.preheader448.4
  %i.cl = zext i32 %i.ck to i64
end_hunk_15
begin_hunk_16_@w2c_hermes_llvh0x3A0x3ADenseMap0x3Cunsigned0x20long0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cunsigned0x20long0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20long0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29:bb.a

bb.i:                                             ; preds = %bb.i, %bb.h
  %.5 = phi i32 [ %.4, %bb.h ], [ %i.dm, %bb.i ]  ; 2 uses
  %i.cw = zext i32 %.5 to i64                     ; 8 uses
  %.val420 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cx = getelementptr inbounds nuw i8, ptr %.val420, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  store i32 -1, ptr %i.cy, align 1
  %.val419 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cz = getelementptr inbounds nuw i8, ptr %.val419, i64 %i.cw
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  store i32 -1, ptr %i.da, align 1
  %.val418 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.db = getelementptr inbounds nuw i8, ptr %.val418, i64 %i.cw
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  store i32 -1, ptr %i.dc, align 1
  %.val417 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dd = getelementptr inbounds nuw i8, ptr %.val417, i64 %i.cw
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  store i32 -1, ptr %i.de, align 1
  %.val416 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.df = getelementptr inbounds nuw i8, ptr %.val416, i64 %i.cw
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  store i32 -1, ptr %i.dg, align 1
  %.val415 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dh = getelementptr inbounds nuw i8, ptr %.val415, i64 %i.cw
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i32 -1, ptr %i.di, align 1
  %.val414 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dj = getelementptr inbounds nuw i8, ptr %.val414, i64 %i.cw
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i32 -1, ptr %i.dk, align 1
  %.val413 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dl = getelementptr inbounds nuw i8, ptr %.val413, i64 %i.cw
  store i32 -1, ptr %i.dl, align 1
  %i.dm = add i32 %.5, 64                         ; 2 uses
  %.not392 = icmp eq i32 %i.dm, %i.cv
  br i1 %.not392, label %.loopexit447, label %bb.i

.loopexit447:                                     ; preds = %bb.i, %.loopexit449, %bb.f
  %.not393 = icmp eq i32 %.0.copyload.i, 0
  br i1 %.not393, label %.loopexit446, label %bb.j

bb.j:                                             ; preds = %.loopexit447
  %i.dn = shl i32 %.0.copyload.i, 3
  %i.do = add i32 %.0.copyload.i435, %i.dn
  %.val405 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dp = getelementptr inbounds nuw i8, ptr %.val405, i64 %i.c
  %.0.copyload.i438 = load i32, ptr %i.dp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i438) #8, !srcloc !14
  %i.dq = add i32 %.0.copyload.i438, -1           ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %bb.j
  %.0378 = phi i32 [ 0, %bb.j ], [ %.1379, %bb.o ] ; 2 uses
  %.6 = phi i32 [ %.0.copyload.i435, %bb.j ], [ %i.eu, %bb.o ] ; 2 uses
  %i.dr = zext i32 %.6 to i64                     ; 2 uses
  %.val404 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ds = getelementptr inbounds nuw i8, ptr %.val404, i64 %i.dr
  %.0.copyload.i439 = load i32, ptr %i.ds, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i439) #8, !srcloc !14
  %i.dt = icmp ult i32 %.0.copyload.i439, -2
  br i1 %i.dt, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.du = mul i32 %.0.copyload.i439, 37
  %i.dv = and i32 %i.du, %i.dq                    ; 2 uses
  %i.dw = shl i32 %i.dv, 3
  %i.dx = add i32 %i.dw, %i.v                     ; 2 uses
  %i.dy = zext i32 %i.dx to i64                   ; 2 uses
  %.val403 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dz = getelementptr inbounds nuw i8, ptr %.val403, i64 %i.dy
  %.0.copyload.i440 = load i32, ptr %i.dz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i440) #8, !srcloc !14
  %i.ea = icmp eq i32 %.0.copyload.i439, %.0.copyload.i440
  br i1 %i.ea, label %.loopexit445, label %.preheader444

.preheader444:                                    ; preds = %bb.l, %bb.n
  %.0383 = phi i32 [ %i.ef, %bb.n ], [ 0, %bb.l ] ; 3 uses
  %.0382 = phi i32 [ %.0.copyload.i441, %bb.n ], [ %.0.copyload.i440, %bb.l ] ; 2 uses
  %.0381 = phi i32 [ %i.eh, %bb.n ], [ 1, %bb.l ] ; 2 uses
  %.0380 = phi i32 [ %i.ei, %bb.n ], [ %i.dv, %bb.l ]
  %.2376 = phi i32 [ %i.ek, %bb.n ], [ %i.dx, %bb.l ] ; 2 uses
  %i.eb = icmp eq i32 %.0382, -1
  %.not396 = icmp eq i32 %.0383, 0                ; 2 uses
  br i1 %i.eb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.preheader444
  %i.ec = select i1 %.not396, i32 %.2376, i32 %.0383
  %.pre = zext i32 %i.ec to i64
  br label %.loopexit445

bb.n:                                             ; preds = %.preheader444
  %i.ed = icmp eq i32 %.0382, -2
  %i.ee = select i1 %i.ed, i1 %.not396, i1 false
  %i.ef = select i1 %i.ee, i32 %.2376, i32 %.0383
  %i.eg = add i32 %.0380, %.0381
  %i.eh = add i32 %.0381, 1
  %i.ei = and i32 %i.eg, %i.dq                    ; 2 uses
  %i.ej = shl i32 %i.ei, 3
  %i.ek = add i32 %i.ej, %i.v                     ; 2 uses
  %i.el = zext i32 %i.ek to i64                   ; 2 uses
  %.val402 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.em = getelementptr inbounds nuw i8, ptr %.val402, i64 %i.el
  %.0.copyload.i441 = load i32, ptr %i.em, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i441) #8, !srcloc !14
  %.not395 = icmp eq i32 %.0.copyload.i439, %.0.copyload.i441
  br i1 %.not395, label %.loopexit445, label %.preheader444

.loopexit445:                                     ; preds = %bb.n, %bb.l, %bb.m
  %.pre-phi = phi i64 [ %.pre, %bb.m ], [ %i.dy, %bb.l ], [ %i.el, %bb.n ] ; 2 uses
  %.val412 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.en = getelementptr inbounds nuw i8, ptr %.val412, i64 %.pre-phi
  store i32 %.0.copyload.i439, ptr %i.en, align 1
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.eo = getelementptr inbounds nuw i8, ptr %.val, i64 %i.dr
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %.0.copyload.i442 = load i32, ptr %i.ep, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i442) #8, !srcloc !14
  %.val411 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.eq = getelementptr inbounds nuw i8, ptr %.val411, i64 %.pre-phi
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  store i32 %.0.copyload.i442, ptr %i.er, align 1
  %i.es = add i32 %.0378, 1                       ; 2 uses
  %.val410 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.et = getelementptr inbounds nuw i8, ptr %.val410, i64 %i.bs
  store i32 %i.es, ptr %i.et, align 1
  br label %bb.o

bb.o:                                             ; preds = %.loopexit445, %bb.k
  %.1379 = phi i32 [ %i.es, %.loopexit445 ], [ %.0378, %bb.k ]
  %i.eu = add i32 %.6, 8                          ; 2 uses
  %.not397 = icmp eq i32 %i.eu, %i.do
  br i1 %.not397, label %.loopexit446, label %bb.k

.loopexit446:                                     ; preds = %bb.o, %.loopexit447
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i435) #8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.loopexit443, %bb.b, %.loopexit446
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20unsigned0x20char0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Cunsigned0x20int0x2C0x20unsigned0x20char0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cunsigned0x20int0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20unsigned0x20char0x3E0x3E0x2C0x20unsigned0x20int0x2C0x20unsigned0x20char0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cunsigned0x20int0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20unsigned0x20char0x3E0x3E0x3A0x3AInsertIntoBucket0x3Cunsigned0x20int0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20unsigned0x20char0x3E0x2A0x2C0x20unsigned0x20int0x20const0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 62 uses
  %i.b = zext i32 %1 to i64                       ; 8 uses
  %i.c = add nuw nsw i64 %i.b, 4                  ; 6 uses
  %.val607 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val607, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = shl i32 %.0.copyload.i, 2
  %i.f = add i32 %i.e, 4
  %i.g = add nuw nsw i64 %i.b, 12                 ; 6 uses
  %.val606 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val606, i64 %i.g
  %.0.copyload.i635 = load i32, ptr %i.h, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i635) #8, !srcloc !14
  %i.i = mul i32 %.0.copyload.i635, 3
  %.not = icmp ult i32 %i.f, %i.i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = shl i32 %.0.copyload.i635, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = xor i32 %.0.copyload.i, -1
  %i.l = add i32 %.0.copyload.i635, %i.k
  %.val605 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val605, i64 %i.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.copyload.i636 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i636) #8, !srcloc !14
  %i.o = sub i32 %i.l, %.0.copyload.i636
  %i.p = lshr i32 %.0.copyload.i635, 3
  %i.q = icmp ugt i32 %i.o, %i.p
  br i1 %i.q, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0553 = phi i32 [ %i.j, %bb.b ], [ %.0.copyload.i635, %bb.c ]
  %.val604 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %.val604, i64 %i.g
  %.0.copyload.i637 = load i32, ptr %i.r, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i637) #8, !srcloc !14
  %i.s = add i32 %.0553, -1
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = lshr i64 %i.t, 1
  %i.v = or i64 %i.u, %i.t                        ; 2 uses
  %i.w = lshr i64 %i.v, 2
  %i.x = or i64 %i.w, %i.v                        ; 2 uses
  %i.y = lshr i64 %i.x, 4
  %i.z = or i64 %i.y, %i.x                        ; 2 uses
  %i.aa = lshr i64 %i.z, 8
  %i.ab = or i64 %i.aa, %i.z                      ; 2 uses
  %i.ac = lshr i64 %i.ab, 16
  %i.ad = or i64 %i.ac, %i.ab
  %i.ae = trunc nuw i64 %i.ad to i32
  %i.af = add i32 %i.ae, 1
  %4 = tail call i32 @llvm.umax.i32(i32 %i.af, i32 64) ; 2 uses
  %.val632 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.val632, i64 %i.g
  store i32 %4, ptr %i.ag, align 1
  %.val603 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.val603, i64 %i.b
  %.0.copyload.i638 = load i32, ptr %i.ah, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i638) #8, !srcloc !14
  %i.ai = shl i32 %4, 3
  %i.aj = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ai) #8 ; 21 uses
  %.val631 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val631, i64 %i.b
  store i32 %i.aj, ptr %i.ak, align 1
  %.not565 = icmp eq i32 %.0.copyload.i638, 0
  %.val634 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val634, i64 %i.c
  store i64 0, ptr %i.al, align 1
  %.val602 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %.val602, i64 %i.g
  %.0.copyload.i639 = load i32, ptr %i.am, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i639) #8
  %.not575 = icmp eq i32 %.0.copyload.i639, 0     ; 2 uses
  br i1 %.not565, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  br i1 %.not575, label %.loopexit657, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = and i32 %.0.copyload.i639, 7            ; 7 uses
  %.not576 = icmp eq i32 %i.an, 0
  br i1 %.not576, label %.loopexit659, label %.preheader658

.preheader658:                                    ; preds = %bb.f
  %i.ao = zext i32 %i.aj to i64
  %.val630 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.val630, i64 %i.ao
  store i32 -1, ptr %i.ap, align 1
  %i.aq = add i32 %i.aj, 8                        ; 2 uses
  %.not577 = icmp eq i32 %i.an, 1
  br i1 %.not577, label %.loopexit659, label %.preheader658.1

.preheader658.1:                                  ; preds = %.preheader658
  %i.ar = zext i32 %i.aq to i64
  %.val630.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %.val630.1, i64 %i.ar
  store i32 -1, ptr %i.as, align 1
  %i.at = add i32 %i.aj, 16                       ; 2 uses
  %.not577.1 = icmp eq i32 %i.an, 2
  br i1 %.not577.1, label %.loopexit659, label %.preheader658.2

.preheader658.2:                                  ; preds = %.preheader658.1
  %i.au = zext i32 %i.at to i64
  %.val630.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val630.2, i64 %i.au
  store i32 -1, ptr %i.av, align 1
  %i.aw = add i32 %i.aj, 24                       ; 2 uses
  %.not577.2 = icmp eq i32 %i.an, 3
  br i1 %.not577.2, label %.loopexit659, label %.preheader658.3

.preheader658.3:                                  ; preds = %.preheader658.2
  %i.ax = zext i32 %i.aw to i64
  %.val630.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %.val630.3, i64 %i.ax
  store i32 -1, ptr %i.ay, align 1
  %i.az = add i32 %i.aj, 32                       ; 2 uses
  %.not577.3 = icmp eq i32 %i.an, 4
  br i1 %.not577.3, label %.loopexit659, label %.preheader658.4

.preheader658.4:                                  ; preds = %.preheader658.3
  %i.ba = zext i32 %i.az to i64
  %.val630.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %.val630.4, i64 %i.ba
  store i32 -1, ptr %i.bb, align 1
  %i.bc = add i32 %i.aj, 40                       ; 2 uses
  %.not577.4 = icmp eq i32 %i.an, 5
  br i1 %.not577.4, label %.loopexit659, label %.preheader658.5

.preheader658.5:                                  ; preds = %.preheader658.4
  %i.bd = zext i32 %i.bc to i64
  %.val630.5 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %.val630.5, i64 %i.bd
  store i32 -1, ptr %i.be, align 1
  %i.bf = add i32 %i.aj, 48                       ; 2 uses
  %.not577.5 = icmp eq i32 %i.an, 6
  br i1 %.not577.5, label %.loopexit659, label %.preheader658.6

.preheader658.6:                                  ; preds = %.preheader658.5
  %i.bg = zext i32 %i.bf to i64
  %.val630.6 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %.val630.6, i64 %i.bg
  store i32 -1, ptr %i.bh, align 1
  %i.bi = add i32 %i.aj, 56
  br label %.loopexit659

.loopexit659:                                     ; preds = %.preheader658, %.preheader658.1, %.preheader658.2, %.preheader658.3, %.preheader658.4, %.preheader658.5, %.preheader658.6, %bb.f
  %.1 = phi i32 [ %i.aj, %bb.f ], [ %i.aq, %.preheader658 ], [ %i.at, %.preheader658.1 ], [ %i.aw, %.preheader658.2 ], [ %i.az, %.preheader658.3 ], [ %i.bc, %.preheader658.4 ], [ %i.bf, %.preheader658.5 ], [ %i.bi, %.preheader658.6 ]
  %i.bj = add i32 %.0.copyload.i639, 536870911
  %i.bk = and i32 %i.bj, 536870911
  %i.bl = icmp samesign ult i32 %i.bk, 7
  br i1 %i.bl, label %.loopexit657, label %bb.g

bb.g:                                             ; preds = %.loopexit659
  %i.bm = shl i32 %.0.copyload.i639, 3
  %i.bn = add i32 %i.bm, %i.aj
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.2 = phi i32 [ %.1, %bb.g ], [ %i.ce, %bb.h ]  ; 2 uses
  %i.bo = zext i32 %.2 to i64                     ; 8 uses
  %.val629 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %.val629, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  store i32 -1, ptr %i.bq, align 1
  %.val628 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.br = getelementptr inbounds nuw i8, ptr %.val628, i64 %i.bo
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  store i32 -1, ptr %i.bs, align 1
  %.val627 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bt = getelementptr inbounds nuw i8, ptr %.val627, i64 %i.bo
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  store i32 -1, ptr %i.bu, align 1
  %.val626 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bv = getelementptr inbounds nuw i8, ptr %.val626, i64 %i.bo
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store i32 -1, ptr %i.bw, align 1
  %.val625 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %.val625, i64 %i.bo
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store i32 -1, ptr %i.by, align 1
  %.val624 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bz = getelementptr inbounds nuw i8, ptr %.val624, i64 %i.bo
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i32 -1, ptr %i.ca, align 1
  %.val623 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cb = getelementptr inbounds nuw i8, ptr %.val623, i64 %i.bo
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 -1, ptr %i.cc, align 1
  %.val622 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cd = getelementptr inbounds nuw i8, ptr %.val622, i64 %i.bo
  store i32 -1, ptr %i.cd, align 1
  %i.ce = add i32 %.2, 64                         ; 2 uses
  %.not578 = icmp eq i32 %i.ce, %i.bn
  br i1 %.not578, label %.loopexit657, label %bb.h

bb.i:                                             ; preds = %bb.d
  br i1 %.not575, label %.loopexit663, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = and i32 %.0.copyload.i639, 7            ; 7 uses
  %.not567 = icmp eq i32 %i.cf, 0
  br i1 %.not567, label %.loopexit665, label %.preheader664

.preheader664:                                    ; preds = %bb.j
  %i.cg = zext i32 %i.aj to i64
  %.val621 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %.val621, i64 %i.cg
  store i32 -1, ptr %i.ch, align 1
  %i.ci = add i32 %i.aj, 8                        ; 2 uses
  %.not568 = icmp eq i32 %i.cf, 1
  br i1 %.not568, label %.loopexit665, label %.preheader664.1

.preheader664.1:                                  ; preds = %.preheader664
  %i.cj = zext i32 %i.ci to i64
  %.val621.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %.val621.1, i64 %i.cj
  store i32 -1, ptr %i.ck, align 1
  %i.cl = add i32 %i.aj, 16                       ; 2 uses
  %.not568.1 = icmp eq i32 %i.cf, 2
  br i1 %.not568.1, label %.loopexit665, label %.preheader664.2

.preheader664.2:                                  ; preds = %.preheader664.1
  %i.cm = zext i32 %i.cl to i64
  %.val621.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cn = getelementptr inbounds nuw i8, ptr %.val621.2, i64 %i.cm
  store i32 -1, ptr %i.cn, align 1
  %i.co = add i32 %i.aj, 24                       ; 2 uses
  %.not568.2 = icmp eq i32 %i.cf, 3
  br i1 %.not568.2, label %.loopexit665, label %.preheader664.3

.preheader664.3:                                  ; preds = %.preheader664.2
  %i.cp = zext i32 %i.co to i64
  %.val621.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cq = getelementptr inbounds nuw i8, ptr %.val621.3, i64 %i.cp
  store i32 -1, ptr %i.cq, align 1
  %i.cr = add i32 %i.aj, 32                       ; 2 uses
  %.not568.3 = icmp eq i32 %i.cf, 4
  br i1 %.not568.3, label %.loopexit665, label %.preheader664.4

.preheader664.4:                                  ; preds = %.preheader664.3
  %i.cs = zext i32 %i.cr to i64
  %.val621.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ct = getelementptr inbounds nuw i8, ptr %.val621.4, i64 %i.cs
  store i32 -1, ptr %i.ct, align 1
  %i.cu = add i32 %i.aj, 40                       ; 2 uses
  %.not568.4 = icmp eq i32 %i.cf, 5
  br i1 %.not568.4, label %.loopexit665, label %.preheader664.5

.preheader664.5:                                  ; preds = %.preheader664.4
  %i.cv = zext i32 %i.cu to i64
  %.val621.5 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cw = getelementptr inbounds nuw i8, ptr %.val621.5, i64 %i.cv
  store i32 -1, ptr %i.cw, align 1
  %i.cx = add i32 %i.aj, 48                       ; 2 uses
  %.not568.5 = icmp eq i32 %i.cf, 6
  br i1 %.not568.5, label %.loopexit665, label %.preheader664.6

.preheader664.6:                                  ; preds = %.preheader664.5
  %i.cy = zext i32 %i.cx to i64
  %.val621.6 = load ptr, ptr %i.a, align 8, !tbaa !7
end_hunk_16
begin_hunk_17_@w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20unsigned0x20char0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Cunsigned0x20int0x2C0x20unsigned0x20char0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cunsigned0x20int0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20unsigned0x20char0x3E0x3E0x2C0x20unsigned0x20int0x2C0x20unsigned0x20char0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cunsigned0x20int0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20unsigned0x20char0x3E0x3E0x3A0x3AInsertIntoBucket0x3Cunsigned0x20int0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20unsigned0x20char0x3E0x2A0x2C0x20unsigned0x20int0x20const0x260x29:bb.a
  %i.ex = getelementptr inbounds nuw i8, ptr %.val596, i64 %i.ew
  %.0.copyload.i645 = load i32, ptr %i.ex, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i645) #8, !srcloc !14
  %.not572 = icmp eq i32 %.0.copyload.i641, %.0.copyload.i645
  br i1 %.not572, label %.loopexit661, label %.preheader660

.loopexit661:                                     ; preds = %bb.q, %bb.o, %bb.p
  %.pre-phi = phi i64 [ %.pre, %bb.p ], [ %i.ej, %bb.o ], [ %i.ew, %bb.q ] ; 2 uses
  %.val612 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ey = getelementptr inbounds nuw i8, ptr %.val612, i64 %.pre-phi
  store i32 %.0.copyload.i641, ptr %i.ey, align 1
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ez = getelementptr inbounds nuw i8, ptr %.val, i64 %i.dz
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %.0.copyload.i646 = load i8, ptr %i.fa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i646) #8, !srcloc !13
  %.val585 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.fb = getelementptr inbounds nuw i8, ptr %.val585, i64 %.pre-phi
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  store i8 %.0.copyload.i646, ptr %i.fc, align 1
  %.val595 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.fd = getelementptr inbounds nuw i8, ptr %.val595, i64 %i.c
  %.0.copyload.i647 = load i32, ptr %i.fd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i647) #8, !srcloc !14
  %i.fe = add i32 %.0.copyload.i647, 1
  %.val611 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ff = getelementptr inbounds nuw i8, ptr %.val611, i64 %i.c
  store i32 %i.fe, ptr %i.ff, align 1
  br label %bb.r

bb.r:                                             ; preds = %.loopexit661, %bb.n
  %i.fg = add i32 %.6, 8                          ; 2 uses
  %.not574 = icmp eq i32 %i.fg, %i.dy
  br i1 %.not574, label %.loopexit662, label %bb.n

.loopexit662:                                     ; preds = %bb.r, %.loopexit663
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i638) #8
  br label %.loopexit657

.loopexit657:                                     ; preds = %bb.h, %.loopexit659, %bb.e, %.loopexit662
  %.val594 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.fh = getelementptr inbounds nuw i8, ptr %.val594, i64 %i.g
  %.0.copyload.i648 = load i32, ptr %i.fh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i648) #8, !srcloc !14
  %.not579 = icmp eq i32 %.0.copyload.i648, 0
  br i1 %.not579, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.loopexit657
  %i.fi = zext i32 %3 to i64
  %.val593 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.fj = getelementptr inbounds nuw i8, ptr %.val593, i64 %i.fi
  %.0.copyload.i649 = load i32, ptr %i.fj, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i649) #8, !srcloc !14
  %.val592 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.fk = getelementptr inbounds nuw i8, ptr %.val592, i64 %i.b
  %.0.copyload.i650 = load i32, ptr %i.fk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i650) #8, !srcloc !14
  %i.fl = add i32 %.0.copyload.i648, -1           ; 2 uses
  %i.fm = mul i32 %.0.copyload.i649, 37
  %i.fn = and i32 %i.fm, %i.fl                    ; 2 uses
  %i.fo = shl i32 %i.fn, 3
  %i.fp = add i32 %.0.copyload.i650, %i.fo        ; 3 uses
  %i.fq = zext i32 %i.fp to i64
  %.val591 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.fr = getelementptr inbounds nuw i8, ptr %.val591, i64 %i.fq
  %.0.copyload.i651 = load i32, ptr %i.fr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i651) #8, !srcloc !14
  %i.fs = icmp eq i32 %.0.copyload.i649, %.0.copyload.i651
  br i1 %i.fs, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.s, %bb.u
  %.3556 = phi i32 [ %i.fx, %bb.u ], [ 0, %bb.s ] ; 3 uses
  %.0551 = phi i32 [ %.0.copyload.i652, %bb.u ], [ %.0.copyload.i651, %bb.s ] ; 2 uses
  %.3550 = phi i32 [ %i.fz, %bb.u ], [ 1, %bb.s ] ; 2 uses
  %.0546 = phi i32 [ %i.ga, %bb.u ], [ %i.fn, %bb.s ]
  %.7 = phi i32 [ %i.gc, %bb.u ], [ %i.fp, %bb.s ] ; 2 uses
  %i.ft = icmp eq i32 %.0551, -1
  %.not582 = icmp eq i32 %.3556, 0                ; 2 uses
  br i1 %i.ft, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.preheader
  %i.fu = select i1 %.not582, i32 %.7, i32 %.3556
  br label %.loopexit

bb.u:                                             ; preds = %.preheader
  %i.fv = icmp eq i32 %.0551, -2
  %i.fw = select i1 %i.fv, i1 %.not582, i1 false
  %i.fx = select i1 %i.fw, i32 %.7, i32 %.3556
  %i.fy = add i32 %.0546, %.3550
  %i.fz = add i32 %.3550, 1
  %i.ga = and i32 %i.fy, %i.fl                    ; 2 uses
  %i.gb = shl i32 %i.ga, 3
  %i.gc = add i32 %i.gb, %.0.copyload.i650        ; 3 uses
  %i.gd = zext i32 %i.gc to i64
  %.val590 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ge = getelementptr inbounds nuw i8, ptr %.val590, i64 %i.gd
  %.0.copyload.i652 = load i32, ptr %i.ge, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i652) #8, !srcloc !14
  %.not581 = icmp eq i32 %.0.copyload.i649, %.0.copyload.i652
  br i1 %.not581, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.u, %.loopexit657, %bb.s, %bb.c, %bb.t
  %.8 = phi i32 [ %2, %bb.c ], [ %i.fp, %bb.s ], [ %i.fu, %bb.t ], [ 0, %.loopexit657 ], [ %i.gc, %bb.u ] ; 2 uses
  %.val589 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.gf = getelementptr inbounds nuw i8, ptr %.val589, i64 %i.c
  %.0.copyload.i653 = load i32, ptr %i.gf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i653) #8, !srcloc !14
  %i.gg = add i32 %.0.copyload.i653, 1
  %.val610 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.gh = getelementptr inbounds nuw i8, ptr %.val610, i64 %i.c
  store i32 %i.gg, ptr %i.gh, align 1
  %i.gi = zext i32 %.8 to i64                     ; 3 uses
  %.val588 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.gj = getelementptr inbounds nuw i8, ptr %.val588, i64 %i.gi
  %.0.copyload.i654 = load i32, ptr %i.gj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i654) #8, !srcloc !14
  %.not583 = icmp eq i32 %.0.copyload.i654, -1
  br i1 %.not583, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.loopexit
  %i.gk = add nuw nsw i64 %i.b, 8                 ; 2 uses
  %.val587 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.gl = getelementptr inbounds nuw i8, ptr %.val587, i64 %i.gk
  %.0.copyload.i655 = load i32, ptr %i.gl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i655) #8, !srcloc !14
  %i.gm = add i32 %.0.copyload.i655, -1
  %.val609 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.gn = getelementptr inbounds nuw i8, ptr %.val609, i64 %i.gk
  store i32 %i.gm, ptr %i.gn, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.loopexit
  %i.go = zext i32 %3 to i64
  %.val586 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.gp = getelementptr inbounds nuw i8, ptr %.val586, i64 %i.go
  %.0.copyload.i656 = load i32, ptr %i.gp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i656) #8, !srcloc !14
  %.val584 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.gq = getelementptr inbounds nuw i8, ptr %.val584, i64 %i.gi
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  store i8 0, ptr %i.gr, align 1
  %.val608 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.gs = getelementptr inbounds nuw i8, ptr %.val608, i64 %i.gi
  store i32 %.0.copyload.i656, ptr %i.gs, align 1
  ret i32 %.8
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Cunsigned0x20int0x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cunsigned0x20int0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3E0x3E0x2C0x20unsigned0x20int0x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cunsigned0x20int0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3E0x3E0x3A0x3AInsertIntoBucket0x3Cunsigned0x20int0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3E0x2A0x2C0x20unsigned0x20int0x20const0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 71 uses
  %i.b = zext i32 %1 to i64                       ; 9 uses
  %i.c = add nuw nsw i64 %i.b, 4                  ; 7 uses
  %.val646 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val646, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = shl i32 %.0.copyload.i, 2
  %i.f = add i32 %i.e, 4
  %i.g = add nuw nsw i64 %i.b, 12                 ; 6 uses
  %.val645 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val645, i64 %i.g
  %.0.copyload.i682 = load i32, ptr %i.h, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i682) #8, !srcloc !14
  %i.i = mul i32 %.0.copyload.i682, 3
  %.not = icmp ult i32 %i.f, %i.i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = shl i32 %.0.copyload.i682, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = xor i32 %.0.copyload.i, -1
  %i.l = add i32 %.0.copyload.i682, %i.k
  %.val644 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val644, i64 %i.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.copyload.i683 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i683) #8, !srcloc !14
  %i.o = sub i32 %i.l, %.0.copyload.i683
  %i.p = lshr i32 %.0.copyload.i682, 3
  %i.q = icmp ugt i32 %i.o, %i.p
  br i1 %i.q, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0587 = phi i32 [ %i.j, %bb.b ], [ %.0.copyload.i682, %bb.c ]
  %i.r = add i32 %.0587, -1
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = lshr i64 %i.s, 1
  %i.u = or i64 %i.t, %i.s                        ; 2 uses
  %i.v = lshr i64 %i.u, 2
  %i.w = or i64 %i.v, %i.u                        ; 2 uses
  %i.x = lshr i64 %i.w, 4
  %i.y = or i64 %i.x, %i.w                        ; 2 uses
  %i.z = lshr i64 %i.y, 8
  %i.aa = or i64 %i.z, %i.y                       ; 2 uses
  %i.ab = lshr i64 %i.aa, 16
  %i.ac = or i64 %i.ab, %i.aa
  %i.ad = trunc nuw i64 %i.ac to i32
  %i.ae = add i32 %i.ad, 1
  %4 = tail call i32 @llvm.umax.i32(i32 %i.ae, i32 64) ; 2 uses
  %.val674 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %.val674, i64 %i.g
  store i32 %4, ptr %i.af, align 1
  %.val643 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.val643, i64 %i.b
  %.0.copyload.i684 = load i32, ptr %i.ag, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i684) #8, !srcloc !14
  %i.ah = shl i32 %4, 4
  %i.ai = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ah) #8 ; 13 uses
  %.val673 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %.val673, i64 %i.b
  store i32 %i.ai, ptr %i.aj, align 1
  %.not605 = icmp eq i32 %.0.copyload.i684, 0
  br i1 %.not605, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %.val679 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val679, i64 %i.c
  store i64 0, ptr %i.ak, align 1
  %.val642 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val642, i64 %i.g
  %.0.copyload.i685 = load i32, ptr %i.al, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i685) #8, !srcloc !14
  %.not615 = icmp eq i32 %.0.copyload.i685, 0
  br i1 %.not615, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = and i32 %.0.copyload.i685, 7            ; 7 uses
  %.not616 = icmp eq i32 %i.am, 0
  br i1 %.not616, label %.loopexit713, label %.preheader712

.preheader712:                                    ; preds = %bb.f
  %i.an = zext i32 %i.ai to i64
  %.val672 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.val672, i64 %i.an
  store i32 -1, ptr %i.ao, align 1
  %i.ap = add i32 %i.ai, 16                       ; 2 uses
  %.not617 = icmp eq i32 %i.am, 1
  br i1 %.not617, label %.loopexit713, label %.preheader712.1

.preheader712.1:                                  ; preds = %.preheader712
  %i.aq = zext i32 %i.ap to i64
  %.val672.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %.val672.1, i64 %i.aq
  store i32 -1, ptr %i.ar, align 1
  %i.as = add i32 %i.ai, 32                       ; 2 uses
  %.not617.1 = icmp eq i32 %i.am, 2
  br i1 %.not617.1, label %.loopexit713, label %.preheader712.2

.preheader712.2:                                  ; preds = %.preheader712.1
  %i.at = zext i32 %i.as to i64
  %.val672.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %.val672.2, i64 %i.at
  store i32 -1, ptr %i.au, align 1
  %i.av = add i32 %i.ai, 48                       ; 2 uses
  %.not617.2 = icmp eq i32 %i.am, 3
  br i1 %.not617.2, label %.loopexit713, label %.preheader712.3

.preheader712.3:                                  ; preds = %.preheader712.2
  %i.aw = zext i32 %i.av to i64
  %.val672.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %.val672.3, i64 %i.aw
  store i32 -1, ptr %i.ax, align 1
  %i.ay = add i32 %i.ai, 64                       ; 2 uses
  %.not617.3 = icmp eq i32 %i.am, 4
  br i1 %.not617.3, label %.loopexit713, label %.preheader712.4

.preheader712.4:                                  ; preds = %.preheader712.3
  %i.az = zext i32 %i.ay to i64
  %.val672.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %.val672.4, i64 %i.az
  store i32 -1, ptr %i.ba, align 1
  %i.bb = add i32 %i.ai, 80                       ; 2 uses
  %.not617.4 = icmp eq i32 %i.am, 5
  br i1 %.not617.4, label %.loopexit713, label %.preheader712.5

.preheader712.5:                                  ; preds = %.preheader712.4
  %i.bc = zext i32 %i.bb to i64
  %.val672.5 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %.val672.5, i64 %i.bc
  store i32 -1, ptr %i.bd, align 1
  %i.be = add i32 %i.ai, 96                       ; 2 uses
  %.not617.5 = icmp eq i32 %i.am, 6
  br i1 %.not617.5, label %.loopexit713, label %.preheader712.6

.preheader712.6:                                  ; preds = %.preheader712.5
  %i.bf = zext i32 %i.be to i64
  %.val672.6 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %.val672.6, i64 %i.bf
  store i32 -1, ptr %i.bg, align 1
  %i.bh = add i32 %i.ai, 112
  br label %.loopexit713

.loopexit713:                                     ; preds = %.preheader712, %.preheader712.1, %.preheader712.2, %.preheader712.3, %.preheader712.4, %.preheader712.5, %.preheader712.6, %bb.f
  %.1 = phi i32 [ %i.ai, %bb.f ], [ %i.ap, %.preheader712 ], [ %i.as, %.preheader712.1 ], [ %i.av, %.preheader712.2 ], [ %i.ay, %.preheader712.3 ], [ %i.bb, %.preheader712.4 ], [ %i.be, %.preheader712.5 ], [ %i.bh, %.preheader712.6 ]
  %i.bi = add i32 %.0.copyload.i685, 268435455
  %i.bj = and i32 %i.bi, 268435455
  %i.bk = icmp samesign ult i32 %i.bj, 7
  br i1 %i.bk, label %.thread, label %bb.g

bb.g:                                             ; preds = %.loopexit713
  %i.bl = shl i32 %.0.copyload.i685, 4
  %i.bm = add i32 %i.bl, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.2 = phi i32 [ %.1, %bb.g ], [ %i.cd, %bb.h ]  ; 2 uses
  %i.bn = zext i32 %.2 to i64                     ; 8 uses
  %.val671 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %.val671, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 112
  store i32 -1, ptr %i.bp, align 1
  %.val670 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %.val670, i64 %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 96
  store i32 -1, ptr %i.br, align 1
  %.val669 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %.val669, i64 %i.bn
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 80
  store i32 -1, ptr %i.bt, align 1
  %.val668 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val668, i64 %i.bn
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  store i32 -1, ptr %i.bv, align 1
  %.val667 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %.val667, i64 %i.bn
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  store i32 -1, ptr %i.bx, align 1
  %.val666 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %.val666, i64 %i.bn
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store i32 -1, ptr %i.bz, align 1
  %.val665 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %.val665, i64 %i.bn
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i32 -1, ptr %i.cb, align 1
  %.val664 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %.val664, i64 %i.bn
  store i32 -1, ptr %i.cc, align 1
  %i.cd = add i32 %.2, 128                        ; 2 uses
  %.not618 = icmp eq i32 %i.cd, %i.bm
  br i1 %.not618, label %.thread, label %bb.h

bb.i:                                             ; preds = %bb.d
  %i.ce = shl i32 %.0.copyload.i682, 4            ; 2 uses
  %i.cf = add i32 %.0.copyload.i684, %i.ce
  %.val678 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %.val678, i64 %i.c
  store i64 0, ptr %i.cg, align 1
  %.val641 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %.val641, i64 %i.g
  %.0.copyload.i686 = load i32, ptr %i.ch, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i686) #8, !srcloc !14
  %.not606 = icmp eq i32 %.0.copyload.i686, 0
  br i1 %.not606, label %.loopexit718, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val640 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %.val640, i64 %i.b
  %.0.copyload.i687 = load i32, ptr %i.ci, align 1 ; 11 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i687) #8, !srcloc !14
  %i.cj = and i32 %.0.copyload.i686, 7            ; 7 uses
  %.not607 = icmp eq i32 %i.cj, 0
  br i1 %.not607, label %.loopexit720, label %.preheader719

.preheader719:                                    ; preds = %bb.j
  %i.ck = zext i32 %.0.copyload.i687 to i64
  %.val663 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %.val663, i64 %i.ck
  store i32 -1, ptr %i.cl, align 1
  %i.cm = add i32 %.0.copyload.i687, 16           ; 2 uses
  %.not608 = icmp eq i32 %i.cj, 1
  br i1 %.not608, label %.loopexit720, label %.preheader719.1

.preheader719.1:                                  ; preds = %.preheader719
  %i.cn = zext i32 %i.cm to i64
  %.val663.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.co = getelementptr inbounds nuw i8, ptr %.val663.1, i64 %i.cn
  store i32 -1, ptr %i.co, align 1
  %i.cp = add i32 %.0.copyload.i687, 32           ; 2 uses
  %.not608.1 = icmp eq i32 %i.cj, 2
  br i1 %.not608.1, label %.loopexit720, label %.preheader719.2

.preheader719.2:                                  ; preds = %.preheader719.1
  %i.cq = zext i32 %i.cp to i64
  %.val663.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %.val663.2, i64 %i.cq
  store i32 -1, ptr %i.cr, align 1
  %i.cs = add i32 %.0.copyload.i687, 48           ; 2 uses
  %.not608.2 = icmp eq i32 %i.cj, 3
  br i1 %.not608.2, label %.loopexit720, label %.preheader719.3

.preheader719.3:                                  ; preds = %.preheader719.2
  %i.ct = zext i32 %i.cs to i64
  %.val663.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cu = getelementptr inbounds nuw i8, ptr %.val663.3, i64 %i.ct
  store i32 -1, ptr %i.cu, align 1
  %i.cv = add i32 %.0.copyload.i687, 64           ; 2 uses
  %.not608.3 = icmp eq i32 %i.cj, 4
  br i1 %.not608.3, label %.loopexit720, label %.preheader719.4

.preheader719.4:                                  ; preds = %.preheader719.3
  %i.cw = zext i32 %i.cv to i64
  %.val663.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cx = getelementptr inbounds nuw i8, ptr %.val663.4, i64 %i.cw
  store i32 -1, ptr %i.cx, align 1
  %i.cy = add i32 %.0.copyload.i687, 80           ; 2 uses
  %.not608.4 = icmp eq i32 %i.cj, 5
end_hunk_17
begin_hunk_18_@w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Cunsigned0x20int0x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cunsigned0x20int0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3E0x3E0x2C0x20unsigned0x20int0x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cunsigned0x20int0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3E0x3E0x3A0x3AInsertIntoBucket0x3Cunsigned0x20int0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3E0x2A0x2C0x20unsigned0x20int0x20const0x260x29:bb.a
  %i.gx = getelementptr inbounds nuw i8, ptr %.val624, i64 %i.gw
  %.0.copyload.i705 = load i32, ptr %i.gx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i705) #8, !srcloc !14
  %i.gy = add i32 %.0.copyload.i705, -1
  %.val649 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.gz = getelementptr inbounds nuw i8, ptr %.val649, i64 %i.gw
  store i32 %i.gy, ptr %i.gz, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.loopexit
  %i.ha = zext i32 %3 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.hb = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ha
  %.0.copyload.i706 = load i32, ptr %i.hb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i706) #8, !srcloc !14
  %.val675 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.hc = getelementptr inbounds nuw i8, ptr %.val675, i64 %i.gu
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  store i64 0, ptr %i.hd, align 1
  %.val648 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.he = getelementptr inbounds nuw i8, ptr %.val648, i64 %i.gu
  store i32 %.0.copyload.i706, ptr %i.he, align 1
  %.val647 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.hf = getelementptr inbounds nuw i8, ptr %.val647, i64 %i.gu
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 12
  store i32 0, ptr %i.hg, align 1
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRoot0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Cunsigned0x20int0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRoot0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cunsigned0x20int0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRoot0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x3E0x3E0x2C0x20unsigned0x20int0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRoot0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cunsigned0x20int0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRoot0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x3E0x3E0x3A0x3AInsertIntoBucket0x3Cunsigned0x20int0x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20hermes0x3A0x3Avm0x3A0x3AWeakRoot0x3Chermes0x3A0x3Avm0x3A0x3AHiddenClass0x3E0x3E0x2A0x2C0x20unsigned0x20int0x260x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.b = zext i32 %1 to i64                       ; 5 uses
  %i.c = add nuw nsw i64 %i.b, 4                  ; 3 uses
  %.val194 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val194, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = shl i32 %.0.copyload.i, 2
  %i.f = add i32 %i.e, 4
  %i.g = add nuw nsw i64 %i.b, 12                 ; 2 uses
  %.val193 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val193, i64 %i.g
  %.0.copyload.i199 = load i32, ptr %i.h, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i199) #8, !srcloc !14
  %i.i = mul i32 %.0.copyload.i199, 3
  %.not = icmp ult i32 %i.f, %i.i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = shl i32 %.0.copyload.i199, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = xor i32 %.0.copyload.i, -1
  %i.l = add i32 %.0.copyload.i199, %i.k
  %.val192 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val192, i64 %i.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.copyload.i200 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i200) #8, !srcloc !14
  %i.o = sub i32 %i.l, %.0.copyload.i200
  %i.p = lshr i32 %.0.copyload.i199, 3
  %i.q = icmp ugt i32 %i.o, %i.p
  br i1 %i.q, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0173 = phi i32 [ %i.j, %bb.b ], [ %.0.copyload.i199, %bb.c ]
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Cunsigned0x20int0x2C0x20hermes0x3A0x3AInstruction0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cunsigned0x20int0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20hermes0x3A0x3AInstruction0x2A0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0173)
  %.val191 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %.val191, i64 %i.g
  %.0.copyload.i201 = load i32, ptr %i.r, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i201) #8, !srcloc !14
  %.not179 = icmp eq i32 %.0.copyload.i201, 0
  br i1 %.not179, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = zext i32 %3 to i64
  %.val190 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val190, i64 %i.s
  %.0.copyload.i202 = load i32, ptr %i.t, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i202) #8, !srcloc !14
  %.val189 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val189, i64 %i.b
  %.0.copyload.i203 = load i32, ptr %i.u, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i203) #8, !srcloc !14
  %i.v = add i32 %.0.copyload.i201, -1            ; 2 uses
  %i.w = mul i32 %.0.copyload.i202, 37
  %i.x = and i32 %i.w, %i.v                       ; 2 uses
  %i.y = shl i32 %i.x, 3
  %i.z = add i32 %.0.copyload.i203, %i.y          ; 3 uses
  %i.aa = zext i32 %i.z to i64
  %.val188 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %.val188, i64 %i.aa
  %.0.copyload.i204 = load i32, ptr %i.ab, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i204) #8, !srcloc !14
  %i.ac = icmp eq i32 %.0.copyload.i202, %.0.copyload.i204
  br i1 %i.ac, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.e, %bb.g
  %.0174 = phi i32 [ %i.am, %bb.g ], [ %i.z, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %i.ah, %bb.g ], [ 0, %bb.e ]    ; 3 uses
  %.0172 = phi i32 [ %.0.copyload.i205, %bb.g ], [ %.0.copyload.i204, %bb.e ] ; 2 uses
  %.0171 = phi i32 [ %i.aj, %bb.g ], [ 1, %bb.e ] ; 2 uses
  %.0 = phi i32 [ %i.ak, %bb.g ], [ %i.x, %bb.e ]
  %i.ad = icmp eq i32 %.0172, -1
  %.not182 = icmp eq i32 %.1, 0                   ; 2 uses
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader
  %i.ae = select i1 %.not182, i32 %.0174, i32 %.1
  br label %.loopexit

bb.g:                                             ; preds = %.preheader
  %i.af = icmp eq i32 %.0172, -2
  %i.ag = select i1 %i.af, i1 %.not182, i1 false
  %i.ah = select i1 %i.ag, i32 %.0174, i32 %.1
  %i.ai = add i32 %.0, %.0171
  %i.aj = add i32 %.0171, 1
  %i.ak = and i32 %i.ai, %i.v                     ; 2 uses
  %i.al = shl i32 %i.ak, 3
  %i.am = add i32 %i.al, %.0.copyload.i203        ; 3 uses
  %i.an = zext i32 %i.am to i64
  %.val187 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.val187, i64 %i.an
  %.0.copyload.i205 = load i32, ptr %i.ao, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i205) #8, !srcloc !14
  %.not181 = icmp eq i32 %.0.copyload.i202, %.0.copyload.i205
  br i1 %.not181, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.g, %bb.d, %bb.e, %bb.c, %bb.f
  %.1175 = phi i32 [ %2, %bb.c ], [ %i.z, %bb.e ], [ %i.ae, %bb.f ], [ 0, %bb.d ], [ %i.am, %bb.g ] ; 2 uses
  %.val186 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.val186, i64 %i.c
  %.0.copyload.i206 = load i32, ptr %i.ap, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i206) #8, !srcloc !14
  %i.aq = add i32 %.0.copyload.i206, 1
  %.val198 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %.val198, i64 %i.c
  store i32 %i.aq, ptr %i.ar, align 1
  %i.as = zext i32 %.1175 to i64                  ; 3 uses
  %.val185 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val185, i64 %i.as
  %.0.copyload.i207 = load i32, ptr %i.at, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i207) #8, !srcloc !14
  %.not183 = icmp eq i32 %.0.copyload.i207, -1
  br i1 %.not183, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.au = add nuw nsw i64 %i.b, 8                 ; 2 uses
  %.val184 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val184, i64 %i.au
  %.0.copyload.i208 = load i32, ptr %i.av, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i208) #8, !srcloc !14
  %i.aw = add i32 %.0.copyload.i208, -1
  %.val197 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %.val197, i64 %i.au
  store i32 %i.aw, ptr %i.ax, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  %i.ay = zext i32 %3 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ay
  %.0.copyload.i209 = load i32, ptr %i.az, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i209) #8, !srcloc !14
  %.val196 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %.val196, i64 %i.as
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 0, ptr %i.bb, align 1
  %.val195 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %.val195, i64 %i.as
  store i32 %.0.copyload.i209, ptr %i.bc, align 1
  ret i32 %.1175
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Cunsigned0x20int0x2C0x20hermes0x3A0x3AInstruction0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cunsigned0x20int0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20hermes0x3A0x3AInstruction0x2A0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 48 uses
  %i.b = zext i32 %1 to i64                       ; 6 uses
  %i.c = add nuw nsw i64 %i.b, 12                 ; 5 uses
  %.val414 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val414, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = add i32 %2, -1
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 4
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 8
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 16
  %i.p = or i64 %i.o, %i.n
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = add i32 %i.q, 1
  %3 = tail call i32 @llvm.umax.i32(i32 %i.r, i32 64) ; 2 uses
  %.val437 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.val437, i64 %i.c
  store i32 %3, ptr %i.s, align 1
  %.val413 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val413, i64 %i.b
  %.0.copyload.i440 = load i32, ptr %i.t, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i440) #8, !srcloc !14
  %i.u = shl i32 %3, 3
  %i.v = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef %0, i32 noundef %i.u) #8 ; 21 uses
  %.val436 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %.val436, i64 %i.b
  store i32 %i.v, ptr %i.w, align 1
  %.not = icmp eq i32 %.0.copyload.i440, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.val439 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %.val439, i64 %i.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i64 0, ptr %i.y, align 1
  %.val412 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val412, i64 %i.c
  %.0.copyload.i441 = load i32, ptr %i.z, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i441) #8, !srcloc !14
  %.not401 = icmp eq i32 %.0.copyload.i441, 0
  br i1 %.not401, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = and i32 %.0.copyload.i441, 7            ; 7 uses
  %.not402 = icmp eq i32 %i.aa, 0
  br i1 %.not402, label %.loopexit450, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.ab = zext i32 %i.v to i64
  %.val435 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.val435, i64 %i.ab
  store i32 -1, ptr %i.ac, align 1
  %i.ad = add i32 %i.v, 8                         ; 2 uses
  %.not403 = icmp eq i32 %i.aa, 1
  br i1 %.not403, label %.loopexit450, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %i.ae = zext i32 %i.ad to i64
  %.val435.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %.val435.1, i64 %i.ae
  store i32 -1, ptr %i.af, align 1
  %i.ag = add i32 %i.v, 16                        ; 2 uses
  %.not403.1 = icmp eq i32 %i.aa, 2
  br i1 %.not403.1, label %.loopexit450, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.ah = zext i32 %i.ag to i64
  %.val435.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %.val435.2, i64 %i.ah
  store i32 -1, ptr %i.ai, align 1
  %i.aj = add i32 %i.v, 24                        ; 2 uses
  %.not403.2 = icmp eq i32 %i.aa, 3
  br i1 %.not403.2, label %.loopexit450, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.ak = zext i32 %i.aj to i64
  %.val435.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val435.3, i64 %i.ak
  store i32 -1, ptr %i.al, align 1
  %i.am = add i32 %i.v, 32                        ; 2 uses
  %.not403.3 = icmp eq i32 %i.aa, 4
  br i1 %.not403.3, label %.loopexit450, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.an = zext i32 %i.am to i64
  %.val435.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.val435.4, i64 %i.an
  store i32 -1, ptr %i.ao, align 1
  %i.ap = add i32 %i.v, 40                        ; 2 uses
  %.not403.4 = icmp eq i32 %i.aa, 5
  br i1 %.not403.4, label %.loopexit450, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.aq = zext i32 %i.ap to i64
  %.val435.5 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %.val435.5, i64 %i.aq
  store i32 -1, ptr %i.ar, align 1
  %i.as = add i32 %i.v, 48                        ; 2 uses
  %.not403.5 = icmp eq i32 %i.aa, 6
  br i1 %.not403.5, label %.loopexit450, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.at = zext i32 %i.as to i64
  %.val435.6 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %.val435.6, i64 %i.at
  store i32 -1, ptr %i.au, align 1
  %i.av = add i32 %i.v, 56
  br label %.loopexit450

.loopexit450:                                     ; preds = %.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %bb.c
  %.1 = phi i32 [ %i.v, %bb.c ], [ %i.ad, %.preheader ], [ %i.ag, %.preheader.1 ], [ %i.aj, %.preheader.2 ], [ %i.am, %.preheader.3 ], [ %i.ap, %.preheader.4 ], [ %i.as, %.preheader.5 ], [ %i.av, %.preheader.6 ]
  %i.aw = add i32 %.0.copyload.i441, 536870911
  %i.ax = and i32 %i.aw, 536870911
  %i.ay = icmp samesign ult i32 %i.ax, 7
  br i1 %i.ay, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.loopexit450
  %i.az = shl i32 %.0.copyload.i441, 3
  %i.ba = add i32 %i.az, %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.2 = phi i32 [ %.1, %bb.d ], [ %i.br, %bb.e ]  ; 2 uses
  %i.bb = zext i32 %.2 to i64                     ; 8 uses
  %.val434 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %.val434, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  store i32 -1, ptr %i.bd, align 1
  %.val433 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %.val433, i64 %i.bb
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  store i32 -1, ptr %i.bf, align 1
  %.val432 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %.val432, i64 %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store i32 -1, ptr %i.bh, align 1
  %.val431 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %.val431, i64 %i.bb
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store i32 -1, ptr %i.bj, align 1
  %.val430 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %.val430, i64 %i.bb
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i32 -1, ptr %i.bl, align 1
  %.val429 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %.val429, i64 %i.bb
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i32 -1, ptr %i.bn, align 1
  %.val428 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %.val428, i64 %i.bb
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 -1, ptr %i.bp, align 1
  %.val427 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %.val427, i64 %i.bb
  store i32 -1, ptr %i.bq, align 1
  %i.br = add i32 %.2, 64                         ; 2 uses
  %.not404 = icmp eq i32 %i.br, %i.ba
  br i1 %.not404, label %.loopexit, label %bb.e

bb.f:                                             ; preds = %bb.a
  %i.bs = add nuw nsw i64 %i.b, 4                 ; 3 uses
  %.val438 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bt = getelementptr inbounds nuw i8, ptr %.val438, i64 %i.bs
  store i64 0, ptr %i.bt, align 1
  %.val411 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val411, i64 %i.c
  %.0.copyload.i442 = load i32, ptr %i.bu, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i442) #8, !srcloc !14
  %.not392 = icmp eq i32 %.0.copyload.i442, 0
  br i1 %.not392, label %.loopexit454, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = and i32 %.0.copyload.i442, 7            ; 7 uses
  %.not393 = icmp eq i32 %i.bv, 0
  br i1 %.not393, label %.loopexit456, label %.preheader455

.preheader455:                                    ; preds = %bb.g
  %i.bw = zext i32 %i.v to i64
  %.val426 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %.val426, i64 %i.bw
  store i32 -1, ptr %i.bx, align 1
  %i.by = add i32 %i.v, 8                         ; 2 uses
  %.not394 = icmp eq i32 %i.bv, 1
  br i1 %.not394, label %.loopexit456, label %.preheader455.1

.preheader455.1:                                  ; preds = %.preheader455
  %i.bz = zext i32 %i.by to i64
  %.val426.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %.val426.1, i64 %i.bz
  store i32 -1, ptr %i.ca, align 1
  %i.cb = add i32 %i.v, 16                        ; 2 uses
  %.not394.1 = icmp eq i32 %i.bv, 2
  br i1 %.not394.1, label %.loopexit456, label %.preheader455.2

.preheader455.2:                                  ; preds = %.preheader455.1
  %i.cc = zext i32 %i.cb to i64
  %.val426.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cd = getelementptr inbounds nuw i8, ptr %.val426.2, i64 %i.cc
  store i32 -1, ptr %i.cd, align 1
  %i.ce = add i32 %i.v, 24                        ; 2 uses
  %.not394.2 = icmp eq i32 %i.bv, 3
  br i1 %.not394.2, label %.loopexit456, label %.preheader455.3

.preheader455.3:                                  ; preds = %.preheader455.2
  %i.cf = zext i32 %i.ce to i64
  %.val426.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %.val426.3, i64 %i.cf
  store i32 -1, ptr %i.cg, align 1
  %i.ch = add i32 %i.v, 32                        ; 2 uses
  %.not394.3 = icmp eq i32 %i.bv, 4
  br i1 %.not394.3, label %.loopexit456, label %.preheader455.4

.preheader455.4:                                  ; preds = %.preheader455.3
  %i.ci = zext i32 %i.ch to i64
  %.val426.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cj = getelementptr inbounds nuw i8, ptr %.val426.4, i64 %i.ci
  store i32 -1, ptr %i.cj, align 1
  %i.ck = add i32 %i.v, 40                        ; 2 uses
  %.not394.4 = icmp eq i32 %i.bv, 5
  br i1 %.not394.4, label %.loopexit456, label %.preheader455.5

.preheader455.5:                                  ; preds = %.preheader455.4
  %i.cl = zext i32 %i.ck to i64
end_hunk_18
begin_hunk_19_@w2c_hermes_llvh0x3A0x3ADenseMap0x3Cunsigned0x20int0x2C0x20hermes0x3A0x3AInstruction0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cunsigned0x20int0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cunsigned0x20int0x2C0x20hermes0x3A0x3AInstruction0x2A0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29:bb.a
  %i.ei = add i32 %.0384, 1
  %i.ej = and i32 %i.eh, %i.du                    ; 2 uses
  %i.ek = shl i32 %i.ej, 3
  %i.el = add i32 %i.ek, %.0.copyload.i444        ; 2 uses
  %i.em = zext i32 %i.el to i64                   ; 2 uses
  %.val406 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.en = getelementptr inbounds nuw i8, ptr %.val406, i64 %i.em
  %.0.copyload.i447 = load i32, ptr %i.en, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i447) #8, !srcloc !14
  %.not398 = icmp eq i32 %.0.copyload.i443, %.0.copyload.i447
  br i1 %.not398, label %.loopexit452, label %.preheader451

.loopexit452:                                     ; preds = %bb.n, %bb.l, %bb.m
  %.pre-phi = phi i64 [ %.pre, %bb.m ], [ %i.dz, %bb.l ], [ %i.em, %bb.n ] ; 2 uses
  %.val417 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.eo = getelementptr inbounds nuw i8, ptr %.val417, i64 %.pre-phi
  store i32 %.0.copyload.i443, ptr %i.eo, align 1
  %.val405 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ep = getelementptr inbounds nuw i8, ptr %.val405, i64 %i.dp
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %.0.copyload.i448 = load i32, ptr %i.eq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i448) #8, !srcloc !14
  %.val416 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.er = getelementptr inbounds nuw i8, ptr %.val416, i64 %.pre-phi
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  store i32 %.0.copyload.i448, ptr %i.es, align 1
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.et = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bs
  %.0.copyload.i449 = load i32, ptr %i.et, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i449) #8, !srcloc !14
  %i.eu = add i32 %.0.copyload.i449, 1
  %.val415 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ev = getelementptr inbounds nuw i8, ptr %.val415, i64 %i.bs
  store i32 %i.eu, ptr %i.ev, align 1
  br label %bb.o

bb.o:                                             ; preds = %.loopexit452, %bb.k
  %i.ew = add i32 %.6, 8                          ; 2 uses
  %.not400 = icmp eq i32 %i.ew, %i.do
  br i1 %.not400, label %.loopexit453, label %bb.k

.loopexit453:                                     ; preds = %bb.o, %.loopexit454
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i440) #8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.loopexit450, %bb.b, %.loopexit453
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x3E0x2C0x20llvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x3E0x3A0x3AInsertIntoBucketImpl0x3Cllvh0x3A0x3AStringRef0x3E0x28llvh0x3A0x3AStringRef0x20const0x260x2C0x20llvh0x3A0x3AStringRef0x20const0x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 4 uses
  %i.c = add i32 %i.b, -16                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.e = zext i32 %1 to i64                       ; 4 uses
  %i.f = add nuw nsw i64 %i.e, 4                  ; 3 uses
  %.val115 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %.val115, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.h = shl i32 %.0.copyload.i, 2
  %i.i = add i32 %i.h, 4
  %.val114 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %.val114, i64 %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.0.copyload.i118 = load i32, ptr %i.k, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i118) #8, !srcloc !14
  %i.l = mul i32 %.0.copyload.i118, 3
  %.not = icmp ult i32 %i.i, %i.l
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = shl i32 %.0.copyload.i118, 1
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.m)
  %i.n = add i32 %i.b, -8
  %i.o = tail call i32 @w2c_hermes_bool0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x3E0x2C0x20llvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x3E0x3A0x3ALookupBucketFor0x3Cllvh0x3A0x3AStringRef0x3E0x28llvh0x3A0x3AStringRef0x20const0x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x20const0x2A0x260x290x20const(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.n) #8 ; 0 uses
  %i.p = zext i32 %i.c to i64
  %.val113 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %.val113, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.0.copyload.i119 = load i32, ptr %i.r, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i119) #8, !srcloc !14
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = xor i32 %.0.copyload.i, -1
  %i.t = add i32 %.0.copyload.i118, %i.s
  %.val112 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val112, i64 %i.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.copyload.i120 = load i32, ptr %i.v, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i120) #8, !srcloc !14
  %i.w = sub i32 %i.t, %.0.copyload.i120
  %i.x = lshr i32 %.0.copyload.i118, 3
  %i.y = icmp ugt i32 %i.w, %i.x
  br i1 %i.y, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0.copyload.i118)
  %i.z = add i32 %i.b, -4
  %i.aa = tail call i32 @w2c_hermes_bool0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x3E0x2C0x20llvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x3E0x3A0x3ALookupBucketFor0x3Cllvh0x3A0x3AStringRef0x3E0x28llvh0x3A0x3AStringRef0x20const0x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3AUniqueString0x2A0x3E0x20const0x2A0x260x290x20const(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.z) #8 ; 0 uses
  %i.ab = zext i32 %i.c to i64
  %.val111 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.val111, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %.0.copyload.i121 = load i32, ptr %i.ad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i121) #8, !srcloc !14
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ %.0.copyload.i119, %bb.b ], [ %3, %bb.c ], [ %.0.copyload.i121, %bb.d ] ; 2 uses
  %.val110 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %.val110, i64 %i.f
  %.0.copyload.i122 = load i32, ptr %i.ae, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i122) #8, !srcloc !14
  %i.af = add i32 %.0.copyload.i122, 1
  %.val117 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.val117, i64 %i.f
  store i32 %i.af, ptr %i.ag, align 1
  %i.ah = zext i32 %.0 to i64
  %.val109 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %.val109, i64 %i.ah
  %.0.copyload.i123 = load i32, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i123) #8, !srcloc !14
  %.not108 = icmp eq i32 %.0.copyload.i123, -1
  br i1 %.not108, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = add nuw nsw i64 %i.e, 8                 ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 %i.aj
  %.0.copyload.i124 = load i32, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i124) #8, !srcloc !14
  %i.al = add i32 %.0.copyload.i124, -1
  %.val116 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %.val116, i64 %i.aj
  store i32 %i.al, ptr %i.am, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 %i.b, ptr %i.a, align 8, !tbaa !15
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3ASMLoc0x2C0x20hermes0x3A0x3Aparser0x3A0x3APreParsedFunctionInfo0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Cllvh0x3A0x3ASMLoc0x2C0x20hermes0x3A0x3Aparser0x3A0x3APreParsedFunctionInfo0x2C0x20hermes0x3A0x3Aparser0x3A0x3ASMLocInfo0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3ASMLoc0x2C0x20hermes0x3A0x3Aparser0x3A0x3APreParsedFunctionInfo0x3E0x3E0x2C0x20llvh0x3A0x3ASMLoc0x2C0x20hermes0x3A0x3Aparser0x3A0x3APreParsedFunctionInfo0x2C0x20hermes0x3A0x3Aparser0x3A0x3ASMLocInfo0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3ASMLoc0x2C0x20hermes0x3A0x3Aparser0x3A0x3APreParsedFunctionInfo0x3E0x3E0x3A0x3AInsertIntoBucket0x3Cllvh0x3A0x3ASMLoc0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3ASMLoc0x2C0x20hermes0x3A0x3Aparser0x3A0x3APreParsedFunctionInfo0x3E0x2A0x2C0x20llvh0x3A0x3ASMLoc0x20const0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 83 uses
  %i.b = zext i32 %1 to i64                       ; 9 uses
  %i.c = add nuw nsw i64 %i.b, 4                  ; 9 uses
  %.val766 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val766, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = shl i32 %.0.copyload.i, 2
  %i.f = add i32 %i.e, 4
  %i.g = add nuw nsw i64 %i.b, 12                 ; 6 uses
  %.val765 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val765, i64 %i.g
  %.0.copyload.i807 = load i32, ptr %i.h, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i807) #8, !srcloc !14
  %i.i = mul i32 %.0.copyload.i807, 3
  %.not = icmp ult i32 %i.f, %i.i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = shl i32 %.0.copyload.i807, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = xor i32 %.0.copyload.i, -1
  %i.l = add i32 %.0.copyload.i807, %i.k
  %.val764 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val764, i64 %i.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.copyload.i808 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i808) #8, !srcloc !14
  %i.o = sub i32 %i.l, %.0.copyload.i808
  %i.p = lshr i32 %.0.copyload.i807, 3
  %i.q = icmp ugt i32 %i.o, %i.p
  br i1 %i.q, label %bb.z, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0681 = phi i32 [ %i.j, %bb.b ], [ %.0.copyload.i807, %bb.c ]
  %i.r = add i32 %.0681, -1
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = lshr i64 %i.s, 1
  %i.u = or i64 %i.t, %i.s                        ; 2 uses
  %i.v = lshr i64 %i.u, 2
  %i.w = or i64 %i.v, %i.u                        ; 2 uses
  %i.x = lshr i64 %i.w, 4
  %i.y = or i64 %i.x, %i.w                        ; 2 uses
  %i.z = lshr i64 %i.y, 8
  %i.aa = or i64 %i.z, %i.y                       ; 2 uses
  %i.ab = lshr i64 %i.aa, 16
  %i.ac = or i64 %i.ab, %i.aa
  %i.ad = trunc nuw i64 %i.ac to i32
  %i.ae = add i32 %i.ad, 1
  %4 = tail call i32 @llvm.umax.i32(i32 %i.ae, i32 64) ; 2 uses
  %.val796 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %.val796, i64 %i.g
  store i32 %4, ptr %i.af, align 1
  %.val763 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.val763, i64 %i.b
  %.0.copyload.i809 = load i32, ptr %i.ag, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i809) #8, !srcloc !14
  %i.ah = mul i32 %4, 60
  %i.ai = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ah) #8 ; 13 uses
  %.val795 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %.val795, i64 %i.b
  store i32 %i.ai, ptr %i.aj, align 1
  %.not714 = icmp eq i32 %.0.copyload.i809, 0
  br i1 %.not714, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.val806 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val806, i64 %i.c
  store i64 0, ptr %i.ak, align 1
  %.val762 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val762, i64 %i.g
  %.0.copyload.i810 = load i32, ptr %i.al, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i810) #8, !srcloc !14
  %i.am = mul i32 %.0.copyload.i810, 60           ; 2 uses
  %i.an = add i32 %i.am, -60                      ; 2 uses
  %i.ao = udiv i32 %i.an, 60
  %i.ap = add nuw nsw i32 %i.ao, 1
  %i.aq = and i32 %i.ap, 7                        ; 7 uses
  %.not729 = icmp eq i32 %i.aq, 0
  br i1 %.not729, label %.loopexit838, label %.preheader837

.preheader837:                                    ; preds = %bb.e
  %i.ar = zext i32 %i.ai to i64
  %.val794 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %.val794, i64 %i.ar
  store i32 0, ptr %i.as, align 1
  %i.at = add i32 %i.ai, 60                       ; 2 uses
  %.not730 = icmp eq i32 %i.aq, 1
  br i1 %.not730, label %.loopexit838, label %.preheader837.1

.preheader837.1:                                  ; preds = %.preheader837
  %i.au = zext i32 %i.at to i64
  %.val794.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val794.1, i64 %i.au
  store i32 0, ptr %i.av, align 1
  %i.aw = add i32 %i.ai, 120                      ; 2 uses
  %.not730.1 = icmp eq i32 %i.aq, 2
  br i1 %.not730.1, label %.loopexit838, label %.preheader837.2

.preheader837.2:                                  ; preds = %.preheader837.1
  %i.ax = zext i32 %i.aw to i64
  %.val794.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %.val794.2, i64 %i.ax
  store i32 0, ptr %i.ay, align 1
  %i.az = add i32 %i.ai, 180                      ; 2 uses
  %.not730.2 = icmp eq i32 %i.aq, 3
  br i1 %.not730.2, label %.loopexit838, label %.preheader837.3

.preheader837.3:                                  ; preds = %.preheader837.2
  %i.ba = zext i32 %i.az to i64
  %.val794.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %.val794.3, i64 %i.ba
  store i32 0, ptr %i.bb, align 1
  %i.bc = add i32 %i.ai, 240                      ; 2 uses
  %.not730.3 = icmp eq i32 %i.aq, 4
  br i1 %.not730.3, label %.loopexit838, label %.preheader837.4

.preheader837.4:                                  ; preds = %.preheader837.3
  %i.bd = zext i32 %i.bc to i64
  %.val794.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %.val794.4, i64 %i.bd
  store i32 0, ptr %i.be, align 1
  %i.bf = add i32 %i.ai, 300                      ; 2 uses
  %.not730.4 = icmp eq i32 %i.aq, 5
  br i1 %.not730.4, label %.loopexit838, label %.preheader837.5

.preheader837.5:                                  ; preds = %.preheader837.4
  %i.bg = zext i32 %i.bf to i64
  %.val794.5 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %.val794.5, i64 %i.bg
  store i32 0, ptr %i.bh, align 1
  %i.bi = add i32 %i.ai, 360                      ; 2 uses
  %.not730.5 = icmp eq i32 %i.aq, 6
  br i1 %.not730.5, label %.loopexit838, label %.preheader837.6

.preheader837.6:                                  ; preds = %.preheader837.5
  %i.bj = zext i32 %i.bi to i64
  %.val794.6 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %.val794.6, i64 %i.bj
  store i32 0, ptr %i.bk, align 1
  %i.bl = add i32 %i.ai, 420
  br label %.loopexit838

.loopexit838:                                     ; preds = %.preheader837, %.preheader837.1, %.preheader837.2, %.preheader837.3, %.preheader837.4, %.preheader837.5, %.preheader837.6, %bb.e
  %.1 = phi i32 [ %i.ai, %bb.e ], [ %i.at, %.preheader837 ], [ %i.aw, %.preheader837.1 ], [ %i.az, %.preheader837.2 ], [ %i.bc, %.preheader837.3 ], [ %i.bf, %.preheader837.4 ], [ %i.bi, %.preheader837.5 ], [ %i.bl, %.preheader837.6 ]
  %i.bm = icmp ult i32 %i.an, 420
  br i1 %i.bm, label %.loopexit836, label %bb.f

bb.f:                                             ; preds = %.loopexit838
  %i.bn = add i32 %i.am, %i.ai
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.2 = phi i32 [ %.1, %bb.f ], [ %i.ce, %bb.g ]  ; 2 uses
  %i.bo = zext i32 %.2 to i64                     ; 8 uses
  %.val793 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %.val793, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 420
  store i32 0, ptr %i.bq, align 1
  %.val792 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.br = getelementptr inbounds nuw i8, ptr %.val792, i64 %i.bo
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 360
  store i32 0, ptr %i.bs, align 1
  %.val791 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bt = getelementptr inbounds nuw i8, ptr %.val791, i64 %i.bo
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 300
  store i32 0, ptr %i.bu, align 1
  %.val790 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bv = getelementptr inbounds nuw i8, ptr %.val790, i64 %i.bo
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 240
  store i32 0, ptr %i.bw, align 1
  %.val789 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %.val789, i64 %i.bo
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 180
  store i32 0, ptr %i.by, align 1
  %.val788 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bz = getelementptr inbounds nuw i8, ptr %.val788, i64 %i.bo
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 120
  store i32 0, ptr %i.ca, align 1
  %.val787 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cb = getelementptr inbounds nuw i8, ptr %.val787, i64 %i.bo
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 60
  store i32 0, ptr %i.cc, align 1
  %.val786 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cd = getelementptr inbounds nuw i8, ptr %.val786, i64 %i.bo
  store i32 0, ptr %i.cd, align 1
  %i.ce = add i32 %.2, 480                        ; 2 uses
  %.not731 = icmp eq i32 %i.ce, %i.bn
  br i1 %.not731, label %.loopexit836, label %bb.g

bb.h:                                             ; preds = %bb.d
  %i.cf = mul i32 %.0.copyload.i807, 60           ; 2 uses
  %i.cg = add i32 %.0.copyload.i809, %i.cf
  %.val805 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %.val805, i64 %i.c
  store i64 0, ptr %i.ch, align 1
  %.val761 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %.val761, i64 %i.g
  %.0.copyload.i811 = load i32, ptr %i.ci, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i811) #8, !srcloc !14
  %.not715 = icmp eq i32 %.0.copyload.i811, 0
  br i1 %.not715, label %.loopexit844, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val760 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cj = getelementptr inbounds nuw i8, ptr %.val760, i64 %i.b
  %.0.copyload.i812 = load i32, ptr %i.cj, align 1 ; 11 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i812) #8, !srcloc !14
  %i.ck = mul i32 %.0.copyload.i811, 60           ; 2 uses
  %i.cl = add i32 %i.ck, -60                      ; 2 uses
  %i.cm = udiv i32 %i.cl, 60
  %i.cn = add nuw nsw i32 %i.cm, 1
  %i.co = and i32 %i.cn, 7                        ; 7 uses
  %.not716 = icmp eq i32 %i.co, 0
  br i1 %.not716, label %.loopexit846, label %.preheader845

.preheader845:                                    ; preds = %bb.i
  %i.cp = zext i32 %.0.copyload.i812 to i64
  %.val785 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cq = getelementptr inbounds nuw i8, ptr %.val785, i64 %i.cp
  store i32 0, ptr %i.cq, align 1
  %i.cr = add i32 %.0.copyload.i812, 60           ; 2 uses
  %.not717 = icmp eq i32 %i.co, 1
  br i1 %.not717, label %.loopexit846, label %.preheader845.1

.preheader845.1:                                  ; preds = %.preheader845
  %i.cs = zext i32 %i.cr to i64
  %.val785.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ct = getelementptr inbounds nuw i8, ptr %.val785.1, i64 %i.cs
  store i32 0, ptr %i.ct, align 1
  %i.cu = add i32 %.0.copyload.i812, 120          ; 2 uses
  %.not717.1 = icmp eq i32 %i.co, 2
  br i1 %.not717.1, label %.loopexit846, label %.preheader845.2

.preheader845.2:                                  ; preds = %.preheader845.1
  %i.cv = zext i32 %i.cu to i64
  %.val785.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cw = getelementptr inbounds nuw i8, ptr %.val785.2, i64 %i.cv
  store i32 0, ptr %i.cw, align 1
  %i.cx = add i32 %.0.copyload.i812, 180          ; 2 uses
  %.not717.2 = icmp eq i32 %i.co, 3
  br i1 %.not717.2, label %.loopexit846, label %.preheader845.3

.preheader845.3:                                  ; preds = %.preheader845.2
  %i.cy = zext i32 %i.cx to i64
  %.val785.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cz = getelementptr inbounds nuw i8, ptr %.val785.3, i64 %i.cy
  store i32 0, ptr %i.cz, align 1
  %i.da = add i32 %.0.copyload.i812, 240          ; 2 uses
  %.not717.3 = icmp eq i32 %i.co, 4
  br i1 %.not717.3, label %.loopexit846, label %.preheader845.4

.preheader845.4:                                  ; preds = %.preheader845.3
  %i.db = zext i32 %i.da to i64
  %.val785.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dc = getelementptr inbounds nuw i8, ptr %.val785.4, i64 %i.db
  store i32 0, ptr %i.dc, align 1
  %i.dd = add i32 %.0.copyload.i812, 300          ; 2 uses
end_hunk_19
begin_hunk_20_@w2c_hermes_llvh0x3A0x3ASmallVectorImpl0x3Cllvh0x3A0x3ASmallString0x3C24u0x3E0x3E0x3A0x3Aoperator0x3D0x28llvh0x3A0x3ASmallVectorImpl0x3Cllvh0x3A0x3ASmallString0x3C24u0x3E0x3E0x260x260x29:bb.a
  %i.cg = zext i32 %.4 to i64
  %.val503 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %.val503, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %.0.copyload.i562 = load i32, ptr %i.ci, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i562) #8, !srcloc !14
  %.not483 = icmp eq i32 %.0.copyload.i562, 0
  br i1 %.not483, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorImpl0x3Cchar0x3E0x3A0x3Aoperator0x3D0x28llvh0x3A0x3ASmallVectorImpl0x3Cchar0x3E0x260x260x29(ptr noundef nonnull %0, i32 noundef %.6, i32 noundef %.4)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.cj = add i32 %.6, 36
  %i.ck = add i32 %.4, 36                         ; 2 uses
  %.not484 = icmp eq i32 %i.ck, %i.bw
  br i1 %.not484, label %bb.ak, label %bb.ah

bb.ak:                                            ; preds = %bb.aj
  %.val502 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %.val502, i64 %i.b
  %.0.copyload.i563 = load i32, ptr %i.cl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i563) #8, !srcloc !14
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.loopexit567
  %.5 = phi i32 [ %.0.copyload.i563, %bb.ak ], [ %.0.copyload.i559, %.loopexit567 ] ; 2 uses
  %.val529 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cm = getelementptr inbounds nuw i8, ptr %.val529, i64 %i.ab
  store i32 %.0.copyload.i547, ptr %i.cm, align 1
  %.val501 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cn = getelementptr inbounds nuw i8, ptr %.val501, i64 %i.ad
  %.0.copyload.i564 = load i32, ptr %i.cn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i564) #8, !srcloc !14
  %.not485 = icmp eq i32 %.0.copyload.i564, 0
  br i1 %.not485, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.co = mul i32 %.0.copyload.i564, 36
  %i.cp = add i32 %i.co, %.5
  br label %bb.an

bb.an:                                            ; preds = %bb.ap, %bb.am
  %.7 = phi i32 [ %i.cp, %bb.am ], [ %i.cr, %bb.ap ] ; 2 uses
  %i.cq = add i32 %.7, -24
  %i.cr = add i32 %.7, -36                        ; 3 uses
  %i.cs = zext i32 %i.cr to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ct = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cs
  %.0.copyload.i565 = load i32, ptr %i.ct, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i565) #8, !srcloc !14
  %.not486 = icmp eq i32 %i.cq, %.0.copyload.i565
  br i1 %.not486, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i565) #8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.not487 = icmp eq i32 %i.cr, %.5
  br i1 %.not487, label %.loopexit, label %bb.an

.loopexit:                                        ; preds = %bb.w, %bb.ap, %bb.al, %.loopexit569, %bb.k
  %.0443 = add i32 %2, 4
  %i.cu = zext i32 %.0443 to i64
  %.val528 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cv = getelementptr inbounds nuw i8, ptr %.val528, i64 %i.cu
  store i32 0, ptr %i.cv, align 1
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x3E0x3E0x2C0x20llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3AInsertIntoBucketImpl0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x3E0x28llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x20const0x260x2C0x20llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x20const0x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x3E0x2A0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 4 uses
  %i.c = add i32 %i.b, -16                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.e = zext i32 %1 to i64                       ; 4 uses
  %i.f = add nuw nsw i64 %i.e, 4                  ; 3 uses
  %.val115 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %.val115, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.h = shl i32 %.0.copyload.i, 2
  %i.i = add i32 %i.h, 4
  %.val114 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %.val114, i64 %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.0.copyload.i118 = load i32, ptr %i.k, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i118) #8, !srcloc !14
  %i.l = mul i32 %.0.copyload.i118, 3
  %.not = icmp ult i32 %i.i, %i.l
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = shl i32 %.0.copyload.i118, 1
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.m)
  %i.n = add i32 %i.b, -8
  %i.o = tail call i32 @w2c_hermes_bool0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x3E0x3E0x2C0x20llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3ALookupBucketFor0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x3E0x28llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x20const0x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x3E0x20const0x2A0x260x290x20const(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %3, i32 noundef %i.n) #8 ; 0 uses
  %i.p = zext i32 %i.c to i64
  %.val113 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %.val113, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.0.copyload.i119 = load i32, ptr %i.r, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i119) #8, !srcloc !14
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = xor i32 %.0.copyload.i, -1
  %i.t = add i32 %.0.copyload.i118, %i.s
  %.val112 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val112, i64 %i.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.copyload.i120 = load i32, ptr %i.v, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i120) #8, !srcloc !14
  %i.w = sub i32 %i.t, %.0.copyload.i120
  %i.x = lshr i32 %.0.copyload.i118, 3
  %i.y = icmp ugt i32 %i.w, %i.x
  br i1 %i.y, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0.copyload.i118)
  %i.z = add i32 %i.b, -4
  %i.aa = tail call i32 @w2c_hermes_bool0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x3E0x3E0x2C0x20llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3ALookupBucketFor0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x3E0x28llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x20const0x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x3E0x20const0x2A0x260x290x20const(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %3, i32 noundef %i.z) #8 ; 0 uses
  %i.ab = zext i32 %i.c to i64
  %.val111 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.val111, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %.0.copyload.i121 = load i32, ptr %i.ad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i121) #8, !srcloc !14
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ %.0.copyload.i119, %bb.b ], [ %4, %bb.c ], [ %.0.copyload.i121, %bb.d ] ; 2 uses
  %.val110 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %.val110, i64 %i.f
  %.0.copyload.i122 = load i32, ptr %i.ae, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i122) #8, !srcloc !14
  %i.af = add i32 %.0.copyload.i122, 1
  %.val117 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.val117, i64 %i.f
  store i32 %i.af, ptr %i.ag, align 1
  %i.ah = zext i32 %.0 to i64
  %.val109 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %.val109, i64 %i.ah
  %.0.copyload.i123 = load i32, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i123) #8, !srcloc !14
  %.not108 = icmp eq i32 %.0.copyload.i123, -1
  br i1 %.not108, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = add nuw nsw i64 %i.e, 8                 ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 %i.aj
  %.0.copyload.i124 = load i32, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i124) #8, !srcloc !14
  %i.al = add i32 %.0.copyload.i124, -1
  %.val116 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %.val116, i64 %i.aj
  store i32 %i.al, ptr %i.am, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 %i.b, ptr %i.a, align 8, !tbaa !15
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 46 uses
  %i.e = zext i32 %1 to i64                       ; 5 uses
  %i.f = add nuw nsw i64 %i.e, 12                 ; 4 uses
  %.val355 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %.val355, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.h = add i32 %2, -1
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = lshr i64 %i.i, 1
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 2
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 4
  %i.o = or i64 %i.n, %i.m                        ; 2 uses
  %i.p = lshr i64 %i.o, 8
  %i.q = or i64 %i.p, %i.o                        ; 2 uses
  %i.r = lshr i64 %i.q, 16
  %i.s = or i64 %i.r, %i.q
  %i.t = trunc nuw i64 %i.s to i32
  %i.u = add i32 %i.t, 1
  %3 = tail call i32 @llvm.umax.i32(i32 %i.u, i32 64) ; 2 uses
  %.val359 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %.val359, i64 %i.f
  store i32 %3, ptr %i.v, align 1
  %.val354 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %.val354, i64 %i.e
  %.0.copyload.i383 = load i32, ptr %i.w, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i383) #8, !srcloc !14
  %i.x = mul i32 %3, 12
  %i.y = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef %0, i32 noundef %i.x) #8 ; 21 uses
  %.val358 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val358, i64 %i.e
  store i32 %i.y, ptr %i.z, align 1
  %.not = icmp eq i32 %.0.copyload.i383, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.val380 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %.val380, i64 %i.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i64 0, ptr %i.ab, align 1
  %.val353 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.val353, i64 %i.f
  %.0.copyload.i384 = load i32, ptr %i.ac, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i384) #8, !srcloc !14
  %.not346 = icmp eq i32 %.0.copyload.i384, 0
  br i1 %.not346, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = mul i32 %.0.copyload.i384, 12           ; 2 uses
  %i.ae = add i32 %i.ad, -12                      ; 2 uses
  %i.af = udiv i32 %i.ae, 12
  %i.ag = add nuw nsw i32 %i.af, 1
  %i.ah = and i32 %i.ag, 7                        ; 7 uses
  %.not347 = icmp eq i32 %i.ah, 0
  br i1 %.not347, label %.loopexit391, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.ai = zext i32 %i.y to i64
  %.val379 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %.val379, i64 %i.ai
  store i64 4294967295, ptr %i.aj, align 1
  %i.ak = add i32 %i.y, 12                        ; 2 uses
  %.not348 = icmp eq i32 %i.ah, 1
  br i1 %.not348, label %.loopexit391, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %i.al = zext i32 %i.ak to i64
  %.val379.1 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %.val379.1, i64 %i.al
  store i64 4294967295, ptr %i.am, align 1
  %i.an = add i32 %i.y, 24                        ; 2 uses
  %.not348.1 = icmp eq i32 %i.ah, 2
  br i1 %.not348.1, label %.loopexit391, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.ao = zext i32 %i.an to i64
  %.val379.2 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.val379.2, i64 %i.ao
  store i64 4294967295, ptr %i.ap, align 1
  %i.aq = add i32 %i.y, 36                        ; 2 uses
  %.not348.2 = icmp eq i32 %i.ah, 3
  br i1 %.not348.2, label %.loopexit391, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.ar = zext i32 %i.aq to i64
  %.val379.3 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %.val379.3, i64 %i.ar
  store i64 4294967295, ptr %i.as, align 1
  %i.at = add i32 %i.y, 48                        ; 2 uses
  %.not348.3 = icmp eq i32 %i.ah, 4
  br i1 %.not348.3, label %.loopexit391, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.au = zext i32 %i.at to i64
  %.val379.4 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val379.4, i64 %i.au
  store i64 4294967295, ptr %i.av, align 1
  %i.aw = add i32 %i.y, 60                        ; 2 uses
  %.not348.4 = icmp eq i32 %i.ah, 5
  br i1 %.not348.4, label %.loopexit391, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.ax = zext i32 %i.aw to i64
  %.val379.5 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %.val379.5, i64 %i.ax
  store i64 4294967295, ptr %i.ay, align 1
  %i.az = add i32 %i.y, 72                        ; 2 uses
  %.not348.5 = icmp eq i32 %i.ah, 6
  br i1 %.not348.5, label %.loopexit391, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.ba = zext i32 %i.az to i64
  %.val379.6 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %.val379.6, i64 %i.ba
  store i64 4294967295, ptr %i.bb, align 1
  %i.bc = add i32 %i.y, 84
  br label %.loopexit391

.loopexit391:                                     ; preds = %.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %bb.c
  %.1 = phi i32 [ %i.y, %bb.c ], [ %i.ak, %.preheader ], [ %i.an, %.preheader.1 ], [ %i.aq, %.preheader.2 ], [ %i.at, %.preheader.3 ], [ %i.aw, %.preheader.4 ], [ %i.az, %.preheader.5 ], [ %i.bc, %.preheader.6 ]
  %i.bd = icmp ult i32 %i.ae, 84
  br i1 %i.bd, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.loopexit391
  %i.be = add i32 %i.ad, %i.y
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.2 = phi i32 [ %.1, %bb.d ], [ %i.bv, %bb.e ]  ; 2 uses
  %i.bf = zext i32 %.2 to i64                     ; 8 uses
  %.val378 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %.val378, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 84
  store i64 4294967295, ptr %i.bh, align 1
  %.val377 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %.val377, i64 %i.bf
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  store i64 4294967295, ptr %i.bj, align 1
  %.val376 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %.val376, i64 %i.bf
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 60
  store i64 4294967295, ptr %i.bl, align 1
  %.val375 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %.val375, i64 %i.bf
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  store i64 4294967295, ptr %i.bn, align 1
  %.val374 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %.val374, i64 %i.bf
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 36
  store i64 4294967295, ptr %i.bp, align 1
  %.val373 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %.val373, i64 %i.bf
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store i64 4294967295, ptr %i.br, align 1
  %.val372 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %.val372, i64 %i.bf
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i64 4294967295, ptr %i.bt, align 1
  %.val371 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val371, i64 %i.bf
  store i64 4294967295, ptr %i.bu, align 1
  %i.bv = add i32 %.2, 96                         ; 2 uses
  %.not349 = icmp eq i32 %i.bv, %i.be
  br i1 %.not349, label %.loopexit, label %bb.e

bb.f:                                             ; preds = %bb.a
  %i.bw = add nuw nsw i64 %i.e, 4                 ; 3 uses
  %.val370 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %.val370, i64 %i.bw
  store i64 0, ptr %i.bx, align 1
  %.val352 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %.val352, i64 %i.f
  %.0.copyload.i385 = load i32, ptr %i.by, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i385) #8, !srcloc !14
  %.not339 = icmp eq i32 %.0.copyload.i385, 0
  br i1 %.not339, label %.loopexit393, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bz = mul i32 %.0.copyload.i385, 12           ; 2 uses
  %i.ca = add i32 %i.bz, -12                      ; 2 uses
  %i.cb = udiv i32 %i.ca, 12
  %i.cc = add nuw nsw i32 %i.cb, 1
  %i.cd = and i32 %i.cc, 7                        ; 7 uses
  %.not340 = icmp eq i32 %i.cd, 0
  br i1 %.not340, label %.loopexit395, label %.preheader394

.preheader394:                                    ; preds = %bb.g
  %i.ce = zext i32 %i.y to i64
  %.val369 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cf = getelementptr inbounds nuw i8, ptr %.val369, i64 %i.ce
  store i64 4294967295, ptr %i.cf, align 1
  %i.cg = add i32 %i.y, 12                        ; 2 uses
  %.not341 = icmp eq i32 %i.cd, 1
  br i1 %.not341, label %.loopexit395, label %.preheader394.1

.preheader394.1:                                  ; preds = %.preheader394
  %i.ch = zext i32 %i.cg to i64
  %.val369.1 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %.val369.1, i64 %i.ch
  store i64 4294967295, ptr %i.ci, align 1
  %i.cj = add i32 %i.y, 24                        ; 2 uses
  %.not341.1 = icmp eq i32 %i.cd, 2
  br i1 %.not341.1, label %.loopexit395, label %.preheader394.2

.preheader394.2:                                  ; preds = %.preheader394.1
  %i.ck = zext i32 %i.cj to i64
  %.val369.2 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %.val369.2, i64 %i.ck
  store i64 4294967295, ptr %i.cl, align 1
  %i.cm = add i32 %i.y, 36                        ; 2 uses
  %.not341.2 = icmp eq i32 %i.cd, 3
  br i1 %.not341.2, label %.loopexit395, label %.preheader394.3

.preheader394.3:                                  ; preds = %.preheader394.2
  %i.cn = zext i32 %i.cm to i64
  %.val369.3 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.co = getelementptr inbounds nuw i8, ptr %.val369.3, i64 %i.cn
  store i64 4294967295, ptr %i.co, align 1
  %i.cp = add i32 %i.y, 48                        ; 2 uses
  %.not341.3 = icmp eq i32 %i.cd, 4
  br i1 %.not341.3, label %.loopexit395, label %.preheader394.4

.preheader394.4:                                  ; preds = %.preheader394.3
  %i.cq = zext i32 %i.cp to i64
  %.val369.4 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %.val369.4, i64 %i.cq
  store i64 4294967295, ptr %i.cr, align 1
  %i.cs = add i32 %i.y, 60                        ; 2 uses
end_hunk_20
begin_hunk_21_@w2c_hermes_llvh0x3A0x3ADenseMap0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29:bb.a
.preheader394.5:                                  ; preds = %.preheader394.4
  %i.ct = zext i32 %i.cs to i64
  %.val369.5 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cu = getelementptr inbounds nuw i8, ptr %.val369.5, i64 %i.ct
  store i64 4294967295, ptr %i.cu, align 1
  %i.cv = add i32 %i.y, 72                        ; 2 uses
  %.not341.5 = icmp eq i32 %i.cd, 6
  br i1 %.not341.5, label %.loopexit395, label %.preheader394.6

.preheader394.6:                                  ; preds = %.preheader394.5
  %i.cw = zext i32 %i.cv to i64
  %.val369.6 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cx = getelementptr inbounds nuw i8, ptr %.val369.6, i64 %i.cw
  store i64 4294967295, ptr %i.cx, align 1
  %i.cy = add i32 %i.y, 84
  br label %.loopexit395

.loopexit395:                                     ; preds = %.preheader394, %.preheader394.1, %.preheader394.2, %.preheader394.3, %.preheader394.4, %.preheader394.5, %.preheader394.6, %bb.g
  %.4 = phi i32 [ %i.y, %bb.g ], [ %i.cg, %.preheader394 ], [ %i.cj, %.preheader394.1 ], [ %i.cm, %.preheader394.2 ], [ %i.cp, %.preheader394.3 ], [ %i.cs, %.preheader394.4 ], [ %i.cv, %.preheader394.5 ], [ %i.cy, %.preheader394.6 ]
  %i.cz = icmp ult i32 %i.ca, 84
  br i1 %i.cz, label %.loopexit393, label %bb.h

bb.h:                                             ; preds = %.loopexit395
  %i.da = add i32 %i.bz, %i.y
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.5 = phi i32 [ %.4, %bb.h ], [ %i.dr, %bb.i ]  ; 2 uses
  %i.db = zext i32 %.5 to i64                     ; 8 uses
  %.val368 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dc = getelementptr inbounds nuw i8, ptr %.val368, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 84
  store i64 4294967295, ptr %i.dd, align 1
  %.val367 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.de = getelementptr inbounds nuw i8, ptr %.val367, i64 %i.db
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  store i64 4294967295, ptr %i.df, align 1
  %.val366 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dg = getelementptr inbounds nuw i8, ptr %.val366, i64 %i.db
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 60
  store i64 4294967295, ptr %i.dh, align 1
  %.val365 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.di = getelementptr inbounds nuw i8, ptr %.val365, i64 %i.db
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  store i64 4294967295, ptr %i.dj, align 1
  %.val364 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dk = getelementptr inbounds nuw i8, ptr %.val364, i64 %i.db
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 36
  store i64 4294967295, ptr %i.dl, align 1
  %.val363 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dm = getelementptr inbounds nuw i8, ptr %.val363, i64 %i.db
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store i64 4294967295, ptr %i.dn, align 1
  %.val362 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.do = getelementptr inbounds nuw i8, ptr %.val362, i64 %i.db
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  store i64 4294967295, ptr %i.dp, align 1
  %.val361 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dq = getelementptr inbounds nuw i8, ptr %.val361, i64 %i.db
  store i64 4294967295, ptr %i.dq, align 1
  %i.dr = add i32 %.5, 96                         ; 2 uses
  %.not342 = icmp eq i32 %i.dr, %i.da
  br i1 %.not342, label %.loopexit393, label %bb.i

.loopexit393:                                     ; preds = %bb.i, %.loopexit395, %bb.f
  %.not343 = icmp eq i32 %.0.copyload.i, 0
  br i1 %.not343, label %.loopexit392, label %bb.j

bb.j:                                             ; preds = %.loopexit393
  %i.ds = mul i32 %.0.copyload.i, 12
  %i.dt = add i32 %.0.copyload.i383, %i.ds
  %i.du = add i32 %i.b, -4
  %i.dv = zext i32 %i.c to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  %.6 = phi i32 [ %.0.copyload.i383, %bb.j ], [ %i.em, %bb.m ] ; 3 uses
  %i.dw = zext i32 %.6 to i64                     ; 3 uses
  %.val382 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dx = getelementptr inbounds nuw i8, ptr %.val382, i64 %i.dw
  %.0.copyload.i386 = load i64, ptr %i.dx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i386) #8, !srcloc !33
  %i.dy = and i64 %.0.copyload.i386, 4294967294
  %.not344 = icmp eq i64 %i.dy, 4294967294
  br i1 %.not344, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dz = tail call i32 @w2c_hermes_bool0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x3E0x3E0x2C0x20llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3ALookupBucketFor0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x3E0x28llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x20const0x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x3E0x20const0x2A0x260x290x20const(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.6, i32 noundef %i.du) #8 ; 0 uses
  %.val351 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ea = getelementptr inbounds nuw i8, ptr %.val351, i64 %i.dv
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  %.0.copyload.i387 = load i32, ptr %i.eb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i387) #8, !srcloc !14
  %.val381 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ec = getelementptr inbounds nuw i8, ptr %.val381, i64 %i.dw
  %.0.copyload.i388 = load i64, ptr %i.ec, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i388) #8, !srcloc !33
  %i.ed = zext i32 %.0.copyload.i387 to i64       ; 2 uses
  %.val360 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ee = getelementptr inbounds nuw i8, ptr %.val360, i64 %i.ed
  store i64 %.0.copyload.i388, ptr %i.ee, align 1
  %.val350 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ef = getelementptr inbounds nuw i8, ptr %.val350, i64 %i.dw
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %.0.copyload.i389 = load i32, ptr %i.eg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i389) #8, !srcloc !14
  %.val357 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.eh = getelementptr inbounds nuw i8, ptr %.val357, i64 %i.ed
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i32 %.0.copyload.i389, ptr %i.ei, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ej = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bw
  %.0.copyload.i390 = load i32, ptr %i.ej, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i390) #8, !srcloc !14
  %i.ek = add i32 %.0.copyload.i390, 1
  %.val356 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.el = getelementptr inbounds nuw i8, ptr %.val356, i64 %i.bw
  store i32 %i.ek, ptr %i.el, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.em = add i32 %.6, 12                         ; 2 uses
  %.not345 = icmp eq i32 %i.em, %i.dt
  br i1 %.not345, label %.loopexit392, label %bb.k

.loopexit392:                                     ; preds = %bb.m, %.loopexit393
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i383) #8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.loopexit391, %bb.b, %.loopexit392
  store i32 %i.b, ptr %i.a, align 8, !tbaa !15
  ret void
}

declare i32 @w2c_hermes_bool0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x3E0x3E0x2C0x20llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3ALookupBucketFor0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x3E0x28llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x20const0x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x2C0x20unsigned0x20int0x3E0x20const0x2A0x260x290x20const(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20hermes0x3A0x3AESTree0x3A0x3AIdentifierNode0x2A0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ASmallDenseMap0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20hermes0x3A0x3AESTree0x3A0x3AIdentifierNode0x2A0x2C0x208u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AUniqueString0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20hermes0x3A0x3AESTree0x3A0x3AIdentifierNode0x2A0x3E0x3E0x2C0x20hermes0x3A0x3AUniqueString0x2A0x2C0x20hermes0x3A0x3AESTree0x3A0x3AIdentifierNode0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AUniqueString0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20hermes0x3A0x3AESTree0x3A0x3AIdentifierNode0x2A0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20hermes0x3A0x3AESTree0x3A0x3AIdentifierNode0x2A0x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20hermes0x3A0x3AESTree0x3A0x3AIdentifierNode0x2A0x3E0x2A0x2C0x20hermes0x3A0x3AUniqueString0x2A0x260x260x2C0x20hermes0x3A0x3AESTree0x3A0x3AIdentifierNode0x2A0x260x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 58 uses
  %i.b = zext i32 %1 to i64                       ; 26 uses
  %.val591 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %.val591, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.d = lshr i32 %.0.copyload.i, 1               ; 2 uses
  %i.e = shl i32 %i.d, 2
  %i.f = add i32 %i.e, 4
  %i.g = add nuw nsw i64 %i.b, 12                 ; 6 uses
  %.val590 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val590, i64 %i.g
  %.0.copyload.i618 = load i32, ptr %i.h, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i618) #8, !srcloc !14
  %i.i = and i32 %.0.copyload.i, 1                ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  %i.j = select i1 %.not, i32 %.0.copyload.i618, i32 8 ; 5 uses
  %i.k = mul i32 %i.j, 3
  %.not552 = icmp ult i32 %i.f, %i.k
  br i1 %.not552, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = shl i32 %i.j, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = xor i32 %i.d, -1
  %i.n = add i32 %i.j, %i.m
  %.val589 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %.val589, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.0.copyload.i619 = load i32, ptr %i.p, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i619) #8, !srcloc !14
  %i.q = sub i32 %i.n, %.0.copyload.i619
  %i.r = lshr i32 %i.j, 3
  %i.s = icmp ugt i32 %i.q, %i.r
  br i1 %i.s, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0542 = phi i32 [ %i.l, %bb.b ], [ %i.j, %bb.c ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !15   ; 3 uses
  %i.v = add i32 %i.u, -64                        ; 5 uses
  store i32 %i.v, ptr %i.t, align 8, !tbaa !15
  %i.w = icmp ugt i32 %.0542, 7
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = add i32 %.0542, -1
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = lshr i64 %i.y, 1
  %i.aa = or i64 %i.z, %i.y                       ; 2 uses
  %i.ab = lshr i64 %i.aa, 2
  %i.ac = or i64 %i.ab, %i.aa                     ; 2 uses
  %i.ad = lshr i64 %i.ac, 4
  %i.ae = or i64 %i.ad, %i.ac                     ; 2 uses
  %i.af = lshr i64 %i.ae, 8
  %i.ag = or i64 %i.af, %i.ae                     ; 2 uses
  %i.ah = lshr i64 %i.ag, 16
  %i.ai = or i64 %i.ah, %i.ag
  %i.aj = trunc nuw i64 %i.ai to i32
  %i.ak = add i32 %i.aj, 1
  %5 = tail call i32 @llvm.umax.i32(i32 %i.ak, i32 64)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1543 = phi i32 [ %5, %bb.e ], [ %.0542, %bb.d ] ; 6 uses
  %.val588 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val588, i64 %i.b
  %.0.copyload.i620 = load i32, ptr %i.al, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i620) #8, !srcloc !14
  %i.am = and i32 %.0.copyload.i620, 1
  %.not553 = icmp eq i32 %i.am, 0
  br i1 %.not553, label %bb.y, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = icmp ult i32 %.1543, 8
  br i1 %i.an, label %bb.ac, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = add nuw nsw i64 %i.b, 8                 ; 2 uses
  %.val587 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.val587, i64 %i.ao
  %.0.copyload.i621 = load i32, ptr %i.ap, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i621) #8, !srcloc !14
  switch i32 %.0.copyload.i621, label %bb.i [
    i32 -8, label %bb.j
    i32 -4, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.aq = zext i32 %i.v to i64                    ; 2 uses
  %.val617 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %.val617, i64 %i.aq
  store i32 %.0.copyload.i621, ptr %i.ar, align 1
  %.val586 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %.val586, i64 %i.g
  %.0.copyload.i622 = load i32, ptr %i.as, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i622) #8, !srcloc !14
  %.val616 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val616, i64 %i.aq
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 %.0.copyload.i622, ptr %i.au, align 1
  %i.av = add i32 %i.u, -56
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.h, %bb.i
  %.0 = phi i32 [ %i.av, %bb.i ], [ %i.v, %bb.h ], [ %i.v, %bb.h ] ; 4 uses
  %.val585 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %.val585, i64 %i.b
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.0.copyload.i623 = load i32, ptr %i.ax, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i623) #8, !srcloc !14
  switch i32 %.0.copyload.i623, label %bb.k [
    i32 -8, label %bb.l
    i32 -4, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.ay = zext i32 %.0 to i64                     ; 2 uses
  %.val615 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %.val615, i64 %i.ay
  store i32 %.0.copyload.i623, ptr %i.az, align 1
  %.val584 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %.val584, i64 %i.b
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  %.0.copyload.i624 = load i32, ptr %i.bb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i624) #8, !srcloc !14
  %.val614 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %.val614, i64 %i.ay
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 %.0.copyload.i624, ptr %i.bd, align 1
  %i.be = add i32 %.0, 8
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.j, %bb.k
  %.1 = phi i32 [ %i.be, %bb.k ], [ %.0, %bb.j ], [ %.0, %bb.j ] ; 4 uses
  %.val583 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.val583, i64 %i.b
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %.0.copyload.i625 = load i32, ptr %i.bg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i625) #8, !srcloc !14
  switch i32 %.0.copyload.i625, label %bb.m [
    i32 -8, label %bb.n
    i32 -4, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.bh = zext i32 %.1 to i64                     ; 2 uses
  %.val613 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %.val613, i64 %i.bh
  store i32 %.0.copyload.i625, ptr %i.bi, align 1
  %.val582 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %.val582, i64 %i.b
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 28
  %.0.copyload.i626 = load i32, ptr %i.bk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i626) #8, !srcloc !14
  %.val612 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %.val612, i64 %i.bh
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 %.0.copyload.i626, ptr %i.bm, align 1
  %i.bn = add i32 %.1, 8
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.l, %bb.m
  %.2 = phi i32 [ %i.bn, %bb.m ], [ %.1, %bb.l ], [ %.1, %bb.l ] ; 4 uses
  %.val581 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %.val581, i64 %i.b
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %.0.copyload.i627 = load i32, ptr %i.bp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i627) #8, !srcloc !14
  switch i32 %.0.copyload.i627, label %bb.o [
    i32 -8, label %bb.p
    i32 -4, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.bq = zext i32 %.2 to i64                     ; 2 uses
  %.val611 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.br = getelementptr inbounds nuw i8, ptr %.val611, i64 %i.bq
  store i32 %.0.copyload.i627, ptr %i.br, align 1
  %.val580 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %.val580, i64 %i.b
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 36
  %.0.copyload.i628 = load i32, ptr %i.bt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i628) #8, !srcloc !14
  %.val610 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val610, i64 %i.bq
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 %.0.copyload.i628, ptr %i.bv, align 1
  %i.bw = add i32 %.2, 8
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.n, %bb.o
  %.3 = phi i32 [ %i.bw, %bb.o ], [ %.2, %bb.n ], [ %.2, %bb.n ] ; 4 uses
  %.val579 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %.val579, i64 %i.b
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %.0.copyload.i629 = load i32, ptr %i.by, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i629) #8, !srcloc !14
  switch i32 %.0.copyload.i629, label %bb.q [
    i32 -8, label %bb.r
    i32 -4, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.bz = zext i32 %.3 to i64                     ; 2 uses
  %.val609 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %.val609, i64 %i.bz
  store i32 %.0.copyload.i629, ptr %i.ca, align 1
  %.val578 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cb = getelementptr inbounds nuw i8, ptr %.val578, i64 %i.b
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 44
  %.0.copyload.i630 = load i32, ptr %i.cc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i630) #8, !srcloc !14
  %.val608 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cd = getelementptr inbounds nuw i8, ptr %.val608, i64 %i.bz
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store i32 %.0.copyload.i630, ptr %i.ce, align 1
  %i.cf = add i32 %.3, 8
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.p, %bb.q
  %.4 = phi i32 [ %i.cf, %bb.q ], [ %.3, %bb.p ], [ %.3, %bb.p ] ; 4 uses
  %.val577 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %.val577, i64 %i.b
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %.0.copyload.i631 = load i32, ptr %i.ch, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i631) #8, !srcloc !14
  switch i32 %.0.copyload.i631, label %bb.s [
    i32 -8, label %bb.t
    i32 -4, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.ci = zext i32 %.4 to i64                     ; 2 uses
  %.val607 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cj = getelementptr inbounds nuw i8, ptr %.val607, i64 %i.ci
  store i32 %.0.copyload.i631, ptr %i.cj, align 1
  %.val576 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %.val576, i64 %i.b
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 52
  %.0.copyload.i632 = load i32, ptr %i.cl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i632) #8, !srcloc !14
  %.val606 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cm = getelementptr inbounds nuw i8, ptr %.val606, i64 %i.ci
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i32 %.0.copyload.i632, ptr %i.cn, align 1
  %i.co = add i32 %.4, 8
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.r, %bb.s
  %.5 = phi i32 [ %i.co, %bb.s ], [ %.4, %bb.r ], [ %.4, %bb.r ] ; 4 uses
  %.val575 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cp = getelementptr inbounds nuw i8, ptr %.val575, i64 %i.b
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %.0.copyload.i633 = load i32, ptr %i.cq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i633) #8, !srcloc !14
  switch i32 %.0.copyload.i633, label %bb.u [
    i32 -8, label %bb.v
    i32 -4, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.cr = zext i32 %.5 to i64                     ; 2 uses
  %.val605 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cs = getelementptr inbounds nuw i8, ptr %.val605, i64 %i.cr
end_hunk_21
begin_hunk_22_@w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AInstruction0x2A0x2C0x20hermes0x3A0x3AInstruction0x2A0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AInstruction0x2A0x2C0x20hermes0x3A0x3AInstruction0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AInstruction0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AInstruction0x2A0x2C0x20hermes0x3A0x3AInstruction0x2A0x3E0x3E0x2C0x20hermes0x3A0x3AInstruction0x2A0x2C0x20hermes0x3A0x3AInstruction0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AInstruction0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AInstruction0x2A0x2C0x20hermes0x3A0x3AInstruction0x2A0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3AInstruction0x2A0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AInstruction0x2A0x2C0x20hermes0x3A0x3AInstruction0x2A0x3E0x2A0x2C0x20hermes0x3A0x3AInstruction0x2A0x20const0x260x29:bb.a
  %i.c = add nuw nsw i64 %i.b, 4                  ; 3 uses
  %.val197 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val197, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = shl i32 %.0.copyload.i, 2
  %i.f = add i32 %i.e, 4
  %i.g = add nuw nsw i64 %i.b, 12                 ; 2 uses
  %.val196 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val196, i64 %i.g
  %.0.copyload.i202 = load i32, ptr %i.h, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i202) #8, !srcloc !14
  %i.i = mul i32 %.0.copyload.i202, 3
  %.not = icmp ult i32 %i.f, %i.i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = shl i32 %.0.copyload.i202, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = xor i32 %.0.copyload.i, -1
  %i.l = add i32 %.0.copyload.i202, %i.k
  %.val195 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val195, i64 %i.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.copyload.i203 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i203) #8, !srcloc !14
  %i.o = sub i32 %i.l, %.0.copyload.i203
  %i.p = lshr i32 %.0.copyload.i202, 3
  %i.q = icmp ugt i32 %i.o, %i.p
  br i1 %i.q, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0177 = phi i32 [ %i.j, %bb.b ], [ %.0.copyload.i202, %bb.c ]
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20hermes0x3A0x3AESTree0x3A0x3AIdentifierNode0x2A0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AUniqueString0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AUniqueString0x2A0x2C0x20hermes0x3A0x3AESTree0x3A0x3AIdentifierNode0x2A0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0177)
  %i.r = zext i32 %3 to i64
  %.val194 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.val194, i64 %i.r
  %.0.copyload.i204 = load i32, ptr %i.s, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i204) #8, !srcloc !14
  %.val193 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val193, i64 %i.b
  %.0.copyload.i205 = load i32, ptr %i.t, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i205) #8, !srcloc !14
  %.val192 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val192, i64 %i.g
  %.0.copyload.i206 = load i32, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i206) #8, !srcloc !14
  %i.v = add i32 %.0.copyload.i206, -1            ; 2 uses
  %i.w = lshr i32 %.0.copyload.i204, 4
  %i.x = lshr i32 %.0.copyload.i204, 9
  %i.y = xor i32 %i.w, %i.x
  %i.z = and i32 %i.v, %i.y                       ; 2 uses
  %i.aa = shl nuw nsw i32 %i.z, 3
  %i.ab = add i32 %i.aa, %.0.copyload.i205        ; 3 uses
  %i.ac = zext i32 %i.ab to i64
  %.val191 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.val191, i64 %i.ac
  %.0.copyload.i207 = load i32, ptr %i.ad, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i207) #8, !srcloc !14
  %i.ae = icmp eq i32 %.0.copyload.i204, %.0.copyload.i207
  br i1 %i.ae, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.f
  %.0176 = phi i32 [ %i.aj, %bb.f ], [ 0, %bb.d ] ; 3 uses
  %.0175 = phi i32 [ %.0.copyload.i208, %bb.f ], [ %.0.copyload.i207, %bb.d ] ; 2 uses
  %.0174 = phi i32 [ %i.al, %bb.f ], [ 1, %bb.d ] ; 2 uses
  %.0173 = phi i32 [ %i.am, %bb.f ], [ %i.z, %bb.d ]
  %.0 = phi i32 [ %i.ao, %bb.f ], [ %i.ab, %bb.d ] ; 2 uses
  %i.af = icmp eq i32 %.0175, -4
  %.not185 = icmp eq i32 %.0176, 0                ; 2 uses
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader
  %i.ag = select i1 %.not185, i32 %.0, i32 %.0176
  br label %bb.g

bb.f:                                             ; preds = %.preheader
  %i.ah = icmp eq i32 %.0175, -8
  %i.ai = select i1 %i.ah, i1 %.not185, i1 false
  %i.aj = select i1 %i.ai, i32 %.0, i32 %.0176
  %i.ak = add i32 %.0173, %.0174
  %i.al = add i32 %.0174, 1
  %i.am = and i32 %i.ak, %i.v                     ; 2 uses
  %i.an = shl i32 %i.am, 3
  %i.ao = add i32 %i.an, %.0.copyload.i205        ; 3 uses
  %i.ap = zext i32 %i.ao to i64
  %.val190 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %.val190, i64 %i.ap
  %.0.copyload.i208 = load i32, ptr %i.aq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i208) #8, !srcloc !14
  %.not184 = icmp eq i32 %.0.copyload.i204, %.0.copyload.i208
  br i1 %.not184, label %.loopexit, label %.preheader

bb.g:                                             ; preds = %bb.c, %bb.e
  %.1 = phi i32 [ %i.ag, %bb.e ], [ %2, %bb.c ]   ; 2 uses
  %i.ar = zext i32 %.1 to i64
  %.val189 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %.val189, i64 %i.ar
  %.0.copyload.i209 = load i32, ptr %i.as, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i209) #8, !srcloc !14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.d, %bb.g
  %.1178 = phi i32 [ %.0.copyload.i204, %bb.d ], [ %.0.copyload.i209, %bb.g ], [ %.0.copyload.i204, %bb.f ]
  %.2 = phi i32 [ %i.ab, %bb.d ], [ %.1, %bb.g ], [ %i.ao, %bb.f ] ; 2 uses
  %.val188 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val188, i64 %i.c
  %.0.copyload.i210 = load i32, ptr %i.at, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i210) #8, !srcloc !14
  %i.au = add i32 %.0.copyload.i210, 1
  %.val201 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val201, i64 %i.c
  store i32 %i.au, ptr %i.av, align 1
  %.not186 = icmp eq i32 %.1178, -4
  br i1 %.not186, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.aw = add nuw nsw i64 %i.b, 8                 ; 2 uses
  %.val187 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %.val187, i64 %i.aw
  %.0.copyload.i211 = load i32, ptr %i.ax, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i211) #8, !srcloc !14
  %i.ay = add i32 %.0.copyload.i211, -1
  %.val200 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %.val200, i64 %i.aw
  store i32 %i.ay, ptr %i.az, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  %i.ba = zext i32 %3 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ba
  %.0.copyload.i212 = load i32, ptr %i.bb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i212) #8, !srcloc !14
  %i.bc = zext i32 %.2 to i64                     ; 2 uses
  %.val199 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %.val199, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 0, ptr %i.be, align 1
  %.val198 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.val198, i64 %i.bc
  store i32 %.0.copyload.i212, ptr %i.bf, align 1
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AFunction0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x3E0x3E0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AFunction0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x3E0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AFunction0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AFunction0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x3E0x3E0x3E0x3E0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x3E0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AFunction0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AFunction0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x3E0x3E0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3AFunction0x2A0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AFunction0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x3E0x3E0x3E0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x20const0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 67 uses
  %i.b = zext i32 %1 to i64                       ; 9 uses
  %i.c = add nuw nsw i64 %i.b, 4                  ; 7 uses
  %.val646 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val646, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = shl i32 %.0.copyload.i, 2
  %i.f = add i32 %i.e, 4
  %i.g = add nuw nsw i64 %i.b, 12                 ; 6 uses
  %.val645 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val645, i64 %i.g
  %.0.copyload.i678 = load i32, ptr %i.h, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i678) #8, !srcloc !14
  %i.i = mul i32 %.0.copyload.i678, 3
  %.not = icmp ult i32 %i.f, %i.i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = shl i32 %.0.copyload.i678, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = xor i32 %.0.copyload.i, -1
  %i.l = add i32 %.0.copyload.i678, %i.k
  %.val644 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val644, i64 %i.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.copyload.i679 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i679) #8, !srcloc !14
  %i.o = sub i32 %i.l, %.0.copyload.i679
  %i.p = lshr i32 %.0.copyload.i678, 3
  %i.q = icmp ugt i32 %i.o, %i.p
  br i1 %i.q, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0590 = phi i32 [ %i.j, %bb.b ], [ %.0.copyload.i678, %bb.c ]
  %i.r = add i32 %.0590, -1
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = lshr i64 %i.s, 1
  %i.u = or i64 %i.t, %i.s                        ; 2 uses
  %i.v = lshr i64 %i.u, 2
  %i.w = or i64 %i.v, %i.u                        ; 2 uses
  %i.x = lshr i64 %i.w, 4
  %i.y = or i64 %i.x, %i.w                        ; 2 uses
  %i.z = lshr i64 %i.y, 8
  %i.aa = or i64 %i.z, %i.y                       ; 2 uses
  %i.ab = lshr i64 %i.aa, 16
  %i.ac = or i64 %i.ab, %i.aa
  %i.ad = trunc nuw i64 %i.ac to i32
  %i.ae = add i32 %i.ad, 1
  %4 = tail call i32 @llvm.umax.i32(i32 %i.ae, i32 64) ; 2 uses
  %.val675 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %.val675, i64 %i.g
  store i32 %4, ptr %i.af, align 1
  %.val643 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.val643, i64 %i.b
  %.0.copyload.i680 = load i32, ptr %i.ag, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i680) #8, !srcloc !14
  %i.ah = shl i32 %4, 3
  %i.ai = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ah) #8 ; 13 uses
  %.val674 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %.val674, i64 %i.b
  store i32 %i.ai, ptr %i.aj, align 1
  %.not606 = icmp eq i32 %.0.copyload.i680, 0
  br i1 %.not606, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.val677 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val677, i64 %i.c
  store i64 0, ptr %i.ak, align 1
  %.val642 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val642, i64 %i.g
  %.0.copyload.i681 = load i32, ptr %i.al, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i681) #8, !srcloc !14
  %i.am = add i32 %.0.copyload.i681, 536870911
  %i.an = and i32 %i.am, 536870911
  %i.ao = and i32 %.0.copyload.i681, 7            ; 7 uses
  %.not617 = icmp eq i32 %i.ao, 0
  br i1 %.not617, label %.loopexit703, label %.preheader702

.preheader702:                                    ; preds = %bb.e
  %i.ap = zext i32 %i.ai to i64
  %.val673 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %.val673, i64 %i.ap
  store i32 -4, ptr %i.aq, align 1
  %i.ar = add i32 %i.ai, 8                        ; 2 uses
  %.not618 = icmp eq i32 %i.ao, 1
  br i1 %.not618, label %.loopexit703, label %.preheader702.1

.preheader702.1:                                  ; preds = %.preheader702
  %i.as = zext i32 %i.ar to i64
  %.val673.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val673.1, i64 %i.as
  store i32 -4, ptr %i.at, align 1
  %i.au = add i32 %i.ai, 16                       ; 2 uses
  %.not618.1 = icmp eq i32 %i.ao, 2
  br i1 %.not618.1, label %.loopexit703, label %.preheader702.2

.preheader702.2:                                  ; preds = %.preheader702.1
  %i.av = zext i32 %i.au to i64
  %.val673.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %.val673.2, i64 %i.av
  store i32 -4, ptr %i.aw, align 1
  %i.ax = add i32 %i.ai, 24                       ; 2 uses
  %.not618.2 = icmp eq i32 %i.ao, 3
  br i1 %.not618.2, label %.loopexit703, label %.preheader702.3

.preheader702.3:                                  ; preds = %.preheader702.2
  %i.ay = zext i32 %i.ax to i64
  %.val673.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %.val673.3, i64 %i.ay
  store i32 -4, ptr %i.az, align 1
  %i.ba = add i32 %i.ai, 32                       ; 2 uses
  %.not618.3 = icmp eq i32 %i.ao, 4
  br i1 %.not618.3, label %.loopexit703, label %.preheader702.4

.preheader702.4:                                  ; preds = %.preheader702.3
  %i.bb = zext i32 %i.ba to i64
  %.val673.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %.val673.4, i64 %i.bb
  store i32 -4, ptr %i.bc, align 1
  %i.bd = add i32 %i.ai, 40                       ; 2 uses
  %.not618.4 = icmp eq i32 %i.ao, 5
  br i1 %.not618.4, label %.loopexit703, label %.preheader702.5

.preheader702.5:                                  ; preds = %.preheader702.4
  %i.be = zext i32 %i.bd to i64
  %.val673.5 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.val673.5, i64 %i.be
  store i32 -4, ptr %i.bf, align 1
  %i.bg = add i32 %i.ai, 48                       ; 2 uses
  %.not618.5 = icmp eq i32 %i.ao, 6
  br i1 %.not618.5, label %.loopexit703, label %.preheader702.6

.preheader702.6:                                  ; preds = %.preheader702.5
  %i.bh = zext i32 %i.bg to i64
  %.val673.6 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %.val673.6, i64 %i.bh
  store i32 -4, ptr %i.bi, align 1
  %i.bj = add i32 %i.ai, 56
  br label %.loopexit703

.loopexit703:                                     ; preds = %.preheader702, %.preheader702.1, %.preheader702.2, %.preheader702.3, %.preheader702.4, %.preheader702.5, %.preheader702.6, %bb.e
  %.1 = phi i32 [ %i.ai, %bb.e ], [ %i.ar, %.preheader702 ], [ %i.au, %.preheader702.1 ], [ %i.ax, %.preheader702.2 ], [ %i.ba, %.preheader702.3 ], [ %i.bd, %.preheader702.4 ], [ %i.bg, %.preheader702.5 ], [ %i.bj, %.preheader702.6 ]
  %i.bk = icmp samesign ult i32 %i.an, 7
  br i1 %i.bk, label %.loopexit701, label %bb.f

bb.f:                                             ; preds = %.loopexit703
  %i.bl = shl i32 %.0.copyload.i681, 3
  %i.bm = add i32 %i.bl, %i.ai
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.2 = phi i32 [ %.1, %bb.f ], [ %i.cd, %bb.g ]  ; 2 uses
  %i.bn = zext i32 %.2 to i64                     ; 8 uses
  %.val672 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %.val672, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  store i32 -4, ptr %i.bp, align 1
  %.val671 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %.val671, i64 %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  store i32 -4, ptr %i.br, align 1
  %.val670 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %.val670, i64 %i.bn
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  store i32 -4, ptr %i.bt, align 1
  %.val669 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val669, i64 %i.bn
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store i32 -4, ptr %i.bv, align 1
  %.val668 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %.val668, i64 %i.bn
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store i32 -4, ptr %i.bx, align 1
  %.val667 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %.val667, i64 %i.bn
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i32 -4, ptr %i.bz, align 1
  %.val666 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %.val666, i64 %i.bn
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i32 -4, ptr %i.cb, align 1
  %.val665 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %.val665, i64 %i.bn
  store i32 -4, ptr %i.cc, align 1
  %i.cd = add i32 %.2, 64                         ; 2 uses
  %.not619 = icmp eq i32 %i.cd, %i.bm
  br i1 %.not619, label %.loopexit701, label %bb.g

bb.h:                                             ; preds = %bb.d
  %i.ce = shl i32 %.0.copyload.i678, 3            ; 2 uses
  %i.cf = add i32 %.0.copyload.i680, %i.ce
  %.val676 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %.val676, i64 %i.c
  store i64 0, ptr %i.cg, align 1
  %.val641 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %.val641, i64 %i.g
  %.0.copyload.i682 = load i32, ptr %i.ch, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i682) #8, !srcloc !14
  %.not607 = icmp eq i32 %.0.copyload.i682, 0
  br i1 %.not607, label %.loopexit708, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val640 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %.val640, i64 %i.b
  %.0.copyload.i683 = load i32, ptr %i.ci, align 1 ; 11 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i683) #8, !srcloc !14
  %i.cj = and i32 %.0.copyload.i682, 7            ; 7 uses
  %.not608 = icmp eq i32 %i.cj, 0
  br i1 %.not608, label %.loopexit710, label %.preheader709

.preheader709:                                    ; preds = %bb.i
  %i.ck = zext i32 %.0.copyload.i683 to i64
  %.val664 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %.val664, i64 %i.ck
  store i32 -4, ptr %i.cl, align 1
  %i.cm = add i32 %.0.copyload.i683, 8            ; 2 uses
  %.not609 = icmp eq i32 %i.cj, 1
  br i1 %.not609, label %.loopexit710, label %.preheader709.1

.preheader709.1:                                  ; preds = %.preheader709
  %i.cn = zext i32 %i.cm to i64
  %.val664.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.co = getelementptr inbounds nuw i8, ptr %.val664.1, i64 %i.cn
  store i32 -4, ptr %i.co, align 1
  %i.cp = add i32 %.0.copyload.i683, 16           ; 2 uses
  %.not609.1 = icmp eq i32 %i.cj, 2
  br i1 %.not609.1, label %.loopexit710, label %.preheader709.2

.preheader709.2:                                  ; preds = %.preheader709.1
  %i.cq = zext i32 %i.cp to i64
  %.val664.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %.val664.2, i64 %i.cq
  store i32 -4, ptr %i.cr, align 1
  %i.cs = add i32 %.0.copyload.i683, 24           ; 2 uses
  %.not609.2 = icmp eq i32 %i.cj, 3
  br i1 %.not609.2, label %.loopexit710, label %.preheader709.3

.preheader709.3:                                  ; preds = %.preheader709.2
  %i.ct = zext i32 %i.cs to i64
  %.val664.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cu = getelementptr inbounds nuw i8, ptr %.val664.3, i64 %i.ct
  store i32 -4, ptr %i.cu, align 1
  %i.cv = add i32 %.0.copyload.i683, 32           ; 2 uses
  %.not609.3 = icmp eq i32 %i.cj, 4
  br i1 %.not609.3, label %.loopexit710, label %.preheader709.4

.preheader709.4:                                  ; preds = %.preheader709.3
  %i.cw = zext i32 %i.cv to i64
  %.val664.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cx = getelementptr inbounds nuw i8, ptr %.val664.4, i64 %i.cw
  store i32 -4, ptr %i.cx, align 1
  %i.cy = add i32 %.0.copyload.i683, 40           ; 2 uses
  %.not609.4 = icmp eq i32 %i.cj, 5
  br i1 %.not609.4, label %.loopexit710, label %.preheader709.5

.preheader709.5:                                  ; preds = %.preheader709.4
  %i.cz = zext i32 %i.cy to i64
end_hunk_22
begin_hunk_23_@w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AFunction0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x3E0x3E0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3AFunction0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x3E0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AFunction0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AFunction0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x3E0x3E0x3E0x3E0x2C0x20hermes0x3A0x3AFunction0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x3E0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3AFunction0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AFunction0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x3E0x3E0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3AFunction0x2A0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3AFunction0x2A0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x2C0x20std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x3E0x3E0x3E0x2A0x2C0x20hermes0x3A0x3AFunction0x2A0x20const0x260x29:bb.a
  %.val633 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.fh = getelementptr inbounds nuw i8, ptr %.val633, i64 %i.c
  %.0.copyload.i690 = load i32, ptr %i.fh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i690) #8, !srcloc !14
  %i.fi = add i32 %.0.copyload.i690, 1
  %.val652 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.fj = getelementptr inbounds nuw i8, ptr %.val652, i64 %i.c
  store i32 %i.fi, ptr %i.fj, align 1
  %.val632 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.fk = getelementptr inbounds nuw i8, ptr %.val632, i64 %i.fc
  %.0.copyload.i691 = load i32, ptr %i.fk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i691) #8, !srcloc !14
  %.val651 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.fl = getelementptr inbounds nuw i8, ptr %.val651, i64 %i.fc
  store i32 0, ptr %i.fl, align 1
  %.not615 = icmp eq i32 %.0.copyload.i691, 0
  br i1 %.not615, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.loopexit705
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x3E0x3A0x3Aoperator0x280x290x5Babi0x3Av150070x5D0x28hermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x2A0x290x20const(ptr noundef nonnull %0, i32 noundef %.0.copyload.i691) #8
  br label %bb.p

bb.p:                                             ; preds = %.loopexit705, %.preheader706, %.preheader706, %bb.o
  %i.fm = add i32 %.3, 8                          ; 2 uses
  %.not616 = icmp eq i32 %i.fm, %i.cf
  br i1 %.not616, label %.loopexit707, label %.preheader706

.loopexit707:                                     ; preds = %bb.p, %.loopexit708
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i680) #8
  %.val631 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.fn = getelementptr inbounds nuw i8, ptr %.val631, i64 %i.b
  %.0.copyload.i692 = load i32, ptr %i.fn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i692) #8, !srcloc !14
  %.val630 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.fo = getelementptr inbounds nuw i8, ptr %.val630, i64 %i.g
  %.0.copyload.i693 = load i32, ptr %i.fo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i693) #8, !srcloc !14
  br label %.loopexit701

.loopexit701:                                     ; preds = %bb.g, %.loopexit703, %.loopexit707
  %.5595 = phi i32 [ %i.ai, %.loopexit703 ], [ %.0.copyload.i692, %.loopexit707 ], [ %i.ai, %bb.g ] ; 2 uses
  %.0582 = phi i32 [ %.0.copyload.i681, %.loopexit703 ], [ %.0.copyload.i693, %.loopexit707 ], [ %.0.copyload.i681, %bb.g ]
  %i.fp = zext i32 %3 to i64
  %.val629 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.fq = getelementptr inbounds nuw i8, ptr %.val629, i64 %i.fp
  %.0.copyload.i694 = load i32, ptr %i.fq, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i694) #8, !srcloc !14
  %i.fr = add i32 %.0582, -1                      ; 2 uses
  %i.fs = lshr i32 %.0.copyload.i694, 4
  %i.ft = lshr i32 %.0.copyload.i694, 9
  %i.fu = xor i32 %i.fs, %i.ft
  %i.fv = and i32 %i.fu, %i.fr                    ; 2 uses
  %i.fw = shl nuw nsw i32 %i.fv, 3
  %i.fx = add i32 %i.fw, %.5595                   ; 3 uses
  %i.fy = zext i32 %i.fx to i64
  %.val628 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.fz = getelementptr inbounds nuw i8, ptr %.val628, i64 %i.fy
  %.0.copyload.i695 = load i32, ptr %i.fz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i695) #8, !srcloc !14
  %i.ga = icmp eq i32 %.0.copyload.i694, %.0.copyload.i695
  br i1 %i.ga, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit701, %bb.r
  %.0584 = phi i32 [ %i.gf, %bb.r ], [ 0, %.loopexit701 ] ; 3 uses
  %.1583 = phi i32 [ %i.gi, %bb.r ], [ %i.fv, %.loopexit701 ]
  %.1581 = phi i32 [ %.0.copyload.i696, %bb.r ], [ %.0.copyload.i695, %.loopexit701 ] ; 2 uses
  %.1579 = phi i32 [ %i.gh, %bb.r ], [ 1, %.loopexit701 ] ; 2 uses
  %.4 = phi i32 [ %i.gk, %bb.r ], [ %i.fx, %.loopexit701 ] ; 2 uses
  %i.gb = icmp eq i32 %.1581, -4
  %.not622 = icmp eq i32 %.0584, 0                ; 2 uses
  br i1 %i.gb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.preheader
  %i.gc = select i1 %.not622, i32 %.4, i32 %.0584
  br label %bb.s

bb.r:                                             ; preds = %.preheader
  %i.gd = icmp eq i32 %.1581, -8
  %i.ge = select i1 %i.gd, i1 %.not622, i1 false
  %i.gf = select i1 %i.ge, i32 %.4, i32 %.0584
  %i.gg = add i32 %.1579, %.1583
  %i.gh = add i32 %.1579, 1
  %i.gi = and i32 %i.gg, %i.fr                    ; 2 uses
  %i.gj = shl i32 %i.gi, 3
  %i.gk = add i32 %i.gj, %.5595                   ; 3 uses
  %i.gl = zext i32 %i.gk to i64
  %.val627 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.gm = getelementptr inbounds nuw i8, ptr %.val627, i64 %i.gl
  %.0.copyload.i696 = load i32, ptr %i.gm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i696) #8, !srcloc !14
  %.not621 = icmp eq i32 %.0.copyload.i694, %.0.copyload.i696
  br i1 %.not621, label %.loopexit, label %.preheader

bb.s:                                             ; preds = %bb.c, %bb.q
  %.5 = phi i32 [ %i.gc, %bb.q ], [ %2, %bb.c ]   ; 2 uses
  %i.gn = zext i32 %.5 to i64
  %.val626 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.go = getelementptr inbounds nuw i8, ptr %.val626, i64 %i.gn
  %.0.copyload.i697 = load i32, ptr %i.go, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i697) #8, !srcloc !14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.r, %.loopexit701, %bb.s
  %.4589 = phi i32 [ %.0.copyload.i694, %.loopexit701 ], [ %.0.copyload.i697, %bb.s ], [ %.0.copyload.i694, %bb.r ]
  %.6 = phi i32 [ %i.fx, %.loopexit701 ], [ %.5, %bb.s ], [ %i.gk, %bb.r ] ; 2 uses
  %.val625 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.gp = getelementptr inbounds nuw i8, ptr %.val625, i64 %i.c
  %.0.copyload.i698 = load i32, ptr %i.gp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i698) #8, !srcloc !14
  %i.gq = add i32 %.0.copyload.i698, 1
  %.val650 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.gr = getelementptr inbounds nuw i8, ptr %.val650, i64 %i.c
  store i32 %i.gq, ptr %i.gr, align 1
  %.not623 = icmp eq i32 %.4589, -4
  br i1 %.not623, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.loopexit
  %i.gs = add nuw nsw i64 %i.b, 8                 ; 2 uses
  %.val624 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.gt = getelementptr inbounds nuw i8, ptr %.val624, i64 %i.gs
  %.0.copyload.i699 = load i32, ptr %i.gt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i699) #8, !srcloc !14
  %i.gu = add i32 %.0.copyload.i699, -1
  %.val649 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.gv = getelementptr inbounds nuw i8, ptr %.val649, i64 %i.gs
  store i32 %i.gu, ptr %i.gv, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.loopexit
  %i.gw = zext i32 %3 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.gx = getelementptr inbounds nuw i8, ptr %.val, i64 %i.gw
  %.0.copyload.i700 = load i32, ptr %i.gx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i700) #8, !srcloc !14
  %i.gy = zext i32 %.6 to i64                     ; 2 uses
  %.val648 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.gz = getelementptr inbounds nuw i8, ptr %.val648, i64 %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  store i32 0, ptr %i.ha, align 1
  %.val647 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.hb = getelementptr inbounds nuw i8, ptr %.val647, i64 %i.gy
  store i32 %.0.copyload.i700, ptr %i.hb, align 1
  ret i32 %.6
}

declare void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Adefault_delete0x3Chermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x3E0x3A0x3Aoperator0x280x290x5Babi0x3Av150070x5D0x28hermes0x3A0x3Ahbc0x3A0x3ABytecodeFunctionGenerator0x2A0x290x20const(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ACatchInst0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x3E0x2C0x20hermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ACatchInst0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3ACatchInst0x2A0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x2A0x2C0x20hermes0x3A0x3ACatchInst0x2A0x20const0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 44 uses
  %i.b = zext i32 %1 to i64                       ; 7 uses
  %i.c = add nuw nsw i64 %i.b, 4                  ; 4 uses
  %.val414 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val414, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = shl i32 %.0.copyload.i, 2
  %i.f = add i32 %i.e, 4
  %i.g = add nuw nsw i64 %i.b, 12                 ; 4 uses
  %.val413 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val413, i64 %i.g
  %.0.copyload.i439 = load i32, ptr %i.h, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i439) #8, !srcloc !14
  %i.i = mul i32 %.0.copyload.i439, 3
  %.not = icmp ult i32 %i.f, %i.i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = shl i32 %.0.copyload.i439, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = xor i32 %.0.copyload.i, -1
  %i.l = add i32 %.0.copyload.i439, %i.k
  %.val412 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val412, i64 %i.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.copyload.i440 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i440) #8, !srcloc !14
  %i.o = sub i32 %i.l, %.0.copyload.i440
  %i.p = lshr i32 %.0.copyload.i439, 3
  %i.q = icmp ugt i32 %i.o, %i.p
  br i1 %i.q, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0386 = phi i32 [ %i.j, %bb.b ], [ %.0.copyload.i439, %bb.c ]
  %i.r = add i32 %.0386, -1
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = lshr i64 %i.s, 1
  %i.u = or i64 %i.t, %i.s                        ; 2 uses
  %i.v = lshr i64 %i.u, 2
  %i.w = or i64 %i.v, %i.u                        ; 2 uses
  %i.x = lshr i64 %i.w, 4
  %i.y = or i64 %i.x, %i.w                        ; 2 uses
  %i.z = lshr i64 %i.y, 8
  %i.aa = or i64 %i.z, %i.y                       ; 2 uses
  %i.ab = lshr i64 %i.aa, 16
  %i.ac = or i64 %i.ab, %i.aa
  %i.ad = trunc nuw i64 %i.ac to i32
  %i.ae = add i32 %i.ad, 1
  %4 = tail call i32 @llvm.umax.i32(i32 %i.ae, i32 64) ; 2 uses
  %.val431 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %.val431, i64 %i.g
  store i32 %4, ptr %i.af, align 1
  %.val411 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.val411, i64 %i.b
  %.0.copyload.i441 = load i32, ptr %i.ag, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i441) #8, !srcloc !14
  %i.ah = mul i32 %4, 56
  %i.ai = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ah) #8 ; 13 uses
  %.val430 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %.val430, i64 %i.b
  store i32 %i.ai, ptr %i.aj, align 1
  %.not394 = icmp eq i32 %.0.copyload.i441, 0
  br i1 %.not394, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.val438 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val438, i64 %i.c
  store i64 0, ptr %i.ak, align 1
  %.val410 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val410, i64 %i.g
  %.0.copyload.i442 = load i32, ptr %i.al, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i442) #8, !srcloc !14
  %i.am = mul i32 %.0.copyload.i442, 56           ; 2 uses
  %i.an = add i32 %i.am, -56                      ; 2 uses
  %i.ao = udiv i32 %i.an, 56
  %i.ap = add nuw nsw i32 %i.ao, 1
  %i.aq = and i32 %i.ap, 7                        ; 7 uses
  %.not395 = icmp eq i32 %i.aq, 0
  br i1 %.not395, label %.loopexit454, label %.preheader453

.preheader453:                                    ; preds = %bb.e
  %i.ar = zext i32 %i.ai to i64
  %.val429 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %.val429, i64 %i.ar
  store i32 -4, ptr %i.as, align 1
  %i.at = add i32 %i.ai, 56                       ; 2 uses
  %.not396 = icmp eq i32 %i.aq, 1
  br i1 %.not396, label %.loopexit454, label %.preheader453.1

.preheader453.1:                                  ; preds = %.preheader453
  %i.au = zext i32 %i.at to i64
  %.val429.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val429.1, i64 %i.au
  store i32 -4, ptr %i.av, align 1
  %i.aw = add i32 %i.ai, 112                      ; 2 uses
  %.not396.1 = icmp eq i32 %i.aq, 2
  br i1 %.not396.1, label %.loopexit454, label %.preheader453.2

.preheader453.2:                                  ; preds = %.preheader453.1
  %i.ax = zext i32 %i.aw to i64
  %.val429.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %.val429.2, i64 %i.ax
  store i32 -4, ptr %i.ay, align 1
  %i.az = add i32 %i.ai, 168                      ; 2 uses
  %.not396.2 = icmp eq i32 %i.aq, 3
  br i1 %.not396.2, label %.loopexit454, label %.preheader453.3

.preheader453.3:                                  ; preds = %.preheader453.2
  %i.ba = zext i32 %i.az to i64
  %.val429.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %.val429.3, i64 %i.ba
  store i32 -4, ptr %i.bb, align 1
  %i.bc = add i32 %i.ai, 224                      ; 2 uses
  %.not396.3 = icmp eq i32 %i.aq, 4
  br i1 %.not396.3, label %.loopexit454, label %.preheader453.4

.preheader453.4:                                  ; preds = %.preheader453.3
  %i.bd = zext i32 %i.bc to i64
  %.val429.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %.val429.4, i64 %i.bd
  store i32 -4, ptr %i.be, align 1
  %i.bf = add i32 %i.ai, 280                      ; 2 uses
  %.not396.4 = icmp eq i32 %i.aq, 5
  br i1 %.not396.4, label %.loopexit454, label %.preheader453.5

.preheader453.5:                                  ; preds = %.preheader453.4
  %i.bg = zext i32 %i.bf to i64
  %.val429.5 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %.val429.5, i64 %i.bg
  store i32 -4, ptr %i.bh, align 1
  %i.bi = add i32 %i.ai, 336                      ; 2 uses
  %.not396.5 = icmp eq i32 %i.aq, 6
  br i1 %.not396.5, label %.loopexit454, label %.preheader453.6

.preheader453.6:                                  ; preds = %.preheader453.5
  %i.bj = zext i32 %i.bi to i64
  %.val429.6 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %.val429.6, i64 %i.bj
  store i32 -4, ptr %i.bk, align 1
  %i.bl = add i32 %i.ai, 392
  br label %.loopexit454

.loopexit454:                                     ; preds = %.preheader453, %.preheader453.1, %.preheader453.2, %.preheader453.3, %.preheader453.4, %.preheader453.5, %.preheader453.6, %bb.e
  %.1 = phi i32 [ %i.ai, %bb.e ], [ %i.at, %.preheader453 ], [ %i.aw, %.preheader453.1 ], [ %i.az, %.preheader453.2 ], [ %i.bc, %.preheader453.3 ], [ %i.bf, %.preheader453.4 ], [ %i.bi, %.preheader453.5 ], [ %i.bl, %.preheader453.6 ]
  %i.bm = icmp ult i32 %i.an, 392
  br i1 %i.bm, label %.loopexit452, label %bb.f

bb.f:                                             ; preds = %.loopexit454
  %i.bn = add i32 %i.am, %i.ai
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.2 = phi i32 [ %.1, %bb.f ], [ %i.ce, %bb.g ]  ; 2 uses
  %i.bo = zext i32 %.2 to i64                     ; 8 uses
  %.val428 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %.val428, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 392
  store i32 -4, ptr %i.bq, align 1
  %.val427 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.br = getelementptr inbounds nuw i8, ptr %.val427, i64 %i.bo
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 336
  store i32 -4, ptr %i.bs, align 1
  %.val426 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bt = getelementptr inbounds nuw i8, ptr %.val426, i64 %i.bo
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 280
  store i32 -4, ptr %i.bu, align 1
  %.val425 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bv = getelementptr inbounds nuw i8, ptr %.val425, i64 %i.bo
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 224
  store i32 -4, ptr %i.bw, align 1
  %.val424 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %.val424, i64 %i.bo
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 168
  store i32 -4, ptr %i.by, align 1
  %.val423 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bz = getelementptr inbounds nuw i8, ptr %.val423, i64 %i.bo
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 112
  store i32 -4, ptr %i.ca, align 1
  %.val422 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cb = getelementptr inbounds nuw i8, ptr %.val422, i64 %i.bo
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  store i32 -4, ptr %i.cc, align 1
  %.val421 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cd = getelementptr inbounds nuw i8, ptr %.val421, i64 %i.bo
  store i32 -4, ptr %i.cd, align 1
  %i.ce = add i32 %.2, 448                        ; 2 uses
  %.not397 = icmp eq i32 %i.ce, %i.bn
  br i1 %.not397, label %.loopexit452, label %bb.g

bb.h:                                             ; preds = %bb.d
  %i.cf = mul i32 %.0.copyload.i439, 56
  %i.cg = add i32 %.0.copyload.i441, %i.cf
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ACatchInst0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x3E0x2C0x20hermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ACatchInst0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x3E0x3A0x3AmoveFromOldBuckets0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ACatchInst0x2A0x2C0x20hermes0x3A0x3ACatchCoverageInfo0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.0.copyload.i441, i32 noundef %i.cg)
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i441) #8
  %.val409 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %.val409, i64 %i.b
  %.0.copyload.i443 = load i32, ptr %i.ch, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i443) #8, !srcloc !14
  %.val408 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %.val408, i64 %i.g
  %.0.copyload.i444 = load i32, ptr %i.ci, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i444) #8, !srcloc !14
  br label %.loopexit452

.loopexit452:                                     ; preds = %bb.g, %.loopexit454, %bb.h
  %.1387 = phi i32 [ %i.ai, %.loopexit454 ], [ %.0.copyload.i443, %bb.h ], [ %i.ai, %bb.g ] ; 2 uses
  %.0384 = phi i32 [ %.0.copyload.i442, %.loopexit454 ], [ %.0.copyload.i444, %bb.h ], [ %.0.copyload.i442, %bb.g ]
  %i.cj = zext i32 %3 to i64
  %.val407 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %.val407, i64 %i.cj
  %.0.copyload.i445 = load i32, ptr %i.ck, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i445) #8, !srcloc !14
  %i.cl = add i32 %.0384, -1                      ; 2 uses
  %i.cm = lshr i32 %.0.copyload.i445, 4
  %i.cn = lshr i32 %.0.copyload.i445, 9
  %i.co = xor i32 %i.cm, %i.cn
  %i.cp = and i32 %i.co, %i.cl                    ; 2 uses
  %i.cq = mul i32 %i.cp, 56
  %i.cr = add i32 %i.cq, %.1387                   ; 3 uses
  %i.cs = zext i32 %i.cr to i64
  %.val406 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ct = getelementptr inbounds nuw i8, ptr %.val406, i64 %i.cs
  %.0.copyload.i446 = load i32, ptr %i.ct, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i446) #8, !srcloc !14
  %i.cu = icmp eq i32 %.0.copyload.i445, %.0.copyload.i446
  br i1 %i.cu, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit452, %bb.j
  %.0388 = phi i32 [ %i.cz, %bb.j ], [ 0, %.loopexit452 ] ; 3 uses
  %.1385 = phi i32 [ %i.dc, %bb.j ], [ %i.cp, %.loopexit452 ]
  %.0383 = phi i32 [ %.0.copyload.i447, %bb.j ], [ %.0.copyload.i446, %.loopexit452 ] ; 2 uses
  %.0382 = phi i32 [ %i.db, %bb.j ], [ 1, %.loopexit452 ] ; 2 uses
  %.3 = phi i32 [ %i.de, %bb.j ], [ %i.cr, %.loopexit452 ] ; 2 uses
  %i.cv = icmp eq i32 %.0383, -4
  %.not400 = icmp eq i32 %.0388, 0                ; 2 uses
  br i1 %i.cv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader
  %i.cw = select i1 %.not400, i32 %.3, i32 %.0388
  br label %bb.k

bb.j:                                             ; preds = %.preheader
  %i.cx = icmp eq i32 %.0383, -8
  %i.cy = select i1 %i.cx, i1 %.not400, i1 false
  %i.cz = select i1 %i.cy, i32 %.3, i32 %.0388
  %i.da = add i32 %.0382, %.1385
  %i.db = add i32 %.0382, 1
  %i.dc = and i32 %i.da, %i.cl                    ; 2 uses
  %i.dd = mul i32 %i.dc, 56
  %i.de = add i32 %i.dd, %.1387                   ; 3 uses
  %i.df = zext i32 %i.de to i64
  %.val405 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dg = getelementptr inbounds nuw i8, ptr %.val405, i64 %i.df
  %.0.copyload.i447 = load i32, ptr %i.dg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i447) #8, !srcloc !14
  %.not399 = icmp eq i32 %.0.copyload.i445, %.0.copyload.i447
  br i1 %.not399, label %.loopexit, label %.preheader
end_hunk_23
begin_hunk_24_@w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ASmallDenseMap0x3Chermes0x3A0x3ABasicBlock0x20const0x2A0x2C0x20llvh0x3A0x3ASmallPtrSet0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x202u0x3E0x2C0x2016u0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x20const0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x20const0x2A0x2C0x20llvh0x3A0x3ASmallPtrSet0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x202u0x3E0x3E0x3E0x2C0x20hermes0x3A0x3ABasicBlock0x20const0x2A0x2C0x20llvh0x3A0x3ASmallPtrSet0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x202u0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x20const0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x20const0x2A0x2C0x20llvh0x3A0x3ASmallPtrSet0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x202u0x3E0x3E0x3E0x3A0x3AmoveFromOldBuckets0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x20const0x2A0x2C0x20llvh0x3A0x3ASmallPtrSet0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x202u0x3E0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x20const0x2A0x2C0x20llvh0x3A0x3ASmallPtrSet0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x202u0x3E0x3E0x2A0x29:bb.a
  br label %.loopexit338

.loopexit338:                                     ; preds = %.preheader337, %.preheader337.1, %.preheader337.2, %.preheader337.3, %.preheader337.4, %.preheader337.5, %.preheader337.6, %bb.b
  %.1280 = phi i32 [ %i.n, %bb.b ], [ %i.r, %.preheader337 ], [ %i.u, %.preheader337.1 ], [ %i.x, %.preheader337.2 ], [ %i.aa, %.preheader337.3 ], [ %i.ad, %.preheader337.4 ], [ %i.ag, %.preheader337.5 ], [ %i.aj, %.preheader337.6 ]
  %i.ak = add i32 %i.k, 134217727
  %i.al = and i32 %i.ak, 134217727
  %i.am = icmp samesign ult i32 %i.al, 7
  br i1 %i.am, label %.loopexit336, label %bb.c

bb.c:                                             ; preds = %.loopexit338
  %i.an = shl i32 %i.k, 5
  %i.ao = add i32 %i.n, %i.an
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.2281 = phi i32 [ %.1280, %bb.c ], [ %i.bf, %bb.d ] ; 2 uses
  %i.ap = zext i32 %.2281 to i64                  ; 8 uses
  %.val319 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %.val319, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 224
  store i32 -4, ptr %i.ar, align 1
  %.val318 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %.val318, i64 %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 192
  store i32 -4, ptr %i.at, align 1
  %.val317 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %.val317, i64 %i.ap
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 160
  store i32 -4, ptr %i.av, align 1
  %.val316 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %.val316, i64 %i.ap
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 128
  store i32 -4, ptr %i.ax, align 1
  %.val315 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %.val315, i64 %i.ap
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  store i32 -4, ptr %i.az, align 1
  %.val314 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %.val314, i64 %i.ap
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  store i32 -4, ptr %i.bb, align 1
  %.val313 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %.val313, i64 %i.ap
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store i32 -4, ptr %i.bd, align 1
  %.val312 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %.val312, i64 %i.ap
  store i32 -4, ptr %i.be, align 1
  %i.bf = add i32 %.2281, 256                     ; 2 uses
  %.not292 = icmp eq i32 %i.bf, %i.ao
  br i1 %.not292, label %.loopexit336, label %bb.d

.loopexit336:                                     ; preds = %bb.d, %.loopexit338, %bb.a
  %.not293 = icmp eq i32 %2, %3
  br i1 %.not293, label %.loopexit335, label %.preheader334

.preheader334:                                    ; preds = %.loopexit336, %bb.i
  %.0 = phi i32 [ %i.cx, %bb.i ], [ %2, %.loopexit336 ] ; 3 uses
  %i.bg = zext i32 %.0 to i64                     ; 3 uses
  %.val306 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %.val306, i64 %i.bg
  %.0.copyload.i325 = load i32, ptr %i.bh, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i325) #8, !srcloc !14
  switch i32 %.0.copyload.i325, label %bb.e [
    i32 -8, label %bb.i
    i32 -4, label %bb.i
  ]

bb.e:                                             ; preds = %.preheader334
  %.val305 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %.val305, i64 %i.b
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.0.copyload.i326 = load i32, ptr %i.bj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i326) #8, !srcloc !14
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %.0.copyload.i327 = load i8, ptr %i.bk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i327) #8, !srcloc !13
  %i.bl = and i8 %.0.copyload.i327, 1
  %.not294 = icmp eq i8 %i.bl, 0                  ; 2 uses
  %i.bm = select i1 %.not294, i32 %.0.copyload.i326, i32 %i.h ; 2 uses
  %.val304 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bn = getelementptr inbounds nuw i8, ptr %.val304, i64 %i.i
  %.0.copyload.i328 = load i32, ptr %i.bn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i328) #8, !srcloc !14
  %i.bo = add i32 %.0.copyload.i328, -1
  %i.bp = select i1 %.not294, i32 %i.bo, i32 15   ; 2 uses
  %i.bq = lshr i32 %.0.copyload.i325, 4
  %i.br = lshr i32 %.0.copyload.i325, 9
  %i.bs = xor i32 %i.bq, %i.br
  %i.bt = and i32 %i.bp, %i.bs                    ; 2 uses
  %i.bu = shl i32 %i.bt, 5
  %i.bv = add i32 %i.bu, %i.bm                    ; 3 uses
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %.val303 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %.val303, i64 %i.bw
  %.0.copyload.i329 = load i32, ptr %i.bx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i329) #8, !srcloc !14
  %i.by = icmp eq i32 %.0.copyload.i325, %.0.copyload.i329
  br i1 %i.by, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.e, %bb.g
  %.0282 = phi i32 [ %i.cg, %bb.g ], [ %i.bt, %bb.e ]
  %.1 = phi i32 [ %i.ci, %bb.g ], [ %i.bv, %bb.e ] ; 2 uses
  %.0277 = phi i32 [ %.0.copyload.i330, %bb.g ], [ %.0.copyload.i329, %bb.e ] ; 2 uses
  %.0276 = phi i32 [ %i.cd, %bb.g ], [ 0, %bb.e ] ; 3 uses
  %.0275 = phi i32 [ %i.cf, %bb.g ], [ 1, %bb.e ] ; 2 uses
  %i.bz = icmp eq i32 %.0277, -4
  %.not297 = icmp eq i32 %.0276, 0                ; 2 uses
  br i1 %i.bz, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader
  %i.ca = select i1 %.not297, i32 %.1, i32 %.0276 ; 2 uses
  %.pre = zext i32 %i.ca to i64
  br label %.loopexit

bb.g:                                             ; preds = %.preheader
  %i.cb = icmp eq i32 %.0277, -8
  %i.cc = select i1 %i.cb, i1 %.not297, i1 false
  %i.cd = select i1 %i.cc, i32 %.1, i32 %.0276
  %i.ce = add i32 %.0275, %.0282
  %i.cf = add i32 %.0275, 1
  %i.cg = and i32 %i.ce, %i.bp                    ; 2 uses
  %i.ch = shl i32 %i.cg, 5
  %i.ci = add i32 %i.ch, %i.bm                    ; 3 uses
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %.val302 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %.val302, i64 %i.cj
  %.0.copyload.i330 = load i32, ptr %i.ck, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i330) #8, !srcloc !14
  %.not296 = icmp eq i32 %.0.copyload.i325, %.0.copyload.i330
  br i1 %.not296, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.g, %bb.e, %bb.f
  %.pre-phi = phi i64 [ %.pre, %bb.f ], [ %i.bw, %bb.e ], [ %i.cj, %bb.g ]
  %.2 = phi i32 [ %i.ca, %bb.f ], [ %i.bv, %bb.e ], [ %i.ci, %bb.g ] ; 2 uses
  %.val311 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %.val311, i64 %.pre-phi
  store i32 %.0.copyload.i325, ptr %i.cl, align 1
  %i.cm = add i32 %.2, 4
  %i.cn = add i32 %.2, 24
  %i.co = add i32 %.0, 4
  tail call void @w2c_hermes_llvh0x3A0x3ASmallPtrSetImplBase0x3A0x3ASmallPtrSetImplBase0x28void0x20const0x2A0x2A0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ASmallPtrSetImplBase0x260x260x29(ptr noundef %0, i32 noundef %i.cm, i32 noundef %i.cn, i32 noundef 2, i32 noundef %i.co)
  %.val301 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cp = getelementptr inbounds nuw i8, ptr %.val301, i64 %i.b
  %.0.copyload.i331 = load i32, ptr %i.cp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i331) #8, !srcloc !14
  %i.cq = add i32 %.0.copyload.i331, 2
  %.val310 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %.val310, i64 %i.b
  store i32 %i.cq, ptr %i.cr, align 1
  %.val300 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cs = getelementptr inbounds nuw i8, ptr %.val300, i64 %i.bg
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.0.copyload.i332 = load i32, ptr %i.ct, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i332) #8, !srcloc !14
  %.val299 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cu = getelementptr inbounds nuw i8, ptr %.val299, i64 %i.bg
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %.0.copyload.i333 = load i32, ptr %i.cv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i333) #8, !srcloc !14
  %i.cw = icmp eq i32 %.0.copyload.i332, %.0.copyload.i333
  br i1 %i.cw, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i332) #8
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %.preheader334, %.preheader334, %bb.h
  %i.cx = add i32 %.0, 32                         ; 2 uses
  %.not298 = icmp eq i32 %i.cx, %3
  br i1 %.not298, label %.loopexit335, label %.preheader334

.loopexit335:                                     ; preds = %bb.i, %.loopexit336
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3ASmallVector0x3Cchar0x2C0x2032u0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3ASmallVector0x3Cchar0x2C0x2032u0x3E0x3E0x3E0x2C0x20llvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3ASmallVector0x3Cchar0x2C0x2032u0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3ASmallVector0x3Cchar0x2C0x2032u0x3E0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 49 uses
  %i.b = zext i32 %1 to i64                       ; 6 uses
  %i.c = add nuw nsw i64 %i.b, 12                 ; 4 uses
  %.val398 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val398, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.e = add i32 %2, -1
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 4
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 8
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 16
  %i.p = or i64 %i.o, %i.n
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = add i32 %i.q, 1
  %3 = tail call i32 @llvm.umax.i32(i32 %i.r, i32 64) ; 2 uses
  %.val402 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.val402, i64 %i.c
  store i32 %3, ptr %i.s, align 1
  %.val397 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val397, i64 %i.b
  %.0.copyload.i427 = load i32, ptr %i.t, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i427) #8, !srcloc !14
  %i.u = mul i32 %3, 52
  %i.v = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef %0, i32 noundef %i.u) #8 ; 11 uses
  %.val401 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %.val401, i64 %i.b
  store i32 %i.v, ptr %i.w, align 1
  %.not = icmp eq i32 %.0.copyload.i427, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.val424 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %.val424, i64 %i.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i64 0, ptr %i.y, align 1
  %.val396 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val396, i64 %i.c
  %.0.copyload.i428 = load i32, ptr %i.z, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i428) #8, !srcloc !14
  %.not387 = icmp eq i32 %.0.copyload.i428, 0
  br i1 %.not387, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = mul i32 %.0.copyload.i428, 52           ; 2 uses
  %i.ab = add i32 %i.aa, -52                      ; 2 uses
  %i.ac = udiv i32 %i.ab, 52
  %i.ad = add nuw nsw i32 %i.ac, 1
  %i.ae = and i32 %i.ad, 7                        ; 7 uses
  %.not388 = icmp eq i32 %i.ae, 0
  br i1 %.not388, label %.loopexit437, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.af = zext i32 %i.v to i64
  %.val423 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.val423, i64 %i.af
  store i64 4294967295, ptr %i.ag, align 1
  %i.ah = add i32 %i.v, 52                        ; 2 uses
  %.not389 = icmp eq i32 %i.ae, 1
  br i1 %.not389, label %.loopexit437, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %i.ai = zext i32 %i.ah to i64
  %.val423.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %.val423.1, i64 %i.ai
  store i64 4294967295, ptr %i.aj, align 1
  %i.ak = add i32 %i.v, 104                       ; 2 uses
  %.not389.1 = icmp eq i32 %i.ae, 2
  br i1 %.not389.1, label %.loopexit437, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.al = zext i32 %i.ak to i64
  %.val423.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %.val423.2, i64 %i.al
  store i64 4294967295, ptr %i.am, align 1
  %i.an = add i32 %i.v, 156                       ; 2 uses
  %.not389.2 = icmp eq i32 %i.ae, 3
  br i1 %.not389.2, label %.loopexit437, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.ao = zext i32 %i.an to i64
  %.val423.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.val423.3, i64 %i.ao
  store i64 4294967295, ptr %i.ap, align 1
  %i.aq = add i32 %i.v, 208                       ; 2 uses
  %.not389.3 = icmp eq i32 %i.ae, 4
  br i1 %.not389.3, label %.loopexit437, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.ar = zext i32 %i.aq to i64
  %.val423.4 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %.val423.4, i64 %i.ar
  store i64 4294967295, ptr %i.as, align 1
  %i.at = add i32 %i.v, 260                       ; 2 uses
  %.not389.4 = icmp eq i32 %i.ae, 5
  br i1 %.not389.4, label %.loopexit437, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.au = zext i32 %i.at to i64
  %.val423.5 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val423.5, i64 %i.au
  store i64 4294967295, ptr %i.av, align 1
  %i.aw = add i32 %i.v, 312                       ; 2 uses
  %.not389.5 = icmp eq i32 %i.ae, 6
  br i1 %.not389.5, label %.loopexit437, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.ax = zext i32 %i.aw to i64
  %.val423.6 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %.val423.6, i64 %i.ax
  store i64 4294967295, ptr %i.ay, align 1
  %i.az = add i32 %i.v, 364
  br label %.loopexit437

.loopexit437:                                     ; preds = %.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %bb.c
  %.1 = phi i32 [ %i.v, %bb.c ], [ %i.ah, %.preheader ], [ %i.ak, %.preheader.1 ], [ %i.an, %.preheader.2 ], [ %i.aq, %.preheader.3 ], [ %i.at, %.preheader.4 ], [ %i.aw, %.preheader.5 ], [ %i.az, %.preheader.6 ]
  %i.ba = icmp ult i32 %i.ab, 364
  br i1 %i.ba, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.loopexit437
  %i.bb = add i32 %i.aa, %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.2 = phi i32 [ %.1, %bb.d ], [ %i.bs, %bb.e ]  ; 2 uses
  %i.bc = zext i32 %.2 to i64                     ; 8 uses
  %.val422 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %.val422, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 364
  store i64 4294967295, ptr %i.be, align 1
  %.val421 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.val421, i64 %i.bc
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 312
  store i64 4294967295, ptr %i.bg, align 1
  %.val420 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %.val420, i64 %i.bc
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 260
  store i64 4294967295, ptr %i.bi, align 1
  %.val419 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %.val419, i64 %i.bc
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 208
  store i64 4294967295, ptr %i.bk, align 1
  %.val418 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %.val418, i64 %i.bc
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 156
  store i64 4294967295, ptr %i.bm, align 1
  %.val417 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bn = getelementptr inbounds nuw i8, ptr %.val417, i64 %i.bc
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 104
  store i64 4294967295, ptr %i.bo, align 1
  %.val416 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %.val416, i64 %i.bc
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 52
  store i64 4294967295, ptr %i.bq, align 1
  %.val415 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.br = getelementptr inbounds nuw i8, ptr %.val415, i64 %i.bc
  store i64 4294967295, ptr %i.br, align 1
  %i.bs = add i32 %.2, 416                        ; 2 uses
  %.not390 = icmp eq i32 %i.bs, %i.bb
  br i1 %.not390, label %.loopexit, label %bb.e

bb.f:                                             ; preds = %bb.a
  %i.bt = mul i32 %.0.copyload.i, 52              ; 2 uses
  %i.bu = add i32 %.0.copyload.i427, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !15 ; 3 uses
  %i.bx = add i32 %i.bw, -16                      ; 2 uses
  store i32 %i.bx, ptr %i.bv, align 8, !tbaa !15
  %i.by = add nuw nsw i64 %i.b, 4                 ; 3 uses
  %.val414 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bz = getelementptr inbounds nuw i8, ptr %.val414, i64 %i.by
  store i64 0, ptr %i.bz, align 1
  %.val395 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %.val395, i64 %i.c
  %.0.copyload.i429 = load i32, ptr %i.ca, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i429) #8, !srcloc !14
  %.not380 = icmp eq i32 %.0.copyload.i429, 0
  br i1 %.not380, label %.loopexit440, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val394 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cb = getelementptr inbounds nuw i8, ptr %.val394, i64 %i.b
  %.0.copyload.i430 = load i32, ptr %i.cb, align 1 ; 11 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i430) #8, !srcloc !14
  %i.cc = mul i32 %.0.copyload.i429, 52           ; 2 uses
  %i.cd = add i32 %i.cc, -52                      ; 2 uses
  %i.ce = udiv i32 %i.cd, 52
  %i.cf = add nuw nsw i32 %i.ce, 1
  %i.cg = and i32 %i.cf, 7                        ; 7 uses
  %.not381 = icmp eq i32 %i.cg, 0
  br i1 %.not381, label %.loopexit442, label %.preheader441

.preheader441:                                    ; preds = %bb.g
  %i.ch = zext i32 %.0.copyload.i430 to i64
  %.val413 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %.val413, i64 %i.ch
  store i64 4294967295, ptr %i.ci, align 1
  %i.cj = add i32 %.0.copyload.i430, 52           ; 2 uses
  %.not382 = icmp eq i32 %i.cg, 1
  br i1 %.not382, label %.loopexit442, label %.preheader441.1

.preheader441.1:                                  ; preds = %.preheader441
  %i.ck = zext i32 %i.cj to i64
  %.val413.1 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %.val413.1, i64 %i.ck
  store i64 4294967295, ptr %i.cl, align 1
  %i.cm = add i32 %.0.copyload.i430, 104          ; 2 uses
  %.not382.1 = icmp eq i32 %i.cg, 2
  br i1 %.not382.1, label %.loopexit442, label %.preheader441.2

.preheader441.2:                                  ; preds = %.preheader441.1
  %i.cn = zext i32 %i.cm to i64
  %.val413.2 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.co = getelementptr inbounds nuw i8, ptr %.val413.2, i64 %i.cn
  store i64 4294967295, ptr %i.co, align 1
  %i.cp = add i32 %.0.copyload.i430, 156          ; 2 uses
  %.not382.2 = icmp eq i32 %i.cg, 3
  br i1 %.not382.2, label %.loopexit442, label %.preheader441.3

.preheader441.3:                                  ; preds = %.preheader441.2
  %i.cq = zext i32 %i.cp to i64
  %.val413.3 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %.val413.3, i64 %i.cq
  store i64 4294967295, ptr %i.cr, align 1
end_hunk_24
begin_hunk_25_@w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3ASmallVector0x3Cchar0x2C0x2032u0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3ASmallVector0x3Cchar0x2C0x2032u0x3E0x3E0x3E0x2C0x20llvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3ASmallVector0x3Cchar0x2C0x2032u0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3ASmallVector0x3Cchar0x2C0x2032u0x3E0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29:bb.a

.loopexit440:                                     ; preds = %bb.i, %.loopexit442, %bb.f
  %.not384 = icmp eq i32 %i.bt, 0
  br i1 %.not384, label %.loopexit439, label %.preheader438

.preheader438:                                    ; preds = %.loopexit440
  %i.dv = add i32 %i.bw, -4
  %i.dw = zext i32 %i.bx to i64
  br label %bb.j

bb.j:                                             ; preds = %.preheader438, %bb.o
  %.1371 = phi i32 [ %i.ex, %bb.o ], [ %.0.copyload.i427, %.preheader438 ] ; 5 uses
  %i.dx = zext i32 %.1371 to i64                  ; 4 uses
  %.val426 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dy = getelementptr inbounds nuw i8, ptr %.val426, i64 %i.dx
  %.0.copyload.i431 = load i64, ptr %i.dy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i431) #8, !srcloc !33
  %i.dz = and i64 %.0.copyload.i431, 4294967294
  %i.ea = icmp eq i64 %i.dz, 4294967294
  br i1 %i.ea, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eb = tail call i32 @w2c_hermes_bool0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3ASmallVector0x3Cchar0x2C0x2032u0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3ASmallVector0x3Cchar0x2C0x2032u0x3E0x3E0x3E0x2C0x20llvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3ASmallVector0x3Cchar0x2C0x2032u0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3ASmallVector0x3Cchar0x2C0x2032u0x3E0x3E0x3E0x3A0x3ALookupBucketFor0x3Cllvh0x3A0x3AStringRef0x3E0x28llvh0x3A0x3AStringRef0x20const0x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3ASmallVector0x3Cchar0x2C0x2032u0x3E0x3E0x20const0x2A0x260x290x20const(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.1371, i32 noundef %i.dv) #8 ; 0 uses
  %.val425 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ec = getelementptr inbounds nuw i8, ptr %.val425, i64 %i.dx
  %.0.copyload.i432 = load i64, ptr %i.ec, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i432) #8, !srcloc !33
  %.val393 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ed = getelementptr inbounds nuw i8, ptr %.val393, i64 %i.dw
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %.0.copyload.i433 = load i32, ptr %i.ee, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i433) #8, !srcloc !14
  %i.ef = zext i32 %.0.copyload.i433 to i64       ; 3 uses
  %.val404 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.eg = getelementptr inbounds nuw i8, ptr %.val404, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  store i64 137438953472, ptr %i.eh, align 1
  %i.ei = add i32 %.0.copyload.i433, 20
  %.val400 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ej = getelementptr inbounds nuw i8, ptr %.val400, i64 %i.ef
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i32 %i.ei, ptr %i.ek, align 1
  %.val403 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.el = getelementptr inbounds nuw i8, ptr %.val403, i64 %i.ef
  store i64 %.0.copyload.i432, ptr %i.el, align 1
  %.val392 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.em = getelementptr inbounds nuw i8, ptr %.val392, i64 %i.dx
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %.0.copyload.i434 = load i32, ptr %i.en, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i434) #8, !srcloc !14
  %.not385 = icmp eq i32 %.0.copyload.i434, 0
  br i1 %.not385, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eo = add i32 %.0.copyload.i433, 8
  %i.ep = add i32 %.1371, 8
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorImpl0x3Cchar0x3E0x3A0x3Aoperator0x3D0x28llvh0x3A0x3ASmallVectorImpl0x3Cchar0x3E0x260x260x29(ptr noundef nonnull %0, i32 noundef %i.eo, i32 noundef %i.ep)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.val391 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.eq = getelementptr inbounds nuw i8, ptr %.val391, i64 %i.by
  %.0.copyload.i435 = load i32, ptr %i.eq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i435) #8, !srcloc !14
  %i.er = add i32 %.0.copyload.i435, 1
  %.val399 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.es = getelementptr inbounds nuw i8, ptr %.val399, i64 %i.by
  store i32 %i.er, ptr %i.es, align 1
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.et = getelementptr inbounds nuw i8, ptr %.val, i64 %i.dx
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %.0.copyload.i436 = load i32, ptr %i.eu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i436) #8, !srcloc !14
  %i.ev = add i32 %.1371, 20
  %i.ew = icmp eq i32 %.0.copyload.i436, %i.ev
  br i1 %i.ew, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i436) #8
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.j, %bb.n
  %i.ex = add i32 %.1371, 52                      ; 2 uses
  %.not386 = icmp eq i32 %i.ex, %i.bu
  br i1 %.not386, label %.loopexit439, label %bb.j

.loopexit439:                                     ; preds = %bb.o, %.loopexit440
  store i32 %i.bw, ptr %i.bv, align 8, !tbaa !15
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i427) #8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.loopexit437, %bb.b, %.loopexit439
  ret void
}

declare i32 @w2c_hermes_bool0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3ASmallVector0x3Cchar0x2C0x2032u0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3ASmallVector0x3Cchar0x2C0x2032u0x3E0x3E0x3E0x2C0x20llvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3ASmallVector0x3Cchar0x2C0x2032u0x3E0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AStringRef0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3ASmallVector0x3Cchar0x2C0x2032u0x3E0x3E0x3E0x3A0x3ALookupBucketFor0x3Cllvh0x3A0x3AStringRef0x3E0x28llvh0x3A0x3AStringRef0x20const0x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3ASmallVector0x3Cchar0x2C0x2032u0x3E0x3E0x20const0x2A0x260x290x20const(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x3E0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20hermes0x3A0x3ARegisterAllocator0x3A0x3ABlockLifetimeInfo0x3E0x3E0x3A0x3AdestroyAll0x280x29(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %.val62 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %.val62, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %.not = icmp eq i32 %.0.copyload.i, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val61 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %.val61, i64 %i.b
  %.0.copyload.i63 = load i32, ptr %i.e, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i63) #8, !srcloc !14
  %i.f = shl i32 %.0.copyload.i, 6
  %i.g = add i32 %.0.copyload.i63, %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.0 = phi i32 [ %.0.copyload.i63, %bb.b ], [ %i.t, %bb.e ] ; 2 uses
  %i.h = zext i32 %.0 to i64                      ; 6 uses
  %.val60 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %.val60, i64 %i.h
  %.0.copyload.i64 = load i32, ptr %i.i, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i64) #8, !srcloc !14
  switch i32 %.0.copyload.i64, label %bb.d [
    i32 -8, label %bb.e
    i32 -4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %.val59 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %.val59, i64 %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  %.0.copyload.i65 = load i32, ptr %i.k, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i65) #8, !srcloc !14
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i65) #8
  %.val58 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %.val58, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.0.copyload.i66 = load i32, ptr %i.m, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i66) #8, !srcloc !14
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i66) #8
  %.val57 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %.val57, i64 %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %.0.copyload.i67 = load i32, ptr %i.o, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i67) #8, !srcloc !14
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i67) #8
  %.val56 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %.val56, i64 %i.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.0.copyload.i68 = load i32, ptr %i.q, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i68) #8, !srcloc !14
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i68) #8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.0.copyload.i69 = load i32, ptr %i.s, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i69) #8, !srcloc !14
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i69) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.d
  %i.t = add i32 %.0, 64                          ; 2 uses
  %.not55 = icmp eq i32 %i.t, %i.g
  br i1 %.not55, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3AStringRef0x3E0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3AStringRef0x3E0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3AStringRef0x3E0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 48 uses
  %i.e = zext i32 %1 to i64                       ; 5 uses
  %i.f = add nuw nsw i64 %i.e, 12                 ; 4 uses
  %.val383 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %.val383, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.h = add i32 %2, -1
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = lshr i64 %i.i, 1
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 2
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 4
  %i.o = or i64 %i.n, %i.m                        ; 2 uses
  %i.p = lshr i64 %i.o, 8
  %i.q = or i64 %i.p, %i.o                        ; 2 uses
  %i.r = lshr i64 %i.q, 16
  %i.s = or i64 %i.r, %i.q
  %i.t = trunc nuw i64 %i.s to i32
  %i.u = add i32 %i.t, 1
  %3 = tail call i32 @llvm.umax.i32(i32 %i.u, i32 64) ; 2 uses
  %.val387 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %.val387, i64 %i.f
  store i32 %3, ptr %i.v, align 1
  %.val382 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %.val382, i64 %i.e
  %.0.copyload.i414 = load i32, ptr %i.w, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i414) #8, !srcloc !14
  %i.x = mul i32 %3, 20
  %i.y = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef %0, i32 noundef %i.x) #8 ; 13 uses
  %.val386 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val386, i64 %i.e
  store i32 %i.y, ptr %i.z, align 1
  %.not = icmp eq i32 %.0.copyload.i414, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.val411 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %.val411, i64 %i.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i64 0, ptr %i.ab, align 1
  %.val381 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.val381, i64 %i.f
  %.0.copyload.i415 = load i32, ptr %i.ac, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i415) #8, !srcloc !14
  %.not371 = icmp eq i32 %.0.copyload.i415, 0
  br i1 %.not371, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = mul i32 %.0.copyload.i415, 20           ; 2 uses
  %i.ae = add i32 %i.ad, -20                      ; 2 uses
  %i.af = udiv i32 %i.ae, 20
  %i.ag = add nuw nsw i32 %i.af, 1
  %i.ah = and i32 %i.ag, 3                        ; 3 uses
  %.not372 = icmp eq i32 %i.ah, 0
  br i1 %.not372, label %.loopexit425, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.ai = zext i32 %i.y to i64                    ; 2 uses
  %.val410 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %.val410, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 4294967295, ptr %i.ak, align 1
  %.val409 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val409, i64 %i.ai
  store i64 4294967295, ptr %i.al, align 1
  %i.am = add i32 %i.y, 20                        ; 2 uses
  %.not373 = icmp eq i32 %i.ah, 1
  br i1 %.not373, label %.loopexit425, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %.val410.1 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.val410.1, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 4294967295, ptr %i.ap, align 1
  %.val409.1 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %.val409.1, i64 %i.an
  store i64 4294967295, ptr %i.aq, align 1
  %i.ar = add i32 %i.y, 40                        ; 2 uses
  %.not373.1 = icmp eq i32 %i.ah, 2
  br i1 %.not373.1, label %.loopexit425, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %.val410.2 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val410.2, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 4294967295, ptr %i.au, align 1
  %.val409.2 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val409.2, i64 %i.as
  store i64 4294967295, ptr %i.av, align 1
  %i.aw = add i32 %i.y, 60
  br label %.loopexit425

.loopexit425:                                     ; preds = %.preheader, %.preheader.1, %.preheader.2, %bb.c
  %.1 = phi i32 [ %i.y, %bb.c ], [ %i.am, %.preheader ], [ %i.ar, %.preheader.1 ], [ %i.aw, %.preheader.2 ]
  %i.ax = icmp ult i32 %i.ae, 60
  br i1 %i.ax, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.loopexit425
  %i.ay = add i32 %i.ad, %i.y
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.2 = phi i32 [ %.1, %bb.d ], [ %i.bp, %bb.e ]  ; 2 uses
  %i.az = zext i32 %.2 to i64                     ; 8 uses
  %.val408 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %.val408, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 60
  store i64 4294967295, ptr %i.bb, align 1
  %.val407 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %.val407, i64 %i.az
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  store i64 4294967295, ptr %i.bd, align 1
  %.val406 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %.val406, i64 %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  store i64 4294967295, ptr %i.bf, align 1
  %.val405 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %.val405, i64 %i.az
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 4294967295, ptr %i.bh, align 1
  %.val404 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %.val404, i64 %i.az
  store i64 4294967295, ptr %i.bi, align 1
  %.val403 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %.val403, i64 %i.az
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 68
  store i64 4294967295, ptr %i.bk, align 1
  %.val402 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %.val402, i64 %i.az
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  store i64 4294967295, ptr %i.bm, align 1
  %.val401 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bn = getelementptr inbounds nuw i8, ptr %.val401, i64 %i.az
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 28
  store i64 4294967295, ptr %i.bo, align 1
  %i.bp = add i32 %.2, 80                         ; 2 uses
  %.not374 = icmp eq i32 %i.bp, %i.ay
  br i1 %.not374, label %.loopexit, label %bb.e

bb.f:                                             ; preds = %bb.a
  %i.bq = add nuw nsw i64 %i.e, 4                 ; 3 uses
  %.val400 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.br = getelementptr inbounds nuw i8, ptr %.val400, i64 %i.bq
  store i64 0, ptr %i.br, align 1
  %.val380 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %.val380, i64 %i.f
  %.0.copyload.i416 = load i32, ptr %i.bs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i416) #8, !srcloc !14
  %.not364 = icmp eq i32 %.0.copyload.i416, 0
  br i1 %.not364, label %.loopexit427, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bt = mul i32 %.0.copyload.i416, 20           ; 2 uses
  %i.bu = add i32 %i.bt, -20                      ; 2 uses
  %i.bv = udiv i32 %i.bu, 20
  %i.bw = add nuw nsw i32 %i.bv, 1
  %i.bx = and i32 %i.bw, 3                        ; 3 uses
  %.not365 = icmp eq i32 %i.bx, 0
  br i1 %.not365, label %.loopexit429, label %.preheader428

.preheader428:                                    ; preds = %bb.g
  %i.by = zext i32 %i.y to i64                    ; 2 uses
  %.val399 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bz = getelementptr inbounds nuw i8, ptr %.val399, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 4294967295, ptr %i.ca, align 1
  %.val398 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cb = getelementptr inbounds nuw i8, ptr %.val398, i64 %i.by
  store i64 4294967295, ptr %i.cb, align 1
  %i.cc = add i32 %i.y, 20                        ; 2 uses
  %.not366 = icmp eq i32 %i.bx, 1
  br i1 %.not366, label %.loopexit429, label %.preheader428.1

.preheader428.1:                                  ; preds = %.preheader428
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %.val399.1 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ce = getelementptr inbounds nuw i8, ptr %.val399.1, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 4294967295, ptr %i.cf, align 1
  %.val398.1 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %.val398.1, i64 %i.cd
  store i64 4294967295, ptr %i.cg, align 1
  %i.ch = add i32 %i.y, 40                        ; 2 uses
  %.not366.1 = icmp eq i32 %i.bx, 2
  br i1 %.not366.1, label %.loopexit429, label %.preheader428.2

.preheader428.2:                                  ; preds = %.preheader428.1
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %.val399.2 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cj = getelementptr inbounds nuw i8, ptr %.val399.2, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i64 4294967295, ptr %i.ck, align 1
  %.val398.2 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %.val398.2, i64 %i.ci
  store i64 4294967295, ptr %i.cl, align 1
  %i.cm = add i32 %i.y, 60
  br label %.loopexit429

.loopexit429:                                     ; preds = %.preheader428, %.preheader428.1, %.preheader428.2, %bb.g
  %.4 = phi i32 [ %i.y, %bb.g ], [ %i.cc, %.preheader428 ], [ %i.ch, %.preheader428.1 ], [ %i.cm, %.preheader428.2 ]
  %i.cn = icmp ult i32 %i.bu, 60
  br i1 %i.cn, label %.loopexit427, label %bb.h

bb.h:                                             ; preds = %.loopexit429
  %i.co = add i32 %i.bt, %i.y
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.5 = phi i32 [ %.4, %bb.h ], [ %i.df, %bb.i ]  ; 2 uses
  %i.cp = zext i32 %.5 to i64                     ; 8 uses
  %.val397 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cq = getelementptr inbounds nuw i8, ptr %.val397, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 60
  store i64 4294967295, ptr %i.cr, align 1
  %.val396 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cs = getelementptr inbounds nuw i8, ptr %.val396, i64 %i.cp
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  store i64 4294967295, ptr %i.ct, align 1
  %.val395 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cu = getelementptr inbounds nuw i8, ptr %.val395, i64 %i.cp
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 20
  store i64 4294967295, ptr %i.cv, align 1
  %.val394 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cw = getelementptr inbounds nuw i8, ptr %.val394, i64 %i.cp
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 4294967295, ptr %i.cx, align 1
  %.val393 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cy = getelementptr inbounds nuw i8, ptr %.val393, i64 %i.cp
  store i64 4294967295, ptr %i.cy, align 1
  %.val392 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cz = getelementptr inbounds nuw i8, ptr %.val392, i64 %i.cp
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 68
  store i64 4294967295, ptr %i.da, align 1
  %.val391 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.db = getelementptr inbounds nuw i8, ptr %.val391, i64 %i.cp
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  store i64 4294967295, ptr %i.dc, align 1
  %.val390 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dd = getelementptr inbounds nuw i8, ptr %.val390, i64 %i.cp
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 28
  store i64 4294967295, ptr %i.de, align 1
  %i.df = add i32 %.5, 80                         ; 2 uses
  %.not367 = icmp eq i32 %i.df, %i.co
  br i1 %.not367, label %.loopexit427, label %bb.i

.loopexit427:                                     ; preds = %bb.i, %.loopexit429, %bb.f
  %.not368 = icmp eq i32 %.0.copyload.i, 0
  br i1 %.not368, label %.loopexit426, label %bb.j

bb.j:                                             ; preds = %.loopexit427
  %i.dg = mul i32 %.0.copyload.i, 20
  %i.dh = add i32 %.0.copyload.i414, %i.dg
  %i.di = add i32 %i.b, -4
  %i.dj = zext i32 %i.c to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %bb.j
  %.6 = phi i32 [ %.0.copyload.i414, %bb.j ], [ %i.ei, %bb.o ] ; 3 uses
  %i.dk = zext i32 %.6 to i64                     ; 6 uses
  %.val379 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dl = getelementptr inbounds nuw i8, ptr %.val379, i64 %i.dk
  %.0.copyload.i417 = load i32, ptr %i.dl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i417) #8, !srcloc !14
  switch i32 %.0.copyload.i417, label %bb.n [
    i32 -2, label %bb.m
    i32 -1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %.val378 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dm = getelementptr inbounds nuw i8, ptr %.val378, i64 %i.dk
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.0.copyload.i418 = load i32, ptr %i.dn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i418) #8, !srcloc !14
  %.not369 = icmp eq i32 %.0.copyload.i418, -1
  br i1 %.not369, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.k
  %.val377 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.do = getelementptr inbounds nuw i8, ptr %.val377, i64 %i.dk
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.0.copyload.i419 = load i32, ptr %i.dp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i419) #8, !srcloc !14
  %i.dq = icmp eq i32 %.0.copyload.i419, -2
  br i1 %i.dq, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.dr = tail call i32 @w2c_hermes_bool0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3AStringRef0x3E0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3AStringRef0x3E0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3AStringRef0x3E0x2C0x20unsigned0x20int0x3E0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3AStringRef0x3E0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3AStringRef0x3E0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3AStringRef0x3E0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3ALookupBucketFor0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3AStringRef0x3E0x3E0x28std0x3A0x3A_0x5F20x3A0x3Apair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3AStringRef0x3E0x20const0x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3AStringRef0x3E0x2C0x20unsigned0x20int0x3E0x20const0x2A0x260x290x20const(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.6, i32 noundef %i.di) #8 ; 0 uses
  %.val376 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ds = getelementptr inbounds nuw i8, ptr %.val376, i64 %i.dj
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %.0.copyload.i420 = load i32, ptr %i.dt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i420) #8, !srcloc !14
  %.val413 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.du = getelementptr inbounds nuw i8, ptr %.val413, i64 %i.dk
  %.0.copyload.i421 = load i64, ptr %i.du, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i421) #8, !srcloc !33
  %i.dv = zext i32 %.0.copyload.i420 to i64       ; 3 uses
  %.val389 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dw = getelementptr inbounds nuw i8, ptr %.val389, i64 %i.dv
  store i64 %.0.copyload.i421, ptr %i.dw, align 1
  %.val412 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dx = getelementptr inbounds nuw i8, ptr %.val412, i64 %i.dk
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %.0.copyload.i422 = load i64, ptr %i.dy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i422) #8, !srcloc !33
  %.val388 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dz = getelementptr inbounds nuw i8, ptr %.val388, i64 %i.dv
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i64 %.0.copyload.i422, ptr %i.ea, align 1
  %.val375 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.eb = getelementptr inbounds nuw i8, ptr %.val375, i64 %i.dk
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %.0.copyload.i423 = load i32, ptr %i.ec, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i423) #8, !srcloc !14
  %.val385 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ed = getelementptr inbounds nuw i8, ptr %.val385, i64 %i.dv
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store i32 %.0.copyload.i423, ptr %i.ee, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ef = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bq
  %.0.copyload.i424 = load i32, ptr %i.ef, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i424) #8, !srcloc !14
  %i.eg = add i32 %.0.copyload.i424, 1
  %.val384 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.eh = getelementptr inbounds nuw i8, ptr %.val384, i64 %i.bq
  store i32 %i.eg, ptr %i.eh, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.n
  %i.ei = add i32 %.6, 20                         ; 2 uses
  %.not370 = icmp eq i32 %i.ei, %i.dh
  br i1 %.not370, label %.loopexit426, label %bb.k

.loopexit426:                                     ; preds = %bb.o, %.loopexit427
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i414) #8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.loopexit425, %bb.b, %.loopexit426
  store i32 %i.b, ptr %i.a, align 8, !tbaa !15
  ret void
}

declare i32 @w2c_hermes_bool0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3AStringRef0x3E0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3AStringRef0x3E0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3AStringRef0x3E0x2C0x20unsigned0x20int0x3E0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Apair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3AStringRef0x3E0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3AStringRef0x3E0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3AStringRef0x3E0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3ALookupBucketFor0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3AStringRef0x3E0x3E0x28std0x3A0x3A_0x5F20x3A0x3Apair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3AStringRef0x3E0x20const0x260x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cstd0x3A0x3A_0x5F20x3A0x3Apair0x3Cllvh0x3A0x3AStringRef0x2C0x20llvh0x3A0x3AStringRef0x3E0x2C0x20unsigned0x20int0x3E0x20const0x2A0x260x290x20const(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_llvh0x3A0x3ADenseMap0x3Cllvh0x3A0x3AArrayRef0x3Cunsigned0x20char0x3E0x2C0x20unsigned0x20int0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Cllvh0x3A0x3AArrayRef0x3Cunsigned0x20char0x3E0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Cllvh0x3A0x3AArrayRef0x3Cunsigned0x20char0x3E0x2C0x20unsigned0x20int0x3E0x3E0x3A0x3Agrow0x28unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 46 uses
  %i.e = zext i32 %1 to i64                       ; 5 uses
  %i.f = add nuw nsw i64 %i.e, 12                 ; 4 uses
  %.val355 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %.val355, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.h = add i32 %2, -1
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = lshr i64 %i.i, 1
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 2
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 4
  %i.o = or i64 %i.n, %i.m                        ; 2 uses
  %i.p = lshr i64 %i.o, 8
  %i.q = or i64 %i.p, %i.o                        ; 2 uses
  %i.r = lshr i64 %i.q, 16
  %i.s = or i64 %i.r, %i.q
  %i.t = trunc nuw i64 %i.s to i32
  %i.u = add i32 %i.t, 1
  %3 = tail call i32 @llvm.umax.i32(i32 %i.u, i32 64) ; 2 uses
  %.val359 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %.val359, i64 %i.f
  store i32 %3, ptr %i.v, align 1
  %.val354 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %.val354, i64 %i.e
  %.0.copyload.i383 = load i32, ptr %i.w, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i383) #8, !srcloc !14
  %i.x = mul i32 %3, 12
  %i.y = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef %0, i32 noundef %i.x) #8 ; 21 uses
  %.val358 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val358, i64 %i.e
  store i32 %i.y, ptr %i.z, align 1
  %.not = icmp eq i32 %.0.copyload.i383, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.val380 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %.val380, i64 %i.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i64 0, ptr %i.ab, align 1
  %.val353 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.val353, i64 %i.f
  %.0.copyload.i384 = load i32, ptr %i.ac, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i384) #8, !srcloc !14
  %.not346 = icmp eq i32 %.0.copyload.i384, 0
  br i1 %.not346, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = mul i32 %.0.copyload.i384, 12           ; 2 uses
  %i.ae = add i32 %i.ad, -12                      ; 2 uses
  %i.af = udiv i32 %i.ae, 12
  %i.ag = add nuw nsw i32 %i.af, 1
  %i.ah = and i32 %i.ag, 7                        ; 7 uses
  %.not347 = icmp eq i32 %i.ah, 0
  br i1 %.not347, label %.loopexit391, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.ai = zext i32 %i.y to i64
  %.val379 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %.val379, i64 %i.ai
  store i64 4294967295, ptr %i.aj, align 1
  %i.ak = add i32 %i.y, 12                        ; 2 uses
  %.not348 = icmp eq i32 %i.ah, 1
  br i1 %.not348, label %.loopexit391, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %i.al = zext i32 %i.ak to i64
  %.val379.1 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %.val379.1, i64 %i.al
  store i64 4294967295, ptr %i.am, align 1
  %i.an = add i32 %i.y, 24                        ; 2 uses
  %.not348.1 = icmp eq i32 %i.ah, 2
  br i1 %.not348.1, label %.loopexit391, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.ao = zext i32 %i.an to i64
  %.val379.2 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.val379.2, i64 %i.ao
  store i64 4294967295, ptr %i.ap, align 1
  %i.aq = add i32 %i.y, 36                        ; 2 uses
  %.not348.2 = icmp eq i32 %i.ah, 3
  br i1 %.not348.2, label %.loopexit391, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.ar = zext i32 %i.aq to i64
  %.val379.3 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %.val379.3, i64 %i.ar
  store i64 4294967295, ptr %i.as, align 1
  %i.at = add i32 %i.y, 48                        ; 2 uses
  %.not348.3 = icmp eq i32 %i.ah, 4
  br i1 %.not348.3, label %.loopexit391, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.au = zext i32 %i.at to i64
  %.val379.4 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val379.4, i64 %i.au
  store i64 4294967295, ptr %i.av, align 1
  %i.aw = add i32 %i.y, 60                        ; 2 uses
  %.not348.4 = icmp eq i32 %i.ah, 5
  br i1 %.not348.4, label %.loopexit391, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.ax = zext i32 %i.aw to i64
  %.val379.5 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %.val379.5, i64 %i.ax
  store i64 4294967295, ptr %i.ay, align 1
  %i.az = add i32 %i.y, 72                        ; 2 uses
  %.not348.5 = icmp eq i32 %i.ah, 6
  br i1 %.not348.5, label %.loopexit391, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.ba = zext i32 %i.az to i64
  %.val379.6 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %.val379.6, i64 %i.ba
  store i64 4294967295, ptr %i.bb, align 1
  %i.bc = add i32 %i.y, 84
  br label %.loopexit391

.loopexit391:                                     ; preds = %.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %bb.c
  %.1 = phi i32 [ %i.y, %bb.c ], [ %i.ak, %.preheader ], [ %i.an, %.preheader.1 ], [ %i.aq, %.preheader.2 ], [ %i.at, %.preheader.3 ], [ %i.aw, %.preheader.4 ], [ %i.az, %.preheader.5 ], [ %i.bc, %.preheader.6 ]
  %i.bd = icmp ult i32 %i.ae, 84
  br i1 %i.bd, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.loopexit391
  %i.be = add i32 %i.ad, %i.y
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.2 = phi i32 [ %.1, %bb.d ], [ %i.bv, %bb.e ]  ; 2 uses
  %i.bf = zext i32 %.2 to i64                     ; 8 uses
  %.val378 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %.val378, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 84
  store i64 4294967295, ptr %i.bh, align 1
  %.val377 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %.val377, i64 %i.bf
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  store i64 4294967295, ptr %i.bj, align 1
  %.val376 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %.val376, i64 %i.bf
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 60
  store i64 4294967295, ptr %i.bl, align 1
  %.val375 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %.val375, i64 %i.bf
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  store i64 4294967295, ptr %i.bn, align 1
  %.val374 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %.val374, i64 %i.bf
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 36
  store i64 4294967295, ptr %i.bp, align 1
  %.val373 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %.val373, i64 %i.bf
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store i64 4294967295, ptr %i.br, align 1
  %.val372 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %.val372, i64 %i.bf
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i64 4294967295, ptr %i.bt, align 1
  %.val371 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val371, i64 %i.bf
  store i64 4294967295, ptr %i.bu, align 1
  %i.bv = add i32 %.2, 96                         ; 2 uses
  %.not349 = icmp eq i32 %i.bv, %i.be
  br i1 %.not349, label %.loopexit, label %bb.e

bb.f:                                             ; preds = %bb.a
  %i.bw = add nuw nsw i64 %i.e, 4                 ; 3 uses
  %.val370 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %.val370, i64 %i.bw
  store i64 0, ptr %i.bx, align 1
  %.val352 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %.val352, i64 %i.f
  %.0.copyload.i385 = load i32, ptr %i.by, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i385) #8, !srcloc !14
  %.not339 = icmp eq i32 %.0.copyload.i385, 0
  br i1 %.not339, label %.loopexit393, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bz = mul i32 %.0.copyload.i385, 12           ; 2 uses
  %i.ca = add i32 %i.bz, -12                      ; 2 uses
  %i.cb = udiv i32 %i.ca, 12
  %i.cc = add nuw nsw i32 %i.cb, 1
  %i.cd = and i32 %i.cc, 7                        ; 7 uses
  %.not340 = icmp eq i32 %i.cd, 0
  br i1 %.not340, label %.loopexit395, label %.preheader394

.preheader394:                                    ; preds = %bb.g
  %i.ce = zext i32 %i.y to i64
  %.val369 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cf = getelementptr inbounds nuw i8, ptr %.val369, i64 %i.ce
  store i64 4294967295, ptr %i.cf, align 1
  %i.cg = add i32 %i.y, 12                        ; 2 uses
  %.not341 = icmp eq i32 %i.cd, 1
  br i1 %.not341, label %.loopexit395, label %.preheader394.1

.preheader394.1:                                  ; preds = %.preheader394
  %i.ch = zext i32 %i.cg to i64
  %.val369.1 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %.val369.1, i64 %i.ch
  store i64 4294967295, ptr %i.ci, align 1
  %i.cj = add i32 %i.y, 24                        ; 2 uses
  %.not341.1 = icmp eq i32 %i.cd, 2
  br i1 %.not341.1, label %.loopexit395, label %.preheader394.2

.preheader394.2:                                  ; preds = %.preheader394.1
  %i.ck = zext i32 %i.cj to i64
  %.val369.2 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %.val369.2, i64 %i.ck
  store i64 4294967295, ptr %i.cl, align 1
  %i.cm = add i32 %i.y, 36                        ; 2 uses
  %.not341.2 = icmp eq i32 %i.cd, 3
  br i1 %.not341.2, label %.loopexit395, label %.preheader394.3

.preheader394.3:                                  ; preds = %.preheader394.2
  %i.cn = zext i32 %i.cm to i64
  %.val369.3 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.co = getelementptr inbounds nuw i8, ptr %.val369.3, i64 %i.cn
  store i64 4294967295, ptr %i.co, align 1
  %i.cp = add i32 %i.y, 48                        ; 2 uses
  %.not341.3 = icmp eq i32 %i.cd, 4
  br i1 %.not341.3, label %.loopexit395, label %.preheader394.4

.preheader394.4:                                  ; preds = %.preheader394.3
  %i.cq = zext i32 %i.cp to i64
  %.val369.4 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %.val369.4, i64 %i.cq
  store i64 4294967295, ptr %i.cr, align 1
  %i.cs = add i32 %i.y, 60                        ; 2 uses
end_hunk_25
begin_hunk_26_@w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcShiftLeft0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29:bb.a
  %i.bb = shl i32 %i.ba, 3
  %i.bc = add i32 %i.bb, %1
  %i.bd = zext i32 %i.bc to i64
  %.val279 = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %.val279, i64 %i.bd
  %.0.copyload.i287 = load i64, ptr %i.be, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i287) #8, !srcloc !33
  %i.bf = shl i64 %.0.copyload.i287, %i.m         ; 2 uses
  %i.bg = zext i32 %i.az to i64                   ; 2 uses
  %.val272 = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %.val272, i64 %i.bg
  store i64 %i.bf, ptr %i.bh, align 1
  %i.bi = add i32 %i.ax, %i.q
  %i.bj = shl i32 %i.bi, 3
  %i.bk = add i32 %i.bj, %1
  %i.bl = zext i32 %i.bk to i64
  %.val278 = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %.val278, i64 %i.bl
  %.0.copyload.i288 = load i64, ptr %i.bm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i288) #8, !srcloc !33
  %i.bn = lshr i64 %.0.copyload.i288, %i.s
  %i.bo = or i64 %i.bn, %i.bf
  %.val271 = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %.val271, i64 %i.bg
  store i64 %i.bo, ptr %i.bp, align 1
  %i.bq = add i32 %.1261, -2                      ; 4 uses
  %i.br = shl i32 %i.bq, 3
  %i.bs = add i32 %i.br, %1                       ; 2 uses
  %i.bt = sub i32 %i.bq, %i.b
  %i.bu = shl i32 %i.bt, 3
  %i.bv = add i32 %i.bu, %1
  %i.bw = zext i32 %i.bv to i64
  %.val277 = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %.val277, i64 %i.bw
  %.0.copyload.i289 = load i64, ptr %i.bx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i289) #8, !srcloc !33
  %i.by = shl i64 %.0.copyload.i289, %i.m         ; 2 uses
  %i.bz = zext i32 %i.bs to i64
  %.val = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bz
  store i64 %i.by, ptr %i.ca, align 1
  %i.cb = icmp ugt i32 %i.bq, %i.b
  br i1 %i.cb, label %.preheader, label %.loopexit

bb.h:                                             ; preds = %bb.b
  %i.cc = shl nuw nsw i32 %i.b, 3
  %i.cd = add i32 %i.cc, %1
  %i.ce = sub i32 %2, %i.b
  %i.cf = shl i32 %i.ce, 3
  %i.cg = tail call i32 @w2c_hermes_memmove(ptr noundef %0, i32 noundef %i.cd, i32 noundef %1, i32 noundef %i.cf) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.g, %bb.d, %bb.c, %bb.h
  %i.ch = shl nuw nsw i32 %i.b, 3
  %i.ci = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef %i.ch) #8 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AAPInt0x28unsigned0x20int0x2C0x20llvh0x3A0x3AArrayRef0x3Cunsigned0x20long0x20long0x3E0x29(ptr noundef %0, i32 noundef returned %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.b = zext i32 %1 to i64                       ; 4 uses
  %.val96 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %.val96, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %2, ptr %i.d, align 1
  %i.e = zext i32 %3 to i64
  %.val101 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %.val101, i64 %i.e
  %.0.copyload.i = load i64, ptr %i.f, align 1    ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #8, !srcloc !33
  %i.g = icmp ult i32 %2, 65
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %.0.copyload.i, 4294967295
  %.val100 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %.val100, i64 %i.h
  %.0.copyload.i102 = load i64, ptr %i.i, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i102) #8, !srcloc !33
  %.val98 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %.val98, i64 %i.b
  store i64 %.0.copyload.i102, ptr %i.j, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = trunc i64 %.0.copyload.i to i32
  %i.l = zext i32 %2 to i64
  %i.m = add nuw nsw i64 %i.l, 63
  %i.n = lshr i64 %i.m, 6                         ; 2 uses
  %i.o = trunc nuw nsw i64 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 3                  ; 3 uses
  %i.q = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.p) #8
  %i.r = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.q, i32 noundef 0, i32 noundef %i.p) #8 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  store i32 %i.r, ptr %i.s, align 1
  %i.t = lshr i64 %.0.copyload.i, 32
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.n)
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 3
  %i.x = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.r, i32 noundef %i.k, i32 noundef %i.w) #8
  %i.y = add nsw i32 %i.p, -8
  %i.z = add i32 %i.y, %i.x
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %.val99 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %.val99, i64 %i.aa
  %.0.copyload.i103 = load i64, ptr %i.ab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i103) #8, !srcloc !33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi = phi i64 [ %i.aa, %bb.c ], [ %i.b, %bb.b ]
  %.094 = phi i64 [ %.0.copyload.i103, %bb.c ], [ %.0.copyload.i102, %bb.b ]
  %i.ac = sub i32 0, %2
  %i.ad = and i32 %i.ac, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = lshr i64 -1, %i.ae
  %i.ag = and i64 %.094, %i.af
  %.val97 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.val97, i64 %.pre-phi
  store i64 %i.ag, ptr %i.ah, align 1
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @w2c_hermes_isatty(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = add i32 %i.b, -32                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = add i32 %i.b, -24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.g = tail call i32 @w2c_wasi__snapshot__preview1_fd_fdstat_get(ptr noundef %i.f, i32 noundef %1, i32 noundef %i.d) #8 ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = zext i32 %i.c to i64
  %.val = load ptr, ptr %i.h, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.0.copyload.i = load i8, ptr %i.k, align 1     ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i) #8, !srcloc !13
  %i.l = icmp eq i8 %.0.copyload.i, 2
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.034 = phi i32 [ 59, %bb.b ], [ %i.g, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val35 = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %.val35, i64 272032
  store i32 %.034, ptr %i.n, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.c ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !15
  ret i32 %.0
}

declare i32 @w2c_wasi__snapshot__preview1_fd_fdstat_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_internal_memalign(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @llvm.umax.i32(i32 %1, i32 16) ; 3 uses
  %i.b = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.a)
  %.not = icmp samesign ult i32 %i.b, 2
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0265 = phi i32 [ %i.c, %.preheader ], [ 16, %bb.a ] ; 3 uses
  %i.c = shl i32 %.0265, 1
  %i.d = icmp ult i32 %.0265, %i.a
  br i1 %i.d, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.a
  %.0 = phi i32 [ %i.a, %bb.a ], [ %.0265, %.preheader ] ; 5 uses
  %i.e = sub i32 -64, %.0
  %.not268 = icmp ult i32 %2, %i.e
  br i1 %.not268, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val290 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %.val290, i64 272032
  store i32 48, ptr %i.g, align 1
  br label %bb.l

bb.c:                                             ; preds = %.loopexit
  %i.h = add i32 %2, 11
  %i.i = and i32 %i.h, -8
  %i.j = icmp ult i32 %2, 5
  %i.k = select i1 %i.j, i32 16, i32 %i.i         ; 5 uses
  %i.l = add i32 %i.k, 12
  %i.m = add i32 %i.l, %.0
  %i.n = tail call i32 @w2c_hermes_dlmalloc(ptr noundef %0, i32 noundef %i.m) #8 ; 6 uses
  %.not269 = icmp eq i32 %i.n, 0
  br i1 %.not269, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = add i32 %i.n, -8                         ; 5 uses
  %i.p = add i32 %.0, -1                          ; 2 uses
  %i.q = and i32 %i.n, %i.p
  %.not270 = icmp eq i32 %i.q, 0
  br i1 %.not270, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.d
  %.pre = zext i32 %i.o to i64
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.r = add i32 %i.n, -4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 12 uses
  %i.t = zext i32 %i.r to i64                     ; 3 uses
  %.val280 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val280, i64 %i.t
  %.0.copyload.i = load i32, ptr %i.u, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.v = and i32 %.0.copyload.i, -8
  %i.w = add i32 %i.p, %i.n
  %i.x = sub i32 0, %.0
  %i.y = and i32 %i.w, %i.x                       ; 2 uses
  %i.z = add i32 %i.y, -8
  %i.aa = sub i32 %i.y, %i.n
  %i.ab = icmp ult i32 %i.aa, 16
  %i.ac = select i1 %i.ab, i32 %.0, i32 0
  %i.ad = add i32 %i.z, %i.ac                     ; 6 uses
  %i.ae = sub i32 %i.ad, %i.o                     ; 4 uses
  %i.af = sub i32 %i.v, %i.ae                     ; 3 uses
  %i.ag = and i32 %.0.copyload.i, 3
  %.not271 = icmp eq i32 %i.ag, 0
  br i1 %.not271, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = zext i32 %i.o to i64
  %.val279 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %.val279, i64 %i.ah
  %.0.copyload.i291 = load i32, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i291) #8, !srcloc !14
  %i.aj = zext i32 %i.ad to i64                   ; 3 uses
  %.val289 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val289, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 %i.af, ptr %i.al, align 1
  %i.am = add i32 %.0.copyload.i291, %i.ae
  %.val288 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %.val288, i64 %i.aj
  store i32 %i.am, ptr %i.an, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ao = zext i32 %i.ad to i64                   ; 2 uses
  %i.ap = add nuw nsw i64 %i.ao, 4                ; 4 uses
  %.val278 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %.val278, i64 %i.ap
  %.0.copyload.i292 = load i32, ptr %i.aq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i292) #8, !srcloc !14
  %i.ar = and i32 %.0.copyload.i292, 1
  %i.as = or i32 %i.af, %i.ar
  %i.at = or i32 %i.as, 2
  %.val287 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %.val287, i64 %i.ap
  store i32 %i.at, ptr %i.au, align 1
  %i.av = add i32 %i.af, %i.ad
  %i.aw = zext i32 %i.av to i64
  %i.ax = add nuw nsw i64 %i.aw, 4                ; 2 uses
  %.val277 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %.val277, i64 %i.ax
  %.0.copyload.i293 = load i32, ptr %i.ay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i293) #8, !srcloc !14
  %i.az = or i32 %.0.copyload.i293, 1
  %.val286 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %.val286, i64 %i.ax
  store i32 %i.az, ptr %i.ba, align 1
  %.val276 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %.val276, i64 %i.t
  %.0.copyload.i294 = load i32, ptr %i.bb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i294) #8, !srcloc !14
  %i.bc = and i32 %.0.copyload.i294, 1
  %i.bd = or i32 %i.ae, %i.bc
  %i.be = or i32 %i.bd, 2
  %.val285 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.val285, i64 %i.t
  store i32 %i.be, ptr %i.bf, align 1
  %.val275 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.bg = getelementptr inbounds nuw i8, ptr %.val275, i64 %i.ap
  %.0.copyload.i295 = load i32, ptr %i.bg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i295) #8, !srcloc !14
  %i.bh = or i32 %.0.copyload.i295, 1
  %.val284 = load ptr, ptr %i.s, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %.val284, i64 %i.ap
  store i32 %i.bh, ptr %i.bi, align 1
  tail call void @w2c_hermes_dispose_chunk(ptr noundef nonnull %0, i32 noundef %i.o, i32 noundef %i.ae) #8
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g, %bb.f
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.ao, %bb.g ], [ %i.aj, %bb.f ]
  %.1 = phi i32 [ %i.o, %._crit_edge ], [ %i.ad, %bb.g ], [ %i.ad, %bb.f ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.bk = add nuw nsw i64 %.pre-phi, 4            ; 2 uses
  %.val274 = load ptr, ptr %i.bj, align 8, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %.val274, i64 %i.bk
  %.0.copyload.i296 = load i32, ptr %i.bl, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i296) #8, !srcloc !14
  %i.bm = and i32 %.0.copyload.i296, 3
  %.not272 = icmp eq i32 %i.bm, 0
  br i1 %.not272, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = and i32 %.0.copyload.i296, -8           ; 3 uses
  %i.bo = add i32 %i.k, 16
  %.not273 = icmp ugt i32 %i.bn, %i.bo
  br i1 %.not273, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bp = and i32 %.0.copyload.i296, 1
  %i.bq = or disjoint i32 %i.k, %i.bp
  %i.br = or disjoint i32 %i.bq, 2
  %.val283 = load ptr, ptr %i.bj, align 8, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %.val283, i64 %i.bk
  store i32 %i.br, ptr %i.bs, align 1
  %i.bt = add i32 %.1, %i.k                       ; 2 uses
  %i.bu = sub i32 %i.bn, %i.k                     ; 2 uses
  %i.bv = or disjoint i32 %i.bu, 3
  %i.bw = zext i32 %i.bt to i64
  %.val282 = load ptr, ptr %i.bj, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %.val282, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i32 %i.bv, ptr %i.by, align 1
  %i.bz = add i32 %i.bn, %.1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = add nuw nsw i64 %i.ca, 4                ; 2 uses
  %.val = load ptr, ptr %i.bj, align 8, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cb
  %.0.copyload.i297 = load i32, ptr %i.cc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i297) #8, !srcloc !14
  %i.cd = or i32 %.0.copyload.i297, 1
  %.val281 = load ptr, ptr %i.bj, align 8, !tbaa !7
  %i.ce = getelementptr inbounds nuw i8, ptr %.val281, i64 %i.cb
  store i32 %i.cd, ptr %i.ce, align 1
  tail call void @w2c_hermes_dispose_chunk(ptr noundef nonnull %0, i32 noundef %i.bt, i32 noundef %i.bu) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.j
  %i.cf = add i32 %.1, 8
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.k, %bb.b
  %.0264 = phi i32 [ 0, %bb.b ], [ %i.cf, %bb.k ], [ 0, %bb.c ]
  ret i32 %.0264
}

declare void @w2c_hermes_dispose_chunk(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtypedFindHelper0x28void0x2A0x2C0x20bool0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 7 uses
  %i.c = add i32 %i.b, -192                       ; 5 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSTypedArrayBase0x3A0x3AvalidateTypedArray0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20bool0x29(ptr noundef %0, i32 noundef %4, i32 noundef %5, i32 noundef 1) #8
  %.not = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 57 uses
  %.val507 = load ptr, ptr %i.e, align 8, !tbaa !7 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %.val507, i64 %i.f
  store i32 0, ptr %i.g, align 1
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %i.h = zext i32 %5 to i64                       ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val507, i64 %i.h
  %.0.copyload.i = load i32, ptr %i.i, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.j = zext i32 %.0.copyload.i to i64
  %.val483 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %.val483, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.0.copyload.i522 = load i32, ptr %i.l, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i522) #8, !srcloc !14
  %.not447 = icmp eq i32 %6, 0
  br i1 %.not447, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add i32 %5, -8                           ; 2 uses
  %i.n = zext i32 %i.m to i64
  %.val521 = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %.val521, i64 %i.n
end_hunk_26
