Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/notchlc?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@decode_frame:bb.a
  br i1 %i.de, label %decode_blocks.exit.thread, label %bb.x

bb.x:                                             ; preds = %bytestream2_get_le32.exit507.i, %bytestream2_get_le32.exit507.thread.i
  %i.df = phi ptr [ %i.by, %bytestream2_get_le32.exit507.thread.i ], [ %i.db, %bytestream2_get_le32.exit507.i ] ; 3 uses
  %i.dg = phi ptr [ %i.da, %bytestream2_get_le32.exit507.thread.i ], [ %i.dd, %bytestream2_get_le32.exit507.i ] ; 2 uses
  %.0.i506670.i = phi i32 [ 0, %bytestream2_get_le32.exit507.thread.i ], [ %i.dc, %bytestream2_get_le32.exit507.i ]
  %i.dh = shl nuw i32 %.0.i506670.i, 2            ; 2 uses
  store i32 %i.dh, ptr %i.dg, align 8, !tbaa !78
  %.not472.i = icmp ult i32 %i.dh, %i.t
  br i1 %.not472.i, label %bb.y, label %decode_blocks.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.di = ptrtoint ptr %i.df to i64
  %i.dj = sub i64 %i.ca, %i.di
  %i.dk = icmp slt i64 %i.dj, 4
  br i1 %i.dk, label %bytestream2_get_le32.exit505.thread.i, label %bytestream2_get_le32.exit505.i

bytestream2_get_le32.exit505.thread.i:            ; preds = %bb.y
  store ptr %i.by, ptr %i.bf, align 8, !tbaa !37
  %i.dl = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  br label %bb.z

bytestream2_get_le32.exit505.i:                   ; preds = %bb.y
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 4 ; 2 uses
  store ptr %i.dm, ptr %i.bf, align 8, !tbaa !32
  %i.dn = load i32, ptr %i.df, align 1, !tbaa !33 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.be, i64 72 ; 2 uses
  store i32 %i.dn, ptr %i.do, align 8, !tbaa !79
  %i.dp = icmp ugt i32 %i.dn, 1073741822
  br i1 %i.dp, label %decode_blocks.exit.thread, label %bb.z

bb.z:                                             ; preds = %bytestream2_get_le32.exit505.i, %bytestream2_get_le32.exit505.thread.i
  %i.dq = phi ptr [ %i.by, %bytestream2_get_le32.exit505.thread.i ], [ %i.dm, %bytestream2_get_le32.exit505.i ] ; 3 uses
  %i.dr = phi ptr [ %i.dl, %bytestream2_get_le32.exit505.thread.i ], [ %i.do, %bytestream2_get_le32.exit505.i ] ; 3 uses
  %.0.i504672.i = phi i32 [ 0, %bytestream2_get_le32.exit505.thread.i ], [ %i.dn, %bytestream2_get_le32.exit505.i ]
  %i.ds = shl nuw i32 %.0.i504672.i, 2            ; 2 uses
  store i32 %i.ds, ptr %i.dr, align 8, !tbaa !79
  %.not473.i = icmp ult i32 %i.ds, %i.t
  br i1 %.not473.i, label %bb.aa, label %decode_blocks.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.dt = ptrtoint ptr %i.dq to i64
  %i.du = sub i64 %i.ca, %i.dt
  %i.dv = icmp slt i64 %i.du, 4
  br i1 %i.dv, label %bytestream2_get_le32.exit503.thread.i, label %bytestream2_get_le32.exit503.i

bytestream2_get_le32.exit503.thread.i:            ; preds = %bb.aa
  store ptr %i.by, ptr %i.bf, align 8, !tbaa !37
  %i.dw = getelementptr inbounds nuw i8, ptr %i.be, i64 76
  store i32 0, ptr %i.dw, align 4, !tbaa !80
  br label %bb.ab

bytestream2_get_le32.exit503.i:                   ; preds = %bb.aa
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 4 ; 3 uses
  store ptr %i.dx, ptr %i.bf, align 8, !tbaa !32
  %i.dy = load i32, ptr %i.dq, align 1, !tbaa !33 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.be, i64 76
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !80
  %i.ea = icmp ugt i32 %i.dy, 1073741822
  br i1 %i.ea, label %decode_blocks.exit.thread, label %bytestream2_get_le32.exit503._crit_edge.i

bytestream2_get_le32.exit503._crit_edge.i:        ; preds = %bytestream2_get_le32.exit503.i
  %.pre985.i = ptrtoint ptr %i.dx to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bytestream2_get_le32.exit503._crit_edge.i, %bytestream2_get_le32.exit503.thread.i
  %.pre-phi986.i = phi i64 [ %.pre985.i, %bytestream2_get_le32.exit503._crit_edge.i ], [ %i.ca, %bytestream2_get_le32.exit503.thread.i ]
  %i.eb = phi ptr [ %i.dx, %bytestream2_get_le32.exit503._crit_edge.i ], [ %i.by, %bytestream2_get_le32.exit503.thread.i ] ; 2 uses
  %.0.i502674.i = phi i32 [ %i.dy, %bytestream2_get_le32.exit503._crit_edge.i ], [ 0, %bytestream2_get_le32.exit503.thread.i ] ; 2 uses
  %i.ec = sub i64 %i.ca, %.pre-phi986.i
  %i.ed = icmp slt i64 %i.ec, 4
  br i1 %i.ed, label %bytestream2_get_le32.exit501.thread.i, label %bytestream2_get_le32.exit501.i

bytestream2_get_le32.exit501.thread.i:            ; preds = %bb.ab
  store ptr %i.by, ptr %i.bf, align 8, !tbaa !37
  %i.ee = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  br label %bb.ac

bytestream2_get_le32.exit501.i:                   ; preds = %bb.ab
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 4 ; 2 uses
  store ptr %i.ef, ptr %i.bf, align 8, !tbaa !32
  %i.eg = load i32, ptr %i.eb, align 1, !tbaa !33 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.be, i64 80 ; 2 uses
  store i32 %i.eg, ptr %i.eh, align 8, !tbaa !81
  %i.ei = icmp ugt i32 %i.eg, 1073741822
  br i1 %i.ei, label %decode_blocks.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bytestream2_get_le32.exit501.i, %bytestream2_get_le32.exit501.thread.i
  %i.ej = phi ptr [ %i.by, %bytestream2_get_le32.exit501.thread.i ], [ %i.ef, %bytestream2_get_le32.exit501.i ] ; 3 uses
  %i.ek = phi ptr [ %i.ee, %bytestream2_get_le32.exit501.thread.i ], [ %i.eh, %bytestream2_get_le32.exit501.i ] ; 2 uses
  %.0.i500676.i = phi i32 [ 0, %bytestream2_get_le32.exit501.thread.i ], [ %i.eg, %bytestream2_get_le32.exit501.i ]
  %i.el = shl nuw i32 %.0.i500676.i, 2            ; 4 uses
  store i32 %i.el, ptr %i.ek, align 8, !tbaa !81
  %.not474.i = icmp ult i32 %i.el, %i.t
  br i1 %.not474.i, label %bb.ad, label %decode_blocks.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.em = ptrtoint ptr %i.ej to i64
  %i.en = sub i64 %i.ca, %i.em
  %i.eo = icmp slt i64 %i.en, 4
  br i1 %i.eo, label %bytestream2_get_le32.exit499.thread.i, label %bytestream2_get_le32.exit499.i

bytestream2_get_le32.exit499.thread.i:            ; preds = %bb.ad
  store ptr %i.by, ptr %i.bf, align 8, !tbaa !37
  %i.ep = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  br label %bb.ae

bytestream2_get_le32.exit499.i:                   ; preds = %bb.ad
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 4 ; 2 uses
  store ptr %i.eq, ptr %i.bf, align 8, !tbaa !32
  %i.er = load i32, ptr %i.ej, align 1, !tbaa !33 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.be, i64 88 ; 2 uses
  store i32 %i.er, ptr %i.es, align 8, !tbaa !82
  %i.et = icmp ugt i32 %i.er, 1073741822
  br i1 %i.et, label %decode_blocks.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bytestream2_get_le32.exit499.i, %bytestream2_get_le32.exit499.thread.i
  %i.eu = phi ptr [ %i.by, %bytestream2_get_le32.exit499.thread.i ], [ %i.eq, %bytestream2_get_le32.exit499.i ] ; 3 uses
  %i.ev = phi ptr [ %i.ep, %bytestream2_get_le32.exit499.thread.i ], [ %i.es, %bytestream2_get_le32.exit499.i ]
  %.0.i498678.i = phi i32 [ 0, %bytestream2_get_le32.exit499.thread.i ], [ %i.er, %bytestream2_get_le32.exit499.i ]
  %i.ew = shl nuw i32 %.0.i498678.i, 2            ; 2 uses
  store i32 %i.ew, ptr %i.ev, align 8, !tbaa !82
  %.not475.i = icmp ult i32 %i.ew, %i.t
  br i1 %.not475.i, label %bb.af, label %decode_blocks.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.ex = ptrtoint ptr %i.eu to i64
  %i.ey = sub i64 %i.ca, %i.ex
  %i.ez = icmp slt i64 %i.ey, 4
  br i1 %i.ez, label %.thread.i, label %bytestream2_get_le32.exit497.i

.thread.i:                                        ; preds = %bb.af
  store ptr %i.by, ptr %i.bf, align 8, !tbaa !37
  %i.fa = getelementptr inbounds nuw i8, ptr %i.be, i64 92
  store i32 0, ptr %i.fa, align 4, !tbaa !83
  %i.fb = getelementptr inbounds nuw i8, ptr %i.be, i64 112
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !69
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = sub i64 %i.ca, %i.fd
  %i.ff = trunc i64 %i.fe to i32
  %i.fg = getelementptr inbounds nuw i8, ptr %i.be, i64 52
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !84
  br label %decode_blocks.exit.thread

bytestream2_get_le32.exit497.i:                   ; preds = %bb.af
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eu, i64 4 ; 2 uses
  store ptr %i.fh, ptr %i.bf, align 8, !tbaa !32
  %i.fi = load i32, ptr %i.eu, align 1, !tbaa !33 ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.be, i64 92 ; 2 uses
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !83
  %i.fk = icmp ugt i32 %i.fi, %i.t
  br i1 %i.fk, label %decode_blocks.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bytestream2_get_le32.exit497.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.be, i64 112 ; 3 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !69
  %i.fn = ptrtoint ptr %i.fh to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = getelementptr inbounds nuw i8, ptr %i.be, i64 52 ; 2 uses
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !84
  %.not476.i = icmp ugt i32 %i.fi, %.0.i502674.i
  br i1 %.not476.i, label %bb.ah, label %decode_blocks.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %i.fs = sub nuw i32 %i.fi, %.0.i502674.i        ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.be, i64 68 ; 2 uses
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !85
  %.not477.i = icmp ugt i32 %i.fs, %i.el
  br i1 %.not477.i, label %bb.ai, label %decode_blocks.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.fu = sub nuw i32 %i.fs, %i.el
  %i.fv = getelementptr inbounds nuw i8, ptr %i.be, i64 84 ; 2 uses
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !86
  %i.fw = tail call i32 @ff_thread_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #9 ; 2 uses
  %i.fx = icmp slt i32 %i.fw, 0
  br i1 %i.fx, label %decode_blocks.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.sroa.16654.0.copyload.i = load ptr, ptr %i.bg, align 8, !tbaa !32 ; 26 uses
  %.sroa.20.0.copyload.i = load ptr, ptr %i.fl, align 8, !tbaa !32
  %.sroa.20.0.copyload.fr.i = freeze ptr %.sroa.20.0.copyload.i ; 8 uses
  %i.fy = load i32, ptr %i.fr, align 4, !tbaa !84 ; 2 uses
  %i.fz = ptrtoint ptr %.sroa.16654.0.copyload.i to i64 ; 44 uses
  %i.ga = ptrtoint ptr %.sroa.20.0.copyload.fr.i to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = trunc i64 %i.gb to i32                  ; 6 uses
  %i.gd = load i32, ptr %i.cv, align 4, !tbaa !77 ; 2 uses
  %i.ge = icmp slt i32 %i.gd, 0
  %..i554.i = tail call i32 @llvm.smin.i32(i32 %i.gd, i32 %i.gc)
  %.0.i555.i = select i1 %i.ge, i32 0, i32 %..i554.i
  %i.gf = sext i32 %.0.i555.i to i64
  %i.gg = getelementptr inbounds i8, ptr %.sroa.20.0.copyload.fr.i, i64 %i.gf ; 3 uses
  store ptr %i.gg, ptr %i.bf, align 8, !tbaa !37
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = sub i64 %i.fz, %i.gh
  %i.gj = trunc i64 %i.gi to i32
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 116
  %4 = load i32, ptr %i.gk, align 4, !tbaa !87    ; 8 uses
  %5 = add nsw i32 %4, 3
  %6 = sdiv i32 %5, 4
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %8 = load i32, ptr %7, align 8, !tbaa !88
  %.fr.i = freeze i32 %8                          ; 12 uses
  %9 = add nsw i32 %.fr.i, 3
  %10 = sdiv i32 %9, 4
  %i.gl = shl nsw i32 %6, 2
  %i.gm = mul i32 %i.gl, %10
  %i.gn = icmp sgt i32 %i.gm, %i.gj
  br i1 %i.gn, label %decode_blocks.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.go = icmp slt i32 %i.fy, 0
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.fy, i32 %i.gc)
  %.0.i553.i = select i1 %i.go, i32 0, i32 %..i.i
  %i.gp = sext i32 %.0.i553.i to i64
  %i.gq = getelementptr inbounds i8, ptr %.sroa.20.0.copyload.fr.i, i64 %i.gp ; 2 uses
  %i.gr = load ptr, ptr %1, align 8, !tbaa !32
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !32 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !28
  %i.gw = sdiv i32 %i.gv, 2                       ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !28
  %i.gz = sdiv i32 %i.gy, 2                       ; 13 uses
  %.not478765.i = icmp sgt i32 %4, 0              ; 4 uses
  br i1 %.not478765.i, label %.lr.ph770.i, label %.thread688.i

.lr.ph770.i:                                      ; preds = %bb.ak
  %i.ha = load i32, ptr %i.ft, align 4, !tbaa !85 ; 2 uses
  %.not836.i = icmp eq ptr %.sroa.20.0.copyload.fr.i, null
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.he = shl nsw i32 %i.gw, 2
  %i.hf = sext i32 %i.he to i64
  br i1 %.not836.i, label %decode_blocks.exit.thread, label %.lr.ph770.split.i

.lr.ph770.split.i:                                ; preds = %.lr.ph770.i
  %i.hg = icmp sgt i32 %.fr.i, 0
  br i1 %i.hg, label %.lr.ph770.split.split.us.preheader.i, label %.lr.ph770.split.split.i

.lr.ph770.split.split.us.preheader.i:             ; preds = %.lr.ph770.split.i
  %i.hh = sext i32 %i.gw to i64
  %i.hi = zext nneg i32 %.fr.i to i64
  br label %.lr.ph770.split.split.us.i

.lr.ph770.split.split.us.i:                       ; preds = %._crit_edge.us.i, %.lr.ph770.split.split.us.preheader.i
  %i.hj = phi ptr [ %i.ig, %._crit_edge.us.i ], [ %i.gg, %.lr.ph770.split.split.us.preheader.i ]
  %.0441768.us771.i = phi i32 [ %i.lr, %._crit_edge.us.i ], [ 0, %.lr.ph770.split.split.us.preheader.i ]
  %.0453767.us772.i = phi ptr [ %i.lq, %._crit_edge.us.i ], [ %i.gr, %.lr.ph770.split.split.us.preheader.i ] ; 2 uses
  %.sroa.0647.0766.us773.i = phi ptr [ %.sroa.0647.4.us775.i, %._crit_edge.us.i ], [ %i.gq, %.lr.ph770.split.split.us.preheader.i ] ; 3 uses
  %i.hk = ptrtoint ptr %.sroa.0647.0766.us773.i to i64
  %i.hl = sub i64 %i.fz, %i.hk
  %i.hm = icmp slt i64 %i.hl, 4
  br i1 %i.hm, label %bytestream2_get_le32.exit495.us774.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph770.split.split.us.i
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0647.0766.us773.i, i64 4
  %i.ho = load i32, ptr %.sroa.0647.0766.us773.i, align 1, !tbaa !33
  br label %bytestream2_get_le32.exit495.us774.i

bytestream2_get_le32.exit495.us774.i:             ; preds = %bb.al, %.lr.ph770.split.split.us.i
  %.sroa.0647.4.us775.i = phi ptr [ %i.hn, %bb.al ], [ %.sroa.16654.0.copyload.i, %.lr.ph770.split.split.us.i ]
  %.0.i494.us776.i = phi i32 [ %i.ho, %bb.al ], [ 0, %.lr.ph770.split.split.us.i ]
  %i.hp = add i32 %.0.i494.us776.i, %i.ha         ; 2 uses
  %i.hq = icmp slt i32 %i.hp, 0
  %..i556.us777.i = tail call i32 @llvm.smin.i32(i32 %i.hp, i32 %i.gc)
  %.0.i557.us778.i = select i1 %i.hq, i32 0, i32 %..i556.us777.i
  %i.hr = sext i32 %.0.i557.us778.i to i64
  %i.hs = getelementptr inbounds i8, ptr %.sroa.20.0.copyload.fr.i, i64 %i.hr ; 5 uses
  %i.ht = ptrtoint ptr %i.hs to i64
  %i.hu = sub i64 %i.fz, %i.ht
  %i.hv = trunc i64 %i.hu to i32                  ; 2 uses
  %or.cond.i.us779.i = icmp ugt i32 %i.hv, 268435455
  %i.hw = shl nuw nsw i32 %i.hv, 3
  %i.hx = select i1 %or.cond.i.us779.i, i32 -8, i32 %i.hw ; 2 uses
  %or.cond.i.i.us780.i = icmp ult i32 %i.hx, 2147483135 ; 2 uses
  %i.hy = add nuw nsw i32 %i.hx, 8
  %i.hz = select i1 %or.cond.i.i.us780.i, i32 %i.hy, i32 8 ; 4 uses
  br i1 %or.cond.i.i.us780.i, label %.preheader755.us.i, label %decode_blocks.exit.thread

.preheader755.us.i:                               ; preds = %bytestream2_get_le32.exit495.us774.i, %bb.ap
  %i.ia = phi ptr [ %i.ig, %bb.ap ], [ %i.hj, %bytestream2_get_le32.exit495.us774.i ] ; 3 uses
  %indvars.iv856.i = phi i64 [ %indvars.iv.next857.i, %bb.ap ], [ 0, %bytestream2_get_le32.exit495.us774.i ] ; 2 uses
  %.sroa.7.0763.us.i = phi i32 [ %i.lg, %bb.ap ], [ 0, %bytestream2_get_le32.exit495.us774.i ]
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = sub i64 %i.fz, %i.ib
  %i.id = icmp slt i64 %i.ic, 4
  br i1 %i.id, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.preheader755.us.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 4 ; 2 uses
  store ptr %i.ie, ptr %i.bf, align 8, !tbaa !32
  %i.if = load i32, ptr %i.ia, align 1, !tbaa !33
  br label %bytestream2_get_le32.exit493.us.i

bb.an:                                            ; preds = %.preheader755.us.i
  store ptr %.sroa.16654.0.copyload.i, ptr %i.bf, align 8, !tbaa !37
  br label %bytestream2_get_le32.exit493.us.i

bytestream2_get_le32.exit493.us.i:                ; preds = %bb.an, %bb.am
  %i.ig = phi ptr [ %.sroa.16654.0.copyload.i, %bb.an ], [ %i.ie, %bb.am ] ; 2 uses
  %.0.i492.us.i = phi i32 [ 0, %bb.an ], [ %i.if, %bb.am ] ; 6 uses
  %i.ih = and i32 %.0.i492.us.i, 4095             ; 5 uses
  %i.ii = lshr i32 %.0.i492.us.i, 12
  %i.ij = and i32 %i.ii, 4095
  %i.ik = sub nsw i32 %i.ij, %i.ih                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.il = lshr i32 %.0.i492.us.i, 24
  %i.im = and i32 %i.il, 3
  store i32 %i.im, ptr %i.a, align 16, !tbaa !28
  %i.in = lshr i32 %.0.i492.us.i, 26
  %i.io = and i32 %i.in, 3
  store i32 %i.io, ptr %i.hb, align 4, !tbaa !28
  %i.ip = lshr i32 %.0.i492.us.i, 28
  %i.iq = and i32 %i.ip, 3
  store i32 %i.iq, ptr %i.hc, align 8, !tbaa !28
  %i.ir = lshr i32 %.0.i492.us.i, 30
  store i32 %i.ir, ptr %i.hd, align 4, !tbaa !28
  %invariant.gep.i = getelementptr [2 x i8], ptr %.0453767.us772.i, i64 %indvars.iv856.i
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %bytestream2_get_le32.exit493.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ao ], [ 0, %bytestream2_get_le32.exit493.us.i ] ; 3 uses
  %.sroa.7.1761.us.i = phi i32 [ %i.lg, %bb.ao ], [ %.sroa.7.0763.us.i, %bytestream2_get_le32.exit493.us.i ] ; 3 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.it = load i32, ptr %i.is, align 4, !tbaa !28 ; 2 uses
  %i.iu = add i32 %i.it, 1                        ; 5 uses
  %notmask.us.i = shl nsw i32 -1, %i.iu           ; 2 uses
  %i.iv = xor i32 %notmask.us.i, -1               ; 4 uses
  %i.iw = sub nsw i32 -2, %notmask.us.i           ; 4 uses
  %i.ix = lshr i32 %.sroa.7.1761.us.i, 3
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 1, !tbaa !33
  %i.jb = and i32 %.sroa.7.1761.us.i, 7
  %i.jc = lshr i32 %i.ja, %i.jb
  %i.jd = sub i32 31, %i.it
  %i.je = lshr i32 -1, %i.jd                      ; 4 uses
  %i.jf = and i32 %i.jc, %i.je
  %i.jg = add i32 %i.iu, %.sroa.7.1761.us.i
  %i.jh = tail call i32 @llvm.umin.i32(i32 %i.hz, i32 %i.jg) ; 3 uses
  %i.ji = mul i32 %i.jf, %i.ik
  %i.jj = add i32 %i.ji, %i.iw
  %i.jk = udiv i32 %i.jj, %i.iv
  %i.jl = add i32 %i.jk, %i.ih
  %i.jm = tail call i32 @llvm.smax.i32(i32 %i.jl, i32 0)
  %i.jn = tail call i32 @llvm.umin.i32(i32 %i.jm, i32 4095)
  %i.jo = trunc nuw nsw i32 %i.jn to i16
  %i.jp = mul nsw i64 %indvars.iv.i, %i.hh
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.jp ; 4 uses
  store i16 %i.jo, ptr %gep.i, align 2, !tbaa !90
  %i.jq = lshr i32 %i.jh, 3
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 1, !tbaa !33
  %i.ju = and i32 %i.jh, 7
  %i.jv = lshr i32 %i.jt, %i.ju
  %i.jw = and i32 %i.jv, %i.je
  %i.jx = add i32 %i.jh, %i.iu
  %i.jy = tail call i32 @llvm.umin.i32(i32 %i.hz, i32 %i.jx) ; 3 uses
  %i.jz = mul i32 %i.jw, %i.ik
  %i.ka = add i32 %i.jz, %i.iw
  %i.kb = udiv i32 %i.ka, %i.iv
  %i.kc = add i32 %i.kb, %i.ih
  %i.kd = tail call i32 @llvm.smax.i32(i32 %i.kc, i32 0)
  %i.ke = tail call i32 @llvm.umin.i32(i32 %i.kd, i32 4095)
  %i.kf = trunc nuw nsw i32 %i.ke to i16
  %i.kg = getelementptr i8, ptr %gep.i, i64 2
  store i16 %i.kf, ptr %i.kg, align 2, !tbaa !90
  %i.kh = lshr i32 %i.jy, 3
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.ki
  %i.kk = load i32, ptr %i.kj, align 1, !tbaa !33
  %i.kl = and i32 %i.jy, 7
  %i.km = lshr i32 %i.kk, %i.kl
  %i.kn = and i32 %i.km, %i.je
  %i.ko = add i32 %i.jy, %i.iu
  %i.kp = tail call i32 @llvm.umin.i32(i32 %i.hz, i32 %i.ko) ; 3 uses
  %i.kq = mul i32 %i.kn, %i.ik
  %i.kr = add i32 %i.kq, %i.iw
  %i.ks = udiv i32 %i.kr, %i.iv
  %i.kt = add i32 %i.ks, %i.ih
  %i.ku = tail call i32 @llvm.smax.i32(i32 %i.kt, i32 0)
  %i.kv = tail call i32 @llvm.umin.i32(i32 %i.ku, i32 4095)
  %i.kw = trunc nuw nsw i32 %i.kv to i16
  %i.kx = getelementptr i8, ptr %gep.i, i64 4
  store i16 %i.kw, ptr %i.kx, align 2, !tbaa !90
  %i.ky = lshr i32 %i.kp, 3
  %i.kz = zext nneg i32 %i.ky to i64
  %i.la = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.kz
  %i.lb = load i32, ptr %i.la, align 1, !tbaa !33
  %i.lc = and i32 %i.kp, 7
  %i.ld = lshr i32 %i.lb, %i.lc
  %i.le = and i32 %i.ld, %i.je
  %i.lf = add i32 %i.kp, %i.iu
  %i.lg = tail call i32 @llvm.umin.i32(i32 %i.hz, i32 %i.lf) ; 2 uses
  %i.lh = mul i32 %i.le, %i.ik
  %i.li = add i32 %i.lh, %i.iw
  %i.lj = udiv i32 %i.li, %i.iv
  %i.lk = add i32 %i.lj, %i.ih
  %i.ll = tail call i32 @llvm.smax.i32(i32 %i.lk, i32 0)
  %i.lm = tail call i32 @llvm.umin.i32(i32 %i.ll, i32 4095)
  %i.ln = trunc nuw nsw i32 %i.lm to i16
  %i.lo = getelementptr i8, ptr %gep.i, i64 6
  store i16 %i.ln, ptr %i.lo, align 2, !tbaa !90
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %bb.ap, label %bb.ao, !llvm.loop !47

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %indvars.iv.next857.i = add nuw nsw i64 %indvars.iv856.i, 4 ; 2 uses
  %i.lp = icmp samesign ult i64 %indvars.iv.next857.i, %i.hi
  br i1 %i.lp, label %.preheader755.us.i, label %._crit_edge.us.i, !llvm.loop !48

._crit_edge.us.i:                                 ; preds = %bb.ap
  %i.lq = getelementptr inbounds [2 x i8], ptr %.0453767.us772.i, i64 %i.hf
  %i.lr = add nuw nsw i32 %.0441768.us771.i, 4    ; 2 uses
  %.not478.us.i = icmp slt i32 %i.lr, %4
  br i1 %.not478.us.i, label %.lr.ph770.split.split.us.i, label %.thread688.loopexit.i, !llvm.loop !49

.lr.ph770.split.split.i:                          ; preds = %.lr.ph770.split.i, %.preheader755.i
  %.0441768.i = phi i32 [ %i.me, %.preheader755.i ], [ 0, %.lr.ph770.split.i ]
  %.sroa.0647.0766.i = phi ptr [ %.sroa.0647.4.i, %.preheader755.i ], [ %i.gq, %.lr.ph770.split.i ] ; 3 uses
  %i.ls = ptrtoint ptr %.sroa.0647.0766.i to i64
  %i.lt = sub i64 %i.fz, %i.ls
  %i.lu = icmp slt i64 %i.lt, 4
  br i1 %i.lu, label %bytestream2_get_le32.exit495.i, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph770.split.split.i
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.0647.0766.i, i64 4
  %i.lw = load i32, ptr %.sroa.0647.0766.i, align 1, !tbaa !33
  br label %bytestream2_get_le32.exit495.i

bytestream2_get_le32.exit495.i:                   ; preds = %bb.aq, %.lr.ph770.split.split.i
  %.sroa.0647.4.i = phi ptr [ %i.lv, %bb.aq ], [ %.sroa.16654.0.copyload.i, %.lr.ph770.split.split.i ]
  %.0.i494.i = phi i32 [ %i.lw, %bb.aq ], [ 0, %.lr.ph770.split.split.i ]
  %i.lx = add i32 %.0.i494.i, %i.ha               ; 2 uses
  %i.ly = icmp slt i32 %i.lx, 0
  %..i556.i = tail call i32 @llvm.smin.i32(i32 %i.lx, i32 %i.gc)
  %.0.i557.i = select i1 %i.ly, i32 0, i32 %..i556.i
  %i.lz = sext i32 %.0.i557.i to i64
  %i.ma = getelementptr inbounds i8, ptr %.sroa.20.0.copyload.fr.i, i64 %i.lz
  %i.mb = ptrtoint ptr %i.ma to i64
  %i.mc = sub i64 %i.fz, %i.mb
  %i.md = trunc i64 %i.mc to i32
  %or.cond.i.i837.i = icmp ult i32 %i.md, 268435392
  br i1 %or.cond.i.i837.i, label %.preheader755.i, label %decode_blocks.exit.thread

.preheader755.i:                                  ; preds = %bytestream2_get_le32.exit495.i
  %i.me = add nuw nsw i32 %.0441768.i, 4          ; 2 uses
  %.not478.i = icmp slt i32 %i.me, %4
  br i1 %.not478.i, label %.lr.ph770.split.split.i, label %.thread688.i, !llvm.loop !49

.thread688.loopexit.i:                            ; preds = %._crit_edge.us.i
  %.sroa.20.0.copyload661.pre.i = load ptr, ptr %i.fl, align 8, !tbaa !32 ; 2 uses
  %.pre110 = ptrtoint ptr %.sroa.20.0.copyload661.pre.i to i64
  %.pre112 = sub i64 %i.fz, %.pre110
  %.pre114 = trunc i64 %.pre112 to i32
  br label %.thread688.i

.thread688.i:                                     ; preds = %.preheader755.i, %.thread688.loopexit.i, %bb.ak
  %.pre-phi115 = phi i32 [ %i.gc, %bb.ak ], [ %.pre114, %.thread688.loopexit.i ], [ %i.gc, %.preheader755.i ] ; 4 uses
  %.sroa.20.0.copyload661.i = phi ptr [ %.sroa.20.0.copyload.fr.i, %bb.ak ], [ %.sroa.20.0.copyload661.pre.i, %.thread688.loopexit.i ], [ %.sroa.20.0.copyload.fr.i, %.preheader755.i ] ; 4 uses
  %i.mf = load i32, ptr %i.dg, align 8, !tbaa !78 ; 3 uses
  %i.mg = icmp slt i32 %i.mf, 0
  %..i558.i = tail call i32 @llvm.smin.i32(i32 %i.mf, i32 %.pre-phi115)
  %.0.i559.i = select i1 %i.mg, i32 0, i32 %..i558.i
  %i.mh = sext i32 %.0.i559.i to i64
  %i.mi = getelementptr inbounds i8, ptr %.sroa.20.0.copyload661.i, i64 %i.mh ; 3 uses
  store ptr %i.mi, ptr %i.bf, align 8, !tbaa !37
  %i.mj = load i32, ptr %i.fv, align 4, !tbaa !86
  %i.mk = icmp eq i32 %i.mj, %i.mf
  br i1 %i.mk, label %.preheader738.i, label %bb.ar

.preheader738.i:                                  ; preds = %.thread688.i
  br i1 %.not478765.i, label %.preheader737.lr.ph.i, label %.loopexit739.i

.preheader737.lr.ph.i:                            ; preds = %.preheader738.i
  %i.ml = icmp sgt i32 %.fr.i, 0
  %i.mm = sext i32 %i.gz to i64
  br i1 %i.ml, label %.preheader737.preheader.i, label %.loopexit739.i

.preheader737.preheader.i:                        ; preds = %.preheader737.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.fr.i to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %.fr.i, 4
  %min.iters.check173 = icmp ult i32 %.fr.i, 16
  %i.mn = and i64 %wide.trip.count.i, 12
  %n.vec = and i64 %wide.trip.count.i, 2147483632 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %min.epilog.iters.check = icmp eq i64 %i.mn, 0
  %n.vec174 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n177 = icmp eq i64 %n.vec174, %wide.trip.count.i
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.preheader737.preheader.i
  %.0432800.i = phi i32 [ %i.mu, %._crit_edge.i ], [ 0, %.preheader737.preheader.i ]
  %.0449799.i = phi ptr [ %i.mt, %._crit_edge.i ], [ %i.gt, %.preheader737.preheader.i ] ; 4 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check173, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %.0449799.i, i64 %index ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  store <8 x i16> splat (i16 4095), ptr %i.mo, align 2, !tbaa !90
  store <8 x i16> splat (i16 4095), ptr %i.mp, align 2, !tbaa !90
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.mq = icmp eq i64 %index.next, %n.vec
  br i1 %i.mq, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !91

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index175 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next176, %vec.epilog.vector.body ] ; 2 uses
  %i.mr = getelementptr inbounds nuw [2 x i8], ptr %.0449799.i, i64 %index175
  store <4 x i16> splat (i16 4095), ptr %i.mr, align 2, !tbaa !90
  %index.next176 = add nuw i64 %index175, 4       ; 2 uses
  %i.ms = icmp eq i64 %index.next176, %n.vec174
  br i1 %i.ms, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !51

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n177, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv893.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec174, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.mt = getelementptr inbounds [2 x i8], ptr %.0449799.i, i64 %i.mm
  %i.mu = add nuw nsw i32 %.0432800.i, 1          ; 2 uses
  %exitcond897.not.i = icmp eq i32 %i.mu, %4
  br i1 %exitcond897.not.i, label %.loopexit739.i, label %iter.check, !llvm.loop !52

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv893.i = phi i64 [ %indvars.iv.next894.i, %vec.epilog.scalar.ph ], [ %indvars.iv893.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.mv = getelementptr inbounds nuw [2 x i8], ptr %.0449799.i, i64 %indvars.iv893.i
  store i16 4095, ptr %i.mv, align 2, !tbaa !90
  %indvars.iv.next894.i = add nuw nsw i64 %indvars.iv893.i, 1 ; 2 uses
  %exitcond896.not.i = icmp eq i64 %indvars.iv.next894.i, %wide.trip.count.i
  br i1 %exitcond896.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !53

bb.ar:                                            ; preds = %.thread688.i
  %i.mw = ptrtoint ptr %i.mi to i64
  %i.mx = sub i64 %i.fz, %i.mw
  %i.my = trunc i64 %i.mx to i32
  %i.mz = add nsw i32 %4, 15
  %i.na = sdiv i32 %i.mz, 16
  %i.nb = add nsw i32 %.fr.i, 15
  %i.nc = sdiv i32 %i.nb, 16
  %i.nd = shl nsw i32 %i.na, 3
  %i.ne = mul i32 %i.nd, %i.nc
  %i.nf = icmp sgt i32 %i.ne, %i.my
  br i1 %i.nf, label %decode_blocks.exit.thread, label %.preheader753.i

.preheader753.i:                                  ; preds = %bb.ar
  br i1 %.not478765.i, label %.preheader751.lr.ph.i, label %.loopexit739.i

.preheader751.lr.ph.i:                            ; preds = %.preheader753.i
  %i.ng = icmp sgt i32 %.fr.i, 0
  %i.nh = shl i32 %i.gz, 4
  %i.ni = sext i32 %i.nh to i64
  br i1 %i.ng, label %.preheader751.us.preheader.i, label %.loopexit739.i

.preheader751.us.preheader.i:                     ; preds = %.preheader751.lr.ph.i
  %i.nj = shl i32 %i.gz, 2
  %i.nk = zext nneg i32 %.fr.i to i64
  %i.nl = shl nsw i32 %i.gz, 1                    ; 4 uses
  %i.nm = mul i32 %i.gz, 3                        ; 4 uses
  br label %.preheader751.us.i

.preheader751.us.i:                               ; preds = %._crit_edge.us797.i, %.preheader751.us.preheader.i
  %i.nn = phi ptr [ %i.oa, %._crit_edge.us797.i ], [ %i.mi, %.preheader751.us.preheader.i ]
  %.0430796.us.i = phi i32 [ %i.ws, %._crit_edge.us797.i ], [ 0, %.preheader751.us.preheader.i ]
  %.1450795.us.i = phi ptr [ %i.wr, %._crit_edge.us797.i ], [ %i.gt, %.preheader751.us.preheader.i ] ; 49 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ay, %.preheader751.us.i
  %i.no = phi ptr [ %i.nn, %.preheader751.us.i ], [ %i.oa, %bb.ay ] ; 3 uses
  %indvars.iv890.i = phi i64 [ 0, %.preheader751.us.i ], [ %indvars.iv.next891.i, %bb.ay ] ; 10 uses
  %i.np = ptrtoint ptr %i.no to i64
  %i.nq = sub i64 %i.fz, %i.np
  %i.nr = icmp slt i64 %i.nq, 4
  br i1 %i.nr, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ns = getelementptr inbounds nuw i8, ptr %i.no, i64 4 ; 3 uses
  store ptr %i.ns, ptr %i.bf, align 8, !tbaa !32
  %i.nt = load i32, ptr %i.no, align 1, !tbaa !33
  %.pre983.i = ptrtoint ptr %i.ns to i64
  br label %bytestream2_get_le32.exit491.us.i

bb.au:                                            ; preds = %bb.as
  store ptr %.sroa.16654.0.copyload.i, ptr %i.bf, align 8, !tbaa !37
  br label %bytestream2_get_le32.exit491.us.i

bytestream2_get_le32.exit491.us.i:                ; preds = %bb.au, %bb.at
  %.pre-phi984.i = phi i64 [ %i.fz, %bb.au ], [ %.pre983.i, %bb.at ]
  %i.nu = phi ptr [ %.sroa.16654.0.copyload.i, %bb.au ], [ %i.ns, %bb.at ] ; 2 uses
  %.0.i490.us.i = phi i32 [ 0, %bb.au ], [ %i.nt, %bb.at ]
  %i.nv = sub i64 %i.fz, %.pre-phi984.i
  %i.nw = icmp slt i64 %i.nv, 4
  br i1 %i.nw, label %bytestream2_get_le32.exit489.thread.us.i, label %bytestream2_get_le32.exit489.us.i

bytestream2_get_le32.exit489.us.i:                ; preds = %bytestream2_get_le32.exit491.us.i
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nu, i64 4 ; 2 uses
  store ptr %i.nx, ptr %i.bf, align 8, !tbaa !32
  %i.ny = load i32, ptr %i.nu, align 1, !tbaa !33 ; 2 uses
  %i.nz = icmp ugt i32 %i.ny, 1073741822
  br i1 %i.nz, label %decode_blocks.exit.thread, label %bb.av

bytestream2_get_le32.exit489.thread.us.i:         ; preds = %bytestream2_get_le32.exit491.us.i
  store ptr %.sroa.16654.0.copyload.i, ptr %i.bf, align 8, !tbaa !37
  br label %bb.av

bb.av:                                            ; preds = %bytestream2_get_le32.exit489.thread.us.i, %bytestream2_get_le32.exit489.us.i
  %i.oa = phi ptr [ %.sroa.16654.0.copyload.i, %bytestream2_get_le32.exit489.thread.us.i ], [ %i.nx, %bytestream2_get_le32.exit489.us.i ] ; 2 uses
  %.0.i488692.us.i = phi i32 [ 0, %bytestream2_get_le32.exit489.thread.us.i ], [ %i.ny, %bytestream2_get_le32.exit489.us.i ]
  %i.ob = shl nuw i32 %.0.i488692.us.i, 2
  %i.oc = load i32, ptr %i.dr, align 8, !tbaa !79
  %i.od = add i32 %i.ob, %i.oc
  %i.oe = load i32, ptr %i.ek, align 8, !tbaa !81
  %i.of = add i32 %i.od, %i.oe                    ; 3 uses
  %i.og = load i32, ptr %i.fj, align 4, !tbaa !83
  %.not479.us.i = icmp ult i32 %i.of, %i.og
  br i1 %.not479.us.i, label %bb.aw, label %decode_blocks.exit.thread

bb.aw:                                            ; preds = %bb.av
  %i.oh = icmp slt i32 %i.of, 0
  %..i560.us.i = tail call i32 @llvm.smin.i32(i32 %i.of, i32 %.pre-phi115)
  %.0.i561.us.i = select i1 %i.oh, i32 0, i32 %..i560.us.i
  %i.oi = sext i32 %.0.i561.us.i to i64
  %i.oj = getelementptr inbounds i8, ptr %.sroa.20.0.copyload661.i, i64 %i.oi ; 2 uses
  %i.ok = ptrtoint ptr %i.oj to i64
  %i.ol = sub i64 %i.fz, %i.ok
  %i.om = icmp slt i64 %i.ol, 8
  br i1 %i.om, label %bytestream2_get_le64.exit.us.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.on = load i64, ptr %i.oj, align 1, !tbaa !33
  br label %bytestream2_get_le64.exit.us.i

bytestream2_get_le64.exit.us.i:                   ; preds = %bb.ax, %bb.aw
  %.0.i552.us.i = phi i64 [ %i.on, %bb.ax ], [ 0, %bb.aw ] ; 3 uses
  %i.oo = and i64 %.0.i552.us.i, 255              ; 5 uses
  %i.op = lshr i64 %.0.i552.us.i, 8
  %i.oq = and i64 %i.op, 255
  %i.or = lshr i64 %.0.i552.us.i, 16
  %i.os = sub nsw i64 %i.oq, %i.oo                ; 4 uses
  %i.ot = trunc nuw nsw i64 %indvars.iv890.i to i32
  %i.ou = trunc nuw nsw i64 %indvars.iv890.i to i32 ; 4 uses
  %i.ov = trunc nuw nsw i64 %indvars.iv890.i to i32 ; 4 uses
  %i.ow = trunc i64 %indvars.iv890.i to i32
  %i.ox = or disjoint i32 %i.ow, 4                ; 4 uses
  %i.oy = trunc i64 %indvars.iv890.i to i32
  %i.oz = or disjoint i32 %i.oy, 4                ; 4 uses
  %i.pa = trunc i64 %indvars.iv890.i to i32
  %i.pb = or disjoint i32 %i.pa, 8                ; 4 uses
  %i.pc = trunc i64 %indvars.iv890.i to i32
  %i.pd = or disjoint i32 %i.pc, 8                ; 4 uses
  %i.pe = trunc i64 %indvars.iv890.i to i32
  %i.pf = or disjoint i32 %i.pe, 12               ; 4 uses
  %i.pg = trunc i64 %indvars.iv890.i to i32
  %i.ph = or disjoint i32 %i.pg, 12               ; 4 uses
  br label %.preheader749.us.i

.preheader749.us.i:                               ; preds = %.loopexit748.us.i.3, %bytestream2_get_le64.exit.us.i
  %indvars.iv886.i = phi i64 [ %indvars.iv.next887.i, %.loopexit748.us.i.3 ], [ 0, %bytestream2_get_le64.exit.us.i ] ; 2 uses
  %.0425792.us.i = phi i64 [ %i.wo, %.loopexit748.us.i.3 ], [ %i.or, %bytestream2_get_le64.exit.us.i ] ; 5 uses
  %.0427791.us.i = phi i32 [ %i.wp, %.loopexit748.us.i.3 ], [ %.0.i490.us.i, %bytestream2_get_le64.exit.us.i ] ; 5 uses
  %i.pi = trunc i64 %indvars.iv886.i to i32       ; 2 uses
  %i.pj = mul i32 %i.nj, %i.pi
  %i.pk = add i32 %i.pj, %i.ot                    ; 7 uses
  %i.pl = shl i32 %i.pi, 2                        ; 4 uses
  %i.pm = mul i32 %i.pl, %i.gz                    ; 8 uses
  %i.pn = or disjoint i32 %i.pl, 1
  %i.po = mul i32 %i.pn, %i.gz                    ; 8 uses
  %i.pp = or disjoint i32 %i.pl, 2
  %i.pq = mul i32 %i.pp, %i.gz                    ; 8 uses
  %i.pr = or disjoint i32 %i.pl, 3
  %i.ps = mul i32 %i.pr, %i.gz                    ; 8 uses
  %i.pt = and i32 %.0427791.us.i, 3
  switch i32 %i.pt, label %default.unreachable [
    i32 0, label %.preheader743.us.i
    i32 1, label %.preheader745.us.i
    i32 2, label %.preheader747.us.i
    i32 3, label %decode_blocks.exit.thread
  ]

.preheader747.us.i:                               ; preds = %.preheader749.us.i
  %i.pu = and i64 %.0425792.us.i, 7
  %i.pv = mul nsw i64 %i.pu, %i.os
  %i.pw = add nsw i64 %i.pv, %i.oo
  %.tr.us.i = trunc nsw i64 %i.pw to i16
  %i.px = shl nsw i16 %.tr.us.i, 4
  %i.py = add i32 %i.pm, %i.ou
  %i.pz = sext i32 %i.py to i64
  %i.qa = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.pz
  %i.qb = insertelement <4 x i16> poison, i16 %i.px, i64 0
  %i.qc = shufflevector <4 x i16> %i.qb, <4 x i16> poison, <4 x i32> zeroinitializer ; 4 uses
  store <4 x i16> %i.qc, ptr %i.qa, align 2, !tbaa !90
  %i.qd = add i32 %i.po, %i.ou
  %i.qe = sext i32 %i.qd to i64
  %i.qf = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.qe
  store <4 x i16> %i.qc, ptr %i.qf, align 2, !tbaa !90
  %i.qg = add i32 %i.pq, %i.ou
  %i.qh = sext i32 %i.qg to i64
  %i.qi = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.qh
  store <4 x i16> %i.qc, ptr %i.qi, align 2, !tbaa !90
  %i.qj = add i32 %i.ps, %i.ou
  %i.qk = sext i32 %i.qj to i64
  %i.ql = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.qk
  store <4 x i16> %i.qc, ptr %i.ql, align 2, !tbaa !90
  br label %.loopexit748.us.i

.preheader745.us.i:                               ; preds = %.preheader749.us.i
  %i.qm = add i32 %i.pm, %i.ov
  %i.qn = sext i32 %i.qm to i64
  %i.qo = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.qn
  store <4 x i16> splat (i16 4095), ptr %i.qo, align 2, !tbaa !90
  %i.qp = add i32 %i.po, %i.ov
  %i.qq = sext i32 %i.qp to i64
  %i.qr = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.qq
  store <4 x i16> splat (i16 4095), ptr %i.qr, align 2, !tbaa !90
  %i.qs = add i32 %i.pq, %i.ov
  %i.qt = sext i32 %i.qs to i64
  %i.qu = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.qt
  store <4 x i16> splat (i16 4095), ptr %i.qu, align 2, !tbaa !90
  %i.qv = add i32 %i.ps, %i.ov
  %i.qw = sext i32 %i.qv to i64
  %i.qx = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.qw
  store <4 x i16> splat (i16 4095), ptr %i.qx, align 2, !tbaa !90
  br label %.loopexit748.us.i

.preheader743.us.i:                               ; preds = %.preheader749.us.i
  %i.qy = sext i32 %i.pk to i64
  %i.qz = shl nsw i64 %i.qy, 1
  %scevgep.i = getelementptr i8, ptr %.1450795.us.i, i64 %i.qz
  store i64 0, ptr %scevgep.i, align 2
  %i.ra = add i32 %i.pk, %i.gz
  %i.rb = sext i32 %i.ra to i64
  %i.rc = shl nsw i64 %i.rb, 1
  %scevgep.1.i = getelementptr i8, ptr %.1450795.us.i, i64 %i.rc
  store i64 0, ptr %scevgep.1.i, align 2
  %i.rd = add i32 %i.pk, %i.nl
  %i.re = sext i32 %i.rd to i64
  %i.rf = shl nsw i64 %i.re, 1
  %scevgep.2.i = getelementptr i8, ptr %.1450795.us.i, i64 %i.rf
  store i64 0, ptr %scevgep.2.i, align 2
  %i.rg = add i32 %i.pk, %i.nm
  %i.rh = sext i32 %i.rg to i64
  %i.ri = shl nsw i64 %i.rh, 1
  %scevgep.3.i = getelementptr i8, ptr %.1450795.us.i, i64 %i.ri
  store i64 0, ptr %scevgep.3.i, align 2
  br label %.loopexit748.us.i

.loopexit748.us.i:                                ; preds = %.preheader743.us.i, %.preheader745.us.i, %.preheader747.us.i
  %i.rj = lshr i32 %.0427791.us.i, 2
  %i.rk = and i32 %i.rj, 3
  switch i32 %i.rk, label %default.unreachable [
    i32 0, label %.preheader743.us.i.1
    i32 1, label %.preheader745.us.i.1
    i32 2, label %.preheader747.us.i.1
    i32 3, label %decode_blocks.exit.thread
  ]

.preheader747.us.i.1:                             ; preds = %.loopexit748.us.i
  %i.rl = lshr i64 %.0425792.us.i, 3
  %i.rm = and i64 %i.rl, 7
  %i.rn = mul nsw i64 %i.rm, %i.os
  %i.ro = add nsw i64 %i.rn, %i.oo
  %.tr.us.i.1 = trunc nsw i64 %i.ro to i16
  %i.rp = shl nsw i16 %.tr.us.i.1, 4
  %i.rq = add i32 %i.pm, %i.ox
  %i.rr = sext i32 %i.rq to i64
  %i.rs = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.rr
  %i.rt = insertelement <4 x i16> poison, i16 %i.rp, i64 0
  %i.ru = shufflevector <4 x i16> %i.rt, <4 x i16> poison, <4 x i32> zeroinitializer ; 4 uses
  store <4 x i16> %i.ru, ptr %i.rs, align 2, !tbaa !90
  %i.rv = add i32 %i.po, %i.ox
  %i.rw = sext i32 %i.rv to i64
  %i.rx = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.rw
  store <4 x i16> %i.ru, ptr %i.rx, align 2, !tbaa !90
  %i.ry = add i32 %i.pq, %i.ox
  %i.rz = sext i32 %i.ry to i64
  %i.sa = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.rz
  store <4 x i16> %i.ru, ptr %i.sa, align 2, !tbaa !90
  %i.sb = add i32 %i.ps, %i.ox
  %i.sc = sext i32 %i.sb to i64
  %i.sd = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.sc
  store <4 x i16> %i.ru, ptr %i.sd, align 2, !tbaa !90
  br label %.loopexit748.us.i.1

.preheader745.us.i.1:                             ; preds = %.loopexit748.us.i
  %i.se = add i32 %i.pm, %i.oz
  %i.sf = sext i32 %i.se to i64
  %i.sg = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.sf
  store <4 x i16> splat (i16 4095), ptr %i.sg, align 2, !tbaa !90
  %i.sh = add i32 %i.po, %i.oz
  %i.si = sext i32 %i.sh to i64
  %i.sj = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.si
  store <4 x i16> splat (i16 4095), ptr %i.sj, align 2, !tbaa !90
  %i.sk = add i32 %i.pq, %i.oz
  %i.sl = sext i32 %i.sk to i64
  %i.sm = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.sl
  store <4 x i16> splat (i16 4095), ptr %i.sm, align 2, !tbaa !90
  %i.sn = add i32 %i.ps, %i.oz
  %i.so = sext i32 %i.sn to i64
  %i.sp = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.so
  store <4 x i16> splat (i16 4095), ptr %i.sp, align 2, !tbaa !90
  br label %.loopexit748.us.i.1

.preheader743.us.i.1:                             ; preds = %.loopexit748.us.i
  %i.sq = add i32 %i.pk, 4                        ; 4 uses
  %i.sr = sext i32 %i.sq to i64
  %i.ss = shl nsw i64 %i.sr, 1
  %scevgep.i.1 = getelementptr i8, ptr %.1450795.us.i, i64 %i.ss
  store i64 0, ptr %scevgep.i.1, align 2
  %i.st = add i32 %i.sq, %i.gz
  %i.su = sext i32 %i.st to i64
  %i.sv = shl nsw i64 %i.su, 1
  %scevgep.1.i.1 = getelementptr i8, ptr %.1450795.us.i, i64 %i.sv
  store i64 0, ptr %scevgep.1.i.1, align 2
  %i.sw = add i32 %i.sq, %i.nl
  %i.sx = sext i32 %i.sw to i64
  %i.sy = shl nsw i64 %i.sx, 1
  %scevgep.2.i.1 = getelementptr i8, ptr %.1450795.us.i, i64 %i.sy
  store i64 0, ptr %scevgep.2.i.1, align 2
  %i.sz = add i32 %i.sq, %i.nm
  %i.ta = sext i32 %i.sz to i64
  %i.tb = shl nsw i64 %i.ta, 1
  %scevgep.3.i.1 = getelementptr i8, ptr %.1450795.us.i, i64 %i.tb
  store i64 0, ptr %scevgep.3.i.1, align 2
  br label %.loopexit748.us.i.1

.loopexit748.us.i.1:                              ; preds = %.preheader743.us.i.1, %.preheader745.us.i.1, %.preheader747.us.i.1
  %i.tc = lshr i32 %.0427791.us.i, 4
  %i.td = and i32 %i.tc, 3
  switch i32 %i.td, label %default.unreachable [
    i32 0, label %.preheader743.us.i.2
    i32 1, label %.preheader745.us.i.2
    i32 2, label %.preheader747.us.i.2
    i32 3, label %decode_blocks.exit.thread
  ]

.preheader747.us.i.2:                             ; preds = %.loopexit748.us.i.1
  %i.te = lshr i64 %.0425792.us.i, 6
  %i.tf = and i64 %i.te, 7
  %i.tg = mul nsw i64 %i.tf, %i.os
  %i.th = add nsw i64 %i.tg, %i.oo
  %.tr.us.i.2 = trunc nsw i64 %i.th to i16
  %i.ti = shl nsw i16 %.tr.us.i.2, 4
  %i.tj = add i32 %i.pm, %i.pb
  %i.tk = sext i32 %i.tj to i64
  %i.tl = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.tk
  %i.tm = insertelement <4 x i16> poison, i16 %i.ti, i64 0
  %i.tn = shufflevector <4 x i16> %i.tm, <4 x i16> poison, <4 x i32> zeroinitializer ; 4 uses
  store <4 x i16> %i.tn, ptr %i.tl, align 2, !tbaa !90
  %i.to = add i32 %i.po, %i.pb
  %i.tp = sext i32 %i.to to i64
  %i.tq = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.tp
  store <4 x i16> %i.tn, ptr %i.tq, align 2, !tbaa !90
  %i.tr = add i32 %i.pq, %i.pb
  %i.ts = sext i32 %i.tr to i64
  %i.tt = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.ts
  store <4 x i16> %i.tn, ptr %i.tt, align 2, !tbaa !90
  %i.tu = add i32 %i.ps, %i.pb
  %i.tv = sext i32 %i.tu to i64
  %i.tw = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.tv
  store <4 x i16> %i.tn, ptr %i.tw, align 2, !tbaa !90
  br label %.loopexit748.us.i.2

.preheader745.us.i.2:                             ; preds = %.loopexit748.us.i.1
  %i.tx = add i32 %i.pm, %i.pd
  %i.ty = sext i32 %i.tx to i64
  %i.tz = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.ty
  store <4 x i16> splat (i16 4095), ptr %i.tz, align 2, !tbaa !90
  %i.ua = add i32 %i.po, %i.pd
  %i.ub = sext i32 %i.ua to i64
  %i.uc = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.ub
  store <4 x i16> splat (i16 4095), ptr %i.uc, align 2, !tbaa !90
  %i.ud = add i32 %i.pq, %i.pd
  %i.ue = sext i32 %i.ud to i64
  %i.uf = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.ue
  store <4 x i16> splat (i16 4095), ptr %i.uf, align 2, !tbaa !90
  %i.ug = add i32 %i.ps, %i.pd
  %i.uh = sext i32 %i.ug to i64
  %i.ui = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.uh
  store <4 x i16> splat (i16 4095), ptr %i.ui, align 2, !tbaa !90
  br label %.loopexit748.us.i.2

.preheader743.us.i.2:                             ; preds = %.loopexit748.us.i.1
  %i.uj = add i32 %i.pk, 8                        ; 4 uses
  %i.uk = sext i32 %i.uj to i64
  %i.ul = shl nsw i64 %i.uk, 1
  %scevgep.i.2 = getelementptr i8, ptr %.1450795.us.i, i64 %i.ul
  store i64 0, ptr %scevgep.i.2, align 2
  %i.um = add i32 %i.uj, %i.gz
  %i.un = sext i32 %i.um to i64
  %i.uo = shl nsw i64 %i.un, 1
  %scevgep.1.i.2 = getelementptr i8, ptr %.1450795.us.i, i64 %i.uo
  store i64 0, ptr %scevgep.1.i.2, align 2
  %i.up = add i32 %i.uj, %i.nl
  %i.uq = sext i32 %i.up to i64
  %i.ur = shl nsw i64 %i.uq, 1
  %scevgep.2.i.2 = getelementptr i8, ptr %.1450795.us.i, i64 %i.ur
  store i64 0, ptr %scevgep.2.i.2, align 2
  %i.us = add i32 %i.uj, %i.nm
  %i.ut = sext i32 %i.us to i64
  %i.uu = shl nsw i64 %i.ut, 1
  %scevgep.3.i.2 = getelementptr i8, ptr %.1450795.us.i, i64 %i.uu
  store i64 0, ptr %scevgep.3.i.2, align 2
  br label %.loopexit748.us.i.2

.loopexit748.us.i.2:                              ; preds = %.preheader743.us.i.2, %.preheader745.us.i.2, %.preheader747.us.i.2
  %i.uv = lshr i32 %.0427791.us.i, 6
  %i.uw = and i32 %i.uv, 3
  switch i32 %i.uw, label %default.unreachable [
    i32 0, label %.preheader743.us.i.3
    i32 1, label %.preheader745.us.i.3
    i32 2, label %.preheader747.us.i.3
    i32 3, label %decode_blocks.exit.thread
  ]

.preheader747.us.i.3:                             ; preds = %.loopexit748.us.i.2
  %i.ux = lshr i64 %.0425792.us.i, 9
  %i.uy = and i64 %i.ux, 7
  %i.uz = mul nsw i64 %i.uy, %i.os
  %i.va = add nsw i64 %i.uz, %i.oo
  %.tr.us.i.3 = trunc nsw i64 %i.va to i16
  %i.vb = shl nsw i16 %.tr.us.i.3, 4
  %i.vc = add i32 %i.pm, %i.pf
  %i.vd = sext i32 %i.vc to i64
  %i.ve = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.vd
  %i.vf = insertelement <4 x i16> poison, i16 %i.vb, i64 0
  %i.vg = shufflevector <4 x i16> %i.vf, <4 x i16> poison, <4 x i32> zeroinitializer ; 4 uses
  store <4 x i16> %i.vg, ptr %i.ve, align 2, !tbaa !90
  %i.vh = add i32 %i.po, %i.pf
  %i.vi = sext i32 %i.vh to i64
  %i.vj = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.vi
  store <4 x i16> %i.vg, ptr %i.vj, align 2, !tbaa !90
  %i.vk = add i32 %i.pq, %i.pf
  %i.vl = sext i32 %i.vk to i64
  %i.vm = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.vl
  store <4 x i16> %i.vg, ptr %i.vm, align 2, !tbaa !90
  %i.vn = add i32 %i.ps, %i.pf
  %i.vo = sext i32 %i.vn to i64
  %i.vp = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.vo
  store <4 x i16> %i.vg, ptr %i.vp, align 2, !tbaa !90
  br label %.loopexit748.us.i.3

.preheader745.us.i.3:                             ; preds = %.loopexit748.us.i.2
  %i.vq = add i32 %i.pm, %i.ph
  %i.vr = sext i32 %i.vq to i64
  %i.vs = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.vr
  store <4 x i16> splat (i16 4095), ptr %i.vs, align 2, !tbaa !90
  %i.vt = add i32 %i.po, %i.ph
  %i.vu = sext i32 %i.vt to i64
  %i.vv = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.vu
  store <4 x i16> splat (i16 4095), ptr %i.vv, align 2, !tbaa !90
  %i.vw = add i32 %i.pq, %i.ph
  %i.vx = sext i32 %i.vw to i64
  %i.vy = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.vx
  store <4 x i16> splat (i16 4095), ptr %i.vy, align 2, !tbaa !90
  %i.vz = add i32 %i.ps, %i.ph
  %i.wa = sext i32 %i.vz to i64
  %i.wb = getelementptr inbounds [2 x i8], ptr %.1450795.us.i, i64 %i.wa
  store <4 x i16> splat (i16 4095), ptr %i.wb, align 2, !tbaa !90
  br label %.loopexit748.us.i.3

.preheader743.us.i.3:                             ; preds = %.loopexit748.us.i.2
  %i.wc = add i32 %i.pk, 12                       ; 4 uses
  %i.wd = sext i32 %i.wc to i64
  %i.we = shl nsw i64 %i.wd, 1
  %scevgep.i.3 = getelementptr i8, ptr %.1450795.us.i, i64 %i.we
  store i64 0, ptr %scevgep.i.3, align 2
  %i.wf = add i32 %i.wc, %i.gz
  %i.wg = sext i32 %i.wf to i64
  %i.wh = shl nsw i64 %i.wg, 1
  %scevgep.1.i.3 = getelementptr i8, ptr %.1450795.us.i, i64 %i.wh
  store i64 0, ptr %scevgep.1.i.3, align 2
  %i.wi = add i32 %i.wc, %i.nl
  %i.wj = sext i32 %i.wi to i64
  %i.wk = shl nsw i64 %i.wj, 1
  %scevgep.2.i.3 = getelementptr i8, ptr %.1450795.us.i, i64 %i.wk
  store i64 0, ptr %scevgep.2.i.3, align 2
  %i.wl = add i32 %i.wc, %i.nm
  %i.wm = sext i32 %i.wl to i64
  %i.wn = shl nsw i64 %i.wm, 1
  %scevgep.3.i.3 = getelementptr i8, ptr %.1450795.us.i, i64 %i.wn
  store i64 0, ptr %scevgep.3.i.3, align 2
  br label %.loopexit748.us.i.3

.loopexit748.us.i.3:                              ; preds = %.preheader743.us.i.3, %.preheader745.us.i.3, %.preheader747.us.i.3
  %i.wo = lshr i64 %.0425792.us.i, 12
  %i.wp = lshr i32 %.0427791.us.i, 8
  %indvars.iv.next887.i = add nuw nsw i64 %indvars.iv886.i, 1 ; 2 uses
  %exitcond889.not.i = icmp eq i64 %indvars.iv.next887.i, 4
  br i1 %exitcond889.not.i, label %bb.ay, label %.preheader749.us.i, !llvm.loop !54

bb.ay:                                            ; preds = %.loopexit748.us.i.3
  %indvars.iv.next891.i = add nuw nsw i64 %indvars.iv890.i, 16 ; 2 uses
  %i.wq = icmp samesign ult i64 %indvars.iv.next891.i, %i.nk
  br i1 %i.wq, label %bb.as, label %._crit_edge.us797.i, !llvm.loop !55

._crit_edge.us797.i:                              ; preds = %bb.ay
  %i.wr = getelementptr [2 x i8], ptr %.1450795.us.i, i64 %i.ni
  %i.ws = add nuw nsw i32 %.0430796.us.i, 16      ; 2 uses
  %i.wt = icmp slt i32 %i.ws, %4
  br i1 %i.wt, label %.preheader751.us.i, label %.loopexit739.i, !llvm.loop !56

default.unreachable:                              ; preds = %.loopexit748.us.i.2, %.loopexit748.us.i.1, %.loopexit748.us.i, %.preheader749.us.i
  unreachable

.loopexit739.i:                                   ; preds = %._crit_edge.us797.i, %._crit_edge.i, %.preheader751.lr.ph.i, %.preheader753.i, %.preheader737.lr.ph.i, %.preheader738.i
  %i.wu = load i32, ptr %i.ck, align 8, !tbaa !76 ; 2 uses
  %i.wv = icmp slt i32 %i.wu, 0
  %..i562.i = tail call i32 @llvm.smin.i32(i32 %i.wu, i32 %.pre-phi115)
  %.0.i563.i = select i1 %i.wv, i32 0, i32 %..i562.i
  %i.ww = sext i32 %.0.i563.i to i64
  %i.wx = getelementptr inbounds i8, ptr %.sroa.20.0.copyload661.i, i64 %i.ww
  %i.wy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !32
  %i.xa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !32
  br i1 %.not478765.i, label %.preheader736.lr.ph.i, label %decode_blocks.exit

.preheader736.lr.ph.i:                            ; preds = %.loopexit739.i
  %i.xc = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.xd = load <2 x i32>, ptr %i.xc, align 4, !tbaa !28
  %i.xe = sdiv <2 x i32> %i.xd, splat (i32 2)     ; 2 uses
  %i.xf = icmp sgt i32 %.fr.i, 0
  %i.xg = extractelement <2 x i32> %i.xe, i64 0   ; 2 uses
  %i.xh = shl nsw i32 %i.xg, 4
  %i.xi = sext i32 %i.xh to i64
  %i.xj = extractelement <2 x i32> %i.xe, i64 1   ; 2 uses
  %i.xk = shl nsw i32 %i.xj, 4
  %i.xl = sext i32 %i.xk to i64
  br i1 %i.xf, label %.preheader736.lr.ph.split.i, label %decode_blocks.exit

.preheader736.lr.ph.split.i:                      ; preds = %.preheader736.lr.ph.i
  %i.xm = load i32, ptr %i.dr, align 8, !tbaa !79
  %i.xn = sext i32 %i.xg to i64
  %i.xo = sext i32 %i.xj to i64
  %i.xp = zext nneg i32 %.fr.i to i64
  br label %.preheader736.i

.preheader736.i:                                  ; preds = %._crit_edge831.i, %.preheader736.lr.ph.split.i
  %.0416835.i = phi i32 [ 0, %.preheader736.lr.ph.split.i ], [ %i.xs, %._crit_edge831.i ]
  %.0451834.i = phi ptr [ %i.xb, %.preheader736.lr.ph.split.i ], [ %i.xr, %._crit_edge831.i ] ; 2 uses
  %.0452833.i = phi ptr [ %i.wz, %.preheader736.lr.ph.split.i ], [ %i.xq, %._crit_edge831.i ] ; 2 uses
  %.sroa.0647.1832.i = phi ptr [ %i.wx, %.preheader736.lr.ph.split.i ], [ %.sroa.0647.3.i, %._crit_edge831.i ]
  br label %bb.az

._crit_edge831.i:                                 ; preds = %bb.bz
  %i.xq = getelementptr inbounds [2 x i8], ptr %.0452833.i, i64 %i.xi
  %i.xr = getelementptr inbounds [2 x i8], ptr %.0451834.i, i64 %i.xl
  %i.xs = add nuw nsw i32 %.0416835.i, 16         ; 2 uses
  %i.xt = icmp slt i32 %i.xs, %4
  br i1 %i.xt, label %.preheader736.i, label %decode_blocks.exit, !llvm.loop !57

bb.az:                                            ; preds = %bb.bz, %.preheader736.i
  %indvars.iv953.i = phi i64 [ 0, %.preheader736.i ], [ %indvars.iv.next954.i, %bb.bz ] ; 3 uses
  %.sroa.0647.2829.i = phi ptr [ %.sroa.0647.1832.i, %.preheader736.i ], [ %.sroa.0647.3.i, %bb.bz ] ; 3 uses
  %i.xu = ptrtoint ptr %.sroa.0647.2829.i to i64
  %i.xv = sub i64 %i.fz, %i.xu
  %i.xw = icmp slt i64 %i.xv, 4
  br i1 %i.xw, label %bytestream2_get_le32.exit487.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.xx = getelementptr inbounds nuw i8, ptr %.sroa.0647.2829.i, i64 4
  %i.xy = load i32, ptr %.sroa.0647.2829.i, align 1, !tbaa !33
  %i.xz = shl i32 %i.xy, 2
  br label %bytestream2_get_le32.exit487.i

bytestream2_get_le32.exit487.i:                   ; preds = %bb.ba, %bb.az
  %.sroa.0647.3.i = phi ptr [ %i.xx, %bb.ba ], [ %.sroa.16654.0.copyload.i, %bb.az ] ; 2 uses
  %.0.i486.i = phi i32 [ %i.xz, %bb.ba ], [ 0, %bb.az ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.c, i8 0, i64 1024, i1 false)
  %i.ya = add i32 %.0.i486.i, %i.xm               ; 2 uses
  %i.yb = icmp slt i32 %i.ya, 0
  %..i564.i = tail call i32 @llvm.smin.i32(i32 %i.ya, i32 %.pre-phi115)
  %.0.i565.i = select i1 %i.yb, i32 0, i32 %..i564.i
  %i.yc = sext i32 %.0.i565.i to i64
  %i.yd = getelementptr inbounds i8, ptr %.sroa.20.0.copyload661.i, i64 %i.yc ; 3 uses
  %i.ye = ptrtoint ptr %i.yd to i64
  %i.yf = sub i64 %i.fz, %i.ye
  %i.yg = icmp slt i64 %i.yf, 2
  br i1 %i.yg, label %bytestream2_get_le16.exit541.i, label %bb.bb

bb.bb:                                            ; preds = %bytestream2_get_le32.exit487.i
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yd, i64 2 ; 2 uses
  %i.yi = load i16, ptr %i.yd, align 1, !tbaa !33
  %i.yj = zext i16 %i.yi to i32
  %.pre957.i = ptrtoint ptr %i.yh to i64
  br label %bytestream2_get_le16.exit541.i

bytestream2_get_le16.exit541.i:                   ; preds = %bb.bb, %bytestream2_get_le32.exit487.i
  %.pre-phi958.i = phi i64 [ %i.fz, %bytestream2_get_le32.exit487.i ], [ %.pre957.i, %bb.bb ]
  %.sroa.0575.20.i = phi ptr [ %.sroa.16654.0.copyload.i, %bytestream2_get_le32.exit487.i ], [ %i.yh, %bb.bb ] ; 2 uses
  %.0.i540.i = phi i32 [ 0, %bytestream2_get_le32.exit487.i ], [ %i.yj, %bb.bb ] ; 2 uses
  %i.yk = sub i64 %i.fz, %.pre-phi958.i
  %i.yl = icmp slt i64 %i.yk, 2
  br i1 %i.yl, label %bytestream2_get_le16.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bytestream2_get_le16.exit541.i
  %i.ym = getelementptr inbounds nuw i8, ptr %.sroa.0575.20.i, i64 2
  %i.yn = load i16, ptr %.sroa.0575.20.i, align 1, !tbaa !33
  %i.yo = icmp eq i16 %i.yn, 0
  br label %bytestream2_get_le16.exit.i

bytestream2_get_le16.exit.i:                      ; preds = %bb.bc, %bytestream2_get_le16.exit541.i
  %.sroa.0575.19.i = phi ptr [ %i.ym, %bb.bc ], [ %.sroa.16654.0.copyload.i, %bytestream2_get_le16.exit541.i ] ; 4 uses
  %.0.i539.i = phi i1 [ %i.yo, %bb.bc ], [ true, %bytestream2_get_le16.exit541.i ] ; 2 uses
  %i.yp = icmp eq i32 %.0.i540.i, 0
  %or.cond.i69 = select i1 %.0.i539.i, i1 %i.yp, i1 false
  br i1 %or.cond.i69, label %bb.bd, label %.preheader732.i

bb.bd:                                            ; preds = %bytestream2_get_le16.exit.i
  %i.yq = ptrtoint ptr %.sroa.0575.19.i to i64
  %i.yr = sub i64 %i.fz, %i.yq
  %i.ys = icmp slt i64 %i.yr, 1
  br i1 %i.ys, label %bytestream2_get_byte.exit538.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.yt = getelementptr inbounds nuw i8, ptr %.sroa.0575.19.i, i64 1 ; 2 uses
  %i.yu = load i8, ptr %.sroa.0575.19.i, align 1, !tbaa !33
  %i.yv = zext i8 %i.yu to i32
  %.pre959.i = ptrtoint ptr %i.yt to i64
  br label %bytestream2_get_byte.exit538.i

bytestream2_get_byte.exit538.i:                   ; preds = %bb.be, %bb.bd
  %.pre-phi960.i = phi i64 [ %i.fz, %bb.bd ], [ %.pre959.i, %bb.be ]
  %.sroa.0575.18.i = phi ptr [ %.sroa.16654.0.copyload.i, %bb.bd ], [ %i.yt, %bb.be ] ; 2 uses
  %.0.i537.i = phi i32 [ 0, %bb.bd ], [ %i.yv, %bb.be ] ; 2 uses
  %i.yw = sub i64 %i.fz, %.pre-phi960.i
  %i.yx = icmp slt i64 %i.yw, 1
  br i1 %i.yx, label %bytestream2_get_byte.exit536.i, label %bb.bf

bb.bf:                                            ; preds = %bytestream2_get_byte.exit538.i
  %i.yy = getelementptr inbounds nuw i8, ptr %.sroa.0575.18.i, i64 1 ; 2 uses
  %i.yz = load i8, ptr %.sroa.0575.18.i, align 1, !tbaa !33
  %i.za = zext i8 %i.yz to i32
  %.pre961.i = ptrtoint ptr %i.yy to i64
  br label %bytestream2_get_byte.exit536.i

bytestream2_get_byte.exit536.i:                   ; preds = %bb.bf, %bytestream2_get_byte.exit538.i
  %.pre-phi962.i = phi i64 [ %i.fz, %bytestream2_get_byte.exit538.i ], [ %.pre961.i, %bb.bf ]
  %.sroa.0575.17.i = phi ptr [ %.sroa.16654.0.copyload.i, %bytestream2_get_byte.exit538.i ], [ %i.yy, %bb.bf ] ; 2 uses
  %.0.i535.i = phi i32 [ 0, %bytestream2_get_byte.exit538.i ], [ %i.za, %bb.bf ] ; 2 uses
  %i.zb = sub i64 %i.fz, %.pre-phi962.i
  %i.zc = icmp slt i64 %i.zb, 1
  br i1 %i.zc, label %bytestream2_get_byte.exit534.i, label %bb.bg

bb.bg:                                            ; preds = %bytestream2_get_byte.exit536.i
  %i.zd = getelementptr inbounds nuw i8, ptr %.sroa.0575.17.i, i64 1 ; 2 uses
  %i.ze = load i8, ptr %.sroa.0575.17.i, align 1, !tbaa !33
  %i.zf = zext i8 %i.ze to i32
  %.pre963.i = ptrtoint ptr %i.zd to i64
  br label %bytestream2_get_byte.exit534.i

bytestream2_get_byte.exit534.i:                   ; preds = %bb.bg, %bytestream2_get_byte.exit536.i
  %.pre-phi964.i = phi i64 [ %i.fz, %bytestream2_get_byte.exit536.i ], [ %.pre963.i, %bb.bg ]
  %.sroa.0575.16.i = phi ptr [ %.sroa.16654.0.copyload.i, %bytestream2_get_byte.exit536.i ], [ %i.zd, %bb.bg ] ; 2 uses
  %.0.i533.i = phi i32 [ 0, %bytestream2_get_byte.exit536.i ], [ %i.zf, %bb.bg ] ; 2 uses
  %i.zg = sub i64 %i.fz, %.pre-phi964.i
  %i.zh = icmp slt i64 %i.zg, 1
  br i1 %i.zh, label %bytestream2_get_byte.exit532.i, label %bb.bh

bb.bh:                                            ; preds = %bytestream2_get_byte.exit534.i
  %i.zi = getelementptr inbounds nuw i8, ptr %.sroa.0575.16.i, i64 1 ; 2 uses
  %i.zj = load i8, ptr %.sroa.0575.16.i, align 1, !tbaa !33
  %i.zk = zext i8 %i.zj to i32
  %.pre965.i = ptrtoint ptr %i.zi to i64
  br label %bytestream2_get_byte.exit532.i

bytestream2_get_byte.exit532.i:                   ; preds = %bb.bh, %bytestream2_get_byte.exit534.i
  %.pre-phi966.i = phi i64 [ %i.fz, %bytestream2_get_byte.exit534.i ], [ %.pre965.i, %bb.bh ]
  %.sroa.0575.15.i = phi ptr [ %.sroa.16654.0.copyload.i, %bytestream2_get_byte.exit534.i ], [ %i.zi, %bb.bh ]
  %.0.i531.i = phi i32 [ 0, %bytestream2_get_byte.exit534.i ], [ %i.zk, %bb.bh ] ; 2 uses
  %i.zl = sub i64 %i.fz, %.pre-phi966.i
  %i.zm = icmp slt i64 %i.zl, 4
  br i1 %i.zm, label %bytestream2_get_le32.exit485.i, label %bb.bi

bb.bi:                                            ; preds = %bytestream2_get_byte.exit532.i
  %i.zn = load i32, ptr %.sroa.0575.15.i, align 1, !tbaa !33
  br label %bytestream2_get_le32.exit485.i

bytestream2_get_le32.exit485.i:                   ; preds = %bb.bi, %bytestream2_get_byte.exit532.i
  %.0.i484.i = phi i32 [ %i.zn, %bb.bi ], [ 0, %bytestream2_get_byte.exit532.i ]
  %i.zo = shl nuw nsw i32 %.0.i537.i, 4
  %i.zp = and i32 %.0.i537.i, 15
  %i.zq = or disjoint i32 %i.zo, %i.zp            ; 5 uses
  %i.zr = shl nuw nsw i32 %.0.i535.i, 4
  %i.zs = and i32 %.0.i535.i, 15
  %i.zt = or disjoint i32 %i.zr, %i.zs            ; 5 uses
  %i.zu = shl nuw nsw i32 %.0.i533.i, 4
  %i.zv = and i32 %.0.i533.i, 15
  %i.zw = shl nuw nsw i32 %.0.i531.i, 4
  %i.zx = and i32 %.0.i531.i, 15
  %i.zy = sub nsw i32 %i.zv, %i.zq
  %i.zz = add nsw i32 %i.zy, %i.zu                ; 4 uses
  %i.aaa = sub nsw i32 %i.zx, %i.zt
  %i.aab = add nsw i32 %i.aaa, %i.zw              ; 4 uses
  br label %.preheader731.i

.preheader731.i:                                  ; preds = %.preheader731.i, %bytestream2_get_le32.exit485.i
  %indvars.iv942.i = phi i64 [ 0, %bytestream2_get_le32.exit485.i ], [ %indvars.iv.next943.i, %.preheader731.i ] ; 7 uses
  %.0412825.i = phi i32 [ %.0.i484.i, %bytestream2_get_le32.exit485.i ], [ %i.ado, %.preheader731.i ] ; 5 uses
  %i.aac = or disjoint i64 %indvars.iv942.i, 3    ; 2 uses
  %i.aad = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.aac ; 4 uses
  %i.aae = or disjoint i64 %indvars.iv942.i, 2    ; 2 uses
  %i.aaf = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.aae ; 4 uses
  %i.aag = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %i.aae ; 4 uses
  %i.aah = or disjoint i64 %indvars.iv942.i, 1    ; 2 uses
  %i.aai = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.aah ; 4 uses
  %i.aaj = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %i.aah ; 4 uses
  %i.aak = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %indvars.iv942.i ; 4 uses
  %i.aal = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %indvars.iv942.i ; 4 uses
  %i.aam = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %i.aac ; 4 uses
  %i.aan = and i32 %.0412825.i, 3                 ; 2 uses
  %i.aao = mul nsw i32 %i.aan, %i.zz
  %i.aap = add nsw i32 %i.aao, 2
  %i.aaq = sdiv i32 %i.aap, 3
  %i.aar = add nsw i32 %i.aaq, %i.zq
  %i.aas = mul nsw i32 %i.aan, %i.aab
  %i.aat = add nsw i32 %i.aas, 2
  %i.aau = sdiv i32 %i.aat, 3
  %i.aav = add nsw i32 %i.aau, %i.zt
  %i.aaw = insertelement <4 x i32> poison, i32 %i.aar, i64 0
  %i.aax = shufflevector <4 x i32> %i.aaw, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  store <4 x i32> %i.aax, ptr %i.aal, align 16, !tbaa !28
  %i.aay = insertelement <4 x i32> poison, i32 %i.aav, i64 0
  %i.aaz = shufflevector <4 x i32> %i.aay, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  store <4 x i32> %i.aaz, ptr %i.aak, align 16, !tbaa !28
  store <4 x i32> %i.aax, ptr %i.aaj, align 16, !tbaa !28
  store <4 x i32> %i.aaz, ptr %i.aai, align 16, !tbaa !28
  store <4 x i32> %i.aax, ptr %i.aag, align 16, !tbaa !28
  store <4 x i32> %i.aaz, ptr %i.aaf, align 16, !tbaa !28
  store <4 x i32> %i.aax, ptr %i.aam, align 16, !tbaa !28
  store <4 x i32> %i.aaz, ptr %i.aad, align 16, !tbaa !28
  %i.aba = lshr i32 %.0412825.i, 2
  %i.abb = and i32 %i.aba, 3                      ; 2 uses
  %i.abc = mul nsw i32 %i.abb, %i.zz
  %i.abd = add nsw i32 %i.abc, 2
  %i.abe = sdiv i32 %i.abd, 3
  %i.abf = add nsw i32 %i.abe, %i.zq
  %i.abg = mul nsw i32 %i.abb, %i.aab
  %i.abh = add nsw i32 %i.abg, 2
  %i.abi = sdiv i32 %i.abh, 3
  %i.abj = add nsw i32 %i.abi, %i.zt
  %i.abk = getelementptr inbounds nuw i8, ptr %i.aal, i64 16
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aak, i64 16
  %i.abm = insertelement <4 x i32> poison, i32 %i.abf, i64 0
  %i.abn = shufflevector <4 x i32> %i.abm, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  store <4 x i32> %i.abn, ptr %i.abk, align 16, !tbaa !28
end_hunk_0
begin_hunk_1_@decode_frame:bb.a
  %i.alb = add nsw i32 %i.akz, %i.ala             ; 16 uses
  %i.alc = and i32 %.0.i517.i, 15
  %i.ald = sub nsw i32 %i.alc, %i.aku
  %i.ale = shl nuw nsw i32 %.0.i517.i, 4
  %i.alf = add nsw i32 %i.ald, %i.ale             ; 16 uses
  %i.alg = getelementptr inbounds nuw [4 x i8], ptr %i.ajc, i64 %i.akx
  %i.alh = getelementptr inbounds nuw [4 x i8], ptr %i.ajd, i64 %i.akx
  %i.ali = and i32 %.0.i.i, 3                     ; 2 uses
  %i.alj = mul nsw i32 %i.ali, %i.alf
  %i.alk = trunc nsw i32 %i.alj to i16
  %i.all = mul nsw i32 %i.ali, %i.alb
  %i.alm = trunc nsw i32 %i.all to i16
  %i.aln = lshr i32 %.0.i.i, 2
  %i.alo = and i32 %i.aln, 3                      ; 2 uses
  %i.alp = mul nsw i32 %i.alo, %i.alf
  %i.alq = trunc nsw i32 %i.alp to i16
  %i.alr = mul nsw i32 %i.alo, %i.alb
  %i.als = trunc nsw i32 %i.alr to i16
  %i.alt = lshr i32 %.0.i.i, 4
  %i.alu = and i32 %i.alt, 3                      ; 2 uses
  %i.alv = mul nsw i32 %i.alu, %i.alf
  %i.alw = trunc nsw i32 %i.alv to i16
  %i.alx = mul nsw i32 %i.alu, %i.alb
  %i.aly = trunc nsw i32 %i.alx to i16
  %i.alz = lshr i32 %.0.i.i, 6
  %i.ama = and i32 %i.alz, 3                      ; 2 uses
  %i.amb = mul nsw i32 %i.ama, %i.alf
  %i.amc = trunc nsw i32 %i.amb to i16
  %i.amd = insertelement <4 x i16> poison, i16 %i.alk, i64 0
  %i.ame = insertelement <4 x i16> %i.amd, i16 %i.alq, i64 1
  %i.amf = insertelement <4 x i16> %i.ame, i16 %i.alw, i64 2
  %i.amg = insertelement <4 x i16> %i.amf, i16 %i.amc, i64 3
  %i.amh = add nsw <4 x i16> %i.amg, splat (i16 2)
  %i.ami = sdiv <4 x i16> %i.amh, splat (i16 3)
  %i.amj = sext <4 x i16> %i.ami to <4 x i32>
  %i.amk = add nsw <4 x i32> %i.akw, %i.amj
  store <4 x i32> %i.amk, ptr %i.alg, align 16, !tbaa !28
  %i.aml = mul nsw i32 %i.ama, %i.alb
  %i.amm = trunc nsw i32 %i.aml to i16
  %i.amn = insertelement <4 x i16> poison, i16 %i.alm, i64 0
  %i.amo = insertelement <4 x i16> %i.amn, i16 %i.als, i64 1
  %i.amp = insertelement <4 x i16> %i.amo, i16 %i.aly, i64 2
  %i.amq = insertelement <4 x i16> %i.amp, i16 %i.amm, i64 3
  %i.amr = add nsw <4 x i16> %i.amq, splat (i16 2)
  %i.ams = sdiv <4 x i16> %i.amr, splat (i16 3)
  %i.amt = sext <4 x i16> %i.ams to <4 x i32>
  %i.amu = add nsw <4 x i32> %i.akr, %i.amt
  store <4 x i32> %i.amu, ptr %i.alh, align 16, !tbaa !28
  %i.amv = lshr i32 %.0.i.i, 8
  %i.amw = getelementptr inbounds nuw [4 x i8], ptr %i.ajf, i64 %i.akx
  %i.amx = getelementptr inbounds nuw [4 x i8], ptr %i.ajg, i64 %i.akx
  %i.amy = and i32 %i.amv, 3                      ; 2 uses
  %i.amz = mul nsw i32 %i.amy, %i.alf
  %i.ana = trunc nsw i32 %i.amz to i16
  %i.anb = mul nsw i32 %i.amy, %i.alb
  %i.anc = trunc nsw i32 %i.anb to i16
  %i.and = lshr i32 %.0.i.i, 10
  %i.ane = and i32 %i.and, 3                      ; 2 uses
  %i.anf = mul nsw i32 %i.ane, %i.alf
  %i.ang = trunc nsw i32 %i.anf to i16
  %i.anh = mul nsw i32 %i.ane, %i.alb
  %i.ani = trunc nsw i32 %i.anh to i16
  %i.anj = lshr i32 %.0.i.i, 12
  %i.ank = and i32 %i.anj, 3                      ; 2 uses
  %i.anl = mul nsw i32 %i.ank, %i.alf
  %i.anm = trunc nsw i32 %i.anl to i16
  %i.ann = mul nsw i32 %i.ank, %i.alb
  %i.ano = trunc nsw i32 %i.ann to i16
  %i.anp = lshr i32 %.0.i.i, 14
  %i.anq = and i32 %i.anp, 3                      ; 2 uses
  %i.anr = mul nsw i32 %i.anq, %i.alf
  %i.ans = trunc nsw i32 %i.anr to i16
  %i.ant = insertelement <4 x i16> poison, i16 %i.ana, i64 0
  %i.anu = insertelement <4 x i16> %i.ant, i16 %i.ang, i64 1
  %i.anv = insertelement <4 x i16> %i.anu, i16 %i.anm, i64 2
  %i.anw = insertelement <4 x i16> %i.anv, i16 %i.ans, i64 3
  %i.anx = add nsw <4 x i16> %i.anw, splat (i16 2)
  %i.any = sdiv <4 x i16> %i.anx, splat (i16 3)
  %i.anz = sext <4 x i16> %i.any to <4 x i32>
  %i.aoa = add nsw <4 x i32> %i.akw, %i.anz
  store <4 x i32> %i.aoa, ptr %i.amw, align 16, !tbaa !28
  %i.aob = mul nsw i32 %i.anq, %i.alb
  %i.aoc = trunc nsw i32 %i.aob to i16
  %i.aod = insertelement <4 x i16> poison, i16 %i.anc, i64 0
  %i.aoe = insertelement <4 x i16> %i.aod, i16 %i.ani, i64 1
  %i.aof = insertelement <4 x i16> %i.aoe, i16 %i.ano, i64 2
  %i.aog = insertelement <4 x i16> %i.aof, i16 %i.aoc, i64 3
  %i.aoh = add nsw <4 x i16> %i.aog, splat (i16 2)
  %i.aoi = sdiv <4 x i16> %i.aoh, splat (i16 3)
  %i.aoj = sext <4 x i16> %i.aoi to <4 x i32>
  %i.aok = add nsw <4 x i32> %i.akr, %i.aoj
  store <4 x i32> %i.aok, ptr %i.amx, align 16, !tbaa !28
  %i.aol = lshr i32 %.0.i.i, 16
  %i.aom = getelementptr inbounds nuw [4 x i8], ptr %i.aji, i64 %i.akx
  %i.aon = getelementptr inbounds nuw [4 x i8], ptr %i.ajj, i64 %i.akx
  %i.aoo = and i32 %i.aol, 3                      ; 2 uses
  %i.aop = mul nsw i32 %i.aoo, %i.alf
  %i.aoq = trunc nsw i32 %i.aop to i16
  %i.aor = mul nsw i32 %i.aoo, %i.alb
  %i.aos = trunc nsw i32 %i.aor to i16
  %i.aot = lshr i32 %.0.i.i, 18
  %i.aou = and i32 %i.aot, 3                      ; 2 uses
  %i.aov = mul nsw i32 %i.aou, %i.alf
  %i.aow = trunc nsw i32 %i.aov to i16
  %i.aox = mul nsw i32 %i.aou, %i.alb
  %i.aoy = trunc nsw i32 %i.aox to i16
  %i.aoz = lshr i32 %.0.i.i, 20
  %i.apa = and i32 %i.aoz, 3                      ; 2 uses
  %i.apb = mul nsw i32 %i.apa, %i.alf
  %i.apc = trunc nsw i32 %i.apb to i16
  %i.apd = mul nsw i32 %i.apa, %i.alb
  %i.ape = trunc nsw i32 %i.apd to i16
  %i.apf = lshr i32 %.0.i.i, 22
  %i.apg = and i32 %i.apf, 3                      ; 2 uses
  %i.aph = mul nsw i32 %i.apg, %i.alf
  %i.api = trunc nsw i32 %i.aph to i16
  %i.apj = insertelement <4 x i16> poison, i16 %i.aoq, i64 0
  %i.apk = insertelement <4 x i16> %i.apj, i16 %i.aow, i64 1
  %i.apl = insertelement <4 x i16> %i.apk, i16 %i.apc, i64 2
  %i.apm = insertelement <4 x i16> %i.apl, i16 %i.api, i64 3
  %i.apn = add nsw <4 x i16> %i.apm, splat (i16 2)
  %i.apo = sdiv <4 x i16> %i.apn, splat (i16 3)
  %i.app = sext <4 x i16> %i.apo to <4 x i32>
  %i.apq = add nsw <4 x i32> %i.akw, %i.app
  store <4 x i32> %i.apq, ptr %i.aom, align 16, !tbaa !28
  %i.apr = mul nsw i32 %i.apg, %i.alb
  %i.aps = trunc nsw i32 %i.apr to i16
  %i.apt = insertelement <4 x i16> poison, i16 %i.aos, i64 0
  %i.apu = insertelement <4 x i16> %i.apt, i16 %i.aoy, i64 1
  %i.apv = insertelement <4 x i16> %i.apu, i16 %i.ape, i64 2
  %i.apw = insertelement <4 x i16> %i.apv, i16 %i.aps, i64 3
  %i.apx = add nsw <4 x i16> %i.apw, splat (i16 2)
  %i.apy = sdiv <4 x i16> %i.apx, splat (i16 3)
  %i.apz = sext <4 x i16> %i.apy to <4 x i32>
  %i.aqa = add nsw <4 x i32> %i.akr, %i.apz
  store <4 x i32> %i.aqa, ptr %i.aon, align 16, !tbaa !28
  %i.aqb = lshr i32 %.0.i.i, 24
  %i.aqc = getelementptr inbounds nuw [4 x i8], ptr %i.ajl, i64 %i.akx
  %i.aqd = getelementptr inbounds nuw [4 x i8], ptr %i.ajm, i64 %i.akx
  %i.aqe = and i32 %i.aqb, 3                      ; 2 uses
  %i.aqf = mul nsw i32 %i.aqe, %i.alf
  %i.aqg = trunc nsw i32 %i.aqf to i16
  %i.aqh = mul nsw i32 %i.aqe, %i.alb
  %i.aqi = trunc nsw i32 %i.aqh to i16
  %i.aqj = lshr i32 %.0.i.i, 26
  %i.aqk = and i32 %i.aqj, 3                      ; 2 uses
  %i.aql = mul nsw i32 %i.aqk, %i.alf
  %i.aqm = trunc nsw i32 %i.aql to i16
  %i.aqn = mul nsw i32 %i.aqk, %i.alb
  %i.aqo = trunc nsw i32 %i.aqn to i16
  %i.aqp = lshr i32 %.0.i.i, 28
  %i.aqq = and i32 %i.aqp, 3                      ; 2 uses
  %i.aqr = mul nsw i32 %i.aqq, %i.alf
  %i.aqs = trunc nsw i32 %i.aqr to i16
  %i.aqt = mul nsw i32 %i.aqq, %i.alb
  %i.aqu = trunc nsw i32 %i.aqt to i16
  %i.aqv = lshr i32 %.0.i.i, 30                   ; 2 uses
  %i.aqw = mul nsw i32 %i.aqv, %i.alf
  %i.aqx = trunc nsw i32 %i.aqw to i16
  %i.aqy = insertelement <4 x i16> poison, i16 %i.aqg, i64 0
  %i.aqz = insertelement <4 x i16> %i.aqy, i16 %i.aqm, i64 1
  %i.ara = insertelement <4 x i16> %i.aqz, i16 %i.aqs, i64 2
  %i.arb = insertelement <4 x i16> %i.ara, i16 %i.aqx, i64 3
  %i.arc = add nsw <4 x i16> %i.arb, splat (i16 2)
  %i.ard = sdiv <4 x i16> %i.arc, splat (i16 3)
  %i.are = sext <4 x i16> %i.ard to <4 x i32>
  %i.arf = add nsw <4 x i32> %i.akw, %i.are
  store <4 x i32> %i.arf, ptr %i.aqc, align 16, !tbaa !28
  %i.arg = mul nsw i32 %i.aqv, %i.alb
  %i.arh = trunc nsw i32 %i.arg to i16
  %i.ari = insertelement <4 x i16> poison, i16 %i.aqi, i64 0
  %i.arj = insertelement <4 x i16> %i.ari, i16 %i.aqo, i64 1
  %i.ark = insertelement <4 x i16> %i.arj, i16 %i.aqu, i64 2
  %i.arl = insertelement <4 x i16> %i.ark, i16 %i.arh, i64 3
  %i.arm = add nsw <4 x i16> %i.arl, splat (i16 2)
  %i.arn = sdiv <4 x i16> %i.arm, splat (i16 3)
  %i.aro = sext <4 x i16> %i.arn to <4 x i32>
  %i.arp = add nsw <4 x i32> %i.akr, %i.aro
  store <4 x i32> %i.arp, ptr %i.aqd, align 16, !tbaa !28
  br i1 %i.ajn, label %bb.bt, label %bb.bs, !llvm.loop !62

.loopexit.i:                                      ; preds = %.preheader726.i, %bb.bs, %bb.br
  %.sroa.0575.4.i = phi ptr [ %.sroa.0575.1815.i, %bb.br ], [ %.sroa.0575.5.i, %bb.bs ], [ %.sroa.0575.6.i, %.preheader726.i ] ; 2 uses
  %i.arq = lshr i32 %.1414816.i, 1                ; 2 uses
  br i1 %i.adr, label %bb.bk, label %bb.bj, !llvm.loop !63

.loopexit733.i:                                   ; preds = %bb.bj, %.preheader731.i
  %invariant.gep = getelementptr [2 x i8], ptr %.0452833.i, i64 %indvars.iv953.i
  %invariant.gep92 = getelementptr [2 x i8], ptr %.0451834.i, i64 %indvars.iv953.i
  br label %.preheader730.i

.preheader730.i:                                  ; preds = %.preheader730.i, %.loopexit733.i
  %indvars.iv949.i = phi i64 [ 0, %.loopexit733.i ], [ %indvars.iv.next950.i, %.preheader730.i ] ; 5 uses
  %i.arr = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %indvars.iv949.i ; 16 uses
  %i.ars = mul nsw i64 %indvars.iv949.i, %i.xn
  %i.art = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %indvars.iv949.i ; 16 uses
  %i.aru = mul nsw i64 %indvars.iv949.i, %i.xo
  %i.arv = load i32, ptr %i.arr, align 16, !tbaa !28
  %i.arw = trunc i32 %i.arv to i16
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.ars ; 16 uses
  store i16 %i.arw, ptr %gep, align 2, !tbaa !90
  %i.arx = load i32, ptr %i.art, align 16, !tbaa !28
  %i.ary = trunc i32 %i.arx to i16
  %gep93 = getelementptr [2 x i8], ptr %invariant.gep92, i64 %i.aru ; 16 uses
  store i16 %i.ary, ptr %gep93, align 2, !tbaa !90
  %i.arz = getelementptr inbounds nuw i8, ptr %i.arr, i64 4
  %i.asa = load i32, ptr %i.arz, align 4, !tbaa !28
  %i.asb = trunc i32 %i.asa to i16
  %i.asc = getelementptr i8, ptr %gep, i64 2
  store i16 %i.asb, ptr %i.asc, align 2, !tbaa !90
  %i.asd = getelementptr inbounds nuw i8, ptr %i.art, i64 4
  %i.ase = load i32, ptr %i.asd, align 4, !tbaa !28
  %i.asf = trunc i32 %i.ase to i16
  %i.asg = getelementptr i8, ptr %gep93, i64 2
  store i16 %i.asf, ptr %i.asg, align 2, !tbaa !90
  %i.ash = getelementptr inbounds nuw i8, ptr %i.arr, i64 8
  %i.asi = load i32, ptr %i.ash, align 8, !tbaa !28
  %i.asj = trunc i32 %i.asi to i16
  %i.ask = getelementptr i8, ptr %gep, i64 4
  store i16 %i.asj, ptr %i.ask, align 2, !tbaa !90
  %i.asl = getelementptr inbounds nuw i8, ptr %i.art, i64 8
  %i.asm = load i32, ptr %i.asl, align 8, !tbaa !28
  %i.asn = trunc i32 %i.asm to i16
  %i.aso = getelementptr i8, ptr %gep93, i64 4
  store i16 %i.asn, ptr %i.aso, align 2, !tbaa !90
  %i.asp = getelementptr inbounds nuw i8, ptr %i.arr, i64 12
  %i.asq = load i32, ptr %i.asp, align 4, !tbaa !28
  %i.asr = trunc i32 %i.asq to i16
  %i.ass = getelementptr i8, ptr %gep, i64 6
  store i16 %i.asr, ptr %i.ass, align 2, !tbaa !90
  %i.ast = getelementptr inbounds nuw i8, ptr %i.art, i64 12
  %i.asu = load i32, ptr %i.ast, align 4, !tbaa !28
  %i.asv = trunc i32 %i.asu to i16
  %i.asw = getelementptr i8, ptr %gep93, i64 6
  store i16 %i.asv, ptr %i.asw, align 2, !tbaa !90
  %i.asx = getelementptr inbounds nuw i8, ptr %i.arr, i64 16
  %i.asy = load i32, ptr %i.asx, align 16, !tbaa !28
  %i.asz = trunc i32 %i.asy to i16
  %i.ata = getelementptr i8, ptr %gep, i64 8
  store i16 %i.asz, ptr %i.ata, align 2, !tbaa !90
  %i.atb = getelementptr inbounds nuw i8, ptr %i.art, i64 16
  %i.atc = load i32, ptr %i.atb, align 16, !tbaa !28
  %i.atd = trunc i32 %i.atc to i16
  %i.ate = getelementptr i8, ptr %gep93, i64 8
  store i16 %i.atd, ptr %i.ate, align 2, !tbaa !90
  %i.atf = getelementptr inbounds nuw i8, ptr %i.arr, i64 20
  %i.atg = load i32, ptr %i.atf, align 4, !tbaa !28
  %i.ath = trunc i32 %i.atg to i16
  %i.ati = getelementptr i8, ptr %gep, i64 10
  store i16 %i.ath, ptr %i.ati, align 2, !tbaa !90
  %i.atj = getelementptr inbounds nuw i8, ptr %i.art, i64 20
  %i.atk = load i32, ptr %i.atj, align 4, !tbaa !28
  %i.atl = trunc i32 %i.atk to i16
  %i.atm = getelementptr i8, ptr %gep93, i64 10
  store i16 %i.atl, ptr %i.atm, align 2, !tbaa !90
  %i.atn = getelementptr inbounds nuw i8, ptr %i.arr, i64 24
  %i.ato = load i32, ptr %i.atn, align 8, !tbaa !28
  %i.atp = trunc i32 %i.ato to i16
  %i.atq = getelementptr i8, ptr %gep, i64 12
  store i16 %i.atp, ptr %i.atq, align 2, !tbaa !90
  %i.atr = getelementptr inbounds nuw i8, ptr %i.art, i64 24
  %i.ats = load i32, ptr %i.atr, align 8, !tbaa !28
  %i.att = trunc i32 %i.ats to i16
  %i.atu = getelementptr i8, ptr %gep93, i64 12
  store i16 %i.att, ptr %i.atu, align 2, !tbaa !90
  %i.atv = getelementptr inbounds nuw i8, ptr %i.arr, i64 28
  %i.atw = load i32, ptr %i.atv, align 4, !tbaa !28
  %i.atx = trunc i32 %i.atw to i16
  %i.aty = getelementptr i8, ptr %gep, i64 14
  store i16 %i.atx, ptr %i.aty, align 2, !tbaa !90
  %i.atz = getelementptr inbounds nuw i8, ptr %i.art, i64 28
  %i.aua = load i32, ptr %i.atz, align 4, !tbaa !28
  %i.aub = trunc i32 %i.aua to i16
  %i.auc = getelementptr i8, ptr %gep93, i64 14
  store i16 %i.aub, ptr %i.auc, align 2, !tbaa !90
  %i.aud = getelementptr inbounds nuw i8, ptr %i.arr, i64 32
  %i.aue = load i32, ptr %i.aud, align 16, !tbaa !28
  %i.auf = trunc i32 %i.aue to i16
  %i.aug = getelementptr i8, ptr %gep, i64 16
  store i16 %i.auf, ptr %i.aug, align 2, !tbaa !90
  %i.auh = getelementptr inbounds nuw i8, ptr %i.art, i64 32
  %i.aui = load i32, ptr %i.auh, align 16, !tbaa !28
  %i.auj = trunc i32 %i.aui to i16
  %i.auk = getelementptr i8, ptr %gep93, i64 16
  store i16 %i.auj, ptr %i.auk, align 2, !tbaa !90
  %i.aul = getelementptr inbounds nuw i8, ptr %i.arr, i64 36
  %i.aum = load i32, ptr %i.aul, align 4, !tbaa !28
  %i.aun = trunc i32 %i.aum to i16
  %i.auo = getelementptr i8, ptr %gep, i64 18
  store i16 %i.aun, ptr %i.auo, align 2, !tbaa !90
  %i.aup = getelementptr inbounds nuw i8, ptr %i.art, i64 36
  %i.auq = load i32, ptr %i.aup, align 4, !tbaa !28
  %i.aur = trunc i32 %i.auq to i16
  %i.aus = getelementptr i8, ptr %gep93, i64 18
  store i16 %i.aur, ptr %i.aus, align 2, !tbaa !90
  %i.aut = getelementptr inbounds nuw i8, ptr %i.arr, i64 40
  %i.auu = load i32, ptr %i.aut, align 8, !tbaa !28
  %i.auv = trunc i32 %i.auu to i16
  %i.auw = getelementptr i8, ptr %gep, i64 20
  store i16 %i.auv, ptr %i.auw, align 2, !tbaa !90
  %i.aux = getelementptr inbounds nuw i8, ptr %i.art, i64 40
  %i.auy = load i32, ptr %i.aux, align 8, !tbaa !28
  %i.auz = trunc i32 %i.auy to i16
  %i.ava = getelementptr i8, ptr %gep93, i64 20
  store i16 %i.auz, ptr %i.ava, align 2, !tbaa !90
  %i.avb = getelementptr inbounds nuw i8, ptr %i.arr, i64 44
  %i.avc = load i32, ptr %i.avb, align 4, !tbaa !28
  %i.avd = trunc i32 %i.avc to i16
  %i.ave = getelementptr i8, ptr %gep, i64 22
  store i16 %i.avd, ptr %i.ave, align 2, !tbaa !90
  %i.avf = getelementptr inbounds nuw i8, ptr %i.art, i64 44
  %i.avg = load i32, ptr %i.avf, align 4, !tbaa !28
  %i.avh = trunc i32 %i.avg to i16
  %i.avi = getelementptr i8, ptr %gep93, i64 22
  store i16 %i.avh, ptr %i.avi, align 2, !tbaa !90
  %i.avj = getelementptr inbounds nuw i8, ptr %i.arr, i64 48
  %i.avk = load i32, ptr %i.avj, align 16, !tbaa !28
  %i.avl = trunc i32 %i.avk to i16
  %i.avm = getelementptr i8, ptr %gep, i64 24
  store i16 %i.avl, ptr %i.avm, align 2, !tbaa !90
  %i.avn = getelementptr inbounds nuw i8, ptr %i.art, i64 48
  %i.avo = load i32, ptr %i.avn, align 16, !tbaa !28
  %i.avp = trunc i32 %i.avo to i16
  %i.avq = getelementptr i8, ptr %gep93, i64 24
  store i16 %i.avp, ptr %i.avq, align 2, !tbaa !90
  %i.avr = getelementptr inbounds nuw i8, ptr %i.arr, i64 52
  %i.avs = load i32, ptr %i.avr, align 4, !tbaa !28
  %i.avt = trunc i32 %i.avs to i16
  %i.avu = getelementptr i8, ptr %gep, i64 26
  store i16 %i.avt, ptr %i.avu, align 2, !tbaa !90
  %i.avv = getelementptr inbounds nuw i8, ptr %i.art, i64 52
  %i.avw = load i32, ptr %i.avv, align 4, !tbaa !28
  %i.avx = trunc i32 %i.avw to i16
  %i.avy = getelementptr i8, ptr %gep93, i64 26
  store i16 %i.avx, ptr %i.avy, align 2, !tbaa !90
  %i.avz = getelementptr inbounds nuw i8, ptr %i.arr, i64 56
  %i.awa = load i32, ptr %i.avz, align 8, !tbaa !28
  %i.awb = trunc i32 %i.awa to i16
  %i.awc = getelementptr i8, ptr %gep, i64 28
  store i16 %i.awb, ptr %i.awc, align 2, !tbaa !90
  %i.awd = getelementptr inbounds nuw i8, ptr %i.art, i64 56
  %i.awe = load i32, ptr %i.awd, align 8, !tbaa !28
  %i.awf = trunc i32 %i.awe to i16
  %i.awg = getelementptr i8, ptr %gep93, i64 28
  store i16 %i.awf, ptr %i.awg, align 2, !tbaa !90
  %i.awh = getelementptr inbounds nuw i8, ptr %i.arr, i64 60
  %i.awi = load i32, ptr %i.awh, align 4, !tbaa !28
  %i.awj = trunc i32 %i.awi to i16
  %i.awk = getelementptr i8, ptr %gep, i64 30
  store i16 %i.awj, ptr %i.awk, align 2, !tbaa !90
  %i.awl = getelementptr inbounds nuw i8, ptr %i.art, i64 60
  %i.awm = load i32, ptr %i.awl, align 4, !tbaa !28
  %i.awn = trunc i32 %i.awm to i16
  %i.awo = getelementptr i8, ptr %gep93, i64 30
  store i16 %i.awn, ptr %i.awo, align 2, !tbaa !90
  %indvars.iv.next950.i = add nuw nsw i64 %indvars.iv949.i, 1 ; 2 uses
  %exitcond952.not.i = icmp eq i64 %indvars.iv.next950.i, 16
  br i1 %exitcond952.not.i, label %bb.bz, label %.preheader730.i, !llvm.loop !64

bb.bz:                                            ; preds = %.preheader730.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %indvars.iv.next954.i = add nuw nsw i64 %indvars.iv953.i, 16 ; 2 uses
  %i.awp = icmp samesign ult i64 %indvars.iv.next954.i, %i.xp
  br i1 %i.awp, label %bb.az, label %._crit_edge831.i, !llvm.loop !65

decode_blocks.exit:                               ; preds = %._crit_edge831.i, %.preheader736.lr.ph.i, %.loopexit739.i
  store i32 1, ptr %2, align 4, !tbaa !28
  %i.awq = load i32, ptr %i.h, align 8, !tbaa !67
  br label %decode_blocks.exit.thread

decode_blocks.exit.thread:                        ; preds = %bytestream2_get_le32.exit495.i, %bytestream2_get_le32.exit495.us774.i, %bytestream2_get_le32.exit489.us.i, %bb.av, %.preheader749.us.i, %.loopexit748.us.i, %.loopexit748.us.i.1, %.loopexit748.us.i.2, %.lr.ph770.i, %.thread.i, %bb.aj, %bb.ar, %bb.ai, %bb.ah, %bb.ag, %bytestream2_get_le32.exit497.i, %bb.ae, %bytestream2_get_le32.exit499.i, %bb.ac, %bytestream2_get_le32.exit501.i, %bytestream2_get_le32.exit503.i, %bb.z, %bytestream2_get_le32.exit505.i, %bb.x, %bytestream2_get_le32.exit507.i, %bb.v, %bytestream2_get_le32.exit509.i, %bb.t, %bytestream2_get_le32.exit511.i, %bytestream2_get_le32.exit513.i, %bytestream2_init_writer.exit, %bb.j, %bb.i, %bb.f, %bb.e, %bytestream2_get_le32.exit66, %bytestream2_init.exit62, %bb.a, %decode_blocks.exit
  %.0 = phi i32 [ -1094995529, %bb.i ], [ -1094995529, %bb.a ], [ -1094995529, %bytestream2_init.exit62 ], [ -1163346256, %bytestream2_get_le32.exit66 ], [ %i.ad, %bb.e ], [ -1094995529, %bytestream2_init_writer.exit ], [ %i.awq, %decode_blocks.exit ], [ -1094995529, %bb.f ], [ -12, %bb.j ], [ -1094995529, %bytestream2_get_le32.exit489.us.i ], [ -1094995529, %bytestream2_get_le32.exit495.us774.i ], [ -1094995529, %bytestream2_get_le32.exit511.i ], [ -1094995529, %.lr.ph770.i ], [ %i.bw, %bytestream2_get_le32.exit513.i ], [ -1094995529, %.thread.i ], [ -1094995529, %.preheader749.us.i ], [ -1094995529, %bb.aj ], [ -1094995529, %bb.ar ], [ %i.fw, %bb.ai ], [ -1094995529, %bb.ah ], [ -1094995529, %bb.ag ], [ -1094995529, %bytestream2_get_le32.exit497.i ], [ -1094995529, %bb.ae ], [ -1094995529, %bytestream2_get_le32.exit499.i ], [ -1094995529, %bb.ac ], [ -1094995529, %bytestream2_get_le32.exit501.i ], [ -1094995529, %bytestream2_get_le32.exit503.i ], [ -1094995529, %bb.z ], [ -1094995529, %bytestream2_get_le32.exit505.i ], [ -1094995529, %bb.x ], [ -1094995529, %bytestream2_get_le32.exit507.i ], [ -1094995529, %bb.v ], [ -1094995529, %bytestream2_get_le32.exit509.i ], [ -1094995529, %bb.t ], [ -1094995529, %.loopexit748.us.i.2 ], [ -1094995529, %.loopexit748.us.i.1 ], [ -1094995529, %.loopexit748.us.i ], [ -1094995529, %bb.av ], [ -1094995529, %bytestream2_get_le32.exit495.i ]
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @decode_end(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @av_freep(ptr noundef nonnull %i.c) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @av_freep(ptr noundef nonnull %i.e) #9
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 0, ptr %i.f, align 8, !tbaa !36
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @ff_lzf_uncompress(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @av_fast_padded_malloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @lz4_decompress(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [65536 x i8], align 16            ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65536) %i.a, i8 0, i64 65536, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !37     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph59, label %.thread33

.lr.ph59:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph59, %.loopexit
  %i.l = phi ptr [ %i.c, %.lr.ph59 ], [ %i.fc, %.loopexit ] ; 4 uses
  %i.m = phi i64 [ %i.g, %.lr.ph59 ], [ %i.fe, %.loopexit ]
  %i.n = phi i64 [ %i.e, %.lr.ph59 ], [ %.pre-phi, %.loopexit ] ; 3 uses
  %i.o = phi ptr [ %i.d, %.lr.ph59 ], [ %i.fb, %.loopexit ] ; 2 uses
  %.07958 = phi i32 [ 0, %.lr.ph59 ], [ %.8, %.loopexit ] ; 4 uses
  %i.p = icmp slt i64 %i.m, 1
  br i1 %i.p, label %.thread10.sink.split, label %bytestream2_get_byte.exit115

bytestream2_get_byte.exit115:                     ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 4 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !32
  %i.r = load i8, ptr %i.o, align 1, !tbaa !33
  %i.s = zext i8 %i.r to i32                      ; 5 uses
  %i.t = lshr i32 %i.s, 4                         ; 2 uses
  %i.u = icmp eq i32 %i.t, 15
  br i1 %i.u, label %.preheader41.preheader, label %.thread10

.preheader41.preheader:                           ; preds = %bytestream2_get_byte.exit115
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = sub i64 %i.n, %i.v
  %i.x = icmp slt i64 %i.w, 1
  br i1 %i.x, label %.thread10.sink.split, label %bytestream2_get_byte.exit113

.preheader41:                                     ; preds = %bb.c
  %i.y = ptrtoint ptr %i.ac to i64
  %i.z = sub i64 %i.n, %i.y
  %i.aa = icmp slt i64 %i.z, 1
  br i1 %i.aa, label %.thread10.sink.split, label %bytestream2_get_byte.exit113, !llvm.loop !92

bytestream2_get_byte.exit113:                     ; preds = %.preheader41.preheader, %.preheader41
  %.072120 = phi i32 [ %i.ag, %.preheader41 ], [ 15, %.preheader41.preheader ] ; 2 uses
  %i.ab = phi ptr [ %i.ac, %.preheader41 ], [ %i.q, %.preheader41.preheader ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 4 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !32
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !33  ; 2 uses
  %i.ae = zext i8 %i.ad to i32                    ; 2 uses
  %i.af = xor i32 %.072120, 2147483647
  %.not = icmp samesign ult i32 %i.af, %i.ae
  br i1 %.not, label %.thread29, label %bb.c

bb.c:                                             ; preds = %bytestream2_get_byte.exit113
  %i.ag = add nuw nsw i32 %.072120, %i.ae         ; 3 uses
  %i.ah = icmp eq i8 %i.ad, -1
  br i1 %i.ah, label %.preheader41, label %.thread10, !llvm.loop !92

.thread10.sink.split:                             ; preds = %.preheader41, %.preheader41.preheader, %bb.b
  %.0.i1142.ph = phi i32 [ 0, %bb.b ], [ %i.s, %.preheader41.preheader ], [ %i.s, %.preheader41 ]
  %.274.ph = phi i32 [ 0, %bb.b ], [ 15, %.preheader41.preheader ], [ %i.ag, %.preheader41 ]
  store ptr %i.l, ptr %0, align 8, !tbaa !37
  br label %.thread10

.thread10:                                        ; preds = %bb.c, %.thread10.sink.split, %bytestream2_get_byte.exit115
  %i.ai = phi ptr [ %i.l, %.thread10.sink.split ], [ %i.q, %bytestream2_get_byte.exit115 ], [ %i.ac, %bb.c ] ; 4 uses
  %.0.i1142 = phi i32 [ %.0.i1142.ph, %.thread10.sink.split ], [ %i.s, %bytestream2_get_byte.exit115 ], [ %i.s, %bb.c ]
  %.274 = phi i32 [ %.274.ph, %.thread10.sink.split ], [ %i.t, %bytestream2_get_byte.exit115 ], [ %i.ag, %bb.c ] ; 5 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.n, %i.aj                     ; 2 uses
  %i.al = trunc i64 %i.ak to i32
  %i.am = icmp sgt i32 %.274, %i.al
  br i1 %i.am, label %.thread29, label %bb.d

bb.d:                                             ; preds = %.thread10
  %i.an = add i32 %.274, %.07958                  ; 2 uses
  %i.ao = icmp ult i32 %i.an, 65536
  br i1 %i.ao, label %bb.e, label %.preheader39

.preheader39:                                     ; preds = %bb.d
  %i.ap = icmp sgt i32 %.274, 0
  br i1 %i.ap, label %.lr.ph, label %.loopexit40

bb.e:                                             ; preds = %bb.d
  %i.aq = zext i32 %.07958 to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aq
  %i.as = zext i32 %.274 to i64
  %i.at = tail call i64 @llvm.smin.i64(i64 %i.ak, i64 %i.as)
  %i.au = and i64 %i.at, 4294967295               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr align 1 %i.ai, i64 %i.au, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.au ; 2 uses
  store ptr %i.av, ptr %0, align 8, !tbaa !37
  br label %.loopexit40

.lr.ph:                                           ; preds = %.preheader39, %bytestream2_put_buffer.exit124
  %.in = phi i32 [ %i.aw, %bytestream2_put_buffer.exit124 ], [ %.274, %.preheader39 ] ; 2 uses
  %.18051 = phi i32 [ %.281, %bytestream2_put_buffer.exit124 ], [ %.07958, %.preheader39 ] ; 2 uses
  %i.aw = add nsw i32 %.in, -1
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !31  ; 2 uses
  %i.ay = load ptr, ptr %0, align 8, !tbaa !37    ; 3 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = icmp slt i64 %i.bb, 1
  br i1 %i.bc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  store ptr %i.ax, ptr %0, align 8, !tbaa !37
  br label %bytestream2_get_byte.exit111

bb.g:                                             ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store ptr %i.bd, ptr %0, align 8, !tbaa !32
  %i.be = load i8, ptr %i.ay, align 1, !tbaa !33
  br label %bytestream2_get_byte.exit111

bytestream2_get_byte.exit111:                     ; preds = %bb.f, %bb.g
  %.0.i110 = phi i8 [ 0, %bb.f ], [ %i.be, %bb.g ]
  %i.bf = add nuw i32 %.18051, 1                  ; 2 uses
  %i.bg = zext i32 %.18051 to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg
  store i8 %.0.i110, ptr %i.bh, align 1, !tbaa !33
  %i.bi = icmp eq i32 %i.bf, 65536
  br i1 %i.bi, label %bb.h, label %bytestream2_put_buffer.exit124

bb.h:                                             ; preds = %bytestream2_get_byte.exit111
  %i.bj = load i32, ptr %i.j, align 8, !tbaa !42
  %.not.i121 = icmp eq i32 %i.bj, 0
  br i1 %.not.i121, label %bb.i, label %bytestream2_put_buffer.exit124

bb.i:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.bl = load ptr, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = tail call i64 @llvm.smin.i64(i64 %i.bo, i64 65536)
  %i.bq = and i64 %i.bp, 4294967295               ; 3 uses
  %.not18.i123 = icmp eq i64 %i.bq, 65536
  br i1 %.not18.i123, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.j, align 8, !tbaa !42
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr nonnull align 16 %i.a, i64 %i.bq, i1 false)
  %i.br = load ptr, ptr %1, align 8, !tbaa !39
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  store ptr %i.bs, ptr %1, align 8, !tbaa !39
  br label %bytestream2_put_buffer.exit124

bytestream2_put_buffer.exit124:                   ; preds = %bb.k, %bb.h, %bytestream2_get_byte.exit111
  %.281 = phi i32 [ %i.bf, %bytestream2_get_byte.exit111 ], [ 0, %bb.h ], [ 0, %bb.k ] ; 2 uses
  %i.bt = icmp samesign ugt i32 %.in, 1
  br i1 %i.bt, label %.lr.ph, label %.loopexit40.loopexit, !llvm.loop !93

.loopexit40.loopexit:                             ; preds = %bytestream2_put_buffer.exit124
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !31
  %.pre82 = load ptr, ptr %0, align 8, !tbaa !37
  br label %.loopexit40

.loopexit40:                                      ; preds = %.loopexit40.loopexit, %.preheader39, %bb.e
  %i.bu = phi ptr [ %i.l, %bb.e ], [ %i.l, %.preheader39 ], [ %.pre, %.loopexit40.loopexit ] ; 6 uses
  %i.bv = phi ptr [ %i.av, %bb.e ], [ %i.ai, %.preheader39 ], [ %.pre82, %.loopexit40.loopexit ] ; 3 uses
  %.382 = phi i32 [ %i.an, %bb.e ], [ %.07958, %.preheader39 ], [ %.281, %.loopexit40.loopexit ] ; 8 uses
  %i.bw = ptrtoint ptr %i.bu to i64               ; 5 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 2 uses
  %i.bz = trunc i64 %i.by to i32
  %i.ca = icmp slt i32 %i.bz, 1
  br i1 %i.ca, label %.thread33, label %bb.l

bb.l:                                             ; preds = %.loopexit40
  %i.cb = icmp slt i64 %i.by, 2
  br i1 %i.cb, label %bytestream2_get_le16.exit.thread, label %bytestream2_get_le16.exit

bytestream2_get_le16.exit.thread:                 ; preds = %bb.l
  store ptr %i.bu, ptr %0, align 8, !tbaa !37
  br label %.thread29

bytestream2_get_le16.exit:                        ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 2 ; 4 uses
  store ptr %i.cc, ptr %0, align 8, !tbaa !32
  %i.cd = load i16, ptr %i.bv, align 1, !tbaa !33 ; 2 uses
  %i.ce = zext i16 %i.cd to i32                   ; 2 uses
  %i.cf = icmp eq i16 %i.cd, 0
  br i1 %i.cf, label %.thread29, label %bb.m

bb.m:                                             ; preds = %bytestream2_get_le16.exit
  %i.cg = and i32 %.0.i1142, 15
  %i.ch = add nuw nsw i32 %i.cg, 4                ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 19
  br i1 %i.ci, label %.preheader38.preheader, label %.thread24

.preheader38.preheader:                           ; preds = %bb.m
  %i.cj = ptrtoint ptr %i.cc to i64
  %i.ck = sub i64 %i.bw, %i.cj
  %i.cl = icmp slt i64 %i.ck, 1
  br i1 %i.cl, label %.thread20, label %bytestream2_get_byte.exit

.preheader38:                                     ; preds = %bb.n
  %i.cm = ptrtoint ptr %i.cq to i64
  %i.cn = sub i64 %i.bw, %i.cm
  %i.co = icmp slt i64 %i.cn, 1
  br i1 %i.co, label %.thread20, label %bytestream2_get_byte.exit, !llvm.loop !94

.thread20:                                        ; preds = %.preheader38, %.preheader38.preheader
  %.075.lcssa = phi i32 [ 19, %.preheader38.preheader ], [ %i.cu, %.preheader38 ]
  store ptr %i.bu, ptr %0, align 8, !tbaa !37
  br label %.thread24

bytestream2_get_byte.exit:                        ; preds = %.preheader38.preheader, %.preheader38
  %.075121 = phi i32 [ %i.cu, %.preheader38 ], [ 19, %.preheader38.preheader ] ; 2 uses
  %i.cp = phi ptr [ %i.cq, %.preheader38 ], [ %i.cc, %.preheader38.preheader ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1 ; 4 uses
  store ptr %i.cq, ptr %0, align 8, !tbaa !32
  %i.cr = load i8, ptr %i.cp, align 1, !tbaa !33  ; 2 uses
  %i.cs = zext i8 %i.cr to i32                    ; 2 uses
  %i.ct = xor i32 %.075121, 2147483647
  %.not106 = icmp samesign ult i32 %i.ct, %i.cs
  br i1 %.not106, label %.thread29, label %bb.n

bb.n:                                             ; preds = %bytestream2_get_byte.exit
  %i.cu = add nuw nsw i32 %.075121, %i.cs         ; 3 uses
  %i.cv = icmp eq i8 %i.cr, -1
  br i1 %i.cv, label %.preheader38, label %.thread24, !llvm.loop !94

.thread24:                                        ; preds = %bb.n, %.thread20, %bb.m
  %i.cw = phi ptr [ %i.cc, %bb.m ], [ %i.bu, %.thread20 ], [ %i.cq, %bb.n ] ; 2 uses
  %.277 = phi i32 [ %i.ch, %bb.m ], [ %.075.lcssa, %.thread20 ], [ %i.cu, %bb.n ] ; 8 uses
  %.not107 = icmp ult i32 %.382, %i.ce
  %i.cx = add i32 %.382, 65536
  %.382.pn = select i1 %.not107, i32 %i.cx, i32 %.382
  %i.cy = sub i32 %.382.pn, %i.ce                 ; 5 uses
  %i.cz = add i32 %.277, %.382                    ; 3 uses
  %i.da = icmp ult i32 %i.cz, 65536
  br i1 %i.da, label %bb.o, label %.preheader133

.preheader133:                                    ; preds = %bb.o, %.thread24
  br label %bb.r

bb.o:                                             ; preds = %.thread24
  %i.db = add i32 %.277, %i.cy                    ; 2 uses
  %i.dc = icmp ult i32 %i.db, 65536
  br i1 %i.dc, label %bb.p, label %.preheader133

bb.p:                                             ; preds = %bb.o
  %.not108 = icmp ult i32 %.382, %i.db
  %.not109 = icmp ult i32 %i.cy, %i.cz
  %or.cond = and i1 %.not108, %.not109
  %i.dd = zext i32 %.382 to i64                   ; 7 uses
  br i1 %or.cond, label %iter.check, label %bb.q

iter.check:                                       ; preds = %bb.p
  %i.de = zext i32 %i.cy to i64                   ; 6 uses
  %i.df = add i32 %.277, -1                       ; 3 uses
  %i.dg = zext i32 %i.df to i64
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.df, 3
  %i.di = sub nsw i64 %i.de, %i.dd
  %diff.check = icmp ugt i64 %i.di, -32
  %or.cond132 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond132, label %.preheader.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check123 = icmp ult i32 %i.df, 31
  br i1 %min.iters.check123, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dj = and i64 %i.dh, 28
  %n.vec = and i64 %i.dh, 8589934560              ; 6 uses
  %i.dk = add nuw nsw i64 %n.vec, %i.de
  %i.dl = add nuw nsw i64 %n.vec, %i.dd           ; 2 uses
  %i.dm = trunc i64 %n.vec to i32
  %i.dn = sub i32 %.277, %i.dm
  %invariant.gep = getelementptr i8, ptr %i.a, i64 %i.de
  %invariant.gep158 = getelementptr i8, ptr %i.a, i64 %i.dd
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <16 x i8>, ptr %gep, align 1, !tbaa !33
  %wide.load124 = load <16 x i8>, ptr %i.do, align 1, !tbaa !33
  %gep159 = getelementptr i8, ptr %invariant.gep158, i64 %index ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %gep159, i64 16
  store <16 x i8> %wide.load, ptr %gep159, align 1, !tbaa !33
  store <16 x i8> %wide.load124, ptr %i.dp, align 1, !tbaa !33
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dh, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dj, 0
  br i1 %min.epilog.iters.check, label %.preheader.preheader, label %vec.epilog.ph, !prof !99

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec125 = and i64 %i.dh, 8589934588           ; 5 uses
  %i.dr = add nuw nsw i64 %n.vec125, %i.de
  %i.ds = add nuw nsw i64 %n.vec125, %i.dd        ; 2 uses
  %i.dt = trunc i64 %n.vec125 to i32
  %i.du = sub i32 %.277, %i.dt
  %invariant.gep160 = getelementptr i8, ptr %i.a, i64 %i.de
  %invariant.gep162 = getelementptr i8, ptr %i.a, i64 %i.dd
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index126 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next128, %vec.epilog.vector.body ] ; 3 uses
  %gep161 = getelementptr i8, ptr %invariant.gep160, i64 %index126
  %wide.load127 = load <4 x i8>, ptr %gep161, align 1, !tbaa !33
  %gep163 = getelementptr i8, ptr %invariant.gep162, i64 %index126
  store <4 x i8> %wide.load127, ptr %gep163, align 1, !tbaa !33
  %index.next128 = add nuw i64 %index126, 4       ; 2 uses
  %i.dv = icmp eq i64 %index.next128, %n.vec125
  br i1 %i.dv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !96

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n129 = icmp eq i64 %i.dh, %n.vec125
  br i1 %cmp.n129, label %.loopexit.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv77.ph = phi i64 [ %i.de, %iter.check ], [ %i.dk, %vec.epilog.iter.check ], [ %i.dr, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ %i.dd, %iter.check ], [ %i.dl, %vec.epilog.iter.check ], [ %i.ds, %vec.epilog.middle.block ]
  %.37857.ph = phi i32 [ %.277, %iter.check ], [ %i.dn, %vec.epilog.iter.check ], [ %i.du, %vec.epilog.middle.block ]
  br label %.preheader

bb.q:                                             ; preds = %bb.p
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dd
  %i.dx = zext i32 %i.cy to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dx
  %i.dz = sext i32 %.277 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dw, ptr nonnull align 1 %i.dy, i64 %i.dz, i1 false)
  br label %.loopexit

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %.preheader ], [ %indvars.iv77.ph, %.preheader.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader ] ; 2 uses
  %.37857 = phi i32 [ %i.ea, %.preheader ], [ %.37857.ph, %.preheader.preheader ] ; 2 uses
  %i.ea = add nsw i32 %.37857, -1
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv77
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !33
  %i.ee = icmp sgt i32 %.37857, 1
  br i1 %i.ee, label %.preheader, label %.loopexit.loopexit, !llvm.loop !97

bb.r:                                             ; preds = %.preheader133, %bytestream2_put_buffer.exit120
  %.in63 = phi i32 [ %i.ef, %bytestream2_put_buffer.exit120 ], [ %.277, %.preheader133 ] ; 2 uses
  %.554 = phi i32 [ %.6, %bytestream2_put_buffer.exit120 ], [ %.382, %.preheader133 ] ; 2 uses
  %.18553 = phi i32 [ %i.ey, %bytestream2_put_buffer.exit120 ], [ %i.cy, %.preheader133 ] ; 2 uses
  %i.ef = add nsw i32 %.in63, -1
  %i.eg = add nuw i32 %.18553, 1
  %i.eh = zext i32 %.18553 to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !33
  %i.ek = add nuw i32 %.554, 1                    ; 2 uses
  %i.el = zext i32 %.554 to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.el
  store i8 %i.ej, ptr %i.em, align 1, !tbaa !33
  %i.en = icmp eq i32 %i.ek, 65536
  br i1 %i.en, label %bb.s, label %bytestream2_put_buffer.exit120

bb.s:                                             ; preds = %bb.r
  %i.eo = load i32, ptr %i.j, align 8, !tbaa !42
  %.not.i117 = icmp eq i32 %i.eo, 0
  br i1 %.not.i117, label %bb.t, label %bytestream2_put_buffer.exit120

bb.t:                                             ; preds = %bb.s
  %i.ep = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.eq = load ptr, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = tail call i64 @llvm.smin.i64(i64 %i.et, i64 65536)
  %i.ev = and i64 %i.eu, 4294967295               ; 3 uses
  %.not18.i119 = icmp eq i64 %i.ev, 65536
  br i1 %.not18.i119, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 1, ptr %i.j, align 8, !tbaa !42
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eq, ptr nonnull align 16 %i.a, i64 %i.ev, i1 false)
  %i.ew = load ptr, ptr %1, align 8, !tbaa !39
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ev
  store ptr %i.ex, ptr %1, align 8, !tbaa !39
  br label %bytestream2_put_buffer.exit120

bytestream2_put_buffer.exit120:                   ; preds = %bb.v, %bb.s, %bb.r
  %.6 = phi i32 [ %i.ek, %bb.r ], [ 0, %bb.s ], [ 0, %bb.v ] ; 2 uses
  %i.ey = and i32 %i.eg, 65535
  %i.ez = icmp sgt i32 %.in63, 1
  br i1 %i.ez, label %bb.r, label %.loopexit.loopexit64, !llvm.loop !98

.loopexit.loopexit:                               ; preds = %.preheader, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.ds, %vec.epilog.middle.block ], [ %i.dl, %middle.block ], [ %indvars.iv.next, %.preheader ]
  %i.fa = trunc nuw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit

.loopexit.loopexit64:                             ; preds = %bytestream2_put_buffer.exit120
  %.pre83 = load ptr, ptr %i.b, align 8, !tbaa !31 ; 2 uses
  %.pre84 = load ptr, ptr %0, align 8, !tbaa !37
  %.pre86 = ptrtoint ptr %.pre83 to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit64, %.loopexit.loopexit, %bb.q
  %.pre-phi = phi i64 [ %.pre86, %.loopexit.loopexit64 ], [ %i.bw, %.loopexit.loopexit ], [ %i.bw, %bb.q ] ; 2 uses
  %i.fb = phi ptr [ %.pre84, %.loopexit.loopexit64 ], [ %i.cw, %.loopexit.loopexit ], [ %i.cw, %bb.q ] ; 2 uses
  %i.fc = phi ptr [ %.pre83, %.loopexit.loopexit64 ], [ %i.bu, %.loopexit.loopexit ], [ %i.bu, %bb.q ]
  %.8 = phi i32 [ %.6, %.loopexit.loopexit64 ], [ %i.fa, %.loopexit.loopexit ], [ %i.cz, %bb.q ] ; 2 uses
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %.pre-phi, %i.fd                ; 2 uses
  %i.ff = trunc i64 %i.fe to i32
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %bb.b, label %.thread33

.thread33:                                        ; preds = %.loopexit, %.loopexit40, %bb.a
  %.9 = phi i32 [ 0, %bb.a ], [ %.382, %.loopexit40 ], [ %.8, %.loopexit ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !42
  %.not.i = icmp eq i32 %i.fi, 0
  %.pre85 = load ptr, ptr %1, align 8, !tbaa !39  ; 3 uses
  br i1 %.not.i, label %bb.w, label %bytestream2_put_buffer.exit

bb.w:                                             ; preds = %.thread33
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !41
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = ptrtoint ptr %.pre85 to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = zext i32 %.9 to i64
  %i.fp = tail call i64 @llvm.smin.i64(i64 %i.fn, i64 %i.fo) ; 2 uses
  %i.fq = trunc i64 %i.fp to i32
  %.not18.i = icmp eq i32 %.9, %i.fq
  br i1 %.not18.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 1, ptr %i.fh, align 8, !tbaa !42
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fr = and i64 %i.fp, 4294967295               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.pre85, ptr nonnull align 16 %i.a, i64 %i.fr, i1 false)
  %i.fs = load ptr, ptr %1, align 8, !tbaa !39
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fr ; 2 uses
  store ptr %i.ft, ptr %1, align 8, !tbaa !39
  br label %bytestream2_put_buffer.exit

bytestream2_put_buffer.exit:                      ; preds = %.thread33, %bb.y
  %i.fu = phi ptr [ %.pre85, %.thread33 ], [ %i.ft, %bb.y ]
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !40
  %i.fx = ptrtoint ptr %i.fu to i64
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = sub i64 %i.fx, %i.fy
  %i.ga = trunc i64 %i.fz to i32
  br label %.thread29

.thread29:                                        ; preds = %bytestream2_get_le16.exit, %.thread10, %bytestream2_get_byte.exit113, %bytestream2_get_byte.exit, %bytestream2_get_le16.exit.thread, %bytestream2_put_buffer.exit
  %.692 = phi i32 [ %i.ga, %bytestream2_put_buffer.exit ], [ -1094995529, %bytestream2_get_byte.exit ], [ -1094995529, %bytestream2_get_byte.exit113 ], [ 0, %bytestream2_get_le16.exit.thread ], [ 0, %bytestream2_get_le16.exit ], [ -1094995529, %.thread10 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.692
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ff_thread_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @av_freep(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!6, !6, i64 0}
!29 = !{!27, !9, i64 32}
!30 = !{!"GetByteContext", !14, i64 0, !14, i64 8, !14, i64 16}
!31 = !{!30, !14, i64 8}
!32 = !{!14, !14, i64 0}
!33 = !{!5, !5, i64 0}
!34 = !{!"PutByteContext", !14, i64 0, !14, i64 8, !14, i64 16, !6, i64 24}
!35 = !{!"NotchLCContext", !6, i64 0, !6, i64 4, !14, i64 8, !6, i64 16, !14, i64 24, !13, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !30, i64 96, !34, i64 120}
!36 = !{!35, !13, i64 32}
!37 = !{!30, !14, i64 0}
!38 = !{!35, !6, i64 16}
!39 = !{!34, !14, i64 0}
!40 = !{!34, !14, i64 16}
!41 = !{!34, !14, i64 8}
!42 = !{!34, !6, i64 24}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{!27, !6, i64 136}
!47 = distinct !{!47, !43}
!48 = distinct !{!48, !43}
!49 = distinct !{!49, !43}
!50 = distinct !{!50, !43, !44, !45}
!51 = distinct !{!51, !43, !44, !45}
!52 = distinct !{!52, !43}
!53 = distinct !{!53, !43, !45, !44}
!54 = distinct !{!54, !43}
!55 = distinct !{!55, !43}
!56 = distinct !{!56, !43}
!57 = distinct !{!57, !43}
!58 = distinct !{!58, !43}
!59 = distinct !{!59, !43}
!60 = distinct !{!60, !43}
!61 = distinct !{!61, !43}
!62 = distinct !{!62, !43}
!63 = distinct !{!63, !43}
!64 = distinct !{!64, !43}
!65 = distinct !{!65, !43}
!66 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!67 = !{!66, !6, i64 32}
!68 = !{!66, !14, i64 24}
!69 = !{!30, !14, i64 16}
!70 = !{!35, !6, i64 0}
!71 = !{!35, !6, i64 4}
!72 = !{!35, !14, i64 24}
!73 = !{!35, !14, i64 8}
!74 = !{!35, !6, i64 44}
!75 = !{!35, !6, i64 48}
!76 = !{!35, !6, i64 56}
!77 = !{!35, !6, i64 60}
!78 = !{!35, !6, i64 64}
!79 = !{!35, !6, i64 72}
!80 = !{!35, !6, i64 76}
!81 = !{!35, !6, i64 80}
!82 = !{!35, !6, i64 88}
!83 = !{!35, !6, i64 92}
!84 = !{!35, !6, i64 52}
!85 = !{!35, !6, i64 68}
!86 = !{!35, !6, i64 84}
!87 = !{!27, !6, i64 116}
!88 = !{!27, !6, i64 112}
!89 = !{!"short", !5, i64 0}
!90 = !{!89, !89, i64 0}
!91 = !{!"branch_weights", i32 4, i32 12}
!92 = distinct !{!92, !43}
!93 = distinct !{!93, !43}
!94 = distinct !{!94, !43}
!95 = distinct !{!95, !43, !44, !45}
!96 = distinct !{!96, !43, !44, !45}
!97 = distinct !{!97, !43, !44}
!98 = distinct !{!98, !43}
!99 = !{!"branch_weights", i32 4, i32 28}
end_hunk_1
