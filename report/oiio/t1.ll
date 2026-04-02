begin_hunk_0
  br label %.loopexit.sink.split

bb.t:                                             ; preds = %bb.o, %bb.l
  %.0254 = phi ptr [ %i.bb, %bb.o ], [ %i.az, %bb.l ] ; 71 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !77
  %i.bs = getelementptr inbounds nuw i8, ptr %.0254, i64 252 ; 2 uses
end_hunk_0
begin_hunk_1
  %i.gu = getelementptr inbounds nuw i8, ptr %.0254, i64 4 ; 9 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.0254, i64 8 ; 33 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.0254, i64 40 ; 9 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.0254, i64 16 ; 84 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.0254, i64 12 ; 36 uses
  %i.gz = and i32 %i.bu, 8                        ; 2 uses
  %or.cond.not.i.i.i.i = icmp eq i32 %i.gz, 0
end_hunk_1
begin_hunk_2

bb.at:                                            ; preds = %bb.as
  %i.ip = icmp eq i32 %.pre.i.i.us.i.i, 255
  %i.iq = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 2 uses
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !48  ; 2 uses
  br i1 %i.ip, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.is = icmp ugt i8 %i.ir, -113
  br i1 %i.is, label %opj_mqc_raw_decode.exit.i.us.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.ph17.i.i.us.i.i = phi i32 [ 7, %bb.au ], [ 8, %bb.at ]
  %i.it = zext i8 %i.ir to i32                    ; 2 uses
  store i32 %i.it, ptr %.0254, align 8, !tbaa !110
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 1
  store ptr %i.iu, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i.us.i.i

opj_mqc_raw_decode.exit.i.us.i.i:                 ; preds = %bb.av, %bb.au, %bb.as
  %.pre.i20.i.us.i.i = phi i32 [ %.pre.i.i.us.i.i, %bb.as ], [ 255, %bb.au ], [ %i.it, %bb.av ] ; 3 uses
  %2 = phi i32 [ %i.in, %bb.as ], [ 8, %bb.au ], [ %.ph17.i.i.us.i.i, %bb.av ]
  %i.iv = add i32 %2, -1                          ; 4 uses
  store i32 %i.iv, ptr %i.gv, align 8, !tbaa !109
  %i.iw = shl nuw i32 1, %i.iv
  %i.ix = and i32 %i.iw, %.pre.i20.i.us.i.i
end_hunk_2
begin_hunk_3

bb.ax:                                            ; preds = %bb.aw
  %i.iz = icmp eq i32 %.pre.i20.i.us.i.i, 255
  %i.ja = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 2 uses
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !48  ; 2 uses
  br i1 %i.iz, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.jc = icmp ugt i8 %i.jb, -113
  br i1 %i.jc, label %opj_mqc_raw_decode.exit21.i.us.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.ph17.i22.i.us.i.i = phi i32 [ 7, %bb.ay ], [ 8, %bb.ax ]
  %i.jd = zext i8 %i.jb to i32                    ; 2 uses
  store i32 %i.jd, ptr %.0254, align 8, !tbaa !110
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 1
  store ptr %i.je, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit21.i.us.i.i

opj_mqc_raw_decode.exit21.i.us.i.i:               ; preds = %bb.az, %bb.ay, %bb.aw
  %3 = phi i32 [ %.pre.i20.i.us.i.i, %bb.aw ], [ 255, %bb.ay ], [ %i.jd, %bb.az ]
  %4 = phi i32 [ %i.iv, %bb.aw ], [ 8, %bb.ay ], [ %.ph17.i22.i.us.i.i, %bb.az ]
  %i.jf = add i32 %4, -1                          ; 2 uses
  store i32 %i.jf, ptr %i.gv, align 8, !tbaa !109
  %i.jg = lshr i32 %3, %i.jf
  %i.jh = and i32 %i.jg, 1                        ; 3 uses
  %.not19.i.us.i.i = icmp eq i32 %i.jh, 0
  %i.ji = select i1 %.not19.i.us.i.i, i32 %i.ib, i32 %i.id
end_hunk_3
begin_hunk_4

bb.bc:                                            ; preds = %bb.bb
  %i.kr = icmp eq i32 %.pre.i.i70.us.i.i, 255
  %i.ks = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 2 uses
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !48  ; 2 uses
  br i1 %i.kr, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ku = icmp ugt i8 %i.kt, -113
  br i1 %i.ku, label %opj_mqc_raw_decode.exit.i71.us.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.ph17.i.i80.us.i.i = phi i32 [ 7, %bb.bd ], [ 8, %bb.bc ]
  %i.kv = zext i8 %i.kt to i32                    ; 2 uses
  store i32 %i.kv, ptr %.0254, align 8, !tbaa !110
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 1
  store ptr %i.kw, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i71.us.i.i

opj_mqc_raw_decode.exit.i71.us.i.i:               ; preds = %bb.be, %bb.bd, %bb.bb
  %.pre.i20.i72.us.i.i = phi i32 [ %.pre.i.i70.us.i.i, %bb.bb ], [ 255, %bb.bd ], [ %i.kv, %bb.be ] ; 3 uses
  %5 = phi i32 [ %i.kp, %bb.bb ], [ 8, %bb.bd ], [ %.ph17.i.i80.us.i.i, %bb.be ]
  %i.kx = add i32 %5, -1                          ; 4 uses
  store i32 %i.kx, ptr %i.gv, align 8, !tbaa !109
  %i.ky = shl nuw i32 1, %i.kx
  %i.kz = and i32 %i.ky, %.pre.i20.i72.us.i.i
end_hunk_4
begin_hunk_5

bb.bg:                                            ; preds = %bb.bf
  %i.lb = icmp eq i32 %.pre.i20.i72.us.i.i, 255
  %i.lc = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 2 uses
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !48  ; 2 uses
  br i1 %i.lb, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.le = icmp ugt i8 %i.ld, -113
  br i1 %i.le, label %opj_mqc_raw_decode.exit21.i74.us.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.ph17.i22.i78.us.i.i = phi i32 [ 7, %bb.bh ], [ 8, %bb.bg ]
  %i.lf = zext i8 %i.ld to i32                    ; 2 uses
  store i32 %i.lf, ptr %.0254, align 8, !tbaa !110
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 1
  store ptr %i.lg, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit21.i74.us.i.i

opj_mqc_raw_decode.exit21.i74.us.i.i:             ; preds = %bb.bi, %bb.bh, %bb.bf
  %6 = phi i32 [ %.pre.i20.i72.us.i.i, %bb.bf ], [ 255, %bb.bh ], [ %i.lf, %bb.bi ]
  %7 = phi i32 [ %i.kx, %bb.bf ], [ 8, %bb.bh ], [ %.ph17.i22.i78.us.i.i, %bb.bi ]
  %i.lh = add i32 %7, -1                          ; 2 uses
  store i32 %i.lh, ptr %i.gv, align 8, !tbaa !109
  %i.li = lshr i32 %6, %i.lh
  %i.lj = and i32 %i.li, 1                        ; 2 uses
  %.not19.i75.us.i.i = icmp eq i32 %i.lj, 0
  %i.lk = select i1 %.not19.i75.us.i.i, i32 %i.ib, i32 %i.id
end_hunk_5
begin_hunk_6

bb.bk:                                            ; preds = %bb.bj
  %i.me = icmp eq i32 %.pre.i.i79.us.i.i.a, 255
  %i.mf = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 2 uses
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !48  ; 2 uses
  br i1 %i.me, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.mh = icmp ugt i8 %i.mg, -113
  br i1 %i.mh, label %opj_mqc_raw_decode.exit.i80.us.i.i.a, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.ph17.i.i93.us.i.i = phi i32 [ 7, %bb.bl ], [ 8, %bb.bk ]
  %i.mi = zext i8 %i.mg to i32                    ; 2 uses
  store i32 %i.mi, ptr %.0254, align 8, !tbaa !110
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mf, i64 1
  store ptr %i.mj, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i80.us.i.i.a

opj_mqc_raw_decode.exit.i80.us.i.i.a:             ; preds = %bb.bm, %bb.bl, %bb.bj
  %.pre.i20.i85.us.i.i = phi i32 [ %.pre.i.i79.us.i.i.a, %bb.bj ], [ 255, %bb.bl ], [ %i.mi, %bb.bm ] ; 3 uses
  %8 = phi i32 [ %i.mc, %bb.bj ], [ 8, %bb.bl ], [ %.ph17.i.i93.us.i.i, %bb.bm ]
  %i.mk = add i32 %8, -1                          ; 4 uses
  store i32 %i.mk, ptr %i.gv, align 8, !tbaa !109
  %i.ml = shl nuw i32 1, %i.mk
  %i.mm = and i32 %i.ml, %.pre.i20.i85.us.i.i
  %.not18.i82.us.i.i = icmp eq i32 %i.mm, 0
  br i1 %.not18.i82.us.i.i, label %opj_mqc_raw_decode.exit.i80.us.opj_t1_update_flags.exit.i85.us_crit_edge.i.i, label %bb.bn

end_hunk_6
begin_hunk_7
  br i1 %i.mn, label %bb.bo, label %opj_mqc_raw_decode.exit21.i83.us.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.mo = icmp eq i32 %.pre.i20.i85.us.i.i, 255
  %i.mp = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 2 uses
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !48  ; 2 uses
  br i1 %i.mo, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.mr = icmp ugt i8 %i.mq, -113
  br i1 %i.mr, label %opj_mqc_raw_decode.exit21.i83.us.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.ph17.i22.i91.us.i.i = phi i32 [ 7, %bb.bp ], [ 8, %bb.bo ]
  %i.ms = zext i8 %i.mq to i32                    ; 2 uses
  store i32 %i.ms, ptr %.0254, align 8, !tbaa !110
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mp, i64 1
  store ptr %i.mt, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit21.i83.us.i.i

opj_mqc_raw_decode.exit21.i83.us.i.i:             ; preds = %bb.bq, %bb.bp, %bb.bn
  %9 = phi i32 [ %.pre.i20.i85.us.i.i, %bb.bn ], [ 255, %bb.bp ], [ %i.ms, %bb.bq ]
  %10 = phi i32 [ %i.mk, %bb.bn ], [ 8, %bb.bp ], [ %.ph17.i22.i91.us.i.i, %bb.bq ]
  %i.mu = add i32 %10, -1                         ; 2 uses
  store i32 %i.mu, ptr %i.gv, align 8, !tbaa !109
  %i.mv = lshr i32 %9, %i.mu
  %i.mw = and i32 %i.mv, 1                        ; 2 uses
  %.not19.i84.us.i.i = icmp eq i32 %i.mw, 0
  %i.mx = select i1 %.not19.i84.us.i.i, i32 %i.ib, i32 %i.id
end_hunk_7
begin_hunk_8

bb.bs:                                            ; preds = %bb.br
  %i.nr = icmp eq i32 %.pre.i.i88.us.i.i, 255
  %i.ns = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 2 uses
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !48  ; 2 uses
  br i1 %i.nr, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.nu = icmp ugt i8 %i.nt, -113
  br i1 %i.nu, label %opj_mqc_raw_decode.exit.i89.us.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.ph17.i.i106.us.i.i = phi i32 [ 7, %bb.bt ], [ 8, %bb.bs ]
  %i.nv = zext i8 %i.nt to i32                    ; 2 uses
  store i32 %i.nv, ptr %.0254, align 8, !tbaa !110
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ns, i64 1
  store ptr %i.nw, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i89.us.i.i

opj_mqc_raw_decode.exit.i89.us.i.i:               ; preds = %bb.bu, %bb.bt, %bb.br
  %.pre.i20.i98.us.i.i = phi i32 [ %.pre.i.i88.us.i.i, %bb.br ], [ 255, %bb.bt ], [ %i.nv, %bb.bu ] ; 3 uses
  %11 = phi i32 [ %i.np, %bb.br ], [ 8, %bb.bt ], [ %.ph17.i.i106.us.i.i, %bb.bu ]
  %i.nx = add i32 %11, -1                         ; 4 uses
  store i32 %i.nx, ptr %i.gv, align 8, !tbaa !109
  %i.ny = shl nuw i32 1, %i.nx
  %i.nz = and i32 %i.ny, %.pre.i20.i98.us.i.i
  %.not18.i91.us.i.i = icmp eq i32 %i.nz, 0
  br i1 %.not18.i91.us.i.i, label %opj_t1_update_flags.exit.i94.us.i.i, label %bb.bv

end_hunk_8
begin_hunk_9
  br i1 %i.oa, label %bb.bw, label %opj_mqc_raw_decode.exit21.i92.us.i.i

bb.bw:                                            ; preds = %bb.bv
  %i.ob = icmp eq i32 %.pre.i20.i98.us.i.i, 255
  %i.oc = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 2 uses
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !48  ; 2 uses
  br i1 %i.ob, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.oe = icmp ugt i8 %i.od, -113
  br i1 %i.oe, label %opj_mqc_raw_decode.exit21.i92.us.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.ph17.i22.i104.us.i.i = phi i32 [ 7, %bb.bx ], [ 8, %bb.bw ]
  %i.of = zext i8 %i.od to i32                    ; 2 uses
  store i32 %i.of, ptr %.0254, align 8, !tbaa !110
  %i.og = getelementptr inbounds nuw i8, ptr %i.oc, i64 1
  store ptr %i.og, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit21.i92.us.i.i

opj_mqc_raw_decode.exit21.i92.us.i.i:             ; preds = %bb.by, %bb.bx, %bb.bv
  %12 = phi i32 [ %.pre.i20.i98.us.i.i, %bb.bv ], [ 255, %bb.bx ], [ %i.of, %bb.by ]
  %13 = phi i32 [ %i.nx, %bb.bv ], [ 8, %bb.bx ], [ %.ph17.i22.i104.us.i.i, %bb.by ]
  %i.oh = add i32 %13, -1                         ; 2 uses
  store i32 %i.oh, ptr %i.gv, align 8, !tbaa !109
  %i.oi = lshr i32 %12, %i.oh
  %i.oj = and i32 %i.oi, 1                        ; 3 uses
  %.not19.i93.us.i.i = icmp eq i32 %i.oj, 0
  %i.ok = select i1 %.not19.i93.us.i.i, i32 %i.ib, i32 %i.id
end_hunk_9
begin_hunk_10

bb.cc:                                            ; preds = %bb.cb
  %i.qp = icmp eq i32 %.pre.i.i97.i.i, 255
  %i.qq = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 2 uses
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !48  ; 2 uses
  br i1 %i.qp, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.qs = icmp ugt i8 %i.qr, -113
  br i1 %i.qs, label %opj_mqc_raw_decode.exit.i98.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.ph17.i.i120.i.i = phi i32 [ 7, %bb.cd ], [ 8, %bb.cc ]
  %i.qt = zext i8 %i.qr to i32                    ; 2 uses
  store i32 %i.qt, ptr %.0254, align 8, !tbaa !110
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qq, i64 1
  store ptr %i.qu, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i98.i.i

opj_mqc_raw_decode.exit.i98.i.i:                  ; preds = %bb.ce, %bb.cd, %bb.cb
  %.pre.i20.i111.i.i = phi i32 [ %.pre.i.i97.i.i, %bb.cb ], [ 255, %bb.cd ], [ %i.qt, %bb.ce ] ; 3 uses
  %14 = phi i32 [ %i.qn, %bb.cb ], [ 8, %bb.cd ], [ %.ph17.i.i120.i.i, %bb.ce ]
  %i.qv = add i32 %14, -1                         ; 4 uses
  store i32 %i.qv, ptr %i.gv, align 8, !tbaa !109
  %i.qw = shl nuw i32 1, %i.qv
  %i.qx = and i32 %i.qw, %.pre.i20.i111.i.i
  %.not18.i100.i.i = icmp eq i32 %i.qx, 0
  br i1 %.not18.i100.i.i, label %opj_t1_update_flags.exit.i104.i.i, label %bb.cf

end_hunk_10
begin_hunk_11
  br i1 %i.qy, label %bb.cg, label %opj_mqc_raw_decode.exit21.i101.i.i

bb.cg:                                            ; preds = %bb.cf
  %i.qz = icmp eq i32 %.pre.i20.i111.i.i, 255
  %i.ra = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 2 uses
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !48  ; 2 uses
  br i1 %i.qz, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.rc = icmp ugt i8 %i.rb, -113
  br i1 %i.rc, label %opj_mqc_raw_decode.exit21.i101.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.ph17.i22.i118.i.i = phi i32 [ 7, %bb.ch ], [ 8, %bb.cg ]
  %i.rd = zext i8 %i.rb to i32                    ; 2 uses
  store i32 %i.rd, ptr %.0254, align 8, !tbaa !110
  %i.re = getelementptr inbounds nuw i8, ptr %i.ra, i64 1
  store ptr %i.re, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit21.i101.i.i

opj_mqc_raw_decode.exit21.i101.i.i:               ; preds = %bb.ci, %bb.ch, %bb.cf
  %15 = phi i32 [ %.pre.i20.i111.i.i, %bb.cf ], [ 255, %bb.ch ], [ %i.rd, %bb.ci ]
  %16 = phi i32 [ %i.qv, %bb.cf ], [ 8, %bb.ch ], [ %.ph17.i22.i118.i.i, %bb.ci ]
  %i.rf = add i32 %16, -1                         ; 2 uses
  store i32 %i.rf, ptr %i.gv, align 8, !tbaa !109
  %i.rg = lshr i32 %15, %i.rf
  %i.rh = and i32 %i.rg, 1                        ; 4 uses
  %.not19.i102.i.i = icmp eq i32 %i.rh, 0
  %i.ri = select i1 %.not19.i102.i.i, i32 %i.ib, i32 %i.pw
end_hunk_11
begin_hunk_12

bb.cs:                                            ; preds = %bb.cr
  %i.ue = icmp eq i32 %.pre.i.i.us.i196.i, 255
  %i.uf = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 2 uses
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !48  ; 2 uses
  br i1 %i.ue, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.uh = icmp ugt i8 %i.ug, -113
  br i1 %i.uh, label %opj_mqc_raw_decode.exit.i.us.i197.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.ph17.i.i.us.i198.i = phi i32 [ 7, %bb.ct ], [ 8, %bb.cs ]
  %i.ui = zext i8 %i.ug to i32                    ; 2 uses
  store i32 %i.ui, ptr %.0254, align 8, !tbaa !110
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uf, i64 1
  store ptr %i.uj, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i.us.i197.i

opj_mqc_raw_decode.exit.i.us.i197.i:              ; preds = %bb.cu, %bb.ct, %bb.cr
  %17 = phi i32 [ %.pre.i.i.us.i196.i, %bb.cr ], [ 255, %bb.ct ], [ %i.ui, %bb.cu ]
  %18 = phi i32 [ %i.uc, %bb.cr ], [ 8, %bb.ct ], [ %.ph17.i.i.us.i198.i, %bb.cu ]
  %i.uk = add i32 %18, -1                         ; 2 uses
  store i32 %i.uk, ptr %i.gv, align 8, !tbaa !109
  %i.ul = lshr i32 %17, %i.uk
  %i.um = and i32 %i.ul, 1
  %i.un = load i32, ptr %.15988.us.i.i, align 4, !tbaa !3 ; 2 uses
  %.lobit.i.us.i.i = lshr i32 %i.un, 31
end_hunk_12
begin_hunk_13

bb.cw:                                            ; preds = %bb.cv
  %i.uy = icmp eq i32 %.pre.i.i65.us.i.i, 255
  %i.uz = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 2 uses
  %i.va = load i8, ptr %i.uz, align 1, !tbaa !48  ; 2 uses
  br i1 %i.uy, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.vb = icmp ugt i8 %i.va, -113
  br i1 %i.vb, label %opj_mqc_raw_decode.exit.i66.us.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.ph17.i.i70.us.i.i = phi i32 [ 7, %bb.cx ], [ 8, %bb.cw ]
  %i.vc = zext i8 %i.va to i32                    ; 2 uses
  store i32 %i.vc, ptr %.0254, align 8, !tbaa !110
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uz, i64 1
  store ptr %i.vd, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i66.us.i.i

opj_mqc_raw_decode.exit.i66.us.i.i:               ; preds = %bb.cy, %bb.cx, %bb.cv
  %19 = phi i32 [ %.pre.i.i65.us.i.i, %bb.cv ], [ 255, %bb.cx ], [ %i.vc, %bb.cy ]
  %20 = phi i32 [ %i.uw, %bb.cv ], [ 8, %bb.cx ], [ %.ph17.i.i70.us.i.i, %bb.cy ]
  %i.ve = add i32 %20, -1                         ; 2 uses
  store i32 %i.ve, ptr %i.gv, align 8, !tbaa !109
  %i.vf = lshr i32 %19, %i.ve
  %i.vg = and i32 %i.vf, 1
  %i.vh = load i32, ptr %i.ut, align 4, !tbaa !3  ; 2 uses
  %.lobit.i67.us.i.i = lshr i32 %i.vh, 31
end_hunk_13
begin_hunk_14

bb.da:                                            ; preds = %bb.cz
  %i.vs = icmp eq i32 %.pre.i.i70.us.i194.i, 255
  %i.vt = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 2 uses
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !48  ; 2 uses
  br i1 %i.vs, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.vv = icmp ugt i8 %i.vu, -113
  br i1 %i.vv, label %opj_mqc_raw_decode.exit.i71.us.i195.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.ph17.i.i77.us.i.i = phi i32 [ 7, %bb.db ], [ 8, %bb.da ]
  %i.vw = zext i8 %i.vu to i32                    ; 2 uses
  store i32 %i.vw, ptr %.0254, align 8, !tbaa !110
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vt, i64 1
  store ptr %i.vx, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i71.us.i195.i

opj_mqc_raw_decode.exit.i71.us.i195.i:            ; preds = %bb.dc, %bb.db, %bb.cz
  %21 = phi i32 [ %.pre.i.i70.us.i194.i, %bb.cz ], [ 255, %bb.db ], [ %i.vw, %bb.dc ]
  %22 = phi i32 [ %i.vq, %bb.cz ], [ 8, %bb.db ], [ %.ph17.i.i77.us.i.i, %bb.dc ]
  %i.vy = add i32 %22, -1                         ; 2 uses
  store i32 %i.vy, ptr %i.gv, align 8, !tbaa !109
  %i.vz = lshr i32 %21, %i.vy
  %i.wa = and i32 %i.vz, 1
  %i.wb = load i32, ptr %i.vn, align 4, !tbaa !3  ; 2 uses
  %.lobit.i72.us.i.i = lshr i32 %i.wb, 31
end_hunk_14
begin_hunk_15

bb.de:                                            ; preds = %bb.dd
  %i.wm = icmp eq i32 %.pre.i.i75.us.i.i, 255
  %i.wn = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 2 uses
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !48  ; 2 uses
  br i1 %i.wm, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.wp = icmp ugt i8 %i.wo, -113
  br i1 %i.wp, label %opj_mqc_raw_decode.exit.i76.us.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.ph17.i.i84.us.i.i = phi i32 [ 7, %bb.df ], [ 8, %bb.de ]
  %i.wq = zext i8 %i.wo to i32                    ; 2 uses
  store i32 %i.wq, ptr %.0254, align 8, !tbaa !110
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wn, i64 1
  store ptr %i.wr, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i76.us.i.i

opj_mqc_raw_decode.exit.i76.us.i.i:               ; preds = %bb.dg, %bb.df, %bb.dd
  %23 = phi i32 [ %.pre.i.i75.us.i.i, %bb.dd ], [ 255, %bb.df ], [ %i.wq, %bb.dg ]
  %24 = phi i32 [ %i.wk, %bb.dd ], [ 8, %bb.df ], [ %.ph17.i.i84.us.i.i, %bb.dg ]
  %i.ws = add i32 %24, -1                         ; 2 uses
  store i32 %i.ws, ptr %i.gv, align 8, !tbaa !109
  %i.wt = lshr i32 %23, %i.ws
  %i.wu = and i32 %i.wt, 1
  %i.wv = load i32, ptr %i.wh, align 4, !tbaa !3  ; 2 uses
  %.lobit.i77.us.i.i = lshr i32 %i.wv, 31
end_hunk_15
begin_hunk_16

bb.di:                                            ; preds = %bb.dh
  %i.yb = icmp eq i32 %.pre.i.i80.i.i, 255
  %i.yc = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 2 uses
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !48  ; 2 uses
  br i1 %i.yb, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.ye = icmp ugt i8 %i.yd, -113
  br i1 %i.ye, label %opj_mqc_raw_decode.exit.i81.i.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.ph17.i.i91.i.i = phi i32 [ 7, %bb.dj ], [ 8, %bb.di ]
  %i.yf = zext i8 %i.yd to i32                    ; 2 uses
  store i32 %i.yf, ptr %.0254, align 8, !tbaa !110
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yc, i64 1
  store ptr %i.yg, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i81.i.i

opj_mqc_raw_decode.exit.i81.i.i:                  ; preds = %bb.dk, %bb.dj, %bb.dh
  %25 = phi i32 [ %.pre.i.i80.i.i, %bb.dh ], [ 255, %bb.dj ], [ %i.yf, %bb.dk ]
  %26 = phi i32 [ %i.xz, %bb.dh ], [ 8, %bb.dj ], [ %.ph17.i.i91.i.i, %bb.dk ]
  %i.yh = add i32 %26, -1                         ; 2 uses
  store i32 %i.yh, ptr %i.gv, align 8, !tbaa !109
  %i.yi = lshr i32 %25, %i.yh
  %i.yj = and i32 %i.yi, 1
  %i.yk = load i32, ptr %i.xt, align 4, !tbaa !3  ; 2 uses
  %.lobit.i82.i.i = lshr i32 %i.yk, 31
end_hunk_16
