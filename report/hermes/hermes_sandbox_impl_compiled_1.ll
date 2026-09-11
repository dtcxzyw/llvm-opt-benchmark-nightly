Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_1?download=true
inline.NumInlined: 26868
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Abigint0x3A0x3Asubtract0x28hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x29:bb.a
  %i.cw = getelementptr inbounds nuw i8, ptr %.val441, i64 %i.cv
  %.0.copyload.i482 = load i32, ptr %i.cw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i482) #7, !srcloc !19
  %i.cx = shl i32 %.0.copyload.i482, 3            ; 5 uses
  %.not437 = icmp eq i32 %i.cx, 0
  br i1 %.not437, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %.val, i64 %i.p
  %.0.copyload.i483 = load i32, ptr %i.cy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i483) #7, !srcloc !19
  %i.cz = add i32 %i.cx, -1                       ; 2 uses
  %i.da = add i32 %.0.copyload.i483, %i.cz
  %i.db = zext i32 %i.da to i64
  %.val466 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dc = getelementptr inbounds nuw i8, ptr %.val466, i64 %i.db
  %.0.copyload.i484 = load i8, ptr %i.dc, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i484) #7, !srcloc !21
  %i.dd = zext i8 %.0.copyload.i484 to i32
  %sext = shl nuw i32 %i.dd, 24
  %i.de = ashr i32 %sext, 31                      ; 3 uses
  %i.df = trunc nsw i32 %i.de to i8
  %.not438 = icmp eq i8 %.0.copyload.i484, %i.df
  br i1 %.not438, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.dg = zext i32 %i.cz to i64
  %i.dh = add i32 %.0.copyload.i483, -1
  br label %bb.t

bb.s:                                             ; preds = %bb.t
  %i.di = add nsw i64 %.3511, -1                  ; 2 uses
  %i.dj = add i32 %.0414510, -1
  %.not439 = icmp eq i64 %i.di, 0
  br i1 %.not439, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.3511 = phi i64 [ %i.dg, %bb.r ], [ %i.di, %bb.s ] ; 2 uses
  %.0414510 = phi i32 [ %i.cx, %bb.r ], [ %i.dj, %bb.s ] ; 2 uses
  %i.dk = trunc nuw i64 %.3511 to i32             ; 2 uses
  %i.dl = add i32 %i.dh, %i.dk
  %i.dm = zext i32 %i.dl to i64
  %.val465 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %.val465, i64 %i.dm
  %.0.copyload.i485 = load i8, ptr %i.dn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i485) #7, !srcloc !21
  %i.do = icmp eq i8 %.0.copyload.i484, %.0.copyload.i485
  br i1 %i.do, label %bb.s, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dp = zext i8 %.0.copyload.i485 to i32
  %sext440 = shl nuw i32 %i.dp, 24
  %i.dq = ashr i32 %sext440, 31
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %bb.q, %bb.u
  %.1416 = phi i32 [ %.0414510, %bb.u ], [ %i.cx, %bb.q ], [ 1, %bb.s ]
  %.1413 = phi i32 [ %i.dk, %bb.u ], [ %i.cx, %bb.q ], [ 0, %bb.s ]
  %.2 = phi i32 [ %i.dq, %bb.u ], [ %i.de, %bb.q ], [ 0, %bb.s ]
  %i.dr = icmp eq i32 %.2, %i.de
  %i.ds = select i1 %i.dr, i32 %.1413, i32 %.1416
  %i.dt = add i32 %i.ds, 7
  %i.du = lshr i32 %i.dt, 3
  br label %bb.v

bb.v:                                             ; preds = %.loopexit, %bb.p
  %.2417 = phi i32 [ %i.du, %.loopexit ], [ 0, %bb.p ]
  %.val448 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dv = getelementptr inbounds nuw i8, ptr %.val448, i64 %i.cv
  store i32 %.2417, ptr %i.dv, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.d, %bb.a, %bb.v
  %.0418 = phi i32 [ 1, %bb.a ], [ 1, %bb.d ], [ 0, %bb.v ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret i32 %.0418
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3AnegateAdditiveOpPostProcess0x28hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x260x29(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %.val11 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val11, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %.val10 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %.val10, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.0.copyload.i12 = load i32, ptr %i.e, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i12) #7, !srcloc !19
  %i.f = zext i32 %.0.copyload.i12 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %i.f
  %.0.copyload.i13 = load i32, ptr %i.g, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i13) #7, !srcloc !19
  tail call void @w2c_hermes_llvh0x3A0x3AAPInt0x3A0x3AtcNegate0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20int0x29(ptr noundef %0, i32 noundef %.0.copyload.i, i32 noundef %.0.copyload.i13) #7
  ret void
}

declare void @w2c_hermes_0x5F_cxxabiv10x3A0x3A_0x5Fshim_type_info0x3A0x3Anoop10x280x290x20const(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @w2c_hermes_hermes0x3A0x3Abigint0x3A0x3Aadd0x28hermes0x3A0x3Abigint0x3A0x3AMutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 24 uses
  %i.b = zext i32 %1 to i64
  %.val417 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val417, i64 %i.b
  %.0.copyload.i = load i64, ptr %i.c, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #7, !srcloc !20
  %i.d = lshr i64 %.0.copyload.i, 32              ; 6 uses
  %.val405 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %.val405, i64 %i.d
  %.0.copyload.i424 = load i32, ptr %i.e, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i424) #7, !srcloc !19
  %i.f = zext i32 %2 to i64                       ; 2 uses
  %.val416 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %.val416, i64 %i.f
  %.0.copyload.i425 = load i64, ptr %i.g, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i425) #7, !srcloc !20
  %i.h = zext i32 %3 to i64                       ; 2 uses
  %.val415 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val415, i64 %i.h
  %.0.copyload.i426 = load i64, ptr %i.i, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i426) #7, !srcloc !20
  %.val404 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val404, i64 %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.0.copyload.i427 = load i32, ptr %i.k, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i427) #7, !srcloc !19
  %.val403 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val403, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.0.copyload.i428 = load i32, ptr %i.m, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i428) #7, !srcloc !19
  %i.n = icmp ugt i32 %.0.copyload.i427, %.0.copyload.i428 ; 2 uses
  %i.o = select i1 %i.n, i64 %.0.copyload.i425, i64 %.0.copyload.i426 ; 2 uses
  %i.p = lshr i64 %i.o, 32                        ; 3 uses
  %i.q = trunc nuw i64 %i.p to i32                ; 5 uses
  %i.r = icmp ult i32 %.0.copyload.i424, %i.q
  br i1 %i.r, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = select i1 %i.n, i64 %.0.copyload.i426, i64 %.0.copyload.i425 ; 2 uses
  %i.t = lshr i64 %i.s, 32                        ; 2 uses
  %i.u = trunc nuw i64 %i.t to i32                ; 3 uses
  %i.v = add i32 %i.q, 1                          ; 3 uses
  %i.w = icmp ugt i32 %.0.copyload.i424, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val407 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val407, i64 %i.d
  store i32 %i.v, ptr %i.x, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0367 = phi i32 [ %i.v, %bb.c ], [ %.0.copyload.i424, %bb.b ]
  %i.y = icmp ult i32 %.0367, %i.u
  br i1 %i.y, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = trunc i64 %i.o to i32                    ; 2 uses
  %i.aa = trunc i64 %.0.copyload.i to i32
  %i.ab = trunc i64 %i.s to i32                   ; 2 uses
  %i.ac = shl i32 %i.u, 3                         ; 3 uses
  %i.ad = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.aa, i32 noundef %i.ab, i32 noundef %i.ac) #7 ; 6 uses
  %.val402 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val402, i64 %i.d
  %.0.copyload.i429 = load i32, ptr %i.ae, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i429) #7, !srcloc !19
  %i.af = sub i32 %.0.copyload.i429, %i.u
  %i.ag = shl i32 %i.af, 3
  %i.ah = add i32 %i.ad, %i.ac
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = add i32 %i.ab, -8
  %i.aj = add i32 %i.ai, %i.ac
  %i.ak = zext i32 %i.aj to i64
  %.val414 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %.val414, i64 %i.ak
  %.0.copyload.i430 = load i64, ptr %i.al, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i430) #7, !srcloc !20
  %i.am = ashr i64 %.0.copyload.i430, 63
  %i.an = trunc nsw i64 %i.am to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0366 = phi i32 [ %i.an, %bb.f ], [ 0, %bb.e ]
  %i.ao = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.ah, i32 noundef %.0366, i32 noundef %i.ag) #7 ; 0 uses
  %.not389 = icmp eq i64 %i.p, 0
  br i1 %.not389, label %.thread, label %.preheader444

.preheader444:                                    ; preds = %bb.g, %.preheader444
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader444 ], [ 0, %bb.g ] ; 2 uses
  %.0369 = phi i64 [ %i.bc, %.preheader444 ], [ 0, %bb.g ] ; 2 uses
  %i.ap = trunc nuw i64 %indvars.iv to i32
  %i.aq = shl i32 %i.ap, 3                        ; 2 uses
  %i.ar = add i32 %i.aq, %i.z
  %i.as = zext i32 %i.ar to i64
  %.val413 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %.val413, i64 %i.as
  %.0.copyload.i431 = load i64, ptr %i.at, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i431) #7, !srcloc !20
  %i.au = add i32 %i.aq, %i.ad
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %.val412 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %.val412, i64 %i.av
  %.0.copyload.i432 = load i64, ptr %i.aw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i432) #7, !srcloc !20
  %.not390 = icmp eq i64 %.0369, 0
  %i.ax = add i64 %.0.copyload.i432, %.0.copyload.i431 ; 3 uses
  %i.ay = add i64 %i.ax, 1
  %i.az = icmp ule i64 %i.ay, %.0.copyload.i432
  %i.ba = icmp ult i64 %i.ax, %.0.copyload.i431
  %.1370 = add i64 %i.ax, %.0369
  %.1368.in = select i1 %.not390, i1 %i.ba, i1 %i.az
  %.val421 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %.val421, i64 %i.av
  store i64 %.1370, ptr %i.bb, align 1
  %i.bc = zext i1 %.1368.in to i64                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not391 = icmp eq i64 %indvars.iv.next, %i.p
  br i1 %.not391, label %bb.h, label %.preheader444

bb.h:                                             ; preds = %.preheader444
  %i.bd = shl i32 %i.q, 3                         ; 2 uses
  %i.be = add i32 %i.ad, %i.bd
  %i.bf = add i32 %i.z, -8
  %i.bg = add i32 %i.bf, %i.bd
  %i.bh = zext i32 %i.bg to i64
  %.val411 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val411, i64 %i.bh
  %.0.copyload.i433 = load i64, ptr %i.bi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i433) #7, !srcloc !20
  %i.bj = ashr i64 %.0.copyload.i433, 63
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.h
  %i.bk = phi i32 [ %i.be, %bb.h ], [ %i.ad, %bb.g ] ; 2 uses
  %.2371442 = phi i64 [ %i.bc, %bb.h ], [ 0, %bb.g ]
  %.0 = phi i64 [ %i.bj, %bb.h ], [ 0, %bb.g ]
  %.val401 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.val401, i64 %i.d
  %.0.copyload.i434 = load i32, ptr %i.bl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i434) #7, !srcloc !19
  %i.bm = sub i32 %.0.copyload.i434, %i.q         ; 3 uses
  %.not392 = icmp eq i32 %.0.copyload.i434, %i.q
  br i1 %.not392, label %.loopexit443, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.bn = add nsw i64 %.0, %.2371442
  %i.bo = zext i32 %i.bk to i64                   ; 3 uses
  %.val410 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %.val410, i64 %i.bo
  %.0.copyload.i435 = load i64, ptr %i.bp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i435) #7, !srcloc !20
  %i.bq = add i64 %i.bn, %.0.copyload.i435        ; 2 uses
  %.val420 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %.val420, i64 %i.bo
  store i64 %i.bq, ptr %i.br, align 1
  %.not393 = icmp uge i64 %i.bq, %.0.copyload.i435
  %i.bs = icmp eq i32 %i.bm, 1
  %or.cond = or i1 %i.bs, %.not393
  br i1 %or.cond, label %.loopexit443, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = add nuw nsw i64 %i.bo, 8                ; 2 uses
  %.val409 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %.val409, i64 %i.bt
  %.0.copyload.i436 = load i64, ptr %i.bu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i436) #7, !srcloc !20
  %i.bv = add i64 %.0.copyload.i436, 1            ; 2 uses
  %.val419 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %.val419, i64 %i.bt
  store i64 %i.bv, ptr %i.bw, align 1
  %.not394 = icmp eq i64 %i.bv, 0
  br i1 %.not394, label %.preheader.preheader, label %.loopexit443

.preheader.preheader:                             ; preds = %bb.j
  %i.bx = zext i32 %i.bm to i64
  %.not395463 = icmp eq i32 %i.bm, 2
  br i1 %.not395463, label %.loopexit443, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader, %.lr.ph
  %indvars.iv.next451464 = phi i64 [ %indvars.iv.next451, %.lr.ph ], [ 2, %.preheader.preheader ] ; 2 uses
  %i.by = trunc nuw i64 %indvars.iv.next451464 to i32
  %i.bz = shl i32 %i.by, 3
  %i.ca = add i32 %i.bz, %i.bk
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %.val408 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %.val408, i64 %i.cb
  %.0.copyload.i437 = load i64, ptr %i.cc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i437) #7, !srcloc !20
  %i.cd = add i64 %.0.copyload.i437, 1            ; 2 uses
  %.val418 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %.val418, i64 %i.cb
  store i64 %i.cd, ptr %i.ce, align 1
  %.not396 = icmp ne i64 %i.cd, 0
  %indvars.iv.next451 = add nuw nsw i64 %indvars.iv.next451464, 1 ; 2 uses
  %.not395 = icmp eq i64 %indvars.iv.next451, %i.bx
  %or.cond467 = select i1 %.not396, i1 true, i1 %.not395
  br i1 %or.cond467, label %.loopexit443, label %.lr.ph

.loopexit443:                                     ; preds = %.lr.ph, %.preheader.preheader, %bb.i, %bb.j, %.thread
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %.val, i64 %i.d
  %.0.copyload.i438 = load i32, ptr %i.cf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i438) #7, !srcloc !19
  %i.cg = shl i32 %.0.copyload.i438, 3            ; 5 uses
  %.not397 = icmp eq i32 %i.cg, 0
  br i1 %.not397, label %bb.p, label %bb.k

bb.k:                                             ; preds = %.loopexit443
  %i.ch = add i32 %i.cg, -1                       ; 2 uses
  %i.ci = add i32 %i.ch, %i.ad
  %i.cj = zext i32 %i.ci to i64
  %.val423 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %.val423, i64 %i.cj
  %.0.copyload.i439 = load i8, ptr %i.ck, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i439) #7, !srcloc !21
  %i.cl = zext i8 %.0.copyload.i439 to i32
  %sext = shl nuw i32 %i.cl, 24
  %i.cm = ashr i32 %sext, 31                      ; 3 uses
  %i.cn = trunc nsw i32 %i.cm to i8
  %.not398 = icmp eq i8 %.0.copyload.i439, %i.cn
  br i1 %.not398, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.co = zext i32 %i.ch to i64
  %i.cp = add i32 %i.ad, -1
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %i.cq = add nsw i64 %.0372466, -1               ; 2 uses
  %i.cr = add i32 %.1376465, -1
  %.not399 = icmp eq i64 %i.cq, 0
  br i1 %.not399, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.0372466 = phi i64 [ %i.co, %bb.l ], [ %i.cq, %bb.m ] ; 2 uses
  %.1376465 = phi i32 [ %i.cg, %bb.l ], [ %i.cr, %bb.m ] ; 2 uses
  %i.cs = trunc nuw i64 %.0372466 to i32          ; 2 uses
  %i.ct = add i32 %i.cp, %i.cs
  %i.cu = zext i32 %i.ct to i64
  %.val422 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %.val422, i64 %i.cu
  %.0.copyload.i440 = load i8, ptr %i.cv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i440) #7, !srcloc !21
  %i.cw = icmp eq i8 %.0.copyload.i439, %.0.copyload.i440
  br i1 %i.cw, label %bb.m, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cx = zext i8 %.0.copyload.i440 to i32
  %sext400 = shl nuw i32 %i.cx, 24
  %i.cy = ashr i32 %sext400, 31
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %bb.k, %bb.o
  %.0378 = phi i32 [ %i.cs, %bb.o ], [ %i.cg, %bb.k ], [ 0, %bb.m ]
  %.0377 = phi i32 [ %.1376465, %bb.o ], [ %i.cg, %bb.k ], [ 1, %bb.m ]
  %.1 = phi i32 [ %i.cy, %bb.o ], [ %i.cm, %bb.k ], [ 0, %bb.m ]
  %i.cz = icmp eq i32 %.1, %i.cm
  %i.da = select i1 %i.cz, i32 %.0378, i32 %.0377
  %i.db = add i32 %i.da, 7
  %i.dc = lshr i32 %i.db, 3
  br label %bb.p

bb.p:                                             ; preds = %.loopexit443, %.loopexit
  %.2 = phi i32 [ %i.dc, %.loopexit ], [ 0, %.loopexit443 ]
  %.val406 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dd = getelementptr inbounds nuw i8, ptr %.val406, i64 %i.d
  store i32 %.2, ptr %i.dd, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.d, %bb.a, %bb.p
  %.0373 = phi i32 [ 1, %bb.a ], [ 1, %bb.d ], [ 0, %bb.p ]
  ret i32 %.0373
}

; Function Attrs: nounwind uwtable
define hidden range(i32 2, 1) i32 @w2c_hermes_hermes0x3A0x3Abigint0x3A0x3AaddSignedResultSize0x28hermes0x3A0x3Abigint0x3A0x3AImmutableBigIntRef0x2C0x20long0x20long0x29(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = zext i32 %1 to i64
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %.0.copyload.i = load i64, ptr %i.c, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #7, !srcloc !20
  %i.d = lshr i64 %.0.copyload.i, 32
  %i.e = trunc nuw i64 %i.d to i32
  %i.f = tail call i32 @llvm.umax.i32(i32 %i.e, i32 1)
  %i.g = add i32 %i.f, 1
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Abigint0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3AsignedRightShiftAdapter0x28unsigned0x20long0x20long0x2A0x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = shl i32 %2, 3
  %i.b = add i32 %1, -8
  %i.c = add i32 %i.b, %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = zext i32 %i.c to i64
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 %i.e
  %.0.copyload.i = load i64, ptr %i.f, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i) #7, !srcloc !20
  %i.g = icmp sgt i64 %.0.copyload.i, -1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
