Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 272
loop-unroll.NumUnrolled: 471
begin_hunk_0_@hb_ot_tags_from_script_and_language:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !280 ; 3 uses
  %i.ai = add i8 %i.ah, -48
  %or.cond.i.i = icmp ult i8 %i.ai, 10            ; 2 uses
  %i.aj = and i8 %i.ah, -33
  %i.ak = add i8 %i.aj, -65
  %i.al = icmp ult i8 %i.ak, 6
  %i.am = or i1 %or.cond.i.i, %i.al
  br i1 %i.am, label %bb.n, label %.critedge.thread.i

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 7
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !280 ; 4 uses
  %i.ap = add i8 %i.ao, -48                       ; 2 uses
  %or.cond.i.1.i = icmp ult i8 %i.ap, 10          ; 2 uses
  %i.aq = and i8 %i.ao, -33
  %i.ar = add i8 %i.aq, -65
  %i.as = icmp ult i8 %i.ar, 6
  %i.at = or i1 %or.cond.i.1.i, %i.as
  br i1 %i.at, label %bb.o, label %.critedge.thread.i

bb.o:                                             ; preds = %bb.n
  %i.au = shl i8 %i.ah, 4                         ; 2 uses
  %i.av = add i8 %i.au, -112
  %i.aw = select i1 %or.cond.i.i, i8 %i.au, i8 %i.av
  %i.ax = add i8 %i.ao, -65
  %or.cond.i.i.1.i = icmp ult i8 %i.ax, 26
  %i.ay = select i1 %or.cond.i.i.1.i, i8 -55, i8 -87
  %i.az = add i8 %i.ay, %i.ao
  %i.ba = select i1 %or.cond.i.1.i, i8 %i.ap, i8 %i.az
  %i.bb = add i8 %i.ba, %i.aw
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !280 ; 3 uses
  %i.be = add i8 %i.bd, -48
  %or.cond.i.2.i = icmp ult i8 %i.be, 10          ; 2 uses
  %i.bf = and i8 %i.bd, -33
  %i.bg = add i8 %i.bf, -65
  %i.bh = icmp ult i8 %i.bg, 6
  %i.bi = or i1 %or.cond.i.2.i, %i.bh
  br i1 %i.bi, label %bb.p, label %.critedge.thread.i

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %i.y, i64 9
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !280 ; 4 uses
  %i.bl = add i8 %i.bk, -48                       ; 2 uses
  %or.cond.i.3.i = icmp ult i8 %i.bl, 10          ; 2 uses
  %i.bm = and i8 %i.bk, -33
  %i.bn = add i8 %i.bm, -65
  %i.bo = icmp ult i8 %i.bn, 6
  %i.bp = or i1 %or.cond.i.3.i, %i.bo
  br i1 %i.bp, label %bb.q, label %.critedge.thread.i

bb.q:                                             ; preds = %bb.p
  %i.bq = shl i8 %i.bd, 4                         ; 2 uses
  %i.br = add i8 %i.bq, -112
  %i.bs = select i1 %or.cond.i.2.i, i8 %i.bq, i8 %i.br
  %i.bt = add i8 %i.bk, -65
  %or.cond.i.i.3.i = icmp ult i8 %i.bt, 26
  %i.bu = select i1 %or.cond.i.i.3.i, i8 -55, i8 -87
  %i.bv = add i8 %i.bu, %i.bk
  %i.bw = select i1 %or.cond.i.3.i, i8 %i.bl, i8 %i.bv
  %i.bx = add i8 %i.bw, %i.bs
  %i.by = getelementptr inbounds nuw i8, ptr %i.y, i64 10
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !280 ; 3 uses
  %i.ca = add i8 %i.bz, -48
  %or.cond.i.4.i = icmp ult i8 %i.ca, 10          ; 2 uses
  %i.cb = and i8 %i.bz, -33
  %i.cc = add i8 %i.cb, -65
  %i.cd = icmp ult i8 %i.cc, 6
  %i.ce = or i1 %or.cond.i.4.i, %i.cd
  br i1 %i.ce, label %bb.r, label %.critedge.thread.i

bb.r:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %i.y, i64 11
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !280 ; 4 uses
  %i.ch = add i8 %i.cg, -48                       ; 2 uses
  %or.cond.i.5.i = icmp ult i8 %i.ch, 10          ; 2 uses
  %i.ci = and i8 %i.cg, -33
  %i.cj = add i8 %i.ci, -65
  %i.ck = icmp ult i8 %i.cj, 6
  %i.cl = or i1 %or.cond.i.5.i, %i.ck
  br i1 %i.cl, label %bb.s, label %.critedge.thread.i

bb.s:                                             ; preds = %bb.r
  %i.cm = shl i8 %i.bz, 4                         ; 2 uses
  %i.cn = add i8 %i.cm, -112
  %i.co = select i1 %or.cond.i.4.i, i8 %i.cm, i8 %i.cn
  %i.cp = add i8 %i.cg, -65
  %or.cond.i.i.5.i = icmp ult i8 %i.cp, 26
  %i.cq = select i1 %or.cond.i.i.5.i, i8 -55, i8 -87
  %i.cr = add i8 %i.cq, %i.cg
  %i.cs = select i1 %or.cond.i.5.i, i8 %i.ch, i8 %i.cr
  %i.ct = add i8 %i.cs, %i.co
  %i.cu = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !280 ; 3 uses
  %i.cw = add i8 %i.cv, -48
  %or.cond.i.6.i = icmp ult i8 %i.cw, 10          ; 2 uses
  %i.cx = and i8 %i.cv, -33
  %i.cy = add i8 %i.cx, -65
  %i.cz = icmp ult i8 %i.cy, 6
  %i.da = or i1 %or.cond.i.6.i, %i.cz
  br i1 %i.da, label %bb.t, label %.critedge.thread.i

bb.t:                                             ; preds = %bb.s
  %i.db = getelementptr inbounds nuw i8, ptr %i.y, i64 13
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !280 ; 4 uses
  %i.dd = add i8 %i.dc, -48                       ; 2 uses
  %or.cond.i.7.i = icmp ult i8 %i.dd, 10          ; 2 uses
  %i.de = and i8 %i.dc, -33
  %i.df = add i8 %i.de, -65
  %i.dg = icmp ult i8 %i.df, 6
  %i.dh = or i1 %or.cond.i.7.i, %i.dg
  br i1 %i.dh, label %.critedge.i.a, label %.critedge.thread.i

.critedge.i.a:                                    ; preds = %bb.t
  %i.di = shl i8 %i.cv, 4                         ; 2 uses
  %i.dj = add i8 %i.di, -112
  %i.dk = select i1 %or.cond.i.6.i, i8 %i.di, i8 %i.dj
  %i.dl = add i8 %i.dc, -65
  %or.cond.i.i.7.i = icmp ult i8 %i.dl, 26
  %i.dm = select i1 %or.cond.i.i.7.i, i8 -55, i8 -87
  %i.dn = add i8 %i.dm, %i.dc
  %i.do = select i1 %or.cond.i.7.i, i8 %i.dd, i8 %i.dn
  %i.dp = add i8 %i.do, %i.dk
  br label %.loopexit.i

.preheader58.1.i:                                 ; preds = %.preheader58.preheader.i
  %i.dq = add i8 %i.aa, -65
  %or.cond.i112 = icmp ult i8 %i.dq, 26
  %i.dr = add nuw nsw i8 %i.aa, 32
  %i.ds = select i1 %or.cond.i112, i8 %i.dr, i8 %i.aa ; 2 uses
  store i8 %i.ds, ptr %i.b, align 1, !tbaa !280
  %i.dt = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !280 ; 5 uses
  %i.dv = and i8 %i.du, -33
  %i.dw = add i8 %i.dv, -65
  %or.cond11.i.1.i = icmp ult i8 %i.dw, 26
  %i.dx = add i8 %i.du, -48
  %i.dy = icmp ult i8 %i.dx, 10
  %i.dz = or i1 %i.dy, %or.cond11.i.1.i
  br i1 %i.dz, label %.preheader58.2.i, label %.lr.ph.preheader.i

.preheader58.2.i:                                 ; preds = %.preheader58.1.i
  %i.ea = add i8 %i.du, -65
  %or.cond.i111 = icmp ult i8 %i.ea, 26
  %i.eb = add nuw nsw i8 %i.du, 32
  %i.ec = select i1 %or.cond.i111, i8 %i.eb, i8 %i.du ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !280
  %i.ee = getelementptr inbounds nuw i8, ptr %i.y, i64 7
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !280 ; 5 uses
  %i.eg = and i8 %i.ef, -33
  %i.eh = add i8 %i.eg, -65
  %or.cond11.i.2.i = icmp ult i8 %i.eh, 26
  %i.ei = add i8 %i.ef, -48
  %i.ej = icmp ult i8 %i.ei, 10
  %i.ek = or i1 %i.ej, %or.cond11.i.2.i
  br i1 %i.ek, label %.preheader58.3.i, label %.lr.ph.preheader.i

.preheader58.3.i:                                 ; preds = %.preheader58.2.i
  %i.el = add i8 %i.ef, -65
  %or.cond.i110 = icmp ult i8 %i.el, 26
  %i.em = add nuw nsw i8 %i.ef, 32
  %i.en = select i1 %or.cond.i110, i8 %i.em, i8 %i.ef ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !280
  %i.ep = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !280 ; 5 uses
  %i.er = and i8 %i.eq, -33
  %i.es = add i8 %i.er, -65
  %or.cond11.i.3.i = icmp ult i8 %i.es, 26
  %i.et = add i8 %i.eq, -48
  %i.eu = icmp ult i8 %i.et, 10
  %i.ev = or i1 %i.eu, %or.cond11.i.3.i
  br i1 %i.ev, label %.preheader.i, label %.lr.ph.preheader.i

.preheader.i:                                     ; preds = %.preheader58.3.i
  %i.ew = add i8 %i.eq, -65
  %or.cond.i109 = icmp ult i8 %i.ew, 26
  %i.ex = add nuw nsw i8 %i.eq, 32
  %i.ey = select i1 %or.cond.i109, i8 %i.ex, i8 %i.eq
  br label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %.preheader58.3.i, %.preheader58.2.i, %.preheader58.1.i
  %.1.lcssa.ph.ph.i = phi i32 [ 1, %.preheader58.1.i ], [ 3, %.preheader58.3.i ], [ 2, %.preheader58.2.i ] ; 2 uses
  %i.ez = zext nneg i32 %.1.lcssa.ph.ph.i to i64
  %scevgep.i = getelementptr i8, ptr %i.b, i64 %i.ez
  %narrow.i = sub nuw nsw i32 4, %.1.lcssa.ph.ph.i
  %i.fa = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i, i8 32, i64 %i.fa, i1 false), !tbaa !280
  %.pre.i = load i8, ptr %i.b, align 1, !tbaa !280
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.pre130 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !280
  %.phi.trans.insert131 = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.pre132 = load i8, ptr %.phi.trans.insert131, align 1, !tbaa !280
  %.phi.trans.insert133 = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %.pre134 = load i8, ptr %.phi.trans.insert133, align 1, !tbaa !280
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.preheader.i, %.preheader.i, %.critedge.i.a
  %i.fb = phi i8 [ %.pre134, %.lr.ph.preheader.i ], [ %i.ey, %.preheader.i ], [ %i.dp, %.critedge.i.a ]
  %i.fc = phi i8 [ %.pre132, %.lr.ph.preheader.i ], [ %i.en, %.preheader.i ], [ %i.ct, %.critedge.i.a ]
  %i.fd = phi i8 [ %.pre130, %.lr.ph.preheader.i ], [ %i.ec, %.preheader.i ], [ %i.bx, %.critedge.i.a ]
  %i.fe = phi i8 [ %.pre.i, %.lr.ph.preheader.i ], [ %i.ds, %.preheader.i ], [ %i.bb, %.critedge.i.a ]
  %i.ff = zext i8 %i.fe to i32
  %i.fg = shl nuw i32 %i.ff, 24
  %i.fh = zext i8 %i.fd to i32
  %i.fi = shl nuw nsw i32 %i.fh, 16
  %i.fj = or disjoint i32 %i.fi, %i.fg
  %i.fk = zext i8 %i.fc to i32
  %i.fl = shl nuw nsw i32 %i.fk, 8
  %i.fm = or disjoint i32 %i.fj, %i.fl
  %i.fn = zext i8 %i.fb to i32
  %i.fo = or disjoint i32 %i.fm, %i.fn            ; 3 uses
  %i.fp = and i32 %i.fo, -538976289
  %i.fq = icmp eq i32 %i.fp, 1145457748
  %i.fr = xor i32 %i.fo, 538976288
  %spec.select.i = select i1 %i.fq, i32 %i.fr, i32 %i.fo
  store i32 %spec.select.i, ptr %3, align 4, !tbaa !324
  store i32 1, ptr %2, align 4, !tbaa !324
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.loopexit.i, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %.preheader58.preheader.i
  %i.fs = phi i1 [ false, %.loopexit.i ], [ true, %.preheader58.preheader.i ], [ true, %bb.t ], [ true, %bb.s ], [ true, %bb.r ], [ true, %bb.q ], [ true, %bb.p ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  br label %_ZL24parse_private_use_subtagPKcPjS1_S0_PFhhE.exit

_ZL24parse_private_use_subtagPKcPjS1_S0_PFhhE.exit: ; preds = %bb.i, %bb.j, %bb.k, %.critedge.thread.i
  %.3.i = phi i1 [ true, %bb.i ], [ true, %bb.j ], [ %i.fs, %.critedge.thread.i ], [ true, %bb.k ] ; 3 uses
  %i.ft = icmp ne ptr %4, null                    ; 2 uses
  %or.cond.i70 = and i1 %i.ft, %i.t
  %i.fu = icmp ne ptr %5, null                    ; 2 uses
  %or.cond3.i71 = and i1 %i.fu, %or.cond.i70
  br i1 %or.cond3.i71, label %bb.u, label %_ZL24parse_private_use_subtagPKcPjS1_S0_PFhhE.exit107

bb.u:                                             ; preds = %_ZL24parse_private_use_subtagPKcPjS1_S0_PFhhE.exit
  %i.fv = load i32, ptr %4, align 4, !tbaa !324
  %.not.i73 = icmp eq i32 %i.fv, 0
  br i1 %.not.i73, label %_ZL24parse_private_use_subtagPKcPjS1_S0_PFhhE.exit107, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fw = tail call noundef ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %.1, ptr noundef nonnull dereferenceable(1) @.str.45) #68 ; 13 uses
  %.not53.i74 = icmp eq ptr %i.fw, null
  br i1 %.not53.i74, label %_ZL24parse_private_use_subtagPKcPjS1_S0_PFhhE.exit107, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 5
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !280 ; 6 uses
  %i.fz = icmp eq i8 %i.fy, 45
  br i1 %i.fz, label %bb.x, label %.preheader58.preheader.i75

.preheader58.preheader.i75:                       ; preds = %bb.w
  %i.ga = and i8 %i.fy, -33
  %i.gb = add i8 %i.ga, -91
  %or.cond11.i.i76 = icmp ult i8 %i.gb, -26
  %i.gc = add i8 %i.fy, -58
  %i.gd = icmp ult i8 %i.gc, -10
  %.not72.i77 = and i1 %i.gd, %or.cond11.i.i76
  br i1 %.not72.i77, label %.critedge.thread.i87, label %.preheader58.1.i78

bb.x:                                             ; preds = %bb.w
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fw, i64 6
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !280 ; 3 uses
  %i.gg = add i8 %i.gf, -48
  %or.cond.i.i94 = icmp ult i8 %i.gg, 10          ; 2 uses
  %i.gh = and i8 %i.gf, -33
  %i.gi = add i8 %i.gh, -65
  %i.gj = icmp ult i8 %i.gi, 6
  %i.gk = or i1 %or.cond.i.i94, %i.gj
  br i1 %i.gk, label %bb.y, label %.critedge.thread.i87

bb.y:                                             ; preds = %bb.x
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fw, i64 7
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !280 ; 4 uses
  %i.gn = add i8 %i.gm, -48                       ; 2 uses
  %or.cond.i.1.i95 = icmp ult i8 %i.gn, 10        ; 2 uses
  %i.go = and i8 %i.gm, -33
  %i.gp = add i8 %i.go, -65
  %i.gq = icmp ult i8 %i.gp, 6
  %i.gr = or i1 %or.cond.i.1.i95, %i.gq
  br i1 %i.gr, label %bb.z, label %.critedge.thread.i87

bb.z:                                             ; preds = %bb.y
  %i.gs = shl i8 %i.gf, 4                         ; 2 uses
  %i.gt = add i8 %i.gs, -112
  %i.gu = select i1 %or.cond.i.i94, i8 %i.gs, i8 %i.gt
  %i.gv = add i8 %i.gm, -65
  %or.cond.i.i.1.i96 = icmp ult i8 %i.gv, 26
  %i.gw = select i1 %or.cond.i.i.1.i96, i8 -55, i8 -87
  %i.gx = add i8 %i.gw, %i.gm
  %i.gy = select i1 %or.cond.i.1.i95, i8 %i.gn, i8 %i.gx
  %i.gz = add i8 %i.gy, %i.gu
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !280 ; 3 uses
  %i.hc = add i8 %i.hb, -48
  %or.cond.i.2.i97 = icmp ult i8 %i.hc, 10        ; 2 uses
  %i.hd = and i8 %i.hb, -33
  %i.he = add i8 %i.hd, -65
  %i.hf = icmp ult i8 %i.he, 6
  %i.hg = or i1 %or.cond.i.2.i97, %i.hf
  br i1 %i.hg, label %bb.aa, label %.critedge.thread.i87

bb.aa:                                            ; preds = %bb.z
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fw, i64 9
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !280 ; 4 uses
  %i.hj = add i8 %i.hi, -48                       ; 2 uses
  %or.cond.i.3.i98 = icmp ult i8 %i.hj, 10        ; 2 uses
  %i.hk = and i8 %i.hi, -33
  %i.hl = add i8 %i.hk, -65
  %i.hm = icmp ult i8 %i.hl, 6
  %i.hn = or i1 %or.cond.i.3.i98, %i.hm
  br i1 %i.hn, label %bb.ab, label %.critedge.thread.i87

bb.ab:                                            ; preds = %bb.aa
  %i.ho = shl i8 %i.hb, 4                         ; 2 uses
  %i.hp = add i8 %i.ho, -112
  %i.hq = select i1 %or.cond.i.2.i97, i8 %i.ho, i8 %i.hp
  %i.hr = add i8 %i.hi, -65
  %or.cond.i.i.3.i99 = icmp ult i8 %i.hr, 26
  %i.hs = select i1 %or.cond.i.i.3.i99, i8 -55, i8 -87
  %i.ht = add i8 %i.hs, %i.hi
  %i.hu = select i1 %or.cond.i.3.i98, i8 %i.hj, i8 %i.ht
  %i.hv = add i8 %i.hu, %i.hq
  %i.hw = getelementptr inbounds nuw i8, ptr %i.fw, i64 10
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !280 ; 3 uses
  %i.hy = add i8 %i.hx, -48
  %or.cond.i.4.i100 = icmp ult i8 %i.hy, 10       ; 2 uses
  %i.hz = and i8 %i.hx, -33
  %i.ia = add i8 %i.hz, -65
  %i.ib = icmp ult i8 %i.ia, 6
  %i.ic = or i1 %or.cond.i.4.i100, %i.ib
  br i1 %i.ic, label %bb.ac, label %.critedge.thread.i87

bb.ac:                                            ; preds = %bb.ab
  %i.id = getelementptr inbounds nuw i8, ptr %i.fw, i64 11
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !280 ; 4 uses
  %i.if = add i8 %i.ie, -48                       ; 2 uses
  %or.cond.i.5.i101 = icmp ult i8 %i.if, 10       ; 2 uses
  %i.ig = and i8 %i.ie, -33
  %i.ih = add i8 %i.ig, -65
  %i.ii = icmp ult i8 %i.ih, 6
  %i.ij = or i1 %or.cond.i.5.i101, %i.ii
  br i1 %i.ij, label %bb.ad, label %.critedge.thread.i87

bb.ad:                                            ; preds = %bb.ac
  %i.ik = shl i8 %i.hx, 4                         ; 2 uses
  %i.il = add i8 %i.ik, -112
  %i.im = select i1 %or.cond.i.4.i100, i8 %i.ik, i8 %i.il
  %i.in = add i8 %i.ie, -65
  %or.cond.i.i.5.i102 = icmp ult i8 %i.in, 26
  %i.io = select i1 %or.cond.i.i.5.i102, i8 -55, i8 -87
  %i.ip = add i8 %i.io, %i.ie
  %i.iq = select i1 %or.cond.i.5.i101, i8 %i.if, i8 %i.ip
  %i.ir = add i8 %i.iq, %i.im
  %i.is = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  %i.it = load i8, ptr %i.is, align 1, !tbaa !280 ; 3 uses
  %i.iu = add i8 %i.it, -48
  %or.cond.i.6.i103 = icmp ult i8 %i.iu, 10       ; 2 uses
  %i.iv = and i8 %i.it, -33
  %i.iw = add i8 %i.iv, -65
  %i.ix = icmp ult i8 %i.iw, 6
  %i.iy = or i1 %or.cond.i.6.i103, %i.ix
  br i1 %i.iy, label %bb.ae, label %.critedge.thread.i87

bb.ae:                                            ; preds = %bb.ad
  %i.iz = getelementptr inbounds nuw i8, ptr %i.fw, i64 13
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !280 ; 4 uses
  %i.jb = add i8 %i.ja, -48                       ; 2 uses
  %or.cond.i.7.i104 = icmp ult i8 %i.jb, 10       ; 2 uses
  %i.jc = and i8 %i.ja, -33
  %i.jd = add i8 %i.jc, -65
  %i.je = icmp ult i8 %i.jd, 6
  %i.jf = or i1 %or.cond.i.7.i104, %i.je
  br i1 %i.jf, label %.critedge.i105, label %.critedge.thread.i87

.critedge.i105:                                   ; preds = %bb.ae
  %i.jg = shl i8 %i.it, 4                         ; 2 uses
  %i.jh = add i8 %i.jg, -112
  %i.ji = select i1 %or.cond.i.6.i103, i8 %i.jg, i8 %i.jh
  %i.jj = add i8 %i.ja, -65
  %or.cond.i.i.7.i106 = icmp ult i8 %i.jj, 26
  %i.jk = select i1 %or.cond.i.i.7.i106, i8 -55, i8 -87
  %i.jl = add i8 %i.jk, %i.ja
  %i.jm = select i1 %or.cond.i.7.i104, i8 %i.jb, i8 %i.jl
  %i.jn = add i8 %i.jm, %i.ji
  br label %.loopexit.i85

.preheader58.1.i78:                               ; preds = %.preheader58.preheader.i75
  %i.jo = add i8 %i.fy, -97
  %or.cond.i116 = icmp ult i8 %i.jo, 26
  %i.jp = add nsw i8 %i.fy, -32
  %i.jq = select i1 %or.cond.i116, i8 %i.jp, i8 %i.fy ; 2 uses
  store i8 %i.jq, ptr %i.a, align 1, !tbaa !280
  %i.jr = getelementptr inbounds nuw i8, ptr %i.fw, i64 6
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !280 ; 5 uses
  %i.jt = and i8 %i.js, -33
  %i.ju = add i8 %i.jt, -65
  %or.cond11.i.1.i79 = icmp ult i8 %i.ju, 26
  %i.jv = add i8 %i.js, -48
  %i.jw = icmp ult i8 %i.jv, 10
  %i.jx = or i1 %i.jw, %or.cond11.i.1.i79
  br i1 %i.jx, label %.preheader58.2.i89, label %.lr.ph.preheader.i80

.preheader58.2.i89:                               ; preds = %.preheader58.1.i78
  %i.jy = add i8 %i.js, -97
  %or.cond.i115 = icmp ult i8 %i.jy, 26
  %i.jz = add nsw i8 %i.js, -32
  %i.ka = select i1 %or.cond.i115, i8 %i.jz, i8 %i.js ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.ka, ptr %i.kb, align 1, !tbaa !280
  %i.kc = getelementptr inbounds nuw i8, ptr %i.fw, i64 7
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !280 ; 5 uses
  %i.ke = and i8 %i.kd, -33
  %i.kf = add i8 %i.ke, -65
  %or.cond11.i.2.i90 = icmp ult i8 %i.kf, 26
  %i.kg = add i8 %i.kd, -48
  %i.kh = icmp ult i8 %i.kg, 10
  %i.ki = or i1 %i.kh, %or.cond11.i.2.i90
  br i1 %i.ki, label %.preheader58.3.i91, label %.lr.ph.preheader.i80

.preheader58.3.i91:                               ; preds = %.preheader58.2.i89
  %i.kj = add i8 %i.kd, -97
  %or.cond.i114 = icmp ult i8 %i.kj, 26
  %i.kk = add nsw i8 %i.kd, -32
  %i.kl = select i1 %or.cond.i114, i8 %i.kk, i8 %i.kd ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.kl, ptr %i.km, align 1, !tbaa !280
  %i.kn = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !280 ; 5 uses
  %i.kp = and i8 %i.ko, -33
  %i.kq = add i8 %i.kp, -65
  %or.cond11.i.3.i92 = icmp ult i8 %i.kq, 26
  %i.kr = add i8 %i.ko, -48
  %i.ks = icmp ult i8 %i.kr, 10
  %i.kt = or i1 %i.ks, %or.cond11.i.3.i92
  br i1 %i.kt, label %.preheader.i93, label %.lr.ph.preheader.i80

.preheader.i93:                                   ; preds = %.preheader58.3.i91
  %i.ku = add i8 %i.ko, -97
  %or.cond.i113 = icmp ult i8 %i.ku, 26
  %i.kv = add nsw i8 %i.ko, -32
  %i.kw = select i1 %or.cond.i113, i8 %i.kv, i8 %i.ko
  br label %.loopexit.i85

.lr.ph.preheader.i80:                             ; preds = %.preheader58.3.i91, %.preheader58.2.i89, %.preheader58.1.i78
  %.1.lcssa.ph.ph.i81 = phi i32 [ 1, %.preheader58.1.i78 ], [ 3, %.preheader58.3.i91 ], [ 2, %.preheader58.2.i89 ] ; 2 uses
  %i.kx = zext nneg i32 %.1.lcssa.ph.ph.i81 to i64
  %scevgep.i82 = getelementptr i8, ptr %i.a, i64 %i.kx
  %narrow.i83 = sub nuw nsw i32 4, %.1.lcssa.ph.ph.i81
  %i.ky = zext nneg i32 %narrow.i83 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i82, i8 32, i64 %i.ky, i1 false), !tbaa !280
  %.pre.i84 = load i8, ptr %i.a, align 1, !tbaa !280
  %.phi.trans.insert135 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.pre136 = load i8, ptr %.phi.trans.insert135, align 1, !tbaa !280
  %.phi.trans.insert137 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.pre138 = load i8, ptr %.phi.trans.insert137, align 1, !tbaa !280
  %.phi.trans.insert139 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.pre140 = load i8, ptr %.phi.trans.insert139, align 1, !tbaa !280
  br label %.loopexit.i85

.loopexit.i85:                                    ; preds = %.lr.ph.preheader.i80, %.preheader.i93, %.critedge.i105
  %i.kz = phi i8 [ %.pre140, %.lr.ph.preheader.i80 ], [ %i.kw, %.preheader.i93 ], [ %i.jn, %.critedge.i105 ]
  %i.la = phi i8 [ %.pre138, %.lr.ph.preheader.i80 ], [ %i.kl, %.preheader.i93 ], [ %i.ir, %.critedge.i105 ]
  %i.lb = phi i8 [ %.pre136, %.lr.ph.preheader.i80 ], [ %i.ka, %.preheader.i93 ], [ %i.hv, %.critedge.i105 ]
  %i.lc = phi i8 [ %.pre.i84, %.lr.ph.preheader.i80 ], [ %i.jq, %.preheader.i93 ], [ %i.gz, %.critedge.i105 ]
  %i.ld = zext i8 %i.lc to i32
  %i.le = shl nuw i32 %i.ld, 24
  %i.lf = zext i8 %i.lb to i32
  %i.lg = shl nuw nsw i32 %i.lf, 16
  %i.lh = or disjoint i32 %i.lg, %i.le
  %i.li = zext i8 %i.la to i32
  %i.lj = shl nuw nsw i32 %i.li, 8
  %i.lk = or disjoint i32 %i.lh, %i.lj
  %i.ll = zext i8 %i.kz to i32
  %i.lm = or disjoint i32 %i.lk, %i.ll            ; 3 uses
  %i.ln = and i32 %i.lm, -538976289
  %i.lo = icmp eq i32 %i.ln, 1145457748
  %i.lp = xor i32 %i.lm, 538976288
  %spec.select.i86 = select i1 %i.lo, i32 %i.lp, i32 %i.lm
  store i32 %spec.select.i86, ptr %5, align 4, !tbaa !324
  store i32 1, ptr %4, align 4, !tbaa !324
  br label %.critedge.thread.i87

.critedge.thread.i87:                             ; preds = %.loopexit.i85, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %.preheader58.preheader.i75
  %i.lq = phi i1 [ false, %.loopexit.i85 ], [ true, %.preheader58.preheader.i75 ], [ true, %bb.ae ], [ true, %bb.ad ], [ true, %bb.ac ], [ true, %bb.ab ], [ true, %bb.aa ], [ true, %bb.z ], [ true, %bb.y ], [ true, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %_ZL24parse_private_use_subtagPKcPjS1_S0_PFhhE.exit107

_ZL24parse_private_use_subtagPKcPjS1_S0_PFhhE.exit107: ; preds = %_ZL24parse_private_use_subtagPKcPjS1_S0_PFhhE.exit, %bb.u, %bb.v, %.critedge.thread.i87
  %.3.i72 = phi i1 [ %i.ft, %_ZL24parse_private_use_subtagPKcPjS1_S0_PFhhE.exit ], [ true, %bb.u ], [ %i.lq, %.critedge.thread.i87 ], [ true, %bb.v ]
  %or.cond5 = and i1 %i.fu, %.3.i72
  br i1 %or.cond5, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %_ZL24parse_private_use_subtagPKcPjS1_S0_PFhhE.exit107
  %i.lr = load i32, ptr %4, align 4, !tbaa !324
  %.not65 = icmp eq i32 %i.lr, 0
  br i1 %.not65, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call fastcc void @_ZL24hb_ot_tags_from_languagePKcS0_PjS1_(ptr noundef nonnull %1, ptr noundef %.3, ptr noundef %4, ptr noundef %5)
  br label %bb.ah

bb.ah:                                            ; preds = %_ZL24parse_private_use_subtagPKcPjS1_S0_PFhhE.exit107, %bb.af, %bb.ag, %bb.b, %bb.c, %bb.d
  %.054 = phi i1 [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.b ], [ %.3.i, %bb.ag ], [ %.3.i, %bb.af ], [ %.3.i, %_ZL24parse_private_use_subtagPKcPjS1_S0_PFhhE.exit107 ]
  %i.ls = icmp ne ptr %2, null
  %or.cond7 = and i1 %i.ls, %.054
  %i.lt = icmp ne ptr %3, null
  %or.cond9 = and i1 %i.lt, %or.cond7
  br i1 %or.cond9, label %bb.ai, label %bb.az

bb.ai:                                            ; preds = %bb.ah
  %i.lu = load i32, ptr %2, align 4, !tbaa !324
  %.not67 = icmp eq i32 %i.lu, 0
  br i1 %.not67, label %bb.az, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  switch i32 %0, label %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i.thread [
    i32 1113943655, label %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i
    i32 1147500129, label %bb.ak
    i32 1198877298, label %bb.al
    i32 1198879349, label %bb.am
    i32 1265525857, label %bb.an
    i32 1298954605, label %bb.ao
    i32 1332902241, label %bb.ap
    i32 1415671148, label %bb.aq
    i32 1415933045, label %bb.ar
    i32 1299803506, label %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i
  ]

bb.ak:                                            ; preds = %bb.aj
  br label %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i

bb.al:                                            ; preds = %bb.aj
  br label %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i

bb.am:                                            ; preds = %bb.aj
  br label %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i

bb.an:                                            ; preds = %bb.aj
  br label %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i

bb.ao:                                            ; preds = %bb.aj
  br label %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i

bb.ap:                                            ; preds = %bb.aj
  br label %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i

bb.aq:                                            ; preds = %bb.aj
  br label %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i

bb.ar:                                            ; preds = %bb.aj
  br label %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i

_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i: ; preds = %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar
  %.0.i.ph.i = phi i32 [ 1651402546, %bb.aj ], [ 1952803890, %bb.ar ], [ 1953328178, %bb.aq ], [ 1869773106, %bb.ap ], [ 1835822386, %bb.ao ], [ 1802396722, %bb.an ], [ 1735750194, %bb.am ], [ 1735029298, %bb.al ], [ 1684370994, %bb.ak ] ; 2 uses
  %i.lv = or i32 %.0.i.ph.i, 51
  store i32 %i.lv, ptr %3, align 4, !tbaa !324
  %.pre141 = load i32, ptr %2, align 4, !tbaa !324
  %i.lw = icmp ugt i32 %.pre141, 1
  br i1 %i.lw, label %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i, label %_ZL26hb_ot_all_tags_from_script11hb_script_tPjS0_.exit

_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i: ; preds = %bb.aj, %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i
  %.0.i164 = phi i32 [ 1, %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i ], [ 0, %bb.aj ] ; 2 uses
  %.0.i26.i163 = phi i32 [ %.0.i.ph.i, %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i ], [ 1836674354, %bb.aj ]
  %i.lx = add nuw nsw i32 %.0.i164, 1             ; 3 uses
  %i.ly = zext nneg i32 %.0.i164 to i64
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ly
  store i32 %.0.i26.i163, ptr %i.lz, align 4, !tbaa !324
  %.pre142 = load i32, ptr %2, align 4, !tbaa !324
  %i.ma = icmp ugt i32 %.pre142, %i.lx
  br i1 %i.ma, label %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i.thread, label %_ZL26hb_ot_all_tags_from_script11hb_script_tPjS0_.exit

_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i.thread: ; preds = %bb.aj, %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i
  %.1.i166 = phi i32 [ %i.lx, %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i ], [ 0, %bb.aj ] ; 3 uses
  switch i32 %0, label %bb.ax [
    i32 0, label %_ZL26hb_ot_all_tags_from_script11hb_script_tPjS0_.exit
    i32 1517122664, label %bb.ay
    i32 1214870113, label %bb.as
    i32 1215458164, label %bb.as
    i32 1281453935, label %bb.at
    i32 1500080489, label %bb.au
    i32 1315663727, label %bb.av
    i32 1449224553, label %bb.aw
  ]

bb.as:                                            ; preds = %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i.thread, %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i.thread
  br label %bb.ay

bb.at:                                            ; preds = %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i.thread
  br label %bb.ay

bb.au:                                            ; preds = %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i.thread
  br label %bb.ay

bb.av:                                            ; preds = %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i.thread
  br label %bb.ay

bb.aw:                                            ; preds = %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i.thread
  br label %bb.ay

bb.ax:                                            ; preds = %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i.thread
  %i.mb = or i32 %0, 536870912
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i.thread
  %.0.i23.ph.i = phi i32 [ 1852534560, %bb.av ], [ 2036932640, %bb.au ], [ 1818324768, %bb.at ], [ 1801547361, %bb.as ], [ %i.mb, %bb.ax ], [ 1986095392, %bb.aw ], [ 1835103336, %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i.thread ]
  %i.mc = add nuw nsw i32 %.1.i166, 1
  %i.md = zext nneg i32 %.1.i166 to i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.md
  store i32 %.0.i23.ph.i, ptr %i.me, align 4, !tbaa !324
  br label %_ZL26hb_ot_all_tags_from_script11hb_script_tPjS0_.exit

_ZL26hb_ot_all_tags_from_script11hb_script_tPjS0_.exit: ; preds = %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i, %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i, %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i.thread, %bb.ay
  %.3.i108 = phi i32 [ %i.lx, %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i ], [ %i.mc, %bb.ay ], [ %.1.i166, %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.thread27.i.thread ], [ 1, %_ZL25hb_ot_new_tag_from_script11hb_script_t.exit.i ]
  store i32 %.3.i108, ptr %2, align 4, !tbaa !324
  br label %bb.az

bb.az:                                            ; preds = %_ZL26hb_ot_all_tags_from_script11hb_script_tPjS0_.exit, %bb.ai, %bb.ah
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN19hb_ot_map_builder_tD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(128) dereferenceable(128) initializes((84, 88), (100, 104), (116, 120)) %0) unnamed_addr #35 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1307
  %i.c = add i32 %i.b, -1
  %spec.select.i.i = icmp ult i32 %i.c, -2
  br i1 %spec.select.i.i, label %bb.b, label %_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4finiEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.d, align 4, !tbaa !1308
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1309
  tail call void @free(ptr noundef %i.f) #63
  br label %_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4finiEv.exit

_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4finiEv.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1312
  %i.i = add i32 %i.h, -1
  %spec.select.i.i5 = icmp ult i32 %i.i, -2
  br i1 %spec.select.i.i5, label %bb.c, label %_ZN11hb_vector_tIN19hb_ot_map_builder_t12stage_info_tELb0EE4finiEv.exit

bb.c:                                             ; preds = %_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4finiEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 0, ptr %i.j, align 4, !tbaa !1313
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1314
  tail call void @free(ptr noundef %i.l) #63
  br label %_ZN11hb_vector_tIN19hb_ot_map_builder_t12stage_info_tELb0EE4finiEv.exit

_ZN11hb_vector_tIN19hb_ot_map_builder_t12stage_info_tELb0EE4finiEv.exit: ; preds = %_ZN11hb_vector_tIN19hb_ot_map_builder_t14feature_info_tELb0EE4finiEv.exit, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !1312
  %i.o = add i32 %i.n, -1
  %spec.select.i.i5.1 = icmp ult i32 %i.o, -2
  br i1 %spec.select.i.i5.1, label %bb.d, label %_ZN11hb_vector_tIN19hb_ot_map_builder_t12stage_info_tELb0EED2Ev.exit

bb.d:                                             ; preds = %_ZN11hb_vector_tIN19hb_ot_map_builder_t12stage_info_tELb0EE4finiEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.p, align 4, !tbaa !1313
end_hunk_0
begin_hunk_1_@_ZNK2OT9glyf_impl11GlyphHeader30get_extents_without_var_scaledINS_18glyf_accelerator_tEEEbP9hb_font_tRKT_jP18hb_glyph_extents_t:bb.a
  store i32 %i.as, ptr %i.at, align 4, !tbaa !373
  %.not.i10 = icmp slt i16 %i.ag, %i.ah
  %i.au = select i1 %.not.i10, ptr %i.b, ptr %i.a
  %i.av = load i16, ptr %i.au, align 1, !tbaa !283
  %i.aw = tail call noundef i16 @llvm.bswap.i16(i16 %i.av)
  %i.ax = sext i16 %i.aw to i32
  %i.ay = sext i16 %i.aj to i32
  %i.az = sub nsw i32 %i.ax, %i.ay                ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !374
  %.not.i12 = icmp sgt i16 %i.an, %i.ap
  %.val = load i16, ptr %i.al, align 1
  %.val16 = load i16, ptr %i.ak, align 1
  %i.bb = select i1 %.not.i12, i16 %.val, i16 %.val16
  %i.bc = tail call noundef i16 @llvm.bswap.i16(i16 %i.bb)
  %i.bd = trunc nsw i32 %.sink.i to i16
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bf = add nsw i32 %i.az, %.sink.i
  %i.bg = trunc i32 %i.bf to i16
  %i.bh = load <2 x float>, ptr %i.be, align 8, !tbaa !304 ; 2 uses
  %i.bi = insertelement <2 x i16> poison, i16 %i.bd, i64 0
  %i.bj = insertelement <2 x i16> %i.bi, i16 %i.ar, i64 1
  %i.bk = sitofp <2 x i16> %i.bj to <2 x float>
  %i.bl = fmul <2 x float> %i.bh, %i.bk
  %i.bm = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.bl)
  %i.bn = fptosi <2 x float> %i.bm to <2 x i32>   ; 2 uses
  store <2 x i32> %i.bn, ptr %4, align 4, !tbaa !324
  %i.bo = insertelement <2 x i16> poison, i16 %i.bg, i64 0
  %i.bp = insertelement <2 x i16> %i.bo, i16 %i.bc, i64 1
  %i.bq = sitofp <2 x i16> %i.bp to <2 x float>
  %i.br = fmul <2 x float> %i.bh, %i.bq
  %i.bs = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.br)
  %i.bt = sitofp <2 x i32> %i.bn to <2 x float>
  %i.bu = fsub <2 x float> %i.bs, %i.bt
  %i.bv = fptosi <2 x float> %i.bu to <2 x i32>
  store <2 x i32> %i.bv, ptr %i.ba, align 4, !tbaa !324
  ret i1 true
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #42

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #42

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZL23_hb_grapheme_group_funcRK15hb_glyph_info_tS1_(ptr nofree nonnull readnone align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %1) #43 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i16, ptr %i.a, align 4, !tbaa !280
  %i.b = and i16 %.val, 128
  %i.c = icmp ne i16 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK3AAT9TrackData12get_trackingEPKvff(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !283
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a) ; 3 uses
  %i.c = zext i16 %i.b to i32                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 1, !tbaa !278
  %i.f = tail call noundef i32 @llvm.bswap.i32(i32 %i.e)
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = load i16, ptr %i.i, align 1, !tbaa !283
  %i.k = tail call noundef i16 @llvm.bswap.i16(i16 %i.j)
  %.sroa.2.8.insert.ext.i.i = zext i16 %i.k to i64 ; 4 uses
  switch i16 %i.b, label %.preheader [
    i16 0, label %bb.g
    i16 1, label %bb.b
  ]

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.m = tail call i32 @llvm.usub.sat.i32(i32 %i.c, i32 1) ; 3 uses
  %wide.trip.count = zext nneg i32 %i.m to i64
  %exitcond.not57 = icmp ult i16 %i.b, 2
  br i1 %exitcond.not57, label %.critedge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = tail call noundef float @_ZNK3AAT15TrackTableEntry9get_valueEfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE(ptr noundef nonnull align 1 dereferenceable(8) %i.n, float noundef %2, ptr noundef %1, ptr %i.h, i64 %.sroa.2.8.insert.ext.i.i)
  br label %bb.g

bb.c:                                             ; preds = %.lr.ph
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !3351

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %indvars.iv58 = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv58, 1 ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.q = load i32, ptr %i.p, align 1, !tbaa !278
  %i.r = tail call noundef i32 @llvm.bswap.i32(i32 %i.q)
  %i.s = sitofp i32 %i.r to float
  %i.t = fmul nnan float %i.s, f0x37800000
  %i.u = fcmp ugt float %i.t, %3
  br i1 %i.u, label %.critedge.split.loop.exit54, label %bb.c, !llvm.loop !3351

.critedge.split.loop.exit54:                      ; preds = %.lr.ph
  %i.v = trunc nuw nsw i64 %indvars.iv58 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.preheader, %.critedge.split.loop.exit54
  %.044.lcssa = phi i32 [ %i.v, %.critedge.split.loop.exit54 ], [ %i.m, %.preheader ], [ %i.m, %bb.c ] ; 2 uses
  %.04559 = add nsw i32 %i.c, -1                  ; 3 uses
  %.not4860 = icmp eq i32 %.04559, 0
  br i1 %.not4860, label %.critedge2, label %.lr.ph63

bb.d:                                             ; preds = %.lr.ph63
  %.045 = add i32 %.04562, -1                     ; 3 uses
  %.not48 = icmp eq i32 %.045, 0
  br i1 %.not48, label %.critedge2, label %.lr.ph63, !llvm.loop !3352

.lr.ph63:                                         ; preds = %.critedge, %bb.d
  %.04562 = phi i32 [ %.045, %bb.d ], [ %.04559, %.critedge ] ; 3 uses
  %.045.in61 = phi i32 [ %.04562, %bb.d ], [ %i.c, %.critedge ]
  %i.w = add i32 %.045.in61, -2
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.x
  %i.z = load i32, ptr %i.y, align 1, !tbaa !278
  %i.aa = tail call noundef i32 @llvm.bswap.i32(i32 %i.z)
  %i.ab = sitofp i32 %i.aa to float
  %i.ac = fmul nnan float %i.ab, f0x37800000
  %i.ad = fcmp ult float %i.ac, %3
  br i1 %i.ad, label %..critedge2_crit_edge64, label %bb.d, !llvm.loop !3352

..critedge2_crit_edge64:                          ; preds = %.lr.ph63
  br label %.critedge2, !llvm.loop !3352

.critedge2:                                       ; preds = %bb.d, %..critedge2_crit_edge64, %.critedge
  %.045.lcssa = phi i32 [ %.04559, %.critedge ], [ %.04562, %..critedge2_crit_edge64 ], [ %.045, %bb.d ] ; 2 uses
  %i.ae = icmp eq i32 %.044.lcssa, %.045.lcssa
  %i.af = zext i32 %.044.lcssa to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.af ; 3 uses
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge2
  %i.ah = tail call noundef float @_ZNK3AAT15TrackTableEntry9get_valueEfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE(ptr noundef nonnull align 1 dereferenceable(8) %i.ag, float noundef %2, ptr noundef %1, ptr %i.h, i64 %.sroa.2.8.insert.ext.i.i)
  br label %bb.g

bb.f:                                             ; preds = %.critedge2
  %i.ai = load i32, ptr %i.ag, align 1, !tbaa !278
  %i.aj = tail call noundef i32 @llvm.bswap.i32(i32 %i.ai)
  %i.ak = sitofp i32 %i.aj to float
  %i.al = fmul nnan float %i.ak, f0x37800000      ; 2 uses
  %i.am = zext i32 %.045.lcssa to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 1, !tbaa !278
  %i.ap = tail call noundef i32 @llvm.bswap.i32(i32 %i.ao)
  %i.aq = sitofp i32 %i.ap to float
  %i.ar = fmul nnan float %i.aq, f0x37800000
  %i.as = fsub float %3, %i.al
  %i.at = fsub float %i.ar, %i.al
  %i.au = fdiv float %i.as, %i.at
  %i.av = tail call noundef float @_ZNK3AAT15TrackTableEntry9get_valueEfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE(ptr noundef nonnull align 1 dereferenceable(8) %i.ag, float noundef %2, ptr noundef %1, ptr %i.h, i64 %.sroa.2.8.insert.ext.i.i) ; 2 uses
  %i.aw = tail call noundef float @_ZNK3AAT15TrackTableEntry9get_valueEfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE(ptr noundef nonnull align 1 dereferenceable(8) %i.an, float noundef %2, ptr noundef %1, ptr %i.h, i64 %.sroa.2.8.insert.ext.i.i)
  %i.ax = fsub float %i.aw, %i.av
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.au, float %i.ax, float %i.av)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a, %bb.b
  %.1 = phi float [ %i.o, %bb.b ], [ 0.000000e+00, %bb.a ], [ %i.ah, %bb.e ], [ %i.ay, %bb.f ]
  ret float %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK3AAT15TrackTableEntry9get_valueEfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE(ptr noundef nonnull align 1 dereferenceable(8) %0, float noundef %1, ptr noundef %2, ptr %3, i64 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.4.8.extract.trunc = trunc i64 %4 to i32  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283
  %i.c = tail call noundef i16 @llvm.bswap.i16(i16 %i.b)
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %i.d ; 6 uses
  switch i32 %.sroa.4.8.extract.trunc, label %.lr.ph.preheader [
    i32 0, label %_ZNK3AAT15TrackTableEntry14interpolate_atEjfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE.exit
    i32 1, label %bb.b
  ]

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %4, 4294967295
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.f = load i16, ptr %i.e, align 1, !tbaa !283
  %i.g = tail call noundef i16 @llvm.bswap.i16(i16 %i.f)
  %i.h = sitofp i16 %i.g to float
  br label %_ZNK3AAT15TrackTableEntry14interpolate_atEjfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 1, !tbaa !278
  %i.k = tail call noundef i32 @llvm.bswap.i32(i32 %i.j)
  %i.l = sitofp i32 %i.k to float
  %i.m = fmul nnan float %i.l, f0x37800000
  %5 = fcmp oge float %i.m, %1                    ; 2 uses
  br i1 %5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !3353

bb.d:                                             ; preds = %.lr.ph
  %i.n = icmp eq i64 %indvars.iv, 0
  br i1 %i.n, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.o = load i16, ptr %i.e, align 1, !tbaa !283
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %i.q = sitofp i16 %i.p to float
  br label %_ZNK3AAT15TrackTableEntry14interpolate_atEjfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE.exit

.thread:                                          ; preds = %bb.c, %bb.d
  %.02132.in = phi i64 [ %indvars.iv, %bb.d ], [ %4, %bb.c ] ; 2 uses
  %.02132 = trunc i64 %.02132.in to i32           ; 3 uses
  %i.r = icmp eq i32 %.02132, %.sroa.4.8.extract.trunc
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread
  %i.s = add i64 %4, 4294967295
  %i.t = and i64 %i.s, 4294967295
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.t
  %i.v = load i16, ptr %i.u, align 1, !tbaa !283
  %i.w = tail call noundef i16 @llvm.bswap.i16(i16 %i.v)
  %i.x = sitofp i16 %i.w to float
  br label %_ZNK3AAT15TrackTableEntry14interpolate_atEjfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE.exit

bb.g:                                             ; preds = %.thread
  %i.y = and i64 %.02132.in, 4294967295           ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.y ; 2 uses
  %.0.i.i25 = select i1 %5, ptr %i.z, ptr @_hb_NullPool, !prof !268
  %i.aa = load i32, ptr %.0.i.i25, align 1, !tbaa !278
  %i.ab = tail call noundef i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = sitofp i32 %i.ab to float
  %i.ad = fmul nnan float %i.ac, f0x37800000
  %i.ae = fcmp oeq float %i.ad, %1
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.y
  %i.ag = load i16, ptr %i.af, align 1, !tbaa !283
  %i.ah = tail call noundef i16 @llvm.bswap.i16(i16 %i.ag)
  %i.ai = sitofp i16 %i.ah to float
  br label %_ZNK3AAT15TrackTableEntry14interpolate_atEjfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE.exit

bb.i:                                             ; preds = %bb.g
  %i.aj = add i32 %.02132, -1                     ; 2 uses
  %.not.i.i.i = icmp ult i32 %i.aj, %.sroa.4.8.extract.trunc
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ak
  %.0.i.i.i = select i1 %.not.i.i.i, ptr %i.al, ptr @_hb_NullPool, !prof !268
  %i.am = load i32, ptr %.0.i.i.i, align 1, !tbaa !278
  %i.an = tail call noundef i32 @llvm.bswap.i32(i32 %i.am)
  %i.ao = sitofp i32 %i.an to float
  %i.ap = fmul nnan float %i.ao, f0x37800000      ; 4 uses
  %.not.i.i14.i = icmp ult i32 %.02132, %.sroa.4.8.extract.trunc
  %.0.i.i15.i = select i1 %.not.i.i14.i, ptr %i.z, ptr @_hb_NullPool, !prof !268
  %i.aq = load i32, ptr %.0.i.i15.i, align 1, !tbaa !278
  %i.ar = tail call noundef i32 @llvm.bswap.i32(i32 %i.aq)
  %i.as = sitofp i32 %i.ar to float
  %i.at = fmul nnan float %i.as, f0x37800000      ; 4 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.ak
  %i.av = load i16, ptr %i.au, align 1, !tbaa !283
  %i.aw = tail call noundef i16 @llvm.bswap.i16(i16 %i.av)
  %i.ax = sext i16 %i.aw to i32                   ; 3 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.y
  %i.az = load i16, ptr %i.ay, align 1, !tbaa !283
  %i.ba = tail call noundef i16 @llvm.bswap.i16(i16 %i.az)
  %i.bb = sext i16 %i.ba to i32                   ; 3 uses
  %i.bc = fcmp olt float %i.at, %i.ap
  br i1 %i.bc, label %bb.j, label %bb.k, !prof !267

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.034.i = phi float [ %i.at, %bb.j ], [ %i.ap, %bb.i ] ; 3 uses
  %.033.i = phi float [ %i.ap, %bb.j ], [ %i.at, %bb.i ] ; 2 uses
  %.032.i = phi i32 [ %i.bb, %bb.j ], [ %i.ax, %bb.i ] ; 3 uses
  %.031.i = phi i32 [ %i.ax, %bb.j ], [ %i.bb, %bb.i ] ; 2 uses
  %i.bd = fcmp olt float %1, %.034.i
  br i1 %i.bd, label %bb.l, label %bb.m, !prof !267

bb.l:                                             ; preds = %bb.k
  %i.be = sitofp i32 %.032.i to float
  br label %_ZNK3AAT15TrackTableEntry14interpolate_atEjfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE.exit

bb.m:                                             ; preds = %bb.k
  %i.bf = fcmp ogt float %1, %.033.i
  br i1 %i.bf, label %bb.n, label %bb.o, !prof !267

bb.n:                                             ; preds = %bb.m
  %i.bg = sitofp i32 %.031.i to float
  br label %_ZNK3AAT15TrackTableEntry14interpolate_atEjfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE.exit

bb.o:                                             ; preds = %bb.m
  %i.bh = fcmp oeq float %i.at, %i.ap
  br i1 %i.bh, label %bb.p, label %bb.q, !prof !267

bb.p:                                             ; preds = %bb.o
  %i.bi = add nsw i32 %i.bb, %i.ax
  %i.bj = sitofp i32 %i.bi to float
  %i.bk = fmul nnan float %i.bj, 5.000000e-01
  br label %_ZNK3AAT15TrackTableEntry14interpolate_atEjfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE.exit

bb.q:                                             ; preds = %bb.o
  %i.bl = fsub float %1, %.034.i
  %i.bm = fsub float %.033.i, %.034.i
  %i.bn = fdiv float %i.bl, %i.bm
  %i.bo = sitofp i32 %.032.i to float
  %i.bp = sub nsw i32 %.031.i, %.032.i
  %i.bq = sitofp i32 %i.bp to float
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.bq, float %i.bo)
  br label %_ZNK3AAT15TrackTableEntry14interpolate_atEjfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE.exit

_ZNK3AAT15TrackTableEntry14interpolate_atEjfPKv10hb_array_tIKN2OT7HBFixedINS4_7NumTypeILb1EiLj4EEELj16EEEE.exit: ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.e, %bb.f, %bb.h, %bb.a, %bb.b
  %.1 = phi float [ %i.h, %bb.b ], [ 0.000000e+00, %bb.a ], [ %i.q, %bb.e ], [ %i.x, %bb.f ], [ %i.ai, %bb.h ], [ %i.be, %bb.l ], [ %i.bg, %bb.n ], [ %i.bk, %bb.p ], [ %i.br, %bb.q ]
  ret float %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK3AAT11FeatureName18get_selector_infosEjPjP37hb_aat_layout_feature_selector_info_tS1_PKv(ptr noundef nonnull align 1 dereferenceable(12) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 1, !tbaa !278
  %i.c = tail call noundef i32 @llvm.bswap.i32(i32 %i.b)
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i16, ptr %i.f, align 1, !tbaa !283
  %i.h = tail call noundef i16 @llvm.bswap.i16(i16 %i.g)
  %i.i = zext i16 %i.h to i32                     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i16, ptr %i.j, align 1, !tbaa !283
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %i.k) ; 2 uses
  %.not = icmp sgt i16 %i.l, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = zext i16 %i.l to i32                     ; 2 uses
  %i.n = and i32 %i.m, 16384
  %.not16 = icmp eq i32 %i.n, 0
  %i.o = and i32 %i.m, 255
  %spec.select = select i1 %.not16, i32 0, i32 %i.o ; 3 uses
  %.not.i.i = icmp samesign ult i32 %spec.select, %i.i
  %i.p = zext nneg i32 %spec.select to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.p
  %.0.i.i = select i1 %.not.i.i, ptr %i.q, ptr @_hb_Null_AAT_SettingName, !prof !268
  %i.r = load i16, ptr %.0.i.i, align 1, !tbaa !283
  %i.s = tail call noundef i16 @llvm.bswap.i16(i16 %i.r)
  %i.t = zext i16 %i.s to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.012 = phi i32 [ %i.t, %bb.b ], [ 65535, %bb.a ] ; 2 uses
  %.0 = phi i32 [ %spec.select, %bb.b ], [ 65535, %bb.a ]
  %.not17 = icmp eq ptr %4, null
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %.0, ptr %4, align 4, !tbaa !324
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = icmp ne ptr %2, null
  %i.v = icmp ne ptr %3, null
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %_ZNK10hb_array_tIKN3AAT11SettingNameEE9sub_arrayEjPj.exit, label %_ZorI13hb_map_iter_tI10hb_array_tIKN3AAT11SettingNameEEZNKS2_11FeatureName18get_selector_infosEjPjP37hb_aat_layout_feature_selector_info_tS7_PKvEUlRS4_E_L24hb_function_sortedness_t0ELPv0EE9hb_sink_tIS1_IS8_EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSL_6item_tEEE5valueEvE4typeELSF_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISL_Efp_EEEOSL_OSQ_.exit

_ZNK10hb_array_tIKN3AAT11SettingNameEE9sub_arrayEjPj.exit: ; preds = %bb.e
  %storemerge.i = tail call i32 @llvm.usub.sat.i32(i32 %i.i, i32 %1)
  %i.w = load i32, ptr %2, align 4, !tbaa !324
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i, i32 %i.w) ; 6 uses
  store i32 %.sroa.speculated.i, ptr %2, align 4, !tbaa !324
  %i.x = zext i32 %1 to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.x ; 2 uses
  %.not4.i.i = icmp eq i32 %.sroa.speculated.i, 0
  br i1 %.not4.i.i, label %_ZorI13hb_map_iter_tI10hb_array_tIKN3AAT11SettingNameEEZNKS2_11FeatureName18get_selector_infosEjPjP37hb_aat_layout_feature_selector_info_tS7_PKvEUlRS4_E_L24hb_function_sortedness_t0ELPv0EE9hb_sink_tIS1_IS8_EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSL_6item_tEEE5valueEvE4typeELSF_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISL_Efp_EEEOSL_OSQ_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK10hb_array_tIKN3AAT11SettingNameEE9sub_arrayEjPj.exit
  %i.z = icmp eq i32 %.012, 65535
  br i1 %i.z, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %_ZN9hb_iter_tI10hb_array_tI37hb_aat_layout_feature_selector_info_tERS1_EdeEv.exit.i.us.i.i
  %.sroa.9.2 = phi i32 [ %.sroa.9.3, %_ZN9hb_iter_tI10hb_array_tI37hb_aat_layout_feature_selector_info_tERS1_EdeEv.exit.i.us.i.i ], [ %.sroa.speculated.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.033.2 = phi ptr [ %.sroa.033.3, %_ZN9hb_iter_tI10hb_array_tI37hb_aat_layout_feature_selector_info_tERS1_EdeEv.exit.i.us.i.i ], [ %3, %.lr.ph.i.i ] ; 2 uses
  %i.aa = phi i32 [ %.sroa.9.3, %_ZN9hb_iter_tI10hb_array_tI37hb_aat_layout_feature_selector_info_tERS1_EdeEv.exit.i.us.i.i ], [ 1, %.lr.ph.i.i ]
  %i.ab = phi i32 [ %i.ah, %_ZN9hb_iter_tI10hb_array_tI37hb_aat_layout_feature_selector_info_tERS1_EdeEv.exit.i.us.i.i ], [ %.sroa.speculated.i, %.lr.ph.i.i ]
  %i.ac = phi ptr [ %i.ai, %_ZN9hb_iter_tI10hb_array_tI37hb_aat_layout_feature_selector_info_tERS1_EdeEv.exit.i.us.i.i ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %.val1.i.i.us.i.i = load i16, ptr %i.ac, align 1, !tbaa !283
  %i.ad = getelementptr i8, ptr %i.ac, i64 2
  %.val2.i.i.us.i.i = load i16, ptr %i.ad, align 1, !tbaa !283
  %i.ae = tail call noundef i16 @llvm.bswap.i16(i16 %.val2.i.i.us.i.i)
  %i.af = tail call noundef i16 @llvm.bswap.i16(i16 %.val1.i.i.us.i.i)
  %i.ag = zext i16 %i.af to i64                   ; 2 uses
  %.sroa.3.8.insert.ext.i.i.i.i.i.i.i.i.us.i.i = add nuw nsw i64 %i.ag, 1
  %.sroa.2.0.insert.shift.i.i.i.i.i.i.i.i.us.i.i = shl nuw nsw i64 %i.ag, 32
  %.sroa.0.0.insert.ext.i.i.i.i.i.i.i.i.us.i.i = zext i16 %i.ae to i64
  %.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.us.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i.i.i.i.us.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i.i.i.i.us.i.i
  %.not.i.i.i.us.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i.us.i.i, label %bb.f, label %_ZN9hb_iter_tI10hb_array_tI37hb_aat_layout_feature_selector_info_tERS1_EdeEv.exit.i.us.i.i, !prof !267

bb.f:                                             ; preds = %.lr.ph.split.us.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, i8 0, i64 16, i1 false)
  br label %_ZN9hb_iter_tI10hb_array_tI37hb_aat_layout_feature_selector_info_tERS1_EdeEv.exit.i.us.i.i

_ZN9hb_iter_tI10hb_array_tI37hb_aat_layout_feature_selector_info_tERS1_EdeEv.exit.i.us.i.i: ; preds = %.lr.ph.split.us.i.i, %bb.f
  %.0.i.i.i.us.i.i = phi ptr [ @_hb_CrapPool, %bb.f ], [ %.sroa.033.2, %.lr.ph.split.us.i.i ] ; 2 uses
  store i64 %.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.us.i.i, ptr %.0.i.i.i.us.i.i, align 4
  %.sroa.2.0..sroa_idx.i.us.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.us.i.i, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i.i.i.i.i.i.i.us.i.i, ptr %.sroa.2.0..sroa_idx.i.us.i.i, align 4
  %.not.i.i1.i.us.i.i = icmp eq i32 %.sroa.9.2, 0
  %.sroa.9.3 = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.9.2, i32 1) ; 2 uses
  %.sroa.033.3.idx = select i1 %.not.i.i1.i.us.i.i, i64 0, i64 16, !prof !267
  %.sroa.033.3 = getelementptr inbounds nuw i8, ptr %.sroa.033.2, i64 %.sroa.033.3.idx
  %i.ah = add nsw i32 %i.ab, -1                   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %.not.us.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.us.i.i, label %_ZorI13hb_map_iter_tI10hb_array_tIKN3AAT11SettingNameEEZNKS2_11FeatureName18get_selector_infosEjPjP37hb_aat_layout_feature_selector_info_tS7_PKvEUlRS4_E_L24hb_function_sortedness_t0ELPv0EE9hb_sink_tIS1_IS8_EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSL_6item_tEEE5valueEvE4typeELSF_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISL_Efp_EEEOSL_OSQ_.exit, label %.lr.ph.split.us.i.i, !llvm.loop !3354

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %.sroa.3.8.insert.ext.i.i.i.i.i.i.i.i.i.i = zext nneg i32 %.012 to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZN9hb_iter_tI10hb_array_tI37hb_aat_layout_feature_selector_info_tERS1_EdeEv.exit.i.i.i, %.lr.ph.split.i.i
  %.sroa.9.0 = phi i32 [ %.sroa.speculated.i, %.lr.ph.split.i.i ], [ %.sroa.9.1, %_ZN9hb_iter_tI10hb_array_tI37hb_aat_layout_feature_selector_info_tERS1_EdeEv.exit.i.i.i ] ; 2 uses
  %.sroa.033.0 = phi ptr [ %3, %.lr.ph.split.i.i ], [ %.sroa.033.1, %_ZN9hb_iter_tI10hb_array_tI37hb_aat_layout_feature_selector_info_tERS1_EdeEv.exit.i.i.i ] ; 2 uses
  %i.aj = phi i32 [ 1, %.lr.ph.split.i.i ], [ %.sroa.9.1, %_ZN9hb_iter_tI10hb_array_tI37hb_aat_layout_feature_selector_info_tERS1_EdeEv.exit.i.i.i ]
  %i.ak = phi i32 [ %.sroa.speculated.i, %.lr.ph.split.i.i ], [ %i.ap, %_ZN9hb_iter_tI10hb_array_tI37hb_aat_layout_feature_selector_info_tERS1_EdeEv.exit.i.i.i ]
  %i.al = phi ptr [ %i.y, %.lr.ph.split.i.i ], [ %i.aq, %_ZN9hb_iter_tI10hb_array_tI37hb_aat_layout_feature_selector_info_tERS1_EdeEv.exit.i.i.i ] ; 3 uses
  %.val1.i.i.i.i = load i16, ptr %i.al, align 1, !tbaa !283
  %i.am = getelementptr i8, ptr %i.al, i64 2
end_hunk_1
