Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_0?download=true
inline.NumInlined: 15600
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 26
begin_hunk_0_@w2c_hermes_0x5F_memcpy:bb.a
.preheader387:                                    ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 32 uses
  br label %bb.h

bb.h:                                             ; preds = %.preheader387, %bb.h
  %.3297 = phi i32 [ %i.db, %bb.h ], [ %.2296, %.preheader387 ] ; 2 uses
  %.3 = phi i32 [ %i.dc, %bb.h ], [ %.2, %.preheader387 ] ; 2 uses
  %i.ap = zext i32 %.3297 to i64                  ; 16 uses
  %.val333 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %.val333, i64 %i.ap
  %.0.copyload.i367 = load i32, ptr %i.aq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i367) #16, !srcloc !22
  %i.ar = zext i32 %.3 to i64                     ; 16 uses
  %.val350 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %.val350, i64 %i.ar
  store i32 %.0.copyload.i367, ptr %i.as, align 1
  %.val332 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %.val332, i64 %i.ap
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %.0.copyload.i368 = load i32, ptr %i.au, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i368) #16, !srcloc !22
  %.val349 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %.val349, i64 %i.ar
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 %.0.copyload.i368, ptr %i.aw, align 1
  %.val331 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %.val331, i64 %i.ap
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.0.copyload.i369 = load i32, ptr %i.ay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i369) #16, !srcloc !22
  %.val348 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %.val348, i64 %i.ar
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i32 %.0.copyload.i369, ptr %i.ba, align 1
  %.val330 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.bb = getelementptr inbounds nuw i8, ptr %.val330, i64 %i.ap
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %.0.copyload.i370 = load i32, ptr %i.bc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i370) #16, !srcloc !22
  %.val347 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.bd = getelementptr inbounds nuw i8, ptr %.val347, i64 %i.ar
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 %.0.copyload.i370, ptr %i.be, align 1
  %.val329 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.bf = getelementptr inbounds nuw i8, ptr %.val329, i64 %i.ap
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.0.copyload.i371 = load i32, ptr %i.bg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i371) #16, !srcloc !22
  %.val346 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %.val346, i64 %i.ar
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i32 %.0.copyload.i371, ptr %i.bi, align 1
  %.val328 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.bj = getelementptr inbounds nuw i8, ptr %.val328, i64 %i.ap
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  %.0.copyload.i372 = load i32, ptr %i.bk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i372) #16, !srcloc !22
  %.val345 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.bl = getelementptr inbounds nuw i8, ptr %.val345, i64 %i.ar
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  store i32 %.0.copyload.i372, ptr %i.bm, align 1
  %.val327 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %.val327, i64 %i.ap
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %.0.copyload.i373 = load i32, ptr %i.bo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i373) #16, !srcloc !22
  %.val344 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.bp = getelementptr inbounds nuw i8, ptr %.val344, i64 %i.ar
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store i32 %.0.copyload.i373, ptr %i.bq, align 1
  %.val326 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.br = getelementptr inbounds nuw i8, ptr %.val326, i64 %i.ap
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 28
  %.0.copyload.i374 = load i32, ptr %i.bs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i374) #16, !srcloc !22
  %.val343 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.bt = getelementptr inbounds nuw i8, ptr %.val343, i64 %i.ar
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 28
  store i32 %.0.copyload.i374, ptr %i.bu, align 1
  %.val325 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.bv = getelementptr inbounds nuw i8, ptr %.val325, i64 %i.ap
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %.0.copyload.i375 = load i32, ptr %i.bw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i375) #16, !srcloc !22
  %.val342 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.bx = getelementptr inbounds nuw i8, ptr %.val342, i64 %i.ar
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store i32 %.0.copyload.i375, ptr %i.by, align 1
  %.val324 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.bz = getelementptr inbounds nuw i8, ptr %.val324, i64 %i.ap
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 36
  %.0.copyload.i376 = load i32, ptr %i.ca, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i376) #16, !srcloc !22
  %.val341 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.cb = getelementptr inbounds nuw i8, ptr %.val341, i64 %i.ar
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 36
  store i32 %.0.copyload.i376, ptr %i.cc, align 1
  %.val323 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.cd = getelementptr inbounds nuw i8, ptr %.val323, i64 %i.ap
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %.0.copyload.i377 = load i32, ptr %i.ce, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i377) #16, !srcloc !22
  %.val340 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.cf = getelementptr inbounds nuw i8, ptr %.val340, i64 %i.ar
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  store i32 %.0.copyload.i377, ptr %i.cg, align 1
  %.val322 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.ch = getelementptr inbounds nuw i8, ptr %.val322, i64 %i.ap
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 44
  %.0.copyload.i378 = load i32, ptr %i.ci, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i378) #16, !srcloc !22
  %.val339 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.cj = getelementptr inbounds nuw i8, ptr %.val339, i64 %i.ar
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 44
  store i32 %.0.copyload.i378, ptr %i.ck, align 1
  %.val321 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %.val321, i64 %i.ap
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %.0.copyload.i379 = load i32, ptr %i.cm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i379) #16, !srcloc !22
  %.val338 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.cn = getelementptr inbounds nuw i8, ptr %.val338, i64 %i.ar
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  store i32 %.0.copyload.i379, ptr %i.co, align 1
  %.val320 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.cp = getelementptr inbounds nuw i8, ptr %.val320, i64 %i.ap
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 52
  %.0.copyload.i380 = load i32, ptr %i.cq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i380) #16, !srcloc !22
  %.val337 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.cr = getelementptr inbounds nuw i8, ptr %.val337, i64 %i.ar
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 52
  store i32 %.0.copyload.i380, ptr %i.cs, align 1
  %.val319 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.ct = getelementptr inbounds nuw i8, ptr %.val319, i64 %i.ap
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  %.0.copyload.i381 = load i32, ptr %i.cu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i381) #16, !srcloc !22
  %.val336 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.cv = getelementptr inbounds nuw i8, ptr %.val336, i64 %i.ar
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  store i32 %.0.copyload.i381, ptr %i.cw, align 1
  %.val318 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.cx = getelementptr inbounds nuw i8, ptr %.val318, i64 %i.ap
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 60
  %.0.copyload.i382 = load i32, ptr %i.cy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i382) #16, !srcloc !22
  %.val335 = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.cz = getelementptr inbounds nuw i8, ptr %.val335, i64 %i.ar
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 60
  store i32 %.0.copyload.i382, ptr %i.da, align 1
  %i.db = add i32 %.3297, 64                      ; 2 uses
  %i.dc = add i32 %.3, 64                         ; 3 uses
  %.not314 = icmp ugt i32 %i.dc, %i.am
  br i1 %.not314, label %.loopexit388, label %bb.h

.loopexit388:                                     ; preds = %bb.h, %bb.g, %.loopexit390
  %.4298 = phi i32 [ %.2296, %.loopexit390 ], [ %.2296, %bb.g ], [ %i.db, %bb.h ] ; 2 uses
  %.4 = phi i32 [ %.2, %.loopexit390 ], [ %.2, %bb.g ], [ %i.dc, %bb.h ] ; 3 uses
  %.not315 = icmp ult i32 %.4, %i.ak
  br i1 %.not315, label %.preheader385, label %.loopexit386

.preheader385:                                    ; preds = %.loopexit388
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.de = zext i32 %.4 to i64
  %i.df = zext i32 %i.ak to i64
  br label %bb.i

bb.i:                                             ; preds = %.preheader385, %bb.i
  %indvars.iv409 = phi i64 [ %i.de, %.preheader385 ], [ %indvars.iv.next410, %bb.i ] ; 2 uses
  %.5299 = phi i32 [ %.4298, %.preheader385 ], [ %i.dj, %bb.i ] ; 2 uses
  %i.dg = zext i32 %.5299 to i64
  %.val = load ptr, ptr %i.dd, align 8, !tbaa !21
  %i.dh = getelementptr inbounds nuw i8, ptr %.val, i64 %i.dg
  %.0.copyload.i383 = load i32, ptr %i.dh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i383) #16, !srcloc !22
  %.val334 = load ptr, ptr %i.dd, align 8, !tbaa !21
  %i.di = getelementptr inbounds nuw i8, ptr %.val334, i64 %indvars.iv409
  store i32 %.0.copyload.i383, ptr %i.di, align 1
  %i.dj = add i32 %.5299, 4                       ; 2 uses
  %indvars.iv.next410 = add nuw nsw i64 %indvars.iv409, 4 ; 3 uses
  %i.dk = icmp samesign ult i64 %indvars.iv.next410, %i.df
  br i1 %i.dk, label %bb.i, label %.loopexit386.loopexit

.loopexit386.loopexit:                            ; preds = %bb.i
  %i.dl = trunc nuw i64 %indvars.iv.next410 to i32
  br label %.loopexit386

.loopexit386.loopexit400:                         ; preds = %bb.f
  %i.dm = trunc nuw i64 %indvars.iv.next to i32
  br label %.loopexit386

.loopexit386:                                     ; preds = %.loopexit386.loopexit400, %.loopexit386.loopexit, %bb.d, %bb.e, %.loopexit388
  %.6300 = phi i32 [ %.4298, %.loopexit388 ], [ %2, %bb.d ], [ %i.dj, %.loopexit386.loopexit ], [ %2, %bb.e ], [ %i.aj, %.loopexit386.loopexit400 ]
  %.6 = phi i32 [ %.4, %.loopexit388 ], [ %1, %bb.d ], [ %i.dl, %.loopexit386.loopexit ], [ %1, %bb.e ], [ %i.dm, %.loopexit386.loopexit400 ] ; 2 uses
  %i.dn = icmp ult i32 %.6, %i.a
  br i1 %i.dn, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.loopexit386
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %4 = zext i32 %.6 to i64
  %5 = zext i32 %i.a to i64
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.j
  %indvars.iv412 = phi i64 [ %4, %.preheader ], [ %indvars.iv.next413, %bb.j ] ; 2 uses
  %.7 = phi i32 [ %.6300, %.preheader ], [ %i.ds, %bb.j ] ; 2 uses
  %i.dp = zext i32 %.7 to i64
  %.val351 = load ptr, ptr %i.do, align 8, !tbaa !21
  %i.dq = getelementptr inbounds nuw i8, ptr %.val351, i64 %i.dp
  %.0.copyload.i384 = load i8, ptr %i.dq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i384) #16, !srcloc !33
  %.val357 = load ptr, ptr %i.do, align 8, !tbaa !21
  %i.dr = getelementptr inbounds nuw i8, ptr %.val357, i64 %indvars.iv412
  store i8 %.0.copyload.i384, ptr %i.dr, align 1
  %i.ds = add i32 %.7, 1
  %indvars.iv.next413 = add nuw nsw i64 %indvars.iv412, 1 ; 2 uses
  %.not316 = icmp eq i64 %indvars.iv.next413, %5
  br i1 %.not316, label %.loopexit, label %bb.j

.loopexit:                                        ; preds = %bb.j, %.loopexit386
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_hermes0x3A0x3ABacktrackingBumpPtrAllocator0x3A0x3AallocateNewSlab0x28unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !19
  %i.d = icmp ugt i32 %2, 262144
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @w2c_hermes_hermes0x3A0x3AcheckedMalloc0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %2) #16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.g = zext i32 %1 to i64
  %.val470 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %.val470, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %.0.copyload.i = load i32, ptr %i.i, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #16, !srcloc !22
  %i.j = zext i32 %.0.copyload.i to i64           ; 3 uses
  %i.k = add nuw nsw i64 %i.j, 12                 ; 3 uses
  %.val469 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %.val469, i64 %i.k
  %.0.copyload.i494 = load i32, ptr %i.l, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i494) #16, !srcloc !22
  %.val468 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %.val468, i64 %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.0.copyload.i495 = load i32, ptr %i.n, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i495) #16, !srcloc !22
  %.not443 = icmp ult i32 %.0.copyload.i494, %.0.copyload.i495
  br i1 %.not443, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = add i32 %.0.copyload.i, 8
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorTemplateBase0x3Cstd0x3A0x3A_0x5F20x3A0x3Aunique_ptr0x3Cvoid0x2C0x20void0x200x280x2A0x290x28void0x2A0x290x3E0x2C0x20false0x3E0x3A0x3Agrow0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.o) #16
  %.val467 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %.val467, i64 %i.k
  %.0.copyload.i496 = load i32, ptr %i.p, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i496) #16, !srcloc !22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0418 = phi i32 [ %.0.copyload.i496, %bb.c ], [ %.0.copyload.i494, %bb.b ] ; 2 uses
  %.val466 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %.val466, i64 %i.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.0.copyload.i497 = load i32, ptr %i.r, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i497) #16, !srcloc !22
  %i.s = shl i32 %.0418, 3
  %i.t = add i32 %.0.copyload.i497, %i.s
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %.val493 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %.val493, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 92, ptr %i.w, align 1
  %.val492 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %.val492, i64 %i.u
  store i32 %i.e, ptr %i.x, align 1
  %i.y = add i32 %.0418, 1
  %.val491 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %.val491, i64 %i.k
  store i32 %i.y, ptr %i.z, align 1
  br label %bb.z

bb.e:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 43 uses
  %i.ab = zext i32 %1 to i64                      ; 9 uses
  %i.ac = add nuw nsw i64 %i.ab, 12               ; 3 uses
  %.val465 = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %.val465, i64 %i.ac
  %.0.copyload.i498 = load i32, ptr %i.ad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i498) #16, !srcloc !22
  %i.ae = zext i32 %.0.copyload.i498 to i64       ; 5 uses
  %.val490 = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %.val490, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 0, ptr %i.ag, align 1
  %.val464 = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %.val464, i64 %i.ae
  %.0.copyload.i499 = load i32, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i499) #16, !srcloc !22
  %i.ai = add i32 %.0.copyload.i499, 1            ; 3 uses
  %.val489 = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %.val489, i64 %i.ae
  store i32 %i.ai, ptr %i.aj, align 1
  %i.ak = add nuw nsw i64 %i.ab, 4                ; 6 uses
  %.val463 = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %.val463, i64 %i.ak
  %.0.copyload.i500 = load i32, ptr %i.al, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i500) #16, !srcloc !22
  %.val462 = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %.val462, i64 %i.ab
  %.0.copyload.i501 = load i32, ptr %i.am, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i501) #16, !srcloc !22
  %i.an = sub i32 %.0.copyload.i500, %.0.copyload.i501
  %i.ao = ashr i32 %i.an, 2
  %i.ap = icmp eq i32 %i.ao, %i.ai
  br i1 %i.ap, label %bb.f, label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.aq = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef 262144) #16 ; 2 uses
  %i.ar = zext i32 %i.c to i64
  %i.as = add nuw nsw i64 %i.ar, 12               ; 2 uses
  %.val488 = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %.val488, i64 %i.as
  store i32 %i.aq, ptr %i.at, align 1
  %i.au = add nuw nsw i64 %i.ab, 8                ; 4 uses
  %.val461 = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %.val461, i64 %i.au
  %.0.copyload.i502 = load i32, ptr %i.av, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i502) #16, !srcloc !22
  %i.aw = icmp ugt i32 %.0.copyload.i502, %.0.copyload.i500
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ax = zext i32 %.0.copyload.i500 to i64
  %.val487 = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ay = getelementptr inbounds nuw i8, ptr %.val487, i64 %i.ax
  store i32 %i.aq, ptr %i.ay, align 1
  %i.az = add i32 %.0.copyload.i500, 4
  %.val486 = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ba = getelementptr inbounds nuw i8, ptr %.val486, i64 %i.ak
  store i32 %i.az, ptr %i.ba, align 1
  br label %bb.t

bb.h:                                             ; preds = %bb.f
  %.val460 = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.bb = getelementptr inbounds nuw i8, ptr %.val460, i64 %i.ak
  %.0.copyload.i503 = load i32, ptr %i.bb, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i503) #16, !srcloc !22
  %.val459 = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %.val459, i64 %i.ab
  %.0.copyload.i504 = load i32, ptr %i.bc, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i504) #16, !srcloc !22
  %i.bd = sub i32 %.0.copyload.i503, %.0.copyload.i504 ; 2 uses
  %i.be = ashr i32 %i.bd, 2
  %i.bf = add nsw i32 %i.be, 1                    ; 2 uses
  %i.bg = icmp ult i32 %i.bf, 1073741824
  br i1 %i.bg, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %.val458 = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %.val458, i64 %i.au
  %.0.copyload.i505 = load i32, ptr %i.bh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i505) #16, !srcloc !22
  %i.bi = sub i32 %.0.copyload.i505, %.0.copyload.i504 ; 2 uses
  %i.bj = ashr i32 %i.bi, 1
  %i.bk = tail call i32 @llvm.umax.i32(i32 %i.bf, i32 %i.bj)
  %i.bl = icmp ugt i32 %i.bi, 2147483643
  %i.bm = select i1 %i.bl, i32 1073741823, i32 %i.bk ; 3 uses
  %.not = icmp eq i32 %i.bm, 0
  br i1 %.not, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = icmp ugt i32 %i.bm, 1073741823
  br i1 %i.bn, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = shl nuw i32 %i.bm, 2                    ; 2 uses
  %i.bp = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.bo) #16
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %bb.k
  %.pre-phi524 = phi i32 [ %i.bo, %bb.k ], [ 0, %bb.i ]
  %.0 = phi i32 [ %i.bp, %bb.k ], [ 0, %bb.i ]    ; 2 uses
  %i.bq = and i32 %i.bd, -4
  %i.br = add i32 %.0, %i.bq                      ; 4 uses
  %.val457 = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.bs = getelementptr inbounds nuw i8, ptr %.val457, i64 %i.as
  %.0.copyload.i506 = load i32, ptr %i.bs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i506) #16, !srcloc !22
  %i.bt = zext i32 %i.br to i64
  %.val485 = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.bu = getelementptr inbounds nuw i8, ptr %.val485, i64 %i.bt
  store i32 %.0.copyload.i506, ptr %i.bu, align 1
  %i.bv = add i32 %.0, %.pre-phi524               ; 2 uses
  %i.bw = add i32 %i.br, 4                        ; 2 uses
  %i.bx = icmp eq i32 %.0.copyload.i503, %.0.copyload.i504
  br i1 %i.bx, label %bb.q, label %.preheader521

.preheader521:                                    ; preds = %._crit_edge, %.preheader521
  %.1419 = phi i32 [ %i.by, %.preheader521 ], [ %.0.copyload.i503, %._crit_edge ]
  %.0416 = phi i32 [ %i.cc, %.preheader521 ], [ %i.br, %._crit_edge ]
  %i.by = add i32 %.1419, -4                      ; 3 uses
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %.val456 = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ca = getelementptr inbounds nuw i8, ptr %.val456, i64 %i.bz
  %.0.copyload.i507 = load i32, ptr %i.ca, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i507) #16, !srcloc !22
  %.val484 = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.cb = getelementptr inbounds nuw i8, ptr %.val484, i64 %i.bz
  store i32 0, ptr %i.cb, align 1
  %i.cc = add i32 %.0416, -4                      ; 3 uses
end_hunk_0
