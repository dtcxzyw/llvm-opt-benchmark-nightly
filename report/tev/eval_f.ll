Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/eval_f?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 34
begin_hunk_0_@fits_parser_workfn:bb.a
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !62
  %i.cy = icmp eq i32 %i.cx, 3
  br i1 %i.cy, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !26 ; 2 uses
  %.not364 = icmp eq ptr %i.da, null
  br i1 %.not364, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %i.da, ptr %i.db, align 8, !tbaa !128
  br label %bb.ao

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.dc = load i32, ptr %i.cl, align 8, !tbaa !18
  switch i32 %i.dc, label %bb.ao [
    i32 14, label %bb.af
    i32 11, label %bb.ag
    i32 21, label %bb.ah
    i32 31, label %bb.ai
    i32 41, label %bb.aj
    i32 81, label %bb.ak
    i32 42, label %bb.al
    i32 82, label %bb.am
    i32 16, label %bb.an
  ]

bb.af:                                            ; preds = %bb.ae
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !128
  store i8 85, ptr %i.de, align 1, !tbaa !24
  br label %bb.ao

bb.ag:                                            ; preds = %bb.ae
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !129
  %i.dh = trunc i64 %i.dg to i8
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !128
  store i8 %i.dh, ptr %i.dj, align 1, !tbaa !24
  br label %bb.ao

bb.ah:                                            ; preds = %bb.ae
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !129
  %i.dm = trunc i64 %i.dl to i16
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !128
  store i16 %i.dm, ptr %i.do, align 2, !tbaa !71
  br label %bb.ao

bb.ai:                                            ; preds = %bb.ae
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !129
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !128
  store i32 %i.dr, ptr %i.dt, align 4, !tbaa !9
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ae
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !129
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !128
  store i64 %i.dv, ptr %i.dx, align 8, !tbaa !11
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ae
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !129
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !128
  store i64 %i.dz, ptr %i.eb, align 8, !tbaa !72
  br label %bb.ao

bb.al:                                            ; preds = %bb.ae
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !128
  store float f0x8541F136, ptr %i.ed, align 4, !tbaa !74
  br label %bb.ao

bb.am:                                            ; preds = %bb.ae
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !128
  store double f0xB8A83E285EBAB4B7, ptr %i.ef, align 8, !tbaa !76
  br label %bb.ao

bb.an:                                            ; preds = %bb.ae
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !128
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !57
  store i8 1, ptr %i.ei, align 1, !tbaa !24
  %i.ej = load ptr, ptr %i.eg, align 8, !tbaa !128
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !57
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  store i8 0, ptr %i.el, align 1, !tbaa !24
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ad, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.aa
  %i.em = load ptr, ptr %i.i, align 8, !tbaa !130
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !127
  %i.ep = sub nsw i64 %i.eo, %2                   ; 2 uses
  %.not365 = icmp sgt i64 %3, %i.ep
  %i.eq = add nsw i64 %i.ep, 1
  %i.er = select i1 %.not365, i64 %i.eq, i64 %3   ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.es = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  store i64 %2, ptr %i.es, align 8, !tbaa !134
  %i.et = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  store i64 %i.er, ptr %i.et, align 8, !tbaa !59
  %i.eu = getelementptr inbounds nuw i8, ptr %i.h, i64 208 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !58
  %.not.i = icmp eq i64 %i.ev, %i.er              ; 5 uses
  %i.ew = icmp sgt i32 %4, 0
  br i1 %i.ew, label %.lr.ph240.i, label %Setup_DataArrays.exit

.lr.ph240.i:                                      ; preds = %bb.ao
  %i.ex = getelementptr inbounds nuw i8, ptr %i.h, i64 168 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.h, i64 224 ; 2 uses
  %.not197224.i = icmp eq i64 %i.er, 0
  %i.ez = shl i64 %i.er, 3
  %i.fa = icmp sgt i64 %i.er, 0
  %wide.trip.count.i = zext nneg i32 %4 to i64
  br label %bb.ap

bb.ap:                                            ; preds = %bb.cx, %.lr.ph240.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph240.i ], [ %indvars.iv.next.i, %bb.cx ] ; 5 uses
  %i.fb = getelementptr inbounds nuw [272 x i8], ptr %5, i64 %indvars.iv.i ; 6 uses
  %i.fc = load ptr, ptr %i.ex, align 8, !tbaa !52
  %i.fd = getelementptr inbounds nuw [160 x i8], ptr %i.fc, i64 %indvars.iv.i ; 17 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 88
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !62
  %i.fg = and i32 %i.ff, -2
  %switch.i = icmp eq i32 %i.fg, 2
  br i1 %switch.i, label %bb.cx, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 88
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !77 ; 6 uses
  %i.fj = mul i64 %i.fi, %i.er                    ; 21 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 84
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !55 ; 2 uses
  switch i32 %i.fl, label %bb.co [
    i32 262, label %bb.ar
    i32 261, label %bb.bb
    i32 258, label %bb.bk
    i32 259, label %bb.bu
    i32 260, label %bb.ce
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.fm = add nsw i64 %i.fi, 1                    ; 2 uses
  %i.fn = mul nsw i64 %i.fm, %i.er
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fd, i64 152 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !56 ; 4 uses
  br i1 %.not.i, label %bb.az, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.not200.i = icmp eq ptr %i.fp, null
  br i1 %.not200.i, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !57 ; 2 uses
  %.not201.i = icmp eq ptr %i.fq, null
  br i1 %.not201.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @free(ptr noundef nonnull %i.fq) #16
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.fr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85, ptr noundef nonnull @.str.4, i32 noundef 1441) ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.as
  call void @free(ptr noundef %i.fp) #16
  %i.fs = call noalias ptr @malloc(i64 noundef %i.ez) #18 ; 4 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %.preheader.sink.split.sink.split.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fu = call noalias ptr @malloc(i64 noundef %i.fn) #18 ; 2 uses
  store ptr %i.fu, ptr %i.fs, align 8, !tbaa !57
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @free(ptr noundef nonnull %i.fs) #16
  br label %.preheader.sink.split.sink.split.i

bb.az:                                            ; preds = %bb.ax, %bb.ar
  %.0160.i = phi ptr [ %i.fs, %bb.ax ], [ %i.fp, %bb.ar ] ; 4 uses
  br i1 %i.fa, label %.lr.ph236.i, label %._crit_edge237.i

.lr.ph236.i:                                      ; preds = %bb.az
  %i.fw = add nuw nsw i64 %i.fi, 7
  %7 = sdiv i64 %i.fw, 8
  %i.fx = icmp sgt i64 %i.fi, 0
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fb, i64 96
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge233.i, %.lr.ph236.i
  %.0162234.i = phi i64 [ 0, %.lr.ph236.i ], [ %i.gu, %._crit_edge233.i ] ; 4 uses
  %i.fz = load ptr, ptr %.0160.i, align 8, !tbaa !57
  %i.ga = mul nsw i64 %.0162234.i, %i.fm
  %i.gb = getelementptr inbounds i8, ptr %i.fz, i64 %i.ga ; 2 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %.0160.i, i64 %.0162234.i ; 3 uses
  store ptr %i.gb, ptr %i.gc, align 8, !tbaa !57
  br i1 %i.fx, label %.lr.ph232.preheader.i, label %._crit_edge233.i

.lr.ph232.preheader.i:                            ; preds = %bb.ba
  %i.gd = mul nuw nsw i64 %.0162234.i, %7
  %i.ge = add nuw nsw i64 %i.gd, 1
  br label %.lr.ph232.i

.lr.ph232.i:                                      ; preds = %.lr.ph232.i, %.lr.ph232.preheader.i
  %.0161230.i = phi i64 [ %spec.select.i, %.lr.ph232.i ], [ %i.ge, %.lr.ph232.preheader.i ] ; 2 uses
  %.0164229.i = phi i64 [ %i.gr, %.lr.ph232.i ], [ 0, %.lr.ph232.preheader.i ] ; 3 uses
  %i.gf = load ptr, ptr %i.fy, align 8, !tbaa !63
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.0161230.i
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !24
  %i.gi = zext i8 %i.gh to i32
  %i.gj = and i64 %.0164229.i, 7                  ; 2 uses
  %i.gk = trunc nuw nsw i64 %i.gj to i32
  %i.gl = lshr exact i32 128, %i.gk
  %i.gm = and i32 %i.gl, %i.gi
  %.not202.i = icmp eq i32 %i.gm, 0
  %i.gn = load ptr, ptr %i.gc, align 8, !tbaa !57
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.0164229.i
  %..i = select i1 %.not202.i, i8 48, i8 49
  store i8 %..i, ptr %i.go, align 1, !tbaa !24
  %i.gp = icmp eq i64 %i.gj, 7
  %i.gq = zext i1 %i.gp to i64
  %spec.select.i = add nuw nsw i64 %.0161230.i, %i.gq
  %i.gr = add nuw nsw i64 %.0164229.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gr, %i.fi
  br i1 %exitcond.not.i, label %._crit_edge233.loopexit.i, label %.lr.ph232.i, !llvm.loop !102

._crit_edge233.loopexit.i:                        ; preds = %.lr.ph232.i
  %.pre.i = load ptr, ptr %i.gc, align 8, !tbaa !57
  br label %._crit_edge233.i

._crit_edge233.i:                                 ; preds = %._crit_edge233.loopexit.i, %bb.ba
  %i.gs = phi ptr [ %i.gb, %bb.ba ], [ %.pre.i, %._crit_edge233.loopexit.i ]
  %.0164.lcssa.i = phi i64 [ 0, %bb.ba ], [ %i.fi, %._crit_edge233.loopexit.i ]
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.0164.lcssa.i
  store i8 0, ptr %i.gt, align 1, !tbaa !24
  %i.gu = add nuw nsw i64 %.0162234.i, 1          ; 2 uses
  %exitcond245.not.i = icmp eq i64 %i.gu, %i.er
  br i1 %exitcond245.not.i, label %._crit_edge237.i, label %bb.ba, !llvm.loop !103

._crit_edge237.i:                                 ; preds = %._crit_edge233.i, %bb.az
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fd, i64 144
  store ptr %.0160.i, ptr %i.gv, align 8, !tbaa !54
  store ptr %.0160.i, ptr %i.fo, align 8, !tbaa !56
  br label %bb.cp

bb.bb:                                            ; preds = %bb.aq
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fb, i64 96
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !63 ; 3 uses
  br i1 %.not.i, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fd, i64 144 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !54 ; 2 uses
  %.not196.i = icmp eq ptr %i.gz, null
  br i1 %.not196.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @free(ptr noundef nonnull %i.gz) #16
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ha = call noalias ptr @malloc(i64 noundef %i.er) #18 ; 2 uses
  store ptr %i.ha, ptr %i.gy, align 8, !tbaa !54
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %.preheader.sink.split.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bb
  br i1 %.not197224.i, label %._crit_edge228.i, label %.lr.ph227.i

.lr.ph227.i:                                      ; preds = %bb.bf
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fd, i64 144
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bj, %.lr.ph227.i
  %.1163225.i = phi i64 [ %i.er, %.lr.ph227.i ], [ %i.hd, %bb.bj ] ; 2 uses
  %i.hd = add nsw i64 %.1163225.i, -1             ; 3 uses
  %i.he = load ptr, ptr %i.gx, align 8, !tbaa !57 ; 2 uses
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !24  ; 2 uses
  %.not198.i = icmp eq i8 %i.hf, 0
  br i1 %.not198.i, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.gx, i64 %.1163225.i
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !57 ; 2 uses
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !24
  %or.cond.not.i = icmp eq i8 %i.hf, %i.hi
  br i1 %or.cond.not.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.hj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.he, ptr noundef nonnull dereferenceable(1) %i.hh) #17
  %i.hk = icmp eq i32 %i.hj, 0
  %i.hl = zext i1 %i.hk to i8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %i.hm = phi i8 [ 0, %bb.bg ], [ 0, %bb.bh ], [ %i.hl, %bb.bi ]
  %i.hn = load ptr, ptr %i.hc, align 8, !tbaa !54
  %i.ho = getelementptr inbounds i8, ptr %i.hn, i64 %i.hd
  store i8 %i.hm, ptr %i.ho, align 1, !tbaa !24
  %.not197.i = icmp eq i64 %i.hd, 0
  br i1 %.not197.i, label %._crit_edge228.i, label %bb.bg, !llvm.loop !104

._crit_edge228.i:                                 ; preds = %bb.bj, %bb.bf
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fd, i64 152
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !56
  br label %bb.cp

bb.bk:                                            ; preds = %bb.aq
  %i.hr = getelementptr inbounds nuw i8, ptr %i.fb, i64 96
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !63 ; 7 uses
  br i1 %.not.i, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ht = getelementptr inbounds nuw i8, ptr %i.fd, i64 144 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !54 ; 2 uses
  %.not192.i = icmp eq ptr %i.hu, null
  br i1 %.not192.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @free(ptr noundef nonnull %i.hu) #16
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.hv = call noalias ptr @malloc(i64 noundef %i.fj) #18 ; 2 uses
  store ptr %i.hv, ptr %i.ht, align 8, !tbaa !54
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %.preheader.sink.split.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bk
  %.not193219.i = icmp eq i64 %i.fj, 0
  br i1 %.not193219.i, label %._crit_edge223.i, label %.lr.ph222.i

.lr.ph222.i:                                      ; preds = %bb.bo
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fd, i64 144 ; 3 uses
  %xtraiter668 = and i64 %i.fj, 1
  %lcmp.mod669.not = icmp eq i64 %xtraiter668, 0
  br i1 %lcmp.mod669.not, label %.prol.loopexit667, label %.prol.preheader666

.prol.preheader666:                               ; preds = %.lr.ph222.i
  %i.hy = add nsw i64 %i.fj, -1                   ; 2 uses
  %i.hz = load i8, ptr %i.hs, align 1, !tbaa !24  ; 2 uses
  %.not194.i.prol = icmp eq i8 %i.hz, 0
  br i1 %.not194.i.prol, label %.prol.loopexit667.unr-lcssa, label %bb.bp

bb.bp:                                            ; preds = %.prol.preheader666
  %i.ia = getelementptr inbounds i8, ptr %i.hs, i64 %i.fj
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !24
  %i.ic = icmp eq i8 %i.hz, %i.ib
  %i.id = zext i1 %i.ic to i8
  br label %.prol.loopexit667.unr-lcssa

.prol.loopexit667.unr-lcssa:                      ; preds = %bb.bp, %.prol.preheader666
  %i.ie = phi i8 [ 0, %.prol.preheader666 ], [ %i.id, %bb.bp ]
  %i.if = load ptr, ptr %i.hx, align 8, !tbaa !54
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 %i.hy
  store i8 %i.ie, ptr %i.ig, align 1, !tbaa !24
  br label %.prol.loopexit667

.prol.loopexit667:                                ; preds = %.prol.loopexit667.unr-lcssa, %.lr.ph222.i
  %.1165220.i.unr = phi i64 [ %i.fj, %.lr.ph222.i ], [ %i.hy, %.prol.loopexit667.unr-lcssa ]
  %i.ih = icmp eq i64 %i.fj, 1
  br i1 %i.ih, label %._crit_edge223.i, label %.lr.ph222.i.new

.lr.ph222.i.new:                                  ; preds = %.prol.loopexit667, %bb.bt
  %.1165220.i = phi i64 [ %i.ir, %bb.bt ], [ %.1165220.i.unr, %.prol.loopexit667 ] ; 3 uses
  %i.ii = add nsw i64 %.1165220.i, -1             ; 2 uses
  %i.ij = load i8, ptr %i.hs, align 1, !tbaa !24  ; 2 uses
  %.not194.i = icmp eq i8 %i.ij, 0
  br i1 %.not194.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph222.i.new
  %i.ik = getelementptr inbounds i8, ptr %i.hs, i64 %.1165220.i
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !24
  %i.im = icmp eq i8 %i.ij, %i.il
  %i.in = zext i1 %i.im to i8
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.lr.ph222.i.new
  %i.io = phi i8 [ 0, %.lr.ph222.i.new ], [ %i.in, %bb.bq ]
  %i.ip = load ptr, ptr %i.hx, align 8, !tbaa !54
  %i.iq = getelementptr inbounds i8, ptr %i.ip, i64 %i.ii
  store i8 %i.io, ptr %i.iq, align 1, !tbaa !24
  %i.ir = add nsw i64 %.1165220.i, -2             ; 3 uses
  %i.is = load i8, ptr %i.hs, align 1, !tbaa !24  ; 2 uses
end_hunk_0
