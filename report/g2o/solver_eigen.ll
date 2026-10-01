Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/solver_eigen?download=true
inline.NumInlined: 23967
inline.NumDeleted: 11511
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 155
loop-unroll.NumUnrolled: 180
begin_hunk_0_@_ZN5Eigen8internal20permute_symm_to_symmILi2ELi2ENS_12SparseMatrixIdLi0EiEELi0EEEvRKT1_RNS2_INS4_6ScalarEXT2_ENS4_12StorageIndexEEEPKS8_:bb.a
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

.body:                                            ; preds = %._crit_edge, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef %.sroa.0106.0126) #38
  resume { ptr, i32 } %i.bq

.lr.ph132.split:                                  ; preds = %.lr.ph132, %._crit_edge.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.split ], [ 0, %.lr.ph132 ] ; 7 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !97 ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !97
  %i.bv = sext i32 %i.bu to i64                   ; 7 uses
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph132.split
  %i.bw = getelementptr i8, ptr %i.bt, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !97
  %i.by = sext i32 %i.bx to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.k:                                             ; preds = %.lr.ph132.split
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !97
  %i.cb = sext i32 %i.ca to i64
  %i.cc = add nsw i64 %i.cb, %i.bv
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.j, %bb.k
  %.sink.i = phi i64 [ %i.by, %bb.j ], [ %i.cc, %bb.k ] ; 4 uses
  %i.cd = icmp sgt i64 %.sink.i, %i.bv
  br i1 %i.cd, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.ce = sub nsw i64 %.sink.i, %i.bv
  %.neg = add nsw i64 %i.bv, 1
  %xtraiter = and i64 %i.ce, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bv
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !97
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  %i.ci = icmp slt i64 %indvars.iv, %i.ch
  br i1 %i.ci, label %.lr.ph.prol.loopexit.unr-lcssa, label %bb.l

bb.l:                                             ; preds = %.lr.ph.prol
  %i.cj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ch
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !97
  %.sroa.speculated97.prol = tail call i32 @llvm.smax.i32(i32 %i.ck, i32 %i.bs)
  %i.cl = sext i32 %.sroa.speculated97.prol to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %.sroa.0106.0126, i64 %i.cl ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !97
  %i.co = add nsw i32 %i.cn, 1
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !97
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.l, %.lr.ph.prol
  %i.cp = add nsw i64 %i.bv, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.7.0129.unr = phi i64 [ %i.bv, %.lr.ph.preheader ], [ %i.cp, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.cq = icmp eq i64 %.sink.i, %.neg
  br i1 %i.cq, label %._crit_edge.split, label %.lr.ph

._crit_edge.split:                                ; preds = %.lr.ph.prol.loopexit, %bb.o, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond149.not, label %._crit_edge133, label %.lr.ph132.split, !llvm.loop !1091

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.o
  %.sroa.7.0129 = phi i64 [ %i.dm, %bb.o ], [ %.sroa.7.0129.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.k, i64 %.sroa.7.0129
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !97
  %i.ct = sext i32 %i.cs to i64                   ; 2 uses
  %i.cu = icmp slt i64 %indvars.iv, %i.ct
  br i1 %i.cu, label %.lr.ph.1, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.cv = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ct
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !97
  %.sroa.speculated97 = tail call i32 @llvm.smax.i32(i32 %i.cw, i32 %i.bs)
  %i.cx = sext i32 %.sroa.speculated97 to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %.sroa.0106.0126, i64 %i.cx ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !97
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !97
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.m
  %i.db = getelementptr [4 x i8], ptr %i.k, i64 %.sroa.7.0129
  %i.dc = getelementptr i8, ptr %i.db, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !97
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = icmp slt i64 %indvars.iv, %i.de
  br i1 %i.df, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.1
  %i.dg = getelementptr inbounds [4 x i8], ptr %2, i64 %i.de
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !97
  %.sroa.speculated97.1 = tail call i32 @llvm.smax.i32(i32 %i.dh, i32 %i.bs)
  %i.di = sext i32 %.sroa.speculated97.1 to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %.sroa.0106.0126, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !97
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !97
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.1
  %i.dm = add nsw i64 %.sroa.7.0129, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dm, %.sink.i
  br i1 %exitcond.not.1, label %._crit_edge.split, label %.lr.ph, !llvm.loop !1090

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph135
  %lcmp.mod199.not = icmp eq i64 %xtraiter198, 0
  br i1 %lcmp.mod199.not, label %._crit_edge, label %.lr.ph135.epil.preheader

.lr.ph135.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %._crit_edge133
  %.epil.init = phi i32 [ 0, %._crit_edge133 ], [ %i.er, %._crit_edge.loopexit.unr-lcssa ]
  %.053134.epil.init = phi i64 [ 0, %._crit_edge133 ], [ %i.es, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod200 = icmp ne i64 %xtraiter198, 0
  tail call void @llvm.assume(i1 %lcmp.mod200)
  br label %.lr.ph135.epil

.lr.ph135.epil:                                   ; preds = %.lr.ph135.epil, %.lr.ph135.epil.preheader
  %i.dn = phi i32 [ %i.dq, %.lr.ph135.epil ], [ %.epil.init, %.lr.ph135.epil.preheader ]
  %.053134.epil = phi i64 [ %i.dr, %.lr.ph135.epil ], [ %.053134.epil.init, %.lr.ph135.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph135.epil ], [ 0, %.lr.ph135.epil.preheader ]
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0126, i64 %.053134.epil
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !97
  %i.dq = add nsw i32 %i.dp, %i.dn                ; 2 uses
  %i.dr = add nuw nsw i64 %.053134.epil, 1        ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.dr
  store i32 %i.dq, ptr %i.ds, align 4, !tbaa !97
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter198
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph135.epil, !llvm.loop !1092

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph135.epil, %._crit_edge133.thread
  %i.dt = phi ptr [ %i.i, %._crit_edge133.thread ], [ %i.bo, %.lr.ph135.epil ], [ %i.bo, %._crit_edge.loopexit.unr-lcssa ]
  %i.du = phi ptr [ %i.h, %._crit_edge133.thread ], [ %i.bn, %.lr.ph135.epil ], [ %i.bn, %._crit_edge.loopexit.unr-lcssa ]
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.b
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !97
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.dy, i64 noundef %i.dx, double noundef 0.000000e+00)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiE14resizeNonZerosEl.exit.preheader unwind label %.body

_ZN5Eigen12SparseMatrixIdLi0EiE14resizeNonZerosEl.exit.preheader: ; preds = %._crit_edge
  br i1 %i.c, label %.lr.ph143, label %._crit_edge144

.lr.ph135:                                        ; preds = %.lr.ph135, %._crit_edge133.new
  %i.dz = phi i32 [ 0, %._crit_edge133.new ], [ %i.er, %.lr.ph135 ]
  %.053134 = phi i64 [ 0, %._crit_edge133.new ], [ %i.es, %.lr.ph135 ] ; 5 uses
  %niter = phi i64 [ 0, %._crit_edge133.new ], [ %niter.next.3, %.lr.ph135 ]
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0126, i64 %.053134
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !97
  %i.ec = add nsw i32 %i.eb, %i.dz                ; 2 uses
  %i.ed = or disjoint i64 %.053134, 1             ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ed
  store i32 %i.ec, ptr %i.ee, align 4, !tbaa !97
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0126, i64 %i.ed
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !97
  %i.eh = add nsw i32 %i.eg, %i.ec                ; 2 uses
  %i.ei = or disjoint i64 %.053134, 2             ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ei
  store i32 %i.eh, ptr %i.ej, align 4, !tbaa !97
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0126, i64 %i.ei
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !97
  %i.em = add nsw i32 %i.el, %i.eh                ; 2 uses
  %i.en = or disjoint i64 %.053134, 3             ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.en
  store i32 %i.em, ptr %i.eo, align 4, !tbaa !97
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0126, i64 %i.en
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !97
  %i.er = add nsw i32 %i.eq, %i.em                ; 3 uses
  %i.es = add nuw nsw i64 %.053134, 4             ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.es
  store i32 %i.er, ptr %i.et, align 4, !tbaa !97
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph135, !llvm.loop !1093

.lr.ph143:                                        ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE14resizeNonZerosEl.exit.preheader
  %i.eu = load ptr, ptr %i.du, align 8, !tbaa !362
  %i.ev = shl nuw i64 %i.b, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.sroa.0106.0126, ptr align 4 %i.eu, i64 %i.ev, i1 false), !tbaa !97
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !364 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !365 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !362 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !363 ; 3 uses
  %i.fe = icmp eq ptr %i.fd, null                 ; 2 uses
  %.not = icmp eq ptr %2, null
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  br i1 %.not, label %.lr.ph143.split.us, label %.lr.ph143.split

.lr.ph143.split.us:                               ; preds = %.lr.ph143, %._crit_edge140.split.us.us
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %._crit_edge140.split.us.us ], [ 0, %.lr.ph143 ] ; 5 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv166 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !97
  %i.fi = sext i32 %i.fh to i64                   ; 3 uses
  br i1 %i.fe, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph143.split.us
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv166
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !97
  %i.fl = sext i32 %i.fk to i64
  %i.fm = add nsw i64 %i.fl, %i.fi
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75.us

bb.q:                                             ; preds = %.lr.ph143.split.us
  %i.fn = getelementptr i8, ptr %i.fg, i64 4
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !97
  %i.fp = sext i32 %i.fo to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75.us

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75.us: ; preds = %bb.q, %bb.p
  %.sink.i74.us = phi i64 [ %i.fp, %bb.q ], [ %i.fm, %bb.p ] ; 2 uses
  %i.fq = icmp sgt i64 %.sink.i74.us, %i.fi
  br i1 %i.fq, label %.lr.ph139.us, label %._crit_edge140.split.us.us

.lr.ph139.us:                                     ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75.us
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0126, i64 %indvars.iv166 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.lr.ph139.us
  %.sroa.9.0138.us.us = phi i64 [ %i.fi, %.lr.ph139.us ], [ %i.gf, %bb.t ] ; 3 uses
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %.sroa.9.0138.us.us
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !97 ; 2 uses
  %i.fu = sext i32 %i.ft to i64
  %i.fv = icmp slt i64 %indvars.iv166, %i.fu
  br i1 %i.fv, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fw = load i32, ptr %i.fr, align 4, !tbaa !97 ; 2 uses
  %i.fx = add nsw i32 %i.fw, 1
  store i32 %i.fx, ptr %i.fr, align 4, !tbaa !97
  %i.fy = sext i32 %i.fw to i64                   ; 2 uses
  %i.fz = load ptr, ptr %i.ff, align 8, !tbaa !365
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.fz, i64 %i.fy
  store i32 %i.ft, ptr %i.ga, align 4, !tbaa !97
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %.sroa.9.0138.us.us
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !384
  %i.gd = load ptr, ptr %i.dy, align 8, !tbaa !364
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.fy
  store double %i.gc, ptr %i.ge, align 8, !tbaa !384
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.gf = add nsw i64 %.sroa.9.0138.us.us, 1      ; 2 uses
  %exitcond165.not = icmp eq i64 %i.gf, %.sink.i74.us
  br i1 %exitcond165.not, label %._crit_edge140.split.us.us, label %bb.r, !llvm.loop !1094

._crit_edge140.split.us.us:                       ; preds = %bb.t, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75.us
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond169.not = icmp eq i64 %indvars.iv.next167, %i.b
  br i1 %exitcond169.not, label %._crit_edge144, label %.lr.ph143.split.us, !llvm.loop !1095

._crit_edge144:                                   ; preds = %._crit_edge140.split, %._crit_edge140.split.us.us, %_ZN5Eigen12SparseMatrixIdLi0EiE14resizeNonZerosEl.exit.preheader
  tail call void @free(ptr noundef %.sroa.0106.0126) #38
  ret void

.lr.ph143.split:                                  ; preds = %.lr.ph143, %._crit_edge140.split
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %._crit_edge140.split ], [ 0, %.lr.ph143 ] ; 5 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv161 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !97
  %i.gi = sext i32 %i.gh to i64                   ; 3 uses
  br i1 %i.fe, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph143.split
  %i.gj = getelementptr i8, ptr %i.gg, i64 4
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !97
  %i.gl = sext i32 %i.gk to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75

bb.v:                                             ; preds = %.lr.ph143.split
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv161
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
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %.sroa.9.0138
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
  %i.he = load ptr, ptr %i.ff, align 8, !tbaa !365
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.he, i64 %i.hd
  store i32 %.sroa.speculated, ptr %i.hf, align 4, !tbaa !97
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %.sroa.9.0138
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !384
  %i.hi = load ptr, ptr %i.dy, align 8, !tbaa !364
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

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !356
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  store i8 0, ptr %3, align 8
end_hunk_0
