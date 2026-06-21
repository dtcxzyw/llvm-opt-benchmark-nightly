inline.NumInlined: 24
inline.NumDeleted: 8
begin_hunk_0_@copy_to_conceal:bb.a
  %diff.check234.a = icmp ult i64 %i.cv, 32
  %conflict.rdx = or i1 %diff.check233.a, %diff.check234.a
  %i.cw = sub i64 %i.cr, %i.cs
  %diff.check235 = icmp ult i64 %i.cw, 32
  %conflict.rdx236 = or i1 %conflict.rdx, %diff.check235
  %i.cx = sub i64 %i.cq, %i.ct
  %diff.check237 = icmp ult i64 %i.cx, 32
  %conflict.rdx238 = or i1 %conflict.rdx236, %diff.check237
  %i.cy = sub i64 %i.cq, %i.cr
  %diff.check239 = icmp ult i64 %i.cy, 32
  %conflict.rdx240 = or i1 %conflict.rdx238, %diff.check239
  br i1 %conflict.rdx240, label %vec.epilog.scalar.ph258.preheader, label %vector.main.loop.iter.check242

vector.main.loop.iter.check242:                   ; preds = %vector.memcheck232
  br i1 %min.iters.check243, label %vec.epilog.ph261, label %vector.body247

vector.body247:                                   ; preds = %vector.main.loop.iter.check242, %vector.body247
  %index248 = phi i64 [ %index.next253, %vector.body247 ], [ 0, %vector.main.loop.iter.check242 ] ; 5 uses
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %index248 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %wide.load249.a = load <8 x i16>, ptr %i.cz, align 2, !tbaa !61
  %wide.load250.a = load <8 x i16>, ptr %i.da, align 2, !tbaa !61
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %index248 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <8 x i16> %wide.load249.a, ptr %i.db, align 2, !tbaa !61
  store <8 x i16> %wide.load250.a, ptr %i.dc, align 2, !tbaa !61
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %index248 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %wide.load251.a = load <8 x i16>, ptr %i.dd, align 2, !tbaa !61
  %wide.load252 = load <8 x i16>, ptr %i.de, align 2, !tbaa !61
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %index248 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store <8 x i16> %wide.load251.a, ptr %i.df, align 2, !tbaa !61
  store <8 x i16> %wide.load252, ptr %i.dg, align 2, !tbaa !61
  %index.next253 = add nuw i64 %index248, 16      ; 2 uses
  %i.dh = icmp eq i64 %index.next253, %n.vec246
  br i1 %i.dh, label %middle.block254, label %vector.body247, !llvm.loop !162

middle.block254:                                  ; preds = %vector.body247
  br i1 %cmp.n255, label %._crit_edge.us39.i, label %vec.epilog.iter.check259

vec.epilog.iter.check259:                         ; preds = %middle.block254
  br i1 %min.epilog.iters.check260, label %vec.epilog.scalar.ph258.preheader, label %vec.epilog.ph261, !prof !71

vec.epilog.ph261:                                 ; preds = %vector.main.loop.iter.check242, %vec.epilog.iter.check259
  %vec.epilog.resume.val256 = phi i64 [ %n.vec246, %vec.epilog.iter.check259 ], [ 0, %vector.main.loop.iter.check242 ]
  br label %vec.epilog.vector.body264

vec.epilog.vector.body264:                        ; preds = %vec.epilog.vector.body264, %vec.epilog.ph261
  %index265 = phi i64 [ %vec.epilog.resume.val256, %vec.epilog.ph261 ], [ %index.next268, %vec.epilog.vector.body264 ] ; 5 uses
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %index265
  %wide.load266.a = load <4 x i16>, ptr %i.di, align 2, !tbaa !61
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %index265
  store <4 x i16> %wide.load266.a, ptr %i.dj, align 2, !tbaa !61
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %index265
  %wide.load267 = load <4 x i16>, ptr %i.dk, align 2, !tbaa !61
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %index265
  store <4 x i16> %wide.load267, ptr %i.dl, align 2, !tbaa !61
  %index.next268 = add nuw i64 %index265, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next268, %n.vec263
  br i1 %i.dm, label %vec.epilog.middle.block269, label %vec.epilog.vector.body264, !llvm.loop !163

vec.epilog.middle.block269:                       ; preds = %vec.epilog.vector.body264
  br i1 %cmp.n270, label %._crit_edge.us39.i, label %vec.epilog.scalar.ph258.preheader

vec.epilog.scalar.ph258.preheader:                ; preds = %vector.memcheck232, %iter.check257, %vec.epilog.iter.check259, %vec.epilog.middle.block269
  %indvars.iv48.i.ph = phi i64 [ 0, %iter.check257 ], [ 0, %vector.memcheck232 ], [ %n.vec246, %vec.epilog.iter.check259 ], [ %n.vec263, %vec.epilog.middle.block269 ] ; 7 uses
  br i1 %lcmp.mod276.not, label %vec.epilog.scalar.ph258.prol.loopexit, label %vec.epilog.scalar.ph258.prol

vec.epilog.scalar.ph258.prol:                     ; preds = %vec.epilog.scalar.ph258.preheader
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %indvars.iv48.i.ph
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !61
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv48.i.ph
  store i16 %i.do, ptr %i.dp, align 2, !tbaa !61
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %indvars.iv48.i.ph
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !61
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %indvars.iv48.i.ph
  store i16 %i.dr, ptr %i.ds, align 2, !tbaa !61
  %indvars.iv.next49.i.prol = or disjoint i64 %indvars.iv48.i.ph, 1
  br label %vec.epilog.scalar.ph258.prol.loopexit

vec.epilog.scalar.ph258.prol.loopexit:            ; preds = %vec.epilog.scalar.ph258.prol, %vec.epilog.scalar.ph258.preheader
  %indvars.iv48.i.unr = phi i64 [ %indvars.iv48.i.ph, %vec.epilog.scalar.ph258.preheader ], [ %indvars.iv.next49.i.prol, %vec.epilog.scalar.ph258.prol ]
  %i.dt = icmp eq i64 %indvars.iv48.i.ph, %i.ch
  br i1 %i.dt, label %._crit_edge.us39.i, label %vec.epilog.scalar.ph258

vec.epilog.scalar.ph258:                          ; preds = %vec.epilog.scalar.ph258.prol.loopexit, %vec.epilog.scalar.ph258
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i.1, %vec.epilog.scalar.ph258 ], [ %indvars.iv48.i.unr, %vec.epilog.scalar.ph258.prol.loopexit ] ; 6 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %indvars.iv48.i
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !61
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv48.i
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !61
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %indvars.iv48.i
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !61
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %indvars.iv48.i
  store i16 %i.dy, ptr %i.dz, align 2, !tbaa !61
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 4 uses
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %indvars.iv.next49.i
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !61
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv.next49.i
  store i16 %i.eb, ptr %i.ec, align 2, !tbaa !61
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %indvars.iv.next49.i
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !61
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %indvars.iv.next49.i
  store i16 %i.ee, ptr %i.ef, align 2, !tbaa !61
  %indvars.iv.next49.i.1 = add nuw nsw i64 %indvars.iv48.i, 2 ; 2 uses
  %exitcond52.not.i.1 = icmp eq i64 %indvars.iv.next49.i.1, %wide.trip.count51.i
  br i1 %exitcond52.not.i.1, label %._crit_edge.us39.i, label %vec.epilog.scalar.ph258, !llvm.loop !164

._crit_edge.us39.i:                               ; preds = %vec.epilog.scalar.ph258.prol.loopexit, %vec.epilog.scalar.ph258, %vec.epilog.middle.block269, %middle.block254
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond57.not.i = icmp eq i64 %indvars.iv.next54.i, %wide.trip.count56.i
  br i1 %exitcond57.not.i, label %CopyImgData.exit.thread, label %iter.check257, !llvm.loop !165

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 5932
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !16
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 5936
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !30
  %i.ek = mul nsw i32 %i.ej, %i.eh
  %i.el = sdiv i32 %i.ek, 8
  %i.em = add nsw i32 %i.el, 16
  %i.en = sext i32 %i.em to i64
  %i.eo = shl nsw i64 %i.en, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi i64 [ %i.eo, %bb.d ], [ 32, %bb.c ]
  %i.ep = tail call noalias ptr @malloc(i64 noundef %.sink) #24 ; 29 uses
  store ptr %2, ptr @erc_img, align 8, !tbaa !14
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 316908
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !156 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 316908
  store i32 %i.er, ptr %i.es, align 4, !tbaa !156
  %i.et = load i32, ptr %i.c, align 8, !tbaa !154 ; 2 uses
  store i32 %i.et, ptr %i.e, align 8, !tbaa !154
  %i.eu = udiv i32 %i.et, %i.er                   ; 2 uses
  %i.ev = load i32, ptr %i.f, align 4, !tbaa !106
  %i.ew = icmp eq i32 %i.ev, 1                    ; 2 uses
  %i.ex = select i1 %i.ew, i32 2, i32 1           ; 2 uses
  %i.ey = load i32, ptr %i.i, align 8, !tbaa !107 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 5592
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !166
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !167 ; 2 uses
  br i1 %i.ew, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @init_lists_for_non_reference_loss(i32 noundef %i.ey, i32 noundef %i.fc)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @init_lists(i32 noundef %i.ey, i32 noundef %i.fc) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.fd = shl nsw i32 %i.eu, 2
  %i.fe = icmp sgt i32 %i.eu, 0
  br i1 %i.fe, label %.lr.ph199, label %._crit_edge200

.lr.ph199:                                        ; preds = %bb.h
  %i.ff = icmp sgt i32 %i.er, 0
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 316976
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 316952
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 316976
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 316952
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fo = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.fr = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ep, i64 6
  %i.gc = getelementptr nuw i8, ptr %i.ep, i64 8  ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ep, i64 10
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ep, i64 14
  %i.gg = getelementptr nuw i8, ptr %i.ep, i64 16 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ep, i64 18
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ep, i64 20
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ep, i64 22
  %i.gk = getelementptr nuw i8, ptr %i.ep, i64 24 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ep, i64 26
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ep, i64 28
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ep, i64 30
  %i.go = getelementptr nuw i8, ptr %i.ep, i64 32 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 316920
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 316928
  br i1 %i.ff, label %.lr.ph.us.preheader, label %._crit_edge200

.lr.ph.us.preheader:                              ; preds = %.lr.ph199
  %i.gr = shl i32 %i.er, 2
  %smax = tail call i32 @llvm.smax.i32(i32 %i.gr, i32 1)
  %i.gs = zext nneg i32 %i.fd to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  %i.gt = getelementptr nuw i8, ptr %i.ep, i64 34
  %i.gu = getelementptr nuw i8, ptr %i.ep, i64 36
  %i.gv = getelementptr nuw i8, ptr %i.ep, i64 38
  %i.gw = getelementptr nuw i8, ptr %i.ep, i64 40
  %i.gx = getelementptr nuw i8, ptr %i.ep, i64 42
  %i.gy = getelementptr nuw i8, ptr %i.ep, i64 44
  %i.gz = getelementptr nuw i8, ptr %i.ep, i64 46
  %i.ha = getelementptr nuw i8, ptr %i.ep, i64 36
  %i.hb = getelementptr nuw i8, ptr %i.ep, i64 40
  %i.hc = getelementptr nuw i8, ptr %i.ep, i64 44
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv216 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next217, %._crit_edge.us ] ; 9 uses
  %i.hd = shl nuw nsw i64 %indvars.iv216, 1       ; 3 uses
  %indvars.iv216.tr = trunc i64 %indvars.iv216 to i32
  %i.he = shl i32 %indvars.iv216.tr, 2            ; 2 uses
  %i.hf = zext i32 %i.he to i64                   ; 4 uses
  %i.hg = trunc nuw nsw i64 %indvars.iv216 to i32 ; 3 uses
  %indvars.iv216.tr221 = trunc i64 %indvars.iv216 to i32
  %i.hh = shl i32 %indvars.iv216.tr221, 4
  %i.hi = or disjoint i64 %i.hd, 1                ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph.us, %.loopexit.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next.a, %.loopexit.us ] ; 9 uses
  %3 = shl nsw i64 %indvars.iv, 2                 ; 5 uses
  %i.hj = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.hk = shl i64 %indvars.iv, 3
  %i.hl = and i64 %i.hk, 8589934584               ; 4 uses
  %i.hm = load ptr, ptr %i.fg, align 8, !tbaa !170
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !171
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %indvars.iv216
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !65
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %indvars.iv
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !60 ; 2 uses
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !61
  %i.ht = sext i16 %i.hs to i32
  %i.hu = sdiv i32 %i.ht, %i.ex                   ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hr, i64 2
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !61
  %i.hx = sext i16 %i.hw to i32
  %i.hy = sdiv i32 %i.hx, %i.ex                   ; 4 uses
  %i.hz = load ptr, ptr %i.fh, align 8, !tbaa !172
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !173
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv216
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !174
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %indvars.iv
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !175
  %narrow.us = call i8 @llvm.smax.i8(i8 %i.ie, i8 0) ; 3 uses
  %spec.select.us = zext nneg i8 %narrow.us to i32
  %i.if = trunc nsw i32 %i.hu to i16
  %i.ig = load ptr, ptr %i.fi, align 8, !tbaa !170
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !171
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv216
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !65
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !60 ; 2 uses
  store i16 %i.if, ptr %i.il, align 2, !tbaa !61
  %i.im = trunc nsw i32 %i.hy to i16
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 2
  store i16 %i.im, ptr %i.in, align 2, !tbaa !61
  %i.io = load ptr, ptr %i.fj, align 8, !tbaa !172
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !173
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %indvars.iv216
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !174
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 %indvars.iv
  store i8 %narrow.us, ptr %i.is, align 1, !tbaa !175
  %i.it = or i32 %i.hj, %i.hg
  %i.iu = and i32 %i.it, 3
  %or.cond.us = icmp eq i32 %i.iu, 0
  br i1 %or.cond.us, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.iv = load i32, ptr %i.b, align 4, !tbaa !153
  %i.iw = add i32 %i.iv, 1
  store i32 %i.iw, ptr %i.b, align 4, !tbaa !153
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ix = load ptr, ptr @erc_img, align 8, !tbaa !14 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.iy = load ptr, ptr @dec_picture, align 8, !tbaa !50
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 317044
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !63
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 72
  store i32 %i.hj, ptr %i.jb, align 8, !tbaa !176
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 68
  store i32 %i.hg, ptr %i.jc, align 4, !tbaa !177
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 76
  store i32 %i.he, ptr %i.jd, align 4, !tbaa !178
  %i.je = getelementptr inbounds nuw i8, ptr %i.ix, i64 5936 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !30
  %i.jg = mul nsw i32 %i.jf, %i.hg
  %i.jh = sdiv i32 %i.jg, 4
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ix, i64 88 ; 2 uses
  store i32 %i.jh, ptr %i.ji, align 8, !tbaa !179
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ix, i64 92
  %indvars.iv.tr = trunc nsw i64 %3 to i32
  store i32 %indvars.iv.tr, ptr %i.jj, align 4, !tbaa !180
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ix, i64 5932 ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !16
  %i.jm = mul nsw i32 %i.jl, %i.hj
  %i.jn = sdiv i32 %i.jm, 4
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ix, i64 96 ; 2 uses
  store i32 %i.jn, ptr %i.jo, align 8, !tbaa !181
  %indvars.iv.tr220 = trunc i64 %indvars.iv to i32
  %i.jp = shl i32 %indvars.iv.tr220, 4
  %i.jq = add nsw i32 %i.hu, %i.jp
  %i.jr = add nsw i32 %i.hy, %i.hh
  %i.js = load ptr, ptr @listX, align 16, !tbaa !48
  call void @get_block(i32 noundef %spec.select.us, ptr noundef %i.js, i32 noundef %i.jq, i32 noundef %i.jr, ptr noundef %i.ix, ptr noundef nonnull %i.a) #23
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ix, i64 104 ; 3 uses
  %i.ju = load i32, ptr %i.a, align 16, !tbaa !4
  %i.jv = trunc i32 %i.ju to i16                  ; 2 uses
  store i16 %i.jv, ptr %i.jt, align 8, !tbaa !61
  %i.jw = load i32, ptr %i.fk, align 4, !tbaa !4
  %i.jx = trunc i32 %i.jw to i16                  ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ix, i64 106 ; 3 uses
  store i16 %i.jx, ptr %i.jy, align 2, !tbaa !61
  %i.jz = load i32, ptr %i.fl, align 8, !tbaa !4
  %i.ka = trunc i32 %i.jz to i16                  ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ix, i64 108
  store i16 %i.ka, ptr %i.kb, align 4, !tbaa !61
  %i.kc = load i32, ptr %i.fm, align 4, !tbaa !4
  %i.kd = trunc i32 %i.kc to i16                  ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ix, i64 110
  store i16 %i.kd, ptr %i.ke, align 2, !tbaa !61
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ix, i64 136 ; 3 uses
  %i.kg = load i32, ptr %i.fn, align 16, !tbaa !4
  %i.kh = trunc i32 %i.kg to i16                  ; 2 uses
  store i16 %i.kh, ptr %i.kf, align 8, !tbaa !61
  %i.ki = load i32, ptr %i.fo, align 4, !tbaa !4
  %i.kj = trunc i32 %i.ki to i16                  ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ix, i64 138 ; 3 uses
  store i16 %i.kj, ptr %i.kk, align 2, !tbaa !61
  %i.kl = load i32, ptr %i.fp, align 8, !tbaa !4
  %i.km = trunc i32 %i.kl to i16                  ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ix, i64 140
  store i16 %i.km, ptr %i.kn, align 4, !tbaa !61
  %i.ko = load i32, ptr %i.fq, align 4, !tbaa !4
  %i.kp = trunc i32 %i.ko to i16                  ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ix, i64 142
  store i16 %i.kp, ptr %i.kq, align 2, !tbaa !61
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ix, i64 168
  %i.ks = load i32, ptr %i.fr, align 16, !tbaa !4
  %i.kt = trunc i32 %i.ks to i16                  ; 2 uses
  store i16 %i.kt, ptr %i.kr, align 8, !tbaa !61
  %i.ku = load i32, ptr %i.fs, align 4, !tbaa !4
  %i.kv = trunc i32 %i.ku to i16                  ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ix, i64 170
  store i16 %i.kv, ptr %i.kw, align 2, !tbaa !61
  %i.kx = load i32, ptr %i.ft, align 8, !tbaa !4
  %i.ky = trunc i32 %i.kx to i16                  ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ix, i64 172
  store i16 %i.ky, ptr %i.kz, align 4, !tbaa !61
  %i.la = load i32, ptr %i.fu, align 4, !tbaa !4
  %i.lb = trunc i32 %i.la to i16                  ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ix, i64 174
  store i16 %i.lb, ptr %i.lc, align 2, !tbaa !61
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ix, i64 200
  %i.le = load i32, ptr %i.fv, align 16, !tbaa !4
  %i.lf = trunc i32 %i.le to i16                  ; 2 uses
  store i16 %i.lf, ptr %i.ld, align 8, !tbaa !61
  %i.lg = load i32, ptr %i.fw, align 4, !tbaa !4
  %i.lh = trunc i32 %i.lg to i16                  ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.ix, i64 202
  store i16 %i.lh, ptr %i.li, align 2, !tbaa !61
  %i.lj = load i32, ptr %i.fx, align 8, !tbaa !4
  %i.lk = trunc i32 %i.lj to i16                  ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ix, i64 204
  store i16 %i.lk, ptr %i.ll, align 4, !tbaa !61
  %i.lm = load i32, ptr %i.fy, align 4, !tbaa !4
  %i.ln = trunc i32 %i.lm to i16                  ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ix, i64 206
  store i16 %i.ln, ptr %i.lo, align 2, !tbaa !61
  store i16 %i.jv, ptr %i.ep, align 2, !tbaa !61
  store i16 %i.jx, ptr %i.fz, align 2, !tbaa !61
  store i16 %i.ka, ptr %i.ga, align 2, !tbaa !61
  store i16 %i.kd, ptr %i.gb, align 2, !tbaa !61
  store i16 %i.kh, ptr %i.gc, align 2, !tbaa !61
  store i16 %i.kj, ptr %i.gd, align 2, !tbaa !61
  store i16 %i.km, ptr %i.ge, align 2, !tbaa !61
  store i16 %i.kp, ptr %i.gf, align 2, !tbaa !61
  store i16 %i.kt, ptr %i.gg, align 2, !tbaa !61
  store i16 %i.kv, ptr %i.gh, align 2, !tbaa !61
  store i16 %i.ky, ptr %i.gi, align 2, !tbaa !61
  store i16 %i.lb, ptr %i.gj, align 2, !tbaa !61
  store i16 %i.lf, ptr %i.gk, align 2, !tbaa !61
  store i16 %i.lh, ptr %i.gl, align 2, !tbaa !61
  store i16 %i.lk, ptr %i.gm, align 2, !tbaa !61
  store i16 %i.ln, ptr %i.gn, align 2, !tbaa !61
  %i.lp = load ptr, ptr @dec_picture, align 8, !tbaa !50 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 317044 ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !63
  %.not.i151.us = icmp eq i32 %i.lr, 0
  br i1 %.not.i151.us, label %buildPredblockRegionYUV.exit.us, label %.preheader.preheader.i.us

.preheader.preheader.i.us:                        ; preds = %bb.k
  %i.ls = add nsw i32 %i.ja, -1
  %i.lt = load i32, ptr %i.jk, align 4, !tbaa !16
  %i.lu = sdiv i32 64, %i.lt                      ; 10 uses
  %i.lv = add nsw i32 %i.lu, -1                   ; 4 uses
  %i.lw = load i32, ptr %i.je, align 8, !tbaa !30
  %i.lx = sdiv i32 64, %i.lw                      ; 10 uses
  %i.ly = add nsw i32 %i.lx, -1                   ; 4 uses
  %i.lz = mul nsw i32 %i.lx, %i.lu                ; 9 uses
  %i.ma = ashr i32 %i.lz, 1                       ; 8 uses
  %i.mb = sext i32 %i.ls to i64                   ; 2 uses
  %i.mc = getelementptr inbounds [32 x i8], ptr @subblk_offset_y, i64 %i.mb
  %i.md = load i8, ptr %i.mc, align 16, !tbaa !175
  %i.me = zext i8 %i.md to i32
  %i.mf = load i32, ptr %i.ji, align 8, !tbaa !179
  %i.mg = add nsw i32 %i.mf, %i.me                ; 2 uses
  %i.mh = getelementptr inbounds [32 x i8], ptr @subblk_offset_x, i64 %i.mb
  %i.mi = load i8, ptr %i.mh, align 16, !tbaa !175
  %i.mj = zext i8 %i.mi to i32
  %i.mk = load i32, ptr %i.jo, align 8, !tbaa !181
  %i.ml = add nsw i32 %i.mk, %i.mj                ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lp, i64 316872
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !182
  %i.mo = add nsw i32 %i.mn, -1                   ; 4 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lp, i64 316876
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !183
  %i.mr = add nsw i32 %i.mq, -1                   ; 4 uses
  %i.ms = load ptr, ptr @listX, align 16, !tbaa !48
  %i.mt = zext nneg i8 %narrow.us to i64
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %i.mt
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !50
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 316928
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !64 ; 2 uses
  %i.my = mul i32 %i.ml, %i.lu
  %i.mz = add i32 %i.my, %i.hu                    ; 3 uses
  %i.na = mul i32 %i.mg, %i.lx
  %i.nb = add i32 %i.na, %i.hy                    ; 3 uses
  %i.nc = sdiv i32 %i.nb, %i.lx
  %i.nd = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.nc, i32 0)
  %i.ne = call noundef i32 @llvm.smin.i32(i32 %i.nd, i32 range(i32 -2147483648, 2147483647) %i.mr)
  %i.nf = add i32 %i.nb, %i.ly
  %i.ng = sdiv i32 %i.nf, %i.lx
  %i.nh = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.ng, i32 0)
  %i.ni = call noundef i32 @llvm.smin.i32(i32 %i.nh, i32 range(i32 -2147483648, 2147483647) %i.mr)
  %i.nj = and i32 %i.nb, %i.ly                    ; 5 uses
  %i.nk = sub nsw i32 %i.lx, %i.nj                ; 4 uses
  %i.nl = sext i32 %i.ne to i64                   ; 2 uses
  %i.nm = sext i32 %i.ni to i64                   ; 2 uses
  %i.nn = sdiv i32 %i.mz, %i.lu
  %i.no = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.nn, i32 0)
  %i.np = call noundef i32 @llvm.smin.i32(i32 %i.no, i32 range(i32 -2147483648, 2147483647) %i.mo)
  %i.nq = add i32 %i.mz, %i.lv
  %i.nr = sdiv i32 %i.nq, %i.lu
  %i.ns = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.nr, i32 0)
  %i.nt = call noundef i32 @llvm.smin.i32(i32 %i.ns, i32 range(i32 -2147483648, 2147483647) %i.mo)
  %i.nu = and i32 %i.mz, %i.lv                    ; 5 uses
  %i.nv = sub nsw i32 %i.lu, %i.nu                ; 4 uses
  %i.nw = sext i32 %i.np to i64                   ; 8 uses
  %i.nx = sext i32 %i.nt to i64                   ; 8 uses
  %i.ny = add i32 %i.ml, 1
  %i.nz = mul i32 %i.ny, %i.lu
  %i.oa = add i32 %i.nz, %i.hu                    ; 3 uses
  %i.ob = sdiv i32 %i.oa, %i.lu
  %i.oc = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.ob, i32 0)
  %i.od = call noundef i32 @llvm.smin.i32(i32 %i.oc, i32 range(i32 -2147483648, 2147483647) %i.mo)
  %i.oe = add i32 %i.oa, %i.lv
  %i.of = sdiv i32 %i.oe, %i.lu
  %i.og = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.of, i32 0)
  %i.oh = call noundef i32 @llvm.smin.i32(i32 %i.og, i32 range(i32 -2147483648, 2147483647) %i.mo)
  %i.oi = and i32 %i.oa, %i.lv                    ; 5 uses
  %i.oj = sub nsw i32 %i.lu, %i.oi                ; 4 uses
  %i.ok = sext i32 %i.od to i64                   ; 8 uses
  %i.ol = sext i32 %i.oh to i64                   ; 8 uses
  %i.om = add i32 %i.mg, 1
  %i.on = mul i32 %i.om, %i.lx
  %i.oo = add i32 %i.on, %i.hy                    ; 3 uses
  %i.op = sdiv i32 %i.oo, %i.lx
  %i.oq = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.op, i32 0)
  %i.or = call noundef i32 @llvm.smin.i32(i32 %i.oq, i32 range(i32 -2147483648, 2147483647) %i.mr)
  %i.os = add i32 %i.oo, %i.ly
  %i.ot = sdiv i32 %i.os, %i.lx
  %i.ou = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.ot, i32 0)
  %i.ov = call noundef i32 @llvm.smin.i32(i32 %i.ou, i32 range(i32 -2147483648, 2147483647) %i.mr)
  %i.ow = and i32 %i.oo, %i.ly                    ; 5 uses
  %i.ox = sub nsw i32 %i.lx, %i.ow                ; 4 uses
  %i.oy = sext i32 %i.or to i64                   ; 2 uses
  %i.oz = sext i32 %i.ov to i64                   ; 2 uses
  %factor.op.mul.us = mul i32 %i.nv, %i.nj        ; 2 uses
  %factor.op.mul175.us = mul i32 %i.nu, %i.nj     ; 2 uses
  %factor.op.mul176.us = mul i32 %i.nv, %i.nk     ; 2 uses
  %factor.op.mul177.us = mul i32 %i.nu, %i.nk     ; 2 uses
  %factor.op.mul178.us = mul i32 %i.oj, %i.nj     ; 2 uses
  %factor.op.mul179.us = mul i32 %i.oi, %i.nj     ; 2 uses
  %factor.op.mul180.us = mul i32 %i.oj, %i.nk     ; 2 uses
  %factor.op.mul181.us = mul i32 %i.oi, %i.nk     ; 2 uses
  %factor.op.mul182.us = mul i32 %i.nv, %i.ow     ; 2 uses
  %factor.op.mul183.us = mul i32 %i.nu, %i.ow     ; 2 uses
  %factor.op.mul184.us = mul i32 %i.nv, %i.ox     ; 2 uses
  %factor.op.mul185.us = mul i32 %i.nu, %i.ox     ; 2 uses
  %factor.op.mul186.us = mul i32 %i.oj, %i.ow     ; 2 uses
  %factor.op.mul187.us = mul i32 %i.oi, %i.ow     ; 2 uses
  %factor.op.mul188.us = mul i32 %i.oj, %i.ox     ; 2 uses
end_hunk_0
begin_hunk_1_@copy_to_conceal:bb.a
  %i.qh = add i32 %reass.add163.us, %i.ma
  %i.qi = add i32 %i.qh, %reass.add161.us
  %i.qj = sdiv i32 %i.qi, %i.lz
  %i.qk = trunc i32 %i.qj to i16                  ; 2 uses
  store i16 %i.qk, ptr %i.jy, align 2, !tbaa !61
  %i.ql = getelementptr inbounds [8 x i8], ptr %i.pa, i64 %i.oy
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !60 ; 4 uses
  %i.qn = getelementptr inbounds [8 x i8], ptr %i.pa, i64 %i.oz
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !60 ; 4 uses
  %i.qp = getelementptr inbounds [2 x i8], ptr %i.qm, i64 %i.nw
  %i.qq = load i16, ptr %i.qp, align 2, !tbaa !61
  %i.qr = zext i16 %i.qq to i32
  %.reass201.i.reass.us = mul i32 %factor.op.mul184.us, %i.qr
  %i.qs = getelementptr inbounds [2 x i8], ptr %i.qm, i64 %i.nx
  %i.qt = load i16, ptr %i.qs, align 2, !tbaa !61
  %i.qu = zext i16 %i.qt to i32
  %.reass203.i.reass.us = mul i32 %factor.op.mul185.us, %i.qu
  %i.qv = getelementptr inbounds [2 x i8], ptr %i.qo, i64 %i.nw
  %i.qw = load i16, ptr %i.qv, align 2, !tbaa !61
  %i.qx = zext i16 %i.qw to i32
  %.reass197.i.reass.us = mul i32 %factor.op.mul182.us, %i.qx
  %i.qy = getelementptr inbounds [2 x i8], ptr %i.qo, i64 %i.nx
  %i.qz = load i16, ptr %i.qy, align 2, !tbaa !61
  %i.ra = zext i16 %i.qz to i32
  %.reass199.i.reass.us = mul i32 %factor.op.mul183.us, %i.ra
  %reass.add165.us = add i32 %.reass199.i.reass.us, %.reass197.i.reass.us
  %reass.add167.us = add i32 %.reass203.i.reass.us, %.reass201.i.reass.us
  %i.rb = add i32 %reass.add167.us, %i.ma
  %i.rc = add i32 %i.rb, %reass.add165.us
  %i.rd = sdiv i32 %i.rc, %i.lz
  %i.re = trunc i32 %i.rd to i16                  ; 2 uses
  store i16 %i.re, ptr %i.kf, align 8, !tbaa !61
  %i.rf = getelementptr inbounds [2 x i8], ptr %i.qm, i64 %i.ok
  %i.rg = load i16, ptr %i.rf, align 2, !tbaa !61
  %i.rh = zext i16 %i.rg to i32
  %.reass209.i.reass.us = mul i32 %factor.op.mul188.us, %i.rh
  %i.ri = getelementptr inbounds [2 x i8], ptr %i.qm, i64 %i.ol
  %i.rj = load i16, ptr %i.ri, align 2, !tbaa !61
  %i.rk = zext i16 %i.rj to i32
  %.reass211.i.reass.us = mul i32 %factor.op.mul189.us, %i.rk
  %i.rl = getelementptr inbounds [2 x i8], ptr %i.qo, i64 %i.ok
  %i.rm = load i16, ptr %i.rl, align 2, !tbaa !61
  %i.rn = zext i16 %i.rm to i32
  %.reass205.i.reass.us = mul i32 %factor.op.mul186.us, %i.rn
  %i.ro = getelementptr inbounds [2 x i8], ptr %i.qo, i64 %i.ol
  %i.rp = load i16, ptr %i.ro, align 2, !tbaa !61
  %i.rq = zext i16 %i.rp to i32
  %.reass207.i.reass.us = mul i32 %factor.op.mul187.us, %i.rq
  %reass.add169.us = add i32 %.reass207.i.reass.us, %.reass205.i.reass.us
  %reass.add171.us = add i32 %.reass211.i.reass.us, %.reass209.i.reass.us
  %i.rr = add i32 %reass.add171.us, %i.ma
  %i.rs = add i32 %i.rr, %reass.add169.us
  %i.rt = sdiv i32 %i.rs, %i.lz
  %i.ru = trunc i32 %i.rt to i16                  ; 2 uses
  store i16 %i.ru, ptr %i.kk, align 2, !tbaa !61
  store i16 %i.pu, ptr %i.go, align 2, !tbaa !61
  store i16 %i.qk, ptr %i.gt, align 2, !tbaa !61
  store i16 %i.re, ptr %i.gu, align 2, !tbaa !61
  store i16 %i.ru, ptr %i.gv, align 2, !tbaa !61
  %i.rv = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !65 ; 4 uses
  %i.rx = getelementptr inbounds [8 x i8], ptr %i.rw, i64 %i.nl
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !60 ; 4 uses
  %i.rz = getelementptr inbounds [8 x i8], ptr %i.rw, i64 %i.nm
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !60 ; 4 uses
  %i.sb = getelementptr inbounds [2 x i8], ptr %i.ry, i64 %i.nw
  %i.sc = load i16, ptr %i.sb, align 2, !tbaa !61
  %i.sd = zext i16 %i.sc to i32
  %.reass185.i.reass.us.1 = mul i32 %factor.op.mul176.us, %i.sd
  %i.se = getelementptr inbounds [2 x i8], ptr %i.ry, i64 %i.nx
  %i.sf = load i16, ptr %i.se, align 2, !tbaa !61
  %i.sg = zext i16 %i.sf to i32
  %.reass187.i.reass.us.1 = mul i32 %factor.op.mul177.us, %i.sg
  %i.sh = getelementptr inbounds [2 x i8], ptr %i.sa, i64 %i.nw
  %i.si = load i16, ptr %i.sh, align 2, !tbaa !61
  %i.sj = zext i16 %i.si to i32
  %.reass.i.reass.us.1 = mul i32 %factor.op.mul.us, %i.sj
  %i.sk = getelementptr inbounds [2 x i8], ptr %i.sa, i64 %i.nx
  %i.sl = load i16, ptr %i.sk, align 2, !tbaa !61
  %i.sm = zext i16 %i.sl to i32
  %.reass183.i.reass.us.1 = mul i32 %factor.op.mul175.us, %i.sm
  %reass.add.us.1 = add i32 %.reass183.i.reass.us.1, %.reass.i.reass.us.1
  %reass.add159.us.1 = add i32 %.reass187.i.reass.us.1, %.reass185.i.reass.us.1
  %i.sn = add i32 %reass.add159.us.1, %i.ma
  %i.so = add i32 %i.sn, %reass.add.us.1
  %i.sp = sdiv i32 %i.so, %i.lz
  %i.sq = trunc i32 %i.sp to i16                  ; 2 uses
  store i16 %i.sq, ptr %i.jt, align 8, !tbaa !61
  %i.sr = getelementptr inbounds [2 x i8], ptr %i.ry, i64 %i.ok
  %i.ss = load i16, ptr %i.sr, align 2, !tbaa !61
  %i.st = zext i16 %i.ss to i32
  %.reass193.i.reass.us.1 = mul i32 %factor.op.mul180.us, %i.st
  %i.su = getelementptr inbounds [2 x i8], ptr %i.ry, i64 %i.ol
  %i.sv = load i16, ptr %i.su, align 2, !tbaa !61
  %i.sw = zext i16 %i.sv to i32
  %.reass195.i.reass.us.1 = mul i32 %factor.op.mul181.us, %i.sw
  %i.sx = getelementptr inbounds [2 x i8], ptr %i.sa, i64 %i.ok
  %i.sy = load i16, ptr %i.sx, align 2, !tbaa !61
  %i.sz = zext i16 %i.sy to i32
  %.reass189.i.reass.us.1 = mul i32 %factor.op.mul178.us, %i.sz
  %i.ta = getelementptr inbounds [2 x i8], ptr %i.sa, i64 %i.ol
  %i.tb = load i16, ptr %i.ta, align 2, !tbaa !61
  %i.tc = zext i16 %i.tb to i32
  %.reass191.i.reass.us.1 = mul i32 %factor.op.mul179.us, %i.tc
  %reass.add161.us.1 = add i32 %.reass191.i.reass.us.1, %.reass189.i.reass.us.1
  %reass.add163.us.1 = add i32 %.reass195.i.reass.us.1, %.reass193.i.reass.us.1
  %i.td = add i32 %reass.add163.us.1, %i.ma
  %i.te = add i32 %i.td, %reass.add161.us.1
  %i.tf = sdiv i32 %i.te, %i.lz
  %i.tg = trunc i32 %i.tf to i16                  ; 2 uses
  store i16 %i.tg, ptr %i.jy, align 2, !tbaa !61
  %i.th = getelementptr inbounds [8 x i8], ptr %i.rw, i64 %i.oy
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !60 ; 4 uses
  %i.tj = getelementptr inbounds [8 x i8], ptr %i.rw, i64 %i.oz
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !60 ; 4 uses
  %i.tl = getelementptr inbounds [2 x i8], ptr %i.ti, i64 %i.nw
  %i.tm = load i16, ptr %i.tl, align 2, !tbaa !61
  %i.tn = zext i16 %i.tm to i32
  %.reass201.i.reass.us.1 = mul i32 %factor.op.mul184.us, %i.tn
  %i.to = getelementptr inbounds [2 x i8], ptr %i.ti, i64 %i.nx
  %i.tp = load i16, ptr %i.to, align 2, !tbaa !61
  %i.tq = zext i16 %i.tp to i32
  %.reass203.i.reass.us.1 = mul i32 %factor.op.mul185.us, %i.tq
  %i.tr = getelementptr inbounds [2 x i8], ptr %i.tk, i64 %i.nw
  %i.ts = load i16, ptr %i.tr, align 2, !tbaa !61
  %i.tt = zext i16 %i.ts to i32
  %.reass197.i.reass.us.1 = mul i32 %factor.op.mul182.us, %i.tt
  %i.tu = getelementptr inbounds [2 x i8], ptr %i.tk, i64 %i.nx
  %i.tv = load i16, ptr %i.tu, align 2, !tbaa !61
  %i.tw = zext i16 %i.tv to i32
  %.reass199.i.reass.us.1 = mul i32 %factor.op.mul183.us, %i.tw
  %reass.add165.us.1 = add i32 %.reass199.i.reass.us.1, %.reass197.i.reass.us.1
  %reass.add167.us.1 = add i32 %.reass203.i.reass.us.1, %.reass201.i.reass.us.1
  %i.tx = add i32 %reass.add167.us.1, %i.ma
  %i.ty = add i32 %i.tx, %reass.add165.us.1
  %i.tz = sdiv i32 %i.ty, %i.lz
  %i.ua = trunc i32 %i.tz to i16                  ; 2 uses
  store i16 %i.ua, ptr %i.kf, align 8, !tbaa !61
  %i.ub = getelementptr inbounds [2 x i8], ptr %i.ti, i64 %i.ok
  %i.uc = load i16, ptr %i.ub, align 2, !tbaa !61
  %i.ud = zext i16 %i.uc to i32
  %.reass209.i.reass.us.1 = mul i32 %factor.op.mul188.us, %i.ud
  %i.ue = getelementptr inbounds [2 x i8], ptr %i.ti, i64 %i.ol
  %i.uf = load i16, ptr %i.ue, align 2, !tbaa !61
  %i.ug = zext i16 %i.uf to i32
  %.reass211.i.reass.us.1 = mul i32 %factor.op.mul189.us, %i.ug
  %i.uh = getelementptr inbounds [2 x i8], ptr %i.tk, i64 %i.ok
  %i.ui = load i16, ptr %i.uh, align 2, !tbaa !61
  %i.uj = zext i16 %i.ui to i32
  %.reass205.i.reass.us.1 = mul i32 %factor.op.mul186.us, %i.uj
  %i.uk = getelementptr inbounds [2 x i8], ptr %i.tk, i64 %i.ol
  %i.ul = load i16, ptr %i.uk, align 2, !tbaa !61
  %i.um = zext i16 %i.ul to i32
  %.reass207.i.reass.us.1 = mul i32 %factor.op.mul187.us, %i.um
  %reass.add169.us.1 = add i32 %.reass207.i.reass.us.1, %.reass205.i.reass.us.1
  %reass.add171.us.1 = add i32 %.reass211.i.reass.us.1, %.reass209.i.reass.us.1
  %i.un = add i32 %reass.add171.us.1, %i.ma
  %i.uo = add i32 %i.un, %reass.add169.us.1
  %i.up = sdiv i32 %i.uo, %i.lz
  %i.uq = trunc i32 %i.up to i16                  ; 2 uses
  store i16 %i.uq, ptr %i.kk, align 2, !tbaa !61
  store i16 %i.sq, ptr %i.gw, align 2, !tbaa !61
  store i16 %i.tg, ptr %i.gx, align 2, !tbaa !61
  store i16 %i.ua, ptr %i.gy, align 2, !tbaa !61
  store i16 %i.uq, ptr %i.gz, align 2, !tbaa !61
  %.pre = load i32, ptr %i.lq, align 4, !tbaa !63
  %i.ur = icmp eq i32 %.pre, 0
  br label %buildPredblockRegionYUV.exit.us

buildPredblockRegionYUV.exit.us:                  ; preds = %.preheader.preheader.i.us, %bb.k
  %.not149.us = phi i1 [ %i.ur, %.preheader.preheader.i.us ], [ true, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.us = load ptr, ptr %i.gp, align 8, !tbaa !52 ; 4 uses
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %i.hf
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !60
  %scevgep = getelementptr nuw i8, ptr %i.uu, i64 %i.hl
  %i.uv = load i64, ptr %i.ep, align 2, !tbaa !61
  store i64 %i.uv, ptr %scevgep, align 2, !tbaa !61
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %i.hf
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !60
  %scevgep.1 = getelementptr nuw i8, ptr %i.uy, i64 %i.hl
  %i.uz = load i64, ptr %i.gc, align 2, !tbaa !61
  store i64 %i.uz, ptr %scevgep.1, align 2, !tbaa !61
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %i.hf
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 16
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !60
  %scevgep.2 = getelementptr nuw i8, ptr %i.vc, i64 %i.hl
  %i.vd = load i64, ptr %i.gg, align 2, !tbaa !61
  store i64 %i.vd, ptr %scevgep.2, align 2, !tbaa !61
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %i.hf
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 24
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !60
  %scevgep.3 = getelementptr nuw i8, ptr %i.vg, i64 %i.hl
  %i.vh = load i64, ptr %i.gk, align 2, !tbaa !61
  store i64 %i.vh, ptr %scevgep.3, align 2, !tbaa !61
  br i1 %.not149.us, label %.loopexit.us, label %.preheader173.us

.preheader173.us:                                 ; preds = %buildPredblockRegionYUV.exit.us
  %i.vi = load ptr, ptr %i.gq, align 8, !tbaa !64 ; 2 uses
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !65 ; 2 uses
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %i.hd
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !60
  %scevgep205 = getelementptr nuw i8, ptr %i.vl, i64 %3
  %4 = load i32, ptr %i.go, align 2, !tbaa !61
  store i32 %4, ptr %scevgep205, align 2, !tbaa !61
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %i.hi
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !60
  %scevgep205.1 = getelementptr nuw i8, ptr %i.vn, i64 %3
  %5 = load i32, ptr %i.ha, align 2, !tbaa !61
  store i32 %5, ptr %scevgep205.1, align 2, !tbaa !61
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vi, i64 8
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !65 ; 2 uses
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %i.hd
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !60
  %scevgep205.1215 = getelementptr nuw i8, ptr %i.vr, i64 %3
  %6 = load i32, ptr %i.hb, align 2, !tbaa !61
  store i32 %6, ptr %scevgep205.1215, align 2, !tbaa !61
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.vp, i64 %i.hi
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !60
  %scevgep205.1.1 = getelementptr nuw i8, ptr %i.vt, i64 %3
  %7 = load i32, ptr %i.hc, align 2, !tbaa !61
  store i32 %7, ptr %scevgep205.1.1, align 2, !tbaa !61
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.preheader173.us, %buildPredblockRegionYUV.exit.us
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.a, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.i, !llvm.loop !184

._crit_edge.us:                                   ; preds = %.loopexit.us
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1 ; 2 uses
  %i.vu = icmp samesign ult i64 %indvars.iv.next217, %i.gs
  br i1 %i.vu, label %.lr.ph.us, label %._crit_edge200, !llvm.loop !185

._crit_edge200:                                   ; preds = %._crit_edge.us, %.lr.ph199, %bb.h
  call void @free(ptr noundef %i.ep) #23
  br label %CopyImgData.exit.thread

CopyImgData.exit.thread:                          ; preds = %._crit_edge.us39.i, %.preheader32.i, %bb.a, %bb.b, %._crit_edge200
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @sliding_window_poc_management(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 28), align 4, !tbaa !95 ; 2 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 24), align 8, !tbaa !151
  %i.c = icmp eq i32 %i.a, %i.b
  br i1 %i.c, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.d = add i32 %i.a, -1                         ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 @pocs_in_dpb, ptr nonnull align 4 getelementptr inbounds nuw (i8, ptr @pocs_in_dpb, i64 4), i64 %i.f, i1 false), !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.preheader, %.preheader, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @write_lost_non_ref_pic(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.frame_store, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 40), align 8, !tbaa !186
  %i.c = sub nsw i32 %0, %i.b
  %i.d = load ptr, ptr @img, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 6064
  %i.f = load i32, ptr %i.e, align 8, !tbaa !76
  %i.g = icmp sgt i32 %i.c, %i.f
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @concealment_head, align 8, !tbaa !148
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !142
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.i, ptr %i.j, align 8, !tbaa !103
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 0, ptr %i.k, align 4, !tbaa !187
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.l, align 4, !tbaa !188
  store i32 3, ptr %2, align 8, !tbaa !101
  call void @write_stored_frame(ptr noundef nonnull %2, i32 noundef %1) #23
  %i.m = load ptr, ptr @concealment_head, align 8, !tbaa !148 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !146
  store ptr %i.o, ptr @concealment_head, align 8, !tbaa !148
  %i.p = load ptr, ptr @concealment_end, align 8, !tbaa !148 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.m
  br i1 %i.q, label %bb.d, label %delete_node.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !146
  store ptr %i.s, ptr @concealment_end, align 8, !tbaa !148
  br label %delete_node.exit

delete_node.exit:                                 ; preds = %bb.c, %bb.d
  call void @free(ptr noundef nonnull %i.m) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %delete_node.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

declare void @write_stored_frame(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @write_lost_ref_after_idr(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @last_out_fs, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !103  ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @img, align 8, !tbaa !14   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !82
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.i = load i32, ptr %i.h, align 4, !tbaa !83
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.k = load i32, ptr %i.j, align 8, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.m = load i32, ptr %i.l, align 8, !tbaa !85
  %i.n = tail call ptr @alloc_storable_picture(i32 noundef 0, i32 noundef %i.g, i32 noundef %i.i, i32 noundef %i.k, i32 noundef %i.m) #23 ; 2 uses
  %i.o = load ptr, ptr @last_out_fs, align 8, !tbaa !100 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr %i.n, ptr %i.p, align 8, !tbaa !103
  store i32 3, ptr %i.o, align 8, !tbaa !101
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = phi ptr [ %i.n, %bb.b ], [ %i.c, %bb.a ]
  %i.r = load ptr, ptr @img, align 8, !tbaa !14   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 6068 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !139
  %i.u = icmp eq i32 %i.t, 2
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.s, align 4, !tbaa !139
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ 2, %bb.d ], [ 1, %bb.c ]
  %i.v = load ptr, ptr @dpb, align 8, !tbaa !99
  %i.w = sext i32 %0 to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !100
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !103
  tail call fastcc void @copy_to_conceal(ptr noundef %i.aa, ptr noundef %i.q, ptr noundef nonnull %i.r)
  %i.ab = load ptr, ptr @img, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 6068
  store i32 %.0, ptr %i.ac, align 4, !tbaa !139
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @buildPredRegionYUV(ptr noundef initializes((68, 80), (88, 100)) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x [4 x i32]], align 16         ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = load ptr, ptr @dec_picture, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 317044
  %i.d = load i32, ptr %i.c, align 4, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4
  %i.g = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.f, i32 0) ; 5 uses
  %i.h = sdiv i32 %2, 16                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.h, ptr %i.i, align 8, !tbaa !176
  %i.j = sdiv i32 %3, 16                          ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.j, ptr %i.k, align 4, !tbaa !177
  %i.l = shl nsw i32 %i.j, 2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  store i32 %i.l, ptr %i.m, align 4, !tbaa !178
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !30
  %i.p = mul nsw i32 %i.o, %i.j
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i32 %i.p, ptr %i.q, align 8, !tbaa !179
  %i.r = shl nsw i32 %i.h, 2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 5 uses
  store i32 %i.r, ptr %i.s, align 4, !tbaa !180
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 5932 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !16
  %i.v = mul nsw i32 %i.u, %i.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store i32 %i.v, ptr %i.w, align 8, !tbaa !181
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 9 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 4 uses
  %invariant.gep178.1 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %invariant.gep178.2 = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %invariant.gep178.3 = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  br label %.preheader177

.preheader177:                                    ; preds = %bb.a, %.preheader177
  %indvars.iv201 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next202, %.preheader177 ] ; 3 uses
  %i.z = load i32, ptr %i.m, align 4, !tbaa !178
  %i.aa = trunc nuw nsw i64 %indvars.iv201 to i32
  %i.ab = add nsw i32 %i.z, %i.aa
  %i.ac = shl nsw i32 %i.ab, 4                    ; 4 uses
  %i.ad = shl nuw nsw i64 %indvars.iv201, 2       ; 16 uses
  %i.ae = load i32, ptr %i.s, align 4, !tbaa !180
end_hunk_1
