Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/tm_bucket?download=true
inline.NumInlined: 14
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@tm_bucket_grouping:bb.a
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !15
  %i.cl = sext i32 %i.cg to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !24
  %i.co = sext i32 %i.ck to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !25
  %i.cr = getelementptr [8 x i8], ptr %i.by, i64 %indvars.iv122.i
  %i.cs = getelementptr i8, ptr %i.cr, i64 -8
  store double %i.cq, ptr %i.cs, align 8, !tbaa !25
  %i.ct = shl nuw i32 %.0108.i, 2                 ; 4 uses
  %i.cu = add i32 %i.ct, -2
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !15
  %i.cy = add i32 %i.ct, -1
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !15
  %i.dc = sext i32 %i.cx to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !24
  %i.df = sext i32 %i.db to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !25
  %i.di = getelementptr [8 x i8], ptr %i.by, i64 %indvars.iv122.i
  store double %i.dh, ptr %i.di, align 8, !tbaa !25
  %indvars.iv.next123.i.1 = add nuw nsw i64 %indvars.iv122.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge111.i.loopexit.unr-lcssa, label %.lr.ph110.i, !llvm.loop !43

._crit_edge111.i.loopexit.unr-lcssa:              ; preds = %.lr.ph110.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge111.i, label %.lr.ph110.i.epil.preheader

.lr.ph110.i.epil.preheader:                       ; preds = %._crit_edge111.i.loopexit.unr-lcssa, %.lr.ph110.i.preheader
  %indvars.iv122.i.epil.init = phi i64 [ 1, %.lr.ph110.i.preheader ], [ %indvars.iv.next123.i.1, %._crit_edge111.i.loopexit.unr-lcssa ]
  %.0108.i.epil.init = phi i32 [ 1, %.lr.ph110.i.preheader ], [ %i.ct, %._crit_edge111.i.loopexit.unr-lcssa ]
  %lcmp.mod223 = trunc i64 %i.ca to i1
  tail call void @llvm.assume(i1 %lcmp.mod223)
  %i.dj = shl nuw i32 %.0108.i.epil.init, 1       ; 2 uses
  %i.dk = add i32 %i.dj, -2
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !15
  %i.do = add i32 %i.dj, -1
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !15
  %i.ds = sext i32 %i.dn to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ds
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !24
  %i.dv = sext i32 %i.dr to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !25
  %i.dy = getelementptr [8 x i8], ptr %i.by, i64 %indvars.iv122.i.epil.init
  %i.dz = getelementptr i8, ptr %i.dy, i64 -8
  store double %i.dx, ptr %i.dz, align 8, !tbaa !25
  br label %._crit_edge111.i

._crit_edge111.i:                                 ; preds = %.lr.ph110.i.epil.preheader, %._crit_edge111.i.loopexit.unr-lcssa, %.loopexit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr %i.by, ptr %i.ea, align 8, !tbaa !63
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store i32 %i.q, ptr %i.eb, align 8, !tbaa !64
  %i.ec = shl nuw nsw i64 %i.bv, 4
  %i.ed = tail call noalias ptr @malloc(i64 noundef %i.ec) #21 ; 9 uses
  %.not5.i.i.i = icmp eq i32 %i.q, 0              ; 3 uses
  br i1 %.not5.i.i.i, label %ilog2.exit.i.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %._crit_edge111.i
  %i.ee = lshr i32 %i.q, 1
  %i.ef = tail call range(i32 27, 33) i32 @llvm.ctlz.i32(i32 %i.ee, i1 false)
  %i.eg = sub nuw nsw i32 32, %i.ef
  br label %ilog2.exit.i.i

ilog2.exit.i.i:                                   ; preds = %.lr.ph.i.i.preheader.i, %._crit_edge111.i
  %.0.lcssa.i.i.i = phi i32 [ -1, %._crit_edge111.i ], [ %i.eg, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.aa, i64 56 ; 2 uses
  store i32 %.0.lcssa.i.i.i, ptr %i.eh, align 8, !tbaa !65
  %i.ei = add nsw i32 %i.q, -1
  tail call fastcc void @dfs(i32 noundef 1, i32 noundef 1, i32 noundef %i.ei, ptr noundef %i.by, ptr noundef %i.ed, i32 noundef 0, i32 noundef %.0.lcssa.i.i.i)
  store double -1.000000e+00, ptr %i.ed, align 8, !tbaa !25
  %i.ej = shl nuw nsw i32 %i.q, 1
  br i1 %.not5.i.i.i, label %._crit_edge.i.i, label %.lr.ph.i95.i.preheader

.lr.ph.i95.i.preheader:                           ; preds = %ilog2.exit.i.i
  %min.iters.check = icmp samesign ult i32 %i.q, 4
  br i1 %min.iters.check, label %.lr.ph.i95.i, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i95.i.preheader
  %n.vec = and i64 %i.bv, 60
  %invariant.gep = getelementptr [8 x i8], ptr %i.ed, i64 %i.bv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw nsw <2 x i32> %vec.ind, splat (i32 2)
  %i.ek = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %i.el = uitofp nneg <2 x i32> %step.add to <2 x double>
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x double> %i.ek, ptr %gep, align 8, !tbaa !25
  store <2 x double> %i.el, ptr %i.em, align 8, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i32> %vec.ind, splat (i32 4)
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %._crit_edge.i.thread.i, label %vector.body, !llvm.loop !44

.lr.ph.i95.i:                                     ; preds = %.lr.ph.i95.i.preheader
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.bv
  store double 0.000000e+00, ptr %i.eo, align 8, !tbaa !25
  %exitcond.not.i.i = icmp eq i32 %i.q, 1
  br i1 %exitcond.not.i.i, label %._crit_edge.i.thread.i, label %.lr.ph.i95.i.1

.lr.ph.i95.i.1:                                   ; preds = %.lr.ph.i95.i
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.bv
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store double 1.000000e+00, ptr %i.eq, align 8, !tbaa !25
  %exitcond.not.i.i.1 = icmp eq i32 %i.q, 2
  br i1 %exitcond.not.i.i.1, label %._crit_edge.i.thread.i, label %.lr.ph.i95.i.2

.lr.ph.i95.i.2:                                   ; preds = %.lr.ph.i95.i.1
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.bv
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store double 2.000000e+00, ptr %i.es, align 8, !tbaa !25
  br label %._crit_edge.i.thread.i

._crit_edge.i.i:                                  ; preds = %ilog2.exit.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 3 uses
  store ptr %i.ed, ptr %i.et, align 8, !tbaa !68
  %i.eu = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.ev = icmp sgt i32 %i.eu, 5
  br i1 %i.ev, label %built_pivot_tree.exit.i, label %built_pivot_tree.exit.i.thread

built_pivot_tree.exit.i.thread:                   ; preds = %._crit_edge.i.i
  %i.ew = tail call noalias ptr @malloc(i64 noundef %i.bw) #21
  store ptr %i.ew, ptr %i.aa, align 8, !tbaa !26
  br label %._crit_edge114.i

._crit_edge.i.thread.i:                           ; preds = %vector.body, %.lr.ph.i95.i, %.lr.ph.i95.i.1, %.lr.ph.i95.i.2
  %i.ex = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 3 uses
  store ptr %i.ed, ptr %i.ex, align 8, !tbaa !68
  %i.ey = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.ez = icmp sgt i32 %i.ey, 5
  br i1 %i.ez, label %.lr.ph29.preheader.i.i, label %built_pivot_tree.exit.thread.i

built_pivot_tree.exit.thread.i:                   ; preds = %._crit_edge.i.thread.i
  %i.fa = tail call noalias ptr @malloc(i64 noundef %i.bw) #21
  store ptr %i.fa, ptr %i.aa, align 8, !tbaa !26
  br label %.lr.ph113.preheader.i

.lr.ph29.preheader.i.i:                           ; preds = %._crit_edge.i.thread.i
  %wide.trip.count.i.i = zext nneg i32 %i.ej to i64
  br label %.lr.ph29.i.i

.lr.ph29.i.i:                                     ; preds = %.lr.ph29.i.i, %.lr.ph29.preheader.i.i
  %indvars.iv32.i.i = phi i64 [ 0, %.lr.ph29.preheader.i.i ], [ %indvars.iv.next33.i.i, %.lr.ph29.i.i ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv32.i.i
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !25
  %i.fd = trunc nuw nsw i64 %indvars.iv32.i.i to i32
  %i.fe = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.fd, double noundef %i.fc) ; 0 uses
  %indvars.iv.next33.i.i = add nuw nsw i64 %indvars.iv32.i.i, 1 ; 2 uses
  %exitcond35.not.i.i = icmp eq i64 %indvars.iv.next33.i.i, %wide.trip.count.i.i
  br i1 %exitcond35.not.i.i, label %built_pivot_tree.exit.i, label %.lr.ph29.i.i, !llvm.loop !45

built_pivot_tree.exit.i:                          ; preds = %.lr.ph29.i.i, %._crit_edge.i.i
  %i.ff = phi ptr [ %i.et, %._crit_edge.i.i ], [ %i.ex, %.lr.ph29.i.i ] ; 2 uses
  %putchar.i.i = tail call i32 @putchar(i32 10)   ; 0 uses
  %i.fg = tail call noalias ptr @malloc(i64 noundef %i.bw) #21
  store ptr %i.fg, ptr %i.aa, align 8, !tbaa !26
  br i1 %.not5.i.i.i, label %._crit_edge114.i, label %.lr.ph113.preheader.i

.lr.ph113.preheader.i:                            ; preds = %built_pivot_tree.exit.i, %built_pivot_tree.exit.thread.i
  %i.fh = phi ptr [ %i.ex, %built_pivot_tree.exit.thread.i ], [ %i.ff, %built_pivot_tree.exit.i ]
  br label %.lr.ph113.i

.lr.ph113.i:                                      ; preds = %.lr.ph113.i, %.lr.ph113.preheader.i
  %indvars.iv127.i = phi i64 [ 0, %.lr.ph113.preheader.i ], [ %indvars.iv.next128.i, %.lr.ph113.i ] ; 2 uses
  %i.fi = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #22
  %i.fj = load ptr, ptr %i.aa, align 8, !tbaa !26
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv127.i
  store ptr %i.fi, ptr %i.fk, align 8, !tbaa !23
  %indvars.iv.next128.i = add nuw nsw i64 %indvars.iv127.i, 1 ; 2 uses
  %exitcond131.not.i = icmp eq i64 %indvars.iv.next128.i, %i.bv
  br i1 %exitcond131.not.i, label %._crit_edge114.i, label %.lr.ph113.i, !llvm.loop !46

._crit_edge114.i:                                 ; preds = %.lr.ph113.i, %built_pivot_tree.exit.i.thread, %built_pivot_tree.exit.i
  %i.fl = phi ptr [ %i.ff, %built_pivot_tree.exit.i ], [ %i.et, %built_pivot_tree.exit.i.thread ], [ %i.fh, %.lr.ph113.i ]
  %i.fm = load i32, ptr %i.ac, align 8, !tbaa !62 ; 2 uses
  %i.fn = icmp sgt i32 %i.fm, 0
  br i1 %i.fn, label %.lr.ph18.i.i, label %fill_buckets.exit.i

.lr.ph18.i.i:                                     ; preds = %._crit_edge114.i
  %i.fo = zext nneg i32 %i.fm to i64              ; 3 uses
  br label %bb.q

.loopexit.i.i:                                    ; preds = %add_to_bucket.exit.i.i, %bb.q
  %exitcond26.not.i.i = icmp eq i64 %indvars.iv.next23.i.i, %i.fo
  br i1 %exitcond26.not.i.i, label %fill_buckets.exit.i, label %bb.q, !llvm.loop !47

bb.q:                                             ; preds = %.loopexit.i.i, %.lr.ph18.i.i
  %indvars.iv.i97.i = phi i64 [ 0, %.lr.ph18.i.i ], [ %indvars.iv.next23.i.i, %.loopexit.i.i ] ; 3 uses
  %indvars.iv.next23.i.i = add nuw nsw i64 %indvars.iv.i97.i, 1 ; 4 uses
  %i.fp = icmp samesign ult i64 %indvars.iv.next23.i.i, %i.fo
  br i1 %i.fp, label %.lr.ph.i99.i, label %.loopexit.i.i

.lr.ph.i99.i:                                     ; preds = %bb.q
  %i.fq = trunc nuw nsw i64 %indvars.iv.i97.i to i32
  br label %bb.r

bb.r:                                             ; preds = %add_to_bucket.exit.i.i, %.lr.ph.i99.i
  %indvars.iv19.i.i = phi i64 [ %indvars.iv.next23.i.i, %.lr.ph.i99.i ], [ %indvars.iv.next20.i.i, %add_to_bucket.exit.i.i ] ; 3 uses
  %i.fr = load ptr, ptr %i.fl, align 8, !tbaa !68 ; 4 uses
  %i.fs = load ptr, ptr %i.ab, align 8, !tbaa !21
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv.i97.i
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !24
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv19.i.i
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !25 ; 3 uses
  %i.fx = load i32, ptr %i.eh, align 8, !tbaa !65 ; 5 uses
  %i.fy = icmp sgt i32 %i.fx, 0
  br i1 %i.fy, label %.lr.ph.i.i101.i.preheader, label %bucket_id.exit.i.i

.lr.ph.i.i101.i.preheader:                        ; preds = %bb.r
  %xtraiter224 = and i32 %i.fx, 1
  %i.fz = icmp eq i32 %i.fx, 1
  br i1 %i.fz, label %.lr.ph.i.i101.i.epil.preheader, label %.lr.ph.i.i101.i.preheader.new

.lr.ph.i.i101.i.preheader.new:                    ; preds = %.lr.ph.i.i101.i.preheader
  %unroll_iter228 = and i32 %i.fx, 2147483646
  br label %.lr.ph.i.i101.i

.lr.ph.i.i101.i:                                  ; preds = %.lr.ph.i.i101.i, %.lr.ph.i.i101.i.preheader.new
  %.01314.i.i.i = phi i32 [ 1, %.lr.ph.i.i101.i.preheader.new ], [ %.1.i.i.i.1, %.lr.ph.i.i101.i ] ; 2 uses
  %niter229 = phi i32 [ 0, %.lr.ph.i.i101.i.preheader.new ], [ %niter229.next.1, %.lr.ph.i.i101.i ]
  %i.ga = sext i32 %.01314.i.i.i to i64
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.ga
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !25
  %i.gd = fcmp ule double %i.fw, %i.gc
  %i.ge = shl nsw i32 %.01314.i.i.i, 1
  %i.gf = zext i1 %i.gd to i32
  %.1.i.i.i = or disjoint i32 %i.ge, %i.gf        ; 2 uses
  %i.gg = sext i32 %.1.i.i.i to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.gg
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !25
  %i.gj = fcmp ule double %i.fw, %i.gi
  %i.gk = shl nsw i32 %.1.i.i.i, 1
  %i.gl = zext i1 %i.gj to i32
  %.1.i.i.i.1 = or disjoint i32 %i.gk, %i.gl      ; 3 uses
  %niter229.next.1 = add nuw nsw i32 %niter229, 2 ; 2 uses
  %niter229.ncmp.1 = icmp eq i32 %niter229.next.1, %unroll_iter228
  br i1 %niter229.ncmp.1, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i.i101.i, !llvm.loop !48

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %.lr.ph.i.i101.i
  %lcmp.mod225.not = icmp eq i32 %xtraiter224, 0
  br i1 %lcmp.mod225.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i101.i.epil.preheader

.lr.ph.i.i101.i.epil.preheader:                   ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i.i101.i.preheader
  %.01314.i.i.i.epil.init = phi i32 [ 1, %.lr.ph.i.i101.i.preheader ], [ %.1.i.i.i.1, %._crit_edge.loopexit.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod227 = trunc i32 %i.fx to i1
  tail call void @llvm.assume(i1 %lcmp.mod227)
  %i.gm = sext i32 %.01314.i.i.i.epil.init to i64
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.gm
  %i.go = load double, ptr %i.gn, align 8, !tbaa !25
  %i.gp = fcmp ule double %i.fw, %i.go
  %i.gq = shl nsw i32 %.01314.i.i.i.epil.init, 1
  %i.gr = zext i1 %i.gp to i32
  %.1.i.i.i.epil = or disjoint i32 %i.gq, %i.gr
  br label %._crit_edge.loopexit.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i.i101.i.epil.preheader
  %.1.i.i.i.lcssa = phi i32 [ %.1.i.i.i.1, %._crit_edge.loopexit.i.i.i.unr-lcssa ], [ %.1.i.i.i.epil, %.lr.ph.i.i101.i.epil.preheader ]
  %i.gs = sext i32 %.1.i.i.i.lcssa to i64
  br label %bucket_id.exit.i.i

bucket_id.exit.i.i:                               ; preds = %._crit_edge.loopexit.i.i.i, %bb.r
  %.013.lcssa.i.i.i = phi i64 [ 1, %bb.r ], [ %i.gs, %._crit_edge.loopexit.i.i.i ]
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %.013.lcssa.i.i.i
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !25
  %i.gv = fptosi double %i.gu to i32              ; 2 uses
  %i.gw = load ptr, ptr %i.aa, align 8, !tbaa !26
  %i.gx = sext i32 %i.gv to i64
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.gx
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !23 ; 6 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 4 uses
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !69 ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 12 ; 3 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !28 ; 2 uses
  %i.he = icmp eq i32 %i.hb, %i.hd
  br i1 %i.he, label %bb.s, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bucket_id.exit.i.i
  %.pre26.i.i.i = load ptr, ptr %i.gz, align 8, !tbaa !29
  br label %add_to_bucket.exit.i.i

bb.s:                                             ; preds = %bucket_id.exit.i.i
  %i.hf = load i32, ptr %i.ac, align 8, !tbaa !62 ; 2 uses
  %i.hg = load i32, ptr %i.eb, align 8, !tbaa !64
  %i.hh = mul nsw i32 %i.hf, %i.hf
  %i.hi = sdiv i32 %i.hh, %i.hg                   ; 3 uses
  %i.hj = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.hk = icmp sgt i32 %i.hj, 5
  br i1 %i.hk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.hl = load ptr, ptr %i.gz, align 8, !tbaa !29
  %i.hm = add nsw i32 %i.hi, %i.hb
  %i.hn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.gv, ptr noundef %i.hl, i32 noundef %i.hb, i32 noundef %i.hm) ; 0 uses
  %.pre.i.i.i = load i32, ptr %i.ha, align 8, !tbaa !69
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ho = phi i32 [ %.pre.i.i.i, %bb.t ], [ %i.hb, %bb.s ]
  %i.hp = load ptr, ptr %i.gz, align 8, !tbaa !29
  %i.hq = add nsw i32 %i.ho, %i.hi
  %i.hr = sext i32 %i.hq to i64
  %i.hs = shl nsw i64 %i.hr, 3
  %i.ht = tail call ptr @realloc(ptr noundef %i.hp, i64 noundef %i.hs) #23 ; 2 uses
  store ptr %i.ht, ptr %i.gz, align 8, !tbaa !29
  %i.hu = load i32, ptr %i.ha, align 8, !tbaa !69
  %i.hv = add nsw i32 %i.hu, %i.hi
  store i32 %i.hv, ptr %i.ha, align 8, !tbaa !69
  %.pre27.i.i.i = load i32, ptr %i.hc, align 4, !tbaa !28
  br label %add_to_bucket.exit.i.i

add_to_bucket.exit.i.i:                           ; preds = %bb.u, %._crit_edge.i.i.i
  %i.hw = phi i32 [ %i.hd, %._crit_edge.i.i.i ], [ %.pre27.i.i.i, %bb.u ] ; 2 uses
  %i.hx = phi ptr [ %.pre26.i.i.i, %._crit_edge.i.i.i ], [ %i.ht, %bb.u ]
  %i.hy = sext i32 %i.hw to i64
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.hx, i64 %i.hy ; 2 uses
  store i32 %i.fq, ptr %i.hz, align 4, !tbaa !31
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ib = trunc nuw nsw i64 %indvars.iv19.i.i to i32
  store i32 %i.ib, ptr %i.ia, align 4, !tbaa !32
  %i.ic = add nsw i32 %i.hw, 1
  store i32 %i.ic, ptr %i.hc, align 4, !tbaa !28
  %indvars.iv.next20.i.i = add nuw nsw i64 %indvars.iv19.i.i, 1 ; 2 uses
  %exitcond.not.i100.i = icmp eq i64 %indvars.iv.next20.i.i, %i.fo
  br i1 %exitcond.not.i100.i, label %.loopexit.i.i, label %bb.r, !llvm.loop !49

fill_buckets.exit.i:                              ; preds = %.loopexit.i.i, %._crit_edge114.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  store i32 0, ptr %i.id, align 4, !tbaa !33
  %i.ie = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i32 0, ptr %i.ie, align 8, !tbaa !34
  tail call void @free(ptr noundef %i.al) #20
  br label %partial_sort.exit

partial_sort.exit:                                ; preds = %bb.d, %bb.e, %fill_buckets.exit.i
  %.0132 = phi ptr [ undef, %bb.e ], [ undef, %bb.d ], [ %i.aa, %fill_buckets.exit.i ] ; 12 uses
  %i.if = tail call double @tm_time_diff() #20
  %i.ig = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.ih = icmp sgt i32 %i.ig, 4
  br i1 %i.ih, label %bb.v, label %.thread

bb.v:                                             ; preds = %partial_sort.exit
  %i.ii = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %i.if) ; 0 uses
  %.pr = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.ij = icmp sgt i32 %.pr, 5
  br i1 %i.ij, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  %i.ik = getelementptr inbounds nuw i8, ptr %.0132, i64 8 ; 2 uses
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !64
  %i.im = icmp sgt i32 %i.il, 1
  br i1 %i.im, label %.lr.ph.i120, label %display_pivots.exit

.lr.ph.i120:                                      ; preds = %bb.w
  %i.in = getelementptr inbounds nuw i8, ptr %.0132, i64 40
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.i120
  %indvars.iv.i121 = phi i64 [ 0, %.lr.ph.i120 ], [ %indvars.iv.next.i122, %bb.x ] ; 3 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !63
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %indvars.iv.i121
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !25
  %i.ir = trunc nuw nsw i64 %indvars.iv.i121 to i32
  %i.is = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %i.ir, double noundef %i.iq) ; 0 uses
  %indvars.iv.next.i122 = add nuw nsw i64 %indvars.iv.i121, 1 ; 2 uses
  %i.it = load i32, ptr %i.ik, align 8, !tbaa !64
  %i.iu = add nsw i32 %i.it, -1
  %i.iv = sext i32 %i.iu to i64
  %i.iw = icmp slt i64 %indvars.iv.next.i122, %i.iv
  br i1 %i.iw, label %bb.x, label %display_pivots.exit, !llvm.loop !50

display_pivots.exit:                              ; preds = %bb.x, %bb.w
  %putchar.i = tail call i32 @putchar(i32 10)     ; 0 uses
  br label %.thread

.thread:                                          ; preds = %partial_sort.exit, %display_pivots.exit, %bb.v
  tail call void @tm_get_time() #20
  store i32 0, ptr %i.a, align 4, !tbaa !15
  store i32 0, ptr %i.c, align 4, !tbaa !15
  tail call void @tm_get_time() #20
  %i.ix = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.iy = icmp sgt i32 %i.ix, 4
  %i.iz = icmp sgt i32 %4, 0                      ; 2 uses
  br i1 %i.iy, label %.preheader140, label %.preheader142

.preheader142:                                    ; preds = %.thread
  br i1 %i.iz, label %.lr.ph, label %.loopexit141

.preheader140:                                    ; preds = %.thread
  br i1 %i.iz, label %.lr.ph148, label %.loopexit141

.lr.ph148:                                        ; preds = %.preheader140, %bb.z
  %.0104147 = phi double [ %i.jp, %bb.z ], [ 0.000000e+00, %.preheader140 ]
  %.0106146 = phi double [ %i.jk, %bb.z ], [ 0.000000e+00, %.preheader140 ]
  %.0108145 = phi i32 [ %spec.select, %bb.z ], [ 0, %.preheader140 ] ; 2 uses
  tail call void @tm_get_time() #20
  call fastcc void @next_bucket_elem(ptr noundef %.0132, ptr noundef %i.a, ptr noundef %i.b)
  %i.ja = load i32, ptr @verbose_level, align 4, !tbaa !15
  %i.jb = icmp sgt i32 %i.ja, 5
  %.pre = load i32, ptr %i.a, align 4, !tbaa !15  ; 3 uses
  %.pre183 = load i32, ptr %i.b, align 4, !tbaa !15 ; 3 uses
  br i1 %i.jb, label %bb.y, label %bb.z
end_hunk_0
