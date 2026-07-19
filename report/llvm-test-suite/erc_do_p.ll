inline.NumInlined: 24
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 39
begin_hunk_0_@copy_to_conceal:bb.a
  br i1 %i.di, label %middle.block250, label %vector.body243, !llvm.loop !162

middle.block250:                                  ; preds = %vector.body243
  br i1 %cmp.n251, label %._crit_edge37.i, label %vec.epilog.iter.check255

vec.epilog.iter.check255:                         ; preds = %middle.block250
  br i1 %min.epilog.iters.check256, label %vec.epilog.scalar.ph254.preheader, label %vec.epilog.ph257, !prof !71

vec.epilog.ph257:                                 ; preds = %vector.main.loop.iter.check238, %vec.epilog.iter.check255
  %vec.epilog.resume.val252 = phi i64 [ %n.vec242, %vec.epilog.iter.check255 ], [ 0, %vector.main.loop.iter.check238 ]
  br label %vec.epilog.vector.body260

vec.epilog.vector.body260:                        ; preds = %vec.epilog.vector.body260, %vec.epilog.ph257
  %index261 = phi i64 [ %vec.epilog.resume.val252, %vec.epilog.ph257 ], [ %index.next264, %vec.epilog.vector.body260 ] ; 5 uses
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %index261
  %wide.load262 = load <4 x i16>, ptr %i.dj, align 2, !tbaa !61
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %index261
  store <4 x i16> %wide.load262, ptr %i.dk, align 2, !tbaa !61
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %index261
  %wide.load263 = load <4 x i16>, ptr %i.dl, align 2, !tbaa !61
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %index261
  store <4 x i16> %wide.load263, ptr %i.dm, align 2, !tbaa !61
  %index.next264 = add nuw i64 %index261, 4       ; 2 uses
  %i.dn = icmp eq i64 %index.next264, %n.vec259
  br i1 %i.dn, label %vec.epilog.middle.block265, label %vec.epilog.vector.body260, !llvm.loop !163

vec.epilog.middle.block265:                       ; preds = %vec.epilog.vector.body260
  br i1 %cmp.n266, label %._crit_edge37.i, label %vec.epilog.scalar.ph254.preheader

vec.epilog.scalar.ph254.preheader:                ; preds = %vector.memcheck228, %iter.check253, %vec.epilog.iter.check255, %vec.epilog.middle.block265
  %indvars.iv46.i.ph = phi i64 [ 0, %iter.check253 ], [ 0, %vector.memcheck228 ], [ %n.vec242, %vec.epilog.iter.check255 ], [ %n.vec259, %vec.epilog.middle.block265 ] ; 7 uses
  br i1 %lcmp.mod272.not, label %vec.epilog.scalar.ph254.prol.loopexit, label %vec.epilog.scalar.ph254.prol

vec.epilog.scalar.ph254.prol:                     ; preds = %vec.epilog.scalar.ph254.preheader
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %indvars.iv46.i.ph
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !61
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv46.i.ph
  store i16 %i.dp, ptr %i.dq, align 2, !tbaa !61
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %indvars.iv46.i.ph
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !61
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %indvars.iv46.i.ph
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !61
  %indvars.iv.next47.i.prol = or disjoint i64 %indvars.iv46.i.ph, 1
  br label %vec.epilog.scalar.ph254.prol.loopexit

vec.epilog.scalar.ph254.prol.loopexit:            ; preds = %vec.epilog.scalar.ph254.prol, %vec.epilog.scalar.ph254.preheader
  %indvars.iv46.i.unr = phi i64 [ %indvars.iv46.i.ph, %vec.epilog.scalar.ph254.preheader ], [ %indvars.iv.next47.i.prol, %vec.epilog.scalar.ph254.prol ]
  %i.du = icmp eq i64 %indvars.iv46.i.ph, %i.bw
  br i1 %i.du, label %._crit_edge37.i, label %vec.epilog.scalar.ph254

vec.epilog.scalar.ph254:                          ; preds = %vec.epilog.scalar.ph254.prol.loopexit, %vec.epilog.scalar.ph254
  %indvars.iv46.i = phi i64 [ %indvars.iv.next47.i.1, %vec.epilog.scalar.ph254 ], [ %indvars.iv46.i.unr, %vec.epilog.scalar.ph254.prol.loopexit ] ; 6 uses
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
  br i1 %exitcond50.not.i.1, label %._crit_edge37.i, label %vec.epilog.scalar.ph254, !llvm.loop !164

._crit_edge37.i:                                  ; preds = %vec.epilog.scalar.ph254.prol.loopexit, %vec.epilog.scalar.ph254, %vec.epilog.middle.block265, %middle.block250
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1 ; 2 uses
  %exitcond55.not.i = icmp eq i64 %indvars.iv.next52.i, %wide.trip.count54.i
  br i1 %exitcond55.not.i, label %CopyImgData.exit, label %iter.check253, !llvm.loop !165

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
  %i.gp = getelementptr nuw i8, ptr %i.eq, i64 32 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 316920
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 316928
  br i1 %i.fg, label %.lr.ph.preheader, label %._crit_edge199.split

.lr.ph.preheader:                                 ; preds = %.lr.ph198
  %i.gs = shl i32 %i.es, 2
  %smax = tail call i32 @llvm.smax.i32(i32 %i.gs, i32 1)
  %i.gt = zext nneg i32 %i.fe to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  %i.gu = getelementptr nuw i8, ptr %i.eq, i64 34
  %i.gv = getelementptr nuw i8, ptr %i.eq, i64 36
  %i.gw = getelementptr nuw i8, ptr %i.eq, i64 38
  %i.gx = getelementptr nuw i8, ptr %i.eq, i64 40
  %i.gy = getelementptr nuw i8, ptr %i.eq, i64 42
  %i.gz = getelementptr nuw i8, ptr %i.eq, i64 44
  %i.ha = getelementptr nuw i8, ptr %i.eq, i64 46
  %scevgep208.1 = getelementptr nuw i8, ptr %i.eq, i64 36
  %scevgep208.1212 = getelementptr nuw i8, ptr %i.eq, i64 40
  %scevgep208.1.1 = getelementptr nuw i8, ptr %i.eq, i64 44
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 9 uses
  %i.hb = shl nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.hc = shl i32 %indvars.iv.tr, 2               ; 2 uses
  %i.hd = zext i32 %i.hc to i64                   ; 4 uses
  %i.he = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %indvars.iv.tr219 = trunc i64 %indvars.iv to i32
  %i.hf = shl i32 %indvars.iv.tr219, 4
  %i.hg = or disjoint i64 %i.hb, 1                ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.loopexit ] ; 9 uses
  %i.hh = shl nuw nsw i64 %indvar, 2              ; 5 uses
  %i.hi = trunc nuw nsw i64 %indvar to i32        ; 3 uses
  %i.hj = shl i64 %indvar, 3
  %i.hk = and i64 %i.hj, 8589934584               ; 4 uses
  %i.hl = load ptr, ptr %i.fh, align 8, !tbaa !170
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !171
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !65
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvar
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !60 ; 2 uses
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !61
  %i.hs = sext i16 %i.hr to i32
  %i.ht = sdiv i32 %i.hs, %i.ey                   ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 2
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !61
  %i.hw = sext i16 %i.hv to i32
  %i.hx = sdiv i32 %i.hw, %i.ey                   ; 4 uses
  %i.hy = load ptr, ptr %i.fi, align 8, !tbaa !172
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !173
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %indvars.iv
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !174
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvar
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !175
  %narrow = call i8 @llvm.smax.i8(i8 %i.id, i8 0) ; 3 uses
  %spec.select = zext nneg i8 %narrow to i32
  %i.ie = trunc nsw i32 %i.ht to i16
  %i.if = load ptr, ptr %i.fj, align 8, !tbaa !170
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !171
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !65
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvar
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !60 ; 2 uses
  store i16 %i.ie, ptr %i.ik, align 2, !tbaa !61
  %i.il = trunc nsw i32 %i.hx to i16
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 2
  store i16 %i.il, ptr %i.im, align 2, !tbaa !61
  %i.in = load ptr, ptr %i.fk, align 8, !tbaa !172
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !173
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %indvars.iv
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !174
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %indvar
  store i8 %narrow, ptr %i.ir, align 1, !tbaa !175
  %i.is = or i32 %i.hi, %i.he
  %i.it = and i32 %i.is, 3
  %or.cond = icmp eq i32 %i.it, 0
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.iu = load i32, ptr %i.b, align 4, !tbaa !153
  %i.iv = add i32 %i.iu, 1
  store i32 %i.iv, ptr %i.b, align 4, !tbaa !153
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.iw = load ptr, ptr @erc_img, align 8, !tbaa !14 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.ix = load ptr, ptr @dec_picture, align 8, !tbaa !50
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 317044
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !63
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iw, i64 72
  store i32 %i.hi, ptr %i.ja, align 8, !tbaa !176
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 68
  store i32 %i.he, ptr %i.jb, align 4, !tbaa !177
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iw, i64 76
  store i32 %i.hc, ptr %i.jc, align 4, !tbaa !178
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iw, i64 5936 ; 2 uses
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !30
  %i.jf = mul nsw i32 %i.je, %i.he
  %i.jg = sdiv i32 %i.jf, 4
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iw, i64 88 ; 2 uses
  store i32 %i.jg, ptr %i.jh, align 8, !tbaa !179
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iw, i64 92
  %i.jj = trunc nsw i64 %i.hh to i32
  store i32 %i.jj, ptr %i.ji, align 4, !tbaa !180
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iw, i64 5932 ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !16
  %i.jm = mul nsw i32 %i.jl, %i.hi
  %i.jn = sdiv i32 %i.jm, 4
  %i.jo = getelementptr inbounds nuw i8, ptr %i.iw, i64 96 ; 2 uses
  store i32 %i.jn, ptr %i.jo, align 8, !tbaa !181
  %indvar.tr = trunc i64 %indvar to i32
  %i.jp = shl i32 %indvar.tr, 4
  %i.jq = add nsw i32 %i.ht, %i.jp
  %i.jr = add nsw i32 %i.hx, %i.hf
  %i.js = load ptr, ptr @listX, align 16, !tbaa !48
  call void @get_block(i32 noundef %spec.select, ptr noundef %i.js, i32 noundef %i.jq, i32 noundef %i.jr, ptr noundef %i.iw, ptr noundef nonnull %i.a) #23
  %i.jt = getelementptr inbounds nuw i8, ptr %i.iw, i64 104 ; 3 uses
  %i.ju = load i32, ptr %i.a, align 16, !tbaa !4
  %i.jv = trunc i32 %i.ju to i16                  ; 2 uses
  store i16 %i.jv, ptr %i.jt, align 8, !tbaa !61
  %i.jw = load i32, ptr %i.fl, align 4, !tbaa !4
  %i.jx = trunc i32 %i.jw to i16                  ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.iw, i64 106 ; 3 uses
  store i16 %i.jx, ptr %i.jy, align 2, !tbaa !61
  %i.jz = load i32, ptr %i.fm, align 8, !tbaa !4
  %i.ka = trunc i32 %i.jz to i16                  ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.iw, i64 108
  store i16 %i.ka, ptr %i.kb, align 4, !tbaa !61
  %i.kc = load i32, ptr %i.fn, align 4, !tbaa !4
  %i.kd = trunc i32 %i.kc to i16                  ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.iw, i64 110
  store i16 %i.kd, ptr %i.ke, align 2, !tbaa !61
  %i.kf = getelementptr inbounds nuw i8, ptr %i.iw, i64 136 ; 3 uses
  %i.kg = load i32, ptr %i.fo, align 16, !tbaa !4
  %i.kh = trunc i32 %i.kg to i16                  ; 2 uses
  store i16 %i.kh, ptr %i.kf, align 8, !tbaa !61
  %i.ki = load i32, ptr %i.fp, align 4, !tbaa !4
  %i.kj = trunc i32 %i.ki to i16                  ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.iw, i64 138 ; 3 uses
  store i16 %i.kj, ptr %i.kk, align 2, !tbaa !61
  %i.kl = load i32, ptr %i.fq, align 8, !tbaa !4
  %i.km = trunc i32 %i.kl to i16                  ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.iw, i64 140
  store i16 %i.km, ptr %i.kn, align 4, !tbaa !61
  %i.ko = load i32, ptr %i.fr, align 4, !tbaa !4
  %i.kp = trunc i32 %i.ko to i16                  ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.iw, i64 142
  store i16 %i.kp, ptr %i.kq, align 2, !tbaa !61
  %i.kr = getelementptr inbounds nuw i8, ptr %i.iw, i64 168
  %i.ks = load i32, ptr %i.fs, align 16, !tbaa !4
  %i.kt = trunc i32 %i.ks to i16                  ; 2 uses
  store i16 %i.kt, ptr %i.kr, align 8, !tbaa !61
  %i.ku = load i32, ptr %i.ft, align 4, !tbaa !4
  %i.kv = trunc i32 %i.ku to i16                  ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.iw, i64 170
  store i16 %i.kv, ptr %i.kw, align 2, !tbaa !61
  %i.kx = load i32, ptr %i.fu, align 8, !tbaa !4
  %i.ky = trunc i32 %i.kx to i16                  ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.iw, i64 172
  store i16 %i.ky, ptr %i.kz, align 4, !tbaa !61
  %i.la = load i32, ptr %i.fv, align 4, !tbaa !4
  %i.lb = trunc i32 %i.la to i16                  ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.iw, i64 174
  store i16 %i.lb, ptr %i.lc, align 2, !tbaa !61
  %i.ld = getelementptr inbounds nuw i8, ptr %i.iw, i64 200
  %i.le = load i32, ptr %i.fw, align 16, !tbaa !4
  %i.lf = trunc i32 %i.le to i16                  ; 2 uses
  store i16 %i.lf, ptr %i.ld, align 8, !tbaa !61
  %i.lg = load i32, ptr %i.fx, align 4, !tbaa !4
  %i.lh = trunc i32 %i.lg to i16                  ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.iw, i64 202
  store i16 %i.lh, ptr %i.li, align 2, !tbaa !61
  %i.lj = load i32, ptr %i.fy, align 8, !tbaa !4
  %i.lk = trunc i32 %i.lj to i16                  ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.iw, i64 204
  store i16 %i.lk, ptr %i.ll, align 4, !tbaa !61
  %i.lm = load i32, ptr %i.fz, align 4, !tbaa !4
  %i.ln = trunc i32 %i.lm to i16                  ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.iw, i64 206
  store i16 %i.ln, ptr %i.lo, align 2, !tbaa !61
  store i16 %i.jv, ptr %i.eq, align 2, !tbaa !61
  store i16 %i.jx, ptr %i.ga, align 2, !tbaa !61
  store i16 %i.ka, ptr %i.gb, align 2, !tbaa !61
  store i16 %i.kd, ptr %i.gc, align 2, !tbaa !61
  store i16 %i.kh, ptr %i.gd, align 2, !tbaa !61
  store i16 %i.kj, ptr %i.ge, align 2, !tbaa !61
  store i16 %i.km, ptr %i.gf, align 2, !tbaa !61
  store i16 %i.kp, ptr %i.gg, align 2, !tbaa !61
  store i16 %i.kt, ptr %i.gh, align 2, !tbaa !61
  store i16 %i.kv, ptr %i.gi, align 2, !tbaa !61
  store i16 %i.ky, ptr %i.gj, align 2, !tbaa !61
  store i16 %i.lb, ptr %i.gk, align 2, !tbaa !61
  store i16 %i.lf, ptr %i.gl, align 2, !tbaa !61
  store i16 %i.lh, ptr %i.gm, align 2, !tbaa !61
  store i16 %i.lk, ptr %i.gn, align 2, !tbaa !61
  store i16 %i.ln, ptr %i.go, align 2, !tbaa !61
  %i.lp = load ptr, ptr @dec_picture, align 8, !tbaa !50 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 317044 ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !63
  %.not.i = icmp eq i32 %i.lr, 0
  br i1 %.not.i, label %buildPredblockRegionYUV.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.k
  %i.ls = add nsw i32 %i.iz, -1
  %i.lt = load i32, ptr %i.jk, align 4, !tbaa !16
  %i.lu = sdiv i32 64, %i.lt                      ; 10 uses
  %i.lv = add nsw i32 %i.lu, -1                   ; 4 uses
  %i.lw = load i32, ptr %i.jd, align 8, !tbaa !30
  %i.lx = sdiv i32 64, %i.lw                      ; 10 uses
  %i.ly = add nsw i32 %i.lx, -1                   ; 4 uses
  %i.lz = mul nsw i32 %i.lx, %i.lu                ; 9 uses
  %i.ma = ashr i32 %i.lz, 1                       ; 8 uses
  %i.mb = sext i32 %i.ls to i64                   ; 2 uses
  %i.mc = getelementptr inbounds [32 x i8], ptr @subblk_offset_y, i64 %i.mb
  %i.md = load i8, ptr %i.mc, align 16, !tbaa !175
  %i.me = zext i8 %i.md to i32
  %i.mf = load i32, ptr %i.jh, align 8, !tbaa !179
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
  %i.mt = zext nneg i8 %narrow to i64
end_hunk_0
begin_hunk_1_@edgeDistortion:bb.a
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !4
  %.not.3.1 = icmp slt i32 %i.qx, 2
  br i1 %.not.3.1, label %bb.j, label %.preheader142.3.1

.preheader142.3.1:                                ; preds = %bb.i
  %i.qy = load i16, ptr %i.s, align 2, !tbaa !61
  %i.qz = zext i16 %i.qy to i32
  %i.ra = load i16, ptr %i.k, align 2, !tbaa !61
  %i.rb = zext i16 %i.ra to i32
  %i.rc = sub nsw i32 %i.qz, %i.rb
  %i.rd = tail call i32 @llvm.abs.i32(i32 %i.rc, i1 true)
  %i.re = add nsw i32 %i.rd, %.6.2.1
  %i.rf = load i16, ptr %i.t, align 2, !tbaa !61
  %i.rg = zext i16 %i.rf to i32
  %i.rh = load i16, ptr %i.u, align 2, !tbaa !61
  %i.ri = zext i16 %i.rh to i32
  %i.rj = sub nsw i32 %i.rg, %i.ri
  %i.rk = tail call i32 @llvm.abs.i32(i32 %i.rj, i1 true)
  %i.rl = add nsw i32 %i.rk, %i.re
  %i.rm = load i16, ptr %i.v, align 2, !tbaa !61
  %i.rn = zext i16 %i.rm to i32
  %i.ro = load i16, ptr %i.w, align 2, !tbaa !61
  %i.rp = zext i16 %i.ro to i32
  %i.rq = sub nsw i32 %i.rn, %i.rp
  %i.rr = tail call i32 @llvm.abs.i32(i32 %i.rq, i1 true)
  %i.rs = add nsw i32 %i.rr, %i.rl
  %i.rt = load i16, ptr %i.x, align 2, !tbaa !61
  %i.ru = zext i16 %i.rt to i32
  %i.rv = load i16, ptr %i.y, align 2, !tbaa !61
  %i.rw = zext i16 %i.rv to i32
  %i.rx = sub nsw i32 %i.ru, %i.rw
  %i.ry = tail call i32 @llvm.abs.i32(i32 %i.rx, i1 true)
  %i.rz = add nsw i32 %i.ry, %i.rs
  %i.sa = load i16, ptr %i.z, align 2, !tbaa !61
  %i.sb = zext i16 %i.sa to i32
  %i.sc = load i16, ptr %i.aa, align 2, !tbaa !61
  %i.sd = zext i16 %i.sc to i32
  %i.se = sub nsw i32 %i.sb, %i.sd
  %i.sf = tail call i32 @llvm.abs.i32(i32 %i.se, i1 true)
  %i.sg = add nsw i32 %i.sf, %i.rz
  %i.sh = load i16, ptr %i.ab, align 2, !tbaa !61
  %i.si = zext i16 %i.sh to i32
  %i.sj = load i16, ptr %i.ac, align 2, !tbaa !61
  %i.sk = zext i16 %i.sj to i32
  %i.sl = sub nsw i32 %i.si, %i.sk
  %i.sm = tail call i32 @llvm.abs.i32(i32 %i.sl, i1 true)
  %i.sn = add nsw i32 %i.sm, %i.sg
  %i.so = load i16, ptr %i.ad, align 2, !tbaa !61
  %i.sp = zext i16 %i.so to i32
  %i.sq = load i16, ptr %i.ae, align 2, !tbaa !61
  %i.sr = zext i16 %i.sq to i32
  %i.ss = sub nsw i32 %i.sp, %i.sr
  %i.st = tail call i32 @llvm.abs.i32(i32 %i.ss, i1 true)
  %i.su = add nsw i32 %i.st, %i.sn
  %i.sv = load i16, ptr %i.af, align 2, !tbaa !61
  %i.sw = zext i16 %i.sv to i32
  %i.sx = load i16, ptr %i.ag, align 2, !tbaa !61
  %i.sy = zext i16 %i.sx to i32
  %i.sz = sub nsw i32 %i.sw, %i.sy
  %i.ta = tail call i32 @llvm.abs.i32(i32 %i.sz, i1 true)
  %i.tb = add nsw i32 %i.ta, %i.su
  %i.tc = load i16, ptr %i.ah, align 2, !tbaa !61
  %i.td = zext i16 %i.tc to i32
  %i.te = load i16, ptr %i.ai, align 2, !tbaa !61
  %i.tf = zext i16 %i.te to i32
  %i.tg = sub nsw i32 %i.td, %i.tf
  %i.th = tail call i32 @llvm.abs.i32(i32 %i.tg, i1 true)
  %i.ti = add nsw i32 %i.th, %i.tb
  %i.tj = load i16, ptr %i.aj, align 2, !tbaa !61
  %i.tk = zext i16 %i.tj to i32
  %i.tl = load i16, ptr %i.ak, align 2, !tbaa !61
  %i.tm = zext i16 %i.tl to i32
  %i.tn = sub nsw i32 %i.tk, %i.tm
  %i.to = tail call i32 @llvm.abs.i32(i32 %i.tn, i1 true)
  %i.tp = add nsw i32 %i.to, %i.ti
  %i.tq = load i16, ptr %i.al, align 2, !tbaa !61
  %i.tr = zext i16 %i.tq to i32
  %i.ts = load i16, ptr %i.am, align 2, !tbaa !61
  %i.tt = zext i16 %i.ts to i32
  %i.tu = sub nsw i32 %i.tr, %i.tt
  %i.tv = tail call i32 @llvm.abs.i32(i32 %i.tu, i1 true)
  %i.tw = add nsw i32 %i.tv, %i.tp
  %i.tx = load i16, ptr %i.an, align 2, !tbaa !61
  %i.ty = zext i16 %i.tx to i32
  %i.tz = load i16, ptr %i.ao, align 2, !tbaa !61
  %i.ua = zext i16 %i.tz to i32
  %i.ub = sub nsw i32 %i.ty, %i.ua
  %i.uc = tail call i32 @llvm.abs.i32(i32 %i.ub, i1 true)
  %i.ud = add nsw i32 %i.uc, %i.tw
  %i.ue = load i16, ptr %i.ap, align 2, !tbaa !61
  %i.uf = zext i16 %i.ue to i32
  %i.ug = load i16, ptr %i.aq, align 2, !tbaa !61
  %i.uh = zext i16 %i.ug to i32
  %i.ui = sub nsw i32 %i.uf, %i.uh
  %i.uj = tail call i32 @llvm.abs.i32(i32 %i.ui, i1 true)
  %i.uk = add nsw i32 %i.uj, %i.ud
  %i.ul = load i16, ptr %i.ar, align 2, !tbaa !61
  %i.um = zext i16 %i.ul to i32
  %i.un = load i16, ptr %i.as, align 2, !tbaa !61
  %i.uo = zext i16 %i.un to i32
  %i.up = sub nsw i32 %i.um, %i.uo
  %i.uq = tail call i32 @llvm.abs.i32(i32 %i.up, i1 true)
  %i.ur = add nsw i32 %i.uq, %i.uk
  %i.us = load i16, ptr %i.at, align 2, !tbaa !61
  %i.ut = zext i16 %i.us to i32
  %i.uu = load i16, ptr %i.au, align 2, !tbaa !61
  %i.uv = zext i16 %i.uu to i32
  %i.uw = sub nsw i32 %i.ut, %i.uv
  %i.ux = tail call i32 @llvm.abs.i32(i32 %i.uw, i1 true)
  %i.uy = add nsw i32 %i.ux, %i.ur
  %i.uz = load i16, ptr %i.av, align 2, !tbaa !61
  %i.va = zext i16 %i.uz to i32
  %i.vb = load i16, ptr %i.aw, align 2, !tbaa !61
  %i.vc = zext i16 %i.vb to i32
  %i.vd = sub nsw i32 %i.va, %i.vc
  %i.ve = tail call i32 @llvm.abs.i32(i32 %i.vd, i1 true)
  %i.vf = add nsw i32 %i.ve, %i.uy
  %i.vg = add nsw i32 %.1.2.1, 1
  br label %bb.j

bb.j:                                             ; preds = %.preheader142.3.1, %bb.i
  %.6.3.1 = phi i32 [ %i.vf, %.preheader142.3.1 ], [ %.6.2.1, %bb.i ]
  %.1.3.1 = phi i32 [ %i.vg, %.preheader142.3.1 ], [ %.1.2.1, %bb.i ] ; 2 uses
  %i.vh = icmp eq i32 %.1.3.1, 0
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  %.lcssa = phi i1 [ false, %bb.e ], [ %i.vh, %bb.j ]
  %.6.lcssa.lcssa = phi i32 [ %.6.3, %bb.e ], [ %.6.3.1, %bb.j ]
  %.1.lcssa.lcssa = phi i32 [ %.1.3, %bb.e ], [ %.1.3.1, %bb.j ]
  br i1 %.lcssa, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.vi = sdiv i32 %.6.lcssa.lcssa, %.1.lcssa.lcssa
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.0114 = phi i32 [ %i.vi, %bb.l ], [ 0, %bb.k ]
  ret i32 %.0114
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @copyPredMB(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @dec_picture, align 8, !tbaa !50 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 317044
  %i.c = load i32, ptr %i.b, align 4, !tbaa !63   ; 2 uses
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds [4 x i8], ptr @uv_div, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4    ; 2 uses
  %i.g = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @uv_div, i64 16), i64 %i.d
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4    ; 2 uses
  %i.i = ashr i32 %2, 3                           ; 2 uses
  %i.j = srem i32 %0, %i.i                        ; 2 uses
  %i.k = shl nsw i32 %i.j, 3                      ; 4 uses
  %i.l = sdiv i32 %0, %i.i
  %i.m = shl i32 %i.l, 3                          ; 4 uses
  %i.n = add i32 %i.m, 15                         ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 316920
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52
  %i.q = sext i32 %i.k to i64                     ; 16 uses
  %i.r = sext i32 %i.m to i64                     ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.m, i32 %i.n)
  %i.s = add i32 %smax, 1
  %indvars.iv.next = or disjoint i64 %i.q, 1      ; 2 uses
  %i.t = trunc nsw i64 %indvars.iv.next to i32
  %indvars.iv.next.1 = or disjoint i64 %i.q, 2    ; 2 uses
  %i.u = trunc nsw i64 %indvars.iv.next.1 to i32
  %indvars.iv.next.2 = or disjoint i64 %i.q, 3    ; 2 uses
  %i.v = trunc nsw i64 %indvars.iv.next.2 to i32
  %indvars.iv.next.3 = or disjoint i64 %i.q, 4    ; 2 uses
  %i.w = trunc nsw i64 %indvars.iv.next.3 to i32
  %indvars.iv.next.4 = or disjoint i64 %i.q, 5    ; 2 uses
  %i.x = trunc nsw i64 %indvars.iv.next.4 to i32
  %indvars.iv.next.5 = or disjoint i64 %i.q, 6    ; 2 uses
  %i.y = trunc nsw i64 %indvars.iv.next.5 to i32
  %indvars.iv.next.6 = or disjoint i64 %i.q, 7    ; 2 uses
  %i.z = trunc nsw i64 %indvars.iv.next.6 to i32
  %indvars.iv.next.7 = add nsw i64 %i.q, 8        ; 2 uses
  %i.aa = trunc nsw i64 %indvars.iv.next.7 to i32
  %indvars.iv.next.8 = add nsw i64 %i.q, 9        ; 2 uses
  %i.ab = trunc nsw i64 %indvars.iv.next.8 to i32
  %indvars.iv.next.9 = add nsw i64 %i.q, 10       ; 2 uses
  %i.ac = trunc nsw i64 %indvars.iv.next.9 to i32
  %indvars.iv.next.10 = add nsw i64 %i.q, 11      ; 2 uses
  %i.ad = trunc nsw i64 %indvars.iv.next.10 to i32
  %indvars.iv.next.11 = add nsw i64 %i.q, 12      ; 2 uses
  %i.ae = trunc nsw i64 %indvars.iv.next.11 to i32
  %indvars.iv.next.12 = add nsw i64 %i.q, 13      ; 2 uses
  %i.af = trunc nsw i64 %indvars.iv.next.12 to i32
  %indvars.iv.next.13 = add nsw i64 %i.q, 14      ; 2 uses
  %i.ag = trunc nsw i64 %indvars.iv.next.13 to i32
  %indvars.iv.next.14 = add nsw i64 %i.q, 15      ; 2 uses
  %i.ah = trunc nsw i64 %indvars.iv.next.14 to i32
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ %i.r, %bb.a ], [ %indvars.iv.next11, %.preheader ] ; 3 uses
  %i.ai = sub nsw i64 %indvars.iv, %i.r
  %i.aj = shl nuw nsw i64 %i.ai, 4                ; 2 uses
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  %i.al = sub i32 %i.ak, %i.k                     ; 15 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !60 ; 16 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aj
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !61
  %i.aq = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.q
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !61
  %i.ar = add i32 %i.al, %i.t
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [2 x i8], ptr %1, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !61
  %i.av = getelementptr inbounds [2 x i8], ptr %i.an, i64 %indvars.iv.next
  store i16 %i.au, ptr %i.av, align 2, !tbaa !61
  %i.aw = add i32 %i.al, %i.u
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !61
  %i.ba = getelementptr inbounds [2 x i8], ptr %i.an, i64 %indvars.iv.next.1
  store i16 %i.az, ptr %i.ba, align 2, !tbaa !61
  %i.bb = add i32 %i.al, %i.v
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [2 x i8], ptr %1, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !61
  %i.bf = getelementptr inbounds [2 x i8], ptr %i.an, i64 %indvars.iv.next.2
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !61
  %i.bg = add i32 %i.al, %i.w
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [2 x i8], ptr %1, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !61
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.an, i64 %indvars.iv.next.3
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !61
  %i.bl = add i32 %i.al, %i.x
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [2 x i8], ptr %1, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !61
  %i.bp = getelementptr inbounds [2 x i8], ptr %i.an, i64 %indvars.iv.next.4
  store i16 %i.bo, ptr %i.bp, align 2, !tbaa !61
  %i.bq = add i32 %i.al, %i.y
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [2 x i8], ptr %1, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !61
  %i.bu = getelementptr inbounds [2 x i8], ptr %i.an, i64 %indvars.iv.next.5
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !61
  %i.bv = add i32 %i.al, %i.z
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [2 x i8], ptr %1, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !61
  %i.bz = getelementptr inbounds [2 x i8], ptr %i.an, i64 %indvars.iv.next.6
  store i16 %i.by, ptr %i.bz, align 2, !tbaa !61
  %i.ca = add i32 %i.al, %i.aa
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [2 x i8], ptr %1, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !61
  %i.ce = getelementptr inbounds [2 x i8], ptr %i.an, i64 %indvars.iv.next.7
  store i16 %i.cd, ptr %i.ce, align 2, !tbaa !61
  %i.cf = add i32 %i.al, %i.ab
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [2 x i8], ptr %1, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !61
  %i.cj = getelementptr inbounds [2 x i8], ptr %i.an, i64 %indvars.iv.next.8
  store i16 %i.ci, ptr %i.cj, align 2, !tbaa !61
  %i.ck = add i32 %i.al, %i.ac
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [2 x i8], ptr %1, i64 %i.cl
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !61
  %i.co = getelementptr inbounds [2 x i8], ptr %i.an, i64 %indvars.iv.next.9
  store i16 %i.cn, ptr %i.co, align 2, !tbaa !61
  %i.cp = add i32 %i.al, %i.ad
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [2 x i8], ptr %1, i64 %i.cq
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !61
  %i.ct = getelementptr inbounds [2 x i8], ptr %i.an, i64 %indvars.iv.next.10
  store i16 %i.cs, ptr %i.ct, align 2, !tbaa !61
  %i.cu = add i32 %i.al, %i.ae
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [2 x i8], ptr %1, i64 %i.cv
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !61
  %i.cy = getelementptr inbounds [2 x i8], ptr %i.an, i64 %indvars.iv.next.11
  store i16 %i.cx, ptr %i.cy, align 2, !tbaa !61
  %i.cz = add i32 %i.al, %i.af
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [2 x i8], ptr %1, i64 %i.da
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !61
  %i.dd = getelementptr inbounds [2 x i8], ptr %i.an, i64 %indvars.iv.next.12
  store i16 %i.dc, ptr %i.dd, align 2, !tbaa !61
  %i.de = add i32 %i.al, %i.ag
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [2 x i8], ptr %1, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !61
  %i.di = getelementptr inbounds [2 x i8], ptr %i.an, i64 %indvars.iv.next.13
  store i16 %i.dh, ptr %i.di, align 2, !tbaa !61
  %i.dj = add i32 %i.al, %i.ah
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [2 x i8], ptr %1, i64 %i.dk
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !61
  %i.dn = getelementptr inbounds [2 x i8], ptr %i.an, i64 %indvars.iv.next.14
  store i16 %i.dm, ptr %i.dn, align 2, !tbaa !61
  %indvars.iv.next11 = add nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next11 to i32
  %exitcond.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !196

bb.b:                                             ; preds = %.preheader
  %i.do = add nsw i32 %i.k, 15
  %.not59 = icmp eq i32 %i.c, 0
  br i1 %.not59, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.dp = ashr i32 %i.m, %i.h                     ; 3 uses
  %i.dq = ashr i32 %i.n, %i.h                     ; 2 uses
  %.not605 = icmp sgt i32 %i.dp, %i.dq
  br i1 %.not605, label %.loopexit, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.c
  %i.dr = ashr i32 %i.k, %i.f                     ; 6 uses
  %i.ds = ashr i32 %i.do, %i.f                    ; 6 uses
  %.not613 = icmp sgt i32 %i.dr, %i.ds
  %i.dt = shl i32 %i.j, 2                         ; 3 uses
  br i1 %.not613, label %.loopexit, label %.lr.ph8.split

.lr.ph8.split:                                    ; preds = %.lr.ph8
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 316928
  %i.dv = load ptr, ptr @img, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 5932
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !16 ; 3 uses
  %i.dy = load ptr, ptr %i.du, align 8, !tbaa !64 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !65
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !65
  %i.ec = sext i32 %i.dr to i64                   ; 8 uses
  %i.ed = add i32 %i.ds, 1
  %i.ee = sext i32 %i.dp to i64
  %i.ef = add i32 %i.dq, 1
  %i.eg = sub i32 %i.ds, %i.dr                    ; 2 uses
  %i.eh = sub i32 %i.dr, %i.dt
  %i.ei = shl nsw i64 %i.ec, 1                    ; 3 uses
  %i.ej = zext i32 %i.eg to i64
  %i.ek = shl nuw nsw i64 %i.ej, 1                ; 2 uses
  %i.el = add nsw i64 %i.ei, %i.ek
  %i.em = add nsw i64 %i.el, 2                    ; 2 uses
  %scevgep4 = getelementptr i8, ptr %1, i64 512
  %i.en = sub i32 %i.dr, %i.dt
  %i.eo = getelementptr i8, ptr %1, i64 %i.ek
  %scevgep6 = getelementptr i8, ptr %i.eo, i64 642
  %i.ep = sub i32 %i.ds, %i.dr                    ; 3 uses
  %i.eq = zext i32 %i.ep to i64
  %i.er = add nuw nsw i64 %i.eq, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ep, 3
  %min.iters.check15 = icmp ult i32 %i.ep, 15
  %n.mod.vf = and i64 %i.er, 12
  %n.vec = and i64 %i.er, 8589934576              ; 4 uses
  %i.es = add nsw i64 %n.vec, %i.ec
  %cmp.n = icmp eq i64 %i.er, %n.vec
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec20 = and i64 %i.er, 8589934588            ; 3 uses
  %i.et = add nsw i64 %n.vec20, %i.ec
  %cmp.n25 = icmp eq i64 %i.er, %n.vec20
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph8.split, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph8.split ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv18 = phi i64 [ %i.ee, %.lr.ph8.split ], [ %indvars.iv.next19, %._crit_edge ] ; 4 uses
  %i.eu = mul i32 %i.dx, %indvar
  %i.ev = add i32 %i.en, %i.eu
  %i.ew = sext i32 %i.ev to i64
  %i.ex = shl nsw i64 %i.ew, 1                    ; 2 uses
  %scevgep5 = getelementptr i8, ptr %scevgep4, i64 %i.ex ; 2 uses
  %scevgep7 = getelementptr i8, ptr %scevgep6, i64 %i.ex ; 2 uses
  %i.ey = trunc i64 %indvars.iv18 to i32
  %i.ez = sub i32 %i.ey, %i.dp
  %i.fa = mul i32 %i.ez, %i.dx
  %invariant.op = sub i32 %i.fa, %i.dt            ; 5 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %indvars.iv18
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !60 ; 7 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %indvars.iv18
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !60 ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ff = mul i32 %i.dx, %indvar
  %i.fg = add i32 %i.eh, %i.ff                    ; 2 uses
  %i.fh = add i32 %i.fg, %i.eg
  %i.fi = icmp slt i32 %i.fh, %i.fg
  br i1 %i.fi, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr i8, ptr %i.fc, i64 %i.ei ; 2 uses
  %scevgep1 = getelementptr i8, ptr %i.fc, i64 %i.em ; 2 uses
  %scevgep2 = getelementptr i8, ptr %i.fe, i64 %i.ei ; 2 uses
  %scevgep3 = getelementptr i8, ptr %i.fe, i64 %i.em ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %scevgep2, %scevgep1
  %found.conflict = and i1 %bound0, %bound1
  %bound08 = icmp ult ptr %scevgep, %scevgep7
  %bound19 = icmp ult ptr %scevgep5, %scevgep1
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  %bound011 = icmp ult ptr %scevgep2, %scevgep7
  %bound112 = icmp ult ptr %scevgep5, %scevgep3
  %found.conflict13 = and i1 %bound011, %bound112
  %conflict.rdx14 = or i1 %conflict.rdx, %found.conflict13
  br i1 %conflict.rdx14, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
end_hunk_1
