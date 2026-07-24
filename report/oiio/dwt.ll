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
  %strided.vec173 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec174 = load <8 x i32>, ptr %i.fi, align 4, !tbaa !3, !alias.scope !87 ; 2 uses
  %strided.vec176 = shufflevector <8 x i32> %wide.vec174, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fk = getelementptr i8, ptr %i.fg, i64 44
  %wide.vec177 = load <8 x i32>, ptr %i.fj, align 4, !tbaa !3, !alias.scope !87
  %wide.vec179 = load <8 x i32>, ptr %i.fk, align 4, !tbaa !3, !alias.scope !87
  %4 = add nsw <8 x i32> %wide.vec, %wide.vec177
  %strided.vec180 = shufflevector <8 x i32> %4, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %5 = add nsw <8 x i32> %wide.vec174, %wide.vec179
  %6 = shufflevector <8 x i32> %5, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.fl = ashr <4 x i32> %strided.vec180, splat (i32 1)
  %i.fm = ashr <4 x i32> %6, splat (i32 1)
  %i.fn = sub nsw <4 x i32> %strided.vec173, %i.fl
  %i.fo = sub nsw <4 x i32> %strided.vec176, %i.fm
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.fc ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store <4 x i32> %i.fn, ptr %i.fp, align 4, !tbaa !3, !alias.scope !90, !noalias !87
  store <4 x i32> %i.fo, ptr %i.fq, align 4, !tbaa !3, !alias.scope !90, !noalias !87
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fr = icmp eq i64 %index.next, %n.vec
  br i1 %i.fr, label %.lr.ph.preheader232, label %vector.body, !llvm.loop !92

.lr.ph.preheader232:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.fb, %vector.body ] ; 6 uses
  %i.fs = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.fs, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader232
  %.idx.prol = shl nsw i64 %indvars.iv.ph, 3
  %i.ft = getelementptr i8, ptr %0, i64 %.idx.prol ; 3 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !3
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !3
  %i.fx = getelementptr i8, ptr %i.ft, i64 -4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !3
  %i.fz = add nsw i32 %i.fy, %i.fw
  %i.ga = ashr i32 %i.fz, 1
  %i.gb = sub nsw i32 %i.fu, %i.ga
  %gep.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.ph
  store i32 %i.gb, ptr %gep.prol, align 4, !tbaa !3
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader232
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader232 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.gc = add nsw i64 %wide.trip.count, -1
  %i.gd = icmp eq i64 %indvars.iv.ph, %i.gc
  br i1 %i.gd, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.idx = shl i64 %indvars.iv, 3
  %i.ge = getelementptr i8, ptr %0, i64 %.idx     ; 3 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !3
  %i.gi = getelementptr i8, ptr %i.ge, i64 -4
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !3
  %i.gk = add nsw i32 %i.gj, %i.gh
  %i.gl = ashr i32 %i.gk, 1
  %i.gm = sub nsw i32 %i.gf, %i.gl
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.gm, ptr %gep, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.idx.1 = shl i64 %indvars.iv.next, 3
  %i.gn = getelementptr i8, ptr %0, i64 %.idx.1   ; 3 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !3
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !3
  %i.gr = getelementptr i8, ptr %i.gn, i64 -4
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !3
  %i.gt = add nsw i32 %i.gs, %i.gq
  %i.gu = ashr i32 %i.gt, 1
  %i.gv = sub nsw i32 %i.go, %i.gu
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  store i32 %i.gv, ptr %gep.1, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !93

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.j
  %.0.lcssa = phi i32 [ 1, %bb.j ], [ %umax, %.lr.ph ], [ %umax, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.gw = and i32 %2, 1
  %.not123 = icmp eq i32 %i.gw, 0                 ; 2 uses
  br i1 %.not123, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.gx = shl nuw nsw i32 %.0.lcssa, 1
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr [4 x i8], ptr %0, i64 %i.gy ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !3
  %i.hb = getelementptr i8, ptr %i.gz, i64 -4
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !3
  %i.hd = sub nsw i32 %i.ha, %i.hc
  %i.he = add nuw nsw i32 %.0.lcssa, %i.c
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hf
  store i32 %i.hd, ptr %i.hg, align 4, !tbaa !3
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %i.hh = add i32 %i.d, -1                        ; 3 uses
  %i.hi = icmp sgt i32 %i.d, 1
  br i1 %i.hi, label %.lr.ph128.preheader, label %._crit_edge129

.lr.ph128.preheader:                              ; preds = %bb.l
  %wide.trip.count147 = zext i32 %i.hh to i64     ; 7 uses
  %invariant.gep164 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eq ; 5 uses
  %min.iters.check188 = icmp ult i32 %i.d, 10
  br i1 %min.iters.check188, label %.lr.ph128.preheader231, label %vector.memcheck181

vector.memcheck181:                               ; preds = %.lr.ph128.preheader
  %i.hj = shl nuw nsw i64 %wide.trip.count147, 2
  %scevgep182 = getelementptr i8, ptr %0, i64 %i.hj
  %i.hk = add nuw nsw i64 %i.eq, %wide.trip.count147
  %i.hl = shl nuw nsw i64 %i.hk, 2
  %i.hm = getelementptr i8, ptr %1, i64 %i.hl
  %scevgep183 = getelementptr i8, ptr %i.hm, i64 4
  %bound0184 = icmp ult ptr %0, %scevgep183
  %bound1185 = icmp ult ptr %invariant.gep164, %scevgep182
  %found.conflict186 = and i1 %bound0184, %bound1185
  br i1 %found.conflict186, label %.lr.ph128.preheader231, label %vector.ph189

vector.ph189:                                     ; preds = %vector.memcheck181
  %n.mod.vf190 = and i64 %wide.trip.count147, 7   ; 2 uses
  %i.hn = icmp eq i64 %n.mod.vf190, 0
  %i.ho = select i1 %i.hn, i64 8, i64 %n.mod.vf190
  %n.vec191 = sub nsw i64 %wide.trip.count147, %i.ho ; 2 uses
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph189
  %index193 = phi i64 [ 0, %vector.ph189 ], [ %index.next201, %vector.body192 ] ; 5 uses
  %i.hp = shl nuw nsw i64 %index193, 3
  %i.hq = shl i64 %index193, 3
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 %i.hp
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 %i.hq
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 36
  %wide.vec194 = load <8 x i32>, ptr %i.ht, align 4, !tbaa !3, !alias.scope !94
  %strided.vec195 = shufflevector <8 x i32> %wide.vec194, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec196 = load <8 x i32>, ptr %i.hu, align 4, !tbaa !3, !alias.scope !94
  %strided.vec197 = shufflevector <8 x i32> %wide.vec196, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep164, i64 %index193 ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %wide.load = load <4 x i32>, ptr %i.hv, align 4, !tbaa !3, !alias.scope !97
  %wide.load198 = load <4 x i32>, ptr %i.hw, align 4, !tbaa !3, !alias.scope !97
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 20
  %wide.load199 = load <4 x i32>, ptr %i.hx, align 4, !tbaa !3, !alias.scope !97
  %wide.load200 = load <4 x i32>, ptr %i.hy, align 4, !tbaa !3, !alias.scope !97
  %i.hz = add <4 x i32> %wide.load, splat (i32 2)
  %i.ia = add <4 x i32> %wide.load198, splat (i32 2)
  %i.ib = add <4 x i32> %i.hz, %wide.load199
  %i.ic = add <4 x i32> %i.ia, %wide.load200
  %i.id = ashr <4 x i32> %i.ib, splat (i32 2)
  %i.ie = ashr <4 x i32> %i.ic, splat (i32 2)
  %i.if = add nsw <4 x i32> %i.id, %strided.vec195
  %i.ig = add nsw <4 x i32> %i.ie, %strided.vec197
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index193 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  store <4 x i32> %i.if, ptr %i.ih, align 4, !tbaa !3, !alias.scope !99, !noalias !97
  store <4 x i32> %i.ig, ptr %i.ii, align 4, !tbaa !3, !alias.scope !99, !noalias !97
  %index.next201 = add nuw i64 %index193, 8       ; 2 uses
  %i.ij = icmp eq i64 %index.next201, %n.vec191
  br i1 %i.ij, label %.lr.ph128.preheader231, label %vector.body192, !llvm.loop !101

.lr.ph128.preheader231:                           ; preds = %vector.body192, %vector.memcheck181, %.lr.ph128.preheader
  %indvars.iv144.ph = phi i64 [ 0, %vector.memcheck181 ], [ 0, %.lr.ph128.preheader ], [ %n.vec191, %vector.body192 ] ; 7 uses
  %i.ik = sub nsw i64 %wide.trip.count147, %indvars.iv144.ph
  %xtraiter233 = and i64 %i.ik, 1
  %lcmp.mod234.not = icmp eq i64 %xtraiter233, 0
  br i1 %lcmp.mod234.not, label %.lr.ph128.prol.loopexit, label %.lr.ph128.prol

.lr.ph128.prol:                                   ; preds = %.lr.ph128.preheader231
  %.idx160.prol = shl nuw nsw i64 %indvars.iv144.ph, 3
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 %.idx160.prol
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.in = load i32, ptr %i.im, align 4, !tbaa !3
  %gep165.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep164, i64 %indvars.iv144.ph ; 2 uses
  %i.io = load i32, ptr %gep165.prol, align 4, !tbaa !3
  %i.ip = getelementptr inbounds nuw i8, ptr %gep165.prol, i64 4
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !3
  %i.ir = add i32 %i.io, 2
  %i.is = add i32 %i.ir, %i.iq
  %i.it = ashr i32 %i.is, 2
  %i.iu = add nsw i32 %i.it, %i.in
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv144.ph
  store i32 %i.iu, ptr %i.iv, align 4, !tbaa !3
  %indvars.iv.next145.prol = add nuw nsw i64 %indvars.iv144.ph, 1
  br label %.lr.ph128.prol.loopexit

.lr.ph128.prol.loopexit:                          ; preds = %.lr.ph128.prol, %.lr.ph128.preheader231
  %indvars.iv144.unr = phi i64 [ %indvars.iv144.ph, %.lr.ph128.preheader231 ], [ %indvars.iv.next145.prol, %.lr.ph128.prol ]
  %i.iw = add nsw i64 %wide.trip.count147, -1
  %i.ix = icmp eq i64 %indvars.iv144.ph, %i.iw
  br i1 %i.ix, label %._crit_edge129, label %.lr.ph128

.lr.ph128:                                        ; preds = %.lr.ph128.prol.loopexit, %.lr.ph128
  %indvars.iv144 = phi i64 [ %indvars.iv.next145.1, %.lr.ph128 ], [ %indvars.iv144.unr, %.lr.ph128.prol.loopexit ] ; 5 uses
  %.idx160 = shl nuw nsw i64 %indvars.iv144, 3
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 %.idx160
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !3
  %gep165 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep164, i64 %indvars.iv144 ; 2 uses
  %i.jb = load i32, ptr %gep165, align 4, !tbaa !3
  %i.jc = getelementptr inbounds nuw i8, ptr %gep165, i64 4
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !3
  %i.je = add i32 %i.jb, 2
  %i.jf = add i32 %i.je, %i.jd
  %i.jg = ashr i32 %i.jf, 2
end_hunk_0
