Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/erc_do_p?download=true
inline.NumInlined: 24
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 39
begin_hunk_0_@copy_to_conceal:bb.a
  store <8 x i16> %wide.load243.a, ptr %i.de, align 2, !tbaa !61
  store <8 x i16> %wide.load244.a, ptr %i.df, align 2, !tbaa !61
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %index242 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load245.a = load <8 x i16>, ptr %i.dg, align 2, !tbaa !61
  %wide.load246 = load <8 x i16>, ptr %i.dh, align 2, !tbaa !61
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %index242 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store <8 x i16> %wide.load245.a, ptr %i.di, align 2, !tbaa !61
  store <8 x i16> %wide.load246, ptr %i.dj, align 2, !tbaa !61
  %index.next247 = add nuw i64 %index242, 16      ; 2 uses
  %i.dk = icmp eq i64 %index.next247, %n.vec240
  br i1 %i.dk, label %middle.block248, label %vector.body241, !llvm.loop !162

middle.block248:                                  ; preds = %vector.body241
  br i1 %cmp.n249, label %._crit_edge37.i, label %vec.epilog.iter.check253

vec.epilog.iter.check253:                         ; preds = %middle.block248
  br i1 %min.epilog.iters.check254, label %vec.epilog.scalar.ph252.preheader, label %vec.epilog.ph255, !prof !71

vec.epilog.ph255:                                 ; preds = %vector.main.loop.iter.check237, %vec.epilog.iter.check253
  %vec.epilog.resume.val250 = phi i64 [ %n.vec240, %vec.epilog.iter.check253 ], [ 0, %vector.main.loop.iter.check237 ]
  br label %vec.epilog.vector.body257

vec.epilog.vector.body257:                        ; preds = %vec.epilog.vector.body257, %vec.epilog.ph255
  %index258 = phi i64 [ %vec.epilog.resume.val250, %vec.epilog.ph255 ], [ %index.next261, %vec.epilog.vector.body257 ] ; 5 uses
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %index258
  %wide.load259.a = load <4 x i16>, ptr %i.dl, align 2, !tbaa !61
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %index258
  store <4 x i16> %wide.load259.a, ptr %i.dm, align 2, !tbaa !61
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %index258
  %wide.load260 = load <4 x i16>, ptr %i.dn, align 2, !tbaa !61
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %index258
  store <4 x i16> %wide.load260, ptr %i.do, align 2, !tbaa !61
  %index.next261 = add nuw i64 %index258, 4       ; 2 uses
  %i.dp = icmp eq i64 %index.next261, %n.vec256
  br i1 %i.dp, label %vec.epilog.middle.block262, label %vec.epilog.vector.body257, !llvm.loop !163

vec.epilog.middle.block262:                       ; preds = %vec.epilog.vector.body257
  br i1 %cmp.n263, label %._crit_edge37.i, label %vec.epilog.scalar.ph252.preheader

vec.epilog.scalar.ph252.preheader:                ; preds = %vector.memcheck227, %iter.check251, %vec.epilog.iter.check253, %vec.epilog.middle.block262
  %indvars.iv46.i.ph = phi i64 [ 0, %iter.check251 ], [ 0, %vector.memcheck227 ], [ %n.vec240, %vec.epilog.iter.check253 ], [ %n.vec256, %vec.epilog.middle.block262 ] ; 7 uses
  br i1 %lcmp.mod269.not, label %vec.epilog.scalar.ph252.prol.loopexit, label %vec.epilog.scalar.ph252.prol

vec.epilog.scalar.ph252.prol:                     ; preds = %vec.epilog.scalar.ph252.preheader
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv46.i.ph
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !61
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %indvars.iv46.i.ph
  store i16 %i.dr, ptr %i.ds, align 2, !tbaa !61
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %indvars.iv46.i.ph
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !61
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %indvars.iv46.i.ph
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !61
  %indvars.iv.next47.i.prol = or disjoint i64 %indvars.iv46.i.ph, 1
  br label %vec.epilog.scalar.ph252.prol.loopexit

vec.epilog.scalar.ph252.prol.loopexit:            ; preds = %vec.epilog.scalar.ph252.prol, %vec.epilog.scalar.ph252.preheader
  %indvars.iv46.i.unr = phi i64 [ %indvars.iv46.i.ph, %vec.epilog.scalar.ph252.preheader ], [ %indvars.iv.next47.i.prol, %vec.epilog.scalar.ph252.prol ]
  %i.dw = icmp eq i64 %indvars.iv46.i.ph, %i.by
  br i1 %i.dw, label %._crit_edge37.i, label %vec.epilog.scalar.ph252

vec.epilog.scalar.ph252:                          ; preds = %vec.epilog.scalar.ph252.prol.loopexit, %vec.epilog.scalar.ph252
  %indvars.iv46.i = phi i64 [ %indvars.iv.next47.i.1, %vec.epilog.scalar.ph252 ], [ %indvars.iv46.i.unr, %vec.epilog.scalar.ph252.prol.loopexit ] ; 6 uses
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv46.i
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !61
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %indvars.iv46.i
  store i16 %i.dy, ptr %i.dz, align 2, !tbaa !61
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %indvars.iv46.i
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !61
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %indvars.iv46.i
  store i16 %i.eb, ptr %i.ec, align 2, !tbaa !61
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1 ; 4 uses
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv.next47.i
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !61
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %indvars.iv.next47.i
  store i16 %i.ee, ptr %i.ef, align 2, !tbaa !61
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %indvars.iv.next47.i
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !61
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %indvars.iv.next47.i
  store i16 %i.eh, ptr %i.ei, align 2, !tbaa !61
  %indvars.iv.next47.i.1 = add nuw nsw i64 %indvars.iv46.i, 2 ; 2 uses
  %exitcond50.not.i.1 = icmp eq i64 %indvars.iv.next47.i.1, %wide.trip.count49.i
  br i1 %exitcond50.not.i.1, label %._crit_edge37.i, label %vec.epilog.scalar.ph252, !llvm.loop !164

._crit_edge37.i:                                  ; preds = %vec.epilog.scalar.ph252.prol.loopexit, %vec.epilog.scalar.ph252, %vec.epilog.middle.block262, %middle.block248
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1 ; 2 uses
  %exitcond55.not.i = icmp eq i64 %indvars.iv.next52.i, %wide.trip.count54.i
  br i1 %exitcond55.not.i, label %CopyImgData.exit, label %iter.check251, !llvm.loop !165

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 5932
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !16
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 5936
  %i.em = load i32, ptr %i.el, align 8, !tbaa !30
  %i.en = mul nsw i32 %i.em, %i.ek
  %i.eo = sdiv i32 %i.en, 8
  %i.ep = add nsw i32 %i.eo, 16
  %i.eq = sext i32 %i.ep to i64
  %i.er = shl nsw i64 %i.eq, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi i64 [ %i.er, %bb.d ], [ 32, %bb.c ]
  %i.es = tail call noalias ptr @malloc(i64 noundef %.sink) #24 ; 29 uses
  store ptr %2, ptr @erc_img, align 8, !tbaa !14
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 316908
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !156 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 316908
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !156
  %i.ew = load i32, ptr %i.c, align 8, !tbaa !154 ; 2 uses
  store i32 %i.ew, ptr %i.e, align 8, !tbaa !154
  %i.ex = udiv i32 %i.ew, %i.eu                   ; 2 uses
  %i.ey = load i32, ptr %i.f, align 4, !tbaa !106
  %i.ez = icmp eq i32 %i.ey, 1                    ; 2 uses
  %i.fa = select i1 %i.ez, i32 2, i32 1           ; 2 uses
  %i.fb = load i32, ptr %i.i, align 8, !tbaa !107 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 5592
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !166
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !167 ; 2 uses
  br i1 %i.ez, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @init_lists_for_non_reference_loss(i32 noundef %i.fb, i32 noundef %i.ff)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @init_lists(i32 noundef %i.fb, i32 noundef %i.ff) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.fg = shl nsw i32 %i.ex, 2
  %i.fh = icmp sgt i32 %i.ex, 0
  br i1 %i.fh, label %.lr.ph198, label %._crit_edge199.split

.lr.ph198:                                        ; preds = %bb.h
  %i.fi = icmp sgt i32 %i.eu, 0
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 316976
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 316952
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 316976
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 316952
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.fz = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.ga = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.gc = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  %i.gd = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.ge = getelementptr inbounds nuw i8, ptr %i.es, i64 6
  %i.gf = getelementptr nuw i8, ptr %i.es, i64 8  ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.es, i64 10
  %i.gh = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  %i.gi = getelementptr inbounds nuw i8, ptr %i.es, i64 14
  %i.gj = getelementptr nuw i8, ptr %i.es, i64 16 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.es, i64 18
  %i.gl = getelementptr inbounds nuw i8, ptr %i.es, i64 20
  %i.gm = getelementptr inbounds nuw i8, ptr %i.es, i64 22
  %i.gn = getelementptr nuw i8, ptr %i.es, i64 24 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.es, i64 26
  %i.gp = getelementptr inbounds nuw i8, ptr %i.es, i64 28
  %i.gq = getelementptr inbounds nuw i8, ptr %i.es, i64 30
  %i.gr = getelementptr nuw i8, ptr %i.es, i64 32 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 316920
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 316928
  br i1 %i.fi, label %.lr.ph.preheader, label %._crit_edge199.split

.lr.ph.preheader:                                 ; preds = %.lr.ph198
  %i.gu = shl i32 %i.eu, 2
  %smax = tail call i32 @llvm.smax.i32(i32 %i.gu, i32 1)
  %i.gv = zext nneg i32 %i.fg to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  %i.gw = getelementptr nuw i8, ptr %i.es, i64 34
  %i.gx = getelementptr nuw i8, ptr %i.es, i64 36
  %i.gy = getelementptr nuw i8, ptr %i.es, i64 38
  %i.gz = getelementptr nuw i8, ptr %i.es, i64 40
  %i.ha = getelementptr nuw i8, ptr %i.es, i64 42
  %i.hb = getelementptr nuw i8, ptr %i.es, i64 44
  %i.hc = getelementptr nuw i8, ptr %i.es, i64 46
  %scevgep208.1 = getelementptr nuw i8, ptr %i.es, i64 36
  %scevgep208.1212 = getelementptr nuw i8, ptr %i.es, i64 40
  %scevgep208.1.1 = getelementptr nuw i8, ptr %i.es, i64 44
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 9 uses
  %i.hd = shl nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %3 = shl i32 %indvars.iv.tr, 2                  ; 2 uses
  %4 = zext i32 %3 to i64                         ; 4 uses
  %i.he = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %indvars.iv.tr219 = trunc i64 %indvars.iv to i32
  %i.hf = shl i32 %indvars.iv.tr219, 4
  %i.hg = or disjoint i64 %i.hd, 1                ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.loopexit ] ; 9 uses
  %i.hh = shl nuw nsw i64 %indvar, 2              ; 5 uses
  %i.hi = trunc nuw nsw i64 %indvar to i32        ; 3 uses
  %i.hj = shl i64 %indvar, 3
  %i.hk = and i64 %i.hj, 8589934584               ; 4 uses
  %i.hl = load ptr, ptr %i.fj, align 8, !tbaa !170
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !171
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !65
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvar
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !60 ; 2 uses
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !61
  %i.hs = sext i16 %i.hr to i32
  %i.ht = sdiv i32 %i.hs, %i.fa                   ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 2
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !61
  %i.hw = sext i16 %i.hv to i32
  %i.hx = sdiv i32 %i.hw, %i.fa                   ; 4 uses
  %i.hy = load ptr, ptr %i.fk, align 8, !tbaa !172
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !173
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %indvars.iv
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !174
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvar
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !175
  %narrow = call i8 @llvm.smax.i8(i8 %i.id, i8 0) ; 3 uses
  %spec.select = zext nneg i8 %narrow to i32
  %i.ie = trunc nsw i32 %i.ht to i16
  %i.if = load ptr, ptr %i.fl, align 8, !tbaa !170
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !171
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !65
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvar
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !60 ; 2 uses
  store i16 %i.ie, ptr %i.ik, align 2, !tbaa !61
  %i.il = trunc nsw i32 %i.hx to i16
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 2
  store i16 %i.il, ptr %i.im, align 2, !tbaa !61
  %i.in = load ptr, ptr %i.fm, align 8, !tbaa !172
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
  store i32 %3, ptr %i.jc, align 4, !tbaa !178
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
  %i.jw = load i32, ptr %i.fn, align 4, !tbaa !4
  %i.jx = trunc i32 %i.jw to i16                  ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.iw, i64 106 ; 3 uses
  store i16 %i.jx, ptr %i.jy, align 2, !tbaa !61
  %i.jz = load i32, ptr %i.fo, align 8, !tbaa !4
  %i.ka = trunc i32 %i.jz to i16                  ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.iw, i64 108
  store i16 %i.ka, ptr %i.kb, align 4, !tbaa !61
  %i.kc = load i32, ptr %i.fp, align 4, !tbaa !4
  %i.kd = trunc i32 %i.kc to i16                  ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.iw, i64 110
  store i16 %i.kd, ptr %i.ke, align 2, !tbaa !61
  %i.kf = getelementptr inbounds nuw i8, ptr %i.iw, i64 136 ; 3 uses
  %i.kg = load i32, ptr %i.fq, align 16, !tbaa !4
  %i.kh = trunc i32 %i.kg to i16                  ; 2 uses
  store i16 %i.kh, ptr %i.kf, align 8, !tbaa !61
  %i.ki = load i32, ptr %i.fr, align 4, !tbaa !4
  %i.kj = trunc i32 %i.ki to i16                  ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.iw, i64 138 ; 3 uses
  store i16 %i.kj, ptr %i.kk, align 2, !tbaa !61
  %i.kl = load i32, ptr %i.fs, align 8, !tbaa !4
  %i.km = trunc i32 %i.kl to i16                  ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.iw, i64 140
  store i16 %i.km, ptr %i.kn, align 4, !tbaa !61
  %i.ko = load i32, ptr %i.ft, align 4, !tbaa !4
  %i.kp = trunc i32 %i.ko to i16                  ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.iw, i64 142
  store i16 %i.kp, ptr %i.kq, align 2, !tbaa !61
  %i.kr = getelementptr inbounds nuw i8, ptr %i.iw, i64 168
  %i.ks = load i32, ptr %i.fu, align 16, !tbaa !4
  %i.kt = trunc i32 %i.ks to i16                  ; 2 uses
  store i16 %i.kt, ptr %i.kr, align 8, !tbaa !61
  %i.ku = load i32, ptr %i.fv, align 4, !tbaa !4
  %i.kv = trunc i32 %i.ku to i16                  ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.iw, i64 170
  store i16 %i.kv, ptr %i.kw, align 2, !tbaa !61
  %i.kx = load i32, ptr %i.fw, align 8, !tbaa !4
  %i.ky = trunc i32 %i.kx to i16                  ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.iw, i64 172
  store i16 %i.ky, ptr %i.kz, align 4, !tbaa !61
  %i.la = load i32, ptr %i.fx, align 4, !tbaa !4
  %i.lb = trunc i32 %i.la to i16                  ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.iw, i64 174
  store i16 %i.lb, ptr %i.lc, align 2, !tbaa !61
  %i.ld = getelementptr inbounds nuw i8, ptr %i.iw, i64 200
  %i.le = load i32, ptr %i.fy, align 16, !tbaa !4
  %i.lf = trunc i32 %i.le to i16                  ; 2 uses
  store i16 %i.lf, ptr %i.ld, align 8, !tbaa !61
  %i.lg = load i32, ptr %i.fz, align 4, !tbaa !4
  %i.lh = trunc i32 %i.lg to i16                  ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.iw, i64 202
  store i16 %i.lh, ptr %i.li, align 2, !tbaa !61
  %i.lj = load i32, ptr %i.ga, align 8, !tbaa !4
  %i.lk = trunc i32 %i.lj to i16                  ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.iw, i64 204
  store i16 %i.lk, ptr %i.ll, align 4, !tbaa !61
  %i.lm = load i32, ptr %i.gb, align 4, !tbaa !4
  %i.ln = trunc i32 %i.lm to i16                  ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.iw, i64 206
  store i16 %i.ln, ptr %i.lo, align 2, !tbaa !61
  store i16 %i.jv, ptr %i.es, align 2, !tbaa !61
  store i16 %i.jx, ptr %i.gc, align 2, !tbaa !61
  store i16 %i.ka, ptr %i.gd, align 2, !tbaa !61
  store i16 %i.kd, ptr %i.ge, align 2, !tbaa !61
  store i16 %i.kh, ptr %i.gf, align 2, !tbaa !61
  store i16 %i.kj, ptr %i.gg, align 2, !tbaa !61
  store i16 %i.km, ptr %i.gh, align 2, !tbaa !61
  store i16 %i.kp, ptr %i.gi, align 2, !tbaa !61
  store i16 %i.kt, ptr %i.gj, align 2, !tbaa !61
  store i16 %i.kv, ptr %i.gk, align 2, !tbaa !61
  store i16 %i.ky, ptr %i.gl, align 2, !tbaa !61
  store i16 %i.lb, ptr %i.gm, align 2, !tbaa !61
  store i16 %i.lf, ptr %i.gn, align 2, !tbaa !61
  store i16 %i.lh, ptr %i.go, align 2, !tbaa !61
  store i16 %i.lk, ptr %i.gp, align 2, !tbaa !61
  store i16 %i.ln, ptr %i.gq, align 2, !tbaa !61
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
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %i.mt
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !50
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 316928
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !64 ; 2 uses
  %i.my = mul i32 %i.ml, %i.lu
  %i.mz = add i32 %i.my, %i.ht                    ; 3 uses
  %i.na = mul i32 %i.mg, %i.lx
  %i.nb = add i32 %i.na, %i.hx                    ; 3 uses
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
  %i.oa = add i32 %i.nz, %i.ht                    ; 3 uses
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
  %i.oo = add i32 %i.on, %i.hx                    ; 3 uses
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
  %factor.op.mul = mul i32 %i.nv, %i.nj           ; 2 uses
  %factor.op.mul174 = mul i32 %i.nu, %i.nj        ; 2 uses
  %factor.op.mul175 = mul i32 %i.nv, %i.nk        ; 2 uses
  %factor.op.mul176 = mul i32 %i.nu, %i.nk        ; 2 uses
  %factor.op.mul177 = mul i32 %i.oj, %i.nj        ; 2 uses
  %factor.op.mul178 = mul i32 %i.oi, %i.nj        ; 2 uses
  %factor.op.mul179 = mul i32 %i.oj, %i.nk        ; 2 uses
  %factor.op.mul180 = mul i32 %i.oi, %i.nk        ; 2 uses
  %factor.op.mul181 = mul i32 %i.nv, %i.ow        ; 2 uses
  %factor.op.mul182 = mul i32 %i.nu, %i.ow        ; 2 uses
  %factor.op.mul183 = mul i32 %i.nv, %i.ox        ; 2 uses
  %factor.op.mul184 = mul i32 %i.nu, %i.ox        ; 2 uses
  %factor.op.mul185 = mul i32 %i.oj, %i.ow        ; 2 uses
  %factor.op.mul186 = mul i32 %i.oi, %i.ow        ; 2 uses
end_hunk_0
begin_hunk_1_@copy_to_conceal:bb.a
  %i.pq = zext i16 %i.pp to i32
  %.reass181.i.reass = mul i32 %factor.op.mul174, %i.pq
  %reass.add = add i32 %.reass181.i.reass, %.reass.i.reass
  %reass.add158 = add i32 %.reass185.i.reass, %.reass183.i.reass
  %i.pr = add i32 %reass.add158, %i.ma
  %i.ps = add i32 %i.pr, %reass.add
  %i.pt = sdiv i32 %i.ps, %i.lz
  %i.pu = trunc i32 %i.pt to i16                  ; 2 uses
  store i16 %i.pu, ptr %i.jt, align 8, !tbaa !61
  %i.pv = getelementptr inbounds [2 x i8], ptr %i.pc, i64 %i.ok
  %i.pw = load i16, ptr %i.pv, align 2, !tbaa !61
  %i.px = zext i16 %i.pw to i32
  %.reass191.i.reass = mul i32 %factor.op.mul179, %i.px
  %i.py = getelementptr inbounds [2 x i8], ptr %i.pc, i64 %i.ol
  %i.pz = load i16, ptr %i.py, align 2, !tbaa !61
  %i.qa = zext i16 %i.pz to i32
  %.reass193.i.reass = mul i32 %factor.op.mul180, %i.qa
  %i.qb = getelementptr inbounds [2 x i8], ptr %i.pe, i64 %i.ok
  %i.qc = load i16, ptr %i.qb, align 2, !tbaa !61
  %i.qd = zext i16 %i.qc to i32
  %.reass187.i.reass = mul i32 %factor.op.mul177, %i.qd
  %i.qe = getelementptr inbounds [2 x i8], ptr %i.pe, i64 %i.ol
  %i.qf = load i16, ptr %i.qe, align 2, !tbaa !61
  %i.qg = zext i16 %i.qf to i32
  %.reass189.i.reass = mul i32 %factor.op.mul178, %i.qg
  %reass.add160 = add i32 %.reass189.i.reass, %.reass187.i.reass
  %reass.add162 = add i32 %.reass193.i.reass, %.reass191.i.reass
  %i.qh = add i32 %reass.add162, %i.ma
  %i.qi = add i32 %i.qh, %reass.add160
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
  %.reass199.i.reass = mul i32 %factor.op.mul183, %i.qr
  %i.qs = getelementptr inbounds [2 x i8], ptr %i.qm, i64 %i.nx
  %i.qt = load i16, ptr %i.qs, align 2, !tbaa !61
  %i.qu = zext i16 %i.qt to i32
  %.reass201.i.reass = mul i32 %factor.op.mul184, %i.qu
  %i.qv = getelementptr inbounds [2 x i8], ptr %i.qo, i64 %i.nw
  %i.qw = load i16, ptr %i.qv, align 2, !tbaa !61
  %i.qx = zext i16 %i.qw to i32
  %.reass195.i.reass = mul i32 %factor.op.mul181, %i.qx
  %i.qy = getelementptr inbounds [2 x i8], ptr %i.qo, i64 %i.nx
  %i.qz = load i16, ptr %i.qy, align 2, !tbaa !61
  %i.ra = zext i16 %i.qz to i32
  %.reass197.i.reass = mul i32 %factor.op.mul182, %i.ra
  %reass.add164 = add i32 %.reass197.i.reass, %.reass195.i.reass
  %reass.add166 = add i32 %.reass201.i.reass, %.reass199.i.reass
  %i.rb = add i32 %reass.add166, %i.ma
  %i.rc = add i32 %i.rb, %reass.add164
  %i.rd = sdiv i32 %i.rc, %i.lz
  %i.re = trunc i32 %i.rd to i16                  ; 2 uses
  store i16 %i.re, ptr %i.kf, align 8, !tbaa !61
  %i.rf = getelementptr inbounds [2 x i8], ptr %i.qm, i64 %i.ok
  %i.rg = load i16, ptr %i.rf, align 2, !tbaa !61
  %i.rh = zext i16 %i.rg to i32
  %.reass207.i.reass = mul i32 %factor.op.mul187, %i.rh
  %i.ri = getelementptr inbounds [2 x i8], ptr %i.qm, i64 %i.ol
  %i.rj = load i16, ptr %i.ri, align 2, !tbaa !61
  %i.rk = zext i16 %i.rj to i32
  %.reass209.i.reass = mul i32 %factor.op.mul188, %i.rk
  %i.rl = getelementptr inbounds [2 x i8], ptr %i.qo, i64 %i.ok
  %i.rm = load i16, ptr %i.rl, align 2, !tbaa !61
  %i.rn = zext i16 %i.rm to i32
  %.reass203.i.reass = mul i32 %factor.op.mul185, %i.rn
  %i.ro = getelementptr inbounds [2 x i8], ptr %i.qo, i64 %i.ol
  %i.rp = load i16, ptr %i.ro, align 2, !tbaa !61
  %i.rq = zext i16 %i.rp to i32
  %.reass205.i.reass = mul i32 %factor.op.mul186, %i.rq
  %reass.add168 = add i32 %.reass205.i.reass, %.reass203.i.reass
  %reass.add170 = add i32 %.reass209.i.reass, %.reass207.i.reass
  %i.rr = add i32 %reass.add170, %i.ma
  %i.rs = add i32 %i.rr, %reass.add168
  %i.rt = sdiv i32 %i.rs, %i.lz
  %i.ru = trunc i32 %i.rt to i16                  ; 2 uses
  store i16 %i.ru, ptr %i.kk, align 2, !tbaa !61
  store i16 %i.pu, ptr %i.gr, align 2, !tbaa !61
  store i16 %i.qk, ptr %i.gw, align 2, !tbaa !61
  store i16 %i.re, ptr %i.gx, align 2, !tbaa !61
  store i16 %i.ru, ptr %i.gy, align 2, !tbaa !61
  %i.rv = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !65 ; 4 uses
  %i.rx = getelementptr inbounds [8 x i8], ptr %i.rw, i64 %i.nl
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !60 ; 4 uses
  %i.rz = getelementptr inbounds [8 x i8], ptr %i.rw, i64 %i.nm
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !60 ; 4 uses
  %i.sb = getelementptr inbounds [2 x i8], ptr %i.ry, i64 %i.nw
  %i.sc = load i16, ptr %i.sb, align 2, !tbaa !61
  %i.sd = zext i16 %i.sc to i32
  %.reass183.i.reass.1 = mul i32 %factor.op.mul175, %i.sd
  %i.se = getelementptr inbounds [2 x i8], ptr %i.ry, i64 %i.nx
  %i.sf = load i16, ptr %i.se, align 2, !tbaa !61
  %i.sg = zext i16 %i.sf to i32
  %.reass185.i.reass.1 = mul i32 %factor.op.mul176, %i.sg
  %i.sh = getelementptr inbounds [2 x i8], ptr %i.sa, i64 %i.nw
  %i.si = load i16, ptr %i.sh, align 2, !tbaa !61
  %i.sj = zext i16 %i.si to i32
  %.reass.i.reass.1 = mul i32 %factor.op.mul, %i.sj
  %i.sk = getelementptr inbounds [2 x i8], ptr %i.sa, i64 %i.nx
  %i.sl = load i16, ptr %i.sk, align 2, !tbaa !61
  %i.sm = zext i16 %i.sl to i32
  %.reass181.i.reass.1 = mul i32 %factor.op.mul174, %i.sm
  %reass.add.1 = add i32 %.reass181.i.reass.1, %.reass.i.reass.1
  %reass.add158.1 = add i32 %.reass185.i.reass.1, %.reass183.i.reass.1
  %i.sn = add i32 %reass.add158.1, %i.ma
  %i.so = add i32 %i.sn, %reass.add.1
  %i.sp = sdiv i32 %i.so, %i.lz
  %i.sq = trunc i32 %i.sp to i16                  ; 2 uses
  store i16 %i.sq, ptr %i.jt, align 8, !tbaa !61
  %i.sr = getelementptr inbounds [2 x i8], ptr %i.ry, i64 %i.ok
  %i.ss = load i16, ptr %i.sr, align 2, !tbaa !61
  %i.st = zext i16 %i.ss to i32
  %.reass191.i.reass.1 = mul i32 %factor.op.mul179, %i.st
  %i.su = getelementptr inbounds [2 x i8], ptr %i.ry, i64 %i.ol
  %i.sv = load i16, ptr %i.su, align 2, !tbaa !61
  %i.sw = zext i16 %i.sv to i32
  %.reass193.i.reass.1 = mul i32 %factor.op.mul180, %i.sw
  %i.sx = getelementptr inbounds [2 x i8], ptr %i.sa, i64 %i.ok
  %i.sy = load i16, ptr %i.sx, align 2, !tbaa !61
  %i.sz = zext i16 %i.sy to i32
  %.reass187.i.reass.1 = mul i32 %factor.op.mul177, %i.sz
  %i.ta = getelementptr inbounds [2 x i8], ptr %i.sa, i64 %i.ol
  %i.tb = load i16, ptr %i.ta, align 2, !tbaa !61
  %i.tc = zext i16 %i.tb to i32
  %.reass189.i.reass.1 = mul i32 %factor.op.mul178, %i.tc
  %reass.add160.1 = add i32 %.reass189.i.reass.1, %.reass187.i.reass.1
  %reass.add162.1 = add i32 %.reass193.i.reass.1, %.reass191.i.reass.1
  %i.td = add i32 %reass.add162.1, %i.ma
  %i.te = add i32 %i.td, %reass.add160.1
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
  %.reass199.i.reass.1 = mul i32 %factor.op.mul183, %i.tn
  %i.to = getelementptr inbounds [2 x i8], ptr %i.ti, i64 %i.nx
  %i.tp = load i16, ptr %i.to, align 2, !tbaa !61
  %i.tq = zext i16 %i.tp to i32
  %.reass201.i.reass.1 = mul i32 %factor.op.mul184, %i.tq
  %i.tr = getelementptr inbounds [2 x i8], ptr %i.tk, i64 %i.nw
  %i.ts = load i16, ptr %i.tr, align 2, !tbaa !61
  %i.tt = zext i16 %i.ts to i32
  %.reass195.i.reass.1 = mul i32 %factor.op.mul181, %i.tt
  %i.tu = getelementptr inbounds [2 x i8], ptr %i.tk, i64 %i.nx
  %i.tv = load i16, ptr %i.tu, align 2, !tbaa !61
  %i.tw = zext i16 %i.tv to i32
  %.reass197.i.reass.1 = mul i32 %factor.op.mul182, %i.tw
  %reass.add164.1 = add i32 %.reass197.i.reass.1, %.reass195.i.reass.1
  %reass.add166.1 = add i32 %.reass201.i.reass.1, %.reass199.i.reass.1
  %i.tx = add i32 %reass.add166.1, %i.ma
  %i.ty = add i32 %i.tx, %reass.add164.1
  %i.tz = sdiv i32 %i.ty, %i.lz
  %i.ua = trunc i32 %i.tz to i16                  ; 2 uses
  store i16 %i.ua, ptr %i.kf, align 8, !tbaa !61
  %i.ub = getelementptr inbounds [2 x i8], ptr %i.ti, i64 %i.ok
  %i.uc = load i16, ptr %i.ub, align 2, !tbaa !61
  %i.ud = zext i16 %i.uc to i32
  %.reass207.i.reass.1 = mul i32 %factor.op.mul187, %i.ud
  %i.ue = getelementptr inbounds [2 x i8], ptr %i.ti, i64 %i.ol
  %i.uf = load i16, ptr %i.ue, align 2, !tbaa !61
  %i.ug = zext i16 %i.uf to i32
  %.reass209.i.reass.1 = mul i32 %factor.op.mul188, %i.ug
  %i.uh = getelementptr inbounds [2 x i8], ptr %i.tk, i64 %i.ok
  %i.ui = load i16, ptr %i.uh, align 2, !tbaa !61
  %i.uj = zext i16 %i.ui to i32
  %.reass203.i.reass.1 = mul i32 %factor.op.mul185, %i.uj
  %i.uk = getelementptr inbounds [2 x i8], ptr %i.tk, i64 %i.ol
  %i.ul = load i16, ptr %i.uk, align 2, !tbaa !61
  %i.um = zext i16 %i.ul to i32
  %.reass205.i.reass.1 = mul i32 %factor.op.mul186, %i.um
  %reass.add168.1 = add i32 %.reass205.i.reass.1, %.reass203.i.reass.1
  %reass.add170.1 = add i32 %.reass209.i.reass.1, %.reass207.i.reass.1
  %i.un = add i32 %reass.add170.1, %i.ma
  %i.uo = add i32 %i.un, %reass.add168.1
  %i.up = sdiv i32 %i.uo, %i.lz
  %i.uq = trunc i32 %i.up to i16                  ; 2 uses
  store i16 %i.uq, ptr %i.kk, align 2, !tbaa !61
  store i16 %i.sq, ptr %i.gz, align 2, !tbaa !61
  store i16 %i.tg, ptr %i.ha, align 2, !tbaa !61
  store i16 %i.ua, ptr %i.hb, align 2, !tbaa !61
  store i16 %i.uq, ptr %i.hc, align 2, !tbaa !61
  %.pre = load i32, ptr %i.lq, align 4, !tbaa !63
  %i.ur = icmp eq i32 %.pre, 0
  br label %buildPredblockRegionYUV.exit

buildPredblockRegionYUV.exit:                     ; preds = %.preheader.preheader.i, %bb.k
  %.not149 = phi i1 [ %i.ur, %.preheader.preheader.i ], [ true, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.us = load ptr, ptr %i.gs, align 8, !tbaa !52 ; 4 uses
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %4
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !60
  %scevgep = getelementptr nuw i8, ptr %i.uu, i64 %i.hk
  %i.uv = load i64, ptr %i.es, align 2, !tbaa !61
  store i64 %i.uv, ptr %scevgep, align 2, !tbaa !61
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %4
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !60
  %scevgep.1 = getelementptr nuw i8, ptr %i.uy, i64 %i.hk
  %i.uz = load i64, ptr %i.gf, align 2, !tbaa !61
  store i64 %i.uz, ptr %scevgep.1, align 2, !tbaa !61
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %4
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 16
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !60
  %scevgep.2 = getelementptr nuw i8, ptr %i.vc, i64 %i.hk
  %i.vd = load i64, ptr %i.gj, align 2, !tbaa !61
  store i64 %i.vd, ptr %scevgep.2, align 2, !tbaa !61
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %4
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 24
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !60
  %scevgep.3 = getelementptr nuw i8, ptr %i.vg, i64 %i.hk
  %i.vh = load i64, ptr %i.gn, align 2, !tbaa !61
  store i64 %i.vh, ptr %scevgep.3, align 2, !tbaa !61
  br i1 %.not149, label %.loopexit, label %.preheader172

.preheader172:                                    ; preds = %buildPredblockRegionYUV.exit
  %i.vi = load ptr, ptr %i.gt, align 8, !tbaa !64 ; 2 uses
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !65 ; 2 uses
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %i.hd
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !60
  %scevgep203 = getelementptr nuw i8, ptr %i.vl, i64 %i.hh
  %i.vm = load i32, ptr %i.gr, align 2, !tbaa !61
  store i32 %i.vm, ptr %scevgep203, align 2, !tbaa !61
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %i.hg
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !60
  %scevgep203.1 = getelementptr nuw i8, ptr %i.vo, i64 %i.hh
  %i.vp = load i32, ptr %scevgep208.1, align 2, !tbaa !61
  store i32 %i.vp, ptr %scevgep203.1, align 2, !tbaa !61
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vi, i64 8
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !65 ; 2 uses
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.vr, i64 %i.hd
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !60
  %scevgep203.1213 = getelementptr nuw i8, ptr %i.vt, i64 %i.hh
  %i.vu = load i32, ptr %scevgep208.1212, align 2, !tbaa !61
  store i32 %i.vu, ptr %scevgep203.1213, align 2, !tbaa !61
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %i.vr, i64 %i.hg
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !60
  %scevgep203.1.1 = getelementptr nuw i8, ptr %i.vw, i64 %i.hh
  %i.vx = load i32, ptr %scevgep208.1.1, align 2, !tbaa !61
  store i32 %i.vx, ptr %scevgep203.1.1, align 2, !tbaa !61
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader172, %buildPredblockRegionYUV.exit
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !184

._crit_edge:                                      ; preds = %.loopexit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.vy = icmp samesign ult i64 %indvars.iv.next, %i.gv
  br i1 %i.vy, label %.lr.ph, label %._crit_edge199.split, !llvm.loop !185

._crit_edge199.split:                             ; preds = %._crit_edge, %.lr.ph198, %bb.h
  call void @free(ptr noundef %i.es) #23
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
end_hunk_1
