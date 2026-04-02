begin_hunk_0
  br label %.loopexit.sink.split

bb.t:                                             ; preds = %bb.o, %bb.l
  %.0254 = phi ptr [ %i.bb, %bb.o ], [ %i.az, %bb.l ] ; 101 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !77
  %i.bs = getelementptr inbounds nuw i8, ptr %.0254, i64 252 ; 2 uses
end_hunk_0
begin_hunk_1
  %i.gu = getelementptr inbounds nuw i8, ptr %.0254, i64 4 ; 9 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.0254, i64 8 ; 33 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.0254, i64 40 ; 9 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.0254, i64 16 ; 99 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.0254, i64 12 ; 36 uses
  %i.gz = and i32 %i.bu, 8                        ; 2 uses
  %or.cond.not.i.i.i.i = icmp eq i32 %i.gz, 0
end_hunk_1
begin_hunk_2

bb.at:                                            ; preds = %bb.as
  %i.ip = icmp eq i32 %.pre.i.i.us.i.i, 255
  %i.iq = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 3 uses
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !48  ; 3 uses
  br i1 %i.ip, label %bb.au, label %2

2:                                                ; preds = %bb.at
  %3 = zext i8 %i.ir to i32                       ; 2 uses
  store i32 %3, ptr %.0254, align 8, !tbaa !110
  %4 = getelementptr inbounds nuw i8, ptr %i.iq, i64 1
  store ptr %4, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i.us.i.i

bb.au:                                            ; preds = %bb.at
  %i.is = icmp ugt i8 %i.ir, -113
  br i1 %i.is, label %5, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.it = zext i8 %i.ir to i32                    ; 2 uses
  store i32 %i.it, ptr %.0254, align 8, !tbaa !110
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 1
  store ptr %i.iu, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i.us.i.i

5:                                                ; preds = %bb.au
  store i32 255, ptr %.0254, align 8, !tbaa !110
  br label %opj_mqc_raw_decode.exit.i.us.i.i

opj_mqc_raw_decode.exit.i.us.i.i:                 ; preds = %5, %bb.av, %2, %bb.as
  %.pre.i20.i.us.i.i = phi i32 [ %3, %2 ], [ %i.it, %bb.av ], [ 255, %5 ], [ %.pre.i.i.us.i.i, %bb.as ] ; 3 uses
  %6 = phi i32 [ 8, %2 ], [ 7, %bb.av ], [ 8, %5 ], [ %i.in, %bb.as ]
  %i.iv = add i32 %6, -1                          ; 4 uses
  store i32 %i.iv, ptr %i.gv, align 8, !tbaa !109
  %i.iw = shl nuw i32 1, %i.iv
  %i.ix = and i32 %i.iw, %.pre.i20.i.us.i.i
end_hunk_2
begin_hunk_3

bb.ax:                                            ; preds = %bb.aw
  %i.iz = icmp eq i32 %.pre.i20.i.us.i.i, 255
  %i.ja = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 3 uses
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !48  ; 3 uses
  br i1 %i.iz, label %bb.ay, label %7

7:                                                ; preds = %bb.ax
  %8 = zext i8 %i.jb to i32                       ; 2 uses
  store i32 %8, ptr %.0254, align 8, !tbaa !110
  %9 = getelementptr inbounds nuw i8, ptr %i.ja, i64 1
  store ptr %9, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit21.i.us.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.jc = icmp ugt i8 %i.jb, -113
  br i1 %i.jc, label %10, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jd = zext i8 %i.jb to i32                    ; 2 uses
  store i32 %i.jd, ptr %.0254, align 8, !tbaa !110
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 1
  store ptr %i.je, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit21.i.us.i.i

10:                                               ; preds = %bb.ay
  store i32 255, ptr %.0254, align 8, !tbaa !110
  br label %opj_mqc_raw_decode.exit21.i.us.i.i

opj_mqc_raw_decode.exit21.i.us.i.i:               ; preds = %10, %bb.az, %7, %bb.aw
  %11 = phi i32 [ %8, %7 ], [ %i.jd, %bb.az ], [ 255, %10 ], [ %.pre.i20.i.us.i.i, %bb.aw ]
  %12 = phi i32 [ 8, %7 ], [ 7, %bb.az ], [ 8, %10 ], [ %i.iv, %bb.aw ]
  %i.jf = add i32 %12, -1                         ; 2 uses
  store i32 %i.jf, ptr %i.gv, align 8, !tbaa !109
  %i.jg = lshr i32 %11, %i.jf
  %i.jh = and i32 %i.jg, 1                        ; 3 uses
  %.not19.i.us.i.i = icmp eq i32 %i.jh, 0
  %i.ji = select i1 %.not19.i.us.i.i, i32 %i.ib, i32 %i.id
end_hunk_3
begin_hunk_4

bb.bc:                                            ; preds = %bb.bb
  %i.kr = icmp eq i32 %.pre.i.i70.us.i.i, 255
  %i.ks = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 3 uses
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !48  ; 3 uses
  br i1 %i.kr, label %bb.bd, label %13

13:                                               ; preds = %bb.bc
  %14 = zext i8 %i.kt to i32                      ; 2 uses
  store i32 %14, ptr %.0254, align 8, !tbaa !110
  %15 = getelementptr inbounds nuw i8, ptr %i.ks, i64 1
  store ptr %15, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i71.us.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.ku = icmp ugt i8 %i.kt, -113
  br i1 %i.ku, label %16, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kv = zext i8 %i.kt to i32                    ; 2 uses
  store i32 %i.kv, ptr %.0254, align 8, !tbaa !110
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 1
  store ptr %i.kw, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i71.us.i.i

16:                                               ; preds = %bb.bd
  store i32 255, ptr %.0254, align 8, !tbaa !110
  br label %opj_mqc_raw_decode.exit.i71.us.i.i

opj_mqc_raw_decode.exit.i71.us.i.i:               ; preds = %16, %bb.be, %13, %bb.bb
  %.pre.i20.i72.us.i.i = phi i32 [ %14, %13 ], [ %i.kv, %bb.be ], [ 255, %16 ], [ %.pre.i.i70.us.i.i, %bb.bb ] ; 3 uses
  %17 = phi i32 [ 8, %13 ], [ 7, %bb.be ], [ 8, %16 ], [ %i.kp, %bb.bb ]
  %i.kx = add i32 %17, -1                         ; 4 uses
  store i32 %i.kx, ptr %i.gv, align 8, !tbaa !109
  %i.ky = shl nuw i32 1, %i.kx
  %i.kz = and i32 %i.ky, %.pre.i20.i72.us.i.i
end_hunk_4
begin_hunk_5

bb.bg:                                            ; preds = %bb.bf
  %i.lb = icmp eq i32 %.pre.i20.i72.us.i.i, 255
  %i.lc = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 3 uses
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !48  ; 3 uses
  br i1 %i.lb, label %bb.bh, label %18

18:                                               ; preds = %bb.bg
  %19 = zext i8 %i.ld to i32                      ; 2 uses
  store i32 %19, ptr %.0254, align 8, !tbaa !110
  %20 = getelementptr inbounds nuw i8, ptr %i.lc, i64 1
  store ptr %20, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit21.i74.us.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.le = icmp ugt i8 %i.ld, -113
  br i1 %i.le, label %21, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lf = zext i8 %i.ld to i32                    ; 2 uses
  store i32 %i.lf, ptr %.0254, align 8, !tbaa !110
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 1
  store ptr %i.lg, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit21.i74.us.i.i

21:                                               ; preds = %bb.bh
  store i32 255, ptr %.0254, align 8, !tbaa !110
  br label %opj_mqc_raw_decode.exit21.i74.us.i.i

opj_mqc_raw_decode.exit21.i74.us.i.i:             ; preds = %21, %bb.bi, %18, %bb.bf
  %22 = phi i32 [ %19, %18 ], [ %i.lf, %bb.bi ], [ 255, %21 ], [ %.pre.i20.i72.us.i.i, %bb.bf ]
  %23 = phi i32 [ 8, %18 ], [ 7, %bb.bi ], [ 8, %21 ], [ %i.kx, %bb.bf ]
  %i.lh = add i32 %23, -1                         ; 2 uses
  store i32 %i.lh, ptr %i.gv, align 8, !tbaa !109
  %i.li = lshr i32 %22, %i.lh
  %i.lj = and i32 %i.li, 1                        ; 2 uses
  %.not19.i75.us.i.i = icmp eq i32 %i.lj, 0
  %i.lk = select i1 %.not19.i75.us.i.i, i32 %i.ib, i32 %i.id
end_hunk_5
begin_hunk_6

bb.bk:                                            ; preds = %bb.bj
  %i.me = icmp eq i32 %.pre.i.i79.us.i.i.a, 255
  %i.mf = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 3 uses
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !48  ; 3 uses
  br i1 %i.me, label %bb.bl, label %24

24:                                               ; preds = %bb.bk
  %25 = zext i8 %i.mg to i32                      ; 2 uses
  store i32 %25, ptr %.0254, align 8, !tbaa !110
  %26 = getelementptr inbounds nuw i8, ptr %i.mf, i64 1
  store ptr %26, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i80.us.i.i.a

bb.bl:                                            ; preds = %bb.bk
  %i.mh = icmp ugt i8 %i.mg, -113
  br i1 %i.mh, label %27, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.mi = zext i8 %i.mg to i32                    ; 2 uses
  store i32 %i.mi, ptr %.0254, align 8, !tbaa !110
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mf, i64 1
  store ptr %i.mj, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i80.us.i.i.a

27:                                               ; preds = %bb.bl
  store i32 255, ptr %.0254, align 8, !tbaa !110
  br label %opj_mqc_raw_decode.exit.i80.us.i.i.a

opj_mqc_raw_decode.exit.i80.us.i.i.a:             ; preds = %27, %bb.bm, %24, %bb.bj
  %.pre.i20.i81.us.i.i = phi i32 [ %25, %24 ], [ %i.mi, %bb.bm ], [ 255, %27 ], [ %.pre.i.i79.us.i.i.a, %bb.bj ] ; 3 uses
  %28 = phi i32 [ 8, %24 ], [ 7, %bb.bm ], [ 8, %27 ], [ %i.mc, %bb.bj ]
  %i.mk = add i32 %28, -1                         ; 4 uses
  store i32 %i.mk, ptr %i.gv, align 8, !tbaa !109
  %i.ml = shl nuw i32 1, %i.mk
  %i.mm = and i32 %i.ml, %.pre.i20.i81.us.i.i
  %.not18.i82.us.i.i = icmp eq i32 %i.mm, 0
  br i1 %.not18.i82.us.i.i, label %opj_mqc_raw_decode.exit.i80.us.opj_t1_update_flags.exit.i85.us_crit_edge.i.i, label %bb.bn

end_hunk_6
begin_hunk_7
  br i1 %i.mn, label %bb.bo, label %opj_mqc_raw_decode.exit21.i83.us.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.mo = icmp eq i32 %.pre.i20.i81.us.i.i, 255
  %i.mp = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 3 uses
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !48  ; 3 uses
  br i1 %i.mo, label %bb.bp, label %29

29:                                               ; preds = %bb.bo
  %30 = zext i8 %i.mq to i32                      ; 2 uses
  store i32 %30, ptr %.0254, align 8, !tbaa !110
  %31 = getelementptr inbounds nuw i8, ptr %i.mp, i64 1
  store ptr %31, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit21.i83.us.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.mr = icmp ugt i8 %i.mq, -113
  br i1 %i.mr, label %32, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ms = zext i8 %i.mq to i32                    ; 2 uses
  store i32 %i.ms, ptr %.0254, align 8, !tbaa !110
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mp, i64 1
  store ptr %i.mt, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit21.i83.us.i.i

32:                                               ; preds = %bb.bp
  store i32 255, ptr %.0254, align 8, !tbaa !110
  br label %opj_mqc_raw_decode.exit21.i83.us.i.i

opj_mqc_raw_decode.exit21.i83.us.i.i:             ; preds = %32, %bb.bq, %29, %bb.bn
  %33 = phi i32 [ %30, %29 ], [ %i.ms, %bb.bq ], [ 255, %32 ], [ %.pre.i20.i81.us.i.i, %bb.bn ]
  %34 = phi i32 [ 8, %29 ], [ 7, %bb.bq ], [ 8, %32 ], [ %i.mk, %bb.bn ]
  %i.mu = add i32 %34, -1                         ; 2 uses
  store i32 %i.mu, ptr %i.gv, align 8, !tbaa !109
  %i.mv = lshr i32 %33, %i.mu
  %i.mw = and i32 %i.mv, 1                        ; 2 uses
  %.not19.i84.us.i.i = icmp eq i32 %i.mw, 0
  %i.mx = select i1 %.not19.i84.us.i.i, i32 %i.ib, i32 %i.id
end_hunk_7
begin_hunk_8

bb.bs:                                            ; preds = %bb.br
  %i.nr = icmp eq i32 %.pre.i.i88.us.i.i, 255
  %i.ns = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 3 uses
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !48  ; 3 uses
  br i1 %i.nr, label %bb.bt, label %35

35:                                               ; preds = %bb.bs
  %36 = zext i8 %i.nt to i32                      ; 2 uses
  store i32 %36, ptr %.0254, align 8, !tbaa !110
  %37 = getelementptr inbounds nuw i8, ptr %i.ns, i64 1
  store ptr %37, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i89.us.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.nu = icmp ugt i8 %i.nt, -113
  br i1 %i.nu, label %38, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.nv = zext i8 %i.nt to i32                    ; 2 uses
  store i32 %i.nv, ptr %.0254, align 8, !tbaa !110
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ns, i64 1
  store ptr %i.nw, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i89.us.i.i

38:                                               ; preds = %bb.bt
  store i32 255, ptr %.0254, align 8, !tbaa !110
  br label %opj_mqc_raw_decode.exit.i89.us.i.i

opj_mqc_raw_decode.exit.i89.us.i.i:               ; preds = %38, %bb.bu, %35, %bb.br
  %.pre.i20.i90.us.i.i = phi i32 [ %36, %35 ], [ %i.nv, %bb.bu ], [ 255, %38 ], [ %.pre.i.i88.us.i.i, %bb.br ] ; 3 uses
  %39 = phi i32 [ 8, %35 ], [ 7, %bb.bu ], [ 8, %38 ], [ %i.np, %bb.br ]
  %i.nx = add i32 %39, -1                         ; 4 uses
  store i32 %i.nx, ptr %i.gv, align 8, !tbaa !109
  %i.ny = shl nuw i32 1, %i.nx
  %i.nz = and i32 %i.ny, %.pre.i20.i90.us.i.i
  %.not18.i91.us.i.i = icmp eq i32 %i.nz, 0
  br i1 %.not18.i91.us.i.i, label %opj_t1_update_flags.exit.i94.us.i.i, label %bb.bv

end_hunk_8
begin_hunk_9
  br i1 %i.oa, label %bb.bw, label %opj_mqc_raw_decode.exit21.i92.us.i.i

bb.bw:                                            ; preds = %bb.bv
  %i.ob = icmp eq i32 %.pre.i20.i90.us.i.i, 255
  %i.oc = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 3 uses
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !48  ; 3 uses
  br i1 %i.ob, label %bb.bx, label %40

40:                                               ; preds = %bb.bw
  %41 = zext i8 %i.od to i32                      ; 2 uses
  store i32 %41, ptr %.0254, align 8, !tbaa !110
  %42 = getelementptr inbounds nuw i8, ptr %i.oc, i64 1
  store ptr %42, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit21.i92.us.i.i

bb.bx:                                            ; preds = %bb.bw
  %i.oe = icmp ugt i8 %i.od, -113
  br i1 %i.oe, label %43, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.of = zext i8 %i.od to i32                    ; 2 uses
  store i32 %i.of, ptr %.0254, align 8, !tbaa !110
  %i.og = getelementptr inbounds nuw i8, ptr %i.oc, i64 1
  store ptr %i.og, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit21.i92.us.i.i

43:                                               ; preds = %bb.bx
  store i32 255, ptr %.0254, align 8, !tbaa !110
  br label %opj_mqc_raw_decode.exit21.i92.us.i.i

opj_mqc_raw_decode.exit21.i92.us.i.i:             ; preds = %43, %bb.by, %40, %bb.bv
  %44 = phi i32 [ %41, %40 ], [ %i.of, %bb.by ], [ 255, %43 ], [ %.pre.i20.i90.us.i.i, %bb.bv ]
  %45 = phi i32 [ 8, %40 ], [ 7, %bb.by ], [ 8, %43 ], [ %i.nx, %bb.bv ]
  %i.oh = add i32 %45, -1                         ; 2 uses
  store i32 %i.oh, ptr %i.gv, align 8, !tbaa !109
  %i.oi = lshr i32 %44, %i.oh
  %i.oj = and i32 %i.oi, 1                        ; 3 uses
  %.not19.i93.us.i.i = icmp eq i32 %i.oj, 0
  %i.ok = select i1 %.not19.i93.us.i.i, i32 %i.ib, i32 %i.id
end_hunk_9
begin_hunk_10

bb.cc:                                            ; preds = %bb.cb
  %i.qp = icmp eq i32 %.pre.i.i97.i.i, 255
  %i.qq = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 3 uses
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !48  ; 3 uses
  br i1 %i.qp, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.qs = icmp ugt i8 %i.qr, -113
  br i1 %i.qs, label %46, label %47

46:                                               ; preds = %bb.cd
  store i32 255, ptr %.0254, align 8, !tbaa !110
  br label %opj_mqc_raw_decode.exit.i98.i.i

47:                                               ; preds = %bb.cd
  %48 = zext i8 %i.qr to i32                      ; 2 uses
  store i32 %48, ptr %.0254, align 8, !tbaa !110
  %49 = getelementptr inbounds nuw i8, ptr %i.qq, i64 1
  store ptr %49, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i98.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.qt = zext i8 %i.qr to i32                    ; 2 uses
  store i32 %i.qt, ptr %.0254, align 8, !tbaa !110
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qq, i64 1
  store ptr %i.qu, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i98.i.i

opj_mqc_raw_decode.exit.i98.i.i:                  ; preds = %bb.ce, %47, %46, %bb.cb
  %.pre.i20.i99.i.i = phi i32 [ %i.qt, %bb.ce ], [ %48, %47 ], [ 255, %46 ], [ %.pre.i.i97.i.i, %bb.cb ] ; 3 uses
  %50 = phi i32 [ 8, %bb.ce ], [ 7, %47 ], [ 8, %46 ], [ %i.qn, %bb.cb ]
  %i.qv = add i32 %50, -1                         ; 4 uses
  store i32 %i.qv, ptr %i.gv, align 8, !tbaa !109
  %i.qw = shl nuw i32 1, %i.qv
  %i.qx = and i32 %i.qw, %.pre.i20.i99.i.i
  %.not18.i100.i.i = icmp eq i32 %i.qx, 0
  br i1 %.not18.i100.i.i, label %opj_t1_update_flags.exit.i104.i.i, label %bb.cf

end_hunk_10
begin_hunk_11
  br i1 %i.qy, label %bb.cg, label %opj_mqc_raw_decode.exit21.i101.i.i

bb.cg:                                            ; preds = %bb.cf
  %i.qz = icmp eq i32 %.pre.i20.i99.i.i, 255
  %i.ra = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 3 uses
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !48  ; 3 uses
  br i1 %i.qz, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.rc = icmp ugt i8 %i.rb, -113
  br i1 %i.rc, label %51, label %52

51:                                               ; preds = %bb.ch
  store i32 255, ptr %.0254, align 8, !tbaa !110
  br label %opj_mqc_raw_decode.exit21.i101.i.i

52:                                               ; preds = %bb.ch
  %53 = zext i8 %i.rb to i32                      ; 2 uses
  store i32 %53, ptr %.0254, align 8, !tbaa !110
  %54 = getelementptr inbounds nuw i8, ptr %i.ra, i64 1
  store ptr %54, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit21.i101.i.i

bb.ci:                                            ; preds = %bb.cg
  %i.rd = zext i8 %i.rb to i32                    ; 2 uses
  store i32 %i.rd, ptr %.0254, align 8, !tbaa !110
  %i.re = getelementptr inbounds nuw i8, ptr %i.ra, i64 1
  store ptr %i.re, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit21.i101.i.i

opj_mqc_raw_decode.exit21.i101.i.i:               ; preds = %bb.ci, %52, %51, %bb.cf
  %55 = phi i32 [ %i.rd, %bb.ci ], [ %53, %52 ], [ 255, %51 ], [ %.pre.i20.i99.i.i, %bb.cf ]
  %56 = phi i32 [ 8, %bb.ci ], [ 7, %52 ], [ 8, %51 ], [ %i.qv, %bb.cf ]
  %i.rf = add i32 %56, -1                         ; 2 uses
  store i32 %i.rf, ptr %i.gv, align 8, !tbaa !109
  %i.rg = lshr i32 %55, %i.rf
  %i.rh = and i32 %i.rg, 1                        ; 4 uses
  %.not19.i102.i.i = icmp eq i32 %i.rh, 0
  %i.ri = select i1 %.not19.i102.i.i, i32 %i.ib, i32 %i.pw
end_hunk_11
begin_hunk_12

bb.cs:                                            ; preds = %bb.cr
  %i.ue = icmp eq i32 %.pre.i.i.us.i196.i, 255
  %i.uf = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 3 uses
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !48  ; 3 uses
  br i1 %i.ue, label %bb.ct, label %57

57:                                               ; preds = %bb.cs
  %58 = zext i8 %i.ug to i32                      ; 2 uses
  store i32 %58, ptr %.0254, align 8, !tbaa !110
  %59 = getelementptr inbounds nuw i8, ptr %i.uf, i64 1
  store ptr %59, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i.us.i197.i

bb.ct:                                            ; preds = %bb.cs
  %i.uh = icmp ugt i8 %i.ug, -113
  br i1 %i.uh, label %60, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ui = zext i8 %i.ug to i32                    ; 2 uses
  store i32 %i.ui, ptr %.0254, align 8, !tbaa !110
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uf, i64 1
  store ptr %i.uj, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i.us.i197.i

60:                                               ; preds = %bb.ct
  store i32 255, ptr %.0254, align 8, !tbaa !110
  br label %opj_mqc_raw_decode.exit.i.us.i197.i

opj_mqc_raw_decode.exit.i.us.i197.i:              ; preds = %60, %bb.cu, %57, %bb.cr
  %61 = phi i32 [ %58, %57 ], [ %i.ui, %bb.cu ], [ 255, %60 ], [ %.pre.i.i.us.i196.i, %bb.cr ]
  %62 = phi i32 [ 8, %57 ], [ 7, %bb.cu ], [ 8, %60 ], [ %i.uc, %bb.cr ]
  %i.uk = add i32 %62, -1                         ; 2 uses
  store i32 %i.uk, ptr %i.gv, align 8, !tbaa !109
  %i.ul = lshr i32 %61, %i.uk
  %i.um = and i32 %i.ul, 1
  %i.un = load i32, ptr %.15988.us.i.i, align 4, !tbaa !3 ; 2 uses
  %.lobit.i.us.i.i = lshr i32 %i.un, 31
end_hunk_12
begin_hunk_13

bb.cw:                                            ; preds = %bb.cv
  %i.uy = icmp eq i32 %.pre.i.i65.us.i.i, 255
  %i.uz = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 3 uses
  %i.va = load i8, ptr %i.uz, align 1, !tbaa !48  ; 3 uses
  br i1 %i.uy, label %bb.cx, label %63

63:                                               ; preds = %bb.cw
  %64 = zext i8 %i.va to i32                      ; 2 uses
  store i32 %64, ptr %.0254, align 8, !tbaa !110
  %65 = getelementptr inbounds nuw i8, ptr %i.uz, i64 1
  store ptr %65, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i66.us.i.i

bb.cx:                                            ; preds = %bb.cw
  %i.vb = icmp ugt i8 %i.va, -113
  br i1 %i.vb, label %66, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.vc = zext i8 %i.va to i32                    ; 2 uses
  store i32 %i.vc, ptr %.0254, align 8, !tbaa !110
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uz, i64 1
  store ptr %i.vd, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i66.us.i.i

66:                                               ; preds = %bb.cx
  store i32 255, ptr %.0254, align 8, !tbaa !110
  br label %opj_mqc_raw_decode.exit.i66.us.i.i

opj_mqc_raw_decode.exit.i66.us.i.i:               ; preds = %66, %bb.cy, %63, %bb.cv
  %67 = phi i32 [ %64, %63 ], [ %i.vc, %bb.cy ], [ 255, %66 ], [ %.pre.i.i65.us.i.i, %bb.cv ]
  %68 = phi i32 [ 8, %63 ], [ 7, %bb.cy ], [ 8, %66 ], [ %i.uw, %bb.cv ]
  %i.ve = add i32 %68, -1                         ; 2 uses
  store i32 %i.ve, ptr %i.gv, align 8, !tbaa !109
  %i.vf = lshr i32 %67, %i.ve
  %i.vg = and i32 %i.vf, 1
  %i.vh = load i32, ptr %i.ut, align 4, !tbaa !3  ; 2 uses
  %.lobit.i67.us.i.i = lshr i32 %i.vh, 31
end_hunk_13
begin_hunk_14

bb.da:                                            ; preds = %bb.cz
  %i.vs = icmp eq i32 %.pre.i.i70.us.i194.i, 255
  %i.vt = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 3 uses
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !48  ; 3 uses
  br i1 %i.vs, label %bb.db, label %69

69:                                               ; preds = %bb.da
  %70 = zext i8 %i.vu to i32                      ; 2 uses
  store i32 %70, ptr %.0254, align 8, !tbaa !110
  %71 = getelementptr inbounds nuw i8, ptr %i.vt, i64 1
  store ptr %71, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i71.us.i195.i

bb.db:                                            ; preds = %bb.da
  %i.vv = icmp ugt i8 %i.vu, -113
  br i1 %i.vv, label %72, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.vw = zext i8 %i.vu to i32                    ; 2 uses
  store i32 %i.vw, ptr %.0254, align 8, !tbaa !110
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vt, i64 1
  store ptr %i.vx, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i71.us.i195.i

72:                                               ; preds = %bb.db
  store i32 255, ptr %.0254, align 8, !tbaa !110
  br label %opj_mqc_raw_decode.exit.i71.us.i195.i

opj_mqc_raw_decode.exit.i71.us.i195.i:            ; preds = %72, %bb.dc, %69, %bb.cz
  %73 = phi i32 [ %70, %69 ], [ %i.vw, %bb.dc ], [ 255, %72 ], [ %.pre.i.i70.us.i194.i, %bb.cz ]
  %74 = phi i32 [ 8, %69 ], [ 7, %bb.dc ], [ 8, %72 ], [ %i.vq, %bb.cz ]
  %i.vy = add i32 %74, -1                         ; 2 uses
  store i32 %i.vy, ptr %i.gv, align 8, !tbaa !109
  %i.vz = lshr i32 %73, %i.vy
  %i.wa = and i32 %i.vz, 1
  %i.wb = load i32, ptr %i.vn, align 4, !tbaa !3  ; 2 uses
  %.lobit.i72.us.i.i = lshr i32 %i.wb, 31
end_hunk_14
begin_hunk_15

bb.de:                                            ; preds = %bb.dd
  %i.wm = icmp eq i32 %.pre.i.i75.us.i.i, 255
  %i.wn = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 3 uses
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !48  ; 3 uses
  br i1 %i.wm, label %bb.df, label %75

75:                                               ; preds = %bb.de
  %76 = zext i8 %i.wo to i32                      ; 2 uses
  store i32 %76, ptr %.0254, align 8, !tbaa !110
  %77 = getelementptr inbounds nuw i8, ptr %i.wn, i64 1
  store ptr %77, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i76.us.i.i

bb.df:                                            ; preds = %bb.de
  %i.wp = icmp ugt i8 %i.wo, -113
  br i1 %i.wp, label %78, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.wq = zext i8 %i.wo to i32                    ; 2 uses
  store i32 %i.wq, ptr %.0254, align 8, !tbaa !110
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wn, i64 1
  store ptr %i.wr, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i76.us.i.i

78:                                               ; preds = %bb.df
  store i32 255, ptr %.0254, align 8, !tbaa !110
  br label %opj_mqc_raw_decode.exit.i76.us.i.i

opj_mqc_raw_decode.exit.i76.us.i.i:               ; preds = %78, %bb.dg, %75, %bb.dd
  %79 = phi i32 [ %76, %75 ], [ %i.wq, %bb.dg ], [ 255, %78 ], [ %.pre.i.i75.us.i.i, %bb.dd ]
  %80 = phi i32 [ 8, %75 ], [ 7, %bb.dg ], [ 8, %78 ], [ %i.wk, %bb.dd ]
  %i.ws = add i32 %80, -1                         ; 2 uses
  store i32 %i.ws, ptr %i.gv, align 8, !tbaa !109
  %i.wt = lshr i32 %79, %i.ws
  %i.wu = and i32 %i.wt, 1
  %i.wv = load i32, ptr %i.wh, align 4, !tbaa !3  ; 2 uses
  %.lobit.i77.us.i.i = lshr i32 %i.wv, 31
end_hunk_15
begin_hunk_16

bb.di:                                            ; preds = %bb.dh
  %i.yb = icmp eq i32 %.pre.i.i80.i.i, 255
  %i.yc = load ptr, ptr %i.gx, align 8, !tbaa !111 ; 3 uses
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !48  ; 3 uses
  br i1 %i.yb, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.ye = icmp ugt i8 %i.yd, -113
  br i1 %i.ye, label %81, label %82

81:                                               ; preds = %bb.dj
  store i32 255, ptr %.0254, align 8, !tbaa !110
  br label %opj_mqc_raw_decode.exit.i81.i.i

82:                                               ; preds = %bb.dj
  %83 = zext i8 %i.yd to i32                      ; 2 uses
  store i32 %83, ptr %.0254, align 8, !tbaa !110
  %84 = getelementptr inbounds nuw i8, ptr %i.yc, i64 1
  store ptr %84, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i81.i.i

bb.dk:                                            ; preds = %bb.di
  %i.yf = zext i8 %i.yd to i32                    ; 2 uses
  store i32 %i.yf, ptr %.0254, align 8, !tbaa !110
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yc, i64 1
  store ptr %i.yg, ptr %i.gx, align 8, !tbaa !111
  br label %opj_mqc_raw_decode.exit.i81.i.i

opj_mqc_raw_decode.exit.i81.i.i:                  ; preds = %bb.dk, %82, %81, %bb.dh
  %85 = phi i32 [ %i.yf, %bb.dk ], [ %83, %82 ], [ 255, %81 ], [ %.pre.i.i80.i.i, %bb.dh ]
  %86 = phi i32 [ 8, %bb.dk ], [ 7, %82 ], [ 8, %81 ], [ %i.xz, %bb.dh ]
  %i.yh = add i32 %86, -1                         ; 2 uses
  store i32 %i.yh, ptr %i.gv, align 8, !tbaa !109
  %i.yi = lshr i32 %85, %i.yh
  %i.yj = and i32 %i.yi, 1
  %i.yk = load i32, ptr %i.xt, align 4, !tbaa !3  ; 2 uses
  %.lobit.i82.i.i = lshr i32 %i.yk, 31
end_hunk_16
