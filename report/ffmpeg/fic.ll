Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/fic?download=true
inline.NumInlined: 9
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@fic_decode_slice:bb.a
  %i.ck = shl nsw i32 %i.ce, 3
  %i.cl = sext i32 %i.ck to i64
  %.pre = load i32, ptr %i.p, align 4, !tbaa !74
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.cm = phi i32 [ %.pre, %.preheader.lr.ph ], [ %i.tn, %._crit_edge ] ; 2 uses
  %.099 = phi ptr [ %i.ci, %.preheader.lr.ph ], [ %i.to, %._crit_edge ] ; 2 uses
  %.04198 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.tp, %._crit_edge ]
  %.sroa.5.197 = phi i32 [ %.sroa.5.0101, %.preheader.lr.ph ], [ %.sroa.5.2.lcssa, %._crit_edge ] ; 2 uses
  %i.cn = ashr i32 %i.cm, %i.bx
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ 0, %.preheader ] ; 2 uses
  %.sroa.5.294 = phi i32 [ %.sroa.5.6, %.loopexit ], [ %.sroa.5.197, %.preheader ] ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.099, i64 %indvars.iv
  %i.cq = sub nsw i32 %.013.i.i, %.sroa.5.294
  %i.cr = icmp slt i32 %i.cq, 8
  br i1 %i.cr, label %.loopexit85, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.cs = lshr i32 %.sroa.5.294, 3
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !36
  %spec.select.i.i = add i32 %.sroa.5.294, 1      ; 3 uses
  %i.cw = zext i8 %i.cv to i32
  %i.cx = and i32 %.sroa.5.294, 7
  %i.cy = lshr exact i32 128, %i.cx
  %i.cz = and i32 %i.cy, %i.cw
  %.not.i = icmp eq i32 %i.cz, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.q, align 4, !tbaa !33
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %1, i8 0, i64 128, i1 false)
  %i.da = lshr i32 %spec.select.i.i, 3
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 1, !tbaa !36
  %i.de = tail call i32 @llvm.bswap.i32(i32 %i.dd)
  %i.df = and i32 %spec.select.i.i, 7
  %i.dg = shl i32 %i.de, %i.df                    ; 2 uses
  %i.dh = lshr i32 %i.dg, 25                      ; 2 uses
  %i.di = add i32 %.sroa.5.294, 8
  %i.dj = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.di) ; 2 uses
  %i.dk = icmp ugt i32 %i.dg, -2113929217
  br i1 %i.dk, label %.loopexit85, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %.not54.i = icmp eq i32 %i.dh, 0
  br i1 %.not54.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.dh to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i
  %i.dl = phi i32 [ %i.dj, %.lr.ph.i ], [ %.sroa.5.4, %bb.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %i.dm = lshr i32 %i.dl, 3
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 1, !tbaa !36
  %i.dq = tail call i32 @llvm.bswap.i32(i32 %i.dp)
  %i.dr = and i32 %i.dl, 7
  %i.ds = shl i32 %i.dq, %i.dr                    ; 5 uses
  %i.dt = icmp ugt i32 %i.ds, 134217727
  br i1 %i.dt, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.du = lshr i32 %i.ds, 23
  %i.dv = zext nneg i32 %i.du to i64              ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr @ff_golomb_vlc_len, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !36
  %i.dy = zext i8 %i.dx to i32
  %i.dz = add i32 %i.dl, %i.dy
  %..i.i = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.dz)
  %i.ea = getelementptr inbounds nuw i8, ptr @ff_se_golomb_vlc_code, i64 %i.dv
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !36
  %i.ec = sext i8 %i.eb to i32
  br label %get_se_golomb.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ed = icmp samesign ugt i32 %i.ds, 65535      ; 2 uses
  %i.ee = lshr i32 %i.ds, 16
  %spec.select.i.i.i = select i1 %i.ed, i32 %i.ee, i32 %i.ds ; 3 uses
  %spec.select11.i.i.i = select i1 %i.ed, i32 16, i32 0 ; 2 uses
  %.not.i.i.i = icmp samesign ult i32 %spec.select.i.i.i, 256 ; 2 uses
  %i.ef = lshr i32 %spec.select.i.i.i, 8
  %i.eg = or disjoint i32 %spec.select11.i.i.i, 8
  %.110.i.i.i = select i1 %.not.i.i.i, i32 %spec.select.i.i.i, i32 %i.ef
  %.1.i.i.i = select i1 %.not.i.i.i, i32 %spec.select11.i.i.i, i32 %i.eg
  %i.eh = zext nneg i32 %.110.i.i.i to i64
  %i.ei = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !36
  %i.ek = zext i8 %i.ej to i32
  %i.el = add nuw nsw i32 %.1.i.i.i, %i.ek        ; 3 uses
  %reass.sub.i.i = add i32 %i.dl, 31
  %i.em = sub i32 %reass.sub.i.i, %i.el
  %.50.i.i = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.em) ; 3 uses
  %i.en = lshr i32 %.50.i.i, 3
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 1, !tbaa !36
  %i.er = tail call i32 @llvm.bswap.i32(i32 %i.eq)
  %i.es = and i32 %.50.i.i, 7
  %i.et = shl i32 %i.er, %i.es
  %i.eu = lshr i32 %i.et, %i.el                   ; 2 uses
  %reass.sub = sub nsw i32 %.50.i.i, %i.el
  %i.ev = add i32 %reass.sub, 32
  %i.ew = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.ev)
  %i.ex = and i32 %i.eu, 1                        ; 2 uses
  %i.ey = sub nsw i32 0, %i.ex
  %i.ez = lshr i32 %i.eu, 1
  %i.fa = xor i32 %i.ez, %i.ey
  %i.fb = add i32 %i.fa, %i.ex
  br label %get_se_golomb.exit.i

get_se_golomb.exit.i:                             ; preds = %bb.h, %bb.g
  %.sroa.5.4 = phi i32 [ %..i.i, %bb.g ], [ %i.ew, %bb.h ] ; 2 uses
  %.0.i.i48 = phi i32 [ %i.ec, %bb.g ], [ %i.fb, %bb.h ] ; 2 uses
  %i.fc = add i32 %.0.i.i48, 2048
  %or.cond.i49 = icmp ult i32 %i.fc, 4097
  br i1 %or.cond.i49, label %bb.i, label %.loopexit85

bb.i:                                             ; preds = %get_se_golomb.exit.i
  %i.fd = load ptr, ptr %i.r, align 8, !tbaa !38
  %i.fe = getelementptr inbounds nuw i8, ptr @ff_zigzag_direct, i64 %indvars.iv.i
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !36
  %i.fg = zext i8 %i.ff to i64                    ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !36
  %i.fj = zext i8 %i.fi to i32
  %i.fk = mul nsw i32 %.0.i.i48, %i.fj
  %i.fl = trunc i32 %i.fk to i16
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.fg
  store i16 %i.fl, ptr %i.fm, align 2, !tbaa !76
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.f, !llvm.loop !68

._crit_edge.loopexit.i:                           ; preds = %bb.i
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 16, !tbaa !76
  %.pre58.i = load i16, ptr %.phi.trans.insert57.i, align 16, !tbaa !76
  %.pre60.i = load i16, ptr %.phi.trans.insert59.i, align 16, !tbaa !76
  %.pre62.i = load i16, ptr %.phi.trans.insert61.i, align 16, !tbaa !76
  %.pre64.i = load i16, ptr %.phi.trans.insert63.i, align 16, !tbaa !76
  %.pre66.i = load i16, ptr %.phi.trans.insert65.i, align 16, !tbaa !76
  %.pre67.i = load i16, ptr %1, align 16, !tbaa !76
  %.pre69.i = load i16, ptr %.phi.trans.insert68.i, align 16, !tbaa !76
  %i.fn = sext i16 %.pre.i to i32
  %i.fo = sext i16 %.pre58.i to i32
  %i.fp = sext i16 %.pre60.i to i32
  %i.fq = sext i16 %.pre62.i to i32
  %i.fr = sext i16 %.pre64.i to i32
  %i.fs = sext i16 %.pre66.i to i32
  %i.ft = sext i16 %.pre67.i to i32
  %i.fu = sext i16 %.pre69.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.sroa.5.5 = phi i32 [ %i.dj, %.preheader.i ], [ %.sroa.5.4, %._crit_edge.loopexit.i ]
  %i.fv = phi i32 [ 0, %.preheader.i ], [ %i.fu, %._crit_edge.loopexit.i ] ; 2 uses
  %i.fw = phi i32 [ 0, %.preheader.i ], [ %i.ft, %._crit_edge.loopexit.i ] ; 2 uses
  %i.fx = phi i32 [ 0, %.preheader.i ], [ %i.fs, %._crit_edge.loopexit.i ] ; 2 uses
  %i.fy = phi i32 [ 0, %.preheader.i ], [ %i.fr, %._crit_edge.loopexit.i ] ; 2 uses
  %i.fz = phi i32 [ 0, %.preheader.i ], [ %i.fq, %._crit_edge.loopexit.i ] ; 2 uses
  %i.ga = phi i32 [ 0, %.preheader.i ], [ %i.fp, %._crit_edge.loopexit.i ] ; 2 uses
  %i.gb = phi i32 [ 0, %.preheader.i ], [ %i.fo, %._crit_edge.loopexit.i ] ; 2 uses
  %i.gc = phi i32 [ 0, %.preheader.i ], [ %i.fn, %._crit_edge.loopexit.i ] ; 2 uses
  %i.gd = mul nsw i32 %i.gc, 27246
  %i.ge = mul nsw i32 %i.gb, 18405
  %i.gf = add nsw i32 %i.gd, %i.ge                ; 2 uses
  %i.gg = mul nsw i32 %i.gb, 27246
  %.neg.i30.i.i = mul nsw i32 %i.gc, -18405
  %i.gh = add nsw i32 %.neg.i30.i.i, %i.gg        ; 2 uses
  %i.gi = mul nsw i32 %i.ga, 6393
  %i.gj = mul nsw i32 %i.fz, 32139
  %i.gk = add nsw i32 %i.gi, %i.gj                ; 2 uses
  %i.gl = mul nsw i32 %i.fz, 6393
  %.neg93.i31.i.i = mul nsw i32 %i.ga, -32139
  %i.gm = add nsw i32 %.neg93.i31.i.i, %i.gl      ; 2 uses
  %i.gn = add nsw i32 %i.gk, 2048
  %i.go = add i32 %i.gn, %i.gf
  %i.gp = ashr i32 %i.go, 12
  %i.gq = mul i32 %i.gp, 5793                     ; 2 uses
  %i.gr = add nsw i32 %i.gm, 2048
  %i.gs = add i32 %i.gr, %i.gh
  %i.gt = ashr i32 %i.gs, 12
  %i.gu = mul i32 %i.gt, 5793                     ; 2 uses
  %i.gv = sub i32 %i.gk, %i.gf                    ; 2 uses
  %i.gw = sub i32 %i.gm, %i.gh                    ; 2 uses
  %i.gx = mul nsw i32 %i.fy, 17734
  %.neg94.i32.i.i = mul nsw i32 %i.fx, -42813
  %i.gy = add nsw i32 %i.gx, %.neg94.i32.i.i      ; 3 uses
  %i.gz = mul nsw i32 %i.fx, 17734
  %i.ha = mul nsw i32 %i.fy, 42814
  %i.hb = add nsw i32 %i.ha, %i.gz                ; 3 uses
  %i.hc = sub nsw i32 %i.fw, %i.fv
  %i.hd = shl nsw i32 %i.hc, 15
  %i.he = add nsw i32 %i.hd, 135168               ; 3 uses
  %i.hf = add nsw i32 %i.fw, %i.fv
  %i.hg = shl nsw i32 %i.hf, 15
  %i.hh = add nsw i32 %i.hg, 135168               ; 3 uses
  %i.hi = add i32 %i.hb, %i.hh                    ; 2 uses
  %i.hj = add i32 %i.hi, %i.gq
  %i.hk = lshr i32 %i.hj, 13
  %i.hl = trunc i32 %i.hk to i16
  store i16 %i.hl, ptr %1, align 16, !tbaa !76
  %i.hm = add i32 %i.gv, %i.gw                    ; 2 uses
  %i.hn = add i32 %i.gy, %i.he                    ; 2 uses
  %i.ho = add i32 %i.hn, %i.hm
  %i.hp = lshr i32 %i.ho, 13
  %i.hq = trunc i32 %i.hp to i16
  store i16 %i.hq, ptr %.phi.trans.insert61.i, align 16, !tbaa !76
  %i.hr = sub i32 %i.gv, %i.gw                    ; 2 uses
  %i.hs = sub i32 %i.he, %i.gy
  %i.ht = add i32 %i.hs, %i.hr
  %i.hu = lshr i32 %i.ht, 13
  %i.hv = trunc i32 %i.hu to i16
  store i16 %i.hv, ptr %.phi.trans.insert63.i, align 16, !tbaa !76
  %i.hw = sub i32 %i.hh, %i.hb
  %i.hx = add i32 %i.hw, %i.gu
  %i.hy = lshr i32 %i.hx, 13
  %i.hz = trunc i32 %i.hy to i16
  store i16 %i.hz, ptr %.phi.trans.insert.i, align 16, !tbaa !76
  %2 = add i32 %i.hb, %i.gu
  %i.ia = sub i32 %i.hh, %2
  %i.ib = lshr i32 %i.ia, 13
  %i.ic = trunc i32 %i.ib to i16
  store i16 %i.ic, ptr %.phi.trans.insert68.i, align 16, !tbaa !76
  %3 = add i32 %i.gy, %i.hr
  %i.id = sub i32 %i.he, %3
  %i.ie = lshr i32 %i.id, 13
  %i.if = trunc i32 %i.ie to i16
  store i16 %i.if, ptr %.phi.trans.insert57.i, align 16, !tbaa !76
  %i.ig = sub i32 %i.hn, %i.hm
  %i.ih = lshr i32 %i.ig, 13
  %i.ii = trunc i32 %i.ih to i16
  store i16 %i.ii, ptr %.phi.trans.insert65.i, align 16, !tbaa !76
  %i.ij = sub i32 %i.hi, %i.gq
  %i.ik = lshr i32 %i.ij, 13
  %i.il = trunc i32 %i.ik to i16
  store i16 %i.il, ptr %.phi.trans.insert59.i, align 16, !tbaa !76
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %._crit_edge.i
  %.pn60.i.i = phi ptr [ %1, %._crit_edge.i ], [ %.0.i27.i, %bb.j ] ; 8 uses
  %.02359.i.i = phi i32 [ 1, %._crit_edge.i ], [ %i.lw, %bb.j ]
  %.0.i27.i = getelementptr inbounds nuw i8, ptr %.pn60.i.i, i64 2 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.pn60.i.i, i64 50 ; 2 uses
  %i.in = load i16, ptr %i.im, align 2, !tbaa !76
  %i.io = sext i16 %i.in to i32                   ; 2 uses
  %i.ip = mul nsw i32 %i.io, 27246
  %i.iq = getelementptr inbounds nuw i8, ptr %.pn60.i.i, i64 82 ; 2 uses
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !76
  %i.is = sext i16 %i.ir to i32                   ; 2 uses
  %i.it = mul nsw i32 %i.is, 18405
  %i.iu = add nsw i32 %i.it, %i.ip                ; 2 uses
  %i.iv = mul nsw i32 %i.is, 27246
  %.neg.i27.i.i = mul nsw i32 %i.io, -18405
  %i.iw = add nsw i32 %i.iv, %.neg.i27.i.i        ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.pn60.i.i, i64 114 ; 2 uses
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !76
  %i.iz = sext i16 %i.iy to i32                   ; 2 uses
  %i.ja = mul nsw i32 %i.iz, 6393
  %i.jb = getelementptr inbounds nuw i8, ptr %.pn60.i.i, i64 18 ; 2 uses
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !76
  %i.jd = sext i16 %i.jc to i32                   ; 2 uses
  %i.je = mul nsw i32 %i.jd, 32139
  %i.jf = add nsw i32 %i.je, %i.ja                ; 2 uses
  %i.jg = mul nsw i32 %i.jd, 6393
  %.neg93.i28.i.i = mul nsw i32 %i.iz, -32139
  %i.jh = add nsw i32 %i.jg, %.neg93.i28.i.i      ; 2 uses
  %i.ji = add nsw i32 %i.iu, 2048
  %i.jj = add i32 %i.ji, %i.jf
  %i.jk = ashr i32 %i.jj, 12
  %i.jl = mul i32 %i.jk, 5793                     ; 2 uses
  %i.jm = add nsw i32 %i.iw, 2048
  %i.jn = add i32 %i.jm, %i.jh
  %i.jo = ashr i32 %i.jn, 12
  %i.jp = mul i32 %i.jo, 5793                     ; 2 uses
  %i.jq = sub i32 %i.jf, %i.iu                    ; 2 uses
  %i.jr = sub i32 %i.jh, %i.iw                    ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.pn60.i.i, i64 34 ; 2 uses
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !76
  %i.ju = sext i16 %i.jt to i32                   ; 2 uses
  %i.jv = mul nsw i32 %i.ju, 17734
  %i.jw = getelementptr inbounds nuw i8, ptr %.pn60.i.i, i64 98 ; 2 uses
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !76
  %i.jy = sext i16 %i.jx to i32                   ; 2 uses
  %.neg94.i29.i.i = mul nsw i32 %i.jy, -42813
  %i.jz = add nsw i32 %.neg94.i29.i.i, %i.jv      ; 4 uses
  %i.ka = mul nsw i32 %i.jy, 17734
  %i.kb = mul nsw i32 %i.ju, 42814
  %i.kc = add nsw i32 %i.ka, %i.kb                ; 4 uses
  %i.kd = load i16, ptr %.0.i27.i, align 2, !tbaa !76
  %i.ke = sext i16 %i.kd to i32                   ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.pn60.i.i, i64 66 ; 2 uses
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !76
  %i.kh = sext i16 %i.kg to i32                   ; 2 uses
  %i.ki = sub nsw i32 %i.ke, %i.kh
  %i.kj = shl nsw i32 %i.ki, 15
  %i.kk = or disjoint i32 %i.kj, 4096             ; 4 uses
  %i.kl = add nsw i32 %i.kh, %i.ke
  %i.km = shl nsw i32 %i.kl, 15
  %i.kn = or disjoint i32 %i.km, 4096             ; 4 uses
  %i.ko = add i32 %i.jl, %i.kc
  %i.kp = add i32 %i.ko, %i.kn
  %i.kq = lshr i32 %i.kp, 13
  %i.kr = trunc i32 %i.kq to i16
  store i16 %i.kr, ptr %.0.i27.i, align 2, !tbaa !76
  %i.ks = add i32 %i.jq, %i.jr                    ; 2 uses
  %i.kt = add i32 %i.ks, %i.jz
  %i.ku = add i32 %i.kt, %i.kk
  %i.kv = lshr i32 %i.ku, 13
  %i.kw = trunc i32 %i.kv to i16
  store i16 %i.kw, ptr %i.jb, align 2, !tbaa !76
  %i.kx = sub i32 %i.jq, %i.jr                    ; 2 uses
  %i.ky = sub i32 %i.kx, %i.jz
  %i.kz = add i32 %i.ky, %i.kk
  %i.la = lshr i32 %i.kz, 13
  %i.lb = trunc i32 %i.la to i16
  store i16 %i.lb, ptr %i.js, align 2, !tbaa !76
  %i.lc = sub i32 %i.jp, %i.kc
  %i.ld = add i32 %i.lc, %i.kn
  %i.le = lshr i32 %i.ld, 13
  %i.lf = trunc i32 %i.le to i16
  store i16 %i.lf, ptr %i.im, align 2, !tbaa !76
  %i.lg = add i32 %i.jp, %i.kc
  %i.lh = sub i32 %i.kn, %i.lg
  %i.li = lshr i32 %i.lh, 13
  %i.lj = trunc i32 %i.li to i16
  store i16 %i.lj, ptr %i.kf, align 2, !tbaa !76
  %i.lk = add i32 %i.kx, %i.jz
  %i.ll = sub i32 %i.kk, %i.lk
  %i.lm = lshr i32 %i.ll, 13
  %i.ln = trunc i32 %i.lm to i16
  store i16 %i.ln, ptr %i.iq, align 2, !tbaa !76
  %i.lo = sub i32 %i.jz, %i.ks
  %i.lp = add i32 %i.lo, %i.kk
  %i.lq = lshr i32 %i.lp, 13
  %i.lr = trunc i32 %i.lq to i16
  store i16 %i.lr, ptr %i.jw, align 2, !tbaa !76
  %i.ls = sub i32 %i.kc, %i.jl
  %i.lt = add i32 %i.ls, %i.kn
  %i.lu = lshr i32 %i.lt, 13
  %i.lv = trunc i32 %i.lu to i16
  store i16 %i.lv, ptr %i.ix, align 2, !tbaa !76
  %i.lw = add nuw nsw i32 %.02359.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.lw, 8
  br i1 %exitcond.not.i.i, label %vector.body, label %bb.j, !llvm.loop !69

vector.body:                                      ; preds = %bb.j
  %i.lx = load i16, ptr %i.s, align 2, !tbaa !76
  %i.ly = load i16, ptr %i.t, align 2, !tbaa !76
  %i.lz = load i16, ptr %i.u, align 2, !tbaa !76
  %i.ma = load i16, ptr %i.v, align 2, !tbaa !76
  %i.mb = load i16, ptr %i.w, align 2, !tbaa !76
  %i.mc = load i16, ptr %i.x, align 2, !tbaa !76
  %i.md = load i16, ptr %i.y, align 2, !tbaa !76
  %i.me = load i16, ptr %i.z, align 2, !tbaa !76
  %i.mf = insertelement <8 x i16> poison, i16 %i.lx, i64 0
  %i.mg = insertelement <8 x i16> %i.mf, i16 %i.ly, i64 1
  %i.mh = insertelement <8 x i16> %i.mg, i16 %i.lz, i64 2
  %i.mi = insertelement <8 x i16> %i.mh, i16 %i.ma, i64 3
  %i.mj = insertelement <8 x i16> %i.mi, i16 %i.mb, i64 4
  %i.mk = insertelement <8 x i16> %i.mj, i16 %i.mc, i64 5
  %i.ml = insertelement <8 x i16> %i.mk, i16 %i.md, i64 6
  %i.mm = insertelement <8 x i16> %i.ml, i16 %i.me, i64 7
  %i.mn = sext <8 x i16> %i.mm to <8 x i32>       ; 2 uses
  %i.mo = mul nsw <8 x i32> %i.mn, splat (i32 27246)
  %i.mp = load i16, ptr %i.aa, align 2, !tbaa !76
  %i.mq = load i16, ptr %i.ab, align 2, !tbaa !76
  %i.mr = load i16, ptr %i.ac, align 2, !tbaa !76
  %i.ms = load i16, ptr %i.ad, align 2, !tbaa !76
  %i.mt = load i16, ptr %i.ae, align 2, !tbaa !76
  %i.mu = load i16, ptr %i.af, align 2, !tbaa !76
  %i.mv = load i16, ptr %i.ag, align 2, !tbaa !76
  %i.mw = load i16, ptr %i.ah, align 2, !tbaa !76
  %i.mx = insertelement <8 x i16> poison, i16 %i.mp, i64 0
  %i.my = insertelement <8 x i16> %i.mx, i16 %i.mq, i64 1
  %i.mz = insertelement <8 x i16> %i.my, i16 %i.mr, i64 2
  %i.na = insertelement <8 x i16> %i.mz, i16 %i.ms, i64 3
  %i.nb = insertelement <8 x i16> %i.na, i16 %i.mt, i64 4
  %i.nc = insertelement <8 x i16> %i.nb, i16 %i.mu, i64 5
  %i.nd = insertelement <8 x i16> %i.nc, i16 %i.mv, i64 6
  %i.ne = insertelement <8 x i16> %i.nd, i16 %i.mw, i64 7
  %i.nf = sext <8 x i16> %i.ne to <8 x i32>       ; 2 uses
  %i.ng = mul nsw <8 x i32> %i.nf, splat (i32 18405)
  %i.nh = add nsw <8 x i32> %i.ng, %i.mo          ; 2 uses
  %i.ni = mul nsw <8 x i32> %i.nf, splat (i32 27246)
  %i.nj = mul nsw <8 x i32> %i.mn, splat (i32 -18405)
  %i.nk = add nsw <8 x i32> %i.ni, %i.nj          ; 2 uses
  %i.nl = load i16, ptr %i.ai, align 2, !tbaa !76
  %i.nm = load i16, ptr %i.aj, align 2, !tbaa !76
  %i.nn = load i16, ptr %i.ak, align 2, !tbaa !76
  %i.no = load i16, ptr %i.al, align 2, !tbaa !76
  %i.np = load i16, ptr %i.am, align 2, !tbaa !76
  %i.nq = load i16, ptr %i.an, align 2, !tbaa !76
  %i.nr = load i16, ptr %i.ao, align 2, !tbaa !76
  %i.ns = load i16, ptr %i.ap, align 2, !tbaa !76
  %i.nt = insertelement <8 x i16> poison, i16 %i.nl, i64 0
  %i.nu = insertelement <8 x i16> %i.nt, i16 %i.nm, i64 1
  %i.nv = insertelement <8 x i16> %i.nu, i16 %i.nn, i64 2
  %i.nw = insertelement <8 x i16> %i.nv, i16 %i.no, i64 3
  %i.nx = insertelement <8 x i16> %i.nw, i16 %i.np, i64 4
  %i.ny = insertelement <8 x i16> %i.nx, i16 %i.nq, i64 5
  %i.nz = insertelement <8 x i16> %i.ny, i16 %i.nr, i64 6
  %i.oa = insertelement <8 x i16> %i.nz, i16 %i.ns, i64 7
  %i.ob = sext <8 x i16> %i.oa to <8 x i32>       ; 2 uses
  %i.oc = mul nsw <8 x i32> %i.ob, splat (i32 6393)
  %i.od = load i16, ptr %i.aq, align 2, !tbaa !76
  %i.oe = load i16, ptr %i.ar, align 2, !tbaa !76
  %i.of = load i16, ptr %i.as, align 2, !tbaa !76
  %i.og = load i16, ptr %i.at, align 2, !tbaa !76
  %i.oh = load i16, ptr %i.au, align 2, !tbaa !76
  %i.oi = load i16, ptr %i.av, align 2, !tbaa !76
  %i.oj = load i16, ptr %i.aw, align 2, !tbaa !76
  %i.ok = load i16, ptr %i.ax, align 2, !tbaa !76
  %i.ol = insertelement <8 x i16> poison, i16 %i.od, i64 0
  %i.om = insertelement <8 x i16> %i.ol, i16 %i.oe, i64 1
  %i.on = insertelement <8 x i16> %i.om, i16 %i.of, i64 2
  %i.oo = insertelement <8 x i16> %i.on, i16 %i.og, i64 3
  %i.op = insertelement <8 x i16> %i.oo, i16 %i.oh, i64 4
  %i.oq = insertelement <8 x i16> %i.op, i16 %i.oi, i64 5
  %i.or = insertelement <8 x i16> %i.oq, i16 %i.oj, i64 6
  %i.os = insertelement <8 x i16> %i.or, i16 %i.ok, i64 7
  %i.ot = sext <8 x i16> %i.os to <8 x i32>       ; 2 uses
  %i.ou = mul nsw <8 x i32> %i.ot, splat (i32 32139)
  %i.ov = add nsw <8 x i32> %i.ou, %i.oc          ; 2 uses
  %i.ow = mul nsw <8 x i32> %i.ot, splat (i32 6393)
  %i.ox = mul nsw <8 x i32> %i.ob, splat (i32 -32139)
end_hunk_0
