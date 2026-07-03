inline.NumInlined: 151
inline.NumDeleted: 43
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2v86bigint12_GLOBAL__N_110ShiftModFnEPmPKmijj:bb.a
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.0110149.i.epil.init = phi i64 [ %.0110146.i, %.lr.ph.i ], [ %.0110.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %.0133147.i.epil.init = phi i64 [ 1, %.lr.ph.i ], [ %i.ef, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod379 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod379)
  %i.cp = trunc nuw i64 %indvars.iv.i.epil.init to i32
  %i.cq = add i32 %i.cm, %i.cp
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8            ; 2 uses
  %i.cu = shl i64 %i.ct, %i.cn
  %i.cv = or i64 %i.cu, %.0110149.i.epil.init     ; 2 uses
  %add.narrowed.i120.i.epil = add i64 %i.cv, %.0133147.i.epil.init ; 2 uses
  %add.narrowed.overflow.i121.i.epil = icmp ult i64 %add.narrowed.i120.i.epil, %i.cv
  %i.cw = zext i1 %add.narrowed.overflow.i121.i.epil to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i.epil.init
  store i64 %add.narrowed.i120.i.epil, ptr %i.cx, align 8
  %.0110.i.epil = lshr i64 %i.ct, %i.cl
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %.._crit_edge_crit_edge.i
  %.pre-phi208.i = phi i64 [ 0, %.._crit_edge_crit_edge.i ], [ %wide.trip.count.i, %._crit_edge.i.loopexit.unr-lcssa ], [ %wide.trip.count.i, %.epil.preheader ]
  %.pre-phi206.i = phi i64 [ %.pre205.i, %.._crit_edge_crit_edge.i ], [ %i.cn, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.cn, %.epil.preheader ] ; 4 uses
  %.0133.lcssa.i = phi i64 [ 1, %.._crit_edge_crit_edge.i ], [ %i.ef, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.cw, %.epil.preheader ] ; 2 uses
  %.0110.lcssa.i = phi i64 [ %.0110146.i, %.._crit_edge_crit_edge.i ], [ %.0110.i.1, %._crit_edge.i.loopexit.unr-lcssa ], [ %.0110.i.epil, %.epil.preheader ]
  %i.cy = zext i32 %3 to i64                      ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8            ; 2 uses
  %i.db = shl i64 %i.da, %.pre-phi206.i
  %i.dc = or i64 %i.db, %.0110.lcssa.i
  %add.narrowed.i118.i = add i64 %i.dc, %.0133.lcssa.i ; 2 uses
  %i.dd = load i64, ptr %1, align 8               ; 2 uses
  %i.de = shl i64 %i.dd, %.pre-phi206.i
  %i.df = zext i64 %add.narrowed.i118.i to i128
  %i.dg = zext i64 %i.de to i128
  %i.dh = sub nsw i128 %i.df, %i.dg               ; 2 uses
  %i.di = lshr i128 %i.dh, 64                     ; 2 uses
  %i.dj = trunc nuw i128 %i.di to i64
  %i.dk = trunc i128 %i.dh to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre-phi208.i
  store i64 %i.dk, ptr %i.dl, align 8
  %i.dm = lshr i64 %i.dd, %i.cl                   ; 2 uses
  %i.dn = add nuw i32 %i.g, 1                     ; 2 uses
  %i.do = icmp ult i32 %i.dn, %3
  br i1 %i.do, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.g ] ; 4 uses
  %.0110149.i = phi i64 [ %.0110146.i, %.lr.ph.i.new ], [ %.0110.i.1, %bb.g ]
  %.0133147.i = phi i64 [ 1, %.lr.ph.i.new ], [ %i.ef, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.g ]
  %i.dp = trunc nuw i64 %indvars.iv.i to i32
  %i.dq = add i32 %i.cm, %i.dp
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8            ; 2 uses
  %i.du = shl i64 %i.dt, %i.cn
  %i.dv = or i64 %i.du, %.0110149.i               ; 2 uses
  %add.narrowed.i120.i = add i64 %i.dv, %.0133147.i ; 2 uses
  %add.narrowed.overflow.i121.i = icmp ult i64 %add.narrowed.i120.i, %i.dv
  %i.dw = zext i1 %add.narrowed.overflow.i121.i to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  store i64 %add.narrowed.i120.i, ptr %i.dx, align 8
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %.0110.i = lshr i64 %i.dt, %i.cl
  %i.dy = trunc nuw i64 %indvars.iv.next.i to i32
  %i.dz = add i32 %i.cm, %i.dy
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8            ; 2 uses
  %i.ed = shl i64 %i.ec, %i.cn
  %i.ee = or i64 %i.ed, %.0110.i                  ; 2 uses
  %add.narrowed.i120.i.1 = add i64 %i.ee, %i.dw   ; 2 uses
  %add.narrowed.overflow.i121.i.1 = icmp ult i64 %add.narrowed.i120.i.1, %i.ee
  %i.ef = zext i1 %add.narrowed.overflow.i121.i.1 to i64 ; 3 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i
  store i64 %add.narrowed.i120.i.1, ptr %i.eg, align 8
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %.0110.i.1 = lshr i64 %i.ec, %i.cl              ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.g, !llvm.loop !35

bb.h:                                             ; preds = %._crit_edge.i
  %add.narrowed.overflow.i119.i = icmp ult i64 %add.narrowed.i118.i, %.0133.lcssa.i
  %i.eh = zext i1 %add.narrowed.overflow.i119.i to i64
  %i.ei = lshr i64 %i.da, %i.cl
  %i.ej = add nuw i64 %i.ei, %i.eh
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.el = load i64, ptr %i.ek, align 8            ; 2 uses
  %i.em = shl i64 %i.el, %.pre-phi206.i
  %i.en = or i64 %i.em, %i.dm
  %i.eo = zext i64 %i.en to i128
  %i.ep = and i128 %i.di, 1
  %i.eq = zext i64 %i.ej to i128
  %i.er = add nuw nsw i128 %i.ep, %i.eo
  %i.es = sub nsw i128 %i.eq, %i.er               ; 2 uses
  %i.et = lshr i128 %i.es, 64
  %i.eu = trunc nuw i128 %i.et to i64
  %i.ev = trunc i128 %i.es to i64
  %i.ew = zext i32 %i.dn to i64
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ew
  store i64 %i.ev, ptr %i.ex, align 8
  %i.ey = lshr i64 %i.el, %i.cl
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i
  %.1136.in.i = phi i64 [ %i.eu, %bb.h ], [ %i.dj, %._crit_edge.i ]
  %.1.i = phi i64 [ %i.ey, %bb.h ], [ %i.dm, %._crit_edge.i ]
  %i.ez = add nuw i32 %i.g, 2                     ; 2 uses
  %.2137151.i = and i64 %.1136.in.i, 1            ; 2 uses
  %i.fa = icmp ult i32 %i.ez, %3
  br i1 %i.fa, label %.lr.ph156.preheader.i, label %.loopexit.i

.lr.ph156.preheader.i:                            ; preds = %bb.i
  %i.fb = zext i32 %i.ez to i64
  br label %.lr.ph156.i

.lr.ph156.i:                                      ; preds = %.lr.ph156.i, %.lr.ph156.preheader.i
  %indvars.iv182.i = phi i64 [ %i.fb, %.lr.ph156.preheader.i ], [ %indvars.iv.next183.i, %.lr.ph156.i ] ; 3 uses
  %.2137154.i = phi i64 [ %.2137151.i, %.lr.ph156.preheader.i ], [ %.2137.i, %.lr.ph156.i ]
  %.2152.i = phi i64 [ %.1.i, %.lr.ph156.preheader.i ], [ %i.fr, %.lr.ph156.i ]
  %i.fc = trunc nuw i64 %indvars.iv182.i to i32
  %i.fd = sub i32 %i.fc, %i.g
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.fe
  %i.fg = load i64, ptr %i.ff, align 8            ; 2 uses
  %i.fh = shl i64 %i.fg, %.pre-phi206.i
  %i.fi = or i64 %i.fh, %.2152.i
  %i.fj = zext i64 %i.fi to i128
  %i.fk = zext nneg i64 %.2137154.i to i128
  %i.fl = add nuw nsw i128 %i.fk, %i.fj
  %i.fm = sub nsw i128 0, %i.fl                   ; 2 uses
  %i.fn = lshr i128 %i.fm, 64
  %i.fo = trunc nuw i128 %i.fn to i64
  %i.fp = trunc i128 %i.fm to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv182.i
  store i64 %i.fp, ptr %i.fq, align 8
  %i.fr = lshr i64 %i.fg, %i.cl
  %indvars.iv.next183.i = add nuw nsw i64 %indvars.iv182.i, 1 ; 2 uses
  %.2137.i = and i64 %i.fo, 1                     ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next183.i to i32
  %exitcond185.not.i = icmp eq i32 %3, %lftr.wideiv.i
  br i1 %exitcond185.not.i, label %.loopexit.i, label %.lr.ph156.i, !llvm.loop !36

.loopexit.i:                                      ; preds = %.lr.ph156.i, %.lr.ph168.i.prol.loopexit, %.lr.ph168.i, %bb.i, %._crit_edge161.i
  %.pre-phi.i = phi i64 [ %i.r, %.lr.ph168.i.prol.loopexit ], [ %i.r, %._crit_edge161.i ], [ %i.cy, %bb.i ], [ %i.r, %.lr.ph168.i ], [ %i.cy, %.lr.ph156.i ] ; 3 uses
  %.3.i = phi i64 [ %.0135.i.1, %.lr.ph168.i ], [ %.0135163.i, %._crit_edge161.i ], [ %.2137151.i, %bb.i ], [ %.0135.i.lcssa.unr, %.lr.ph168.i.prol.loopexit ], [ %.2137.i, %.lr.ph156.i ]
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre-phi.i ; 2 uses
  store i64 0, ptr %i.fs, align 8
  %.not.not.i = icmp eq i64 %.3.i, 0
  br i1 %.not.not.i, label %.preheader143.i, label %_ZN2v86bigint12_GLOBAL__N_116ShiftModFn_LargeEPmPKmjij.exit

.preheader143.i:                                  ; preds = %.loopexit.i
  %.not176.i = icmp eq i32 %3, 0
  br i1 %.not176.i, label %._crit_edge174.i, label %.lr.ph171.i

bb.j:                                             ; preds = %.lr.ph171.i
  %indvars.iv.next197.i = add nuw nsw i64 %indvars.iv196.i, 1 ; 2 uses
  %exitcond200.not.i = icmp eq i64 %indvars.iv.next197.i, %.pre-phi.i
  br i1 %exitcond200.not.i, label %.preheader.i, label %.lr.ph171.i, !llvm.loop !37

.preheader.i:                                     ; preds = %bb.j
  %i.ft = shl nuw nsw i64 %.pre-phi.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %0, i8 0, i64 %i.ft, i1 false)
  br label %._crit_edge174.i

.lr.ph171.i:                                      ; preds = %.preheader143.i, %bb.j
  %indvars.iv196.i = phi i64 [ %indvars.iv.next197.i, %bb.j ], [ 0, %.preheader143.i ] ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv196.i ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8
  %i.fw = zext i64 %i.fv to i128
  %i.fx = add nsw i128 %i.fw, -1                  ; 2 uses
  %i.fy = trunc i128 %i.fx to i64
  store i64 %i.fy, ptr %i.fu, align 8
  %i.fz = and i128 %i.fx, 18446744073709551616
  %i.ga = icmp eq i128 %i.fz, 0
  br i1 %i.ga, label %_ZN2v86bigint12_GLOBAL__N_116ShiftModFn_LargeEPmPKmjij.exit, label %bb.j

._crit_edge174.i:                                 ; preds = %.preheader.i, %.preheader143.i
  store i64 1, ptr %i.fs, align 8
  br label %_ZN2v86bigint12_GLOBAL__N_116ShiftModFn_LargeEPmPKmjij.exit

bb.k:                                             ; preds = %bb.c
  %i.gb = icmp eq i32 %i.d, 0
  %i.gc = sub nuw i32 %3, %.0112                  ; 5 uses
  %.sroa.speculated139 = tail call i32 @llvm.umin.i32(i32 %4, i32 %i.gc) ; 7 uses
  br i1 %i.gb, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.gd = icmp ugt i32 %.sroa.speculated139, 1
  br i1 %i.gd, label %.lr.ph235.preheader, label %.preheader205

.lr.ph235.preheader:                              ; preds = %bb.l
  %i.ge = zext i32 %.sroa.speculated139 to i64    ; 3 uses
  %i.gf = add nsw i64 %i.ge, -1                   ; 2 uses
  %min.iters.check339 = icmp ult i32 %.sroa.speculated139, 25
  br i1 %min.iters.check339, label %.lr.ph235.preheader367, label %vector.scevcheck337

vector.scevcheck337:                              ; preds = %.lr.ph235.preheader
  %i.gg = add nsw i64 %i.ge, -2                   ; 2 uses
  %i.gh = trunc i64 %i.gg to i32
  %i.gi = sub i32 -2, %.0112
  %i.gj = icmp ult i32 %i.gi, %i.gh
  %i.gk = icmp ugt i64 %i.gg, 4294967295
  %i.gl = or i1 %i.gj, %i.gk
  br i1 %i.gl, label %.lr.ph235.preheader367, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck337
  %i.gm = add i64 %i.b, -8
  %i.gn = sub i64 %i.gm, %i.a
  %i.go = add i32 %.0112, 1
  %i.gp = zext i32 %i.go to i64
  %i.gq = shl nuw nsw i64 %i.gp, 3
  %i.gr = add i64 %i.gn, %i.gq
  %diff.check = icmp ult i64 %i.gr, 32
  br i1 %diff.check, label %.lr.ph235.preheader367, label %vector.ph340

vector.ph340:                                     ; preds = %vector.memcheck
  %n.vec342 = and i64 %i.gf, -4                   ; 3 uses
  %i.gs = or disjoint i64 %n.vec342, 1            ; 2 uses
  br label %vector.body343

vector.body343:                                   ; preds = %vector.body343, %vector.ph340
  %index344 = phi i64 [ 0, %vector.ph340 ], [ %index.next346, %vector.body343 ] ; 2 uses
  %i.gt = or disjoint i64 %index344, 1            ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.gt ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %wide.load = load <2 x i64>, ptr %i.gu, align 8
  %wide.load345 = load <2 x i64>, ptr %i.gv, align 8
  %i.gw = trunc nuw i64 %i.gt to i32
  %i.gx = add i32 %.0112, %i.gw
  %i.gy = zext i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.gy ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store <2 x i64> %wide.load, ptr %i.gz, align 8
  store <2 x i64> %wide.load345, ptr %i.ha, align 8
  %index.next346 = add nuw i64 %index344, 4       ; 2 uses
  %i.hb = icmp eq i64 %index.next346, %n.vec342
  br i1 %i.hb, label %middle.block347, label %vector.body343, !llvm.loop !38

middle.block347:                                  ; preds = %vector.body343
  %cmp.n348 = icmp eq i64 %i.gf, %n.vec342
  br i1 %cmp.n348, label %.preheader205.loopexit, label %.lr.ph235.preheader367

.lr.ph235.preheader367:                           ; preds = %vector.memcheck, %vector.scevcheck337, %.lr.ph235.preheader, %middle.block347
  %indvars.iv290.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck337 ], [ 1, %.lr.ph235.preheader ], [ %i.gs, %middle.block347 ]
  br label %.lr.ph235

.preheader205.loopexit:                           ; preds = %.lr.ph235, %middle.block347
  %indvars.iv.next291.lcssa = phi i64 [ %i.gs, %middle.block347 ], [ %indvars.iv.next291, %.lr.ph235 ]
  %i.hc = trunc nuw i64 %indvars.iv.next291.lcssa to i32
  br label %.preheader205

.preheader205:                                    ; preds = %.preheader205.loopexit, %bb.l
  %.0113.lcssa = phi i32 [ 1, %bb.l ], [ %i.hc, %.preheader205.loopexit ] ; 5 uses
  %i.hd = icmp ult i32 %.0113.lcssa, %i.gc
  br i1 %i.hd, label %.lr.ph238.preheader, label %._crit_edge239

.lr.ph238.preheader:                              ; preds = %.preheader205
  %i.he = zext i32 %.0113.lcssa to i64            ; 5 uses
  %i.hf = zext i32 %i.gc to i64                   ; 3 uses
  %i.hg = sub nsw i64 %i.hf, %i.he                ; 3 uses
  %min.iters.check352 = icmp ult i64 %i.hg, 18
  br i1 %min.iters.check352, label %.lr.ph238.preheader365, label %vector.scevcheck350

vector.scevcheck350:                              ; preds = %.lr.ph238.preheader
  %i.hh = xor i64 %i.he, -1
  %i.hi = add nsw i64 %i.hh, %i.hf                ; 2 uses
  %i.hj = add i32 %.0113.lcssa, %.0112
  %i.hk = trunc i64 %i.hi to i32
  %i.hl = xor i32 %i.hj, -1
  %i.hm = icmp ult i32 %i.hl, %i.hk
  %i.hn = icmp ugt i64 %i.hi, 4294967295
  %i.ho = or i1 %i.hm, %i.hn
  br i1 %i.ho, label %.lr.ph238.preheader365, label %vector.ph353

vector.ph353:                                     ; preds = %vector.scevcheck350
  %n.vec355 = and i64 %i.hg, -4                   ; 3 uses
  %i.hp = add nsw i64 %n.vec355, %i.he            ; 2 uses
  %invariant.op423 = add i32 %.0113.lcssa, %.0112
  br label %vector.body356

vector.body356:                                   ; preds = %vector.body356, %vector.ph353
  %index357 = phi i64 [ 0, %vector.ph353 ], [ %index.next358, %vector.body356 ] ; 2 uses
  %i.hq = trunc i64 %index357 to i32
  %.reass424 = add i32 %i.hq, %invariant.op423
  %i.hr = zext i32 %.reass424 to i64
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.hr ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store <2 x i64> zeroinitializer, ptr %i.hs, align 8
  store <2 x i64> zeroinitializer, ptr %i.ht, align 8
  %index.next358 = add nuw i64 %index357, 4       ; 2 uses
  %i.hu = icmp eq i64 %index.next358, %n.vec355
  br i1 %i.hu, label %middle.block359, label %vector.body356, !llvm.loop !41

middle.block359:                                  ; preds = %vector.body356
  %cmp.n360 = icmp eq i64 %i.hg, %n.vec355
  br i1 %cmp.n360, label %._crit_edge239.loopexit, label %.lr.ph238.preheader365

.lr.ph238.preheader365:                           ; preds = %vector.scevcheck350, %.lr.ph238.preheader, %middle.block359
  %indvars.iv293.ph = phi i64 [ %i.he, %vector.scevcheck350 ], [ %i.he, %.lr.ph238.preheader ], [ %i.hp, %middle.block359 ]
  br label %.lr.ph238

.lr.ph235:                                        ; preds = %.lr.ph235.preheader367, %.lr.ph235
  %indvars.iv290 = phi i64 [ %indvars.iv.next291, %.lr.ph235 ], [ %indvars.iv290.ph, %.lr.ph235.preheader367 ] ; 3 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv290
  %i.hw = load i64, ptr %i.hv, align 8
  %i.hx = trunc nuw i64 %indvars.iv290 to i32
  %i.hy = add i32 %.0112, %i.hx
  %i.hz = zext i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.hz
  store i64 %i.hw, ptr %i.ia, align 8
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 3 uses
  %i.ib = icmp samesign ult i64 %indvars.iv.next291, %i.ge
  br i1 %i.ib, label %.lr.ph235, label %.preheader205.loopexit, !llvm.loop !42

.lr.ph238:                                        ; preds = %.lr.ph238.preheader365, %.lr.ph238
  %indvars.iv293 = phi i64 [ %indvars.iv.next294, %.lr.ph238 ], [ %indvars.iv293.ph, %.lr.ph238.preheader365 ] ; 2 uses
  %i.ic = trunc nuw i64 %indvars.iv293 to i32
  %i.id = add i32 %.0112, %i.ic
  %i.ie = zext i32 %i.id to i64
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ie
  store i64 0, ptr %i.if, align 8
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1 ; 3 uses
  %i.ig = icmp samesign ult i64 %indvars.iv.next294, %i.hf
  br i1 %i.ig, label %.lr.ph238, label %._crit_edge239.loopexit, !llvm.loop !43

._crit_edge239.loopexit:                          ; preds = %.lr.ph238, %middle.block359
  %indvars.iv.next294.lcssa = phi i64 [ %i.hp, %middle.block359 ], [ %indvars.iv.next294, %.lr.ph238 ]
  %i.ih = trunc nuw i64 %indvars.iv.next294.lcssa to i32
  br label %._crit_edge239

._crit_edge239:                                   ; preds = %._crit_edge239.loopexit, %.preheader205
  %.1.lcssa = phi i32 [ %.0113.lcssa, %.preheader205 ], [ %i.ih, %._crit_edge239.loopexit ] ; 3 uses
  %.sroa.speculated157 = tail call i32 @llvm.umin.i32(i32 %4, i32 %3) ; 4 uses
  %i.ii = icmp ult i32 %.1.lcssa, %.sroa.speculated157
  br i1 %i.ii, label %.lr.ph244, label %.preheader204

.lr.ph244:                                        ; preds = %._crit_edge239
  %i.ij = sub i32 %.0112, %3                      ; 3 uses
  %i.ik = zext i32 %.1.lcssa to i64               ; 4 uses
  %wide.trip.count299 = zext i32 %.sroa.speculated157 to i64 ; 2 uses
  %i.il = sub nsw i64 %wide.trip.count299, %i.ik  ; 3 uses
  %xtraiter400 = and i64 %i.il, 1
  %i.im = add nsw i64 %wide.trip.count299, -1
  %i.in = icmp eq i64 %i.im, %i.ik
  br i1 %i.in, label %.epil.preheader399, label %.lr.ph244.new

.lr.ph244.new:                                    ; preds = %.lr.ph244
  %unroll_iter404 = and i64 %i.il, -2
  br label %bb.m

.preheader204.loopexit.unr-lcssa:                 ; preds = %bb.m
  %lcmp.mod401.not = icmp eq i64 %xtraiter400, 0
  br i1 %lcmp.mod401.not, label %.preheader204, label %.epil.preheader399

.epil.preheader399:                               ; preds = %.preheader204.loopexit.unr-lcssa, %.lr.ph244
  %indvars.iv296.epil.init = phi i64 [ %i.ik, %.lr.ph244 ], [ %indvars.iv.next297.1, %.preheader204.loopexit.unr-lcssa ] ; 2 uses
  %.0189241.epil.init = phi i64 [ 0, %.lr.ph244 ], [ %i.kj, %.preheader204.loopexit.unr-lcssa ]
  %lcmp.mod403 = trunc i64 %i.il to i1
  tail call void @llvm.assume(i1 %lcmp.mod403)
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv296.epil.init
  %i.ip = load i64, ptr %i.io, align 8
  %i.iq = zext i64 %i.ip to i128
  %i.ir = zext nneg i64 %.0189241.epil.init to i128
  %i.is = add nuw nsw i128 %i.ir, %i.iq
  %i.it = sub nsw i128 0, %i.is                   ; 2 uses
  %i.iu = lshr i128 %i.it, 64
  %i.iv = trunc nuw i128 %i.iu to i64
  %i.iw = and i64 %i.iv, 1
  %i.ix = trunc i128 %i.it to i64
  %i.iy = trunc nuw i64 %indvars.iv296.epil.init to i32
  %i.iz = add i32 %i.ij, %i.iy
  %i.ja = zext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ja
  store i64 %i.ix, ptr %i.jb, align 8
  br label %.preheader204

.preheader204:                                    ; preds = %.epil.preheader399, %.preheader204.loopexit.unr-lcssa, %._crit_edge239
  %.0189.lcssa = phi i64 [ 0, %._crit_edge239 ], [ %i.kj, %.preheader204.loopexit.unr-lcssa ], [ %i.iw, %.epil.preheader399 ] ; 3 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %._crit_edge239 ], [ %.sroa.speculated157, %.preheader204.loopexit.unr-lcssa ], [ %.sroa.speculated157, %.epil.preheader399 ] ; 3 uses
  %i.jc = icmp ult i32 %.2.lcssa, %3
  br i1 %i.jc, label %.lr.ph249, label %.preheader204.._crit_edge250_crit_edge

.preheader204.._crit_edge250_crit_edge:           ; preds = %.preheader204
  %.pre = zext i32 %3 to i64
  br label %._crit_edge250

.lr.ph249:                                        ; preds = %.preheader204
  %i.jd = sub i32 %.0112, %3                      ; 3 uses
  %i.je = zext i32 %.2.lcssa to i64               ; 4 uses
  %wide.trip.count304 = zext i32 %3 to i64        ; 5 uses
  %i.jf = sub nsw i64 %wide.trip.count304, %i.je
  %xtraiter408 = and i64 %i.jf, 1
  %lcmp.mod409.not = icmp eq i64 %xtraiter408, 0
  br i1 %lcmp.mod409.not, label %.prol.loopexit407, label %.prol.loopexit407.unr-lcssa

.prol.loopexit407.unr-lcssa:                      ; preds = %.lr.ph249
  %i.jg = zext nneg i64 %.0189.lcssa to i128
  %i.jh = sub nsw i128 0, %i.jg                   ; 2 uses
  %i.ji = lshr i128 %i.jh, 64
  %i.jj = trunc nuw i128 %i.ji to i64
  %i.jk = and i64 %i.jj, 1                        ; 2 uses
  %i.jl = trunc nsw i128 %i.jh to i64
  %i.jm = add i32 %i.jd, %.2.lcssa
  %i.jn = zext i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.jn
  store i64 %i.jl, ptr %i.jo, align 8
  %indvars.iv.next302.prol = add nuw nsw i64 %i.je, 1
  br label %.prol.loopexit407

.prol.loopexit407:                                ; preds = %.prol.loopexit407.unr-lcssa, %.lr.ph249
  %.lcssa363.unr = phi i64 [ poison, %.lr.ph249 ], [ %i.jk, %.prol.loopexit407.unr-lcssa ]
  %indvars.iv301.unr = phi i64 [ %i.je, %.lr.ph249 ], [ %indvars.iv.next302.prol, %.prol.loopexit407.unr-lcssa ]
  %.1190247.unr = phi i64 [ %.0189.lcssa, %.lr.ph249 ], [ %i.jk, %.prol.loopexit407.unr-lcssa ]
end_hunk_0
