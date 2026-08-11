inline.NumInlined: 16
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@sfprint:bb.a
  store ptr %i.ef, ptr %i.i, align 8, !tbaa !12
  store i32 73, ptr %i.k, align 8, !tbaa !19
  store i64 4, ptr %i.l, align 8, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  %i.eg = load ptr, ptr %1, align 8, !tbaa !20
  %i.eh = call i32 %i.eg(ptr noundef nonnull %2, ptr noundef nonnull %1) #8
  %i.ei = icmp slt i32 %i.eh, 0
  br i1 %i.ei, label %.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ej = add nsw i32 %.1730, 1                   ; 2 uses
  %i.ek = load i32, ptr %2, align 16, !tbaa !11
  %i.el = sext i32 %i.ek to i64
  br label %.backedge.backedge

bb.av:                                            ; preds = %.backedge
  %i.em = and i32 %.0848, -1695801
  %i.en = load i8, ptr %i.ag, align 1, !tbaa !11
  %i.eo = icmp eq i8 %i.en, 108                   ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.2701, i64 2
  %.5853.v = select i1 %i.eo, i32 32768, i32 16384
  %.5853 = or disjoint i32 %.5853.v, %i.em
  %.10709 = select i1 %i.eo, ptr %i.ep, ptr %i.ag
  br label %.backedge.backedge

bb.aw:                                            ; preds = %.backedge
  %i.eq = and i32 %.0848, -1695801
  %i.er = load i8, ptr %i.ag, align 1, !tbaa !11
  %i.es = icmp eq i8 %i.er, 104                   ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.2701, i64 2
  %.6854.v = select i1 %i.es, i32 8, i32 8192
  %.6854 = or disjoint i32 %.6854.v, %i.eq
  %.11710 = select i1 %i.es, ptr %i.et, ptr %i.ag
  br label %.backedge.backedge

bb.ax:                                            ; preds = %.backedge
  %i.eu = and i32 %.0848, -1695801
  %i.ev = or disjoint i32 %i.eu, 65536
  br label %.backedge.backedge

bb.ay:                                            ; preds = %.backedge
  %i.ew = and i32 %.0848, -1695801
  %i.ex = or disjoint i32 %i.ew, 1048576
  br label %.backedge.backedge

bb.az:                                            ; preds = %.backedge
  %i.ey = and i32 %.0848, -1695801
  %i.ez = or disjoint i32 %i.ey, 32
  br label %.backedge.backedge

bb.ba:                                            ; preds = %.backedge
  %i.fa = and i32 %.0848, -1695801
  %i.fb = or disjoint i32 %i.fa, 16
  br label %.backedge.backedge

bb.bb:                                            ; preds = %.backedge
  %i.fc = and i32 %.0848, 1171512
  %.not931 = icmp eq i32 %i.fc, 0
  br i1 %.not931, label %bb.bk, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fd = sext i8 %i.ah to i64
  %i.fe = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @_Sftable, i64 920), i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !11
  %i.fg = zext i8 %i.ff to i32                    ; 2 uses
  %i.fh = and i32 %i.fg, 3
  %.not932 = icmp eq i32 %i.fh, 0
  br i1 %.not932, label %bb.bi, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fi = and i32 %.0848, 49152
  %or.cond1028 = icmp eq i32 %i.fi, 0
  br i1 %or.cond1028, label %bb.be, label %bb.bk

bb.be:                                            ; preds = %bb.bd
  %i.fj = and i32 %.0848, 8192
  %.not938 = icmp eq i32 %i.fj, 0
  br i1 %.not938, label %bb.bf, label %bb.bk

bb.bf:                                            ; preds = %bb.be
  %i.fk = and i32 %.0848, 8
  %.not939 = icmp eq i32 %i.fk, 0
  br i1 %.not939, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  %i.fl = and i32 %.0848, 1048576
  %.not940 = icmp eq i32 %i.fl, 0
  br i1 %.not940, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.fm = and i32 %.0848, 48
  %i.fn = icmp eq i32 %i.fm, 0
  %i.fo = select i1 %i.fn, i64 -1, i64 8
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bc
  %i.fp = and i32 %i.fg, 4
  %.not933 = icmp eq i32 %i.fp, 0
  br i1 %.not933, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fq = and i32 %.0848, 65536
  %.not934 = icmp eq i32 %i.fq, 0
  %i.fr = and i32 %.0848, 49152
  %.not935 = icmp eq i32 %i.fr, 0
  %i.fs = select i1 %.not935, i64 -1, i64 8
  %i.ft = select i1 %.not934, i64 %i.fs, i64 16
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bd, %bb.be, %bb.bh, %bb.bg, %bb.bf, %bb.bj, %bb.bi, %bb.bb
  %.3743 = phi i64 [ %.0740, %bb.bb ], [ %i.ft, %bb.bj ], [ %.0740, %bb.bi ], [ 8, %bb.bd ], [ 8, %bb.bg ], [ 2, %bb.be ], [ 1, %bb.bf ], [ %i.fo, %bb.bh ]
  %i.fu = add nsw i32 %.1730, 1                   ; 10 uses
  store ptr %i.ag, ptr %i.i, align 8, !tbaa !12
  store i32 %i.ai, ptr %i.k, align 8, !tbaa !19
  store i64 %.3743, ptr %i.l, align 8, !tbaa !21
  %i.fv = and i32 %.0848, 2097144
  store i32 %i.fv, ptr %i.m, align 8, !tbaa !28
  store i32 %.0779, ptr %i.n, align 4, !tbaa !29
  store i32 %.0763, ptr %i.o, align 8, !tbaa !30
  store i32 %.0661, ptr %i.p, align 4, !tbaa !31
  store ptr %.0736, ptr %i.q, align 8, !tbaa !32
  store i64 %.0734, ptr %i.r, align 8, !tbaa !33
  %i.fw = load ptr, ptr %1, align 8, !tbaa !20
  %i.fx = call i32 %i.fw(ptr noundef nonnull %2, ptr noundef nonnull %1) #8 ; 3 uses
  %i.fy = icmp slt i32 %i.fx, 0
  br i1 %i.fy, label %.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fz = icmp eq i32 %i.fx, 0
  br i1 %i.fz, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ga = load ptr, ptr %i.i, align 8, !tbaa !12  ; 10 uses
  %i.gb = load i32, ptr %i.k, align 8, !tbaa !19  ; 5 uses
  %i.gc = load i64, ptr %i.l, align 8, !tbaa !21  ; 4 uses
  %i.gd = and i32 %.0848, -2097145
  %i.ge = load i32, ptr %i.m, align 8, !tbaa !28  ; 11 uses
  %i.gf = and i32 %i.ge, 2097144
  %i.gg = or disjoint i32 %i.gf, %i.gd            ; 7 uses
  %i.gh = load i32, ptr %i.n, align 4, !tbaa !29  ; 8 uses
  %i.gi = load i32, ptr %i.o, align 8, !tbaa !30  ; 15 uses
  %i.gj = load i32, ptr %i.p, align 4, !tbaa !31  ; 9 uses
  switch i32 %i.gb, label %bb.bo [
    i32 115, label %bb.bp
    i32 99, label %bb.ch
    i32 112, label %bb.cu
    i32 111, label %bb.cv
    i32 88, label %bb.cw
    i32 120, label %bb.cx
    i32 105, label %bb.cz
    i32 117, label %bb.cy
    i32 100, label %bb.cz
    i32 103, label %bb.fk
    i32 71, label %bb.fk
    i32 101, label %bb.fk
    i32 69, label %bb.fk
    i32 102, label %bb.fk
  ]

bb.bn:                                            ; preds = %bb.bl
  %i.gk = add nuw nsw i32 %i.fx, %.0745
  br label %.backedge1191

.backedge1191:                                    ; preds = %bb.ic, %.thread1073, %.thread1067, %bb.hx, %bb.ib, %bb.ci, %bb.cj, %bb.bq, %bb.br, %bb.d, %.critedge, %bb.bn, %bb.bo, %bb.g
  %.0745.be = phi i32 [ %.0745, %.thread1073 ], [ %.0745, %bb.bo ], [ %.0745, %bb.g ], [ %.0745, %bb.d ], [ %.0745, %bb.hx ], [ %.0745, %bb.bq ], [ %.0745, %bb.ci ], [ %i.gk, %bb.bn ], [ %.0745, %.critedge ], [ %.0745, %bb.br ], [ %.0745, %bb.cj ], [ %.0745, %.thread1067 ], [ %.0745, %bb.ib ], [ %.0745, %bb.ic ]
  %.0729.be = phi i32 [ %i.fu, %.thread1073 ], [ %.1730, %bb.bo ], [ %.1730, %bb.g ], [ %.0729, %bb.d ], [ %i.fu, %bb.hx ], [ %i.fu, %bb.bq ], [ %i.fu, %bb.ci ], [ %i.fu, %bb.bn ], [ %.0729, %.critedge ], [ %i.fu, %bb.br ], [ %i.fu, %bb.cj ], [ %i.fu, %.thread1067 ], [ %i.fu, %bb.ib ], [ %i.fu, %bb.ic ]
  %.0719.be = phi i8 [ %.1720, %.thread1073 ], [ %.1720, %bb.bo ], [ %.1720, %bb.g ], [ %.0719, %bb.d ], [ %.97281117, %bb.hx ], [ %.1720, %bb.bq ], [ %.1720, %bb.ci ], [ %.1720, %bb.bn ], [ %.0719, %.critedge ], [ %.1720, %bb.br ], [ %.1720, %bb.cj ], [ %.1720, %.thread1067 ], [ %.97281117, %bb.ib ], [ %.97281117, %bb.ic ]
  %.0712.be = phi i8 [ %.1713, %.thread1073 ], [ %.1713, %bb.bo ], [ %.1713, %bb.g ], [ %.0712, %bb.d ], [ %.67181119, %bb.hx ], [ %.1713, %bb.bq ], [ %.1713, %bb.ci ], [ %.1713, %bb.bn ], [ %.0712, %.critedge ], [ %.1713, %bb.br ], [ %.1713, %bb.cj ], [ %.1713, %.thread1067 ], [ %.67181119, %bb.ib ], [ %.67181119, %bb.ic ]
  %.0699.be = phi ptr [ %i.ga, %.thread1073 ], [ %i.gl, %bb.bo ], [ %i.ag, %bb.g ], [ %i.ab, %bb.d ], [ %i.ga, %bb.hx ], [ %i.ga, %bb.bq ], [ %i.ga, %bb.ci ], [ %i.ag, %bb.bn ], [ %i.ab, %.critedge ], [ %i.ga, %bb.br ], [ %i.ga, %bb.cj ], [ %i.ga, %.thread1067 ], [ %i.ga, %bb.ib ], [ %i.ga, %bb.ic ]
  br label %bb.b, !llvm.loop !34

bb.bo:                                            ; preds = %bb.bm
  %i.gl = getelementptr inbounds i8, ptr %i.ga, i64 -1
  br label %.backedge1191

bb.bp:                                            ; preds = %bb.bm
  %i.gm = icmp sgt i32 %i.gj, -1
  %i.gn = load ptr, ptr %2, align 16, !tbaa !11   ; 4 uses
  %.not1015 = icmp eq ptr %i.gn, null             ; 2 uses
  br i1 %i.gm, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  br i1 %.not1015, label %.backedge1191, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !8  ; 2 uses
  %.not1016 = icmp eq ptr %i.go, null
  br i1 %.not1016, label %.backedge1191, label %bb.bt

bb.bs:                                            ; preds = %bb.bp
  %spec.store.select = select i1 %.not1015, ptr @.str, ptr %i.gn ; 2 uses
  store ptr %spec.store.select, ptr %i.d, align 16, !tbaa !8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %i.gp = phi ptr [ %i.go, %bb.br ], [ %spec.store.select, %bb.bs ]
  %.0738 = phi ptr [ %i.gn, %bb.br ], [ %i.d, %bb.bs ]
  %i.gq = trunc i64 %i.gc to i32                  ; 2 uses
  %i.gr = icmp sgt i32 %i.gq, -1
  %i.gs = icmp slt i32 %i.gi, 0
  %3 = icmp sgt i32 %i.gi, 0
  %spec.select1060 = call i32 @llvm.umin.i32(i32 %i.gi, i32 %i.gq)
  %i.gt = and i32 %i.ge, 512
  %.not1017 = icmp eq i32 %i.gt, 0
  %i.gu = and i32 %i.ge, 64
  %.not1018 = icmp eq i32 %i.gu, 0
  %i.gv = icmp sgt i32 %i.gj, 0
  %wide.trip.count = zext nneg i32 %i.gi to i64
  br label %bb.bu

bb.bu:                                            ; preds = %.backedge1791, %bb.bt
  %.0825 = phi ptr [ %i.gp, %bb.bt ], [ %i.ht, %.backedge1791 ] ; 3 uses
  %.1739 = phi ptr [ %.0738, %bb.bt ], [ %i.hs, %.backedge1791 ]
  br i1 %i.gr, label %.loopexit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.gs, label %bb.bw, label %.preheader1150

.preheader1150:                                   ; preds = %bb.bv
  br i1 %3, label %.lr.ph1313, label %.loopexit

bb.bw:                                            ; preds = %bb.bv
  %i.gw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0825) #9
  %i.gx = trunc i64 %i.gw to i32
  br label %.loopexit

.lr.ph1313:                                       ; preds = %.preheader1150, %bb.bx
  %indvars.iv1461 = phi i64 [ %indvars.iv.next1462, %bb.bx ], [ 0, %.preheader1150 ] ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.0825, i64 %indvars.iv1461
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !11
  %i.ha = icmp eq i8 %i.gz, 0
  br i1 %i.ha, label %.loopexit.loopexit.split.loop.exit, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph1313
  %indvars.iv.next1462 = add nuw nsw i64 %indvars.iv1461, 1 ; 2 uses
  %exitcond1464.not = icmp eq i64 %indvars.iv.next1462, %wide.trip.count
  br i1 %exitcond1464.not, label %.loopexit, label %.lr.ph1313, !llvm.loop !35

.loopexit.loopexit.split.loop.exit:               ; preds = %.lr.ph1313
  %i.hb = trunc nuw nsw i64 %indvars.iv1461 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bx, %.loopexit.loopexit.split.loop.exit, %.preheader1150, %bb.bu, %bb.bw
  %.4 = phi i32 [ %spec.select1060, %bb.bu ], [ %i.gx, %bb.bw ], [ 0, %.preheader1150 ], [ %i.hb, %.loopexit.loopexit.split.loop.exit ], [ %i.gi, %bb.bx ] ; 3 uses
  %i.hc = sub nsw i32 %i.gh, %.4                  ; 5 uses
  %i.hd = icmp sgt i32 %i.hc, 0
  br i1 %i.hd, label %bb.by, label %.thread1063

bb.by:                                            ; preds = %.loopexit
  br i1 %.not1017, label %bb.ca, label %.lr.ph1318

bb.bz:                                            ; preds = %.lr.ph1318
  %i.he = add nuw nsw i32 %.06771317, 1           ; 2 uses
  %exitcond1465.not = icmp eq i32 %i.he, %i.hc
  br i1 %exitcond1465.not, label %.thread1063, label %.lr.ph1318, !llvm.loop !36

.lr.ph1318:                                       ; preds = %bb.by, %bb.bz
  %.06771317 = phi i32 [ %i.he, %bb.bz ], [ 0, %bb.by ]
  %i.hf = call i32 @putc(i32 noundef 48, ptr noundef %0)
  %i.hg = icmp eq i32 %i.hf, -1
  br i1 %i.hg, label %.thread, label %bb.bz

bb.ca:                                            ; preds = %bb.by
  br i1 %.not1018, label %.lr.ph1320, label %.thread1063

bb.cb:                                            ; preds = %.lr.ph1320
  %i.hh = add nuw nsw i32 %.06761319, 1           ; 2 uses
  %exitcond1466.not = icmp eq i32 %i.hh, %i.hc
  br i1 %exitcond1466.not, label %.thread1063, label %.lr.ph1320, !llvm.loop !37

.lr.ph1320:                                       ; preds = %bb.ca, %bb.cb
  %.06761319 = phi i32 [ %i.hh, %bb.cb ], [ 0, %bb.ca ]
  %i.hi = call i32 @putc(i32 noundef 32, ptr noundef %0)
  %i.hj = icmp eq i32 %i.hi, -1
  br i1 %i.hj, label %.thread, label %bb.cb

.thread1063:                                      ; preds = %bb.bz, %bb.cb, %.loopexit, %bb.ca
  %.5751 = phi i32 [ %i.hc, %.loopexit ], [ %i.hc, %bb.ca ], [ 0, %bb.cb ], [ 0, %bb.bz ] ; 2 uses
  %i.hk = icmp sgt i32 %.4, 0
  br i1 %i.hk, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %.thread1063
  %i.hl = zext nneg i32 %.4 to i64
  %i.hm = call i64 @fwrite(ptr noundef %.0825, i64 noundef %i.hl, i64 noundef 1, ptr noundef %0)
  %i.hn = icmp eq i64 %i.hm, 0
  br i1 %i.hn, label %.thread, label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %.thread1063
  %i.ho = icmp sgt i32 %.5751, 0
  br i1 %i.ho, label %.preheader, label %.thread1067

bb.ce:                                            ; preds = %.preheader
  %i.hp = add nuw nsw i32 %.06751321, 1           ; 2 uses
  %exitcond1467.not = icmp eq i32 %i.hp, %.5751
  br i1 %exitcond1467.not, label %.thread1067, label %.preheader, !llvm.loop !38

.preheader:                                       ; preds = %bb.cd, %bb.ce
  %.06751321 = phi i32 [ %i.hp, %bb.ce ], [ 0, %bb.cd ]
  %i.hq = call i32 @putc(i32 noundef 32, ptr noundef %0)
  %i.hr = icmp eq i32 %i.hq, -1
  br i1 %i.hr, label %.thread, label %bb.ce

.thread1067:                                      ; preds = %bb.ce, %bb.cd
  %i.hs = getelementptr inbounds nuw i8, ptr %.1739, i64 8 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !8  ; 2 uses
  %.not1019 = icmp eq ptr %i.ht, null
  br i1 %.not1019, label %.backedge1191, label %bb.cf, !llvm.loop !34

bb.cf:                                            ; preds = %.thread1067
  br i1 %i.gv, label %bb.cg, label %.backedge1791

.backedge1791:                                    ; preds = %bb.cf, %bb.cg
  br label %bb.bu

bb.cg:                                            ; preds = %bb.cf
  %i.hu = call i32 @putc(i32 noundef %i.gj, ptr noundef %0)
  %i.hv = icmp eq i32 %i.hu, -1
  br i1 %i.hv, label %.thread, label %.backedge1791

bb.ch:                                            ; preds = %bb.bm
  %i.hw = icmp sgt i32 %i.gj, -1
  br i1 %i.hw, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.hx = load ptr, ptr %2, align 16, !tbaa !11   ; 3 uses
  %.not1010 = icmp eq ptr %i.hx, null
  br i1 %.not1010, label %.backedge1191, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !11  ; 2 uses
  %.not1011 = icmp eq i8 %i.hy, 0
  br i1 %.not1011, label %.backedge1191, label %bb.cl

bb.ck:                                            ; preds = %bb.ch
  %i.hz = load i8, ptr %2, align 16, !tbaa !11    ; 2 uses
  store i8 %i.hz, ptr %i.e, align 16, !tbaa !11
  store i8 0, ptr %.ptr953, align 1, !tbaa !11
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cj, %bb.ck
  %i.ia = phi i8 [ %i.hy, %bb.cj ], [ %i.hz, %bb.ck ]
  %.1826 = phi ptr [ %i.hx, %bb.cj ], [ %i.e, %bb.ck ]
  %spec.store.select1 = call i32 @llvm.smax.i32(i32 %i.gi, i32 1) ; 2 uses
  %i.ib = sub nsw i32 %i.gh, %spec.store.select1  ; 3 uses
  %i.ic = icmp sgt i32 %i.ib, 0
  %i.id = and i32 %i.ge, 64
  %.not1012 = icmp eq i32 %i.id, 0
  %or.cond1033 = select i1 %i.ic, i1 %.not1012, i1 false
  %i.ie = icmp sgt i32 %i.gj, 0
  br label %bb.cm

bb.cm:                                            ; preds = %.backedge1794, %bb.cl
  %.2827 = phi ptr [ %.1826, %bb.cl ], [ %i.ip, %.backedge1794 ]
  %.2680.in = phi i8 [ %i.ia, %bb.cl ], [ %i.iq, %.backedge1794 ]
  %.2680 = sext i8 %.2680.in to i32
  br i1 %or.cond1033, label %.preheader1154, label %.thread1069

bb.cn:                                            ; preds = %.preheader1154
  %i.if = add nuw nsw i32 %.06741309, 1           ; 2 uses
  %exitcond1458.not = icmp eq i32 %i.if, %i.ib
  br i1 %exitcond1458.not, label %.thread1069, label %.preheader1154, !llvm.loop !39

.preheader1154:                                   ; preds = %bb.cm, %bb.cn
  %.06741309 = phi i32 [ %i.if, %bb.cn ], [ 0, %bb.cm ]
  %i.ig = call i32 @putc(i32 noundef 32, ptr noundef %0)
  %i.ih = icmp eq i32 %i.ig, -1
  br i1 %i.ih, label %.thread, label %bb.cn

.thread1069:                                      ; preds = %bb.cn, %bb.cm
  %.6752 = phi i32 [ %i.ib, %bb.cm ], [ 0, %bb.cn ] ; 2 uses
  br label %bb.cp

bb.co:                                            ; preds = %bb.cp
  %i.ii = add nuw nsw i32 %.06731310, 1           ; 2 uses
  %exitcond1459.not = icmp eq i32 %i.ii, %spec.store.select1
  br i1 %exitcond1459.not, label %bb.cq, label %bb.cp, !llvm.loop !40

bb.cp:                                            ; preds = %.thread1069, %bb.co
  %.06731310 = phi i32 [ 0, %.thread1069 ], [ %i.ii, %bb.co ]
  %i.ij = call i32 @putc(i32 noundef %.2680, ptr noundef %0)
  %i.ik = icmp eq i32 %i.ij, -1
  br i1 %i.ik, label %.thread, label %bb.co

bb.cq:                                            ; preds = %bb.co
  %i.il = icmp sgt i32 %.6752, 0
  br i1 %i.il, label %.preheader1151, label %.thread1073

bb.cr:                                            ; preds = %.preheader1151
  %i.im = add nuw nsw i32 %.06721311, 1           ; 2 uses
  %exitcond1460.not = icmp eq i32 %i.im, %.6752
  br i1 %exitcond1460.not, label %.thread1073, label %.preheader1151, !llvm.loop !41

.preheader1151:                                   ; preds = %bb.cq, %bb.cr
  %.06721311 = phi i32 [ %i.im, %bb.cr ], [ 0, %bb.cq ]
  %i.in = call i32 @putc(i32 noundef 32, ptr noundef %0)
  %i.io = icmp eq i32 %i.in, -1
  br i1 %i.io, label %.thread, label %bb.cr

.thread1073:                                      ; preds = %bb.cr, %bb.cq
  %i.ip = getelementptr inbounds nuw i8, ptr %.2827, i64 1 ; 2 uses
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !11  ; 2 uses
  %.not1013 = icmp eq i8 %i.iq, 0
  br i1 %.not1013, label %.backedge1191, label %bb.cs, !llvm.loop !34

bb.cs:                                            ; preds = %.thread1073
  br i1 %i.ie, label %bb.ct, label %.backedge1794

.backedge1794:                                    ; preds = %bb.cs, %bb.ct
  br label %bb.cm

bb.ct:                                            ; preds = %bb.cs
  %i.ir = call i32 @putc(i32 noundef %i.gj, ptr noundef %0)
  %i.is = icmp eq i32 %i.ir, -1
  br i1 %i.is, label %.thread, label %.backedge1794

bb.cu:                                            ; preds = %bb.bm
  %i.it = and i32 %i.gg, -1921
  %i.iu = or disjoint i32 %i.it, 1024
  %i.iv = load ptr, ptr %2, align 16, !tbaa !11
  %i.iw = ptrtoint ptr %i.iv to i64
end_hunk_0
