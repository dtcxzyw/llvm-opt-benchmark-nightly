inline.NumInlined: 29988
inline.NumDeleted: 10454
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 385
loop-unroll.NumUnrolled: 431
begin_hunk_0_@duckdb_fsst_decompress:bb.a
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
  br i1 %i.cr, label %.lr.ph, label %._crit_edge, !llvm.loop !2311

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
  %min.iters.check = icmp ult i64 %i.eu, 8
  br i1 %min.iters.check, label %.lr.ph196.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ev = shl nuw nsw i64 %i.el, 3
  %i.ew = add i64 %i.eh, %.8198
  %i.ex = add i64 %i.ev, %i.a
  %i.ey = sub i64 %i.ex, %i.ew
  %diff.check = icmp ugt i64 %i.ey, -32
  br i1 %diff.check, label %.lr.ph196.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check219 = icmp ult i64 %i.eu, 32
  br i1 %min.iters.check219, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.eu, 24
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
  br i1 %i.ff, label %middle.block, label %vector.body, !llvm.loop !2312

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eu, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph196.preheader, label %vec.epilog.ph, !prof !609

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec222 = and i64 %i.eu, -8                   ; 3 uses
  %i.fg = add i64 %.8198, %n.vec222
  %i.fh = getelementptr i8, ptr %4, i64 %.8198
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index223 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next225, %vec.epilog.vector.body ] ; 3 uses
  %i.fi = getelementptr inbounds i8, ptr %i.eq, i64 %index223
  %wide.load224 = load <8 x i8>, ptr %i.fi, align 1, !tbaa !79
  %i.fj = getelementptr i8, ptr %i.fh, i64 %index223
  store <8 x i8> %wide.load224, ptr %i.fj, align 1, !tbaa !79
  %index.next225 = add nuw i64 %index223, 8       ; 2 uses
  %i.fk = icmp eq i64 %index.next225, %n.vec222
  br i1 %i.fk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2313

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
  br i1 %prol.iter.cmp.not, label %.lr.ph196.prol.loopexit, label %.lr.ph196.prol, !llvm.loop !2314

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
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph196, !llvm.loop !2315

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
  br i1 %i.go, label %.lr.ph200, label %._crit_edge201, !llvm.loop !2316

._crit_edge201:                                   ; preds = %.loopexit, %bb.q
  %.8.lcssa = phi i64 [ %.7, %bb.q ], [ %.9, %.loopexit ] ; 2 uses
  %.not184 = icmp ult i64 %.8.lcssa, %3
  br i1 %.not184, label %bb.x, label %bb.v

bb.v:                                             ; preds = %._crit_edge201
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gq = load i8, ptr %i.gp, align 8, !tbaa !2317
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
define void @_ZN6duckdb18MiniZStreamWrapperD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2319 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.invoke, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !913
  %.not11 = icmp eq ptr %i.k, null
  br i1 %.not11, label %.invoke, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58
  invoke void @_ZN6duckdb9ErrorDataC1ERKSt9exception(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.g unwind label %bb.aa

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !2319
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.n = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.h unwind label %bb.r       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1207 ; 3 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !1207
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
  %.pre = load ptr, ptr %2, align 8, !tbaa !1207
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
end_hunk_0
begin_hunk_1_@_ZN6duckdb13UnaryExecutor15ExecuteStandardImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm1EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvS6_S6_mPvbNS_14FunctionErrorsE:bb.a
_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #58
  br label %bb.aw

bb.at:                                            ; preds = %bb.v, %bb.u
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.au:                                            ; preds = %bb.w
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %bb.x, %bb.af
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.av, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75, %bb.au, %bb.at
  %.pn.pn = phi { ptr, i32 } [ %i.cr, %bb.at ], [ %i.cs, %bb.au ], [ %i.ct, %bb.av ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76 ], [ %.pn9.i.i72, %bb.ad ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75 ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %13) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #58
  br label %common.resume

bb.aw:                                            ; preds = %bb.t, %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit69
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteFlatImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm1EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvPKT_PT0_mRNS_12ValidityMaskESH_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !526    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not75 = icmp eq i64 %2, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %.preheader
  %min.iters.check119 = icmp ult i64 %2, 4
  br i1 %min.iters.check119, label %.lr.ph73.preheader131, label %vector.ph120

vector.ph120:                                     ; preds = %.lr.ph73.preheader
  %n.vec122 = and i64 %2, -4                      ; 3 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph120
  %index124 = phi i64 [ 0, %vector.ph120 ], [ %index.next127, %vector.body123 ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index124 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load125 = load <2 x i64>, ptr %i.b, align 8, !tbaa !33
  %wide.load126 = load <2 x i64>, ptr %i.c, align 8, !tbaa !33
  %i.d = lshr <2 x i64> %wide.load125, splat (i64 47)
  %i.e = lshr <2 x i64> %wide.load126, splat (i64 47)
  %i.f = and <2 x i64> %i.d, splat (i64 1)
  %i.g = and <2 x i64> %i.e, splat (i64 1)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index124 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <2 x i64> %i.f, ptr %i.h, align 8, !tbaa !33
  store <2 x i64> %i.g, ptr %i.i, align 8, !tbaa !33
  %index.next127 = add nuw i64 %index124, 4       ; 2 uses
  %i.j = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.j, label %middle.block128, label %vector.body123, !llvm.loop !6693

middle.block128:                                  ; preds = %vector.body123
  %cmp.n129 = icmp eq i64 %2, %n.vec122
  br i1 %cmp.n129, label %.loopexit, label %.lr.ph73.preheader131

.lr.ph73.preheader131:                            ; preds = %.lr.ph73.preheader, %middle.block128
  %.072.ph = phi i64 [ 0, %.lr.ph73.preheader ], [ %n.vec122, %middle.block128 ]
  br label %.lr.ph73

bb.b:                                             ; preds = %bb.a
  br i1 %6, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %4, align 8, !tbaa !526
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = icmp eq ptr %4, %3
  br i1 %i.l, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78   ; 2 uses
  %i.p = load <2 x ptr>, ptr %i.m, align 8, !tbaa !34
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !78   ; 8 uses
  store <2 x ptr> %i.p, ptr %i.k, align 8, !tbaa !34
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.x, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !73
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58, !inline_history !6666
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58, !inline_history !6666
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.aa, %bb.k ], [ %i.ak, %bb.l ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.al, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, !prof !81

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit: ; preds = %bb.c, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !6664
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !6664
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit
  %i.ap = add i64 %2, 63
  %i.aq = lshr i64 %i.ap, 6                       ; 3 uses
  %.not74 = icmp eq i64 %i.aq, 0
  br i1 %.not74, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.o
  %i.ar = load ptr, ptr %3, align 8, !tbaa !526   ; 2 uses
  %.not.i56 = icmp eq ptr %i.ar, null
  br i1 %.not.i56, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us: ; preds = %.lr.ph71, %.loopexit63.us
  %.05470.us = phi i64 [ %.1.lcssa.us, %.loopexit63.us ], [ 0, %.lr.ph71 ] ; 7 uses
  %.05569.us = phi i64 [ %i.bn, %.loopexit63.us ], [ 0, %.lr.ph71 ]
  %i.as = add i64 %.05470.us, 64
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %i.as, i64 %2) ; 5 uses
  %i.au = icmp ult i64 %.05470.us, %i.at
  br i1 %i.au, label %.lr.ph.us.preheader, label %.loopexit63.us

.lr.ph.us.preheader:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %i.av = sub nuw i64 %i.at, %.05470.us           ; 3 uses
  %min.iters.check106 = icmp ult i64 %i.av, 4
  br i1 %min.iters.check106, label %.lr.ph.us.preheader132, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.us.preheader
  %n.vec109 = and i64 %i.av, -4                   ; 3 uses
  %i.aw = add i64 %.05470.us, %n.vec109
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next114, %vector.body110 ] ; 2 uses
  %i.ax = add i64 %.05470.us, %index111           ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load112 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !33
  %wide.load113 = load <2 x i64>, ptr %i.az, align 8, !tbaa !33
  %i.ba = lshr <2 x i64> %wide.load112, splat (i64 47)
  %i.bb = lshr <2 x i64> %wide.load113, splat (i64 47)
  %i.bc = and <2 x i64> %i.ba, splat (i64 1)
  %i.bd = and <2 x i64> %i.bb, splat (i64 1)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ax ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <2 x i64> %i.bc, ptr %i.be, align 8, !tbaa !33
  store <2 x i64> %i.bd, ptr %i.bf, align 8, !tbaa !33
  %index.next114 = add nuw i64 %index111, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.bg, label %middle.block115, label %vector.body110, !llvm.loop !6694

middle.block115:                                  ; preds = %vector.body110
  %cmp.n116 = icmp eq i64 %i.av, %n.vec109
  br i1 %cmp.n116, label %.loopexit63.us, label %.lr.ph.us.preheader132

.lr.ph.us.preheader132:                           ; preds = %.lr.ph.us.preheader, %middle.block115
  %.165.us.ph = phi i64 [ %.05470.us, %.lr.ph.us.preheader ], [ %i.aw, %middle.block115 ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader132, %.lr.ph.us
  %.165.us = phi i64 [ %i.bm, %.lr.ph.us ], [ %.165.us.ph, %.lr.ph.us.preheader132 ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165.us
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !33
  %i.bj = lshr i64 %i.bi, 47
  %i.bk = and i64 %i.bj, 1
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.165.us
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !33
  %i.bm = add nuw i64 %.165.us, 1                 ; 2 uses
  %exitcond83.not = icmp eq i64 %i.bm, %i.at
  br i1 %exitcond83.not, label %.loopexit63.us, label %.lr.ph.us, !llvm.loop !6695

.loopexit63.us:                                   ; preds = %.lr.ph.us, %middle.block115, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %.1.lcssa.us = phi i64 [ %.05470.us, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us ], [ %i.at, %middle.block115 ], [ %i.at, %.lr.ph.us ]
  %i.bn = add nuw nsw i64 %.05569.us, 1           ; 2 uses
  %exitcond84.not = icmp eq i64 %i.bn, %i.aq
  br i1 %exitcond84.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, !llvm.loop !6696

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %.lr.ph71, %.loopexit61
  %.05470 = phi i64 [ %.4, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 17 uses
  %.05569 = phi i64 [ %i.dn, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.05569
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !33 ; 4 uses
  %i.bq = add i64 %.05470, 64
  %i.br = tail call noundef i64 @llvm.umin.i64(i64 %i.bq, i64 %2) ; 12 uses
  switch i64 %i.bp, label %.preheader60 [
    i64 -1, label %.preheader62
    i64 0, label %.loopexit61
  ]

.preheader62:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.bs = icmp ult i64 %.05470, %i.br
  br i1 %i.bs, label %.lr.ph.preheader, label %.loopexit61

.lr.ph.preheader:                                 ; preds = %.preheader62
  %i.bt = sub nuw i64 %i.br, %.05470              ; 3 uses
  %min.iters.check = icmp ult i64 %i.bt, 4
  br i1 %min.iters.check, label %.lr.ph.preheader134, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bt, -4                      ; 3 uses
  %i.bu = add i64 %.05470, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = add i64 %.05470, %index                 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load = load <2 x i64>, ptr %i.bw, align 8, !tbaa !33
  %wide.load104 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !33
  %i.by = lshr <2 x i64> %wide.load, splat (i64 47)
  %i.bz = lshr <2 x i64> %wide.load104, splat (i64 47)
  %i.ca = and <2 x i64> %i.by, splat (i64 1)
  %i.cb = and <2 x i64> %i.bz, splat (i64 1)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bv ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <2 x i64> %i.ca, ptr %i.cc, align 8, !tbaa !33
  store <2 x i64> %i.cb, ptr %i.cd, align 8, !tbaa !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !6697

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %.loopexit61, label %.lr.ph.preheader134

.lr.ph.preheader134:                              ; preds = %.lr.ph.preheader, %middle.block
  %.165.ph = phi i64 [ %.05470, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph

.preheader60:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.cf = icmp ult i64 %.05470, %i.br
  br i1 %i.cf, label %.lr.ph67.preheader, label %.loopexit61

.lr.ph67.preheader:                               ; preds = %.preheader60
  %i.cg = sub nuw i64 %i.br, %.05470
  %.neg = add i64 %.05470, 1
  %xtraiter = and i64 %i.cg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader
  %i.ch = and i64 %i.bp, 1
  %.not.prol = icmp eq i64 %i.ch, 0
  br i1 %.not.prol, label %.lr.ph67.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph67.prol
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.05470
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !33
  %i.ck = lshr i64 %i.cj, 47
  %i.cl = and i64 %i.ck, 1
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05470
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !33
  br label %.lr.ph67.prol.loopexit.unr-lcssa

.lr.ph67.prol.loopexit.unr-lcssa:                 ; preds = %bb.p, %.lr.ph67.prol
  %i.cn = add nuw i64 %.05470, 1
  br label %.lr.ph67.prol.loopexit

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol.loopexit.unr-lcssa, %.lr.ph67.preheader
  %.266.unr = phi i64 [ %.05470, %.lr.ph67.preheader ], [ %i.cn, %.lr.ph67.prol.loopexit.unr-lcssa ]
  %i.co = icmp eq i64 %i.br, %.neg
  br i1 %i.co, label %.loopexit61, label %.lr.ph67

.lr.ph:                                           ; preds = %.lr.ph.preheader134, %.lr.ph
  %.165 = phi i64 [ %i.cu, %.lr.ph ], [ %.165.ph, %.lr.ph.preheader134 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !33
  %i.cr = lshr i64 %i.cq, 47
  %i.cs = and i64 %i.cr, 1
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.165
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !33
  %i.cu = add nuw i64 %.165, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cu, %i.br
  br i1 %exitcond.not, label %.loopexit61, label %.lr.ph, !llvm.loop !6698

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %bb.s
  %.266 = phi i64 [ %i.dm, %bb.s ], [ %.266.unr, %.lr.ph67.prol.loopexit ] ; 5 uses
  %i.cv = sub nuw i64 %.266, %.05470
  %i.cw = shl nuw i64 1, %i.cv
  %i.cx = and i64 %i.cw, %i.bp
  %.not = icmp eq i64 %i.cx, 0
  br i1 %.not, label %.lr.ph67.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph67
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.266
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !33
  %i.da = lshr i64 %i.cz, 47
  %i.db = and i64 %i.da, 1
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.266
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !33
  br label %.lr.ph67.1

.lr.ph67.1:                                       ; preds = %.lr.ph67, %bb.q
  %i.dd = add nuw i64 %.266, 1                    ; 3 uses
  %i.de = sub nuw i64 %i.dd, %.05470
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.bp
  %.not.1 = icmp eq i64 %i.dg, 0
  br i1 %.not.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph67.1
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dd
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !33
  %i.dj = lshr i64 %i.di, 47
  %i.dk = and i64 %i.dj, 1
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dd
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !33
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph67.1
  %i.dm = add nuw i64 %.266, 2                    ; 2 uses
  %exitcond81.not.1 = icmp eq i64 %i.dm, %i.br
  br i1 %exitcond81.not.1, label %.loopexit61, label %.lr.ph67, !llvm.loop !6699

.loopexit61:                                      ; preds = %.lr.ph, %.lr.ph67.prol.loopexit, %bb.s, %middle.block, %.preheader62, %.preheader60, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.br, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.br, %middle.block ], [ %.05470, %.preheader60 ], [ %.05470, %.preheader62 ], [ %i.br, %.lr.ph67.prol.loopexit ], [ %i.br, %bb.s ], [ %i.br, %.lr.ph ]
  %i.dn = add nuw nsw i64 %.05569, 1              ; 2 uses
  %exitcond82.not = icmp eq i64 %i.dn, %i.aq
  br i1 %exitcond82.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit, !llvm.loop !6696

.lr.ph73:                                         ; preds = %.lr.ph73.preheader131, %.lr.ph73
  %.072 = phi i64 [ %i.dt, %.lr.ph73 ], [ %.072.ph, %.lr.ph73.preheader131 ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.072
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !33
  %i.dq = lshr i64 %i.dp, 47
  %i.dr = and i64 %i.dq, 1
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.072
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !33
  %i.dt = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond85.not = icmp eq i64 %i.dt, %2
  br i1 %exitcond85.not, label %.loopexit, label %.lr.ph73, !llvm.loop !6700

.loopexit:                                        ; preds = %.loopexit61, %.loopexit63.us, %.lr.ph73, %middle.block128, %bb.o, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteLoopImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm1EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvPKT_PT0_mPS8_RNS_12ValidityMaskESI_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !526
  %.not.i = icmp eq ptr %i.a, null
  %.not39 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader33

.preheader33:                                     ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader33
  %i.b = load ptr, ptr %3, align 8, !tbaa !768    ; 2 uses
  %.not.i29 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br i1 %.not.i29, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph, %bb.e
  %.035.us = phi i64 [ %i.w, %bb.e ], [ 0, %.lr.ph ] ; 5 uses
  %i.d = lshr i64 %.035.us, 6                     ; 2 uses
  %i.e = and i64 %.035.us, 63
  %i.f = load ptr, ptr %4, align 8, !tbaa !526
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %i.i = shl nuw i64 1, %i.e                      ; 2 uses
  %i.j = and i64 %i.h, %i.i
  %.not.us = icmp eq i64 %i.j, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.035.us
  %i.l = load i64, ptr %i.k, align 8, !tbaa !33
  %i.m = lshr i64 %i.l, 47
  %i.n = and i64 %i.m, 1
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.035.us
  store i64 %i.n, ptr %i.o, align 8, !tbaa !33
  br label %bb.e

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.p = load ptr, ptr %5, align 8, !tbaa !526    ; 2 uses
  %.not.i30.us = icmp eq ptr %i.p, null
  br i1 %.not.i30.us, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.c, align 8, !tbaa !6664
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.q)
  %.pre.i.us = load ptr, ptr %5, align 8, !tbaa !526
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us: ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %.pre.i.us, %bb.d ], [ %i.p, %bb.c ]
  %i.s = xor i64 %i.i, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.d ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !33
  %i.v = and i64 %i.u, %i.s
  store i64 %i.v, ptr %i.t, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us, %bb.b
  %i.w = add nuw i64 %.035.us, 1                  ; 2 uses
  %exitcond43.not = icmp eq i64 %i.w, %2
  br i1 %exitcond43.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !6701

.preheader:                                       ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph37

.lr.ph37:                                         ; preds = %.preheader
  %i.x = load ptr, ptr %3, align 8, !tbaa !768    ; 4 uses
  %.not.i31 = icmp eq ptr %i.x, null
end_hunk_1
begin_hunk_2_@_ZN6duckdb13UnaryExecutor15ExecuteStandardImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm2EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvS6_S6_mPvbNS_14FunctionErrorsE:bb.a
_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #58
  br label %bb.aw

bb.at:                                            ; preds = %bb.v, %bb.u
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.au:                                            ; preds = %bb.w
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %bb.x, %bb.af
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.av, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75, %bb.au, %bb.at
  %.pn.pn = phi { ptr, i32 } [ %i.cr, %bb.at ], [ %i.cs, %bb.au ], [ %i.ct, %bb.av ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76 ], [ %.pn9.i.i72, %bb.ad ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75 ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %13) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #58
  br label %common.resume

bb.aw:                                            ; preds = %bb.t, %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit69
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteFlatImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm2EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvPKT_PT0_mRNS_12ValidityMaskESH_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !526    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not75 = icmp eq i64 %2, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %.preheader
  %min.iters.check119 = icmp ult i64 %2, 4
  br i1 %min.iters.check119, label %.lr.ph73.preheader131, label %vector.ph120

vector.ph120:                                     ; preds = %.lr.ph73.preheader
  %n.vec122 = and i64 %2, -4                      ; 3 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph120
  %index124 = phi i64 [ 0, %vector.ph120 ], [ %index.next127, %vector.body123 ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index124 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load125 = load <2 x i64>, ptr %i.b, align 8, !tbaa !33
  %wide.load126 = load <2 x i64>, ptr %i.c, align 8, !tbaa !33
  %i.d = lshr <2 x i64> %wide.load125, splat (i64 46)
  %i.e = lshr <2 x i64> %wide.load126, splat (i64 46)
  %i.f = and <2 x i64> %i.d, splat (i64 3)
  %i.g = and <2 x i64> %i.e, splat (i64 3)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index124 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <2 x i64> %i.f, ptr %i.h, align 8, !tbaa !33
  store <2 x i64> %i.g, ptr %i.i, align 8, !tbaa !33
  %index.next127 = add nuw i64 %index124, 4       ; 2 uses
  %i.j = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.j, label %middle.block128, label %vector.body123, !llvm.loop !6705

middle.block128:                                  ; preds = %vector.body123
  %cmp.n129 = icmp eq i64 %2, %n.vec122
  br i1 %cmp.n129, label %.loopexit, label %.lr.ph73.preheader131

.lr.ph73.preheader131:                            ; preds = %.lr.ph73.preheader, %middle.block128
  %.072.ph = phi i64 [ 0, %.lr.ph73.preheader ], [ %n.vec122, %middle.block128 ]
  br label %.lr.ph73

bb.b:                                             ; preds = %bb.a
  br i1 %6, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %4, align 8, !tbaa !526
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = icmp eq ptr %4, %3
  br i1 %i.l, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78   ; 2 uses
  %i.p = load <2 x ptr>, ptr %i.m, align 8, !tbaa !34
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !78   ; 8 uses
  store <2 x ptr> %i.p, ptr %i.k, align 8, !tbaa !34
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.x, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !73
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58, !inline_history !6666
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58, !inline_history !6666
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.aa, %bb.k ], [ %i.ak, %bb.l ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.al, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, !prof !81

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit: ; preds = %bb.c, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !6664
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !6664
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit
  %i.ap = add i64 %2, 63
  %i.aq = lshr i64 %i.ap, 6                       ; 3 uses
  %.not74 = icmp eq i64 %i.aq, 0
  br i1 %.not74, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.o
  %i.ar = load ptr, ptr %3, align 8, !tbaa !526   ; 2 uses
  %.not.i56 = icmp eq ptr %i.ar, null
  br i1 %.not.i56, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us: ; preds = %.lr.ph71, %.loopexit63.us
  %.05470.us = phi i64 [ %.1.lcssa.us, %.loopexit63.us ], [ 0, %.lr.ph71 ] ; 7 uses
  %.05569.us = phi i64 [ %i.bn, %.loopexit63.us ], [ 0, %.lr.ph71 ]
  %i.as = add i64 %.05470.us, 64
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %i.as, i64 %2) ; 5 uses
  %i.au = icmp ult i64 %.05470.us, %i.at
  br i1 %i.au, label %.lr.ph.us.preheader, label %.loopexit63.us

.lr.ph.us.preheader:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %i.av = sub nuw i64 %i.at, %.05470.us           ; 3 uses
  %min.iters.check106 = icmp ult i64 %i.av, 4
  br i1 %min.iters.check106, label %.lr.ph.us.preheader132, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.us.preheader
  %n.vec109 = and i64 %i.av, -4                   ; 3 uses
  %i.aw = add i64 %.05470.us, %n.vec109
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next114, %vector.body110 ] ; 2 uses
  %i.ax = add i64 %.05470.us, %index111           ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load112 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !33
  %wide.load113 = load <2 x i64>, ptr %i.az, align 8, !tbaa !33
  %i.ba = lshr <2 x i64> %wide.load112, splat (i64 46)
  %i.bb = lshr <2 x i64> %wide.load113, splat (i64 46)
  %i.bc = and <2 x i64> %i.ba, splat (i64 3)
  %i.bd = and <2 x i64> %i.bb, splat (i64 3)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ax ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <2 x i64> %i.bc, ptr %i.be, align 8, !tbaa !33
  store <2 x i64> %i.bd, ptr %i.bf, align 8, !tbaa !33
  %index.next114 = add nuw i64 %index111, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.bg, label %middle.block115, label %vector.body110, !llvm.loop !6706

middle.block115:                                  ; preds = %vector.body110
  %cmp.n116 = icmp eq i64 %i.av, %n.vec109
  br i1 %cmp.n116, label %.loopexit63.us, label %.lr.ph.us.preheader132

.lr.ph.us.preheader132:                           ; preds = %.lr.ph.us.preheader, %middle.block115
  %.165.us.ph = phi i64 [ %.05470.us, %.lr.ph.us.preheader ], [ %i.aw, %middle.block115 ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader132, %.lr.ph.us
  %.165.us = phi i64 [ %i.bm, %.lr.ph.us ], [ %.165.us.ph, %.lr.ph.us.preheader132 ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165.us
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !33
  %i.bj = lshr i64 %i.bi, 46
  %i.bk = and i64 %i.bj, 3
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.165.us
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !33
  %i.bm = add nuw i64 %.165.us, 1                 ; 2 uses
  %exitcond83.not = icmp eq i64 %i.bm, %i.at
  br i1 %exitcond83.not, label %.loopexit63.us, label %.lr.ph.us, !llvm.loop !6707

.loopexit63.us:                                   ; preds = %.lr.ph.us, %middle.block115, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %.1.lcssa.us = phi i64 [ %.05470.us, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us ], [ %i.at, %middle.block115 ], [ %i.at, %.lr.ph.us ]
  %i.bn = add nuw nsw i64 %.05569.us, 1           ; 2 uses
  %exitcond84.not = icmp eq i64 %i.bn, %i.aq
  br i1 %exitcond84.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, !llvm.loop !6708

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %.lr.ph71, %.loopexit61
  %.05470 = phi i64 [ %.4, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 17 uses
  %.05569 = phi i64 [ %i.dn, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.05569
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !33 ; 4 uses
  %i.bq = add i64 %.05470, 64
  %i.br = tail call noundef i64 @llvm.umin.i64(i64 %i.bq, i64 %2) ; 12 uses
  switch i64 %i.bp, label %.preheader60 [
    i64 -1, label %.preheader62
    i64 0, label %.loopexit61
  ]

.preheader62:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.bs = icmp ult i64 %.05470, %i.br
  br i1 %i.bs, label %.lr.ph.preheader, label %.loopexit61

.lr.ph.preheader:                                 ; preds = %.preheader62
  %i.bt = sub nuw i64 %i.br, %.05470              ; 3 uses
  %min.iters.check = icmp ult i64 %i.bt, 4
  br i1 %min.iters.check, label %.lr.ph.preheader134, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bt, -4                      ; 3 uses
  %i.bu = add i64 %.05470, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = add i64 %.05470, %index                 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load = load <2 x i64>, ptr %i.bw, align 8, !tbaa !33
  %wide.load104 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !33
  %i.by = lshr <2 x i64> %wide.load, splat (i64 46)
  %i.bz = lshr <2 x i64> %wide.load104, splat (i64 46)
  %i.ca = and <2 x i64> %i.by, splat (i64 3)
  %i.cb = and <2 x i64> %i.bz, splat (i64 3)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bv ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <2 x i64> %i.ca, ptr %i.cc, align 8, !tbaa !33
  store <2 x i64> %i.cb, ptr %i.cd, align 8, !tbaa !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !6709

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %.loopexit61, label %.lr.ph.preheader134

.lr.ph.preheader134:                              ; preds = %.lr.ph.preheader, %middle.block
  %.165.ph = phi i64 [ %.05470, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph

.preheader60:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.cf = icmp ult i64 %.05470, %i.br
  br i1 %i.cf, label %.lr.ph67.preheader, label %.loopexit61

.lr.ph67.preheader:                               ; preds = %.preheader60
  %i.cg = sub nuw i64 %i.br, %.05470
  %.neg = add i64 %.05470, 1
  %xtraiter = and i64 %i.cg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader
  %i.ch = and i64 %i.bp, 1
  %.not.prol = icmp eq i64 %i.ch, 0
  br i1 %.not.prol, label %.lr.ph67.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph67.prol
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.05470
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !33
  %i.ck = lshr i64 %i.cj, 46
  %i.cl = and i64 %i.ck, 3
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05470
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !33
  br label %.lr.ph67.prol.loopexit.unr-lcssa

.lr.ph67.prol.loopexit.unr-lcssa:                 ; preds = %bb.p, %.lr.ph67.prol
  %i.cn = add nuw i64 %.05470, 1
  br label %.lr.ph67.prol.loopexit

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol.loopexit.unr-lcssa, %.lr.ph67.preheader
  %.266.unr = phi i64 [ %.05470, %.lr.ph67.preheader ], [ %i.cn, %.lr.ph67.prol.loopexit.unr-lcssa ]
  %i.co = icmp eq i64 %i.br, %.neg
  br i1 %i.co, label %.loopexit61, label %.lr.ph67

.lr.ph:                                           ; preds = %.lr.ph.preheader134, %.lr.ph
  %.165 = phi i64 [ %i.cu, %.lr.ph ], [ %.165.ph, %.lr.ph.preheader134 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !33
  %i.cr = lshr i64 %i.cq, 46
  %i.cs = and i64 %i.cr, 3
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.165
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !33
  %i.cu = add nuw i64 %.165, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cu, %i.br
  br i1 %exitcond.not, label %.loopexit61, label %.lr.ph, !llvm.loop !6710

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %bb.s
  %.266 = phi i64 [ %i.dm, %bb.s ], [ %.266.unr, %.lr.ph67.prol.loopexit ] ; 5 uses
  %i.cv = sub nuw i64 %.266, %.05470
  %i.cw = shl nuw i64 1, %i.cv
  %i.cx = and i64 %i.cw, %i.bp
  %.not = icmp eq i64 %i.cx, 0
  br i1 %.not, label %.lr.ph67.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph67
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.266
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !33
  %i.da = lshr i64 %i.cz, 46
  %i.db = and i64 %i.da, 3
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.266
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !33
  br label %.lr.ph67.1

.lr.ph67.1:                                       ; preds = %.lr.ph67, %bb.q
  %i.dd = add nuw i64 %.266, 1                    ; 3 uses
  %i.de = sub nuw i64 %i.dd, %.05470
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.bp
  %.not.1 = icmp eq i64 %i.dg, 0
  br i1 %.not.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph67.1
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dd
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !33
  %i.dj = lshr i64 %i.di, 46
  %i.dk = and i64 %i.dj, 3
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dd
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !33
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph67.1
  %i.dm = add nuw i64 %.266, 2                    ; 2 uses
  %exitcond81.not.1 = icmp eq i64 %i.dm, %i.br
  br i1 %exitcond81.not.1, label %.loopexit61, label %.lr.ph67, !llvm.loop !6711

.loopexit61:                                      ; preds = %.lr.ph, %.lr.ph67.prol.loopexit, %bb.s, %middle.block, %.preheader62, %.preheader60, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.br, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.br, %middle.block ], [ %.05470, %.preheader60 ], [ %.05470, %.preheader62 ], [ %i.br, %.lr.ph67.prol.loopexit ], [ %i.br, %bb.s ], [ %i.br, %.lr.ph ]
  %i.dn = add nuw nsw i64 %.05569, 1              ; 2 uses
  %exitcond82.not = icmp eq i64 %i.dn, %i.aq
  br i1 %exitcond82.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit, !llvm.loop !6708

.lr.ph73:                                         ; preds = %.lr.ph73.preheader131, %.lr.ph73
  %.072 = phi i64 [ %i.dt, %.lr.ph73 ], [ %.072.ph, %.lr.ph73.preheader131 ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.072
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !33
  %i.dq = lshr i64 %i.dp, 46
  %i.dr = and i64 %i.dq, 3
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.072
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !33
  %i.dt = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond85.not = icmp eq i64 %i.dt, %2
  br i1 %exitcond85.not, label %.loopexit, label %.lr.ph73, !llvm.loop !6712

.loopexit:                                        ; preds = %.loopexit61, %.loopexit63.us, %.lr.ph73, %middle.block128, %bb.o, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteLoopImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm2EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvPKT_PT0_mPS8_RNS_12ValidityMaskESI_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !526
  %.not.i = icmp eq ptr %i.a, null
  %.not39 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader33

.preheader33:                                     ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader33
  %i.b = load ptr, ptr %3, align 8, !tbaa !768    ; 2 uses
  %.not.i29 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br i1 %.not.i29, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph, %bb.e
  %.035.us = phi i64 [ %i.w, %bb.e ], [ 0, %.lr.ph ] ; 5 uses
  %i.d = lshr i64 %.035.us, 6                     ; 2 uses
  %i.e = and i64 %.035.us, 63
  %i.f = load ptr, ptr %4, align 8, !tbaa !526
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %i.i = shl nuw i64 1, %i.e                      ; 2 uses
  %i.j = and i64 %i.h, %i.i
  %.not.us = icmp eq i64 %i.j, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.035.us
  %i.l = load i64, ptr %i.k, align 8, !tbaa !33
  %i.m = lshr i64 %i.l, 46
  %i.n = and i64 %i.m, 3
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.035.us
  store i64 %i.n, ptr %i.o, align 8, !tbaa !33
  br label %bb.e

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.p = load ptr, ptr %5, align 8, !tbaa !526    ; 2 uses
  %.not.i30.us = icmp eq ptr %i.p, null
  br i1 %.not.i30.us, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.c, align 8, !tbaa !6664
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.q)
  %.pre.i.us = load ptr, ptr %5, align 8, !tbaa !526
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us: ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %.pre.i.us, %bb.d ], [ %i.p, %bb.c ]
  %i.s = xor i64 %i.i, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.d ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !33
  %i.v = and i64 %i.u, %i.s
  store i64 %i.v, ptr %i.t, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us, %bb.b
  %i.w = add nuw i64 %.035.us, 1                  ; 2 uses
  %exitcond43.not = icmp eq i64 %i.w, %2
  br i1 %exitcond43.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !6713

.preheader:                                       ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph37

.lr.ph37:                                         ; preds = %.preheader
  %i.x = load ptr, ptr %3, align 8, !tbaa !768    ; 4 uses
  %.not.i31 = icmp eq ptr %i.x, null
end_hunk_2
begin_hunk_3_@_ZN6duckdb13UnaryExecutor15ExecuteStandardImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm3EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvS6_S6_mPvbNS_14FunctionErrorsE:bb.a
_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #58
  br label %bb.aw

bb.at:                                            ; preds = %bb.v, %bb.u
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.au:                                            ; preds = %bb.w
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %bb.x, %bb.af
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.av, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75, %bb.au, %bb.at
  %.pn.pn = phi { ptr, i32 } [ %i.cr, %bb.at ], [ %i.cs, %bb.au ], [ %i.ct, %bb.av ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76 ], [ %.pn9.i.i72, %bb.ad ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75 ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %13) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #58
  br label %common.resume

bb.aw:                                            ; preds = %bb.t, %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit69
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteFlatImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm3EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvPKT_PT0_mRNS_12ValidityMaskESH_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !526    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not75 = icmp eq i64 %2, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %.preheader
  %min.iters.check119 = icmp ult i64 %2, 4
  br i1 %min.iters.check119, label %.lr.ph73.preheader131, label %vector.ph120

vector.ph120:                                     ; preds = %.lr.ph73.preheader
  %n.vec122 = and i64 %2, -4                      ; 3 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph120
  %index124 = phi i64 [ 0, %vector.ph120 ], [ %index.next127, %vector.body123 ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index124 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load125 = load <2 x i64>, ptr %i.b, align 8, !tbaa !33
  %wide.load126 = load <2 x i64>, ptr %i.c, align 8, !tbaa !33
  %i.d = lshr <2 x i64> %wide.load125, splat (i64 45)
  %i.e = lshr <2 x i64> %wide.load126, splat (i64 45)
  %i.f = and <2 x i64> %i.d, splat (i64 7)
  %i.g = and <2 x i64> %i.e, splat (i64 7)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index124 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <2 x i64> %i.f, ptr %i.h, align 8, !tbaa !33
  store <2 x i64> %i.g, ptr %i.i, align 8, !tbaa !33
  %index.next127 = add nuw i64 %index124, 4       ; 2 uses
  %i.j = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.j, label %middle.block128, label %vector.body123, !llvm.loop !6717

middle.block128:                                  ; preds = %vector.body123
  %cmp.n129 = icmp eq i64 %2, %n.vec122
  br i1 %cmp.n129, label %.loopexit, label %.lr.ph73.preheader131

.lr.ph73.preheader131:                            ; preds = %.lr.ph73.preheader, %middle.block128
  %.072.ph = phi i64 [ 0, %.lr.ph73.preheader ], [ %n.vec122, %middle.block128 ]
  br label %.lr.ph73

bb.b:                                             ; preds = %bb.a
  br i1 %6, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %4, align 8, !tbaa !526
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = icmp eq ptr %4, %3
  br i1 %i.l, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78   ; 2 uses
  %i.p = load <2 x ptr>, ptr %i.m, align 8, !tbaa !34
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !78   ; 8 uses
  store <2 x ptr> %i.p, ptr %i.k, align 8, !tbaa !34
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.x, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !73
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58, !inline_history !6666
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58, !inline_history !6666
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.aa, %bb.k ], [ %i.ak, %bb.l ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.al, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, !prof !81

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit: ; preds = %bb.c, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !6664
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !6664
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit
  %i.ap = add i64 %2, 63
  %i.aq = lshr i64 %i.ap, 6                       ; 3 uses
  %.not74 = icmp eq i64 %i.aq, 0
  br i1 %.not74, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.o
  %i.ar = load ptr, ptr %3, align 8, !tbaa !526   ; 2 uses
  %.not.i56 = icmp eq ptr %i.ar, null
  br i1 %.not.i56, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us: ; preds = %.lr.ph71, %.loopexit63.us
  %.05470.us = phi i64 [ %.1.lcssa.us, %.loopexit63.us ], [ 0, %.lr.ph71 ] ; 7 uses
  %.05569.us = phi i64 [ %i.bn, %.loopexit63.us ], [ 0, %.lr.ph71 ]
  %i.as = add i64 %.05470.us, 64
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %i.as, i64 %2) ; 5 uses
  %i.au = icmp ult i64 %.05470.us, %i.at
  br i1 %i.au, label %.lr.ph.us.preheader, label %.loopexit63.us

.lr.ph.us.preheader:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %i.av = sub nuw i64 %i.at, %.05470.us           ; 3 uses
  %min.iters.check106 = icmp ult i64 %i.av, 4
  br i1 %min.iters.check106, label %.lr.ph.us.preheader132, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.us.preheader
  %n.vec109 = and i64 %i.av, -4                   ; 3 uses
  %i.aw = add i64 %.05470.us, %n.vec109
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next114, %vector.body110 ] ; 2 uses
  %i.ax = add i64 %.05470.us, %index111           ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load112 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !33
  %wide.load113 = load <2 x i64>, ptr %i.az, align 8, !tbaa !33
  %i.ba = lshr <2 x i64> %wide.load112, splat (i64 45)
  %i.bb = lshr <2 x i64> %wide.load113, splat (i64 45)
  %i.bc = and <2 x i64> %i.ba, splat (i64 7)
  %i.bd = and <2 x i64> %i.bb, splat (i64 7)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ax ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <2 x i64> %i.bc, ptr %i.be, align 8, !tbaa !33
  store <2 x i64> %i.bd, ptr %i.bf, align 8, !tbaa !33
  %index.next114 = add nuw i64 %index111, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.bg, label %middle.block115, label %vector.body110, !llvm.loop !6718

middle.block115:                                  ; preds = %vector.body110
  %cmp.n116 = icmp eq i64 %i.av, %n.vec109
  br i1 %cmp.n116, label %.loopexit63.us, label %.lr.ph.us.preheader132

.lr.ph.us.preheader132:                           ; preds = %.lr.ph.us.preheader, %middle.block115
  %.165.us.ph = phi i64 [ %.05470.us, %.lr.ph.us.preheader ], [ %i.aw, %middle.block115 ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader132, %.lr.ph.us
  %.165.us = phi i64 [ %i.bm, %.lr.ph.us ], [ %.165.us.ph, %.lr.ph.us.preheader132 ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165.us
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !33
  %i.bj = lshr i64 %i.bi, 45
  %i.bk = and i64 %i.bj, 7
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.165.us
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !33
  %i.bm = add nuw i64 %.165.us, 1                 ; 2 uses
  %exitcond83.not = icmp eq i64 %i.bm, %i.at
  br i1 %exitcond83.not, label %.loopexit63.us, label %.lr.ph.us, !llvm.loop !6719

.loopexit63.us:                                   ; preds = %.lr.ph.us, %middle.block115, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %.1.lcssa.us = phi i64 [ %.05470.us, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us ], [ %i.at, %middle.block115 ], [ %i.at, %.lr.ph.us ]
  %i.bn = add nuw nsw i64 %.05569.us, 1           ; 2 uses
  %exitcond84.not = icmp eq i64 %i.bn, %i.aq
  br i1 %exitcond84.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, !llvm.loop !6720

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %.lr.ph71, %.loopexit61
  %.05470 = phi i64 [ %.4, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 17 uses
  %.05569 = phi i64 [ %i.dn, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.05569
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !33 ; 4 uses
  %i.bq = add i64 %.05470, 64
  %i.br = tail call noundef i64 @llvm.umin.i64(i64 %i.bq, i64 %2) ; 12 uses
  switch i64 %i.bp, label %.preheader60 [
    i64 -1, label %.preheader62
    i64 0, label %.loopexit61
  ]

.preheader62:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.bs = icmp ult i64 %.05470, %i.br
  br i1 %i.bs, label %.lr.ph.preheader, label %.loopexit61

.lr.ph.preheader:                                 ; preds = %.preheader62
  %i.bt = sub nuw i64 %i.br, %.05470              ; 3 uses
  %min.iters.check = icmp ult i64 %i.bt, 4
  br i1 %min.iters.check, label %.lr.ph.preheader134, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bt, -4                      ; 3 uses
  %i.bu = add i64 %.05470, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = add i64 %.05470, %index                 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load = load <2 x i64>, ptr %i.bw, align 8, !tbaa !33
  %wide.load104 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !33
  %i.by = lshr <2 x i64> %wide.load, splat (i64 45)
  %i.bz = lshr <2 x i64> %wide.load104, splat (i64 45)
  %i.ca = and <2 x i64> %i.by, splat (i64 7)
  %i.cb = and <2 x i64> %i.bz, splat (i64 7)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bv ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <2 x i64> %i.ca, ptr %i.cc, align 8, !tbaa !33
  store <2 x i64> %i.cb, ptr %i.cd, align 8, !tbaa !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !6721

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %.loopexit61, label %.lr.ph.preheader134

.lr.ph.preheader134:                              ; preds = %.lr.ph.preheader, %middle.block
  %.165.ph = phi i64 [ %.05470, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph

.preheader60:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.cf = icmp ult i64 %.05470, %i.br
  br i1 %i.cf, label %.lr.ph67.preheader, label %.loopexit61

.lr.ph67.preheader:                               ; preds = %.preheader60
  %i.cg = sub nuw i64 %i.br, %.05470
  %.neg = add i64 %.05470, 1
  %xtraiter = and i64 %i.cg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader
  %i.ch = and i64 %i.bp, 1
  %.not.prol = icmp eq i64 %i.ch, 0
  br i1 %.not.prol, label %.lr.ph67.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph67.prol
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.05470
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !33
  %i.ck = lshr i64 %i.cj, 45
  %i.cl = and i64 %i.ck, 7
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05470
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !33
  br label %.lr.ph67.prol.loopexit.unr-lcssa

.lr.ph67.prol.loopexit.unr-lcssa:                 ; preds = %bb.p, %.lr.ph67.prol
  %i.cn = add nuw i64 %.05470, 1
  br label %.lr.ph67.prol.loopexit

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol.loopexit.unr-lcssa, %.lr.ph67.preheader
  %.266.unr = phi i64 [ %.05470, %.lr.ph67.preheader ], [ %i.cn, %.lr.ph67.prol.loopexit.unr-lcssa ]
  %i.co = icmp eq i64 %i.br, %.neg
  br i1 %i.co, label %.loopexit61, label %.lr.ph67

.lr.ph:                                           ; preds = %.lr.ph.preheader134, %.lr.ph
  %.165 = phi i64 [ %i.cu, %.lr.ph ], [ %.165.ph, %.lr.ph.preheader134 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !33
  %i.cr = lshr i64 %i.cq, 45
  %i.cs = and i64 %i.cr, 7
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.165
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !33
  %i.cu = add nuw i64 %.165, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cu, %i.br
  br i1 %exitcond.not, label %.loopexit61, label %.lr.ph, !llvm.loop !6722

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %bb.s
  %.266 = phi i64 [ %i.dm, %bb.s ], [ %.266.unr, %.lr.ph67.prol.loopexit ] ; 5 uses
  %i.cv = sub nuw i64 %.266, %.05470
  %i.cw = shl nuw i64 1, %i.cv
  %i.cx = and i64 %i.cw, %i.bp
  %.not = icmp eq i64 %i.cx, 0
  br i1 %.not, label %.lr.ph67.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph67
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.266
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !33
  %i.da = lshr i64 %i.cz, 45
  %i.db = and i64 %i.da, 7
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.266
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !33
  br label %.lr.ph67.1

.lr.ph67.1:                                       ; preds = %.lr.ph67, %bb.q
  %i.dd = add nuw i64 %.266, 1                    ; 3 uses
  %i.de = sub nuw i64 %i.dd, %.05470
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.bp
  %.not.1 = icmp eq i64 %i.dg, 0
  br i1 %.not.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph67.1
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dd
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !33
  %i.dj = lshr i64 %i.di, 45
  %i.dk = and i64 %i.dj, 7
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dd
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !33
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph67.1
  %i.dm = add nuw i64 %.266, 2                    ; 2 uses
  %exitcond81.not.1 = icmp eq i64 %i.dm, %i.br
  br i1 %exitcond81.not.1, label %.loopexit61, label %.lr.ph67, !llvm.loop !6723

.loopexit61:                                      ; preds = %.lr.ph, %.lr.ph67.prol.loopexit, %bb.s, %middle.block, %.preheader62, %.preheader60, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.br, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.br, %middle.block ], [ %.05470, %.preheader60 ], [ %.05470, %.preheader62 ], [ %i.br, %.lr.ph67.prol.loopexit ], [ %i.br, %bb.s ], [ %i.br, %.lr.ph ]
  %i.dn = add nuw nsw i64 %.05569, 1              ; 2 uses
  %exitcond82.not = icmp eq i64 %i.dn, %i.aq
  br i1 %exitcond82.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit, !llvm.loop !6720

.lr.ph73:                                         ; preds = %.lr.ph73.preheader131, %.lr.ph73
  %.072 = phi i64 [ %i.dt, %.lr.ph73 ], [ %.072.ph, %.lr.ph73.preheader131 ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.072
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !33
  %i.dq = lshr i64 %i.dp, 45
  %i.dr = and i64 %i.dq, 7
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.072
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !33
  %i.dt = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond85.not = icmp eq i64 %i.dt, %2
  br i1 %exitcond85.not, label %.loopexit, label %.lr.ph73, !llvm.loop !6724

.loopexit:                                        ; preds = %.loopexit61, %.loopexit63.us, %.lr.ph73, %middle.block128, %bb.o, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteLoopImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm3EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvPKT_PT0_mPS8_RNS_12ValidityMaskESI_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !526
  %.not.i = icmp eq ptr %i.a, null
  %.not39 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader33

.preheader33:                                     ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader33
  %i.b = load ptr, ptr %3, align 8, !tbaa !768    ; 2 uses
  %.not.i29 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br i1 %.not.i29, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph, %bb.e
  %.035.us = phi i64 [ %i.w, %bb.e ], [ 0, %.lr.ph ] ; 5 uses
  %i.d = lshr i64 %.035.us, 6                     ; 2 uses
  %i.e = and i64 %.035.us, 63
  %i.f = load ptr, ptr %4, align 8, !tbaa !526
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %i.i = shl nuw i64 1, %i.e                      ; 2 uses
  %i.j = and i64 %i.h, %i.i
  %.not.us = icmp eq i64 %i.j, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.035.us
  %i.l = load i64, ptr %i.k, align 8, !tbaa !33
  %i.m = lshr i64 %i.l, 45
  %i.n = and i64 %i.m, 7
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.035.us
  store i64 %i.n, ptr %i.o, align 8, !tbaa !33
  br label %bb.e

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.p = load ptr, ptr %5, align 8, !tbaa !526    ; 2 uses
  %.not.i30.us = icmp eq ptr %i.p, null
  br i1 %.not.i30.us, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.c, align 8, !tbaa !6664
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.q)
  %.pre.i.us = load ptr, ptr %5, align 8, !tbaa !526
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us: ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %.pre.i.us, %bb.d ], [ %i.p, %bb.c ]
  %i.s = xor i64 %i.i, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.d ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !33
  %i.v = and i64 %i.u, %i.s
  store i64 %i.v, ptr %i.t, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us, %bb.b
  %i.w = add nuw i64 %.035.us, 1                  ; 2 uses
  %exitcond43.not = icmp eq i64 %i.w, %2
  br i1 %exitcond43.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !6725

.preheader:                                       ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph37

.lr.ph37:                                         ; preds = %.preheader
  %i.x = load ptr, ptr %3, align 8, !tbaa !768    ; 4 uses
  %.not.i31 = icmp eq ptr %i.x, null
end_hunk_3
begin_hunk_4_@_ZN6duckdb13UnaryExecutor15ExecuteStandardImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm4EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvS6_S6_mPvbNS_14FunctionErrorsE:bb.a
_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #58
  br label %bb.aw

bb.at:                                            ; preds = %bb.v, %bb.u
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.au:                                            ; preds = %bb.w
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %bb.x, %bb.af
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.av, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75, %bb.au, %bb.at
  %.pn.pn = phi { ptr, i32 } [ %i.cr, %bb.at ], [ %i.cs, %bb.au ], [ %i.ct, %bb.av ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76 ], [ %.pn9.i.i72, %bb.ad ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75 ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %13) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #58
  br label %common.resume

bb.aw:                                            ; preds = %bb.t, %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit69
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteFlatImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm4EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvPKT_PT0_mRNS_12ValidityMaskESH_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !526    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not75 = icmp eq i64 %2, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %.preheader
  %min.iters.check119 = icmp ult i64 %2, 4
  br i1 %min.iters.check119, label %.lr.ph73.preheader131, label %vector.ph120

vector.ph120:                                     ; preds = %.lr.ph73.preheader
  %n.vec122 = and i64 %2, -4                      ; 3 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph120
  %index124 = phi i64 [ 0, %vector.ph120 ], [ %index.next127, %vector.body123 ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index124 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load125 = load <2 x i64>, ptr %i.b, align 8, !tbaa !33
  %wide.load126 = load <2 x i64>, ptr %i.c, align 8, !tbaa !33
  %i.d = lshr <2 x i64> %wide.load125, splat (i64 44)
  %i.e = lshr <2 x i64> %wide.load126, splat (i64 44)
  %i.f = and <2 x i64> %i.d, splat (i64 15)
  %i.g = and <2 x i64> %i.e, splat (i64 15)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index124 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <2 x i64> %i.f, ptr %i.h, align 8, !tbaa !33
  store <2 x i64> %i.g, ptr %i.i, align 8, !tbaa !33
  %index.next127 = add nuw i64 %index124, 4       ; 2 uses
  %i.j = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.j, label %middle.block128, label %vector.body123, !llvm.loop !6729

middle.block128:                                  ; preds = %vector.body123
  %cmp.n129 = icmp eq i64 %2, %n.vec122
  br i1 %cmp.n129, label %.loopexit, label %.lr.ph73.preheader131

.lr.ph73.preheader131:                            ; preds = %.lr.ph73.preheader, %middle.block128
  %.072.ph = phi i64 [ 0, %.lr.ph73.preheader ], [ %n.vec122, %middle.block128 ]
  br label %.lr.ph73

bb.b:                                             ; preds = %bb.a
  br i1 %6, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %4, align 8, !tbaa !526
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = icmp eq ptr %4, %3
  br i1 %i.l, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78   ; 2 uses
  %i.p = load <2 x ptr>, ptr %i.m, align 8, !tbaa !34
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !78   ; 8 uses
  store <2 x ptr> %i.p, ptr %i.k, align 8, !tbaa !34
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.x, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !73
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58, !inline_history !6666
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58, !inline_history !6666
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.aa, %bb.k ], [ %i.ak, %bb.l ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.al, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, !prof !81

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit: ; preds = %bb.c, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !6664
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !6664
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit
  %i.ap = add i64 %2, 63
  %i.aq = lshr i64 %i.ap, 6                       ; 3 uses
  %.not74 = icmp eq i64 %i.aq, 0
  br i1 %.not74, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.o
  %i.ar = load ptr, ptr %3, align 8, !tbaa !526   ; 2 uses
  %.not.i56 = icmp eq ptr %i.ar, null
  br i1 %.not.i56, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us: ; preds = %.lr.ph71, %.loopexit63.us
  %.05470.us = phi i64 [ %.1.lcssa.us, %.loopexit63.us ], [ 0, %.lr.ph71 ] ; 7 uses
  %.05569.us = phi i64 [ %i.bn, %.loopexit63.us ], [ 0, %.lr.ph71 ]
  %i.as = add i64 %.05470.us, 64
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %i.as, i64 %2) ; 5 uses
  %i.au = icmp ult i64 %.05470.us, %i.at
  br i1 %i.au, label %.lr.ph.us.preheader, label %.loopexit63.us

.lr.ph.us.preheader:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %i.av = sub nuw i64 %i.at, %.05470.us           ; 3 uses
  %min.iters.check106 = icmp ult i64 %i.av, 4
  br i1 %min.iters.check106, label %.lr.ph.us.preheader132, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.us.preheader
  %n.vec109 = and i64 %i.av, -4                   ; 3 uses
  %i.aw = add i64 %.05470.us, %n.vec109
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next114, %vector.body110 ] ; 2 uses
  %i.ax = add i64 %.05470.us, %index111           ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load112 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !33
  %wide.load113 = load <2 x i64>, ptr %i.az, align 8, !tbaa !33
  %i.ba = lshr <2 x i64> %wide.load112, splat (i64 44)
  %i.bb = lshr <2 x i64> %wide.load113, splat (i64 44)
  %i.bc = and <2 x i64> %i.ba, splat (i64 15)
  %i.bd = and <2 x i64> %i.bb, splat (i64 15)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ax ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <2 x i64> %i.bc, ptr %i.be, align 8, !tbaa !33
  store <2 x i64> %i.bd, ptr %i.bf, align 8, !tbaa !33
  %index.next114 = add nuw i64 %index111, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.bg, label %middle.block115, label %vector.body110, !llvm.loop !6730

middle.block115:                                  ; preds = %vector.body110
  %cmp.n116 = icmp eq i64 %i.av, %n.vec109
  br i1 %cmp.n116, label %.loopexit63.us, label %.lr.ph.us.preheader132

.lr.ph.us.preheader132:                           ; preds = %.lr.ph.us.preheader, %middle.block115
  %.165.us.ph = phi i64 [ %.05470.us, %.lr.ph.us.preheader ], [ %i.aw, %middle.block115 ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader132, %.lr.ph.us
  %.165.us = phi i64 [ %i.bm, %.lr.ph.us ], [ %.165.us.ph, %.lr.ph.us.preheader132 ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165.us
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !33
  %i.bj = lshr i64 %i.bi, 44
  %i.bk = and i64 %i.bj, 15
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.165.us
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !33
  %i.bm = add nuw i64 %.165.us, 1                 ; 2 uses
  %exitcond83.not = icmp eq i64 %i.bm, %i.at
  br i1 %exitcond83.not, label %.loopexit63.us, label %.lr.ph.us, !llvm.loop !6731

.loopexit63.us:                                   ; preds = %.lr.ph.us, %middle.block115, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %.1.lcssa.us = phi i64 [ %.05470.us, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us ], [ %i.at, %middle.block115 ], [ %i.at, %.lr.ph.us ]
  %i.bn = add nuw nsw i64 %.05569.us, 1           ; 2 uses
  %exitcond84.not = icmp eq i64 %i.bn, %i.aq
  br i1 %exitcond84.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, !llvm.loop !6732

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %.lr.ph71, %.loopexit61
  %.05470 = phi i64 [ %.4, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 17 uses
  %.05569 = phi i64 [ %i.dn, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.05569
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !33 ; 4 uses
  %i.bq = add i64 %.05470, 64
  %i.br = tail call noundef i64 @llvm.umin.i64(i64 %i.bq, i64 %2) ; 12 uses
  switch i64 %i.bp, label %.preheader60 [
    i64 -1, label %.preheader62
    i64 0, label %.loopexit61
  ]

.preheader62:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.bs = icmp ult i64 %.05470, %i.br
  br i1 %i.bs, label %.lr.ph.preheader, label %.loopexit61

.lr.ph.preheader:                                 ; preds = %.preheader62
  %i.bt = sub nuw i64 %i.br, %.05470              ; 3 uses
  %min.iters.check = icmp ult i64 %i.bt, 4
  br i1 %min.iters.check, label %.lr.ph.preheader134, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bt, -4                      ; 3 uses
  %i.bu = add i64 %.05470, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = add i64 %.05470, %index                 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load = load <2 x i64>, ptr %i.bw, align 8, !tbaa !33
  %wide.load104 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !33
  %i.by = lshr <2 x i64> %wide.load, splat (i64 44)
  %i.bz = lshr <2 x i64> %wide.load104, splat (i64 44)
  %i.ca = and <2 x i64> %i.by, splat (i64 15)
  %i.cb = and <2 x i64> %i.bz, splat (i64 15)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bv ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <2 x i64> %i.ca, ptr %i.cc, align 8, !tbaa !33
  store <2 x i64> %i.cb, ptr %i.cd, align 8, !tbaa !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !6733

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %.loopexit61, label %.lr.ph.preheader134

.lr.ph.preheader134:                              ; preds = %.lr.ph.preheader, %middle.block
  %.165.ph = phi i64 [ %.05470, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph

.preheader60:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.cf = icmp ult i64 %.05470, %i.br
  br i1 %i.cf, label %.lr.ph67.preheader, label %.loopexit61

.lr.ph67.preheader:                               ; preds = %.preheader60
  %i.cg = sub nuw i64 %i.br, %.05470
  %.neg = add i64 %.05470, 1
  %xtraiter = and i64 %i.cg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader
  %i.ch = and i64 %i.bp, 1
  %.not.prol = icmp eq i64 %i.ch, 0
  br i1 %.not.prol, label %.lr.ph67.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph67.prol
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.05470
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !33
  %i.ck = lshr i64 %i.cj, 44
  %i.cl = and i64 %i.ck, 15
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05470
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !33
  br label %.lr.ph67.prol.loopexit.unr-lcssa

.lr.ph67.prol.loopexit.unr-lcssa:                 ; preds = %bb.p, %.lr.ph67.prol
  %i.cn = add nuw i64 %.05470, 1
  br label %.lr.ph67.prol.loopexit

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol.loopexit.unr-lcssa, %.lr.ph67.preheader
  %.266.unr = phi i64 [ %.05470, %.lr.ph67.preheader ], [ %i.cn, %.lr.ph67.prol.loopexit.unr-lcssa ]
  %i.co = icmp eq i64 %i.br, %.neg
  br i1 %i.co, label %.loopexit61, label %.lr.ph67

.lr.ph:                                           ; preds = %.lr.ph.preheader134, %.lr.ph
  %.165 = phi i64 [ %i.cu, %.lr.ph ], [ %.165.ph, %.lr.ph.preheader134 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !33
  %i.cr = lshr i64 %i.cq, 44
  %i.cs = and i64 %i.cr, 15
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.165
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !33
  %i.cu = add nuw i64 %.165, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cu, %i.br
  br i1 %exitcond.not, label %.loopexit61, label %.lr.ph, !llvm.loop !6734

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %bb.s
  %.266 = phi i64 [ %i.dm, %bb.s ], [ %.266.unr, %.lr.ph67.prol.loopexit ] ; 5 uses
  %i.cv = sub nuw i64 %.266, %.05470
  %i.cw = shl nuw i64 1, %i.cv
  %i.cx = and i64 %i.cw, %i.bp
  %.not = icmp eq i64 %i.cx, 0
  br i1 %.not, label %.lr.ph67.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph67
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.266
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !33
  %i.da = lshr i64 %i.cz, 44
  %i.db = and i64 %i.da, 15
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.266
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !33
  br label %.lr.ph67.1

.lr.ph67.1:                                       ; preds = %.lr.ph67, %bb.q
  %i.dd = add nuw i64 %.266, 1                    ; 3 uses
  %i.de = sub nuw i64 %i.dd, %.05470
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.bp
  %.not.1 = icmp eq i64 %i.dg, 0
  br i1 %.not.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph67.1
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dd
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !33
  %i.dj = lshr i64 %i.di, 44
  %i.dk = and i64 %i.dj, 15
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dd
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !33
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph67.1
  %i.dm = add nuw i64 %.266, 2                    ; 2 uses
  %exitcond81.not.1 = icmp eq i64 %i.dm, %i.br
  br i1 %exitcond81.not.1, label %.loopexit61, label %.lr.ph67, !llvm.loop !6735

.loopexit61:                                      ; preds = %.lr.ph, %.lr.ph67.prol.loopexit, %bb.s, %middle.block, %.preheader62, %.preheader60, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.br, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.br, %middle.block ], [ %.05470, %.preheader60 ], [ %.05470, %.preheader62 ], [ %i.br, %.lr.ph67.prol.loopexit ], [ %i.br, %bb.s ], [ %i.br, %.lr.ph ]
  %i.dn = add nuw nsw i64 %.05569, 1              ; 2 uses
  %exitcond82.not = icmp eq i64 %i.dn, %i.aq
  br i1 %exitcond82.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit, !llvm.loop !6732

.lr.ph73:                                         ; preds = %.lr.ph73.preheader131, %.lr.ph73
  %.072 = phi i64 [ %i.dt, %.lr.ph73 ], [ %.072.ph, %.lr.ph73.preheader131 ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.072
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !33
  %i.dq = lshr i64 %i.dp, 44
  %i.dr = and i64 %i.dq, 15
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.072
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !33
  %i.dt = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond85.not = icmp eq i64 %i.dt, %2
  br i1 %exitcond85.not, label %.loopexit, label %.lr.ph73, !llvm.loop !6736

.loopexit:                                        ; preds = %.loopexit61, %.loopexit63.us, %.lr.ph73, %middle.block128, %bb.o, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteLoopImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm4EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvPKT_PT0_mPS8_RNS_12ValidityMaskESI_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !526
  %.not.i = icmp eq ptr %i.a, null
  %.not39 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader33

.preheader33:                                     ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader33
  %i.b = load ptr, ptr %3, align 8, !tbaa !768    ; 2 uses
  %.not.i29 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br i1 %.not.i29, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph, %bb.e
  %.035.us = phi i64 [ %i.w, %bb.e ], [ 0, %.lr.ph ] ; 5 uses
  %i.d = lshr i64 %.035.us, 6                     ; 2 uses
  %i.e = and i64 %.035.us, 63
  %i.f = load ptr, ptr %4, align 8, !tbaa !526
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %i.i = shl nuw i64 1, %i.e                      ; 2 uses
  %i.j = and i64 %i.h, %i.i
  %.not.us = icmp eq i64 %i.j, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.035.us
  %i.l = load i64, ptr %i.k, align 8, !tbaa !33
  %i.m = lshr i64 %i.l, 44
  %i.n = and i64 %i.m, 15
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.035.us
  store i64 %i.n, ptr %i.o, align 8, !tbaa !33
  br label %bb.e

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.p = load ptr, ptr %5, align 8, !tbaa !526    ; 2 uses
  %.not.i30.us = icmp eq ptr %i.p, null
  br i1 %.not.i30.us, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.c, align 8, !tbaa !6664
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.q)
  %.pre.i.us = load ptr, ptr %5, align 8, !tbaa !526
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us: ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %.pre.i.us, %bb.d ], [ %i.p, %bb.c ]
  %i.s = xor i64 %i.i, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.d ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !33
  %i.v = and i64 %i.u, %i.s
  store i64 %i.v, ptr %i.t, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us, %bb.b
  %i.w = add nuw i64 %.035.us, 1                  ; 2 uses
  %exitcond43.not = icmp eq i64 %i.w, %2
  br i1 %exitcond43.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !6737

.preheader:                                       ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph37

.lr.ph37:                                         ; preds = %.preheader
  %i.x = load ptr, ptr %3, align 8, !tbaa !768    ; 4 uses
  %.not.i31 = icmp eq ptr %i.x, null
end_hunk_4
begin_hunk_5_@_ZN6duckdb13UnaryExecutor15ExecuteStandardImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm5EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvS6_S6_mPvbNS_14FunctionErrorsE:bb.a
_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #58
  br label %bb.aw

bb.at:                                            ; preds = %bb.v, %bb.u
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.au:                                            ; preds = %bb.w
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %bb.x, %bb.af
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.av, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75, %bb.au, %bb.at
  %.pn.pn = phi { ptr, i32 } [ %i.cr, %bb.at ], [ %i.cs, %bb.au ], [ %i.ct, %bb.av ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76 ], [ %.pn9.i.i72, %bb.ad ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75 ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %13) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #58
  br label %common.resume

bb.aw:                                            ; preds = %bb.t, %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit69
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteFlatImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm5EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvPKT_PT0_mRNS_12ValidityMaskESH_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !526    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not75 = icmp eq i64 %2, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %.preheader
  %min.iters.check119 = icmp ult i64 %2, 4
  br i1 %min.iters.check119, label %.lr.ph73.preheader131, label %vector.ph120

vector.ph120:                                     ; preds = %.lr.ph73.preheader
  %n.vec122 = and i64 %2, -4                      ; 3 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph120
  %index124 = phi i64 [ 0, %vector.ph120 ], [ %index.next127, %vector.body123 ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index124 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load125 = load <2 x i64>, ptr %i.b, align 8, !tbaa !33
  %wide.load126 = load <2 x i64>, ptr %i.c, align 8, !tbaa !33
  %i.d = lshr <2 x i64> %wide.load125, splat (i64 43)
  %i.e = lshr <2 x i64> %wide.load126, splat (i64 43)
  %i.f = and <2 x i64> %i.d, splat (i64 31)
  %i.g = and <2 x i64> %i.e, splat (i64 31)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index124 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <2 x i64> %i.f, ptr %i.h, align 8, !tbaa !33
  store <2 x i64> %i.g, ptr %i.i, align 8, !tbaa !33
  %index.next127 = add nuw i64 %index124, 4       ; 2 uses
  %i.j = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.j, label %middle.block128, label %vector.body123, !llvm.loop !6741

middle.block128:                                  ; preds = %vector.body123
  %cmp.n129 = icmp eq i64 %2, %n.vec122
  br i1 %cmp.n129, label %.loopexit, label %.lr.ph73.preheader131

.lr.ph73.preheader131:                            ; preds = %.lr.ph73.preheader, %middle.block128
  %.072.ph = phi i64 [ 0, %.lr.ph73.preheader ], [ %n.vec122, %middle.block128 ]
  br label %.lr.ph73

bb.b:                                             ; preds = %bb.a
  br i1 %6, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %4, align 8, !tbaa !526
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = icmp eq ptr %4, %3
  br i1 %i.l, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78   ; 2 uses
  %i.p = load <2 x ptr>, ptr %i.m, align 8, !tbaa !34
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !78   ; 8 uses
  store <2 x ptr> %i.p, ptr %i.k, align 8, !tbaa !34
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.x, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !73
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58, !inline_history !6666
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58, !inline_history !6666
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.aa, %bb.k ], [ %i.ak, %bb.l ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.al, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, !prof !81

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit: ; preds = %bb.c, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !6664
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !6664
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit
  %i.ap = add i64 %2, 63
  %i.aq = lshr i64 %i.ap, 6                       ; 3 uses
  %.not74 = icmp eq i64 %i.aq, 0
  br i1 %.not74, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.o
  %i.ar = load ptr, ptr %3, align 8, !tbaa !526   ; 2 uses
  %.not.i56 = icmp eq ptr %i.ar, null
  br i1 %.not.i56, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us: ; preds = %.lr.ph71, %.loopexit63.us
  %.05470.us = phi i64 [ %.1.lcssa.us, %.loopexit63.us ], [ 0, %.lr.ph71 ] ; 7 uses
  %.05569.us = phi i64 [ %i.bn, %.loopexit63.us ], [ 0, %.lr.ph71 ]
  %i.as = add i64 %.05470.us, 64
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %i.as, i64 %2) ; 5 uses
  %i.au = icmp ult i64 %.05470.us, %i.at
  br i1 %i.au, label %.lr.ph.us.preheader, label %.loopexit63.us

.lr.ph.us.preheader:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %i.av = sub nuw i64 %i.at, %.05470.us           ; 3 uses
  %min.iters.check106 = icmp ult i64 %i.av, 4
  br i1 %min.iters.check106, label %.lr.ph.us.preheader132, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.us.preheader
  %n.vec109 = and i64 %i.av, -4                   ; 3 uses
  %i.aw = add i64 %.05470.us, %n.vec109
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next114, %vector.body110 ] ; 2 uses
  %i.ax = add i64 %.05470.us, %index111           ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load112 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !33
  %wide.load113 = load <2 x i64>, ptr %i.az, align 8, !tbaa !33
  %i.ba = lshr <2 x i64> %wide.load112, splat (i64 43)
  %i.bb = lshr <2 x i64> %wide.load113, splat (i64 43)
  %i.bc = and <2 x i64> %i.ba, splat (i64 31)
  %i.bd = and <2 x i64> %i.bb, splat (i64 31)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ax ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <2 x i64> %i.bc, ptr %i.be, align 8, !tbaa !33
  store <2 x i64> %i.bd, ptr %i.bf, align 8, !tbaa !33
  %index.next114 = add nuw i64 %index111, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.bg, label %middle.block115, label %vector.body110, !llvm.loop !6742

middle.block115:                                  ; preds = %vector.body110
  %cmp.n116 = icmp eq i64 %i.av, %n.vec109
  br i1 %cmp.n116, label %.loopexit63.us, label %.lr.ph.us.preheader132

.lr.ph.us.preheader132:                           ; preds = %.lr.ph.us.preheader, %middle.block115
  %.165.us.ph = phi i64 [ %.05470.us, %.lr.ph.us.preheader ], [ %i.aw, %middle.block115 ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader132, %.lr.ph.us
  %.165.us = phi i64 [ %i.bm, %.lr.ph.us ], [ %.165.us.ph, %.lr.ph.us.preheader132 ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165.us
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !33
  %i.bj = lshr i64 %i.bi, 43
  %i.bk = and i64 %i.bj, 31
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.165.us
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !33
  %i.bm = add nuw i64 %.165.us, 1                 ; 2 uses
  %exitcond83.not = icmp eq i64 %i.bm, %i.at
  br i1 %exitcond83.not, label %.loopexit63.us, label %.lr.ph.us, !llvm.loop !6743

.loopexit63.us:                                   ; preds = %.lr.ph.us, %middle.block115, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %.1.lcssa.us = phi i64 [ %.05470.us, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us ], [ %i.at, %middle.block115 ], [ %i.at, %.lr.ph.us ]
  %i.bn = add nuw nsw i64 %.05569.us, 1           ; 2 uses
  %exitcond84.not = icmp eq i64 %i.bn, %i.aq
  br i1 %exitcond84.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, !llvm.loop !6744

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %.lr.ph71, %.loopexit61
  %.05470 = phi i64 [ %.4, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 17 uses
  %.05569 = phi i64 [ %i.dn, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.05569
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !33 ; 4 uses
  %i.bq = add i64 %.05470, 64
  %i.br = tail call noundef i64 @llvm.umin.i64(i64 %i.bq, i64 %2) ; 12 uses
  switch i64 %i.bp, label %.preheader60 [
    i64 -1, label %.preheader62
    i64 0, label %.loopexit61
  ]

.preheader62:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.bs = icmp ult i64 %.05470, %i.br
  br i1 %i.bs, label %.lr.ph.preheader, label %.loopexit61

.lr.ph.preheader:                                 ; preds = %.preheader62
  %i.bt = sub nuw i64 %i.br, %.05470              ; 3 uses
  %min.iters.check = icmp ult i64 %i.bt, 4
  br i1 %min.iters.check, label %.lr.ph.preheader134, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bt, -4                      ; 3 uses
  %i.bu = add i64 %.05470, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = add i64 %.05470, %index                 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load = load <2 x i64>, ptr %i.bw, align 8, !tbaa !33
  %wide.load104 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !33
  %i.by = lshr <2 x i64> %wide.load, splat (i64 43)
  %i.bz = lshr <2 x i64> %wide.load104, splat (i64 43)
  %i.ca = and <2 x i64> %i.by, splat (i64 31)
  %i.cb = and <2 x i64> %i.bz, splat (i64 31)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bv ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <2 x i64> %i.ca, ptr %i.cc, align 8, !tbaa !33
  store <2 x i64> %i.cb, ptr %i.cd, align 8, !tbaa !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !6745

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %.loopexit61, label %.lr.ph.preheader134

.lr.ph.preheader134:                              ; preds = %.lr.ph.preheader, %middle.block
  %.165.ph = phi i64 [ %.05470, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph

.preheader60:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.cf = icmp ult i64 %.05470, %i.br
  br i1 %i.cf, label %.lr.ph67.preheader, label %.loopexit61

.lr.ph67.preheader:                               ; preds = %.preheader60
  %i.cg = sub nuw i64 %i.br, %.05470
  %.neg = add i64 %.05470, 1
  %xtraiter = and i64 %i.cg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader
  %i.ch = and i64 %i.bp, 1
  %.not.prol = icmp eq i64 %i.ch, 0
  br i1 %.not.prol, label %.lr.ph67.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph67.prol
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.05470
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !33
  %i.ck = lshr i64 %i.cj, 43
  %i.cl = and i64 %i.ck, 31
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05470
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !33
  br label %.lr.ph67.prol.loopexit.unr-lcssa

.lr.ph67.prol.loopexit.unr-lcssa:                 ; preds = %bb.p, %.lr.ph67.prol
  %i.cn = add nuw i64 %.05470, 1
  br label %.lr.ph67.prol.loopexit

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol.loopexit.unr-lcssa, %.lr.ph67.preheader
  %.266.unr = phi i64 [ %.05470, %.lr.ph67.preheader ], [ %i.cn, %.lr.ph67.prol.loopexit.unr-lcssa ]
  %i.co = icmp eq i64 %i.br, %.neg
  br i1 %i.co, label %.loopexit61, label %.lr.ph67

.lr.ph:                                           ; preds = %.lr.ph.preheader134, %.lr.ph
  %.165 = phi i64 [ %i.cu, %.lr.ph ], [ %.165.ph, %.lr.ph.preheader134 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !33
  %i.cr = lshr i64 %i.cq, 43
  %i.cs = and i64 %i.cr, 31
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.165
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !33
  %i.cu = add nuw i64 %.165, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cu, %i.br
  br i1 %exitcond.not, label %.loopexit61, label %.lr.ph, !llvm.loop !6746

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %bb.s
  %.266 = phi i64 [ %i.dm, %bb.s ], [ %.266.unr, %.lr.ph67.prol.loopexit ] ; 5 uses
  %i.cv = sub nuw i64 %.266, %.05470
  %i.cw = shl nuw i64 1, %i.cv
  %i.cx = and i64 %i.cw, %i.bp
  %.not = icmp eq i64 %i.cx, 0
  br i1 %.not, label %.lr.ph67.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph67
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.266
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !33
  %i.da = lshr i64 %i.cz, 43
  %i.db = and i64 %i.da, 31
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.266
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !33
  br label %.lr.ph67.1

.lr.ph67.1:                                       ; preds = %.lr.ph67, %bb.q
  %i.dd = add nuw i64 %.266, 1                    ; 3 uses
  %i.de = sub nuw i64 %i.dd, %.05470
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.bp
  %.not.1 = icmp eq i64 %i.dg, 0
  br i1 %.not.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph67.1
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dd
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !33
  %i.dj = lshr i64 %i.di, 43
  %i.dk = and i64 %i.dj, 31
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dd
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !33
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph67.1
  %i.dm = add nuw i64 %.266, 2                    ; 2 uses
  %exitcond81.not.1 = icmp eq i64 %i.dm, %i.br
  br i1 %exitcond81.not.1, label %.loopexit61, label %.lr.ph67, !llvm.loop !6747

.loopexit61:                                      ; preds = %.lr.ph, %.lr.ph67.prol.loopexit, %bb.s, %middle.block, %.preheader62, %.preheader60, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.br, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.br, %middle.block ], [ %.05470, %.preheader60 ], [ %.05470, %.preheader62 ], [ %i.br, %.lr.ph67.prol.loopexit ], [ %i.br, %bb.s ], [ %i.br, %.lr.ph ]
  %i.dn = add nuw nsw i64 %.05569, 1              ; 2 uses
  %exitcond82.not = icmp eq i64 %i.dn, %i.aq
  br i1 %exitcond82.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit, !llvm.loop !6744

.lr.ph73:                                         ; preds = %.lr.ph73.preheader131, %.lr.ph73
  %.072 = phi i64 [ %i.dt, %.lr.ph73 ], [ %.072.ph, %.lr.ph73.preheader131 ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.072
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !33
  %i.dq = lshr i64 %i.dp, 43
  %i.dr = and i64 %i.dq, 31
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.072
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !33
  %i.dt = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond85.not = icmp eq i64 %i.dt, %2
  br i1 %exitcond85.not, label %.loopexit, label %.lr.ph73, !llvm.loop !6748

.loopexit:                                        ; preds = %.loopexit61, %.loopexit63.us, %.lr.ph73, %middle.block128, %bb.o, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteLoopImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm5EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvPKT_PT0_mPS8_RNS_12ValidityMaskESI_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !526
  %.not.i = icmp eq ptr %i.a, null
  %.not39 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader33

.preheader33:                                     ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader33
  %i.b = load ptr, ptr %3, align 8, !tbaa !768    ; 2 uses
  %.not.i29 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br i1 %.not.i29, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph, %bb.e
  %.035.us = phi i64 [ %i.w, %bb.e ], [ 0, %.lr.ph ] ; 5 uses
  %i.d = lshr i64 %.035.us, 6                     ; 2 uses
  %i.e = and i64 %.035.us, 63
  %i.f = load ptr, ptr %4, align 8, !tbaa !526
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %i.i = shl nuw i64 1, %i.e                      ; 2 uses
  %i.j = and i64 %i.h, %i.i
  %.not.us = icmp eq i64 %i.j, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.035.us
  %i.l = load i64, ptr %i.k, align 8, !tbaa !33
  %i.m = lshr i64 %i.l, 43
  %i.n = and i64 %i.m, 31
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.035.us
  store i64 %i.n, ptr %i.o, align 8, !tbaa !33
  br label %bb.e

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.p = load ptr, ptr %5, align 8, !tbaa !526    ; 2 uses
  %.not.i30.us = icmp eq ptr %i.p, null
  br i1 %.not.i30.us, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.c, align 8, !tbaa !6664
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.q)
  %.pre.i.us = load ptr, ptr %5, align 8, !tbaa !526
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us: ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %.pre.i.us, %bb.d ], [ %i.p, %bb.c ]
  %i.s = xor i64 %i.i, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.d ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !33
  %i.v = and i64 %i.u, %i.s
  store i64 %i.v, ptr %i.t, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us, %bb.b
  %i.w = add nuw i64 %.035.us, 1                  ; 2 uses
  %exitcond43.not = icmp eq i64 %i.w, %2
  br i1 %exitcond43.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !6749

.preheader:                                       ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph37

.lr.ph37:                                         ; preds = %.preheader
  %i.x = load ptr, ptr %3, align 8, !tbaa !768    ; 4 uses
  %.not.i31 = icmp eq ptr %i.x, null
end_hunk_5
begin_hunk_6_@_ZN6duckdb13UnaryExecutor15ExecuteStandardImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm6EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvS6_S6_mPvbNS_14FunctionErrorsE:bb.a
_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #58
  br label %bb.aw

bb.at:                                            ; preds = %bb.v, %bb.u
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.au:                                            ; preds = %bb.w
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %bb.x, %bb.af
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.av, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75, %bb.au, %bb.at
  %.pn.pn = phi { ptr, i32 } [ %i.cr, %bb.at ], [ %i.cs, %bb.au ], [ %i.ct, %bb.av ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76 ], [ %.pn9.i.i72, %bb.ad ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75 ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %13) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #58
  br label %common.resume

bb.aw:                                            ; preds = %bb.t, %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit69
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteFlatImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm6EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvPKT_PT0_mRNS_12ValidityMaskESH_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !526    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not75 = icmp eq i64 %2, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %.preheader
  %min.iters.check119 = icmp ult i64 %2, 4
  br i1 %min.iters.check119, label %.lr.ph73.preheader131, label %vector.ph120

vector.ph120:                                     ; preds = %.lr.ph73.preheader
  %n.vec122 = and i64 %2, -4                      ; 3 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph120
  %index124 = phi i64 [ 0, %vector.ph120 ], [ %index.next127, %vector.body123 ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index124 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load125 = load <2 x i64>, ptr %i.b, align 8, !tbaa !33
  %wide.load126 = load <2 x i64>, ptr %i.c, align 8, !tbaa !33
  %i.d = lshr <2 x i64> %wide.load125, splat (i64 42)
  %i.e = lshr <2 x i64> %wide.load126, splat (i64 42)
  %i.f = and <2 x i64> %i.d, splat (i64 63)
  %i.g = and <2 x i64> %i.e, splat (i64 63)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index124 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <2 x i64> %i.f, ptr %i.h, align 8, !tbaa !33
  store <2 x i64> %i.g, ptr %i.i, align 8, !tbaa !33
  %index.next127 = add nuw i64 %index124, 4       ; 2 uses
  %i.j = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.j, label %middle.block128, label %vector.body123, !llvm.loop !6753

middle.block128:                                  ; preds = %vector.body123
  %cmp.n129 = icmp eq i64 %2, %n.vec122
  br i1 %cmp.n129, label %.loopexit, label %.lr.ph73.preheader131

.lr.ph73.preheader131:                            ; preds = %.lr.ph73.preheader, %middle.block128
  %.072.ph = phi i64 [ 0, %.lr.ph73.preheader ], [ %n.vec122, %middle.block128 ]
  br label %.lr.ph73

bb.b:                                             ; preds = %bb.a
  br i1 %6, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %4, align 8, !tbaa !526
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = icmp eq ptr %4, %3
  br i1 %i.l, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78   ; 2 uses
  %i.p = load <2 x ptr>, ptr %i.m, align 8, !tbaa !34
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !78   ; 8 uses
  store <2 x ptr> %i.p, ptr %i.k, align 8, !tbaa !34
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.x, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !73
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58, !inline_history !6666
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58, !inline_history !6666
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.aa, %bb.k ], [ %i.ak, %bb.l ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.al, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, !prof !81

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit: ; preds = %bb.c, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !6664
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !6664
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit
  %i.ap = add i64 %2, 63
  %i.aq = lshr i64 %i.ap, 6                       ; 3 uses
  %.not74 = icmp eq i64 %i.aq, 0
  br i1 %.not74, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.o
  %i.ar = load ptr, ptr %3, align 8, !tbaa !526   ; 2 uses
  %.not.i56 = icmp eq ptr %i.ar, null
  br i1 %.not.i56, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us: ; preds = %.lr.ph71, %.loopexit63.us
  %.05470.us = phi i64 [ %.1.lcssa.us, %.loopexit63.us ], [ 0, %.lr.ph71 ] ; 7 uses
  %.05569.us = phi i64 [ %i.bn, %.loopexit63.us ], [ 0, %.lr.ph71 ]
  %i.as = add i64 %.05470.us, 64
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %i.as, i64 %2) ; 5 uses
  %i.au = icmp ult i64 %.05470.us, %i.at
  br i1 %i.au, label %.lr.ph.us.preheader, label %.loopexit63.us

.lr.ph.us.preheader:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %i.av = sub nuw i64 %i.at, %.05470.us           ; 3 uses
  %min.iters.check106 = icmp ult i64 %i.av, 4
  br i1 %min.iters.check106, label %.lr.ph.us.preheader132, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.us.preheader
  %n.vec109 = and i64 %i.av, -4                   ; 3 uses
  %i.aw = add i64 %.05470.us, %n.vec109
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next114, %vector.body110 ] ; 2 uses
  %i.ax = add i64 %.05470.us, %index111           ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load112 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !33
  %wide.load113 = load <2 x i64>, ptr %i.az, align 8, !tbaa !33
  %i.ba = lshr <2 x i64> %wide.load112, splat (i64 42)
  %i.bb = lshr <2 x i64> %wide.load113, splat (i64 42)
  %i.bc = and <2 x i64> %i.ba, splat (i64 63)
  %i.bd = and <2 x i64> %i.bb, splat (i64 63)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ax ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <2 x i64> %i.bc, ptr %i.be, align 8, !tbaa !33
  store <2 x i64> %i.bd, ptr %i.bf, align 8, !tbaa !33
  %index.next114 = add nuw i64 %index111, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.bg, label %middle.block115, label %vector.body110, !llvm.loop !6754

middle.block115:                                  ; preds = %vector.body110
  %cmp.n116 = icmp eq i64 %i.av, %n.vec109
  br i1 %cmp.n116, label %.loopexit63.us, label %.lr.ph.us.preheader132

.lr.ph.us.preheader132:                           ; preds = %.lr.ph.us.preheader, %middle.block115
  %.165.us.ph = phi i64 [ %.05470.us, %.lr.ph.us.preheader ], [ %i.aw, %middle.block115 ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader132, %.lr.ph.us
  %.165.us = phi i64 [ %i.bm, %.lr.ph.us ], [ %.165.us.ph, %.lr.ph.us.preheader132 ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165.us
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !33
  %i.bj = lshr i64 %i.bi, 42
  %i.bk = and i64 %i.bj, 63
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.165.us
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !33
  %i.bm = add nuw i64 %.165.us, 1                 ; 2 uses
  %exitcond83.not = icmp eq i64 %i.bm, %i.at
  br i1 %exitcond83.not, label %.loopexit63.us, label %.lr.ph.us, !llvm.loop !6755

.loopexit63.us:                                   ; preds = %.lr.ph.us, %middle.block115, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %.1.lcssa.us = phi i64 [ %.05470.us, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us ], [ %i.at, %middle.block115 ], [ %i.at, %.lr.ph.us ]
  %i.bn = add nuw nsw i64 %.05569.us, 1           ; 2 uses
  %exitcond84.not = icmp eq i64 %i.bn, %i.aq
  br i1 %exitcond84.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, !llvm.loop !6756

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %.lr.ph71, %.loopexit61
  %.05470 = phi i64 [ %.4, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 17 uses
  %.05569 = phi i64 [ %i.dn, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.05569
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !33 ; 4 uses
  %i.bq = add i64 %.05470, 64
  %i.br = tail call noundef i64 @llvm.umin.i64(i64 %i.bq, i64 %2) ; 12 uses
  switch i64 %i.bp, label %.preheader60 [
    i64 -1, label %.preheader62
    i64 0, label %.loopexit61
  ]

.preheader62:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.bs = icmp ult i64 %.05470, %i.br
  br i1 %i.bs, label %.lr.ph.preheader, label %.loopexit61

.lr.ph.preheader:                                 ; preds = %.preheader62
  %i.bt = sub nuw i64 %i.br, %.05470              ; 3 uses
  %min.iters.check = icmp ult i64 %i.bt, 4
  br i1 %min.iters.check, label %.lr.ph.preheader134, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bt, -4                      ; 3 uses
  %i.bu = add i64 %.05470, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = add i64 %.05470, %index                 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load = load <2 x i64>, ptr %i.bw, align 8, !tbaa !33
  %wide.load104 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !33
  %i.by = lshr <2 x i64> %wide.load, splat (i64 42)
  %i.bz = lshr <2 x i64> %wide.load104, splat (i64 42)
  %i.ca = and <2 x i64> %i.by, splat (i64 63)
  %i.cb = and <2 x i64> %i.bz, splat (i64 63)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bv ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <2 x i64> %i.ca, ptr %i.cc, align 8, !tbaa !33
  store <2 x i64> %i.cb, ptr %i.cd, align 8, !tbaa !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !6757

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %.loopexit61, label %.lr.ph.preheader134

.lr.ph.preheader134:                              ; preds = %.lr.ph.preheader, %middle.block
  %.165.ph = phi i64 [ %.05470, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph

.preheader60:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.cf = icmp ult i64 %.05470, %i.br
  br i1 %i.cf, label %.lr.ph67.preheader, label %.loopexit61

.lr.ph67.preheader:                               ; preds = %.preheader60
  %i.cg = sub nuw i64 %i.br, %.05470
  %.neg = add i64 %.05470, 1
  %xtraiter = and i64 %i.cg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader
  %i.ch = and i64 %i.bp, 1
  %.not.prol = icmp eq i64 %i.ch, 0
  br i1 %.not.prol, label %.lr.ph67.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph67.prol
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.05470
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !33
  %i.ck = lshr i64 %i.cj, 42
  %i.cl = and i64 %i.ck, 63
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05470
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !33
  br label %.lr.ph67.prol.loopexit.unr-lcssa

.lr.ph67.prol.loopexit.unr-lcssa:                 ; preds = %bb.p, %.lr.ph67.prol
  %i.cn = add nuw i64 %.05470, 1
  br label %.lr.ph67.prol.loopexit

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol.loopexit.unr-lcssa, %.lr.ph67.preheader
  %.266.unr = phi i64 [ %.05470, %.lr.ph67.preheader ], [ %i.cn, %.lr.ph67.prol.loopexit.unr-lcssa ]
  %i.co = icmp eq i64 %i.br, %.neg
  br i1 %i.co, label %.loopexit61, label %.lr.ph67

.lr.ph:                                           ; preds = %.lr.ph.preheader134, %.lr.ph
  %.165 = phi i64 [ %i.cu, %.lr.ph ], [ %.165.ph, %.lr.ph.preheader134 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !33
  %i.cr = lshr i64 %i.cq, 42
  %i.cs = and i64 %i.cr, 63
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.165
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !33
  %i.cu = add nuw i64 %.165, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cu, %i.br
  br i1 %exitcond.not, label %.loopexit61, label %.lr.ph, !llvm.loop !6758

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %bb.s
  %.266 = phi i64 [ %i.dm, %bb.s ], [ %.266.unr, %.lr.ph67.prol.loopexit ] ; 5 uses
  %i.cv = sub nuw i64 %.266, %.05470
  %i.cw = shl nuw i64 1, %i.cv
  %i.cx = and i64 %i.cw, %i.bp
  %.not = icmp eq i64 %i.cx, 0
  br i1 %.not, label %.lr.ph67.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph67
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.266
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !33
  %i.da = lshr i64 %i.cz, 42
  %i.db = and i64 %i.da, 63
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.266
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !33
  br label %.lr.ph67.1

.lr.ph67.1:                                       ; preds = %.lr.ph67, %bb.q
  %i.dd = add nuw i64 %.266, 1                    ; 3 uses
  %i.de = sub nuw i64 %i.dd, %.05470
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.bp
  %.not.1 = icmp eq i64 %i.dg, 0
  br i1 %.not.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph67.1
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dd
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !33
  %i.dj = lshr i64 %i.di, 42
  %i.dk = and i64 %i.dj, 63
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dd
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !33
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph67.1
  %i.dm = add nuw i64 %.266, 2                    ; 2 uses
  %exitcond81.not.1 = icmp eq i64 %i.dm, %i.br
  br i1 %exitcond81.not.1, label %.loopexit61, label %.lr.ph67, !llvm.loop !6759

.loopexit61:                                      ; preds = %.lr.ph, %.lr.ph67.prol.loopexit, %bb.s, %middle.block, %.preheader62, %.preheader60, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.br, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.br, %middle.block ], [ %.05470, %.preheader60 ], [ %.05470, %.preheader62 ], [ %i.br, %.lr.ph67.prol.loopexit ], [ %i.br, %bb.s ], [ %i.br, %.lr.ph ]
  %i.dn = add nuw nsw i64 %.05569, 1              ; 2 uses
  %exitcond82.not = icmp eq i64 %i.dn, %i.aq
  br i1 %exitcond82.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit, !llvm.loop !6756

.lr.ph73:                                         ; preds = %.lr.ph73.preheader131, %.lr.ph73
  %.072 = phi i64 [ %i.dt, %.lr.ph73 ], [ %.072.ph, %.lr.ph73.preheader131 ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.072
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !33
  %i.dq = lshr i64 %i.dp, 42
  %i.dr = and i64 %i.dq, 63
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.072
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !33
  %i.dt = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond85.not = icmp eq i64 %i.dt, %2
  br i1 %exitcond85.not, label %.loopexit, label %.lr.ph73, !llvm.loop !6760

.loopexit:                                        ; preds = %.loopexit61, %.loopexit63.us, %.lr.ph73, %middle.block128, %bb.o, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteLoopImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm6EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvPKT_PT0_mPS8_RNS_12ValidityMaskESI_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !526
  %.not.i = icmp eq ptr %i.a, null
  %.not39 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader33

.preheader33:                                     ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader33
  %i.b = load ptr, ptr %3, align 8, !tbaa !768    ; 2 uses
  %.not.i29 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br i1 %.not.i29, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph, %bb.e
  %.035.us = phi i64 [ %i.w, %bb.e ], [ 0, %.lr.ph ] ; 5 uses
  %i.d = lshr i64 %.035.us, 6                     ; 2 uses
  %i.e = and i64 %.035.us, 63
  %i.f = load ptr, ptr %4, align 8, !tbaa !526
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %i.i = shl nuw i64 1, %i.e                      ; 2 uses
  %i.j = and i64 %i.h, %i.i
  %.not.us = icmp eq i64 %i.j, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.035.us
  %i.l = load i64, ptr %i.k, align 8, !tbaa !33
  %i.m = lshr i64 %i.l, 42
  %i.n = and i64 %i.m, 63
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.035.us
  store i64 %i.n, ptr %i.o, align 8, !tbaa !33
  br label %bb.e

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.p = load ptr, ptr %5, align 8, !tbaa !526    ; 2 uses
  %.not.i30.us = icmp eq ptr %i.p, null
  br i1 %.not.i30.us, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.c, align 8, !tbaa !6664
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.q)
  %.pre.i.us = load ptr, ptr %5, align 8, !tbaa !526
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us: ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %.pre.i.us, %bb.d ], [ %i.p, %bb.c ]
  %i.s = xor i64 %i.i, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.d ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !33
  %i.v = and i64 %i.u, %i.s
  store i64 %i.v, ptr %i.t, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us, %bb.b
  %i.w = add nuw i64 %.035.us, 1                  ; 2 uses
  %exitcond43.not = icmp eq i64 %i.w, %2
  br i1 %exitcond43.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !6761

.preheader:                                       ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph37

.lr.ph37:                                         ; preds = %.preheader
  %i.x = load ptr, ptr %3, align 8, !tbaa !768    ; 4 uses
  %.not.i31 = icmp eq ptr %i.x, null
end_hunk_6
begin_hunk_7_@_ZN6duckdb13UnaryExecutor15ExecuteStandardImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm7EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvS6_S6_mPvbNS_14FunctionErrorsE:bb.a
_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #58
  br label %bb.aw

bb.at:                                            ; preds = %bb.v, %bb.u
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.au:                                            ; preds = %bb.w
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %bb.x, %bb.af
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.av, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75, %bb.au, %bb.at
  %.pn.pn = phi { ptr, i32 } [ %i.cr, %bb.at ], [ %i.cs, %bb.au ], [ %i.ct, %bb.av ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76 ], [ %.pn9.i.i72, %bb.ad ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75 ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %13) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #58
  br label %common.resume

bb.aw:                                            ; preds = %bb.t, %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit69
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteFlatImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm7EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvPKT_PT0_mRNS_12ValidityMaskESH_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !526    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not75 = icmp eq i64 %2, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %.preheader
  %min.iters.check119 = icmp ult i64 %2, 4
  br i1 %min.iters.check119, label %.lr.ph73.preheader131, label %vector.ph120

vector.ph120:                                     ; preds = %.lr.ph73.preheader
  %n.vec122 = and i64 %2, -4                      ; 3 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph120
  %index124 = phi i64 [ 0, %vector.ph120 ], [ %index.next127, %vector.body123 ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index124 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load125 = load <2 x i64>, ptr %i.b, align 8, !tbaa !33
  %wide.load126 = load <2 x i64>, ptr %i.c, align 8, !tbaa !33
  %i.d = lshr <2 x i64> %wide.load125, splat (i64 41)
  %i.e = lshr <2 x i64> %wide.load126, splat (i64 41)
  %i.f = and <2 x i64> %i.d, splat (i64 127)
  %i.g = and <2 x i64> %i.e, splat (i64 127)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index124 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <2 x i64> %i.f, ptr %i.h, align 8, !tbaa !33
  store <2 x i64> %i.g, ptr %i.i, align 8, !tbaa !33
  %index.next127 = add nuw i64 %index124, 4       ; 2 uses
  %i.j = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.j, label %middle.block128, label %vector.body123, !llvm.loop !6765

middle.block128:                                  ; preds = %vector.body123
  %cmp.n129 = icmp eq i64 %2, %n.vec122
  br i1 %cmp.n129, label %.loopexit, label %.lr.ph73.preheader131

.lr.ph73.preheader131:                            ; preds = %.lr.ph73.preheader, %middle.block128
  %.072.ph = phi i64 [ 0, %.lr.ph73.preheader ], [ %n.vec122, %middle.block128 ]
  br label %.lr.ph73

bb.b:                                             ; preds = %bb.a
  br i1 %6, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %4, align 8, !tbaa !526
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = icmp eq ptr %4, %3
  br i1 %i.l, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78   ; 2 uses
  %i.p = load <2 x ptr>, ptr %i.m, align 8, !tbaa !34
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !78   ; 8 uses
  store <2 x ptr> %i.p, ptr %i.k, align 8, !tbaa !34
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.x, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !73
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58, !inline_history !6666
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58, !inline_history !6666
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.aa, %bb.k ], [ %i.ak, %bb.l ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.al, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, !prof !81

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit: ; preds = %bb.c, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !6664
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !6664
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit
  %i.ap = add i64 %2, 63
  %i.aq = lshr i64 %i.ap, 6                       ; 3 uses
  %.not74 = icmp eq i64 %i.aq, 0
  br i1 %.not74, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.o
  %i.ar = load ptr, ptr %3, align 8, !tbaa !526   ; 2 uses
  %.not.i56 = icmp eq ptr %i.ar, null
  br i1 %.not.i56, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us: ; preds = %.lr.ph71, %.loopexit63.us
  %.05470.us = phi i64 [ %.1.lcssa.us, %.loopexit63.us ], [ 0, %.lr.ph71 ] ; 7 uses
  %.05569.us = phi i64 [ %i.bn, %.loopexit63.us ], [ 0, %.lr.ph71 ]
  %i.as = add i64 %.05470.us, 64
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %i.as, i64 %2) ; 5 uses
  %i.au = icmp ult i64 %.05470.us, %i.at
  br i1 %i.au, label %.lr.ph.us.preheader, label %.loopexit63.us

.lr.ph.us.preheader:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %i.av = sub nuw i64 %i.at, %.05470.us           ; 3 uses
  %min.iters.check106 = icmp ult i64 %i.av, 4
  br i1 %min.iters.check106, label %.lr.ph.us.preheader132, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.us.preheader
  %n.vec109 = and i64 %i.av, -4                   ; 3 uses
  %i.aw = add i64 %.05470.us, %n.vec109
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next114, %vector.body110 ] ; 2 uses
  %i.ax = add i64 %.05470.us, %index111           ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load112 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !33
  %wide.load113 = load <2 x i64>, ptr %i.az, align 8, !tbaa !33
  %i.ba = lshr <2 x i64> %wide.load112, splat (i64 41)
  %i.bb = lshr <2 x i64> %wide.load113, splat (i64 41)
  %i.bc = and <2 x i64> %i.ba, splat (i64 127)
  %i.bd = and <2 x i64> %i.bb, splat (i64 127)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ax ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <2 x i64> %i.bc, ptr %i.be, align 8, !tbaa !33
  store <2 x i64> %i.bd, ptr %i.bf, align 8, !tbaa !33
  %index.next114 = add nuw i64 %index111, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.bg, label %middle.block115, label %vector.body110, !llvm.loop !6766

middle.block115:                                  ; preds = %vector.body110
  %cmp.n116 = icmp eq i64 %i.av, %n.vec109
  br i1 %cmp.n116, label %.loopexit63.us, label %.lr.ph.us.preheader132

.lr.ph.us.preheader132:                           ; preds = %.lr.ph.us.preheader, %middle.block115
  %.165.us.ph = phi i64 [ %.05470.us, %.lr.ph.us.preheader ], [ %i.aw, %middle.block115 ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader132, %.lr.ph.us
  %.165.us = phi i64 [ %i.bm, %.lr.ph.us ], [ %.165.us.ph, %.lr.ph.us.preheader132 ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165.us
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !33
  %i.bj = lshr i64 %i.bi, 41
  %i.bk = and i64 %i.bj, 127
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.165.us
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !33
  %i.bm = add nuw i64 %.165.us, 1                 ; 2 uses
  %exitcond83.not = icmp eq i64 %i.bm, %i.at
  br i1 %exitcond83.not, label %.loopexit63.us, label %.lr.ph.us, !llvm.loop !6767

.loopexit63.us:                                   ; preds = %.lr.ph.us, %middle.block115, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %.1.lcssa.us = phi i64 [ %.05470.us, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us ], [ %i.at, %middle.block115 ], [ %i.at, %.lr.ph.us ]
  %i.bn = add nuw nsw i64 %.05569.us, 1           ; 2 uses
  %exitcond84.not = icmp eq i64 %i.bn, %i.aq
  br i1 %exitcond84.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, !llvm.loop !6768

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %.lr.ph71, %.loopexit61
  %.05470 = phi i64 [ %.4, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 17 uses
  %.05569 = phi i64 [ %i.dn, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.05569
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !33 ; 4 uses
  %i.bq = add i64 %.05470, 64
  %i.br = tail call noundef i64 @llvm.umin.i64(i64 %i.bq, i64 %2) ; 12 uses
  switch i64 %i.bp, label %.preheader60 [
    i64 -1, label %.preheader62
    i64 0, label %.loopexit61
  ]

.preheader62:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.bs = icmp ult i64 %.05470, %i.br
  br i1 %i.bs, label %.lr.ph.preheader, label %.loopexit61

.lr.ph.preheader:                                 ; preds = %.preheader62
  %i.bt = sub nuw i64 %i.br, %.05470              ; 3 uses
  %min.iters.check = icmp ult i64 %i.bt, 4
  br i1 %min.iters.check, label %.lr.ph.preheader134, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bt, -4                      ; 3 uses
  %i.bu = add i64 %.05470, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = add i64 %.05470, %index                 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load = load <2 x i64>, ptr %i.bw, align 8, !tbaa !33
  %wide.load104 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !33
  %i.by = lshr <2 x i64> %wide.load, splat (i64 41)
  %i.bz = lshr <2 x i64> %wide.load104, splat (i64 41)
  %i.ca = and <2 x i64> %i.by, splat (i64 127)
  %i.cb = and <2 x i64> %i.bz, splat (i64 127)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bv ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <2 x i64> %i.ca, ptr %i.cc, align 8, !tbaa !33
  store <2 x i64> %i.cb, ptr %i.cd, align 8, !tbaa !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !6769

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %.loopexit61, label %.lr.ph.preheader134

.lr.ph.preheader134:                              ; preds = %.lr.ph.preheader, %middle.block
  %.165.ph = phi i64 [ %.05470, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph

.preheader60:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.cf = icmp ult i64 %.05470, %i.br
  br i1 %i.cf, label %.lr.ph67.preheader, label %.loopexit61

.lr.ph67.preheader:                               ; preds = %.preheader60
  %i.cg = sub nuw i64 %i.br, %.05470
  %.neg = add i64 %.05470, 1
  %xtraiter = and i64 %i.cg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader
  %i.ch = and i64 %i.bp, 1
  %.not.prol = icmp eq i64 %i.ch, 0
  br i1 %.not.prol, label %.lr.ph67.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph67.prol
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.05470
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !33
  %i.ck = lshr i64 %i.cj, 41
  %i.cl = and i64 %i.ck, 127
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05470
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !33
  br label %.lr.ph67.prol.loopexit.unr-lcssa

.lr.ph67.prol.loopexit.unr-lcssa:                 ; preds = %bb.p, %.lr.ph67.prol
  %i.cn = add nuw i64 %.05470, 1
  br label %.lr.ph67.prol.loopexit

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol.loopexit.unr-lcssa, %.lr.ph67.preheader
  %.266.unr = phi i64 [ %.05470, %.lr.ph67.preheader ], [ %i.cn, %.lr.ph67.prol.loopexit.unr-lcssa ]
  %i.co = icmp eq i64 %i.br, %.neg
  br i1 %i.co, label %.loopexit61, label %.lr.ph67

.lr.ph:                                           ; preds = %.lr.ph.preheader134, %.lr.ph
  %.165 = phi i64 [ %i.cu, %.lr.ph ], [ %.165.ph, %.lr.ph.preheader134 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !33
  %i.cr = lshr i64 %i.cq, 41
  %i.cs = and i64 %i.cr, 127
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.165
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !33
  %i.cu = add nuw i64 %.165, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cu, %i.br
  br i1 %exitcond.not, label %.loopexit61, label %.lr.ph, !llvm.loop !6770

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %bb.s
  %.266 = phi i64 [ %i.dm, %bb.s ], [ %.266.unr, %.lr.ph67.prol.loopexit ] ; 5 uses
  %i.cv = sub nuw i64 %.266, %.05470
  %i.cw = shl nuw i64 1, %i.cv
  %i.cx = and i64 %i.cw, %i.bp
  %.not = icmp eq i64 %i.cx, 0
  br i1 %.not, label %.lr.ph67.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph67
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.266
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !33
  %i.da = lshr i64 %i.cz, 41
  %i.db = and i64 %i.da, 127
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.266
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !33
  br label %.lr.ph67.1

.lr.ph67.1:                                       ; preds = %.lr.ph67, %bb.q
  %i.dd = add nuw i64 %.266, 1                    ; 3 uses
  %i.de = sub nuw i64 %i.dd, %.05470
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.bp
  %.not.1 = icmp eq i64 %i.dg, 0
  br i1 %.not.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph67.1
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dd
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !33
  %i.dj = lshr i64 %i.di, 41
  %i.dk = and i64 %i.dj, 127
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dd
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !33
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph67.1
  %i.dm = add nuw i64 %.266, 2                    ; 2 uses
  %exitcond81.not.1 = icmp eq i64 %i.dm, %i.br
  br i1 %exitcond81.not.1, label %.loopexit61, label %.lr.ph67, !llvm.loop !6771

.loopexit61:                                      ; preds = %.lr.ph, %.lr.ph67.prol.loopexit, %bb.s, %middle.block, %.preheader62, %.preheader60, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.br, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.br, %middle.block ], [ %.05470, %.preheader60 ], [ %.05470, %.preheader62 ], [ %i.br, %.lr.ph67.prol.loopexit ], [ %i.br, %bb.s ], [ %i.br, %.lr.ph ]
  %i.dn = add nuw nsw i64 %.05569, 1              ; 2 uses
  %exitcond82.not = icmp eq i64 %i.dn, %i.aq
  br i1 %exitcond82.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit, !llvm.loop !6768

.lr.ph73:                                         ; preds = %.lr.ph73.preheader131, %.lr.ph73
  %.072 = phi i64 [ %i.dt, %.lr.ph73 ], [ %.072.ph, %.lr.ph73.preheader131 ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.072
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !33
  %i.dq = lshr i64 %i.dp, 41
  %i.dr = and i64 %i.dq, 127
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.072
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !33
  %i.dt = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond85.not = icmp eq i64 %i.dt, %2
  br i1 %exitcond85.not, label %.loopexit, label %.lr.ph73, !llvm.loop !6772

.loopexit:                                        ; preds = %.loopexit61, %.loopexit63.us, %.lr.ph73, %middle.block128, %bb.o, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteLoopImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm7EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvPKT_PT0_mPS8_RNS_12ValidityMaskESI_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !526
  %.not.i = icmp eq ptr %i.a, null
  %.not39 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader33

.preheader33:                                     ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader33
  %i.b = load ptr, ptr %3, align 8, !tbaa !768    ; 2 uses
  %.not.i29 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br i1 %.not.i29, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph, %bb.e
  %.035.us = phi i64 [ %i.w, %bb.e ], [ 0, %.lr.ph ] ; 5 uses
  %i.d = lshr i64 %.035.us, 6                     ; 2 uses
  %i.e = and i64 %.035.us, 63
  %i.f = load ptr, ptr %4, align 8, !tbaa !526
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %i.i = shl nuw i64 1, %i.e                      ; 2 uses
  %i.j = and i64 %i.h, %i.i
  %.not.us = icmp eq i64 %i.j, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.035.us
  %i.l = load i64, ptr %i.k, align 8, !tbaa !33
  %i.m = lshr i64 %i.l, 41
  %i.n = and i64 %i.m, 127
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.035.us
  store i64 %i.n, ptr %i.o, align 8, !tbaa !33
  br label %bb.e

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.p = load ptr, ptr %5, align 8, !tbaa !526    ; 2 uses
  %.not.i30.us = icmp eq ptr %i.p, null
  br i1 %.not.i30.us, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.c, align 8, !tbaa !6664
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.q)
  %.pre.i.us = load ptr, ptr %5, align 8, !tbaa !526
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us: ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %.pre.i.us, %bb.d ], [ %i.p, %bb.c ]
  %i.s = xor i64 %i.i, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.d ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !33
  %i.v = and i64 %i.u, %i.s
  store i64 %i.v, ptr %i.t, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us, %bb.b
  %i.w = add nuw i64 %.035.us, 1                  ; 2 uses
  %exitcond43.not = icmp eq i64 %i.w, %2
  br i1 %exitcond43.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !6773

.preheader:                                       ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph37

.lr.ph37:                                         ; preds = %.preheader
  %i.x = load ptr, ptr %3, align 8, !tbaa !768    ; 4 uses
  %.not.i31 = icmp eq ptr %i.x, null
end_hunk_7
begin_hunk_8_@_ZN6duckdb13UnaryExecutor15ExecuteStandardImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm8EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvS6_S6_mPvbNS_14FunctionErrorsE:bb.a
_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #58
  br label %bb.aw

bb.at:                                            ; preds = %bb.v, %bb.u
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.au:                                            ; preds = %bb.w
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %bb.x, %bb.af
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.av, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75, %bb.au, %bb.at
  %.pn.pn = phi { ptr, i32 } [ %i.cr, %bb.at ], [ %i.cs, %bb.au ], [ %i.ct, %bb.av ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76 ], [ %.pn9.i.i72, %bb.ad ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75 ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %13) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #58
  br label %common.resume

bb.aw:                                            ; preds = %bb.t, %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit69
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteFlatImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm8EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvPKT_PT0_mRNS_12ValidityMaskESH_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !526    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not75 = icmp eq i64 %2, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %.preheader
  %min.iters.check119 = icmp ult i64 %2, 4
  br i1 %min.iters.check119, label %.lr.ph73.preheader131, label %vector.ph120

vector.ph120:                                     ; preds = %.lr.ph73.preheader
  %n.vec122 = and i64 %2, -4                      ; 3 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph120
  %index124 = phi i64 [ 0, %vector.ph120 ], [ %index.next127, %vector.body123 ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index124 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load125 = load <2 x i64>, ptr %i.b, align 8, !tbaa !33
  %wide.load126 = load <2 x i64>, ptr %i.c, align 8, !tbaa !33
  %i.d = lshr <2 x i64> %wide.load125, splat (i64 40)
  %i.e = lshr <2 x i64> %wide.load126, splat (i64 40)
  %i.f = and <2 x i64> %i.d, splat (i64 255)
  %i.g = and <2 x i64> %i.e, splat (i64 255)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index124 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <2 x i64> %i.f, ptr %i.h, align 8, !tbaa !33
  store <2 x i64> %i.g, ptr %i.i, align 8, !tbaa !33
  %index.next127 = add nuw i64 %index124, 4       ; 2 uses
  %i.j = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.j, label %middle.block128, label %vector.body123, !llvm.loop !6777

middle.block128:                                  ; preds = %vector.body123
  %cmp.n129 = icmp eq i64 %2, %n.vec122
  br i1 %cmp.n129, label %.loopexit, label %.lr.ph73.preheader131

.lr.ph73.preheader131:                            ; preds = %.lr.ph73.preheader, %middle.block128
  %.072.ph = phi i64 [ 0, %.lr.ph73.preheader ], [ %n.vec122, %middle.block128 ]
  br label %.lr.ph73

bb.b:                                             ; preds = %bb.a
  br i1 %6, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %4, align 8, !tbaa !526
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = icmp eq ptr %4, %3
  br i1 %i.l, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78   ; 2 uses
  %i.p = load <2 x ptr>, ptr %i.m, align 8, !tbaa !34
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !78   ; 8 uses
  store <2 x ptr> %i.p, ptr %i.k, align 8, !tbaa !34
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.x, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !73
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58, !inline_history !6666
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58, !inline_history !6666
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.aa, %bb.k ], [ %i.ak, %bb.l ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.al, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, !prof !81

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit: ; preds = %bb.c, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !6664
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !6664
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit
  %i.ap = add i64 %2, 63
  %i.aq = lshr i64 %i.ap, 6                       ; 3 uses
  %.not74 = icmp eq i64 %i.aq, 0
  br i1 %.not74, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.o
  %i.ar = load ptr, ptr %3, align 8, !tbaa !526   ; 2 uses
  %.not.i56 = icmp eq ptr %i.ar, null
  br i1 %.not.i56, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us: ; preds = %.lr.ph71, %.loopexit63.us
  %.05470.us = phi i64 [ %.1.lcssa.us, %.loopexit63.us ], [ 0, %.lr.ph71 ] ; 7 uses
  %.05569.us = phi i64 [ %i.bn, %.loopexit63.us ], [ 0, %.lr.ph71 ]
  %i.as = add i64 %.05470.us, 64
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %i.as, i64 %2) ; 5 uses
  %i.au = icmp ult i64 %.05470.us, %i.at
  br i1 %i.au, label %.lr.ph.us.preheader, label %.loopexit63.us

.lr.ph.us.preheader:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %i.av = sub nuw i64 %i.at, %.05470.us           ; 3 uses
  %min.iters.check106 = icmp ult i64 %i.av, 4
  br i1 %min.iters.check106, label %.lr.ph.us.preheader132, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.us.preheader
  %n.vec109 = and i64 %i.av, -4                   ; 3 uses
  %i.aw = add i64 %.05470.us, %n.vec109
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next114, %vector.body110 ] ; 2 uses
  %i.ax = add i64 %.05470.us, %index111           ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load112 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !33
  %wide.load113 = load <2 x i64>, ptr %i.az, align 8, !tbaa !33
  %i.ba = lshr <2 x i64> %wide.load112, splat (i64 40)
  %i.bb = lshr <2 x i64> %wide.load113, splat (i64 40)
  %i.bc = and <2 x i64> %i.ba, splat (i64 255)
  %i.bd = and <2 x i64> %i.bb, splat (i64 255)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ax ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <2 x i64> %i.bc, ptr %i.be, align 8, !tbaa !33
  store <2 x i64> %i.bd, ptr %i.bf, align 8, !tbaa !33
  %index.next114 = add nuw i64 %index111, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.bg, label %middle.block115, label %vector.body110, !llvm.loop !6778

middle.block115:                                  ; preds = %vector.body110
  %cmp.n116 = icmp eq i64 %i.av, %n.vec109
  br i1 %cmp.n116, label %.loopexit63.us, label %.lr.ph.us.preheader132

.lr.ph.us.preheader132:                           ; preds = %.lr.ph.us.preheader, %middle.block115
  %.165.us.ph = phi i64 [ %.05470.us, %.lr.ph.us.preheader ], [ %i.aw, %middle.block115 ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader132, %.lr.ph.us
  %.165.us = phi i64 [ %i.bm, %.lr.ph.us ], [ %.165.us.ph, %.lr.ph.us.preheader132 ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165.us
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !33
  %i.bj = lshr i64 %i.bi, 40
  %i.bk = and i64 %i.bj, 255
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.165.us
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !33
  %i.bm = add nuw i64 %.165.us, 1                 ; 2 uses
  %exitcond83.not = icmp eq i64 %i.bm, %i.at
  br i1 %exitcond83.not, label %.loopexit63.us, label %.lr.ph.us, !llvm.loop !6779

.loopexit63.us:                                   ; preds = %.lr.ph.us, %middle.block115, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %.1.lcssa.us = phi i64 [ %.05470.us, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us ], [ %i.at, %middle.block115 ], [ %i.at, %.lr.ph.us ]
  %i.bn = add nuw nsw i64 %.05569.us, 1           ; 2 uses
  %exitcond84.not = icmp eq i64 %i.bn, %i.aq
  br i1 %exitcond84.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, !llvm.loop !6780

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %.lr.ph71, %.loopexit61
  %.05470 = phi i64 [ %.4, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 17 uses
  %.05569 = phi i64 [ %i.dn, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.05569
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !33 ; 4 uses
  %i.bq = add i64 %.05470, 64
  %i.br = tail call noundef i64 @llvm.umin.i64(i64 %i.bq, i64 %2) ; 12 uses
  switch i64 %i.bp, label %.preheader60 [
    i64 -1, label %.preheader62
    i64 0, label %.loopexit61
  ]

.preheader62:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.bs = icmp ult i64 %.05470, %i.br
  br i1 %i.bs, label %.lr.ph.preheader, label %.loopexit61

.lr.ph.preheader:                                 ; preds = %.preheader62
  %i.bt = sub nuw i64 %i.br, %.05470              ; 3 uses
  %min.iters.check = icmp ult i64 %i.bt, 4
  br i1 %min.iters.check, label %.lr.ph.preheader134, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bt, -4                      ; 3 uses
  %i.bu = add i64 %.05470, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = add i64 %.05470, %index                 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load = load <2 x i64>, ptr %i.bw, align 8, !tbaa !33
  %wide.load104 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !33
  %i.by = lshr <2 x i64> %wide.load, splat (i64 40)
  %i.bz = lshr <2 x i64> %wide.load104, splat (i64 40)
  %i.ca = and <2 x i64> %i.by, splat (i64 255)
  %i.cb = and <2 x i64> %i.bz, splat (i64 255)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bv ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <2 x i64> %i.ca, ptr %i.cc, align 8, !tbaa !33
  store <2 x i64> %i.cb, ptr %i.cd, align 8, !tbaa !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !6781

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %.loopexit61, label %.lr.ph.preheader134

.lr.ph.preheader134:                              ; preds = %.lr.ph.preheader, %middle.block
  %.165.ph = phi i64 [ %.05470, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph

.preheader60:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.cf = icmp ult i64 %.05470, %i.br
  br i1 %i.cf, label %.lr.ph67.preheader, label %.loopexit61

.lr.ph67.preheader:                               ; preds = %.preheader60
  %i.cg = sub nuw i64 %i.br, %.05470
  %.neg = add i64 %.05470, 1
  %xtraiter = and i64 %i.cg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader
  %i.ch = and i64 %i.bp, 1
  %.not.prol = icmp eq i64 %i.ch, 0
  br i1 %.not.prol, label %.lr.ph67.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph67.prol
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.05470
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !33
  %i.ck = lshr i64 %i.cj, 40
  %i.cl = and i64 %i.ck, 255
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05470
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !33
  br label %.lr.ph67.prol.loopexit.unr-lcssa

.lr.ph67.prol.loopexit.unr-lcssa:                 ; preds = %bb.p, %.lr.ph67.prol
  %i.cn = add nuw i64 %.05470, 1
  br label %.lr.ph67.prol.loopexit

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol.loopexit.unr-lcssa, %.lr.ph67.preheader
  %.266.unr = phi i64 [ %.05470, %.lr.ph67.preheader ], [ %i.cn, %.lr.ph67.prol.loopexit.unr-lcssa ]
  %i.co = icmp eq i64 %i.br, %.neg
  br i1 %i.co, label %.loopexit61, label %.lr.ph67

.lr.ph:                                           ; preds = %.lr.ph.preheader134, %.lr.ph
  %.165 = phi i64 [ %i.cu, %.lr.ph ], [ %.165.ph, %.lr.ph.preheader134 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !33
  %i.cr = lshr i64 %i.cq, 40
  %i.cs = and i64 %i.cr, 255
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.165
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !33
  %i.cu = add nuw i64 %.165, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cu, %i.br
  br i1 %exitcond.not, label %.loopexit61, label %.lr.ph, !llvm.loop !6782

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %bb.s
  %.266 = phi i64 [ %i.dm, %bb.s ], [ %.266.unr, %.lr.ph67.prol.loopexit ] ; 5 uses
  %i.cv = sub nuw i64 %.266, %.05470
  %i.cw = shl nuw i64 1, %i.cv
  %i.cx = and i64 %i.cw, %i.bp
  %.not = icmp eq i64 %i.cx, 0
  br i1 %.not, label %.lr.ph67.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph67
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.266
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !33
  %i.da = lshr i64 %i.cz, 40
  %i.db = and i64 %i.da, 255
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.266
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !33
  br label %.lr.ph67.1

.lr.ph67.1:                                       ; preds = %.lr.ph67, %bb.q
  %i.dd = add nuw i64 %.266, 1                    ; 3 uses
  %i.de = sub nuw i64 %i.dd, %.05470
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.bp
  %.not.1 = icmp eq i64 %i.dg, 0
  br i1 %.not.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph67.1
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dd
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !33
  %i.dj = lshr i64 %i.di, 40
  %i.dk = and i64 %i.dj, 255
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dd
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !33
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph67.1
  %i.dm = add nuw i64 %.266, 2                    ; 2 uses
  %exitcond81.not.1 = icmp eq i64 %i.dm, %i.br
  br i1 %exitcond81.not.1, label %.loopexit61, label %.lr.ph67, !llvm.loop !6783

.loopexit61:                                      ; preds = %.lr.ph, %.lr.ph67.prol.loopexit, %bb.s, %middle.block, %.preheader62, %.preheader60, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.br, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.br, %middle.block ], [ %.05470, %.preheader60 ], [ %.05470, %.preheader62 ], [ %i.br, %.lr.ph67.prol.loopexit ], [ %i.br, %bb.s ], [ %i.br, %.lr.ph ]
  %i.dn = add nuw nsw i64 %.05569, 1              ; 2 uses
  %exitcond82.not = icmp eq i64 %i.dn, %i.aq
  br i1 %exitcond82.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit, !llvm.loop !6780

.lr.ph73:                                         ; preds = %.lr.ph73.preheader131, %.lr.ph73
  %.072 = phi i64 [ %i.dt, %.lr.ph73 ], [ %.072.ph, %.lr.ph73.preheader131 ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.072
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !33
  %i.dq = lshr i64 %i.dp, 40
  %i.dr = and i64 %i.dq, 255
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.072
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !33
  %i.dt = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond85.not = icmp eq i64 %i.dt, %2
  br i1 %exitcond85.not, label %.loopexit, label %.lr.ph73, !llvm.loop !6784

.loopexit:                                        ; preds = %.loopexit61, %.loopexit63.us, %.lr.ph73, %middle.block128, %bb.o, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteLoopImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm8EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvPKT_PT0_mPS8_RNS_12ValidityMaskESI_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !526
  %.not.i = icmp eq ptr %i.a, null
  %.not39 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader33

.preheader33:                                     ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader33
  %i.b = load ptr, ptr %3, align 8, !tbaa !768    ; 2 uses
  %.not.i29 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br i1 %.not.i29, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph, %bb.e
  %.035.us = phi i64 [ %i.w, %bb.e ], [ 0, %.lr.ph ] ; 5 uses
  %i.d = lshr i64 %.035.us, 6                     ; 2 uses
  %i.e = and i64 %.035.us, 63
  %i.f = load ptr, ptr %4, align 8, !tbaa !526
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %i.i = shl nuw i64 1, %i.e                      ; 2 uses
  %i.j = and i64 %i.h, %i.i
  %.not.us = icmp eq i64 %i.j, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.035.us
  %i.l = load i64, ptr %i.k, align 8, !tbaa !33
  %i.m = lshr i64 %i.l, 40
  %i.n = and i64 %i.m, 255
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.035.us
  store i64 %i.n, ptr %i.o, align 8, !tbaa !33
  br label %bb.e

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.p = load ptr, ptr %5, align 8, !tbaa !526    ; 2 uses
  %.not.i30.us = icmp eq ptr %i.p, null
  br i1 %.not.i30.us, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.c, align 8, !tbaa !6664
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.q)
  %.pre.i.us = load ptr, ptr %5, align 8, !tbaa !526
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us: ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %.pre.i.us, %bb.d ], [ %i.p, %bb.c ]
  %i.s = xor i64 %i.i, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.d ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !33
  %i.v = and i64 %i.u, %i.s
  store i64 %i.v, ptr %i.t, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us, %bb.b
  %i.w = add nuw i64 %.035.us, 1                  ; 2 uses
  %exitcond43.not = icmp eq i64 %i.w, %2
  br i1 %exitcond43.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !6785

.preheader:                                       ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph37

.lr.ph37:                                         ; preds = %.preheader
  %i.x = load ptr, ptr %3, align 8, !tbaa !768    ; 4 uses
  %.not.i31 = icmp eq ptr %i.x, null
end_hunk_8
begin_hunk_9_@_ZN6duckdb13UnaryExecutor15ExecuteStandardImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm9EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvS6_S6_mPvbNS_14FunctionErrorsE:bb.a
_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #58
  br label %bb.aw

bb.at:                                            ; preds = %bb.v, %bb.u
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.au:                                            ; preds = %bb.w
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %bb.x, %bb.af
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.av, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75, %bb.au, %bb.at
  %.pn.pn = phi { ptr, i32 } [ %i.cr, %bb.at ], [ %i.cs, %bb.au ], [ %i.ct, %bb.av ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76 ], [ %.pn9.i.i72, %bb.ad ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75 ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %13) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #58
  br label %common.resume

bb.aw:                                            ; preds = %bb.t, %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit69
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteFlatImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm9EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvPKT_PT0_mRNS_12ValidityMaskESH_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !526    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not75 = icmp eq i64 %2, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %.preheader
  %min.iters.check119 = icmp ult i64 %2, 4
  br i1 %min.iters.check119, label %.lr.ph73.preheader131, label %vector.ph120

vector.ph120:                                     ; preds = %.lr.ph73.preheader
  %n.vec122 = and i64 %2, -4                      ; 3 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph120
  %index124 = phi i64 [ 0, %vector.ph120 ], [ %index.next127, %vector.body123 ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index124 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load125 = load <2 x i64>, ptr %i.b, align 8, !tbaa !33
  %wide.load126 = load <2 x i64>, ptr %i.c, align 8, !tbaa !33
  %i.d = lshr <2 x i64> %wide.load125, splat (i64 39)
  %i.e = lshr <2 x i64> %wide.load126, splat (i64 39)
  %i.f = and <2 x i64> %i.d, splat (i64 511)
  %i.g = and <2 x i64> %i.e, splat (i64 511)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index124 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <2 x i64> %i.f, ptr %i.h, align 8, !tbaa !33
  store <2 x i64> %i.g, ptr %i.i, align 8, !tbaa !33
  %index.next127 = add nuw i64 %index124, 4       ; 2 uses
  %i.j = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.j, label %middle.block128, label %vector.body123, !llvm.loop !6789

middle.block128:                                  ; preds = %vector.body123
  %cmp.n129 = icmp eq i64 %2, %n.vec122
  br i1 %cmp.n129, label %.loopexit, label %.lr.ph73.preheader131

.lr.ph73.preheader131:                            ; preds = %.lr.ph73.preheader, %middle.block128
  %.072.ph = phi i64 [ 0, %.lr.ph73.preheader ], [ %n.vec122, %middle.block128 ]
  br label %.lr.ph73

bb.b:                                             ; preds = %bb.a
  br i1 %6, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %4, align 8, !tbaa !526
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = icmp eq ptr %4, %3
  br i1 %i.l, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78   ; 2 uses
  %i.p = load <2 x ptr>, ptr %i.m, align 8, !tbaa !34
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !78   ; 8 uses
  store <2 x ptr> %i.p, ptr %i.k, align 8, !tbaa !34
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.x, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !73
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58, !inline_history !6666
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58, !inline_history !6666
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.aa, %bb.k ], [ %i.ak, %bb.l ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.al, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, !prof !81

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit: ; preds = %bb.c, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !6664
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !6664
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit
  %i.ap = add i64 %2, 63
  %i.aq = lshr i64 %i.ap, 6                       ; 3 uses
  %.not74 = icmp eq i64 %i.aq, 0
  br i1 %.not74, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.o
  %i.ar = load ptr, ptr %3, align 8, !tbaa !526   ; 2 uses
  %.not.i56 = icmp eq ptr %i.ar, null
  br i1 %.not.i56, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us: ; preds = %.lr.ph71, %.loopexit63.us
  %.05470.us = phi i64 [ %.1.lcssa.us, %.loopexit63.us ], [ 0, %.lr.ph71 ] ; 7 uses
  %.05569.us = phi i64 [ %i.bn, %.loopexit63.us ], [ 0, %.lr.ph71 ]
  %i.as = add i64 %.05470.us, 64
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %i.as, i64 %2) ; 5 uses
  %i.au = icmp ult i64 %.05470.us, %i.at
  br i1 %i.au, label %.lr.ph.us.preheader, label %.loopexit63.us

.lr.ph.us.preheader:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %i.av = sub nuw i64 %i.at, %.05470.us           ; 3 uses
  %min.iters.check106 = icmp ult i64 %i.av, 4
  br i1 %min.iters.check106, label %.lr.ph.us.preheader132, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.us.preheader
  %n.vec109 = and i64 %i.av, -4                   ; 3 uses
  %i.aw = add i64 %.05470.us, %n.vec109
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next114, %vector.body110 ] ; 2 uses
  %i.ax = add i64 %.05470.us, %index111           ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load112 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !33
  %wide.load113 = load <2 x i64>, ptr %i.az, align 8, !tbaa !33
  %i.ba = lshr <2 x i64> %wide.load112, splat (i64 39)
  %i.bb = lshr <2 x i64> %wide.load113, splat (i64 39)
  %i.bc = and <2 x i64> %i.ba, splat (i64 511)
  %i.bd = and <2 x i64> %i.bb, splat (i64 511)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ax ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <2 x i64> %i.bc, ptr %i.be, align 8, !tbaa !33
  store <2 x i64> %i.bd, ptr %i.bf, align 8, !tbaa !33
  %index.next114 = add nuw i64 %index111, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.bg, label %middle.block115, label %vector.body110, !llvm.loop !6790

middle.block115:                                  ; preds = %vector.body110
  %cmp.n116 = icmp eq i64 %i.av, %n.vec109
  br i1 %cmp.n116, label %.loopexit63.us, label %.lr.ph.us.preheader132

.lr.ph.us.preheader132:                           ; preds = %.lr.ph.us.preheader, %middle.block115
  %.165.us.ph = phi i64 [ %.05470.us, %.lr.ph.us.preheader ], [ %i.aw, %middle.block115 ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader132, %.lr.ph.us
  %.165.us = phi i64 [ %i.bm, %.lr.ph.us ], [ %.165.us.ph, %.lr.ph.us.preheader132 ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165.us
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !33
  %i.bj = lshr i64 %i.bi, 39
  %i.bk = and i64 %i.bj, 511
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.165.us
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !33
  %i.bm = add nuw i64 %.165.us, 1                 ; 2 uses
  %exitcond83.not = icmp eq i64 %i.bm, %i.at
  br i1 %exitcond83.not, label %.loopexit63.us, label %.lr.ph.us, !llvm.loop !6791

.loopexit63.us:                                   ; preds = %.lr.ph.us, %middle.block115, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %.1.lcssa.us = phi i64 [ %.05470.us, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us ], [ %i.at, %middle.block115 ], [ %i.at, %.lr.ph.us ]
  %i.bn = add nuw nsw i64 %.05569.us, 1           ; 2 uses
  %exitcond84.not = icmp eq i64 %i.bn, %i.aq
  br i1 %exitcond84.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, !llvm.loop !6792

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %.lr.ph71, %.loopexit61
  %.05470 = phi i64 [ %.4, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 17 uses
  %.05569 = phi i64 [ %i.dn, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.05569
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !33 ; 4 uses
  %i.bq = add i64 %.05470, 64
  %i.br = tail call noundef i64 @llvm.umin.i64(i64 %i.bq, i64 %2) ; 12 uses
  switch i64 %i.bp, label %.preheader60 [
    i64 -1, label %.preheader62
    i64 0, label %.loopexit61
  ]

.preheader62:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.bs = icmp ult i64 %.05470, %i.br
  br i1 %i.bs, label %.lr.ph.preheader, label %.loopexit61

.lr.ph.preheader:                                 ; preds = %.preheader62
  %i.bt = sub nuw i64 %i.br, %.05470              ; 3 uses
  %min.iters.check = icmp ult i64 %i.bt, 4
  br i1 %min.iters.check, label %.lr.ph.preheader134, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bt, -4                      ; 3 uses
  %i.bu = add i64 %.05470, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = add i64 %.05470, %index                 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load = load <2 x i64>, ptr %i.bw, align 8, !tbaa !33
  %wide.load104 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !33
  %i.by = lshr <2 x i64> %wide.load, splat (i64 39)
  %i.bz = lshr <2 x i64> %wide.load104, splat (i64 39)
  %i.ca = and <2 x i64> %i.by, splat (i64 511)
  %i.cb = and <2 x i64> %i.bz, splat (i64 511)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bv ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <2 x i64> %i.ca, ptr %i.cc, align 8, !tbaa !33
  store <2 x i64> %i.cb, ptr %i.cd, align 8, !tbaa !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !6793

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %.loopexit61, label %.lr.ph.preheader134

.lr.ph.preheader134:                              ; preds = %.lr.ph.preheader, %middle.block
  %.165.ph = phi i64 [ %.05470, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph

.preheader60:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.cf = icmp ult i64 %.05470, %i.br
  br i1 %i.cf, label %.lr.ph67.preheader, label %.loopexit61

.lr.ph67.preheader:                               ; preds = %.preheader60
  %i.cg = sub nuw i64 %i.br, %.05470
  %.neg = add i64 %.05470, 1
  %xtraiter = and i64 %i.cg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader
  %i.ch = and i64 %i.bp, 1
  %.not.prol = icmp eq i64 %i.ch, 0
  br i1 %.not.prol, label %.lr.ph67.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph67.prol
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.05470
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !33
  %i.ck = lshr i64 %i.cj, 39
  %i.cl = and i64 %i.ck, 511
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05470
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !33
  br label %.lr.ph67.prol.loopexit.unr-lcssa

.lr.ph67.prol.loopexit.unr-lcssa:                 ; preds = %bb.p, %.lr.ph67.prol
  %i.cn = add nuw i64 %.05470, 1
  br label %.lr.ph67.prol.loopexit

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol.loopexit.unr-lcssa, %.lr.ph67.preheader
  %.266.unr = phi i64 [ %.05470, %.lr.ph67.preheader ], [ %i.cn, %.lr.ph67.prol.loopexit.unr-lcssa ]
  %i.co = icmp eq i64 %i.br, %.neg
  br i1 %i.co, label %.loopexit61, label %.lr.ph67

.lr.ph:                                           ; preds = %.lr.ph.preheader134, %.lr.ph
  %.165 = phi i64 [ %i.cu, %.lr.ph ], [ %.165.ph, %.lr.ph.preheader134 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !33
  %i.cr = lshr i64 %i.cq, 39
  %i.cs = and i64 %i.cr, 511
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.165
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !33
  %i.cu = add nuw i64 %.165, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cu, %i.br
  br i1 %exitcond.not, label %.loopexit61, label %.lr.ph, !llvm.loop !6794

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %bb.s
  %.266 = phi i64 [ %i.dm, %bb.s ], [ %.266.unr, %.lr.ph67.prol.loopexit ] ; 5 uses
  %i.cv = sub nuw i64 %.266, %.05470
  %i.cw = shl nuw i64 1, %i.cv
  %i.cx = and i64 %i.cw, %i.bp
  %.not = icmp eq i64 %i.cx, 0
  br i1 %.not, label %.lr.ph67.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph67
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.266
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !33
  %i.da = lshr i64 %i.cz, 39
  %i.db = and i64 %i.da, 511
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.266
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !33
  br label %.lr.ph67.1

.lr.ph67.1:                                       ; preds = %.lr.ph67, %bb.q
  %i.dd = add nuw i64 %.266, 1                    ; 3 uses
  %i.de = sub nuw i64 %i.dd, %.05470
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.bp
  %.not.1 = icmp eq i64 %i.dg, 0
  br i1 %.not.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph67.1
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dd
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !33
  %i.dj = lshr i64 %i.di, 39
  %i.dk = and i64 %i.dj, 511
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dd
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !33
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph67.1
  %i.dm = add nuw i64 %.266, 2                    ; 2 uses
  %exitcond81.not.1 = icmp eq i64 %i.dm, %i.br
  br i1 %exitcond81.not.1, label %.loopexit61, label %.lr.ph67, !llvm.loop !6795

.loopexit61:                                      ; preds = %.lr.ph, %.lr.ph67.prol.loopexit, %bb.s, %middle.block, %.preheader62, %.preheader60, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.br, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.br, %middle.block ], [ %.05470, %.preheader60 ], [ %.05470, %.preheader62 ], [ %i.br, %.lr.ph67.prol.loopexit ], [ %i.br, %bb.s ], [ %i.br, %.lr.ph ]
  %i.dn = add nuw nsw i64 %.05569, 1              ; 2 uses
  %exitcond82.not = icmp eq i64 %i.dn, %i.aq
  br i1 %exitcond82.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit, !llvm.loop !6792

.lr.ph73:                                         ; preds = %.lr.ph73.preheader131, %.lr.ph73
  %.072 = phi i64 [ %i.dt, %.lr.ph73 ], [ %.072.ph, %.lr.ph73.preheader131 ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.072
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !33
  %i.dq = lshr i64 %i.dp, 39
  %i.dr = and i64 %i.dq, 511
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.072
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !33
  %i.dt = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond85.not = icmp eq i64 %i.dt, %2
  br i1 %exitcond85.not, label %.loopexit, label %.lr.ph73, !llvm.loop !6796

.loopexit:                                        ; preds = %.loopexit61, %.loopexit63.us, %.lr.ph73, %middle.block128, %bb.o, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteLoopImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm9EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvPKT_PT0_mPS8_RNS_12ValidityMaskESI_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !526
  %.not.i = icmp eq ptr %i.a, null
  %.not39 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader33

.preheader33:                                     ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader33
  %i.b = load ptr, ptr %3, align 8, !tbaa !768    ; 2 uses
  %.not.i29 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br i1 %.not.i29, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph, %bb.e
  %.035.us = phi i64 [ %i.w, %bb.e ], [ 0, %.lr.ph ] ; 5 uses
  %i.d = lshr i64 %.035.us, 6                     ; 2 uses
  %i.e = and i64 %.035.us, 63
  %i.f = load ptr, ptr %4, align 8, !tbaa !526
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %i.i = shl nuw i64 1, %i.e                      ; 2 uses
  %i.j = and i64 %i.h, %i.i
  %.not.us = icmp eq i64 %i.j, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.035.us
  %i.l = load i64, ptr %i.k, align 8, !tbaa !33
  %i.m = lshr i64 %i.l, 39
  %i.n = and i64 %i.m, 511
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.035.us
  store i64 %i.n, ptr %i.o, align 8, !tbaa !33
  br label %bb.e

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.p = load ptr, ptr %5, align 8, !tbaa !526    ; 2 uses
  %.not.i30.us = icmp eq ptr %i.p, null
  br i1 %.not.i30.us, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.c, align 8, !tbaa !6664
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.q)
  %.pre.i.us = load ptr, ptr %5, align 8, !tbaa !526
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us: ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %.pre.i.us, %bb.d ], [ %i.p, %bb.c ]
  %i.s = xor i64 %i.i, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.d ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !33
  %i.v = and i64 %i.u, %i.s
  store i64 %i.v, ptr %i.t, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us, %bb.b
  %i.w = add nuw i64 %.035.us, 1                  ; 2 uses
  %exitcond43.not = icmp eq i64 %i.w, %2
  br i1 %exitcond43.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !6797

.preheader:                                       ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph37

.lr.ph37:                                         ; preds = %.preheader
  %i.x = load ptr, ptr %3, align 8, !tbaa !768    ; 4 uses
  %.not.i31 = icmp eq ptr %i.x, null
end_hunk_9
begin_hunk_10_@_ZN6duckdb13UnaryExecutor15ExecuteStandardImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm10EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvS6_S6_mPvbNS_14FunctionErrorsE:bb.a
_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #58
  br label %bb.aw

bb.at:                                            ; preds = %bb.v, %bb.u
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.au:                                            ; preds = %bb.w
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %bb.x, %bb.af
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.av, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75, %bb.au, %bb.at
  %.pn.pn = phi { ptr, i32 } [ %i.cr, %bb.at ], [ %i.cs, %bb.au ], [ %i.ct, %bb.av ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76 ], [ %.pn9.i.i72, %bb.ad ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75 ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %13) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #58
  br label %common.resume

bb.aw:                                            ; preds = %bb.t, %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit69
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteFlatImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm10EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvPKT_PT0_mRNS_12ValidityMaskESH_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !526    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not75 = icmp eq i64 %2, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %.preheader
  %min.iters.check119 = icmp ult i64 %2, 4
  br i1 %min.iters.check119, label %.lr.ph73.preheader131, label %vector.ph120

vector.ph120:                                     ; preds = %.lr.ph73.preheader
  %n.vec122 = and i64 %2, -4                      ; 3 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph120
  %index124 = phi i64 [ 0, %vector.ph120 ], [ %index.next127, %vector.body123 ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index124 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load125 = load <2 x i64>, ptr %i.b, align 8, !tbaa !33
  %wide.load126 = load <2 x i64>, ptr %i.c, align 8, !tbaa !33
  %i.d = lshr <2 x i64> %wide.load125, splat (i64 38)
  %i.e = lshr <2 x i64> %wide.load126, splat (i64 38)
  %i.f = and <2 x i64> %i.d, splat (i64 1023)
  %i.g = and <2 x i64> %i.e, splat (i64 1023)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index124 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <2 x i64> %i.f, ptr %i.h, align 8, !tbaa !33
  store <2 x i64> %i.g, ptr %i.i, align 8, !tbaa !33
  %index.next127 = add nuw i64 %index124, 4       ; 2 uses
  %i.j = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.j, label %middle.block128, label %vector.body123, !llvm.loop !6801

middle.block128:                                  ; preds = %vector.body123
  %cmp.n129 = icmp eq i64 %2, %n.vec122
  br i1 %cmp.n129, label %.loopexit, label %.lr.ph73.preheader131

.lr.ph73.preheader131:                            ; preds = %.lr.ph73.preheader, %middle.block128
  %.072.ph = phi i64 [ 0, %.lr.ph73.preheader ], [ %n.vec122, %middle.block128 ]
  br label %.lr.ph73

bb.b:                                             ; preds = %bb.a
  br i1 %6, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %4, align 8, !tbaa !526
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = icmp eq ptr %4, %3
  br i1 %i.l, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78   ; 2 uses
  %i.p = load <2 x ptr>, ptr %i.m, align 8, !tbaa !34
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !78   ; 8 uses
  store <2 x ptr> %i.p, ptr %i.k, align 8, !tbaa !34
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.x, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !73
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58, !inline_history !6666
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58, !inline_history !6666
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.aa, %bb.k ], [ %i.ak, %bb.l ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.al, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, !prof !81

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit: ; preds = %bb.c, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !6664
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !6664
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit
  %i.ap = add i64 %2, 63
  %i.aq = lshr i64 %i.ap, 6                       ; 3 uses
  %.not74 = icmp eq i64 %i.aq, 0
  br i1 %.not74, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.o
  %i.ar = load ptr, ptr %3, align 8, !tbaa !526   ; 2 uses
  %.not.i56 = icmp eq ptr %i.ar, null
  br i1 %.not.i56, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us: ; preds = %.lr.ph71, %.loopexit63.us
  %.05470.us = phi i64 [ %.1.lcssa.us, %.loopexit63.us ], [ 0, %.lr.ph71 ] ; 7 uses
  %.05569.us = phi i64 [ %i.bn, %.loopexit63.us ], [ 0, %.lr.ph71 ]
  %i.as = add i64 %.05470.us, 64
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %i.as, i64 %2) ; 5 uses
  %i.au = icmp ult i64 %.05470.us, %i.at
  br i1 %i.au, label %.lr.ph.us.preheader, label %.loopexit63.us

.lr.ph.us.preheader:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %i.av = sub nuw i64 %i.at, %.05470.us           ; 3 uses
  %min.iters.check106 = icmp ult i64 %i.av, 4
  br i1 %min.iters.check106, label %.lr.ph.us.preheader132, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.us.preheader
  %n.vec109 = and i64 %i.av, -4                   ; 3 uses
  %i.aw = add i64 %.05470.us, %n.vec109
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next114, %vector.body110 ] ; 2 uses
  %i.ax = add i64 %.05470.us, %index111           ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load112 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !33
  %wide.load113 = load <2 x i64>, ptr %i.az, align 8, !tbaa !33
  %i.ba = lshr <2 x i64> %wide.load112, splat (i64 38)
  %i.bb = lshr <2 x i64> %wide.load113, splat (i64 38)
  %i.bc = and <2 x i64> %i.ba, splat (i64 1023)
  %i.bd = and <2 x i64> %i.bb, splat (i64 1023)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ax ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <2 x i64> %i.bc, ptr %i.be, align 8, !tbaa !33
  store <2 x i64> %i.bd, ptr %i.bf, align 8, !tbaa !33
  %index.next114 = add nuw i64 %index111, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.bg, label %middle.block115, label %vector.body110, !llvm.loop !6802

middle.block115:                                  ; preds = %vector.body110
  %cmp.n116 = icmp eq i64 %i.av, %n.vec109
  br i1 %cmp.n116, label %.loopexit63.us, label %.lr.ph.us.preheader132

.lr.ph.us.preheader132:                           ; preds = %.lr.ph.us.preheader, %middle.block115
  %.165.us.ph = phi i64 [ %.05470.us, %.lr.ph.us.preheader ], [ %i.aw, %middle.block115 ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader132, %.lr.ph.us
  %.165.us = phi i64 [ %i.bm, %.lr.ph.us ], [ %.165.us.ph, %.lr.ph.us.preheader132 ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165.us
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !33
  %i.bj = lshr i64 %i.bi, 38
  %i.bk = and i64 %i.bj, 1023
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.165.us
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !33
  %i.bm = add nuw i64 %.165.us, 1                 ; 2 uses
  %exitcond83.not = icmp eq i64 %i.bm, %i.at
  br i1 %exitcond83.not, label %.loopexit63.us, label %.lr.ph.us, !llvm.loop !6803

.loopexit63.us:                                   ; preds = %.lr.ph.us, %middle.block115, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %.1.lcssa.us = phi i64 [ %.05470.us, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us ], [ %i.at, %middle.block115 ], [ %i.at, %.lr.ph.us ]
  %i.bn = add nuw nsw i64 %.05569.us, 1           ; 2 uses
  %exitcond84.not = icmp eq i64 %i.bn, %i.aq
  br i1 %exitcond84.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, !llvm.loop !6804

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %.lr.ph71, %.loopexit61
  %.05470 = phi i64 [ %.4, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 17 uses
  %.05569 = phi i64 [ %i.dn, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.05569
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !33 ; 4 uses
  %i.bq = add i64 %.05470, 64
  %i.br = tail call noundef i64 @llvm.umin.i64(i64 %i.bq, i64 %2) ; 12 uses
  switch i64 %i.bp, label %.preheader60 [
    i64 -1, label %.preheader62
    i64 0, label %.loopexit61
  ]

.preheader62:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.bs = icmp ult i64 %.05470, %i.br
  br i1 %i.bs, label %.lr.ph.preheader, label %.loopexit61

.lr.ph.preheader:                                 ; preds = %.preheader62
  %i.bt = sub nuw i64 %i.br, %.05470              ; 3 uses
  %min.iters.check = icmp ult i64 %i.bt, 4
  br i1 %min.iters.check, label %.lr.ph.preheader134, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bt, -4                      ; 3 uses
  %i.bu = add i64 %.05470, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = add i64 %.05470, %index                 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load = load <2 x i64>, ptr %i.bw, align 8, !tbaa !33
  %wide.load104 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !33
  %i.by = lshr <2 x i64> %wide.load, splat (i64 38)
  %i.bz = lshr <2 x i64> %wide.load104, splat (i64 38)
  %i.ca = and <2 x i64> %i.by, splat (i64 1023)
  %i.cb = and <2 x i64> %i.bz, splat (i64 1023)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bv ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <2 x i64> %i.ca, ptr %i.cc, align 8, !tbaa !33
  store <2 x i64> %i.cb, ptr %i.cd, align 8, !tbaa !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !6805

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %.loopexit61, label %.lr.ph.preheader134

.lr.ph.preheader134:                              ; preds = %.lr.ph.preheader, %middle.block
  %.165.ph = phi i64 [ %.05470, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph

.preheader60:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.cf = icmp ult i64 %.05470, %i.br
  br i1 %i.cf, label %.lr.ph67.preheader, label %.loopexit61

.lr.ph67.preheader:                               ; preds = %.preheader60
  %i.cg = sub nuw i64 %i.br, %.05470
  %.neg = add i64 %.05470, 1
  %xtraiter = and i64 %i.cg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader
  %i.ch = and i64 %i.bp, 1
  %.not.prol = icmp eq i64 %i.ch, 0
  br i1 %.not.prol, label %.lr.ph67.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph67.prol
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.05470
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !33
  %i.ck = lshr i64 %i.cj, 38
  %i.cl = and i64 %i.ck, 1023
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05470
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !33
  br label %.lr.ph67.prol.loopexit.unr-lcssa

.lr.ph67.prol.loopexit.unr-lcssa:                 ; preds = %bb.p, %.lr.ph67.prol
  %i.cn = add nuw i64 %.05470, 1
  br label %.lr.ph67.prol.loopexit

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol.loopexit.unr-lcssa, %.lr.ph67.preheader
  %.266.unr = phi i64 [ %.05470, %.lr.ph67.preheader ], [ %i.cn, %.lr.ph67.prol.loopexit.unr-lcssa ]
  %i.co = icmp eq i64 %i.br, %.neg
  br i1 %i.co, label %.loopexit61, label %.lr.ph67

.lr.ph:                                           ; preds = %.lr.ph.preheader134, %.lr.ph
  %.165 = phi i64 [ %i.cu, %.lr.ph ], [ %.165.ph, %.lr.ph.preheader134 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !33
  %i.cr = lshr i64 %i.cq, 38
  %i.cs = and i64 %i.cr, 1023
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.165
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !33
  %i.cu = add nuw i64 %.165, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cu, %i.br
  br i1 %exitcond.not, label %.loopexit61, label %.lr.ph, !llvm.loop !6806

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %bb.s
  %.266 = phi i64 [ %i.dm, %bb.s ], [ %.266.unr, %.lr.ph67.prol.loopexit ] ; 5 uses
  %i.cv = sub nuw i64 %.266, %.05470
  %i.cw = shl nuw i64 1, %i.cv
  %i.cx = and i64 %i.cw, %i.bp
  %.not = icmp eq i64 %i.cx, 0
  br i1 %.not, label %.lr.ph67.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph67
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.266
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !33
  %i.da = lshr i64 %i.cz, 38
  %i.db = and i64 %i.da, 1023
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.266
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !33
  br label %.lr.ph67.1

.lr.ph67.1:                                       ; preds = %.lr.ph67, %bb.q
  %i.dd = add nuw i64 %.266, 1                    ; 3 uses
  %i.de = sub nuw i64 %i.dd, %.05470
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.bp
  %.not.1 = icmp eq i64 %i.dg, 0
  br i1 %.not.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph67.1
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dd
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !33
  %i.dj = lshr i64 %i.di, 38
  %i.dk = and i64 %i.dj, 1023
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dd
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !33
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph67.1
  %i.dm = add nuw i64 %.266, 2                    ; 2 uses
  %exitcond81.not.1 = icmp eq i64 %i.dm, %i.br
  br i1 %exitcond81.not.1, label %.loopexit61, label %.lr.ph67, !llvm.loop !6807

.loopexit61:                                      ; preds = %.lr.ph, %.lr.ph67.prol.loopexit, %bb.s, %middle.block, %.preheader62, %.preheader60, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.br, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.br, %middle.block ], [ %.05470, %.preheader60 ], [ %.05470, %.preheader62 ], [ %i.br, %.lr.ph67.prol.loopexit ], [ %i.br, %bb.s ], [ %i.br, %.lr.ph ]
  %i.dn = add nuw nsw i64 %.05569, 1              ; 2 uses
  %exitcond82.not = icmp eq i64 %i.dn, %i.aq
  br i1 %exitcond82.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit, !llvm.loop !6804

.lr.ph73:                                         ; preds = %.lr.ph73.preheader131, %.lr.ph73
  %.072 = phi i64 [ %i.dt, %.lr.ph73 ], [ %.072.ph, %.lr.ph73.preheader131 ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.072
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !33
  %i.dq = lshr i64 %i.dp, 38
  %i.dr = and i64 %i.dq, 1023
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.072
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !33
  %i.dt = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond85.not = icmp eq i64 %i.dt, %2
  br i1 %exitcond85.not, label %.loopexit, label %.lr.ph73, !llvm.loop !6808

.loopexit:                                        ; preds = %.loopexit61, %.loopexit63.us, %.lr.ph73, %middle.block128, %bb.o, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteLoopImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm10EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvPKT_PT0_mPS8_RNS_12ValidityMaskESI_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !526
  %.not.i = icmp eq ptr %i.a, null
  %.not39 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader33

.preheader33:                                     ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader33
  %i.b = load ptr, ptr %3, align 8, !tbaa !768    ; 2 uses
  %.not.i29 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br i1 %.not.i29, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph, %bb.e
  %.035.us = phi i64 [ %i.w, %bb.e ], [ 0, %.lr.ph ] ; 5 uses
  %i.d = lshr i64 %.035.us, 6                     ; 2 uses
  %i.e = and i64 %.035.us, 63
  %i.f = load ptr, ptr %4, align 8, !tbaa !526
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %i.i = shl nuw i64 1, %i.e                      ; 2 uses
  %i.j = and i64 %i.h, %i.i
  %.not.us = icmp eq i64 %i.j, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.035.us
  %i.l = load i64, ptr %i.k, align 8, !tbaa !33
  %i.m = lshr i64 %i.l, 38
  %i.n = and i64 %i.m, 1023
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.035.us
  store i64 %i.n, ptr %i.o, align 8, !tbaa !33
  br label %bb.e

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.p = load ptr, ptr %5, align 8, !tbaa !526    ; 2 uses
  %.not.i30.us = icmp eq ptr %i.p, null
  br i1 %.not.i30.us, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.c, align 8, !tbaa !6664
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.q)
  %.pre.i.us = load ptr, ptr %5, align 8, !tbaa !526
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us: ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %.pre.i.us, %bb.d ], [ %i.p, %bb.c ]
  %i.s = xor i64 %i.i, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.d ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !33
  %i.v = and i64 %i.u, %i.s
  store i64 %i.v, ptr %i.t, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us, %bb.b
  %i.w = add nuw i64 %.035.us, 1                  ; 2 uses
  %exitcond43.not = icmp eq i64 %i.w, %2
  br i1 %exitcond43.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !6809

.preheader:                                       ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph37

.lr.ph37:                                         ; preds = %.preheader
  %i.x = load ptr, ptr %3, align 8, !tbaa !768    ; 4 uses
  %.not.i31 = icmp eq ptr %i.x, null
end_hunk_10
begin_hunk_11_@_ZN6duckdb13UnaryExecutor15ExecuteStandardImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm11EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvS6_S6_mPvbNS_14FunctionErrorsE:bb.a
_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #58
  br label %bb.aw

bb.at:                                            ; preds = %bb.v, %bb.u
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.au:                                            ; preds = %bb.w
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %bb.x, %bb.af
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.av, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75, %bb.au, %bb.at
  %.pn.pn = phi { ptr, i32 } [ %i.cr, %bb.at ], [ %i.cs, %bb.au ], [ %i.ct, %bb.av ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76 ], [ %.pn9.i.i72, %bb.ad ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75 ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %13) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #58
  br label %common.resume

bb.aw:                                            ; preds = %bb.t, %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit69
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteFlatImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm11EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvPKT_PT0_mRNS_12ValidityMaskESH_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !526    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not75 = icmp eq i64 %2, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %.preheader
  %min.iters.check119 = icmp ult i64 %2, 4
  br i1 %min.iters.check119, label %.lr.ph73.preheader131, label %vector.ph120

vector.ph120:                                     ; preds = %.lr.ph73.preheader
  %n.vec122 = and i64 %2, -4                      ; 3 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph120
  %index124 = phi i64 [ 0, %vector.ph120 ], [ %index.next127, %vector.body123 ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index124 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load125 = load <2 x i64>, ptr %i.b, align 8, !tbaa !33
  %wide.load126 = load <2 x i64>, ptr %i.c, align 8, !tbaa !33
  %i.d = lshr <2 x i64> %wide.load125, splat (i64 37)
  %i.e = lshr <2 x i64> %wide.load126, splat (i64 37)
  %i.f = and <2 x i64> %i.d, splat (i64 2047)
  %i.g = and <2 x i64> %i.e, splat (i64 2047)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index124 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <2 x i64> %i.f, ptr %i.h, align 8, !tbaa !33
  store <2 x i64> %i.g, ptr %i.i, align 8, !tbaa !33
  %index.next127 = add nuw i64 %index124, 4       ; 2 uses
  %i.j = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.j, label %middle.block128, label %vector.body123, !llvm.loop !6813

middle.block128:                                  ; preds = %vector.body123
  %cmp.n129 = icmp eq i64 %2, %n.vec122
  br i1 %cmp.n129, label %.loopexit, label %.lr.ph73.preheader131

.lr.ph73.preheader131:                            ; preds = %.lr.ph73.preheader, %middle.block128
  %.072.ph = phi i64 [ 0, %.lr.ph73.preheader ], [ %n.vec122, %middle.block128 ]
  br label %.lr.ph73

bb.b:                                             ; preds = %bb.a
  br i1 %6, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %4, align 8, !tbaa !526
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = icmp eq ptr %4, %3
  br i1 %i.l, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78   ; 2 uses
  %i.p = load <2 x ptr>, ptr %i.m, align 8, !tbaa !34
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !78   ; 8 uses
  store <2 x ptr> %i.p, ptr %i.k, align 8, !tbaa !34
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.x, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !73
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58, !inline_history !6666
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58, !inline_history !6666
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.aa, %bb.k ], [ %i.ak, %bb.l ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.al, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, !prof !81

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit: ; preds = %bb.c, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !6664
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !6664
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit
  %i.ap = add i64 %2, 63
  %i.aq = lshr i64 %i.ap, 6                       ; 3 uses
  %.not74 = icmp eq i64 %i.aq, 0
  br i1 %.not74, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.o
  %i.ar = load ptr, ptr %3, align 8, !tbaa !526   ; 2 uses
  %.not.i56 = icmp eq ptr %i.ar, null
  br i1 %.not.i56, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us: ; preds = %.lr.ph71, %.loopexit63.us
  %.05470.us = phi i64 [ %.1.lcssa.us, %.loopexit63.us ], [ 0, %.lr.ph71 ] ; 7 uses
  %.05569.us = phi i64 [ %i.bn, %.loopexit63.us ], [ 0, %.lr.ph71 ]
  %i.as = add i64 %.05470.us, 64
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %i.as, i64 %2) ; 5 uses
  %i.au = icmp ult i64 %.05470.us, %i.at
  br i1 %i.au, label %.lr.ph.us.preheader, label %.loopexit63.us

.lr.ph.us.preheader:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %i.av = sub nuw i64 %i.at, %.05470.us           ; 3 uses
  %min.iters.check106 = icmp ult i64 %i.av, 4
  br i1 %min.iters.check106, label %.lr.ph.us.preheader132, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.us.preheader
  %n.vec109 = and i64 %i.av, -4                   ; 3 uses
  %i.aw = add i64 %.05470.us, %n.vec109
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next114, %vector.body110 ] ; 2 uses
  %i.ax = add i64 %.05470.us, %index111           ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load112 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !33
  %wide.load113 = load <2 x i64>, ptr %i.az, align 8, !tbaa !33
  %i.ba = lshr <2 x i64> %wide.load112, splat (i64 37)
  %i.bb = lshr <2 x i64> %wide.load113, splat (i64 37)
  %i.bc = and <2 x i64> %i.ba, splat (i64 2047)
  %i.bd = and <2 x i64> %i.bb, splat (i64 2047)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ax ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <2 x i64> %i.bc, ptr %i.be, align 8, !tbaa !33
  store <2 x i64> %i.bd, ptr %i.bf, align 8, !tbaa !33
  %index.next114 = add nuw i64 %index111, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.bg, label %middle.block115, label %vector.body110, !llvm.loop !6814

middle.block115:                                  ; preds = %vector.body110
  %cmp.n116 = icmp eq i64 %i.av, %n.vec109
  br i1 %cmp.n116, label %.loopexit63.us, label %.lr.ph.us.preheader132

.lr.ph.us.preheader132:                           ; preds = %.lr.ph.us.preheader, %middle.block115
  %.165.us.ph = phi i64 [ %.05470.us, %.lr.ph.us.preheader ], [ %i.aw, %middle.block115 ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader132, %.lr.ph.us
  %.165.us = phi i64 [ %i.bm, %.lr.ph.us ], [ %.165.us.ph, %.lr.ph.us.preheader132 ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165.us
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !33
  %i.bj = lshr i64 %i.bi, 37
  %i.bk = and i64 %i.bj, 2047
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.165.us
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !33
  %i.bm = add nuw i64 %.165.us, 1                 ; 2 uses
  %exitcond83.not = icmp eq i64 %i.bm, %i.at
  br i1 %exitcond83.not, label %.loopexit63.us, label %.lr.ph.us, !llvm.loop !6815

.loopexit63.us:                                   ; preds = %.lr.ph.us, %middle.block115, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %.1.lcssa.us = phi i64 [ %.05470.us, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us ], [ %i.at, %middle.block115 ], [ %i.at, %.lr.ph.us ]
  %i.bn = add nuw nsw i64 %.05569.us, 1           ; 2 uses
  %exitcond84.not = icmp eq i64 %i.bn, %i.aq
  br i1 %exitcond84.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, !llvm.loop !6816

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %.lr.ph71, %.loopexit61
  %.05470 = phi i64 [ %.4, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 17 uses
  %.05569 = phi i64 [ %i.dn, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.05569
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !33 ; 4 uses
  %i.bq = add i64 %.05470, 64
  %i.br = tail call noundef i64 @llvm.umin.i64(i64 %i.bq, i64 %2) ; 12 uses
  switch i64 %i.bp, label %.preheader60 [
    i64 -1, label %.preheader62
    i64 0, label %.loopexit61
  ]

.preheader62:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.bs = icmp ult i64 %.05470, %i.br
  br i1 %i.bs, label %.lr.ph.preheader, label %.loopexit61

.lr.ph.preheader:                                 ; preds = %.preheader62
  %i.bt = sub nuw i64 %i.br, %.05470              ; 3 uses
  %min.iters.check = icmp ult i64 %i.bt, 4
  br i1 %min.iters.check, label %.lr.ph.preheader134, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bt, -4                      ; 3 uses
  %i.bu = add i64 %.05470, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = add i64 %.05470, %index                 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load = load <2 x i64>, ptr %i.bw, align 8, !tbaa !33
  %wide.load104 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !33
  %i.by = lshr <2 x i64> %wide.load, splat (i64 37)
  %i.bz = lshr <2 x i64> %wide.load104, splat (i64 37)
  %i.ca = and <2 x i64> %i.by, splat (i64 2047)
  %i.cb = and <2 x i64> %i.bz, splat (i64 2047)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bv ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <2 x i64> %i.ca, ptr %i.cc, align 8, !tbaa !33
  store <2 x i64> %i.cb, ptr %i.cd, align 8, !tbaa !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !6817

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %.loopexit61, label %.lr.ph.preheader134

.lr.ph.preheader134:                              ; preds = %.lr.ph.preheader, %middle.block
  %.165.ph = phi i64 [ %.05470, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph

.preheader60:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.cf = icmp ult i64 %.05470, %i.br
  br i1 %i.cf, label %.lr.ph67.preheader, label %.loopexit61

.lr.ph67.preheader:                               ; preds = %.preheader60
  %i.cg = sub nuw i64 %i.br, %.05470
  %.neg = add i64 %.05470, 1
  %xtraiter = and i64 %i.cg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader
  %i.ch = and i64 %i.bp, 1
  %.not.prol = icmp eq i64 %i.ch, 0
  br i1 %.not.prol, label %.lr.ph67.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph67.prol
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.05470
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !33
  %i.ck = lshr i64 %i.cj, 37
  %i.cl = and i64 %i.ck, 2047
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05470
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !33
  br label %.lr.ph67.prol.loopexit.unr-lcssa

.lr.ph67.prol.loopexit.unr-lcssa:                 ; preds = %bb.p, %.lr.ph67.prol
  %i.cn = add nuw i64 %.05470, 1
  br label %.lr.ph67.prol.loopexit

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol.loopexit.unr-lcssa, %.lr.ph67.preheader
  %.266.unr = phi i64 [ %.05470, %.lr.ph67.preheader ], [ %i.cn, %.lr.ph67.prol.loopexit.unr-lcssa ]
  %i.co = icmp eq i64 %i.br, %.neg
  br i1 %i.co, label %.loopexit61, label %.lr.ph67

.lr.ph:                                           ; preds = %.lr.ph.preheader134, %.lr.ph
  %.165 = phi i64 [ %i.cu, %.lr.ph ], [ %.165.ph, %.lr.ph.preheader134 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !33
  %i.cr = lshr i64 %i.cq, 37
  %i.cs = and i64 %i.cr, 2047
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.165
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !33
  %i.cu = add nuw i64 %.165, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cu, %i.br
  br i1 %exitcond.not, label %.loopexit61, label %.lr.ph, !llvm.loop !6818

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %bb.s
  %.266 = phi i64 [ %i.dm, %bb.s ], [ %.266.unr, %.lr.ph67.prol.loopexit ] ; 5 uses
  %i.cv = sub nuw i64 %.266, %.05470
  %i.cw = shl nuw i64 1, %i.cv
  %i.cx = and i64 %i.cw, %i.bp
  %.not = icmp eq i64 %i.cx, 0
  br i1 %.not, label %.lr.ph67.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph67
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.266
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !33
  %i.da = lshr i64 %i.cz, 37
  %i.db = and i64 %i.da, 2047
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.266
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !33
  br label %.lr.ph67.1

.lr.ph67.1:                                       ; preds = %.lr.ph67, %bb.q
  %i.dd = add nuw i64 %.266, 1                    ; 3 uses
  %i.de = sub nuw i64 %i.dd, %.05470
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.bp
  %.not.1 = icmp eq i64 %i.dg, 0
  br i1 %.not.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph67.1
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dd
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !33
  %i.dj = lshr i64 %i.di, 37
  %i.dk = and i64 %i.dj, 2047
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dd
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !33
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph67.1
  %i.dm = add nuw i64 %.266, 2                    ; 2 uses
  %exitcond81.not.1 = icmp eq i64 %i.dm, %i.br
  br i1 %exitcond81.not.1, label %.loopexit61, label %.lr.ph67, !llvm.loop !6819

.loopexit61:                                      ; preds = %.lr.ph, %.lr.ph67.prol.loopexit, %bb.s, %middle.block, %.preheader62, %.preheader60, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.br, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.br, %middle.block ], [ %.05470, %.preheader60 ], [ %.05470, %.preheader62 ], [ %i.br, %.lr.ph67.prol.loopexit ], [ %i.br, %bb.s ], [ %i.br, %.lr.ph ]
  %i.dn = add nuw nsw i64 %.05569, 1              ; 2 uses
  %exitcond82.not = icmp eq i64 %i.dn, %i.aq
  br i1 %exitcond82.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit, !llvm.loop !6816

.lr.ph73:                                         ; preds = %.lr.ph73.preheader131, %.lr.ph73
  %.072 = phi i64 [ %i.dt, %.lr.ph73 ], [ %.072.ph, %.lr.ph73.preheader131 ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.072
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !33
  %i.dq = lshr i64 %i.dp, 37
  %i.dr = and i64 %i.dq, 2047
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.072
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !33
  %i.dt = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond85.not = icmp eq i64 %i.dt, %2
  br i1 %exitcond85.not, label %.loopexit, label %.lr.ph73, !llvm.loop !6820

.loopexit:                                        ; preds = %.loopexit61, %.loopexit63.us, %.lr.ph73, %middle.block128, %bb.o, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteLoopImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm11EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvPKT_PT0_mPS8_RNS_12ValidityMaskESI_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !526
  %.not.i = icmp eq ptr %i.a, null
  %.not39 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader33

.preheader33:                                     ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader33
  %i.b = load ptr, ptr %3, align 8, !tbaa !768    ; 2 uses
  %.not.i29 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br i1 %.not.i29, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph, %bb.e
  %.035.us = phi i64 [ %i.w, %bb.e ], [ 0, %.lr.ph ] ; 5 uses
  %i.d = lshr i64 %.035.us, 6                     ; 2 uses
  %i.e = and i64 %.035.us, 63
  %i.f = load ptr, ptr %4, align 8, !tbaa !526
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %i.i = shl nuw i64 1, %i.e                      ; 2 uses
  %i.j = and i64 %i.h, %i.i
  %.not.us = icmp eq i64 %i.j, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.035.us
  %i.l = load i64, ptr %i.k, align 8, !tbaa !33
  %i.m = lshr i64 %i.l, 37
  %i.n = and i64 %i.m, 2047
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.035.us
  store i64 %i.n, ptr %i.o, align 8, !tbaa !33
  br label %bb.e

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.p = load ptr, ptr %5, align 8, !tbaa !526    ; 2 uses
  %.not.i30.us = icmp eq ptr %i.p, null
  br i1 %.not.i30.us, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.c, align 8, !tbaa !6664
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.q)
  %.pre.i.us = load ptr, ptr %5, align 8, !tbaa !526
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us: ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %.pre.i.us, %bb.d ], [ %i.p, %bb.c ]
  %i.s = xor i64 %i.i, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.d ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !33
  %i.v = and i64 %i.u, %i.s
  store i64 %i.v, ptr %i.t, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us, %bb.b
  %i.w = add nuw i64 %.035.us, 1                  ; 2 uses
  %exitcond43.not = icmp eq i64 %i.w, %2
  br i1 %exitcond43.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !6821

.preheader:                                       ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph37

.lr.ph37:                                         ; preds = %.preheader
  %i.x = load ptr, ptr %3, align 8, !tbaa !768    ; 4 uses
  %.not.i31 = icmp eq ptr %i.x, null
end_hunk_11
begin_hunk_12_@_ZN6duckdb13UnaryExecutor15ExecuteStandardImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm12EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvS6_S6_mPvbNS_14FunctionErrorsE:bb.a
_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #58
  br label %bb.aw

bb.at:                                            ; preds = %bb.v, %bb.u
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.au:                                            ; preds = %bb.w
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %bb.x, %bb.af
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.av, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75, %bb.au, %bb.at
  %.pn.pn = phi { ptr, i32 } [ %i.cr, %bb.at ], [ %i.cs, %bb.au ], [ %i.ct, %bb.av ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76 ], [ %.pn9.i.i72, %bb.ad ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75 ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %13) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #58
  br label %common.resume

bb.aw:                                            ; preds = %bb.t, %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %_ZN6duckdb10FlatVector8ValidityERNS_6VectorE.exit69
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteFlatImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm12EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvPKT_PT0_mRNS_12ValidityMaskESH_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !526    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not75 = icmp eq i64 %2, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %.preheader
  %min.iters.check119 = icmp ult i64 %2, 4
  br i1 %min.iters.check119, label %.lr.ph73.preheader131, label %vector.ph120

vector.ph120:                                     ; preds = %.lr.ph73.preheader
  %n.vec122 = and i64 %2, -4                      ; 3 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph120
  %index124 = phi i64 [ 0, %vector.ph120 ], [ %index.next127, %vector.body123 ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index124 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load125 = load <2 x i64>, ptr %i.b, align 8, !tbaa !33
  %wide.load126 = load <2 x i64>, ptr %i.c, align 8, !tbaa !33
  %i.d = lshr <2 x i64> %wide.load125, splat (i64 36)
  %i.e = lshr <2 x i64> %wide.load126, splat (i64 36)
  %i.f = and <2 x i64> %i.d, splat (i64 4095)
  %i.g = and <2 x i64> %i.e, splat (i64 4095)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index124 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <2 x i64> %i.f, ptr %i.h, align 8, !tbaa !33
  store <2 x i64> %i.g, ptr %i.i, align 8, !tbaa !33
  %index.next127 = add nuw i64 %index124, 4       ; 2 uses
  %i.j = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.j, label %middle.block128, label %vector.body123, !llvm.loop !6825

middle.block128:                                  ; preds = %vector.body123
  %cmp.n129 = icmp eq i64 %2, %n.vec122
  br i1 %cmp.n129, label %.loopexit, label %.lr.ph73.preheader131

.lr.ph73.preheader131:                            ; preds = %.lr.ph73.preheader, %middle.block128
  %.072.ph = phi i64 [ 0, %.lr.ph73.preheader ], [ %n.vec122, %middle.block128 ]
  br label %.lr.ph73

bb.b:                                             ; preds = %bb.a
  br i1 %6, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %4, align 8, !tbaa !526
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = icmp eq ptr %4, %3
  br i1 %i.l, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78   ; 2 uses
  %i.p = load <2 x ptr>, ptr %i.m, align 8, !tbaa !34
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !78   ; 8 uses
  store <2 x ptr> %i.p, ptr %i.k, align 8, !tbaa !34
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.x, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !73
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58, !inline_history !6666
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58, !inline_history !6666
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.aa, %bb.k ], [ %i.ak, %bb.l ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.al, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, !prof !81

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #58
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit: ; preds = %bb.c, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !6664
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !6664
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit
  %i.ap = add i64 %2, 63
  %i.aq = lshr i64 %i.ap, 6                       ; 3 uses
  %.not74 = icmp eq i64 %i.aq, 0
  br i1 %.not74, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.o
  %i.ar = load ptr, ptr %3, align 8, !tbaa !526   ; 2 uses
  %.not.i56 = icmp eq ptr %i.ar, null
  br i1 %.not.i56, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us: ; preds = %.lr.ph71, %.loopexit63.us
  %.05470.us = phi i64 [ %.1.lcssa.us, %.loopexit63.us ], [ 0, %.lr.ph71 ] ; 7 uses
  %.05569.us = phi i64 [ %i.bn, %.loopexit63.us ], [ 0, %.lr.ph71 ]
  %i.as = add i64 %.05470.us, 64
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %i.as, i64 %2) ; 5 uses
  %i.au = icmp ult i64 %.05470.us, %i.at
  br i1 %i.au, label %.lr.ph.us.preheader, label %.loopexit63.us

.lr.ph.us.preheader:                              ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %i.av = sub nuw i64 %i.at, %.05470.us           ; 3 uses
  %min.iters.check106 = icmp ult i64 %i.av, 4
  br i1 %min.iters.check106, label %.lr.ph.us.preheader132, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.us.preheader
  %n.vec109 = and i64 %i.av, -4                   ; 3 uses
  %i.aw = add i64 %.05470.us, %n.vec109
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next114, %vector.body110 ] ; 2 uses
  %i.ax = add i64 %.05470.us, %index111           ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load112 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !33
  %wide.load113 = load <2 x i64>, ptr %i.az, align 8, !tbaa !33
  %i.ba = lshr <2 x i64> %wide.load112, splat (i64 36)
  %i.bb = lshr <2 x i64> %wide.load113, splat (i64 36)
  %i.bc = and <2 x i64> %i.ba, splat (i64 4095)
  %i.bd = and <2 x i64> %i.bb, splat (i64 4095)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ax ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <2 x i64> %i.bc, ptr %i.be, align 8, !tbaa !33
  store <2 x i64> %i.bd, ptr %i.bf, align 8, !tbaa !33
  %index.next114 = add nuw i64 %index111, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.bg, label %middle.block115, label %vector.body110, !llvm.loop !6826

middle.block115:                                  ; preds = %vector.body110
  %cmp.n116 = icmp eq i64 %i.av, %n.vec109
  br i1 %cmp.n116, label %.loopexit63.us, label %.lr.ph.us.preheader132

.lr.ph.us.preheader132:                           ; preds = %.lr.ph.us.preheader, %middle.block115
  %.165.us.ph = phi i64 [ %.05470.us, %.lr.ph.us.preheader ], [ %i.aw, %middle.block115 ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader132, %.lr.ph.us
  %.165.us = phi i64 [ %i.bm, %.lr.ph.us ], [ %.165.us.ph, %.lr.ph.us.preheader132 ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165.us
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !33
  %i.bj = lshr i64 %i.bi, 36
  %i.bk = and i64 %i.bj, 4095
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.165.us
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !33
  %i.bm = add nuw i64 %.165.us, 1                 ; 2 uses
  %exitcond83.not = icmp eq i64 %i.bm, %i.at
  br i1 %exitcond83.not, label %.loopexit63.us, label %.lr.ph.us, !llvm.loop !6827

.loopexit63.us:                                   ; preds = %.lr.ph.us, %middle.block115, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us
  %.1.lcssa.us = phi i64 [ %.05470.us, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us ], [ %i.at, %middle.block115 ], [ %i.at, %.lr.ph.us ]
  %i.bn = add nuw nsw i64 %.05569.us, 1           ; 2 uses
  %exitcond84.not = icmp eq i64 %i.bn, %i.aq
  br i1 %exitcond84.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us, !llvm.loop !6828

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %.lr.ph71, %.loopexit61
  %.05470 = phi i64 [ %.4, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 17 uses
  %.05569 = phi i64 [ %i.dn, %.loopexit61 ], [ 0, %.lr.ph71 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.05569
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !33 ; 4 uses
  %i.bq = add i64 %.05470, 64
  %i.br = tail call noundef i64 @llvm.umin.i64(i64 %i.bq, i64 %2) ; 12 uses
  switch i64 %i.bp, label %.preheader60 [
    i64 -1, label %.preheader62
    i64 0, label %.loopexit61
  ]

.preheader62:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.bs = icmp ult i64 %.05470, %i.br
  br i1 %i.bs, label %.lr.ph.preheader, label %.loopexit61

.lr.ph.preheader:                                 ; preds = %.preheader62
  %i.bt = sub nuw i64 %i.br, %.05470              ; 3 uses
  %min.iters.check = icmp ult i64 %i.bt, 4
  br i1 %min.iters.check, label %.lr.ph.preheader134, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bt, -4                      ; 3 uses
  %i.bu = add i64 %.05470, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = add i64 %.05470, %index                 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load = load <2 x i64>, ptr %i.bw, align 8, !tbaa !33
  %wide.load104 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !33
  %i.by = lshr <2 x i64> %wide.load, splat (i64 36)
  %i.bz = lshr <2 x i64> %wide.load104, splat (i64 36)
  %i.ca = and <2 x i64> %i.by, splat (i64 4095)
  %i.cb = and <2 x i64> %i.bz, splat (i64 4095)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bv ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <2 x i64> %i.ca, ptr %i.cc, align 8, !tbaa !33
  store <2 x i64> %i.cb, ptr %i.cd, align 8, !tbaa !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !6829

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %.loopexit61, label %.lr.ph.preheader134

.lr.ph.preheader134:                              ; preds = %.lr.ph.preheader, %middle.block
  %.165.ph = phi i64 [ %.05470, %.lr.ph.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph

.preheader60:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.cf = icmp ult i64 %.05470, %i.br
  br i1 %i.cf, label %.lr.ph67.preheader, label %.loopexit61

.lr.ph67.preheader:                               ; preds = %.preheader60
  %i.cg = sub nuw i64 %i.br, %.05470
  %.neg = add i64 %.05470, 1
  %xtraiter = and i64 %i.cg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader
  %i.ch = and i64 %i.bp, 1
  %.not.prol = icmp eq i64 %i.ch, 0
  br i1 %.not.prol, label %.lr.ph67.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph67.prol
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.05470
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !33
  %i.ck = lshr i64 %i.cj, 36
  %i.cl = and i64 %i.ck, 4095
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05470
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !33
  br label %.lr.ph67.prol.loopexit.unr-lcssa

.lr.ph67.prol.loopexit.unr-lcssa:                 ; preds = %bb.p, %.lr.ph67.prol
  %i.cn = add nuw i64 %.05470, 1
  br label %.lr.ph67.prol.loopexit

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol.loopexit.unr-lcssa, %.lr.ph67.preheader
  %.266.unr = phi i64 [ %.05470, %.lr.ph67.preheader ], [ %i.cn, %.lr.ph67.prol.loopexit.unr-lcssa ]
  %i.co = icmp eq i64 %i.br, %.neg
  br i1 %i.co, label %.loopexit61, label %.lr.ph67

.lr.ph:                                           ; preds = %.lr.ph.preheader134, %.lr.ph
  %.165 = phi i64 [ %i.cu, %.lr.ph ], [ %.165.ph, %.lr.ph.preheader134 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.165
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !33
  %i.cr = lshr i64 %i.cq, 36
  %i.cs = and i64 %i.cr, 4095
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.165
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !33
  %i.cu = add nuw i64 %.165, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cu, %i.br
  br i1 %exitcond.not, label %.loopexit61, label %.lr.ph, !llvm.loop !6830

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %bb.s
  %.266 = phi i64 [ %i.dm, %bb.s ], [ %.266.unr, %.lr.ph67.prol.loopexit ] ; 5 uses
  %i.cv = sub nuw i64 %.266, %.05470
  %i.cw = shl nuw i64 1, %i.cv
  %i.cx = and i64 %i.cw, %i.bp
  %.not = icmp eq i64 %i.cx, 0
  br i1 %.not, label %.lr.ph67.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph67
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.266
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !33
  %i.da = lshr i64 %i.cz, 36
  %i.db = and i64 %i.da, 4095
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.266
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !33
  br label %.lr.ph67.1

.lr.ph67.1:                                       ; preds = %.lr.ph67, %bb.q
  %i.dd = add nuw i64 %.266, 1                    ; 3 uses
  %i.de = sub nuw i64 %i.dd, %.05470
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.bp
  %.not.1 = icmp eq i64 %i.dg, 0
  br i1 %.not.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph67.1
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dd
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !33
  %i.dj = lshr i64 %i.di, 36
  %i.dk = and i64 %i.dj, 4095
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dd
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !33
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph67.1
  %i.dm = add nuw i64 %.266, 2                    ; 2 uses
  %exitcond81.not.1 = icmp eq i64 %i.dm, %i.br
  br i1 %exitcond81.not.1, label %.loopexit61, label %.lr.ph67, !llvm.loop !6831

.loopexit61:                                      ; preds = %.lr.ph, %.lr.ph67.prol.loopexit, %bb.s, %middle.block, %.preheader62, %.preheader60, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.br, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.br, %middle.block ], [ %.05470, %.preheader60 ], [ %.05470, %.preheader62 ], [ %i.br, %.lr.ph67.prol.loopexit ], [ %i.br, %bb.s ], [ %i.br, %.lr.ph ]
  %i.dn = add nuw nsw i64 %.05569, 1              ; 2 uses
  %exitcond82.not = icmp eq i64 %i.dn, %i.aq
  br i1 %exitcond82.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit, !llvm.loop !6828

.lr.ph73:                                         ; preds = %.lr.ph73.preheader131, %.lr.ph73
  %.072 = phi i64 [ %i.dt, %.lr.ph73 ], [ %.072.ph, %.lr.ph73.preheader131 ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.072
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !33
  %i.dq = lshr i64 %i.dp, 36
  %i.dr = and i64 %i.dq, 4095
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.072
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !33
  %i.dt = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond85.not = icmp eq i64 %i.dt, %2
  br i1 %exitcond85.not, label %.loopexit, label %.lr.ph73, !llvm.loop !6832

.loopexit:                                        ; preds = %.loopexit61, %.loopexit63.us, %.lr.ph73, %middle.block128, %bb.o, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteLoopImmNS_18UnaryLambdaWrapperEZNS_30ComputePartitionIndicesFunctor9OperationILm12EEEvRNS_6VectorES6_mRKNS_15SelectionVectorEmEUlmE_EEvPKT_PT0_mPS8_RNS_12ValidityMaskESI_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !526
  %.not.i = icmp eq ptr %i.a, null
  %.not39 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader33

.preheader33:                                     ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader33
  %i.b = load ptr, ptr %3, align 8, !tbaa !768    ; 2 uses
  %.not.i29 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br i1 %.not.i29, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph, %bb.e
  %.035.us = phi i64 [ %i.w, %bb.e ], [ 0, %.lr.ph ] ; 5 uses
  %i.d = lshr i64 %.035.us, 6                     ; 2 uses
  %i.e = and i64 %.035.us, 63
  %i.f = load ptr, ptr %4, align 8, !tbaa !526
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %i.i = shl nuw i64 1, %i.e                      ; 2 uses
  %i.j = and i64 %i.h, %i.i
  %.not.us = icmp eq i64 %i.j, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.035.us
  %i.l = load i64, ptr %i.k, align 8, !tbaa !33
  %i.m = lshr i64 %i.l, 36
  %i.n = and i64 %i.m, 4095
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.035.us
  store i64 %i.n, ptr %i.o, align 8, !tbaa !33
  br label %bb.e

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.p = load ptr, ptr %5, align 8, !tbaa !526    ; 2 uses
  %.not.i30.us = icmp eq ptr %i.p, null
  br i1 %.not.i30.us, label %bb.d, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.c, align 8, !tbaa !6664
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.q)
  %.pre.i.us = load ptr, ptr %5, align 8, !tbaa !526
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us: ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %.pre.i.us, %bb.d ], [ %i.p, %bb.c ]
  %i.s = xor i64 %i.i, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.d ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !33
  %i.v = and i64 %i.u, %i.s
  store i64 %i.v, ptr %i.t, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.us, %bb.b
  %i.w = add nuw i64 %.035.us, 1                  ; 2 uses
  %exitcond43.not = icmp eq i64 %i.w, %2
  br i1 %exitcond43.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !6833

.preheader:                                       ; preds = %bb.a
  br i1 %.not39, label %.loopexit, label %.lr.ph37

.lr.ph37:                                         ; preds = %.preheader
  %i.x = load ptr, ptr %3, align 8, !tbaa !768    ; 4 uses
  %.not.i31 = icmp eq ptr %i.x, null
end_hunk_12
