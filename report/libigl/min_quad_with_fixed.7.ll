Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.7?download=true
inline.NumInlined: 12514
inline.NumDeleted: 4719
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 220
begin_hunk_0_@_ZN5Eigen8internal20permute_symm_to_symmILi1ELi2ENS_12SparseMatrixIdLi0EiEELi0EEEvRKT1_RNS2_INS4_6ScalarEXT2_ENS4_12StorageIndexEEEPKS8_:bb.a
_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, %bb.a
  %.sroa.0106.0126 = phi ptr [ null, %bb.a ], [ %calloc, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i ] ; 17 uses
  invoke void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.b, i64 noundef %i.b)
          to label %.preheader128 unwind label %.body

.preheader128:                                    ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  br i1 %i.c, label %.lr.ph132, label %._crit_edge133.thread

._crit_edge133.thread:                            ; preds = %.preheader128
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !145  ; 2 uses
  store i32 0, ptr %i.i, align 4, !tbaa !104
  br label %._crit_edge

.lr.ph132:                                        ; preds = %.preheader128
  %.not69 = icmp eq ptr %2, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !162  ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !145  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !160  ; 3 uses
  %i.p = icmp eq ptr %i.o, null                   ; 2 uses
  br i1 %.not69, label %.lr.ph132.split.us, label %.lr.ph132.split

.lr.ph132.split.us:                               ; preds = %.lr.ph132
  br i1 %i.p, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us: ; preds = %.lr.ph132.split.us, %._crit_edge.split.us.us.us
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %._crit_edge.split.us.us.us ], [ 0, %.lr.ph132.split.us ] ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv155 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !104  ; 2 uses
  %i.s = getelementptr i8, ptr %i.q, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !104  ; 2 uses
  %i.u = sext i32 %i.t to i64                     ; 3 uses
  %i.v = icmp slt i32 %i.r, %i.t
  br i1 %i.v, label %.lr.ph.us.us.preheader, label %._crit_edge.split.us.us.us

.lr.ph.us.us.preheader:                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us
  %i.w = sext i32 %i.r to i64                     ; 5 uses
  %i.x = sub nsw i64 %i.u, %i.w
  %xtraiter198.a = and i64 %i.x, 1
  %lcmp.mod199.not.a = icmp eq i64 %xtraiter198.a, 0
  br i1 %lcmp.mod199.not.a, label %.lr.ph.us.us.prol.loopexit, label %.lr.ph.us.us.prol

.lr.ph.us.us.prol:                                ; preds = %.lr.ph.us.us.preheader
  %i.y = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.w
  %i.z = load i32, ptr %i.y, align 4, !tbaa !104
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = icmp sgt i64 %indvars.iv155, %i.aa
  br i1 %i.ab, label %.lr.ph.us.us.prol.loopexit.unr-lcssa, label %bb.c

bb.c:                                             ; preds = %.lr.ph.us.us.prol
  %i.ac = getelementptr inbounds [4 x i8], ptr %.sroa.0106.0126, i64 %i.aa ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !104
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !104
  br label %.lr.ph.us.us.prol.loopexit.unr-lcssa

.lr.ph.us.us.prol.loopexit.unr-lcssa:             ; preds = %bb.c, %.lr.ph.us.us.prol
  %i.af = add nsw i64 %i.w, 1
  br label %.lr.ph.us.us.prol.loopexit

.lr.ph.us.us.prol.loopexit:                       ; preds = %.lr.ph.us.us.prol.loopexit.unr-lcssa, %.lr.ph.us.us.preheader
  %.sroa.7.0129.us.us.us.unr = phi i64 [ %i.w, %.lr.ph.us.us.preheader ], [ %i.af, %.lr.ph.us.us.prol.loopexit.unr-lcssa ]
  %i.ag = add nsw i64 %i.u, -1
  %i.ah = icmp eq i64 %i.ag, %i.w
  br i1 %i.ah, label %._crit_edge.split.us.us.us, label %.lr.ph.us.us

._crit_edge.split.us.us.us:                       ; preds = %.lr.ph.us.us.prol.loopexit, %bb.f, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond158.not = icmp eq i64 %indvars.iv.next156, %i.b
  br i1 %exitcond158.not, label %._crit_edge133, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us, !llvm.loop !619

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.prol.loopexit, %bb.f
  %.sroa.7.0129.us.us.us = phi i64 [ %i.ax, %bb.f ], [ %.sroa.7.0129.us.us.us.unr, %.lr.ph.us.us.prol.loopexit ] ; 3 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.k, i64 %.sroa.7.0129.us.us.us
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !104
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = icmp sgt i64 %indvars.iv155, %i.ak
  br i1 %i.al, label %.lr.ph.us.us.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.us.us
  %i.am = getelementptr inbounds [4 x i8], ptr %.sroa.0106.0126, i64 %i.ak ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !104
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !104
  br label %.lr.ph.us.us.1

.lr.ph.us.us.1:                                   ; preds = %bb.d, %.lr.ph.us.us
  %i.ap = getelementptr [4 x i8], ptr %i.k, i64 %.sroa.7.0129.us.us.us
  %i.aq = getelementptr i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !104
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = icmp sgt i64 %indvars.iv155, %i.as
  br i1 %i.at, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.us.us.1
  %i.au = getelementptr inbounds [4 x i8], ptr %.sroa.0106.0126, i64 %i.as ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !104
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !104
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.us.us.1
  %i.ax = add nsw i64 %.sroa.7.0129.us.us.us, 2   ; 2 uses
  %exitcond154.not.1 = icmp eq i64 %i.ax, %i.u
  br i1 %exitcond154.not.1, label %._crit_edge.split.us.us.us, label %.lr.ph.us.us, !llvm.loop !620

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us: ; preds = %.lr.ph132.split.us, %._crit_edge.split.us.us
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %._crit_edge.split.us.us ], [ 0, %.lr.ph132.split.us ] ; 4 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv150
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !104
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv150
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !104 ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = add nsw i64 %i.bd, %i.ba
  %i.bf = icmp sgt i32 %i.bc, 0
  br i1 %i.bf, label %.lr.ph.us, label %._crit_edge.split.us.us

._crit_edge.split.us.us:                          ; preds = %bb.h, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next151, %i.b
  br i1 %exitcond153.not, label %._crit_edge133, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us, !llvm.loop !619

.lr.ph.us:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us, %bb.h
  %.sroa.7.0129.us.us = phi i64 [ %i.bn, %bb.h ], [ %i.ba, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us ] ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.k, i64 %.sroa.7.0129.us.us
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !104
  %i.bi = sext i32 %i.bh to i64                   ; 2 uses
  %i.bj = icmp sgt i64 %indvars.iv150, %i.bi
  br i1 %i.bj, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.us
  %i.bk = getelementptr inbounds [4 x i8], ptr %.sroa.0106.0126, i64 %i.bi ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !104
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !104
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.us
  %i.bn = add nsw i64 %.sroa.7.0129.us.us, 1      ; 2 uses
  %i.bo = icmp slt i64 %i.bn, %i.be
  br i1 %i.bo, label %.lr.ph.us, label %._crit_edge.split.us.us, !llvm.loop !620

._crit_edge133:                                   ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %._crit_edge.split.us.us.us
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !145 ; 8 uses
  store i32 0, ptr %i.bq, align 4, !tbaa !104
  %xtraiter200 = and i64 %i.b, 3                  ; 3 uses
  %i.br = icmp ult i64 %i.b, 4
  br i1 %i.br, label %.lr.ph135.epil.preheader, label %._crit_edge133.new

._crit_edge133.new:                               ; preds = %._crit_edge133
  %unroll_iter = and i64 %i.b, 9223372036854775804
  br label %.lr.ph135

.body:                                            ; preds = %._crit_edge, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  %i.bs = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef %.sroa.0106.0126) #33
  resume { ptr, i32 } %i.bs

.lr.ph132.split:                                  ; preds = %.lr.ph132, %._crit_edge.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.split ], [ 0, %.lr.ph132 ] ; 7 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !104 ; 3 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !104
  %i.bx = sext i32 %i.bw to i64                   ; 7 uses
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph132.split
  %i.by = getelementptr i8, ptr %i.bv, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !104
  %i.ca = sext i32 %i.bz to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.j:                                             ; preds = %.lr.ph132.split
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !104
  %i.cd = sext i32 %i.cc to i64
  %i.ce = add nsw i64 %i.cd, %i.bx
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.i, %bb.j
  %.sink.i = phi i64 [ %i.ca, %bb.i ], [ %i.ce, %bb.j ] ; 4 uses
  %i.cf = icmp sgt i64 %.sink.i, %i.bx
  br i1 %i.cf, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.cg = sub nsw i64 %.sink.i, %i.bx
  %.neg = add nsw i64 %i.bx, 1
  %xtraiter = and i64 %i.cg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bx
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !104
  %i.cj = sext i32 %i.ci to i64                   ; 2 uses
  %i.ck = icmp sgt i64 %indvars.iv, %i.cj
  br i1 %i.ck, label %.lr.ph.prol.loopexit.unr-lcssa, label %bb.k

bb.k:                                             ; preds = %.lr.ph.prol
  %i.cl = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cj
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !104
  %.sroa.speculated97.prol = tail call i32 @llvm.smax.i32(i32 %i.cm, i32 %i.bu)
  %i.cn = sext i32 %.sroa.speculated97.prol to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %.sroa.0106.0126, i64 %i.cn ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !104
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !104
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.k, %.lr.ph.prol
  %i.cr = add nsw i64 %i.bx, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.7.0129.unr = phi i64 [ %i.bx, %.lr.ph.preheader ], [ %i.cr, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.cs = icmp eq i64 %.sink.i, %.neg
  br i1 %i.cs, label %._crit_edge.split, label %.lr.ph

._crit_edge.split:                                ; preds = %.lr.ph.prol.loopexit, %bb.n, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond149.not, label %._crit_edge133, label %.lr.ph132.split, !llvm.loop !619

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.n
  %.sroa.7.0129 = phi i64 [ %i.do, %bb.n ], [ %.sroa.7.0129.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.k, i64 %.sroa.7.0129
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !104
  %i.cv = sext i32 %i.cu to i64                   ; 2 uses
  %i.cw = icmp sgt i64 %indvars.iv, %i.cv
  br i1 %i.cw, label %.lr.ph.1, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.cx = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cv
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !104
  %.sroa.speculated97 = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 %i.bu)
  %i.cz = sext i32 %.sroa.speculated97 to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %.sroa.0106.0126, i64 %i.cz ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !104
  %i.dc = add nsw i32 %i.db, 1
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !104
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.l
  %i.dd = getelementptr [4 x i8], ptr %i.k, i64 %.sroa.7.0129
  %i.de = getelementptr i8, ptr %i.dd, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !104
  %i.dg = sext i32 %i.df to i64                   ; 2 uses
  %i.dh = icmp sgt i64 %indvars.iv, %i.dg
  br i1 %i.dh, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.1
  %i.di = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dg
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !104
  %.sroa.speculated97.1 = tail call i32 @llvm.smax.i32(i32 %i.dj, i32 %i.bu)
  %i.dk = sext i32 %.sroa.speculated97.1 to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %.sroa.0106.0126, i64 %i.dk ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !104
  %i.dn = add nsw i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !104
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.1
  %i.do = add nsw i64 %.sroa.7.0129, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.do, %.sink.i
  br i1 %exitcond.not.1, label %._crit_edge.split, label %.lr.ph, !llvm.loop !620

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph135
  %lcmp.mod201.not = icmp eq i64 %xtraiter200, 0
  br i1 %lcmp.mod201.not, label %._crit_edge, label %.lr.ph135.epil.preheader

.lr.ph135.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %._crit_edge133
  %.epil.init = phi i32 [ 0, %._crit_edge133 ], [ %i.et, %._crit_edge.loopexit.unr-lcssa ]
  %.053134.epil.init = phi i64 [ 0, %._crit_edge133 ], [ %i.eu, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod202 = icmp ne i64 %xtraiter200, 0
  tail call void @llvm.assume(i1 %lcmp.mod202)
  br label %.lr.ph135.epil

.lr.ph135.epil:                                   ; preds = %.lr.ph135.epil, %.lr.ph135.epil.preheader
  %i.dp = phi i32 [ %i.ds, %.lr.ph135.epil ], [ %.epil.init, %.lr.ph135.epil.preheader ]
  %.053134.epil = phi i64 [ %i.dt, %.lr.ph135.epil ], [ %.053134.epil.init, %.lr.ph135.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph135.epil ], [ 0, %.lr.ph135.epil.preheader ]
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0126, i64 %.053134.epil
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !104
  %i.ds = add nsw i32 %i.dr, %i.dp                ; 2 uses
  %i.dt = add nuw nsw i64 %.053134.epil, 1        ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.dt
  store i32 %i.ds, ptr %i.du, align 4, !tbaa !104
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter200
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph135.epil, !llvm.loop !621

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph135.epil, %._crit_edge133.thread
  %i.dv = phi ptr [ %i.i, %._crit_edge133.thread ], [ %i.bq, %.lr.ph135.epil ], [ %i.bq, %._crit_edge.loopexit.unr-lcssa ]
  %i.dw = phi ptr [ %i.h, %._crit_edge133.thread ], [ %i.bp, %.lr.ph135.epil ], [ %i.bp, %._crit_edge.loopexit.unr-lcssa ]
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.b
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !104
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, i64 noundef %i.dz, double noundef 0.000000e+00)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiE14resizeNonZerosEl.exit.preheader unwind label %.body

_ZN5Eigen12SparseMatrixIdLi0EiE14resizeNonZerosEl.exit.preheader: ; preds = %._crit_edge
  br i1 %i.c, label %.lr.ph143, label %._crit_edge144

.lr.ph135:                                        ; preds = %.lr.ph135, %._crit_edge133.new
  %i.eb = phi i32 [ 0, %._crit_edge133.new ], [ %i.et, %.lr.ph135 ]
  %.053134 = phi i64 [ 0, %._crit_edge133.new ], [ %i.eu, %.lr.ph135 ] ; 5 uses
  %niter = phi i64 [ 0, %._crit_edge133.new ], [ %niter.next.3, %.lr.ph135 ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0126, i64 %.053134
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !104
  %i.ee = add nsw i32 %i.ed, %i.eb                ; 2 uses
  %i.ef = or disjoint i64 %.053134, 1             ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ef
  store i32 %i.ee, ptr %i.eg, align 4, !tbaa !104
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0126, i64 %i.ef
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !104
  %i.ej = add nsw i32 %i.ei, %i.ee                ; 2 uses
  %i.ek = or disjoint i64 %.053134, 2             ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ek
  store i32 %i.ej, ptr %i.el, align 4, !tbaa !104
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0126, i64 %i.ek
  %i.en = load i32, ptr %i.em, align 4, !tbaa !104
  %i.eo = add nsw i32 %i.en, %i.ej                ; 2 uses
  %i.ep = or disjoint i64 %.053134, 3             ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ep
  store i32 %i.eo, ptr %i.eq, align 4, !tbaa !104
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0106.0126, i64 %i.ep
  %i.es = load i32, ptr %i.er, align 4, !tbaa !104
  %i.et = add nsw i32 %i.es, %i.eo                ; 3 uses
  %i.eu = add nuw nsw i64 %.053134, 4             ; 3 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.eu
  store i32 %i.et, ptr %i.ev, align 4, !tbaa !104
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph135, !llvm.loop !622

.lr.ph143:                                        ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE14resizeNonZerosEl.exit.preheader
  %i.ew = load ptr, ptr %i.dw, align 8, !tbaa !145
  %i.ex = shl nuw i64 %i.b, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.sroa.0106.0126, ptr align 4 %i.ew, i64 %i.ex, i1 false), !tbaa !104
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !161 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !162 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !145 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !160 ; 3 uses
  %i.fg = icmp eq ptr %i.ff, null                 ; 2 uses
  %.not = icmp eq ptr %2, null
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  br i1 %.not, label %.lr.ph143.split.us, label %.lr.ph143.split

.lr.ph143.split.us:                               ; preds = %.lr.ph143, %._crit_edge140.split.us.us
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %._crit_edge140.split.us.us ], [ 0, %.lr.ph143 ] ; 5 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv166 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !104
  %i.fk = sext i32 %i.fj to i64                   ; 3 uses
  br i1 %i.fg, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph143.split.us
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv166
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !104
  %i.fn = sext i32 %i.fm to i64
  %i.fo = add nsw i64 %i.fn, %i.fk
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75.us

bb.p:                                             ; preds = %.lr.ph143.split.us
  %i.fp = getelementptr i8, ptr %i.fi, i64 4
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !104
  %i.fr = sext i32 %i.fq to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75.us

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75.us: ; preds = %bb.p, %bb.o
  %.sink.i74.us = phi i64 [ %i.fr, %bb.p ], [ %i.fo, %bb.o ] ; 2 uses
  %i.fs = icmp sgt i64 %.sink.i74.us, %i.fk
  br i1 %i.fs, label %.lr.ph139.us.preheader, label %._crit_edge140.split.us.us

.lr.ph139.us.preheader:                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75.us
  %i.ft = trunc nuw nsw i64 %indvars.iv166 to i32
  br label %.lr.ph139.us

._crit_edge140.split.us.us:                       ; preds = %bb.r, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75.us
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond169.not = icmp eq i64 %indvars.iv.next167, %i.b
  br i1 %exitcond169.not, label %._crit_edge144, label %.lr.ph143.split.us, !llvm.loop !623

.lr.ph139.us:                                     ; preds = %.lr.ph139.us.preheader, %bb.r
  %.sroa.9.0138.us.us = phi i64 [ %i.gi, %bb.r ], [ %i.fk, %.lr.ph139.us.preheader ] ; 3 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %.sroa.9.0138.us.us
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !104
  %i.fw = sext i32 %i.fv to i64                   ; 2 uses
  %i.fx = icmp sgt i64 %indvars.iv166, %i.fw
  br i1 %i.fx, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph139.us
  %i.fy = getelementptr inbounds [4 x i8], ptr %.sroa.0106.0126, i64 %i.fw ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !104 ; 2 uses
  %i.ga = add nsw i32 %i.fz, 1
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !104
  %i.gb = sext i32 %i.fz to i64                   ; 2 uses
  %i.gc = load ptr, ptr %i.fh, align 8, !tbaa !162
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.gb
  store i32 %i.ft, ptr %i.gd, align 4, !tbaa !104
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %.sroa.9.0138.us.us
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !152
  %i.gg = load ptr, ptr %i.ea, align 8, !tbaa !161
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.gb
  store double %i.gf, ptr %i.gh, align 8, !tbaa !152
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph139.us
  %i.gi = add nsw i64 %.sroa.9.0138.us.us, 1      ; 2 uses
  %exitcond165.not = icmp eq i64 %i.gi, %.sink.i74.us
  br i1 %exitcond165.not, label %._crit_edge140.split.us.us, label %.lr.ph139.us, !llvm.loop !624

._crit_edge144:                                   ; preds = %._crit_edge140.split, %._crit_edge140.split.us.us, %_ZN5Eigen12SparseMatrixIdLi0EiE14resizeNonZerosEl.exit.preheader
  tail call void @free(ptr noundef %.sroa.0106.0126) #33
  ret void

.lr.ph143.split:                                  ; preds = %.lr.ph143, %._crit_edge140.split
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %._crit_edge140.split ], [ 0, %.lr.ph143 ] ; 5 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv161 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !104
  %i.gl = sext i32 %i.gk to i64                   ; 3 uses
  br i1 %i.fg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph143.split
  %i.gm = getelementptr i8, ptr %i.gj, i64 4
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !104
  %i.go = sext i32 %i.gn to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75

bb.t:                                             ; preds = %.lr.ph143.split
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv161
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !104
  %i.gr = sext i32 %i.gq to i64
  %i.gs = add nsw i64 %i.gr, %i.gl
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75: ; preds = %bb.s, %bb.t
  %.sink.i74 = phi i64 [ %i.go, %bb.s ], [ %i.gs, %bb.t ] ; 2 uses
  %i.gt = icmp sgt i64 %.sink.i74, %i.gl
  br i1 %i.gt, label %.lr.ph139, label %._crit_edge140.split

.lr.ph139:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv161
  br label %bb.u

._crit_edge140.split:                             ; preds = %bb.w, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit75
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond164.not = icmp eq i64 %indvars.iv.next162, %i.b
  br i1 %exitcond164.not, label %._crit_edge144, label %.lr.ph143.split, !llvm.loop !623

bb.u:                                             ; preds = %.lr.ph139, %bb.w
  %.sroa.9.0138 = phi i64 [ %i.gl, %.lr.ph139 ], [ %i.hn, %bb.w ] ; 3 uses
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %.sroa.9.0138
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !104
  %i.gx = sext i32 %i.gw to i64                   ; 2 uses
  %i.gy = icmp sgt i64 %indvars.iv161, %i.gx
  br i1 %i.gy, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gz = load i32, ptr %i.gu, align 4, !tbaa !104 ; 2 uses
  %i.ha = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gx
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !104 ; 2 uses
  %.sroa.speculated82 = tail call i32 @llvm.smax.i32(i32 %i.hb, i32 %i.gz)
  %i.hc = sext i32 %.sroa.speculated82 to i64
  %i.hd = getelementptr inbounds [4 x i8], ptr %.sroa.0106.0126, i64 %i.hc ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !104 ; 2 uses
  %i.hf = add nsw i32 %i.he, 1
  store i32 %i.hf, ptr %i.hd, align 4, !tbaa !104
  %i.hg = sext i32 %i.he to i64                   ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.gz, i32 %i.hb)
  %i.hh = load ptr, ptr %i.fh, align 8, !tbaa !162
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.hg
  store i32 %.sroa.speculated, ptr %i.hi, align 4, !tbaa !104
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %.sroa.9.0138
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !152
  %i.hl = load ptr, ptr %i.ea, align 8, !tbaa !161
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.hl, i64 %i.hg
  store double %i.hk, ptr %i.hm, align 8, !tbaa !152
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.hn = add nsw i64 %.sroa.9.0138, 1            ; 2 uses
  %exitcond160.not = icmp eq i64 %i.hn, %.sink.i74
  br i1 %exitcond160.not, label %._crit_edge140.split, label %bb.u, !llvm.loop !624
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE7computeILb1EEEvRKS3_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::SparseMatrix", align 8 ; 13 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store i8 0, ptr %2, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, i8 0, i64 64, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.c, ptr %i.e, align 8, !tbaa !89
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.g = shl i64 %i.c, 2
  %i.h = add i64 %i.g, 4
  %calloc = tail call ptr @calloc(i64 1, i64 %i.h) ; 2 uses
  store ptr %calloc, ptr %i.f, align 8, !tbaa !145
  %.not6.i = icmp eq ptr %calloc, null
  br i1 %.not6.i, label %bb.b, label %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ell.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !113
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.w, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.k) #33
  br label %common.resume

_ZN5Eigen12SparseMatrixIdLi0EiEC2Ell.exit:        ; preds = %bb.a
  store i64 %i.c, ptr %i.d, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  invoke void @_ZN5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE8orderingERKS3_RPS8_RS3_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ell.exit
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !87
  invoke void @_ZN5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE25analyzePattern_preorderedERKS3_b(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.m, i1 noundef zeroext true)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !87
  invoke void @_ZN5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE20factorize_preorderedILb1EEEvRKS3_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.n)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !145
  call void @free(ptr noundef %i.o) #33
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !160
  call void @free(ptr noundef %i.p) #33
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !161  ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.r) #34
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !162  ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.u) #34
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.j:                                             ; preds = %bb.e, %bb.d, %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ell.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE8orderingERKS3_RPS8_RS3_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::SparseMatrix", align 8 ; 14 uses
  %5 = alloca %"class.Eigen::AMDOrdering", align 1 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  store ptr %3, ptr %2, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store i8 0, ptr %4, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 -1, ptr %i.c, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, i8 0, i64 56, i1 false)
  %i.f = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #35 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !145
  %.not6.i = icmp eq ptr %i.f, null
  br i1 %.not6.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.g, align 8, !tbaa !113
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.c ], [ %.pn, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.i) #33
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %i.c, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 0, ptr %i.f, align 4
  invoke void @_ZN5Eigen8internal24permute_symm_to_fullsymmILi1ENS_12SparseMatrixIdLi0EiEELi0EEEvRKT0_RNS2_INS4_6ScalarEXT1_ENS4_12StorageIndexEEEPKS8_(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef null)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_21SparseSelfAdjointViewIKS1_Lj1EEEEERS1_RKNS_9EigenBaseIT_EE.exit unwind label %bb.l

_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_21SparseSelfAdjointViewIKS1_Lj1EEEEERS1_RKNS_9EigenBaseIT_EE.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  invoke void @_ZN5Eigen11AMDOrderingIiEclINS_12SparseMatrixIdLi0EiEEEEvRKT_RNS_17PermutationMatrixILin1ELin1EiEE(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_21SparseSelfAdjointViewIKS1_Lj1EEEEERS1_RKNS_9EigenBaseIT_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !145
  call void @free(ptr noundef %i.l) #33
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !160
  call void @free(ptr noundef %i.m) #33
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !161  ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.o) #34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !162  ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.r) #34
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.g, %bb.h
end_hunk_0
