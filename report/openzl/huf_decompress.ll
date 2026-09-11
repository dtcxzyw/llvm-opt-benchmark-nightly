Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/huf_decompress?download=true
inline.NumInlined: 722
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 38
begin_hunk_0_@HUF_decompress4X2_usingDTable_internal:bb.a
  ]

bb.u:                                             ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !20
  %i.ct = zext i8 %i.cs to i64
  %i.cu = shl nuw nsw i64 %i.ct, 48
  %i.cv = or disjoint i64 %i.cu, %i.cq
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cw = phi i64 [ %i.cv, %bb.u ], [ %i.cq, %bb.t ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !20
  %i.cz = zext i8 %i.cy to i64
  %i.da = shl nuw nsw i64 %i.cz, 40
  %i.db = add nuw nsw i64 %i.da, %i.cw
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %i.dc = phi i64 [ %i.db, %bb.v ], [ %i.cq, %bb.t ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !20
  %i.df = zext i8 %i.de to i64
  %i.dg = shl nuw nsw i64 %i.df, 32
  %i.dh = add nuw nsw i64 %i.dg, %i.dc
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %i.di = phi i64 [ %i.dh, %bb.w ], [ %i.cq, %bb.t ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !20
  %i.dl = zext i8 %i.dk to i64
  %i.dm = shl nuw nsw i64 %i.dl, 24
  %i.dn = add nuw nsw i64 %i.dm, %i.di
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.t
  %i.do = phi i64 [ %i.dn, %bb.x ], [ %i.cq, %bb.t ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !20
  %i.dr = zext i8 %i.dq to i64
  %i.ds = shl nuw nsw i64 %i.dr, 16
  %i.dt = add nuw nsw i64 %i.ds, %i.do
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.t
  %i.du = phi i64 [ %i.dt, %bb.y ], [ %i.cq, %bb.t ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !20
  %i.dx = zext i8 %i.dw to i64
  %i.dy = shl nuw nsw i64 %i.dx, 8
  %i.dz = add nuw nsw i64 %i.dy, %i.du
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.t
  %.sroa.0309.11.i = phi i64 [ %i.cq, %bb.t ], [ %i.dz, %bb.z ]
  %i.ea = getelementptr i8, ptr %i.s, i64 -1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !20  ; 2 uses
  %.not.i152.i = icmp eq i8 %i.eb, 0
  br i1 %.not.i152.i, label %BIT_initDStream.exit.thread.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ec = zext i8 %i.eb to i32
  %i.ed = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.ec, i1 true)
  %i.ee = shl nuw nsw i16 %.val149.i, 3
  %i.ef = zext nneg i16 %i.ee to i32
  %reass.sub125 = sub nsw i32 %i.ed, %i.ef
  %i.eg = add nsw i32 %reass.sub125, 41
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.thread.i156.i
  %.sroa.0309.12.i = phi i64 [ %.sroa.0309.11.i, %bb.ab ], [ %.val.i154.i, %.thread.i156.i ] ; 2 uses
  %.sroa.36310.14.i = phi i32 [ %i.eg, %bb.ab ], [ %i.co, %.thread.i156.i ] ; 2 uses
  %.sroa.116344.11.i = phi ptr [ %i.r, %bb.ab ], [ %i.ck, %.thread.i156.i ] ; 2 uses
  %i.eh = icmp eq i16 %.val148.i, 0
  br i1 %i.eh, label %BIT_initDStream.exit.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ei = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 5 uses
  %i.ej = icmp ugt i16 %.val148.i, 7
  br i1 %i.ej, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ek = getelementptr i8, ptr %i.t, i64 -1
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !20  ; 2 uses
  %.not51.i161.i = icmp eq i8 %i.el, 0
  br i1 %.not51.i161.i, label %BIT_initDStream.exit.thread.i, label %.thread.i162.i

.thread.i162.i:                                   ; preds = %bb.ae
  %i.em = getelementptr inbounds i8, ptr %i.t, i64 -8 ; 2 uses
  %.val.i160.i = load i64, ptr %i.em, align 1, !tbaa !26
  %i.en = zext i8 %i.el to i32
  %i.eo = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.en, i1 true)
  %i.ep = xor i32 %i.eo, 31
  %i.eq = sub nuw nsw i32 8, %i.ep
  br label %bb.ao

bb.af:                                            ; preds = %bb.ad
  %i.er = load i8, ptr %i.s, align 1, !tbaa !20
  %i.es = zext i8 %i.er to i64                    ; 7 uses
  switch i16 %.val148.i, label %bb.am [
    i16 7, label %bb.ag
    i16 6, label %bb.ah
    i16 5, label %bb.ai
    i16 4, label %bb.aj
    i16 3, label %bb.ak
    i16 2, label %bb.al
  ]

bb.ag:                                            ; preds = %bb.af
  %i.et = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !20
  %i.ev = zext i8 %i.eu to i64
  %i.ew = shl nuw nsw i64 %i.ev, 48
  %i.ex = or disjoint i64 %i.ew, %i.es
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ey = phi i64 [ %i.ex, %bb.ag ], [ %i.es, %bb.af ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !20
  %i.fb = zext i8 %i.fa to i64
  %i.fc = shl nuw nsw i64 %i.fb, 40
  %i.fd = add nuw nsw i64 %i.fc, %i.ey
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %i.fe = phi i64 [ %i.fd, %bb.ah ], [ %i.es, %bb.af ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !20
  %i.fh = zext i8 %i.fg to i64
  %i.fi = shl nuw nsw i64 %i.fh, 32
  %i.fj = add nuw nsw i64 %i.fi, %i.fe
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.af
  %i.fk = phi i64 [ %i.fj, %bb.ai ], [ %i.es, %bb.af ]
  %i.fl = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !20
  %i.fn = zext i8 %i.fm to i64
  %i.fo = shl nuw nsw i64 %i.fn, 24
  %i.fp = add nuw nsw i64 %i.fo, %i.fk
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af
  %i.fq = phi i64 [ %i.fp, %bb.aj ], [ %i.es, %bb.af ]
  %i.fr = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !20
  %i.ft = zext i8 %i.fs to i64
  %i.fu = shl nuw nsw i64 %i.ft, 16
  %i.fv = add nuw nsw i64 %i.fu, %i.fq
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.af
  %i.fw = phi i64 [ %i.fv, %bb.ak ], [ %i.es, %bb.af ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !20
  %i.fz = zext i8 %i.fy to i64
  %i.ga = shl nuw nsw i64 %i.fz, 8
  %i.gb = add nuw nsw i64 %i.ga, %i.fw
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.af
  %.sroa.0.11.i = phi i64 [ %i.es, %bb.af ], [ %i.gb, %bb.al ]
  %i.gc = getelementptr i8, ptr %i.t, i64 -1
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !20  ; 2 uses
  %.not.i158.i = icmp eq i8 %i.gd, 0
  br i1 %.not.i158.i, label %BIT_initDStream.exit.thread.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ge = zext i8 %i.gd to i32
  %i.gf = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.ge, i1 true)
  %i.gg = shl nuw nsw i16 %.val148.i, 3
  %i.gh = zext nneg i16 %i.gg to i32
  %reass.sub126 = sub nsw i32 %i.gf, %i.gh
  %i.gi = add nsw i32 %reass.sub126, 41
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.thread.i162.i
  %.sroa.0.12.i = phi i64 [ %.sroa.0.11.i, %bb.an ], [ %.val.i160.i, %.thread.i162.i ] ; 2 uses
  %.sroa.36.14.i = phi i32 [ %i.gi, %bb.an ], [ %i.eq, %.thread.i162.i ] ; 2 uses
  %.sroa.116224.11.i = phi ptr [ %i.s, %bb.an ], [ %i.em, %.thread.i162.i ] ; 2 uses
  %i.gj = call fastcc i64 @BIT_initDStream(ptr noundef %6, ptr noundef nonnull %i.t, i64 noundef %i.p) ; 2 uses
  %i.gk = icmp ult i64 %i.gj, -119
  br i1 %i.gk, label %bb.ap, label %BIT_initDStream.exit.thread.i

bb.ap:                                            ; preds = %bb.ao
  %.neg.i.i = mul i64 %i.v, -3
  %gepdiff.i.i = add i64 %.neg.i.i, %1
  %i.gl = icmp ugt i64 %gepdiff.i.i, 7
  %.not848.i = icmp ult ptr %i.y, %i.f
  %or.cond.i = select i1 %i.gl, i1 %.not848.i, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.loopexit670.i

.lr.ph.i:                                         ; preds = %bb.ap
  %.promoted.i = load i64, ptr %6, align 8
  %i.gm = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.gn = and i32 %i.gm, 63
  %i.go = zext nneg i32 %i.gn to i64              ; 16 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !43
  %.promoted705.i = load i32, ptr %i.gp, align 8, !tbaa !44
  %.promoted708.i = load ptr, ptr %i.gq, align 8, !tbaa !45
  br label %bb.aq

bb.aq:                                            ; preds = %BIT_reloadDStreamFast.exit172.i, %.lr.ph.i
  %i.gt = phi ptr [ %.promoted708.i, %.lr.ph.i ], [ %i.qg, %BIT_reloadDStreamFast.exit172.i ] ; 2 uses
  %.val27706.i = phi i32 [ %.promoted705.i, %.lr.ph.i ], [ %i.qh, %BIT_reloadDStreamFast.exit172.i ] ; 2 uses
  %.0162.i692.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.pv, %BIT_reloadDStreamFast.exit172.i ] ; 2 uses
  %.0166.i691.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.nr, %BIT_reloadDStreamFast.exit172.i ] ; 2 uses
  %.0170.i690.i = phi ptr [ %i.w, %.lr.ph.i ], [ %i.lb, %BIT_reloadDStreamFast.exit172.i ] ; 2 uses
  %.0174.i689.i = phi ptr [ %0, %.lr.ph.i ], [ %i.ix, %BIT_reloadDStreamFast.exit172.i ] ; 2 uses
  %.sroa.116224.10688.i = phi ptr [ %.sroa.116224.11.i, %.lr.ph.i ], [ %.sroa.116224.12.i, %BIT_reloadDStreamFast.exit172.i ] ; 3 uses
  %.sroa.36.13687.i = phi i32 [ %.sroa.36.14.i, %.lr.ph.i ], [ %.sroa.36.15.i, %BIT_reloadDStreamFast.exit172.i ] ; 2 uses
  %.sroa.0.10686.i = phi i64 [ %.sroa.0.12.i, %.lr.ph.i ], [ %.sroa.0.13.i, %BIT_reloadDStreamFast.exit172.i ] ; 5 uses
  %.sroa.116344.10685.i = phi ptr [ %.sroa.116344.11.i, %.lr.ph.i ], [ %.sroa.116344.12.i, %BIT_reloadDStreamFast.exit172.i ] ; 3 uses
  %.sroa.36310.13684.i = phi i32 [ %.sroa.36310.14.i, %.lr.ph.i ], [ %.sroa.36310.15.i, %BIT_reloadDStreamFast.exit172.i ] ; 2 uses
  %.sroa.0309.10683.i = phi i64 [ %.sroa.0309.12.i, %.lr.ph.i ], [ %.sroa.0309.13.i, %BIT_reloadDStreamFast.exit172.i ] ; 5 uses
  %.sroa.116466.10682.i = phi ptr [ %.sroa.116466.11.i, %.lr.ph.i ], [ %.sroa.116466.12.i, %BIT_reloadDStreamFast.exit172.i ] ; 3 uses
  %.sroa.36432.13681.i = phi i32 [ %.sroa.36432.14.i, %.lr.ph.i ], [ %.sroa.36432.15.i, %BIT_reloadDStreamFast.exit172.i ] ; 2 uses
  %.sroa.0431.10680.i = phi i64 [ %.sroa.0431.12.i, %.lr.ph.i ], [ %.sroa.0431.13.i, %BIT_reloadDStreamFast.exit172.i ] ; 5 uses
  %.val.i.i170678679.i = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %.val.i.i170.i, %BIT_reloadDStreamFast.exit172.i ] ; 4 uses
  %i.gu = and i32 %.sroa.36432.13681.i, 63
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = shl i64 %.sroa.0431.10680.i, %i.gv
  %i.gx = lshr i64 %i.gw, %i.go
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.gx ; 3 uses
  %i.gz = load i16, ptr %i.gy, align 2
  store i16 %i.gz, ptr %.0174.i689.i, align 1
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 2
  %i.hb = load i8, ptr %i.ha, align 2, !tbaa !29
  %i.hc = zext i8 %i.hb to i32
  %i.hd = add i32 %.sroa.36432.13681.i, %i.hc     ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.gy, i64 3
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !30
  %i.hg = zext i8 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %.0174.i689.i, i64 %i.hg ; 2 uses
  %i.hi = and i32 %i.hd, 63
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = shl i64 %.sroa.0431.10680.i, %i.hj
  %i.hl = lshr i64 %i.hk, %i.go
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.hl ; 3 uses
  %i.hn = load i16, ptr %i.hm, align 2
  store i16 %i.hn, ptr %i.hh, align 1
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 2
  %i.hp = load i8, ptr %i.ho, align 2, !tbaa !29
  %i.hq = zext i8 %i.hp to i32
  %i.hr = add i32 %i.hd, %i.hq                    ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hm, i64 3
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !30
  %i.hu = zext i8 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hu ; 2 uses
  %i.hw = and i32 %i.hr, 63
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = shl i64 %.sroa.0431.10680.i, %i.hx
  %i.hz = lshr i64 %i.hy, %i.go
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.hz ; 3 uses
  %i.ib = load i16, ptr %i.ia, align 2
  store i16 %i.ib, ptr %i.hv, align 1
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 2
  %i.id = load i8, ptr %i.ic, align 2, !tbaa !29
  %i.ie = zext i8 %i.id to i32
  %i.if = add i32 %i.hr, %i.ie                    ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ia, i64 3
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !30
  %i.ii = zext i8 %i.ih to i64
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.ii ; 2 uses
  %i.ik = and i32 %i.if, 63
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = shl i64 %.sroa.0431.10680.i, %i.il
  %i.in = lshr i64 %i.im, %i.go
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.in ; 3 uses
  %i.ip = load i16, ptr %i.io, align 2
  store i16 %i.ip, ptr %i.ij, align 1
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 2
  %i.ir = load i8, ptr %i.iq, align 2, !tbaa !29
  %i.is = zext i8 %i.ir to i32
  %i.it = add i32 %i.if, %i.is                    ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.io, i64 3
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !30
  %i.iw = zext i8 %i.iv to i64
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.iw ; 3 uses
  %i.iy = and i32 %.sroa.36310.13684.i, 63
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = shl i64 %.sroa.0309.10683.i, %i.iz
  %i.jb = lshr i64 %i.ja, %i.go
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.jb ; 3 uses
  %i.jd = load i16, ptr %i.jc, align 2
  store i16 %i.jd, ptr %.0170.i690.i, align 1
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 2
  %i.jf = load i8, ptr %i.je, align 2, !tbaa !29
  %i.jg = zext i8 %i.jf to i32
  %i.jh = add i32 %.sroa.36310.13684.i, %i.jg     ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jc, i64 3
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !30
  %i.jk = zext i8 %i.jj to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %.0170.i690.i, i64 %i.jk ; 2 uses
  %i.jm = and i32 %i.jh, 63
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = shl i64 %.sroa.0309.10683.i, %i.jn
  %i.jp = lshr i64 %i.jo, %i.go
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.jp ; 3 uses
  %i.jr = load i16, ptr %i.jq, align 2
  store i16 %i.jr, ptr %i.jl, align 1
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 2
  %i.jt = load i8, ptr %i.js, align 2, !tbaa !29
  %i.ju = zext i8 %i.jt to i32
  %i.jv = add i32 %i.jh, %i.ju                    ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jq, i64 3
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !30
  %i.jy = zext i8 %i.jx to i64
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jy ; 2 uses
  %i.ka = and i32 %i.jv, 63
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = shl i64 %.sroa.0309.10683.i, %i.kb
  %i.kd = lshr i64 %i.kc, %i.go
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.kd ; 3 uses
  %i.kf = load i16, ptr %i.ke, align 2
  store i16 %i.kf, ptr %i.jz, align 1
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 2
  %i.kh = load i8, ptr %i.kg, align 2, !tbaa !29
  %i.ki = zext i8 %i.kh to i32
  %i.kj = add i32 %i.jv, %i.ki                    ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ke, i64 3
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !30
  %i.km = zext i8 %i.kl to i64
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.km ; 2 uses
  %i.ko = and i32 %i.kj, 63
  %i.kp = zext nneg i32 %i.ko to i64
  %i.kq = shl i64 %.sroa.0309.10683.i, %i.kp
  %i.kr = lshr i64 %i.kq, %i.go
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.kr ; 3 uses
  %i.kt = load i16, ptr %i.ks, align 2
  store i16 %i.kt, ptr %i.kn, align 1
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 2
  %i.kv = load i8, ptr %i.ku, align 2, !tbaa !29
  %i.kw = zext i8 %i.kv to i32
  %i.kx = add i32 %i.kj, %i.kw                    ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ks, i64 3
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !30
  %i.la = zext i8 %i.kz to i64
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.la ; 3 uses
  %i.lc = icmp ult ptr %.sroa.116466.10682.i, %i.ae ; 2 uses
  br i1 %i.lc, label %BIT_reloadDStreamFast.exit.i, label %bb.ar, !prof !46

bb.ar:                                            ; preds = %bb.aq
  %i.ld = lshr i32 %i.it, 3
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = sub nsw i64 0, %i.le
  %i.lg = getelementptr inbounds i8, ptr %.sroa.116466.10682.i, i64 %i.lf ; 2 uses
  %i.lh = and i32 %i.it, 7
  %.val.i.i.i = load i64, ptr %i.lg, align 1, !tbaa !26
  br label %BIT_reloadDStreamFast.exit.i

BIT_reloadDStreamFast.exit.i:                     ; preds = %bb.ar, %bb.aq
  %.sroa.0431.13.i = phi i64 [ %.sroa.0431.10680.i, %bb.aq ], [ %.val.i.i.i, %bb.ar ] ; 3 uses
  %.sroa.36432.15.i = phi i32 [ %i.it, %bb.aq ], [ %i.lh, %bb.ar ] ; 3 uses
  %.sroa.116466.12.i = phi ptr [ %.sroa.116466.10682.i, %bb.aq ], [ %i.lg, %bb.ar ] ; 3 uses
  %i.li = icmp ult ptr %.sroa.116344.10685.i, %i.cg
  br i1 %i.li, label %BIT_reloadDStreamFast.exit166.i, label %bb.as, !prof !46

bb.as:                                            ; preds = %BIT_reloadDStreamFast.exit.i
  %i.lj = lshr i32 %i.kx, 3
  %i.lk = zext nneg i32 %i.lj to i64
  %i.ll = sub nsw i64 0, %i.lk
  %i.lm = getelementptr inbounds i8, ptr %.sroa.116344.10685.i, i64 %i.ll ; 2 uses
  %i.ln = and i32 %i.kx, 7
  %.val.i.i164.i = load i64, ptr %i.lm, align 1, !tbaa !26
  br label %BIT_reloadDStreamFast.exit166.i

BIT_reloadDStreamFast.exit166.i:                  ; preds = %bb.as, %BIT_reloadDStreamFast.exit.i
  %.sroa.0309.13.i = phi i64 [ %.sroa.0309.10683.i, %BIT_reloadDStreamFast.exit.i ], [ %.val.i.i164.i, %bb.as ] ; 3 uses
  %.sroa.36310.15.i = phi i32 [ %i.kx, %BIT_reloadDStreamFast.exit.i ], [ %i.ln, %bb.as ] ; 3 uses
  %.sroa.116344.12.i = phi ptr [ %.sroa.116344.10685.i, %BIT_reloadDStreamFast.exit.i ], [ %i.lm, %bb.as ] ; 3 uses
  %.0.i165.i = phi i1 [ true, %BIT_reloadDStreamFast.exit.i ], [ %i.lc, %bb.as ]
  %i.lo = and i32 %.sroa.36.13687.i, 63
  %i.lp = zext nneg i32 %i.lo to i64
  %i.lq = shl i64 %.sroa.0.10686.i, %i.lp
  %i.lr = lshr i64 %i.lq, %i.go
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.lr ; 3 uses
  %i.lt = load i16, ptr %i.ls, align 2
  store i16 %i.lt, ptr %.0166.i691.i, align 1
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 2
  %i.lv = load i8, ptr %i.lu, align 2, !tbaa !29
  %i.lw = zext i8 %i.lv to i32
  %i.lx = add i32 %.sroa.36.13687.i, %i.lw        ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ls, i64 3
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !30
  %i.ma = zext i8 %i.lz to i64
  %i.mb = getelementptr inbounds nuw i8, ptr %.0166.i691.i, i64 %i.ma ; 2 uses
  %i.mc = and i32 %i.lx, 63
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = shl i64 %.sroa.0.10686.i, %i.md
  %i.mf = lshr i64 %i.me, %i.go
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.mf ; 3 uses
  %i.mh = load i16, ptr %i.mg, align 2
  store i16 %i.mh, ptr %i.mb, align 1
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 2
  %i.mj = load i8, ptr %i.mi, align 2, !tbaa !29
  %i.mk = zext i8 %i.mj to i32
  %i.ml = add i32 %i.lx, %i.mk                    ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mg, i64 3
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !30
  %i.mo = zext i8 %i.mn to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.mo ; 2 uses
  %i.mq = and i32 %i.ml, 63
  %i.mr = zext nneg i32 %i.mq to i64
  %i.ms = shl i64 %.sroa.0.10686.i, %i.mr
  %i.mt = lshr i64 %i.ms, %i.go
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.mt ; 3 uses
  %i.mv = load i16, ptr %i.mu, align 2
  store i16 %i.mv, ptr %i.mp, align 1
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 2
  %i.mx = load i8, ptr %i.mw, align 2, !tbaa !29
  %i.my = zext i8 %i.mx to i32
  %i.mz = add i32 %i.ml, %i.my                    ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mu, i64 3
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !30
  %i.nc = zext i8 %i.nb to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.nc ; 2 uses
  %i.ne = and i32 %i.mz, 63
  %i.nf = zext nneg i32 %i.ne to i64
  %i.ng = shl i64 %.sroa.0.10686.i, %i.nf
  %i.nh = lshr i64 %i.ng, %i.go
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.nh ; 3 uses
  %i.nj = load i16, ptr %i.ni, align 2
  store i16 %i.nj, ptr %i.nd, align 1
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 2
  %i.nl = load i8, ptr %i.nk, align 2, !tbaa !29
  %i.nm = zext i8 %i.nl to i32
  %i.nn = add i32 %i.mz, %i.nm                    ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.ni, i64 3
  %i.np = load i8, ptr %i.no, align 1, !tbaa !30
  %i.nq = zext i8 %i.np to i64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.nq ; 3 uses
  %i.ns = and i32 %.val27706.i, 63
  %i.nt = zext nneg i32 %i.ns to i64
  %i.nu = shl i64 %.val.i.i170678679.i, %i.nt
  %i.nv = lshr i64 %i.nu, %i.go
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.nv ; 3 uses
  %i.nx = load i16, ptr %i.nw, align 2
  store i16 %i.nx, ptr %.0162.i692.i, align 1
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 2
  %i.nz = load i8, ptr %i.ny, align 2, !tbaa !29
  %i.oa = zext i8 %i.nz to i32
  %i.ob = add i32 %.val27706.i, %i.oa             ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nw, i64 3
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !30
  %i.oe = zext i8 %i.od to i64
  %i.of = getelementptr inbounds nuw i8, ptr %.0162.i692.i, i64 %i.oe ; 2 uses
  %i.og = and i32 %i.ob, 63
  %i.oh = zext nneg i32 %i.og to i64
  %i.oi = shl i64 %.val.i.i170678679.i, %i.oh
  %i.oj = lshr i64 %i.oi, %i.go
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.oj ; 3 uses
  %i.ol = load i16, ptr %i.ok, align 2
  store i16 %i.ol, ptr %i.of, align 1
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 2
  %i.on = load i8, ptr %i.om, align 2, !tbaa !29
  %i.oo = zext i8 %i.on to i32
  %i.op = add i32 %i.ob, %i.oo                    ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ok, i64 3
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !30
  %i.os = zext i8 %i.or to i64
  %i.ot = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.os ; 2 uses
  %i.ou = and i32 %i.op, 63
  %i.ov = zext nneg i32 %i.ou to i64
  %i.ow = shl i64 %.val.i.i170678679.i, %i.ov
  %i.ox = lshr i64 %i.ow, %i.go
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ox ; 3 uses
  %i.oz = load i16, ptr %i.oy, align 2
  store i16 %i.oz, ptr %i.ot, align 1
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 2
  %i.pb = load i8, ptr %i.pa, align 2, !tbaa !29
  %i.pc = zext i8 %i.pb to i32
  %i.pd = add i32 %i.op, %i.pc                    ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oy, i64 3
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !30
  %i.pg = zext i8 %i.pf to i64
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ot, i64 %i.pg ; 2 uses
  %i.pi = and i32 %i.pd, 63
  %i.pj = zext nneg i32 %i.pi to i64
  %i.pk = shl i64 %.val.i.i170678679.i, %i.pj
  %i.pl = lshr i64 %i.pk, %i.go
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.pl ; 3 uses
  %i.pn = load i16, ptr %i.pm, align 2
  store i16 %i.pn, ptr %i.ph, align 1
  %i.po = getelementptr inbounds nuw i8, ptr %i.pm, i64 2
  %i.pp = load i8, ptr %i.po, align 2, !tbaa !29
  %i.pq = zext i8 %i.pp to i32
  %i.pr = add i32 %i.pd, %i.pq                    ; 3 uses
  store i32 %i.pr, ptr %i.gp, align 8, !tbaa !44
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pm, i64 3
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !30
  %i.pu = zext i8 %i.pt to i64
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.pu ; 4 uses
  %i.pw = icmp ult ptr %.sroa.116224.10688.i, %i.ei
  br i1 %i.pw, label %BIT_reloadDStreamFast.exit169.i, label %bb.at, !prof !46

bb.at:                                            ; preds = %BIT_reloadDStreamFast.exit166.i
  %i.px = lshr i32 %i.nn, 3
  %i.py = zext nneg i32 %i.px to i64
  %i.pz = sub nsw i64 0, %i.py
  %i.qa = getelementptr inbounds i8, ptr %.sroa.116224.10688.i, i64 %i.pz ; 2 uses
  %i.qb = and i32 %i.nn, 7
  %.val.i.i167.i = load i64, ptr %i.qa, align 1, !tbaa !26
  br label %BIT_reloadDStreamFast.exit169.i

BIT_reloadDStreamFast.exit169.i:                  ; preds = %bb.at, %BIT_reloadDStreamFast.exit166.i
  %.sroa.0.13.i = phi i64 [ %.sroa.0.10686.i, %BIT_reloadDStreamFast.exit166.i ], [ %.val.i.i167.i, %bb.at ] ; 3 uses
  %.sroa.36.15.i = phi i32 [ %i.nn, %BIT_reloadDStreamFast.exit166.i ], [ %i.qb, %bb.at ] ; 3 uses
  %.sroa.116224.12.i = phi ptr [ %.sroa.116224.10688.i, %BIT_reloadDStreamFast.exit166.i ], [ %i.qa, %bb.at ] ; 3 uses
  %.0.i168.i = phi i1 [ true, %BIT_reloadDStreamFast.exit166.i ], [ %.0.i165.i, %bb.at ]
  %i.qc = icmp ult ptr %i.gt, %i.gs
  br i1 %i.qc, label %.loopexit670.i, label %BIT_reloadDStreamFast.exit172.i, !prof !46

BIT_reloadDStreamFast.exit172.i:                  ; preds = %BIT_reloadDStreamFast.exit169.i
  %i.qd = lshr i32 %i.pr, 3
  %i.qe = zext nneg i32 %i.qd to i64
  %i.qf = sub nsw i64 0, %i.qe
  %i.qg = getelementptr inbounds i8, ptr %i.gt, i64 %i.qf ; 3 uses
  store ptr %i.qg, ptr %i.gq, align 8, !tbaa !45
  %i.qh = and i32 %i.pr, 7                        ; 2 uses
  store i32 %i.qh, ptr %i.gp, align 8, !tbaa !44
  %.val.i.i170.i = load i64, ptr %i.qg, align 1, !tbaa !26 ; 2 uses
  store i64 %.val.i.i170.i, ptr %6, align 8, !tbaa !47
  %i.qi = icmp uge ptr %i.pv, %i.f
  %.not193.i.i = or i1 %i.qi, %.0.i168.i
  br i1 %.not193.i.i, label %.loopexit670.i, label %bb.aq, !llvm.loop !6

.loopexit670.i:                                   ; preds = %BIT_reloadDStreamFast.exit172.i, %BIT_reloadDStreamFast.exit169.i, %bb.ap
  %.sroa.0431.0.i = phi i64 [ %.sroa.0431.12.i, %bb.ap ], [ %.sroa.0431.13.i, %BIT_reloadDStreamFast.exit169.i ], [ %.sroa.0431.13.i, %BIT_reloadDStreamFast.exit172.i ] ; 6 uses
  %.sroa.36432.0.i = phi i32 [ %.sroa.36432.14.i, %bb.ap ], [ %.sroa.36432.15.i, %BIT_reloadDStreamFast.exit169.i ], [ %.sroa.36432.15.i, %BIT_reloadDStreamFast.exit172.i ] ; 12 uses
  %.sroa.116466.0.i = phi ptr [ %.sroa.116466.11.i, %bb.ap ], [ %.sroa.116466.12.i, %BIT_reloadDStreamFast.exit169.i ], [ %.sroa.116466.12.i, %BIT_reloadDStreamFast.exit172.i ] ; 8 uses
  %.sroa.0309.0.i = phi i64 [ %.sroa.0309.12.i, %bb.ap ], [ %.sroa.0309.13.i, %BIT_reloadDStreamFast.exit169.i ], [ %.sroa.0309.13.i, %BIT_reloadDStreamFast.exit172.i ] ; 6 uses
  %.sroa.36310.0.i = phi i32 [ %.sroa.36310.14.i, %bb.ap ], [ %.sroa.36310.15.i, %BIT_reloadDStreamFast.exit169.i ], [ %.sroa.36310.15.i, %BIT_reloadDStreamFast.exit172.i ] ; 12 uses
  %.sroa.116344.0.i = phi ptr [ %.sroa.116344.11.i, %bb.ap ], [ %.sroa.116344.12.i, %BIT_reloadDStreamFast.exit169.i ], [ %.sroa.116344.12.i, %BIT_reloadDStreamFast.exit172.i ] ; 8 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.12.i, %bb.ap ], [ %.sroa.0.13.i, %BIT_reloadDStreamFast.exit169.i ], [ %.sroa.0.13.i, %BIT_reloadDStreamFast.exit172.i ] ; 6 uses
  %.sroa.36.0.i = phi i32 [ %.sroa.36.14.i, %bb.ap ], [ %.sroa.36.15.i, %BIT_reloadDStreamFast.exit169.i ], [ %.sroa.36.15.i, %BIT_reloadDStreamFast.exit172.i ] ; 12 uses
  %.sroa.116224.0.i = phi ptr [ %.sroa.116224.11.i, %bb.ap ], [ %.sroa.116224.12.i, %BIT_reloadDStreamFast.exit169.i ], [ %.sroa.116224.12.i, %BIT_reloadDStreamFast.exit172.i ] ; 8 uses
  %.3177.i.i = phi ptr [ %0, %bb.ap ], [ %i.ix, %BIT_reloadDStreamFast.exit169.i ], [ %i.ix, %BIT_reloadDStreamFast.exit172.i ] ; 10 uses
  %.3173.i.i = phi ptr [ %i.w, %bb.ap ], [ %i.lb, %BIT_reloadDStreamFast.exit169.i ], [ %i.lb, %BIT_reloadDStreamFast.exit172.i ] ; 10 uses
  %.3169.i.i = phi ptr [ %i.x, %bb.ap ], [ %i.nr, %BIT_reloadDStreamFast.exit169.i ], [ %i.nr, %BIT_reloadDStreamFast.exit172.i ] ; 10 uses
  %.3165.i.i = phi ptr [ %i.y, %bb.ap ], [ %i.pv, %BIT_reloadDStreamFast.exit169.i ], [ %i.pv, %BIT_reloadDStreamFast.exit172.i ] ; 9 uses
  %i.qj = icmp ugt ptr %.3177.i.i, %i.w
  %i.qk = icmp ugt ptr %.3173.i.i, %i.x
  %or.cond198.i.i = select i1 %i.qj, i1 true, i1 %i.qk
  %i.ql = icmp ugt ptr %.3169.i.i, %i.y
  %or.cond199.i.i = select i1 %or.cond198.i.i, i1 true, i1 %i.ql
  br i1 %or.cond199.i.i, label %BIT_initDStream.exit.thread.i, label %bb.au

bb.au:                                            ; preds = %.loopexit670.i
  %i.qm = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.qn = ptrtoint ptr %.3177.i.i to i64
  %i.qo = sub i64 %i.qm, %i.qn
  %i.qp = icmp ugt i64 %i.qo, 7
  br i1 %i.qp, label %bb.av, label %bb.bg

bb.av:                                            ; preds = %bb.au
  %i.qq = icmp samesign ult i32 %i.z, 12
  %i.qr = icmp ugt i32 %.sroa.36432.0.i, 64       ; 2 uses
  br i1 %i.qq, label %.preheader663.i, label %.preheader664.i

.preheader664.i:                                  ; preds = %bb.av
  br i1 %i.qr, label %BIT_reloadDStream.exit249.i.i, label %.lr.ph713.i, !prof !32

.lr.ph713.i:                                      ; preds = %.preheader664.i
  %i.qs = ptrtoint ptr %i.q to i64
  %i.qt = getelementptr inbounds i8, ptr %i.w, i64 -7
  %i.qu = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.qv = and i32 %i.qu, 63
  %i.qw = zext nneg i32 %i.qv to i64              ; 4 uses
  br label %bb.bb

.preheader663.i:                                  ; preds = %bb.av
  br i1 %i.qr, label %BIT_reloadDStream.exit249.i.i, label %.lr.ph731.i, !prof !32

.lr.ph731.i:                                      ; preds = %.preheader663.i
  %i.qx = ptrtoint ptr %i.q to i64
  %i.qy = getelementptr inbounds i8, ptr %i.w, i64 -9
  %i.qz = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.ra = and i32 %i.qz, 63
  %i.rb = zext nneg i32 %i.ra to i64              ; 5 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ba, %.lr.ph731.i
  %.0.i225.i730.i = phi ptr [ %.3177.i.i, %.lr.ph731.i ], [ %i.ui, %bb.ba ] ; 5 uses
  %.sroa.116466.8729.i = phi ptr [ %.sroa.116466.0.i, %.lr.ph731.i ], [ %.sroa.116466.9.i, %bb.ba ] ; 5 uses
  %.sroa.36432.11728.i = phi i32 [ %.sroa.36432.0.i, %.lr.ph731.i ], [ %i.ue, %bb.ba ] ; 5 uses
  %.sroa.0431.8727.i = phi i64 [ %.sroa.0431.0.i, %.lr.ph731.i ], [ %.sroa.0431.9.i, %bb.ba ]
  %.not.i227.i.i = icmp ult ptr %.sroa.116466.8729.i, %i.ae
  br i1 %.not.i227.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.rc = lshr i32 %.sroa.36432.11728.i, 3
  %i.rd = and i32 %.sroa.36432.11728.i, 7
  br label %BIT_reloadDStream.exit.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.re = icmp eq ptr %.sroa.116466.8729.i, %i.q
  br i1 %i.re, label %BIT_reloadDStream.exit249.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.rf = lshr i32 %.sroa.36432.11728.i, 3        ; 2 uses
  %i.rg = zext nneg i32 %i.rf to i64
  %i.rh = sub nsw i64 0, %i.rg
  %i.ri = getelementptr inbounds i8, ptr %.sroa.116466.8729.i, i64 %i.rh
  %i.rj = icmp uge ptr %i.ri, %i.q                ; 2 uses
  %i.rk = ptrtoint ptr %.sroa.116466.8729.i to i64
  %i.rl = sub i64 %i.rk, %i.qx
  %i.rm = trunc i64 %i.rl to i32
  %.021.i.i.i = select i1 %i.rj, i32 %i.rf, i32 %i.rm ; 2 uses
  %i.rn = shl i32 %.021.i.i.i, 3
  %i.ro = sub i32 %.sroa.36432.11728.i, %i.rn
  br label %BIT_reloadDStream.exit.i.i

BIT_reloadDStream.exit.i.i:                       ; preds = %bb.az, %bb.ax
  %.sroa.36432.12.i = phi i32 [ %i.rd, %bb.ax ], [ %i.ro, %bb.az ] ; 3 uses
  %.pn606.in.i = phi i32 [ %i.rc, %bb.ax ], [ %.021.i.i.i, %bb.az ]
  %.022.i.i.i = phi i1 [ true, %bb.ax ], [ %i.rj, %bb.az ]
  %.pn606.i = zext i32 %.pn606.in.i to i64
  %.pn605.i = sub nsw i64 0, %.pn606.i
  %.sroa.116466.9.i = getelementptr inbounds i8, ptr %.sroa.116466.8729.i, i64 %.pn605.i ; 3 uses
  %.sroa.0431.9.i = load i64, ptr %.sroa.116466.9.i, align 1, !tbaa !26 ; 8 uses
  %i.rp = icmp ult ptr %.0.i225.i730.i, %i.qy
  %i.rq = and i1 %i.rp, %.022.i.i.i
  br i1 %i.rq, label %bb.ba, label %BIT_reloadDStream.exit249.i.i

bb.ba:                                            ; preds = %BIT_reloadDStream.exit.i.i
  %i.rr = and i32 %.sroa.36432.12.i, 63
  %i.rs = zext nneg i32 %i.rr to i64
  %i.rt = shl i64 %.sroa.0431.9.i, %i.rs
  %i.ru = lshr i64 %i.rt, %i.rb
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ru ; 3 uses
  %i.rw = load i16, ptr %i.rv, align 2
  store i16 %i.rw, ptr %.0.i225.i730.i, align 1
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 2
  %i.ry = load i8, ptr %i.rx, align 2, !tbaa !29
  %i.rz = zext i8 %i.ry to i32
  %i.sa = add i32 %.sroa.36432.12.i, %i.rz        ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rv, i64 3
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !30
  %i.sd = zext i8 %i.sc to i64
  %i.se = getelementptr inbounds nuw i8, ptr %.0.i225.i730.i, i64 %i.sd ; 2 uses
  %i.sf = and i32 %i.sa, 63
  %i.sg = zext nneg i32 %i.sf to i64
  %i.sh = shl i64 %.sroa.0431.9.i, %i.sg
  %i.si = lshr i64 %i.sh, %i.rb
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.si ; 3 uses
  %i.sk = load i16, ptr %i.sj, align 2
  store i16 %i.sk, ptr %i.se, align 1
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sj, i64 2
  %i.sm = load i8, ptr %i.sl, align 2, !tbaa !29
  %i.sn = zext i8 %i.sm to i32
  %i.so = add i32 %i.sa, %i.sn                    ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sj, i64 3
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !30
  %i.sr = zext i8 %i.sq to i64
  %i.ss = getelementptr inbounds nuw i8, ptr %i.se, i64 %i.sr ; 2 uses
  %i.st = and i32 %i.so, 63
  %i.su = zext nneg i32 %i.st to i64
  %i.sv = shl i64 %.sroa.0431.9.i, %i.su
  %i.sw = lshr i64 %i.sv, %i.rb
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.sw ; 3 uses
  %i.sy = load i16, ptr %i.sx, align 2
  store i16 %i.sy, ptr %i.ss, align 1
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sx, i64 2
  %i.ta = load i8, ptr %i.sz, align 2, !tbaa !29
  %i.tb = zext i8 %i.ta to i32
  %i.tc = add i32 %i.so, %i.tb                    ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.sx, i64 3
  %i.te = load i8, ptr %i.td, align 1, !tbaa !30
  %i.tf = zext i8 %i.te to i64
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ss, i64 %i.tf ; 2 uses
  %i.th = and i32 %i.tc, 63
  %i.ti = zext nneg i32 %i.th to i64
  %i.tj = shl i64 %.sroa.0431.9.i, %i.ti
  %i.tk = lshr i64 %i.tj, %i.rb
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.tk ; 3 uses
  %i.tm = load i16, ptr %i.tl, align 2
  store i16 %i.tm, ptr %i.tg, align 1
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tl, i64 2
  %i.to = load i8, ptr %i.tn, align 2, !tbaa !29
  %i.tp = zext i8 %i.to to i32
  %i.tq = add i32 %i.tc, %i.tp                    ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tl, i64 3
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !30
  %i.tt = zext i8 %i.ts to i64
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tg, i64 %i.tt ; 2 uses
  %i.tv = and i32 %i.tq, 63
  %i.tw = zext nneg i32 %i.tv to i64
  %i.tx = shl i64 %.sroa.0431.9.i, %i.tw
  %i.ty = lshr i64 %i.tx, %i.rb
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ty ; 3 uses
  %i.ua = load i16, ptr %i.tz, align 2
  store i16 %i.ua, ptr %i.tu, align 1
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tz, i64 2
  %i.uc = load i8, ptr %i.ub, align 2, !tbaa !29
  %i.ud = zext i8 %i.uc to i32
  %i.ue = add i32 %i.tq, %i.ud                    ; 3 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tz, i64 3
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !30
  %i.uh = zext i8 %i.ug to i64
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tu, i64 %i.uh ; 2 uses
  %i.uj = icmp ugt i32 %i.ue, 64
  br i1 %i.uj, label %BIT_reloadDStream.exit249.i.i, label %bb.aw, !prof !31, !llvm.loop !0

bb.bb:                                            ; preds = %bb.bf, %.lr.ph713.i
  %.1.i224.i712.i = phi ptr [ %.3177.i.i, %.lr.ph713.i ], [ %i.xc, %bb.bf ] ; 5 uses
  %.sroa.116466.6711.i = phi ptr [ %.sroa.116466.0.i, %.lr.ph713.i ], [ %.sroa.116466.7.i, %bb.bf ] ; 5 uses
  %.sroa.36432.9710.i = phi i32 [ %.sroa.36432.0.i, %.lr.ph713.i ], [ %i.wy, %bb.bf ] ; 5 uses
  %.sroa.0431.6709.i = phi i64 [ %.sroa.0431.0.i, %.lr.ph713.i ], [ %.sroa.0431.7.i, %bb.bf ]
  %.not.i229.i.i = icmp ult ptr %.sroa.116466.6711.i, %i.ae
  br i1 %.not.i229.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.uk = lshr i32 %.sroa.36432.9710.i, 3
  %i.ul = and i32 %.sroa.36432.9710.i, 7
  br label %BIT_reloadDStream.exit235.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.um = icmp eq ptr %.sroa.116466.6711.i, %i.q
  br i1 %i.um, label %BIT_reloadDStream.exit249.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.un = lshr i32 %.sroa.36432.9710.i, 3         ; 2 uses
  %i.uo = zext nneg i32 %i.un to i64
  %i.up = sub nsw i64 0, %i.uo
  %i.uq = getelementptr inbounds i8, ptr %.sroa.116466.6711.i, i64 %i.up
  %i.ur = icmp uge ptr %i.uq, %i.q                ; 2 uses
  %i.us = ptrtoint ptr %.sroa.116466.6711.i to i64
  %i.ut = sub i64 %i.us, %i.qs
  %i.uu = trunc i64 %i.ut to i32
  %.021.i231.i.i = select i1 %i.ur, i32 %i.un, i32 %i.uu ; 2 uses
  %i.uv = shl i32 %.021.i231.i.i, 3
  %i.uw = sub i32 %.sroa.36432.9710.i, %i.uv
  br label %BIT_reloadDStream.exit235.i.i

BIT_reloadDStream.exit235.i.i:                    ; preds = %bb.be, %bb.bc
  %.sroa.36432.10.i = phi i32 [ %i.ul, %bb.bc ], [ %i.uw, %bb.be ] ; 3 uses
  %.pn604.in.i = phi i32 [ %i.uk, %bb.bc ], [ %.021.i231.i.i, %bb.be ]
  %.022.i230.i.i = phi i1 [ true, %bb.bc ], [ %i.ur, %bb.be ]
  %.pn604.i = zext i32 %.pn604.in.i to i64
  %.pn.i = sub nsw i64 0, %.pn604.i
end_hunk_0
begin_hunk_1_@HUF_decompress4X1_usingDTable_internal:bb.a
  ]

bb.u:                                             ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !20
  %i.ct = zext i8 %i.cs to i64
  %i.cu = shl nuw nsw i64 %i.ct, 48
  %i.cv = or disjoint i64 %i.cu, %i.cq
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cw = phi i64 [ %i.cv, %bb.u ], [ %i.cq, %bb.t ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !20
  %i.cz = zext i8 %i.cy to i64
  %i.da = shl nuw nsw i64 %i.cz, 40
  %i.db = add nuw nsw i64 %i.da, %i.cw
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %i.dc = phi i64 [ %i.db, %bb.v ], [ %i.cq, %bb.t ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !20
  %i.df = zext i8 %i.de to i64
  %i.dg = shl nuw nsw i64 %i.df, 32
  %i.dh = add nuw nsw i64 %i.dg, %i.dc
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %i.di = phi i64 [ %i.dh, %bb.w ], [ %i.cq, %bb.t ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !20
  %i.dl = zext i8 %i.dk to i64
  %i.dm = shl nuw nsw i64 %i.dl, 24
  %i.dn = add nuw nsw i64 %i.dm, %i.di
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.t
  %i.do = phi i64 [ %i.dn, %bb.x ], [ %i.cq, %bb.t ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !20
  %i.dr = zext i8 %i.dq to i64
  %i.ds = shl nuw nsw i64 %i.dr, 16
  %i.dt = add nuw nsw i64 %i.ds, %i.do
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.t
  %i.du = phi i64 [ %i.dt, %bb.y ], [ %i.cq, %bb.t ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !20
  %i.dx = zext i8 %i.dw to i64
  %i.dy = shl nuw nsw i64 %i.dx, 8
  %i.dz = add nuw nsw i64 %i.dy, %i.du
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.t
  %.sroa.0181.6.i = phi i64 [ %i.cq, %bb.t ], [ %i.dz, %bb.z ]
  %i.ea = getelementptr i8, ptr %i.t, i64 -1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !20  ; 2 uses
  %.not.i88.i = icmp eq i8 %i.eb, 0
  br i1 %.not.i88.i, label %BIT_initDStream.exit.thread.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ec = zext i8 %i.eb to i32
  %i.ed = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.ec, i1 true)
  %i.ee = shl nuw nsw i16 %.val85.i, 3
  %i.ef = zext nneg i16 %i.ee to i32
  %reass.sub41 = sub nsw i32 %i.ed, %i.ef
  %i.eg = add nsw i32 %reass.sub41, 41
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.thread.i92.i
  %.sroa.0181.7.i = phi i64 [ %.sroa.0181.6.i, %bb.ab ], [ %.val.i90.i, %.thread.i92.i ] ; 2 uses
  %.sroa.25182.7.i = phi i32 [ %i.eg, %bb.ab ], [ %i.co, %.thread.i92.i ] ; 2 uses
  %.sroa.69200.6.i = phi ptr [ %i.s, %bb.ab ], [ %i.ck, %.thread.i92.i ] ; 2 uses
  %i.eh = icmp eq i16 %.val84.i, 0
  br i1 %i.eh, label %BIT_initDStream.exit.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ei = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.ej = icmp ugt i16 %.val84.i, 7
  br i1 %i.ej, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ek = getelementptr i8, ptr %i.u, i64 -1
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !20  ; 2 uses
  %.not51.i97.i = icmp eq i8 %i.el, 0
  br i1 %.not51.i97.i, label %BIT_initDStream.exit.thread.i, label %.thread.i98.i

.thread.i98.i:                                    ; preds = %bb.ae
  %i.em = getelementptr inbounds i8, ptr %i.u, i64 -8 ; 2 uses
  %.val.i96.i = load i64, ptr %i.em, align 1, !tbaa !26
  %i.en = zext i8 %i.el to i32
  %i.eo = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.en, i1 true)
  %i.ep = xor i32 %i.eo, 31
  %i.eq = sub nuw nsw i32 8, %i.ep
  br label %bb.ao

bb.af:                                            ; preds = %bb.ad
  %i.er = load i8, ptr %i.t, align 1, !tbaa !20
  %i.es = zext i8 %i.er to i64                    ; 7 uses
  switch i16 %.val84.i, label %bb.am [
    i16 7, label %bb.ag
    i16 6, label %bb.ah
    i16 5, label %bb.ai
    i16 4, label %bb.aj
    i16 3, label %bb.ak
    i16 2, label %bb.al
  ]

bb.ag:                                            ; preds = %bb.af
  %i.et = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !20
  %i.ev = zext i8 %i.eu to i64
  %i.ew = shl nuw nsw i64 %i.ev, 48
  %i.ex = or disjoint i64 %i.ew, %i.es
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ey = phi i64 [ %i.ex, %bb.ag ], [ %i.es, %bb.af ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.t, i64 5
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !20
  %i.fb = zext i8 %i.fa to i64
  %i.fc = shl nuw nsw i64 %i.fb, 40
  %i.fd = add nuw nsw i64 %i.fc, %i.ey
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %i.fe = phi i64 [ %i.fd, %bb.ah ], [ %i.es, %bb.af ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !20
  %i.fh = zext i8 %i.fg to i64
  %i.fi = shl nuw nsw i64 %i.fh, 32
  %i.fj = add nuw nsw i64 %i.fi, %i.fe
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.af
  %i.fk = phi i64 [ %i.fj, %bb.ai ], [ %i.es, %bb.af ]
  %i.fl = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !20
  %i.fn = zext i8 %i.fm to i64
  %i.fo = shl nuw nsw i64 %i.fn, 24
  %i.fp = add nuw nsw i64 %i.fo, %i.fk
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af
  %i.fq = phi i64 [ %i.fp, %bb.aj ], [ %i.es, %bb.af ]
  %i.fr = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !20
  %i.ft = zext i8 %i.fs to i64
  %i.fu = shl nuw nsw i64 %i.ft, 16
  %i.fv = add nuw nsw i64 %i.fu, %i.fq
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.af
  %i.fw = phi i64 [ %i.fv, %bb.ak ], [ %i.es, %bb.af ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !20
  %i.fz = zext i8 %i.fy to i64
  %i.ga = shl nuw nsw i64 %i.fz, 8
  %i.gb = add nuw nsw i64 %i.ga, %i.fw
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.af
  %.sroa.0.6.i = phi i64 [ %i.es, %bb.af ], [ %i.gb, %bb.al ]
  %i.gc = getelementptr i8, ptr %i.u, i64 -1
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !20  ; 2 uses
  %.not.i94.i = icmp eq i8 %i.gd, 0
  br i1 %.not.i94.i, label %BIT_initDStream.exit.thread.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ge = zext i8 %i.gd to i32
  %i.gf = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.ge, i1 true)
  %i.gg = shl nuw nsw i16 %.val84.i, 3
  %i.gh = zext nneg i16 %i.gg to i32
  %reass.sub42 = sub nsw i32 %i.gf, %i.gh
  %i.gi = add nsw i32 %reass.sub42, 41
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.thread.i98.i
  %.sroa.0.7.i = phi i64 [ %.sroa.0.6.i, %bb.an ], [ %.val.i96.i, %.thread.i98.i ] ; 2 uses
  %.sroa.25.7.i = phi i32 [ %i.gi, %bb.an ], [ %i.eq, %.thread.i98.i ] ; 2 uses
  %.sroa.69136.6.i = phi ptr [ %i.t, %bb.an ], [ %i.em, %.thread.i98.i ] ; 2 uses
  %i.gj = call fastcc i64 @BIT_initDStream(ptr noundef %6, ptr noundef nonnull %i.u, i64 noundef %i.q) ; 2 uses
  %i.gk = icmp ult i64 %i.gj, -119
  br i1 %i.gk, label %bb.ap, label %BIT_initDStream.exit.thread.i

bb.ap:                                            ; preds = %bb.ao
  %.neg.i.i = mul i64 %i.w, -3
  %gepdiff.i.i = add i64 %.neg.i.i, %1
  %i.gl = icmp ugt i64 %gepdiff.i.i, 7
  %.not485.i = icmp ult ptr %i.z, %i.g
  %or.cond.i = select i1 %i.gl, i1 %.not485.i, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.ap
  %.promoted.i = load i64, ptr %6, align 8
  %i.gm = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.gn = and i32 %i.gm, 63
  %i.go = zext nneg i32 %i.gn to i64              ; 16 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !43
  %.promoted408.i = load i32, ptr %i.gp, align 8, !tbaa !44
  %.promoted411.i = load ptr, ptr %i.gq, align 8, !tbaa !45
  br label %bb.aq

bb.aq:                                            ; preds = %BIT_reloadDStreamFast.exit108.i, %.lr.ph.i
  %i.gt = phi ptr [ %.promoted411.i, %.lr.ph.i ], [ %i.ok, %BIT_reloadDStreamFast.exit108.i ] ; 2 uses
  %.val37410.i = phi i32 [ %.promoted408.i, %.lr.ph.i ], [ %i.ol, %BIT_reloadDStreamFast.exit108.i ] ; 2 uses
  %.0146.i395.i = phi ptr [ %i.z, %.lr.ph.i ], [ %i.nn, %BIT_reloadDStreamFast.exit108.i ] ; 5 uses
  %.0150.i394.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.nc, %BIT_reloadDStreamFast.exit108.i ] ; 5 uses
  %.0154.i393.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.mr, %BIT_reloadDStreamFast.exit108.i ] ; 5 uses
  %.0158.i392.i = phi ptr [ %0, %.lr.ph.i ], [ %i.mg, %BIT_reloadDStreamFast.exit108.i ] ; 5 uses
  %.sroa.69136.5391.i = phi ptr [ %.sroa.69136.6.i, %.lr.ph.i ], [ %.sroa.69136.7.i, %BIT_reloadDStreamFast.exit108.i ] ; 3 uses
  %.sroa.25.6390.i = phi i32 [ %.sroa.25.7.i, %.lr.ph.i ], [ %.sroa.25.8.i, %BIT_reloadDStreamFast.exit108.i ] ; 2 uses
  %.sroa.0.5389.i = phi i64 [ %.sroa.0.7.i, %.lr.ph.i ], [ %.sroa.0.8.i, %BIT_reloadDStreamFast.exit108.i ] ; 5 uses
  %.sroa.69200.5388.i = phi ptr [ %.sroa.69200.6.i, %.lr.ph.i ], [ %.sroa.69200.7.i, %BIT_reloadDStreamFast.exit108.i ] ; 3 uses
  %.sroa.25182.6387.i = phi i32 [ %.sroa.25182.7.i, %.lr.ph.i ], [ %.sroa.25182.8.i, %BIT_reloadDStreamFast.exit108.i ] ; 2 uses
  %.sroa.0181.5386.i = phi i64 [ %.sroa.0181.7.i, %.lr.ph.i ], [ %.sroa.0181.8.i, %BIT_reloadDStreamFast.exit108.i ] ; 5 uses
  %.sroa.69266.5385.i = phi ptr [ %.sroa.69266.6.i, %.lr.ph.i ], [ %.sroa.69266.7.i, %BIT_reloadDStreamFast.exit108.i ] ; 3 uses
  %.sroa.25248.6384.i = phi i32 [ %.sroa.25248.7.i, %.lr.ph.i ], [ %.sroa.25248.8.i, %BIT_reloadDStreamFast.exit108.i ] ; 2 uses
  %.sroa.0247.5383.i = phi i64 [ %.sroa.0247.7.i, %.lr.ph.i ], [ %.sroa.0247.8.i, %BIT_reloadDStreamFast.exit108.i ] ; 5 uses
  %.val.i.i106381382.i = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %.val.i.i106.i, %BIT_reloadDStreamFast.exit108.i ] ; 4 uses
  %i.gu = and i32 %.sroa.25248.6384.i, 63
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = shl i64 %.sroa.0247.5383.i, %i.gv
  %i.gx = lshr i64 %i.gw, %i.go
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.gx ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 1
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !37
  %i.hb = load i8, ptr %i.gy, align 1, !tbaa !38
  %i.hc = zext i8 %i.hb to i32
  %i.hd = add i32 %.sroa.25248.6384.i, %i.hc      ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.0158.i392.i, i64 1
  store i8 %i.ha, ptr %.0158.i392.i, align 1, !tbaa !20
  %i.hf = and i32 %.sroa.25182.6387.i, 63
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = shl i64 %.sroa.0181.5386.i, %i.hg
  %i.hi = lshr i64 %i.hh, %i.go
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.hi ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 1
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !37
  %i.hm = load i8, ptr %i.hj, align 1, !tbaa !38
  %i.hn = zext i8 %i.hm to i32
  %i.ho = add i32 %.sroa.25182.6387.i, %i.hn      ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.0154.i393.i, i64 1
  store i8 %i.hl, ptr %.0154.i393.i, align 1, !tbaa !20
  %i.hq = and i32 %.sroa.25.6390.i, 63
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = shl i64 %.sroa.0.5389.i, %i.hr
  %i.ht = lshr i64 %i.hs, %i.go
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.ht ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 1
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !37
  %i.hx = load i8, ptr %i.hu, align 1, !tbaa !38
  %i.hy = zext i8 %i.hx to i32
  %i.hz = add i32 %.sroa.25.6390.i, %i.hy         ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.0150.i394.i, i64 1
  store i8 %i.hw, ptr %.0150.i394.i, align 1, !tbaa !20
  %i.ib = and i32 %.val37410.i, 63
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = shl i64 %.val.i.i106381382.i, %i.ic
  %i.ie = lshr i64 %i.id, %i.go
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.ie ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 1
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !37
  %i.ii = load i8, ptr %i.if, align 1, !tbaa !38
  %i.ij = zext i8 %i.ii to i32
  %i.ik = add i32 %.val37410.i, %i.ij             ; 2 uses
  store i8 %i.ih, ptr %.0146.i395.i, align 1, !tbaa !20
  %i.il = getelementptr inbounds nuw i8, ptr %.0146.i395.i, i64 1
  %i.im = and i32 %i.hd, 63
  %i.in = zext nneg i32 %i.im to i64
  %i.io = shl i64 %.sroa.0247.5383.i, %i.in
  %i.ip = lshr i64 %i.io, %i.go
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.ip ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 1
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !37
  %i.it = load i8, ptr %i.iq, align 1, !tbaa !38
  %i.iu = zext i8 %i.it to i32
  %i.iv = add i32 %i.hd, %i.iu                    ; 2 uses
  store i8 %i.is, ptr %i.he, align 1, !tbaa !20
  %i.iw = and i32 %i.ho, 63
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = shl i64 %.sroa.0181.5386.i, %i.ix
  %i.iz = lshr i64 %i.iy, %i.go
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.iz ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 1
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !37
  %i.jd = load i8, ptr %i.ja, align 1, !tbaa !38
  %i.je = zext i8 %i.jd to i32
  %i.jf = add i32 %i.ho, %i.je                    ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.0154.i393.i, i64 2
  store i8 %i.jc, ptr %i.hp, align 1, !tbaa !20
  %i.jh = and i32 %i.hz, 63
  %i.ji = zext nneg i32 %i.jh to i64
  %i.jj = shl i64 %.sroa.0.5389.i, %i.ji
  %i.jk = lshr i64 %i.jj, %i.go
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.jk ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 1
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !37
  %i.jo = load i8, ptr %i.jl, align 1, !tbaa !38
  %i.jp = zext i8 %i.jo to i32
  %i.jq = add i32 %i.hz, %i.jp                    ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.0150.i394.i, i64 2
  store i8 %i.jn, ptr %i.ia, align 1, !tbaa !20
  %i.js = and i32 %i.ik, 63
  %i.jt = zext nneg i32 %i.js to i64
  %i.ju = shl i64 %.val.i.i106381382.i, %i.jt
  %i.jv = lshr i64 %i.ju, %i.go
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.jv ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 1
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !37
  %i.jz = load i8, ptr %i.jw, align 1, !tbaa !38
  %i.ka = zext i8 %i.jz to i32
  %i.kb = add i32 %i.ik, %i.ka                    ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.0146.i395.i, i64 2
  store i8 %i.jy, ptr %i.il, align 1, !tbaa !20
  %i.kd = getelementptr inbounds nuw i8, ptr %.0158.i392.i, i64 2
  %i.ke = and i32 %i.iv, 63
  %i.kf = zext nneg i32 %i.ke to i64
  %i.kg = shl i64 %.sroa.0247.5383.i, %i.kf
  %i.kh = lshr i64 %i.kg, %i.go
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.kh ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 1
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !37
  %i.kl = load i8, ptr %i.ki, align 1, !tbaa !38
  %i.km = zext i8 %i.kl to i32
  %i.kn = add i32 %i.iv, %i.km                    ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.0158.i392.i, i64 3
  store i8 %i.kk, ptr %i.kd, align 1, !tbaa !20
  %i.kp = and i32 %i.jf, 63
  %i.kq = zext nneg i32 %i.kp to i64
  %i.kr = shl i64 %.sroa.0181.5386.i, %i.kq
  %i.ks = lshr i64 %i.kr, %i.go
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.ks ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 1
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !37
  %i.kw = load i8, ptr %i.kt, align 1, !tbaa !38
  %i.kx = zext i8 %i.kw to i32
  %i.ky = add i32 %i.jf, %i.kx                    ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.0154.i393.i, i64 3
  store i8 %i.kv, ptr %i.jg, align 1, !tbaa !20
  %i.la = and i32 %i.jq, 63
  %i.lb = zext nneg i32 %i.la to i64
  %i.lc = shl i64 %.sroa.0.5389.i, %i.lb
  %i.ld = lshr i64 %i.lc, %i.go
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.ld ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 1
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !37
  %i.lh = load i8, ptr %i.le, align 1, !tbaa !38
  %i.li = zext i8 %i.lh to i32
  %i.lj = add i32 %i.jq, %i.li                    ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.0150.i394.i, i64 3
  store i8 %i.lg, ptr %i.jr, align 1, !tbaa !20
  %i.ll = and i32 %i.kb, 63
  %i.lm = zext nneg i32 %i.ll to i64
  %i.ln = shl i64 %.val.i.i106381382.i, %i.lm
  %i.lo = lshr i64 %i.ln, %i.go
  %i.lp = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.lo ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 1
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !37
  %i.ls = load i8, ptr %i.lp, align 1, !tbaa !38
  %i.lt = zext i8 %i.ls to i32
  %i.lu = add i32 %i.kb, %i.lt                    ; 2 uses
  store i8 %i.lr, ptr %i.kc, align 1, !tbaa !20
  %i.lv = getelementptr inbounds nuw i8, ptr %.0146.i395.i, i64 3
  %i.lw = and i32 %i.kn, 63
  %i.lx = zext nneg i32 %i.lw to i64
  %i.ly = shl i64 %.sroa.0247.5383.i, %i.lx
  %i.lz = lshr i64 %i.ly, %i.go
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.lz ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 1
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !37
  %i.md = load i8, ptr %i.ma, align 1, !tbaa !38
  %i.me = zext i8 %i.md to i32
  %i.mf = add i32 %i.kn, %i.me                    ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.0158.i392.i, i64 4 ; 3 uses
  store i8 %i.mc, ptr %i.ko, align 1, !tbaa !20
  %i.mh = and i32 %i.ky, 63
  %i.mi = zext nneg i32 %i.mh to i64
  %i.mj = shl i64 %.sroa.0181.5386.i, %i.mi
  %i.mk = lshr i64 %i.mj, %i.go
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.mk ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 1
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !37
  %i.mo = load i8, ptr %i.ml, align 1, !tbaa !38
  %i.mp = zext i8 %i.mo to i32
  %i.mq = add i32 %i.ky, %i.mp                    ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.0154.i393.i, i64 4 ; 3 uses
  store i8 %i.mn, ptr %i.kz, align 1, !tbaa !20
  %i.ms = and i32 %i.lj, 63
  %i.mt = zext nneg i32 %i.ms to i64
  %i.mu = shl i64 %.sroa.0.5389.i, %i.mt
  %i.mv = lshr i64 %i.mu, %i.go
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.mv ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 1
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !37
  %i.mz = load i8, ptr %i.mw, align 1, !tbaa !38
  %i.na = zext i8 %i.mz to i32
  %i.nb = add i32 %i.lj, %i.na                    ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.0150.i394.i, i64 4 ; 3 uses
  store i8 %i.my, ptr %i.lk, align 1, !tbaa !20
  %i.nd = and i32 %i.lu, 63
  %i.ne = zext nneg i32 %i.nd to i64
  %i.nf = shl i64 %.val.i.i106381382.i, %i.ne
  %i.ng = lshr i64 %i.nf, %i.go
  %i.nh = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.ng ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 1
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !37
  %i.nk = load i8, ptr %i.nh, align 1, !tbaa !38
  %i.nl = zext i8 %i.nk to i32
  %i.nm = add i32 %i.lu, %i.nl                    ; 3 uses
  store i32 %i.nm, ptr %i.gp, align 8, !tbaa !44
  %i.nn = getelementptr inbounds nuw i8, ptr %.0146.i395.i, i64 4 ; 4 uses
  store i8 %i.nj, ptr %i.lv, align 1, !tbaa !20
  %i.no = icmp ult ptr %.sroa.69266.5385.i, %i.ae ; 2 uses
  br i1 %i.no, label %BIT_reloadDStreamFast.exit.i, label %bb.ar, !prof !46

bb.ar:                                            ; preds = %bb.aq
  %i.np = lshr i32 %i.mf, 3
  %i.nq = zext nneg i32 %i.np to i64
  %i.nr = sub nsw i64 0, %i.nq
  %i.ns = getelementptr inbounds i8, ptr %.sroa.69266.5385.i, i64 %i.nr ; 2 uses
  %i.nt = and i32 %i.mf, 7
  %.val.i.i.i = load i64, ptr %i.ns, align 1, !tbaa !26
  br label %BIT_reloadDStreamFast.exit.i

BIT_reloadDStreamFast.exit.i:                     ; preds = %bb.ar, %bb.aq
  %.sroa.0247.8.i = phi i64 [ %.sroa.0247.5383.i, %bb.aq ], [ %.val.i.i.i, %bb.ar ] ; 3 uses
  %.sroa.25248.8.i = phi i32 [ %i.mf, %bb.aq ], [ %i.nt, %bb.ar ] ; 3 uses
  %.sroa.69266.7.i = phi ptr [ %.sroa.69266.5385.i, %bb.aq ], [ %i.ns, %bb.ar ] ; 3 uses
  %i.nu = icmp ult ptr %.sroa.69200.5388.i, %i.cg
  br i1 %i.nu, label %BIT_reloadDStreamFast.exit102.i, label %bb.as, !prof !46

bb.as:                                            ; preds = %BIT_reloadDStreamFast.exit.i
  %i.nv = lshr i32 %i.mq, 3
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = sub nsw i64 0, %i.nw
  %i.ny = getelementptr inbounds i8, ptr %.sroa.69200.5388.i, i64 %i.nx ; 2 uses
  %i.nz = and i32 %i.mq, 7
  %.val.i.i100.i = load i64, ptr %i.ny, align 1, !tbaa !26
  br label %BIT_reloadDStreamFast.exit102.i

BIT_reloadDStreamFast.exit102.i:                  ; preds = %bb.as, %BIT_reloadDStreamFast.exit.i
  %.sroa.0181.8.i = phi i64 [ %.sroa.0181.5386.i, %BIT_reloadDStreamFast.exit.i ], [ %.val.i.i100.i, %bb.as ] ; 3 uses
  %.sroa.25182.8.i = phi i32 [ %i.mq, %BIT_reloadDStreamFast.exit.i ], [ %i.nz, %bb.as ] ; 3 uses
  %.sroa.69200.7.i = phi ptr [ %.sroa.69200.5388.i, %BIT_reloadDStreamFast.exit.i ], [ %i.ny, %bb.as ] ; 3 uses
  %.0.i101.i = phi i1 [ true, %BIT_reloadDStreamFast.exit.i ], [ %i.no, %bb.as ]
  %i.oa = icmp ult ptr %.sroa.69136.5391.i, %i.ei
  br i1 %i.oa, label %BIT_reloadDStreamFast.exit105.i, label %bb.at, !prof !46

bb.at:                                            ; preds = %BIT_reloadDStreamFast.exit102.i
  %i.ob = lshr i32 %i.nb, 3
  %i.oc = zext nneg i32 %i.ob to i64
  %i.od = sub nsw i64 0, %i.oc
  %i.oe = getelementptr inbounds i8, ptr %.sroa.69136.5391.i, i64 %i.od ; 2 uses
  %i.of = and i32 %i.nb, 7
  %.val.i.i103.i = load i64, ptr %i.oe, align 1, !tbaa !26
  br label %BIT_reloadDStreamFast.exit105.i

BIT_reloadDStreamFast.exit105.i:                  ; preds = %bb.at, %BIT_reloadDStreamFast.exit102.i
  %.sroa.0.8.i = phi i64 [ %.sroa.0.5389.i, %BIT_reloadDStreamFast.exit102.i ], [ %.val.i.i103.i, %bb.at ] ; 3 uses
  %.sroa.25.8.i = phi i32 [ %i.nb, %BIT_reloadDStreamFast.exit102.i ], [ %i.of, %bb.at ] ; 3 uses
  %.sroa.69136.7.i = phi ptr [ %.sroa.69136.5391.i, %BIT_reloadDStreamFast.exit102.i ], [ %i.oe, %bb.at ] ; 3 uses
  %.0.i104.i = phi i1 [ true, %BIT_reloadDStreamFast.exit102.i ], [ %.0.i101.i, %bb.at ]
  %i.og = icmp ult ptr %i.gt, %i.gs
  br i1 %i.og, label %.loopexit.i, label %BIT_reloadDStreamFast.exit108.i, !prof !46

BIT_reloadDStreamFast.exit108.i:                  ; preds = %BIT_reloadDStreamFast.exit105.i
  %i.oh = lshr i32 %i.nm, 3
  %i.oi = zext nneg i32 %i.oh to i64
  %i.oj = sub nsw i64 0, %i.oi
  %i.ok = getelementptr inbounds i8, ptr %i.gt, i64 %i.oj ; 3 uses
  store ptr %i.ok, ptr %i.gq, align 8, !tbaa !45
  %i.ol = and i32 %i.nm, 7                        ; 2 uses
  store i32 %i.ol, ptr %i.gp, align 8, !tbaa !44
  %.val.i.i106.i = load i64, ptr %i.ok, align 1, !tbaa !26 ; 2 uses
  store i64 %.val.i.i106.i, ptr %6, align 8, !tbaa !47
  %i.om = icmp uge ptr %i.nn, %i.g
  %.not177.i.i = or i1 %i.om, %.0.i104.i
  br i1 %.not177.i.i, label %.loopexit.i, label %bb.aq, !llvm.loop !7

.loopexit.i:                                      ; preds = %BIT_reloadDStreamFast.exit108.i, %BIT_reloadDStreamFast.exit105.i, %bb.ap
  %.sroa.0247.0.i = phi i64 [ %.sroa.0247.7.i, %bb.ap ], [ %.sroa.0247.8.i, %BIT_reloadDStreamFast.exit105.i ], [ %.sroa.0247.8.i, %BIT_reloadDStreamFast.exit108.i ] ; 4 uses
  %.sroa.25248.0.i = phi i32 [ %.sroa.25248.7.i, %bb.ap ], [ %.sroa.25248.8.i, %BIT_reloadDStreamFast.exit105.i ], [ %.sroa.25248.8.i, %BIT_reloadDStreamFast.exit108.i ] ; 9 uses
  %.sroa.69266.0.i = phi ptr [ %.sroa.69266.6.i, %bb.ap ], [ %.sroa.69266.7.i, %BIT_reloadDStreamFast.exit105.i ], [ %.sroa.69266.7.i, %BIT_reloadDStreamFast.exit108.i ] ; 7 uses
  %.sroa.0181.0.i = phi i64 [ %.sroa.0181.7.i, %bb.ap ], [ %.sroa.0181.8.i, %BIT_reloadDStreamFast.exit105.i ], [ %.sroa.0181.8.i, %BIT_reloadDStreamFast.exit108.i ] ; 4 uses
  %.sroa.25182.0.i = phi i32 [ %.sroa.25182.7.i, %bb.ap ], [ %.sroa.25182.8.i, %BIT_reloadDStreamFast.exit105.i ], [ %.sroa.25182.8.i, %BIT_reloadDStreamFast.exit108.i ] ; 9 uses
  %.sroa.69200.0.i = phi ptr [ %.sroa.69200.6.i, %bb.ap ], [ %.sroa.69200.7.i, %BIT_reloadDStreamFast.exit105.i ], [ %.sroa.69200.7.i, %BIT_reloadDStreamFast.exit108.i ] ; 7 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.7.i, %bb.ap ], [ %.sroa.0.8.i, %BIT_reloadDStreamFast.exit105.i ], [ %.sroa.0.8.i, %BIT_reloadDStreamFast.exit108.i ] ; 4 uses
  %.sroa.25.0.i = phi i32 [ %.sroa.25.7.i, %bb.ap ], [ %.sroa.25.8.i, %BIT_reloadDStreamFast.exit105.i ], [ %.sroa.25.8.i, %BIT_reloadDStreamFast.exit108.i ] ; 9 uses
  %.sroa.69136.0.i = phi ptr [ %.sroa.69136.6.i, %bb.ap ], [ %.sroa.69136.7.i, %BIT_reloadDStreamFast.exit105.i ], [ %.sroa.69136.7.i, %BIT_reloadDStreamFast.exit108.i ] ; 7 uses
  %.3161.i.i = phi ptr [ %0, %bb.ap ], [ %i.mg, %BIT_reloadDStreamFast.exit105.i ], [ %i.mg, %BIT_reloadDStreamFast.exit108.i ] ; 8 uses
  %.3157.i.i = phi ptr [ %i.x, %bb.ap ], [ %i.mr, %BIT_reloadDStreamFast.exit105.i ], [ %i.mr, %BIT_reloadDStreamFast.exit108.i ] ; 8 uses
  %.3153.i.i = phi ptr [ %i.y, %bb.ap ], [ %i.nc, %BIT_reloadDStreamFast.exit105.i ], [ %i.nc, %BIT_reloadDStreamFast.exit108.i ] ; 8 uses
  %.3149.i.i = phi ptr [ %i.z, %bb.ap ], [ %i.nn, %BIT_reloadDStreamFast.exit105.i ], [ %i.nn, %BIT_reloadDStreamFast.exit108.i ] ; 7 uses
  %i.on = icmp ugt ptr %.3161.i.i, %i.x
  %i.oo = icmp ugt ptr %.3157.i.i, %i.y
  %or.cond182.i.i = select i1 %i.on, i1 true, i1 %i.oo
  %i.op = icmp ugt ptr %.3153.i.i, %i.z
  %or.cond183.i.i = select i1 %or.cond182.i.i, i1 true, i1 %i.op
  br i1 %or.cond183.i.i, label %BIT_initDStream.exit.thread.i, label %bb.au

bb.au:                                            ; preds = %.loopexit.i
  %i.oq = ptrtoint ptr %i.x to i64
  %i.or = ptrtoint ptr %.3161.i.i to i64
  %i.os = sub i64 %i.oq, %i.or
  %i.ot = icmp sgt i64 %i.os, 3
  %i.ou = icmp ugt i32 %.sroa.25248.0.i, 64       ; 2 uses
  br i1 %i.ot, label %.preheader377.i, label %bb.ba

.preheader377.i:                                  ; preds = %bb.au
  br i1 %i.ou, label %BIT_reloadDStream.exit.i221.i.i, label %.lr.ph416.i, !prof !32

.lr.ph416.i:                                      ; preds = %.preheader377.i
  %i.ov = ptrtoint ptr %i.r to i64
  %i.ow = getelementptr inbounds i8, ptr %i.x, i64 -3
  %i.ox = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.oy = and i32 %i.ox, 63
  %i.oz = zext nneg i32 %i.oy to i64              ; 4 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.az, %.lr.ph416.i
  %.0.i229.i415.i = phi ptr [ %.3161.i.i, %.lr.ph416.i ], [ %i.rg, %bb.az ] ; 8 uses
  %.sroa.69266.3414.i = phi ptr [ %.sroa.69266.0.i, %.lr.ph416.i ], [ %.sroa.69266.4.i, %bb.az ] ; 5 uses
  %.sroa.25248.4413.i = phi i32 [ %.sroa.25248.0.i, %.lr.ph416.i ], [ %i.rf, %bb.az ] ; 5 uses
  %.sroa.0247.3412.i = phi i64 [ %.sroa.0247.0.i, %.lr.ph416.i ], [ %.sroa.0247.4.i, %bb.az ]
  %.not.i37.i230.i.i = icmp ult ptr %.sroa.69266.3414.i, %i.ae
  br i1 %.not.i37.i230.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.pa = lshr i32 %.sroa.25248.4413.i, 3
  %i.pb = and i32 %.sroa.25248.4413.i, 7
  br label %BIT_reloadDStream.exit43.i231.i.i

bb.ax:                                            ; preds = %bb.av
  %i.pc = icmp eq ptr %.sroa.69266.3414.i, %i.r
  br i1 %i.pc, label %BIT_reloadDStream.exit.i221.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.pd = lshr i32 %.sroa.25248.4413.i, 3         ; 2 uses
  %i.pe = zext nneg i32 %i.pd to i64
  %i.pf = sub nsw i64 0, %i.pe
  %i.pg = getelementptr inbounds i8, ptr %.sroa.69266.3414.i, i64 %i.pf
  %i.ph = icmp uge ptr %i.pg, %i.r                ; 2 uses
  %i.pi = ptrtoint ptr %.sroa.69266.3414.i to i64
  %i.pj = sub i64 %i.pi, %i.ov
  %i.pk = trunc i64 %i.pj to i32
  %.021.i39.i233.i.i = select i1 %i.ph, i32 %i.pd, i32 %i.pk ; 2 uses
  %i.pl = shl i32 %.021.i39.i233.i.i, 3
  %i.pm = sub i32 %.sroa.25248.4413.i, %i.pl
  br label %BIT_reloadDStream.exit43.i231.i.i

BIT_reloadDStream.exit43.i231.i.i:                ; preds = %bb.ay, %bb.aw
  %.sroa.25248.5.i = phi i32 [ %i.pb, %bb.aw ], [ %i.pm, %bb.ay ] ; 3 uses
  %.pn349.in.i = phi i32 [ %i.pa, %bb.aw ], [ %.021.i39.i233.i.i, %bb.ay ]
  %.022.i38.i232.i.i = phi i1 [ true, %bb.aw ], [ %i.ph, %bb.ay ]
  %.pn349.i = zext i32 %.pn349.in.i to i64
  %.pn.i = sub nsw i64 0, %.pn349.i
  %.sroa.69266.4.i = getelementptr inbounds i8, ptr %.sroa.69266.3414.i, i64 %.pn.i ; 3 uses
  %.sroa.0247.4.i = load i64, ptr %.sroa.69266.4.i, align 1, !tbaa !26 ; 7 uses
  %i.pn = icmp ult ptr %.0.i229.i415.i, %i.ow
  %i.po = and i1 %i.pn, %.022.i38.i232.i.i
  br i1 %i.po, label %bb.az, label %BIT_reloadDStream.exit.i221.i.i

bb.az:                                            ; preds = %BIT_reloadDStream.exit43.i231.i.i
  %i.pp = and i32 %.sroa.25248.5.i, 63
  %i.pq = zext nneg i32 %i.pp to i64
  %i.pr = shl i64 %.sroa.0247.4.i, %i.pq
  %i.ps = lshr i64 %i.pr, %i.oz
  %i.pt = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.ps ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 1
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !37
  %i.pw = load i8, ptr %i.pt, align 1, !tbaa !38
  %i.px = zext i8 %i.pw to i32
  %i.py = add i32 %.sroa.25248.5.i, %i.px         ; 2 uses
  store i8 %i.pv, ptr %.0.i229.i415.i, align 1, !tbaa !20
  %i.pz = getelementptr inbounds nuw i8, ptr %.0.i229.i415.i, i64 1
  %i.qa = and i32 %i.py, 63
  %i.qb = zext nneg i32 %i.qa to i64
  %i.qc = shl i64 %.sroa.0247.4.i, %i.qb
  %i.qd = lshr i64 %i.qc, %i.oz
  %i.qe = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.qd ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 1
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !37
  %i.qh = load i8, ptr %i.qe, align 1, !tbaa !38
  %i.qi = zext i8 %i.qh to i32
  %i.qj = add i32 %i.py, %i.qi                    ; 2 uses
  store i8 %i.qg, ptr %i.pz, align 1, !tbaa !20
  %i.qk = getelementptr inbounds nuw i8, ptr %.0.i229.i415.i, i64 2
  %i.ql = and i32 %i.qj, 63
  %i.qm = zext nneg i32 %i.ql to i64
  %i.qn = shl i64 %.sroa.0247.4.i, %i.qm
  %i.qo = lshr i64 %i.qn, %i.oz
  %i.qp = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.qo ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 1
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !37
  %i.qs = load i8, ptr %i.qp, align 1, !tbaa !38
  %i.qt = zext i8 %i.qs to i32
  %i.qu = add i32 %i.qj, %i.qt                    ; 2 uses
  store i8 %i.qr, ptr %i.qk, align 1, !tbaa !20
  %i.qv = getelementptr inbounds nuw i8, ptr %.0.i229.i415.i, i64 3
  %i.qw = and i32 %i.qu, 63
  %i.qx = zext nneg i32 %i.qw to i64
  %i.qy = shl i64 %.sroa.0247.4.i, %i.qx
  %i.qz = lshr i64 %i.qy, %i.oz
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.qz ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 1
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !37
  %i.rd = load i8, ptr %i.ra, align 1, !tbaa !38
  %i.re = zext i8 %i.rd to i32
  %i.rf = add i32 %i.qu, %i.re                    ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %.0.i229.i415.i, i64 4 ; 2 uses
  store i8 %i.rc, ptr %i.qv, align 1, !tbaa !20
  %i.rh = icmp ugt i32 %i.rf, 64
  br i1 %i.rh, label %BIT_reloadDStream.exit.i221.i.i, label %bb.av, !prof !31, !llvm.loop !4

bb.ba:                                            ; preds = %bb.au
  br i1 %i.ou, label %BIT_reloadDStream.exit.i221.i.i, label %bb.bb, !prof !46

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i220.i.i = icmp ult ptr %.sroa.69266.0.i, %i.ae
  br i1 %.not.i.i220.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ri = lshr i32 %.sroa.25248.0.i, 3
  %i.rj = zext nneg i32 %i.ri to i64
  %i.rk = sub nsw i64 0, %i.rj
  %i.rl = getelementptr inbounds i8, ptr %.sroa.69266.0.i, i64 %i.rk ; 2 uses
  %i.rm = and i32 %.sroa.25248.0.i, 7
  %.val.i110.i = load i64, ptr %i.rl, align 1, !tbaa !26
  br label %BIT_reloadDStream.exit.i221.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.rn = icmp eq ptr %.sroa.69266.0.i, %i.r
  br i1 %i.rn, label %BIT_reloadDStream.exit.i221.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ro = lshr i32 %.sroa.25248.0.i, 3            ; 2 uses
  %i.rp = zext nneg i32 %i.ro to i64
  %i.rq = sub nsw i64 0, %i.rp
  %i.rr = getelementptr inbounds i8, ptr %.sroa.69266.0.i, i64 %i.rq
  %i.rs = icmp ult ptr %i.rr, %i.r
  %i.rt = ptrtoint ptr %.sroa.69266.0.i to i64
  %i.ru = ptrtoint ptr %i.r to i64
  %i.rv = sub i64 %i.rt, %i.ru
  %i.rw = trunc i64 %i.rv to i32
  %.021.i.i225.i.i = select i1 %i.rs, i32 %i.rw, i32 %i.ro ; 2 uses
  %i.rx = zext i32 %.021.i.i225.i.i to i64
  %i.ry = sub nsw i64 0, %i.rx
  %i.rz = getelementptr inbounds i8, ptr %.sroa.69266.0.i, i64 %i.ry ; 2 uses
  %i.sa = shl i32 %.021.i.i225.i.i, 3
  %i.sb = sub i32 %.sroa.25248.0.i, %i.sa
  %.val5.i = load i64, ptr %i.rz, align 1, !tbaa !26
  br label %BIT_reloadDStream.exit.i221.i.i

BIT_reloadDStream.exit.i221.i.i:                  ; preds = %bb.az, %BIT_reloadDStream.exit43.i231.i.i, %bb.ax, %bb.be, %bb.bd, %bb.bc, %bb.ba, %.preheader377.i
  %.sroa.0247.2.i = phi i64 [ %.val5.i, %bb.be ], [ %.sroa.0247.0.i, %bb.ba ], [ %.val.i110.i, %bb.bc ], [ %.sroa.0247.0.i, %bb.bd ], [ %.sroa.0247.0.i, %.preheader377.i ], [ %.sroa.0247.3412.i, %bb.ax ], [ %.sroa.0247.4.i, %bb.az ], [ %.sroa.0247.4.i, %BIT_reloadDStream.exit43.i231.i.i ] ; 3 uses
  %.sroa.25248.2.i = phi i32 [ %i.sb, %bb.be ], [ %.sroa.25248.0.i, %bb.ba ], [ %i.rm, %bb.bc ], [ %.sroa.25248.0.i, %bb.bd ], [ %.sroa.25248.0.i, %.preheader377.i ], [ %.sroa.25248.4413.i, %bb.ax ], [ %i.rf, %bb.az ], [ %.sroa.25248.5.i, %BIT_reloadDStream.exit43.i231.i.i ] ; 4 uses
  %.sroa.69266.2.i = phi ptr [ %i.rz, %bb.be ], [ @BIT_reloadDStream.zeroFilled, %bb.ba ], [ %i.rl, %bb.bc ], [ %i.r, %bb.bd ], [ @BIT_reloadDStream.zeroFilled, %.preheader377.i ], [ %i.r, %bb.ax ], [ @BIT_reloadDStream.zeroFilled, %bb.az ], [ %.sroa.69266.4.i, %BIT_reloadDStream.exit43.i231.i.i ]
  %.3.i223.i.i = phi ptr [ %.3161.i.i, %bb.be ], [ %.3161.i.i, %bb.ba ], [ %.3161.i.i, %bb.bc ], [ %.3161.i.i, %bb.bd ], [ %.3161.i.i, %.preheader377.i ], [ %.0.i229.i415.i, %bb.ax ], [ %i.rg, %bb.az ], [ %.0.i229.i415.i, %BIT_reloadDStream.exit43.i231.i.i ] ; 6 uses
  %i.sc = icmp ult ptr %.3.i223.i.i, %i.x
  br i1 %i.sc, label %.lr.ph432.i, label %HUF_decodeStreamX1.exit237.i.i

.lr.ph432.i:                                      ; preds = %BIT_reloadDStream.exit.i221.i.i
  %.3.i223.i494.i = ptrtoaddr ptr %.3.i223.i.i to i64 ; 2 uses
  %i.sd = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.se = and i32 %i.sd, 63
  %i.sf = zext nneg i32 %i.se to i64              ; 3 uses
  %i.sg = add i64 %i.w, %i.c
  %i.sh = sub i64 %i.sg, %.3.i223.i494.i          ; 2 uses
  %scevgep.i = getelementptr i8, ptr %.3.i223.i.i, i64 %i.sh
  %i.si = add i64 %i.w, %i.c
  %.neg = add i64 %.3.i223.i494.i, 1
  %xtraiter = and i64 %i.sh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph432.i
  %i.sj = and i32 %.sroa.25248.2.i, 63
  %i.sk = zext nneg i32 %i.sj to i64
  %i.sl = shl i64 %.sroa.0247.2.i, %i.sk
  %i.sm = lshr i64 %i.sl, %i.sf
  %i.sn = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.sm ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 1
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !37
  %i.sq = load i8, ptr %i.sn, align 1, !tbaa !38
  %i.sr = zext i8 %i.sq to i32
  %i.ss = add i32 %.sroa.25248.2.i, %i.sr         ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %.3.i223.i.i, i64 1
  store i8 %i.sp, ptr %.3.i223.i.i, align 1, !tbaa !20
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph432.i
  %.lcssa122.unr = phi i32 [ poison, %.lr.ph432.i ], [ %i.ss, %.prol.loopexit.unr-lcssa ]
  %.6.i224.i431.i.unr = phi ptr [ %.3.i223.i.i, %.lr.ph432.i ], [ %i.st, %.prol.loopexit.unr-lcssa ]
end_hunk_1
begin_hunk_2_@HUF_decompress4X2_usingDTable_internal_bmi2:bb.a
  ]

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %i.p, i64 6
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !20
  %i.cr = zext i8 %i.cq to i64
  %i.cs = shl nuw nsw i64 %i.cr, 48
  %i.ct = or disjoint i64 %i.cs, %i.co
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cu = phi i64 [ %i.ct, %bb.s ], [ %i.co, %bb.r ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.p, i64 5
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !20
  %i.cx = zext i8 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 40
  %i.cz = add nuw nsw i64 %i.cy, %i.cu
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.da = phi i64 [ %i.cz, %bb.t ], [ %i.co, %bb.r ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !20
  %i.dd = zext i8 %i.dc to i64
  %i.de = shl nuw nsw i64 %i.dd, 32
  %i.df = add nuw nsw i64 %i.de, %i.da
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %i.dg = phi i64 [ %i.df, %bb.u ], [ %i.co, %bb.r ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.p, i64 3
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !20
  %i.dj = zext i8 %i.di to i64
  %i.dk = shl nuw nsw i64 %i.dj, 24
  %i.dl = add nuw nsw i64 %i.dk, %i.dg
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.r
  %i.dm = phi i64 [ %i.dl, %bb.v ], [ %i.co, %bb.r ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !20
  %i.dp = zext i8 %i.do to i64
  %i.dq = shl nuw nsw i64 %i.dp, 16
  %i.dr = add nuw nsw i64 %i.dq, %i.dm
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.r
  %i.ds = phi i64 [ %i.dr, %bb.w ], [ %i.co, %bb.r ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !20
  %i.dv = zext i8 %i.du to i64
  %i.dw = shl nuw nsw i64 %i.dv, 8
  %i.dx = add nuw nsw i64 %i.dw, %i.ds
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.r
  %.sroa.0309.11 = phi i64 [ %i.co, %bb.r ], [ %i.dx, %bb.x ]
  %i.dy = getelementptr i8, ptr %i.q, i64 -1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !20  ; 2 uses
  %.not.i152 = icmp eq i8 %i.dz, 0
  br i1 %.not.i152, label %BIT_initDStream.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ea = zext i8 %i.dz to i32
  %i.eb = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.ea, i1 true)
  %i.ec = shl nuw nsw i16 %.val149, 3
  %i.ed = zext nneg i16 %i.ec to i32
  %reass.sub846 = sub nsw i32 %i.eb, %i.ed
  %i.ee = add nsw i32 %reass.sub846, 41
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.thread.i156
  %.sroa.0309.12 = phi i64 [ %.sroa.0309.11, %bb.z ], [ %.val.i154, %.thread.i156 ] ; 2 uses
  %.sroa.36310.14 = phi i32 [ %i.ee, %bb.z ], [ %i.cm, %.thread.i156 ] ; 2 uses
  %.sroa.116344.11 = phi ptr [ %i.p, %bb.z ], [ %i.ci, %.thread.i156 ] ; 2 uses
  %i.ef = icmp eq i16 %.val148, 0
  br i1 %i.ef, label %BIT_initDStream.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eg = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 5 uses
  %i.eh = icmp ugt i16 %.val148, 7
  br i1 %i.eh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ei = getelementptr i8, ptr %i.r, i64 -1
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !20  ; 2 uses
  %.not51.i161 = icmp eq i8 %i.ej, 0
  br i1 %.not51.i161, label %BIT_initDStream.exit.thread, label %.thread.i162

.thread.i162:                                     ; preds = %bb.ac
  %i.ek = getelementptr inbounds i8, ptr %i.r, i64 -8 ; 2 uses
  %.val.i160 = load i64, ptr %i.ek, align 1, !tbaa !26
  %i.el = zext i8 %i.ej to i32
  %i.em = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.el, i1 true)
  %i.en = xor i32 %i.em, 31
  %i.eo = sub nuw nsw i32 8, %i.en
  br label %bb.am

bb.ad:                                            ; preds = %bb.ab
  %i.ep = load i8, ptr %i.q, align 1, !tbaa !20
  %i.eq = zext i8 %i.ep to i64                    ; 7 uses
  switch i16 %.val148, label %bb.ak [
    i16 7, label %bb.ae
    i16 6, label %bb.af
    i16 5, label %bb.ag
    i16 4, label %bb.ah
    i16 3, label %bb.ai
    i16 2, label %bb.aj
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.er = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %i.es = load i8, ptr %i.er, align 1, !tbaa !20
  %i.et = zext i8 %i.es to i64
  %i.eu = shl nuw nsw i64 %i.et, 48
  %i.ev = or disjoint i64 %i.eu, %i.eq
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ew = phi i64 [ %i.ev, %bb.ae ], [ %i.eq, %bb.ad ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.q, i64 5
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !20
  %i.ez = zext i8 %i.ey to i64
  %i.fa = shl nuw nsw i64 %i.ez, 40
  %i.fb = add nuw nsw i64 %i.fa, %i.ew
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %i.fc = phi i64 [ %i.fb, %bb.af ], [ %i.eq, %bb.ad ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !20
  %i.ff = zext i8 %i.fe to i64
  %i.fg = shl nuw nsw i64 %i.ff, 32
  %i.fh = add nuw nsw i64 %i.fg, %i.fc
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad
  %i.fi = phi i64 [ %i.fh, %bb.ag ], [ %i.eq, %bb.ad ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !20
  %i.fl = zext i8 %i.fk to i64
  %i.fm = shl nuw nsw i64 %i.fl, 24
  %i.fn = add nuw nsw i64 %i.fm, %i.fi
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ad
  %i.fo = phi i64 [ %i.fn, %bb.ah ], [ %i.eq, %bb.ad ]
  %i.fp = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !20
  %i.fr = zext i8 %i.fq to i64
  %i.fs = shl nuw nsw i64 %i.fr, 16
  %i.ft = add nuw nsw i64 %i.fs, %i.fo
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ad
  %i.fu = phi i64 [ %i.ft, %bb.ai ], [ %i.eq, %bb.ad ]
  %i.fv = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !20
  %i.fx = zext i8 %i.fw to i64
  %i.fy = shl nuw nsw i64 %i.fx, 8
  %i.fz = add nuw nsw i64 %i.fy, %i.fu
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ad
  %.sroa.0.11 = phi i64 [ %i.eq, %bb.ad ], [ %i.fz, %bb.aj ]
  %i.ga = getelementptr i8, ptr %i.r, i64 -1
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !20  ; 2 uses
  %.not.i158 = icmp eq i8 %i.gb, 0
  br i1 %.not.i158, label %BIT_initDStream.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gc = zext i8 %i.gb to i32
  %i.gd = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.gc, i1 true)
  %i.ge = shl nuw nsw i16 %.val148, 3
  %i.gf = zext nneg i16 %i.ge to i32
  %reass.sub847 = sub nsw i32 %i.gd, %i.gf
  %i.gg = add nsw i32 %reass.sub847, 41
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.thread.i162
  %.sroa.0.12 = phi i64 [ %.sroa.0.11, %bb.al ], [ %.val.i160, %.thread.i162 ] ; 2 uses
  %.sroa.36.14 = phi i32 [ %i.gg, %bb.al ], [ %i.eo, %.thread.i162 ] ; 2 uses
  %.sroa.116224.11 = phi ptr [ %i.q, %bb.al ], [ %i.ek, %.thread.i162 ] ; 2 uses
  %i.gh = call fastcc i64 @BIT_initDStream(ptr noundef %5, ptr noundef nonnull %i.r, i64 noundef %i.n) ; 2 uses
  %i.gi = icmp ult i64 %i.gh, -119
  br i1 %i.gi, label %bb.an, label %BIT_initDStream.exit.thread

bb.an:                                            ; preds = %bb.am
  %.neg.i = mul i64 %i.t, -3
  %gepdiff.i = add i64 %.neg.i, %1
  %i.gj = icmp ugt i64 %gepdiff.i, 7
  %.not848 = icmp ult ptr %i.w, %i.d
  %or.cond = select i1 %i.gj, i1 %.not848, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit670

.lr.ph:                                           ; preds = %bb.an
  %.promoted = load i64, ptr %5, align 8
  %i.gk = sub nsw i32 0, %.sroa.3.0.extract.shift.i
  %i.gl = and i32 %i.gk, 63
  %i.gm = zext nneg i32 %i.gl to i64              ; 16 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !43
  %.promoted705 = load i32, ptr %i.gn, align 8, !tbaa !44
  %.promoted708 = load ptr, ptr %i.go, align 8, !tbaa !45
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph, %BIT_reloadDStreamFast.exit172
  %i.gr = phi ptr [ %.promoted708, %.lr.ph ], [ %i.qe, %BIT_reloadDStreamFast.exit172 ] ; 2 uses
  %.val27706 = phi i32 [ %.promoted705, %.lr.ph ], [ %i.qf, %BIT_reloadDStreamFast.exit172 ] ; 2 uses
  %.0162.i692 = phi ptr [ %i.w, %.lr.ph ], [ %i.pt, %BIT_reloadDStreamFast.exit172 ] ; 2 uses
  %.0166.i691 = phi ptr [ %i.v, %.lr.ph ], [ %i.np, %BIT_reloadDStreamFast.exit172 ] ; 2 uses
  %.0170.i690 = phi ptr [ %i.u, %.lr.ph ], [ %i.kz, %BIT_reloadDStreamFast.exit172 ] ; 2 uses
  %.0174.i689 = phi ptr [ %0, %.lr.ph ], [ %i.iv, %BIT_reloadDStreamFast.exit172 ] ; 2 uses
  %.sroa.116224.10688 = phi ptr [ %.sroa.116224.11, %.lr.ph ], [ %.sroa.116224.12, %BIT_reloadDStreamFast.exit172 ] ; 3 uses
  %.sroa.36.13687 = phi i32 [ %.sroa.36.14, %.lr.ph ], [ %.sroa.36.15, %BIT_reloadDStreamFast.exit172 ] ; 2 uses
  %.sroa.0.10686 = phi i64 [ %.sroa.0.12, %.lr.ph ], [ %.sroa.0.13, %BIT_reloadDStreamFast.exit172 ] ; 5 uses
  %.sroa.116344.10685 = phi ptr [ %.sroa.116344.11, %.lr.ph ], [ %.sroa.116344.12, %BIT_reloadDStreamFast.exit172 ] ; 3 uses
  %.sroa.36310.13684 = phi i32 [ %.sroa.36310.14, %.lr.ph ], [ %.sroa.36310.15, %BIT_reloadDStreamFast.exit172 ] ; 2 uses
  %.sroa.0309.10683 = phi i64 [ %.sroa.0309.12, %.lr.ph ], [ %.sroa.0309.13, %BIT_reloadDStreamFast.exit172 ] ; 5 uses
  %.sroa.116466.10682 = phi ptr [ %.sroa.116466.11, %.lr.ph ], [ %.sroa.116466.12, %BIT_reloadDStreamFast.exit172 ] ; 3 uses
  %.sroa.36432.13681 = phi i32 [ %.sroa.36432.14, %.lr.ph ], [ %.sroa.36432.15, %BIT_reloadDStreamFast.exit172 ] ; 2 uses
  %.sroa.0431.10680 = phi i64 [ %.sroa.0431.12, %.lr.ph ], [ %.sroa.0431.13, %BIT_reloadDStreamFast.exit172 ] ; 5 uses
  %.val.i.i170678679 = phi i64 [ %.promoted, %.lr.ph ], [ %.val.i.i170, %BIT_reloadDStreamFast.exit172 ] ; 4 uses
  %i.gs = and i32 %.sroa.36432.13681, 63
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = shl i64 %.sroa.0431.10680, %i.gt
  %i.gv = lshr i64 %i.gu, %i.gm
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.gv ; 3 uses
  %i.gx = load i16, ptr %i.gw, align 2
  store i16 %i.gx, ptr %.0174.i689, align 1
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 2
  %i.gz = load i8, ptr %i.gy, align 2, !tbaa !29
  %i.ha = zext i8 %i.gz to i32
  %i.hb = add i32 %.sroa.36432.13681, %i.ha       ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gw, i64 3
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !30
  %i.he = zext i8 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %.0174.i689, i64 %i.he ; 2 uses
  %i.hg = and i32 %i.hb, 63
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = shl i64 %.sroa.0431.10680, %i.hh
  %i.hj = lshr i64 %i.hi, %i.gm
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.hj ; 3 uses
  %i.hl = load i16, ptr %i.hk, align 2
  store i16 %i.hl, ptr %i.hf, align 1
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 2
  %i.hn = load i8, ptr %i.hm, align 2, !tbaa !29
  %i.ho = zext i8 %i.hn to i32
  %i.hp = add i32 %i.hb, %i.ho                    ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 3
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !30
  %i.hs = zext i8 %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hs ; 2 uses
  %i.hu = and i32 %i.hp, 63
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = shl i64 %.sroa.0431.10680, %i.hv
  %i.hx = lshr i64 %i.hw, %i.gm
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.hx ; 3 uses
  %i.hz = load i16, ptr %i.hy, align 2
  store i16 %i.hz, ptr %i.ht, align 1
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 2
  %i.ib = load i8, ptr %i.ia, align 2, !tbaa !29
  %i.ic = zext i8 %i.ib to i32
  %i.id = add i32 %i.hp, %i.ic                    ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hy, i64 3
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !30
  %i.ig = zext i8 %i.if to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.ig ; 2 uses
  %i.ii = and i32 %i.id, 63
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = shl i64 %.sroa.0431.10680, %i.ij
  %i.il = lshr i64 %i.ik, %i.gm
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.il ; 3 uses
  %i.in = load i16, ptr %i.im, align 2
  store i16 %i.in, ptr %i.ih, align 1
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 2
  %i.ip = load i8, ptr %i.io, align 2, !tbaa !29
  %i.iq = zext i8 %i.ip to i32
  %i.ir = add i32 %i.id, %i.iq                    ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.im, i64 3
  %i.it = load i8, ptr %i.is, align 1, !tbaa !30
  %i.iu = zext i8 %i.it to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.iu ; 3 uses
  %i.iw = and i32 %.sroa.36310.13684, 63
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = shl i64 %.sroa.0309.10683, %i.ix
  %i.iz = lshr i64 %i.iy, %i.gm
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.iz ; 3 uses
  %i.jb = load i16, ptr %i.ja, align 2
  store i16 %i.jb, ptr %.0170.i690, align 1
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 2
  %i.jd = load i8, ptr %i.jc, align 2, !tbaa !29
  %i.je = zext i8 %i.jd to i32
  %i.jf = add i32 %.sroa.36310.13684, %i.je       ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ja, i64 3
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !30
  %i.ji = zext i8 %i.jh to i64
  %i.jj = getelementptr inbounds nuw i8, ptr %.0170.i690, i64 %i.ji ; 2 uses
  %i.jk = and i32 %i.jf, 63
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = shl i64 %.sroa.0309.10683, %i.jl
  %i.jn = lshr i64 %i.jm, %i.gm
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.jn ; 3 uses
  %i.jp = load i16, ptr %i.jo, align 2
  store i16 %i.jp, ptr %i.jj, align 1
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 2
  %i.jr = load i8, ptr %i.jq, align 2, !tbaa !29
  %i.js = zext i8 %i.jr to i32
  %i.jt = add i32 %i.jf, %i.js                    ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jo, i64 3
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !30
  %i.jw = zext i8 %i.jv to i64
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jw ; 2 uses
  %i.jy = and i32 %i.jt, 63
  %i.jz = zext nneg i32 %i.jy to i64
  %i.ka = shl i64 %.sroa.0309.10683, %i.jz
  %i.kb = lshr i64 %i.ka, %i.gm
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.kb ; 3 uses
  %i.kd = load i16, ptr %i.kc, align 2
  store i16 %i.kd, ptr %i.jx, align 1
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 2
  %i.kf = load i8, ptr %i.ke, align 2, !tbaa !29
  %i.kg = zext i8 %i.kf to i32
  %i.kh = add i32 %i.jt, %i.kg                    ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kc, i64 3
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !30
  %i.kk = zext i8 %i.kj to i64
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.kk ; 2 uses
  %i.km = and i32 %i.kh, 63
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = shl i64 %.sroa.0309.10683, %i.kn
  %i.kp = lshr i64 %i.ko, %i.gm
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.kp ; 3 uses
  %i.kr = load i16, ptr %i.kq, align 2
  store i16 %i.kr, ptr %i.kl, align 1
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 2
  %i.kt = load i8, ptr %i.ks, align 2, !tbaa !29
  %i.ku = zext i8 %i.kt to i32
  %i.kv = add i32 %i.kh, %i.ku                    ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kq, i64 3
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !30
  %i.ky = zext i8 %i.kx to i64
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.ky ; 3 uses
  %i.la = icmp ult ptr %.sroa.116466.10682, %i.ac ; 2 uses
  br i1 %i.la, label %BIT_reloadDStreamFast.exit, label %bb.ap, !prof !46

bb.ap:                                            ; preds = %bb.ao
  %i.lb = lshr i32 %i.ir, 3
  %i.lc = zext nneg i32 %i.lb to i64
  %i.ld = sub nsw i64 0, %i.lc
  %i.le = getelementptr inbounds i8, ptr %.sroa.116466.10682, i64 %i.ld ; 2 uses
  %i.lf = and i32 %i.ir, 7
  %.val.i.i = load i64, ptr %i.le, align 1, !tbaa !26
  br label %BIT_reloadDStreamFast.exit

BIT_reloadDStreamFast.exit:                       ; preds = %bb.ao, %bb.ap
  %.sroa.0431.13 = phi i64 [ %.sroa.0431.10680, %bb.ao ], [ %.val.i.i, %bb.ap ] ; 3 uses
  %.sroa.36432.15 = phi i32 [ %i.ir, %bb.ao ], [ %i.lf, %bb.ap ] ; 3 uses
  %.sroa.116466.12 = phi ptr [ %.sroa.116466.10682, %bb.ao ], [ %i.le, %bb.ap ] ; 3 uses
  %i.lg = icmp ult ptr %.sroa.116344.10685, %i.ce
  br i1 %i.lg, label %BIT_reloadDStreamFast.exit166, label %bb.aq, !prof !46

bb.aq:                                            ; preds = %BIT_reloadDStreamFast.exit
  %i.lh = lshr i32 %i.kv, 3
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = sub nsw i64 0, %i.li
  %i.lk = getelementptr inbounds i8, ptr %.sroa.116344.10685, i64 %i.lj ; 2 uses
  %i.ll = and i32 %i.kv, 7
  %.val.i.i164 = load i64, ptr %i.lk, align 1, !tbaa !26
  br label %BIT_reloadDStreamFast.exit166

BIT_reloadDStreamFast.exit166:                    ; preds = %BIT_reloadDStreamFast.exit, %bb.aq
  %.sroa.0309.13 = phi i64 [ %.sroa.0309.10683, %BIT_reloadDStreamFast.exit ], [ %.val.i.i164, %bb.aq ] ; 3 uses
  %.sroa.36310.15 = phi i32 [ %i.kv, %BIT_reloadDStreamFast.exit ], [ %i.ll, %bb.aq ] ; 3 uses
  %.sroa.116344.12 = phi ptr [ %.sroa.116344.10685, %BIT_reloadDStreamFast.exit ], [ %i.lk, %bb.aq ] ; 3 uses
  %.0.i165 = phi i1 [ true, %BIT_reloadDStreamFast.exit ], [ %i.la, %bb.aq ]
  %i.lm = and i32 %.sroa.36.13687, 63
  %i.ln = zext nneg i32 %i.lm to i64
  %i.lo = shl i64 %.sroa.0.10686, %i.ln
  %i.lp = lshr i64 %i.lo, %i.gm
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.lp ; 3 uses
  %i.lr = load i16, ptr %i.lq, align 2
  store i16 %i.lr, ptr %.0166.i691, align 1
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 2
  %i.lt = load i8, ptr %i.ls, align 2, !tbaa !29
  %i.lu = zext i8 %i.lt to i32
  %i.lv = add i32 %.sroa.36.13687, %i.lu          ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lq, i64 3
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !30
  %i.ly = zext i8 %i.lx to i64
  %i.lz = getelementptr inbounds nuw i8, ptr %.0166.i691, i64 %i.ly ; 2 uses
  %i.ma = and i32 %i.lv, 63
  %i.mb = zext nneg i32 %i.ma to i64
  %i.mc = shl i64 %.sroa.0.10686, %i.mb
  %i.md = lshr i64 %i.mc, %i.gm
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.md ; 3 uses
  %i.mf = load i16, ptr %i.me, align 2
  store i16 %i.mf, ptr %i.lz, align 1
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 2
  %i.mh = load i8, ptr %i.mg, align 2, !tbaa !29
  %i.mi = zext i8 %i.mh to i32
  %i.mj = add i32 %i.lv, %i.mi                    ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.me, i64 3
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !30
  %i.mm = zext i8 %i.ml to i64
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.mm ; 2 uses
  %i.mo = and i32 %i.mj, 63
  %i.mp = zext nneg i32 %i.mo to i64
  %i.mq = shl i64 %.sroa.0.10686, %i.mp
  %i.mr = lshr i64 %i.mq, %i.gm
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.mr ; 3 uses
  %i.mt = load i16, ptr %i.ms, align 2
  store i16 %i.mt, ptr %i.mn, align 1
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 2
  %i.mv = load i8, ptr %i.mu, align 2, !tbaa !29
  %i.mw = zext i8 %i.mv to i32
  %i.mx = add i32 %i.mj, %i.mw                    ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.ms, i64 3
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !30
  %i.na = zext i8 %i.mz to i64
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.na ; 2 uses
  %i.nc = and i32 %i.mx, 63
  %i.nd = zext nneg i32 %i.nc to i64
  %i.ne = shl i64 %.sroa.0.10686, %i.nd
  %i.nf = lshr i64 %i.ne, %i.gm
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.nf ; 3 uses
  %i.nh = load i16, ptr %i.ng, align 2
  store i16 %i.nh, ptr %i.nb, align 1
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 2
  %i.nj = load i8, ptr %i.ni, align 2, !tbaa !29
  %i.nk = zext i8 %i.nj to i32
  %i.nl = add i32 %i.mx, %i.nk                    ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ng, i64 3
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !30
  %i.no = zext i8 %i.nn to i64
  %i.np = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.no ; 3 uses
  %i.nq = and i32 %.val27706, 63
  %i.nr = zext nneg i32 %i.nq to i64
  %i.ns = shl i64 %.val.i.i170678679, %i.nr
  %i.nt = lshr i64 %i.ns, %i.gm
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.nt ; 3 uses
  %i.nv = load i16, ptr %i.nu, align 2
  store i16 %i.nv, ptr %.0162.i692, align 1
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 2
  %i.nx = load i8, ptr %i.nw, align 2, !tbaa !29
  %i.ny = zext i8 %i.nx to i32
  %i.nz = add i32 %.val27706, %i.ny               ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nu, i64 3
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !30
  %i.oc = zext i8 %i.ob to i64
  %i.od = getelementptr inbounds nuw i8, ptr %.0162.i692, i64 %i.oc ; 2 uses
  %i.oe = and i32 %i.nz, 63
  %i.of = zext nneg i32 %i.oe to i64
  %i.og = shl i64 %.val.i.i170678679, %i.of
  %i.oh = lshr i64 %i.og, %i.gm
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.oh ; 3 uses
  %i.oj = load i16, ptr %i.oi, align 2
  store i16 %i.oj, ptr %i.od, align 1
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oi, i64 2
  %i.ol = load i8, ptr %i.ok, align 2, !tbaa !29
  %i.om = zext i8 %i.ol to i32
  %i.on = add i32 %i.nz, %i.om                    ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oi, i64 3
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !30
  %i.oq = zext i8 %i.op to i64
  %i.or = getelementptr inbounds nuw i8, ptr %i.od, i64 %i.oq ; 2 uses
  %i.os = and i32 %i.on, 63
  %i.ot = zext nneg i32 %i.os to i64
  %i.ou = shl i64 %.val.i.i170678679, %i.ot
  %i.ov = lshr i64 %i.ou, %i.gm
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ov ; 3 uses
  %i.ox = load i16, ptr %i.ow, align 2
  store i16 %i.ox, ptr %i.or, align 1
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 2
  %i.oz = load i8, ptr %i.oy, align 2, !tbaa !29
  %i.pa = zext i8 %i.oz to i32
  %i.pb = add i32 %i.on, %i.pa                    ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ow, i64 3
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !30
  %i.pe = zext i8 %i.pd to i64
  %i.pf = getelementptr inbounds nuw i8, ptr %i.or, i64 %i.pe ; 2 uses
  %i.pg = and i32 %i.pb, 63
  %i.ph = zext nneg i32 %i.pg to i64
  %i.pi = shl i64 %.val.i.i170678679, %i.ph
  %i.pj = lshr i64 %i.pi, %i.gm
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.pj ; 3 uses
  %i.pl = load i16, ptr %i.pk, align 2
  store i16 %i.pl, ptr %i.pf, align 1
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pk, i64 2
  %i.pn = load i8, ptr %i.pm, align 2, !tbaa !29
  %i.po = zext i8 %i.pn to i32
  %i.pp = add i32 %i.pb, %i.po                    ; 3 uses
  store i32 %i.pp, ptr %i.gn, align 8, !tbaa !44
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pk, i64 3
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !30
  %i.ps = zext i8 %i.pr to i64
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.ps ; 4 uses
  %i.pu = icmp ult ptr %.sroa.116224.10688, %i.eg
  br i1 %i.pu, label %BIT_reloadDStreamFast.exit169, label %bb.ar, !prof !46

bb.ar:                                            ; preds = %BIT_reloadDStreamFast.exit166
  %i.pv = lshr i32 %i.nl, 3
  %i.pw = zext nneg i32 %i.pv to i64
  %i.px = sub nsw i64 0, %i.pw
  %i.py = getelementptr inbounds i8, ptr %.sroa.116224.10688, i64 %i.px ; 2 uses
  %i.pz = and i32 %i.nl, 7
  %.val.i.i167 = load i64, ptr %i.py, align 1, !tbaa !26
  br label %BIT_reloadDStreamFast.exit169

BIT_reloadDStreamFast.exit169:                    ; preds = %BIT_reloadDStreamFast.exit166, %bb.ar
  %.sroa.0.13 = phi i64 [ %.sroa.0.10686, %BIT_reloadDStreamFast.exit166 ], [ %.val.i.i167, %bb.ar ] ; 3 uses
  %.sroa.36.15 = phi i32 [ %i.nl, %BIT_reloadDStreamFast.exit166 ], [ %i.pz, %bb.ar ] ; 3 uses
  %.sroa.116224.12 = phi ptr [ %.sroa.116224.10688, %BIT_reloadDStreamFast.exit166 ], [ %i.py, %bb.ar ] ; 3 uses
  %.0.i168 = phi i1 [ true, %BIT_reloadDStreamFast.exit166 ], [ %.0.i165, %bb.ar ]
  %i.qa = icmp ult ptr %i.gr, %i.gq
  br i1 %i.qa, label %.loopexit670, label %BIT_reloadDStreamFast.exit172, !prof !46

BIT_reloadDStreamFast.exit172:                    ; preds = %BIT_reloadDStreamFast.exit169
  %i.qb = lshr i32 %i.pp, 3
  %i.qc = zext nneg i32 %i.qb to i64
  %i.qd = sub nsw i64 0, %i.qc
  %i.qe = getelementptr inbounds i8, ptr %i.gr, i64 %i.qd ; 3 uses
  store ptr %i.qe, ptr %i.go, align 8, !tbaa !45
  %i.qf = and i32 %i.pp, 7                        ; 2 uses
  store i32 %i.qf, ptr %i.gn, align 8, !tbaa !44
  %.val.i.i170 = load i64, ptr %i.qe, align 1, !tbaa !26 ; 2 uses
  store i64 %.val.i.i170, ptr %5, align 8, !tbaa !47
  %i.qg = icmp uge ptr %i.pt, %i.d
  %.not193.i = or i1 %i.qg, %.0.i168
  br i1 %.not193.i, label %.loopexit670, label %bb.ao, !llvm.loop !6

.loopexit670:                                     ; preds = %BIT_reloadDStreamFast.exit169, %BIT_reloadDStreamFast.exit172, %bb.an
  %.sroa.0431.0 = phi i64 [ %.sroa.0431.12, %bb.an ], [ %.sroa.0431.13, %BIT_reloadDStreamFast.exit172 ], [ %.sroa.0431.13, %BIT_reloadDStreamFast.exit169 ] ; 6 uses
  %.sroa.36432.0 = phi i32 [ %.sroa.36432.14, %bb.an ], [ %.sroa.36432.15, %BIT_reloadDStreamFast.exit172 ], [ %.sroa.36432.15, %BIT_reloadDStreamFast.exit169 ] ; 12 uses
  %.sroa.116466.0 = phi ptr [ %.sroa.116466.11, %bb.an ], [ %.sroa.116466.12, %BIT_reloadDStreamFast.exit172 ], [ %.sroa.116466.12, %BIT_reloadDStreamFast.exit169 ] ; 8 uses
  %.sroa.0309.0 = phi i64 [ %.sroa.0309.12, %bb.an ], [ %.sroa.0309.13, %BIT_reloadDStreamFast.exit172 ], [ %.sroa.0309.13, %BIT_reloadDStreamFast.exit169 ] ; 6 uses
  %.sroa.36310.0 = phi i32 [ %.sroa.36310.14, %bb.an ], [ %.sroa.36310.15, %BIT_reloadDStreamFast.exit172 ], [ %.sroa.36310.15, %BIT_reloadDStreamFast.exit169 ] ; 12 uses
  %.sroa.116344.0 = phi ptr [ %.sroa.116344.11, %bb.an ], [ %.sroa.116344.12, %BIT_reloadDStreamFast.exit172 ], [ %.sroa.116344.12, %BIT_reloadDStreamFast.exit169 ] ; 8 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.12, %bb.an ], [ %.sroa.0.13, %BIT_reloadDStreamFast.exit172 ], [ %.sroa.0.13, %BIT_reloadDStreamFast.exit169 ] ; 6 uses
  %.sroa.36.0 = phi i32 [ %.sroa.36.14, %bb.an ], [ %.sroa.36.15, %BIT_reloadDStreamFast.exit172 ], [ %.sroa.36.15, %BIT_reloadDStreamFast.exit169 ] ; 12 uses
  %.sroa.116224.0 = phi ptr [ %.sroa.116224.11, %bb.an ], [ %.sroa.116224.12, %BIT_reloadDStreamFast.exit172 ], [ %.sroa.116224.12, %BIT_reloadDStreamFast.exit169 ] ; 8 uses
  %.3177.i = phi ptr [ %0, %bb.an ], [ %i.iv, %BIT_reloadDStreamFast.exit172 ], [ %i.iv, %BIT_reloadDStreamFast.exit169 ] ; 10 uses
  %.3173.i = phi ptr [ %i.u, %bb.an ], [ %i.kz, %BIT_reloadDStreamFast.exit172 ], [ %i.kz, %BIT_reloadDStreamFast.exit169 ] ; 10 uses
  %.3169.i = phi ptr [ %i.v, %bb.an ], [ %i.np, %BIT_reloadDStreamFast.exit172 ], [ %i.np, %BIT_reloadDStreamFast.exit169 ] ; 10 uses
  %.3165.i = phi ptr [ %i.w, %bb.an ], [ %i.pt, %BIT_reloadDStreamFast.exit172 ], [ %i.pt, %BIT_reloadDStreamFast.exit169 ] ; 9 uses
  %i.qh = icmp ugt ptr %.3177.i, %i.u
  %i.qi = icmp ugt ptr %.3173.i, %i.v
  %or.cond198.i = select i1 %i.qh, i1 true, i1 %i.qi
  %i.qj = icmp ugt ptr %.3169.i, %i.w
  %or.cond199.i = select i1 %or.cond198.i, i1 true, i1 %i.qj
  br i1 %or.cond199.i, label %BIT_initDStream.exit.thread, label %bb.as

bb.as:                                            ; preds = %.loopexit670
  %i.qk = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ql = ptrtoint ptr %.3177.i to i64
  %i.qm = sub i64 %i.qk, %i.ql
  %i.qn = icmp ugt i64 %i.qm, 7
  br i1 %i.qn, label %bb.at, label %bb.be

bb.at:                                            ; preds = %bb.as
  %i.qo = icmp samesign ult i32 %i.x, 12
  %i.qp = icmp ugt i32 %.sroa.36432.0, 64         ; 2 uses
  br i1 %i.qo, label %.preheader663, label %.preheader664

.preheader664:                                    ; preds = %bb.at
  br i1 %i.qp, label %BIT_reloadDStream.exit249.i, label %.lr.ph713, !prof !32

.lr.ph713:                                        ; preds = %.preheader664
  %i.qq = ptrtoint ptr %i.o to i64
  %i.qr = getelementptr inbounds i8, ptr %i.u, i64 -7
  %i.qs = sub nsw i32 0, %.sroa.3.0.extract.shift.i
  %i.qt = and i32 %i.qs, 63
  %i.qu = zext nneg i32 %i.qt to i64              ; 4 uses
  br label %bb.az

.preheader663:                                    ; preds = %bb.at
  br i1 %i.qp, label %BIT_reloadDStream.exit249.i, label %.lr.ph731, !prof !32

.lr.ph731:                                        ; preds = %.preheader663
  %i.qv = ptrtoint ptr %i.o to i64
  %i.qw = getelementptr inbounds i8, ptr %i.u, i64 -9
  %i.qx = sub nsw i32 0, %.sroa.3.0.extract.shift.i
  %i.qy = and i32 %i.qx, 63
  %i.qz = zext nneg i32 %i.qy to i64              ; 5 uses
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph731, %bb.ay
  %.0.i225.i730 = phi ptr [ %.3177.i, %.lr.ph731 ], [ %i.ug, %bb.ay ] ; 5 uses
  %.sroa.116466.8729 = phi ptr [ %.sroa.116466.0, %.lr.ph731 ], [ %.sroa.116466.9, %bb.ay ] ; 5 uses
  %.sroa.36432.11728 = phi i32 [ %.sroa.36432.0, %.lr.ph731 ], [ %i.uc, %bb.ay ] ; 5 uses
  %.sroa.0431.8727 = phi i64 [ %.sroa.0431.0, %.lr.ph731 ], [ %.sroa.0431.9, %bb.ay ]
  %.not.i227.i = icmp ult ptr %.sroa.116466.8729, %i.ac
  br i1 %.not.i227.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ra = lshr i32 %.sroa.36432.11728, 3
  %i.rb = and i32 %.sroa.36432.11728, 7
  br label %BIT_reloadDStream.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.rc = icmp eq ptr %.sroa.116466.8729, %i.o
  br i1 %i.rc, label %BIT_reloadDStream.exit249.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.rd = lshr i32 %.sroa.36432.11728, 3          ; 2 uses
  %i.re = zext nneg i32 %i.rd to i64
  %i.rf = sub nsw i64 0, %i.re
  %i.rg = getelementptr inbounds i8, ptr %.sroa.116466.8729, i64 %i.rf
  %i.rh = icmp uge ptr %i.rg, %i.o                ; 2 uses
  %i.ri = ptrtoint ptr %.sroa.116466.8729 to i64
  %i.rj = sub i64 %i.ri, %i.qv
  %i.rk = trunc i64 %i.rj to i32
  %.021.i.i = select i1 %i.rh, i32 %i.rd, i32 %i.rk ; 2 uses
  %i.rl = shl i32 %.021.i.i, 3
  %i.rm = sub i32 %.sroa.36432.11728, %i.rl
  br label %BIT_reloadDStream.exit.i

BIT_reloadDStream.exit.i:                         ; preds = %bb.ax, %bb.av
  %.sroa.36432.12 = phi i32 [ %i.rb, %bb.av ], [ %i.rm, %bb.ax ] ; 3 uses
  %.pn606.in = phi i32 [ %i.ra, %bb.av ], [ %.021.i.i, %bb.ax ]
  %.022.i.i = phi i1 [ true, %bb.av ], [ %i.rh, %bb.ax ]
  %.pn606 = zext i32 %.pn606.in to i64
  %.pn605 = sub nsw i64 0, %.pn606
  %.sroa.116466.9 = getelementptr inbounds i8, ptr %.sroa.116466.8729, i64 %.pn605 ; 3 uses
  %.sroa.0431.9 = load i64, ptr %.sroa.116466.9, align 1, !tbaa !26 ; 8 uses
  %i.rn = icmp ult ptr %.0.i225.i730, %i.qw
  %i.ro = and i1 %i.rn, %.022.i.i
  br i1 %i.ro, label %bb.ay, label %BIT_reloadDStream.exit249.i

bb.ay:                                            ; preds = %BIT_reloadDStream.exit.i
  %i.rp = and i32 %.sroa.36432.12, 63
  %i.rq = zext nneg i32 %i.rp to i64
  %i.rr = shl i64 %.sroa.0431.9, %i.rq
  %i.rs = lshr i64 %i.rr, %i.qz
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.rs ; 3 uses
  %i.ru = load i16, ptr %i.rt, align 2
  store i16 %i.ru, ptr %.0.i225.i730, align 1
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rt, i64 2
  %i.rw = load i8, ptr %i.rv, align 2, !tbaa !29
  %i.rx = zext i8 %i.rw to i32
  %i.ry = add i32 %.sroa.36432.12, %i.rx          ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rt, i64 3
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !30
  %i.sb = zext i8 %i.sa to i64
  %i.sc = getelementptr inbounds nuw i8, ptr %.0.i225.i730, i64 %i.sb ; 2 uses
  %i.sd = and i32 %i.ry, 63
  %i.se = zext nneg i32 %i.sd to i64
  %i.sf = shl i64 %.sroa.0431.9, %i.se
  %i.sg = lshr i64 %i.sf, %i.qz
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.sg ; 3 uses
  %i.si = load i16, ptr %i.sh, align 2
  store i16 %i.si, ptr %i.sc, align 1
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sh, i64 2
  %i.sk = load i8, ptr %i.sj, align 2, !tbaa !29
  %i.sl = zext i8 %i.sk to i32
  %i.sm = add i32 %i.ry, %i.sl                    ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sh, i64 3
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !30
  %i.sp = zext i8 %i.so to i64
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sc, i64 %i.sp ; 2 uses
  %i.sr = and i32 %i.sm, 63
  %i.ss = zext nneg i32 %i.sr to i64
  %i.st = shl i64 %.sroa.0431.9, %i.ss
  %i.su = lshr i64 %i.st, %i.qz
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.su ; 3 uses
  %i.sw = load i16, ptr %i.sv, align 2
  store i16 %i.sw, ptr %i.sq, align 1
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sv, i64 2
  %i.sy = load i8, ptr %i.sx, align 2, !tbaa !29
  %i.sz = zext i8 %i.sy to i32
  %i.ta = add i32 %i.sm, %i.sz                    ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sv, i64 3
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !30
  %i.td = zext i8 %i.tc to i64
  %i.te = getelementptr inbounds nuw i8, ptr %i.sq, i64 %i.td ; 2 uses
  %i.tf = and i32 %i.ta, 63
  %i.tg = zext nneg i32 %i.tf to i64
  %i.th = shl i64 %.sroa.0431.9, %i.tg
  %i.ti = lshr i64 %i.th, %i.qz
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ti ; 3 uses
  %i.tk = load i16, ptr %i.tj, align 2
  store i16 %i.tk, ptr %i.te, align 1
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tj, i64 2
  %i.tm = load i8, ptr %i.tl, align 2, !tbaa !29
  %i.tn = zext i8 %i.tm to i32
  %i.to = add i32 %i.ta, %i.tn                    ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tj, i64 3
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !30
  %i.tr = zext i8 %i.tq to i64
  %i.ts = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.tr ; 2 uses
  %i.tt = and i32 %i.to, 63
  %i.tu = zext nneg i32 %i.tt to i64
  %i.tv = shl i64 %.sroa.0431.9, %i.tu
  %i.tw = lshr i64 %i.tv, %i.qz
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.tw ; 3 uses
  %i.ty = load i16, ptr %i.tx, align 2
  store i16 %i.ty, ptr %i.ts, align 1
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tx, i64 2
  %i.ua = load i8, ptr %i.tz, align 2, !tbaa !29
  %i.ub = zext i8 %i.ua to i32
  %i.uc = add i32 %i.to, %i.ub                    ; 3 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tx, i64 3
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !30
  %i.uf = zext i8 %i.ue to i64
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ts, i64 %i.uf ; 2 uses
  %i.uh = icmp ugt i32 %i.uc, 64
  br i1 %i.uh, label %BIT_reloadDStream.exit249.i, label %bb.au, !prof !31, !llvm.loop !0

bb.az:                                            ; preds = %.lr.ph713, %bb.bd
  %.1.i224.i712 = phi ptr [ %.3177.i, %.lr.ph713 ], [ %i.xa, %bb.bd ] ; 5 uses
  %.sroa.116466.6711 = phi ptr [ %.sroa.116466.0, %.lr.ph713 ], [ %.sroa.116466.7, %bb.bd ] ; 5 uses
  %.sroa.36432.9710 = phi i32 [ %.sroa.36432.0, %.lr.ph713 ], [ %i.ww, %bb.bd ] ; 5 uses
  %.sroa.0431.6709 = phi i64 [ %.sroa.0431.0, %.lr.ph713 ], [ %.sroa.0431.7, %bb.bd ]
  %.not.i229.i = icmp ult ptr %.sroa.116466.6711, %i.ac
  br i1 %.not.i229.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ui = lshr i32 %.sroa.36432.9710, 3
  %i.uj = and i32 %.sroa.36432.9710, 7
  br label %BIT_reloadDStream.exit235.i

bb.bb:                                            ; preds = %bb.az
  %i.uk = icmp eq ptr %.sroa.116466.6711, %i.o
  br i1 %i.uk, label %BIT_reloadDStream.exit249.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ul = lshr i32 %.sroa.36432.9710, 3           ; 2 uses
  %i.um = zext nneg i32 %i.ul to i64
  %i.un = sub nsw i64 0, %i.um
  %i.uo = getelementptr inbounds i8, ptr %.sroa.116466.6711, i64 %i.un
  %i.up = icmp uge ptr %i.uo, %i.o                ; 2 uses
  %i.uq = ptrtoint ptr %.sroa.116466.6711 to i64
  %i.ur = sub i64 %i.uq, %i.qq
  %i.us = trunc i64 %i.ur to i32
  %.021.i231.i = select i1 %i.up, i32 %i.ul, i32 %i.us ; 2 uses
  %i.ut = shl i32 %.021.i231.i, 3
  %i.uu = sub i32 %.sroa.36432.9710, %i.ut
  br label %BIT_reloadDStream.exit235.i

BIT_reloadDStream.exit235.i:                      ; preds = %bb.bc, %bb.ba
  %.sroa.36432.10 = phi i32 [ %i.uj, %bb.ba ], [ %i.uu, %bb.bc ] ; 3 uses
  %.pn604.in = phi i32 [ %i.ui, %bb.ba ], [ %.021.i231.i, %bb.bc ]
  %.022.i230.i = phi i1 [ true, %bb.ba ], [ %i.up, %bb.bc ]
  %.pn604 = zext i32 %.pn604.in to i64
  %.pn = sub nsw i64 0, %.pn604
end_hunk_2
begin_hunk_3_@HUF_decompress4X1_usingDTable_internal_bmi2:bb.a
  ]

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !20
  %i.cr = zext i8 %i.cq to i64
  %i.cs = shl nuw nsw i64 %i.cr, 48
  %i.ct = or disjoint i64 %i.cs, %i.co
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cu = phi i64 [ %i.ct, %bb.s ], [ %i.co, %bb.r ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.q, i64 5
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !20
  %i.cx = zext i8 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 40
  %i.cz = add nuw nsw i64 %i.cy, %i.cu
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.da = phi i64 [ %i.cz, %bb.t ], [ %i.co, %bb.r ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !20
  %i.dd = zext i8 %i.dc to i64
  %i.de = shl nuw nsw i64 %i.dd, 32
  %i.df = add nuw nsw i64 %i.de, %i.da
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %i.dg = phi i64 [ %i.df, %bb.u ], [ %i.co, %bb.r ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !20
  %i.dj = zext i8 %i.di to i64
  %i.dk = shl nuw nsw i64 %i.dj, 24
  %i.dl = add nuw nsw i64 %i.dk, %i.dg
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.r
  %i.dm = phi i64 [ %i.dl, %bb.v ], [ %i.co, %bb.r ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !20
  %i.dp = zext i8 %i.do to i64
  %i.dq = shl nuw nsw i64 %i.dp, 16
  %i.dr = add nuw nsw i64 %i.dq, %i.dm
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.r
  %i.ds = phi i64 [ %i.dr, %bb.w ], [ %i.co, %bb.r ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !20
  %i.dv = zext i8 %i.du to i64
  %i.dw = shl nuw nsw i64 %i.dv, 8
  %i.dx = add nuw nsw i64 %i.dw, %i.ds
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.r
  %.sroa.0181.6 = phi i64 [ %i.co, %bb.r ], [ %i.dx, %bb.x ]
  %i.dy = getelementptr i8, ptr %i.r, i64 -1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !20  ; 2 uses
  %.not.i88 = icmp eq i8 %i.dz, 0
  br i1 %.not.i88, label %BIT_initDStream.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ea = zext i8 %i.dz to i32
  %i.eb = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.ea, i1 true)
  %i.ec = shl nuw nsw i16 %.val85, 3
  %i.ed = zext nneg i16 %i.ec to i32
  %reass.sub483 = sub nsw i32 %i.eb, %i.ed
  %i.ee = add nsw i32 %reass.sub483, 41
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.thread.i92
  %.sroa.0181.7 = phi i64 [ %.sroa.0181.6, %bb.z ], [ %.val.i90, %.thread.i92 ] ; 2 uses
  %.sroa.25182.7 = phi i32 [ %i.ee, %bb.z ], [ %i.cm, %.thread.i92 ] ; 2 uses
  %.sroa.69200.6 = phi ptr [ %i.q, %bb.z ], [ %i.ci, %.thread.i92 ] ; 2 uses
  %i.ef = icmp eq i16 %.val84, 0
  br i1 %i.ef, label %BIT_initDStream.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eg = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.eh = icmp ugt i16 %.val84, 7
  br i1 %i.eh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ei = getelementptr i8, ptr %i.s, i64 -1
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !20  ; 2 uses
  %.not51.i97 = icmp eq i8 %i.ej, 0
  br i1 %.not51.i97, label %BIT_initDStream.exit.thread, label %.thread.i98

.thread.i98:                                      ; preds = %bb.ac
  %i.ek = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 2 uses
  %.val.i96 = load i64, ptr %i.ek, align 1, !tbaa !26
  %i.el = zext i8 %i.ej to i32
  %i.em = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.el, i1 true)
  %i.en = xor i32 %i.em, 31
  %i.eo = sub nuw nsw i32 8, %i.en
  br label %bb.am

bb.ad:                                            ; preds = %bb.ab
  %i.ep = load i8, ptr %i.r, align 1, !tbaa !20
  %i.eq = zext i8 %i.ep to i64                    ; 7 uses
  switch i16 %.val84, label %bb.ak [
    i16 7, label %bb.ae
    i16 6, label %bb.af
    i16 5, label %bb.ag
    i16 4, label %bb.ah
    i16 3, label %bb.ai
    i16 2, label %bb.aj
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.er = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  %i.es = load i8, ptr %i.er, align 1, !tbaa !20
  %i.et = zext i8 %i.es to i64
  %i.eu = shl nuw nsw i64 %i.et, 48
  %i.ev = or disjoint i64 %i.eu, %i.eq
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ew = phi i64 [ %i.ev, %bb.ae ], [ %i.eq, %bb.ad ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !20
  %i.ez = zext i8 %i.ey to i64
  %i.fa = shl nuw nsw i64 %i.ez, 40
  %i.fb = add nuw nsw i64 %i.fa, %i.ew
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %i.fc = phi i64 [ %i.fb, %bb.af ], [ %i.eq, %bb.ad ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !20
  %i.ff = zext i8 %i.fe to i64
  %i.fg = shl nuw nsw i64 %i.ff, 32
  %i.fh = add nuw nsw i64 %i.fg, %i.fc
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad
  %i.fi = phi i64 [ %i.fh, %bb.ag ], [ %i.eq, %bb.ad ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !20
  %i.fl = zext i8 %i.fk to i64
  %i.fm = shl nuw nsw i64 %i.fl, 24
  %i.fn = add nuw nsw i64 %i.fm, %i.fi
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ad
  %i.fo = phi i64 [ %i.fn, %bb.ah ], [ %i.eq, %bb.ad ]
  %i.fp = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !20
  %i.fr = zext i8 %i.fq to i64
  %i.fs = shl nuw nsw i64 %i.fr, 16
  %i.ft = add nuw nsw i64 %i.fs, %i.fo
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ad
  %i.fu = phi i64 [ %i.ft, %bb.ai ], [ %i.eq, %bb.ad ]
  %i.fv = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !20
  %i.fx = zext i8 %i.fw to i64
  %i.fy = shl nuw nsw i64 %i.fx, 8
  %i.fz = add nuw nsw i64 %i.fy, %i.fu
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ad
  %.sroa.0.6 = phi i64 [ %i.eq, %bb.ad ], [ %i.fz, %bb.aj ]
  %i.ga = getelementptr i8, ptr %i.s, i64 -1
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !20  ; 2 uses
  %.not.i94 = icmp eq i8 %i.gb, 0
  br i1 %.not.i94, label %BIT_initDStream.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gc = zext i8 %i.gb to i32
  %i.gd = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.gc, i1 true)
  %i.ge = shl nuw nsw i16 %.val84, 3
  %i.gf = zext nneg i16 %i.ge to i32
  %reass.sub484 = sub nsw i32 %i.gd, %i.gf
  %i.gg = add nsw i32 %reass.sub484, 41
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.thread.i98
  %.sroa.0.7 = phi i64 [ %.sroa.0.6, %bb.al ], [ %.val.i96, %.thread.i98 ] ; 2 uses
  %.sroa.25.7 = phi i32 [ %i.gg, %bb.al ], [ %i.eo, %.thread.i98 ] ; 2 uses
  %.sroa.69136.6 = phi ptr [ %i.r, %bb.al ], [ %i.ek, %.thread.i98 ] ; 2 uses
  %i.gh = call fastcc i64 @BIT_initDStream(ptr noundef %5, ptr noundef nonnull %i.s, i64 noundef %i.o) ; 2 uses
  %i.gi = icmp ult i64 %i.gh, -119
  br i1 %i.gi, label %bb.an, label %BIT_initDStream.exit.thread

bb.an:                                            ; preds = %bb.am
  %.neg.i = mul i64 %i.u, -3
  %gepdiff.i = add i64 %.neg.i, %1
  %i.gj = icmp ugt i64 %gepdiff.i, 7
  %.not485 = icmp ult ptr %i.x, %i.e
  %or.cond = select i1 %i.gj, i1 %.not485, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.an
  %.promoted = load i64, ptr %5, align 8
  %i.gk = sub nsw i32 0, %.sroa.3.0.extract.shift.i
  %i.gl = and i32 %i.gk, 63
  %i.gm = zext nneg i32 %i.gl to i64              ; 16 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !43
  %.promoted408 = load i32, ptr %i.gn, align 8, !tbaa !44
  %.promoted411 = load ptr, ptr %i.go, align 8, !tbaa !45
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph, %BIT_reloadDStreamFast.exit108
  %i.gr = phi ptr [ %.promoted411, %.lr.ph ], [ %i.oi, %BIT_reloadDStreamFast.exit108 ] ; 2 uses
  %.val37410 = phi i32 [ %.promoted408, %.lr.ph ], [ %i.oj, %BIT_reloadDStreamFast.exit108 ] ; 2 uses
  %.0146.i395 = phi ptr [ %i.x, %.lr.ph ], [ %i.nl, %BIT_reloadDStreamFast.exit108 ] ; 5 uses
  %.0150.i394 = phi ptr [ %i.w, %.lr.ph ], [ %i.na, %BIT_reloadDStreamFast.exit108 ] ; 5 uses
  %.0154.i393 = phi ptr [ %i.v, %.lr.ph ], [ %i.mp, %BIT_reloadDStreamFast.exit108 ] ; 5 uses
  %.0158.i392 = phi ptr [ %0, %.lr.ph ], [ %i.me, %BIT_reloadDStreamFast.exit108 ] ; 5 uses
  %.sroa.69136.5391 = phi ptr [ %.sroa.69136.6, %.lr.ph ], [ %.sroa.69136.7, %BIT_reloadDStreamFast.exit108 ] ; 3 uses
  %.sroa.25.6390 = phi i32 [ %.sroa.25.7, %.lr.ph ], [ %.sroa.25.8, %BIT_reloadDStreamFast.exit108 ] ; 2 uses
  %.sroa.0.5389 = phi i64 [ %.sroa.0.7, %.lr.ph ], [ %.sroa.0.8, %BIT_reloadDStreamFast.exit108 ] ; 5 uses
  %.sroa.69200.5388 = phi ptr [ %.sroa.69200.6, %.lr.ph ], [ %.sroa.69200.7, %BIT_reloadDStreamFast.exit108 ] ; 3 uses
  %.sroa.25182.6387 = phi i32 [ %.sroa.25182.7, %.lr.ph ], [ %.sroa.25182.8, %BIT_reloadDStreamFast.exit108 ] ; 2 uses
  %.sroa.0181.5386 = phi i64 [ %.sroa.0181.7, %.lr.ph ], [ %.sroa.0181.8, %BIT_reloadDStreamFast.exit108 ] ; 5 uses
  %.sroa.69266.5385 = phi ptr [ %.sroa.69266.6, %.lr.ph ], [ %.sroa.69266.7, %BIT_reloadDStreamFast.exit108 ] ; 3 uses
  %.sroa.25248.6384 = phi i32 [ %.sroa.25248.7, %.lr.ph ], [ %.sroa.25248.8, %BIT_reloadDStreamFast.exit108 ] ; 2 uses
  %.sroa.0247.5383 = phi i64 [ %.sroa.0247.7, %.lr.ph ], [ %.sroa.0247.8, %BIT_reloadDStreamFast.exit108 ] ; 5 uses
  %.val.i.i106381382 = phi i64 [ %.promoted, %.lr.ph ], [ %.val.i.i106, %BIT_reloadDStreamFast.exit108 ] ; 4 uses
  %i.gs = and i32 %.sroa.25248.6384, 63
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = shl i64 %.sroa.0247.5383, %i.gt
  %i.gv = lshr i64 %i.gu, %i.gm
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.gv ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 1
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !37
  %i.gz = load i8, ptr %i.gw, align 1, !tbaa !38
  %i.ha = zext i8 %i.gz to i32
  %i.hb = add i32 %.sroa.25248.6384, %i.ha        ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.0158.i392, i64 1
  store i8 %i.gy, ptr %.0158.i392, align 1, !tbaa !20
  %i.hd = and i32 %.sroa.25182.6387, 63
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = shl i64 %.sroa.0181.5386, %i.he
  %i.hg = lshr i64 %i.hf, %i.gm
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.hg ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 1
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !37
  %i.hk = load i8, ptr %i.hh, align 1, !tbaa !38
  %i.hl = zext i8 %i.hk to i32
  %i.hm = add i32 %.sroa.25182.6387, %i.hl        ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.0154.i393, i64 1
  store i8 %i.hj, ptr %.0154.i393, align 1, !tbaa !20
  %i.ho = and i32 %.sroa.25.6390, 63
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = shl i64 %.sroa.0.5389, %i.hp
  %i.hr = lshr i64 %i.hq, %i.gm
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.hr ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 1
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !37
  %i.hv = load i8, ptr %i.hs, align 1, !tbaa !38
  %i.hw = zext i8 %i.hv to i32
  %i.hx = add i32 %.sroa.25.6390, %i.hw           ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.0150.i394, i64 1
  store i8 %i.hu, ptr %.0150.i394, align 1, !tbaa !20
  %i.hz = and i32 %.val37410, 63
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = shl i64 %.val.i.i106381382, %i.ia
  %i.ic = lshr i64 %i.ib, %i.gm
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ic ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 1
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !37
  %i.ig = load i8, ptr %i.id, align 1, !tbaa !38
  %i.ih = zext i8 %i.ig to i32
  %i.ii = add i32 %.val37410, %i.ih               ; 2 uses
  store i8 %i.if, ptr %.0146.i395, align 1, !tbaa !20
  %i.ij = getelementptr inbounds nuw i8, ptr %.0146.i395, i64 1
  %i.ik = and i32 %i.hb, 63
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = shl i64 %.sroa.0247.5383, %i.il
  %i.in = lshr i64 %i.im, %i.gm
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.in ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 1
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !37
  %i.ir = load i8, ptr %i.io, align 1, !tbaa !38
  %i.is = zext i8 %i.ir to i32
  %i.it = add i32 %i.hb, %i.is                    ; 2 uses
  store i8 %i.iq, ptr %i.hc, align 1, !tbaa !20
  %i.iu = and i32 %i.hm, 63
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = shl i64 %.sroa.0181.5386, %i.iv
  %i.ix = lshr i64 %i.iw, %i.gm
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ix ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 1
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !37
  %i.jb = load i8, ptr %i.iy, align 1, !tbaa !38
  %i.jc = zext i8 %i.jb to i32
  %i.jd = add i32 %i.hm, %i.jc                    ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.0154.i393, i64 2
  store i8 %i.ja, ptr %i.hn, align 1, !tbaa !20
  %i.jf = and i32 %i.hx, 63
  %i.jg = zext nneg i32 %i.jf to i64
  %i.jh = shl i64 %.sroa.0.5389, %i.jg
  %i.ji = lshr i64 %i.jh, %i.gm
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ji ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 1
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !37
  %i.jm = load i8, ptr %i.jj, align 1, !tbaa !38
  %i.jn = zext i8 %i.jm to i32
  %i.jo = add i32 %i.hx, %i.jn                    ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.0150.i394, i64 2
  store i8 %i.jl, ptr %i.hy, align 1, !tbaa !20
  %i.jq = and i32 %i.ii, 63
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = shl i64 %.val.i.i106381382, %i.jr
  %i.jt = lshr i64 %i.js, %i.gm
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.jt ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 1
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !37
  %i.jx = load i8, ptr %i.ju, align 1, !tbaa !38
  %i.jy = zext i8 %i.jx to i32
  %i.jz = add i32 %i.ii, %i.jy                    ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.0146.i395, i64 2
  store i8 %i.jw, ptr %i.ij, align 1, !tbaa !20
  %i.kb = getelementptr inbounds nuw i8, ptr %.0158.i392, i64 2
  %i.kc = and i32 %i.it, 63
  %i.kd = zext nneg i32 %i.kc to i64
  %i.ke = shl i64 %.sroa.0247.5383, %i.kd
  %i.kf = lshr i64 %i.ke, %i.gm
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.kf ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 1
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !37
  %i.kj = load i8, ptr %i.kg, align 1, !tbaa !38
  %i.kk = zext i8 %i.kj to i32
  %i.kl = add i32 %i.it, %i.kk                    ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.0158.i392, i64 3
  store i8 %i.ki, ptr %i.kb, align 1, !tbaa !20
  %i.kn = and i32 %i.jd, 63
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = shl i64 %.sroa.0181.5386, %i.ko
  %i.kq = lshr i64 %i.kp, %i.gm
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.kq ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 1
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !37
  %i.ku = load i8, ptr %i.kr, align 1, !tbaa !38
  %i.kv = zext i8 %i.ku to i32
  %i.kw = add i32 %i.jd, %i.kv                    ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.0154.i393, i64 3
  store i8 %i.kt, ptr %i.je, align 1, !tbaa !20
  %i.ky = and i32 %i.jo, 63
  %i.kz = zext nneg i32 %i.ky to i64
  %i.la = shl i64 %.sroa.0.5389, %i.kz
  %i.lb = lshr i64 %i.la, %i.gm
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.lb ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 1
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !37
  %i.lf = load i8, ptr %i.lc, align 1, !tbaa !38
  %i.lg = zext i8 %i.lf to i32
  %i.lh = add i32 %i.jo, %i.lg                    ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.0150.i394, i64 3
  store i8 %i.le, ptr %i.jp, align 1, !tbaa !20
  %i.lj = and i32 %i.jz, 63
  %i.lk = zext nneg i32 %i.lj to i64
  %i.ll = shl i64 %.val.i.i106381382, %i.lk
  %i.lm = lshr i64 %i.ll, %i.gm
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.lm ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 1
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !37
  %i.lq = load i8, ptr %i.ln, align 1, !tbaa !38
  %i.lr = zext i8 %i.lq to i32
  %i.ls = add i32 %i.jz, %i.lr                    ; 2 uses
  store i8 %i.lp, ptr %i.ka, align 1, !tbaa !20
  %i.lt = getelementptr inbounds nuw i8, ptr %.0146.i395, i64 3
  %i.lu = and i32 %i.kl, 63
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = shl i64 %.sroa.0247.5383, %i.lv
  %i.lx = lshr i64 %i.lw, %i.gm
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.lx ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 1
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !37
  %i.mb = load i8, ptr %i.ly, align 1, !tbaa !38
  %i.mc = zext i8 %i.mb to i32
  %i.md = add i32 %i.kl, %i.mc                    ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.0158.i392, i64 4 ; 3 uses
  store i8 %i.ma, ptr %i.km, align 1, !tbaa !20
  %i.mf = and i32 %i.kw, 63
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = shl i64 %.sroa.0181.5386, %i.mg
  %i.mi = lshr i64 %i.mh, %i.gm
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.mi ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 1
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !37
  %i.mm = load i8, ptr %i.mj, align 1, !tbaa !38
  %i.mn = zext i8 %i.mm to i32
  %i.mo = add i32 %i.kw, %i.mn                    ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.0154.i393, i64 4 ; 3 uses
  store i8 %i.ml, ptr %i.kx, align 1, !tbaa !20
  %i.mq = and i32 %i.lh, 63
  %i.mr = zext nneg i32 %i.mq to i64
  %i.ms = shl i64 %.sroa.0.5389, %i.mr
  %i.mt = lshr i64 %i.ms, %i.gm
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.mt ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 1
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !37
  %i.mx = load i8, ptr %i.mu, align 1, !tbaa !38
  %i.my = zext i8 %i.mx to i32
  %i.mz = add i32 %i.lh, %i.my                    ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.0150.i394, i64 4 ; 3 uses
  store i8 %i.mw, ptr %i.li, align 1, !tbaa !20
  %i.nb = and i32 %i.ls, 63
  %i.nc = zext nneg i32 %i.nb to i64
  %i.nd = shl i64 %.val.i.i106381382, %i.nc
  %i.ne = lshr i64 %i.nd, %i.gm
  %i.nf = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ne ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 1
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !37
  %i.ni = load i8, ptr %i.nf, align 1, !tbaa !38
  %i.nj = zext i8 %i.ni to i32
  %i.nk = add i32 %i.ls, %i.nj                    ; 3 uses
  store i32 %i.nk, ptr %i.gn, align 8, !tbaa !44
  %i.nl = getelementptr inbounds nuw i8, ptr %.0146.i395, i64 4 ; 4 uses
  store i8 %i.nh, ptr %i.lt, align 1, !tbaa !20
  %i.nm = icmp ult ptr %.sroa.69266.5385, %i.ac   ; 2 uses
  br i1 %i.nm, label %BIT_reloadDStreamFast.exit, label %bb.ap, !prof !46

bb.ap:                                            ; preds = %bb.ao
  %i.nn = lshr i32 %i.md, 3
  %i.no = zext nneg i32 %i.nn to i64
  %i.np = sub nsw i64 0, %i.no
  %i.nq = getelementptr inbounds i8, ptr %.sroa.69266.5385, i64 %i.np ; 2 uses
  %i.nr = and i32 %i.md, 7
  %.val.i.i = load i64, ptr %i.nq, align 1, !tbaa !26
  br label %BIT_reloadDStreamFast.exit

BIT_reloadDStreamFast.exit:                       ; preds = %bb.ao, %bb.ap
  %.sroa.0247.8 = phi i64 [ %.sroa.0247.5383, %bb.ao ], [ %.val.i.i, %bb.ap ] ; 3 uses
  %.sroa.25248.8 = phi i32 [ %i.md, %bb.ao ], [ %i.nr, %bb.ap ] ; 3 uses
  %.sroa.69266.7 = phi ptr [ %.sroa.69266.5385, %bb.ao ], [ %i.nq, %bb.ap ] ; 3 uses
  %i.ns = icmp ult ptr %.sroa.69200.5388, %i.ce
  br i1 %i.ns, label %BIT_reloadDStreamFast.exit102, label %bb.aq, !prof !46

bb.aq:                                            ; preds = %BIT_reloadDStreamFast.exit
  %i.nt = lshr i32 %i.mo, 3
  %i.nu = zext nneg i32 %i.nt to i64
  %i.nv = sub nsw i64 0, %i.nu
  %i.nw = getelementptr inbounds i8, ptr %.sroa.69200.5388, i64 %i.nv ; 2 uses
  %i.nx = and i32 %i.mo, 7
  %.val.i.i100 = load i64, ptr %i.nw, align 1, !tbaa !26
  br label %BIT_reloadDStreamFast.exit102

BIT_reloadDStreamFast.exit102:                    ; preds = %BIT_reloadDStreamFast.exit, %bb.aq
  %.sroa.0181.8 = phi i64 [ %.sroa.0181.5386, %BIT_reloadDStreamFast.exit ], [ %.val.i.i100, %bb.aq ] ; 3 uses
  %.sroa.25182.8 = phi i32 [ %i.mo, %BIT_reloadDStreamFast.exit ], [ %i.nx, %bb.aq ] ; 3 uses
  %.sroa.69200.7 = phi ptr [ %.sroa.69200.5388, %BIT_reloadDStreamFast.exit ], [ %i.nw, %bb.aq ] ; 3 uses
  %.0.i101 = phi i1 [ true, %BIT_reloadDStreamFast.exit ], [ %i.nm, %bb.aq ]
  %i.ny = icmp ult ptr %.sroa.69136.5391, %i.eg
  br i1 %i.ny, label %BIT_reloadDStreamFast.exit105, label %bb.ar, !prof !46

bb.ar:                                            ; preds = %BIT_reloadDStreamFast.exit102
  %i.nz = lshr i32 %i.mz, 3
  %i.oa = zext nneg i32 %i.nz to i64
  %i.ob = sub nsw i64 0, %i.oa
  %i.oc = getelementptr inbounds i8, ptr %.sroa.69136.5391, i64 %i.ob ; 2 uses
  %i.od = and i32 %i.mz, 7
  %.val.i.i103 = load i64, ptr %i.oc, align 1, !tbaa !26
  br label %BIT_reloadDStreamFast.exit105

BIT_reloadDStreamFast.exit105:                    ; preds = %BIT_reloadDStreamFast.exit102, %bb.ar
  %.sroa.0.8 = phi i64 [ %.sroa.0.5389, %BIT_reloadDStreamFast.exit102 ], [ %.val.i.i103, %bb.ar ] ; 3 uses
  %.sroa.25.8 = phi i32 [ %i.mz, %BIT_reloadDStreamFast.exit102 ], [ %i.od, %bb.ar ] ; 3 uses
  %.sroa.69136.7 = phi ptr [ %.sroa.69136.5391, %BIT_reloadDStreamFast.exit102 ], [ %i.oc, %bb.ar ] ; 3 uses
  %.0.i104 = phi i1 [ true, %BIT_reloadDStreamFast.exit102 ], [ %.0.i101, %bb.ar ]
  %i.oe = icmp ult ptr %i.gr, %i.gq
  br i1 %i.oe, label %.loopexit, label %BIT_reloadDStreamFast.exit108, !prof !46

BIT_reloadDStreamFast.exit108:                    ; preds = %BIT_reloadDStreamFast.exit105
  %i.of = lshr i32 %i.nk, 3
  %i.og = zext nneg i32 %i.of to i64
  %i.oh = sub nsw i64 0, %i.og
  %i.oi = getelementptr inbounds i8, ptr %i.gr, i64 %i.oh ; 3 uses
  store ptr %i.oi, ptr %i.go, align 8, !tbaa !45
  %i.oj = and i32 %i.nk, 7                        ; 2 uses
  store i32 %i.oj, ptr %i.gn, align 8, !tbaa !44
  %.val.i.i106 = load i64, ptr %i.oi, align 1, !tbaa !26 ; 2 uses
  store i64 %.val.i.i106, ptr %5, align 8, !tbaa !47
  %i.ok = icmp uge ptr %i.nl, %i.e
  %.not177.i = or i1 %i.ok, %.0.i104
  br i1 %.not177.i, label %.loopexit, label %bb.ao, !llvm.loop !7

.loopexit:                                        ; preds = %BIT_reloadDStreamFast.exit105, %BIT_reloadDStreamFast.exit108, %bb.an
  %.sroa.0247.0 = phi i64 [ %.sroa.0247.7, %bb.an ], [ %.sroa.0247.8, %BIT_reloadDStreamFast.exit108 ], [ %.sroa.0247.8, %BIT_reloadDStreamFast.exit105 ] ; 4 uses
  %.sroa.25248.0 = phi i32 [ %.sroa.25248.7, %bb.an ], [ %.sroa.25248.8, %BIT_reloadDStreamFast.exit108 ], [ %.sroa.25248.8, %BIT_reloadDStreamFast.exit105 ] ; 9 uses
  %.sroa.69266.0 = phi ptr [ %.sroa.69266.6, %bb.an ], [ %.sroa.69266.7, %BIT_reloadDStreamFast.exit108 ], [ %.sroa.69266.7, %BIT_reloadDStreamFast.exit105 ] ; 7 uses
  %.sroa.0181.0 = phi i64 [ %.sroa.0181.7, %bb.an ], [ %.sroa.0181.8, %BIT_reloadDStreamFast.exit108 ], [ %.sroa.0181.8, %BIT_reloadDStreamFast.exit105 ] ; 4 uses
  %.sroa.25182.0 = phi i32 [ %.sroa.25182.7, %bb.an ], [ %.sroa.25182.8, %BIT_reloadDStreamFast.exit108 ], [ %.sroa.25182.8, %BIT_reloadDStreamFast.exit105 ] ; 9 uses
  %.sroa.69200.0 = phi ptr [ %.sroa.69200.6, %bb.an ], [ %.sroa.69200.7, %BIT_reloadDStreamFast.exit108 ], [ %.sroa.69200.7, %BIT_reloadDStreamFast.exit105 ] ; 7 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.7, %bb.an ], [ %.sroa.0.8, %BIT_reloadDStreamFast.exit108 ], [ %.sroa.0.8, %BIT_reloadDStreamFast.exit105 ] ; 4 uses
  %.sroa.25.0 = phi i32 [ %.sroa.25.7, %bb.an ], [ %.sroa.25.8, %BIT_reloadDStreamFast.exit108 ], [ %.sroa.25.8, %BIT_reloadDStreamFast.exit105 ] ; 9 uses
  %.sroa.69136.0 = phi ptr [ %.sroa.69136.6, %bb.an ], [ %.sroa.69136.7, %BIT_reloadDStreamFast.exit108 ], [ %.sroa.69136.7, %BIT_reloadDStreamFast.exit105 ] ; 7 uses
  %.3161.i = phi ptr [ %0, %bb.an ], [ %i.me, %BIT_reloadDStreamFast.exit108 ], [ %i.me, %BIT_reloadDStreamFast.exit105 ] ; 8 uses
  %.3157.i = phi ptr [ %i.v, %bb.an ], [ %i.mp, %BIT_reloadDStreamFast.exit108 ], [ %i.mp, %BIT_reloadDStreamFast.exit105 ] ; 8 uses
  %.3153.i = phi ptr [ %i.w, %bb.an ], [ %i.na, %BIT_reloadDStreamFast.exit108 ], [ %i.na, %BIT_reloadDStreamFast.exit105 ] ; 8 uses
  %.3149.i = phi ptr [ %i.x, %bb.an ], [ %i.nl, %BIT_reloadDStreamFast.exit108 ], [ %i.nl, %BIT_reloadDStreamFast.exit105 ] ; 7 uses
  %i.ol = icmp ugt ptr %.3161.i, %i.v
  %i.om = icmp ugt ptr %.3157.i, %i.w
  %or.cond182.i = select i1 %i.ol, i1 true, i1 %i.om
  %i.on = icmp ugt ptr %.3153.i, %i.x
  %or.cond183.i = select i1 %or.cond182.i, i1 true, i1 %i.on
  br i1 %or.cond183.i, label %BIT_initDStream.exit.thread, label %bb.as

bb.as:                                            ; preds = %.loopexit
  %i.oo = ptrtoint ptr %i.v to i64
  %i.op = ptrtoint ptr %.3161.i to i64
  %i.oq = sub i64 %i.oo, %i.op
  %i.or = icmp sgt i64 %i.oq, 3
  %i.os = icmp ugt i32 %.sroa.25248.0, 64         ; 2 uses
  br i1 %i.or, label %.preheader377, label %bb.ay

.preheader377:                                    ; preds = %bb.as
  br i1 %i.os, label %BIT_reloadDStream.exit.i221.i, label %.lr.ph416, !prof !32

.lr.ph416:                                        ; preds = %.preheader377
  %i.ot = ptrtoint ptr %i.p to i64
  %i.ou = getelementptr inbounds i8, ptr %i.v, i64 -3
  %i.ov = sub nsw i32 0, %.sroa.3.0.extract.shift.i
  %i.ow = and i32 %i.ov, 63
  %i.ox = zext nneg i32 %i.ow to i64              ; 4 uses
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph416, %bb.ax
  %.0.i229.i415 = phi ptr [ %.3161.i, %.lr.ph416 ], [ %i.re, %bb.ax ] ; 8 uses
  %.sroa.69266.3414 = phi ptr [ %.sroa.69266.0, %.lr.ph416 ], [ %.sroa.69266.4, %bb.ax ] ; 5 uses
  %.sroa.25248.4413 = phi i32 [ %.sroa.25248.0, %.lr.ph416 ], [ %i.rd, %bb.ax ] ; 5 uses
  %.sroa.0247.3412 = phi i64 [ %.sroa.0247.0, %.lr.ph416 ], [ %.sroa.0247.4, %bb.ax ]
  %.not.i37.i230.i = icmp ult ptr %.sroa.69266.3414, %i.ac
  br i1 %.not.i37.i230.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.oy = lshr i32 %.sroa.25248.4413, 3
  %i.oz = and i32 %.sroa.25248.4413, 7
  br label %BIT_reloadDStream.exit43.i231.i

bb.av:                                            ; preds = %bb.at
  %i.pa = icmp eq ptr %.sroa.69266.3414, %i.p
  br i1 %i.pa, label %BIT_reloadDStream.exit.i221.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.pb = lshr i32 %.sroa.25248.4413, 3           ; 2 uses
  %i.pc = zext nneg i32 %i.pb to i64
  %i.pd = sub nsw i64 0, %i.pc
  %i.pe = getelementptr inbounds i8, ptr %.sroa.69266.3414, i64 %i.pd
  %i.pf = icmp uge ptr %i.pe, %i.p                ; 2 uses
  %i.pg = ptrtoint ptr %.sroa.69266.3414 to i64
  %i.ph = sub i64 %i.pg, %i.ot
  %i.pi = trunc i64 %i.ph to i32
  %.021.i39.i233.i = select i1 %i.pf, i32 %i.pb, i32 %i.pi ; 2 uses
  %i.pj = shl i32 %.021.i39.i233.i, 3
  %i.pk = sub i32 %.sroa.25248.4413, %i.pj
  br label %BIT_reloadDStream.exit43.i231.i

BIT_reloadDStream.exit43.i231.i:                  ; preds = %bb.aw, %bb.au
  %.sroa.25248.5 = phi i32 [ %i.oz, %bb.au ], [ %i.pk, %bb.aw ] ; 3 uses
  %.pn349.in = phi i32 [ %i.oy, %bb.au ], [ %.021.i39.i233.i, %bb.aw ]
  %.022.i38.i232.i = phi i1 [ true, %bb.au ], [ %i.pf, %bb.aw ]
  %.pn349 = zext i32 %.pn349.in to i64
  %.pn = sub nsw i64 0, %.pn349
  %.sroa.69266.4 = getelementptr inbounds i8, ptr %.sroa.69266.3414, i64 %.pn ; 3 uses
  %.sroa.0247.4 = load i64, ptr %.sroa.69266.4, align 1, !tbaa !26 ; 7 uses
  %i.pl = icmp ult ptr %.0.i229.i415, %i.ou
  %i.pm = and i1 %i.pl, %.022.i38.i232.i
  br i1 %i.pm, label %bb.ax, label %BIT_reloadDStream.exit.i221.i

bb.ax:                                            ; preds = %BIT_reloadDStream.exit43.i231.i
  %i.pn = and i32 %.sroa.25248.5, 63
  %i.po = zext nneg i32 %i.pn to i64
  %i.pp = shl i64 %.sroa.0247.4, %i.po
  %i.pq = lshr i64 %i.pp, %i.ox
  %i.pr = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.pq ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 1
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !37
  %i.pu = load i8, ptr %i.pr, align 1, !tbaa !38
  %i.pv = zext i8 %i.pu to i32
  %i.pw = add i32 %.sroa.25248.5, %i.pv           ; 2 uses
  store i8 %i.pt, ptr %.0.i229.i415, align 1, !tbaa !20
  %i.px = getelementptr inbounds nuw i8, ptr %.0.i229.i415, i64 1
  %i.py = and i32 %i.pw, 63
  %i.pz = zext nneg i32 %i.py to i64
  %i.qa = shl i64 %.sroa.0247.4, %i.pz
  %i.qb = lshr i64 %i.qa, %i.ox
  %i.qc = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.qb ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 1
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !37
  %i.qf = load i8, ptr %i.qc, align 1, !tbaa !38
  %i.qg = zext i8 %i.qf to i32
  %i.qh = add i32 %i.pw, %i.qg                    ; 2 uses
  store i8 %i.qe, ptr %i.px, align 1, !tbaa !20
  %i.qi = getelementptr inbounds nuw i8, ptr %.0.i229.i415, i64 2
  %i.qj = and i32 %i.qh, 63
  %i.qk = zext nneg i32 %i.qj to i64
  %i.ql = shl i64 %.sroa.0247.4, %i.qk
  %i.qm = lshr i64 %i.ql, %i.ox
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.qm ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 1
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !37
  %i.qq = load i8, ptr %i.qn, align 1, !tbaa !38
  %i.qr = zext i8 %i.qq to i32
  %i.qs = add i32 %i.qh, %i.qr                    ; 2 uses
  store i8 %i.qp, ptr %i.qi, align 1, !tbaa !20
  %i.qt = getelementptr inbounds nuw i8, ptr %.0.i229.i415, i64 3
  %i.qu = and i32 %i.qs, 63
  %i.qv = zext nneg i32 %i.qu to i64
  %i.qw = shl i64 %.sroa.0247.4, %i.qv
  %i.qx = lshr i64 %i.qw, %i.ox
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.qx ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 1
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !37
  %i.rb = load i8, ptr %i.qy, align 1, !tbaa !38
  %i.rc = zext i8 %i.rb to i32
  %i.rd = add i32 %i.qs, %i.rc                    ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.0.i229.i415, i64 4 ; 2 uses
  store i8 %i.ra, ptr %i.qt, align 1, !tbaa !20
  %i.rf = icmp ugt i32 %i.rd, 64
  br i1 %i.rf, label %BIT_reloadDStream.exit.i221.i, label %bb.at, !prof !31, !llvm.loop !4

bb.ay:                                            ; preds = %bb.as
  br i1 %i.os, label %BIT_reloadDStream.exit.i221.i, label %bb.az, !prof !46

bb.az:                                            ; preds = %bb.ay
  %.not.i.i220.i = icmp ult ptr %.sroa.69266.0, %i.ac
  br i1 %.not.i.i220.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.rg = lshr i32 %.sroa.25248.0, 3
  %i.rh = zext nneg i32 %i.rg to i64
  %i.ri = sub nsw i64 0, %i.rh
  %i.rj = getelementptr inbounds i8, ptr %.sroa.69266.0, i64 %i.ri ; 2 uses
  %i.rk = and i32 %.sroa.25248.0, 7
  %.val.i110 = load i64, ptr %i.rj, align 1, !tbaa !26
  br label %BIT_reloadDStream.exit.i221.i

bb.bb:                                            ; preds = %bb.az
  %i.rl = icmp eq ptr %.sroa.69266.0, %i.p
  br i1 %i.rl, label %BIT_reloadDStream.exit.i221.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.rm = lshr i32 %.sroa.25248.0, 3              ; 2 uses
  %i.rn = zext nneg i32 %i.rm to i64
  %i.ro = sub nsw i64 0, %i.rn
  %i.rp = getelementptr inbounds i8, ptr %.sroa.69266.0, i64 %i.ro
  %i.rq = icmp ult ptr %i.rp, %i.p
  %i.rr = ptrtoint ptr %.sroa.69266.0 to i64
  %i.rs = ptrtoint ptr %i.p to i64
  %i.rt = sub i64 %i.rr, %i.rs
  %i.ru = trunc i64 %i.rt to i32
  %.021.i.i225.i = select i1 %i.rq, i32 %i.ru, i32 %i.rm ; 2 uses
  %i.rv = zext i32 %.021.i.i225.i to i64
  %i.rw = sub nsw i64 0, %i.rv
  %i.rx = getelementptr inbounds i8, ptr %.sroa.69266.0, i64 %i.rw ; 2 uses
  %i.ry = shl i32 %.021.i.i225.i, 3
  %i.rz = sub i32 %.sroa.25248.0, %i.ry
  %.val5 = load i64, ptr %i.rx, align 1, !tbaa !26
  br label %BIT_reloadDStream.exit.i221.i

BIT_reloadDStream.exit.i221.i:                    ; preds = %BIT_reloadDStream.exit43.i231.i, %bb.ax, %bb.av, %.preheader377, %bb.bb, %bb.ba, %bb.bc, %bb.ay
  %.sroa.0247.2 = phi i64 [ %.val5, %bb.bc ], [ %.sroa.0247.0, %bb.ay ], [ %.val.i110, %bb.ba ], [ %.sroa.0247.0, %bb.bb ], [ %.sroa.0247.0, %.preheader377 ], [ %.sroa.0247.4, %BIT_reloadDStream.exit43.i231.i ], [ %.sroa.0247.4, %bb.ax ], [ %.sroa.0247.3412, %bb.av ] ; 3 uses
  %.sroa.25248.2 = phi i32 [ %i.rz, %bb.bc ], [ %.sroa.25248.0, %bb.ay ], [ %i.rk, %bb.ba ], [ %.sroa.25248.0, %bb.bb ], [ %.sroa.25248.0, %.preheader377 ], [ %.sroa.25248.5, %BIT_reloadDStream.exit43.i231.i ], [ %i.rd, %bb.ax ], [ %.sroa.25248.4413, %bb.av ] ; 4 uses
  %.sroa.69266.2 = phi ptr [ %i.rx, %bb.bc ], [ @BIT_reloadDStream.zeroFilled, %bb.ay ], [ %i.rj, %bb.ba ], [ %i.p, %bb.bb ], [ @BIT_reloadDStream.zeroFilled, %.preheader377 ], [ %.sroa.69266.4, %BIT_reloadDStream.exit43.i231.i ], [ @BIT_reloadDStream.zeroFilled, %bb.ax ], [ %i.p, %bb.av ]
  %.3.i223.i = phi ptr [ %.3161.i, %bb.bc ], [ %.3161.i, %bb.ay ], [ %.3161.i, %bb.ba ], [ %.3161.i, %bb.bb ], [ %.3161.i, %.preheader377 ], [ %.0.i229.i415, %BIT_reloadDStream.exit43.i231.i ], [ %i.re, %bb.ax ], [ %.0.i229.i415, %bb.av ] ; 6 uses
  %i.sa = icmp ult ptr %.3.i223.i, %i.v
  br i1 %i.sa, label %.lr.ph432, label %HUF_decodeStreamX1.exit237.i

.lr.ph432:                                        ; preds = %BIT_reloadDStream.exit.i221.i
  %.3.i223.i494 = ptrtoaddr ptr %.3.i223.i to i64 ; 2 uses
  %i.sb = sub nsw i32 0, %.sroa.3.0.extract.shift.i
  %i.sc = and i32 %i.sb, 63
  %i.sd = zext nneg i32 %i.sc to i64              ; 3 uses
  %i.se = add i64 %i.u, %i.a
  %i.sf = sub i64 %i.se, %.3.i223.i494            ; 2 uses
  %scevgep = getelementptr i8, ptr %.3.i223.i, i64 %i.sf
  %i.sg = add i64 %i.u, %i.a
  %.neg = add i64 %.3.i223.i494, 1
  %xtraiter = and i64 %i.sf, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph432
  %i.sh = and i32 %.sroa.25248.2, 63
  %i.si = zext nneg i32 %i.sh to i64
  %i.sj = shl i64 %.sroa.0247.2, %i.si
  %i.sk = lshr i64 %i.sj, %i.sd
  %i.sl = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.sk ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 1
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !37
  %i.so = load i8, ptr %i.sl, align 1, !tbaa !38
  %i.sp = zext i8 %i.so to i32
  %i.sq = add i32 %.sroa.25248.2, %i.sp           ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.3.i223.i, i64 1
  store i8 %i.sn, ptr %.3.i223.i, align 1, !tbaa !20
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph432
  %.lcssa575.unr.a = phi i32 [ poison, %.lr.ph432 ], [ %i.sq, %.prol.loopexit.unr-lcssa ]
  %.6.i224.i431.unr = phi ptr [ %.3.i223.i, %.lr.ph432 ], [ %i.sr, %.prol.loopexit.unr-lcssa ]
end_hunk_3
