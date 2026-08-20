loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@dsb2st_kernels_:bb.a
  %i.el = sext i32 %.1 to i64                     ; 3 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.el ; 3 uses
  store double 1.000000e+00, ptr %i.em, align 8, !tbaa !9
  %i.en = load i32, ptr %i.e, align 4, !tbaa !8   ; 4 uses
  %i.eo = add nsw i32 %i.en, -1
  store i32 %i.eo, ptr %i.a, align 4, !tbaa !8
  %.not332.not350 = icmp sgt i32 %i.en, 1
  %.pre383 = load i32, ptr %7, align 4, !tbaa !8  ; 6 uses
  br i1 %.not332.not350, label %.lr.ph353, label %._crit_edge354

.lr.ph353:                                        ; preds = %bb.h
  %wide.trip.count371 = zext nneg i32 %i.en to i64
  %invariant.gep402 = getelementptr [8 x i8], ptr %i.j, i64 %i.el ; 5 uses
  %i.ep = add nsw i64 %wide.trip.count371, -1     ; 2 uses
  %xtraiter459 = and i64 %i.ep, 3                 ; 3 uses
  %i.eq = add nsw i32 %i.en, -2
  %i.er = icmp ult i32 %i.eq, 3
  br i1 %i.er, label %.epil.preheader, label %.lr.ph353.new

.lr.ph353.new:                                    ; preds = %.lr.ph353
  %unroll_iter463 = and i64 %i.ep, -4
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph353.new
  %indvars.iv368 = phi i64 [ 1, %.lr.ph353.new ], [ %indvars.iv.next369.3, %bb.i ] ; 7 uses
  %niter464 = phi i64 [ 0, %.lr.ph353.new ], [ %niter464.next.3, %bb.i ]
  %i.es = trunc i64 %indvars.iv368 to i32
  %i.et = add i32 %i.dm, %i.es
  %i.eu = mul i32 %i.et, %i.g
  %i.ev = add i32 %i.o, %i.eu
  %i.ew = trunc nuw nsw i64 %indvars.iv368 to i32
  %i.ex = add i32 %.pre383, %i.ew
  %i.ey = sub i32 %i.ev, %i.ex
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ez ; 2 uses
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !9
  %gep403 = getelementptr [8 x i8], ptr %invariant.gep402, i64 %indvars.iv368
  store double %i.fb, ptr %gep403, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.fa, align 8, !tbaa !9
  %indvars.iv.next369 = add nuw nsw i64 %indvars.iv368, 1 ; 3 uses
  %i.fc = trunc i64 %indvars.iv.next369 to i32
  %i.fd = add i32 %i.dm, %i.fc
  %i.fe = mul i32 %i.fd, %i.g
  %i.ff = add i32 %i.o, %i.fe
  %i.fg = trunc nuw nsw i64 %indvars.iv.next369 to i32
  %i.fh = add i32 %.pre383, %i.fg
  %i.fi = sub i32 %i.ff, %i.fh
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.fj ; 2 uses
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !9
  %gep403.1 = getelementptr [8 x i8], ptr %invariant.gep402, i64 %indvars.iv.next369
  store double %i.fl, ptr %gep403.1, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.fk, align 8, !tbaa !9
  %indvars.iv.next369.1 = add nuw nsw i64 %indvars.iv368, 2 ; 3 uses
  %i.fm = trunc i64 %indvars.iv.next369.1 to i32
  %i.fn = add i32 %i.dm, %i.fm
  %i.fo = mul i32 %i.fn, %i.g
  %i.fp = add i32 %i.o, %i.fo
  %i.fq = trunc nuw nsw i64 %indvars.iv.next369.1 to i32
  %i.fr = add i32 %.pre383, %i.fq
  %i.fs = sub i32 %i.fp, %i.fr
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ft ; 2 uses
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !9
  %gep403.2 = getelementptr [8 x i8], ptr %invariant.gep402, i64 %indvars.iv.next369.1
  store double %i.fv, ptr %gep403.2, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.fu, align 8, !tbaa !9
  %indvars.iv.next369.2 = add nuw nsw i64 %indvars.iv368, 3 ; 3 uses
  %i.fw = trunc i64 %indvars.iv.next369.2 to i32
  %i.fx = add i32 %i.dm, %i.fw
  %i.fy = mul i32 %i.fx, %i.g
  %i.fz = add i32 %i.o, %i.fy
  %i.ga = trunc nuw nsw i64 %indvars.iv.next369.2 to i32
  %i.gb = add i32 %.pre383, %i.ga
  %i.gc = sub i32 %i.fz, %i.gb
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.gd ; 2 uses
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !9
  %gep403.3 = getelementptr [8 x i8], ptr %invariant.gep402, i64 %indvars.iv.next369.2
  store double %i.gf, ptr %gep403.3, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.ge, align 8, !tbaa !9
  %indvars.iv.next369.3 = add nuw nsw i64 %indvars.iv368, 4 ; 2 uses
  %niter464.next.3 = add i64 %niter464, 4         ; 2 uses
  %niter464.ncmp.3 = icmp eq i64 %niter464.next.3, %unroll_iter463
  br i1 %niter464.ncmp.3, label %._crit_edge354.loopexit.unr-lcssa, label %bb.i, !llvm.loop !15

._crit_edge354.loopexit.unr-lcssa:                ; preds = %bb.i
  %lcmp.mod461.not = icmp eq i64 %xtraiter459, 0
  br i1 %lcmp.mod461.not, label %._crit_edge354, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge354.loopexit.unr-lcssa, %.lr.ph353
  %indvars.iv368.epil.init = phi i64 [ 1, %.lr.ph353 ], [ %indvars.iv.next369.3, %._crit_edge354.loopexit.unr-lcssa ]
  %lcmp.mod462 = icmp ne i64 %xtraiter459, 0
  call void @llvm.assume(i1 %lcmp.mod462)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv368.epil = phi i64 [ %indvars.iv368.epil.init, %.epil.preheader ], [ %indvars.iv.next369.epil, %bb.j ] ; 4 uses
  %epil.iter460 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter460.next, %bb.j ]
  %i.gg = trunc i64 %indvars.iv368.epil to i32
  %i.gh = add i32 %i.dm, %i.gg
  %i.gi = mul i32 %i.gh, %i.g
  %i.gj = add i32 %i.o, %i.gi
  %i.gk = trunc nuw nsw i64 %indvars.iv368.epil to i32
  %i.gl = add i32 %.pre383, %i.gk
  %i.gm = sub i32 %i.gj, %i.gl
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.gn ; 2 uses
  %i.gp = load double, ptr %i.go, align 8, !tbaa !9
  %gep403.epil = getelementptr [8 x i8], ptr %invariant.gep402, i64 %indvars.iv368.epil
  store double %i.gp, ptr %gep403.epil, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.go, align 8, !tbaa !9
  %indvars.iv.next369.epil = add nuw nsw i64 %indvars.iv368.epil, 1
  %epil.iter460.next = add i64 %epil.iter460, 1   ; 2 uses
  %epil.iter460.cmp.not = icmp eq i64 %epil.iter460.next, %xtraiter459
  br i1 %epil.iter460.cmp.not, label %._crit_edge354, label %bb.j, !llvm.loop !16

._crit_edge354:                                   ; preds = %._crit_edge354.loopexit.unr-lcssa, %bb.j, %bb.h
  %i.gq = add i32 %i.ec, %i.o
  %i.gr = sub i32 %i.gq, %.pre383
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.gs
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !9
  store double %i.gu, ptr %i.d, align 8, !tbaa !9
  %i.gv = getelementptr i8, ptr %i.em, i64 8
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.el ; 2 uses
  call void @dlarfg_(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, ptr noundef %i.gv, ptr noundef nonnull @c__1, ptr noundef nonnull %i.gw) #5
  %i.gx = load double, ptr %i.d, align 8, !tbaa !9
  %i.gy = load i32, ptr %7, align 4, !tbaa !8
  %i.gz = sub nsw i32 %i.o, %i.gy                 ; 2 uses
  %i.ha = add nsw i32 %i.gz, %i.ec
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.hb
  store double %i.gx, ptr %i.hc, align 8, !tbaa !9
  %i.hd = load i32, ptr %i.f, align 4, !tbaa !8
  %i.he = add nsw i32 %i.hd, -1
  store i32 %i.he, ptr %i.a, align 4, !tbaa !8
  %i.hf = load i32, ptr %10, align 4, !tbaa !8
  %i.hg = add nsw i32 %i.hf, -1
  store i32 %i.hg, ptr %i.b, align 4, !tbaa !8
  %i.hh = add i32 %i.ec, 1
  %i.hi = add i32 %i.hh, %i.gz
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.hj
  call void @dlarfx_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull %i.em, ptr noundef nonnull %i.gw, ptr noundef %i.hk, ptr noundef nonnull %i.b, ptr noundef %14) #5
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.hl = load i32, ptr %5, align 4, !tbaa !8
  %i.hm = add nsw i32 %i.hl, -1
  %i.hn = srem i32 %i.hm, 2
  %i.ho = load i32, ptr %6, align 4, !tbaa !8
  %i.hp = mul nsw i32 %i.hn, %i.ho
  %i.hq = load i32, ptr %3, align 4, !tbaa !8     ; 4 uses
  %i.hr = add nsw i32 %i.hp, %i.hq                ; 3 uses
  %i.hs = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  %i.ht = icmp eq i32 %i.hs, 1
  br i1 %i.ht, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.hu = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.hv = sub nsw i32 %i.hu, %i.hq                ; 3 uses
  %i.hw = add nsw i32 %i.hv, 1
  store i32 %i.hw, ptr %i.e, align 4, !tbaa !8
  %i.hx = sext i32 %i.hr to i64                   ; 4 uses
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.hx ; 3 uses
  store double 1.000000e+00, ptr %i.hy, align 8, !tbaa !9
  store i32 %i.hv, ptr %i.a, align 4, !tbaa !8
  %.not323355 = icmp slt i32 %i.hv, 1
  %.pre387 = add i32 %i.hq, -1
  %.pre388 = mul i32 %.pre387, %i.g               ; 4 uses
  br i1 %.not323355, label %._crit_edge359, label %iter.check

iter.check:                                       ; preds = %bb.l
  %i.hz = add i32 %.pre388, 2                     ; 7 uses
  %i.ia = add i32 %i.hu, 1
  %i.ib = sub i32 %i.ia, %i.hq
  %wide.trip.count376 = zext i32 %i.ib to i64     ; 6 uses
  %invariant.gep404 = getelementptr [8 x i8], ptr %i.j, i64 %i.hx ; 7 uses
  %i.ic = add nsw i64 %wide.trip.count376, -1     ; 7 uses
  %min.iters.check = icmp ult i64 %i.ic, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.id = add nsw i64 %wide.trip.count376, -2     ; 2 uses
  %i.ie = add i32 %.pre388, 3                     ; 2 uses
  %i.if = trunc i64 %i.id to i32
  %i.ig = add i32 %i.ie, %i.if
  %i.ih = icmp slt i32 %i.ig, %i.ie
  %i.ii = icmp ugt i64 %i.id, 4294967295
  %i.ij = or i1 %i.ih, %i.ii
  br i1 %i.ij, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ik = shl nsw i64 %i.hx, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %11, i64 %i.ik
  %i.il = shl nuw nsw i64 %wide.trip.count376, 3  ; 2 uses
  %i.im = getelementptr i8, ptr %11, i64 %i.ik
  %i.in = getelementptr i8, ptr %i.im, i64 %i.il
  %scevgep408 = getelementptr i8, ptr %i.in, i64 -8
  %i.io = add i32 %.pre388, 3
  %i.ip = sext i32 %i.io to i64
  %15 = add nsw i64 %i.h, %i.ip
  %16 = shl nsw i64 %15, 3                        ; 2 uses
  %scevgep409.a = getelementptr i8, ptr %9, i64 %16
  %i.iq = getelementptr i8, ptr %9, i64 %16
  %i.ir = getelementptr i8, ptr %i.iq, i64 %i.il
  %scevgep410 = getelementptr i8, ptr %i.ir, i64 -8
  %bound0 = icmp ult ptr %scevgep, %scevgep410
  %bound1 = icmp ult ptr %scevgep409.a, %scevgep408
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check411 = icmp ult i64 %i.ic, 16
  br i1 %min.iters.check411, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.is = and i64 %i.ic, 12
  %n.vec = and i64 %i.ic, -16                     ; 4 uses
  %i.it = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iu = or disjoint i64 %index, 1               ; 2 uses
  %i.iv = trunc nuw nsw i64 %i.iu to i32
  %i.iw = add i32 %i.hz, %i.iv
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ix ; 5 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 32 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 64 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 96 ; 2 uses
  %wide.load = load <4 x double>, ptr %i.iy, align 8, !tbaa !9, !alias.scope !17
  %wide.load412 = load <4 x double>, ptr %i.iz, align 8, !tbaa !9, !alias.scope !17
  %wide.load413 = load <4 x double>, ptr %i.ja, align 8, !tbaa !9, !alias.scope !17
  %wide.load414 = load <4 x double>, ptr %i.jb, align 8, !tbaa !9, !alias.scope !17
  %i.jc = getelementptr [8 x i8], ptr %invariant.gep404, i64 %i.iu ; 4 uses
  %i.jd = getelementptr i8, ptr %i.jc, i64 32
  %i.je = getelementptr i8, ptr %i.jc, i64 64
  %i.jf = getelementptr i8, ptr %i.jc, i64 96
  store <4 x double> %wide.load, ptr %i.jc, align 8, !tbaa !9, !alias.scope !20, !noalias !17
  store <4 x double> %wide.load412, ptr %i.jd, align 8, !tbaa !9, !alias.scope !20, !noalias !17
  store <4 x double> %wide.load413, ptr %i.je, align 8, !tbaa !9, !alias.scope !20, !noalias !17
  store <4 x double> %wide.load414, ptr %i.jf, align 8, !tbaa !9, !alias.scope !20, !noalias !17
  store <4 x double> zeroinitializer, ptr %i.iy, align 8, !tbaa !9, !alias.scope !17
  store <4 x double> zeroinitializer, ptr %i.iz, align 8, !tbaa !9, !alias.scope !17
  store <4 x double> zeroinitializer, ptr %i.ja, align 8, !tbaa !9, !alias.scope !17
  store <4 x double> zeroinitializer, ptr %i.jb, align 8, !tbaa !9, !alias.scope !17
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.jg = icmp eq i64 %index.next, %n.vec
  br i1 %i.jg, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ic, %n.vec
  br i1 %cmp.n, label %._crit_edge359, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.is, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec415 = and i64 %i.ic, -4                   ; 3 uses
  %i.jh = or disjoint i64 %n.vec415, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index416 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next418, %vec.epilog.vector.body ] ; 2 uses
  %i.ji = or disjoint i64 %index416, 1            ; 2 uses
  %i.jj = trunc nuw nsw i64 %i.ji to i32
  %i.jk = add i32 %i.hz, %i.jj
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.jl ; 2 uses
  %wide.load417 = load <4 x double>, ptr %i.jm, align 8, !tbaa !9, !alias.scope !17
  %i.jn = getelementptr [8 x i8], ptr %invariant.gep404, i64 %i.ji
  store <4 x double> %wide.load417, ptr %i.jn, align 8, !tbaa !9, !alias.scope !20, !noalias !17
  store <4 x double> zeroinitializer, ptr %i.jm, align 8, !tbaa !9, !alias.scope !17
  %index.next418 = add nuw i64 %index416, 4       ; 2 uses
  %i.jo = icmp eq i64 %index.next418, %n.vec415
  br i1 %i.jo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !26

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n419 = icmp eq i64 %i.ic, %n.vec415
  br i1 %cmp.n419, label %._crit_edge359, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv373.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.scevcheck ], [ 1, %vector.memcheck ], [ %i.it, %vec.epilog.iter.check ], [ %i.jh, %vec.epilog.middle.block ] ; 4 uses
  %i.jp = sub i64 %wide.trip.count376, %indvars.iv373.ph
  %xtraiter465 = and i64 %i.jp, 3                 ; 2 uses
  %lcmp.mod466.not = icmp eq i64 %xtraiter465, 0
  br i1 %lcmp.mod466.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv373.prol = phi i64 [ %indvars.iv.next374.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv373.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.jq = trunc nuw nsw i64 %indvars.iv373.prol to i32
  %i.jr = add i32 %i.hz, %i.jq
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.js ; 2 uses
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !9
  %gep405.prol = getelementptr [8 x i8], ptr %invariant.gep404, i64 %indvars.iv373.prol
  store double %i.ju, ptr %gep405.prol, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.jt, align 8, !tbaa !9
  %indvars.iv.next374.prol = add nuw nsw i64 %indvars.iv373.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter465
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !27

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv373.unr = phi i64 [ %indvars.iv373.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next374.prol, %vec.epilog.scalar.ph.prol ]
  %i.jv = sub i64 %indvars.iv373.ph, %wide.trip.count376
  %i.jw = icmp ugt i64 %i.jv, -4
  br i1 %i.jw, label %._crit_edge359, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv373 = phi i64 [ %indvars.iv.next374.3, %vec.epilog.scalar.ph ], [ %indvars.iv373.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.jx = trunc nuw nsw i64 %indvars.iv373 to i32
  %i.jy = add i32 %i.hz, %i.jx
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.jz ; 2 uses
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !9
  %gep405 = getelementptr [8 x i8], ptr %invariant.gep404, i64 %indvars.iv373
  store double %i.kb, ptr %gep405, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.ka, align 8, !tbaa !9
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1 ; 2 uses
  %i.kc = trunc nuw nsw i64 %indvars.iv.next374 to i32
  %i.kd = add i32 %i.hz, %i.kc
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ke ; 2 uses
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !9
  %gep405.1 = getelementptr [8 x i8], ptr %invariant.gep404, i64 %indvars.iv.next374
  store double %i.kg, ptr %gep405.1, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.kf, align 8, !tbaa !9
  %indvars.iv.next374.1 = add nuw nsw i64 %indvars.iv373, 2 ; 2 uses
  %i.kh = trunc nuw nsw i64 %indvars.iv.next374.1 to i32
  %i.ki = add i32 %i.hz, %i.kh
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.kj ; 2 uses
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !9
  %gep405.2 = getelementptr [8 x i8], ptr %invariant.gep404, i64 %indvars.iv.next374.1
  store double %i.kl, ptr %gep405.2, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.kk, align 8, !tbaa !9
  %indvars.iv.next374.2 = add nuw nsw i64 %indvars.iv373, 3 ; 2 uses
  %i.km = trunc nuw nsw i64 %indvars.iv.next374.2 to i32
  %i.kn = add i32 %i.hz, %i.km
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ko ; 2 uses
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !9
  %gep405.3 = getelementptr [8 x i8], ptr %invariant.gep404, i64 %indvars.iv.next374.2
  store double %i.kq, ptr %gep405.3, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.kp, align 8, !tbaa !9
  %indvars.iv.next374.3 = add nuw nsw i64 %indvars.iv373, 4 ; 2 uses
  %exitcond377.not.3 = icmp eq i64 %indvars.iv.next374.3, %wide.trip.count376
  br i1 %exitcond377.not.3, label %._crit_edge359, label %vec.epilog.scalar.ph, !llvm.loop !28

._crit_edge359:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.l
  %i.kr = sext i32 %.pre388 to i64
  %i.ks = getelementptr [8 x i8], ptr %i.i, i64 %i.kr
  %i.kt = getelementptr i8, ptr %i.ks, i64 16
  %i.ku = getelementptr i8, ptr %i.hy, i64 8
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.hx ; 2 uses
  call void @dlarfg_(ptr noundef nonnull %i.e, ptr noundef %i.kt, ptr noundef %i.ku, ptr noundef nonnull @c__1, ptr noundef nonnull %i.kv) #5
  %i.kw = load i32, ptr %4, align 4, !tbaa !8
  %i.kx = load i32, ptr %3, align 4, !tbaa !8     ; 2 uses
  %i.ky = add i32 %i.kw, 1
  %i.kz = sub i32 %i.ky, %i.kx
  store i32 %i.kz, ptr %i.e, align 4, !tbaa !8
  %i.la = load double, ptr %i.kv, align 8, !tbaa !9
  store double %i.la, ptr %i.c, align 8, !tbaa !9
  %i.lb = load i32, ptr %10, align 4, !tbaa !8
  %i.lc = add nsw i32 %i.lb, -1
  store i32 %i.lc, ptr %i.a, align 4, !tbaa !8
  %i.ld = mul nsw i32 %i.kx, %i.g
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr [8 x i8], ptr %i.i, i64 %i.le
  %i.lg = getelementptr i8, ptr %i.lf, i64 8
  call void @dlarfy_(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.hy, ptr noundef nonnull @c__1, ptr noundef nonnull %i.c, ptr noundef %i.lg, ptr noundef nonnull %i.a, ptr noundef %14) #5
  %.pr338 = load i32, ptr %2, align 4, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge359, %bb.k
  %i.lh = phi i32 [ %.pr338, %._crit_edge359 ], [ %i.hs, %bb.k ] ; 2 uses
  %i.li = icmp eq i32 %i.lh, 3
  br i1 %i.li, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.lj = load i32, ptr %4, align 4, !tbaa !8
  %i.lk = load i32, ptr %3, align 4, !tbaa !8     ; 2 uses
  %i.ll = add i32 %i.lj, 1
  %i.lm = sub i32 %i.ll, %i.lk
  store i32 %i.lm, ptr %i.e, align 4, !tbaa !8
  %i.ln = sext i32 %i.hr to i64                   ; 2 uses
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ln
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !9
  store double %i.lp, ptr %i.c, align 8, !tbaa !9
  %i.lq = load i32, ptr %10, align 4, !tbaa !8
  %i.lr = add nsw i32 %i.lq, -1
  store i32 %i.lr, ptr %i.a, align 4, !tbaa !8
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ln
  %i.lt = mul nsw i32 %i.lk, %i.g
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr [8 x i8], ptr %i.i, i64 %i.lu
  %i.lw = getelementptr i8, ptr %i.lv, i64 8
  call void @dlarfy_(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.ls, ptr noundef nonnull @c__1, ptr noundef nonnull %i.c, ptr noundef %i.lw, ptr noundef nonnull %i.a, ptr noundef %14) #5
  %.pre384 = load i32, ptr %2, align 4, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.lx = phi i32 [ %.pre384, %bb.n ], [ %i.lh, %bb.m ]
  %i.ly = icmp eq i32 %i.lx, 2
  br i1 %i.ly, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.lz = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.ma = add i32 %i.lz, 1                        ; 3 uses
  %i.mb = load i32, ptr %7, align 4, !tbaa !8     ; 2 uses
  %i.mc = add nsw i32 %i.mb, %i.lz
  %i.md = load i32, ptr %6, align 4, !tbaa !8
  %.333 = call i32 @llvm.smin.i32(i32 %i.mc, i32 %i.md)
  %i.me = load i32, ptr %3, align 4, !tbaa !8     ; 2 uses
  %i.mf = sub i32 %i.ma, %i.me
  store i32 %i.mf, ptr %i.f, align 4, !tbaa !8
  %i.mg = sub nsw i32 %.333, %i.ma                ; 2 uses
  %i.mh = add nsw i32 %i.mg, 1
  store i32 %i.mh, ptr %i.e, align 4, !tbaa !8
  %i.mi = icmp sgt i32 %i.mg, -1
  br i1 %i.mi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.mj = load i32, ptr %10, align 4, !tbaa !8
  %i.mk = add nsw i32 %i.mj, -1
  store i32 %i.mk, ptr %i.a, align 4, !tbaa !8
  %i.ml = sext i32 %i.hr to i64                   ; 2 uses
  %i.mm = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ml
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ml
  %i.mo = add nsw i32 %i.mb, 1
  %i.mp = mul nsw i32 %i.me, %i.g
  %i.mq = add nsw i32 %i.mo, %i.mp
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.mr
  call void @dlarfx_(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.mm, ptr noundef nonnull %i.mn, ptr noundef %i.ms, ptr noundef nonnull %i.a, ptr noundef %14) #5
  %i.mt = load i32, ptr %5, align 4, !tbaa !8
  %i.mu = add nsw i32 %i.mt, -1
  %i.mv = srem i32 %i.mu, 2
  %i.mw = load i32, ptr %6, align 4, !tbaa !8
  %i.mx = mul nsw i32 %i.mv, %i.mw
  %.3 = add nsw i32 %i.mx, %i.ma
  %i.my = sext i32 %.3 to i64                     ; 4 uses
  %i.mz = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.my ; 3 uses
  store double 1.000000e+00, ptr %i.mz, align 8, !tbaa !9
  %i.na = load i32, ptr %i.e, align 4, !tbaa !8   ; 5 uses
  %i.nb = add nsw i32 %i.na, -1
  store i32 %i.nb, ptr %i.a, align 4, !tbaa !8
  %.not326.not360 = icmp sgt i32 %i.na, 1
  %.pre385 = load i32, ptr %7, align 4, !tbaa !8  ; 4 uses
  %.pre386 = load i32, ptr %3, align 4, !tbaa !8  ; 2 uses
  br i1 %.not326.not360, label %iter.check445, label %.._crit_edge364_crit_edge

.._crit_edge364_crit_edge:                        ; preds = %bb.q
  %.pre390 = add nsw i32 %.pre385, 1
  %.pre392 = mul nsw i32 %.pre386, %i.g
  %.pre394 = add nsw i32 %.pre390, %.pre392
  br label %._crit_edge364

iter.check445:                                    ; preds = %bb.q
  %i.nc = mul nsw i32 %.pre386, %i.g              ; 3 uses
  %invariant.op = add i32 %.pre385, 1
  %invariant.op365 = add i32 %invariant.op, %i.nc ; 11 uses
  %wide.trip.count381 = zext nneg i32 %i.na to i64 ; 6 uses
  %invariant.gep406 = getelementptr [8 x i8], ptr %i.j, i64 %i.my ; 7 uses
  %i.nd = add nsw i64 %wide.trip.count381, -1     ; 5 uses
  %min.iters.check430 = icmp ult i32 %i.na, 5
  br i1 %min.iters.check430, label %vec.epilog.scalar.ph446.preheader, label %vector.scevcheck421

vector.scevcheck421:                              ; preds = %iter.check445
  %i.ne = add nsw i64 %wide.trip.count381, -2     ; 2 uses
  %i.nf = add i32 %.pre385, %i.nc
  %i.ng = add i32 %i.nf, 2                        ; 2 uses
  %i.nh = trunc i64 %i.ne to i32
  %i.ni = add i32 %i.ng, %i.nh
  %i.nj = icmp slt i32 %i.ni, %i.ng
  %i.nk = icmp ugt i64 %i.ne, 4294967295
  %i.nl = or i1 %i.nj, %i.nk
  br i1 %i.nl, label %vec.epilog.scalar.ph446.preheader, label %vector.memcheck422

vector.memcheck422:                               ; preds = %vector.scevcheck421
  %i.nm = shl nsw i64 %i.my, 3                    ; 2 uses
  %scevgep423 = getelementptr i8, ptr %11, i64 %i.nm
  %i.nn = shl nuw nsw i64 %wide.trip.count381, 3  ; 2 uses
  %i.no = getelementptr i8, ptr %11, i64 %i.nm
  %i.np = getelementptr i8, ptr %i.no, i64 %i.nn
  %scevgep424 = getelementptr i8, ptr %i.np, i64 -8
  %i.nq = add i32 %.pre385, %i.nc
  %i.nr = add i32 %i.nq, 2
  %i.ns = sext i32 %i.nr to i64
  %17 = add nsw i64 %i.ns, %i.h
  %i.nt = shl nsw i64 %17, 3                      ; 2 uses
  %scevgep425.a = getelementptr i8, ptr %9, i64 %i.nt
  %i.nu = getelementptr i8, ptr %9, i64 %i.nt
  %i.nv = getelementptr i8, ptr %i.nu, i64 %i.nn
  %scevgep426 = getelementptr i8, ptr %i.nv, i64 -8
  %bound0427 = icmp ult ptr %scevgep423, %scevgep426
  %bound1428 = icmp ult ptr %scevgep425.a, %scevgep424
  %found.conflict429 = and i1 %bound0427, %bound1428
  br i1 %found.conflict429, label %vec.epilog.scalar.ph446.preheader, label %vector.main.loop.iter.check431

vector.main.loop.iter.check431:                   ; preds = %vector.memcheck422
  %min.iters.check432 = icmp ult i32 %i.na, 17
  br i1 %min.iters.check432, label %vec.epilog.ph449, label %vector.ph433

vector.ph433:                                     ; preds = %vector.main.loop.iter.check431
  %i.nw = and i64 %i.nd, 12
  %n.vec434 = and i64 %i.nd, -16                  ; 4 uses
  %i.nx = or disjoint i64 %n.vec434, 1
  br label %vector.body435

vector.body435:                                   ; preds = %vector.body435, %vector.ph433
  %index436 = phi i64 [ 0, %vector.ph433 ], [ %index.next441, %vector.body435 ] ; 2 uses
  %i.ny = or disjoint i64 %index436, 1            ; 2 uses
  %i.nz = trunc nuw nsw i64 %i.ny to i32
  %i.oa = add i32 %invariant.op365, %i.nz
  %i.ob = sext i32 %i.oa to i64
  %i.oc = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ob ; 5 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 32 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 64 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 96 ; 2 uses
  %wide.load437 = load <4 x double>, ptr %i.oc, align 8, !tbaa !9, !alias.scope !29
  %wide.load438 = load <4 x double>, ptr %i.od, align 8, !tbaa !9, !alias.scope !29
  %wide.load439 = load <4 x double>, ptr %i.oe, align 8, !tbaa !9, !alias.scope !29
  %wide.load440 = load <4 x double>, ptr %i.of, align 8, !tbaa !9, !alias.scope !29
  %i.og = getelementptr [8 x i8], ptr %invariant.gep406, i64 %i.ny ; 4 uses
  %i.oh = getelementptr i8, ptr %i.og, i64 32
  %i.oi = getelementptr i8, ptr %i.og, i64 64
  %i.oj = getelementptr i8, ptr %i.og, i64 96
  store <4 x double> %wide.load437, ptr %i.og, align 8, !tbaa !9, !alias.scope !32, !noalias !29
  store <4 x double> %wide.load438, ptr %i.oh, align 8, !tbaa !9, !alias.scope !32, !noalias !29
  store <4 x double> %wide.load439, ptr %i.oi, align 8, !tbaa !9, !alias.scope !32, !noalias !29
  store <4 x double> %wide.load440, ptr %i.oj, align 8, !tbaa !9, !alias.scope !32, !noalias !29
  store <4 x double> zeroinitializer, ptr %i.oc, align 8, !tbaa !9, !alias.scope !29
  store <4 x double> zeroinitializer, ptr %i.od, align 8, !tbaa !9, !alias.scope !29
  store <4 x double> zeroinitializer, ptr %i.oe, align 8, !tbaa !9, !alias.scope !29
  store <4 x double> zeroinitializer, ptr %i.of, align 8, !tbaa !9, !alias.scope !29
  %index.next441 = add nuw i64 %index436, 16      ; 2 uses
  %i.ok = icmp eq i64 %index.next441, %n.vec434
  br i1 %i.ok, label %middle.block442, label %vector.body435, !llvm.loop !34

middle.block442:                                  ; preds = %vector.body435
  %cmp.n443 = icmp eq i64 %i.nd, %n.vec434
  br i1 %cmp.n443, label %._crit_edge364, label %vec.epilog.iter.check447

vec.epilog.iter.check447:                         ; preds = %middle.block442
  %min.epilog.iters.check448 = icmp eq i64 %i.nw, 0
  br i1 %min.epilog.iters.check448, label %vec.epilog.scalar.ph446.preheader, label %vec.epilog.ph449, !prof !25

vec.epilog.ph449:                                 ; preds = %vector.main.loop.iter.check431, %vec.epilog.iter.check447
  %vec.epilog.resume.val444 = phi i64 [ %n.vec434, %vec.epilog.iter.check447 ], [ 0, %vector.main.loop.iter.check431 ]
  %n.vec450 = and i64 %i.nd, -4                   ; 3 uses
  %i.ol = or disjoint i64 %n.vec450, 1
  br label %vec.epilog.vector.body451

vec.epilog.vector.body451:                        ; preds = %vec.epilog.vector.body451, %vec.epilog.ph449
  %index452 = phi i64 [ %vec.epilog.resume.val444, %vec.epilog.ph449 ], [ %index.next454, %vec.epilog.vector.body451 ] ; 2 uses
  %i.om = or disjoint i64 %index452, 1            ; 2 uses
  %i.on = trunc nuw nsw i64 %i.om to i32
  %i.oo = add i32 %invariant.op365, %i.on
  %i.op = sext i32 %i.oo to i64
  %i.oq = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.op ; 2 uses
  %wide.load453 = load <4 x double>, ptr %i.oq, align 8, !tbaa !9, !alias.scope !29
  %i.or = getelementptr [8 x i8], ptr %invariant.gep406, i64 %i.om
  store <4 x double> %wide.load453, ptr %i.or, align 8, !tbaa !9, !alias.scope !32, !noalias !29
  store <4 x double> zeroinitializer, ptr %i.oq, align 8, !tbaa !9, !alias.scope !29
  %index.next454 = add nuw i64 %index452, 4       ; 2 uses
  %i.os = icmp eq i64 %index.next454, %n.vec450
  br i1 %i.os, label %vec.epilog.middle.block455, label %vec.epilog.vector.body451, !llvm.loop !35

vec.epilog.middle.block455:                       ; preds = %vec.epilog.vector.body451
  %cmp.n456 = icmp eq i64 %i.nd, %n.vec450
  br i1 %cmp.n456, label %._crit_edge364, label %vec.epilog.scalar.ph446.preheader

vec.epilog.scalar.ph446.preheader:                ; preds = %vector.memcheck422, %vector.scevcheck421, %iter.check445, %vec.epilog.iter.check447, %vec.epilog.middle.block455
  %indvars.iv378.ph = phi i64 [ 1, %iter.check445 ], [ 1, %vector.scevcheck421 ], [ 1, %vector.memcheck422 ], [ %i.nx, %vec.epilog.iter.check447 ], [ %i.ol, %vec.epilog.middle.block455 ] ; 4 uses
  %i.ot = sub i64 %wide.trip.count381, %indvars.iv378.ph
  %xtraiter467 = and i64 %i.ot, 3                 ; 2 uses
  %lcmp.mod468.not = icmp eq i64 %xtraiter467, 0
  br i1 %lcmp.mod468.not, label %vec.epilog.scalar.ph446.prol.loopexit, label %vec.epilog.scalar.ph446.prol

vec.epilog.scalar.ph446.prol:                     ; preds = %vec.epilog.scalar.ph446.preheader, %vec.epilog.scalar.ph446.prol
  %indvars.iv378.prol = phi i64 [ %indvars.iv.next379.prol, %vec.epilog.scalar.ph446.prol ], [ %indvars.iv378.ph, %vec.epilog.scalar.ph446.preheader ] ; 3 uses
  %prol.iter469 = phi i64 [ %prol.iter469.next, %vec.epilog.scalar.ph446.prol ], [ 0, %vec.epilog.scalar.ph446.preheader ]
  %i.ou = trunc nuw nsw i64 %indvars.iv378.prol to i32
  %.reass366.prol = add i32 %invariant.op365, %i.ou
  %i.ov = sext i32 %.reass366.prol to i64
  %i.ow = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ov ; 2 uses
  %i.ox = load double, ptr %i.ow, align 8, !tbaa !9
  %gep407.prol = getelementptr [8 x i8], ptr %invariant.gep406, i64 %indvars.iv378.prol
  store double %i.ox, ptr %gep407.prol, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.ow, align 8, !tbaa !9
  %indvars.iv.next379.prol = add nuw nsw i64 %indvars.iv378.prol, 1 ; 2 uses
  %prol.iter469.next = add i64 %prol.iter469, 1   ; 2 uses
  %prol.iter469.cmp.not = icmp eq i64 %prol.iter469.next, %xtraiter467
  br i1 %prol.iter469.cmp.not, label %vec.epilog.scalar.ph446.prol.loopexit, label %vec.epilog.scalar.ph446.prol, !llvm.loop !36

vec.epilog.scalar.ph446.prol.loopexit:            ; preds = %vec.epilog.scalar.ph446.prol, %vec.epilog.scalar.ph446.preheader
  %indvars.iv378.unr = phi i64 [ %indvars.iv378.ph, %vec.epilog.scalar.ph446.preheader ], [ %indvars.iv.next379.prol, %vec.epilog.scalar.ph446.prol ]
  %i.oy = sub i64 %indvars.iv378.ph, %wide.trip.count381
  %i.oz = icmp ugt i64 %i.oy, -4
  br i1 %i.oz, label %._crit_edge364, label %vec.epilog.scalar.ph446

vec.epilog.scalar.ph446:                          ; preds = %vec.epilog.scalar.ph446.prol.loopexit, %vec.epilog.scalar.ph446
  %indvars.iv378 = phi i64 [ %indvars.iv.next379.3, %vec.epilog.scalar.ph446 ], [ %indvars.iv378.unr, %vec.epilog.scalar.ph446.prol.loopexit ] ; 6 uses
  %i.pa = trunc nuw nsw i64 %indvars.iv378 to i32
  %.reass366 = add i32 %invariant.op365, %i.pa
  %i.pb = sext i32 %.reass366 to i64
  %i.pc = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.pb ; 2 uses
  %i.pd = load double, ptr %i.pc, align 8, !tbaa !9
  %gep407 = getelementptr [8 x i8], ptr %invariant.gep406, i64 %indvars.iv378
  store double %i.pd, ptr %gep407, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.pc, align 8, !tbaa !9
  %indvars.iv.next379 = add nuw nsw i64 %indvars.iv378, 1 ; 2 uses
  %i.pe = trunc nuw nsw i64 %indvars.iv.next379 to i32
  %.reass366.1 = add i32 %invariant.op365, %i.pe
  %i.pf = sext i32 %.reass366.1 to i64
  %i.pg = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.pf ; 2 uses
  %i.ph = load double, ptr %i.pg, align 8, !tbaa !9
  %gep407.1 = getelementptr [8 x i8], ptr %invariant.gep406, i64 %indvars.iv.next379
  store double %i.ph, ptr %gep407.1, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.pg, align 8, !tbaa !9
  %indvars.iv.next379.1 = add nuw nsw i64 %indvars.iv378, 2 ; 2 uses
  %i.pi = trunc nuw nsw i64 %indvars.iv.next379.1 to i32
  %.reass366.2 = add i32 %invariant.op365, %i.pi
  %i.pj = sext i32 %.reass366.2 to i64
  %i.pk = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.pj ; 2 uses
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !9
  %gep407.2 = getelementptr [8 x i8], ptr %invariant.gep406, i64 %indvars.iv.next379.1
  store double %i.pl, ptr %gep407.2, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.pk, align 8, !tbaa !9
  %indvars.iv.next379.2 = add nuw nsw i64 %indvars.iv378, 3 ; 2 uses
  %i.pm = trunc nuw nsw i64 %indvars.iv.next379.2 to i32
  %.reass366.3 = add i32 %invariant.op365, %i.pm
  %i.pn = sext i32 %.reass366.3 to i64
  %i.po = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.pn ; 2 uses
  %i.pp = load double, ptr %i.po, align 8, !tbaa !9
  %gep407.3 = getelementptr [8 x i8], ptr %invariant.gep406, i64 %indvars.iv.next379.2
  store double %i.pp, ptr %gep407.3, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.po, align 8, !tbaa !9
  %indvars.iv.next379.3 = add nuw nsw i64 %indvars.iv378, 4 ; 2 uses
  %exitcond382.not.3 = icmp eq i64 %indvars.iv.next379.3, %wide.trip.count381
  br i1 %exitcond382.not.3, label %._crit_edge364, label %vec.epilog.scalar.ph446, !llvm.loop !37

._crit_edge364:                                   ; preds = %vec.epilog.scalar.ph446.prol.loopexit, %vec.epilog.scalar.ph446, %middle.block442, %vec.epilog.middle.block455, %.._crit_edge364_crit_edge
  %.pre-phi395 = phi i32 [ %.pre394, %.._crit_edge364_crit_edge ], [ %invariant.op365, %middle.block442 ], [ %invariant.op365, %vec.epilog.middle.block455 ], [ %invariant.op365, %vec.epilog.scalar.ph446 ], [ %invariant.op365, %vec.epilog.scalar.ph446.prol.loopexit ]
  %i.pq = sext i32 %.pre-phi395 to i64
  %i.pr = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.pq
  %i.ps = getelementptr i8, ptr %i.mz, i64 8
  %i.pt = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.my ; 2 uses
  call void @dlarfg_(ptr noundef nonnull %i.e, ptr noundef %i.pr, ptr noundef %i.ps, ptr noundef nonnull @c__1, ptr noundef nonnull %i.pt) #5
  %i.pu = load i32, ptr %i.f, align 4, !tbaa !8
  %i.pv = add nsw i32 %i.pu, -1
  store i32 %i.pv, ptr %i.a, align 4, !tbaa !8
  %i.pw = load double, ptr %i.pt, align 8, !tbaa !9
  store double %i.pw, ptr %i.c, align 8, !tbaa !9
  %i.px = load i32, ptr %10, align 4, !tbaa !8
  %i.py = add nsw i32 %i.px, -1
  store i32 %i.py, ptr %i.b, align 4, !tbaa !8
  %i.pz = load i32, ptr %7, align 4, !tbaa !8
  %i.qa = load i32, ptr %3, align 4, !tbaa !8
  %i.qb = add nsw i32 %i.qa, 1
  %i.qc = mul nsw i32 %i.qb, %i.g
  %i.qd = add nsw i32 %i.qc, %i.pz
  %i.qe = sext i32 %i.qd to i64
  %i.qf = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.qe
  call void @dlarfx_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.mz, ptr noundef nonnull %i.c, ptr noundef %i.qf, ptr noundef nonnull %i.b, ptr noundef %14) #5
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %._crit_edge364, %bb.p, %bb.f, %._crit_edge354, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlarfg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlarfy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlarfx_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4
end_hunk_0
