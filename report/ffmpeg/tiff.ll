Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tiff?download=true
inline.NumInlined: 42
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 53
begin_hunk_0_@decode_frame:bb.a
vector.body3377.7:                                ; preds = %vector.body3377.6
  %i.crz = add nsw i64 %i.cpy, -113
  %i.csa = add nsw i64 %i.crz, %i.cpz
  %i.csb = shl nsw i64 %i.csa, 1
  %i.csc = getelementptr i8, ptr %.4578.i, i64 %i.csb ; 2 uses
  %i.csd = getelementptr i8, ptr %i.csc, i64 -14
  %i.cse = getelementptr i8, ptr %i.csc, i64 -30
  %interleaved.vec3381.7 = shufflevector <8 x i8> %broadcast.splatinsert3375, <8 x i8> %broadcast.splatinsert3373, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8> ; 2 uses
  store <16 x i8> %interleaved.vec3381.7, ptr %i.csd, align 1, !tbaa !67
  store <16 x i8> %interleaved.vec3381.7, ptr %i.cse, align 1, !tbaa !67
  br label %middle.block3386

middle.block3386:                                 ; preds = %vector.body3377.7, %vector.body3377.6, %vector.body3377.5, %vector.body3377.4, %vector.body3377.3, %vector.body3377.2, %vector.body3377.1, %vector.ph3371
  %cmp.n3387 = icmp eq i64 %n.vec3372, %i.cpy
  br i1 %cmp.n3387, label %horizontal_fill.exit.i, label %vec.epilog.iter.check3392

vec.epilog.iter.check3392:                        ; preds = %middle.block3386
  %min.epilog.iters.check3393 = icmp eq i64 %i.cqa, 0
  br i1 %min.epilog.iters.check3393, label %vec.epilog.scalar.ph3391.preheader, label %vec.epilog.ph3394, !prof !265

vec.epilog.ph3394:                                ; preds = %vector.main.loop.iter.check3369, %vec.epilog.iter.check3392
  %vec.epilog.resume.val3388 = phi i64 [ %n.vec3372, %vec.epilog.iter.check3392 ], [ 0, %vector.main.loop.iter.check3369 ]
  %n.vec3395 = and i64 %i.cpy, 252                ; 2 uses
  %i.csf = and i64 %i.cpy, 3
  %broadcast.splatinsert3396 = insertelement <4 x i8> poison, i8 %i.cpw, i64 0
  %broadcast.splatinsert3398 = insertelement <4 x i8> poison, i8 %i.cpx, i64 0
  %invariant.op = add i64 %i.cpy, %i.cpz
  %interleaved.vec3404 = shufflevector <4 x i8> %broadcast.splatinsert3398, <4 x i8> %broadcast.splatinsert3396, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  br label %vec.epilog.vector.body3400

vec.epilog.vector.body3400:                       ; preds = %vec.epilog.vector.body3400, %vec.epilog.ph3394
  %index3401 = phi i64 [ %vec.epilog.resume.val3388, %vec.epilog.ph3394 ], [ %index.next3405, %vec.epilog.vector.body3400 ] ; 2 uses
  %i.csg = xor i64 %index3401, -1
  %.reass = add i64 %i.csg, %invariant.op
  %i.csh = shl nsw i64 %.reass, 1
  %i.csi = getelementptr i8, ptr %.4578.i, i64 %i.csh
  %i.csj = getelementptr i8, ptr %i.csi, i64 -6
  store <8 x i8> %interleaved.vec3404, ptr %i.csj, align 1, !tbaa !67
  %index.next3405 = add nuw i64 %index3401, 4     ; 2 uses
  %i.csk = icmp eq i64 %index.next3405, %n.vec3395
  br i1 %i.csk, label %vec.epilog.middle.block3406, label %vec.epilog.vector.body3400, !llvm.loop !137

vec.epilog.middle.block3406:                      ; preds = %vec.epilog.vector.body3400
  %cmp.n3407 = icmp eq i64 %n.vec3395, %i.cpy
  br i1 %cmp.n3407, label %horizontal_fill.exit.i, label %vec.epilog.scalar.ph3391.preheader

vec.epilog.scalar.ph3391.preheader:               ; preds = %iter.check3390, %vec.epilog.iter.check3392, %vec.epilog.middle.block3406
  %indvars.iv620.i.ph = phi i64 [ %i.cpy, %iter.check3390 ], [ %i.cqb, %vec.epilog.iter.check3392 ], [ %i.csf, %vec.epilog.middle.block3406 ]
  br label %vec.epilog.scalar.ph3391

.lr.ph536.i:                                      ; preds = %bb.qf
  %i.csl = and i8 %i.cpp, 3                       ; 3 uses
  %i.csm = lshr i8 %i.cpp, 2
  %i.csn = and i8 %i.csm, 3                       ; 3 uses
  %i.cso = lshr i8 %i.cpp, 4
  %i.csp = and i8 %i.cso, 3                       ; 3 uses
  %i.csq = lshr i8 %i.cpp, 6                      ; 3 uses
  %i.csr = zext nneg i32 %i.cpk to i64            ; 3 uses
  %i.css = sext i32 %.0290549.i to i64            ; 3 uses
  %xtraiter3723 = and i64 %i.csr, 1
  %lcmp.mod3724.not = icmp eq i64 %xtraiter3723, 0
  br i1 %lcmp.mod3724.not, label %.lr.ph536.i.new, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph536.i
  %indvars.iv.next624.i.prol = add nsw i64 %i.csr, -1 ; 2 uses
  %i.cst = add nsw i64 %indvars.iv.next624.i.prol, %i.css
  %i.csu = shl nsw i64 %i.cst, 2
  %i.csv = getelementptr i8, ptr %.4578.i, i64 %i.csu ; 4 uses
  %i.csw = getelementptr i8, ptr %i.csv, i64 3
  store i8 %i.csl, ptr %i.csw, align 1, !tbaa !67
  %i.csx = getelementptr i8, ptr %i.csv, i64 2
  store i8 %i.csn, ptr %i.csx, align 1, !tbaa !67
  %i.csy = getelementptr i8, ptr %i.csv, i64 1
  store i8 %i.csp, ptr %i.csy, align 1, !tbaa !67
  store i8 %i.csq, ptr %i.csv, align 1, !tbaa !67
  br label %.lr.ph536.i.new

.lr.ph536.i.new:                                  ; preds = %.lr.ph536.i, %.prol.loopexit.unr-lcssa
  %indvars.iv623.i.unr = phi i64 [ %i.csr, %.lr.ph536.i ], [ %indvars.iv.next624.i.prol, %.prol.loopexit.unr-lcssa ]
  %invariant.op3976 = add nsw i64 -1, %i.css
  br label %bb.qh

.lr.ph538.i:                                      ; preds = %bb.qf
  %i.csz = and i8 %i.cpp, 1                       ; 3 uses
  %i.cta = lshr i8 %i.cpp, 1
  %i.ctb = and i8 %i.cta, 1                       ; 3 uses
  %i.ctc = lshr i8 %i.cpp, 2
  %i.ctd = and i8 %i.ctc, 1                       ; 3 uses
  %i.cte = lshr i8 %i.cpp, 3
  %i.ctf = lshr i8 %i.cpp, 4
  %i.ctg = lshr i8 %i.cpp, 5
  %i.cth = lshr i8 %i.cpp, 6
  %i.cti = insertelement <4 x i8> poison, i8 %i.cth, i64 0
  %i.ctj = insertelement <4 x i8> %i.cti, i8 %i.ctg, i64 1
  %i.ctk = insertelement <4 x i8> %i.ctj, i8 %i.ctf, i64 2
  %i.ctl = insertelement <4 x i8> %i.ctk, i8 %i.cte, i64 3
  %i.ctm = and <4 x i8> %i.ctl, splat (i8 1)      ; 3 uses
  %i.ctn = lshr i8 %i.cpp, 7                      ; 3 uses
  %i.cto = zext nneg i32 %i.cpk to i64            ; 3 uses
  %i.ctp = sext i32 %.0290549.i to i64            ; 3 uses
  %xtraiter3727 = and i64 %i.cto, 1
  %lcmp.mod3728.not = icmp eq i64 %xtraiter3727, 0
  br i1 %lcmp.mod3728.not, label %.lr.ph538.i.new, label %.prol.loopexit3726.unr-lcssa

.prol.loopexit3726.unr-lcssa:                     ; preds = %.lr.ph538.i
  %indvars.iv.next627.i.prol = add nsw i64 %i.cto, -1 ; 2 uses
  %i.ctq = add nsw i64 %indvars.iv.next627.i.prol, %i.ctp
  %i.ctr = shl nsw i64 %i.ctq, 3
  %i.cts = getelementptr i8, ptr %.4578.i, i64 %i.ctr ; 5 uses
  %i.ctt = getelementptr i8, ptr %i.cts, i64 7
  store i8 %i.csz, ptr %i.ctt, align 1, !tbaa !67
  %i.ctu = getelementptr i8, ptr %i.cts, i64 6
  store i8 %i.ctb, ptr %i.ctu, align 1, !tbaa !67
  %i.ctv = getelementptr i8, ptr %i.cts, i64 5
  store i8 %i.ctd, ptr %i.ctv, align 1, !tbaa !67
  %i.ctw = getelementptr i8, ptr %i.cts, i64 1
  store <4 x i8> %i.ctm, ptr %i.ctw, align 1, !tbaa !67
  store i8 %i.ctn, ptr %i.cts, align 1, !tbaa !67
  br label %.lr.ph538.i.new

.lr.ph538.i.new:                                  ; preds = %.lr.ph538.i, %.prol.loopexit3726.unr-lcssa
  %indvars.iv626.i.unr = phi i64 [ %i.cto, %.lr.ph538.i ], [ %indvars.iv.next627.i.prol, %.prol.loopexit3726.unr-lcssa ]
  %invariant.op3978 = add nsw i64 -1, %i.ctp
  br label %bb.qg

bb.qg:                                            ; preds = %bb.qg, %.lr.ph538.i.new
  %indvars.iv626.i = phi i64 [ %indvars.iv626.i.unr, %.lr.ph538.i.new ], [ %indvars.iv.next627.i.1, %bb.qg ] ; 3 uses
  %.reass3979 = add nsw i64 %indvars.iv626.i, %invariant.op3978
  %i.ctx = shl nsw i64 %.reass3979, 3
  %i.cty = getelementptr i8, ptr %.4578.i, i64 %i.ctx ; 5 uses
  %i.ctz = getelementptr i8, ptr %i.cty, i64 7
  store i8 %i.csz, ptr %i.ctz, align 1, !tbaa !67
  %i.cua = getelementptr i8, ptr %i.cty, i64 6
  store i8 %i.ctb, ptr %i.cua, align 1, !tbaa !67
  %i.cub = getelementptr i8, ptr %i.cty, i64 5
  store i8 %i.ctd, ptr %i.cub, align 1, !tbaa !67
  %i.cuc = getelementptr i8, ptr %i.cty, i64 1
  store <4 x i8> %i.ctm, ptr %i.cuc, align 1, !tbaa !67
  store i8 %i.ctn, ptr %i.cty, align 1, !tbaa !67
  %indvars.iv.next627.i.1 = add nsw i64 %indvars.iv626.i, -2 ; 2 uses
  %i.cud = add nsw i64 %indvars.iv.next627.i.1, %i.ctp
  %i.cue = shl nsw i64 %i.cud, 3
  %i.cuf = getelementptr i8, ptr %.4578.i, i64 %i.cue ; 5 uses
  %i.cug = getelementptr i8, ptr %i.cuf, i64 7
  store i8 %i.csz, ptr %i.cug, align 1, !tbaa !67
  %i.cuh = getelementptr i8, ptr %i.cuf, i64 6
  store i8 %i.ctb, ptr %i.cuh, align 1, !tbaa !67
  %i.cui = getelementptr i8, ptr %i.cuf, i64 5
  store i8 %i.ctd, ptr %i.cui, align 1, !tbaa !67
  %i.cuj = getelementptr i8, ptr %i.cuf, i64 1
  store <4 x i8> %i.ctm, ptr %i.cuj, align 1, !tbaa !67
  store i8 %i.ctn, ptr %i.cuf, align 1, !tbaa !67
  %i.cuk = icmp sgt i64 %indvars.iv626.i, 2
  br i1 %i.cuk, label %bb.qg, label %horizontal_fill.exit.i, !llvm.loop !111

bb.qh:                                            ; preds = %bb.qh, %.lr.ph536.i.new
  %indvars.iv623.i = phi i64 [ %indvars.iv623.i.unr, %.lr.ph536.i.new ], [ %indvars.iv.next624.i.1, %bb.qh ] ; 3 uses
  %.reass3977 = add nsw i64 %indvars.iv623.i, %invariant.op3976
  %i.cul = shl nsw i64 %.reass3977, 2
  %i.cum = getelementptr i8, ptr %.4578.i, i64 %i.cul ; 4 uses
  %i.cun = getelementptr i8, ptr %i.cum, i64 3
  store i8 %i.csl, ptr %i.cun, align 1, !tbaa !67
  %i.cuo = getelementptr i8, ptr %i.cum, i64 2
  store i8 %i.csn, ptr %i.cuo, align 1, !tbaa !67
  %i.cup = getelementptr i8, ptr %i.cum, i64 1
  store i8 %i.csp, ptr %i.cup, align 1, !tbaa !67
  store i8 %i.csq, ptr %i.cum, align 1, !tbaa !67
  %indvars.iv.next624.i.1 = add nsw i64 %indvars.iv623.i, -2 ; 2 uses
  %i.cuq = add nsw i64 %indvars.iv.next624.i.1, %i.css
  %i.cur = shl nsw i64 %i.cuq, 2
  %i.cus = getelementptr i8, ptr %.4578.i, i64 %i.cur ; 4 uses
  %i.cut = getelementptr i8, ptr %i.cus, i64 3
  store i8 %i.csl, ptr %i.cut, align 1, !tbaa !67
  %i.cuu = getelementptr i8, ptr %i.cus, i64 2
  store i8 %i.csn, ptr %i.cuu, align 1, !tbaa !67
  %i.cuv = getelementptr i8, ptr %i.cus, i64 1
  store i8 %i.csp, ptr %i.cuv, align 1, !tbaa !67
  store i8 %i.csq, ptr %i.cus, align 1, !tbaa !67
  %i.cuw = icmp sgt i64 %indvars.iv623.i, 2
  br i1 %i.cuw, label %bb.qh, label %horizontal_fill.exit.i, !llvm.loop !112

vec.epilog.scalar.ph3391:                         ; preds = %vec.epilog.scalar.ph3391.preheader, %vec.epilog.scalar.ph3391
  %indvars.iv620.i = phi i64 [ %indvars.iv.next621.i, %vec.epilog.scalar.ph3391 ], [ %indvars.iv620.i.ph, %vec.epilog.scalar.ph3391.preheader ] ; 2 uses
  %indvars.iv.next621.i = add nsw i64 %indvars.iv620.i, -1 ; 2 uses
  %i.cux = add nsw i64 %indvars.iv.next621.i, %i.cpz
  %i.cuy = shl nsw i64 %i.cux, 1
  %i.cuz = getelementptr i8, ptr %.4578.i, i64 %i.cuy ; 2 uses
  %i.cva = getelementptr i8, ptr %i.cuz, i64 1
  store i8 %i.cpw, ptr %i.cva, align 1, !tbaa !67
  store i8 %i.cpx, ptr %i.cuz, align 1, !tbaa !67
  %i.cvb = icmp samesign ugt i64 %indvars.iv620.i, 1
  br i1 %i.cvb, label %vec.epilog.scalar.ph3391, label %horizontal_fill.exit.i, !llvm.loop !138

bb.qi:                                            ; preds = %bb.qf
  %i.cvc = sext i32 %.0290549.i to i64
  %i.cvd = getelementptr inbounds i8, ptr %.4578.i, i64 %i.cvc
  %i.cve = zext nneg i32 %i.cpk to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.cvd, i8 %i.cpp, i64 %i.cve, i1 false)
  br label %horizontal_fill.exit.i

horizontal_fill.exit.i:                           ; preds = %vec.epilog.scalar.ph3391, %bb.qh, %bb.qg, %middle.block3386, %vec.epilog.middle.block3406, %bb.qf, %bb.qf, %bb.qf, %bb.qi, %bb.qc, %horizontal_fill.exit357.i
  %.4308.i = phi ptr [ %i.cpj, %horizontal_fill.exit357.i ], [ %.3307.i, %bb.qc ], [ %i.cpo, %bb.qh ], [ %i.cpo, %bb.qi ], [ %i.cpo, %middle.block3386 ], [ %i.cpo, %bb.qf ], [ %i.cpo, %bb.qf ], [ %i.cpo, %bb.qf ], [ %i.cpo, %bb.qg ], [ %i.cpo, %vec.epilog.middle.block3406 ], [ %i.cpo, %vec.epilog.scalar.ph3391 ] ; 4 uses
  %.1291.i = phi i32 [ %i.cjw, %horizontal_fill.exit357.i ], [ %.0290549.i, %bb.qc ], [ %i.cpl, %bb.qh ], [ %i.cpl, %bb.qi ], [ %i.cpl, %middle.block3386 ], [ %i.cpl, %bb.qf ], [ %i.cpl, %bb.qf ], [ %i.cpl, %bb.qf ], [ %i.cpl, %bb.qg ], [ %i.cpl, %vec.epilog.middle.block3406 ], [ %i.cpl, %vec.epilog.scalar.ph3391 ] ; 2 uses
  %i.cvf = icmp slt i32 %.1291.i, %.2.i
  br i1 %i.cvf, label %.lr.ph550.i, label %._crit_edge.i856, !llvm.loop !139

._crit_edge.i856:                                 ; preds = %horizontal_fill.exit.i
  %i.cvg = load i32, ptr %i.aw, align 4, !tbaa !201
  %.not333.i = icmp eq i32 %i.cvg, 0
  br i1 %.not333.i, label %.loopexit504.i, label %.lr.ph552.i.preheader

.lr.ph552.i.preheader:                            ; preds = %._crit_edge.i856
  br i1 %i.bys, label %.lr.ph552.i.epil.preheader, label %.lr.ph552.i

.lr.ph552.i:                                      ; preds = %.lr.ph552.i.preheader, %.lr.ph552.i
  %indvars.iv641.i = phi i64 [ %indvars.iv.next642.i.3, %.lr.ph552.i ], [ 0, %.lr.ph552.i.preheader ] ; 5 uses
  %niter3739 = phi i64 [ %niter3739.next.3, %.lr.ph552.i ], [ 0, %.lr.ph552.i.preheader ]
  %i.cvh = getelementptr inbounds nuw i8, ptr %.4578.i, i64 %indvars.iv641.i ; 2 uses
  %i.cvi = load i8, ptr %i.cvh, align 1, !tbaa !67
  %i.cvj = zext i8 %i.cvi to i64
  %i.cvk = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cvj
  %i.cvl = load i8, ptr %i.cvk, align 1, !tbaa !67
  store i8 %i.cvl, ptr %i.cvh, align 1, !tbaa !67
  %i.cvm = getelementptr inbounds nuw i8, ptr %.4578.i, i64 %indvars.iv641.i
  %i.cvn = getelementptr inbounds nuw i8, ptr %i.cvm, i64 1 ; 2 uses
  %i.cvo = load i8, ptr %i.cvn, align 1, !tbaa !67
  %i.cvp = zext i8 %i.cvo to i64
  %i.cvq = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cvp
  %i.cvr = load i8, ptr %i.cvq, align 1, !tbaa !67
  store i8 %i.cvr, ptr %i.cvn, align 1, !tbaa !67
  %i.cvs = getelementptr inbounds nuw i8, ptr %.4578.i, i64 %indvars.iv641.i
  %i.cvt = getelementptr inbounds nuw i8, ptr %i.cvs, i64 2 ; 2 uses
  %i.cvu = load i8, ptr %i.cvt, align 1, !tbaa !67
  %i.cvv = zext i8 %i.cvu to i64
  %i.cvw = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cvv
  %i.cvx = load i8, ptr %i.cvw, align 1, !tbaa !67
  store i8 %i.cvx, ptr %i.cvt, align 1, !tbaa !67
  %i.cvy = getelementptr inbounds nuw i8, ptr %.4578.i, i64 %indvars.iv641.i
  %i.cvz = getelementptr inbounds nuw i8, ptr %i.cvy, i64 3 ; 2 uses
  %i.cwa = load i8, ptr %i.cvz, align 1, !tbaa !67
  %i.cwb = zext i8 %i.cwa to i64
  %i.cwc = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cwb
  %i.cwd = load i8, ptr %i.cwc, align 1, !tbaa !67
  store i8 %i.cwd, ptr %i.cvz, align 1, !tbaa !67
  %indvars.iv.next642.i.3 = add nuw nsw i64 %indvars.iv641.i, 4 ; 2 uses
  %niter3739.next.3 = add i64 %niter3739, 4       ; 2 uses
  %niter3739.ncmp.3 = icmp eq i64 %niter3739.next.3, %unroll_iter3738
  br i1 %niter3739.ncmp.3, label %.loopexit504.i.loopexit.unr-lcssa, label %.lr.ph552.i, !llvm.loop !140

.loopexit504.i.loopexit.unr-lcssa:                ; preds = %.lr.ph552.i
  br i1 %lcmp.mod3736.not, label %.loopexit504.i, label %.lr.ph552.i.epil.preheader

.lr.ph552.i.epil.preheader:                       ; preds = %.loopexit504.i.loopexit.unr-lcssa, %.lr.ph552.i.preheader
  %indvars.iv641.i.epil.init = phi i64 [ 0, %.lr.ph552.i.preheader ], [ %indvars.iv.next642.i.3, %.loopexit504.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod3737)
  br label %.lr.ph552.i.epil

.lr.ph552.i.epil:                                 ; preds = %.lr.ph552.i.epil, %.lr.ph552.i.epil.preheader
  %indvars.iv641.i.epil = phi i64 [ %indvars.iv.next642.i.epil, %.lr.ph552.i.epil ], [ %indvars.iv641.i.epil.init, %.lr.ph552.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph552.i.epil ], [ 0, %.lr.ph552.i.epil.preheader ]
  %i.cwe = getelementptr inbounds nuw i8, ptr %.4578.i, i64 %indvars.iv641.i.epil ; 2 uses
  %i.cwf = load i8, ptr %i.cwe, align 1, !tbaa !67
  %i.cwg = zext i8 %i.cwf to i64
  %i.cwh = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cwg
  %i.cwi = load i8, ptr %i.cwh, align 1, !tbaa !67
  store i8 %i.cwi, ptr %i.cwe, align 1, !tbaa !67
  %indvars.iv.next642.i.epil = add nuw nsw i64 %indvars.iv641.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter3735
  br i1 %epil.iter.cmp.not, label %.loopexit504.i, label %.lr.ph552.i.epil, !llvm.loop !141

.loopexit504.i:                                   ; preds = %.loopexit504.i.loopexit.unr-lcssa, %.lr.ph552.i.epil, %._crit_edge.i856, %bb.pr, %.preheader505.i, %bytestream2_seek_p.exit.i
  %.5.i = phi ptr [ %.1305576.i, %bytestream2_seek_p.exit.i ], [ %i.cjk, %bb.pr ], [ %.4308.i, %._crit_edge.i856 ], [ %.1305576.i, %.preheader505.i ], [ %.4308.i, %.lr.ph552.i.epil ], [ %.4308.i, %.loopexit504.i.loopexit.unr-lcssa ]
  br i1 %i.bab, label %bb.qj, label %bb.qk

bb.qj:                                            ; preds = %.loopexit504.i
  %i.cwj = add nsw i32 %.2294582.i, %.121604
  call fastcc void @unpack_yuv(ptr noundef nonnull %i.o, ptr noundef readonly %1, ptr noundef %.4578.i, i32 noundef %i.cwj)
  %i.cwk = load i32, ptr %i.awz, align 8, !tbaa !33
  %i.cwl = add i32 %.2294582.i, -1
  %i.cwm = add i32 %i.cwl, %i.cwk
  br label %bb.qm

bb.qk:                                            ; preds = %.loopexit504.i
  %i.cwn = load i32, ptr %i.awy, align 4, !tbaa !83
  %i.cwo = icmp eq i32 %i.cwn, 166
  br i1 %i.cwo, label %bb.ql, label %bb.qm

bb.ql:                                            ; preds = %bb.qk
  %i.cwp = add nsw i32 %.2294582.i, %.121604
  %i.cwq = load i32, ptr %i.as, align 8, !tbaa !55
  %.val.i = load ptr, ptr %1, align 8, !tbaa !72
  %.val371.i = load i32, ptr %i.awx, align 8, !tbaa !33
  call fastcc void @unpack_gray(ptr noundef nonnull %i.o, ptr %.val.i, i32 %.val371.i, ptr noundef %.4578.i, i32 noundef %i.cwp, i32 noundef %.2.i, i32 noundef %i.cwq)
  br label %bb.qm

bb.qm:                                            ; preds = %bb.ql, %bb.qk, %bb.qj
  %.3.i = phi i32 [ %i.cwm, %bb.qj ], [ %.2294582.i, %bb.ql ], [ %.2294582.i, %bb.qk ]
  %i.cwr = getelementptr i8, ptr %.4578.i, i64 %i.byn
  %i.cws = add nsw i32 %.3.i, 1                   ; 2 uses
  %i.cwt = icmp slt i32 %i.cws, %.829
  %indvar.next3321 = add i64 %indvar3320, 1
  br i1 %i.cwt, label %bb.pe, label %tiff_unpack_strip.exit.thread893, !llvm.loop !142

tiff_unpack_strip.exit:                           ; preds = %horizontal_fill.exit.i421.i, %bb.oo, %bb.op, %bb.pc
  %.1296.i = phi i32 [ %i.byb, %bb.pc ], [ %i.bsc, %bb.op ], [ %i.bsc, %bb.oo ], [ %i.bsc, %horizontal_fill.exit.i421.i ] ; 2 uses
  %i.cwu = icmp slt i32 %.1296.i, 0
  br i1 %i.cwu, label %tiff_unpack_strip.exit.thread, label %tiff_unpack_strip.exit.thread893

tiff_unpack_strip.exit.thread:                    ; preds = %bb.nu, %bb.pd, %bb.on, %bb.ol, %bb.ok, %bb.pb, %bb.ni, %bb.md, %bb.mu, %tiff_unpack_strip.exit, %bb.ph, %bb.nn, %.loopexit950, %bb.nl, %bb.na, %.loopexit951, %bb.mx, %bb.qe, %split.i, %bb.ps, %bb.pf, %bb.pa, %bb.oc, %bb.oa, %bb.mq, %.thread.i
  %.1296.i891 = phi i32 [ %i.blg, %bb.oa ], [ -12, %.thread.i ], [ -1094995529, %bb.nn ], [ -1313558101, %.loopexit950 ], [ -12, %bb.nl ], [ -1094995529, %bb.na ], [ -1313558101, %.loopexit951 ], [ -12, %bb.mx ], [ -12, %bb.mq ], [ -1094995529, %bb.qe ], [ -1094995529, %split.i ], [ -1094995529, %bb.ps ], [ -1163346256, %bb.pa ], [ -1094995529, %bb.ph ], [ -1094995529, %bb.pf ], [ -1094995529, %bb.oc ], [ -12, %bb.mu ], [ -1094995529, %bb.md ], [ -12, %bb.ni ], [ -1163346256, %bb.pb ], [ -1094995529, %bb.ok ], [ -1094995529, %bb.ol ], [ -12, %bb.on ], [ -1094995529, %bb.pd ], [ -12, %bb.nu ], [ %.1296.i, %tiff_unpack_strip.exit ]
  %i.cwv = load i32, ptr %i.axu, align 8, !tbaa !78
  %i.cww = and i32 %i.cwv, 8
  %.not812 = icmp eq i32 %i.cww, 0
  br i1 %.not812, label %tiff_unpack_strip.exit.thread..loopexit948_crit_edge, label %bb.qn

tiff_unpack_strip.exit.thread..loopexit948_crit_edge: ; preds = %tiff_unpack_strip.exit.thread
  %.pre2036 = load i32, ptr %i.dm, align 4, !tbaa !66
  br label %.loopexit948

bb.qn:                                            ; preds = %tiff_unpack_strip.exit.thread
  call void @av_freep(ptr noundef nonnull %i.l) #16
  br label %.thread902

tiff_unpack_strip.exit.thread893.sink.split:      ; preds = %bb.ns, %bb.nf, %.preheader92.i.i, %.preheader91.i.i
  %.sink2844 = phi ptr [ %i.bcc, %.preheader91.i.i ], [ %i.bgi, %.preheader92.i.i ], [ %i.bcc, %bb.nf ], [ %i.bgi, %bb.ns ]
  call void @av_free(ptr noundef nonnull %.sink2844) #16
  br label %tiff_unpack_strip.exit.thread893

tiff_unpack_strip.exit.thread893:                 ; preds = %unpack_gray.exit.i, %bb.qm, %bb.pg, %tiff_unpack_strip.exit.thread893.sink.split, %.preheader516.i, %.preheader506.i, %tiff_unpack_strip.exit
  %i.cwx = load i32, ptr %i.dn, align 4, !tbaa !212
  %i.cwy = add nsw i32 %i.cwx, %.121604           ; 3 uses
  %i.cwz = load i32, ptr %i.dm, align 4, !tbaa !66 ; 2 uses
  %i.cxa = icmp slt i32 %i.cwy, %i.cwz
  br i1 %i.cxa, label %.lr.ph1608, label %.loopexit948, !llvm.loop !143

.loopexit948:                                     ; preds = %tiff_unpack_strip.exit.thread893, %tiff_unpack_strip.exit.thread..loopexit948_crit_edge, %bb.lp
  %i.cxb = phi i32 [ %.pre2036, %tiff_unpack_strip.exit.thread..loopexit948_crit_edge ], [ %i.aym, %bb.lp ], [ %i.cwz, %tiff_unpack_strip.exit.thread893 ]
  %.121097 = phi i32 [ %.121604, %tiff_unpack_strip.exit.thread..loopexit948_crit_edge ], [ 0, %bb.lp ], [ %i.cwy, %tiff_unpack_strip.exit.thread893 ]
  %..12 = call i32 @llvm.smin.i32(i32 %.121097, i32 %i.cxb) ; 11 uses
  %i.cxc = load i32, ptr %i.cz, align 8, !tbaa !210 ; 2 uses
  %i.cxd = icmp eq i32 %i.cxc, 2
  br i1 %i.cxd, label %bb.qo, label %bb.qx

bb.qo:                                            ; preds = %.loopexit948
  %i.cxe = load i32, ptr %i.au, align 4, !tbaa !57
  %i.cxf = icmp eq i32 %i.cxe, 6
  br i1 %i.cxf, label %bb.qp, label %bb.qq

bb.qp:                                            ; preds = %bb.qo
  %i.cxg = load ptr, ptr %i.bo, align 8, !tbaa !43
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cxg, i32 noundef 16, ptr noundef nonnull @.str.28) #16
  br label %.thread902

bb.qq:                                            ; preds = %bb.qo
  %i.cxh = load ptr, ptr %i.l, align 8, !tbaa !72 ; 2 uses
  %.not813 = icmp eq ptr %i.cxh, null
  br i1 %.not813, label %bb.qr, label %bb.qs

bb.qr:                                            ; preds = %bb.qq
  %i.cxi = load ptr, ptr %i.axw, align 8, !tbaa !72
  br label %bb.qs

bb.qs:                                            ; preds = %bb.qq, %bb.qr
  %i.cxj = phi ptr [ %i.cxi, %bb.qr ], [ %i.cxh, %bb.qq ] ; 15 uses
  %i.cxk = load i32, ptr %i.as, align 8, !tbaa !55
  %i.cxl = lshr i32 %i.cxk, 3                     ; 2 uses
  %i.cxm = load i32, ptr %i.cn, align 8, !tbaa !74
  %.not814 = icmp eq i32 %i.cxm, 0
  br i1 %.not814, label %bb.qu, label %bb.qt

bb.qt:                                            ; preds = %bb.qs
  %i.cxn = load i32, ptr %i.at, align 4, !tbaa !56
  %i.cxo = udiv i32 %i.cxl, %i.cxn
  %spec.select830 = call i32 @llvm.umax.i32(i32 %i.cxo, i32 1)
  br label %bb.qu

bb.qu:                                            ; preds = %bb.qt, %bb.qs
  %.1723 = phi i32 [ %spec.select830, %bb.qt ], [ %i.cxl, %bb.qs ] ; 8 uses
  %i.cxp = load i32, ptr %i.dp, align 8, !tbaa !65
  %i.cxq = mul i32 %i.cxp, %.1723                 ; 6 uses
  %i.cxr = load ptr, ptr %i.bo, align 8, !tbaa !43
  %i.cxs = getelementptr inbounds nuw i8, ptr %i.cxr, i64 136
  %i.cxt = load i32, ptr %i.cxs, align 8, !tbaa !82
  %i.cxu = icmp sgt i32 %..12, 0                  ; 3 uses
  switch i32 %i.cxt, label %.preheader945 [
    i32 35, label %bb.qv
    i32 105, label %bb.qv
    i32 30, label %bb.qv
    i32 110, label %bb.qv
    i32 77, label %bb.qv
    i32 113, label %bb.qv
    i32 34, label %bb.qw
    i32 104, label %bb.qw
    i32 29, label %bb.qw
    i32 109, label %bb.qw
    i32 76, label %bb.qw
    i32 112, label %bb.qw
  ]

.preheader945:                                    ; preds = %bb.qu
  br i1 %i.cxu, label %.preheader938.lr.ph, label %thread-pre-split

end_hunk_0
begin_hunk_1_@unpack_yuv:bb.a
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.preheader, label %._crit_edge108

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge104
  %i.bu = phi i32 [ %i.cm, %._crit_edge104 ], [ %i.bq, %.preheader.lr.ph ]
  %i.bv = phi i32 [ %i.cn, %._crit_edge104 ], [ %i.bs, %.preheader.lr.ph ] ; 3 uses
  %.169107 = phi i32 [ %i.co, %._crit_edge104 ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.4106 = phi ptr [ %.5.lcssa, %._crit_edge104 ], [ %.3112, %.preheader.lr.ph ] ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %.preheader
  %i.bx = add nsw i32 %.169107, %3
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph103, %bb.e
  %i.by = phi i32 [ %i.bv, %.lr.ph103 ], [ %i.ck, %bb.e ]
  %.167102 = phi i32 [ 0, %.lr.ph103 ], [ %i.cj, %bb.e ] ; 2 uses
  %.5101 = phi ptr [ %.4106, %.lr.ph103 ], [ %i.bz, %bb.e ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.5101, i64 1 ; 2 uses
  %i.ca = load i8, ptr %.5101, align 1, !tbaa !67
  %i.cb = load ptr, ptr %1, align 8, !tbaa !72
  %i.cc = load i32, ptr %i.l, align 8, !tbaa !33
  %i.cd = mul nsw i32 %i.cc, %i.bx
  %i.ce = mul nuw nsw i32 %i.by, %.171113
  %i.cf = add i32 %i.ce, %.167102
  %i.cg = add i32 %i.cf, %i.cd
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds i8, ptr %i.cb, i64 %i.ch
  store i8 %i.ca, ptr %i.ci, align 1, !tbaa !67
  %i.cj = add nuw nsw i32 %.167102, 1             ; 2 uses
  %i.ck = load i32, ptr %i.d, align 4, !tbaa !33  ; 3 uses
  %i.cl = icmp slt i32 %i.cj, %i.ck
  br i1 %i.cl, label %bb.e, label %._crit_edge104.loopexit, !llvm.loop !305

._crit_edge104.loopexit:                          ; preds = %bb.e
  %.pre122 = load i32, ptr %i.i, align 8, !tbaa !33
  br label %._crit_edge104

._crit_edge104:                                   ; preds = %._crit_edge104.loopexit, %.preheader
  %i.cm = phi i32 [ %i.bu, %.preheader ], [ %.pre122, %._crit_edge104.loopexit ] ; 2 uses
  %i.cn = phi i32 [ %i.bv, %.preheader ], [ %i.ck, %._crit_edge104.loopexit ]
  %.5.lcssa = phi ptr [ %.4106, %.preheader ], [ %i.bz, %._crit_edge104.loopexit ] ; 2 uses
  %i.co = add nuw nsw i32 %.169107, 1             ; 2 uses
  %i.cp = icmp slt i32 %i.co, %i.cm
  br i1 %i.cp, label %.preheader, label %._crit_edge108, !llvm.loop !306

._crit_edge108:                                   ; preds = %._crit_edge104, %.preheader.lr.ph, %.preheader84
  %.4.lcssa = phi ptr [ %.3112, %.preheader84 ], [ %.3112, %.preheader.lr.ph ], [ %.5.lcssa, %._crit_edge104 ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 1
  %i.cr = load i8, ptr %.4.lcssa, align 1, !tbaa !67
  %i.cs = getelementptr inbounds nuw i8, ptr %.165115, i64 1
  store i8 %i.cr, ptr %.165115, align 1, !tbaa !67
  %i.ct = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 2
  %i.cu = load i8, ptr %i.cq, align 1, !tbaa !67
  %i.cv = getelementptr inbounds nuw i8, ptr %.1116, i64 1
  store i8 %i.cu, ptr %.1116, align 1, !tbaa !67
  %i.cw = add nuw i32 %.171113, 1
  %exitcond121.not = icmp eq i32 %.171113, %i.f
  br i1 %exitcond121.not, label %.loopexit, label %.preheader84, !llvm.loop !307

.loopexit:                                        ; preds = %._crit_edge93, %._crit_edge108, %bb.c, %.preheader85
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @unpack_gray(ptr nofree noundef readonly captures(none) %0, ptr nofree writeonly captures(none) %.0.val, i32 %.64.val, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef range(i32 -2147483648, 536870912) %3, i32 noundef %4) unnamed_addr #12 {
bb.a:
  %i.a = mul nsw i32 %2, %.64.val
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds i8, ptr %.0.val, i64 %i.b ; 3 uses
  %or.cond.i = icmp ugt i32 %3, 268435455
  %i.d = shl nuw nsw i32 %3, 3
  %i.e = select i1 %or.cond.i, i32 -8, i32 %i.d   ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.e, 2147483135
  %i.f = icmp ne ptr %1, null
  %or.cond3.i.i = and i1 %i.f, %or.cond.i.i
  %i.g = add nuw nsw i32 %i.e, 8
  %i.h = select i1 %or.cond3.i.i, i32 %i.g, i32 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load i32, ptr %i.i, align 8, !tbaa !65   ; 4 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = sub nsw i32 32, %4                       ; 3 uses
  %wide.trip.count = zext nneg i32 %i.j to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.m = icmp eq i32 %i.j, 1
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.4.01.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.as, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod4 = trunc i32 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.n = lshr i32 %.sroa.4.01.epil.init, 3
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  %i.q = load i32, ptr %i.p, align 1, !tbaa !67
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.q)
  %i.s = and i32 %.sroa.4.01.epil.init, 7
  %i.t = shl i32 %i.r, %i.s
  %i.u = lshr i32 %i.t, %i.l
  %i.v = trunc i32 %i.u to i16
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.epil.init
  store i16 %i.v, ptr %i.w, align 2, !tbaa !60
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.sroa.4.01 = phi i32 [ 0, %.lr.ph.new ], [ %i.as, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.x = lshr i32 %.sroa.4.01, 3
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 1, !tbaa !67
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = and i32 %.sroa.4.01, 7
  %i.ad = shl i32 %i.ab, %i.ac
  %i.ae = lshr i32 %i.ad, %i.l
  %i.af = add i32 %.sroa.4.01, %4
  %i.ag = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %i.af) ; 3 uses
  %i.ah = trunc i32 %i.ae to i16
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv
  store i16 %i.ah, ptr %i.ai, align 2, !tbaa !60
  %i.aj = lshr i32 %i.ag, 3
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 1, !tbaa !67
  %i.an = tail call i32 @llvm.bswap.i32(i32 %i.am)
  %i.ao = and i32 %i.ag, 7
  %i.ap = shl i32 %i.an, %i.ao
  %i.aq = lshr i32 %i.ap, %i.l
  %i.ar = add i32 %i.ag, %4
  %i.as = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %i.ar) ; 2 uses
  %i.at = trunc i32 %i.aq to i16
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  store i16 %i.at, ptr %i.av, align 2, !tbaa !60
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !1
}

declare i32 @inflateInit_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @lzma_stream_decoder(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @lzma_code(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @lzma_end(ptr noundef) local_unnamed_addr #13

declare i32 @ff_ccitt_unpack(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_lzw_decode_close(ptr noundef) local_unnamed_addr #2

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

declare void @av_packet_free(ptr noundef) local_unnamed_addr #2

declare void @avcodec_free_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !61}
!1 = distinct !{!1, !61}
!2 = distinct !{!2, !61}
!3 = distinct !{!3, !61}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 1, !"override-stack-alignment", i32 16}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTS7AVClass", !13, i64 0}
!15 = !{!"p1 _ZTS7AVCodec", !13, i64 0}
!16 = !{!"p1 _ZTS15AVCodecInternal", !13, i64 0}
!17 = !{!"long", !9, i64 0}
!18 = !{!"p1 omnipotent char", !13, i64 0}
!19 = !{!"AVRational", !10, i64 0, !10, i64 4}
!20 = !{!"float", !9, i64 0}
!21 = !{!"p1 short", !13, i64 0}
!22 = !{!"AVChannelLayout", !10, i64 0, !10, i64 4, !9, i64 8, !13, i64 16}
!23 = !{!"p1 _ZTS10RcOverride", !13, i64 0}
!24 = !{!"p1 _ZTS9AVHWAccel", !13, i64 0}
!25 = !{!"p1 _ZTS11AVBufferRef", !13, i64 0}
!26 = !{!"p1 _ZTS17AVCodecDescriptor", !13, i64 0}
!27 = !{!"p1 _ZTS16AVPacketSideData", !13, i64 0}
!28 = !{!"p1 int", !13, i64 0}
!29 = !{!"any p2 pointer", !13, i64 0}
!30 = !{!"p2 _ZTS15AVFrameSideData", !29, i64 0}
!31 = !{!"AVCodecContext", !14, i64 0, !10, i64 8, !10, i64 12, !15, i64 16, !10, i64 24, !10, i64 28, !13, i64 32, !16, i64 40, !13, i64 48, !17, i64 56, !10, i64 64, !10, i64 68, !18, i64 72, !10, i64 80, !19, i64 84, !19, i64 92, !19, i64 100, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !19, i64 128, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !10, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !13, i64 184, !13, i64 192, !10, i64 200, !20, i64 204, !20, i64 208, !20, i64 212, !20, i64 216, !20, i64 220, !20, i64 224, !20, i64 228, !20, i64 232, !20, i64 236, !10, i64 240, !10, i64 244, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276, !10, i64 280, !10, i64 284, !21, i64 288, !21, i64 296, !21, i64 304, !10, i64 312, !10, i64 316, !10, i64 320, !10, i64 324, !10, i64 328, !10, i64 332, !10, i64 336, !10, i64 340, !10, i64 344, !10, i64 348, !22, i64 352, !10, i64 376, !10, i64 380, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !10, i64 404, !13, i64 408, !10, i64 416, !10, i64 420, !10, i64 424, !20, i64 428, !20, i64 432, !10, i64 436, !10, i64 440, !10, i64 444, !10, i64 448, !10, i64 452, !23, i64 456, !17, i64 464, !17, i64 472, !20, i64 480, !20, i64 484, !10, i64 488, !10, i64 492, !18, i64 496, !18, i64 504, !10, i64 512, !10, i64 516, !10, i64 520, !10, i64 524, !10, i64 528, !24, i64 536, !13, i64 544, !25, i64 552, !25, i64 560, !10, i64 568, !10, i64 572, !9, i64 576, !10, i64 640, !10, i64 644, !10, i64 648, !10, i64 652, !10, i64 656, !10, i64 660, !10, i64 664, !13, i64 672, !13, i64 680, !10, i64 688, !10, i64 692, !10, i64 696, !10, i64 700, !10, i64 704, !10, i64 708, !10, i64 712, !10, i64 716, !10, i64 720, !26, i64 728, !18, i64 736, !10, i64 744, !10, i64 748, !18, i64 752, !18, i64 760, !18, i64 768, !27, i64 776, !10, i64 784, !10, i64 788, !17, i64 792, !10, i64 800, !10, i64 804, !17, i64 808, !13, i64 816, !17, i64 824, !28, i64 832, !10, i64 840, !30, i64 848, !10, i64 856, !10, i64 860}
!32 = !{!31, !13, i64 32}
!33 = !{!10, !10, i64 0}
!34 = !{!"p1 _ZTS14AVCodecContext", !13, i64 0}
!35 = !{!"GetByteContext", !18, i64 0, !18, i64 8, !18, i64 16}
!36 = !{!"p1 _ZTS8AVPacket", !13, i64 0}
!37 = !{!"p1 _ZTS7AVFrame", !13, i64 0}
!38 = !{!"short", !9, i64 0}
!39 = !{!"p1 _ZTS10TiffGeoTag", !13, i64 0}
!40 = !{!"p1 _ZTS11AVExifEntry", !13, i64 0}
!41 = !{!"AVExifMetadata", !40, i64 0, !10, i64 8, !10, i64 12}
!42 = !{!"TiffContext", !14, i64 0, !34, i64 8, !35, i64 16, !34, i64 40, !36, i64 48, !37, i64 56, !10, i64 64, !38, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !9, i64 96, !10, i64 1120, !10, i64 1124, !10, i64 1128, !10, i64 1132, !10, i64 1136, !9, i64 1140, !10, i64 1148, !10, i64 1152, !10, i64 1156, !9, i64 1160, !10, i64 1176, !10, i64 1180, !10, i64 1184, !10, i64 1188, !9, i64 1192, !9, i64 1196, !9, i64 1212, !9, i64 1228, !9, i64 1244, !9, i64 1292, !9, i64 1356, !9, i64 1372, !10, i64 1388, !9, i64 1392, !10, i64 132464, !38, i64 132468, !10, i64 132472, !10, i64 132476, !10, i64 132480, !10, i64 132484, !10, i64 132488, !10, i64 132492, !10, i64 132496, !10, i64 132500, !13, i64 132504, !10, i64 132512, !10, i64 132516, !10, i64 132520, !10, i64 132524, !10, i64 132528, !10, i64 132532, !18, i64 132536, !10, i64 132544, !18, i64 132552, !10, i64 132560, !10, i64 132564, !39, i64 132568, !41, i64 132576}
!43 = !{!42, !34, i64 8}
!44 = !{!42, !13, i64 132504}
!45 = !{!42, !37, i64 56}
!46 = !{!42, !36, i64 48}
!47 = !{!42, !34, i64 40}
!48 = !{!"AVPacket", !25, i64 0, !17, i64 8, !17, i64 16, !18, i64 24, !10, i64 32, !10, i64 36, !10, i64 40, !27, i64 48, !10, i64 56, !17, i64 64, !17, i64 72, !13, i64 80, !25, i64 88, !19, i64 96}
!49 = !{!48, !18, i64 24}
!50 = !{!48, !10, i64 32}
!51 = !{!35, !18, i64 0}
!52 = !{!35, !18, i64 16}
!53 = !{!35, !18, i64 8}
!54 = !{!42, !10, i64 1124}
!55 = !{!42, !10, i64 88}
!56 = !{!42, !10, i64 92}
!57 = !{!42, !10, i64 1132}
!58 = !{!42, !10, i64 1388}
!59 = !{!42, !10, i64 1184}
!60 = !{!38, !38, i64 0}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!20, !20, i64 0}
!63 = !{!42, !10, i64 132564}
!64 = !{!42, !39, i64 132568}
!65 = !{!42, !10, i64 80}
!66 = !{!42, !10, i64 84}
!67 = !{!9, !9, i64 0}
!68 = !{!42, !10, i64 132520}
!69 = !{!42, !10, i64 132516}
!70 = !{!42, !10, i64 132528}
!71 = !{!42, !10, i64 132524}
!72 = !{!18, !18, i64 0}
!73 = !{!42, !10, i64 1120}
!74 = !{!42, !10, i64 1136}
!75 = !{!"double", !9, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!"p1 _ZTS12AVDictionary", !13, i64 0}
!78 = !{!31, !10, i64 528}
!79 = !{!"p2 omnipotent char", !29, i64 0}
!80 = !{!"p2 _ZTS11AVBufferRef", !29, i64 0}
!81 = !{!"AVFrame", !9, i64 0, !9, i64 64, !79, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !19, i64 124, !17, i64 136, !17, i64 144, !19, i64 152, !10, i64 160, !13, i64 168, !10, i64 176, !10, i64 180, !9, i64 184, !80, i64 248, !10, i64 256, !30, i64 264, !10, i64 272, !10, i64 276, !10, i64 280, !10, i64 284, !10, i64 288, !10, i64 292, !10, i64 296, !17, i64 304, !77, i64 312, !10, i64 320, !25, i64 328, !25, i64 336, !17, i64 344, !17, i64 352, !17, i64 360, !17, i64 368, !13, i64 376, !22, i64 384, !17, i64 408, !10, i64 416}
!82 = !{!31, !10, i64 136}
!83 = !{!81, !10, i64 116}
!84 = !{!"AVPixFmtDescriptor", !18, i64 0, !9, i64 8, !9, i64 9, !9, i64 10, !17, i64 16, !9, i64 24, !18, i64 104}
!85 = !{!84, !17, i64 16}
!86 = !{!84, !9, i64 8}
!87 = !{!42, !10, i64 132560}
!88 = !{!31, !10, i64 112}
!89 = !{!31, !10, i64 116}
!90 = !{!31, !10, i64 644}
!91 = !{!31, !17, i64 792}
!92 = distinct !{!92, !61, !206, !207}
!93 = distinct !{!93, !61}
!94 = distinct !{!94, !61}
!95 = distinct !{!95, !61, !206, !207}
!96 = distinct !{!96, !61}
!97 = distinct !{!97, !61, !206}
!98 = distinct !{!98, !61}
!99 = distinct !{!99, !61}
!100 = distinct !{!100, !61}
!101 = distinct !{!101, !61}
!102 = distinct !{!102, !61}
!103 = distinct !{!103, !61}
!104 = distinct !{!104, !61}
!105 = distinct !{!105, !61}
!106 = distinct !{!106, !61}
!107 = distinct !{!107, !"LVerDomain"}
!108 = distinct !{!108, !107}
!109 = distinct !{!109, !107}
!110 = distinct !{!110, !61, !206, !207}
!111 = distinct !{!111, !61}
!112 = distinct !{!112, !61}
!113 = distinct !{!113, !61, !206}
!114 = distinct !{!114, !61}
!115 = distinct !{!115, !"LVerDomain"}
!116 = distinct !{!116, !115}
!117 = distinct !{!117, !115}
!118 = distinct !{!118, !61, !206, !207}
!119 = distinct !{!119, !61, !206}
!120 = distinct !{!120, !61}
!121 = distinct !{!121, !61}
!122 = distinct !{!122, !61}
!123 = distinct !{!123, !61}
!124 = distinct !{!124, !61}
!125 = distinct !{!125, !"LVerDomain"}
!126 = distinct !{!126, !125}
!127 = distinct !{!127, !125}
!128 = distinct !{!128, !61, !206, !207}
!129 = distinct !{!129, !61, !206}
!130 = distinct !{!130, !61}
!131 = distinct !{!131, !262}
!132 = distinct !{!132, !"LVerDomain"}
!133 = distinct !{!133, !132}
!134 = distinct !{!134, !132}
!135 = distinct !{!135, !61, !206, !207}
!136 = distinct !{!136, !61, !206}
!137 = distinct !{!137, !61, !206, !207}
!138 = distinct !{!138, !61, !207, !206}
!139 = distinct !{!139, !61}
!140 = distinct !{!140, !61}
!141 = distinct !{!141, !262}
!142 = distinct !{!142, !61}
!143 = distinct !{!143, !61}
!144 = distinct !{!144, !"LVerDomain"}
!145 = distinct !{!145, !144}
!146 = distinct !{!146, !144}
!147 = distinct !{!147, !61, !206, !207}
!148 = distinct !{!148, !61, !206, !207}
!149 = distinct !{!149, !61, !206}
!150 = distinct !{!150, !61}
!151 = distinct !{!151, !"LVerDomain"}
!152 = distinct !{!152, !151}
!153 = distinct !{!153, !151}
!154 = distinct !{!154, !61, !206, !207}
!155 = distinct !{!155, !61, !206}
!156 = distinct !{!156, !61}
!157 = distinct !{!157, !"LVerDomain"}
!158 = distinct !{!158, !157}
!159 = distinct !{!159, !157}
!160 = distinct !{!160, !61, !206, !207}
!161 = distinct !{!161, !61, !206, !207}
!162 = distinct !{!162, !61, !206}
!163 = distinct !{!163, !61}
!164 = distinct !{!164, !61, !206, !207}
!165 = distinct !{!165, !61, !206, !207}
!166 = distinct !{!166, !262}
!167 = distinct !{!167, !61, !206, !207}
!168 = distinct !{!168, !61, !206, !207}
!169 = distinct !{!169, !61, !206}
!170 = distinct !{!170, !61, !206}
!171 = distinct !{!171, !61}
!172 = distinct !{!172, !61}
end_hunk_1
