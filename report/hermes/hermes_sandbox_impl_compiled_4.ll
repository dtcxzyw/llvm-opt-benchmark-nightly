inline.NumInlined: 16097
inline.NumDeleted: 33
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringBuilder0x3A0x3AcreateStringBuilder0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3ASafeUInt320x2C0x20bool0x29:bb.a
  %i.ai = add i32 %.0.copyload.i318, %i.x
  %i.aj = zext i32 %2 to i64
  %.val311 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val311, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1372
  store i32 %i.ai, ptr %i.al, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0272 = phi i32 [ %i.ah, %bb.f ], [ %.0.copyload.i318, %bb.g ]
  %i.am = zext i32 %.0272 to i64                  ; 3 uses
  %.val310 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %.val310, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 %.0.copyload.i316, ptr %i.ao, align 1
  %i.ap = or disjoint i32 %i.x, 67108864
  %.val309 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %.val309, i64 %i.am
  store i32 %i.ap, ptr %i.aq, align 1
  %i.ar = or disjoint i64 %i.am, -844424930131968 ; 2 uses
  %i.as = zext i32 %i.c to i64                    ; 2 uses
  %.val285 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val285, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %i.ar, ptr %i.au, align 1
  %.val308 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val308, i64 %i.as
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 1, ptr %i.aw, align 1
  br label %bb.r

bb.i:                                             ; preds = %bb.d
  %i.ax = shl nuw nsw i32 %.0.copyload.i316, 1
  %i.ay = add nuw nsw i32 %i.ax, 14
  %i.az = and i32 %i.ay, 262136                   ; 4 uses
  %i.ba = add i32 %2, 1376
  %i.bb = zext i32 %i.ba to i64
  %.val295 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %.val295, i64 %i.bb
  %.0.copyload.i319 = load i32, ptr %i.bc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i319) #7, !srcloc !13
  %i.bd = add i32 %2, 1372
  %i.be = zext i32 %i.bd to i64
  %.val294 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.val294, i64 %i.be
  %.0.copyload.i320 = load i32, ptr %i.bf, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i320) #7, !srcloc !13
  %i.bg = sub i32 %.0.copyload.i319, %.0.copyload.i320
  %i.bh = icmp ugt i32 %i.az, %i.bg
  br i1 %i.bh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bi = add i32 %2, 816
  %i.bj = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AallocSlow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.bi, i32 noundef %i.az) #7
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bk = add i32 %.0.copyload.i320, %i.az
  %i.bl = zext i32 %2 to i64
  %.val307 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %.val307, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1372
  store i32 %i.bk, ptr %i.bn, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1 = phi i32 [ %i.bj, %bb.j ], [ %.0.copyload.i320, %bb.k ]
  %i.bo = zext i32 %.1 to i64                     ; 3 uses
  %.val306 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %.val306, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 %.0.copyload.i316, ptr %i.bq, align 1
  %i.br = or disjoint i32 %i.az, 50331648
  %.val305 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %.val305, i64 %i.bo
  store i32 %i.br, ptr %i.bs, align 1
  %i.bt = or disjoint i64 %i.bo, -844424930131968 ; 2 uses
  %i.bu = zext i32 %i.c to i64                    ; 2 uses
  %.val284 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bv = getelementptr inbounds nuw i8, ptr %.val284, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 %i.bt, ptr %i.bw, align 1
  %.val304 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %.val304, i64 %i.bu
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i32 1, ptr %i.by, align 1
  br label %bb.r

bb.m:                                             ; preds = %bb.c
  %i.bz = add i32 %i.b, -40                       ; 2 uses
  br i1 %.not283, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AExternalStringPrimitive0x3Cchar0x3E0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.bz, i32 noundef %2, i32 noundef %.0.copyload.i316) #7
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AExternalStringPrimitive0x3Cchar16_t0x3E0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.bz, i32 noundef %2, i32 noundef %.0.copyload.i316) #7
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ca = zext i32 %i.c to i64                    ; 2 uses
  %.val293 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cb = getelementptr inbounds nuw i8, ptr %.val293, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.0.copyload.i321 = load i32, ptr %i.cc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i321) #7, !srcloc !13
  %.not282 = icmp eq i32 %.0.copyload.i321, 0
  br i1 %.not282, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val315 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cd = getelementptr inbounds nuw i8, ptr %.val315, i64 %i.ca
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %.0.copyload.i322 = load i32, ptr %i.ce, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i322) #7, !srcloc !24
  %i.cf = zext i32 %.0.copyload.i322 to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l, %bb.h
  %.0 = phi i64 [ %i.ar, %bb.h ], [ %i.bt, %bb.l ], [ %i.cf, %bb.q ]
  %i.cg = and i64 %.0, 4294967295
  %i.ch = or disjoint i64 %i.cg, -844424930131968 ; 2 uses
  %i.ci = zext i32 %2 to i64
  %.val292 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cj = getelementptr inbounds nuw i8, ptr %.val292, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %.0.copyload.i323 = load i32, ptr %i.ck, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i323) #7, !srcloc !13
  %i.cl = zext i32 %.0.copyload.i323 to i64       ; 2 uses
  %i.cm = add nuw nsw i64 %i.cl, 164              ; 2 uses
  %.val291 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cn = getelementptr inbounds nuw i8, ptr %.val291, i64 %i.cm
  %.0.copyload.i324 = load i32, ptr %i.cn, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i324) #7, !srcloc !13
  %.val290 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.co = getelementptr inbounds nuw i8, ptr %.val290, i64 %i.cl
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 168
  %.0.copyload.i325 = load i32, ptr %i.cp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i325) #7, !srcloc !13
  %i.cq = icmp ult i32 %.0.copyload.i324, %.0.copyload.i325
  br i1 %i.cq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cr = add i32 %.0.copyload.i324, 8
  %.val303 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cs = getelementptr inbounds nuw i8, ptr %.val303, i64 %i.cm
  store i32 %i.cr, ptr %i.cs, align 1
  %i.ct = zext i32 %.0.copyload.i324 to i64
  %.val = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cu = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ct
  store i64 %i.ch, ptr %i.cu, align 1
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cv = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i323, i64 noundef %i.ch) #7
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0273 = phi i32 [ %.0.copyload.i324, %bb.s ], [ %i.cv, %bb.t ]
  %i.cw = zext i32 %1 to i64                      ; 4 uses
  %.val302 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cx = getelementptr inbounds nuw i8, ptr %.val302, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i32 %2, ptr %i.cy, align 1
  %.val301 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cz = getelementptr inbounds nuw i8, ptr %.val301, i64 %i.cw
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  store i32 0, ptr %i.da, align 1
  %.val300 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.db = getelementptr inbounds nuw i8, ptr %.val300, i64 %i.cw
  store i32 %.0273, ptr %i.db, align 1
  br label %bb.w

bb.v:                                             ; preds = %bb.p
  %i.dc = zext i32 %1 to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.b
  %.sink332 = phi i64 [ %i.dc, %bb.v ], [ %i.cw, %bb.u ], [ %i.t, %bb.b ]
  %.sink = phi i8 [ 0, %bb.v ], [ 1, %bb.u ], [ 0, %bb.b ]
  %.val287 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dd = getelementptr inbounds nuw i8, ptr %.val287, i64 %.sink332
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store i8 %.sink, ptr %i.de, align 1
  store i32 %i.b, ptr %i.a, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3A0x3AcreateDynamic0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20llvh0x3A0x3AArrayRef0x3Cchar16_t0x3E0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 35 uses
  %i.b = zext i32 %3 to i64
  %.val391 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %.val391, i64 %i.b
  %.0.copyload.i = load i64, ptr %i.c, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #7, !srcloc !21
  %i.d = trunc i64 %.0.copyload.i to i32          ; 5 uses
  %i.e = lshr i64 %.0.copyload.i, 32              ; 2 uses
  %i.f = trunc nuw i64 %i.e to i32                ; 7 uses
  %i.g = shl i32 %i.f, 1                          ; 3 uses
  %i.h = add i32 %i.g, %i.d                       ; 2 uses
  %i.i = icmp slt i32 %i.f, 1
  br i1 %i.i, label %.loopexit414, label %.preheader413

.preheader413:                                    ; preds = %bb.a, %bb.b
  %.0341 = phi i32 [ %i.m, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.j = zext i32 %.0341 to i64
  %.val393 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %.val393, i64 %i.j
  %.0.copyload.i394 = load i16, ptr %i.k, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i394) #7, !srcloc !25
  %i.l = icmp ult i16 %.0.copyload.i394, 128
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader413
  %i.m = add i32 %.0341, 2                        ; 2 uses
  %i.n = icmp ugt i32 %i.h, %i.m
  br i1 %i.n, label %.preheader413, label %.loopexit414

bb.c:                                             ; preds = %.preheader413
  %i.o = add i32 %i.g, 8
  %4 = tail call i32 @llvm.umax.i32(i32 %i.o, i32 8)
  %i.p = add i32 %4, 7                            ; 2 uses
  %i.q = and i32 %i.p, -8                         ; 3 uses
  %i.r = add i32 %2, 1376
  %i.s = zext i32 %i.r to i64
  %.val373 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val373, i64 %i.s
  %.0.copyload.i395 = load i32, ptr %i.t, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i395) #7, !srcloc !13
  %i.u = add i32 %2, 1372
  %i.v = zext i32 %i.u to i64
  %.val372 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %.val372, i64 %i.v
  %.0.copyload.i396 = load i32, ptr %i.w, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i396) #7, !srcloc !13
  %i.x = sub i32 %.0.copyload.i395, %.0.copyload.i396
  %.not = icmp ugt i32 %i.q, %i.x
  br i1 %.not, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.y = add i32 %2, 816
  %i.z = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AallocSlow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.y, i32 noundef %i.q) #7
  br label %bb.m

.loopexit414:                                     ; preds = %bb.b, %bb.a
  %i.aa = add i32 %i.f, 8
  %5 = tail call i32 @llvm.umax.i32(i32 %i.aa, i32 8)
  %i.ab = add i32 %5, 7                           ; 2 uses
  %i.ac = and i32 %i.ab, -8                       ; 3 uses
  %i.ad = add i32 %2, 1376
  %i.ae = zext i32 %i.ad to i64
  %.val371 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %.val371, i64 %i.ae
  %.0.copyload.i397 = load i32, ptr %i.af, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i397) #7, !srcloc !13
  %i.ag = add i32 %2, 1372
  %i.ah = zext i32 %i.ag to i64
  %.val370 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %.val370, i64 %i.ah
  %.0.copyload.i398 = load i32, ptr %i.ai, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i398) #7, !srcloc !13
  %i.aj = sub i32 %.0.copyload.i397, %.0.copyload.i398
  %i.ak = icmp ugt i32 %i.ac, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit414
  %i.al = add i32 %2, 816
  %i.am = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AallocSlow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.al, i32 noundef %i.ac) #7
  br label %bb.g

bb.f:                                             ; preds = %.loopexit414
  %i.an = add i32 %.0.copyload.i398, %i.ac
  %i.ao = zext i32 %2 to i64
  %.val381 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.val381, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1372
  store i32 %i.an, ptr %i.aq, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i32 [ %i.am, %bb.e ], [ %.0.copyload.i398, %bb.f ] ; 3 uses
  %i.ar = zext i32 %.1 to i64                     ; 8 uses
  %.val380 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %.val380, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 %i.f, ptr %i.at, align 1
  %i.au = and i32 %i.ab, 16777208
  %i.av = or disjoint i32 %i.au, 67108864
  %.val379 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %.val379, i64 %i.ar
  store i32 %i.av, ptr %i.aw, align 1
  %.val369 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %.val369, i64 %i.ar
  %.0.copyload.i399 = load i32, ptr %i.ax, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i399) #7, !srcloc !13
  %i.ay = icmp ugt i32 %.0.copyload.i399, 150994943
  br i1 %i.ay, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.val368 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %.val368, i64 %i.ar
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %.0.copyload.i400 = load i32, ptr %i.ba, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i400) #7, !srcloc !13
  %i.bb = add i32 %.1, 12
  %.val392 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %.val392, i64 %i.ar
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 23
  %.0.copyload.i401 = load i8, ptr %i.bd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i401) #7, !srcloc !22
  %i.be = icmp slt i8 %.0.copyload.i401, 0
  %i.bf = select i1 %i.be, i32 %.0.copyload.i400, i32 %i.bb
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bg = icmp samesign ugt i32 %.0.copyload.i399, 134217727
  %spec.select.v = select i1 %i.bg, i32 12, i32 8
  %spec.select = add i32 %spec.select.v, %.1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i32 [ %i.bf, %bb.h ], [ %spec.select, %bb.i ] ; 2 uses
  %.not354 = icmp eq i64 %i.e, 0
  br i1 %.not354, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = and i32 %i.f, 7                         ; 2 uses
  %.not355 = icmp eq i32 %i.bh, 0
  br i1 %.not355, label %.loopexit412, label %.preheader411

.preheader411:                                    ; preds = %bb.k, %.preheader411
  %.0345 = phi i32 [ %i.bo, %.preheader411 ], [ 0, %bb.k ]
  %.0342 = phi i32 [ %i.bn, %.preheader411 ], [ %i.d, %bb.k ] ; 2 uses
  %.2 = phi i32 [ %i.bm, %.preheader411 ], [ %.0, %bb.k ] ; 2 uses
  %i.bi = zext i32 %.0342 to i64
  %.val390 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %.val390, i64 %i.bi
  %.0.copyload.i402 = load i8, ptr %i.bj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i402) #7, !srcloc !14
  %i.bk = zext i32 %.2 to i64
  %.val367 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %.val367, i64 %i.bk
  store i8 %.0.copyload.i402, ptr %i.bl, align 1
  %i.bm = add i32 %.2, 1                          ; 2 uses
  %i.bn = add i32 %.0342, 2                       ; 2 uses
  %i.bo = add nuw nsw i32 %.0345, 1               ; 2 uses
  %.not356 = icmp eq i32 %i.bo, %i.bh
  br i1 %.not356, label %.loopexit412, label %.preheader411

.loopexit412:                                     ; preds = %.preheader411, %bb.k
  %.1343 = phi i32 [ %i.d, %bb.k ], [ %i.bn, %.preheader411 ]
  %.3 = phi i32 [ %.0, %bb.k ], [ %i.bm, %.preheader411 ]
  %i.bp = add i32 %i.f, 2147483647
  %i.bq = and i32 %i.bp, 2147483647
  %i.br = icmp samesign ult i32 %i.bq, 7
  br i1 %i.br, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit412, %.preheader
  %.2344 = phi i32 [ %i.cz, %.preheader ], [ %.1343, %.loopexit412 ] ; 2 uses
  %.4 = phi i32 [ %i.cy, %.preheader ], [ %.3, %.loopexit412 ] ; 2 uses
  %i.bs = zext i32 %.2344 to i64                  ; 8 uses
  %.val389 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bt = getelementptr inbounds nuw i8, ptr %.val389, i64 %i.bs
  %.0.copyload.i403 = load i8, ptr %i.bt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i403) #7, !srcloc !14
  %i.bu = zext i32 %.4 to i64                     ; 8 uses
  %.val366 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bv = getelementptr inbounds nuw i8, ptr %.val366, i64 %i.bu
  store i8 %.0.copyload.i403, ptr %i.bv, align 1
  %.val388 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %.val388, i64 %i.bs
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %.0.copyload.i404 = load i8, ptr %i.bx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i404) #7, !srcloc !14
  %.val365 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %.val365, i64 %i.bu
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store i8 %.0.copyload.i404, ptr %i.bz, align 1
  %.val387 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %.val387, i64 %i.bs
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %.0.copyload.i405 = load i8, ptr %i.cb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i405) #7, !srcloc !14
  %.val364 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %.val364, i64 %i.bu
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  store i8 %.0.copyload.i405, ptr %i.cd, align 1
  %.val386 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ce = getelementptr inbounds nuw i8, ptr %.val386, i64 %i.bs
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 6
  %.0.copyload.i406 = load i8, ptr %i.cf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i406) #7, !srcloc !14
  %.val363 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %.val363, i64 %i.bu
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 3
  store i8 %.0.copyload.i406, ptr %i.ch, align 1
  %.val385 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %.val385, i64 %i.bs
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.0.copyload.i407 = load i8, ptr %i.cj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i407) #7, !srcloc !14
  %.val362 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %.val362, i64 %i.bu
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store i8 %.0.copyload.i407, ptr %i.cl, align 1
  %.val384 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cm = getelementptr inbounds nuw i8, ptr %.val384, i64 %i.bs
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 10
  %.0.copyload.i408 = load i8, ptr %i.cn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i408) #7, !srcloc !14
  %.val361 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.co = getelementptr inbounds nuw i8, ptr %.val361, i64 %i.bu
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 5
  store i8 %.0.copyload.i408, ptr %i.cp, align 1
  %.val383 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cq = getelementptr inbounds nuw i8, ptr %.val383, i64 %i.bs
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %.0.copyload.i409 = load i8, ptr %i.cr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i409) #7, !srcloc !14
  %.val360 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cs = getelementptr inbounds nuw i8, ptr %.val360, i64 %i.bu
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 6
  store i8 %.0.copyload.i409, ptr %i.ct, align 1
  %.val382 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cu = getelementptr inbounds nuw i8, ptr %.val382, i64 %i.bs
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 14
  %.0.copyload.i410 = load i8, ptr %i.cv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i410) #7, !srcloc !14
  %.val359 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cw = getelementptr inbounds nuw i8, ptr %.val359, i64 %i.bu
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 7
  store i8 %.0.copyload.i410, ptr %i.cx, align 1
  %i.cy = add i32 %.4, 8
  %i.cz = add i32 %.2344, 16                      ; 2 uses
  %.not357 = icmp eq i32 %i.cz, %i.h
  br i1 %.not357, label %.loopexit, label %.preheader

bb.l:                                             ; preds = %bb.c
  %i.da = add i32 %.0.copyload.i396, %i.q
  %i.db = zext i32 %2 to i64
  %.val377 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dc = getelementptr inbounds nuw i8, ptr %.val377, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1372
  store i32 %i.da, ptr %i.dd, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.d
  %.5 = phi i32 [ %.0.copyload.i396, %bb.l ], [ %i.z, %bb.d ] ; 2 uses
  %i.de = zext i32 %.5 to i64                     ; 3 uses
  %.val376 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.df = getelementptr inbounds nuw i8, ptr %.val376, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store i32 %i.f, ptr %i.dg, align 1
  %i.dh = add i32 %.5, 8
  %i.di = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.dh, i32 noundef %i.d, i32 noundef %i.g) #7 ; 0 uses
  %i.dj = and i32 %i.p, 16777208
  %i.dk = or disjoint i32 %i.dj, 50331648
  %.val375 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dl = getelementptr inbounds nuw i8, ptr %.val375, i64 %i.de
  store i32 %i.dk, ptr %i.dl, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.j, %.loopexit412, %bb.m
  %.sink.in = phi i64 [ %i.de, %bb.m ], [ %i.ar, %bb.j ], [ %i.ar, %.loopexit412 ], [ %i.ar, %.preheader ]
  %.sink = or disjoint i64 %.sink.in, -844424930131968
  %i.dm = zext i32 %1 to i64                      ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dn = getelementptr inbounds nuw i8, ptr %.val, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i64 %.sink, ptr %i.do, align 1
  %.val374 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dp = getelementptr inbounds nuw i8, ptr %.val374, i64 %i.dm
  store i32 1, ptr %i.dp, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AcreateIterResultObject0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20bool0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 7 uses
  %i.c = add i32 %i.b, -32                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x29(ptr noundef %0, i32 noundef %1) #7
  %i.e = zext i32 %i.d to i64
  %i.f = or disjoint i64 %i.e, -281474976710656   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 13 uses
  %i.h = zext i32 %1 to i64
  %.val126 = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %.val126, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.0.copyload.i = load i32, ptr %i.j, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !13
  %i.k = zext i32 %.0.copyload.i to i64           ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 164                ; 2 uses
  %.val125 = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val125, i64 %i.l
  %.0.copyload.i136 = load i32, ptr %i.m, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i136) #7, !srcloc !13
  %.val124 = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %.val124, i64 %i.k
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  %.0.copyload.i137 = load i32, ptr %i.o, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i137) #7, !srcloc !13
  %i.p = icmp ult i32 %.0.copyload.i136, %.0.copyload.i137
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = add i32 %.0.copyload.i136, 8
  %.val135 = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %.val135, i64 %i.l
  store i32 %i.q, ptr %i.r, align 1
  %i.s = zext i32 %.0.copyload.i136 to i64
  %.val = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %i.s
  store i64 %i.f, ptr %i.t, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i, i64 noundef %i.f) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %.0.copyload.i136, %bb.b ], [ %i.u, %bb.c ] ; 3 uses
  %i.v = zext i32 %i.c to i64                     ; 6 uses
  %.val134 = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %.val134, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 319, ptr %i.x, align 1
  %.val133 = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %.val133, i64 %i.v
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 0, ptr %i.z, align 1
  %i.aa = add nuw nsw i64 %i.v, 28                ; 2 uses
  %.val132 = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %.val132, i64 %i.aa
  store i32 319, ptr %i.ab, align 1
  %i.ac = add nuw nsw i64 %i.v, 24                ; 2 uses
  %.val131 = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.val131, i64 %i.ac
  store i32 0, ptr %i.ad, align 1
  %i.ae = add i32 %i.b, -12
  %i.af = add i32 %i.b, -20
  %i.ag = add i32 %i.b, -24
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AdefineOwnPropertyInternal0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3ADefinePropertyFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.ae, i32 noundef %.0, i32 noundef %1, i32 noundef 61, i32 noundef %i.af, i32 noundef %2, i32 noundef %i.ag) #7
  %.val130 = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.val130, i64 %i.v
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 319, ptr %i.ai, align 1
  %.val129 = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %.val129, i64 %i.v
  store i32 0, ptr %i.aj, align 1
  %.val128 = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val128, i64 %i.aa
  store i32 319, ptr %i.ak, align 1
  %.val127 = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val127, i64 %i.ac
  store i32 0, ptr %i.al, align 1
  %i.am = add i32 %i.b, -16
  %i.an = add i32 %i.b, -28
  %.not = icmp eq i32 %3, 0
  %i.ao = select i1 %.not, i32 70424, i32 70416
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AdefineOwnPropertyInternal0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3ADefinePropertyFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.am, i32 noundef %.0, i32 noundef %1, i32 noundef 260, i32 noundef %i.an, i32 noundef %i.ao, i32 noundef %i.c) #7
  store i32 %i.b, ptr %i.a, align 8, !tbaa !15
  ret i32 %.0
}

declare i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x29(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AdefineOwnPropertyInternal0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3ADefinePropertyFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseTypeErrorForValue0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 19 uses
  %i.c = add i32 %i.b, -208                       ; 53 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 542 uses
  %i.e = zext i32 %3 to i64
  %.val3784 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %.val3784, i64 %i.e
  %.0.copyload.i = load i64, ptr %i.f, align 1    ; 12 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #7, !srcloc !21
  %i.g = ashr i64 %.0.copyload.i, 48
  %i.h = trunc nsw i64 %i.g to i32
  switch i32 %i.h, label %bb.bz [
    i32 -6, label %bb.bi
    i32 -5, label %bb.z
    i32 -1, label %bb.b
    i32 -3, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = zext i32 %2 to i64                       ; 6 uses
  %.val3454 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %.val3454, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.0.copyload.i3785 = load i32, ptr %i.k, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3785) #7, !srcloc !13
  switch i32 %.0.copyload.i3785, label %bb.c [
    i32 0, label %bb.f
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %.val3453 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %.val3453, i64 %i.i
  %.0.copyload.i3786 = load i32, ptr %i.l, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3786) #7, !srcloc !13
  %.val3452 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val3452, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.0.copyload.i3787 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3787) #7, !srcloc !13
  %.val3451 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %.val3451, i64 %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.0.copyload.i3788 = load i32, ptr %i.p, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3788) #7, !srcloc !13
  %.val3450 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %.val3450, i64 %i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %.0.copyload.i3789 = load i32, ptr %i.r, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3789) #7, !srcloc !13
  %.val3449 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.val3449, i64 %i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.0.copyload.i3790 = load i32, ptr %i.t, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3790) #7, !srcloc !13
  %i.u = zext i32 %i.c to i64                     ; 7 uses
  %.val3713 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %.val3713, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  store i32 6, ptr %i.w, align 1
  %.val3712 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %.val3712, i64 %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 152
  store i32 3, ptr %i.y, align 1
  %.val3711 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val3711, i64 %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  store i32 33071, ptr %i.aa, align 1
  %.val3710 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %.val3710, i64 %i.u
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 132
  store i32 %.0.copyload.i3790, ptr %i.ac, align 1
  %i.ad = add i32 %.0.copyload.i3789, %.0.copyload.i3788 ; 2 uses
  %.val3709 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %.val3709, i64 %i.u
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 156
  store i32 %i.ad, ptr %i.af, align 1
  %i.ag = icmp eq i32 %.0.copyload.i3787, 1       ; 2 uses
  %i.ah = select i1 %i.ag, i32 %.0.copyload.i3785, i32 2 ; 2 uses
  %.val3708 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %.val3708, i64 %i.u
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3A0x7ERuntime0x280x29:bb.a
  %.13 = phi i32 [ %i.wq, %bb.er ], [ %.0.copyload.i1893, %bb.et ]
  %i.xa = zext i32 %.51424 to i64
  %.val1605 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.xb = getelementptr inbounds nuw i8, ptr %.val1605, i64 %i.xa
  %.0.copyload.i1896 = load i32, ptr %i.xb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1896) #7, !srcloc !13
  %i.xc = load i32, ptr %i.ab, align 4, !tbaa !26
  %i.xd = icmp ult i32 %.0.copyload.i1896, %i.xc
  br i1 %i.xd, label %bb.ev, label %.critedge1596, !prof !27

bb.ev:                                            ; preds = %bb.eu
  %i.xe = load ptr, ptr %i.aa, align 8, !tbaa !28
  %i.xf = zext i32 %.0.copyload.i1896 to i64
  %i.xg = getelementptr inbounds nuw [24 x i8], ptr %i.xe, i64 %i.xf ; 3 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 8
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !29 ; 2 uses
  %.not1573 = icmp eq ptr %i.xi, null
  br i1 %.not1573, label %.critedge1596, label %bb.ew, !prof !23

bb.ew:                                            ; preds = %bb.ev
  %i.xj = load ptr, ptr %i.xg, align 8, !tbaa !32 ; 4 uses
  %i.xk = icmp eq ptr %i.wo, %i.xj
  br i1 %i.xk, label %func_types_eq.exit1900.thread, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.xl = icmp ne ptr %i.xj, null
  %or.cond.i1897 = and i1 %i.wp, %i.xl
  br i1 %or.cond.i1897, label %func_types_eq.exit1900, label %.critedge1596, !prof !33

func_types_eq.exit1900:                           ; preds = %bb.ex
  %i.xm = load i128, ptr %i.wo, align 1
  %i.xn = load i128, ptr %i.xj, align 1
  %i.xo = xor i128 %i.xm, %i.xn
  %i.xp = getelementptr i8, ptr %i.wo, i64 16
  %i.xq = getelementptr i8, ptr %i.xj, i64 16
  %i.xr = load i128, ptr %i.xp, align 1
  %i.xs = load i128, ptr %i.xq, align 1
  %i.xt = xor i128 %i.xr, %i.xs
  %i.xu = or i128 %i.xo, %i.xt
  %i.xv = icmp ne i128 %i.xu, 0
  %i.xw = zext i1 %i.xv to i32
  %.not.i1899 = icmp eq i32 %i.xw, 0
  br i1 %.not.i1899, label %func_types_eq.exit1900.thread, label %.critedge1596, !prof !34

.critedge1596:                                    ; preds = %bb.ex, %bb.ev, %bb.eu, %func_types_eq.exit1900
  tail call void @wasm_rt_trap(i32 noundef 6) #8
  unreachable

func_types_eq.exit1900.thread:                    ; preds = %bb.ew, %func_types_eq.exit1900
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xg, i64 16
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !35
  tail call void %i.xi(ptr noundef %i.xy, i32 noundef %.13) #7
  br label %bb.ey

bb.ey:                                            ; preds = %bb.es, %func_types_eq.exit1900.thread
  %.not1574 = icmp eq i32 %i.wq, %.0.copyload.i1891
  br i1 %.not1574, label %bb.ez, label %bb.eq

bb.ez:                                            ; preds = %bb.ey
  %.val1604 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.xz = getelementptr inbounds nuw i8, ptr %.val1604, i64 %i.wj
  %.0.copyload.i1901 = load i32, ptr %i.xz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1901) #7, !srcloc !13
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ep
  %.14 = phi i32 [ %.0.copyload.i1901, %bb.ez ], [ %.0.copyload.i1891, %bb.ep ]
  %.val1721 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ya = getelementptr inbounds nuw i8, ptr %.val1721, i64 %i.b
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 5260
  store i32 %.0.copyload.i1891, ptr %i.yb, align 1
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.14) #7
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.eo
  %i.yc = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3A0x7EHadesGC0x280x29(ptr noundef nonnull %0, i32 noundef %i.f) #7 ; 0 uses
  %.val1603 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.yd = getelementptr inbounds nuw i8, ptr %.val1603, i64 %i.b
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 812
  %.0.copyload.i1902 = load i32, ptr %i.ye, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1902) #7, !srcloc !13
  %.not1575 = icmp eq i32 %.0.copyload.i1902, 0
  br i1 %.not1575, label %bb.fh, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.yf = zext i32 %.0.copyload.i1902 to i64      ; 2 uses
  %i.yg = add nuw nsw i64 %i.yf, 4                ; 2 uses
  %.val1602 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.yh = getelementptr inbounds nuw i8, ptr %.val1602, i64 %i.yg
  %.0.copyload.i1903 = load i32, ptr %i.yh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1903) #7, !srcloc !13
  %i.yi = add i32 %.0.copyload.i1903, -1
  %.val1720 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.yj = getelementptr inbounds nuw i8, ptr %.val1720, i64 %i.yg
  store i32 %i.yi, ptr %i.yj, align 1
  %.not1576 = icmp eq i32 %.0.copyload.i1903, 0
  br i1 %.not1576, label %bb.fd, label %bb.fh

bb.fd:                                            ; preds = %bb.fc
  %.val1601 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.yk = getelementptr inbounds nuw i8, ptr %.val1601, i64 %i.yf
  %.0.copyload.i1904 = load i32, ptr %i.yk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1904) #7, !srcloc !13
  %i.yl = zext i32 %.0.copyload.i1904 to i64
  %.val1600 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ym = getelementptr inbounds nuw i8, ptr %.val1600, i64 %i.yl
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 8
  %.0.copyload.i1905 = load i32, ptr %i.yn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1905) #7, !srcloc !13
  %i.yo = load i32, ptr %i.ab, align 4, !tbaa !26
  %i.yp = icmp ult i32 %.0.copyload.i1905, %i.yo
  br i1 %i.yp, label %bb.fe, label %.critedge1598, !prof !27

bb.fe:                                            ; preds = %bb.fd
  %i.yq = load ptr, ptr %i.aa, align 8, !tbaa !28
  %i.yr = zext i32 %.0.copyload.i1905 to i64
  %i.ys = getelementptr inbounds nuw [24 x i8], ptr %i.yq, i64 %i.yr ; 3 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !29 ; 2 uses
  %.not1577 = icmp eq ptr %i.yu, null
  br i1 %.not1577, label %.critedge1598, label %bb.ff, !prof !23

bb.ff:                                            ; preds = %bb.fe
  %i.yv = load ptr, ptr @w2c_hermes_t3, align 8, !tbaa !31 ; 4 uses
  %i.yw = load ptr, ptr %i.ys, align 8, !tbaa !32 ; 4 uses
  %i.yx = icmp eq ptr %i.yv, %i.yw
  br i1 %i.yx, label %func_types_eq.exit1909.thread, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.yy = icmp ne ptr %i.yv, null
  %i.yz = icmp ne ptr %i.yw, null
  %or.cond.i1906 = and i1 %i.yy, %i.yz
  br i1 %or.cond.i1906, label %func_types_eq.exit1909, label %.critedge1598, !prof !33

func_types_eq.exit1909:                           ; preds = %bb.fg
  %i.za = load i128, ptr %i.yv, align 1
  %i.zb = load i128, ptr %i.yw, align 1
  %i.zc = xor i128 %i.za, %i.zb
  %i.zd = getelementptr i8, ptr %i.yv, i64 16
  %i.ze = getelementptr i8, ptr %i.yw, i64 16
  %i.zf = load i128, ptr %i.zd, align 1
  %i.zg = load i128, ptr %i.ze, align 1
  %i.zh = xor i128 %i.zf, %i.zg
  %i.zi = or i128 %i.zc, %i.zh
  %i.zj = icmp ne i128 %i.zi, 0
  %i.zk = zext i1 %i.zj to i32
  %.not.i1908 = icmp eq i32 %i.zk, 0
  br i1 %.not.i1908, label %func_types_eq.exit1909.thread, label %.critedge1598, !prof !34

.critedge1598:                                    ; preds = %bb.fg, %bb.fe, %bb.fd, %func_types_eq.exit1909
  tail call void @wasm_rt_trap(i32 noundef 6) #8
  unreachable

func_types_eq.exit1909.thread:                    ; preds = %bb.ff, %func_types_eq.exit1909
  %i.zl = getelementptr inbounds nuw i8, ptr %i.ys, i64 16
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !35
  tail call void %i.yu(ptr noundef %i.zm, i32 noundef %.0.copyload.i1902) #7
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Fshared_weak_count0x3A0x3A_0x5Frelease_weak0x280x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1902) #7
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fc, %bb.fb, %func_types_eq.exit1909.thread
  %.val1599 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.zn = getelementptr inbounds nuw i8, ptr %.val1599, i64 %i.b
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 744
  %.0.copyload.i1910 = load i32, ptr %i.zo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1910) #7, !srcloc !13
  %i.zp = add i32 %1, 756
  %.not1578 = icmp eq i32 %.0.copyload.i1910, %i.zp
  br i1 %.not1578, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1910) #7
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  ret i32 %1
}

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AfinalizeAll0x280x29(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntimeModule0x3A0x3AprepareForDestruction0x280x29(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 14 uses
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %.val142 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %.val142, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !13
  %i.e = add nuw nsw i64 %i.b, 28                 ; 4 uses
  %.val141 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %.val141, i64 %i.e
  %.0.copyload.i146 = load i32, ptr %i.f, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i146) #7, !srcloc !13
  %i.g = sub i32 %.0.copyload.i, %.0.copyload.i146 ; 3 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @llvm.umax.i32(i32 %i.g, i32 4) ; 2 uses
  %i.j = icmp samesign ugt i32 %i.g, 7
  br i1 %i.j, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.k = lshr i32 %i.i, 2
  %i.l = and i32 %i.k, 536870910                  ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %bb.c
  %.0126 = phi i32 [ 0, %bb.c ], [ %i.ae, %bb.j ] ; 2 uses
  %i.m = shl i32 %.0126, 2                        ; 2 uses
  %.val140 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %.val140, i64 %i.e
  %.0.copyload.i147 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i147) #7, !srcloc !13
  %i.o = add i32 %.0.copyload.i147, %i.m
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %.val139 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %.val139, i64 %i.p
  %.0.copyload.i148 = load i32, ptr %i.q, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i148) #7, !srcloc !13
  %.not = icmp eq i32 %.0.copyload.i148, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = zext i32 %.0.copyload.i148 to i64
  %.val138 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.val138, i64 %i.r
  %.0.copyload.i149 = load i32, ptr %i.s, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i149) #7, !srcloc !13
  %i.t = icmp eq i32 %.0.copyload.i149, %1
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val145 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val145, i64 %i.p
  store i32 0, ptr %i.u, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f
  %.val137 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %.val137, i64 %i.e
  %.0.copyload.i150 = load i32, ptr %i.v, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i150) #7, !srcloc !13
  %i.w = or disjoint i32 %i.m, 4
  %i.x = add i32 %i.w, %.0.copyload.i150
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %.val136 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val136, i64 %i.y
  %.0.copyload.i151 = load i32, ptr %i.z, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i151) #7, !srcloc !13
  %.not129 = icmp eq i32 %.0.copyload.i151, 0
  br i1 %.not129, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = zext i32 %.0.copyload.i151 to i64
  %.val135 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %.val135, i64 %i.aa
  %.0.copyload.i152 = load i32, ptr %i.ab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i152) #7, !srcloc !13
  %i.ac = icmp eq i32 %.0.copyload.i152, %1
  br i1 %i.ac, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val144 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.val144, i64 %i.y
  store i32 0, ptr %i.ad, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.i
  %i.ae = add i32 %.0126, 2                       ; 2 uses
  %.not130 = icmp eq i32 %i.ae, %i.l
  br i1 %.not130, label %.loopexit.loopexit, label %bb.d

.loopexit.loopexit:                               ; preds = %bb.j
  %i.af = shl nuw nsw i32 %i.l, 2
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ %i.af, %.loopexit.loopexit ]
  %i.ag = and i32 %i.i, 4
  %.not131 = icmp eq i32 %i.ag, 0
  br i1 %.not131, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %.val134 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.val134, i64 %i.e
  %.0.copyload.i153 = load i32, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i153) #7, !srcloc !13
  %i.ai = add i32 %.0.copyload.i153, %.1
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %.val133 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val133, i64 %i.aj
  %.0.copyload.i154 = load i32, ptr %i.ak, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i154) #7, !srcloc !13
  %.not132 = icmp eq i32 %.0.copyload.i154, 0
  br i1 %.not132, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = zext i32 %.0.copyload.i154 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 %i.al
  %.0.copyload.i155 = load i32, ptr %i.am, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i155) #7, !srcloc !13
  %i.an = icmp eq i32 %.0.copyload.i155, %1
  br i1 %i.an, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val143 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.val143, i64 %i.aj
  store i32 0, ptr %i.ao, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.k, %.loopexit, %bb.a, %bb.m
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntimeModule0x3A0x3A0x7ERuntimeModule0x280x29(ptr noundef %0, i32 noundef returned %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 38 uses
  %i.e = zext i32 %1 to i64                       ; 15 uses
  %i.f = add nuw nsw i64 %i.e, 40                 ; 2 uses
  %.val314 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %.val314, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !13
  %.not = icmp eq i32 %.0.copyload.i, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.b, -8
  %i.i = zext i32 %.0.copyload.i to i64
  %.val313 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %.val313, i64 %i.i
  %.0.copyload.i321 = load i32, ptr %i.j, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i321) #7, !srcloc !13
  %i.k = zext i32 %.0.copyload.i321 to i64
  %.val312 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %.val312, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 76
  %.0.copyload.i322 = load i32, ptr %i.m, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i322) #7, !srcloc !13
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !26
  %i.q = icmp ult i32 %.0.copyload.i322, %i.p
  br i1 %i.q, label %bb.c, label %.critedge, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !28
  %i.s = zext i32 %.0.copyload.i322 to i64
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.s ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29   ; 2 uses
  %.not265 = icmp eq ptr %i.v, null
  br i1 %.not265, label %.critedge, label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr @w2c_hermes_t0, align 8, !tbaa !31 ; 8 uses
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !32   ; 4 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %func_types_eq.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = icmp ne ptr %i.w, null
  %i.aa = icmp ne ptr %i.x, null
  %or.cond.i = and i1 %i.z, %i.aa
  br i1 %or.cond.i, label %func_types_eq.exit, label %.critedge, !prof !33

func_types_eq.exit:                               ; preds = %bb.e
  %i.ab = load i128, ptr %i.w, align 1
  %i.ac = load i128, ptr %i.x, align 1
  %i.ad = xor i128 %i.ab, %i.ac
  %i.ae = getelementptr i8, ptr %i.w, i64 16
  %i.af = getelementptr i8, ptr %i.x, i64 16
  %i.ag = load i128, ptr %i.ae, align 1
  %i.ah = load i128, ptr %i.af, align 1
  %i.ai = xor i128 %i.ag, %i.ah
  %i.aj = or i128 %i.ad, %i.ai
  %i.ak = icmp ne i128 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %func_types_eq.exit.thread, label %.critedge, !prof !34

.critedge:                                        ; preds = %bb.e, %bb.c, %bb.b, %func_types_eq.exit
  tail call void @wasm_rt_trap(i32 noundef 6) #8
  unreachable

func_types_eq.exit.thread:                        ; preds = %bb.d, %func_types_eq.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !35
  tail call void %i.v(ptr noundef %i.an, i32 noundef %i.h, i32 noundef %.0.copyload.i) #7
  %i.ao = zext i32 %i.c to i64
  %.val311 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.val311, i64 %i.ao
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AinterpretFunction0x28hermes0x3A0x3Avm0x3A0x3ACodeBlock0x2A0x29:bb.a
  %.val26686 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.js = getelementptr inbounds nuw i8, ptr %.val26686, i64 %i.jg
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  store i32 %.0.copyload.i27766, ptr %i.jt, align 1
  %i.ju = icmp samesign ugt i32 %.0.copyload.i27766, 32
  %i.jv = shl nuw nsw i32 %i.jm, 2
  %i.jw = select i1 %i.ju, i32 %i.jv, i32 0
  %i.jx = add i32 %i.jp, %i.jw
  %i.jy = zext i32 %i.jx to i64
  %.val26685 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.jz = getelementptr inbounds nuw i8, ptr %.val26685, i64 %i.jy
  store i32 0, ptr %i.jz, align 1
  %i.ka = lshr i32 %.0.copyload.i27766, 5         ; 2 uses
  %i.kb = icmp samesign ugt i32 %.0.copyload.i27766, 31
  br i1 %i.kb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.kc = shl nuw nsw i32 %i.ka, 2
  %i.kd = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.jp, i32 noundef 0, i32 noundef %i.kc) #7 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ke = and i32 %.0.copyload.i27766, 31
  %i.kf = icmp eq i32 %i.ke, 0
  br i1 %i.kf, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.kg = shl nuw nsw i32 %i.ka, 2
  %i.kh = add i32 %i.jp, %i.kg
  %i.ki = zext i32 %i.kh to i64                   ; 2 uses
  %.val25842 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.kj = getelementptr inbounds nuw i8, ptr %.val25842, i64 %i.ki
  %.0.copyload.i27767 = load i32, ptr %i.kj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27767) #7, !srcloc !13
  %i.kk = sub nsw i32 0, %.0.copyload.i27766
  %i.kl = and i32 %i.kk, 31
  %i.km = lshr i32 -1, %i.kl
  %i.kn = xor i32 %i.km, -1
  %i.ko = and i32 %.0.copyload.i27767, %i.kn
  %.val26684 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.kp = getelementptr inbounds nuw i8, ptr %.val26684, i64 %i.ki
  store i32 %i.ko, ptr %i.kp, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.r, %bb.w
  %.val26683 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.kq = getelementptr inbounds nuw i8, ptr %.val26683, i64 %i.iy
  store i32 %.0.copyload.i27751, ptr %i.kq, align 1
  %.val25841 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.kr = getelementptr inbounds nuw i8, ptr %.val25841, i64 %i.jg
  %.0.copyload.i27768 = load i32, ptr %i.kr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27768) #7, !srcloc !13
  %i.ks = add nuw nsw i64 %i.hd, 24               ; 4 uses
  %.val26682 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.kt = getelementptr inbounds nuw i8, ptr %.val26682, i64 %i.ks
  store i32 %.0.copyload.i27768, ptr %i.kt, align 1
  %.val25840 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ku = getelementptr inbounds nuw i8, ptr %.val25840, i64 %i.jg
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 4
  %.0.copyload.i27769 = load i32, ptr %i.kv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27769) #7, !srcloc !13
  %.val26681 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.kw = getelementptr inbounds nuw i8, ptr %.val26681, i64 %i.is
  store i32 %.0.copyload.i27769, ptr %i.kw, align 1
  %.val25839 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.kx = getelementptr inbounds nuw i8, ptr %.val25839, i64 %i.jh
  %.0.copyload.i27770 = load i32, ptr %i.kx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27770) #7, !srcloc !13
  %i.ky = add nuw nsw i64 %i.hd, 32               ; 3 uses
  %.val26680 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.kz = getelementptr inbounds nuw i8, ptr %.val26680, i64 %i.ky
  store i32 %.0.copyload.i27770, ptr %i.kz, align 1
  %.val26679 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.la = getelementptr inbounds nuw i8, ptr %.val26679, i64 %i.jh
  store i32 0, ptr %i.la, align 1
  %.val25020 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.lb = getelementptr inbounds nuw i8, ptr %.val25020, i64 %i.jg
  store i64 0, ptr %i.lb, align 1
  %.val25838 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.lc = getelementptr inbounds nuw i8, ptr %.val25838, i64 %i.fy
  %.0.copyload.i27771 = load i32, ptr %i.lc, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27771) #7, !srcloc !13
  %.not24172 = icmp eq i32 %.0.copyload.i27771, 0
  br i1 %.not24172, label %bb.ac, label %bb.z

bb.y:                                             ; preds = %bb.s
  tail call void @w2c_hermes_abort(ptr noundef nonnull %0) #7
  tail call void @wasm_rt_trap(i32 noundef 5) #8
  unreachable

bb.z:                                             ; preds = %bb.x
  %.val25837 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ld = getelementptr inbounds nuw i8, ptr %.val25837, i64 %i.iy
  %.0.copyload.i27772 = load i32, ptr %i.ld, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27772) #7, !srcloc !13
  %.val25836 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.le = getelementptr inbounds nuw i8, ptr %.val25836, i64 %i.fw
  %.0.copyload.i27773 = load i32, ptr %i.le, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27773) #7, !srcloc !13
  %i.lf = add i32 %.0.copyload.i27771, -1         ; 2 uses
  %i.lg = lshr i32 %.0.copyload.i27772, 4
  %i.lh = lshr i32 %.0.copyload.i27772, 9
  %i.li = xor i32 %i.lg, %i.lh
  %i.lj = and i32 %i.li, %i.lf                    ; 2 uses
  %i.lk = shl nuw i32 %i.lj, 4
  %i.ll = add i32 %i.lk, %.0.copyload.i27773      ; 3 uses
  %i.lm = zext i32 %i.ll to i64
  %.val25835 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ln = getelementptr inbounds nuw i8, ptr %.val25835, i64 %i.lm
  %.0.copyload.i27774 = load i32, ptr %i.ln, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27774) #7, !srcloc !13
  %.not24173 = icmp eq i32 %.0.copyload.i27772, %.0.copyload.i27774
  br i1 %.not24173, label %.loopexit29643, label %.preheader29642

.preheader29642:                                  ; preds = %bb.z, %bb.ab
  %.423916 = phi i32 [ %i.ls, %bb.ab ], [ 0, %bb.z ] ; 3 uses
  %.123900 = phi i32 [ %.0.copyload.i27775, %bb.ab ], [ %.0.copyload.i27774, %bb.z ] ; 2 uses
  %.323830 = phi i32 [ %i.lx, %bb.ab ], [ %i.ll, %bb.z ] ; 2 uses
  %.223804 = phi i32 [ %i.lu, %bb.ab ], [ 1, %bb.z ] ; 2 uses
  %.223677 = phi i32 [ %i.lv, %bb.ab ], [ %i.lj, %bb.z ]
  %i.lo = icmp eq i32 %.123900, -4
  %.not24176 = icmp eq i32 %.423916, 0            ; 2 uses
  br i1 %i.lo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.preheader29642
  %i.lp = select i1 %.not24176, i32 %.323830, i32 %.423916
  br label %bb.ac

bb.ab:                                            ; preds = %.preheader29642
  %i.lq = icmp eq i32 %.123900, -8
  %i.lr = select i1 %i.lq, i1 %.not24176, i1 false
  %i.ls = select i1 %i.lr, i32 %.323830, i32 %.423916
  %i.lt = add i32 %.223677, %.223804
  %i.lu = add i32 %.223804, 1
  %i.lv = and i32 %i.lt, %i.lf                    ; 2 uses
  %i.lw = shl i32 %i.lv, 4
  %i.lx = add i32 %i.lw, %.0.copyload.i27773      ; 3 uses
  %i.ly = zext i32 %i.lx to i64
  %.val25834 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.lz = getelementptr inbounds nuw i8, ptr %.val25834, i64 %i.ly
  %.0.copyload.i27775 = load i32, ptr %i.lz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27775) #7, !srcloc !13
  %.not24175 = icmp eq i32 %.0.copyload.i27772, %.0.copyload.i27775
  br i1 %.not24175, label %.loopexit29643, label %.preheader29642

.loopexit29643:                                   ; preds = %bb.ab, %bb.z
  %.423831 = phi i32 [ %i.ll, %bb.z ], [ %i.lx, %bb.ab ]
  %i.ma = shl i32 %.0.copyload.i27771, 4
  %i.mb = add i32 %.0.copyload.i27773, %i.ma
  br label %bb.aw

bb.ac:                                            ; preds = %bb.x, %bb.aa
  %.523917 = phi i32 [ 0, %bb.x ], [ %i.lp, %bb.aa ]
  %i.mc = add nuw nsw i64 %i.fn, 32               ; 7 uses
  %.val25833 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.md = getelementptr inbounds nuw i8, ptr %.val25833, i64 %i.mc
  %.0.copyload.i27776 = load i32, ptr %i.md, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27776) #7, !srcloc !13
  %i.me = shl i32 %.0.copyload.i27776, 2
  %i.mf = add i32 %i.me, 4
  %.val25832 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.mg = getelementptr inbounds nuw i8, ptr %.val25832, i64 %i.fy
  %.0.copyload.i27777 = load i32, ptr %i.mg, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27777) #7, !srcloc !13
  %i.mh = mul i32 %.0.copyload.i27777, 3
  %.not24177 = icmp ult i32 %i.mf, %i.mh
  br i1 %.not24177, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.mi = shl i32 %.0.copyload.i27777, 1
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.mj = xor i32 %.0.copyload.i27776, -1
  %i.mk = add i32 %.0.copyload.i27777, %i.mj
  %.val25831 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ml = getelementptr inbounds nuw i8, ptr %.val25831, i64 %i.fn
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 36
  %.0.copyload.i27778 = load i32, ptr %i.mm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27778) #7, !srcloc !13
  %i.mn = sub i32 %i.mk, %.0.copyload.i27778
  %i.mo = lshr i32 %.0.copyload.i27777, 3
  %i.mp = icmp ugt i32 %i.mn, %i.mo
  br i1 %i.mp, label %bb.at, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.323678 = phi i32 [ %i.mi, %bb.ad ], [ %.0.copyload.i27777, %bb.ae ]
  %i.mq = add i32 %.323678, -1
  %i.mr = zext i32 %i.mq to i64                   ; 2 uses
  %i.ms = lshr i64 %i.mr, 1
  %i.mt = or i64 %i.ms, %i.mr                     ; 2 uses
  %i.mu = lshr i64 %i.mt, 2
  %i.mv = or i64 %i.mu, %i.mt                     ; 2 uses
  %i.mw = lshr i64 %i.mv, 4
  %i.mx = or i64 %i.mw, %i.mv                     ; 2 uses
  %i.my = lshr i64 %i.mx, 8
  %i.mz = or i64 %i.my, %i.mx                     ; 2 uses
  %i.na = lshr i64 %i.mz, 16
  %i.nb = or i64 %i.na, %i.mz
  %i.nc = trunc nuw i64 %i.nb to i32
  %i.nd = add i32 %i.nc, 1
  %4 = tail call i32 @llvm.umax.i32(i32 %i.nd, i32 64) ; 2 uses
  %.val26678 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ne = getelementptr inbounds nuw i8, ptr %.val26678, i64 %i.fy
  store i32 %4, ptr %i.ne, align 1
  %.val25830 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.nf = getelementptr inbounds nuw i8, ptr %.val25830, i64 %i.fw
  %.0.copyload.i27779 = load i32, ptr %i.nf, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27779) #7, !srcloc !13
  %i.ng = shl i32 %4, 4
  %i.nh = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.ng) #7 ; 13 uses
  %.val26677 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ni = getelementptr inbounds nuw i8, ptr %.val26677, i64 %i.fw
  store i32 %i.nh, ptr %i.ni, align 1
  %.not24178 = icmp eq i32 %.0.copyload.i27779, 0
  br i1 %.not24178, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %.val25019 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.nj = getelementptr inbounds nuw i8, ptr %.val25019, i64 %i.mc
  store i64 0, ptr %i.nj, align 1
  %.val25829 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.nk = getelementptr inbounds nuw i8, ptr %.val25829, i64 %i.fy
  %.0.copyload.i27780 = load i32, ptr %i.nk, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27780) #7, !srcloc !13
  %i.nl = add i32 %.0.copyload.i27780, 268435455
  %i.nm = and i32 %i.nl, 268435455
  %i.nn = and i32 %.0.copyload.i27780, 7          ; 7 uses
  %.not24188 = icmp eq i32 %i.nn, 0
  br i1 %.not24188, label %.loopexit29636, label %.preheader29635

.preheader29635:                                  ; preds = %bb.ag
  %i.no = zext i32 %i.nh to i64
  %.val26676 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.np = getelementptr inbounds nuw i8, ptr %.val26676, i64 %i.no
  store i32 -4, ptr %i.np, align 1
  %i.nq = add i32 %i.nh, 16                       ; 2 uses
  %.not24189 = icmp eq i32 %i.nn, 1
  br i1 %.not24189, label %.loopexit29636, label %.preheader29635.1

.preheader29635.1:                                ; preds = %.preheader29635
  %i.nr = zext i32 %i.nq to i64
  %.val26676.1 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ns = getelementptr inbounds nuw i8, ptr %.val26676.1, i64 %i.nr
  store i32 -4, ptr %i.ns, align 1
  %i.nt = add i32 %i.nh, 32                       ; 2 uses
  %.not24189.1 = icmp eq i32 %i.nn, 2
  br i1 %.not24189.1, label %.loopexit29636, label %.preheader29635.2

.preheader29635.2:                                ; preds = %.preheader29635.1
  %i.nu = zext i32 %i.nt to i64
  %.val26676.2 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.nv = getelementptr inbounds nuw i8, ptr %.val26676.2, i64 %i.nu
  store i32 -4, ptr %i.nv, align 1
  %i.nw = add i32 %i.nh, 48                       ; 2 uses
  %.not24189.2 = icmp eq i32 %i.nn, 3
  br i1 %.not24189.2, label %.loopexit29636, label %.preheader29635.3

.preheader29635.3:                                ; preds = %.preheader29635.2
  %i.nx = zext i32 %i.nw to i64
  %.val26676.3 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ny = getelementptr inbounds nuw i8, ptr %.val26676.3, i64 %i.nx
  store i32 -4, ptr %i.ny, align 1
  %i.nz = add i32 %i.nh, 64                       ; 2 uses
  %.not24189.3 = icmp eq i32 %i.nn, 4
  br i1 %.not24189.3, label %.loopexit29636, label %.preheader29635.4

.preheader29635.4:                                ; preds = %.preheader29635.3
  %i.oa = zext i32 %i.nz to i64
  %.val26676.4 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ob = getelementptr inbounds nuw i8, ptr %.val26676.4, i64 %i.oa
  store i32 -4, ptr %i.ob, align 1
  %i.oc = add i32 %i.nh, 80                       ; 2 uses
  %.not24189.4 = icmp eq i32 %i.nn, 5
  br i1 %.not24189.4, label %.loopexit29636, label %.preheader29635.5

.preheader29635.5:                                ; preds = %.preheader29635.4
  %i.od = zext i32 %i.oc to i64
  %.val26676.5 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.oe = getelementptr inbounds nuw i8, ptr %.val26676.5, i64 %i.od
  store i32 -4, ptr %i.oe, align 1
  %i.of = add i32 %i.nh, 96                       ; 2 uses
  %.not24189.5 = icmp eq i32 %i.nn, 6
  br i1 %.not24189.5, label %.loopexit29636, label %.preheader29635.6

.preheader29635.6:                                ; preds = %.preheader29635.5
  %i.og = zext i32 %i.of to i64
  %.val26676.6 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.oh = getelementptr inbounds nuw i8, ptr %.val26676.6, i64 %i.og
  store i32 -4, ptr %i.oh, align 1
  %i.oi = add i32 %i.nh, 112
  br label %.loopexit29636

.loopexit29636:                                   ; preds = %.preheader29635, %.preheader29635.1, %.preheader29635.2, %.preheader29635.3, %.preheader29635.4, %.preheader29635.5, %.preheader29635.6, %bb.ag
  %.723919 = phi i32 [ %i.nh, %bb.ag ], [ %i.nq, %.preheader29635 ], [ %i.nt, %.preheader29635.1 ], [ %i.nw, %.preheader29635.2 ], [ %i.nz, %.preheader29635.3 ], [ %i.oc, %.preheader29635.4 ], [ %i.of, %.preheader29635.5 ], [ %i.oi, %.preheader29635.6 ]
  %i.oj = icmp samesign ult i32 %i.nm, 7
  br i1 %i.oj, label %.loopexit29634, label %bb.ah

bb.ah:                                            ; preds = %.loopexit29636
  %i.ok = shl i32 %.0.copyload.i27780, 4
  %i.ol = add i32 %i.ok, %i.nh
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %bb.ah
  %.823920 = phi i32 [ %.723919, %bb.ah ], [ %i.pc, %bb.ai ] ; 2 uses
  %i.om = zext i32 %.823920 to i64                ; 8 uses
  %.val26675 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.on = getelementptr inbounds nuw i8, ptr %.val26675, i64 %i.om
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 112
  store i32 -4, ptr %i.oo, align 1
  %.val26674 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.op = getelementptr inbounds nuw i8, ptr %.val26674, i64 %i.om
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 96
  store i32 -4, ptr %i.oq, align 1
  %.val26673 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.or = getelementptr inbounds nuw i8, ptr %.val26673, i64 %i.om
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 80
  store i32 -4, ptr %i.os, align 1
  %.val26672 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ot = getelementptr inbounds nuw i8, ptr %.val26672, i64 %i.om
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 64
  store i32 -4, ptr %i.ou, align 1
  %.val26671 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ov = getelementptr inbounds nuw i8, ptr %.val26671, i64 %i.om
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 48
  store i32 -4, ptr %i.ow, align 1
  %.val26670 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ox = getelementptr inbounds nuw i8, ptr %.val26670, i64 %i.om
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 32
  store i32 -4, ptr %i.oy, align 1
  %.val26669 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.oz = getelementptr inbounds nuw i8, ptr %.val26669, i64 %i.om
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  store i32 -4, ptr %i.pa, align 1
  %.val26668 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pb = getelementptr inbounds nuw i8, ptr %.val26668, i64 %i.om
  store i32 -4, ptr %i.pb, align 1
  %i.pc = add i32 %.823920, 128                   ; 2 uses
  %.not24190 = icmp eq i32 %i.pc, %i.ol
  br i1 %.not24190, label %.loopexit29634, label %bb.ai

bb.aj:                                            ; preds = %bb.af
  %i.pd = shl i32 %.0.copyload.i27777, 4          ; 2 uses
  %i.pe = add i32 %.0.copyload.i27779, %i.pd
  %.val25018 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pf = getelementptr inbounds nuw i8, ptr %.val25018, i64 %i.mc
  store i64 0, ptr %i.pf, align 1
  %.val25828 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pg = getelementptr inbounds nuw i8, ptr %.val25828, i64 %i.fy
  %.0.copyload.i27781 = load i32, ptr %i.pg, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27781) #7, !srcloc !13
  %.not24179 = icmp eq i32 %.0.copyload.i27781, 0
  br i1 %.not24179, label %.loopexit29639, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.val25827 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ph = getelementptr inbounds nuw i8, ptr %.val25827, i64 %i.fw
  %.0.copyload.i27782 = load i32, ptr %i.ph, align 1 ; 11 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i27782) #7, !srcloc !13
  %i.pi = and i32 %.0.copyload.i27781, 7          ; 7 uses
  %.not24180 = icmp eq i32 %i.pi, 0
  br i1 %.not24180, label %.loopexit29641, label %.preheader29640

.preheader29640:                                  ; preds = %bb.ak
  %i.pj = zext i32 %.0.copyload.i27782 to i64
  %.val26667 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pk = getelementptr inbounds nuw i8, ptr %.val26667, i64 %i.pj
  store i32 -4, ptr %i.pk, align 1
  %i.pl = add i32 %.0.copyload.i27782, 16         ; 2 uses
  %.not24181 = icmp eq i32 %i.pi, 1
  br i1 %.not24181, label %.loopexit29641, label %.preheader29640.1

.preheader29640.1:                                ; preds = %.preheader29640
  %i.pm = zext i32 %i.pl to i64
  %.val26667.1 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pn = getelementptr inbounds nuw i8, ptr %.val26667.1, i64 %i.pm
  store i32 -4, ptr %i.pn, align 1
  %i.po = add i32 %.0.copyload.i27782, 32         ; 2 uses
  %.not24181.1 = icmp eq i32 %i.pi, 2
  br i1 %.not24181.1, label %.loopexit29641, label %.preheader29640.2

.preheader29640.2:                                ; preds = %.preheader29640.1
  %i.pp = zext i32 %i.po to i64
  %.val26667.2 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pq = getelementptr inbounds nuw i8, ptr %.val26667.2, i64 %i.pp
  store i32 -4, ptr %i.pq, align 1
  %i.pr = add i32 %.0.copyload.i27782, 48         ; 2 uses
  %.not24181.2 = icmp eq i32 %i.pi, 3
  br i1 %.not24181.2, label %.loopexit29641, label %.preheader29640.3

.preheader29640.3:                                ; preds = %.preheader29640.2
  %i.ps = zext i32 %i.pr to i64
  %.val26667.3 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pt = getelementptr inbounds nuw i8, ptr %.val26667.3, i64 %i.ps
  store i32 -4, ptr %i.pt, align 1
  %i.pu = add i32 %.0.copyload.i27782, 64         ; 2 uses
  %.not24181.3 = icmp eq i32 %i.pi, 4
  br i1 %.not24181.3, label %.loopexit29641, label %.preheader29640.4

.preheader29640.4:                                ; preds = %.preheader29640.3
  %i.pv = zext i32 %i.pu to i64
  %.val26667.4 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pw = getelementptr inbounds nuw i8, ptr %.val26667.4, i64 %i.pv
  store i32 -4, ptr %i.pw, align 1
  %i.px = add i32 %.0.copyload.i27782, 80         ; 2 uses
  %.not24181.4 = icmp eq i32 %i.pi, 5
  br i1 %.not24181.4, label %.loopexit29641, label %.preheader29640.5

.preheader29640.5:                                ; preds = %.preheader29640.4
  %i.py = zext i32 %i.px to i64
end_hunk_2
begin_hunk_3_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AcurTime0x280x29:bb.a
  %i.e = tail call i32 @w2c_hermes_0x5F_clock_gettime(ptr noundef %0, i32 noundef 0, i32 noundef %i.d) #7
  %.not = icmp eq i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 27 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val190 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %.val190, i64 272032
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !13
  tail call void @w2c_hermes_abort_message(ptr noundef nonnull %0, i32 noundef %.0.copyload.i, i32 noundef 54929) #7
  tail call void @wasm_rt_trap(i32 noundef 5) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = zext i32 %i.c to i64                     ; 7 uses
  %.val203 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %.val203, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.0.copyload.i205 = load i64, ptr %i.j, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i205) #7, !srcloc !21
  %i.k = add nuw nsw i64 %i.h, 24                 ; 2 uses
  %.val188 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %.val188, i64 %i.k
  store i64 %.0.copyload.i205, ptr %i.l, align 1
  %.val189 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %.val189, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.0.copyload.i206 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i206) #7, !srcloc !13
  %i.o = sdiv i32 %.0.copyload.i206, 1000
  %i.p = add nuw nsw i64 %i.h, 12                 ; 2 uses
  %.val191 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %.val191, i64 %i.p
  store i32 %i.o, ptr %i.q, align 1
  %.val204 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %.val204, i64 %i.p
  %.0.copyload.i207 = load i32, ptr %i.r, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i207) #7, !srcloc !41
  %i.s = sext i32 %.0.copyload.i207 to i64
  %i.t = add nuw nsw i64 %i.h, 16                 ; 2 uses
  %.val187 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %.val187, i64 %i.t
  store i64 %i.s, ptr %i.u, align 1
  %i.v = load i32, ptr %i.a, align 8, !tbaa !15   ; 4 uses
  %i.w = add i32 %i.v, -32                        ; 2 uses
  %i.x = add i32 %i.v, -48                        ; 2 uses
  %i.y = add i32 %i.v, -80                        ; 2 uses
  store i32 %i.y, ptr %i.a, align 8, !tbaa !15
  %.val202 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val202, i64 %i.k
  %.0.copyload.i208 = load i64, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i208) #7, !srcloc !21
  %i.aa = mul i64 %.0.copyload.i208, 1000000
  %i.ab = zext i32 %i.y to i64                    ; 3 uses
  %.val186 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.val186, i64 %i.ab
  store i64 %i.aa, ptr %i.ac, align 1
  %.val201 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.val201, i64 %i.ab
  %.0.copyload.i209 = load i64, ptr %i.ad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i209) #7, !srcloc !21
  %i.ae = add nuw nsw i64 %i.ab, 8                ; 2 uses
  %.val185 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %.val185, i64 %i.ae
  store i64 %.0.copyload.i209, ptr %i.af, align 1
  %.val200 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.val200, i64 %i.ae
  %.0.copyload.i210 = load i64, ptr %i.ag, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i210) #7, !srcloc !21
  store i32 %i.x, ptr %i.a, align 8, !tbaa !15
  %i.ah = zext i32 %i.x to i64
  %i.ai = add nuw nsw i64 %i.ah, 8                ; 2 uses
  %.val184 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %.val184, i64 %i.ai
  store i64 %.0.copyload.i210, ptr %i.aj, align 1
  %.val199 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val199, i64 %i.ai
  %.0.copyload.i211 = load i64, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i211) #7, !srcloc !21
  %i.al = zext i32 %i.w to i64                    ; 5 uses
  %i.am = add nuw nsw i64 %i.al, 8                ; 2 uses
  %.val183 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %.val183, i64 %i.am
  store i64 %.0.copyload.i211, ptr %i.an, align 1
  store i32 %i.w, ptr %i.a, align 8, !tbaa !15
  %.val198 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.val198, i64 %i.am
  %.0.copyload.i212 = load i64, ptr %i.ao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i212) #7, !srcloc !21
  %.val197 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.val197, i64 %i.t
  %.0.copyload.i213 = load i64, ptr %i.ap, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i213) #7, !srcloc !21
  %.val182 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %.val182, i64 %i.al
  store i64 %.0.copyload.i213, ptr %i.aq, align 1
  %.val196 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %.val196, i64 %i.al
  %.0.copyload.i214 = load i64, ptr %i.ar, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i214) #7, !srcloc !21
  %i.as = add i64 %.0.copyload.i214, %.0.copyload.i212
  %i.at = add nuw nsw i64 %i.al, 16               ; 2 uses
  %.val181 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %.val181, i64 %i.at
  store i64 %i.as, ptr %i.au, align 1
  %.val195 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val195, i64 %i.at
  %.0.copyload.i215 = load i64, ptr %i.av, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i215) #7, !srcloc !21
  %i.aw = add nuw nsw i64 %i.al, 24               ; 2 uses
  %.val180 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %.val180, i64 %i.aw
  store i64 %.0.copyload.i215, ptr %i.ax, align 1
  %.val194 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %.val194, i64 %i.aw
  %.0.copyload.i216 = load i64, ptr %i.ay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i216) #7, !srcloc !21
  store i32 %i.v, ptr %i.a, align 8, !tbaa !15
  %i.az = add nuw nsw i64 %i.h, 32                ; 2 uses
  %.val179 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %.val179, i64 %i.az
  store i64 %.0.copyload.i216, ptr %i.ba, align 1
  %.val193 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %.val193, i64 %i.az
  %.0.copyload.i217 = load i64, ptr %i.bb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i217) #7, !srcloc !21
  %i.bc = add nuw nsw i64 %i.h, 56                ; 2 uses
  %.val = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bc
  store i64 %.0.copyload.i217, ptr %i.bd, align 1
  %.val192 = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %.val192, i64 %i.bc
  %.0.copyload.i218 = load i64, ptr %i.be, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i218) #7, !srcloc !21
  store i32 %i.b, ptr %i.a, align 8, !tbaa !15
  %i.bf = sdiv i64 %.0.copyload.i218, 1000
  ret i64 %i.bf
}

declare void @w2c_hermes_abort_message(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AcreateDynamicFunction0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x2C0x20hermes0x3A0x3Avm0x3A0x3ADynamicFunctionKind0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 26 uses
  %i.c = add i32 %i.b, -352                       ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 320 uses
  %i.e = zext i32 %i.c to i64                     ; 46 uses
  %.val2832 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %.val2832, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store i32 %2, ptr %i.g, align 1
  %i.h = zext i32 %2 to i64                       ; 4 uses
  %i.i = add nuw nsw i64 %i.h, 4                  ; 12 uses
  %.val2774 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %.val2774, i64 %i.i
  %.0.copyload.i = load i32, ptr %i.j, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !13
  %i.k = add i32 %i.b, -76                        ; 2 uses
  %i.l = add i32 %i.b, -216                       ; 2 uses
  %i.m = zext i32 %i.k to i64
  %.val2831 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %.val2831, i64 %i.m
  store i32 %i.l, ptr %i.n, align 1
  %.val2657 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %.val2657, i64 %i.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 268
  store i64 17179869185, ptr %i.p, align 1
  %i.q = add nuw nsw i64 %i.e, 264                ; 2 uses
  %.val2830 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %.val2830, i64 %i.q
  store i32 %i.k, ptr %i.r, align 1
  %.val2829 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.val2829, i64 %i.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 132
  store i32 %.0.copyload.i, ptr %i.t, align 1
  %i.u = add i32 %i.b, -88
  %i.v = add nuw nsw i64 %i.e, 296                ; 2 uses
  %.val2828 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %.val2828, i64 %i.v
  store i32 %i.u, ptr %i.w, align 1
  %i.x = add nuw nsw i64 %i.e, 292                ; 3 uses
  %.val2827 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %.val2827, i64 %i.x
  store i32 %i.l, ptr %i.y, align 1
  %i.z = add nuw nsw i64 %i.e, 300                ; 3 uses
  %.val2826 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2826, i64 %i.z
  store i32 0, ptr %i.aa, align 1
  %i.ab = add i32 %i.b, -224                      ; 2 uses
  %.val2825 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2825, i64 %i.i
  store i32 %i.ab, ptr %i.ac, align 1
  %i.ad = zext i32 %3 to i64                      ; 4 uses
  %.val2773 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %.val2773, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %.0.copyload.i2939 = load i32, ptr %i.af, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2939) #7, !srcloc !13
  %i.ag = tail call i32 @llvm.usub.sat.i32(i32 %.0.copyload.i2939, i32 1) ; 7 uses
  %i.ah = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSArray0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29(ptr noundef %0, i32 noundef %2, i32 noundef %i.ag, i32 noundef %i.ag) #7 ; 3 uses
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aj = zext i32 %1 to i64
  %.val2824 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val2824, i64 %i.aj
  store i32 0, ptr %i.ak, align 1
  br label %bb.eo

bb.c:                                             ; preds = %bb.a
  %.val2772 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val2772, i64 %i.i
  %.0.copyload.i2940 = load i32, ptr %i.al, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2940) #7, !srcloc !13
  %i.am = zext i32 %.0.copyload.i2940 to i64      ; 2 uses
  %i.an = add nuw nsw i64 %i.am, 164              ; 2 uses
  %.val2771 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2771, i64 %i.an
  %.0.copyload.i2941 = load i32, ptr %i.ao, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2941) #7, !srcloc !13
  %.val2770 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.val2770, i64 %i.am
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 168
  %.0.copyload.i2942 = load i32, ptr %i.aq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2942) #7, !srcloc !13
  %i.ar = icmp ult i32 %.0.copyload.i2941, %.0.copyload.i2942
  br i1 %i.ar, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.as = add i32 %.0.copyload.i2941, 8
  %.val2823 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val2823, i64 %i.an
  store i32 %i.as, ptr %i.at, align 1
  %i.au = zext i32 %.0.copyload.i2941 to i64
  %.val2656 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val2656, i64 %i.au
  store i64 -844424930131968, ptr %i.av, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aw = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2940, i64 noundef -844424930131968) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02487 = phi i32 [ %.0.copyload.i2941, %bb.d ], [ %i.aw, %bb.e ] ; 5 uses
  %.val2769 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %.val2769, i64 %i.i
  %.0.copyload.i2943 = load i32, ptr %i.ax, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2943) #7, !srcloc !13
  %i.ay = zext i32 %.0.copyload.i2943 to i64      ; 2 uses
  %i.az = add nuw nsw i64 %i.ay, 164              ; 2 uses
  %.val2768 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %.val2768, i64 %i.az
  %.0.copyload.i2944 = load i32, ptr %i.ba, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2944) #7, !srcloc !13
  %.val2767 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %.val2767, i64 %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 168
  %.0.copyload.i2945 = load i32, ptr %i.bc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2945) #7, !srcloc !13
  %i.bd = icmp ult i32 %.0.copyload.i2944, %.0.copyload.i2945
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = add i32 %.0.copyload.i2944, 8
  %.val2822 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.val2822, i64 %i.az
  store i32 %i.be, ptr %i.bf, align 1
  %i.bg = zext i32 %.0.copyload.i2944 to i64
  %.val2655 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %.val2655, i64 %i.bg
  store i64 -281474976710656, ptr %i.bh, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bi = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2943, i64 noundef -281474976710656) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.02488 = phi i32 [ %.0.copyload.i2944, %bb.g ], [ %i.bi, %bb.h ] ; 2 uses
  %i.bj = add i32 %i.ag, -1                       ; 2 uses
  %i.bk = icmp ugt i32 %.0.copyload.i2939, 2
  %i.bl = select i1 %i.bk, i32 %i.bj, i32 0
  %i.bm = add i32 %4, -1                          ; 3 uses
  %switch.selectcmp = icmp eq i32 %i.bm, 1
  %switch.select = select i1 %switch.selectcmp, i32 608, i32 200
  %switch.selectcmp3211 = icmp eq i32 %i.bm, 0
  %switch.select3212 = select i1 %switch.selectcmp3211, i32 640, i32 %switch.select
  %i.bn = add i32 %2, %switch.select3212
  %i.bo = zext i32 %i.bn to i64
  %.val2938 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %.val2938, i64 %i.bo
  %.0.copyload.i2946 = load i32, ptr %i.bp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2946) #7, !srcloc !24
  %i.bq = zext i32 %.0.copyload.i2946 to i64
  %i.br = or disjoint i64 %i.bq, -281474976710656
  %i.bs = zext i32 %.02488 to i64
  %.val2654 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bt = getelementptr inbounds nuw i8, ptr %.val2654, i64 %i.bs
  store i64 %i.br, ptr %i.bt, align 1
  %.val2766 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val2766, i64 %i.ad
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.0.copyload.i2947 = load i32, ptr %i.bv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2947) #7, !srcloc !13
  %i.bw = zext i32 %.0.copyload.i2947 to i64
  %.val2846 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %.val2846, i64 %i.bw
  %.0.copyload.i2948 = load i64, ptr %i.bx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2948) #7, !srcloc !21
  %.mask = and i64 %.0.copyload.i2948, -140737488355328
  %i.by = icmp eq i64 %.mask, -1688849860263936
  br i1 %i.by, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val2765 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bz = getelementptr inbounds nuw i8, ptr %.val2765, i64 %i.ad
  %.0.copyload.i2949 = load i32, ptr %i.bz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2949) #7, !srcloc !13
  %i.ca = zext i32 %.0.copyload.i2949 to i64
  %.val2764 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cb = getelementptr inbounds nuw i8, ptr %.val2764, i64 %i.ca
  %.0.copyload.i2950 = load i32, ptr %i.cb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2950) #7, !srcloc !13
  %i.cc = zext i32 %.0.copyload.i2950 to i64
  %.val2937 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cd = getelementptr inbounds nuw i8, ptr %.val2937, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.0.copyload.i2951 = load i32, ptr %i.ce, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2951) #7, !srcloc !24
  %i.cf = zext i32 %.0.copyload.i2951 to i64
  %i.cg = or disjoint i64 %i.cf, -281474976710656 ; 2 uses
  %.val2763 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %.val2763, i64 %i.i
  %.0.copyload.i2952 = load i32, ptr %i.ch, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2952) #7, !srcloc !13
  %i.ci = zext i32 %.0.copyload.i2952 to i64      ; 2 uses
  %i.cj = add nuw nsw i64 %i.ci, 164              ; 2 uses
  %.val2762 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %.val2762, i64 %i.cj
  %.0.copyload.i2953 = load i32, ptr %i.ck, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2953) #7, !srcloc !13
  %.val2761 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %.val2761, i64 %i.ci
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 168
  %.0.copyload.i2954 = load i32, ptr %i.cm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2954) #7, !srcloc !13
  %i.cn = icmp ult i32 %.0.copyload.i2953, %.0.copyload.i2954
  br i1 %i.cn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.co = add i32 %.0.copyload.i2953, 8
  %.val2821 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cp = getelementptr inbounds nuw i8, ptr %.val2821, i64 %i.cj
  store i32 %i.co, ptr %i.cp, align 1
  %i.cq = zext i32 %.0.copyload.i2953 to i64
  %.val2653 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %.val2653, i64 %i.cq
  store i64 %i.cg, ptr %i.cr, align 1
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.cs = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2952, i64 noundef %i.cg) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.k
  %.12489 = phi i32 [ %.02488, %bb.i ], [ %.0.copyload.i2953, %bb.k ], [ %i.cs, %bb.l ] ; 2 uses
  %i.ct = zext i32 %i.bl to i64                   ; 3 uses
  %.not = icmp eq i32 %.0.copyload.i2939, 0
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cu = add i32 %2, 5476
  %i.cv = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3AgetStringPrim0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x29(ptr noundef nonnull %0, i32 noundef %i.cu, i32 noundef %2, i32 noundef 14) #7
  %i.cw = zext i32 %i.cv to i64
  %i.cx = or disjoint i64 %i.cw, -844424930131968
  %i.cy = zext i32 %.02487 to i64
  %.val2652 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.cz = getelementptr inbounds nuw i8, ptr %.val2652, i64 %i.cy
  store i64 %i.cx, ptr %i.cz, align 1
  br label %bb.az

bb.o:                                             ; preds = %bb.m
  %.val2760 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.da = getelementptr inbounds nuw i8, ptr %.val2760, i64 %i.ad
  %.0.copyload.i2955 = load i32, ptr %i.da, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2955) #7, !srcloc !13
  %.not2578 = icmp ne i32 %.0.copyload.i2939, 1   ; 2 uses
  br i1 %.not2578, label %bb.p, label %.loopexit3151

bb.p:                                             ; preds = %bb.o
  %.val2759 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.db = getelementptr inbounds nuw i8, ptr %.val2759, i64 %i.x
  %.0.copyload.i2956 = load i32, ptr %i.db, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2956) #7, !srcloc !13
  %i.dc = tail call i32 @llvm.umax.i32(i32 %i.ag, i32 1)
  %i.dd = add i32 %.0.copyload.i2955, -8
  %.val2758 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.de = getelementptr inbounds nuw i8, ptr %.val2758, i64 %i.z
  %.0.copyload.i2957 = load i32, ptr %i.de, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2957) #7, !srcloc !13
  %i.df = shl i32 %.0.copyload.i2957, 2
  %i.dg = add i32 %i.b, -48
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %bb.p
  %.02523 = phi i32 [ 0, %bb.p ], [ %i.es, %bb.u ] ; 4 uses
  %.02490 = phi i32 [ 0, %bb.p ], [ %i.er, %bb.u ]
  %.02481 = phi i64 [ %i.ct, %bb.p ], [ %i.eo, %bb.u ]
  %.val2757 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dh = getelementptr inbounds nuw i8, ptr %.val2757, i64 %i.q
  %.0.copyload.i2958 = load i32, ptr %i.dh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2958) #7, !srcloc !13
  %i.di = add i32 %.0.copyload.i2958, %i.df
  %i.dj = zext i32 %i.di to i64
  %.val2756 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dk = getelementptr inbounds nuw i8, ptr %.val2756, i64 %i.dj
  %.0.copyload.i2959 = load i32, ptr %i.dk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2959) #7, !srcloc !13
  %.val2820 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dl = getelementptr inbounds nuw i8, ptr %.val2820, i64 %i.z
  store i32 %.0.copyload.i2957, ptr %i.dl, align 1
  %.val2819 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dm = getelementptr inbounds nuw i8, ptr %.val2819, i64 %i.x
  store i32 %.0.copyload.i2956, ptr %i.dm, align 1
  %i.dn = add i32 %.0.copyload.i2959, 128
  %.val2818 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.do = getelementptr inbounds nuw i8, ptr %.val2818, i64 %i.v
  store i32 %i.dn, ptr %i.do, align 1
  %i.dp = shl i32 %.02523, 3
  %i.dq = sub i32 %i.dd, %i.dp
  %.not2579 = icmp ult i32 %.02523, %.0.copyload.i2939
  %i.dr = select i1 %.not2579, i32 %i.dq, i32 70392
  %i.ds = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoString_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %i.dr) #7 ; 2 uses
  %i.dt = icmp eq i32 %i.ds, -1
  br i1 %i.dt, label %bb.ay, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.du = zext i32 %i.ds to i64
  %i.dv = or disjoint i64 %i.du, -844424930131968 ; 2 uses
  %.val2755 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dw = getelementptr inbounds nuw i8, ptr %.val2755, i64 %i.i
  %.0.copyload.i2960 = load i32, ptr %i.dw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2960) #7, !srcloc !13
  %i.dx = zext i32 %.0.copyload.i2960 to i64      ; 2 uses
  %i.dy = add nuw nsw i64 %i.dx, 164              ; 2 uses
  %.val2754 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.dz = getelementptr inbounds nuw i8, ptr %.val2754, i64 %i.dy
  %.0.copyload.i2961 = load i32, ptr %i.dz, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2961) #7, !srcloc !13
  %.val2753 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ea = getelementptr inbounds nuw i8, ptr %.val2753, i64 %i.dx
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 168
  %.0.copyload.i2962 = load i32, ptr %i.eb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2962) #7, !srcloc !13
  %i.ec = icmp ult i32 %.0.copyload.i2961, %.0.copyload.i2962
  br i1 %i.ec, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ed = add i32 %.0.copyload.i2961, 8
  %.val2817 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ee = getelementptr inbounds nuw i8, ptr %.val2817, i64 %i.dy
  store i32 %i.ed, ptr %i.ee, align 1
  %i.ef = zext i32 %.0.copyload.i2961 to i64      ; 2 uses
  %.val2651 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.eg = getelementptr inbounds nuw i8, ptr %.val2651, i64 %i.ef
  store i64 %i.dv, ptr %i.eg, align 1
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.eh = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2960, i64 noundef %i.dv) #7 ; 2 uses
  %.pre3171 = zext i32 %i.eh to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pre-phi3172 = phi i64 [ %.pre3171, %bb.t ], [ %i.ef, %bb.s ]
  %.02499 = phi i32 [ %i.eh, %bb.t ], [ %.0.copyload.i2961, %bb.s ]
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AArrayImpl0x3A0x3A_setOwnIndexedImpl0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.dg, i32 noundef %i.ah, i32 noundef %2, i32 noundef %.02523, i32 noundef %.02499) #7
  %.val2752 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ei = getelementptr inbounds nuw i8, ptr %.val2752, i64 %.pre-phi3172
  %.0.copyload.i2963 = load i32, ptr %i.ei, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2963) #7, !srcloc !13
end_hunk_3
begin_hunk_4_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AcreateDynamicFunction0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x2C0x20hermes0x3A0x3Avm0x3A0x3ADynamicFunctionKind0x29:bb.a
  %i.qy = getelementptr inbounds nuw i8, ptr %.val2713, i64 %i.qj
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 12
  %.0.copyload.i3032 = load i32, ptr %i.qz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3032) #7, !srcloc !13
  %i.ra = add i32 %.0.copyload.i3027, 12
  %.val2889 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rb = getelementptr inbounds nuw i8, ptr %.val2889, i64 %i.qj
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 23
  %.0.copyload.i3033 = load i8, ptr %i.rc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3033) #7, !srcloc !22
  %i.rd = icmp slt i8 %.0.copyload.i3033, 0
  %i.re = select i1 %i.rd, i32 %.0.copyload.i3032, i32 %i.ra
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.rf = and i32 %.0.copyload.i3028, 251658240
  %i.rg = icmp eq i32 %i.rf, 117440512
  %spec.select2627.v = select i1 %i.rg, i32 12, i32 8
  %spec.select2627 = add i32 %spec.select2627.v, %.0.copyload.i3027
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.22479 = phi i32 [ %i.re, %bb.bt ], [ %spec.select2627, %bb.bu ]
  %.not2595 = icmp eq i32 %.0.copyload.i3012, 0
  br i1 %.not2595, label %.loopexit3148, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.val2712 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rh = getelementptr inbounds nuw i8, ptr %.val2712, i64 %i.qc
  %.0.copyload.i3034 = load i32, ptr %i.rh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3034) #7, !srcloc !13
  %i.ri = shl i32 %.0.copyload.i3034, 1
  %i.rj = add i32 %i.ri, %.22479                  ; 2 uses
  %i.rk = and i32 %.0.copyload.i3012, 7           ; 2 uses
  %.not2596 = icmp eq i32 %i.rk, 0
  br i1 %.not2596, label %.loopexit3150, label %.preheader3149

.preheader3149:                                   ; preds = %bb.bw, %.preheader3149
  %.32511 = phi i32 [ %i.rr, %.preheader3149 ], [ %.0.copyload.i3013, %bb.bw ] ; 2 uses
  %.52504 = phi i32 [ %i.rq, %.preheader3149 ], [ %i.rj, %bb.bw ] ; 2 uses
  %.22492 = phi i32 [ %i.rs, %.preheader3149 ], [ 0, %bb.bw ]
  %i.rl = zext i32 %.32511 to i64
  %.val2888 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rm = getelementptr inbounds nuw i8, ptr %.val2888, i64 %i.rl
  %.0.copyload.i3035 = load i8, ptr %i.rm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3035) #7, !srcloc !22
  %i.rn = zext i32 %.52504 to i64
  %.val2930 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ro = sext i8 %.0.copyload.i3035 to i16
  %i.rp = getelementptr inbounds nuw i8, ptr %.val2930, i64 %i.rn
  store i16 %i.ro, ptr %i.rp, align 1
  %i.rq = add i32 %.52504, 2                      ; 2 uses
  %i.rr = add i32 %.32511, 1                      ; 2 uses
  %i.rs = add nuw nsw i32 %.22492, 1              ; 2 uses
  %.not2597 = icmp eq i32 %i.rs, %i.rk
  br i1 %.not2597, label %.loopexit3150, label %.preheader3149

.loopexit3150:                                    ; preds = %.preheader3149, %bb.bw
  %.42512 = phi i32 [ %.0.copyload.i3013, %bb.bw ], [ %i.rr, %.preheader3149 ]
  %.62505 = phi i32 [ %i.rj, %bb.bw ], [ %i.rq, %.preheader3149 ]
  %i.rt = icmp ult i32 %.0.copyload.i3012, 8
  br i1 %i.rt, label %.loopexit3148, label %bb.bx

bb.bx:                                            ; preds = %.loopexit3150
  %i.ru = add i32 %.0.copyload.i3013, %.0.copyload.i3012
  br label %bb.by

bb.by:                                            ; preds = %bb.by, %bb.bx
  %.52513 = phi i32 [ %.42512, %bb.bx ], [ %i.tk, %bb.by ] ; 2 uses
  %.72506 = phi i32 [ %.62505, %bb.bx ], [ %i.tj, %bb.by ] ; 2 uses
  %i.rv = zext i32 %.52513 to i64                 ; 8 uses
  %.val2887 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rw = getelementptr inbounds nuw i8, ptr %.val2887, i64 %i.rv
  %.0.copyload.i3036 = load i8, ptr %i.rw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3036) #7, !srcloc !22
  %i.rx = zext i32 %.72506 to i64                 ; 8 uses
  %.val2929 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ry = sext i8 %.0.copyload.i3036 to i16
  %i.rz = getelementptr inbounds nuw i8, ptr %.val2929, i64 %i.rx
  store i16 %i.ry, ptr %i.rz, align 1
  %.val2886 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sa = getelementptr inbounds nuw i8, ptr %.val2886, i64 %i.rv
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 1
  %.0.copyload.i3037 = load i8, ptr %i.sb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3037) #7, !srcloc !22
  %.val2928 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sc = sext i8 %.0.copyload.i3037 to i16
  %i.sd = getelementptr inbounds nuw i8, ptr %.val2928, i64 %i.rx
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 2
  store i16 %i.sc, ptr %i.se, align 1
  %.val2885 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sf = getelementptr inbounds nuw i8, ptr %.val2885, i64 %i.rv
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 2
  %.0.copyload.i3038 = load i8, ptr %i.sg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3038) #7, !srcloc !22
  %.val2927 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sh = sext i8 %.0.copyload.i3038 to i16
  %i.si = getelementptr inbounds nuw i8, ptr %.val2927, i64 %i.rx
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 4
  store i16 %i.sh, ptr %i.sj, align 1
  %.val2884 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sk = getelementptr inbounds nuw i8, ptr %.val2884, i64 %i.rv
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 3
  %.0.copyload.i3039 = load i8, ptr %i.sl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3039) #7, !srcloc !22
  %.val2926 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sm = sext i8 %.0.copyload.i3039 to i16
  %i.sn = getelementptr inbounds nuw i8, ptr %.val2926, i64 %i.rx
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 6
  store i16 %i.sm, ptr %i.so, align 1
  %.val2883 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sp = getelementptr inbounds nuw i8, ptr %.val2883, i64 %i.rv
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 4
  %.0.copyload.i3040 = load i8, ptr %i.sq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3040) #7, !srcloc !22
  %.val2925 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sr = sext i8 %.0.copyload.i3040 to i16
  %i.ss = getelementptr inbounds nuw i8, ptr %.val2925, i64 %i.rx
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  store i16 %i.sr, ptr %i.st, align 1
  %.val2882 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.su = getelementptr inbounds nuw i8, ptr %.val2882, i64 %i.rv
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 5
  %.0.copyload.i3041 = load i8, ptr %i.sv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3041) #7, !srcloc !22
  %.val2924 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sw = sext i8 %.0.copyload.i3041 to i16
  %i.sx = getelementptr inbounds nuw i8, ptr %.val2924, i64 %i.rx
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 10
  store i16 %i.sw, ptr %i.sy, align 1
  %.val2881 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sz = getelementptr inbounds nuw i8, ptr %.val2881, i64 %i.rv
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 6
  %.0.copyload.i3042 = load i8, ptr %i.ta, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3042) #7, !srcloc !22
  %.val2923 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.tb = sext i8 %.0.copyload.i3042 to i16
  %i.tc = getelementptr inbounds nuw i8, ptr %.val2923, i64 %i.rx
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 12
  store i16 %i.tb, ptr %i.td, align 1
  %.val2880 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.te = getelementptr inbounds nuw i8, ptr %.val2880, i64 %i.rv
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 7
  %.0.copyload.i3043 = load i8, ptr %i.tf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3043) #7, !srcloc !22
  %.val2922 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.tg = sext i8 %.0.copyload.i3043 to i16
  %i.th = getelementptr inbounds nuw i8, ptr %.val2922, i64 %i.rx
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 14
  store i16 %i.tg, ptr %i.ti, align 1
  %i.tj = add i32 %.72506, 16
  %i.tk = add i32 %.52513, 8                      ; 2 uses
  %.not2598 = icmp eq i32 %i.tk, %i.ru
  br i1 %.not2598, label %.loopexit3148, label %bb.by

.loopexit3148:                                    ; preds = %bb.by, %bb.bv, %bb.bq, %.loopexit3150, %bb.br
  %.22525 = phi i32 [ 0, %bb.bv ], [ %.0.copyload.i3012, %bb.br ], [ 0, %bb.bq ], [ %.0.copyload.i3012, %.loopexit3150 ], [ %.0.copyload.i3012, %bb.by ]
  %.val2711 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.tl = getelementptr inbounds nuw i8, ptr %.val2711, i64 %i.qc
  %.0.copyload.i3044 = load i32, ptr %i.tl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3044) #7, !srcloc !13
  %i.tm = add i32 %.0.copyload.i3044, %.22525
  %.val2794 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.tn = getelementptr inbounds nuw i8, ptr %.val2794, i64 %i.qc
  store i32 %i.tm, ptr %i.tn, align 1
  %.val2710 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.to = getelementptr inbounds nuw i8, ptr %.val2710, i64 %i.i
  %.0.copyload.i3045 = load i32, ptr %i.to, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3045) #7, !srcloc !13
  %i.tp = zext i32 %.0.copyload.i3045 to i64      ; 2 uses
  %i.tq = add nuw nsw i64 %i.tp, 164              ; 2 uses
  %.val2709 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.tr = getelementptr inbounds nuw i8, ptr %.val2709, i64 %i.tq
  %.0.copyload.i3046 = load i32, ptr %i.tr, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3046) #7, !srcloc !13
  %.val2708 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ts = getelementptr inbounds nuw i8, ptr %.val2708, i64 %i.tp
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 168
  %.0.copyload.i3047 = load i32, ptr %i.tt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3047) #7, !srcloc !13
  %i.tu = icmp ult i32 %.0.copyload.i3046, %.0.copyload.i3047
  br i1 %i.tu, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.loopexit3148
  %i.tv = add i32 %.0.copyload.i3046, 8
  %.val2793 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.tw = getelementptr inbounds nuw i8, ptr %.val2793, i64 %i.tq
  store i32 %i.tv, ptr %i.tw, align 1
  %i.tx = zext i32 %.0.copyload.i3046 to i64
  %.val2638 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ty = getelementptr inbounds nuw i8, ptr %.val2638, i64 %i.tx
  store i64 -844424930131968, ptr %i.ty, align 1
  br label %bb.cb

bb.ca:                                            ; preds = %.loopexit3148
  %i.tz = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3045, i64 noundef -844424930131968) #7
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.32493 = phi i32 [ %.0.copyload.i3046, %bb.bz ], [ %i.tz, %bb.ca ] ; 2 uses
  %5 = icmp ugt i32 %.0.copyload.i2939, 1
  br i1 %5, label %.preheader3146, label %.loopexit3147

.preheader3146:                                   ; preds = %bb.cb
  %i.ua = zext i32 %i.ah to i64
  %i.ub = zext i32 %.32493 to i64
  %i.uc = add i32 %i.b, -264
  br label %bb.cc

bb.cc:                                            ; preds = %.preheader3146, %bb.cw
  %.32526 = phi i32 [ %i.yx, %bb.cw ], [ 0, %.preheader3146 ] ; 5 uses
  %.val2707 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ud = getelementptr inbounds nuw i8, ptr %.val2707, i64 %i.ua
  %.0.copyload.i3048 = load i32, ptr %i.ud, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3048) #7, !srcloc !13
  %i.ue = zext i32 %.0.copyload.i3048 to i64      ; 3 uses
  %.val2706 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.uf = getelementptr inbounds nuw i8, ptr %.val2706, i64 %i.ue
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 20
  %.0.copyload.i3049 = load i32, ptr %i.ug, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3049) #7, !srcloc !13
  %i.uh = icmp ult i32 %.32526, %.0.copyload.i3049
  br i1 %i.uh, label %bb.ci, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.val2705 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ui = getelementptr inbounds nuw i8, ptr %.val2705, i64 %i.ue
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 24
  %.0.copyload.i3050 = load i32, ptr %i.uj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3050) #7, !srcloc !13
  %.not2600 = icmp ugt i32 %.0.copyload.i3050, %.32526
  br i1 %.not2600, label %bb.ce, label %bb.ci

bb.ce:                                            ; preds = %bb.cd
  %.val2704 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.uk = getelementptr inbounds nuw i8, ptr %.val2704, i64 %i.ue
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 28
  %.0.copyload.i3051 = load i32, ptr %i.ul, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3051) #7, !srcloc !13
  %i.um = sub i32 %.32526, %.0.copyload.i3049     ; 4 uses
  %i.un = icmp ult i32 %i.um, 4096
  br i1 %i.un, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.uo = shl nuw nsw i32 %i.um, 2
  %i.up = add i32 %.0.copyload.i3051, %i.uo
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.uq = add i32 %i.um, -4096
  %i.ur = lshr i32 %i.uq, 8
  %i.us = and i32 %i.ur, 16777212
  %i.ut = add nuw nsw i32 %i.us, 16392
  %i.uu = add i32 %i.ut, %.0.copyload.i3051
  %i.uv = zext i32 %i.uu to i64
  %.val2703 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.uw = getelementptr inbounds nuw i8, ptr %.val2703, i64 %i.uv
  %.0.copyload.i3052 = load i32, ptr %i.uw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3052) #7, !srcloc !13
  %i.ux = shl i32 %i.um, 2
  %i.uy = and i32 %i.ux, 4092
  %i.uz = add i32 %.0.copyload.i3052, %i.uy
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.1.in = phi i32 [ %i.up, %bb.cf ], [ %i.uz, %bb.cg ]
  %.1 = add i32 %.1.in, 8
  %i.va = zext i32 %.1 to i64
  %.val2702 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.vb = getelementptr inbounds nuw i8, ptr %.val2702, i64 %i.va
  %.0.copyload.i3053 = load i32, ptr %i.vb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3053) #7, !srcloc !13
  %i.vc = and i32 %.0.copyload.i3053, -8
  %i.vd = zext i32 %i.vc to i64
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cd, %bb.cc, %bb.ch
  %.2 = phi i64 [ 0, %bb.cc ], [ 0, %bb.cd ], [ %i.vd, %bb.ch ] ; 2 uses
  %i.ve = or disjoint i64 %.2, -844424930131968
  %.val2637 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.vf = getelementptr inbounds nuw i8, ptr %.val2637, i64 %i.ub
  store i64 %i.ve, ptr %i.vf, align 1
  %.val2701 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.vg = getelementptr inbounds nuw i8, ptr %.val2701, i64 %.2
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 4
  %.0.copyload.i3054 = load i32, ptr %i.vh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3054) #7, !srcloc !13
  %i.vi = and i32 %.0.copyload.i3054, 2147483647
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringBuilder0x3A0x3AappendStringPrim0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.uc, i32 noundef %.32493, i32 noundef %i.vi)
  %i.vj = icmp ult i32 %.32526, %i.bj
  br i1 %i.vj, label %bb.cj, label %bb.cw

bb.cj:                                            ; preds = %bb.ci
  %.val2839 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.vk = getelementptr inbounds nuw i8, ptr %.val2839, i64 %i.e
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 104
  %.0.copyload.i3055 = load i64, ptr %i.vl, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3055) #7, !srcloc !21
  %i.vm = lshr i64 %.0.copyload.i3055, 32         ; 3 uses
  %i.vn = trunc nuw i64 %i.vm to i32              ; 6 uses
  %i.vo = trunc i64 %.0.copyload.i3055 to i32     ; 4 uses
  %.val2700 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.vp = getelementptr inbounds nuw i8, ptr %.val2700, i64 %i.qg
  %.0.copyload.i3056 = load i32, ptr %i.vp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3056) #7, !srcloc !13
  %i.vq = zext i32 %.0.copyload.i3056 to i64
  %.val2699 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.vr = getelementptr inbounds nuw i8, ptr %.val2699, i64 %i.vq
  %.0.copyload.i3057 = load i32, ptr %i.vr, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3057) #7, !srcloc !13
  %i.vs = zext i32 %.0.copyload.i3057 to i64      ; 5 uses
  %.val2698 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.vt = getelementptr inbounds nuw i8, ptr %.val2698, i64 %i.vs
  %.0.copyload.i3058 = load i32, ptr %i.vt, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3058) #7, !srcloc !13
  %i.vu = and i32 %.0.copyload.i3058, 16777216
  %.not2601 = icmp eq i32 %i.vu, 0
  %i.vv = icmp ugt i32 %.0.copyload.i3058, 150994943 ; 2 uses
  br i1 %.not2601, label %bb.ck, label %bb.cp

bb.ck:                                            ; preds = %bb.cj
  br i1 %i.vv, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %.val2697 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.vw = getelementptr inbounds nuw i8, ptr %.val2697, i64 %i.vs
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 12
  %.0.copyload.i3059 = load i32, ptr %i.vx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3059) #7, !srcloc !13
  %i.vy = add i32 %.0.copyload.i3057, 12
  %.val2879 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.vz = getelementptr inbounds nuw i8, ptr %.val2879, i64 %i.vs
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 23
  %.0.copyload.i3060 = load i8, ptr %i.wa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3060) #7, !srcloc !22
  %i.wb = icmp slt i8 %.0.copyload.i3060, 0
  %i.wc = select i1 %i.wb, i32 %.0.copyload.i3059, i32 %i.vy
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck
  %i.wd = icmp samesign ugt i32 %.0.copyload.i3058, 134217727
  %spec.select2628.v = select i1 %i.wd, i32 12, i32 8
  %spec.select2628 = add i32 %spec.select2628.v, %.0.copyload.i3057
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.32480 = phi i32 [ %i.wc, %bb.cl ], [ %spec.select2628, %bb.cm ]
  %.not2606 = icmp eq i64 %i.vm, 0
  br i1 %.not2606, label %.loopexit3143, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %.val2696 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.we = getelementptr inbounds nuw i8, ptr %.val2696, i64 %i.qc
  %.0.copyload.i3061 = load i32, ptr %i.we, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3061) #7, !srcloc !13
  %i.wf = add i32 %.0.copyload.i3061, %.32480
  %i.wg = tail call i32 @w2c_hermes_memmove(ptr noundef nonnull %0, i32 noundef %i.wf, i32 noundef %i.vo, i32 noundef %i.vn) #7 ; 0 uses
  br label %.loopexit3143

bb.cp:                                            ; preds = %bb.cj
  br i1 %i.vv, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %.val2695 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.wh = getelementptr inbounds nuw i8, ptr %.val2695, i64 %i.vs
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 12
  %.0.copyload.i3062 = load i32, ptr %i.wi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3062) #7, !srcloc !13
  %i.wj = add i32 %.0.copyload.i3057, 12
  %.val2878 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.wk = getelementptr inbounds nuw i8, ptr %.val2878, i64 %i.vs
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 23
  %.0.copyload.i3063 = load i8, ptr %i.wl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i3063) #7, !srcloc !22
  %i.wm = icmp slt i8 %.0.copyload.i3063, 0
  %i.wn = select i1 %i.wm, i32 %.0.copyload.i3062, i32 %i.wj
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %i.wo = and i32 %.0.copyload.i3058, 251658240
  %i.wp = icmp eq i32 %i.wo, 117440512
  %spec.select2629.v = select i1 %i.wp, i32 12, i32 8
  %spec.select2629 = add i32 %spec.select2629.v, %.0.copyload.i3057
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.4 = phi i32 [ %i.wn, %bb.cq ], [ %spec.select2629, %bb.cr ]
  %.not2602 = icmp eq i64 %i.vm, 0
  br i1 %.not2602, label %.loopexit3143, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %.val2694 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.wq = getelementptr inbounds nuw i8, ptr %.val2694, i64 %i.qc
  %.0.copyload.i3064 = load i32, ptr %i.wq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3064) #7, !srcloc !13
  %i.wr = shl i32 %.0.copyload.i3064, 1
  %i.ws = add i32 %i.wr, %.4                      ; 2 uses
  %i.wt = and i32 %i.vn, 7                        ; 2 uses
  %.not2603 = icmp eq i32 %i.wt, 0
  br i1 %.not2603, label %.loopexit3145, label %.preheader3144

.preheader3144:                                   ; preds = %bb.ct, %.preheader3144
end_hunk_4
begin_hunk_5_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3ArunBytecode0x28std0x3A0x3A_0x5F20x3A0x3Ashared_ptr0x3Chermes0x3A0x3Ahbc0x3A0x3ABCProviderBase0x3E0x260x260x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntimeModuleFlags0x2C0x20llvh0x3A0x3AStringRef0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AEnvironment0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29:bb.a
  %.0.copyload.i5341 = load i32, ptr %i.baj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5341) #7, !srcloc !13
  %i.bak = zext i32 %.0.copyload.i5341 to i64
  %.val4733 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bal = getelementptr inbounds nuw i8, ptr %.val4733, i64 %i.bak
  %.0.copyload.i5342 = load i32, ptr %i.bal, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5342) #7, !srcloc !13
  %i.bam = zext i32 %.0.copyload.i5342 to i64
  %.val4732 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ban = getelementptr inbounds nuw i8, ptr %.val4732, i64 %i.bam
  %i.bao = getelementptr inbounds nuw i8, ptr %i.ban, i64 4
  %.0.copyload.i5343 = load i32, ptr %i.bao, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5343) #7, !srcloc !13
  %i.bap = load i32, ptr %i.ahr, align 4, !tbaa !26
  %i.baq = icmp ult i32 %.0.copyload.i5343, %i.bap
  br i1 %i.baq, label %bb.gi, label %.critedge4573, !prof !27

bb.gi:                                            ; preds = %bb.gh
  %i.bar = load ptr, ptr %i.ahq, align 8, !tbaa !28
  %i.bas = zext i32 %.0.copyload.i5343 to i64
  %i.bat = getelementptr inbounds nuw [24 x i8], ptr %i.bar, i64 %i.bas ; 3 uses
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bat, i64 8
  %i.bav = load ptr, ptr %i.bau, align 8, !tbaa !29 ; 2 uses
  %.not4497 = icmp eq ptr %i.bav, null
  br i1 %.not4497, label %.critedge4573, label %bb.gj, !prof !23

bb.gj:                                            ; preds = %bb.gi
  %i.baw = load ptr, ptr %i.bat, align 8, !tbaa !32 ; 4 uses
  %i.bax = icmp eq ptr %i.ahz, %i.baw
  br i1 %i.bax, label %func_types_eq.exit5347.thread, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.bay = icmp ne ptr %i.baw, null
  %or.cond.i5344 = and i1 %i.azv, %i.bay
  br i1 %or.cond.i5344, label %func_types_eq.exit5347, label %.critedge4573, !prof !33

func_types_eq.exit5347:                           ; preds = %bb.gk
  %i.baz = load i128, ptr %i.ahz, align 1
  %i.bba = load i128, ptr %i.baw, align 1
  %i.bbb = xor i128 %i.baz, %i.bba
  %i.bbc = getelementptr i8, ptr %i.ahz, i64 16
  %i.bbd = getelementptr i8, ptr %i.baw, i64 16
  %i.bbe = load i128, ptr %i.bbc, align 1
  %i.bbf = load i128, ptr %i.bbd, align 1
  %i.bbg = xor i128 %i.bbe, %i.bbf
  %i.bbh = or i128 %i.bbb, %i.bbg
  %i.bbi = icmp ne i128 %i.bbh, 0
  %i.bbj = zext i1 %i.bbi to i32
  %.not.i5346 = icmp eq i32 %i.bbj, 0
  br i1 %.not.i5346, label %func_types_eq.exit5347.thread, label %.critedge4573, !prof !34

.critedge4573:                                    ; preds = %bb.gk, %bb.gi, %bb.gh, %func_types_eq.exit5347
  tail call void @wasm_rt_trap(i32 noundef 6) #8
  unreachable

func_types_eq.exit5347.thread:                    ; preds = %bb.gj, %func_types_eq.exit5347
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bat, i64 16
  %i.bbl = load ptr, ptr %i.bbk, align 8, !tbaa !35
  tail call void %i.bav(ptr noundef %i.bbl, i32 noundef %i.azu, i32 noundef %.0.copyload.i5341, i32 noundef %.0.copyload.i5339) #7
  %.val4633 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bbm = getelementptr inbounds nuw i8, ptr %.val4633, i64 %i.amm
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbm, i64 76
  store i8 0, ptr %i.bbn, align 1
  %.val4938 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bbo = getelementptr inbounds nuw i8, ptr %.val4938, i64 %i.azw
  store i32 0, ptr %i.bbo, align 1
  %.val5065 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bbp = getelementptr inbounds nuw i8, ptr %.val5065, i64 %i.azw
  %.0.copyload.i5348 = load i64, ptr %i.bbp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i5348) #7, !srcloc !21
  %.val4595 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bbq = getelementptr inbounds nuw i8, ptr %.val4595, i64 %i.amm
  store i64 %.0.copyload.i5348, ptr %i.bbq, align 1
  %i.bbr = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntimeModule0x3A0x3AcreateSymbolFromStringIDMayAllocate0x28unsigned0x20int0x2C0x20hermes0x3A0x3AStringTableEntry0x20const0x260x2C0x20hermes0x3A0x3AOptValue0x3Cunsigned0x20int0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.aep, i32 noundef %.0.copyload.i5339, i32 noundef %i.azu, i32 noundef %i.alp)
  br label %bb.gl

bb.gl:                                            ; preds = %func_types_eq.exit5347.thread, %bb.gg
  %.104354 = phi i32 [ %i.bbr, %func_types_eq.exit5347.thread ], [ %.0.copyload.i5340, %bb.gg ] ; 4 uses
  %.val4937 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bbs = getelementptr inbounds nuw i8, ptr %.val4937, i64 %i.azx
  store i32 %.104354, ptr %i.bbs, align 1
  %.val4731 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bbt = getelementptr inbounds nuw i8, ptr %.val4731, i64 %i.amp
  %.0.copyload.i5349 = load i32, ptr %i.bbt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5349) #7, !srcloc !13
  %.val4936 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bbu = getelementptr inbounds nuw i8, ptr %.val4936, i64 %i.azw
  store i32 -1, ptr %i.bbu, align 1
  %i.bbv = zext i32 %.0.copyload.i5349 to i64     ; 6 uses
  %i.bbw = add nuw nsw i64 %i.bbv, 32             ; 7 uses
  %.val4730 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bbx = getelementptr inbounds nuw i8, ptr %.val4730, i64 %i.bbw
  %.0.copyload.i5350 = load i32, ptr %i.bbx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5350) #7, !srcloc !13
  %.not4498 = icmp eq i32 %.0.copyload.i5350, 0
  br i1 %.not4498, label %bb.gp, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %.val4729 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bby = getelementptr inbounds nuw i8, ptr %.val4729, i64 %i.bbv
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bby, i64 20
  %.0.copyload.i5351 = load i32, ptr %i.bbz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5351) #7, !srcloc !13
  %i.bca = add i32 %.0.copyload.i5350, -1         ; 2 uses
  %i.bcb = mul i32 %.104354, 37
  %i.bcc = and i32 %i.bca, %i.bcb                 ; 2 uses
  %i.bcd = shl i32 %i.bcc, 3
  %i.bce = add i32 %.0.copyload.i5351, %i.bcd     ; 2 uses
  %i.bcf = zext i32 %i.bce to i64
  %.val4728 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bcg = getelementptr inbounds nuw i8, ptr %.val4728, i64 %i.bcf
  %.0.copyload.i5352 = load i32, ptr %i.bcg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5352) #7, !srcloc !13
  %i.bch = icmp eq i32 %.104354, %.0.copyload.i5352
  br i1 %i.bch, label %.loopexit5500, label %.preheader5499

.preheader5499:                                   ; preds = %bb.gm, %bb.go
  %.64321 = phi i32 [ %i.bcr, %bb.go ], [ %i.bce, %bb.gm ] ; 2 uses
  %.34311 = phi i32 [ %i.bcm, %bb.go ], [ 0, %bb.gm ] ; 3 uses
  %.14302 = phi i32 [ %i.bco, %bb.go ], [ 1, %bb.gm ] ; 2 uses
  %.14298 = phi i32 [ %i.bcp, %bb.go ], [ %i.bcc, %bb.gm ]
  %.14293 = phi i32 [ %.0.copyload.i5353, %bb.go ], [ %.0.copyload.i5352, %bb.gm ] ; 2 uses
  %i.bci = icmp eq i32 %.14293, 536870911
  %.not4501 = icmp eq i32 %.34311, 0              ; 2 uses
  br i1 %i.bci, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %.preheader5499
  %i.bcj = select i1 %.not4501, i32 %.64321, i32 %.34311
  br label %bb.gp

bb.go:                                            ; preds = %.preheader5499
  %i.bck = icmp eq i32 %.14293, 536870910
  %i.bcl = select i1 %i.bck, i1 %.not4501, i1 false
  %i.bcm = select i1 %i.bcl, i32 %.64321, i32 %.34311
  %i.bcn = add i32 %.14298, %.14302
  %i.bco = add i32 %.14302, 1
  %i.bcp = and i32 %i.bcn, %i.bca                 ; 2 uses
  %i.bcq = shl i32 %i.bcp, 3
  %i.bcr = add i32 %i.bcq, %.0.copyload.i5351     ; 2 uses
  %i.bcs = zext i32 %i.bcr to i64
  %.val4727 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bct = getelementptr inbounds nuw i8, ptr %.val4727, i64 %i.bcs
  %.0.copyload.i5353 = load i32, ptr %i.bct, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5353) #7, !srcloc !13
  %.not4500 = icmp eq i32 %.104354, %.0.copyload.i5353
  br i1 %.not4500, label %.loopexit5500, label %.preheader5499

bb.gp:                                            ; preds = %bb.gl, %bb.gn
  %.114355 = phi i32 [ %i.bcj, %bb.gn ], [ 0, %bb.gl ]
  %i.bcu = add nuw nsw i64 %i.bbv, 24             ; 5 uses
  %.val4726 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bcv = getelementptr inbounds nuw i8, ptr %.val4726, i64 %i.bcu
  %.0.copyload.i5354 = load i32, ptr %i.bcv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5354) #7, !srcloc !13
  %i.bcw = shl i32 %.0.copyload.i5354, 2
  %i.bcx = add i32 %i.bcw, 4
  %.val4725 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bcy = getelementptr inbounds nuw i8, ptr %.val4725, i64 %i.bbw
  %.0.copyload.i5355 = load i32, ptr %i.bcy, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5355) #7, !srcloc !13
  %i.bcz = mul i32 %.0.copyload.i5355, 3
  %.not4502 = icmp ult i32 %i.bcx, %i.bcz
  br i1 %.not4502, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.bda = shl i32 %.0.copyload.i5355, 1
  br label %bb.gs

bb.gr:                                            ; preds = %bb.gp
  %i.bdb = xor i32 %.0.copyload.i5354, -1
  %i.bdc = add i32 %.0.copyload.i5355, %i.bdb
  %.val4724 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bdd = getelementptr inbounds nuw i8, ptr %.val4724, i64 %i.bbv
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdd, i64 28
  %.0.copyload.i5356 = load i32, ptr %i.bde, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5356) #7, !srcloc !13
  %i.bdf = sub i32 %i.bdc, %.0.copyload.i5356
  %i.bdg = lshr i32 %.0.copyload.i5355, 3
  %i.bdh = icmp ugt i32 %i.bdf, %i.bdg
  br i1 %i.bdh, label %.loopexit5491, label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %.44312 = phi i32 [ %i.bda, %bb.gq ], [ %.0.copyload.i5355, %bb.gr ]
  %.val4723 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bdi = getelementptr inbounds nuw i8, ptr %.val4723, i64 %i.bbw
  %.0.copyload.i5357 = load i32, ptr %i.bdi, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5357) #7, !srcloc !13
  %i.bdj = add i32 %.44312, -1
  %i.bdk = zext i32 %i.bdj to i64                 ; 2 uses
  %i.bdl = lshr i64 %i.bdk, 1
  %i.bdm = or i64 %i.bdl, %i.bdk                  ; 2 uses
  %i.bdn = lshr i64 %i.bdm, 2
  %i.bdo = or i64 %i.bdn, %i.bdm                  ; 2 uses
  %i.bdp = lshr i64 %i.bdo, 4
  %i.bdq = or i64 %i.bdp, %i.bdo                  ; 2 uses
  %i.bdr = lshr i64 %i.bdq, 8
  %i.bds = or i64 %i.bdr, %i.bdq                  ; 2 uses
  %i.bdt = lshr i64 %i.bds, 16
  %i.bdu = or i64 %i.bdt, %i.bds
  %i.bdv = trunc nuw i64 %i.bdu to i32
  %i.bdw = add i32 %i.bdv, 1
  %7 = tail call i32 @llvm.umax.i32(i32 %i.bdw, i32 64) ; 2 uses
  %.val4935 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bdx = getelementptr inbounds nuw i8, ptr %.val4935, i64 %i.bbw
  store i32 %7, ptr %i.bdx, align 1
  %i.bdy = add nuw nsw i64 %i.bbv, 20             ; 3 uses
  %.val4722 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bdz = getelementptr inbounds nuw i8, ptr %.val4722, i64 %i.bdy
  %.0.copyload.i5358 = load i32, ptr %i.bdz, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5358) #7, !srcloc !13
  %i.bea = shl i32 %7, 3
  %i.beb = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.bea) #7 ; 23 uses
  %.val4934 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bec = getelementptr inbounds nuw i8, ptr %.val4934, i64 %i.bdy
  store i32 %i.beb, ptr %i.bec, align 1
  %.not4503 = icmp eq i32 %.0.copyload.i5358, 0
  %.val4594 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bed = getelementptr inbounds nuw i8, ptr %.val4594, i64 %i.bcu
  store i64 0, ptr %i.bed, align 1
  %.val4721 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bee = getelementptr inbounds nuw i8, ptr %.val4721, i64 %i.bbw
  %.0.copyload.i5359 = load i32, ptr %i.bee, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i5359) #7
  %.not4514 = icmp eq i32 %.0.copyload.i5359, 0   ; 2 uses
  br i1 %.not4503, label %bb.gt, label %bb.gx

bb.gt:                                            ; preds = %bb.gs
  br i1 %.not4514, label %.loopexit5492, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.bef = and i32 %.0.copyload.i5359, 7          ; 7 uses
  %.not4515 = icmp eq i32 %i.bef, 0
  br i1 %.not4515, label %.loopexit5494, label %.preheader5493

.preheader5493:                                   ; preds = %bb.gu
  %i.beg = zext i32 %i.beb to i64
  %.val4933 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.beh = getelementptr inbounds nuw i8, ptr %.val4933, i64 %i.beg
  store i32 536870911, ptr %i.beh, align 1
  %i.bei = add i32 %i.beb, 8                      ; 2 uses
  %.not4516 = icmp eq i32 %i.bef, 1
  br i1 %.not4516, label %.loopexit5494, label %.preheader5493.1

.preheader5493.1:                                 ; preds = %.preheader5493
  %i.bej = zext i32 %i.bei to i64
  %.val4933.1 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bek = getelementptr inbounds nuw i8, ptr %.val4933.1, i64 %i.bej
  store i32 536870911, ptr %i.bek, align 1
  %i.bel = add i32 %i.beb, 16                     ; 2 uses
  %.not4516.1 = icmp eq i32 %i.bef, 2
  br i1 %.not4516.1, label %.loopexit5494, label %.preheader5493.2

.preheader5493.2:                                 ; preds = %.preheader5493.1
  %i.bem = zext i32 %i.bel to i64
  %.val4933.2 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ben = getelementptr inbounds nuw i8, ptr %.val4933.2, i64 %i.bem
  store i32 536870911, ptr %i.ben, align 1
  %i.beo = add i32 %i.beb, 24                     ; 2 uses
  %.not4516.2 = icmp eq i32 %i.bef, 3
  br i1 %.not4516.2, label %.loopexit5494, label %.preheader5493.3

.preheader5493.3:                                 ; preds = %.preheader5493.2
  %i.bep = zext i32 %i.beo to i64
  %.val4933.3 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.beq = getelementptr inbounds nuw i8, ptr %.val4933.3, i64 %i.bep
  store i32 536870911, ptr %i.beq, align 1
  %i.ber = add i32 %i.beb, 32                     ; 2 uses
  %.not4516.3 = icmp eq i32 %i.bef, 4
  br i1 %.not4516.3, label %.loopexit5494, label %.preheader5493.4

.preheader5493.4:                                 ; preds = %.preheader5493.3
  %i.bes = zext i32 %i.ber to i64
  %.val4933.4 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bet = getelementptr inbounds nuw i8, ptr %.val4933.4, i64 %i.bes
  store i32 536870911, ptr %i.bet, align 1
  %i.beu = add i32 %i.beb, 40                     ; 2 uses
  %.not4516.4 = icmp eq i32 %i.bef, 5
  br i1 %.not4516.4, label %.loopexit5494, label %.preheader5493.5

.preheader5493.5:                                 ; preds = %.preheader5493.4
  %i.bev = zext i32 %i.beu to i64
  %.val4933.5 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bew = getelementptr inbounds nuw i8, ptr %.val4933.5, i64 %i.bev
  store i32 536870911, ptr %i.bew, align 1
  %i.bex = add i32 %i.beb, 48                     ; 2 uses
  %.not4516.5 = icmp eq i32 %i.bef, 6
  br i1 %.not4516.5, label %.loopexit5494, label %.preheader5493.6

.preheader5493.6:                                 ; preds = %.preheader5493.5
  %i.bey = zext i32 %i.bex to i64
  %.val4933.6 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bez = getelementptr inbounds nuw i8, ptr %.val4933.6, i64 %i.bey
  store i32 536870911, ptr %i.bez, align 1
  %i.bfa = add i32 %i.beb, 56
  br label %.loopexit5494

.loopexit5494:                                    ; preds = %.preheader5493, %.preheader5493.1, %.preheader5493.2, %.preheader5493.3, %.preheader5493.4, %.preheader5493.5, %.preheader5493.6, %bb.gu
  %.134357 = phi i32 [ %i.beb, %bb.gu ], [ %i.bei, %.preheader5493 ], [ %i.bel, %.preheader5493.1 ], [ %i.beo, %.preheader5493.2 ], [ %i.ber, %.preheader5493.3 ], [ %i.beu, %.preheader5493.4 ], [ %i.bex, %.preheader5493.5 ], [ %i.bfa, %.preheader5493.6 ]
  %i.bfb = add i32 %.0.copyload.i5359, 536870911
  %i.bfc = and i32 %i.bfb, 536870911
  %i.bfd = icmp samesign ult i32 %i.bfc, 7
  br i1 %i.bfd, label %.loopexit5492, label %bb.gv

bb.gv:                                            ; preds = %.loopexit5494
  %i.bfe = shl i32 %.0.copyload.i5359, 3
  %i.bff = add i32 %i.bfe, %i.beb
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gw, %bb.gv
  %.144358 = phi i32 [ %.134357, %bb.gv ], [ %i.bfw, %bb.gw ] ; 2 uses
  %i.bfg = zext i32 %.144358 to i64               ; 8 uses
  %.val4932 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bfh = getelementptr inbounds nuw i8, ptr %.val4932, i64 %i.bfg
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.bfh, i64 56
  store i32 536870911, ptr %i.bfi, align 1
  %.val4931 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bfj = getelementptr inbounds nuw i8, ptr %.val4931, i64 %i.bfg
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bfj, i64 48
  store i32 536870911, ptr %i.bfk, align 1
  %.val4930 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bfl = getelementptr inbounds nuw i8, ptr %.val4930, i64 %i.bfg
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfl, i64 40
  store i32 536870911, ptr %i.bfm, align 1
  %.val4929 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bfn = getelementptr inbounds nuw i8, ptr %.val4929, i64 %i.bfg
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bfn, i64 32
  store i32 536870911, ptr %i.bfo, align 1
  %.val4928 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bfp = getelementptr inbounds nuw i8, ptr %.val4928, i64 %i.bfg
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.bfp, i64 24
  store i32 536870911, ptr %i.bfq, align 1
  %.val4927 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bfr = getelementptr inbounds nuw i8, ptr %.val4927, i64 %i.bfg
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bfr, i64 16
  store i32 536870911, ptr %i.bfs, align 1
  %.val4926 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bft = getelementptr inbounds nuw i8, ptr %.val4926, i64 %i.bfg
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bft, i64 8
  store i32 536870911, ptr %i.bfu, align 1
  %.val4925 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bfv = getelementptr inbounds nuw i8, ptr %.val4925, i64 %i.bfg
  store i32 536870911, ptr %i.bfv, align 1
  %i.bfw = add i32 %.144358, 64                   ; 2 uses
  %.not4517 = icmp eq i32 %i.bfw, %i.bff
  br i1 %.not4517, label %.loopexit5492, label %bb.gw

bb.gx:                                            ; preds = %bb.gs
  br i1 %.not4514, label %.loopexit5496, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.bfx = and i32 %.0.copyload.i5359, 7          ; 7 uses
  %.not4505 = icmp eq i32 %i.bfx, 0
  br i1 %.not4505, label %.loopexit5498, label %.preheader5497

.preheader5497:                                   ; preds = %bb.gy
  %i.bfy = zext i32 %i.beb to i64
  %.val4924 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bfz = getelementptr inbounds nuw i8, ptr %.val4924, i64 %i.bfy
  store i32 536870911, ptr %i.bfz, align 1
  %i.bga = add i32 %i.beb, 8                      ; 2 uses
  %.not4506 = icmp eq i32 %i.bfx, 1
  br i1 %.not4506, label %.loopexit5498, label %.preheader5497.1

.preheader5497.1:                                 ; preds = %.preheader5497
  %i.bgb = zext i32 %i.bga to i64
  %.val4924.1 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bgc = getelementptr inbounds nuw i8, ptr %.val4924.1, i64 %i.bgb
  store i32 536870911, ptr %i.bgc, align 1
  %i.bgd = add i32 %i.beb, 16                     ; 2 uses
  %.not4506.1 = icmp eq i32 %i.bfx, 2
  br i1 %.not4506.1, label %.loopexit5498, label %.preheader5497.2

.preheader5497.2:                                 ; preds = %.preheader5497.1
  %i.bge = zext i32 %i.bgd to i64
  %.val4924.2 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bgf = getelementptr inbounds nuw i8, ptr %.val4924.2, i64 %i.bge
  store i32 536870911, ptr %i.bgf, align 1
  %i.bgg = add i32 %i.beb, 24                     ; 2 uses
  %.not4506.2 = icmp eq i32 %i.bfx, 3
  br i1 %.not4506.2, label %.loopexit5498, label %.preheader5497.3

.preheader5497.3:                                 ; preds = %.preheader5497.2
  %i.bgh = zext i32 %i.bgg to i64
  %.val4924.3 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bgi = getelementptr inbounds nuw i8, ptr %.val4924.3, i64 %i.bgh
  store i32 536870911, ptr %i.bgi, align 1
  %i.bgj = add i32 %i.beb, 32                     ; 2 uses
  %.not4506.3 = icmp eq i32 %i.bfx, 4
  br i1 %.not4506.3, label %.loopexit5498, label %.preheader5497.4

.preheader5497.4:                                 ; preds = %.preheader5497.3
  %i.bgk = zext i32 %i.bgj to i64
  %.val4924.4 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bgl = getelementptr inbounds nuw i8, ptr %.val4924.4, i64 %i.bgk
  store i32 536870911, ptr %i.bgl, align 1
  %i.bgm = add i32 %i.beb, 40                     ; 2 uses
  %.not4506.4 = icmp eq i32 %i.bfx, 5
  br i1 %.not4506.4, label %.loopexit5498, label %.preheader5497.5

.preheader5497.5:                                 ; preds = %.preheader5497.4
  %i.bgn = zext i32 %i.bgm to i64
  %.val4924.5 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.bgo = getelementptr inbounds nuw i8, ptr %.val4924.5, i64 %i.bgn
  store i32 536870911, ptr %i.bgo, align 1
  %i.bgp = add i32 %i.beb, 48                     ; 2 uses
  %.not4506.5 = icmp eq i32 %i.bfx, 6
  br i1 %.not4506.5, label %.loopexit5498, label %.preheader5497.6

.preheader5497.6:                                 ; preds = %.preheader5497.5
  %i.bgq = zext i32 %i.bgp to i64
  %.val4924.6 = load ptr, ptr %i.d, align 8, !tbaa !7
end_hunk_5
begin_hunk_6_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSWeakMapImplBase0x3A0x3AsetValue0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSWeakMapImplBase0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29:bb.a
  store i32 %.11797, ptr %i.pb, align 1
  %i.pc = tail call i64 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AgcStableHashHermesValue0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3)
  %.val2148 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pd = trunc nuw i64 %i.pc to i32
  %i.pe = getelementptr inbounds nuw i8, ptr %.val2148, i64 %i.oz
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 12
  store i32 %i.pd, ptr %i.pf, align 1
  %i.pg = add i32 %i.b, -24                       ; 3 uses
  %.val2029 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ph = getelementptr inbounds nuw i8, ptr %.val2029, i64 %i.h
  %.0.copyload.i2213 = load i32, ptr %i.ph, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2213) #7, !srcloc !13
  %i.pi = zext i32 %.0.copyload.i2213 to i64      ; 7 uses
  %i.pj = add nuw nsw i64 %i.pi, 32               ; 8 uses
  %.val2028 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pk = getelementptr inbounds nuw i8, ptr %.val2028, i64 %i.pj
  %.0.copyload.i2214 = load i32, ptr %i.pk, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2214) #7, !srcloc !13
  %.not1915 = icmp eq i32 %.0.copyload.i2214, 0
  br i1 %.not1915, label %bb.cf, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.pl = zext i32 %i.pg to i64                   ; 2 uses
  %.val2027 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pm = getelementptr inbounds nuw i8, ptr %.val2027, i64 %i.pl
  %.0.copyload.i2215 = load i32, ptr %i.pm, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2215) #7, !srcloc !13
  %.val2026 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pn = getelementptr inbounds nuw i8, ptr %.val2026, i64 %i.pi
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 20
  %.0.copyload.i2216 = load i32, ptr %i.po, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2216) #7, !srcloc !13
  %i.pp = add i32 %.0.copyload.i2214, -1          ; 3 uses
  %.val2025 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pq = getelementptr inbounds nuw i8, ptr %.val2025, i64 %i.pl
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 4
  %.0.copyload.i2217 = load i32, ptr %i.pr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2217) #7, !srcloc !13
  %i.ps = and i32 %.0.copyload.i2217, %i.pp       ; 3 uses
  %i.pt = shl i32 %i.ps, 3
  %i.pu = add i32 %i.pt, %.0.copyload.i2216       ; 4 uses
  %i.pv = zext i32 %i.pu to i64
  %.val2024 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pw = getelementptr inbounds nuw i8, ptr %.val2024, i64 %i.pv
  %.0.copyload.i2218 = load i32, ptr %i.pw, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2218) #7, !srcloc !13
  %i.px = icmp eq i32 %.0.copyload.i2215, %.0.copyload.i2218
  br i1 %i.px, label %.loopexit2270, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.py = icmp ult i32 %.0.copyload.i2215, 2
  br i1 %i.py, label %.preheader2268, label %.preheader2271

.preheader2271:                                   ; preds = %bb.bz
  %i.pz = zext i32 %.0.copyload.i2215 to i64
  br label %bb.cb

.preheader2268:                                   ; preds = %bb.bz, %bb.ca
  %.01856 = phi i32 [ %.0.copyload.i2219, %bb.ca ], [ %.0.copyload.i2218, %bb.bz ] ; 2 uses
  %.81853 = phi i32 [ %i.qc, %bb.ca ], [ 0, %bb.bz ] ; 3 uses
  %.121839 = phi i32 [ %i.qh, %bb.ca ], [ %i.pu, %bb.bz ] ; 2 uses
  %.21814 = phi i32 [ %i.qf, %bb.ca ], [ %i.ps, %bb.bz ]
  %.01785 = phi i32 [ %i.qe, %bb.ca ], [ 1, %bb.bz ] ; 2 uses
  %.not1921 = icmp eq i32 %.01856, 0
  br i1 %.not1921, label %.loopexit2269, label %bb.ca

bb.ca:                                            ; preds = %.preheader2268
  %.not1922 = icmp eq i32 %.81853, 0
  %i.qa = icmp eq i32 %.01856, 1
  %i.qb = select i1 %i.qa, i1 %.not1922, i1 false
  %i.qc = select i1 %i.qb, i32 %.121839, i32 %.81853
  %i.qd = add i32 %.01785, %.21814
  %i.qe = add i32 %.01785, 1
  %i.qf = and i32 %i.qd, %i.pp                    ; 2 uses
  %i.qg = shl i32 %i.qf, 3
  %i.qh = add i32 %i.qg, %.0.copyload.i2216       ; 3 uses
  %i.qi = zext i32 %i.qh to i64
  %.val2023 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qj = getelementptr inbounds nuw i8, ptr %.val2023, i64 %i.qi
  %.0.copyload.i2219 = load i32, ptr %i.qj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2219) #7, !srcloc !13
  %.not1923 = icmp eq i32 %.0.copyload.i2215, %.0.copyload.i2219
  br i1 %.not1923, label %.loopexit2270, label %.preheader2268

bb.cb:                                            ; preds = %.preheader2271, %.thread
  %.11857 = phi i32 [ %.0.copyload.i2222, %.thread ], [ %.0.copyload.i2218, %.preheader2271 ] ; 4 uses
  %.91854 = phi i32 [ %i.qt, %.thread ], [ 0, %.preheader2271 ] ; 3 uses
  %.131840 = phi i32 [ %i.qy, %.thread ], [ %i.pu, %.preheader2271 ] ; 3 uses
  %.31815 = phi i32 [ %i.qw, %.thread ], [ %i.ps, %.preheader2271 ]
  %.1 = phi i32 [ %i.qu, %.thread ], [ 1, %.preheader2271 ] ; 2 uses
  %i.qk = icmp ult i32 %.11857, 2
  br i1 %i.qk, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %.val2022 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ql = getelementptr inbounds nuw i8, ptr %.val2022, i64 %i.pz
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %.0.copyload.i2220 = load i32, ptr %i.qm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2220) #7, !srcloc !13
  %.not1916 = icmp eq i32 %.0.copyload.i2220, 0
  br i1 %.not1916, label %.thread, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.qn = zext i32 %.11857 to i64
  %.val2021 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qo = getelementptr inbounds nuw i8, ptr %.val2021, i64 %i.qn
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %.0.copyload.i2221 = load i32, ptr %i.qp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2221) #7, !srcloc !13
  %i.qq = icmp eq i32 %.0.copyload.i2221, %.0.copyload.i2220
  br i1 %i.qq, label %.loopexit2270, label %.thread

bb.ce:                                            ; preds = %bb.cb
  %.not1918 = icmp eq i32 %.11857, 0
  br i1 %.not1918, label %.loopexit2269, label %.thread

.thread:                                          ; preds = %bb.cc, %bb.ce, %bb.cd
  %.not1919 = icmp eq i32 %.91854, 0
  %i.qr = icmp eq i32 %.11857, 1
  %i.qs = select i1 %i.qr, i1 %.not1919, i1 false
  %i.qt = select i1 %i.qs, i32 %.131840, i32 %.91854
  %i.qu = add i32 %.1, 1
  %i.qv = add i32 %.1, %.31815
  %i.qw = and i32 %i.qv, %i.pp                    ; 2 uses
  %i.qx = shl i32 %i.qw, 3
  %i.qy = add i32 %i.qx, %.0.copyload.i2216       ; 3 uses
  %i.qz = zext i32 %i.qy to i64
  %.val2020 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ra = getelementptr inbounds nuw i8, ptr %.val2020, i64 %i.qz
  %.0.copyload.i2222 = load i32, ptr %i.ra, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2222) #7, !srcloc !13
  %.not1920 = icmp eq i32 %.0.copyload.i2215, %.0.copyload.i2222
  br i1 %.not1920, label %.loopexit2270, label %bb.cb

.loopexit2270:                                    ; preds = %bb.cd, %.thread, %bb.ca, %bb.by
  %.141841 = phi i32 [ %i.pu, %bb.by ], [ %i.qh, %bb.ca ], [ %i.qy, %.thread ], [ %.131840, %bb.cd ]
  %i.rb = shl i32 %.0.copyload.i2214, 3
  %i.rc = add i32 %.0.copyload.i2216, %i.rb
  br label %bb.dg

.loopexit2269:                                    ; preds = %bb.ce, %.preheader2268
  %.101855 = phi i32 [ %.81853, %.preheader2268 ], [ %.91854, %bb.ce ] ; 2 uses
  %.151842 = phi i32 [ %.121839, %.preheader2268 ], [ %.131840, %bb.ce ]
  %.not1924 = icmp eq i32 %.101855, 0
  %i.rd = select i1 %.not1924, i32 %.151842, i32 %.101855
  br label %bb.cf

bb.cf:                                            ; preds = %bb.bx, %.loopexit2269
  %.11790 = phi i32 [ %i.rd, %.loopexit2269 ], [ 0, %bb.bx ]
  %i.re = add nuw nsw i64 %i.pi, 24               ; 6 uses
  %.val2019 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rf = getelementptr inbounds nuw i8, ptr %.val2019, i64 %i.re
  %.0.copyload.i2223 = load i32, ptr %i.rf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2223) #7, !srcloc !13
  %i.rg = shl i32 %.0.copyload.i2223, 2
  %i.rh = add i32 %i.rg, 4
  %.val2018 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ri = getelementptr inbounds nuw i8, ptr %.val2018, i64 %i.pj
  %.0.copyload.i2224 = load i32, ptr %i.ri, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2224) #7, !srcloc !13
  %i.rj = mul i32 %.0.copyload.i2224, 3
  %.not1925 = icmp ult i32 %i.rh, %i.rj
  br i1 %.not1925, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.rk = shl i32 %.0.copyload.i2224, 1
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.rl = xor i32 %.0.copyload.i2223, -1
  %i.rm = add i32 %.0.copyload.i2224, %i.rl
  %.val2017 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rn = getelementptr inbounds nuw i8, ptr %.val2017, i64 %i.pi
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 28
  %.0.copyload.i2225 = load i32, ptr %i.ro, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2225) #7, !srcloc !13
  %i.rp = sub i32 %i.rm, %.0.copyload.i2225
  %i.rq = lshr i32 %.0.copyload.i2224, 3
  %i.rr = icmp ugt i32 %i.rp, %i.rq
  br i1 %i.rr, label %.loopexit2262, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.11825 = phi i32 [ %i.rk, %bb.cg ], [ %.0.copyload.i2224, %bb.ch ]
  %.val2016 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.rs = getelementptr inbounds nuw i8, ptr %.val2016, i64 %i.pj
  %.0.copyload.i2226 = load i32, ptr %i.rs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2226) #7, !srcloc !13
  %i.rt = add i32 %.11825, -1
  %i.ru = zext i32 %i.rt to i64                   ; 2 uses
  %i.rv = lshr i64 %i.ru, 1
  %i.rw = or i64 %i.rv, %i.ru                     ; 2 uses
  %i.rx = lshr i64 %i.rw, 2
  %i.ry = or i64 %i.rx, %i.rw                     ; 2 uses
  %i.rz = lshr i64 %i.ry, 4
  %i.sa = or i64 %i.rz, %i.ry                     ; 2 uses
  %i.sb = lshr i64 %i.sa, 8
  %i.sc = or i64 %i.sb, %i.sa                     ; 2 uses
  %i.sd = lshr i64 %i.sc, 16
  %i.se = or i64 %i.sd, %i.sc
  %i.sf = trunc nuw i64 %i.se to i32
  %i.sg = add i32 %i.sf, 1
  %5 = tail call i32 @llvm.umax.i32(i32 %i.sg, i32 64) ; 2 uses
  %.val2065 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sh = getelementptr inbounds nuw i8, ptr %.val2065, i64 %i.pj
  store i32 %5, ptr %i.sh, align 1
  %i.si = add nuw nsw i64 %i.pi, 20               ; 4 uses
  %.val2015 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sj = getelementptr inbounds nuw i8, ptr %.val2015, i64 %i.si
  %.0.copyload.i2227 = load i32, ptr %i.sj, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2227) #7, !srcloc !13
  %i.sk = shl i32 %5, 3
  %i.sl = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.sk) #7 ; 3 uses
  %.val2064 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sm = getelementptr inbounds nuw i8, ptr %.val2064, i64 %i.si
  store i32 %i.sl, ptr %i.sm, align 1
  %.not1926 = icmp eq i32 %.0.copyload.i2227, 0
  %.val1951 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sn = getelementptr inbounds nuw i8, ptr %.val1951, i64 %i.re
  store i64 0, ptr %i.sn, align 1
  %.val2014 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.so = getelementptr inbounds nuw i8, ptr %.val2014, i64 %i.pj
  %.0.copyload.i2228 = load i32, ptr %i.so, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2228) #7
  %.not1936 = icmp eq i32 %.0.copyload.i2228, 0   ; 2 uses
  br i1 %.not1926, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  br i1 %.not1936, label %bb.cx, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.sp = shl i32 %.0.copyload.i2228, 3
  %i.sq = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.sl, i32 noundef 0, i32 noundef %i.sp) #7 ; 0 uses
  br label %bb.cx

bb.cl:                                            ; preds = %bb.ci
  br i1 %.not1936, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.sr = shl i32 %.0.copyload.i2228, 3
  %i.ss = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.sl, i32 noundef 0, i32 noundef %i.sr) #7 ; 0 uses
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.not1928 = icmp eq i32 %.0.copyload.i2226, 0
  br i1 %.not1928, label %.loopexit2267, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.st = shl i32 %.0.copyload.i2226, 3
  %i.su = add i32 %.0.copyload.i2227, %i.st
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cw, %bb.co
  %.161843 = phi i32 [ %.0.copyload.i2227, %bb.co ], [ %i.ui, %bb.cw ] ; 2 uses
  %i.sv = zext i32 %.161843 to i64                ; 3 uses
  %.val2012 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sw = getelementptr inbounds nuw i8, ptr %.val2012, i64 %i.sv
  %.0.copyload.i2230 = load i32, ptr %i.sw, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2230) #7, !srcloc !13
  %i.sx = icmp ugt i32 %.0.copyload.i2230, 1
  br i1 %i.sx, label %bb.cq, label %bb.cw

bb.cq:                                            ; preds = %bb.cp
  %.val2011 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sy = getelementptr inbounds nuw i8, ptr %.val2011, i64 %i.si
  %.0.copyload.i2231 = load i32, ptr %i.sy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2231) #7, !srcloc !13
  %.val2010 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sz = getelementptr inbounds nuw i8, ptr %.val2010, i64 %i.pj
  %.0.copyload.i2232 = load i32, ptr %i.sz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2232) #7, !srcloc !13
  %i.ta = add i32 %.0.copyload.i2232, -1          ; 2 uses
  %.val2009 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.tb = getelementptr inbounds nuw i8, ptr %.val2009, i64 %i.sv
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 4
  %.0.copyload.i2233 = load i32, ptr %i.tc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2233) #7, !srcloc !13
  %i.td = and i32 %.0.copyload.i2233, %i.ta       ; 2 uses
  %i.te = shl i32 %i.td, 3
  %i.tf = add i32 %i.te, %.0.copyload.i2231       ; 3 uses
  %i.tg = zext i32 %i.tf to i64
  %.val2008 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.th = getelementptr inbounds nuw i8, ptr %.val2008, i64 %i.tg
  %.0.copyload.i2234 = load i32, ptr %i.th, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2234) #7, !srcloc !13
  %i.ti = icmp eq i32 %.0.copyload.i2230, %.0.copyload.i2234
  br i1 %i.ti, label %.loopexit2266, label %.preheader2265

.preheader2265:                                   ; preds = %bb.cq
  %i.tj = zext i32 %.0.copyload.i2230 to i64
  br label %bb.cr

bb.cr:                                            ; preds = %.preheader2265, %.thread2256
  %.17 = phi i32 [ %.0.copyload.i2237, %.thread2256 ], [ %.0.copyload.i2234, %.preheader2265 ] ; 4 uses
  %.01803 = phi i32 [ %i.tu, %.thread2256 ], [ 0, %.preheader2265 ] ; 4 uses
  %.01800 = phi i32 [ %i.tz, %.thread2256 ], [ %i.tf, %.preheader2265 ] ; 3 uses
  %.01798 = phi i32 [ %i.tx, %.thread2256 ], [ %i.td, %.preheader2265 ]
  %.01786 = phi i32 [ %i.tv, %.thread2256 ], [ 1, %.preheader2265 ] ; 2 uses
  %i.tk = icmp ult i32 %.17, 2
  br i1 %i.tk, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %.val2007 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.tl = getelementptr inbounds nuw i8, ptr %.val2007, i64 %i.tj
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %.0.copyload.i2235 = load i32, ptr %i.tm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2235) #7, !srcloc !13
  %.not1929 = icmp eq i32 %.0.copyload.i2235, 0
  br i1 %.not1929, label %.thread2256, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.tn = zext i32 %.17 to i64
  %.val2006 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.to = getelementptr inbounds nuw i8, ptr %.val2006, i64 %i.tn
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  %.0.copyload.i2236 = load i32, ptr %i.tp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2236) #7, !srcloc !13
  %i.tq = icmp eq i32 %.0.copyload.i2236, %.0.copyload.i2235
  br i1 %i.tq, label %.loopexit2266, label %.thread2256

bb.cu:                                            ; preds = %bb.cr
  %.not1931 = icmp eq i32 %.17, 0
  br i1 %.not1931, label %bb.cv, label %.thread2256

bb.cv:                                            ; preds = %bb.cu
  %.not1932 = icmp eq i32 %.01803, 0
  %i.tr = select i1 %.not1932, i32 %.01800, i32 %.01803
  br label %.loopexit2266

.thread2256:                                      ; preds = %bb.cs, %bb.cu, %bb.ct
  %.not1933 = icmp eq i32 %.01803, 0
  %i.ts = icmp eq i32 %.17, 1
  %i.tt = select i1 %i.ts, i1 %.not1933, i1 false
  %i.tu = select i1 %i.tt, i32 %.01800, i32 %.01803
  %i.tv = add i32 %.01786, 1
  %i.tw = add i32 %.01786, %.01798
  %i.tx = and i32 %i.tw, %i.ta                    ; 2 uses
  %i.ty = shl i32 %i.tx, 3
  %i.tz = add i32 %i.ty, %.0.copyload.i2231       ; 3 uses
  %i.ua = zext i32 %i.tz to i64
  %.val2005 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ub = getelementptr inbounds nuw i8, ptr %.val2005, i64 %i.ua
  %.0.copyload.i2237 = load i32, ptr %i.ub, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2237) #7, !srcloc !13
  %.not1934 = icmp eq i32 %.0.copyload.i2230, %.0.copyload.i2237
  br i1 %.not1934, label %.loopexit2266, label %bb.cr

.loopexit2266:                                    ; preds = %bb.ct, %.thread2256, %bb.cq, %bb.cv
  %.11801 = phi i32 [ %i.tf, %bb.cq ], [ %i.tr, %bb.cv ], [ %.01800, %bb.ct ], [ %i.tz, %.thread2256 ]
  %.val2145 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.uc = getelementptr inbounds nuw i8, ptr %.val2145, i64 %i.sv
  %.0.copyload.i2238 = load i64, ptr %i.uc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2238) #7, !srcloc !21
  %i.ud = zext i32 %.11801 to i64
  %.val1949 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ue = getelementptr inbounds nuw i8, ptr %.val1949, i64 %i.ud
  store i64 %.0.copyload.i2238, ptr %i.ue, align 1
  %.val2004 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.uf = getelementptr inbounds nuw i8, ptr %.val2004, i64 %i.re
  %.0.copyload.i2239 = load i32, ptr %i.uf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2239) #7, !srcloc !13
  %i.ug = add i32 %.0.copyload.i2239, 1
  %.val2063 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.uh = getelementptr inbounds nuw i8, ptr %.val2063, i64 %i.re
  store i32 %i.ug, ptr %i.uh, align 1
  br label %bb.cw

bb.cw:                                            ; preds = %.loopexit2266, %bb.cp
  %i.ui = add i32 %.161843, 8                     ; 2 uses
  %.not1935 = icmp eq i32 %i.ui, %i.su
  br i1 %.not1935, label %.loopexit2267, label %bb.cp

.loopexit2267:                                    ; preds = %bb.cw, %bb.cn
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2227) #7
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cj, %.loopexit2267, %bb.ck
  %i.uj = zext i32 %i.pg to i64                   ; 2 uses
  %.val2003 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.uk = getelementptr inbounds nuw i8, ptr %.val2003, i64 %i.uj
  %.0.copyload.i2240 = load i32, ptr %i.uk, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2240) #7, !srcloc !13
  %.val2002 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ul = getelementptr inbounds nuw i8, ptr %.val2002, i64 %i.si
  %.0.copyload.i2241 = load i32, ptr %i.ul, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2241) #7, !srcloc !13
  %.val2001 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.um = getelementptr inbounds nuw i8, ptr %.val2001, i64 %i.pj
  %.0.copyload.i2242 = load i32, ptr %i.um, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2242) #7, !srcloc !13
  %i.un = add i32 %.0.copyload.i2242, -1          ; 3 uses
  %.val2000 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.uo = getelementptr inbounds nuw i8, ptr %.val2000, i64 %i.uj
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 4
  %.0.copyload.i2243 = load i32, ptr %i.up, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2243) #7, !srcloc !13
  %i.uq = and i32 %.0.copyload.i2243, %i.un       ; 3 uses
  %i.ur = shl i32 %i.uq, 3
  %i.us = add i32 %i.ur, %.0.copyload.i2241       ; 4 uses
  %i.ut = zext i32 %i.us to i64
  %.val1999 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.uu = getelementptr inbounds nuw i8, ptr %.val1999, i64 %i.ut
  %.0.copyload.i2244 = load i32, ptr %i.uu, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2244) #7, !srcloc !13
  %i.uv = icmp eq i32 %.0.copyload.i2240, %.0.copyload.i2244
  br i1 %i.uv, label %.loopexit2260, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.uw = icmp ult i32 %.0.copyload.i2240, 2
  br i1 %i.uw, label %.preheader, label %.preheader2261

.preheader2261:                                   ; preds = %bb.cy
end_hunk_6
begin_hunk_7_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSTypedArray0x3Cdouble0x2C0x200x28hermes0x3A0x3Avm0x3A0x3ACellKind0x29430x3E0x3A0x3A_getOwnIndexedImpl0x28hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x29:bb.a
  %i.t = xor i32 %.0.copyload.i75, %.0.copyload.i74
  %i.u = shl i32 %3, 3
  %i.v = add i32 %.0.copyload.i73, %i.u
  %i.w = add i32 %i.v, %i.t
  %i.x = zext i32 %i.w to i64
  %.val69 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %.val69, i64 %i.x
  %.0.copyload.i76 = load double, ptr %i.y, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i76) #7, !srcloc !36
  %i.z = bitcast double %.0.copyload.i76 to i64
  %i.aa = fcmp uno double %.0.copyload.i76, 0.000000e+00
  %i.ab = select i1 %i.aa, i64 9221120237041090560, i64 %i.z
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @w2c_hermes_hermes0x3A0x3Ahermes_fatal0x28char0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef 38573) #7
  tail call void @wasm_rt_trap(i32 noundef 5) #8
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.a, %bb.b, %bb.c
  %.058 = phi i64 [ -1688849860263936, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ %i.ab, %bb.e ]
  ret i64 %.058
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSString0x3A0x3A_setOwnIndexedImpl0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = add i32 %i.b, -16                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 15 uses
  %i.e = zext i32 %2 to i64
  %.val117 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %.val117, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !13
  %i.g = zext i32 %.0.copyload.i to i64
  %.val116 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val116, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %.0.copyload.i126 = load i32, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i126) #7, !srcloc !13
  %i.j = zext i32 %.0.copyload.i126 to i64
  %.val115 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %.val115, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.0.copyload.i127 = load i32, ptr %i.l, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i127) #7, !srcloc !13
  %i.m = and i32 %.0.copyload.i127, 2147483647
  %i.n = icmp ult i32 %4, %i.m
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = zext i32 %1 to i64                       ; 2 uses
  %.val124 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %.val124, i64 %i.o
  %.0.copyload.i128 = load i16, ptr %i.p, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i128) #7, !srcloc !25
  %i.q = and i16 %.0.copyload.i128, -512
  %i.r = or disjoint i16 %i.q, 1
  %.val123 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.s = getelementptr inbounds nuw i8, ptr %.val123, i64 %i.o
  store i16 %i.r, ptr %i.s, align 1
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.t = uitofp i32 %4 to double                  ; 2 uses
  %i.u = zext i32 %3 to i64
  %.val114 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %.val114, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %.0.copyload.i129 = load i32, ptr %i.w, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i129) #7, !srcloc !13
  %i.x = zext i32 %.0.copyload.i129 to i64        ; 2 uses
  %i.y = add nuw nsw i64 %i.x, 164                ; 2 uses
  %.val113 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %.val113, i64 %i.y
  %.0.copyload.i130 = load i32, ptr %i.z, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i130) #7, !srcloc !13
  %.val112 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %.val112, i64 %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 168
  %.0.copyload.i131 = load i32, ptr %i.ab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i131) #7, !srcloc !13
  %i.ac = icmp ult i32 %.0.copyload.i130, %.0.copyload.i131
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = add i32 %.0.copyload.i130, 8
  %.val122 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %.val122, i64 %i.y
  store i32 %i.ad, ptr %i.ae, align 1
  %i.af = zext i32 %.0.copyload.i130 to i64
  %.val125 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.val125, i64 %i.af
  store double %i.t, ptr %i.ag, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ah = bitcast double %i.t to i64
  %i.ai = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i129, i64 noundef %i.ah) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %.0.copyload.i130, %bb.d ], [ %i.ai, %bb.e ]
  %i.aj = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AvalueToSymbolID0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.0) #7
  %i.ak = zext i32 %i.aj to i64
  %.val = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ak
  %.0.copyload.i132 = load i32, ptr %i.al, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i132) #7, !srcloc !13
  %i.am = zext i32 %i.c to i64                    ; 4 uses
  %.val121 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %.val121, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 0, ptr %i.ao, align 1
  %.val120 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.val120, i64 %i.am
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 319, ptr %i.aq, align 1
  %.val119 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %.val119, i64 %i.am
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 319, ptr %i.as, align 1
  %.val118 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val118, i64 %i.am
  store i32 0, ptr %i.at, align 1
  %i.au = add i32 %i.b, -12
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AdefineOwnPropertyInternal0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3ADefinePropertyFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %.0.copyload.i132, i32 noundef %i.au, i32 noundef %5, i32 noundef %i.c) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  store i32 %i.b, ptr %i.a, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSString0x3A0x3A_haveOwnIndexedImpl0x28hermes0x3A0x3Avm0x3A0x3AJSObject0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x29(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = zext i32 %1 to i64
  %.val10 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %.val10, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !13
  %i.e = zext i32 %.0.copyload.i to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.0.copyload.i11 = load i32, ptr %i.g, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i11) #7, !srcloc !13
  %i.h = and i32 %.0.copyload.i11, 2147483647
  %i.i = icmp ugt i32 %i.h, %3
  %i.j = zext i1 %i.i to i32
  ret i32 %i.j
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSString0x3A0x3A_getOwnIndexedRangeImpl0x28hermes0x3A0x3Avm0x3A0x3AJSObject0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x29(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = zext i32 %2 to i64
  %.val16 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %.val16, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !13
  %i.e = zext i32 %.0.copyload.i to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.0.copyload.i19 = load i32, ptr %i.g, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i19) #7, !srcloc !13
  %i.h = zext i32 %1 to i64                       ; 2 uses
  %.val18 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %.val18, i64 %i.h
  store i32 0, ptr %i.i, align 1
  %i.j = and i32 %.0.copyload.i19, 2147483647
  %.val17 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %.val17, i64 %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %i.j, ptr %i.l, align 1
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"", !9, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !12, i64 32}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"_Bool", !5, i64 0}
!13 = !{i64 2152443924}
!14 = !{i64 2152446480}
!15 = !{!16, !4, i64 24}
!16 = !{!"w2c_hermes", !17, i64 0, !18, i64 8, !19, i64 16, !4, i64 24, !4, i64 28, !4, i64 32, !8, i64 40, !20, i64 80}
!17 = !{!"p1 _ZTS7w2c_env", !10, i64 0}
!18 = !{!"p1 _ZTS18w2c_hermes__import", !10, i64 0}
!19 = !{!"p1 _ZTS28w2c_wasi__snapshot__preview1", !10, i64 0}
!20 = !{!"", !10, i64 0, !4, i64 8, !4, i64 12}
!21 = !{i64 2152444350}
!22 = !{i64 2152445628}
!23 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!24 = !{i64 2152449482}
!25 = !{i64 2152448192}
!26 = !{!16, !4, i64 92}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = !{!16, !10, i64 80}
!29 = !{!30, !10, i64 8}
!30 = !{!"", !9, i64 0, !10, i64 8, !10, i64 16}
!31 = !{!9, !9, i64 0}
!32 = !{!30, !9, i64 0}
!33 = !{!"branch_weights", i32 4000000, i32 4001}
!34 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!35 = !{!30, !10, i64 16}
!36 = !{i64 2152445202}
!37 = !{i64 2152446906}
!38 = !{!16, !18, i64 8}
!39 = !{i64 2152447332}
!40 = !{i64 2152447762}
!41 = !{i64 2152449052}
!42 = !{!"branch_weights", i32 4001, i32 4000000}
!43 = !{i64 2152444776}
end_hunk_7
