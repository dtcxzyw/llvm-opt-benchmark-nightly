inline.NumInlined: 43
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@make_table:.preheader124.preheader
  br i1 %i.cg, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader123
  %wide.trip.count170 = zext nneg i32 %indvars.iv168.lcssa to i64 ; 3 uses
  %i.ch = sub i64 %wide.trip.count170, %indvars.iv163.lcssa
  %xtraiter223 = and i64 %i.ch, 3                 ; 2 uses
  %lcmp.mod224.not = icmp eq i64 %xtraiter223, 0
  br i1 %lcmp.mod224.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv165.prol = phi i64 [ %indvars.iv.next166.prol, %.lr.ph.prol ], [ %indvars.iv163.lcssa, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ci = trunc nuw nsw i64 %indvars.iv165.prol to i32
  %i.cj = lshr exact i32 65536, %i.ci
  %i.ck = trunc nuw nsw i32 %i.cj to i16
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv165.prol
  store i16 %i.ck, ptr %i.cl, align 2, !tbaa !22
  %indvars.iv.next166.prol = add nuw nsw i64 %indvars.iv165.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter223
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !99

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv165.unr = phi i64 [ %indvars.iv163.lcssa, %.lr.ph.preheader ], [ %indvars.iv.next166.prol, %.lr.ph.prol ]
  %i.cm = sub i64 %indvars.iv163.lcssa, %wide.trip.count170
  %i.cn = icmp ugt i64 %i.cm, -4
  br i1 %i.cn, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.c, %.new
  %indvars.iv168 = phi i32 [ %i.bv, %.new ], [ %indvars.iv.next169.1, %bb.c ] ; 2 uses
  %indvars.iv163 = phi i64 [ 2, %.new ], [ %indvars.iv.next164.1, %bb.c ] ; 2 uses
  %indvars.iv158 = phi i64 [ 1, %.new ], [ %indvars.iv.next159.1, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv158 ; 2 uses
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !22
  %i.cq = zext i16 %i.cp to i32
  %i.cr = lshr i32 %i.cq, %i.bs
  %i.cs = trunc nuw nsw i32 %i.cr to i16
  store i16 %i.cs, ptr %i.co, align 2, !tbaa !22
  %i.ct = trunc i64 %indvars.iv158 to i32
  %i.cu = sub nsw i32 %3, %i.ct
  %i.cv = shl nuw nsw i32 1, %i.cu
  %i.cw = trunc nuw nsw i32 %i.cv to i16
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv158
  store i16 %i.cw, ptr %i.cx, align 2, !tbaa !22
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 4 uses
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next159 ; 2 uses
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !22
  %i.da = zext i16 %i.cz to i32
  %i.db = lshr i32 %i.da, %i.bs
  %i.dc = trunc nuw nsw i32 %i.db to i16
  store i16 %i.dc, ptr %i.cy, align 2, !tbaa !22
  %i.dd = trunc i64 %indvars.iv.next159 to i32
  %i.de = sub nsw i32 %3, %i.dd
  %i.df = shl nuw nsw i32 1, %i.de
  %i.dg = trunc nuw nsw i32 %i.df to i16
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next159
  store i16 %i.dg, ptr %i.dh, align 2, !tbaa !22
  %indvars.iv.next159.1 = add nuw nsw i64 %indvars.iv158, 2 ; 5 uses
  %indvars.iv.next164.1 = add nuw nsw i64 %indvars.iv163, 2 ; 2 uses
  %indvars.iv.next169.1 = add nuw nsw i32 %indvars.iv168, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader123.unr-lcssa, label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv165 = phi i64 [ %indvars.iv.next166.3, %.lr.ph ], [ %indvars.iv165.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.di = trunc nuw nsw i64 %indvars.iv165 to i32
  %i.dj = lshr exact i32 65536, %i.di
  %i.dk = trunc nuw nsw i32 %i.dj to i16
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv165
  store i16 %i.dk, ptr %i.dl, align 2, !tbaa !22
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %i.dm = trunc nuw nsw i64 %indvars.iv.next166 to i32
  %i.dn = lshr exact i32 65536, %i.dm
  %i.do = trunc nuw nsw i32 %i.dn to i16
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next166
  store i16 %i.do, ptr %i.dp, align 2, !tbaa !22
  %indvars.iv.next166.1 = add nuw nsw i64 %indvars.iv165, 2 ; 2 uses
  %i.dq = trunc nuw nsw i64 %indvars.iv.next166.1 to i32
  %i.dr = lshr exact i32 65536, %i.dq
  %i.ds = trunc nuw nsw i32 %i.dr to i16
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next166.1
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !22
  %indvars.iv.next166.2 = add nuw nsw i64 %indvars.iv165, 3 ; 2 uses
  %i.du = trunc nuw nsw i64 %indvars.iv.next166.2 to i32
  %i.dv = lshr exact i32 65536, %i.du
  %i.dw = trunc nuw nsw i32 %i.dv to i16
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next166.2
  store i16 %i.dw, ptr %i.dx, align 2, !tbaa !22
  %indvars.iv.next166.3 = add nuw nsw i64 %indvars.iv165, 4 ; 2 uses
  %exitcond171.not.3 = icmp eq i64 %indvars.iv.next166.3, %wide.trip.count170
  br i1 %exitcond171.not.3, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.preheader123
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.bt
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 2
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !22
  %i.eb = zext i16 %i.ea to i32
  %i.ec = lshr i32 %i.eb, %i.bs                   ; 4 uses
  %.not113 = icmp eq i32 %i.ec, 0
  br i1 %.not113, label %.loopexit122, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ed = shl nuw nsw i32 1, %3                   ; 2 uses
  %.not114134 = icmp eq i32 %i.ec, %i.ed
  br i1 %.not114134, label %.loopexit122, label %.lr.ph137.preheader

.lr.ph137.preheader:                              ; preds = %bb.d
  %i.ee = zext nneg i32 %i.ec to i64              ; 5 uses
  %i.ef = zext nneg i32 %i.ed to i64              ; 2 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.ec, i32 %5)
  %wide.trip.count175 = zext nneg i32 %umax to i64 ; 2 uses
  %i.eg = xor i64 %i.ee, -1
  %i.eh = add nsw i64 %i.eg, %i.ef
  %i.ei = sub nsw i64 %wide.trip.count175, %i.ee
  %i.ej = tail call i64 @llvm.umin.i64(i64 %i.eh, i64 %i.ei)
  %i.ek = add nsw i64 %i.ej, 1                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ek, 17
  br i1 %min.iters.check, label %.lr.ph137.preheader216, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph137.preheader
  %i.el = and i64 %i.ek, 15                       ; 2 uses
  %i.em = icmp eq i64 %i.el, 0
  %i.en = select i1 %i.em, i64 16, i64 %i.el
  %n.vec = sub i64 %i.ek, %i.en                   ; 2 uses
  %i.eo = add i64 %n.vec, %i.ee
  %invariant.gep = getelementptr [2 x i8], ptr %4, i64 %i.ee
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <8 x i16> zeroinitializer, ptr %gep, align 2, !tbaa !22
  store <8 x i16> zeroinitializer, ptr %i.ep, align 2, !tbaa !22
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.eq = icmp eq i64 %index.next, %n.vec
  br i1 %i.eq, label %.lr.ph137.preheader216, label %vector.body, !llvm.loop !100

.lr.ph137.preheader216:                           ; preds = %vector.body, %.lr.ph137.preheader
  %indvars.iv172.ph = phi i64 [ %i.ee, %.lr.ph137.preheader ], [ %i.eo, %vector.body ]
  br label %.lr.ph137

.lr.ph137:                                        ; preds = %.lr.ph137.preheader216, %bb.e
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %bb.e ], [ %indvars.iv172.ph, %.lr.ph137.preheader216 ] ; 3 uses
  %exitcond176.not = icmp eq i64 %indvars.iv172, %wide.trip.count175
  br i1 %exitcond176.not, label %.loopexit121.sink.split.sink.split, label %bb.e

bb.e:                                             ; preds = %.lr.ph137
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv172
  store i16 0, ptr %i.er, align 2, !tbaa !22
  %.not114 = icmp eq i64 %indvars.iv.next173, %i.ef
  br i1 %.not114, label %.loopexit122, label %.lr.ph137, !llvm.loop !101

.loopexit122:                                     ; preds = %bb.e, %bb.d, %._crit_edge
  %i.es = lshr exact i32 32768, %3
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 2094
  br label %bb.f

bb.f:                                             ; preds = %.loopexit122, %bb.n
  %indvars.iv180 = phi i64 [ 0, %.loopexit122 ], [ %indvars.iv.next181, %bb.n ] ; 4 uses
  %.0150 = phi i32 [ %1, %.loopexit122 ], [ %.4, %bb.n ] ; 7 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv180
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !35  ; 4 uses
  %i.ex = zext i8 %i.ew to i32                    ; 2 uses
  %i.ey = icmp eq i8 %i.ew, 0
  br i1 %i.ey, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ez = icmp ugt i8 %i.ew, 16
  br i1 %i.ez, label %.loopexit121.sink.split.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fa = zext nneg i8 %i.ew to i64               ; 2 uses
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.fa ; 2 uses
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !22 ; 2 uses
  %i.fd = zext i16 %i.fc to i32                   ; 3 uses
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.fa
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !22 ; 2 uses
  %i.fg = zext i16 %i.ff to i32
  %i.fh = add nuw nsw i32 %i.fg, %i.fd            ; 3 uses
  %.not115 = icmp samesign ult i32 %3, %i.ex
  br i1 %.not115, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fi = icmp samesign ugt i32 %i.fh, %5
  br i1 %i.fi, label %.loopexit121.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.i
  %.not151 = icmp eq i16 %i.ff, 0
  br i1 %.not151, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.fj = trunc i64 %indvars.iv180 to i16         ; 3 uses
  %i.fk = zext i16 %i.fc to i64                   ; 7 uses
  %i.fl = zext nneg i32 %i.fh to i64              ; 2 uses
  %i.fm = add nuw nsw i64 %i.fk, 1
  %umax197 = tail call i64 @llvm.umax.i64(i64 %i.fm, i64 %i.fl)
  %i.fn = sub nsw i64 %umax197, %i.fk             ; 7 uses
  %min.iters.check199 = icmp ult i64 %i.fn, 4
  br i1 %min.iters.check199, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check200 = icmp ult i64 %i.fn, 16
  br i1 %min.iters.check200, label %vec.epilog.ph, label %vector.ph201

vector.ph201:                                     ; preds = %vector.main.loop.iter.check
  %i.fo = and i64 %i.fn, 12
  %n.vec202 = and i64 %i.fn, -16                  ; 4 uses
  %i.fp = add nsw i64 %n.vec202, %i.fk
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.fj, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.gep227 = getelementptr [2 x i8], ptr %4, i64 %i.fk
  br label %vector.body203

vector.body203:                                   ; preds = %vector.body203, %vector.ph201
  %index204 = phi i64 [ 0, %vector.ph201 ], [ %index.next205, %vector.body203 ] ; 2 uses
  %gep228 = getelementptr [2 x i8], ptr %invariant.gep227, i64 %index204 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %gep228, i64 16
  store <8 x i16> %broadcast.splat, ptr %gep228, align 2, !tbaa !22
  store <8 x i16> %broadcast.splat, ptr %i.fq, align 2, !tbaa !22
  %index.next205 = add nuw i64 %index204, 16      ; 2 uses
  %i.fr = icmp eq i64 %index.next205, %n.vec202
  br i1 %i.fr, label %middle.block206, label %vector.body203, !llvm.loop !102

middle.block206:                                  ; preds = %vector.body203
  %cmp.n = icmp eq i64 %i.fn, %n.vec202
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block206
  %min.epilog.iters.check = icmp eq i64 %i.fo, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !103

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec202, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec208 = and i64 %i.fn, -4                   ; 3 uses
  %i.fs = add nsw i64 %n.vec208, %i.fk
  %broadcast.splatinsert209 = insertelement <4 x i16> poison, i16 %i.fj, i64 0
  %broadcast.splat210 = shufflevector <4 x i16> %broadcast.splatinsert209, <4 x i16> poison, <4 x i32> zeroinitializer
  %invariant.gep229 = getelementptr [2 x i8], ptr %4, i64 %i.fk
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index211 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next212, %vec.epilog.vector.body ] ; 2 uses
  %gep230 = getelementptr [2 x i8], ptr %invariant.gep229, i64 %index211
  store <4 x i16> %broadcast.splat210, ptr %gep230, align 2, !tbaa !22
  %index.next212 = add nuw i64 %index211, 4       ; 2 uses
  %i.ft = icmp eq i64 %index.next212, %n.vec208
  br i1 %i.ft, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !104

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n213 = icmp eq i64 %i.fn, %n.vec208
  br i1 %cmp.n213, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv177.ph = phi i64 [ %i.fk, %iter.check ], [ %i.fp, %vec.epilog.iter.check ], [ %i.fs, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %vec.epilog.scalar.ph ], [ %indvars.iv177.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv177
  store i16 %i.fj, ptr %i.fu, align 2, !tbaa !22
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %i.fv = icmp samesign ult i64 %indvars.iv.next178, %i.fl
  br i1 %i.fv, label %vec.epilog.scalar.ph, label %.loopexit, !llvm.loop !105

bb.j:                                             ; preds = %bb.h
  %i.fw = lshr i32 %i.fd, %i.bs
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.fx ; 2 uses
  %i.fz = sub nuw nsw i32 %i.ex, %3               ; 2 uses
  %.not116140 = icmp eq i32 %i.fz, 0
  br i1 %.not116140, label %._crit_edge147, label %.lr.ph146

.lr.ph146:                                        ; preds = %bb.j, %bb.m
  %.1144 = phi i32 [ %.2120, %bb.m ], [ %.0150, %bb.j ] ; 5 uses
  %.098143 = phi i32 [ %i.gm, %bb.m ], [ %i.fd, %bb.j ] ; 2 uses
  %.7142 = phi i32 [ %i.gn, %bb.m ], [ %i.fz, %bb.j ]
  %.0104141 = phi ptr [ %.1105, %bb.m ], [ %i.fy, %bb.j ] ; 2 uses
  %i.ga = load i16, ptr %.0104141, align 2, !tbaa !22 ; 3 uses
  %i.gb = icmp eq i16 %i.ga, 0
  br i1 %i.gb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph146
  %i.gc = icmp ugt i32 %.1144, 1018
  br i1 %i.gc, label %.loopexit121.sink.split.sink.split, label %.thread

.thread:                                          ; preds = %bb.k
  %i.gd = zext nneg i32 %.1144 to i64             ; 2 uses
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.et, i64 %i.gd
  store i16 0, ptr %i.ge, align 2, !tbaa !22
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.eu, i64 %i.gd
  store i16 0, ptr %i.gf, align 2, !tbaa !22
  %i.gg = add nuw nsw i32 %.1144, 1
  %i.gh = trunc nuw nsw i32 %.1144 to i16         ; 2 uses
  store i16 %i.gh, ptr %.0104141, align 2, !tbaa !22
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph146
  %i.gi = icmp ugt i16 %i.ga, 1018
  br i1 %i.gi, label %.loopexit121.sink.split.sink.split, label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l
  %.2120 = phi i32 [ %i.gg, %.thread ], [ %.1144, %bb.l ] ; 2 uses
  %i.gj = phi i16 [ %i.gh, %.thread ], [ %i.ga, %bb.l ]
  %i.gk = and i32 %.098143, %i.es
  %.not117 = icmp eq i32 %i.gk, 0
  %i.gl = zext nneg i16 %i.gj to i64
  %.1105.v.v = select i1 %.not117, i64 56, i64 2094
  %.1105.v = getelementptr inbounds nuw i8, ptr %0, i64 %.1105.v.v
  %.1105 = getelementptr inbounds nuw [2 x i8], ptr %.1105.v, i64 %i.gl ; 2 uses
  %i.gm = shl i32 %.098143, 1
  %i.gn = add nsw i32 %.7142, -1                  ; 2 uses
  %.not116 = icmp eq i32 %i.gn, 0
  br i1 %.not116, label %._crit_edge147, label %.lr.ph146

._crit_edge147:                                   ; preds = %bb.m, %bb.j
  %.0104.lcssa = phi ptr [ %i.fy, %bb.j ], [ %.1105, %bb.m ]
  %.1.lcssa = phi i32 [ %.0150, %bb.j ], [ %.2120, %bb.m ]
  %i.go = trunc i64 %indvars.iv180 to i16
  store i16 %i.go, ptr %.0104.lcssa, align 2, !tbaa !22
  br label %.loopexit

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %middle.block206, %vec.epilog.middle.block, %.preheader, %._crit_edge147
  %.3 = phi i32 [ %.1.lcssa, %._crit_edge147 ], [ %.0150, %.preheader ], [ %.0150, %middle.block206 ], [ %.0150, %vec.epilog.middle.block ], [ %.0150, %vec.epilog.scalar.ph ]
  %i.gp = trunc i32 %i.fh to i16
  store i16 %i.gp, ptr %i.fb, align 2, !tbaa !22
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %.loopexit
  %.4 = phi i32 [ %.0150, %bb.f ], [ %.3, %.loopexit ]
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next181, %wide.trip.count
  br i1 %exitcond184.not, label %.loopexit121, label %bb.f

.loopexit121.sink.split.sink.split:               ; preds = %.preheader124, %.lr.ph137, %bb.g, %bb.l, %bb.k
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.50) #11
  br label %.loopexit121.sink.split

.loopexit121.sink.split:                          ; preds = %bb.i, %.loopexit121.sink.split.sink.split, %bb.b
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 13368
  store i32 7, ptr %i.gq, align 8, !tbaa !74
  br label %.loopexit121

.loopexit121:                                     ; preds = %bb.n, %.loopexit121.sink.split
  %.0106 = phi i32 [ 7, %.loopexit121.sink.split ], [ 0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0106
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
end_hunk_0
