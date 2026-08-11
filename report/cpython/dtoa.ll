inline.NumInlined: 94
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_Py_dg_strtod:bb.a
  %i.eg = zext nneg i32 %i.ee to i64
  %i.eh = getelementptr [8 x i8], ptr @tens, i64 %i.eg
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !26
  %i.ej = fmul double %i.ei, %i.du
  %i.ek = zext nneg i32 %i.ef to i64
  %i.el = getelementptr [8 x i8], ptr @tens, i64 %i.ek
  %i.em = load double, ptr %i.el, align 8, !tbaa !26
  %i.en = fmul double %i.ej, %i.em
  br label %.sink.split

bb.af:                                            ; preds = %bb.aa
  %i.eo = icmp samesign ugt i32 %i.dt, -23
  br i1 %i.eo, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ep = sub nsw i32 0, %i.dt
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr [8 x i8], ptr @tens, i64 %i.eq
  %i.es = load double, ptr %i.er, align 8, !tbaa !26
  %i.et = fdiv double %i.du, %i.es
  br label %.sink.split

bb.ah:                                            ; preds = %bb.ad, %bb.af, %.thread, %bb.y
  %i.eu = phi i32 [ %i.ds, %bb.ad ], [ %i.ds, %bb.af ], [ %i.ds, %.thread ], [ %i.di, %bb.y ]
  %.0416.lcssa1120 = phi i32 [ %.0416.lcssa1121, %bb.ad ], [ %.0416.lcssa1121, %bb.af ], [ %.0416.lcssa1121, %.thread ], [ %.0416.lcssa.ph, %bb.y ] ; 3 uses
  %.0454.lcssa11081118 = phi i32 [ %.0454.lcssa11081119, %bb.ad ], [ %.0454.lcssa11081119, %bb.af ], [ %.0454.lcssa11081119, %.thread ], [ %.04541391, %bb.y ] ; 20 uses
  %i.ev = phi i32 [ %i.dt, %bb.ad ], [ %i.dt, %bb.af ], [ %i.dt, %.thread ], [ %i.ck, %bb.y ] ; 4 uses
  %spec.select56811111116 = phi i32 [ %spec.select56811111117, %bb.ad ], [ %spec.select56811111117, %bb.af ], [ %spec.select56811111117, %.thread ], [ %spec.select5681107, %bb.y ] ; 20 uses
  %i.ew = phi double [ %i.du, %bb.ad ], [ %i.du, %bb.af ], [ %i.du, %.thread ], [ %i.dq, %bb.y ] ; 4 uses
  %i.ex = sub nsw i32 %.0454.lcssa11081118, %i.eu
  %i.ey = add i32 %i.ev, %i.ex                    ; 7 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 0, ptr %i.ez, align 4, !tbaa !28
  %i.fa = icmp sgt i32 %i.ey, 0
  br i1 %i.fa, label %bb.ai, label %bb.as

bb.ai:                                            ; preds = %bb.ah
  %i.fb = and i32 %i.ey, 15                       ; 2 uses
  %.not542 = icmp eq i32 %i.fb, 0
  br i1 %.not542, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr [8 x i8], ptr @tens, i64 %i.fc
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !26
  %i.ff = fmul double %i.fe, %i.ew                ; 2 uses
  store double %i.ff, ptr %2, align 8, !tbaa !11
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.promoted880 = phi double [ %i.ff, %bb.aj ], [ %i.ew, %bb.ai ] ; 2 uses
  %i.fg = and i32 %i.ey, 2147483632               ; 2 uses
  %.not543 = icmp eq i32 %i.fg, 0
  br i1 %.not543, label %bb.bj, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fh = icmp samesign ugt i32 %i.fg, 308
  br i1 %i.fh, label %.loopexit730, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fi = icmp samesign ugt i32 %i.ey, 31
  br i1 %i.fi, label %.lr.ph885.preheader, label %._crit_edge886

.lr.ph885.preheader:                              ; preds = %bb.am
  %i.fj = lshr i32 %i.ey, 4
  br label %.lr.ph885

.lr.ph885:                                        ; preds = %.lr.ph885.preheader, %bb.ao
  %indvars.iv1012 = phi i64 [ 0, %.lr.ph885.preheader ], [ %indvars.iv.next1013, %bb.ao ] ; 2 uses
  %.0468882 = phi i32 [ %i.fj, %.lr.ph885.preheader ], [ %i.fq, %bb.ao ] ; 3 uses
  %i.fk = phi double [ %.promoted880, %.lr.ph885.preheader ], [ %i.fp, %bb.ao ] ; 2 uses
  %i.fl = and i32 %.0468882, 1
  %.not564 = icmp eq i32 %i.fl, 0
  br i1 %.not564, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph885
  %i.fm = getelementptr [8 x i8], ptr @bigtens, i64 %indvars.iv1012
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !26
  %i.fo = fmul double %i.fn, %i.fk
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph885, %bb.an
  %i.fp = phi double [ %i.fk, %.lr.ph885 ], [ %i.fo, %bb.an ] ; 2 uses
  %indvars.iv.next1013 = add nuw nsw i64 %indvars.iv1012, 1 ; 2 uses
  %i.fq = lshr i32 %.0468882, 1
  %i.fr = icmp samesign ugt i32 %.0468882, 3
  br i1 %i.fr, label %.lr.ph885, label %._crit_edge886, !llvm.loop !29

._crit_edge886:                                   ; preds = %bb.ao, %bb.am
  %.lcssa881 = phi double [ %.promoted880, %bb.am ], [ %i.fp, %bb.ao ] ; 2 uses
  %.0452.lcssa = phi i64 [ 0, %bb.am ], [ %indvars.iv.next1013, %bb.ao ]
  store double %.lcssa881, ptr %2, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.ft = bitcast double %.lcssa881 to i64
  %i.fu = lshr i64 %i.ft, 32
  %i.fv = trunc nuw i64 %i.fu to i32
  %i.fw = add i32 %i.fv, -55574528
  store i32 %i.fw, ptr %i.fs, align 4, !tbaa !11
  %i.fx = getelementptr [8 x i8], ptr @bigtens, i64 %.0452.lcssa
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !26
  %i.fz = load double, ptr %2, align 8, !tbaa !11
  %i.ga = fmul double %i.fy, %i.fz                ; 2 uses
  store double %i.ga, ptr %2, align 8, !tbaa !11
  %i.gb = bitcast double %i.ga to i64
  %i.gc = lshr i64 %i.gb, 32
  %i.gd = trunc nuw i64 %i.gc to i32              ; 2 uses
  %i.ge = and i32 %i.gd, 2146435072               ; 2 uses
  %i.gf = icmp samesign ugt i32 %i.ge, 2090860544
  br i1 %i.gf, label %.loopexit730, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge886
  %i.gg = icmp samesign ugt i32 %i.ge, 2089811968
  br i1 %i.gg, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 2146435071, ptr %i.fs, align 4, !tbaa !11
  store i32 -1, ptr %2, align 8, !tbaa !11
  br label %bb.bj

bb.ar:                                            ; preds = %bb.ap
  %i.gh = add i32 %i.gd, 55574528
  store i32 %i.gh, ptr %i.fs, align 4, !tbaa !11
  br label %bb.bj

bb.as:                                            ; preds = %bb.ah
  %i.gi = icmp slt i32 %i.ey, 0
  br i1 %i.gi, label %bb.at, label %bb.bj

bb.at:                                            ; preds = %bb.as
  %i.gj = sub i32 0, %i.ey                        ; 3 uses
  %i.gk = and i32 %i.gj, 15                       ; 2 uses
  %.not537 = icmp eq i32 %i.gk, 0
  br i1 %.not537, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = getelementptr [8 x i8], ptr @tens, i64 %i.gl
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !26
  %i.go = fdiv double %i.ew, %i.gn                ; 2 uses
  store double %i.go, ptr %2, align 8, !tbaa !11
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.promoted = phi double [ %i.go, %bb.au ], [ %i.ew, %bb.at ] ; 2 uses
  %i.gp = ashr i32 %i.gj, 4                       ; 4 uses
  %.not538 = icmp eq i32 %i.gp, 0
  br i1 %.not538, label %bb.bj, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gq = icmp sgt i32 %i.gp, 31
  br i1 %i.gq, label %bb.gu, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gr = and i32 %i.gj, 256
  %.not539 = icmp eq i32 %i.gr, 0                 ; 2 uses
  br i1 %.not539, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i32 106, ptr %i.ez, align 4, !tbaa !28
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.gs = phi i32 [ 106, %bb.ay ], [ 0, %bb.ax ]
  %i.gt = icmp sgt i32 %i.gp, 0
  br i1 %i.gt, label %.lr.ph877, label %._crit_edge878

.lr.ph877:                                        ; preds = %bb.az, %bb.bb
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bb ], [ 0, %bb.az ] ; 2 uses
  %.1469874 = phi i32 [ %i.ha, %bb.bb ], [ %i.gp, %bb.az ] ; 2 uses
  %i.gu = phi double [ %i.gz, %bb.bb ], [ %.promoted, %bb.az ] ; 2 uses
  %i.gv = and i32 %.1469874, 1
  %.not541 = icmp eq i32 %i.gv, 0
  br i1 %.not541, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph877
  %i.gw = getelementptr [8 x i8], ptr @tinytens, i64 %indvars.iv
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !26
  %i.gy = fmul double %i.gx, %i.gu
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph877, %bb.ba
  %i.gz = phi double [ %i.gu, %.lr.ph877 ], [ %i.gy, %bb.ba ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ha = lshr i32 %.1469874, 1                   ; 2 uses
  %.not901 = icmp eq i32 %i.ha, 0
  br i1 %.not901, label %._crit_edge878, label %.lr.ph877, !llvm.loop !30

._crit_edge878:                                   ; preds = %bb.bb, %bb.az
  %.lcssa873 = phi double [ %.promoted, %bb.az ], [ %i.gz, %bb.bb ] ; 3 uses
  store double %.lcssa873, ptr %2, align 8
  %i.hb = bitcast double %.lcssa873 to i64        ; 2 uses
  %i.hc = lshr i64 %i.hb, 32
  %i.hd = trunc nuw i64 %i.hc to i32              ; 2 uses
  %i.he = trunc i64 %i.hb to i32
  br i1 %.not539, label %bb.bi, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge878
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.hg = lshr i32 %i.hd, 20
  %i.hh = and i32 %i.hg, 2047                     ; 5 uses
  %i.hi = sub nuw nsw i32 107, %i.hh
  %i.hj = icmp samesign ult i32 %i.hh, 107
  br i1 %i.hj, label %bb.bd, label %thread-pre-split

bb.bd:                                            ; preds = %bb.bc
  %i.hk = icmp samesign ult i32 %i.hh, 76
  br i1 %i.hk, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %2, align 8, !tbaa !11
  %i.hl = icmp samesign ult i32 %i.hh, 55
  br i1 %i.hl, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 57671680, ptr %i.hf, align 4, !tbaa !11
  br label %thread-pre-split

bb.bg:                                            ; preds = %bb.be
  %i.hm = sub nuw nsw i32 75, %i.hh
  %i.hn = shl nsw i32 -1, %i.hm
  %i.ho = and i32 %i.hn, %i.hd
  store i32 %i.ho, ptr %i.hf, align 4, !tbaa !11
  br label %thread-pre-split

bb.bh:                                            ; preds = %bb.bd
  %i.hp = shl nsw i32 -1, %i.hi
  %i.hq = and i32 %i.hp, %i.he
  store i32 %i.hq, ptr %2, align 8, !tbaa !11
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.bc, %bb.bf, %bb.bg, %bb.bh
  %.pr = load double, ptr %2, align 8, !tbaa !11
  br label %bb.bi

bb.bi:                                            ; preds = %thread-pre-split, %._crit_edge878
  %i.hr = phi double [ %.pr, %thread-pre-split ], [ %.lcssa873, %._crit_edge878 ]
  %i.hs = fcmp une double %i.hr, 0.000000e+00
  br i1 %i.hs, label %bb.bj, label %bb.gu

bb.bj:                                            ; preds = %bb.as, %bb.bi, %bb.av, %bb.ak, %bb.ar, %bb.aq
  %i.ht = phi i32 [ 0, %bb.as ], [ %i.gs, %bb.bi ], [ 0, %bb.av ], [ 0, %bb.ak ], [ 0, %bb.ar ], [ 0, %bb.aq ] ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 %.0454.lcssa11081118, ptr %i.hu, align 4, !tbaa !31
  %i.hv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %spec.select56811111116, ptr %i.hv, align 4, !tbaa !32
  %i.hw = icmp sgt i32 %.0454.lcssa11081118, 40
  br i1 %i.hw, label %.preheader735.preheader, label %.loopexit733

.preheader735.preheader:                          ; preds = %bb.bj
  %.not544 = icmp slt i32 %spec.select, 18
  %i.hx = select i1 %.not544, i64 18, i64 17
  %i.hy = getelementptr i8, ptr %.1430, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !11
  %.not545 = icmp eq i8 %i.hz, 48
  br i1 %.not545, label %.preheader735.1, label %.thread1122

.preheader735.1:                                  ; preds = %.preheader735.preheader
  %.not544.1 = icmp slt i32 %spec.select56811111116, 17
  %i.ia = select i1 %.not544.1, i64 17, i64 16
  %i.ib = getelementptr i8, ptr %.1430, i64 %i.ia
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !11
  %.not545.1 = icmp eq i8 %i.ic, 48
  br i1 %.not545.1, label %.preheader735.2, label %.thread1122

.preheader735.2:                                  ; preds = %.preheader735.1
  %.not544.2 = icmp slt i32 %spec.select56811111116, 16
  %i.id = select i1 %.not544.2, i64 16, i64 15
  %i.ie = getelementptr i8, ptr %.1430, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !11
  %.not545.2 = icmp eq i8 %i.if, 48
  br i1 %.not545.2, label %.preheader735.3, label %.thread1122

.preheader735.3:                                  ; preds = %.preheader735.2
  %.not544.3 = icmp slt i32 %spec.select56811111116, 15
  %i.ig = select i1 %.not544.3, i64 15, i64 14
  %i.ih = getelementptr i8, ptr %.1430, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !11
  %.not545.3 = icmp eq i8 %i.ii, 48
  br i1 %.not545.3, label %.preheader735.4, label %.thread1122

.preheader735.4:                                  ; preds = %.preheader735.3
  %.not544.4 = icmp slt i32 %spec.select56811111116, 14
  %i.ij = select i1 %.not544.4, i64 14, i64 13
  %i.ik = getelementptr i8, ptr %.1430, i64 %i.ij
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !11
  %.not545.4 = icmp eq i8 %i.il, 48
  br i1 %.not545.4, label %.preheader735.5, label %.thread1122

.preheader735.5:                                  ; preds = %.preheader735.4
  %.not544.5 = icmp slt i32 %spec.select56811111116, 13
  %i.im = select i1 %.not544.5, i64 13, i64 12
  %i.in = getelementptr i8, ptr %.1430, i64 %i.im
  %i.io = load i8, ptr %i.in, align 1, !tbaa !11
  %.not545.5 = icmp eq i8 %i.io, 48
  br i1 %.not545.5, label %.preheader735.6, label %.thread1122

.preheader735.6:                                  ; preds = %.preheader735.5
  %.not544.6 = icmp slt i32 %spec.select56811111116, 12
  %i.ip = select i1 %.not544.6, i64 12, i64 11
  %i.iq = getelementptr i8, ptr %.1430, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !11
  %.not545.6 = icmp eq i8 %i.ir, 48
  br i1 %.not545.6, label %.preheader735.7, label %.thread1122

.preheader735.7:                                  ; preds = %.preheader735.6
  %.not544.7 = icmp slt i32 %spec.select56811111116, 11
  %i.is = select i1 %.not544.7, i64 11, i64 10
  %i.it = getelementptr i8, ptr %.1430, i64 %i.is
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !11
  %.not545.7 = icmp eq i8 %i.iu, 48
  br i1 %.not545.7, label %.preheader735.8, label %.thread1122

.preheader735.8:                                  ; preds = %.preheader735.7
  %.not544.8 = icmp slt i32 %spec.select56811111116, 10
  %i.iv = select i1 %.not544.8, i64 10, i64 9
  %i.iw = getelementptr i8, ptr %.1430, i64 %i.iv
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !11
  %.not545.8 = icmp eq i8 %i.ix, 48
  br i1 %.not545.8, label %.preheader735.9, label %.thread1122

.preheader735.9:                                  ; preds = %.preheader735.8
  %.not544.9 = icmp slt i32 %spec.select56811111116, 9
  %i.iy = select i1 %.not544.9, i64 9, i64 8
  %i.iz = getelementptr i8, ptr %.1430, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !11
  %.not545.9 = icmp eq i8 %i.ja, 48
  br i1 %.not545.9, label %.preheader735.10, label %.thread1122

.preheader735.10:                                 ; preds = %.preheader735.9
  %.not544.10 = icmp slt i32 %spec.select56811111116, 8
  %i.jb = select i1 %.not544.10, i64 8, i64 7
  %i.jc = getelementptr i8, ptr %.1430, i64 %i.jb
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !11
  %.not545.10 = icmp eq i8 %i.jd, 48
  br i1 %.not545.10, label %.preheader735.11, label %.preheader734

.preheader735.11:                                 ; preds = %.preheader735.10
  %.not544.11 = icmp slt i32 %spec.select56811111116, 7
  %i.je = select i1 %.not544.11, i64 7, i64 6
  %i.jf = getelementptr i8, ptr %.1430, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !11
  %.not545.11 = icmp eq i8 %i.jg, 48
  br i1 %.not545.11, label %.preheader735.12, label %.preheader734

.preheader735.12:                                 ; preds = %.preheader735.11
  %.not544.12 = icmp slt i32 %spec.select56811111116, 6
  %i.jh = select i1 %.not544.12, i64 6, i64 5
  %i.ji = getelementptr i8, ptr %.1430, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !11
  %.not545.12 = icmp eq i8 %i.jj, 48
  br i1 %.not545.12, label %.preheader735.13, label %.preheader734

.preheader735.13:                                 ; preds = %.preheader735.12
  %.not544.13 = icmp slt i32 %spec.select56811111116, 5
  %i.jk = select i1 %.not544.13, i64 5, i64 4
  %i.jl = getelementptr i8, ptr %.1430, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !11
  %.not545.13 = icmp eq i8 %i.jm, 48
  br i1 %.not545.13, label %.preheader735.14, label %.preheader734

.preheader735.14:                                 ; preds = %.preheader735.13
  %.not544.14 = icmp slt i32 %spec.select56811111116, 4
  %i.jn = select i1 %.not544.14, i64 4, i64 3
  %i.jo = getelementptr i8, ptr %.1430, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !11
  %.not545.14 = icmp eq i8 %i.jp, 48
  br i1 %.not545.14, label %.preheader735.15, label %.preheader734

.preheader735.15:                                 ; preds = %.preheader735.14
  %.not544.15 = icmp slt i32 %spec.select56811111116, 3
  %i.jq = select i1 %.not544.15, i64 3, i64 2
  %i.jr = getelementptr i8, ptr %.1430, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !11
  %.not545.15 = icmp eq i8 %i.js, 48
  br i1 %.not545.15, label %.preheader735.16, label %.preheader734

.preheader735.16:                                 ; preds = %.preheader735.15
  %.not544.16 = icmp slt i32 %spec.select56811111116, 2
  %i.jt = select i1 %.not544.16, i64 2, i64 1
  %i.ju = getelementptr i8, ptr %.1430, i64 %i.jt
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !11
  %.not545.16 = icmp eq i8 %i.jv, 48
  br i1 %.not545.16, label %.preheader735.17, label %.preheader734

.preheader735.17:                                 ; preds = %.preheader735.16
  %i.jw = load i8, ptr %.1430, align 1, !tbaa !11
  %.not545.17 = icmp ne i8 %i.jw, 48
  %spec.select1277 = zext i1 %.not545.17 to i32
  br label %.preheader734

.thread1122:                                      ; preds = %.preheader735.preheader, %.preheader735.9, %.preheader735.1, %.preheader735.2, %.preheader735.3, %.preheader735.4, %.preheader735.5, %.preheader735.6, %.preheader735.7, %.preheader735.8
  %.3457.lcssa.ph = phi i32 [ 10, %.preheader735.8 ], [ 11, %.preheader735.7 ], [ 12, %.preheader735.6 ], [ 13, %.preheader735.5 ], [ 14, %.preheader735.4 ], [ 15, %.preheader735.3 ], [ 16, %.preheader735.2 ], [ 17, %.preheader735.1 ], [ 9, %.preheader735.9 ], [ 18, %.preheader735.preheader ] ; 3 uses
  %i.jx = sub nuw nsw i32 %.0454.lcssa11081118, %.3457.lcssa.ph
  %i.jy = add i32 %i.jx, %i.ev
  %spec.select5691124 = tail call i32 @llvm.smin.i32(i32 %spec.select56811111116, i32 %.3457.lcssa.ph)
  br label %.loopexit733

.preheader734:                                    ; preds = %.preheader735.17, %.preheader735.10, %.preheader735.11, %.preheader735.12, %.preheader735.13, %.preheader735.14, %.preheader735.15, %.preheader735.16
  %.3457.lcssa = phi i32 [ 6, %.preheader735.12 ], [ 8, %.preheader735.10 ], [ 2, %.preheader735.16 ], [ 7, %.preheader735.11 ], [ %spec.select1277, %.preheader735.17 ], [ 3, %.preheader735.15 ], [ 5, %.preheader735.13 ], [ 4, %.preheader735.14 ] ; 7 uses
  %i.jz = sub nuw nsw i32 %.0454.lcssa11081118, %.3457.lcssa
  %i.ka = add i32 %i.jz, %i.ev                    ; 3 uses
  %spec.select569 = tail call i32 @llvm.smin.i32(i32 %spec.select56811111116, i32 %.3457.lcssa) ; 8 uses
  %i.kb = icmp sgt i32 %spec.select569, 0
  br i1 %i.kb, label %.lr.ph891.preheader, label %.preheader

.lr.ph891.preheader:                              ; preds = %.preheader734
  %wide.trip.count = zext nneg i32 %spec.select569 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.kc = icmp ult i32 %spec.select569, 4
  br i1 %i.kc, label %.lr.ph891.epil.preheader, label %.lr.ph891.preheader.new

.lr.ph891.preheader.new:                          ; preds = %.lr.ph891.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph891

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph891
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph891.epil.preheader

.lr.ph891.epil.preheader:                         ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph891.preheader
  %indvars.iv1015.epil.init = phi i64 [ 0, %.lr.ph891.preheader ], [ %indvars.iv.next1016.3, %.preheader.loopexit.unr-lcssa ]
  %.2418890.epil.init = phi i32 [ 0, %.lr.ph891.preheader ], [ %i.lu, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod1504 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1504)
  br label %.lr.ph891.epil

.lr.ph891.epil:                                   ; preds = %.lr.ph891.epil, %.lr.ph891.epil.preheader
  %indvars.iv1015.epil = phi i64 [ %indvars.iv1015.epil.init, %.lr.ph891.epil.preheader ], [ %indvars.iv.next1016.epil, %.lr.ph891.epil ] ; 2 uses
  %.2418890.epil = phi i32 [ %.2418890.epil.init, %.lr.ph891.epil.preheader ], [ %i.ki, %.lr.ph891.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph891.epil.preheader ], [ %epil.iter.next, %.lr.ph891.epil ]
  %i.kd = mul i32 %.2418890.epil, 10
  %i.ke = getelementptr i8, ptr %.1430, i64 %indvars.iv1015.epil
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !11
  %i.kg = sext i8 %i.kf to i32
  %i.kh = add i32 %i.kd, -48
  %i.ki = add i32 %i.kh, %i.kg                    ; 2 uses
  %indvars.iv.next1016.epil = add nuw nsw i64 %indvars.iv1015.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph891.epil, !llvm.loop !33

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph891.epil, %.preheader734
  %.5459.lcssa = phi i32 [ 0, %.preheader734 ], [ %spec.select569, %.lr.ph891.epil ], [ %spec.select569, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %.2418.lcssa = phi i32 [ 0, %.preheader734 ], [ %i.lu, %.preheader.loopexit.unr-lcssa ], [ %i.ki, %.lr.ph891.epil ] ; 3 uses
  %i.kj = icmp samesign ult i32 %.5459.lcssa, %.3457.lcssa
  br i1 %i.kj, label %.lr.ph896.preheader, label %._crit_edge.thread.i

.lr.ph896.preheader:                              ; preds = %.preheader
  %i.kk = zext nneg i32 %.5459.lcssa to i64       ; 4 uses
  %wide.trip.count1022 = zext nneg i32 %.3457.lcssa to i64 ; 3 uses
  %i.kl = sub nsw i64 %wide.trip.count1022, %i.kk
  %xtraiter1505 = and i64 %i.kl, 3                ; 2 uses
  %lcmp.mod1506.not = icmp eq i64 %xtraiter1505, 0
  br i1 %lcmp.mod1506.not, label %.lr.ph896.prol.loopexit, label %.lr.ph896.prol

.lr.ph896.prol:                                   ; preds = %.lr.ph896.preheader, %.lr.ph896.prol
  %indvars.iv1019.prol = phi i64 [ %indvars.iv.next1020.prol, %.lr.ph896.prol ], [ %i.kk, %.lr.ph896.preheader ]
  %.3419895.prol = phi i32 [ %i.kr, %.lr.ph896.prol ], [ %.2418.lcssa, %.lr.ph896.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph896.prol ], [ 0, %.lr.ph896.preheader ]
  %i.km = mul i32 %.3419895.prol, 10
  %indvars.iv.next1020.prol = add nuw nsw i64 %indvars.iv1019.prol, 1 ; 3 uses
  %i.kn = getelementptr i8, ptr %.1430, i64 %indvars.iv.next1020.prol
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !11
  %i.kp = sext i8 %i.ko to i32
  %i.kq = add i32 %i.km, -48
  %i.kr = add i32 %i.kq, %i.kp                    ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1505
  br i1 %prol.iter.cmp.not, label %.lr.ph896.prol.loopexit, label %.lr.ph896.prol, !llvm.loop !35

.lr.ph896.prol.loopexit:                          ; preds = %.lr.ph896.prol, %.lr.ph896.preheader
  %.lcssa1485.unr = phi i32 [ poison, %.lr.ph896.preheader ], [ %i.kr, %.lr.ph896.prol ]
  %indvars.iv1019.unr = phi i64 [ %i.kk, %.lr.ph896.preheader ], [ %indvars.iv.next1020.prol, %.lr.ph896.prol ]
  %.3419895.unr = phi i32 [ %.2418.lcssa, %.lr.ph896.preheader ], [ %i.kr, %.lr.ph896.prol ]
  %i.ks = sub nsw i64 %i.kk, %wide.trip.count1022
  %i.kt = icmp ugt i64 %i.ks, -4
  br i1 %i.kt, label %._crit_edge.thread.i, label %.lr.ph896

.lr.ph891:                                        ; preds = %.lr.ph891, %.lr.ph891.preheader.new
  %indvars.iv1015 = phi i64 [ 0, %.lr.ph891.preheader.new ], [ %indvars.iv.next1016.3, %.lr.ph891 ] ; 5 uses
  %.2418890 = phi i32 [ 0, %.lr.ph891.preheader.new ], [ %i.lu, %.lr.ph891 ]
  %niter = phi i64 [ 0, %.lr.ph891.preheader.new ], [ %niter.next.3, %.lr.ph891 ]
  %i.ku = mul i32 %.2418890, 10
  %i.kv = getelementptr i8, ptr %.1430, i64 %indvars.iv1015
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !11
  %i.kx = sext i8 %i.kw to i32
  %i.ky = add i32 %i.ku, -48
  %i.kz = add i32 %i.ky, %i.kx
  %i.la = mul i32 %i.kz, 10
  %i.lb = getelementptr i8, ptr %.1430, i64 %indvars.iv1015
  %i.lc = getelementptr i8, ptr %i.lb, i64 1
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !11
  %i.le = sext i8 %i.ld to i32
  %i.lf = add i32 %i.la, -48
  %i.lg = add i32 %i.lf, %i.le
  %i.lh = mul i32 %i.lg, 10
  %i.li = getelementptr i8, ptr %.1430, i64 %indvars.iv1015
  %i.lj = getelementptr i8, ptr %i.li, i64 2
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !11
  %i.ll = sext i8 %i.lk to i32
  %i.lm = add i32 %i.lh, -48
  %i.ln = add i32 %i.lm, %i.ll
  %i.lo = mul i32 %i.ln, 10
  %i.lp = getelementptr i8, ptr %.1430, i64 %indvars.iv1015
  %i.lq = getelementptr i8, ptr %i.lp, i64 3
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !11
  %i.ls = sext i8 %i.lr to i32
  %i.lt = add i32 %i.lo, -48
  %i.lu = add i32 %i.lt, %i.ls                    ; 3 uses
  %indvars.iv.next1016.3 = add nuw nsw i64 %indvars.iv1015, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph891, !llvm.loop !36

.lr.ph896:                                        ; preds = %.lr.ph896.prol.loopexit, %.lr.ph896
  %indvars.iv1019 = phi i64 [ %indvars.iv.next1020.3, %.lr.ph896 ], [ %indvars.iv1019.unr, %.lr.ph896.prol.loopexit ] ; 4 uses
  %.3419895 = phi i32 [ %i.mv, %.lr.ph896 ], [ %.3419895.unr, %.lr.ph896.prol.loopexit ]
  %i.lv = mul i32 %.3419895, 10
  %i.lw = getelementptr i8, ptr %.1430, i64 %indvars.iv1019
  %i.lx = getelementptr i8, ptr %i.lw, i64 1
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !11
  %i.lz = sext i8 %i.ly to i32
  %i.ma = add i32 %i.lv, -48
  %i.mb = add i32 %i.ma, %i.lz
  %i.mc = mul i32 %i.mb, 10
  %i.md = getelementptr i8, ptr %.1430, i64 %indvars.iv1019
  %i.me = getelementptr i8, ptr %i.md, i64 2
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !11
  %i.mg = sext i8 %i.mf to i32
  %i.mh = add i32 %i.mc, -48
  %i.mi = add i32 %i.mh, %i.mg
  %i.mj = mul i32 %i.mi, 10
  %i.mk = getelementptr i8, ptr %.1430, i64 %indvars.iv1019
  %i.ml = getelementptr i8, ptr %i.mk, i64 3
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !11
  %i.mn = sext i8 %i.mm to i32
  %i.mo = add i32 %i.mj, -48
  %i.mp = add i32 %i.mo, %i.mn
  %i.mq = mul i32 %i.mp, 10
  %indvars.iv.next1020.3 = add nuw nsw i64 %indvars.iv1019, 4 ; 3 uses
  %i.mr = getelementptr i8, ptr %.1430, i64 %indvars.iv.next1020.3
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !11
  %i.mt = sext i8 %i.ms to i32
  %i.mu = add i32 %i.mq, -48
  %i.mv = add i32 %i.mu, %i.mt                    ; 2 uses
  %exitcond1023.not.3 = icmp eq i64 %indvars.iv.next1020.3, %wide.trip.count1022
  br i1 %exitcond1023.not.3, label %._crit_edge.thread.i, label %.lr.ph896, !llvm.loop !37

.loopexit733:                                     ; preds = %.thread1122, %bb.bj
  %.3473 = phi i32 [ %i.ev, %bb.bj ], [ %i.jy, %.thread1122 ] ; 3 uses
  %.0448 = phi i32 [ %.0454.lcssa11081118, %bb.bj ], [ %.3457.lcssa.ph, %.thread1122 ] ; 5 uses
  %.3447 = phi i32 [ %spec.select56811111116, %bb.bj ], [ %spec.select5691124, %.thread1122 ] ; 3 uses
  %4 = trunc i32 %.0448 to i8
  %.lhs.trunc = add i8 %4, 8
  %5 = udiv i8 %.lhs.trunc, 9
  %.zext = zext nneg i8 %5 to i32
  %i.mw = icmp sgt i32 %.0448, 9
  br i1 %i.mw, label %.lr.ph.i, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %.lr.ph896.prol.loopexit, %.lr.ph896, %.preheader, %.loopexit733
  %.44201148 = phi i32 [ %.0416.lcssa1120, %.loopexit733 ], [ %.2418.lcssa, %.preheader ], [ %.lcssa1485.unr, %.lr.ph896.prol.loopexit ], [ %i.mv, %.lr.ph896 ]
  %.34471143 = phi i32 [ %.3447, %.loopexit733 ], [ %spec.select569, %.preheader ], [ %spec.select569, %.lr.ph896 ], [ %spec.select569, %.lr.ph896.prol.loopexit ]
  %.04481138 = phi i32 [ %.0448, %.loopexit733 ], [ %.3457.lcssa, %.preheader ], [ %.3457.lcssa, %.lr.ph896 ], [ %.3457.lcssa, %.lr.ph896.prol.loopexit ]
  %.34731133 = phi i32 [ %.3473, %.loopexit733 ], [ %i.ka, %.preheader ], [ %i.ka, %.lr.ph896 ], [ %i.ka, %.lr.ph896.prol.loopexit ]
  %i.mx = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  br label %bb.bk

.lr.ph.i:                                         ; preds = %.loopexit733, %.lr.ph.i
  %.044.i = phi i32 [ %i.my, %.lr.ph.i ], [ 1, %.loopexit733 ]
  %.02843.i = phi i32 [ %i.mz, %.lr.ph.i ], [ 0, %.loopexit733 ]
  %i.my = shl i32 %.044.i, 1                      ; 2 uses
  %i.mz = add i32 %.02843.i, 1                    ; 5 uses
  %6 = icmp slt i32 %i.my, %.zext
  br i1 %6, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !38

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.na = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.nb = icmp slt i32 %i.mz, 8
  br i1 %i.nb, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.44201147 = phi i32 [ %.44201148, %._crit_edge.thread.i ], [ %.0416.lcssa1120, %._crit_edge.i ] ; 3 uses
  %.34471142 = phi i32 [ %.34471143, %._crit_edge.thread.i ], [ %.3447, %._crit_edge.i ] ; 3 uses
  %.04481137 = phi i32 [ %.04481138, %._crit_edge.thread.i ], [ %.0448, %._crit_edge.i ] ; 3 uses
  %.34731132 = phi i32 [ %.34731133, %._crit_edge.thread.i ], [ %.3473, %._crit_edge.i ] ; 3 uses
  %.in.i = phi ptr [ %i.mx, %._crit_edge.thread.i ], [ %i.na, %._crit_edge.i ]
  %.028.lcssa76.i = phi i32 [ 0, %._crit_edge.thread.i ], [ %i.mz, %._crit_edge.i ] ; 4 uses
  %i.nc = load ptr, ptr %.in.i, align 8, !tbaa !39 ; 3 uses
  %i.nd = getelementptr i8, ptr %i.nc, i64 11960
  %i.ne = sext i32 %.028.lcssa76.i to i64
  %i.nf = getelementptr [8 x i8], ptr %i.nd, i64 %i.ne ; 2 uses
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !41 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ng, null
  br i1 %.not.i.i, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !43
  store ptr %i.nh, ptr %i.nf, align 8, !tbaa !41
  br label %bb.br

bb.bm:                                            ; preds = %._crit_edge.i
  %i.ni = shl nuw i32 1, %i.mz                    ; 2 uses
  %i.nj = add i32 %i.ni, -1
  %i.nk = zext nneg i32 %i.nj to i64
  %i.nl = shl nuw nsw i64 %i.nk, 2
  %i.nm = add nuw nsw i64 %i.nl, 36
  br label %bb.bp

bb.bn:                                            ; preds = %bb.bk
  %i.nn = shl nuw nsw i32 1, %.028.lcssa76.i      ; 3 uses
  %i.no = add nsw i32 %i.nn, -1
  %i.np = zext nneg i32 %i.no to i64
  %i.nq = shl nuw nsw i64 %i.np, 2
  %i.nr = add nuw nsw i64 %i.nq, 36               ; 2 uses
  %i.ns = lshr i64 %i.nr, 3                       ; 2 uses
  %i.nt = getelementptr i8, ptr %i.nc, i64 14328  ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !45 ; 3 uses
  %i.nv = getelementptr i8, ptr %i.nc, i64 12024
  %i.nw = ptrtoint ptr %i.nu to i64
  %i.nx = ptrtoint ptr %i.nv to i64
  %i.ny = sub i64 %i.nw, %i.nx
  %i.nz = ashr exact i64 %i.ny, 3
  %i.oa = add nsw i64 %i.nz, %i.ns
  %i.ob = icmp slt i64 %i.oa, 289
  br i1 %i.ob, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.oc = getelementptr [8 x i8], ptr %i.nu, i64 %i.ns
  store ptr %i.oc, ptr %i.nt, align 8, !tbaa !45
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn, %bb.bm
  %.44201146 = phi i32 [ %.44201147, %bb.bn ], [ %.0416.lcssa1120, %bb.bm ]
  %.34471141 = phi i32 [ %.34471142, %bb.bn ], [ %.3447, %bb.bm ]
  %.04481136 = phi i32 [ %.04481137, %bb.bn ], [ %.0448, %bb.bm ]
  %.34731131 = phi i32 [ %.34731132, %bb.bn ], [ %.3473, %bb.bm ]
  %.028.lcssa75.i = phi i32 [ %.028.lcssa76.i, %bb.bn ], [ %i.mz, %bb.bm ]
  %i.od = phi i64 [ %i.nr, %bb.bn ], [ %i.nm, %bb.bm ]
  %i.oe = phi i32 [ %i.nn, %bb.bn ], [ %i.ni, %bb.bm ]
  %i.of = and i64 %i.od, 34359738360
  %i.og = tail call ptr @PyMem_Malloc(i64 noundef %i.of) #11 ; 2 uses
  %i.oh = icmp eq ptr %i.og, null
  br i1 %i.oh, label %s2b.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.44201145 = phi i32 [ %.44201147, %bb.bo ], [ %.44201146, %bb.bp ]
  %.34471140 = phi i32 [ %.34471142, %bb.bo ], [ %.34471141, %bb.bp ]
  %.04481135 = phi i32 [ %.04481137, %bb.bo ], [ %.04481136, %bb.bp ]
  %.34731130 = phi i32 [ %.34731132, %bb.bo ], [ %.34731131, %bb.bp ]
  %.028.lcssa74.i = phi i32 [ %.028.lcssa76.i, %bb.bo ], [ %.028.lcssa75.i, %bb.bp ]
  %i.oi = phi i32 [ %i.nn, %bb.bo ], [ %i.oe, %bb.bp ]
  %.024.i.i = phi ptr [ %i.nu, %bb.bo ], [ %i.og, %bb.bp ] ; 3 uses
  %i.oj = getelementptr i8, ptr %.024.i.i, i64 8
  store i32 %.028.lcssa74.i, ptr %i.oj, align 8, !tbaa !134
  %i.ok = getelementptr i8, ptr %.024.i.i, i64 12
  store i32 %i.oi, ptr %i.ok, align 4, !tbaa !135
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bl
  %.44201144 = phi i32 [ %.44201147, %bb.bl ], [ %.44201145, %bb.bq ]
  %.34471139 = phi i32 [ %.34471142, %bb.bl ], [ %.34471140, %bb.bq ] ; 3 uses
  %.04481134 = phi i32 [ %.04481137, %bb.bl ], [ %.04481135, %bb.bq ] ; 9 uses
  %.34731129 = phi i32 [ %.34731132, %bb.bl ], [ %.34731130, %bb.bq ] ; 3 uses
  %.1.i.i = phi ptr [ %i.ng, %bb.bl ], [ %.024.i.i, %bb.bq ] ; 6 uses
  %i.ol = getelementptr i8, ptr %.1.i.i, i64 20
  %i.om = getelementptr i8, ptr %.1.i.i, i64 16
  store i32 0, ptr %i.om, align 8, !tbaa !136
  %i.on = getelementptr i8, ptr %.1.i.i, i64 24
  store i32 %.44201144, ptr %i.on, align 8, !tbaa !7
  store i32 1, ptr %i.ol, align 4, !tbaa !137
  %i.oo = icmp slt i32 %.04481134, 10
  br i1 %i.oo, label %s2b.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.op = getelementptr i8, ptr %.1430, i64 9     ; 2 uses
  %i.oq = icmp sgt i32 %.34471139, 9
  br i1 %i.oq, label %.lr.ph49.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bt, %bb.bs
  %.032.lcssa.i = phi ptr [ %i.op, %bb.bs ], [ %i.ox, %bb.bt ]
  %.030.lcssa.i = phi ptr [ %.1.i.i, %bb.bs ], [ %i.ov, %bb.bt ] ; 2 uses
  %.029.lcssa.i = phi i32 [ 9, %bb.bs ], [ %.34471139, %bb.bt ] ; 2 uses
  %i.or = icmp slt i32 %.029.lcssa.i, %.04481134
  br i1 %i.or, label %.lr.ph57.i, label %s2b.exit

.lr.ph49.i:                                       ; preds = %bb.bs, %bb.bt
  %.02947.i = phi i32 [ %i.oy, %bb.bt ], [ 9, %bb.bs ]
  %.03046.i = phi ptr [ %i.ov, %bb.bt ], [ %.1.i.i, %bb.bs ]
  %.03245.i = phi ptr [ %i.ox, %bb.bt ], [ %i.op, %bb.bs ] ; 2 uses
  %i.os = load i8, ptr %.03245.i, align 1, !tbaa !11
  %i.ot = sext i8 %i.os to i32
  %i.ou = add nsw i32 %i.ot, -48
  %i.ov = tail call fastcc ptr @multadd(ptr noundef nonnull %.03046.i, i32 noundef 10, i32 noundef %i.ou) ; 3 uses
  %i.ow = icmp eq ptr %i.ov, null
  br i1 %i.ow, label %s2b.exit.thread, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph49.i
  %i.ox = getelementptr i8, ptr %.03245.i, i64 1  ; 2 uses
  %i.oy = add nuw nsw i32 %.02947.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.oy, %.34471139
  br i1 %exitcond.not.i, label %.preheader.i, label %.lr.ph49.i, !llvm.loop !138

bb.bu:                                            ; preds = %.lr.ph57.i
  %i.oz = add nuw nsw i32 %.155.i, 1              ; 2 uses
  %exitcond65.not.i = icmp eq i32 %i.oz, %.04481134
  br i1 %exitcond65.not.i, label %s2b.exit, label %.lr.ph57.i, !llvm.loop !139

.lr.ph57.i:                                       ; preds = %.preheader.i, %bb.bu
  %.032.pn.pn.i = phi ptr [ %.13356.i, %bb.bu ], [ %.032.lcssa.i, %.preheader.i ]
  %.155.i = phi i32 [ %i.oz, %bb.bu ], [ %.029.lcssa.i, %.preheader.i ]
  %.13154.i = phi ptr [ %i.pd, %bb.bu ], [ %.030.lcssa.i, %.preheader.i ]
  %.13356.i = getelementptr i8, ptr %.032.pn.pn.i, i64 1 ; 2 uses
  %i.pa = load i8, ptr %.13356.i, align 1, !tbaa !11
  %i.pb = sext i8 %i.pa to i32
  %i.pc = add nsw i32 %i.pb, -48
  %i.pd = tail call fastcc ptr @multadd(ptr noundef nonnull %.13154.i, i32 noundef 10, i32 noundef %i.pc) ; 3 uses
  %i.pe = icmp eq ptr %i.pd, null
  br i1 %i.pe, label %s2b.exit.thread, label %bb.bu

s2b.exit:                                         ; preds = %bb.bu, %bb.br, %.preheader.i
  %.027.i = phi ptr [ %.030.lcssa.i, %.preheader.i ], [ %.1.i.i, %bb.br ], [ %i.pd, %bb.bu ] ; 25 uses
  %i.pf = getelementptr i8, ptr %.027.i, i64 8
  %i.pg = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp) ; 11 uses
  %i.ph = getelementptr i8, ptr %.027.i, i64 16
  %i.pi = getelementptr i8, ptr %.027.i, i64 20
  %i.pj = icmp sgt i32 %.34731129, -1             ; 2 uses
  %i.pk = sub i32 0, %.34731129
  %.0465 = select i1 %i.pj, i32 %.34731129, i32 0 ; 4 uses
  %.0441 = select i1 %i.pj, i32 0, i32 %i.pk      ; 4 uses
  %i.pl = icmp sgt i32 %.0441, 0
  %i.pm = and i32 %.0441, 3                       ; 2 uses
  %.not.i588 = icmp eq i32 %i.pm, 0
  %i.pn = zext nneg i32 %i.pm to i64
  %i.po = getelementptr [4 x i8], ptr @pow5mult.p05, i64 %i.pn
  %i.pp = getelementptr i8, ptr %i.po, i64 -4
  %i.pq = lshr i32 %.0441, 2                      ; 2 uses
  %.not26.i = icmp eq i32 %i.pq, 0
  %i.pr = icmp sgt i32 %.0465, 0
  %i.ps = and i32 %.0465, 3                       ; 2 uses
  %.not.i592 = icmp eq i32 %i.ps, 0
  %i.pt = zext nneg i32 %i.ps to i64
  %i.pu = getelementptr [4 x i8], ptr @pow5mult.p05, i64 %i.pt
  %i.pv = getelementptr i8, ptr %i.pu, i64 -4
  %i.pw = lshr i32 %.0465, 2                      ; 2 uses
  %.not26.i594 = icmp eq i32 %i.pw, 0
  %i.px = icmp sgt i32 %.0454.lcssa11081118, %.04481134 ; 3 uses
  %i.py = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 11 uses
  %i.pz = icmp ne i32 %i.ht, 0                    ; 4 uses
  %i.qa = icmp eq i32 %.0454.lcssa11081118, %.04481134
  %i.qb = icmp eq i32 %i.ht, 0                    ; 4 uses
  %or.cond33.not723 = and i1 %i.qb, %i.qa
  br label %Bfree.exit643

Bfree.exit643:                                    ; preds = %Bfree.exit643.backedge, %s2b.exit
  %i.qc = load i32, ptr %i.pf, align 8, !tbaa !134 ; 5 uses
  %i.qd = load ptr, ptr %i.pg, align 8, !tbaa !39 ; 3 uses
  %i.qe = icmp slt i32 %i.qc, 8
  br i1 %i.qe, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %Bfree.exit643
  %i.qf = getelementptr i8, ptr %i.qd, i64 11960
  %i.qg = sext i32 %i.qc to i64
  %i.qh = getelementptr [8 x i8], ptr %i.qf, i64 %i.qg ; 2 uses
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !41 ; 3 uses
  %.not.i = icmp eq ptr %i.qi, null
  br i1 %.not.i, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !43
  store ptr %i.qj, ptr %i.qh, align 8, !tbaa !41
  br label %bb.cc

bb.bx:                                            ; preds = %Bfree.exit643
end_hunk_0
