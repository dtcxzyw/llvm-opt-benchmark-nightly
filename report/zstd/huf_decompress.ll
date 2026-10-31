Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/huf_decompress?download=true
inline.NumInlined: 744
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 40
begin_hunk_0_@HUF_readDTableX1_wksp:bb.a
  br i1 %i.be, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.g

.preheader181.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader181, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader181.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.preheader181.unr-lcssa ]
  %.0159184.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.cb, %.preheader181.unr-lcssa ]
  %lcmp.mod366 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod366)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.f ] ; 3 uses
  %.0159184.epil = phi i32 [ %.0159184.epil.init, %.epil.preheader ], [ %i.bh, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.epil
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !16
  %i.bh = add i32 %i.bg, %.0159184.epil
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.epil
  store i32 %.0159184.epil, ptr %i.bi, align 4, !tbaa !16
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader181, label %bb.f, !llvm.loop !56

.preheader181:                                    ; preds = %bb.f, %.preheader181.unr-lcssa
  %i.bj = icmp sgt i32 %i.l, 3
  br i1 %i.bj, label %.preheader180.lr.ph, label %.preheader179

.preheader180.lr.ph:                              ; preds = %.preheader181
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 980 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 4 uses
  %i.bm = zext nneg i32 %i.bb to i64
  br label %.preheader180

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.g ] ; 6 uses
  %.0159184 = phi i32 [ 0, %.lr.ph.new ], [ %i.cb, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.g ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !16
  %i.bp = add i32 %i.bo, %.0159184                ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  store i32 %.0159184, ptr %i.bq, align 4, !tbaa !16
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !16
  %i.bt = add i32 %i.bs, %i.bp                    ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.next
  store i32 %i.bp, ptr %i.bu, align 4, !tbaa !16
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !16
  %i.bx = add i32 %i.bw, %i.bt                    ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.next.1
  store i32 %i.bt, ptr %i.by, align 4, !tbaa !16
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !16
  %i.cb = add i32 %i.ca, %i.bx                    ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.next.2
  store i32 %i.bx, ptr %i.cc, align 4, !tbaa !16
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader181.unr-lcssa, label %bb.g, !llvm.loop !57

.preheader180:                                    ; preds = %.preheader180.lr.ph, %.preheader180
  %indvars.iv227 = phi i64 [ 0, %.preheader180.lr.ph ], [ %indvars.iv.next228, %.preheader180 ] ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv227
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !17
  %i.cf = zext i8 %i.ce to i64
  %i.cg = trunc i64 %indvars.iv227 to i8
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.cf ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !16 ; 2 uses
  %i.cj = add i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !16
  %i.ck = zext i32 %i.ci to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ck
  store i8 %i.cg, ptr %i.cl, align 1, !tbaa !17
  %i.cm = or disjoint i64 %indvars.iv227, 1       ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !17
  %i.cp = zext i8 %i.co to i64
  %i.cq = trunc i64 %i.cm to i8
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.cp ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !16 ; 2 uses
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !16
  %i.cu = zext i32 %i.cs to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.cu
  store i8 %i.cq, ptr %i.cv, align 1, !tbaa !17
  %i.cw = or disjoint i64 %indvars.iv227, 2       ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !17
  %i.cz = zext i8 %i.cy to i64
  %i.da = trunc i64 %i.cw to i8
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.cz ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !16 ; 2 uses
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !16
  %i.de = zext i32 %i.dc to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.de
  store i8 %i.da, ptr %i.df, align 1, !tbaa !17
  %i.dg = or disjoint i64 %indvars.iv227, 3       ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !17
  %i.dj = zext i8 %i.di to i64
  %i.dk = trunc i64 %i.dg to i8
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.dj ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !16 ; 2 uses
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !16
  %i.do = zext i32 %i.dm to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.do
  store i8 %i.dk, ptr %i.dp, align 1, !tbaa !17
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 4 ; 3 uses
  %i.dq = icmp samesign ult i64 %indvars.iv.next228, %i.bm
  br i1 %i.dq, label %.preheader180, label %.preheader179.loopexit, !llvm.loop !58

.preheader179.loopexit:                           ; preds = %.preheader180
  %i.dr = trunc nuw nsw i64 %indvars.iv.next228 to i32
  br label %.preheader179

.preheader179:                                    ; preds = %.preheader179.loopexit, %.preheader181
  %.1161.lcssa = phi i32 [ 0, %.preheader181 ], [ %i.dr, %.preheader179.loopexit ] ; 3 uses
  %i.ds = icmp slt i32 %.1161.lcssa, %i.l
  br i1 %i.ds, label %.lr.ph188, label %.lr.ph216

.lr.ph188:                                        ; preds = %.preheader179
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 980 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 3 uses
  %i.dv = zext i32 %.1161.lcssa to i64            ; 5 uses
  %wide.trip.count233 = zext nneg i32 %i.l to i64 ; 3 uses
  %i.dw = sub nsw i64 %wide.trip.count233, %i.dv
  %xtraiter367 = and i64 %i.dw, 1
  %lcmp.mod368.not = icmp eq i64 %xtraiter367, 0
  br i1 %lcmp.mod368.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph188
  %i.dx = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.dv
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !17
  %i.dz = zext i8 %i.dy to i64
  %i.ea = trunc i32 %.1161.lcssa to i8
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.dz ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !16 ; 2 uses
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !16
  %i.ee = zext i32 %i.ec to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ee
  store i8 %i.ea, ptr %i.ef, align 1, !tbaa !17
  %indvars.iv.next231.prol = add nuw nsw i64 %i.dv, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph188
  %indvars.iv230.unr = phi i64 [ %i.dv, %.lr.ph188 ], [ %indvars.iv.next231.prol, %.prol.loopexit.unr-lcssa ]
  %i.eg = add nsw i64 %wide.trip.count233, -1
  %i.eh = icmp eq i64 %i.eg, %i.dv
  br i1 %i.eh, label %.lr.ph216, label %.lr.ph188.new

.lr.ph188.new:                                    ; preds = %.prol.loopexit, %.lr.ph188.new
  %indvars.iv230 = phi i64 [ %indvars.iv.next231.1, %.lr.ph188.new ], [ %indvars.iv230.unr, %.prol.loopexit ] ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv230
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !17
  %i.ek = zext i8 %i.ej to i64
  %i.el = trunc i64 %indvars.iv230 to i8
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.ek ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !16 ; 2 uses
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !16
  %i.ep = zext i32 %i.en to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ep
  store i8 %i.el, ptr %i.eq, align 1, !tbaa !17
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next231
  %i.es = load i8, ptr %i.er, align 1, !tbaa !17
  %i.et = zext i8 %i.es to i64
  %i.eu = trunc i64 %indvars.iv.next231 to i8
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.et ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !16 ; 2 uses
  %i.ex = add i32 %i.ew, 1
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !16
  %i.ey = zext i32 %i.ew to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ey
  store i8 %i.eu, ptr %i.ez, align 1, !tbaa !17
  %indvars.iv.next231.1 = add nuw nsw i64 %indvars.iv230, 2 ; 2 uses
  %exitcond234.not.1 = icmp eq i64 %indvars.iv.next231.1, %wide.trip.count233
  br i1 %exitcond234.not.1, label %.lr.ph216, label %.lr.ph188.new, !llvm.loop !59

.lr.ph216:                                        ; preds = %.prol.loopexit, %.lr.ph188.new, %.preheader179
  %i.fa = add nuw nsw i32 %.030.i169, 1           ; 2 uses
  %i.fb = load i32, ptr %3, align 4, !tbaa !16
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 980 ; 5 uses
  %i.fd = zext nneg i32 %i.fa to i64
  %scevgep = getelementptr i8, ptr %0, i64 4
  %scevgep325 = getelementptr i8, ptr %0, i64 4
  %scevgep327 = getelementptr i8, ptr %3, i64 980
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph216, %.loopexit
  %indvars.iv283 = phi i64 [ 1, %.lr.ph216 ], [ %indvars.iv.next284, %.loopexit ] ; 4 uses
  %.0155212 = phi i32 [ 0, %.lr.ph216 ], [ %i.la, %.loopexit ] ; 6 uses
  %.0156210 = phi i32 [ %i.fb, %.lr.ph216 ], [ %i.ky, %.loopexit ] ; 6 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv283
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !16 ; 20 uses
  %i.fg = trunc nuw i64 %indvars.iv283 to i32
  %i.fh = shl nuw i32 1, %i.fg
  %i.fi = ashr exact i32 %i.fh, 1                 ; 6 uses
  %i.fj = trunc i64 %indvars.iv283 to i32
  %i.fk = sub i32 %i.fa, %i.fj                    ; 4 uses
  %i.fl = trunc i32 %i.fk to i8                   ; 13 uses
  %i.fm = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.fi)
  %i.fn = icmp eq i32 %i.fm, 1
  br i1 %i.fn, label %.split, label %bb.k

.split:                                           ; preds = %bb.h
  %i.fo = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.fi, i1 true)
  switch i32 %i.fo, label %bb.k [
    i32 0, label %.preheader
    i32 1, label %.preheader173
    i32 2, label %.preheader175
    i32 3, label %.preheader177
  ]

.preheader177:                                    ; preds = %.split
  %i.fp = icmp sgt i32 %i.ff, 0
  br i1 %i.fp, label %.lr.ph191, label %.loopexit

.lr.ph191:                                        ; preds = %.preheader177
  %.mask = and i32 %i.fk, 255
  %i.fq = zext nneg i32 %.mask to i64             ; 3 uses
  %i.fr = sext i32 %.0156210 to i64
  %i.fs = sext i32 %.0155212 to i64               ; 2 uses
  %wide.trip.count242 = zext nneg i32 %i.ff to i64 ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.fc, i64 %i.fr ; 3 uses
  %xtraiter370 = and i64 %wide.trip.count242, 1
  %i.ft = icmp eq i32 %i.ff, 1
  br i1 %i.ft, label %.epil.preheader369, label %.lr.ph191.new

.lr.ph191.new:                                    ; preds = %.lr.ph191
  %unroll_iter374 = and i64 %wide.trip.count242, 2147483646
  br label %bb.j

.preheader175:                                    ; preds = %.split
  %i.fu = icmp sgt i32 %i.ff, 0
  br i1 %i.fu, label %.lr.ph194, label %.loopexit

.lr.ph194:                                        ; preds = %.preheader175
  %.mask170 = and i32 %i.fk, 255
  %i.fv = zext nneg i32 %.mask170 to i64          ; 3 uses
  %i.fw = sext i32 %.0156210 to i64
  %i.fx = sext i32 %.0155212 to i64               ; 2 uses
  %wide.trip.count251 = zext nneg i32 %i.ff to i64 ; 2 uses
  %invariant.gep303 = getelementptr i8, ptr %i.fc, i64 %i.fw ; 3 uses
  %xtraiter377 = and i64 %wide.trip.count251, 1
  %i.fy = icmp eq i32 %i.ff, 1
  br i1 %i.fy, label %.epil.preheader376, label %.lr.ph194.new

.lr.ph194.new:                                    ; preds = %.lr.ph194
  %unroll_iter381 = and i64 %wide.trip.count251, 2147483646
  br label %bb.i

.preheader173:                                    ; preds = %.split
  %i.fz = icmp sgt i32 %i.ff, 0
  br i1 %i.fz, label %.lr.ph197.preheader, label %.loopexit

.lr.ph197.preheader:                              ; preds = %.preheader173
  %i.ga = sext i32 %.0156210 to i64
  %i.gb = sext i32 %.0155212 to i64               ; 2 uses
  %wide.trip.count260 = zext nneg i32 %i.ff to i64 ; 2 uses
  %invariant.gep305 = getelementptr i8, ptr %i.fc, i64 %i.ga ; 3 uses
  %xtraiter383 = and i64 %wide.trip.count260, 1
  %i.gc = icmp eq i32 %i.ff, 1
  br i1 %i.gc, label %.lr.ph197.epil.preheader, label %.lr.ph197.preheader.new

.lr.ph197.preheader.new:                          ; preds = %.lr.ph197.preheader
  %unroll_iter387 = and i64 %wide.trip.count260, 2147483646
  br label %.lr.ph197

.preheader:                                       ; preds = %.split
  %i.gd = icmp sgt i32 %i.ff, 0
  br i1 %i.gd, label %iter.check344, label %.loopexit

iter.check344:                                    ; preds = %.preheader
  %i.ge = sext i32 %.0156210 to i64               ; 2 uses
  %i.gf = sext i32 %.0155212 to i64               ; 8 uses
  %wide.trip.count269 = zext nneg i32 %i.ff to i64 ; 10 uses
  %invariant.gep307 = getelementptr i8, ptr %i.fc, i64 %i.ge ; 8 uses
  %min.iters.check329 = icmp ult i32 %i.ff, 4
  br i1 %min.iters.check329, label %.lr.ph200.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check344
  %i.gg = shl nsw i64 %i.gf, 1
  %scevgep324 = getelementptr i8, ptr %scevgep, i64 %i.gg
  %i.gh = add nsw i64 %i.gf, %wide.trip.count269
  %i.gi = shl nsw i64 %i.gh, 1
  %scevgep326 = getelementptr i8, ptr %scevgep325, i64 %i.gi
  %i.gj = getelementptr i8, ptr %scevgep327, i64 %i.ge
  %scevgep328 = getelementptr i8, ptr %i.gj, i64 %wide.trip.count269
  %bound0 = icmp ult ptr %scevgep324, %scevgep328
  %bound1 = icmp ult ptr %invariant.gep307, %scevgep326
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph200.preheader, label %vector.main.loop.iter.check330

vector.main.loop.iter.check330:                   ; preds = %vector.memcheck
  %min.iters.check331 = icmp ult i32 %i.ff, 16
  br i1 %min.iters.check331, label %vec.epilog.ph348, label %vector.ph332

vector.ph332:                                     ; preds = %vector.main.loop.iter.check330
  %i.gk = and i64 %wide.trip.count269, 12
  %n.vec333 = and i64 %wide.trip.count269, 2147483632 ; 5 uses
  %i.gl = add nsw i64 %n.vec333, %i.gf
  %broadcast.splatinsert334 = insertelement <8 x i8> poison, i8 %i.fl, i64 0 ; 2 uses
  br label %vector.body336

vector.body336:                                   ; preds = %vector.ph332, %vector.body336
  %index337 = phi i64 [ 0, %vector.ph332 ], [ %index.next341, %vector.body336 ] ; 3 uses
  %i.gm = add i64 %index337, %i.gf                ; 2 uses
  %i.gn = getelementptr i8, ptr %invariant.gep307, i64 %index337 ; 2 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 8
  %wide.load338 = load <8 x i8>, ptr %i.gn, align 1, !tbaa !17, !alias.scope !75
  %wide.load339 = load <8 x i8>, ptr %i.go, align 1, !tbaa !17, !alias.scope !75
  %i.gp = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.gm
  %i.gq = getelementptr [2 x i8], ptr %i.c, i64 %i.gm
  %i.gr = getelementptr i8, ptr %i.gq, i64 16
  %interleaved.vec = shufflevector <8 x i8> %broadcast.splatinsert334, <8 x i8> %wide.load338, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.gp, align 1, !tbaa !17, !alias.scope !76, !noalias !75
  %interleaved.vec340 = shufflevector <8 x i8> %broadcast.splatinsert334, <8 x i8> %wide.load339, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  store <16 x i8> %interleaved.vec340, ptr %i.gr, align 1, !tbaa !17, !alias.scope !76, !noalias !75
  %index.next341 = add nuw i64 %index337, 16      ; 2 uses
  %i.gs = icmp eq i64 %index.next341, %n.vec333
  br i1 %i.gs, label %middle.block342, label %vector.body336, !llvm.loop !63

middle.block342:                                  ; preds = %vector.body336
  %cmp.n343 = icmp eq i64 %n.vec333, %wide.trip.count269
  br i1 %cmp.n343, label %.loopexit, label %vec.epilog.iter.check345

vec.epilog.iter.check345:                         ; preds = %middle.block342
  %min.epilog.iters.check347 = icmp eq i64 %i.gk, 0
  br i1 %min.epilog.iters.check347, label %.lr.ph200.preheader, label %vec.epilog.ph348, !prof !77

vec.epilog.ph348:                                 ; preds = %vector.main.loop.iter.check330, %vec.epilog.iter.check345
  %vec.epilog.resume.val349 = phi i64 [ %n.vec333, %vec.epilog.iter.check345 ], [ 0, %vector.main.loop.iter.check330 ]
  %n.vec350 = and i64 %wide.trip.count269, 2147483644 ; 4 uses
  %i.gt = add nsw i64 %n.vec350, %i.gf
  %broadcast.splatinsert351 = insertelement <4 x i8> poison, i8 %i.fl, i64 0
  %invariant.gep398 = getelementptr [2 x i8], ptr %i.c, i64 %i.gf
  br label %vec.epilog.vector.body353

vec.epilog.vector.body353:                        ; preds = %vec.epilog.vector.body353, %vec.epilog.ph348
  %index354 = phi i64 [ %vec.epilog.resume.val349, %vec.epilog.ph348 ], [ %index.next357, %vec.epilog.vector.body353 ] ; 3 uses
  %i.gu = getelementptr i8, ptr %invariant.gep307, i64 %index354
  %wide.load355 = load <4 x i8>, ptr %i.gu, align 1, !tbaa !17, !alias.scope !75
  %gep399 = getelementptr [2 x i8], ptr %invariant.gep398, i64 %index354
  %interleaved.vec356 = shufflevector <4 x i8> %broadcast.splatinsert351, <4 x i8> %wide.load355, <8 x i32> <i32 0, i32 4, i32 0, i32 5, i32 0, i32 6, i32 0, i32 7>
  store <8 x i8> %interleaved.vec356, ptr %gep399, align 1, !tbaa !17, !alias.scope !76, !noalias !75
  %index.next357 = add nuw i64 %index354, 4       ; 2 uses
  %i.gv = icmp eq i64 %index.next357, %n.vec350
  br i1 %i.gv, label %vec.epilog.middle.block358, label %vec.epilog.vector.body353, !llvm.loop !64

vec.epilog.middle.block358:                       ; preds = %vec.epilog.vector.body353
  %cmp.n359 = icmp eq i64 %n.vec350, %wide.trip.count269
  br i1 %cmp.n359, label %.loopexit, label %.lr.ph200.preheader

.lr.ph200.preheader:                              ; preds = %iter.check344, %vector.memcheck, %vec.epilog.iter.check345, %vec.epilog.middle.block358
  %indvars.iv264.ph = phi i64 [ %i.gf, %iter.check344 ], [ %i.gf, %vector.memcheck ], [ %i.gl, %vec.epilog.iter.check345 ], [ %i.gt, %vec.epilog.middle.block358 ] ; 2 uses
  %indvars.iv262.ph = phi i64 [ 0, %iter.check344 ], [ 0, %vector.memcheck ], [ %n.vec333, %vec.epilog.iter.check345 ], [ %n.vec350, %vec.epilog.middle.block358 ] ; 3 uses
  %xtraiter389 = and i64 %wide.trip.count269, 3   ; 2 uses
  %lcmp.mod390.not = icmp eq i64 %xtraiter389, 0
  br i1 %lcmp.mod390.not, label %.lr.ph200.prol.loopexit, label %.lr.ph200.prol

.lr.ph200.prol:                                   ; preds = %.lr.ph200.preheader, %.lr.ph200.prol
  %indvars.iv264.prol = phi i64 [ %indvars.iv.next265.prol, %.lr.ph200.prol ], [ %indvars.iv264.ph, %.lr.ph200.preheader ] ; 2 uses
  %indvars.iv262.prol = phi i64 [ %indvars.iv.next263.prol, %.lr.ph200.prol ], [ %indvars.iv262.ph, %.lr.ph200.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph200.prol ], [ 0, %.lr.ph200.preheader ]
  %gep308.prol = getelementptr i8, ptr %invariant.gep307, i64 %indvars.iv262.prol
  %i.gw = load i8, ptr %gep308.prol, align 1, !tbaa !17
  %i.gx = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv264.prol ; 2 uses
  store i8 %i.fl, ptr %i.gx, align 1, !tbaa !17
  %.sroa.4.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.gx, i64 1
  store i8 %i.gw, ptr %.sroa.4.0..sroa_idx.prol, align 1, !tbaa !17
  %indvars.iv.next265.prol = add nsw i64 %indvars.iv264.prol, 1 ; 2 uses
  %indvars.iv.next263.prol = add nuw nsw i64 %indvars.iv262.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter389
  br i1 %prol.iter.cmp.not, label %.lr.ph200.prol.loopexit, label %.lr.ph200.prol, !llvm.loop !65

.lr.ph200.prol.loopexit:                          ; preds = %.lr.ph200.prol, %.lr.ph200.preheader
  %indvars.iv264.unr = phi i64 [ %indvars.iv264.ph, %.lr.ph200.preheader ], [ %indvars.iv.next265.prol, %.lr.ph200.prol ]
  %indvars.iv262.unr = phi i64 [ %indvars.iv262.ph, %.lr.ph200.preheader ], [ %indvars.iv.next263.prol, %.lr.ph200.prol ]
  %i.gy = sub nsw i64 %indvars.iv262.ph, %wide.trip.count269
  %i.gz = icmp ugt i64 %i.gy, -4
  br i1 %i.gz, label %.loopexit, label %.lr.ph200

.lr.ph200:                                        ; preds = %.lr.ph200.prol.loopexit, %.lr.ph200
  %indvars.iv264 = phi i64 [ %indvars.iv.next265.3, %.lr.ph200 ], [ %indvars.iv264.unr, %.lr.ph200.prol.loopexit ] ; 5 uses
  %indvars.iv262 = phi i64 [ %indvars.iv.next263.3, %.lr.ph200 ], [ %indvars.iv262.unr, %.lr.ph200.prol.loopexit ] ; 5 uses
  %gep308 = getelementptr i8, ptr %invariant.gep307, i64 %indvars.iv262
  %i.ha = load i8, ptr %gep308, align 1, !tbaa !17
  %i.hb = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv264 ; 2 uses
  store i8 %i.fl, ptr %i.hb, align 1, !tbaa !17
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hb, i64 1
  store i8 %i.ha, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !17
  %i.hc = getelementptr i8, ptr %invariant.gep307, i64 %indvars.iv262
  %gep308.1 = getelementptr i8, ptr %i.hc, i64 1
  %i.hd = load i8, ptr %gep308.1, align 1, !tbaa !17
  %i.he = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv264 ; 2 uses
  %i.hf = getelementptr i8, ptr %i.he, i64 2
  store i8 %i.fl, ptr %i.hf, align 1, !tbaa !17
  %.sroa.4.0..sroa_idx.1 = getelementptr i8, ptr %i.he, i64 3
  store i8 %i.hd, ptr %.sroa.4.0..sroa_idx.1, align 1, !tbaa !17
  %i.hg = getelementptr i8, ptr %invariant.gep307, i64 %indvars.iv262
  %gep308.2 = getelementptr i8, ptr %i.hg, i64 2
  %i.hh = load i8, ptr %gep308.2, align 1, !tbaa !17
  %i.hi = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv264 ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hi, i64 4
  store i8 %i.fl, ptr %i.hj, align 1, !tbaa !17
  %.sroa.4.0..sroa_idx.2 = getelementptr i8, ptr %i.hi, i64 5
  store i8 %i.hh, ptr %.sroa.4.0..sroa_idx.2, align 1, !tbaa !17
  %i.hk = getelementptr i8, ptr %invariant.gep307, i64 %indvars.iv262
  %gep308.3 = getelementptr i8, ptr %i.hk, i64 3
  %i.hl = load i8, ptr %gep308.3, align 1, !tbaa !17
  %i.hm = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv264 ; 2 uses
  %i.hn = getelementptr i8, ptr %i.hm, i64 6
  store i8 %i.fl, ptr %i.hn, align 1, !tbaa !17
  %.sroa.4.0..sroa_idx.3 = getelementptr i8, ptr %i.hm, i64 7
  store i8 %i.hl, ptr %.sroa.4.0..sroa_idx.3, align 1, !tbaa !17
  %indvars.iv.next265.3 = add nsw i64 %indvars.iv264, 4
  %indvars.iv.next263.3 = add nuw nsw i64 %indvars.iv262, 4 ; 2 uses
  %exitcond270.not.3 = icmp eq i64 %indvars.iv.next263.3, %wide.trip.count269
  br i1 %exitcond270.not.3, label %.loopexit, label %.lr.ph200, !llvm.loop !66

.lr.ph197:                                        ; preds = %.lr.ph197, %.lr.ph197.preheader.new
  %indvars.iv255 = phi i64 [ %i.gb, %.lr.ph197.preheader.new ], [ %indvars.iv.next256.1, %.lr.ph197 ] ; 3 uses
  %indvars.iv253 = phi i64 [ 0, %.lr.ph197.preheader.new ], [ %indvars.iv.next254.1, %.lr.ph197 ] ; 3 uses
  %niter388 = phi i64 [ 0, %.lr.ph197.preheader.new ], [ %niter388.next.1, %.lr.ph197 ]
  %gep306 = getelementptr i8, ptr %invariant.gep305, i64 %indvars.iv253
  %i.ho = load i8, ptr %gep306, align 1, !tbaa !17 ; 2 uses
  %i.hp = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv255 ; 4 uses
  store i8 %i.fl, ptr %i.hp, align 1, !tbaa !17
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 1
  store i8 %i.ho, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !17
  %i.hq = getelementptr i8, ptr %i.hp, i64 2
  store i8 %i.fl, ptr %i.hq, align 1, !tbaa !17
  %.sroa.5.0..sroa_idx8 = getelementptr i8, ptr %i.hp, i64 3
  store i8 %i.ho, ptr %.sroa.5.0..sroa_idx8, align 1, !tbaa !17
  %i.hr = getelementptr i8, ptr %invariant.gep305, i64 %indvars.iv253
  %gep306.1 = getelementptr i8, ptr %i.hr, i64 1
  %i.hs = load i8, ptr %gep306.1, align 1, !tbaa !17 ; 2 uses
  %i.ht = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv255 ; 4 uses
  %i.hu = getelementptr i8, ptr %i.ht, i64 4
  store i8 %i.fl, ptr %i.hu, align 1, !tbaa !17
  %.sroa.5.0..sroa_idx.1 = getelementptr i8, ptr %i.ht, i64 5
  store i8 %i.hs, ptr %.sroa.5.0..sroa_idx.1, align 1, !tbaa !17
  %i.hv = getelementptr i8, ptr %i.ht, i64 6
  store i8 %i.fl, ptr %i.hv, align 1, !tbaa !17
  %.sroa.5.0..sroa_idx8.1 = getelementptr i8, ptr %i.ht, i64 7
  store i8 %i.hs, ptr %.sroa.5.0..sroa_idx8.1, align 1, !tbaa !17
  %indvars.iv.next256.1 = add nsw i64 %indvars.iv255, 4 ; 2 uses
  %indvars.iv.next254.1 = add nuw nsw i64 %indvars.iv253, 2 ; 2 uses
  %niter388.next.1 = add i64 %niter388, 2         ; 2 uses
  %niter388.ncmp.1 = icmp eq i64 %niter388.next.1, %unroll_iter387
  br i1 %niter388.ncmp.1, label %.loopexit.loopexit363.unr-lcssa, label %.lr.ph197, !llvm.loop !67

bb.i:                                             ; preds = %bb.i, %.lr.ph194.new
  %indvars.iv246 = phi i64 [ %i.fx, %.lr.ph194.new ], [ %indvars.iv.next247.1, %bb.i ] ; 3 uses
  %indvars.iv244 = phi i64 [ 0, %.lr.ph194.new ], [ %indvars.iv.next245.1, %bb.i ] ; 3 uses
  %niter382 = phi i64 [ 0, %.lr.ph194.new ], [ %niter382.next.1, %bb.i ]
  %gep304 = getelementptr i8, ptr %invariant.gep303, i64 %indvars.iv244
  %i.hw = load i8, ptr %gep304, align 1, !tbaa !17
  %i.hx = zext i8 %i.hw to i64
  %i.hy = shl nuw nsw i64 %i.hx, 8
  %i.hz = or disjoint i64 %i.hy, %i.fv
  %i.ia = mul nuw i64 %i.hz, 281479271743489
  %i.ib = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv246
  store i64 %i.ia, ptr %i.ib, align 1, !tbaa !23
  %i.ic = getelementptr i8, ptr %invariant.gep303, i64 %indvars.iv244
  %gep304.1 = getelementptr i8, ptr %i.ic, i64 1
  %i.id = load i8, ptr %gep304.1, align 1, !tbaa !17
  %i.ie = zext i8 %i.id to i64
  %i.if = shl nuw nsw i64 %i.ie, 8
  %i.ig = or disjoint i64 %i.if, %i.fv
  %i.ih = mul nuw i64 %i.ig, 281479271743489
  %i.ii = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv246
  %i.ij = getelementptr i8, ptr %i.ii, i64 8
  store i64 %i.ih, ptr %i.ij, align 1, !tbaa !23
  %indvars.iv.next247.1 = add nsw i64 %indvars.iv246, 8 ; 2 uses
  %indvars.iv.next245.1 = add nuw nsw i64 %indvars.iv244, 2 ; 2 uses
  %niter382.next.1 = add i64 %niter382, 2         ; 2 uses
  %niter382.ncmp.1 = icmp eq i64 %niter382.next.1, %unroll_iter381
  br i1 %niter382.ncmp.1, label %.loopexit.loopexit364.unr-lcssa, label %bb.i, !llvm.loop !68

bb.j:                                             ; preds = %bb.j, %.lr.ph191.new
  %indvars.iv237 = phi i64 [ %i.fs, %.lr.ph191.new ], [ %indvars.iv.next238.1, %bb.j ] ; 3 uses
  %indvars.iv235 = phi i64 [ 0, %.lr.ph191.new ], [ %indvars.iv.next236.1, %bb.j ] ; 3 uses
  %niter375 = phi i64 [ 0, %.lr.ph191.new ], [ %niter375.next.1, %bb.j ]
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv235
  %i.ik = load i8, ptr %gep, align 1, !tbaa !17
  %i.il = zext i8 %i.ik to i64
  %i.im = shl nuw nsw i64 %i.il, 8
  %i.in = or disjoint i64 %i.im, %i.fq
end_hunk_0
begin_hunk_1_@HUF_readDTableX2_wksp:bb.a
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next
  store i32 %i.af, ptr %i.ak, align 4, !tbaa !16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.1
  %i.am = load i32, ptr %i.al, align 4, !tbaa !16
  %i.an = add i32 %i.am, %i.aj                    ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.1
  store i32 %i.aj, ptr %i.ao, align 4, !tbaa !16
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.2
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !16
  %i.ar = add i32 %i.aq, %i.an                    ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.2
  store i32 %i.an, ptr %i.as, align 4, !tbaa !16
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !79

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.093116.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod334 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod334)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %.093116.epil = phi i32 [ %.093116.epil.init, %.lr.ph.epil.preheader ], [ %i.av, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.epil
  %i.au = load i32, ptr %i.at, align 4, !tbaa !16
  %i.av = add i32 %i.au, %.093116.epil            ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.epil
  store i32 %.093116.epil, ptr %i.aw, align 4, !tbaa !16
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !80

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.093.lcssa = phi i32 [ 0, %.preheader ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ], [ %i.av, %.lr.ph.epil ] ; 2 uses
  store i32 %.093.lcssa, ptr %i.h, align 4, !tbaa !16
  %i.ax = zext i32 %i.y to i64                    ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ax
  store i32 %.093.lcssa, ptr %i.ay, align 4, !tbaa !16
  %i.az = load i32, ptr %i.c, align 4, !tbaa !16  ; 4 uses
  %.not = icmp eq i32 %i.az, 0
  br i1 %.not, label %._crit_edge121, label %.lr.ph120

.lr.ph120:                                        ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 736 ; 3 uses
  %wide.trip.count163 = zext i32 %i.az to i64     ; 2 uses
  %xtraiter335 = and i64 %wide.trip.count163, 1
  %i.bb = icmp eq i32 %i.az, 1
  br i1 %i.bb, label %.epil.preheader, label %.lr.ph120.new

.lr.ph120.new:                                    ; preds = %.lr.ph120
  %unroll_iter339 = and i64 %wide.trip.count163, 4294967294
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph120.new
  %indvars.iv160 = phi i64 [ 0, %.lr.ph120.new ], [ %indvars.iv.next161.1, %bb.g ] ; 4 uses
  %niter340 = phi i64 [ 0, %.lr.ph120.new ], [ %niter340.next.1, %bb.g ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv160
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.be ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !16 ; 2 uses
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !16
  %i.bi = trunc i64 %indvars.iv160 to i8
  %i.bj = zext i32 %i.bg to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bj
  store i8 %i.bi, ptr %i.bk, align 1, !tbaa !127
  %indvars.iv.next161 = or disjoint i64 %indvars.iv160, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next161
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !17
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bn ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !16 ; 2 uses
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !16
  %i.br = trunc i64 %indvars.iv.next161 to i8
  %i.bs = zext i32 %i.bp to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bs
  store i8 %i.br, ptr %i.bt, align 1, !tbaa !127
  %indvars.iv.next161.1 = add nuw nsw i64 %indvars.iv160, 2 ; 2 uses
  %niter340.next.1 = add i64 %niter340, 2         ; 2 uses
  %niter340.ncmp.1 = icmp eq i64 %niter340.next.1, %unroll_iter339
  br i1 %niter340.ncmp.1, label %._crit_edge121.loopexit.unr-lcssa, label %bb.g, !llvm.loop !81

._crit_edge121.loopexit.unr-lcssa:                ; preds = %bb.g
  %lcmp.mod337.not = icmp eq i64 %xtraiter335, 0
  br i1 %lcmp.mod337.not, label %._crit_edge121, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge121.loopexit.unr-lcssa, %.lr.ph120
  %indvars.iv160.epil.init = phi i64 [ 0, %.lr.ph120 ], [ %indvars.iv.next161.1, %._crit_edge121.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod338 = trunc i32 %i.az to i1
  call void @llvm.assume(i1 %lcmp.mod338)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv160.epil.init
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !17
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !16 ; 2 uses
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !16
  %i.ca = trunc i64 %indvars.iv160.epil.init to i8
  %i.cb = zext i32 %i.by to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cb
  store i8 %i.ca, ptr %i.cc, align 1, !tbaa !127
  br label %._crit_edge121

._crit_edge121:                                   ; preds = %.epil.preheader, %._crit_edge121.loopexit.unr-lcssa, %._crit_edge
  store i32 0, ptr %i.h, align 4, !tbaa !16
  %i.cd = xor i32 %i.o, -1
  %i.ce = add nsw i32 %spec.store.select, %i.cd   ; 2 uses
  br i1 %i.z, label %.lr.ph125.preheader, label %HUF_fillDTableX2.exit

.lr.ph125.preheader:                              ; preds = %._crit_edge121
  %wide.trip.count169 = zext i32 %indvars.iv158 to i64 ; 4 uses
  %i.cf = add nsw i64 %wide.trip.count169, -1     ; 3 uses
  %xtraiter341 = and i64 %i.cf, 1
  %i.cg = icmp eq i32 %indvars.iv158, 2
  br i1 %i.cg, label %.lr.ph125.epil.preheader, label %.lr.ph125.preheader.new

.lr.ph125.preheader.new:                          ; preds = %.lr.ph125.preheader
  %unroll_iter345 = and i64 %i.cf, -2
  br label %.lr.ph125

.lr.ph125:                                        ; preds = %.lr.ph125, %.lr.ph125.preheader.new
  %indvars.iv165 = phi i64 [ 1, %.lr.ph125.preheader.new ], [ %indvars.iv.next166.1, %.lr.ph125 ] ; 5 uses
  %.090122 = phi i32 [ 0, %.lr.ph125.preheader.new ], [ %i.ct, %.lr.ph125 ] ; 2 uses
  %niter346 = phi i64 [ 0, %.lr.ph125.preheader.new ], [ %niter346.next.1, %.lr.ph125 ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv165
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !16
  %i.cj = trunc nuw i64 %indvars.iv165 to i32
  %i.ck = add i32 %i.ce, %i.cj
  %i.cl = shl i32 %i.ci, %i.ck
  %i.cm = add i32 %i.cl, %.090122                 ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv165
  store i32 %.090122, ptr %i.cn, align 4, !tbaa !16
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next166
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !16
  %i.cq = trunc nuw i64 %indvars.iv.next166 to i32
  %i.cr = add i32 %i.ce, %i.cq
  %i.cs = shl i32 %i.cp, %i.cr
  %i.ct = add i32 %i.cs, %i.cm                    ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next166
  store i32 %i.cm, ptr %i.cu, align 4, !tbaa !16
  %indvars.iv.next166.1 = add nuw nsw i64 %indvars.iv165, 2 ; 2 uses
  %niter346.next.1 = add nuw i64 %niter346, 2     ; 2 uses
  %niter346.ncmp.1 = icmp eq i64 %niter346.next.1, %unroll_iter345
  br i1 %niter346.ncmp.1, label %._crit_edge126.unr-lcssa, label %.lr.ph125, !llvm.loop !82

._crit_edge126.unr-lcssa:                         ; preds = %.lr.ph125
  %lcmp.mod343.not = icmp eq i64 %xtraiter341, 0
  br i1 %lcmp.mod343.not, label %._crit_edge126, label %.lr.ph125.epil.preheader

.lr.ph125.epil.preheader:                         ; preds = %._crit_edge126.unr-lcssa, %.lr.ph125.preheader
  %indvars.iv165.epil.init = phi i64 [ 1, %.lr.ph125.preheader ], [ %indvars.iv.next166.1, %._crit_edge126.unr-lcssa ]
  %.090122.epil.init = phi i32 [ 0, %.lr.ph125.preheader ], [ %i.ct, %._crit_edge126.unr-lcssa ]
  %lcmp.mod344 = trunc i64 %i.cf to i1
  call void @llvm.assume(i1 %lcmp.mod344)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv165.epil.init
  store i32 %.090122.epil.init, ptr %i.cv, align 4, !tbaa !16
  br label %._crit_edge126

._crit_edge126:                                   ; preds = %._crit_edge126.unr-lcssa, %.lr.ph125.epil.preheader
  %i.cw = sub i32 %i.q, %.091                     ; 3 uses
  %i.cx = add nuw nsw i32 %spec.store.select, 1
  %i.cy = sub i32 %i.cx, %i.cw
  %i.cz = icmp ult i32 %i.cw, %i.cy
  br i1 %i.cz, label %.lr.ph129.preheader, label %._crit_edge134.split

.lr.ph129.preheader:                              ; preds = %._crit_edge126
  %i.da = zext i32 %indvars.iv177 to i64          ; 2 uses
  %i.db = add i32 %spec.store.select, %indvars.iv182
  %wide.trip.count175 = zext i32 %indvars.iv158 to i64
  %i.dc = add nsw i64 %wide.trip.count169, -1     ; 3 uses
  %min.iters.check = icmp ult i64 %i.dc, 8
  %n.vec = and i64 %i.dc, -8                      ; 3 uses
  %i.dd = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br label %.lr.ph129

.lr.ph129:                                        ; preds = %.lr.ph129.preheader, %._crit_edge130
  %indvar = phi i64 [ 0, %.lr.ph129.preheader ], [ %indvar.next, %._crit_edge130 ] ; 2 uses
  %indvars.iv179 = phi i64 [ %i.da, %.lr.ph129.preheader ], [ %indvars.iv.next180, %._crit_edge130 ] ; 3 uses
  %i.de = getelementptr inbounds nuw [52 x i8], ptr %3, i64 %indvars.iv179 ; 6 uses
  %i.df = trunc nuw i64 %indvars.iv179 to i32     ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph129
  %i.dg = add i64 %indvar, %i.da
  %i.dh = mul i64 %i.dg, 52
  %i.di = add i64 %i.dh, -1
  %diff.check = icmp ult i64 %i.di, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.df, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dj = or disjoint i64 %index, 1               ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dj ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load = load <4 x i32>, ptr %i.dk, align 4, !tbaa !16
  %wide.load224 = load <4 x i32>, ptr %i.dl, align 4, !tbaa !16
  %i.dm = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.dn = lshr <4 x i32> %wide.load224, %broadcast.splat
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dj ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <4 x i32> %i.dm, ptr %i.do, align 4, !tbaa !16
  store <4 x i32> %i.dn, ptr %i.dp, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge130, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph129, %middle.block
  %indvars.iv171.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph129 ], [ %i.dd, %middle.block ] ; 4 uses
  %i.dr = sub nsw i64 %wide.trip.count169, %indvars.iv171.ph
  %xtraiter347 = and i64 %i.dr, 3                 ; 2 uses
  %lcmp.mod348.not = icmp eq i64 %xtraiter347, 0
  br i1 %lcmp.mod348.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv171.prol = phi i64 [ %indvars.iv.next172.prol, %scalar.ph.prol ], [ %indvars.iv171.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv171.prol
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !16
  %i.du = lshr i32 %i.dt, %i.df
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv171.prol
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !16
  %indvars.iv.next172.prol = add nuw nsw i64 %indvars.iv171.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter347
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !84

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv171.unr = phi i64 [ %indvars.iv171.ph, %scalar.ph.preheader ], [ %indvars.iv.next172.prol, %scalar.ph.prol ]
  %i.dw = sub nsw i64 %indvars.iv171.ph, %wide.trip.count169
  %i.dx = icmp ugt i64 %i.dw, -4
  br i1 %i.dx, label %._crit_edge130, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv171 = phi i64 [ %indvars.iv.next172.3, %scalar.ph ], [ %indvars.iv171.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv171
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !16
  %i.ea = lshr i32 %i.dz, %i.df
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv171
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !16
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next172
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !16
  %i.ee = lshr i32 %i.ed, %i.df
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next172
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !16
  %indvars.iv.next172.1 = add nuw nsw i64 %indvars.iv171, 2 ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next172.1
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !16
  %i.ei = lshr i32 %i.eh, %i.df
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next172.1
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !16
  %indvars.iv.next172.2 = add nuw nsw i64 %indvars.iv171, 3 ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next172.2
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !16
  %i.em = lshr i32 %i.el, %i.df
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next172.2
  store i32 %i.em, ptr %i.en, align 4, !tbaa !16
  %indvars.iv.next172.3 = add nuw nsw i64 %indvars.iv171, 4 ; 2 uses
  %exitcond176.not.3 = icmp eq i64 %indvars.iv.next172.3, %wide.trip.count175
  br i1 %exitcond176.not.3, label %._crit_edge130, label %scalar.ph, !llvm.loop !85

._crit_edge130:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next180 to i32
  %exitcond184.not = icmp eq i32 %i.db, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond184.not, label %._crit_edge134.split, label %.lr.ph129, !llvm.loop !86

._crit_edge134.split:                             ; preds = %._crit_edge130, %._crit_edge126
  %i.eo = getelementptr i8, ptr %3, i64 736       ; 14 uses
  %i.ep = sub nsw i32 %i.q, %spec.store.select
  %.not76.i = icmp slt i32 %.091, 1
  br i1 %.not76.i, label %HUF_fillDTableX2.exit, label %.lr.ph78.i.preheader

.lr.ph78.i.preheader:                             ; preds = %._crit_edge134.split
  %scevgep = getelementptr i8, ptr %0, i64 4
  %scevgep244 = getelementptr i8, ptr %3, i64 736
  %scevgep246 = getelementptr i8, ptr %3, i64 737
  %scevgep248 = getelementptr i8, ptr %0, i64 4
  %scevgep250 = getelementptr i8, ptr %0, i64 20
  %scevgep273 = getelementptr i8, ptr %0, i64 4
  %scevgep296 = getelementptr i8, ptr %0, i64 4
  %i.eq = add i64 %i.a, 735
  %i.er = add i64 %i.a, 735
  %i.es = add i64 %i.a, 735
  br label %.lr.ph78.i

.lr.ph78.i:                                       ; preds = %.lr.ph78.i.preheader, %.loopexit.i
  %indvars.iv96.i = phi i64 [ %indvars.iv.next97.i, %.loopexit.i ], [ 1, %.lr.ph78.i.preheader ] ; 4 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv96.i
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !16 ; 9 uses
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1 ; 3 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next97.i
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !16 ; 14 uses
  %i.ex = trunc nuw nsw i64 %indvars.iv96.i to i32
  %i.ey = sub i32 %i.q, %i.ex                     ; 10 uses
  %i.ez = sub i32 %spec.store.select, %i.ey       ; 3 uses
  %.not56.i = icmp ult i32 %i.ez, %i.cw
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv96.i
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !16 ; 14 uses
  br i1 %.not56.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %.lr.ph78.i
  %i.fc = and i32 %i.ez, 31
  %i.fd = shl nuw i32 1, %i.fc                    ; 4 uses
  %.not5766.i = icmp eq i32 %i.eu, %i.ew
  br i1 %.not5766.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.fe = add i32 %i.ey, %i.ep                    ; 3 uses
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.fe, i32 1)
  %i.ff = zext i32 %i.ey to i64
  %i.fg = getelementptr inbounds nuw [52 x i8], ptr %3, i64 %i.ff ; 2 uses
  %i.fh = icmp sgt i32 %i.fe, 1
  %i.fi = shl i32 %i.ey, 16
  %i.fj = add i32 %i.fi, 16777216                 ; 9 uses
  %i.fk = zext nneg i32 %spec.store.select.i to i64 ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fk ; 2 uses
  %.not61.i = icmp sgt i32 %i.fe, %.091
  %i.fm = add i32 %i.ey, %i.q
  %i.fn = sext i32 %i.eu to i64                   ; 12 uses
  br i1 %.not61.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  switch i32 %i.fd, label %.preheader.i.us.i [
    i32 2, label %.loopexit.i.us.us.i.preheader
    i32 4, label %.loopexit.i.us.us74.i.preheader
  ]

.loopexit.i.us.us.i.preheader:                    ; preds = %.lr.ph.split.us.i
  %i.fo = sub i32 %i.ew, %i.eu
  %.neg402 = add i32 %i.eu, 1
  %xtraiter377 = and i32 %i.fo, 1
  %lcmp.mod378.not = icmp eq i32 %xtraiter377, 0
  br i1 %lcmp.mod378.not, label %.loopexit.i.us.us.i.prol.loopexit, label %.loopexit.i.us.us.i.prol

.loopexit.i.us.us.i.prol:                         ; preds = %.loopexit.i.us.us.i.preheader
  %i.fp = sext i32 %i.fb to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.fp
  %i.fr = getelementptr inbounds i8, ptr %i.eo, i64 %i.fn
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !127
  %i.ft = zext i8 %i.fs to i32
  %i.fu = or disjoint i32 %i.fj, %i.ft
  %i.fv = zext i32 %i.fu to i64
  %i.fw = mul nuw i64 %i.fv, 4294967297
  store i64 %i.fw, ptr %i.fq, align 2
  %i.fx = add i32 %i.fb, 2
  %indvars.iv.next91.i.prol = add nsw i64 %i.fn, 1
  br label %.loopexit.i.us.us.i.prol.loopexit

.loopexit.i.us.us.i.prol.loopexit:                ; preds = %.loopexit.i.us.us.i.prol, %.loopexit.i.us.us.i.preheader
  %indvars.iv90.i.unr = phi i64 [ %i.fn, %.loopexit.i.us.us.i.preheader ], [ %indvars.iv.next91.i.prol, %.loopexit.i.us.us.i.prol ]
  %.05267.us.us.i.unr = phi i32 [ %i.fb, %.loopexit.i.us.us.i.preheader ], [ %i.fx, %.loopexit.i.us.us.i.prol ]
  %i.fy = icmp eq i32 %i.ew, %.neg402
  br i1 %i.fy, label %.loopexit.i, label %.loopexit.i.us.us.i

.loopexit.i.us.us74.i.preheader:                  ; preds = %.lr.ph.split.us.i
  %i.fz = xor i32 %i.eu, -1
  %i.ga = add i32 %i.ew, %i.fz                    ; 2 uses
  %i.gb = zext i32 %i.ga to i64
  %i.gc = add nuw nsw i64 %i.gb, 1                ; 2 uses
  %min.iters.check256 = icmp ult i32 %i.ga, 31
  br i1 %min.iters.check256, label %.loopexit.i.us.us74.i.preheader330, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.loopexit.i.us.us74.i.preheader
  %i.gd = xor i32 %i.eu, -1
  %i.ge = add i32 %i.ew, %i.gd                    ; 2 uses
  %mul.result = shl i32 %i.ge, 2
  %mul.overflow = icmp ugt i32 %i.ge, 1073741823
  %i.gf = add i32 %i.fb, %mul.result
  %i.gg = icmp slt i32 %i.gf, %i.fb
  %i.gh = or i1 %i.gg, %mul.overflow
  br i1 %i.gh, label %.loopexit.i.us.us74.i.preheader330, label %vector.memcheck243

vector.memcheck243:                               ; preds = %vector.scevcheck
  %scevgep245 = getelementptr i8, ptr %scevgep244, i64 %i.fn
  %6 = xor i32 %i.eu, -1
  %7 = add i32 %i.ew, %6
  %8 = zext i32 %7 to i64                         ; 2 uses
  %i.gi = getelementptr i8, ptr %scevgep246, i64 %i.fn
  %scevgep247 = getelementptr i8, ptr %i.gi, i64 %8
  %i.gj = sext i32 %i.fb to i64
  %i.gk = shl nsw i64 %i.gj, 2                    ; 2 uses
  %scevgep249 = getelementptr i8, ptr %scevgep248, i64 %i.gk
  %i.gl = shl nuw nsw i64 %8, 4
  %i.gm = getelementptr i8, ptr %scevgep250, i64 %i.gl
  %scevgep251 = getelementptr i8, ptr %i.gm, i64 %i.gk
  %bound0252 = icmp ult ptr %scevgep245, %scevgep251
  %bound1253 = icmp ult ptr %scevgep249, %scevgep247
  %found.conflict254 = and i1 %bound0252, %bound1253
  br i1 %found.conflict254, label %.loopexit.i.us.us74.i.preheader330, label %vector.ph257

vector.ph257:                                     ; preds = %vector.memcheck243
  %n.vec258 = and i64 %i.gc, 8589934590           ; 4 uses
  %i.gn = add nsw i64 %n.vec258, %i.fn
  %i.go = trunc i64 %n.vec258 to i32
  %i.gp = shl i32 %i.go, 2
  %i.gq = add i32 %i.fb, %i.gp
  %broadcast.splatinsert259 = insertelement <2 x i32> poison, i32 %i.fj, i64 0
  %broadcast.splat260 = shufflevector <2 x i32> %broadcast.splatinsert259, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body261

vector.body261:                                   ; preds = %vector.body261, %vector.ph257
  %index262 = phi i64 [ 0, %vector.ph257 ], [ %index.next267, %vector.body261 ] ; 3 uses
  %i.gr = add i64 %index262, %i.fn                ; 2 uses
  %i.gs = trunc i64 %index262 to i32
  %i.gt = shl i32 %i.gs, 2
  %i.gu = add i32 %i.fb, %i.gt                    ; 2 uses
  %i.gv = add i32 %i.gu, 4
  %i.gw = sext i32 %i.gu to i64
  %i.gx = sext i32 %i.gv to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.gw
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.gx
  %i.ha = getelementptr inbounds i8, ptr %i.eo, i64 %i.gr
  %i.hb = getelementptr i8, ptr %i.eo, i64 %i.gr
  %i.hc = getelementptr i8, ptr %i.hb, i64 1
  %i.hd = load i8, ptr %i.ha, align 1, !tbaa !127, !alias.scope !128, !noalias !129
  %broadcast.splatinsert263 = insertelement <2 x i8> poison, i8 %i.hd, i64 0
  %broadcast.splat264 = shufflevector <2 x i8> %broadcast.splatinsert263, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.he = load i8, ptr %i.hc, align 1, !tbaa !127, !alias.scope !128, !noalias !129
  %broadcast.splatinsert265 = insertelement <2 x i8> poison, i8 %i.he, i64 0
  %broadcast.splat266 = shufflevector <2 x i8> %broadcast.splatinsert265, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.hf = zext <2 x i8> %broadcast.splat264 to <2 x i32>
  %i.hg = zext <2 x i8> %broadcast.splat266 to <2 x i32>
  %i.hh = or disjoint <2 x i32> %broadcast.splat260, %i.hf
  %i.hi = or disjoint <2 x i32> %broadcast.splat260, %i.hg
  %i.hj = zext <2 x i32> %i.hh to <2 x i64>
  %i.hk = zext <2 x i32> %i.hi to <2 x i64>
  %i.hl = mul nuw <2 x i64> %i.hj, splat (i64 4294967297)
  %i.hm = mul nuw <2 x i64> %i.hk, splat (i64 4294967297)
  store <2 x i64> %i.hl, ptr %i.gy, align 2, !alias.scope !129
  store <2 x i64> %i.hm, ptr %i.gz, align 2, !alias.scope !129
  %index.next267 = add nuw i64 %index262, 2       ; 2 uses
  %i.hn = icmp eq i64 %index.next267, %n.vec258
  br i1 %i.hn, label %middle.block268, label %vector.body261, !llvm.loop !90

middle.block268:                                  ; preds = %vector.body261
  %cmp.n269 = icmp eq i64 %i.gc, %n.vec258
  br i1 %cmp.n269, label %.loopexit.i, label %.loopexit.i.us.us74.i.preheader330

.loopexit.i.us.us74.i.preheader330:               ; preds = %vector.memcheck243, %vector.scevcheck, %.loopexit.i.us.us74.i.preheader, %middle.block268
  %indvars.iv87.i.ph = phi i64 [ %i.fn, %vector.memcheck243 ], [ %i.fn, %vector.scevcheck ], [ %i.fn, %.loopexit.i.us.us74.i.preheader ], [ %i.gn, %middle.block268 ] ; 4 uses
  %.05267.us.us73.i.ph = phi i32 [ %i.fb, %vector.memcheck243 ], [ %i.fb, %vector.scevcheck ], [ %i.fb, %.loopexit.i.us.us74.i.preheader ], [ %i.gq, %middle.block268 ] ; 3 uses
  %i.ho = trunc i64 %indvars.iv87.i.ph to i32     ; 2 uses
  %i.hp = sub i32 %i.ew, %i.ho
  %.neg = add i32 %i.ho, 1
  %xtraiter374.a = and i32 %i.hp, 1
  %lcmp.mod375.not.a = icmp eq i32 %xtraiter374.a, 0
  br i1 %lcmp.mod375.not.a, label %.loopexit.i.us.us74.i.prol.loopexit, label %.loopexit.i.us.us74.i.prol

.loopexit.i.us.us74.i.prol:                       ; preds = %.loopexit.i.us.us74.i.preheader330
  %i.hq = sext i32 %.05267.us.us73.i.ph to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.hq ; 2 uses
  %i.hs = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv87.i.ph
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !127
  %i.hu = zext i8 %i.ht to i32
  %i.hv = or disjoint i32 %i.fj, %i.hu
  %i.hw = zext i32 %i.hv to i64
  %i.hx = mul nuw i64 %i.hw, 4294967297           ; 2 uses
  store i64 %i.hx, ptr %i.hr, align 2
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store i64 %i.hx, ptr %i.hy, align 2
  %i.hz = add i32 %.05267.us.us73.i.ph, 4
  %indvars.iv.next88.i.prol = add nsw i64 %indvars.iv87.i.ph, 1
  br label %.loopexit.i.us.us74.i.prol.loopexit

.loopexit.i.us.us74.i.prol.loopexit:              ; preds = %.loopexit.i.us.us74.i.prol, %.loopexit.i.us.us74.i.preheader330
  %indvars.iv87.i.unr = phi i64 [ %indvars.iv87.i.ph, %.loopexit.i.us.us74.i.preheader330 ], [ %indvars.iv.next88.i.prol, %.loopexit.i.us.us74.i.prol ]
  %.05267.us.us73.i.unr = phi i32 [ %.05267.us.us73.i.ph, %.loopexit.i.us.us74.i.preheader330 ], [ %i.hz, %.loopexit.i.us.us74.i.prol ]
  %i.ia = icmp eq i32 %i.ew, %.neg
  br i1 %i.ia, label %.loopexit.i, label %.loopexit.i.us.us74.i

.loopexit.i.us.us.i:                              ; preds = %.loopexit.i.us.us.i.prol.loopexit, %.loopexit.i.us.us.i
  %indvars.iv90.i = phi i64 [ %indvars.iv.next91.i.1, %.loopexit.i.us.us.i ], [ %indvars.iv90.i.unr, %.loopexit.i.us.us.i.prol.loopexit ] ; 3 uses
  %.05267.us.us.i = phi i32 [ %i.it, %.loopexit.i.us.us.i ], [ %.05267.us.us.i.unr, %.loopexit.i.us.us.i.prol.loopexit ] ; 3 uses
  %i.ib = sext i32 %.05267.us.us.i to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ib
  %i.id = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv90.i
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !127
  %i.if = zext i8 %i.ie to i32
  %i.ig = or disjoint i32 %i.fj, %i.if
  %i.ih = zext i32 %i.ig to i64
  %i.ii = mul nuw i64 %i.ih, 4294967297
  store i64 %i.ii, ptr %i.ic, align 2
  %i.ij = add i32 %.05267.us.us.i, 2
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ik
  %i.im = getelementptr i8, ptr %i.eo, i64 %indvars.iv90.i
  %i.in = getelementptr i8, ptr %i.im, i64 1
  %i.io = load i8, ptr %i.in, align 1, !tbaa !127
  %i.ip = zext i8 %i.io to i32
  %i.iq = or disjoint i32 %i.fj, %i.ip
  %i.ir = zext i32 %i.iq to i64
  %i.is = mul nuw i64 %i.ir, 4294967297
  store i64 %i.is, ptr %i.il, align 2
  %i.it = add i32 %.05267.us.us.i, 4
  %indvars.iv.next91.i.1 = add nsw i64 %indvars.iv90.i, 2 ; 2 uses
  %i.iu = trunc nsw i64 %indvars.iv.next91.i.1 to i32
  %.not57.us.us.i.1 = icmp eq i32 %i.ew, %i.iu
  br i1 %.not57.us.us.i.1, label %.loopexit.i, label %.loopexit.i.us.us.i, !llvm.loop !91

.loopexit.i.us.us74.i:                            ; preds = %.loopexit.i.us.us74.i.prol.loopexit, %.loopexit.i.us.us74.i
  %indvars.iv87.i = phi i64 [ %indvars.iv.next88.i.1, %.loopexit.i.us.us74.i ], [ %indvars.iv87.i.unr, %.loopexit.i.us.us74.i.prol.loopexit ] ; 3 uses
  %.05267.us.us73.i = phi i32 [ %i.jp, %.loopexit.i.us.us74.i ], [ %.05267.us.us73.i.unr, %.loopexit.i.us.us74.i.prol.loopexit ] ; 3 uses
  %i.iv = sext i32 %.05267.us.us73.i to i64
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.iv ; 2 uses
  %i.ix = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv87.i
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !127
  %i.iz = zext i8 %i.iy to i32
  %i.ja = or disjoint i32 %i.fj, %i.iz
  %i.jb = zext i32 %i.ja to i64
  %i.jc = mul nuw i64 %i.jb, 4294967297           ; 2 uses
  store i64 %i.jc, ptr %i.iw, align 2
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  store i64 %i.jc, ptr %i.jd, align 2
  %i.je = add i32 %.05267.us.us73.i, 4
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.jf ; 2 uses
  %i.jh = getelementptr i8, ptr %i.eo, i64 %indvars.iv87.i
  %i.ji = getelementptr i8, ptr %i.jh, i64 1
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !127
  %i.jk = zext i8 %i.jj to i32
  %i.jl = or disjoint i32 %i.fj, %i.jk
  %i.jm = zext i32 %i.jl to i64
  %i.jn = mul nuw i64 %i.jm, 4294967297           ; 2 uses
  store i64 %i.jn, ptr %i.jg, align 2
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store i64 %i.jn, ptr %i.jo, align 2
  %i.jp = add i32 %.05267.us.us73.i, 8
  %indvars.iv.next88.i.1 = add nsw i64 %indvars.iv87.i, 2 ; 2 uses
  %i.jq = trunc nsw i64 %indvars.iv.next88.i.1 to i32
  %.not57.us.us75.i.1 = icmp eq i32 %i.ew, %i.jq
  br i1 %.not57.us.us75.i.1, label %.loopexit.i, label %.loopexit.i.us.us74.i, !llvm.loop !92

.preheader.i.us.i:                                ; preds = %.lr.ph.split.us.i, %.loopexit.i.us.i
  %indvars.iv93.i = phi i64 [ %indvars.iv.next94.i, %.loopexit.i.us.i ], [ %i.fn, %.lr.ph.split.us.i ] ; 2 uses
  %.05267.us.i = phi i32 [ %i.ky, %.loopexit.i.us.i ], [ %i.fb, %.lr.ph.split.us.i ] ; 2 uses
  %i.jr = sext i32 %.05267.us.i to i64
  %i.js = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.jr ; 9 uses
  %i.jt = load i32, ptr %i.fl, align 4, !tbaa !16 ; 3 uses
  %i.ju = icmp sgt i32 %i.jt, 0
  br i1 %i.ju, label %.lr.ph.preheader.i.us.i, label %.loopexit.i.us.i

.lr.ph.preheader.i.us.i:                          ; preds = %.preheader.i.us.i
  %i.jv = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv93.i
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !127
  %i.jx = zext i8 %i.jw to i32
  %i.jy = or disjoint i32 %i.fj, %i.jx
  %i.jz = zext i32 %i.jy to i64
  %i.ka = mul nuw i64 %i.jz, 4294967297
  %i.kb = zext nneg i32 %i.jt to i64
  %i.kc = insertelement <4 x i64> poison, i64 %i.ka, i64 0
  %i.kd = shufflevector <4 x i64> %i.kc, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  %i.ke = add nsw i64 %i.kb, -1
  %i.kf = lshr i64 %i.ke, 3
  %i.kg = add nuw nsw i64 %i.kf, 1                ; 2 uses
  %xtraiter380 = and i64 %i.kg, 7                 ; 3 uses
  %i.kh = icmp ult i32 %i.jt, 57
  br i1 %i.kh, label %.lr.ph.i.us.i.epil.preheader, label %.lr.ph.preheader.i.us.i.new

.lr.ph.preheader.i.us.i.new:                      ; preds = %.lr.ph.preheader.i.us.i
  %unroll_iter384 = and i64 %i.kg, 4611686018427387896
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i.us.i, %.lr.ph.preheader.i.us.i.new
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.preheader.i.us.i.new ], [ %indvars.iv.next.i.us.i.7, %.lr.ph.i.us.i ] ; 9 uses
  %niter385 = phi i64 [ 0, %.lr.ph.preheader.i.us.i.new ], [ %niter385.next.7, %.lr.ph.i.us.i ]
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv.i.us.i
  store <4 x i64> %i.kd, ptr %i.ki, align 2
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv.i.us.i
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 32
  store <4 x i64> %i.kd, ptr %i.kk, align 2
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv.i.us.i
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 64
  store <4 x i64> %i.kd, ptr %i.km, align 2
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv.i.us.i
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 96
  store <4 x i64> %i.kd, ptr %i.ko, align 2
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv.i.us.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 128
  store <4 x i64> %i.kd, ptr %i.kq, align 2
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv.i.us.i
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 160
  store <4 x i64> %i.kd, ptr %i.ks, align 2
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv.i.us.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 192
  store <4 x i64> %i.kd, ptr %i.ku, align 2
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv.i.us.i
end_hunk_1
begin_hunk_2_@HUF_readDTableX2_wksp:bb.a
  ]

.preheader.i.i:                                   ; preds = %bb.i
  %i.lj = icmp sgt i32 %i.li, 0
  br i1 %i.lj, label %.lr.ph.preheader.i.i, label %.loopexit.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %i.lk = zext nneg i32 %i.li to i64
  %i.ll = insertelement <4 x i64> poison, i64 %i.lh, i64 0
  %i.lm = shufflevector <4 x i64> %i.ll, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  %i.ln = add nsw i64 %i.lk, -1
  %i.lo = lshr i64 %i.ln, 3
  %i.lp = add nuw nsw i64 %i.lo, 1                ; 2 uses
  %xtraiter349 = and i64 %i.lp, 7                 ; 3 uses
  %i.lq = icmp ult i32 %i.li, 57
  br i1 %i.lq, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter353 = and i64 %i.lp, 4611686018427387896
  br label %.lr.ph.i.i

bb.j:                                             ; preds = %bb.i
  store i64 %i.lh, ptr %i.lb, align 2
  br label %.loopexit.i.i

bb.k:                                             ; preds = %bb.i
  store i64 %i.lh, ptr %i.lb, align 2
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  store i64 %i.lh, ptr %i.lr, align 2
  br label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ] ; 9 uses
  %niter354 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter354.next.7, %.lr.ph.i.i ]
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv.i.i
  store <4 x i64> %i.lm, ptr %i.ls, align 2
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv.i.i
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 32
  store <4 x i64> %i.lm, ptr %i.lu, align 2
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv.i.i
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 64
  store <4 x i64> %i.lm, ptr %i.lw, align 2
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv.i.i
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 96
  store <4 x i64> %i.lm, ptr %i.ly, align 2
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv.i.i
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 128
  store <4 x i64> %i.lm, ptr %i.ma, align 2
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv.i.i
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 160
  store <4 x i64> %i.lm, ptr %i.mc, align 2
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv.i.i
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 192
  store <4 x i64> %i.lm, ptr %i.me, align 2
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv.i.i
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 224
  store <4 x i64> %i.lm, ptr %i.mg, align 2
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 64 ; 2 uses
  %niter354.next.7 = add nuw nsw i64 %niter354, 8 ; 2 uses
  %niter354.ncmp.7.not = icmp eq i64 %niter354.next.7, %unroll_iter353
  br i1 %niter354.ncmp.7.not, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !93

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i
  %lcmp.mod351.not = icmp eq i64 %xtraiter349, 0
  br i1 %lcmp.mod351.not, label %.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.7, %.loopexit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod352 = icmp ne i64 %xtraiter349, 0
  call void @llvm.assume(i1 %lcmp.mod352)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %epil.iter350 = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter350.next, %.lr.ph.i.i.epil ]
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv.i.i.epil
  store <4 x i64> %i.lm, ptr %i.mh, align 2
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 8
  %epil.iter350.next = add i64 %epil.iter350, 1   ; 2 uses
  %epil.iter350.cmp.not = icmp eq i64 %epil.iter350.next, %xtraiter349
  br i1 %epil.iter350.cmp.not, label %.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !95

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.k, %bb.j, %.preheader.i.i, %.lr.ph.split.i
  %invariant.op139 = or disjoint i32 %i.le, 33554432 ; 5 uses
  br label %bb.l

bb.l:                                             ; preds = %HUF_fillDTableX2ForWeight.exit.i, %.loopexit.i.i
  %indvars.iv55.i.i = phi i64 [ %i.fk, %.loopexit.i.i ], [ %indvars.iv.next56.i.i, %HUF_fillDTableX2ForWeight.exit.i ] ; 4 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv55.i.i
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !16 ; 2 uses
  %indvars.iv.next56.i.i = add nuw nsw i64 %indvars.iv55.i.i, 1 ; 3 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next56.i.i
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !16 ; 2 uses
  %i.mm = trunc nuw nsw i64 %indvars.iv55.i.i to i32
  %i.mn = sub i32 %i.fm, %i.mm                    ; 6 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv55.i.i
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !16
  %i.mq = zext i32 %i.mp to i64                   ; 3 uses
  %i.mr = getelementptr [4 x i8], ptr %i.lb, i64 %i.mq ; 20 uses
  %i.ms = sext i32 %i.mj to i64                   ; 9 uses
  %i.mt = getelementptr i8, ptr %i.eo, i64 %i.ms  ; 16 uses
  %i.mu = sext i32 %i.ml to i64                   ; 13 uses
  %i.mv = getelementptr i8, ptr %i.eo, i64 %i.mu  ; 7 uses
  %i.mw = sub i32 %spec.store.select, %i.mn
  %i.mx = and i32 %i.mw, 31                       ; 2 uses
  %i.my = shl nuw i32 1, %i.mx
  %.not82116.i.i = icmp eq i32 %i.mj, %i.ml       ; 5 uses
  switch i32 %i.mx, label %.preheader.i60.i [
    i32 0, label %.preheader84.i.i
    i32 1, label %.preheader86.i.i
    i32 2, label %.preheader88.i.i
    i32 3, label %.preheader90.i.i
  ]

.preheader90.i.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph.i58.i

.lr.ph.i58.i:                                     ; preds = %.preheader90.i.i
  %i.mz = shl i32 %i.mn, 16
  %invariant.op.reass = add i32 %i.mz, %invariant.op139 ; 3 uses
  %i.na = sub nsw i64 %i.mu, %i.ms
  %xtraiter355 = and i64 %i.na, 1
  %lcmp.mod356.not = icmp eq i64 %xtraiter355, 0
  br i1 %lcmp.mod356.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i58.i
  %i.nb = load i8, ptr %i.mt, align 1, !tbaa !127
  %i.nc = zext i8 %i.nb to i32
  %i.nd = shl nuw nsw i32 %i.nc, 8
  %.reass.reass.i.reass.i.reass.prol = or disjoint i32 %i.nd, %invariant.op.reass
  %i.ne = zext i32 %.reass.reass.i.reass.i.reass.prol to i64
  %i.nf = mul nuw i64 %i.ne, 4294967297           ; 4 uses
  store i64 %i.nf, ptr %i.mr, align 2
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  store i64 %i.nf, ptr %i.ng, align 2
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  store i64 %i.nf, ptr %i.nh, align 2
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  store i64 %i.nf, ptr %i.ni, align 2
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mr, i64 32
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mt, i64 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i58.i
  %.394.i.i.unr = phi ptr [ %i.mr, %.lr.ph.i58.i ], [ %i.nj, %.prol.loopexit.unr-lcssa ]
  %.37793.i.i.unr = phi ptr [ %i.mt, %.lr.ph.i58.i ], [ %i.nk, %.prol.loopexit.unr-lcssa ]
  %i.nl = add nsw i64 %i.mu, -1
  %i.nm = icmp eq i64 %i.nl, %i.ms
  br i1 %i.nm, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph.i58.i.new

.preheader88.i.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph98.i.i

.lr.ph98.i.i:                                     ; preds = %.preheader88.i.i
  %i.nn = shl i32 %i.mn, 16
  %invariant.op135.reass = add i32 %i.nn, %invariant.op139 ; 5 uses
  %i.no = sub nsw i64 %i.mu, %i.ms
  %xtraiter360 = and i64 %i.no, 3                 ; 2 uses
  %lcmp.mod361.not = icmp eq i64 %xtraiter360, 0
  br i1 %lcmp.mod361.not, label %.prol.loopexit359, label %.prol.preheader358

.prol.preheader358:                               ; preds = %.lr.ph98.i.i, %.prol.preheader358
  %.297.i.i.prol = phi ptr [ %i.nv, %.prol.preheader358 ], [ %i.mr, %.lr.ph98.i.i ] ; 3 uses
  %.27696.i.i.prol = phi ptr [ %i.nw, %.prol.preheader358 ], [ %i.mt, %.lr.ph98.i.i ] ; 2 uses
  %prol.iter362 = phi i64 [ %prol.iter362.next, %.prol.preheader358 ], [ 0, %.lr.ph98.i.i ]
  %i.np = load i8, ptr %.27696.i.i.prol, align 1, !tbaa !127
  %i.nq = zext i8 %i.np to i32
  %i.nr = shl nuw nsw i32 %i.nq, 8
  %.reass100.reass.i.reass.i.reass.prol = or disjoint i32 %i.nr, %invariant.op135.reass
  %i.ns = zext i32 %.reass100.reass.i.reass.i.reass.prol to i64
  %i.nt = mul nuw i64 %i.ns, 4294967297           ; 2 uses
  store i64 %i.nt, ptr %.297.i.i.prol, align 2
  %i.nu = getelementptr inbounds nuw i8, ptr %.297.i.i.prol, i64 8
  store i64 %i.nt, ptr %i.nu, align 2
  %i.nv = getelementptr inbounds nuw i8, ptr %.297.i.i.prol, i64 16 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.27696.i.i.prol, i64 1 ; 2 uses
  %prol.iter362.next = add i64 %prol.iter362, 1   ; 2 uses
  %prol.iter362.cmp.not = icmp eq i64 %prol.iter362.next, %xtraiter360
  br i1 %prol.iter362.cmp.not, label %.prol.loopexit359, label %.prol.preheader358, !llvm.loop !96

.prol.loopexit359:                                ; preds = %.prol.preheader358, %.lr.ph98.i.i
  %.297.i.i.unr = phi ptr [ %i.mr, %.lr.ph98.i.i ], [ %i.nv, %.prol.preheader358 ]
  %.27696.i.i.unr = phi ptr [ %i.mt, %.lr.ph98.i.i ], [ %i.nw, %.prol.preheader358 ]
  %i.nx = sub nsw i64 %i.ms, %i.mu
  %i.ny = icmp ugt i64 %i.nx, -4
  br i1 %i.ny, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph98.i.i.new

.preheader86.i.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph104.i.i

.lr.ph104.i.i:                                    ; preds = %.preheader86.i.i
  %i.nz = shl i32 %i.mn, 16
  %invariant.op136.reass = add i32 %i.nz, %invariant.op139 ; 6 uses
  %i.oa = sub nsw i64 %i.mu, %i.ms                ; 3 uses
  %min.iters.check302 = icmp ult i64 %i.oa, 10
  br i1 %min.iters.check302, label %scalar.ph301.preheader, label %vector.memcheck295

vector.memcheck295:                               ; preds = %.lr.ph104.i.i
  %i.ob = shl nsw i64 %i.mu, 3
  %i.oc = add nsw i64 %i.la, %i.mq
  %i.od = shl nsw i64 %i.oc, 2
  %i.oe = add nsw i64 %i.ob, %i.od
  %9 = shl nsw i64 %i.ms, 3
  %i.of = sub nsw i64 %i.oe, %9
  %scevgep297 = getelementptr i8, ptr %scevgep296, i64 %i.of
  %bound0298 = icmp ult ptr %i.mr, %i.mv
  %bound1299 = icmp ult ptr %i.mt, %scevgep297
  %found.conflict300 = and i1 %bound0298, %bound1299
  br i1 %found.conflict300, label %scalar.ph301.preheader, label %vector.ph303

vector.ph303:                                     ; preds = %vector.memcheck295
  %n.vec304 = and i64 %i.oa, -4                   ; 4 uses
  %i.og = shl nsw i64 %n.vec304, 3
  %i.oh = getelementptr i8, ptr %i.mr, i64 %i.og
  %i.oi = getelementptr i8, ptr %i.mt, i64 %n.vec304
  %broadcast.splatinsert305 = insertelement <2 x i32> poison, i32 %invariant.op136.reass, i64 0
  %broadcast.splat306 = shufflevector <2 x i32> %broadcast.splatinsert305, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body307

vector.body307:                                   ; preds = %vector.body307, %vector.ph303
  %index308 = phi i64 [ 0, %vector.ph303 ], [ %index.next315, %vector.body307 ] ; 3 uses
  %i.oj = shl i64 %index308, 3                    ; 2 uses
  %next.gep309 = getelementptr i8, ptr %i.mr, i64 %i.oj
  %i.ok = getelementptr i8, ptr %i.mr, i64 %i.oj
  %next.gep310 = getelementptr i8, ptr %i.ok, i64 16
  %next.gep311 = getelementptr i8, ptr %i.mt, i64 %index308 ; 2 uses
  %i.ol = getelementptr i8, ptr %next.gep311, i64 2
  %wide.load312 = load <2 x i8>, ptr %next.gep311, align 1, !tbaa !127, !alias.scope !130
  %wide.load313 = load <2 x i8>, ptr %i.ol, align 1, !tbaa !127, !alias.scope !130
  %i.om = zext <2 x i8> %wide.load312 to <2 x i32>
  %i.on = zext <2 x i8> %wide.load313 to <2 x i32>
  %i.oo = shl nuw nsw <2 x i32> %i.om, splat (i32 8)
  %i.op = shl nuw nsw <2 x i32> %i.on, splat (i32 8)
  %i.oq = or disjoint <2 x i32> %i.oo, %broadcast.splat306
  %i.or = or disjoint <2 x i32> %i.op, %broadcast.splat306
  %interleaved.vec = shufflevector <2 x i32> %i.oq, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x i32> %interleaved.vec, ptr %next.gep309, align 2, !alias.scope !131, !noalias !130
  %interleaved.vec314 = shufflevector <2 x i32> %i.or, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x i32> %interleaved.vec314, ptr %next.gep310, align 2, !alias.scope !131, !noalias !130
  %index.next315 = add nuw i64 %index308, 4       ; 2 uses
  %i.os = icmp eq i64 %index.next315, %n.vec304
  br i1 %i.os, label %middle.block316, label %vector.body307, !llvm.loop !100

middle.block316:                                  ; preds = %vector.body307
  %cmp.n317 = icmp eq i64 %i.oa, %n.vec304
  br i1 %cmp.n317, label %HUF_fillDTableX2ForWeight.exit.i, label %scalar.ph301.preheader

scalar.ph301.preheader:                           ; preds = %vector.memcheck295, %.lr.ph104.i.i, %middle.block316
  %.1103.i.i.ph = phi ptr [ %i.mr, %vector.memcheck295 ], [ %i.mr, %.lr.ph104.i.i ], [ %i.oh, %middle.block316 ] ; 2 uses
  %.175102.i.i.ph = phi ptr [ %i.mt, %vector.memcheck295 ], [ %i.mt, %.lr.ph104.i.i ], [ %i.oi, %middle.block316 ] ; 3 uses
  %i.ot = add i64 %i.a, %i.mu
  %.175102.i.i.ph363 = ptrtoaddr ptr %.175102.i.i.ph to i64 ; 2 uses
  %i.ou = sub i64 %i.ot, %.175102.i.i.ph363
  %i.ov = add i64 %i.eq, %i.mu
  %i.ow = sub i64 %i.ov, %.175102.i.i.ph363
  %xtraiter364 = and i64 %i.ou, 3                 ; 2 uses
  %lcmp.mod365.not = icmp eq i64 %xtraiter364, 0
  br i1 %lcmp.mod365.not, label %scalar.ph301.prol.loopexit, label %scalar.ph301.prol

scalar.ph301.prol:                                ; preds = %scalar.ph301.preheader, %scalar.ph301.prol
  %.1103.i.i.prol = phi ptr [ %i.pb, %scalar.ph301.prol ], [ %.1103.i.i.ph, %scalar.ph301.preheader ] ; 3 uses
  %.175102.i.i.prol = phi ptr [ %i.pc, %scalar.ph301.prol ], [ %.175102.i.i.ph, %scalar.ph301.preheader ] ; 2 uses
  %prol.iter366 = phi i64 [ %prol.iter366.next, %scalar.ph301.prol ], [ 0, %scalar.ph301.preheader ]
  %i.ox = load i8, ptr %.175102.i.i.prol, align 1, !tbaa !127
  %i.oy = zext i8 %i.ox to i32
  %i.oz = shl nuw nsw i32 %i.oy, 8
  %.reass106.reass.i.reass.i.reass.prol = or disjoint i32 %i.oz, %invariant.op136.reass ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass.prol, ptr %.1103.i.i.prol, align 2
  %i.pa = getelementptr inbounds nuw i8, ptr %.1103.i.i.prol, i64 4
  store i32 %.reass106.reass.i.reass.i.reass.prol, ptr %i.pa, align 2
  %i.pb = getelementptr inbounds nuw i8, ptr %.1103.i.i.prol, i64 8 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.175102.i.i.prol, i64 1 ; 2 uses
  %prol.iter366.next = add i64 %prol.iter366, 1   ; 2 uses
  %prol.iter366.cmp.not = icmp eq i64 %prol.iter366.next, %xtraiter364
  br i1 %prol.iter366.cmp.not, label %scalar.ph301.prol.loopexit, label %scalar.ph301.prol, !llvm.loop !101

scalar.ph301.prol.loopexit:                       ; preds = %scalar.ph301.prol, %scalar.ph301.preheader
  %.1103.i.i.unr = phi ptr [ %.1103.i.i.ph, %scalar.ph301.preheader ], [ %i.pb, %scalar.ph301.prol ]
  %.175102.i.i.unr = phi ptr [ %.175102.i.i.ph, %scalar.ph301.preheader ], [ %i.pc, %scalar.ph301.prol ]
  %i.pd = icmp ult i64 %i.ow, 3
  br i1 %i.pd, label %HUF_fillDTableX2ForWeight.exit.i, label %scalar.ph301

.preheader84.i.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph110.i.i

.lr.ph110.i.i:                                    ; preds = %.preheader84.i.i
  %i.pe = shl i32 %i.mn, 16
  %invariant.op137.reass = add i32 %i.pe, %invariant.op139 ; 6 uses
  %i.pf = sub nsw i64 %i.mu, %i.ms                ; 3 uses
  %min.iters.check279 = icmp ult i64 %i.pf, 8
  br i1 %min.iters.check279, label %scalar.ph278.preheader, label %vector.memcheck272

vector.memcheck272:                               ; preds = %.lr.ph110.i.i
  %i.pg = add nsw i64 %i.la, %i.mu
  %i.ph = add nsw i64 %i.pg, %i.mq
  %10 = sub nsw i64 %i.ph, %i.ms
  %i.pi = shl nsw i64 %10, 2
  %scevgep274 = getelementptr i8, ptr %scevgep273, i64 %i.pi
  %bound0275 = icmp ult ptr %i.mr, %i.mv
  %bound1276 = icmp ult ptr %i.mt, %scevgep274
  %found.conflict277 = and i1 %bound0275, %bound1276
  br i1 %found.conflict277, label %scalar.ph278.preheader, label %vector.ph280

vector.ph280:                                     ; preds = %vector.memcheck272
  %n.vec281 = and i64 %i.pf, -8                   ; 4 uses
  %i.pj = shl nsw i64 %n.vec281, 2
  %i.pk = getelementptr i8, ptr %i.mr, i64 %i.pj
  %i.pl = getelementptr i8, ptr %i.mt, i64 %n.vec281
  %broadcast.splatinsert282 = insertelement <4 x i32> poison, i32 %invariant.op137.reass, i64 0
  %broadcast.splat283 = shufflevector <4 x i32> %broadcast.splatinsert282, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body284

vector.body284:                                   ; preds = %vector.body284, %vector.ph280
  %index285 = phi i64 [ 0, %vector.ph280 ], [ %index.next290, %vector.body284 ] ; 3 uses
  %i.pm = shl i64 %index285, 2
  %next.gep286 = getelementptr i8, ptr %i.mr, i64 %i.pm ; 2 uses
  %next.gep287 = getelementptr i8, ptr %i.mt, i64 %index285 ; 2 uses
  %i.pn = getelementptr i8, ptr %next.gep287, i64 4
  %wide.load288 = load <4 x i8>, ptr %next.gep287, align 1, !tbaa !127, !alias.scope !132
  %wide.load289 = load <4 x i8>, ptr %i.pn, align 1, !tbaa !127, !alias.scope !132
  %i.po = zext <4 x i8> %wide.load288 to <4 x i32>
  %i.pp = zext <4 x i8> %wide.load289 to <4 x i32>
  %i.pq = shl nuw nsw <4 x i32> %i.po, splat (i32 8)
  %i.pr = shl nuw nsw <4 x i32> %i.pp, splat (i32 8)
  %i.ps = or disjoint <4 x i32> %i.pq, %broadcast.splat283
  %i.pt = or disjoint <4 x i32> %i.pr, %broadcast.splat283
  %i.pu = getelementptr i8, ptr %next.gep286, i64 16
  store <4 x i32> %i.ps, ptr %next.gep286, align 2, !alias.scope !133, !noalias !132
  store <4 x i32> %i.pt, ptr %i.pu, align 2, !alias.scope !133, !noalias !132
  %index.next290 = add nuw i64 %index285, 8       ; 2 uses
  %i.pv = icmp eq i64 %index.next290, %n.vec281
  br i1 %i.pv, label %middle.block291, label %vector.body284, !llvm.loop !105

middle.block291:                                  ; preds = %vector.body284
  %cmp.n292 = icmp eq i64 %i.pf, %n.vec281
  br i1 %cmp.n292, label %HUF_fillDTableX2ForWeight.exit.i, label %scalar.ph278.preheader

scalar.ph278.preheader:                           ; preds = %vector.memcheck272, %.lr.ph110.i.i, %middle.block291
  %.0109.i.i.ph = phi ptr [ %i.mr, %vector.memcheck272 ], [ %i.mr, %.lr.ph110.i.i ], [ %i.pk, %middle.block291 ] ; 2 uses
  %.074108.i.i.ph = phi ptr [ %i.mt, %vector.memcheck272 ], [ %i.mt, %.lr.ph110.i.i ], [ %i.pl, %middle.block291 ] ; 3 uses
  %i.pw = add i64 %i.a, %i.mu
  %.074108.i.i.ph367 = ptrtoaddr ptr %.074108.i.i.ph to i64 ; 2 uses
  %i.px = sub i64 %i.pw, %.074108.i.i.ph367
  %i.py = add i64 %i.er, %i.mu
  %i.pz = sub i64 %i.py, %.074108.i.i.ph367
  %xtraiter368 = and i64 %i.px, 3                 ; 2 uses
  %lcmp.mod369.not = icmp eq i64 %xtraiter368, 0
  br i1 %lcmp.mod369.not, label %scalar.ph278.prol.loopexit, label %scalar.ph278.prol

scalar.ph278.prol:                                ; preds = %scalar.ph278.preheader, %scalar.ph278.prol
  %.0109.i.i.prol = phi ptr [ %i.qd, %scalar.ph278.prol ], [ %.0109.i.i.ph, %scalar.ph278.preheader ] ; 2 uses
  %.074108.i.i.prol = phi ptr [ %i.qe, %scalar.ph278.prol ], [ %.074108.i.i.ph, %scalar.ph278.preheader ] ; 2 uses
  %prol.iter370 = phi i64 [ %prol.iter370.next, %scalar.ph278.prol ], [ 0, %scalar.ph278.preheader ]
  %i.qa = load i8, ptr %.074108.i.i.prol, align 1, !tbaa !127
  %i.qb = zext i8 %i.qa to i32
  %i.qc = shl nuw nsw i32 %i.qb, 8
  %.reass112.reass.i.reass.i.reass.prol = or disjoint i32 %i.qc, %invariant.op137.reass
  %i.qd = getelementptr inbounds nuw i8, ptr %.0109.i.i.prol, i64 4 ; 2 uses
  store i32 %.reass112.reass.i.reass.i.reass.prol, ptr %.0109.i.i.prol, align 2
  %i.qe = getelementptr inbounds nuw i8, ptr %.074108.i.i.prol, i64 1 ; 2 uses
  %prol.iter370.next = add i64 %prol.iter370, 1   ; 2 uses
  %prol.iter370.cmp.not = icmp eq i64 %prol.iter370.next, %xtraiter368
  br i1 %prol.iter370.cmp.not, label %scalar.ph278.prol.loopexit, label %scalar.ph278.prol, !llvm.loop !106

scalar.ph278.prol.loopexit:                       ; preds = %scalar.ph278.prol, %scalar.ph278.preheader
  %.0109.i.i.unr = phi ptr [ %.0109.i.i.ph, %scalar.ph278.preheader ], [ %i.qd, %scalar.ph278.prol ]
  %.074108.i.i.unr = phi ptr [ %.074108.i.i.ph, %scalar.ph278.preheader ], [ %i.qe, %scalar.ph278.prol ]
  %i.qf = icmp ult i64 %i.pz, 3
  br i1 %i.qf, label %HUF_fillDTableX2ForWeight.exit.i, label %scalar.ph278

.preheader.i60.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %HUF_fillDTableX2ForWeight.exit.i, label %.lr.ph119.i.i

.lr.ph119.i.i:                                    ; preds = %.preheader.i60.i
  %i.qg = shl i32 %i.mn, 16
  %i.qh = zext i32 %i.my to i64
  %.idx.i.i = shl nuw nsw i64 %i.qh, 2            ; 2 uses
  %invariant.op138.reass = add i32 %i.qg, %invariant.op139
  %i.qi = add nsw i64 %.idx.i.i, -32              ; 2 uses
  %i.qj = lshr i64 %i.qi, 5
  %i.qk = add nuw nsw i64 %i.qj, 1
  %xtraiter371 = and i64 %i.qk, 7                 ; 2 uses
  %lcmp.mod372.not = icmp eq i64 %xtraiter371, 0
  %i.ql = icmp ult i64 %i.qi, 224
  br label %.lr.ph115.preheader.i.i

scalar.ph278:                                     ; preds = %scalar.ph278.prol.loopexit, %scalar.ph278
  %.0109.i.i = phi ptr [ %i.re, %scalar.ph278 ], [ %.0109.i.i.unr, %scalar.ph278.prol.loopexit ] ; 5 uses
  %.074108.i.i = phi ptr [ %i.rf, %scalar.ph278 ], [ %.074108.i.i.unr, %scalar.ph278.prol.loopexit ] ; 5 uses
  %i.qm = load i8, ptr %.074108.i.i, align 1, !tbaa !127
  %i.qn = zext i8 %i.qm to i32
  %i.qo = shl nuw nsw i32 %i.qn, 8
  %.reass112.reass.i.reass.i.reass = or disjoint i32 %i.qo, %invariant.op137.reass
  %i.qp = getelementptr inbounds nuw i8, ptr %.0109.i.i, i64 4
  store i32 %.reass112.reass.i.reass.i.reass, ptr %.0109.i.i, align 2
  %i.qq = getelementptr inbounds nuw i8, ptr %.074108.i.i, i64 1
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !127
  %i.qs = zext i8 %i.qr to i32
  %i.qt = shl nuw nsw i32 %i.qs, 8
  %.reass112.reass.i.reass.i.reass.1 = or disjoint i32 %i.qt, %invariant.op137.reass
  %i.qu = getelementptr inbounds nuw i8, ptr %.0109.i.i, i64 8
  store i32 %.reass112.reass.i.reass.i.reass.1, ptr %i.qp, align 2
  %i.qv = getelementptr inbounds nuw i8, ptr %.074108.i.i, i64 2
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !127
  %i.qx = zext i8 %i.qw to i32
  %i.qy = shl nuw nsw i32 %i.qx, 8
  %.reass112.reass.i.reass.i.reass.2 = or disjoint i32 %i.qy, %invariant.op137.reass
  %i.qz = getelementptr inbounds nuw i8, ptr %.0109.i.i, i64 12
  store i32 %.reass112.reass.i.reass.i.reass.2, ptr %i.qu, align 2
  %i.ra = getelementptr inbounds nuw i8, ptr %.074108.i.i, i64 3
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !127
  %i.rc = zext i8 %i.rb to i32
  %i.rd = shl nuw nsw i32 %i.rc, 8
  %.reass112.reass.i.reass.i.reass.3 = or disjoint i32 %i.rd, %invariant.op137.reass
  %i.re = getelementptr inbounds nuw i8, ptr %.0109.i.i, i64 16
  store i32 %.reass112.reass.i.reass.i.reass.3, ptr %i.qz, align 2
  %i.rf = getelementptr inbounds nuw i8, ptr %.074108.i.i, i64 4 ; 2 uses
  %.not81.i.i.3 = icmp eq ptr %i.rf, %i.mv
  br i1 %.not81.i.i.3, label %HUF_fillDTableX2ForWeight.exit.i, label %scalar.ph278, !llvm.loop !107

scalar.ph301:                                     ; preds = %scalar.ph301.prol.loopexit, %scalar.ph301
  %.1103.i.i = phi ptr [ %i.sc, %scalar.ph301 ], [ %.1103.i.i.unr, %scalar.ph301.prol.loopexit ] ; 9 uses
  %.175102.i.i = phi ptr [ %i.sd, %scalar.ph301 ], [ %.175102.i.i.unr, %scalar.ph301.prol.loopexit ] ; 5 uses
  %i.rg = load i8, ptr %.175102.i.i, align 1, !tbaa !127
  %i.rh = zext i8 %i.rg to i32
  %i.ri = shl nuw nsw i32 %i.rh, 8
  %.reass106.reass.i.reass.i.reass = or disjoint i32 %i.ri, %invariant.op136.reass ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass, ptr %.1103.i.i, align 2
  %i.rj = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 4
  store i32 %.reass106.reass.i.reass.i.reass, ptr %i.rj, align 2
  %i.rk = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 8
  %i.rl = getelementptr inbounds nuw i8, ptr %.175102.i.i, i64 1
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !127
  %i.rn = zext i8 %i.rm to i32
  %i.ro = shl nuw nsw i32 %i.rn, 8
  %.reass106.reass.i.reass.i.reass.1 = or disjoint i32 %i.ro, %invariant.op136.reass ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass.1, ptr %i.rk, align 2
  %i.rp = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 12
  store i32 %.reass106.reass.i.reass.i.reass.1, ptr %i.rp, align 2
  %i.rq = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 16
  %i.rr = getelementptr inbounds nuw i8, ptr %.175102.i.i, i64 2
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !127
  %i.rt = zext i8 %i.rs to i32
  %i.ru = shl nuw nsw i32 %i.rt, 8
  %.reass106.reass.i.reass.i.reass.2 = or disjoint i32 %i.ru, %invariant.op136.reass ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass.2, ptr %i.rq, align 2
  %i.rv = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 20
  store i32 %.reass106.reass.i.reass.i.reass.2, ptr %i.rv, align 2
  %i.rw = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 24
  %i.rx = getelementptr inbounds nuw i8, ptr %.175102.i.i, i64 3
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !127
  %i.rz = zext i8 %i.ry to i32
  %i.sa = shl nuw nsw i32 %i.rz, 8
  %.reass106.reass.i.reass.i.reass.3 = or disjoint i32 %i.sa, %invariant.op136.reass ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass.3, ptr %i.rw, align 2
  %i.sb = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 28
  store i32 %.reass106.reass.i.reass.i.reass.3, ptr %i.sb, align 2
  %i.sc = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 32
  %i.sd = getelementptr inbounds nuw i8, ptr %.175102.i.i, i64 4 ; 2 uses
  %.not80.i.i.3 = icmp eq ptr %i.sd, %i.mv
  br i1 %.not80.i.i.3, label %HUF_fillDTableX2ForWeight.exit.i, label %scalar.ph301, !llvm.loop !108

.lr.ph98.i.i.new:                                 ; preds = %.prol.loopexit359, %.lr.ph98.i.i.new
  %.297.i.i = phi ptr [ %i.ti, %.lr.ph98.i.i.new ], [ %.297.i.i.unr, %.prol.loopexit359 ] ; 9 uses
  %.27696.i.i = phi ptr [ %i.tj, %.lr.ph98.i.i.new ], [ %.27696.i.i.unr, %.prol.loopexit359 ] ; 5 uses
  %i.se = load i8, ptr %.27696.i.i, align 1, !tbaa !127
  %i.sf = zext i8 %i.se to i32
  %i.sg = shl nuw nsw i32 %i.sf, 8
  %.reass100.reass.i.reass.i.reass = or disjoint i32 %i.sg, %invariant.op135.reass
  %i.sh = zext i32 %.reass100.reass.i.reass.i.reass to i64
  %i.si = mul nuw i64 %i.sh, 4294967297           ; 2 uses
  store i64 %i.si, ptr %.297.i.i, align 2
  %i.sj = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 8
  store i64 %i.si, ptr %i.sj, align 2
  %i.sk = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 16
  %i.sl = getelementptr inbounds nuw i8, ptr %.27696.i.i, i64 1
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !127
  %i.sn = zext i8 %i.sm to i32
  %i.so = shl nuw nsw i32 %i.sn, 8
  %.reass100.reass.i.reass.i.reass.1 = or disjoint i32 %i.so, %invariant.op135.reass
  %i.sp = zext i32 %.reass100.reass.i.reass.i.reass.1 to i64
  %i.sq = mul nuw i64 %i.sp, 4294967297           ; 2 uses
  store i64 %i.sq, ptr %i.sk, align 2
  %i.sr = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 24
  store i64 %i.sq, ptr %i.sr, align 2
  %i.ss = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 32
  %i.st = getelementptr inbounds nuw i8, ptr %.27696.i.i, i64 2
  %i.su = load i8, ptr %i.st, align 1, !tbaa !127
  %i.sv = zext i8 %i.su to i32
  %i.sw = shl nuw nsw i32 %i.sv, 8
  %.reass100.reass.i.reass.i.reass.2 = or disjoint i32 %i.sw, %invariant.op135.reass
  %i.sx = zext i32 %.reass100.reass.i.reass.i.reass.2 to i64
  %i.sy = mul nuw i64 %i.sx, 4294967297           ; 2 uses
  store i64 %i.sy, ptr %i.ss, align 2
  %i.sz = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 40
  store i64 %i.sy, ptr %i.sz, align 2
  %i.ta = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 48
  %i.tb = getelementptr inbounds nuw i8, ptr %.27696.i.i, i64 3
end_hunk_2
begin_hunk_3_@HUF_readDTableX2_wksp:bb.a
.lr.ph.split.us.i99:                              ; preds = %.lr.ph.split.us.i99.prol.loopexit, %.lr.ph.split.us.i99
  %.394.us.i = phi ptr [ %i.wn, %.lr.ph.split.us.i99 ], [ %.394.us.i.unr, %.lr.ph.split.us.i99.prol.loopexit ] ; 9 uses
  %.37793.us.i = phi ptr [ %i.wo, %.lr.ph.split.us.i99 ], [ %.37793.us.i.unr, %.lr.ph.split.us.i99.prol.loopexit ] ; 3 uses
  %i.vv = load i8, ptr %.37793.us.i, align 1, !tbaa !127
  %i.vw = zext i8 %i.vv to i32
  %i.vx = or disjoint i32 %i.vh, %i.vw
  %i.vy = zext i32 %i.vx to i64
  %i.vz = mul nuw i64 %i.vy, 4294967297           ; 4 uses
  store i64 %i.vz, ptr %.394.us.i, align 2
  %i.wa = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 8
  store i64 %i.vz, ptr %i.wa, align 2
  %i.wb = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 16
  store i64 %i.vz, ptr %i.wb, align 2
  %i.wc = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 24
  store i64 %i.vz, ptr %i.wc, align 2
  %i.wd = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 32
  %i.we = getelementptr inbounds nuw i8, ptr %.37793.us.i, i64 1
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !127
  %i.wg = zext i8 %i.wf to i32
  %i.wh = or disjoint i32 %i.vh, %i.wg
  %i.wi = zext i32 %i.wh to i64
  %i.wj = mul nuw i64 %i.wi, 4294967297           ; 4 uses
  store i64 %i.wj, ptr %i.wd, align 2
  %i.wk = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 40
  store i64 %i.wj, ptr %i.wk, align 2
  %i.wl = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 48
  store i64 %i.wj, ptr %i.wl, align 2
  %i.wm = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 56
  store i64 %i.wj, ptr %i.wm, align 2
  %i.wn = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 64
  %i.wo = getelementptr inbounds nuw i8, ptr %.37793.us.i, i64 2 ; 2 uses
  %.not.us.i.1 = icmp eq ptr %i.wo, %i.vd
  br i1 %.not.us.i.1, label %.loopexit.i, label %.lr.ph.split.us.i99, !llvm.loop !110

.preheader88.i:                                   ; preds = %bb.m
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph98.i

.lr.ph98.i:                                       ; preds = %.preheader88.i
  %i.wp = shl i32 %i.ey, 16
  %i.wq = add i32 %i.wp, 16777216                 ; 5 uses
  %i.wr = sub nsw i64 %i.vc, %i.va
  %xtraiter389 = and i64 %i.wr, 3                 ; 2 uses
  %lcmp.mod390.not = icmp eq i64 %xtraiter389, 0
  br i1 %lcmp.mod390.not, label %.lr.ph98.split.us.i.prol.loopexit, label %.lr.ph98.split.us.i.prol

.lr.ph98.split.us.i.prol:                         ; preds = %.lr.ph98.i, %.lr.ph98.split.us.i.prol
  %.297.us.i.prol = phi ptr [ %i.wy, %.lr.ph98.split.us.i.prol ], [ %i.uz, %.lr.ph98.i ] ; 3 uses
  %.27696.us.i.prol = phi ptr [ %i.wz, %.lr.ph98.split.us.i.prol ], [ %i.vb, %.lr.ph98.i ] ; 2 uses
  %prol.iter391 = phi i64 [ %prol.iter391.next, %.lr.ph98.split.us.i.prol ], [ 0, %.lr.ph98.i ]
  %i.ws = load i8, ptr %.27696.us.i.prol, align 1, !tbaa !127
  %i.wt = zext i8 %i.ws to i32
  %i.wu = or disjoint i32 %i.wq, %i.wt
  %i.wv = zext i32 %i.wu to i64
  %i.ww = mul nuw i64 %i.wv, 4294967297           ; 2 uses
  store i64 %i.ww, ptr %.297.us.i.prol, align 2
  %i.wx = getelementptr inbounds nuw i8, ptr %.297.us.i.prol, i64 8
  store i64 %i.ww, ptr %i.wx, align 2
  %i.wy = getelementptr inbounds nuw i8, ptr %.297.us.i.prol, i64 16 ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %.27696.us.i.prol, i64 1 ; 2 uses
  %prol.iter391.next = add i64 %prol.iter391, 1   ; 2 uses
  %prol.iter391.cmp.not = icmp eq i64 %prol.iter391.next, %xtraiter389
  br i1 %prol.iter391.cmp.not, label %.lr.ph98.split.us.i.prol.loopexit, label %.lr.ph98.split.us.i.prol, !llvm.loop !115

.lr.ph98.split.us.i.prol.loopexit:                ; preds = %.lr.ph98.split.us.i.prol, %.lr.ph98.i
  %.297.us.i.unr = phi ptr [ %i.uz, %.lr.ph98.i ], [ %i.wy, %.lr.ph98.split.us.i.prol ]
  %.27696.us.i.unr = phi ptr [ %i.vb, %.lr.ph98.i ], [ %i.wz, %.lr.ph98.split.us.i.prol ]
  %i.xa = sub nsw i64 %i.va, %i.vc
  %i.xb = icmp ugt i64 %i.xa, -4
  br i1 %i.xb, label %.loopexit.i, label %.lr.ph98.split.us.i

.lr.ph98.split.us.i:                              ; preds = %.lr.ph98.split.us.i.prol.loopexit, %.lr.ph98.split.us.i
  %.297.us.i = phi ptr [ %i.yg, %.lr.ph98.split.us.i ], [ %.297.us.i.unr, %.lr.ph98.split.us.i.prol.loopexit ] ; 9 uses
  %.27696.us.i = phi ptr [ %i.yh, %.lr.ph98.split.us.i ], [ %.27696.us.i.unr, %.lr.ph98.split.us.i.prol.loopexit ] ; 5 uses
  %i.xc = load i8, ptr %.27696.us.i, align 1, !tbaa !127
  %i.xd = zext i8 %i.xc to i32
  %i.xe = or disjoint i32 %i.wq, %i.xd
  %i.xf = zext i32 %i.xe to i64
  %i.xg = mul nuw i64 %i.xf, 4294967297           ; 2 uses
  store i64 %i.xg, ptr %.297.us.i, align 2
  %i.xh = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 8
  store i64 %i.xg, ptr %i.xh, align 2
  %i.xi = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 16
  %i.xj = getelementptr inbounds nuw i8, ptr %.27696.us.i, i64 1
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !127
  %i.xl = zext i8 %i.xk to i32
  %i.xm = or disjoint i32 %i.wq, %i.xl
  %i.xn = zext i32 %i.xm to i64
  %i.xo = mul nuw i64 %i.xn, 4294967297           ; 2 uses
  store i64 %i.xo, ptr %i.xi, align 2
  %i.xp = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 24
  store i64 %i.xo, ptr %i.xp, align 2
  %i.xq = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 32
  %i.xr = getelementptr inbounds nuw i8, ptr %.27696.us.i, i64 2
  %i.xs = load i8, ptr %i.xr, align 1, !tbaa !127
  %i.xt = zext i8 %i.xs to i32
  %i.xu = or disjoint i32 %i.wq, %i.xt
  %i.xv = zext i32 %i.xu to i64
  %i.xw = mul nuw i64 %i.xv, 4294967297           ; 2 uses
  store i64 %i.xw, ptr %i.xq, align 2
  %i.xx = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 40
  store i64 %i.xw, ptr %i.xx, align 2
  %i.xy = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 48
  %i.xz = getelementptr inbounds nuw i8, ptr %.27696.us.i, i64 3
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !127
  %i.yb = zext i8 %i.ya to i32
  %i.yc = or disjoint i32 %i.wq, %i.yb
  %i.yd = zext i32 %i.yc to i64
  %i.ye = mul nuw i64 %i.yd, 4294967297           ; 2 uses
  store i64 %i.ye, ptr %i.xy, align 2
  %i.yf = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 56
  store i64 %i.ye, ptr %i.yf, align 2
  %i.yg = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 64
  %i.yh = getelementptr inbounds nuw i8, ptr %.27696.us.i, i64 4 ; 2 uses
  %.not79.us.i.3 = icmp eq ptr %i.yh, %i.vd
  br i1 %.not79.us.i.3, label %.loopexit.i, label %.lr.ph98.split.us.i, !llvm.loop !109

.preheader86.i:                                   ; preds = %bb.m
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph104.i

.lr.ph104.i:                                      ; preds = %.preheader86.i
  %i.yi = shl i32 %i.ey, 16
  %i.yj = add i32 %i.yi, 16777216                 ; 5 uses
  %i.yk = sub nsw i64 %i.vc, %i.va
  %xtraiter392 = and i64 %i.yk, 3                 ; 2 uses
  %lcmp.mod393.not = icmp eq i64 %xtraiter392, 0
  br i1 %lcmp.mod393.not, label %.lr.ph104.split.us.i.prol.loopexit, label %.lr.ph104.split.us.i.prol

.lr.ph104.split.us.i.prol:                        ; preds = %.lr.ph104.i, %.lr.ph104.split.us.i.prol
  %.1103.us.i.prol = phi ptr [ %i.yp, %.lr.ph104.split.us.i.prol ], [ %i.uz, %.lr.ph104.i ] ; 3 uses
  %.175102.us.i.prol = phi ptr [ %i.yq, %.lr.ph104.split.us.i.prol ], [ %i.vb, %.lr.ph104.i ] ; 2 uses
  %prol.iter394 = phi i64 [ %prol.iter394.next, %.lr.ph104.split.us.i.prol ], [ 0, %.lr.ph104.i ]
  %i.yl = load i8, ptr %.175102.us.i.prol, align 1, !tbaa !127
  %i.ym = zext i8 %i.yl to i32
  %i.yn = or disjoint i32 %i.yj, %i.ym            ; 2 uses
  store i32 %i.yn, ptr %.1103.us.i.prol, align 2
  %i.yo = getelementptr inbounds nuw i8, ptr %.1103.us.i.prol, i64 4
  store i32 %i.yn, ptr %i.yo, align 2
  %i.yp = getelementptr inbounds nuw i8, ptr %.1103.us.i.prol, i64 8 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %.175102.us.i.prol, i64 1 ; 2 uses
  %prol.iter394.next = add i64 %prol.iter394, 1   ; 2 uses
  %prol.iter394.cmp.not = icmp eq i64 %prol.iter394.next, %xtraiter392
  br i1 %prol.iter394.cmp.not, label %.lr.ph104.split.us.i.prol.loopexit, label %.lr.ph104.split.us.i.prol, !llvm.loop !116

.lr.ph104.split.us.i.prol.loopexit:               ; preds = %.lr.ph104.split.us.i.prol, %.lr.ph104.i
  %.1103.us.i.unr = phi ptr [ %i.uz, %.lr.ph104.i ], [ %i.yp, %.lr.ph104.split.us.i.prol ]
  %.175102.us.i.unr = phi ptr [ %i.vb, %.lr.ph104.i ], [ %i.yq, %.lr.ph104.split.us.i.prol ]
  %i.yr = sub nsw i64 %i.va, %i.vc
  %i.ys = icmp ugt i64 %i.yr, -4
  br i1 %i.ys, label %.loopexit.i, label %.lr.ph104.split.us.i

.lr.ph104.split.us.i:                             ; preds = %.lr.ph104.split.us.i.prol.loopexit, %.lr.ph104.split.us.i
  %.1103.us.i = phi ptr [ %i.zp, %.lr.ph104.split.us.i ], [ %.1103.us.i.unr, %.lr.ph104.split.us.i.prol.loopexit ] ; 9 uses
  %.175102.us.i = phi ptr [ %i.zq, %.lr.ph104.split.us.i ], [ %.175102.us.i.unr, %.lr.ph104.split.us.i.prol.loopexit ] ; 5 uses
  %i.yt = load i8, ptr %.175102.us.i, align 1, !tbaa !127
  %i.yu = zext i8 %i.yt to i32
  %i.yv = or disjoint i32 %i.yj, %i.yu            ; 2 uses
  store i32 %i.yv, ptr %.1103.us.i, align 2
  %i.yw = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 4
  store i32 %i.yv, ptr %i.yw, align 2
  %i.yx = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 8
  %i.yy = getelementptr inbounds nuw i8, ptr %.175102.us.i, i64 1
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !127
  %i.za = zext i8 %i.yz to i32
  %i.zb = or disjoint i32 %i.yj, %i.za            ; 2 uses
  store i32 %i.zb, ptr %i.yx, align 2
  %i.zc = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 12
  store i32 %i.zb, ptr %i.zc, align 2
  %i.zd = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 16
  %i.ze = getelementptr inbounds nuw i8, ptr %.175102.us.i, i64 2
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !127
  %i.zg = zext i8 %i.zf to i32
  %i.zh = or disjoint i32 %i.yj, %i.zg            ; 2 uses
  store i32 %i.zh, ptr %i.zd, align 2
  %i.zi = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 20
  store i32 %i.zh, ptr %i.zi, align 2
  %i.zj = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 24
  %i.zk = getelementptr inbounds nuw i8, ptr %.175102.us.i, i64 3
  %i.zl = load i8, ptr %i.zk, align 1, !tbaa !127
  %i.zm = zext i8 %i.zl to i32
  %i.zn = or disjoint i32 %i.yj, %i.zm            ; 2 uses
  store i32 %i.zn, ptr %i.zj, align 2
  %i.zo = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 28
  store i32 %i.zn, ptr %i.zo, align 2
  %i.zp = getelementptr inbounds nuw i8, ptr %.1103.us.i, i64 32
  %i.zq = getelementptr inbounds nuw i8, ptr %.175102.us.i, i64 4 ; 2 uses
  %.not80.us.i.3 = icmp eq ptr %i.zq, %i.vd
  br i1 %.not80.us.i.3, label %.loopexit.i, label %.lr.ph104.split.us.i, !llvm.loop !117

.preheader84.i:                                   ; preds = %bb.m
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph110.i

.lr.ph110.i:                                      ; preds = %.preheader84.i
  %i.zr = shl i32 %i.ey, 16
  %i.zs = add i32 %i.zr, 16777216                 ; 10 uses
  %i.zt = sub nsw i64 %i.vc, %i.va                ; 3 uses
  %min.iters.check228 = icmp ult i64 %i.zt, 8
  br i1 %min.iters.check228, label %.lr.ph110.split.us.i.preheader, label %vector.memcheck225

vector.memcheck225:                               ; preds = %.lr.ph110.i
  %i.zu = add nsw i64 %i.vc, %i.uy
  %11 = sub nsw i64 %i.zu, %i.va
  %i.zv = shl nsw i64 %11, 2
  %scevgep226 = getelementptr i8, ptr %scevgep, i64 %i.zv
  %bound0 = icmp ult ptr %i.uz, %i.vd
  %bound1 = icmp ult ptr %i.vb, %scevgep226
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph110.split.us.i.preheader, label %vector.ph229

vector.ph229:                                     ; preds = %vector.memcheck225
  %n.vec230 = and i64 %i.zt, -8                   ; 4 uses
  %i.zw = shl nsw i64 %n.vec230, 2
  %i.zx = getelementptr i8, ptr %i.uz, i64 %i.zw
  %i.zy = getelementptr i8, ptr %i.vb, i64 %n.vec230
  %broadcast.splatinsert231 = insertelement <4 x i32> poison, i32 %i.zs, i64 0
  %broadcast.splat232 = shufflevector <4 x i32> %broadcast.splatinsert231, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph229
  %index234 = phi i64 [ 0, %vector.ph229 ], [ %index.next238, %vector.body233 ] ; 3 uses
  %i.zz = shl i64 %index234, 2
  %next.gep = getelementptr i8, ptr %i.uz, i64 %i.zz ; 2 uses
  %next.gep235 = getelementptr i8, ptr %i.vb, i64 %index234 ; 2 uses
  %i.aaa = getelementptr i8, ptr %next.gep235, i64 4
  %wide.load236 = load <4 x i8>, ptr %next.gep235, align 1, !tbaa !127, !alias.scope !134
  %wide.load237 = load <4 x i8>, ptr %i.aaa, align 1, !tbaa !127, !alias.scope !134
  %i.aab = zext <4 x i8> %wide.load236 to <4 x i32>
  %i.aac = zext <4 x i8> %wide.load237 to <4 x i32>
  %i.aad = or disjoint <4 x i32> %broadcast.splat232, %i.aab
  %i.aae = or disjoint <4 x i32> %broadcast.splat232, %i.aac
  %i.aaf = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.aad, ptr %next.gep, align 2, !alias.scope !135, !noalias !134
  store <4 x i32> %i.aae, ptr %i.aaf, align 2, !alias.scope !135, !noalias !134
  %index.next238 = add nuw i64 %index234, 8       ; 2 uses
  %i.aag = icmp eq i64 %index.next238, %n.vec230
  br i1 %i.aag, label %middle.block239, label %vector.body233, !llvm.loop !121

middle.block239:                                  ; preds = %vector.body233
  %cmp.n240 = icmp eq i64 %i.zt, %n.vec230
  br i1 %cmp.n240, label %.loopexit.i, label %.lr.ph110.split.us.i.preheader

.lr.ph110.split.us.i.preheader:                   ; preds = %vector.memcheck225, %.lr.ph110.i, %middle.block239
  %.0109.us.i.ph = phi ptr [ %i.uz, %vector.memcheck225 ], [ %i.uz, %.lr.ph110.i ], [ %i.zx, %middle.block239 ] ; 2 uses
  %.074108.us.i.ph = phi ptr [ %i.vb, %vector.memcheck225 ], [ %i.vb, %.lr.ph110.i ], [ %i.zy, %middle.block239 ] ; 3 uses
  %i.aah = add i64 %i.a, %i.vc
  %.074108.us.i.ph395 = ptrtoaddr ptr %.074108.us.i.ph to i64 ; 2 uses
  %i.aai = sub i64 %i.aah, %.074108.us.i.ph395
  %i.aaj = add i64 %i.es, %i.vc
  %i.aak = sub i64 %i.aaj, %.074108.us.i.ph395
  %xtraiter396 = and i64 %i.aai, 7                ; 2 uses
  %lcmp.mod397.not = icmp eq i64 %xtraiter396, 0
  br i1 %lcmp.mod397.not, label %.lr.ph110.split.us.i.prol.loopexit, label %.lr.ph110.split.us.i.prol

.lr.ph110.split.us.i.prol:                        ; preds = %.lr.ph110.split.us.i.preheader, %.lr.ph110.split.us.i.prol
  %.0109.us.i.prol = phi ptr [ %i.aao, %.lr.ph110.split.us.i.prol ], [ %.0109.us.i.ph, %.lr.ph110.split.us.i.preheader ] ; 2 uses
  %.074108.us.i.prol = phi ptr [ %i.aap, %.lr.ph110.split.us.i.prol ], [ %.074108.us.i.ph, %.lr.ph110.split.us.i.preheader ] ; 2 uses
  %prol.iter398 = phi i64 [ %prol.iter398.next, %.lr.ph110.split.us.i.prol ], [ 0, %.lr.ph110.split.us.i.preheader ]
  %i.aal = load i8, ptr %.074108.us.i.prol, align 1, !tbaa !127
  %i.aam = zext i8 %i.aal to i32
  %i.aan = or disjoint i32 %i.zs, %i.aam
  %i.aao = getelementptr inbounds nuw i8, ptr %.0109.us.i.prol, i64 4 ; 2 uses
  store i32 %i.aan, ptr %.0109.us.i.prol, align 2
  %i.aap = getelementptr inbounds nuw i8, ptr %.074108.us.i.prol, i64 1 ; 2 uses
  %prol.iter398.next = add i64 %prol.iter398, 1   ; 2 uses
  %prol.iter398.cmp.not = icmp eq i64 %prol.iter398.next, %xtraiter396
  br i1 %prol.iter398.cmp.not, label %.lr.ph110.split.us.i.prol.loopexit, label %.lr.ph110.split.us.i.prol, !llvm.loop !122

.lr.ph110.split.us.i.prol.loopexit:               ; preds = %.lr.ph110.split.us.i.prol, %.lr.ph110.split.us.i.preheader
  %.0109.us.i.unr = phi ptr [ %.0109.us.i.ph, %.lr.ph110.split.us.i.preheader ], [ %i.aao, %.lr.ph110.split.us.i.prol ]
  %.074108.us.i.unr = phi ptr [ %.074108.us.i.ph, %.lr.ph110.split.us.i.preheader ], [ %i.aap, %.lr.ph110.split.us.i.prol ]
  %i.aaq = icmp ult i64 %i.aak, 7
  br i1 %i.aaq, label %.loopexit.i, label %.lr.ph110.split.us.i

.lr.ph110.split.us.i:                             ; preds = %.lr.ph110.split.us.i.prol.loopexit, %.lr.ph110.split.us.i
  %.0109.us.i = phi ptr [ %i.acd, %.lr.ph110.split.us.i ], [ %.0109.us.i.unr, %.lr.ph110.split.us.i.prol.loopexit ] ; 9 uses
  %.074108.us.i = phi ptr [ %i.ace, %.lr.ph110.split.us.i ], [ %.074108.us.i.unr, %.lr.ph110.split.us.i.prol.loopexit ] ; 9 uses
  %i.aar = load i8, ptr %.074108.us.i, align 1, !tbaa !127
  %i.aas = zext i8 %i.aar to i32
  %i.aat = or disjoint i32 %i.zs, %i.aas
  %i.aau = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 4
  store i32 %i.aat, ptr %.0109.us.i, align 2
  %i.aav = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 1
  %i.aaw = load i8, ptr %i.aav, align 1, !tbaa !127
  %i.aax = zext i8 %i.aaw to i32
  %i.aay = or disjoint i32 %i.zs, %i.aax
  %i.aaz = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 8
  store i32 %i.aay, ptr %i.aau, align 2
  %i.aba = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 2
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !127
  %i.abc = zext i8 %i.abb to i32
  %i.abd = or disjoint i32 %i.zs, %i.abc
  %i.abe = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 12
  store i32 %i.abd, ptr %i.aaz, align 2
  %i.abf = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 3
  %i.abg = load i8, ptr %i.abf, align 1, !tbaa !127
  %i.abh = zext i8 %i.abg to i32
  %i.abi = or disjoint i32 %i.zs, %i.abh
  %i.abj = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 16
  store i32 %i.abi, ptr %i.abe, align 2
  %i.abk = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 4
  %i.abl = load i8, ptr %i.abk, align 1, !tbaa !127
  %i.abm = zext i8 %i.abl to i32
  %i.abn = or disjoint i32 %i.zs, %i.abm
  %i.abo = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 20
  store i32 %i.abn, ptr %i.abj, align 2
  %i.abp = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 5
  %i.abq = load i8, ptr %i.abp, align 1, !tbaa !127
  %i.abr = zext i8 %i.abq to i32
  %i.abs = or disjoint i32 %i.zs, %i.abr
  %i.abt = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 24
  store i32 %i.abs, ptr %i.abo, align 2
  %i.abu = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 6
  %i.abv = load i8, ptr %i.abu, align 1, !tbaa !127
  %i.abw = zext i8 %i.abv to i32
  %i.abx = or disjoint i32 %i.zs, %i.abw
  %i.aby = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 28
  store i32 %i.abx, ptr %i.abt, align 2
  %i.abz = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 7
  %i.aca = load i8, ptr %i.abz, align 1, !tbaa !127
  %i.acb = zext i8 %i.aca to i32
  %i.acc = or disjoint i32 %i.zs, %i.acb
  %i.acd = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 32
  store i32 %i.acc, ptr %i.aby, align 2
  %i.ace = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 8 ; 2 uses
  %.not81.us.i.7 = icmp eq ptr %i.ace, %i.vd
  br i1 %.not81.us.i.7, label %.loopexit.i, label %.lr.ph110.split.us.i, !llvm.loop !123

.preheader.i:                                     ; preds = %bb.m
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph119.i

.lr.ph119.i:                                      ; preds = %.preheader.i
  %i.acf = shl i32 %i.ey, 16
  %i.acg = add i32 %i.acf, 16777216
  %i.ach = zext i32 %i.vf to i64
  %.idx.i = shl nuw nsw i64 %i.ach, 2             ; 2 uses
  %i.aci = add nsw i64 %.idx.i, -32               ; 2 uses
  %i.acj = lshr i64 %i.aci, 5
  %i.ack = add nuw nsw i64 %i.acj, 1
  %xtraiter399 = and i64 %i.ack, 7                ; 2 uses
  %lcmp.mod400.not = icmp eq i64 %xtraiter399, 0
  %i.acl = icmp ult i64 %i.aci, 224
  br label %.lr.ph115.preheader.i

.lr.ph115.preheader.i:                            ; preds = %._crit_edge.i, %.lr.ph119.i
  %.4118.i = phi ptr [ %i.uz, %.lr.ph119.i ], [ %i.acr, %._crit_edge.i ] ; 3 uses
  %.478117.i = phi ptr [ %i.vb, %.lr.ph119.i ], [ %i.add, %._crit_edge.i ] ; 2 uses
  %i.acm = load i8, ptr %.478117.i, align 1, !tbaa !127
  %i.acn = zext i8 %i.acm to i32
  %i.aco = or disjoint i32 %i.acg, %i.acn
  %i.acp = zext i32 %i.aco to i64
  %i.acq = mul nuw i64 %i.acp, 4294967297
  %i.acr = getelementptr inbounds nuw i8, ptr %.4118.i, i64 %.idx.i ; 2 uses
  %i.acs = insertelement <4 x i64> poison, i64 %i.acq, i64 0
  %i.act = shufflevector <4 x i64> %i.acs, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  br i1 %lcmp.mod400.not, label %.lr.ph115.i.prol.loopexit, label %.lr.ph115.i.prol

.lr.ph115.i.prol:                                 ; preds = %.lr.ph115.preheader.i, %.lr.ph115.i.prol
  %.5114.i.prol = phi ptr [ %i.acu, %.lr.ph115.i.prol ], [ %.4118.i, %.lr.ph115.preheader.i ] ; 2 uses
  %prol.iter401 = phi i64 [ %prol.iter401.next, %.lr.ph115.i.prol ], [ 0, %.lr.ph115.preheader.i ]
  store <4 x i64> %i.act, ptr %.5114.i.prol, align 2
  %i.acu = getelementptr inbounds nuw i8, ptr %.5114.i.prol, i64 32 ; 2 uses
  %prol.iter401.next = add i64 %prol.iter401, 1   ; 2 uses
  %prol.iter401.cmp.not = icmp eq i64 %prol.iter401.next, %xtraiter399
  br i1 %prol.iter401.cmp.not, label %.lr.ph115.i.prol.loopexit, label %.lr.ph115.i.prol, !llvm.loop !124

.lr.ph115.i.prol.loopexit:                        ; preds = %.lr.ph115.i.prol, %.lr.ph115.preheader.i
  %.5114.i.unr = phi ptr [ %.4118.i, %.lr.ph115.preheader.i ], [ %i.acu, %.lr.ph115.i.prol ]
  br i1 %i.acl, label %._crit_edge.i, label %.lr.ph115.i

.lr.ph115.i:                                      ; preds = %.lr.ph115.i.prol.loopexit, %.lr.ph115.i
  %.5114.i = phi ptr [ %i.adc, %.lr.ph115.i ], [ %.5114.i.unr, %.lr.ph115.i.prol.loopexit ] ; 9 uses
  store <4 x i64> %i.act, ptr %.5114.i, align 2
  %i.acv = getelementptr inbounds nuw i8, ptr %.5114.i, i64 32
  store <4 x i64> %i.act, ptr %i.acv, align 2
  %i.acw = getelementptr inbounds nuw i8, ptr %.5114.i, i64 64
  store <4 x i64> %i.act, ptr %i.acw, align 2
  %i.acx = getelementptr inbounds nuw i8, ptr %.5114.i, i64 96
  store <4 x i64> %i.act, ptr %i.acx, align 2
  %i.acy = getelementptr inbounds nuw i8, ptr %.5114.i, i64 128
  store <4 x i64> %i.act, ptr %i.acy, align 2
  %i.acz = getelementptr inbounds nuw i8, ptr %.5114.i, i64 160
  store <4 x i64> %i.act, ptr %i.acz, align 2
  %i.ada = getelementptr inbounds nuw i8, ptr %.5114.i, i64 192
  store <4 x i64> %i.act, ptr %i.ada, align 2
  %i.adb = getelementptr inbounds nuw i8, ptr %.5114.i, i64 224
  store <4 x i64> %i.act, ptr %i.adb, align 2
  %i.adc = getelementptr inbounds nuw i8, ptr %.5114.i, i64 256 ; 2 uses
  %.not83.i.7 = icmp eq ptr %i.adc, %i.acr
  br i1 %.not83.i.7, label %._crit_edge.i, label %.lr.ph115.i, !llvm.loop !112

._crit_edge.i:                                    ; preds = %.lr.ph115.i, %.lr.ph115.i.prol.loopexit
  %i.add = getelementptr inbounds nuw i8, ptr %.478117.i, i64 1 ; 2 uses
  %.not82.i = icmp eq ptr %i.add, %i.vd
  br i1 %.not82.i, label %.loopexit.i, label %.lr.ph115.preheader.i, !llvm.loop !113

.loopexit.i:                                      ; preds = %HUF_fillDTableX2Level2.exit.loopexit.i, %.loopexit.i.us.us74.i.prol.loopexit, %.loopexit.i.us.us74.i, %.loopexit.i.us.us.i.prol.loopexit, %.loopexit.i.us.us.i, %.loopexit.i.us.i, %.lr.ph.split.us.i99.prol.loopexit, %.lr.ph.split.us.i99, %.lr.ph98.split.us.i.prol.loopexit, %.lr.ph98.split.us.i, %.lr.ph104.split.us.i.prol.loopexit, %.lr.ph104.split.us.i, %.lr.ph110.split.us.i.prol.loopexit, %.lr.ph110.split.us.i, %._crit_edge.i, %middle.block268, %middle.block239, %.preheader.i, %.preheader84.i, %.preheader86.i, %.preheader88.i, %.preheader90.i, %bb.h
  %exitcond.not.i = icmp eq i64 %indvars.iv.next97.i, %i.ax
  br i1 %exitcond.not.i, label %HUF_fillDTableX2.exit, label %.lr.ph78.i, !llvm.loop !125

HUF_fillDTableX2.exit:                            ; preds = %.loopexit.i, %._crit_edge121, %._crit_edge134.split
  %i.ade = trunc nuw nsw i32 %spec.store.select to i8
  store i8 %.sroa.0.0.extract.trunc, ptr %0, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 1
end_hunk_3
