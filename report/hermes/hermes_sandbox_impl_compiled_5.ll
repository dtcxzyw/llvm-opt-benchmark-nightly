inline.NumInlined: 16806
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AfunctionPrototypeCall0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %.val524, i64 70384
  %.0.copyload.i529 = load i64, ptr %i.n, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i529) #8, !srcloc !20
  %i.o = icmp ugt i64 %.0.copyload.i529, -844424930131969
  br i1 %i.o, label %..thread_crit_edge, label %bb.d

..thread_crit_edge:                               ; preds = %bb.c
  %.pre = and i64 %.0.copyload.i529, 4294967295
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %.pre-phi = phi i64 [ %.pre, %..thread_crit_edge ], [ %i.j, %bb.b ] ; 2 uses
  %.0465555 = phi i32 [ 70384, %..thread_crit_edge ], [ %.0.copyload.i, %bb.b ] ; 2 uses
  %.not = icmp eq i64 %.pre-phi, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread, %bb.c
  %i.p = zext i32 %i.c to i64                     ; 4 uses
  %.val485 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.val485, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i32 0, ptr %i.r, align 1
  %.val516 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val516, i64 %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 107374182401, ptr %i.t, align 1
  %.val484 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val484, i64 %i.p
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i32 3, ptr %i.v, align 1
  %.val483 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.val483, i64 %i.p
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 50779, ptr %i.x, align 1
  %i.y = add i32 %i.b, -40
  %i.z = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseTypeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.y) #8
  %i.aa = zext i32 %1 to i64
  br label %bb.u

bb.e:                                             ; preds = %.thread
  %.val500 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %.val500, i64 %i.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.0.copyload.i530 = load i32, ptr %i.ac, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i530) #8, !srcloc !19
  %i.ad = add i32 %.0.copyload.i530, -1           ; 2 uses
  %i.ae = tail call i32 @llvm.usub.sat.i32(i32 %.0.copyload.i530, i32 1) ; 2 uses
  %.not471 = icmp eq i32 %.0.copyload.i530, 0
  br i1 %.not471, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = add i32 %.0.copyload.i, -8
  %i.ag = zext i32 %i.af to i64
  %.val523 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.val523, i64 %i.ag
  %.0.copyload.i531 = load i64, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i531) #8, !srcloc !20
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0 = phi i64 [ %.0.copyload.i531, %bb.f ], [ -1688849860263936, %bb.e ]
  %i.ai = zext i32 %3 to i64                      ; 5 uses
  %.val499 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.val499, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 5592
  %.0.copyload.i532 = load i32, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i532) #8, !srcloc !19
  %i.al = add nuw nsw i64 %i.ai, 5596             ; 4 uses
  %.val498 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.val498, i64 %i.al
  %.0.copyload.i533 = load i32, ptr %i.am, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i533) #8, !srcloc !19
  %i.an = sub i32 %.0.copyload.i532, %.0.copyload.i533
  %i.ao = ashr i32 %i.an, 3
  %i.ap = zext i32 %i.ao to i64
  %i.aq = tail call i32 @llvm.uadd.sat.i32(i32 %i.ae, i32 7) ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = add nuw nsw i64 %i.ar, 32
  %i.at = icmp samesign ugt i64 %i.as, %i.ap
  br i1 %i.at, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = add i32 %3, 5616
  %i.av = zext i32 %i.au to i64
  %.val497 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %.val497, i64 %i.av
  %.0.copyload.i534 = load i32, ptr %i.aw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i534) #8, !srcloc !19
  %i.ax = add nuw nsw i64 %i.ai, 5612             ; 2 uses
  %.val496 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %.val496, i64 %i.ax
  %.0.copyload.i535 = load i32, ptr %i.ay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i535) #8, !srcloc !19
  %i.az = sub i32 %.0.copyload.i535, %i.c
  %i.ba = icmp ult i32 %.0.copyload.i534, %i.az
  br i1 %i.ba, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bb = add i32 %i.b, -40
  %i.bc = add i32 %3, 5620
  %i.bd = zext i32 %i.bc to i64
  %.val495 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %.val495, i64 %i.bd
  %.0.copyload.i536 = load i32, ptr %i.be, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i536) #8, !srcloc !19
  tail call void @w2c_hermes_hermes0x3A0x3Aoscompat0x3A0x3Athread_stack_bounds0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.bb, i32 noundef %.0.copyload.i536) #8
  %i.bf = zext i32 %i.c to i64                    ; 2 uses
  %.val494 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %.val494, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.0.copyload.i537 = load i32, ptr %i.bh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i537) #8, !srcloc !19
  %.val481 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val481, i64 %i.ax
  store i32 %.0.copyload.i537, ptr %i.bi, align 1
  %.val493 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %.val493, i64 %i.bf
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %.0.copyload.i538 = load i32, ptr %i.bk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i538) #8, !srcloc !19
  %.val480 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.val480, i64 %i.ai
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 5616
  store i32 %.0.copyload.i538, ptr %i.bm, align 1
  %i.bn = sub i32 %.0.copyload.i537, %i.c
  %i.bo = icmp ugt i32 %i.bn, %.0.copyload.i538
  br i1 %i.bo, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val492 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %.val492, i64 %i.al
  %.0.copyload.i539 = load i32, ptr %i.bp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i539) #8, !srcloc !19
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j
  %.0459 = phi i32 [ %.0.copyload.i539, %bb.j ], [ %.0.copyload.i533, %bb.h ]
  %i.bq = shl i32 %i.aq, 3
  %i.br = add i32 %.0459, %i.bq                   ; 8 uses
  %.val479 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.val479, i64 %i.al
  store i32 %i.br, ptr %i.bs, align 1
  %.val526 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %.val526, i64 %i.ai
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 5608
  %.0.copyload.i540 = load i32, ptr %i.bu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i540) #8, !srcloc !23
  %i.bv = zext i32 %.0.copyload.i540 to i64
  %i.bw = add i32 %i.br, -24
  %i.bx = zext i32 %i.bw to i64                   ; 2 uses
  %.val515 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %.val515, i64 %i.bx
  store i64 0, ptr %i.by, align 1
  %i.bz = add i32 %i.br, -8
  %i.ca = zext i32 %i.bz to i64
  %.val514 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %.val514, i64 %i.ca
  store i64 %i.bv, ptr %i.cb, align 1
  %i.cc = add i32 %i.br, -32
  %i.cd = zext i32 %i.ae to i64
  %i.ce = or disjoint i64 %i.cd, -1125899906842624
  %i.cf = zext i32 %i.cc to i64
  %.val513 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %.val513, i64 %i.cf
  store i64 %i.ce, ptr %i.cg, align 1
  %i.ch = add i32 %i.br, -40
  %i.ci = zext i32 %i.ch to i64
  %.val512 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %.val512, i64 %i.ci
  store i64 -1688849860263936, ptr %i.cj, align 1
  %i.ck = add i32 %i.br, -48
  %i.cl = or disjoint i64 %.pre-phi, -281474976710656
  %i.cm = zext i32 %i.ck to i64
  %.val511 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cn = getelementptr inbounds nuw i8, ptr %.val511, i64 %i.cm
  store i64 %i.cl, ptr %i.cn, align 1
  %i.co = add i32 %i.br, -56                      ; 3 uses
  %i.cp = zext i32 %i.co to i64
  %.val510 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %.val510, i64 %i.cp
  store i64 %.0, ptr %i.cq, align 1
  %.val509 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %.val509, i64 %i.bx
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i64 0, ptr %i.cs, align 1
  %i.ct = icmp ult i32 %.0.copyload.i530, 2
  br i1 %i.ct, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cu = add i32 %i.br, -64                      ; 3 uses
  %i.cv = and i32 %i.ad, 3                        ; 2 uses
  %.val491 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %.val491, i64 %i.e
  %.0.copyload.i541 = load i32, ptr %i.cw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i541) #8, !srcloc !19
  %i.cx = add i32 %.0.copyload.i541, -8           ; 4 uses
  %i.cy = icmp ugt i32 %.0.copyload.i530, 4
  br i1 %i.cy, label %bb.m, label %.loopexit559

bb.m:                                             ; preds = %bb.l
  %i.cz = and i32 %i.ad, -4
  %i.da = add i32 %.0.copyload.i541, -32
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 1, %bb.m ] ; 2 uses
  %.0461 = phi i32 [ %i.ee, %bb.n ], [ 0, %bb.m ]
  %i.db = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.dc = shl i32 %i.db, 3                        ; 5 uses
  %i.dd = sub i32 %i.co, %i.dc
  %i.de = sub i32 %i.cx, %i.dc
  %i.df = zext i32 %i.de to i64
  %.val522 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dg = getelementptr inbounds nuw i8, ptr %.val522, i64 %i.df
  %.0.copyload.i542 = load i64, ptr %i.dg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i542) #8, !srcloc !20
  %i.dh = zext i32 %i.dd to i64
  %.val508 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.di = getelementptr inbounds nuw i8, ptr %.val508, i64 %i.dh
  store i64 %.0.copyload.i542, ptr %i.di, align 1
  %i.dj = sub i32 %i.cu, %i.dc
  %i.dk = xor i32 %i.db, -1
  %i.dl = shl i32 %i.dk, 3                        ; 2 uses
  %i.dm = add i32 %i.dl, %i.cx
  %i.dn = zext i32 %i.dm to i64
  %.val521 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.do = getelementptr inbounds nuw i8, ptr %.val521, i64 %i.dn
  %.0.copyload.i543 = load i64, ptr %i.do, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i543) #8, !srcloc !20
  %i.dp = zext i32 %i.dj to i64
  %.val507 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %.val507, i64 %i.dp
  store i64 %.0.copyload.i543, ptr %i.dq, align 1
  %i.dr = add i32 %i.dl, %i.cu
  %i.ds = sub i32 -16, %i.dc                      ; 2 uses
  %i.dt = add i32 %i.ds, %i.cx
  %i.du = zext i32 %i.dt to i64
  %.val520 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dv = getelementptr inbounds nuw i8, ptr %.val520, i64 %i.du
  %.0.copyload.i544 = load i64, ptr %i.dv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i544) #8, !srcloc !20
  %i.dw = zext i32 %i.dr to i64
  %.val506 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %.val506, i64 %i.dw
  store i64 %.0.copyload.i544, ptr %i.dx, align 1
  %i.dy = add i32 %i.ds, %i.cu
  %i.dz = sub i32 %i.da, %i.dc
  %i.ea = zext i32 %i.dz to i64
  %.val519 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eb = getelementptr inbounds nuw i8, ptr %.val519, i64 %i.ea
  %.0.copyload.i545 = load i64, ptr %i.eb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i545) #8, !srcloc !20
  %i.ec = zext i32 %i.dy to i64
  %.val505 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %.val505, i64 %i.ec
  store i64 %.0.copyload.i545, ptr %i.ed, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.ee = add nuw i32 %.0461, 4                   ; 2 uses
  %.not472 = icmp eq i32 %i.ee, %i.cz
  br i1 %.not472, label %.loopexit559.loopexit, label %bb.n

.loopexit559.loopexit:                            ; preds = %bb.n
  %5 = trunc nuw i64 %indvars.iv.next to i32
  br label %.loopexit559

.loopexit559:                                     ; preds = %.loopexit559.loopexit, %bb.l
  %.1464 = phi i32 [ 1, %bb.l ], [ %5, %.loopexit559.loopexit ]
  %.not473 = icmp eq i32 %i.cv, 0
  br i1 %.not473, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit559, %.preheader
  %.1462.a = phi i32 [ %6, %.preheader ], [ %.1464, %.loopexit559 ] ; 2 uses
  %.1462 = phi i32 [ %i.em, %.preheader ], [ 0, %.loopexit559 ]
  %i.ef = shl i32 %.1462.a, 3                     ; 2 uses
  %i.eg = sub i32 %i.co, %i.ef
  %i.eh = sub i32 %i.cx, %i.ef
  %i.ei = zext i32 %i.eh to i64
  %.val518 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ej = getelementptr inbounds nuw i8, ptr %.val518, i64 %i.ei
  %.0.copyload.i546 = load i64, ptr %i.ej, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i546) #8, !srcloc !20
  %i.ek = zext i32 %i.eg to i64
  %.val504 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.el = getelementptr inbounds nuw i8, ptr %.val504, i64 %i.ek
  store i64 %.0.copyload.i546, ptr %i.el, align 1
  %6 = add i32 %.1462.a, 1
  %i.em = add nuw nsw i32 %.1462, 1               ; 2 uses
  %.not474 = icmp eq i32 %i.em, %i.cv
  br i1 %.not474, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %.loopexit559, %bb.k
  %i.en = add i32 %i.b, -40
  %i.eo = zext i32 %.0465555 to i64
  %.val490 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ep = getelementptr inbounds nuw i8, ptr %.val490, i64 %i.eo
  %.0.copyload.i547 = load i32, ptr %i.ep, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i547) #8, !srcloc !19
  %i.eq = zext i32 %.0.copyload.i547 to i64
  %.val489 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.er = getelementptr inbounds nuw i8, ptr %.val489, i64 %i.eq
  %.0.copyload.i548 = load i32, ptr %i.er, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i548) #8, !srcloc !19
  %i.es = lshr i32 %.0.copyload.i548, 22
  %i.et = and i32 %i.es, 1020
  %.val488 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %.val488, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 289808
  %.0.copyload.i549 = load i32, ptr %i.ew, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i549) #8, !srcloc !19
  %i.ex = zext i32 %.0.copyload.i549 to i64
  %.val487 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ey = getelementptr inbounds nuw i8, ptr %.val487, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 60
  %.0.copyload.i550 = load i32, ptr %i.ez, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i550) #8, !srcloc !19
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !26
  %i.fc = icmp ult i32 %.0.copyload.i550, %i.fb
  br i1 %i.fc, label %bb.o, label %.critedge, !prof !27

bb.o:                                             ; preds = %.loopexit
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !28
  %i.ff = zext i32 %.0.copyload.i550 to i64
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.fe, i64 %i.ff ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !29 ; 2 uses
  %.not475 = icmp eq ptr %i.fi, null
  br i1 %.not475, label %.critedge, label %bb.p, !prof !31

bb.p:                                             ; preds = %bb.o
  %i.fj = load ptr, ptr @w2c_hermes_t2, align 8, !tbaa !32 ; 4 uses
  %i.fk = load ptr, ptr %i.fg, align 8, !tbaa !33 ; 4 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %func_types_eq.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fm = icmp ne ptr %i.fj, null
  %i.fn = icmp ne ptr %i.fk, null
  %or.cond.i = and i1 %i.fm, %i.fn
  br i1 %or.cond.i, label %func_types_eq.exit, label %.critedge, !prof !34

func_types_eq.exit:                               ; preds = %bb.q
  %i.fo = load i128, ptr %i.fj, align 1
  %i.fp = load i128, ptr %i.fk, align 1
  %i.fq = xor i128 %i.fo, %i.fp
  %i.fr = getelementptr i8, ptr %i.fj, i64 16
  %i.fs = getelementptr i8, ptr %i.fk, i64 16
  %i.ft = load i128, ptr %i.fr, align 1
  %i.fu = load i128, ptr %i.fs, align 1
  %i.fv = xor i128 %i.ft, %i.fu
  %i.fw = or i128 %i.fq, %i.fv
  %i.fx = icmp ne i128 %i.fw, 0
  %i.fy = zext i1 %i.fx to i32
  %.not.i = icmp eq i32 %i.fy, 0
  br i1 %.not.i, label %func_types_eq.exit.thread, label %.critedge, !prof !35

.critedge:                                        ; preds = %bb.q, %bb.o, %.loopexit, %func_types_eq.exit
  tail call void @wasm_rt_trap(i32 noundef 6) #9
  unreachable

func_types_eq.exit.thread:                        ; preds = %bb.p, %func_types_eq.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !36
  tail call void %i.fi(ptr noundef %i.ga, i32 noundef %i.en, i32 noundef %.0465555, i32 noundef %3) #8
  %i.gb = zext i32 %i.c to i64                    ; 2 uses
  %.val486 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gc = getelementptr inbounds nuw i8, ptr %.val486, i64 %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %.0.copyload.i551 = load i32, ptr %i.gd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i551) #8, !srcloc !19
  %.not476 = icmp eq i32 %.0.copyload.i551, 0
  br i1 %.not476, label %func_types_eq.exit.thread._crit_edge, label %bb.r

func_types_eq.exit.thread._crit_edge:             ; preds = %func_types_eq.exit.thread
  %.pre564 = zext i32 %1 to i64
  br label %bb.t

bb.r:                                             ; preds = %func_types_eq.exit.thread
  %.val517 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ge = getelementptr inbounds nuw i8, ptr %.val517, i64 %i.gb
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %.0.copyload.i552 = load i64, ptr %i.gf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i552) #8, !srcloc !20
  %i.gg = zext i32 %1 to i64                      ; 2 uses
  %.val503 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gh = getelementptr inbounds nuw i8, ptr %.val503, i64 %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store i64 %.0.copyload.i552, ptr %i.gi, align 1
  br label %bb.t

bb.s:                                             ; preds = %bb.i, %bb.g
  %i.gj = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseStackOverflow0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AStackOverflowKind0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef 1) #8
  %i.gk = zext i32 %1 to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %func_types_eq.exit.thread._crit_edge, %bb.s
  %.sink572 = phi i64 [ %i.gk, %bb.s ], [ %.pre564, %func_types_eq.exit.thread._crit_edge ], [ %i.gg, %bb.r ]
  %.sink = phi i32 [ %i.gj, %bb.s ], [ 0, %func_types_eq.exit.thread._crit_edge ], [ 1, %bb.r ]
  %.val477 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gl = getelementptr inbounds nuw i8, ptr %.val477, i64 %.sink572
  store i32 %.sink, ptr %i.gl, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.d
  %.sink574 = phi i64 [ %i.al, %bb.t ], [ %i.aa, %bb.d ]
  %.0.copyload.i533.sink = phi i32 [ %.0.copyload.i533, %bb.t ], [ %i.z, %bb.d ]
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gm = getelementptr inbounds nuw i8, ptr %.val, i64 %.sink574
  store i32 %.0.copyload.i533.sink, ptr %i.gm, align 1
  store i32 %i.b, ptr %i.a, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AfunctionPrototypeBind0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = add i32 %i.b, -48                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.e = zext i32 %4 to i64                       ; 2 uses
  %.val97 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.val97, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !19
  %i.g = zext i32 %.0.copyload.i to i64
  %.val100 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %.val100, i64 %i.g
  %.0.copyload.i101 = load i64, ptr %i.h, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i101) #8, !srcloc !20
  %i.i = icmp ugt i64 %.0.copyload.i101, -844424930131969
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = and i64 %.0.copyload.i101, 4294967295
  %.val96 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val96, i64 %i.j
  %.0.copyload.i102 = load i32, ptr %i.k, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i102) #8, !srcloc !19
  %i.l = add i32 %.0.copyload.i102, -1291845632
  %i.m = icmp ult i32 %i.l, -150994944
  %i.n = select i1 %i.m, i32 70384, i32 %.0.copyload.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.n, %bb.b ], [ 70384, %bb.a ] ; 2 uses
  %i.o = zext i32 %.0 to i64
  %.val99 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %.val99, i64 %i.o
  %.0.copyload.i103 = load i64, ptr %i.p, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i103) #8, !srcloc !20
  %i.q = icmp ult i64 %.0.copyload.i103, -844424930131968
  %i.r = and i64 %.0.copyload.i103, 4294967295
  %i.s = icmp eq i64 %i.r, 0
  %.not91 = or i1 %i.q, %i.s
  br i1 %.not91, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = zext i32 %i.c to i64                     ; 4 uses
  %.val94 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %.val94, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store i32 0, ptr %i.v, align 1
  %.val98 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.val98, i64 %i.t
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i64 115964116993, ptr %i.x, align 1
  %.val93 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %.val93, i64 %i.t
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i32 3, ptr %i.z, align 1
  %.val92 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val92, i64 %i.t
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 50751, ptr %i.ab, align 1
  %i.ac = add i32 %i.b, -40
  %i.ad = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AraiseTypeError0x28hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.ac) #8
  %i.ae = zext i32 %1 to i64
  %.val = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ae
  store i32 %i.ad, ptr %i.af, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
end_hunk_0
