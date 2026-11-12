Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/get_disto?download=true
inline.NumInlined: 6
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@SSIMScaleChannel:bb.a
  %i.cj = insertelement <16 x i8> poison, i8 %i.bt, i64 0
  %i.ck = insertelement <16 x i8> %i.cj, i8 %i.bu, i64 1
  %i.cl = insertelement <16 x i8> %i.ck, i8 %i.bv, i64 2
  %i.cm = insertelement <16 x i8> %i.cl, i8 %i.bw, i64 3
  %i.cn = insertelement <16 x i8> %i.cm, i8 %i.bx, i64 4
  %i.co = insertelement <16 x i8> %i.cn, i8 %i.by, i64 5
  %i.cp = insertelement <16 x i8> %i.co, i8 %i.bz, i64 6
  %i.cq = insertelement <16 x i8> %i.cp, i8 %i.ca, i64 7
  %i.cr = insertelement <16 x i8> %i.cq, i8 %i.cb, i64 8
  %i.cs = insertelement <16 x i8> %i.cr, i8 %i.cc, i64 9
  %i.ct = insertelement <16 x i8> %i.cs, i8 %i.cd, i64 10
  %i.cu = insertelement <16 x i8> %i.ct, i8 %i.ce, i64 11
  %i.cv = insertelement <16 x i8> %i.cu, i8 %i.cf, i64 12
  %i.cw = insertelement <16 x i8> %i.cv, i8 %i.cg, i64 13
  %i.cx = insertelement <16 x i8> %i.cw, i8 %i.ch, i64 14
  %i.cy = insertelement <16 x i8> %i.cx, i8 %i.ci, i64 15
  %i.cz = add nuw nsw i64 %index, %i.w            ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cz
  store <16 x i8> %i.cy, ptr %i.da, align 1, !tbaa !26
  %i.db = getelementptr i8, ptr %invariant.gep134, i64 %i.y
  %i.dc = getelementptr i8, ptr %invariant.gep134, i64 %i.aa
  %i.dd = getelementptr i8, ptr %invariant.gep134, i64 %i.ac
  %i.de = getelementptr i8, ptr %invariant.gep134, i64 %i.ae
  %i.df = getelementptr i8, ptr %invariant.gep134, i64 %i.ag
  %i.dg = getelementptr i8, ptr %invariant.gep134, i64 %i.ai
  %i.dh = getelementptr i8, ptr %invariant.gep134, i64 %i.ak
  %i.di = getelementptr i8, ptr %invariant.gep134, i64 %i.am
  %i.dj = getelementptr i8, ptr %invariant.gep134, i64 %i.ao
  %i.dk = getelementptr i8, ptr %invariant.gep134, i64 %i.aq
  %i.dl = getelementptr i8, ptr %invariant.gep134, i64 %i.as
  %i.dm = getelementptr i8, ptr %invariant.gep134, i64 %i.au
  %i.dn = getelementptr i8, ptr %invariant.gep134, i64 %i.aw
  %i.do = getelementptr i8, ptr %invariant.gep134, i64 %i.ay
  %i.dp = getelementptr i8, ptr %invariant.gep134, i64 %i.ba
  %i.dq = getelementptr i8, ptr %invariant.gep134, i64 %i.bc
  %i.dr = load i8, ptr %i.db, align 1, !tbaa !26
  %i.ds = load i8, ptr %i.dc, align 1, !tbaa !26
  %i.dt = load i8, ptr %i.dd, align 1, !tbaa !26
  %i.du = load i8, ptr %i.de, align 1, !tbaa !26
  %i.dv = load i8, ptr %i.df, align 1, !tbaa !26
  %i.dw = load i8, ptr %i.dg, align 1, !tbaa !26
  %i.dx = load i8, ptr %i.dh, align 1, !tbaa !26
  %i.dy = load i8, ptr %i.di, align 1, !tbaa !26
  %i.dz = load i8, ptr %i.dj, align 1, !tbaa !26
  %i.ea = load i8, ptr %i.dk, align 1, !tbaa !26
  %i.eb = load i8, ptr %i.dl, align 1, !tbaa !26
  %i.ec = load i8, ptr %i.dm, align 1, !tbaa !26
  %i.ed = load i8, ptr %i.dn, align 1, !tbaa !26
  %i.ee = load i8, ptr %i.do, align 1, !tbaa !26
  %i.ef = load i8, ptr %i.dp, align 1, !tbaa !26
  %i.eg = load i8, ptr %i.dq, align 1, !tbaa !26
  %i.eh = insertelement <16 x i8> poison, i8 %i.dr, i64 0
  %i.ei = insertelement <16 x i8> %i.eh, i8 %i.ds, i64 1
  %i.ej = insertelement <16 x i8> %i.ei, i8 %i.dt, i64 2
  %i.ek = insertelement <16 x i8> %i.ej, i8 %i.du, i64 3
  %i.el = insertelement <16 x i8> %i.ek, i8 %i.dv, i64 4
  %i.em = insertelement <16 x i8> %i.el, i8 %i.dw, i64 5
  %i.en = insertelement <16 x i8> %i.em, i8 %i.dx, i64 6
  %i.eo = insertelement <16 x i8> %i.en, i8 %i.dy, i64 7
  %i.ep = insertelement <16 x i8> %i.eo, i8 %i.dz, i64 8
  %i.eq = insertelement <16 x i8> %i.ep, i8 %i.ea, i64 9
  %i.er = insertelement <16 x i8> %i.eq, i8 %i.eb, i64 10
  %i.es = insertelement <16 x i8> %i.er, i8 %i.ec, i64 11
  %i.et = insertelement <16 x i8> %i.es, i8 %i.ed, i64 12
  %i.eu = insertelement <16 x i8> %i.et, i8 %i.ee, i64 13
  %i.ev = insertelement <16 x i8> %i.eu, i8 %i.ef, i64 14
  %i.ew = insertelement <16 x i8> %i.ev, i8 %i.eg, i64 15
  %i.ex = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cz
  store <16 x i8> %i.ew, ptr %i.ex, align 1, !tbaa !26
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ey = icmp eq i64 %index.next, %n.vec
  br i1 %i.ey, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !33

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !44

vec.epilog.scalar.ph.preheader:                   ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec7, %vec.epilog.vector.body ] ; 6 uses
  %i.ez = sub nsw i64 %i.l, %indvars.iv.ph
  %xtraiter = and i64 %i.ez, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.fa = shl nuw nsw i64 %indvars.iv.ph, 2       ; 2 uses
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %i.fa
  %i.fb = load i8, ptr %gep.prol, align 1, !tbaa !26
  %i.fc = add nuw nsw i64 %indvars.iv.ph, %i.w    ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.fc
  store i8 %i.fb, ptr %i.fd, align 1, !tbaa !26
  %gep135.prol = getelementptr i8, ptr %invariant.gep134, i64 %i.fa
  %i.fe = load i8, ptr %gep135.prol, align 1, !tbaa !26
  %i.ff = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.fc
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !26
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.fg = icmp eq i64 %indvars.iv.ph, %i.u
  br i1 %i.fg, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ] ; 10 uses
  %i.fh = shl nuw nsw i64 %index8, 2              ; 2 uses
  %i.fi = shl i64 %index8, 2
  %i.fj = add i64 %i.fi, 4                        ; 2 uses
  %i.fk = shl i64 %index8, 2
  %i.fl = add i64 %i.fk, 8                        ; 2 uses
  %i.fm = shl i64 %index8, 2
  %i.fn = add i64 %i.fm, 12                       ; 2 uses
  %i.fo = shl i64 %index8, 2
  %i.fp = add i64 %i.fo, 16                       ; 2 uses
  %i.fq = shl i64 %index8, 2
  %i.fr = add i64 %i.fq, 20                       ; 2 uses
  %i.fs = shl i64 %index8, 2
  %i.ft = add i64 %i.fs, 24                       ; 2 uses
  %i.fu = shl i64 %index8, 2
  %i.fv = add i64 %i.fu, 28                       ; 2 uses
  %i.fw = getelementptr i8, ptr %invariant.gep, i64 %i.fh
  %i.fx = getelementptr i8, ptr %invariant.gep, i64 %i.fj
  %i.fy = getelementptr i8, ptr %invariant.gep, i64 %i.fl
  %i.fz = getelementptr i8, ptr %invariant.gep, i64 %i.fn
  %i.ga = getelementptr i8, ptr %invariant.gep, i64 %i.fp
  %i.gb = getelementptr i8, ptr %invariant.gep, i64 %i.fr
  %i.gc = getelementptr i8, ptr %invariant.gep, i64 %i.ft
  %i.gd = getelementptr i8, ptr %invariant.gep, i64 %i.fv
  %i.ge = load i8, ptr %i.fw, align 1, !tbaa !26
  %i.gf = load i8, ptr %i.fx, align 1, !tbaa !26
  %i.gg = load i8, ptr %i.fy, align 1, !tbaa !26
  %i.gh = load i8, ptr %i.fz, align 1, !tbaa !26
  %i.gi = load i8, ptr %i.ga, align 1, !tbaa !26
  %i.gj = load i8, ptr %i.gb, align 1, !tbaa !26
  %i.gk = load i8, ptr %i.gc, align 1, !tbaa !26
  %i.gl = load i8, ptr %i.gd, align 1, !tbaa !26
  %i.gm = insertelement <8 x i8> poison, i8 %i.ge, i64 0
  %i.gn = insertelement <8 x i8> %i.gm, i8 %i.gf, i64 1
  %i.go = insertelement <8 x i8> %i.gn, i8 %i.gg, i64 2
  %i.gp = insertelement <8 x i8> %i.go, i8 %i.gh, i64 3
  %i.gq = insertelement <8 x i8> %i.gp, i8 %i.gi, i64 4
  %i.gr = insertelement <8 x i8> %i.gq, i8 %i.gj, i64 5
  %i.gs = insertelement <8 x i8> %i.gr, i8 %i.gk, i64 6
  %i.gt = insertelement <8 x i8> %i.gs, i8 %i.gl, i64 7
  %i.gu = add nuw nsw i64 %index8, %i.w           ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.gu
  store <8 x i8> %i.gt, ptr %i.gv, align 1, !tbaa !26
  %i.gw = getelementptr i8, ptr %invariant.gep134, i64 %i.fh
  %i.gx = getelementptr i8, ptr %invariant.gep134, i64 %i.fj
  %i.gy = getelementptr i8, ptr %invariant.gep134, i64 %i.fl
  %i.gz = getelementptr i8, ptr %invariant.gep134, i64 %i.fn
  %i.ha = getelementptr i8, ptr %invariant.gep134, i64 %i.fp
  %i.hb = getelementptr i8, ptr %invariant.gep134, i64 %i.fr
  %i.hc = getelementptr i8, ptr %invariant.gep134, i64 %i.ft
  %i.hd = getelementptr i8, ptr %invariant.gep134, i64 %i.fv
  %i.he = load i8, ptr %i.gw, align 1, !tbaa !26
  %i.hf = load i8, ptr %i.gx, align 1, !tbaa !26
  %i.hg = load i8, ptr %i.gy, align 1, !tbaa !26
  %i.hh = load i8, ptr %i.gz, align 1, !tbaa !26
  %i.hi = load i8, ptr %i.ha, align 1, !tbaa !26
  %i.hj = load i8, ptr %i.hb, align 1, !tbaa !26
  %i.hk = load i8, ptr %i.hc, align 1, !tbaa !26
  %i.hl = load i8, ptr %i.hd, align 1, !tbaa !26
  %i.hm = insertelement <8 x i8> poison, i8 %i.he, i64 0
  %i.hn = insertelement <8 x i8> %i.hm, i8 %i.hf, i64 1
  %i.ho = insertelement <8 x i8> %i.hn, i8 %i.hg, i64 2
  %i.hp = insertelement <8 x i8> %i.ho, i8 %i.hh, i64 3
  %i.hq = insertelement <8 x i8> %i.hp, i8 %i.hi, i64 4
  %i.hr = insertelement <8 x i8> %i.hq, i8 %i.hj, i64 5
  %i.hs = insertelement <8 x i8> %i.hr, i8 %i.hk, i64 6
  %i.ht = insertelement <8 x i8> %i.hs, i8 %i.hl, i64 7
  %i.hu = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.gu
  store <8 x i8> %i.ht, ptr %i.hu, align 1, !tbaa !26
  %index.next9 = add nuw i64 %index8, 8           ; 2 uses
  %i.hv = icmp eq i64 %index.next9, %n.vec7
  br i1 %i.hv, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body, !llvm.loop !34

.preheader81:                                     ; preds = %._crit_edge, %.preheader83
  br i1 %i.i, label %.preheader.lr.ph, label %._crit_edge96

.preheader.lr.ph:                                 ; preds = %.preheader81
  %i.hw = add nsw i32 %5, -1
  %i.hx = add i32 %4, -1                          ; 2 uses
  %i.hy = sext i32 %4 to i64                      ; 2 uses
  br i1 %i.j, label %.preheader.us.preheader, label %._crit_edge96

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.hz = sext i32 %1 to i64
  %wide.trip.count120 = zext nneg i32 %5 to i64
  %wide.trip.count115 = zext nneg i32 %4 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge93.us
  %indvars.iv117 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next118, %._crit_edge93.us ] ; 5 uses
  %.06595.us = phi i32 [ 0, %.preheader.us.preheader ], [ %.2.us, %._crit_edge93.us ]
  %i.ia = trunc nuw nsw i64 %indvars.iv117 to i32
  %i.ib = tail call i32 @llvm.smax.i32(i32 %i.ia, i32 3) ; 2 uses
  %i.ic = add nsw i32 %i.ib, -3
  %i.id = trunc i64 %indvars.iv117 to i32
  %i.ie = add i32 %i.id, 3
  %i.if = tail call i32 @llvm.smin.i32(i32 %i.ie, i32 %i.hw)
  %i.ig = mul nuw nsw i32 %i.ic, %4
  %i.ih = zext nneg i32 %i.ig to i64              ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ih
  %i.ik = zext nneg i32 %i.ib to i64
  %i.il = add nsw i64 %i.ik, -3
  %i.im = zext nneg i32 %i.if to i64
  %i.in = mul nsw i64 %indvars.iv117, %i.hz
  %invariant.gep136 = getelementptr i8, ptr %0, i64 %i.in
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %SSIMGetClipped.exit.us
  %indvars.iv112 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next113, %SSIMGetClipped.exit.us ] ; 9 uses
  %.192.us = phi i32 [ %.06595.us, %.preheader.us ], [ %.2.us, %SSIMGetClipped.exit.us ] ; 2 uses
  %i.io = trunc i64 %indvars.iv112 to i32
  %i.ip = add i32 %i.io, 3
  %smin = tail call i32 @llvm.smin.i32(i32 %i.ip, i32 %i.hx)
  %i.iq = add i32 %smin, 1
  %i.ir = zext i32 %i.iq to i64
  %i.is = add nuw nsw i64 %i.ir, 2
  %i.it = trunc i64 %indvars.iv112 to i32
  %smax = tail call i32 @llvm.smax.i32(i32 %i.it, i32 3) ; 2 uses
  %i.iu = zext nneg i32 %smax to i64
  %i.iv = sub nsw i64 %i.is, %i.iu                ; 2 uses
  %i.iw = sub nsw i64 17179869181, %indvars.iv112
  %i.ix = trunc i64 %i.iw to i34
  %i.iy = zext nneg i32 %smax to i34
  %i.iz = add i34 %i.ix, %i.iy
  %i.ja = shl nsw i34 %i.iz, 2
  %i.jb = add nsw i34 %i.ja, 12                   ; 2 uses
  %i.jc = trunc nuw nsw i64 %indvars.iv112 to i32
  %i.jd = tail call i32 @llvm.smax.i32(i32 %i.jc, i32 3) ; 2 uses
  %i.je = trunc i64 %indvars.iv112 to i32
  %i.jf = add i32 %i.je, 3
  %i.jg = tail call i32 @llvm.smin.i32(i32 %i.jf, i32 %i.hx) ; 2 uses
  %i.jh = add nsw i32 %i.jd, -3
  %.not5468.i.us = icmp sgt i32 %i.jh, %i.jg
  br i1 %.not5468.i.us, label %._crit_edge91.i.us, label %.preheader.preheader.i.us

.preheader.preheader.i.us:                        ; preds = %bb.b
  %i.ji = zext nneg i32 %i.jd to i64              ; 2 uses
  %i.jj = add nsw i64 %i.ji, -3                   ; 4 uses
  %i.jk = add nuw i32 %i.jg, 1
  %wide.trip.count.i.us = zext i32 %i.jk to i64   ; 2 uses
  %i.jl = add nuw nsw i64 %wide.trip.count.i.us, 3
  %i.jm = sub nsw i64 %i.jl, %i.ji                ; 3 uses
  %min.iters.check10 = icmp ult i64 %i.jm, 8
  %i.jn = trunc i64 %i.iv to i34
  %mul.result = shl i34 %i.jn, 2
  %i.jo = add i34 %i.jb, %mul.result
  %i.jp = icmp slt i34 %i.jo, %i.jb
  %i.jq = icmp ugt i64 %i.iv, 4294967295
  %i.jr = or i1 %i.jp, %i.jq
  %n.vec12 = and i64 %i.jm, -4                    ; 3 uses
  %i.js = add nsw i64 %i.jj, %n.vec12
  %cmp.n = icmp eq i64 %i.jm, %n.vec12
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %._crit_edge.i.us, %.preheader.preheader.i.us
  %indvars.iv112.i.us = phi i64 [ %i.il, %.preheader.preheader.i.us ], [ %indvars.iv.next113.i.us, %._crit_edge.i.us ] ; 3 uses
  %.090.i.us = phi ptr [ %i.ii, %.preheader.preheader.i.us ], [ %i.ma, %._crit_edge.i.us ] ; 3 uses
  %.05189.i.us = phi ptr [ %i.ij, %.preheader.preheader.i.us ], [ %i.mb, %._crit_edge.i.us ] ; 3 uses
  %.sroa.18.087.i.us = phi i32 [ 0, %.preheader.preheader.i.us ], [ %.lcssa, %._crit_edge.i.us ] ; 3 uses
  %.sroa.15.086.i.us = phi i32 [ 0, %.preheader.preheader.i.us ], [ %.lcssa1, %._crit_edge.i.us ] ; 3 uses
  %.sroa.12.085.i.us = phi i32 [ 0, %.preheader.preheader.i.us ], [ %.lcssa2, %._crit_edge.i.us ] ; 3 uses
  %.sroa.9.084.i.us = phi i32 [ 0, %.preheader.preheader.i.us ], [ %.lcssa3, %._crit_edge.i.us ] ; 3 uses
  %.sroa.6.083.i.us = phi i32 [ 0, %.preheader.preheader.i.us ], [ %.lcssa4, %._crit_edge.i.us ] ; 3 uses
  %.sroa.0.082.i.us = phi i32 [ 0, %.preheader.preheader.i.us ], [ %.lcssa5, %._crit_edge.i.us ] ; 3 uses
  %reass.sub = sub i64 %indvars.iv112.i.us, %indvars.iv117
  %.reass.reass.reass.i.us = shl i64 %reass.sub, 32
  %sext = add i64 %.reass.reass.reass.i.us, 12884901888
  %i.jt = ashr exact i64 %sext, 30
  %i.ju = getelementptr inbounds i8, ptr @kWeight, i64 %i.jt
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !17 ; 2 uses
  br i1 %min.iters.check10, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.i.us
  br i1 %i.jr, label %scalar.ph.preheader, label %vector.ph11

vector.ph11:                                      ; preds = %vector.scevcheck
  %i.jw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.18.087.i.us, i64 0
  %i.jx = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.15.086.i.us, i64 0
  %i.jy = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.12.085.i.us, i64 0
  %i.jz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.9.084.i.us, i64 0
  %i.ka = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.6.083.i.us, i64 0
  %i.kb = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.0.082.i.us, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.jv, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body13

vector.body13:                                    ; preds = %vector.body13, %vector.ph11
  %index14 = phi i64 [ 0, %vector.ph11 ], [ %index.next22, %vector.body13 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.jw, %vector.ph11 ], [ %i.kx, %vector.body13 ]
  %vec.phi15 = phi <4 x i32> [ %i.jx, %vector.ph11 ], [ %i.kv, %vector.body13 ]
  %vec.phi16 = phi <4 x i32> [ %i.jy, %vector.ph11 ], [ %i.kt, %vector.body13 ]
  %vec.phi17 = phi <4 x i32> [ %i.jz, %vector.ph11 ], [ %i.kr, %vector.body13 ]
  %vec.phi18 = phi <4 x i32> [ %i.ka, %vector.ph11 ], [ %i.kp, %vector.body13 ]
  %vec.phi19 = phi <4 x i32> [ %i.kb, %vector.ph11 ], [ %i.kn, %vector.body13 ]
  %i.kc = add nuw i64 %i.jj, %index14             ; 3 uses
  %i.kd = sub i64 %i.kc, %indvars.iv112
  %i.ke = shl i64 %i.kd, 32
  %i.kf = add i64 %i.ke, 12884901888
  %i.kg = ashr exact i64 %i.kf, 30
  %i.kh = getelementptr inbounds i8, ptr @kWeight, i64 %i.kg
  %wide.load = load <4 x i32>, ptr %i.kh, align 4, !tbaa !17
  %i.ki = mul <4 x i32> %wide.load, %broadcast.splat ; 3 uses
  %i.kj = getelementptr inbounds i8, ptr %.090.i.us, i64 %i.kc
  %wide.load20 = load <4 x i8>, ptr %i.kj, align 1, !tbaa !26
  %i.kk = zext <4 x i8> %wide.load20 to <4 x i32> ; 2 uses
  %i.kl = getelementptr inbounds i8, ptr %.05189.i.us, i64 %i.kc
  %wide.load21 = load <4 x i8>, ptr %i.kl, align 1, !tbaa !26
  %i.km = zext <4 x i8> %wide.load21 to <4 x i32> ; 3 uses
  %i.kn = add <4 x i32> %i.ki, %vec.phi19         ; 2 uses
  %i.ko = mul <4 x i32> %i.ki, %i.kk              ; 3 uses
  %i.kp = add <4 x i32> %i.ko, %vec.phi18         ; 2 uses
  %i.kq = mul <4 x i32> %i.ki, %i.km              ; 2 uses
  %i.kr = add <4 x i32> %i.kq, %vec.phi17         ; 2 uses
  %i.ks = mul <4 x i32> %i.ko, %i.kk
  %i.kt = add <4 x i32> %i.ks, %vec.phi16         ; 2 uses
  %i.ku = mul <4 x i32> %i.ko, %i.km
  %i.kv = add <4 x i32> %i.ku, %vec.phi15         ; 2 uses
  %i.kw = mul <4 x i32> %i.kq, %i.km
  %i.kx = add <4 x i32> %i.kw, %vec.phi           ; 2 uses
  %index.next22 = add nuw i64 %index14, 4         ; 2 uses
  %i.ky = icmp eq i64 %index.next22, %n.vec12
  br i1 %i.ky, label %middle.block23, label %vector.body13, !llvm.loop !35

middle.block23:                                   ; preds = %vector.body13
  %i.kz = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.kx) ; 2 uses
  %i.la = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.kv) ; 2 uses
  %i.lb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.kt) ; 2 uses
  %i.lc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.kr) ; 2 uses
  %i.ld = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.kp) ; 2 uses
  %i.le = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.kn) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.i.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader.i.us, %middle.block23
  %indvars.iv.i.us.ph = phi i64 [ %i.jj, %vector.scevcheck ], [ %i.jj, %.preheader.i.us ], [ %i.js, %middle.block23 ]
  %.sroa.18.174.i.us.ph = phi i32 [ %.sroa.18.087.i.us, %vector.scevcheck ], [ %.sroa.18.087.i.us, %.preheader.i.us ], [ %i.kz, %middle.block23 ]
  %.sroa.15.173.i.us.ph = phi i32 [ %.sroa.15.086.i.us, %vector.scevcheck ], [ %.sroa.15.086.i.us, %.preheader.i.us ], [ %i.la, %middle.block23 ]
  %.sroa.12.172.i.us.ph = phi i32 [ %.sroa.12.085.i.us, %vector.scevcheck ], [ %.sroa.12.085.i.us, %.preheader.i.us ], [ %i.lb, %middle.block23 ]
  %.sroa.9.171.i.us.ph = phi i32 [ %.sroa.9.084.i.us, %vector.scevcheck ], [ %.sroa.9.084.i.us, %.preheader.i.us ], [ %i.lc, %middle.block23 ]
  %.sroa.6.170.i.us.ph = phi i32 [ %.sroa.6.083.i.us, %vector.scevcheck ], [ %.sroa.6.083.i.us, %.preheader.i.us ], [ %i.ld, %middle.block23 ]
  %.sroa.0.169.i.us.ph = phi i32 [ %.sroa.0.082.i.us, %vector.scevcheck ], [ %.sroa.0.082.i.us, %.preheader.i.us ], [ %i.le, %middle.block23 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %scalar.ph ], [ %indvars.iv.i.us.ph, %scalar.ph.preheader ] ; 4 uses
  %.sroa.18.174.i.us = phi i32 [ %i.lz, %scalar.ph ], [ %.sroa.18.174.i.us.ph, %scalar.ph.preheader ]
  %.sroa.15.173.i.us = phi i32 [ %i.lx, %scalar.ph ], [ %.sroa.15.173.i.us.ph, %scalar.ph.preheader ]
  %.sroa.12.172.i.us = phi i32 [ %i.lv, %scalar.ph ], [ %.sroa.12.172.i.us.ph, %scalar.ph.preheader ]
  %.sroa.9.171.i.us = phi i32 [ %i.lt, %scalar.ph ], [ %.sroa.9.171.i.us.ph, %scalar.ph.preheader ]
  %.sroa.6.170.i.us = phi i32 [ %i.lr, %scalar.ph ], [ %.sroa.6.170.i.us.ph, %scalar.ph.preheader ]
  %.sroa.0.169.i.us = phi i32 [ %i.lp, %scalar.ph ], [ %.sroa.0.169.i.us.ph, %scalar.ph.preheader ]
  %reass.sub99 = sub i64 %indvars.iv.i.us, %indvars.iv112
  %.reass.i.us = shl i64 %reass.sub99, 32
  %sext128 = add i64 %.reass.i.us, 12884901888
  %i.lf = ashr exact i64 %sext128, 30
  %i.lg = getelementptr inbounds i8, ptr @kWeight, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !17
  %i.li = mul i32 %i.lh, %i.jv                    ; 3 uses
  %i.lj = getelementptr inbounds i8, ptr %.090.i.us, i64 %indvars.iv.i.us
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !26
  %i.ll = zext i8 %i.lk to i32                    ; 2 uses
  %i.lm = getelementptr inbounds i8, ptr %.05189.i.us, i64 %indvars.iv.i.us
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !26
  %i.lo = zext i8 %i.ln to i32                    ; 3 uses
  %i.lp = add i32 %i.li, %.sroa.0.169.i.us        ; 2 uses
  %i.lq = mul i32 %i.li, %i.ll                    ; 3 uses
  %i.lr = add i32 %i.lq, %.sroa.6.170.i.us        ; 2 uses
  %i.ls = mul i32 %i.li, %i.lo                    ; 2 uses
  %i.lt = add i32 %i.ls, %.sroa.9.171.i.us        ; 2 uses
  %i.lu = mul i32 %i.lq, %i.ll
  %i.lv = add i32 %i.lu, %.sroa.12.172.i.us       ; 2 uses
  %i.lw = mul i32 %i.lq, %i.lo
  %i.lx = add i32 %i.lw, %.sroa.15.173.i.us       ; 2 uses
  %i.ly = mul i32 %i.ls, %i.lo
  %i.lz = add i32 %i.ly, %.sroa.18.174.i.us       ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us, label %._crit_edge.i.us, label %scalar.ph, !llvm.loop !36

._crit_edge.i.us:                                 ; preds = %scalar.ph, %middle.block23
  %.lcssa5 = phi i32 [ %i.le, %middle.block23 ], [ %i.lp, %scalar.ph ] ; 2 uses
  %.lcssa4 = phi i32 [ %i.ld, %middle.block23 ], [ %i.lr, %scalar.ph ] ; 2 uses
  %.lcssa3 = phi i32 [ %i.lc, %middle.block23 ], [ %i.lt, %scalar.ph ] ; 2 uses
  %.lcssa2 = phi i32 [ %i.lb, %middle.block23 ], [ %i.lv, %scalar.ph ] ; 2 uses
  %.lcssa1 = phi i32 [ %i.la, %middle.block23 ], [ %i.lx, %scalar.ph ] ; 2 uses
  %.lcssa = phi i32 [ %i.kz, %middle.block23 ], [ %i.lz, %scalar.ph ] ; 2 uses
  %indvars.iv.next113.i.us = add nuw nsw i64 %indvars.iv112.i.us, 1
  %i.ma = getelementptr inbounds nuw i8, ptr %.090.i.us, i64 %i.hy
  %i.mb = getelementptr inbounds nuw i8, ptr %.05189.i.us, i64 %i.hy
  %.not.not.i.us = icmp samesign ult i64 %indvars.iv112.i.us, %i.im
  br i1 %.not.not.i.us, label %.preheader.i.us, label %._crit_edge91.loopexit105.i.us, !llvm.loop !37

._crit_edge91.loopexit105.i.us:                   ; preds = %._crit_edge.i.us
  %i.mc = zext i32 %.lcssa4 to i64
  %i.md = zext i32 %.lcssa3 to i64
  %i.me = zext i32 %.lcssa1 to i64
  %i.mf = zext i32 %.lcssa2 to i64
  %i.mg = zext i32 %.lcssa to i64
  br label %._crit_edge91.i.us

._crit_edge91.i.us:                               ; preds = %._crit_edge91.loopexit105.i.us, %bb.b
  %.sroa.0.0.lcssa.i.us = phi i32 [ 0, %bb.b ], [ %.lcssa5, %._crit_edge91.loopexit105.i.us ] ; 3 uses
  %.sroa.6.0.lcssa.i.us = phi i64 [ 0, %bb.b ], [ %i.mc, %._crit_edge91.loopexit105.i.us ] ; 3 uses
  %.sroa.9.0.lcssa.i.us = phi i64 [ 0, %bb.b ], [ %i.md, %._crit_edge91.loopexit105.i.us ] ; 3 uses
  %.sroa.12.0.lcssa.i.us = phi i64 [ 0, %bb.b ], [ %i.mf, %._crit_edge91.loopexit105.i.us ]
  %.sroa.15.0.lcssa.i.us = phi i64 [ 0, %bb.b ], [ %i.me, %._crit_edge91.loopexit105.i.us ]
  %.sroa.18.0.lcssa.i.us = phi i64 [ 0, %bb.b ], [ %i.mg, %._crit_edge91.loopexit105.i.us ]
  %i.mh = mul i32 %.sroa.0.0.lcssa.i.us, %.sroa.0.0.lcssa.i.us ; 3 uses
  %i.mi = shl i32 %i.mh, 6
  %i.mj = mul nuw i64 %.sroa.6.0.lcssa.i.us, %.sroa.6.0.lcssa.i.us
  %i.mk = mul nuw i64 %.sroa.9.0.lcssa.i.us, %.sroa.9.0.lcssa.i.us
  %i.ml = add i64 %i.mk, %i.mj                    ; 3 uses
  %i.mm = zext i32 %i.mi to i64
  %.not.i.i.us = icmp ult i64 %i.ml, %i.mm
  br i1 %.not.i.i.us, label %SSIMGetClipped.exit.us, label %bb.c

bb.c:                                             ; preds = %._crit_edge91.i.us
  %i.mn = mul i32 %i.mh, 60
  %i.mo = mul i32 %i.mh, 20
  %i.mp = mul nuw nsw i64 %.sroa.9.0.lcssa.i.us, %.sroa.6.0.lcssa.i.us ; 2 uses
  %i.mq = zext i32 %.sroa.0.0.lcssa.i.us to i64   ; 2 uses
  %i.mr = mul nuw nsw i64 %.sroa.15.0.lcssa.i.us, %i.mq
  %i.ms = sub nsw i64 %i.mr, %i.mp
  %i.mt = tail call i64 @llvm.smax.i64(i64 %i.ms, i64 0)
  %i.mu = shl nuw i64 %i.mt, 1
  %i.mv = zext i32 %i.mn to i64                   ; 2 uses
  %i.mw = add i64 %i.mu, %i.mv
  %i.mx = lshr i64 %i.mw, 8
  %reass.add.i.i.us = add nuw nsw i64 %.sroa.18.0.lcssa.i.us, %.sroa.12.0.lcssa.i.us
  %reass.mul.i.i.us = mul i64 %reass.add.i.i.us, %i.mq
  %i.my = sub i64 %i.mv, %i.ml
  %i.mz = add i64 %i.my, %reass.mul.i.i.us
  %i.na = lshr i64 %i.mz, 8
  %i.nb = shl nuw nsw i64 %i.mp, 1
  %i.nc = zext i32 %i.mo to i64                   ; 2 uses
end_hunk_0
