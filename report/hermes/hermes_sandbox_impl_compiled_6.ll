inline.NumInlined: 8639
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 67
loop-unroll.NumUnrolled: 67
begin_hunk_0_@w2c_hermes_llvh0x3A0x3AStringMap0x3Chermes0x3A0x3Airgen0x3A0x3AESTreeIRGen0x3A0x3AgenObjectExpr0x28hermes0x3A0x3AESTree0x3A0x3AObjectExpressionNode0x2A0x290x3A0x3APropertyValue0x2C0x20llvh0x3A0x3AMallocAllocator0x3E0x3A0x3Aoperator0x5B0x5D0x28llvh0x3A0x3AStringRef0x29:bb.a
  %i.c = add i32 %i.b, -16                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 18 uses
  %i.e = zext i32 %i.c to i64                     ; 2 uses
  %.val180 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %.val180, i64 %i.e
  store i64 %2, ptr %i.f, align 1
  %.val179 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %.val179, i64 %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %2, ptr %i.h, align 1
  %i.i = tail call i32 @w2c_hermes_llvh0x3A0x3AStringMapImpl0x3A0x3ALookupBucketFor0x28llvh0x3A0x3AStringRef0x29(ptr noundef %0, i32 noundef %1, i32 noundef %i.c) ; 2 uses
  %i.j = zext i32 %1 to i64                       ; 4 uses
  %.val171 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %.val171, i64 %i.j
  %.0.copyload.i = load i32, ptr %i.k, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.l = shl i32 %i.i, 2
  %i.m = add i32 %.0.copyload.i, %i.l             ; 2 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %.val170 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %.val170, i64 %i.n
  %.0.copyload.i181 = load i32, ptr %i.o, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i181) #8, !srcloc !14
  switch i32 %.0.copyload.i181, label %.preheader [
    i32 -4, label %bb.c
    i32 0, label %bb.d
  ]

.preheader:                                       ; preds = %bb.a, %bb.b
  %.0161 = phi i32 [ %i.r, %bb.b ], [ %i.m, %bb.a ] ; 2 uses
  %.0 = phi i32 [ %.0.copyload.i182, %bb.b ], [ %.0.copyload.i181, %bb.a ]
  %.pre = zext i32 %.0161 to i64                  ; 2 uses
  switch i32 %.0, label %.loopexit [
    i32 -4, label %bb.b
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %.preheader, %.preheader
  %.val169 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %.val169, i64 %.pre
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.0.copyload.i182 = load i32, ptr %i.q, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i182) #8, !srcloc !14
  %i.r = add i32 %.0161, 4
  br label %.preheader

bb.c:                                             ; preds = %bb.a
  %i.s = add nuw nsw i64 %i.j, 12                 ; 2 uses
  %.val168 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %.val168, i64 %i.s
  %.0.copyload.i183 = load i32, ptr %i.t, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i183) #8, !srcloc !14
  %i.u = add i32 %.0.copyload.i183, -1
  %.val176 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %.val176, i64 %i.s
  store i32 %i.u, ptr %i.v, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %i.w = lshr i64 %2, 32                          ; 2 uses
  %i.x = trunc nuw i64 %i.w to i32                ; 4 uses
  %i.y = add i32 %i.x, 25
  %i.z = tail call i32 @w2c_hermes_dlmalloc(ptr noundef nonnull %0, i32 noundef %i.y) #8 ; 4 uses
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef 54812)
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aa = zext i32 %i.z to i64                    ; 4 uses
  %.val178 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %.val178, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i64 0, ptr %i.ac, align 1
  %.val175 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.val175, i64 %i.aa
  store i32 %i.x, ptr %i.ad, align 1
  %.val177 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %.val177, i64 %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i64 0, ptr %i.af, align 1
  %.val174 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %.val174, i64 %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  store i32 0, ptr %i.ah, align 1
  %i.ai = add i32 %i.z, 24                        ; 2 uses
  %.not163 = icmp eq i64 %i.w, 0
  br i1 %.not163, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = trunc i64 %2 to i32
  %i.ak = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.ai, i32 noundef %i.aj, i32 noundef %i.x) #8 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = add i32 %i.ai, %i.x
  %i.am = zext i32 %i.al to i64
  %.val = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 %i.am
  store i8 0, ptr %i.an, align 1
  %.val173 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %.val173, i64 %i.n
  store i32 %i.z, ptr %i.ao, align 1
  %i.ap = add nuw nsw i64 %i.j, 8                 ; 2 uses
  %.val167 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %.val167, i64 %i.ap
  %.0.copyload.i184 = load i32, ptr %i.aq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i184) #8, !srcloc !14
  %i.ar = add i32 %.0.copyload.i184, 1
  %.val172 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %.val172, i64 %i.ap
  store i32 %i.ar, ptr %i.as, align 1
  %i.at = tail call i32 @w2c_hermes_llvh0x3A0x3AStringMapImpl0x3A0x3ARehashTable0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.i)
  %.val166 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %.val166, i64 %i.j
  %.0.copyload.i185 = load i32, ptr %i.au, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i185) #8, !srcloc !14
  %i.av = shl i32 %i.at, 2
  %i.aw = add i32 %.0.copyload.i185, %i.av
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.1 = phi i32 [ %i.aw, %bb.h ], [ %i.az, %bb.j ] ; 2 uses
  %i.ax = zext i32 %.1 to i64                     ; 2 uses
  %.val165 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %.val165, i64 %i.ax
  %.0.copyload.i186 = load i32, ptr %i.ay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i186) #8, !srcloc !14
  switch i32 %.0.copyload.i186, label %.loopexit [
    i32 -4, label %bb.j
    i32 0, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.az = add i32 %.1, 4
  br label %bb.i

.loopexit:                                        ; preds = %bb.i, %.preheader
  %.pre-phi = phi i64 [ %.pre, %.preheader ], [ %i.ax, %bb.i ]
  %.val164 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %.val164, i64 %.pre-phi
  %.0.copyload.i187 = load i32, ptr %i.ba, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i187) #8, !srcloc !14
  store i32 %i.b, ptr %i.a, align 8, !tbaa !15
  %i.bb = add i32 %.0.copyload.i187, 4
  ret i32 %i.bb
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_llvh0x3A0x3AStringMapImpl0x3A0x3ALookupBucketFor0x28llvh0x3A0x3AStringRef0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 28 uses
  %i.b = zext i32 %1 to i64                       ; 5 uses
  %i.c = add nuw nsw i64 %i.b, 4                  ; 2 uses
  %.val306 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %.val306, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %.not = icmp eq i32 %.0.copyload.i, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.val311 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %.val311, i64 %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 0, ptr %i.f, align 1
  %i.g = tail call i32 @w2c_hermes_dlcalloc(ptr noundef nonnull %0, i32 noundef 17, i32 noundef 8) #8 ; 3 uses
  %.not284 = icmp eq i32 %i.g, 0
  br i1 %.not284, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef 54812)
  unreachable

bb.d:                                             ; preds = %bb.b
  %.val310 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val310, i64 %i.c
  store i32 16, ptr %i.h, align 1
  %.val309 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %.val309, i64 %i.b
  store i32 %i.g, ptr %i.i, align 1
  %i.j = zext i32 %i.g to i64
  %.val308 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %.val308, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i32 2, ptr %i.l, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.0277 = phi i32 [ 16, %bb.d ], [ %.0.copyload.i, %bb.a ] ; 2 uses
  %i.m = zext i32 %2 to i64
  %.val312 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %.val312, i64 %i.m
  %.0.copyload.i313 = load i64, ptr %i.n, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i313) #8, !srcloc !33
  %i.o = trunc i64 %.0.copyload.i313 to i32       ; 6 uses
  %i.p = lshr i64 %.0.copyload.i313, 32           ; 2 uses
  %i.q = trunc nuw i64 %i.p to i32                ; 6 uses
  %.not285 = icmp eq i64 %i.p, 0                  ; 2 uses
  br i1 %.not285, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = and i32 %i.q, 7                          ; 2 uses
  %i.s = icmp ult i64 %.0.copyload.i313, 34359738368
  br i1 %i.s, label %.loopexit335, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = and i32 %i.q, -8
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.0278 = phi i32 [ 0, %bb.g ], [ %i.bj, %bb.h ]
  %.0273 = phi i32 [ 0, %bb.g ], [ %i.bh, %bb.h ]
  %.0 = phi i32 [ %i.o, %bb.g ], [ %i.bi, %bb.h ] ; 2 uses
  %i.u = zext i32 %.0 to i64                      ; 8 uses
  %.val300 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %.val300, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 7
  %.0.copyload.i314 = load i8, ptr %i.w, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i314) #8, !srcloc !13
  %i.x = zext i8 %.0.copyload.i314 to i32
  %.val299 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %.val299, i64 %i.u
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %.0.copyload.i315 = load i8, ptr %i.z, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i315) #8, !srcloc !13
  %i.aa = zext i8 %.0.copyload.i315 to i32
  %.val298 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %.val298, i64 %i.u
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 5
  %.0.copyload.i316 = load i8, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i316) #8, !srcloc !13
  %i.ad = zext i8 %.0.copyload.i316 to i32
  %.val297 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %.val297, i64 %i.u
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %.0.copyload.i317 = load i8, ptr %i.af, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i317) #8, !srcloc !13
  %i.ag = zext i8 %.0.copyload.i317 to i32
  %.val296 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.val296, i64 %i.u
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 3
  %.0.copyload.i318 = load i8, ptr %i.ai, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i318) #8, !srcloc !13
  %i.aj = zext i8 %.0.copyload.i318 to i32
  %.val295 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val295, i64 %i.u
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %.0.copyload.i319 = load i8, ptr %i.al, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i319) #8, !srcloc !13
  %i.am = zext i8 %.0.copyload.i319 to i32
  %.val294 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %.val294, i64 %i.u
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %.0.copyload.i320 = load i8, ptr %i.ao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i320) #8, !srcloc !13
  %i.ap = zext i8 %.0.copyload.i320 to i32
  %.val293 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %.val293, i64 %i.u
  %.0.copyload.i321 = load i8, ptr %i.aq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i321) #8, !srcloc !13
  %i.ar = zext i8 %.0.copyload.i321 to i32
  %i.as = mul i32 %.0273, 33
  %i.at = add i32 %i.as, %i.ar
  %i.au = mul i32 %i.at, 33
  %i.av = add i32 %i.au, %i.ap
  %i.aw = mul i32 %i.av, 33
  %i.ax = add i32 %i.aw, %i.am
  %i.ay = mul i32 %i.ax, 33
  %i.az = add i32 %i.ay, %i.aj
  %i.ba = mul i32 %i.az, 33
  %i.bb = add i32 %i.ba, %i.ag
  %i.bc = mul i32 %i.bb, 33
  %i.bd = add i32 %i.bc, %i.ad
  %i.be = mul i32 %i.bd, 33
  %i.bf = add i32 %i.be, %i.aa
  %i.bg = mul i32 %i.bf, 33
  %i.bh = add i32 %i.bg, %i.x                     ; 2 uses
  %i.bi = add i32 %.0, 8                          ; 2 uses
  %i.bj = add nuw i32 %.0278, 8                   ; 2 uses
  %.not286 = icmp eq i32 %i.bj, %i.t
  br i1 %.not286, label %.loopexit335, label %bb.h

.loopexit335:                                     ; preds = %bb.h, %bb.f
  %.1274 = phi i32 [ 0, %bb.f ], [ %i.bh, %bb.h ] ; 2 uses
  %.0270 = phi i32 [ %i.o, %bb.f ], [ %i.bi, %bb.h ]
  %.not287 = icmp eq i32 %i.r, 0
  br i1 %.not287, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit335, %.preheader
  %.0279 = phi i32 [ %i.bq, %.preheader ], [ 0, %.loopexit335 ]
  %.2275 = phi i32 [ %i.bo, %.preheader ], [ %.1274, %.loopexit335 ]
  %.1271 = phi i32 [ %i.bp, %.preheader ], [ %.0270, %.loopexit335 ] ; 2 uses
  %i.bk = zext i32 %.1271 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bk
  %.0.copyload.i322 = load i8, ptr %i.bl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i322) #8, !srcloc !13
  %i.bm = zext i8 %.0.copyload.i322 to i32
  %i.bn = mul i32 %.2275, 33
  %i.bo = add i32 %i.bn, %i.bm                    ; 2 uses
  %i.bp = add i32 %.1271, 1
  %i.bq = add nuw nsw i32 %.0279, 1               ; 2 uses
  %.not288 = icmp eq i32 %i.bq, %i.r
  br i1 %.not288, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %.loopexit335, %bb.e
  %.3276 = phi i32 [ 0, %bb.e ], [ %.1274, %.loopexit335 ], [ %i.bo, %.preheader ] ; 5 uses
  %i.br = add i32 %.0277, -1                      ; 2 uses
  %.val305 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %.val305, i64 %i.b
  %.0.copyload.i323 = load i32, ptr %i.bs, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i323) #8, !srcloc !14
  %i.bt = shl i32 %.0277, 2
  %i.bu = add i32 %i.bt, 4
  %i.bv = add i32 %i.bu, %.0.copyload.i323        ; 3 uses
  %.val304 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %.val304, i64 %i.b
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %.0.copyload.i324 = load i32, ptr %i.bx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i324) #8, !srcloc !14
  %i.by = icmp ugt i64 %.0.copyload.i313, 17179869183
  br i1 %.not285, label %.split.us, label %.split

.split.us:                                        ; preds = %.loopexit, %w2c_hermes_memcmp.exit.us
  %.1280.us = phi i32 [ %i.cl, %w2c_hermes_memcmp.exit.us ], [ 1, %.loopexit ] ; 2 uses
  %.2272.us = phi i32 [ %.3.us, %w2c_hermes_memcmp.exit.us ], [ -1, %.loopexit ] ; 5 uses
  %.1.us = phi i32 [ %i.cm, %w2c_hermes_memcmp.exit.us ], [ %.3276, %.loopexit ]
  %i.bz = and i32 %.1.us, %i.br                   ; 5 uses
  %i.ca = shl i32 %i.bz, 2                        ; 2 uses
  %i.cb = add i32 %i.ca, %.0.copyload.i323
  %i.cc = zext i32 %i.cb to i64
  %.val303.us = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cd = getelementptr inbounds nuw i8, ptr %.val303.us, i64 %i.cc
  %.0.copyload.i325.us = load i32, ptr %i.cd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i325.us) #8, !srcloc !14
  switch i32 %.0.copyload.i325.us, label %bb.j [
    i32 0, label %.split350.us
    i32 -4, label %bb.i
  ]

bb.i:                                             ; preds = %.split.us
  %i.ce = icmp eq i32 %.2272.us, -1
  %i.cf = select i1 %i.ce, i32 %i.bz, i32 %.2272.us
  br label %w2c_hermes_memcmp.exit.us

bb.j:                                             ; preds = %.split.us
  %i.cg = add i32 %i.ca, %i.bv
  %i.ch = zext i32 %i.cg to i64
  %.val302.us = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %.val302.us, i64 %i.ch
  %.0.copyload.i326.us = load i32, ptr %i.ci, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i326.us) #8, !srcloc !14
  %.not290.us = icmp eq i32 %.0.copyload.i326.us, %.3276
  br i1 %.not290.us, label %bb.k, label %w2c_hermes_memcmp.exit.us

bb.k:                                             ; preds = %bb.j
  %i.cj = zext i32 %.0.copyload.i325.us to i64
  %.val301.us = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %.val301.us, i64 %i.cj
  %.0.copyload.i327.us = load i32, ptr %i.ck, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i327.us) #8, !srcloc !14
  %.not291.us = icmp eq i32 %.0.copyload.i327.us, 0
  br i1 %.not291.us, label %w2c_hermes_memcmp.exit.thread, label %w2c_hermes_memcmp.exit.us

w2c_hermes_memcmp.exit.us:                        ; preds = %bb.k, %bb.j, %bb.i
  %.3.us = phi i32 [ %i.cf, %bb.i ], [ %.2272.us, %bb.j ], [ %.2272.us, %bb.k ]
  %i.cl = add i32 %.1280.us, 1
  %i.cm = add i32 %i.bz, %.1280.us
  br label %.split.us

.split:                                           ; preds = %.loopexit, %w2c_hermes_memcmp.exit
  %.1280 = phi i32 [ %i.ds, %w2c_hermes_memcmp.exit ], [ 1, %.loopexit ] ; 2 uses
  %.2272 = phi i32 [ %.3, %w2c_hermes_memcmp.exit ], [ -1, %.loopexit ] ; 6 uses
  %.1 = phi i32 [ %i.dt, %w2c_hermes_memcmp.exit ], [ %.3276, %.loopexit ]
  %i.cn = and i32 %.1, %i.br                      ; 6 uses
  %i.co = shl i32 %i.cn, 2                        ; 2 uses
  %i.cp = add i32 %i.co, %.0.copyload.i323
  %i.cq = zext i32 %i.cp to i64
  %.val303 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %.val303, i64 %i.cq
  %.0.copyload.i325 = load i32, ptr %i.cr, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i325) #8, !srcloc !14
  switch i32 %.0.copyload.i325, label %bb.m [
    i32 0, label %.split350.us
    i32 -4, label %bb.l
  ]

bb.l:                                             ; preds = %.split
  %i.cs = icmp eq i32 %.2272, -1
  %i.ct = select i1 %i.cs, i32 %i.cn, i32 %.2272
  br label %w2c_hermes_memcmp.exit

bb.m:                                             ; preds = %.split
  %i.cu = add i32 %i.co, %i.bv
  %i.cv = zext i32 %i.cu to i64
  %.val302 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cw = getelementptr inbounds nuw i8, ptr %.val302, i64 %i.cv
  %.0.copyload.i326 = load i32, ptr %i.cw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i326) #8, !srcloc !14
  %.not290 = icmp eq i32 %.0.copyload.i326, %.3276
  br i1 %.not290, label %bb.n, label %w2c_hermes_memcmp.exit

bb.n:                                             ; preds = %bb.m
  %i.cx = zext i32 %.0.copyload.i325 to i64
  %.val301 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.cy = getelementptr inbounds nuw i8, ptr %.val301, i64 %i.cx
  %.0.copyload.i327 = load i32, ptr %i.cy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i327) #8, !srcloc !14
  %.not291 = icmp eq i32 %.0.copyload.i327, %i.q
  br i1 %.not291, label %bb.o, label %w2c_hermes_memcmp.exit

bb.o:                                             ; preds = %bb.n
  %i.cz = add i32 %.0.copyload.i325, %.0.copyload.i324 ; 4 uses
  br i1 %i.by, label %bb.p, label %.loopexit91.i.preheader

bb.p:                                             ; preds = %bb.o
  %i.da = or i32 %i.cz, %i.o
  %i.db = and i32 %i.da, 3
  %.not.i = icmp eq i32 %i.db, 0
  br i1 %.not.i, label %.preheader.i, label %.loopexit91.i.preheader

.preheader.i:                                     ; preds = %bb.p, %bb.q
  %.071.i = phi i32 [ %i.dh, %bb.q ], [ %i.o, %bb.p ] ; 3 uses
  %.067.i = phi i32 [ %i.dg, %bb.q ], [ %i.cz, %bb.p ] ; 3 uses
  %.066.i = phi i32 [ %i.di, %bb.q ], [ %i.q, %bb.p ] ; 2 uses
  %i.dc = zext i32 %.071.i to i64
  %.val87.i = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dd = getelementptr inbounds nuw i8, ptr %.val87.i, i64 %i.dc
  %.0.copyload.i.i = load i32, ptr %i.dd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i.i) #8, !srcloc !14
  %i.de = zext i32 %.067.i to i64
  %.val86.i = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.df = getelementptr inbounds nuw i8, ptr %.val86.i, i64 %i.de
  %.0.copyload.i88.i = load i32, ptr %i.df, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i88.i) #8, !srcloc !14
  %.not82.i = icmp eq i32 %.0.copyload.i.i, %.0.copyload.i88.i
  br i1 %.not82.i, label %bb.q, label %.loopexit91.i.preheader

bb.q:                                             ; preds = %.preheader.i
  %i.dg = add i32 %.067.i, 4                      ; 2 uses
  %i.dh = add i32 %.071.i, 4                      ; 2 uses
  %i.di = add i32 %.066.i, -4                     ; 4 uses
  %i.dj = icmp ugt i32 %i.di, 3
  br i1 %i.dj, label %.preheader.i, label %.loopexit92.i

.loopexit92.i:                                    ; preds = %bb.q
  %.not83.i = icmp eq i32 %i.di, 0
  br i1 %.not83.i, label %w2c_hermes_memcmp.exit.thread, label %.loopexit91.i.preheader

.loopexit91.i.preheader:                          ; preds = %.preheader.i, %bb.o, %.loopexit92.i, %bb.p
  %.374.i.ph = phi i32 [ %i.o, %bb.p ], [ %i.o, %bb.o ], [ %i.dh, %.loopexit92.i ], [ %.071.i, %.preheader.i ]
  %.370.i.ph = phi i32 [ %i.cz, %bb.p ], [ %i.cz, %bb.o ], [ %i.dg, %.loopexit92.i ], [ %.067.i, %.preheader.i ]
  %.3.i.ph = phi i32 [ %i.q, %bb.p ], [ %i.q, %bb.o ], [ %i.di, %.loopexit92.i ], [ %.066.i, %.preheader.i ]
  br label %.loopexit91.i

.loopexit91.i:                                    ; preds = %.loopexit91.i.preheader, %bb.r
  %.374.i = phi i32 [ %i.dq, %bb.r ], [ %.374.i.ph, %.loopexit91.i.preheader ] ; 2 uses
  %.370.i = phi i32 [ %i.dp, %bb.r ], [ %.370.i.ph, %.loopexit91.i.preheader ] ; 2 uses
  %.3.i = phi i32 [ %i.dr, %bb.r ], [ %.3.i.ph, %.loopexit91.i.preheader ]
  %i.dk = zext i32 %.374.i to i64
  %.val85.i = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dl = getelementptr inbounds nuw i8, ptr %.val85.i, i64 %i.dk
  %.0.copyload.i89.i = load i8, ptr %i.dl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i89.i) #8, !srcloc !13
  %i.dm = zext i32 %.370.i to i64
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dn = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.dm
  %.0.copyload.i90.i = load i8, ptr %i.dn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i90.i) #8, !srcloc !13
  %i.do = icmp eq i8 %.0.copyload.i89.i, %.0.copyload.i90.i
  br i1 %i.do, label %bb.r, label %w2c_hermes_memcmp.exit

bb.r:                                             ; preds = %.loopexit91.i
  %i.dp = add i32 %.370.i, 1
  %i.dq = add i32 %.374.i, 1
  %i.dr = add i32 %.3.i, -1                       ; 2 uses
  %.not84.i = icmp eq i32 %i.dr, 0
  br i1 %.not84.i, label %w2c_hermes_memcmp.exit.thread, label %.loopexit91.i

w2c_hermes_memcmp.exit:                           ; preds = %.loopexit91.i, %bb.n, %bb.m, %bb.l
  %.3 = phi i32 [ %i.ct, %bb.l ], [ %.2272, %bb.m ], [ %.2272, %bb.n ], [ %.2272, %.loopexit91.i ]
  %i.ds = add i32 %.1280, 1
  %i.dt = add i32 %i.cn, %.1280
  br label %.split

.split350.us:                                     ; preds = %.split, %.split.us
  %.us-phi = phi i32 [ %.2272.us, %.split.us ], [ %.2272, %.split ] ; 2 uses
  %.us-phi351 = phi i32 [ %i.bz, %.split.us ], [ %i.cn, %.split ]
  %i.du = icmp eq i32 %.us-phi, -1
  %i.dv = select i1 %i.du, i32 %.us-phi351, i32 %.us-phi ; 2 uses
  %i.dw = shl i32 %i.dv, 2
  %i.dx = add i32 %i.dw, %i.bv
  %i.dy = zext i32 %i.dx to i64
  %.val307 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.dz = getelementptr inbounds nuw i8, ptr %.val307, i64 %i.dy
  store i32 %.3276, ptr %i.dz, align 1
  br label %w2c_hermes_memcmp.exit.thread

w2c_hermes_memcmp.exit.thread:                    ; preds = %.loopexit92.i, %bb.r, %bb.k, %.split350.us
  %.2 = phi i32 [ %i.dv, %.split350.us ], [ %i.cn, %bb.r ], [ %i.bz, %bb.k ], [ %i.cn, %.loopexit92.i ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_llvh0x3A0x3AStringMapImpl0x3A0x3ARehashTable0x28unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 17 uses
  %i.b = zext i32 %1 to i64                       ; 8 uses
  %.val225 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %.val225, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !14
  %i.d = add nuw nsw i64 %i.b, 4                  ; 3 uses
  %.val224 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %.val224, i64 %i.d
  %.0.copyload.i232 = load i32, ptr %i.e, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i232) #8, !srcloc !14
  %i.f = mul i32 %.0.copyload.i232, 3
  %.val223 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %.val223, i64 %i.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.0.copyload.i233 = load i32, ptr %i.h, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i233) #8, !srcloc !14
  %i.i = shl i32 %.0.copyload.i233, 2
  %i.j = icmp ult i32 %i.f, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = shl i32 %.0.copyload.i232, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.val222 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %.val222, i64 %i.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %.0.copyload.i234 = load i32, ptr %i.m, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i234) #8, !srcloc !14
  %i.n = add i32 %.0.copyload.i233, %.0.copyload.i234
  %i.o = sub i32 %.0.copyload.i232, %i.n
  %i.p = lshr i32 %.0.copyload.i232, 3
  %.not = icmp ugt i32 %i.o, %i.p
  br i1 %.not, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0206 = phi i32 [ %i.k, %bb.b ], [ %.0.copyload.i232, %bb.c ] ; 4 uses
  %i.q = add i32 %.0206, 1
  %i.r = tail call i32 @w2c_hermes_dlcalloc(ptr noundef nonnull %0, i32 noundef %i.q, i32 noundef 8) #8 ; 5 uses
  %.not211 = icmp eq i32 %i.r, 0
  br i1 %.not211, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef 54812)
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.s = shl i32 %.0206, 2
  %i.t = add i32 %i.r, %i.s                       ; 2 uses
  %i.u = zext i32 %i.t to i64
  %.val231 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %.val231, i64 %i.u
  store i32 2, ptr %i.v, align 1
  %.val221 = load ptr, ptr %i.a, align 8, !tbaa !7
end_hunk_0
