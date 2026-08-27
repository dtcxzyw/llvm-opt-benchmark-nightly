Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_3?download=true
inline.NumInlined: 12272
inline.NumDeleted: 21
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ADictPropertyMap0x3A0x3AlookupEntryFor0x28hermes0x3A0x3Avm0x3A0x3ADictPropertyMap0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x29:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %.val116, i64 %i.ad
  store i8 0, ptr %i.ae, align 1
  %.not108 = icmp eq i32 %.0104, 0
  %i.af = select i1 %.not108, i32 %i.n, i32 %.0104
  %.val114 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.val114, i64 %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 %i.af, ptr %i.ah, align 1
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %.not = icmp eq i32 %.0104, 0
  %i.ai = select i1 %.not, i32 %i.n, i32 %.0104
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.c, %bb.h
  %.1 = phi i32 [ %.0104, %bb.c ], [ %.0104, %bb.d ], [ %i.ai, %bb.h ]
  %i.aj = add i32 %.0, %.0105
  %i.ak = and i32 %i.aj, %i.j
  %i.al = add i32 %.0, 1
  br label %bb.b

bb.j:                                             ; preds = %bb.g, %bb.e
  ret void
}

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AcreateStringViewMustBeFlat0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3AcreateNotUniquedLazySymbol0x28llvh0x3A0x3AArrayRef0x3Cchar0x3E0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.b = zext i32 %1 to i64                       ; 7 uses
  %i.c = add nuw nsw i64 %i.b, 48                 ; 2 uses
  %.val141 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val141, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !13
  %i.e = icmp eq i32 %.0.copyload.i, 1073741823
  %.val140 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %.val140, i64 %i.b ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.0.copyload.i149 = load i32, ptr %i.g, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i149) #8, !srcloc !13
  %.val139 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val139, i64 %i.b
  %.0.copyload.i150 = load i32, ptr %i.h, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i150) #8, !srcloc !13
  %i.i = sub i32 %.0.copyload.i149, %.0.copyload.i150
  %i.j = sdiv i32 %i.i, 12                        ; 3 uses
  %i.k = icmp ugt i32 %i.j, 1073741821
  br i1 %i.k, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3AConservativeVector0x3Chermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3ALookupEntry0x3E0x3A0x3Aemplace_back0x280x29(ptr noundef nonnull %0, i32 noundef %1)
  %i.l = add nuw nsw i64 %i.b, 20                 ; 2 uses
  %.val138 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val138, i64 %i.l
  %.0.copyload.i151 = load i32, ptr %i.m, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i151) #8, !srcloc !13
  %i.n = add i32 %.0.copyload.i151, 1             ; 3 uses
  %.val137 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %.val137, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.0.copyload.i152 = load i32, ptr %i.p, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i152) #8, !srcloc !13
  %i.q = shl i32 %.0.copyload.i152, 5
  %i.r = icmp ugt i32 %i.n, %i.q
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = add i32 %1, 12
  tail call void @w2c_hermes_llvh0x3A0x3ABitVector0x3A0x3Aresize0x28unsigned0x20int0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef %i.s, i32 noundef %i.n, i32 noundef 0) #8
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %.val146 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val146, i64 %i.l
  store i32 %i.n, ptr %i.t, align 1
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %.0.copyload.i153 = load i32, ptr %i.f, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i153) #8, !srcloc !13
  %i.u = mul i32 %.0.copyload.i, 12
  %i.v = add i32 %.0.copyload.i153, %i.u
  %i.w = zext i32 %i.v to i64
  %.val135 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %.val135, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.0.copyload.i154 = load i32, ptr %i.y, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i154) #8, !srcloc !13
  %i.z = lshr i32 %.0.copyload.i154, 2
  %.val145 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %.val145, i64 %i.c
  store i32 %i.z, ptr %i.aa, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0129 = phi i32 [ %.0.copyload.i151, %bb.d ], [ %.0.copyload.i151, %bb.e ], [ %.0.copyload.i, %bb.f ] ; 2 uses
  %.0 = phi i32 [ %i.j, %bb.d ], [ %i.j, %bb.e ], [ %.0.copyload.i, %bb.f ]
  %.val134 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %.val134, i64 %i.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %.0.copyload.i155 = load i32, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i155) #8, !srcloc !13
  %i.ad = lshr i32 %.0129, 3
  %i.ae = and i32 %i.ad, 536870908
  %i.af = add i32 %.0.copyload.i155, %i.ae
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %.val133 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.val133, i64 %i.ag
  %.0.copyload.i156 = load i32, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i156) #8, !srcloc !13
  %i.ai = and i32 %.0129, 31
  %i.aj = shl nuw i32 1, %i.ai
  %i.ak = or i32 %.0.copyload.i156, %i.aj
  %.val144 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val144, i64 %i.ag
  store i32 %i.ak, ptr %i.al, align 1
  %i.am = zext i32 %2 to i64
  %.val147 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %.val147, i64 %i.am
  %.0.copyload.i157 = load i64, ptr %i.an, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i157) #8, !srcloc !22
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %.0.copyload.i158 = load i32, ptr %i.ao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i158) #8, !srcloc !13
  %i.ap = mul i32 %.0, 12
  %i.aq = add i32 %.0.copyload.i158, %i.ap
  %i.ar = zext i32 %i.aq to i64                   ; 3 uses
  %.val143 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %.val143, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 0, ptr %i.at, align 1
  %.val148 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.au = trunc i64 %.0.copyload.i157 to i32
  %i.av = getelementptr inbounds nuw i8, ptr %.val148, i64 %i.ar
  store i32 %i.au, ptr %i.av, align 1
  %i.aw = lshr i64 %.0.copyload.i157, 30
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, -4
  %i.az = or disjoint i32 %i.ay, 2
  %.val142 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %.val142, i64 %i.ar
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 %i.az, ptr %i.bb, align 1
  ret void

bb.h:                                             ; preds = %bb.b
  tail call void @w2c_hermes_hermes0x3A0x3Ahermes_fatal0x28char0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef 43553) #8
  tail call void @wasm_rt_trap(i32 noundef 5) #9
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3AConservativeVector0x3Chermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3ALookupEntry0x3E0x3A0x3Aemplace_back0x280x29(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 19 uses
  %i.b = zext i32 %1 to i64                       ; 6 uses
  %i.c = add nuw nsw i64 %i.b, 4                  ; 5 uses
  %.val269 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val269, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !13
  %.val268 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %.val268, i64 %i.b
  %.0.copyload.i282 = load i32, ptr %i.e, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i282) #8, !srcloc !13
  %i.f = sub i32 %.0.copyload.i, %.0.copyload.i282
  %.fr = freeze i32 %i.f                          ; 4 uses
  %i.g = sdiv i32 %.fr, 12                        ; 5 uses
  %i.h = srem i32 %.fr, 12
  %i.i = add nuw nsw i64 %i.b, 8                  ; 4 uses
  %.val267 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %.val267, i64 %i.i
  %.0.copyload.i283 = load i32, ptr %i.j, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i283) #8, !srcloc !13
  %i.k = sub i32 %.0.copyload.i283, %.0.copyload.i282
  %i.l = sdiv i32 %i.k, 12
  %.not = icmp eq i32 %i.g, %i.l
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.m = lshr i32 %i.g, 2
  %i.n = add nsw i32 %i.m, %i.g                   ; 3 uses
  %.not260 = icmp ult i32 %i.g, %i.n
  br i1 %.not260, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i32 %i.n, 357913941
  br i1 %i.o, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = mul nuw i32 %i.n, 12                     ; 2 uses
  %i.q = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.p) #8 ; 2 uses
  %i.r = mul nuw nsw i32 %i.g, 12
  %i.s = add i32 %i.q, %i.r                       ; 3 uses
  %i.t = sub i32 %i.h, %.fr
  %i.u = add i32 %i.t, %i.s
  %i.v = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.u, i32 noundef %.0.copyload.i282, i32 noundef %.fr) #8
  %i.w = add i32 %i.q, %i.p                       ; 2 uses
  %.val280 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %.val280, i64 %i.i
  store i32 %i.w, ptr %i.x, align 1
  %.val279 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %.val279, i64 %i.c
  store i32 %i.s, ptr %i.y, align 1
  %.val278 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val278, i64 %i.b
  store i32 %i.v, ptr %i.z, align 1
  %.not261 = icmp eq i32 %.0.copyload.i282, 0
  br i1 %.not261, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i282) #8
  %.val266 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %.val266, i64 %i.i
  %.0.copyload.i284 = load i32, ptr %i.aa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i284) #8, !srcloc !13
  %.val265 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %.val265, i64 %i.c
  %.0.copyload.i285 = load i32, ptr %i.ab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i285) #8, !srcloc !13
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.a, %bb.e
  %.0254 = phi i32 [ %.0.copyload.i, %bb.a ], [ %.0.copyload.i, %bb.b ], [ %i.s, %bb.d ], [ %.0.copyload.i285, %bb.e ] ; 4 uses
  %.0 = phi i32 [ %.0.copyload.i283, %bb.a ], [ %.0.copyload.i283, %bb.b ], [ %i.w, %bb.d ], [ %.0.copyload.i284, %bb.e ] ; 2 uses
  %i.ac = icmp ult i32 %.0254, %.0
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = zext i32 %.0254 to i64                  ; 3 uses
  %.val277 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %.val277, i64 %i.ad
  store i32 0, ptr %i.ae, align 1
  %.val276 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %.val276, i64 %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 0, ptr %i.ag, align 1
  %i.ah = add nuw nsw i64 %i.ad, 4                ; 2 uses
  %.val264 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %.val264, i64 %i.ah
  %.0.copyload.i286 = load i32, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i286) #8, !srcloc !13
  %i.aj = or i32 %.0.copyload.i286, -4
  %.val275 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val275, i64 %i.ah
  store i32 %i.aj, ptr %i.ak, align 1
  %i.al = add i32 %.0254, 12
  %.val274 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %.val274, i64 %i.c
  store i32 %i.al, ptr %i.am, align 1
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %.0.copyload.i287 = load i32, ptr %i.an, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i287) #8, !srcloc !13
  %i.ao = sub i32 %.0254, %.0.copyload.i287
  %.fr262 = freeze i32 %i.ao                      ; 4 uses
  %i.ap = sdiv i32 %.fr262, 12                    ; 2 uses
  %i.aq = srem i32 %.fr262, 12
  %i.ar = add nsw i32 %i.ap, 1                    ; 2 uses
  %i.as = icmp ugt i32 %i.ar, 357913941
  br i1 %i.as, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = sub i32 %.0, %.0.copyload.i287
  %i.au = sdiv i32 %i.at, 12                      ; 2 uses
  %i.av = shl nsw i32 %i.au, 1
  %i.aw = tail call i32 @llvm.umax.i32(i32 %i.ar, i32 %i.av)
  %i.ax = icmp ugt i32 %i.au, 178956969
  %i.ay = select i1 %i.ax, i32 357913941, i32 %i.aw ; 2 uses
  %i.az = icmp ugt i32 %i.ay, 357913941
  br i1 %i.az, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = mul nuw i32 %i.ay, 12                   ; 2 uses
  %i.bb = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ba) #8 ; 2 uses
  %i.bc = mul nsw i32 %i.ap, 12
  %i.bd = add i32 %i.bb, %i.bc                    ; 3 uses
  %i.be = zext i32 %i.bd to i64                   ; 2 uses
  %.val273 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.val273, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i32 0, ptr %i.bg, align 1
  %.val281 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %.val281, i64 %i.be
  store i64 -4294967296, ptr %i.bh, align 1
  %i.bi = sub i32 %i.aq, %.fr262
  %i.bj = add i32 %i.bi, %i.bd
  %i.bk = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.bj, i32 noundef %.0.copyload.i287, i32 noundef %.fr262) #8
  %i.bl = add i32 %i.bb, %i.ba
  %.val272 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %.val272, i64 %i.i
  store i32 %i.bl, ptr %i.bm, align 1
  %i.bn = add i32 %i.bd, 12
  %.val271 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %.val271, i64 %i.c
  store i32 %i.bn, ptr %i.bo, align 1
  %.val270 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %.val270, i64 %i.b
  store i32 %i.bk, ptr %i.bp, align 1
  %.not263 = icmp eq i32 %.0.copyload.i287, 0
  br i1 %.not263, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i287) #8
  br label %bb.n

bb.l:                                             ; preds = %bb.h, %bb.c
  tail call void @w2c_hermes_abort(ptr noundef nonnull %0) #8
  tail call void @wasm_rt_trap(i32 noundef 5) #9
  unreachable

bb.m:                                             ; preds = %bb.i
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Fthrow_out_of_range0x5Babi0x3Av150070x5D0x28char0x20const0x2A0x29(ptr noundef nonnull %0) #8
  tail call void @wasm_rt_trap(i32 noundef 5) #9
  unreachable

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.g
  ret void
}

declare void @w2c_hermes_llvh0x3A0x3ABitVector0x3A0x3Aresize0x28unsigned0x20int0x2C0x20bool0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AwriteBarrierSlow0x28hermes0x3A0x3Avm0x3A0x3AGCHermesValueBase0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x20const0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 18 uses
  %i.b = zext i32 %1 to i64                       ; 6 uses
  %.val196 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %.val196, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4005
  %.0.copyload.i = load i8, ptr %i.d, align 1     ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i) #8, !srcloc !21
  %.not = icmp eq i8 %.0.copyload.i, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i32 %2 to i64
  %.val195 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %.val195, i64 %i.e
  %.0.copyload.i197 = load i64, ptr %i.f, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i197) #8, !srcloc !22
  %i.g = icmp ugt i64 %.0.copyload.i197, -844424930131969
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.val189 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val189, i64 %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 548
  %.0.copyload.i198 = load i32, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i198) #8, !srcloc !13
  %i.j = trunc i64 %.0.copyload.i197 to i32       ; 2 uses
  %i.k = and i32 %i.j, -4194304
  %i.l = icmp eq i32 %.0.copyload.i198, %i.k
  br i1 %i.l, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val188 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val188, i64 %i.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4008
  %.0.copyload.i199 = load i32, ptr %i.n, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i199) #8, !srcloc !13
  %i.o = add i32 %.0.copyload.i199, 544           ; 2 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %.val187 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %.val187, i64 %i.p
  %.0.copyload.i200 = load i32, ptr %i.q, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i200) #8, !srcloc !13
  %i.r = add i32 %.0.copyload.i200, 1             ; 2 uses
  %.val193 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.val193, i64 %i.p
  store i32 %i.r, ptr %i.s, align 1
  %i.t = add i32 %.0.copyload.i199, 32            ; 2 uses
  %i.u = shl i32 %.0.copyload.i200, 2
  %i.v = add i32 %i.u, %i.t
  %i.w = zext i32 %i.v to i64
  %.val192 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %.val192, i64 %i.w
  store i32 %i.j, ptr %i.x, align 1
  %.not177 = icmp eq i32 %i.r, 128
  br i1 %.not177, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.y = add i32 %.0.copyload.i199, 548
  %i.z = zext i32 %.0.copyload.i199 to i64        ; 3 uses
  %.val186 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %.val186, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 548
  %.0.copyload.i201 = load i32, ptr %i.ab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i201) #8, !srcloc !13
  %.val185 = load ptr, ptr %i.a, align 8, !tbaa !7
end_hunk_0
