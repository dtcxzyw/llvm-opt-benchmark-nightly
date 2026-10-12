Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/solver_eigen?download=true
inline.NumInlined: 23967
inline.NumDeleted: 11511
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 155
loop-unroll.NumUnrolled: 180
begin_hunk_0_@_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE16fillSparseMatrixERKNS_17SparseBlockMatrixIS3_EEb:bb.a
  %.056.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.ce, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.bp = getelementptr inbounds nuw [48 x i8], ptr %i.bj, i64 %.07.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !332
  %i.bs = add i64 %i.br, %.056.i.i
  %i.bt = getelementptr inbounds nuw [48 x i8], ptr %i.bj, i64 %.07.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 88
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !332
  %i.bw = add i64 %i.bv, %i.bs
  %i.bx = getelementptr inbounds nuw [48 x i8], ptr %i.bj, i64 %.07.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 136
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !332
  %i.ca = add i64 %i.bz, %i.bw
  %i.cb = getelementptr inbounds nuw [48 x i8], ptr %i.bj, i64 %.07.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 184
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !332
  %i.ce = add i64 %i.cd, %i.ca                    ; 3 uses
  %i.cf = add nuw i64 %.07.i.i, 4                 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE13nonZeroBlocksEv.exit.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !32

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE13nonZeroBlocksEv.exit.loopexit.i.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE13nonZeroBlocksEv.exit.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE13nonZeroBlocksEv.exit.loopexit.i.unr-lcssa, %.lr.ph.preheader.i.i
  %.07.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.cf, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE13nonZeroBlocksEv.exit.loopexit.i.unr-lcssa ]
  %.056.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.ce, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE13nonZeroBlocksEv.exit.loopexit.i.unr-lcssa ]
  %lcmp.mod87 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod87)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.07.i.i.epil = phi i64 [ %i.ck, %.lr.ph.i.i.epil ], [ %.07.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.056.i.i.epil = phi i64 [ %i.cj, %.lr.ph.i.i.epil ], [ %.056.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.cg = getelementptr inbounds nuw [48 x i8], ptr %i.bj, i64 %.07.i.i.epil
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !332
  %i.cj = add i64 %i.ci, %.056.i.i.epil           ; 2 uses
  %i.ck = add nuw i64 %.07.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE13nonZeroBlocksEv.exit.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !2079

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE13nonZeroBlocksEv.exit.loopexit.i: ; preds = %.lr.ph.i.i.epil, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE13nonZeroBlocksEv.exit.loopexit.i.unr-lcssa
  %.lcssa85 = phi i64 [ %i.ce, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE13nonZeroBlocksEv.exit.loopexit.i.unr-lcssa ], [ %i.cj, %.lr.ph.i.i.epil ]
  %i.cl = mul i64 %.lcssa85, 9
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8nonZerosEv.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8nonZerosEv.exit: ; preds = %bb.f, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE13nonZeroBlocksEv.exit.loopexit.i
  %.05.lcssa.i.i = phi i64 [ 0, %bb.f ], [ %i.cl, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE13nonZeroBlocksEv.exit.loopexit.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, i64 noundef %.05.lcssa.i.i, double noundef 0.000000e+00)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !638 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !362 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !645 ; 2 uses
  %i.cu = load ptr, ptr %i.cr, align 8, !tbaa !644 ; 3 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = sdiv exact i64 %i.cx, 24
  %.not130.i = icmp eq ptr %i.ct, %i.cu
  br i1 %.not130.i, label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE7fillCCSEPiS5_Pdb.exit, label %.lr.ph123.i

.lr.ph123.i:                                      ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8nonZerosEv.exit
  %i.cz = load ptr, ptr %i.cm, align 8, !tbaa !364
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !365
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !403, !align !420
  %.pre161.pre.i = load ptr, ptr %i.dd, align 8, !tbaa !406 ; 3 uses
  br label %.lr.ph123.split.us.i

.lr.ph123.split.us.i:                             ; preds = %._crit_edge74.us.i, %.lr.ph123.i
  %.034121.us.i = phi i64 [ %i.gl, %._crit_edge74.us.i ], [ 0, %.lr.ph123.i ] ; 6 uses
  %.035120.us.i = phi i32 [ %.1.lcssa.us.i, %._crit_edge74.us.i ], [ 0, %.lr.ph123.i ] ; 6 uses
  %.036119.us.i = phi ptr [ %.137.lcssa.us.i, %._crit_edge74.us.i ], [ %i.cq, %.lr.ph123.i ] ; 5 uses
  %.038118.us.i = phi ptr [ %.139.lcssa.us.i, %._crit_edge74.us.i ], [ %i.cz, %.lr.ph123.i ] ; 4 uses
  %.042117.us.i = phi ptr [ %.143.lcssa.us.i, %._crit_edge74.us.i ], [ %i.db, %.lr.ph123.i ] ; 4 uses
  %.not.us.i = icmp eq i64 %.034121.us.i, 0
  br i1 %.not.us.i, label %.thread.us.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph123.split.us.i
  %i.de = getelementptr [4 x i8], ptr %.pre161.pre.i, i64 %.034121.us.i
  %i.df = getelementptr i8, ptr %i.de, i64 -4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !97 ; 2 uses
  %i.dh = and i64 %.034121.us.i, 4294967295
  %.not.i.us.i = icmp eq i64 %i.dh, 0
  br i1 %.not.i.us.i, label %.thread.us.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %sext.us.i = shl i64 %.034121.us.i, 32
  %i.di = ashr exact i64 %sext.us.i, 30
  %i.dj = getelementptr i8, ptr %.pre161.pre.i, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !97
  %i.dl = getelementptr i8, ptr %i.dj, i64 -4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !97
  %i.dn = sub nsw i32 %i.dk, %i.dm
  br label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11colsOfBlockEi.exit.us.i

.thread.us.i:                                     ; preds = %bb.g, %.lr.ph123.split.us.i
  %i.do = phi i32 [ %i.dg, %bb.g ], [ 0, %.lr.ph123.split.us.i ]
  %i.dp = load i32, ptr %.pre161.pre.i, align 4, !tbaa !97
  br label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11colsOfBlockEi.exit.us.i

_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11colsOfBlockEi.exit.us.i: ; preds = %.thread.us.i, %bb.h
  %i.dq = phi i32 [ %i.dg, %bb.h ], [ %i.do, %.thread.us.i ]
  %i.dr = phi i32 [ %i.dn, %bb.h ], [ %i.dp, %.thread.us.i ] ; 4 uses
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %.lr.ph73.us.i, label %._crit_edge74.us.i

.lr.ph73.us.i:                                    ; preds = %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11colsOfBlockEi.exit.us.i
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %.034121.us.i ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !652 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !652 ; 2 uses
  %.not5359.us.i = icmp eq ptr %i.du, %i.dw
  %i.dx = zext nneg i32 %i.dr to i64              ; 3 uses
  br i1 %.not5359.us.i, label %.lr.ph73.split.us.us.i.preheader, label %.lr.ph.us.us.i

.lr.ph73.split.us.us.i.preheader:                 ; preds = %.lr.ph73.us.i
  %min.iters.check = icmp ult i32 %i.dr, 8
  br i1 %min.iters.check, label %.lr.ph73.split.us.us.i.preheader78, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph73.split.us.us.i.preheader
  %n.vec = and i64 %i.dx, 2147483640              ; 4 uses
  %i.dy = trunc nuw nsw i64 %n.vec to i32
  %i.dz = shl nuw nsw i64 %n.vec, 2
  %i.ea = getelementptr i8, ptr %.036119.us.i, i64 %i.dz ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.035120.us.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eb = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.036119.us.i, i64 %i.eb ; 2 uses
  %i.ec = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !97
  store <4 x i32> %broadcast.splat, ptr %i.ec, align 4, !tbaa !97
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !2080

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dx
  br i1 %cmp.n, label %._crit_edge74.us.i, label %.lr.ph73.split.us.us.i.preheader78

.lr.ph73.split.us.us.i.preheader78:               ; preds = %.lr.ph73.split.us.us.i.preheader, %middle.block
  %.03372.us.us.i.ph = phi i32 [ 0, %.lr.ph73.split.us.us.i.preheader ], [ %i.dy, %middle.block ]
  %.13770.us.us.i.ph = phi ptr [ %.036119.us.i, %.lr.ph73.split.us.us.i.preheader ], [ %i.ea, %middle.block ]
  br label %.lr.ph73.split.us.us.i

.lr.ph.us.us.i:                                   ; preds = %.lr.ph73.us.i, %._crit_edge.split.us105.us.i
  %indvars.iv152.i = phi i64 [ %indvars.iv.next153.i, %._crit_edge.split.us105.us.i ], [ 0, %.lr.ph73.us.i ] ; 3 uses
  %.171.us84.us.i = phi i32 [ %i.gg, %._crit_edge.split.us105.us.i ], [ %.035120.us.i, %.lr.ph73.us.i ] ; 2 uses
  %.13770.us85.us.i = phi ptr [ %i.gi, %._crit_edge.split.us105.us.i ], [ %.036119.us.i, %.lr.ph73.us.i ] ; 2 uses
  %.13969.us86.us.i = phi ptr [ %.lcssa51, %._crit_edge.split.us105.us.i ], [ %.038118.us.i, %.lr.ph73.us.i ]
  %.14368.us87.us.i = phi ptr [ %.lcssa50, %._crit_edge.split.us105.us.i ], [ %.042117.us.i, %.lr.ph73.us.i ]
  %i.ee = mul nsw i64 %indvars.iv152.i, -24
  store i32 %.171.us84.us.i, ptr %.13770.us85.us.i, align 4, !tbaa !97
  %indvars.iv.next153.i = add nuw nsw i64 %indvars.iv152.i, 1 ; 3 uses
  %.idx.i.i.i.us.us.i = mul nuw nsw i64 %indvars.iv152.i, 24
  %i.ef = trunc nuw nsw i64 %indvars.iv.next153.i to i32
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %.lr.ph.us.us.i
  %.263.us89.us.i = phi i32 [ %.171.us84.us.i, %.lr.ph.us.us.i ], [ %i.gg, %.loopexit ]
  %.24062.us90.us.i = phi ptr [ %.13969.us86.us.i, %.lr.ph.us.us.i ], [ %.lcssa51, %.loopexit ] ; 5 uses
  %.24461.us91.us.i = phi ptr [ %.14368.us87.us.i, %.lr.ph.us.us.i ], [ %.lcssa50, %.loopexit ] ; 4 uses
  %.sroa.047.060.us92.us.i = phi ptr [ %i.du, %.lr.ph.us.us.i ], [ %i.gh, %.loopexit ] ; 3 uses
  %.24062.us90.us.i57 = ptrtoaddr ptr %.24062.us90.us.i to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.047.060.us92.us.i, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !655 ; 2 uses
  %i.ei = ptrtoaddr ptr %i.eh to i64
  %i.ej = load i32, ptr %.sroa.047.060.us92.us.i, align 8, !tbaa !656 ; 2 uses
  %.not46.us93.us.i = icmp eq i32 %i.ej, 0
  br i1 %.not46.us93.us.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ek = load ptr, ptr %i.co, align 8, !tbaa !2093, !nonnull !403, !align !420
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !406
  %i.em = sext i32 %i.ej to i64
  %i.en = getelementptr [4 x i8], ptr %i.el, i64 %i.em
  %i.eo = getelementptr i8, ptr %i.en, i64 -4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !97
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.eq = phi i32 [ %i.ep, %bb.j ], [ 0, %bb.i ]  ; 5 uses
  %i.er = icmp eq i32 %i.eq, %i.dq
  %spec.select.i4 = select i1 %i.er, i32 %i.ef, i32 3 ; 3 uses
  %invariant.gep.us94.us.i = getelementptr i8, ptr %i.eh, i64 %.idx.i.i.i.us.us.i ; 6 uses
  %wide.trip.count150.i = zext i32 %spec.select.i4 to i64 ; 5 uses
  %min.iters.check59 = icmp ult i32 %spec.select.i4, 4
  br i1 %min.iters.check59, label %scalar.ph58.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.k
  %i.es = add i64 %i.ee, %.24062.us90.us.i57
  %i.et = sub i64 %i.ei, %i.es
  %diff.check = icmp ugt i64 %i.et, -32
  br i1 %diff.check, label %scalar.ph58.preheader, label %vector.ph60

vector.ph60:                                      ; preds = %vector.memcheck
  %n.vec61 = and i64 %wide.trip.count150.i, 4294967292 ; 6 uses
  %i.eu = trunc nuw i64 %n.vec61 to i32
  %i.ev = add i32 %i.eq, %i.eu
  %i.ew = shl nuw nsw i64 %n.vec61, 3
  %i.ex = getelementptr i8, ptr %.24062.us90.us.i, i64 %i.ew ; 2 uses
  %i.ey = shl nuw nsw i64 %n.vec61, 2
  %i.ez = getelementptr i8, ptr %.24461.us91.us.i, i64 %i.ey ; 2 uses
  %broadcast.splatinsert62 = insertelement <2 x i32> poison, i32 %i.eq, i64 0
  %broadcast.splat63 = shufflevector <2 x i32> %broadcast.splatinsert62, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction = add nsw <2 x i32> %broadcast.splat63, <i32 0, i32 1>
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph60
  %index65 = phi i64 [ 0, %vector.ph60 ], [ %index.next69, %vector.body64 ] ; 4 uses
  %vec.ind = phi <2 x i32> [ %induction, %vector.ph60 ], [ %vec.ind.next, %vector.body64 ] ; 3 uses
  %step.add = add nsw <2 x i32> %vec.ind, splat (i32 2)
  %i.fa = shl i64 %index65, 3
  %next.gep66 = getelementptr i8, ptr %.24062.us90.us.i, i64 %i.fa ; 2 uses
  %i.fb = shl i64 %index65, 2
  %next.gep67 = getelementptr i8, ptr %.24461.us91.us.i, i64 %i.fb ; 2 uses
  %i.fc = getelementptr [8 x i8], ptr %invariant.gep.us94.us.i, i64 %index65 ; 2 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 16
  %wide.load = load <2 x double>, ptr %i.fc, align 8, !tbaa !384
  %wide.load68 = load <2 x double>, ptr %i.fd, align 8, !tbaa !384
  %i.fe = getelementptr i8, ptr %next.gep66, i64 16
  store <2 x double> %wide.load, ptr %next.gep66, align 8, !tbaa !384
  store <2 x double> %wide.load68, ptr %i.fe, align 8, !tbaa !384
  %i.ff = getelementptr i8, ptr %next.gep67, i64 8
  store <2 x i32> %vec.ind, ptr %next.gep67, align 4, !tbaa !97
  store <2 x i32> %step.add, ptr %i.ff, align 4, !tbaa !97
  %index.next69 = add nuw i64 %index65, 4         ; 2 uses
  %vec.ind.next = add nsw <2 x i32> %vec.ind, splat (i32 4)
  %i.fg = icmp eq i64 %index.next69, %n.vec61
  br i1 %i.fg, label %middle.block70, label %vector.body64, !llvm.loop !2081

middle.block70:                                   ; preds = %vector.body64
  %cmp.n71 = icmp eq i64 %n.vec61, %wide.trip.count150.i
  br i1 %cmp.n71, label %.loopexit, label %scalar.ph58.preheader

scalar.ph58.preheader:                            ; preds = %vector.memcheck, %bb.k, %middle.block70
  %indvars.iv147.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.k ], [ %n.vec61, %middle.block70 ] ; 3 uses
  %.03257.us96.us.i.ph = phi i32 [ %i.eq, %vector.memcheck ], [ %i.eq, %bb.k ], [ %i.ev, %middle.block70 ] ; 2 uses
  %.34155.us98.us.i.ph = phi ptr [ %.24062.us90.us.i, %vector.memcheck ], [ %.24062.us90.us.i, %bb.k ], [ %i.ex, %middle.block70 ] ; 2 uses
  %.34554.us99.us.i.ph = phi ptr [ %.24461.us91.us.i, %vector.memcheck ], [ %.24461.us91.us.i, %bb.k ], [ %i.ez, %middle.block70 ] ; 2 uses
  %xtraiter88 = and i64 %wide.trip.count150.i, 3  ; 2 uses
  %lcmp.mod89.not = icmp eq i64 %xtraiter88, 0
  br i1 %lcmp.mod89.not, label %scalar.ph58.prol.loopexit, label %scalar.ph58.prol

scalar.ph58.prol:                                 ; preds = %scalar.ph58.preheader, %scalar.ph58.prol
  %indvars.iv147.i.prol = phi i64 [ %indvars.iv.next148.i.prol, %scalar.ph58.prol ], [ %indvars.iv147.i.ph, %scalar.ph58.preheader ] ; 2 uses
  %.03257.us96.us.i.prol = phi i32 [ %i.fj, %scalar.ph58.prol ], [ %.03257.us96.us.i.ph, %scalar.ph58.preheader ] ; 2 uses
  %.34155.us98.us.i.prol = phi ptr [ %i.fi, %scalar.ph58.prol ], [ %.34155.us98.us.i.ph, %scalar.ph58.preheader ] ; 2 uses
  %.34554.us99.us.i.prol = phi ptr [ %i.fk, %scalar.ph58.prol ], [ %.34554.us99.us.i.ph, %scalar.ph58.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph58.prol ], [ 0, %scalar.ph58.preheader ]
  %gep.us100.us.i.prol = getelementptr [8 x i8], ptr %invariant.gep.us94.us.i, i64 %indvars.iv147.i.prol
  %i.fh = load double, ptr %gep.us100.us.i.prol, align 8, !tbaa !384
  %i.fi = getelementptr inbounds nuw i8, ptr %.34155.us98.us.i.prol, i64 8 ; 3 uses
  store double %i.fh, ptr %.34155.us98.us.i.prol, align 8, !tbaa !384
  %i.fj = add nsw i32 %.03257.us96.us.i.prol, 1   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.34554.us99.us.i.prol, i64 4 ; 3 uses
  store i32 %.03257.us96.us.i.prol, ptr %.34554.us99.us.i.prol, align 4, !tbaa !97
  %indvars.iv.next148.i.prol = add nuw nsw i64 %indvars.iv147.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter88
  br i1 %prol.iter.cmp.not, label %scalar.ph58.prol.loopexit, label %scalar.ph58.prol, !llvm.loop !2082

scalar.ph58.prol.loopexit:                        ; preds = %scalar.ph58.prol, %scalar.ph58.preheader
  %.lcssa81.unr = phi ptr [ poison, %scalar.ph58.preheader ], [ %i.fi, %scalar.ph58.prol ]
  %.lcssa80.unr = phi ptr [ poison, %scalar.ph58.preheader ], [ %i.fk, %scalar.ph58.prol ]
  %indvars.iv147.i.unr = phi i64 [ %indvars.iv147.i.ph, %scalar.ph58.preheader ], [ %indvars.iv.next148.i.prol, %scalar.ph58.prol ]
  %.03257.us96.us.i.unr = phi i32 [ %.03257.us96.us.i.ph, %scalar.ph58.preheader ], [ %i.fj, %scalar.ph58.prol ]
  %.34155.us98.us.i.unr = phi ptr [ %.34155.us98.us.i.ph, %scalar.ph58.preheader ], [ %i.fi, %scalar.ph58.prol ]
  %.34554.us99.us.i.unr = phi ptr [ %.34554.us99.us.i.ph, %scalar.ph58.preheader ], [ %i.fk, %scalar.ph58.prol ]
  %i.fl = sub nsw i64 %indvars.iv147.i.ph, %wide.trip.count150.i
  %i.fm = icmp ugt i64 %i.fl, -4
  br i1 %i.fm, label %.loopexit, label %scalar.ph58

scalar.ph58:                                      ; preds = %scalar.ph58.prol.loopexit, %scalar.ph58
  %indvars.iv147.i = phi i64 [ %indvars.iv.next148.i.3, %scalar.ph58 ], [ %indvars.iv147.i.unr, %scalar.ph58.prol.loopexit ] ; 5 uses
  %.03257.us96.us.i = phi i32 [ %i.ge, %scalar.ph58 ], [ %.03257.us96.us.i.unr, %scalar.ph58.prol.loopexit ] ; 5 uses
  %.34155.us98.us.i = phi ptr [ %i.gd, %scalar.ph58 ], [ %.34155.us98.us.i.unr, %scalar.ph58.prol.loopexit ] ; 5 uses
  %.34554.us99.us.i = phi ptr [ %i.gf, %scalar.ph58 ], [ %.34554.us99.us.i.unr, %scalar.ph58.prol.loopexit ] ; 5 uses
  %gep.us100.us.i = getelementptr [8 x i8], ptr %invariant.gep.us94.us.i, i64 %indvars.iv147.i
  %i.fn = load double, ptr %gep.us100.us.i, align 8, !tbaa !384
  %i.fo = getelementptr inbounds nuw i8, ptr %.34155.us98.us.i, i64 8
  store double %i.fn, ptr %.34155.us98.us.i, align 8, !tbaa !384
  %i.fp = add nsw i32 %.03257.us96.us.i, 1
  %i.fq = getelementptr inbounds nuw i8, ptr %.34554.us99.us.i, i64 4
  store i32 %.03257.us96.us.i, ptr %.34554.us99.us.i, align 4, !tbaa !97
  %i.fr = getelementptr [8 x i8], ptr %invariant.gep.us94.us.i, i64 %indvars.iv147.i
  %gep.us100.us.i.1 = getelementptr i8, ptr %i.fr, i64 8
  %i.fs = load double, ptr %gep.us100.us.i.1, align 8, !tbaa !384
  %i.ft = getelementptr inbounds nuw i8, ptr %.34155.us98.us.i, i64 16
  store double %i.fs, ptr %i.fo, align 8, !tbaa !384
  %i.fu = add nsw i32 %.03257.us96.us.i, 2
  %i.fv = getelementptr inbounds nuw i8, ptr %.34554.us99.us.i, i64 8
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !97
  %i.fw = getelementptr [8 x i8], ptr %invariant.gep.us94.us.i, i64 %indvars.iv147.i
  %gep.us100.us.i.2 = getelementptr i8, ptr %i.fw, i64 16
  %i.fx = load double, ptr %gep.us100.us.i.2, align 8, !tbaa !384
  %i.fy = getelementptr inbounds nuw i8, ptr %.34155.us98.us.i, i64 24
  store double %i.fx, ptr %i.ft, align 8, !tbaa !384
  %i.fz = add nsw i32 %.03257.us96.us.i, 3
  %i.ga = getelementptr inbounds nuw i8, ptr %.34554.us99.us.i, i64 12
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !97
  %i.gb = getelementptr [8 x i8], ptr %invariant.gep.us94.us.i, i64 %indvars.iv147.i
  %gep.us100.us.i.3 = getelementptr i8, ptr %i.gb, i64 24
  %i.gc = load double, ptr %gep.us100.us.i.3, align 8, !tbaa !384
  %i.gd = getelementptr inbounds nuw i8, ptr %.34155.us98.us.i, i64 32 ; 2 uses
  store double %i.gc, ptr %i.fy, align 8, !tbaa !384
  %i.ge = add nsw i32 %.03257.us96.us.i, 4
  %i.gf = getelementptr inbounds nuw i8, ptr %.34554.us99.us.i, i64 16 ; 2 uses
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !97
  %indvars.iv.next148.i.3 = add nuw nsw i64 %indvars.iv147.i, 4 ; 2 uses
  %exitcond151.not.i.3 = icmp eq i64 %indvars.iv.next148.i.3, %wide.trip.count150.i
  br i1 %exitcond151.not.i.3, label %.loopexit, label %scalar.ph58, !llvm.loop !2083

.loopexit:                                        ; preds = %scalar.ph58.prol.loopexit, %scalar.ph58, %middle.block70
  %.lcssa51 = phi ptr [ %i.ex, %middle.block70 ], [ %.lcssa81.unr, %scalar.ph58.prol.loopexit ], [ %i.gd, %scalar.ph58 ] ; 3 uses
  %.lcssa50 = phi ptr [ %i.ez, %middle.block70 ], [ %.lcssa80.unr, %scalar.ph58.prol.loopexit ], [ %i.gf, %scalar.ph58 ] ; 3 uses
  %i.gg = add i32 %spec.select.i4, %.263.us89.us.i ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.047.060.us92.us.i, i64 16 ; 2 uses
  %.not53.us104.us.i = icmp eq ptr %i.gh, %i.dw
  br i1 %.not53.us104.us.i, label %._crit_edge.split.us105.us.i, label %bb.i, !llvm.loop !2084

._crit_edge.split.us105.us.i:                     ; preds = %.loopexit
  %i.gi = getelementptr inbounds nuw i8, ptr %.13770.us85.us.i, i64 4 ; 2 uses
  %exitcond156.not.i = icmp eq i64 %indvars.iv.next153.i, %i.dx
  br i1 %exitcond156.not.i, label %._crit_edge74.us.i, label %.lr.ph.us.us.i, !llvm.loop !2085

.lr.ph73.split.us.us.i:                           ; preds = %.lr.ph73.split.us.us.i.preheader78, %.lr.ph73.split.us.us.i
  %.03372.us.us.i = phi i32 [ %i.gk, %.lr.ph73.split.us.us.i ], [ %.03372.us.us.i.ph, %.lr.ph73.split.us.us.i.preheader78 ]
  %.13770.us.us.i = phi ptr [ %i.gj, %.lr.ph73.split.us.us.i ], [ %.13770.us.us.i.ph, %.lr.ph73.split.us.us.i.preheader78 ] ; 2 uses
  store i32 %.035120.us.i, ptr %.13770.us.us.i, align 4, !tbaa !97
  %i.gj = getelementptr inbounds nuw i8, ptr %.13770.us.us.i, i64 4 ; 2 uses
  %i.gk = add nuw nsw i32 %.03372.us.us.i, 1      ; 2 uses
  %exitcond157.not.i = icmp eq i32 %i.gk, %i.dr
  br i1 %exitcond157.not.i, label %._crit_edge74.us.i, label %.lr.ph73.split.us.us.i, !llvm.loop !2086

._crit_edge74.us.i:                               ; preds = %._crit_edge.split.us105.us.i, %.lr.ph73.split.us.us.i, %middle.block, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11colsOfBlockEi.exit.us.i
  %.143.lcssa.us.i = phi ptr [ %.042117.us.i, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11colsOfBlockEi.exit.us.i ], [ %.042117.us.i, %middle.block ], [ %.042117.us.i, %.lr.ph73.split.us.us.i ], [ %.lcssa50, %._crit_edge.split.us105.us.i ]
  %.139.lcssa.us.i = phi ptr [ %.038118.us.i, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11colsOfBlockEi.exit.us.i ], [ %.038118.us.i, %middle.block ], [ %.038118.us.i, %.lr.ph73.split.us.us.i ], [ %.lcssa51, %._crit_edge.split.us105.us.i ]
  %.137.lcssa.us.i = phi ptr [ %.036119.us.i, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11colsOfBlockEi.exit.us.i ], [ %i.ea, %middle.block ], [ %i.gj, %.lr.ph73.split.us.us.i ], [ %i.gi, %._crit_edge.split.us105.us.i ] ; 2 uses
  %.1.lcssa.us.i = phi i32 [ %.035120.us.i, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11colsOfBlockEi.exit.us.i ], [ %.035120.us.i, %middle.block ], [ %.035120.us.i, %.lr.ph73.split.us.us.i ], [ %i.gg, %._crit_edge.split.us105.us.i ] ; 2 uses
  %i.gl = add nuw i64 %.034121.us.i, 1            ; 2 uses
  %exitcond159.not.i = icmp eq i64 %i.gl, %i.cy
  br i1 %exitcond159.not.i, label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE7fillCCSEPiS5_Pdb.exit, label %.lr.ph123.split.us.i, !llvm.loop !2087

_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE7fillCCSEPiS5_Pdb.exit: ; preds = %._crit_edge74.us.i, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8nonZerosEv.exit
  %.036.lcssa.i = phi ptr [ %i.cq, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8nonZerosEv.exit ], [ %.137.lcssa.us.i, %._crit_edge74.us.i ]
  %.035.lcssa.i = phi i32 [ 0, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8nonZerosEv.exit ], [ %.1.lcssa.us.i, %._crit_edge74.us.i ]
  store i32 %.035.lcssa.i, ptr %.036.lcssa.i, align 4, !tbaa !97
  br label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE7fillCCSEPdb.exit

_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE7fillCCSEPdb.exit: ; preds = %._crit_edge42.i, %bb.b, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE7fillCCSEPiS5_Pdb.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE28computeSymbolicDecompositionERKNS_17SparseBlockMatrixIS3_EE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(73) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::PermutationMatrix", align 8 ; 8 uses
  %3 = alloca %"class.Eigen::SparseMatrix", align 8 ; 13 uses
  %4 = alloca %"class.Eigen::AMDOrdering", align 1 ; 4 uses
  %5 = alloca %"class.Eigen::PermutationMatrix", align 8 ; 11 uses
  %i.a = tail call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i8, ptr %i.b, align 8, !tbaa !168, !range !402, !noundef !403
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi2ENS_11AMDOrderingIiEEEEE14analyzePatternERKS3_b(ptr noundef nonnull align 8 dereferenceable(184) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i1 noundef zeroext false)
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !659  ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !660  ; 7 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 48                  ; 6 uses
  store i8 0, ptr %3, align 8, !tbaa !355
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.o, i8 0, i64 64, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.n, ptr %i.p, align 8, !tbaa !399
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.r = shl nsw i64 %i.n, 2
  %i.s = add nsw i64 %i.r, 4
  %calloc = tail call ptr @calloc(i64 1, i64 %i.s) ; 2 uses
  store ptr %calloc, ptr %i.q, align 8, !tbaa !362
  %.not6.i = icmp eq ptr %calloc, null
  br i1 %.not6.i, label %bb.d, label %bb.f

end_hunk_0
begin_hunk_1_@_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE16fillSparseMatrixERKNS_17SparseBlockMatrixIS3_EEb:bb.a
  %.056.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.ce, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.bp = getelementptr inbounds nuw [48 x i8], ptr %i.bj, i64 %.07.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !332
  %i.bs = add i64 %i.br, %.056.i.i
  %i.bt = getelementptr inbounds nuw [48 x i8], ptr %i.bj, i64 %.07.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 88
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !332
  %i.bw = add i64 %i.bv, %i.bs
  %i.bx = getelementptr inbounds nuw [48 x i8], ptr %i.bj, i64 %.07.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 136
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !332
  %i.ca = add i64 %i.bz, %i.bw
  %i.cb = getelementptr inbounds nuw [48 x i8], ptr %i.bj, i64 %.07.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 184
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !332
  %i.ce = add i64 %i.cd, %i.ca                    ; 3 uses
  %i.cf = add nuw i64 %.07.i.i, 4                 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE13nonZeroBlocksEv.exit.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !47

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE13nonZeroBlocksEv.exit.loopexit.i.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE13nonZeroBlocksEv.exit.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE13nonZeroBlocksEv.exit.loopexit.i.unr-lcssa, %.lr.ph.preheader.i.i
  %.07.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.cf, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE13nonZeroBlocksEv.exit.loopexit.i.unr-lcssa ]
  %.056.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.ce, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE13nonZeroBlocksEv.exit.loopexit.i.unr-lcssa ]
  %lcmp.mod87 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod87)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.07.i.i.epil = phi i64 [ %i.ck, %.lr.ph.i.i.epil ], [ %.07.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.056.i.i.epil = phi i64 [ %i.cj, %.lr.ph.i.i.epil ], [ %.056.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.cg = getelementptr inbounds nuw [48 x i8], ptr %i.bj, i64 %.07.i.i.epil
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !332
  %i.cj = add i64 %i.ci, %.056.i.i.epil           ; 2 uses
  %i.ck = add nuw i64 %.07.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE13nonZeroBlocksEv.exit.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !2348

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE13nonZeroBlocksEv.exit.loopexit.i: ; preds = %.lr.ph.i.i.epil, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE13nonZeroBlocksEv.exit.loopexit.i.unr-lcssa
  %.lcssa85 = phi i64 [ %i.ce, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE13nonZeroBlocksEv.exit.loopexit.i.unr-lcssa ], [ %i.cj, %.lr.ph.i.i.epil ]
  %i.cl = mul i64 %.lcssa85, 36
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8nonZerosEv.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8nonZerosEv.exit: ; preds = %bb.f, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE13nonZeroBlocksEv.exit.loopexit.i
  %.05.lcssa.i.i = phi i64 [ 0, %bb.f ], [ %i.cl, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE13nonZeroBlocksEv.exit.loopexit.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, i64 noundef %.05.lcssa.i.i, double noundef 0.000000e+00)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !744 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !362 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !751 ; 2 uses
  %i.cu = load ptr, ptr %i.cr, align 8, !tbaa !750 ; 3 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = sdiv exact i64 %i.cx, 24
  %.not130.i = icmp eq ptr %i.ct, %i.cu
  br i1 %.not130.i, label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE7fillCCSEPiS5_Pdb.exit, label %.lr.ph123.i

.lr.ph123.i:                                      ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8nonZerosEv.exit
  %i.cz = load ptr, ptr %i.cm, align 8, !tbaa !364
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !365
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !403, !align !420
  %.pre161.pre.i = load ptr, ptr %i.dd, align 8, !tbaa !406 ; 3 uses
  br label %.lr.ph123.split.us.i

.lr.ph123.split.us.i:                             ; preds = %._crit_edge74.us.i, %.lr.ph123.i
  %.034121.us.i = phi i64 [ %i.gl, %._crit_edge74.us.i ], [ 0, %.lr.ph123.i ] ; 6 uses
  %.035120.us.i = phi i32 [ %.1.lcssa.us.i, %._crit_edge74.us.i ], [ 0, %.lr.ph123.i ] ; 6 uses
  %.036119.us.i = phi ptr [ %.137.lcssa.us.i, %._crit_edge74.us.i ], [ %i.cq, %.lr.ph123.i ] ; 5 uses
  %.038118.us.i = phi ptr [ %.139.lcssa.us.i, %._crit_edge74.us.i ], [ %i.cz, %.lr.ph123.i ] ; 4 uses
  %.042117.us.i = phi ptr [ %.143.lcssa.us.i, %._crit_edge74.us.i ], [ %i.db, %.lr.ph123.i ] ; 4 uses
  %.not.us.i = icmp eq i64 %.034121.us.i, 0
  br i1 %.not.us.i, label %.thread.us.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph123.split.us.i
  %i.de = getelementptr [4 x i8], ptr %.pre161.pre.i, i64 %.034121.us.i
  %i.df = getelementptr i8, ptr %i.de, i64 -4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !97 ; 2 uses
  %i.dh = and i64 %.034121.us.i, 4294967295
  %.not.i.us.i = icmp eq i64 %i.dh, 0
  br i1 %.not.i.us.i, label %.thread.us.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %sext.us.i = shl i64 %.034121.us.i, 32
  %i.di = ashr exact i64 %sext.us.i, 30
  %i.dj = getelementptr i8, ptr %.pre161.pre.i, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !97
  %i.dl = getelementptr i8, ptr %i.dj, i64 -4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !97
  %i.dn = sub nsw i32 %i.dk, %i.dm
  br label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11colsOfBlockEi.exit.us.i

.thread.us.i:                                     ; preds = %bb.g, %.lr.ph123.split.us.i
  %i.do = phi i32 [ %i.dg, %bb.g ], [ 0, %.lr.ph123.split.us.i ]
  %i.dp = load i32, ptr %.pre161.pre.i, align 4, !tbaa !97
  br label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11colsOfBlockEi.exit.us.i

_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11colsOfBlockEi.exit.us.i: ; preds = %.thread.us.i, %bb.h
  %i.dq = phi i32 [ %i.dg, %bb.h ], [ %i.do, %.thread.us.i ]
  %i.dr = phi i32 [ %i.dn, %bb.h ], [ %i.dp, %.thread.us.i ] ; 4 uses
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %.lr.ph73.us.i, label %._crit_edge74.us.i

.lr.ph73.us.i:                                    ; preds = %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11colsOfBlockEi.exit.us.i
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %.034121.us.i ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !758 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !758 ; 2 uses
  %.not5359.us.i = icmp eq ptr %i.du, %i.dw
  %i.dx = zext nneg i32 %i.dr to i64              ; 3 uses
  br i1 %.not5359.us.i, label %.lr.ph73.split.us.us.i.preheader, label %.lr.ph.us.us.i

.lr.ph73.split.us.us.i.preheader:                 ; preds = %.lr.ph73.us.i
  %min.iters.check = icmp ult i32 %i.dr, 8
  br i1 %min.iters.check, label %.lr.ph73.split.us.us.i.preheader78, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph73.split.us.us.i.preheader
  %n.vec = and i64 %i.dx, 2147483640              ; 4 uses
  %i.dy = trunc nuw nsw i64 %n.vec to i32
  %i.dz = shl nuw nsw i64 %n.vec, 2
  %i.ea = getelementptr i8, ptr %.036119.us.i, i64 %i.dz ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.035120.us.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eb = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.036119.us.i, i64 %i.eb ; 2 uses
  %i.ec = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !97
  store <4 x i32> %broadcast.splat, ptr %i.ec, align 4, !tbaa !97
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !2349

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dx
  br i1 %cmp.n, label %._crit_edge74.us.i, label %.lr.ph73.split.us.us.i.preheader78

.lr.ph73.split.us.us.i.preheader78:               ; preds = %.lr.ph73.split.us.us.i.preheader, %middle.block
  %.03372.us.us.i.ph = phi i32 [ 0, %.lr.ph73.split.us.us.i.preheader ], [ %i.dy, %middle.block ]
  %.13770.us.us.i.ph = phi ptr [ %.036119.us.i, %.lr.ph73.split.us.us.i.preheader ], [ %i.ea, %middle.block ]
  br label %.lr.ph73.split.us.us.i

.lr.ph.us.us.i:                                   ; preds = %.lr.ph73.us.i, %._crit_edge.split.us105.us.i
  %indvars.iv152.i = phi i64 [ %indvars.iv.next153.i, %._crit_edge.split.us105.us.i ], [ 0, %.lr.ph73.us.i ] ; 3 uses
  %.171.us84.us.i = phi i32 [ %i.gg, %._crit_edge.split.us105.us.i ], [ %.035120.us.i, %.lr.ph73.us.i ] ; 2 uses
  %.13770.us85.us.i = phi ptr [ %i.gi, %._crit_edge.split.us105.us.i ], [ %.036119.us.i, %.lr.ph73.us.i ] ; 2 uses
  %.13969.us86.us.i = phi ptr [ %.lcssa51, %._crit_edge.split.us105.us.i ], [ %.038118.us.i, %.lr.ph73.us.i ]
  %.14368.us87.us.i = phi ptr [ %.lcssa50, %._crit_edge.split.us105.us.i ], [ %.042117.us.i, %.lr.ph73.us.i ]
  %i.ee = mul nsw i64 %indvars.iv152.i, -48
  store i32 %.171.us84.us.i, ptr %.13770.us85.us.i, align 4, !tbaa !97
  %indvars.iv.next153.i = add nuw nsw i64 %indvars.iv152.i, 1 ; 3 uses
  %.idx.i.i.i.us.us.i = mul nuw nsw i64 %indvars.iv152.i, 48
  %i.ef = trunc nuw nsw i64 %indvars.iv.next153.i to i32
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %.lr.ph.us.us.i
  %.263.us89.us.i = phi i32 [ %.171.us84.us.i, %.lr.ph.us.us.i ], [ %i.gg, %.loopexit ]
  %.24062.us90.us.i = phi ptr [ %.13969.us86.us.i, %.lr.ph.us.us.i ], [ %.lcssa51, %.loopexit ] ; 5 uses
  %.24461.us91.us.i = phi ptr [ %.14368.us87.us.i, %.lr.ph.us.us.i ], [ %.lcssa50, %.loopexit ] ; 4 uses
  %.sroa.047.060.us92.us.i = phi ptr [ %i.du, %.lr.ph.us.us.i ], [ %i.gh, %.loopexit ] ; 3 uses
  %.24062.us90.us.i57 = ptrtoaddr ptr %.24062.us90.us.i to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.047.060.us92.us.i, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !761 ; 2 uses
  %i.ei = ptrtoaddr ptr %i.eh to i64
  %i.ej = load i32, ptr %.sroa.047.060.us92.us.i, align 8, !tbaa !762 ; 2 uses
  %.not46.us93.us.i = icmp eq i32 %i.ej, 0
  br i1 %.not46.us93.us.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ek = load ptr, ptr %i.co, align 8, !tbaa !2362, !nonnull !403, !align !420
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !406
  %i.em = sext i32 %i.ej to i64
  %i.en = getelementptr [4 x i8], ptr %i.el, i64 %i.em
  %i.eo = getelementptr i8, ptr %i.en, i64 -4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !97
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.eq = phi i32 [ %i.ep, %bb.j ], [ 0, %bb.i ]  ; 5 uses
  %i.er = icmp eq i32 %i.eq, %i.dq
  %spec.select.i4 = select i1 %i.er, i32 %i.ef, i32 6 ; 3 uses
  %invariant.gep.us94.us.i = getelementptr i8, ptr %i.eh, i64 %.idx.i.i.i.us.us.i ; 6 uses
  %wide.trip.count150.i = zext i32 %spec.select.i4 to i64 ; 5 uses
  %min.iters.check59 = icmp ult i32 %spec.select.i4, 4
  br i1 %min.iters.check59, label %scalar.ph58.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.k
  %i.es = add i64 %i.ee, %.24062.us90.us.i57
  %i.et = sub i64 %i.ei, %i.es
  %diff.check = icmp ugt i64 %i.et, -32
  br i1 %diff.check, label %scalar.ph58.preheader, label %vector.ph60

vector.ph60:                                      ; preds = %vector.memcheck
  %n.vec61 = and i64 %wide.trip.count150.i, 4294967292 ; 6 uses
  %i.eu = trunc nuw i64 %n.vec61 to i32
  %i.ev = add i32 %i.eq, %i.eu
  %i.ew = shl nuw nsw i64 %n.vec61, 3
  %i.ex = getelementptr i8, ptr %.24062.us90.us.i, i64 %i.ew ; 2 uses
  %i.ey = shl nuw nsw i64 %n.vec61, 2
  %i.ez = getelementptr i8, ptr %.24461.us91.us.i, i64 %i.ey ; 2 uses
  %broadcast.splatinsert62 = insertelement <2 x i32> poison, i32 %i.eq, i64 0
  %broadcast.splat63 = shufflevector <2 x i32> %broadcast.splatinsert62, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction = add nsw <2 x i32> %broadcast.splat63, <i32 0, i32 1>
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph60
  %index65 = phi i64 [ 0, %vector.ph60 ], [ %index.next69, %vector.body64 ] ; 4 uses
  %vec.ind = phi <2 x i32> [ %induction, %vector.ph60 ], [ %vec.ind.next, %vector.body64 ] ; 3 uses
  %step.add = add nsw <2 x i32> %vec.ind, splat (i32 2)
  %i.fa = shl i64 %index65, 3
  %next.gep66 = getelementptr i8, ptr %.24062.us90.us.i, i64 %i.fa ; 2 uses
  %i.fb = shl i64 %index65, 2
  %next.gep67 = getelementptr i8, ptr %.24461.us91.us.i, i64 %i.fb ; 2 uses
  %i.fc = getelementptr [8 x i8], ptr %invariant.gep.us94.us.i, i64 %index65 ; 2 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 16
  %wide.load = load <2 x double>, ptr %i.fc, align 8, !tbaa !384
  %wide.load68 = load <2 x double>, ptr %i.fd, align 8, !tbaa !384
  %i.fe = getelementptr i8, ptr %next.gep66, i64 16
  store <2 x double> %wide.load, ptr %next.gep66, align 8, !tbaa !384
  store <2 x double> %wide.load68, ptr %i.fe, align 8, !tbaa !384
  %i.ff = getelementptr i8, ptr %next.gep67, i64 8
  store <2 x i32> %vec.ind, ptr %next.gep67, align 4, !tbaa !97
  store <2 x i32> %step.add, ptr %i.ff, align 4, !tbaa !97
  %index.next69 = add nuw i64 %index65, 4         ; 2 uses
  %vec.ind.next = add nsw <2 x i32> %vec.ind, splat (i32 4)
  %i.fg = icmp eq i64 %index.next69, %n.vec61
  br i1 %i.fg, label %middle.block70, label %vector.body64, !llvm.loop !2350

middle.block70:                                   ; preds = %vector.body64
  %cmp.n71 = icmp eq i64 %n.vec61, %wide.trip.count150.i
  br i1 %cmp.n71, label %.loopexit, label %scalar.ph58.preheader

scalar.ph58.preheader:                            ; preds = %vector.memcheck, %bb.k, %middle.block70
  %indvars.iv147.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.k ], [ %n.vec61, %middle.block70 ] ; 3 uses
  %.03257.us96.us.i.ph = phi i32 [ %i.eq, %vector.memcheck ], [ %i.eq, %bb.k ], [ %i.ev, %middle.block70 ] ; 2 uses
  %.34155.us98.us.i.ph = phi ptr [ %.24062.us90.us.i, %vector.memcheck ], [ %.24062.us90.us.i, %bb.k ], [ %i.ex, %middle.block70 ] ; 2 uses
  %.34554.us99.us.i.ph = phi ptr [ %.24461.us91.us.i, %vector.memcheck ], [ %.24461.us91.us.i, %bb.k ], [ %i.ez, %middle.block70 ] ; 2 uses
  %xtraiter88 = and i64 %wide.trip.count150.i, 3  ; 2 uses
  %lcmp.mod89.not = icmp eq i64 %xtraiter88, 0
  br i1 %lcmp.mod89.not, label %scalar.ph58.prol.loopexit, label %scalar.ph58.prol

scalar.ph58.prol:                                 ; preds = %scalar.ph58.preheader, %scalar.ph58.prol
  %indvars.iv147.i.prol = phi i64 [ %indvars.iv.next148.i.prol, %scalar.ph58.prol ], [ %indvars.iv147.i.ph, %scalar.ph58.preheader ] ; 2 uses
  %.03257.us96.us.i.prol = phi i32 [ %i.fj, %scalar.ph58.prol ], [ %.03257.us96.us.i.ph, %scalar.ph58.preheader ] ; 2 uses
  %.34155.us98.us.i.prol = phi ptr [ %i.fi, %scalar.ph58.prol ], [ %.34155.us98.us.i.ph, %scalar.ph58.preheader ] ; 2 uses
  %.34554.us99.us.i.prol = phi ptr [ %i.fk, %scalar.ph58.prol ], [ %.34554.us99.us.i.ph, %scalar.ph58.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph58.prol ], [ 0, %scalar.ph58.preheader ]
  %gep.us100.us.i.prol = getelementptr [8 x i8], ptr %invariant.gep.us94.us.i, i64 %indvars.iv147.i.prol
  %i.fh = load double, ptr %gep.us100.us.i.prol, align 8, !tbaa !384
  %i.fi = getelementptr inbounds nuw i8, ptr %.34155.us98.us.i.prol, i64 8 ; 3 uses
  store double %i.fh, ptr %.34155.us98.us.i.prol, align 8, !tbaa !384
  %i.fj = add nsw i32 %.03257.us96.us.i.prol, 1   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.34554.us99.us.i.prol, i64 4 ; 3 uses
  store i32 %.03257.us96.us.i.prol, ptr %.34554.us99.us.i.prol, align 4, !tbaa !97
  %indvars.iv.next148.i.prol = add nuw nsw i64 %indvars.iv147.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter88
  br i1 %prol.iter.cmp.not, label %scalar.ph58.prol.loopexit, label %scalar.ph58.prol, !llvm.loop !2351

scalar.ph58.prol.loopexit:                        ; preds = %scalar.ph58.prol, %scalar.ph58.preheader
  %.lcssa81.unr = phi ptr [ poison, %scalar.ph58.preheader ], [ %i.fi, %scalar.ph58.prol ]
  %.lcssa80.unr = phi ptr [ poison, %scalar.ph58.preheader ], [ %i.fk, %scalar.ph58.prol ]
  %indvars.iv147.i.unr = phi i64 [ %indvars.iv147.i.ph, %scalar.ph58.preheader ], [ %indvars.iv.next148.i.prol, %scalar.ph58.prol ]
  %.03257.us96.us.i.unr = phi i32 [ %.03257.us96.us.i.ph, %scalar.ph58.preheader ], [ %i.fj, %scalar.ph58.prol ]
  %.34155.us98.us.i.unr = phi ptr [ %.34155.us98.us.i.ph, %scalar.ph58.preheader ], [ %i.fi, %scalar.ph58.prol ]
  %.34554.us99.us.i.unr = phi ptr [ %.34554.us99.us.i.ph, %scalar.ph58.preheader ], [ %i.fk, %scalar.ph58.prol ]
  %i.fl = sub nsw i64 %indvars.iv147.i.ph, %wide.trip.count150.i
  %i.fm = icmp ugt i64 %i.fl, -4
  br i1 %i.fm, label %.loopexit, label %scalar.ph58

scalar.ph58:                                      ; preds = %scalar.ph58.prol.loopexit, %scalar.ph58
  %indvars.iv147.i = phi i64 [ %indvars.iv.next148.i.3, %scalar.ph58 ], [ %indvars.iv147.i.unr, %scalar.ph58.prol.loopexit ] ; 5 uses
  %.03257.us96.us.i = phi i32 [ %i.ge, %scalar.ph58 ], [ %.03257.us96.us.i.unr, %scalar.ph58.prol.loopexit ] ; 5 uses
  %.34155.us98.us.i = phi ptr [ %i.gd, %scalar.ph58 ], [ %.34155.us98.us.i.unr, %scalar.ph58.prol.loopexit ] ; 5 uses
  %.34554.us99.us.i = phi ptr [ %i.gf, %scalar.ph58 ], [ %.34554.us99.us.i.unr, %scalar.ph58.prol.loopexit ] ; 5 uses
  %gep.us100.us.i = getelementptr [8 x i8], ptr %invariant.gep.us94.us.i, i64 %indvars.iv147.i
  %i.fn = load double, ptr %gep.us100.us.i, align 8, !tbaa !384
  %i.fo = getelementptr inbounds nuw i8, ptr %.34155.us98.us.i, i64 8
  store double %i.fn, ptr %.34155.us98.us.i, align 8, !tbaa !384
  %i.fp = add nsw i32 %.03257.us96.us.i, 1
  %i.fq = getelementptr inbounds nuw i8, ptr %.34554.us99.us.i, i64 4
  store i32 %.03257.us96.us.i, ptr %.34554.us99.us.i, align 4, !tbaa !97
  %i.fr = getelementptr [8 x i8], ptr %invariant.gep.us94.us.i, i64 %indvars.iv147.i
  %gep.us100.us.i.1 = getelementptr i8, ptr %i.fr, i64 8
  %i.fs = load double, ptr %gep.us100.us.i.1, align 8, !tbaa !384
  %i.ft = getelementptr inbounds nuw i8, ptr %.34155.us98.us.i, i64 16
  store double %i.fs, ptr %i.fo, align 8, !tbaa !384
  %i.fu = add nsw i32 %.03257.us96.us.i, 2
  %i.fv = getelementptr inbounds nuw i8, ptr %.34554.us99.us.i, i64 8
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !97
  %i.fw = getelementptr [8 x i8], ptr %invariant.gep.us94.us.i, i64 %indvars.iv147.i
  %gep.us100.us.i.2 = getelementptr i8, ptr %i.fw, i64 16
  %i.fx = load double, ptr %gep.us100.us.i.2, align 8, !tbaa !384
  %i.fy = getelementptr inbounds nuw i8, ptr %.34155.us98.us.i, i64 24
  store double %i.fx, ptr %i.ft, align 8, !tbaa !384
  %i.fz = add nsw i32 %.03257.us96.us.i, 3
  %i.ga = getelementptr inbounds nuw i8, ptr %.34554.us99.us.i, i64 12
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !97
  %i.gb = getelementptr [8 x i8], ptr %invariant.gep.us94.us.i, i64 %indvars.iv147.i
  %gep.us100.us.i.3 = getelementptr i8, ptr %i.gb, i64 24
  %i.gc = load double, ptr %gep.us100.us.i.3, align 8, !tbaa !384
  %i.gd = getelementptr inbounds nuw i8, ptr %.34155.us98.us.i, i64 32 ; 2 uses
  store double %i.gc, ptr %i.fy, align 8, !tbaa !384
  %i.ge = add nsw i32 %.03257.us96.us.i, 4
  %i.gf = getelementptr inbounds nuw i8, ptr %.34554.us99.us.i, i64 16 ; 2 uses
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !97
  %indvars.iv.next148.i.3 = add nuw nsw i64 %indvars.iv147.i, 4 ; 2 uses
  %exitcond151.not.i.3 = icmp eq i64 %indvars.iv.next148.i.3, %wide.trip.count150.i
  br i1 %exitcond151.not.i.3, label %.loopexit, label %scalar.ph58, !llvm.loop !2352

.loopexit:                                        ; preds = %scalar.ph58.prol.loopexit, %scalar.ph58, %middle.block70
  %.lcssa51 = phi ptr [ %i.ex, %middle.block70 ], [ %.lcssa81.unr, %scalar.ph58.prol.loopexit ], [ %i.gd, %scalar.ph58 ] ; 3 uses
  %.lcssa50 = phi ptr [ %i.ez, %middle.block70 ], [ %.lcssa80.unr, %scalar.ph58.prol.loopexit ], [ %i.gf, %scalar.ph58 ] ; 3 uses
  %i.gg = add i32 %spec.select.i4, %.263.us89.us.i ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.047.060.us92.us.i, i64 16 ; 2 uses
  %.not53.us104.us.i = icmp eq ptr %i.gh, %i.dw
  br i1 %.not53.us104.us.i, label %._crit_edge.split.us105.us.i, label %bb.i, !llvm.loop !2353

._crit_edge.split.us105.us.i:                     ; preds = %.loopexit
  %i.gi = getelementptr inbounds nuw i8, ptr %.13770.us85.us.i, i64 4 ; 2 uses
  %exitcond156.not.i = icmp eq i64 %indvars.iv.next153.i, %i.dx
  br i1 %exitcond156.not.i, label %._crit_edge74.us.i, label %.lr.ph.us.us.i, !llvm.loop !2354

.lr.ph73.split.us.us.i:                           ; preds = %.lr.ph73.split.us.us.i.preheader78, %.lr.ph73.split.us.us.i
  %.03372.us.us.i = phi i32 [ %i.gk, %.lr.ph73.split.us.us.i ], [ %.03372.us.us.i.ph, %.lr.ph73.split.us.us.i.preheader78 ]
  %.13770.us.us.i = phi ptr [ %i.gj, %.lr.ph73.split.us.us.i ], [ %.13770.us.us.i.ph, %.lr.ph73.split.us.us.i.preheader78 ] ; 2 uses
  store i32 %.035120.us.i, ptr %.13770.us.us.i, align 4, !tbaa !97
  %i.gj = getelementptr inbounds nuw i8, ptr %.13770.us.us.i, i64 4 ; 2 uses
  %i.gk = add nuw nsw i32 %.03372.us.us.i, 1      ; 2 uses
  %exitcond157.not.i = icmp eq i32 %i.gk, %i.dr
  br i1 %exitcond157.not.i, label %._crit_edge74.us.i, label %.lr.ph73.split.us.us.i, !llvm.loop !2355

._crit_edge74.us.i:                               ; preds = %._crit_edge.split.us105.us.i, %.lr.ph73.split.us.us.i, %middle.block, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11colsOfBlockEi.exit.us.i
  %.143.lcssa.us.i = phi ptr [ %.042117.us.i, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11colsOfBlockEi.exit.us.i ], [ %.042117.us.i, %middle.block ], [ %.042117.us.i, %.lr.ph73.split.us.us.i ], [ %.lcssa50, %._crit_edge.split.us105.us.i ]
  %.139.lcssa.us.i = phi ptr [ %.038118.us.i, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11colsOfBlockEi.exit.us.i ], [ %.038118.us.i, %middle.block ], [ %.038118.us.i, %.lr.ph73.split.us.us.i ], [ %.lcssa51, %._crit_edge.split.us105.us.i ]
  %.137.lcssa.us.i = phi ptr [ %.036119.us.i, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11colsOfBlockEi.exit.us.i ], [ %i.ea, %middle.block ], [ %i.gj, %.lr.ph73.split.us.us.i ], [ %i.gi, %._crit_edge.split.us105.us.i ] ; 2 uses
  %.1.lcssa.us.i = phi i32 [ %.035120.us.i, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11colsOfBlockEi.exit.us.i ], [ %.035120.us.i, %middle.block ], [ %.035120.us.i, %.lr.ph73.split.us.us.i ], [ %i.gg, %._crit_edge.split.us105.us.i ] ; 2 uses
  %i.gl = add nuw i64 %.034121.us.i, 1            ; 2 uses
  %exitcond159.not.i = icmp eq i64 %i.gl, %i.cy
  br i1 %exitcond159.not.i, label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE7fillCCSEPiS5_Pdb.exit, label %.lr.ph123.split.us.i, !llvm.loop !2356

_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE7fillCCSEPiS5_Pdb.exit: ; preds = %._crit_edge74.us.i, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8nonZerosEv.exit
  %.036.lcssa.i = phi ptr [ %i.cq, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8nonZerosEv.exit ], [ %.137.lcssa.us.i, %._crit_edge74.us.i ]
  %.035.lcssa.i = phi i32 [ 0, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8nonZerosEv.exit ], [ %.1.lcssa.us.i, %._crit_edge74.us.i ]
  store i32 %.035.lcssa.i, ptr %.036.lcssa.i, align 4, !tbaa !97
  br label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE7fillCCSEPdb.exit

_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE7fillCCSEPdb.exit: ; preds = %._crit_edge42.i, %bb.b, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE7fillCCSEPiS5_Pdb.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE28computeSymbolicDecompositionERKNS_17SparseBlockMatrixIS3_EE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(73) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::PermutationMatrix", align 8 ; 8 uses
  %3 = alloca %"class.Eigen::SparseMatrix", align 8 ; 13 uses
  %4 = alloca %"class.Eigen::AMDOrdering", align 1 ; 4 uses
  %5 = alloca %"class.Eigen::PermutationMatrix", align 8 ; 11 uses
  %i.a = tail call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i8, ptr %i.b, align 8, !tbaa !233, !range !402, !noundef !403
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi2ENS_11AMDOrderingIiEEEEE14analyzePatternERKS3_b(ptr noundef nonnull align 8 dereferenceable(184) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i1 noundef zeroext false)
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !765  ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !766  ; 7 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 48                  ; 6 uses
  store i8 0, ptr %3, align 8, !tbaa !355
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.o, i8 0, i64 64, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.n, ptr %i.p, align 8, !tbaa !399
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.r = shl nsw i64 %i.n, 2
  %i.s = add nsw i64 %i.r, 4
  %calloc = tail call ptr @calloc(i64 1, i64 %i.s) ; 2 uses
  store ptr %calloc, ptr %i.q, align 8, !tbaa !362
  %.not6.i = icmp eq ptr %calloc, null
  br i1 %.not6.i, label %bb.d, label %bb.f

end_hunk_1
begin_hunk_2_@_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE16fillSparseMatrixERKNS_17SparseBlockMatrixIS3_EEb:bb.a
  %.056.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.ce, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.bp = getelementptr inbounds nuw [48 x i8], ptr %i.bj, i64 %.07.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !332
  %i.bs = add i64 %i.br, %.056.i.i
  %i.bt = getelementptr inbounds nuw [48 x i8], ptr %i.bj, i64 %.07.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 88
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !332
  %i.bw = add i64 %i.bv, %i.bs
  %i.bx = getelementptr inbounds nuw [48 x i8], ptr %i.bj, i64 %.07.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 136
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !332
  %i.ca = add i64 %i.bz, %i.bw
  %i.cb = getelementptr inbounds nuw [48 x i8], ptr %i.bj, i64 %.07.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 184
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !332
  %i.ce = add i64 %i.cd, %i.ca                    ; 3 uses
  %i.cf = add nuw i64 %.07.i.i, 4                 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE13nonZeroBlocksEv.exit.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !59

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE13nonZeroBlocksEv.exit.loopexit.i.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE13nonZeroBlocksEv.exit.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE13nonZeroBlocksEv.exit.loopexit.i.unr-lcssa, %.lr.ph.preheader.i.i
  %.07.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.cf, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE13nonZeroBlocksEv.exit.loopexit.i.unr-lcssa ]
  %.056.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.ce, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE13nonZeroBlocksEv.exit.loopexit.i.unr-lcssa ]
  %lcmp.mod87 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod87)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.07.i.i.epil = phi i64 [ %i.ck, %.lr.ph.i.i.epil ], [ %.07.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.056.i.i.epil = phi i64 [ %i.cj, %.lr.ph.i.i.epil ], [ %.056.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.cg = getelementptr inbounds nuw [48 x i8], ptr %i.bj, i64 %.07.i.i.epil
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !332
  %i.cj = add i64 %i.ci, %.056.i.i.epil           ; 2 uses
  %i.ck = add nuw i64 %.07.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE13nonZeroBlocksEv.exit.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !2605

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE13nonZeroBlocksEv.exit.loopexit.i: ; preds = %.lr.ph.i.i.epil, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE13nonZeroBlocksEv.exit.loopexit.i.unr-lcssa
  %.lcssa85 = phi i64 [ %i.ce, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE13nonZeroBlocksEv.exit.loopexit.i.unr-lcssa ], [ %i.cj, %.lr.ph.i.i.epil ]
  %i.cl = mul i64 %.lcssa85, 49
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8nonZerosEv.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8nonZerosEv.exit: ; preds = %bb.f, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE13nonZeroBlocksEv.exit.loopexit.i
  %.05.lcssa.i.i = phi i64 [ 0, %bb.f ], [ %i.cl, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE13nonZeroBlocksEv.exit.loopexit.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, i64 noundef %.05.lcssa.i.i, double noundef 0.000000e+00)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !832 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !362 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !839 ; 2 uses
  %i.cu = load ptr, ptr %i.cr, align 8, !tbaa !838 ; 3 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = sdiv exact i64 %i.cx, 24
  %.not130.i = icmp eq ptr %i.ct, %i.cu
  br i1 %.not130.i, label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE7fillCCSEPiS5_Pdb.exit, label %.lr.ph123.i

.lr.ph123.i:                                      ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8nonZerosEv.exit
  %i.cz = load ptr, ptr %i.cm, align 8, !tbaa !364
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !365
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !403, !align !420
  %.pre161.pre.i = load ptr, ptr %i.dd, align 8, !tbaa !406 ; 3 uses
  br label %.lr.ph123.split.us.i

.lr.ph123.split.us.i:                             ; preds = %._crit_edge74.us.i, %.lr.ph123.i
  %.034121.us.i = phi i64 [ %i.gl, %._crit_edge74.us.i ], [ 0, %.lr.ph123.i ] ; 6 uses
  %.035120.us.i = phi i32 [ %.1.lcssa.us.i, %._crit_edge74.us.i ], [ 0, %.lr.ph123.i ] ; 6 uses
  %.036119.us.i = phi ptr [ %.137.lcssa.us.i, %._crit_edge74.us.i ], [ %i.cq, %.lr.ph123.i ] ; 5 uses
  %.038118.us.i = phi ptr [ %.139.lcssa.us.i, %._crit_edge74.us.i ], [ %i.cz, %.lr.ph123.i ] ; 4 uses
  %.042117.us.i = phi ptr [ %.143.lcssa.us.i, %._crit_edge74.us.i ], [ %i.db, %.lr.ph123.i ] ; 4 uses
  %.not.us.i = icmp eq i64 %.034121.us.i, 0
  br i1 %.not.us.i, label %.thread.us.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph123.split.us.i
  %i.de = getelementptr [4 x i8], ptr %.pre161.pre.i, i64 %.034121.us.i
  %i.df = getelementptr i8, ptr %i.de, i64 -4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !97 ; 2 uses
  %i.dh = and i64 %.034121.us.i, 4294967295
  %.not.i.us.i = icmp eq i64 %i.dh, 0
  br i1 %.not.i.us.i, label %.thread.us.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %sext.us.i = shl i64 %.034121.us.i, 32
  %i.di = ashr exact i64 %sext.us.i, 30
  %i.dj = getelementptr i8, ptr %.pre161.pre.i, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !97
  %i.dl = getelementptr i8, ptr %i.dj, i64 -4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !97
  %i.dn = sub nsw i32 %i.dk, %i.dm
  br label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11colsOfBlockEi.exit.us.i

.thread.us.i:                                     ; preds = %bb.g, %.lr.ph123.split.us.i
  %i.do = phi i32 [ %i.dg, %bb.g ], [ 0, %.lr.ph123.split.us.i ]
  %i.dp = load i32, ptr %.pre161.pre.i, align 4, !tbaa !97
  br label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11colsOfBlockEi.exit.us.i

_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11colsOfBlockEi.exit.us.i: ; preds = %.thread.us.i, %bb.h
  %i.dq = phi i32 [ %i.dg, %bb.h ], [ %i.do, %.thread.us.i ]
  %i.dr = phi i32 [ %i.dn, %bb.h ], [ %i.dp, %.thread.us.i ] ; 4 uses
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %.lr.ph73.us.i, label %._crit_edge74.us.i

.lr.ph73.us.i:                                    ; preds = %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11colsOfBlockEi.exit.us.i
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %.034121.us.i ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !846 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !846 ; 2 uses
  %.not5359.us.i = icmp eq ptr %i.du, %i.dw
  %i.dx = zext nneg i32 %i.dr to i64              ; 3 uses
  br i1 %.not5359.us.i, label %.lr.ph73.split.us.us.i.preheader, label %.lr.ph.us.us.i

.lr.ph73.split.us.us.i.preheader:                 ; preds = %.lr.ph73.us.i
  %min.iters.check = icmp ult i32 %i.dr, 8
  br i1 %min.iters.check, label %.lr.ph73.split.us.us.i.preheader78, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph73.split.us.us.i.preheader
  %n.vec = and i64 %i.dx, 2147483640              ; 4 uses
  %i.dy = trunc nuw nsw i64 %n.vec to i32
  %i.dz = shl nuw nsw i64 %n.vec, 2
  %i.ea = getelementptr i8, ptr %.036119.us.i, i64 %i.dz ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.035120.us.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eb = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.036119.us.i, i64 %i.eb ; 2 uses
  %i.ec = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !97
  store <4 x i32> %broadcast.splat, ptr %i.ec, align 4, !tbaa !97
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !2606

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dx
  br i1 %cmp.n, label %._crit_edge74.us.i, label %.lr.ph73.split.us.us.i.preheader78

.lr.ph73.split.us.us.i.preheader78:               ; preds = %.lr.ph73.split.us.us.i.preheader, %middle.block
  %.03372.us.us.i.ph = phi i32 [ 0, %.lr.ph73.split.us.us.i.preheader ], [ %i.dy, %middle.block ]
  %.13770.us.us.i.ph = phi ptr [ %.036119.us.i, %.lr.ph73.split.us.us.i.preheader ], [ %i.ea, %middle.block ]
  br label %.lr.ph73.split.us.us.i

.lr.ph.us.us.i:                                   ; preds = %.lr.ph73.us.i, %._crit_edge.split.us105.us.i
  %indvars.iv152.i = phi i64 [ %indvars.iv.next153.i, %._crit_edge.split.us105.us.i ], [ 0, %.lr.ph73.us.i ] ; 3 uses
  %.171.us84.us.i = phi i32 [ %i.gg, %._crit_edge.split.us105.us.i ], [ %.035120.us.i, %.lr.ph73.us.i ] ; 2 uses
  %.13770.us85.us.i = phi ptr [ %i.gi, %._crit_edge.split.us105.us.i ], [ %.036119.us.i, %.lr.ph73.us.i ] ; 2 uses
  %.13969.us86.us.i = phi ptr [ %.lcssa51, %._crit_edge.split.us105.us.i ], [ %.038118.us.i, %.lr.ph73.us.i ]
  %.14368.us87.us.i = phi ptr [ %.lcssa50, %._crit_edge.split.us105.us.i ], [ %.042117.us.i, %.lr.ph73.us.i ]
  %i.ee = mul nsw i64 %indvars.iv152.i, -56
  store i32 %.171.us84.us.i, ptr %.13770.us85.us.i, align 4, !tbaa !97
  %indvars.iv.next153.i = add nuw nsw i64 %indvars.iv152.i, 1 ; 3 uses
  %.idx.i.i.i.us.us.i = mul nuw nsw i64 %indvars.iv152.i, 56
  %i.ef = trunc nuw nsw i64 %indvars.iv.next153.i to i32
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %.lr.ph.us.us.i
  %.263.us89.us.i = phi i32 [ %.171.us84.us.i, %.lr.ph.us.us.i ], [ %i.gg, %.loopexit ]
  %.24062.us90.us.i = phi ptr [ %.13969.us86.us.i, %.lr.ph.us.us.i ], [ %.lcssa51, %.loopexit ] ; 5 uses
  %.24461.us91.us.i = phi ptr [ %.14368.us87.us.i, %.lr.ph.us.us.i ], [ %.lcssa50, %.loopexit ] ; 4 uses
  %.sroa.047.060.us92.us.i = phi ptr [ %i.du, %.lr.ph.us.us.i ], [ %i.gh, %.loopexit ] ; 3 uses
  %.24062.us90.us.i57 = ptrtoaddr ptr %.24062.us90.us.i to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.047.060.us92.us.i, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !849 ; 2 uses
  %i.ei = ptrtoaddr ptr %i.eh to i64
  %i.ej = load i32, ptr %.sroa.047.060.us92.us.i, align 8, !tbaa !850 ; 2 uses
  %.not46.us93.us.i = icmp eq i32 %i.ej, 0
  br i1 %.not46.us93.us.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ek = load ptr, ptr %i.co, align 8, !tbaa !2619, !nonnull !403, !align !420
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !406
  %i.em = sext i32 %i.ej to i64
  %i.en = getelementptr [4 x i8], ptr %i.el, i64 %i.em
  %i.eo = getelementptr i8, ptr %i.en, i64 -4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !97
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.eq = phi i32 [ %i.ep, %bb.j ], [ 0, %bb.i ]  ; 5 uses
  %i.er = icmp eq i32 %i.eq, %i.dq
  %spec.select.i4 = select i1 %i.er, i32 %i.ef, i32 7 ; 3 uses
  %invariant.gep.us94.us.i = getelementptr i8, ptr %i.eh, i64 %.idx.i.i.i.us.us.i ; 6 uses
  %wide.trip.count150.i = zext i32 %spec.select.i4 to i64 ; 5 uses
  %min.iters.check59 = icmp ult i32 %spec.select.i4, 4
  br i1 %min.iters.check59, label %scalar.ph58.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.k
  %i.es = add i64 %i.ee, %.24062.us90.us.i57
  %i.et = sub i64 %i.ei, %i.es
  %diff.check = icmp ugt i64 %i.et, -32
  br i1 %diff.check, label %scalar.ph58.preheader, label %vector.ph60

vector.ph60:                                      ; preds = %vector.memcheck
  %n.vec61 = and i64 %wide.trip.count150.i, 4294967292 ; 6 uses
  %i.eu = trunc nuw i64 %n.vec61 to i32
  %i.ev = add i32 %i.eq, %i.eu
  %i.ew = shl nuw nsw i64 %n.vec61, 3
  %i.ex = getelementptr i8, ptr %.24062.us90.us.i, i64 %i.ew ; 2 uses
  %i.ey = shl nuw nsw i64 %n.vec61, 2
  %i.ez = getelementptr i8, ptr %.24461.us91.us.i, i64 %i.ey ; 2 uses
  %broadcast.splatinsert62 = insertelement <2 x i32> poison, i32 %i.eq, i64 0
  %broadcast.splat63 = shufflevector <2 x i32> %broadcast.splatinsert62, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction = add nsw <2 x i32> %broadcast.splat63, <i32 0, i32 1>
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph60
  %index65 = phi i64 [ 0, %vector.ph60 ], [ %index.next69, %vector.body64 ] ; 4 uses
  %vec.ind = phi <2 x i32> [ %induction, %vector.ph60 ], [ %vec.ind.next, %vector.body64 ] ; 3 uses
  %step.add = add nsw <2 x i32> %vec.ind, splat (i32 2)
  %i.fa = shl i64 %index65, 3
  %next.gep66 = getelementptr i8, ptr %.24062.us90.us.i, i64 %i.fa ; 2 uses
  %i.fb = shl i64 %index65, 2
  %next.gep67 = getelementptr i8, ptr %.24461.us91.us.i, i64 %i.fb ; 2 uses
  %i.fc = getelementptr [8 x i8], ptr %invariant.gep.us94.us.i, i64 %index65 ; 2 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 16
  %wide.load = load <2 x double>, ptr %i.fc, align 8, !tbaa !384
  %wide.load68 = load <2 x double>, ptr %i.fd, align 8, !tbaa !384
  %i.fe = getelementptr i8, ptr %next.gep66, i64 16
  store <2 x double> %wide.load, ptr %next.gep66, align 8, !tbaa !384
  store <2 x double> %wide.load68, ptr %i.fe, align 8, !tbaa !384
  %i.ff = getelementptr i8, ptr %next.gep67, i64 8
  store <2 x i32> %vec.ind, ptr %next.gep67, align 4, !tbaa !97
  store <2 x i32> %step.add, ptr %i.ff, align 4, !tbaa !97
  %index.next69 = add nuw i64 %index65, 4         ; 2 uses
  %vec.ind.next = add nsw <2 x i32> %vec.ind, splat (i32 4)
  %i.fg = icmp eq i64 %index.next69, %n.vec61
  br i1 %i.fg, label %middle.block70, label %vector.body64, !llvm.loop !2607

middle.block70:                                   ; preds = %vector.body64
  %cmp.n71 = icmp eq i64 %n.vec61, %wide.trip.count150.i
  br i1 %cmp.n71, label %.loopexit, label %scalar.ph58.preheader

scalar.ph58.preheader:                            ; preds = %vector.memcheck, %bb.k, %middle.block70
  %indvars.iv147.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.k ], [ %n.vec61, %middle.block70 ] ; 3 uses
  %.03257.us96.us.i.ph = phi i32 [ %i.eq, %vector.memcheck ], [ %i.eq, %bb.k ], [ %i.ev, %middle.block70 ] ; 2 uses
  %.34155.us98.us.i.ph = phi ptr [ %.24062.us90.us.i, %vector.memcheck ], [ %.24062.us90.us.i, %bb.k ], [ %i.ex, %middle.block70 ] ; 2 uses
  %.34554.us99.us.i.ph = phi ptr [ %.24461.us91.us.i, %vector.memcheck ], [ %.24461.us91.us.i, %bb.k ], [ %i.ez, %middle.block70 ] ; 2 uses
  %xtraiter88 = and i64 %wide.trip.count150.i, 3  ; 2 uses
  %lcmp.mod89.not = icmp eq i64 %xtraiter88, 0
  br i1 %lcmp.mod89.not, label %scalar.ph58.prol.loopexit, label %scalar.ph58.prol

scalar.ph58.prol:                                 ; preds = %scalar.ph58.preheader, %scalar.ph58.prol
  %indvars.iv147.i.prol = phi i64 [ %indvars.iv.next148.i.prol, %scalar.ph58.prol ], [ %indvars.iv147.i.ph, %scalar.ph58.preheader ] ; 2 uses
  %.03257.us96.us.i.prol = phi i32 [ %i.fj, %scalar.ph58.prol ], [ %.03257.us96.us.i.ph, %scalar.ph58.preheader ] ; 2 uses
  %.34155.us98.us.i.prol = phi ptr [ %i.fi, %scalar.ph58.prol ], [ %.34155.us98.us.i.ph, %scalar.ph58.preheader ] ; 2 uses
  %.34554.us99.us.i.prol = phi ptr [ %i.fk, %scalar.ph58.prol ], [ %.34554.us99.us.i.ph, %scalar.ph58.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph58.prol ], [ 0, %scalar.ph58.preheader ]
  %gep.us100.us.i.prol = getelementptr [8 x i8], ptr %invariant.gep.us94.us.i, i64 %indvars.iv147.i.prol
  %i.fh = load double, ptr %gep.us100.us.i.prol, align 8, !tbaa !384
  %i.fi = getelementptr inbounds nuw i8, ptr %.34155.us98.us.i.prol, i64 8 ; 3 uses
  store double %i.fh, ptr %.34155.us98.us.i.prol, align 8, !tbaa !384
  %i.fj = add nsw i32 %.03257.us96.us.i.prol, 1   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.34554.us99.us.i.prol, i64 4 ; 3 uses
  store i32 %.03257.us96.us.i.prol, ptr %.34554.us99.us.i.prol, align 4, !tbaa !97
  %indvars.iv.next148.i.prol = add nuw nsw i64 %indvars.iv147.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter88
  br i1 %prol.iter.cmp.not, label %scalar.ph58.prol.loopexit, label %scalar.ph58.prol, !llvm.loop !2608

scalar.ph58.prol.loopexit:                        ; preds = %scalar.ph58.prol, %scalar.ph58.preheader
  %.lcssa81.unr = phi ptr [ poison, %scalar.ph58.preheader ], [ %i.fi, %scalar.ph58.prol ]
  %.lcssa80.unr = phi ptr [ poison, %scalar.ph58.preheader ], [ %i.fk, %scalar.ph58.prol ]
  %indvars.iv147.i.unr = phi i64 [ %indvars.iv147.i.ph, %scalar.ph58.preheader ], [ %indvars.iv.next148.i.prol, %scalar.ph58.prol ]
  %.03257.us96.us.i.unr = phi i32 [ %.03257.us96.us.i.ph, %scalar.ph58.preheader ], [ %i.fj, %scalar.ph58.prol ]
  %.34155.us98.us.i.unr = phi ptr [ %.34155.us98.us.i.ph, %scalar.ph58.preheader ], [ %i.fi, %scalar.ph58.prol ]
  %.34554.us99.us.i.unr = phi ptr [ %.34554.us99.us.i.ph, %scalar.ph58.preheader ], [ %i.fk, %scalar.ph58.prol ]
  %i.fl = sub nsw i64 %indvars.iv147.i.ph, %wide.trip.count150.i
  %i.fm = icmp ugt i64 %i.fl, -4
  br i1 %i.fm, label %.loopexit, label %scalar.ph58

scalar.ph58:                                      ; preds = %scalar.ph58.prol.loopexit, %scalar.ph58
  %indvars.iv147.i = phi i64 [ %indvars.iv.next148.i.3, %scalar.ph58 ], [ %indvars.iv147.i.unr, %scalar.ph58.prol.loopexit ] ; 5 uses
  %.03257.us96.us.i = phi i32 [ %i.ge, %scalar.ph58 ], [ %.03257.us96.us.i.unr, %scalar.ph58.prol.loopexit ] ; 5 uses
  %.34155.us98.us.i = phi ptr [ %i.gd, %scalar.ph58 ], [ %.34155.us98.us.i.unr, %scalar.ph58.prol.loopexit ] ; 5 uses
  %.34554.us99.us.i = phi ptr [ %i.gf, %scalar.ph58 ], [ %.34554.us99.us.i.unr, %scalar.ph58.prol.loopexit ] ; 5 uses
  %gep.us100.us.i = getelementptr [8 x i8], ptr %invariant.gep.us94.us.i, i64 %indvars.iv147.i
  %i.fn = load double, ptr %gep.us100.us.i, align 8, !tbaa !384
  %i.fo = getelementptr inbounds nuw i8, ptr %.34155.us98.us.i, i64 8
  store double %i.fn, ptr %.34155.us98.us.i, align 8, !tbaa !384
  %i.fp = add nsw i32 %.03257.us96.us.i, 1
  %i.fq = getelementptr inbounds nuw i8, ptr %.34554.us99.us.i, i64 4
  store i32 %.03257.us96.us.i, ptr %.34554.us99.us.i, align 4, !tbaa !97
  %i.fr = getelementptr [8 x i8], ptr %invariant.gep.us94.us.i, i64 %indvars.iv147.i
  %gep.us100.us.i.1 = getelementptr i8, ptr %i.fr, i64 8
  %i.fs = load double, ptr %gep.us100.us.i.1, align 8, !tbaa !384
  %i.ft = getelementptr inbounds nuw i8, ptr %.34155.us98.us.i, i64 16
  store double %i.fs, ptr %i.fo, align 8, !tbaa !384
  %i.fu = add nsw i32 %.03257.us96.us.i, 2
  %i.fv = getelementptr inbounds nuw i8, ptr %.34554.us99.us.i, i64 8
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !97
  %i.fw = getelementptr [8 x i8], ptr %invariant.gep.us94.us.i, i64 %indvars.iv147.i
  %gep.us100.us.i.2 = getelementptr i8, ptr %i.fw, i64 16
  %i.fx = load double, ptr %gep.us100.us.i.2, align 8, !tbaa !384
  %i.fy = getelementptr inbounds nuw i8, ptr %.34155.us98.us.i, i64 24
  store double %i.fx, ptr %i.ft, align 8, !tbaa !384
  %i.fz = add nsw i32 %.03257.us96.us.i, 3
  %i.ga = getelementptr inbounds nuw i8, ptr %.34554.us99.us.i, i64 12
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !97
  %i.gb = getelementptr [8 x i8], ptr %invariant.gep.us94.us.i, i64 %indvars.iv147.i
  %gep.us100.us.i.3 = getelementptr i8, ptr %i.gb, i64 24
  %i.gc = load double, ptr %gep.us100.us.i.3, align 8, !tbaa !384
  %i.gd = getelementptr inbounds nuw i8, ptr %.34155.us98.us.i, i64 32 ; 2 uses
  store double %i.gc, ptr %i.fy, align 8, !tbaa !384
  %i.ge = add nsw i32 %.03257.us96.us.i, 4
  %i.gf = getelementptr inbounds nuw i8, ptr %.34554.us99.us.i, i64 16 ; 2 uses
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !97
  %indvars.iv.next148.i.3 = add nuw nsw i64 %indvars.iv147.i, 4 ; 2 uses
  %exitcond151.not.i.3 = icmp eq i64 %indvars.iv.next148.i.3, %wide.trip.count150.i
  br i1 %exitcond151.not.i.3, label %.loopexit, label %scalar.ph58, !llvm.loop !2609

.loopexit:                                        ; preds = %scalar.ph58.prol.loopexit, %scalar.ph58, %middle.block70
  %.lcssa51 = phi ptr [ %i.ex, %middle.block70 ], [ %.lcssa81.unr, %scalar.ph58.prol.loopexit ], [ %i.gd, %scalar.ph58 ] ; 3 uses
  %.lcssa50 = phi ptr [ %i.ez, %middle.block70 ], [ %.lcssa80.unr, %scalar.ph58.prol.loopexit ], [ %i.gf, %scalar.ph58 ] ; 3 uses
  %i.gg = add i32 %spec.select.i4, %.263.us89.us.i ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.047.060.us92.us.i, i64 16 ; 2 uses
  %.not53.us104.us.i = icmp eq ptr %i.gh, %i.dw
  br i1 %.not53.us104.us.i, label %._crit_edge.split.us105.us.i, label %bb.i, !llvm.loop !2610

._crit_edge.split.us105.us.i:                     ; preds = %.loopexit
  %i.gi = getelementptr inbounds nuw i8, ptr %.13770.us85.us.i, i64 4 ; 2 uses
  %exitcond156.not.i = icmp eq i64 %indvars.iv.next153.i, %i.dx
  br i1 %exitcond156.not.i, label %._crit_edge74.us.i, label %.lr.ph.us.us.i, !llvm.loop !2611

.lr.ph73.split.us.us.i:                           ; preds = %.lr.ph73.split.us.us.i.preheader78, %.lr.ph73.split.us.us.i
  %.03372.us.us.i = phi i32 [ %i.gk, %.lr.ph73.split.us.us.i ], [ %.03372.us.us.i.ph, %.lr.ph73.split.us.us.i.preheader78 ]
  %.13770.us.us.i = phi ptr [ %i.gj, %.lr.ph73.split.us.us.i ], [ %.13770.us.us.i.ph, %.lr.ph73.split.us.us.i.preheader78 ] ; 2 uses
  store i32 %.035120.us.i, ptr %.13770.us.us.i, align 4, !tbaa !97
  %i.gj = getelementptr inbounds nuw i8, ptr %.13770.us.us.i, i64 4 ; 2 uses
  %i.gk = add nuw nsw i32 %.03372.us.us.i, 1      ; 2 uses
  %exitcond157.not.i = icmp eq i32 %i.gk, %i.dr
  br i1 %exitcond157.not.i, label %._crit_edge74.us.i, label %.lr.ph73.split.us.us.i, !llvm.loop !2612

._crit_edge74.us.i:                               ; preds = %._crit_edge.split.us105.us.i, %.lr.ph73.split.us.us.i, %middle.block, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11colsOfBlockEi.exit.us.i
  %.143.lcssa.us.i = phi ptr [ %.042117.us.i, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11colsOfBlockEi.exit.us.i ], [ %.042117.us.i, %middle.block ], [ %.042117.us.i, %.lr.ph73.split.us.us.i ], [ %.lcssa50, %._crit_edge.split.us105.us.i ]
  %.139.lcssa.us.i = phi ptr [ %.038118.us.i, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11colsOfBlockEi.exit.us.i ], [ %.038118.us.i, %middle.block ], [ %.038118.us.i, %.lr.ph73.split.us.us.i ], [ %.lcssa51, %._crit_edge.split.us105.us.i ]
  %.137.lcssa.us.i = phi ptr [ %.036119.us.i, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11colsOfBlockEi.exit.us.i ], [ %i.ea, %middle.block ], [ %i.gj, %.lr.ph73.split.us.us.i ], [ %i.gi, %._crit_edge.split.us105.us.i ] ; 2 uses
  %.1.lcssa.us.i = phi i32 [ %.035120.us.i, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11colsOfBlockEi.exit.us.i ], [ %.035120.us.i, %middle.block ], [ %.035120.us.i, %.lr.ph73.split.us.us.i ], [ %i.gg, %._crit_edge.split.us105.us.i ] ; 2 uses
  %i.gl = add nuw i64 %.034121.us.i, 1            ; 2 uses
  %exitcond159.not.i = icmp eq i64 %i.gl, %i.cy
  br i1 %exitcond159.not.i, label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE7fillCCSEPiS5_Pdb.exit, label %.lr.ph123.split.us.i, !llvm.loop !2613

_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE7fillCCSEPiS5_Pdb.exit: ; preds = %._crit_edge74.us.i, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8nonZerosEv.exit
  %.036.lcssa.i = phi ptr [ %i.cq, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8nonZerosEv.exit ], [ %.137.lcssa.us.i, %._crit_edge74.us.i ]
  %.035.lcssa.i = phi i32 [ 0, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8nonZerosEv.exit ], [ %.1.lcssa.us.i, %._crit_edge74.us.i ]
  store i32 %.035.lcssa.i, ptr %.036.lcssa.i, align 4, !tbaa !97
  br label %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE7fillCCSEPdb.exit

_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE7fillCCSEPdb.exit: ; preds = %._crit_edge42.i, %bb.b, %_ZNK3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE7fillCCSEPiS5_Pdb.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE28computeSymbolicDecompositionERKNS_17SparseBlockMatrixIS3_EE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(73) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::PermutationMatrix", align 8 ; 8 uses
  %3 = alloca %"class.Eigen::SparseMatrix", align 8 ; 13 uses
  %4 = alloca %"class.Eigen::AMDOrdering", align 1 ; 4 uses
  %5 = alloca %"class.Eigen::PermutationMatrix", align 8 ; 11 uses
  %i.a = tail call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i8, ptr %i.b, align 8, !tbaa !286, !range !402, !noundef !403
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi2ENS_11AMDOrderingIiEEEEE14analyzePatternERKS3_b(ptr noundef nonnull align 8 dereferenceable(184) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i1 noundef zeroext false)
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !853  ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !854  ; 7 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 48                  ; 6 uses
  store i8 0, ptr %3, align 8, !tbaa !355
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.o, i8 0, i64 64, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.n, ptr %i.p, align 8, !tbaa !399
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.r = shl nsw i64 %i.n, 2
  %i.s = add nsw i64 %i.r, 4
  %calloc = tail call ptr @calloc(i64 1, i64 %i.s) ; 2 uses
  store ptr %calloc, ptr %i.q, align 8, !tbaa !362
  %.not6.i = icmp eq ptr %calloc, null
  br i1 %.not6.i, label %bb.d, label %bb.f

end_hunk_2
