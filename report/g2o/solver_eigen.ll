Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/solver_eigen?download=true
inline.NumInlined: 23967
inline.NumDeleted: 11511
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 155
loop-unroll.NumUnrolled: 180
begin_hunk_0_@_ZN5Eigen8internal20permute_symm_to_symmILi2ELi2ENS_12SparseMatrixIdLi0EiEELi0EEEvRKT1_RNS2_INS4_6ScalarEXT2_ENS4_12StorageIndexEEEPKS8_:bb.a
  store i32 %i.bk, ptr %i.be, align 4, !tbaa !97
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.us
  %i.bl = add nsw i64 %.sroa.7.0129.us.us, 1      ; 2 uses
  %i.bm = icmp slt i64 %i.bl, %i.bc
  br i1 %i.bm, label %.lr.ph.us, label %._crit_edge.split.us.us, !llvm.loop !1090

._crit_edge.split.us.us:                          ; preds = %bb.i, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next151, %i.b
  br i1 %exitcond153.not, label %._crit_edge133, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us, !llvm.loop !1091

._crit_edge133:                                   ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %._crit_edge.split.us.us.us
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !362 ; 8 uses
  store i32 0, ptr %i.bo, align 4, !tbaa !97
  %xtraiter198 = and i64 %i.b, 3                  ; 3 uses
  %i.bp = icmp ult i64 %i.b, 4
  br i1 %i.bp, label %.lr.ph135.epil.preheader, label %._crit_edge133.new

._crit_edge133.new:                               ; preds = %._crit_edge133
  %unroll_iter = and i64 %i.b, 9223372036854775804
  br label %.lr.ph135

.lr.ph132.split:                                  ; preds = %.lr.ph132, %._crit_edge.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.split ], [ 0, %.lr.ph132 ] ; 7 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !97 ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !97
  %i.bu = sext i32 %i.bt to i64                   ; 7 uses
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph132.split
  %i.bv = getelementptr i8, ptr %i.bs, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !97
  %i.bx = sext i32 %i.bw to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.k:                                             ; preds = %.lr.ph132.split
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !97
  %i.ca = sext i32 %i.bz to i64
  %i.cb = add nsw i64 %i.ca, %i.bu
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.j, %bb.k
  %.sink.i = phi i64 [ %i.bx, %bb.j ], [ %i.cb, %bb.k ] ; 4 uses
  %i.cc = icmp sgt i64 %.sink.i, %i.bu
  br i1 %i.cc, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.cd = sub nsw i64 %.sink.i, %i.bu
  %.neg = add nsw i64 %i.bu, 1
  %xtraiter = and i64 %i.cd, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bu
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !97
  %i.cg = sext i32 %i.cf to i64                   ; 2 uses
  %i.ch = icmp slt i64 %indvars.iv, %i.cg
  br i1 %i.ch, label %.lr.ph.prol.loopexit.unr-lcssa, label %bb.l

bb.l:                                             ; preds = %.lr.ph.prol
  %i.ci = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cg
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !97
  %.sroa.speculated97.prol = tail call i32 @llvm.smax.i32(i32 %i.cj, i32 %i.br)
  %i.ck = sext i32 %.sroa.speculated97.prol to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %.sroa.0106.0126, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !97
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !97
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.l, %.lr.ph.prol
  %i.co = add nsw i64 %i.bu, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.7.0129.unr = phi i64 [ %i.bu, %.lr.ph.preheader ], [ %i.co, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.cp = icmp eq i64 %.sink.i, %.neg
  br i1 %i.cp, label %._crit_edge.split, label %.lr.ph

._crit_edge.split:                                ; preds = %.lr.ph.prol.loopexit, %bb.o, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond149.not, label %._crit_edge133, label %.lr.ph132.split, !llvm.loop !1091

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.o
  %.sroa.7.0129 = phi i64 [ %i.dl, %bb.o ], [ %.sroa.7.0129.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.k, i64 %.sroa.7.0129
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !97
  %i.cs = sext i32 %i.cr to i64                   ; 2 uses
  %i.ct = icmp slt i64 %indvars.iv, %i.cs
  br i1 %i.ct, label %.lr.ph.1, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.cu = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cs
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !97
  %.sroa.speculated97 = tail call i32 @llvm.smax.i32(i32 %i.cv, i32 %i.br)
  %i.cw = sext i32 %.sroa.speculated97 to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %.sroa.0106.0126, i64 %i.cw ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !97
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !97
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.m
  %i.da = getelementptr [4 x i8], ptr %i.k, i64 %.sroa.7.0129
  %i.db = getelementptr i8, ptr %i.da, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !97
  %i.dd = sext i32 %i.dc to i64                   ; 2 uses
  %i.de = icmp slt i64 %indvars.iv, %i.dd
  br i1 %i.de, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.1
  %i.df = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dd
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !97
  %.sroa.speculated97.1 = tail call i32 @llvm.smax.i32(i32 %i.dg, i32 %i.br)
  %i.dh = sext i32 %.sroa.speculated97.1 to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %.sroa.0106.0126, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !97
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !97
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.1
  %i.dl = add nsw i64 %.sroa.7.0129, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dl, %.sink.i
  br i1 %exitcond.not.1, label %._crit_edge.split, label %.lr.ph, !llvm.loop !1090

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph135
  %lcmp.mod199.not = icmp eq i64 %xtraiter198, 0
  br i1 %lcmp.mod199.not, label %._crit_edge, label %.lr.ph135.epil.preheader

.lr.ph135.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %._crit_edge133
  %.epil.init = phi i32 [ 0, %._crit_edge133 ], [ %i.eq, %._crit_edge.loopexit.unr-lcssa ]
  %.053134.epil.init = phi i64 [ 0, %._crit_edge133 ], [ %i.er, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod200 = icmp ne i64 %xtraiter198, 0
  tail call void @llvm.assume(i1 %lcmp.mod200)
  br label %.lr.ph135.epil

.lr.ph135.epil:                                   ; preds = %.lr.ph135.epil, %.lr.ph135.epil.preheader
  %i.dm = phi i32 [ %i.dp, %.lr.ph135.epil ], [ %.epil.init, %.lr.ph135.epil.preheader ]
  %.053134.epil = phi i64 [ %i.dq, %.lr.ph135.epil ], [ %.053134.epil.init, %.lr.ph135.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph135.epil ], [ 0, %.lr.ph135.epil.preheader ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0126, i64 %.053134.epil
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !97
  %i.dp = add nsw i32 %i.do, %i.dm                ; 2 uses
  %i.dq = add nuw nsw i64 %.053134.epil, 1        ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.dq
  store i32 %i.dp, ptr %i.dr, align 4, !tbaa !97
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter198
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph135.epil, !llvm.loop !1092

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph135.epil, %._crit_edge133.thread
  %i.ds = phi ptr [ %i.i, %._crit_edge133.thread ], [ %i.bo, %.lr.ph135.epil ], [ %i.bo, %._crit_edge.loopexit.unr-lcssa ]
  %i.dt = phi ptr [ %i.h, %._crit_edge133.thread ], [ %i.bn, %.lr.ph135.epil ], [ %i.bn, %._crit_edge.loopexit.unr-lcssa ]
  %i.du = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.b
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !97
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.dx, i64 noundef %i.dw, double noundef 0.000000e+00)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiE14resizeNonZerosEl.exit.preheader unwind label %.body

_ZN5Eigen12SparseMatrixIdLi0EiE14resizeNonZerosEl.exit.preheader: ; preds = %._crit_edge
  br i1 %i.c, label %.lr.ph143, label %._crit_edge144

.lr.ph135:                                        ; preds = %.lr.ph135, %._crit_edge133.new
  %i.dy = phi i32 [ 0, %._crit_edge133.new ], [ %i.eq, %.lr.ph135 ]
  %.053134 = phi i64 [ 0, %._crit_edge133.new ], [ %i.er, %.lr.ph135 ] ; 5 uses
  %niter = phi i64 [ 0, %._crit_edge133.new ], [ %niter.next.3, %.lr.ph135 ]
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0126, i64 %.053134
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !97
  %i.eb = add nsw i32 %i.ea, %i.dy                ; 2 uses
  %i.ec = or disjoint i64 %.053134, 1             ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ec
  store i32 %i.eb, ptr %i.ed, align 4, !tbaa !97
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0126, i64 %i.ec
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !97
  %i.eg = add nsw i32 %i.ef, %i.eb                ; 2 uses
  %i.eh = or disjoint i64 %.053134, 2             ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.eh
  store i32 %i.eg, ptr %i.ei, align 4, !tbaa !97
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0126, i64 %i.eh
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !97
  %i.el = add nsw i32 %i.ek, %i.eg                ; 2 uses
  %i.em = or disjoint i64 %.053134, 3             ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.em
  store i32 %i.el, ptr %i.en, align 4, !tbaa !97
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0126, i64 %i.em
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !97
  %i.eq = add nsw i32 %i.ep, %i.el                ; 3 uses
  %i.er = add nuw nsw i64 %.053134, 4             ; 3 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.er
  store i32 %i.eq, ptr %i.es, align 4, !tbaa !97
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph135, !llvm.loop !1093

.lr.ph143:                                        ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE14resizeNonZerosEl.exit.preheader
  %i.et = load ptr, ptr %i.dt, align 8, !tbaa !362
  %i.eu = shl nuw i64 %i.b, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.sroa.0106.0126, ptr align 4 %i.et, i64 %i.eu, i1 false), !tbaa !97
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !364 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !365 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !362 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !363 ; 3 uses
  %i.fd = icmp eq ptr %i.fc, null                 ; 2 uses
  %.not = icmp eq ptr %2, null
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  br i1 %.not, label %.lr.ph143.split.us, label %.lr.ph143.split

.lr.ph143.split.us:                               ; preds = %.lr.ph143, %._crit_edge140.split.us.us
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %._crit_edge140.split.us.us ], [ 0, %.lr.ph143 ] ; 5 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %indvars.iv166 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !97
  %i.fh = sext i32 %i.fg to i64                   ; 3 uses
  br i1 %i.fd, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph143.split.us
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv166
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !97
  %i.fk = sext i32 %i.fj to i64
  %i.fl = add nsw i64 %i.fk, %i.fh
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75.us

bb.q:                                             ; preds = %.lr.ph143.split.us
  %i.fm = getelementptr i8, ptr %i.ff, i64 4
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !97
  %i.fo = sext i32 %i.fn to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75.us

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75.us: ; preds = %bb.q, %bb.p
  %.sink.i74.us = phi i64 [ %i.fo, %bb.q ], [ %i.fl, %bb.p ] ; 2 uses
  %i.fp = icmp sgt i64 %.sink.i74.us, %i.fh
  br i1 %i.fp, label %.lr.ph139.us, label %._crit_edge140.split.us.us

.lr.ph139.us:                                     ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75.us
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0126, i64 %indvars.iv166 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.lr.ph139.us
  %.sroa.9.0138.us.us = phi i64 [ %i.fh, %.lr.ph139.us ], [ %i.ge, %bb.t ] ; 3 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %.sroa.9.0138.us.us
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !97 ; 2 uses
  %i.ft = sext i32 %i.fs to i64
  %i.fu = icmp slt i64 %indvars.iv166, %i.ft
  br i1 %i.fu, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fv = load i32, ptr %i.fq, align 4, !tbaa !97 ; 2 uses
  %i.fw = add nsw i32 %i.fv, 1
  store i32 %i.fw, ptr %i.fq, align 4, !tbaa !97
  %i.fx = sext i32 %i.fv to i64                   ; 2 uses
  %i.fy = load ptr, ptr %i.fe, align 8, !tbaa !365
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.fx
  store i32 %i.fs, ptr %i.fz, align 4, !tbaa !97
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %.sroa.9.0138.us.us
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !384
  %i.gc = load ptr, ptr %i.dx, align 8, !tbaa !364
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.fx
  store double %i.gb, ptr %i.gd, align 8, !tbaa !384
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ge = add nsw i64 %.sroa.9.0138.us.us, 1      ; 2 uses
  %exitcond165.not = icmp eq i64 %i.ge, %.sink.i74.us
  br i1 %exitcond165.not, label %._crit_edge140.split.us.us, label %bb.r, !llvm.loop !1094

._crit_edge140.split.us.us:                       ; preds = %bb.t, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75.us
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond169.not = icmp eq i64 %indvars.iv.next167, %i.b
  br i1 %exitcond169.not, label %._crit_edge144, label %.lr.ph143.split.us, !llvm.loop !1095

.body:                                            ; preds = %._crit_edge, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  %i.gf = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef %.sroa.0106.0126) #38
  resume { ptr, i32 } %i.gf

._crit_edge144:                                   ; preds = %._crit_edge140.split, %._crit_edge140.split.us.us, %_ZN5Eigen12SparseMatrixIdLi0EiE14resizeNonZerosEl.exit.preheader
  tail call void @free(ptr noundef %.sroa.0106.0126) #38
  ret void

.lr.ph143.split:                                  ; preds = %.lr.ph143, %._crit_edge140.split
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %._crit_edge140.split ], [ 0, %.lr.ph143 ] ; 5 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %indvars.iv161 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !97
  %i.gi = sext i32 %i.gh to i64                   ; 3 uses
  br i1 %i.fd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph143.split
  %i.gj = getelementptr i8, ptr %i.gg, i64 4
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !97
  %i.gl = sext i32 %i.gk to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75

bb.v:                                             ; preds = %.lr.ph143.split
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv161
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !97
  %i.go = sext i32 %i.gn to i64
  %i.gp = add nsw i64 %i.go, %i.gi
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75: ; preds = %bb.u, %bb.v
  %.sink.i74 = phi i64 [ %i.gl, %bb.u ], [ %i.gp, %bb.v ] ; 2 uses
  %i.gq = icmp sgt i64 %.sink.i74, %i.gi
  br i1 %i.gq, label %.lr.ph139, label %._crit_edge140.split

.lr.ph139:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv161
  br label %bb.w

._crit_edge140.split:                             ; preds = %bb.y, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond164.not = icmp eq i64 %indvars.iv.next162, %i.b
  br i1 %exitcond164.not, label %._crit_edge144, label %.lr.ph143.split, !llvm.loop !1095

bb.w:                                             ; preds = %.lr.ph139, %bb.y
  %.sroa.9.0138 = phi i64 [ %i.gi, %.lr.ph139 ], [ %i.hk, %bb.y ] ; 3 uses
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %.sroa.9.0138
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !97
  %i.gu = sext i32 %i.gt to i64                   ; 2 uses
  %i.gv = icmp slt i64 %indvars.iv161, %i.gu
  br i1 %i.gv, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gw = load i32, ptr %i.gr, align 4, !tbaa !97 ; 2 uses
  %i.gx = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gu
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !97 ; 2 uses
  %.sroa.speculated82 = tail call i32 @llvm.smax.i32(i32 %i.gy, i32 %i.gw)
  %i.gz = sext i32 %.sroa.speculated82 to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr %.sroa.0106.0126, i64 %i.gz ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !97 ; 2 uses
  %i.hc = add nsw i32 %i.hb, 1
  store i32 %i.hc, ptr %i.ha, align 4, !tbaa !97
  %i.hd = sext i32 %i.hb to i64                   ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.gw, i32 %i.gy)
  %i.he = load ptr, ptr %i.fe, align 8, !tbaa !365
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.he, i64 %i.hd
  store i32 %.sroa.speculated, ptr %i.hf, align 4, !tbaa !97
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %.sroa.9.0138
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !384
  %i.hi = load ptr, ptr %i.dx, align 8, !tbaa !364
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.hd
  store double %i.hh, ptr %i.hj, align 8, !tbaa !384
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.hk = add nsw i64 %.sroa.9.0138, 1            ; 2 uses
  %exitcond160.not = icmp eq i64 %i.hk, %.sink.i74
  br i1 %exitcond160.not, label %._crit_edge140.split, label %bb.w, !llvm.loop !1094
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal25ordering_helper_at_plus_aINS_12SparseMatrixIdLi0EiEEEEvRKT_RS4_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::SparseMatrix", align 8 ; 15 uses
  %3 = alloca %"class.Eigen::Transpose", align 8  ; 6 uses
  %4 = alloca %"class.Eigen::CwiseBinaryOp", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  store i8 0, ptr %2, align 8, !tbaa !355
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 -1, ptr %i.a, align 8, !tbaa !356
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  %i.d = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #43 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !362
  %.not6.i = icmp eq ptr %i.d, null
  br i1 %.not6.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #38 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !96
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #41
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.c ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #38
  br label %common.resume

end_hunk_0
