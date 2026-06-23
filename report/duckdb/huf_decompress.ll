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
  %indvars.iv226 = phi i64 [ 0, %.preheader180.lr.ph ], [ %indvars.iv.next227, %.preheader180 ] ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv226
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !7
  %i.ce = zext i8 %i.cd to i64
  %i.cf = trunc i64 %indvars.iv226 to i8
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ce ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3  ; 2 uses
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !3
  %i.cj = zext i32 %i.ch to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cj
  store i8 %i.cf, ptr %i.ck, align 1, !tbaa !7
  %i.cl = or disjoint i64 %indvars.iv226, 1       ; 2 uses
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
  %i.cv = or disjoint i64 %indvars.iv226, 2       ; 2 uses
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
  %i.df = or disjoint i64 %indvars.iv226, 3       ; 2 uses
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
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 4 ; 3 uses
  %i.dp = icmp samesign ult i64 %indvars.iv.next227, %i.bl
  br i1 %i.dp, label %.preheader180, label %.preheader179.loopexit, !llvm.loop !19

.preheader179.loopexit:                           ; preds = %.preheader180
  %i.dq = trunc nuw nsw i64 %indvars.iv.next227 to i32
  br label %.preheader179

.preheader179:                                    ; preds = %.preheader179.loopexit, %.preheader181
  %.1148.lcssa = phi i32 [ 0, %.preheader181 ], [ %i.dq, %.preheader179.loopexit ] ; 3 uses
  %i.dr = icmp slt i32 %.1148.lcssa, %i.l
  br i1 %i.dr, label %.lr.ph188, label %.lr.ph215

.lr.ph188:                                        ; preds = %.preheader179
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 980 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 3 uses
  %i.du = zext i32 %.1148.lcssa to i64            ; 5 uses
  %wide.trip.count232 = zext nneg i32 %i.l to i64 ; 3 uses
  %i.dv = sub nsw i64 %wide.trip.count232, %i.du
  %xtraiter368 = and i64 %i.dv, 1
  %lcmp.mod369.not = icmp eq i64 %xtraiter368, 0
  br i1 %lcmp.mod369.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

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
  %indvars.iv.next230.prol = add nuw nsw i64 %i.du, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph188
  %indvars.iv229.unr = phi i64 [ %i.du, %.lr.ph188 ], [ %indvars.iv.next230.prol, %.prol.loopexit.unr-lcssa ]
  %i.ef = add nsw i64 %wide.trip.count232, -1
  %i.eg = icmp eq i64 %i.ef, %i.du
  br i1 %i.eg, label %.lr.ph215, label %.lr.ph188.new

.lr.ph188.new:                                    ; preds = %.prol.loopexit, %.lr.ph188.new
  %indvars.iv229 = phi i64 [ %indvars.iv.next230.1, %.lr.ph188.new ], [ %indvars.iv229.unr, %.prol.loopexit ] ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv229
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !7
  %i.ej = zext i8 %i.ei to i64
  %i.ek = trunc i64 %indvars.iv229 to i8
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.ej ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !3  ; 2 uses
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.el, align 4, !tbaa !3
  %i.eo = zext i32 %i.em to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.eo
  store i8 %i.ek, ptr %i.ep, align 1, !tbaa !7
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next230
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !7
  %i.es = zext i8 %i.er to i64
  %i.et = trunc i64 %indvars.iv.next230 to i8
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.es ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !3  ; 2 uses
  %i.ew = add i32 %i.ev, 1
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !3
  %i.ex = zext i32 %i.ev to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ex
  store i8 %i.et, ptr %i.ey, align 1, !tbaa !7
  %indvars.iv.next230.1 = add nuw nsw i64 %indvars.iv229, 2 ; 2 uses
  %exitcond233.not.1 = icmp eq i64 %indvars.iv.next230.1, %wide.trip.count232
  br i1 %exitcond233.not.1, label %.lr.ph215, label %.lr.ph188.new, !llvm.loop !20

.lr.ph215:                                        ; preds = %.prol.loopexit, %.lr.ph188.new, %.preheader179
  %i.ez = add nuw nsw i32 %.030.i169, 1           ; 2 uses
  %i.fa = load i32, ptr %3, align 4, !tbaa !3
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 980 ; 5 uses
  %i.fc = zext nneg i32 %i.ez to i64
  %scevgep = getelementptr i8, ptr %0, i64 4
  %scevgep323 = getelementptr i8, ptr %0, i64 4
  %scevgep325.a = getelementptr i8, ptr %3, i64 980
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph215, %.loopexit
  %indvars.iv282 = phi i64 [ 1, %.lr.ph215 ], [ %indvars.iv.next283, %.loopexit ] ; 4 uses
  %.0161211 = phi i32 [ %i.fa, %.lr.ph215 ], [ %i.ku, %.loopexit ] ; 6 uses
  %.0162209 = phi i32 [ 0, %.lr.ph215 ], [ %i.kw, %.loopexit ] ; 6 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv282
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !3  ; 20 uses
  %i.ff = trunc nuw i64 %indvars.iv282 to i32
  %i.fg = shl nuw i32 1, %i.ff
  %i.fh = ashr exact i32 %i.fg, 1                 ; 6 uses
  %i.fi = trunc i64 %indvars.iv282 to i32
  %i.fj = sub i32 %i.ez, %i.fi                    ; 4 uses
  %i.fk = trunc i32 %i.fj to i8                   ; 13 uses
  %i.fl = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.fh)
  %i.fm = icmp eq i32 %i.fl, 1
  br i1 %i.fm, label %.split, label %bb.k

.split:                                           ; preds = %bb.h
  %i.fn = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.fh, i1 true)
  switch i32 %i.fn, label %bb.k [
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
  %i.fq = sext i32 %.0161211 to i64
  %i.fr = sext i32 %.0162209 to i64               ; 2 uses
  %wide.trip.count241 = zext nneg i32 %i.fe to i64 ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.fb, i64 %i.fq ; 3 uses
  %xtraiter371 = and i64 %wide.trip.count241, 1
  %i.fs = icmp eq i32 %i.fe, 1
  br i1 %i.fs, label %.epil.preheader370, label %.lr.ph191.new

.lr.ph191.new:                                    ; preds = %.lr.ph191
  %unroll_iter375 = and i64 %wide.trip.count241, 2147483646
  br label %bb.j

.preheader175:                                    ; preds = %.split
  %i.ft = icmp sgt i32 %i.fe, 0
  br i1 %i.ft, label %.lr.ph194, label %.loopexit

.lr.ph194:                                        ; preds = %.preheader175
  %.mask170 = and i32 %i.fj, 255
  %i.fu = zext nneg i32 %.mask170 to i64          ; 3 uses
  %i.fv = sext i32 %.0161211 to i64
  %i.fw = sext i32 %.0162209 to i64               ; 2 uses
  %wide.trip.count250 = zext nneg i32 %i.fe to i64 ; 2 uses
  %invariant.gep300 = getelementptr i8, ptr %i.fb, i64 %i.fv ; 3 uses
  %xtraiter378 = and i64 %wide.trip.count250, 1
  %i.fx = icmp eq i32 %i.fe, 1
  br i1 %i.fx, label %.epil.preheader377, label %.lr.ph194.new

.lr.ph194.new:                                    ; preds = %.lr.ph194
  %unroll_iter382 = and i64 %wide.trip.count250, 2147483646
  br label %bb.i

.preheader173:                                    ; preds = %.split
  %i.fy = icmp sgt i32 %i.fe, 0
  br i1 %i.fy, label %.lr.ph197.preheader, label %.loopexit

.lr.ph197.preheader:                              ; preds = %.preheader173
  %i.fz = sext i32 %.0161211 to i64
  %i.ga = sext i32 %.0162209 to i64               ; 2 uses
  %wide.trip.count259 = zext nneg i32 %i.fe to i64 ; 2 uses
  %invariant.gep302 = getelementptr i8, ptr %i.fb, i64 %i.fz ; 3 uses
  %xtraiter384 = and i64 %wide.trip.count259, 1
  %i.gb = icmp eq i32 %i.fe, 1
  br i1 %i.gb, label %.lr.ph197.epil.preheader, label %.lr.ph197.preheader.new

.lr.ph197.preheader.new:                          ; preds = %.lr.ph197.preheader
  %unroll_iter388 = and i64 %wide.trip.count259, 2147483646
  br label %.lr.ph197

.preheader:                                       ; preds = %.split
  %i.gc = icmp sgt i32 %i.fe, 0
  br i1 %i.gc, label %iter.check345, label %.loopexit

iter.check345:                                    ; preds = %.preheader
  %i.gd = sext i32 %.0161211 to i64               ; 2 uses
  %i.ge = sext i32 %.0162209 to i64               ; 8 uses
  %wide.trip.count268 = zext nneg i32 %i.fe to i64 ; 10 uses
  %invariant.gep304 = getelementptr i8, ptr %i.fb, i64 %i.gd ; 8 uses
  %min.iters.check327 = icmp ult i32 %i.fe, 4
  br i1 %min.iters.check327, label %.lr.ph200.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check345
  %i.gf = shl nsw i64 %i.ge, 1
  %scevgep322 = getelementptr i8, ptr %scevgep, i64 %i.gf
  %i.gg = add nsw i64 %i.ge, %wide.trip.count268
  %i.gh = shl nsw i64 %i.gg, 1
  %scevgep324 = getelementptr i8, ptr %scevgep323, i64 %i.gh
  %i.gi = getelementptr i8, ptr %scevgep325.a, i64 %i.gd
  %scevgep326 = getelementptr i8, ptr %i.gi, i64 %wide.trip.count268
  %bound0 = icmp ult ptr %scevgep322, %scevgep326
  %bound1 = icmp ult ptr %invariant.gep304, %scevgep324
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph200.preheader, label %vector.main.loop.iter.check328

vector.main.loop.iter.check328:                   ; preds = %vector.memcheck
  %min.iters.check329 = icmp ult i32 %i.fe, 16
  br i1 %min.iters.check329, label %vec.epilog.ph349, label %vector.ph330

vector.ph330:                                     ; preds = %vector.main.loop.iter.check328
  %n.mod.vf331 = and i64 %wide.trip.count268, 12
  %n.vec332 = and i64 %wide.trip.count268, 2147483632 ; 5 uses
  %i.gj = add nsw i64 %n.vec332, %i.ge
  %broadcast.splatinsert333 = insertelement <8 x i8> poison, i8 %i.fk, i64 0 ; 2 uses
  br label %vector.body335

vector.body335:                                   ; preds = %vector.body335, %vector.ph330
  %index336 = phi i64 [ 0, %vector.ph330 ], [ %index.next340, %vector.body335 ] ; 3 uses
  %i.gk = add i64 %index336, %i.ge                ; 2 uses
  %i.gl = getelementptr i8, ptr %invariant.gep304, i64 %index336 ; 2 uses
  %i.gm = getelementptr i8, ptr %i.gl, i64 8
  %wide.load337 = load <8 x i8>, ptr %i.gl, align 1, !tbaa !7, !alias.scope !21
  %wide.load338 = load <8 x i8>, ptr %i.gm, align 1, !tbaa !7, !alias.scope !21
  %i.gn = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.gk
  %i.go = getelementptr [2 x i8], ptr %i.c, i64 %i.gk
  %i.gp = getelementptr i8, ptr %i.go, i64 16
  %interleaved.vec = shufflevector <8 x i8> %broadcast.splatinsert333, <8 x i8> %wide.load337, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.gn, align 1, !tbaa !7, !alias.scope !24, !noalias !21
  %interleaved.vec339 = shufflevector <8 x i8> %broadcast.splatinsert333, <8 x i8> %wide.load338, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  store <16 x i8> %interleaved.vec339, ptr %i.gp, align 1, !tbaa !7, !alias.scope !24, !noalias !21
  %index.next340 = add nuw i64 %index336, 16      ; 2 uses
  %i.gq = icmp eq i64 %index.next340, %n.vec332
  br i1 %i.gq, label %middle.block341, label %vector.body335, !llvm.loop !26

middle.block341:                                  ; preds = %vector.body335
  %cmp.n342 = icmp eq i64 %n.vec332, %wide.trip.count268
  br i1 %cmp.n342, label %.loopexit, label %vec.epilog.iter.check347

vec.epilog.iter.check347:                         ; preds = %middle.block341
  %min.epilog.iters.check348 = icmp eq i64 %n.mod.vf331, 0
  br i1 %min.epilog.iters.check348, label %.lr.ph200.preheader, label %vec.epilog.ph349, !prof !27

vec.epilog.ph349:                                 ; preds = %vector.main.loop.iter.check328, %vec.epilog.iter.check347
  %vec.epilog.resume.val343 = phi i64 [ %n.vec332, %vec.epilog.iter.check347 ], [ 0, %vector.main.loop.iter.check328 ]
  %n.vec351 = and i64 %wide.trip.count268, 2147483644 ; 4 uses
  %i.gr = add nsw i64 %n.vec351, %i.ge
  %broadcast.splatinsert352 = insertelement <4 x i8> poison, i8 %i.fk, i64 0
  %invariant.gep399 = getelementptr [2 x i8], ptr %i.c, i64 %i.ge
  br label %vec.epilog.vector.body354

vec.epilog.vector.body354:                        ; preds = %vec.epilog.vector.body354, %vec.epilog.ph349
  %index355 = phi i64 [ %vec.epilog.resume.val343, %vec.epilog.ph349 ], [ %index.next358, %vec.epilog.vector.body354 ] ; 3 uses
  %i.gs = getelementptr i8, ptr %invariant.gep304, i64 %index355
  %wide.load356 = load <4 x i8>, ptr %i.gs, align 1, !tbaa !7, !alias.scope !21
  %gep400 = getelementptr [2 x i8], ptr %invariant.gep399, i64 %index355
  %interleaved.vec357 = shufflevector <4 x i8> %broadcast.splatinsert352, <4 x i8> %wide.load356, <8 x i32> <i32 0, i32 4, i32 0, i32 5, i32 0, i32 6, i32 0, i32 7>
  store <8 x i8> %interleaved.vec357, ptr %gep400, align 1, !tbaa !7, !alias.scope !24, !noalias !21
  %index.next358 = add nuw i64 %index355, 4       ; 2 uses
  %i.gt = icmp eq i64 %index.next358, %n.vec351
  br i1 %i.gt, label %vec.epilog.middle.block359, label %vec.epilog.vector.body354, !llvm.loop !28

vec.epilog.middle.block359:                       ; preds = %vec.epilog.vector.body354
  %cmp.n360 = icmp eq i64 %n.vec351, %wide.trip.count268
  br i1 %cmp.n360, label %.loopexit, label %.lr.ph200.preheader

.lr.ph200.preheader:                              ; preds = %vector.memcheck, %iter.check345, %vec.epilog.iter.check347, %vec.epilog.middle.block359
  %indvars.iv263.ph = phi i64 [ %i.ge, %iter.check345 ], [ %i.ge, %vector.memcheck ], [ %i.gj, %vec.epilog.iter.check347 ], [ %i.gr, %vec.epilog.middle.block359 ] ; 2 uses
  %indvars.iv261.ph = phi i64 [ 0, %iter.check345 ], [ 0, %vector.memcheck ], [ %n.vec332, %vec.epilog.iter.check347 ], [ %n.vec351, %vec.epilog.middle.block359 ] ; 3 uses
  %xtraiter390 = and i64 %wide.trip.count268, 3   ; 2 uses
  %lcmp.mod391.not = icmp eq i64 %xtraiter390, 0
  br i1 %lcmp.mod391.not, label %.lr.ph200.prol.loopexit, label %.lr.ph200.prol

.lr.ph200.prol:                                   ; preds = %.lr.ph200.preheader, %.lr.ph200.prol
  %indvars.iv263.prol = phi i64 [ %indvars.iv.next264.prol, %.lr.ph200.prol ], [ %indvars.iv263.ph, %.lr.ph200.preheader ] ; 2 uses
  %indvars.iv261.prol = phi i64 [ %indvars.iv.next262.prol, %.lr.ph200.prol ], [ %indvars.iv261.ph, %.lr.ph200.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph200.prol ], [ 0, %.lr.ph200.preheader ]
  %gep305.prol = getelementptr i8, ptr %invariant.gep304, i64 %indvars.iv261.prol
  %i.gu = load i8, ptr %gep305.prol, align 1, !tbaa !7
  %i.gv = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv263.prol ; 2 uses
  store i8 %i.fk, ptr %i.gv, align 1, !tbaa !7
  %.sroa.4.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.gv, i64 1
  store i8 %i.gu, ptr %.sroa.4.0..sroa_idx.prol, align 1, !tbaa !7
  %indvars.iv.next264.prol = add nsw i64 %indvars.iv263.prol, 1 ; 2 uses
  %indvars.iv.next262.prol = add nuw nsw i64 %indvars.iv261.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter390
  br i1 %prol.iter.cmp.not, label %.lr.ph200.prol.loopexit, label %.lr.ph200.prol, !llvm.loop !29

.lr.ph200.prol.loopexit:                          ; preds = %.lr.ph200.prol, %.lr.ph200.preheader
  %indvars.iv263.unr = phi i64 [ %indvars.iv263.ph, %.lr.ph200.preheader ], [ %indvars.iv.next264.prol, %.lr.ph200.prol ]
  %indvars.iv261.unr = phi i64 [ %indvars.iv261.ph, %.lr.ph200.preheader ], [ %indvars.iv.next262.prol, %.lr.ph200.prol ]
  %i.gw = sub nsw i64 %indvars.iv261.ph, %wide.trip.count268
  %i.gx = icmp ugt i64 %i.gw, -4
  br i1 %i.gx, label %.loopexit, label %.lr.ph200

.lr.ph200:                                        ; preds = %.lr.ph200.prol.loopexit, %.lr.ph200
  %indvars.iv263 = phi i64 [ %indvars.iv.next264.3, %.lr.ph200 ], [ %indvars.iv263.unr, %.lr.ph200.prol.loopexit ] ; 5 uses
  %indvars.iv261 = phi i64 [ %indvars.iv.next262.3, %.lr.ph200 ], [ %indvars.iv261.unr, %.lr.ph200.prol.loopexit ] ; 5 uses
  %gep305 = getelementptr i8, ptr %invariant.gep304, i64 %indvars.iv261
  %i.gy = load i8, ptr %gep305, align 1, !tbaa !7
  %i.gz = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv263 ; 2 uses
  store i8 %i.fk, ptr %i.gz, align 1, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gz, i64 1
  store i8 %i.gy, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !7
  %i.ha = getelementptr i8, ptr %invariant.gep304, i64 %indvars.iv261
  %gep305.1 = getelementptr i8, ptr %i.ha, i64 1
  %i.hb = load i8, ptr %gep305.1, align 1, !tbaa !7
  %i.hc = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv263 ; 2 uses
  %i.hd = getelementptr i8, ptr %i.hc, i64 2
  store i8 %i.fk, ptr %i.hd, align 1, !tbaa !7
  %.sroa.4.0..sroa_idx.1 = getelementptr i8, ptr %i.hc, i64 3
  store i8 %i.hb, ptr %.sroa.4.0..sroa_idx.1, align 1, !tbaa !7
  %i.he = getelementptr i8, ptr %invariant.gep304, i64 %indvars.iv261
  %gep305.2 = getelementptr i8, ptr %i.he, i64 2
  %i.hf = load i8, ptr %gep305.2, align 1, !tbaa !7
  %i.hg = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv263 ; 2 uses
  %i.hh = getelementptr i8, ptr %i.hg, i64 4
  store i8 %i.fk, ptr %i.hh, align 1, !tbaa !7
  %.sroa.4.0..sroa_idx.2 = getelementptr i8, ptr %i.hg, i64 5
  store i8 %i.hf, ptr %.sroa.4.0..sroa_idx.2, align 1, !tbaa !7
  %i.hi = getelementptr i8, ptr %invariant.gep304, i64 %indvars.iv261
  %gep305.3 = getelementptr i8, ptr %i.hi, i64 3
  %i.hj = load i8, ptr %gep305.3, align 1, !tbaa !7
  %i.hk = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv263 ; 2 uses
  %i.hl = getelementptr i8, ptr %i.hk, i64 6
  store i8 %i.fk, ptr %i.hl, align 1, !tbaa !7
  %.sroa.4.0..sroa_idx.3 = getelementptr i8, ptr %i.hk, i64 7
  store i8 %i.hj, ptr %.sroa.4.0..sroa_idx.3, align 1, !tbaa !7
  %indvars.iv.next264.3 = add nsw i64 %indvars.iv263, 4
  %indvars.iv.next262.3 = add nuw nsw i64 %indvars.iv261, 4 ; 2 uses
  %exitcond269.not.3 = icmp eq i64 %indvars.iv.next262.3, %wide.trip.count268
  br i1 %exitcond269.not.3, label %.loopexit, label %.lr.ph200, !llvm.loop !30

.lr.ph197:                                        ; preds = %.lr.ph197, %.lr.ph197.preheader.new
  %indvars.iv254 = phi i64 [ %i.ga, %.lr.ph197.preheader.new ], [ %indvars.iv.next255.1, %.lr.ph197 ] ; 3 uses
  %indvars.iv252 = phi i64 [ 0, %.lr.ph197.preheader.new ], [ %indvars.iv.next253.1, %.lr.ph197 ] ; 3 uses
  %niter389 = phi i64 [ 0, %.lr.ph197.preheader.new ], [ %niter389.next.1, %.lr.ph197 ]
  %gep303 = getelementptr i8, ptr %invariant.gep302, i64 %indvars.iv252
  %i.hm = load i8, ptr %gep303, align 1, !tbaa !7 ; 2 uses
  %i.hn = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv254 ; 4 uses
  store i8 %i.fk, ptr %i.hn, align 1, !tbaa !7
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 1
  store i8 %i.hm, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !7
  %i.ho = getelementptr i8, ptr %i.hn, i64 2
  store i8 %i.fk, ptr %i.ho, align 1, !tbaa !7
  %.sroa.5.0..sroa_idx8 = getelementptr i8, ptr %i.hn, i64 3
  store i8 %i.hm, ptr %.sroa.5.0..sroa_idx8, align 1, !tbaa !7
  %i.hp = getelementptr i8, ptr %invariant.gep302, i64 %indvars.iv252
  %gep303.1 = getelementptr i8, ptr %i.hp, i64 1
  %i.hq = load i8, ptr %gep303.1, align 1, !tbaa !7 ; 2 uses
  %i.hr = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv254 ; 4 uses
  %i.hs = getelementptr i8, ptr %i.hr, i64 4
  store i8 %i.fk, ptr %i.hs, align 1, !tbaa !7
  %.sroa.5.0..sroa_idx.1 = getelementptr i8, ptr %i.hr, i64 5
  store i8 %i.hq, ptr %.sroa.5.0..sroa_idx.1, align 1, !tbaa !7
  %i.ht = getelementptr i8, ptr %i.hr, i64 6
  store i8 %i.fk, ptr %i.ht, align 1, !tbaa !7
  %.sroa.5.0..sroa_idx8.1 = getelementptr i8, ptr %i.hr, i64 7
  store i8 %i.hq, ptr %.sroa.5.0..sroa_idx8.1, align 1, !tbaa !7
  %indvars.iv.next255.1 = add nsw i64 %indvars.iv254, 4 ; 2 uses
  %indvars.iv.next253.1 = add nuw nsw i64 %indvars.iv252, 2 ; 2 uses
  %niter389.next.1 = add i64 %niter389, 2         ; 2 uses
  %niter389.ncmp.1 = icmp eq i64 %niter389.next.1, %unroll_iter388
  br i1 %niter389.ncmp.1, label %.loopexit.loopexit364.unr-lcssa, label %.lr.ph197, !llvm.loop !31

bb.i:                                             ; preds = %bb.i, %.lr.ph194.new
  %indvars.iv245 = phi i64 [ %i.fw, %.lr.ph194.new ], [ %indvars.iv.next246.1, %bb.i ] ; 3 uses
  %indvars.iv243 = phi i64 [ 0, %.lr.ph194.new ], [ %indvars.iv.next244.1, %bb.i ] ; 3 uses
  %niter383 = phi i64 [ 0, %.lr.ph194.new ], [ %niter383.next.1, %bb.i ]
  %gep301 = getelementptr i8, ptr %invariant.gep300, i64 %indvars.iv243
  %i.hu = load i8, ptr %gep301, align 1, !tbaa !7
  %i.hv = zext i8 %i.hu to i64
  %i.hw = shl nuw nsw i64 %i.hv, 8
  %i.hx = or disjoint i64 %i.hw, %i.fu
  %i.hy = mul nuw i64 %i.hx, 281479271743489
  %i.hz = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv245
  store i64 %i.hy, ptr %i.hz, align 1, !tbaa !32
  %i.ia = getelementptr i8, ptr %invariant.gep300, i64 %indvars.iv243
  %gep301.1 = getelementptr i8, ptr %i.ia, i64 1
  %i.ib = load i8, ptr %gep301.1, align 1, !tbaa !7
  %i.ic = zext i8 %i.ib to i64
  %i.id = shl nuw nsw i64 %i.ic, 8
  %i.ie = or disjoint i64 %i.id, %i.fu
  %i.if = mul nuw i64 %i.ie, 281479271743489
  %i.ig = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv245
  %i.ih = getelementptr i8, ptr %i.ig, i64 8
  store i64 %i.if, ptr %i.ih, align 1, !tbaa !32
  %indvars.iv.next246.1 = add nsw i64 %indvars.iv245, 8 ; 2 uses
  %indvars.iv.next244.1 = add nuw nsw i64 %indvars.iv243, 2 ; 2 uses
  %niter383.next.1 = add i64 %niter383, 2         ; 2 uses
  %niter383.ncmp.1 = icmp eq i64 %niter383.next.1, %unroll_iter382
  br i1 %niter383.ncmp.1, label %.loopexit.loopexit365.unr-lcssa, label %bb.i, !llvm.loop !34

bb.j:                                             ; preds = %bb.j, %.lr.ph191.new
  %indvars.iv236 = phi i64 [ %i.fr, %.lr.ph191.new ], [ %indvars.iv.next237.1, %bb.j ] ; 3 uses
  %indvars.iv234 = phi i64 [ 0, %.lr.ph191.new ], [ %indvars.iv.next235.1, %bb.j ] ; 3 uses
  %niter376 = phi i64 [ 0, %.lr.ph191.new ], [ %niter376.next.1, %bb.j ]
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv234
  %i.ii = load i8, ptr %gep, align 1, !tbaa !7
  %i.ij = zext i8 %i.ii to i64
  %i.ik = shl nuw nsw i64 %i.ij, 8
  %i.il = or disjoint i64 %i.ik, %i.fp
  %i.im = mul nuw i64 %i.il, 281479271743489      ; 2 uses
  %i.in = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv236 ; 2 uses
  store i64 %i.im, ptr %i.in, align 1, !tbaa !32
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  store i64 %i.im, ptr %i.io, align 1, !tbaa !32
  %i.ip = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv234
  %gep.1 = getelementptr i8, ptr %i.ip, i64 1
  %i.iq = load i8, ptr %gep.1, align 1, !tbaa !7
  %i.ir = zext i8 %i.iq to i64
  %i.is = shl nuw nsw i64 %i.ir, 8
  %i.it = or disjoint i64 %i.is, %i.fp
  %i.iu = mul nuw i64 %i.it, 281479271743489      ; 2 uses
  %i.iv = getelementptr [2 x i8], ptr %i.c, i64 %indvars.iv236 ; 2 uses
  %i.iw = getelementptr i8, ptr %i.iv, i64 16
  store i64 %i.iu, ptr %i.iw, align 1, !tbaa !32
  %i.ix = getelementptr i8, ptr %i.iv, i64 24
  store i64 %i.iu, ptr %i.ix, align 1, !tbaa !32
  %indvars.iv.next237.1 = add nsw i64 %indvars.iv236, 16 ; 2 uses
  %indvars.iv.next235.1 = add nuw nsw i64 %indvars.iv234, 2 ; 2 uses
  %niter376.next.1 = add i64 %niter376, 2         ; 2 uses
  %niter376.ncmp.1 = icmp eq i64 %niter376.next.1, %unroll_iter375
  br i1 %niter376.ncmp.1, label %.loopexit.loopexit366.unr-lcssa, label %bb.j, !llvm.loop !35

bb.k:                                             ; preds = %bb.h, %.split
  %i.iy = icmp sgt i32 %i.fe, 0
  br i1 %i.iy, label %.lr.ph208, label %.loopexit

.lr.ph208:                                        ; preds = %bb.k
  %.mask171 = and i32 %i.fj, 255
  %i.iz = zext nneg i32 %.mask171 to i64
  %6 = icmp sgt i32 %i.fh, 0
  %7 = sext i32 %i.fh to i64                      ; 2 uses
  %i.ja = sext i32 %.0161211 to i64
  %i.jb = sext i32 %.0162209 to i64
  %wide.trip.count280 = zext nneg i32 %i.fe to i64
  %invariant.gep306 = getelementptr i8, ptr %i.fb, i64 %i.ja
  %i.jc = add nsw i64 %7, -1
  %i.jd = lshr i64 %i.jc, 4
  %i.je = add nuw nsw i64 %i.jd, 1                ; 2 uses
  %xtraiter393 = and i64 %i.je, 7                 ; 3 uses
  %i.jf = icmp ult i32 %i.fh, 113
  %unroll_iter397 = and i64 %i.je, 2305843009213693944
  %lcmp.mod395.not = icmp eq i64 %xtraiter393, 0
  %lcmp.mod396 = icmp ne i64 %xtraiter393, 0
  br label %8

8:                                                ; preds = %.lr.ph208, %._crit_edge204
  %indvars.iv275 = phi i64 [ %i.jb, %.lr.ph208 ], [ %indvars.iv.next276, %._crit_edge204 ] ; 2 uses
  %indvars.iv273 = phi i64 [ 0, %.lr.ph208 ], [ %indvars.iv.next274, %._crit_edge204 ] ; 2 uses
  br i1 %6, label %.lr.ph203, label %._crit_edge204

.lr.ph203:                                        ; preds = %8
  %gep307 = getelementptr i8, ptr %invariant.gep306, i64 %indvars.iv273
  %i.jg = load i8, ptr %gep307, align 1, !tbaa !7
  %i.jh = zext i8 %i.jg to i64
  %i.ji = shl nuw nsw i64 %i.jh, 8
  %i.jj = or disjoint i64 %i.ji, %i.iz
  %i.jk = mul nuw i64 %i.jj, 281479271743489
  %i.jl = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv275 ; 9 uses
  %i.jm = insertelement <4 x i64> poison, i64 %i.jk, i64 0
  %i.jn = shufflevector <4 x i64> %i.jm, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  br i1 %i.jf, label %.epil.preheader392, label %.lr.ph203.new

.lr.ph203.new:                                    ; preds = %.lr.ph203, %.lr.ph203.new
  %indvars.iv270 = phi i64 [ %indvars.iv.next271.7, %.lr.ph203.new ], [ 0, %.lr.ph203 ] ; 9 uses
  %niter398 = phi i64 [ %niter398.next.7, %.lr.ph203.new ], [ 0, %.lr.ph203 ]
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %indvars.iv270
  store <4 x i64> %i.jn, ptr %i.jo, align 1, !tbaa !32
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %indvars.iv270
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 32
  store <4 x i64> %i.jn, ptr %i.jq, align 1, !tbaa !32
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %indvars.iv270
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 64
  store <4 x i64> %i.jn, ptr %i.js, align 1, !tbaa !32
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %indvars.iv270
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 96
  store <4 x i64> %i.jn, ptr %i.ju, align 1, !tbaa !32
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %indvars.iv270
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 128
  store <4 x i64> %i.jn, ptr %i.jw, align 1, !tbaa !32
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %indvars.iv270
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 160
  store <4 x i64> %i.jn, ptr %i.jy, align 1, !tbaa !32
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %indvars.iv270
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 192
  store <4 x i64> %i.jn, ptr %i.ka, align 1, !tbaa !32
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %indvars.iv270
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 224
  store <4 x i64> %i.jn, ptr %i.kc, align 1, !tbaa !32
  %indvars.iv.next271.7 = add nuw nsw i64 %indvars.iv270, 128 ; 2 uses
  %niter398.next.7 = add i64 %niter398, 8         ; 2 uses
  %niter398.ncmp.7.not = icmp eq i64 %niter398.next.7, %unroll_iter397
  br i1 %niter398.ncmp.7.not, label %._crit_edge204.loopexit.unr-lcssa, label %.lr.ph203.new, !llvm.loop !36

._crit_edge204.loopexit.unr-lcssa:                ; preds = %.lr.ph203.new
  br i1 %lcmp.mod395.not, label %._crit_edge204, label %.epil.preheader392

.epil.preheader392:                               ; preds = %._crit_edge204.loopexit.unr-lcssa, %.lr.ph203
  %indvars.iv270.epil.init = phi i64 [ 0, %.lr.ph203 ], [ %indvars.iv.next271.7, %._crit_edge204.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod396)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader392
  %indvars.iv270.epil = phi i64 [ %indvars.iv270.epil.init, %.epil.preheader392 ], [ %indvars.iv.next271.epil, %bb.l ] ; 2 uses
  %epil.iter394 = phi i64 [ 0, %.epil.preheader392 ], [ %epil.iter394.next, %bb.l ]
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %indvars.iv270.epil
  store <4 x i64> %i.jn, ptr %i.kd, align 1, !tbaa !32
  %indvars.iv.next271.epil = add nuw nsw i64 %indvars.iv270.epil, 16
  %epil.iter394.next = add i64 %epil.iter394, 1   ; 2 uses
  %epil.iter394.cmp.not = icmp eq i64 %epil.iter394.next, %xtraiter393
  br i1 %epil.iter394.cmp.not, label %._crit_edge204, label %bb.l, !llvm.loop !37

._crit_edge204:                                   ; preds = %._crit_edge204.loopexit.unr-lcssa, %bb.l, %8
  %indvars.iv.next276 = add nsw i64 %indvars.iv275, %7
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond281.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count280
  br i1 %exitcond281.not, label %.loopexit, label %8, !llvm.loop !38

.loopexit.loopexit364.unr-lcssa:                  ; preds = %.lr.ph197
  %lcmp.mod386.not = icmp eq i64 %xtraiter384, 0
  br i1 %lcmp.mod386.not, label %.loopexit, label %.lr.ph197.epil.preheader

.lr.ph197.epil.preheader:                         ; preds = %.loopexit.loopexit364.unr-lcssa, %.lr.ph197.preheader
  %indvars.iv254.epil.init = phi i64 [ %i.ga, %.lr.ph197.preheader ], [ %indvars.iv.next255.1, %.loopexit.loopexit364.unr-lcssa ]
  %indvars.iv252.epil.init = phi i64 [ 0, %.lr.ph197.preheader ], [ %indvars.iv.next253.1, %.loopexit.loopexit364.unr-lcssa ]
  %lcmp.mod387 = trunc i32 %i.fe to i1
  call void @llvm.assume(i1 %lcmp.mod387)
  %gep303.epil = getelementptr i8, ptr %invariant.gep302, i64 %indvars.iv252.epil.init
  %i.ke = load i8, ptr %gep303.epil, align 1, !tbaa !7 ; 2 uses
  %i.kf = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv254.epil.init ; 4 uses
  store i8 %i.fk, ptr %i.kf, align 1, !tbaa !7
  %.sroa.5.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.kf, i64 1
  store i8 %i.ke, ptr %.sroa.5.0..sroa_idx.epil, align 1, !tbaa !7
  %i.kg = getelementptr i8, ptr %i.kf, i64 2
  store i8 %i.fk, ptr %i.kg, align 1, !tbaa !7
  %.sroa.5.0..sroa_idx8.epil = getelementptr i8, ptr %i.kf, i64 3
  store i8 %i.ke, ptr %.sroa.5.0..sroa_idx8.epil, align 1, !tbaa !7
  br label %.loopexit

.loopexit.loopexit365.unr-lcssa:                  ; preds = %bb.i
  %lcmp.mod380.not = icmp eq i64 %xtraiter378, 0
  br i1 %lcmp.mod380.not, label %.loopexit, label %.epil.preheader377

.epil.preheader377:                               ; preds = %.loopexit.loopexit365.unr-lcssa, %.lr.ph194
  %indvars.iv245.epil.init = phi i64 [ %i.fw, %.lr.ph194 ], [ %indvars.iv.next246.1, %.loopexit.loopexit365.unr-lcssa ]
  %indvars.iv243.epil.init = phi i64 [ 0, %.lr.ph194 ], [ %indvars.iv.next244.1, %.loopexit.loopexit365.unr-lcssa ]
  %lcmp.mod381 = trunc i32 %i.fe to i1
  call void @llvm.assume(i1 %lcmp.mod381)
  %gep301.epil = getelementptr i8, ptr %invariant.gep300, i64 %indvars.iv243.epil.init
  %i.kh = load i8, ptr %gep301.epil, align 1, !tbaa !7
  %i.ki = zext i8 %i.kh to i64
  %i.kj = shl nuw nsw i64 %i.ki, 8
  %i.kk = or disjoint i64 %i.kj, %i.fu
  %i.kl = mul nuw i64 %i.kk, 281479271743489
  %i.km = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv245.epil.init
  store i64 %i.kl, ptr %i.km, align 1, !tbaa !32
  br label %.loopexit

.loopexit.loopexit366.unr-lcssa:                  ; preds = %bb.j
  %lcmp.mod373.not = icmp eq i64 %xtraiter371, 0
  br i1 %lcmp.mod373.not, label %.loopexit, label %.epil.preheader370

.epil.preheader370:                               ; preds = %.loopexit.loopexit366.unr-lcssa, %.lr.ph191
  %indvars.iv236.epil.init = phi i64 [ %i.fr, %.lr.ph191 ], [ %indvars.iv.next237.1, %.loopexit.loopexit366.unr-lcssa ]
  %indvars.iv234.epil.init = phi i64 [ 0, %.lr.ph191 ], [ %indvars.iv.next235.1, %.loopexit.loopexit366.unr-lcssa ]
  %lcmp.mod374 = trunc i32 %i.fe to i1
  call void @llvm.assume(i1 %lcmp.mod374)
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv234.epil.init
  %i.kn = load i8, ptr %gep.epil, align 1, !tbaa !7
  %i.ko = zext i8 %i.kn to i64
  %i.kp = shl nuw nsw i64 %i.ko, 8
  %i.kq = or disjoint i64 %i.kp, %i.fp
  %i.kr = mul nuw i64 %i.kq, 281479271743489      ; 2 uses
  %i.ks = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv236.epil.init ; 2 uses
  store i64 %i.kr, ptr %i.ks, align 1, !tbaa !32
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  store i64 %i.kr, ptr %i.kt, align 1, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader370, %.loopexit.loopexit366.unr-lcssa, %.epil.preheader377, %.loopexit.loopexit365.unr-lcssa, %.lr.ph197.epil.preheader, %.loopexit.loopexit364.unr-lcssa, %.lr.ph200.prol.loopexit, %.lr.ph200, %._crit_edge204, %middle.block341, %vec.epilog.middle.block359, %.preheader177, %.preheader175, %.preheader173, %.preheader, %bb.k
  %i.ku = add nsw i32 %i.fe, %.0161211
  %i.kv = mul nsw i32 %i.fe, %i.fh
  %i.kw = add nsw i32 %i.kv, %.0162209
  %indvars.iv.next283 = add nuw nsw i64 %indvars.iv282, 1 ; 2 uses
  %exitcond286.not = icmp eq i64 %indvars.iv.next283, %i.fc
  br i1 %exitcond286.not, label %.critedge, label %bb.h, !llvm.loop !39

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
  %.val = load i32, ptr %0, align 4               ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i32 %.val to i8
  %.sroa.7.0.extract.shift = lshr i32 %.val, 24
  %.sroa.7.0.extract.trunc = trunc nuw i32 %.sroa.7.0.extract.shift to i8
  %i.d = and i32 %.val, 255                       ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 4          ; 3 uses
  %i.f = icmp ult i64 %4, 2124
  br i1 %i.f, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 676 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 680 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 624 ; 10 uses
  %i.j = icmp samesign ugt i32 %i.d, 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %i.i, i8 0, i64 112, i1 false)
  br i1 %i.j, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 992 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 1248
  %i.m = call noundef i64 @_ZN11duckdb_zstd18HUF_readStats_wkspEPhmPjS1_S1_PKvmPvmi(ptr noundef nonnull %i.k, i64 noundef 256, ptr noundef nonnull %i.i, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.l, i64 noundef 876, i32 noundef %5) ; 3 uses
  %i.n = icmp ult i64 %i.m, -119
  br i1 %i.n, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.b, align 4, !tbaa !3    ; 5 uses
  %i.p = icmp ugt i32 %i.o, %i.d
  br i1 %i.p, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add nuw nsw i32 %i.o, 1                  ; 5 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv178 = phi i32 [ %indvars.iv.next179, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %indvars.iv173 = phi i32 [ %indvars.iv.next174, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %indvars.iv154 = phi i32 [ %indvars.iv.next155, %bb.f ], [ %i.q, %bb.e ] ; 6 uses
  %.089 = phi i32 [ %i.v, %bb.f ], [ %i.o, %bb.e ] ; 6 uses
  %i.r = zext i32 %.089 to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = icmp eq i32 %i.t, 0
  %i.v = add i32 %.089, -1
  %indvars.iv.next155 = add i32 %indvars.iv154, -1
  %indvars.iv.next174 = add i32 %indvars.iv173, 1
  %indvars.iv.next179 = add i32 %indvars.iv178, -1
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
  %wide.trip.count = zext i32 %indvars.iv154 to i64
  %i.aa = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.aa, 3                    ; 3 uses
  %i.ab = add i32 %indvars.iv154, -2
  %i.ac = icmp ult i32 %i.ab, 3
  br i1 %i.ac, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.aa, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %.094113 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.ar, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.af = add i32 %i.ae, %.094113                 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  store i32 %.094113, ptr %i.ag, align 4, !tbaa !3
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
  %.094113.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod326 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod326)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %.094113.epil = phi i32 [ %.094113.epil.init, %.lr.ph.epil.preheader ], [ %i.av, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.epil
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = add i32 %i.au, %.094113.epil            ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.epil
  store i32 %.094113.epil, ptr %i.aw, align 4, !tbaa !3
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
  br i1 %.not, label %._crit_edge119, label %.lr.ph118

.lr.ph118:                                        ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 736 ; 3 uses
  %wide.trip.count159 = zext i32 %i.az to i64     ; 2 uses
  %xtraiter327 = and i64 %wide.trip.count159, 1
  %i.bb = icmp eq i32 %i.az, 1
  br i1 %i.bb, label %.epil.preheader, label %.lr.ph118.new

.lr.ph118.new:                                    ; preds = %.lr.ph118
  %unroll_iter331 = and i64 %wide.trip.count159, 4294967294
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph118.new
  %indvars.iv156 = phi i64 [ 0, %.lr.ph118.new ], [ %indvars.iv.next157.1, %bb.g ] ; 4 uses
  %niter332 = phi i64 [ 0, %.lr.ph118.new ], [ %niter332.next.1, %bb.g ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv156
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !7
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.be ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3  ; 2 uses
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !3
  %i.bi = trunc i64 %indvars.iv156 to i8
  %i.bj = zext i32 %i.bg to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bj
  store i8 %i.bi, ptr %i.bk, align 1, !tbaa !43
  %indvars.iv.next157 = or disjoint i64 %indvars.iv156, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next157
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !7
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bn ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3  ; 2 uses
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !3
  %i.br = trunc i64 %indvars.iv.next157 to i8
  %i.bs = zext i32 %i.bp to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bs
  store i8 %i.br, ptr %i.bt, align 1, !tbaa !43
  %indvars.iv.next157.1 = add nuw nsw i64 %indvars.iv156, 2 ; 2 uses
  %niter332.next.1 = add i64 %niter332, 2         ; 2 uses
  %niter332.ncmp.1 = icmp eq i64 %niter332.next.1, %unroll_iter331
  br i1 %niter332.ncmp.1, label %._crit_edge119.loopexit.unr-lcssa, label %bb.g, !llvm.loop !45

._crit_edge119.loopexit.unr-lcssa:                ; preds = %bb.g
  %lcmp.mod329.not = icmp eq i64 %xtraiter327, 0
  br i1 %lcmp.mod329.not, label %._crit_edge119, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge119.loopexit.unr-lcssa, %.lr.ph118
  %indvars.iv156.epil.init = phi i64 [ 0, %.lr.ph118 ], [ %indvars.iv.next157.1, %._crit_edge119.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod330 = trunc i32 %i.az to i1
  call void @llvm.assume(i1 %lcmp.mod330)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv156.epil.init
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !7
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3  ; 2 uses
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !3
  %i.ca = trunc i64 %indvars.iv156.epil.init to i8
  %i.cb = zext i32 %i.by to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cb
  store i8 %i.ca, ptr %i.cc, align 1, !tbaa !43
  br label %._crit_edge119

._crit_edge119:                                   ; preds = %.epil.preheader, %._crit_edge119.loopexit.unr-lcssa, %._crit_edge
  store i32 0, ptr %i.h, align 4, !tbaa !3
  %i.cd = xor i32 %i.o, -1
  %i.ce = add nsw i32 %spec.store.select, %i.cd   ; 2 uses
  br i1 %i.z, label %.lr.ph123.preheader, label %_ZN11duckdb_zstdL16HUF_fillDTableX2EPNS_10HUF_DEltX2EjPKNS_14sortedSymbol_tEPKjPA13_jjj.exit

.lr.ph123.preheader:                              ; preds = %._crit_edge119
  %wide.trip.count165 = zext i32 %indvars.iv154 to i64 ; 4 uses
  %i.cf = add nsw i64 %wide.trip.count165, -1     ; 3 uses
  %xtraiter333 = and i64 %i.cf, 1
  %i.cg = icmp eq i32 %indvars.iv154, 2
  br i1 %i.cg, label %.lr.ph123.epil.preheader, label %.lr.ph123.preheader.new

.lr.ph123.preheader.new:                          ; preds = %.lr.ph123.preheader
  %unroll_iter337 = and i64 %i.cf, -2
  br label %.lr.ph123

.lr.ph123:                                        ; preds = %.lr.ph123, %.lr.ph123.preheader.new
  %indvars.iv161 = phi i64 [ 1, %.lr.ph123.preheader.new ], [ %indvars.iv.next162.1, %.lr.ph123 ] ; 5 uses
  %.091120 = phi i32 [ 0, %.lr.ph123.preheader.new ], [ %i.ct, %.lr.ph123 ] ; 2 uses
  %niter338 = phi i64 [ 0, %.lr.ph123.preheader.new ], [ %niter338.next.1, %.lr.ph123 ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv161
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3
  %i.cj = trunc nuw i64 %indvars.iv161 to i32
  %i.ck = add i32 %i.ce, %i.cj
  %i.cl = shl i32 %i.ci, %i.ck
  %i.cm = add i32 %i.cl, %.091120                 ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv161
  store i32 %.091120, ptr %i.cn, align 4, !tbaa !3
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next162
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cq = trunc nuw i64 %indvars.iv.next162 to i32
  %i.cr = add i32 %i.ce, %i.cq
  %i.cs = shl i32 %i.cp, %i.cr
  %i.ct = add i32 %i.cs, %i.cm                    ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next162
  store i32 %i.cm, ptr %i.cu, align 4, !tbaa !3
  %indvars.iv.next162.1 = add nuw nsw i64 %indvars.iv161, 2 ; 2 uses
  %niter338.next.1 = add i64 %niter338, 2         ; 2 uses
  %niter338.ncmp.1 = icmp eq i64 %niter338.next.1, %unroll_iter337
  br i1 %niter338.ncmp.1, label %._crit_edge124.unr-lcssa, label %.lr.ph123, !llvm.loop !46

._crit_edge124.unr-lcssa:                         ; preds = %.lr.ph123
  %lcmp.mod335.not = icmp eq i64 %xtraiter333, 0
  br i1 %lcmp.mod335.not, label %._crit_edge124, label %.lr.ph123.epil.preheader

.lr.ph123.epil.preheader:                         ; preds = %._crit_edge124.unr-lcssa, %.lr.ph123.preheader
  %indvars.iv161.epil.init = phi i64 [ 1, %.lr.ph123.preheader ], [ %indvars.iv.next162.1, %._crit_edge124.unr-lcssa ]
  %.091120.epil.init = phi i32 [ 0, %.lr.ph123.preheader ], [ %i.ct, %._crit_edge124.unr-lcssa ]
  %lcmp.mod336 = trunc i64 %i.cf to i1
  call void @llvm.assume(i1 %lcmp.mod336)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv161.epil.init
  store i32 %.091120.epil.init, ptr %i.cv, align 4, !tbaa !3
  br label %._crit_edge124

._crit_edge124:                                   ; preds = %._crit_edge124.unr-lcssa, %.lr.ph123.epil.preheader
  %i.cw = sub i32 %i.q, %.089                     ; 3 uses
  %i.cx = add nuw nsw i32 %spec.store.select, 1
  %i.cy = sub i32 %i.cx, %i.cw
  %.not207 = icmp ult i32 %i.cw, %i.cy
  br i1 %.not207, label %.lr.ph127.us.preheader, label %._crit_edge132

.lr.ph127.us.preheader:                           ; preds = %._crit_edge124
  %i.cz = zext i32 %indvars.iv173 to i64          ; 2 uses
  %i.da = add i32 %spec.store.select, %indvars.iv178
  %wide.trip.count171 = zext i32 %indvars.iv154 to i64
  %i.db = add nsw i64 %wide.trip.count165, -1     ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 8
  %n.vec = and i64 %i.db, -8                      ; 3 uses
  %i.dc = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br label %.lr.ph127.us

.lr.ph127.us:                                     ; preds = %.lr.ph127.us.preheader, %._crit_edge128.us
  %indvar = phi i64 [ 0, %.lr.ph127.us.preheader ], [ %indvar.next, %._crit_edge128.us ] ; 2 uses
  %indvars.iv175 = phi i64 [ %i.cz, %.lr.ph127.us.preheader ], [ %indvars.iv.next176, %._crit_edge128.us ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [52 x i8], ptr %3, i64 %indvars.iv175 ; 6 uses
  %i.de = trunc nuw i64 %indvars.iv175 to i32     ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph127.us
  %i.df = add i64 %indvar, %i.cz
  %i.dg = mul i64 %i.df, 52
  %diff.check = icmp ult i64 %i.dg, 32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.de, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dh = or disjoint i64 %index, 1               ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %wide.load = load <4 x i32>, ptr %i.di, align 4, !tbaa !3
  %wide.load218 = load <4 x i32>, ptr %i.dj, align 4, !tbaa !3
  %i.dk = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.dl = lshr <4 x i32> %wide.load218, %broadcast.splat
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.dh ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store <4 x i32> %i.dk, ptr %i.dm, align 4, !tbaa !3
  store <4 x i32> %i.dl, ptr %i.dn, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge128.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph127.us, %middle.block
  %indvars.iv167.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph127.us ], [ %i.dc, %middle.block ] ; 4 uses
  %i.dp = sub nsw i64 %wide.trip.count165, %indvars.iv167.ph
  %xtraiter339 = and i64 %i.dp, 3                 ; 2 uses
  %lcmp.mod340.not = icmp eq i64 %xtraiter339, 0
  br i1 %lcmp.mod340.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv167.prol = phi i64 [ %indvars.iv.next168.prol, %scalar.ph.prol ], [ %indvars.iv167.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv167.prol
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3
  %i.ds = lshr i32 %i.dr, %i.de
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv167.prol
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !3
  %indvars.iv.next168.prol = add nuw nsw i64 %indvars.iv167.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter339
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !48

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv167.unr = phi i64 [ %indvars.iv167.ph, %scalar.ph.preheader ], [ %indvars.iv.next168.prol, %scalar.ph.prol ]
  %i.du = sub nsw i64 %indvars.iv167.ph, %wide.trip.count165
  %i.dv = icmp ugt i64 %i.du, -4
  br i1 %i.dv, label %._crit_edge128.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv167 = phi i64 [ %indvars.iv.next168.3, %scalar.ph ], [ %indvars.iv167.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv167
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3
  %i.dy = lshr i32 %i.dx, %i.de
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv167
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next168
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !3
  %i.ec = lshr i32 %i.eb, %i.de
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next168
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !3
  %indvars.iv.next168.1 = add nuw nsw i64 %indvars.iv167, 2 ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next168.1
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !3
  %i.eg = lshr i32 %i.ef, %i.de
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next168.1
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !3
  %indvars.iv.next168.2 = add nuw nsw i64 %indvars.iv167, 3 ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next168.2
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !3
  %i.ek = lshr i32 %i.ej, %i.de
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next168.2
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !3
  %indvars.iv.next168.3 = add nuw nsw i64 %indvars.iv167, 4 ; 2 uses
  %exitcond172.not.3 = icmp eq i64 %indvars.iv.next168.3, %wide.trip.count171
  br i1 %exitcond172.not.3, label %._crit_edge128.us, label %scalar.ph, !llvm.loop !49

._crit_edge128.us:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next176 to i32
  %exitcond180.not = icmp eq i32 %i.da, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond180.not, label %._crit_edge132, label %.lr.ph127.us, !llvm.loop !50

._crit_edge132:                                   ; preds = %._crit_edge128.us, %._crit_edge124
  %i.em = getelementptr i8, ptr %3, i64 736       ; 6 uses
  %i.en = sub nsw i32 %i.q, %spec.store.select
  %.not69.i = icmp slt i32 %.089, 1
  br i1 %.not69.i, label %_ZN11duckdb_zstdL16HUF_fillDTableX2EPNS_10HUF_DEltX2EjPKNS_14sortedSymbol_tEPKjPA13_jjj.exit, label %.lr.ph71.i.preheader

.lr.ph71.i.preheader:                             ; preds = %._crit_edge132
  %scevgep = getelementptr i8, ptr %0, i64 4
  %scevgep239 = getelementptr i8, ptr %0, i64 4
  %scevgep265 = getelementptr i8, ptr %0, i64 4
  %scevgep289 = getelementptr i8, ptr %0, i64 4
  %i.eo = add i64 %i.a, 735
  %i.ep = add i64 %i.a, 735
  %i.eq = add i64 %i.a, 735
  %i.er = add i64 %i.a, 735
  br label %.lr.ph71.i

.lr.ph71.i:                                       ; preds = %.lr.ph71.i.preheader, %.loopexit.i
  %indvars.iv82.i = phi i64 [ %indvars.iv.next83.i, %.loopexit.i ], [ 1, %.lr.ph71.i.preheader ] ; 4 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv82.i
  %i.et = load i32, ptr %i.es, align 4, !tbaa !3  ; 4 uses
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1 ; 3 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next83.i
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !3  ; 5 uses
  %i.ew = trunc nuw nsw i64 %indvars.iv82.i to i32
  %i.ex = sub i32 %i.q, %i.ew                     ; 10 uses
  %i.ey = sub i32 %spec.store.select, %i.ex       ; 3 uses
  %.not56.i = icmp ult i32 %i.ey, %i.cw
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv82.i
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !3  ; 3 uses
  br i1 %.not56.i, label %bb.n, label %bb.h

bb.h:                                             ; preds = %.lr.ph71.i
  %i.fb = and i32 %i.ey, 31
  %i.fc = shl nuw i32 1, %i.fb                    ; 4 uses
  %.not5766.i = icmp eq i32 %i.et, %i.ev
  br i1 %.not5766.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.fd = add i32 %i.ex, %i.en                    ; 3 uses
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.fd, i32 1)
  %i.fe = zext i32 %i.ex to i64
  %i.ff = getelementptr inbounds nuw [52 x i8], ptr %3, i64 %i.fe ; 2 uses
  %i.fg = icmp sgt i32 %i.fd, 1
  %i.fh = shl i32 %i.ex, 16
  %i.fi = add i32 %i.fh, 16777216                 ; 2 uses
  %i.fj = zext nneg i32 %spec.store.select.i to i64 ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.fj ; 2 uses
  %.not61.i = icmp sgt i32 %i.fd, %.089
  %i.fl = add i32 %i.ex, %i.q
  %i.fm = sext i32 %i.et to i64                   ; 2 uses
  br i1 %.not61.i, label %.lr.ph.split.us.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.split.us.i:                       ; preds = %.lr.ph.i, %.loopexit.i.us.us.i
  %indvars.iv79.i = phi i64 [ %indvars.iv.next80.i, %.loopexit.i.us.us.i ], [ %i.fm, %.lr.ph.i ] ; 2 uses
  %.05367.us.us.i = phi i32 [ %i.gu, %.loopexit.i.us.us.i ], [ %i.fa, %.lr.ph.i ] ; 2 uses
  %i.fn = sext i32 %.05367.us.us.i to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.fn ; 12 uses
  %i.fp = getelementptr inbounds i8, ptr %i.em, i64 %indvars.iv79.i
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !43
  %i.fr = zext i8 %i.fq to i32
  %i.fs = or disjoint i32 %i.fi, %i.fr
  %i.ft = zext i32 %i.fs to i64
  %i.fu = mul nuw i64 %i.ft, 4294967297           ; 4 uses
  %6 = load i32, ptr %i.fk, align 4, !tbaa !3     ; 3 uses
  switch i32 %i.fc, label %.preheader.i.us.us.i [
    i32 2, label %7
    i32 4, label %bb.i
  ]

bb.i:                                             ; preds = %.lr.ph.split.us.split.us.i
  store i64 %i.fu, ptr %i.fo, align 2
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store i64 %i.fu, ptr %i.fv, align 2
  br label %.loopexit.i.us.us.i

7:                                                ; preds = %.lr.ph.split.us.split.us.i
  store i64 %i.fu, ptr %i.fo, align 2
  br label %.loopexit.i.us.us.i

.preheader.i.us.us.i:                             ; preds = %.lr.ph.split.us.split.us.i
  %i.fw = icmp sgt i32 %6, 0
  br i1 %i.fw, label %.lr.ph.preheader.i.us.us.i, label %.loopexit.i.us.us.i

.lr.ph.preheader.i.us.us.i:                       ; preds = %.preheader.i.us.us.i
  %i.fx = zext nneg i32 %6 to i64
  %i.fy = insertelement <4 x i64> poison, i64 %i.fu, i64 0
  %i.fz = shufflevector <4 x i64> %i.fy, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  %i.ga = add nsw i64 %i.fx, -1
  %i.gb = lshr i64 %i.ga, 3
  %i.gc = add nuw nsw i64 %i.gb, 1                ; 2 uses
  %xtraiter366 = and i64 %i.gc, 7                 ; 3 uses
  %i.gd = icmp ult i32 %6, 57
  br i1 %i.gd, label %.lr.ph.i.us.us.i.epil.preheader, label %.lr.ph.preheader.i.us.us.i.new

.lr.ph.preheader.i.us.us.i.new:                   ; preds = %.lr.ph.preheader.i.us.us.i
  %unroll_iter370 = and i64 %i.gc, 4611686018427387896
  br label %.lr.ph.i.us.us.i

.lr.ph.i.us.us.i:                                 ; preds = %.lr.ph.i.us.us.i, %.lr.ph.preheader.i.us.us.i.new
  %indvars.iv.i.us.us.i = phi i64 [ 0, %.lr.ph.preheader.i.us.us.i.new ], [ %indvars.iv.next.i.us.us.i.7, %.lr.ph.i.us.us.i ] ; 9 uses
  %niter371 = phi i64 [ 0, %.lr.ph.preheader.i.us.us.i.new ], [ %niter371.next.7, %.lr.ph.i.us.us.i ]
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i.us.us.i
  store <4 x i64> %i.fz, ptr %i.ge, align 2
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i.us.us.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  store <4 x i64> %i.fz, ptr %i.gg, align 2
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i.us.us.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 64
  store <4 x i64> %i.fz, ptr %i.gi, align 2
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i.us.us.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 96
  store <4 x i64> %i.fz, ptr %i.gk, align 2
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i.us.us.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 128
  store <4 x i64> %i.fz, ptr %i.gm, align 2
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i.us.us.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 160
  store <4 x i64> %i.fz, ptr %i.go, align 2
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i.us.us.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 192
  store <4 x i64> %i.fz, ptr %i.gq, align 2
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i.us.us.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 224
  store <4 x i64> %i.fz, ptr %i.gs, align 2
  %indvars.iv.next.i.us.us.i.7 = add nuw nsw i64 %indvars.iv.i.us.us.i, 64 ; 2 uses
  %niter371.next.7 = add nuw nsw i64 %niter371, 8 ; 2 uses
  %niter371.ncmp.7.not = icmp eq i64 %niter371.next.7, %unroll_iter370
  br i1 %niter371.ncmp.7.not, label %.loopexit.i.us.us.i.loopexit.unr-lcssa, label %.lr.ph.i.us.us.i, !llvm.loop !51

.loopexit.i.us.us.i.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.us.us.i
  %lcmp.mod368.not = icmp eq i64 %xtraiter366, 0
  br i1 %lcmp.mod368.not, label %.loopexit.i.us.us.i, label %.lr.ph.i.us.us.i.epil.preheader

.lr.ph.i.us.us.i.epil.preheader:                  ; preds = %.loopexit.i.us.us.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.us.us.i
  %indvars.iv.i.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.us.us.i ], [ %indvars.iv.next.i.us.us.i.7, %.loopexit.i.us.us.i.loopexit.unr-lcssa ]
  %lcmp.mod369 = icmp ne i64 %xtraiter366, 0
  call void @llvm.assume(i1 %lcmp.mod369)
  br label %.lr.ph.i.us.us.i.epil

.lr.ph.i.us.us.i.epil:                            ; preds = %.lr.ph.i.us.us.i.epil, %.lr.ph.i.us.us.i.epil.preheader
  %indvars.iv.i.us.us.i.epil = phi i64 [ %indvars.iv.i.us.us.i.epil.init, %.lr.ph.i.us.us.i.epil.preheader ], [ %indvars.iv.next.i.us.us.i.epil, %.lr.ph.i.us.us.i.epil ] ; 2 uses
  %epil.iter367 = phi i64 [ 0, %.lr.ph.i.us.us.i.epil.preheader ], [ %epil.iter367.next, %.lr.ph.i.us.us.i.epil ]
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i.us.us.i.epil
  store <4 x i64> %i.fz, ptr %i.gt, align 2
  %indvars.iv.next.i.us.us.i.epil = add nuw nsw i64 %indvars.iv.i.us.us.i.epil, 8
  %epil.iter367.next = add i64 %epil.iter367, 1   ; 2 uses
  %epil.iter367.cmp.not = icmp eq i64 %epil.iter367.next, %xtraiter366
  br i1 %epil.iter367.cmp.not, label %.loopexit.i.us.us.i, label %.lr.ph.i.us.us.i.epil, !llvm.loop !52

.loopexit.i.us.us.i:                              ; preds = %.loopexit.i.us.us.i.loopexit.unr-lcssa, %.lr.ph.i.us.us.i.epil, %.preheader.i.us.us.i, %7, %bb.i
  %i.gu = add i32 %.05367.us.us.i, %i.fc
  %indvars.iv.next80.i = add nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %i.gv = trunc nsw i64 %indvars.iv.next80.i to i32
  %.not57.us.us.i = icmp eq i32 %i.ev, %i.gv
  br i1 %.not57.us.us.i, label %.loopexit.i, label %.lr.ph.split.us.split.us.i, !llvm.loop !53

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZN11duckdb_zstdL22HUF_fillDTableX2Level2EPNS_10HUF_DEltX2EjjPKjiiPKNS_14sortedSymbol_tES3_jt.exit.loopexit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN11duckdb_zstdL22HUF_fillDTableX2Level2EPNS_10HUF_DEltX2EjjPKjiiPKNS_14sortedSymbol_tES3_jt.exit.loopexit.i ], [ %i.fm, %.lr.ph.i ] ; 2 uses
  %.05367.i = phi i32 [ %i.qw, %_ZN11duckdb_zstdL22HUF_fillDTableX2Level2EPNS_10HUF_DEltX2EjjPKjiiPKNS_14sortedSymbol_tES3_jt.exit.loopexit.i ], [ %i.fa, %.lr.ph.i ] ; 4 uses
  %i.gw = sext i32 %.05367.i to i64
  %i.gx = sext i32 %.05367.i to i64
  %i.gy = sext i32 %.05367.i to i64
  %i.gz = getelementptr [4 x i8], ptr %i.e, i64 %i.gy ; 13 uses
  %i.ha = getelementptr inbounds i8, ptr %i.em, i64 %indvars.iv.i
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !43
  %i.hc = zext i8 %i.hb to i32                    ; 2 uses
  br i1 %i.fg, label %bb.j, label %.loopexit.i.i

bb.j:                                             ; preds = %.lr.ph.split.i
  %i.hd = or disjoint i32 %i.fi, %i.hc
  %i.he = zext i32 %i.hd to i64
  %i.hf = mul nuw i64 %i.he, 4294967297           ; 4 uses
  %i.hg = load i32, ptr %i.fk, align 4, !tbaa !3  ; 3 uses
  switch i32 %i.fc, label %.preheader.i.i [
    i32 2, label %bb.k
    i32 4, label %bb.l
  ]

.preheader.i.i:                                   ; preds = %bb.j
  %i.hh = icmp sgt i32 %i.hg, 0
  br i1 %i.hh, label %.lr.ph.preheader.i.i, label %.loopexit.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %i.hi = zext nneg i32 %i.hg to i64
  %i.hj = insertelement <4 x i64> poison, i64 %i.hf, i64 0
  %i.hk = shufflevector <4 x i64> %i.hj, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  %i.hl = add nsw i64 %i.hi, -1
  %i.hm = lshr i64 %i.hl, 3
  %i.hn = add nuw nsw i64 %i.hm, 1                ; 2 uses
  %xtraiter341 = and i64 %i.hn, 7                 ; 3 uses
  %i.ho = icmp ult i32 %i.hg, 57
  br i1 %i.ho, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter345 = and i64 %i.hn, 4611686018427387896
  br label %.lr.ph.i.i

bb.k:                                             ; preds = %bb.j
  store i64 %i.hf, ptr %i.gz, align 2
  br label %.loopexit.i.i

bb.l:                                             ; preds = %bb.j
  store i64 %i.hf, ptr %i.gz, align 2
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store i64 %i.hf, ptr %i.hp, align 2
  br label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ] ; 9 uses
  %niter346 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter346.next.7, %.lr.ph.i.i ]
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.i.i
  store <4 x i64> %i.hk, ptr %i.hq, align 2
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  store <4 x i64> %i.hk, ptr %i.hs, align 2
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 64
  store <4 x i64> %i.hk, ptr %i.hu, align 2
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 96
  store <4 x i64> %i.hk, ptr %i.hw, align 2
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 128
  store <4 x i64> %i.hk, ptr %i.hy, align 2
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.i.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 160
  store <4 x i64> %i.hk, ptr %i.ia, align 2
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 192
  store <4 x i64> %i.hk, ptr %i.ic, align 2
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 224
  store <4 x i64> %i.hk, ptr %i.ie, align 2
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 64 ; 2 uses
  %niter346.next.7 = add nuw nsw i64 %niter346, 8 ; 2 uses
  %niter346.ncmp.7.not = icmp eq i64 %niter346.next.7, %unroll_iter345
  br i1 %niter346.ncmp.7.not, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !51

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i
  %lcmp.mod343.not = icmp eq i64 %xtraiter341, 0
  br i1 %lcmp.mod343.not, label %.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.7, %.loopexit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod344 = icmp ne i64 %xtraiter341, 0
  call void @llvm.assume(i1 %lcmp.mod344)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %epil.iter342 = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter342.next, %.lr.ph.i.i.epil ]
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.i.i.epil
  store <4 x i64> %i.hk, ptr %i.if, align 2
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 8
  %epil.iter342.next = add i64 %epil.iter342, 1   ; 2 uses
  %epil.iter342.cmp.not = icmp eq i64 %epil.iter342.next, %xtraiter341
  br i1 %epil.iter342.cmp.not, label %.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !54

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.l, %bb.k, %.preheader.i.i, %.lr.ph.split.i
  %invariant.op137 = or disjoint i32 %i.hc, 33554432 ; 5 uses
  br label %bb.m

bb.m:                                             ; preds = %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, %.loopexit.i.i
  %indvars.iv55.i.i = phi i64 [ %i.fj, %.loopexit.i.i ], [ %indvars.iv.next56.i.i, %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i ] ; 4 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv55.i.i
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !3  ; 2 uses
  %indvars.iv.next56.i.i = add nuw nsw i64 %indvars.iv55.i.i, 1 ; 3 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next56.i.i
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !3  ; 2 uses
  %i.ik = trunc nsw i64 %indvars.iv55.i.i to i32
  %i.il = sub i32 %i.fl, %i.ik                    ; 6 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv55.i.i
  %i.in = load i32, ptr %i.im, align 4, !tbaa !3
  %i.io = zext i32 %i.in to i64                   ; 3 uses
  %i.ip = getelementptr [4 x i8], ptr %i.gz, i64 %i.io ; 20 uses
  %i.iq = sext i32 %i.ih to i64                   ; 9 uses
  %i.ir = getelementptr i8, ptr %i.em, i64 %i.iq  ; 16 uses
  %i.is = sext i32 %i.ij to i64                   ; 13 uses
  %i.it = getelementptr i8, ptr %i.em, i64 %i.is  ; 7 uses
  %i.iu = sub i32 %spec.store.select, %i.il
  %i.iv = and i32 %i.iu, 31                       ; 2 uses
  %i.iw = shl nuw i32 1, %i.iv
  %.not82116.i.i = icmp eq i32 %i.ih, %i.ij       ; 5 uses
  switch i32 %i.iv, label %.preheader.i60.i [
    i32 0, label %.preheader84.i.i
    i32 1, label %.preheader86.i.i
    i32 2, label %.preheader88.i.i
    i32 3, label %.preheader90.i.i
  ]

.preheader90.i.i:                                 ; preds = %bb.m
  br i1 %.not82116.i.i, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph.i58.i

.lr.ph.i58.i:                                     ; preds = %.preheader90.i.i
  %i.ix = shl i32 %i.il, 16
  %invariant.op.reass = add i32 %i.ix, %invariant.op137 ; 3 uses
  %i.iy = sub nsw i64 %i.is, %i.iq
  %xtraiter347 = and i64 %i.iy, 1
  %lcmp.mod348.not = icmp eq i64 %xtraiter347, 0
  br i1 %lcmp.mod348.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i58.i
  %i.iz = load i8, ptr %i.ir, align 1, !tbaa !43
  %i.ja = zext i8 %i.iz to i32
  %i.jb = shl nuw nsw i32 %i.ja, 8
  %.reass.reass.i.reass.i.reass.prol = or disjoint i32 %i.jb, %invariant.op.reass
  %i.jc = zext i32 %.reass.reass.i.reass.i.reass.prol to i64
  %i.jd = mul nuw i64 %i.jc, 4294967297           ; 4 uses
  store i64 %i.jd, ptr %i.ip, align 2
  %i.je = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store i64 %i.jd, ptr %i.je, align 2
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store i64 %i.jd, ptr %i.jf, align 2
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  store i64 %i.jd, ptr %i.jg, align 2
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ir, i64 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i58.i
  %.394.i.i.unr = phi ptr [ %i.ip, %.lr.ph.i58.i ], [ %i.jh, %.prol.loopexit.unr-lcssa ]
  %.37793.i.i.unr = phi ptr [ %i.ir, %.lr.ph.i58.i ], [ %i.ji, %.prol.loopexit.unr-lcssa ]
  %i.jj = add nsw i64 %i.is, -1
  %i.jk = icmp eq i64 %i.jj, %i.iq
  br i1 %i.jk, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph.i58.i.new

.preheader88.i.i:                                 ; preds = %bb.m
  br i1 %.not82116.i.i, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph98.i.i

.lr.ph98.i.i:                                     ; preds = %.preheader88.i.i
  %i.jl = shl i32 %i.il, 16
  %invariant.op133.reass = add i32 %i.jl, %invariant.op137 ; 5 uses
  %i.jm = sub nsw i64 %i.is, %i.iq
  %xtraiter352 = and i64 %i.jm, 3                 ; 2 uses
  %lcmp.mod353.not = icmp eq i64 %xtraiter352, 0
  br i1 %lcmp.mod353.not, label %.prol.loopexit351, label %.prol.preheader350

.prol.preheader350:                               ; preds = %.lr.ph98.i.i, %.prol.preheader350
  %.297.i.i.prol = phi ptr [ %i.jt, %.prol.preheader350 ], [ %i.ip, %.lr.ph98.i.i ] ; 3 uses
  %.27696.i.i.prol = phi ptr [ %i.ju, %.prol.preheader350 ], [ %i.ir, %.lr.ph98.i.i ] ; 2 uses
  %prol.iter354 = phi i64 [ %prol.iter354.next, %.prol.preheader350 ], [ 0, %.lr.ph98.i.i ]
  %i.jn = load i8, ptr %.27696.i.i.prol, align 1, !tbaa !43
  %i.jo = zext i8 %i.jn to i32
  %i.jp = shl nuw nsw i32 %i.jo, 8
  %.reass100.reass.i.reass.i.reass.prol = or disjoint i32 %i.jp, %invariant.op133.reass
  %i.jq = zext i32 %.reass100.reass.i.reass.i.reass.prol to i64
  %i.jr = mul nuw i64 %i.jq, 4294967297           ; 2 uses
  store i64 %i.jr, ptr %.297.i.i.prol, align 2
  %i.js = getelementptr inbounds nuw i8, ptr %.297.i.i.prol, i64 8
  store i64 %i.jr, ptr %i.js, align 2
  %i.jt = getelementptr inbounds nuw i8, ptr %.297.i.i.prol, i64 16 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.27696.i.i.prol, i64 1 ; 2 uses
  %prol.iter354.next = add i64 %prol.iter354, 1   ; 2 uses
  %prol.iter354.cmp.not = icmp eq i64 %prol.iter354.next, %xtraiter352
  br i1 %prol.iter354.cmp.not, label %.prol.loopexit351, label %.prol.preheader350, !llvm.loop !55

.prol.loopexit351:                                ; preds = %.prol.preheader350, %.lr.ph98.i.i
  %.297.i.i.unr = phi ptr [ %i.ip, %.lr.ph98.i.i ], [ %i.jt, %.prol.preheader350 ]
  %.27696.i.i.unr = phi ptr [ %i.ir, %.lr.ph98.i.i ], [ %i.ju, %.prol.preheader350 ]
  %i.jv = sub nsw i64 %i.iq, %i.is
  %i.jw = icmp ugt i64 %i.jv, -4
  br i1 %i.jw, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph98.i.i.new

.preheader86.i.i:                                 ; preds = %bb.m
  br i1 %.not82116.i.i, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph104.i.i

.lr.ph104.i.i:                                    ; preds = %.preheader86.i.i
  %i.jx = shl i32 %i.il, 16
  %invariant.op134.reass = add i32 %i.jx, %invariant.op137 ; 6 uses
  %i.jy = sub nsw i64 %i.is, %i.iq                ; 3 uses
  %min.iters.check295 = icmp ult i64 %i.jy, 8
  br i1 %min.iters.check295, label %scalar.ph294.preheader, label %vector.memcheck288

vector.memcheck288:                               ; preds = %.lr.ph104.i.i
  %i.jz = shl nsw i64 %i.is, 3
  %i.ka = add nsw i64 %i.gw, %i.io
  %i.kb = shl nsw i64 %i.ka, 2
  %i.kc = add nsw i64 %i.jz, %i.kb
  %i.kd = shl nsw i64 %i.iq, 3
  %i.ke = sub nsw i64 %i.kc, %i.kd
  %scevgep290 = getelementptr i8, ptr %scevgep289, i64 %i.ke
  %bound0291 = icmp ult ptr %i.ip, %i.it
  %bound1292 = icmp ult ptr %i.ir, %scevgep290
  %found.conflict293 = and i1 %bound0291, %bound1292
  br i1 %found.conflict293, label %scalar.ph294.preheader, label %vector.ph296

vector.ph296:                                     ; preds = %vector.memcheck288
  %n.vec298 = and i64 %i.jy, -4                   ; 4 uses
  %i.kf = shl nsw i64 %n.vec298, 3
  %i.kg = getelementptr i8, ptr %i.ip, i64 %i.kf
  %i.kh = getelementptr i8, ptr %i.ir, i64 %n.vec298
  %broadcast.splatinsert299 = insertelement <2 x i32> poison, i32 %invariant.op134.reass, i64 0
  %broadcast.splat300 = shufflevector <2 x i32> %broadcast.splatinsert299, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body301

vector.body301:                                   ; preds = %vector.body301, %vector.ph296
  %index302 = phi i64 [ 0, %vector.ph296 ], [ %index.next310, %vector.body301 ] ; 3 uses
  %i.ki = shl i64 %index302, 3                    ; 2 uses
  %next.gep303 = getelementptr i8, ptr %i.ip, i64 %i.ki
  %i.kj = getelementptr i8, ptr %i.ip, i64 %i.ki
  %next.gep304 = getelementptr i8, ptr %i.kj, i64 16
  %next.gep305 = getelementptr i8, ptr %i.ir, i64 %index302 ; 2 uses
  %i.kk = getelementptr i8, ptr %next.gep305, i64 2
  %wide.load306 = load <2 x i8>, ptr %next.gep305, align 1, !tbaa !43, !alias.scope !56
  %wide.load307 = load <2 x i8>, ptr %i.kk, align 1, !tbaa !43, !alias.scope !56
  %i.kl = zext <2 x i8> %wide.load306 to <2 x i32>
  %i.km = zext <2 x i8> %wide.load307 to <2 x i32>
  %i.kn = shl nuw nsw <2 x i32> %i.kl, splat (i32 8)
  %i.ko = shl nuw nsw <2 x i32> %i.km, splat (i32 8)
  %i.kp = or disjoint <2 x i32> %i.kn, %broadcast.splat300
  %i.kq = or disjoint <2 x i32> %i.ko, %broadcast.splat300
  %interleaved.vec308 = shufflevector <2 x i32> %i.kp, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x i32> %interleaved.vec308, ptr %next.gep303, align 2, !alias.scope !59, !noalias !56
  %interleaved.vec309 = shufflevector <2 x i32> %i.kq, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x i32> %interleaved.vec309, ptr %next.gep304, align 2, !alias.scope !59, !noalias !56
  %index.next310 = add nuw i64 %index302, 4       ; 2 uses
  %i.kr = icmp eq i64 %index.next310, %n.vec298
  br i1 %i.kr, label %middle.block311, label %vector.body301, !llvm.loop !61

middle.block311:                                  ; preds = %vector.body301
  %cmp.n312 = icmp eq i64 %i.jy, %n.vec298
  br i1 %cmp.n312, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %scalar.ph294.preheader

scalar.ph294.preheader:                           ; preds = %vector.memcheck288, %.lr.ph104.i.i, %middle.block311
  %.1103.i.i.ph = phi ptr [ %i.ip, %vector.memcheck288 ], [ %i.ip, %.lr.ph104.i.i ], [ %i.kg, %middle.block311 ] ; 2 uses
  %.175102.i.i.ph = phi ptr [ %i.ir, %vector.memcheck288 ], [ %i.ir, %.lr.ph104.i.i ], [ %i.kh, %middle.block311 ] ; 3 uses
  %i.ks = add i64 %i.a, %i.is
  %.175102.i.i.ph355 = ptrtoint ptr %.175102.i.i.ph to i64 ; 2 uses
  %i.kt = sub i64 %i.ks, %.175102.i.i.ph355
  %i.ku = add i64 %i.eo, %i.is
  %i.kv = sub i64 %i.ku, %.175102.i.i.ph355
  %xtraiter356 = and i64 %i.kt, 3                 ; 2 uses
  %lcmp.mod357.not = icmp eq i64 %xtraiter356, 0
  br i1 %lcmp.mod357.not, label %scalar.ph294.prol.loopexit, label %scalar.ph294.prol

scalar.ph294.prol:                                ; preds = %scalar.ph294.preheader, %scalar.ph294.prol
  %.1103.i.i.prol = phi ptr [ %i.la, %scalar.ph294.prol ], [ %.1103.i.i.ph, %scalar.ph294.preheader ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd21HUF_readDTableX2_wkspEPjPKvmPvmi:bb.a
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !43
  %i.nc = zext i8 %i.nb to i32
  %i.nd = shl nuw nsw i32 %i.nc, 8
  %.reass112.reass.i.reass.i.reass.3 = or disjoint i32 %i.nd, %invariant.op135.reass
  %i.ne = getelementptr inbounds nuw i8, ptr %.0109.i.i, i64 16
  store i32 %.reass112.reass.i.reass.i.reass.3, ptr %i.mz, align 2
  %i.nf = getelementptr inbounds nuw i8, ptr %.074108.i.i, i64 4 ; 2 uses
  %.not81.i.i.3 = icmp eq ptr %i.nf, %i.it
  br i1 %.not81.i.i.3, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %scalar.ph270, !llvm.loop !70

scalar.ph294:                                     ; preds = %scalar.ph294.prol.loopexit, %scalar.ph294
  %.1103.i.i = phi ptr [ %i.oc, %scalar.ph294 ], [ %.1103.i.i.unr, %scalar.ph294.prol.loopexit ] ; 9 uses
  %.175102.i.i = phi ptr [ %i.od, %scalar.ph294 ], [ %.175102.i.i.unr, %scalar.ph294.prol.loopexit ] ; 5 uses
  %i.ng = load i8, ptr %.175102.i.i, align 1, !tbaa !43
  %i.nh = zext i8 %i.ng to i32
  %i.ni = shl nuw nsw i32 %i.nh, 8
  %.reass106.reass.i.reass.i.reass = or disjoint i32 %i.ni, %invariant.op134.reass ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass, ptr %.1103.i.i, align 2
  %i.nj = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 4
  store i32 %.reass106.reass.i.reass.i.reass, ptr %i.nj, align 2
  %i.nk = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 8
  %i.nl = getelementptr inbounds nuw i8, ptr %.175102.i.i, i64 1
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !43
  %i.nn = zext i8 %i.nm to i32
  %i.no = shl nuw nsw i32 %i.nn, 8
  %.reass106.reass.i.reass.i.reass.1 = or disjoint i32 %i.no, %invariant.op134.reass ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass.1, ptr %i.nk, align 2
  %i.np = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 12
  store i32 %.reass106.reass.i.reass.i.reass.1, ptr %i.np, align 2
  %i.nq = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 16
  %i.nr = getelementptr inbounds nuw i8, ptr %.175102.i.i, i64 2
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !43
  %i.nt = zext i8 %i.ns to i32
  %i.nu = shl nuw nsw i32 %i.nt, 8
  %.reass106.reass.i.reass.i.reass.2 = or disjoint i32 %i.nu, %invariant.op134.reass ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass.2, ptr %i.nq, align 2
  %i.nv = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 20
  store i32 %.reass106.reass.i.reass.i.reass.2, ptr %i.nv, align 2
  %i.nw = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 24
  %i.nx = getelementptr inbounds nuw i8, ptr %.175102.i.i, i64 3
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !43
  %i.nz = zext i8 %i.ny to i32
  %i.oa = shl nuw nsw i32 %i.nz, 8
  %.reass106.reass.i.reass.i.reass.3 = or disjoint i32 %i.oa, %invariant.op134.reass ; 2 uses
  store i32 %.reass106.reass.i.reass.i.reass.3, ptr %i.nw, align 2
  %i.ob = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 28
  store i32 %.reass106.reass.i.reass.i.reass.3, ptr %i.ob, align 2
  %i.oc = getelementptr inbounds nuw i8, ptr %.1103.i.i, i64 32
  %i.od = getelementptr inbounds nuw i8, ptr %.175102.i.i, i64 4 ; 2 uses
  %.not80.i.i.3 = icmp eq ptr %i.od, %i.it
  br i1 %.not80.i.i.3, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %scalar.ph294, !llvm.loop !71

.lr.ph98.i.i.new:                                 ; preds = %.prol.loopexit351, %.lr.ph98.i.i.new
  %.297.i.i = phi ptr [ %i.pi, %.lr.ph98.i.i.new ], [ %.297.i.i.unr, %.prol.loopexit351 ] ; 9 uses
  %.27696.i.i = phi ptr [ %i.pj, %.lr.ph98.i.i.new ], [ %.27696.i.i.unr, %.prol.loopexit351 ] ; 5 uses
  %i.oe = load i8, ptr %.27696.i.i, align 1, !tbaa !43
  %i.of = zext i8 %i.oe to i32
  %i.og = shl nuw nsw i32 %i.of, 8
  %.reass100.reass.i.reass.i.reass = or disjoint i32 %i.og, %invariant.op133.reass
  %i.oh = zext i32 %.reass100.reass.i.reass.i.reass to i64
  %i.oi = mul nuw i64 %i.oh, 4294967297           ; 2 uses
  store i64 %i.oi, ptr %.297.i.i, align 2
  %i.oj = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 8
  store i64 %i.oi, ptr %i.oj, align 2
  %i.ok = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 16
  %i.ol = getelementptr inbounds nuw i8, ptr %.27696.i.i, i64 1
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !43
  %i.on = zext i8 %i.om to i32
  %i.oo = shl nuw nsw i32 %i.on, 8
  %.reass100.reass.i.reass.i.reass.1 = or disjoint i32 %i.oo, %invariant.op133.reass
  %i.op = zext i32 %.reass100.reass.i.reass.i.reass.1 to i64
  %i.oq = mul nuw i64 %i.op, 4294967297           ; 2 uses
  store i64 %i.oq, ptr %i.ok, align 2
  %i.or = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 24
  store i64 %i.oq, ptr %i.or, align 2
  %i.os = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 32
  %i.ot = getelementptr inbounds nuw i8, ptr %.27696.i.i, i64 2
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !43
  %i.ov = zext i8 %i.ou to i32
  %i.ow = shl nuw nsw i32 %i.ov, 8
  %.reass100.reass.i.reass.i.reass.2 = or disjoint i32 %i.ow, %invariant.op133.reass
  %i.ox = zext i32 %.reass100.reass.i.reass.i.reass.2 to i64
  %i.oy = mul nuw i64 %i.ox, 4294967297           ; 2 uses
  store i64 %i.oy, ptr %i.os, align 2
  %i.oz = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 40
  store i64 %i.oy, ptr %i.oz, align 2
  %i.pa = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 48
  %i.pb = getelementptr inbounds nuw i8, ptr %.27696.i.i, i64 3
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !43
  %i.pd = zext i8 %i.pc to i32
  %i.pe = shl nuw nsw i32 %i.pd, 8
  %.reass100.reass.i.reass.i.reass.3 = or disjoint i32 %i.pe, %invariant.op133.reass
  %i.pf = zext i32 %.reass100.reass.i.reass.i.reass.3 to i64
  %i.pg = mul nuw i64 %i.pf, 4294967297           ; 2 uses
  store i64 %i.pg, ptr %i.pa, align 2
  %i.ph = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 56
  store i64 %i.pg, ptr %i.ph, align 2
  %i.pi = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 64
  %i.pj = getelementptr inbounds nuw i8, ptr %.27696.i.i, i64 4 ; 2 uses
  %.not79.i.i.3 = icmp eq ptr %i.pj, %i.it
  br i1 %.not79.i.i.3, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph98.i.i.new, !llvm.loop !72

.lr.ph.i58.i.new:                                 ; preds = %.prol.loopexit, %.lr.ph.i58.i.new
  %.394.i.i = phi ptr [ %i.qc, %.lr.ph.i58.i.new ], [ %.394.i.i.unr, %.prol.loopexit ] ; 9 uses
  %.37793.i.i = phi ptr [ %i.qd, %.lr.ph.i58.i.new ], [ %.37793.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.pk = load i8, ptr %.37793.i.i, align 1, !tbaa !43
  %i.pl = zext i8 %i.pk to i32
  %i.pm = shl nuw nsw i32 %i.pl, 8
  %.reass.reass.i.reass.i.reass = or disjoint i32 %i.pm, %invariant.op.reass
  %i.pn = zext i32 %.reass.reass.i.reass.i.reass to i64
  %i.po = mul nuw i64 %i.pn, 4294967297           ; 4 uses
  store i64 %i.po, ptr %.394.i.i, align 2
  %i.pp = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 8
  store i64 %i.po, ptr %i.pp, align 2
  %i.pq = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 16
  store i64 %i.po, ptr %i.pq, align 2
  %i.pr = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 24
  store i64 %i.po, ptr %i.pr, align 2
  %i.ps = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 32
  %i.pt = getelementptr inbounds nuw i8, ptr %.37793.i.i, i64 1
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !43
  %i.pv = zext i8 %i.pu to i32
  %i.pw = shl nuw nsw i32 %i.pv, 8
  %.reass.reass.i.reass.i.reass.1 = or disjoint i32 %i.pw, %invariant.op.reass
  %i.px = zext i32 %.reass.reass.i.reass.i.reass.1 to i64
  %i.py = mul nuw i64 %i.px, 4294967297           ; 4 uses
  store i64 %i.py, ptr %i.ps, align 2
  %i.pz = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 40
  store i64 %i.py, ptr %i.pz, align 2
  %i.qa = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 48
  store i64 %i.py, ptr %i.qa, align 2
  %i.qb = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 56
  store i64 %i.py, ptr %i.qb, align 2
  %i.qc = getelementptr inbounds nuw i8, ptr %.394.i.i, i64 64
  %i.qd = getelementptr inbounds nuw i8, ptr %.37793.i.i, i64 2 ; 2 uses
  %.not.i.i.1 = icmp eq ptr %i.qd, %i.it
  br i1 %.not.i.i.1, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph.i58.i.new, !llvm.loop !73

.lr.ph115.preheader.i.i:                          ; preds = %._crit_edge.i.i, %.lr.ph119.i.i
  %.4118.i.i = phi ptr [ %i.ip, %.lr.ph119.i.i ], [ %i.qj, %._crit_edge.i.i ] ; 3 uses
  %.478117.i.i = phi ptr [ %i.ir, %.lr.ph119.i.i ], [ %i.qv, %._crit_edge.i.i ] ; 2 uses
  %i.qe = load i8, ptr %.478117.i.i, align 1, !tbaa !43
  %i.qf = zext i8 %i.qe to i32
  %i.qg = shl nuw nsw i32 %i.qf, 8
  %.reass.i.reass = or disjoint i32 %i.qg, %invariant.op136.reass
  %i.qh = zext i32 %.reass.i.reass to i64
  %i.qi = mul nuw i64 %i.qh, 4294967297
  %i.qj = getelementptr inbounds nuw i8, ptr %.4118.i.i, i64 %.idx.i.i ; 2 uses
  %i.qk = insertelement <4 x i64> poison, i64 %i.qi, i64 0
  %i.ql = shufflevector <4 x i64> %i.qk, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  br i1 %lcmp.mod364.not, label %.lr.ph115.i.i.prol.loopexit, label %.lr.ph115.i.i.prol

.lr.ph115.i.i.prol:                               ; preds = %.lr.ph115.preheader.i.i, %.lr.ph115.i.i.prol
  %.5114.i.i.prol = phi ptr [ %i.qm, %.lr.ph115.i.i.prol ], [ %.4118.i.i, %.lr.ph115.preheader.i.i ] ; 2 uses
  %prol.iter365 = phi i64 [ %prol.iter365.next, %.lr.ph115.i.i.prol ], [ 0, %.lr.ph115.preheader.i.i ]
  store <4 x i64> %i.ql, ptr %.5114.i.i.prol, align 2
  %i.qm = getelementptr inbounds nuw i8, ptr %.5114.i.i.prol, i64 32 ; 2 uses
  %prol.iter365.next = add i64 %prol.iter365, 1   ; 2 uses
  %prol.iter365.cmp.not = icmp eq i64 %prol.iter365.next, %xtraiter363
  br i1 %prol.iter365.cmp.not, label %.lr.ph115.i.i.prol.loopexit, label %.lr.ph115.i.i.prol, !llvm.loop !74

.lr.ph115.i.i.prol.loopexit:                      ; preds = %.lr.ph115.i.i.prol, %.lr.ph115.preheader.i.i
  %.5114.i.i.unr = phi ptr [ %.4118.i.i, %.lr.ph115.preheader.i.i ], [ %i.qm, %.lr.ph115.i.i.prol ]
  br i1 %i.ml, label %._crit_edge.i.i, label %.lr.ph115.i.i

.lr.ph115.i.i:                                    ; preds = %.lr.ph115.i.i.prol.loopexit, %.lr.ph115.i.i
  %.5114.i.i = phi ptr [ %i.qu, %.lr.ph115.i.i ], [ %.5114.i.i.unr, %.lr.ph115.i.i.prol.loopexit ] ; 9 uses
  store <4 x i64> %i.ql, ptr %.5114.i.i, align 2
  %i.qn = getelementptr inbounds nuw i8, ptr %.5114.i.i, i64 32
  store <4 x i64> %i.ql, ptr %i.qn, align 2
  %i.qo = getelementptr inbounds nuw i8, ptr %.5114.i.i, i64 64
  store <4 x i64> %i.ql, ptr %i.qo, align 2
  %i.qp = getelementptr inbounds nuw i8, ptr %.5114.i.i, i64 96
  store <4 x i64> %i.ql, ptr %i.qp, align 2
  %i.qq = getelementptr inbounds nuw i8, ptr %.5114.i.i, i64 128
  store <4 x i64> %i.ql, ptr %i.qq, align 2
  %i.qr = getelementptr inbounds nuw i8, ptr %.5114.i.i, i64 160
  store <4 x i64> %i.ql, ptr %i.qr, align 2
  %i.qs = getelementptr inbounds nuw i8, ptr %.5114.i.i, i64 192
  store <4 x i64> %i.ql, ptr %i.qs, align 2
  %i.qt = getelementptr inbounds nuw i8, ptr %.5114.i.i, i64 224
  store <4 x i64> %i.ql, ptr %i.qt, align 2
  %i.qu = getelementptr inbounds nuw i8, ptr %.5114.i.i, i64 256 ; 2 uses
  %.not83.i.i.7 = icmp eq ptr %i.qu, %i.qj
  br i1 %.not83.i.i.7, label %._crit_edge.i.i, label %.lr.ph115.i.i, !llvm.loop !75

._crit_edge.i.i:                                  ; preds = %.lr.ph115.i.i, %.lr.ph115.i.i.prol.loopexit
  %i.qv = getelementptr inbounds nuw i8, ptr %.478117.i.i, i64 1 ; 2 uses
  %.not82.i.i = icmp eq ptr %i.qv, %i.it
  br i1 %.not82.i.i, label %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i, label %.lr.ph115.preheader.i.i, !llvm.loop !76

_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i: ; preds = %.prol.loopexit, %.lr.ph.i58.i.new, %.prol.loopexit351, %.lr.ph98.i.i.new, %scalar.ph294.prol.loopexit, %scalar.ph294, %scalar.ph270.prol.loopexit, %scalar.ph270, %._crit_edge.i.i, %middle.block311, %middle.block284, %.preheader.i60.i, %.preheader84.i.i, %.preheader86.i.i, %.preheader88.i.i, %.preheader90.i.i
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next56.i.i, %i.ax
  br i1 %exitcond.not.i.i, label %_ZN11duckdb_zstdL22HUF_fillDTableX2Level2EPNS_10HUF_DEltX2EjjPKjiiPKNS_14sortedSymbol_tES3_jt.exit.loopexit.i, label %bb.m, !llvm.loop !77

_ZN11duckdb_zstdL22HUF_fillDTableX2Level2EPNS_10HUF_DEltX2EjjPKjiiPKNS_14sortedSymbol_tES3_jt.exit.loopexit.i: ; preds = %_ZN11duckdb_zstdL25HUF_fillDTableX2ForWeightEPNS_10HUF_DEltX2EPKNS_14sortedSymbol_tES4_jjti.exit.i
  %i.qw = add i32 %.05367.i, %i.fc
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.qx = trunc nsw i64 %indvars.iv.next.i to i32
  %.not57.i = icmp eq i32 %i.ev, %i.qx
  br i1 %.not57.i, label %.loopexit.i, label %.lr.ph.split.i, !llvm.loop !53

bb.n:                                             ; preds = %.lr.ph71.i
  %i.qy = zext i32 %i.fa to i64                   ; 3 uses
  %i.qz = getelementptr [4 x i8], ptr %i.e, i64 %i.qy ; 20 uses
  %i.ra = sext i32 %i.et to i64                   ; 9 uses
  %i.rb = getelementptr i8, ptr %i.em, i64 %i.ra  ; 16 uses
  %i.rc = sext i32 %i.ev to i64                   ; 13 uses
  %i.rd = getelementptr i8, ptr %i.em, i64 %i.rc  ; 7 uses
  %i.re = and i32 %i.ey, 31                       ; 2 uses
  %i.rf = shl nuw i32 1, %i.re
  %.not82116.i = icmp eq i32 %i.et, %i.ev         ; 5 uses
  switch i32 %i.re, label %.preheader.i [
    i32 0, label %.preheader84.i
    i32 1, label %.preheader86.i
    i32 2, label %.preheader88.i
    i32 3, label %.preheader90.i
  ]

.preheader90.i:                                   ; preds = %bb.n
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph.i98

.lr.ph.i98:                                       ; preds = %.preheader90.i
  %i.rg = shl i32 %i.ex, 16
  %i.rh = add i32 %i.rg, 16777216                 ; 3 uses
  %i.ri = sub nsw i64 %i.rc, %i.ra
  %xtraiter372 = and i64 %i.ri, 1
  %lcmp.mod373.not = icmp eq i64 %xtraiter372, 0
  br i1 %lcmp.mod373.not, label %.lr.ph.split.us.i99.prol.loopexit, label %.lr.ph.split.us.i99.prol

.lr.ph.split.us.i99.prol:                         ; preds = %.lr.ph.i98
  %i.rj = load i8, ptr %i.rb, align 1, !tbaa !43
  %i.rk = zext i8 %i.rj to i32
  %i.rl = or disjoint i32 %i.rh, %i.rk
  %i.rm = zext i32 %i.rl to i64
  %i.rn = mul nuw i64 %i.rm, 4294967297           ; 4 uses
  store i64 %i.rn, ptr %i.qz, align 2
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  store i64 %i.rn, ptr %i.ro, align 2
  %i.rp = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  store i64 %i.rn, ptr %i.rp, align 2
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qz, i64 24
  store i64 %i.rn, ptr %i.rq, align 2
  %i.rr = getelementptr inbounds nuw i8, ptr %i.qz, i64 32
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rb, i64 1
  br label %.lr.ph.split.us.i99.prol.loopexit

.lr.ph.split.us.i99.prol.loopexit:                ; preds = %.lr.ph.split.us.i99.prol, %.lr.ph.i98
  %.394.us.i.unr = phi ptr [ %i.qz, %.lr.ph.i98 ], [ %i.rr, %.lr.ph.split.us.i99.prol ]
  %.37793.us.i.unr = phi ptr [ %i.rb, %.lr.ph.i98 ], [ %i.rs, %.lr.ph.split.us.i99.prol ]
  %i.rt = add nsw i64 %i.rc, -1
  %i.ru = icmp eq i64 %i.rt, %i.ra
  br i1 %i.ru, label %.loopexit.i, label %.lr.ph.split.us.i99

.lr.ph.split.us.i99:                              ; preds = %.lr.ph.split.us.i99.prol.loopexit, %.lr.ph.split.us.i99
  %.394.us.i = phi ptr [ %i.sn, %.lr.ph.split.us.i99 ], [ %.394.us.i.unr, %.lr.ph.split.us.i99.prol.loopexit ] ; 9 uses
  %.37793.us.i = phi ptr [ %i.so, %.lr.ph.split.us.i99 ], [ %.37793.us.i.unr, %.lr.ph.split.us.i99.prol.loopexit ] ; 3 uses
  %i.rv = load i8, ptr %.37793.us.i, align 1, !tbaa !43
  %i.rw = zext i8 %i.rv to i32
  %i.rx = or disjoint i32 %i.rh, %i.rw
  %i.ry = zext i32 %i.rx to i64
  %i.rz = mul nuw i64 %i.ry, 4294967297           ; 4 uses
  store i64 %i.rz, ptr %.394.us.i, align 2
  %i.sa = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 8
  store i64 %i.rz, ptr %i.sa, align 2
  %i.sb = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 16
  store i64 %i.rz, ptr %i.sb, align 2
  %i.sc = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 24
  store i64 %i.rz, ptr %i.sc, align 2
  %i.sd = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 32
  %i.se = getelementptr inbounds nuw i8, ptr %.37793.us.i, i64 1
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !43
  %i.sg = zext i8 %i.sf to i32
  %i.sh = or disjoint i32 %i.rh, %i.sg
  %i.si = zext i32 %i.sh to i64
  %i.sj = mul nuw i64 %i.si, 4294967297           ; 4 uses
  store i64 %i.sj, ptr %i.sd, align 2
  %i.sk = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 40
  store i64 %i.sj, ptr %i.sk, align 2
  %i.sl = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 48
  store i64 %i.sj, ptr %i.sl, align 2
  %i.sm = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 56
  store i64 %i.sj, ptr %i.sm, align 2
  %i.sn = getelementptr inbounds nuw i8, ptr %.394.us.i, i64 64
  %i.so = getelementptr inbounds nuw i8, ptr %.37793.us.i, i64 2 ; 2 uses
  %.not.us.i.1 = icmp eq ptr %i.so, %i.rd
  br i1 %.not.us.i.1, label %.loopexit.i, label %.lr.ph.split.us.i99, !llvm.loop !73

.preheader88.i:                                   ; preds = %bb.n
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph98.i

.lr.ph98.i:                                       ; preds = %.preheader88.i
  %i.sp = shl i32 %i.ex, 16
  %i.sq = add i32 %i.sp, 16777216                 ; 5 uses
  %i.sr = sub nsw i64 %i.rc, %i.ra
  %xtraiter375 = and i64 %i.sr, 3                 ; 2 uses
  %lcmp.mod376.not = icmp eq i64 %xtraiter375, 0
  br i1 %lcmp.mod376.not, label %.lr.ph98.split.us.i.prol.loopexit, label %.lr.ph98.split.us.i.prol

.lr.ph98.split.us.i.prol:                         ; preds = %.lr.ph98.i, %.lr.ph98.split.us.i.prol
  %.297.us.i.prol = phi ptr [ %i.sy, %.lr.ph98.split.us.i.prol ], [ %i.qz, %.lr.ph98.i ] ; 3 uses
  %.27696.us.i.prol = phi ptr [ %i.sz, %.lr.ph98.split.us.i.prol ], [ %i.rb, %.lr.ph98.i ] ; 2 uses
  %prol.iter377 = phi i64 [ %prol.iter377.next, %.lr.ph98.split.us.i.prol ], [ 0, %.lr.ph98.i ]
  %i.ss = load i8, ptr %.27696.us.i.prol, align 1, !tbaa !43
  %i.st = zext i8 %i.ss to i32
  %i.su = or disjoint i32 %i.sq, %i.st
  %i.sv = zext i32 %i.su to i64
  %i.sw = mul nuw i64 %i.sv, 4294967297           ; 2 uses
  store i64 %i.sw, ptr %.297.us.i.prol, align 2
  %i.sx = getelementptr inbounds nuw i8, ptr %.297.us.i.prol, i64 8
  store i64 %i.sw, ptr %i.sx, align 2
  %i.sy = getelementptr inbounds nuw i8, ptr %.297.us.i.prol, i64 16 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %.27696.us.i.prol, i64 1 ; 2 uses
  %prol.iter377.next = add i64 %prol.iter377, 1   ; 2 uses
  %prol.iter377.cmp.not = icmp eq i64 %prol.iter377.next, %xtraiter375
  br i1 %prol.iter377.cmp.not, label %.lr.ph98.split.us.i.prol.loopexit, label %.lr.ph98.split.us.i.prol, !llvm.loop !78

.lr.ph98.split.us.i.prol.loopexit:                ; preds = %.lr.ph98.split.us.i.prol, %.lr.ph98.i
  %.297.us.i.unr = phi ptr [ %i.qz, %.lr.ph98.i ], [ %i.sy, %.lr.ph98.split.us.i.prol ]
  %.27696.us.i.unr = phi ptr [ %i.rb, %.lr.ph98.i ], [ %i.sz, %.lr.ph98.split.us.i.prol ]
  %i.ta = sub nsw i64 %i.ra, %i.rc
  %i.tb = icmp ugt i64 %i.ta, -4
  br i1 %i.tb, label %.loopexit.i, label %.lr.ph98.split.us.i

.lr.ph98.split.us.i:                              ; preds = %.lr.ph98.split.us.i.prol.loopexit, %.lr.ph98.split.us.i
  %.297.us.i = phi ptr [ %i.ug, %.lr.ph98.split.us.i ], [ %.297.us.i.unr, %.lr.ph98.split.us.i.prol.loopexit ] ; 9 uses
  %.27696.us.i = phi ptr [ %i.uh, %.lr.ph98.split.us.i ], [ %.27696.us.i.unr, %.lr.ph98.split.us.i.prol.loopexit ] ; 5 uses
  %i.tc = load i8, ptr %.27696.us.i, align 1, !tbaa !43
  %i.td = zext i8 %i.tc to i32
  %i.te = or disjoint i32 %i.sq, %i.td
  %i.tf = zext i32 %i.te to i64
  %i.tg = mul nuw i64 %i.tf, 4294967297           ; 2 uses
  store i64 %i.tg, ptr %.297.us.i, align 2
  %i.th = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 8
  store i64 %i.tg, ptr %i.th, align 2
  %i.ti = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 16
  %i.tj = getelementptr inbounds nuw i8, ptr %.27696.us.i, i64 1
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !43
  %i.tl = zext i8 %i.tk to i32
  %i.tm = or disjoint i32 %i.sq, %i.tl
  %i.tn = zext i32 %i.tm to i64
  %i.to = mul nuw i64 %i.tn, 4294967297           ; 2 uses
  store i64 %i.to, ptr %i.ti, align 2
  %i.tp = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 24
  store i64 %i.to, ptr %i.tp, align 2
  %i.tq = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 32
  %i.tr = getelementptr inbounds nuw i8, ptr %.27696.us.i, i64 2
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !43
  %i.tt = zext i8 %i.ts to i32
  %i.tu = or disjoint i32 %i.sq, %i.tt
  %i.tv = zext i32 %i.tu to i64
  %i.tw = mul nuw i64 %i.tv, 4294967297           ; 2 uses
  store i64 %i.tw, ptr %i.tq, align 2
  %i.tx = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 40
  store i64 %i.tw, ptr %i.tx, align 2
  %i.ty = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 48
  %i.tz = getelementptr inbounds nuw i8, ptr %.27696.us.i, i64 3
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !43
  %i.ub = zext i8 %i.ua to i32
  %i.uc = or disjoint i32 %i.sq, %i.ub
  %i.ud = zext i32 %i.uc to i64
  %i.ue = mul nuw i64 %i.ud, 4294967297           ; 2 uses
  store i64 %i.ue, ptr %i.ty, align 2
  %i.uf = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 56
  store i64 %i.ue, ptr %i.uf, align 2
  %i.ug = getelementptr inbounds nuw i8, ptr %.297.us.i, i64 64
  %i.uh = getelementptr inbounds nuw i8, ptr %.27696.us.i, i64 4 ; 2 uses
  %.not79.us.i.3 = icmp eq ptr %i.uh, %i.rd
  br i1 %.not79.us.i.3, label %.loopexit.i, label %.lr.ph98.split.us.i, !llvm.loop !72

.preheader86.i:                                   ; preds = %bb.n
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph104.i

.lr.ph104.i:                                      ; preds = %.preheader86.i
  %i.ui = shl i32 %i.ex, 16
  %i.uj = add i32 %i.ui, 16777216                 ; 6 uses
  %i.uk = sub nsw i64 %i.rc, %i.ra                ; 3 uses
  %min.iters.check245 = icmp ult i64 %i.uk, 10
  br i1 %min.iters.check245, label %.lr.ph104.split.us.i.preheader, label %vector.memcheck238

vector.memcheck238:                               ; preds = %.lr.ph104.i
  %i.ul = shl nsw i64 %i.rc, 3
  %i.um = shl nuw nsw i64 %i.qy, 2
  %i.un = add nsw i64 %i.ul, %i.um
  %i.uo = shl nsw i64 %i.ra, 3
  %i.up = sub nsw i64 %i.un, %i.uo
  %scevgep240 = getelementptr i8, ptr %scevgep239, i64 %i.up
  %bound0241 = icmp ult ptr %i.qz, %i.rd
  %bound1242 = icmp ult ptr %i.rb, %scevgep240
  %found.conflict243 = and i1 %bound0241, %bound1242
  br i1 %found.conflict243, label %.lr.ph104.split.us.i.preheader, label %vector.ph246

vector.ph246:                                     ; preds = %vector.memcheck238
  %n.vec248 = and i64 %i.uk, -4                   ; 4 uses
  %i.uq = shl nsw i64 %n.vec248, 3
  %i.ur = getelementptr i8, ptr %i.qz, i64 %i.uq
  %i.us = getelementptr i8, ptr %i.rb, i64 %n.vec248
  %broadcast.splatinsert249 = insertelement <2 x i32> poison, i32 %i.uj, i64 0
  %broadcast.splat250 = shufflevector <2 x i32> %broadcast.splatinsert249, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body251

end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstd21HUF_readDTableX2_wkspEPjPKvmPvmi:bb.a
  %i.wm = sub nsw i64 %i.rc, %i.ra                ; 3 uses
  %min.iters.check222 = icmp ult i64 %i.wm, 8
  br i1 %min.iters.check222, label %.lr.ph110.split.us.i.preheader, label %vector.memcheck219

vector.memcheck219:                               ; preds = %.lr.ph110.i
  %i.wn = add nsw i64 %i.rc, %i.qy
  %i.wo = sub nsw i64 %i.wn, %i.ra
  %i.wp = shl nsw i64 %i.wo, 2
  %scevgep220 = getelementptr i8, ptr %scevgep, i64 %i.wp
  %bound0 = icmp ult ptr %i.qz, %i.rd
  %bound1 = icmp ult ptr %i.rb, %scevgep220
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph110.split.us.i.preheader, label %vector.ph223

vector.ph223:                                     ; preds = %vector.memcheck219
  %n.vec225 = and i64 %i.wm, -8                   ; 4 uses
  %i.wq = shl nsw i64 %n.vec225, 2
  %i.wr = getelementptr i8, ptr %i.qz, i64 %i.wq
  %i.ws = getelementptr i8, ptr %i.rb, i64 %n.vec225
  %broadcast.splatinsert226 = insertelement <4 x i32> poison, i32 %i.wl, i64 0
  %broadcast.splat227 = shufflevector <4 x i32> %broadcast.splatinsert226, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body228

vector.body228:                                   ; preds = %vector.body228, %vector.ph223
  %index229 = phi i64 [ 0, %vector.ph223 ], [ %index.next233, %vector.body228 ] ; 3 uses
  %i.wt = shl i64 %index229, 2
  %next.gep = getelementptr i8, ptr %i.qz, i64 %i.wt ; 2 uses
  %next.gep230 = getelementptr i8, ptr %i.rb, i64 %index229 ; 2 uses
  %i.wu = getelementptr i8, ptr %next.gep230, i64 4
  %wide.load231 = load <4 x i8>, ptr %next.gep230, align 1, !tbaa !43, !alias.scope !87
  %wide.load232 = load <4 x i8>, ptr %i.wu, align 1, !tbaa !43, !alias.scope !87
  %i.wv = zext <4 x i8> %wide.load231 to <4 x i32>
  %i.ww = zext <4 x i8> %wide.load232 to <4 x i32>
  %i.wx = or disjoint <4 x i32> %broadcast.splat227, %i.wv
  %i.wy = or disjoint <4 x i32> %broadcast.splat227, %i.ww
  %i.wz = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.wx, ptr %next.gep, align 2, !alias.scope !90, !noalias !87
  store <4 x i32> %i.wy, ptr %i.wz, align 2, !alias.scope !90, !noalias !87
  %index.next233 = add nuw i64 %index229, 8       ; 2 uses
  %i.xa = icmp eq i64 %index.next233, %n.vec225
  br i1 %i.xa, label %middle.block234, label %vector.body228, !llvm.loop !92

middle.block234:                                  ; preds = %vector.body228
  %cmp.n235 = icmp eq i64 %i.wm, %n.vec225
  br i1 %cmp.n235, label %.loopexit.i, label %.lr.ph110.split.us.i.preheader

.lr.ph110.split.us.i.preheader:                   ; preds = %vector.memcheck219, %.lr.ph110.i, %middle.block234
  %.0109.us.i.ph = phi ptr [ %i.qz, %vector.memcheck219 ], [ %i.qz, %.lr.ph110.i ], [ %i.wr, %middle.block234 ] ; 2 uses
  %.074108.us.i.ph = phi ptr [ %i.rb, %vector.memcheck219 ], [ %i.rb, %.lr.ph110.i ], [ %i.ws, %middle.block234 ] ; 3 uses
  %i.xb = add i64 %i.a, %i.rc
  %.074108.us.i.ph382 = ptrtoint ptr %.074108.us.i.ph to i64 ; 2 uses
  %i.xc = sub i64 %i.xb, %.074108.us.i.ph382
  %i.xd = add i64 %i.er, %i.rc
  %i.xe = sub i64 %i.xd, %.074108.us.i.ph382
  %xtraiter383 = and i64 %i.xc, 7                 ; 2 uses
  %lcmp.mod384.not = icmp eq i64 %xtraiter383, 0
  br i1 %lcmp.mod384.not, label %.lr.ph110.split.us.i.prol.loopexit, label %.lr.ph110.split.us.i.prol

.lr.ph110.split.us.i.prol:                        ; preds = %.lr.ph110.split.us.i.preheader, %.lr.ph110.split.us.i.prol
  %.0109.us.i.prol = phi ptr [ %i.xi, %.lr.ph110.split.us.i.prol ], [ %.0109.us.i.ph, %.lr.ph110.split.us.i.preheader ] ; 2 uses
  %.074108.us.i.prol = phi ptr [ %i.xj, %.lr.ph110.split.us.i.prol ], [ %.074108.us.i.ph, %.lr.ph110.split.us.i.preheader ] ; 2 uses
  %prol.iter385 = phi i64 [ %prol.iter385.next, %.lr.ph110.split.us.i.prol ], [ 0, %.lr.ph110.split.us.i.preheader ]
  %i.xf = load i8, ptr %.074108.us.i.prol, align 1, !tbaa !43
  %i.xg = zext i8 %i.xf to i32
  %i.xh = or disjoint i32 %i.wl, %i.xg
  %i.xi = getelementptr inbounds nuw i8, ptr %.0109.us.i.prol, i64 4 ; 2 uses
  store i32 %i.xh, ptr %.0109.us.i.prol, align 2
  %i.xj = getelementptr inbounds nuw i8, ptr %.074108.us.i.prol, i64 1 ; 2 uses
  %prol.iter385.next = add i64 %prol.iter385, 1   ; 2 uses
  %prol.iter385.cmp.not = icmp eq i64 %prol.iter385.next, %xtraiter383
  br i1 %prol.iter385.cmp.not, label %.lr.ph110.split.us.i.prol.loopexit, label %.lr.ph110.split.us.i.prol, !llvm.loop !93

.lr.ph110.split.us.i.prol.loopexit:               ; preds = %.lr.ph110.split.us.i.prol, %.lr.ph110.split.us.i.preheader
  %.0109.us.i.unr = phi ptr [ %.0109.us.i.ph, %.lr.ph110.split.us.i.preheader ], [ %i.xi, %.lr.ph110.split.us.i.prol ]
  %.074108.us.i.unr = phi ptr [ %.074108.us.i.ph, %.lr.ph110.split.us.i.preheader ], [ %i.xj, %.lr.ph110.split.us.i.prol ]
  %i.xk = icmp ult i64 %i.xe, 7
  br i1 %i.xk, label %.loopexit.i, label %.lr.ph110.split.us.i

.lr.ph110.split.us.i:                             ; preds = %.lr.ph110.split.us.i.prol.loopexit, %.lr.ph110.split.us.i
  %.0109.us.i = phi ptr [ %i.yx, %.lr.ph110.split.us.i ], [ %.0109.us.i.unr, %.lr.ph110.split.us.i.prol.loopexit ] ; 9 uses
  %.074108.us.i = phi ptr [ %i.yy, %.lr.ph110.split.us.i ], [ %.074108.us.i.unr, %.lr.ph110.split.us.i.prol.loopexit ] ; 9 uses
  %i.xl = load i8, ptr %.074108.us.i, align 1, !tbaa !43
  %i.xm = zext i8 %i.xl to i32
  %i.xn = or disjoint i32 %i.wl, %i.xm
  %i.xo = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 4
  store i32 %i.xn, ptr %.0109.us.i, align 2
  %i.xp = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 1
  %i.xq = load i8, ptr %i.xp, align 1, !tbaa !43
  %i.xr = zext i8 %i.xq to i32
  %i.xs = or disjoint i32 %i.wl, %i.xr
  %i.xt = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 8
  store i32 %i.xs, ptr %i.xo, align 2
  %i.xu = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 2
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !43
  %i.xw = zext i8 %i.xv to i32
  %i.xx = or disjoint i32 %i.wl, %i.xw
  %i.xy = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 12
  store i32 %i.xx, ptr %i.xt, align 2
  %i.xz = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 3
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !43
  %i.yb = zext i8 %i.ya to i32
  %i.yc = or disjoint i32 %i.wl, %i.yb
  %i.yd = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 16
  store i32 %i.yc, ptr %i.xy, align 2
  %i.ye = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 4
  %i.yf = load i8, ptr %i.ye, align 1, !tbaa !43
  %i.yg = zext i8 %i.yf to i32
  %i.yh = or disjoint i32 %i.wl, %i.yg
  %i.yi = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 20
  store i32 %i.yh, ptr %i.yd, align 2
  %i.yj = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 5
  %i.yk = load i8, ptr %i.yj, align 1, !tbaa !43
  %i.yl = zext i8 %i.yk to i32
  %i.ym = or disjoint i32 %i.wl, %i.yl
  %i.yn = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 24
  store i32 %i.ym, ptr %i.yi, align 2
  %i.yo = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 6
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !43
  %i.yq = zext i8 %i.yp to i32
  %i.yr = or disjoint i32 %i.wl, %i.yq
  %i.ys = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 28
  store i32 %i.yr, ptr %i.yn, align 2
  %i.yt = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 7
  %i.yu = load i8, ptr %i.yt, align 1, !tbaa !43
  %i.yv = zext i8 %i.yu to i32
  %i.yw = or disjoint i32 %i.wl, %i.yv
  %i.yx = getelementptr inbounds nuw i8, ptr %.0109.us.i, i64 32
  store i32 %i.yw, ptr %i.ys, align 2
  %i.yy = getelementptr inbounds nuw i8, ptr %.074108.us.i, i64 8 ; 2 uses
  %.not81.us.i.7 = icmp eq ptr %i.yy, %i.rd
  br i1 %.not81.us.i.7, label %.loopexit.i, label %.lr.ph110.split.us.i, !llvm.loop !94

.preheader.i:                                     ; preds = %bb.n
  br i1 %.not82116.i, label %.loopexit.i, label %.lr.ph119.i

.lr.ph119.i:                                      ; preds = %.preheader.i
  %i.yz = shl i32 %i.ex, 16
  %i.za = add i32 %i.yz, 16777216
  %i.zb = zext i32 %i.rf to i64
  %.idx.i = shl nuw nsw i64 %i.zb, 2              ; 2 uses
  %i.zc = add nsw i64 %.idx.i, -32                ; 2 uses
  %i.zd = lshr i64 %i.zc, 5
  %i.ze = add nuw nsw i64 %i.zd, 1
  %xtraiter386 = and i64 %i.ze, 7                 ; 2 uses
  %lcmp.mod387.not = icmp eq i64 %xtraiter386, 0
  %i.zf = icmp ult i64 %i.zc, 224
  br label %.lr.ph115.preheader.i

.lr.ph115.preheader.i:                            ; preds = %._crit_edge.i, %.lr.ph119.i
  %.4118.i = phi ptr [ %i.qz, %.lr.ph119.i ], [ %i.zl, %._crit_edge.i ] ; 3 uses
  %.478117.i = phi ptr [ %i.rb, %.lr.ph119.i ], [ %i.zx, %._crit_edge.i ] ; 2 uses
  %i.zg = load i8, ptr %.478117.i, align 1, !tbaa !43
  %i.zh = zext i8 %i.zg to i32
  %i.zi = or disjoint i32 %i.za, %i.zh
  %i.zj = zext i32 %i.zi to i64
  %i.zk = mul nuw i64 %i.zj, 4294967297
  %i.zl = getelementptr inbounds nuw i8, ptr %.4118.i, i64 %.idx.i ; 2 uses
  %i.zm = insertelement <4 x i64> poison, i64 %i.zk, i64 0
  %i.zn = shufflevector <4 x i64> %i.zm, <4 x i64> poison, <4 x i32> zeroinitializer ; 9 uses
  br i1 %lcmp.mod387.not, label %.lr.ph115.i.prol.loopexit, label %.lr.ph115.i.prol

.lr.ph115.i.prol:                                 ; preds = %.lr.ph115.preheader.i, %.lr.ph115.i.prol
  %.5114.i.prol = phi ptr [ %i.zo, %.lr.ph115.i.prol ], [ %.4118.i, %.lr.ph115.preheader.i ] ; 2 uses
  %prol.iter388 = phi i64 [ %prol.iter388.next, %.lr.ph115.i.prol ], [ 0, %.lr.ph115.preheader.i ]
  store <4 x i64> %i.zn, ptr %.5114.i.prol, align 2
  %i.zo = getelementptr inbounds nuw i8, ptr %.5114.i.prol, i64 32 ; 2 uses
  %prol.iter388.next = add i64 %prol.iter388, 1   ; 2 uses
  %prol.iter388.cmp.not = icmp eq i64 %prol.iter388.next, %xtraiter386
  br i1 %prol.iter388.cmp.not, label %.lr.ph115.i.prol.loopexit, label %.lr.ph115.i.prol, !llvm.loop !95

.lr.ph115.i.prol.loopexit:                        ; preds = %.lr.ph115.i.prol, %.lr.ph115.preheader.i
  %.5114.i.unr = phi ptr [ %.4118.i, %.lr.ph115.preheader.i ], [ %i.zo, %.lr.ph115.i.prol ]
  br i1 %i.zf, label %._crit_edge.i, label %.lr.ph115.i

.lr.ph115.i:                                      ; preds = %.lr.ph115.i.prol.loopexit, %.lr.ph115.i
  %.5114.i = phi ptr [ %i.zw, %.lr.ph115.i ], [ %.5114.i.unr, %.lr.ph115.i.prol.loopexit ] ; 9 uses
  store <4 x i64> %i.zn, ptr %.5114.i, align 2
  %i.zp = getelementptr inbounds nuw i8, ptr %.5114.i, i64 32
  store <4 x i64> %i.zn, ptr %i.zp, align 2
  %i.zq = getelementptr inbounds nuw i8, ptr %.5114.i, i64 64
  store <4 x i64> %i.zn, ptr %i.zq, align 2
  %i.zr = getelementptr inbounds nuw i8, ptr %.5114.i, i64 96
  store <4 x i64> %i.zn, ptr %i.zr, align 2
  %i.zs = getelementptr inbounds nuw i8, ptr %.5114.i, i64 128
  store <4 x i64> %i.zn, ptr %i.zs, align 2
  %i.zt = getelementptr inbounds nuw i8, ptr %.5114.i, i64 160
  store <4 x i64> %i.zn, ptr %i.zt, align 2
  %i.zu = getelementptr inbounds nuw i8, ptr %.5114.i, i64 192
  store <4 x i64> %i.zn, ptr %i.zu, align 2
  %i.zv = getelementptr inbounds nuw i8, ptr %.5114.i, i64 224
  store <4 x i64> %i.zn, ptr %i.zv, align 2
  %i.zw = getelementptr inbounds nuw i8, ptr %.5114.i, i64 256 ; 2 uses
  %.not83.i.7 = icmp eq ptr %i.zw, %i.zl
  br i1 %.not83.i.7, label %._crit_edge.i, label %.lr.ph115.i, !llvm.loop !75

._crit_edge.i:                                    ; preds = %.lr.ph115.i, %.lr.ph115.i.prol.loopexit
  %i.zx = getelementptr inbounds nuw i8, ptr %.478117.i, i64 1 ; 2 uses
  %.not82.i = icmp eq ptr %i.zx, %i.rd
  br i1 %.not82.i, label %.loopexit.i, label %.lr.ph115.preheader.i, !llvm.loop !76

.loopexit.i:                                      ; preds = %_ZN11duckdb_zstdL22HUF_fillDTableX2Level2EPNS_10HUF_DEltX2EjjPKjiiPKNS_14sortedSymbol_tES3_jt.exit.loopexit.i, %.loopexit.i.us.us.i, %.lr.ph.split.us.i99.prol.loopexit, %.lr.ph.split.us.i99, %.lr.ph98.split.us.i.prol.loopexit, %.lr.ph98.split.us.i, %.lr.ph104.split.us.i.prol.loopexit, %.lr.ph104.split.us.i, %.lr.ph110.split.us.i.prol.loopexit, %.lr.ph110.split.us.i, %._crit_edge.i, %middle.block260, %middle.block234, %.preheader.i, %.preheader84.i, %.preheader86.i, %.preheader88.i, %.preheader90.i, %bb.h
  %exitcond.not.i = icmp eq i64 %indvars.iv.next83.i, %i.ax
  br i1 %exitcond.not.i, label %_ZN11duckdb_zstdL16HUF_fillDTableX2EPNS_10HUF_DEltX2EjPKNS_14sortedSymbol_tEPKjPA13_jjj.exit, label %.lr.ph71.i, !llvm.loop !96

_ZN11duckdb_zstdL16HUF_fillDTableX2EPNS_10HUF_DEltX2EjPKNS_14sortedSymbol_tEPKjPA13_jjj.exit: ; preds = %.loopexit.i, %._crit_edge119, %._crit_edge132
  %i.zy = trunc nuw nsw i32 %spec.store.select to i8
  store i8 %.sroa.0.0.extract.trunc, ptr %0, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.zy, ptr %.sroa.6.0..sroa_idx, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %.sroa.7.0.extract.trunc, ptr %.sroa.7.0..sroa_idx, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %_ZN11duckdb_zstdL16HUF_fillDTableX2EPNS_10HUF_DEltX2EjPKNS_14sortedSymbol_tEPKjPA13_jjj.exit
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
  %.not.i58.i = icmp eq i8 %i.au, 0
  br i1 %.not.i58.i, label %_ZN11duckdb_zstdL46HUF_decompress1X2_usingDTable_internal_defaultEPvmPKvmPKj.exit, label %.thread.i

_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.i: ; preds = %bb.e
  %.add.i = add nsw i64 %3, -8                    ; 4 uses
  %.ptr190.i = getelementptr inbounds i8, ptr %2, i64 %.add.i ; 4 uses
  %.val.i.i = load i64, ptr %.ptr190.i, align 1, !tbaa !32 ; 2 uses
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
  %.val.i = load i32, ptr %4, align 4             ; 2 uses
  %.sroa.3.0.extract.shift.i.i = lshr i32 %.val.i, 16 ; 4 uses
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
  %.idx.i292.i = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i292.i ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %.val293.i = load i32, ptr %4, align 4          ; 2 uses
  %.sroa.3.0.extract.shift.i294.i = lshr i32 %.val293.i, 16 ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bm = icmp sgt i64 %1, 7
  br i1 %i.bm, label %bb.o, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.i

bb.o:                                             ; preds = %.thread.i, %bb.n
  %i.bn = phi i64 [ %i.bl, %.thread.i ], [ %i.bc, %bb.n ] ; 6 uses
  %.sroa.3.0.extract.shift.i303.i = phi i32 [ %.sroa.3.0.extract.shift.i294.i, %.thread.i ], [ %.sroa.3.0.extract.shift.i.i, %bb.n ] ; 7 uses
  %.val302.i = phi i32 [ %.val293.i, %.thread.i ], [ %.val.i, %bb.n ]
  %i.bo = phi ptr [ %i.bk, %.thread.i ], [ %i.bb, %bb.n ] ; 6 uses
  %i.bp = phi ptr [ %i.bj, %.thread.i ], [ %i.ba, %bb.n ] ; 8 uses
  %.sroa.31.12175300.i = phi i32 [ %i.bi, %.thread.i ], [ %i.ay, %bb.n ] ; 2 uses
  %.sroa.0.10176297.i = phi i64 [ %.sroa.0.9.i, %.thread.i ], [ %.val.i.i, %bb.n ] ; 2 uses
  %.sroa.9790.9177.idx296.i = phi i64 [ 0, %.thread.i ], [ %.add.i, %bb.n ] ; 2 uses
  %i.bq = and i32 %.val302.i, 16515072
  %i.br = icmp samesign ult i32 %i.bq, 786432
  %i.bs = sub nsw i32 0, %.sroa.3.0.extract.shift.i303.i
  %i.bt = and i32 %i.bs, 63
  %i.bu = zext nneg i32 %i.bt to i64              ; 9 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 9 uses
  br i1 %i.br, label %.lr.ph240.i, label %.lr.ph.i

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
  %.val58 = load i64, ptr %i.dh, align 1, !tbaa !32
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit: ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i, %bb.k, %bb.i
  %.sroa.12.5.ph = phi i32 [ %.sroa.12.3, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i ], [ %.sroa.12.251, %bb.i ], [ %i.co, %bb.k ]
  %.sroa.0.5.ph = phi i64 [ %.sroa.0.3, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i ], [ %.sroa.0.252, %bb.i ], [ %.sroa.0.3, %bb.k ]
  %.3.i.ph = phi ptr [ %.0.i53, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit43.i ], [ %.0.i53, %bb.i ], [ %i.cp, %bb.k ] ; 2 uses
  %.pre61 = ptrtoint ptr %.3.i.ph to i64
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i: ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit, %bb.n, %bb.m, %bb.o
  %.3.i58.pre-phi = phi i64 [ %.pre61, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit ], [ %i.ae, %bb.n ], [ %i.ae, %bb.m ], [ %i.ae, %bb.o ] ; 2 uses
  %.sroa.12.5 = phi i32 [ %.sroa.12.5.ph, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit ], [ %i.aa, %bb.n ], [ %i.cu, %bb.m ], [ %i.dj, %bb.o ] ; 3 uses
  %.sroa.0.5 = phi i64 [ %.sroa.0.5.ph, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit ], [ %.val.i, %bb.n ], [ %.val.i71, %bb.m ], [ %.val58, %bb.o ] ; 3 uses
  %.3.i = phi ptr [ %.3.i.ph, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit ], [ %i.p, %bb.n ], [ %i.p, %bb.m ], [ %i.p, %bb.o ] ; 5 uses
  %i.dk = icmp ult ptr %.3.i, %.146
  br i1 %i.dk, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i
  %i.dl = sub i64 %i.ad, %.3.i58.pre-phi          ; 2 uses
  %scevgep = getelementptr i8, ptr %.3.i, i64 %i.dl
  %xtraiter = and i64 %i.dl, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.dm = and i32 %.sroa.12.5, 63
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = shl i64 %.sroa.0.5, %i.dn
  %i.dp = lshr i64 %i.do, 53
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !110
  %i.dt = load i8, ptr %i.dq, align 1, !tbaa !112
  %i.du = zext i8 %i.dt to i32
  %i.dv = add i32 %.sroa.12.5, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %.3.i, i64 1
  store i8 %i.ds, ptr %.3.i, align 1, !tbaa !7
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.6.i55.unr = phi ptr [ %.3.i, %.lr.ph.preheader ], [ %i.dw, %.lr.ph.prol ]
  %.sroa.12.654.unr = phi i32 [ %.sroa.12.5, %.lr.ph.preheader ], [ %i.dv, %.lr.ph.prol ]
  %i.dx = add i64 %i.ad, -1
  %i.dy = icmp eq i64 %.3.i58.pre-phi, %i.dx
  br i1 %i.dy, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.6.i55 = phi ptr [ %i.eu, %.lr.ph ], [ %.6.i55.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.sroa.12.654 = phi i32 [ %i.et, %.lr.ph ], [ %.sroa.12.654.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.dz = and i32 %.sroa.12.654, 63
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = shl i64 %.sroa.0.5, %i.ea
  %i.ec = lshr i64 %i.eb, 53
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ec ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !110
  %i.eg = load i8, ptr %i.ed, align 1, !tbaa !112
  %i.eh = zext i8 %i.eg to i32
  %i.ei = add i32 %.sroa.12.654, %i.eh            ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.6.i55, i64 1
  store i8 %i.ef, ptr %.6.i55, align 1, !tbaa !7
  %i.ek = and i32 %i.ei, 63
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = shl i64 %.sroa.0.5, %i.el
  %i.en = lshr i64 %i.em, 53
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.en ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !110
  %i.er = load i8, ptr %i.eo, align 1, !tbaa !112
  %i.es = zext i8 %i.er to i32
  %i.et = add i32 %i.ei, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %.6.i55, i64 2 ; 2 uses
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
