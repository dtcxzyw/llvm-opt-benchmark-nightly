Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/treegen?download=true
inline.NumInlined: 1239
inline.NumDeleted: 311
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN7treegen14make_pine_treeER8MMVManipN4core8vector3dIsEEPK14NodeDefManageri:.noexc.i
  %i.jn = sdiv i32 %i.jm, 65536
  %i.jo = trunc nsw i32 %i.jn to i16
  %.lhs.trunc.i307.2.2610 = and i16 %i.jo, 32767
  %i.jp = urem i16 %.lhs.trunc.i307.2.2610, 21
  %.not244.2.2612 = icmp samesign ugt i16 %i.jp, 18
  br i1 %.not244.2.2612, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge.2.1
  %i.jq = getelementptr inbounds nuw i8, ptr %i.gd, i64 331
  store i8 1, ptr %i.jq, align 1, !tbaa !20
  %i.jr = getelementptr inbounds nuw i8, ptr %i.gd, i64 338
  store i8 2, ptr %i.jr, align 1, !tbaa !20
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %._crit_edge.2.1
  %i.js = mul i32 %i.jm, 1103515245
  %i.jt = add i32 %i.js, 12345                    ; 2 uses
  %i.ju = sdiv i32 %i.jt, 65536
  %i.jv = trunc nsw i32 %i.ju to i16
  %.lhs.trunc.i307.2.1.2 = and i16 %i.jv, 32767
  %i.jw = urem i16 %.lhs.trunc.i307.2.1.2, 21
  %.not244.2.1.2 = icmp samesign ugt i16 %i.jw, 18
  br i1 %.not244.2.1.2, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jx = getelementptr inbounds nuw i8, ptr %i.gd, i64 332
  store i8 1, ptr %i.jx, align 1, !tbaa !20
  %i.jy = getelementptr inbounds nuw i8, ptr %i.gd, i64 339
  store i8 2, ptr %i.jy, align 1, !tbaa !20
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.jz = mul i32 %i.jt, 1103515245
  %i.ka = add i32 %i.jz, 12345                    ; 2 uses
  %i.kb = sdiv i32 %i.ka, 65536
  %i.kc = trunc nsw i32 %i.kb to i16
  %.lhs.trunc.i307.2.2.2 = and i16 %i.kc, 32767
  %i.kd = urem i16 %.lhs.trunc.i307.2.2.2, 21
  %.not244.2.2.2 = icmp samesign ugt i16 %i.kd, 18
  br i1 %.not244.2.2.2, label %._crit_edge531.2, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ke = getelementptr inbounds nuw i8, ptr %i.gd, i64 333
  store i8 1, ptr %i.ke, align 1, !tbaa !20
  %i.kf = getelementptr inbounds nuw i8, ptr %i.gd, i64 340
  store i8 2, ptr %i.kf, align 1, !tbaa !20
  br label %._crit_edge531.2

._crit_edge531.2:                                 ; preds = %bb.bd, %bb.be
  %i.kg = getelementptr inbounds nuw i8, ptr %i.gd, i64 262
  store i8 1, ptr %i.kg, align 1, !tbaa !20
  %i.kh = getelementptr inbounds nuw i8, ptr %i.gd, i64 269
  store i8 1, ptr %i.kh, align 1, !tbaa !20
  %i.ki = getelementptr inbounds nuw i8, ptr %i.gd, i64 276
  store i8 2, ptr %i.ki, align 1, !tbaa !20
  br label %bb.bs

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv649 = phi i32 [ -3, %.lr.ph.preheader ], [ %indvars.iv.next650, %._crit_edge ]
  %indvars.iv635 = phi i64 [ 42, %.lr.ph.preheader ], [ %indvars.iv.next636, %._crit_edge ] ; 8 uses
  %indvars.iv629 = phi i64 [ 35, %.lr.ph.preheader ], [ %indvars.iv.next630, %._crit_edge ] ; 8 uses
  %.sroa.0488.1527 = phi i32 [ %i.en, %.lr.ph.preheader ], [ %i.mk, %._crit_edge ]
  %i.kj = mul i32 %.sroa.0488.1527, 1103515245
  %i.kk = add i32 %i.kj, 12345                    ; 2 uses
  %i.kl = sdiv i32 %i.kk, 65536
  %i.km = trunc nsw i32 %i.kl to i16
  %.lhs.trunc.i307 = and i16 %i.km, 32767
  %i.kn = urem i16 %.lhs.trunc.i307, 21
  %.not244 = icmp samesign ugt i16 %i.kn, 16
  br i1 %.not244, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph
  %i.ko = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv629
  store i8 1, ptr %i.ko, align 1, !tbaa !20
  %i.kp = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv635
  store i8 2, ptr %i.kp, align 1, !tbaa !20
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.lr.ph
  %i.kq = mul i32 %i.kk, 1103515245
  %i.kr = add i32 %i.kq, 12345                    ; 2 uses
  %i.ks = sdiv i32 %i.kr, 65536
  %i.kt = trunc nsw i32 %i.ks to i16
  %.lhs.trunc.i307.1643 = and i16 %i.kt, 32767
  %i.ku = urem i16 %.lhs.trunc.i307.1643, 21
  %.not244.1645 = icmp samesign ugt i16 %i.ku, 16
  br i1 %.not244.1645, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.kv = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv629
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 1
  store i8 1, ptr %i.kw, align 1, !tbaa !20
  %i.kx = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv635
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 1
  store i8 2, ptr %i.ky, align 1, !tbaa !20
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.kz = mul i32 %i.kr, 1103515245
  %i.la = add i32 %i.kz, 12345                    ; 2 uses
  %i.lb = sdiv i32 %i.la, 65536
  %i.lc = trunc nsw i32 %i.lb to i16
  %.lhs.trunc.i307.2646 = and i16 %i.lc, 32767
  %i.ld = urem i16 %.lhs.trunc.i307.2646, 21
  %.not244.2648 = icmp samesign ugt i16 %i.ld, 16
  br i1 %.not244.2648, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.le = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv629
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 2
  store i8 1, ptr %i.lf, align 1, !tbaa !20
  %i.lg = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv635
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 2
  store i8 2, ptr %i.lh, align 1, !tbaa !20
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.li = mul i32 %i.la, 1103515245
  %i.lj = add i32 %i.li, 12345                    ; 2 uses
  %i.lk = sdiv i32 %i.lj, 65536
  %i.ll = trunc nsw i32 %i.lk to i16
  %.lhs.trunc.i307.3 = and i16 %i.ll, 32767
  %i.lm = urem i16 %.lhs.trunc.i307.3, 21
  %.not244.3 = icmp samesign ugt i16 %i.lm, 16
  br i1 %.not244.3, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ln = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv629
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 3
  store i8 1, ptr %i.lo, align 1, !tbaa !20
  %i.lp = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv635
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 3
  store i8 2, ptr %i.lq, align 1, !tbaa !20
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.lr = mul i32 %i.lj, 1103515245
  %i.ls = add i32 %i.lr, 12345                    ; 2 uses
  %i.lt = sdiv i32 %i.ls, 65536
  %i.lu = trunc nsw i32 %i.lt to i16
  %.lhs.trunc.i307.4 = and i16 %i.lu, 32767
  %i.lv = urem i16 %.lhs.trunc.i307.4, 21
  %.not244.4 = icmp samesign ugt i16 %i.lv, 16
  br i1 %.not244.4, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.lw = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv629
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 4
  store i8 1, ptr %i.lx, align 1, !tbaa !20
  %i.ly = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv635
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  store i8 2, ptr %i.lz, align 1, !tbaa !20
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.ma = mul i32 %i.ls, 1103515245
  %i.mb = add i32 %i.ma, 12345                    ; 2 uses
  %i.mc = sdiv i32 %i.mb, 65536
  %i.md = trunc nsw i32 %i.mc to i16
  %.lhs.trunc.i307.5 = and i16 %i.md, 32767
  %i.me = urem i16 %.lhs.trunc.i307.5, 21
  %.not244.5 = icmp samesign ugt i16 %i.me, 16
  br i1 %.not244.5, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.mf = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv629
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 5
  store i8 1, ptr %i.mg, align 1, !tbaa !20
  %i.mh = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv635
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 5
  store i8 2, ptr %i.mi, align 1, !tbaa !20
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.mj = mul i32 %i.mb, 1103515245
  %i.mk = add i32 %i.mj, 12345                    ; 3 uses
  %i.ml = sdiv i32 %i.mk, 65536
  %i.mm = trunc nsw i32 %i.ml to i16
  %.lhs.trunc.i307.6 = and i16 %i.mm, 32767
  %i.mn = urem i16 %.lhs.trunc.i307.6, 21
  %.not244.6 = icmp samesign ugt i16 %i.mn, 16
  br i1 %.not244.6, label %._crit_edge, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.mo = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv629
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 6
  store i8 1, ptr %i.mp, align 1, !tbaa !20
  %i.mq = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv635
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 6
  store i8 2, ptr %i.mr, align 1, !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.br, %bb.bq
  %indvars.iv.next650 = add nsw i32 %indvars.iv649, 1 ; 2 uses
  %indvars.iv.next630 = add nuw nsw i64 %indvars.iv629, 70
  %indvars.iv.next636 = add nuw nsw i64 %indvars.iv635, 70
  %exitcond652 = icmp eq i32 %indvars.iv.next650, 4
  br i1 %exitcond652, label %.lr.ph.1, label %.lr.ph, !llvm.loop !204

.lr.ph571.preheader:                              ; preds = %._crit_edge543
  %spec.select.le = trunc nsw i32 %spec.select510 to i16
  %.sroa.14.0.extract.shift = lshr i48 %1, 32
  %.sroa.14.0.extract.trunc = trunc nuw i48 %.sroa.14.0.extract.shift to i16
  %i.ms = add nuw nsw i32 %spec.select510, 2
  %.0184564 = add nuw nsw i16 %spec.select.le, 1
  br label %.lr.ph571

bb.bs:                                            ; preds = %._crit_edge531.2, %._crit_edge543
  %.0192546 = phi i32 [ 0, %._crit_edge531.2 ], [ %i.ns, %._crit_edge543 ]
  %.0193545 = phi i32 [ -6, %._crit_edge531.2 ], [ %spec.select510, %._crit_edge543 ]
  %.sroa.0488.3544 = phi i32 [ %i.ka, %._crit_edge531.2 ], [ %i.na, %._crit_edge543 ]
  %i.mt = mul i32 %.sroa.0488.3544, 1103515245
  %i.mu = add i32 %i.mt, 12345                    ; 2 uses
  %i.mv = mul i32 %i.mu, 1103515245
  %i.mw = add i32 %i.mv, 12345                    ; 2 uses
  %i.mx = sdiv i32 %i.mw, 65536
  %.zext.i318 = and i32 %i.mx, 1                  ; 2 uses
  %i.my = or disjoint i32 %.zext.i318, -6
  %i.mz = mul i32 %i.mw, 1103515245
  %i.na = add i32 %i.mz, 12345                    ; 3 uses
  %i.nb = sdiv i32 %i.na, 65536
  %i.nc = trunc nsw i32 %i.nb to i16
  %.lhs.trunc.i319 = and i16 %i.nc, 32767
  %i.nd = urem i16 %.lhs.trunc.i319, 6            ; 2 uses
  %.zext.i320 = zext nneg i16 %i.nd to i32
  %i.ne = add nsw i16 %i.nd, -3
  %spec.select510 = call i32 @llvm.smax.i32(i32 %i.my, i32 %.0193545) ; 3 uses
  %i.nf = add nsw i32 %.zext.i320, -2             ; 2 uses
  %i.ng = sext i16 %i.ne to i32                   ; 3 uses
  %.not226539 = icmp slt i32 %i.nf, %i.ng
  br i1 %.not226539, label %._crit_edge543, label %.lr.ph542

.lr.ph542:                                        ; preds = %bb.bs
  %i.nh = sdiv i32 %i.mu, 65536
  %i.ni = trunc nsw i32 %i.nh to i16
  %.lhs.trunc.i315 = and i16 %i.ni, 32767
  %i.nj = urem i16 %.lhs.trunc.i315, 6
  %.zext.i316 = zext nneg i16 %i.nj to i32        ; 2 uses
  %i.nk = mul nsw i32 %i.ng, 70                   ; 2 uses
  %i.nl = add nsw i32 %i.nk, 217
  %i.nm = mul nuw nsw i32 %.zext.i318, 7          ; 2 uses
  %i.nn = add nuw nsw i32 %i.nl, %i.nm
  %i.no = add nuw nsw i32 %i.nn, %.zext.i316
  %i.np = add nsw i32 %i.nk, 210
  %i.nq = add nuw nsw i32 %i.np, %i.nm
  %i.nr = add nuw nsw i32 %i.nq, %.zext.i316
  br label %bb.bt

._crit_edge543:                                   ; preds = %bb.bx, %bb.bs
  %i.ns = add nuw nsw i32 %.0192546, 1            ; 2 uses
  %exitcond668.not = icmp eq i32 %i.ns, 20
  br i1 %exitcond668.not, label %.lr.ph571.preheader, label %bb.bs, !llvm.loop !205

bb.bt:                                            ; preds = %.lr.ph542, %bb.bx
  %indvars.iv665 = phi i32 [ %i.ng, %.lr.ph542 ], [ %indvars.iv.next666, %bb.bx ] ; 2 uses
  %indvars.iv657 = phi i32 [ %i.nr, %.lr.ph542 ], [ %indvars.iv.next658, %bb.bx ] ; 2 uses
  %indvars.iv653 = phi i32 [ %i.no, %.lr.ph542 ], [ %indvars.iv.next654, %bb.bx ] ; 2 uses
  %i.nt = zext i32 %indvars.iv653 to i64          ; 2 uses
  %i.nu = zext i32 %indvars.iv657 to i64          ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.nu
  store i8 1, ptr %i.nv, align 1, !tbaa !20
  %i.nw = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.nt ; 2 uses
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !20
  %i.ny = icmp eq i8 %i.nx, 0
  br i1 %i.ny, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i8 2, ptr %i.nw, align 1, !tbaa !20
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.nz = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.nu
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 1
  store i8 1, ptr %i.oa, align 1, !tbaa !20
  %i.ob = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.nt
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 1 ; 2 uses
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !20
  %i.oe = icmp eq i8 %i.od, 0
  br i1 %i.oe, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i8 2, ptr %i.oc, align 1, !tbaa !20
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %indvars.iv.next666 = add nsw i32 %indvars.iv665, 1
  %.not226.not = icmp sgt i32 %i.nf, %indvars.iv665
  %indvars.iv.next654 = add nsw i32 %indvars.iv653, 70
  %indvars.iv.next658 = add nsw i32 %indvars.iv657, 70
  br i1 %.not226.not, label %bb.bt, label %._crit_edge543, !llvm.loop !206

.preheader516:                                    ; preds = %._crit_edge561
  %i.of = add i16 %.sroa.0.0.extract.trunc.i, -3
  %i.og = sext i16 %i.of to i32
  br label %.preheader

.lr.ph571:                                        ; preds = %.lr.ph571.preheader, %._crit_edge561
  %.0184.in568 = phi i16 [ %.0184, %._crit_edge561 ], [ %.0184564, %.lr.ph571.preheader ] ; 3 uses
  %.1187567 = phi i16 [ %i.or, %._crit_edge561 ], [ 2, %.lr.ph571.preheader ] ; 3 uses
  %.sroa.0488.4566 = phi i32 [ %.sroa.0488.5.lcssa, %._crit_edge561 ], [ %i.na, %.lr.ph571.preheader ] ; 2 uses
  %i.oh = zext i16 %.1187567 to i32               ; 4 uses
  %i.oi = sub i16 0, %.1187567                    ; 3 uses
  %i.oj = sext i16 %i.oi to i32                   ; 2 uses
  %.not219556 = icmp sgt i32 %i.oj, %i.oh
  br i1 %.not219556, label %._crit_edge561, label %.lr.ph553.preheader

.lr.ph553.preheader:                              ; preds = %.lr.ph571
  %i.ok = sext i16 %.0184.in568 to i32
  %i.ol = add nsw i32 %i.ok, 30
  %i.om = add nsw i32 %i.oj, 45                   ; 2 uses
  %i.on = add i16 %.0184.in568, 1
  %i.oo = sext i16 %i.on to i32
  %i.op = add nsw i32 %i.oo, 30
  %i.oq = sub nsw i32 19, %i.oh
  br label %.lr.ph553

._crit_edge561:                                   ; preds = %._crit_edge554, %.lr.ph571
  %.sroa.0488.5.lcssa = phi i32 [ %.sroa.0488.4566, %.lr.ph571 ], [ %i.pe, %._crit_edge554 ]
  %i.or = add i16 %.1187567, -1
  %.0184 = add i16 %.0184.in568, 1                ; 2 uses
  %i.os = sext i16 %.0184 to i32
  %.not = icmp slt i32 %i.ms, %i.os
  br i1 %.not, label %.preheader516, label %.lr.ph571, !llvm.loop !207

.lr.ph553:                                        ; preds = %.lr.ph553.preheader, %._crit_edge554
  %.0183558 = phi i16 [ %i.pb, %._crit_edge554 ], [ %i.oi, %.lr.ph553.preheader ] ; 2 uses
  %.sroa.0488.5557 = phi i32 [ %i.pe, %._crit_edge554 ], [ %.sroa.0488.4566, %.lr.ph553.preheader ]
  %i.ot = sext i16 %.0183558 to i32
  %i.ou = mul nsw i32 %i.ot, 10                   ; 2 uses
  %i.ov = add nsw i32 %i.ol, %i.ou
  %i.ow = mul nsw i32 %i.ov, 7
  %i.ox = add nsw i32 %i.om, %i.ow
  %i.oy = add nsw i32 %i.op, %i.ou
  %i.oz = mul nsw i32 %i.oy, 7
  %i.pa = add nsw i32 %i.om, %i.oz
  br label %bb.by

._crit_edge554:                                   ; preds = %bb.ca
  %i.pb = add i16 %.0183558, 1                    ; 2 uses
  %i.pc = sext i16 %i.pb to i32
  %.not219 = icmp sgt i32 %i.pc, %i.oh
  br i1 %.not219, label %._crit_edge561, label %.lr.ph553, !llvm.loop !208

bb.by:                                            ; preds = %.lr.ph553, %bb.ca
  %.0178551 = phi i16 [ %i.oi, %.lr.ph553 ], [ %i.po, %bb.ca ]
  %.0180550 = phi i32 [ %i.pa, %.lr.ph553 ], [ %i.pn, %bb.ca ] ; 2 uses
  %.0182549 = phi i32 [ %i.ox, %.lr.ph553 ], [ %i.pm, %bb.ca ] ; 2 uses
  %.sroa.0488.6548 = phi i32 [ %.sroa.0488.5557, %.lr.ph553 ], [ %i.pe, %bb.ca ]
  %i.pd = mul i32 %.sroa.0488.6548, 1103515245
  %i.pe = add i32 %i.pd, 12345                    ; 4 uses
  %i.pf = sdiv i32 %i.pe, 65536
  %i.pg = trunc nsw i32 %i.pf to i16
  %.lhs.trunc.i333 = and i16 %i.pg, 32767
  %i.ph = urem i16 %.lhs.trunc.i333, 21
  %.zext.i334 = zext nneg i16 %i.ph to i32
  %.not224 = icmp slt i32 %i.oq, %.zext.i334
  br i1 %.not224, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.pi = zext i32 %.0182549 to i64
  %i.pj = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.pi
  store i8 1, ptr %i.pj, align 1, !tbaa !20
  %i.pk = zext i32 %.0180550 to i64
  %i.pl = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.pk
  store i8 2, ptr %i.pl, align 1, !tbaa !20
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.pm = add i32 %.0182549, 1
  %i.pn = add i32 %.0180550, 1
  %i.po = add i16 %.0178551, 1                    ; 2 uses
  %i.pp = sext i16 %i.po to i32
  %.not220 = icmp sgt i32 %i.pp, %i.oh
  br i1 %.not220, label %._crit_edge554, label %bb.by, !llvm.loop !209

.preheader:                                       ; preds = %.preheader516, %bb.cb
  %indvars.iv690 = phi i32 [ -3, %.preheader516 ], [ %indvars.iv.next691, %bb.cb ] ; 2 uses
  %indvars.iv680 = phi i64 [ 7, %.preheader516 ], [ %indvars.iv.next681, %bb.cb ] ; 2 uses
  %indvars.iv669 = phi i64 [ 0, %.preheader516 ], [ %indvars.iv.next670, %bb.cb ] ; 2 uses
  %i.pq = trunc nsw i32 %indvars.iv690 to i16
  %i.pr = add i16 %i.pq, %.sroa.14.0.extract.trunc ; 3 uses
  %i.ps = sext i16 %i.pr to i32
  br label %bb.cc

_ZN6BufferIhED2Ev.exit:                           ; preds = %bb.cb
  call void @_ZdaPv(ptr noundef nonnull %i.gd) #23
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
  %i.pt = trunc nsw i32 %indvars.iv684 to i16
  %i.pu = add i16 %.sroa.8475.0518, %i.pt         ; 2 uses
  %i.pv = load i16, ptr %i.ex, align 4, !tbaa !84
  %i.pw = sext i16 %i.pv to i32
  %i.px = sub nsw i32 %i.ps, %i.pw
  %i.py = load i32, ptr %i.fa, align 8, !tbaa !86
  %i.pz = mul nsw i32 %i.px, %i.py
  %i.qa = load i32, ptr %i.ez, align 4, !tbaa !87
  %i.qb = sext i16 %i.pu to i32
  %i.qc = load i16, ptr %i.et, align 2, !tbaa !92
  %i.qd = sext i16 %i.qc to i32
  %i.qe = add i32 %i.pz, %i.qb
  %i.qf = sub i32 %i.qe, %i.qd
  %i.qg = mul i32 %i.qf, %i.qa
  %i.qh = load i16, ptr %i.er, align 8, !tbaa !83
  %i.qi = sext i16 %i.qh to i32
  %i.qj = sub nsw i32 %i.og, %i.qi
  %i.qk = add nsw i32 %i.qj, %i.qg
  %i.ql = insertelement <4 x i16> poison, i16 %i.pu, i64 1
  br label %bb.ce

bb.cd:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread
  %indvars.iv.next685 = add nsw i32 %indvars.iv684, 1 ; 2 uses
  %indvars.iv.next672 = add nuw nsw i64 %indvars.iv671, 7
  %indvars.iv.next683 = add nuw nsw i64 %indvars.iv682, 7
  %exitcond689 = icmp eq i32 %indvars.iv.next685, 4
  br i1 %exitcond689, label %bb.cb, label %bb.cc, !llvm.loop !211

bb.ce:                                            ; preds = %bb.cc, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread
  %indvars.iv673 = phi i64 [ %indvars.iv671, %bb.cc ], [ %indvars.iv.next674, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread ] ; 2 uses
  %.0152574 = phi i16 [ -3, %bb.cc ], [ %i.ro, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread ] ; 2 uses
  %.0174573 = phi i32 [ %i.qk, %bb.cc ], [ %i.rn, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread ] ; 2 uses
  %i.qm = add i16 %.0152574, %.sroa.0.0.extract.trunc.i
  %i.qn = load <2 x i16>, ptr %i.er, align 8
  %i.qo = load <2 x i16>, ptr %i.es, align 2
  %i.qp = shufflevector <2 x i16> %i.qo, <2 x i16> %i.qn, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.qq = insertelement <4 x i16> %i.ql, i16 %i.qm, i64 0
  %i.qr = shufflevector <4 x i16> %i.qq, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.qs = icmp slt <4 x i16> %i.qp, %i.qr
  %i.qt = icmp sgt <4 x i16> %i.qp, %i.qr
  %i.qu = shufflevector <4 x i1> %i.qs, <4 x i1> %i.qt, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qv = freeze <4 x i1> %i.qu
  %i.qw = bitcast <4 x i1> %i.qv to i4
  %.not744 = icmp eq i4 %i.qw, 0
  br i1 %.not744, label %bb.cf, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread

bb.cf:                                            ; preds = %bb.ce
  %i.qx = load i16, ptr %i.ex, align 4, !tbaa !84
  %.not9.i358 = icmp slt i16 %i.pr, %i.qx
  br i1 %.not9.i358, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359: ; preds = %bb.cf
  %i.qy = load i16, ptr %i.ey, align 2, !tbaa !85
  %.not509 = icmp sgt i16 %i.pr, %i.qy
  br i1 %.not509, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread, label %bb.cg

bb.cg:                                            ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359
  %i.qz = load ptr, ptr %i.fc, align 8, !tbaa !90
  %i.ra = zext i32 %.0174573 to i64
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %i.ra ; 4 uses
  %i.rc = load i16, ptr %i.rb, align 4, !tbaa !93 ; 2 uses
  %i.rd = and i16 %i.rc, -2
  %switch = icmp eq i16 %i.rd, 126
  br i1 %switch, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.re = icmp eq i16 %i.rc, %spec.store.select
  br i1 %i.re, label %bb.ci, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread

bb.ci:                                            ; preds = %bb.ch
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rb, i64 2
  %i.rg = load i8, ptr %i.rf, align 2, !tbaa !213
  %i.rh = icmp eq i8 %i.rg, 0
  br i1 %i.rh, label %_ZNK7MapNodeeqERKS_.exit, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread

_ZNK7MapNodeeqERKS_.exit:                         ; preds = %bb.ci
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rb, i64 3
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !214
  %i.rk = icmp eq i8 %i.rj, 0
  br i1 %i.rk, label %bb.cj, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread

bb.cj:                                            ; preds = %bb.cg, %_ZNK7MapNodeeqERKS_.exit
  %i.rl = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv673
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !20
  switch i8 %i.rm, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread [
    i8 1, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread.sink.split
    i8 2, label %bb.ck
  ]

bb.ck:                                            ; preds = %bb.cj
  br label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread.sink.split

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread.sink.split: ; preds = %bb.cj, %bb.ck
  %.sroa.0498.0.insert.ext.sink.in = phi i16 [ %spec.store.select, %bb.ck ], [ %.0173, %bb.cj ]
  %.sroa.0498.0.insert.ext.sink = zext i16 %.sroa.0498.0.insert.ext.sink.in to i32
  store i32 %.sroa.0498.0.insert.ext.sink, ptr %i.rb, align 4
  br label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread: ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359.thread.sink.split, %bb.cj, %bb.ch, %bb.ci, %bb.ce, %bb.cf, %_ZNK7MapNodeeqERKS_.exit, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit359
  %i.rn = add i32 %.0174573, 1
  %indvars.iv.next674 = add nuw nsw i64 %indvars.iv673, 1 ; 2 uses
  %i.ro = add nsw i16 %.0152574, 1
  %exitcond679 = icmp eq i64 %indvars.iv.next674, %indvars.iv682
  br i1 %exitcond679, label %bb.cd, label %bb.ce, !llvm.loop !212

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268
  %.pn237.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268 ], [ %.pn205, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271 ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ], [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287 ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277 ]
  resume { ptr, i32 } %.pn237.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7treegen15error_to_stringB5cxx11ENS_5errorE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !16
  switch i32 %1, label %._crit_edge.i.i8 [
    i32 0, label %._crit_edge.i.i
    i32 1, label %.noexc.i5
  ]

end_hunk_0
