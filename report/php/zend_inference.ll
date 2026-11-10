Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_inference?download=true
inline.NumInlined: 423
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 40
begin_hunk_0_@zend_update_type_info:bb.a
  br i1 %i.kf, label %_ssa_result_info.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !33
  %i.ki = and i32 %i.kh, 4
  %.not41.i309 = icmp eq i32 %i.ki, 0
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !33 ; 8 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !111 ; 2 uses
  %i.kn = zext i32 %i.km to i64                   ; 2 uses
  %.not4249.i319 = icmp eq i32 %i.km, 0           ; 2 uses
  br i1 %.not41.i309, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.idx.i310 = shl nuw nsw i64 %i.kn, 4           ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.idx.i310
  br i1 %.not4249.i319, label %_ssa_result_info.exit, label %.lr.ph.i312.preheader

.lr.ph.i312.preheader:                            ; preds = %bb.av
  %i.kp = add nsw i64 %.idx.i310, -16             ; 2 uses
  %i.kq = lshr exact i64 %i.kp, 4
  %i.kr = add nuw nsw i64 %i.kq, 1
  %xtraiter1732 = and i64 %i.kr, 3                ; 2 uses
  %lcmp.mod1733.not = icmp eq i64 %xtraiter1732, 0
  br i1 %lcmp.mod1733.not, label %.lr.ph.i312.prol.loopexit, label %.lr.ph.i312.prol

.lr.ph.i312.prol:                                 ; preds = %.lr.ph.i312.preheader, %.lr.ph.i312.prol
  %.03848.i313.prol = phi ptr [ %i.ky, %.lr.ph.i312.prol ], [ %i.kk, %.lr.ph.i312.preheader ] ; 2 uses
  %.147.i314.prol = phi i32 [ %.2.i315.prol, %.lr.ph.i312.prol ], [ %..i308, %.lr.ph.i312.preheader ]
  %prol.iter1734 = phi i64 [ %prol.iter1734.next, %.lr.ph.i312.prol ], [ 0, %.lr.ph.i312.preheader ]
  %i.ks = getelementptr inbounds nuw i8, ptr %.03848.i313.prol, i64 8
  %i.kt = load i8, ptr %i.ks, align 8, !tbaa !33  ; 2 uses
  %i.ku = icmp eq i8 %i.kt, 0
  %i.kv = zext nneg i8 %i.kt to i32
  %i.kw = shl nuw i32 1024, %i.kv
  %i.kx = select i1 %i.ku, i32 0, i32 %i.kw, !prof !25
  %.2.i315.prol = or i32 %i.kx, %.147.i314.prol   ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.03848.i313.prol, i64 16 ; 2 uses
  %prol.iter1734.next = add i64 %prol.iter1734, 1 ; 2 uses
  %prol.iter1734.cmp.not = icmp eq i64 %prol.iter1734.next, %xtraiter1732
  br i1 %prol.iter1734.cmp.not, label %.lr.ph.i312.prol.loopexit, label %.lr.ph.i312.prol, !llvm.loop !204

.lr.ph.i312.prol.loopexit:                        ; preds = %.lr.ph.i312.prol, %.lr.ph.i312.preheader
  %.2.i315.lcssa.unr = phi i32 [ poison, %.lr.ph.i312.preheader ], [ %.2.i315.prol, %.lr.ph.i312.prol ]
  %.03848.i313.unr = phi ptr [ %i.kk, %.lr.ph.i312.preheader ], [ %i.ky, %.lr.ph.i312.prol ]
  %.147.i314.unr = phi i32 [ %..i308, %.lr.ph.i312.preheader ], [ %.2.i315.prol, %.lr.ph.i312.prol ]
  %i.kz = icmp ult i64 %i.kp, 48
  br i1 %i.kz, label %_ssa_result_info.exit, label %.lr.ph.i312

.lr.ph.i312:                                      ; preds = %.lr.ph.i312.prol.loopexit, %.lr.ph.i312
  %.03848.i313 = phi ptr [ %i.ly, %.lr.ph.i312 ], [ %.03848.i313.unr, %.lr.ph.i312.prol.loopexit ] ; 5 uses
  %.147.i314 = phi i32 [ %.2.i315.3, %.lr.ph.i312 ], [ %.147.i314.unr, %.lr.ph.i312.prol.loopexit ]
  %i.la = getelementptr inbounds nuw i8, ptr %.03848.i313, i64 8
  %i.lb = load i8, ptr %i.la, align 8, !tbaa !33  ; 2 uses
  %i.lc = icmp eq i8 %i.lb, 0
  %i.ld = zext nneg i8 %i.lb to i32
  %i.le = shl nuw i32 1024, %i.ld
  %i.lf = select i1 %i.lc, i32 0, i32 %i.le, !prof !25
  %.2.i315 = or i32 %i.lf, %.147.i314
  %i.lg = getelementptr inbounds nuw i8, ptr %.03848.i313, i64 24
  %i.lh = load i8, ptr %i.lg, align 8, !tbaa !33  ; 2 uses
  %i.li = icmp eq i8 %i.lh, 0
  %i.lj = zext nneg i8 %i.lh to i32
  %i.lk = shl nuw i32 1024, %i.lj
  %i.ll = select i1 %i.li, i32 0, i32 %i.lk, !prof !25
  %.2.i315.1 = or i32 %i.ll, %.2.i315
  %i.lm = getelementptr inbounds nuw i8, ptr %.03848.i313, i64 40
  %i.ln = load i8, ptr %i.lm, align 8, !tbaa !33  ; 2 uses
  %i.lo = icmp eq i8 %i.ln, 0
  %i.lp = zext nneg i8 %i.ln to i32
  %i.lq = shl nuw i32 1024, %i.lp
  %i.lr = select i1 %i.lo, i32 0, i32 %i.lq, !prof !25
  %.2.i315.2 = or i32 %i.lr, %.2.i315.1
  %i.ls = getelementptr inbounds nuw i8, ptr %.03848.i313, i64 56
  %i.lt = load i8, ptr %i.ls, align 8, !tbaa !33  ; 2 uses
  %i.lu = icmp eq i8 %i.lt, 0
  %i.lv = zext nneg i8 %i.lt to i32
  %i.lw = shl nuw i32 1024, %i.lv
  %i.lx = select i1 %i.lu, i32 0, i32 %i.lw, !prof !25
  %.2.i315.3 = or i32 %i.lx, %.2.i315.2           ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.03848.i313, i64 64 ; 2 uses
  %.not44.i316.3 = icmp eq ptr %i.ly, %i.ko
  br i1 %.not44.i316.3, label %_ssa_result_info.exit, label %.lr.ph.i312, !llvm.loop !1

bb.aw:                                            ; preds = %bb.au
  %.idx54.i318 = shl nuw nsw i64 %i.kn, 5         ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.idx54.i318
  br i1 %.not4249.i319, label %_ssa_result_info.exit, label %.lr.ph52.i320.preheader

.lr.ph52.i320.preheader:                          ; preds = %bb.aw
  %i.ma = add nsw i64 %.idx54.i318, -32           ; 2 uses
  %i.mb = and i64 %i.ma, 32
  %lcmp.mod1736.not.not = icmp eq i64 %i.mb, 0
  br i1 %lcmp.mod1736.not.not, label %.lr.ph52.i320.prol, label %.lr.ph52.i320.prol.loopexit

.lr.ph52.i320.prol:                               ; preds = %.lr.ph52.i320.preheader
  %i.mc = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.md = load i8, ptr %i.mc, align 8, !tbaa !33  ; 2 uses
  %i.me = icmp eq i8 %i.md, 0
  br i1 %i.me, label %.lr.ph52.i320.prol.loopexit.unr-lcssa, label %bb.ax, !prof !25

bb.ax:                                            ; preds = %.lr.ph52.i320.prol
  %i.mf = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !115
  %.not43.i323.prol = icmp eq ptr %i.mg, null
  %.4.v.i324.prol = select i1 %.not43.i323.prol, i32 4194304, i32 8388608
  %i.mh = zext nneg i8 %i.md to i32
  %i.mi = shl nuw i32 1024, %i.mh
  %i.mj = or i32 %i.mi, %.4.v.i324.prol
  %i.mk = or i32 %i.mj, %..i308
  br label %.lr.ph52.i320.prol.loopexit.unr-lcssa

.lr.ph52.i320.prol.loopexit.unr-lcssa:            ; preds = %bb.ax, %.lr.ph52.i320.prol
  %.5.i325.prol = phi i32 [ %i.mk, %bb.ax ], [ %..i308, %.lr.ph52.i320.prol ] ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  br label %.lr.ph52.i320.prol.loopexit

.lr.ph52.i320.prol.loopexit:                      ; preds = %.lr.ph52.i320.prol.loopexit.unr-lcssa, %.lr.ph52.i320.preheader
  %.5.i325.lcssa.unr = phi i32 [ poison, %.lr.ph52.i320.preheader ], [ %.5.i325.prol, %.lr.ph52.i320.prol.loopexit.unr-lcssa ]
  %.051.i321.unr = phi ptr [ %i.kk, %.lr.ph52.i320.preheader ], [ %i.ml, %.lr.ph52.i320.prol.loopexit.unr-lcssa ]
  %.350.i322.unr = phi i32 [ %..i308, %.lr.ph52.i320.preheader ], [ %.5.i325.prol, %.lr.ph52.i320.prol.loopexit.unr-lcssa ]
  %i.mm = icmp eq i64 %i.ma, 0
  br i1 %i.mm, label %_ssa_result_info.exit, label %.lr.ph52.i320

.lr.ph52.i320:                                    ; preds = %.lr.ph52.i320.prol.loopexit, %bb.ba
  %.051.i321 = phi ptr [ %i.nf, %bb.ba ], [ %.051.i321.unr, %.lr.ph52.i320.prol.loopexit ] ; 5 uses
  %.350.i322 = phi i32 [ %.5.i325.1, %bb.ba ], [ %.350.i322.unr, %.lr.ph52.i320.prol.loopexit ] ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.051.i321, i64 8
  %i.mo = load i8, ptr %i.mn, align 8, !tbaa !33  ; 2 uses
  %i.mp = icmp eq i8 %i.mo, 0
  br i1 %i.mp, label %.lr.ph52.i320.1, label %bb.ay, !prof !25

bb.ay:                                            ; preds = %.lr.ph52.i320
  %i.mq = getelementptr inbounds nuw i8, ptr %.051.i321, i64 24
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !115
  %.not43.i323 = icmp eq ptr %i.mr, null
  %.4.v.i324 = select i1 %.not43.i323, i32 4194304, i32 8388608
  %i.ms = zext nneg i8 %i.mo to i32
  %i.mt = shl nuw i32 1024, %i.ms
  %i.mu = or i32 %i.mt, %.4.v.i324
  %i.mv = or i32 %i.mu, %.350.i322
  br label %.lr.ph52.i320.1

.lr.ph52.i320.1:                                  ; preds = %bb.ay, %.lr.ph52.i320
  %.5.i325 = phi i32 [ %i.mv, %bb.ay ], [ %.350.i322, %.lr.ph52.i320 ] ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.051.i321, i64 40
  %i.mx = load i8, ptr %i.mw, align 8, !tbaa !33  ; 2 uses
  %i.my = icmp eq i8 %i.mx, 0
  br i1 %i.my, label %bb.ba, label %bb.az, !prof !25

bb.az:                                            ; preds = %.lr.ph52.i320.1
  %i.mz = getelementptr inbounds nuw i8, ptr %.051.i321, i64 56
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !115
  %.not43.i323.1 = icmp eq ptr %i.na, null
  %.4.v.i324.1 = select i1 %.not43.i323.1, i32 4194304, i32 8388608
  %i.nb = zext nneg i8 %i.mx to i32
  %i.nc = shl nuw i32 1024, %i.nb
  %i.nd = or i32 %i.nc, %.4.v.i324.1
  %i.ne = or i32 %i.nd, %.5.i325
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.lr.ph52.i320.1
  %.5.i325.1 = phi i32 [ %i.ne, %bb.az ], [ %.5.i325, %.lr.ph52.i320.1 ] ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.051.i321, i64 64 ; 2 uses
  %.not42.i326.1 = icmp eq ptr %i.nf, %i.lz
  br i1 %.not42.i326.1, label %_ssa_result_info.exit, label %.lr.ph52.i320, !llvm.loop !2

bb.bb:                                            ; preds = %bb.as
  %i.ng = zext nneg i8 %i.jz to i32
  %i.nh = shl nuw i32 1, %i.ng                    ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.jx, i64 9
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !33
  %.not.i77 = icmp eq i8 %i.nj, 0
  br i1 %.not.i77, label %bb.bc, label %_ssa_result_info.exit

bb.bc:                                            ; preds = %bb.bb
  %i.nk = icmp eq i8 %i.jz, 6
  %spec.select.i79 = select i1 %i.nk, i32 -2147483584, i32 %i.nh
  br label %_ssa_result_info.exit

bb.bd:                                            ; preds = %bb.ao
  %.not.i60 = icmp eq ptr %i.i, null
  br i1 %.not.i60, label %_ssa_result_info.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.nl = zext nneg i32 %i.jf to i64
  %i.nm = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.nl
  %i.nn = load i32, ptr %i.nm, align 8, !tbaa !117
  br label %_ssa_result_info.exit

_ssa_result_info.exit:                            ; preds = %.lr.ph.i312.prol.loopexit, %.lr.ph.i312, %.lr.ph52.i320.prol.loopexit, %bb.ba, %bb.bb, %bb.at, %bb.be, %bb.bc, %bb.av, %bb.aw
  %.0.i61 = phi i32 [ %i.nh, %bb.bb ], [ %i.nn, %bb.be ], [ %spec.select.i79, %bb.bc ], [ %..i308, %bb.at ], [ %.5.i325.1, %bb.ba ], [ %..i308, %bb.av ], [ %..i308, %bb.aw ], [ %.5.i325.lcssa.unr, %.lr.ph52.i320.prol.loopexit ], [ %.2.i315.lcssa.unr, %.lr.ph.i312.prol.loopexit ], [ %.2.i315.3, %.lr.ph.i312 ]
  %i.no = and i32 %.0.i61, 16778239
  %.not8905.i = icmp eq i32 %i.no, 0
  br i1 %.not8905.i, label %bb.bx, label %_ssa_result_info.exit.thread

_ssa_result_info.exit.thread:                     ; preds = %bb.as, %bb.bd, %_ssa_result_info.exit, %bb.an
  %i.np = getelementptr inbounds nuw i8, ptr %.08506.i, i64 28 ; 10 uses
  %i.nq = load i8, ptr %i.np, align 4, !tbaa !55  ; 17 uses
  switch i8 %i.nq, label %_ssa_op1_info.exit46.thread [
    i8 27, label %bb.bf
    i8 28, label %bb.bf
    i8 29, label %bb.bf
    i8 23, label %bb.bf
    i8 24, label %bb.bf
  ]

bb.bf:                                            ; preds = %_ssa_result_info.exit.thread, %_ssa_result_info.exit.thread, %_ssa_result_info.exit.thread, %_ssa_result_info.exit.thread, %_ssa_result_info.exit.thread
  %i.nr = getelementptr inbounds nuw i8, ptr %.08506.i, i64 32
  %i.ns = getelementptr inbounds nuw i8, ptr %.08507.i, i64 36
  %i.nt = getelementptr inbounds nuw i8, ptr %.08506.i, i64 61
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !80
  %i.nv = icmp eq i8 %i.nu, 1
  br i1 %i.nv, label %bb.bg, label %bb.bu

bb.bg:                                            ; preds = %bb.bf
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !81
  %i.ny = and i32 %i.nx, 33554432
  %.not9.i45 = icmp eq i32 %i.ny, 0
  br i1 %.not9.i45, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nz = getelementptr inbounds nuw i8, ptr %.08506.i, i64 40
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !33
  %i.ob = sext i32 %i.oa to i64
  %i.oc = getelementptr inbounds i8, ptr %i.nr, i64 %i.ob
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !82
  %i.of = getelementptr inbounds nuw i8, ptr %.08506.i, i64 40
  %i.og = load i32, ptr %i.of, align 8, !tbaa !33
  %i.oh = zext i32 %i.og to i64
  %i.oi = getelementptr inbounds nuw [16 x i8], ptr %i.oe, i64 %i.oh
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.oj = phi ptr [ %i.oc, %bb.bh ], [ %i.oi, %bb.bi ] ; 4 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.ol = load i8, ptr %i.ok, align 8, !tbaa !33  ; 3 uses
  switch i8 %i.ol, label %bb.bs [
    i8 11, label %_ssa_op1_info.exit46.thread
    i8 7, label %bb.bk
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.om = load ptr, ptr %i.oj, align 8, !tbaa !33 ; 4 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.oj, i64 9
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !33
  %.not.i328 = icmp eq i8 %i.oo, 0
  %..i329 = select i1 %.not.i328, i32 -2147483520, i32 -1073741696 ; 8 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 28
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !110
  %i.or = icmp eq i32 %i.oq, 0
  br i1 %i.or, label %_ssa_op1_info.exit46, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.os = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.ot = load i32, ptr %i.os, align 8, !tbaa !33
  %i.ou = and i32 %i.ot, 4
  %.not41.i330 = icmp eq i32 %i.ou, 0
  %i.ov = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !33 ; 8 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.om, i64 24
  %i.oy = load i32, ptr %i.ox, align 8, !tbaa !111 ; 2 uses
  %i.oz = zext i32 %i.oy to i64                   ; 2 uses
  %.not4249.i340 = icmp eq i32 %i.oy, 0           ; 2 uses
  br i1 %.not41.i330, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.idx.i331 = shl nuw nsw i64 %i.oz, 4           ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ow, i64 %.idx.i331
  br i1 %.not4249.i340, label %_ssa_op1_info.exit46, label %.lr.ph.i333.preheader

.lr.ph.i333.preheader:                            ; preds = %bb.bm
  %i.pb = add nsw i64 %.idx.i331, -16             ; 2 uses
  %i.pc = lshr exact i64 %i.pb, 4
  %i.pd = add nuw nsw i64 %i.pc, 1
  %xtraiter1738 = and i64 %i.pd, 3                ; 2 uses
  %lcmp.mod1739.not = icmp eq i64 %xtraiter1738, 0
  br i1 %lcmp.mod1739.not, label %.lr.ph.i333.prol.loopexit, label %.lr.ph.i333.prol

.lr.ph.i333.prol:                                 ; preds = %.lr.ph.i333.preheader, %.lr.ph.i333.prol
  %.03848.i334.prol = phi ptr [ %i.pk, %.lr.ph.i333.prol ], [ %i.ow, %.lr.ph.i333.preheader ] ; 2 uses
  %.147.i335.prol = phi i32 [ %.2.i336.prol, %.lr.ph.i333.prol ], [ %..i329, %.lr.ph.i333.preheader ]
  %prol.iter1740 = phi i64 [ %prol.iter1740.next, %.lr.ph.i333.prol ], [ 0, %.lr.ph.i333.preheader ]
  %i.pe = getelementptr inbounds nuw i8, ptr %.03848.i334.prol, i64 8
  %i.pf = load i8, ptr %i.pe, align 8, !tbaa !33  ; 2 uses
  %i.pg = icmp eq i8 %i.pf, 0
  %i.ph = zext nneg i8 %i.pf to i32
  %i.pi = shl nuw i32 1024, %i.ph
  %i.pj = select i1 %i.pg, i32 0, i32 %i.pi, !prof !25
  %.2.i336.prol = or i32 %i.pj, %.147.i335.prol   ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.03848.i334.prol, i64 16 ; 2 uses
  %prol.iter1740.next = add i64 %prol.iter1740, 1 ; 2 uses
  %prol.iter1740.cmp.not = icmp eq i64 %prol.iter1740.next, %xtraiter1738
  br i1 %prol.iter1740.cmp.not, label %.lr.ph.i333.prol.loopexit, label %.lr.ph.i333.prol, !llvm.loop !205

.lr.ph.i333.prol.loopexit:                        ; preds = %.lr.ph.i333.prol, %.lr.ph.i333.preheader
  %.2.i336.lcssa.unr = phi i32 [ poison, %.lr.ph.i333.preheader ], [ %.2.i336.prol, %.lr.ph.i333.prol ]
  %.03848.i334.unr = phi ptr [ %i.ow, %.lr.ph.i333.preheader ], [ %i.pk, %.lr.ph.i333.prol ]
  %.147.i335.unr = phi i32 [ %..i329, %.lr.ph.i333.preheader ], [ %.2.i336.prol, %.lr.ph.i333.prol ]
  %i.pl = icmp ult i64 %i.pb, 48
  br i1 %i.pl, label %_ssa_op1_info.exit46, label %.lr.ph.i333

.lr.ph.i333:                                      ; preds = %.lr.ph.i333.prol.loopexit, %.lr.ph.i333
  %.03848.i334 = phi ptr [ %i.qk, %.lr.ph.i333 ], [ %.03848.i334.unr, %.lr.ph.i333.prol.loopexit ] ; 5 uses
  %.147.i335 = phi i32 [ %.2.i336.3, %.lr.ph.i333 ], [ %.147.i335.unr, %.lr.ph.i333.prol.loopexit ]
  %i.pm = getelementptr inbounds nuw i8, ptr %.03848.i334, i64 8
  %i.pn = load i8, ptr %i.pm, align 8, !tbaa !33  ; 2 uses
  %i.po = icmp eq i8 %i.pn, 0
  %i.pp = zext nneg i8 %i.pn to i32
  %i.pq = shl nuw i32 1024, %i.pp
  %i.pr = select i1 %i.po, i32 0, i32 %i.pq, !prof !25
  %.2.i336 = or i32 %i.pr, %.147.i335
  %i.ps = getelementptr inbounds nuw i8, ptr %.03848.i334, i64 24
  %i.pt = load i8, ptr %i.ps, align 8, !tbaa !33  ; 2 uses
  %i.pu = icmp eq i8 %i.pt, 0
  %i.pv = zext nneg i8 %i.pt to i32
  %i.pw = shl nuw i32 1024, %i.pv
  %i.px = select i1 %i.pu, i32 0, i32 %i.pw, !prof !25
  %.2.i336.1 = or i32 %i.px, %.2.i336
  %i.py = getelementptr inbounds nuw i8, ptr %.03848.i334, i64 40
  %i.pz = load i8, ptr %i.py, align 8, !tbaa !33  ; 2 uses
  %i.qa = icmp eq i8 %i.pz, 0
  %i.qb = zext nneg i8 %i.pz to i32
  %i.qc = shl nuw i32 1024, %i.qb
  %i.qd = select i1 %i.qa, i32 0, i32 %i.qc, !prof !25
  %.2.i336.2 = or i32 %i.qd, %.2.i336.1
  %i.qe = getelementptr inbounds nuw i8, ptr %.03848.i334, i64 56
  %i.qf = load i8, ptr %i.qe, align 8, !tbaa !33  ; 2 uses
  %i.qg = icmp eq i8 %i.qf, 0
  %i.qh = zext nneg i8 %i.qf to i32
  %i.qi = shl nuw i32 1024, %i.qh
  %i.qj = select i1 %i.qg, i32 0, i32 %i.qi, !prof !25
  %.2.i336.3 = or i32 %i.qj, %.2.i336.2           ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %.03848.i334, i64 64 ; 2 uses
  %.not44.i337.3 = icmp eq ptr %i.qk, %i.pa
  br i1 %.not44.i337.3, label %_ssa_op1_info.exit46, label %.lr.ph.i333, !llvm.loop !1

bb.bn:                                            ; preds = %bb.bl
  %.idx54.i339 = shl nuw nsw i64 %i.oz, 5         ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.ow, i64 %.idx54.i339
  br i1 %.not4249.i340, label %_ssa_op1_info.exit46, label %.lr.ph52.i341.preheader

.lr.ph52.i341.preheader:                          ; preds = %bb.bn
  %i.qm = add nsw i64 %.idx54.i339, -32           ; 2 uses
  %i.qn = and i64 %i.qm, 32
  %lcmp.mod1742.not.not = icmp eq i64 %i.qn, 0
  br i1 %lcmp.mod1742.not.not, label %.lr.ph52.i341.prol, label %.lr.ph52.i341.prol.loopexit

.lr.ph52.i341.prol:                               ; preds = %.lr.ph52.i341.preheader
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %i.qp = load i8, ptr %i.qo, align 8, !tbaa !33  ; 2 uses
  %i.qq = icmp eq i8 %i.qp, 0
  br i1 %i.qq, label %.lr.ph52.i341.prol.loopexit.unr-lcssa, label %bb.bo, !prof !25

bb.bo:                                            ; preds = %.lr.ph52.i341.prol
  %i.qr = getelementptr inbounds nuw i8, ptr %i.ow, i64 24
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !115
  %.not43.i344.prol = icmp eq ptr %i.qs, null
  %.4.v.i345.prol = select i1 %.not43.i344.prol, i32 4194304, i32 8388608
  %i.qt = zext nneg i8 %i.qp to i32
  %i.qu = shl nuw i32 1024, %i.qt
  %i.qv = or i32 %i.qu, %.4.v.i345.prol
  %i.qw = or i32 %i.qv, %..i329
  br label %.lr.ph52.i341.prol.loopexit.unr-lcssa

.lr.ph52.i341.prol.loopexit.unr-lcssa:            ; preds = %bb.bo, %.lr.ph52.i341.prol
  %.5.i346.prol = phi i32 [ %i.qw, %bb.bo ], [ %..i329, %.lr.ph52.i341.prol ] ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.ow, i64 32
  br label %.lr.ph52.i341.prol.loopexit

.lr.ph52.i341.prol.loopexit:                      ; preds = %.lr.ph52.i341.prol.loopexit.unr-lcssa, %.lr.ph52.i341.preheader
  %.5.i346.lcssa.unr = phi i32 [ poison, %.lr.ph52.i341.preheader ], [ %.5.i346.prol, %.lr.ph52.i341.prol.loopexit.unr-lcssa ]
  %.051.i342.unr = phi ptr [ %i.ow, %.lr.ph52.i341.preheader ], [ %i.qx, %.lr.ph52.i341.prol.loopexit.unr-lcssa ]
  %.350.i343.unr = phi i32 [ %..i329, %.lr.ph52.i341.preheader ], [ %.5.i346.prol, %.lr.ph52.i341.prol.loopexit.unr-lcssa ]
  %i.qy = icmp eq i64 %i.qm, 0
  br i1 %i.qy, label %_ssa_op1_info.exit46, label %.lr.ph52.i341

.lr.ph52.i341:                                    ; preds = %.lr.ph52.i341.prol.loopexit, %bb.br
  %.051.i342 = phi ptr [ %i.rr, %bb.br ], [ %.051.i342.unr, %.lr.ph52.i341.prol.loopexit ] ; 5 uses
  %.350.i343 = phi i32 [ %.5.i346.1, %bb.br ], [ %.350.i343.unr, %.lr.ph52.i341.prol.loopexit ] ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.051.i342, i64 8
  %i.ra = load i8, ptr %i.qz, align 8, !tbaa !33  ; 2 uses
  %i.rb = icmp eq i8 %i.ra, 0
  br i1 %i.rb, label %.lr.ph52.i341.1, label %bb.bp, !prof !25

bb.bp:                                            ; preds = %.lr.ph52.i341
  %i.rc = getelementptr inbounds nuw i8, ptr %.051.i342, i64 24
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !115
  %.not43.i344 = icmp eq ptr %i.rd, null
  %.4.v.i345 = select i1 %.not43.i344, i32 4194304, i32 8388608
  %i.re = zext nneg i8 %i.ra to i32
  %i.rf = shl nuw i32 1024, %i.re
  %i.rg = or i32 %i.rf, %.4.v.i345
  %i.rh = or i32 %i.rg, %.350.i343
end_hunk_0
begin_hunk_1_@zend_update_type_info:bb.a
  %i.va = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %i.uw ; 3 uses
  %i.vb = load i32, ptr %i.va, align 8, !tbaa !119
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !120
  %.not1713 = icmp slt i32 %i.vb, %i.vd
  br i1 %.not1713, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  %i.ve = getelementptr inbounds nuw i8, ptr %i.va, i64 40
  %i.vf = load i8, ptr %i.ve, align 8
  %i.vg = lshr i8 %i.vf, 2
  %i.vh = and i8 %i.vg, 3                         ; 2 uses
  %.not8921.i = icmp eq i8 %i.vh, 0
  br i1 %.not8921.i, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.vi = icmp eq i8 %i.vh, 2
  %..i354 = select i1 %i.vi, i32 -1067384704, i32 -520093697
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu, %bb.ct
  %.58159.i = phi i32 [ %..i354, %bb.cv ], [ 0, %bb.cu ], [ 0, %bb.ct ] ; 3 uses
  %.not8922.i = icmp eq i32 %i.uy, %.58159.i
  br i1 %.not8922.i, label %bb.db, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.vj = xor i32 %.58159.i, -1
  %i.vk = and i32 %i.uy, %i.vj
  %.not8925.i = icmp eq i32 %i.vk, 0
  br i1 %.not8925.i, label %bb.da, label %.critedge10420.critedge10992.i

.critedge10420.critedge10992.i:                   ; preds = %bb.cx
  %i.vl = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.vm = load i32, ptr %i.vl, align 8, !tbaa !121 ; 2 uses
  %i.vn = icmp sgt i32 %i.vm, -1
  br i1 %i.vn, label %bb.cy, label %emit_type_narrowing_warning.exit356

bb.cy:                                            ; preds = %.critedge10420.critedge10992.i
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !53 ; 2 uses
  %.not.i355 = icmp eq ptr %i.vp, null
  br i1 %.not.i355, label %emit_type_narrowing_warning.exit356, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.vq = zext nneg i32 %i.vm to i64
  %i.vr = getelementptr inbounds nuw [32 x i8], ptr %i.vp, i64 %i.vq ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 28
  %i.vt = load i8, ptr %i.vs, align 4, !tbaa !55
  %i.vu = tail call ptr @zend_get_opcode_name(i8 noundef zeroext %i.vt) #17
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vr, i64 24
  %i.vw = load i32, ptr %i.vv, align 8, !tbaa !122
  br label %emit_type_narrowing_warning.exit356

emit_type_narrowing_warning.exit356:              ; preds = %.critedge10420.critedge10992.i, %bb.cy, %bb.cz
  %i.vx = phi ptr [ %i.vu, %bb.cz ], [ @.str, %bb.cy ], [ @.str, %.critedge10420.critedge10992.i ]
  %i.vy = phi i32 [ %i.vw, %bb.cz ], [ 0, %bb.cy ], [ 0, %.critedge10420.critedge10992.i ]
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !123
  tail call void (i32, ptr, i32, ptr, ...) @zend_error_at(i32 noundef 2, ptr noundef %i.wa, i32 noundef %i.vy, ptr noundef nonnull @.str.1, ptr noundef %i.vx) #17
  br label %_zend_update_type_info.exit

bb.da:                                            ; preds = %bb.cx
  store i32 %.58159.i, ptr %i.ux, align 8, !tbaa !117
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cw, %bb.cs, %bb.cr
  %i.wb = getelementptr inbounds nuw i8, ptr %.08506.i, i64 28
  %i.wc = load i8, ptr %i.wb, align 4, !tbaa !55
  switch i8 %i.wc, label %_zend_update_type_info.exit [
    i8 27, label %bb.dc
    i8 28, label %bb.dc
    i8 29, label %bb.dc
    i8 23, label %bb.dc
    i8 24, label %bb.dc
  ]

bb.dc:                                            ; preds = %bb.db, %bb.db, %bb.db, %bb.db, %bb.db
  %i.wd = getelementptr inbounds nuw i8, ptr %.08507.i, i64 48
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !36 ; 2 uses
  %i.wf = icmp sgt i32 %i.we, -1
  br i1 %i.wf, label %bb.dd, label %_zend_update_type_info.exit

bb.dd:                                            ; preds = %bb.dc
  %i.wg = zext nneg i32 %i.we to i64              ; 2 uses
  %i.wh = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.wg ; 2 uses
  %i.wi = load i32, ptr %i.wh, align 8, !tbaa !117 ; 3 uses
  %i.wj = and i32 %i.wi, 1024
  %.not8926.i = icmp eq i32 %i.wj, 0
  br i1 %.not8926.i, label %bb.de, label %_zend_update_type_info.exit

bb.de:                                            ; preds = %bb.dd
  %i.wk = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %i.wg ; 3 uses
  %i.wl = load i32, ptr %i.wk, align 8, !tbaa !119
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !120
  %.not1714 = icmp slt i32 %i.wl, %i.wn
  br i1 %.not1714, label %bb.df, label %bb.dh

bb.df:                                            ; preds = %bb.de
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wk, i64 40
  %i.wp = load i8, ptr %i.wo, align 8
  %i.wq = lshr i8 %i.wp, 2
  %i.wr = and i8 %i.wq, 3                         ; 2 uses
  %.not8927.i = icmp eq i8 %i.wr, 0
  br i1 %.not8927.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ws = icmp eq i8 %i.wr, 2
  %..i357 = select i1 %i.ws, i32 -1067384704, i32 -520093697
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df, %bb.de
  %.58153.i = phi i32 [ %..i357, %bb.dg ], [ 0, %bb.df ], [ 0, %bb.de ] ; 3 uses
  %.not8928.i = icmp eq i32 %i.wi, %.58153.i
  br i1 %.not8928.i, label %_zend_update_type_info.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.wt = xor i32 %.58153.i, -1
  %i.wu = and i32 %i.wi, %i.wt
  %.not8931.i = icmp eq i32 %i.wu, 0
  br i1 %.not8931.i, label %bb.dl, label %.critedge10420.critedge10994.i

.critedge10420.critedge10994.i:                   ; preds = %bb.di
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wk, i64 8
  %i.ww = load i32, ptr %i.wv, align 8, !tbaa !121 ; 2 uses
  %i.wx = icmp sgt i32 %i.ww, -1
  br i1 %i.wx, label %bb.dj, label %emit_type_narrowing_warning.exit359

bb.dj:                                            ; preds = %.critedge10420.critedge10994.i
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !53 ; 2 uses
  %.not.i358 = icmp eq ptr %i.wz, null
  br i1 %.not.i358, label %emit_type_narrowing_warning.exit359, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.xa = zext nneg i32 %i.ww to i64
  %i.xb = getelementptr inbounds nuw [32 x i8], ptr %i.wz, i64 %i.xa ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 28
  %i.xd = load i8, ptr %i.xc, align 4, !tbaa !55
  %i.xe = tail call ptr @zend_get_opcode_name(i8 noundef zeroext %i.xd) #17
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xb, i64 24
  %i.xg = load i32, ptr %i.xf, align 8, !tbaa !122
  br label %emit_type_narrowing_warning.exit359

emit_type_narrowing_warning.exit359:              ; preds = %.critedge10420.critedge10994.i, %bb.dj, %bb.dk
  %i.xh = phi ptr [ %i.xe, %bb.dk ], [ @.str, %bb.dj ], [ @.str, %.critedge10420.critedge10994.i ]
  %i.xi = phi i32 [ %i.xg, %bb.dk ], [ 0, %bb.dj ], [ 0, %.critedge10420.critedge10994.i ]
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !123
  tail call void (i32, ptr, i32, ptr, ...) @zend_error_at(i32 noundef 2, ptr noundef %i.xk, i32 noundef %i.xi, ptr noundef nonnull @.str.1, ptr noundef %i.xh) #17
  br label %_zend_update_type_info.exit

bb.dl:                                            ; preds = %bb.di
  store i32 %.58153.i, ptr %i.wh, align 8, !tbaa !117
  br label %_zend_update_type_info.exit

_ssa_op1_info.exit46.thread:                      ; preds = %bb.bj, %bb.bu, %bb.bv, %_ssa_op1_info.exit46, %_ssa_result_info.exit.thread
  switch i8 %i.nq, label %bb.aze [
    i8 1, label %bb.dm
    i8 2, label %bb.dm
    i8 3, label %bb.dm
    i8 4, label %bb.dm
    i8 12, label %bb.dm
    i8 5, label %bb.dm
    i8 9, label %bb.dm
    i8 10, label %bb.dm
    i8 11, label %bb.dm
    i8 6, label %bb.dm
    i8 7, label %bb.dm
    i8 8, label %bb.dm
    i8 13, label %bb.dt
    i8 57, label %bb.ea
    i8 14, label %bb.eh
    i8 15, label %bb.eh
    i8 16, label %bb.eh
    i8 17, label %bb.eh
    i8 18, label %bb.eh
    i8 19, label %bb.eh
    i8 20, label %bb.eh
    i8 21, label %bb.eh
    i8 -118, label %bb.eh
    i8 46, label %bb.eh
    i8 47, label %bb.eh
    i8 48, label %bb.eh
    i8 -60, label %bb.eh
    i8 52, label %bb.eh
    i8 -102, label %bb.eh
    i8 114, label %bb.eh
    i8 115, label %bb.eh
    i8 -108, label %bb.eh
    i8 -76, label %bb.eh
    i8 -105, label %bb.eh
    i8 -67, label %bb.eh
    i8 -62, label %bb.eh
    i8 51, label %bb.eo
    i8 31, label %bb.fy
    i8 -104, label %bb.fy
    i8 -87, label %bb.fy
    i8 -89, label %bb.fy
    i8 -58, label %switch.lookup
    i8 26, label %7
    i8 27, label %7
    i8 28, label %7
    i8 29, label %7
    i8 34, label %bb.mc
    i8 35, label %bb.mc
    i8 36, label %bb.ng
    i8 37, label %bb.ng
    i8 23, label %bb.oi
    i8 24, label %bb.rb
    i8 25, label %bb.tb
    i8 -124, label %bb.ua
    i8 -123, label %bb.ua
    i8 -122, label %bb.ua
    i8 -121, label %bb.ua
    i8 22, label %bb.uy
    i8 30, label %bb.wu
    i8 32, label %bb.xp
    i8 33, label %bb.zc
    i8 -88, label %bb.zr
    i8 -73, label %bb.zy
    i8 -53, label %bb.aaf
    i8 117, label %bb.aaj
    i8 -74, label %bb.aaw
    i8 -96, label %bb.abm
    i8 66, label %bb.acj
    i8 -71, label %bb.acj
    i8 67, label %bb.acq
    i8 -91, label %bb.acx
    i8 53, label %bb.ade
    i8 54, label %bb.ade
    i8 55, label %bb.ade
    i8 56, label %bb.ade
    i8 63, label %bb.adl
    i8 64, label %bb.adl
    i8 -92, label %bb.adl
    i8 -110, label %bb.aea
    i8 109, label %bb.aeo
    i8 68, label %bb.agi
    i8 110, label %bb.ahc
    i8 71, label %bb.ahs
    i8 72, label %bb.ahs
    i8 -109, label %bb.ajd
    i8 -103, label %bb.ajk
    i8 75, label %bb.ajr
    i8 76, label %bb.ajr
    i8 77, label %bb.ake
    i8 125, label %bb.ake
    i8 78, label %bb.ali
    i8 126, label %bb.ali
    i8 81, label %bb.amr
    i8 90, label %bb.amr
    i8 87, label %bb.amr
    i8 84, label %bb.amr
    i8 96, label %bb.amr
    i8 93, label %bb.amr
    i8 98, label %bb.amr
    i8 -101, label %bb.amr
    i8 -72, label %bb.apj
    i8 82, label %bb.apw
    i8 91, label %bb.apw
    i8 88, label %bb.apw
    i8 85, label %bb.apw
    i8 97, label %bb.apw
    i8 94, label %bb.apw
    i8 -83, label %bb.aqx
    i8 -80, label %bb.aqx
    i8 -81, label %bb.aqx
    i8 -82, label %bb.aqx
    i8 -78, label %bb.aqx
    i8 -79, label %bb.aqx
    i8 -51, label %bb.arm
    i8 -50, label %bb.arm
    i8 -49, label %bb.arm
    i8 -52, label %bb.asi
    i8 60, label %bb.asi
    i8 -127, label %bb.asi
    i8 -126, label %bb.asi
    i8 -125, label %bb.asi
    i8 -54, label %bb.asx
    i8 99, label %bb.atf
    i8 -75, label %bb.atm
    i8 121, label %bb.aug
    i8 -66, label %bb.aug
    i8 -85, label %bb.aug
    i8 -84, label %bb.aun
    i8 -65, label %bb.auu
    i8 -64, label %bb.auu
    i8 -63, label %bb.avb
    i8 123, label %bb.avi
    i8 122, label %bb.avp
    i8 124, label %bb.avw
    i8 -116, label %bb.aww
    i8 -56, label %bb.ayx
    i8 -99, label %bb.axk
    i8 -70, label %bb.axr
    i8 -114, label %bb.axy
    i8 39, label %bb.ayg
    i8 38, label %bb.ayg
    i8 41, label %bb.ayg
    i8 40, label %bb.ayg
    i8 -86, label %bb.ayq
  ]

bb.dm:                                            ; preds = %_ssa_op1_info.exit46.thread, %_ssa_op1_info.exit46.thread, %_ssa_op1_info.exit46.thread, %_ssa_op1_info.exit46.thread, %_ssa_op1_info.exit46.thread, %_ssa_op1_info.exit46.thread, %_ssa_op1_info.exit46.thread, %_ssa_op1_info.exit46.thread, %_ssa_op1_info.exit46.thread, %_ssa_op1_info.exit46.thread, %_ssa_op1_info.exit46.thread, %_ssa_op1_info.exit46.thread
  %i.xl = getelementptr inbounds nuw i8, ptr %.08507.i, i64 20
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !38 ; 4 uses
  %i.xn = icmp sgt i32 %i.xm, -1
  br i1 %i.xn, label %bb.dn, label %_zend_update_type_info.exit

bb.dn:                                            ; preds = %bb.dm
  %i.xo = tail call fastcc i32 @binary_op_result_type(ptr noundef %1, i8 noundef zeroext %i.nq, i32 noundef %.0.i481487, i32 noundef %.0.i57, i32 noundef %i.xm, i64 noundef %6) ; 2 uses
  %i.xp = and i32 %i.xo, 1024
  %.not10280.i = icmp eq i32 %i.xp, 0
  %i.xq = and i32 %i.xo, -268435457               ; 2 uses
  %i.xr = or i32 %i.xq, -520094722
  %spec.select.i = select i1 %.not10280.i, i32 %i.xq, i32 %i.xr ; 3 uses
  %i.xs = zext nneg i32 %i.xm to i64              ; 2 uses
  %i.xt = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %i.xs ; 2 uses
  %i.xu = load i32, ptr %i.xt, align 8, !tbaa !119 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.xw = load i32, ptr %i.xv, align 8, !tbaa !96
  %i.xx = icmp uge i32 %i.xu, %i.xw
  %i.xy = and i32 %spec.select.i, 1073741824
  %.not10281.i = icmp eq i32 %i.xy, 0
  %or.cond10303.i = select i1 %i.xx, i1 true, i1 %.not10281.i
  %i.xz = or i32 %spec.select.i, -2147483648
  %.18143.i = select i1 %or.cond10303.i, i32 %spec.select.i, i32 %i.xz ; 4 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !120
  %.not1708 = icmp slt i32 %i.xu, %i.yb
  br i1 %.not1708, label %bb.do, label %bb.dq

bb.do:                                            ; preds = %bb.dn
  %i.yc = and i32 %.18143.i, -2147482624
  %.not10282.i = icmp eq i32 %i.yc, 0
  %i.yd = or i32 %.18143.i, -1073741824
  %spec.select10304.i = select i1 %.not10282.i, i32 %.18143.i, i32 %i.yd ; 3 uses
  %i.ye = and i32 %spec.select10304.i, 1073741888
  %or.cond10305.i.not = icmp eq i32 %i.ye, 1073741888
  %i.yf = or i32 %spec.select10304.i, -2147483648 ; 2 uses
  %.38145.i = select i1 %or.cond10305.i.not, i32 %i.yf, i32 %spec.select10304.i ; 2 uses
  %i.yg = and i32 %.38145.i, 1073742080
  %or.cond10306.i.not = icmp eq i32 %i.yg, 1073742080
  %.48146.i = select i1 %or.cond10306.i.not, i32 %i.yf, i32 %.38145.i ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xt, i64 40
  %i.yi = load i8, ptr %i.yh, align 8
  %i.yj = lshr i8 %i.yi, 2
  %i.yk = and i8 %i.yj, 3                         ; 2 uses
  %.not10287.i = icmp eq i8 %i.yk, 0
  br i1 %.not10287.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.yl = icmp eq i8 %i.yk, 2
  %..i360 = select i1 %i.yl, i32 -1067384704, i32 -520093697
  %i.ym = or i32 %..i360, %.48146.i
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do, %bb.dn
  %.58147.i = phi i32 [ %i.ym, %bb.dp ], [ %.48146.i, %bb.do ], [ %.18143.i, %bb.dn ] ; 3 uses
  %i.yn = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.xs ; 2 uses
  %i.yo = load i32, ptr %i.yn, align 8, !tbaa !117 ; 2 uses
  %.not10288.i = icmp eq i32 %i.yo, %.58147.i
  br i1 %.not10288.i, label %_zend_update_type_info.exit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.yp = xor i32 %.58147.i, -1
  %i.yq = and i32 %i.yo, %i.yp
  %.not10291.i = icmp eq i32 %i.yq, 0
  br i1 %.not10291.i, label %bb.ds, label %.critedge.i

.critedge.i:                                      ; preds = %bb.dr
  tail call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr nonnull %i.g, i32 noundef %i.xm)
  br label %_zend_update_type_info.exit

bb.ds:                                            ; preds = %bb.dr
  store i32 %.58147.i, ptr %i.yn, align 8, !tbaa !117
  br label %_zend_update_type_info.exit

bb.dt:                                            ; preds = %_ssa_op1_info.exit46.thread
  %i.yr = getelementptr inbounds nuw i8, ptr %.08507.i, i64 20
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !38 ; 3 uses
  %i.yt = icmp sgt i32 %i.ys, -1
  br i1 %i.yt, label %bb.du, label %_zend_update_type_info.exit

bb.du:                                            ; preds = %bb.dt
  %i.yu = and i64 %6, 65536
  %.not10266.i = icmp ne i64 %i.yu, 0
  %i.yv = and i32 %.0.i481487, 256
  %.not10267.i = icmp eq i32 %i.yv, 0
  %or.cond10310.i = or i1 %.not10266.i, %.not10267.i
  %i.yw = and i32 %.0.i481487, 958
  %.not10265.i = icmp eq i32 %i.yw, 0
  %i.yx = and i32 %.0.i481487, 64
  %.not10264.i = icmp eq i32 %i.yx, 0
  %spec.select10309.i = select i1 %.not10264.i, i32 0, i32 -1073741760 ; 2 uses
  %i.yy = or disjoint i32 %spec.select10309.i, 16
  %.18386.i = select i1 %.not10265.i, i32 %spec.select10309.i, i32 %i.yy ; 2 uses
  %i.yz = or i32 %.18386.i, 1073742080
  %.28387.i = select i1 %or.cond10310.i, i32 %.18386.i, i32 %i.yz ; 3 uses
  %i.za = zext nneg i32 %i.ys to i64              ; 2 uses
  %i.zb = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %i.za ; 2 uses
  %i.zc = load i32, ptr %i.zb, align 8, !tbaa !119 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ze = load i32, ptr %i.zd, align 8, !tbaa !96
  %i.zf = icmp uge i32 %i.zc, %i.ze
  %i.zg = and i32 %.28387.i, 1073741824
  %.not10269.i = icmp eq i32 %i.zg, 0
  %or.cond10311.i = select i1 %i.zf, i1 true, i1 %.not10269.i
  %i.zh = or i32 %.28387.i, -2147483648
  %.18137.i = select i1 %or.cond10311.i, i32 %.28387.i, i32 %i.zh ; 4 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !120
  %.not1707 = icmp slt i32 %i.zc, %i.zj
  br i1 %.not1707, label %bb.dv, label %bb.dx

bb.dv:                                            ; preds = %bb.du
  %i.zk = and i32 %.18137.i, -2147482624
  %.not10270.i = icmp eq i32 %i.zk, 0
  %i.zl = or i32 %.18137.i, -1073741824
  %spec.select10312.i = select i1 %.not10270.i, i32 %.18137.i, i32 %i.zl ; 3 uses
  %i.zm = and i32 %spec.select10312.i, 1073741888
  %or.cond10313.i.not = icmp eq i32 %i.zm, 1073741888
  %i.zn = or i32 %spec.select10312.i, -2147483648 ; 2 uses
  %.38139.i = select i1 %or.cond10313.i.not, i32 %i.zn, i32 %spec.select10312.i ; 2 uses
  %i.zo = and i32 %.38139.i, 1073742080
  %or.cond10314.i.not = icmp eq i32 %i.zo, 1073742080
  %.48140.i = select i1 %or.cond10314.i.not, i32 %i.zn, i32 %.38139.i ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zb, i64 40
  %i.zq = load i8, ptr %i.zp, align 8
  %i.zr = lshr i8 %i.zq, 2
  %i.zs = and i8 %i.zr, 3                         ; 2 uses
  %.not10275.i = icmp eq i8 %i.zs, 0
  br i1 %.not10275.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.zt = icmp eq i8 %i.zs, 2
  %..i361 = select i1 %i.zt, i32 -1067384704, i32 -520093697
  %i.zu = or i32 %..i361, %.48140.i
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv, %bb.du
  %.58141.i = phi i32 [ %i.zu, %bb.dw ], [ %.48140.i, %bb.dv ], [ %.18137.i, %bb.du ] ; 3 uses
  %i.zv = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.za ; 2 uses
  %i.zw = load i32, ptr %i.zv, align 8, !tbaa !117 ; 2 uses
  %.not10276.i = icmp eq i32 %i.zw, %.58141.i
  br i1 %.not10276.i, label %_zend_update_type_info.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.zx = xor i32 %.58141.i, -1
  %i.zy = and i32 %i.zw, %i.zx
  %.not10279.i = icmp eq i32 %i.zy, 0
  br i1 %.not10279.i, label %bb.dz, label %.critedge10316.i

.critedge10316.i:                                 ; preds = %bb.dy
  tail call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr nonnull %i.g, i32 noundef %i.ys)
  br label %_zend_update_type_info.exit

bb.dz:                                            ; preds = %bb.dy
  store i32 %.58141.i, ptr %i.zv, align 8, !tbaa !117
  br label %_zend_update_type_info.exit

bb.ea:                                            ; preds = %_ssa_op1_info.exit46.thread
  %i.zz = getelementptr inbounds nuw i8, ptr %.08507.i, i64 20
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !38 ; 3 uses
  %i.aab = icmp sgt i32 %i.aaa, -1
  br i1 %i.aab, label %bb.eb, label %_zend_update_type_info.exit

bb.eb:                                            ; preds = %bb.ea
  %i.aac = zext nneg i32 %i.aaa to i64            ; 2 uses
  %i.aad = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %i.aac ; 2 uses
  %i.aae = load i32, ptr %i.aad, align 8, !tbaa !119
  %i.aaf = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !120
  %.not1706 = icmp slt i32 %i.aae, %i.aag
  br i1 %.not1706, label %bb.ec, label %bb.ee

bb.ec:                                            ; preds = %bb.eb
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aad, i64 40
  %i.aai = load i8, ptr %i.aah, align 8
  %i.aaj = lshr i8 %i.aai, 2
  %i.aak = and i8 %i.aaj, 3                       ; 2 uses
  %.not10259.i = icmp eq i8 %i.aak, 0
  br i1 %.not10259.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.aal = icmp eq i8 %i.aak, 2
  %i.aam = select i1 %i.aal, i32 -1067384688, i32 -520093697
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec, %bb.eb
  %.58135.i = phi i32 [ %i.aam, %bb.ed ], [ 16, %bb.ec ], [ 16, %bb.eb ] ; 3 uses
  %i.aan = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.aac ; 2 uses
  %i.aao = load i32, ptr %i.aan, align 8, !tbaa !117 ; 2 uses
  %.not10260.i = icmp eq i32 %i.aao, %.58135.i
  br i1 %.not10260.i, label %_zend_update_type_info.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.aap = xor i32 %.58135.i, -1
  %i.aaq = and i32 %i.aao, %i.aap
  %.not10263.i = icmp eq i32 %i.aaq, 0
  br i1 %.not10263.i, label %bb.eg, label %.critedge10320.i
end_hunk_1
begin_hunk_2_@zend_update_type_info:bb.a
  %i.aka = icmp uge i32 %i.ajx, %i.ajz
  %i.akb = and i32 %spec.select10362.i, 1073741824
  %.not10188.i = icmp eq i32 %i.akb, 0
  %or.cond10363.i = select i1 %i.aka, i1 true, i1 %.not10188.i
  %i.akc = or i32 %spec.select10362.i, -2147483648
  %.18097.i = select i1 %or.cond10363.i, i32 %spec.select10362.i, i32 %i.akc ; 4 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ake = load i32, ptr %i.akd, align 4, !tbaa !120
  %.not1702 = icmp slt i32 %i.ajx, %i.ake
  br i1 %.not1702, label %bb.gu, label %bb.gw

bb.gu:                                            ; preds = %bb.gt
  %i.akf = and i32 %.18097.i, -2147482624
  %.not10189.i = icmp eq i32 %i.akf, 0
  %i.akg = or i32 %.18097.i, -1073741824
  %spec.select10364.i = select i1 %.not10189.i, i32 %.18097.i, i32 %i.akg ; 3 uses
  %i.akh = and i32 %spec.select10364.i, 1073741888
  %or.cond10365.i.not = icmp eq i32 %i.akh, 1073741888
  %i.aki = or i32 %spec.select10364.i, -2147483648 ; 2 uses
  %.38099.i = select i1 %or.cond10365.i.not, i32 %i.aki, i32 %spec.select10364.i ; 2 uses
  %i.akj = and i32 %.38099.i, 1073742080
  %or.cond10366.i.not = icmp eq i32 %i.akj, 1073742080
  %.48100.i = select i1 %or.cond10366.i.not, i32 %i.aki, i32 %.38099.i ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %i.ajw, i64 40
  %i.akl = load i8, ptr %i.akk, align 8
  %i.akm = lshr i8 %i.akl, 2
  %i.akn = and i8 %i.akm, 3                       ; 2 uses
  %.not10194.i = icmp eq i8 %i.akn, 0
  br i1 %.not10194.i, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.ako = icmp eq i8 %i.akn, 2
  %..i367 = select i1 %i.ako, i32 -1067384704, i32 -520093697
  %i.akp = or i32 %..i367, %.48100.i
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gu, %bb.gt
  %.58101.i = phi i32 [ %i.akp, %bb.gv ], [ %.48100.i, %bb.gu ], [ %.18097.i, %bb.gt ] ; 3 uses
  %i.akq = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.ajv ; 2 uses
  %i.akr = load i32, ptr %i.akq, align 8, !tbaa !117 ; 2 uses
  %.not10195.i = icmp eq i32 %i.akr, %.58101.i
  br i1 %.not10195.i, label %bb.gz, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.aks = xor i32 %.58101.i, -1
  %i.akt = and i32 %i.akr, %i.aks
  %.not10198.i = icmp eq i32 %i.akt, 0
  br i1 %.not10198.i, label %bb.gy, label %.critedge10368.i

.critedge10368.i:                                 ; preds = %bb.gx
  %.val198 = load ptr, ptr %i.f, align 8, !tbaa !27
  tail call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr %.val198, i32 noundef %i.ajq)
  br label %_zend_update_type_info.exit

bb.gy:                                            ; preds = %bb.gx
  store i32 %.58101.i, ptr %i.akq, align 8, !tbaa !117
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gw, %.thread1505
  %i.aku = load i32, ptr %.08507.i, align 4, !tbaa !57 ; 2 uses
  %i.akv = icmp sgt i32 %i.aku, -1
  br i1 %i.akv, label %bb.ha, label %bb.hg

bb.ha:                                            ; preds = %bb.gz
  %i.akw = zext nneg i32 %i.aku to i64
  %i.akx = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.akw ; 3 uses
  %i.aky = load i32, ptr %i.akx, align 8, !tbaa !117
  %i.akz = and i32 %i.aky, 256
  %.not10199.i = icmp eq i32 %i.akz, 0
  br i1 %.not10199.i, label %bb.hg, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akx, i64 32
  %i.alb = load ptr, ptr %i.ala, align 8, !tbaa !124 ; 4 uses
  %.not10200.i = icmp eq ptr %i.alb, null
  br i1 %.not10200.i, label %bb.hg, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.alc = sext i32 %i.ajq to i64
  %i.ald = getelementptr inbounds [40 x i8], ptr %i.i, i64 %i.alc ; 4 uses
  %i.ale = load i32, ptr %i.ald, align 8, !tbaa !117
  %i.alf = and i32 %i.ale, 1024
  %.not10201.i = icmp eq i32 %i.alf, 0
  br i1 %.not10201.i, label %bb.hd, label %bb.hg

bb.hd:                                            ; preds = %bb.hc
  br i1 %i.ajr, label %bb.he, label %_zend_update_type_info.exit

bb.he:                                            ; preds = %bb.hd
  %i.alg = getelementptr inbounds nuw i8, ptr %i.akx, i64 4
  %i.alh = load i8, ptr %i.alg, align 4
  %i.ali = lshr i8 %i.alh, 1
  %.lobit10202.i = and i8 %i.ali, 1
  %i.alj = getelementptr inbounds nuw i8, ptr %i.alb, i64 28
  %i.alk = load i32, ptr %i.alj, align 4, !tbaa !135
  %i.all = and i32 %i.alk, 32
  %.not10203.i = icmp eq i32 %i.all, 0
  %spec.select10371.i = select i1 %.not10203.i, i8 %.lobit10202.i, i8 0 ; 2 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %i.ald, i64 32 ; 2 uses
  %i.aln = load ptr, ptr %i.alm, align 8, !tbaa !124
  %.not10204.i = icmp eq ptr %i.aln, %i.alb
  %i.alo = getelementptr inbounds nuw i8, ptr %i.ald, i64 4
  %i.alp = load i8, ptr %i.alo, align 4           ; 2 uses
  br i1 %.not10204.i, label %bb.hf, label %._crit_edge1018

bb.hf:                                            ; preds = %bb.he
  %i.alq = lshr i8 %i.alp, 1
  %.lobit10205.i = and i8 %i.alq, 1
  %.not10206.i = icmp eq i8 %.lobit10205.i, %spec.select10371.i
  br i1 %.not10206.i, label %_zend_update_type_info.exit, label %._crit_edge1018

._crit_edge1018:                                  ; preds = %bb.he, %bb.hf
  store ptr %i.alb, ptr %i.alm, align 8, !tbaa !124
  %i.alr = getelementptr inbounds nuw i8, ptr %i.ald, i64 4
  %i.als = shl nuw nsw i8 %spec.select10371.i, 1
  %i.alt = and i8 %i.alp, -3
  %i.alu = or disjoint i8 %i.alt, %i.als
  store i8 %i.alu, ptr %i.alr, align 4
  br label %_zend_update_type_info.exit

bb.hg:                                            ; preds = %bb.hc, %bb.hb, %bb.ha, %bb.gz
  br i1 %i.ajr, label %bb.hh, label %_zend_update_type_info.exit

bb.hh:                                            ; preds = %bb.hg
  %i.alv = zext nneg i32 %i.ajq to i64
  %i.alw = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.alv ; 3 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 32 ; 2 uses
  %i.aly = load ptr, ptr %i.alx, align 8, !tbaa !124
  %.not10207.i = icmp eq ptr %i.aly, null
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alw, i64 4
  %i.ama = load i8, ptr %i.alz, align 4           ; 2 uses
  %i.amb = and i8 %i.ama, 2
  %.not10208.i = icmp eq i8 %i.amb, 0
  %or.cond1555 = select i1 %.not10207.i, i1 %.not10208.i, i1 false
  br i1 %or.cond1555, label %_zend_update_type_info.exit, label %._crit_edge1021

._crit_edge1021:                                  ; preds = %bb.hh
  store ptr null, ptr %i.alx, align 8, !tbaa !124
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alw, i64 4
  %i.amd = and i8 %i.ama, -3
  store i8 %i.amd, ptr %i.amc, align 4
  br label %_zend_update_type_info.exit

switch.lookup:                                    ; preds = %_ssa_op1_info.exit46.thread
  %i.ame = getelementptr inbounds nuw i8, ptr %.08506.i, i64 20
  %i.amf = load i32, ptr %i.ame, align 4, !tbaa !93
  %i.amg = and i32 %i.amf, 3
  %i.amh = zext nneg i32 %i.amg to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.zend_infer_types_ex, i64 %i.amh
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32       ; 3 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %.08507.i, i64 20
  %i.amj = load i32, ptr %i.ami, align 4, !tbaa !38 ; 3 uses
  %i.amk = icmp sgt i32 %i.amj, -1
  br i1 %i.amk, label %bb.hi, label %_zend_update_type_info.exit

bb.hi:                                            ; preds = %switch.lookup
  %i.aml = zext nneg i32 %i.amj to i64            ; 2 uses
  %i.amm = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %i.aml ; 2 uses
  %i.amn = load i32, ptr %i.amm, align 8, !tbaa !119
  %i.amo = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.amp = load i32, ptr %i.amo, align 4, !tbaa !120
  %.not1700 = icmp slt i32 %i.amn, %i.amp
  br i1 %.not1700, label %bb.hj, label %bb.hl

bb.hj:                                            ; preds = %bb.hi
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amm, i64 40
  %i.amr = load i8, ptr %i.amq, align 8
  %i.ams = lshr i8 %i.amr, 2
  %i.amt = and i8 %i.ams, 3                       ; 2 uses
  %.not10155.i = icmp eq i8 %i.amt, 0
  br i1 %.not10155.i, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.amu = icmp eq i8 %i.amt, 2
  %..i368 = select i1 %i.amu, i32 -1067384704, i32 -520093697
  %i.amv = or i32 %..i368, %switch.ext
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj, %bb.hi
  %.58093.i = phi i32 [ %i.amv, %bb.hk ], [ %switch.ext, %bb.hj ], [ %switch.ext, %bb.hi ] ; 3 uses
  %i.amw = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.aml ; 2 uses
  %i.amx = load i32, ptr %i.amw, align 8, !tbaa !117 ; 2 uses
  %.not10156.i = icmp eq i32 %i.amx, %.58093.i
  br i1 %.not10156.i, label %_zend_update_type_info.exit, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.amy = xor i32 %.58093.i, -1
  %i.amz = and i32 %i.amx, %i.amy
  %.not10159.i = icmp eq i32 %i.amz, 0
  br i1 %.not10159.i, label %bb.hn, label %.critedge10373.i

.critedge10373.i:                                 ; preds = %bb.hm
  tail call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr nonnull %i.g, i32 noundef %i.amj)
  br label %_zend_update_type_info.exit

bb.hn:                                            ; preds = %bb.hm
  store i32 %.58093.i, ptr %i.amw, align 8, !tbaa !117
  br label %_zend_update_type_info.exit

7:                                                ; preds = %_ssa_op1_info.exit46.thread, %_ssa_op1_info.exit46.thread, %_ssa_op1_info.exit46.thread, %_ssa_op1_info.exit46.thread
  switch i8 %i.nq, label %bb.ja [
    i8 28, label %bb.ho
    i8 27, label %bb.ib
    i8 29, label %bb.in
  ]

bb.ho:                                            ; preds = %7
  %i.ana = tail call fastcc ptr @zend_fetch_prop_info(ptr noundef %0, ptr noundef %1, ptr noundef %.08506.i, ptr noundef %.08507.i) ; 10 uses
  %.not.i369 = icmp eq ptr %i.ana, null
  br i1 %.not.i369, label %zend_fetch_prop_type.exit, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 40
  %i.anc = load ptr, ptr %i.anb, align 8
  %i.and = getelementptr inbounds nuw i8, ptr %i.ana, i64 48
  %i.ane = load i32, ptr %i.and, align 8
  %i.anf = tail call fastcc i32 @zend_convert_type(ptr noundef %2, ptr %i.anc, i32 %i.ane, ptr noundef null)
  br label %zend_fetch_prop_type.exit

zend_fetch_prop_type.exit:                        ; preds = %bb.ho, %bb.hp
  %.0.i370 = phi i32 [ %i.anf, %bb.hp ], [ -520094722, %bb.ho ] ; 7 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %.08506.i, i64 32
  %i.anh = getelementptr inbounds nuw i8, ptr %.08507.i, i64 36
  %i.ani = getelementptr inbounds nuw i8, ptr %.08506.i, i64 61
  %i.anj = load i8, ptr %i.ani, align 1, !tbaa !80
  %i.ank = icmp eq i8 %i.anj, 1
  br i1 %i.ank, label %bb.hq, label %bb.hy

bb.hq:                                            ; preds = %zend_fetch_prop_type.exit
  %i.anl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.anm = load i32, ptr %i.anl, align 4, !tbaa !81
  %i.ann = and i32 %i.anm, 33554432
  %.not9.i = icmp eq i32 %i.ann, 0
  br i1 %.not9.i, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.ano = getelementptr inbounds nuw i8, ptr %.08506.i, i64 40
  %i.anp = load i32, ptr %i.ano, align 8, !tbaa !33
  %i.anq = sext i32 %i.anp to i64
  %i.anr = getelementptr inbounds i8, ptr %i.ang, i64 %i.anq
  br label %bb.ht

bb.hs:                                            ; preds = %bb.hq
  %i.ans = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ant = load ptr, ptr %i.ans, align 8, !tbaa !82
  %i.anu = getelementptr inbounds nuw i8, ptr %.08506.i, i64 40
  %i.anv = load i32, ptr %i.anu, align 8, !tbaa !33
  %i.anw = zext i32 %i.anv to i64
  %i.anx = getelementptr inbounds nuw [16 x i8], ptr %i.ant, i64 %i.anw
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %i.any = phi ptr [ %i.anr, %bb.hr ], [ %i.anx, %bb.hs ] ; 3 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 8
  %i.aoa = load i8, ptr %i.anz, align 8, !tbaa !33 ; 3 uses
  switch i8 %i.aoa, label %bb.hv [
    i8 11, label %_ssa_op1_info.exit
    i8 7, label %bb.hu
  ]

bb.hu:                                            ; preds = %bb.ht
  %i.aob = tail call i32 @zend_array_type_info(ptr noundef nonnull %i.any)
  br label %_ssa_op1_info.exit

bb.hv:                                            ; preds = %bb.ht
  %i.aoc = zext nneg i8 %i.aoa to i32
  %i.aod = shl nuw i32 1, %i.aoc                  ; 2 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.any, i64 9
  %i.aof = load i8, ptr %i.aoe, align 1, !tbaa !33
  %.not.i133 = icmp eq i8 %i.aof, 0
  br i1 %.not.i133, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.aog = or i32 %i.aod, -1073741824
  br label %_ssa_op1_info.exit

bb.hx:                                            ; preds = %bb.hv
  %i.aoh = icmp eq i8 %i.aoa, 6
  %spec.select.i135 = select i1 %i.aoh, i32 -2147483584, i32 %i.aod
  br label %_ssa_op1_info.exit

bb.hy:                                            ; preds = %zend_fetch_prop_type.exit
  %i.aoi = load ptr, ptr %i.h, align 8, !tbaa !83 ; 2 uses
  %.not.i6 = icmp eq ptr %i.aoi, null
  br i1 %.not.i6, label %_ssa_op1_info.exit, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.aoj = load i32, ptr %i.anh, align 4, !tbaa !57 ; 2 uses
  %i.aok = icmp sgt i32 %i.aoj, -1
  br i1 %i.aok, label %bb.ia, label %_ssa_op1_info.exit

bb.ia:                                            ; preds = %bb.hz
  %i.aol = zext nneg i32 %i.aoj to i64
  %i.aom = getelementptr inbounds nuw [40 x i8], ptr %i.aoi, i64 %i.aol
  %i.aon = load i32, ptr %i.aom, align 8, !tbaa !117
  br label %_ssa_op1_info.exit

bb.ib:                                            ; preds = %7
  %i.aoo = lshr i32 %.0.i481487, 10
  %spec.select10374.i = and i32 %i.aoo, 1024      ; 7 uses
  %i.aop = tail call i32 @zend_array_element_type(i32 noundef %.0.i481487, i8 noundef zeroext %i.n, i32 noundef 1, i32 noundef 0) ; 7 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %.08506.i, i64 32
  %i.aor = getelementptr inbounds nuw i8, ptr %.08507.i, i64 36
  %i.aos = getelementptr inbounds nuw i8, ptr %.08506.i, i64 61
  %i.aot = load i8, ptr %i.aos, align 1, !tbaa !80
  %i.aou = icmp eq i8 %i.aot, 1
  br i1 %i.aou, label %bb.ic, label %bb.ik

bb.ic:                                            ; preds = %bb.ib
  %i.aov = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aow = load i32, ptr %i.aov, align 4, !tbaa !81
  %i.aox = and i32 %i.aow, 33554432
  %.not9.i9 = icmp eq i32 %i.aox, 0
  br i1 %.not9.i9, label %bb.ie, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.aoy = getelementptr inbounds nuw i8, ptr %.08506.i, i64 40
  %i.aoz = load i32, ptr %i.aoy, align 8, !tbaa !33
  %i.apa = sext i32 %i.aoz to i64
  %i.apb = getelementptr inbounds i8, ptr %i.aoq, i64 %i.apa
  br label %bb.if

bb.ie:                                            ; preds = %bb.ic
  %i.apc = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.apd = load ptr, ptr %i.apc, align 8, !tbaa !82
  %i.ape = getelementptr inbounds nuw i8, ptr %.08506.i, i64 40
  %i.apf = load i32, ptr %i.ape, align 8, !tbaa !33
  %i.apg = zext i32 %i.apf to i64
  %i.aph = getelementptr inbounds nuw [16 x i8], ptr %i.apd, i64 %i.apg
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id
  %i.api = phi ptr [ %i.apb, %bb.id ], [ %i.aph, %bb.ie ] ; 3 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %i.api, i64 8
  %i.apk = load i8, ptr %i.apj, align 8, !tbaa !33 ; 3 uses
  switch i8 %i.apk, label %bb.ih [
    i8 11, label %_ssa_op1_info.exit
    i8 7, label %bb.ig
  ]

bb.ig:                                            ; preds = %bb.if
  %i.apl = tail call i32 @zend_array_type_info(ptr noundef nonnull %i.api)
  br label %_ssa_op1_info.exit

bb.ih:                                            ; preds = %bb.if
  %i.apm = zext nneg i8 %i.apk to i32
  %i.apn = shl nuw i32 1, %i.apm                  ; 2 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %i.api, i64 9
  %i.app = load i8, ptr %i.apo, align 1, !tbaa !33
  %.not.i129 = icmp eq i8 %i.app, 0
  br i1 %.not.i129, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.apq = or i32 %i.apn, -1073741824
  br label %_ssa_op1_info.exit

bb.ij:                                            ; preds = %bb.ih
  %i.apr = icmp eq i8 %i.apk, 6
  %spec.select.i131 = select i1 %i.apr, i32 -2147483584, i32 %i.apn
  br label %_ssa_op1_info.exit

bb.ik:                                            ; preds = %bb.ib
  %.not.i7 = icmp eq ptr %i.i, null
  br i1 %.not.i7, label %_ssa_op1_info.exit, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.aps = load i32, ptr %i.aor, align 4, !tbaa !57 ; 2 uses
  %i.apt = icmp sgt i32 %i.aps, -1
  br i1 %i.apt, label %bb.im, label %_ssa_op1_info.exit

bb.im:                                            ; preds = %bb.il
  %i.apu = zext nneg i32 %i.aps to i64
  %i.apv = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.apu
  %i.apw = load i32, ptr %i.apv, align 8, !tbaa !117
  br label %_ssa_op1_info.exit

bb.in:                                            ; preds = %7
  %i.apx = tail call fastcc ptr @zend_fetch_static_prop_info(ptr noundef %2, ptr noundef %0, ptr noundef %.08506.i) ; 10 uses
  %.not.i371 = icmp eq ptr %i.apx, null
  br i1 %.not.i371, label %zend_fetch_prop_type.exit373, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apx, i64 40
  %i.apz = load ptr, ptr %i.apy, align 8
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apx, i64 48
  %i.aqb = load i32, ptr %i.aqa, align 8
  %i.aqc = tail call fastcc i32 @zend_convert_type(ptr noundef %2, ptr %i.apz, i32 %i.aqb, ptr noundef null)
  br label %zend_fetch_prop_type.exit373

zend_fetch_prop_type.exit373:                     ; preds = %bb.in, %bb.io
  %.0.i372 = phi i32 [ %i.aqc, %bb.io ], [ -520094722, %bb.in ] ; 7 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %.08506.i, i64 32
  %i.aqe = getelementptr inbounds nuw i8, ptr %.08507.i, i64 36
  %i.aqf = getelementptr inbounds nuw i8, ptr %.08506.i, i64 61
  %i.aqg = load i8, ptr %i.aqf, align 1, !tbaa !80
  %i.aqh = icmp eq i8 %i.aqg, 1
  br i1 %i.aqh, label %bb.ip, label %bb.ix

bb.ip:                                            ; preds = %zend_fetch_prop_type.exit373
  %i.aqi = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aqj = load i32, ptr %i.aqi, align 4, !tbaa !81
  %i.aqk = and i32 %i.aqj, 33554432
  %.not9.i13 = icmp eq i32 %i.aqk, 0
  br i1 %.not9.i13, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.aql = getelementptr inbounds nuw i8, ptr %.08506.i, i64 40
  %i.aqm = load i32, ptr %i.aql, align 8, !tbaa !33
  %i.aqn = sext i32 %i.aqm to i64
  %i.aqo = getelementptr inbounds i8, ptr %i.aqd, i64 %i.aqn
  br label %bb.is

bb.ir:                                            ; preds = %bb.ip
  %i.aqp = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aqq = load ptr, ptr %i.aqp, align 8, !tbaa !82
  %i.aqr = getelementptr inbounds nuw i8, ptr %.08506.i, i64 40
  %i.aqs = load i32, ptr %i.aqr, align 8, !tbaa !33
  %i.aqt = zext i32 %i.aqs to i64
  %i.aqu = getelementptr inbounds nuw [16 x i8], ptr %i.aqq, i64 %i.aqt
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %i.aqv = phi ptr [ %i.aqo, %bb.iq ], [ %i.aqu, %bb.ir ] ; 3 uses
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqv, i64 8
  %i.aqx = load i8, ptr %i.aqw, align 8, !tbaa !33 ; 3 uses
  switch i8 %i.aqx, label %bb.iu [
    i8 11, label %_ssa_op1_info.exit
    i8 7, label %bb.it
  ]

bb.it:                                            ; preds = %bb.is
  %i.aqy = tail call i32 @zend_array_type_info(ptr noundef nonnull %i.aqv)
  br label %_ssa_op1_info.exit

bb.iu:                                            ; preds = %bb.is
  %i.aqz = zext nneg i8 %i.aqx to i32
  %i.ara = shl nuw i32 1, %i.aqz                  ; 2 uses
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aqv, i64 9
  %i.arc = load i8, ptr %i.arb, align 1, !tbaa !33
  %.not.i125 = icmp eq i8 %i.arc, 0
  br i1 %.not.i125, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.ard = or i32 %i.ara, -1073741824
  br label %_ssa_op1_info.exit

bb.iw:                                            ; preds = %bb.iu
  %i.are = icmp eq i8 %i.aqx, 6
  %spec.select.i127 = select i1 %i.are, i32 -2147483584, i32 %i.ara
  br label %_ssa_op1_info.exit

bb.ix:                                            ; preds = %zend_fetch_prop_type.exit373
  %i.arf = load ptr, ptr %i.h, align 8, !tbaa !83 ; 2 uses
  %.not.i11 = icmp eq ptr %i.arf, null
  br i1 %.not.i11, label %_ssa_op1_info.exit, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.arg = load i32, ptr %i.aqe, align 4, !tbaa !57 ; 2 uses
  %i.arh = icmp sgt i32 %i.arg, -1
  br i1 %i.arh, label %bb.iz, label %_ssa_op1_info.exit

bb.iz:                                            ; preds = %bb.iy
  %i.ari = zext nneg i32 %i.arg to i64
  %i.arj = getelementptr inbounds nuw [40 x i8], ptr %i.arf, i64 %i.ari
  %i.ark = load i32, ptr %i.arj, align 8, !tbaa !117
  br label %_ssa_op1_info.exit

bb.ja:                                            ; preds = %7
  %i.arl = and i32 %.0.i481487, 1024
  br label %_ssa_op1_info.exit

_ssa_op1_info.exit:                               ; preds = %bb.is, %bb.if, %bb.ht, %bb.ix, %bb.ik, %bb.hy, %bb.it, %bb.iv, %bb.iw, %bb.iy, %bb.iz, %bb.ig, %bb.ii, %bb.ij, %bb.il, %bb.im, %bb.hu, %bb.hw, %bb.hx, %bb.hz, %bb.ia, %bb.ja
  %.08504.i = phi i32 [ %.0.i481487, %bb.ja ], [ %.0.i370, %bb.ht ], [ %i.aop, %bb.if ], [ %.0.i370, %bb.ia ], [ %.0.i370, %bb.hz ], [ %.0.i372, %bb.is ], [ %.0.i370, %bb.hx ], [ %.0.i370, %bb.hw ], [ %.0.i370, %bb.hu ], [ %i.aop, %bb.im ], [ %i.aop, %bb.il ], [ %.0.i370, %bb.hy ], [ %i.aop, %bb.ij ], [ %i.aop, %bb.ii ], [ %i.aop, %bb.ig ], [ %.0.i372, %bb.iz ], [ %.0.i372, %bb.iy ], [ %i.aop, %bb.ik ], [ %.0.i372, %bb.iw ], [ %.0.i372, %bb.iv ], [ %.0.i372, %bb.it ], [ %.0.i372, %bb.ix ] ; 3 uses
  %.08503.i = phi i32 [ %.0.i57, %bb.ja ], [ -521143298, %bb.ht ], [ -521143298, %bb.if ], [ %i.aon, %bb.ia ], [ -486539265, %bb.hz ], [ -521143298, %bb.is ], [ %spec.select.i135, %bb.hx ], [ %i.aog, %bb.hw ], [ %i.aob, %bb.hu ], [ %i.apw, %bb.im ], [ -486539265, %bb.il ], [ -486539265, %bb.hy ], [ %spec.select.i131, %bb.ij ], [ %i.apq, %bb.ii ], [ %i.apl, %bb.ig ], [ %i.ark, %bb.iz ], [ -486539265, %bb.iy ], [ -486539265, %bb.ik ], [ %spec.select.i127, %bb.iw ], [ %i.ard, %bb.iv ], [ %i.aqy, %bb.it ], [ -486539265, %bb.ix ] ; 3 uses
  %.158400.i = phi i32 [ %i.arl, %bb.ja ], [ 0, %bb.ht ], [ %spec.select10374.i, %bb.if ], [ 0, %bb.ia ], [ 0, %bb.hz ], [ 0, %bb.is ], [ 0, %bb.hx ], [ 0, %bb.hw ], [ 0, %bb.hu ], [ %spec.select10374.i, %bb.im ], [ %spec.select10374.i, %bb.il ], [ 0, %bb.hy ], [ %spec.select10374.i, %bb.ij ], [ %spec.select10374.i, %bb.ii ], [ %spec.select10374.i, %bb.ig ], [ 0, %bb.iz ], [ 0, %bb.iy ], [ %spec.select10374.i, %bb.ik ], [ 0, %bb.iw ], [ 0, %bb.iv ], [ 0, %bb.it ], [ 0, %bb.ix ] ; 2 uses
  %.08384.i = phi i32 [ 0, %bb.ja ], [ %.0.i481487, %bb.ht ], [ %.0.i481487, %bb.if ], [ %.0.i481487, %bb.ia ], [ %.0.i481487, %bb.hz ], [ 0, %bb.is ], [ %.0.i481487, %bb.hx ], [ %.0.i481487, %bb.hw ], [ %.0.i481487, %bb.hu ], [ %.0.i481487, %bb.im ], [ %.0.i481487, %bb.il ], [ %.0.i481487, %bb.hy ], [ %.0.i481487, %bb.ij ], [ %.0.i481487, %bb.ii ], [ %.0.i481487, %bb.ig ], [ 0, %bb.iz ], [ 0, %bb.iy ], [ %.0.i481487, %bb.ik ], [ 0, %bb.iw ], [ 0, %bb.iv ], [ 0, %bb.it ], [ 0, %bb.ix ] ; 3 uses
  %.08087.i = phi ptr [ null, %bb.ja ], [ %i.ana, %bb.ht ], [ null, %bb.if ], [ %i.ana, %bb.ia ], [ %i.ana, %bb.hz ], [ %i.apx, %bb.is ], [ %i.ana, %bb.hx ], [ %i.ana, %bb.hw ], [ %i.ana, %bb.hu ], [ null, %bb.im ], [ null, %bb.il ], [ %i.ana, %bb.hy ], [ null, %bb.ij ], [ null, %bb.ii ], [ null, %bb.ig ], [ %i.apx, %bb.iz ], [ %i.apx, %bb.iy ], [ null, %bb.ik ], [ %i.apx, %bb.iw ], [ %i.apx, %bb.iv ], [ %i.apx, %bb.it ], [ %i.apx, %bb.ix ] ; 6 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %.08506.i, i64 20
  %i.arn = load i32, ptr %i.arm, align 4, !tbaa !93
  %i.aro = trunc i32 %i.arn to i8                 ; 2 uses
  %i.arp = load i8, ptr %i.np, align 4, !tbaa !55 ; 2 uses
  %i.arq = icmp eq i8 %i.arp, 26
  br i1 %i.arq, label %.thread496, label %bb.jb

.thread496:                                       ; preds = %_ssa_op1_info.exit
  %i.arr = getelementptr inbounds nuw i8, ptr %.08507.i, i64 12
  %i.ars = load i32, ptr %i.arr, align 4, !tbaa !36 ; 2 uses
  %i.art = tail call fastcc i32 @binary_op_result_type(ptr noundef %1, i8 noundef zeroext %i.aro, i32 noundef %.08504.i, i32 noundef %.08503.i, i32 noundef %i.ars, i64 noundef %6) ; 2 uses
  %i.aru = or i32 %i.art, %.158400.i              ; 2 uses
  %i.arv = and i32 %i.art, 192
  %.not10075.i497 = icmp eq i32 %i.arv, 0
  %i.arw = or i32 %i.aru, -1073741824             ; 2 uses
  %spec.select10376.i498 = select i1 %.not10075.i497, i32 %i.aru, i32 %i.arw ; 2 uses
  %i.arx = and i32 %spec.select10376.i498, 768
  %.not10076.i499 = icmp eq i32 %i.arx, 0
  %.178402.i500 = select i1 %.not10076.i499, i32 %spec.select10376.i498, i32 %i.arw ; 3 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %.08507.i, i64 20
  %i.arz = load i32, ptr %i.ary, align 4, !tbaa !38
  %i.asa = icmp slt i32 %i.arz, 0
  %i.asb = and i32 %.178402.i500, 1073741824
  %.not10077.i = icmp eq i32 %i.asb, 0
  %or.cond10393.i = select i1 %i.asa, i1 true, i1 %.not10077.i
  %i.asc = or i32 %.178402.i500, -2147483648
  %spec.select11001.i = select i1 %or.cond10393.i, i32 %.178402.i500, i32 %i.asc
  br label %bb.kv

bb.jb:                                            ; preds = %_ssa_op1_info.exit
  %i.asd = tail call fastcc i32 @binary_op_result_type(ptr noundef %1, i8 noundef zeroext %i.aro, i32 noundef %.08504.i, i32 noundef %.08503.i, i32 noundef -1, i64 noundef %6) ; 2 uses
  %i.ase = or i32 %i.asd, %.158400.i              ; 2 uses
  %i.asf = and i32 %i.asd, 192
  %.not10075.i = icmp eq i32 %i.asf, 0
  %i.asg = or i32 %i.ase, -1073741824             ; 2 uses
  %spec.select10376.i = select i1 %.not10075.i, i32 %i.ase, i32 %i.asg ; 2 uses
  %i.ash = and i32 %spec.select10376.i, 768
  %.not10076.i = icmp eq i32 %i.ash, 0
  %.178402.i = select i1 %.not10076.i, i32 %spec.select10376.i, i32 %i.asg ; 17 uses
  switch i8 %i.arp, label %._crit_edge1006.a [
    i8 27, label %bb.jc
    i8 28, label %bb.ke
    i8 29, label %bb.lc
  ]

._crit_edge1006.a:                                ; preds = %bb.jb
  %.phi.trans.insert1007 = getelementptr inbounds nuw i8, ptr %.08507.i, i64 12
  %.pre1008 = load i32, ptr %.phi.trans.insert1007, align 4, !tbaa !36
  br label %bb.kv

bb.jc:                                            ; preds = %bb.jb
  %i.asi = load i8, ptr %i.m, align 1, !tbaa !80
  %i.asj = icmp eq i8 %i.asi, 8
  br i1 %i.asj, label %bb.jd, label %bb.lc

bb.jd:                                            ; preds = %bb.jc
  %i.ask = load i8, ptr %i.jb, align 2, !tbaa !94 ; 2 uses
  %i.asl = icmp eq i8 %i.ask, 1
  br i1 %i.asl, label %bb.je, label %bb.jm

bb.je:                                            ; preds = %bb.jd
  %i.asm = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.asn = load i32, ptr %i.asm, align 4, !tbaa !81
  %i.aso = and i32 %i.asn, 33554432
  %.not9.i55 = icmp eq i32 %i.aso, 0
  br i1 %.not9.i55, label %bb.jg, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.asp = getelementptr inbounds nuw i8, ptr %.08506.i, i64 12
  %i.asq = load i32, ptr %i.asp, align 4, !tbaa !33
  %i.asr = sext i32 %i.asq to i64
  %i.ass = getelementptr inbounds i8, ptr %.08506.i, i64 %i.asr
  br label %bb.jh

bb.jg:                                            ; preds = %bb.je
  %i.ast = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.asu = load ptr, ptr %i.ast, align 8, !tbaa !82
  %i.asv = getelementptr inbounds nuw i8, ptr %.08506.i, i64 12
  %i.asw = load i32, ptr %i.asv, align 4, !tbaa !33
  %i.asx = zext i32 %i.asw to i64
  %i.asy = getelementptr inbounds nuw [16 x i8], ptr %i.asu, i64 %i.asx
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jg, %bb.jf
  %i.asz = phi ptr [ %i.ass, %bb.jf ], [ %i.asy, %bb.jg ] ; 3 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asz, i64 8
  %i.atb = load i8, ptr %i.ata, align 8, !tbaa !33 ; 3 uses
  switch i8 %i.atb, label %bb.jj [
    i8 11, label %_ssa_op2_info.exit
    i8 7, label %bb.ji
  ]

bb.ji:                                            ; preds = %bb.jh
  %i.atc = tail call i32 @zend_array_type_info(ptr noundef nonnull %i.asz)
  br label %_ssa_op2_info.exit

bb.jj:                                            ; preds = %bb.jh
  %i.atd = zext nneg i8 %i.atb to i32
  %i.ate = shl nuw i32 1, %i.atd                  ; 2 uses
  %i.atf = getelementptr inbounds nuw i8, ptr %i.asz, i64 9
  %i.atg = load i8, ptr %i.atf, align 1, !tbaa !33
  %.not.i85 = icmp eq i8 %i.atg, 0
  br i1 %.not.i85, label %bb.jl, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.ath = or i32 %i.ate, -1073741824
  br label %_ssa_op2_info.exit

bb.jl:                                            ; preds = %bb.jj
  %i.ati = icmp eq i8 %i.atb, 6
  %spec.select.i87 = select i1 %i.ati, i32 -2147483584, i32 %i.ate
  br label %_ssa_op2_info.exit

bb.jm:                                            ; preds = %bb.jd
  %i.atj = load ptr, ptr %i.h, align 8, !tbaa !83 ; 2 uses
  %.not.i53 = icmp eq ptr %i.atj, null
  br i1 %.not.i53, label %_ssa_op2_info.exit, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.atk = getelementptr inbounds nuw i8, ptr %.08507.i, i64 4
  %i.atl = load i32, ptr %i.atk, align 4, !tbaa !58 ; 2 uses
  %i.atm = icmp sgt i32 %i.atl, -1
  br i1 %i.atm, label %bb.jo, label %_ssa_op2_info.exit

bb.jo:                                            ; preds = %bb.jn
  %i.atn = zext nneg i32 %i.atl to i64
  %i.ato = getelementptr inbounds nuw [40 x i8], ptr %i.atj, i64 %i.atn
  %i.atp = load i32, ptr %i.ato, align 8, !tbaa !117
  br label %_ssa_op2_info.exit

_ssa_op2_info.exit:                               ; preds = %bb.jh, %bb.jm, %bb.jo, %bb.jn, %bb.jl, %bb.jk, %bb.ji
  %.0.i54 = phi i32 [ %spec.select.i87, %bb.jl ], [ -521143298, %bb.jh ], [ %i.atc, %bb.ji ], [ %i.ath, %bb.jk ], [ %i.atp, %bb.jo ], [ -486539265, %bb.jn ], [ -486539265, %bb.jm ]
  %i.atq = getelementptr inbounds nuw i8, ptr %.08507.i, i64 12
  %i.atr = load i32, ptr %i.atq, align 4, !tbaa !36 ; 5 uses
  %i.ats = icmp sgt i32 %i.atr, -1                ; 3 uses
  br i1 %i.ats, label %bb.jp, label %bb.jv

bb.jp:                                            ; preds = %_ssa_op2_info.exit
  %i.att = tail call fastcc i32 @assign_dim_result_type(i32 noundef %.08384.i, i32 noundef %.0.i54, i32 noundef %.178402.i, i8 noundef zeroext %i.ask) ; 2 uses
  %i.atu = and i32 %i.att, 1024
  %.not10108.i = icmp eq i32 %i.atu, 0
  %i.atv = and i32 %i.att, -268435457             ; 2 uses
  %i.atw = or i32 %i.atv, -520094722
  %spec.select10377.i = select i1 %.not10108.i, i32 %i.atv, i32 %i.atw ; 3 uses
  %i.atx = zext nneg i32 %i.atr to i64            ; 2 uses
  %i.aty = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %i.atx ; 2 uses
  %i.atz = load i32, ptr %i.aty, align 8, !tbaa !119 ; 2 uses
  %i.aua = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aub = load i32, ptr %i.aua, align 8, !tbaa !96
  %i.auc = icmp uge i32 %i.atz, %i.aub
  %i.aud = and i32 %spec.select10377.i, 1073741824
  %.not10109.i = icmp eq i32 %i.aud, 0
  %or.cond10378.i = select i1 %i.auc, i1 true, i1 %.not10109.i
  %i.aue = or i32 %spec.select10377.i, -2147483648
  %.18082.i = select i1 %or.cond10378.i, i32 %spec.select10377.i, i32 %i.aue ; 4 uses
  %i.auf = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.aug = load i32, ptr %i.auf, align 4, !tbaa !120
  %.not1697.a = icmp slt i32 %i.atz, %i.aug
  br i1 %.not1697.a, label %bb.jq, label %bb.js

bb.jq:                                            ; preds = %bb.jp
  %i.auh = and i32 %.18082.i, -2147482624
  %.not10110.i = icmp eq i32 %i.auh, 0
  %i.aui = or i32 %.18082.i, -1073741824
  %spec.select10379.i = select i1 %.not10110.i, i32 %.18082.i, i32 %i.aui ; 3 uses
  %i.auj = and i32 %spec.select10379.i, 1073741888
  %or.cond10380.i.not = icmp eq i32 %i.auj, 1073741888
  %i.auk = or i32 %spec.select10379.i, -2147483648 ; 2 uses
  %.38084.i = select i1 %or.cond10380.i.not, i32 %i.auk, i32 %spec.select10379.i ; 2 uses
  %i.aul = and i32 %.38084.i, 1073742080
  %or.cond10381.i.not = icmp eq i32 %i.aul, 1073742080
  %.48085.i = select i1 %or.cond10381.i.not, i32 %i.auk, i32 %.38084.i ; 2 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %i.aty, i64 40
  %i.aun = load i8, ptr %i.aum, align 8
  %i.auo = lshr i8 %i.aun, 2
  %i.aup = and i8 %i.auo, 3                       ; 2 uses
  %.not10115.i = icmp eq i8 %i.aup, 0
  br i1 %.not10115.i, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.auq = icmp eq i8 %i.aup, 2
  %..i374 = select i1 %i.auq, i32 -1067384704, i32 -520093697
  %i.aur = or i32 %..i374, %.48085.i
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jq, %bb.jp
  %.58086.i = phi i32 [ %i.aur, %bb.jr ], [ %.48085.i, %bb.jq ], [ %.18082.i, %bb.jp ] ; 3 uses
  %i.aus = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.atx ; 2 uses
  %i.aut = load i32, ptr %i.aus, align 8, !tbaa !117 ; 2 uses
  %.not10116.i = icmp eq i32 %i.aut, %.58086.i
  br i1 %.not10116.i, label %bb.jv, label %bb.jt
end_hunk_2
begin_hunk_3_@zend_update_type_info:bb.a
  %.not9108.i = icmp eq i8 %i.fof, 0
  br i1 %.not9108.i, label %bb.arq, label %bb.arp

bb.arp:                                           ; preds = %bb.aro
  %i.fog = icmp eq i8 %i.fof, 2
  %..i448 = select i1 %i.fog, i32 -1067384704, i32 -520093697
  %i.foh = or i32 %..i448, %.47656.i
  br label %bb.arq

bb.arq:                                           ; preds = %bb.arp, %bb.aro, %bb.arn
  %.57657.i = phi i32 [ %i.foh, %bb.arp ], [ %.47656.i, %bb.aro ], [ %.17653.i, %bb.arn ] ; 3 uses
  %i.foi = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.fnn ; 2 uses
  %i.foj = load i32, ptr %i.foi, align 8, !tbaa !117 ; 2 uses
  %.not9109.i = icmp eq i32 %i.foj, %.57657.i
  br i1 %.not9109.i, label %bb.art, label %bb.arr

bb.arr:                                           ; preds = %bb.arq
  %i.fok = xor i32 %.57657.i, -1
  %i.fol = and i32 %i.foj, %i.fok
  %.not9112.i = icmp eq i32 %i.fol, 0
  br i1 %.not9112.i, label %bb.ars, label %.critedge10850.i

.critedge10850.i:                                 ; preds = %bb.arr
  tail call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr nonnull %i.g, i32 noundef %i.fnd)
  br label %_zend_update_type_info.exit

bb.ars:                                           ; preds = %bb.arr
  store i32 %.57657.i, ptr %i.foi, align 8, !tbaa !117
  br label %bb.art

bb.art:                                           ; preds = %bb.ars, %bb.arq, %bb.arm
  %i.fom = getelementptr inbounds nuw i8, ptr %.08507.i, i64 16
  %i.fon = load i32, ptr %i.fom, align 4, !tbaa !37 ; 3 uses
  %i.foo = icmp sgt i32 %i.fon, -1
  br i1 %i.foo, label %bb.aru, label %bb.asa

bb.aru:                                           ; preds = %bb.art
  %i.fop = getelementptr inbounds nuw i8, ptr %.08507.i, i64 4
  %i.foq = load i32, ptr %i.fop, align 4, !tbaa !58 ; 2 uses
  %i.for = icmp sgt i32 %i.foq, -1
  tail call void @llvm.assume(i1 %i.for)
  %i.fos = zext nneg i32 %i.foq to i64
  %i.fot = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.fos
  %i.fou = load i32, ptr %i.fot, align 8, !tbaa !117 ; 3 uses
  %i.fov = shl i32 %i.fou, 1
  %i.fow = and i32 %i.fov, -2147483648
  %.masked805 = and i32 %i.fou, -268435457
  %i.fox = and i32 %i.fou, 1024
  %.not9114.i = icmp eq i32 %i.fox, 0
  %.07646.i.v = select i1 %.not9114.i, i32 %i.fow, i32 -520094722
  %.07646.i = or i32 %.07646.i.v, %.masked805     ; 3 uses
  %i.foy = zext nneg i32 %i.fon to i64            ; 2 uses
  %i.foz = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %i.foy ; 2 uses
  %i.fpa = load i32, ptr %i.foz, align 8, !tbaa !119 ; 2 uses
  %i.fpb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fpc = load i32, ptr %i.fpb, align 8, !tbaa !96
  %i.fpd = icmp uge i32 %i.fpa, %i.fpc
  %i.fpe = and i32 %.07646.i, 1073741824
  %.not9115.i = icmp eq i32 %i.fpe, 0
  %or.cond10854.i = select i1 %i.fpd, i1 true, i1 %.not9115.i
  %i.fpf = or i32 %.07646.i, -2147483648
  %.17647.i = select i1 %or.cond10854.i, i32 %.07646.i, i32 %i.fpf ; 4 uses
  %i.fpg = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.fph = load i32, ptr %i.fpg, align 4, !tbaa !120
  %.not1639.a = icmp slt i32 %i.fpa, %i.fph
  br i1 %.not1639.a, label %bb.arv, label %bb.arx

bb.arv:                                           ; preds = %bb.aru
  %i.fpi = and i32 %.17647.i, -2147482624
  %.not9116.i = icmp eq i32 %i.fpi, 0
  %i.fpj = or i32 %.17647.i, -1073741824
  %spec.select10855.i = select i1 %.not9116.i, i32 %.17647.i, i32 %i.fpj ; 3 uses
  %i.fpk = and i32 %spec.select10855.i, 1073741888
  %or.cond10856.i.not = icmp eq i32 %i.fpk, 1073741888
  %i.fpl = or i32 %spec.select10855.i, -2147483648 ; 2 uses
  %.37649.i = select i1 %or.cond10856.i.not, i32 %i.fpl, i32 %spec.select10855.i ; 2 uses
  %i.fpm = and i32 %.37649.i, 1073742080
  %or.cond10857.i.not = icmp eq i32 %i.fpm, 1073742080
  %.47650.i = select i1 %or.cond10857.i.not, i32 %i.fpl, i32 %.37649.i ; 2 uses
  %i.fpn = getelementptr inbounds nuw i8, ptr %i.foz, i64 40
  %i.fpo = load i8, ptr %i.fpn, align 8
  %i.fpp = lshr i8 %i.fpo, 2
  %i.fpq = and i8 %i.fpp, 3                       ; 2 uses
  %.not9121.i = icmp eq i8 %i.fpq, 0
  br i1 %.not9121.i, label %bb.arx, label %bb.arw

bb.arw:                                           ; preds = %bb.arv
  %i.fpr = icmp eq i8 %i.fpq, 2
  %..i449 = select i1 %i.fpr, i32 -1067384704, i32 -520093697
  %i.fps = or i32 %..i449, %.47650.i
  br label %bb.arx

bb.arx:                                           ; preds = %bb.arw, %bb.arv, %bb.aru
  %.57651.i = phi i32 [ %i.fps, %bb.arw ], [ %.47650.i, %bb.arv ], [ %.17647.i, %bb.aru ] ; 3 uses
  %i.fpt = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.foy ; 2 uses
  %i.fpu = load i32, ptr %i.fpt, align 8, !tbaa !117 ; 2 uses
  %.not9122.i = icmp eq i32 %i.fpu, %.57651.i
  br i1 %.not9122.i, label %bb.asa, label %bb.ary

bb.ary:                                           ; preds = %bb.arx
  %i.fpv = xor i32 %.57651.i, -1
  %i.fpw = and i32 %i.fpu, %i.fpv
  %.not9125.i = icmp eq i32 %i.fpw, 0
  br i1 %.not9125.i, label %bb.arz, label %.critedge10859.i

.critedge10859.i:                                 ; preds = %bb.ary
  tail call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr nonnull %i.g, i32 noundef %i.fon)
  br label %_zend_update_type_info.exit

bb.arz:                                           ; preds = %bb.ary
  store i32 %.57651.i, ptr %i.fpt, align 8, !tbaa !117
  br label %bb.asa

bb.asa:                                           ; preds = %bb.arz, %bb.arx, %bb.art
  %i.fpx = icmp eq i8 %i.nq, -49
  br i1 %i.fpx, label %bb.asb, label %bb.asi

bb.asb:                                           ; preds = %bb.asa
  %i.fpy = getelementptr inbounds nuw i8, ptr %.08507.i, i64 48
  %i.fpz = load i32, ptr %i.fpy, align 4, !tbaa !36 ; 3 uses
  %i.fqa = icmp sgt i32 %i.fpz, -1
  br i1 %i.fqa, label %bb.asc, label %bb.asi

bb.asc:                                           ; preds = %bb.asb
  %i.fqb = getelementptr inbounds nuw i8, ptr %.08507.i, i64 36
  %i.fqc = load i32, ptr %i.fqb, align 4, !tbaa !57 ; 2 uses
  %i.fqd = icmp sgt i32 %i.fqc, -1
  tail call void @llvm.assume(i1 %i.fqd)
  %i.fqe = zext nneg i32 %i.fqc to i64
  %i.fqf = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.fqe
  %i.fqg = load i32, ptr %i.fqf, align 8, !tbaa !117 ; 3 uses
  %i.fqh = shl i32 %i.fqg, 1
  %i.fqi = and i32 %i.fqh, -2147483648
  %.masked806 = and i32 %i.fqg, -268435457
  %i.fqj = and i32 %i.fqg, 1024
  %.not9127.i = icmp eq i32 %i.fqj, 0
  %.07640.i.v = select i1 %.not9127.i, i32 %i.fqi, i32 -520094722
  %.07640.i = or i32 %.07640.i.v, %.masked806     ; 3 uses
  %i.fqk = zext nneg i32 %i.fpz to i64            ; 2 uses
  %i.fql = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %i.fqk ; 2 uses
  %i.fqm = load i32, ptr %i.fql, align 8, !tbaa !119 ; 2 uses
  %i.fqn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fqo = load i32, ptr %i.fqn, align 8, !tbaa !96
  %i.fqp = icmp uge i32 %i.fqm, %i.fqo
  %i.fqq = and i32 %.07640.i, 1073741824
  %.not9128.i = icmp eq i32 %i.fqq, 0
  %or.cond10863.i = select i1 %i.fqp, i1 true, i1 %.not9128.i
  %i.fqr = or i32 %.07640.i, -2147483648
  %.17641.i = select i1 %or.cond10863.i, i32 %.07640.i, i32 %i.fqr ; 4 uses
  %i.fqs = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.fqt = load i32, ptr %i.fqs, align 4, !tbaa !120
  %.not1640 = icmp slt i32 %i.fqm, %i.fqt
  br i1 %.not1640, label %bb.asd, label %bb.asf

bb.asd:                                           ; preds = %bb.asc
  %i.fqu = and i32 %.17641.i, -2147482624
  %.not9129.i = icmp eq i32 %i.fqu, 0
  %i.fqv = or i32 %.17641.i, -1073741824
  %spec.select10864.i = select i1 %.not9129.i, i32 %.17641.i, i32 %i.fqv ; 3 uses
  %i.fqw = and i32 %spec.select10864.i, 1073741888
  %or.cond10865.i.not = icmp eq i32 %i.fqw, 1073741888
  %i.fqx = or i32 %spec.select10864.i, -2147483648 ; 2 uses
  %.37643.i = select i1 %or.cond10865.i.not, i32 %i.fqx, i32 %spec.select10864.i ; 2 uses
  %i.fqy = and i32 %.37643.i, 1073742080
  %or.cond10866.i.not = icmp eq i32 %i.fqy, 1073742080
  %.47644.i = select i1 %or.cond10866.i.not, i32 %i.fqx, i32 %.37643.i ; 2 uses
  %i.fqz = getelementptr inbounds nuw i8, ptr %i.fql, i64 40
  %i.fra = load i8, ptr %i.fqz, align 8
  %i.frb = lshr i8 %i.fra, 2
  %i.frc = and i8 %i.frb, 3                       ; 2 uses
  %.not9134.i = icmp eq i8 %i.frc, 0
  br i1 %.not9134.i, label %bb.asf, label %bb.ase

bb.ase:                                           ; preds = %bb.asd
  %i.frd = icmp eq i8 %i.frc, 2
  %..i450 = select i1 %i.frd, i32 -1067384704, i32 -520093697
  %i.fre = or i32 %..i450, %.47644.i
  br label %bb.asf

bb.asf:                                           ; preds = %bb.ase, %bb.asd, %bb.asc
  %.57645.i = phi i32 [ %i.fre, %bb.ase ], [ %.47644.i, %bb.asd ], [ %.17641.i, %bb.asc ] ; 3 uses
  %i.frf = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.fqk ; 2 uses
  %i.frg = load i32, ptr %i.frf, align 8, !tbaa !117 ; 2 uses
  %.not9135.i = icmp eq i32 %i.frg, %.57645.i
  br i1 %.not9135.i, label %bb.asi, label %bb.asg

bb.asg:                                           ; preds = %bb.asf
  %i.frh = xor i32 %.57645.i, -1
  %i.fri = and i32 %i.frg, %i.frh
  %.not9138.i = icmp eq i32 %i.fri, 0
  br i1 %.not9138.i, label %bb.ash, label %.critedge10868.i

.critedge10868.i:                                 ; preds = %bb.asg
  tail call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr nonnull %i.g, i32 noundef %i.fpz)
  br label %_zend_update_type_info.exit

bb.ash:                                           ; preds = %bb.asg
  store i32 %.57645.i, ptr %i.frf, align 8, !tbaa !117
  br label %bb.asi

bb.asi:                                           ; preds = %bb.ash, %bb.asf, %bb.asb, %bb.asa, %_ssa_op1_info.exit46.thread, %_ssa_op1_info.exit46.thread, %_ssa_op1_info.exit46.thread, %_ssa_op1_info.exit46.thread, %_ssa_op1_info.exit46.thread
  %i.frj = getelementptr inbounds nuw i8, ptr %.08507.i, i64 20 ; 2 uses
  %i.frk = load i32, ptr %i.frj, align 4, !tbaa !38
  %i.frl = icmp sgt i32 %i.frk, -1
  br i1 %i.frl, label %bb.asj, label %_zend_update_type_info.exit

bb.asj:                                           ; preds = %bb.asi
  %i.frm = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.frn = load i32, ptr @zend_func_info_rid, align 4, !tbaa !32
  %i.fro = sext i32 %i.frn to i64
  %i.frp = getelementptr inbounds [8 x i8], ptr %i.frm, i64 %i.fro
  %i.frq = load ptr, ptr %i.frp, align 8, !tbaa !97 ; 2 uses
  %.not9139.i = icmp eq ptr %i.frq, null
  br i1 %.not9139.i, label %.thread582, label %bb.ask

bb.ask:                                           ; preds = %bb.asj
  %i.frr = getelementptr inbounds nuw i8, ptr %i.frq, i64 104
  %i.frs = load ptr, ptr %i.frr, align 8, !tbaa !101 ; 2 uses
  %.not9140.i = icmp eq ptr %i.frs, null
  br i1 %.not9140.i, label %.thread582, label %bb.asl

bb.asl:                                           ; preds = %bb.ask
  %i.frt = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fru = load ptr, ptr %i.frt, align 8, !tbaa !53
  %i.frv = ptrtoint ptr %.08506.i to i64
  %i.frw = ptrtoint ptr %i.fru to i64
  %i.frx = sub i64 %i.frv, %i.frw
  %i.fry = ashr exact i64 %i.frx, 2
  %i.frz = getelementptr inbounds i8, ptr %i.frs, i64 %i.fry
  %i.fsa = load ptr, ptr %i.frz, align 8, !tbaa !102 ; 2 uses
  %.not9141.i = icmp eq ptr %i.fsa, null
  br i1 %.not9141.i, label %.thread582, label %bb.asm

bb.asm:                                           ; preds = %bb.asl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.fsb = call i32 @zend_get_func_info(ptr noundef nonnull %i.fsa, ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #17 ; 2 uses
  %i.fsc = load i32, ptr %i.frj, align 4, !tbaa !38 ; 4 uses
  %i.fsd = icmp sgt i32 %i.fsc, -1
  br i1 %i.fsd, label %bb.asn, label %.thread585

bb.asn:                                           ; preds = %bb.asm
  %i.fse = and i32 %i.fsb, 1024
  %.not9142.i = icmp eq i32 %i.fse, 0
  %i.fsf = and i32 %i.fsb, -268435457             ; 2 uses
  %i.fsg = or i32 %i.fsf, -520094722
  %spec.select10873.i = select i1 %.not9142.i, i32 %i.fsf, i32 %i.fsg ; 3 uses
  %i.fsh = zext nneg i32 %i.fsc to i64            ; 2 uses
  %i.fsi = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %i.fsh ; 2 uses
  %i.fsj = load i32, ptr %i.fsi, align 8, !tbaa !119 ; 2 uses
  %i.fsk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fsl = load i32, ptr %i.fsk, align 8, !tbaa !96
  %i.fsm = icmp uge i32 %i.fsj, %i.fsl
  %i.fsn = and i32 %spec.select10873.i, 1073741824
  %.not9143.i = icmp eq i32 %i.fsn, 0
  %or.cond10874.i = select i1 %i.fsm, i1 true, i1 %.not9143.i
  %i.fso = or i32 %spec.select10873.i, -2147483648
  %.17635.i = select i1 %or.cond10874.i, i32 %spec.select10873.i, i32 %i.fso ; 4 uses
  %i.fsp = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.fsq = load i32, ptr %i.fsp, align 4, !tbaa !120
  %.not1641 = icmp slt i32 %i.fsj, %i.fsq
  br i1 %.not1641, label %bb.aso, label %bb.asq

bb.aso:                                           ; preds = %bb.asn
  %i.fsr = and i32 %.17635.i, -2147482624
  %.not9144.i = icmp eq i32 %i.fsr, 0
  %i.fss = or i32 %.17635.i, -1073741824
  %spec.select10875.i = select i1 %.not9144.i, i32 %.17635.i, i32 %i.fss ; 3 uses
  %i.fst = and i32 %spec.select10875.i, 1073741888
  %or.cond10876.i.not = icmp eq i32 %i.fst, 1073741888
  %i.fsu = or i32 %spec.select10875.i, -2147483648 ; 2 uses
  %.37637.i = select i1 %or.cond10876.i.not, i32 %i.fsu, i32 %spec.select10875.i ; 2 uses
  %i.fsv = and i32 %.37637.i, 1073742080
  %or.cond10877.i.not = icmp eq i32 %i.fsv, 1073742080
  %.47638.i = select i1 %or.cond10877.i.not, i32 %i.fsu, i32 %.37637.i ; 2 uses
  %i.fsw = getelementptr inbounds nuw i8, ptr %i.fsi, i64 40
  %i.fsx = load i8, ptr %i.fsw, align 8
  %i.fsy = lshr i8 %i.fsx, 2
  %i.fsz = and i8 %i.fsy, 3                       ; 2 uses
  %.not9149.i = icmp eq i8 %i.fsz, 0
  br i1 %.not9149.i, label %bb.asq, label %bb.asp

bb.asp:                                           ; preds = %bb.aso
  %i.fta = icmp eq i8 %i.fsz, 2
  %..i451 = select i1 %i.fta, i32 -1067384704, i32 -520093697
  %i.ftb = or i32 %..i451, %.47638.i
  br label %bb.asq

bb.asq:                                           ; preds = %bb.asp, %bb.aso, %bb.asn
  %.57639.i = phi i32 [ %i.ftb, %bb.asp ], [ %.47638.i, %bb.aso ], [ %.17635.i, %bb.asn ] ; 3 uses
  %i.ftc = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.fsh ; 2 uses
  %i.ftd = load i32, ptr %i.ftc, align 8, !tbaa !117 ; 2 uses
  %.not9150.i = icmp eq i32 %i.ftd, %.57639.i
  br i1 %.not9150.i, label %bb.ast, label %bb.asr

bb.asr:                                           ; preds = %bb.asq
  %i.fte = xor i32 %.57639.i, -1
  %i.ftf = and i32 %i.ftd, %i.fte
  %.not9153.i = icmp eq i32 %i.ftf, 0
  br i1 %.not9153.i, label %bb.ass, label %bb.asw

bb.ass:                                           ; preds = %bb.asr
  store i32 %.57639.i, ptr %i.ftc, align 8, !tbaa !117
  br label %bb.ast

bb.ast:                                           ; preds = %bb.ass, %bb.asq
  %i.ftg = load ptr, ptr %i.b, align 8, !tbaa !116 ; 4 uses
  %.not9154.i = icmp eq ptr %i.ftg, null
  br i1 %.not9154.i, label %.thread585, label %bb.asu

bb.asu:                                           ; preds = %bb.ast
  %i.fth = load i8, ptr %i.c, align 1, !tbaa !106, !range !86, !noundef !87
  %i.fti = getelementptr inbounds nuw i8, ptr %i.ftg, i64 28
  %i.ftj = load i32, ptr %i.fti, align 4, !tbaa !135
  %i.ftk = and i32 %i.ftj, 32
  %.not9155.i = icmp eq i32 %i.ftk, 0
  %spec.select10882.i = select i1 %.not9155.i, i8 %i.fth, i8 0 ; 2 uses
  %i.ftl = zext nneg i32 %i.fsc to i64
  %i.ftm = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.ftl ; 3 uses
  %i.ftn = getelementptr inbounds nuw i8, ptr %i.ftm, i64 32 ; 2 uses
  %i.fto = load ptr, ptr %i.ftn, align 8, !tbaa !124
  %.not9156.i = icmp eq ptr %i.fto, %i.ftg
  %i.ftp = getelementptr inbounds nuw i8, ptr %i.ftm, i64 4
  %i.ftq = load i8, ptr %i.ftp, align 4           ; 2 uses
  br i1 %.not9156.i, label %bb.asv, label %._crit_edge845

bb.asv:                                           ; preds = %bb.asu
  %i.ftr = lshr i8 %i.ftq, 1
  %.lobit9157.i = and i8 %i.ftr, 1
  %.not9158.i = icmp eq i8 %.lobit9157.i, %spec.select10882.i
  br i1 %.not9158.i, label %.thread585, label %._crit_edge845

._crit_edge845:                                   ; preds = %bb.asu, %bb.asv
  store ptr %i.ftg, ptr %i.ftn, align 8, !tbaa !124
  %i.fts = getelementptr inbounds nuw i8, ptr %i.ftm, i64 4
  %i.ftt = shl nuw nsw i8 %spec.select10882.i, 1
  %i.ftu = and i8 %i.ftq, -3
  %i.ftv = or disjoint i8 %i.ftu, %i.ftt
  store i8 %i.ftv, ptr %i.fts, align 4
  br label %.thread585

.thread585:                                       ; preds = %bb.ast, %bb.asm, %bb.asv, %._crit_edge845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %_zend_update_type_info.exit

bb.asw:                                           ; preds = %bb.asr
  %.val262 = load ptr, ptr %i.f, align 8, !tbaa !27
  call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr %.val262, i32 noundef %i.fsc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %_zend_update_type_info.exit

bb.asx:                                           ; preds = %_ssa_op1_info.exit46.thread
  %i.ftw = getelementptr inbounds nuw i8, ptr %.08507.i, i64 20
  %i.ftx = load i32, ptr %i.ftw, align 4, !tbaa !38 ; 3 uses
  %i.fty = icmp sgt i32 %i.ftx, -1
  br i1 %i.fty, label %bb.asy, label %_zend_update_type_info.exit

bb.asy:                                           ; preds = %bb.asx
  %i.ftz = zext nneg i32 %i.ftx to i64            ; 2 uses
  %i.fua = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %i.ftz ; 2 uses
  %i.fub = load i32, ptr %i.fua, align 8, !tbaa !119
  %i.fuc = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.fud = load i32, ptr %i.fuc, align 4, !tbaa !120
  %.not1637.a = icmp slt i32 %i.fub, %i.fud
  br i1 %.not1637.a, label %bb.asz, label %bb.atb

bb.asz:                                           ; preds = %bb.asy
  %i.fue = getelementptr inbounds nuw i8, ptr %i.fua, i64 40
  %i.fuf = load i8, ptr %i.fue, align 8
  %i.fug = lshr i8 %i.fuf, 2
  %i.fuh = and i8 %i.fug, 3                       ; 2 uses
  %.not9091.i = icmp eq i8 %i.fuh, 0
  br i1 %.not9091.i, label %bb.atb, label %bb.ata

bb.ata:                                           ; preds = %bb.asz
  %i.fui = icmp eq i8 %i.fuh, 2
  %i.fuj = select i1 %i.fui, i32 -1067384448, i32 -520093697
  br label %bb.atb

bb.atb:                                           ; preds = %bb.ata, %bb.asz, %bb.asy
  %.57632.i = phi i32 [ %i.fuj, %bb.ata ], [ -1073741568, %bb.asz ], [ -1073741568, %bb.asy ] ; 3 uses
  %i.fuk = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.ftz ; 5 uses
  %i.ful = load i32, ptr %i.fuk, align 8, !tbaa !117 ; 2 uses
  %.not9092.i = icmp eq i32 %i.ful, %.57632.i
  br i1 %.not9092.i, label %bb.ate, label %bb.atc

bb.atc:                                           ; preds = %bb.atb
  %i.fum = xor i32 %.57632.i, -1
  %i.fun = and i32 %i.ful, %i.fum
  %.not9095.i = icmp eq i32 %i.fun, 0
  br i1 %.not9095.i, label %bb.atd, label %.critedge10884.i

.critedge10884.i:                                 ; preds = %bb.atc
  tail call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr nonnull %i.g, i32 noundef %i.ftx)
  br label %_zend_update_type_info.exit

bb.atd:                                           ; preds = %bb.atc
  store i32 %.57632.i, ptr %i.fuk, align 8, !tbaa !117
  br label %bb.ate
end_hunk_3
begin_hunk_4_@zend_infer_types_ex:bb.a
  br i1 %i.vx, label %_ssa_result_info.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  %i.vz = load i32, ptr %i.vy, align 8, !tbaa !33
  %i.wa = and i32 %i.vz, 4
  %.not41.i695 = icmp eq i32 %i.wa, 0
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vs, i64 16
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !33 ; 8 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vs, i64 24
  %i.we = load i32, ptr %i.wd, align 8, !tbaa !111 ; 2 uses
  %i.wf = zext i32 %i.we to i64                   ; 2 uses
  %.not4249.i705 = icmp eq i32 %i.we, 0           ; 2 uses
  br i1 %.not41.i695, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %.idx.i696 = shl nuw nsw i64 %i.wf, 4           ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wc, i64 %.idx.i696
  br i1 %.not4249.i705, label %_ssa_result_info.exit, label %.lr.ph.i698.preheader

.lr.ph.i698.preheader:                            ; preds = %bb.dd
  %i.wh = add nsw i64 %.idx.i696, -16             ; 2 uses
  %i.wi = lshr exact i64 %i.wh, 4
  %i.wj = add nuw nsw i64 %i.wi, 1
  %xtraiter4862 = and i64 %i.wj, 3                ; 2 uses
  %lcmp.mod4863.not = icmp eq i64 %xtraiter4862, 0
  br i1 %lcmp.mod4863.not, label %.lr.ph.i698.prol.loopexit, label %.lr.ph.i698.prol

.lr.ph.i698.prol:                                 ; preds = %.lr.ph.i698.preheader, %.lr.ph.i698.prol
  %.03848.i699.prol = phi ptr [ %i.wq, %.lr.ph.i698.prol ], [ %i.wc, %.lr.ph.i698.preheader ] ; 2 uses
  %.147.i700.prol = phi i32 [ %.2.i701.prol, %.lr.ph.i698.prol ], [ %..i694, %.lr.ph.i698.preheader ]
  %prol.iter4864 = phi i64 [ %prol.iter4864.next, %.lr.ph.i698.prol ], [ 0, %.lr.ph.i698.preheader ]
  %i.wk = getelementptr inbounds nuw i8, ptr %.03848.i699.prol, i64 8
  %i.wl = load i8, ptr %i.wk, align 8, !tbaa !33  ; 2 uses
  %i.wm = icmp eq i8 %i.wl, 0
  %i.wn = zext nneg i8 %i.wl to i32
  %i.wo = shl nuw i32 1024, %i.wn
  %i.wp = select i1 %i.wm, i32 0, i32 %i.wo, !prof !25
  %.2.i701.prol = or i32 %i.wp, %.147.i700.prol   ; 3 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %.03848.i699.prol, i64 16 ; 2 uses
  %prol.iter4864.next = add i64 %prol.iter4864, 1 ; 2 uses
  %prol.iter4864.cmp.not = icmp eq i64 %prol.iter4864.next, %xtraiter4862
  br i1 %prol.iter4864.cmp.not, label %.lr.ph.i698.prol.loopexit, label %.lr.ph.i698.prol, !llvm.loop !288

.lr.ph.i698.prol.loopexit:                        ; preds = %.lr.ph.i698.prol, %.lr.ph.i698.preheader
  %.2.i701.lcssa.unr = phi i32 [ poison, %.lr.ph.i698.preheader ], [ %.2.i701.prol, %.lr.ph.i698.prol ]
  %.03848.i699.unr = phi ptr [ %i.wc, %.lr.ph.i698.preheader ], [ %i.wq, %.lr.ph.i698.prol ]
  %.147.i700.unr = phi i32 [ %..i694, %.lr.ph.i698.preheader ], [ %.2.i701.prol, %.lr.ph.i698.prol ]
  %i.wr = icmp ult i64 %i.wh, 48
  br i1 %i.wr, label %_ssa_result_info.exit, label %.lr.ph.i698

.lr.ph.i698:                                      ; preds = %.lr.ph.i698.prol.loopexit, %.lr.ph.i698
  %.03848.i699 = phi ptr [ %i.xq, %.lr.ph.i698 ], [ %.03848.i699.unr, %.lr.ph.i698.prol.loopexit ] ; 5 uses
  %.147.i700 = phi i32 [ %.2.i701.3, %.lr.ph.i698 ], [ %.147.i700.unr, %.lr.ph.i698.prol.loopexit ]
  %i.ws = getelementptr inbounds nuw i8, ptr %.03848.i699, i64 8
  %i.wt = load i8, ptr %i.ws, align 8, !tbaa !33  ; 2 uses
  %i.wu = icmp eq i8 %i.wt, 0
  %i.wv = zext nneg i8 %i.wt to i32
  %i.ww = shl nuw i32 1024, %i.wv
  %i.wx = select i1 %i.wu, i32 0, i32 %i.ww, !prof !25
  %.2.i701 = or i32 %i.wx, %.147.i700
  %i.wy = getelementptr inbounds nuw i8, ptr %.03848.i699, i64 24
  %i.wz = load i8, ptr %i.wy, align 8, !tbaa !33  ; 2 uses
  %i.xa = icmp eq i8 %i.wz, 0
  %i.xb = zext nneg i8 %i.wz to i32
  %i.xc = shl nuw i32 1024, %i.xb
  %i.xd = select i1 %i.xa, i32 0, i32 %i.xc, !prof !25
  %.2.i701.1 = or i32 %i.xd, %.2.i701
  %i.xe = getelementptr inbounds nuw i8, ptr %.03848.i699, i64 40
  %i.xf = load i8, ptr %i.xe, align 8, !tbaa !33  ; 2 uses
  %i.xg = icmp eq i8 %i.xf, 0
  %i.xh = zext nneg i8 %i.xf to i32
  %i.xi = shl nuw i32 1024, %i.xh
  %i.xj = select i1 %i.xg, i32 0, i32 %i.xi, !prof !25
  %.2.i701.2 = or i32 %i.xj, %.2.i701.1
  %i.xk = getelementptr inbounds nuw i8, ptr %.03848.i699, i64 56
  %i.xl = load i8, ptr %i.xk, align 8, !tbaa !33  ; 2 uses
  %i.xm = icmp eq i8 %i.xl, 0
  %i.xn = zext nneg i8 %i.xl to i32
  %i.xo = shl nuw i32 1024, %i.xn
  %i.xp = select i1 %i.xm, i32 0, i32 %i.xo, !prof !25
  %.2.i701.3 = or i32 %i.xp, %.2.i701.2           ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %.03848.i699, i64 64 ; 2 uses
  %.not44.i702.3 = icmp eq ptr %i.xq, %i.wg
  br i1 %.not44.i702.3, label %_ssa_result_info.exit, label %.lr.ph.i698, !llvm.loop !1

bb.de:                                            ; preds = %bb.dc
  %.idx54.i704 = shl nuw nsw i64 %i.wf, 5         ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.wc, i64 %.idx54.i704
  br i1 %.not4249.i705, label %_ssa_result_info.exit, label %.lr.ph52.i706.preheader

.lr.ph52.i706.preheader:                          ; preds = %bb.de
  %i.xs = add nsw i64 %.idx54.i704, -32           ; 2 uses
  %i.xt = and i64 %i.xs, 32
  %lcmp.mod4866.not.not = icmp eq i64 %i.xt, 0
  br i1 %lcmp.mod4866.not.not, label %.lr.ph52.i706.prol, label %.lr.ph52.i706.prol.loopexit

.lr.ph52.i706.prol:                               ; preds = %.lr.ph52.i706.preheader
  %i.xu = getelementptr inbounds nuw i8, ptr %i.wc, i64 8
  %i.xv = load i8, ptr %i.xu, align 8, !tbaa !33  ; 2 uses
  %i.xw = icmp eq i8 %i.xv, 0
  br i1 %i.xw, label %.lr.ph52.i706.prol.loopexit.unr-lcssa, label %bb.df, !prof !25

bb.df:                                            ; preds = %.lr.ph52.i706.prol
  %i.xx = getelementptr inbounds nuw i8, ptr %i.wc, i64 24
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !115
  %.not43.i709.prol = icmp eq ptr %i.xy, null
  %.4.v.i710.prol = select i1 %.not43.i709.prol, i32 4194304, i32 8388608
  %i.xz = zext nneg i8 %i.xv to i32
  %i.ya = shl nuw i32 1024, %i.xz
  %i.yb = or i32 %i.ya, %.4.v.i710.prol
  %i.yc = or i32 %i.yb, %..i694
  br label %.lr.ph52.i706.prol.loopexit.unr-lcssa

.lr.ph52.i706.prol.loopexit.unr-lcssa:            ; preds = %bb.df, %.lr.ph52.i706.prol
  %.5.i711.prol = phi i32 [ %i.yc, %bb.df ], [ %..i694, %.lr.ph52.i706.prol ] ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.wc, i64 32
  br label %.lr.ph52.i706.prol.loopexit

.lr.ph52.i706.prol.loopexit:                      ; preds = %.lr.ph52.i706.prol.loopexit.unr-lcssa, %.lr.ph52.i706.preheader
  %.5.i711.lcssa.unr = phi i32 [ poison, %.lr.ph52.i706.preheader ], [ %.5.i711.prol, %.lr.ph52.i706.prol.loopexit.unr-lcssa ]
  %.051.i707.unr = phi ptr [ %i.wc, %.lr.ph52.i706.preheader ], [ %i.yd, %.lr.ph52.i706.prol.loopexit.unr-lcssa ]
  %.350.i708.unr = phi i32 [ %..i694, %.lr.ph52.i706.preheader ], [ %.5.i711.prol, %.lr.ph52.i706.prol.loopexit.unr-lcssa ]
  %i.ye = icmp eq i64 %i.xs, 0
  br i1 %i.ye, label %_ssa_result_info.exit, label %.lr.ph52.i706

.lr.ph52.i706:                                    ; preds = %.lr.ph52.i706.prol.loopexit, %bb.di
  %.051.i707 = phi ptr [ %i.yx, %bb.di ], [ %.051.i707.unr, %.lr.ph52.i706.prol.loopexit ] ; 5 uses
  %.350.i708 = phi i32 [ %.5.i711.1, %bb.di ], [ %.350.i708.unr, %.lr.ph52.i706.prol.loopexit ] ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %.051.i707, i64 8
  %i.yg = load i8, ptr %i.yf, align 8, !tbaa !33  ; 2 uses
  %i.yh = icmp eq i8 %i.yg, 0
  br i1 %i.yh, label %.lr.ph52.i706.1, label %bb.dg, !prof !25

bb.dg:                                            ; preds = %.lr.ph52.i706
  %i.yi = getelementptr inbounds nuw i8, ptr %.051.i707, i64 24
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !115
  %.not43.i709 = icmp eq ptr %i.yj, null
  %.4.v.i710 = select i1 %.not43.i709, i32 4194304, i32 8388608
  %i.yk = zext nneg i8 %i.yg to i32
  %i.yl = shl nuw i32 1024, %i.yk
  %i.ym = or i32 %i.yl, %.4.v.i710
  %i.yn = or i32 %i.ym, %.350.i708
  br label %.lr.ph52.i706.1

.lr.ph52.i706.1:                                  ; preds = %bb.dg, %.lr.ph52.i706
  %.5.i711 = phi i32 [ %i.yn, %bb.dg ], [ %.350.i708, %.lr.ph52.i706 ] ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %.051.i707, i64 40
  %i.yp = load i8, ptr %i.yo, align 8, !tbaa !33  ; 2 uses
  %i.yq = icmp eq i8 %i.yp, 0
  br i1 %i.yq, label %bb.di, label %bb.dh, !prof !25

bb.dh:                                            ; preds = %.lr.ph52.i706.1
  %i.yr = getelementptr inbounds nuw i8, ptr %.051.i707, i64 56
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !115
  %.not43.i709.1 = icmp eq ptr %i.ys, null
  %.4.v.i710.1 = select i1 %.not43.i709.1, i32 4194304, i32 8388608
  %i.yt = zext nneg i8 %i.yp to i32
  %i.yu = shl nuw i32 1024, %i.yt
  %i.yv = or i32 %i.yu, %.4.v.i710.1
  %i.yw = or i32 %i.yv, %.5.i711
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %.lr.ph52.i706.1
  %.5.i711.1 = phi i32 [ %i.yw, %bb.dh ], [ %.5.i711, %.lr.ph52.i706.1 ] ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %.051.i707, i64 64 ; 2 uses
  %.not42.i712.1 = icmp eq ptr %i.yx, %i.xr
  br i1 %.not42.i712.1, label %_ssa_result_info.exit, label %.lr.ph52.i706, !llvm.loop !2

bb.dj:                                            ; preds = %bb.da
  %i.yy = zext nneg i8 %i.vr to i32
  %i.yz = shl nuw i32 1, %i.yy                    ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.vp, i64 9
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !33
  %.not.i433 = icmp eq i8 %i.zb, 0
  br i1 %.not.i433, label %bb.dk, label %_ssa_result_info.exit

bb.dk:                                            ; preds = %bb.dj
  %i.zc = icmp eq i8 %i.vr, 6
  %spec.select.i435 = select i1 %i.zc, i32 -2147483584, i32 %i.yz
  br label %_ssa_result_info.exit

bb.dl:                                            ; preds = %bb.cw
  %.not.i416 = icmp eq ptr %i.lg, null
  br i1 %.not.i416, label %_ssa_result_info.exit.thread, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.zd = zext nneg i32 %i.uz to i64
  %i.ze = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.zd
  %i.zf = load i32, ptr %i.ze, align 8, !tbaa !117
  br label %_ssa_result_info.exit

_ssa_result_info.exit:                            ; preds = %.lr.ph.i698.prol.loopexit, %.lr.ph.i698, %.lr.ph52.i706.prol.loopexit, %bb.di, %bb.dj, %bb.db, %bb.dm, %bb.dk, %bb.dd, %bb.de
  %.0.i417 = phi i32 [ %i.yz, %bb.dj ], [ %i.zf, %bb.dm ], [ %spec.select.i435, %bb.dk ], [ %..i694, %bb.db ], [ %.5.i711.1, %bb.di ], [ %..i694, %bb.dd ], [ %..i694, %bb.de ], [ %.5.i711.lcssa.unr, %.lr.ph52.i706.prol.loopexit ], [ %.2.i701.lcssa.unr, %.lr.ph.i698.prol.loopexit ], [ %.2.i701.3, %.lr.ph.i698 ]
  %i.zg = and i32 %.0.i417, 16778239
  %.not8905.i = icmp eq i32 %i.zg, 0
  br i1 %.not8905.i, label %bb.ef, label %_ssa_result_info.exit.thread

_ssa_result_info.exit.thread:                     ; preds = %bb.da, %bb.dl, %_ssa_result_info.exit, %bb.cv
  %i.zh = getelementptr inbounds nuw i8, ptr %.08506.i, i64 28 ; 14 uses
  %i.zi = load i8, ptr %i.zh, align 4, !tbaa !55  ; 13 uses
  switch i8 %i.zi, label %_ssa_op1_info.exit402.thread [
    i8 27, label %bb.dn
    i8 28, label %bb.dn
    i8 29, label %bb.dn
    i8 23, label %bb.dn
    i8 24, label %bb.dn
  ]

bb.dn:                                            ; preds = %_ssa_result_info.exit.thread, %_ssa_result_info.exit.thread, %_ssa_result_info.exit.thread, %_ssa_result_info.exit.thread, %_ssa_result_info.exit.thread
  %i.zj = getelementptr inbounds nuw i8, ptr %.08506.i, i64 32
  %i.zk = getelementptr inbounds nuw i8, ptr %.08507.i, i64 36
  %i.zl = getelementptr inbounds nuw i8, ptr %.08506.i, i64 61
  %i.zm = load i8, ptr %i.zl, align 1, !tbaa !80
  %i.zn = icmp eq i8 %i.zm, 1
  br i1 %i.zn, label %bb.do, label %bb.ec

bb.do:                                            ; preds = %bb.dn
  %i.zo = load i32, ptr %i.v, align 4, !tbaa !81
  %i.zp = and i32 %i.zo, 33554432
  %.not9.i401 = icmp eq i32 %i.zp, 0
  br i1 %.not9.i401, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.zq = getelementptr inbounds nuw i8, ptr %.08506.i, i64 40
  %i.zr = load i32, ptr %i.zq, align 8, !tbaa !33
  %i.zs = sext i32 %i.zr to i64
  %i.zt = getelementptr inbounds i8, ptr %i.zj, i64 %i.zs
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do
  %i.zu = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.zv = getelementptr inbounds nuw i8, ptr %.08506.i, i64 40
  %i.zw = load i32, ptr %i.zv, align 8, !tbaa !33
  %i.zx = zext i32 %i.zw to i64
  %i.zy = getelementptr inbounds nuw [16 x i8], ptr %i.zu, i64 %i.zx
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.zz = phi ptr [ %i.zt, %bb.dp ], [ %i.zy, %bb.dq ] ; 4 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 8
  %i.aab = load i8, ptr %i.aaa, align 8, !tbaa !33 ; 3 uses
  switch i8 %i.aab, label %bb.ea [
    i8 11, label %_ssa_op1_info.exit402.thread
    i8 7, label %bb.ds
  ]

bb.ds:                                            ; preds = %bb.dr
  %i.aac = load ptr, ptr %i.zz, align 8, !tbaa !33 ; 4 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zz, i64 9
  %i.aae = load i8, ptr %i.aad, align 1, !tbaa !33
  %.not.i714 = icmp eq i8 %i.aae, 0
  %..i715 = select i1 %.not.i714, i32 -2147483520, i32 -1073741696 ; 8 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aac, i64 28
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !110
  %i.aah = icmp eq i32 %i.aag, 0
  br i1 %i.aah, label %_ssa_op1_info.exit402, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  %i.aaj = load i32, ptr %i.aai, align 8, !tbaa !33
  %i.aak = and i32 %i.aaj, 4
  %.not41.i716 = icmp eq i32 %i.aak, 0
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aac, i64 16
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !33 ; 8 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aac, i64 24
  %i.aao = load i32, ptr %i.aan, align 8, !tbaa !111 ; 2 uses
  %i.aap = zext i32 %i.aao to i64                 ; 2 uses
  %.not4249.i726 = icmp eq i32 %i.aao, 0          ; 2 uses
  br i1 %.not41.i716, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %.idx.i717 = shl nuw nsw i64 %i.aap, 4          ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aam, i64 %.idx.i717
  br i1 %.not4249.i726, label %_ssa_op1_info.exit402, label %.lr.ph.i719.preheader

.lr.ph.i719.preheader:                            ; preds = %bb.du
  %i.aar = add nsw i64 %.idx.i717, -16            ; 2 uses
  %i.aas = lshr exact i64 %i.aar, 4
  %i.aat = add nuw nsw i64 %i.aas, 1
  %xtraiter4868 = and i64 %i.aat, 3               ; 2 uses
  %lcmp.mod4869.not = icmp eq i64 %xtraiter4868, 0
  br i1 %lcmp.mod4869.not, label %.lr.ph.i719.prol.loopexit, label %.lr.ph.i719.prol

.lr.ph.i719.prol:                                 ; preds = %.lr.ph.i719.preheader, %.lr.ph.i719.prol
  %.03848.i720.prol = phi ptr [ %i.aba, %.lr.ph.i719.prol ], [ %i.aam, %.lr.ph.i719.preheader ] ; 2 uses
  %.147.i721.prol = phi i32 [ %.2.i722.prol, %.lr.ph.i719.prol ], [ %..i715, %.lr.ph.i719.preheader ]
  %prol.iter4870 = phi i64 [ %prol.iter4870.next, %.lr.ph.i719.prol ], [ 0, %.lr.ph.i719.preheader ]
  %i.aau = getelementptr inbounds nuw i8, ptr %.03848.i720.prol, i64 8
  %i.aav = load i8, ptr %i.aau, align 8, !tbaa !33 ; 2 uses
  %i.aaw = icmp eq i8 %i.aav, 0
  %i.aax = zext nneg i8 %i.aav to i32
  %i.aay = shl nuw i32 1024, %i.aax
  %i.aaz = select i1 %i.aaw, i32 0, i32 %i.aay, !prof !25
  %.2.i722.prol = or i32 %i.aaz, %.147.i721.prol  ; 3 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %.03848.i720.prol, i64 16 ; 2 uses
  %prol.iter4870.next = add i64 %prol.iter4870, 1 ; 2 uses
  %prol.iter4870.cmp.not = icmp eq i64 %prol.iter4870.next, %xtraiter4868
  br i1 %prol.iter4870.cmp.not, label %.lr.ph.i719.prol.loopexit, label %.lr.ph.i719.prol, !llvm.loop !289

.lr.ph.i719.prol.loopexit:                        ; preds = %.lr.ph.i719.prol, %.lr.ph.i719.preheader
  %.2.i722.lcssa.unr = phi i32 [ poison, %.lr.ph.i719.preheader ], [ %.2.i722.prol, %.lr.ph.i719.prol ]
  %.03848.i720.unr = phi ptr [ %i.aam, %.lr.ph.i719.preheader ], [ %i.aba, %.lr.ph.i719.prol ]
  %.147.i721.unr = phi i32 [ %..i715, %.lr.ph.i719.preheader ], [ %.2.i722.prol, %.lr.ph.i719.prol ]
  %i.abb = icmp ult i64 %i.aar, 48
  br i1 %i.abb, label %_ssa_op1_info.exit402, label %.lr.ph.i719

.lr.ph.i719:                                      ; preds = %.lr.ph.i719.prol.loopexit, %.lr.ph.i719
  %.03848.i720 = phi ptr [ %i.aca, %.lr.ph.i719 ], [ %.03848.i720.unr, %.lr.ph.i719.prol.loopexit ] ; 5 uses
  %.147.i721 = phi i32 [ %.2.i722.3, %.lr.ph.i719 ], [ %.147.i721.unr, %.lr.ph.i719.prol.loopexit ]
  %i.abc = getelementptr inbounds nuw i8, ptr %.03848.i720, i64 8
  %i.abd = load i8, ptr %i.abc, align 8, !tbaa !33 ; 2 uses
  %i.abe = icmp eq i8 %i.abd, 0
  %i.abf = zext nneg i8 %i.abd to i32
  %i.abg = shl nuw i32 1024, %i.abf
  %i.abh = select i1 %i.abe, i32 0, i32 %i.abg, !prof !25
  %.2.i722 = or i32 %i.abh, %.147.i721
  %i.abi = getelementptr inbounds nuw i8, ptr %.03848.i720, i64 24
  %i.abj = load i8, ptr %i.abi, align 8, !tbaa !33 ; 2 uses
  %i.abk = icmp eq i8 %i.abj, 0
  %i.abl = zext nneg i8 %i.abj to i32
  %i.abm = shl nuw i32 1024, %i.abl
  %i.abn = select i1 %i.abk, i32 0, i32 %i.abm, !prof !25
  %.2.i722.1 = or i32 %i.abn, %.2.i722
  %i.abo = getelementptr inbounds nuw i8, ptr %.03848.i720, i64 40
  %i.abp = load i8, ptr %i.abo, align 8, !tbaa !33 ; 2 uses
  %i.abq = icmp eq i8 %i.abp, 0
  %i.abr = zext nneg i8 %i.abp to i32
  %i.abs = shl nuw i32 1024, %i.abr
  %i.abt = select i1 %i.abq, i32 0, i32 %i.abs, !prof !25
  %.2.i722.2 = or i32 %i.abt, %.2.i722.1
  %i.abu = getelementptr inbounds nuw i8, ptr %.03848.i720, i64 56
  %i.abv = load i8, ptr %i.abu, align 8, !tbaa !33 ; 2 uses
  %i.abw = icmp eq i8 %i.abv, 0
  %i.abx = zext nneg i8 %i.abv to i32
  %i.aby = shl nuw i32 1024, %i.abx
  %i.abz = select i1 %i.abw, i32 0, i32 %i.aby, !prof !25
  %.2.i722.3 = or i32 %i.abz, %.2.i722.2          ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %.03848.i720, i64 64 ; 2 uses
  %.not44.i723.3 = icmp eq ptr %i.aca, %i.aaq
  br i1 %.not44.i723.3, label %_ssa_op1_info.exit402, label %.lr.ph.i719, !llvm.loop !1

bb.dv:                                            ; preds = %bb.dt
  %.idx54.i725 = shl nuw nsw i64 %i.aap, 5        ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aam, i64 %.idx54.i725
  br i1 %.not4249.i726, label %_ssa_op1_info.exit402, label %.lr.ph52.i727.preheader

.lr.ph52.i727.preheader:                          ; preds = %bb.dv
  %i.acc = add nsw i64 %.idx54.i725, -32          ; 2 uses
  %i.acd = and i64 %i.acc, 32
  %lcmp.mod4872.not.not = icmp eq i64 %i.acd, 0
  br i1 %lcmp.mod4872.not.not, label %.lr.ph52.i727.prol, label %.lr.ph52.i727.prol.loopexit

.lr.ph52.i727.prol:                               ; preds = %.lr.ph52.i727.preheader
  %i.ace = getelementptr inbounds nuw i8, ptr %i.aam, i64 8
  %i.acf = load i8, ptr %i.ace, align 8, !tbaa !33 ; 2 uses
  %i.acg = icmp eq i8 %i.acf, 0
  br i1 %i.acg, label %.lr.ph52.i727.prol.loopexit.unr-lcssa, label %bb.dw, !prof !25

bb.dw:                                            ; preds = %.lr.ph52.i727.prol
  %i.ach = getelementptr inbounds nuw i8, ptr %i.aam, i64 24
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !115
  %.not43.i730.prol = icmp eq ptr %i.aci, null
  %.4.v.i731.prol = select i1 %.not43.i730.prol, i32 4194304, i32 8388608
  %i.acj = zext nneg i8 %i.acf to i32
  %i.ack = shl nuw i32 1024, %i.acj
  %i.acl = or i32 %i.ack, %.4.v.i731.prol
  %i.acm = or i32 %i.acl, %..i715
  br label %.lr.ph52.i727.prol.loopexit.unr-lcssa

.lr.ph52.i727.prol.loopexit.unr-lcssa:            ; preds = %bb.dw, %.lr.ph52.i727.prol
  %.5.i732.prol = phi i32 [ %i.acm, %bb.dw ], [ %..i715, %.lr.ph52.i727.prol ] ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.aam, i64 32
  br label %.lr.ph52.i727.prol.loopexit

.lr.ph52.i727.prol.loopexit:                      ; preds = %.lr.ph52.i727.prol.loopexit.unr-lcssa, %.lr.ph52.i727.preheader
  %.5.i732.lcssa.unr = phi i32 [ poison, %.lr.ph52.i727.preheader ], [ %.5.i732.prol, %.lr.ph52.i727.prol.loopexit.unr-lcssa ]
  %.051.i728.unr = phi ptr [ %i.aam, %.lr.ph52.i727.preheader ], [ %i.acn, %.lr.ph52.i727.prol.loopexit.unr-lcssa ]
  %.350.i729.unr = phi i32 [ %..i715, %.lr.ph52.i727.preheader ], [ %.5.i732.prol, %.lr.ph52.i727.prol.loopexit.unr-lcssa ]
  %i.aco = icmp eq i64 %i.acc, 0
  br i1 %i.aco, label %_ssa_op1_info.exit402, label %.lr.ph52.i727

.lr.ph52.i727:                                    ; preds = %.lr.ph52.i727.prol.loopexit, %bb.dz
  %.051.i728 = phi ptr [ %i.adh, %bb.dz ], [ %.051.i728.unr, %.lr.ph52.i727.prol.loopexit ] ; 5 uses
  %.350.i729 = phi i32 [ %.5.i732.1, %bb.dz ], [ %.350.i729.unr, %.lr.ph52.i727.prol.loopexit ] ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %.051.i728, i64 8
  %i.acq = load i8, ptr %i.acp, align 8, !tbaa !33 ; 2 uses
  %i.acr = icmp eq i8 %i.acq, 0
  br i1 %i.acr, label %.lr.ph52.i727.1, label %bb.dx, !prof !25

bb.dx:                                            ; preds = %.lr.ph52.i727
  %i.acs = getelementptr inbounds nuw i8, ptr %.051.i728, i64 24
  %i.act = load ptr, ptr %i.acs, align 8, !tbaa !115
  %.not43.i730 = icmp eq ptr %i.act, null
  %.4.v.i731 = select i1 %.not43.i730, i32 4194304, i32 8388608
  %i.acu = zext nneg i8 %i.acq to i32
  %i.acv = shl nuw i32 1024, %i.acu
  %i.acw = or i32 %i.acv, %.4.v.i731
  %i.acx = or i32 %i.acw, %.350.i729
  br label %.lr.ph52.i727.1

end_hunk_4
begin_hunk_5_@zend_infer_types_ex:bb.a
  %i.ago = getelementptr inbounds nuw [48 x i8], ptr %i.lf, i64 %i.agk ; 2 uses
  %i.agp = load i32, ptr %i.ago, align 8, !tbaa !119
  %i.agq = load i32, ptr %i.s, align 4, !tbaa !120
  %i.agr = icmp slt i32 %i.agp, %i.agq
  br i1 %i.agr, label %bb.ev, label %.thread915

bb.ev:                                            ; preds = %bb.eu
  %i.ags = getelementptr inbounds nuw i8, ptr %i.ago, i64 40
  %i.agt = load i8, ptr %i.ags, align 8
  %i.agu = lshr i8 %i.agt, 2
  %i.agv = and i8 %i.agu, 3                       ; 2 uses
  %.not8921.i = icmp eq i8 %i.agv, 0
  %i.agw = icmp eq i8 %i.agv, 2
  %..i741 = select i1 %i.agw, i32 -1067384704, i32 -520093697
  %.58159.i = select i1 %.not8921.i, i32 0, i32 %..i741 ; 2 uses
  %.not8922.i = icmp eq i32 %i.agm, %.58159.i
  br i1 %.not8922.i, label %bb.ez, label %.thread919

.thread915:                                       ; preds = %bb.eu
  %.not8922.i917 = icmp eq i32 %i.agm, 0
  br i1 %.not8922.i917, label %bb.ez, label %.thread919

.thread919:                                       ; preds = %bb.ev, %.thread915
  %.58159.i918921 = phi i32 [ 0, %.thread915 ], [ %.58159.i, %bb.ev ] ; 2 uses
  %i.agx = xor i32 %.58159.i918921, -1
  %i.agy = and i32 %i.agm, %i.agx
  %.not8925.i = icmp eq i32 %i.agy, 0
  br i1 %.not8925.i, label %bb.ey, label %.critedge10420.critedge10992.i

.critedge10420.critedge10992.i:                   ; preds = %.thread919
  %.val550 = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.agz = getelementptr inbounds nuw [48 x i8], ptr %.val550, i64 %i.agk
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 8
  %i.ahb = load i32, ptr %i.aha, align 8, !tbaa !121 ; 2 uses
  %i.ahc = icmp sgt i32 %i.ahb, -1
  br i1 %i.ahc, label %bb.ew, label %emit_type_narrowing_warning.exit743

bb.ew:                                            ; preds = %.critedge10420.critedge10992.i
  %i.ahd = load ptr, ptr %i.t, align 8, !tbaa !53 ; 2 uses
  %.not.i742 = icmp eq ptr %i.ahd, null
  br i1 %.not.i742, label %emit_type_narrowing_warning.exit743, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ahe = zext nneg i32 %i.ahb to i64
  %i.ahf = getelementptr inbounds nuw [32 x i8], ptr %i.ahd, i64 %i.ahe ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 28
  %i.ahh = load i8, ptr %i.ahg, align 4, !tbaa !55
  %i.ahi = call ptr @zend_get_opcode_name(i8 noundef zeroext %i.ahh) #17
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahf, i64 24
  %i.ahk = load i32, ptr %i.ahj, align 8, !tbaa !122
  br label %emit_type_narrowing_warning.exit743

emit_type_narrowing_warning.exit743:              ; preds = %.critedge10420.critedge10992.i, %bb.ew, %bb.ex
  %i.ahl = phi ptr [ %i.ahi, %bb.ex ], [ @.str, %bb.ew ], [ @.str, %.critedge10420.critedge10992.i ]
  %i.ahm = phi i32 [ %i.ahk, %bb.ex ], [ 0, %bb.ew ], [ 0, %.critedge10420.critedge10992.i ]
  %i.ahn = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aho = load ptr, ptr %i.ahn, align 8, !tbaa !123
  call void (i32, ptr, i32, ptr, ...) @zend_error_at(i32 noundef 2, ptr noundef %i.aho, i32 noundef %i.ahm, ptr noundef nonnull @.str.1, ptr noundef %i.ahl) #17
  br label %_zend_update_type_info.exit

bb.ey:                                            ; preds = %.thread919
  store i32 %.58159.i918921, ptr %i.agl, align 8, !tbaa !117
  call fastcc void @add_usages(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.agi)
  br label %bb.ez

bb.ez:                                            ; preds = %.thread915, %bb.ey, %bb.ev, %bb.et, %bb.es
  %i.ahp = getelementptr inbounds nuw i8, ptr %.08506.i, i64 28
  %i.ahq = load i8, ptr %i.ahp, align 4, !tbaa !55
  switch i8 %i.ahq, label %_zend_update_type_info.exit.thread [
    i8 27, label %bb.fa
    i8 28, label %bb.fa
    i8 29, label %bb.fa
    i8 23, label %bb.fa
    i8 24, label %bb.fa
  ]

bb.fa:                                            ; preds = %bb.ez, %bb.ez, %bb.ez, %bb.ez, %bb.ez
  %i.ahr = getelementptr inbounds nuw i8, ptr %.08507.i, i64 48
  %i.ahs = load i32, ptr %i.ahr, align 4, !tbaa !36 ; 3 uses
  %i.aht = icmp sgt i32 %i.ahs, -1
  br i1 %i.aht, label %bb.fb, label %_zend_update_type_info.exit.thread

bb.fb:                                            ; preds = %bb.fa
  %i.ahu = zext nneg i32 %i.ahs to i64            ; 3 uses
  %i.ahv = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.ahu ; 2 uses
  %i.ahw = load i32, ptr %i.ahv, align 8, !tbaa !117 ; 4 uses
  %i.ahx = and i32 %i.ahw, 1024
  %.not8926.i = icmp eq i32 %i.ahx, 0
  br i1 %.not8926.i, label %bb.fc, label %_zend_update_type_info.exit.thread

bb.fc:                                            ; preds = %bb.fb
  %i.ahy = getelementptr inbounds nuw [48 x i8], ptr %i.lf, i64 %i.ahu ; 2 uses
  %i.ahz = load i32, ptr %i.ahy, align 8, !tbaa !119
  %i.aia = load i32, ptr %i.s, align 4, !tbaa !120
  %i.aib = icmp slt i32 %i.ahz, %i.aia
  br i1 %i.aib, label %bb.fd, label %.thread922

bb.fd:                                            ; preds = %bb.fc
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ahy, i64 40
  %i.aid = load i8, ptr %i.aic, align 8
  %i.aie = lshr i8 %i.aid, 2
  %i.aif = and i8 %i.aie, 3                       ; 2 uses
  %.not8927.i = icmp eq i8 %i.aif, 0
  %i.aig = icmp eq i8 %i.aif, 2
  %..i744 = select i1 %i.aig, i32 -1067384704, i32 -520093697
  %.58153.i = select i1 %.not8927.i, i32 0, i32 %..i744 ; 2 uses
  %.not8928.i = icmp eq i32 %i.ahw, %.58153.i
  br i1 %.not8928.i, label %_zend_update_type_info.exit.thread, label %.thread926

.thread922:                                       ; preds = %bb.fc
  %.not8928.i924 = icmp eq i32 %i.ahw, 0
  br i1 %.not8928.i924, label %_zend_update_type_info.exit.thread, label %.thread926

.thread926:                                       ; preds = %bb.fd, %.thread922
  %.58153.i925928 = phi i32 [ 0, %.thread922 ], [ %.58153.i, %bb.fd ] ; 2 uses
  %i.aih = xor i32 %.58153.i925928, -1
  %i.aii = and i32 %i.ahw, %i.aih
  %.not8931.i = icmp eq i32 %i.aii, 0
  br i1 %.not8931.i, label %bb.fg, label %.critedge10420.critedge10994.i

.critedge10420.critedge10994.i:                   ; preds = %.thread926
  %.val551 = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.aij = getelementptr inbounds nuw [48 x i8], ptr %.val551, i64 %i.ahu
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 8
  %i.ail = load i32, ptr %i.aik, align 8, !tbaa !121 ; 2 uses
  %i.aim = icmp sgt i32 %i.ail, -1
  br i1 %i.aim, label %bb.fe, label %emit_type_narrowing_warning.exit746

bb.fe:                                            ; preds = %.critedge10420.critedge10994.i
  %i.ain = load ptr, ptr %i.t, align 8, !tbaa !53 ; 2 uses
  %.not.i745 = icmp eq ptr %i.ain, null
  br i1 %.not.i745, label %emit_type_narrowing_warning.exit746, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.aio = zext nneg i32 %i.ail to i64
  %i.aip = getelementptr inbounds nuw [32 x i8], ptr %i.ain, i64 %i.aio ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 28
  %i.air = load i8, ptr %i.aiq, align 4, !tbaa !55
  %i.ais = call ptr @zend_get_opcode_name(i8 noundef zeroext %i.air) #17
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aip, i64 24
  %i.aiu = load i32, ptr %i.ait, align 8, !tbaa !122
  br label %emit_type_narrowing_warning.exit746

emit_type_narrowing_warning.exit746:              ; preds = %.critedge10420.critedge10994.i, %bb.fe, %bb.ff
  %i.aiv = phi ptr [ %i.ais, %bb.ff ], [ @.str, %bb.fe ], [ @.str, %.critedge10420.critedge10994.i ]
  %i.aiw = phi i32 [ %i.aiu, %bb.ff ], [ 0, %bb.fe ], [ 0, %.critedge10420.critedge10994.i ]
  %i.aix = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !123
  call void (i32, ptr, i32, ptr, ...) @zend_error_at(i32 noundef 2, ptr noundef %i.aiy, i32 noundef %i.aiw, ptr noundef nonnull @.str.1, ptr noundef %i.aiv) #17
  br label %_zend_update_type_info.exit

bb.fg:                                            ; preds = %.thread926
  store i32 %.58153.i925928, ptr %i.ahv, align 8, !tbaa !117
  call fastcc void @add_usages(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.ahs)
  br label %_zend_update_type_info.exit.thread

_ssa_op1_info.exit402.thread:                     ; preds = %bb.dr, %bb.ec, %bb.ed, %_ssa_op1_info.exit402, %_ssa_result_info.exit.thread
  switch i8 %i.zi, label %bb.ase [
    i8 1, label %bb.fh
    i8 2, label %bb.fh
    i8 3, label %bb.fh
    i8 4, label %bb.fh
    i8 12, label %bb.fh
    i8 5, label %bb.fh
    i8 9, label %bb.fh
    i8 10, label %bb.fh
    i8 11, label %bb.fh
    i8 6, label %bb.fh
    i8 7, label %bb.fh
    i8 8, label %bb.fh
    i8 13, label %bb.fm
    i8 57, label %bb.fq
    i8 14, label %bb.fu
    i8 15, label %bb.fu
    i8 16, label %bb.fu
    i8 17, label %bb.fu
    i8 18, label %bb.fu
    i8 19, label %bb.fu
    i8 20, label %bb.fu
    i8 21, label %bb.fu
    i8 -118, label %bb.fu
    i8 46, label %bb.fu
    i8 47, label %bb.fu
    i8 48, label %bb.fu
    i8 -60, label %bb.fu
    i8 52, label %bb.fu
    i8 -102, label %bb.fu
    i8 114, label %bb.fu
    i8 115, label %bb.fu
    i8 -108, label %bb.fu
    i8 -76, label %bb.fu
    i8 -105, label %bb.fu
    i8 -67, label %bb.fu
    i8 -62, label %bb.fu
    i8 51, label %bb.fz
    i8 31, label %bb.hg
    i8 -104, label %bb.hg
    i8 -87, label %bb.hg
    i8 -89, label %bb.hg
    i8 -58, label %switch.lookup
    i8 26, label %5
    i8 27, label %5
    i8 28, label %5
    i8 29, label %5
    i8 34, label %bb.mt
    i8 35, label %bb.mt
    i8 36, label %bb.nr
    i8 37, label %bb.nr
    i8 23, label %bb.om
    i8 24, label %bb.qx
    i8 25, label %bb.sr
    i8 -124, label %bb.tk
    i8 -123, label %bb.tk
    i8 -122, label %bb.tk
    i8 -121, label %bb.tk
    i8 22, label %bb.uc
    i8 30, label %bb.vp
    i8 32, label %bb.wb
    i8 33, label %bb.xi
    i8 -88, label %bb.xr
    i8 -73, label %bb.xv
    i8 -53, label %bb.xz
    i8 117, label %bb.yc
    i8 -74, label %bb.yp
    i8 -96, label %bb.zf
    i8 66, label %bb.zz
    i8 -71, label %bb.zz
    i8 67, label %bb.aad
    i8 -91, label %bb.aah
    i8 53, label %bb.aal
    i8 54, label %bb.aal
    i8 55, label %bb.aal
    i8 56, label %bb.aal
    i8 63, label %bb.aap
    i8 64, label %bb.aap
    i8 -92, label %bb.aap
    i8 -110, label %bb.abd
    i8 109, label %bb.abo
    i8 68, label %bb.adf
    i8 110, label %bb.adw
    i8 71, label %bb.aej
    i8 72, label %bb.aej
    i8 -109, label %bb.afp
    i8 -103, label %bb.aft
    i8 75, label %bb.afx
    i8 76, label %bb.afx
    i8 77, label %bb.agk
    i8 125, label %bb.agk
    i8 78, label %bb.ahk
    i8 126, label %bb.ahk
    i8 81, label %bb.ain
    i8 90, label %bb.ain
    i8 87, label %bb.ain
    i8 84, label %bb.ain
    i8 96, label %bb.ain
    i8 93, label %bb.ain
    i8 98, label %bb.ain
    i8 -101, label %bb.ain
    i8 -72, label %bb.alb
    i8 82, label %bb.all
    i8 91, label %bb.all
    i8 88, label %bb.all
    i8 85, label %bb.all
    i8 97, label %bb.all
    i8 94, label %bb.all
    i8 -83, label %bb.amj
    i8 -80, label %bb.amj
    i8 -81, label %bb.amj
    i8 -82, label %bb.amj
    i8 -78, label %bb.amj
    i8 -79, label %bb.amj
    i8 -51, label %bb.anc
    i8 -50, label %bb.anc
    i8 -49, label %bb.anc
    i8 -52, label %bb.anp
    i8 60, label %bb.anp
    i8 -127, label %bb.anp
    i8 -126, label %bb.anp
    i8 -125, label %bb.anp
    i8 -54, label %bb.aoc
    i8 99, label %bb.aog
    i8 -75, label %bb.aok
    i8 121, label %bb.aoz
    i8 -66, label %bb.aoz
    i8 -85, label %bb.aoz
    i8 -84, label %bb.apd
    i8 -65, label %bb.aph
    i8 -64, label %bb.aph
    i8 -63, label %bb.apl
    i8 123, label %bb.app
    i8 122, label %bb.apt
    i8 124, label %bb.apx
    i8 -116, label %bb.aqv
    i8 -56, label %bb.asa
    i8 -99, label %bb.ard
    i8 -70, label %bb.arh
    i8 -114, label %bb.arl
    i8 39, label %bb.arp
    i8 38, label %bb.arp
    i8 41, label %bb.arp
    i8 40, label %bb.arp
    i8 -86, label %bb.arw
  ]

bb.fh:                                            ; preds = %_ssa_op1_info.exit402.thread, %_ssa_op1_info.exit402.thread, %_ssa_op1_info.exit402.thread, %_ssa_op1_info.exit402.thread, %_ssa_op1_info.exit402.thread, %_ssa_op1_info.exit402.thread, %_ssa_op1_info.exit402.thread, %_ssa_op1_info.exit402.thread, %_ssa_op1_info.exit402.thread, %_ssa_op1_info.exit402.thread, %_ssa_op1_info.exit402.thread, %_ssa_op1_info.exit402.thread
  %i.aiz = getelementptr inbounds nuw i8, ptr %.08507.i, i64 20
  %i.aja = load i32, ptr %i.aiz, align 4, !tbaa !38 ; 4 uses
  %i.ajb = icmp sgt i32 %i.aja, -1
  br i1 %i.ajb, label %bb.fi, label %_zend_update_type_info.exit.thread

bb.fi:                                            ; preds = %bb.fh
  %i.ajc = call fastcc i32 @binary_op_result_type(ptr noundef %2, i8 noundef zeroext %i.zi, i32 noundef %.0.i4043437, i32 noundef %.0.i413, i32 noundef %i.aja, i64 noundef %4) ; 2 uses
  %i.ajd = and i32 %i.ajc, 1024
  %.not10280.i = icmp eq i32 %i.ajd, 0
  %i.aje = and i32 %i.ajc, -268435457             ; 2 uses
  %i.ajf = or i32 %i.aje, -520094722
  %spec.select.i = select i1 %.not10280.i, i32 %i.aje, i32 %i.ajf ; 3 uses
  %i.ajg = zext nneg i32 %i.aja to i64            ; 3 uses
  %i.ajh = getelementptr inbounds nuw [48 x i8], ptr %i.lf, i64 %i.ajg ; 3 uses
  %i.aji = load i32, ptr %i.ajh, align 8, !tbaa !119 ; 2 uses
  %i.ajj = load i32, ptr %i.r, align 8, !tbaa !96
  %i.ajk = icmp uge i32 %i.aji, %i.ajj
  %i.ajl = and i32 %spec.select.i, 1073741824
  %.not10281.i = icmp eq i32 %i.ajl, 0
  %or.cond10303.i = select i1 %i.ajk, i1 true, i1 %.not10281.i
  %i.ajm = or i32 %spec.select.i, -2147483648
  %.18143.i = select i1 %or.cond10303.i, i32 %spec.select.i, i32 %i.ajm ; 5 uses
  %i.ajn = load i32, ptr %i.s, align 4, !tbaa !120
  %i.ajo = icmp slt i32 %i.aji, %i.ajn
  br i1 %i.ajo, label %bb.fj, label %.thread929

bb.fj:                                            ; preds = %bb.fi
  %i.ajp = and i32 %.18143.i, -2147482624
  %.not10282.i = icmp eq i32 %i.ajp, 0
  %i.ajq = or i32 %.18143.i, -1073741824
  %spec.select10304.i = select i1 %.not10282.i, i32 %.18143.i, i32 %i.ajq ; 3 uses
  %i.ajr = and i32 %spec.select10304.i, 1073741888
  %or.cond10305.i.not = icmp eq i32 %i.ajr, 1073741888
  %i.ajs = or i32 %spec.select10304.i, -2147483648 ; 2 uses
  %.38145.i = select i1 %or.cond10305.i.not, i32 %i.ajs, i32 %spec.select10304.i ; 2 uses
  %i.ajt = and i32 %.38145.i, 1073742080
  %or.cond10306.i.not = icmp eq i32 %i.ajt, 1073742080
  %.48146.i = select i1 %or.cond10306.i.not, i32 %i.ajs, i32 %.38145.i
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajh, i64 40
  %i.ajv = load i8, ptr %i.aju, align 8
  %i.ajw = lshr i8 %i.ajv, 2
  %i.ajx = and i8 %i.ajw, 3                       ; 2 uses
  %.not10287.i = icmp eq i8 %i.ajx, 0
  %i.ajy = icmp eq i8 %i.ajx, 2
  %..i747 = select i1 %i.ajy, i32 -1067384704, i32 -520093697
  %i.ajz = select i1 %.not10287.i, i32 0, i32 %..i747
  %.58147.i = or i32 %i.ajz, %.48146.i            ; 2 uses
  %i.aka = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.ajg ; 2 uses
  %i.akb = load i32, ptr %i.aka, align 8, !tbaa !117 ; 2 uses
  %.not10288.i = icmp eq i32 %i.akb, %.58147.i
  br i1 %.not10288.i, label %_zend_update_type_info.exit.thread, label %.thread933

.thread929:                                       ; preds = %bb.fi
  %i.akc = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.ajg ; 2 uses
  %i.akd = load i32, ptr %i.akc, align 8, !tbaa !117 ; 2 uses
  %.not10288.i931 = icmp eq i32 %i.akd, %.18143.i
  br i1 %.not10288.i931, label %_zend_update_type_info.exit.thread, label %.thread933

.thread933:                                       ; preds = %bb.fj, %.thread929
  %.58147.i932935 = phi i32 [ %.18143.i, %.thread929 ], [ %.58147.i, %bb.fj ] ; 2 uses
  %i.ake = phi ptr [ %i.akc, %.thread929 ], [ %i.aka, %bb.fj ]
  %i.akf = phi i32 [ %i.akd, %.thread929 ], [ %i.akb, %bb.fj ]
  %i.akg = xor i32 %.58147.i932935, -1
  %i.akh = and i32 %i.akf, %i.akg
  %.not10291.i = icmp eq i32 %i.akh, 0
  br i1 %.not10291.i, label %bb.fl, label %.critedge.i

.critedge.i:                                      ; preds = %.thread933
  %i.aki = getelementptr inbounds nuw i8, ptr %i.ajh, i64 8
  %i.akj = load i32, ptr %i.aki, align 8, !tbaa !121 ; 2 uses
  %i.akk = icmp slt i32 %i.akj, 0
  %.not.i748 = icmp eq ptr %i.la, null
  %or.cond1696 = or i1 %.not.i748, %i.akk
  br i1 %or.cond1696, label %emit_type_narrowing_warning.exit749, label %bb.fk

bb.fk:                                            ; preds = %.critedge.i
  %i.akl = zext nneg i32 %i.akj to i64
  %i.akm = getelementptr inbounds nuw [32 x i8], ptr %i.la, i64 %i.akl ; 2 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 28
  %i.ako = load i8, ptr %i.akn, align 4, !tbaa !55
  %i.akp = call ptr @zend_get_opcode_name(i8 noundef zeroext %i.ako) #17
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akm, i64 24
  %i.akr = load i32, ptr %i.akq, align 8, !tbaa !122
  br label %emit_type_narrowing_warning.exit749

emit_type_narrowing_warning.exit749:              ; preds = %.critedge.i, %bb.fk
  %i.aks = phi ptr [ %i.akp, %bb.fk ], [ @.str, %.critedge.i ]
  %i.akt = phi i32 [ %i.akr, %bb.fk ], [ 0, %.critedge.i ]
  %i.aku = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.akv = load ptr, ptr %i.aku, align 8, !tbaa !123
  call void (i32, ptr, i32, ptr, ...) @zend_error_at(i32 noundef 2, ptr noundef %i.akv, i32 noundef %i.akt, ptr noundef nonnull @.str.1, ptr noundef %i.aks) #17
  br label %_zend_update_type_info.exit

bb.fl:                                            ; preds = %.thread933
  store i32 %.58147.i932935, ptr %i.ake, align 8, !tbaa !117
  call fastcc void @add_usages(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.aja)
  br label %_zend_update_type_info.exit.thread

bb.fm:                                            ; preds = %_ssa_op1_info.exit402.thread
  %i.akw = getelementptr inbounds nuw i8, ptr %.08507.i, i64 20
  %i.akx = load i32, ptr %i.akw, align 4, !tbaa !38 ; 4 uses
  %i.aky = icmp sgt i32 %i.akx, -1
  br i1 %i.aky, label %bb.fn, label %_zend_update_type_info.exit.thread

bb.fn:                                            ; preds = %bb.fm
  %i.akz = and i32 %.0.i4043437, 256
  %.not10267.i = icmp eq i32 %i.akz, 0
  %or.cond10310.i = or i1 %.not10266.i, %.not10267.i
  %i.ala = and i32 %.0.i4043437, 958
  %.not10265.i = icmp eq i32 %i.ala, 0
  %i.alb = and i32 %.0.i4043437, 64
  %.not10264.i = icmp eq i32 %i.alb, 0
  %spec.select10309.i = select i1 %.not10264.i, i32 0, i32 -1073741760 ; 2 uses
  %i.alc = or disjoint i32 %spec.select10309.i, 16
  %.18386.i = select i1 %.not10265.i, i32 %spec.select10309.i, i32 %i.alc ; 2 uses
  %i.ald = or i32 %.18386.i, 1073742080
  %.28387.i = select i1 %or.cond10310.i, i32 %.18386.i, i32 %i.ald ; 3 uses
  %i.ale = zext nneg i32 %i.akx to i64            ; 3 uses
  %i.alf = getelementptr inbounds nuw [48 x i8], ptr %i.lf, i64 %i.ale ; 2 uses
  %i.alg = load i32, ptr %i.alf, align 8, !tbaa !119 ; 2 uses
  %i.alh = load i32, ptr %i.r, align 8, !tbaa !96
  %i.ali = icmp uge i32 %i.alg, %i.alh
  %i.alj = and i32 %.28387.i, 1073741824
  %.not10269.i = icmp eq i32 %i.alj, 0
  %or.cond10311.i = select i1 %i.ali, i1 true, i1 %.not10269.i
  %i.alk = or i32 %.28387.i, -2147483648
  %.18137.i = select i1 %or.cond10311.i, i32 %.28387.i, i32 %i.alk ; 5 uses
  %i.all = load i32, ptr %i.s, align 4, !tbaa !120
  %i.alm = icmp slt i32 %i.alg, %i.all
  br i1 %i.alm, label %bb.fo, label %.thread936

bb.fo:                                            ; preds = %bb.fn
  %i.aln = and i32 %.18137.i, -2147482624
  %.not10270.i = icmp eq i32 %i.aln, 0
  %i.alo = or i32 %.18137.i, -1073741824
  %spec.select10312.i = select i1 %.not10270.i, i32 %.18137.i, i32 %i.alo ; 3 uses
  %i.alp = and i32 %spec.select10312.i, 1073741888
  %or.cond10313.i.not = icmp eq i32 %i.alp, 1073741888
  %i.alq = or i32 %spec.select10312.i, -2147483648 ; 2 uses
  %.38139.i = select i1 %or.cond10313.i.not, i32 %i.alq, i32 %spec.select10312.i ; 2 uses
  %i.alr = and i32 %.38139.i, 1073742080
  %or.cond10314.i.not = icmp eq i32 %i.alr, 1073742080
  %.48140.i = select i1 %or.cond10314.i.not, i32 %i.alq, i32 %.38139.i
  %i.als = getelementptr inbounds nuw i8, ptr %i.alf, i64 40
  %i.alt = load i8, ptr %i.als, align 8
  %i.alu = lshr i8 %i.alt, 2
  %i.alv = and i8 %i.alu, 3                       ; 2 uses
  %.not10275.i = icmp eq i8 %i.alv, 0
  %i.alw = icmp eq i8 %i.alv, 2
  %..i750 = select i1 %i.alw, i32 -1067384704, i32 -520093697
  %i.alx = select i1 %.not10275.i, i32 0, i32 %..i750
  %.58141.i = or i32 %i.alx, %.48140.i            ; 2 uses
  %i.aly = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.ale ; 2 uses
  %i.alz = load i32, ptr %i.aly, align 8, !tbaa !117 ; 2 uses
  %.not10276.i = icmp eq i32 %i.alz, %.58141.i
  br i1 %.not10276.i, label %_zend_update_type_info.exit.thread, label %.thread940

.thread936:                                       ; preds = %bb.fn
  %i.ama = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.ale ; 2 uses
  %i.amb = load i32, ptr %i.ama, align 8, !tbaa !117 ; 2 uses
  %.not10276.i938 = icmp eq i32 %i.amb, %.18137.i
  br i1 %.not10276.i938, label %_zend_update_type_info.exit.thread, label %.thread940

.thread940:                                       ; preds = %bb.fo, %.thread936
  %.58141.i939942 = phi i32 [ %.18137.i, %.thread936 ], [ %.58141.i, %bb.fo ] ; 2 uses
  %i.amc = phi ptr [ %i.ama, %.thread936 ], [ %i.aly, %bb.fo ]
  %i.amd = phi i32 [ %i.amb, %.thread936 ], [ %i.alz, %bb.fo ]
  %i.ame = xor i32 %.58141.i939942, -1
  %i.amf = and i32 %i.amd, %i.ame
  %.not10279.i = icmp eq i32 %i.amf, 0
  br i1 %.not10279.i, label %bb.fp, label %.critedge10316.i

.critedge10316.i:                                 ; preds = %.thread940
  call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr nonnull %i.lf, i32 noundef %i.akx)
  br label %_zend_update_type_info.exit

bb.fp:                                            ; preds = %.thread940
  store i32 %.58141.i939942, ptr %i.amc, align 8, !tbaa !117
  call fastcc void @add_usages(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.akx)
  br label %_zend_update_type_info.exit.thread

bb.fq:                                            ; preds = %_ssa_op1_info.exit402.thread
  %i.amg = getelementptr inbounds nuw i8, ptr %.08507.i, i64 20
  %i.amh = load i32, ptr %i.amg, align 4, !tbaa !38 ; 4 uses
  %i.ami = icmp sgt i32 %i.amh, -1
  br i1 %i.ami, label %bb.fr, label %_zend_update_type_info.exit.thread

bb.fr:                                            ; preds = %bb.fq
  %i.amj = zext nneg i32 %i.amh to i64            ; 3 uses
  %i.amk = getelementptr inbounds nuw [48 x i8], ptr %i.lf, i64 %i.amj ; 2 uses
  %i.aml = load i32, ptr %i.amk, align 8, !tbaa !119
  %i.amm = load i32, ptr %i.s, align 4, !tbaa !120
  %i.amn = icmp slt i32 %i.aml, %i.amm
  br i1 %i.amn, label %bb.fs, label %.thread943

bb.fs:                                            ; preds = %bb.fr
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amk, i64 40
end_hunk_5
begin_hunk_6_@zend_infer_types_ex:bb.a
  %spec.select10364.i = select i1 %.not10189.i, i32 %.18097.i, i32 %i.ayl ; 3 uses
  %i.aym = and i32 %spec.select10364.i, 1073741888
  %or.cond10365.i.not = icmp eq i32 %i.aym, 1073741888
  %i.ayn = or i32 %spec.select10364.i, -2147483648 ; 2 uses
  %.38099.i = select i1 %or.cond10365.i.not, i32 %i.ayn, i32 %spec.select10364.i ; 2 uses
  %i.ayo = and i32 %.38099.i, 1073742080
  %or.cond10366.i.not = icmp eq i32 %i.ayo, 1073742080
  %.48100.i = select i1 %or.cond10366.i.not, i32 %i.ayn, i32 %.38099.i
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.ayc, i64 40
  %i.ayq = load i8, ptr %i.ayp, align 8
  %i.ayr = lshr i8 %i.ayq, 2
  %i.ays = and i8 %i.ayr, 3                       ; 2 uses
  %.not10194.i = icmp eq i8 %i.ays, 0
  %i.ayt = icmp eq i8 %i.ays, 2
  %..i758 = select i1 %i.ayt, i32 -1067384704, i32 -520093697
  %i.ayu = select i1 %.not10194.i, i32 0, i32 %..i758
  %.58101.i = or i32 %i.ayu, %.48100.i            ; 2 uses
  %i.ayv = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.ayb ; 2 uses
  %i.ayw = load i32, ptr %i.ayv, align 8, !tbaa !117 ; 2 uses
  %.not10195.i = icmp eq i32 %i.ayw, %.58101.i
  br i1 %.not10195.i, label %bb.ie, label %.thread984

.thread980:                                       ; preds = %bb.ib
  %i.ayx = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.ayb ; 2 uses
  %i.ayy = load i32, ptr %i.ayx, align 8, !tbaa !117 ; 2 uses
  %.not10195.i982 = icmp eq i32 %i.ayy, %.18097.i
  br i1 %.not10195.i982, label %bb.ie, label %.thread984

.thread984:                                       ; preds = %bb.ic, %.thread980
  %.58101.i983986 = phi i32 [ %.18097.i, %.thread980 ], [ %.58101.i, %bb.ic ] ; 2 uses
  %i.ayz = phi ptr [ %i.ayx, %.thread980 ], [ %i.ayv, %bb.ic ]
  %i.aza = phi i32 [ %i.ayy, %.thread980 ], [ %i.ayw, %bb.ic ]
  %i.azb = xor i32 %.58101.i983986, -1
  %i.azc = and i32 %i.aza, %i.azb
  %.not10198.i = icmp eq i32 %i.azc, 0
  br i1 %.not10198.i, label %bb.id, label %.critedge10368.i

.critedge10368.i:                                 ; preds = %.thread984
  %.val560 = load ptr, ptr %i.h, align 8, !tbaa !27
  call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr %.val560, i32 noundef %i.axw)
  br label %_zend_update_type_info.exit

bb.id:                                            ; preds = %.thread984
  store i32 %.58101.i983986, ptr %i.ayz, align 8, !tbaa !117
  call fastcc void @add_usages(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.axw)
  br label %bb.ie

bb.ie:                                            ; preds = %.thread980, %bb.id, %bb.ic, %.thread3456
  %i.azd = load i32, ptr %.08507.i, align 4, !tbaa !57 ; 2 uses
  %i.aze = icmp sgt i32 %i.azd, -1
  br i1 %i.aze, label %bb.if, label %bb.il

bb.if:                                            ; preds = %bb.ie
  %i.azf = zext nneg i32 %i.azd to i64
  %i.azg = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.azf ; 3 uses
  %i.azh = load i32, ptr %i.azg, align 8, !tbaa !117
  %i.azi = and i32 %i.azh, 256
  %.not10199.i = icmp eq i32 %i.azi, 0
  br i1 %.not10199.i, label %bb.il, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azg, i64 32
  %i.azk = load ptr, ptr %i.azj, align 8, !tbaa !124 ; 4 uses
  %.not10200.i = icmp eq ptr %i.azk, null
  br i1 %.not10200.i, label %bb.il, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.azl = load i32, ptr %i.axv, align 4, !tbaa !38 ; 2 uses
  %i.azm = sext i32 %i.azl to i64
  %i.azn = getelementptr inbounds [40 x i8], ptr %i.lg, i64 %i.azm ; 4 uses
  %i.azo = load i32, ptr %i.azn, align 8, !tbaa !117
  %i.azp = and i32 %i.azo, 1024
  %.not10201.i = icmp eq i32 %i.azp, 0
  br i1 %.not10201.i, label %bb.ii, label %bb.il

bb.ii:                                            ; preds = %bb.ih
  %i.azq = icmp sgt i32 %i.azl, -1
  br i1 %i.azq, label %bb.ij, label %_zend_update_type_info.exit.thread

bb.ij:                                            ; preds = %bb.ii
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azg, i64 4
  %i.azs = load i8, ptr %i.azr, align 4
  %i.azt = lshr i8 %i.azs, 1
  %.lobit10202.i = and i8 %i.azt, 1
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azk, i64 28
  %i.azv = load i32, ptr %i.azu, align 4, !tbaa !135
  %i.azw = and i32 %i.azv, 32
  %.not10203.i = icmp eq i32 %i.azw, 0
  %spec.select10371.i = select i1 %.not10203.i, i8 %.lobit10202.i, i8 0 ; 2 uses
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azn, i64 32 ; 2 uses
  %i.azy = load ptr, ptr %i.azx, align 8, !tbaa !124
  %.not10204.i = icmp eq ptr %i.azy, %i.azk
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azn, i64 4
  %i.baa = load i8, ptr %i.azz, align 4           ; 2 uses
  br i1 %.not10204.i, label %bb.ik, label %._crit_edge2914

bb.ik:                                            ; preds = %bb.ij
  %i.bab = lshr i8 %i.baa, 1
  %.lobit10205.i = and i8 %i.bab, 1
  %.not10206.i = icmp eq i8 %.lobit10205.i, %spec.select10371.i
  br i1 %.not10206.i, label %_zend_update_type_info.exit.thread, label %._crit_edge2914

._crit_edge2914:                                  ; preds = %bb.ij, %bb.ik
  store ptr %i.azk, ptr %i.azx, align 8, !tbaa !124
  %i.bac = getelementptr inbounds nuw i8, ptr %i.azn, i64 4
  %i.bad = shl nuw nsw i8 %spec.select10371.i, 1
  %i.bae = and i8 %i.baa, -3
  %i.baf = or disjoint i8 %i.bae, %i.bad
  store i8 %i.baf, ptr %i.bac, align 4
  %i.bag = load i32, ptr %i.axv, align 4, !tbaa !38
  call fastcc void @add_usages(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.bag)
  br label %_zend_update_type_info.exit.thread

bb.il:                                            ; preds = %bb.ih, %bb.ig, %bb.if, %bb.ie
  %i.bah = load i32, ptr %i.axv, align 4, !tbaa !38 ; 2 uses
  %i.bai = icmp sgt i32 %i.bah, -1
  br i1 %i.bai, label %bb.im, label %_zend_update_type_info.exit.thread

bb.im:                                            ; preds = %bb.il
  %i.baj = zext nneg i32 %i.bah to i64
  %i.bak = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.baj ; 3 uses
  %i.bal = getelementptr inbounds nuw i8, ptr %i.bak, i64 32 ; 2 uses
  %i.bam = load ptr, ptr %i.bal, align 8, !tbaa !124
  %.not10207.i = icmp eq ptr %i.bam, null
  %i.ban = getelementptr inbounds nuw i8, ptr %i.bak, i64 4
  %i.bao = load i8, ptr %i.ban, align 4           ; 2 uses
  %i.bap = and i8 %i.bao, 2
  %.not10208.i = icmp eq i8 %i.bap, 0
  %or.cond3927 = select i1 %.not10207.i, i1 %.not10208.i, i1 false
  br i1 %or.cond3927, label %_zend_update_type_info.exit.thread, label %._crit_edge2917

._crit_edge2917:                                  ; preds = %bb.im
  store ptr null, ptr %i.bal, align 8, !tbaa !124
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bak, i64 4
  %i.bar = and i8 %i.bao, -3
  store i8 %i.bar, ptr %i.baq, align 4
  %i.bas = load i32, ptr %i.axv, align 4, !tbaa !38
  call fastcc void @add_usages(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.bas)
  br label %_zend_update_type_info.exit.thread

switch.lookup:                                    ; preds = %_ssa_op1_info.exit402.thread
  %i.bat = getelementptr inbounds nuw i8, ptr %.08506.i, i64 20
  %i.bau = load i32, ptr %i.bat, align 4, !tbaa !93
  %i.bav = and i32 %i.bau, 3
  %i.baw = zext nneg i32 %i.bav to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.zend_infer_types_ex, i64 %i.baw
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32       ; 3 uses
  %i.bax = getelementptr inbounds nuw i8, ptr %.08507.i, i64 20
  %i.bay = load i32, ptr %i.bax, align 4, !tbaa !38 ; 4 uses
  %i.baz = icmp sgt i32 %i.bay, -1
  br i1 %i.baz, label %bb.in, label %_zend_update_type_info.exit.thread

bb.in:                                            ; preds = %switch.lookup
  %i.bba = zext nneg i32 %i.bay to i64            ; 3 uses
  %i.bbb = getelementptr inbounds nuw [48 x i8], ptr %i.lf, i64 %i.bba ; 2 uses
  %i.bbc = load i32, ptr %i.bbb, align 8, !tbaa !119
  %i.bbd = load i32, ptr %i.s, align 4, !tbaa !120
  %i.bbe = icmp slt i32 %i.bbc, %i.bbd
  br i1 %i.bbe, label %bb.io, label %.thread987

bb.io:                                            ; preds = %bb.in
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bbb, i64 40
  %i.bbg = load i8, ptr %i.bbf, align 8
  %i.bbh = lshr i8 %i.bbg, 2
  %i.bbi = and i8 %i.bbh, 3                       ; 2 uses
  %.not10155.i = icmp eq i8 %i.bbi, 0
  %i.bbj = icmp eq i8 %i.bbi, 2
  %..i759 = select i1 %i.bbj, i32 -1067384704, i32 -520093697
  %i.bbk = select i1 %.not10155.i, i32 0, i32 %..i759
  %.58093.i = or i32 %i.bbk, %switch.ext          ; 2 uses
  %i.bbl = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.bba ; 2 uses
  %i.bbm = load i32, ptr %i.bbl, align 8, !tbaa !117 ; 2 uses
  %.not10156.i = icmp eq i32 %i.bbm, %.58093.i
  br i1 %.not10156.i, label %_zend_update_type_info.exit.thread, label %.thread991

.thread987:                                       ; preds = %bb.in
  %i.bbn = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.bba ; 2 uses
  %i.bbo = load i32, ptr %i.bbn, align 8, !tbaa !117 ; 2 uses
  %.not10156.i989 = icmp eq i32 %i.bbo, %switch.ext
  br i1 %.not10156.i989, label %_zend_update_type_info.exit.thread, label %.thread991

.thread991:                                       ; preds = %bb.io, %.thread987
  %.58093.i990993 = phi i32 [ %switch.ext, %.thread987 ], [ %.58093.i, %bb.io ] ; 2 uses
  %i.bbp = phi ptr [ %i.bbn, %.thread987 ], [ %i.bbl, %bb.io ]
  %i.bbq = phi i32 [ %i.bbo, %.thread987 ], [ %i.bbm, %bb.io ]
  %i.bbr = xor i32 %.58093.i990993, -1
  %i.bbs = and i32 %i.bbq, %i.bbr
  %.not10159.i = icmp eq i32 %i.bbs, 0
  br i1 %.not10159.i, label %bb.ip, label %.critedge10373.i

.critedge10373.i:                                 ; preds = %.thread991
  call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr nonnull %i.lf, i32 noundef %i.bay)
  br label %_zend_update_type_info.exit

bb.ip:                                            ; preds = %.thread991
  store i32 %.58093.i990993, ptr %i.bbp, align 8, !tbaa !117
  call fastcc void @add_usages(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.bay)
  br label %_zend_update_type_info.exit.thread

5:                                                ; preds = %_ssa_op1_info.exit402.thread, %_ssa_op1_info.exit402.thread, %_ssa_op1_info.exit402.thread, %_ssa_op1_info.exit402.thread
  switch i8 %i.zi, label %bb.kc [
    i8 28, label %bb.iq
    i8 27, label %bb.jd
    i8 29, label %bb.jp
  ]

bb.iq:                                            ; preds = %5
  %i.bbt = call fastcc ptr @zend_fetch_prop_info(ptr noundef %0, ptr noundef %2, ptr noundef %.08506.i, ptr noundef %.08507.i) ; 10 uses
  %.not.i760 = icmp eq ptr %i.bbt, null
  br i1 %.not.i760, label %zend_fetch_prop_type.exit, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbt, i64 40
  %i.bbv = load ptr, ptr %i.bbu, align 8
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbt, i64 48
  %i.bbx = load i32, ptr %i.bbw, align 8
  %i.bby = call fastcc i32 @zend_convert_type(ptr noundef %1, ptr %i.bbv, i32 %i.bbx, ptr noundef null)
  br label %zend_fetch_prop_type.exit

zend_fetch_prop_type.exit:                        ; preds = %bb.iq, %bb.ir
  %.0.i761 = phi i32 [ %i.bby, %bb.ir ], [ -520094722, %bb.iq ] ; 7 uses
  %i.bbz = getelementptr inbounds nuw i8, ptr %.08506.i, i64 32
  %i.bca = getelementptr inbounds nuw i8, ptr %.08507.i, i64 36
  %i.bcb = getelementptr inbounds nuw i8, ptr %.08506.i, i64 61
  %i.bcc = load i8, ptr %i.bcb, align 1, !tbaa !80
  %i.bcd = icmp eq i8 %i.bcc, 1
  br i1 %i.bcd, label %bb.is, label %bb.ja

bb.is:                                            ; preds = %zend_fetch_prop_type.exit
  %i.bce = load i32, ptr %i.v, align 4, !tbaa !81
  %i.bcf = and i32 %i.bce, 33554432
  %.not9.i = icmp eq i32 %i.bcf, 0
  br i1 %.not9.i, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.bcg = getelementptr inbounds nuw i8, ptr %.08506.i, i64 40
  %i.bch = load i32, ptr %i.bcg, align 8, !tbaa !33
  %i.bci = sext i32 %i.bch to i64
  %i.bcj = getelementptr inbounds i8, ptr %i.bbz, i64 %i.bci
  br label %bb.iv

bb.iu:                                            ; preds = %bb.is
  %i.bck = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.bcl = getelementptr inbounds nuw i8, ptr %.08506.i, i64 40
  %i.bcm = load i32, ptr %i.bcl, align 8, !tbaa !33
  %i.bcn = zext i32 %i.bcm to i64
  %i.bco = getelementptr inbounds nuw [16 x i8], ptr %i.bck, i64 %i.bcn
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iu, %bb.it
  %i.bcp = phi ptr [ %i.bcj, %bb.it ], [ %i.bco, %bb.iu ] ; 3 uses
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bcp, i64 8
  %i.bcr = load i8, ptr %i.bcq, align 8, !tbaa !33 ; 3 uses
  switch i8 %i.bcr, label %bb.ix [
    i8 11, label %_ssa_op1_info.exit
    i8 7, label %bb.iw
  ]

bb.iw:                                            ; preds = %bb.iv
  %i.bcs = call i32 @zend_array_type_info(ptr noundef nonnull %i.bcp)
  br label %_ssa_op1_info.exit

bb.ix:                                            ; preds = %bb.iv
  %i.bct = zext nneg i8 %i.bcr to i32
  %i.bcu = shl nuw i32 1, %i.bct                  ; 2 uses
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcp, i64 9
  %i.bcw = load i8, ptr %i.bcv, align 1, !tbaa !33
  %.not.i489 = icmp eq i8 %i.bcw, 0
  br i1 %.not.i489, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.bcx = or i32 %i.bcu, -1073741824
  br label %_ssa_op1_info.exit

bb.iz:                                            ; preds = %bb.ix
  %i.bcy = icmp eq i8 %i.bcr, 6
  %spec.select.i491 = select i1 %i.bcy, i32 -2147483584, i32 %i.bcu
  br label %_ssa_op1_info.exit

bb.ja:                                            ; preds = %zend_fetch_prop_type.exit
  %i.bcz = load ptr, ptr %i.j, align 8, !tbaa !83 ; 2 uses
  %.not.i362 = icmp eq ptr %i.bcz, null
  br i1 %.not.i362, label %_ssa_op1_info.exit, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.bda = load i32, ptr %i.bca, align 4, !tbaa !57 ; 2 uses
  %i.bdb = icmp sgt i32 %i.bda, -1
  br i1 %i.bdb, label %bb.jc, label %_ssa_op1_info.exit

bb.jc:                                            ; preds = %bb.jb
  %i.bdc = zext nneg i32 %i.bda to i64
  %i.bdd = getelementptr inbounds nuw [40 x i8], ptr %i.bcz, i64 %i.bdc
  %i.bde = load i32, ptr %i.bdd, align 8, !tbaa !117
  br label %_ssa_op1_info.exit

bb.jd:                                            ; preds = %5
  %i.bdf = lshr i32 %.0.i4043437, 10
  %spec.select10374.i = and i32 %i.bdf, 1024      ; 7 uses
  %i.bdg = call i32 @zend_array_element_type(i32 noundef %.0.i4043437, i8 noundef zeroext %i.ll, i32 noundef 1, i32 noundef 0) ; 7 uses
  %i.bdh = getelementptr inbounds nuw i8, ptr %.08506.i, i64 32
  %i.bdi = getelementptr inbounds nuw i8, ptr %.08507.i, i64 36
  %i.bdj = getelementptr inbounds nuw i8, ptr %.08506.i, i64 61
  %i.bdk = load i8, ptr %i.bdj, align 1, !tbaa !80
  %i.bdl = icmp eq i8 %i.bdk, 1
  br i1 %i.bdl, label %bb.je, label %bb.jm

bb.je:                                            ; preds = %bb.jd
  %i.bdm = load i32, ptr %i.v, align 4, !tbaa !81
  %i.bdn = and i32 %i.bdm, 33554432
  %.not9.i365 = icmp eq i32 %i.bdn, 0
  br i1 %.not9.i365, label %bb.jg, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.bdo = getelementptr inbounds nuw i8, ptr %.08506.i, i64 40
  %i.bdp = load i32, ptr %i.bdo, align 8, !tbaa !33
  %i.bdq = sext i32 %i.bdp to i64
  %i.bdr = getelementptr inbounds i8, ptr %i.bdh, i64 %i.bdq
  br label %bb.jh

bb.jg:                                            ; preds = %bb.je
  %i.bds = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.bdt = getelementptr inbounds nuw i8, ptr %.08506.i, i64 40
  %i.bdu = load i32, ptr %i.bdt, align 8, !tbaa !33
  %i.bdv = zext i32 %i.bdu to i64
  %i.bdw = getelementptr inbounds nuw [16 x i8], ptr %i.bds, i64 %i.bdv
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jg, %bb.jf
  %i.bdx = phi ptr [ %i.bdr, %bb.jf ], [ %i.bdw, %bb.jg ] ; 3 uses
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdx, i64 8
  %i.bdz = load i8, ptr %i.bdy, align 8, !tbaa !33 ; 3 uses
  switch i8 %i.bdz, label %bb.jj [
    i8 11, label %_ssa_op1_info.exit
    i8 7, label %bb.ji
  ]

bb.ji:                                            ; preds = %bb.jh
  %i.bea = call i32 @zend_array_type_info(ptr noundef nonnull %i.bdx)
  br label %_ssa_op1_info.exit

bb.jj:                                            ; preds = %bb.jh
  %i.beb = zext nneg i8 %i.bdz to i32
  %i.bec = shl nuw i32 1, %i.beb                  ; 2 uses
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bdx, i64 9
  %i.bee = load i8, ptr %i.bed, align 1, !tbaa !33
  %.not.i485 = icmp eq i8 %i.bee, 0
  br i1 %.not.i485, label %bb.jl, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.bef = or i32 %i.bec, -1073741824
  br label %_ssa_op1_info.exit

bb.jl:                                            ; preds = %bb.jj
  %i.beg = icmp eq i8 %i.bdz, 6
  %spec.select.i487 = select i1 %i.beg, i32 -2147483584, i32 %i.bec
  br label %_ssa_op1_info.exit

bb.jm:                                            ; preds = %bb.jd
  %.not.i363 = icmp eq ptr %i.lg, null
  br i1 %.not.i363, label %_ssa_op1_info.exit, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.beh = load i32, ptr %i.bdi, align 4, !tbaa !57 ; 2 uses
  %i.bei = icmp sgt i32 %i.beh, -1
  br i1 %i.bei, label %bb.jo, label %_ssa_op1_info.exit

bb.jo:                                            ; preds = %bb.jn
  %i.bej = zext nneg i32 %i.beh to i64
  %i.bek = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.bej
  %i.bel = load i32, ptr %i.bek, align 8, !tbaa !117
  br label %_ssa_op1_info.exit

bb.jp:                                            ; preds = %5
  %i.bem = call fastcc ptr @zend_fetch_static_prop_info(ptr noundef %1, ptr noundef %0, ptr noundef %.08506.i) ; 10 uses
  %.not.i762 = icmp eq ptr %i.bem, null
  br i1 %.not.i762, label %zend_fetch_prop_type.exit764, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bem, i64 40
  %i.beo = load ptr, ptr %i.ben, align 8
  %i.bep = getelementptr inbounds nuw i8, ptr %i.bem, i64 48
  %i.beq = load i32, ptr %i.bep, align 8
  %i.ber = call fastcc i32 @zend_convert_type(ptr noundef %1, ptr %i.beo, i32 %i.beq, ptr noundef null)
  br label %zend_fetch_prop_type.exit764

zend_fetch_prop_type.exit764:                     ; preds = %bb.jp, %bb.jq
  %.0.i763 = phi i32 [ %i.ber, %bb.jq ], [ -520094722, %bb.jp ] ; 7 uses
  %i.bes = getelementptr inbounds nuw i8, ptr %.08506.i, i64 32
  %i.bet = getelementptr inbounds nuw i8, ptr %.08507.i, i64 36
  %i.beu = getelementptr inbounds nuw i8, ptr %.08506.i, i64 61
  %i.bev = load i8, ptr %i.beu, align 1, !tbaa !80
  %i.bew = icmp eq i8 %i.bev, 1
  br i1 %i.bew, label %bb.jr, label %bb.jz

bb.jr:                                            ; preds = %zend_fetch_prop_type.exit764
  %i.bex = load i32, ptr %i.v, align 4, !tbaa !81
  %i.bey = and i32 %i.bex, 33554432
  %.not9.i369 = icmp eq i32 %i.bey, 0
  br i1 %.not9.i369, label %bb.jt, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.bez = getelementptr inbounds nuw i8, ptr %.08506.i, i64 40
  %i.bfa = load i32, ptr %i.bez, align 8, !tbaa !33
  %i.bfb = sext i32 %i.bfa to i64
  %i.bfc = getelementptr inbounds i8, ptr %i.bes, i64 %i.bfb
  br label %bb.ju

bb.jt:                                            ; preds = %bb.jr
  %i.bfd = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.bfe = getelementptr inbounds nuw i8, ptr %.08506.i, i64 40
  %i.bff = load i32, ptr %i.bfe, align 8, !tbaa !33
  %i.bfg = zext i32 %i.bff to i64
  %i.bfh = getelementptr inbounds nuw [16 x i8], ptr %i.bfd, i64 %i.bfg
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %bb.js
  %i.bfi = phi ptr [ %i.bfc, %bb.js ], [ %i.bfh, %bb.jt ] ; 3 uses
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bfi, i64 8
  %i.bfk = load i8, ptr %i.bfj, align 8, !tbaa !33 ; 3 uses
  switch i8 %i.bfk, label %bb.jw [
    i8 11, label %_ssa_op1_info.exit
    i8 7, label %bb.jv
  ]

bb.jv:                                            ; preds = %bb.ju
  %i.bfl = call i32 @zend_array_type_info(ptr noundef nonnull %i.bfi)
  br label %_ssa_op1_info.exit

bb.jw:                                            ; preds = %bb.ju
  %i.bfm = zext nneg i8 %i.bfk to i32
  %i.bfn = shl nuw i32 1, %i.bfm                  ; 2 uses
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bfi, i64 9
  %i.bfp = load i8, ptr %i.bfo, align 1, !tbaa !33
  %.not.i481 = icmp eq i8 %i.bfp, 0
  br i1 %.not.i481, label %bb.jy, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.bfq = or i32 %i.bfn, -1073741824
  br label %_ssa_op1_info.exit

bb.jy:                                            ; preds = %bb.jw
  %i.bfr = icmp eq i8 %i.bfk, 6
  %spec.select.i483 = select i1 %i.bfr, i32 -2147483584, i32 %i.bfn
  br label %_ssa_op1_info.exit

bb.jz:                                            ; preds = %zend_fetch_prop_type.exit764
  %i.bfs = load ptr, ptr %i.j, align 8, !tbaa !83 ; 2 uses
  %.not.i367 = icmp eq ptr %i.bfs, null
  br i1 %.not.i367, label %_ssa_op1_info.exit, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.bft = load i32, ptr %i.bet, align 4, !tbaa !57 ; 2 uses
  %i.bfu = icmp sgt i32 %i.bft, -1
  br i1 %i.bfu, label %bb.kb, label %_ssa_op1_info.exit

bb.kb:                                            ; preds = %bb.ka
  %i.bfv = zext nneg i32 %i.bft to i64
  %i.bfw = getelementptr inbounds nuw [40 x i8], ptr %i.bfs, i64 %i.bfv
  %i.bfx = load i32, ptr %i.bfw, align 8, !tbaa !117
  br label %_ssa_op1_info.exit

bb.kc:                                            ; preds = %5
  %i.bfy = and i32 %.0.i4043437, 1024
  br label %_ssa_op1_info.exit

_ssa_op1_info.exit:                               ; preds = %bb.ju, %bb.jh, %bb.iv, %bb.jz, %bb.jm, %bb.ja, %bb.jv, %bb.jx, %bb.jy, %bb.ka, %bb.kb, %bb.ji, %bb.jk, %bb.jl, %bb.jn, %bb.jo, %bb.iw, %bb.iy, %bb.iz, %bb.jb, %bb.jc, %bb.kc
  %.08504.i = phi i32 [ %.0.i4043437, %bb.kc ], [ %.0.i761, %bb.iv ], [ %i.bdg, %bb.jh ], [ %.0.i761, %bb.jc ], [ %.0.i761, %bb.jb ], [ %.0.i763, %bb.ju ], [ %.0.i761, %bb.iz ], [ %.0.i761, %bb.iy ], [ %.0.i761, %bb.iw ], [ %i.bdg, %bb.jo ], [ %i.bdg, %bb.jn ], [ %.0.i761, %bb.ja ], [ %i.bdg, %bb.jl ], [ %i.bdg, %bb.jk ], [ %i.bdg, %bb.ji ], [ %.0.i763, %bb.kb ], [ %.0.i763, %bb.ka ], [ %i.bdg, %bb.jm ], [ %.0.i763, %bb.jy ], [ %.0.i763, %bb.jx ], [ %.0.i763, %bb.jv ], [ %.0.i763, %bb.jz ] ; 3 uses
  %.08503.i = phi i32 [ %.0.i413, %bb.kc ], [ -521143298, %bb.iv ], [ -521143298, %bb.jh ], [ %i.bde, %bb.jc ], [ -486539265, %bb.jb ], [ -521143298, %bb.ju ], [ %spec.select.i491, %bb.iz ], [ %i.bcx, %bb.iy ], [ %i.bcs, %bb.iw ], [ %i.bel, %bb.jo ], [ -486539265, %bb.jn ], [ -486539265, %bb.ja ], [ %spec.select.i487, %bb.jl ], [ %i.bef, %bb.jk ], [ %i.bea, %bb.ji ], [ %i.bfx, %bb.kb ], [ -486539265, %bb.ka ], [ -486539265, %bb.jm ], [ %spec.select.i483, %bb.jy ], [ %i.bfq, %bb.jx ], [ %i.bfl, %bb.jv ], [ -486539265, %bb.jz ] ; 3 uses
  %.158400.i = phi i32 [ %i.bfy, %bb.kc ], [ 0, %bb.iv ], [ %spec.select10374.i, %bb.jh ], [ 0, %bb.jc ], [ 0, %bb.jb ], [ 0, %bb.ju ], [ 0, %bb.iz ], [ 0, %bb.iy ], [ 0, %bb.iw ], [ %spec.select10374.i, %bb.jo ], [ %spec.select10374.i, %bb.jn ], [ 0, %bb.ja ], [ %spec.select10374.i, %bb.jl ], [ %spec.select10374.i, %bb.jk ], [ %spec.select10374.i, %bb.ji ], [ 0, %bb.kb ], [ 0, %bb.ka ], [ %spec.select10374.i, %bb.jm ], [ 0, %bb.jy ], [ 0, %bb.jx ], [ 0, %bb.jv ], [ 0, %bb.jz ] ; 2 uses
  %.08384.i = phi i32 [ 0, %bb.kc ], [ %.0.i4043437, %bb.iv ], [ %.0.i4043437, %bb.jh ], [ %.0.i4043437, %bb.jc ], [ %.0.i4043437, %bb.jb ], [ 0, %bb.ju ], [ %.0.i4043437, %bb.iz ], [ %.0.i4043437, %bb.iy ], [ %.0.i4043437, %bb.iw ], [ %.0.i4043437, %bb.jo ], [ %.0.i4043437, %bb.jn ], [ %.0.i4043437, %bb.ja ], [ %.0.i4043437, %bb.jl ], [ %.0.i4043437, %bb.jk ], [ %.0.i4043437, %bb.ji ], [ 0, %bb.kb ], [ 0, %bb.ka ], [ %.0.i4043437, %bb.jm ], [ 0, %bb.jy ], [ 0, %bb.jx ], [ 0, %bb.jv ], [ 0, %bb.jz ] ; 3 uses
  %.08087.i = phi ptr [ null, %bb.kc ], [ %i.bbt, %bb.iv ], [ null, %bb.jh ], [ %i.bbt, %bb.jc ], [ %i.bbt, %bb.jb ], [ %i.bem, %bb.ju ], [ %i.bbt, %bb.iz ], [ %i.bbt, %bb.iy ], [ %i.bbt, %bb.iw ], [ null, %bb.jo ], [ null, %bb.jn ], [ %i.bbt, %bb.ja ], [ null, %bb.jl ], [ null, %bb.jk ], [ null, %bb.ji ], [ %i.bem, %bb.kb ], [ %i.bem, %bb.ka ], [ null, %bb.jm ], [ %i.bem, %bb.jy ], [ %i.bem, %bb.jx ], [ %i.bem, %bb.jv ], [ %i.bem, %bb.jz ] ; 6 uses
  %i.bfz = getelementptr inbounds nuw i8, ptr %.08506.i, i64 20
  %i.bga = load i32, ptr %i.bfz, align 4, !tbaa !93
  %i.bgb = trunc i32 %i.bga to i8                 ; 2 uses
  %i.bgc = load i8, ptr %i.zh, align 4, !tbaa !55 ; 2 uses
  %i.bgd = icmp eq i8 %i.bgc, 26
  br i1 %i.bgd, label %.thread1000, label %bb.kd

.thread1000:                                      ; preds = %_ssa_op1_info.exit
  %i.bge = getelementptr inbounds nuw i8, ptr %.08507.i, i64 12
  %i.bgf = load i32, ptr %i.bge, align 4, !tbaa !36 ; 2 uses
  %i.bgg = call fastcc i32 @binary_op_result_type(ptr noundef %2, i8 noundef zeroext %i.bgb, i32 noundef %.08504.i, i32 noundef %.08503.i, i32 noundef %i.bgf, i64 noundef %4) ; 2 uses
  %i.bgh = or i32 %i.bgg, %.158400.i              ; 2 uses
  %i.bgi = and i32 %i.bgg, 192
  %.not10075.i1001 = icmp eq i32 %i.bgi, 0
  %i.bgj = or i32 %i.bgh, -1073741824             ; 2 uses
  %spec.select10376.i1002 = select i1 %.not10075.i1001, i32 %i.bgh, i32 %i.bgj ; 2 uses
  %i.bgk = and i32 %spec.select10376.i1002, 768
  %.not10076.i1003 = icmp eq i32 %i.bgk, 0
  %.178402.i1004 = select i1 %.not10076.i1003, i32 %spec.select10376.i1002, i32 %i.bgj ; 3 uses
  %i.bgl = getelementptr inbounds nuw i8, ptr %.08507.i, i64 20
  %i.bgm = load i32, ptr %i.bgl, align 4, !tbaa !38
  %i.bgn = icmp slt i32 %i.bgm, 0
  %i.bgo = and i32 %.178402.i1004, 1073741824
  %.not10077.i = icmp eq i32 %i.bgo, 0
  %or.cond10393.i = select i1 %i.bgn, i1 true, i1 %.not10077.i
  %i.bgp = or i32 %.178402.i1004, -2147483648
  %spec.select11001.i = select i1 %or.cond10393.i, i32 %.178402.i1004, i32 %i.bgp
  br label %bb.lr

bb.kd:                                            ; preds = %_ssa_op1_info.exit
  %i.bgq = call fastcc i32 @binary_op_result_type(ptr noundef %2, i8 noundef zeroext %i.bgb, i32 noundef %.08504.i, i32 noundef %.08503.i, i32 noundef -1, i64 noundef %4) ; 2 uses
  %i.bgr = or i32 %i.bgq, %.158400.i              ; 2 uses
  %i.bgs = and i32 %i.bgq, 192
  %.not10075.i = icmp eq i32 %i.bgs, 0
  %i.bgt = or i32 %i.bgr, -1073741824             ; 2 uses
  %spec.select10376.i = select i1 %.not10075.i, i32 %i.bgr, i32 %i.bgt ; 2 uses
  %i.bgu = and i32 %spec.select10376.i, 768
  %.not10076.i = icmp eq i32 %i.bgu, 0
  %.178402.i = select i1 %.not10076.i, i32 %spec.select10376.i, i32 %i.bgt ; 17 uses
  switch i8 %i.bgc, label %._crit_edge2902.a [
    i8 27, label %bb.ke
    i8 28, label %bb.ld
    i8 29, label %bb.lv
  ]

._crit_edge2902.a:                                ; preds = %bb.kd
  %.phi.trans.insert2903 = getelementptr inbounds nuw i8, ptr %.08507.i, i64 12
  %.pre2904 = load i32, ptr %.phi.trans.insert2903, align 4, !tbaa !36
  br label %bb.lr

bb.ke:                                            ; preds = %bb.kd
  %i.bgv = load i8, ptr %i.lk, align 1, !tbaa !80
  %i.bgw = icmp eq i8 %i.bgv, 8
  br i1 %i.bgw, label %bb.kf, label %bb.lv

bb.kf:                                            ; preds = %bb.ke
  %i.bgx = load i8, ptr %i.uv, align 2, !tbaa !94 ; 2 uses
  %i.bgy = icmp eq i8 %i.bgx, 1
  br i1 %i.bgy, label %bb.kg, label %bb.ko

bb.kg:                                            ; preds = %bb.kf
  %i.bgz = load i32, ptr %i.v, align 4, !tbaa !81
  %i.bha = and i32 %i.bgz, 33554432
  %.not9.i411 = icmp eq i32 %i.bha, 0
  br i1 %.not9.i411, label %bb.ki, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.bhb = getelementptr inbounds nuw i8, ptr %.08506.i, i64 12
  %i.bhc = load i32, ptr %i.bhb, align 4, !tbaa !33
  %i.bhd = sext i32 %i.bhc to i64
  %i.bhe = getelementptr inbounds i8, ptr %.08506.i, i64 %i.bhd
  br label %bb.kj

bb.ki:                                            ; preds = %bb.kg
  %i.bhf = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.bhg = getelementptr inbounds nuw i8, ptr %.08506.i, i64 12
  %i.bhh = load i32, ptr %i.bhg, align 4, !tbaa !33
  %i.bhi = zext i32 %i.bhh to i64
  %i.bhj = getelementptr inbounds nuw [16 x i8], ptr %i.bhf, i64 %i.bhi
  br label %bb.kj

bb.kj:                                            ; preds = %bb.ki, %bb.kh
  %i.bhk = phi ptr [ %i.bhe, %bb.kh ], [ %i.bhj, %bb.ki ] ; 3 uses
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bhk, i64 8
  %i.bhm = load i8, ptr %i.bhl, align 8, !tbaa !33 ; 3 uses
  switch i8 %i.bhm, label %bb.kl [
    i8 11, label %_ssa_op2_info.exit
    i8 7, label %bb.kk
  ]

bb.kk:                                            ; preds = %bb.kj
  %i.bhn = call i32 @zend_array_type_info(ptr noundef nonnull %i.bhk)
  br label %_ssa_op2_info.exit

bb.kl:                                            ; preds = %bb.kj
  %i.bho = zext nneg i8 %i.bhm to i32
  %i.bhp = shl nuw i32 1, %i.bho                  ; 2 uses
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhk, i64 9
  %i.bhr = load i8, ptr %i.bhq, align 1, !tbaa !33
  %.not.i441 = icmp eq i8 %i.bhr, 0
  br i1 %.not.i441, label %bb.kn, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.bhs = or i32 %i.bhp, -1073741824
  br label %_ssa_op2_info.exit

bb.kn:                                            ; preds = %bb.kl
  %i.bht = icmp eq i8 %i.bhm, 6
  %spec.select.i443 = select i1 %i.bht, i32 -2147483584, i32 %i.bhp
  br label %_ssa_op2_info.exit

bb.ko:                                            ; preds = %bb.kf
  %i.bhu = load ptr, ptr %i.j, align 8, !tbaa !83 ; 2 uses
  %.not.i409 = icmp eq ptr %i.bhu, null
  br i1 %.not.i409, label %_ssa_op2_info.exit, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.bhv = getelementptr inbounds nuw i8, ptr %.08507.i, i64 4
  %i.bhw = load i32, ptr %i.bhv, align 4, !tbaa !58 ; 2 uses
  %i.bhx = icmp sgt i32 %i.bhw, -1
  br i1 %i.bhx, label %bb.kq, label %_ssa_op2_info.exit

bb.kq:                                            ; preds = %bb.kp
  %i.bhy = zext nneg i32 %i.bhw to i64
  %i.bhz = getelementptr inbounds nuw [40 x i8], ptr %i.bhu, i64 %i.bhy
  %i.bia = load i32, ptr %i.bhz, align 8, !tbaa !117
  br label %_ssa_op2_info.exit

_ssa_op2_info.exit:                               ; preds = %bb.kj, %bb.ko, %bb.kq, %bb.kp, %bb.kn, %bb.km, %bb.kk
  %.0.i410 = phi i32 [ %spec.select.i443, %bb.kn ], [ -521143298, %bb.kj ], [ %i.bhn, %bb.kk ], [ %i.bhs, %bb.km ], [ %i.bia, %bb.kq ], [ -486539265, %bb.kp ], [ -486539265, %bb.ko ]
  %i.bib = getelementptr inbounds nuw i8, ptr %.08507.i, i64 12 ; 5 uses
  %i.bic = load i32, ptr %i.bib, align 4, !tbaa !36 ; 4 uses
  %i.bid = icmp sgt i32 %i.bic, -1
  br i1 %i.bid, label %bb.kr, label %bb.ku

bb.kr:                                            ; preds = %_ssa_op2_info.exit
  %i.bie = call fastcc i32 @assign_dim_result_type(i32 noundef %.08384.i, i32 noundef %.0.i410, i32 noundef %.178402.i, i8 noundef zeroext %i.bgx) ; 2 uses
  %i.bif = and i32 %i.bie, 1024
  %.not10108.i = icmp eq i32 %i.bif, 0
  %i.big = and i32 %i.bie, -268435457             ; 2 uses
  %i.bih = or i32 %i.big, -520094722
  %spec.select10377.i = select i1 %.not10108.i, i32 %i.big, i32 %i.bih ; 3 uses
  %i.bii = zext nneg i32 %i.bic to i64            ; 3 uses
  %i.bij = getelementptr inbounds nuw [48 x i8], ptr %i.lf, i64 %i.bii ; 2 uses
  %i.bik = load i32, ptr %i.bij, align 8, !tbaa !119 ; 2 uses
  %i.bil = load i32, ptr %i.r, align 8, !tbaa !96
  %i.bim = icmp uge i32 %i.bik, %i.bil
  %i.bin = and i32 %spec.select10377.i, 1073741824
  %.not10109.i = icmp eq i32 %i.bin, 0
  %or.cond10378.i = select i1 %i.bim, i1 true, i1 %.not10109.i
  %i.bio = or i32 %spec.select10377.i, -2147483648
  %.18082.i = select i1 %or.cond10378.i, i32 %spec.select10377.i, i32 %i.bio ; 5 uses
  %i.bip = load i32, ptr %i.s, align 4, !tbaa !120
  %i.biq = icmp slt i32 %i.bik, %i.bip
  br i1 %i.biq, label %bb.ks, label %.thread1008

bb.ks:                                            ; preds = %bb.kr
  %i.bir = and i32 %.18082.i, -2147482624
  %.not10110.i = icmp eq i32 %i.bir, 0
  %i.bis = or i32 %.18082.i, -1073741824
  %spec.select10379.i = select i1 %.not10110.i, i32 %.18082.i, i32 %i.bis ; 3 uses
  %i.bit = and i32 %spec.select10379.i, 1073741888
  %or.cond10380.i.not = icmp eq i32 %i.bit, 1073741888
  %i.biu = or i32 %spec.select10379.i, -2147483648 ; 2 uses
  %.38084.i = select i1 %or.cond10380.i.not, i32 %i.biu, i32 %spec.select10379.i ; 2 uses
  %i.biv = and i32 %.38084.i, 1073742080
  %or.cond10381.i.not = icmp eq i32 %i.biv, 1073742080
  %.48085.i = select i1 %or.cond10381.i.not, i32 %i.biu, i32 %.38084.i
  %i.biw = getelementptr inbounds nuw i8, ptr %i.bij, i64 40
  %i.bix = load i8, ptr %i.biw, align 8
  %i.biy = lshr i8 %i.bix, 2
  %i.biz = and i8 %i.biy, 3                       ; 2 uses
  %.not10115.i = icmp eq i8 %i.biz, 0
  %i.bja = icmp eq i8 %i.biz, 2
  %..i765 = select i1 %i.bja, i32 -1067384704, i32 -520093697
  %i.bjb = select i1 %.not10115.i, i32 0, i32 %..i765
  %.58086.i = or i32 %i.bjb, %.48085.i            ; 2 uses
  %i.bjc = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.bii ; 2 uses
  %i.bjd = load i32, ptr %i.bjc, align 8, !tbaa !117 ; 2 uses
  %.not10116.i = icmp eq i32 %i.bjd, %.58086.i
  br i1 %.not10116.i, label %bb.ku, label %.thread1012

.thread1008:                                      ; preds = %bb.kr
  %i.bje = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.bii ; 2 uses
  %i.bjf = load i32, ptr %i.bje, align 8, !tbaa !117 ; 2 uses
  %.not10116.i1010 = icmp eq i32 %i.bjf, %.18082.i
  br i1 %.not10116.i1010, label %bb.ku, label %.thread1012

.thread1012:                                      ; preds = %bb.ks, %.thread1008
  %.58086.i10111014 = phi i32 [ %.18082.i, %.thread1008 ], [ %.58086.i, %bb.ks ] ; 2 uses
  %i.bjg = phi ptr [ %i.bje, %.thread1008 ], [ %i.bjc, %bb.ks ]
end_hunk_6
begin_hunk_7_@zend_infer_types_ex:bb.a
  %.not9109.i1486 = icmp eq i32 %i.gra, %.17653.i
  br i1 %.not9109.i1486, label %bb.ang, label %.thread1488

.thread1488:                                      ; preds = %bb.ane, %.thread1484
  %.57657.i14871490 = phi i32 [ %.17653.i, %.thread1484 ], [ %.57657.i, %bb.ane ] ; 2 uses
  %i.grb = phi ptr [ %i.gqz, %.thread1484 ], [ %i.gqx, %bb.ane ]
  %i.grc = phi i32 [ %i.gra, %.thread1484 ], [ %i.gqy, %bb.ane ]
  %i.grd = xor i32 %.57657.i14871490, -1
  %i.gre = and i32 %i.grc, %i.grd
  %.not9112.i = icmp eq i32 %i.gre, 0
  br i1 %.not9112.i, label %bb.anf, label %.critedge10850.i

.critedge10850.i:                                 ; preds = %.thread1488
  call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr nonnull %i.lf, i32 noundef %i.gpt)
  br label %_zend_update_type_info.exit

bb.anf:                                           ; preds = %.thread1488
  store i32 %.57657.i14871490, ptr %i.grb, align 8, !tbaa !117
  call fastcc void @add_usages(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %i.gpt)
  br label %bb.ang

bb.ang:                                           ; preds = %.thread1484, %bb.anf, %bb.ane, %bb.anc
  %i.grf = getelementptr inbounds nuw i8, ptr %.08507.i, i64 16
  %i.grg = load i32, ptr %i.grf, align 4, !tbaa !37 ; 4 uses
  %i.grh = icmp sgt i32 %i.grg, -1
  br i1 %i.grh, label %bb.anh, label %bb.ank

bb.anh:                                           ; preds = %bb.ang
  %i.gri = getelementptr inbounds nuw i8, ptr %.08507.i, i64 4
  %i.grj = load i32, ptr %i.gri, align 4, !tbaa !58 ; 2 uses
  %i.grk = icmp sgt i32 %i.grj, -1
  call void @llvm.assume(i1 %i.grk)
  %i.grl = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.grm = zext nneg i32 %i.grj to i64
  %i.grn = getelementptr inbounds nuw [40 x i8], ptr %i.grl, i64 %i.grm
  %i.gro = load i32, ptr %i.grn, align 8, !tbaa !117 ; 3 uses
  %i.grp = shl i32 %i.gro, 1
  %i.grq = and i32 %i.grp, -2147483648
  %.masked1698 = and i32 %i.gro, -268435457
  %i.grr = and i32 %i.gro, 1024
  %.not9114.i = icmp eq i32 %i.grr, 0
  %.07646.i.v = select i1 %.not9114.i, i32 %i.grq, i32 -520094722
  %.07646.i = or i32 %.07646.i.v, %.masked1698    ; 3 uses
  %i.grs = zext nneg i32 %i.grg to i64            ; 3 uses
  %i.grt = getelementptr inbounds nuw [48 x i8], ptr %i.lf, i64 %i.grs ; 2 uses
  %i.gru = load i32, ptr %i.grt, align 8, !tbaa !119 ; 2 uses
  %i.grv = load i32, ptr %i.r, align 8, !tbaa !96
  %i.grw = icmp uge i32 %i.gru, %i.grv
  %i.grx = and i32 %.07646.i, 1073741824
  %.not9115.i = icmp eq i32 %i.grx, 0
  %or.cond10854.i = select i1 %i.grw, i1 true, i1 %.not9115.i
  %i.gry = or i32 %.07646.i, -2147483648
  %.17647.i = select i1 %or.cond10854.i, i32 %.07646.i, i32 %i.gry ; 5 uses
  %i.grz = load i32, ptr %i.s, align 4, !tbaa !120
  %i.gsa = icmp slt i32 %i.gru, %i.grz
  br i1 %i.gsa, label %bb.ani, label %.thread1491

bb.ani:                                           ; preds = %bb.anh
  %i.gsb = and i32 %.17647.i, -2147482624
  %.not9116.i = icmp eq i32 %i.gsb, 0
  %i.gsc = or i32 %.17647.i, -1073741824
  %spec.select10855.i = select i1 %.not9116.i, i32 %.17647.i, i32 %i.gsc ; 3 uses
  %i.gsd = and i32 %spec.select10855.i, 1073741888
  %or.cond10856.i.not = icmp eq i32 %i.gsd, 1073741888
  %i.gse = or i32 %spec.select10855.i, -2147483648 ; 2 uses
  %.37649.i = select i1 %or.cond10856.i.not, i32 %i.gse, i32 %spec.select10855.i ; 2 uses
  %i.gsf = and i32 %.37649.i, 1073742080
  %or.cond10857.i.not = icmp eq i32 %i.gsf, 1073742080
  %.47650.i = select i1 %or.cond10857.i.not, i32 %i.gse, i32 %.37649.i
  %i.gsg = getelementptr inbounds nuw i8, ptr %i.grt, i64 40
  %i.gsh = load i8, ptr %i.gsg, align 8
  %i.gsi = lshr i8 %i.gsh, 2
  %i.gsj = and i8 %i.gsi, 3                       ; 2 uses
  %.not9121.i = icmp eq i8 %i.gsj, 0
  %i.gsk = icmp eq i8 %i.gsj, 2
  %..i855 = select i1 %i.gsk, i32 -1067384704, i32 -520093697
  %i.gsl = select i1 %.not9121.i, i32 0, i32 %..i855
  %.57651.i = or i32 %i.gsl, %.47650.i            ; 2 uses
  %i.gsm = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.grs ; 2 uses
  %i.gsn = load i32, ptr %i.gsm, align 8, !tbaa !117 ; 2 uses
  %.not9122.i = icmp eq i32 %i.gsn, %.57651.i
  br i1 %.not9122.i, label %bb.ank, label %.thread1495

.thread1491:                                      ; preds = %bb.anh
  %i.gso = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.grs ; 2 uses
  %i.gsp = load i32, ptr %i.gso, align 8, !tbaa !117 ; 2 uses
  %.not9122.i1493 = icmp eq i32 %i.gsp, %.17647.i
  br i1 %.not9122.i1493, label %bb.ank, label %.thread1495

.thread1495:                                      ; preds = %bb.ani, %.thread1491
  %.57651.i14941497 = phi i32 [ %.17647.i, %.thread1491 ], [ %.57651.i, %bb.ani ] ; 2 uses
  %i.gsq = phi ptr [ %i.gso, %.thread1491 ], [ %i.gsm, %bb.ani ]
  %i.gsr = phi i32 [ %i.gsp, %.thread1491 ], [ %i.gsn, %bb.ani ]
  %i.gss = xor i32 %.57651.i14941497, -1
  %i.gst = and i32 %i.gsr, %i.gss
  %.not9125.i = icmp eq i32 %i.gst, 0
  br i1 %.not9125.i, label %bb.anj, label %.critedge10859.i

.critedge10859.i:                                 ; preds = %.thread1495
  %.val622 = load ptr, ptr %i.h, align 8, !tbaa !27
  call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr %.val622, i32 noundef %i.grg)
  br label %_zend_update_type_info.exit

bb.anj:                                           ; preds = %.thread1495
  store i32 %.57651.i14941497, ptr %i.gsq, align 8, !tbaa !117
  call fastcc void @add_usages(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %i.grg)
  br label %bb.ank

bb.ank:                                           ; preds = %.thread1491, %bb.anj, %bb.ani, %bb.ang
  %i.gsu = load i8, ptr %i.zh, align 4, !tbaa !55
  %i.gsv = icmp eq i8 %i.gsu, -49
  br i1 %i.gsv, label %bb.anl, label %bb.anp

bb.anl:                                           ; preds = %bb.ank
  %i.gsw = getelementptr inbounds nuw i8, ptr %.08507.i, i64 48
  %i.gsx = load i32, ptr %i.gsw, align 4, !tbaa !36 ; 4 uses
  %i.gsy = icmp sgt i32 %i.gsx, -1
  br i1 %i.gsy, label %bb.anm, label %bb.anp

bb.anm:                                           ; preds = %bb.anl
  %i.gsz = getelementptr inbounds nuw i8, ptr %.08507.i, i64 36
  %i.gta = load i32, ptr %i.gsz, align 4, !tbaa !57 ; 2 uses
  %i.gtb = icmp sgt i32 %i.gta, -1
  call void @llvm.assume(i1 %i.gtb)
  %i.gtc = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.gtd = zext nneg i32 %i.gta to i64
  %i.gte = getelementptr inbounds nuw [40 x i8], ptr %i.gtc, i64 %i.gtd
  %i.gtf = load i32, ptr %i.gte, align 8, !tbaa !117 ; 3 uses
  %i.gtg = shl i32 %i.gtf, 1
  %i.gth = and i32 %i.gtg, -2147483648
  %.masked1699 = and i32 %i.gtf, -268435457
  %i.gti = and i32 %i.gtf, 1024
  %.not9127.i = icmp eq i32 %i.gti, 0
  %.07640.i.v = select i1 %.not9127.i, i32 %i.gth, i32 -520094722
  %.07640.i = or i32 %.07640.i.v, %.masked1699    ; 3 uses
  %i.gtj = zext nneg i32 %i.gsx to i64            ; 3 uses
  %i.gtk = getelementptr inbounds nuw [48 x i8], ptr %i.lf, i64 %i.gtj ; 2 uses
  %i.gtl = load i32, ptr %i.gtk, align 8, !tbaa !119 ; 2 uses
  %i.gtm = load i32, ptr %i.r, align 8, !tbaa !96
  %i.gtn = icmp uge i32 %i.gtl, %i.gtm
  %i.gto = and i32 %.07640.i, 1073741824
  %.not9128.i = icmp eq i32 %i.gto, 0
  %or.cond10863.i = select i1 %i.gtn, i1 true, i1 %.not9128.i
  %i.gtp = or i32 %.07640.i, -2147483648
  %.17641.i = select i1 %or.cond10863.i, i32 %.07640.i, i32 %i.gtp ; 5 uses
  %i.gtq = load i32, ptr %i.s, align 4, !tbaa !120
  %i.gtr = icmp slt i32 %i.gtl, %i.gtq
  br i1 %i.gtr, label %bb.ann, label %.thread1498

bb.ann:                                           ; preds = %bb.anm
  %i.gts = and i32 %.17641.i, -2147482624
  %.not9129.i = icmp eq i32 %i.gts, 0
  %i.gtt = or i32 %.17641.i, -1073741824
  %spec.select10864.i = select i1 %.not9129.i, i32 %.17641.i, i32 %i.gtt ; 3 uses
  %i.gtu = and i32 %spec.select10864.i, 1073741888
  %or.cond10865.i.not = icmp eq i32 %i.gtu, 1073741888
  %i.gtv = or i32 %spec.select10864.i, -2147483648 ; 2 uses
  %.37643.i = select i1 %or.cond10865.i.not, i32 %i.gtv, i32 %spec.select10864.i ; 2 uses
  %i.gtw = and i32 %.37643.i, 1073742080
  %or.cond10866.i.not = icmp eq i32 %i.gtw, 1073742080
  %.47644.i = select i1 %or.cond10866.i.not, i32 %i.gtv, i32 %.37643.i
  %i.gtx = getelementptr inbounds nuw i8, ptr %i.gtk, i64 40
  %i.gty = load i8, ptr %i.gtx, align 8
  %i.gtz = lshr i8 %i.gty, 2
  %i.gua = and i8 %i.gtz, 3                       ; 2 uses
  %.not9134.i = icmp eq i8 %i.gua, 0
  %i.gub = icmp eq i8 %i.gua, 2
  %..i856 = select i1 %i.gub, i32 -1067384704, i32 -520093697
  %i.guc = select i1 %.not9134.i, i32 0, i32 %..i856
  %.57645.i = or i32 %i.guc, %.47644.i            ; 2 uses
  %i.gud = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.gtj ; 2 uses
  %i.gue = load i32, ptr %i.gud, align 8, !tbaa !117 ; 2 uses
  %.not9135.i = icmp eq i32 %i.gue, %.57645.i
  br i1 %.not9135.i, label %bb.anp, label %.thread1502

.thread1498:                                      ; preds = %bb.anm
  %i.guf = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.gtj ; 2 uses
  %i.gug = load i32, ptr %i.guf, align 8, !tbaa !117 ; 2 uses
  %.not9135.i1500 = icmp eq i32 %i.gug, %.17641.i
  br i1 %.not9135.i1500, label %bb.anp, label %.thread1502

.thread1502:                                      ; preds = %bb.ann, %.thread1498
  %.57645.i15011504 = phi i32 [ %.17641.i, %.thread1498 ], [ %.57645.i, %bb.ann ] ; 2 uses
  %i.guh = phi ptr [ %i.guf, %.thread1498 ], [ %i.gud, %bb.ann ]
  %i.gui = phi i32 [ %i.gug, %.thread1498 ], [ %i.gue, %bb.ann ]
  %i.guj = xor i32 %.57645.i15011504, -1
  %i.guk = and i32 %i.gui, %i.guj
  %.not9138.i = icmp eq i32 %i.guk, 0
  br i1 %.not9138.i, label %bb.ano, label %.critedge10868.i

.critedge10868.i:                                 ; preds = %.thread1502
  %.val623 = load ptr, ptr %i.h, align 8, !tbaa !27
  call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr %.val623, i32 noundef %i.gsx)
  br label %_zend_update_type_info.exit

bb.ano:                                           ; preds = %.thread1502
  store i32 %.57645.i15011504, ptr %i.guh, align 8, !tbaa !117
  call fastcc void @add_usages(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %i.gsx)
  br label %bb.anp

bb.anp:                                           ; preds = %.thread1498, %bb.ano, %bb.ann, %bb.anl, %bb.ank, %_ssa_op1_info.exit402.thread, %_ssa_op1_info.exit402.thread, %_ssa_op1_info.exit402.thread, %_ssa_op1_info.exit402.thread, %_ssa_op1_info.exit402.thread
  %i.gul = getelementptr inbounds nuw i8, ptr %.08507.i, i64 20 ; 4 uses
  %i.gum = load i32, ptr %i.gul, align 4, !tbaa !38
  %i.gun = icmp sgt i32 %i.gum, -1
  br i1 %i.gun, label %bb.anq, label %_zend_update_type_info.exit.thread

bb.anq:                                           ; preds = %bb.anp
  %i.guo = load i32, ptr @zend_func_info_rid, align 4, !tbaa !32
  %i.gup = sext i32 %i.guo to i64
  %i.guq = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.gup
  %i.gur = load ptr, ptr %i.guq, align 8, !tbaa !97 ; 2 uses
  %.not9139.i = icmp eq ptr %i.gur, null
  br i1 %.not9139.i, label %.thread1513, label %bb.anr

bb.anr:                                           ; preds = %bb.anq
  %i.gus = getelementptr inbounds nuw i8, ptr %i.gur, i64 104
  %i.gut = load ptr, ptr %i.gus, align 8, !tbaa !101 ; 2 uses
  %.not9140.i = icmp eq ptr %i.gut, null
  br i1 %.not9140.i, label %.thread1513, label %bb.ans

bb.ans:                                           ; preds = %bb.anr
  %i.guu = load ptr, ptr %i.t, align 8, !tbaa !53
  %i.guv = ptrtoint ptr %.08506.i to i64
  %i.guw = ptrtoint ptr %i.guu to i64
  %i.gux = sub i64 %i.guv, %i.guw
  %i.guy = ashr exact i64 %i.gux, 2
  %i.guz = getelementptr inbounds i8, ptr %i.gut, i64 %i.guy
  %i.gva = load ptr, ptr %i.guz, align 8, !tbaa !102 ; 2 uses
  %.not9141.i = icmp eq ptr %i.gva, null
  br i1 %.not9141.i, label %.thread1513, label %bb.ant

bb.ant:                                           ; preds = %bb.ans
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.gvb = call i32 @zend_get_func_info(ptr noundef nonnull %i.gva, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #17 ; 2 uses
  %i.gvc = load i32, ptr %i.gul, align 4, !tbaa !38 ; 4 uses
  %i.gvd = icmp sgt i32 %i.gvc, -1
  br i1 %i.gvd, label %bb.anu, label %bb.anx

bb.anu:                                           ; preds = %bb.ant
  %i.gve = and i32 %i.gvb, 1024
  %.not9142.i = icmp eq i32 %i.gve, 0
  %i.gvf = and i32 %i.gvb, -268435457             ; 2 uses
  %i.gvg = or i32 %i.gvf, -520094722
  %spec.select10873.i = select i1 %.not9142.i, i32 %i.gvf, i32 %i.gvg ; 3 uses
  %i.gvh = zext nneg i32 %i.gvc to i64            ; 3 uses
  %i.gvi = getelementptr inbounds nuw [48 x i8], ptr %i.lf, i64 %i.gvh ; 2 uses
  %i.gvj = load i32, ptr %i.gvi, align 8, !tbaa !119 ; 2 uses
  %i.gvk = load i32, ptr %i.r, align 8, !tbaa !96
  %i.gvl = icmp uge i32 %i.gvj, %i.gvk
  %i.gvm = and i32 %spec.select10873.i, 1073741824
  %.not9143.i = icmp eq i32 %i.gvm, 0
  %or.cond10874.i = select i1 %i.gvl, i1 true, i1 %.not9143.i
  %i.gvn = or i32 %spec.select10873.i, -2147483648
  %.17635.i = select i1 %or.cond10874.i, i32 %spec.select10873.i, i32 %i.gvn ; 5 uses
  %i.gvo = load i32, ptr %i.s, align 4, !tbaa !120
  %i.gvp = icmp slt i32 %i.gvj, %i.gvo
  br i1 %i.gvp, label %bb.anv, label %.thread1505

bb.anv:                                           ; preds = %bb.anu
  %i.gvq = and i32 %.17635.i, -2147482624
  %.not9144.i = icmp eq i32 %i.gvq, 0
  %i.gvr = or i32 %.17635.i, -1073741824
  %spec.select10875.i = select i1 %.not9144.i, i32 %.17635.i, i32 %i.gvr ; 3 uses
  %i.gvs = and i32 %spec.select10875.i, 1073741888
  %or.cond10876.i.not = icmp eq i32 %i.gvs, 1073741888
  %i.gvt = or i32 %spec.select10875.i, -2147483648 ; 2 uses
  %.37637.i = select i1 %or.cond10876.i.not, i32 %i.gvt, i32 %spec.select10875.i ; 2 uses
  %i.gvu = and i32 %.37637.i, 1073742080
  %or.cond10877.i.not = icmp eq i32 %i.gvu, 1073742080
  %.47638.i = select i1 %or.cond10877.i.not, i32 %i.gvt, i32 %.37637.i
  %i.gvv = getelementptr inbounds nuw i8, ptr %i.gvi, i64 40
  %i.gvw = load i8, ptr %i.gvv, align 8
  %i.gvx = lshr i8 %i.gvw, 2
  %i.gvy = and i8 %i.gvx, 3                       ; 2 uses
  %.not9149.i = icmp eq i8 %i.gvy, 0
  %i.gvz = icmp eq i8 %i.gvy, 2
  %..i857 = select i1 %i.gvz, i32 -1067384704, i32 -520093697
  %i.gwa = select i1 %.not9149.i, i32 0, i32 %..i857
  %.57639.i = or i32 %i.gwa, %.47638.i            ; 2 uses
  %i.gwb = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.gvh ; 2 uses
  %i.gwc = load i32, ptr %i.gwb, align 8, !tbaa !117 ; 2 uses
  %.not9150.i = icmp eq i32 %i.gwc, %.57639.i
  br i1 %.not9150.i, label %bb.anx, label %.thread1509

.thread1505:                                      ; preds = %bb.anu
  %i.gwd = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.gvh ; 2 uses
  %i.gwe = load i32, ptr %i.gwd, align 8, !tbaa !117 ; 2 uses
  %.not9150.i1507 = icmp eq i32 %i.gwe, %.17635.i
  br i1 %.not9150.i1507, label %bb.anx, label %.thread1509

.thread1509:                                      ; preds = %bb.anv, %.thread1505
  %.57639.i15081511 = phi i32 [ %.17635.i, %.thread1505 ], [ %.57639.i, %bb.anv ] ; 2 uses
  %i.gwf = phi ptr [ %i.gwd, %.thread1505 ], [ %i.gwb, %bb.anv ]
  %i.gwg = phi i32 [ %i.gwe, %.thread1505 ], [ %i.gwc, %bb.anv ]
  %i.gwh = xor i32 %.57639.i15081511, -1
  %i.gwi = and i32 %i.gwg, %i.gwh
  %.not9153.i = icmp eq i32 %i.gwi, 0
  br i1 %.not9153.i, label %bb.anw, label %bb.aob

bb.anw:                                           ; preds = %.thread1509
  store i32 %.57639.i15081511, ptr %i.gwf, align 8, !tbaa !117
  call fastcc void @add_usages(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.gvc)
  br label %bb.anx

bb.anx:                                           ; preds = %.thread1505, %bb.anw, %bb.anv, %bb.ant
  %i.gwj = load ptr, ptr %i.b, align 8, !tbaa !116 ; 4 uses
  %.not9154.i = icmp eq ptr %i.gwj, null
  br i1 %.not9154.i, label %.thread1516, label %bb.any

bb.any:                                           ; preds = %bb.anx
  %i.gwk = load i32, ptr %i.gul, align 4, !tbaa !38 ; 2 uses
  %i.gwl = icmp sgt i32 %i.gwk, -1
  br i1 %i.gwl, label %bb.anz, label %.thread1516

bb.anz:                                           ; preds = %bb.any
  %i.gwm = load i8, ptr %i.c, align 1, !tbaa !106, !range !86, !noundef !87
  %i.gwn = getelementptr inbounds nuw i8, ptr %i.gwj, i64 28
  %i.gwo = load i32, ptr %i.gwn, align 4, !tbaa !135
  %i.gwp = and i32 %i.gwo, 32
  %.not9155.i = icmp eq i32 %i.gwp, 0
  %spec.select10882.i = select i1 %.not9155.i, i8 %i.gwm, i8 0 ; 2 uses
  %i.gwq = zext nneg i32 %i.gwk to i64
  %i.gwr = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.gwq ; 3 uses
  %i.gws = getelementptr inbounds nuw i8, ptr %i.gwr, i64 32 ; 2 uses
  %i.gwt = load ptr, ptr %i.gws, align 8, !tbaa !124
  %.not9156.i = icmp eq ptr %i.gwt, %i.gwj
  %i.gwu = getelementptr inbounds nuw i8, ptr %i.gwr, i64 4
  %i.gwv = load i8, ptr %i.gwu, align 4           ; 2 uses
  br i1 %.not9156.i, label %bb.aoa, label %._crit_edge2730

bb.aoa:                                           ; preds = %bb.anz
  %i.gww = lshr i8 %i.gwv, 1
  %.lobit9157.i = and i8 %i.gww, 1
  %.not9158.i = icmp eq i8 %.lobit9157.i, %spec.select10882.i
  br i1 %.not9158.i, label %.thread1516, label %._crit_edge2730

._crit_edge2730:                                  ; preds = %bb.anz, %bb.aoa
  store ptr %i.gwj, ptr %i.gws, align 8, !tbaa !124
  %i.gwx = getelementptr inbounds nuw i8, ptr %i.gwr, i64 4
  %i.gwy = shl nuw nsw i8 %spec.select10882.i, 1
  %i.gwz = and i8 %i.gwv, -3
  %i.gxa = or disjoint i8 %i.gwz, %i.gwy
  store i8 %i.gxa, ptr %i.gwx, align 4
  %i.gxb = load i32, ptr %i.gul, align 4, !tbaa !38
  call fastcc void @add_usages(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.gxb)
  br label %.thread1516

.thread1516:                                      ; preds = %bb.aoa, %._crit_edge2730, %bb.anx, %bb.any
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %_zend_update_type_info.exit.thread

bb.aob:                                           ; preds = %.thread1509
  %.val624 = load ptr, ptr %i.h, align 8, !tbaa !27
  call fastcc void @emit_type_narrowing_warning(ptr noundef nonnull %0, ptr %.val624, i32 noundef %i.gvc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %_zend_update_type_info.exit

bb.aoc:                                           ; preds = %_ssa_op1_info.exit402.thread
  %i.gxc = getelementptr inbounds nuw i8, ptr %.08507.i, i64 20 ; 3 uses
  %i.gxd = load i32, ptr %i.gxc, align 4, !tbaa !38 ; 6 uses
  %i.gxe = icmp sgt i32 %i.gxd, -1
  br i1 %i.gxe, label %bb.aod, label %_zend_update_type_info.exit.thread

bb.aod:                                           ; preds = %bb.aoc
  %i.gxf = zext nneg i32 %i.gxd to i64            ; 3 uses
  %i.gxg = getelementptr inbounds nuw [48 x i8], ptr %i.lf, i64 %i.gxf ; 2 uses
  %i.gxh = load i32, ptr %i.gxg, align 8, !tbaa !119
  %i.gxi = load i32, ptr %i.s, align 4, !tbaa !120
  %i.gxj = icmp slt i32 %i.gxh, %i.gxi
  br i1 %i.gxj, label %bb.aoe, label %.thread1518

bb.aoe:                                           ; preds = %bb.aod
  %i.gxk = getelementptr inbounds nuw i8, ptr %i.gxg, i64 40
  %i.gxl = load i8, ptr %i.gxk, align 8
  %i.gxm = lshr i8 %i.gxl, 2
  %i.gxn = and i8 %i.gxm, 3                       ; 2 uses
  %.not9091.i = icmp eq i8 %i.gxn, 0
  %i.gxo = icmp eq i8 %i.gxn, 2
  %i.gxp = select i1 %i.gxo, i32 -1067384448, i32 -520093697
  %.57632.i = select i1 %.not9091.i, i32 -1073741568, i32 %i.gxp ; 2 uses
  %i.gxq = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.gxf ; 2 uses
  %i.gxr = load i32, ptr %i.gxq, align 8, !tbaa !117 ; 2 uses
  %.not9092.i = icmp eq i32 %i.gxr, %.57632.i
  br i1 %.not9092.i, label %.thread3477, label %.thread1522

.thread1518:                                      ; preds = %bb.aod
  %i.gxs = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %i.gxf ; 2 uses
  %i.gxt = load i32, ptr %i.gxs, align 8, !tbaa !117 ; 2 uses
  %.not9092.i1520 = icmp eq i32 %i.gxt, -1073741568
  br i1 %.not9092.i1520, label %.thread3477, label %.thread1522

.thread1522:                                      ; preds = %bb.aoe, %.thread1518
  %.57632.i15211524 = phi i32 [ -1073741568, %.thread1518 ], [ %.57632.i, %bb.aoe ] ; 2 uses
  %i.gxu = phi ptr [ %i.gxs, %.thread1518 ], [ %i.gxq, %bb.aoe ]
  %i.gxv = phi i32 [ %i.gxt, %.thread1518 ], [ %i.gxr, %bb.aoe ]
  %i.gxw = xor i32 %.57632.i15211524, -1
  %i.gxx = and i32 %i.gxv, %i.gxw
  %.not9095.i = icmp eq i32 %i.gxx, 0
end_hunk_7
