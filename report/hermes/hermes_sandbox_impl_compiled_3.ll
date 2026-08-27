Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_3?download=true
inline.NumInlined: 12272
inline.NumDeleted: 21
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3AincrementalCollect0x28bool0x29:bb.a
  %i.ne = zext i32 %.0.copyload.i2478 to i64
  %.val2257 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.nf = getelementptr inbounds nuw i8, ptr %.val2257, i64 %i.ne
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 12
  %.0.copyload.i2479 = load i32, ptr %i.ng, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2479) #8, !srcloc !13
  %i.nh = load i32, ptr %i.dp, align 4, !tbaa !24
  %i.ni = icmp ult i32 %.0.copyload.i2479, %i.nh
  br i1 %i.ni, label %bb.az, label %.critedge2182, !prof !25

bb.az:                                            ; preds = %func_types_eq.exit2477.thread
  %i.nj = load ptr, ptr %i.do, align 8, !tbaa !26
  %i.nk = zext i32 %.0.copyload.i2479 to i64
  %i.nl = getelementptr inbounds nuw [24 x i8], ptr %i.nj, i64 %i.nk ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !27 ; 2 uses
  %.not2167 = icmp eq ptr %i.nn, null
  br i1 %.not2167, label %.critedge2182, label %bb.ba, !prof !29

bb.ba:                                            ; preds = %bb.az
  %i.no = load ptr, ptr @w2c_hermes_t3, align 8, !tbaa !30 ; 4 uses
  %i.np = load ptr, ptr %i.nl, align 8, !tbaa !31 ; 4 uses
  %i.nq = icmp eq ptr %i.no, %i.np
  br i1 %i.nq, label %func_types_eq.exit2483.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.nr = icmp ne ptr %i.no, null
  %i.ns = icmp ne ptr %i.np, null
  %or.cond.i2480 = and i1 %i.nr, %i.ns
  br i1 %or.cond.i2480, label %func_types_eq.exit2483, label %.critedge2182, !prof !32

func_types_eq.exit2483:                           ; preds = %bb.bb
  %i.nt = load i128, ptr %i.no, align 1
  %i.nu = load i128, ptr %i.np, align 1
  %i.nv = xor i128 %i.nt, %i.nu
  %i.nw = getelementptr i8, ptr %i.no, i64 16
  %i.nx = getelementptr i8, ptr %i.np, i64 16
  %i.ny = load i128, ptr %i.nw, align 1
  %i.nz = load i128, ptr %i.nx, align 1
  %i.oa = xor i128 %i.ny, %i.nz
  %i.ob = or i128 %i.nv, %i.oa
  %i.oc = icmp ne i128 %i.ob, 0
  %i.od = zext i1 %i.oc to i32
  %.not.i2482 = icmp eq i32 %i.od, 0
  br i1 %.not.i2482, label %func_types_eq.exit2483.thread, label %.critedge2182, !prof !33

.critedge2182:                                    ; preds = %bb.bb, %bb.az, %func_types_eq.exit2477.thread, %func_types_eq.exit2483
  tail call void @wasm_rt_trap(i32 noundef 6) #9
  unreachable

func_types_eq.exit2483.thread:                    ; preds = %bb.ba, %func_types_eq.exit2483
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !34
  tail call void %i.nn(ptr noundef %i.of, i32 noundef %i.di) #8
  %.val2256 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.og = getelementptr inbounds nuw i8, ptr %.val2256, i64 %i.bc
  %.0.copyload.i2484 = load i32, ptr %i.og, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2484) #8, !srcloc !13
  %i.oh = add i32 %.0.copyload.i2484, 560         ; 2 uses
  %.val2255 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.oi = getelementptr inbounds nuw i8, ptr %.val2255, i64 %i.dg
  %.0.copyload.i2485 = load i32, ptr %i.oi, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2485) #8, !srcloc !13
  %i.oj = zext i32 %.0.copyload.i2484 to i64      ; 4 uses
  %i.ok = add nuw nsw i64 %i.oj, 580              ; 2 uses
  %.val2254 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ol = getelementptr inbounds nuw i8, ptr %.val2254, i64 %i.ok
  %.0.copyload.i2486 = load i32, ptr %i.ol, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2486) #8, !srcloc !13
  %.val2253 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.om = getelementptr inbounds nuw i8, ptr %.val2253, i64 %i.oj
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 568
  %.0.copyload.i2487 = load i32, ptr %i.on, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2487) #8, !srcloc !13
  %i.oo = icmp ugt i32 %.0.copyload.i2486, %.0.copyload.i2487
  br i1 %i.oo, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %func_types_eq.exit2483.thread
  tail call void @w2c_hermes_llvh0x3A0x3ABitVector0x3A0x3Aresize0x28unsigned0x20int0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef %i.oh, i32 noundef %.0.copyload.i2486, i32 noundef 0) #8
  %.val2252 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.op = getelementptr inbounds nuw i8, ptr %.val2252, i64 %i.ok
  %.0.copyload.i2488 = load i32, ptr %i.op, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2488) #8, !srcloc !13
  br label %bb.bd

bb.bd:                                            ; preds = %func_types_eq.exit2483.thread, %bb.bc
  %.1 = phi i32 [ %.0.copyload.i2488, %bb.bc ], [ %.0.copyload.i2486, %func_types_eq.exit2483.thread ]
  %i.oq = add i32 %.1, 31                         ; 2 uses
  %i.or = icmp ult i32 %i.oq, 32
  br i1 %i.or, label %.loopexit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.os = lshr i32 %i.oq, 5                       ; 3 uses
  %i.ot = and i32 %i.os, 3                        ; 2 uses
  %.val2251 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ou = getelementptr inbounds nuw i8, ptr %.val2251, i64 %i.oj
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 560
  %.0.copyload.i2489 = load i32, ptr %i.ov, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2489) #8, !srcloc !13
  %.val2250 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ow = getelementptr inbounds nuw i8, ptr %.val2250, i64 %i.oj
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 572
  %.0.copyload.i2490 = load i32, ptr %i.ox, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2490) #8, !srcloc !13
  %i.oy = add nsw i32 %i.os, -4
  %i.oz = icmp ult i32 %i.oy, -3
  br i1 %i.oz, label %bb.bf, label %.loopexit2610

bb.bf:                                            ; preds = %bb.be
  %i.pa = and i32 %i.os, 134217724                ; 2 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %bb.bf
  %indvars.iv2623 = phi i64 [ %indvars.iv.next2624, %bb.bg ], [ 0, %bb.bf ] ; 2 uses
  %i.pb = trunc nuw i64 %indvars.iv2623 to i32
  %i.pc = shl i32 %i.pb, 2                        ; 5 uses
  %i.pd = add i32 %i.pc, %.0.copyload.i2489
  %i.pe = zext i32 %i.pd to i64                   ; 2 uses
  %.val2249 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pf = getelementptr inbounds nuw i8, ptr %.val2249, i64 %i.pe
  %.0.copyload.i2491 = load i32, ptr %i.pf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2491) #8, !srcloc !13
  %i.pg = add i32 %i.pc, %.0.copyload.i2490
  %i.ph = zext i32 %i.pg to i64
  %.val2248 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pi = getelementptr inbounds nuw i8, ptr %.val2248, i64 %i.ph
  %.0.copyload.i2492 = load i32, ptr %i.pi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2492) #8, !srcloc !13
  %i.pj = or i32 %.0.copyload.i2492, %.0.copyload.i2491
  %.val2339 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pk = getelementptr inbounds nuw i8, ptr %.val2339, i64 %i.pe
  store i32 %i.pj, ptr %i.pk, align 1
  %i.pl = or disjoint i32 %i.pc, 4                ; 2 uses
  %i.pm = add i32 %i.pl, %.0.copyload.i2489
  %i.pn = zext i32 %i.pm to i64                   ; 2 uses
  %.val2247 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.po = getelementptr inbounds nuw i8, ptr %.val2247, i64 %i.pn
  %.0.copyload.i2493 = load i32, ptr %i.po, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2493) #8, !srcloc !13
  %i.pp = add i32 %i.pl, %.0.copyload.i2490
  %i.pq = zext i32 %i.pp to i64
  %.val2246 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pr = getelementptr inbounds nuw i8, ptr %.val2246, i64 %i.pq
  %.0.copyload.i2494 = load i32, ptr %i.pr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2494) #8, !srcloc !13
  %i.ps = or i32 %.0.copyload.i2494, %.0.copyload.i2493
  %.val2338 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.pt = getelementptr inbounds nuw i8, ptr %.val2338, i64 %i.pn
  store i32 %i.ps, ptr %i.pt, align 1
  %i.pu = or disjoint i32 %i.pc, 8                ; 2 uses
  %i.pv = add i32 %i.pu, %.0.copyload.i2489
  %i.pw = zext i32 %i.pv to i64                   ; 2 uses
  %.val2245 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.px = getelementptr inbounds nuw i8, ptr %.val2245, i64 %i.pw
  %.0.copyload.i2495 = load i32, ptr %i.px, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2495) #8, !srcloc !13
  %i.py = add i32 %i.pu, %.0.copyload.i2490
  %i.pz = zext i32 %i.py to i64
  %.val2244 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qa = getelementptr inbounds nuw i8, ptr %.val2244, i64 %i.pz
  %.0.copyload.i2496 = load i32, ptr %i.qa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2496) #8, !srcloc !13
  %i.qb = or i32 %.0.copyload.i2496, %.0.copyload.i2495
  %.val2337 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qc = getelementptr inbounds nuw i8, ptr %.val2337, i64 %i.pw
  store i32 %i.qb, ptr %i.qc, align 1
  %i.qd = or disjoint i32 %i.pc, 12               ; 2 uses
  %i.qe = add i32 %i.qd, %.0.copyload.i2489
  %i.qf = zext i32 %i.qe to i64                   ; 2 uses
  %.val2243 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qg = getelementptr inbounds nuw i8, ptr %.val2243, i64 %i.qf
  %.0.copyload.i2497 = load i32, ptr %i.qg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2497) #8, !srcloc !13
  %i.qh = add i32 %i.qd, %.0.copyload.i2490
  %i.qi = zext i32 %i.qh to i64
  %.val2242 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qj = getelementptr inbounds nuw i8, ptr %.val2242, i64 %i.qi
  %.0.copyload.i2498 = load i32, ptr %i.qj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2498) #8, !srcloc !13
  %i.qk = or i32 %.0.copyload.i2498, %.0.copyload.i2497
  %.val2336 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ql = getelementptr inbounds nuw i8, ptr %.val2336, i64 %i.qf
  store i32 %i.qk, ptr %i.ql, align 1
  %indvars.iv.next2624 = add nuw nsw i64 %indvars.iv2623, 4 ; 2 uses
  %indvars2626 = trunc i64 %indvars.iv.next2624 to i32
  %.not2168 = icmp eq i32 %i.pa, %indvars2626
  br i1 %.not2168, label %.loopexit2610.loopexit, label %bb.bg

.loopexit2610.loopexit:                           ; preds = %bb.bg
  %i.qm = zext nneg i32 %i.pa to i64
  br label %.loopexit2610

.loopexit2610:                                    ; preds = %.loopexit2610.loopexit, %bb.be
  %.3 = phi i64 [ 0, %bb.be ], [ %i.qm, %.loopexit2610.loopexit ]
  %.not2169 = icmp eq i32 %i.ot, 0
  br i1 %.not2169, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit2610, %.preheader
  %indvars.iv2628 = phi i64 [ %indvars.iv.next2629, %.preheader ], [ %.3, %.loopexit2610 ] ; 2 uses
  %.02053 = phi i32 [ %i.qw, %.preheader ], [ 0, %.loopexit2610 ]
  %indvars.iv2628.tr = trunc nuw i64 %indvars.iv2628 to i32
  %i.qn = shl nuw nsw i32 %indvars.iv2628.tr, 2   ; 2 uses
  %i.qo = add i32 %i.qn, %.0.copyload.i2489
  %i.qp = zext i32 %i.qo to i64                   ; 2 uses
  %.val2241 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qq = getelementptr inbounds nuw i8, ptr %.val2241, i64 %i.qp
  %.0.copyload.i2499 = load i32, ptr %i.qq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2499) #8, !srcloc !13
  %i.qr = add i32 %i.qn, %.0.copyload.i2490
  %i.qs = zext i32 %i.qr to i64
  %.val2240 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qt = getelementptr inbounds nuw i8, ptr %.val2240, i64 %i.qs
  %.0.copyload.i2500 = load i32, ptr %i.qt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2500) #8, !srcloc !13
  %i.qu = or i32 %.0.copyload.i2500, %.0.copyload.i2499
  %.val2335 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qv = getelementptr inbounds nuw i8, ptr %.val2335, i64 %i.qp
  store i32 %i.qu, ptr %i.qv, align 1
  %indvars.iv.next2629 = add nuw nsw i64 %indvars.iv2628, 1
  %i.qw = add nuw nsw i32 %.02053, 1              ; 2 uses
  %.not2170 = icmp eq i32 %i.qw, %i.ot
  br i1 %.not2170, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %.loopexit2610, %bb.bd
  %i.qx = zext i32 %.0.copyload.i2485 to i64
  %.val2239 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.qy = getelementptr inbounds nuw i8, ptr %.val2239, i64 %i.qx
  %.0.copyload.i2501 = load i32, ptr %i.qy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2501) #8, !srcloc !13
  %i.qz = zext i32 %.0.copyload.i2501 to i64
  %.val2238 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ra = getelementptr inbounds nuw i8, ptr %.val2238, i64 %i.qz
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 28
  %.0.copyload.i2502 = load i32, ptr %i.rb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2502) #8, !srcloc !13
  %i.rc = load i32, ptr %i.dp, align 4, !tbaa !24
  %i.rd = icmp ult i32 %.0.copyload.i2502, %i.rc
  br i1 %i.rd, label %bb.bh, label %.critedge2184, !prof !25

bb.bh:                                            ; preds = %.loopexit
  %i.re = load ptr, ptr %i.do, align 8, !tbaa !26
  %i.rf = zext i32 %.0.copyload.i2502 to i64
  %i.rg = getelementptr inbounds nuw [24 x i8], ptr %i.re, i64 %i.rf ; 3 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !27 ; 2 uses
  %.not2171 = icmp eq ptr %i.ri, null
  br i1 %.not2171, label %.critedge2184, label %bb.bi, !prof !29

bb.bi:                                            ; preds = %bb.bh
  %i.rj = load ptr, ptr %i.rg, align 8, !tbaa !31 ; 4 uses
  %i.rk = icmp eq ptr %i.dx, %i.rj
  br i1 %i.rk, label %func_types_eq.exit2506.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.rl = icmp ne ptr %i.dx, null
  %i.rm = icmp ne ptr %i.rj, null
  %or.cond.i2503 = and i1 %i.rl, %i.rm
  br i1 %or.cond.i2503, label %func_types_eq.exit2506, label %.critedge2184, !prof !32

func_types_eq.exit2506:                           ; preds = %bb.bj
  %i.rn = load i128, ptr %i.dx, align 1
  %i.ro = load i128, ptr %i.rj, align 1
  %i.rp = xor i128 %i.rn, %i.ro
  %i.rq = getelementptr i8, ptr %i.dx, i64 16
  %i.rr = getelementptr i8, ptr %i.rj, i64 16
  %i.rs = load i128, ptr %i.rq, align 1
  %i.rt = load i128, ptr %i.rr, align 1
  %i.ru = xor i128 %i.rs, %i.rt
  %i.rv = or i128 %i.rp, %i.ru
  %i.rw = icmp ne i128 %i.rv, 0
  %i.rx = zext i1 %i.rw to i32
  %.not.i2505 = icmp eq i32 %i.rx, 0
  br i1 %.not.i2505, label %func_types_eq.exit2506.thread, label %.critedge2184, !prof !33

.critedge2184:                                    ; preds = %bb.bj, %bb.bh, %.loopexit, %func_types_eq.exit2506
  tail call void @wasm_rt_trap(i32 noundef 6) #9
  unreachable

func_types_eq.exit2506.thread:                    ; preds = %bb.bi, %func_types_eq.exit2506
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rg, i64 16
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !34
  tail call void %i.ri(ptr noundef %i.rz, i32 noundef %.0.copyload.i2485, i32 noundef %i.oh) #8
  %.val2237 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sa = getelementptr inbounds nuw i8, ptr %.val2237, i64 %i.bc
  %.0.copyload.i2507 = load i32, ptr %i.sa, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2507) #8, !srcloc !13
  %.val2334 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sb = getelementptr inbounds nuw i8, ptr %.val2334, i64 %i.bc
  store i32 0, ptr %i.sb, align 1
  %.not2172 = icmp eq i32 %.0.copyload.i2507, 0
  br i1 %.not2172, label %bb.bp, label %bb.bk

bb.bk:                                            ; preds = %func_types_eq.exit2506.thread
  %i.sc = zext i32 %.0.copyload.i2507 to i64      ; 5 uses
  %.val2236 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sd = getelementptr inbounds nuw i8, ptr %.val2236, i64 %i.sc
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 572
  %.0.copyload.i2508 = load i32, ptr %i.se, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2508) #8, !srcloc !13
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2508) #8
  %.val2235 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sf = getelementptr inbounds nuw i8, ptr %.val2235, i64 %i.sc
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 560
  %.0.copyload.i2509 = load i32, ptr %i.sg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2509) #8, !srcloc !13
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2509) #8
  %.val2234 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sh = getelementptr inbounds nuw i8, ptr %.val2234, i64 %i.sc
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 548
  %.0.copyload.i2510 = load i32, ptr %i.si, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2510) #8, !srcloc !13
  %i.sj = add i32 %.0.copyload.i2507, 560
  %.not2173 = icmp eq i32 %.0.copyload.i2510, %i.sj
  br i1 %.not2173, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2510) #8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.val2233 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sk = getelementptr inbounds nuw i8, ptr %.val2233, i64 %i.sc
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  %.0.copyload.i2511 = load i32, ptr %i.sl, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2511) #8, !srcloc !13
  %.not2174 = icmp eq i32 %.0.copyload.i2511, 0
  br i1 %.not2174, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.val2333 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sm = getelementptr inbounds nuw i8, ptr %.val2333, i64 %i.sc
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 20
  store i32 %.0.copyload.i2511, ptr %i.sn, align 1
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2511) #8
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2507) #8
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %func_types_eq.exit2506.thread
  %.val2375 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.so = getelementptr inbounds nuw i8, ptr %.val2375, i64 %i.f
  store i8 3, ptr %i.so, align 1
  br label %.critedge2190

bb.bq:                                            ; preds = %bb.a
  %.val2232 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sp = getelementptr inbounds nuw i8, ptr %.val2232, i64 %i.e
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 4048
  %.0.copyload.i2512 = load i32, ptr %i.sq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2512) #8, !srcloc !13
  %.not = icmp eq i32 %.0.copyload.i2512, 0
  br i1 %.not, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.sr = zext i32 %i.c to i64                    ; 3 uses
  %.val2374 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.ss = getelementptr inbounds nuw i8, ptr %.val2374, i64 %i.sr
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  store i8 0, ptr %i.st, align 1
  %i.su = add nuw nsw i64 %i.sr, 8                ; 2 uses
  %.val2366 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sv = getelementptr inbounds nuw i8, ptr %.val2366, i64 %i.su
  store i64 7453010364803151731, ptr %i.sv, align 1
  %i.sw = add nuw nsw i64 %i.sr, 19               ; 2 uses
  %.val2373 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sx = getelementptr inbounds nuw i8, ptr %.val2373, i64 %i.sw
  store i8 8, ptr %i.sx, align 1
  %i.sy = add i32 %i.b, -40
  tail call void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AHadesGC0x3A0x3ACollectionStats0x3A0x3AaddCollectionType0x28std0x3A0x3A_0x5F20x3A0x3Abasic_string0x3Cchar0x2C0x20std0x3A0x3A_0x5F20x3A0x3Achar_traits0x3Cchar0x3E0x2C0x20std0x3A0x3A_0x5F20x3A0x3Aallocator0x3Cchar0x3E0x3E0x29(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2512, i32 noundef %i.sy)
  %.val2381 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.sz = getelementptr inbounds nuw i8, ptr %.val2381, i64 %i.sw
  %.0.copyload.i2513 = load i8, ptr %i.sz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2513) #8, !srcloc !20
  %i.ta = icmp sgt i8 %.0.copyload.i2513, -1
  br i1 %i.ta, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %.val2231 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.tb = getelementptr inbounds nuw i8, ptr %.val2231, i64 %i.su
  %.0.copyload.i2514 = load i32, ptr %i.tb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2514) #8, !srcloc !13
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i2514) #8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bq, %bb.bs
  %i.tc = load i32, ptr %i.a, align 8, !tbaa !14  ; 3 uses
  %i.td = add i32 %i.tc, -16                      ; 2 uses
  store i32 %i.td, ptr %i.a, align 8, !tbaa !14
  %i.te = add i32 %1, 592
  %i.tf = zext i32 %i.te to i64                   ; 13 uses
  %i.tg = add nuw nsw i64 %i.tf, 3328             ; 5 uses
  %.val2230 = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.th = getelementptr inbounds nuw i8, ptr %.val2230, i64 %i.tg
  %.0.copyload.i2515 = load i32, ptr %i.th, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2515) #8, !srcloc !13
  %.not2116 = icmp eq i32 %.0.copyload.i2515, 0
  br i1 %.not2116, label %bb.dq, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ti = add i32 %.0.copyload.i2515, -1
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3Areserve0x28unsigned0x20int0x29:bb.a
  %.val263 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %.val263, i64 %i.ar
  store i32 %i.ay, ptr %i.ba, align 1
  %.val255 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %.val255, i64 %i.b
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %.0.copyload.i273 = load i32, ptr %i.bc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i273) #8, !srcloc !13
  %i.bd = add i32 %.0.copyload.i273, 31
  %i.be = lshr i32 %i.bd, 5                       ; 4 uses
  %i.bf = icmp ult i32 %i.be, %i.aw
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bg = shl nuw nsw i32 %i.be, 2
  %i.bh = add i32 %i.bg, %i.ay
  %i.bi = sub nuw i32 %i.aw, %i.be
  %i.bj = shl i32 %i.bi, 2
  %i.bk = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.bh, i32 noundef 0, i32 noundef %i.bj) #8 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bl = and i32 %.0.copyload.i273, 31           ; 2 uses
  %.not254 = icmp eq i32 %i.bl, 0
  br i1 %.not254, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = shl nuw nsw i32 %i.be, 2
  %i.bn = add i32 %i.ay, -4
  %i.bo = add i32 %i.bn, %i.bm
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bp
  %.0.copyload.i274 = load i32, ptr %i.bq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i274) #8, !srcloc !13
  %i.br = shl nsw i32 -1, %i.bl
  %i.bs = xor i32 %i.br, -1
  %i.bt = and i32 %.0.copyload.i274, %i.bs
  %.val262 = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val262, i64 %i.bp
  store i32 %i.bt, ptr %i.bu, align 1
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  tail call void @w2c_hermes_abort(ptr noundef nonnull %0) #8
  tail call void @wasm_rt_trap(i32 noundef 5) #9
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.g, %bb.l
  ret void
}

declare void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3Adetail0x3A0x3AIdentifierHashTable0x3A0x3AgrowAndRehash0x28unsigned0x20int0x29(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @w2c_hermes_dlrealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @w2c_hermes_llvh0x3A0x3Areport_bad_alloc_error0x28char0x20const0x2A0x2C0x20bool0x29(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Avm0x3A0x3AIdentifierTable0x3A0x3AfreeUnmarkedSymbols0x28llvh0x3A0x3ABitVector0x20const0x260x2C0x20hermes0x3A0x3Avm0x3A0x3AGCBase0x3A0x3AIDTracker0x260x29(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %1, 12                           ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 110 uses
  %i.c = zext i32 %2 to i64                       ; 2 uses
  %i.d = add nuw nsw i64 %i.c, 8                  ; 3 uses
  %.val1454 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %.val1454, i64 %i.d
  %.0.copyload.i = load i32, ptr %i.e, align 1    ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #8, !srcloc !13
  %i.f = zext i32 %1 to i64                       ; 7 uses
  %i.g = add nuw nsw i64 %i.f, 20                 ; 5 uses
  %.val1453 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %.val1453, i64 %i.g
  %.0.copyload.i1501 = load i32, ptr %i.h, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1501) #8, !srcloc !13
  %i.i = icmp ugt i32 %.0.copyload.i, %.0.copyload.i1501
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @w2c_hermes_llvh0x3A0x3ABitVector0x3A0x3Aresize0x28unsigned0x20int0x2C0x20bool0x29(ptr noundef nonnull %0, i32 noundef %i.a, i32 noundef %.0.copyload.i, i32 noundef 0) #8
  %.val1452 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %.val1452, i64 %i.d
  %.0.copyload.i1502 = load i32, ptr %i.j, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1502) #8, !srcloc !13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.01296 = phi i32 [ %.0.copyload.i1502, %bb.b ], [ %.0.copyload.i, %bb.a ]
  %i.k = add i32 %.01296, 31                      ; 2 uses
  %i.l = icmp ult i32 %i.k, 32
  br i1 %i.l, label %.loopexit1599, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = lshr i32 %i.k, 5                         ; 3 uses
  %i.n = and i32 %i.m, 3                          ; 2 uses
  %i.o = zext i32 %i.a to i64
  %.val1451 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %.val1451, i64 %i.o
  %.0.copyload.i1503 = load i32, ptr %i.p, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1503) #8, !srcloc !13
  %.val1450 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %.val1450, i64 %i.c
  %.0.copyload.i1504 = load i32, ptr %i.q, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1504) #8, !srcloc !13
  %i.r = add nsw i32 %i.m, -4
  %i.s = icmp ult i32 %i.r, -3
  br i1 %i.s, label %bb.e, label %.loopexit1600

bb.e:                                             ; preds = %bb.d
  %i.t = and i32 %i.m, 134217724                  ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.u = trunc nuw i64 %indvars.iv to i32
  %i.v = shl i32 %i.u, 2                          ; 5 uses
  %i.w = add i32 %i.v, %.0.copyload.i1503
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %.val1449 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %.val1449, i64 %i.x
  %.0.copyload.i1505 = load i32, ptr %i.y, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1505) #8, !srcloc !13
  %i.z = add i32 %i.v, %.0.copyload.i1504
  %i.aa = zext i32 %i.z to i64
  %.val1448 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1448, i64 %i.aa
  %.0.copyload.i1506 = load i32, ptr %i.ab, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1506) #8, !srcloc !13
  %i.ac = or i32 %.0.copyload.i1506, %.0.copyload.i1505
  %.val1475 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1475, i64 %i.x
  store i32 %i.ac, ptr %i.ad, align 1
  %i.ae = or disjoint i32 %i.v, 4                 ; 2 uses
  %i.af = add i32 %i.ae, %.0.copyload.i1503
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %.val1447 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1447, i64 %i.ag
  %.0.copyload.i1507 = load i32, ptr %i.ah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1507) #8, !srcloc !13
  %i.ai = add i32 %i.ae, %.0.copyload.i1504
  %i.aj = zext i32 %i.ai to i64
  %.val1446 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %.val1446, i64 %i.aj
  %.0.copyload.i1508 = load i32, ptr %i.ak, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1508) #8, !srcloc !13
  %i.al = or i32 %.0.copyload.i1508, %.0.copyload.i1507
  %.val1474 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %.val1474, i64 %i.ag
  store i32 %i.al, ptr %i.am, align 1
  %i.an = or disjoint i32 %i.v, 8                 ; 2 uses
  %i.ao = add i32 %i.an, %.0.copyload.i1503
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %.val1445 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %.val1445, i64 %i.ap
  %.0.copyload.i1509 = load i32, ptr %i.aq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1509) #8, !srcloc !13
  %i.ar = add i32 %i.an, %.0.copyload.i1504
  %i.as = zext i32 %i.ar to i64
  %.val1444 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val1444, i64 %i.as
  %.0.copyload.i1510 = load i32, ptr %i.at, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1510) #8, !srcloc !13
  %i.au = or i32 %.0.copyload.i1510, %.0.copyload.i1509
  %.val1473 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.val1473, i64 %i.ap
  store i32 %i.au, ptr %i.av, align 1
  %i.aw = or disjoint i32 %i.v, 12                ; 2 uses
  %i.ax = add i32 %i.aw, %.0.copyload.i1503
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %.val1443 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %.val1443, i64 %i.ay
  %.0.copyload.i1511 = load i32, ptr %i.az, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1511) #8, !srcloc !13
  %i.ba = add i32 %i.aw, %.0.copyload.i1504
  %i.bb = zext i32 %i.ba to i64
  %.val1442 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %.val1442, i64 %i.bb
  %.0.copyload.i1512 = load i32, ptr %i.bc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1512) #8, !srcloc !13
  %i.bd = or i32 %.0.copyload.i1512, %.0.copyload.i1511
  %.val1472 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %.val1472, i64 %i.ay
  store i32 %i.bd, ptr %i.be, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %indvars1632 = trunc i64 %indvars.iv.next to i32
  %.not = icmp eq i32 %i.t, %indvars1632
  br i1 %.not, label %.loopexit1600.loopexit, label %bb.f

.loopexit1600.loopexit:                           ; preds = %bb.f
  %i.bf = zext nneg i32 %i.t to i64
  br label %.loopexit1600

.loopexit1600:                                    ; preds = %.loopexit1600.loopexit, %bb.d
  %.11320 = phi i64 [ 0, %bb.d ], [ %i.bf, %.loopexit1600.loopexit ]
  %.not1352 = icmp eq i32 %i.n, 0
  br i1 %.not1352, label %.loopexit1599, label %.preheader1598

.preheader1598:                                   ; preds = %.loopexit1600, %.preheader1598
  %indvars.iv1634 = phi i64 [ %indvars.iv.next1635, %.preheader1598 ], [ %.11320, %.loopexit1600 ] ; 2 uses
  %.01306 = phi i32 [ %i.bp, %.preheader1598 ], [ 0, %.loopexit1600 ]
  %indvars.iv1634.tr = trunc nuw i64 %indvars.iv1634 to i32
  %i.bg = shl nuw nsw i32 %indvars.iv1634.tr, 2   ; 2 uses
  %i.bh = add i32 %i.bg, %.0.copyload.i1503
  %i.bi = zext i32 %i.bh to i64                   ; 2 uses
  %.val1441 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %.val1441, i64 %i.bi
  %.0.copyload.i1513 = load i32, ptr %i.bj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1513) #8, !srcloc !13
  %i.bk = add i32 %i.bg, %.0.copyload.i1504
  %i.bl = zext i32 %i.bk to i64
  %.val1440 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %.val1440, i64 %i.bl
  %.0.copyload.i1514 = load i32, ptr %i.bm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1514) #8, !srcloc !13
  %i.bn = or i32 %.0.copyload.i1514, %.0.copyload.i1513
  %.val1471 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %.val1471, i64 %i.bi
  store i32 %i.bn, ptr %i.bo, align 1
  %indvars.iv.next1635 = add nuw nsw i64 %indvars.iv1634, 1
  %i.bp = add nuw nsw i32 %.01306, 1              ; 2 uses
  %.not1353 = icmp eq i32 %i.bp, %i.n
  br i1 %.not1353, label %.loopexit1599, label %.preheader1598

.loopexit1599:                                    ; preds = %.preheader1598, %.loopexit1600, %bb.c
  %.val1439 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.bq = getelementptr inbounds nuw i8, ptr %.val1439, i64 %i.g
  %.0.copyload.i1515 = load i32, ptr %i.bq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1515) #8, !srcloc !13
  %i.br = add i32 %.0.copyload.i1515, 31          ; 3 uses
  %i.bs = lshr i32 %i.br, 5                       ; 5 uses
  %i.bt = icmp ult i32 %i.br, 32
  br i1 %i.bt, label %.loopexit1596, label %bb.g

bb.g:                                             ; preds = %.loopexit1599
  %i.bu = icmp ult i32 %i.br, 64
  %i.bv = select i1 %i.bu, i32 1, i32 %i.bs       ; 3 uses
  %i.bw = and i32 %i.bv, 3                        ; 2 uses
  %i.bx = zext i32 %i.a to i64
  %.val1438 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %.val1438, i64 %i.bx
  %.0.copyload.i1516 = load i32, ptr %i.by, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1516) #8, !srcloc !13
  %i.bz = icmp samesign ugt i32 %i.bv, 3
  br i1 %i.bz, label %bb.h, label %.loopexit1597

bb.h:                                             ; preds = %bb.g
  %i.ca = and i32 %i.bv, 134217724                ; 2 uses
  %i.cb = add i32 %.0.copyload.i1516, 4
  %i.cc = add i32 %.0.copyload.i1516, 8
  %i.cd = add i32 %.0.copyload.i1516, 12
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %indvars.iv1637 = phi i64 [ %indvars.iv.next1638, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %indvars.iv1637.tr = trunc nuw i64 %indvars.iv1637 to i32
  %i.ce = shl nuw nsw i32 %indvars.iv1637.tr, 2   ; 4 uses
  %i.cf = add i32 %i.ce, %.0.copyload.i1516
  %i.cg = zext i32 %i.cf to i64                   ; 2 uses
  %.val1437 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %.val1437, i64 %i.cg
  %.0.copyload.i1517 = load i32, ptr %i.ch, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1517) #8, !srcloc !13
  %i.ci = xor i32 %.0.copyload.i1517, -1
  %.val1470 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.cj = getelementptr inbounds nuw i8, ptr %.val1470, i64 %i.cg
  store i32 %i.ci, ptr %i.cj, align 1
  %i.ck = add i32 %i.cb, %i.ce
  %i.cl = zext i32 %i.ck to i64                   ; 2 uses
  %.val1436 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.cm = getelementptr inbounds nuw i8, ptr %.val1436, i64 %i.cl
  %.0.copyload.i1518 = load i32, ptr %i.cm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1518) #8, !srcloc !13
  %i.cn = xor i32 %.0.copyload.i1518, -1
  %.val1469 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.co = getelementptr inbounds nuw i8, ptr %.val1469, i64 %i.cl
  store i32 %i.cn, ptr %i.co, align 1
  %i.cp = add i32 %i.cc, %i.ce
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %.val1435 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %.val1435, i64 %i.cq
  %.0.copyload.i1519 = load i32, ptr %i.cr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1519) #8, !srcloc !13
  %i.cs = xor i32 %.0.copyload.i1519, -1
  %.val1468 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ct = getelementptr inbounds nuw i8, ptr %.val1468, i64 %i.cq
  store i32 %i.cs, ptr %i.ct, align 1
  %i.cu = add i32 %i.cd, %i.ce
  %i.cv = zext i32 %i.cu to i64                   ; 2 uses
  %.val1434 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.cw = getelementptr inbounds nuw i8, ptr %.val1434, i64 %i.cv
  %.0.copyload.i1520 = load i32, ptr %i.cw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1520) #8, !srcloc !13
  %i.cx = xor i32 %.0.copyload.i1520, -1
  %.val1467 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.cy = getelementptr inbounds nuw i8, ptr %.val1467, i64 %i.cv
  store i32 %i.cx, ptr %i.cy, align 1
  %indvars.iv.next1638 = add nuw nsw i64 %indvars.iv1637, 4 ; 2 uses
  %indvars1640 = trunc i64 %indvars.iv.next1638 to i32
  %.not1354 = icmp eq i32 %i.ca, %indvars1640
  br i1 %.not1354, label %.loopexit1597.loopexit, label %bb.i

.loopexit1597.loopexit:                           ; preds = %bb.i
  %i.cz = zext nneg i32 %i.ca to i64
  br label %.loopexit1597

.loopexit1597:                                    ; preds = %.loopexit1597.loopexit, %bb.g
  %.41323 = phi i64 [ 0, %bb.g ], [ %i.cz, %.loopexit1597.loopexit ]
  %.not1355 = icmp eq i32 %i.bw, 0
  br i1 %.not1355, label %.loopexit1596, label %.preheader1595

.preheader1595:                                   ; preds = %.loopexit1597, %.preheader1595
  %indvars.iv1642 = phi i64 [ %indvars.iv.next1643, %.preheader1595 ], [ %.41323, %.loopexit1597 ] ; 2 uses
  %.01309 = phi i32 [ %i.dg, %.preheader1595 ], [ 0, %.loopexit1597 ]
  %indvars.iv1642.tr = trunc nuw i64 %indvars.iv1642 to i32
  %i.da = shl nuw nsw i32 %indvars.iv1642.tr, 2
  %i.db = add i32 %i.da, %.0.copyload.i1516
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %.val1433 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.dd = getelementptr inbounds nuw i8, ptr %.val1433, i64 %i.dc
  %.0.copyload.i1521 = load i32, ptr %i.dd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1521) #8, !srcloc !13
  %i.de = xor i32 %.0.copyload.i1521, -1
  %.val1466 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.df = getelementptr inbounds nuw i8, ptr %.val1466, i64 %i.dc
  store i32 %i.de, ptr %i.df, align 1
  %indvars.iv.next1643 = add nuw nsw i64 %indvars.iv1642, 1
  %i.dg = add nuw nsw i32 %.01309, 1              ; 2 uses
  %.not1356 = icmp eq i32 %i.dg, %i.bw
  br i1 %.not1356, label %.loopexit1596, label %.preheader1595

.loopexit1596:                                    ; preds = %.preheader1595, %.loopexit1597, %.loopexit1599
  %.val1432 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.dh = getelementptr inbounds nuw i8, ptr %.val1432, i64 %i.f
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %.0.copyload.i1522 = load i32, ptr %i.di, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1522) #8, !srcloc !13
  %i.dj = icmp ult i32 %i.bs, %.0.copyload.i1522
  br i1 %i.dj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit1596
  %.val1431 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.dk = getelementptr inbounds nuw i8, ptr %.val1431, i64 %i.f
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  %.0.copyload.i1523 = load i32, ptr %i.dl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1523) #8, !srcloc !13
  %i.dm = shl nuw nsw i32 %i.bs, 2
  %i.dn = add i32 %.0.copyload.i1523, %i.dm
  %i.do = sub nuw i32 %.0.copyload.i1522, %i.bs
  %i.dp = shl i32 %i.do, 2
  %i.dq = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.dn, i32 noundef 0, i32 noundef %i.dp) #8 ; 0 uses
  %.val1430 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.dr = getelementptr inbounds nuw i8, ptr %.val1430, i64 %i.g
  %.0.copyload.i1524 = load i32, ptr %i.dr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1524) #8, !srcloc !13
  br label %bb.k

bb.k:                                             ; preds = %.loopexit1596, %bb.j
  %.11297 = phi i32 [ %.0.copyload.i1524, %bb.j ], [ %.0.copyload.i1515, %.loopexit1596 ]
  %i.ds = and i32 %.11297, 31                     ; 2 uses
  %.not1357 = icmp eq i32 %i.ds, 0
  br i1 %.not1357, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dt = zext i32 %i.a to i64
  %.val1429 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.du = getelementptr inbounds nuw i8, ptr %.val1429, i64 %i.dt
  %.0.copyload.i1525 = load i32, ptr %i.du, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1525) #8, !srcloc !13
  %i.dv = shl nuw nsw i32 %i.bs, 2
  %i.dw = add nsw i32 %i.dv, -4
  %i.dx = add i32 %i.dw, %.0.copyload.i1525
  %i.dy = zext i32 %i.dx to i64                   ; 2 uses
  %.val1428 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.dz = getelementptr inbounds nuw i8, ptr %.val1428, i64 %i.dy
  %.0.copyload.i1526 = load i32, ptr %i.dz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1526) #8, !srcloc !13
  %i.ea = shl nsw i32 -1, %i.ds
  %i.eb = xor i32 %i.ea, -1
  %i.ec = and i32 %.0.copyload.i1526, %i.eb
  %.val1465 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ed = getelementptr inbounds nuw i8, ptr %.val1465, i64 %i.dy
  store i32 %i.ec, ptr %i.ed, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ee = zext i32 %3 to i64                      ; 5 uses
  %.val1427 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ef = getelementptr inbounds nuw i8, ptr %.val1427, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  %.0.copyload.i1527 = load i32, ptr %i.eg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1527) #8, !srcloc !13
  %.not1358 = icmp eq i32 %.0.copyload.i1527, 0
  %.val1426 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.eh = getelementptr inbounds nuw i8, ptr %.val1426, i64 %i.g
  %.0.copyload.i1528 = load i32, ptr %i.eh, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1528) #8, !srcloc !13
  %.not1359 = icmp eq i32 %.0.copyload.i1528, 0
  br i1 %.not1359, label %..loopexit_crit_edge, label %bb.n

..loopexit_crit_edge:                             ; preds = %bb.m
  %.pre = zext i32 %i.a to i64
  br label %.loopexit

bb.n:                                             ; preds = %bb.m
  %.val1425 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ei = getelementptr inbounds nuw i8, ptr %.val1425, i64 %i.d
  %.0.copyload.i1529 = load i32, ptr %i.ei, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1529) #8, !srcloc !13
  %i.ej = sub i32 0, %.0.copyload.i1528
  %i.ek = and i32 %i.ej, 31
  %i.el = lshr i32 -1, %i.ek
  %i.em = add i32 %.0.copyload.i1528, -1
  %i.en = lshr i32 %i.em, 5
  %i.eo = zext i32 %i.a to i64                    ; 8 uses
  %.val1424 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ep = getelementptr inbounds nuw i8, ptr %.val1424, i64 %i.eo
  %.0.copyload.i1530 = load i32, ptr %i.ep, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1530) #8, !srcloc !13
  %i.eq = zext nneg i32 %i.en to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %indvars.iv1645 = phi i64 [ %indvars.iv.next1646, %bb.p ], [ 0, %bb.n ] ; 4 uses
  %indvars.iv1645.tr = trunc nuw i64 %indvars.iv1645 to i32
  %i.er = shl nuw nsw i32 %indvars.iv1645.tr, 2
  %i.es = add i32 %i.er, %.0.copyload.i1530
  %i.et = zext i32 %i.es to i64
  %.val1423 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.eu = getelementptr inbounds nuw i8, ptr %.val1423, i64 %i.et
  %.0.copyload.i1531 = load i32, ptr %i.eu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1531) #8, !srcloc !13
  %.not1385 = icmp eq i64 %indvars.iv1645, %i.eq  ; 2 uses
  %i.ev = select i1 %.not1385, i32 %i.el, i32 -1
  %i.ew = and i32 %.0.copyload.i1531, %i.ev       ; 2 uses
  %.not1360 = icmp eq i32 %i.ew, 0
  br i1 %.not1360, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next1646 = add nuw nsw i64 %indvars.iv1645, 1
  br i1 %.not1385, label %.loopexit, label %bb.o

bb.q:                                             ; preds = %bb.o
  %i.ex = trunc nuw nsw i64 %indvars.iv1645 to i32
  %i.ey = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ew, i1 true)
  %i.ez = shl i32 %i.ex, 5
  %i.fa = or disjoint i32 %i.ey, %i.ez            ; 3 uses
  %i.fb = icmp ne i32 %i.fa, -1
  %.not1361 = icmp ult i32 %i.fa, %.0.copyload.i1529
  %or.cond = select i1 %i.fb, i1 %.not1361, i1 false
  br i1 %or.cond, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.fc = add i32 %1, 24                          ; 3 uses
  %i.fd = add nuw nsw i64 %i.ee, 76               ; 2 uses
  %i.fe = add nuw nsw i64 %i.ee, 80               ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.fg = zext i32 %i.fc to i64                   ; 5 uses
  %i.fh = add nuw nsw i64 %i.fg, 16               ; 2 uses
  %i.fi = add nuw nsw i64 %i.f, 48                ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.bg, %bb.r
  %.71326 = phi i32 [ %i.fa, %bb.r ], [ %i.qe, %bb.bg ] ; 7 uses
  %.01303 = phi i32 [ %.0.copyload.i1528, %bb.r ], [ %.9, %bb.bg ] ; 2 uses
  %.val1422 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.fj = getelementptr inbounds nuw i8, ptr %.val1422, i64 %i.f
  %.0.copyload.i1532 = load i32, ptr %i.fj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1532) #8, !srcloc !13
  %i.fk = mul i32 %.71326, 12                     ; 4 uses
  %i.fl = add i32 %.0.copyload.i1532, %i.fk
  %i.fm = zext i32 %i.fl to i64                   ; 2 uses
  %.val1421 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.fn = getelementptr inbounds nuw i8, ptr %.val1421, i64 %i.fm
  %.0.copyload.i1533 = load i32, ptr %i.fn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1533) #8, !srcloc !13
  %.not1362 = icmp eq i32 %.0.copyload.i1533, 0
  br i1 %.not1362, label %bb.bb, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val1420 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.fo = getelementptr inbounds nuw i8, ptr %.val1420, i64 %i.fm
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %.0.copyload.i1534 = load i32, ptr %i.fp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1534) #8, !srcloc !13
  %i.fq = and i32 %.0.copyload.i1534, -4
  %.not1363 = icmp eq i32 %i.fq, -8
  br i1 %.not1363, label %bb.u, label %bb.bb

bb.u:                                             ; preds = %bb.t
  br i1 %.not1358, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val1419 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.fr = getelementptr inbounds nuw i8, ptr %.val1419, i64 %i.ee
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 84
  %.0.copyload.i1535 = load i32, ptr %i.fs, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1535) #8, !srcloc !13
  %.not1364 = icmp eq i32 %.0.copyload.i1535, 0
  br i1 %.not1364, label %.loopexit1591, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val1418 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.ft = getelementptr inbounds nuw i8, ptr %.val1418, i64 %i.ee
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 72
  %.0.copyload.i1536 = load i32, ptr %i.fu, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1536) #8, !srcloc !13
  %i.fv = add i32 %.0.copyload.i1535, -1          ; 2 uses
  %i.fw = mul i32 %.71326, 37
  %i.fx = and i32 %i.fv, %i.fw                    ; 2 uses
  %i.fy = shl i32 %i.fx, 3
  %i.fz = add i32 %.0.copyload.i1536, %i.fy
  %i.ga = zext i32 %i.fz to i64                   ; 2 uses
  %.val1417 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.gb = getelementptr inbounds nuw i8, ptr %.val1417, i64 %i.ga
  %.0.copyload.i1537 = load i32, ptr %i.gb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1537) #8, !srcloc !13
  %.not1365 = icmp eq i32 %.71326, %.0.copyload.i1537
  br i1 %.not1365, label %.loopexit1592, label %.preheader1590

.preheader1590:                                   ; preds = %bb.w, %bb.x
  %.01328 = phi i32 [ %.0.copyload.i1538, %bb.x ], [ %.0.copyload.i1537, %bb.w ]
  %.21308 = phi i32 [ %i.ge, %bb.x ], [ 1, %bb.w ] ; 2 uses
  %.01300 = phi i32 [ %i.gf, %bb.x ], [ %i.fx, %bb.w ]
  %i.gc = icmp eq i32 %.01328, -1
  br i1 %i.gc, label %.loopexit1591, label %bb.x

bb.x:                                             ; preds = %.preheader1590
  %i.gd = add i32 %.01300, %.21308
  %i.ge = add i32 %.21308, 1
  %i.gf = and i32 %i.gd, %i.fv                    ; 2 uses
  %i.gg = shl i32 %i.gf, 3
  %i.gh = add i32 %i.gg, %.0.copyload.i1536
  %i.gi = zext i32 %i.gh to i64                   ; 2 uses
  %.val1416 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.gj = getelementptr inbounds nuw i8, ptr %.val1416, i64 %i.gi
  %.0.copyload.i1538 = load i32, ptr %i.gj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1538) #8, !srcloc !13
  %.not1366 = icmp eq i32 %.0.copyload.i1538, %.71326
  br i1 %.not1366, label %.loopexit1592, label %.preheader1590

.loopexit1592:                                    ; preds = %bb.x, %bb.w
  %.pre-phi = phi i64 [ %i.ga, %bb.w ], [ %i.gi, %bb.x ]
  %.val1464 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.gk = getelementptr inbounds nuw i8, ptr %.val1464, i64 %.pre-phi
  store i32 -2, ptr %i.gk, align 1
  %.val1415 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.gl = getelementptr inbounds nuw i8, ptr %.val1415, i64 %i.fd
  %.0.copyload.i1539 = load i32, ptr %i.gl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1539) #8, !srcloc !13
  %i.gm = add i32 %.0.copyload.i1539, -1
  %.val1463 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.gn = getelementptr inbounds nuw i8, ptr %.val1463, i64 %i.fd
  store i32 %i.gm, ptr %i.gn, align 1
  %.val1414 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.go = getelementptr inbounds nuw i8, ptr %.val1414, i64 %i.fe
  %.0.copyload.i1540 = load i32, ptr %i.go, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1540) #8, !srcloc !13
  %i.gp = add i32 %.0.copyload.i1540, 1
  %.val1462 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.gq = getelementptr inbounds nuw i8, ptr %.val1462, i64 %i.fe
  store i32 %i.gp, ptr %i.gq, align 1
  br label %.loopexit1591

.loopexit1591:                                    ; preds = %.preheader1590, %bb.v, %.loopexit1592
  %.val1413 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.gr = getelementptr inbounds nuw i8, ptr %.val1413, i64 %i.f
  %.0.copyload.i1541 = load i32, ptr %i.gr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1541) #8, !srcloc !13
  %i.gs = add i32 %.0.copyload.i1541, %i.fk
  %i.gt = zext i32 %i.gs to i64
  %.val1412 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.gu = getelementptr inbounds nuw i8, ptr %.val1412, i64 %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %.0.copyload.i1542 = load i32, ptr %i.gv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1542) #8, !srcloc !13
  br label %bb.y

bb.y:                                             ; preds = %.loopexit1591, %bb.u
  %.11329 = phi i32 [ %.0.copyload.i1541, %.loopexit1591 ], [ %.0.copyload.i1532, %bb.u ]
  %.11310 = phi i32 [ %.0.copyload.i1542, %.loopexit1591 ], [ %.0.copyload.i1534, %bb.u ] ; 2 uses
  %i.gw = and i32 %.11310, 2
  %.not1367 = icmp eq i32 %i.gw, 0
  %i.gx = add i32 %.11329, %i.fk
  %i.gy = zext i32 %i.gx to i64                   ; 2 uses
  br i1 %.not1367, label %bb.z, label %._crit_edge

bb.z:                                             ; preds = %bb.y
  %.val1411 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.gz = getelementptr inbounds nuw i8, ptr %.val1411, i64 %i.gy
  %.0.copyload.i1543 = load i32, ptr %i.gz, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1543) #8, !srcloc !13
  %i.ha = zext i32 %.0.copyload.i1543 to i64      ; 8 uses
  %i.hb = add nuw nsw i64 %i.ha, 4                ; 3 uses
  %.val1410 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.hc = getelementptr inbounds nuw i8, ptr %.val1410, i64 %i.hb
  %.0.copyload.i1544 = load i32, ptr %i.hc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1544) #8, !srcloc !13
  %i.hd = and i32 %.0.copyload.i1544, 2147483647
  %.val1461 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.he = getelementptr inbounds nuw i8, ptr %.val1461, i64 %i.hb
  store i32 %i.hd, ptr %i.he, align 1
  %i.hf = load i32, ptr %i.ff, align 8, !tbaa !14 ; 4 uses
  %i.hg = add i32 %i.hf, -32                      ; 3 uses
  store i32 %i.hg, ptr %i.ff, align 8, !tbaa !14
  %.val1409 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.hh = getelementptr inbounds nuw i8, ptr %.val1409, i64 %i.hb
  %.0.copyload.i1545 = load i32, ptr %i.hh, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1545) #8, !srcloc !13
  %.val1408 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.hi = getelementptr inbounds nuw i8, ptr %.val1408, i64 %i.ha
  %.0.copyload.i1546 = load i32, ptr %i.hi, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1546) #8, !srcloc !13
  %i.hj = and i32 %.0.copyload.i1546, 16777216
  %.not1368 = icmp eq i32 %i.hj, 0
  %i.hk = icmp ugt i32 %.0.copyload.i1546, 150994943 ; 2 uses
  br i1 %.not1368, label %bb.aa, label %bb.an

bb.aa:                                            ; preds = %bb.z
  br i1 %i.hk, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.val1407 = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.hl = getelementptr inbounds nuw i8, ptr %.val1407, i64 %i.ha
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  %.0.copyload.i1547 = load i32, ptr %i.hm, align 1 ; 2 uses
end_hunk_1
