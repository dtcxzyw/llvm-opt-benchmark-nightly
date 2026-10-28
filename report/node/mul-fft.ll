Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/mul-fft?download=true
inline.NumInlined: 151
inline.NumDeleted: 43
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2v86bigint12_GLOBAL__N_110ShiftModFnEPmPKmijj:bb.a
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
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.g, !llvm.loop !38

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
  br i1 %exitcond185.not.i, label %.loopexit.i, label %.lr.ph156.i, !llvm.loop !39

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
  br i1 %exitcond200.not.i, label %.preheader.i, label %.lr.ph171.i, !llvm.loop !40

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
  %min.iters.check339 = icmp ult i32 %.sroa.speculated139, 27
  br i1 %min.iters.check339, label %.lr.ph235.preheader365, label %vector.scevcheck337

vector.scevcheck337:                              ; preds = %.lr.ph235.preheader
  %i.gg = add nsw i64 %i.ge, -2                   ; 2 uses
  %i.gh = trunc i64 %i.gg to i32
  %i.gi = sub i32 -2, %.0112
  %i.gj = icmp ult i32 %i.gi, %i.gh
  %i.gk = icmp ugt i64 %i.gg, 4294967295
  %i.gl = or i1 %i.gj, %i.gk
  br i1 %i.gl, label %.lr.ph235.preheader365, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck337
  %5 = add i64 %i.b, -8
  %6 = sub i64 %5, %i.a
  %i.gm = add i32 %.0112, 1
  %i.gn = zext i32 %i.gm to i64
  %i.go = shl nuw nsw i64 %i.gn, 3
  %i.gp = add i64 %6, %i.go
  %i.gq = add i64 %i.gp, -1
  %diff.check = icmp ult i64 %i.gq, 31
  br i1 %diff.check, label %.lr.ph235.preheader365, label %vector.ph340

vector.ph340:                                     ; preds = %vector.memcheck
  %n.vec341 = and i64 %i.gf, -4                   ; 3 uses
  %i.gr = or disjoint i64 %n.vec341, 1            ; 2 uses
  br label %vector.body342

vector.body342:                                   ; preds = %vector.body342, %vector.ph340
  %index343 = phi i64 [ 0, %vector.ph340 ], [ %index.next345, %vector.body342 ] ; 2 uses
  %i.gs = or disjoint i64 %index343, 1            ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.gs ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %wide.load = load <2 x i64>, ptr %i.gt, align 8
  %wide.load344 = load <2 x i64>, ptr %i.gu, align 8
  %i.gv = trunc nuw i64 %i.gs to i32
  %i.gw = add i32 %.0112, %i.gv
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.gx ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  store <2 x i64> %wide.load, ptr %i.gy, align 8
  store <2 x i64> %wide.load344, ptr %i.gz, align 8
  %index.next345 = add nuw i64 %index343, 4       ; 2 uses
  %i.ha = icmp eq i64 %index.next345, %n.vec341
  br i1 %i.ha, label %middle.block346, label %vector.body342, !llvm.loop !41

middle.block346:                                  ; preds = %vector.body342
  %cmp.n347 = icmp eq i64 %i.gf, %n.vec341
  br i1 %cmp.n347, label %.preheader205.loopexit, label %.lr.ph235.preheader365

.lr.ph235.preheader365:                           ; preds = %vector.memcheck, %vector.scevcheck337, %.lr.ph235.preheader, %middle.block346
  %indvars.iv290.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck337 ], [ 1, %.lr.ph235.preheader ], [ %i.gr, %middle.block346 ]
  br label %.lr.ph235

.preheader205.loopexit:                           ; preds = %.lr.ph235, %middle.block346
  %indvars.iv.next291.lcssa = phi i64 [ %i.gr, %middle.block346 ], [ %indvars.iv.next291, %.lr.ph235 ]
  %i.hb = trunc nuw i64 %indvars.iv.next291.lcssa to i32
  br label %.preheader205

.preheader205:                                    ; preds = %.preheader205.loopexit, %bb.l
  %.0118.lcssa = phi i32 [ 1, %bb.l ], [ %i.hb, %.preheader205.loopexit ] ; 5 uses
  %i.hc = icmp ult i32 %.0118.lcssa, %i.gc
  br i1 %i.hc, label %.lr.ph238.preheader, label %._crit_edge239

.lr.ph238.preheader:                              ; preds = %.preheader205
  %i.hd = zext i32 %.0118.lcssa to i64            ; 5 uses
  %i.he = zext i32 %i.gc to i64                   ; 3 uses
  %i.hf = sub nsw i64 %i.he, %i.hd                ; 3 uses
  %min.iters.check351 = icmp ult i64 %i.hf, 18
  br i1 %min.iters.check351, label %.lr.ph238.preheader363, label %vector.scevcheck349

vector.scevcheck349:                              ; preds = %.lr.ph238.preheader
  %i.hg = xor i64 %i.hd, -1
  %i.hh = add nsw i64 %i.hg, %i.he                ; 2 uses
  %i.hi = add i32 %.0118.lcssa, %.0112
  %i.hj = trunc i64 %i.hh to i32
  %i.hk = xor i32 %i.hi, -1
  %i.hl = icmp ult i32 %i.hk, %i.hj
  %i.hm = icmp ugt i64 %i.hh, 4294967295
  %i.hn = or i1 %i.hl, %i.hm
  br i1 %i.hn, label %.lr.ph238.preheader363, label %vector.ph352

vector.ph352:                                     ; preds = %vector.scevcheck349
  %n.vec353 = and i64 %i.hf, -4                   ; 3 uses
  %i.ho = add nsw i64 %n.vec353, %i.hd            ; 2 uses
  %invariant.op421 = add i32 %.0118.lcssa, %.0112
  br label %vector.body354

vector.body354:                                   ; preds = %vector.body354, %vector.ph352
  %index355 = phi i64 [ 0, %vector.ph352 ], [ %index.next356, %vector.body354 ] ; 2 uses
  %i.hp = trunc i64 %index355 to i32
  %.reass422 = add i32 %i.hp, %invariant.op421
  %i.hq = zext i32 %.reass422 to i64
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.hq ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  store <2 x i64> zeroinitializer, ptr %i.hr, align 8
  store <2 x i64> zeroinitializer, ptr %i.hs, align 8
  %index.next356 = add nuw i64 %index355, 4       ; 2 uses
  %i.ht = icmp eq i64 %index.next356, %n.vec353
  br i1 %i.ht, label %middle.block357, label %vector.body354, !llvm.loop !42

middle.block357:                                  ; preds = %vector.body354
  %cmp.n358 = icmp eq i64 %i.hf, %n.vec353
  br i1 %cmp.n358, label %._crit_edge239.loopexit, label %.lr.ph238.preheader363

.lr.ph238.preheader363:                           ; preds = %vector.scevcheck349, %.lr.ph238.preheader, %middle.block357
  %indvars.iv293.ph = phi i64 [ %i.hd, %vector.scevcheck349 ], [ %i.hd, %.lr.ph238.preheader ], [ %i.ho, %middle.block357 ]
  br label %.lr.ph238

.lr.ph235:                                        ; preds = %.lr.ph235.preheader365, %.lr.ph235
  %indvars.iv290 = phi i64 [ %indvars.iv.next291, %.lr.ph235 ], [ %indvars.iv290.ph, %.lr.ph235.preheader365 ] ; 3 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv290
  %i.hv = load i64, ptr %i.hu, align 8
  %i.hw = trunc nuw i64 %indvars.iv290 to i32
  %i.hx = add i32 %.0112, %i.hw
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.hy
  store i64 %i.hv, ptr %i.hz, align 8
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 3 uses
  %i.ia = icmp samesign ult i64 %indvars.iv.next291, %i.ge
  br i1 %i.ia, label %.lr.ph235, label %.preheader205.loopexit, !llvm.loop !43

.lr.ph238:                                        ; preds = %.lr.ph238.preheader363, %.lr.ph238
  %indvars.iv293 = phi i64 [ %indvars.iv.next294, %.lr.ph238 ], [ %indvars.iv293.ph, %.lr.ph238.preheader363 ] ; 2 uses
  %i.ib = trunc nuw i64 %indvars.iv293 to i32
  %i.ic = add i32 %.0112, %i.ib
  %i.id = zext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.id
  store i64 0, ptr %i.ie, align 8
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1 ; 3 uses
  %i.if = icmp samesign ult i64 %indvars.iv.next294, %i.he
  br i1 %i.if, label %.lr.ph238, label %._crit_edge239.loopexit, !llvm.loop !44

._crit_edge239.loopexit:                          ; preds = %.lr.ph238, %middle.block357
  %indvars.iv.next294.lcssa = phi i64 [ %i.ho, %middle.block357 ], [ %indvars.iv.next294, %.lr.ph238 ]
  %i.ig = trunc nuw i64 %indvars.iv.next294.lcssa to i32
  br label %._crit_edge239

._crit_edge239:                                   ; preds = %._crit_edge239.loopexit, %.preheader205
  %.1119.lcssa = phi i32 [ %.0118.lcssa, %.preheader205 ], [ %i.ig, %._crit_edge239.loopexit ] ; 3 uses
  %.sroa.speculated157 = tail call i32 @llvm.umin.i32(i32 %4, i32 %3) ; 4 uses
  %i.ih = icmp ult i32 %.1119.lcssa, %.sroa.speculated157
  br i1 %i.ih, label %.lr.ph244, label %.preheader204

.lr.ph244:                                        ; preds = %._crit_edge239
  %i.ii = sub i32 %.0112, %3                      ; 3 uses
  %i.ij = zext i32 %.1119.lcssa to i64            ; 4 uses
  %wide.trip.count299 = zext i32 %.sroa.speculated157 to i64 ; 2 uses
  %i.ik = sub nsw i64 %wide.trip.count299, %i.ij  ; 3 uses
  %xtraiter398 = and i64 %i.ik, 1
  %i.il = add nsw i64 %wide.trip.count299, -1
  %i.im = icmp eq i64 %i.il, %i.ij
  br i1 %i.im, label %.epil.preheader397, label %.lr.ph244.new

.lr.ph244.new:                                    ; preds = %.lr.ph244
  %unroll_iter402 = and i64 %i.ik, -2
  br label %bb.m

.preheader204.loopexit.unr-lcssa:                 ; preds = %bb.m
  %lcmp.mod399.not = icmp eq i64 %xtraiter398, 0
  br i1 %lcmp.mod399.not, label %.preheader204, label %.epil.preheader397

.epil.preheader397:                               ; preds = %.preheader204.loopexit.unr-lcssa, %.lr.ph244
  %indvars.iv296.epil.init = phi i64 [ %i.ij, %.lr.ph244 ], [ %indvars.iv.next297.1, %.preheader204.loopexit.unr-lcssa ] ; 2 uses
  %.0189241.epil.init = phi i64 [ 0, %.lr.ph244 ], [ %i.ki, %.preheader204.loopexit.unr-lcssa ]
  %lcmp.mod401 = trunc i64 %i.ik to i1
  tail call void @llvm.assume(i1 %lcmp.mod401)
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv296.epil.init
  %i.io = load i64, ptr %i.in, align 8
  %i.ip = zext i64 %i.io to i128
  %i.iq = zext nneg i64 %.0189241.epil.init to i128
  %i.ir = add nuw nsw i128 %i.iq, %i.ip
  %i.is = sub nsw i128 0, %i.ir                   ; 2 uses
  %i.it = lshr i128 %i.is, 64
  %i.iu = trunc nuw i128 %i.it to i64
  %i.iv = and i64 %i.iu, 1
  %i.iw = trunc i128 %i.is to i64
  %i.ix = trunc nuw i64 %indvars.iv296.epil.init to i32
  %i.iy = add i32 %i.ii, %i.ix
  %i.iz = zext i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.iz
  store i64 %i.iw, ptr %i.ja, align 8
  br label %.preheader204

.preheader204:                                    ; preds = %.epil.preheader397, %.preheader204.loopexit.unr-lcssa, %._crit_edge239
  %.0189.lcssa = phi i64 [ 0, %._crit_edge239 ], [ %i.ki, %.preheader204.loopexit.unr-lcssa ], [ %i.iv, %.epil.preheader397 ] ; 3 uses
  %.2120.lcssa = phi i32 [ %.1119.lcssa, %._crit_edge239 ], [ %.sroa.speculated157, %.preheader204.loopexit.unr-lcssa ], [ %.sroa.speculated157, %.epil.preheader397 ] ; 3 uses
  %i.jb = icmp ult i32 %.2120.lcssa, %3
  br i1 %i.jb, label %.lr.ph249, label %.preheader204.._crit_edge250_crit_edge

.preheader204.._crit_edge250_crit_edge:           ; preds = %.preheader204
  %.pre = zext i32 %3 to i64
  br label %._crit_edge250

.lr.ph249:                                        ; preds = %.preheader204
  %i.jc = sub i32 %.0112, %3                      ; 3 uses
  %i.jd = zext i32 %.2120.lcssa to i64            ; 4 uses
  %wide.trip.count304 = zext i32 %3 to i64        ; 5 uses
  %i.je = sub nsw i64 %wide.trip.count304, %i.jd
  %xtraiter406 = and i64 %i.je, 1
  %lcmp.mod407.not = icmp eq i64 %xtraiter406, 0
  br i1 %lcmp.mod407.not, label %.prol.loopexit405, label %.prol.loopexit405.unr-lcssa

.prol.loopexit405.unr-lcssa:                      ; preds = %.lr.ph249
  %i.jf = zext nneg i64 %.0189.lcssa to i128
  %i.jg = sub nsw i128 0, %i.jf                   ; 2 uses
  %i.jh = lshr i128 %i.jg, 64
  %i.ji = trunc nuw i128 %i.jh to i64
  %i.jj = and i64 %i.ji, 1                        ; 2 uses
  %i.jk = trunc nsw i128 %i.jg to i64
  %i.jl = add i32 %i.jc, %.2120.lcssa
  %i.jm = zext i32 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.jm
  store i64 %i.jk, ptr %i.jn, align 8
  %indvars.iv.next302.prol = add nuw nsw i64 %i.jd, 1
  br label %.prol.loopexit405

.prol.loopexit405:                                ; preds = %.prol.loopexit405.unr-lcssa, %.lr.ph249
  %.lcssa361.unr = phi i64 [ poison, %.lr.ph249 ], [ %i.jj, %.prol.loopexit405.unr-lcssa ]
  %indvars.iv301.unr = phi i64 [ %i.jd, %.lr.ph249 ], [ %indvars.iv.next302.prol, %.prol.loopexit405.unr-lcssa ]
end_hunk_0
