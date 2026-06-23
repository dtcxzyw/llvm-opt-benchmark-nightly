inline.NumInlined: 24
inline.NumDeleted: 8
begin_hunk_0_@copy_to_conceal:bb.a
  %diff.check231.a = icmp ult i64 %i.cw, 32
  %conflict.rdx = or i1 %diff.check230.a, %diff.check231.a
  %i.cx = sub i64 %i.cs, %i.ct
  %diff.check232 = icmp ult i64 %i.cx, 32
  %conflict.rdx233 = or i1 %conflict.rdx, %diff.check232
  %i.cy = sub i64 %i.cr, %i.cu
  %diff.check234 = icmp ult i64 %i.cy, 32
  %conflict.rdx235 = or i1 %conflict.rdx233, %diff.check234
  %i.cz = sub i64 %i.cr, %i.cs
  %diff.check236 = icmp ult i64 %i.cz, 32
  %conflict.rdx237 = or i1 %conflict.rdx235, %diff.check236
  br i1 %conflict.rdx237, label %vec.epilog.scalar.ph255.preheader, label %vector.main.loop.iter.check239

vector.main.loop.iter.check239:                   ; preds = %vector.memcheck229
  br i1 %min.iters.check240, label %vec.epilog.ph258, label %vector.body244

vector.body244:                                   ; preds = %vector.main.loop.iter.check239, %vector.body244
  %index245 = phi i64 [ %index.next250, %vector.body244 ], [ 0, %vector.main.loop.iter.check239 ] ; 5 uses
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %index245 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %wide.load246.a = load <8 x i16>, ptr %i.da, align 2, !tbaa !61
  %wide.load247.a = load <8 x i16>, ptr %i.db, align 2, !tbaa !61
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %index245 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <8 x i16> %wide.load246.a, ptr %i.dc, align 2, !tbaa !61
  store <8 x i16> %wide.load247.a, ptr %i.dd, align 2, !tbaa !61
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %index245 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %wide.load248.a = load <8 x i16>, ptr %i.de, align 2, !tbaa !61
  %wide.load249 = load <8 x i16>, ptr %i.df, align 2, !tbaa !61
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %index245 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store <8 x i16> %wide.load248.a, ptr %i.dg, align 2, !tbaa !61
  store <8 x i16> %wide.load249, ptr %i.dh, align 2, !tbaa !61
  %index.next250 = add nuw i64 %index245, 16      ; 2 uses
  %i.di = icmp eq i64 %index.next250, %n.vec243
  br i1 %i.di, label %middle.block251, label %vector.body244, !llvm.loop !162

middle.block251:                                  ; preds = %vector.body244
  br i1 %cmp.n252, label %._crit_edge37.i, label %vec.epilog.iter.check256

vec.epilog.iter.check256:                         ; preds = %middle.block251
  br i1 %min.epilog.iters.check257, label %vec.epilog.scalar.ph255.preheader, label %vec.epilog.ph258, !prof !71

vec.epilog.ph258:                                 ; preds = %vector.main.loop.iter.check239, %vec.epilog.iter.check256
  %vec.epilog.resume.val253 = phi i64 [ %n.vec243, %vec.epilog.iter.check256 ], [ 0, %vector.main.loop.iter.check239 ]
  br label %vec.epilog.vector.body261

vec.epilog.vector.body261:                        ; preds = %vec.epilog.vector.body261, %vec.epilog.ph258
  %index262 = phi i64 [ %vec.epilog.resume.val253, %vec.epilog.ph258 ], [ %index.next265, %vec.epilog.vector.body261 ] ; 5 uses
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %index262
  %wide.load263.a = load <4 x i16>, ptr %i.dj, align 2, !tbaa !61
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %index262
  store <4 x i16> %wide.load263.a, ptr %i.dk, align 2, !tbaa !61
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %index262
  %wide.load264 = load <4 x i16>, ptr %i.dl, align 2, !tbaa !61
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %index262
  store <4 x i16> %wide.load264, ptr %i.dm, align 2, !tbaa !61
  %index.next265 = add nuw i64 %index262, 4       ; 2 uses
  %i.dn = icmp eq i64 %index.next265, %n.vec260
  br i1 %i.dn, label %vec.epilog.middle.block266, label %vec.epilog.vector.body261, !llvm.loop !163

vec.epilog.middle.block266:                       ; preds = %vec.epilog.vector.body261
  br i1 %cmp.n267, label %._crit_edge37.i, label %vec.epilog.scalar.ph255.preheader

vec.epilog.scalar.ph255.preheader:                ; preds = %vector.memcheck229, %iter.check254, %vec.epilog.iter.check256, %vec.epilog.middle.block266
  %indvars.iv46.i.ph = phi i64 [ 0, %iter.check254 ], [ 0, %vector.memcheck229 ], [ %n.vec243, %vec.epilog.iter.check256 ], [ %n.vec260, %vec.epilog.middle.block266 ] ; 7 uses
  br i1 %lcmp.mod273.not, label %vec.epilog.scalar.ph255.prol.loopexit, label %vec.epilog.scalar.ph255.prol

vec.epilog.scalar.ph255.prol:                     ; preds = %vec.epilog.scalar.ph255.preheader
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %indvars.iv46.i.ph
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !61
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv46.i.ph
  store i16 %i.dp, ptr %i.dq, align 2, !tbaa !61
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %indvars.iv46.i.ph
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !61
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %indvars.iv46.i.ph
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !61
  %indvars.iv.next47.i.prol = or disjoint i64 %indvars.iv46.i.ph, 1
  br label %vec.epilog.scalar.ph255.prol.loopexit

vec.epilog.scalar.ph255.prol.loopexit:            ; preds = %vec.epilog.scalar.ph255.prol, %vec.epilog.scalar.ph255.preheader
  %indvars.iv46.i.unr = phi i64 [ %indvars.iv46.i.ph, %vec.epilog.scalar.ph255.preheader ], [ %indvars.iv.next47.i.prol, %vec.epilog.scalar.ph255.prol ]
  %i.du = icmp eq i64 %indvars.iv46.i.ph, %i.bw
  br i1 %i.du, label %._crit_edge37.i, label %vec.epilog.scalar.ph255

vec.epilog.scalar.ph255:                          ; preds = %vec.epilog.scalar.ph255.prol.loopexit, %vec.epilog.scalar.ph255
  %indvars.iv46.i = phi i64 [ %indvars.iv.next47.i.1, %vec.epilog.scalar.ph255 ], [ %indvars.iv46.i.unr, %vec.epilog.scalar.ph255.prol.loopexit ] ; 6 uses
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %indvars.iv46.i
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !61
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv46.i
  store i16 %i.dw, ptr %i.dx, align 2, !tbaa !61
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %indvars.iv46.i
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !61
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %indvars.iv46.i
  store i16 %i.dz, ptr %i.ea, align 2, !tbaa !61
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1 ; 4 uses
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %indvars.iv.next47.i
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !61
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv.next47.i
  store i16 %i.ec, ptr %i.ed, align 2, !tbaa !61
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %indvars.iv.next47.i
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !61
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %indvars.iv.next47.i
  store i16 %i.ef, ptr %i.eg, align 2, !tbaa !61
  %indvars.iv.next47.i.1 = add nuw nsw i64 %indvars.iv46.i, 2 ; 2 uses
  %exitcond50.not.i.1 = icmp eq i64 %indvars.iv.next47.i.1, %wide.trip.count49.i
  br i1 %exitcond50.not.i.1, label %._crit_edge37.i, label %vec.epilog.scalar.ph255, !llvm.loop !164

._crit_edge37.i:                                  ; preds = %vec.epilog.scalar.ph255.prol.loopexit, %vec.epilog.scalar.ph255, %vec.epilog.middle.block266, %middle.block251
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1 ; 2 uses
  %exitcond55.not.i = icmp eq i64 %indvars.iv.next52.i, %wide.trip.count54.i
  br i1 %exitcond55.not.i, label %CopyImgData.exit, label %iter.check254, !llvm.loop !165

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 5932
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !16
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 5936
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !30
  %i.el = mul nsw i32 %i.ek, %i.ei
  %i.em = sdiv i32 %i.el, 8
  %i.en = add nsw i32 %i.em, 16
  %i.eo = sext i32 %i.en to i64
  %i.ep = shl nsw i64 %i.eo, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi i64 [ %i.ep, %bb.d ], [ 32, %bb.c ]
  %i.eq = tail call noalias ptr @malloc(i64 noundef %.sink) #24 ; 29 uses
  store ptr %2, ptr @erc_img, align 8, !tbaa !14
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 316908
  %i.es = load i32, ptr %i.er, align 4, !tbaa !156 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 316908
  store i32 %i.es, ptr %i.et, align 4, !tbaa !156
  %i.eu = load i32, ptr %i.c, align 8, !tbaa !154 ; 2 uses
  store i32 %i.eu, ptr %i.e, align 8, !tbaa !154
  %i.ev = udiv i32 %i.eu, %i.es                   ; 2 uses
  %i.ew = load i32, ptr %i.f, align 4, !tbaa !106
  %i.ex = icmp eq i32 %i.ew, 1                    ; 2 uses
  %i.ey = select i1 %i.ex, i32 2, i32 1           ; 2 uses
  %i.ez = load i32, ptr %i.i, align 8, !tbaa !107 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 5592
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !166
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !167 ; 2 uses
  br i1 %i.ex, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @init_lists_for_non_reference_loss(i32 noundef %i.ez, i32 noundef %i.fd)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @init_lists(i32 noundef %i.ez, i32 noundef %i.fd) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.fe = shl nsw i32 %i.ev, 2
  %i.ff = icmp sgt i32 %i.ev, 0
  br i1 %i.ff, label %.lr.ph198, label %._crit_edge199.split

.lr.ph198:                                        ; preds = %bb.h
  %i.fg = icmp sgt i32 %i.es, 0
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 316976
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 316952
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 316976
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 316952
  %i.fl = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.fo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.fr = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.fz = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.ga = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  %i.gb = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.gc = getelementptr inbounds nuw i8, ptr %i.eq, i64 6
  %i.gd = getelementptr nuw i8, ptr %i.eq, i64 8  ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.eq, i64 10
  %i.gf = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  %i.gg = getelementptr inbounds nuw i8, ptr %i.eq, i64 14
  %i.gh = getelementptr nuw i8, ptr %i.eq, i64 16 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.eq, i64 18
  %i.gj = getelementptr inbounds nuw i8, ptr %i.eq, i64 20
  %i.gk = getelementptr inbounds nuw i8, ptr %i.eq, i64 22
  %i.gl = getelementptr nuw i8, ptr %i.eq, i64 24 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.eq, i64 26
  %i.gn = getelementptr inbounds nuw i8, ptr %i.eq, i64 28
  %i.go = getelementptr inbounds nuw i8, ptr %i.eq, i64 30
  %i.gp = getelementptr inbounds nuw i8, ptr %i.eq, i64 32 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 316920
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 316928
  br i1 %i.fg, label %.lr.ph.preheader, label %._crit_edge199.split

.lr.ph.preheader:                                 ; preds = %.lr.ph198
  %i.gs = shl i32 %i.es, 2
  %smax = tail call i32 @llvm.smax.i32(i32 %i.gs, i32 1)
  %i.gt = zext nneg i32 %i.fe to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.eq, i64 34
  %i.gv = getelementptr inbounds nuw i8, ptr %i.eq, i64 36
  %i.gw = getelementptr inbounds nuw i8, ptr %i.eq, i64 38
  %i.gx = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %i.gy = getelementptr inbounds nuw i8, ptr %i.eq, i64 42
  %i.gz = getelementptr inbounds nuw i8, ptr %i.eq, i64 44
  %i.ha = getelementptr inbounds nuw i8, ptr %i.eq, i64 46
  %i.hb = getelementptr inbounds nuw i8, ptr %i.eq, i64 36
  %i.hc = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %i.hd = getelementptr inbounds nuw i8, ptr %i.eq, i64 44
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv214 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next215, %._crit_edge ] ; 9 uses
  %i.he = shl nuw nsw i64 %indvars.iv214, 1       ; 3 uses
  %indvars.iv214.tr = trunc i64 %indvars.iv214 to i32
  %i.hf = shl i32 %indvars.iv214.tr, 2            ; 2 uses
  %i.hg = zext i32 %i.hf to i64                   ; 4 uses
  %i.hh = trunc nuw nsw i64 %indvars.iv214 to i32 ; 3 uses
  %indvars.iv214.tr220 = trunc i64 %indvars.iv214 to i32
  %i.hi = shl i32 %indvars.iv214.tr220, 4
  %i.hj = or disjoint i64 %i.he, 1                ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.a, %.loopexit ] ; 10 uses
  %i.hk = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.hl = shl i64 %indvars.iv, 3
  %i.hm = and i64 %i.hl, 8589934584               ; 4 uses
  %i.hn = load ptr, ptr %i.fh, align 8, !tbaa !170
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !171
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv214
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !65
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !60 ; 2 uses
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !61
  %i.hu = sext i16 %i.ht to i32
  %i.hv = sdiv i32 %i.hu, %i.ey                   ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 2
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !61
  %i.hy = sext i16 %i.hx to i32
  %i.hz = sdiv i32 %i.hy, %i.ey                   ; 4 uses
  %i.ia = load ptr, ptr %i.fi, align 8, !tbaa !172
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !173
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %indvars.iv214
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !174
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %indvars.iv
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !175
  %narrow = call i8 @llvm.smax.i8(i8 %i.if, i8 0) ; 3 uses
  %spec.select = zext nneg i8 %narrow to i32
  %i.ig = trunc nsw i32 %i.hv to i16
  %i.ih = load ptr, ptr %i.fj, align 8, !tbaa !170
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !171
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv214
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !65
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !60 ; 2 uses
  store i16 %i.ig, ptr %i.im, align 2, !tbaa !61
  %i.in = trunc nsw i32 %i.hz to i16
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 2
  store i16 %i.in, ptr %i.io, align 2, !tbaa !61
  %i.ip = load ptr, ptr %i.fk, align 8, !tbaa !172
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !173
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %indvars.iv214
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !174
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %indvars.iv
  store i8 %narrow, ptr %i.it, align 1, !tbaa !175
  %i.iu = or i32 %i.hk, %i.hh
  %i.iv = and i32 %i.iu, 3
  %or.cond = icmp eq i32 %i.iv, 0
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.iw = load i32, ptr %i.b, align 4, !tbaa !153
  %i.ix = add i32 %i.iw, 1
  store i32 %i.ix, ptr %i.b, align 4, !tbaa !153
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.iy = load ptr, ptr @erc_img, align 8, !tbaa !14 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.iz = load ptr, ptr @dec_picture, align 8, !tbaa !50
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 317044
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !63
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 72
  store i32 %i.hk, ptr %i.jc, align 8, !tbaa !176
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 68
  store i32 %i.hh, ptr %i.jd, align 4, !tbaa !177
  %i.je = getelementptr inbounds nuw i8, ptr %i.iy, i64 76
  store i32 %i.hf, ptr %i.je, align 4, !tbaa !178
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iy, i64 5936 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !30
  %i.jh = mul nsw i32 %i.jg, %i.hh
  %i.ji = sdiv i32 %i.jh, 4
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iy, i64 88 ; 2 uses
  store i32 %i.ji, ptr %i.jj, align 8, !tbaa !179
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iy, i64 92
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %3 = shl i32 %indvars.iv.tr, 2
  store i32 %3, ptr %i.jk, align 4, !tbaa !180
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iy, i64 5932 ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !16
  %i.jn = mul nsw i32 %i.jm, %i.hk
  %i.jo = sdiv i32 %i.jn, 4
  %i.jp = getelementptr inbounds nuw i8, ptr %i.iy, i64 96 ; 2 uses
  store i32 %i.jo, ptr %i.jp, align 8, !tbaa !181
  %indvars.iv.tr219 = trunc i64 %indvars.iv to i32
  %i.jq = shl i32 %indvars.iv.tr219, 4
  %i.jr = add nsw i32 %i.hv, %i.jq
  %i.js = add nsw i32 %i.hz, %i.hi
  %i.jt = load ptr, ptr @listX, align 16, !tbaa !48
  call void @get_block(i32 noundef %spec.select, ptr noundef %i.jt, i32 noundef %i.jr, i32 noundef %i.js, ptr noundef %i.iy, ptr noundef nonnull %i.a) #23
  %i.ju = getelementptr inbounds nuw i8, ptr %i.iy, i64 104 ; 3 uses
  %i.jv = load i32, ptr %i.a, align 16, !tbaa !4
  %i.jw = trunc i32 %i.jv to i16                  ; 2 uses
  store i16 %i.jw, ptr %i.ju, align 8, !tbaa !61
  %i.jx = load i32, ptr %i.fl, align 4, !tbaa !4
  %i.jy = trunc i32 %i.jx to i16                  ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.iy, i64 106 ; 3 uses
  store i16 %i.jy, ptr %i.jz, align 2, !tbaa !61
  %i.ka = load i32, ptr %i.fm, align 8, !tbaa !4
  %i.kb = trunc i32 %i.ka to i16                  ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.iy, i64 108
  store i16 %i.kb, ptr %i.kc, align 4, !tbaa !61
  %i.kd = load i32, ptr %i.fn, align 4, !tbaa !4
  %i.ke = trunc i32 %i.kd to i16                  ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.iy, i64 110
  store i16 %i.ke, ptr %i.kf, align 2, !tbaa !61
  %i.kg = getelementptr inbounds nuw i8, ptr %i.iy, i64 136 ; 3 uses
  %i.kh = load i32, ptr %i.fo, align 16, !tbaa !4
  %i.ki = trunc i32 %i.kh to i16                  ; 2 uses
  store i16 %i.ki, ptr %i.kg, align 8, !tbaa !61
  %i.kj = load i32, ptr %i.fp, align 4, !tbaa !4
  %i.kk = trunc i32 %i.kj to i16                  ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.iy, i64 138 ; 3 uses
  store i16 %i.kk, ptr %i.kl, align 2, !tbaa !61
  %i.km = load i32, ptr %i.fq, align 8, !tbaa !4
  %i.kn = trunc i32 %i.km to i16                  ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.iy, i64 140
  store i16 %i.kn, ptr %i.ko, align 4, !tbaa !61
  %i.kp = load i32, ptr %i.fr, align 4, !tbaa !4
  %i.kq = trunc i32 %i.kp to i16                  ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.iy, i64 142
  store i16 %i.kq, ptr %i.kr, align 2, !tbaa !61
  %i.ks = getelementptr inbounds nuw i8, ptr %i.iy, i64 168
  %i.kt = load i32, ptr %i.fs, align 16, !tbaa !4
  %i.ku = trunc i32 %i.kt to i16                  ; 2 uses
  store i16 %i.ku, ptr %i.ks, align 8, !tbaa !61
  %i.kv = load i32, ptr %i.ft, align 4, !tbaa !4
  %i.kw = trunc i32 %i.kv to i16                  ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.iy, i64 170
  store i16 %i.kw, ptr %i.kx, align 2, !tbaa !61
  %i.ky = load i32, ptr %i.fu, align 8, !tbaa !4
  %i.kz = trunc i32 %i.ky to i16                  ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.iy, i64 172
  store i16 %i.kz, ptr %i.la, align 4, !tbaa !61
  %i.lb = load i32, ptr %i.fv, align 4, !tbaa !4
  %i.lc = trunc i32 %i.lb to i16                  ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.iy, i64 174
  store i16 %i.lc, ptr %i.ld, align 2, !tbaa !61
  %i.le = getelementptr inbounds nuw i8, ptr %i.iy, i64 200
  %i.lf = load i32, ptr %i.fw, align 16, !tbaa !4
  %i.lg = trunc i32 %i.lf to i16                  ; 2 uses
  store i16 %i.lg, ptr %i.le, align 8, !tbaa !61
  %i.lh = load i32, ptr %i.fx, align 4, !tbaa !4
  %i.li = trunc i32 %i.lh to i16                  ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.iy, i64 202
  store i16 %i.li, ptr %i.lj, align 2, !tbaa !61
  %i.lk = load i32, ptr %i.fy, align 8, !tbaa !4
  %i.ll = trunc i32 %i.lk to i16                  ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.iy, i64 204
  store i16 %i.ll, ptr %i.lm, align 4, !tbaa !61
  %i.ln = load i32, ptr %i.fz, align 4, !tbaa !4
  %i.lo = trunc i32 %i.ln to i16                  ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.iy, i64 206
  store i16 %i.lo, ptr %i.lp, align 2, !tbaa !61
  store i16 %i.jw, ptr %i.eq, align 2, !tbaa !61
  store i16 %i.jy, ptr %i.ga, align 2, !tbaa !61
  store i16 %i.kb, ptr %i.gb, align 2, !tbaa !61
  store i16 %i.ke, ptr %i.gc, align 2, !tbaa !61
  store i16 %i.ki, ptr %i.gd, align 2, !tbaa !61
  store i16 %i.kk, ptr %i.ge, align 2, !tbaa !61
  store i16 %i.kn, ptr %i.gf, align 2, !tbaa !61
  store i16 %i.kq, ptr %i.gg, align 2, !tbaa !61
  store i16 %i.ku, ptr %i.gh, align 2, !tbaa !61
  store i16 %i.kw, ptr %i.gi, align 2, !tbaa !61
  store i16 %i.kz, ptr %i.gj, align 2, !tbaa !61
  store i16 %i.lc, ptr %i.gk, align 2, !tbaa !61
  store i16 %i.lg, ptr %i.gl, align 2, !tbaa !61
  store i16 %i.li, ptr %i.gm, align 2, !tbaa !61
  store i16 %i.ll, ptr %i.gn, align 2, !tbaa !61
  store i16 %i.lo, ptr %i.go, align 2, !tbaa !61
  %i.lq = load ptr, ptr @dec_picture, align 8, !tbaa !50 ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 317044 ; 2 uses
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !63
  %.not.i = icmp eq i32 %i.ls, 0
  br i1 %.not.i, label %buildPredblockRegionYUV.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.k
  %i.lt = add nsw i32 %i.jb, -1
  %i.lu = load i32, ptr %i.jl, align 4, !tbaa !16
  %i.lv = sdiv i32 64, %i.lu                      ; 10 uses
  %i.lw = add nsw i32 %i.lv, -1                   ; 4 uses
  %i.lx = load i32, ptr %i.jf, align 8, !tbaa !30
  %i.ly = sdiv i32 64, %i.lx                      ; 10 uses
  %i.lz = add nsw i32 %i.ly, -1                   ; 4 uses
  %i.ma = mul nsw i32 %i.ly, %i.lv                ; 9 uses
  %i.mb = ashr i32 %i.ma, 1                       ; 8 uses
  %i.mc = sext i32 %i.lt to i64                   ; 2 uses
  %i.md = getelementptr inbounds [32 x i8], ptr @subblk_offset_y, i64 %i.mc
  %i.me = load i8, ptr %i.md, align 16, !tbaa !175
  %i.mf = zext i8 %i.me to i32
  %i.mg = load i32, ptr %i.jj, align 8, !tbaa !179
  %i.mh = add nsw i32 %i.mg, %i.mf                ; 2 uses
  %i.mi = getelementptr inbounds [32 x i8], ptr @subblk_offset_x, i64 %i.mc
  %i.mj = load i8, ptr %i.mi, align 16, !tbaa !175
  %i.mk = zext i8 %i.mj to i32
  %i.ml = load i32, ptr %i.jp, align 8, !tbaa !181
  %i.mm = add nsw i32 %i.ml, %i.mk                ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lq, i64 316872
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !182
  %i.mp = add nsw i32 %i.mo, -1                   ; 4 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lq, i64 316876
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !183
  %i.ms = add nsw i32 %i.mr, -1                   ; 4 uses
  %i.mt = load ptr, ptr @listX, align 16, !tbaa !48
  %i.mu = zext nneg i8 %narrow to i64
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.mt, i64 %i.mu
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !50
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 316928
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !64 ; 2 uses
  %i.mz = mul i32 %i.mm, %i.lv
  %i.na = add i32 %i.mz, %i.hv                    ; 3 uses
  %i.nb = mul i32 %i.mh, %i.ly
  %i.nc = add i32 %i.nb, %i.hz                    ; 3 uses
  %i.nd = sdiv i32 %i.nc, %i.ly
  %i.ne = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.nd, i32 0)
  %i.nf = call noundef i32 @llvm.smin.i32(i32 %i.ne, i32 range(i32 -2147483648, 2147483647) %i.ms)
  %i.ng = add i32 %i.nc, %i.lz
  %i.nh = sdiv i32 %i.ng, %i.ly
  %i.ni = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.nh, i32 0)
  %i.nj = call noundef i32 @llvm.smin.i32(i32 %i.ni, i32 range(i32 -2147483648, 2147483647) %i.ms)
  %i.nk = and i32 %i.nc, %i.lz                    ; 5 uses
  %i.nl = sub nsw i32 %i.ly, %i.nk                ; 4 uses
  %i.nm = sext i32 %i.nf to i64                   ; 2 uses
  %i.nn = sext i32 %i.nj to i64                   ; 2 uses
  %i.no = sdiv i32 %i.na, %i.lv
  %i.np = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.no, i32 0)
  %i.nq = call noundef i32 @llvm.smin.i32(i32 %i.np, i32 range(i32 -2147483648, 2147483647) %i.mp)
  %i.nr = add i32 %i.na, %i.lw
  %i.ns = sdiv i32 %i.nr, %i.lv
  %i.nt = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.ns, i32 0)
  %i.nu = call noundef i32 @llvm.smin.i32(i32 %i.nt, i32 range(i32 -2147483648, 2147483647) %i.mp)
  %i.nv = and i32 %i.na, %i.lw                    ; 5 uses
  %i.nw = sub nsw i32 %i.lv, %i.nv                ; 4 uses
  %i.nx = sext i32 %i.nq to i64                   ; 8 uses
  %i.ny = sext i32 %i.nu to i64                   ; 8 uses
  %i.nz = add i32 %i.mm, 1
  %i.oa = mul i32 %i.nz, %i.lv
  %i.ob = add i32 %i.oa, %i.hv                    ; 3 uses
  %i.oc = sdiv i32 %i.ob, %i.lv
  %i.od = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.oc, i32 0)
  %i.oe = call noundef i32 @llvm.smin.i32(i32 %i.od, i32 range(i32 -2147483648, 2147483647) %i.mp)
  %i.of = add i32 %i.ob, %i.lw
  %i.og = sdiv i32 %i.of, %i.lv
  %i.oh = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.og, i32 0)
  %i.oi = call noundef i32 @llvm.smin.i32(i32 %i.oh, i32 range(i32 -2147483648, 2147483647) %i.mp)
  %i.oj = and i32 %i.ob, %i.lw                    ; 5 uses
  %i.ok = sub nsw i32 %i.lv, %i.oj                ; 4 uses
  %i.ol = sext i32 %i.oe to i64                   ; 8 uses
  %i.om = sext i32 %i.oi to i64                   ; 8 uses
  %i.on = add i32 %i.mh, 1
  %i.oo = mul i32 %i.on, %i.ly
  %i.op = add i32 %i.oo, %i.hz                    ; 3 uses
  %i.oq = sdiv i32 %i.op, %i.ly
  %i.or = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.oq, i32 0)
  %i.os = call noundef i32 @llvm.smin.i32(i32 %i.or, i32 range(i32 -2147483648, 2147483647) %i.ms)
  %i.ot = add i32 %i.op, %i.lz
  %i.ou = sdiv i32 %i.ot, %i.ly
  %i.ov = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.ou, i32 0)
  %i.ow = call noundef i32 @llvm.smin.i32(i32 %i.ov, i32 range(i32 -2147483648, 2147483647) %i.ms)
  %i.ox = and i32 %i.op, %i.lz                    ; 5 uses
  %i.oy = sub nsw i32 %i.ly, %i.ox                ; 4 uses
  %i.oz = sext i32 %i.os to i64                   ; 2 uses
  %i.pa = sext i32 %i.ow to i64                   ; 2 uses
  %factor.op.mul = mul i32 %i.nw, %i.nk           ; 2 uses
  %factor.op.mul174 = mul i32 %i.nv, %i.nk        ; 2 uses
  %factor.op.mul175 = mul i32 %i.nw, %i.nl        ; 2 uses
  %factor.op.mul176 = mul i32 %i.nv, %i.nl        ; 2 uses
  %factor.op.mul177 = mul i32 %i.ok, %i.nk        ; 2 uses
  %factor.op.mul178 = mul i32 %i.oj, %i.nk        ; 2 uses
  %factor.op.mul179 = mul i32 %i.ok, %i.nl        ; 2 uses
  %factor.op.mul180 = mul i32 %i.oj, %i.nl        ; 2 uses
  %factor.op.mul181 = mul i32 %i.nw, %i.ox        ; 2 uses
  %factor.op.mul182 = mul i32 %i.nv, %i.ox        ; 2 uses
  %factor.op.mul183 = mul i32 %i.nw, %i.oy        ; 2 uses
  %factor.op.mul184 = mul i32 %i.nv, %i.oy        ; 2 uses
  %factor.op.mul185 = mul i32 %i.ok, %i.ox        ; 2 uses
  %factor.op.mul186 = mul i32 %i.oj, %i.ox        ; 2 uses
  %factor.op.mul187 = mul i32 %i.ok, %i.oy        ; 2 uses
end_hunk_0
begin_hunk_1_@copy_to_conceal:bb.a
  %i.qi = add i32 %reass.add162, %i.mb
  %i.qj = add i32 %i.qi, %reass.add160
  %i.qk = sdiv i32 %i.qj, %i.ma
  %i.ql = trunc i32 %i.qk to i16                  ; 2 uses
  store i16 %i.ql, ptr %i.jz, align 2, !tbaa !61
  %i.qm = getelementptr inbounds [8 x i8], ptr %i.pb, i64 %i.oz
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !60 ; 4 uses
  %i.qo = getelementptr inbounds [8 x i8], ptr %i.pb, i64 %i.pa
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !60 ; 4 uses
  %i.qq = getelementptr inbounds [2 x i8], ptr %i.qn, i64 %i.nx
  %i.qr = load i16, ptr %i.qq, align 2, !tbaa !61
  %i.qs = zext i16 %i.qr to i32
  %.reass201.i.reass = mul i32 %factor.op.mul183, %i.qs
  %i.qt = getelementptr inbounds [2 x i8], ptr %i.qn, i64 %i.ny
  %i.qu = load i16, ptr %i.qt, align 2, !tbaa !61
  %i.qv = zext i16 %i.qu to i32
  %.reass203.i.reass = mul i32 %factor.op.mul184, %i.qv
  %i.qw = getelementptr inbounds [2 x i8], ptr %i.qp, i64 %i.nx
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !61
  %i.qy = zext i16 %i.qx to i32
  %.reass197.i.reass = mul i32 %factor.op.mul181, %i.qy
  %i.qz = getelementptr inbounds [2 x i8], ptr %i.qp, i64 %i.ny
  %i.ra = load i16, ptr %i.qz, align 2, !tbaa !61
  %i.rb = zext i16 %i.ra to i32
  %.reass199.i.reass = mul i32 %factor.op.mul182, %i.rb
  %reass.add164 = add i32 %.reass199.i.reass, %.reass197.i.reass
  %reass.add166 = add i32 %.reass203.i.reass, %.reass201.i.reass
  %i.rc = add i32 %reass.add166, %i.mb
  %i.rd = add i32 %i.rc, %reass.add164
  %i.re = sdiv i32 %i.rd, %i.ma
  %i.rf = trunc i32 %i.re to i16                  ; 2 uses
  store i16 %i.rf, ptr %i.kg, align 8, !tbaa !61
  %i.rg = getelementptr inbounds [2 x i8], ptr %i.qn, i64 %i.ol
  %i.rh = load i16, ptr %i.rg, align 2, !tbaa !61
  %i.ri = zext i16 %i.rh to i32
  %.reass209.i.reass = mul i32 %factor.op.mul187, %i.ri
  %i.rj = getelementptr inbounds [2 x i8], ptr %i.qn, i64 %i.om
  %i.rk = load i16, ptr %i.rj, align 2, !tbaa !61
  %i.rl = zext i16 %i.rk to i32
  %.reass211.i.reass = mul i32 %factor.op.mul188, %i.rl
  %i.rm = getelementptr inbounds [2 x i8], ptr %i.qp, i64 %i.ol
  %i.rn = load i16, ptr %i.rm, align 2, !tbaa !61
  %i.ro = zext i16 %i.rn to i32
  %.reass205.i.reass = mul i32 %factor.op.mul185, %i.ro
  %i.rp = getelementptr inbounds [2 x i8], ptr %i.qp, i64 %i.om
  %i.rq = load i16, ptr %i.rp, align 2, !tbaa !61
  %i.rr = zext i16 %i.rq to i32
  %.reass207.i.reass = mul i32 %factor.op.mul186, %i.rr
  %reass.add168 = add i32 %.reass207.i.reass, %.reass205.i.reass
  %reass.add170 = add i32 %.reass211.i.reass, %.reass209.i.reass
  %i.rs = add i32 %reass.add170, %i.mb
  %i.rt = add i32 %i.rs, %reass.add168
  %i.ru = sdiv i32 %i.rt, %i.ma
  %i.rv = trunc i32 %i.ru to i16                  ; 2 uses
  store i16 %i.rv, ptr %i.kl, align 2, !tbaa !61
  store i16 %i.pv, ptr %i.gp, align 2, !tbaa !61
  store i16 %i.ql, ptr %i.gu, align 2, !tbaa !61
  store i16 %i.rf, ptr %i.gv, align 2, !tbaa !61
  store i16 %i.rv, ptr %i.gw, align 2, !tbaa !61
  %i.rw = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !65 ; 4 uses
  %i.ry = getelementptr inbounds [8 x i8], ptr %i.rx, i64 %i.nm
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !60 ; 4 uses
  %i.sa = getelementptr inbounds [8 x i8], ptr %i.rx, i64 %i.nn
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !60 ; 4 uses
  %i.sc = getelementptr inbounds [2 x i8], ptr %i.rz, i64 %i.nx
  %i.sd = load i16, ptr %i.sc, align 2, !tbaa !61
  %i.se = zext i16 %i.sd to i32
  %.reass185.i.reass.1 = mul i32 %factor.op.mul175, %i.se
  %i.sf = getelementptr inbounds [2 x i8], ptr %i.rz, i64 %i.ny
  %i.sg = load i16, ptr %i.sf, align 2, !tbaa !61
  %i.sh = zext i16 %i.sg to i32
  %.reass187.i.reass.1 = mul i32 %factor.op.mul176, %i.sh
  %i.si = getelementptr inbounds [2 x i8], ptr %i.sb, i64 %i.nx
  %i.sj = load i16, ptr %i.si, align 2, !tbaa !61
  %i.sk = zext i16 %i.sj to i32
  %.reass.i.reass.1 = mul i32 %factor.op.mul, %i.sk
  %i.sl = getelementptr inbounds [2 x i8], ptr %i.sb, i64 %i.ny
  %i.sm = load i16, ptr %i.sl, align 2, !tbaa !61
  %i.sn = zext i16 %i.sm to i32
  %.reass183.i.reass.1 = mul i32 %factor.op.mul174, %i.sn
  %reass.add.1 = add i32 %.reass183.i.reass.1, %.reass.i.reass.1
  %reass.add158.1 = add i32 %.reass187.i.reass.1, %.reass185.i.reass.1
  %i.so = add i32 %reass.add158.1, %i.mb
  %i.sp = add i32 %i.so, %reass.add.1
  %i.sq = sdiv i32 %i.sp, %i.ma
  %i.sr = trunc i32 %i.sq to i16                  ; 2 uses
  store i16 %i.sr, ptr %i.ju, align 8, !tbaa !61
  %i.ss = getelementptr inbounds [2 x i8], ptr %i.rz, i64 %i.ol
  %i.st = load i16, ptr %i.ss, align 2, !tbaa !61
  %i.su = zext i16 %i.st to i32
  %.reass193.i.reass.1 = mul i32 %factor.op.mul179, %i.su
  %i.sv = getelementptr inbounds [2 x i8], ptr %i.rz, i64 %i.om
  %i.sw = load i16, ptr %i.sv, align 2, !tbaa !61
  %i.sx = zext i16 %i.sw to i32
  %.reass195.i.reass.1 = mul i32 %factor.op.mul180, %i.sx
  %i.sy = getelementptr inbounds [2 x i8], ptr %i.sb, i64 %i.ol
  %i.sz = load i16, ptr %i.sy, align 2, !tbaa !61
  %i.ta = zext i16 %i.sz to i32
  %.reass189.i.reass.1 = mul i32 %factor.op.mul177, %i.ta
  %i.tb = getelementptr inbounds [2 x i8], ptr %i.sb, i64 %i.om
  %i.tc = load i16, ptr %i.tb, align 2, !tbaa !61
  %i.td = zext i16 %i.tc to i32
  %.reass191.i.reass.1 = mul i32 %factor.op.mul178, %i.td
  %reass.add160.1 = add i32 %.reass191.i.reass.1, %.reass189.i.reass.1
  %reass.add162.1 = add i32 %.reass195.i.reass.1, %.reass193.i.reass.1
  %i.te = add i32 %reass.add162.1, %i.mb
  %i.tf = add i32 %i.te, %reass.add160.1
  %i.tg = sdiv i32 %i.tf, %i.ma
  %i.th = trunc i32 %i.tg to i16                  ; 2 uses
  store i16 %i.th, ptr %i.jz, align 2, !tbaa !61
  %i.ti = getelementptr inbounds [8 x i8], ptr %i.rx, i64 %i.oz
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !60 ; 4 uses
  %i.tk = getelementptr inbounds [8 x i8], ptr %i.rx, i64 %i.pa
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !60 ; 4 uses
  %i.tm = getelementptr inbounds [2 x i8], ptr %i.tj, i64 %i.nx
  %i.tn = load i16, ptr %i.tm, align 2, !tbaa !61
  %i.to = zext i16 %i.tn to i32
  %.reass201.i.reass.1 = mul i32 %factor.op.mul183, %i.to
  %i.tp = getelementptr inbounds [2 x i8], ptr %i.tj, i64 %i.ny
  %i.tq = load i16, ptr %i.tp, align 2, !tbaa !61
  %i.tr = zext i16 %i.tq to i32
  %.reass203.i.reass.1 = mul i32 %factor.op.mul184, %i.tr
  %i.ts = getelementptr inbounds [2 x i8], ptr %i.tl, i64 %i.nx
  %i.tt = load i16, ptr %i.ts, align 2, !tbaa !61
  %i.tu = zext i16 %i.tt to i32
  %.reass197.i.reass.1 = mul i32 %factor.op.mul181, %i.tu
  %i.tv = getelementptr inbounds [2 x i8], ptr %i.tl, i64 %i.ny
  %i.tw = load i16, ptr %i.tv, align 2, !tbaa !61
  %i.tx = zext i16 %i.tw to i32
  %.reass199.i.reass.1 = mul i32 %factor.op.mul182, %i.tx
  %reass.add164.1 = add i32 %.reass199.i.reass.1, %.reass197.i.reass.1
  %reass.add166.1 = add i32 %.reass203.i.reass.1, %.reass201.i.reass.1
  %i.ty = add i32 %reass.add166.1, %i.mb
  %i.tz = add i32 %i.ty, %reass.add164.1
  %i.ua = sdiv i32 %i.tz, %i.ma
  %i.ub = trunc i32 %i.ua to i16                  ; 2 uses
  store i16 %i.ub, ptr %i.kg, align 8, !tbaa !61
  %i.uc = getelementptr inbounds [2 x i8], ptr %i.tj, i64 %i.ol
  %i.ud = load i16, ptr %i.uc, align 2, !tbaa !61
  %i.ue = zext i16 %i.ud to i32
  %.reass209.i.reass.1 = mul i32 %factor.op.mul187, %i.ue
  %i.uf = getelementptr inbounds [2 x i8], ptr %i.tj, i64 %i.om
  %i.ug = load i16, ptr %i.uf, align 2, !tbaa !61
  %i.uh = zext i16 %i.ug to i32
  %.reass211.i.reass.1 = mul i32 %factor.op.mul188, %i.uh
  %i.ui = getelementptr inbounds [2 x i8], ptr %i.tl, i64 %i.ol
  %i.uj = load i16, ptr %i.ui, align 2, !tbaa !61
  %i.uk = zext i16 %i.uj to i32
  %.reass205.i.reass.1 = mul i32 %factor.op.mul185, %i.uk
  %i.ul = getelementptr inbounds [2 x i8], ptr %i.tl, i64 %i.om
  %i.um = load i16, ptr %i.ul, align 2, !tbaa !61
  %i.un = zext i16 %i.um to i32
  %.reass207.i.reass.1 = mul i32 %factor.op.mul186, %i.un
  %reass.add168.1 = add i32 %.reass207.i.reass.1, %.reass205.i.reass.1
  %reass.add170.1 = add i32 %.reass211.i.reass.1, %.reass209.i.reass.1
  %i.uo = add i32 %reass.add170.1, %i.mb
  %i.up = add i32 %i.uo, %reass.add168.1
  %i.uq = sdiv i32 %i.up, %i.ma
  %i.ur = trunc i32 %i.uq to i16                  ; 2 uses
  store i16 %i.ur, ptr %i.kl, align 2, !tbaa !61
  store i16 %i.sr, ptr %i.gx, align 2, !tbaa !61
  store i16 %i.th, ptr %i.gy, align 2, !tbaa !61
  store i16 %i.ub, ptr %i.gz, align 2, !tbaa !61
  store i16 %i.ur, ptr %i.ha, align 2, !tbaa !61
  %.pre = load i32, ptr %i.lr, align 4, !tbaa !63
  %i.us = icmp eq i32 %.pre, 0
  br label %buildPredblockRegionYUV.exit

buildPredblockRegionYUV.exit:                     ; preds = %.preheader.preheader.i, %bb.k
  %.not149 = phi i1 [ %i.us, %.preheader.preheader.i ], [ true, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ut = load ptr, ptr %i.gq, align 8, !tbaa !52 ; 4 uses
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.ut, i64 %i.hg
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !60
  %scevgep = getelementptr nuw i8, ptr %i.uv, i64 %i.hm
  %i.uw = load i64, ptr %i.eq, align 2, !tbaa !61
  store i64 %i.uw, ptr %scevgep, align 2, !tbaa !61
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.ut, i64 %i.hg
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !60
  %scevgep.1 = getelementptr nuw i8, ptr %i.uz, i64 %i.hm
  %i.va = load i64, ptr %i.gd, align 2, !tbaa !61
  store i64 %i.va, ptr %scevgep.1, align 2, !tbaa !61
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.ut, i64 %i.hg
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 16
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !60
  %scevgep.2 = getelementptr nuw i8, ptr %i.vd, i64 %i.hm
  %i.ve = load i64, ptr %i.gh, align 2, !tbaa !61
  store i64 %i.ve, ptr %scevgep.2, align 2, !tbaa !61
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.ut, i64 %i.hg
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 24
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !60
  %scevgep.3 = getelementptr nuw i8, ptr %i.vh, i64 %i.hm
  %i.vi = load i64, ptr %i.gl, align 2, !tbaa !61
  store i64 %i.vi, ptr %scevgep.3, align 2, !tbaa !61
  br i1 %.not149, label %.loopexit, label %.preheader172

.preheader172:                                    ; preds = %buildPredblockRegionYUV.exit
  %i.vj = load ptr, ptr %i.gr, align 8, !tbaa !64 ; 2 uses
  %4 = shl nuw nsw i64 %indvars.iv, 1             ; 4 uses
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !65 ; 2 uses
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %i.he
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !60
  %5 = getelementptr inbounds nuw [2 x i8], ptr %i.vm, i64 %4
  %6 = load <2 x i16>, ptr %i.gp, align 2, !tbaa !61
  store <2 x i16> %6, ptr %5, align 2, !tbaa !61
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %i.hj
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !60
  %7 = getelementptr inbounds nuw [2 x i8], ptr %i.vo, i64 %4
  %8 = load <2 x i16>, ptr %i.hb, align 2, !tbaa !61
  store <2 x i16> %8, ptr %7, align 2, !tbaa !61
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !65 ; 2 uses
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %i.he
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !60
  %9 = getelementptr inbounds nuw [2 x i8], ptr %i.vs, i64 %4
  %10 = load <2 x i16>, ptr %i.hc, align 2, !tbaa !61
  store <2 x i16> %10, ptr %9, align 2, !tbaa !61
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %i.hj
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !60
  %11 = getelementptr inbounds nuw [2 x i8], ptr %i.vu, i64 %4
  %12 = load <2 x i16>, ptr %i.hd, align 2, !tbaa !61
  store <2 x i16> %12, ptr %11, align 2, !tbaa !61
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader172, %buildPredblockRegionYUV.exit
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.a, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !184

._crit_edge:                                      ; preds = %.loopexit
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %i.vv = icmp samesign ult i64 %indvars.iv.next215, %i.gt
  br i1 %i.vv, label %.lr.ph, label %._crit_edge199.split, !llvm.loop !185

._crit_edge199.split:                             ; preds = %._crit_edge, %.lr.ph198, %bb.h
  call void @free(ptr noundef %i.eq) #23
  br label %CopyImgData.exit

CopyImgData.exit:                                 ; preds = %._crit_edge37.i, %.preheader32.i, %bb.a, %._crit_edge199.split
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
