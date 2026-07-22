inline.NumInlined: 158
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 78
begin_hunk_0_@opj_dwt_encode_and_deinterleave_h_one_row:bb.a
  %i.bj = icmp eq i32 %i.bi, 0                    ; 2 uses
  br i1 %i.bj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge133
  %i.bk = shl nuw nsw i32 %.0116.lcssa, 1
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bp = load i32, ptr %i.bm, align 4, !tbaa !3
  %i.bq = sub nsw i32 %i.bo, %i.bp
  %i.br = add nuw nsw i32 %.0116.lcssa, %i.c
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bs
  store i32 %i.bq, ptr %i.bt, align 4, !tbaa !3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge133
  %i.bu = zext nneg i32 %i.c to i64               ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bu ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3
  %i.bx = shl nsw i32 %i.bw, 1
  %i.by = add nsw i32 %i.bx, 2
  %i.bz = ashr i32 %i.by, 2
  %i.ca = load i32, ptr %0, align 4, !tbaa !3
  %i.cb = add nsw i32 %i.bz, %i.ca
  store i32 %i.cb, ptr %0, align 4, !tbaa !3
  %i.cc = icmp sgt i32 %i.d, 1
  br i1 %i.cc, label %.lr.ph137, label %._crit_edge138

.lr.ph137:                                        ; preds = %bb.d
  %i.cd = zext nneg i32 %i.c to i64
  %wide.trip.count157 = zext nneg i32 %i.d to i64
  %invariant.gep168 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cd ; 3 uses
  %i.ce = add nsw i64 %wide.trip.count157, -1     ; 3 uses
  %xtraiter237 = and i64 %i.ce, 1
  %i.cf = icmp eq i32 %i.d, 2
  br i1 %i.cf, label %.epil.preheader, label %.lr.ph137.new

.lr.ph137.new:                                    ; preds = %.lr.ph137
  %unroll_iter = and i64 %i.ce, -2
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph137.new
  %indvars.iv154 = phi i64 [ 1, %.lr.ph137.new ], [ %indvars.iv.next155.1, %bb.e ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph137.new ], [ %niter.next.1, %bb.e ]
  %.idx163 = shl nuw nsw i64 %indvars.iv154, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %.idx163
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.ci = trunc i64 %indvars.iv154 to i32
  %i.cj = add i32 %i.f, %i.ci
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %gep169 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep168, i64 %indvars.iv154
  %i.cn = load i32, ptr %gep169, align 4, !tbaa !3
  %i.co = add i32 %i.cm, 2
  %i.cp = add i32 %i.co, %i.cn
  %i.cq = ashr i32 %i.cp, 2
  %i.cr = add nsw i32 %i.cq, %i.ch
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv154
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !3
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 4 uses
  %.idx163.1 = shl nuw nsw i64 %indvars.iv.next155, 3
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 %.idx163.1
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = trunc i64 %indvars.iv.next155 to i32
  %i.cw = add i32 %i.f, %i.cv
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %gep169.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep168, i64 %indvars.iv.next155
  %i.da = load i32, ptr %gep169.1, align 4, !tbaa !3
  %i.db = add i32 %i.cz, 2
  %i.dc = add i32 %i.db, %i.da
  %i.dd = ashr i32 %i.dc, 2
  %i.de = add nsw i32 %i.dd, %i.cu
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next155
  store i32 %i.de, ptr %i.df, align 4, !tbaa !3
  %indvars.iv.next155.1 = add nuw nsw i64 %indvars.iv154, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge138.loopexit.unr-lcssa, label %bb.e, !llvm.loop !86

._crit_edge138.loopexit.unr-lcssa:                ; preds = %bb.e
  %lcmp.mod238.not = icmp eq i64 %xtraiter237, 0
  br i1 %lcmp.mod238.not, label %._crit_edge138, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge138.loopexit.unr-lcssa, %.lr.ph137
  %indvars.iv154.epil.init = phi i64 [ 1, %.lr.ph137 ], [ %indvars.iv.next155.1, %._crit_edge138.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod239 = trunc i64 %i.ce to i1
  tail call void @llvm.assume(i1 %lcmp.mod239)
  %.idx163.epil = shl nuw nsw i64 %indvars.iv154.epil.init, 3
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 %.idx163.epil
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !3
  %i.di = trunc i64 %indvars.iv154.epil.init to i32
  %i.dj = add i32 %i.f, %i.di
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !3
  %gep169.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep168, i64 %indvars.iv154.epil.init
  %i.dn = load i32, ptr %gep169.epil, align 4, !tbaa !3
  %i.do = add i32 %i.dm, 2
  %i.dp = add i32 %i.do, %i.dn
  %i.dq = ashr i32 %i.dp, 2
  %i.dr = add nsw i32 %i.dq, %i.dh
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv154.epil.init
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !3
  br label %._crit_edge138

._crit_edge138:                                   ; preds = %.epil.preheader, %._crit_edge138.loopexit.unr-lcssa, %bb.d
  %.1117.lcssa = phi i32 [ 1, %bb.d ], [ %i.d, %._crit_edge138.loopexit.unr-lcssa ], [ %i.d, %.epil.preheader ] ; 3 uses
  br i1 %i.bj, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge138
  %i.dt = shl nuw nsw i32 %.1117.lcssa, 1
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !3
  %i.dx = add i32 %i.f, %.1117.lcssa
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.eb = shl nsw i32 %i.ea, 1
  %i.ec = add nsw i32 %i.eb, 2
  %i.ed = ashr i32 %i.ec, 2
  %i.ee = add nsw i32 %i.ed, %i.dw
  %i.ef = zext nneg i32 %.1117.lcssa to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ef
  store i32 %i.ee, ptr %i.eg, align 4, !tbaa !3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge138
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bu
  %i.ei = sext i32 %i.d to i64
  %i.ej = shl nsw i64 %i.ei, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.eh, ptr nonnull align 4 %i.bv, i64 %i.ej, i1 false)
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  %i.ek = icmp eq i32 %2, 1
  %i.el = load i32, ptr %0, align 4, !tbaa !3     ; 2 uses
  br i1 %i.ek, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.em = shl nsw i32 %i.el, 1
  store i32 %i.em, ptr %0, align 4, !tbaa !3
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3
  %i.ep = sub nsw i32 %i.el, %i.eo
  %i.eq = zext nneg i32 %i.c to i64               ; 7 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eq ; 2 uses
  store i32 %i.ep, ptr %i.er, align 4, !tbaa !3
  %i.es = icmp ugt i32 %i.b, 3
  br i1 %i.es, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.j
  %umax = tail call i32 @llvm.umax.i32(i32 %i.c, i32 2) ; 3 uses
  %wide.trip.count = zext nneg i32 %umax to i64   ; 6 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eq ; 4 uses
  %i.et = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %min.iters.check = icmp ult i32 %i.b, 20
  br i1 %min.iters.check, label %.lr.ph.preheader232, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.eu = shl nuw nsw i64 %i.eq, 2
  %i.ev = getelementptr i8, ptr %1, i64 %i.eu
  %scevgep = getelementptr i8, ptr %i.ev, i64 4
  %i.ew = add nuw nsw i64 %wide.trip.count, %i.eq
  %i.ex = shl nuw nsw i64 %i.ew, 2
  %scevgep170 = getelementptr i8, ptr %1, i64 %i.ex
  %scevgep171 = getelementptr i8, ptr %0, i64 4
  %i.ey = shl nuw nsw i64 %wide.trip.count, 3
  %scevgep172 = getelementptr i8, ptr %0, i64 %i.ey
  %bound0 = icmp ult ptr %scevgep, %scevgep172
  %bound1 = icmp ult ptr %scevgep171, %scevgep170
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader232, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %i.et, 7                    ; 2 uses
  %i.ez = icmp eq i64 %n.mod.vf, 0
  %i.fa = select i1 %i.ez, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.et, %i.fa               ; 2 uses
  %i.fb = add nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fc = or disjoint i64 %index, 1               ; 2 uses
  %i.fd = shl i64 %i.fc, 3
  %i.fe = shl i64 %index, 3
  %i.ff = getelementptr i8, ptr %0, i64 %i.fd     ; 2 uses
  %i.fg = getelementptr i8, ptr %0, i64 %i.fe     ; 2 uses
  %i.fh = getelementptr i8, ptr %i.ff, i64 -4
  %i.fi = getelementptr i8, ptr %i.fg, i64 36
  %wide.vec = load <8 x i32>, ptr %i.fh, align 4, !tbaa !3, !alias.scope !87 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec173 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec174 = load <8 x i32>, ptr %i.fi, align 4, !tbaa !3, !alias.scope !87 ; 2 uses
  %strided.vec175 = shufflevector <8 x i32> %wide.vec174, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec176 = shufflevector <8 x i32> %wide.vec174, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fk = getelementptr i8, ptr %i.fg, i64 44
  %wide.vec177 = load <8 x i32>, ptr %i.fj, align 4, !tbaa !3, !alias.scope !87
  %strided.vec178 = shufflevector <8 x i32> %wide.vec177, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec179 = load <8 x i32>, ptr %i.fk, align 4, !tbaa !3, !alias.scope !87
  %i.fl = shufflevector <8 x i32> %wide.vec179, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %4 = add nsw <4 x i32> %strided.vec, %strided.vec178
  %5 = add nsw <4 x i32> %strided.vec175, %i.fl
  %i.fm = ashr <4 x i32> %4, splat (i32 1)
  %i.fn = ashr <4 x i32> %5, splat (i32 1)
  %i.fo = sub nsw <4 x i32> %strided.vec173, %i.fm
  %i.fp = sub nsw <4 x i32> %strided.vec176, %i.fn
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.fc ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store <4 x i32> %i.fo, ptr %i.fq, align 4, !tbaa !3, !alias.scope !90, !noalias !87
  store <4 x i32> %i.fp, ptr %i.fr, align 4, !tbaa !3, !alias.scope !90, !noalias !87
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fs = icmp eq i64 %index.next, %n.vec
  br i1 %i.fs, label %.lr.ph.preheader232, label %vector.body, !llvm.loop !92

.lr.ph.preheader232:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.fb, %vector.body ] ; 6 uses
  %i.ft = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.ft, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader232
  %.idx.prol = shl nsw i64 %indvars.iv.ph, 3
  %i.fu = getelementptr i8, ptr %0, i64 %.idx.prol ; 3 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !3
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !3
  %i.fy = getelementptr i8, ptr %i.fu, i64 -4
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !3
  %i.ga = add nsw i32 %i.fz, %i.fx
  %i.gb = ashr i32 %i.ga, 1
  %i.gc = sub nsw i32 %i.fv, %i.gb
  %gep.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.ph
  store i32 %i.gc, ptr %gep.prol, align 4, !tbaa !3
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader232
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader232 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.gd = add nsw i64 %wide.trip.count, -1
  %i.ge = icmp eq i64 %indvars.iv.ph, %i.gd
  br i1 %i.ge, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.idx = shl i64 %indvars.iv, 3
  %i.gf = getelementptr i8, ptr %0, i64 %.idx     ; 3 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !3
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !3
  %i.gj = getelementptr i8, ptr %i.gf, i64 -4
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !3
  %i.gl = add nsw i32 %i.gk, %i.gi
  %i.gm = ashr i32 %i.gl, 1
  %i.gn = sub nsw i32 %i.gg, %i.gm
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.gn, ptr %gep, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.idx.1 = shl i64 %indvars.iv.next, 3
  %i.go = getelementptr i8, ptr %0, i64 %.idx.1   ; 3 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !3
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !3
  %i.gs = getelementptr i8, ptr %i.go, i64 -4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !3
  %i.gu = add nsw i32 %i.gt, %i.gr
  %i.gv = ashr i32 %i.gu, 1
  %i.gw = sub nsw i32 %i.gp, %i.gv
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  store i32 %i.gw, ptr %gep.1, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !93

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.j
  %.0.lcssa = phi i32 [ 1, %bb.j ], [ %umax, %.lr.ph ], [ %umax, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.gx = and i32 %2, 1
  %.not123 = icmp eq i32 %i.gx, 0                 ; 2 uses
  br i1 %.not123, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.gy = shl nuw nsw i32 %.0.lcssa, 1
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = getelementptr [4 x i8], ptr %0, i64 %i.gz ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !3
  %i.hc = getelementptr i8, ptr %i.ha, i64 -4
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !3
  %i.he = sub nsw i32 %i.hb, %i.hd
  %i.hf = add nuw nsw i32 %.0.lcssa, %i.c
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hg
  store i32 %i.he, ptr %i.hh, align 4, !tbaa !3
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %i.hi = add i32 %i.d, -1                        ; 3 uses
  %i.hj = icmp sgt i32 %i.d, 1
  br i1 %i.hj, label %.lr.ph128.preheader, label %._crit_edge129

.lr.ph128.preheader:                              ; preds = %bb.l
  %wide.trip.count147 = zext i32 %i.hi to i64     ; 7 uses
  %invariant.gep164 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eq ; 5 uses
  %min.iters.check188 = icmp ult i32 %i.d, 10
  br i1 %min.iters.check188, label %.lr.ph128.preheader231, label %vector.memcheck181

vector.memcheck181:                               ; preds = %.lr.ph128.preheader
  %i.hk = shl nuw nsw i64 %wide.trip.count147, 2
  %scevgep182 = getelementptr i8, ptr %0, i64 %i.hk
  %i.hl = add nuw nsw i64 %i.eq, %wide.trip.count147
  %i.hm = shl nuw nsw i64 %i.hl, 2
  %i.hn = getelementptr i8, ptr %1, i64 %i.hm
  %scevgep183 = getelementptr i8, ptr %i.hn, i64 4
  %bound0184 = icmp ult ptr %0, %scevgep183
  %bound1185 = icmp ult ptr %invariant.gep164, %scevgep182
  %found.conflict186 = and i1 %bound0184, %bound1185
  br i1 %found.conflict186, label %.lr.ph128.preheader231, label %vector.ph189

vector.ph189:                                     ; preds = %vector.memcheck181
  %n.mod.vf190 = and i64 %wide.trip.count147, 7   ; 2 uses
  %i.ho = icmp eq i64 %n.mod.vf190, 0
  %i.hp = select i1 %i.ho, i64 8, i64 %n.mod.vf190
  %n.vec191 = sub nsw i64 %wide.trip.count147, %i.hp ; 2 uses
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph189
  %index193 = phi i64 [ 0, %vector.ph189 ], [ %index.next201, %vector.body192 ] ; 5 uses
  %i.hq = shl nuw nsw i64 %index193, 3
  %i.hr = shl i64 %index193, 3
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 %i.hq
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 %i.hr
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 36
  %wide.vec194 = load <8 x i32>, ptr %i.hu, align 4, !tbaa !3, !alias.scope !94
  %strided.vec195 = shufflevector <8 x i32> %wide.vec194, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec196 = load <8 x i32>, ptr %i.hv, align 4, !tbaa !3, !alias.scope !94
  %strided.vec197 = shufflevector <8 x i32> %wide.vec196, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep164, i64 %index193 ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %wide.load = load <4 x i32>, ptr %i.hw, align 4, !tbaa !3, !alias.scope !97
  %wide.load198 = load <4 x i32>, ptr %i.hx, align 4, !tbaa !3, !alias.scope !97
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 20
  %wide.load199 = load <4 x i32>, ptr %i.hy, align 4, !tbaa !3, !alias.scope !97
  %wide.load200 = load <4 x i32>, ptr %i.hz, align 4, !tbaa !3, !alias.scope !97
  %i.ia = add <4 x i32> %wide.load, splat (i32 2)
  %i.ib = add <4 x i32> %wide.load198, splat (i32 2)
  %i.ic = add <4 x i32> %i.ia, %wide.load199
  %i.id = add <4 x i32> %i.ib, %wide.load200
  %i.ie = ashr <4 x i32> %i.ic, splat (i32 2)
  %i.if = ashr <4 x i32> %i.id, splat (i32 2)
  %i.ig = add nsw <4 x i32> %i.ie, %strided.vec195
  %i.ih = add nsw <4 x i32> %i.if, %strided.vec197
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index193 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store <4 x i32> %i.ig, ptr %i.ii, align 4, !tbaa !3, !alias.scope !99, !noalias !97
  store <4 x i32> %i.ih, ptr %i.ij, align 4, !tbaa !3, !alias.scope !99, !noalias !97
  %index.next201 = add nuw i64 %index193, 8       ; 2 uses
  %i.ik = icmp eq i64 %index.next201, %n.vec191
  br i1 %i.ik, label %.lr.ph128.preheader231, label %vector.body192, !llvm.loop !101

.lr.ph128.preheader231:                           ; preds = %vector.body192, %vector.memcheck181, %.lr.ph128.preheader
  %indvars.iv144.ph = phi i64 [ 0, %vector.memcheck181 ], [ 0, %.lr.ph128.preheader ], [ %n.vec191, %vector.body192 ] ; 7 uses
  %i.il = sub nsw i64 %wide.trip.count147, %indvars.iv144.ph
  %xtraiter233 = and i64 %i.il, 1
  %lcmp.mod234.not = icmp eq i64 %xtraiter233, 0
  br i1 %lcmp.mod234.not, label %.lr.ph128.prol.loopexit, label %.lr.ph128.prol

.lr.ph128.prol:                                   ; preds = %.lr.ph128.preheader231
  %.idx160.prol = shl nuw nsw i64 %indvars.iv144.ph, 3
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 %.idx160.prol
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  %i.io = load i32, ptr %i.in, align 4, !tbaa !3
  %gep165.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep164, i64 %indvars.iv144.ph ; 2 uses
  %i.ip = load i32, ptr %gep165.prol, align 4, !tbaa !3
  %i.iq = getelementptr inbounds nuw i8, ptr %gep165.prol, i64 4
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !3
  %i.is = add i32 %i.ip, 2
  %i.it = add i32 %i.is, %i.ir
  %i.iu = ashr i32 %i.it, 2
  %i.iv = add nsw i32 %i.iu, %i.io
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv144.ph
  store i32 %i.iv, ptr %i.iw, align 4, !tbaa !3
  %indvars.iv.next145.prol = add nuw nsw i64 %indvars.iv144.ph, 1
  br label %.lr.ph128.prol.loopexit

.lr.ph128.prol.loopexit:                          ; preds = %.lr.ph128.prol, %.lr.ph128.preheader231
  %indvars.iv144.unr = phi i64 [ %indvars.iv144.ph, %.lr.ph128.preheader231 ], [ %indvars.iv.next145.prol, %.lr.ph128.prol ]
  %i.ix = add nsw i64 %wide.trip.count147, -1
  %i.iy = icmp eq i64 %indvars.iv144.ph, %i.ix
  br i1 %i.iy, label %._crit_edge129, label %.lr.ph128

.lr.ph128:                                        ; preds = %.lr.ph128.prol.loopexit, %.lr.ph128
  %indvars.iv144 = phi i64 [ %indvars.iv.next145.1, %.lr.ph128 ], [ %indvars.iv144.unr, %.lr.ph128.prol.loopexit ] ; 5 uses
  %.idx160 = shl nuw nsw i64 %indvars.iv144, 3
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 %.idx160
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !3
  %gep165 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep164, i64 %indvars.iv144 ; 2 uses
  %i.jc = load i32, ptr %gep165, align 4, !tbaa !3
  %i.jd = getelementptr inbounds nuw i8, ptr %gep165, i64 4
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !3
  %i.jf = add i32 %i.jc, 2
  %i.jg = add i32 %i.jf, %i.je
  %i.jh = ashr i32 %i.jg, 2
end_hunk_0
