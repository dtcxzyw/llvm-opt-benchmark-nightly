Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/treegen?download=true
inline.NumInlined: 1239
inline.NumDeleted: 311
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN7treegen14make_pine_treeER8MMVManipN4core8vector3dIsEEPK14NodeDefManageri:.noexc.i
  %i.jr = urem i16 %.lhs.trunc.i307.2.2610, 21
  %.not244.2.2612 = icmp samesign ugt i16 %i.jr, 18
  br i1 %.not244.2.2612, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge.2.1
  %i.js = getelementptr inbounds nuw i8, ptr %i.gf, i64 331
  store i8 1, ptr %i.js, align 1, !tbaa !20
  %i.jt = getelementptr inbounds nuw i8, ptr %i.gf, i64 338
  store i8 2, ptr %i.jt, align 1, !tbaa !20
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %._crit_edge.2.1
  %i.ju = mul i32 %i.jo, 1103515245
  %i.jv = add i32 %i.ju, 12345                    ; 2 uses
  %i.jw = sdiv i32 %i.jv, 65536
  %i.jx = trunc nsw i32 %i.jw to i16
  %.lhs.trunc.i307.2.1.2 = and i16 %i.jx, 32767
  %i.jy = urem i16 %.lhs.trunc.i307.2.1.2, 21
  %.not244.2.1.2 = icmp samesign ugt i16 %i.jy, 18
  br i1 %.not244.2.1.2, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jz = getelementptr inbounds nuw i8, ptr %i.gf, i64 332
  store i8 1, ptr %i.jz, align 1, !tbaa !20
  %i.ka = getelementptr inbounds nuw i8, ptr %i.gf, i64 339
  store i8 2, ptr %i.ka, align 1, !tbaa !20
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.kb = mul i32 %i.jv, 1103515245
  %i.kc = add i32 %i.kb, 12345                    ; 2 uses
  %i.kd = sdiv i32 %i.kc, 65536
  %i.ke = trunc nsw i32 %i.kd to i16
  %.lhs.trunc.i307.2.2.2 = and i16 %i.ke, 32767
  %i.kf = urem i16 %.lhs.trunc.i307.2.2.2, 21
  %.not244.2.2.2 = icmp samesign ugt i16 %i.kf, 18
  br i1 %.not244.2.2.2, label %._crit_edge531.2, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kg = getelementptr inbounds nuw i8, ptr %i.gf, i64 333
  store i8 1, ptr %i.kg, align 1, !tbaa !20
  %i.kh = getelementptr inbounds nuw i8, ptr %i.gf, i64 340
  store i8 2, ptr %i.kh, align 1, !tbaa !20
  br label %._crit_edge531.2

._crit_edge531.2:                                 ; preds = %bb.bd, %bb.be
  %i.ki = getelementptr inbounds nuw i8, ptr %i.gf, i64 262
  store i8 1, ptr %i.ki, align 1, !tbaa !20
  %i.kj = getelementptr inbounds nuw i8, ptr %i.gf, i64 269
  store i8 1, ptr %i.kj, align 1, !tbaa !20
  %i.kk = getelementptr inbounds nuw i8, ptr %i.gf, i64 276
  store i8 2, ptr %i.kk, align 1, !tbaa !20
  br label %bb.bs

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv649 = phi i32 [ -3, %.lr.ph.preheader ], [ %indvars.iv.next650, %._crit_edge ]
  %indvars.iv635 = phi i64 [ 42, %.lr.ph.preheader ], [ %indvars.iv.next636, %._crit_edge ] ; 8 uses
  %indvars.iv629 = phi i64 [ 35, %.lr.ph.preheader ], [ %indvars.iv.next630, %._crit_edge ] ; 8 uses
  %.sroa.0488.1527 = phi i32 [ %i.en, %.lr.ph.preheader ], [ %i.mm, %._crit_edge ]
  %i.kl = mul i32 %.sroa.0488.1527, 1103515245
  %i.km = add i32 %i.kl, 12345                    ; 2 uses
  %i.kn = sdiv i32 %i.km, 65536
  %i.ko = trunc nsw i32 %i.kn to i16
  %.lhs.trunc.i307 = and i16 %i.ko, 32767
  %i.kp = urem i16 %.lhs.trunc.i307, 21
  %.not244 = icmp samesign ugt i16 %i.kp, 16
  br i1 %.not244, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph
  %i.kq = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv629
  store i8 1, ptr %i.kq, align 1, !tbaa !20
  %i.kr = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv635
  store i8 2, ptr %i.kr, align 1, !tbaa !20
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.lr.ph
  %i.ks = mul i32 %i.km, 1103515245
  %i.kt = add i32 %i.ks, 12345                    ; 2 uses
  %i.ku = sdiv i32 %i.kt, 65536
  %i.kv = trunc nsw i32 %i.ku to i16
  %.lhs.trunc.i307.1643 = and i16 %i.kv, 32767
  %i.kw = urem i16 %.lhs.trunc.i307.1643, 21
  %.not244.1645 = icmp samesign ugt i16 %i.kw, 16
  br i1 %.not244.1645, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.kx = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv629
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 1
  store i8 1, ptr %i.ky, align 1, !tbaa !20
  %i.kz = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv635
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 1
  store i8 2, ptr %i.la, align 1, !tbaa !20
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.lb = mul i32 %i.kt, 1103515245
  %i.lc = add i32 %i.lb, 12345                    ; 2 uses
  %i.ld = sdiv i32 %i.lc, 65536
  %i.le = trunc nsw i32 %i.ld to i16
  %.lhs.trunc.i307.2646 = and i16 %i.le, 32767
  %i.lf = urem i16 %.lhs.trunc.i307.2646, 21
  %.not244.2648 = icmp samesign ugt i16 %i.lf, 16
  br i1 %.not244.2648, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv629
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 2
  store i8 1, ptr %i.lh, align 1, !tbaa !20
  %i.li = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv635
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 2
  store i8 2, ptr %i.lj, align 1, !tbaa !20
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.lk = mul i32 %i.lc, 1103515245
  %i.ll = add i32 %i.lk, 12345                    ; 2 uses
  %i.lm = sdiv i32 %i.ll, 65536
  %i.ln = trunc nsw i32 %i.lm to i16
  %.lhs.trunc.i307.3 = and i16 %i.ln, 32767
  %i.lo = urem i16 %.lhs.trunc.i307.3, 21
  %.not244.3 = icmp samesign ugt i16 %i.lo, 16
  br i1 %.not244.3, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.lp = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv629
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 3
  store i8 1, ptr %i.lq, align 1, !tbaa !20
  %i.lr = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv635
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 3
  store i8 2, ptr %i.ls, align 1, !tbaa !20
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.lt = mul i32 %i.ll, 1103515245
  %i.lu = add i32 %i.lt, 12345                    ; 2 uses
  %i.lv = sdiv i32 %i.lu, 65536
  %i.lw = trunc nsw i32 %i.lv to i16
  %.lhs.trunc.i307.4 = and i16 %i.lw, 32767
  %i.lx = urem i16 %.lhs.trunc.i307.4, 21
  %.not244.4 = icmp samesign ugt i16 %i.lx, 16
  br i1 %.not244.4, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ly = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv629
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  store i8 1, ptr %i.lz, align 1, !tbaa !20
  %i.ma = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv635
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  store i8 2, ptr %i.mb, align 1, !tbaa !20
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.mc = mul i32 %i.lu, 1103515245
  %i.md = add i32 %i.mc, 12345                    ; 2 uses
  %i.me = sdiv i32 %i.md, 65536
  %i.mf = trunc nsw i32 %i.me to i16
  %.lhs.trunc.i307.5 = and i16 %i.mf, 32767
  %i.mg = urem i16 %.lhs.trunc.i307.5, 21
  %.not244.5 = icmp samesign ugt i16 %i.mg, 16
  br i1 %.not244.5, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.mh = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv629
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 5
  store i8 1, ptr %i.mi, align 1, !tbaa !20
  %i.mj = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv635
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 5
  store i8 2, ptr %i.mk, align 1, !tbaa !20
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.ml = mul i32 %i.md, 1103515245
  %i.mm = add i32 %i.ml, 12345                    ; 3 uses
  %i.mn = sdiv i32 %i.mm, 65536
  %i.mo = trunc nsw i32 %i.mn to i16
  %.lhs.trunc.i307.6 = and i16 %i.mo, 32767
  %i.mp = urem i16 %.lhs.trunc.i307.6, 21
  %.not244.6 = icmp samesign ugt i16 %i.mp, 16
  br i1 %.not244.6, label %._crit_edge, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.mq = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv629
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 6
  store i8 1, ptr %i.mr, align 1, !tbaa !20
  %i.ms = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv635
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 6
  store i8 2, ptr %i.mt, align 1, !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.br, %bb.bq
  %indvars.iv.next650 = add nsw i32 %indvars.iv649, 1 ; 2 uses
  %indvars.iv.next630 = add nuw nsw i64 %indvars.iv629, 70
  %indvars.iv.next636 = add nuw nsw i64 %indvars.iv635, 70
  %exitcond652 = icmp eq i32 %indvars.iv.next650, 4
  br i1 %exitcond652, label %.lr.ph.1, label %.lr.ph, !llvm.loop !204

.lr.ph571.preheader:                              ; preds = %._crit_edge543
  %spec.select.le = trunc nsw i32 %spec.select510 to i16 ; 2 uses
  %.sroa.14.0.extract.shift = lshr i48 %1, 32
  %.sroa.14.0.extract.trunc = trunc nuw i48 %.sroa.14.0.extract.shift to i16
  %i.mu = add nsw i32 %spec.select510, 2          ; 2 uses
  %.0184564 = add i16 %spec.select.le, 1          ; 2 uses
  %9 = sext i16 %.0184564 to i32
  %.not565 = icmp slt i32 %i.mu, %9
  br i1 %.not565, label %.preheader516, label %.lr.ph571

bb.bs:                                            ; preds = %._crit_edge531.2, %._crit_edge543
  %.0192546 = phi i32 [ 0, %._crit_edge531.2 ], [ %i.nu, %._crit_edge543 ]
  %.0193545 = phi i32 [ 65530, %._crit_edge531.2 ], [ %spec.select510, %._crit_edge543 ]
  %.sroa.0488.3544 = phi i32 [ %i.kc, %._crit_edge531.2 ], [ %i.nc, %._crit_edge543 ]
  %i.mv = mul i32 %.sroa.0488.3544, 1103515245
  %i.mw = add i32 %i.mv, 12345                    ; 2 uses
  %i.mx = mul i32 %i.mw, 1103515245
  %i.my = add i32 %i.mx, 12345                    ; 2 uses
  %i.mz = sdiv i32 %i.my, 65536
  %.zext.i318 = and i32 %i.mz, 1                  ; 2 uses
  %i.na = or disjoint i32 %.zext.i318, -6
  %i.nb = mul i32 %i.my, 1103515245
  %i.nc = add i32 %i.nb, 12345                    ; 3 uses
  %i.nd = sdiv i32 %i.nc, 65536
  %i.ne = trunc nsw i32 %i.nd to i16
  %.lhs.trunc.i319 = and i16 %i.ne, 32767
  %i.nf = urem i16 %.lhs.trunc.i319, 6            ; 2 uses
  %.zext.i320 = zext nneg i16 %i.nf to i32
  %i.ng = add nsw i16 %i.nf, -3
  %sext = shl i32 %.0193545, 16
  %10 = ashr exact i32 %sext, 16
  %spec.select510 = call i32 @llvm.smax.i32(i32 %i.na, i32 %10) ; 3 uses
  %i.nh = add nsw i32 %.zext.i320, -2             ; 2 uses
  %i.ni = sext i16 %i.ng to i32                   ; 3 uses
  %.not226539 = icmp slt i32 %i.nh, %i.ni
  br i1 %.not226539, label %._crit_edge543, label %.lr.ph542

.lr.ph542:                                        ; preds = %bb.bs
  %i.nj = sdiv i32 %i.mw, 65536
  %i.nk = trunc nsw i32 %i.nj to i16
  %.lhs.trunc.i315 = and i16 %i.nk, 32767
  %i.nl = urem i16 %.lhs.trunc.i315, 6
  %.zext.i316 = zext nneg i16 %i.nl to i32        ; 2 uses
  %i.nm = mul nsw i32 %i.ni, 70                   ; 2 uses
  %i.nn = add nsw i32 %i.nm, 217
  %i.no = mul nuw nsw i32 %.zext.i318, 7          ; 2 uses
  %i.np = add nuw nsw i32 %i.nn, %i.no
  %i.nq = add nuw nsw i32 %i.np, %.zext.i316
  %i.nr = add nsw i32 %i.nm, 210
  %i.ns = add nuw nsw i32 %i.nr, %i.no
  %i.nt = add nuw nsw i32 %i.ns, %.zext.i316
  br label %bb.bt

._crit_edge543:                                   ; preds = %bb.bx, %bb.bs
  %i.nu = add nuw nsw i32 %.0192546, 1            ; 2 uses
  %exitcond668.not = icmp eq i32 %i.nu, 20
  br i1 %exitcond668.not, label %.lr.ph571.preheader, label %bb.bs, !llvm.loop !205

bb.bt:                                            ; preds = %.lr.ph542, %bb.bx
  %indvars.iv665 = phi i32 [ %i.ni, %.lr.ph542 ], [ %indvars.iv.next666, %bb.bx ] ; 2 uses
  %indvars.iv657 = phi i32 [ %i.nt, %.lr.ph542 ], [ %indvars.iv.next658, %bb.bx ] ; 2 uses
  %indvars.iv653 = phi i32 [ %i.nq, %.lr.ph542 ], [ %indvars.iv.next654, %bb.bx ] ; 2 uses
  %i.nv = zext i32 %indvars.iv653 to i64          ; 2 uses
  %i.nw = zext i32 %indvars.iv657 to i64          ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.nw
  store i8 1, ptr %i.nx, align 1, !tbaa !20
  %i.ny = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.nv ; 2 uses
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !20
  %i.oa = icmp eq i8 %i.nz, 0
  br i1 %i.oa, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i8 2, ptr %i.ny, align 1, !tbaa !20
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.ob = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.nw
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 1
  store i8 1, ptr %i.oc, align 1, !tbaa !20
  %i.od = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.nv
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 1 ; 2 uses
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !20
  %i.og = icmp eq i8 %i.of, 0
  br i1 %i.og, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i8 2, ptr %i.oe, align 1, !tbaa !20
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %indvars.iv.next666 = add nsw i32 %indvars.iv665, 1
  %.not226.not = icmp sgt i32 %i.nh, %indvars.iv665
  %indvars.iv.next654 = add nsw i32 %indvars.iv653, 70
  %indvars.iv.next658 = add nsw i32 %indvars.iv657, 70
  br i1 %.not226.not, label %bb.bt, label %._crit_edge543, !llvm.loop !206

.preheader516:                                    ; preds = %._crit_edge561, %.lr.ph571.preheader
  %i.oh = add i16 %.sroa.0.0.extract.trunc.i, -3
  %i.oi = sext i16 %i.oh to i32
  br label %.preheader

.lr.ph571:                                        ; preds = %.lr.ph571.preheader, %._crit_edge561
  %.0184569 = phi i16 [ %.0184, %._crit_edge561 ], [ %.0184564, %.lr.ph571.preheader ] ; 3 uses
  %.0184.in568 = phi i16 [ %.0184569, %._crit_edge561 ], [ %spec.select.le, %.lr.ph571.preheader ]
  %.1187567 = phi i16 [ %i.ot, %._crit_edge561 ], [ 2, %.lr.ph571.preheader ] ; 3 uses
  %.sroa.0488.4566 = phi i32 [ %.sroa.0488.5.lcssa, %._crit_edge561 ], [ %i.nc, %.lr.ph571.preheader ] ; 2 uses
  %i.oj = zext i16 %.1187567 to i32               ; 4 uses
  %i.ok = sub i16 0, %.1187567                    ; 3 uses
  %i.ol = sext i16 %i.ok to i32                   ; 2 uses
  %.not219556 = icmp sgt i32 %i.ol, %i.oj
  br i1 %.not219556, label %._crit_edge561, label %.lr.ph553.preheader

.lr.ph553.preheader:                              ; preds = %.lr.ph571
  %i.om = sext i16 %.0184569 to i32
  %i.on = add nsw i32 %i.om, 30
  %i.oo = add nsw i32 %i.ol, 45                   ; 2 uses
  %i.op = add i16 %.0184.in568, 2
  %i.oq = sext i16 %i.op to i32
  %i.or = add nsw i32 %i.oq, 30
  %i.os = sub nsw i32 19, %i.oj
  br label %.lr.ph553

._crit_edge561:                                   ; preds = %._crit_edge554, %.lr.ph571
  %.sroa.0488.5.lcssa = phi i32 [ %.sroa.0488.4566, %.lr.ph571 ], [ %i.pg, %._crit_edge554 ]
  %i.ot = add i16 %.1187567, -1
  %.0184 = add i16 %.0184569, 1                   ; 2 uses
  %i.ou = sext i16 %.0184 to i32
  %.not = icmp slt i32 %i.mu, %i.ou
  br i1 %.not, label %.preheader516, label %.lr.ph571, !llvm.loop !207

.lr.ph553:                                        ; preds = %.lr.ph553.preheader, %._crit_edge554
  %.0183558 = phi i16 [ %i.pd, %._crit_edge554 ], [ %i.ok, %.lr.ph553.preheader ] ; 2 uses
  %.sroa.0488.5557 = phi i32 [ %i.pg, %._crit_edge554 ], [ %.sroa.0488.4566, %.lr.ph553.preheader ]
  %i.ov = sext i16 %.0183558 to i32
  %i.ow = mul nsw i32 %i.ov, 10                   ; 2 uses
  %i.ox = add nsw i32 %i.on, %i.ow
  %i.oy = mul nsw i32 %i.ox, 7
  %i.oz = add nsw i32 %i.oo, %i.oy
  %i.pa = add nsw i32 %i.or, %i.ow
  %i.pb = mul nsw i32 %i.pa, 7
  %i.pc = add nsw i32 %i.oo, %i.pb
  br label %bb.by

._crit_edge554:                                   ; preds = %bb.ca
  %i.pd = add i16 %.0183558, 1                    ; 2 uses
  %i.pe = sext i16 %i.pd to i32
  %.not219 = icmp sgt i32 %i.pe, %i.oj
  br i1 %.not219, label %._crit_edge561, label %.lr.ph553, !llvm.loop !208

bb.by:                                            ; preds = %.lr.ph553, %bb.ca
  %.0178551 = phi i16 [ %i.ok, %.lr.ph553 ], [ %i.pq, %bb.ca ]
  %.0180550 = phi i32 [ %i.pc, %.lr.ph553 ], [ %i.pp, %bb.ca ] ; 2 uses
  %.0182549 = phi i32 [ %i.oz, %.lr.ph553 ], [ %i.po, %bb.ca ] ; 2 uses
  %.sroa.0488.6548 = phi i32 [ %.sroa.0488.5557, %.lr.ph553 ], [ %i.pg, %bb.ca ]
  %i.pf = mul i32 %.sroa.0488.6548, 1103515245
  %i.pg = add i32 %i.pf, 12345                    ; 4 uses
  %i.ph = sdiv i32 %i.pg, 65536
  %i.pi = trunc nsw i32 %i.ph to i16
  %.lhs.trunc.i333 = and i16 %i.pi, 32767
  %i.pj = urem i16 %.lhs.trunc.i333, 21
  %.zext.i334 = zext nneg i16 %i.pj to i32
  %.not224 = icmp slt i32 %i.os, %.zext.i334
  br i1 %.not224, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.pk = zext i32 %.0182549 to i64
  %i.pl = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.pk
  store i8 1, ptr %i.pl, align 1, !tbaa !20
  %i.pm = zext i32 %.0180550 to i64
  %i.pn = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.pm
  store i8 2, ptr %i.pn, align 1, !tbaa !20
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.po = add i32 %.0182549, 1
  %i.pp = add i32 %.0180550, 1
  %i.pq = add i16 %.0178551, 1                    ; 2 uses
  %i.pr = sext i16 %i.pq to i32
  %.not220 = icmp sgt i32 %i.pr, %i.oj
  br i1 %.not220, label %._crit_edge554, label %bb.by, !llvm.loop !209

.preheader:                                       ; preds = %.preheader516, %bb.cb
  %indvars.iv690 = phi i32 [ -3, %.preheader516 ], [ %indvars.iv.next691, %bb.cb ] ; 2 uses
  %indvars.iv680 = phi i64 [ 7, %.preheader516 ], [ %indvars.iv.next681, %bb.cb ] ; 2 uses
  %indvars.iv669 = phi i64 [ 0, %.preheader516 ], [ %indvars.iv.next670, %bb.cb ] ; 2 uses
  %i.ps = trunc nsw i32 %indvars.iv690 to i16
  %i.pt = add i16 %i.ps, %.sroa.14.0.extract.trunc ; 3 uses
  %i.pu = sext i16 %i.pt to i32
  br label %bb.cc

_ZN6BufferIhED2Ev.exit:                           ; preds = %bb.cb
  call void @_ZdaPv(ptr noundef nonnull %i.gf) #23
  ret void

bb.cb:                                            ; preds = %bb.cd
  %indvars.iv.next691 = add nsw i32 %indvars.iv690, 1 ; 2 uses
  %indvars.iv.next670 = add nuw nsw i64 %indvars.iv669, 70
  %indvars.iv.next681 = add nuw nsw i64 %indvars.iv680, 70
  %exitcond695 = icmp eq i32 %indvars.iv.next691, 4
  br i1 %exitcond695, label %_ZN6BufferIhED2Ev.exit, label %.preheader, !llvm.loop !210

bb.cc:                                            ; preds = %.preheader, %bb.cd
  %indvars.iv684 = phi i32 [ -6, %.preheader ], [ %indvars.iv.next685, %bb.cd ] ; 2 uses
  %indvars.iv682 = phi i64 [ %indvars.iv680, %.preheader ], [ %indvars.iv.next683, %bb.cd ] ; 2 uses
  %indvars.iv671 = phi i64 [ %indvars.iv669, %.preheader ], [ %indvars.iv.next672, %bb.cd ] ; 2 uses
  %i.pv = trunc nsw i32 %indvars.iv684 to i16
  %i.pw = add i16 %.sroa.8475.0518, %i.pv         ; 2 uses
  %i.px = load i16, ptr %i.ex, align 4, !tbaa !84
  %i.py = sext i16 %i.px to i32
  %i.pz = sub nsw i32 %i.pu, %i.py
  %i.qa = load i32, ptr %i.fa, align 8, !tbaa !86
  %i.qb = mul nsw i32 %i.pz, %i.qa
  %i.qc = load i32, ptr %i.ez, align 4, !tbaa !87
  %i.qd = sext i16 %i.pw to i32
  %i.qe = load i16, ptr %i.et, align 2, !tbaa !92
  %i.qf = sext i16 %i.qe to i32
  %i.qg = add i32 %i.qb, %i.qd
  %i.qh = sub i32 %i.qg, %i.qf
  %i.qi = mul i32 %i.qh, %i.qc
  %i.qj = load i16, ptr %i.er, align 8, !tbaa !83
  %i.qk = sext i16 %i.qj to i32
  %i.ql = sub nsw i32 %i.oi, %i.qk
  %i.qm = add nsw i32 %i.ql, %i.qi
  %i.qn = insertelement <4 x i16> poison, i16 %i.pw, i64 1
  br label %bb.ce

bb.cd:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread
  %indvars.iv.next685 = add nsw i32 %indvars.iv684, 1 ; 2 uses
  %indvars.iv.next672 = add nuw nsw i64 %indvars.iv671, 7
  %indvars.iv.next683 = add nuw nsw i64 %indvars.iv682, 7
  %exitcond689 = icmp eq i32 %indvars.iv.next685, 4
  br i1 %exitcond689, label %bb.cb, label %bb.cc, !llvm.loop !211

bb.ce:                                            ; preds = %bb.cc, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread
  %indvars.iv673 = phi i64 [ %indvars.iv671, %bb.cc ], [ %indvars.iv.next674, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread ] ; 2 uses
  %.0152574 = phi i16 [ -3, %bb.cc ], [ %i.rq, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread ] ; 2 uses
  %.0174573 = phi i32 [ %i.qm, %bb.cc ], [ %i.rp, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread ] ; 2 uses
  %i.qo = add i16 %.0152574, %.sroa.0.0.extract.trunc.i
  %i.qp = load <2 x i16>, ptr %i.er, align 8
  %i.qq = load <2 x i16>, ptr %i.es, align 2
  %i.qr = shufflevector <2 x i16> %i.qq, <2 x i16> %i.qp, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.qs = insertelement <4 x i16> %i.qn, i16 %i.qo, i64 0
  %i.qt = shufflevector <4 x i16> %i.qs, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.qu = icmp slt <4 x i16> %i.qr, %i.qt
  %i.qv = icmp sgt <4 x i16> %i.qr, %i.qt
  %i.qw = shufflevector <4 x i1> %i.qu, <4 x i1> %i.qv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qx = freeze <4 x i1> %i.qw
  %i.qy = bitcast <4 x i1> %i.qx to i4
  %.not749 = icmp eq i4 %i.qy, 0
  br i1 %.not749, label %bb.cf, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread

bb.cf:                                            ; preds = %bb.ce
  %i.qz = load i16, ptr %i.ex, align 4, !tbaa !84
  %.not9.i358 = icmp slt i16 %i.pt, %i.qz
  br i1 %.not9.i358, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359: ; preds = %bb.cf
  %i.ra = load i16, ptr %i.ey, align 2, !tbaa !85
  %.not509 = icmp sgt i16 %i.pt, %i.ra
  br i1 %.not509, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread, label %bb.cg

bb.cg:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359
  %i.rb = load ptr, ptr %i.fc, align 8, !tbaa !90
  %i.rc = zext i32 %.0174573 to i64
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %i.rc ; 4 uses
  %i.re = load i16, ptr %i.rd, align 4, !tbaa !93 ; 2 uses
  %i.rf = and i16 %i.re, -2
  %switch = icmp eq i16 %i.rf, 126
  br i1 %switch, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.rg = icmp eq i16 %i.re, %spec.store.select
  br i1 %i.rg, label %bb.ci, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread

bb.ci:                                            ; preds = %bb.ch
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rd, i64 2
  %i.ri = load i8, ptr %i.rh, align 2, !tbaa !213
  %i.rj = icmp eq i8 %i.ri, 0
  br i1 %i.rj, label %_ZNK7MapNodeeqERKS_.exit, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread

_ZNK7MapNodeeqERKS_.exit:                         ; preds = %bb.ci
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rd, i64 3
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !214
  %i.rm = icmp eq i8 %i.rl, 0
  br i1 %i.rm, label %bb.cj, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread

bb.cj:                                            ; preds = %bb.cg, %_ZNK7MapNodeeqERKS_.exit
  %i.rn = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv673
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !20
  switch i8 %i.ro, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread [
    i8 1, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread.sink.split
    i8 2, label %bb.ck
  ]

bb.ck:                                            ; preds = %bb.cj
  br label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread.sink.split

end_hunk_0
