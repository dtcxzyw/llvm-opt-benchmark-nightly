Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaed0?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@dlaed0_:bb.a
  %i.df = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv445
  %i.dg = getelementptr i8, ptr %i.df, i64 24     ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !26
  %i.di = add nsw i32 %i.dh, %i.de                ; 2 uses
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !26
  %i.dj = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv445
  %i.dk = getelementptr i8, ptr %i.dj, i64 28     ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !26
  %i.dm = add nsw i32 %i.dl, %i.di                ; 3 uses
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !26
  %indvars.iv.next446.7 = add nuw nsw i64 %indvars.iv445, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph395.epil.preheader, label %.lr.ph395, !llvm.loop !10

.lr.ph395.epil.preheader:                         ; preds = %.lr.ph395, %.lr.ph395.preheader
  %store_forwarded.epil.init = phi i32 [ %load_initial, %.lr.ph395.preheader ], [ %i.dm, %.lr.ph395 ]
  %indvars.iv445.epil.init = phi i64 [ 2, %.lr.ph395.preheader ], [ %indvars.iv.next446.7, %.lr.ph395 ]
  br label %.lr.ph395.epil

.lr.ph395.epil:                                   ; preds = %.lr.ph395.epil, %.lr.ph395.epil.preheader
  %store_forwarded.epil = phi i32 [ %store_forwarded.epil.init, %.lr.ph395.epil.preheader ], [ %i.dp, %.lr.ph395.epil ]
  %indvars.iv445.epil = phi i64 [ %indvars.iv445.epil.init, %.lr.ph395.epil.preheader ], [ %indvars.iv.next446.epil, %.lr.ph395.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph395.epil.preheader ], [ %epil.iter.next, %.lr.ph395.epil ]
  %i.dn = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv445.epil ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !26
  %i.dp = add nsw i32 %i.do, %store_forwarded.epil ; 2 uses
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !26
  %indvars.iv.next446.epil = add nuw nsw i64 %indvars.iv445.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter567
  br i1 %epil.iter.cmp.not, label %.lr.ph400.preheader, label %.lr.ph395.epil, !llvm.loop !11

.lr.ph400.preheader:                              ; preds = %.lr.ph395.epil
  %i.dq = icmp eq i64 %i.ch, 0
  br i1 %i.dq, label %.lr.ph400.epil, label %.lr.ph400.preheader.new

.lr.ph400.preheader.new:                          ; preds = %.lr.ph400.preheader
  %i.dr = add nsw i64 %i.cf, -4
  br label %.lr.ph400

.lr.ph400:                                        ; preds = %.lr.ph400, %.lr.ph400.preheader.new
  %indvars.iv448 = phi i64 [ 1, %.lr.ph400.preheader.new ], [ %indvars.iv.next449.1, %.lr.ph400 ] ; 3 uses
  %niter575 = phi i64 [ 0, %.lr.ph400.preheader.new ], [ %niter575.next.1, %.lr.ph400 ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv448
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !26
  %i.du = sext i32 %i.dt to i64                   ; 2 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.du ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !30 ; 3 uses
  %i.dx = fcmp oge double %i.dw, 0.000000e+00
  %i.dy = fneg double %i.dw
  %i.dz = select i1 %i.dx, double %i.dw, double %i.dy
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.du ; 3 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !30
  %i.ec = fsub double %i.eb, %i.dz
  store double %i.ec, ptr %i.ea, align 8, !tbaa !30
  %i.ed = load double, ptr %i.dv, align 8, !tbaa !30 ; 3 uses
  %i.ee = fcmp oge double %i.ed, 0.000000e+00
  %i.ef = fneg double %i.ed
  %i.eg = select i1 %i.ee, double %i.ed, double %i.ef
  %i.eh = getelementptr i8, ptr %i.ea, i64 8      ; 2 uses
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !30
  %i.ej = fsub double %i.ei, %i.eg
  store double %i.ej, ptr %i.eh, align 8, !tbaa !30
  %i.ek = getelementptr [4 x i8], ptr %10, i64 %indvars.iv448
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !26
  %i.em = sext i32 %i.el to i64                   ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.em ; 2 uses
  %i.eo = load double, ptr %i.en, align 8, !tbaa !30 ; 3 uses
  %i.ep = fcmp oge double %i.eo, 0.000000e+00
  %i.eq = fneg double %i.eo
  %i.er = select i1 %i.ep, double %i.eo, double %i.eq
  %i.es = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.em ; 3 uses
  %i.et = load double, ptr %i.es, align 8, !tbaa !30
  %i.eu = fsub double %i.et, %i.er
  store double %i.eu, ptr %i.es, align 8, !tbaa !30
  %i.ev = load double, ptr %i.en, align 8, !tbaa !30 ; 3 uses
  %i.ew = fcmp oge double %i.ev, 0.000000e+00
  %i.ex = fneg double %i.ev
  %i.ey = select i1 %i.ew, double %i.ev, double %i.ex
  %i.ez = getelementptr i8, ptr %i.es, i64 8      ; 2 uses
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !30
  %i.fb = fsub double %i.fa, %i.ey
  store double %i.fb, ptr %i.ez, align 8, !tbaa !30
  %indvars.iv.next449.1 = add nuw nsw i64 %indvars.iv448, 2 ; 2 uses
  %niter575.next.1 = add nuw i64 %niter575, 2
  %niter575.ncmp.1 = icmp eq i64 %niter575, %i.dr
  br i1 %niter575.ncmp.1, label %.lr.ph400.epil, label %.lr.ph400, !llvm.loop !12

.lr.ph400.epil:                                   ; preds = %.lr.ph400.preheader, %.lr.ph400
  %indvars.iv448.epil.init = phi i64 [ 1, %.lr.ph400.preheader ], [ %indvars.iv.next449.1, %.lr.ph400 ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv448.epil.init
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !26
  %i.fe = sext i32 %i.fd to i64                   ; 2 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fe ; 2 uses
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !30 ; 3 uses
  %i.fh = fcmp oge double %i.fg, 0.000000e+00
  %i.fi = fneg double %i.fg
  %i.fj = select i1 %i.fh, double %i.fg, double %i.fi
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.fe ; 3 uses
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !30
  %i.fm = fsub double %i.fl, %i.fj
  store double %i.fm, ptr %i.fk, align 8, !tbaa !30
  %i.fn = load double, ptr %i.ff, align 8, !tbaa !30 ; 3 uses
  %i.fo = fcmp oge double %i.fn, 0.000000e+00
  %i.fp = fneg double %i.fn
  %i.fq = select i1 %i.fo, double %i.fn, double %i.fp
  %i.fr = getelementptr i8, ptr %i.fk, i64 8      ; 2 uses
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !30
  %i.ft = fsub double %i.fs, %i.fq
  store double %i.ft, ptr %i.fr, align 8, !tbaa !30
  br label %._crit_edge401

._crit_edge401:                                   ; preds = %.lr.ph400.epil, %._crit_edge390, %._crit_edge390.thread
  %.not352.not397505 = phi i1 [ false, %._crit_edge390 ], [ false, %._crit_edge390.thread ], [ true, %.lr.ph400.epil ]
  %.0326.lcssa501504 = phi i32 [ %i.ca, %._crit_edge390 ], [ 1, %._crit_edge390.thread ], [ %i.ca, %.lr.ph400.epil ] ; 8 uses
  %i.fu = add nsw i32 %.0326.lcssa501504, -1
  %i.fv = load i32, ptr %2, align 4, !tbaa !26    ; 2 uses
  %i.fw = shl i32 %i.fv, 2                        ; 4 uses
  %i.fx = or disjoint i32 %i.fw, 3                ; 6 uses
  %i.fy = load i32, ptr %0, align 4, !tbaa !26
  %.not353 = icmp eq i32 %i.fy, 2
  br i1 %.not353, label %bb.l, label %bb.i

bb.i:                                             ; preds = %._crit_edge401
  %i.fz = sitofp i32 %i.fv to double
  %i.ga = tail call double @log(double noundef %i.fz) #6
  %i.gb = fdiv double %i.ga, f0x3FE62E42FEFA39EF
  %i.gc = fptosi double %i.gb to i32              ; 4 uses
  %i.gd = icmp eq i32 %i.gc, 0
  %spec.select32.i = zext i1 %i.gd to i32
  %i.ge = icmp sgt i32 %i.gc, 0
  br i1 %i.ge, label %bb.j, label %pow_ii.exit

bb.j:                                             ; preds = %bb.i
  %i.gf = zext nneg i32 %i.gc to i64              ; 2 uses
  %i.gg = and i64 %i.gf, 1
  %.not33.i = icmp eq i64 %i.gg, 0
  %i.gh = select i1 %.not33.i, i32 1, i32 2       ; 2 uses
  %i.gi = lshr i64 %i.gf, 1                       ; 2 uses
  %.not3134.i = icmp eq i64 %i.gi, 0
  br i1 %.not3134.i, label %pow_ii.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %i.gj = phi i64 [ %i.gn, %.lr.ph.i ], [ %i.gi, %bb.j ] ; 2 uses
  %spec.select36.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %i.gh, %bb.j ]
  %.02635.i = phi i32 [ %i.gk, %.lr.ph.i ], [ 2, %bb.j ] ; 2 uses
  %i.gk = mul nuw nsw i32 %.02635.i, %.02635.i    ; 2 uses
  %i.gl = and i64 %i.gj, 1
  %.not.i = icmp eq i64 %i.gl, 0
  %i.gm = select i1 %.not.i, i32 1, i32 %i.gk
  %spec.select.i = mul nuw nsw i32 %i.gm, %spec.select36.i ; 2 uses
  %i.gn = lshr i64 %i.gj, 1                       ; 2 uses
  %.not31.i = icmp eq i64 %i.gn, 0
  br i1 %.not31.i, label %pow_ii.exit, label %.lr.ph.i

pow_ii.exit:                                      ; preds = %.lr.ph.i, %bb.i, %bb.j
  %.3.i = phi i32 [ %spec.select32.i, %bb.i ], [ %i.gh, %bb.j ], [ %spec.select.i, %.lr.ph.i ]
  %i.go = load i32, ptr %2, align 4, !tbaa !26    ; 8 uses
  %i.gp = icmp slt i32 %.3.i, %i.go
  %i.gq = zext i1 %i.gp to i32
  %spec.select370 = add nsw i32 %i.gq, %i.gc      ; 4 uses
  %i.gr = icmp eq i32 %spec.select370, 0
  %spec.select32.i371 = zext i1 %i.gr to i32
  %i.gs = icmp sgt i32 %spec.select370, 0
  br i1 %i.gs, label %bb.k, label %pow_ii.exit381

bb.k:                                             ; preds = %pow_ii.exit
  %i.gt = zext nneg i32 %spec.select370 to i64    ; 2 uses
  %i.gu = and i64 %i.gt, 1
  %.not33.i373 = icmp eq i64 %i.gu, 0
  %i.gv = select i1 %.not33.i373, i32 1, i32 2    ; 2 uses
  %i.gw = lshr i64 %i.gt, 1                       ; 2 uses
  %.not3134.i374 = icmp eq i64 %i.gw, 0
  br i1 %.not3134.i374, label %pow_ii.exit381, label %.lr.ph.i375

.lr.ph.i375:                                      ; preds = %bb.k, %.lr.ph.i375
  %i.gx = phi i64 [ %i.hb, %.lr.ph.i375 ], [ %i.gw, %bb.k ] ; 2 uses
  %spec.select36.i376 = phi i32 [ %spec.select.i379, %.lr.ph.i375 ], [ %i.gv, %bb.k ]
  %.02635.i377 = phi i32 [ %i.gy, %.lr.ph.i375 ], [ 2, %bb.k ] ; 2 uses
  %i.gy = mul nuw nsw i32 %.02635.i377, %.02635.i377 ; 2 uses
  %i.gz = and i64 %i.gx, 1
  %.not.i378 = icmp eq i64 %i.gz, 0
  %i.ha = select i1 %.not.i378, i32 1, i32 %i.gy
  %spec.select.i379 = mul nuw nsw i32 %i.ha, %spec.select36.i376 ; 2 uses
  %i.hb = lshr i64 %i.gx, 1                       ; 2 uses
  %.not31.i380 = icmp eq i64 %i.hb, 0
  br i1 %.not31.i380, label %pow_ii.exit381, label %.lr.ph.i375

pow_ii.exit381:                                   ; preds = %.lr.ph.i375, %pow_ii.exit, %bb.k
  %.3.i372 = phi i32 [ %spec.select32.i371, %pow_ii.exit ], [ %i.gv, %bb.k ], [ %spec.select.i379, %.lr.ph.i375 ]
  %i.hc = icmp slt i32 %.3.i372, %i.go
  %i.hd = zext i1 %i.hc to i32
  %.1 = add i32 %spec.select370, %i.hd            ; 2 uses
  %i.he = add i32 %i.fw, 4
  %i.hf = add i32 %i.he, %i.go                    ; 2 uses
  %i.hg = mul i32 %.1, %i.go                      ; 3 uses
  %i.hh = add i32 %i.hg, %i.hf                    ; 2 uses
  %i.hi = add i32 %i.hh, %i.hg                    ; 3 uses
  %i.hj = add i32 %i.go, 2
  %i.hk = add i32 %i.hj, %i.hi                    ; 2 uses
  %i.hl = add nsw i32 %i.hk, %i.hg
  %i.hm = shl i32 %i.go, 1
  %i.hn = mul nsw i32 %i.hm, %.1
  %i.ho = or disjoint i32 %i.hn, 1                ; 2 uses
  %i.hp = mul nsw i32 %i.go, %i.go
  %i.hq = add nuw i32 %i.hp, 1
  %i.hr = add i32 %i.hq, %i.ho
  %.not354402 = icmp slt i32 %.0326.lcssa501504, 0
  %.pre485 = sext i32 %i.hf to i64                ; 3 uses
  %.pre486 = sext i32 %i.hk to i64                ; 3 uses
  br i1 %.not354402, label %._crit_edge405, label %iter.check

iter.check:                                       ; preds = %pow_ii.exit381
  %i.hs = add nuw i32 %.0326.lcssa501504, 1
  %wide.trip.count456 = zext nneg i32 %i.hs to i64 ; 7 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.p, i64 %.pre485 ; 11 uses
  %invariant.gep512 = getelementptr [4 x i8], ptr %i.p, i64 %.pre486 ; 11 uses
  %min.iters.check = icmp ult i32 %.0326.lcssa501504, 7
  br i1 %min.iters.check, label %.lr.ph404.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ht = sub nsw i64 %.pre486, %.pre485
  %i.hu = shl nsw i64 %i.ht, 2
  %i.hv = add nsw i64 %i.hu, -1
  %diff.check = icmp ult i64 %i.hv, 127
  br i1 %diff.check, label %.lr.ph404.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check528 = icmp ult i32 %.0326.lcssa501504, 31
  br i1 %min.iters.check528, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hw = and i64 %wide.trip.count456, 24
  %n.vec = and i64 %wide.trip.count456, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hx = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.hy = getelementptr i8, ptr %i.hx, i64 32
  %i.hz = getelementptr i8, ptr %i.hx, i64 64
  %i.ia = getelementptr i8, ptr %i.hx, i64 96
  store <8 x i32> splat (i32 1), ptr %i.hx, align 4, !tbaa !26
  store <8 x i32> splat (i32 1), ptr %i.hy, align 4, !tbaa !26
  store <8 x i32> splat (i32 1), ptr %i.hz, align 4, !tbaa !26
  store <8 x i32> splat (i32 1), ptr %i.ia, align 4, !tbaa !26
  %i.ib = getelementptr [4 x i8], ptr %invariant.gep512, i64 %index ; 4 uses
  %i.ic = getelementptr i8, ptr %i.ib, i64 32
  %i.id = getelementptr i8, ptr %i.ib, i64 64
  %i.ie = getelementptr i8, ptr %i.ib, i64 96
  store <8 x i32> splat (i32 1), ptr %i.ib, align 4, !tbaa !26
  store <8 x i32> splat (i32 1), ptr %i.ic, align 4, !tbaa !26
  store <8 x i32> splat (i32 1), ptr %i.id, align 4, !tbaa !26
  store <8 x i32> splat (i32 1), ptr %i.ie, align 4, !tbaa !26
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.if = icmp eq i64 %index.next, %n.vec
  br i1 %i.if, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count456
  br i1 %cmp.n, label %._crit_edge405, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph404.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec529 = and i64 %wide.trip.count456, 2147483640 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index530 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next531, %vec.epilog.vector.body ] ; 3 uses
  %i.ig = getelementptr [4 x i8], ptr %invariant.gep, i64 %index530
  store <8 x i32> splat (i32 1), ptr %i.ig, align 4, !tbaa !26
  %i.ih = getelementptr [4 x i8], ptr %invariant.gep512, i64 %index530
  store <8 x i32> splat (i32 1), ptr %i.ih, align 4, !tbaa !26
  %index.next531 = add nuw i64 %index530, 8       ; 2 uses
  %i.ii = icmp eq i64 %index.next531, %n.vec529
  br i1 %i.ii, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !14

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n532 = icmp eq i64 %n.vec529, %wide.trip.count456
  br i1 %cmp.n532, label %._crit_edge405, label %.lr.ph404.preheader

.lr.ph404.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv453.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec529, %vec.epilog.middle.block ] ; 3 uses
  %i.ij = zext nneg i32 %.0326.lcssa501504 to i64
  %i.ik = sub nsw i64 %i.ij, %indvars.iv453.ph
  %xtraiter576 = and i64 %wide.trip.count456, 7   ; 2 uses
  %lcmp.mod577.not = icmp eq i64 %xtraiter576, 0
  br i1 %lcmp.mod577.not, label %.lr.ph404.prol.loopexit, label %.lr.ph404.prol

.lr.ph404.prol:                                   ; preds = %.lr.ph404.preheader, %.lr.ph404.prol
  %indvars.iv453.prol = phi i64 [ %indvars.iv.next454.prol, %.lr.ph404.prol ], [ %indvars.iv453.ph, %.lr.ph404.preheader ] ; 3 uses
  %prol.iter578 = phi i64 [ %prol.iter578.next, %.lr.ph404.prol ], [ 0, %.lr.ph404.preheader ]
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv453.prol
  store i32 1, ptr %gep.prol, align 4, !tbaa !26
  %gep513.prol = getelementptr [4 x i8], ptr %invariant.gep512, i64 %indvars.iv453.prol
  store i32 1, ptr %gep513.prol, align 4, !tbaa !26
  %indvars.iv.next454.prol = add nuw nsw i64 %indvars.iv453.prol, 1 ; 2 uses
  %prol.iter578.next = add i64 %prol.iter578, 1   ; 2 uses
  %prol.iter578.cmp.not = icmp eq i64 %prol.iter578.next, %xtraiter576
  br i1 %prol.iter578.cmp.not, label %.lr.ph404.prol.loopexit, label %.lr.ph404.prol, !llvm.loop !15

.lr.ph404.prol.loopexit:                          ; preds = %.lr.ph404.prol, %.lr.ph404.preheader
  %indvars.iv453.unr = phi i64 [ %indvars.iv453.ph, %.lr.ph404.preheader ], [ %indvars.iv.next454.prol, %.lr.ph404.prol ]
  %i.il = icmp ult i64 %i.ik, 7
  br i1 %i.il, label %._crit_edge405, label %.lr.ph404

.lr.ph404:                                        ; preds = %.lr.ph404.prol.loopexit, %.lr.ph404
  %indvars.iv453 = phi i64 [ %indvars.iv.next454.7, %.lr.ph404 ], [ %indvars.iv453.unr, %.lr.ph404.prol.loopexit ] ; 10 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv453
  store i32 1, ptr %gep, align 4, !tbaa !26
  %gep513 = getelementptr [4 x i8], ptr %invariant.gep512, i64 %indvars.iv453
  store i32 1, ptr %gep513, align 4, !tbaa !26
  %indvars.iv.next454 = add nuw nsw i64 %indvars.iv453, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next454
  store i32 1, ptr %gep.1, align 4, !tbaa !26
  %gep513.1 = getelementptr [4 x i8], ptr %invariant.gep512, i64 %indvars.iv.next454
  store i32 1, ptr %gep513.1, align 4, !tbaa !26
  %indvars.iv.next454.1 = add nuw nsw i64 %indvars.iv453, 2 ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next454.1
  store i32 1, ptr %gep.2, align 4, !tbaa !26
  %gep513.2 = getelementptr [4 x i8], ptr %invariant.gep512, i64 %indvars.iv.next454.1
  store i32 1, ptr %gep513.2, align 4, !tbaa !26
  %indvars.iv.next454.2 = add nuw nsw i64 %indvars.iv453, 3 ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next454.2
  store i32 1, ptr %gep.3, align 4, !tbaa !26
  %gep513.3 = getelementptr [4 x i8], ptr %invariant.gep512, i64 %indvars.iv.next454.2
  store i32 1, ptr %gep513.3, align 4, !tbaa !26
  %indvars.iv.next454.3 = add nuw nsw i64 %indvars.iv453, 4 ; 2 uses
  %gep.4 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next454.3
  store i32 1, ptr %gep.4, align 4, !tbaa !26
  %gep513.4 = getelementptr [4 x i8], ptr %invariant.gep512, i64 %indvars.iv.next454.3
  store i32 1, ptr %gep513.4, align 4, !tbaa !26
  %indvars.iv.next454.4 = add nuw nsw i64 %indvars.iv453, 5 ; 2 uses
  %gep.5 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next454.4
  store i32 1, ptr %gep.5, align 4, !tbaa !26
  %gep513.5 = getelementptr [4 x i8], ptr %invariant.gep512, i64 %indvars.iv.next454.4
  store i32 1, ptr %gep513.5, align 4, !tbaa !26
  %indvars.iv.next454.5 = add nuw nsw i64 %indvars.iv453, 6 ; 2 uses
  %gep.6 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next454.5
  store i32 1, ptr %gep.6, align 4, !tbaa !26
  %gep513.6 = getelementptr [4 x i8], ptr %invariant.gep512, i64 %indvars.iv.next454.5
  store i32 1, ptr %gep513.6, align 4, !tbaa !26
  %indvars.iv.next454.6 = add nuw nsw i64 %indvars.iv453, 7 ; 2 uses
  %gep.7 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next454.6
  store i32 1, ptr %gep.7, align 4, !tbaa !26
  %gep513.7 = getelementptr [4 x i8], ptr %invariant.gep512, i64 %indvars.iv.next454.6
  store i32 1, ptr %gep513.7, align 4, !tbaa !26
  %indvars.iv.next454.7 = add nuw nsw i64 %indvars.iv453, 8 ; 2 uses
  %exitcond457.not.7 = icmp eq i64 %indvars.iv.next454.7, %wide.trip.count456
  br i1 %exitcond457.not.7, label %._crit_edge405, label %.lr.ph404, !llvm.loop !16

._crit_edge405:                                   ; preds = %.lr.ph404.prol.loopexit, %.lr.ph404, %middle.block, %vec.epilog.middle.block, %pow_ii.exit381
  %i.im = sext i32 %i.hi to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.im
  store i32 1, ptr %i.in, align 4, !tbaa !26
  %i.io = sext i32 %i.hh to i64
  %i.ip = sext i32 %i.hl to i64
  %i.iq = sext i32 %i.hr to i64
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge405, %._crit_edge401
  %.0335 = phi i64 [ %i.io, %._crit_edge405 ], [ 0, %._crit_edge401 ]
  %.0334 = phi i64 [ %i.iq, %._crit_edge405 ], [ 0, %._crit_edge401 ]
  %.0333 = phi i32 [ %i.hi, %._crit_edge405 ], [ undef, %._crit_edge401 ] ; 2 uses
  %.0332 = phi i32 [ %i.ho, %._crit_edge405 ], [ undef, %._crit_edge401 ] ; 2 uses
  %.0331 = phi i64 [ %i.ip, %._crit_edge405 ], [ 0, %._crit_edge401 ]
  %.0325 = phi i64 [ %.pre486, %._crit_edge405 ], [ 0, %._crit_edge401 ]
  %.0324 = phi i64 [ %.pre485, %._crit_edge405 ], [ 0, %._crit_edge401 ]
  %.not355411 = icmp slt i32 %.0326.lcssa501504, 1
  br i1 %.not355411, label %.preheader, label %.lr.ph415

.lr.ph415:                                        ; preds = %bb.l
  %i.ir = add nsw i32 %.0332, -1                  ; 2 uses
  %i.is = add i32 %i.i, 1
  %i.it = sext i32 %i.fx to i64
  %invariant.gep514 = getelementptr [4 x i8], ptr %i.p, i64 %i.it ; 3 uses
  %i.iu = sext i32 %i.fu to i64
  br label %bb.m

.loopexit385:                                     ; preds = %.lr.ph410, %middle.block541, %vec.epilog.middle.block557, %bb.v
  %.not355.not = icmp slt i64 %indvars.iv462, %i.iu
  br i1 %.not355.not, label %bb.m, label %.preheader, !llvm.loop !17

.preheader:                                       ; preds = %.loopexit385, %bb.l
  store i32 1, ptr %i.d, align 4, !tbaa !26
  br i1 %.not352.not397505, label %.lr.ph422, label %._crit_edge423

.lr.ph422:                                        ; preds = %.preheader
  %i.iv = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.iw = sext i32 %.0332 to i64
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.iw ; 2 uses
  %i.iy = sext i32 %.0333 to i64
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.iy ; 2 uses
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.p, i64 %.0324 ; 2 uses
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.p, i64 %.0335 ; 2 uses
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.p, i64 %.0325 ; 2 uses
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.p, i64 %.0331 ; 2 uses
  %i.je = getelementptr inbounds [8 x i8], ptr %i.o, i64 %.0334 ; 2 uses
  %i.jf = add i32 %i.i, 1                         ; 2 uses
  %i.jg = sext i32 %i.l to i64
  %i.jh = getelementptr [8 x i8], ptr %i.n, i64 %i.jg
  %i.ji = getelementptr i8, ptr %i.jh, i64 8
  %i.jj = sext i32 %i.fw to i64
  %i.jk = getelementptr [4 x i8], ptr %i.p, i64 %i.jj
  %i.jl = getelementptr i8, ptr %i.jk, i64 16
  %i.jm = sext i32 %i.jf to i64
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.jm
  %i.jo = sext i32 %i.fw to i64
  %i.jp = getelementptr [4 x i8], ptr %i.p, i64 %i.jo
  %i.jq = getelementptr i8, ptr %i.jp, i64 16
  %i.jr = getelementptr inbounds nuw i8, ptr %10, i64 4
  br label %bb.w

bb.m:                                             ; preds = %.lr.ph415, %.loopexit385
  %indvars.iv462 = phi i64 [ 0, %.lr.ph415 ], [ %indvars.iv.next463, %.loopexit385 ] ; 5 uses
  %.0343412 = phi i32 [ 0, %.lr.ph415 ], [ %.1344, %.loopexit385 ] ; 3 uses
  %i.js = icmp eq i64 %indvars.iv462, 0
  br i1 %i.js, label %bb.n, label %bb.o
end_hunk_0
