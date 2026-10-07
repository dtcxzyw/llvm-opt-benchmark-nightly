Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_5?download=true
inline.NumInlined: 16806
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AstringToNumber0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x29:bb.a
  %.val2276 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val2276, i64 %i.ah
  %.0.copyload.i2354 = load i32, ptr %i.ai, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2354) #8, !srcloc !19
  %i.aj = icmp ugt i32 %.0.copyload.i2354, 150994943
  br i1 %i.aj, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = and i32 %.0.copyload.i2354, 251658240
  switch i32 %i.ak, label %bb.q [
    i32 50331648, label %.thread2485
    i32 117440512, label %.thread2487
  ]

.thread2487:                                      ; preds = %bb.j
  %i.al = and i32 %.0.copyload.i2346, 1073741823  ; 2 uses
  %i.am = shl nuw nsw i32 %i.al, 1
  %i.an = add nuw i32 %i.am, 12
  %i.ao = add i32 %i.an, %.0.copyload.i2353
  %i.ap = add i32 %.0.copyload.i2353, 12
  br label %bb.r

bb.k:                                             ; preds = %bb.e
  %i.aq = and i32 %.0.copyload.i2346, 1073741823  ; 2 uses
  %i.ar = add i32 %.0.copyload.i2347, %i.aq
  br label %bb.n

bb.l:                                             ; preds = %bb.f
  %.val2273 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.val2273, i64 %i.x
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %.0.copyload.i2358 = load i32, ptr %i.at, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2358) #8, !srcloc !19
  %i.au = add i32 %.0.copyload.i2348, 12
  %.val2321 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %.val2321, i64 %i.x
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 23
  %.0.copyload.i2359 = load i8, ptr %i.aw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2359) #8, !srcloc !22
  %i.ax = icmp slt i8 %.0.copyload.i2359, 0
  %i.ay = select i1 %i.ax, i32 %.0.copyload.i2358, i32 %i.au ; 2 uses
  %i.az = and i32 %.0.copyload.i2346, 1073741823  ; 2 uses
  %i.ba = add i32 %i.ay, %i.az
  br label %bb.n

.thread:                                          ; preds = %bb.g
  %i.bb = and i32 %.0.copyload.i2346, 1073741823  ; 2 uses
  %i.bc = add nuw nsw i32 %i.bb, 8
  %i.bd = add i32 %i.bc, %.0.copyload.i2348
  %i.be = add i32 %.0.copyload.i2348, 8
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  %.val2279 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.val2279, i64 %i.x
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.0.copyload.i2350 = load i32, ptr %i.bg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2350) #8, !srcloc !19
  %i.bh = zext i32 %.0.copyload.i2350 to i64      ; 2 uses
  %.val2278 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val2278, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %.0.copyload.i2351 = load i32, ptr %i.bj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2351) #8, !srcloc !19
  %.val2323 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %.val2323, i64 %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 23
  %.0.copyload.i2352 = load i8, ptr %i.bl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2352) #8, !srcloc !22
  %i.bm = and i32 %.0.copyload.i2346, 1073741823  ; 2 uses
  %i.bn = icmp slt i8 %.0.copyload.i2352, 0
  %i.bo = add i32 %.0.copyload.i2350, 12
  %i.bp = select i1 %i.bn, i32 %.0.copyload.i2351, i32 %i.bo
  %i.bq = add i32 %i.bp, %i.bm
  %.val2272 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %.val2272, i64 %i.x
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.0.copyload.i2360 = load i32, ptr %i.bs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2360) #8, !srcloc !19
  %i.bt = zext i32 %.0.copyload.i2360 to i64      ; 2 uses
  %.val2271 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %.val2271, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %.0.copyload.i2361 = load i32, ptr %i.bv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2361) #8, !srcloc !19
  %i.bw = add i32 %.0.copyload.i2360, 12
  %.val2320 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %.val2320, i64 %i.bt
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 23
  %.0.copyload.i2362 = load i8, ptr %i.by, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2362) #8, !srcloc !22
  %i.bz = icmp slt i8 %.0.copyload.i2362, 0
  %i.ca = select i1 %i.bz, i32 %.0.copyload.i2361, i32 %i.bw
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread, %.thread2483, %bb.l, %bb.k
  %.02047 = phi i32 [ %i.ar, %bb.k ], [ %i.ba, %bb.l ], [ %i.bq, %bb.m ], [ %i.ad, %.thread2483 ], [ %i.bd, %.thread ]
  %.02036 = phi i32 [ %i.aq, %bb.k ], [ %i.az, %bb.l ], [ %i.bm, %bb.m ], [ %i.ab, %.thread2483 ], [ %i.bb, %.thread ]
  %.02031 = phi i32 [ %.0.copyload.i2347, %bb.k ], [ %i.ay, %bb.l ], [ %i.ca, %bb.m ], [ %i.ae, %.thread2483 ], [ %i.be, %.thread ]
  %.val2270 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %.val2270, i64 %i.o
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 124
  %.0.copyload.i2363 = load i32, ptr %i.cc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2363) #8, !srcloc !19
  %i.cd = add i32 %.02031, %.02036
  %i.ce = add i32 %i.cd, %.0.copyload.i2363
  br label %bb.s

bb.o:                                             ; preds = %bb.h
  %i.cf = shl nuw nsw i32 %.0.copyload.i2346, 1
  %i.cg = add i32 %.0.copyload.i2347, %i.cf
  br label %bb.r

bb.p:                                             ; preds = %bb.i
  %.val2269 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %.val2269, i64 %i.ah
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  %.0.copyload.i2364 = load i32, ptr %i.ci, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2364) #8, !srcloc !19
  %i.cj = add i32 %.0.copyload.i2353, 12
  %.val2319 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %.val2319, i64 %i.ah
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 23
  %.0.copyload.i2365 = load i8, ptr %i.cl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2365) #8, !srcloc !22
  %i.cm = icmp slt i8 %.0.copyload.i2365, 0
  %i.cn = select i1 %i.cm, i32 %.0.copyload.i2364, i32 %i.cj ; 2 uses
  %i.co = and i32 %.0.copyload.i2346, 1073741823  ; 2 uses
  %i.cp = shl nuw nsw i32 %i.co, 1
  %i.cq = add i32 %i.cn, %i.cp
  br label %bb.r

.thread2485:                                      ; preds = %bb.j
  %i.cr = and i32 %.0.copyload.i2346, 1073741823  ; 2 uses
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = add nuw i32 %i.cs, 8
  %i.cu = add i32 %i.ct, %.0.copyload.i2353
  %i.cv = add i32 %.0.copyload.i2353, 8
  br label %bb.r

bb.q:                                             ; preds = %bb.j
  %.val2275 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %.val2275, i64 %i.ah
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.0.copyload.i2355 = load i32, ptr %i.cx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2355) #8, !srcloc !19
  %i.cy = zext i32 %.0.copyload.i2355 to i64      ; 2 uses
  %.val2274 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %.val2274, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  %.0.copyload.i2356 = load i32, ptr %i.da, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2356) #8, !srcloc !19
  %.val2322 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %.val2322, i64 %i.cy
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 23
  %.0.copyload.i2357 = load i8, ptr %i.dc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2357) #8, !srcloc !22
  %i.dd = and i32 %.0.copyload.i2346, 1073741823  ; 2 uses
  %i.de = icmp slt i8 %.0.copyload.i2357, 0
  %i.df = add i32 %.0.copyload.i2355, 12
  %i.dg = select i1 %i.de, i32 %.0.copyload.i2356, i32 %i.df
  %i.dh = shl nuw nsw i32 %i.dd, 1
  %i.di = add i32 %i.dg, %i.dh
  %.val2268 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dj = getelementptr inbounds nuw i8, ptr %.val2268, i64 %i.ah
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.0.copyload.i2366 = load i32, ptr %i.dk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2366) #8, !srcloc !19
  %i.dl = zext i32 %.0.copyload.i2366 to i64      ; 2 uses
  %.val2267 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %.val2267, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  %.0.copyload.i2367 = load i32, ptr %i.dn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2367) #8, !srcloc !19
  %i.do = add i32 %.0.copyload.i2366, 12
  %.val2318 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %.val2318, i64 %i.dl
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 23
  %.0.copyload.i2368 = load i8, ptr %i.dq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2368) #8, !srcloc !22
  %i.dr = icmp slt i8 %.0.copyload.i2368, 0
  %i.ds = select i1 %i.dr, i32 %.0.copyload.i2367, i32 %i.do
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread2485, %.thread2487, %bb.p, %bb.o
  %.12048 = phi i32 [ %.0.copyload.i2346, %bb.o ], [ %i.co, %bb.p ], [ %i.dd, %bb.q ], [ %i.al, %.thread2487 ], [ %i.cr, %.thread2485 ]
  %.12037 = phi i32 [ %.0.copyload.i2347, %bb.o ], [ %i.cn, %bb.p ], [ %i.ds, %bb.q ], [ %i.ap, %.thread2487 ], [ %i.cv, %.thread2485 ]
  %.02026 = phi i32 [ %i.cg, %bb.o ], [ %i.cq, %bb.p ], [ %i.di, %bb.q ], [ %i.ao, %.thread2487 ], [ %i.cu, %.thread2485 ]
  %.val2266 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %.val2266, i64 %i.o
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 124
  %.0.copyload.i2369 = load i32, ptr %i.du, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2369) #8, !srcloc !19
  %i.dv = add i32 %.0.copyload.i2369, %.12048
  %i.dw = shl i32 %i.dv, 1
  %i.dx = add i32 %i.dw, %.12037
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n
  %.22049 = phi i32 [ %.02047, %bb.n ], [ 0, %bb.r ] ; 4 uses
  %.12027 = phi i32 [ 0, %bb.n ], [ %.02026, %bb.r ] ; 11 uses
  %.02016 = phi i32 [ 0, %bb.n ], [ %i.dx, %bb.r ] ; 3 uses
  %.2 = phi i32 [ %i.ce, %bb.n ], [ 0, %bb.r ]    ; 2 uses
  %.not2119 = icmp eq i32 %.22049, 0              ; 5 uses
  %i.dy = select i1 %.not2119, i32 %.12027, i32 %.22049 ; 2 uses
  %i.dz = select i1 %.not2119, i32 %.02016, i32 %.2 ; 4 uses
  %i.ea = icmp eq i32 %i.dy, %i.dz
  br i1 %i.ea, label %.loopexit2508, label %bb.t

bb.t:                                             ; preds = %bb.s
  %3 = select i1 %.not2119, i32 2, i32 0          ; 2 uses
  br i1 %.not2119, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.t
  %i.eb = zext i32 %.12027 to i64                 ; 2 uses
  %.val2339.us.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %.val2339.us.peel, i64 %i.eb
  %.0.copyload.i2371.us.peel = load i16, ptr %i.ec, align 1
  %.0.copyload.i2371.us.fr.peel = freeze i16 %.0.copyload.i2371.us.peel ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i2371.us.fr.peel) #8, !srcloc !24
  %i.ed = zext i16 %.0.copyload.i2371.us.fr.peel to i32 ; 2 uses
  %i.ee = icmp ult i16 %.0.copyload.i2371.us.fr.peel, 160
  br i1 %i.ee, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.split.us.preheader
  switch i16 %.0.copyload.i2371.us.fr.peel, label %bb.x [
    i16 160, label %bb.aa
    i16 5760, label %bb.aa
    i16 -257, label %bb.aa
  ]

bb.v:                                             ; preds = %.split.us.preheader
  %i.ef = add nsw i32 %i.ed, -9                   ; 2 uses
  %i.eg = icmp ugt i32 %i.ef, 23
  br i1 %i.eg, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eh = shl nuw nsw i32 1, %i.ef
  %i.ei = and i32 %i.eh, 8388621
  %.not2120.us.peel = icmp eq i32 %i.ei, 0
  br i1 %.not2120.us.peel, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.ej = add nuw nsw i32 %i.ed, 57344
  %i.ek = and i32 %i.ej, 65535
  %i.el = icmp samesign ult i32 %i.ek, 11
  br i1 %i.el, label %bb.aa, label %switch.early.test.us.peel

switch.early.test.us.peel:                        ; preds = %bb.x
  switch i16 %.0.copyload.i2371.us.fr.peel, label %bb.y [
    i16 12288, label %bb.aa
    i16 8287, label %bb.aa
    i16 8239, label %bb.aa
  ]

bb.y:                                             ; preds = %switch.early.test.us.peel
  %.val2338.us.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.em = getelementptr inbounds nuw i8, ptr %.val2338.us.peel, i64 %i.eb
  %.0.copyload.i2373.us.peel = load i16, ptr %i.em, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i2373.us.peel) #8, !srcloc !24
  switch i16 %.0.copyload.i2373.us.peel, label %bb.z [
    i16 10, label %bb.aa
    i16 11, label %.loopexit2508
    i16 12, label %.loopexit2508
    i16 13, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.en = and i16 %.0.copyload.i2373.us.peel, -2
  %.not2121.us.peel = icmp eq i16 %i.en, 8232
  br i1 %.not2121.us.peel, label %bb.aa, label %.loopexit2508

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.y, %switch.early.test.us.peel, %switch.early.test.us.peel, %switch.early.test.us.peel, %bb.x, %bb.w, %bb.u, %bb.u, %bb.u
  %i.eo = add i32 %.12027, 2                      ; 2 uses
  %.not2122.us.peel = icmp eq i32 %i.eo, %.02016
  br i1 %.not2122.us.peel, label %.loopexit2507, label %.split.us

.split.us:                                        ; preds = %bb.aa, %bb.ah
  %.22028.us = phi i32 [ %i.fc, %bb.ah ], [ %i.eo, %bb.aa ] ; 8 uses
  %i.ep = zext i32 %.22028.us to i64              ; 2 uses
  %.val2339.us = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eq = getelementptr inbounds nuw i8, ptr %.val2339.us, i64 %i.ep
  %.0.copyload.i2371.us = load i16, ptr %i.eq, align 1
  %.0.copyload.i2371.us.fr = freeze i16 %.0.copyload.i2371.us ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i2371.us.fr) #8, !srcloc !24
  %i.er = zext i16 %.0.copyload.i2371.us.fr to i32 ; 2 uses
  %i.es = icmp ult i16 %.0.copyload.i2371.us.fr, 160
  br i1 %i.es, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.split.us
  switch i16 %.0.copyload.i2371.us.fr, label %bb.ae [
    i16 160, label %bb.ah
    i16 5760, label %bb.ah
    i16 -257, label %bb.ah
  ]

bb.ac:                                            ; preds = %.split.us
  %i.et = add nsw i32 %i.er, -9                   ; 2 uses
  %i.eu = icmp ugt i32 %i.et, 23
  br i1 %i.eu, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ev = shl nuw nsw i32 1, %i.et
  %i.ew = and i32 %i.ev, 8388621
  %.not2120.us = icmp eq i32 %i.ew, 0
  br i1 %.not2120.us, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.ex = add nuw nsw i32 %i.er, 57344
  %i.ey = and i32 %i.ex, 65535
  %i.ez = icmp samesign ult i32 %i.ey, 11
  br i1 %i.ez, label %bb.ah, label %switch.early.test.us

switch.early.test.us:                             ; preds = %bb.ae
  switch i16 %.0.copyload.i2371.us.fr, label %bb.af [
    i16 12288, label %bb.ah
    i16 8287, label %bb.ah
    i16 8239, label %bb.ah
  ]

bb.af:                                            ; preds = %switch.early.test.us
  %.val2338.us = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fa = getelementptr inbounds nuw i8, ptr %.val2338.us, i64 %i.ep
  %.0.copyload.i2373.us = load i16, ptr %i.fa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i2373.us) #8, !srcloc !24
  switch i16 %.0.copyload.i2373.us, label %bb.ag [
    i16 10, label %bb.ah
    i16 11, label %.loopexit2508
    i16 12, label %.loopexit2508
    i16 13, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  %i.fb = and i16 %.0.copyload.i2373.us, -2
  %.not2121.us = icmp eq i16 %i.fb, 8232
  br i1 %.not2121.us, label %bb.ah, label %.loopexit2508

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.af, %switch.early.test.us, %switch.early.test.us, %switch.early.test.us, %bb.ae, %bb.ad, %bb.ab, %bb.ab, %bb.ab
  %i.fc = add i32 %.22028.us, %3                  ; 2 uses
  %.not2122.us = icmp eq i32 %i.fc, %i.dz
  br i1 %.not2122.us, label %.loopexit2507, label %.split.us, !llvm.loop !40

.split:                                           ; preds = %bb.t, %bb.al
  %.22038 = phi i32 [ %4, %bb.al ], [ %.22049, %bb.t ] ; 8 uses
  %.22028 = phi i32 [ %i.fp, %bb.al ], [ %.12027, %bb.t ] ; 4 uses
  %i.fd = zext i32 %.22038 to i64                 ; 2 uses
  %.val2317 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fe = getelementptr inbounds nuw i8, ptr %.val2317, i64 %i.fd
  %.0.copyload.i2370 = load i8, ptr %i.fe, align 1
  %.0.copyload.i2370.fr = freeze i8 %.0.copyload.i2370 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2370.fr) #8, !srcloc !22
  %i.ff = sext i8 %.0.copyload.i2370.fr to i32
  %i.fg = and i32 %i.ff, 65535                    ; 2 uses
  %i.fh = icmp samesign ult i32 %i.fg, 160
  br i1 %i.fh, label %bb.ai, label %switch.early.test

bb.ai:                                            ; preds = %.split
  %i.fi = add nsw i32 %i.fg, -9                   ; 2 uses
  %i.fj = icmp ugt i32 %i.fi, 23
  br i1 %i.fj, label %switch.early.test, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fk = shl nuw nsw i32 1, %i.fi
  %i.fl = and i32 %i.fk, 8388621
  %.not2120 = icmp eq i32 %i.fl, 0
  br i1 %.not2120, label %switch.early.test, label %bb.al

switch.early.test:                                ; preds = %.split, %bb.aj, %bb.ai
  %.val2316 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fm = getelementptr inbounds nuw i8, ptr %.val2316, i64 %i.fd
  %.0.copyload.i2372 = load i8, ptr %i.fm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2372) #8, !srcloc !22
  switch i8 %.0.copyload.i2372, label %bb.ak [
    i8 10, label %bb.al
    i8 11, label %.loopexit2508
    i8 12, label %.loopexit2508
    i8 13, label %bb.al
  ]

bb.ak:                                            ; preds = %switch.early.test
  %i.fn = sext i8 %.0.copyload.i2372 to i32
  %i.fo = and i32 %i.fn, 65534
  %.not2121 = icmp eq i32 %i.fo, 8232
  br i1 %.not2121, label %bb.al, label %.loopexit2508

bb.al:                                            ; preds = %bb.ak, %switch.early.test, %switch.early.test, %bb.aj
  %4 = add i32 %.22038, 1                         ; 2 uses
  %i.fp = add i32 %.22028, %3
  %.not2122 = icmp eq i32 %4, %i.dz
  br i1 %.not2122, label %.loopexit2507, label %.split

.loopexit2508:                                    ; preds = %switch.early.test, %switch.early.test, %bb.ak, %bb.ag, %bb.af, %bb.af, %bb.y, %bb.y, %bb.z, %bb.s
  %.32039 = phi i32 [ %.22049, %bb.s ], [ 0, %bb.y ], [ 0, %bb.z ], [ 0, %bb.y ], [ 0, %bb.ag ], [ 0, %bb.af ], [ 0, %bb.af ], [ %.22038, %bb.ak ], [ %.22038, %switch.early.test ], [ %.22038, %switch.early.test ] ; 3 uses
  %.32029 = phi i32 [ %.12027, %bb.s ], [ %.12027, %bb.y ], [ %.12027, %bb.z ], [ %.12027, %bb.y ], [ %.22028.us, %bb.ag ], [ %.22028.us, %bb.af ], [ %.22028.us, %bb.af ], [ %.22028, %bb.ak ], [ %.22028, %switch.early.test ], [ %.22028, %switch.early.test ] ; 2 uses
  %.12015 = phi i32 [ %i.dy, %bb.s ], [ %.12027, %bb.y ], [ %.12027, %bb.z ], [ %.12027, %bb.y ], [ %.22028.us, %bb.ag ], [ %.22028.us, %bb.af ], [ %.22028.us, %bb.af ], [ %.22038, %bb.ak ], [ %.22038, %switch.early.test ], [ %.22038, %switch.early.test ] ; 2 uses
  %i.fq = icmp eq i32 %.12015, %i.dz
  br i1 %i.fq, label %.loopexit2507, label %.preheader

.preheader:                                       ; preds = %.loopexit2508, %bb.ay
  %.02019 = phi i32 [ %i.gs, %bb.ay ], [ %.2, %.loopexit2508 ] ; 6 uses
  %.12017 = phi i32 [ %i.gt, %bb.ay ], [ %.02016, %.loopexit2508 ] ; 4 uses
  %.not2123 = icmp eq i32 %.02019, 0              ; 3 uses
  %.val2337 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not2123, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.preheader
  %i.fr = add i32 %.02019, -1
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %.val2337, i64 %i.fs
  %.0.copyload.i2374 = load i8, ptr %i.ft, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2374) #8, !srcloc !22
  %i.fu = sext i8 %.0.copyload.i2374 to i32
  br label %bb.ao

bb.an:                                            ; preds = %.preheader
  %i.fv = add i32 %.12017, -2
  %i.fw = zext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %.val2337, i64 %i.fw
  %.0.copyload.i2375 = load i16, ptr %i.fx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i2375) #8, !srcloc !24
  %i.fy = zext i16 %.0.copyload.i2375 to i32
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.5 = phi i32 [ %i.fu, %bb.am ], [ %i.fy, %bb.an ]
  %.5.fr = freeze i32 %.5                         ; 4 uses
  %i.fz = and i32 %.5.fr, 65535                   ; 2 uses
  %i.ga = icmp samesign ult i32 %i.fz, 160
  br i1 %i.ga, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.gb = add nsw i32 %i.fz, -9                   ; 2 uses
  %i.gc = icmp ugt i32 %i.gb, 23
  br i1 %i.gc, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gd = shl nuw nsw i32 1, %i.gb
  %i.ge = and i32 %i.gd, 8388621
  %.not2124 = icmp eq i32 %i.ge, 0
  br i1 %.not2124, label %bb.as, label %bb.ay

bb.ar:                                            ; preds = %bb.ao
  %trunc2503 = trunc i32 %.5.fr to i16
  switch i16 %trunc2503, label %bb.as [
    i16 160, label %bb.ay
    i16 5760, label %bb.ay
    i16 -257, label %bb.ay
  ]

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.gf = add i32 %.5.fr, 57344
  %i.gg = and i32 %i.gf, 65535
  %i.gh = icmp samesign ult i32 %i.gg, 11
  br i1 %i.gh, label %bb.ay, label %switch.early.test2176

switch.early.test2176:                            ; preds = %bb.as
  %trunc2505 = trunc i32 %.5.fr to i16
  switch i16 %trunc2505, label %bb.at [
    i16 12288, label %bb.ay
    i16 8287, label %bb.ay
    i16 8239, label %bb.ay
  ]

bb.at:                                            ; preds = %switch.early.test2176
  %.val2336 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  br i1 %.not2123, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gi = add i32 %.02019, -1
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %.val2336, i64 %i.gj
  %.0.copyload.i2376 = load i8, ptr %i.gk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2376) #8, !srcloc !22
  %i.gl = sext i8 %.0.copyload.i2376 to i32
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.gm = add i32 %.12017, -2
  %i.gn = zext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %.val2336, i64 %i.gn
  %.0.copyload.i2377 = load i16, ptr %i.go, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i2377) #8, !srcloc !24
  %i.gp = zext i16 %.0.copyload.i2377 to i32
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.6 = phi i32 [ %i.gl, %bb.au ], [ %i.gp, %bb.av ] ; 2 uses
  %trunc2125 = trunc i32 %.6 to i16
  switch i16 %trunc2125, label %bb.ax [
    i16 10, label %bb.ay
    i16 11, label %.loopexit2506
    i16 12, label %.loopexit2506
    i16 13, label %bb.ay
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.gq = and i32 %.6, 65534
  %.not2126 = icmp eq i32 %i.gq, 8232
  br i1 %.not2126, label %bb.ay, label %.loopexit2506

bb.ay:                                            ; preds = %switch.early.test2176, %switch.early.test2176, %switch.early.test2176, %bb.as, %bb.ar, %bb.ar, %bb.ar, %bb.ax, %bb.aw, %bb.aw, %bb.aq
  %i.gr = select i1 %.not2123, i32 -2, i32 0
  %i.gs = tail call i32 @llvm.usub.sat.i32(i32 %.02019, i32 1) ; 2 uses
  %i.gt = add i32 %i.gr, %.12017                  ; 2 uses
  %i.gu = select i1 %.not2119, i32 %i.gt, i32 %i.gs
  %.not2127 = icmp eq i32 %.12015, %i.gu
  br i1 %.not2127, label %.loopexit2507, label %.preheader

.loopexit2506:                                    ; preds = %bb.aw, %bb.aw, %bb.ax
  %i.gv = add i32 %1, 5476                        ; 4 uses
  %.not2131 = icmp eq i32 %i.r, 0                 ; 2 uses
  br i1 %i.u, label %bb.az, label %bb.bh

bb.az:                                            ; preds = %.loopexit2506
  br i1 %.not2131, label %bb.bg, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gw = zext i32 %.0.copyload.i2347 to i64
  %.val2265 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gx = getelementptr inbounds nuw i8, ptr %.val2265, i64 %i.gw
  %.0.copyload.i2378 = load i32, ptr %i.gx, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2378) #8, !srcloc !19
  %i.gy = zext i32 %.0.copyload.i2378 to i64      ; 4 uses
  %.val2264 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gz = getelementptr inbounds nuw i8, ptr %.val2264, i64 %i.gy
  %.0.copyload.i2379 = load i32, ptr %i.gz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2379) #8, !srcloc !19
  %i.ha = icmp ugt i32 %.0.copyload.i2379, 150994943
  br i1 %i.ha, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %.val2263 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hb = getelementptr inbounds nuw i8, ptr %.val2263, i64 %i.gy
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  %.0.copyload.i2380 = load i32, ptr %i.hc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2380) #8, !srcloc !19
  %i.hd = add i32 %.0.copyload.i2378, 12
  %.val2313 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.he = getelementptr inbounds nuw i8, ptr %.val2313, i64 %i.gy
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 23
  %.0.copyload.i2381 = load i8, ptr %i.hf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2381) #8, !srcloc !22
  %i.hg = icmp slt i8 %.0.copyload.i2381, 0
  %i.hh = select i1 %i.hg, i32 %.0.copyload.i2380, i32 %i.hd
  br label %bb.bg

bb.bc:                                            ; preds = %bb.ba
  %i.hi = and i32 %.0.copyload.i2379, 251658240
  switch i32 %i.hi, label %bb.bf [
    i32 67108864, label %bb.be
    i32 134217728, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.hj = add i32 %.0.copyload.i2378, 12
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
  %i.hk = add i32 %.0.copyload.i2378, 8
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bc
  %.val2262 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hl = getelementptr inbounds nuw i8, ptr %.val2262, i64 %i.gy
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %.0.copyload.i2382 = load i32, ptr %i.hm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2382) #8, !srcloc !19
  %i.hn = zext i32 %.0.copyload.i2382 to i64      ; 2 uses
  %.val2261 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ho = getelementptr inbounds nuw i8, ptr %.val2261, i64 %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 12
  %.0.copyload.i2383 = load i32, ptr %i.hp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2383) #8, !srcloc !19
  %i.hq = add i32 %.0.copyload.i2382, 12
  %.val2312 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hr = getelementptr inbounds nuw i8, ptr %.val2312, i64 %i.hn
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 23
  %.0.copyload.i2384 = load i8, ptr %i.hs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2384) #8, !srcloc !22
  %i.ht = icmp slt i8 %.0.copyload.i2384, 0
  %i.hu = select i1 %i.ht, i32 %.0.copyload.i2383, i32 %i.hq
  br label %bb.bg

bb.bg:                                            ; preds = %bb.az, %bb.bf, %bb.be, %bb.bd, %bb.bb
  %.02024 = phi i32 [ %.0.copyload.i2347, %bb.az ], [ %i.hh, %bb.bb ], [ %i.hu, %bb.bf ], [ %i.hj, %bb.bd ], [ %i.hk, %bb.be ]
  %i.hv = add i32 %.02024, %.0.copyload.i2346
  br label %bb.bp

bb.bh:                                            ; preds = %.loopexit2506
  br i1 %.not2131, label %bb.bo, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hw = zext i32 %.0.copyload.i2347 to i64
  %.val2260 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hx = getelementptr inbounds nuw i8, ptr %.val2260, i64 %i.hw
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AisPrefix0x28hermes0x3A0x3Avm0x3A0x3AStringView0x2C0x20hermes0x3A0x3Avm0x3A0x3AStringView0x29:bb.a
  %i.db = zext i32 %.0.copyload.i669 to i64       ; 2 uses
  %.val617 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dc = getelementptr inbounds nuw i8, ptr %.val617, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %.0.copyload.i670 = load i32, ptr %i.dd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i670) #8, !srcloc !19
  %i.de = add i32 %.0.copyload.i669, 12
  %.val641 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %.val641, i64 %i.db
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 23
  %.0.copyload.i671 = load i8, ptr %i.dg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i671) #8, !srcloc !22
  %i.dh = icmp slt i8 %.0.copyload.i671, 0
  %i.di = select i1 %i.dh, i32 %.0.copyload.i670, i32 %i.de
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread695, %.thread697, %bb.n, %bb.m
  %.1573 = phi i32 [ %.0.copyload.i650, %bb.m ], [ %i.ce, %bb.n ], [ %i.ct, %bb.o ], [ %i.ad, %.thread697 ], [ %i.ch, %.thread695 ]
  %.1567 = phi i32 [ %.0.copyload.i651, %bb.m ], [ %i.cd, %bb.n ], [ %i.di, %bb.o ], [ %i.ah, %.thread697 ], [ %i.cl, %.thread695 ]
  %.1563 = phi i32 [ %i.bw, %bb.m ], [ %i.cg, %bb.n ], [ %i.cy, %bb.o ], [ %i.ag, %.thread697 ], [ %i.ck, %.thread695 ]
  %i.dj = add i32 %.1573, %.0.copyload.i
  %i.dk = shl i32 %i.dj, 1
  %i.dl = add i32 %i.dk, %.1567
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %.2574 = phi i32 [ %.0572, %bb.l ], [ 0, %bb.p ] ; 3 uses
  %.2564 = phi i32 [ 0, %bb.l ], [ %.1563, %bb.p ] ; 2 uses
  %.0558 = phi i32 [ 0, %bb.l ], [ %i.dl, %bb.p ]
  %.0557 = phi i32 [ %i.bu, %bb.l ], [ 0, %bb.p ]
  %.val616 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %.val616, i64 %i.e
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %.0.copyload.i672 = load i32, ptr %i.dn, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i672) #8, !srcloc !19
  %i.do = and i32 %.0.copyload.i672, 1073741824
  %.val615 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %.val615, i64 %i.e
  %.0.copyload.i673 = load i32, ptr %i.dp, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i673) #8, !srcloc !19
  %i.dq = icmp slt i32 %.0.copyload.i672, 0
  %.not599 = icmp eq i32 %i.do, 0                 ; 2 uses
  br i1 %i.dq, label %bb.r, label %bb.z

bb.r:                                             ; preds = %bb.q
  br i1 %.not599, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dr = zext i32 %.0.copyload.i673 to i64
  %.val614 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %.val614, i64 %i.dr
  %.0.copyload.i674 = load i32, ptr %i.ds, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i674) #8, !srcloc !19
  %i.dt = zext i32 %.0.copyload.i674 to i64       ; 4 uses
  %.val613 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.du = getelementptr inbounds nuw i8, ptr %.val613, i64 %i.dt
  %.0.copyload.i675 = load i32, ptr %i.du, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i675) #8, !srcloc !19
  %i.dv = icmp ugt i32 %.0.copyload.i675, 150994943
  br i1 %i.dv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.val612 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dw = getelementptr inbounds nuw i8, ptr %.val612, i64 %i.dt
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  %.0.copyload.i676 = load i32, ptr %i.dx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i676) #8, !srcloc !19
  %i.dy = add i32 %.0.copyload.i674, 12
  %.val640 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dz = getelementptr inbounds nuw i8, ptr %.val640, i64 %i.dt
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 23
  %.0.copyload.i677 = load i8, ptr %i.ea, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i677) #8, !srcloc !22
  %i.eb = icmp slt i8 %.0.copyload.i677, 0
  %i.ec = select i1 %i.eb, i32 %.0.copyload.i676, i32 %i.dy
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.ed = and i32 %.0.copyload.i675, 251658240
  switch i32 %i.ed, label %bb.x [
    i32 67108864, label %bb.w
    i32 134217728, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.ee = add i32 %.0.copyload.i674, 12
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.ef = add i32 %.0.copyload.i674, 8
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %.val611 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.eg = getelementptr inbounds nuw i8, ptr %.val611, i64 %i.dt
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %.0.copyload.i678 = load i32, ptr %i.eh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i678) #8, !srcloc !19
  %i.ei = zext i32 %.0.copyload.i678 to i64       ; 2 uses
  %.val610 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ej = getelementptr inbounds nuw i8, ptr %.val610, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  %.0.copyload.i679 = load i32, ptr %i.ek, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i679) #8, !srcloc !19
  %i.el = add i32 %.0.copyload.i678, 12
  %.val639 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.em = getelementptr inbounds nuw i8, ptr %.val639, i64 %i.ei
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 23
  %.0.copyload.i680 = load i8, ptr %i.en, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i680) #8, !srcloc !22
  %i.eo = icmp slt i8 %.0.copyload.i680, 0
  %i.ep = select i1 %i.eo, i32 %.0.copyload.i679, i32 %i.el
  br label %bb.y

bb.y:                                             ; preds = %bb.r, %bb.x, %bb.w, %bb.v, %bb.t
  %.0569 = phi i32 [ %.0.copyload.i673, %bb.r ], [ %i.ec, %bb.t ], [ %i.ep, %bb.x ], [ %i.ee, %bb.v ], [ %i.ef, %bb.w ]
  %i.eq = and i32 %.0.copyload.i672, 1073741823
  %i.er = add i32 %.0569, %i.eq
  br label %bb.ah

bb.z:                                             ; preds = %bb.q
  br i1 %.not599, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.es = zext i32 %.0.copyload.i673 to i64
  %.val609 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.et = getelementptr inbounds nuw i8, ptr %.val609, i64 %i.es
  %.0.copyload.i681 = load i32, ptr %i.et, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i681) #8, !srcloc !19
  %i.eu = zext i32 %.0.copyload.i681 to i64       ; 4 uses
  %.val608 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ev = getelementptr inbounds nuw i8, ptr %.val608, i64 %i.eu
  %.0.copyload.i682 = load i32, ptr %i.ev, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i682) #8, !srcloc !19
  %i.ew = icmp ugt i32 %.0.copyload.i682, 150994943
  br i1 %i.ew, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.val607 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ex = getelementptr inbounds nuw i8, ptr %.val607, i64 %i.eu
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  %.0.copyload.i683 = load i32, ptr %i.ey, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i683) #8, !srcloc !19
  %i.ez = add i32 %.0.copyload.i681, 12
  %.val638 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.fa = getelementptr inbounds nuw i8, ptr %.val638, i64 %i.eu
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 23
  %.0.copyload.i684 = load i8, ptr %i.fb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i684) #8, !srcloc !22
  %i.fc = icmp slt i8 %.0.copyload.i684, 0
  %i.fd = select i1 %i.fc, i32 %.0.copyload.i683, i32 %i.ez
  br label %bb.ag

bb.ac:                                            ; preds = %bb.aa
  %i.fe = and i32 %.0.copyload.i682, 251658240
  switch i32 %i.fe, label %bb.af [
    i32 50331648, label %bb.ae
    i32 117440512, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.ff = add i32 %.0.copyload.i681, 12
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.fg = add i32 %.0.copyload.i681, 8
  br label %bb.ag

bb.af:                                            ; preds = %bb.ac
  %.val606 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.fh = getelementptr inbounds nuw i8, ptr %.val606, i64 %i.eu
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %.0.copyload.i685 = load i32, ptr %i.fi, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i685) #8, !srcloc !19
  %i.fj = zext i32 %.0.copyload.i685 to i64       ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.fk = getelementptr inbounds nuw i8, ptr %.val, i64 %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  %.0.copyload.i686 = load i32, ptr %i.fl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i686) #8, !srcloc !19
  %i.fm = add i32 %.0.copyload.i685, 12
  %.val637 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.fn = getelementptr inbounds nuw i8, ptr %.val637, i64 %i.fj
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 23
  %.0.copyload.i687 = load i8, ptr %i.fo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i687) #8, !srcloc !22
  %i.fp = icmp slt i8 %.0.copyload.i687, 0
  %i.fq = select i1 %i.fp, i32 %.0.copyload.i686, i32 %i.fm
  br label %bb.ag

bb.ag:                                            ; preds = %bb.z, %bb.af, %bb.ae, %bb.ad, %bb.ab
  %.1570 = phi i32 [ %.0.copyload.i673, %bb.z ], [ %i.fd, %bb.ab ], [ %i.fq, %bb.af ], [ %i.ff, %bb.ad ], [ %i.fg, %bb.ae ]
  %i.fr = shl nuw i32 %.0.copyload.i672, 1
  %i.fs = and i32 %i.fr, 2147483646
  %i.ft = add i32 %.1570, %i.fs
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.y
  %.0560 = phi i32 [ 0, %bb.y ], [ %i.ft, %bb.ag ] ; 2 uses
  %.2 = phi i32 [ %i.er, %bb.y ], [ 0, %bb.ag ]   ; 2 uses
  %.not602 = icmp eq i32 %.2574, 0                ; 4 uses
  %i.fu = select i1 %.not602, i32 %.0558, i32 %.0557 ; 3 uses
  %i.fv = select i1 %.not602, i32 %.2564, i32 %.2574
  %i.fw = icmp eq i32 %i.fu, %i.fv
  br i1 %i.fw, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %3 = select i1 %.not602, i32 2, i32 0
  br i1 %.not602, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.ai, %bb.am
  %.2571.us = phi i32 [ %i.gi, %bb.am ], [ %.2, %bb.ai ] ; 3 uses
  %.3565.us = phi i32 [ %i.gj, %bb.am ], [ %.2564, %bb.ai ] ; 2 uses
  %.1561.us = phi i32 [ %i.gg, %bb.am ], [ %.0560, %bb.ai ] ; 2 uses
  %i.fx = zext i32 %.3565.us to i64
  %.val648.us = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.fy = getelementptr inbounds nuw i8, ptr %.val648.us, i64 %i.fx
  %.0.copyload.i689.us = load i16, ptr %i.fy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i689.us) #8, !srcloc !24
  %.not603.us = icmp eq i32 %.2571.us, 0          ; 3 uses
  %.val647.us = load ptr, ptr %i.a, align 8, !tbaa !18 ; 2 uses
  br i1 %.not603.us, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.split.us
  %i.fz = zext i32 %.2571.us to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %.val647.us, i64 %i.fz
  %.0.copyload.i690.us = load i8, ptr %i.ga, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i690.us) #8, !srcloc !22
  %i.gb = sext i8 %.0.copyload.i690.us to i16
  br label %bb.al

bb.ak:                                            ; preds = %.split.us
  %i.gc = zext i32 %.1561.us to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %.val647.us, i64 %i.gc
  %.0.copyload.i691.us = load i16, ptr %i.gd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i691.us) #8, !srcloc !24
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.0.us = phi i16 [ %i.gb, %bb.aj ], [ %.0.copyload.i691.us, %bb.ak ]
  %i.ge = icmp eq i16 %.0.us, %.0.copyload.i689.us
  br i1 %i.ge, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %bb.al
  %i.gf = select i1 %.not603.us, i32 2, i32 0
  %i.gg = add i32 %.1561.us, %i.gf
  %i.gh = add i32 %.2571.us, 1
  %i.gi = select i1 %.not603.us, i32 0, i32 %i.gh
  %i.gj = add i32 %.3565.us, %3                   ; 2 uses
  %.not605.us = icmp eq i32 %i.gj, %i.fu
  br i1 %.not605.us, label %.loopexit, label %.split.us

.split:                                           ; preds = %bb.ai, %bb.aq
  %.2571 = phi i32 [ %i.ha, %bb.aq ], [ %.2, %bb.ai ] ; 3 uses
  %.2568 = phi i32 [ %i.gw, %bb.aq ], [ %.2574, %bb.ai ] ; 2 uses
  %.1561 = phi i32 [ %i.gy, %bb.aq ], [ %.0560, %bb.ai ] ; 2 uses
  %i.gk = zext i32 %.2568 to i64
  %.val636 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.gl = getelementptr inbounds nuw i8, ptr %.val636, i64 %i.gk
  %.0.copyload.i688 = load i8, ptr %i.gl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i688) #8, !srcloc !22
  %i.gm = sext i8 %.0.copyload.i688 to i32
  %.not603 = icmp eq i32 %.2571, 0                ; 3 uses
  %.val647 = load ptr, ptr %i.a, align 8, !tbaa !18 ; 2 uses
  br i1 %.not603, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.split
  %i.gn = zext i32 %.2571 to i64
  %i.go = getelementptr inbounds nuw i8, ptr %.val647, i64 %i.gn
  %.0.copyload.i690 = load i8, ptr %i.go, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i690) #8, !srcloc !22
  %i.gp = sext i8 %.0.copyload.i690 to i32
  br label %bb.ap

bb.ao:                                            ; preds = %.split
  %i.gq = zext i32 %.1561 to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %.val647, i64 %i.gq
  %.0.copyload.i691 = load i16, ptr %i.gr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i691) #8, !srcloc !24
  %i.gs = zext i16 %.0.copyload.i691 to i32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.0 = phi i32 [ %i.gp, %bb.an ], [ %i.gs, %bb.ao ]
  %i.gt = xor i32 %.0, %i.gm
  %i.gu = and i32 %i.gt, 65535
  %i.gv = icmp eq i32 %i.gu, 0
  br i1 %i.gv, label %bb.aq, label %.loopexit

bb.aq:                                            ; preds = %bb.ap
  %i.gw = add i32 %.2568, 1                       ; 2 uses
  %i.gx = select i1 %.not603, i32 2, i32 0
  %i.gy = add i32 %.1561, %i.gx
  %i.gz = add i32 %.2571, 1
  %i.ha = select i1 %.not603, i32 0, i32 %i.gz
  %.not605 = icmp eq i32 %i.gw, %i.fu
  br i1 %.not605, label %.loopexit, label %.split

.loopexit:                                        ; preds = %bb.aq, %bb.ap, %bb.am, %bb.al, %bb.a, %bb.ah
  %.4 = phi i32 [ 1, %bb.ah ], [ 0, %bb.a ], [ 0, %bb.al ], [ 1, %bb.am ], [ 1, %bb.aq ], [ 0, %bb.ap ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define hidden double @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AhourFromTime0x28double0x29(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = fdiv double %1, 3.600000e+06             ; 3 uses
  %i.b = fcmp uno double %i.a, 0.000000e+00
  br i1 %i.b, label %bb.b, label %bb.c, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.c = bitcast double %i.a to i64
  %i.d = or i64 %i.c, 9221120237041090560
  %i.e = bitcast i64 %i.d to double
  br label %wasm_floor.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call double @llvm.floor.f64(double %i.a)
  br label %wasm_floor.exit

wasm_floor.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi double [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  %i.g = tail call double @w2c_hermes_fmod(ptr noundef %0, double noundef %.0.i, double noundef 2.400000e+01) #8 ; 2 uses
  %i.h = fcmp olt double %i.g, 0.000000e+00
  %i.i = select i1 %i.h, double 2.400000e+01, double -0.000000e+00
  %i.j = fadd double %i.g, %i.i
  ret double %i.j
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AenumerableOwnProperties_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AEnumerableOwnPropertiesKind0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 15 uses
  %i.c = add i32 %i.b, -272                       ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 111 uses
  %i.e = zext i32 %i.c to i64                     ; 23 uses
  %.val1035 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val1035, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store i32 %2, ptr %i.g, align 1
  %i.h = zext i32 %2 to i64
  %i.i = add nuw nsw i64 %i.h, 4                  ; 8 uses
  %.val1079 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val1079, i64 %i.i
  %.0.copyload.i = load i32, ptr %i.j, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.k = add i32 %i.b, -28                        ; 2 uses
  %i.l = add i32 %i.b, -168                       ; 2 uses
  %i.m = zext i32 %i.k to i64
  %.val1034 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val1034, i64 %i.m
  store i32 %i.l, ptr %i.n, align 1
  %.val1095 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val1095, i64 %i.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 236
  store i64 17179869185, ptr %i.p, align 1
  %i.q = add nuw nsw i64 %i.e, 232                ; 2 uses
  %.val1033 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val1033, i64 %i.q
  store i32 %i.k, ptr %i.r, align 1
  %.val1032 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val1032, i64 %i.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 100
  store i32 %.0.copyload.i, ptr %i.t, align 1
  %i.u = add nuw nsw i64 %i.e, 268                ; 3 uses
  %.val1031 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %.val1031, i64 %i.u
  store i32 0, ptr %i.v, align 1
  %i.w = add i32 %i.b, -40
  %i.x = add nuw nsw i64 %i.e, 264                ; 2 uses
  %.val1030 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val1030, i64 %i.x
  store i32 %i.w, ptr %i.y, align 1
  %i.z = add nuw nsw i64 %i.e, 260                ; 3 uses
  %.val1029 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1029, i64 %i.z
  store i32 %i.l, ptr %i.aa, align 1
  %i.ab = add i32 %i.b, -176                      ; 2 uses
  %.val1028 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1028, i64 %i.i
  store i32 %i.ab, ptr %i.ac, align 1
  %i.ad = zext i32 %3 to i64                      ; 3 uses
  %.val1078 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1078, i64 %i.ad
  %.0.copyload.i1118 = load i32, ptr %i.ae, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1118) #8, !srcloc !19
  %i.af = zext i32 %.0.copyload.i1118 to i64
  %.val1107 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1107, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %.0.copyload.i1119 = load i8, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1119) #8, !srcloc !21
  %i.ai = add nuw nsw i64 %i.e, 76                ; 3 uses
  %.val1027 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val1027, i64 %i.ai
  store i32 2, ptr %i.aj, align 1
  %i.ak = lshr i8 %.0.copyload.i1119, 5
  %i.al = and i8 %i.ak, 4
  %i.am = or disjoint i8 %i.al, 2
  %.val1108 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %.val1108, i64 %i.ai
  store i8 %i.am, ptr %i.an, align 1
  %.val1077 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %.val1077, i64 %i.ai
  %.0.copyload.i1120 = load i32, ptr %i.ao, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1120) #8, !srcloc !19
  %.val1026 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.val1026, i64 %i.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  store i32 %.0.copyload.i1120, ptr %i.aq, align 1
  %i.ar = add i32 %i.b, -192
  %i.as = add i32 %i.b, -244
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AgetOwnPropertyKeysAsStrings0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AOwnKeysFlags0x29(ptr noundef %0, i32 noundef %i.ar, i32 noundef %3, i32 noundef %2, i32 noundef %i.as)
  %.val1076 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %.val1076, i64 %i.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  %.0.copyload.i1121 = load i32, ptr %i.au, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1121) #8, !srcloc !19
  %.not = icmp eq i32 %.0.copyload.i1121, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.av = zext i32 %1 to i64
  %.val1025 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %.val1025, i64 %i.av
  store i32 0, ptr %i.aw, align 1
  br label %bb.cb

bb.c:                                             ; preds = %bb.a
  %.not991 = icmp eq i32 %4, 0                    ; 2 uses
  br i1 %.not991, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.val1075 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %.val1075, i64 %i.ad
  %.0.copyload.i1122 = load i32, ptr %i.ax, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1122) #8, !srcloc !19
  %i.ay = zext i32 %.0.copyload.i1122 to i64
  %.val1106 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.val1106, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %.0.copyload.i1123 = load i8, ptr %i.ba, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1123) #8, !srcloc !21
  %.not992 = icmp sgt i8 %.0.copyload.i1123, -1
  br i1 %.not992, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AindexOfHelper0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x2C0x20bool0x29:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %.val860.a, i64 %i.an
  %.0.copyload.i901 = load i32, ptr %i.ao, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i901) #8, !srcloc !19
  %.val859.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.val859.a, i64 %i.am
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 168
  %.0.copyload.i902 = load i32, ptr %i.aq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i902) #8, !srcloc !19
  %i.ar = icmp ult i32 %.0.copyload.i901, %.0.copyload.i902
  br i1 %i.ar, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.as = add i32 %.0.copyload.i901, 8
  %.val822.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %.val822.a, i64 %i.an
  store i32 %i.as, ptr %i.at, align 1
  %i.au = zext i32 %.0.copyload.i901 to i64
  %.val880.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %.val880.a, i64 %i.au
  store i64 %i.ak, ptr %i.av, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aw = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i900, i64 noundef %i.ak) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0775 = phi i32 [ %.0.copyload.i901, %bb.d ], [ %i.aw, %bb.e ] ; 6 uses
  %.val821 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %.val821, i64 %i.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  store i32 0, ptr %i.ay, align 1
  %i.az = add nuw nsw i64 %i.e, 80                ; 2 uses
  %.val820.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %.val820.a, i64 %i.az
  store i32 0, ptr %i.ba, align 1
  %i.bb = add i32 %i.b, -208
  %i.bc = add i32 %i.b, -284
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetNamedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3APropertyCacheEntry0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.bb, i32 noundef %.0775, i32 noundef %2, i32 noundef 85, i32 noundef %.0775, i32 noundef %i.bc, i32 noundef 0) #8
  %.val858.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %.val858.a, i64 %i.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  %.0.copyload.i903 = load i32, ptr %i.be, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i903) #8, !srcloc !19
  %.not787 = icmp eq i32 %.0.copyload.i903, 0
  br i1 %.not787, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bf = zext i32 %1 to i64
  br label %bb.au

bb.h:                                             ; preds = %bb.f
  %.val890.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %.val890.a, i64 %i.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 104
  %.0.copyload.i904 = load i64, ptr %i.bh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i904) #8, !srcloc !20
  %.val857.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val857.a, i64 %i.i
  %.0.copyload.i905 = load i32, ptr %i.bi, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i905) #8, !srcloc !19
  %i.bj = zext i32 %.0.copyload.i905 to i64       ; 2 uses
  %i.bk = add nuw nsw i64 %i.bj, 164              ; 2 uses
  %.val856.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.val856.a, i64 %i.bk
  %.0.copyload.i906 = load i32, ptr %i.bl, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i906) #8, !srcloc !19
  %.val855.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.val855.a, i64 %i.bj
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 168
  %.0.copyload.i907 = load i32, ptr %i.bn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i907) #8, !srcloc !19
  %i.bo = icmp ult i32 %.0.copyload.i906, %.0.copyload.i907
  br i1 %i.bo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bp = add i32 %.0.copyload.i906, 8
  %.val818 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.val818, i64 %i.bk
  store i32 %i.bp, ptr %i.bq, align 1
  %i.br = zext i32 %.0.copyload.i906 to i64
  %.val879.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.val879.a, i64 %i.br
  store i64 %.0.copyload.i904, ptr %i.bs, align 1
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bt = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i905, i64 noundef %.0.copyload.i904) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0777 = phi i32 [ %.0.copyload.i906, %bb.i ], [ %i.bt, %bb.j ]
  %i.bu = add i32 %i.b, -224
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoLengthU640x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.bu, i32 noundef %2, i32 noundef %.0777) #8
  %.val854.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %.val854.a, i64 %i.az
  %.0.copyload.i908 = load i32, ptr %i.bv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i908) #8, !srcloc !19
  %.not788 = icmp eq i32 %.0.copyload.i908, 0
  br i1 %.not788, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bw = zext i32 %1 to i64
  br label %bb.au

bb.m:                                             ; preds = %bb.k
  %.val889.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %.val889.a, i64 %i.e
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 88
  %.0.copyload.i909 = load i64, ptr %i.by, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i909) #8, !srcloc !20
  %.not789 = icmp eq i64 %.0.copyload.i909, 0
  br i1 %.not789, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bz = zext i32 %1 to i64                      ; 2 uses
  %.val878.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %.val878.a, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i64 -4616189618054758400, ptr %i.cb, align 1
  br label %bb.au

bb.o:                                             ; preds = %bb.m
  %i.cc = uitofp i64 %.0.copyload.i909 to double  ; 6 uses
  %i.cd = add i32 %i.b, -240
  %i.ce = add i32 %3, -16
  %i.cf = icmp ult i32 %4, 2
  %i.cg = select i1 %i.cf, i32 70392, i32 %i.ce
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoIntegerOrInfinity0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.cd, i32 noundef %2, i32 noundef %i.cg) #8
  %i.ch = icmp ugt i32 %4, 1
  br i1 %i.ch, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %.val853.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.val853.a, i64 %i.e
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %.0.copyload.i910 = load i32, ptr %i.cj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i910) #8, !srcloc !19
  %.not791 = icmp eq i32 %.0.copyload.i910, 0
  br i1 %.not791, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ck = zext i32 %1 to i64
  br label %bb.au

bb.r:                                             ; preds = %bb.p
  %.val897.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %.val897.a, i64 %i.e
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %.0.copyload.i911 = load double, ptr %i.cm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i911) #8, !srcloc !37
  %i.cn = fcmp une double %.0.copyload.i911, 0.000000e+00
  br i1 %i.cn, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.co = fadd double %i.cc, -1.000000e+00
  %.not790 = icmp eq i32 %5, 0
  %i.cp = select i1 %.not790, double 0.000000e+00, double %i.co
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.t, %bb.s
  %.0 = phi double [ %.0.copyload.i911, %bb.r ], [ 0.000000e+00, %bb.s ], [ %i.cp, %bb.t ] ; 6 uses
  %.val852.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %.val852.a, i64 %i.i
  %.0.copyload.i912 = load i32, ptr %i.cq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i912) #8, !srcloc !19
  %i.cr = zext i32 %.0.copyload.i912 to i64       ; 2 uses
  %i.cs = add nuw nsw i64 %i.cr, 164              ; 2 uses
  %.val851.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %.val851.a, i64 %i.cs
  %.0.copyload.i913 = load i32, ptr %i.ct, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i913) #8, !srcloc !19
  %.val850.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %.val850.a, i64 %i.cr
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 168
  %.0.copyload.i914 = load i32, ptr %i.cv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i914) #8, !srcloc !19
  %i.cw = icmp ult i32 %.0.copyload.i913, %.0.copyload.i914
  br i1 %i.cw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cx = add i32 %.0.copyload.i913, 8
  %.val814.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %.val814.a, i64 %i.cs
  store i32 %i.cx, ptr %i.cy, align 1
  %i.cz = zext i32 %.0.copyload.i913 to i64
  %.val877.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.da = getelementptr inbounds nuw i8, ptr %.val877.a, i64 %i.cz
  store i64 -1688849860263936, ptr %i.da, align 1
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.db = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i912, i64 noundef -1688849860263936) #8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1778 = phi i32 [ %.0.copyload.i913, %bb.v ], [ %i.db, %bb.w ] ; 5 uses
  %.not792 = icmp eq i32 %5, 0                    ; 3 uses
  %i.dc = fcmp ult double %.0, 0.000000e+00       ; 2 uses
  br i1 %.not792, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  br i1 %i.dc, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.dd = tail call noundef double @llvm.fabs.f64(double %.0)
  %i.de = fsub double %i.cc, %i.dd                ; 2 uses
  %i.df = fcmp olt double %i.de, 0.000000e+00
  %i.dg = select i1 %i.df, double 0.000000e+00, double %i.de
  br label %bb.ad

bb.aa:                                            ; preds = %bb.x
  br i1 %i.dc, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dh = fadd double %i.cc, -1.000000e+00        ; 2 uses
  %i.di = fcmp ogt double %.0, %i.dh
  %i.dj = select i1 %i.di, double %i.dh, double %.0
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.dk = tail call noundef double @llvm.fabs.f64(double %.0)
  %i.dl = fsub double %i.cc, %i.dk
  br label %bb.ad

bb.ad:                                            ; preds = %bb.y, %bb.ac, %bb.ab, %bb.z
  %.1 = phi double [ %.0, %bb.y ], [ %i.dg, %bb.z ], [ %i.dj, %bb.ab ], [ %i.dl, %bb.ac ] ; 2 uses
  %i.dm = bitcast double %.1 to i64
  %i.dn = fcmp uno double %.1, 0.000000e+00
  %i.do = select i1 %i.dn, i64 9221120237041090560, i64 %i.dm
  %i.dp = zext i32 %.1778 to i64                  ; 9 uses
  %.val876.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %.val876.a, i64 %i.dp
  store i64 %i.do, ptr %i.dq, align 1
  %.val849.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dr = getelementptr inbounds nuw i8, ptr %.val849.a, i64 %i.i
  %.0.copyload.i915 = load i32, ptr %i.dr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i915) #8, !srcloc !19
  %i.ds = zext i32 %.0.copyload.i915 to i64       ; 2 uses
  %i.dt = add nuw nsw i64 %i.ds, 164              ; 2 uses
  %.val848.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.du = getelementptr inbounds nuw i8, ptr %.val848.a, i64 %i.dt
  %.0.copyload.i916 = load i32, ptr %i.du, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i916) #8, !srcloc !19
  %.val847.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dv = getelementptr inbounds nuw i8, ptr %.val847.a, i64 %i.ds
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 168
  %.0.copyload.i917 = load i32, ptr %i.dw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i917) #8, !srcloc !19
  %i.dx = icmp ult i32 %.0.copyload.i916, %.0.copyload.i917
  br i1 %i.dx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dy = add i32 %.0.copyload.i916, 8
  %.val813.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dz = getelementptr inbounds nuw i8, ptr %.val813.a, i64 %i.dt
  store i32 %i.dy, ptr %i.dz, align 1
  %i.ea = zext i32 %.0.copyload.i916 to i64
  %.val875.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eb = getelementptr inbounds nuw i8, ptr %.val875.a, i64 %i.ea
  store i64 -1266636858327041, ptr %i.eb, align 1
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.ec = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i915, i64 noundef -1266636858327041) #8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0776 = phi i32 [ %.0.copyload.i916, %bb.ae ], [ %i.ec, %bb.af ]
  %i.ed = add i32 %3, -8
  %.val812.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ee = getelementptr inbounds nuw i8, ptr %.val812.a, i64 %i.e
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 60
  store i32 %.0776, ptr %i.ef, align 1
  %.val846.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eg = getelementptr inbounds nuw i8, ptr %.val846.a, i64 %i.i
  %.0.copyload.i918 = load i32, ptr %i.eg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i918) #8, !srcloc !19
  %i.eh = zext i32 %.0.copyload.i918 to i64       ; 2 uses
  %i.ei = add nuw nsw i64 %i.eh, 164              ; 2 uses
  %.val845.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ej = getelementptr inbounds nuw i8, ptr %.val845.a, i64 %i.ei
  %.0.copyload.i919 = load i32, ptr %i.ej, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i919) #8, !srcloc !19
  %.val844.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ek = getelementptr inbounds nuw i8, ptr %.val844.a, i64 %i.eh
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 168
  %.0.copyload.i920 = load i32, ptr %i.el, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i920) #8, !srcloc !19
  %i.em = icmp ult i32 %.0.copyload.i919, %.0.copyload.i920
  br i1 %i.em, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.en = add i32 %.0.copyload.i919, 8
  %.val811.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eo = getelementptr inbounds nuw i8, ptr %.val811.a, i64 %i.ei
  store i32 %i.en, ptr %i.eo, align 1
  %i.ep = zext i32 %.0.copyload.i919 to i64
  %.val874.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eq = getelementptr inbounds nuw i8, ptr %.val874.a, i64 %i.ep
  store i64 -281474976710656, ptr %i.eq, align 1
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.er = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i918, i64 noundef -281474976710656) #8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0779 = phi i32 [ %.0.copyload.i919, %bb.ah ], [ %i.er, %bb.ai ]
  %i.es = add nuw nsw i64 %i.e, 56                ; 3 uses
  %.val810.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.et = getelementptr inbounds nuw i8, ptr %.val810.a, i64 %i.es
  store i32 %.0779, ptr %i.et, align 1
  %.val843.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eu = getelementptr inbounds nuw i8, ptr %.val843.a, i64 %i.q
  %.0.copyload.i921 = load i32, ptr %i.eu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i921) #8, !srcloc !19
  %.val842.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ev = getelementptr inbounds nuw i8, ptr %.val842.a, i64 %i.u
  %.0.copyload.i922 = load i32, ptr %i.ev, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i922) #8, !srcloc !19
  %i.ew = shl i32 %.0.copyload.i922, 2            ; 3 uses
  %i.ex = add i32 %i.ew, %.0.copyload.i921
  %i.ey = zext i32 %i.ex to i64
  %.val841.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ez = getelementptr inbounds nuw i8, ptr %.val841.a, i64 %i.ey
  %.0.copyload.i923 = load i32, ptr %i.ez, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i923) #8, !srcloc !19
  %i.fa = add i32 %.0.copyload.i923, 128
  %.val809.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fb = getelementptr inbounds nuw i8, ptr %.val809.a, i64 %i.x
  store i32 %i.fa, ptr %i.fb, align 1
  %6 = select i1 %.not792, double 1.000000e+00, double -1.000000e+00 ; 2 uses
  %.not793 = icmp eq i32 %4, 0
  %i.fc = select i1 %.not793, i32 70392, i32 %i.ed ; 2 uses
  %.val896.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fd = getelementptr inbounds nuw i8, ptr %.val896.a, i64 %i.dp
  %.0.copyload.i924 = load double, ptr %i.fd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i924) #8, !srcloc !37
  %.val840.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fe = getelementptr inbounds nuw i8, ptr %.val840.a, i64 %i.z
  %.0.copyload.i925 = load i32, ptr %i.fe, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i925) #8, !srcloc !19
  br i1 %.not792, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ff = fcmp olt double %.0.copyload.i924, 0.000000e+00
  br i1 %i.ff, label %.loopexit946, label %.preheader947

.preheader947:                                    ; preds = %bb.ak
  %i.fg = add nuw nsw i64 %i.e, 48                ; 2 uses
  %i.fh = add i32 %i.b, -248
  %i.fi = add i32 %i.b, -244
  %i.fj = add i32 %i.b, -256
  %i.fk = add i32 %i.b, -272
  %i.fl = zext i32 %i.fc to i64
  br label %bb.al

bb.al:                                            ; preds = %.preheader947, %bb.ao
  %.val873.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fm = getelementptr inbounds nuw i8, ptr %.val873.a, i64 %i.fg
  store i64 -4294967296, ptr %i.fm, align 1
  %i.fn = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetComputedPrimitiveDescriptor0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3ASymbolID0x3E0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AComputedPropertyDescriptor0x260x29(ptr noundef nonnull %0, i32 noundef %.0775, i32 noundef %2, i32 noundef %.1778, i32 noundef %i.fh, i32 noundef %i.fi, i32 noundef %i.fj) #8 ; 0 uses
  %.val888.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fo = getelementptr inbounds nuw i8, ptr %.val888.a, i64 %i.fg
  %.0.copyload.i926 = load i64, ptr %i.fo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i926) #8, !srcloc !20
  %.val872.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fp = getelementptr inbounds nuw i8, ptr %.val872.a, i64 %i.e
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  store i64 %.0.copyload.i926, ptr %i.fq, align 1
  %.val871.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fr = getelementptr inbounds nuw i8, ptr %.val871.a, i64 %i.e
  store i64 %.0.copyload.i926, ptr %i.fr, align 1
  %.val839.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fs = getelementptr inbounds nuw i8, ptr %.val839.a, i64 %i.es
  %.0.copyload.i927 = load i32, ptr %i.fs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i927) #8, !srcloc !19
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetComputedPropertyValue_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3ASymbolID0x3E0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AComputedPropertyDescriptor0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.fk, i32 noundef %.0775, i32 noundef %2, i32 noundef %.0.copyload.i927, i32 noundef %i.c, i32 noundef %.1778) #8
  %.val838.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ft = getelementptr inbounds nuw i8, ptr %.val838.a, i64 %i.e
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %.0.copyload.i928 = load i32, ptr %i.fu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i928) #8, !srcloc !19
  %.not797.a = icmp eq i32 %.0.copyload.i928, 0
  br i1 %.not797.a, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.val887.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fv = getelementptr inbounds nuw i8, ptr %.val887.a, i64 %i.e
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  %.0.copyload.i929 = load i64, ptr %i.fw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i929) #8, !srcloc !20
  %.mask799 = and i64 %.0.copyload.i929, -140737488355328
  %.not798.a = icmp eq i64 %.mask799, -1970324836974592
  br i1 %.not798.a, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.val886.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fx = getelementptr inbounds nuw i8, ptr %.val886.a, i64 %i.fl
  %.0.copyload.i930 = load i64, ptr %i.fx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i930) #8, !srcloc !20
  %i.fy = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AstrictEqualityTest0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x2C0x20hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i64 noundef %.0.copyload.i930, i64 noundef %.0.copyload.i929)
  %.not800 = icmp eq i32 %i.fy, 0
  br i1 %.not800, label %bb.ao, label %.loopexit945

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.val895.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fz = getelementptr inbounds nuw i8, ptr %.val895.a, i64 %i.dp
  %.0.copyload.i931 = load double, ptr %i.fz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i931) #8, !srcloc !37
  %i.ga = fadd double %6, %.0.copyload.i931       ; 2 uses
  %i.gb = bitcast double %i.ga to i64
  %i.gc = fcmp uno double %i.ga, 0.000000e+00
  %i.gd = select i1 %i.gc, i64 9221120237041090560, i64 %i.gb
  %.val870.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ge = getelementptr inbounds nuw i8, ptr %.val870.a, i64 %i.dp
  store i64 %i.gd, ptr %i.ge, align 1
  %.val837.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gf = getelementptr inbounds nuw i8, ptr %.val837.a, i64 %i.q
  %.0.copyload.i932 = load i32, ptr %i.gf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i932) #8, !srcloc !19
  %i.gg = add i32 %.0.copyload.i932, %i.ew
  %i.gh = zext i32 %i.gg to i64
  %.val836.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gi = getelementptr inbounds nuw i8, ptr %.val836.a, i64 %i.gh
  %.0.copyload.i933 = load i32, ptr %i.gi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i933) #8, !srcloc !19
  %.val808.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gj = getelementptr inbounds nuw i8, ptr %.val808.a, i64 %i.u
  store i32 %.0.copyload.i922, ptr %i.gj, align 1
  %.val807.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gk = getelementptr inbounds nuw i8, ptr %.val807.a, i64 %i.z
  store i32 %.0.copyload.i925, ptr %i.gk, align 1
  %i.gl = add i32 %.0.copyload.i933, 128
  %.val806.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gm = getelementptr inbounds nuw i8, ptr %.val806.a, i64 %i.x
  store i32 %i.gl, ptr %i.gm, align 1
  %.val894.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gn = getelementptr inbounds nuw i8, ptr %.val894.a, i64 %i.dp
  %.0.copyload.i934 = load double, ptr %i.gn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i934) #8, !srcloc !37
  %i.go = fcmp uge double %.0.copyload.i934, 0.000000e+00
  br i1 %i.go, label %bb.al, label %.loopexit946

bb.ap:                                            ; preds = %bb.aj
  %i.gp = fcmp ult double %.0.copyload.i924, %i.cc
  br i1 %i.gp, label %.preheader, label %.loopexit946

.preheader:                                       ; preds = %bb.ap
  %i.gq = add nuw nsw i64 %i.e, 48                ; 2 uses
  %i.gr = add i32 %i.b, -248
  %i.gs = add i32 %i.b, -244
  %i.gt = add i32 %i.b, -256
  %i.gu = add i32 %i.b, -272
  %i.gv = add i32 %i.b, -296
  %i.gw = zext i32 %i.fc to i64
  br label %bb.aq

bb.aq:                                            ; preds = %.preheader, %bb.at
  %.val869.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gx = getelementptr inbounds nuw i8, ptr %.val869.a, i64 %i.gq
  store i64 -4294967296, ptr %i.gx, align 1
  %i.gy = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetComputedPrimitiveDescriptor0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3ASymbolID0x3E0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AComputedPropertyDescriptor0x260x29(ptr noundef nonnull %0, i32 noundef %.0775, i32 noundef %2, i32 noundef %.1778, i32 noundef %i.gr, i32 noundef %i.gs, i32 noundef %i.gt) #8 ; 0 uses
  %.val885.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gz = getelementptr inbounds nuw i8, ptr %.val885.a, i64 %i.gq
  %.0.copyload.i935 = load i64, ptr %i.gz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i935) #8, !srcloc !20
  %.val868.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ha = getelementptr inbounds nuw i8, ptr %.val868.a, i64 %i.e
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  store i64 %.0.copyload.i935, ptr %i.hb, align 1
  %.val867.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hc = getelementptr inbounds nuw i8, ptr %.val867.a, i64 %i.e
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store i64 %.0.copyload.i935, ptr %i.hd, align 1
  %.val835.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.he = getelementptr inbounds nuw i8, ptr %.val835.a, i64 %i.es
  %.0.copyload.i936 = load i32, ptr %i.he, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i936) #8, !srcloc !19
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetComputedPropertyValue_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AMutableHandle0x3Chermes0x3A0x3Avm0x3A0x3ASymbolID0x3E0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AComputedPropertyDescriptor0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.gu, i32 noundef %.0775, i32 noundef %2, i32 noundef %.0.copyload.i936, i32 noundef %i.gv, i32 noundef %.1778) #8
  %.val834.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hf = getelementptr inbounds nuw i8, ptr %.val834.a, i64 %i.e
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %.0.copyload.i937 = load i32, ptr %i.hg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i937) #8, !srcloc !19
  %.not794 = icmp eq i32 %.0.copyload.i937, 0
  br i1 %.not794, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.val884.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hh = getelementptr inbounds nuw i8, ptr %.val884.a, i64 %i.e
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 40
  %.0.copyload.i938 = load i64, ptr %i.hi, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i938) #8, !srcloc !20
  %.mask = and i64 %.0.copyload.i938, -140737488355328
  %.not795 = icmp eq i64 %.mask, -1970324836974592
  br i1 %.not795, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.val883 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hj = getelementptr inbounds nuw i8, ptr %.val883, i64 %i.gw
  %.0.copyload.i939 = load i64, ptr %i.hj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i939) #8, !srcloc !20
  %i.hk = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AstrictEqualityTest0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x2C0x20hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i64 noundef %.0.copyload.i939, i64 noundef %.0.copyload.i938)
  %.not796 = icmp eq i32 %i.hk, 0
  br i1 %.not796, label %bb.at, label %.loopexit945

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.val893 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hl = getelementptr inbounds nuw i8, ptr %.val893, i64 %i.dp
  %.0.copyload.i940 = load double, ptr %i.hl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i940) #8, !srcloc !37
  %i.hm = fadd double %6, %.0.copyload.i940       ; 2 uses
  %i.hn = bitcast double %i.hm to i64
  %i.ho = fcmp uno double %i.hm, 0.000000e+00
  %i.hp = select i1 %i.ho, i64 9221120237041090560, i64 %i.hn
  %.val866.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hq = getelementptr inbounds nuw i8, ptr %.val866.a, i64 %i.dp
  store i64 %i.hp, ptr %i.hq, align 1
  %.val833 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hr = getelementptr inbounds nuw i8, ptr %.val833, i64 %i.q
  %.0.copyload.i941 = load i32, ptr %i.hr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i941) #8, !srcloc !19
  %i.hs = add i32 %.0.copyload.i941, %i.ew
  %i.ht = zext i32 %i.hs to i64
  %.val832 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hu = getelementptr inbounds nuw i8, ptr %.val832, i64 %i.ht
  %.0.copyload.i942 = load i32, ptr %i.hu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i942) #8, !srcloc !19
  %.val805.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hv = getelementptr inbounds nuw i8, ptr %.val805.a, i64 %i.u
  store i32 %.0.copyload.i922, ptr %i.hv, align 1
  %.val804 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hw = getelementptr inbounds nuw i8, ptr %.val804, i64 %i.z
  store i32 %.0.copyload.i925, ptr %i.hw, align 1
  %i.hx = add i32 %.0.copyload.i942, 128
  %.val803 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hy = getelementptr inbounds nuw i8, ptr %.val803, i64 %i.x
  store i32 %i.hx, ptr %i.hy, align 1
  %.val892 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hz = getelementptr inbounds nuw i8, ptr %.val892, i64 %i.dp
  %.0.copyload.i943 = load double, ptr %i.hz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i943) #8, !srcloc !37
  %i.ia = fcmp ult double %.0.copyload.i943, %i.cc
  br i1 %i.ia, label %bb.aq, label %.loopexit946

.loopexit946:                                     ; preds = %bb.ao, %bb.at, %bb.ap, %bb.ak
  %i.ib = zext i32 %1 to i64                      ; 2 uses
  %.val865 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ic = getelementptr inbounds nuw i8, ptr %.val865, i64 %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store i64 -4616189618054758400, ptr %i.id, align 1
  br label %bb.au

.loopexit945:                                     ; preds = %bb.an, %bb.as
  %.val882 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ie = getelementptr inbounds nuw i8, ptr %.val882, i64 %i.dp
  %.0.copyload.i944 = load i64, ptr %i.ie, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i944) #8, !srcloc !20
  %i.if = zext i32 %1 to i64                      ; 2 uses
  %.val864 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ig = getelementptr inbounds nuw i8, ptr %.val864, i64 %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  store i64 %.0.copyload.i944, ptr %i.ih, align 1
  br label %bb.au

.loopexit:                                        ; preds = %bb.al, %bb.aq
  %i.ii = zext i32 %1 to i64
  br label %bb.au

bb.au:                                            ; preds = %.loopexit, %.loopexit945, %.loopexit946, %bb.q, %bb.n, %bb.l, %bb.g, %bb.b
  %.sink959 = phi i64 [ %i.ii, %.loopexit ], [ %i.if, %.loopexit945 ], [ %i.ib, %.loopexit946 ], [ %i.ck, %bb.q ], [ %i.bz, %bb.n ], [ %i.bw, %bb.l ], [ %i.bf, %bb.g ], [ %i.ag, %bb.b ]
  %.sink = phi i32 [ 0, %.loopexit ], [ 1, %.loopexit945 ], [ 1, %.loopexit946 ], [ 0, %bb.q ], [ 1, %bb.n ], [ 0, %bb.l ], [ 0, %bb.g ], [ 0, %bb.b ]
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ij = getelementptr inbounds nuw i8, ptr %.val, i64 %.sink959
  store i32 %.sink, ptr %i.ij, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29(ptr noundef nonnull %0, i32 noundef %i.ab) #8
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AhermesInternalTTRCReached0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %.val7 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val7, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 -1688849860263936, ptr %i.d, align 1
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  store i32 1, ptr %i.e, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AgetStringIndex0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x2C0x20unsigned0x20int0x29(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 29 uses
  %i.b = zext i32 %1 to i64
  %.val336 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %.val336, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 12 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.d = zext i32 %.0.copyload.i to i64           ; 10 uses
  %.val335 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %.val335, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.0.copyload.i351 = load i32, ptr %i.f, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i351) #8, !srcloc !19
  %i.g = and i32 %.0.copyload.i351, 2147483647
  %.not315 = icmp ugt i32 %i.g, %2
  br i1 %.not315, label %bb.c, label %bb.ae

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i32 %2, -1                       ; 4 uses
  %i.i = shl nuw i32 %i.h, 1                      ; 2 uses
  %.val334 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.val334, i64 %i.d
  %.0.copyload.i352 = load i32, ptr %i.j, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i352) #8, !srcloc !19
  %i.k = and i32 %.0.copyload.i352, 16777216
  %.not316 = icmp eq i32 %i.k, 0
  %i.l = icmp ugt i32 %.0.copyload.i352, 150994943 ; 2 uses
  br i1 %.not316, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  br i1 %i.l, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = and i32 %.0.copyload.i352, 234881024     ; 3 uses
  %i.n = icmp eq i32 %i.m, 67108864
  br i1 %i.n, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add i32 %.0.copyload.i, 12
  %i.p = icmp eq i32 %i.m, 134217728
  br i1 %i.p, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val333 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val333, i64 %i.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.0.copyload.i353 = load i32, ptr %i.r, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i353) #8, !srcloc !19
  %i.s = zext i32 %.0.copyload.i353 to i64        ; 2 uses
  %.val332 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val332, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %.0.copyload.i354 = load i32, ptr %i.u, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i354) #8, !srcloc !19
  %i.v = add i32 %.0.copyload.i353, 12
  %.val347 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.val347, i64 %i.s
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 23
  %.0.copyload.i355 = load i8, ptr %i.x, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i355) #8, !srcloc !22
  %i.y = icmp slt i8 %.0.copyload.i355, 0
  %i.z = select i1 %i.y, i32 %.0.copyload.i354, i32 %i.v
  br label %bb.m

bb.h:                                             ; preds = %bb.c
  br i1 %i.l, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = and i32 %.0.copyload.i352, 251658240    ; 2 uses
  switch i32 %i.aa, label %bb.k [
    i32 50331648, label %bb.o
    i32 117440512, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ab = add i32 %.0.copyload.i, 12
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %.val331 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val331, i64 %i.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.0.copyload.i356 = load i32, ptr %i.ad, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i356) #8, !srcloc !19
  %i.ae = zext i32 %.0.copyload.i356 to i64       ; 2 uses
  %.val330 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val330, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %.0.copyload.i357 = load i32, ptr %i.ag, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i357) #8, !srcloc !19
  %i.ah = add i32 %.0.copyload.i356, 12
  %.val346 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val346, i64 %i.ae
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 23
  %.0.copyload.i358 = load i8, ptr %i.aj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i358) #8, !srcloc !22
  %i.ak = icmp slt i8 %.0.copyload.i358, 0
  %i.al = select i1 %i.ak, i32 %.0.copyload.i357, i32 %i.ah
  br label %bb.p

bb.l:                                             ; preds = %bb.e
  %i.am = add i32 %.0.copyload.i, 8
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.l, %bb.g
  %.0 = phi i32 [ %i.am, %bb.l ], [ %i.o, %bb.f ], [ %i.z, %bb.g ]
  %i.an = add i32 %.0, %i.h
  %i.ao = zext i32 %i.an to i64
  %.val345 = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.val345, i64 %i.ao
  %.0.copyload.i359 = load i8, ptr %i.ap, align 1 ; 2 uses
end_hunk_2
begin_hunk_3_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AparseFloat0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %.val1628 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.val1628, i64 %i.ay
  %.0.copyload.i1702 = load i32, ptr %i.az, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1702) #8, !srcloc !19
  %i.ba = icmp ugt i32 %.0.copyload.i1702, 150994943
  br i1 %i.ba, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = and i32 %.0.copyload.i1702, 251658240
  switch i32 %i.bb, label %bb.s [
    i32 50331648, label %.thread1781
    i32 117440512, label %.thread1783
  ]

.thread1783:                                      ; preds = %bb.l
  %i.bc = and i32 %.0.copyload.i1694, 1073741823  ; 2 uses
  %i.bd = shl nuw nsw i32 %i.bc, 1
  %i.be = add nuw i32 %i.bd, 12
  %i.bf = add i32 %i.be, %.0.copyload.i1701
  %i.bg = add i32 %.0.copyload.i1701, 12
  br label %bb.t

bb.m:                                             ; preds = %bb.g
  %i.bh = and i32 %.0.copyload.i1694, 1073741823  ; 2 uses
  %i.bi = add i32 %.0.copyload.i1695, %i.bh
  br label %bb.p

bb.n:                                             ; preds = %bb.h
  %.val1625 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %.val1625, i64 %i.ao
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %.0.copyload.i1706 = load i32, ptr %i.bk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1706) #8, !srcloc !19
  %i.bl = add i32 %.0.copyload.i1696, 12
  %.val1673 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.val1673, i64 %i.ao
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 23
  %.0.copyload.i1707 = load i8, ptr %i.bn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1707) #8, !srcloc !22
  %i.bo = icmp slt i8 %.0.copyload.i1707, 0
  %i.bp = select i1 %i.bo, i32 %.0.copyload.i1706, i32 %i.bl ; 2 uses
  %i.bq = and i32 %.0.copyload.i1694, 1073741823  ; 2 uses
  %i.br = add i32 %i.bp, %i.bq
  br label %bb.p

.thread:                                          ; preds = %bb.i
  %i.bs = and i32 %.0.copyload.i1694, 1073741823  ; 2 uses
  %i.bt = add nuw nsw i32 %i.bs, 8
  %i.bu = add i32 %i.bt, %.0.copyload.i1696
  %i.bv = add i32 %.0.copyload.i1696, 8
  br label %bb.p

bb.o:                                             ; preds = %bb.i
  %.val1631 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %.val1631, i64 %i.ao
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.0.copyload.i1698 = load i32, ptr %i.bx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1698) #8, !srcloc !19
  %i.by = zext i32 %.0.copyload.i1698 to i64      ; 2 uses
  %.val1630 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %.val1630, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %.0.copyload.i1699 = load i32, ptr %i.ca, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1699) #8, !srcloc !19
  %.val1675 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %.val1675, i64 %i.by
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 23
  %.0.copyload.i1700 = load i8, ptr %i.cc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1700) #8, !srcloc !22
  %i.cd = and i32 %.0.copyload.i1694, 1073741823  ; 2 uses
  %i.ce = icmp slt i8 %.0.copyload.i1700, 0
  %i.cf = add i32 %.0.copyload.i1698, 12
  %i.cg = select i1 %i.ce, i32 %.0.copyload.i1699, i32 %i.cf
  %i.ch = add i32 %i.cg, %i.cd
  %.val1624 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.val1624, i64 %i.ao
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.0.copyload.i1708 = load i32, ptr %i.cj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1708) #8, !srcloc !19
  %i.ck = zext i32 %.0.copyload.i1708 to i64      ; 2 uses
  %.val1623 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %.val1623, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %.0.copyload.i1709 = load i32, ptr %i.cm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1709) #8, !srcloc !19
  %i.cn = add i32 %.0.copyload.i1708, 12
  %.val1672 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %.val1672, i64 %i.ck
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 23
  %.0.copyload.i1710 = load i8, ptr %i.cp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1710) #8, !srcloc !22
  %i.cq = icmp slt i8 %.0.copyload.i1710, 0
  %i.cr = select i1 %i.cq, i32 %.0.copyload.i1709, i32 %i.cn
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread, %.thread1779, %bb.n, %bb.m
  %.01476 = phi i32 [ %i.bh, %bb.m ], [ %i.bq, %bb.n ], [ %i.cd, %bb.o ], [ %i.as, %.thread1779 ], [ %i.bs, %.thread ]
  %.11473 = phi i32 [ %i.bi, %bb.m ], [ %i.br, %bb.n ], [ %i.ch, %bb.o ], [ %i.au, %.thread1779 ], [ %i.bu, %.thread ]
  %.01457 = phi i32 [ %.0.copyload.i1695, %bb.m ], [ %i.bp, %bb.n ], [ %i.cr, %bb.o ], [ %i.av, %.thread1779 ], [ %i.bv, %.thread ]
  %.val1622 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %.val1622, i64 %i.af
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 284
  %.0.copyload.i1711 = load i32, ptr %i.ct, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1711) #8, !srcloc !19
  %i.cu = add i32 %.01457, %.01476
  %i.cv = add i32 %i.cu, %.0.copyload.i1711
  br label %bb.u

bb.q:                                             ; preds = %bb.j
  %i.cw = shl nuw nsw i32 %.0.copyload.i1694, 1
  %i.cx = add i32 %.0.copyload.i1695, %i.cw
  br label %bb.t

bb.r:                                             ; preds = %bb.k
  %.val1621 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %.val1621, i64 %i.ay
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  %.0.copyload.i1712 = load i32, ptr %i.cz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1712) #8, !srcloc !19
  %i.da = add i32 %.0.copyload.i1701, 12
  %.val1671 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %.val1671, i64 %i.ay
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 23
  %.0.copyload.i1713 = load i8, ptr %i.dc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1713) #8, !srcloc !22
  %i.dd = icmp slt i8 %.0.copyload.i1713, 0
  %i.de = select i1 %i.dd, i32 %.0.copyload.i1712, i32 %i.da ; 2 uses
  %i.df = and i32 %.0.copyload.i1694, 1073741823  ; 2 uses
  %i.dg = shl nuw nsw i32 %i.df, 1
  %i.dh = add i32 %i.de, %i.dg
  br label %bb.t

.thread1781:                                      ; preds = %bb.l
  %i.di = and i32 %.0.copyload.i1694, 1073741823  ; 2 uses
  %i.dj = shl nuw nsw i32 %i.di, 1
  %i.dk = add nuw i32 %i.dj, 8
  %i.dl = add i32 %i.dk, %.0.copyload.i1701
  %i.dm = add i32 %.0.copyload.i1701, 8
  br label %bb.t

bb.s:                                             ; preds = %bb.l
  %.val1627 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %.val1627, i64 %i.ay
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.0.copyload.i1703 = load i32, ptr %i.do, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1703) #8, !srcloc !19
  %i.dp = zext i32 %.0.copyload.i1703 to i64      ; 2 uses
  %.val1626 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %.val1626, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %.0.copyload.i1704 = load i32, ptr %i.dr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1704) #8, !srcloc !19
  %.val1674 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %.val1674, i64 %i.dp
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 23
  %.0.copyload.i1705 = load i8, ptr %i.dt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1705) #8, !srcloc !22
  %i.du = and i32 %.0.copyload.i1694, 1073741823  ; 2 uses
  %i.dv = icmp slt i8 %.0.copyload.i1705, 0
  %i.dw = add i32 %.0.copyload.i1703, 12
  %i.dx = select i1 %i.dv, i32 %.0.copyload.i1704, i32 %i.dw
  %i.dy = shl nuw nsw i32 %i.du, 1
  %i.dz = add i32 %i.dx, %i.dy
  %.val1620 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ea = getelementptr inbounds nuw i8, ptr %.val1620, i64 %i.ay
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %.0.copyload.i1714 = load i32, ptr %i.eb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1714) #8, !srcloc !19
  %i.ec = zext i32 %.0.copyload.i1714 to i64      ; 2 uses
  %.val1619 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %.val1619, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %.0.copyload.i1715 = load i32, ptr %i.ee, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1715) #8, !srcloc !19
  %i.ef = add i32 %.0.copyload.i1714, 12
  %.val1670 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eg = getelementptr inbounds nuw i8, ptr %.val1670, i64 %i.ec
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 23
  %.0.copyload.i1716 = load i8, ptr %i.eh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1716) #8, !srcloc !22
  %i.ei = icmp slt i8 %.0.copyload.i1716, 0
  %i.ej = select i1 %i.ei, i32 %.0.copyload.i1715, i32 %i.ef
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread1781, %.thread1783, %bb.r, %bb.q
  %.11477 = phi i32 [ %.0.copyload.i1695, %bb.q ], [ %i.de, %bb.r ], [ %i.ej, %bb.s ], [ %i.bg, %.thread1783 ], [ %i.dm, %.thread1781 ]
  %.21474 = phi i32 [ %.0.copyload.i1694, %bb.q ], [ %i.df, %bb.r ], [ %i.du, %bb.s ], [ %i.bc, %.thread1783 ], [ %i.di, %.thread1781 ]
  %.01461 = phi i32 [ %i.cx, %bb.q ], [ %i.dh, %bb.r ], [ %i.dz, %bb.s ], [ %i.bf, %.thread1783 ], [ %i.dl, %.thread1781 ]
  %.val1618 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ek = getelementptr inbounds nuw i8, ptr %.val1618, i64 %i.af
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 284
  %.0.copyload.i1717 = load i32, ptr %i.el, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1717) #8, !srcloc !19
  %i.em = add i32 %.0.copyload.i1717, %.21474
  %i.en = shl i32 %i.em, 1
  %i.eo = add i32 %i.en, %.11477
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.p
  %.31475 = phi i32 [ %.11473, %bb.p ], [ 0, %bb.t ] ; 4 uses
  %.11462 = phi i32 [ 0, %bb.p ], [ %.01461, %bb.t ] ; 9 uses
  %.01455 = phi i32 [ 0, %bb.p ], [ %i.eo, %bb.t ] ; 4 uses
  %.2 = phi i32 [ %i.cv, %bb.p ], [ 0, %bb.t ]    ; 3 uses
  %.not1521 = icmp eq i32 %.31475, 0              ; 4 uses
  %i.ep = select i1 %.not1521, i32 %.01455, i32 %.2 ; 5 uses
  %i.eq = select i1 %.not1521, i32 %.11462, i32 %.31475
  %i.er = icmp eq i32 %i.ep, %i.eq
  br i1 %i.er, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %5 = select i1 %.not1521, i32 2, i32 0          ; 2 uses
  br i1 %.not1521, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.v
  %i.es = zext i32 %.11462 to i64                 ; 2 uses
  %.val1689.us.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.et = getelementptr inbounds nuw i8, ptr %.val1689.us.peel, i64 %i.es
  %.0.copyload.i1719.us.peel = load i16, ptr %i.et, align 1
  %.0.copyload.i1719.us.fr.peel = freeze i16 %.0.copyload.i1719.us.peel ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1719.us.fr.peel) #8, !srcloc !24
  %i.eu = zext i16 %.0.copyload.i1719.us.fr.peel to i32 ; 2 uses
  %i.ev = icmp ult i16 %.0.copyload.i1719.us.fr.peel, 160
  br i1 %i.ev, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.split.us.preheader
  switch i16 %.0.copyload.i1719.us.fr.peel, label %bb.z [
    i16 160, label %bb.ac
    i16 5760, label %bb.ac
    i16 -257, label %bb.ac
  ]

bb.x:                                             ; preds = %.split.us.preheader
  %i.ew = add nsw i32 %i.eu, -9                   ; 2 uses
  %i.ex = icmp ugt i32 %i.ew, 23
  br i1 %i.ex, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ey = shl nuw nsw i32 1, %i.ew
  %i.ez = and i32 %i.ey, 8388621
  %.not1522.us.peel = icmp eq i32 %i.ez, 0
  br i1 %.not1522.us.peel, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.fa = add nuw nsw i32 %i.eu, 57344
  %i.fb = and i32 %i.fa, 65535
  %i.fc = icmp samesign ult i32 %i.fb, 11
  br i1 %i.fc, label %bb.ac, label %switch.early.test.us.peel

switch.early.test.us.peel:                        ; preds = %bb.z
  switch i16 %.0.copyload.i1719.us.fr.peel, label %bb.aa [
    i16 12288, label %bb.ac
    i16 8287, label %bb.ac
    i16 8239, label %bb.ac
  ]

bb.aa:                                            ; preds = %switch.early.test.us.peel
  %.val1688.us.peel = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fd = getelementptr inbounds nuw i8, ptr %.val1688.us.peel, i64 %i.es
  %.0.copyload.i1721.us.peel = load i16, ptr %i.fd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1721.us.peel) #8, !srcloc !24
  switch i16 %.0.copyload.i1721.us.peel, label %bb.ab [
    i16 10, label %bb.ac
    i16 11, label %.loopexit
    i16 12, label %.loopexit
    i16 13, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.fe = and i16 %.0.copyload.i1721.us.peel, -2
  %.not1523.us.peel = icmp eq i16 %i.fe, 8232
  br i1 %.not1523.us.peel, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.aa, %switch.early.test.us.peel, %switch.early.test.us.peel, %switch.early.test.us.peel, %bb.z, %bb.y, %bb.w, %bb.w, %bb.w
  %i.ff = add i32 %.11462, 2                      ; 2 uses
  %.not1524.us.peel = icmp eq i32 %i.ff, %.01455
  br i1 %.not1524.us.peel, label %.loopexit, label %.split.us

.split.us:                                        ; preds = %bb.ac, %bb.aj
  %.21463.us = phi i32 [ %i.ft, %bb.aj ], [ %i.ff, %bb.ac ] ; 5 uses
  %i.fg = zext i32 %.21463.us to i64              ; 2 uses
  %.val1689.us = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fh = getelementptr inbounds nuw i8, ptr %.val1689.us, i64 %i.fg
  %.0.copyload.i1719.us = load i16, ptr %i.fh, align 1
  %.0.copyload.i1719.us.fr = freeze i16 %.0.copyload.i1719.us ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1719.us.fr) #8, !srcloc !24
  %i.fi = zext i16 %.0.copyload.i1719.us.fr to i32 ; 2 uses
  %i.fj = icmp ult i16 %.0.copyload.i1719.us.fr, 160
  br i1 %i.fj, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.split.us
  switch i16 %.0.copyload.i1719.us.fr, label %bb.ag [
    i16 160, label %bb.aj
    i16 5760, label %bb.aj
    i16 -257, label %bb.aj
  ]

bb.ae:                                            ; preds = %.split.us
  %i.fk = add nsw i32 %i.fi, -9                   ; 2 uses
  %i.fl = icmp ugt i32 %i.fk, 23
  br i1 %i.fl, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fm = shl nuw nsw i32 1, %i.fk
  %i.fn = and i32 %i.fm, 8388621
  %.not1522.us = icmp eq i32 %i.fn, 0
  br i1 %.not1522.us, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.fo = add nuw nsw i32 %i.fi, 57344
  %i.fp = and i32 %i.fo, 65535
  %i.fq = icmp samesign ult i32 %i.fp, 11
  br i1 %i.fq, label %bb.aj, label %switch.early.test.us

switch.early.test.us:                             ; preds = %bb.ag
  switch i16 %.0.copyload.i1719.us.fr, label %bb.ah [
    i16 12288, label %bb.aj
    i16 8287, label %bb.aj
    i16 8239, label %bb.aj
  ]

bb.ah:                                            ; preds = %switch.early.test.us
  %.val1688.us = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fr = getelementptr inbounds nuw i8, ptr %.val1688.us, i64 %i.fg
  %.0.copyload.i1721.us = load i16, ptr %i.fr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1721.us) #8, !srcloc !24
  switch i16 %.0.copyload.i1721.us, label %bb.ai [
    i16 10, label %bb.aj
    i16 11, label %.loopexit
    i16 12, label %.loopexit
    i16 13, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.fs = and i16 %.0.copyload.i1721.us, -2
  %.not1523.us = icmp eq i16 %i.fs, 8232
  br i1 %.not1523.us, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ah, %switch.early.test.us, %switch.early.test.us, %switch.early.test.us, %bb.ag, %bb.af, %bb.ad, %bb.ad, %bb.ad
  %i.ft = add i32 %.21463.us, %5                  ; 2 uses
  %.not1524.us = icmp eq i32 %i.ft, %i.ep
  br i1 %.not1524.us, label %.loopexit, label %.split.us, !llvm.loop !43

.split:                                           ; preds = %bb.v, %bb.an
  %.21478 = phi i32 [ %6, %bb.an ], [ %.31475, %bb.v ] ; 5 uses
  %.21463 = phi i32 [ %i.gg, %bb.an ], [ %.11462, %bb.v ] ; 4 uses
  %i.fu = zext i32 %.21478 to i64                 ; 2 uses
  %.val1669 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.fv = getelementptr inbounds nuw i8, ptr %.val1669, i64 %i.fu
  %.0.copyload.i1718 = load i8, ptr %i.fv, align 1
  %.0.copyload.i1718.fr = freeze i8 %.0.copyload.i1718 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1718.fr) #8, !srcloc !22
  %i.fw = sext i8 %.0.copyload.i1718.fr to i32
  %i.fx = and i32 %i.fw, 65535                    ; 2 uses
  %i.fy = icmp samesign ult i32 %i.fx, 160
  br i1 %i.fy, label %bb.ak, label %switch.early.test

bb.ak:                                            ; preds = %.split
  %i.fz = add nsw i32 %i.fx, -9                   ; 2 uses
  %i.ga = icmp ugt i32 %i.fz, 23
  br i1 %i.ga, label %switch.early.test, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gb = shl nuw nsw i32 1, %i.fz
  %i.gc = and i32 %i.gb, 8388621
  %.not1522 = icmp eq i32 %i.gc, 0
  br i1 %.not1522, label %switch.early.test, label %bb.an

switch.early.test:                                ; preds = %.split, %bb.al, %bb.ak
  %.val1668 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gd = getelementptr inbounds nuw i8, ptr %.val1668, i64 %i.fu
  %.0.copyload.i1720 = load i8, ptr %i.gd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1720) #8, !srcloc !22
  switch i8 %.0.copyload.i1720, label %bb.am [
    i8 10, label %bb.an
    i8 11, label %.loopexit
    i8 12, label %.loopexit
    i8 13, label %bb.an
  ]

bb.am:                                            ; preds = %switch.early.test
  %i.ge = sext i8 %.0.copyload.i1720 to i32
  %i.gf = and i32 %i.ge, 65534
  %.not1523 = icmp eq i32 %i.gf, 8232
  br i1 %.not1523, label %bb.an, label %.loopexit

bb.an:                                            ; preds = %bb.am, %switch.early.test, %switch.early.test, %bb.al
  %6 = add i32 %.21478, 1                         ; 2 uses
  %i.gg = add i32 %.21463, %5
  %.not1524 = icmp eq i32 %6, %i.ep
  br i1 %.not1524, label %.loopexit, label %.split

.loopexit:                                        ; preds = %switch.early.test, %switch.early.test, %bb.am, %bb.an, %bb.aj, %bb.ai, %bb.ah, %bb.ah, %bb.aa, %bb.aa, %bb.ab, %bb.ac, %bb.u
  %.31479 = phi i32 [ %.31475, %bb.u ], [ 0, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.aj ], [ 0, %bb.ah ], [ 0, %bb.ah ], [ 0, %bb.ai ], [ %.21478, %switch.early.test ], [ %.21478, %bb.am ], [ %i.ep, %bb.an ], [ %.21478, %switch.early.test ] ; 3 uses
  %.31464 = phi i32 [ %.11462, %bb.u ], [ %.11462, %bb.aa ], [ %.01455, %bb.ac ], [ %.11462, %bb.ab ], [ %.11462, %bb.aa ], [ %i.ep, %bb.aj ], [ %.21463.us, %bb.ai ], [ %.21463.us, %bb.ah ], [ %.21463.us, %bb.ah ], [ %.21463, %switch.early.test ], [ %.21463, %bb.am ], [ %.11462, %bb.an ], [ %.21463, %switch.early.test ] ; 2 uses
  %i.gh = add i32 %3, 5476                        ; 4 uses
  %.not1528 = icmp eq i32 %i.ai, 0                ; 2 uses
  br i1 %i.al, label %bb.ao, label %bb.aw

bb.ao:                                            ; preds = %.loopexit
  br i1 %.not1528, label %bb.av, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gi = zext i32 %.0.copyload.i1695 to i64
  %.val1617 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gj = getelementptr inbounds nuw i8, ptr %.val1617, i64 %i.gi
  %.0.copyload.i1722 = load i32, ptr %i.gj, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1722) #8, !srcloc !19
  %i.gk = zext i32 %.0.copyload.i1722 to i64      ; 4 uses
  %.val1616 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gl = getelementptr inbounds nuw i8, ptr %.val1616, i64 %i.gk
  %.0.copyload.i1723 = load i32, ptr %i.gl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1723) #8, !srcloc !19
  %i.gm = icmp ugt i32 %.0.copyload.i1723, 150994943
  br i1 %i.gm, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %.val1615 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gn = getelementptr inbounds nuw i8, ptr %.val1615, i64 %i.gk
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  %.0.copyload.i1724 = load i32, ptr %i.go, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1724) #8, !srcloc !19
  %i.gp = add i32 %.0.copyload.i1722, 12
  %.val1667 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gq = getelementptr inbounds nuw i8, ptr %.val1667, i64 %i.gk
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 23
  %.0.copyload.i1725 = load i8, ptr %i.gr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1725) #8, !srcloc !22
  %i.gs = icmp slt i8 %.0.copyload.i1725, 0
  %i.gt = select i1 %i.gs, i32 %.0.copyload.i1724, i32 %i.gp
  br label %bb.av

bb.ar:                                            ; preds = %bb.ap
  %i.gu = and i32 %.0.copyload.i1723, 251658240
  switch i32 %i.gu, label %bb.au [
    i32 67108864, label %bb.at
    i32 134217728, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar
  %i.gv = add i32 %.0.copyload.i1722, 12
  br label %bb.av

bb.at:                                            ; preds = %bb.ar
  %i.gw = add i32 %.0.copyload.i1722, 8
  br label %bb.av

bb.au:                                            ; preds = %bb.ar
  %.val1614 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gx = getelementptr inbounds nuw i8, ptr %.val1614, i64 %i.gk
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %.0.copyload.i1726 = load i32, ptr %i.gy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1726) #8, !srcloc !19
  %i.gz = zext i32 %.0.copyload.i1726 to i64      ; 2 uses
  %.val1613 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ha = getelementptr inbounds nuw i8, ptr %.val1613, i64 %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 12
  %.0.copyload.i1727 = load i32, ptr %i.hb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1727) #8, !srcloc !19
  %i.hc = add i32 %.0.copyload.i1726, 12
  %.val1666 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hd = getelementptr inbounds nuw i8, ptr %.val1666, i64 %i.gz
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 23
  %.0.copyload.i1728 = load i8, ptr %i.he, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1728) #8, !srcloc !22
  %i.hf = icmp slt i8 %.0.copyload.i1728, 0
  %i.hg = select i1 %i.hf, i32 %.0.copyload.i1727, i32 %i.hc
  br label %bb.av

bb.av:                                            ; preds = %bb.ao, %bb.au, %bb.at, %bb.as, %bb.aq
  %.5 = phi i32 [ %.0.copyload.i1695, %bb.ao ], [ %i.gt, %bb.aq ], [ %i.hg, %bb.au ], [ %i.gv, %bb.as ], [ %i.gw, %bb.at ]
  %i.hh = add i32 %.5, %.0.copyload.i1694
  br label %bb.be

bb.aw:                                            ; preds = %.loopexit
  br i1 %.not1528, label %bb.bd, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hi = zext i32 %.0.copyload.i1695 to i64
  %.val1612 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hj = getelementptr inbounds nuw i8, ptr %.val1612, i64 %i.hi
  %.0.copyload.i1729 = load i32, ptr %i.hj, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1729) #8, !srcloc !19
  %i.hk = zext i32 %.0.copyload.i1729 to i64      ; 4 uses
  %.val1611 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hl = getelementptr inbounds nuw i8, ptr %.val1611, i64 %i.hk
  %.0.copyload.i1730 = load i32, ptr %i.hl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1730) #8, !srcloc !19
  %i.hm = icmp ugt i32 %.0.copyload.i1730, 150994943
  br i1 %i.hm, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %.val1610 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hn = getelementptr inbounds nuw i8, ptr %.val1610, i64 %i.hk
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  %.0.copyload.i1731 = load i32, ptr %i.ho, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1731) #8, !srcloc !19
  %i.hp = add i32 %.0.copyload.i1729, 12
  %.val1665 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hq = getelementptr inbounds nuw i8, ptr %.val1665, i64 %i.hk
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 23
  %.0.copyload.i1732 = load i8, ptr %i.hr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1732) #8, !srcloc !22
  %i.hs = icmp slt i8 %.0.copyload.i1732, 0
  %i.ht = select i1 %i.hs, i32 %.0.copyload.i1731, i32 %i.hp
  br label %bb.bd

bb.az:                                            ; preds = %bb.ax
  %i.hu = and i32 %.0.copyload.i1730, 251658240
  switch i32 %i.hu, label %bb.bc [
    i32 50331648, label %bb.bb
    i32 117440512, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az
  %i.hv = add i32 %.0.copyload.i1729, 12
  br label %bb.bd

bb.bb:                                            ; preds = %bb.az
  %i.hw = add i32 %.0.copyload.i1729, 8
  br label %bb.bd

bb.bc:                                            ; preds = %bb.az
  %.val1609 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hx = getelementptr inbounds nuw i8, ptr %.val1609, i64 %i.hk
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %.0.copyload.i1733 = load i32, ptr %i.hy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1733) #8, !srcloc !19
  %i.hz = zext i32 %.0.copyload.i1733 to i64      ; 2 uses
  %.val1608 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ia = getelementptr inbounds nuw i8, ptr %.val1608, i64 %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 12
  %.0.copyload.i1734 = load i32, ptr %i.ib, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1734) #8, !srcloc !19
  %i.ic = add i32 %.0.copyload.i1733, 12
  %.val1664 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.id = getelementptr inbounds nuw i8, ptr %.val1664, i64 %i.hz
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 23
  %.0.copyload.i1735 = load i8, ptr %i.ie, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1735) #8, !srcloc !22
  %i.if = icmp slt i8 %.0.copyload.i1735, 0
  %i.ig = select i1 %i.if, i32 %.0.copyload.i1734, i32 %i.ic
  br label %bb.bd

bb.bd:                                            ; preds = %bb.aw, %bb.bc, %bb.bb, %bb.ba, %bb.ay
  %.6 = phi i32 [ %.0.copyload.i1695, %bb.aw ], [ %i.ht, %bb.ay ], [ %i.ig, %bb.bc ], [ %i.hv, %bb.ba ], [ %i.hw, %bb.bb ]
  %i.ih = shl nuw i32 %.0.copyload.i1694, 1
  %i.ii = and i32 %i.ih, 2147483646
  %i.ij = add i32 %.6, %i.ii
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.av
  %.01456 = phi i32 [ 0, %bb.av ], [ %i.ij, %bb.bd ]
  %.7 = phi i32 [ %i.hh, %bb.av ], [ 0, %bb.bd ]
  %i.ik = add i32 %i.b, -24
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3AgetStringView0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x290x20const(ptr noundef nonnull %0, i32 noundef %i.ik, i32 noundef %i.gh, i32 noundef %3, i32 noundef 40) #8
  %.val1607 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.il = getelementptr inbounds nuw i8, ptr %.val1607, i64 %i.af
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 272
  %.0.copyload.i1736 = load i32, ptr %i.im, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1736) #8, !srcloc !19
  %.val1579 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.in = getelementptr inbounds nuw i8, ptr %.val1579, i64 %i.af
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 128
  store i32 %.0.copyload.i1736, ptr %i.io, align 1
  %i.ip = sub i32 %.2, %.31479
  %i.iq = sub i32 %.01455, %.31464
  %i.ir = ashr i32 %i.iq, 1
  %.not1531 = icmp eq i32 %.2, 0
  %i.is = select i1 %.not1531, i32 %i.ir, i32 %i.ip ; 11 uses
  %.val1578 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.it = getelementptr inbounds nuw i8, ptr %.val1578, i64 %i.af
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 260
  store i32 %i.is, ptr %i.iu, align 1
  %.val1577 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iv = getelementptr inbounds nuw i8, ptr %.val1577, i64 %i.af
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 112
  store i32 %i.is, ptr %i.iw, align 1
  %i.ix = add nuw nsw i64 %i.af, 252              ; 2 uses
  %.val1576 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iy = getelementptr inbounds nuw i8, ptr %.val1576, i64 %i.ix
  store i32 %.0.copyload.i1695, ptr %i.iy, align 1
  %i.iz = sub i32 %.31479, %.7
  %i.ja = sub i32 %.31464, %.01456
  %i.jb = lshr i32 %i.ja, 1
  %.not1532 = icmp eq i32 %.31479, 0
  %i.jc = select i1 %.not1532, i32 %i.jb, i32 %i.iz
  %i.jd = add i32 %i.jc, %.0.copyload.i1694
  %i.je = and i32 %i.jd, 1073741823               ; 9 uses
  %i.jf = and i32 %.0.copyload.i1694, -1073741824
  %i.jg = or disjoint i32 %i.je, %i.jf            ; 4 uses
  %.val1575 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jh = getelementptr inbounds nuw i8, ptr %.val1575, i64 %i.af
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 256
  store i32 %i.jg, ptr %i.ji, align 1
end_hunk_3
begin_hunk_4_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AparseFloat0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %i.nr = icmp ugt i32 %.0.copyload.i1750, 150994943
  br i1 %i.nr, label %bb.bx, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ns = and i32 %.0.copyload.i1750, 251658240
  switch i32 %i.ns, label %bb.by [
    i32 67108864, label %.thread1785
    i32 134217728, label %.thread1788
  ]

bb.bu:                                            ; preds = %bb.bq
  br i1 %.not1541, label %bb.ca, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.nt = zext i32 %.0.copyload.i1695 to i64
  %.val1598 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nu = getelementptr inbounds nuw i8, ptr %.val1598, i64 %i.nt
  %.0.copyload.i1754 = load i32, ptr %i.nu, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1754) #8, !srcloc !19
  %i.nv = zext i32 %.0.copyload.i1754 to i64      ; 5 uses
  %.val1597 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nw = getelementptr inbounds nuw i8, ptr %.val1597, i64 %i.nv
  %.0.copyload.i1755 = load i32, ptr %i.nw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1755) #8, !srcloc !19
  %i.nx = icmp ugt i32 %.0.copyload.i1755, 150994943
  br i1 %i.nx, label %bb.cb, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ny = and i32 %.0.copyload.i1755, 251658240
  switch i32 %i.ny, label %bb.cc [
    i32 50331648, label %.thread1791
    i32 117440512, label %.thread1793
  ]

.thread1793:                                      ; preds = %bb.bw
  %i.nz = shl nuw nsw i32 %i.je, 1
  %i.oa = add nuw i32 %i.nz, 12
  %i.ob = add i32 %i.oa, %.0.copyload.i1754
  %i.oc = add i32 %.0.copyload.i1754, 12
  br label %bb.cd

bb.bx:                                            ; preds = %bb.bs
  %.val1594 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.od = getelementptr inbounds nuw i8, ptr %.val1594, i64 %i.np
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 12
  %.0.copyload.i1759 = load i32, ptr %i.oe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1759) #8, !srcloc !19
  %i.of = add i32 %.0.copyload.i1749, 12
  %.val1661 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.og = getelementptr inbounds nuw i8, ptr %.val1661, i64 %i.np
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 23
  %.0.copyload.i1760 = load i8, ptr %i.oh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1760) #8, !srcloc !22
  %i.oi = icmp slt i8 %.0.copyload.i1760, 0
  %i.oj = select i1 %i.oi, i32 %.0.copyload.i1759, i32 %i.of ; 2 uses
  br label %bb.bz

.thread1785:                                      ; preds = %bb.bt
  %i.ok = add i32 %.0.copyload.i1749, 8           ; 2 uses
  br label %bb.bz

bb.by:                                            ; preds = %bb.bt
  %.val1600 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ol = getelementptr inbounds nuw i8, ptr %.val1600, i64 %i.np
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %.0.copyload.i1751 = load i32, ptr %i.om, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1751) #8, !srcloc !19
  %i.on = zext i32 %.0.copyload.i1751 to i64      ; 2 uses
  %.val1599 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oo = getelementptr inbounds nuw i8, ptr %.val1599, i64 %i.on
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 12
  %.0.copyload.i1752 = load i32, ptr %i.op, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1752) #8, !srcloc !19
  %.val1663 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oq = getelementptr inbounds nuw i8, ptr %.val1663, i64 %i.on
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 23
  %.0.copyload.i1753 = load i8, ptr %i.or, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1753) #8, !srcloc !22
  %i.os = icmp slt i8 %.0.copyload.i1753, 0
  %i.ot = add i32 %.0.copyload.i1751, 12
  %i.ou = select i1 %i.os, i32 %.0.copyload.i1752, i32 %i.ot
  %.val1593 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ov = getelementptr inbounds nuw i8, ptr %.val1593, i64 %i.np
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %.0.copyload.i1761 = load i32, ptr %i.ow, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1761) #8, !srcloc !19
  %i.ox = zext i32 %.0.copyload.i1761 to i64      ; 2 uses
  %.val1592 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oy = getelementptr inbounds nuw i8, ptr %.val1592, i64 %i.ox
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 12
  %.0.copyload.i1762 = load i32, ptr %i.oz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1762) #8, !srcloc !19
  %i.pa = add i32 %.0.copyload.i1761, 12
  %.val1660 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pb = getelementptr inbounds nuw i8, ptr %.val1660, i64 %i.ox
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 23
  %.0.copyload.i1763 = load i8, ptr %i.pc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1763) #8, !srcloc !22
  %i.pd = icmp slt i8 %.0.copyload.i1763, 0
  %i.pe = select i1 %i.pd, i32 %.0.copyload.i1762, i32 %i.pa
  br label %bb.bz

.thread1788:                                      ; preds = %bb.bt
  %i.pf = add i32 %.0.copyload.i1749, 12          ; 2 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.br, %bb.by, %.thread1785, %.thread1788, %bb.bx
  %.pn = phi i32 [ %i.ok, %.thread1785 ], [ %i.oj, %bb.bx ], [ %i.ou, %bb.by ], [ %i.pf, %.thread1788 ], [ %.0.copyload.i1695, %bb.br ]
  %.01466 = phi i32 [ %i.ok, %.thread1785 ], [ %i.oj, %bb.bx ], [ %i.pe, %bb.by ], [ %i.pf, %.thread1788 ], [ %.0.copyload.i1695, %bb.br ]
  %.41480 = add i32 %.pn, %i.je
  %i.pg = add i32 %i.je, %i.is
  %i.ph = add i32 %i.pg, %.01466
  br label %bb.ce

bb.ca:                                            ; preds = %bb.bu
  %i.pi = shl nuw nsw i32 %i.je, 1
  %i.pj = add i32 %i.pi, %.0.copyload.i1695
  br label %bb.cd

bb.cb:                                            ; preds = %bb.bv
  %.val1591 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pk = getelementptr inbounds nuw i8, ptr %.val1591, i64 %i.nv
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 12
  %.0.copyload.i1764 = load i32, ptr %i.pl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1764) #8, !srcloc !19
  %i.pm = add i32 %.0.copyload.i1754, 12
  %.val1659 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pn = getelementptr inbounds nuw i8, ptr %.val1659, i64 %i.nv
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 23
  %.0.copyload.i1765 = load i8, ptr %i.po, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1765) #8, !srcloc !22
  %i.pp = icmp slt i8 %.0.copyload.i1765, 0
  %i.pq = select i1 %i.pp, i32 %.0.copyload.i1764, i32 %i.pm ; 2 uses
  %i.pr = shl nuw nsw i32 %i.je, 1
  %i.ps = add i32 %i.pq, %i.pr
  br label %bb.cd

.thread1791:                                      ; preds = %bb.bw
  %i.pt = shl nuw nsw i32 %i.je, 1
  %i.pu = add nuw i32 %i.pt, 8
  %i.pv = add i32 %i.pu, %.0.copyload.i1754
  %i.pw = add i32 %.0.copyload.i1754, 8
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bw
  %.val1596 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.px = getelementptr inbounds nuw i8, ptr %.val1596, i64 %i.nv
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  %.0.copyload.i1756 = load i32, ptr %i.py, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1756) #8, !srcloc !19
  %i.pz = zext i32 %.0.copyload.i1756 to i64      ; 2 uses
  %.val1595 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qa = getelementptr inbounds nuw i8, ptr %.val1595, i64 %i.pz
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 12
  %.0.copyload.i1757 = load i32, ptr %i.qb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1757) #8, !srcloc !19
  %.val1662 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qc = getelementptr inbounds nuw i8, ptr %.val1662, i64 %i.pz
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 23
  %.0.copyload.i1758 = load i8, ptr %i.qd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1758) #8, !srcloc !22
  %i.qe = icmp slt i8 %.0.copyload.i1758, 0
  %i.qf = add i32 %.0.copyload.i1756, 12
  %i.qg = select i1 %i.qe, i32 %.0.copyload.i1757, i32 %i.qf
  %i.qh = shl nuw nsw i32 %i.je, 1
  %i.qi = add i32 %i.qg, %i.qh
  %.val1590 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qj = getelementptr inbounds nuw i8, ptr %.val1590, i64 %i.nv
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  %.0.copyload.i1766 = load i32, ptr %i.qk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1766) #8, !srcloc !19
  %i.ql = zext i32 %.0.copyload.i1766 to i64      ; 2 uses
  %.val1589 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qm = getelementptr inbounds nuw i8, ptr %.val1589, i64 %i.ql
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 12
  %.0.copyload.i1767 = load i32, ptr %i.qn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1767) #8, !srcloc !19
  %i.qo = add i32 %.0.copyload.i1766, 12
  %.val1658 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qp = getelementptr inbounds nuw i8, ptr %.val1658, i64 %i.ql
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 23
  %.0.copyload.i1768 = load i8, ptr %i.qq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1768) #8, !srcloc !22
  %i.qr = icmp slt i8 %.0.copyload.i1768, 0
  %i.qs = select i1 %i.qr, i32 %.0.copyload.i1767, i32 %i.qo
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %.thread1791, %.thread1793, %bb.cb, %bb.ca
  %.11469 = phi i32 [ %i.pj, %bb.ca ], [ %i.ps, %bb.cb ], [ %i.qi, %bb.cc ], [ %i.ob, %.thread1793 ], [ %i.pv, %.thread1791 ]
  %.11467 = phi i32 [ %.0.copyload.i1695, %bb.ca ], [ %i.pq, %bb.cb ], [ %i.qs, %bb.cc ], [ %i.oc, %.thread1793 ], [ %i.pw, %.thread1791 ]
  %i.qt = add i32 %i.je, %i.is
  %i.qu = shl i32 %i.qt, 1
  %i.qv = add i32 %.11467, %i.qu
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.bz
  %.51481 = phi i32 [ %.41480, %bb.bz ], [ 0, %bb.cd ] ; 3 uses
  %.21470 = phi i32 [ 0, %bb.bz ], [ %.11469, %bb.cd ] ; 2 uses
  %.11458 = phi i32 [ 0, %bb.bz ], [ %i.qv, %bb.cd ]
  %.10 = phi i32 [ %i.ph, %bb.bz ], [ 0, %bb.cd ]
  %.not1544 = icmp eq i32 %.51481, 0              ; 4 uses
  %i.qw = select i1 %.not1544, i32 %.11458, i32 %.10 ; 3 uses
  %i.qx = select i1 %.not1544, i32 %.21470, i32 %.51481
  %.not1545 = icmp eq i32 %i.qw, %i.qx
  br i1 %.not1545, label %bb.co, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %7 = select i1 %.not1544, i32 2, i32 0
  br i1 %.not1544, label %.split1802.us, label %.split1802

.split1802.us:                                    ; preds = %bb.cf, %bb.ci
  %.31471.us = phi i32 [ %i.rq, %bb.ci ], [ %.21470, %bb.cf ] ; 2 uses
  %.21459.us = phi i32 [ %i.rp, %bb.ci ], [ 0, %bb.cf ] ; 3 uses
  %i.qy = zext i32 %.31471.us to i64
  %.val1687.us = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qz = getelementptr inbounds nuw i8, ptr %.val1687.us, i64 %i.qy
  %.0.copyload.i1770.us = load i16, ptr %i.qz, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i1770.us) #8, !srcloc !24
  %i.ra = zext i16 %.0.copyload.i1770.us to i32   ; 2 uses
  %i.rb = icmp eq i16 %.0.copyload.i1770.us, 46
  br i1 %i.rb, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %.split1802.us
  %i.rc = add nuw nsw i32 %i.ra, 65488
  %i.rd = and i32 %i.rc, 65534
  %i.re = icmp samesign ult i32 %i.rd, 10
  br i1 %i.re, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.rf = add nsw i32 %i.ra, -43                  ; 2 uses
  %i.rg = icmp ult i32 %i.rf, 27
  %i.rh = and i32 %i.rf, 31
  %i.ri = shl nuw i32 1, %i.rh
  %i.rj = and i32 %i.ri, 67108869
  %.not1546.us = icmp ne i32 %i.rj, 0
  %narrow.us = and i1 %i.rg, %.not1546.us
  %.not1547.us = icmp eq i16 %.0.copyload.i1770.us, 101
  %or.cond1552.us = or i1 %.not1547.us, %narrow.us
  br i1 %or.cond1552.us, label %bb.ci, label %.split1804.us

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %.split1802.us
  %.val1588.us = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rk = getelementptr inbounds nuw i8, ptr %.val1588.us, i64 %i.ne
  %.0.copyload.i1771.us = load i32, ptr %i.rk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1771.us) #8, !srcloc !19
  %i.rl = add i32 %.0.copyload.i1771.us, %.21459.us
  %i.rm = zext i32 %i.rl to i64
  %.val1686.us = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rn = trunc i16 %.0.copyload.i1770.us to i8
  %i.ro = getelementptr inbounds nuw i8, ptr %.val1686.us, i64 %i.rm
  store i8 %i.rn, ptr %i.ro, align 1
  %i.rp = add i32 %.21459.us, 1                   ; 2 uses
  %i.rq = add i32 %.31471.us, %7                  ; 2 uses
  %.not1548.us = icmp eq i32 %i.rq, %i.qw
  br i1 %.not1548.us, label %.split1804.us, label %.split1802.us

.split1802:                                       ; preds = %bb.cf, %bb.cl
  %.41465 = phi i32 [ %i.si, %bb.cl ], [ %.51481, %bb.cf ] ; 2 uses
  %.21459 = phi i32 [ %i.sj, %bb.cl ], [ 0, %bb.cf ] ; 3 uses
  %i.rr = zext i32 %.41465 to i64
  %.val1657 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rs = getelementptr inbounds nuw i8, ptr %.val1657, i64 %i.rr
  %.0.copyload.i1769 = load i8, ptr %i.rs, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1769) #8, !srcloc !22
  %i.rt = sext i8 %.0.copyload.i1769 to i32       ; 2 uses
  %i.ru = and i32 %i.rt, 65535
  %i.rv = icmp eq i8 %.0.copyload.i1769, 46
  br i1 %i.rv, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %.split1802
  %i.rw = add nsw i32 %i.rt, 65488
  %i.rx = and i32 %i.rw, 65534
  %i.ry = icmp samesign ult i32 %i.rx, 10
  br i1 %i.ry, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.rz = add nsw i32 %i.ru, -43                  ; 2 uses
  %i.sa = icmp ult i32 %i.rz, 27
  %i.sb = and i32 %i.rz, 31
  %i.sc = shl nuw i32 1, %i.sb
  %i.sd = and i32 %i.sc, 67108869
  %.not1546 = icmp ne i32 %i.sd, 0
  %narrow = and i1 %i.sa, %.not1546
  %.not1547 = icmp eq i8 %.0.copyload.i1769, 101
  %or.cond1552 = or i1 %.not1547, %narrow
  br i1 %or.cond1552, label %bb.cl, label %.split1804.us

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %.split1802
  %.val1588 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.se = getelementptr inbounds nuw i8, ptr %.val1588, i64 %i.ne
  %.0.copyload.i1771 = load i32, ptr %i.se, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1771) #8, !srcloc !19
  %i.sf = add i32 %.0.copyload.i1771, %.21459
  %i.sg = zext i32 %i.sf to i64
  %.val1686 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sh = getelementptr inbounds nuw i8, ptr %.val1686, i64 %i.sg
  store i8 %.0.copyload.i1769, ptr %i.sh, align 1
  %i.si = add i32 %.41465, 1                      ; 2 uses
  %i.sj = add i32 %.21459, 1                      ; 2 uses
  %.not1548 = icmp eq i32 %i.si, %i.qw
  br i1 %.not1548, label %.split1804.us, label %.split1802

.split1804.us:                                    ; preds = %bb.cl, %bb.ck, %bb.ch, %bb.ci
  %.us-phi1805 = phi i32 [ %.21459.us, %bb.ch ], [ %i.rp, %bb.ci ], [ %i.sj, %bb.cl ], [ %.21459, %bb.ck ] ; 2 uses
  %.not1549 = icmp eq i32 %.us-phi1805, 0
  br i1 %.not1549, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %.split1804.us
  %.val1587 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sk = getelementptr inbounds nuw i8, ptr %.val1587, i64 %i.ne
  %.0.copyload.i1772 = load i32, ptr %i.sk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1772) #8, !srcloc !19
  %i.sl = add i32 %.0.copyload.i1772, %.us-phi1805
  %i.sm = zext i32 %i.sl to i64
  %.val1685 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sn = getelementptr inbounds nuw i8, ptr %.val1685, i64 %i.sm
  store i8 0, ptr %i.sn, align 1
  %.val1586 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.so = getelementptr inbounds nuw i8, ptr %.val1586, i64 %i.ne
  %.0.copyload.i1773 = load i32, ptr %i.so, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1773) #8, !srcloc !19
  %i.sp = add i32 %i.b, -156                      ; 2 uses
  %i.sq = tail call double @w2c_hermes_hermes_g_strtod(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1773, i32 noundef %i.sp) #8 ; 0 uses
  %.val1585 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sr = getelementptr inbounds nuw i8, ptr %.val1585, i64 %i.af
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 132
  %.0.copyload.i1774 = load i32, ptr %i.ss, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1774) #8, !srcloc !19
  %.val1584 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.st = getelementptr inbounds nuw i8, ptr %.val1584, i64 %i.ne
  %.0.copyload.i1775 = load i32, ptr %i.st, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1775) #8, !srcloc !19
  %i.su = icmp eq i32 %.0.copyload.i1774, %.0.copyload.i1775
  br i1 %i.su, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.sv = zext i32 %.0.copyload.i1774 to i64
  %.val1684 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sw = getelementptr inbounds nuw i8, ptr %.val1684, i64 %i.sv
  store i8 0, ptr %i.sw, align 1
  %.val1583 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sx = getelementptr inbounds nuw i8, ptr %.val1583, i64 %i.ne
  %.0.copyload.i1776 = load i32, ptr %i.sx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1776) #8, !srcloc !19
  %i.sy = tail call double @w2c_hermes_hermes_g_strtod(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1776, i32 noundef %i.sp) #8 ; 2 uses
  %i.sz = bitcast double %i.sy to i64
  %i.ta = fcmp uno double %i.sy, 0.000000e+00
  %i.tb = select i1 %i.ta, i64 9221120237041090560, i64 %i.sz
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %bb.ce, %.split1804.us
  %.0.sink = phi i64 [ 9221120237041090560, %bb.ce ], [ 9221120237041090560, %.split1804.us ], [ %i.tb, %bb.cn ], [ 9221120237041090560, %bb.cm ]
  %i.tc = zext i32 %1 to i64                      ; 2 uses
  %.val1641 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.td = getelementptr inbounds nuw i8, ptr %.val1641, i64 %i.tc
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  store i64 %.0.sink, ptr %i.te, align 1
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tf = getelementptr inbounds nuw i8, ptr %.val, i64 %i.tc
  store i32 1, ptr %i.tf, align 1
  %.val1582 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tg = getelementptr inbounds nuw i8, ptr %.val1582, i64 %i.ne
  %.0.copyload.i1777 = load i32, ptr %i.tg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1777) #8, !srcloc !19
  %i.th = icmp eq i32 %.0.copyload.i1777, %i.nd
  br i1 %i.th, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1777) #8
  br label %bb.cq

bb.cq:                                            ; preds = %bb.co, %bb.cp, %bb.bl, %bb.bj, %bb.bh, %bb.bf, %bb.b
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AobjectValues0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.e = zext i32 %4 to i64                       ; 2 uses
  %.val89 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val89, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.g = add i32 %.0.copyload.i, -8
  %.val88 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val88, i64 %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.0.copyload.i92 = load i32, ptr %i.i, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i92) #8, !srcloc !19
  %.not = icmp eq i32 %.0.copyload.i92, 0
  %i.j = select i1 %.not, i32 70392, i32 %i.g
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoObject0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef %0, i32 noundef %i.c, i32 noundef %3, i32 noundef %i.j) #8
  %i.k = zext i32 %i.c to i64                     ; 2 uses
  %.val87 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %.val87, i64 %i.k
  %.0.copyload.i93 = load i32, ptr %i.l, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i93) #8, !srcloc !19
  %.not82 = icmp eq i32 %.0.copyload.i93, 0
  br i1 %.not82, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = zext i32 %1 to i64
  %.val83 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %.val83, i64 %i.m
  store i32 0, ptr %i.n, align 1
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.val91 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.val91, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.0.copyload.i94 = load i32, ptr %i.p, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i94) #8, !srcloc !23
  %i.q = zext i32 %.0.copyload.i94 to i64
  %i.r = or disjoint i64 %i.q, -281474976710656   ; 2 uses
  %i.s = zext i32 %3 to i64
  %.val86 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val86, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %.0.copyload.i95 = load i32, ptr %i.u, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i95) #8, !srcloc !19
  %i.v = zext i32 %.0.copyload.i95 to i64         ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 164                ; 2 uses
  %.val85 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %.val85, i64 %i.w
  %.0.copyload.i96 = load i32, ptr %i.x, align 1  ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i96) #8, !srcloc !19
  %.val84 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val84, i64 %i.v
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 168
  %.0.copyload.i97 = load i32, ptr %i.z, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i97) #8, !srcloc !19
  %i.aa = icmp ult i32 %.0.copyload.i96, %.0.copyload.i97
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = add i32 %.0.copyload.i96, 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 %i.w
  store i32 %i.ab, ptr %i.ac, align 1
  %i.ad = zext i32 %.0.copyload.i96 to i64
  %.val90 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.val90, i64 %i.ad
  store i64 %i.r, ptr %i.ae, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
end_hunk_4
