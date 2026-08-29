Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_filmicrgb?download=true
inline.NumInlined: 325
inline.NumDeleted: 106
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 80
begin_hunk_0_@gauss_solve:bb.a
  %min.iters.check = icmp ult i64 %i.an, 4
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %scevgep2, %scevgep1
  %found.conflict = and i1 %bound0, %bound1
  %bound06 = icmp ult ptr %scevgep, %scevgep5
  %bound17 = icmp ult ptr %scevgep4, %scevgep1
  %found.conflict8 = and i1 %bound06, %bound17
  %conflict.rdx = or i1 %found.conflict, %found.conflict8
  %min.iters.check9 = icmp ult i64 %i.an, 16
  %i.fa = and i64 %i.an, 12
  %n.vec = and i64 %i.an, -16                     ; 4 uses
  %i.fb = add i64 %indvars.iv.i, %n.vec
  %cmp.n = icmp eq i64 %i.an, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.fa, 0
  %n.vec17 = and i64 %i.an, -4                    ; 3 uses
  %i.fc = add i64 %indvars.iv.i, %n.vec17
  %cmp.n24 = icmp eq i64 %i.an, %n.vec17
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge121.i, %.preheader.preheader.i
  %indvars.iv142.i = phi i64 [ %indvars.iv.i, %.preheader.preheader.i ], [ %indvars.iv.next143.i, %._crit_edge121.i ] ; 2 uses
  %i.fd = mul nuw nsw i64 %indvars.iv142.i, %i.g  ; 2 uses
  %gep166.i = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.fd ; 7 uses
  %invariant.gep163.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fd ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fe = load double, ptr %gep166.i, align 8, !tbaa !383, !alias.scope !509
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.fe, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ff = add nuw i64 %indvars.iv.i, %index       ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161.i, i64 %i.ff ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 96
  %wide.load = load <4 x double>, ptr %i.fg, align 8, !tbaa !383, !alias.scope !512
  %wide.load10 = load <4 x double>, ptr %i.fh, align 8, !tbaa !383, !alias.scope !512
  %wide.load11 = load <4 x double>, ptr %i.fi, align 8, !tbaa !383, !alias.scope !512
  %wide.load12 = load <4 x double>, ptr %i.fj, align 8, !tbaa !383, !alias.scope !512
  %i.fk = fmul reassoc nsz arcp contract afn <4 x double> %wide.load, %broadcast.splat
  %i.fl = fmul reassoc nsz arcp contract afn <4 x double> %wide.load10, %broadcast.splat
  %i.fm = fmul reassoc nsz arcp contract afn <4 x double> %wide.load11, %broadcast.splat
  %i.fn = fmul reassoc nsz arcp contract afn <4 x double> %wide.load12, %broadcast.splat
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep163.i, i64 %i.ff ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 32 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 64 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 96 ; 2 uses
  %wide.load13 = load <4 x double>, ptr %i.fo, align 8, !tbaa !383, !alias.scope !514, !noalias !516
  %wide.load14 = load <4 x double>, ptr %i.fp, align 8, !tbaa !383, !alias.scope !514, !noalias !516
  %wide.load15 = load <4 x double>, ptr %i.fq, align 8, !tbaa !383, !alias.scope !514, !noalias !516
  %wide.load16 = load <4 x double>, ptr %i.fr, align 8, !tbaa !383, !alias.scope !514, !noalias !516
  %i.fs = fadd reassoc nsz arcp contract afn <4 x double> %wide.load13, %i.fk
  %i.ft = fadd reassoc nsz arcp contract afn <4 x double> %wide.load14, %i.fl
  %i.fu = fadd reassoc nsz arcp contract afn <4 x double> %wide.load15, %i.fm
  %i.fv = fadd reassoc nsz arcp contract afn <4 x double> %wide.load16, %i.fn
  store <4 x double> %i.fs, ptr %i.fo, align 8, !tbaa !383, !alias.scope !514, !noalias !516
  store <4 x double> %i.ft, ptr %i.fp, align 8, !tbaa !383, !alias.scope !514, !noalias !516
  store <4 x double> %i.fu, ptr %i.fq, align 8, !tbaa !383, !alias.scope !514, !noalias !516
  store <4 x double> %i.fv, ptr %i.fr, align 8, !tbaa !383, !alias.scope !514, !noalias !516
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fw = icmp eq i64 %index.next, %n.vec
  br i1 %i.fw, label %middle.block, label %vector.body, !llvm.loop !517

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge121.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !518

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.fx = load double, ptr %gep166.i, align 8, !tbaa !383, !alias.scope !509
  %broadcast.splatinsert20 = insertelement <4 x double> poison, double %i.fx, i64 0
  %broadcast.splat21 = shufflevector <4 x double> %broadcast.splatinsert20, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 2 uses
  %i.fy = add nuw i64 %indvars.iv.i, %index18     ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161.i, i64 %i.fy
  %wide.load19 = load <4 x double>, ptr %i.fz, align 8, !tbaa !383, !alias.scope !512
  %i.ga = fmul reassoc nsz arcp contract afn <4 x double> %wide.load19, %broadcast.splat21
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep163.i, i64 %i.fy ; 2 uses
  %wide.load22 = load <4 x double>, ptr %i.gb, align 8, !tbaa !383, !alias.scope !514, !noalias !516
  %i.gc = fadd reassoc nsz arcp contract afn <4 x double> %wide.load22, %i.ga
  store <4 x double> %i.gc, ptr %i.gb, align 8, !tbaa !383, !alias.scope !514, !noalias !516
  %index.next23 = add nuw i64 %index18, 4         ; 2 uses
  %i.gd = icmp eq i64 %index.next23, %n.vec17
  br i1 %i.gd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !519

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n24, label %._crit_edge121.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv137.i.ph = phi i64 [ %indvars.iv.i, %iter.check ], [ %i.fc, %vec.epilog.middle.block ], [ %i.fb, %vec.epilog.iter.check ] ; 4 uses
  %i.ge = sub i64 %i.g, %indvars.iv137.i.ph
  %xtraiter87 = and i64 %i.ge, 3                  ; 2 uses
  %lcmp.mod88.not = icmp eq i64 %xtraiter87, 0
  br i1 %lcmp.mod88.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv137.i.prol = phi i64 [ %indvars.iv.next138.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv137.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter89 = phi i64 [ %prol.iter89.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.gf = load double, ptr %gep166.i, align 8, !tbaa !383
  %gep162.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161.i, i64 %indvars.iv137.i.prol
  %i.gg = load double, ptr %gep162.i.prol, align 8, !tbaa !383
  %i.gh = fmul reassoc nsz arcp contract afn double %i.gg, %i.gf
  %gep164.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep163.i, i64 %indvars.iv137.i.prol ; 2 uses
  %i.gi = load double, ptr %gep164.i.prol, align 8, !tbaa !383
  %i.gj = fadd reassoc nsz arcp contract afn double %i.gi, %i.gh
  store double %i.gj, ptr %gep164.i.prol, align 8, !tbaa !383
  %indvars.iv.next138.i.prol = add nuw nsw i64 %indvars.iv137.i.prol, 1 ; 2 uses
  %prol.iter89.next = add i64 %prol.iter89, 1     ; 2 uses
  %prol.iter89.cmp.not = icmp eq i64 %prol.iter89.next, %xtraiter87
  br i1 %prol.iter89.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !520

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv137.i.unr = phi i64 [ %indvars.iv137.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next138.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.gk = sub i64 %indvars.iv137.i.ph, %i.g
  %i.gl = icmp ugt i64 %i.gk, -4
  br i1 %i.gl, label %._crit_edge121.i, label %vec.epilog.scalar.ph

._crit_edge121.i:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next143.i = add nuw nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %exitcond146.not.i = icmp eq i64 %indvars.iv.next143.i, %i.g
  br i1 %exitcond146.not.i, label %.loopexit.i, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv137.i = phi i64 [ %indvars.iv.next138.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv137.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.gm = load double, ptr %gep166.i, align 8, !tbaa !383
  %gep162.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161.i, i64 %indvars.iv137.i
  %i.gn = load double, ptr %gep162.i, align 8, !tbaa !383
  %i.go = fmul reassoc nsz arcp contract afn double %i.gn, %i.gm
  %gep164.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep163.i, i64 %indvars.iv137.i ; 2 uses
  %i.gp = load double, ptr %gep164.i, align 8, !tbaa !383
  %i.gq = fadd reassoc nsz arcp contract afn double %i.gp, %i.go
  store double %i.gq, ptr %gep164.i, align 8, !tbaa !383
  %indvars.iv.next138.i = add nuw nsw i64 %indvars.iv137.i, 1 ; 2 uses
  %i.gr = load double, ptr %gep166.i, align 8, !tbaa !383
  %gep162.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161.i, i64 %indvars.iv.next138.i
  %i.gs = load double, ptr %gep162.i.1, align 8, !tbaa !383
  %i.gt = fmul reassoc nsz arcp contract afn double %i.gs, %i.gr
  %gep164.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep163.i, i64 %indvars.iv.next138.i ; 2 uses
  %i.gu = load double, ptr %gep164.i.1, align 8, !tbaa !383
  %i.gv = fadd reassoc nsz arcp contract afn double %i.gu, %i.gt
  store double %i.gv, ptr %gep164.i.1, align 8, !tbaa !383
  %indvars.iv.next138.i.1 = add nuw nsw i64 %indvars.iv137.i, 2 ; 2 uses
  %i.gw = load double, ptr %gep166.i, align 8, !tbaa !383
  %gep162.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161.i, i64 %indvars.iv.next138.i.1
  %i.gx = load double, ptr %gep162.i.2, align 8, !tbaa !383
  %i.gy = fmul reassoc nsz arcp contract afn double %i.gx, %i.gw
  %gep164.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep163.i, i64 %indvars.iv.next138.i.1 ; 2 uses
  %i.gz = load double, ptr %gep164.i.2, align 8, !tbaa !383
  %i.ha = fadd reassoc nsz arcp contract afn double %i.gz, %i.gy
  store double %i.ha, ptr %gep164.i.2, align 8, !tbaa !383
  %indvars.iv.next138.i.2 = add nuw nsw i64 %indvars.iv137.i, 3 ; 2 uses
  %i.hb = load double, ptr %gep166.i, align 8, !tbaa !383
  %gep162.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep161.i, i64 %indvars.iv.next138.i.2
  %i.hc = load double, ptr %gep162.i.3, align 8, !tbaa !383
  %i.hd = fmul reassoc nsz arcp contract afn double %i.hc, %i.hb
  %gep164.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep163.i, i64 %indvars.iv.next138.i.2 ; 2 uses
  %i.he = load double, ptr %gep164.i.3, align 8, !tbaa !383
  %i.hf = fadd reassoc nsz arcp contract afn double %i.he, %i.hd
  store double %i.hf, ptr %gep164.i.3, align 8, !tbaa !383
  %indvars.iv.next138.i.3 = add nuw nsw i64 %indvars.iv137.i, 4 ; 2 uses
  %exitcond141.not.i.3 = icmp eq i64 %indvars.iv.next138.i.3, %i.g
  br i1 %exitcond141.not.i.3, label %._crit_edge121.i, label %vec.epilog.scalar.ph, !llvm.loop !521

.loopexit.i15:                                    ; preds = %.lr.ph.i12.prol.loopexit, %.lr.ph.i12, %vector.ph59
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 2 uses
  %indvars.iv.next.i16 = add nuw nsw i64 %indvars.iv.i10, 1
  %exitcond67.not.i = icmp eq i64 %indvars.iv.next64.i, %i.e
  br i1 %exitcond67.not.i, label %.lr.ph58.i, label %.lr.ph.preheader.i9

.lr.ph58.i:                                       ; preds = %.loopexit.i15
  %i.hg = add nuw nsw i32 %2, 1
  %i.hh = zext nneg i32 %i.hg to i64              ; 4 uses
  %i.hi = mul nuw nsw i64 %i.e, %i.hh
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.hi
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !383
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e ; 2 uses
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !383
  %i.hn = fdiv reassoc nsz arcp contract afn double %i.hm, %i.hk ; 6 uses
  store double %i.hn, ptr %i.hl, align 8, !tbaa !383
  %invariant.gep76.i = getelementptr [8 x i8], ptr %0, i64 %i.e ; 5 uses
  %xtraiter93 = and i64 %i.e, 3                   ; 3 uses
  %.not = icmp eq i32 %2, 5
  br i1 %.not, label %.new, label %.epil.preheader

.lr.ph.preheader.i9:                              ; preds = %.lr.ph.preheader.i9.preheader, %.loopexit.i15
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i, %.loopexit.i15 ], [ 0, %.lr.ph.preheader.i9.preheader ] ; 7 uses
  %indvars.iv.i10 = phi i64 [ %indvars.iv.next.i16, %.loopexit.i15 ], [ 1, %.lr.ph.preheader.i9.preheader ] ; 6 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv63.i
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !24
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [8 x i8], ptr %1, i64 %i.hq ; 2 uses
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !383 ; 7 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv63.i ; 2 uses
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !383
  store double %i.hu, ptr %i.hr, align 8, !tbaa !383
  store double %i.hs, ptr %i.ht, align 8, !tbaa !383
  %invariant.gep.i11 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv63.i ; 6 uses
  %3 = xor i64 %indvars.iv63.i, -1
  %4 = add nsw i64 %3, %i.g                       ; 3 uses
  %min.iters.check58 = icmp ult i64 %4, 4
  br i1 %min.iters.check58, label %.lr.ph.i12.preheader, label %vector.memcheck48

vector.memcheck48:                                ; preds = %.lr.ph.preheader.i9
  %i.hv = shl nuw nsw i64 %indvars.iv63.i, 3      ; 2 uses
  %scevgep51 = getelementptr i8, ptr %i.ac, i64 %i.hv ; 4 uses
  %i.hw = mul i64 %i.ab, %indvars.iv63.i
  %scevgep52 = getelementptr i8, ptr %i.ad, i64 %i.hw ; 4 uses
  %i.hx = icmp ugt ptr %scevgep51, %scevgep52
  %umax = select i1 %i.hx, ptr %scevgep51, ptr %scevgep52
  %scevgep53 = getelementptr i8, ptr %umax, i64 8
  %i.hy = icmp ult ptr %scevgep51, %scevgep52
  %umin = select i1 %i.hy, ptr %scevgep51, ptr %scevgep52
  %i.hz = getelementptr nuw i8, ptr %1, i64 %i.hv
  %scevgep49 = getelementptr nuw i8, ptr %i.hz, i64 8
  %bound054 = icmp ult ptr %scevgep49, %scevgep53
  %bound155 = icmp ult ptr %umin, %scevgep50
  %found.conflict56 = and i1 %bound054, %bound155
  br i1 %found.conflict56, label %.lr.ph.i12.preheader, label %vector.ph59

vector.ph59:                                      ; preds = %vector.memcheck48
  %n.vec60 = and i64 %4, -4                       ; 2 uses
  %i.ia = add i64 %indvars.iv.i10, %n.vec60
  %broadcast.splatinsert65 = insertelement <4 x i64> poison, i64 %indvars.iv.i10, i64 0
  %broadcast.splat66 = shufflevector <4 x i64> %broadcast.splatinsert65, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat66, <i64 0, i64 1, i64 2, i64 3>
  %broadcast.splatinsert61 = insertelement <4 x double> poison, double %i.hs, i64 0
  %broadcast.splat62 = shufflevector <4 x double> %broadcast.splatinsert61, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ib = mul nuw nsw <4 x i64> %induction, %broadcast.splat64
  %wide.gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i11, <4 x i64> %i.ib
  %wide.masked.gather = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !383, !alias.scope !522
  %i.ic = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather, %broadcast.splat62
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i10 ; 2 uses
  %wide.load68 = load <4 x double>, ptr %i.id, align 8, !tbaa !383, !alias.scope !525, !noalias !522
  %i.ie = fadd reassoc nsz arcp contract afn <4 x double> %wide.load68, %i.ic
  store <4 x double> %i.ie, ptr %i.id, align 8, !tbaa !383, !alias.scope !525, !noalias !522
  %cmp.n70 = icmp eq i64 %4, %n.vec60
  br i1 %cmp.n70, label %.loopexit.i15, label %.lr.ph.i12.preheader

.lr.ph.i12.preheader:                             ; preds = %vector.memcheck48, %.lr.ph.preheader.i9, %vector.ph59
  %indvars.iv60.i.ph = phi i64 [ %indvars.iv.i10, %vector.memcheck48 ], [ %indvars.iv.i10, %.lr.ph.preheader.i9 ], [ %i.ia, %vector.ph59 ] ; 4 uses
  %i.if = sub i64 %i.g, %indvars.iv60.i.ph
  %xtraiter90 = and i64 %i.if, 3                  ; 2 uses
  %lcmp.mod91.not = icmp eq i64 %xtraiter90, 0
  br i1 %lcmp.mod91.not, label %.lr.ph.i12.prol.loopexit, label %.lr.ph.i12.prol

.lr.ph.i12.prol:                                  ; preds = %.lr.ph.i12.preheader, %.lr.ph.i12.prol
  %indvars.iv60.i.prol = phi i64 [ %indvars.iv.next61.i.prol, %.lr.ph.i12.prol ], [ %indvars.iv60.i.ph, %.lr.ph.i12.preheader ] ; 3 uses
  %prol.iter92 = phi i64 [ %prol.iter92.next, %.lr.ph.i12.prol ], [ 0, %.lr.ph.i12.preheader ]
  %i.ig = mul nuw nsw i64 %indvars.iv60.i.prol, %i.g
  %gep.i13.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i11, i64 %i.ig
  %i.ih = load double, ptr %gep.i13.prol, align 8, !tbaa !383
  %i.ii = fmul reassoc nsz arcp contract afn double %i.ih, %i.hs
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv60.i.prol ; 2 uses
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !383
  %i.il = fadd reassoc nsz arcp contract afn double %i.ik, %i.ii
  store double %i.il, ptr %i.ij, align 8, !tbaa !383
  %indvars.iv.next61.i.prol = add nuw nsw i64 %indvars.iv60.i.prol, 1 ; 2 uses
  %prol.iter92.next = add i64 %prol.iter92, 1     ; 2 uses
  %prol.iter92.cmp.not = icmp eq i64 %prol.iter92.next, %xtraiter90
  br i1 %prol.iter92.cmp.not, label %.lr.ph.i12.prol.loopexit, label %.lr.ph.i12.prol, !llvm.loop !527

.lr.ph.i12.prol.loopexit:                         ; preds = %.lr.ph.i12.prol, %.lr.ph.i12.preheader
  %indvars.iv60.i.unr = phi i64 [ %indvars.iv60.i.ph, %.lr.ph.i12.preheader ], [ %indvars.iv.next61.i.prol, %.lr.ph.i12.prol ]
  %i.im = sub i64 %indvars.iv60.i.ph, %i.g
  %i.in = icmp ugt i64 %i.im, -4
  br i1 %i.in, label %.loopexit.i15, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %.lr.ph.i12.prol.loopexit, %.lr.ph.i12
  %indvars.iv60.i = phi i64 [ %indvars.iv.next61.i.3, %.lr.ph.i12 ], [ %indvars.iv60.i.unr, %.lr.ph.i12.prol.loopexit ] ; 6 uses
  %i.io = mul nuw nsw i64 %indvars.iv60.i, %i.g
  %gep.i13 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i11, i64 %i.io
  %i.ip = load double, ptr %gep.i13, align 8, !tbaa !383
  %i.iq = fmul reassoc nsz arcp contract afn double %i.ip, %i.hs
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv60.i ; 2 uses
  %i.is = load double, ptr %i.ir, align 8, !tbaa !383
  %i.it = fadd reassoc nsz arcp contract afn double %i.is, %i.iq
  store double %i.it, ptr %i.ir, align 8, !tbaa !383
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1 ; 2 uses
  %i.iu = mul nuw nsw i64 %indvars.iv.next61.i, %i.g
  %gep.i13.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i11, i64 %i.iu
  %i.iv = load double, ptr %gep.i13.1, align 8, !tbaa !383
  %i.iw = fmul reassoc nsz arcp contract afn double %i.iv, %i.hs
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next61.i ; 2 uses
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !383
  %i.iz = fadd reassoc nsz arcp contract afn double %i.iy, %i.iw
  store double %i.iz, ptr %i.ix, align 8, !tbaa !383
  %indvars.iv.next61.i.1 = add nuw nsw i64 %indvars.iv60.i, 2 ; 2 uses
  %i.ja = mul nuw nsw i64 %indvars.iv.next61.i.1, %i.g
  %gep.i13.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i11, i64 %i.ja
  %i.jb = load double, ptr %gep.i13.2, align 8, !tbaa !383
  %i.jc = fmul reassoc nsz arcp contract afn double %i.jb, %i.hs
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next61.i.1 ; 2 uses
  %i.je = load double, ptr %i.jd, align 8, !tbaa !383
  %i.jf = fadd reassoc nsz arcp contract afn double %i.je, %i.jc
  store double %i.jf, ptr %i.jd, align 8, !tbaa !383
  %indvars.iv.next61.i.2 = add nuw nsw i64 %indvars.iv60.i, 3 ; 2 uses
  %i.jg = mul nuw nsw i64 %indvars.iv.next61.i.2, %i.g
  %gep.i13.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i11, i64 %i.jg
  %i.jh = load double, ptr %gep.i13.3, align 8, !tbaa !383
  %i.ji = fmul reassoc nsz arcp contract afn double %i.jh, %i.hs
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next61.i.2 ; 2 uses
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !383
  %i.jl = fadd reassoc nsz arcp contract afn double %i.jk, %i.ji
  store double %i.jl, ptr %i.jj, align 8, !tbaa !383
  %indvars.iv.next61.i.3 = add nuw nsw i64 %indvars.iv60.i, 4 ; 2 uses
  %exitcond.not.i14.3 = icmp eq i64 %indvars.iv.next61.i.3, %i.g
  br i1 %exitcond.not.i14.3, label %.loopexit.i15, label %.lr.ph.i12, !llvm.loop !528

.unr-lcssa:                                       ; preds = %.new
  %lcmp.mod94.not = icmp eq i64 %xtraiter93, 0
  br i1 %lcmp.mod94.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph58.i
  %indvars.iv68.i.epil.init = phi i64 [ 0, %.lr.ph58.i ], [ %indvars.iv.next69.i.3, %.unr-lcssa ]
  %lcmp.mod95 = icmp ne i64 %xtraiter93, 0
  tail call void @llvm.assume(i1 %lcmp.mod95)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv68.i.epil = phi i64 [ %indvars.iv68.i.epil.init, %.epil.preheader ], [ %indvars.iv.next69.i.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.jm = mul nuw nsw i64 %indvars.iv68.i.epil, %i.g
  %gep77.i.epil = getelementptr [8 x i8], ptr %invariant.gep76.i, i64 %i.jm
  %i.jn = load double, ptr %gep77.i.epil, align 8, !tbaa !383
  %i.jo = fmul reassoc nsz arcp contract afn double %i.jn, %i.hn
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv68.i.epil ; 2 uses
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !383
  %i.jr = fsub reassoc nsz arcp contract afn double %i.jq, %i.jo
  store double %i.jr, ptr %i.jp, align 8, !tbaa !383
  %indvars.iv.next69.i.epil = add nuw nsw i64 %indvars.iv68.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter93
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !529

.epilog-lcssa:                                    ; preds = %.unr-lcssa, %bb.c
  %indvars.iv.next74.i = add nsw i64 %i.e, -1     ; 4 uses
  %i.js = mul nuw nsw i64 %indvars.iv.next74.i, %i.hh
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.js
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !383
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next74.i ; 2 uses
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !383
  %i.jx = fdiv reassoc nsz arcp contract afn double %i.jw, %i.ju ; 2 uses
  store double %i.jx, ptr %i.jv, align 8, !tbaa !383
  %invariant.gep76.i.1 = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next74.i
  %xtraiter93.1 = and i64 %indvars.iv.next74.i, 3 ; 2 uses
  %lcmp.mod95.1 = icmp ne i64 %xtraiter93.1, 0
  tail call void @llvm.assume(i1 %lcmp.mod95.1)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epilog-lcssa
  %indvars.iv68.i.epil.1 = phi i64 [ 0, %.epilog-lcssa ], [ %indvars.iv.next69.i.epil.1, %bb.d ] ; 3 uses
  %epil.iter.1 = phi i64 [ 0, %.epilog-lcssa ], [ %epil.iter.next.1, %bb.d ]
  %i.jy = mul nuw nsw i64 %indvars.iv68.i.epil.1, %i.g
  %gep77.i.epil.1 = getelementptr [8 x i8], ptr %invariant.gep76.i.1, i64 %i.jy
  %i.jz = load double, ptr %gep77.i.epil.1, align 8, !tbaa !383
  %i.ka = fmul reassoc nsz arcp contract afn double %i.jz, %i.jx
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv68.i.epil.1 ; 2 uses
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !383
  %i.kd = fsub reassoc nsz arcp contract afn double %i.kc, %i.ka
  store double %i.kd, ptr %i.kb, align 8, !tbaa !383
  %indvars.iv.next69.i.epil.1 = add nuw nsw i64 %indvars.iv68.i.epil.1, 1
  %epil.iter.next.1 = add i64 %epil.iter.1, 1     ; 2 uses
  %epil.iter.cmp.1.not = icmp eq i64 %epil.iter.next.1, %xtraiter93.1
  br i1 %epil.iter.cmp.1.not, label %.epilog-lcssa.1, label %bb.d, !llvm.loop !529

.epilog-lcssa.1:                                  ; preds = %bb.d
  %indvars.iv.next74.i.1 = add nsw i64 %i.e, -2   ; 4 uses
  %i.ke = mul nuw nsw i64 %indvars.iv.next74.i.1, %i.hh
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ke
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !383
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next74.i.1 ; 2 uses
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !383
  %i.kj = fdiv reassoc nsz arcp contract afn double %i.ki, %i.kg ; 2 uses
  store double %i.kj, ptr %i.kh, align 8, !tbaa !383
  %invariant.gep76.i.2 = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next74.i.1
  %xtraiter93.2 = and i64 %indvars.iv.next74.i.1, 3 ; 2 uses
  %lcmp.mod95.2 = icmp ne i64 %xtraiter93.2, 0
  tail call void @llvm.assume(i1 %lcmp.mod95.2)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epilog-lcssa.1
  %indvars.iv68.i.epil.2 = phi i64 [ 0, %.epilog-lcssa.1 ], [ %indvars.iv.next69.i.epil.2, %bb.e ] ; 3 uses
  %epil.iter.2 = phi i64 [ 0, %.epilog-lcssa.1 ], [ %epil.iter.next.2, %bb.e ]
  %i.kk = mul nuw nsw i64 %indvars.iv68.i.epil.2, %i.g
  %gep77.i.epil.2 = getelementptr [8 x i8], ptr %invariant.gep76.i.2, i64 %i.kk
  %i.kl = load double, ptr %gep77.i.epil.2, align 8, !tbaa !383
  %i.km = fmul reassoc nsz arcp contract afn double %i.kl, %i.kj
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv68.i.epil.2 ; 2 uses
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !383
  %i.kp = fsub reassoc nsz arcp contract afn double %i.ko, %i.km
  store double %i.kp, ptr %i.kn, align 8, !tbaa !383
  %indvars.iv.next69.i.epil.2 = add nuw nsw i64 %indvars.iv68.i.epil.2, 1
  %epil.iter.next.2 = add i64 %epil.iter.2, 1     ; 2 uses
  %epil.iter.cmp.2.not = icmp eq i64 %epil.iter.next.2, %xtraiter93.2
  br i1 %epil.iter.cmp.2.not, label %.epilog-lcssa.2, label %bb.e, !llvm.loop !529

.epilog-lcssa.2:                                  ; preds = %bb.e
  %indvars.iv.next74.i.2 = add nsw i64 %i.e, -3   ; 5 uses
  %.not103 = icmp eq i32 %2, 4
end_hunk_0
