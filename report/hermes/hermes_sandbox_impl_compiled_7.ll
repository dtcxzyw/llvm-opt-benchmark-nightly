inline.NumInlined: 10002
inline.NumDeleted: 29
begin_hunk_0_@w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Fgeneric_error_category0x3A0x3Amessage0x28int0x290x20const:bb.a
  %i.g = icmp ult i32 %3, 154
  %i.h = shl nuw nsw i32 %3, 1
  %i.i = add nuw i32 %i.h, 69104
  %i.j = select i1 %i.g, i32 %i.i, i32 69104
  %i.k = zext i32 %i.j to i64
  %.val385 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %.val385, i64 %i.k
  %.0.copyload.i386 = load i16, ptr %i.l, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i386) #13, !srcloc !35
  %i.m = zext i16 %.0.copyload.i386 to i32
  %i.n = add nuw nsw i32 %i.m, 67184              ; 3 uses
  %.val377 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %.val377, i64 273348
  %.0.copyload.i387 = load i32, ptr %i.o, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i387) #13, !srcloc !14
  %i.p = zext i32 %.0.copyload.i387 to i64
  %.val376 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %.val376, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %.0.copyload.i388 = load i32, ptr %i.r, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i388) #13, !srcloc !14
  %.not = icmp eq i32 %.0.copyload.i388, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = zext i32 %.0.copyload.i388 to i64        ; 2 uses
  %.val375 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %.val375, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %.0.copyload.i389 = load i32, ptr %i.u, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i389) #13, !srcloc !14
  %.val374 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %.val374, i64 %i.s
  %.0.copyload.i390 = load i32, ptr %i.v, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i390) #13, !srcloc !14
  %i.w = zext i32 %.0.copyload.i390 to i64        ; 4 uses
  %.val373 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %.val373, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.0.copyload.i391 = load i32, ptr %i.y, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i391) #13, !srcloc !14
  %.val372 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %.val372, i64 %i.w
  %.0.copyload.i392 = load i32, ptr %i.z, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i392) #13, !srcloc !14
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i391)
  %.not.i = icmp eq i32 %.0.copyload.i392, -1794895138 ; 7 uses
  %i.ab = select i1 %.not.i, i32 %.0.copyload.i391, i32 %i.aa ; 3 uses
  %.val371 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %.val371, i64 %i.w
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %.0.copyload.i393 = load i32, ptr %i.ad, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i393) #13, !srcloc !14
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i393)
  %i.af = select i1 %.not.i, i32 %.0.copyload.i393, i32 %i.ae ; 3 uses
  %.val370 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %.val370, i64 %i.w
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.0.copyload.i395 = load i32, ptr %i.ah, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i395) #13, !srcloc !14
  %i.ai = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i395)
  %i.aj = select i1 %.not.i, i32 %.0.copyload.i395, i32 %i.ai ; 3 uses
  %i.ak = lshr i32 %.0.copyload.i389, 2
  %.not352 = icmp ult i32 %i.ab, %i.ak
  br i1 %.not352, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.al = shl nuw i32 %i.ab, 2
  %i.am = sub i32 %.0.copyload.i389, %i.al        ; 2 uses
  %.not353 = icmp ult i32 %i.af, %i.am
  %.not354 = icmp ult i32 %i.aj, %i.am
  %or.cond = select i1 %.not353, i1 %.not354, i1 false
  br i1 %or.cond, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.an = or i32 %i.aj, %i.af
  %i.ao = and i32 %i.an, 3
  %.not355 = icmp eq i32 %i.ao, 0
  br i1 %.not355, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ap = and i32 %i.aj, -4
  %i.aq = zext nneg i32 %i.n to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.m, %bb.e
  %.0339 = phi i32 [ %i.ab, %bb.e ], [ %i.co, %bb.m ] ; 3 uses
  %.0338 = phi i32 [ 0, %bb.e ], [ %i.cp, %bb.m ] ; 2 uses
  %i.ar = lshr i32 %.0339, 1                      ; 3 uses
  %i.as = add i32 %.0338, %i.ar                   ; 2 uses
  %i.at = shl i32 %i.as, 3                        ; 2 uses
  %i.au = add i32 %i.at, %i.af
  %i.av = and i32 %i.au, -4
  %i.aw = add i32 %i.av, %.0.copyload.i390
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %.val369 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %.val369, i64 %i.ax
  %.0.copyload.i397 = load i32, ptr %i.ay, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i397) #13, !srcloc !14
  %i.az = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i397)
  %i.ba = select i1 %.not.i, i32 %.0.copyload.i397, i32 %i.az ; 2 uses
  %.val368 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %.val368, i64 %i.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %.0.copyload.i399 = load i32, ptr %i.bc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i399) #13, !srcloc !14
  %i.bd = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i399)
  %i.be = select i1 %.not.i, i32 %.0.copyload.i399, i32 %i.bd ; 3 uses
  %.not356 = icmp ugt i32 %.0.copyload.i389, %i.be
  %i.bf = sub nuw i32 %.0.copyload.i389, %i.be
  %.not357 = icmp ult i32 %i.ba, %i.bf
  %or.cond365 = select i1 %.not356, i1 %.not357, i1 false
  br i1 %or.cond365, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.bg = add i32 %i.be, %.0.copyload.i390        ; 3 uses
  %i.bh = add i32 %i.bg, %i.ba
  %i.bi = zext i32 %i.bh to i64
  %.val383 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %.val383, i64 %i.bi
  %.0.copyload.i401 = load i8, ptr %i.bj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i401) #13, !srcloc !31
  %.not358 = icmp eq i8 %.0.copyload.i401, 0
  br i1 %.not358, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.bk = zext i32 %i.bg to i64
  %.val53.i = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.bl = getelementptr inbounds nuw i8, ptr %.val53.i, i64 %i.bk
  %.0.copyload.i.i = load i8, ptr %i.bl, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i.i) #13, !srcloc !31
  %.val52.i = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %.val52.i, i64 %i.aq
  %.0.copyload.i54.i = load i8, ptr %i.bm, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i54.i) #13, !srcloc !31
  %.not.i402 = icmp ne i8 %.0.copyload.i54.i, 0
  %.not49.i = icmp eq i8 %.0.copyload.i.i, %.0.copyload.i54.i
  %or.cond.i = select i1 %.not.i402, i1 %.not49.i, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %w2c_hermes_strcmp.exit

.preheader.i:                                     ; preds = %bb.h, %bb.i
  %.044.i = phi i32 [ %i.bu, %bb.i ], [ %i.n, %bb.h ] ; 2 uses
  %.043.i = phi i32 [ %i.bt, %bb.i ], [ %i.bg, %bb.h ] ; 2 uses
  %i.bn = zext i32 %.043.i to i64
  %.val51.i = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.bo = getelementptr inbounds nuw i8, ptr %.val51.i, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %.0.copyload.i55.i = load i8, ptr %i.bp, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i55.i) #13, !srcloc !31
  %i.bq = zext i32 %.044.i to i64
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.br = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %.0.copyload.i56.i = load i8, ptr %i.bs, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i56.i) #13, !srcloc !31
  %.not50.i = icmp eq i8 %.0.copyload.i56.i, 0
  br i1 %.not50.i, label %w2c_hermes_strcmp.exit, label %bb.i

bb.i:                                             ; preds = %.preheader.i
  %i.bt = add i32 %.043.i, 1
  %i.bu = add i32 %.044.i, 1
  %i.bv = icmp eq i8 %.0.copyload.i55.i, %.0.copyload.i56.i
  br i1 %i.bv, label %.preheader.i, label %w2c_hermes_strcmp.exit

w2c_hermes_strcmp.exit:                           ; preds = %.preheader.i, %bb.i, %bb.h
  %.042.in.i = phi i8 [ %.0.copyload.i.i, %bb.h ], [ %.0.copyload.i55.i, %bb.i ], [ %.0.copyload.i55.i, %.preheader.i ] ; 2 uses
  %.0.shrunk.i = phi i8 [ %.0.copyload.i54.i, %bb.h ], [ 0, %.preheader.i ], [ %.0.copyload.i56.i, %bb.i ] ; 2 uses
  %.not359 = icmp eq i8 %.0.shrunk.i, %.042.in.i
  br i1 %.not359, label %bb.j, label %bb.l

bb.j:                                             ; preds = %w2c_hermes_strcmp.exit
  %i.bw = add i32 %i.ap, %.0.copyload.i390
  %i.bx = add i32 %i.bw, %i.at
  %i.by = zext i32 %i.bx to i64                   ; 2 uses
  %.val367 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %.val367, i64 %i.by
  %.0.copyload.i403 = load i32, ptr %i.bz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i403) #13, !srcloc !14
  %i.ca = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i403)
  %i.cb = select i1 %.not.i, i32 %.0.copyload.i403, i32 %i.ca ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.cc = getelementptr inbounds nuw i8, ptr %.val, i64 %i.by
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %.0.copyload.i405 = load i32, ptr %i.cd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i405) #13, !srcloc !14
  %i.ce = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i405)
  %i.cf = select i1 %.not.i, i32 %.0.copyload.i405, i32 %i.ce ; 3 uses
  %.not360 = icmp ugt i32 %.0.copyload.i389, %i.cf
  %i.cg = sub nuw i32 %.0.copyload.i389, %i.cf
  %.not361 = icmp ult i32 %i.cb, %i.cg
  %or.cond366 = select i1 %.not360, i1 %.not361, i1 false
  br i1 %or.cond366, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ch = add i32 %i.cf, %.0.copyload.i390
  %.fr = freeze i32 %i.ch                         ; 3 uses
  %i.ci = add i32 %.fr, %i.cb
  %i.cj = zext i32 %i.ci to i64
  %.val382 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ck = getelementptr inbounds nuw i8, ptr %.val382, i64 %i.cj
  %.0.copyload.i407 = load i8, ptr %i.ck, align 1
  %.0.copyload.i407.fr = freeze i8 %.0.copyload.i407 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i407.fr) #13, !srcloc !31
  %.not362 = icmp ne i8 %.0.copyload.i407.fr, 0
  %.not363 = icmp eq i32 %.fr, 0
  %or.cond421 = or i1 %.not363, %.not362
  br i1 %or.cond421, label %.thread, label %bb.n

bb.l:                                             ; preds = %w2c_hermes_strcmp.exit
  %i.cl = icmp eq i32 %.0339, 1
  br i1 %i.cl, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cm = sub i32 %.0339, %i.ar
  %i.cn = icmp ult i8 %.0.shrunk.i, %.042.in.i    ; 2 uses
  %i.co = select i1 %i.cn, i32 %i.ar, i32 %i.cm
  %i.cp = select i1 %i.cn, i32 %.0338, i32 %i.as
  br label %bb.f

.thread:                                          ; preds = %bb.g, %bb.f, %bb.l, %bb.a, %bb.k, %bb.d, %bb.c, %bb.b, %bb.j
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %.thread
  %i.cq = phi i32 [ %i.n, %.thread ], [ %.fr, %bb.k ] ; 7 uses
  %i.cr = and i32 %i.cq, 3
  %.not.i408 = icmp eq i32 %i.cr, 0
  br i1 %.not.i408, label %.loopexit70.i.preheader, label %bb.o

.loopexit70.i.preheader:                          ; preds = %.preheader69.i, %.preheader69.i.preheader, %bb.n
  %.2.i.ph = phi i32 [ %i.cq, %bb.n ], [ %i.cu, %.preheader69.i.preheader ], [ %i.cw, %.preheader69.i ]
  br label %.loopexit70.i

bb.o:                                             ; preds = %bb.n
  %i.cs = zext i32 %i.cq to i64
  %.val65.i = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ct = getelementptr inbounds nuw i8, ptr %.val65.i, i64 %i.cs
  %.0.copyload.i.i409 = load i8, ptr %i.ct, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i.i409) #13, !srcloc !31
  %.not58.i = icmp eq i8 %.0.copyload.i.i409, 0
  br i1 %.not58.i, label %w2c_hermes_strlen.exit.thread, label %.preheader69.i.preheader

.preheader69.i.preheader:                         ; preds = %bb.o
  %i.cu = add i32 %i.cq, 1                        ; 3 uses
  %i.cv = and i32 %i.cu, 3
  %.not59.i445 = icmp eq i32 %i.cv, 0
  br i1 %.not59.i445, label %.loopexit70.i.preheader, label %.lr.ph

.preheader69.i:                                   ; preds = %.lr.ph
  %i.cw = add i32 %i.cy, 1                        ; 3 uses
  %i.cx = and i32 %i.cw, 3
  %.not59.i = icmp eq i32 %i.cx, 0
  br i1 %.not59.i, label %.loopexit70.i.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader69.i.preheader, %.preheader69.i
  %i.cy = phi i32 [ %i.cw, %.preheader69.i ], [ %i.cu, %.preheader69.i.preheader ] ; 3 uses
  %i.cz = zext i32 %i.cy to i64
  %.val64.i = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.da = getelementptr inbounds nuw i8, ptr %.val64.i, i64 %i.cz
  %.0.copyload.i66.i = load i8, ptr %i.da, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i66.i) #13, !srcloc !31
  %.not60.i = icmp eq i8 %.0.copyload.i66.i, 0
  br i1 %.not60.i, label %w2c_hermes_strlen.exit, label %.preheader69.i

.loopexit70.i:                                    ; preds = %.loopexit70.i.preheader, %.loopexit70.i
  %.2.i = phi i32 [ %i.db, %.loopexit70.i ], [ %.2.i.ph, %.loopexit70.i.preheader ] ; 3 uses
  %i.db = add i32 %.2.i, 4
  %i.dc = zext i32 %.2.i to i64
  %.val.i411 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.dd = getelementptr inbounds nuw i8, ptr %.val.i411, i64 %i.dc
  %.0.copyload.i67.i = load i32, ptr %i.dd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i67.i) #13, !srcloc !14
  %i.de = sub i32 16843008, %.0.copyload.i67.i
  %i.df = or i32 %i.de, %.0.copyload.i67.i
  %i.dg = and i32 %i.df, -2139062144
  %.not61.i = icmp eq i32 %i.dg, -2139062144
  br i1 %.not61.i, label %.loopexit70.i, label %.preheader.i412

.preheader.i412:                                  ; preds = %.loopexit70.i, %.preheader.i412
  %.057.i = phi i32 [ %i.dh, %.preheader.i412 ], [ %.2.i, %.loopexit70.i ] ; 3 uses
  %i.dh = add i32 %.057.i, 1
  %i.di = zext i32 %.057.i to i64
  %.val63.i = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.dj = getelementptr inbounds nuw i8, ptr %.val63.i, i64 %i.di
  %.0.copyload.i68.i = load i8, ptr %i.dj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i68.i) #13, !srcloc !31
  %.not62.i = icmp eq i8 %.0.copyload.i68.i, 0
  br i1 %.not62.i, label %w2c_hermes_strlen.exit, label %.preheader.i412

w2c_hermes_strlen.exit:                           ; preds = %.lr.ph, %.preheader.i412
  %.3.i = phi i32 [ %.057.i, %.preheader.i412 ], [ %i.cy, %.lr.ph ]
  %i.dk = sub i32 %.3.i, %i.cq                    ; 2 uses
  %i.dl = icmp ult i32 %i.dk, 1024
  br i1 %i.dl, label %w2c_hermes_strlen.exit.thread, label %bb.p

bb.p:                                             ; preds = %w2c_hermes_strlen.exit
  %i.dm = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.cq, i32 noundef 1023) #13 ; 0 uses
  %i.dn = zext i32 %i.f to i64
  %.val384 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.do = getelementptr inbounds nuw i8, ptr %.val384, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1023
  store i8 0, ptr %i.dp, align 1
  tail call void @w2c_hermes_abort(ptr noundef nonnull %0) #13
  tail call void @wasm_rt_trap(i32 noundef 5) #14
  unreachable

w2c_hermes_strlen.exit.thread:                    ; preds = %bb.o, %w2c_hermes_strlen.exit
  %.056.i419 = phi i32 [ %i.dk, %w2c_hermes_strlen.exit ], [ 0, %bb.o ]
  %i.dq = add nuw nsw i32 %.056.i419, 1
  %i.dr = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.cq, i32 noundef %i.dq) #13 ; 0 uses
  %i.ds = zext i32 %i.f to i64                    ; 2 uses
  %.val381 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.dt = getelementptr inbounds nuw i8, ptr %.val381, i64 %i.ds
  %.0.copyload.i413 = load i8, ptr %i.dt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i413) #13, !srcloc !31
  %.not364 = icmp eq i8 %.0.copyload.i413, 0
  br i1 %.not364, label %bb.q, label %bb.r

bb.q:                                             ; preds = %w2c_hermes_strlen.exit.thread
  %i.du = zext i32 %i.c to i64
  %.val380 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.dv = getelementptr inbounds nuw i8, ptr %.val380, i64 %i.du
  store i32 %3, ptr %i.dv, align 1
  %i.dw = load i32, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.dx = add i32 %i.dw, -16                      ; 2 uses
  store i32 %i.dx, ptr %i.a, align 8, !tbaa !32
  %i.dy = zext i32 %i.dx to i64
  %.val115.i = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.dz = getelementptr inbounds nuw i8, ptr %.val115.i, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  store i32 %i.c, ptr %i.ea, align 1
  %i.eb = load i32, ptr %i.a, align 8, !tbaa !32
  %i.ec = add i32 %i.eb, -160                     ; 3 uses
  store i32 %i.ec, ptr %i.a, align 8, !tbaa !32
  %i.ed = zext i32 %i.ec to i64                   ; 2 uses
  %.val114.i = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ee = getelementptr inbounds nuw i8, ptr %.val114.i, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 148
  store i32 %i.f, ptr %i.ef, align 1
  %.val113.i = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.eg = getelementptr inbounds nuw i8, ptr %.val113.i, i64 %i.ed
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 152
  store i32 1023, ptr %i.eh, align 1
  %i.ei = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.ec, i32 noundef 0, i32 noundef 144) #13 ; 4 uses
  %i.ej = zext i32 %i.ei to i64                   ; 5 uses
  %.val112.i = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ek = getelementptr inbounds nuw i8, ptr %.val112.i, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 76
  store i32 -1, ptr %i.el, align 1
  %.val111.i = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.em = getelementptr inbounds nuw i8, ptr %.val111.i, i64 %i.ej
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 36
  store i32 28, ptr %i.en, align 1
  %.val110.i = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.eo = getelementptr inbounds nuw i8, ptr %.val110.i, i64 %i.ej
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 80
  store i32 -1, ptr %i.ep, align 1
  %i.eq = add i32 %i.ei, 159
  %.val109.i = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.er = getelementptr inbounds nuw i8, ptr %.val109.i, i64 %i.ej
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 44
  store i32 %i.eq, ptr %i.es, align 1
  %i.et = add i32 %i.ei, 148
  %.val108.i = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.eu = getelementptr inbounds nuw i8, ptr %.val108.i, i64 %i.ej
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 84
  store i32 %i.et, ptr %i.ev, align 1
  %.val116.i = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ew = getelementptr inbounds nuw i8, ptr %.val116.i, i64 %i.ds
  store i8 0, ptr %i.ew, align 1
  %i.ex = tail call i32 @w2c_hermes_0x5F_vfprintf_internal(ptr noundef nonnull %0, i32 noundef %i.ei, i32 noundef 55688, i32 noundef %i.c, i32 noundef 26, i32 noundef 27) #13 ; 0 uses
  store i32 %i.dw, ptr %i.a, align 8, !tbaa !32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %w2c_hermes_strlen.exit.thread
  %.val379 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ey = getelementptr inbounds nuw i8, ptr %.val379, i64 272032
  store i32 %.0.copyload.i, ptr %i.ey, align 1
  %i.ez = tail call i32 @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x3A0x3Abasic_string0x5Babi0x3Av150070x5D0x3Cstd0x3A0x3Anullptr_t0x3E0x28char0x20const0x2A0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.f) ; 0 uses
  store i32 %i.b, ptr %i.a, align 8, !tbaa !32
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Fdeque_base0x3Cstd0x3A0x3A_0x5F20x3A0x3Avector0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cstd0x3A0x3A_0x5F20x3A0x3Avector0x3Cchar16_t0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar16_t0x3E0x3E0x3E0x3E0x3A0x3Aclear0x280x29(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 18 uses
  %i.b = zext i32 %1 to i64                       ; 5 uses
  %i.c = add nuw nsw i64 %i.b, 8                  ; 3 uses
  %.val202 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %.val202, i64 %i.c
  %.0.copyload.i = load i32, ptr %i.d, align 1    ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #13, !srcloc !14
  %i.e = add nuw nsw i64 %i.b, 4                  ; 4 uses
  %.val201 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %.val201, i64 %i.e
  %.0.copyload.i207 = load i32, ptr %i.f, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i207) #13, !srcloc !14
  %i.g = icmp eq i32 %.0.copyload.i, %.0.copyload.i207
  br i1 %i.g, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val200 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %.val200, i64 %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
end_hunk_0
