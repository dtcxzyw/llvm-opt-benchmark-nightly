inline.NumInlined: 62
inline.NumDeleted: 31
begin_hunk_0_@deflate_precompute_huffman_header:bb.a
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !20
  %.not39.10 = icmp eq i8 %i.ck, 0
  br i1 %.not39.10, label %bb.aq, label %bb.bk

bb.aq:                                            ; preds = %bb.ap
  store i32 21, ptr %i.bn, align 8, !tbaa !20
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 2988
  %i.cm = load i8, ptr %i.cl, align 4, !tbaa !20
  %.not39.11 = icmp eq i8 %i.cm, 0
  br i1 %.not39.11, label %bb.ar, label %bb.bk

bb.ar:                                            ; preds = %bb.aq
  store i32 20, ptr %i.bn, align 8, !tbaa !20
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 2987
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !20
  %.not39.12 = icmp eq i8 %i.co, 0
  br i1 %.not39.12, label %bb.as, label %bb.bk

bb.as:                                            ; preds = %bb.ar
  store i32 19, ptr %i.bn, align 8, !tbaa !20
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 2986
  %i.cq = load i8, ptr %i.cp, align 2, !tbaa !20
  %.not39.13 = icmp eq i8 %i.cq, 0
  br i1 %.not39.13, label %bb.at, label %bb.bk

bb.at:                                            ; preds = %bb.as
  store i32 18, ptr %i.bn, align 8, !tbaa !20
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 2985
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !20
  %.not39.14 = icmp eq i8 %i.cs, 0
  br i1 %.not39.14, label %bb.au, label %bb.bk

bb.au:                                            ; preds = %bb.at
  store i32 17, ptr %i.bn, align 8, !tbaa !20
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 2984
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !20
  %.not39.15 = icmp eq i8 %i.cu, 0
  br i1 %.not39.15, label %bb.av, label %bb.bk

bb.av:                                            ; preds = %bb.au
  store i32 16, ptr %i.bn, align 8, !tbaa !20
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 2983
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !20
  %.not39.16 = icmp eq i8 %i.cw, 0
  br i1 %.not39.16, label %bb.aw, label %bb.bk

bb.aw:                                            ; preds = %bb.av
  store i32 15, ptr %i.bn, align 8, !tbaa !20
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 2982
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !20
  %.not39.17 = icmp eq i8 %i.cy, 0
  br i1 %.not39.17, label %bb.ax, label %bb.bk

bb.ax:                                            ; preds = %bb.aw
  store i32 14, ptr %i.bn, align 8, !tbaa !20
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 2981
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !20
  %.not39.18 = icmp eq i8 %i.da, 0
  br i1 %.not39.18, label %bb.ay, label %bb.bk

bb.ay:                                            ; preds = %bb.ax
  store i32 13, ptr %i.bn, align 8, !tbaa !20
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 2980
  %i.dc = load i8, ptr %i.db, align 4, !tbaa !20
  %.not39.19 = icmp eq i8 %i.dc, 0
  br i1 %.not39.19, label %bb.az, label %bb.bk

bb.az:                                            ; preds = %bb.ay
  store i32 12, ptr %i.bn, align 8, !tbaa !20
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 2979
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !20
  %.not39.20 = icmp eq i8 %i.de, 0
  br i1 %.not39.20, label %bb.ba, label %bb.bk

bb.ba:                                            ; preds = %bb.az
  store i32 11, ptr %i.bn, align 8, !tbaa !20
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 2978
  %i.dg = load i8, ptr %i.df, align 2, !tbaa !20
  %.not39.21 = icmp eq i8 %i.dg, 0
  br i1 %.not39.21, label %bb.bb, label %bb.bk

bb.bb:                                            ; preds = %bb.ba
  store i32 10, ptr %i.bn, align 8, !tbaa !20
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 2977
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !20
  %.not39.22 = icmp eq i8 %i.di, 0
  br i1 %.not39.22, label %bb.bc, label %bb.bk

bb.bc:                                            ; preds = %bb.bb
  store i32 9, ptr %i.bn, align 8, !tbaa !20
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 2976
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !20
  %.not39.23 = icmp eq i8 %i.dk, 0
  br i1 %.not39.23, label %bb.bd, label %bb.bk

bb.bd:                                            ; preds = %bb.bc
  store i32 8, ptr %i.bn, align 8, !tbaa !20
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 2975
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !20
  %.not39.24 = icmp eq i8 %i.dm, 0
  br i1 %.not39.24, label %bb.be, label %bb.bk

bb.be:                                            ; preds = %bb.bd
  store i32 7, ptr %i.bn, align 8, !tbaa !20
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 2974
  %i.do = load i8, ptr %i.dn, align 2, !tbaa !20
  %.not39.25 = icmp eq i8 %i.do, 0
  br i1 %.not39.25, label %bb.bf, label %bb.bk

bb.bf:                                            ; preds = %bb.be
  store i32 6, ptr %i.bn, align 8, !tbaa !20
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 2973
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !20
  %.not39.26 = icmp eq i8 %i.dq, 0
  br i1 %.not39.26, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  store i32 5, ptr %i.bn, align 8, !tbaa !20
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 2972
  %i.ds = load i8, ptr %i.dr, align 4, !tbaa !20
  %.not39.27 = icmp eq i8 %i.ds, 0
  br i1 %.not39.27, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  store i32 4, ptr %i.bn, align 8, !tbaa !20
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 2971
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !20
  %.not39.28 = icmp eq i8 %i.du, 0
  br i1 %.not39.28, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  store i32 3, ptr %i.bn, align 8, !tbaa !20
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 2970
  %i.dw = load i8, ptr %i.dv, align 2, !tbaa !20
  %.not39.29 = icmp eq i8 %i.dw, 0
  br i1 %.not39.29, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store i32 2, ptr %i.bn, align 8, !tbaa !20
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 2969
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !20
  %.not39.30 = icmp eq i8 %i.dy, 0                ; 2 uses
  %spec.store.select68 = select i1 %.not39.30, i32 1, i32 2
  store i32 %spec.store.select68, ptr %i.bn, align 8
  %spec.select69 = select i1 %.not39.30, i32 1, i32 2
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %storemerge38.lcssa = phi i32 [ 32, %bb.af ], [ 9, %bb.bc ], [ 17, %bb.au ], [ 31, %bb.ag ], [ %spec.select69, %bb.bj ], [ 30, %bb.ah ], [ 16, %bb.av ], [ 29, %bb.ai ], [ 3, %bb.bi ], [ 28, %bb.aj ], [ 11, %bb.ba ], [ 27, %bb.ak ], [ 4, %bb.bh ], [ 26, %bb.al ], [ 15, %bb.aw ], [ 25, %bb.am ], [ 5, %bb.bg ], [ 24, %bb.an ], [ 10, %bb.bb ], [ 23, %bb.ao ], [ 6, %bb.bf ], [ 22, %bb.ap ], [ 14, %bb.ax ], [ 21, %bb.aq ], [ 7, %bb.be ], [ 20, %bb.ar ], [ 12, %bb.az ], [ 19, %bb.as ], [ 8, %bb.bd ], [ 18, %bb.at ], [ 13, %bb.ay ] ; 2 uses
  br i1 %.not.not, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.dz = zext nneg i32 %storemerge.lcssa to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dz
  %i.eb = zext nneg i32 %storemerge38.lcssa to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ea, ptr noundef nonnull align 8 dereferenceable(1) %i.bo, i64 %i.eb, i1 false)
  %.pre = load i32, ptr %i.b, align 4, !tbaa !20
  %.pre57 = load i32, ptr %i.bn, align 8, !tbaa !20
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.ec = phi i32 [ %.pre57, %bb.bl ], [ %storemerge38.lcssa, %bb.bk ]
  %i.ed = phi i32 [ %.pre, %bb.bl ], [ %storemerge.lcssa, %bb.bk ]
  %i.ee = add i32 %i.ec, %i.ed                    ; 6 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 4772 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %i.a, i8 0, i64 76, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 4664 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 4672 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 4668 ; 2 uses
  %i.ej = add i32 %i.ee, -1                       ; 2 uses
  br label %bb.bn

bb.bn:                                            ; preds = %._crit_edge86.i, %bb.bm
  %.063.i = phi i32 [ 0, %bb.bm ], [ %.467.lcssa.i, %._crit_edge86.i ] ; 8 uses
  %.0.i = phi ptr [ %i.ef, %bb.bm ], [ %.4.lcssa.i, %._crit_edge86.i ] ; 5 uses
  %i.ek = zext i32 %.063.i to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !20  ; 5 uses
  %i.en = add i32 %.063.i, 1                      ; 2 uses
  %.not.i76 = icmp eq i32 %i.en, %i.ee
  br i1 %.not.i76, label %.critedge.i, label %.lr.ph

bb.bo:                                            ; preds = %.lr.ph
  %i.eo = add i32 %i.ep, 1                        ; 2 uses
  %.not.i = icmp eq i32 %i.eo, %i.ee
  br i1 %.not.i, label %.critedge.i, label %.lr.ph, !llvm.loop !124

.lr.ph:                                           ; preds = %bb.bn, %bb.bo
  %i.ep = phi i32 [ %i.eo, %bb.bo ], [ %i.en, %bb.bn ] ; 4 uses
  %.062.i77 = phi i32 [ %i.ep, %bb.bo ], [ %.063.i, %bb.bn ]
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !20
  %i.et = icmp eq i8 %i.em, %i.es
  br i1 %i.et, label %bb.bo, label %..critedge.i_crit_edge, !llvm.loop !124

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !124

.critedge.i:                                      ; preds = %bb.bo, %..critedge.i_crit_edge, %bb.bn
  %.062.lcssa.i = phi i32 [ %i.ej, %bb.bn ], [ %.062.i77, %..critedge.i_crit_edge ], [ %i.ej, %bb.bo ] ; 4 uses
  %.lcssa.i = phi i32 [ %i.ee, %bb.bn ], [ %i.ep, %..critedge.i_crit_edge ], [ %i.ee, %bb.bo ] ; 7 uses
  %i.eu = zext i8 %i.em to i32                    ; 6 uses
  %i.ev = icmp eq i8 %i.em, 0
  %i.ew = sub i32 %.lcssa.i, %.063.i              ; 4 uses
  br i1 %i.ev, label %.preheader.i, label %bb.bp

.preheader.i:                                     ; preds = %.critedge.i
  %i.ex = icmp ugt i32 %i.ew, 10
  br i1 %i.ex, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.ey = phi i32 [ %i.fh, %.lr.ph.i ], [ %i.ew, %.preheader.i ]
  %.178.i = phi ptr [ %i.fe, %.lr.ph.i ], [ %.0.i, %.preheader.i ] ; 2 uses
  %.16477.i = phi i32 [ %i.fg, %.lr.ph.i ], [ %.063.i, %.preheader.i ]
  %i.ez = add i32 %i.ey, -11                      ; 2 uses
  %1 = icmp ult i32 %i.ez, 128
  %2 = select i1 %1, i32 %i.ez, i32 127           ; 2 uses
  %i.fa = load i32, ptr %i.eh, align 4, !tbaa !3
  %i.fb = add i32 %i.fa, 1
  store i32 %i.fb, ptr %i.eh, align 4, !tbaa !3
  %i.fc = shl i32 %2, 5
  %i.fd = or disjoint i32 %i.fc, 18
  %i.fe = getelementptr inbounds nuw i8, ptr %.178.i, i64 4 ; 2 uses
  store i32 %i.fd, ptr %.178.i, align 4, !tbaa !3
  %i.ff = add i32 %.16477.i, 11
  %i.fg = add i32 %i.ff, %2                       ; 3 uses
  %i.fh = sub i32 %.lcssa.i, %i.fg                ; 3 uses
  %i.fi = icmp ugt i32 %i.fh, 10
  br i1 %i.fi, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !125

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.164.lcssa.i = phi i32 [ %.063.i, %.preheader.i ], [ %i.fg, %.lr.ph.i ]
  %.1.lcssa.i = phi ptr [ %.0.i, %.preheader.i ], [ %i.fe, %.lr.ph.i ] ; 3 uses
  %.lcssa76.i = phi i32 [ %i.ew, %.preheader.i ], [ %i.fh, %.lr.ph.i ] ; 2 uses
  %i.fj = icmp samesign ugt i32 %.lcssa76.i, 2
  br i1 %i.fj, label %.loopexit.thread.i, label %.loopexit.i

.loopexit.thread.i:                               ; preds = %._crit_edge.i
  %i.fk = load i32, ptr %i.ei, align 4, !tbaa !3
  %i.fl = add i32 %i.fk, 1
  store i32 %i.fl, ptr %i.ei, align 4, !tbaa !3
  %i.fm = shl nuw nsw i32 %.lcssa76.i, 5
  %i.fn = add nsw i32 %i.fm, -79
  %i.fo = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 4
  store i32 %i.fn, ptr %.1.lcssa.i, align 4, !tbaa !3
  br label %._crit_edge86.i

bb.bp:                                            ; preds = %.critedge.i
  %i.fp = icmp ugt i32 %i.ew, 3
  br i1 %i.fp, label %bb.bq, label %.loopexit.i

bb.bq:                                            ; preds = %bb.bp
  %i.fq = zext i8 %i.em to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fq ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !3
  %i.ft = add i32 %i.fs, 1
  store i32 %i.ft, ptr %i.fr, align 4, !tbaa !3
  %i.fu = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  store i32 %i.eu, ptr %.0.i, align 4, !tbaa !3
  %i.fv = add i32 %.063.i, 1
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %bb.bq
  %.265.i = phi i32 [ %i.fv, %bb.bq ], [ %i.gd, %bb.br ] ; 2 uses
  %.2.i = phi ptr [ %i.fu, %bb.bq ], [ %i.gb, %bb.br ] ; 2 uses
  %i.fw = sub i32 %.lcssa.i, %.265.i
  %3 = add i32 %i.fw, -3                          ; 2 uses
  %4 = icmp ult i32 %3, 4
  %5 = select i1 %4, i32 %3, i32 3                ; 2 uses
  %i.fx = load i32, ptr %i.eg, align 4, !tbaa !3
  %i.fy = add i32 %i.fx, 1
  store i32 %i.fy, ptr %i.eg, align 4, !tbaa !3
  %i.fz = shl i32 %5, 5
  %i.ga = or disjoint i32 %i.fz, 16
  %i.gb = getelementptr inbounds nuw i8, ptr %.2.i, i64 4 ; 2 uses
  store i32 %i.ga, ptr %.2.i, align 4, !tbaa !3
  %i.gc = add i32 %.265.i, 3
  %i.gd = add i32 %i.gc, %5                       ; 3 uses
  %i.ge = sub i32 %.lcssa.i, %i.gd
  %i.gf = icmp ugt i32 %i.ge, 2
  br i1 %i.gf, label %bb.br, label %.loopexit.i, !llvm.loop !126

.loopexit.i:                                      ; preds = %bb.br, %bb.bp, %._crit_edge.i
  %.366.i = phi i32 [ %.063.i, %bb.bp ], [ %.164.lcssa.i, %._crit_edge.i ], [ %i.gd, %bb.br ] ; 5 uses
  %.3.i = phi ptr [ %.0.i, %bb.bp ], [ %.1.lcssa.i, %._crit_edge.i ], [ %i.gb, %bb.br ] ; 3 uses
  %.not7281.i = icmp eq i32 %.366.i, %.lcssa.i
  br i1 %.not7281.i, label %._crit_edge86.i, label %.lr.ph85.i

.lr.ph85.i:                                       ; preds = %.loopexit.i
  %i.gg = zext i8 %i.em to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gg ; 10 uses
  %i.gi = add i32 %.062.lcssa.i, 1
  %i.gj = sub i32 %i.gi, %.366.i
  %i.gk = sub i32 %.062.lcssa.i, %.366.i
  %xtraiter = and i32 %i.gj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph85.i, %.prol.preheader
  %.483.i.prol = phi ptr [ %i.gn, %.prol.preheader ], [ %.3.i, %.lr.ph85.i ] ; 2 uses
  %.46782.i.prol = phi i32 [ %i.go, %.prol.preheader ], [ %.366.i, %.lr.ph85.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph85.i ]
  %i.gl = load i32, ptr %i.gh, align 4, !tbaa !3
  %i.gm = add i32 %i.gl, 1
  store i32 %i.gm, ptr %i.gh, align 4, !tbaa !3
  %i.gn = getelementptr inbounds nuw i8, ptr %.483.i.prol, i64 4 ; 3 uses
  store i32 %i.eu, ptr %.483.i.prol, align 4, !tbaa !3
  %i.go = add i32 %.46782.i.prol, 1               ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !127

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph85.i
  %.lcssa89.unr = phi ptr [ poison, %.lr.ph85.i ], [ %i.gn, %.prol.preheader ]
  %.483.i.unr = phi ptr [ %.3.i, %.lr.ph85.i ], [ %i.gn, %.prol.preheader ]
  %.46782.i.unr = phi i32 [ %.366.i, %.lr.ph85.i ], [ %i.go, %.prol.preheader ]
  %i.gp = icmp ult i32 %i.gk, 3
  br i1 %i.gp, label %._crit_edge86.loopexit.i, label %.lr.ph85.i.new

.lr.ph85.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph85.i.new
  %.483.i = phi ptr [ %i.hc, %.lr.ph85.i.new ], [ %.483.i.unr, %.prol.loopexit ] ; 5 uses
  %.46782.i = phi i32 [ %i.hd, %.lr.ph85.i.new ], [ %.46782.i.unr, %.prol.loopexit ] ; 2 uses
  %i.gq = load i32, ptr %i.gh, align 4, !tbaa !3
  %i.gr = add i32 %i.gq, 1
  store i32 %i.gr, ptr %i.gh, align 4, !tbaa !3
  %i.gs = getelementptr inbounds nuw i8, ptr %.483.i, i64 4
  store i32 %i.eu, ptr %.483.i, align 4, !tbaa !3
  %i.gt = load i32, ptr %i.gh, align 4, !tbaa !3
  %i.gu = add i32 %i.gt, 1
  store i32 %i.gu, ptr %i.gh, align 4, !tbaa !3
  %i.gv = getelementptr inbounds nuw i8, ptr %.483.i, i64 8
  store i32 %i.eu, ptr %i.gs, align 4, !tbaa !3
  %i.gw = load i32, ptr %i.gh, align 4, !tbaa !3
  %i.gx = add i32 %i.gw, 1
  store i32 %i.gx, ptr %i.gh, align 4, !tbaa !3
  %i.gy = getelementptr inbounds nuw i8, ptr %.483.i, i64 12
  store i32 %i.eu, ptr %i.gv, align 4, !tbaa !3
  %i.gz = add i32 %.46782.i, 3
  %i.ha = load i32, ptr %i.gh, align 4, !tbaa !3
  %i.hb = add i32 %i.ha, 1
  store i32 %i.hb, ptr %i.gh, align 4, !tbaa !3
  %i.hc = getelementptr inbounds nuw i8, ptr %.483.i, i64 16 ; 2 uses
  store i32 %i.eu, ptr %i.gy, align 4, !tbaa !3
  %i.hd = add i32 %.46782.i, 4
  %.not72.i.3 = icmp eq i32 %i.gz, %.062.lcssa.i
  br i1 %.not72.i.3, label %._crit_edge86.loopexit.i, label %.lr.ph85.i.new, !llvm.loop !128

._crit_edge86.loopexit.i:                         ; preds = %.lr.ph85.i.new, %.prol.loopexit
  %.lcssa89 = phi ptr [ %.lcssa89.unr, %.prol.loopexit ], [ %i.hc, %.lr.ph85.i.new ]
  %i.he = add i32 %.062.lcssa.i, 1
  br label %._crit_edge86.i

._crit_edge86.i:                                  ; preds = %._crit_edge86.loopexit.i, %.loopexit.i, %.loopexit.thread.i
  %.467.lcssa.i = phi i32 [ %.lcssa.i, %.loopexit.i ], [ %i.he, %._crit_edge86.loopexit.i ], [ %.lcssa.i, %.loopexit.thread.i ] ; 2 uses
  %.4.lcssa.i = phi ptr [ %.3.i, %.loopexit.i ], [ %.lcssa89, %._crit_edge86.loopexit.i ], [ %i.fo, %.loopexit.thread.i ] ; 2 uses
  %.not73.i = icmp eq i32 %.467.lcssa.i, %i.ee
  br i1 %.not73.i, label %deflate_compute_precode_items.exit, label %bb.bn, !llvm.loop !129

deflate_compute_precode_items.exit:               ; preds = %._crit_edge86.i
  %i.hf = ptrtoint ptr %.4.lcssa.i to i64
  %i.hg = ptrtoint ptr %i.ef to i64
  %i.hh = sub i64 %i.hf, %i.hg
  %i.hi = lshr exact i64 %i.hh, 2
  %i.hj = trunc i64 %i.hi to i32
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 6064
  store i32 %i.hj, ptr %i.hk, align 8, !tbaa !20
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 4752
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 4676
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 19, i32 noundef 7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.hl, ptr noundef nonnull %i.hm)
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 6060
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 4767
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !20
  %.not42 = icmp eq i8 %i.hp, 0
  br i1 %.not42, label %bb.bs, label %bb.cg

bb.bs:                                            ; preds = %deflate_compute_precode_items.exit
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 4753
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !20
  %.not42.1 = icmp eq i8 %i.hr, 0
  br i1 %.not42.1, label %bb.bt, label %bb.cg

bb.bt:                                            ; preds = %bb.bs
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 4766
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !20
  %.not42.2 = icmp eq i8 %i.ht, 0
  br i1 %.not42.2, label %bb.bu, label %bb.cg

bb.bu:                                            ; preds = %bb.bt
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 4754
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !20
  %.not42.3 = icmp eq i8 %i.hv, 0
  br i1 %.not42.3, label %bb.bv, label %bb.cg

bb.bv:                                            ; preds = %bb.bu
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 4765
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !20
  %.not42.4 = icmp eq i8 %i.hx, 0
  br i1 %.not42.4, label %bb.bw, label %bb.cg

bb.bw:                                            ; preds = %bb.bv
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 4755
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !20
  %.not42.5 = icmp eq i8 %i.hz, 0
  br i1 %.not42.5, label %bb.bx, label %bb.cg

bb.bx:                                            ; preds = %bb.bw
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 4764
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !20
  %.not42.6 = icmp eq i8 %i.ib, 0
  br i1 %.not42.6, label %bb.by, label %bb.cg

bb.by:                                            ; preds = %bb.bx
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 4756
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !20
  %.not42.7 = icmp eq i8 %i.id, 0
  br i1 %.not42.7, label %bb.bz, label %bb.cg

bb.bz:                                            ; preds = %bb.by
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 4763
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !20
  %.not42.8 = icmp eq i8 %i.if, 0
  br i1 %.not42.8, label %bb.ca, label %bb.cg

bb.ca:                                            ; preds = %bb.bz
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 4757
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !20
  %.not42.9 = icmp eq i8 %i.ih, 0
  br i1 %.not42.9, label %bb.cb, label %bb.cg

bb.cb:                                            ; preds = %bb.ca
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 4762
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !20
  %.not42.10 = icmp eq i8 %i.ij, 0
  br i1 %.not42.10, label %bb.cc, label %bb.cg

bb.cc:                                            ; preds = %bb.cb
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 4758
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !20
  %.not42.11 = icmp eq i8 %i.il, 0
  br i1 %.not42.11, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 4761
  %i.in = load i8, ptr %i.im, align 1, !tbaa !20
  %.not42.12 = icmp eq i8 %i.in, 0
  br i1 %.not42.12, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 4759
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !20
  %.not42.13 = icmp eq i8 %i.ip, 0
  br i1 %.not42.13, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 4760
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !20
  %.not42.14 = icmp eq i8 %i.ir, 0
  %spec.select70 = select i1 %.not42.14, i32 4, i32 5
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %deflate_compute_precode_items.exit
  %storemerge41.lcssa = phi i32 [ 19, %deflate_compute_precode_items.exit ], [ 8, %bb.cc ], [ 12, %bb.by ], [ 18, %bb.bs ], [ %spec.select70, %bb.cf ], [ 17, %bb.bt ], [ 11, %bb.bz ], [ 16, %bb.bu ], [ 6, %bb.ce ], [ 15, %bb.bv ], [ 9, %bb.cb ], [ 14, %bb.bw ], [ 7, %bb.cd ], [ 13, %bb.bx ], [ 10, %bb.ca ]
  store i32 %storemerge41.lcssa, ptr %i.hn, align 4, !tbaa !20
  %i.is = load i32, ptr %i.b, align 4, !tbaa !20  ; 2 uses
  %.not43 = icmp eq i32 %i.is, 288
  br i1 %.not43, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.it = zext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.it
  %i.iv = load i32, ptr %i.bn, align 8, !tbaa !20
  %i.iw = zext i32 %i.iv to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bo, ptr nonnull align 1 %i.iu, i64 %i.iw, i1 false)
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  ret void
}
end_hunk_0
begin_hunk_1_@do_end_block_check:bb.a
  %i.t = shufflevector <4 x i32> %i.l, <4 x i32> %i.p, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.u = shufflevector <8 x i32> %i.s, <8 x i32> %i.t, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.v = load <2 x i32>, ptr %0, align 4, !tbaa !3
  %i.w = shufflevector <2 x i32> %i.v, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.x = shufflevector <4 x i32> %i.m, <4 x i32> %i.q, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.y = shufflevector <8 x i32> %i.w, <8 x i32> %i.x, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.z = insertelement <8 x i32> poison, i32 %i.i, i64 0
  %i.aa = shufflevector <8 x i32> %i.z, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ab = mul <8 x i32> %i.aa, %i.u               ; 2 uses
  %i.ac = insertelement <8 x i32> poison, i32 %i.b, i64 0
  %i.ad = shufflevector <8 x i32> %i.ac, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ae = mul <8 x i32> %i.y, %i.ad               ; 2 uses
  %i.af = icmp ugt <8 x i32> %i.ae, %i.ab
  %i.ag = shufflevector <8 x i1> %i.af, <8 x i1> poison, <8 x i32> <i32 1, i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ah = shufflevector <8 x i32> %i.ae, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ai = shufflevector <8 x i32> %i.ab, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aj = sub nuw <8 x i32> %i.ah, %i.ai
  %i.ak = sub nuw <8 x i32> %i.ai, %i.ah
  %i.al = select <8 x i1> %i.ag, <8 x i32> %i.aj, <8 x i32> %i.ak
  %i.am = extractelement <4 x i32> %i.p, i64 2
  %i.an = mul i32 %i.i, %i.am                     ; 3 uses
  %i.ao = extractelement <4 x i32> %i.q, i64 2
  %i.ap = mul i32 %i.ao, %i.b                     ; 3 uses
  %i.aq = icmp ugt i32 %i.ap, %i.an
  %i.ar = sub nuw i32 %i.ap, %i.an
  %i.as = sub nuw i32 %i.an, %i.ap
  %i.at = select i1 %i.aq, i32 %i.ar, i32 %i.as
  %i.au = extractelement <4 x i32> %i.p, i64 3
  %i.av = mul i32 %i.i, %i.au                     ; 3 uses
  %i.aw = extractelement <4 x i32> %i.q, i64 3
  %i.ax = mul i32 %i.aw, %i.b                     ; 3 uses
  %i.ay = icmp ugt i32 %i.ax, %i.av
  %i.az = sub nuw i32 %i.ax, %i.av
  %i.ba = sub nuw i32 %i.av, %i.ax
  %i.bb = select i1 %i.ay, i32 %i.az, i32 %i.ba
  %i.bc = load i32, ptr %i.h, align 4, !tbaa !56  ; 2 uses
  %i.bd = add i32 %i.bc, %i.b                     ; 3 uses
  %i.be = mul i32 %i.bc, 200
  %i.bf = lshr i32 %i.be, 9
  %i.bg = mul i32 %i.bf, %i.b                     ; 3 uses
  %i.bh = icmp ult i32 %1, 10000
  %i.bi = icmp ult i32 %i.bd, 8192
  %or.cond = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader
  %i.bj = zext i32 %i.bg to i64
  %i.bk = sub nuw nsw i32 8192, %i.bd
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = mul nuw nsw i64 %i.bj, %i.bl
  %i.bn = lshr i64 %i.bm, 13
  %i.bo = trunc nuw i64 %i.bn to i32
  %i.bp = add i32 %i.bg, %i.bo
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader
  %.035 = phi i32 [ %i.bp, %bb.b ], [ %i.bg, %.preheader ]
  %i.bq = lshr i32 %1, 12
  %i.br = mul i32 %i.b, %i.bq
  %i.bs = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.al)
  %op.rdx = add i32 %i.bs, %i.at
  %op.rdx80 = add i32 %i.bb, %i.br
  %op.rdx81 = add i32 %op.rdx, %op.rdx80
  %.not42.not = icmp ult i32 %op.rdx81, %.035
  br i1 %.not42.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.pre-phi = phi i32 [ %.pre77, %._crit_edge ], [ %i.bd, %bb.c ]
  %i.bt = phi <4 x i32> [ %i.d, %._crit_edge ], [ %i.l, %bb.c ]
  %i.bu = phi <4 x i32> [ %i.c, %._crit_edge ], [ %i.m, %bb.c ]
  %i.bv = phi <4 x i32> [ %i.f, %._crit_edge ], [ %i.p, %bb.c ]
  %i.bw = phi <4 x i32> [ %i.e, %._crit_edge ], [ %i.q, %bb.c ]
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.by = load <2 x i32>, ptr %0, align 4, !tbaa !3
  %i.bz = load <2 x i32>, ptr %i.bx, align 4, !tbaa !3
  %i.ca = add <2 x i32> %i.bz, %i.by
  store <2 x i32> %i.ca, ptr %i.bx, align 4, !tbaa !3
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cc = add <4 x i32> %i.bt, %i.bu
  store <4 x i32> zeroinitializer, ptr %0, align 4, !tbaa !3
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> %i.cc, ptr %i.cb, align 4, !tbaa !3
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cf = add <4 x i32> %i.bv, %i.bw
  store <4 x i32> zeroinitializer, ptr %i.cd, align 4, !tbaa !3
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.cg, align 4, !tbaa !3
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 36
  store <4 x i32> %i.cf, ptr %i.ce, align 4, !tbaa !3
  store i32 0, ptr %i.ch, align 4, !tbaa !3
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %.pre-phi, ptr %i.a, align 4, !tbaa !81
  store i32 0, ptr %i.ci, align 4, !tbaa !56
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i1 [ false, %bb.d ], [ true, %bb.c ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @deflate_optimize_and_flush_block(ptr noundef initializes((32, 1312)) %0, ptr noundef captures(none) %1, ptr noundef %2, i32 noundef %3, ptr noundef readonly captures(none) %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef nonnull writeonly captures(none) %7) unnamed_addr #11 {
bb.a:
  %8 = alloca %struct.deflate_sequence, align 4   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9011684
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 23 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(1280) %i.c, i8 0, i64 1280, i1 false)
  %.not.i = icmp eq i32 %3, 0                     ; 3 uses
  br i1 %.not.i, label %deflate_choose_all_literals.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %3 to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.d = icmp ult i32 %3, 4
  br i1 %i.d, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !20
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !3
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !20
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !3
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !20
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !3
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !20
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !3
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %deflate_choose_all_literals.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !130

deflate_choose_all_literals.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %deflate_choose_all_literals.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %deflate_choose_all_literals.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %deflate_choose_all_literals.exit.loopexit.unr-lcssa ]
  %lcmp.mod347 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod347)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.epil
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !20
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !3
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %deflate_choose_all_literals.exit, label %.lr.ph.i.epil, !llvm.loop !131

deflate_choose_all_literals.exit:                 ; preds = %deflate_choose_all_literals.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  store i32 1, ptr %i.al, align 32, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2680 ; 20 uses
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 288, i32 noundef 14, ptr noundef nonnull readonly %i.c, ptr noundef nonnull %i.an, ptr noundef nonnull %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2968 ; 14 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2552 ; 2 uses
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 32, i32 noundef 15, ptr noundef nonnull readonly %i.ao, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq)
  %i.ar = tail call fastcc i32 @deflate_compute_true_cost(ptr noundef nonnull %0)
  %i.as = add i32 %3, 257                         ; 2 uses
  %9 = icmp ult i32 %i.as, 305000
  %narrow = select i1 %9, i32 %i.as, i32 304999   ; 4 uses
  %.not114 = icmp ugt i32 %3, %narrow
  br i1 %.not114, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %deflate_choose_all_literals.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(1024) %i.c, i8 0, i64 1024, i1 false)
  br label %.lr.ph.preheader.i.i

.lr.ph:                                           ; preds = %deflate_choose_all_literals.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 6532420 ; 9 uses
  %i.au = zext nneg i32 %3 to i64                 ; 2 uses
  %i.av = add nuw nsw i32 %narrow, 1
  %i.aw = add nuw nsw i32 %narrow, 1
  %i.ax = sub nuw i32 %i.aw, %3
  %i.ay = sub nuw i32 %narrow, %3
  %xtraiter348 = and i32 %i.ax, 7                 ; 2 uses
  %lcmp.mod349.not = icmp eq i32 %xtraiter348, 0
  br i1 %lcmp.mod349.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.au, %.lr.ph ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.prol
  store i32 -2147483648, ptr %i.az, align 4, !tbaa !20
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter348
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !132

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.au, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.ba = icmp samesign ult i32 %i.ay, 7
  br i1 %i.ba, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 9 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  store i32 -2147483648, ptr %i.bb, align 4, !tbaa !20
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i32 -2147483648, ptr %i.bd, align 4, !tbaa !20
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i32 -2147483648, ptr %i.bf, align 4, !tbaa !20
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i32 -2147483648, ptr %i.bh, align 4, !tbaa !20
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store i32 -2147483648, ptr %i.bj, align 4, !tbaa !20
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store i32 -2147483648, ptr %i.bl, align 4, !tbaa !20
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  store i32 -2147483648, ptr %i.bn, align 4, !tbaa !20
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  store i32 -2147483648, ptr %i.bp, align 4, !tbaa !20
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %lftr.wideiv.7 = trunc i64 %indvars.iv.next.7 to i32
  %exitcond.not.7 = icmp eq i32 %i.av, %lftr.wideiv.7
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph.new, !llvm.loop !133

._crit_edge:                                      ; preds = %.lr.ph.new, %.prol.loopexit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(1024) %i.c, i8 0, i64 1024, i1 false)
  br i1 %.not.i, label %vector.ph, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.bq = lshr i32 %3, 11                         ; 2 uses
  %wide.trip.count.i.i = zext i32 %3 to i64       ; 2 uses
  %xtraiter350 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.br = add i32 %3, -1
  %i.bs = icmp ult i32 %i.br, 3
  br i1 %i.bs, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter354 = and i64 %wide.trip.count.i.i, 4294967292
  br label %.lr.ph.i.i

vector.ph.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.i
  %lcmp.mod352.not = icmp eq i64 %xtraiter350, 0
  br i1 %lcmp.mod352.not, label %vector.ph, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %vector.ph.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.3, %vector.ph.loopexit.unr-lcssa ]
  %lcmp.mod353 = icmp ne i64 %xtraiter350, 0
  tail call void @llvm.assume(i1 %lcmp.mod353)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %epil.iter351 = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter351.next, %.lr.ph.i.i.epil ]
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.i.epil
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !20
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !3
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter351.next = add i64 %epil.iter351, 1   ; 2 uses
  %epil.iter351.cmp.not = icmp eq i64 %epil.iter351.next, %xtraiter350
  br i1 %epil.iter351.cmp.not, label %vector.ph, label %.lr.ph.i.i.epil, !llvm.loop !134

vector.ph:                                        ; preds = %vector.ph.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %._crit_edge
  %i.bz = phi i32 [ 0, %._crit_edge ], [ %i.bq, %.lr.ph.i.i.epil ], [ %i.bq, %vector.ph.loopexit.unr-lcssa ]
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bz, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cp, %vector.body ]
  %vec.phi132 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cq, %vector.body ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %wide.load = load <4 x i32>, ptr %i.ca, align 4, !tbaa !3
  %wide.load133 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !3
  %i.cc = icmp ugt <4 x i32> %wide.load, %broadcast.splat
  %i.cd = icmp ugt <4 x i32> %wide.load133, %broadcast.splat
  %i.ce = zext <4 x i1> %i.cc to <4 x i32>
  %i.cf = zext <4 x i1> %i.cd to <4 x i32>
  %i.cg = add <4 x i32> %vec.phi, %i.ce
  %i.ch = add <4 x i32> %vec.phi132, %i.cf
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %wide.load.1 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !3
  %wide.load133.1 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !3
  %i.cl = icmp ugt <4 x i32> %wide.load.1, %broadcast.splat
  %i.cm = icmp ugt <4 x i32> %wide.load133.1, %broadcast.splat
  %i.cn = zext <4 x i1> %i.cl to <4 x i32>
  %i.co = zext <4 x i1> %i.cm to <4 x i32>
  %i.cp = add <4 x i32> %i.cg, %i.cn              ; 2 uses
  %i.cq = add <4 x i32> %i.ch, %i.co              ; 2 uses
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.cr = icmp eq i64 %index.next.1, 256
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !135

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cq, %i.cp
  %i.cs = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 5 uses
  %spec.store.select.i.i = tail call i32 @llvm.umax.i32(i32 %i.cs, i32 1) ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !19 ; 3 uses
  %i.cv = icmp ugt i32 %i.cs, 79
  br i1 %i.cv, label %choose_min_match_len.exit.i.i, label %bb.b

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ] ; 5 uses
  %niter355 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter355.next.3, %.lr.ph.i.i ]
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.i
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !20
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !3
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !20
  %i.df = zext i8 %i.de to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.df ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !3
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !3
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !20
  %i.dm = zext i8 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dm ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3
  %i.dp = add i32 %i.do, 1
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !3
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 3
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !20
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dt ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3
  %i.dw = add i32 %i.dv, 1
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !3
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter355.next.3 = add i64 %niter355, 4         ; 2 uses
  %niter355.ncmp.3 = icmp eq i64 %niter355.next.3, %unroll_iter354
  br i1 %niter355.ncmp.3, label %vector.ph.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !136

bb.b:                                             ; preds = %middle.block
  %i.dx = zext nneg i32 %spec.store.select.i.i to i64
  %i.dy = getelementptr inbounds nuw i8, ptr @choose_min_match_len.min_lens, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !20
  %i.ea = zext i8 %i.dz to i32                    ; 4 uses
  %i.eb = icmp ult i32 %i.cu, 16
  br i1 %i.eb, label %bb.c, label %choose_min_match_len.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.ec = icmp samesign ult i32 %i.cu, 5
  br i1 %i.ec, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
end_hunk_1
