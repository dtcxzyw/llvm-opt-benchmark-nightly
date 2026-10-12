Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/decoders_libraw?download=true
inline.NumInlined: 431
inline.NumDeleted: 229
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6LibRaw17samsung3_load_rawEv:bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %bb.aq, %.preheader136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ck = load i16, ptr %i.c, align 8, !tbaa !75
  %i.cl = zext i16 %i.ck to i64
  %i.cm = icmp samesign ult i64 %indvars.iv.next, %i.cl
  br i1 %i.cm, label %.preheader136, label %._crit_edge150, !llvm.loop !180

bb.e:                                             ; preds = %.lr.ph, %bb.aq
  %.0112145 = phi i32 [ 0, %.lr.ph ], [ %i.od, %bb.aq ] ; 25 uses
  %.0114144 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.aq ] ; 2 uses
  %.0115143 = phi i32 [ 7, %.lr.ph ], [ %.1116132, %bb.aq ]
  %i.cn = and i32 %.0112145, 48
  %i.co = or disjoint i32 %i.cn, %i.ah
  %or.cond = icmp eq i32 %i.co, 0
  br i1 %or.cond, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.cp = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, ptr noundef null) ; 2 uses
  %i.cq = icmp slt i32 %i.cp, 3
  br i1 %i.cq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cr = sext i32 %i.cp to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr @__const._ZN6LibRaw17samsung3_load_rawEv.scalevals, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !89
  %i.cu = add nsw i32 %i.ct, %.0114144
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.cv = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 12, ptr noundef null)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  %.2 = phi i32 [ %.0114144, %bb.e ], [ %i.cu, %bb.g ], [ %i.cv, %bb.h ] ; 3 uses
  %i.cw = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 1, ptr noundef null)
  %i.cx = icmp eq i32 %i.cw, 0                    ; 2 uses
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.cx, label %.preheader133, label %.thread

bb.k:                                             ; preds = %bb.i
  br i1 %i.cx, label %bb.l, label %select.unfold

bb.l:                                             ; preds = %bb.k
  %i.cy = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 3, ptr noundef null)
  br label %select.unfold

select.unfold:                                    ; preds = %bb.k, %bb.l
  %.1116 = phi i32 [ %.0115143, %bb.k ], [ %i.cy, %bb.l ] ; 2 uses
  %i.cz = icmp eq i32 %.1116, 7
  br i1 %i.cz, label %.preheader133, label %.thread

.preheader133:                                    ; preds = %bb.j, %select.unfold
  %i.da = icmp eq i32 %.0112145, 0
  %i.db = load ptr, ptr %i.aj, align 8, !tbaa !73 ; 47 uses
  %.pre = load i16, ptr %i.f, align 2, !tbaa !74  ; 2 uses
  br i1 %i.da, label %..loopexit.loopexit_crit_edge, label %bb.m

..loopexit.loopexit_crit_edge:                    ; preds = %.preheader133
  %.pre190 = zext i16 %.pre to i64
  %.pre192 = mul i64 %indvars.iv, %.pre190
  %i.dc = and i64 %.pre192, 4294967295
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.dc
  store i16 %i.ae, ptr %i.dd, align 2, !tbaa !79
  %.pre161263 = load i16, ptr %i.f, align 2, !tbaa !74
  %.pre194 = zext i16 %.pre161263 to i64
  %.pre196 = mul i64 %indvars.iv, %.pre194
  %i.de = add i64 %.pre196, 1
  %i.df = and i64 %i.de, 4294967295
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.df
  store i16 %i.ae, ptr %i.dg, align 2, !tbaa !79
  %.pre162267 = load i16, ptr %i.f, align 2, !tbaa !74
  %.pre198 = zext i16 %.pre162267 to i64
  %.pre200 = mul i64 %indvars.iv, %.pre198
  %i.dh = add i64 %.pre200, 2
  %i.di = and i64 %i.dh, 4294967295
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.di
  store i16 %i.ae, ptr %i.dj, align 2, !tbaa !79
  %.pre163271 = load i16, ptr %i.f, align 2, !tbaa !74
  %.pre202 = zext i16 %.pre163271 to i64
  %.pre204 = mul i64 %indvars.iv, %.pre202
  %i.dk = add i64 %.pre204, 3
  %i.dl = and i64 %i.dk, 4294967295
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.dl
  store i16 %i.ae, ptr %i.dm, align 2, !tbaa !79
  %.pre164275 = load i16, ptr %i.f, align 2, !tbaa !74
  %.pre206 = zext i16 %.pre164275 to i64
  %.pre208 = mul i64 %indvars.iv, %.pre206
  %i.dn = add i64 %.pre208, 4
  %i.do = and i64 %i.dn, 4294967295
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.do
  store i16 %i.ae, ptr %i.dp, align 2, !tbaa !79
  %.pre165279 = load i16, ptr %i.f, align 2, !tbaa !74
  %.pre210 = zext i16 %.pre165279 to i64
  %.pre212 = mul i64 %indvars.iv, %.pre210
  %i.dq = add i64 %.pre212, 5
  %i.dr = and i64 %i.dq, 4294967295
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.dr
  store i16 %i.ae, ptr %i.ds, align 2, !tbaa !79
  %.pre166283 = load i16, ptr %i.f, align 2, !tbaa !74
  %.pre214 = zext i16 %.pre166283 to i64
  %.pre216 = mul i64 %indvars.iv, %.pre214
  %i.dt = add i64 %.pre216, 6
  %i.du = and i64 %i.dt, 4294967295
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.du
  store i16 %i.ae, ptr %i.dv, align 2, !tbaa !79
  %.pre167287 = load i16, ptr %i.f, align 2, !tbaa !74
  %.pre218 = zext i16 %.pre167287 to i64
  %.pre220 = mul i64 %indvars.iv, %.pre218
  %i.dw = add i64 %.pre220, 7
  %i.dx = and i64 %i.dw, 4294967295
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.dx
  store i16 %i.ae, ptr %i.dy, align 2, !tbaa !79
  %.pre168291 = load i16, ptr %i.f, align 2, !tbaa !74
  %.pre222 = zext i16 %.pre168291 to i64
  %.pre224 = mul i64 %indvars.iv, %.pre222
  %i.dz = add i64 %.pre224, 8
  %i.ea = and i64 %i.dz, 4294967295
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.ea
  store i16 %i.ae, ptr %i.eb, align 2, !tbaa !79
  %.pre169295 = load i16, ptr %i.f, align 2, !tbaa !74
  %.pre226 = zext i16 %.pre169295 to i64
  %.pre228 = mul i64 %indvars.iv, %.pre226
  %i.ec = add i64 %.pre228, 9
  %i.ed = and i64 %i.ec, 4294967295
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.ed
  store i16 %i.ae, ptr %i.ee, align 2, !tbaa !79
  %.pre170299 = load i16, ptr %i.f, align 2, !tbaa !74
  %.pre230 = zext i16 %.pre170299 to i64
  %.pre232 = mul i64 %indvars.iv, %.pre230
  %i.ef = add i64 %.pre232, 10
  %i.eg = and i64 %i.ef, 4294967295
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.eg
  store i16 %i.ae, ptr %i.eh, align 2, !tbaa !79
  %.pre171303 = load i16, ptr %i.f, align 2, !tbaa !74
  %.pre234 = zext i16 %.pre171303 to i64
  %.pre236 = mul i64 %indvars.iv, %.pre234
  %i.ei = add i64 %.pre236, 11
  %i.ej = and i64 %i.ei, 4294967295
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.ej
  store i16 %i.ae, ptr %i.ek, align 2, !tbaa !79
  %.pre172307 = load i16, ptr %i.f, align 2, !tbaa !74
  %.pre238 = zext i16 %.pre172307 to i64
  %.pre240 = mul i64 %indvars.iv, %.pre238
  %i.el = add i64 %.pre240, 12
  %i.em = and i64 %i.el, 4294967295
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.em
  store i16 %i.ae, ptr %i.en, align 2, !tbaa !79
  %.pre173311 = load i16, ptr %i.f, align 2, !tbaa !74
  %.pre242 = zext i16 %.pre173311 to i64
  %.pre244 = mul i64 %indvars.iv, %.pre242
  %i.eo = add i64 %.pre244, 13
  %i.ep = and i64 %i.eo, 4294967295
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.ep
  store i16 %i.ae, ptr %i.eq, align 2, !tbaa !79
  %.pre174315 = load i16, ptr %i.f, align 2, !tbaa !74
  %.pre246 = zext i16 %.pre174315 to i64
  %.pre248 = mul i64 %indvars.iv, %.pre246
  %i.er = add i64 %.pre248, 14
  %i.es = and i64 %i.er, 4294967295
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.es
  store i16 %i.ae, ptr %i.et, align 2, !tbaa !79
  %.pre175319 = load i16, ptr %i.f, align 2, !tbaa !74
  %.pre250 = zext i16 %.pre175319 to i32
  %.pre252 = mul nuw nsw i32 %i.bv, %.pre250
  br label %.loopexit.loopexit

bb.m:                                             ; preds = %.preheader133
  %i.eu = add nsw i32 %.0112145, -2
  %i.ev = zext i16 %.pre to i32
  %i.ew = mul nuw nsw i32 %i.bv, %i.ev            ; 2 uses
  %i.ex = add nsw i32 %i.eu, %i.ew
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [2 x i8], ptr %i.db, i64 %i.ey
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !79
  %i.fb = add nuw nsw i32 %.0112145, %i.ew
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.fc
  store i16 %i.fa, ptr %i.fd, align 2, !tbaa !79
  %.pre161 = load i16, ptr %i.f, align 2, !tbaa !74
  %i.fe = zext i16 %.pre161 to i32
  %i.ff = mul nuw nsw i32 %i.bv, %i.fe            ; 2 uses
  %i.fg = add nsw i32 %.0112145, -1
  %i.fh = add nsw i32 %i.fg, %i.ff
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [2 x i8], ptr %i.db, i64 %i.fi
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !79
  %i.fl = or disjoint i32 %.0112145, 1            ; 2 uses
  %i.fm = add nuw nsw i32 %i.fl, %i.ff
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.fn
  store i16 %i.fk, ptr %i.fo, align 2, !tbaa !79
  %.pre162 = load i16, ptr %i.f, align 2, !tbaa !74
  %i.fp = zext i16 %.pre162 to i32
  %i.fq = mul nuw nsw i32 %i.bv, %i.fp            ; 2 uses
  %i.fr = add nsw i32 %.0112145, %i.fq
  %1 = sext i32 %i.fr to i64
  %i.fs = getelementptr inbounds [2 x i8], ptr %i.db, i64 %1
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !79
  %i.fu = or disjoint i32 %.0112145, 2            ; 2 uses
  %i.fv = add nuw nsw i32 %i.fu, %i.fq
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.fw
  store i16 %i.ft, ptr %i.fx, align 2, !tbaa !79
  %.pre163 = load i16, ptr %i.f, align 2, !tbaa !74
  %i.fy = zext i16 %.pre163 to i32
  %i.fz = mul nuw nsw i32 %i.bv, %i.fy            ; 2 uses
  %i.ga = add nsw i32 %i.fl, %i.fz
  %2 = sext i32 %i.ga to i64
  %i.gb = getelementptr inbounds [2 x i8], ptr %i.db, i64 %2
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !79
  %i.gd = or disjoint i32 %.0112145, 3            ; 2 uses
  %i.ge = add nuw nsw i32 %i.gd, %i.fz
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.gf
  store i16 %i.gc, ptr %i.gg, align 2, !tbaa !79
  %.pre164 = load i16, ptr %i.f, align 2, !tbaa !74
  %i.gh = zext i16 %.pre164 to i32
  %i.gi = mul nuw nsw i32 %i.bv, %i.gh            ; 2 uses
  %i.gj = add nsw i32 %i.fu, %i.gi
  %3 = sext i32 %i.gj to i64
  %i.gk = getelementptr inbounds [2 x i8], ptr %i.db, i64 %3
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !79
  %i.gm = or disjoint i32 %.0112145, 4            ; 2 uses
  %i.gn = add nuw nsw i32 %i.gm, %i.gi
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.go
  store i16 %i.gl, ptr %i.gp, align 2, !tbaa !79
  %.pre165 = load i16, ptr %i.f, align 2, !tbaa !74
  %i.gq = zext i16 %.pre165 to i32
  %i.gr = mul nuw nsw i32 %i.bv, %i.gq            ; 2 uses
  %i.gs = add nsw i32 %i.gd, %i.gr
  %4 = sext i32 %i.gs to i64
  %i.gt = getelementptr inbounds [2 x i8], ptr %i.db, i64 %4
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !79
  %i.gv = or disjoint i32 %.0112145, 5            ; 2 uses
  %i.gw = add nuw nsw i32 %i.gv, %i.gr
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.gx
  store i16 %i.gu, ptr %i.gy, align 2, !tbaa !79
  %.pre166 = load i16, ptr %i.f, align 2, !tbaa !74
  %i.gz = zext i16 %.pre166 to i32
  %i.ha = mul nuw nsw i32 %i.bv, %i.gz            ; 2 uses
  %i.hb = add nsw i32 %i.gm, %i.ha
  %5 = sext i32 %i.hb to i64
  %i.hc = getelementptr inbounds [2 x i8], ptr %i.db, i64 %5
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !79
  %i.he = or disjoint i32 %.0112145, 6            ; 2 uses
  %i.hf = add nuw nsw i32 %i.he, %i.ha
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.hg
  store i16 %i.hd, ptr %i.hh, align 2, !tbaa !79
  %.pre167 = load i16, ptr %i.f, align 2, !tbaa !74
  %i.hi = zext i16 %.pre167 to i32
  %i.hj = mul nuw nsw i32 %i.bv, %i.hi            ; 2 uses
  %i.hk = add nsw i32 %i.gv, %i.hj
  %6 = sext i32 %i.hk to i64
  %i.hl = getelementptr inbounds [2 x i8], ptr %i.db, i64 %6
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !79
  %i.hn = or disjoint i32 %.0112145, 7            ; 2 uses
  %i.ho = add nuw nsw i32 %i.hn, %i.hj
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.hp
  store i16 %i.hm, ptr %i.hq, align 2, !tbaa !79
  %.pre168 = load i16, ptr %i.f, align 2, !tbaa !74
  %i.hr = zext i16 %.pre168 to i32
  %i.hs = mul nuw nsw i32 %i.bv, %i.hr            ; 2 uses
  %i.ht = add nsw i32 %i.he, %i.hs
  %7 = sext i32 %i.ht to i64
  %i.hu = getelementptr inbounds [2 x i8], ptr %i.db, i64 %7
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !79
  %i.hw = or disjoint i32 %.0112145, 8            ; 2 uses
  %i.hx = add nuw nsw i32 %i.hw, %i.hs
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.hy
  store i16 %i.hv, ptr %i.hz, align 2, !tbaa !79
  %.pre169 = load i16, ptr %i.f, align 2, !tbaa !74
  %i.ia = zext i16 %.pre169 to i32
  %i.ib = mul nuw nsw i32 %i.bv, %i.ia            ; 2 uses
  %i.ic = add nsw i32 %i.hn, %i.ib
  %8 = sext i32 %i.ic to i64
  %i.id = getelementptr inbounds [2 x i8], ptr %i.db, i64 %8
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !79
  %i.if = or disjoint i32 %.0112145, 9            ; 2 uses
  %i.ig = add nuw nsw i32 %i.if, %i.ib
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.ih
  store i16 %i.ie, ptr %i.ii, align 2, !tbaa !79
  %.pre170 = load i16, ptr %i.f, align 2, !tbaa !74
  %i.ij = zext i16 %.pre170 to i32
  %i.ik = mul nuw nsw i32 %i.bv, %i.ij            ; 2 uses
  %i.il = add nsw i32 %i.hw, %i.ik
  %9 = sext i32 %i.il to i64
  %i.im = getelementptr inbounds [2 x i8], ptr %i.db, i64 %9
  %i.in = load i16, ptr %i.im, align 2, !tbaa !79
  %i.io = or disjoint i32 %.0112145, 10           ; 2 uses
  %i.ip = add nuw nsw i32 %i.io, %i.ik
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.iq
  store i16 %i.in, ptr %i.ir, align 2, !tbaa !79
  %.pre171 = load i16, ptr %i.f, align 2, !tbaa !74
  %i.is = zext i16 %.pre171 to i32
  %i.it = mul nuw nsw i32 %i.bv, %i.is            ; 2 uses
  %i.iu = add nsw i32 %i.if, %i.it
  %10 = sext i32 %i.iu to i64
  %i.iv = getelementptr inbounds [2 x i8], ptr %i.db, i64 %10
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !79
  %i.ix = or disjoint i32 %.0112145, 11           ; 2 uses
  %i.iy = add nuw nsw i32 %i.ix, %i.it
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.iz
  store i16 %i.iw, ptr %i.ja, align 2, !tbaa !79
  %.pre172 = load i16, ptr %i.f, align 2, !tbaa !74
  %i.jb = zext i16 %.pre172 to i32
  %i.jc = mul nuw nsw i32 %i.bv, %i.jb            ; 2 uses
  %i.jd = add nsw i32 %i.io, %i.jc
  %11 = sext i32 %i.jd to i64
  %i.je = getelementptr inbounds [2 x i8], ptr %i.db, i64 %11
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !79
  %i.jg = or disjoint i32 %.0112145, 12           ; 2 uses
  %i.jh = add nuw nsw i32 %i.jg, %i.jc
  %i.ji = zext nneg i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.ji
  store i16 %i.jf, ptr %i.jj, align 2, !tbaa !79
  %.pre173 = load i16, ptr %i.f, align 2, !tbaa !74
  %i.jk = zext i16 %.pre173 to i32
  %i.jl = mul nuw nsw i32 %i.bv, %i.jk            ; 2 uses
  %i.jm = add nsw i32 %i.ix, %i.jl
  %12 = sext i32 %i.jm to i64
  %i.jn = getelementptr inbounds [2 x i8], ptr %i.db, i64 %12
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !79
  %i.jp = or disjoint i32 %.0112145, 13           ; 2 uses
  %i.jq = add nuw nsw i32 %i.jp, %i.jl
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.jr
  store i16 %i.jo, ptr %i.js, align 2, !tbaa !79
  %.pre174 = load i16, ptr %i.f, align 2, !tbaa !74
  %i.jt = zext i16 %.pre174 to i32
  %i.ju = mul nuw nsw i32 %i.bv, %i.jt            ; 2 uses
  %i.jv = add nsw i32 %i.jg, %i.ju
  %13 = sext i32 %i.jv to i64
  %i.jw = getelementptr inbounds [2 x i8], ptr %i.db, i64 %13
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !79
  %i.jy = or disjoint i32 %.0112145, 14
  %i.jz = add nuw nsw i32 %i.jy, %i.ju
  %i.ka = zext nneg i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.ka
  store i16 %i.jx, ptr %i.kb, align 2, !tbaa !79
  %.pre175 = load i16, ptr %i.f, align 2, !tbaa !74
  %i.kc = zext i16 %.pre175 to i32
  %i.kd = mul nuw nsw i32 %i.bv, %i.kc            ; 2 uses
  %i.ke = add nsw i32 %i.jp, %i.kd
  %14 = sext i32 %i.ke to i64
  %i.kf = getelementptr inbounds [2 x i8], ptr %i.db, i64 %14
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !79
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %..loopexit.loopexit_crit_edge, %bb.m
  %.pre-phi253 = phi i32 [ %.pre252, %..loopexit.loopexit_crit_edge ], [ %i.kd, %bb.m ]
  %i.kh = phi i16 [ %i.ae, %..loopexit.loopexit_crit_edge ], [ %i.kg, %bb.m ]
  %i.ki = or disjoint i32 %.0112145, 15
  %i.kj = add nuw nsw i32 %i.ki, %.pre-phi253
  %i.kk = zext nneg i32 %i.kj to i64
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.kk
  store i16 %i.kh, ptr %i.kl, align 2, !tbaa !79
  br label %.loopexit

.thread:                                          ; preds = %bb.j, %select.unfold
  %.1116131 = phi i32 [ %.1116, %select.unfold ], [ 3, %bb.j ] ; 3 uses
  br i1 %i.bo, label %bb.n, label %.preheader134

.preheader134:                                    ; preds = %.thread
  %i.km = zext i32 %.1116131 to i64
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN6LibRaw17samsung3_load_rawEv.motion_offset, i64 %i.km
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !89
  br label %bb.o

bb.n:                                             ; preds = %.thread
  %i.kp = tail call ptr @__cxa_allocate_exception(i64 4) #15 ; 2 uses
  store i32 5, ptr %i.kp, align 16, !tbaa !72
  tail call void @__cxa_throw(ptr nonnull %i.kp, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #16
  unreachable

bb.o:                                             ; preds = %.preheader134, %bb.s
  %.0110138 = phi i32 [ 0, %.preheader134 ], [ %i.mg, %bb.s ] ; 4 uses
  %i.kq = add nuw nsw i32 %.0110138, %i.bv
  %i.kr = and i32 %i.kq, 1                        ; 2 uses
  %.v = xor i32 %i.kr, -1
  %i.ks = add nsw i32 %i.bv, %.v                  ; 2 uses
  %i.kt = or disjoint i32 %.0110138, %.0112145    ; 2 uses
  %i.ku = xor i32 %i.kr, 1
  %i.kv = shl nuw nsw i32 %.0110138, 1
  %i.kw = and i32 %i.kv, 2
  %i.kx = sub nsw i32 1, %i.kw
  %i.ky = mul nuw nsw i32 %i.ku, %i.kx
  %i.kz = add i32 %i.ky, %i.kt
  %i.la = add i32 %i.kz, %i.ko                    ; 3 uses
  %i.lb = zext nneg i32 %i.ks to i64
  %i.lc = load i16, ptr %i.f, align 2, !tbaa !74  ; 2 uses
  %i.ld = zext i16 %i.lc to i64
  %i.le = mul nuw nsw i64 %i.ld, %i.lb
  %i.lf = sext i32 %i.la to i64
  %i.lg = add nsw i64 %i.le, %i.lf
  %i.lh = icmp slt i64 %i.lg, 0
  br i1 %i.lh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.li = tail call ptr @__cxa_allocate_exception(i64 4) #15 ; 2 uses
  store i32 5, ptr %i.li, align 16, !tbaa !72
  tail call void @__cxa_throw(ptr nonnull %i.li, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #16
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.lj = load ptr, ptr %i.aj, align 8, !tbaa !73 ; 3 uses
  %i.lk = zext i16 %i.lc to i32                   ; 2 uses
  %i.ll = mul nuw nsw i32 %i.ks, %i.lk            ; 2 uses
  %i.lm = add nsw i32 %i.ll, %i.la
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds [2 x i8], ptr %i.lj, i64 %i.ln
  %i.lp = load i16, ptr %i.lo, align 2, !tbaa !79 ; 2 uses
  switch i32 %.1116131, label %bb.s [
    i32 4, label %bb.r
    i32 2, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  %i.lq = zext i16 %i.lp to i32
  %i.lr = add nsw i32 %i.la, 2
  %i.ls = add nsw i32 %i.lr, %i.ll
  %i.lt = sext i32 %i.ls to i64
  %i.lu = getelementptr inbounds [2 x i8], ptr %i.lj, i64 %i.lt
  %i.lv = load i16, ptr %i.lu, align 2, !tbaa !79
  %i.lw = zext i16 %i.lv to i32
  %i.lx = add nuw nsw i32 %i.lq, 1
  %i.ly = add nuw nsw i32 %i.lx, %i.lw
  %i.lz = lshr i32 %i.ly, 1
  %i.ma = trunc nuw i32 %i.lz to i16
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.mb = phi i16 [ %i.ma, %bb.r ], [ %i.lp, %bb.q ]
  %i.mc = mul nuw nsw i32 %i.lk, %i.bv
  %i.md = add nuw nsw i32 %i.mc, %i.kt
  %i.me = zext nneg i32 %i.md to i64
  %i.mf = getelementptr inbounds nuw [2 x i8], ptr %i.lj, i64 %i.me
  store i16 %i.mb, ptr %i.mf, align 2, !tbaa !79
  %i.mg = add nuw nsw i32 %.0110138, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.mg, 16
  br i1 %exitcond.not, label %.loopexit, label %bb.o, !llvm.loop !181

.loopexit:                                        ; preds = %bb.s, %.loopexit.loopexit
  %.1116132 = phi i32 [ 7, %.loopexit.loopexit ], [ %.1116131, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  br i1 %.not124, label %bb.t, label %.preheader.preheader

bb.t:                                             ; preds = %.loopexit
  %i.mh = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 1, ptr noundef null)
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %.preheader.preheader, label %bb.ap

.preheader.preheader:                             ; preds = %bb.t, %.loopexit
  %i.mj = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, ptr noundef null)
  %i.mk = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, ptr noundef null)
  %i.ml = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, ptr noundef null)
  %i.mm = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 2, ptr noundef null)
  switch i32 %i.mj, label %.thread324 [
    i32 0, label %bb.aj
    i32 1, label %bb.ak
    i32 2, label %bb.al
    i32 3, label %bb.am
  ]

.preheader.1:                                     ; preds = %.thread324, %bb.an
  switch i32 %i.mk, label %.thread321 [
    i32 0, label %bb.x
    i32 1, label %bb.w
    i32 2, label %bb.v
    i32 3, label %bb.u
  ]

.thread321:                                       ; preds = %.preheader.1
  %i.mn = load i32, ptr %spec.select326.sroa.sel354.sroa.sel, align 4, !tbaa !89
  store i32 %i.mn, ptr %spec.select326.sroa.sel354, align 16, !tbaa !89
  store i32 0, ptr %spec.select326.sroa.sel354.sroa.sel, align 4, !tbaa !89
  br label %.preheader.2

bb.u:                                             ; preds = %.preheader.1
  %i.mo = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 4, ptr noundef null) ; 2 uses
  store i32 %i.mo, ptr %i.ao, align 4, !tbaa !89
  br label %bb.y

bb.v:                                             ; preds = %.preheader.1
  %i.mp = load i32, ptr %spec.select326.sroa.sel, align 16, !tbaa !89
  %i.mq = add i32 %i.mp, -1                       ; 2 uses
  store i32 %i.mq, ptr %i.ap, align 4, !tbaa !89
  br label %bb.y

bb.w:                                             ; preds = %.preheader.1
  %i.mr = load i32, ptr %spec.select326.sroa.sel345, align 16, !tbaa !89
  %i.ms = add i32 %i.mr, 1                        ; 2 uses
  store i32 %i.ms, ptr %i.aq, align 4, !tbaa !89
  br label %bb.y

bb.x:                                             ; preds = %.preheader.1
  %i.mt = load i32, ptr %spec.select326.sroa.sel348, align 16, !tbaa !89 ; 2 uses
  store i32 %i.mt, ptr %i.ar, align 4, !tbaa !89
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %i.mu = phi i32 [ %i.mt, %bb.x ], [ %i.ms, %bb.w ], [ %i.mq, %bb.v ], [ %i.mo, %bb.u ] ; 2 uses
  %i.mv = load i32, ptr %spec.select326.sroa.sel351.sroa.sel, align 4, !tbaa !89
  store i32 %i.mv, ptr %spec.select326.sroa.sel351, align 16, !tbaa !89
  store i32 %i.mu, ptr %spec.select326.sroa.sel351.sroa.sel, align 4, !tbaa !89
  %i.mw = icmp ugt i32 %i.mu, %i.al
  br i1 %i.mw, label %bb.ao, label %.preheader.2

.preheader.2:                                     ; preds = %.thread321, %bb.y
  switch i32 %i.ml, label %.thread322 [
    i32 0, label %bb.ac
    i32 1, label %bb.ab
    i32 2, label %bb.aa
    i32 3, label %bb.z
  ]

.thread322:                                       ; preds = %.preheader.2
  %i.mx = load i32, ptr %i.cc, align 4, !tbaa !89
  store i32 %i.mx, ptr %i.cb, align 8, !tbaa !89
  store i32 0, ptr %i.cc, align 4, !tbaa !89
  br label %.preheader.3

bb.z:                                             ; preds = %.preheader.2
  %i.my = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 4, ptr noundef null) ; 2 uses
  store i32 %i.my, ptr %i.as, align 8, !tbaa !89
  br label %bb.ad

bb.aa:                                            ; preds = %.preheader.2
  %i.mz = load i32, ptr %i.bw, align 8, !tbaa !89
  %i.na = add i32 %i.mz, -1                       ; 2 uses
  store i32 %i.na, ptr %i.at, align 8, !tbaa !89
  br label %bb.ad

bb.ab:                                            ; preds = %.preheader.2
  %i.nb = load i32, ptr %i.bx, align 8, !tbaa !89
  %i.nc = add i32 %i.nb, 1                        ; 2 uses
  store i32 %i.nc, ptr %i.au, align 8, !tbaa !89
  br label %bb.ad

bb.ac:                                            ; preds = %.preheader.2
  %i.nd = load i32, ptr %i.by, align 8, !tbaa !89 ; 2 uses
  store i32 %i.nd, ptr %i.av, align 8, !tbaa !89
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z
end_hunk_0
