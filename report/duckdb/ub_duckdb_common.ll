inline.NumInlined: 29987
inline.NumDeleted: 10454
begin_hunk_0_@duckdb_fsst_decompress:bb.a
bb.c:                                             ; preds = %.lr.ph
  %i.bb = trunc i32 %.0.copyload to i8            ; 2 uses
  %i.bc = tail call range(i32 7, 33) i32 @llvm.cttz.i32(i32 %i.n, i1 true)
  %i.bd = lshr i32 %i.bc, 3
  switch i32 %i.bd, label %default.unreachable215 [
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 1, label %bb.f
    i32 0, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.be = add i64 %.0166190, 1                    ; 2 uses
  %.mask = and i32 %.0.copyload, 255
  %i.bf = zext nneg i32 %.mask to i64             ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 %.0165191
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bf
  %i.bi = load i64, ptr %i.bh, align 8
  store i64 %i.bi, ptr %i.bg, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bf
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !79
  %i.bl = zext i8 %i.bk to i64
  %i.bm = add i64 %.0165191, %i.bl
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 %i.be
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !79
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bn = phi i8 [ %.pre, %bb.d ], [ %i.bb, %bb.c ]
  %.1167 = phi i64 [ %i.be, %bb.d ], [ %.0166190, %bb.c ]
  %.1 = phi i64 [ %i.bm, %bb.d ], [ %.0165191, %bb.c ] ; 2 uses
  %i.bo = add i64 %.1167, 1                       ; 2 uses
  %i.bp = zext i8 %i.bn to i64                    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 %.1
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bp
  %i.bs = load i64, ptr %i.br, align 8
  store i64 %i.bs, ptr %i.bq, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bp
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !79
  %i.bv = zext i8 %i.bu to i64
  %i.bw = add i64 %.1, %i.bv
  %.phi.trans.insert204 = getelementptr inbounds nuw i8, ptr %2, i64 %i.bo
  %.pre205 = load i8, ptr %.phi.trans.insert204, align 1, !tbaa !79
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.bx = phi i8 [ %.pre205, %bb.e ], [ %i.bb, %bb.c ]
  %.2168 = phi i64 [ %i.bo, %bb.e ], [ %.0166190, %bb.c ]
  %.2 = phi i64 [ %i.bw, %bb.e ], [ %.0165191, %bb.c ] ; 2 uses
  %i.by = add i64 %.2168, 1
  %i.bz = zext i8 %i.bx to i64                    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 %.2
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bz
  %i.cc = load i64, ptr %i.cb, align 8
  store i64 %i.cc, ptr %i.ca, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bz
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !79
  %i.cf = zext i8 %i.ce to i64
  %i.cg = add i64 %.2, %i.cf
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.3169 = phi i64 [ %i.by, %bb.f ], [ %.0166190, %bb.c ] ; 2 uses
  %.3 = phi i64 [ %i.cg, %bb.f ], [ %.0165191, %bb.c ] ; 2 uses
  %i.ch = getelementptr i8, ptr %2, i64 %.3169
  %i.ci = getelementptr i8, ptr %i.ch, i64 1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !79
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 %.3
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !79
  %i.cl = add i64 %.3, 1
  %i.cm = add i64 %.3169, 2
  br label %bb.h

default.unreachable215:                           ; preds = %bb.c
  unreachable

bb.h:                                             ; preds = %bb.g, %bb.b
  %.5171 = phi i64 [ %i.h, %bb.b ], [ %i.cm, %bb.g ] ; 3 uses
  %.5 = phi i64 [ %i.ba, %bb.b ], [ %i.cl, %bb.g ] ; 3 uses
  %i.cn = add i64 %.5, 32
  %i.co = icmp ule i64 %i.cn, %3                  ; 2 uses
  %i.cp = add i64 %.5171, 4                       ; 2 uses
  %i.cq = icmp ule i64 %i.cp, %1
  %i.cr = and i1 %i.cq, %i.co
  br i1 %i.cr, label %.lr.ph, label %._crit_edge, !llvm.loop !2313

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.0166.lcssa = phi i64 [ 0, %bb.a ], [ %.5171, %bb.h ] ; 5 uses
  %.0165.lcssa = phi i64 [ 0, %bb.a ], [ %.5, %bb.h ] ; 5 uses
  %.lcssa = phi i1 [ %i.e, %bb.a ], [ %i.co, %bb.h ]
  br i1 %.lcssa, label %bb.i, label %bb.q

bb.i:                                             ; preds = %._crit_edge
  %i.cs = add i64 %.0166.lcssa, 2                 ; 3 uses
  %.not = icmp ugt i64 %i.cs, %1
  br i1 %.not, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ct = getelementptr i8, ptr %2, i64 %.0166.lcssa ; 3 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 1      ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !79
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 %.0165.lcssa ; 2 uses
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !79
  %i.cx = load i8, ptr %i.ct, align 1, !tbaa !79  ; 2 uses
  %.not182 = icmp eq i8 %i.cx, -1
  br i1 %.not182, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cy = zext i8 %i.cx to i64                    ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8
  store i64 %i.da, ptr %i.cw, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cy
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !79
  %i.dd = zext i8 %i.dc to i64
  %i.de = add i64 %.0165.lcssa, %i.dd             ; 4 uses
  %i.df = load i8, ptr %i.cu, align 1, !tbaa !79  ; 2 uses
  %.not183 = icmp eq i8 %i.df, -1
  br i1 %.not183, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dg = zext i8 %i.df to i64                    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 %i.de
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.dg
  %i.dj = load i64, ptr %i.di, align 8
  store i64 %i.dj, ptr %i.dh, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dg
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !79
  %i.dm = zext i8 %i.dl to i64
  %i.dn = add i64 %i.de, %i.dm
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.do = add i64 %.0166.lcssa, 3
  %i.dp = getelementptr i8, ptr %i.ct, i64 2
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !79
  %i.dr = add i64 %i.de, 1
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 %i.de
  store i8 %i.dq, ptr %i.ds, align 1, !tbaa !79
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.dt = add i64 %.0165.lcssa, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.i
  %.6172 = phi i64 [ %i.cs, %bb.l ], [ %i.do, %bb.m ], [ %i.cs, %bb.n ], [ %.0166.lcssa, %bb.i ] ; 4 uses
  %.6 = phi i64 [ %i.dn, %bb.l ], [ %i.dr, %bb.m ], [ %i.dt, %bb.n ], [ %.0165.lcssa, %bb.i ] ; 3 uses
  %i.du = icmp ult i64 %.6172, %1
  br i1 %i.du, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dv = add nuw i64 %.6172, 1
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 %.6172
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !79
  %i.dy = zext i8 %i.dx to i64                    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 %.6
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.dy
  %i.eb = load i64, ptr %i.ea, align 8
  store i64 %i.eb, ptr %i.dz, align 1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dy
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !79
  %i.ee = zext i8 %i.ed to i64
  %i.ef = add i64 %.6, %i.ee
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %._crit_edge
  %.7173 = phi i64 [ %i.dv, %bb.p ], [ %.6172, %bb.o ], [ %.0166.lcssa, %._crit_edge ] ; 2 uses
  %.7 = phi i64 [ %i.ef, %bb.p ], [ %.6, %bb.o ], [ %.0165.lcssa, %._crit_edge ] ; 2 uses
  %i.eg = icmp ult i64 %.7173, %1
  br i1 %i.eg, label %.lr.ph200.preheader, label %._crit_edge201

.lr.ph200.preheader:                              ; preds = %bb.q
  %i.eh = add i64 %i.b, -264
  br label %.lr.ph200

.lr.ph200:                                        ; preds = %.lr.ph200.preheader, %.loopexit
  %.8198 = phi i64 [ %.9, %.loopexit ], [ %.7, %.lr.ph200.preheader ] ; 14 uses
  %.8174197 = phi i64 [ %.9175, %.loopexit ], [ %.7173, %.lr.ph200.preheader ] ; 3 uses
  %i.ei = add nuw i64 %.8174197, 1                ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 %.8174197
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !79  ; 2 uses
  %.not186 = icmp eq i8 %i.ek, -1
  br i1 %.not186, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph200
  %i.el = zext i8 %i.ek to i64                    ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !79
  %i.eo = zext i8 %i.en to i64
  %i.ep = add i64 %.8198, %i.eo                   ; 6 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.el ; 3 uses
  %i.er = sub i64 0, %.8198
  %i.es = getelementptr inbounds i8, ptr %i.eq, i64 %i.er ; 5 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.ep, i64 %3) ; 5 uses
  %i.et = icmp ult i64 %.8198, %spec.select
  br i1 %i.et, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.r
  %i.eu = sub nuw i64 %spec.select, %.8198        ; 7 uses
  %min.iters.check = icmp ult i64 %i.eu, 4
  br i1 %min.iters.check, label %.lr.ph196.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ev = shl nuw nsw i64 %i.el, 3
  %i.ew = add i64 %i.eh, %.8198
  %i.ex = add i64 %i.ev, %i.a
  %i.ey = sub i64 %i.ew, %i.ex
  %diff.check = icmp ult i64 %i.ey, 32
  br i1 %diff.check, label %.lr.ph196.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check219 = icmp ult i64 %i.eu, 32
  br i1 %min.iters.check219, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.eu, 28
  %n.vec = and i64 %i.eu, -32                     ; 4 uses
  %i.ez = add i64 %.8198, %n.vec
  %i.fa = getelementptr i8, ptr %4, i64 %.8198
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fb = getelementptr inbounds i8, ptr %i.eq, i64 %index ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %wide.load = load <16 x i8>, ptr %i.fb, align 1, !tbaa !79
  %wide.load220 = load <16 x i8>, ptr %i.fc, align 1, !tbaa !79
  %i.fd = getelementptr i8, ptr %i.fa, i64 %index ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store <16 x i8> %wide.load, ptr %i.fd, align 1, !tbaa !79
  store <16 x i8> %wide.load220, ptr %i.fe, align 1, !tbaa !79
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ff = icmp eq i64 %index.next, %n.vec
  br i1 %i.ff, label %middle.block, label %vector.body, !llvm.loop !2314

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eu, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph196.preheader, label %vec.epilog.ph, !prof !1469

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec222 = and i64 %i.eu, -4                   ; 3 uses
  %i.fg = add i64 %.8198, %n.vec222
  %i.fh = getelementptr i8, ptr %4, i64 %.8198
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index223 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next225, %vec.epilog.vector.body ] ; 3 uses
  %i.fi = getelementptr inbounds i8, ptr %i.eq, i64 %index223
  %wide.load224 = load <4 x i8>, ptr %i.fi, align 1, !tbaa !79
  %i.fj = getelementptr i8, ptr %i.fh, i64 %index223
  store <4 x i8> %wide.load224, ptr %i.fj, align 1, !tbaa !79
  %index.next225 = add nuw i64 %index223, 4       ; 2 uses
  %i.fk = icmp eq i64 %index.next225, %n.vec222
  br i1 %i.fk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2315

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n226 = icmp eq i64 %i.eu, %n.vec222
  br i1 %cmp.n226, label %.loopexit, label %.lr.ph196.preheader

.lr.ph196.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0164194.ph = phi i64 [ %.8198, %iter.check ], [ %.8198, %vector.memcheck ], [ %i.ez, %vec.epilog.iter.check ], [ %i.fg, %vec.epilog.middle.block ] ; 4 uses
  %i.fl = sub i64 %spec.select, %.0164194.ph
  %xtraiter = and i64 %i.fl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph196.prol.loopexit, label %.lr.ph196.prol

.lr.ph196.prol:                                   ; preds = %.lr.ph196.preheader, %.lr.ph196.prol
  %.0164194.prol = phi i64 [ %i.fp, %.lr.ph196.prol ], [ %.0164194.ph, %.lr.ph196.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph196.prol ], [ 0, %.lr.ph196.preheader ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.es, i64 %.0164194.prol
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !79
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 %.0164194.prol
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !79
  %i.fp = add nuw i64 %.0164194.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph196.prol.loopexit, label %.lr.ph196.prol, !llvm.loop !2316

.lr.ph196.prol.loopexit:                          ; preds = %.lr.ph196.prol, %.lr.ph196.preheader
  %.0164194.unr = phi i64 [ %.0164194.ph, %.lr.ph196.preheader ], [ %i.fp, %.lr.ph196.prol ]
  %i.fq = sub i64 %.0164194.ph, %spec.select
  %i.fr = icmp ugt i64 %i.fq, -4
  br i1 %i.fr, label %.loopexit, label %.lr.ph196

.lr.ph196:                                        ; preds = %.lr.ph196.prol.loopexit, %.lr.ph196
  %.0164194 = phi i64 [ %i.gh, %.lr.ph196 ], [ %.0164194.unr, %.lr.ph196.prol.loopexit ] ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.es, i64 %.0164194
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !79
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 %.0164194
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !79
  %i.fv = add nuw i64 %.0164194, 1                ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !79
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 %i.fv
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !79
  %i.fz = add nuw i64 %.0164194, 2                ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !79
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 %i.fz
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !79
  %i.gd = add nuw i64 %.0164194, 3                ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !79
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 %i.gd
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !79
  %i.gh = add nuw i64 %.0164194, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.gh, %spec.select
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph196, !llvm.loop !2317

bb.s:                                             ; preds = %.lr.ph200
  %i.gi = icmp ult i64 %.8198, %3
  br i1 %i.gi, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 %i.ei
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !79
  %i.gl = getelementptr inbounds nuw i8, ptr %4, i64 %.8198
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !79
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.gm = add i64 %.8174197, 2
  %i.gn = add i64 %.8198, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph196.prol.loopexit, %.lr.ph196, %middle.block, %vec.epilog.middle.block, %bb.r, %bb.u
  %.9175 = phi i64 [ %i.gm, %bb.u ], [ %i.ei, %bb.r ], [ %i.ei, %middle.block ], [ %i.ei, %vec.epilog.middle.block ], [ %i.ei, %.lr.ph196 ], [ %i.ei, %.lr.ph196.prol.loopexit ] ; 2 uses
  %.9 = phi i64 [ %i.gn, %bb.u ], [ %i.ep, %bb.r ], [ %i.ep, %middle.block ], [ %i.ep, %vec.epilog.middle.block ], [ %i.ep, %.lr.ph196 ], [ %i.ep, %.lr.ph196.prol.loopexit ] ; 2 uses
  %i.go = icmp ult i64 %.9175, %1
  br i1 %i.go, label %.lr.ph200, label %._crit_edge201, !llvm.loop !2318

._crit_edge201:                                   ; preds = %.loopexit, %bb.q
  %.8.lcssa = phi i64 [ %.7, %bb.q ], [ %.9, %.loopexit ] ; 2 uses
  %.not184 = icmp ult i64 %.8.lcssa, %3
  br i1 %.not184, label %bb.x, label %bb.v

bb.v:                                             ; preds = %._crit_edge201
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gq = load i8, ptr %i.gp, align 8, !tbaa !2319
  %i.gr = and i8 %i.gq, 1
  %.not185 = icmp eq i8 %i.gr, 0
  br i1 %.not185, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gs = getelementptr i8, ptr %4, i64 %3
  %i.gt = getelementptr i8, ptr %i.gs, i64 -1
  store i8 0, ptr %i.gt, align 1, !tbaa !79
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge201
  ret i64 %.8.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb18MiniZStreamWrapperD2Ev(ptr noundef nonnull align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::ErrorData", align 8 ; 5 uses
  %2 = alloca %"class.duckdb::shared_ptr.114", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb18MiniZStreamWrapperE, i64 16), ptr %0, align 8, !tbaa !35
  %i.a = tail call noundef zeroext i1 @_ZSt18uncaught_exceptionv() #66
  br i1 %i.a, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb18MiniZStreamWrapper5CloseEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.z unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = extractvalue { ptr, i32 } %i.b, 1
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #58
  %i.f = icmp eq i32 %i.d, %i.e
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.c) #58
  br i1 %i.f, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2321 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.invoke, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !912
  %.not11 = icmp eq ptr %i.k, null
  br i1 %.not11, label %.invoke, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58
  invoke void @_ZN6duckdb9ErrorDataC1ERKSt9exception(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.g unwind label %bb.aa

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !2321
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.n = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.h unwind label %bb.r       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1206 ; 3 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !1206
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !78   ; 3 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !78
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_6LoggerELb1EEC2ERKS2_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_6LoggerELb1EEC2ERKS2_.exit

bb.k:                                             ; preds = %bb.i
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !1206
  br label %_ZN6duckdb10shared_ptrINS_6LoggerELb1EEC2ERKS2_.exit

_ZN6duckdb10shared_ptrINS_6LoggerELb1EEC2ERKS2_.exit: ; preds = %bb.h, %bb.j, %bb.k
  %i.y = phi ptr [ %i.p, %bb.h ], [ %i.p, %bb.j ], [ %.pre, %bb.k ]
  %.not12 = icmp eq ptr %i.y, null
  br i1 %.not12, label %bb.w, label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb10shared_ptrINS_6LoggerELb1EEC2ERKS2_.exit
  %i.z = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6Logger3GetERKNS_10shared_ptrIS0_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.m unwind label %bb.s       ; 3 uses

bb.m:                                             ; preds = %bb.l
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull @.str.60, i8 noundef zeroext 50)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  br i1 %i.ad, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_0
