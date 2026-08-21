inline.NumInlined: 31
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@cdissect:bb.a

.lr.ph130:                                        ; preds = %bb.as
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.au

bb.at:                                            ; preds = %bb.bb
  %i.er = getelementptr inbounds nuw i8, ptr %.020.i128, i64 32
  %.020.i = load ptr, ptr %i.er, align 8          ; 2 uses
  %.not.i51 = icmp eq ptr %.020.i, null
  br i1 %.not.i51, label %subset.exit, label %bb.au, !llvm.loop !29

bb.au:                                            ; preds = %.lr.ph130, %bb.at
  %.020.i128 = phi ptr [ %.020.i126, %.lr.ph130 ], [ %.020.i, %bb.at ] ; 8 uses
  %i.es = load ptr, ptr %i.eo, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %.020.i128, i64 4 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.ev
  %i.ex = load ptr, ptr %i.ew, align 8            ; 2 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %bb.av, label %getsubdfa.exit69

bb.av:                                            ; preds = %bb.au
  %i.ez = getelementptr inbounds nuw i8, ptr %.020.i128, i64 56
  %i.fa = load ptr, ptr %i.ep, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 104
  %i.fc = tail call fastcc ptr @newdfa(ptr noundef nonnull %0, ptr noundef nonnull %i.ez, ptr noundef nonnull %i.fb, ptr noundef null) ; 6 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %getsubdfa.exit69, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fe = load i8, ptr %.020.i128, align 8
  %i.ff = icmp eq i8 %i.fe, 98
  br i1 %i.ff, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.fg = getelementptr inbounds nuw i8, ptr %.020.i128, i64 12
  %i.fh = load i32, ptr %i.fg, align 4
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 104
  store i32 %i.fh, ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %.020.i128, i64 16
  %i.fk = load i16, ptr %i.fj, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fc, i64 108
  store i16 %i.fk, ptr %i.fl, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %.020.i128, i64 18
  %i.fn = load i16, ptr %i.fm, align 2
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fc, i64 110
  store i16 %i.fn, ptr %i.fo, align 2
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.fp = load ptr, ptr %i.eo, align 8
  %i.fq = load i32, ptr %i.et, align 4
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %i.fr
  store ptr %i.fc, ptr %i.fs, align 8
  br label %getsubdfa.exit69

getsubdfa.exit69:                                 ; preds = %bb.au, %bb.av, %bb.ay
  %.019.i68 = phi ptr [ null, %bb.av ], [ %i.fc, %bb.ay ], [ %i.ex, %bb.au ]
  %i.ft = load i32, ptr %i.eq, align 8            ; 2 uses
  %.not25.i = icmp eq i32 %i.ft, 0
  br i1 %.not25.i, label %bb.az, label %subset.exit

bb.az:                                            ; preds = %getsubdfa.exit69
  %i.fu = tail call fastcc ptr @longest(ptr noundef nonnull %0, ptr noundef %.019.i68, ptr noundef %2, ptr noundef %3, ptr noundef null), !inline_history !30
  %i.fv = icmp eq ptr %i.fu, %3
  br i1 %i.fv, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fw = tail call fastcc i32 @cdissect(ptr noundef nonnull %0, ptr noundef nonnull %.020.i128, ptr noundef %2, ptr noundef %3), !inline_history !30 ; 2 uses
  %.not26.i = icmp eq i32 %i.fw, 1
  br i1 %.not26.i, label %bb.bb, label %crevcondissect.exit

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.fx = load i32, ptr %i.eq, align 8            ; 2 uses
  %.not27.i = icmp eq i32 %i.fx, 0
  br i1 %.not27.i, label %bb.at, label %subset.exit

bb.bc:                                            ; preds = %bb.d
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 1
  %i.gb = load i8, ptr %i.ga, align 1
  %i.gc = and i8 %i.gb, 2
  %.not42 = icmp eq i8 %i.gc, 0
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ge = load i16, ptr %i.gd, align 8            ; 3 uses
  br i1 %.not42, label %bb.bx, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gf = zext nneg i16 %i.ge to i32
  %i.gg = icmp slt i16 %i.ge, 1
  br i1 %i.gg, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.gh = icmp eq ptr %2, %3
  br i1 %i.gh, label %crevcondissect.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.0102.i = phi i32 [ %i.gf, %bb.bd ], [ 1, %bb.be ] ; 4 uses
  %i.gi = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.gj = ptrtoint ptr %2 to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = ashr exact i64 %i.gk, 2                 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.gn = load i16, ptr %i.gm, align 2            ; 2 uses
  %i.go = sext i16 %i.gn to i64
  %.not.i53 = icmp eq i16 %i.gn, 256
  %i.gp = tail call i64 @llvm.umin.i64(i64 %i.gl, i64 %i.go)
  %.0100.i = select i1 %.not.i53, i64 %i.gl, i64 %i.gp
  %i.gq = zext nneg i32 %.0102.i to i64
  %.1101.i = tail call i64 @llvm.umax.i64(i64 %.0100.i, i64 %i.gq) ; 2 uses
  %i.gr = add nsw i64 %.1101.i, 1
  %i.gs = tail call ptr @palloc_mul_extended(i64 noundef 8, i64 noundef %i.gr, i32 noundef 2) #9, !inline_history !31 ; 12 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %subset.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store ptr %2, ptr %i.gs, align 8
  %i.gu = load ptr, ptr %i.fy, align 8
  %i.gv = tail call fastcc ptr @getsubdfa(ptr noundef nonnull %0, ptr noundef %i.gu), !inline_history !31
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.gx = load i32, ptr %i.gw, align 8
  %.not117.i = icmp eq i32 %i.gx, 0
  br i1 %.not117.i, label %.preheader91, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @pfree(ptr noundef nonnull %i.gs) #9, !inline_history !31
  %i.gy = load i32, ptr %i.gw, align 8
  br label %crevcondissect.exit

.preheader91:                                     ; preds = %bb.bg, %.backedge92
  %.096.i111 = phi i32 [ %.096.i.be, %.backedge92 ], [ 1, %bb.bg ] ; 8 uses
  %.097.i110 = phi i32 [ %.097.i.be, %.backedge92 ], [ 0, %bb.bg ] ; 2 uses
  %.0103.i109 = phi ptr [ %.0103.i.be, %.backedge92 ], [ %2, %bb.bg ] ; 6 uses
  %i.gz = add nsw i32 %.096.i111, -1              ; 4 uses
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.ha
  %i.hc = load ptr, ptr %i.hb, align 8            ; 2 uses
  %i.hd = icmp ne ptr %.0103.i109, %i.hc
  %.not118.i = icmp eq ptr %.0103.i109, %3
  %or.cond125.i = or i1 %.not118.i, %i.hd
  br i1 %or.cond125.i, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %.preheader91
  %.not119.i = icmp samesign ult i32 %.096.i111, %.0102.i
  br i1 %.not119.i, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.he = sub nuw nsw i32 %.0102.i, %.096.i111
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = ptrtoint ptr %.0103.i109 to i64
  %i.hh = sub i64 %i.gi, %i.hg
  %i.hi = ashr exact i64 %i.hh, 2
  %i.hj = icmp sgt i64 %i.hi, %i.hf
  br i1 %i.hj, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.hk = getelementptr inbounds nuw i8, ptr %.0103.i109, i64 4
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %.preheader91
  %.1104.i = phi ptr [ %i.hk, %bb.bk ], [ %.0103.i109, %bb.bj ], [ %.0103.i109, %.preheader91 ]
  %i.hl = zext nneg i32 %.096.i111 to i64         ; 2 uses
  %.not120.i = icmp ugt i64 %.1101.i, %i.hl       ; 2 uses
  %spec.select.i = select i1 %.not120.i, ptr %.1104.i, ptr %3
  %i.hm = tail call fastcc ptr @shortest(ptr noundef nonnull %0, ptr noundef %i.gv, ptr noundef %i.hc, ptr noundef %spec.select.i, ptr noundef %3, ptr noundef null, ptr noundef null), !inline_history !31 ; 4 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.hl
  store ptr %i.hm, ptr %i.hn, align 8
  %i.ho = load i32, ptr %i.gw, align 8
  %.not121.i = icmp eq i32 %i.ho, 0
  br i1 %.not121.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  tail call void @pfree(ptr noundef nonnull %i.gs) #9, !inline_history !31
  %i.hp = load i32, ptr %i.gw, align 8
  br label %crevcondissect.exit

bb.bn:                                            ; preds = %bb.bl
  %i.hq = icmp eq ptr %i.hm, null
  br i1 %i.hq, label %.loopexit90, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %spec.select126.i = tail call i32 @llvm.smin.i32(i32 %.097.i110, i32 %i.gz) ; 4 uses
  %.not123.i = icmp eq ptr %i.hm, %3
  br i1 %.not123.i, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  br i1 %.not120.i, label %bb.bq, label %.loopexit90

bb.bq:                                            ; preds = %bb.bp
  %i.hr = add nuw i32 %.096.i111, 1
  br label %.backedge92

.backedge92:                                      ; preds = %bb.bv, %bb.bq
  %.0103.i.be = phi ptr [ %i.hm, %bb.bq ], [ %i.ih, %bb.bv ]
  %.097.i.be = phi i32 [ %spec.select126.i, %bb.bq ], [ %.3.i209, %bb.bv ]
  %.096.i.be = phi i32 [ %i.hr, %bb.bq ], [ %.2.i108, %bb.bv ] ; 2 uses
  %i.hs = icmp sgt i32 %.096.i.be, 0
  br i1 %i.hs, label %.preheader91, label %.backedge92.thread, !llvm.loop !32

bb.br:                                            ; preds = %bb.bo
  %i.ht = icmp samesign ult i32 %.096.i111, %.0102.i
  br i1 %i.ht, label %.lr.ph.preheader, label %.preheader89

.preheader89:                                     ; preds = %bb.br, %bb.bs
  %.299.i = phi i32 [ %.0.i55, %bb.bs ], [ %spec.select126.i, %bb.br ] ; 3 uses
  %.0.i55 = add i32 %.299.i, 1                    ; 4 uses
  %.not124.i = icmp sgt i32 %.0.i55, %.096.i111
  br i1 %.not124.i, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %.preheader89
  %i.hu = load ptr, ptr %i.fy, align 8
  tail call fastcc void @zaptreesubs(ptr noundef nonnull %0, ptr noundef %i.hu), !inline_history !31
  %i.hv = load ptr, ptr %i.fy, align 8
  %i.hw = sext i32 %.299.i to i64
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %i.hw
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = sext i32 %.0.i55 to i64
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %i.hz
  %i.ib = load ptr, ptr %i.ia, align 8
  %i.ic = tail call fastcc i32 @cdissect(ptr noundef nonnull %0, ptr noundef %i.hv, ptr noundef %i.hy, ptr noundef %i.ib), !inline_history !31 ; 2 uses
  switch i32 %i.ic, label %bb.bt [
    i32 0, label %.preheader89
    i32 1, label %.loopexit90
  ]

bb.bt:                                            ; preds = %bb.bs
  tail call void @pfree(ptr noundef nonnull %i.gs) #9, !inline_history !31
  br label %subset.exit

bb.bu:                                            ; preds = %.preheader89
  tail call void @pfree(ptr noundef nonnull %i.gs) #9, !inline_history !31
  br label %crevcondissect.exit

.loopexit90:                                      ; preds = %bb.bs, %bb.bp, %bb.bn
  %.3.i = phi i32 [ %spec.select126.i, %bb.bp ], [ %.097.i110, %bb.bn ], [ %.299.i, %bb.bs ]
  %.1.i = phi i32 [ %i.gz, %bb.bp ], [ %i.gz, %bb.bn ], [ %.0.i55, %bb.bs ] ; 2 uses
  %i.id = icmp sgt i32 %.1.i, 0
  br i1 %i.id, label %.lr.ph.preheader, label %.backedge92.thread

.lr.ph.preheader:                                 ; preds = %bb.br, %.loopexit90
  %.1.i210 = phi i32 [ %.1.i, %.loopexit90 ], [ %.096.i111, %bb.br ]
  %.3.i209 = phi i32 [ %.3.i, %.loopexit90 ], [ %spec.select126.i, %bb.br ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bw
  %.2.i108 = phi i32 [ %5, %bb.bw ], [ %.1.i210, %.lr.ph.preheader ] ; 4 uses
  %4 = zext nneg i32 %.2.i108 to i64
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %4
  %i.if = load ptr, ptr %i.ie, align 8            ; 2 uses
  %i.ig = icmp ult ptr %i.if, %3
  br i1 %i.ig, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %.lr.ph
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  br label %.backedge92

bb.bw:                                            ; preds = %.lr.ph
  %5 = add nsw i32 %.2.i108, -1
  %i.ii = icmp sgt i32 %.2.i108, 1
  br i1 %i.ii, label %.lr.ph, label %.backedge92.thread, !llvm.loop !33

.backedge92.thread:                               ; preds = %.loopexit90, %.backedge92, %bb.bw
  tail call void @pfree(ptr noundef nonnull %i.gs) #9, !inline_history !31
  br label %subset.exit

bb.bx:                                            ; preds = %bb.bc
  %i.ij = tail call i16 @llvm.smax.i16(i16 %i.ge, i16 1) ; 3 uses
  %spec.store.select.i = zext nneg i16 %i.ij to i32 ; 3 uses
  %i.ik = ptrtoint ptr %3 to i64                  ; 3 uses
  %i.il = ptrtoint ptr %2 to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = ashr exact i64 %i.im, 2                 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.ip = load i16, ptr %i.io, align 2            ; 2 uses
  %i.iq = sext i16 %i.ip to i64
  %.not.i56 = icmp eq i16 %i.ip, 256
  %i.ir = tail call i64 @llvm.umin.i64(i64 %i.in, i64 %i.iq)
  %.0108.i = select i1 %.not.i56, i64 %i.in, i64 %i.ir
  %i.is = zext nneg i16 %i.ij to i64
  %.1109.i = tail call i64 @llvm.umax.i64(i64 %.0108.i, i64 %i.is) ; 2 uses
  %i.it = add nsw i64 %.1109.i, 1
  %i.iu = tail call ptr @palloc_mul_extended(i64 noundef 8, i64 noundef %i.it, i32 noundef 2) #9, !inline_history !34 ; 12 uses
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %subset.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store ptr %2, ptr %i.iu, align 8
  %i.iw = load ptr, ptr %i.fy, align 8
  %i.ix = tail call fastcc ptr @getsubdfa(ptr noundef nonnull %0, ptr noundef %i.iw), !inline_history !34
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.iz = load i32, ptr %i.iy, align 8
  %.not127.i = icmp eq i32 %i.iz, 0
  br i1 %.not127.i, label %.preheader87.preheader, label %bb.bz

.preheader87.preheader:                           ; preds = %bb.by
  %i.ja = zext nneg i16 %i.ij to i64              ; 2 uses
  br label %.preheader87

bb.bz:                                            ; preds = %bb.by
  tail call void @pfree(ptr noundef nonnull %i.iu) #9, !inline_history !34
  %i.jb = load i32, ptr %i.iy, align 8
  br label %crevcondissect.exit

.preheader87:                                     ; preds = %.preheader87.preheader, %.backedge
  %.0103.i58125 = phi i32 [ %.0103.i58.be, %.backedge ], [ 1, %.preheader87.preheader ] ; 10 uses
  %.0104.i124 = phi i32 [ %.0104.i.be, %.backedge ], [ 0, %.preheader87.preheader ] ; 2 uses
  %.0110.i123 = phi ptr [ %.0110.i.be, %.backedge ], [ %3, %.preheader87.preheader ]
  %i.jc = add nsw i32 %.0103.i58125, -1           ; 4 uses
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.jd ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8
  %i.jg = tail call fastcc ptr @longest(ptr noundef nonnull %0, ptr noundef %i.ix, ptr noundef %i.jf, ptr noundef %.0110.i123, ptr noundef null), !inline_history !34 ; 5 uses
  %i.jh = zext nneg i32 %.0103.i58125 to i64      ; 2 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.jh
  store ptr %i.jg, ptr %i.ji, align 8
  %i.jj = load i32, ptr %i.iy, align 8
  %.not128.i = icmp eq i32 %i.jj, 0
  br i1 %.not128.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %.preheader87
  tail call void @pfree(ptr noundef nonnull %i.iu) #9, !inline_history !34
  %i.jk = load i32, ptr %i.iy, align 8
  br label %crevcondissect.exit

bb.cb:                                            ; preds = %.preheader87
  %i.jl = icmp eq ptr %i.jg, null
  br i1 %i.jl, label %.loopexit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %spec.select.i59 = tail call i32 @llvm.smin.i32(i32 %.0104.i124, i32 %i.jc) ; 6 uses
  %.not130.i = icmp eq ptr %i.jg, %3
  br i1 %.not130.i, label %bb.ci, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.not132.i = icmp ugt i64 %.1109.i, %i.jh
  br i1 %.not132.i, label %bb.ce, label %.loopexit

bb.ce:                                            ; preds = %bb.cd
  %i.jm = load ptr, ptr %i.je, align 8
  %i.jn = icmp eq ptr %i.jg, %i.jm
  br i1 %i.jn, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %.not133.i = icmp samesign ult i32 %.0103.i58125, %spec.store.select.i
  br i1 %.not133.i, label %bb.cg, label %.lr.ph114.preheader

bb.cg:                                            ; preds = %bb.cf
  %i.jo = sub nuw nsw i32 %spec.store.select.i, %.0103.i58125
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = ptrtoint ptr %i.jg to i64
  %i.jr = sub i64 %i.ik, %i.jq
  %i.js = ashr exact i64 %i.jr, 2
  %i.jt = icmp sgt i64 %i.js, %i.jp
  br i1 %i.jt, label %.lr.ph114.preheader, label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.ce
  %i.ju = add nuw i32 %.0103.i58125, 1
  br label %.backedge

.backedge.loopexit:                               ; preds = %bb.co, %bb.cm
  %i.jv = trunc nuw nsw i64 %indvars.iv.a to i32
  br label %.backedge

.backedge:                                        ; preds = %.backedge.loopexit, %bb.ch
  %.0110.i.be = phi ptr [ %3, %bb.ch ], [ %i.ko, %.backedge.loopexit ]
  %.0104.i.be = phi i32 [ %spec.select.i59, %bb.ch ], [ %.3107.i216, %.backedge.loopexit ]
  %.0103.i58.be = phi i32 [ %i.ju, %bb.ch ], [ %i.jv, %.backedge.loopexit ] ; 2 uses
  %i.jw = icmp sgt i32 %.0103.i58.be, 0
  br i1 %i.jw, label %.preheader87, label %.backedge.thread, !llvm.loop !35

bb.ci:                                            ; preds = %bb.cc
  %i.jx = icmp samesign ult i32 %.0103.i58125, %spec.store.select.i
  br i1 %i.jx, label %.lr.ph114.preheader, label %.preheader86

.preheader86:                                     ; preds = %bb.ci, %bb.cj
  %.2106.i = phi i32 [ %.0102.i64, %bb.cj ], [ %spec.select.i59, %bb.ci ] ; 3 uses
  %.0102.i64 = add i32 %.2106.i, 1                ; 4 uses
  %.not131.i = icmp sgt i32 %.0102.i64, %.0103.i58125
  br i1 %.not131.i, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %.preheader86
  %i.jy = load ptr, ptr %i.fy, align 8
  tail call fastcc void @zaptreesubs(ptr noundef nonnull %0, ptr noundef %i.jy), !inline_history !34
  %i.jz = load ptr, ptr %i.fy, align 8
  %i.ka = sext i32 %.2106.i to i64
  %i.kb = getelementptr inbounds [8 x i8], ptr %i.iu, i64 %i.ka
  %i.kc = load ptr, ptr %i.kb, align 8
  %i.kd = sext i32 %.0102.i64 to i64
  %i.ke = getelementptr inbounds [8 x i8], ptr %i.iu, i64 %i.kd
  %i.kf = load ptr, ptr %i.ke, align 8
  %i.kg = tail call fastcc i32 @cdissect(ptr noundef nonnull %0, ptr noundef %i.jz, ptr noundef %i.kc, ptr noundef %i.kf), !inline_history !34 ; 2 uses
  switch i32 %i.kg, label %bb.ck [
    i32 0, label %.preheader86
    i32 1, label %.loopexit
  ]

bb.ck:                                            ; preds = %bb.cj
  tail call void @pfree(ptr noundef nonnull %i.iu) #9, !inline_history !34
  br label %subset.exit

bb.cl:                                            ; preds = %.preheader86
  tail call void @pfree(ptr noundef nonnull %i.iu) #9, !inline_history !34
  br label %crevcondissect.exit

.loopexit:                                        ; preds = %bb.cj, %bb.cd, %bb.cb
  %.3107.i = phi i32 [ %spec.select.i59, %bb.cd ], [ %.0104.i124, %bb.cb ], [ %.2106.i, %bb.cj ]
  %.1.i60 = phi i32 [ %i.jc, %bb.cd ], [ %i.jc, %bb.cb ], [ %.0102.i64, %bb.cj ] ; 2 uses
  %i.kh = icmp sgt i32 %.1.i60, 0
  br i1 %i.kh, label %.lr.ph114.preheader, label %.backedge.thread

.lr.ph114.preheader:                              ; preds = %bb.ci, %bb.cg, %bb.cf, %.loopexit
  %.1.i60217 = phi i32 [ %.1.i60, %.loopexit ], [ %.0103.i58125, %bb.cf ], [ %.0103.i58125, %bb.cg ], [ %.0103.i58125, %bb.ci ]
  %.3107.i216 = phi i32 [ %.3107.i, %.loopexit ], [ %spec.select.i59, %bb.cf ], [ %spec.select.i59, %bb.cg ], [ %spec.select.i59, %bb.ci ]
  %i.ki = zext nneg i32 %.1.i60217 to i64
  br label %.lr.ph114

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %bb.cp
  %indvars.iv.a = phi i64 [ %i.ki, %.lr.ph114.preheader ], [ %indvars.iv.next.a, %bb.cp ] ; 6 uses
  %i.kj = getelementptr [8 x i8], ptr %i.iu, i64 %indvars.iv.a ; 2 uses
  %i.kk = getelementptr i8, ptr %i.kj, i64 -8
  %i.kl = load ptr, ptr %i.kk, align 8            ; 3 uses
  %i.km = load ptr, ptr %i.kj, align 8            ; 2 uses
  %i.kn = icmp ugt ptr %i.km, %i.kl
  br i1 %i.kn, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %.lr.ph114
  %i.ko = getelementptr inbounds i8, ptr %i.km, i64 -4 ; 2 uses
  %i.kp = icmp ugt ptr %i.ko, %i.kl
  br i1 %i.kp, label %.backedge.loopexit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.kq = icmp samesign ult i64 %indvars.iv.a, %i.ja
  br i1 %i.kq, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.kr = sub nuw nsw i64 %i.ja, %indvars.iv.a
  %i.ks = ptrtoint ptr %i.kl to i64
  %i.kt = sub i64 %i.ik, %i.ks
  %i.ku = ashr exact i64 %i.kt, 2
  %.not134.i = icmp sgt i64 %i.ku, %i.kr
  br i1 %.not134.i, label %bb.cp, label %.backedge.loopexit

bb.cp:                                            ; preds = %.lr.ph114, %bb.cn, %bb.co
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, -1
  %i.kv = icmp sgt i64 %indvars.iv.a, 1
  br i1 %i.kv, label %.lr.ph114, label %.backedge.thread

.backedge.thread:                                 ; preds = %.loopexit, %.backedge, %bb.cp
  tail call void @pfree(ptr noundef nonnull %i.iu) #9, !inline_history !34
  %i.kw = load i16, ptr %i.gd, align 8
  %i.kx = icmp ne i16 %i.kw, 0
  %i.ky = icmp ne ptr %2, %3
  %or.cond135.i.not = or i1 %i.ky, %i.kx
  %spec.select136.i = zext i1 %or.cond135.i.not to i32
  br label %crevcondissect.exit

bb.cq:                                            ; preds = %bb.d
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.la = load ptr, ptr %i.kz, align 8
end_hunk_0
