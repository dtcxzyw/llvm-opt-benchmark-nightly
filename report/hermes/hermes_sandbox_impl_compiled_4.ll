Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_4?download=true
inline.NumInlined: 16097
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AarrayPrototypeSort0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
bb.bo:                                            ; preds = %bb.bn
  %i.kw = trunc nsw i64 %i.kv to i32
  switch i32 %i.kw, label %bb.bw [
    i32 -14, label %bb.cg
    i32 -1, label %bb.bv
    i32 -12, label %bb.bp
    i32 -11, label %bb.bq
    i32 -10, label %bb.br
    i32 -9, label %bb.bs
    i32 -2, label %bb.bv
    i32 -3, label %bb.bu
    i32 -6, label %bb.bt
    i32 -5, label %bb.bt
    i32 -4, label %bb.bu
  ]

bb.bp:                                            ; preds = %bb.bo
  br label %bb.cg

bb.bq:                                            ; preds = %bb.bo
  br label %bb.cg

bb.br:                                            ; preds = %bb.bo
  %i.kx = and i64 %.0.copyload.i1616, 1
  %.not1412 = icmp eq i64 %i.kx, 0
  %i.ky = select i1 %.not1412, i32 6, i32 22
  br label %bb.cg

bb.bs:                                            ; preds = %bb.bo
  %i.kz = trunc i64 %.0.copyload.i1616 to i32
  %i.la = shl i32 %i.kz, 3
  %i.lb = or disjoint i32 %i.la, 5
  br label %bb.cg

bb.bt:                                            ; preds = %bb.bo, %bb.bo
  %i.lc = trunc i64 %.0.copyload.i1616 to i32
  %i.ld = or i32 %i.lc, 2
  br label %bb.cg

bb.bu:                                            ; preds = %bb.bo, %bb.bo
  %i.le = trunc i64 %.0.copyload.i1616 to i32
  %i.lf = or i32 %i.le, 1
  br label %bb.cg

bb.bv:                                            ; preds = %bb.bo, %bb.bo
  %i.lg = trunc i64 %.0.copyload.i1616 to i32
  br label %bb.cg

bb.bw:                                            ; preds = %bb.bo
  %i.lh = bitcast i64 %.0.copyload.i1616 to double ; 4 uses
  %i.li = tail call noundef double @llvm.fabs.f64(double %i.lh)
  %i.lj = fcmp olt double %i.li, f0x41E0000000000000
  br i1 %i.lj, label %bb.bx, label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  %i.lk = fcmp ule double %i.lh, f0xC1E0000000200000
  %i.ll = fcmp uge double %i.lh, f0x41E0000000000000
  %.not1415 = or i1 %i.lk, %i.ll
  br i1 %.not1415, label %bb.by, label %bb.bz, !prof !23

bb.by:                                            ; preds = %bb.bx
  tail call void @wasm_rt_trap(i32 noundef 2) #7
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.lm = fptosi double %i.lh to i32
  %i.ln = shl i32 %i.lm, 3
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bw, %bb.bz
  %.2 = phi i32 [ %i.ln, %bb.bz ], [ 0, %bb.bw ]  ; 2 uses
  %i.lo = ashr exact i32 %.2, 3
  %i.lp = sitofp i32 %i.lo to double
  %i.lq = bitcast double %i.lp to i64
  %i.lr = icmp eq i64 %.0.copyload.i1616, %i.lq
  br i1 %i.lr, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ls = or disjoint i32 %.2, 4
  br label %bb.cg

bb.cc:                                            ; preds = %bb.ca
  %.val1453 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.lt = getelementptr inbounds nuw i8, ptr %.val1453, i64 %i.az
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 1376
  %.0.copyload.i1617 = load i32, ptr %i.lu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1617) #6, !srcloc !13
  %.val1452 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.lv = getelementptr inbounds nuw i8, ptr %.val1452, i64 %i.iq
  %.0.copyload.i1618 = load i32, ptr %i.lv, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1618) #6, !srcloc !13
  %i.lw = sub i32 %.0.copyload.i1617, %.0.copyload.i1618
  %i.lx = icmp ult i32 %i.lw, 16
  br i1 %i.lx, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.ly = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AallocSlow0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.ij, i32 noundef 16) #6
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.lz = add i32 %.0.copyload.i1618, 16
  %.val1514 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ma = getelementptr inbounds nuw i8, ptr %.val1514, i64 %i.iq
  store i32 %i.lz, ptr %i.ma, align 1
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.11372 = phi i32 [ %i.ly, %bb.cd ], [ %.0.copyload.i1618, %bb.ce ] ; 2 uses
  %i.mb = zext i32 %.11372 to i64                 ; 2 uses
  %.val1513 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mc = getelementptr inbounds nuw i8, ptr %.val1513, i64 %i.mb
  store i32 402653200, ptr %i.mc, align 1
  %.val1424 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.md = getelementptr inbounds nuw i8, ptr %.val1424, i64 %i.mb
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  store i64 %.0.copyload.i1616, ptr %i.me, align 1
  %i.mf = or i32 %.11372, 3
  br label %bb.cg

bb.cg:                                            ; preds = %bb.bo, %bb.cf, %bb.cb, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp
  %.21373 = phi i32 [ %i.ls, %bb.cb ], [ %i.mf, %bb.cf ], [ 7, %bb.bo ], [ 14, %bb.bp ], [ 15, %bb.bq ], [ %i.ky, %bb.br ], [ %i.lb, %bb.bs ], [ %i.lg, %bb.bv ], [ %i.ld, %bb.bt ], [ %i.lf, %bb.bu ] ; 2 uses
  %.val1451 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mg = getelementptr inbounds nuw i8, ptr %.val1451, i64 %i.ir
  %.0.copyload.i1619 = load i32, ptr %i.mg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1619) #6, !srcloc !13
  %i.mh = zext i32 %.0.copyload.i1619 to i64      ; 2 uses
  %.val1450 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mi = getelementptr inbounds nuw i8, ptr %.val1450, i64 %i.mh
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 28
  %.0.copyload.i1620 = load i32, ptr %i.mj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1620) #6, !srcloc !13
  %.val1449 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mk = getelementptr inbounds nuw i8, ptr %.val1449, i64 %i.az
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 1364
  %.0.copyload.i1621 = load i32, ptr %i.ml, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1621) #6, !srcloc !13
  %.val1448 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mm = getelementptr inbounds nuw i8, ptr %.val1448, i64 %i.mh
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 20
  %.0.copyload.i1622 = load i32, ptr %i.mn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1622) #6, !srcloc !13
  %i.mo = sub i32 %.01369, %.0.copyload.i1622     ; 4 uses
  %i.mp = icmp ult i32 %i.mo, 4096
  br i1 %i.mp, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.mq = shl nuw nsw i32 %i.mo, 2
  %i.mr = add i32 %i.mq, %.0.copyload.i1620
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cg
  %i.ms = add i32 %i.mo, -4096
  %i.mt = lshr i32 %i.ms, 8
  %i.mu = and i32 %i.mt, 16777212
  %i.mv = add i32 %.0.copyload.i1620, 16392
  %i.mw = add i32 %i.mv, %i.mu
  %i.mx = zext i32 %i.mw to i64
  %.val1447 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.my = getelementptr inbounds nuw i8, ptr %.val1447, i64 %i.mx
  %.0.copyload.i1623 = load i32, ptr %i.my, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1623) #6, !srcloc !13
  %i.mz = shl i32 %i.mo, 2
  %i.na = and i32 %i.mz, 4092
  %i.nb = add i32 %.0.copyload.i1623, %i.na
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.01359.in = phi i32 [ %i.mr, %bb.ch ], [ %i.nb, %bb.ci ]
  %.01359 = add i32 %.01359.in, 8                 ; 3 uses
  %i.nc = and i32 %.01359, -4194304
  %.not1416 = icmp eq i32 %.0.copyload.i1621, %i.nc
  br i1 %.not1416, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AwriteBarrierSlow0x28hermes0x3A0x3Avm0x3A0x3AGCHermesValueBase0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue320x3E0x20const0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3AHermesValue320x29(ptr noundef nonnull %0, i32 noundef %i.ij, i32 noundef %.01359, i32 noundef %.21373) #6
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.nd = zext i32 %.01359 to i64
  %.val1512 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ne = getelementptr inbounds nuw i8, ptr %.val1512, i64 %i.nd
  store i32 %.21373, ptr %i.ne, align 1
  %.val1511 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nf = getelementptr inbounds nuw i8, ptr %.val1511, i64 %i.aq
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 296
  store i32 1, ptr %i.ng, align 1
  %.val1510 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nh = getelementptr inbounds nuw i8, ptr %.val1510, i64 %i.aq
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  store i32 1, ptr %i.ni, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AdeleteComputed0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.is, i32 noundef %.01374, i32 noundef %3, i32 noundef %.01368, i32 noundef %i.it) #6
  %.val1548 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nj = getelementptr inbounds nuw i8, ptr %.val1548, i64 %i.aq
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 300
  %.0.copyload.i1624 = load i8, ptr %i.nk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1624) #6, !srcloc !14
  %.not1417 = icmp eq i8 %.0.copyload.i1624, 0
  br i1 %.not1417, label %bb.dm, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.bn
  %i.nl = add nuw i32 %.01369, 1                  ; 2 uses
  %.not1418 = icmp eq i32 %i.nl, %.213771660
  br i1 %.not1418, label %bb.cn, label %bb.az

bb.cn:                                            ; preds = %bb.cm
  %.val1446 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nm = getelementptr inbounds nuw i8, ptr %.val1446, i64 %i.dh
  %.0.copyload.i1625 = load i32, ptr %i.nm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1625) #6, !srcloc !13
  %i.nn = add i32 %.0.copyload.i1625, %i.im
  %i.no = zext i32 %i.nn to i64
  %.val1445 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.np = getelementptr inbounds nuw i8, ptr %.val1445, i64 %i.no
  %.0.copyload.i1626 = load i32, ptr %i.np, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1626) #6, !srcloc !13
  %.val1509 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nq = getelementptr inbounds nuw i8, ptr %.val1509, i64 %i.dl
  store i32 %.0.copyload.i1608, ptr %i.nq, align 1
  %.val1508 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nr = getelementptr inbounds nuw i8, ptr %.val1508, i64 %i.dq
  store i32 %.0.copyload.i1607, ptr %i.nr, align 1
  %i.ns = add i32 %.0.copyload.i1626, 128
  %.val1507 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nt = getelementptr inbounds nuw i8, ptr %.val1507, i64 %i.do
  store i32 %i.ns, ptr %i.nt, align 1
  %i.nu = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3AStandardSortModel0x3A0x3AStandardSortModel0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ACallable0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.ip, i32 noundef %3, i32 noundef %i.he, i32 noundef %.01367) #6 ; 5 uses
  %i.nv = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AquickSort0x28hermes0x3A0x3Avm0x3A0x3ASortModel0x2A0x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.nu, i32 noundef %.213771660) #6
  %.not1419 = icmp eq i32 %i.nv, 0
  %.val1506 = load ptr, ptr %i.d, align 8, !tbaa !12 ; 2 uses
  br i1 %.not1419, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.nw = zext i32 %1 to i64
  %i.nx = getelementptr inbounds nuw i8, ptr %.val1506, i64 %i.nw
  store i32 0, ptr %i.nx, align 1
  %i.ny = zext i32 %i.nu to i64
  %.val1505 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nz = getelementptr inbounds nuw i8, ptr %.val1505, i64 %i.ny
  store i32 269788, ptr %i.nz, align 1
  %i.oa = add i32 %i.nu, 8
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29(ptr noundef nonnull %0, i32 noundef %i.oa) #6
  br label %bb.dn

bb.cp:                                            ; preds = %bb.cn
  %i.ob = zext i32 %i.nu to i64
  %i.oc = getelementptr inbounds nuw i8, ptr %.val1506, i64 %i.ob
  store i32 269788, ptr %i.oc, align 1
  %i.od = add i32 %i.nu, 8
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29(ptr noundef nonnull %0, i32 noundef %i.od) #6
  %i.oe = zext i32 %.01366 to i64
  br label %bb.cq

bb.cq:                                            ; preds = %bb.dg, %bb.cp
  %.11370 = phi i32 [ 0, %bb.cp ], [ %i.qs, %bb.dg ] ; 5 uses
  %.val1444 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.of = getelementptr inbounds nuw i8, ptr %.val1444, i64 %i.dh
  %.0.copyload.i1627 = load i32, ptr %i.of, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1627) #6, !srcloc !13
  %i.og = add i32 %.0.copyload.i1627, %i.im
  %i.oh = zext i32 %i.og to i64
  %.val1443 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.oi = getelementptr inbounds nuw i8, ptr %.val1443, i64 %i.oh
  %.0.copyload.i1628 = load i32, ptr %i.oi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1628) #6, !srcloc !13
  %.val1503 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.oj = getelementptr inbounds nuw i8, ptr %.val1503, i64 %i.dl
  store i32 %.0.copyload.i1608, ptr %i.oj, align 1
  %.val1502 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ok = getelementptr inbounds nuw i8, ptr %.val1502, i64 %i.dq
  store i32 %.0.copyload.i1607, ptr %i.ok, align 1
  %i.ol = add i32 %.0.copyload.i1628, 128
  %.val1501 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.om = getelementptr inbounds nuw i8, ptr %.val1501, i64 %i.do
  store i32 %i.ol, ptr %i.om, align 1
  %.val1442 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.on = getelementptr inbounds nuw i8, ptr %.val1442, i64 %i.ir
  %.0.copyload.i1629 = load i32, ptr %i.on, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1629) #6, !srcloc !13
  %i.oo = zext i32 %.0.copyload.i1629 to i64      ; 3 uses
  %.val1441 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.op = getelementptr inbounds nuw i8, ptr %.val1441, i64 %i.oo
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 20
  %.0.copyload.i1630 = load i32, ptr %i.oq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1630) #6, !srcloc !13
  %i.or = icmp ult i32 %.11370, %.0.copyload.i1630
  br i1 %i.or, label %bb.dd, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %.val1440 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.os = getelementptr inbounds nuw i8, ptr %.val1440, i64 %i.oo
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 24
  %.0.copyload.i1631 = load i32, ptr %i.ot, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1631) #6, !srcloc !13
  %.not1420 = icmp ugt i32 %.0.copyload.i1631, %.11370
  br i1 %.not1420, label %bb.cs, label %bb.dd

bb.cs:                                            ; preds = %bb.cr
  %.val1439 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ou = getelementptr inbounds nuw i8, ptr %.val1439, i64 %i.oo
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 28
  %.0.copyload.i1632 = load i32, ptr %i.ov, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1632) #6, !srcloc !13
  %i.ow = sub nuw i32 %.11370, %.0.copyload.i1630 ; 4 uses
  %i.ox = icmp ult i32 %i.ow, 4096
  br i1 %i.ox, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.oy = shl nuw nsw i32 %i.ow, 2
  %i.oz = add i32 %.0.copyload.i1632, %i.oy
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  %i.pa = add i32 %i.ow, -4096
  %i.pb = lshr i32 %i.pa, 8
  %i.pc = and i32 %i.pb, 16777212
  %i.pd = add nuw nsw i32 %i.pc, 16392
  %i.pe = add i32 %i.pd, %.0.copyload.i1632
  %i.pf = zext i32 %i.pe to i64
  %.val1438 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.pg = getelementptr inbounds nuw i8, ptr %.val1438, i64 %i.pf
  %.0.copyload.i1633 = load i32, ptr %i.pg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1633) #6, !srcloc !13
  %i.ph = shl i32 %i.ow, 2
  %i.pi = and i32 %i.ph, 4092
  %i.pj = add i32 %.0.copyload.i1633, %i.pi
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.3.in = phi i32 [ %i.oz, %bb.ct ], [ %i.pj, %bb.cu ]
  %.3 = add i32 %.3.in, 8
  %i.pk = zext i32 %.3 to i64
  %.val1437 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.pl = getelementptr inbounds nuw i8, ptr %.val1437, i64 %i.pk
  %.0.copyload.i1634 = load i32, ptr %i.pl, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1634) #6, !srcloc !13
  %i.pm = and i32 %.0.copyload.i1634, 15
  switch i32 %i.pm, label %bb.cw [
    i32 1, label %bb.cx
    i32 2, label %bb.cy
    i32 3, label %bb.cz
    i32 4, label %bb.da
    i32 5, label %bb.db
    i32 6, label %bb.dc
    i32 7, label %bb.dd
    i32 15, label %bb.de
    i32 9, label %bb.cx
    i32 10, label %bb.cy
    i32 11, label %bb.cz
    i32 12, label %bb.da
    i32 13, label %bb.db
    i32 14, label %bb.df
  ]

bb.cw:                                            ; preds = %bb.cv
  %i.pn = zext i32 %.0.copyload.i1634 to i64
  %i.po = or disjoint i64 %i.pn, -281474976710656
  br label %bb.df

bb.cx:                                            ; preds = %bb.cv, %bb.cv
  %i.pp = and i32 %.0.copyload.i1634, -8
  %i.pq = zext i32 %i.pp to i64
  %i.pr = or disjoint i64 %i.pq, -562949953421312
  br label %bb.df

bb.cy:                                            ; preds = %bb.cv, %bb.cv
  %i.ps = and i32 %.0.copyload.i1634, -8
  %i.pt = zext i32 %i.ps to i64
  %i.pu = or disjoint i64 %i.pt, -844424930131968
  br label %bb.df

bb.cz:                                            ; preds = %bb.cv, %bb.cv
  %i.pv = and i32 %.0.copyload.i1634, -8
  %i.pw = zext i32 %i.pv to i64
  %.val1563 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.px = getelementptr inbounds nuw i8, ptr %.val1563, i64 %i.pw
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  %.0.copyload.i1635 = load double, ptr %i.py, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i1635) #6, !srcloc !36
  %i.pz = bitcast double %.0.copyload.i1635 to i64
  %i.qa = fcmp uno double %.0.copyload.i1635, 0.000000e+00
  %i.qb = select i1 %i.qa, i64 9221120237041090560, i64 %i.pz
  br label %bb.df

bb.da:                                            ; preds = %bb.cv, %bb.cv
  %i.qc = ashr i32 %.0.copyload.i1634, 3
  %i.qd = sitofp i32 %i.qc to double
  %i.qe = bitcast double %i.qd to i64
  br label %bb.df

bb.db:                                            ; preds = %bb.cv, %bb.cv
  %i.qf = lshr i32 %.0.copyload.i1634, 3
  %i.qg = zext nneg i32 %i.qf to i64
  %i.qh = or disjoint i64 %i.qg, -1266637395197952
  br label %bb.df

bb.dc:                                            ; preds = %bb.cv
  %i.qi = icmp ugt i32 %.0.copyload.i1634, 15
  %i.qj = zext i1 %i.qi to i64
  %i.qk = or disjoint i64 %i.qj, -1407374883553280
  br label %bb.df

bb.dd:                                            ; preds = %bb.cv, %bb.cr, %bb.cq
  br label %bb.df

bb.de:                                            ; preds = %bb.cv
  br label %bb.df

bb.df:                                            ; preds = %bb.cv, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw
  %.21364 = phi i64 [ -1970324836974592, %bb.dd ], [ %i.po, %bb.cw ], [ %i.qk, %bb.dc ], [ -1548112371908608, %bb.de ], [ %i.pr, %bb.cx ], [ %i.pu, %bb.cy ], [ %i.qb, %bb.cz ], [ %i.qe, %bb.da ], [ %i.qh, %bb.db ], [ -1688849860263936, %bb.cv ]
  %.val1423 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ql = getelementptr inbounds nuw i8, ptr %.val1423, i64 %i.oe
  store i64 %.21364, ptr %i.ql, align 1
  %i.qm = uitofp i32 %.11370 to double
  %.val1566 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qn = getelementptr inbounds nuw i8, ptr %.val1566, i64 %i.io
  store double %i.qm, ptr %i.qn, align 1
  %.val1500 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qo = getelementptr inbounds nuw i8, ptr %.val1500, i64 %i.aq
  store i32 1, ptr %i.qo, align 1
  %.val1499 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qp = getelementptr inbounds nuw i8, ptr %.val1499, i64 %i.bp
  store i32 1, ptr %i.qp, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AputComputedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x29(ptr noundef nonnull %0, i32 noundef %i.is, i32 noundef %.01374, i32 noundef %3, i32 noundef %.01368, i32 noundef %.01366, i32 noundef %.01374, i32 noundef %i.c) #6
  %.val1547 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qq = getelementptr inbounds nuw i8, ptr %.val1547, i64 %i.aq
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 300
  %.0.copyload.i1636 = load i8, ptr %i.qr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1636) #6, !srcloc !14
  %.not1421 = icmp eq i8 %.0.copyload.i1636, 0
  br i1 %.not1421, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.qs = add nuw i32 %.11370, 1                  ; 2 uses
  %i.qt = icmp eq i32 %i.qs, %.213771660
  br i1 %i.qt, label %bb.di, label %bb.cq

bb.dh:                                            ; preds = %bb.df
  %i.qu = zext i32 %1 to i64
  %.val1498 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qv = getelementptr inbounds nuw i8, ptr %.val1498, i64 %i.qu
  store i32 0, ptr %i.qv, align 1
  br label %bb.dn

bb.di:                                            ; preds = %bb.dg
  %.val1551 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qw = getelementptr inbounds nuw i8, ptr %.val1551, i64 %i.cs
  %.0.copyload.i1637 = load i64, ptr %i.qw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1637) #6, !srcloc !21
  %i.qx = zext i32 %1 to i64                      ; 2 uses
  %.val1422 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.qy = getelementptr inbounds nuw i8, ptr %.val1422, i64 %i.qx
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  store i64 %.0.copyload.i1637, ptr %i.qz, align 1
  %.val1497 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ra = getelementptr inbounds nuw i8, ptr %.val1497, i64 %i.qx
  store i32 1, ptr %i.ra, align 1
  br label %bb.dn

bb.dj:                                            ; preds = %bb.s
  %i.rb = add i32 %i.b, -416
  %i.rc = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3AStandardSortModel0x3A0x3AStandardSortModel0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ACallable0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.rb, i32 noundef %3, i32 noundef %.01374, i32 noundef %.01367) #6 ; 3 uses
  %i.rd = trunc i64 %.0.copyload.i1583 to i32
  %i.re = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AquickSort0x28hermes0x3A0x3Avm0x3A0x3ASortModel0x2A0x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.rc, i32 noundef %i.rd) #6
  %.not1402 = icmp eq i32 %i.re, 0
  br i1 %.not1402, label %._crit_edge, label %bb.dk

._crit_edge:                                      ; preds = %bb.dj
  %.pre = zext i32 %1 to i64
  br label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %.val1550 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.rf = getelementptr inbounds nuw i8, ptr %.val1550, i64 %i.cs
  %.0.copyload.i1638 = load i64, ptr %i.rf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1638) #6, !srcloc !21
  %i.rg = zext i32 %1 to i64                      ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.rh = getelementptr inbounds nuw i8, ptr %.val, i64 %i.rg
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  store i64 %.0.copyload.i1638, ptr %i.ri, align 1
  br label %bb.dl

bb.dl:                                            ; preds = %._crit_edge, %bb.dk
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.rg, %bb.dk ]
  %.1 = phi i32 [ 0, %._crit_edge ], [ 1, %bb.dk ]
  %.val1496 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.rj = getelementptr inbounds nuw i8, ptr %.val1496, i64 %.pre-phi
  store i32 %.1, ptr %i.rj, align 1
  %i.rk = zext i32 %i.rc to i64
  %.val1495 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.rl = getelementptr inbounds nuw i8, ptr %.val1495, i64 %i.rk
  store i32 269788, ptr %i.rl, align 1
  %i.rm = add i32 %i.rc, 8
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29(ptr noundef nonnull %0, i32 noundef %i.rm) #6
  br label %bb.dp

bb.dm:                                            ; preds = %bb.cl, %bb.bm
  %i.rn = zext i32 %1 to i64
  %.val1494 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ro = getelementptr inbounds nuw i8, ptr %.val1494, i64 %i.rn
  store i32 0, ptr %i.ro, align 1
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.di, %bb.dh, %bb.co
  %.val1436 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.rp = getelementptr inbounds nuw i8, ptr %.val1436, i64 %i.dh
  %.0.copyload.i1639 = load i32, ptr %i.rp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1639) #6, !srcloc !13
  %i.rq = add i32 %.0.copyload.i1639, %i.im
  %i.rr = zext i32 %i.rq to i64
  %.val1435 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.rs = getelementptr inbounds nuw i8, ptr %.val1435, i64 %i.rr
  %.0.copyload.i1640 = load i32, ptr %i.rs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1640) #6, !srcloc !13
  %.val1493 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.rt = getelementptr inbounds nuw i8, ptr %.val1493, i64 %i.dl
  store i32 %.0.copyload.i1608, ptr %i.rt, align 1
  %.val1492 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ru = getelementptr inbounds nuw i8, ptr %.val1492, i64 %i.dq
  store i32 %.0.copyload.i1607, ptr %i.ru, align 1
  %i.rv = add i32 %.0.copyload.i1640, 128
  %.val1491 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.rw = getelementptr inbounds nuw i8, ptr %.val1491, i64 %i.do
  store i32 %i.rv, ptr %i.rw, align 1
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.ar, %bb.ap, %bb.ao, %bb.z, %bb.u
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29(ptr noundef nonnull %0, i32 noundef %i.ds) #6
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dl, %bb.r, %bb.m, %bb.h, %bb.f
  store i32 %i.b, ptr %i.a, align 8, !tbaa !20
  ret void
}

declare i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetOwnPropertyKeys0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AOwnKeysFlags0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AArrayImpl0x3A0x3AsetStorageEndIndex0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AArrayImpl0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3A0x28anonymous0x20namespace0x290x3A0x3AStandardSortModel0x3A0x3AStandardSortModel0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3ACallable0x3E0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AquickSort0x28hermes0x3A0x3Avm0x3A0x3ASortModel0x2A0x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AarrayPrototypeSome0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = zext i32 %4 to i64                       ; 2 uses
  %.val13 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %.val13, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #6, !srcloc !13
  %.val = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.0.copyload.i14 = load i32, ptr %i.e, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i14) #6, !srcloc !13
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AeverySomeHelper0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x2C0x20bool0x29(ptr noundef %0, i32 noundef %1, i32 noundef %3, i32 noundef %.0.copyload.i, i32 noundef %.0.copyload.i14, i32 noundef 0) #6
  ret void
}

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AeverySomeHelper0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x2C0x20bool0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AarrayPrototypeSlice0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 24 uses
  %i.c = add i32 %i.b, -368                       ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 111 uses
  %i.e = zext i32 %i.c to i64                     ; 35 uses
  %.val986 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %.val986, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  store i32 %3, ptr %i.g, align 1
  %i.h = zext i32 %3 to i64
  %i.i = add nuw nsw i64 %i.h, 4                  ; 9 uses
  %.val948 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %.val948, i64 %i.i
  %.0.copyload.i = load i32, ptr %i.j, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #6, !srcloc !13
  %i.k = add i32 %i.b, -36                        ; 2 uses
  %i.l = add i32 %i.b, -176                       ; 2 uses
  %i.m = zext i32 %i.k to i64
  %.val985 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %.val985, i64 %i.m
  store i32 %i.l, ptr %i.n, align 1
  %.val913 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %.val913, i64 %i.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 324
  store i64 17179869185, ptr %i.p, align 1
  %i.q = add nuw nsw i64 %i.e, 320                ; 2 uses
  %.val984 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %.val984, i64 %i.q
  store i32 %i.k, ptr %i.r, align 1
  %.val983 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %.val983, i64 %i.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 188
  store i32 %.0.copyload.i, ptr %i.t, align 1
  %i.u = add nuw nsw i64 %i.e, 356                ; 3 uses
  %.val982 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %.val982, i64 %i.u
  store i32 0, ptr %i.v, align 1
  %i.w = add i32 %i.b, -48
  %i.x = add nuw nsw i64 %i.e, 352                ; 2 uses
  %.val981 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %.val981, i64 %i.x
  store i32 %i.w, ptr %i.y, align 1
  %i.z = add nuw nsw i64 %i.e, 348                ; 3 uses
  %.val980 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %.val980, i64 %i.z
  store i32 %i.l, ptr %i.aa, align 1
  %i.ab = add i32 %i.b, -184                      ; 2 uses
  %.val979 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %.val979, i64 %i.i
  store i32 %i.ab, ptr %i.ac, align 1
  %i.ad = add i32 %i.b, -200
  %i.ae = zext i32 %4 to i64                      ; 2 uses
  %.val947 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %.val947, i64 %i.ae
  %.0.copyload.i1009 = load i32, ptr %i.af, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1009) #6, !srcloc !13
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoObject0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef %0, i32 noundef %i.ad, i32 noundef %3, i32 noundef %.0.copyload.i1009) #6
  %.val946 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %.val946, i64 %i.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 168
  %.0.copyload.i1010 = load i32, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1010) #6, !srcloc !13
  %.not = icmp eq i32 %.0.copyload.i1010, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AarrayPrototypeJoin0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1371) #6, !srcloc !13
  %.not = icmp eq i32 %.0.copyload.i1371, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %1 to i64
  br label %bb.by

bb.c:                                             ; preds = %bb.a
  %.val1364 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %.val1364, i64 %i.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 264
  %.0.copyload.i1372 = load i32, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1372) #6, !srcloc !24
  %i.al = zext i32 %.0.copyload.i1372 to i64
  %i.am = or disjoint i64 %i.al, -281474976710656 ; 2 uses
  %.val1295 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %.val1295, i64 %i.i
  %.0.copyload.i1373 = load i32, ptr %i.an, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1373) #6, !srcloc !13
  %i.ao = zext i32 %.0.copyload.i1373 to i64      ; 2 uses
  %i.ap = add nuw nsw i64 %i.ao, 164              ; 2 uses
  %.val1294 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %.val1294, i64 %i.ap
  %.0.copyload.i1374 = load i32, ptr %i.aq, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1374) #6, !srcloc !13
  %.val1293 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %.val1293, i64 %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 168
  %.0.copyload.i1375 = load i32, ptr %i.as, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1375) #6, !srcloc !13
  %i.at = icmp ult i32 %.0.copyload.i1374, %.0.copyload.i1375
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.au = add i32 %.0.copyload.i1374, 8
  %.val1340 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %.val1340, i64 %i.ap
  store i32 %i.au, ptr %i.av, align 1
  %i.aw = zext i32 %.0.copyload.i1374 to i64
  %.val1239 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ax = getelementptr inbounds nuw i8, ptr %.val1239, i64 %i.aw
  store i64 %i.am, ptr %i.ax, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ay = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1373, i64 noundef %i.am) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.01177 = phi i32 [ %.0.copyload.i1374, %bb.d ], [ %i.ay, %bb.e ] ; 5 uses
  %i.az = add i32 %3, 5476                        ; 3 uses
  %i.ba = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3AgetStringPrim0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x29(ptr noundef nonnull %0, i32 noundef %i.az, i32 noundef %3, i32 noundef 14) #6
  %i.bb = zext i32 %i.ba to i64
  %i.bc = or disjoint i64 %i.bb, -844424930131968 ; 2 uses
  %.val1292 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bd = getelementptr inbounds nuw i8, ptr %.val1292, i64 %i.i
  %.0.copyload.i1376 = load i32, ptr %i.bd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1376) #6, !srcloc !13
  %i.be = zext i32 %.0.copyload.i1376 to i64      ; 2 uses
  %i.bf = add nuw nsw i64 %i.be, 164              ; 2 uses
  %.val1291 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %.val1291, i64 %i.bf
  %.0.copyload.i1377 = load i32, ptr %i.bg, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1377) #6, !srcloc !13
  %.val1290 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %.val1290, i64 %i.be
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 168
  %.0.copyload.i1378 = load i32, ptr %i.bi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1378) #6, !srcloc !13
  %i.bj = icmp ult i32 %.0.copyload.i1377, %.0.copyload.i1378
  br i1 %i.bj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bk = add i32 %.0.copyload.i1377, 8
  %.val1339 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bl = getelementptr inbounds nuw i8, ptr %.val1339, i64 %i.bf
  store i32 %i.bk, ptr %i.bl, align 1
  %i.bm = zext i32 %.0.copyload.i1377 to i64
  %.val1238 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bn = getelementptr inbounds nuw i8, ptr %.val1238, i64 %i.bm
  store i64 %i.bc, ptr %i.bn, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bo = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1376, i64 noundef %i.bc) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.01178 = phi i32 [ %.0.copyload.i1377, %bb.g ], [ %i.bo, %bb.h ] ; 2 uses
  %i.bp = zext i32 %.01177 to i64                 ; 2 uses
  %.val1289 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bq = getelementptr inbounds nuw i8, ptr %.val1289, i64 %i.bp
  %.0.copyload.i1379 = load i32, ptr %i.bq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1379) #6, !srcloc !13
  %i.br = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3ARuntime0x3A0x3AinsertVisitedObject0x28hermes0x3A0x3Avm0x3A0x3AJSObject0x2A0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.0.copyload.i1379)
  %.not1207 = icmp eq i32 %i.br, 0
  br i1 %.not1207, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = zext i32 %.01178 to i64
  %.val1358 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bt = getelementptr inbounds nuw i8, ptr %.val1358, i64 %i.bs
  %.0.copyload.i1380 = load i64, ptr %i.bt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1380) #6, !srcloc !21
  %i.bu = zext i32 %1 to i64                      ; 2 uses
  %.val1237 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bv = getelementptr inbounds nuw i8, ptr %.val1237, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 %.0.copyload.i1380, ptr %i.bw, align 1
  br label %bb.by

bb.k:                                             ; preds = %bb.i
  %.val1337 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1337, i64 %i.e
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i32 0, ptr %i.by, align 1
  %i.bz = add nuw nsw i64 %i.e, 48                ; 4 uses
  %.val1336 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ca = getelementptr inbounds nuw i8, ptr %.val1336, i64 %i.bz
  store i32 0, ptr %i.ca, align 1
  %i.cb = add i32 %i.b, -208
  %i.cc = add i32 %i.b, -444
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetNamedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3APropOpFlags0x2C0x20hermes0x3A0x3Avm0x3A0x3APropertyCacheEntry0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.cb, i32 noundef %.01177, i32 noundef %3, i32 noundef 85, i32 noundef %.01177, i32 noundef %i.cc, i32 noundef 0) #6
  %i.cd = add nuw nsw i64 %i.e, 240               ; 2 uses
  %.val1288 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ce = getelementptr inbounds nuw i8, ptr %.val1288, i64 %i.cd
  %.0.copyload.i1381 = load i32, ptr %i.ce, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1381) #6, !srcloc !13
  %.not1208 = icmp eq i32 %.0.copyload.i1381, 0
  %.val1335 = load ptr, ptr %i.d, align 8, !tbaa !12 ; 2 uses
  br i1 %.not1208, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cf = zext i32 %1 to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1335, i64 %i.cf
  store i32 0, ptr %i.cg, align 1
  br label %bb.bx

bb.m:                                             ; preds = %bb.k
  %i.ch = add nuw nsw i64 %i.e, 248               ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.val1335, i64 %i.ch
  %.0.copyload.i1382 = load i64, ptr %i.ci, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1382) #6, !srcloc !21
  %.val1287 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.cj = getelementptr inbounds nuw i8, ptr %.val1287, i64 %i.i
  %.0.copyload.i1383 = load i32, ptr %i.cj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1383) #6, !srcloc !13
  %i.ck = zext i32 %.0.copyload.i1383 to i64      ; 2 uses
  %i.cl = add nuw nsw i64 %i.ck, 164              ; 2 uses
  %.val1286 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.cm = getelementptr inbounds nuw i8, ptr %.val1286, i64 %i.cl
  %.0.copyload.i1384 = load i32, ptr %i.cm, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1384) #6, !srcloc !13
  %.val1285 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.cn = getelementptr inbounds nuw i8, ptr %.val1285, i64 %i.ck
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 168
  %.0.copyload.i1385 = load i32, ptr %i.co, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1385) #6, !srcloc !13
  %i.cp = icmp ult i32 %.0.copyload.i1384, %.0.copyload.i1385
  br i1 %i.cp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cq = add i32 %.0.copyload.i1384, 8
  %.val1334 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.cr = getelementptr inbounds nuw i8, ptr %.val1334, i64 %i.cl
  store i32 %i.cq, ptr %i.cr, align 1
  %i.cs = zext i32 %.0.copyload.i1384 to i64
  %.val1236 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ct = getelementptr inbounds nuw i8, ptr %.val1236, i64 %i.cs
  store i64 %.0.copyload.i1382, ptr %i.ct, align 1
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cu = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1383, i64 noundef %.0.copyload.i1382) #6
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.01183 = phi i32 [ %.0.copyload.i1384, %bb.n ], [ %i.cu, %bb.o ]
  %i.cv = add i32 %i.b, -224
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoLengthU640x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.cv, i32 noundef %3, i32 noundef %.01183) #6
  %.val1284 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.cw = getelementptr inbounds nuw i8, ptr %.val1284, i64 %i.e
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 224
  %.0.copyload.i1386 = load i32, ptr %i.cx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1386) #6, !srcloc !13
  %.not1209 = icmp eq i32 %.0.copyload.i1386, 0
  br i1 %.not1209, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cy = zext i32 %1 to i64
  %.val1333 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.cz = getelementptr inbounds nuw i8, ptr %.val1333, i64 %i.cy
  store i32 0, ptr %i.cz, align 1
  br label %bb.bx

bb.r:                                             ; preds = %bb.p
  %.val1356 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.da = getelementptr inbounds nuw i8, ptr %.val1356, i64 %i.e
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 232
  %.0.copyload.i1387 = load i64, ptr %i.db, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1387) #6, !srcloc !21
  %.val1283 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dc = getelementptr inbounds nuw i8, ptr %.val1283, i64 %i.ae
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %.0.copyload.i1388 = load i32, ptr %i.dd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1388) #6, !srcloc !13
  %.not1210 = icmp eq i32 %.0.copyload.i1388, 0
  br i1 %.not1210, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.de = add i32 %.0.copyload.i1370, -8          ; 2 uses
  %i.df = zext i32 %i.de to i64
  %.val1355 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dg = getelementptr inbounds nuw i8, ptr %.val1355, i64 %i.df
  %.0.copyload.i1389 = load i64, ptr %i.dg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1389) #6, !srcloc !21
  %.mask = and i64 %.0.copyload.i1389, -140737488355328
  %.not1211 = icmp eq i64 %.mask, -1688849860263936
  br i1 %.not1211, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dh = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3AgetStringPrim0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x29(ptr noundef nonnull %0, i32 noundef %i.az, i32 noundef %3, i32 noundef 15) #6
  %i.di = zext i32 %i.dh to i64
  %i.dj = or disjoint i64 %i.di, -844424930131968 ; 2 uses
  %.val1282 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dk = getelementptr inbounds nuw i8, ptr %.val1282, i64 %i.i
  %.0.copyload.i1390 = load i32, ptr %i.dk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1390) #6, !srcloc !13
  %i.dl = zext i32 %.0.copyload.i1390 to i64      ; 2 uses
  %i.dm = add nuw nsw i64 %i.dl, 164              ; 2 uses
  %.val1281 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dn = getelementptr inbounds nuw i8, ptr %.val1281, i64 %i.dm
  %.0.copyload.i1391 = load i32, ptr %i.dn, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1391) #6, !srcloc !13
  %.val1280 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.do = getelementptr inbounds nuw i8, ptr %.val1280, i64 %i.dl
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 168
  %.0.copyload.i1392 = load i32, ptr %i.dp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1392) #6, !srcloc !13
  %i.dq = icmp ult i32 %.0.copyload.i1391, %.0.copyload.i1392
  br i1 %i.dq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dr = add i32 %.0.copyload.i1391, 8
  %.val1332 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ds = getelementptr inbounds nuw i8, ptr %.val1332, i64 %i.dm
  store i32 %i.dr, ptr %i.ds, align 1
  %i.dt = zext i32 %.0.copyload.i1391 to i64
  %.val1235 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.du = getelementptr inbounds nuw i8, ptr %.val1235, i64 %i.dt
  store i64 %i.dj, ptr %i.du, align 1
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.dv = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1390, i64 noundef %i.dj) #6
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %bb.v, %bb.u
  %.11184 = phi i32 [ %i.de, %bb.s ], [ %.0.copyload.i1391, %bb.u ], [ %i.dv, %bb.v ]
  %i.dw = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoString_RJS0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.11184) #6 ; 2 uses
  %i.dx = icmp eq i32 %i.dw, -1
  br i1 %i.dx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dy = zext i32 %1 to i64
  %.val1331 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.dz = getelementptr inbounds nuw i8, ptr %.val1331, i64 %i.dy
  store i32 0, ptr %i.dz, align 1
  br label %bb.bx

bb.y:                                             ; preds = %bb.w
  %i.ea = zext i32 %i.dw to i64
  %i.eb = or disjoint i64 %i.ea, -844424930131968 ; 2 uses
  %.val1279 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ec = getelementptr inbounds nuw i8, ptr %.val1279, i64 %i.i
  %.0.copyload.i1393 = load i32, ptr %i.ec, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1393) #6, !srcloc !13
  %i.ed = zext i32 %.0.copyload.i1393 to i64      ; 2 uses
  %i.ee = add nuw nsw i64 %i.ed, 164              ; 2 uses
  %.val1278 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ef = getelementptr inbounds nuw i8, ptr %.val1278, i64 %i.ee
  %.0.copyload.i1394 = load i32, ptr %i.ef, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1394) #6, !srcloc !13
  %.val1277 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.eg = getelementptr inbounds nuw i8, ptr %.val1277, i64 %i.ed
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 168
  %.0.copyload.i1395 = load i32, ptr %i.eh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1395) #6, !srcloc !13
  %i.ei = icmp ult i32 %.0.copyload.i1394, %.0.copyload.i1395
  br i1 %i.ei, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ej = add i32 %.0.copyload.i1394, 8
  %.val1330 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ek = getelementptr inbounds nuw i8, ptr %.val1330, i64 %i.ee
  store i32 %i.ej, ptr %i.ek, align 1
  %i.el = zext i32 %.0.copyload.i1394 to i64
  %.val1234 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.em = getelementptr inbounds nuw i8, ptr %.val1234, i64 %i.el
  store i64 %i.eb, ptr %i.em, align 1
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.en = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1393, i64 noundef %i.eb) #6
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.01186 = phi i32 [ %.0.copyload.i1394, %bb.z ], [ %i.en, %bb.aa ] ; 3 uses
  %.not1212 = icmp eq i64 %.0.copyload.i1387, 0
  br i1 %.not1212, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eo = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3AgetStringPrim0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ASymbolID0x29(ptr noundef nonnull %0, i32 noundef %i.az, i32 noundef %3, i32 noundef 14) #6
  %i.ep = zext i32 %1 to i64                      ; 2 uses
  %.val1329 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.eq = getelementptr inbounds nuw i8, ptr %.val1329, i64 %i.ep
  store i32 1, ptr %i.eq, align 1
  %i.er = zext i32 %i.eo to i64
  %i.es = or disjoint i64 %i.er, -844424930131968
  %.val1233 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.et = getelementptr inbounds nuw i8, ptr %.val1233, i64 %i.ep
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i64 %i.es, ptr %i.eu, align 1
  br label %bb.bx

bb.ad:                                            ; preds = %bb.ab
  %i.ev = icmp ugt i64 %.0.copyload.i1387, 1047529472
  br i1 %i.ev, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.val1328 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ew = getelementptr inbounds nuw i8, ptr %.val1328, i64 %i.e
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 80
  store i32 0, ptr %i.ex, align 1
  %.val1232 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ey = getelementptr inbounds nuw i8, ptr %.val1232, i64 %i.e
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 72
  store i64 141733920769, ptr %i.ez, align 1
  %.val1327 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fa = getelementptr inbounds nuw i8, ptr %.val1327, i64 %i.e
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 56
  store i32 3, ptr %i.fb, align 1
  %.val1326 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fc = getelementptr inbounds nuw i8, ptr %.val1326, i64 %i.bz
  store i32 60566, ptr %i.fc, align 1
  %i.fd = add i32 %i.b, -400
  %i.fe = add i32 %3, 88
  %i.ff = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AraisePlaceholder0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ATwineChar160x20const0x260x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.fe, i32 noundef %i.fd) #6
  %i.fg = zext i32 %1 to i64
  %.val1325 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fh = getelementptr inbounds nuw i8, ptr %.val1325, i64 %i.fg
  store i32 %i.ff, ptr %i.fh, align 1
  br label %bb.bx

bb.af:                                            ; preds = %bb.ad
  %i.fi = trunc nuw nsw i64 %.0.copyload.i1387 to i32 ; 2 uses
  %i.fj = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSArray0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20unsigned0x20int0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.fi, i32 noundef 0) #6 ; 4 uses
  %i.fk = icmp eq i32 %i.fj, -1
  %.val1324 = load ptr, ptr %i.d, align 8, !tbaa !12 ; 2 uses
  br i1 %i.fk, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fl = zext i32 %1 to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %.val1324, i64 %i.fl
  store i32 0, ptr %i.fm, align 1
  br label %bb.bx

bb.ah:                                            ; preds = %bb.af
  %i.fn = uitofp nneg i64 %.0.copyload.i1387 to double ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.val1324, i64 %i.i
  %.0.copyload.i1396 = load i32, ptr %i.fo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1396) #6, !srcloc !13
  %i.fp = zext i32 %.0.copyload.i1396 to i64      ; 2 uses
  %i.fq = add nuw nsw i64 %i.fp, 164              ; 2 uses
  %.val1275 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fr = getelementptr inbounds nuw i8, ptr %.val1275, i64 %i.fq
  %.0.copyload.i1397 = load i32, ptr %i.fr, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1397) #6, !srcloc !13
  %.val1274 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fs = getelementptr inbounds nuw i8, ptr %.val1274, i64 %i.fp
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 168
  %.0.copyload.i1398 = load i32, ptr %i.ft, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1398) #6, !srcloc !13
  %i.fu = icmp ult i32 %.0.copyload.i1397, %.0.copyload.i1398
  br i1 %i.fu, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fv = add i32 %.0.copyload.i1397, 8
  %.val1323 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fw = getelementptr inbounds nuw i8, ptr %.val1323, i64 %i.fq
  store i32 %i.fv, ptr %i.fw, align 1
  %i.fx = zext i32 %.0.copyload.i1397 to i64
  %.val1231 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.fy = getelementptr inbounds nuw i8, ptr %.val1231, i64 %i.fx
  store i64 0, ptr %i.fy, align 1
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.fz = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1396, i64 noundef 0) #6 ; 2 uses
  %i.ga = zext i32 %i.fz to i64
  %.val1368 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gb = getelementptr inbounds nuw i8, ptr %.val1368, i64 %i.ga
  %.0.copyload.i1399 = load double, ptr %i.gb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i1399) #6, !srcloc !36
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.21185 = phi i32 [ %.0.copyload.i1397, %bb.ai ], [ %i.fz, %bb.aj ] ; 2 uses
  %.0 = phi double [ 0.000000e+00, %bb.ai ], [ %.0.copyload.i1399, %bb.aj ] ; 2 uses
  %i.gc = fcmp uge double %.0, %i.fn
  br i1 %i.gc, label %._crit_edge, label %bb.al

._crit_edge:                                      ; preds = %bb.ak
  %.pre = add i32 %i.b, -400
  br label %bb.bc

bb.al:                                            ; preds = %bb.ak
  %i.gd = add i32 %i.b, -252
  %i.ge = add i32 %i.b, -392                      ; 2 uses
  %i.gf = add i32 %i.b, -264
  %i.gg = zext i32 %.01186 to i64
  %i.gh = add i32 %i.b, -400                      ; 5 uses
  %i.gi = add i32 %i.b, -440                      ; 4 uses
  %i.gj = add nuw nsw i64 %i.e, 16                ; 2 uses
  %i.gk = add nuw nsw i64 %i.e, 8                 ; 2 uses
  %i.gl = zext i32 %.21185 to i64                 ; 4 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.ba, %bb.al
  %.01170 = phi i64 [ 0, %bb.al ], [ %.21172, %bb.ba ] ; 2 uses
  %.01169 = phi double [ %.0, %bb.al ], [ %i.kj, %bb.ba ] ; 3 uses
  %i.gm = fcmp uge double %.01169, f0x41F0000000000000
  %i.gn = fcmp ult double %.01169, 0.000000e+00
  %.not1450 = or i1 %i.gm, %i.gn
  %i.go = fptoui double %.01169 to i32
  %i.gp = icmp eq i32 %i.go, 0
  %or.cond = select i1 %.not1450, i1 true, i1 %i.gp
  br i1 %or.cond, label %.critedge, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.val1273 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gq = getelementptr inbounds nuw i8, ptr %.val1273, i64 %i.gg
  %.0.copyload.i1400 = load i32, ptr %i.gq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1400) #6, !srcloc !13
  %i.gr = zext i32 %.0.copyload.i1400 to i64
  %.val1363 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gs = getelementptr inbounds nuw i8, ptr %.val1363, i64 %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %.0.copyload.i1401 = load i32, ptr %i.gt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1401) #6, !srcloc !24
  %i.gu = and i32 %.0.copyload.i1401, 2147483647
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = add i64 %.01170, %i.gv                  ; 2 uses
  %i.gx = lshr i64 %i.gw, 32
  %i.gy = trunc nuw i64 %i.gx to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.am, %bb.an
  %.11171 = phi i64 [ %i.gw, %bb.an ], [ %.01170, %bb.am ] ; 2 uses
  %.11168 = phi i32 [ %i.gy, %bb.an ], [ 0, %bb.am ] ; 2 uses
  %.val1322 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.gz = getelementptr inbounds nuw i8, ptr %.val1322, i64 %i.bz
  store i32 %3, ptr %i.gz, align 1
  %.val1272 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ha = getelementptr inbounds nuw i8, ptr %.val1272, i64 %i.i
  %.0.copyload.i1402 = load i32, ptr %i.ha, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1402) #6, !srcloc !13
  %.val1321 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hb = getelementptr inbounds nuw i8, ptr %.val1321, i64 %i.e
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 196
  store i32 %i.ge, ptr %i.hc, align 1
  %.val1320 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hd = getelementptr inbounds nuw i8, ptr %.val1320, i64 %i.e
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 184
  store i32 %i.gd, ptr %i.he, align 1
  %.val1319 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hf = getelementptr inbounds nuw i8, ptr %.val1319, i64 %i.e
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 52
  store i32 %.0.copyload.i1402, ptr %i.hg, align 1
  %.val1318 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hh = getelementptr inbounds nuw i8, ptr %.val1318, i64 %i.e
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 220
  store i32 0, ptr %i.hi, align 1
  %.val1317 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hj = getelementptr inbounds nuw i8, ptr %.val1317, i64 %i.e
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 216
  store i32 %i.gf, ptr %i.hk, align 1
  %.val1316 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hl = getelementptr inbounds nuw i8, ptr %.val1316, i64 %i.e
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 212
  store i32 %i.ge, ptr %i.hm, align 1
  %.val1230 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hn = getelementptr inbounds nuw i8, ptr %.val1230, i64 %i.e
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 188
  store i64 17179869185, ptr %i.ho, align 1
  %.val1315 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hp = getelementptr inbounds nuw i8, ptr %.val1315, i64 %i.i
  store i32 %i.gh, ptr %i.hp, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSObject0x3A0x3AgetComputedWithReceiver_RJS0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef nonnull %0, i32 noundef %i.gi, i32 noundef %.01177, i32 noundef %3, i32 noundef %.21185, i32 noundef %.01177) #6
  %.val1354 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hq = getelementptr inbounds nuw i8, ptr %.val1354, i64 %i.gj
  %.0.copyload.i1403 = load i64, ptr %i.hq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1403) #6, !srcloc !21
  %.val1229 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hr = getelementptr inbounds nuw i8, ptr %.val1229, i64 %i.ch
  store i64 %.0.copyload.i1403, ptr %i.hr, align 1
  %.val1353 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hs = getelementptr inbounds nuw i8, ptr %.val1353, i64 %i.gk
  %.0.copyload.i1404 = load i64, ptr %i.hs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1404) #6, !srcloc !21
  %.val1228 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ht = getelementptr inbounds nuw i8, ptr %.val1228, i64 %i.cd
  store i64 %.0.copyload.i1404, ptr %i.ht, align 1
  %i.hu = and i64 %.0.copyload.i1404, 4294967295
  %.not1214 = icmp eq i64 %i.hu, 0
  br i1 %.not1214, label %.loopexit1482, label %bb.ao

bb.ao:                                            ; preds = %.critedge
  %.val1352 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hv = getelementptr inbounds nuw i8, ptr %.val1352, i64 %i.ch
  %.0.copyload.i1405 = load i64, ptr %i.hv, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1405) #6, !srcloc !21
  %.val1271 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hw = getelementptr inbounds nuw i8, ptr %.val1271, i64 %i.i
  %.0.copyload.i1406 = load i32, ptr %i.hw, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1406) #6, !srcloc !13
  %i.hx = zext i32 %.0.copyload.i1406 to i64      ; 2 uses
  %i.hy = add nuw nsw i64 %i.hx, 164              ; 2 uses
  %.val1270 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.hz = getelementptr inbounds nuw i8, ptr %.val1270, i64 %i.hy
  %.0.copyload.i1407 = load i32, ptr %i.hz, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1407) #6, !srcloc !13
  %.val1269 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ia = getelementptr inbounds nuw i8, ptr %.val1269, i64 %i.hx
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 168
  %.0.copyload.i1408 = load i32, ptr %i.ib, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1408) #6, !srcloc !13
  %i.ic = icmp ult i32 %.0.copyload.i1407, %.0.copyload.i1408
  br i1 %i.ic, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.id = add i32 %.0.copyload.i1407, 8
  %.val1313 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ie = getelementptr inbounds nuw i8, ptr %.val1313, i64 %i.hy
  store i32 %i.id, ptr %i.ie, align 1
  %i.if = zext i32 %.0.copyload.i1407 to i64
  %.val1227 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ig = getelementptr inbounds nuw i8, ptr %.val1227, i64 %i.if
  store i64 %.0.copyload.i1405, ptr %i.ig, align 1
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.ih = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1406, i64 noundef %.0.copyload.i1405) #6 ; 2 uses
  %i.ii = zext i32 %i.ih to i64
  %.val1351 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ij = getelementptr inbounds nuw i8, ptr %.val1351, i64 %i.ii
end_hunk_1
begin_hunk_2_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AarrayPrototypeJoin0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29:bb.a
  %.val1304 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.li = getelementptr inbounds nuw i8, ptr %.val1304, i64 %i.lh
  store i32 %.4, ptr %i.li, align 1
  %.val1241 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.lj = getelementptr inbounds nuw i8, ptr %.val1241, i64 %i.e
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 20
  store i8 1, ptr %i.lk, align 1
  %.val1303 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ll = getelementptr inbounds nuw i8, ptr %.val1303, i64 %i.e
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  store i32 %3, ptr %i.lm, align 1
  %.val1261 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ln = getelementptr inbounds nuw i8, ptr %.val1261, i64 %i.i
  %.0.copyload.i1423 = load i32, ptr %i.ln, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1423) #6, !srcloc !13
  %i.lo = zext i32 %.0.copyload.i1423 to i64      ; 2 uses
  %i.lp = add nuw nsw i64 %i.lo, 164              ; 2 uses
  %.val1260 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.lq = getelementptr inbounds nuw i8, ptr %.val1260, i64 %i.lp
  %.0.copyload.i1424 = load i32, ptr %i.lq, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1424) #6, !srcloc !13
  %.val1259 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.lr = getelementptr inbounds nuw i8, ptr %.val1259, i64 %i.lo
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 168
  %.0.copyload.i1425 = load i32, ptr %i.ls, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1425) #6, !srcloc !13
  %i.lt = icmp ult i32 %.0.copyload.i1424, %.0.copyload.i1425
  br i1 %i.lt, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.lu = add i32 %.0.copyload.i1424, 8
  %.val1302 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.lv = getelementptr inbounds nuw i8, ptr %.val1302, i64 %i.lp
  store i32 %i.lu, ptr %i.lv, align 1
  %i.lw = zext i32 %.0.copyload.i1424 to i64
  %.val1223 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.lx = getelementptr inbounds nuw i8, ptr %.val1223, i64 %i.lw
  store i64 -844424930131968, ptr %i.lx, align 1
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.ly = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i1423, i64 noundef -844424930131968) #6
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.11179 = phi i32 [ %.0.copyload.i1424, %bb.bj ], [ %i.ly, %bb.bk ] ; 3 uses
  %i.lz = zext i32 %i.fj to i64                   ; 2 uses
  %.val1258 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ma = getelementptr inbounds nuw i8, ptr %.val1258, i64 %i.lz
  %.0.copyload.i1426 = load i32, ptr %i.ma, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1426) #6, !srcloc !13
  %i.mb = zext i32 %.0.copyload.i1426 to i64      ; 3 uses
  %.val1257 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mc = getelementptr inbounds nuw i8, ptr %.val1257, i64 %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 20
  %.0.copyload.i1427 = load i32, ptr %i.md, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1427) #6, !srcloc !13
  %.not1217 = icmp eq i32 %.0.copyload.i1427, 0
  br i1 %.not1217, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %.val1256 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.me = getelementptr inbounds nuw i8, ptr %.val1256, i64 %i.mb
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %.0.copyload.i1428 = load i32, ptr %i.mf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1428) #6, !srcloc !13
  %.not1218 = icmp eq i32 %.0.copyload.i1428, 0
  br i1 %.not1218, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.val1255 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mg = getelementptr inbounds nuw i8, ptr %.val1255, i64 %i.mb
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 28
  %.0.copyload.i1429 = load i32, ptr %i.mh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1429) #6, !srcloc !13
  %i.mi = zext i32 %.0.copyload.i1429 to i64
  %.val1360 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mj = getelementptr inbounds nuw i8, ptr %.val1360, i64 %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %.0.copyload.i1430 = load i32, ptr %i.mk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1430) #6, !srcloc !24
  %i.ml = and i32 %.0.copyload.i1430, -8
  %i.mm = zext i32 %i.ml to i64
  %i.mn = or disjoint i64 %i.mm, -844424930131968
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bl, %bb.bn
  %.21175 = phi i64 [ -844424930131968, %bb.bl ], [ -844424930131968, %bb.bm ], [ %i.mn, %bb.bn ] ; 2 uses
  %i.mo = zext i32 %.11179 to i64                 ; 2 uses
  %.val1222 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mp = getelementptr inbounds nuw i8, ptr %.val1222, i64 %i.mo
  store i64 %.21175, ptr %i.mp, align 1
  %i.mq = add i32 %i.b, -440                      ; 3 uses
  %i.mr = and i64 %.21175, 4294967295
  %.val1254 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ms = getelementptr inbounds nuw i8, ptr %.val1254, i64 %i.mr
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  %.0.copyload.i1431 = load i32, ptr %i.mt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1431) #6, !srcloc !13
  %i.mu = and i32 %.0.copyload.i1431, 2147483647
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringBuilder0x3A0x3AappendStringPrim0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.mq, i32 noundef %.11179, i32 noundef %i.mu)
  %.not1219 = icmp eq i64 %.0.copyload.i1387, 1
  br i1 %.not1219, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.bo
  %i.mv = zext i32 %.01186 to i64
  br label %bb.bp

bb.bp:                                            ; preds = %.preheader, %bb.bv
  %.5 = phi i32 [ %i.oh, %bb.bv ], [ 1, %.preheader ] ; 4 uses
  %.val1253 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.mw = getelementptr inbounds nuw i8, ptr %.val1253, i64 %i.mv
  %.0.copyload.i1432 = load i32, ptr %i.mw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1432) #6, !srcloc !13
  %i.mx = zext i32 %.0.copyload.i1432 to i64
  %.val1252 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.my = getelementptr inbounds nuw i8, ptr %.val1252, i64 %i.mx
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  %.0.copyload.i1433 = load i32, ptr %i.mz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1433) #6, !srcloc !13
  %i.na = and i32 %.0.copyload.i1433, 2147483647
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringBuilder0x3A0x3AappendStringPrim0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.mq, i32 noundef %.01186, i32 noundef %i.na)
  %.val1251 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nb = getelementptr inbounds nuw i8, ptr %.val1251, i64 %i.lz
  %.0.copyload.i1434 = load i32, ptr %i.nb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1434) #6, !srcloc !13
  %i.nc = zext i32 %.0.copyload.i1434 to i64      ; 3 uses
  %.val1250 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nd = getelementptr inbounds nuw i8, ptr %.val1250, i64 %i.nc
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 20
  %.0.copyload.i1435 = load i32, ptr %i.ne, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1435) #6, !srcloc !13
  %i.nf = icmp ult i32 %.5, %.0.copyload.i1435
  br i1 %i.nf, label %bb.bv, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %.val1249 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ng = getelementptr inbounds nuw i8, ptr %.val1249, i64 %i.nc
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 24
  %.0.copyload.i1436 = load i32, ptr %i.nh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1436) #6, !srcloc !13
  %.not1220 = icmp ugt i32 %.0.copyload.i1436, %.5
  br i1 %.not1220, label %bb.br, label %bb.bv

bb.br:                                            ; preds = %bb.bq
  %.val1248 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ni = getelementptr inbounds nuw i8, ptr %.val1248, i64 %i.nc
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 28
  %.0.copyload.i1437 = load i32, ptr %i.nj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1437) #6, !srcloc !13
  %i.nk = sub nuw i32 %.5, %.0.copyload.i1435     ; 4 uses
  %i.nl = icmp ult i32 %i.nk, 4096
  br i1 %i.nl, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.nm = shl nuw nsw i32 %i.nk, 2
  %i.nn = add i32 %.0.copyload.i1437, %i.nm
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.no = add i32 %i.nk, -4096
  %i.np = lshr i32 %i.no, 8
  %i.nq = and i32 %i.np, 16777212
  %i.nr = add nuw nsw i32 %i.nq, 16392
  %i.ns = add i32 %i.nr, %.0.copyload.i1437
  %i.nt = zext i32 %i.ns to i64
  %.val1247 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nu = getelementptr inbounds nuw i8, ptr %.val1247, i64 %i.nt
  %.0.copyload.i1438 = load i32, ptr %i.nu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1438) #6, !srcloc !13
  %i.nv = shl i32 %i.nk, 2
  %i.nw = and i32 %i.nv, 4092
  %i.nx = add i32 %.0.copyload.i1438, %i.nw
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.2.in = phi i32 [ %i.nn, %bb.bs ], [ %i.nx, %bb.bt ]
  %.2 = add i32 %.2.in, 8
  %i.ny = zext i32 %.2 to i64
  %.val1246 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.nz = getelementptr inbounds nuw i8, ptr %.val1246, i64 %i.ny
  %.0.copyload.i1439 = load i32, ptr %i.nz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1439) #6, !srcloc !13
  %i.oa = and i32 %.0.copyload.i1439, -8
  %i.ob = zext i32 %i.oa to i64
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bq, %bb.bp, %bb.bu
  %.21182 = phi i64 [ 0, %bb.bp ], [ 0, %bb.bq ], [ %i.ob, %bb.bu ] ; 2 uses
  %i.oc = or disjoint i64 %.21182, -844424930131968
  %.val1221 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.od = getelementptr inbounds nuw i8, ptr %.val1221, i64 %i.mo
  store i64 %i.oc, ptr %i.od, align 1
  %.val1245 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.oe = getelementptr inbounds nuw i8, ptr %.val1245, i64 %.21182
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 4
  %.0.copyload.i1440 = load i32, ptr %i.of, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1440) #6, !srcloc !13
  %i.og = and i32 %.0.copyload.i1440, 2147483647
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AStringBuilder0x3A0x3AappendStringPrim0x28hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AStringPrimitive0x3E0x2C0x20unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.mq, i32 noundef %.11179, i32 noundef %i.og)
  %i.oh = add nuw i32 %.5, 1                      ; 2 uses
  %5 = icmp ult i32 %i.oh, %i.fi
  br i1 %5, label %bb.bp, label %.loopexit

.loopexit:                                        ; preds = %bb.bv, %bb.bo
  %.val1244 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.oi = getelementptr inbounds nuw i8, ptr %.val1244, i64 %i.lh
  %.0.copyload.i1441 = load i32, ptr %i.oi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1441) #6, !srcloc !13
  %i.oj = zext i32 %.0.copyload.i1441 to i64
  %.val1359 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ok = getelementptr inbounds nuw i8, ptr %.val1359, i64 %i.oj
  %.0.copyload.i1442 = load i32, ptr %i.ok, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1442) #6, !srcloc !24
  %i.ol = zext i32 %.0.copyload.i1442 to i64
  %i.om = zext i32 %1 to i64                      ; 2 uses
  %.val1301 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.on = getelementptr inbounds nuw i8, ptr %.val1301, i64 %i.om
  store i32 1, ptr %i.on, align 1
  %i.oo = or disjoint i64 %i.ol, -844424930131968
  %.val = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.op = getelementptr inbounds nuw i8, ptr %.val, i64 %i.om
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  store i64 %i.oo, ptr %i.oq, align 1
  br label %bb.bx

bb.bw:                                            ; preds = %bb.be
  %i.or = zext i32 %1 to i64
  %.val1300 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.os = getelementptr inbounds nuw i8, ptr %.val1300, i64 %i.or
  store i32 0, ptr %i.os, align 1
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.loopexit, %.loopexit1482, %bb.ag, %bb.ae, %bb.ac, %bb.x, %bb.q, %bb.l
  %.val1243 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ot = getelementptr inbounds nuw i8, ptr %.val1243, i64 %i.bp
  %.0.copyload.i1443 = load i32, ptr %i.ot, align 1
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1443) #6, !srcloc !13
  %i.ou = add i32 %3, 5712
  %i.ov = zext i32 %i.ou to i64                   ; 2 uses
  %.val1242 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ow = getelementptr inbounds nuw i8, ptr %.val1242, i64 %i.ov
  %.0.copyload.i1444 = load i32, ptr %i.ow, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1444) #6, !srcloc !13
  %i.ox = add i32 %.0.copyload.i1444, -4
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.j, %bb.b
  %.sink1481 = phi i64 [ %i.ov, %bb.bx ], [ %i.bu, %bb.j ], [ %i.ai, %bb.b ]
  %.sink1479 = phi i32 [ %i.ox, %bb.bx ], [ 1, %bb.j ], [ 0, %bb.b ]
  %.val1299 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.oy = getelementptr inbounds nuw i8, ptr %.val1299, i64 %.sink1481
  store i32 %.sink1479, ptr %i.oy, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A0x7EGCScope0x280x29(ptr noundef nonnull %0, i32 noundef %i.ab) #6
  store i32 %i.b, ptr %i.a, align 8, !tbaa !20
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AarrayPrototypeIterator0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = add i32 %i.b, -16                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 11 uses
  %i.e = zext i32 %4 to i64
  %.val91 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %.val91, i64 %i.e
  %.0.copyload.i = load i32, ptr %i.f, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #6, !srcloc !13
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AtoObject0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AHermesValue0x3E0x29(ptr noundef %0, i32 noundef %i.c, i32 noundef %3, i32 noundef %.0.copyload.i) #6
  %i.g = zext i32 %i.c to i64                     ; 2 uses
  %.val90 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %.val90, i64 %i.g
  %.0.copyload.i96 = load i32, ptr %i.h, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i96) #6, !srcloc !13
  %.not = icmp eq i32 %.0.copyload.i96, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = zext i32 %1 to i64
  %.val94 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %.val94, i64 %i.i
  store i32 0, ptr %i.j, align 1
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.val95 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %.val95, i64 %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.0.copyload.i97 = load i32, ptr %i.l, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i97) #6, !srcloc !24
  %i.m = zext i32 %.0.copyload.i97 to i64
  %i.n = or disjoint i64 %i.m, -281474976710656   ; 2 uses
  %i.o = zext i32 %3 to i64
  %.val89 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %.val89, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.0.copyload.i98 = load i32, ptr %i.q, align 1  ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i98) #6, !srcloc !13
  %i.r = zext i32 %.0.copyload.i98 to i64         ; 2 uses
  %i.s = add nuw nsw i64 %i.r, 164                ; 2 uses
  %.val88 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %.val88, i64 %i.s
  %.0.copyload.i99 = load i32, ptr %i.t, align 1  ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i99) #6, !srcloc !13
  %.val87 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %.val87, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 168
  %.0.copyload.i100 = load i32, ptr %i.v, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i100) #6, !srcloc !13
  %i.w = icmp ult i32 %.0.copyload.i99, %.0.copyload.i100
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = add i32 %.0.copyload.i99, 8
  %.val93 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %.val93, i64 %i.s
  store i32 %i.x, ptr %i.y, align 1
  %i.z = zext i32 %.0.copyload.i99 to i64
  %.val86 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %.val86, i64 %i.z
  store i64 %i.n, ptr %i.aa, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ab = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AGCScope0x3A0x3A_newChunkAndPHV0x28hermes0x3A0x3Avm0x3A0x3AHermesValue0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i98, i64 noundef %i.n) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %.0.copyload.i99, %bb.d ], [ %i.ab, %bb.e ]
  %i.ac = tail call i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSArrayIterator0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AIterationKind0x29(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.0, i32 noundef %2) #6
  %i.ad = zext i32 %1 to i64                      ; 2 uses
  %.val92 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %.val92, i64 %i.ad
  store i32 1, ptr %i.ae, align 1
  %i.af = zext i32 %i.ac to i64
  %i.ag = or disjoint i64 %i.af, -281474976710656
  %.val = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ad
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.ag, ptr %i.ai, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  store i32 %i.b, ptr %i.a, align 8, !tbaa !20
  ret void
}

declare i32 @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AJSArrayIterator0x3A0x3Acreate0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AHandle0x3Chermes0x3A0x3Avm0x3A0x3AJSObject0x3E0x2C0x20hermes0x3A0x3Avm0x3A0x3AIterationKind0x29(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AarrayPrototypeIndexOf0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = zext i32 %4 to i64                       ; 2 uses
  %.val13 = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %.val13, i64 %i.b
  %.0.copyload.i = load i32, ptr %i.c, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #6, !srcloc !13
  %.val = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.0.copyload.i14 = load i32, ptr %i.e, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i14) #6, !srcloc !13
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AindexOfHelper0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x2C0x20bool0x29(ptr noundef %0, i32 noundef %1, i32 noundef %3, i32 noundef %.0.copyload.i, i32 noundef %.0.copyload.i14, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AarrayPrototypeIncludes0x28void0x2A0x2C0x20hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3ANativeArgs0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 13 uses
  %i.c = add i32 %i.b, -272                       ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 66 uses
  %i.e = zext i32 %i.c to i64                     ; 20 uses
  %.val582 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %.val582, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store i32 %3, ptr %i.g, align 1
  %i.h = zext i32 %3 to i64
  %i.i = add nuw nsw i64 %i.h, 4                  ; 5 uses
  %.val555 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %.val555, i64 %i.i
  %.0.copyload.i = load i32, ptr %i.j, align 1    ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #6, !srcloc !13
  %i.k = add i32 %i.b, -28                        ; 2 uses
  %i.l = add i32 %i.b, -168                       ; 2 uses
  %i.m = zext i32 %i.k to i64
  %.val581 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %.val581, i64 %i.m
  store i32 %i.l, ptr %i.n, align 1
  %.val531 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %.val531, i64 %i.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 236
  store i64 17179869185, ptr %i.p, align 1
  %i.q = add nuw nsw i64 %i.e, 232                ; 3 uses
  %.val580 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %.val580, i64 %i.q
  store i32 %i.k, ptr %i.r, align 1
end_hunk_2
