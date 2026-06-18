inline.NumInlined: 722
inline.NumDeleted: 36
begin_hunk_0_@_ZN11duckdb_zstd21HUF_readDTableX1_wkspEPjPKvmPvmi:bb.a
  %.0149183.epil = phi i32 [ %.0149183.epil.init, %.epil.preheader ], [ %i.bg, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.epil
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bg = add i32 %i.bf, %.0149183.epil
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.epil
  store i32 %.0149183.epil, ptr %i.bh, align 4, !tbaa !3
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader181, label %bb.f, !llvm.loop !16

.preheader181:                                    ; preds = %bb.f, %.preheader181.unr-lcssa
  %i.bi = icmp sgt i32 %i.l, 3
  br i1 %i.bi, label %.preheader180.lr.ph, label %.preheader179

.preheader180.lr.ph:                              ; preds = %.preheader181
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 980 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 4 uses
  %i.bl = zext nneg i32 %i.ba to i64
  br label %.preheader180

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.g ] ; 6 uses
  %.0149183 = phi i32 [ 0, %.lr.ph.new ], [ %i.ca, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.g ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3
  %i.bo = add i32 %i.bn, %.0149183                ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv
  store i32 %.0149183, ptr %i.bp, align 4, !tbaa !3
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3
  %i.bs = add i32 %i.br, %i.bo                    ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next
  store i32 %i.bo, ptr %i.bt, align 4, !tbaa !3
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.bw = add i32 %i.bv, %i.bs                    ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next.1
  store i32 %i.bs, ptr %i.bx, align 4, !tbaa !3
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = add i32 %i.bz, %i.bw                    ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next.2
  store i32 %i.bw, ptr %i.cb, align 4, !tbaa !3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader181.unr-lcssa, label %bb.g, !llvm.loop !18

.preheader180:                                    ; preds = %.preheader180.lr.ph, %.preheader180
  %indvars.iv227 = phi i64 [ 0, %.preheader180.lr.ph ], [ %indvars.iv.next228, %.preheader180 ] ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv227
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !7
  %i.ce = zext i8 %i.cd to i64
  %i.cf = trunc i64 %indvars.iv227 to i8
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ce ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3  ; 2 uses
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !3
  %i.cj = zext i32 %i.ch to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cj
  store i8 %i.cf, ptr %i.ck, align 1, !tbaa !7
  %i.cl = or disjoint i64 %indvars.iv227, 1       ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !7
  %i.co = zext i8 %i.cn to i64
  %i.cp = trunc i64 %i.cl to i8
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.co ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3  ; 2 uses
  %i.cs = add i32 %i.cr, 1
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !3
  %i.ct = zext i32 %i.cr to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ct
  store i8 %i.cp, ptr %i.cu, align 1, !tbaa !7
  %i.cv = or disjoint i64 %indvars.iv227, 2       ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !7
  %i.cy = zext i8 %i.cx to i64
  %i.cz = trunc i64 %i.cv to i8
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.cy ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !3  ; 2 uses
  %i.dc = add i32 %i.db, 1
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !3
  %i.dd = zext i32 %i.db to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.dd
  store i8 %i.cz, ptr %i.de, align 1, !tbaa !7
  %i.df = or disjoint i64 %indvars.iv227, 3       ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !7
  %i.di = zext i8 %i.dh to i64
  %i.dj = trunc i64 %i.df to i8
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.di ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !3  ; 2 uses
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !3
  %i.dn = zext i32 %i.dl to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.dn
  store i8 %i.dj, ptr %i.do, align 1, !tbaa !7
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 4 ; 3 uses
  %i.dp = icmp samesign ult i64 %indvars.iv.next228, %i.bl
  br i1 %i.dp, label %.preheader180, label %.preheader179.loopexit, !llvm.loop !19

.preheader179.loopexit:                           ; preds = %.preheader180
  %i.dq = trunc nuw nsw i64 %indvars.iv.next228 to i32
  br label %.preheader179

.preheader179:                                    ; preds = %.preheader179.loopexit, %.preheader181
  %.1148.lcssa = phi i32 [ 0, %.preheader181 ], [ %i.dq, %.preheader179.loopexit ] ; 3 uses
  %i.dr = icmp slt i32 %.1148.lcssa, %i.l
  br i1 %i.dr, label %.lr.ph188, label %.lr.ph216

.lr.ph188:                                        ; preds = %.preheader179
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 980 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 3 uses
  %i.du = zext i32 %.1148.lcssa to i64            ; 5 uses
  %wide.trip.count233 = zext nneg i32 %i.l to i64 ; 3 uses
  %i.dv = sub nsw i64 %wide.trip.count233, %i.du
  %xtraiter371.a = and i64 %i.dv, 1
  %lcmp.mod372.not = icmp eq i64 %xtraiter371.a, 0
  br i1 %lcmp.mod372.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph188
  %i.dw = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.du
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !7
  %i.dy = zext i8 %i.dx to i64
  %i.dz = trunc i32 %.1148.lcssa to i8
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.dy ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !3  ; 2 uses
  %i.ec = add i32 %i.eb, 1
  store i32 %i.ec, ptr %i.ea, align 4, !tbaa !3
  %i.ed = zext i32 %i.eb to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ed
  store i8 %i.dz, ptr %i.ee, align 1, !tbaa !7
  %indvars.iv.next231.prol = add nuw nsw i64 %i.du, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph188
  %indvars.iv230.unr = phi i64 [ %i.du, %.lr.ph188 ], [ %indvars.iv.next231.prol, %.prol.loopexit.unr-lcssa ]
  %i.ef = add nsw i64 %wide.trip.count233, -1
  %i.eg = icmp eq i64 %i.ef, %i.du
  br i1 %i.eg, label %.lr.ph216, label %.lr.ph188.new

.lr.ph188.new:                                    ; preds = %.prol.loopexit, %.lr.ph188.new
  %indvars.iv230 = phi i64 [ %indvars.iv.next231.1, %.lr.ph188.new ], [ %indvars.iv230.unr, %.prol.loopexit ] ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv230
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !7
  %i.ej = zext i8 %i.ei to i64
  %i.ek = trunc i64 %indvars.iv230 to i8
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.ej ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !3  ; 2 uses
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.el, align 4, !tbaa !3
  %i.eo = zext i32 %i.em to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.eo
  store i8 %i.ek, ptr %i.ep, align 1, !tbaa !7
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next231
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !7
  %i.es = zext i8 %i.er to i64
  %i.et = trunc i64 %indvars.iv.next231 to i8
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.es ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !3  ; 2 uses
  %i.ew = add i32 %i.ev, 1
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !3
  %i.ex = zext i32 %i.ev to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ex
  store i8 %i.et, ptr %i.ey, align 1, !tbaa !7
  %indvars.iv.next231.1 = add nuw nsw i64 %indvars.iv230, 2 ; 2 uses
  %exitcond234.not.1 = icmp eq i64 %indvars.iv.next231.1, %wide.trip.count233
  br i1 %exitcond234.not.1, label %.lr.ph216, label %.lr.ph188.new, !llvm.loop !20

.lr.ph216:                                        ; preds = %.prol.loopexit, %.lr.ph188.new, %.preheader179
  %i.ez = add nuw nsw i32 %.030.i169, 1           ; 2 uses
  %i.fa = load i32, ptr %3, align 4, !tbaa !3
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 980 ; 5 uses
  %i.fc = zext nneg i32 %i.ez to i64
  %scevgep = getelementptr i8, ptr %0, i64 4
  %scevgep326.a = getelementptr i8, ptr %0, i64 4
  %scevgep328 = getelementptr i8, ptr %3, i64 980
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph216, %.loopexit
  %indvars.iv283 = phi i64 [ 1, %.lr.ph216 ], [ %indvars.iv.next284, %.loopexit ] ; 4 uses
  %.0161212 = phi i32 [ %i.fa, %.lr.ph216 ], [ %i.ku, %.loopexit ] ; 6 uses
  %.0162209 = phi i32 [ 0, %.lr.ph216 ], [ %i.kw, %.loopexit ] ; 6 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv283
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !3  ; 20 uses
  %i.ff = trunc nuw i64 %indvars.iv283 to i32
  %i.fg = shl nuw i32 1, %i.ff
  %i.fh = ashr exact i32 %i.fg, 1                 ; 6 uses
  %i.fi = trunc i64 %indvars.iv283 to i32
  %i.fj = sub i32 %i.ez, %i.fi                    ; 4 uses
  %i.fk = trunc i32 %i.fj to i8                   ; 13 uses
  %i.fl = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.fh)
  %i.fm = icmp eq i32 %i.fl, 1
  br i1 %i.fm, label %.split, label %.lr.ph208.a

.split:                                           ; preds = %bb.h
  %i.fn = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.fh, i1 true)
  switch i32 %i.fn, label %.lr.ph208.a [
    i32 0, label %.preheader
    i32 1, label %.preheader173
    i32 2, label %.preheader175
    i32 3, label %.preheader177
  ]

.preheader177:                                    ; preds = %.split
  %i.fo = icmp sgt i32 %i.fe, 0
  br i1 %i.fo, label %.lr.ph191, label %.loopexit

.lr.ph191:                                        ; preds = %.preheader177
  %.mask = and i32 %i.fj, 255
  %i.fp = zext nneg i32 %.mask to i64             ; 3 uses
  %i.fq = sext i32 %.0161212 to i64
  %i.fr = sext i32 %.0162209 to i64               ; 2 uses
  %wide.trip.count242 = zext nneg i32 %i.fe to i64 ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.fb, i64 %i.fq ; 3 uses
  %xtraiter374 = and i64 %wide.trip.count242, 1
  %i.fs = icmp eq i32 %i.fe, 1
  br i1 %i.fs, label %.epil.preheader373, label %.lr.ph191.new

.lr.ph191.new:                                    ; preds = %.lr.ph191
  %unroll_iter378 = and i64 %wide.trip.count242, 2147483646
  br label %bb.j

.preheader175:                                    ; preds = %.split
  %i.ft = icmp sgt i32 %i.fe, 0
  br i1 %i.ft, label %.lr.ph194, label %.loopexit

.lr.ph194:                                        ; preds = %.preheader175
  %.mask170 = and i32 %i.fj, 255
  %i.fu = zext nneg i32 %.mask170 to i64          ; 3 uses
  %i.fv = sext i32 %.0161212 to i64
  %i.fw = sext i32 %.0162209 to i64               ; 2 uses
  %wide.trip.count251 = zext nneg i32 %i.fe to i64 ; 2 uses
  %invariant.gep303 = getelementptr i8, ptr %i.fb, i64 %i.fv ; 3 uses
  %xtraiter381 = and i64 %wide.trip.count251, 1
  %i.fx = icmp eq i32 %i.fe, 1
  br i1 %i.fx, label %.epil.preheader380, label %.lr.ph194.new

.lr.ph194.new:                                    ; preds = %.lr.ph194
  %unroll_iter385 = and i64 %wide.trip.count251, 2147483646
  br label %bb.i

.preheader173:                                    ; preds = %.split
  %i.fy = icmp sgt i32 %i.fe, 0
  br i1 %i.fy, label %.lr.ph197.preheader, label %.loopexit

.lr.ph197.preheader:                              ; preds = %.preheader173
  %i.fz = sext i32 %.0161212 to i64
  %i.ga = sext i32 %.0162209 to i64               ; 2 uses
  %wide.trip.count260 = zext nneg i32 %i.fe to i64 ; 2 uses
  %invariant.gep305 = getelementptr i8, ptr %i.fb, i64 %i.fz ; 3 uses
  %xtraiter387 = and i64 %wide.trip.count260, 1
  %i.gb = icmp eq i32 %i.fe, 1
  br i1 %i.gb, label %.lr.ph197.epil.preheader, label %.lr.ph197.preheader.new

.lr.ph197.preheader.new:                          ; preds = %.lr.ph197.preheader
  %unroll_iter391 = and i64 %wide.trip.count260, 2147483646
  br label %.lr.ph197

.preheader:                                       ; preds = %.split
  %i.gc = icmp sgt i32 %i.fe, 0
  br i1 %i.gc, label %iter.check348, label %.loopexit

iter.check348:                                    ; preds = %.preheader
  %i.gd = sext i32 %.0161212 to i64               ; 2 uses
  %i.ge = sext i32 %.0162209 to i64               ; 8 uses
  %wide.trip.count269 = zext nneg i32 %i.fe to i64 ; 10 uses
  %invariant.gep307 = getelementptr i8, ptr %i.fb, i64 %i.gd ; 8 uses
  %min.iters.check330 = icmp ult i32 %i.fe, 4
  br i1 %min.iters.check330, label %.lr.ph200.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check348
  %i.gf = shl nsw i64 %i.ge, 1
  %scevgep325 = getelementptr i8, ptr %scevgep, i64 %i.gf
  %i.gg = add nsw i64 %i.ge, %wide.trip.count269
  %i.gh = shl nsw i64 %i.gg, 1
  %scevgep327 = getelementptr i8, ptr %scevgep326.a, i64 %i.gh
  %i.gi = getelementptr i8, ptr %scevgep328, i64 %i.gd
  %scevgep329 = getelementptr i8, ptr %i.gi, i64 %wide.trip.count269
  %bound0 = icmp ult ptr %scevgep325, %scevgep329
  %bound1 = icmp ult ptr %invariant.gep307, %scevgep327
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph200.preheader, label %vector.main.loop.iter.check331

vector.main.loop.iter.check331:                   ; preds = %vector.memcheck
  %min.iters.check332 = icmp ult i32 %i.fe, 16
  br i1 %min.iters.check332, label %vec.epilog.ph352, label %vector.ph333

vector.ph333:                                     ; preds = %vector.main.loop.iter.check331
  %n.mod.vf334 = and i64 %wide.trip.count269, 12
  %n.vec335 = and i64 %wide.trip.count269, 2147483632 ; 5 uses
  %i.gj = add nsw i64 %n.vec335, %i.ge
  %broadcast.splatinsert336 = insertelement <8 x i8> poison, i8 %i.fk, i64 0 ; 2 uses
  br label %vector.body338

vector.body338:                                   ; preds = %vector.body338, %vector.ph333
  %index339 = phi i64 [ 0, %vector.ph333 ], [ %index.next343, %vector.body338 ] ; 3 uses
  %i.gk = add i64 %index339, %i.ge                ; 2 uses
  %i.gl = getelementptr i8, ptr %invariant.gep307, i64 %index339 ; 2 uses
  %i.gm = getelementptr i8, ptr %i.gl, i64 8
  %wide.load340 = load <8 x i8>, ptr %i.gl, align 1, !tbaa !7, !alias.scope !21
  %wide.load341 = load <8 x i8>, ptr %i.gm, align 1, !tbaa !7, !alias.scope !21
  %i.gn = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.gk
  %i.go = getelementptr [2 x i8], ptr %i.c, i64 %i.gk
  %i.gp = getelementptr i8, ptr %i.go, i64 16
  %interleaved.vec = shufflevector <8 x i8> %broadcast.splatinsert336, <8 x i8> %wide.load340, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.gn, align 1, !tbaa !7, !alias.scope !24, !noalias !21
  %interleaved.vec342 = shufflevector <8 x i8> %broadcast.splatinsert336, <8 x i8> %wide.load341, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  store <16 x i8> %interleaved.vec342, ptr %i.gp, align 1, !tbaa !7, !alias.scope !24, !noalias !21
  %index.next343 = add nuw i64 %index339, 16      ; 2 uses
  %i.gq = icmp eq i64 %index.next343, %n.vec335
  br i1 %i.gq, label %middle.block344, label %vector.body338, !llvm.loop !26

middle.block344:                                  ; preds = %vector.body338
  %cmp.n345 = icmp eq i64 %n.vec335, %wide.trip.count269
  br i1 %cmp.n345, label %.loopexit, label %vec.epilog.iter.check350

vec.epilog.iter.check350:                         ; preds = %middle.block344
  %min.epilog.iters.check351 = icmp eq i64 %n.mod.vf334, 0
  br i1 %min.epilog.iters.check351, label %.lr.ph200.preheader, label %vec.epilog.ph352, !prof !27

vec.epilog.ph352:                                 ; preds = %vector.main.loop.iter.check331, %vec.epilog.iter.check350
  %vec.epilog.resume.val346 = phi i64 [ %n.vec335, %vec.epilog.iter.check350 ], [ 0, %vector.main.loop.iter.check331 ]
  %n.vec354 = and i64 %wide.trip.count269, 2147483644 ; 4 uses
  %i.gr = add nsw i64 %n.vec354, %i.ge
  %broadcast.splatinsert355 = insertelement <4 x i8> poison, i8 %i.fk, i64 0
  %invariant.gep402 = getelementptr [2 x i8], ptr %i.c, i64 %i.ge
  br label %vec.epilog.vector.body357

vec.epilog.vector.body357:                        ; preds = %vec.epilog.vector.body357, %vec.epilog.ph352
  %index358 = phi i64 [ %vec.epilog.resume.val346, %vec.epilog.ph352 ], [ %index.next361, %vec.epilog.vector.body357 ] ; 3 uses
  %i.gs = getelementptr i8, ptr %invariant.gep307, i64 %index358
  %wide.load359 = load <4 x i8>, ptr %i.gs, align 1, !tbaa !7, !alias.scope !21
  %gep403 = getelementptr [2 x i8], ptr %invariant.gep402, i64 %index358
  %interleaved.vec360 = shufflevector <4 x i8> %broadcast.splatinsert355, <4 x i8> %wide.load359, <8 x i32> <i32 0, i32 4, i32 0, i32 5, i32 0, i32 6, i32 0, i32 7>
  store <8 x i8> %interleaved.vec360, ptr %gep403, align 1, !tbaa !7, !alias.scope !24, !noalias !21
  %index.next361 = add nuw i64 %index358, 4       ; 2 uses
  %i.gt = icmp eq i64 %index.next361, %n.vec354
  br i1 %i.gt, label %vec.epilog.middle.block362, label %vec.epilog.vector.body357, !llvm.loop !28

vec.epilog.middle.block362:                       ; preds = %vec.epilog.vector.body357
  %cmp.n363 = icmp eq i64 %n.vec354, %wide.trip.count269
  br i1 %cmp.n363, label %.loopexit, label %.lr.ph200.preheader

.lr.ph200.preheader:                              ; preds = %vector.memcheck, %iter.check348, %vec.epilog.iter.check350, %vec.epilog.middle.block362
  %indvars.iv264.ph = phi i64 [ %i.ge, %iter.check348 ], [ %i.ge, %vector.memcheck ], [ %i.gj, %vec.epilog.iter.check350 ], [ %i.gr, %vec.epilog.middle.block362 ] ; 2 uses
  %indvars.iv262.ph = phi i64 [ 0, %iter.check348 ], [ 0, %vector.memcheck ], [ %n.vec335, %vec.epilog.iter.check350 ], [ %n.vec354, %vec.epilog.middle.block362 ] ; 3 uses
  %xtraiter393.a = and i64 %wide.trip.count269, 3 ; 2 uses
  %lcmp.mod394.not = icmp eq i64 %xtraiter393.a, 0
  br i1 %lcmp.mod394.not, label %.lr.ph200.prol.loopexit, label %.lr.ph200.prol

.lr.ph200.prol:                                   ; preds = %.lr.ph200.preheader, %.lr.ph200.prol
  %indvars.iv264.prol = phi i64 [ %indvars.iv.next265.prol, %.lr.ph200.prol ], [ %indvars.iv264.ph, %.lr.ph200.preheader ] ; 2 uses
  %indvars.iv262.prol = phi i64 [ %indvars.iv.next263.prol, %.lr.ph200.prol ], [ %indvars.iv262.ph, %.lr.ph200.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph200.prol ], [ 0, %.lr.ph200.preheader ]
  %gep308.prol = getelementptr i8, ptr %invariant.gep307, i64 %indvars.iv262.prol
  %i.gu = load i8, ptr %gep308.prol, align 1, !tbaa !7
  %i.gv = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv264.prol ; 2 uses
  store i8 %i.fk, ptr %i.gv, align 1, !tbaa !7
  %.sroa.4.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.gv, i64 1
  store i8 %i.gu, ptr %.sroa.4.0..sroa_idx.prol, align 1, !tbaa !7
  %indvars.iv.next265.prol = add nsw i64 %indvars.iv264.prol, 1 ; 2 uses
  %indvars.iv.next263.prol = add nuw nsw i64 %indvars.iv262.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter393.a
  br i1 %prol.iter.cmp.not, label %.lr.ph200.prol.loopexit, label %.lr.ph200.prol, !llvm.loop !29

.lr.ph200.prol.loopexit:                          ; preds = %.lr.ph200.prol, %.lr.ph200.preheader
  %indvars.iv264.unr = phi i64 [ %indvars.iv264.ph, %.lr.ph200.preheader ], [ %indvars.iv.next265.prol, %.lr.ph200.prol ]
  %indvars.iv262.unr = phi i64 [ %indvars.iv262.ph, %.lr.ph200.preheader ], [ %indvars.iv.next263.prol, %.lr.ph200.prol ]
  %i.gw = sub nsw i64 %indvars.iv262.ph, %wide.trip.count269
  %i.gx = icmp ugt i64 %i.gw, -4
  br i1 %i.gx, label %.loopexit, label %.lr.ph200

.lr.ph200:                                        ; preds = %.lr.ph200.prol.loopexit, %.lr.ph200
  %indvars.iv264 = phi i64 [ %indvars.iv.next265.3, %.lr.ph200 ], [ %indvars.iv264.unr, %.lr.ph200.prol.loopexit ] ; 5 uses
  %indvars.iv262 = phi i64 [ %indvars.iv.next263.3, %.lr.ph200 ], [ %indvars.iv262.unr, %.lr.ph200.prol.loopexit ] ; 5 uses
  %gep308 = getelementptr i8, ptr %invariant.gep307, i64 %indvars.iv262
  %i.gy = load i8, ptr %gep308, align 1, !tbaa !7
  %i.gz = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv264 ; 2 uses
  store i8 %i.fk, ptr %i.gz, align 1, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gz, i64 1
  store i8 %i.gy, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !7
  %i.ha = getelementptr i8, ptr %invariant.gep307, i64 %indvars.iv262
  %gep308.1 = getelementptr i8, ptr %i.ha, i64 1
  %i.hb = load i8, ptr %gep308.1, align 1, !tbaa !7
  %i.hc = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv264 ; 2 uses
  %i.hd = getelementptr i8, ptr %i.hc, i64 2
  store i8 %i.fk, ptr %i.hd, align 1, !tbaa !7
  %.sroa.4.0..sroa_idx.1 = getelementptr i8, ptr %i.hc, i64 3
  store i8 %i.hb, ptr %.sroa.4.0..sroa_idx.1, align 1, !tbaa !7
  %i.he = getelementptr i8, ptr %invariant.gep307, i64 %indvars.iv262
  %gep308.2 = getelementptr i8, ptr %i.he, i64 2
  %i.hf = load i8, ptr %gep308.2, align 1, !tbaa !7
  %i.hg = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv264 ; 2 uses
  %i.hh = getelementptr i8, ptr %i.hg, i64 4
  store i8 %i.fk, ptr %i.hh, align 1, !tbaa !7
  %.sroa.4.0..sroa_idx.2 = getelementptr i8, ptr %i.hg, i64 5
  store i8 %i.hf, ptr %.sroa.4.0..sroa_idx.2, align 1, !tbaa !7
  %i.hi = getelementptr i8, ptr %invariant.gep307, i64 %indvars.iv262
  %gep308.3 = getelementptr i8, ptr %i.hi, i64 3
  %i.hj = load i8, ptr %gep308.3, align 1, !tbaa !7
  %i.hk = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv264 ; 2 uses
  %i.hl = getelementptr i8, ptr %i.hk, i64 6
  store i8 %i.fk, ptr %i.hl, align 1, !tbaa !7
  %.sroa.4.0..sroa_idx.3 = getelementptr i8, ptr %i.hk, i64 7
  store i8 %i.hj, ptr %.sroa.4.0..sroa_idx.3, align 1, !tbaa !7
  %indvars.iv.next265.3 = add nsw i64 %indvars.iv264, 4
  %indvars.iv.next263.3 = add nuw nsw i64 %indvars.iv262, 4 ; 2 uses
  %exitcond270.not.3 = icmp eq i64 %indvars.iv.next263.3, %wide.trip.count269
  br i1 %exitcond270.not.3, label %.loopexit, label %.lr.ph200, !llvm.loop !30

.lr.ph197:                                        ; preds = %.lr.ph197, %.lr.ph197.preheader.new
  %indvars.iv255 = phi i64 [ %i.ga, %.lr.ph197.preheader.new ], [ %indvars.iv.next256.1, %.lr.ph197 ] ; 3 uses
  %indvars.iv253 = phi i64 [ 0, %.lr.ph197.preheader.new ], [ %indvars.iv.next254.1, %.lr.ph197 ] ; 3 uses
  %niter392 = phi i64 [ 0, %.lr.ph197.preheader.new ], [ %niter392.next.1, %.lr.ph197 ]
  %gep306 = getelementptr i8, ptr %invariant.gep305, i64 %indvars.iv253
  %i.hm = load i8, ptr %gep306, align 1, !tbaa !7 ; 2 uses
  %i.hn = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv255 ; 4 uses
  store i8 %i.fk, ptr %i.hn, align 1, !tbaa !7
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 1
  store i8 %i.hm, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !7
  %i.ho = getelementptr i8, ptr %i.hn, i64 2
  store i8 %i.fk, ptr %i.ho, align 1, !tbaa !7
  %.sroa.5.0..sroa_idx8 = getelementptr i8, ptr %i.hn, i64 3
  store i8 %i.hm, ptr %.sroa.5.0..sroa_idx8, align 1, !tbaa !7
  %i.hp = getelementptr i8, ptr %invariant.gep305, i64 %indvars.iv253
  %gep306.1 = getelementptr i8, ptr %i.hp, i64 1
  %i.hq = load i8, ptr %gep306.1, align 1, !tbaa !7 ; 2 uses
  %i.hr = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv255 ; 4 uses
  %i.hs = getelementptr i8, ptr %i.hr, i64 4
  store i8 %i.fk, ptr %i.hs, align 1, !tbaa !7
  %.sroa.5.0..sroa_idx.1 = getelementptr i8, ptr %i.hr, i64 5
  store i8 %i.hq, ptr %.sroa.5.0..sroa_idx.1, align 1, !tbaa !7
  %i.ht = getelementptr i8, ptr %i.hr, i64 6
  store i8 %i.fk, ptr %i.ht, align 1, !tbaa !7
  %.sroa.5.0..sroa_idx8.1 = getelementptr i8, ptr %i.hr, i64 7
  store i8 %i.hq, ptr %.sroa.5.0..sroa_idx8.1, align 1, !tbaa !7
  %indvars.iv.next256.1 = add nsw i64 %indvars.iv255, 4 ; 2 uses
  %indvars.iv.next254.1 = add nuw nsw i64 %indvars.iv253, 2 ; 2 uses
  %niter392.next.1 = add i64 %niter392, 2         ; 2 uses
  %niter392.ncmp.1 = icmp eq i64 %niter392.next.1, %unroll_iter391
  br i1 %niter392.ncmp.1, label %.loopexit.loopexit367.unr-lcssa, label %.lr.ph197, !llvm.loop !31

bb.i:                                             ; preds = %bb.i, %.lr.ph194.new
  %indvars.iv246 = phi i64 [ %i.fw, %.lr.ph194.new ], [ %indvars.iv.next247.1, %bb.i ] ; 3 uses
  %indvars.iv244 = phi i64 [ 0, %.lr.ph194.new ], [ %indvars.iv.next245.1, %bb.i ] ; 3 uses
  %niter386 = phi i64 [ 0, %.lr.ph194.new ], [ %niter386.next.1, %bb.i ]
  %gep304 = getelementptr i8, ptr %invariant.gep303, i64 %indvars.iv244
  %i.hu = load i8, ptr %gep304, align 1, !tbaa !7
  %i.hv = zext i8 %i.hu to i64
  %i.hw = shl nuw nsw i64 %i.hv, 8
  %i.hx = or disjoint i64 %i.hw, %i.fu
  %i.hy = mul nuw i64 %i.hx, 281479271743489
  %i.hz = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv246
  store i64 %i.hy, ptr %i.hz, align 1, !tbaa !32
  %i.ia = getelementptr i8, ptr %invariant.gep303, i64 %indvars.iv244
  %gep304.1 = getelementptr i8, ptr %i.ia, i64 1
  %i.ib = load i8, ptr %gep304.1, align 1, !tbaa !7
  %i.ic = zext i8 %i.ib to i64
  %i.id = shl nuw nsw i64 %i.ic, 8
  %i.ie = or disjoint i64 %i.id, %i.fu
  %i.if = mul nuw i64 %i.ie, 281479271743489
  %i.ig = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv246
  %i.ih = getelementptr i8, ptr %i.ig, i64 8
  store i64 %i.if, ptr %i.ih, align 1, !tbaa !32
  %indvars.iv.next247.1 = add nsw i64 %indvars.iv246, 8 ; 2 uses
  %indvars.iv.next245.1 = add nuw nsw i64 %indvars.iv244, 2 ; 2 uses
  %niter386.next.1 = add i64 %niter386, 2         ; 2 uses
  %niter386.ncmp.1 = icmp eq i64 %niter386.next.1, %unroll_iter385
  br i1 %niter386.ncmp.1, label %.loopexit.loopexit368.unr-lcssa, label %bb.i, !llvm.loop !34

bb.j:                                             ; preds = %bb.j, %.lr.ph191.new
  %indvars.iv237 = phi i64 [ %i.fr, %.lr.ph191.new ], [ %indvars.iv.next238.1, %bb.j ] ; 3 uses
  %indvars.iv235 = phi i64 [ 0, %.lr.ph191.new ], [ %indvars.iv.next236.1, %bb.j ] ; 3 uses
  %niter379 = phi i64 [ 0, %.lr.ph191.new ], [ %niter379.next.1, %bb.j ]
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv235
  %i.ii = load i8, ptr %gep, align 1, !tbaa !7
  %i.ij = zext i8 %i.ii to i64
  %i.ik = shl nuw nsw i64 %i.ij, 8
  %i.il = or disjoint i64 %i.ik, %i.fp
  %i.im = mul nuw i64 %i.il, 281479271743489      ; 2 uses
  %i.in = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv237 ; 2 uses
  store i64 %i.im, ptr %i.in, align 1, !tbaa !32
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  store i64 %i.im, ptr %i.io, align 1, !tbaa !32
  %i.ip = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv235
  %gep.1 = getelementptr i8, ptr %i.ip, i64 1
  %i.iq = load i8, ptr %gep.1, align 1, !tbaa !7
  %i.ir = zext i8 %i.iq to i64
  %i.is = shl nuw nsw i64 %i.ir, 8
  %i.it = or disjoint i64 %i.is, %i.fp
  %i.iu = mul nuw i64 %i.it, 281479271743489      ; 2 uses
  %i.iv = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv237 ; 2 uses
  %i.iw = getelementptr i8, ptr %i.iv, i64 16
  store i64 %i.iu, ptr %i.iw, align 1, !tbaa !32
  %i.ix = getelementptr i8, ptr %i.iv, i64 24
  store i64 %i.iu, ptr %i.ix, align 1, !tbaa !32
  %indvars.iv.next238.1 = add nsw i64 %indvars.iv237, 16 ; 2 uses
  %indvars.iv.next236.1 = add nuw nsw i64 %indvars.iv235, 2 ; 2 uses
  %niter379.next.1 = add i64 %niter379, 2         ; 2 uses
  %niter379.ncmp.1 = icmp eq i64 %niter379.next.1, %unroll_iter378
  br i1 %niter379.ncmp.1, label %.loopexit.loopexit369.unr-lcssa, label %bb.j, !llvm.loop !35

.lr.ph208.a:                                      ; preds = %bb.h, %.split
  %i.iy = icmp sgt i32 %i.fe, 0
  br i1 %i.iy, label %.lr.ph203.preheader, label %.loopexit

.lr.ph203.preheader:                              ; preds = %.lr.ph208.a
  %.mask171 = and i32 %i.fj, 255
  %i.iz = zext nneg i32 %.mask171 to i64
  %6 = icmp sgt i32 %i.fh, 0
  %7 = sext i32 %i.fh to i64                      ; 2 uses
  %i.ja = sext i32 %.0161212 to i64
  %i.jb = sext i32 %.0162209 to i64
  %wide.trip.count281 = zext nneg i32 %i.fe to i64
  %invariant.gep309 = getelementptr i8, ptr %i.fb, i64 %i.ja
  %i.jc = add nsw i64 %7, -1
  %i.jd = lshr i64 %i.jc, 4
  %i.je = add nuw nsw i64 %i.jd, 1                ; 2 uses
  %xtraiter396 = and i64 %i.je, 7                 ; 3 uses
  %i.jf = icmp ult i32 %i.fh, 113
  %unroll_iter400 = and i64 %i.je, 2305843009213693944
  %lcmp.mod398.not = icmp eq i64 %xtraiter396, 0
  %lcmp.mod399 = icmp ne i64 %xtraiter396, 0
  br label %8

8:                                                ; preds = %.lr.ph203.preheader, %._crit_edge204
  %indvars.iv275 = phi i64 [ %i.jb, %.lr.ph203.preheader ], [ %indvars.iv.next277, %._crit_edge204 ] ; 2 uses
  %indvars.iv273 = phi i64 [ 0, %.lr.ph203.preheader ], [ %indvars.iv.next275, %._crit_edge204 ] ; 2 uses
  br i1 %6, label %.lr.ph203, label %._crit_edge204

.lr.ph203:                                        ; preds = %8
  %gep310 = getelementptr i8, ptr %invariant.gep309, i64 %indvars.iv273
  %i.jg = load i8, ptr %gep310, align 1, !tbaa !7
  %i.jh = zext i8 %i.jg to i64
  %i.ji = shl nuw nsw i64 %i.jh, 8
  %i.jj = or disjoint i64 %i.ji, %i.iz
  %i.jk = mul nuw i64 %i.jj, 281479271743489
  %i.jl = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv275 ; 9 uses
  %i.jm = insertelement <4 x i64> poison, i64 %i.jk, i64 0
  %i.jn = shufflevector <4 x i64> %i.jm, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  br i1 %i.jf, label %.epil.preheader395, label %.lr.ph203.new

.lr.ph203.new:                                    ; preds = %.lr.ph203, %.lr.ph203.new
  %indvars.iv271 = phi i64 [ %indvars.iv.next272.7, %.lr.ph203.new ], [ 0, %.lr.ph203 ] ; 9 uses
  %niter401 = phi i64 [ %niter401.next.7, %.lr.ph203.new ], [ 0, %.lr.ph203 ]
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %indvars.iv271
  store <4 x i64> %i.jn, ptr %i.jo, align 1, !tbaa !32
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %indvars.iv271
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 32
  store <4 x i64> %i.jn, ptr %i.jq, align 1, !tbaa !32
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %indvars.iv271
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 64
  store <4 x i64> %i.jn, ptr %i.js, align 1, !tbaa !32
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %indvars.iv271
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 96
  store <4 x i64> %i.jn, ptr %i.ju, align 1, !tbaa !32
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %indvars.iv271
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 128
  store <4 x i64> %i.jn, ptr %i.jw, align 1, !tbaa !32
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %indvars.iv271
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 160
  store <4 x i64> %i.jn, ptr %i.jy, align 1, !tbaa !32
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %indvars.iv271
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 192
  store <4 x i64> %i.jn, ptr %i.ka, align 1, !tbaa !32
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %indvars.iv271
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 224
  store <4 x i64> %i.jn, ptr %i.kc, align 1, !tbaa !32
  %indvars.iv.next272.7 = add nuw nsw i64 %indvars.iv271, 128 ; 2 uses
  %niter401.next.7 = add i64 %niter401, 8         ; 2 uses
  %niter401.ncmp.7.not = icmp eq i64 %niter401.next.7, %unroll_iter400
  br i1 %niter401.ncmp.7.not, label %._crit_edge204.unr-lcssa, label %.lr.ph203.new, !llvm.loop !36

._crit_edge204.unr-lcssa:                         ; preds = %.lr.ph203.new
  br i1 %lcmp.mod398.not, label %._crit_edge204, label %.epil.preheader395

.epil.preheader395:                               ; preds = %._crit_edge204.unr-lcssa, %.lr.ph203
  %indvars.iv271.epil.init = phi i64 [ 0, %.lr.ph203 ], [ %indvars.iv.next272.7, %._crit_edge204.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod399)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader395
  %indvars.iv271.epil = phi i64 [ %indvars.iv271.epil.init, %.epil.preheader395 ], [ %indvars.iv.next272.epil, %bb.k ] ; 2 uses
  %epil.iter397 = phi i64 [ 0, %.epil.preheader395 ], [ %epil.iter397.next, %bb.k ]
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %indvars.iv271.epil
  store <4 x i64> %i.jn, ptr %i.kd, align 1, !tbaa !32
  %indvars.iv.next272.epil = add nuw nsw i64 %indvars.iv271.epil, 16
  %epil.iter397.next = add i64 %epil.iter397, 1   ; 2 uses
  %epil.iter397.cmp.not = icmp eq i64 %epil.iter397.next, %xtraiter396
  br i1 %epil.iter397.cmp.not, label %._crit_edge204, label %bb.k, !llvm.loop !37

._crit_edge204:                                   ; preds = %._crit_edge204.unr-lcssa, %bb.k, %8
  %indvars.iv.next277 = add nsw i64 %indvars.iv275, %7
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond282.not = icmp eq i64 %indvars.iv.next275, %wide.trip.count281
  br i1 %exitcond282.not, label %.loopexit, label %8, !llvm.loop !38

.loopexit.loopexit367.unr-lcssa:                  ; preds = %.lr.ph197
  %lcmp.mod389.not = icmp eq i64 %xtraiter387, 0
  br i1 %lcmp.mod389.not, label %.loopexit, label %.lr.ph197.epil.preheader

.lr.ph197.epil.preheader:                         ; preds = %.loopexit.loopexit367.unr-lcssa, %.lr.ph197.preheader
  %indvars.iv255.epil.init = phi i64 [ %i.ga, %.lr.ph197.preheader ], [ %indvars.iv.next256.1, %.loopexit.loopexit367.unr-lcssa ]
  %indvars.iv253.epil.init = phi i64 [ 0, %.lr.ph197.preheader ], [ %indvars.iv.next254.1, %.loopexit.loopexit367.unr-lcssa ]
  %lcmp.mod390 = trunc i32 %i.fe to i1
  call void @llvm.assume(i1 %lcmp.mod390)
  %gep306.epil = getelementptr i8, ptr %invariant.gep305, i64 %indvars.iv253.epil.init
  %i.ke = load i8, ptr %gep306.epil, align 1, !tbaa !7 ; 2 uses
  %i.kf = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv255.epil.init ; 4 uses
  store i8 %i.fk, ptr %i.kf, align 1, !tbaa !7
  %.sroa.5.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.kf, i64 1
  store i8 %i.ke, ptr %.sroa.5.0..sroa_idx.epil, align 1, !tbaa !7
  %i.kg = getelementptr i8, ptr %i.kf, i64 2
  store i8 %i.fk, ptr %i.kg, align 1, !tbaa !7
  %.sroa.5.0..sroa_idx8.epil = getelementptr i8, ptr %i.kf, i64 3
  store i8 %i.ke, ptr %.sroa.5.0..sroa_idx8.epil, align 1, !tbaa !7
  br label %.loopexit

.loopexit.loopexit368.unr-lcssa:                  ; preds = %bb.i
  %lcmp.mod383.not = icmp eq i64 %xtraiter381, 0
  br i1 %lcmp.mod383.not, label %.loopexit, label %.epil.preheader380

.epil.preheader380:                               ; preds = %.loopexit.loopexit368.unr-lcssa, %.lr.ph194
  %indvars.iv246.epil.init = phi i64 [ %i.fw, %.lr.ph194 ], [ %indvars.iv.next247.1, %.loopexit.loopexit368.unr-lcssa ]
  %indvars.iv244.epil.init = phi i64 [ 0, %.lr.ph194 ], [ %indvars.iv.next245.1, %.loopexit.loopexit368.unr-lcssa ]
  %lcmp.mod384 = trunc i32 %i.fe to i1
  call void @llvm.assume(i1 %lcmp.mod384)
  %gep304.epil = getelementptr i8, ptr %invariant.gep303, i64 %indvars.iv244.epil.init
  %i.kh = load i8, ptr %gep304.epil, align 1, !tbaa !7
  %i.ki = zext i8 %i.kh to i64
  %i.kj = shl nuw nsw i64 %i.ki, 8
  %i.kk = or disjoint i64 %i.kj, %i.fu
  %i.kl = mul nuw i64 %i.kk, 281479271743489
  %i.km = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv246.epil.init
  store i64 %i.kl, ptr %i.km, align 1, !tbaa !32
  br label %.loopexit

.loopexit.loopexit369.unr-lcssa:                  ; preds = %bb.j
  %lcmp.mod376.not = icmp eq i64 %xtraiter374, 0
  br i1 %lcmp.mod376.not, label %.loopexit, label %.epil.preheader373

.epil.preheader373:                               ; preds = %.loopexit.loopexit369.unr-lcssa, %.lr.ph191
  %indvars.iv237.epil.init = phi i64 [ %i.fr, %.lr.ph191 ], [ %indvars.iv.next238.1, %.loopexit.loopexit369.unr-lcssa ]
  %indvars.iv235.epil.init = phi i64 [ 0, %.lr.ph191 ], [ %indvars.iv.next236.1, %.loopexit.loopexit369.unr-lcssa ]
  %lcmp.mod377 = trunc i32 %i.fe to i1
  call void @llvm.assume(i1 %lcmp.mod377)
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv235.epil.init
  %i.kn = load i8, ptr %gep.epil, align 1, !tbaa !7
  %i.ko = zext i8 %i.kn to i64
  %i.kp = shl nuw nsw i64 %i.ko, 8
  %i.kq = or disjoint i64 %i.kp, %i.fp
  %i.kr = mul nuw i64 %i.kq, 281479271743489      ; 2 uses
  %i.ks = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv237.epil.init ; 2 uses
  store i64 %i.kr, ptr %i.ks, align 1, !tbaa !32
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  store i64 %i.kr, ptr %i.kt, align 1, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader373, %.loopexit.loopexit369.unr-lcssa, %.epil.preheader380, %.loopexit.loopexit368.unr-lcssa, %.lr.ph197.epil.preheader, %.loopexit.loopexit367.unr-lcssa, %.lr.ph200.prol.loopexit, %.lr.ph200, %._crit_edge204, %middle.block344, %vec.epilog.middle.block362, %.preheader177, %.preheader175, %.preheader173, %.preheader, %.lr.ph208.a
  %i.ku = add nsw i32 %i.fe, %.0161212
  %i.kv = mul nsw i32 %i.fe, %i.fh
  %i.kw = add nsw i32 %i.kv, %.0162209
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %i.fc
  br i1 %exitcond287.not, label %.critedge, label %bb.h, !llvm.loop !39

.critedge:                                        ; preds = %.loopexit, %_ZN11duckdb_zstdL16HUF_rescaleStatsEPhPjjjj.exit, %bb.b, %bb.a
  %.1 = phi i64 [ -44, %_ZN11duckdb_zstdL16HUF_rescaleStatsEPhPjjjj.exit ], [ -44, %bb.a ], [ %i.g, %bb.b ], [ %i.g, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef i64 @_ZN11duckdb_zstd18HUF_readStats_wkspEPhmPjS1_S1_PKvmPvmi(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd21HUF_readDTableX2_wkspEPjPKvmPvmi(ptr nofree noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64                   ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %.sroa.0.0.copyload.i = load i32, ptr %0, align 4 ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i32 %.sroa.0.0.copyload.i to i8
  %.sroa.7.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 24
  %.sroa.7.0.extract.trunc = trunc nuw i32 %.sroa.7.0.extract.shift to i8
  %i.d = and i32 %.sroa.0.0.copyload.i, 255       ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 4          ; 3 uses
  %i.f = icmp ult i64 %4, 2124
  br i1 %i.f, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 676 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 680 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 624 ; 10 uses
  %i.j = icmp samesign ugt i32 %i.d, 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %i.i, i8 0, i64 112, i1 false)
  br i1 %i.j, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 992 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 1248
  %i.m = call noundef i64 @_ZN11duckdb_zstd18HUF_readStats_wkspEPhmPjS1_S1_PKvmPvmi(ptr noundef nonnull %i.k, i64 noundef 256, ptr noundef nonnull %i.i, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.l, i64 noundef 876, i32 noundef %5) ; 3 uses
  %i.n = icmp ult i64 %i.m, -119
  br i1 %i.n, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.b, align 4, !tbaa !3    ; 5 uses
  %i.p = icmp ugt i32 %i.o, %i.d
  br i1 %i.p, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add nuw nsw i32 %i.o, 1                  ; 5 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv182 = phi i32 [ %indvars.iv.next183, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %indvars.iv177 = phi i32 [ %indvars.iv.next178, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %indvars.iv158 = phi i32 [ %indvars.iv.next159, %bb.f ], [ %i.q, %bb.e ] ; 6 uses
  %.089 = phi i32 [ %i.v, %bb.f ], [ %i.o, %bb.e ] ; 6 uses
  %i.r = zext i32 %.089 to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = icmp eq i32 %i.t, 0
  %i.v = add i32 %.089, -1
  %indvars.iv.next159 = add i32 %indvars.iv158, -1
  %indvars.iv.next178 = add i32 %indvars.iv177, 1
  %indvars.iv.next183 = add i32 %indvars.iv182, -1
  br i1 %i.u, label %bb.f, label %.preheader, !llvm.loop !40

.preheader:                                       ; preds = %bb.f
  %i.w = icmp samesign ult i32 %i.o, 12
  %i.x = icmp eq i32 %i.d, 12
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  %spec.store.select = select i1 %or.cond, i32 11, i32 %i.d ; 7 uses
  %i.y = add i32 %.089, 1                         ; 2 uses
  %i.z = icmp ugt i32 %i.y, 1                     ; 2 uses
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %indvars.iv158 to i64
  %i.aa = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.aa, 3                    ; 3 uses
  %i.ab = add i32 %indvars.iv158, -2
  %i.ac = icmp ult i32 %i.ab, 3
  br i1 %i.ac, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.aa, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %.094115 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.ar, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.af = add i32 %i.ae, %.094115                 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  store i32 %.094115, ptr %i.ag, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = add i32 %i.ai, %i.af                    ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next
  store i32 %i.af, ptr %i.ak, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.1
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = add i32 %i.am, %i.aj                    ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.1
  store i32 %i.aj, ptr %i.ao, align 4, !tbaa !3
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.2
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = add i32 %i.aq, %i.an                    ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.2
  store i32 %i.an, ptr %i.as, align 4, !tbaa !3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !41

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.094115.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod334 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod334)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %.094115.epil = phi i32 [ %.094115.epil.init, %.lr.ph.epil.preheader ], [ %i.av, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.epil
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = add i32 %i.au, %.094115.epil            ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.epil
  store i32 %.094115.epil, ptr %i.aw, align 4, !tbaa !3
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !42

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.094.lcssa = phi i32 [ 0, %.preheader ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ], [ %i.av, %.lr.ph.epil ] ; 2 uses
  store i32 %.094.lcssa, ptr %i.h, align 4, !tbaa !3
  %i.ax = zext i32 %i.y to i64                    ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ax
  store i32 %.094.lcssa, ptr %i.ay, align 4, !tbaa !3
  %i.az = load i32, ptr %i.c, align 4, !tbaa !3   ; 4 uses
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
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !7
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.be ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3  ; 2 uses
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !3
  %i.bi = trunc i64 %indvars.iv160 to i8
  %i.bj = zext i32 %i.bg to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bj
  store i8 %i.bi, ptr %i.bk, align 1, !tbaa !43
  %indvars.iv.next161 = or disjoint i64 %indvars.iv160, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next161
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !7
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bn ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3  ; 2 uses
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !3
  %i.br = trunc i64 %indvars.iv.next161 to i8
  %i.bs = zext i32 %i.bp to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bs
  store i8 %i.br, ptr %i.bt, align 1, !tbaa !43
  %indvars.iv.next161.1 = add nuw nsw i64 %indvars.iv160, 2 ; 2 uses
  %niter340.next.1 = add i64 %niter340, 2         ; 2 uses
  %niter340.ncmp.1 = icmp eq i64 %niter340.next.1, %unroll_iter339
  br i1 %niter340.ncmp.1, label %._crit_edge121.loopexit.unr-lcssa, label %bb.g, !llvm.loop !45

._crit_edge121.loopexit.unr-lcssa:                ; preds = %bb.g
  %lcmp.mod337.not = icmp eq i64 %xtraiter335, 0
  br i1 %lcmp.mod337.not, label %._crit_edge121, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge121.loopexit.unr-lcssa, %.lr.ph120
  %indvars.iv160.epil.init = phi i64 [ 0, %.lr.ph120 ], [ %indvars.iv.next161.1, %._crit_edge121.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod338 = trunc i32 %i.az to i1
  call void @llvm.assume(i1 %lcmp.mod338)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv160.epil.init
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !7
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3  ; 2 uses
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !3
  %i.ca = trunc i64 %indvars.iv160.epil.init to i8
  %i.cb = zext i32 %i.by to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cb
  store i8 %i.ca, ptr %i.cc, align 1, !tbaa !43
  br label %._crit_edge121

._crit_edge121:                                   ; preds = %.epil.preheader, %._crit_edge121.loopexit.unr-lcssa, %._crit_edge
  store i32 0, ptr %i.h, align 4, !tbaa !3
  %i.cd = xor i32 %i.o, -1
  %i.ce = add nsw i32 %spec.store.select, %i.cd   ; 2 uses
  br i1 %i.z, label %.lr.ph125.preheader, label %_ZN11duckdb_zstdL16HUF_fillDTableX2EPNS_10HUF_DEltX2EjPKNS_14sortedSymbol_tEPKjPA13_jjj.exit

.lr.ph125.preheader:                              ; preds = %._crit_edge121
  %wide.trip.count169 = zext i32 %indvars.iv158 to i64 ; 4 uses
  %i.cf = add nsw i64 %wide.trip.count169, -1     ; 3 uses
  %xtraiter341.a = and i64 %i.cf, 1
  %i.cg = icmp eq i32 %indvars.iv158, 2
  br i1 %i.cg, label %.lr.ph125.epil.preheader, label %.lr.ph125.preheader.new

.lr.ph125.preheader.new:                          ; preds = %.lr.ph125.preheader
  %unroll_iter345.a = and i64 %i.cf, -2
  br label %.lr.ph125

.lr.ph125:                                        ; preds = %.lr.ph125, %.lr.ph125.preheader.new
  %indvars.iv165 = phi i64 [ 1, %.lr.ph125.preheader.new ], [ %indvars.iv.next166.1, %.lr.ph125 ] ; 5 uses
  %.091122 = phi i32 [ 0, %.lr.ph125.preheader.new ], [ %i.ct, %.lr.ph125 ] ; 2 uses
  %niter346.a = phi i64 [ 0, %.lr.ph125.preheader.new ], [ %niter346.next.1, %.lr.ph125 ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv165
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3
  %i.cj = trunc nuw i64 %indvars.iv165 to i32
  %i.ck = add i32 %i.ce, %i.cj
  %i.cl = shl i32 %i.ci, %i.ck
  %i.cm = add i32 %i.cl, %.091122                 ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv165
  store i32 %.091122, ptr %i.cn, align 4, !tbaa !3
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next166
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cq = trunc nuw i64 %indvars.iv.next166 to i32
  %i.cr = add i32 %i.ce, %i.cq
  %i.cs = shl i32 %i.cp, %i.cr
  %i.ct = add i32 %i.cs, %i.cm                    ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next166
  store i32 %i.cm, ptr %i.cu, align 4, !tbaa !3
  %indvars.iv.next166.1 = add nuw nsw i64 %indvars.iv165, 2 ; 2 uses
  %niter346.next.1 = add i64 %niter346.a, 2       ; 2 uses
  %niter346.ncmp.1 = icmp eq i64 %niter346.next.1, %unroll_iter345.a
  br i1 %niter346.ncmp.1, label %._crit_edge126.unr-lcssa, label %.lr.ph125, !llvm.loop !46

._crit_edge126.unr-lcssa:                         ; preds = %.lr.ph125
  %lcmp.mod343.not.a = icmp eq i64 %xtraiter341.a, 0
  br i1 %lcmp.mod343.not.a, label %._crit_edge126, label %.lr.ph125.epil.preheader

.lr.ph125.epil.preheader:                         ; preds = %._crit_edge126.unr-lcssa, %.lr.ph125.preheader
  %indvars.iv165.epil.init = phi i64 [ 1, %.lr.ph125.preheader ], [ %indvars.iv.next166.1, %._crit_edge126.unr-lcssa ]
  %.091122.epil.init = phi i32 [ 0, %.lr.ph125.preheader ], [ %i.ct, %._crit_edge126.unr-lcssa ]
  %lcmp.mod344.a = trunc i64 %i.cf to i1
  call void @llvm.assume(i1 %lcmp.mod344.a)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv165.epil.init
  store i32 %.091122.epil.init, ptr %i.cv, align 4, !tbaa !3
  br label %._crit_edge126

._crit_edge126:                                   ; preds = %._crit_edge126.unr-lcssa, %.lr.ph125.epil.preheader
  %i.cw = sub i32 %i.q, %.089                     ; 3 uses
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
  %diff.check = icmp ult i64 %i.dh, 32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.df, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.di = or disjoint i64 %index, 1               ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %wide.load = load <4 x i32>, ptr %i.dj, align 4, !tbaa !3
  %wide.load224 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !3
  %i.dl = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.dm = lshr <4 x i32> %wide.load224, %broadcast.splat
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.di ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store <4 x i32> %i.dl, ptr %i.dn, align 4, !tbaa !3
  store <4 x i32> %i.dm, ptr %i.do, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge130, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph129, %middle.block
  %indvars.iv171.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph129 ], [ %i.dd, %middle.block ] ; 4 uses
  %i.dq = sub nsw i64 %wide.trip.count169, %indvars.iv171.ph
  %xtraiter347.a = and i64 %i.dq, 3               ; 2 uses
  %lcmp.mod348.not.a = icmp eq i64 %xtraiter347.a, 0
  br i1 %lcmp.mod348.not.a, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv171.prol = phi i64 [ %indvars.iv.next172.prol, %scalar.ph.prol ], [ %indvars.iv171.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv171.prol
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !3
  %i.dt = lshr i32 %i.ds, %i.df
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv171.prol
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !3
  %indvars.iv.next172.prol = add nuw nsw i64 %indvars.iv171.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter347.a
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !48

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv171.unr = phi i64 [ %indvars.iv171.ph, %scalar.ph.preheader ], [ %indvars.iv.next172.prol, %scalar.ph.prol ]
  %i.dv = sub nsw i64 %indvars.iv171.ph, %wide.trip.count169
  %i.dw = icmp ugt i64 %i.dv, -4
  br i1 %i.dw, label %._crit_edge130, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv171 = phi i64 [ %indvars.iv.next172.3, %scalar.ph ], [ %indvars.iv171.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv171
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !3
  %i.dz = lshr i32 %i.dy, %i.df
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv171
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !3
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next172
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !3
  %i.ed = lshr i32 %i.ec, %i.df
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next172
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !3
  %indvars.iv.next172.1 = add nuw nsw i64 %indvars.iv171, 2 ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next172.1
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !3
  %i.eh = lshr i32 %i.eg, %i.df
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next172.1
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !3
  %indvars.iv.next172.2 = add nuw nsw i64 %indvars.iv171, 3 ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next172.2
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3
  %i.el = lshr i32 %i.ek, %i.df
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next172.2
  store i32 %i.el, ptr %i.em, align 4, !tbaa !3
  %indvars.iv.next172.3 = add nuw nsw i64 %indvars.iv171, 4 ; 2 uses
  %exitcond176.not.3 = icmp eq i64 %indvars.iv.next172.3, %wide.trip.count175
  br i1 %exitcond176.not.3, label %._crit_edge130, label %scalar.ph, !llvm.loop !49

._crit_edge130:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next180 to i32
  %exitcond184.not = icmp eq i32 %i.db, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond184.not, label %._crit_edge134.split, label %.lr.ph129, !llvm.loop !50

._crit_edge134.split:                             ; preds = %._crit_edge130, %._crit_edge126
  %i.en = getelementptr i8, ptr %3, i64 736       ; 6 uses
  %i.eo = sub nsw i32 %i.q, %spec.store.select
  %.not76.i = icmp slt i32 %.089, 1
  br i1 %.not76.i, label %_ZN11duckdb_zstdL16HUF_fillDTableX2EPNS_10HUF_DEltX2EjPKNS_14sortedSymbol_tEPKjPA13_jjj.exit, label %.lr.ph78.i.preheader

.lr.ph78.i.preheader:                             ; preds = %._crit_edge134.split
  %scevgep = getelementptr i8, ptr %0, i64 4
  %scevgep245 = getelementptr i8, ptr %0, i64 4
  %scevgep271 = getelementptr i8, ptr %0, i64 4
  %scevgep295 = getelementptr i8, ptr %0, i64 4
  %i.ep = add i64 %i.a, 735
  %i.eq = add i64 %i.a, 735
  %i.er = add i64 %i.a, 735
  %i.es = add i64 %i.a, 735
  br label %.lr.ph78.i

.lr.ph78.i:                                       ; preds = %.lr.ph78.i.preheader, %.loopexit.i
  %indvars.iv96.i = phi i64 [ %indvars.iv.next97.i, %.loopexit.i ], [ 1, %.lr.ph78.i.preheader ] ; 4 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv96.i
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !3  ; 4 uses
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1 ; 3 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next97.i
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3  ; 5 uses
  %i.ex = trunc nuw nsw i64 %indvars.iv96.i to i32
  %i.ey = sub i32 %i.q, %i.ex                     ; 10 uses
  %i.ez = sub i32 %spec.store.select, %i.ey       ; 3 uses
  %.not56.i = icmp ult i32 %i.ez, %i.cw
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv96.i
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !3  ; 3 uses
  br i1 %.not56.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %.lr.ph78.i
  %i.fc = and i32 %i.ez, 31
  %i.fd = shl nuw i32 1, %i.fc                    ; 4 uses
  %.not5766.i = icmp eq i32 %i.eu, %i.ew
  br i1 %.not5766.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.fe = add i32 %i.ey, %i.eo                    ; 3 uses
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.fe, i32 1)
  %i.ff = zext i32 %i.ey to i64
  %i.fg = getelementptr inbounds nuw [52 x i8], ptr %3, i64 %i.ff ; 2 uses
  %i.fh = icmp sgt i32 %i.fe, 1
  %i.fi = shl i32 %i.ey, 16
  %i.fj = add i32 %i.fi, 16777216                 ; 2 uses
  %i.fk = zext nneg i32 %spec.store.select.i to i64 ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fk ; 2 uses
  %.not61.i = icmp sgt i32 %i.fe, %.089
  %i.fm = add i32 %i.ey, %i.q
  %i.fn = sext i32 %i.eu to i64                   ; 2 uses
  br i1 %.not61.i, label %.loopexit.i.us.us.i.a, label %.lr.ph.split.i

.loopexit.i.us.us.i.a:                            ; preds = %.lr.ph.i, %.loopexit.i.us.i
  %indvars.iv90.i = phi i64 [ %indvars.iv.next94.i, %.loopexit.i.us.i ], [ %i.fn, %.lr.ph.i ] ; 2 uses
  %.05367.us.us.i = phi i32 [ %i.gv, %.loopexit.i.us.i ], [ %i.fb, %.lr.ph.i ] ; 2 uses
  %i.fo = sext i32 %.05367.us.us.i to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.fo ; 12 uses
  %i.fq = getelementptr inbounds i8, ptr %i.en, i64 %indvars.iv90.i
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !43
  %i.fs = zext i8 %i.fr to i32
  %i.ft = or disjoint i32 %i.fj, %i.fs
  %i.fu = zext i32 %i.ft to i64
  %i.fv = mul nuw i64 %i.fu, 4294967297           ; 4 uses
  %6 = load i32, ptr %i.fl, align 4, !tbaa !3     ; 3 uses
  switch i32 %i.fd, label %.preheader.i.us.i [
    i32 2, label %7
    i32 4, label %.loopexit.i.us.us74.i
  ]

.loopexit.i.us.us74.i:                            ; preds = %.loopexit.i.us.us.i.a
  store i64 %i.fv, ptr %i.fp, align 2
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i64 %i.fv, ptr %i.fw, align 2
  br label %.loopexit.i.us.i

7:                                                ; preds = %.loopexit.i.us.us.i.a
  store i64 %i.fv, ptr %i.fp, align 2
  br label %.loopexit.i.us.i

.preheader.i.us.i:                                ; preds = %.loopexit.i.us.us.i.a
  %i.fx = icmp sgt i32 %6, 0
  br i1 %i.fx, label %.lr.ph.preheader.i.us.i, label %.loopexit.i.us.i

.lr.ph.preheader.i.us.i:                          ; preds = %.preheader.i.us.i
  %i.fy = zext nneg i32 %6 to i64
  %i.fz = insertelement <4 x i64> poison, i64 %i.fv, i64 0
  %i.ga = shufflevector <4 x i64> %i.fz, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  %i.gb = add nsw i64 %i.fy, -1
  %i.gc = lshr i64 %i.gb, 3
  %i.gd = add nuw nsw i64 %i.gc, 1                ; 2 uses
  %xtraiter380 = and i64 %i.gd, 7                 ; 3 uses
  %i.ge = icmp ult i32 %6, 57
  br i1 %i.ge, label %.lr.ph.i.us.i.epil.preheader, label %.lr.ph.preheader.i.us.i.new

.lr.ph.preheader.i.us.i.new:                      ; preds = %.lr.ph.preheader.i.us.i
  %unroll_iter384 = and i64 %i.gd, 4611686018427387896
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i.us.i, %.lr.ph.preheader.i.us.i.new
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.preheader.i.us.i.new ], [ %indvars.iv.next.i.us.i.7, %.lr.ph.i.us.i ] ; 9 uses
  %niter385 = phi i64 [ 0, %.lr.ph.preheader.i.us.i.new ], [ %niter385.next.7, %.lr.ph.i.us.i ]
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv.i.us.i
  store <4 x i64> %i.ga, ptr %i.gf, align 2
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv.i.us.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  store <4 x i64> %i.ga, ptr %i.gh, align 2
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv.i.us.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 64
  store <4 x i64> %i.ga, ptr %i.gj, align 2
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv.i.us.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 96
  store <4 x i64> %i.ga, ptr %i.gl, align 2
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv.i.us.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 128
  store <4 x i64> %i.ga, ptr %i.gn, align 2
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv.i.us.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 160
  store <4 x i64> %i.ga, ptr %i.gp, align 2
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv.i.us.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 192
  store <4 x i64> %i.ga, ptr %i.gr, align 2
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv.i.us.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 224
  store <4 x i64> %i.ga, ptr %i.gt, align 2
  %indvars.iv.next.i.us.i.7 = add nuw nsw i64 %indvars.iv.i.us.i, 64 ; 2 uses
  %niter385.next.7 = add nuw nsw i64 %niter385, 8 ; 2 uses
  %niter385.ncmp.7.not = icmp eq i64 %niter385.next.7, %unroll_iter384
  br i1 %niter385.ncmp.7.not, label %.loopexit.i.us.i.loopexit.unr-lcssa, label %.lr.ph.i.us.i, !llvm.loop !51

.loopexit.i.us.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i.us.i
  %lcmp.mod382.not = icmp eq i64 %xtraiter380, 0
  br i1 %lcmp.mod382.not, label %.loopexit.i.us.i, label %.lr.ph.i.us.i.epil.preheader

.lr.ph.i.us.i.epil.preheader:                     ; preds = %.loopexit.i.us.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.us.i
  %indvars.iv.i.us.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.us.i ], [ %indvars.iv.next.i.us.i.7, %.loopexit.i.us.i.loopexit.unr-lcssa ]
  %lcmp.mod383 = icmp ne i64 %xtraiter380, 0
  call void @llvm.assume(i1 %lcmp.mod383)
  br label %.lr.ph.i.us.i.epil

.lr.ph.i.us.i.epil:                               ; preds = %.lr.ph.i.us.i.epil, %.lr.ph.i.us.i.epil.preheader
  %indvars.iv.i.us.i.epil = phi i64 [ %indvars.iv.i.us.i.epil.init, %.lr.ph.i.us.i.epil.preheader ], [ %indvars.iv.next.i.us.i.epil, %.lr.ph.i.us.i.epil ] ; 2 uses
  %epil.iter381 = phi i64 [ 0, %.lr.ph.i.us.i.epil.preheader ], [ %epil.iter381.next, %.lr.ph.i.us.i.epil ]
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv.i.us.i.epil
  store <4 x i64> %i.ga, ptr %i.gu, align 2
  %indvars.iv.next.i.us.i.epil = add nuw nsw i64 %indvars.iv.i.us.i.epil, 8
  %epil.iter381.next = add i64 %epil.iter381, 1   ; 2 uses
  %epil.iter381.cmp.not = icmp eq i64 %epil.iter381.next, %xtraiter380
  br i1 %epil.iter381.cmp.not, label %.loopexit.i.us.i, label %.lr.ph.i.us.i.epil, !llvm.loop !52

.loopexit.i.us.i:                                 ; preds = %.loopexit.i.us.i.loopexit.unr-lcssa, %.lr.ph.i.us.i.epil, %.preheader.i.us.i, %7, %.loopexit.i.us.us74.i
  %i.gv = add i32 %.05367.us.us.i, %i.fd
  %indvars.iv.next94.i = add nsw i64 %indvars.iv90.i, 1 ; 2 uses
  %i.gw = trunc nsw i64 %indvars.iv.next94.i to i32
  %.not57.us.i = icmp eq i32 %i.ew, %i.gw
  br i1 %.not57.us.i, label %.loopexit.i, label %.loopexit.i.us.us.i.a, !llvm.loop !53

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZN11duckdb_zstdL22HUF_fillDTableX2Level2EPNS_10HUF_DEltX2EjjPKjiiPKNS_14sortedSymbol_tES3_jt.exit.loopexit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN11duckdb_zstdL22HUF_fillDTableX2Level2EPNS_10HUF_DEltX2EjjPKjiiPKNS_14sortedSymbol_tES3_jt.exit.loopexit.i ], [ %i.fn, %.lr.ph.i ] ; 2 uses
  %.05367.i = phi i32 [ %i.qx, %_ZN11duckdb_zstdL22HUF_fillDTableX2Level2EPNS_10HUF_DEltX2EjjPKjiiPKNS_14sortedSymbol_tES3_jt.exit.loopexit.i ], [ %i.fb, %.lr.ph.i ] ; 4 uses
  %i.gx = sext i32 %.05367.i to i64
  %i.gy = sext i32 %.05367.i to i64
  %i.gz = sext i32 %.05367.i to i64
  %i.ha = getelementptr [4 x i8], ptr %i.e, i64 %i.gz ; 13 uses
  %i.hb = getelementptr inbounds i8, ptr %i.en, i64 %indvars.iv.i
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !43
  %i.hd = zext i8 %i.hc to i32                    ; 2 uses
  br i1 %i.fh, label %bb.i, label %.loopexit.i.i

bb.i:                                             ; preds = %.lr.ph.split.i
  %i.he = or disjoint i32 %i.fj, %i.hd
  %i.hf = zext i32 %i.he to i64
  %i.hg = mul nuw i64 %i.hf, 4294967297           ; 4 uses
  %i.hh = load i32, ptr %i.fl, align 4, !tbaa !3  ; 3 uses
  switch i32 %i.fd, label %.preheader.i.i [
    i32 2, label %bb.j
    i32 4, label %bb.k
  ]

.preheader.i.i:                                   ; preds = %bb.i
  %i.hi = icmp sgt i32 %i.hh, 0
  br i1 %i.hi, label %.lr.ph.preheader.i.i, label %.loopexit.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %i.hj = zext nneg i32 %i.hh to i64
  %i.hk = insertelement <4 x i64> poison, i64 %i.hg, i64 0
  %i.hl = shufflevector <4 x i64> %i.hk, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  %i.hm = add nsw i64 %i.hj, -1
  %i.hn = lshr i64 %i.hm, 3
  %i.ho = add nuw nsw i64 %i.hn, 1                ; 2 uses
  %xtraiter349 = and i64 %i.ho, 7                 ; 3 uses
  %i.hp = icmp ult i32 %i.hh, 57
  br i1 %i.hp, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter353 = and i64 %i.ho, 4611686018427387896
  br label %.lr.ph.i.i

bb.j:                                             ; preds = %bb.i
  store i64 %i.hg, ptr %i.ha, align 2
  br label %.loopexit.i.i

bb.k:                                             ; preds = %bb.i
  store i64 %i.hg, ptr %i.ha, align 2
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store i64 %i.hg, ptr %i.hq, align 2
  br label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ] ; 9 uses
  %niter354 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter354.next.7, %.lr.ph.i.i ]
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.i.i
  store <4 x i64> %i.hl, ptr %i.hr, align 2
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.i.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  store <4 x i64> %i.hl, ptr %i.ht, align 2
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 64
  store <4 x i64> %i.hl, ptr %i.hv, align 2
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 96
  store <4 x i64> %i.hl, ptr %i.hx, align 2
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.i.i
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 128
  store <4 x i64> %i.hl, ptr %i.hz, align 2
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 160
  store <4 x i64> %i.hl, ptr %i.ib, align 2
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 192
  store <4 x i64> %i.hl, ptr %i.id, align 2
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 224
  store <4 x i64> %i.hl, ptr %i.if, align 2
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 64 ; 2 uses
  %niter354.next.7 = add nuw nsw i64 %niter354, 8 ; 2 uses
  %niter354.ncmp.7.not = icmp eq i64 %niter354.next.7, %unroll_iter353
  br i1 %niter354.ncmp.7.not, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !51

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
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.i.i.epil
  store <4 x i64> %i.hl, ptr %i.ig, align 2
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 8
  %epil.iter350.next = add i64 %epil.iter350, 1   ; 2 uses
  %epil.iter350.cmp.not = icmp eq i64 %epil.iter350.next, %xtraiter349
  br i1 %epil.iter350.cmp.not, label %.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !54

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.k, %bb.j, %.preheader.i.i, %.lr.ph.split.i
  %invariant.op139 = or disjoint i32 %i.hd, 33554432 ; 5 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, %.loopexit.i.i
  %indvars.iv55.i.i = phi i64 [ %i.fk, %.loopexit.i.i ], [ %indvars.iv.next56.i.i, %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i ] ; 4 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv55.i.i
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !3  ; 2 uses
  %indvars.iv.next56.i.i = add nuw nsw i64 %indvars.iv55.i.i, 1 ; 3 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next56.i.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !3  ; 2 uses
  %i.il = trunc nsw i64 %indvars.iv55.i.i to i32
  %i.im = sub i32 %i.fm, %i.il                    ; 6 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv55.i.i
  %i.io = load i32, ptr %i.in, align 4, !tbaa !3
  %i.ip = zext i32 %i.io to i64                   ; 3 uses
  %i.iq = getelementptr [4 x i8], ptr %i.ha, i64 %i.ip ; 20 uses
  %i.ir = sext i32 %i.ii to i64                   ; 9 uses
  %i.is = getelementptr i8, ptr %i.en, i64 %i.ir  ; 16 uses
  %i.it = sext i32 %i.ik to i64                   ; 13 uses
  %i.iu = getelementptr i8, ptr %i.en, i64 %i.it  ; 7 uses
  %i.iv = sub i32 %spec.store.select, %i.im
  %i.iw = and i32 %i.iv, 31                       ; 2 uses
  %i.ix = shl nuw i32 1, %i.iw
  %.not82116.i.i = icmp eq i32 %i.ii, %i.ik       ; 5 uses
  switch i32 %i.iw, label %.preheader.i60.i [
    i32 0, label %.preheader84.i.i
    i32 1, label %.preheader86.i.i
    i32 2, label %.preheader88.i.i
    i32 3, label %.preheader90.i.i
  ]

.preheader90.i.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph.i58.i

.lr.ph.i58.i:                                     ; preds = %.preheader90.i.i
  %i.iy = shl i32 %i.im, 16
  %invariant.op.reass = add i32 %i.iy, %invariant.op139 ; 3 uses
  %i.iz = sub nsw i64 %i.it, %i.ir
  %xtraiter355 = and i64 %i.iz, 1
  %lcmp.mod356.not = icmp eq i64 %xtraiter355, 0
  br i1 %lcmp.mod356.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i58.i
  %i.ja = load i8, ptr %i.is, align 1, !tbaa !43
  %i.jb = zext i8 %i.ja to i32
  %i.jc = shl nuw nsw i32 %i.jb, 8
  %.reass.reass.i.reass.i.reass.prol = or disjoint i32 %i.jc, %invariant.op.reass
  %i.jd = zext i32 %.reass.reass.i.reass.i.reass.prol to i64
  %i.je = mul nuw i64 %i.jd, 4294967297           ; 4 uses
  store i64 %i.je, ptr %i.iq, align 2
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store i64 %i.je, ptr %i.jf, align 2
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store i64 %i.je, ptr %i.jg, align 2
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  store i64 %i.je, ptr %i.jh, align 2
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  %i.jj = getelementptr inbounds nuw i8, ptr %i.is, i64 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i58.i
  %.394.i.i.unr = phi ptr [ %i.iq, %.lr.ph.i58.i ], [ %i.ji, %.prol.loopexit.unr-lcssa ]
  %.37793.i.i.unr = phi ptr [ %i.is, %.lr.ph.i58.i ], [ %i.jj, %.prol.loopexit.unr-lcssa ]
  %i.jk = add nsw i64 %i.it, -1
  %i.jl = icmp eq i64 %i.jk, %i.ir
  br i1 %i.jl, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph.i58.i.new

.preheader88.i.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph98.i.i

.lr.ph98.i.i:                                     ; preds = %.preheader88.i.i
  %i.jm = shl i32 %i.im, 16
  %invariant.op135.reass.a = add i32 %i.jm, %invariant.op139 ; 5 uses
  %i.jn = sub nsw i64 %i.it, %i.ir
  %xtraiter360.a = and i64 %i.jn, 3               ; 2 uses
  %lcmp.mod361.not.a = icmp eq i64 %xtraiter360.a, 0
  br i1 %lcmp.mod361.not.a, label %.prol.loopexit359, label %.prol.preheader358

.prol.preheader358:                               ; preds = %.lr.ph98.i.i, %.prol.preheader358
  %.297.i.i.prol = phi ptr [ %i.ju, %.prol.preheader358 ], [ %i.iq, %.lr.ph98.i.i ] ; 3 uses
  %.27696.i.i.prol = phi ptr [ %i.jv, %.prol.preheader358 ], [ %i.is, %.lr.ph98.i.i ] ; 2 uses
  %prol.iter362.a = phi i64 [ %prol.iter362.next.a, %.prol.preheader358 ], [ 0, %.lr.ph98.i.i ]
  %i.jo = load i8, ptr %.27696.i.i.prol, align 1, !tbaa !43
  %i.jp = zext i8 %i.jo to i32
  %i.jq = shl nuw nsw i32 %i.jp, 8
  %.reass100.reass.i.reass.i.reass.prol = or disjoint i32 %i.jq, %invariant.op135.reass.a
  %i.jr = zext i32 %.reass100.reass.i.reass.i.reass.prol to i64
  %i.js = mul nuw i64 %i.jr, 4294967297           ; 2 uses
  store i64 %i.js, ptr %.297.i.i.prol, align 2
  %i.jt = getelementptr inbounds nuw i8, ptr %.297.i.i.prol, i64 8
  store i64 %i.js, ptr %i.jt, align 2
  %i.ju = getelementptr inbounds nuw i8, ptr %.297.i.i.prol, i64 16 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.27696.i.i.prol, i64 1 ; 2 uses
  %prol.iter362.next.a = add i64 %prol.iter362.a, 1 ; 2 uses
  %prol.iter362.cmp.not.a = icmp eq i64 %prol.iter362.next.a, %xtraiter360.a
  br i1 %prol.iter362.cmp.not.a, label %.prol.loopexit359, label %.prol.preheader358, !llvm.loop !55

.prol.loopexit359:                                ; preds = %.prol.preheader358, %.lr.ph98.i.i
  %.297.i.i.unr = phi ptr [ %i.iq, %.lr.ph98.i.i ], [ %i.ju, %.prol.preheader358 ]
  %.27696.i.i.unr = phi ptr [ %i.is, %.lr.ph98.i.i ], [ %i.jv, %.prol.preheader358 ]
  %i.jw = sub nsw i64 %i.ir, %i.it
  %i.jx = icmp ugt i64 %i.jw, -4
  br i1 %i.jx, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph98.i.i.new

.preheader86.i.i:                                 ; preds = %bb.l
  br i1 %.not82116.i.i, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph104.i.i

.lr.ph104.i.i:                                    ; preds = %.preheader86.i.i
  %i.jy = shl i32 %i.im, 16
  %invariant.op136.reass.a = add i32 %i.jy, %invariant.op139 ; 6 uses
  %i.jz = sub nsw i64 %i.it, %i.ir                ; 3 uses
  %min.iters.check301 = icmp ult i64 %i.jz, 8
  br i1 %min.iters.check301, label %scalar.ph300.preheader, label %vector.memcheck294

vector.memcheck294:                               ; preds = %.lr.ph104.i.i
  %i.ka = shl nsw i64 %i.it, 3
  %i.kb = add nsw i64 %i.gx, %i.ip
  %i.kc = shl nsw i64 %i.kb, 2
  %i.kd = add nsw i64 %i.ka, %i.kc
  %i.ke = shl nsw i64 %i.ir, 3
  %i.kf = sub nsw i64 %i.kd, %i.ke
  %scevgep296 = getelementptr i8, ptr %scevgep295, i64 %i.kf
  %bound0297 = icmp ult ptr %i.iq, %i.iu
  %bound1298 = icmp ult ptr %i.is, %scevgep296
  %found.conflict299 = and i1 %bound0297, %bound1298
  br i1 %found.conflict299, label %scalar.ph300.preheader, label %vector.ph302

vector.ph302:                                     ; preds = %vector.memcheck294
  %n.vec304 = and i64 %i.jz, -4                   ; 4 uses
  %i.kg = shl nsw i64 %n.vec304, 3
  %i.kh = getelementptr i8, ptr %i.iq, i64 %i.kg
  %i.ki = getelementptr i8, ptr %i.is, i64 %n.vec304
  %broadcast.splatinsert305 = insertelement <2 x i32> poison, i32 %invariant.op136.reass.a, i64 0
  %broadcast.splat306 = shufflevector <2 x i32> %broadcast.splatinsert305, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body307

vector.body307:                                   ; preds = %vector.body307, %vector.ph302
  %index308 = phi i64 [ 0, %vector.ph302 ], [ %index.next316, %vector.body307 ] ; 3 uses
  %i.kj = shl i64 %index308, 3                    ; 2 uses
  %next.gep309 = getelementptr i8, ptr %i.iq, i64 %i.kj
  %i.kk = getelementptr i8, ptr %i.iq, i64 %i.kj
  %next.gep310 = getelementptr i8, ptr %i.kk, i64 16
  %next.gep311 = getelementptr i8, ptr %i.is, i64 %index308 ; 2 uses
  %i.kl = getelementptr i8, ptr %next.gep311, i64 2
  %wide.load312 = load <2 x i8>, ptr %next.gep311, align 1, !tbaa !43, !alias.scope !56
  %wide.load313 = load <2 x i8>, ptr %i.kl, align 1, !tbaa !43, !alias.scope !56
  %i.km = zext <2 x i8> %wide.load312 to <2 x i32>
  %i.kn = zext <2 x i8> %wide.load313 to <2 x i32>
  %i.ko = shl nuw nsw <2 x i32> %i.km, splat (i32 8)
  %i.kp = shl nuw nsw <2 x i32> %i.kn, splat (i32 8)
  %i.kq = or disjoint <2 x i32> %i.ko, %broadcast.splat306
  %i.kr = or disjoint <2 x i32> %i.kp, %broadcast.splat306
  %interleaved.vec314 = shufflevector <2 x i32> %i.kq, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x i32> %interleaved.vec314, ptr %next.gep309, align 2, !alias.scope !59, !noalias !56
  %interleaved.vec315 = shufflevector <2 x i32> %i.kr, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x i32> %interleaved.vec315, ptr %next.gep310, align 2, !alias.scope !59, !noalias !56
  %index.next316 = add nuw i64 %index308, 4       ; 2 uses
  %i.ks = icmp eq i64 %index.next316, %n.vec304
  br i1 %i.ks, label %middle.block317, label %vector.body307, !llvm.loop !61

middle.block317:                                  ; preds = %vector.body307
  %cmp.n318 = icmp eq i64 %i.jz, %n.vec304
  br i1 %cmp.n318, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %scalar.ph300.preheader

scalar.ph300.preheader:                           ; preds = %vector.memcheck294, %.lr.ph104.i.i, %middle.block317
  %.1103.i.i.ph = phi ptr [ %i.iq, %vector.memcheck294 ], [ %i.iq, %.lr.ph104.i.i ], [ %i.kh, %middle.block317 ] ; 2 uses
  %.175102.i.i.ph = phi ptr [ %i.is, %vector.memcheck294 ], [ %i.is, %.lr.ph104.i.i ], [ %i.ki, %middle.block317 ] ; 3 uses
  %i.kt = add i64 %i.a, %i.it
  %.175102.i.i.ph363 = ptrtoint ptr %.175102.i.i.ph to i64 ; 2 uses
  %i.ku = sub i64 %i.kt, %.175102.i.i.ph363
  %i.kv = add i64 %i.ep, %i.it
  %i.kw = sub i64 %i.kv, %.175102.i.i.ph363
  %xtraiter364 = and i64 %i.ku, 3                 ; 2 uses
  %lcmp.mod365.not = icmp eq i64 %xtraiter364, 0
  br i1 %lcmp.mod365.not, label %scalar.ph300.prol.loopexit, label %scalar.ph300.prol

scalar.ph300.prol:                                ; preds = %scalar.ph300.preheader, %scalar.ph300.prol
  %.1103.i.i.prol = phi ptr [ %i.lb, %scalar.ph300.prol ], [ %.1103.i.i.ph, %scalar.ph300.preheader ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd21HUF_readDTableX2_wkspEPjPKvmPvmi:bb.a
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !43
  %i.nd = zext i8 %i.nc to i32
  %i.ne = shl nuw nsw i32 %i.nd, 8
  %.reass112.reass.i.reass.i.reass.3 = or disjoint i32 %i.ne, %invariant.op137.reass
  %i.nf = getelementptr inbounds nuw i8, ptr %.0109.i.i, i64 16
  store i32 %.reass112.reass.i.reass.i.reass.3, ptr %i.na, align 2
  %i.ng = getelementptr inbounds nuw i8, ptr %.074108.i.i, i64 4 ; 2 uses
  %.not81.i.i.3 = icmp eq ptr %i.ng, %i.iu
  br i1 %.not81.i.i.3, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %scalar.ph276, !llvm.loop !70

scalar.ph300:                                     ; preds = %scalar.ph300.prol.loopexit, %scalar.ph300
  %.1103.i.i = phi ptr [ %i.od, %scalar.ph300 ], [ %.1103.i.i.unr, %scalar.ph300.prol.loopexit ] ; 9 uses
  %.175102.i.i = phi ptr [ %i.oe, %scalar.ph300 ], [ %.175102.i.i.unr, %scalar.ph300.prol.loopexit ] ; 5 uses
  %i.nh = load i8, ptr %.175102.i.i, align 1, !tbaa !43
  %i.ni = zext i8 %i.nh to i32
  %i.nj = shl nuw nsw i32 %i.ni, 8
  %.reass106.reass.i.reass.i.reass = or disjoint i32 %i.nj, %invariant.op136.reass.a ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass, ptr %.1103.i.i, align 2
  %i.nk = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 4
  store i32 %.reass106.reass.i.reass.i.reass, ptr %i.nk, align 2
  %i.nl = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 8
  %i.nm = getelementptr inbounds nuw i8, ptr %.175102.i.i, i64 1
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !43
  %i.no = zext i8 %i.nn to i32
  %i.np = shl nuw nsw i32 %i.no, 8
  %.reass106.reass.i.reass.i.reass.1 = or disjoint i32 %i.np, %invariant.op136.reass.a ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass.1, ptr %i.nl, align 2
  %i.nq = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 12
  store i32 %.reass106.reass.i.reass.i.reass.1, ptr %i.nq, align 2
  %i.nr = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 16
  %i.ns = getelementptr inbounds nuw i8, ptr %.175102.i.i, i64 2
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !43
  %i.nu = zext i8 %i.nt to i32
  %i.nv = shl nuw nsw i32 %i.nu, 8
  %.reass106.reass.i.reass.i.reass.2 = or disjoint i32 %i.nv, %invariant.op136.reass.a ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass.2, ptr %i.nr, align 2
  %i.nw = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 20
  store i32 %.reass106.reass.i.reass.i.reass.2, ptr %i.nw, align 2
  %i.nx = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 24
  %i.ny = getelementptr inbounds nuw i8, ptr %.175102.i.i, i64 3
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !43
  %i.oa = zext i8 %i.nz to i32
  %i.ob = shl nuw nsw i32 %i.oa, 8
  %.reass106.reass.i.reass.i.reass.3 = or disjoint i32 %i.ob, %invariant.op136.reass.a ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass.3, ptr %i.nx, align 2
  %i.oc = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 28
  store i32 %.reass106.reass.i.reass.i.reass.3, ptr %i.oc, align 2
  %i.od = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 32
  %i.oe = getelementptr inbounds nuw i8, ptr %.175102.i.i, i64 4 ; 2 uses
  %.not80.i.i.3 = icmp eq ptr %i.oe, %i.iu
  br i1 %.not80.i.i.3, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %scalar.ph300, !llvm.loop !71

.lr.ph98.i.i.new:                                 ; preds = %.prol.loopexit359, %.lr.ph98.i.i.new
  %.297.i.i = phi ptr [ %i.pj, %.lr.ph98.i.i.new ], [ %.297.i.i.unr, %.prol.loopexit359 ] ; 9 uses
  %.27696.i.i = phi ptr [ %i.pk, %.lr.ph98.i.i.new ], [ %.27696.i.i.unr, %.prol.loopexit359 ] ; 5 uses
  %i.of = load i8, ptr %.27696.i.i, align 1, !tbaa !43
  %i.og = zext i8 %i.of to i32
  %i.oh = shl nuw nsw i32 %i.og, 8
  %.reass100.reass.i.reass.i.reass = or disjoint i32 %i.oh, %invariant.op135.reass.a
  %i.oi = zext i32 %.reass100.reass.i.reass.i.reass to i64
  %i.oj = mul nuw i64 %i.oi, 4294967297           ; 2 uses
  store i64 %i.oj, ptr %.297.i.i, align 2
  %i.ok = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 8
  store i64 %i.oj, ptr %i.ok, align 2
  %i.ol = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 16
  %i.om = getelementptr inbounds nuw i8, ptr %.27696.i.i, i64 1
  %i.on = load i8, ptr %i.om, align 1, !tbaa !43
  %i.oo = zext i8 %i.on to i32
  %i.op = shl nuw nsw i32 %i.oo, 8
  %.reass100.reass.i.reass.i.reass.1 = or disjoint i32 %i.op, %invariant.op135.reass.a
  %i.oq = zext i32 %.reass100.reass.i.reass.i.reass.1 to i64
  %i.or = mul nuw i64 %i.oq, 4294967297           ; 2 uses
  store i64 %i.or, ptr %i.ol, align 2
  %i.os = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 24
  store i64 %i.or, ptr %i.os, align 2
  %i.ot = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 32
  %i.ou = getelementptr inbounds nuw i8, ptr %.27696.i.i, i64 2
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !43
  %i.ow = zext i8 %i.ov to i32
  %i.ox = shl nuw nsw i32 %i.ow, 8
  %.reass100.reass.i.reass.i.reass.2 = or disjoint i32 %i.ox, %invariant.op135.reass.a
  %i.oy = zext i32 %.reass100.reass.i.reass.i.reass.2 to i64
  %i.oz = mul nuw i64 %i.oy, 4294967297           ; 2 uses
  store i64 %i.oz, ptr %i.ot, align 2
  %i.pa = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 40
  store i64 %i.oz, ptr %i.pa, align 2
  %i.pb = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 48
  %i.pc = getelementptr inbounds nuw i8, ptr %.27696.i.i, i64 3
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !43
  %i.pe = zext i8 %i.pd to i32
  %i.pf = shl nuw nsw i32 %i.pe, 8
  %.reass100.reass.i.reass.i.reass.3 = or disjoint i32 %i.pf, %invariant.op135.reass.a
  %i.pg = zext i32 %.reass100.reass.i.reass.i.reass.3 to i64
  %i.ph = mul nuw i64 %i.pg, 4294967297           ; 2 uses
  store i64 %i.ph, ptr %i.pb, align 2
  %i.pi = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 56
  store i64 %i.ph, ptr %i.pi, align 2
  %i.pj = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 64
  %i.pk = getelementptr inbounds nuw i8, ptr %.27696.i.i, i64 4 ; 2 uses
  %.not79.i.i.3 = icmp eq ptr %i.pk, %i.iu
  br i1 %.not79.i.i.3, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph98.i.i.new, !llvm.loop !72

.lr.ph.i58.i.new:                                 ; preds = %.prol.loopexit, %.lr.ph.i58.i.new
  %.394.i.i = phi ptr [ %i.qd, %.lr.ph.i58.i.new ], [ %.394.i.i.unr, %.prol.loopexit ] ; 9 uses
  %.37793.i.i = phi ptr [ %i.qe, %.lr.ph.i58.i.new ], [ %.37793.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.pl = load i8, ptr %.37793.i.i, align 1, !tbaa !43
  %i.pm = zext i8 %i.pl to i32
  %i.pn = shl nuw nsw i32 %i.pm, 8
  %.reass.reass.i.reass.i.reass = or disjoint i32 %i.pn, %invariant.op.reass
  %i.po = zext i32 %.reass.reass.i.reass.i.reass to i64
  %i.pp = mul nuw i64 %i.po, 4294967297           ; 4 uses
  store i64 %i.pp, ptr %.394.i.i, align 2
  %i.pq = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 8
  store i64 %i.pp, ptr %i.pq, align 2
  %i.pr = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 16
  store i64 %i.pp, ptr %i.pr, align 2
  %i.ps = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 24
  store i64 %i.pp, ptr %i.ps, align 2
  %i.pt = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 32
  %i.pu = getelementptr inbounds nuw i8, ptr %.37793.i.i, i64 1
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !43
  %i.pw = zext i8 %i.pv to i32
  %i.px = shl nuw nsw i32 %i.pw, 8
  %.reass.reass.i.reass.i.reass.1 = or disjoint i32 %i.px, %invariant.op.reass
  %i.py = zext i32 %.reass.reass.i.reass.i.reass.1 to i64
  %i.pz = mul nuw i64 %i.py, 4294967297           ; 4 uses
  store i64 %i.pz, ptr %i.pt, align 2
  %i.qa = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 40
  store i64 %i.pz, ptr %i.qa, align 2
  %i.qb = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 48
  store i64 %i.pz, ptr %i.qb, align 2
  %i.qc = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 56
  store i64 %i.pz, ptr %i.qc, align 2
  %i.qd = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 64
  %i.qe = getelementptr inbounds nuw i8, ptr %.37793.i.i, i64 2 ; 2 uses
  %.not.i.i.1 = icmp eq ptr %i.qe, %i.iu
  br i1 %.not.i.i.1, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph.i58.i.new, !llvm.loop !73

.lr.ph115.preheader.i.i:                          ; preds = %._crit_edge.i.i, %.lr.ph119.i.i
  %.4118.i.i = phi ptr [ %i.iq, %.lr.ph119.i.i ], [ %i.qk, %._crit_edge.i.i ] ; 3 uses
  %.478117.i.i = phi ptr [ %i.is, %.lr.ph119.i.i ], [ %i.qw, %._crit_edge.i.i ] ; 2 uses
  %i.qf = load i8, ptr %.478117.i.i, align 1, !tbaa !43
  %i.qg = zext i8 %i.qf to i32
  %i.qh = shl nuw nsw i32 %i.qg, 8
  %.reass.i.reass = or disjoint i32 %i.qh, %invariant.op138.reass
  %i.qi = zext i32 %.reass.i.reass to i64
  %i.qj = mul nuw i64 %i.qi, 4294967297
  %i.qk = getelementptr inbounds nuw i8, ptr %.4118.i.i, i64 %.idx.i.i ; 2 uses
  %i.ql = insertelement <4 x i64> poison, i64 %i.qj, i64 0
  %i.qm = shufflevector <4 x i64> %i.ql, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  br i1 %lcmp.mod372.not, label %.lr.ph115.i.i.prol.loopexit, label %.lr.ph115.i.i.prol

.lr.ph115.i.i.prol:                               ; preds = %.lr.ph115.preheader.i.i, %.lr.ph115.i.i.prol
  %.5114.i.i.prol = phi ptr [ %i.qn, %.lr.ph115.i.i.prol ], [ %.4118.i.i, %.lr.ph115.preheader.i.i ] ; 2 uses
  %prol.iter373 = phi i64 [ %prol.iter373.next, %.lr.ph115.i.i.prol ], [ 0, %.lr.ph115.preheader.i.i ]
  store <4 x i64> %i.qm, ptr %.5114.i.i.prol, align 2
  %i.qn = getelementptr inbounds nuw i8, ptr %.5114.i.i.prol, i64 32 ; 2 uses
  %prol.iter373.next = add i64 %prol.iter373, 1   ; 2 uses
  %prol.iter373.cmp.not = icmp eq i64 %prol.iter373.next, %xtraiter371
  br i1 %prol.iter373.cmp.not, label %.lr.ph115.i.i.prol.loopexit, label %.lr.ph115.i.i.prol, !llvm.loop !74

.lr.ph115.i.i.prol.loopexit:                      ; preds = %.lr.ph115.i.i.prol, %.lr.ph115.preheader.i.i
  %.5114.i.i.unr = phi ptr [ %.4118.i.i, %.lr.ph115.preheader.i.i ], [ %i.qn, %.lr.ph115.i.i.prol ]
  br i1 %i.mm, label %._crit_edge.i.i, label %.lr.ph115.i.i

.lr.ph115.i.i:                                    ; preds = %.lr.ph115.i.i.prol.loopexit, %.lr.ph115.i.i
  %.5114.i.i = phi ptr [ %i.qv, %.lr.ph115.i.i ], [ %.5114.i.i.unr, %.lr.ph115.i.i.prol.loopexit ] ; 9 uses
  store <4 x i64> %i.qm, ptr %.5114.i.i, align 2
  %i.qo = getelementptr inbounds nuw i8, ptr %.5114.i.i, i64 32
  store <4 x i64> %i.qm, ptr %i.qo, align 2
  %i.qp = getelementptr inbounds nuw i8, ptr %.5114.i.i, i64 64
  store <4 x i64> %i.qm, ptr %i.qp, align 2
  %i.qq = getelementptr inbounds nuw i8, ptr %.5114.i.i, i64 96
  store <4 x i64> %i.qm, ptr %i.qq, align 2
  %i.qr = getelementptr inbounds nuw i8, ptr %.5114.i.i, i64 128
  store <4 x i64> %i.qm, ptr %i.qr, align 2
  %i.qs = getelementptr inbounds nuw i8, ptr %.5114.i.i, i64 160
  store <4 x i64> %i.qm, ptr %i.qs, align 2
  %i.qt = getelementptr inbounds nuw i8, ptr %.5114.i.i, i64 192
  store <4 x i64> %i.qm, ptr %i.qt, align 2
  %i.qu = getelementptr inbounds nuw i8, ptr %.5114.i.i, i64 224
  store <4 x i64> %i.qm, ptr %i.qu, align 2
  %i.qv = getelementptr inbounds nuw i8, ptr %.5114.i.i, i64 256 ; 2 uses
  %.not83.i.i.7 = icmp eq ptr %i.qv, %i.qk
  br i1 %.not83.i.i.7, label %._crit_edge.i.i, label %.lr.ph115.i.i, !llvm.loop !75

._crit_edge.i.i:                                  ; preds = %.lr.ph115.i.i, %.lr.ph115.i.i.prol.loopexit
  %i.qw = getelementptr inbounds nuw i8, ptr %.478117.i.i, i64 1 ; 2 uses
  %.not82.i.i = icmp eq ptr %i.qw, %i.iu
  br i1 %.not82.i.i, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph115.preheader.i.i, !llvm.loop !76

_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i: ; preds = %.prol.loopexit, %.lr.ph.i58.i.new, %.prol.loopexit359, %.lr.ph98.i.i.new, %scalar.ph300.prol.loopexit, %scalar.ph300, %scalar.ph276.prol.loopexit, %scalar.ph276, %._crit_edge.i.i, %middle.block317, %middle.block290, %.preheader.i60.i, %.preheader84.i.i, %.preheader86.i.i, %.preheader88.i.i, %.preheader90.i.i
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next56.i.i, %i.ax
  br i1 %exitcond.not.i.i, label %_ZN11duckdb_zstdL22HUF_fillDTableX2Level2EPNS_10HUF_DEltX2EjjPKjiiPKNS_14sortedSymbol_tES3_jt.exit.loopexit.i, label %bb.l, !llvm.loop !77

_ZN11duckdb_zstdL22HUF_fillDTableX2Level2EPNS_10HUF_DEltX2EjjPKjiiPKNS_14sortedSymbol_tES3_jt.exit.loopexit.i: ; preds = %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i
  %i.qx = add i32 %.05367.i, %i.fd
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.qy = trunc nsw i64 %indvars.iv.next.i to i32
  %.not57.i = icmp eq i32 %i.ew, %i.qy
  br i1 %.not57.i, label %.loopexit.i, label %.lr.ph.split.i, !llvm.loop !53

bb.m:                                             ; preds = %.lr.ph78.i
  %i.qz = zext i32 %i.fb to i64                   ; 3 uses
  %i.ra = getelementptr [4 x i8], ptr %i.e, i64 %i.qz ; 20 uses
  %i.rb = sext i32 %i.eu to i64                   ; 9 uses
  %i.rc = getelementptr i8, ptr %i.en, i64 %i.rb  ; 16 uses
  %i.rd = sext i32 %i.ew to i64                   ; 13 uses
  %i.re = getelementptr i8, ptr %i.en, i64 %i.rd  ; 7 uses
  %i.rf = and i32 %i.ez, 31                       ; 2 uses
  %i.rg = shl nuw i32 1, %i.rf
  %.not82116.i = icmp eq i32 %i.eu, %i.ew         ; 5 uses
  switch i32 %i.rf, label %.preheader.i [
    i32 0, label %.preheader84.i
    i32 1, label %.preheader86.i
    i32 2, label %.preheader88.i
    i32 3, label %.preheader90.i
  ]

.preheader90.i:                                   ; preds = %bb.m
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph.i98

.lr.ph.i98:                                       ; preds = %.preheader90.i
  %i.rh = shl i32 %i.ey, 16
  %i.ri = add i32 %i.rh, 16777216                 ; 3 uses
  %i.rj = sub nsw i64 %i.rd, %i.rb
  %xtraiter386.a = and i64 %i.rj, 1
  %lcmp.mod387.not.a = icmp eq i64 %xtraiter386.a, 0
  br i1 %lcmp.mod387.not.a, label %.lr.ph.split.us.i99.prol.loopexit, label %.lr.ph.split.us.i99.prol

.lr.ph.split.us.i99.prol:                         ; preds = %.lr.ph.i98
  %i.rk = load i8, ptr %i.rc, align 1, !tbaa !43
  %i.rl = zext i8 %i.rk to i32
  %i.rm = or disjoint i32 %i.ri, %i.rl
  %i.rn = zext i32 %i.rm to i64
  %i.ro = mul nuw i64 %i.rn, 4294967297           ; 4 uses
  store i64 %i.ro, ptr %i.ra, align 2
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  store i64 %i.ro, ptr %i.rp, align 2
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  store i64 %i.ro, ptr %i.rq, align 2
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ra, i64 24
  store i64 %i.ro, ptr %i.rr, align 2
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ra, i64 32
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rc, i64 1
  br label %.lr.ph.split.us.i99.prol.loopexit

.lr.ph.split.us.i99.prol.loopexit:                ; preds = %.lr.ph.split.us.i99.prol, %.lr.ph.i98
  %.394.us.i.unr = phi ptr [ %i.ra, %.lr.ph.i98 ], [ %i.rs, %.lr.ph.split.us.i99.prol ]
  %.37793.us.i.unr = phi ptr [ %i.rc, %.lr.ph.i98 ], [ %i.rt, %.lr.ph.split.us.i99.prol ]
  %i.ru = add nsw i64 %i.rd, -1
  %i.rv = icmp eq i64 %i.ru, %i.rb
  br i1 %i.rv, label %.loopexit.i, label %.lr.ph.split.us.i99

.lr.ph.split.us.i99:                              ; preds = %.lr.ph.split.us.i99.prol.loopexit, %.lr.ph.split.us.i99
  %.394.us.i = phi ptr [ %i.so, %.lr.ph.split.us.i99 ], [ %.394.us.i.unr, %.lr.ph.split.us.i99.prol.loopexit ] ; 9 uses
  %.37793.us.i = phi ptr [ %i.sp, %.lr.ph.split.us.i99 ], [ %.37793.us.i.unr, %.lr.ph.split.us.i99.prol.loopexit ] ; 3 uses
  %i.rw = load i8, ptr %.37793.us.i, align 1, !tbaa !43
  %i.rx = zext i8 %i.rw to i32
  %i.ry = or disjoint i32 %i.ri, %i.rx
  %i.rz = zext i32 %i.ry to i64
  %i.sa = mul nuw i64 %i.rz, 4294967297           ; 4 uses
  store i64 %i.sa, ptr %.394.us.i, align 2
  %i.sb = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 8
  store i64 %i.sa, ptr %i.sb, align 2
  %i.sc = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 16
  store i64 %i.sa, ptr %i.sc, align 2
  %i.sd = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 24
  store i64 %i.sa, ptr %i.sd, align 2
  %i.se = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 32
  %i.sf = getelementptr inbounds nuw i8, ptr %.37793.us.i, i64 1
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !43
  %i.sh = zext i8 %i.sg to i32
  %i.si = or disjoint i32 %i.ri, %i.sh
  %i.sj = zext i32 %i.si to i64
  %i.sk = mul nuw i64 %i.sj, 4294967297           ; 4 uses
  store i64 %i.sk, ptr %i.se, align 2
  %i.sl = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 40
  store i64 %i.sk, ptr %i.sl, align 2
  %i.sm = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 48
  store i64 %i.sk, ptr %i.sm, align 2
  %i.sn = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 56
  store i64 %i.sk, ptr %i.sn, align 2
  %i.so = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 64
  %i.sp = getelementptr inbounds nuw i8, ptr %.37793.us.i, i64 2 ; 2 uses
  %.not.us.i.1 = icmp eq ptr %i.sp, %i.re
  br i1 %.not.us.i.1, label %.loopexit.i, label %.lr.ph.split.us.i99, !llvm.loop !73

.preheader88.i:                                   ; preds = %bb.m
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph98.i

.lr.ph98.i:                                       ; preds = %.preheader88.i
  %i.sq = shl i32 %i.ey, 16
  %i.sr = add i32 %i.sq, 16777216                 ; 5 uses
  %i.ss = sub nsw i64 %i.rd, %i.rb
  %xtraiter389 = and i64 %i.ss, 3                 ; 2 uses
  %lcmp.mod390.not = icmp eq i64 %xtraiter389, 0
  br i1 %lcmp.mod390.not, label %.lr.ph98.split.us.i.prol.loopexit, label %.lr.ph98.split.us.i.prol

.lr.ph98.split.us.i.prol:                         ; preds = %.lr.ph98.i, %.lr.ph98.split.us.i.prol
  %.297.us.i.prol = phi ptr [ %i.sz, %.lr.ph98.split.us.i.prol ], [ %i.ra, %.lr.ph98.i ] ; 3 uses
  %.27696.us.i.prol = phi ptr [ %i.ta, %.lr.ph98.split.us.i.prol ], [ %i.rc, %.lr.ph98.i ] ; 2 uses
  %prol.iter391 = phi i64 [ %prol.iter391.next, %.lr.ph98.split.us.i.prol ], [ 0, %.lr.ph98.i ]
  %i.st = load i8, ptr %.27696.us.i.prol, align 1, !tbaa !43
  %i.su = zext i8 %i.st to i32
  %i.sv = or disjoint i32 %i.sr, %i.su
  %i.sw = zext i32 %i.sv to i64
  %i.sx = mul nuw i64 %i.sw, 4294967297           ; 2 uses
  store i64 %i.sx, ptr %.297.us.i.prol, align 2
  %i.sy = getelementptr inbounds nuw i8, ptr %.297.us.i.prol, i64 8
  store i64 %i.sx, ptr %i.sy, align 2
  %i.sz = getelementptr inbounds nuw i8, ptr %.297.us.i.prol, i64 16 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %.27696.us.i.prol, i64 1 ; 2 uses
  %prol.iter391.next = add i64 %prol.iter391, 1   ; 2 uses
  %prol.iter391.cmp.not = icmp eq i64 %prol.iter391.next, %xtraiter389
  br i1 %prol.iter391.cmp.not, label %.lr.ph98.split.us.i.prol.loopexit, label %.lr.ph98.split.us.i.prol, !llvm.loop !78

.lr.ph98.split.us.i.prol.loopexit:                ; preds = %.lr.ph98.split.us.i.prol, %.lr.ph98.i
  %.297.us.i.unr = phi ptr [ %i.ra, %.lr.ph98.i ], [ %i.sz, %.lr.ph98.split.us.i.prol ]
  %.27696.us.i.unr = phi ptr [ %i.rc, %.lr.ph98.i ], [ %i.ta, %.lr.ph98.split.us.i.prol ]
  %i.tb = sub nsw i64 %i.rb, %i.rd
  %i.tc = icmp ugt i64 %i.tb, -4
  br i1 %i.tc, label %.loopexit.i, label %.lr.ph98.split.us.i

.lr.ph98.split.us.i:                              ; preds = %.lr.ph98.split.us.i.prol.loopexit, %.lr.ph98.split.us.i
  %.297.us.i = phi ptr [ %i.uh, %.lr.ph98.split.us.i ], [ %.297.us.i.unr, %.lr.ph98.split.us.i.prol.loopexit ] ; 9 uses
  %.27696.us.i = phi ptr [ %i.ui, %.lr.ph98.split.us.i ], [ %.27696.us.i.unr, %.lr.ph98.split.us.i.prol.loopexit ] ; 5 uses
  %i.td = load i8, ptr %.27696.us.i, align 1, !tbaa !43
  %i.te = zext i8 %i.td to i32
  %i.tf = or disjoint i32 %i.sr, %i.te
  %i.tg = zext i32 %i.tf to i64
  %i.th = mul nuw i64 %i.tg, 4294967297           ; 2 uses
  store i64 %i.th, ptr %.297.us.i, align 2
  %i.ti = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 8
  store i64 %i.th, ptr %i.ti, align 2
  %i.tj = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 16
  %i.tk = getelementptr inbounds nuw i8, ptr %.27696.us.i, i64 1
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !43
  %i.tm = zext i8 %i.tl to i32
  %i.tn = or disjoint i32 %i.sr, %i.tm
  %i.to = zext i32 %i.tn to i64
  %i.tp = mul nuw i64 %i.to, 4294967297           ; 2 uses
  store i64 %i.tp, ptr %i.tj, align 2
  %i.tq = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 24
  store i64 %i.tp, ptr %i.tq, align 2
  %i.tr = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 32
  %i.ts = getelementptr inbounds nuw i8, ptr %.27696.us.i, i64 2
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !43
  %i.tu = zext i8 %i.tt to i32
  %i.tv = or disjoint i32 %i.sr, %i.tu
  %i.tw = zext i32 %i.tv to i64
  %i.tx = mul nuw i64 %i.tw, 4294967297           ; 2 uses
  store i64 %i.tx, ptr %i.tr, align 2
  %i.ty = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 40
  store i64 %i.tx, ptr %i.ty, align 2
  %i.tz = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 48
  %i.ua = getelementptr inbounds nuw i8, ptr %.27696.us.i, i64 3
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !43
  %i.uc = zext i8 %i.ub to i32
  %i.ud = or disjoint i32 %i.sr, %i.uc
  %i.ue = zext i32 %i.ud to i64
  %i.uf = mul nuw i64 %i.ue, 4294967297           ; 2 uses
  store i64 %i.uf, ptr %i.tz, align 2
  %i.ug = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 56
  store i64 %i.uf, ptr %i.ug, align 2
  %i.uh = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 64
  %i.ui = getelementptr inbounds nuw i8, ptr %.27696.us.i, i64 4 ; 2 uses
  %.not79.us.i.3 = icmp eq ptr %i.ui, %i.re
  br i1 %.not79.us.i.3, label %.loopexit.i, label %.lr.ph98.split.us.i, !llvm.loop !72

.preheader86.i:                                   ; preds = %bb.m
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph104.i

.lr.ph104.i:                                      ; preds = %.preheader86.i
  %i.uj = shl i32 %i.ey, 16
  %i.uk = add i32 %i.uj, 16777216                 ; 6 uses
  %i.ul = sub nsw i64 %i.rd, %i.rb                ; 3 uses
  %min.iters.check251 = icmp ult i64 %i.ul, 10
  br i1 %min.iters.check251, label %.lr.ph104.split.us.i.preheader, label %vector.memcheck244

vector.memcheck244:                               ; preds = %.lr.ph104.i
  %i.um = shl nsw i64 %i.rd, 3
  %i.un = shl nuw nsw i64 %i.qz, 2
  %i.uo = add nsw i64 %i.um, %i.un
  %i.up = shl nsw i64 %i.rb, 3
  %i.uq = sub nsw i64 %i.uo, %i.up
  %scevgep246 = getelementptr i8, ptr %scevgep245, i64 %i.uq
  %bound0247 = icmp ult ptr %i.ra, %i.re
  %bound1248 = icmp ult ptr %i.rc, %scevgep246
  %found.conflict249 = and i1 %bound0247, %bound1248
  br i1 %found.conflict249, label %.lr.ph104.split.us.i.preheader, label %vector.ph252

vector.ph252:                                     ; preds = %vector.memcheck244
  %n.vec254 = and i64 %i.ul, -4                   ; 4 uses
  %i.ur = shl nsw i64 %n.vec254, 3
  %i.us = getelementptr i8, ptr %i.ra, i64 %i.ur
  %i.ut = getelementptr i8, ptr %i.rc, i64 %n.vec254
  %broadcast.splatinsert255 = insertelement <2 x i32> poison, i32 %i.uk, i64 0
  %broadcast.splat256 = shufflevector <2 x i32> %broadcast.splatinsert255, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body257

end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstd21HUF_readDTableX2_wkspEPjPKvmPvmi:bb.a
  %i.wn = sub nsw i64 %i.rd, %i.rb                ; 3 uses
  %min.iters.check228 = icmp ult i64 %i.wn, 8
  br i1 %min.iters.check228, label %.lr.ph110.split.us.i.preheader, label %vector.memcheck225

vector.memcheck225:                               ; preds = %.lr.ph110.i
  %i.wo = add nsw i64 %i.rd, %i.qz
  %i.wp = sub nsw i64 %i.wo, %i.rb
  %i.wq = shl nsw i64 %i.wp, 2
  %scevgep226 = getelementptr i8, ptr %scevgep, i64 %i.wq
  %bound0 = icmp ult ptr %i.ra, %i.re
  %bound1 = icmp ult ptr %i.rc, %scevgep226
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph110.split.us.i.preheader, label %vector.ph229

vector.ph229:                                     ; preds = %vector.memcheck225
  %n.vec231 = and i64 %i.wn, -8                   ; 4 uses
  %i.wr = shl nsw i64 %n.vec231, 2
  %i.ws = getelementptr i8, ptr %i.ra, i64 %i.wr
  %i.wt = getelementptr i8, ptr %i.rc, i64 %n.vec231
  %broadcast.splatinsert232 = insertelement <4 x i32> poison, i32 %i.wm, i64 0
  %broadcast.splat233 = shufflevector <4 x i32> %broadcast.splatinsert232, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body234

vector.body234:                                   ; preds = %vector.body234, %vector.ph229
  %index235 = phi i64 [ 0, %vector.ph229 ], [ %index.next239, %vector.body234 ] ; 3 uses
  %i.wu = shl i64 %index235, 2
  %next.gep = getelementptr i8, ptr %i.ra, i64 %i.wu ; 2 uses
  %next.gep236 = getelementptr i8, ptr %i.rc, i64 %index235 ; 2 uses
  %i.wv = getelementptr i8, ptr %next.gep236, i64 4
  %wide.load237 = load <4 x i8>, ptr %next.gep236, align 1, !tbaa !43, !alias.scope !87
  %wide.load238 = load <4 x i8>, ptr %i.wv, align 1, !tbaa !43, !alias.scope !87
  %i.ww = zext <4 x i8> %wide.load237 to <4 x i32>
  %i.wx = zext <4 x i8> %wide.load238 to <4 x i32>
  %i.wy = or disjoint <4 x i32> %broadcast.splat233, %i.ww
  %i.wz = or disjoint <4 x i32> %broadcast.splat233, %i.wx
  %i.xa = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.wy, ptr %next.gep, align 2, !alias.scope !90, !noalias !87
  store <4 x i32> %i.wz, ptr %i.xa, align 2, !alias.scope !90, !noalias !87
  %index.next239 = add nuw i64 %index235, 8       ; 2 uses
  %i.xb = icmp eq i64 %index.next239, %n.vec231
  br i1 %i.xb, label %middle.block240, label %vector.body234, !llvm.loop !92

middle.block240:                                  ; preds = %vector.body234
  %cmp.n241 = icmp eq i64 %i.wn, %n.vec231
  br i1 %cmp.n241, label %.loopexit.i, label %.lr.ph110.split.us.i.preheader

.lr.ph110.split.us.i.preheader:                   ; preds = %vector.memcheck225, %.lr.ph110.i, %middle.block240
  %.0109.us.i.ph = phi ptr [ %i.ra, %vector.memcheck225 ], [ %i.ra, %.lr.ph110.i ], [ %i.ws, %middle.block240 ] ; 2 uses
  %.074108.us.i.ph = phi ptr [ %i.rc, %vector.memcheck225 ], [ %i.rc, %.lr.ph110.i ], [ %i.wt, %middle.block240 ] ; 3 uses
  %i.xc = add i64 %i.a, %i.rd
  %.074108.us.i.ph396 = ptrtoint ptr %.074108.us.i.ph to i64 ; 2 uses
  %i.xd = sub i64 %i.xc, %.074108.us.i.ph396
  %i.xe = add i64 %i.es, %i.rd
  %i.xf = sub i64 %i.xe, %.074108.us.i.ph396
  %xtraiter397 = and i64 %i.xd, 7                 ; 2 uses
  %lcmp.mod398.not = icmp eq i64 %xtraiter397, 0
  br i1 %lcmp.mod398.not, label %.lr.ph110.split.us.i.prol.loopexit, label %.lr.ph110.split.us.i.prol

.lr.ph110.split.us.i.prol:                        ; preds = %.lr.ph110.split.us.i.preheader, %.lr.ph110.split.us.i.prol
  %.0109.us.i.prol = phi ptr [ %i.xj, %.lr.ph110.split.us.i.prol ], [ %.0109.us.i.ph, %.lr.ph110.split.us.i.preheader ] ; 2 uses
  %.074108.us.i.prol = phi ptr [ %i.xk, %.lr.ph110.split.us.i.prol ], [ %.074108.us.i.ph, %.lr.ph110.split.us.i.preheader ] ; 2 uses
  %prol.iter399 = phi i64 [ %prol.iter399.next, %.lr.ph110.split.us.i.prol ], [ 0, %.lr.ph110.split.us.i.preheader ]
  %i.xg = load i8, ptr %.074108.us.i.prol, align 1, !tbaa !43
  %i.xh = zext i8 %i.xg to i32
  %i.xi = or disjoint i32 %i.wm, %i.xh
  %i.xj = getelementptr inbounds nuw i8, ptr %.0109.us.i.prol, i64 4 ; 2 uses
  store i32 %i.xi, ptr %.0109.us.i.prol, align 2
  %i.xk = getelementptr inbounds nuw i8, ptr %.074108.us.i.prol, i64 1 ; 2 uses
  %prol.iter399.next = add i64 %prol.iter399, 1   ; 2 uses
  %prol.iter399.cmp.not = icmp eq i64 %prol.iter399.next, %xtraiter397
  br i1 %prol.iter399.cmp.not, label %.lr.ph110.split.us.i.prol.loopexit, label %.lr.ph110.split.us.i.prol, !llvm.loop !93

.lr.ph110.split.us.i.prol.loopexit:               ; preds = %.lr.ph110.split.us.i.prol, %.lr.ph110.split.us.i.preheader
  %.0109.us.i.unr = phi ptr [ %.0109.us.i.ph, %.lr.ph110.split.us.i.preheader ], [ %i.xj, %.lr.ph110.split.us.i.prol ]
  %.074108.us.i.unr = phi ptr [ %.074108.us.i.ph, %.lr.ph110.split.us.i.preheader ], [ %i.xk, %.lr.ph110.split.us.i.prol ]
  %i.xl = icmp ult i64 %i.xf, 7
  br i1 %i.xl, label %.loopexit.i, label %.lr.ph110.split.us.i

.lr.ph110.split.us.i:                             ; preds = %.lr.ph110.split.us.i.prol.loopexit, %.lr.ph110.split.us.i
  %.0109.us.i = phi ptr [ %i.yy, %.lr.ph110.split.us.i ], [ %.0109.us.i.unr, %.lr.ph110.split.us.i.prol.loopexit ] ; 9 uses
  %.074108.us.i = phi ptr [ %i.yz, %.lr.ph110.split.us.i ], [ %.074108.us.i.unr, %.lr.ph110.split.us.i.prol.loopexit ] ; 9 uses
  %i.xm = load i8, ptr %.074108.us.i, align 1, !tbaa !43
  %i.xn = zext i8 %i.xm to i32
  %i.xo = or disjoint i32 %i.wm, %i.xn
  %i.xp = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 4
  store i32 %i.xo, ptr %.0109.us.i, align 2
  %i.xq = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 1
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !43
  %i.xs = zext i8 %i.xr to i32
  %i.xt = or disjoint i32 %i.wm, %i.xs
  %i.xu = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 8
  store i32 %i.xt, ptr %i.xp, align 2
  %i.xv = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 2
  %i.xw = load i8, ptr %i.xv, align 1, !tbaa !43
  %i.xx = zext i8 %i.xw to i32
  %i.xy = or disjoint i32 %i.wm, %i.xx
  %i.xz = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 12
  store i32 %i.xy, ptr %i.xu, align 2
  %i.ya = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 3
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !43
  %i.yc = zext i8 %i.yb to i32
  %i.yd = or disjoint i32 %i.wm, %i.yc
  %i.ye = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 16
  store i32 %i.yd, ptr %i.xz, align 2
  %i.yf = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 4
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !43
  %i.yh = zext i8 %i.yg to i32
  %i.yi = or disjoint i32 %i.wm, %i.yh
  %i.yj = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 20
  store i32 %i.yi, ptr %i.ye, align 2
  %i.yk = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 5
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !43
  %i.ym = zext i8 %i.yl to i32
  %i.yn = or disjoint i32 %i.wm, %i.ym
  %i.yo = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 24
  store i32 %i.yn, ptr %i.yj, align 2
  %i.yp = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 6
  %i.yq = load i8, ptr %i.yp, align 1, !tbaa !43
  %i.yr = zext i8 %i.yq to i32
  %i.ys = or disjoint i32 %i.wm, %i.yr
  %i.yt = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 28
  store i32 %i.ys, ptr %i.yo, align 2
  %i.yu = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 7
  %i.yv = load i8, ptr %i.yu, align 1, !tbaa !43
  %i.yw = zext i8 %i.yv to i32
  %i.yx = or disjoint i32 %i.wm, %i.yw
  %i.yy = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 32
  store i32 %i.yx, ptr %i.yt, align 2
  %i.yz = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 8 ; 2 uses
  %.not81.us.i.7 = icmp eq ptr %i.yz, %i.re
  br i1 %.not81.us.i.7, label %.loopexit.i, label %.lr.ph110.split.us.i, !llvm.loop !94

.preheader.i:                                     ; preds = %bb.m
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph119.i

.lr.ph119.i:                                      ; preds = %.preheader.i
  %i.za = shl i32 %i.ey, 16
  %i.zb = add i32 %i.za, 16777216
  %i.zc = zext i32 %i.rg to i64
  %.idx.i = shl nuw nsw i64 %i.zc, 2              ; 2 uses
  %i.zd = add nsw i64 %.idx.i, -32                ; 2 uses
  %i.ze = lshr i64 %i.zd, 5
  %i.zf = add nuw nsw i64 %i.ze, 1
  %xtraiter400 = and i64 %i.zf, 7                 ; 2 uses
  %lcmp.mod401.not = icmp eq i64 %xtraiter400, 0
  %i.zg = icmp ult i64 %i.zd, 224
  br label %.lr.ph115.preheader.i

.lr.ph115.preheader.i:                            ; preds = %._crit_edge.i, %.lr.ph119.i
  %.4118.i = phi ptr [ %i.ra, %.lr.ph119.i ], [ %i.zm, %._crit_edge.i ] ; 3 uses
  %.478117.i = phi ptr [ %i.rc, %.lr.ph119.i ], [ %i.zy, %._crit_edge.i ] ; 2 uses
  %i.zh = load i8, ptr %.478117.i, align 1, !tbaa !43
  %i.zi = zext i8 %i.zh to i32
  %i.zj = or disjoint i32 %i.zb, %i.zi
  %i.zk = zext i32 %i.zj to i64
  %i.zl = mul nuw i64 %i.zk, 4294967297
  %i.zm = getelementptr inbounds nuw i8, ptr %.4118.i, i64 %.idx.i ; 2 uses
  %i.zn = insertelement <4 x i64> poison, i64 %i.zl, i64 0
  %i.zo = shufflevector <4 x i64> %i.zn, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  br i1 %lcmp.mod401.not, label %.lr.ph115.i.prol.loopexit, label %.lr.ph115.i.prol

.lr.ph115.i.prol:                                 ; preds = %.lr.ph115.preheader.i, %.lr.ph115.i.prol
  %.5114.i.prol = phi ptr [ %i.zp, %.lr.ph115.i.prol ], [ %.4118.i, %.lr.ph115.preheader.i ] ; 2 uses
  %prol.iter402 = phi i64 [ %prol.iter402.next, %.lr.ph115.i.prol ], [ 0, %.lr.ph115.preheader.i ]
  store <4 x i64> %i.zo, ptr %.5114.i.prol, align 2
  %i.zp = getelementptr inbounds nuw i8, ptr %.5114.i.prol, i64 32 ; 2 uses
  %prol.iter402.next = add i64 %prol.iter402, 1   ; 2 uses
  %prol.iter402.cmp.not = icmp eq i64 %prol.iter402.next, %xtraiter400
  br i1 %prol.iter402.cmp.not, label %.lr.ph115.i.prol.loopexit, label %.lr.ph115.i.prol, !llvm.loop !95

.lr.ph115.i.prol.loopexit:                        ; preds = %.lr.ph115.i.prol, %.lr.ph115.preheader.i
  %.5114.i.unr = phi ptr [ %.4118.i, %.lr.ph115.preheader.i ], [ %i.zp, %.lr.ph115.i.prol ]
  br i1 %i.zg, label %._crit_edge.i, label %.lr.ph115.i

.lr.ph115.i:                                      ; preds = %.lr.ph115.i.prol.loopexit, %.lr.ph115.i
  %.5114.i = phi ptr [ %i.zx, %.lr.ph115.i ], [ %.5114.i.unr, %.lr.ph115.i.prol.loopexit ] ; 9 uses
  store <4 x i64> %i.zo, ptr %.5114.i, align 2
  %i.zq = getelementptr inbounds nuw i8, ptr %.5114.i, i64 32
  store <4 x i64> %i.zo, ptr %i.zq, align 2
  %i.zr = getelementptr inbounds nuw i8, ptr %.5114.i, i64 64
  store <4 x i64> %i.zo, ptr %i.zr, align 2
  %i.zs = getelementptr inbounds nuw i8, ptr %.5114.i, i64 96
  store <4 x i64> %i.zo, ptr %i.zs, align 2
  %i.zt = getelementptr inbounds nuw i8, ptr %.5114.i, i64 128
  store <4 x i64> %i.zo, ptr %i.zt, align 2
  %i.zu = getelementptr inbounds nuw i8, ptr %.5114.i, i64 160
  store <4 x i64> %i.zo, ptr %i.zu, align 2
  %i.zv = getelementptr inbounds nuw i8, ptr %.5114.i, i64 192
  store <4 x i64> %i.zo, ptr %i.zv, align 2
  %i.zw = getelementptr inbounds nuw i8, ptr %.5114.i, i64 224
  store <4 x i64> %i.zo, ptr %i.zw, align 2
  %i.zx = getelementptr inbounds nuw i8, ptr %.5114.i, i64 256 ; 2 uses
  %.not83.i.7 = icmp eq ptr %i.zx, %i.zm
  br i1 %.not83.i.7, label %._crit_edge.i, label %.lr.ph115.i, !llvm.loop !75

._crit_edge.i:                                    ; preds = %.lr.ph115.i, %.lr.ph115.i.prol.loopexit
  %i.zy = getelementptr inbounds nuw i8, ptr %.478117.i, i64 1 ; 2 uses
  %.not82.i = icmp eq ptr %i.zy, %i.re
  br i1 %.not82.i, label %.loopexit.i, label %.lr.ph115.preheader.i, !llvm.loop !76

.loopexit.i:                                      ; preds = %_ZN11duckdb_zstdL22HUF_fillDTableX2Level2EPNS_10HUF_DEltX2EjjPKjiiPKNS_14sortedSymbol_tES3_jt.exit.loopexit.i, %.loopexit.i.us.i, %.lr.ph.split.us.i99.prol.loopexit, %.lr.ph.split.us.i99, %.lr.ph98.split.us.i.prol.loopexit, %.lr.ph98.split.us.i, %.lr.ph104.split.us.i.prol.loopexit, %.lr.ph104.split.us.i, %.lr.ph110.split.us.i.prol.loopexit, %.lr.ph110.split.us.i, %._crit_edge.i, %middle.block266, %middle.block240, %.preheader.i, %.preheader84.i, %.preheader86.i, %.preheader88.i, %.preheader90.i, %bb.h
  %exitcond.not.i = icmp eq i64 %indvars.iv.next97.i, %i.ax
  br i1 %exitcond.not.i, label %_ZN11duckdb_zstdL16HUF_fillDTableX2EPNS_10HUF_DEltX2EjPKNS_14sortedSymbol_tEPKjPA13_jjj.exit, label %.lr.ph78.i, !llvm.loop !96

_ZN11duckdb_zstdL16HUF_fillDTableX2EPNS_10HUF_DEltX2EjPKNS_14sortedSymbol_tEPKjPA13_jjj.exit: ; preds = %.loopexit.i, %._crit_edge121, %._crit_edge134.split
  %i.zz = trunc nuw nsw i32 %spec.store.select to i8
  store i8 %.sroa.0.0.extract.trunc, ptr %0, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.zz, ptr %.sroa.6.0..sroa_idx, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %.sroa.7.0.extract.trunc, ptr %.sroa.7.0..sroa_idx, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %_ZN11duckdb_zstdL16HUF_fillDTableX2EPNS_10HUF_DEltX2EjPKNS_14sortedSymbol_tEPKjPA13_jjj.exit
  %.087 = phi i64 [ %i.m, %_ZN11duckdb_zstdL16HUF_fillDTableX2EPNS_10HUF_DEltX2EjPKNS_14sortedSymbol_tEPKjPA13_jjj.exit ], [ -1, %bb.a ], [ -44, %bb.b ], [ %i.m, %bb.c ], [ -44, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  ret i64 %.087
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd27HUF_decompress1X2_DCtx_wkspEPjPvmPKvmS1_mi(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN11duckdb_zstd21HUF_readDTableX2_wkspEPjPKvmPvmi(ptr noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) ; 5 uses
  %i.b = icmp ult i64 %i.a, -119
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not23 = icmp ult i64 %i.a, %4
  br i1 %.not23, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %i.a
  %i.d = sub nuw i64 %4, %i.a
  %i.e = tail call fastcc noundef i64 @_ZN11duckdb_zstdL38HUF_decompress1X2_usingDTable_internalEPvmPKvmPKji(ptr noundef %1, i64 noundef %2, ptr noundef %i.c, i64 noundef %i.d, ptr noundef %0, i32 noundef %7)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ %i.e, %bb.c ], [ %i.a, %bb.a ], [ -72, %bb.b ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL38HUF_decompress1X2_usingDTable_internalEPvmPKvmPKji(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) unnamed_addr #4 {
bb.a:
  %i.a = and i32 %5, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef i64 @_ZN11duckdb_zstdL43HUF_decompress1X2_usingDTable_internal_bmi2EPvmPKvmPKj(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  br label %_ZN11duckdb_zstdL46HUF_decompress1X2_usingDTable_internal_defaultEPvmPKvmPKj.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %_ZN11duckdb_zstdL46HUF_decompress1X2_usingDTable_internal_defaultEPvmPKvmPKj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = icmp ugt i64 %3, 7
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.ptr.i = getelementptr inbounds i8, ptr %2, i64 %3
  %i.f = getelementptr i8, ptr %.ptr.i, i64 -1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !7     ; 2 uses
  %.not50.i.i = icmp eq i8 %i.g, 0
  br i1 %.not50.i.i, label %_ZN11duckdb_zstdL46HUF_decompress1X2_usingDTable_internal_defaultEPvmPKvmPKj.exit, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i

bb.f:                                             ; preds = %bb.d
  %i.h = load i8, ptr %2, align 1, !tbaa !7
  %i.i = zext i8 %i.h to i64                      ; 7 uses
  switch i64 %3, label %bb.m [
    i64 7, label %bb.g
    i64 6, label %bb.h
    i64 5, label %bb.i
    i64 4, label %bb.j
    i64 3, label %bb.k
    i64 2, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.k = load i8, ptr %i.j, align 1, !tbaa !7
  %i.l = zext i8 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 48
  %i.n = or disjoint i64 %i.m, %i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = phi i64 [ %i.n, %bb.g ], [ %i.i, %bb.f ]
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.q = load i8, ptr %i.p, align 1, !tbaa !7
  %i.r = zext i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 40
  %i.t = add nuw nsw i64 %i.s, %i.o
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.u = phi i64 [ %i.t, %bb.h ], [ %i.i, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.w = load i8, ptr %i.v, align 1, !tbaa !7
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 32
  %i.z = add nuw nsw i64 %i.y, %i.u
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.aa = phi i64 [ %i.z, %bb.i ], [ %i.i, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !7
  %i.ad = zext i8 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 24
  %i.af = add nuw nsw i64 %i.ae, %i.aa
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %i.ag = phi i64 [ %i.af, %bb.j ], [ %i.i, %bb.f ]
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !7
  %i.aj = zext i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 16
  %i.al = add nuw nsw i64 %i.ak, %i.ag
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %i.am = phi i64 [ %i.al, %bb.k ], [ %i.i, %bb.f ]
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !7
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 8
  %i.ar = add nuw nsw i64 %i.aq, %i.am
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %.sroa.0.9.i = phi i64 [ %i.i, %bb.f ], [ %i.ar, %bb.l ] ; 2 uses
  %i.as = getelementptr i8, ptr %2, i64 %3
  %i.at = getelementptr i8, ptr %i.as, i64 -1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !7   ; 2 uses
  %.not.i30.i = icmp eq i8 %i.au, 0
  br i1 %.not.i30.i, label %_ZN11duckdb_zstdL46HUF_decompress1X2_usingDTable_internal_defaultEPvmPKvmPKj.exit, label %.thread.i

_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i: ; preds = %bb.e
  %.add.i = add nsw i64 %3, -8                    ; 4 uses
  %.ptr188.i = getelementptr inbounds i8, ptr %2, i64 %.add.i ; 4 uses
  %.val.i.i.i = load i64, ptr %.ptr188.i, align 1, !tbaa !32 ; 2 uses
  %i.av = zext i8 %i.g to i32
  %i.aw = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.av, i1 true)
  %i.ax = xor i32 %i.aw, 31
  %i.ay = sub nuw nsw i32 8, %i.ax                ; 6 uses
  %i.az = icmp ult i64 %3, -119
  br i1 %i.az, label %bb.n, label %_ZN11duckdb_zstdL46HUF_decompress1X2_usingDTable_internal_defaultEPvmPKvmPKj.exit

bb.n:                                             ; preds = %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i
  %.idx.i.i = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %4, align 4 ; 2 uses
  %.sroa.3.0.extract.shift.i.i = lshr i32 %.sroa.0.0.copyload.i.i, 16 ; 4 uses
  %i.bc = ptrtoint ptr %i.ba to i64               ; 4 uses
  %i.bd = icmp sgt i64 %1, 7
  br i1 %i.bd, label %bb.o, label %bb.z

.thread.i:                                        ; preds = %bb.m
  %i.be = zext i8 %i.au to i32
  %i.bf = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.be, i1 true)
  %i.bg = trunc nuw nsw i64 %3 to i32
  %i.bh = shl nuw nsw i32 %i.bg, 3
  %reass.sub.i = sub nsw i32 %i.bf, %i.bh
  %i.bi = add nsw i32 %reass.sub.i, 41            ; 2 uses
  %.idx.i290.i = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i290.i ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %.sroa.0.0.copyload.i291.i = load i32, ptr %4, align 4 ; 2 uses
  %.sroa.3.0.extract.shift.i292.i = lshr i32 %.sroa.0.0.copyload.i291.i, 16 ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bm = icmp sgt i64 %1, 7
  br i1 %i.bm, label %bb.o, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.i

bb.o:                                             ; preds = %.thread.i, %bb.n
  %i.bn = phi i64 [ %i.bl, %.thread.i ], [ %i.bc, %bb.n ] ; 6 uses
  %.sroa.3.0.extract.shift.i301.i = phi i32 [ %.sroa.3.0.extract.shift.i292.i, %.thread.i ], [ %.sroa.3.0.extract.shift.i.i, %bb.n ] ; 7 uses
  %.sroa.0.0.copyload.i300.i = phi i32 [ %.sroa.0.0.copyload.i291.i, %.thread.i ], [ %.sroa.0.0.copyload.i.i, %bb.n ]
  %i.bo = phi ptr [ %i.bk, %.thread.i ], [ %i.bb, %bb.n ] ; 6 uses
  %i.bp = phi ptr [ %i.bj, %.thread.i ], [ %i.ba, %bb.n ] ; 8 uses
  %.sroa.31.12173298.i = phi i32 [ %i.bi, %.thread.i ], [ %i.ay, %bb.n ] ; 2 uses
  %.sroa.0.10174295.i = phi i64 [ %.sroa.0.9.i, %.thread.i ], [ %.val.i.i.i, %bb.n ] ; 2 uses
  %.sroa.9788.9175.idx294.i = phi i64 [ 0, %.thread.i ], [ %.add.i, %bb.n ] ; 2 uses
  %i.bq = and i32 %.sroa.0.0.copyload.i300.i, 16515072
  %i.br = icmp samesign ult i32 %i.bq, 786432
  %i.bs = sub nsw i32 0, %.sroa.3.0.extract.shift.i301.i
  %i.bt = and i32 %i.bs, 63
  %i.bu = zext nneg i32 %i.bt to i64              ; 9 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 9 uses
  br i1 %i.br, label %.lr.ph238.i, label %.lr.ph.i

end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstdL43HUF_decompress4X1_usingDTable_internal_fastEPvmPKvmPKjPFvPNS_22HUF_DecompressFastArgsEE:bb.a
  %i.dc = ptrtoint ptr %i.ab to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = trunc i64 %i.dd to i32
  %.021.i.i = select i1 %i.da, i32 %i.de, i32 %i.cw ; 2 uses
  %i.df = zext i32 %.021.i.i to i64
  %i.dg = sub nsw i64 0, %i.df
  %i.dh = getelementptr inbounds i8, ptr %i.s, i64 %i.dg
  %i.di = shl i32 %.021.i.i, 3
  %i.dj = sub i32 %i.aa, %i.di
  %.val.i61 = load i64, ptr %i.dh, align 1, !tbaa !32
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit: ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i, %bb.k, %bb.i
  %.sroa.12.3.ph = phi i32 [ %.sroa.12.6, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i ], [ %.sroa.12.5112, %bb.i ], [ %i.co, %bb.k ]
  %.sroa.0.3.ph = phi i64 [ %.sroa.0.5, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i ], [ %.sroa.0.4113, %bb.i ], [ %.sroa.0.5, %bb.k ]
  %.3.i.ph = phi ptr [ %.0.i114, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i ], [ %.0.i114, %bb.i ], [ %i.cp, %bb.k ] ; 2 uses
  %.pre122 = ptrtoint ptr %.3.i.ph to i64
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i: ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit, %bb.n, %bb.m, %bb.o
  %.3.i119.pre-phi = phi i64 [ %.pre122, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit ], [ %i.ae, %bb.n ], [ %i.ae, %bb.m ], [ %i.ae, %bb.o ] ; 2 uses
  %.sroa.12.3 = phi i32 [ %.sroa.12.3.ph, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit ], [ %i.aa, %bb.n ], [ %i.cu, %bb.m ], [ %i.dj, %bb.o ] ; 3 uses
  %.sroa.0.3 = phi i64 [ %.sroa.0.3.ph, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit ], [ %.val.i.i, %bb.n ], [ %.val.i.i60, %bb.m ], [ %.val.i61, %bb.o ] ; 3 uses
  %.3.i = phi ptr [ %.3.i.ph, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit ], [ %i.p, %bb.n ], [ %i.p, %bb.m ], [ %i.p, %bb.o ] ; 5 uses
  %i.dk = icmp ult ptr %.3.i, %.146
  br i1 %i.dk, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i
  %i.dl = sub i64 %i.ad, %.3.i119.pre-phi         ; 2 uses
  %scevgep = getelementptr i8, ptr %.3.i, i64 %i.dl
  %xtraiter = and i64 %i.dl, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.dm = and i32 %.sroa.12.3, 63
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = shl i64 %.sroa.0.3, %i.dn
  %i.dp = lshr i64 %i.do, 53
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !110
  %i.dt = load i8, ptr %i.dq, align 1, !tbaa !112
  %i.du = zext i8 %i.dt to i32
  %i.dv = add i32 %.sroa.12.3, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %.3.i, i64 1
  store i8 %i.ds, ptr %.3.i, align 1, !tbaa !7
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.6.i116.unr = phi ptr [ %.3.i, %.lr.ph.preheader ], [ %i.dw, %.lr.ph.prol ]
  %.sroa.12.4115.unr = phi i32 [ %.sroa.12.3, %.lr.ph.preheader ], [ %i.dv, %.lr.ph.prol ]
  %i.dx = add i64 %i.ad, -1
  %i.dy = icmp eq i64 %.3.i119.pre-phi, %i.dx
  br i1 %i.dy, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.6.i116 = phi ptr [ %i.eu, %.lr.ph ], [ %.6.i116.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.sroa.12.4115 = phi i32 [ %i.et, %.lr.ph ], [ %.sroa.12.4115.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.dz = and i32 %.sroa.12.4115, 63
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = shl i64 %.sroa.0.3, %i.ea
  %i.ec = lshr i64 %i.eb, 53
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ec ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !110
  %i.eg = load i8, ptr %i.ed, align 1, !tbaa !112
  %i.eh = zext i8 %i.eg to i32
  %i.ei = add i32 %.sroa.12.4115, %i.eh           ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.6.i116, i64 1
  store i8 %i.ef, ptr %.6.i116, align 1, !tbaa !7
  %i.ek = and i32 %i.ei, 63
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = shl i64 %.sroa.0.3, %i.el
  %i.en = lshr i64 %i.em, 53
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.en ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !110
  %i.er = load i8, ptr %i.eo, align 1, !tbaa !112
  %i.es = zext i8 %i.er to i32
  %i.et = add i32 %i.ei, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %.6.i116, i64 2 ; 2 uses
  store i8 %i.eq, ptr %i.ej, align 1, !tbaa !7
  %exitcond.not.1 = icmp eq ptr %i.eu, %scevgep
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !114

._crit_edge.loopexit:                             ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !133
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i
  %i.ev = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.p, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.af ; 2 uses
  store ptr %i.ew, ptr %i.o, align 8, !tbaa !133
  %.not55 = icmp eq ptr %i.ew, %.146
  br i1 %.not55, label %bb.c, label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.c, %bb.e, %bb.d, %bb.a
  %.6 = phi i64 [ %i.c, %bb.a ], [ -20, %bb.d ], [ -20, %bb.e ], [ %1, %bb.c ], [ -20, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret i64 %.6
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9, !10, !11}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = !{!"branch_weights", i32 8, i32 24}
!13 = distinct !{!13, !9, !10, !11}
!14 = distinct !{!14, !9, !11, !10}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = !{!22}
!22 = distinct !{!22, !23}
!23 = distinct !{!23, !"LVerDomain"}
!24 = !{!25}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !9, !10, !11}
!27 = !{!"branch_weights", i32 4, i32 12}
!28 = distinct !{!28, !9, !10, !11}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !9, !10}
!31 = distinct !{!31, !9}
!32 = !{!33, !33, i64 0}
!33 = !{!"long", !5, i64 0}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !17}
!38 = distinct !{!38, !9}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9}
!41 = distinct !{!41, !9}
!42 = distinct !{!42, !17}
!43 = !{!44, !5, i64 0}
!44 = !{!"_ZTSN11duckdb_zstd14sortedSymbol_tE", !5, i64 0}
!45 = distinct !{!45, !9}
!46 = distinct !{!46, !9}
!47 = distinct !{!47, !9, !10, !11}
!48 = distinct !{!48, !17}
!49 = distinct !{!49, !9, !10}
!50 = distinct !{!50, !9}
!51 = distinct !{!51, !9}
!52 = distinct !{!52, !17}
!53 = distinct !{!53, !9}
!54 = distinct !{!54, !17}
!55 = distinct !{!55, !17}
!56 = !{!57}
!57 = distinct !{!57, !58}
!58 = distinct !{!58, !"LVerDomain"}
!59 = !{!60}
!60 = distinct !{!60, !58}
!61 = distinct !{!61, !9, !10, !11}
!62 = distinct !{!62, !17}
!63 = !{!64}
!64 = distinct !{!64, !65}
!65 = distinct !{!65, !"LVerDomain"}
!66 = !{!67}
!67 = distinct !{!67, !65}
!68 = distinct !{!68, !9, !10, !11}
!69 = distinct !{!69, !17}
!70 = distinct !{!70, !9, !10}
!71 = distinct !{!71, !9, !10}
!72 = distinct !{!72, !9}
!73 = distinct !{!73, !9}
!74 = distinct !{!74, !17}
!75 = distinct !{!75, !9}
!76 = distinct !{!76, !9}
!77 = distinct !{!77, !9}
!78 = distinct !{!78, !17}
!79 = !{!80}
!80 = distinct !{!80, !81}
!81 = distinct !{!81, !"LVerDomain"}
!82 = !{!83}
!83 = distinct !{!83, !81}
!84 = distinct !{!84, !9, !10, !11}
!85 = distinct !{!85, !17}
!86 = distinct !{!86, !9, !10}
!87 = !{!88}
!88 = distinct !{!88, !89}
!89 = distinct !{!89, !"LVerDomain"}
!90 = !{!91}
!91 = distinct !{!91, !89}
!92 = distinct !{!92, !9, !10, !11}
!93 = distinct !{!93, !17}
!94 = distinct !{!94, !9, !10}
!95 = distinct !{!95, !17}
!96 = distinct !{!96, !9}
!97 = !{!98, !5, i64 2}
!98 = !{!"_ZTSN11duckdb_zstd10HUF_DEltX2E", !99, i64 0, !5, i64 2, !5, i64 3}
!99 = !{!"short", !5, i64 0}
!100 = !{!98, !5, i64 3}
!101 = !{!"branch_weights", i32 127, i32 255873}
!102 = distinct !{!102, !9}
!103 = distinct !{!103, !9}
!104 = !{!"branch_weights", i32 1, i32 127}
!105 = distinct !{!105, !9}
!106 = distinct !{!106, !9}
!107 = !{!108, !4, i64 0}
!108 = !{!"_ZTSN11duckdb_zstd11algo_time_tE", !4, i64 0, !4, i64 4}
!109 = !{!108, !4, i64 4}
!110 = !{!111, !5, i64 1}
!111 = !{!"_ZTSN11duckdb_zstd10HUF_DEltX1E", !5, i64 0, !5, i64 1}
!112 = !{!111, !5, i64 0}
!113 = distinct !{!113, !9}
!114 = distinct !{!114, !9}
!115 = !{!99, !99, i64 0}
!116 = !{!117, !118, i64 32}
!117 = !{!"_ZTSN11duckdb_zstd13BIT_DStream_tE", !33, i64 0, !4, i64 8, !118, i64 16, !118, i64 24, !118, i64 32}
!118 = !{!"p1 omnipotent char", !119, i64 0}
!119 = !{!"any pointer", !5, i64 0}
!120 = !{!117, !4, i64 8}
!121 = !{!117, !118, i64 16}
!122 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!123 = !{!117, !33, i64 0}
!124 = distinct !{!124, !9}
!125 = !{!117, !118, i64 24}
!126 = distinct !{!126, !9}
!127 = !{!128, !119, i64 96}
!128 = !{!"_ZTSN11duckdb_zstd22HUF_DecompressFastArgsE", !5, i64 0, !5, i64 32, !5, i64 64, !119, i64 96, !118, i64 104, !118, i64 112, !5, i64 120}
!129 = !{!128, !118, i64 104}
!130 = !{!128, !118, i64 112}
!131 = distinct !{!131, !9}
!132 = distinct !{!132, !9}
!133 = !{!118, !118, i64 0}
!134 = !{!"branch_weights", i32 1, i32 1999}
!135 = distinct !{!135, !9}
!136 = distinct !{!136, !9}
end_hunk_3
