inline.NumInlined: 3205
inline.NumDeleted: 1582
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj1ENS_6SparseEE12solveInPlaceINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRNS_10MatrixBaseIT_EE:bb.a
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.11.1.i.us
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !33
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr [8 x i8], ptr %i.f, i64 %i.at ; 2 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !63
  %i.aw = fneg double %i.ao
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.aq, double %i.av)
  store double %i.ax, ptr %i.au, align 8, !tbaa !63
  %i.ay = add nsw i64 %.sroa.11.1.i.us, 1
  br label %.lr.ph40.i.us.prol.loopexit

.lr.ph40.i.us.prol.loopexit:                      ; preds = %.lr.ph40.i.us.prol, %.lr.ph40.i.us.preheader
  %.sroa.11.239.i.us.unr = phi i64 [ %.sroa.11.1.i.us, %.lr.ph40.i.us.preheader ], [ %i.ay, %.lr.ph40.i.us.prol ]
  %i.az = add nsw i64 %i.x, -1
  %i.ba = icmp eq i64 %.sroa.11.1.i.us, %i.az
  br i1 %i.ba, label %.loopexit.i.us, label %.lr.ph40.i.us

.lr.ph40.i.us:                                    ; preds = %.lr.ph40.i.us.prol.loopexit, %.lr.ph40.i.us
  %.sroa.11.239.i.us = phi i64 [ %i.bw, %.lr.ph40.i.us ], [ %.sroa.11.239.i.us.unr, %.lr.ph40.i.us.prol.loopexit ] ; 4 uses
  %i.bb = load double, ptr %i.p, align 8, !tbaa !63
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.11.239.i.us
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !63
  %i.be = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.11.239.i.us
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !33
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr [8 x i8], ptr %i.f, i64 %i.bg ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !63
  %i.bj = fneg double %i.bb
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.bd, double %i.bi)
  store double %i.bk, ptr %i.bh, align 8, !tbaa !63
  %i.bl = add nsw i64 %.sroa.11.239.i.us, 1       ; 2 uses
  %i.bm = load double, ptr %i.p, align 8, !tbaa !63
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bl
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !63
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.bl
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !33
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr [8 x i8], ptr %i.f, i64 %i.br ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !63
  %i.bu = fneg double %i.bm
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bo, double %i.bt)
  store double %i.bv, ptr %i.bs, align 8, !tbaa !63
  %i.bw = add nsw i64 %.sroa.11.239.i.us, 2       ; 2 uses
  %exitcond48.not.i.us.1 = icmp eq i64 %i.bw, %i.x
  br i1 %exitcond48.not.i.us.1, label %.loopexit.i.us, label %.lr.ph40.i.us, !llvm.loop !523

.loopexit.i.us:                                   ; preds = %.lr.ph40.i.us.prol.loopexit, %.lr.ph40.i.us, %bb.d, %.preheader.preheader.i.split.us
  %i.bx = add nuw nsw i64 %.01941.i.us, 1         ; 2 uses
  %exitcond49.not.i.us = icmp eq i64 %i.bx, %i.d
  br i1 %exitcond49.not.i.us, label %_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_12SparseMatrixIdLi0EiEENS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELi1ELi0EE3runERS4_RSA_.exit, label %.preheader.preheader.i.split.us, !llvm.loop !524

.preheader.preheader.i.split:                     ; preds = %.preheader.preheader.i, %.loopexit.i
  %.01941.i = phi i64 [ %i.ej, %.loopexit.i ], [ 0, %.preheader.preheader.i ] ; 6 uses
  %i.by = getelementptr [8 x i8], ptr %i.f, i64 %.01941.i ; 6 uses
  %i.bz = load double, ptr %i.by, align 8, !tbaa !63 ; 3 uses
  %i.ca = fcmp une double %i.bz, 0.000000e+00
  br i1 %i.ca, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i, label %.loopexit.i

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i: ; preds = %.preheader.preheader.i.split
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.01941.i
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !33
  %i.cd = sext i32 %i.cc to i64                   ; 5 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.fr5, i64 %.01941.i
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !33 ; 2 uses
  %i.cg = sext i32 %i.cf to i64                   ; 3 uses
  %i.ch = add nsw i64 %i.cg, %i.cd                ; 4 uses
  %i.ci = icmp sgt i32 %i.cf, 0
  br i1 %i.ci, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i, %bb.e
  %.sroa.11.038.i = phi i64 [ %i.cn, %bb.e ], [ %i.cd, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i ] ; 4 uses
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.11.038.i
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !33
  %i.cl = sext i32 %i.ck to i64                   ; 2 uses
  %i.cm = icmp sgt i64 %.01941.i, %i.cl
  br i1 %i.cm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.cn = add nsw i64 %.sroa.11.038.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cn, %i.ch
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !522

.critedge.i:                                      ; preds = %bb.e, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i
  %.sroa.11.0.lcssa.i = phi i64 [ %i.cd, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i ], [ %i.ch, %bb.e ] ; 2 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.11.0.lcssa.i
  %i.cp = load double, ptr %i.co, align 8, !tbaa !63
  %i.cq = fdiv double %i.bz, %i.cp
  store double %i.cq, ptr %i.by, align 8, !tbaa !63
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.11.038.i
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !63
  %i.ct = fdiv double %i.bz, %i.cs
  store double %i.ct, ptr %i.by, align 8, !tbaa !63
  %i.cu = icmp eq i64 %.01941.i, %i.cl
  %i.cv = zext i1 %i.cu to i64
  %spec.select.i = add nsw i64 %.sroa.11.038.i, %i.cv
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge.i
  %.sroa.11.1.i = phi i64 [ %.sroa.11.0.lcssa.i, %.critedge.i ], [ %spec.select.i, %bb.f ] ; 7 uses
  %i.cw = icmp slt i64 %.sroa.11.1.i, %i.ch
  br i1 %i.cw, label %.lr.ph40.i.preheader, label %.loopexit.i

.lr.ph40.i.preheader:                             ; preds = %bb.g
  %i.cx = add nsw i64 %i.cg, %i.cd
  %i.cy = sub i64 %i.cx, %.sroa.11.1.i
  %i.cz = add nsw i64 %i.cg, -1
  %i.da = add nsw i64 %i.cz, %i.cd
  %xtraiter = and i64 %i.cy, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph40.i.prol.loopexit, label %.lr.ph40.i.prol

.lr.ph40.i.prol:                                  ; preds = %.lr.ph40.i.preheader
  %i.db = load double, ptr %i.by, align 8, !tbaa !63
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.11.1.i
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !63
  %i.de = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.11.1.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !33
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [8 x i8], ptr %i.f, i64 %i.dg ; 2 uses
  %i.di = load double, ptr %i.dh, align 8, !tbaa !63
  %i.dj = fneg double %i.db
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.dd, double %i.di)
  store double %i.dk, ptr %i.dh, align 8, !tbaa !63
  %i.dl = add nsw i64 %.sroa.11.1.i, 1
  br label %.lr.ph40.i.prol.loopexit

.lr.ph40.i.prol.loopexit:                         ; preds = %.lr.ph40.i.prol, %.lr.ph40.i.preheader
  %.sroa.11.239.i.unr = phi i64 [ %.sroa.11.1.i, %.lr.ph40.i.preheader ], [ %i.dl, %.lr.ph40.i.prol ]
  %i.dm = icmp eq i64 %i.da, %.sroa.11.1.i
  br i1 %i.dm, label %.loopexit.i, label %.lr.ph40.i

.lr.ph40.i:                                       ; preds = %.lr.ph40.i.prol.loopexit, %.lr.ph40.i
  %.sroa.11.239.i = phi i64 [ %i.ei, %.lr.ph40.i ], [ %.sroa.11.239.i.unr, %.lr.ph40.i.prol.loopexit ] ; 4 uses
  %i.dn = load double, ptr %i.by, align 8, !tbaa !63
  %i.do = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.11.239.i
  %i.dp = load double, ptr %i.do, align 8, !tbaa !63
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.11.239.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !33
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr [8 x i8], ptr %i.f, i64 %i.ds ; 2 uses
  %i.du = load double, ptr %i.dt, align 8, !tbaa !63
  %i.dv = fneg double %i.dn
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.dv, double %i.dp, double %i.du)
  store double %i.dw, ptr %i.dt, align 8, !tbaa !63
  %i.dx = add nsw i64 %.sroa.11.239.i, 1          ; 2 uses
  %i.dy = load double, ptr %i.by, align 8, !tbaa !63
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.dx
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !63
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.dx
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !33
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr [8 x i8], ptr %i.f, i64 %i.ed ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !63
  %i.eg = fneg double %i.dy
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.eg, double %i.ea, double %i.ef)
  store double %i.eh, ptr %i.ee, align 8, !tbaa !63
  %i.ei = add nsw i64 %.sroa.11.239.i, 2          ; 2 uses
  %exitcond48.not.i.1 = icmp eq i64 %i.ei, %i.ch
  br i1 %exitcond48.not.i.1, label %.loopexit.i, label %.lr.ph40.i, !llvm.loop !523

.loopexit.i:                                      ; preds = %.lr.ph40.i.prol.loopexit, %.lr.ph40.i, %bb.g, %.preheader.preheader.i.split
  %i.ej = add nuw nsw i64 %.01941.i, 1            ; 2 uses
  %exitcond49.not.i = icmp eq i64 %i.ej, %i.d
  br i1 %exitcond49.not.i, label %_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_12SparseMatrixIdLi0EiEENS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELi1ELi0EE3runERS4_RSA_.exit, label %.preheader.preheader.i.split, !llvm.loop !524

_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_12SparseMatrixIdLi0EiEENS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELi1ELi0EE3runERS4_RSA_.exit: ; preds = %.loopexit.i, %.loopexit.i.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi2ELi2ELi1EE3runERS7_RSD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(19) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !525, !nonnull !86, !align !191 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !143  ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  %i.f = load ptr, ptr %1, align 8                ; 8 uses
  br i1 %i.e, label %.split, label %.split48

.split:                                           ; preds = %bb.a
  %.02243 = add nsw i64 %i.d, -1                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !170  ; 8 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !171  ; 8 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !161  ; 2 uses
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !160  ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us: ; preds = %.split, %._crit_edge.us.us
  %.02244.us.us = phi i64 [ %.022.us.us, %._crit_edge.us.us ], [ %.02243, %.split ] ; 5 uses
  %i.p = getelementptr [8 x i8], ptr %i.f, i64 %.02244.us.us ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !63 ; 3 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %i.m, i64 %.02244.us.us ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !33   ; 2 uses
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr i8, ptr %i.r, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !33   ; 2 uses
  %i.w = sext i32 %i.v to i64                     ; 6 uses
  %i.x = icmp slt i32 %i.s, %i.v
  br i1 %i.x, label %.lr.ph.us.us, label %.critedge.us.us

.lr.ph.us.us:                                     ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us, %bb.b
  %.sroa.10.035.us.us = phi i64 [ %i.ac, %bb.b ], [ %i.t, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us ] ; 3 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.035.us.us
  %i.z = load i32, ptr %i.y, align 4, !tbaa !33
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp sgt i64 %.02244.us.us, %i.aa
  br i1 %i.ab, label %bb.b, label %.critedge.us.us

bb.b:                                             ; preds = %.lr.ph.us.us
  %i.ac = add nsw i64 %.sroa.10.035.us.us, 1      ; 2 uses
  %exitcond55.not = icmp eq i64 %i.ac, %i.w
  br i1 %exitcond55.not, label %.critedge.us.us, label %.lr.ph.us.us, !llvm.loop !531

.critedge.us.us:                                  ; preds = %.lr.ph.us.us, %bb.b, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us
  %.sroa.10.0.lcssa.us.us = phi i64 [ %i.t, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us ], [ %i.w, %bb.b ], [ %.sroa.10.035.us.us, %.lr.ph.us.us ] ; 5 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.0.lcssa.us.us
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !63
  %.sroa.10.138.us.us = add nsw i64 %.sroa.10.0.lcssa.us.us, 1 ; 4 uses
  %i.af = icmp slt i64 %.sroa.10.138.us.us, %i.w
  br i1 %i.af, label %.lr.ph41.us.us.preheader, label %._crit_edge.us.us

.lr.ph41.us.us.preheader:                         ; preds = %.critedge.us.us
  %i.ag = add nsw i64 %i.w, -2
  %i.ah = sub i64 %.sroa.10.0.lcssa.us.us, %i.w
  %i.ai = and i64 %i.ah, 1
  %lcmp.mod68.not.not = icmp eq i64 %i.ai, 0
  br i1 %lcmp.mod68.not.not, label %.lr.ph41.us.us.prol, label %.lr.ph41.us.us.prol.loopexit

.lr.ph41.us.us.prol:                              ; preds = %.lr.ph41.us.us.preheader
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.138.us.us
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !63
  %i.al = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.138.us.us
  %i.am = load i32, ptr %i.al, align 4, !tbaa !33
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr [8 x i8], ptr %i.f, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !63
  %i.aq = fneg double %i.ak
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.ap, double %i.q) ; 2 uses
  %.sroa.10.1.us.us.prol = add nsw i64 %.sroa.10.0.lcssa.us.us, 2
  br label %.lr.ph41.us.us.prol.loopexit

.lr.ph41.us.us.prol.loopexit:                     ; preds = %.lr.ph41.us.us.prol, %.lr.ph41.us.us.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph41.us.us.preheader ], [ %i.ar, %.lr.ph41.us.us.prol ]
  %.sroa.10.140.us.us.unr = phi i64 [ %.sroa.10.138.us.us, %.lr.ph41.us.us.preheader ], [ %.sroa.10.1.us.us.prol, %.lr.ph41.us.us.prol ]
  %.02139.us.us.unr = phi double [ %i.q, %.lr.ph41.us.us.preheader ], [ %i.ar, %.lr.ph41.us.us.prol ]
  %i.as = icmp eq i64 %i.ag, %.sroa.10.0.lcssa.us.us
  br i1 %i.as, label %._crit_edge.us.us, label %.lr.ph41.us.us

.lr.ph41.us.us:                                   ; preds = %.lr.ph41.us.us.prol.loopexit, %.lr.ph41.us.us
  %.sroa.10.140.us.us = phi i64 [ %.sroa.10.1.us.us.1, %.lr.ph41.us.us ], [ %.sroa.10.140.us.us.unr, %.lr.ph41.us.us.prol.loopexit ] ; 4 uses
  %.02139.us.us = phi double [ %i.bk, %.lr.ph41.us.us ], [ %.02139.us.us.unr, %.lr.ph41.us.us.prol.loopexit ]
  %i.at = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.140.us.us
  %i.au = load double, ptr %i.at, align 8, !tbaa !63
  %i.av = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.140.us.us
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !33
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr [8 x i8], ptr %i.f, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !63
  %i.ba = fneg double %i.au
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.az, double %.02139.us.us)
  %.sroa.10.1.us.us = add nsw i64 %.sroa.10.140.us.us, 1 ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.1.us.us
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !63
  %i.be = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.1.us.us
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !33
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr [8 x i8], ptr %i.f, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !63
  %i.bj = fneg double %i.bd
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.bi, double %i.bb) ; 2 uses
  %.sroa.10.1.us.us.1 = add nsw i64 %.sroa.10.140.us.us, 2 ; 2 uses
  %exitcond56.not.1 = icmp eq i64 %.sroa.10.1.us.us.1, %i.w
  br i1 %exitcond56.not.1, label %._crit_edge.us.us, label %.lr.ph41.us.us, !llvm.loop !532

._crit_edge.us.us:                                ; preds = %.lr.ph41.us.us.prol.loopexit, %.lr.ph41.us.us, %.critedge.us.us
  %.021.lcssa.us.us = phi double [ %i.q, %.critedge.us.us ], [ %.lcssa.unr, %.lr.ph41.us.us.prol.loopexit ], [ %i.bk, %.lr.ph41.us.us ]
  %i.bl = fdiv double %.021.lcssa.us.us, %i.ae
  store double %i.bl, ptr %i.p, align 8, !tbaa !63
  %.022.us.us = add nsw i64 %.02244.us.us, -1
  %i.bm = icmp sgt i64 %.02244.us.us, 0
  br i1 %i.bm, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us, label %.split48, !llvm.loop !533

.split48:                                         ; preds = %._crit_edge, %._crit_edge.us.us, %bb.a
  ret void

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit: ; preds = %.split, %._crit_edge
  %.02244 = phi i64 [ %.022, %._crit_edge ], [ %.02243, %.split ] ; 6 uses
  %i.bn = getelementptr [8 x i8], ptr %i.f, i64 %.02244 ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !63 ; 3 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.m, i64 %.02244
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !33
  %i.br = sext i32 %i.bq to i64                   ; 5 uses
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.n, i64 %.02244
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !33 ; 2 uses
  %i.bu = sext i32 %i.bt to i64                   ; 3 uses
  %i.bv = add nsw i64 %i.bu, %i.br                ; 4 uses
  %i.bw = icmp sgt i32 %i.bt, 0
  br i1 %i.bw, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit, %bb.c
  %.sroa.10.035 = phi i64 [ %i.cb, %bb.c ], [ %i.br, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit ] ; 3 uses
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.035
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !33
  %i.bz = sext i32 %i.by to i64
  %i.ca = icmp sgt i64 %.02244, %i.bz
  br i1 %i.ca, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.cb = add nsw i64 %.sroa.10.035, 1            ; 2 uses
  %i.cc = icmp slt i64 %i.cb, %i.bv
  br i1 %i.cc, label %.lr.ph, label %.critedge, !llvm.loop !531

.critedge:                                        ; preds = %.lr.ph, %bb.c, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit
  %.sroa.10.0.lcssa = phi i64 [ %i.br, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit ], [ %i.bv, %bb.c ], [ %.sroa.10.035, %.lr.ph ] ; 5 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.0.lcssa
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !63
  %.sroa.10.138 = add nsw i64 %.sroa.10.0.lcssa, 1 ; 4 uses
  %i.cf = icmp slt i64 %.sroa.10.138, %i.bv
  br i1 %i.cf, label %.lr.ph41.preheader, label %._crit_edge

.lr.ph41.preheader:                               ; preds = %.critedge
  %i.cg = add nsw i64 %i.bu, -2
  %i.ch = add nsw i64 %i.cg, %i.br
  %i.ci = sub nsw i64 %i.bu, %i.br
  %i.cj = add i64 %i.ci, %.sroa.10.0.lcssa
  %i.ck = and i64 %i.cj, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ck, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph41.prol, label %.lr.ph41.prol.loopexit

.lr.ph41.prol:                                    ; preds = %.lr.ph41.preheader
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.138
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !63
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.138
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !33
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr [8 x i8], ptr %i.f, i64 %i.cp
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !63
  %i.cs = fneg double %i.cm
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.cr, double %i.bo) ; 2 uses
  %.sroa.10.1.prol = add nsw i64 %.sroa.10.0.lcssa, 2
  br label %.lr.ph41.prol.loopexit

.lr.ph41.prol.loopexit:                           ; preds = %.lr.ph41.prol, %.lr.ph41.preheader
  %.lcssa66.unr = phi double [ poison, %.lr.ph41.preheader ], [ %i.ct, %.lr.ph41.prol ]
  %.sroa.10.140.unr = phi i64 [ %.sroa.10.138, %.lr.ph41.preheader ], [ %.sroa.10.1.prol, %.lr.ph41.prol ]
  %.02139.unr = phi double [ %i.bo, %.lr.ph41.preheader ], [ %i.ct, %.lr.ph41.prol ]
  %i.cu = icmp eq i64 %i.ch, %.sroa.10.0.lcssa
  br i1 %i.cu, label %._crit_edge, label %.lr.ph41

.lr.ph41:                                         ; preds = %.lr.ph41.prol.loopexit, %.lr.ph41
  %.sroa.10.140 = phi i64 [ %.sroa.10.1.1, %.lr.ph41 ], [ %.sroa.10.140.unr, %.lr.ph41.prol.loopexit ] ; 4 uses
  %.02139 = phi double [ %i.dm, %.lr.ph41 ], [ %.02139.unr, %.lr.ph41.prol.loopexit ]
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.140
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !63
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.140
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !33
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr [8 x i8], ptr %i.f, i64 %i.cz
  %i.db = load double, ptr %i.da, align 8, !tbaa !63
  %i.dc = fneg double %i.cw
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.db, double %.02139)
  %.sroa.10.1 = add nsw i64 %.sroa.10.140, 1      ; 2 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.1
  %i.df = load double, ptr %i.de, align 8, !tbaa !63
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.1
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !33
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr [8 x i8], ptr %i.f, i64 %i.di
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !63
  %i.dl = fneg double %i.df
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.dk, double %i.dd) ; 2 uses
  %.sroa.10.1.1 = add nsw i64 %.sroa.10.140, 2    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %.sroa.10.1.1, %i.bv
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph41, !llvm.loop !532

._crit_edge:                                      ; preds = %.lr.ph41.prol.loopexit, %.lr.ph41, %.critedge
  %.021.lcssa = phi double [ %i.bo, %.critedge ], [ %.lcssa66.unr, %.lr.ph41.prol.loopexit ], [ %i.dm, %.lr.ph41 ]
  %i.dn = fdiv double %.021.lcssa, %i.ce
  store double %i.dn, ptr %i.bn, align 8, !tbaa !63
  %.022 = add nsw i64 %.02244, -1
  %i.do = icmp sgt i64 %.02244, 0
  br i1 %i.do, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit, label %.split48, !llvm.loop !533
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #24

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #21 = { mustprogress noinline uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #30 = { nounwind }
attributes #31 = { builtin nounwind }
attributes #32 = { noreturn }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { nounwind willreturn memory(read) }
attributes #35 = { noreturn nounwind }
attributes #36 = { nounwind allocsize(0) }
attributes #37 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTSN3g2o6SolverE", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"vtable pointer", !7, i64 0}
!13 = distinct !{null, null}
!14 = !{!15, !16, i64 8}
!15 = !{!"_ZTSN3g2o21OptimizationAlgorithmE", !16, i64 8, !17, i64 16}
!16 = !{!"p1 _ZTSN3g2o15SparseOptimizerE", !10, i64 0}
!17 = !{!"_ZTSN3g2o11PropertyMapE", !18, i64 0}
!18 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3g2o12BasePropertyESt4lessIS5_ESaISt4pairIKS5_S8_EEE", !19, i64 0}
!19 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN3g2o12BasePropertyEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE", !20, i64 0}
!20 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN3g2o12BasePropertyEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE13_Rb_tree_implISF_Lb1EEE", !21, i64 0, !23, i64 8}
!21 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !22, i64 0}
!22 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!23 = !{!"_ZTSSt15_Rb_tree_header", !24, i64 0, !27, i64 32}
!24 = !{!"_ZTSSt18_Rb_tree_node_base", !25, i64 0, !26, i64 8, !26, i64 16, !26, i64 24}
!25 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!26 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !10, i64 0}
!27 = !{!"long", !6, i64 0}
!28 = !{!29, !30, i64 8}
!29 = !{!"_ZTSNSt12_Vector_baseIPN3g2o16OptimizableGraph6VertexESaIS3_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!30 = !{!"p2 _ZTSN3g2o16OptimizableGraph6VertexE", !31, i64 0}
!31 = !{!"any p2 pointer", !10, i64 0}
!32 = !{!29, !30, i64 0}
!33 = !{!5, !5, i64 0}
!34 = distinct !{!34, !35, !36, !37}
!35 = !{!"llvm.loop.mustprogress"}
end_hunk_0
