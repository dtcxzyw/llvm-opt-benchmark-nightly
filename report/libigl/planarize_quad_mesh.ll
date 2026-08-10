inline.NumInlined: 17087
inline.NumDeleted: 8655
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 204
begin_hunk_0_@_ZN5Eigen8internalL39conservative_sparse_sparse_product_implINS_12SparseMatrixIdLi0ElEENS2_IdLi0EiEES3_EEvRKT_RKT0_RT1_b:bb.a
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !140
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
          to label %.noexc142 unwind label %.split226

.noexc142:                                        ; preds = %bb.f
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit143:     ; preds = %bb.e
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.t) #30 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit143
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aa, align 8, !tbaa !140
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
          to label %.noexc147 unwind label %.split230

.noexc147:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit143, %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread
  %i.ab = phi i1 [ false, %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread ], [ true, %_ZN5Eigen8internal14aligned_mallocEm.exit143 ] ; 2 uses
  %i.ac = phi ptr [ %i.q, %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread ], [ %i.v, %_ZN5Eigen8internal14aligned_mallocEm.exit143 ] ; 7 uses
  %i.ad = phi ptr [ %i.m, %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread ], [ %i.u, %_ZN5Eigen8internal14aligned_mallocEm.exit143 ] ; 7 uses
  %i.ae = phi ptr [ %i.s, %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread ], [ %i.y, %_ZN5Eigen8internal14aligned_mallocEm.exit143 ] ; 8 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ad, i8 0, i64 %i.b, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !244 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !232 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !233
  %i.am = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !150
  %i.ao = load i64, ptr %i.aj, align 8, !tbaa !150
  %i.ap = sub nsw i64 %i.an, %i.ao
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0ElEEEEE16nonZerosEstimateEv.exit

bb.j:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !233 ; 5 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0ElEEEEE16nonZerosEstimateEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load i64, ptr %i.ag, align 8, !tbaa !150 ; 3 uses
  %i.au = icmp sgt i64 %i.ar, 1
  br i1 %i.au, label %.lr.ph.i.i.i.i.i.preheader, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0ElEEEEE16nonZerosEstimateEv.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.k
  %i.av = add nsw i64 %i.ar, -1                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader401, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.av, -4                      ; 3 uses
  %i.aw = or disjoint i64 %n.vec, 1
  %i.ax = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.at, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ax, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi332 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %i.ay = getelementptr [8 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %i.ba = getelementptr i8, ptr %i.ay, i64 24
  %wide.load = load <2 x i64>, ptr %i.az, align 8, !tbaa !150
  %wide.load333 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !150
  %i.bb = add <2 x i64> %wide.load, %vec.phi      ; 2 uses
  %i.bc = add <2 x i64> %wide.load333, %vec.phi332 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !279

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bc, %i.bb
  %i.be = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0ElEEEEE16nonZerosEstimateEv.exit, label %.lr.ph.i.i.i.i.i.preheader401

.lr.ph.i.i.i.i.i.preheader401:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.01724.i.i.i.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  %.02223.i.i.i.i.i.ph = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader401, %.lr.ph.i.i.i.i.i
  %.01724.i.i.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i ], [ %.01724.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader401 ] ; 2 uses
  %.02223.i.i.i.i.i = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i ], [ %.02223.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader401 ]
  %i.bf = getelementptr [8 x i8], ptr %i.ag, i64 %.01724.i.i.i.i.i
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !150
  %i.bh = add nsw i64 %i.bg, %.02223.i.i.i.i.i    ; 2 uses
  %i.bi = add nuw nsw i64 %.01724.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.bi, %i.ar
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0ElEEEEE16nonZerosEstimateEv.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !280

_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0ElEEEEE16nonZerosEstimateEv.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %bb.k, %bb.j, %bb.i
  %.0.i.i = phi i64 [ %i.ap, %bb.i ], [ 0, %bb.j ], [ %i.at, %bb.k ], [ %i.be, %middle.block ], [ %i.bh, %.lr.ph.i.i.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !136 ; 13 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0ElEEEEE16nonZerosEstimateEv.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !135 ; 2 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.d
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !154
  %i.bq = load i32, ptr %i.bn, align 4, !tbaa !154
  %i.br = sub nsw i32 %i.bp, %i.bq
  %i.bs = sext i32 %i.br to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit

bb.m:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0ElEEEEE16nonZerosEstimateEv.exit
  %i.bt = icmp eq i64 %i.d, 0
  br i1 %i.bt, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bv = and i64 %i.bu, 3
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.o, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bw = lshr exact i64 %i.bu, 2
  %i.bx = sub nsw i64 0, %i.bw
  %i.by = and i64 %i.bx, 3
  %i.bz = tail call i64 @llvm.smin.i64(i64 %i.by, i64 %i.d)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bz, %bb.o ], [ %i.d, %bb.n ] ; 12 uses
  %i.ca = sub nsw i64 %i.d, %.0.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.cb = sdiv i64 %i.ca, 8
  %i.cc = shl nsw i64 %i.cb, 3                    ; 2 uses
  %i.cd = sdiv i64 %i.ca, 4                       ; 2 uses
  %i.ce = shl nsw i64 %i.cd, 2                    ; 2 uses
  %i.cf = add nsw i64 %i.cc, %.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cg = add nsw i64 %i.ce, %.0.i.i.i.i.i.i.i.i.i ; 4 uses
  %.off.i.i.i.i.i = add i64 %i.ca, 3
  %.not.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i, 7
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i
  %i.ch = getelementptr [4 x i8], ptr %i.bk, i64 %.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ci = load <2 x i64>, ptr %i.ch, align 1, !tbaa !81 ; 2 uses
  %i.cj = icmp sgt i64 %i.ca, 7
  br i1 %i.cj, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ck = getelementptr i8, ptr %i.ch, i64 16
  %i.cl = load <4 x i32>, ptr %i.ck, align 1, !tbaa !81 ; 2 uses
  %i.cm = bitcast <2 x i64> %i.ci to <4 x i32>    ; 2 uses
  %i.cn = icmp samesign ugt i64 %i.ca, 15
  br i1 %i.cn, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.q
  %.05777.i.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i.i151

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i151, %bb.q
  %.lcssa.i.i.i.i.i = phi <4 x i32> [ %i.cl, %bb.q ], [ %i.cy, %.lr.ph.i.i.i.i.i151 ]
  %.sroa.067.0.lcssa.i.i.i.i.i = phi <4 x i32> [ %i.cm, %bb.q ], [ %i.cu, %.lr.ph.i.i.i.i.i151 ]
  %i.co = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i.i, %.lcssa.i.i.i.i.i ; 2 uses
  %i.cp = bitcast <4 x i32> %i.co to <2 x i64>
  %i.cq = icmp sgt i64 %i.ce, %i.cc
  br i1 %i.cq, label %bb.r, label %bb.s

.lr.ph.i.i.i.i.i151:                              ; preds = %.lr.ph.i.i.i.i.i151, %.lr.ph.preheader.i.i.i.i.i
  %.05780.i.i.i.i.i = phi i64 [ %.057.i.i.i.i.i, %.lr.ph.i.i.i.i.i151 ], [ %.05777.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i.i = phi i64 [ %.05780.i.i.i.i.i, %.lr.ph.i.i.i.i.i151 ], [ %.0.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ]
  %.sroa.067.078.i.i.i.i.i = phi <4 x i32> [ %i.cu, %.lr.ph.i.i.i.i.i151 ], [ %i.cm, %.lr.ph.preheader.i.i.i.i.i ]
  %i.cr = phi <4 x i32> [ %i.cy, %.lr.ph.i.i.i.i.i151 ], [ %i.cl, %.lr.ph.preheader.i.i.i.i.i ]
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %.05780.i.i.i.i.i
  %i.ct = load <4 x i32>, ptr %i.cs, align 1, !tbaa !81
  %i.cu = add <4 x i32> %i.ct, %.sroa.067.078.i.i.i.i.i ; 2 uses
  %i.cv = getelementptr [4 x i8], ptr %i.bk, i64 %.057.in79.i.i.i.i.i
  %i.cw = getelementptr i8, ptr %i.cv, i64 48
  %i.cx = load <4 x i32>, ptr %i.cw, align 1, !tbaa !81
  %i.cy = add <4 x i32> %i.cx, %i.cr              ; 2 uses
  %.057.i.i.i.i.i = add nsw i64 %.05780.i.i.i.i.i, 8 ; 2 uses
  %i.cz = icmp slt i64 %.057.i.i.i.i.i, %i.cf
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i151, label %._crit_edge.i.i.i.i.i, !llvm.loop !281

bb.r:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.da = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.cf
  %i.db = load <4 x i32>, ptr %i.da, align 1, !tbaa !81
  %i.dc = add <4 x i32> %i.db, %i.co
  %i.dd = bitcast <4 x i32> %i.dc to <2 x i64>
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i.i.i.i, %bb.p
  %.sroa.067.2.i.i.i.i.i = phi <2 x i64> [ %i.ci, %bb.p ], [ %i.dd, %bb.r ], [ %i.cp, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.de = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i to <4 x i32>
  %i.df = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i to <4 x i32> ; 2 uses
  %i.dg = shufflevector <4 x i32> %i.df, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.dh = add <4 x i32> %i.dg, %i.de              ; 2 uses
  %shift = shufflevector <4 x i32> %i.dh, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.dh, %shift
  %4 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.df) ; 2 uses
  %i.di = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.di, label %.lr.ph85.i.i.i.i.i.preheader, label %.preheader.i.i.i.i.i

.lr.ph85.i.i.i.i.i.preheader:                     ; preds = %bb.s
  %min.iters.check335 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check335, label %.lr.ph85.i.i.i.i.i.preheader395, label %vector.ph336

vector.ph336:                                     ; preds = %.lr.ph85.i.i.i.i.i.preheader
  %n.vec337 = and i64 %.0.i.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.dj = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body338

vector.body338:                                   ; preds = %vector.body338, %vector.ph336
  %index339 = phi i64 [ 0, %vector.ph336 ], [ %index.next344, %vector.body338 ] ; 2 uses
  %vec.phi340 = phi <4 x i32> [ %i.dj, %vector.ph336 ], [ %i.dm, %vector.body338 ]
  %vec.phi341 = phi <4 x i32> [ zeroinitializer, %vector.ph336 ], [ %i.dn, %vector.body338 ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %index339 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load342 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !154
  %wide.load343 = load <4 x i32>, ptr %i.dl, align 4, !tbaa !154
  %i.dm = add <4 x i32> %wide.load342, %vec.phi340 ; 2 uses
  %i.dn = add <4 x i32> %wide.load343, %vec.phi341 ; 2 uses
  %index.next344 = add nuw i64 %index339, 8       ; 2 uses
  %i.do = icmp eq i64 %index.next344, %n.vec337
  br i1 %i.do, label %middle.block345, label %vector.body338, !llvm.loop !282

middle.block345:                                  ; preds = %vector.body338
  %bin.rdx346 = add <4 x i32> %i.dn, %i.dm
  %i.dp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx346) ; 2 uses
  %cmp.n347 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i, %n.vec337
  br i1 %cmp.n347, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.preheader395

.lr.ph85.i.i.i.i.i.preheader395:                  ; preds = %.lr.ph85.i.i.i.i.i.preheader, %middle.block345
  %.05683.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.i.preheader ], [ %n.vec337, %middle.block345 ]
  %.07582.i.i.i.i.i.ph = phi i32 [ %4, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.dp, %middle.block345 ]
  br label %.lr.ph85.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph85.i.i.i.i.i, %middle.block345, %bb.s
  %.075.lcssa.i.i.i.i.i = phi i32 [ %4, %bb.s ], [ %i.dp, %middle.block345 ], [ %i.ef, %.lr.ph85.i.i.i.i.i ] ; 3 uses
  %i.dq = icmp slt i64 %i.cg, %i.d
  br i1 %i.dq, label %.lr.ph89.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i

.lr.ph89.i.i.i.i.i.preheader:                     ; preds = %.preheader.i.i.i.i.i
  %i.dr = shl nsw i64 %i.cd, 2
  %i.ds = add i64 %.0.i.i.i.i.i.i.i.i.i, %i.dr
  %i.dt = sub i64 %i.d, %i.ds                     ; 3 uses
  %min.iters.check351 = icmp ult i64 %i.dt, 8
  br i1 %min.iters.check351, label %.lr.ph89.i.i.i.i.i.preheader390, label %vector.ph352

vector.ph352:                                     ; preds = %.lr.ph89.i.i.i.i.i.preheader
  %n.vec353 = and i64 %i.dt, -8                   ; 3 uses
  %i.du = add i64 %i.cg, %n.vec353
  %i.dv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i.i, i64 0
  %i.dw = getelementptr [4 x i8], ptr %i.bk, i64 %i.cg
  br label %vector.body354

vector.body354:                                   ; preds = %vector.body354, %vector.ph352
  %index355 = phi i64 [ 0, %vector.ph352 ], [ %index.next360, %vector.body354 ] ; 2 uses
  %vec.phi356 = phi <4 x i32> [ %i.dv, %vector.ph352 ], [ %i.dz, %vector.body354 ]
  %vec.phi357 = phi <4 x i32> [ zeroinitializer, %vector.ph352 ], [ %i.ea, %vector.body354 ]
  %i.dx = getelementptr [4 x i8], ptr %i.dw, i64 %index355 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load358 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !154
  %wide.load359 = load <4 x i32>, ptr %i.dy, align 4, !tbaa !154
  %i.dz = add <4 x i32> %wide.load358, %vec.phi356 ; 2 uses
  %i.ea = add <4 x i32> %wide.load359, %vec.phi357 ; 2 uses
  %index.next360 = add nuw i64 %index355, 8       ; 2 uses
  %i.eb = icmp eq i64 %index.next360, %n.vec353
  br i1 %i.eb, label %middle.block361, label %vector.body354, !llvm.loop !283

middle.block361:                                  ; preds = %vector.body354
  %bin.rdx362 = add <4 x i32> %i.ea, %i.dz
  %i.ec = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx362) ; 2 uses
  %cmp.n363 = icmp eq i64 %i.dt, %n.vec353
  br i1 %cmp.n363, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph89.i.i.i.i.i.preheader390

.lr.ph89.i.i.i.i.i.preheader390:                  ; preds = %.lr.ph89.i.i.i.i.i.preheader, %middle.block361
  %.05588.i.i.i.i.i.ph = phi i64 [ %i.cg, %.lr.ph89.i.i.i.i.i.preheader ], [ %i.du, %middle.block361 ]
  %.187.i.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i.i, %.lr.ph89.i.i.i.i.i.preheader ], [ %i.ec, %middle.block361 ]
  br label %.lr.ph89.i.i.i.i.i

.lr.ph85.i.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i.i.preheader395, %.lr.ph85.i.i.i.i.i
  %.05683.i.i.i.i.i = phi i64 [ %i.eg, %.lr.ph85.i.i.i.i.i ], [ %.05683.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.preheader395 ] ; 2 uses
  %.07582.i.i.i.i.i = phi i32 [ %i.ef, %.lr.ph85.i.i.i.i.i ], [ %.07582.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.preheader395 ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.05683.i.i.i.i.i
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !154
  %i.ef = add nsw i32 %i.ee, %.07582.i.i.i.i.i    ; 2 uses
  %i.eg = add nuw nsw i64 %.05683.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i150 = icmp eq i64 %i.eg, %.0.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i150, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i, !llvm.loop !284

.lr.ph89.i.i.i.i.i:                               ; preds = %.lr.ph89.i.i.i.i.i.preheader390, %.lr.ph89.i.i.i.i.i
  %.05588.i.i.i.i.i = phi i64 [ %i.ek, %.lr.ph89.i.i.i.i.i ], [ %.05588.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader390 ] ; 2 uses
  %.187.i.i.i.i.i = phi i32 [ %i.ej, %.lr.ph89.i.i.i.i.i ], [ %.187.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader390 ]
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %.05588.i.i.i.i.i
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !154
  %i.ej = add nsw i32 %i.ei, %.187.i.i.i.i.i      ; 2 uses
  %i.ek = add nsw i64 %.05588.i.i.i.i.i, 1        ; 2 uses
  %i.el = icmp slt i64 %i.ek, %i.d
  br i1 %i.el, label %.lr.ph89.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, !llvm.loop !285

bb.t:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i
  %i.em = load i32, ptr %i.bk, align 4, !tbaa !154 ; 3 uses
  %i.en = icmp sgt i64 %i.d, 1
  br i1 %i.en, label %.lr.ph94.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i

.lr.ph94.i.i.i.i.i.preheader:                     ; preds = %bb.t
  %i.eo = add nsw i64 %i.d, -1                    ; 2 uses
  %min.iters.check367 = icmp ult i64 %i.d, 9
  br i1 %min.iters.check367, label %.lr.ph94.i.i.i.i.i.preheader386, label %vector.ph368

vector.ph368:                                     ; preds = %.lr.ph94.i.i.i.i.i.preheader
  %n.vec369 = and i64 %i.eo, -8                   ; 3 uses
  %i.ep = or disjoint i64 %n.vec369, 1
  %i.eq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.em, i64 0
  br label %vector.body370

vector.body370:                                   ; preds = %vector.body370, %vector.ph368
  %index371 = phi i64 [ 0, %vector.ph368 ], [ %index.next376, %vector.body370 ] ; 2 uses
  %vec.phi372 = phi <4 x i32> [ %i.eq, %vector.ph368 ], [ %i.eu, %vector.body370 ]
  %vec.phi373 = phi <4 x i32> [ zeroinitializer, %vector.ph368 ], [ %i.ev, %vector.body370 ]
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %index371 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 20
  %wide.load374 = load <4 x i32>, ptr %i.es, align 4, !tbaa !154
  %wide.load375 = load <4 x i32>, ptr %i.et, align 4, !tbaa !154
  %i.eu = add <4 x i32> %wide.load374, %vec.phi372 ; 2 uses
  %i.ev = add <4 x i32> %wide.load375, %vec.phi373 ; 2 uses
  %index.next376 = add nuw i64 %index371, 8       ; 2 uses
  %i.ew = icmp eq i64 %index.next376, %n.vec369
  br i1 %i.ew, label %middle.block377, label %vector.body370, !llvm.loop !286

middle.block377:                                  ; preds = %vector.body370
  %bin.rdx378 = add <4 x i32> %i.ev, %i.eu
  %i.ex = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx378) ; 2 uses
  %cmp.n379 = icmp eq i64 %i.eo, %n.vec369
  br i1 %cmp.n379, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i.preheader386

.lr.ph94.i.i.i.i.i.preheader386:                  ; preds = %.lr.ph94.i.i.i.i.i.preheader, %middle.block377
  %.092.i.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.i.preheader ], [ %i.ep, %middle.block377 ]
  %.291.i.i.i.i.i.ph = phi i32 [ %i.em, %.lr.ph94.i.i.i.i.i.preheader ], [ %i.ex, %middle.block377 ]
  br label %.lr.ph94.i.i.i.i.i

.lr.ph94.i.i.i.i.i:                               ; preds = %.lr.ph94.i.i.i.i.i.preheader386, %.lr.ph94.i.i.i.i.i
  %.092.i.i.i.i.i = phi i64 [ %i.fb, %.lr.ph94.i.i.i.i.i ], [ %.092.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.preheader386 ] ; 2 uses
  %.291.i.i.i.i.i = phi i32 [ %i.fa, %.lr.ph94.i.i.i.i.i ], [ %.291.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.preheader386 ]
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.092.i.i.i.i.i
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !154
  %i.fa = add nsw i32 %i.ez, %.291.i.i.i.i.i      ; 2 uses
  %i.fb = add nuw nsw i64 %.092.i.i.i.i.i, 1      ; 2 uses
  %exitcond102.not.i.i.i.i.i = icmp eq i64 %i.fb, %i.d
  br i1 %exitcond102.not.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i, !llvm.loop !287

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i: ; preds = %.lr.ph89.i.i.i.i.i, %.lr.ph94.i.i.i.i.i, %middle.block361, %middle.block377, %bb.t, %.preheader.i.i.i.i.i
  %.0.i.i.i = phi i32 [ %i.fa, %.lr.ph94.i.i.i.i.i ], [ %.075.lcssa.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.em, %bb.t ], [ %i.ex, %middle.block377 ], [ %i.ec, %middle.block361 ], [ %i.ej, %.lr.ph89.i.i.i.i.i ]
  %i.fc = sext i32 %.0.i.i.i to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit

_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, %bb.m, %bb.l
  %.0.i.i149 = phi i64 [ %i.bs, %bb.l ], [ %i.fc, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i ], [ 0, %bb.m ]
  %i.fd = add nsw i64 %.0.i.i149, %.0.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 7 uses
  store i64 0, ptr %i.fe, align 8, !tbaa !256
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !232
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !233
  %i.fj = shl i64 %i.fi, 3
  %i.fk = add i64 %i.fj, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fg, i8 0, i64 %i.fk, i1 false)
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !244 ; 2 uses
  %.not.i = icmp eq ptr %i.fm, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi0ElE7setZeroEv.exit, label %bb.u

bb.u:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit
  %i.fn = load i64, ptr %i.fh, align 8, !tbaa !233
  %i.fo = shl i64 %i.fn, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fm, i8 0, i64 %i.fo, i1 false)
  br label %_ZN5Eigen12SparseMatrixIdLi0ElE7setZeroEv.exit

_ZN5Eigen12SparseMatrixIdLi0ElE7setZeroEv.exit:   ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit, %bb.u
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 9 uses
  invoke void @_ZN5Eigen8internal17CompressedStorageIdlE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.fp, i64 noundef %i.fd)
          to label %_ZN5Eigen12SparseMatrixIdLi0ElE7reserveEl.exit.preheader unwind label %bb.y

_ZN5Eigen12SparseMatrixIdLi0ElE7reserveEl.exit.preheader: ; preds = %_ZN5Eigen12SparseMatrixIdLi0ElE7setZeroEv.exit
  %i.fq = icmp sgt i64 %i.d, 0
  br i1 %i.fq, label %.lr.ph265, label %_ZN5Eigen12SparseMatrixIdLi0ElE7reserveEl.exit._crit_edge

.lr.ph265:                                        ; preds = %_ZN5Eigen12SparseMatrixIdLi0ElE7reserveEl.exit.preheader
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 9 uses
  %i.fy = udiv i64 %i.b, 11
end_hunk_0
begin_hunk_1_@_ZN5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE20factorize_preorderedILb1EEEvRKS3_:bb.a
_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161: ; preds = %bb.o, %bb.x, %bb.n
  %.pn136.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.n ], [ %i.bh, %bb.o ], [ %.pn136.pn.pn.pn.pn.pn187, %bb.x ]
  br i1 %i.u, label %bb.y, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit162

bb.y:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161
  call void @free(ptr noundef nonnull %i.t) #27
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit162

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit162: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161, %bb.y
  resume { ptr, i32 } %.pn136.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen11AMDOrderingIiEclINS_12SparseMatrixIdLi0EiEEEEvRKT_RNS_17PermutationMatrixILin1ELin1EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::SparseMatrix", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store i8 0, ptr %3, align 8, !tbaa !50
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 -1, ptr %i.a, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  %i.d = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #30 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !135
  %.not6.i = icmp eq ptr %i.d, null
  br i1 %.not6.i, label %bb.b, label %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !140
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.q, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #27
  br label %common.resume

_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit:         ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.d, align 4
  invoke void @_ZN5Eigen8internal25ordering_helper_at_plus_aINS_12SparseMatrixIdLi0EiEEEEvRKT_RS4_(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit
  invoke void @_ZN5Eigen8internal23minimum_degree_orderingIdiEEvRNS_12SparseMatrixIT_Li0ET0_EERNS_17PermutationMatrixILin1ELin1ES4_EE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !135
  call void @free(ptr noundef %i.i) #27
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !136
  call void @free(ptr noundef %i.j) #27
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !137  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.l) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !138  ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.o) #29
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.i:                                             ; preds = %bb.d, %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal24permute_symm_to_fullsymmILi1ENS_12SparseMatrixIdLi0EiEELi0EEEvRKT0_RNS2_INS4_6ScalarEXT1_ENS4_12StorageIndexEEEPKS8_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !168  ; 25 uses
  %.not.i.i.not = icmp eq i64 %i.b, 0
  %i.c = icmp sgt i64 %i.b, 0                     ; 3 uses
  br i1 %i.c, label %bb.b, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ugt i64 %i.b, 4611686018427387903
  br i1 %i.d, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.b
  %i.e = shl nuw i64 %i.b, 2
  %calloc = tail call ptr @calloc(i64 1, i64 %i.e) ; 2 uses
  %i.f = icmp eq ptr %calloc, null
  br i1 %i.f, label %.invoke, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.g, align 8, !tbaa !140
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
          to label %.cont unwind label %bb.h

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.a
  %.sroa.0126.2144 = phi ptr [ null, %bb.a ], [ %calloc, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ] ; 30 uses
  invoke void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.b, i64 noundef %i.b)
          to label %.preheader147 unwind label %bb.h

.preheader147:                                    ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  br i1 %i.c, label %.lr.ph154, label %._crit_edge155

.lr.ph154:                                        ; preds = %.preheader147
  %.not102 = icmp eq ptr %2, null                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !138  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !135
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !136  ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br label %bb.i

._crit_edge155:                                   ; preds = %.preheader147
  br i1 %.not.i.i.not, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %._crit_edge155.thread

._crit_edge155.thread:                            ; preds = %._crit_edge, %._crit_edge155
  %i.o = sdiv i64 %i.b, 8
  %i.p = shl nsw i64 %i.o, 3                      ; 3 uses
  %i.q = sdiv i64 %i.b, 4                         ; 2 uses
  %i.r = shl nsw i64 %i.q, 2                      ; 5 uses
  %.off.i.i.i = add i64 %i.b, 3
  %.not.i.i.i = icmp ult i64 %.off.i.i.i, 7
  br i1 %.not.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %._crit_edge155.thread
  %i.s = load <2 x i64>, ptr %.sroa.0126.2144, align 16, !tbaa !81 ; 2 uses
  %i.t = icmp sgt i64 %i.b, 7
  br i1 %i.t, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0126.2144, i64 16
  %i.v = load <4 x i32>, ptr %i.u, align 16, !tbaa !81 ; 2 uses
  %i.w = bitcast <2 x i64> %i.s to <4 x i32>      ; 2 uses
  %i.x = icmp samesign ugt i64 %i.b, 15
  br i1 %i.x, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.d
  %.lcssa.i.i.i = phi <4 x i32> [ %i.v, %bb.d ], [ %i.ai, %.lr.ph.i.i.i ]
  %.sroa.064.0.lcssa.i.i.i = phi <4 x i32> [ %i.w, %bb.d ], [ %i.ae, %.lr.ph.i.i.i ]
  %i.y = add <4 x i32> %.sroa.064.0.lcssa.i.i.i, %.lcssa.i.i.i ; 2 uses
  %i.z = bitcast <4 x i32> %i.y to <2 x i64>
  %i.aa = icmp sgt i64 %i.r, %i.p
  br i1 %i.aa, label %bb.e, label %bb.f

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.05775.i.i.i = phi i64 [ %.057.i.i.i, %.lr.ph.i.i.i ], [ 8, %bb.d ] ; 3 uses
  %.057.in74.i.i.i = phi i64 [ %.05775.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.d ]
  %.sroa.064.073.i.i.i = phi <4 x i32> [ %i.ae, %.lr.ph.i.i.i ], [ %i.w, %bb.d ]
  %i.ab = phi <4 x i32> [ %i.ai, %.lr.ph.i.i.i ], [ %i.v, %bb.d ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.2144, i64 %.05775.i.i.i
  %i.ad = load <4 x i32>, ptr %i.ac, align 16, !tbaa !81
  %i.ae = add <4 x i32> %i.ad, %.sroa.064.073.i.i.i ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.2144, i64 %.057.in74.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load <4 x i32>, ptr %i.ag, align 16, !tbaa !81
  %i.ai = add <4 x i32> %i.ah, %i.ab              ; 2 uses
  %.057.i.i.i = add nuw nsw i64 %.05775.i.i.i, 8  ; 2 uses
  %i.aj = icmp slt i64 %.057.i.i.i, %i.p
  br i1 %i.aj, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !371

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.2144, i64 %i.p
  %i.al = load <4 x i32>, ptr %i.ak, align 16, !tbaa !81
  %i.am = add <4 x i32> %i.al, %i.y
  %i.an = bitcast <4 x i32> %i.am to <2 x i64>
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i, %bb.c
  %.sroa.064.2.i.i.i = phi <2 x i64> [ %i.s, %bb.c ], [ %i.an, %bb.e ], [ %i.z, %._crit_edge.i.i.i ] ; 2 uses
  %i.ao = bitcast <2 x i64> %.sroa.064.2.i.i.i to <4 x i32>
  %i.ap = bitcast <2 x i64> %.sroa.064.2.i.i.i to <4 x i32> ; 2 uses
  %i.aq = shufflevector <4 x i32> %i.ap, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ar = add <4 x i32> %i.aq, %i.ao              ; 2 uses
  %shift = shufflevector <4 x i32> %i.ar, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.ar, %shift
  %3 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ap) ; 2 uses
  %i.as = icmp slt i64 %i.r, %i.b
  br i1 %i.as, label %.lr.ph80.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit

.lr.ph80.i.i.i.preheader:                         ; preds = %bb.f
  %i.at = shl nsw i64 %i.q, 2
  %i.au = sub i64 %i.b, %i.at                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.au, 8
  br i1 %min.iters.check, label %.lr.ph80.i.i.i.preheader238, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph80.i.i.i.preheader
  %n.vec = and i64 %i.au, -8                      ; 3 uses
  %i.av = add i64 %i.r, %n.vec
  %i.aw = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ax = getelementptr [4 x i8], ptr %.sroa.0126.2144, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.aw, %vector.ph ], [ %i.ba, %vector.body ]
  %vec.phi215 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %i.ay = getelementptr [4 x i8], ptr %i.ax, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <4 x i32>, ptr %i.ay, align 4, !tbaa !154
  %wide.load216 = load <4 x i32>, ptr %i.az, align 4, !tbaa !154
  %i.ba = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bb = add <4 x i32> %wide.load216, %vec.phi215 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !372

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bb, %i.ba
  %i.bd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph80.i.i.i.preheader238

.lr.ph80.i.i.i.preheader238:                      ; preds = %.lr.ph80.i.i.i.preheader, %middle.block
  %.05578.i.i.i.ph = phi i64 [ %i.r, %.lr.ph80.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.177.i.i.i.ph = phi i32 [ %3, %.lr.ph80.i.i.i.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph80.i.i.i

.lr.ph80.i.i.i:                                   ; preds = %.lr.ph80.i.i.i.preheader238, %.lr.ph80.i.i.i
  %.05578.i.i.i = phi i64 [ %i.bh, %.lr.ph80.i.i.i ], [ %.05578.i.i.i.ph, %.lr.ph80.i.i.i.preheader238 ] ; 2 uses
  %.177.i.i.i = phi i32 [ %i.bg, %.lr.ph80.i.i.i ], [ %.177.i.i.i.ph, %.lr.ph80.i.i.i.preheader238 ]
  %i.be = getelementptr inbounds [4 x i8], ptr %.sroa.0126.2144, i64 %.05578.i.i.i
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !154
  %i.bg = add nsw i32 %i.bf, %.177.i.i.i          ; 2 uses
  %i.bh = add nsw i64 %.05578.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bh, %i.b
  br i1 %exitcond.not.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph80.i.i.i, !llvm.loop !373

bb.g:                                             ; preds = %._crit_edge155.thread
  %i.bi = load i32, ptr %.sroa.0126.2144, align 4, !tbaa !154 ; 3 uses
  %i.bj = icmp sgt i64 %i.b, 1
  br i1 %i.bj, label %.lr.ph85.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit

.lr.ph85.i.i.i.preheader:                         ; preds = %bb.g
  %i.bk = add nsw i64 %i.b, -1                    ; 2 uses
  %min.iters.check218 = icmp ult i64 %i.b, 9
  br i1 %min.iters.check218, label %.lr.ph85.i.i.i.preheader235, label %vector.ph219

vector.ph219:                                     ; preds = %.lr.ph85.i.i.i.preheader
  %n.vec220 = and i64 %i.bk, -8                   ; 3 uses
  %i.bl = or disjoint i64 %n.vec220, 1
  %i.bm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.bi, i64 0
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph219
  %index222 = phi i64 [ 0, %vector.ph219 ], [ %index.next227, %vector.body221 ] ; 2 uses
  %vec.phi223 = phi <4 x i32> [ %i.bm, %vector.ph219 ], [ %i.bq, %vector.body221 ]
  %vec.phi224 = phi <4 x i32> [ zeroinitializer, %vector.ph219 ], [ %i.br, %vector.body221 ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.2144, i64 %index222 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  %wide.load225 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !154
  %wide.load226 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !154
  %i.bq = add <4 x i32> %wide.load225, %vec.phi223 ; 2 uses
  %i.br = add <4 x i32> %wide.load226, %vec.phi224 ; 2 uses
  %index.next227 = add nuw i64 %index222, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next227, %n.vec220
  br i1 %i.bs, label %middle.block228, label %vector.body221, !llvm.loop !374

middle.block228:                                  ; preds = %vector.body221
  %bin.rdx229 = add <4 x i32> %i.br, %i.bq
  %i.bt = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx229) ; 2 uses
  %cmp.n230 = icmp eq i64 %i.bk, %n.vec220
  br i1 %cmp.n230, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph85.i.i.i.preheader235

.lr.ph85.i.i.i.preheader235:                      ; preds = %.lr.ph85.i.i.i.preheader, %middle.block228
  %.083.i.i.i.ph = phi i64 [ 1, %.lr.ph85.i.i.i.preheader ], [ %i.bl, %middle.block228 ]
  %.282.i.i.i.ph = phi i32 [ %i.bi, %.lr.ph85.i.i.i.preheader ], [ %i.bt, %middle.block228 ]
  br label %.lr.ph85.i.i.i

.lr.ph85.i.i.i:                                   ; preds = %.lr.ph85.i.i.i.preheader235, %.lr.ph85.i.i.i
  %.083.i.i.i = phi i64 [ %i.bx, %.lr.ph85.i.i.i ], [ %.083.i.i.i.ph, %.lr.ph85.i.i.i.preheader235 ] ; 2 uses
  %.282.i.i.i = phi i32 [ %i.bw, %.lr.ph85.i.i.i ], [ %.282.i.i.i.ph, %.lr.ph85.i.i.i.preheader235 ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.2144, i64 %.083.i.i.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !154
  %i.bw = add nsw i32 %i.bv, %.282.i.i.i          ; 2 uses
  %i.bx = add nuw nsw i64 %.083.i.i.i, 1          ; 2 uses
  %exitcond92.not.i.i.i = icmp eq i64 %i.bx, %i.b
  br i1 %exitcond92.not.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph85.i.i.i, !llvm.loop !375

bb.h:                                             ; preds = %.invoke, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  %.sroa.0126.0 = phi ptr [ %.sroa.0126.2144, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit ], [ null, %.invoke ]
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.i:                                             ; preds = %.lr.ph154, %._crit_edge
  %.084152 = phi i64 [ 0, %.lr.ph154 ], [ %i.dd, %._crit_edge ] ; 10 uses
  br i1 %.not102, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.084152
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !154
  %i.cb = sext i32 %i.ca to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cc = phi i64 [ %i.cb, %bb.j ], [ %.084152, %bb.i ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.084152 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !154
  %i.cf = sext i32 %i.ce to i64                   ; 4 uses
  br i1 %i.n, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cg = getelementptr i8, ptr %i.cd, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !154
  %i.ci = sext i32 %i.ch to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.m:                                             ; preds = %bb.k
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.084152
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !154
  %i.cl = sext i32 %i.ck to i64
  %i.cm = add nsw i64 %i.cl, %i.cf
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.l, %bb.m
  %.sink.i = phi i64 [ %i.ci, %bb.l ], [ %i.cm, %bb.m ] ; 3 uses
  %i.cn = icmp sgt i64 %.sink.i, %i.cf
  br i1 %i.cn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.co = getelementptr inbounds [4 x i8], ptr %.sroa.0126.2144, i64 %i.cc ; 4 uses
  br i1 %.not102, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.2144, i64 %.084152 ; 2 uses
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.q
  %.sroa.9.0151.us = phi i64 [ %i.dc, %bb.q ], [ %i.cf, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.i, i64 %.sroa.9.0151.us
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !154
  %i.cs = sext i32 %i.cr to i64                   ; 3 uses
  %i.ct = icmp eq i64 %.084152, %i.cs
  br i1 %i.ct, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.us
  %i.cu = icmp slt i64 %.084152, %i.cs
  br i1 %i.cu, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cv = getelementptr inbounds [4 x i8], ptr %.sroa.0126.2144, i64 %i.cs ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !154
  %i.cx = add nsw i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !154
  %i.cy = load i32, ptr %i.co, align 4, !tbaa !154
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %i.co, align 4, !tbaa !154
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph.split.us
  %i.da = load i32, ptr %i.cp, align 4, !tbaa !154
  %i.db = add nsw i32 %i.da, 1
  store i32 %i.db, ptr %i.cp, align 4, !tbaa !154
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.dc = add nsw i64 %.sroa.9.0151.us, 1         ; 2 uses
  %exitcond173.not = icmp eq i64 %i.dc, %.sink.i
  br i1 %exitcond173.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !376

._crit_edge:                                      ; preds = %bb.u, %bb.q, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.dd = add nuw nsw i64 %.084152, 1             ; 2 uses
  %exitcond174.not = icmp eq i64 %i.dd, %i.b
  br i1 %exitcond174.not, label %._crit_edge155.thread, label %bb.i, !llvm.loop !377

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.u
  %.sroa.9.0151 = phi i64 [ %i.du, %bb.u ], [ %i.cf, %.lr.ph ] ; 2 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %i.i, i64 %.sroa.9.0151
  %i.df = load i32, ptr %i.de, align 4, !tbaa !154
  %i.dg = sext i32 %i.df to i64                   ; 3 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !154
  %i.dj = sext i32 %i.di to i64                   ; 2 uses
  %i.dk = icmp eq i64 %.084152, %i.dg
  br i1 %i.dk, label %bb.r, label %bb.s
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal25ordering_helper_at_plus_aINS_12SparseMatrixIdLi0EiEEEEvRKT_RS4_:bb.a
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !154 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !154 ; 2 uses
  %i.bj = icmp slt i32 %i.bg, %i.bi
  br i1 %i.bj, label %.lr.ph.us.preheader.epil, label %._crit_edge17

.lr.ph.us.preheader.epil:                         ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.epil.preheader
  %i.bk = sext i32 %i.bi to i64
  %i.bl = sext i32 %i.bg to i64                   ; 2 uses
  %i.bm = shl nsw i64 %i.bl, 3
  %scevgep20.epil = getelementptr i8, ptr %i.n, i64 %i.bm
  %i.bn = sub nsw i64 %i.bk, %i.bl
  %i.bo = shl nsw i64 %i.bn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep20.epil, i8 0, i64 %i.bo, i1 false), !tbaa !43
  br label %._crit_edge17

._crit_edge17.loopexit31.unr-lcssa:               ; preds = %._crit_edge.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge17, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader: ; preds = %._crit_edge17.loopexit31.unr-lcssa, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.preheader ], [ %indvars.iv.next.1, %._crit_edge17.loopexit31.unr-lcssa ] ; 2 uses
  %lcmp.mod32 = trunc i64 %i.k to i1
  call void @llvm.assume(i1 %lcmp.mod32)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.epil.init
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !154 ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph.preheader.epil, label %._crit_edge17

.lr.ph.preheader.epil:                            ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader
  %i.bs = zext nneg i32 %i.bq to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.epil.init
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !154
  %i.bv = sext i32 %i.bu to i64
  %i.bw = shl nsw i64 %i.bv, 3
  %scevgep.epil = getelementptr i8, ptr %i.n, i64 %i.bw
  %i.bx = shl nuw nsw i64 %i.bs, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.epil, i8 0, i64 %i.bx, i1 false), !tbaa !43
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %._crit_edge17.loopexit31.unr-lcssa, %.lr.ph.preheader.epil, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader, %._crit_edge17.loopexit.unr-lcssa, %.lr.ph.us.preheader.epil, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.epil.preheader, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store i8 0, ptr %4, align 8, !tbaa !383, !alias.scope !385
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.by, align 8, !tbaa !151, !alias.scope !385
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %0, ptr %i.bz, align 8, !tbaa !151, !alias.scope !385
  %i.ca = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_S7_EEEERS1_RKNS_16SparseMatrixBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.g unwind label %bb.k       ; 0 uses

bb.g:                                             ; preds = %._crit_edge17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !135
  call void @free(ptr noundef %i.cb) #27
  %i.cc = load ptr, ptr %i.h, align 8, !tbaa !136
  call void @free(ptr noundef %i.cc) #27
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !137 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ce) #29
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !138 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.ch) #29
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.k:                                             ; preds = %._crit_edge17
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.am, %bb.f ], [ %i.cj, %bb.k ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal23minimum_degree_orderingIdiEEvRNS_12SparseMatrixIT_Li0ET0_EERNS_17PermutationMatrixILin1ELin1ES4_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !49   ; 32 uses
  %i.c = trunc i64 %i.b to i32                    ; 17 uses
  %i.d = sitofp i32 %i.c to double
  %i.e = tail call double @sqrt(double noundef %i.d) #27
  %i.f = fmul double %i.e, 1.000000e+01
  %i.g = fptosi double %i.f to i32
  %.sroa.speculated548 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 16)
  %i.h = add nsw i32 %i.c, -2
  %.sroa.speculated543 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated548, i32 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !136  ; 13 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !135  ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.b
  %i.o = load i32, ptr %i.n, align 4, !tbaa !154
  %i.p = load i32, ptr %i.m, align 4, !tbaa !154
  %i.q = sub nsw i32 %i.o, %i.p
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.c:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %i.b, 0
  br i1 %i.r, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.t = and i64 %i.s, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.u = lshr exact i64 %i.s, 2
  %i.v = sub nsw i64 0, %i.u
  %i.w = and i64 %i.v, 3
  %i.x = tail call i64 @llvm.smin.i64(i64 %i.w, i64 %i.b)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.x, %bb.e ], [ %i.b, %bb.d ] ; 12 uses
  %i.y = sub nsw i64 %i.b, %.0.i.i.i.i.i.i.i.i    ; 5 uses
  %i.z = sdiv i64 %i.y, 8
  %i.aa = shl nsw i64 %i.z, 3                     ; 2 uses
  %i.ab = sdiv i64 %i.y, 4                        ; 2 uses
  %i.ac = shl nsw i64 %i.ab, 2                    ; 2 uses
  %i.ad = add nsw i64 %i.aa, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.ae = add nsw i64 %i.ac, %.0.i.i.i.i.i.i.i.i  ; 4 uses
  %.off.i.i.i.i = add i64 %i.y, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.af = getelementptr [4 x i8], ptr %i.j, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.ag = load <2 x i64>, ptr %i.af, align 1, !tbaa !81 ; 2 uses
  %i.ah = icmp sgt i64 %i.y, 7
  br i1 %i.ah, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr i8, ptr %i.af, i64 16
  %i.aj = load <4 x i32>, ptr %i.ai, align 1, !tbaa !81 ; 2 uses
  %i.ak = bitcast <2 x i64> %i.ag to <4 x i32>    ; 2 uses
  %i.al = icmp samesign ugt i64 %i.y, 15
  br i1 %i.al, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.g
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.aj, %bb.g ], [ %i.aw, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.ak, %bb.g ], [ %i.as, %.lr.ph.i.i.i.i ]
  %i.am = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.an = bitcast <4 x i32> %i.am to <2 x i64>
  %i.ao = icmp sgt i64 %i.ac, %i.aa
  br i1 %i.ao, label %bb.h, label %bb.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.as, %.lr.ph.i.i.i.i ], [ %i.ak, %.lr.ph.preheader.i.i.i.i ]
  %i.ap = phi <4 x i32> [ %i.aw, %.lr.ph.i.i.i.i ], [ %i.aj, %.lr.ph.preheader.i.i.i.i ]
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.05780.i.i.i.i
  %i.ar = load <4 x i32>, ptr %i.aq, align 1, !tbaa !81
  %i.as = add <4 x i32> %i.ar, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.at = getelementptr [4 x i8], ptr %i.j, i64 %.057.in79.i.i.i.i
  %i.au = getelementptr i8, ptr %i.at, i64 48
  %i.av = load <4 x i32>, ptr %i.au, align 1, !tbaa !81
  %i.aw = add <4 x i32> %i.av, %i.ap              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.ax = icmp slt i64 %.057.i.i.i.i, %i.ad
  br i1 %i.ax, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !281

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ad
  %i.az = load <4 x i32>, ptr %i.ay, align 1, !tbaa !81
  %i.ba = add <4 x i32> %i.az, %i.am
  %i.bb = bitcast <4 x i32> %i.ba to <2 x i64>
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i, %bb.f
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.ag, %bb.f ], [ %i.bb, %bb.h ], [ %i.an, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bc = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.bd = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.be = shufflevector <4 x i32> %i.bd, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bf = add <4 x i32> %i.be, %i.bc              ; 2 uses
  %shift = shufflevector <4 x i32> %i.bf, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.bf, %shift
  %2 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bd) ; 2 uses
  %i.bg = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.bg, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.preheader1355, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.bh = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bh, %vector.ph ], [ %i.bk, %vector.body ]
  %vec.phi1169 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bl, %vector.body ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %wide.load = load <4 x i32>, ptr %i.bi, align 4, !tbaa !154
  %wide.load1170 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !154
  %i.bk = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bl = add <4 x i32> %wide.load1170, %vec.phi1169 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !388

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bl, %i.bk
  %i.bn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader1355

.lr.ph85.i.i.i.i.preheader1355:                   ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.ph = phi i32 [ %2, %.lr.ph85.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block, %bb.i
  %.075.lcssa.i.i.i.i = phi i32 [ %2, %bb.i ], [ %i.bn, %middle.block ], [ %i.cd, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.bo = icmp slt i64 %i.ae, %i.b
  br i1 %i.bo, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.bp = shl nsw i64 %i.ab, 2
  %i.bq = add i64 %.0.i.i.i.i.i.i.i.i, %i.bp
  %i.br = sub i64 %i.b, %i.bq                     ; 3 uses
  %min.iters.check1172 = icmp ult i64 %i.br, 8
  br i1 %min.iters.check1172, label %.lr.ph89.i.i.i.i.preheader1350, label %vector.ph1173

vector.ph1173:                                    ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec1174 = and i64 %i.br, -8                  ; 3 uses
  %i.bs = add i64 %i.ae, %n.vec1174
  %i.bt = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.bu = getelementptr [4 x i8], ptr %i.j, i64 %i.ae
  br label %vector.body1175

vector.body1175:                                  ; preds = %vector.body1175, %vector.ph1173
  %index1176 = phi i64 [ 0, %vector.ph1173 ], [ %index.next1181, %vector.body1175 ] ; 2 uses
  %vec.phi1177 = phi <4 x i32> [ %i.bt, %vector.ph1173 ], [ %i.bx, %vector.body1175 ]
  %vec.phi1178 = phi <4 x i32> [ zeroinitializer, %vector.ph1173 ], [ %i.by, %vector.body1175 ]
  %i.bv = getelementptr [4 x i8], ptr %i.bu, i64 %index1176 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %wide.load1179 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !154
  %wide.load1180 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !154
  %i.bx = add <4 x i32> %wide.load1179, %vec.phi1177 ; 2 uses
  %i.by = add <4 x i32> %wide.load1180, %vec.phi1178 ; 2 uses
  %index.next1181 = add nuw i64 %index1176, 8     ; 2 uses
  %i.bz = icmp eq i64 %index.next1181, %n.vec1174
  br i1 %i.bz, label %middle.block1182, label %vector.body1175, !llvm.loop !389

middle.block1182:                                 ; preds = %vector.body1175
  %bin.rdx1183 = add <4 x i32> %i.by, %i.bx
  %i.ca = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1183) ; 2 uses
  %cmp.n1184 = icmp eq i64 %i.br, %n.vec1174
  br i1 %cmp.n1184, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph89.i.i.i.i.preheader1350

.lr.ph89.i.i.i.i.preheader1350:                   ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block1182
  %.05588.i.i.i.i.ph = phi i64 [ %i.ae, %.lr.ph89.i.i.i.i.preheader ], [ %i.bs, %middle.block1182 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.ca, %middle.block1182 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader1355, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.ce, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader1355 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.cd, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader1355 ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.05683.i.i.i.i
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !154
  %i.cd = add nsw i32 %i.cc, %.07582.i.i.i.i      ; 2 uses
  %i.ce = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ce, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !390

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader1350, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.ci, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader1350 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.ch, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader1350 ]
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.05588.i.i.i.i
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !154
  %i.ch = add nsw i32 %i.cg, %.187.i.i.i.i        ; 2 uses
  %i.ci = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.cj = icmp slt i64 %i.ci, %i.b
  br i1 %i.cj, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, !llvm.loop !391

bb.j:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ck = load i32, ptr %i.j, align 4, !tbaa !154 ; 3 uses
  %i.cl = icmp sgt i64 %i.b, 1
  br i1 %i.cl, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.j
  %i.cm = add nsw i64 %i.b, -1                    ; 2 uses
  %min.iters.check1188 = icmp ult i64 %i.b, 9
  br i1 %min.iters.check1188, label %.lr.ph94.i.i.i.i.preheader1346, label %vector.ph1189

vector.ph1189:                                    ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec1190 = and i64 %i.cm, -8                  ; 3 uses
  %i.cn = or disjoint i64 %n.vec1190, 1
  %i.co = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ck, i64 0
  br label %vector.body1191

vector.body1191:                                  ; preds = %vector.body1191, %vector.ph1189
  %index1192 = phi i64 [ 0, %vector.ph1189 ], [ %index.next1197, %vector.body1191 ] ; 2 uses
  %vec.phi1193 = phi <4 x i32> [ %i.co, %vector.ph1189 ], [ %i.cs, %vector.body1191 ]
  %vec.phi1194 = phi <4 x i32> [ zeroinitializer, %vector.ph1189 ], [ %i.ct, %vector.body1191 ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index1192 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 20
  %wide.load1195 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !154
  %wide.load1196 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !154
  %i.cs = add <4 x i32> %wide.load1195, %vec.phi1193 ; 2 uses
  %i.ct = add <4 x i32> %wide.load1196, %vec.phi1194 ; 2 uses
  %index.next1197 = add nuw i64 %index1192, 8     ; 2 uses
  %i.cu = icmp eq i64 %index.next1197, %n.vec1190
  br i1 %i.cu, label %middle.block1198, label %vector.body1191, !llvm.loop !392

middle.block1198:                                 ; preds = %vector.body1191
  %bin.rdx1199 = add <4 x i32> %i.ct, %i.cs
  %i.cv = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1199) ; 2 uses
  %cmp.n1200 = icmp eq i64 %i.cm, %n.vec1190
  br i1 %cmp.n1200, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i.preheader1346

.lr.ph94.i.i.i.i.preheader1346:                   ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block1198
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.cn, %middle.block1198 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.ck, %.lr.ph94.i.i.i.i.preheader ], [ %i.cv, %middle.block1198 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader1346, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.cz, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader1346 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.cy, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader1346 ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.092.i.i.i.i
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !154
  %i.cy = add nsw i32 %i.cx, %.291.i.i.i.i        ; 2 uses
  %i.cz = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.cz, %i.b
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i, !llvm.loop !393

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block1182, %middle.block1198, %.preheader.i.i.i.i, %bb.j, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.q, %bb.b ], [ 0, %bb.c ], [ %i.cy, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ck, %bb.j ], [ %i.cv, %middle.block1198 ], [ %i.ca, %middle.block1182 ], [ %i.ch, %.lr.ph89.i.i.i.i ] ; 3 uses
  %i.da = add nsw i32 %i.c, 1                     ; 11 uses
  %i.db = sext i32 %i.da to i64                   ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !338
  %.not.i.i.i = icmp eq i64 %i.dd, %i.db
  br i1 %.not.i.i.i, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.de = load ptr, ptr %1, align 8, !tbaa !139
  tail call void @free(ptr noundef %i.de) #27
  %i.df = icmp sgt i32 %i.c, -1
  br i1 %i.df, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, label %.sink.split.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i: ; preds = %bb.k
  %i.dg = shl nuw nsw i64 %i.db, 2
  %i.dh = tail call noalias ptr @malloc(i64 noundef %i.dg) #30 ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.l, label %.sink.split.i.i.i

bb.l:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  %i.dj = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dj, align 8, !tbaa !140
  tail call void @__cxa_throw(ptr nonnull %i.dj, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
  unreachable

.sink.split.i.i.i:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, %bb.k
  %.sink.i.i.i = phi ptr [ %i.dh, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i ], [ null, %bb.k ]
  store ptr %.sink.i.i.i, ptr %1, align 8, !tbaa !139
  br label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit

_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit: ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, %.sink.split.i.i.i
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !338
  %i.dk = sdiv i32 %.0.i, 5
  %i.dl = shl nsw i32 %i.c, 1
  %i.dm = add i32 %.0.i, %i.dl
  %i.dn = add i32 %i.dm, %i.dk                    ; 2 uses
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, i64 noundef %i.do, double noundef 0.000000e+00)
  %i.dq = shl i32 %i.c, 3
  %i.dr = add i32 %i.dq, 8
  %i.ds = icmp slt i32 %i.dr, 0
  br i1 %i.ds, label %bb.m, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit

bb.m:                                             ; preds = %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit
end_hunk_2
begin_hunk_3_@_ZN5Eigen8internal43conservative_sparse_sparse_product_selectorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEES4_S4_Li1ELi0ELi0EE3runERKS5_RKS4_RS4_:bb.a
          cleanup
  call void @_ZN5Eigen12SparseMatrixIdLi1EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %4) #27
  br label %.body

.body:                                            ; preds = %bb.e, %bb.o
  %.pn = phi { ptr, i32 } [ %i.am, %bb.o ], [ %i.q, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZN5Eigen12SparseMatrixIdLi1EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5Eigen8internalL39conservative_sparse_sparse_product_implINS_12SparseMatrixIdLi1EiEENS_9TransposeINS2_IdLi0EiEEEES3_EEvRKT_RKT0_RT1_b(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree readonly captures(none) %.8.val, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !331  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !49   ; 14 uses
  %i.e = icmp ugt i64 %i.b, 131072                ; 5 uses
  br i1 %i.e, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.b) #30 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !140
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.b
  %i.i = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.i, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.j = shl nuw i64 %i.b, 3
  br label %bb.e

bb.d:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !140
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
          to label %.noexc137 unwind label %.split

.noexc137:                                        ; preds = %bb.d
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.l = add nuw nsw i64 %i.b, 15
  %i.m = alloca i8, i64 %i.l, align 16            ; 2 uses
  %i.n = shl nuw nsw i64 %i.b, 3                  ; 3 uses
  %i.o = icmp samesign ult i64 %i.b, 16385
  br i1 %i.o, label %_ZN5Eigen8internal14aligned_mallocEm.exit140.thread, label %bb.e

_ZN5Eigen8internal14aligned_mallocEm.exit140.thread: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.p = add nuw nsw i64 %i.n, 15
  %i.q = alloca i8, i64 %i.p, align 16
  %i.r = add nuw nsw i64 %i.n, 15
  %i.s = alloca i8, i64 %i.r, align 16
  br label %bb.h

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.t = phi i64 [ %i.j, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread ], [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ] ; 2 uses
  %i.u = phi ptr [ %i.f, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread ], [ %i.m, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ] ; 3 uses
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.t) #30 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit140

bb.f:                                             ; preds = %bb.e
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !140
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
          to label %.noexc139 unwind label %.split46

.noexc139:                                        ; preds = %bb.f
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit140:     ; preds = %bb.e
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.t) #30 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit140
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aa, align 8, !tbaa !140
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
          to label %.noexc144 unwind label %.split50

.noexc144:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit140, %_ZN5Eigen8internal14aligned_mallocEm.exit140.thread
  %i.ab = phi i1 [ false, %_ZN5Eigen8internal14aligned_mallocEm.exit140.thread ], [ true, %_ZN5Eigen8internal14aligned_mallocEm.exit140 ] ; 2 uses
  %i.ac = phi ptr [ %i.q, %_ZN5Eigen8internal14aligned_mallocEm.exit140.thread ], [ %i.v, %_ZN5Eigen8internal14aligned_mallocEm.exit140 ] ; 5 uses
  %i.ad = phi ptr [ %i.m, %_ZN5Eigen8internal14aligned_mallocEm.exit140.thread ], [ %i.u, %_ZN5Eigen8internal14aligned_mallocEm.exit140 ] ; 5 uses
  %i.ae = phi ptr [ %i.s, %_ZN5Eigen8internal14aligned_mallocEm.exit140.thread ], [ %i.y, %_ZN5Eigen8internal14aligned_mallocEm.exit140 ] ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ad, i8 0, i64 %i.b, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !340 ; 13 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !334 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !335
  %i.am = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !154
  %i.ao = load i32, ptr %i.aj, align 4, !tbaa !154
  %i.ap = sub nsw i32 %i.an, %i.ao
  %i.aq = sext i32 %i.ap to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEEEE16nonZerosEstimateEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !335 ; 11 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEEEE16nonZerosEstimateEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.av = and i64 %i.au, 3
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.l, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.aw = lshr exact i64 %i.au, 2
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = and i64 %i.ax, 3
  %i.az = tail call i64 @llvm.smin.i64(i64 %i.ay, i64 %i.as)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.az, %bb.l ], [ %i.as, %bb.k ] ; 12 uses
  %i.ba = sub nsw i64 %i.as, %.0.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.bb = sdiv i64 %i.ba, 8
  %i.bc = shl nsw i64 %i.bb, 3                    ; 2 uses
  %i.bd = sdiv i64 %i.ba, 4                       ; 2 uses
  %i.be = shl nsw i64 %i.bd, 2                    ; 2 uses
  %i.bf = add nsw i64 %i.bc, %.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bg = add nsw i64 %i.be, %.0.i.i.i.i.i.i.i.i.i ; 4 uses
  %.off.i.i.i.i.i = add i64 %i.ba, 3
  %.not.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i, 7
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i
  %i.bh = getelementptr [4 x i8], ptr %i.ag, i64 %.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bi = load <2 x i64>, ptr %i.bh, align 1, !tbaa !81 ; 2 uses
  %i.bj = icmp sgt i64 %i.ba, 7
  br i1 %i.bj, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr i8, ptr %i.bh, i64 16
  %i.bl = load <4 x i32>, ptr %i.bk, align 1, !tbaa !81 ; 2 uses
  %i.bm = bitcast <2 x i64> %i.bi to <4 x i32>    ; 2 uses
  %i.bn = icmp samesign ugt i64 %i.ba, 15
  br i1 %i.bn, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.n
  %.05777.i.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.n
  %.lcssa.i.i.i.i.i = phi <4 x i32> [ %i.bl, %bb.n ], [ %i.by, %.lr.ph.i.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i.i = phi <4 x i32> [ %i.bm, %bb.n ], [ %i.bu, %.lr.ph.i.i.i.i.i ]
  %i.bo = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i.i, %.lcssa.i.i.i.i.i ; 2 uses
  %i.bp = bitcast <4 x i32> %i.bo to <2 x i64>
  %i.bq = icmp sgt i64 %i.be, %i.bc
  br i1 %i.bq, label %bb.o, label %bb.p

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.05780.i.i.i.i.i = phi i64 [ %.057.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.05777.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i.i = phi i64 [ %.05780.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ]
  %.sroa.067.078.i.i.i.i.i = phi <4 x i32> [ %i.bu, %.lr.ph.i.i.i.i.i ], [ %i.bm, %.lr.ph.preheader.i.i.i.i.i ]
  %i.br = phi <4 x i32> [ %i.by, %.lr.ph.i.i.i.i.i ], [ %i.bl, %.lr.ph.preheader.i.i.i.i.i ]
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %.05780.i.i.i.i.i
  %i.bt = load <4 x i32>, ptr %i.bs, align 1, !tbaa !81
  %i.bu = add <4 x i32> %i.bt, %.sroa.067.078.i.i.i.i.i ; 2 uses
  %i.bv = getelementptr [4 x i8], ptr %i.ag, i64 %.057.in79.i.i.i.i.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 48
  %i.bx = load <4 x i32>, ptr %i.bw, align 1, !tbaa !81
  %i.by = add <4 x i32> %i.bx, %i.br              ; 2 uses
  %.057.i.i.i.i.i = add nsw i64 %.05780.i.i.i.i.i, 8 ; 2 uses
  %i.bz = icmp slt i64 %.057.i.i.i.i.i, %i.bf
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !281

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.bf
  %i.cb = load <4 x i32>, ptr %i.ca, align 1, !tbaa !81
  %i.cc = add <4 x i32> %i.cb, %i.bo
  %i.cd = bitcast <4 x i32> %i.cc to <2 x i64>
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i.i, %bb.m
  %.sroa.067.2.i.i.i.i.i = phi <2 x i64> [ %i.bi, %bb.m ], [ %i.cd, %bb.o ], [ %i.bp, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ce = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i to <4 x i32>
  %i.cf = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i to <4 x i32> ; 2 uses
  %i.cg = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ch = add <4 x i32> %i.cg, %i.ce              ; 2 uses
  %shift = shufflevector <4 x i32> %i.ch, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.ch, %shift
  %2 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cf) ; 2 uses
  %i.ci = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ci, label %.lr.ph85.i.i.i.i.i.preheader, label %.preheader.i.i.i.i.i

.lr.ph85.i.i.i.i.i.preheader:                     ; preds = %bb.p
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.i.preheader134, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.cj = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cj, %vector.ph ], [ %i.cm, %vector.body ]
  %vec.phi13 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cn, %vector.body ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %wide.load = load <4 x i32>, ptr %i.ck, align 4, !tbaa !154
  %wide.load14 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !154
  %i.cm = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.cn = add <4 x i32> %wide.load14, %vec.phi13  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !476

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cn, %i.cm
  %i.cp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.preheader134

.lr.ph85.i.i.i.i.i.preheader134:                  ; preds = %.lr.ph85.i.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.i.ph = phi i32 [ %2, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.cp, %middle.block ]
  br label %.lr.ph85.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph85.i.i.i.i.i, %middle.block, %bb.p
  %.075.lcssa.i.i.i.i.i = phi i32 [ %2, %bb.p ], [ %i.cp, %middle.block ], [ %i.df, %.lr.ph85.i.i.i.i.i ] ; 3 uses
  %i.cq = icmp slt i64 %i.bg, %i.as
  br i1 %i.cq, label %.lr.ph89.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i

.lr.ph89.i.i.i.i.i.preheader:                     ; preds = %.preheader.i.i.i.i.i
  %i.cr = shl nsw i64 %i.bd, 2
  %i.cs = add i64 %.0.i.i.i.i.i.i.i.i.i, %i.cr
  %i.ct = sub i64 %i.as, %i.cs                    ; 3 uses
  %min.iters.check16 = icmp ult i64 %i.ct, 8
  br i1 %min.iters.check16, label %.lr.ph89.i.i.i.i.i.preheader129, label %vector.ph17

vector.ph17:                                      ; preds = %.lr.ph89.i.i.i.i.i.preheader
  %n.vec18 = and i64 %i.ct, -8                    ; 3 uses
  %i.cu = add i64 %i.bg, %n.vec18
  %i.cv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i.i, i64 0
  %i.cw = getelementptr [4 x i8], ptr %i.ag, i64 %i.bg
  br label %vector.body19

vector.body19:                                    ; preds = %vector.body19, %vector.ph17
  %index20 = phi i64 [ 0, %vector.ph17 ], [ %index.next25, %vector.body19 ] ; 2 uses
  %vec.phi21 = phi <4 x i32> [ %i.cv, %vector.ph17 ], [ %i.cz, %vector.body19 ]
  %vec.phi22 = phi <4 x i32> [ zeroinitializer, %vector.ph17 ], [ %i.da, %vector.body19 ]
  %i.cx = getelementptr [4 x i8], ptr %i.cw, i64 %index20 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load23 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !154
  %wide.load24 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !154
  %i.cz = add <4 x i32> %wide.load23, %vec.phi21  ; 2 uses
  %i.da = add <4 x i32> %wide.load24, %vec.phi22  ; 2 uses
  %index.next25 = add nuw i64 %index20, 8         ; 2 uses
  %i.db = icmp eq i64 %index.next25, %n.vec18
  br i1 %i.db, label %middle.block26, label %vector.body19, !llvm.loop !477

middle.block26:                                   ; preds = %vector.body19
  %bin.rdx27 = add <4 x i32> %i.da, %i.cz
  %i.dc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx27) ; 2 uses
  %cmp.n28 = icmp eq i64 %i.ct, %n.vec18
  br i1 %cmp.n28, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph89.i.i.i.i.i.preheader129

.lr.ph89.i.i.i.i.i.preheader129:                  ; preds = %.lr.ph89.i.i.i.i.i.preheader, %middle.block26
  %.05588.i.i.i.i.i.ph = phi i64 [ %i.bg, %.lr.ph89.i.i.i.i.i.preheader ], [ %i.cu, %middle.block26 ]
  %.187.i.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i.i, %.lr.ph89.i.i.i.i.i.preheader ], [ %i.dc, %middle.block26 ]
  br label %.lr.ph89.i.i.i.i.i

.lr.ph85.i.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i.i.preheader134, %.lr.ph85.i.i.i.i.i
  %.05683.i.i.i.i.i = phi i64 [ %i.dg, %.lr.ph85.i.i.i.i.i ], [ %.05683.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.preheader134 ] ; 2 uses
  %.07582.i.i.i.i.i = phi i32 [ %i.df, %.lr.ph85.i.i.i.i.i ], [ %.07582.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.preheader134 ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.05683.i.i.i.i.i
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !154
  %i.df = add nsw i32 %i.de, %.07582.i.i.i.i.i    ; 2 uses
  %i.dg = add nuw nsw i64 %.05683.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.dg, %.0.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i, !llvm.loop !478

.lr.ph89.i.i.i.i.i:                               ; preds = %.lr.ph89.i.i.i.i.i.preheader129, %.lr.ph89.i.i.i.i.i
  %.05588.i.i.i.i.i = phi i64 [ %i.dk, %.lr.ph89.i.i.i.i.i ], [ %.05588.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader129 ] ; 2 uses
  %.187.i.i.i.i.i = phi i32 [ %i.dj, %.lr.ph89.i.i.i.i.i ], [ %.187.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader129 ]
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %.05588.i.i.i.i.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !154
  %i.dj = add nsw i32 %i.di, %.187.i.i.i.i.i      ; 2 uses
  %i.dk = add nsw i64 %.05588.i.i.i.i.i, 1        ; 2 uses
  %i.dl = icmp slt i64 %i.dk, %i.as
  br i1 %i.dl, label %.lr.ph89.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, !llvm.loop !479

bb.q:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i
  %i.dm = load i32, ptr %i.ag, align 4, !tbaa !154 ; 3 uses
  %i.dn = icmp sgt i64 %i.as, 1
  br i1 %i.dn, label %.lr.ph94.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i

.lr.ph94.i.i.i.i.i.preheader:                     ; preds = %bb.q
  %i.do = add nsw i64 %i.as, -1                   ; 2 uses
  %min.iters.check32 = icmp ult i64 %i.as, 9
  br i1 %min.iters.check32, label %.lr.ph94.i.i.i.i.i.preheader125, label %vector.ph33

vector.ph33:                                      ; preds = %.lr.ph94.i.i.i.i.i.preheader
  %n.vec34 = and i64 %i.do, -8                    ; 3 uses
  %i.dp = or disjoint i64 %n.vec34, 1
  %i.dq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.dm, i64 0
  br label %vector.body35

vector.body35:                                    ; preds = %vector.body35, %vector.ph33
  %index36 = phi i64 [ 0, %vector.ph33 ], [ %index.next41, %vector.body35 ] ; 2 uses
  %vec.phi37 = phi <4 x i32> [ %i.dq, %vector.ph33 ], [ %i.du, %vector.body35 ]
  %vec.phi38 = phi <4 x i32> [ zeroinitializer, %vector.ph33 ], [ %i.dv, %vector.body35 ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index36 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  %wide.load39 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !154
  %wide.load40 = load <4 x i32>, ptr %i.dt, align 4, !tbaa !154
  %i.du = add <4 x i32> %wide.load39, %vec.phi37  ; 2 uses
  %i.dv = add <4 x i32> %wide.load40, %vec.phi38  ; 2 uses
  %index.next41 = add nuw i64 %index36, 8         ; 2 uses
  %i.dw = icmp eq i64 %index.next41, %n.vec34
  br i1 %i.dw, label %middle.block42, label %vector.body35, !llvm.loop !480

middle.block42:                                   ; preds = %vector.body35
  %bin.rdx43 = add <4 x i32> %i.dv, %i.du
  %i.dx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx43) ; 2 uses
  %cmp.n44 = icmp eq i64 %i.do, %n.vec34
  br i1 %cmp.n44, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i.preheader125

.lr.ph94.i.i.i.i.i.preheader125:                  ; preds = %.lr.ph94.i.i.i.i.i.preheader, %middle.block42
  %.092.i.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.i.preheader ], [ %i.dp, %middle.block42 ]
  %.291.i.i.i.i.i.ph = phi i32 [ %i.dm, %.lr.ph94.i.i.i.i.i.preheader ], [ %i.dx, %middle.block42 ]
  br label %.lr.ph94.i.i.i.i.i

.lr.ph94.i.i.i.i.i:                               ; preds = %.lr.ph94.i.i.i.i.i.preheader125, %.lr.ph94.i.i.i.i.i
  %.092.i.i.i.i.i = phi i64 [ %i.eb, %.lr.ph94.i.i.i.i.i ], [ %.092.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.preheader125 ] ; 2 uses
  %.291.i.i.i.i.i = phi i32 [ %i.ea, %.lr.ph94.i.i.i.i.i ], [ %.291.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.preheader125 ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.092.i.i.i.i.i
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !154
  %i.ea = add nsw i32 %i.dz, %.291.i.i.i.i.i      ; 2 uses
  %i.eb = add nuw nsw i64 %.092.i.i.i.i.i, 1      ; 2 uses
  %exitcond102.not.i.i.i.i.i = icmp eq i64 %i.eb, %i.as
  br i1 %exitcond102.not.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i, !llvm.loop !481

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i: ; preds = %.lr.ph89.i.i.i.i.i, %.lr.ph94.i.i.i.i.i, %middle.block26, %middle.block42, %bb.q, %.preheader.i.i.i.i.i
  %.0.i.i.i = phi i32 [ %i.ea, %.lr.ph94.i.i.i.i.i ], [ %.075.lcssa.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.dm, %bb.q ], [ %i.dx, %middle.block42 ], [ %i.dc, %middle.block26 ], [ %i.dj, %.lr.ph89.i.i.i.i.i ]
  %i.ec = sext i32 %.0.i.i.i to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEEEE16nonZerosEstimateEv.exit

_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEEEE16nonZerosEstimateEv.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, %bb.j, %bb.i
  %.0.i.i = phi i64 [ %i.aq, %bb.i ], [ %i.ec, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i ], [ 0, %bb.j ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.8.val, i64 32 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !136 ; 13 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEEEE16nonZerosEstimateEv.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !135 ; 2 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.d
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !154
  %i.ek = load i32, ptr %i.eh, align 4, !tbaa !154
  %i.el = sub nsw i32 %i.ej, %i.ek
  %i.em = sext i32 %i.el to i64
  br label %_ZNK5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE16nonZerosEstimateEv.exit

bb.s:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEEEE16nonZerosEstimateEv.exit
  %i.en = icmp eq i64 %i.d, 0
  br i1 %i.en, label %_ZNK5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE16nonZerosEstimateEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eo = ptrtoint ptr %i.ee to i64               ; 2 uses
  %i.ep = and i64 %i.eo, 3
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ep, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.u, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.eq = lshr exact i64 %i.eo, 2
  %i.er = sub nsw i64 0, %i.eq
  %i.es = and i64 %i.er, 3
  %i.et = tail call i64 @llvm.smin.i64(i64 %i.es, i64 %i.d)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.et, %bb.u ], [ %i.d, %bb.t ] ; 12 uses
  %i.eu = sub nsw i64 %i.d, %.0.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.ev = sdiv i64 %i.eu, 8
  %i.ew = shl nsw i64 %i.ev, 3                    ; 2 uses
  %i.ex = sdiv i64 %i.eu, 4                       ; 2 uses
  %i.ey = shl nsw i64 %i.ex, 2                    ; 2 uses
  %i.ez = add nsw i64 %i.ew, %.0.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.fa = add nsw i64 %i.ey, %.0.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %.off.i.i.i.i.i.i = add i64 %i.eu, 3
  %.not.i.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i, 7
  br i1 %.not.i.i.i.i.i.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i
  %i.fb = getelementptr [4 x i8], ptr %i.ee, i64 %.0.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.fc = load <2 x i64>, ptr %i.fb, align 1, !tbaa !81 ; 2 uses
  %i.fd = icmp sgt i64 %i.eu, 7
  br i1 %i.fd, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.fe = getelementptr i8, ptr %i.fb, i64 16
  %i.ff = load <4 x i32>, ptr %i.fe, align 1, !tbaa !81 ; 2 uses
  %i.fg = bitcast <2 x i64> %i.fc to <4 x i32>    ; 2 uses
  %i.fh = icmp samesign ugt i64 %i.eu, 15
  br i1 %i.fh, label %.lr.ph.preheader.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.w
  %.05777.i.i.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %bb.w
  %.lcssa.i.i.i.i.i.i = phi <4 x i32> [ %i.ff, %bb.w ], [ %i.fs, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i.i.i = phi <4 x i32> [ %i.fg, %bb.w ], [ %i.fo, %.lr.ph.i.i.i.i.i.i ]
  %i.fi = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i.i.i, %.lcssa.i.i.i.i.i.i ; 2 uses
  %i.fj = bitcast <4 x i32> %i.fi to <2 x i64>
  %i.fk = icmp sgt i64 %i.ey, %i.ew
  br i1 %i.fk, label %bb.x, label %bb.y

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.05780.i.i.i.i.i.i = phi i64 [ %.057.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.05777.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i.i.i = phi i64 [ %.05780.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ]
  %.sroa.067.078.i.i.i.i.i.i = phi <4 x i32> [ %i.fo, %.lr.ph.i.i.i.i.i.i ], [ %i.fg, %.lr.ph.preheader.i.i.i.i.i.i ]
  %i.fl = phi <4 x i32> [ %i.fs, %.lr.ph.i.i.i.i.i.i ], [ %i.ff, %.lr.ph.preheader.i.i.i.i.i.i ]
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %.05780.i.i.i.i.i.i
  %i.fn = load <4 x i32>, ptr %i.fm, align 1, !tbaa !81
  %i.fo = add <4 x i32> %i.fn, %.sroa.067.078.i.i.i.i.i.i ; 2 uses
  %i.fp = getelementptr [4 x i8], ptr %i.ee, i64 %.057.in79.i.i.i.i.i.i
  %i.fq = getelementptr i8, ptr %i.fp, i64 48
  %i.fr = load <4 x i32>, ptr %i.fq, align 1, !tbaa !81
  %i.fs = add <4 x i32> %i.fr, %i.fl              ; 2 uses
  %.057.i.i.i.i.i.i = add nsw i64 %.05780.i.i.i.i.i.i, 8 ; 2 uses
  %i.ft = icmp slt i64 %.057.i.i.i.i.i.i, %i.ez
  br i1 %i.ft, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !281

bb.x:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.ez
  %i.fv = load <4 x i32>, ptr %i.fu, align 1, !tbaa !81
  %i.fw = add <4 x i32> %i.fv, %i.fi
  %i.fx = bitcast <4 x i32> %i.fw to <2 x i64>
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge.i.i.i.i.i.i, %bb.v
  %.sroa.067.2.i.i.i.i.i.i = phi <2 x i64> [ %i.fc, %bb.v ], [ %i.fx, %bb.x ], [ %i.fj, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.fy = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i.i to <4 x i32>
  %i.fz = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i.i to <4 x i32> ; 2 uses
  %i.ga = shufflevector <4 x i32> %i.fz, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.gb = add <4 x i32> %i.ga, %i.fy              ; 2 uses
  %shift106 = shufflevector <4 x i32> %i.gb, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop107 = add nsw <4 x i32> %i.gb, %shift106
  %3 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fz) ; 2 uses
  %i.gc = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.gc, label %.lr.ph85.i.i.i.i.i.i.preheader, label %.preheader.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i.preheader:                   ; preds = %bb.y
  %min.iters.check48 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check48, label %.lr.ph85.i.i.i.i.i.i.preheader119, label %vector.ph49

vector.ph49:                                      ; preds = %.lr.ph85.i.i.i.i.i.i.preheader
  %n.vec50 = and i64 %.0.i.i.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.gd = shufflevector <4 x i32> %foldExtExtBinop107, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body51

vector.body51:                                    ; preds = %vector.body51, %vector.ph49
  %index52 = phi i64 [ 0, %vector.ph49 ], [ %index.next57, %vector.body51 ] ; 2 uses
  %vec.phi53 = phi <4 x i32> [ %i.gd, %vector.ph49 ], [ %i.gg, %vector.body51 ]
  %vec.phi54 = phi <4 x i32> [ zeroinitializer, %vector.ph49 ], [ %i.gh, %vector.body51 ]
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %index52 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %wide.load55 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !154
  %wide.load56 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !154
  %i.gg = add <4 x i32> %wide.load55, %vec.phi53  ; 2 uses
  %i.gh = add <4 x i32> %wide.load56, %vec.phi54  ; 2 uses
  %index.next57 = add nuw i64 %index52, 8         ; 2 uses
  %i.gi = icmp eq i64 %index.next57, %n.vec50
  br i1 %i.gi, label %middle.block58, label %vector.body51, !llvm.loop !482

middle.block58:                                   ; preds = %vector.body51
  %bin.rdx59 = add <4 x i32> %i.gh, %i.gg
  %i.gj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx59) ; 2 uses
  %cmp.n60 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i, %n.vec50
  br i1 %cmp.n60, label %.preheader.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.preheader119

.lr.ph85.i.i.i.i.i.i.preheader119:                ; preds = %.lr.ph85.i.i.i.i.i.i.preheader, %middle.block58
  %.05683.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.i.i.preheader ], [ %n.vec50, %middle.block58 ]
  %.07582.i.i.i.i.i.i.ph = phi i32 [ %3, %.lr.ph85.i.i.i.i.i.i.preheader ], [ %i.gj, %middle.block58 ]
  br label %.lr.ph85.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph85.i.i.i.i.i.i, %middle.block58, %bb.y
  %.075.lcssa.i.i.i.i.i.i = phi i32 [ %3, %bb.y ], [ %i.gj, %middle.block58 ], [ %i.gz, %.lr.ph85.i.i.i.i.i.i ] ; 3 uses
  %i.gk = icmp slt i64 %i.fa, %i.d
  br i1 %i.gk, label %.lr.ph89.i.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i.i

.lr.ph89.i.i.i.i.i.i.preheader:                   ; preds = %.preheader.i.i.i.i.i.i
  %i.gl = shl nsw i64 %i.ex, 2
  %i.gm = add i64 %.0.i.i.i.i.i.i.i.i.i.i, %i.gl
  %i.gn = sub i64 %i.d, %i.gm                     ; 3 uses
  %min.iters.check64 = icmp ult i64 %i.gn, 8
  br i1 %min.iters.check64, label %.lr.ph89.i.i.i.i.i.i.preheader114, label %vector.ph65

vector.ph65:                                      ; preds = %.lr.ph89.i.i.i.i.i.i.preheader
  %n.vec66 = and i64 %i.gn, -8                    ; 3 uses
  %i.go = add i64 %i.fa, %n.vec66
  %i.gp = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i.i.i, i64 0
  %i.gq = getelementptr [4 x i8], ptr %i.ee, i64 %i.fa
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph65
  %index68 = phi i64 [ 0, %vector.ph65 ], [ %index.next73, %vector.body67 ] ; 2 uses
  %vec.phi69 = phi <4 x i32> [ %i.gp, %vector.ph65 ], [ %i.gt, %vector.body67 ]
  %vec.phi70 = phi <4 x i32> [ zeroinitializer, %vector.ph65 ], [ %i.gu, %vector.body67 ]
  %i.gr = getelementptr [4 x i8], ptr %i.gq, i64 %index68 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %wide.load71 = load <4 x i32>, ptr %i.gr, align 4, !tbaa !154
  %wide.load72 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !154
  %i.gt = add <4 x i32> %wide.load71, %vec.phi69  ; 2 uses
  %i.gu = add <4 x i32> %wide.load72, %vec.phi70  ; 2 uses
  %index.next73 = add nuw i64 %index68, 8         ; 2 uses
  %i.gv = icmp eq i64 %index.next73, %n.vec66
  br i1 %i.gv, label %middle.block74, label %vector.body67, !llvm.loop !483

middle.block74:                                   ; preds = %vector.body67
  %bin.rdx75 = add <4 x i32> %i.gu, %i.gt
  %i.gw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx75) ; 2 uses
  %cmp.n76 = icmp eq i64 %i.gn, %n.vec66
  br i1 %cmp.n76, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i.i, label %.lr.ph89.i.i.i.i.i.i.preheader114

.lr.ph89.i.i.i.i.i.i.preheader114:                ; preds = %.lr.ph89.i.i.i.i.i.i.preheader, %middle.block74
  %.05588.i.i.i.i.i.i.ph = phi i64 [ %i.fa, %.lr.ph89.i.i.i.i.i.i.preheader ], [ %i.go, %middle.block74 ]
  %.187.i.i.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i.i.i, %.lr.ph89.i.i.i.i.i.i.preheader ], [ %i.gw, %middle.block74 ]
  br label %.lr.ph89.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i:                             ; preds = %.lr.ph85.i.i.i.i.i.i.preheader119, %.lr.ph85.i.i.i.i.i.i
  %.05683.i.i.i.i.i.i = phi i64 [ %i.ha, %.lr.ph85.i.i.i.i.i.i ], [ %.05683.i.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.i.preheader119 ] ; 2 uses
  %.07582.i.i.i.i.i.i = phi i32 [ %i.gz, %.lr.ph85.i.i.i.i.i.i ], [ %.07582.i.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.i.preheader119 ]
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.05683.i.i.i.i.i.i
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !154
  %i.gz = add nsw i32 %i.gy, %.07582.i.i.i.i.i.i  ; 2 uses
  %i.ha = add nuw nsw i64 %.05683.i.i.i.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ha, %.0.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i, !llvm.loop !484

.lr.ph89.i.i.i.i.i.i:                             ; preds = %.lr.ph89.i.i.i.i.i.i.preheader114, %.lr.ph89.i.i.i.i.i.i
  %.05588.i.i.i.i.i.i = phi i64 [ %i.he, %.lr.ph89.i.i.i.i.i.i ], [ %.05588.i.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.i.preheader114 ] ; 2 uses
  %.187.i.i.i.i.i.i = phi i32 [ %i.hd, %.lr.ph89.i.i.i.i.i.i ], [ %.187.i.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.i.preheader114 ]
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %.05588.i.i.i.i.i.i
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !154
  %i.hd = add nsw i32 %i.hc, %.187.i.i.i.i.i.i    ; 2 uses
  %i.he = add nsw i64 %.05588.i.i.i.i.i.i, 1      ; 2 uses
  %i.hf = icmp slt i64 %i.he, %i.d
  br i1 %i.hf, label %.lr.ph89.i.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i.i, !llvm.loop !485

bb.z:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i
  %i.hg = load i32, ptr %i.ee, align 4, !tbaa !154 ; 3 uses
  %i.hh = icmp sgt i64 %i.d, 1
  br i1 %i.hh, label %.lr.ph94.i.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i.i

.lr.ph94.i.i.i.i.i.i.preheader:                   ; preds = %bb.z
  %i.hi = add nsw i64 %i.d, -1                    ; 2 uses
  %min.iters.check80 = icmp ult i64 %i.d, 9
  br i1 %min.iters.check80, label %.lr.ph94.i.i.i.i.i.i.preheader110, label %vector.ph81

vector.ph81:                                      ; preds = %.lr.ph94.i.i.i.i.i.i.preheader
  %n.vec82 = and i64 %i.hi, -8                    ; 3 uses
  %i.hj = or disjoint i64 %n.vec82, 1
  %i.hk = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.hg, i64 0
  br label %vector.body83

vector.body83:                                    ; preds = %vector.body83, %vector.ph81
  %index84 = phi i64 [ 0, %vector.ph81 ], [ %index.next89, %vector.body83 ] ; 2 uses
  %vec.phi85 = phi <4 x i32> [ %i.hk, %vector.ph81 ], [ %i.ho, %vector.body83 ]
  %vec.phi86 = phi <4 x i32> [ zeroinitializer, %vector.ph81 ], [ %i.hp, %vector.body83 ]
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %index84 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 20
  %wide.load87 = load <4 x i32>, ptr %i.hm, align 4, !tbaa !154
  %wide.load88 = load <4 x i32>, ptr %i.hn, align 4, !tbaa !154
  %i.ho = add <4 x i32> %wide.load87, %vec.phi85  ; 2 uses
  %i.hp = add <4 x i32> %wide.load88, %vec.phi86  ; 2 uses
  %index.next89 = add nuw i64 %index84, 8         ; 2 uses
  %i.hq = icmp eq i64 %index.next89, %n.vec82
  br i1 %i.hq, label %middle.block90, label %vector.body83, !llvm.loop !486

middle.block90:                                   ; preds = %vector.body83
  %bin.rdx91 = add <4 x i32> %i.hp, %i.ho
  %i.hr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx91) ; 2 uses
  %cmp.n92 = icmp eq i64 %i.hi, %n.vec82
  br i1 %cmp.n92, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i.i, label %.lr.ph94.i.i.i.i.i.i.preheader110

.lr.ph94.i.i.i.i.i.i.preheader110:                ; preds = %.lr.ph94.i.i.i.i.i.i.preheader, %middle.block90
  %.092.i.i.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.i.i.preheader ], [ %i.hj, %middle.block90 ]
  %.291.i.i.i.i.i.i.ph = phi i32 [ %i.hg, %.lr.ph94.i.i.i.i.i.i.preheader ], [ %i.hr, %middle.block90 ]
  br label %.lr.ph94.i.i.i.i.i.i

.lr.ph94.i.i.i.i.i.i:                             ; preds = %.lr.ph94.i.i.i.i.i.i.preheader110, %.lr.ph94.i.i.i.i.i.i
  %.092.i.i.i.i.i.i = phi i64 [ %i.hv, %.lr.ph94.i.i.i.i.i.i ], [ %.092.i.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.i.preheader110 ] ; 2 uses
  %.291.i.i.i.i.i.i = phi i32 [ %i.hu, %.lr.ph94.i.i.i.i.i.i ], [ %.291.i.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.i.preheader110 ]
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.092.i.i.i.i.i.i
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !154
  %i.hu = add nsw i32 %i.ht, %.291.i.i.i.i.i.i    ; 2 uses
  %i.hv = add nuw nsw i64 %.092.i.i.i.i.i.i, 1    ; 2 uses
  %exitcond102.not.i.i.i.i.i.i = icmp eq i64 %i.hv, %i.d
  br i1 %exitcond102.not.i.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i.i, label %.lr.ph94.i.i.i.i.i.i, !llvm.loop !487

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i.i: ; preds = %.lr.ph89.i.i.i.i.i.i, %.lr.ph94.i.i.i.i.i.i, %middle.block74, %middle.block90, %bb.z, %.preheader.i.i.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.hu, %.lr.ph94.i.i.i.i.i.i ], [ %.075.lcssa.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ %i.hg, %bb.z ], [ %i.hr, %middle.block90 ], [ %i.gw, %middle.block74 ], [ %i.hd, %.lr.ph89.i.i.i.i.i.i ]
  %i.hw = sext i32 %.0.i.i.i.i to i64
  br label %_ZNK5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE16nonZerosEstimateEv.exit

_ZNK5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE16nonZerosEstimateEv.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i.i, %bb.s, %bb.r
  %.0.i.i.i146 = phi i64 [ %i.em, %bb.r ], [ %i.hw, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i.i ], [ 0, %bb.s ]
  %i.hx = add nsw i64 %.0.i.i.i146, %.0.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  store i64 0, ptr %i.hy, align 8, !tbaa !169
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !334
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !335
  %i.id = shl i64 %i.ic, 2
  %i.ie = add i64 %i.id, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ia, i8 0, i64 %i.ie, i1 false)
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !340 ; 2 uses
  %.not.i = icmp eq ptr %i.ig, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi1EiE7setZeroEv.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE16nonZerosEstimateEv.exit
  %i.ih = load i64, ptr %i.ib, align 8, !tbaa !335
  %i.ii = shl i64 %i.ih, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ig, i8 0, i64 %i.ii, i1 false)
  br label %_ZN5Eigen12SparseMatrixIdLi1EiE7setZeroEv.exit

_ZN5Eigen12SparseMatrixIdLi1EiE7setZeroEv.exit:   ; preds = %_ZNK5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE16nonZerosEstimateEv.exit, %bb.aa
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.ij, i64 noundef %i.hx)
          to label %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveEl.exit.preheader unwind label %bb.ae

_ZN5Eigen12SparseMatrixIdLi1EiE7reserveEl.exit.preheader: ; preds = %_ZN5Eigen12SparseMatrixIdLi1EiE7setZeroEv.exit
  %i.ik = icmp sgt i64 %i.d, 0
  br i1 %i.ik, label %.lr.ph75, label %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveEl.exit._crit_edge

.lr.ph75:                                         ; preds = %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveEl.exit.preheader
  %i.il = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.im = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.in = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  br label %bb.af
end_hunk_3
begin_hunk_4_@_ZN5Eigen8internal43conservative_sparse_sparse_product_selectorINS_12SparseMatrixIdLi0EiEES3_S3_Li0ELi0ELi0EE3runERKS3_S6_RS3_:bb.a
  br label %bb.z

bb.z:                                             ; preds = %.body, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bc, %bb.x ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %common.resume

bb.aa:                                            ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit21, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5Eigen8internalL39conservative_sparse_sparse_product_implINS_12SparseMatrixIdLi0EiEES3_S3_EEvRKT_RKT0_RT1_b(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 noundef zeroext %3) unnamed_addr #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !168  ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !49   ; 14 uses
  %i.e = icmp ugt i64 %i.b, 131072                ; 5 uses
  br i1 %i.e, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.b) #30 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !140
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.b
  %i.i = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.i, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.j = shl nuw i64 %i.b, 3
  br label %bb.e

bb.d:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !140
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
          to label %.noexc140 unwind label %.split

.noexc140:                                        ; preds = %bb.d
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.l = add nuw nsw i64 %i.b, 15
  %i.m = alloca i8, i64 %i.l, align 16            ; 2 uses
  %i.n = shl nuw nsw i64 %i.b, 3                  ; 3 uses
  %i.o = icmp samesign ult i64 %i.b, 16385
  br i1 %i.o, label %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread, label %bb.e

_ZN5Eigen8internal14aligned_mallocEm.exit143.thread: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.p = add nuw nsw i64 %i.n, 15
  %i.q = alloca i8, i64 %i.p, align 16
  %i.r = add nuw nsw i64 %i.n, 15
  %i.s = alloca i8, i64 %i.r, align 16
  br label %bb.h

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.t = phi i64 [ %i.j, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread ], [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ] ; 2 uses
  %i.u = phi ptr [ %i.f, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread ], [ %i.m, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ] ; 3 uses
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.t) #30 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit143

bb.f:                                             ; preds = %bb.e
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !140
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
          to label %.noexc142 unwind label %.split261

.noexc142:                                        ; preds = %bb.f
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit143:     ; preds = %bb.e
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.t) #30 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit143
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aa, align 8, !tbaa !140
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
          to label %.noexc147 unwind label %.split265

.noexc147:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit143, %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread
  %i.ab = phi i1 [ false, %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread ], [ true, %_ZN5Eigen8internal14aligned_mallocEm.exit143 ] ; 2 uses
  %i.ac = phi ptr [ %i.q, %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread ], [ %i.v, %_ZN5Eigen8internal14aligned_mallocEm.exit143 ] ; 7 uses
  %i.ad = phi ptr [ %i.m, %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread ], [ %i.u, %_ZN5Eigen8internal14aligned_mallocEm.exit143 ] ; 7 uses
  %i.ae = phi ptr [ %i.s, %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread ], [ %i.y, %_ZN5Eigen8internal14aligned_mallocEm.exit143 ] ; 8 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ad, i8 0, i64 %i.b, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !136 ; 13 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !135 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !49
  %i.am = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !154
  %i.ao = load i32, ptr %i.aj, align 4, !tbaa !154
  %i.ap = sub nsw i32 %i.an, %i.ao
  %i.aq = sext i32 %i.ap to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !49 ; 11 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.av = and i64 %i.au, 3
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.l, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.aw = lshr exact i64 %i.au, 2
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = and i64 %i.ax, 3
  %i.az = tail call i64 @llvm.smin.i64(i64 %i.ay, i64 %i.as)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.az, %bb.l ], [ %i.as, %bb.k ] ; 12 uses
  %i.ba = sub nsw i64 %i.as, %.0.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.bb = sdiv i64 %i.ba, 8
  %i.bc = shl nsw i64 %i.bb, 3                    ; 2 uses
  %i.bd = sdiv i64 %i.ba, 4                       ; 2 uses
  %i.be = shl nsw i64 %i.bd, 2                    ; 2 uses
  %i.bf = add nsw i64 %i.bc, %.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bg = add nsw i64 %i.be, %.0.i.i.i.i.i.i.i.i.i ; 4 uses
  %.off.i.i.i.i.i = add i64 %i.ba, 3
  %.not.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i, 7
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i
  %i.bh = getelementptr [4 x i8], ptr %i.ag, i64 %.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bi = load <2 x i64>, ptr %i.bh, align 1, !tbaa !81 ; 2 uses
  %i.bj = icmp sgt i64 %i.ba, 7
  br i1 %i.bj, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr i8, ptr %i.bh, i64 16
  %i.bl = load <4 x i32>, ptr %i.bk, align 1, !tbaa !81 ; 2 uses
  %i.bm = bitcast <2 x i64> %i.bi to <4 x i32>    ; 2 uses
  %i.bn = icmp samesign ugt i64 %i.ba, 15
  br i1 %i.bn, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.n
  %.05777.i.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.n
  %.lcssa.i.i.i.i.i = phi <4 x i32> [ %i.bl, %bb.n ], [ %i.by, %.lr.ph.i.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i.i = phi <4 x i32> [ %i.bm, %bb.n ], [ %i.bu, %.lr.ph.i.i.i.i.i ]
  %i.bo = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i.i, %.lcssa.i.i.i.i.i ; 2 uses
  %i.bp = bitcast <4 x i32> %i.bo to <2 x i64>
  %i.bq = icmp sgt i64 %i.be, %i.bc
  br i1 %i.bq, label %bb.o, label %bb.p

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.05780.i.i.i.i.i = phi i64 [ %.057.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.05777.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i.i = phi i64 [ %.05780.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ]
  %.sroa.067.078.i.i.i.i.i = phi <4 x i32> [ %i.bu, %.lr.ph.i.i.i.i.i ], [ %i.bm, %.lr.ph.preheader.i.i.i.i.i ]
  %i.br = phi <4 x i32> [ %i.by, %.lr.ph.i.i.i.i.i ], [ %i.bl, %.lr.ph.preheader.i.i.i.i.i ]
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %.05780.i.i.i.i.i
  %i.bt = load <4 x i32>, ptr %i.bs, align 1, !tbaa !81
  %i.bu = add <4 x i32> %i.bt, %.sroa.067.078.i.i.i.i.i ; 2 uses
  %i.bv = getelementptr [4 x i8], ptr %i.ag, i64 %.057.in79.i.i.i.i.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 48
  %i.bx = load <4 x i32>, ptr %i.bw, align 1, !tbaa !81
  %i.by = add <4 x i32> %i.bx, %i.br              ; 2 uses
  %.057.i.i.i.i.i = add nsw i64 %.05780.i.i.i.i.i, 8 ; 2 uses
  %i.bz = icmp slt i64 %.057.i.i.i.i.i, %i.bf
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !281

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.bf
  %i.cb = load <4 x i32>, ptr %i.ca, align 1, !tbaa !81
  %i.cc = add <4 x i32> %i.cb, %i.bo
  %i.cd = bitcast <4 x i32> %i.cc to <2 x i64>
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i.i, %bb.m
  %.sroa.067.2.i.i.i.i.i = phi <2 x i64> [ %i.bi, %bb.m ], [ %i.cd, %bb.o ], [ %i.bp, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ce = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i to <4 x i32>
  %i.cf = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i to <4 x i32> ; 2 uses
  %i.cg = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ch = add <4 x i32> %i.cg, %i.ce              ; 2 uses
  %shift = shufflevector <4 x i32> %i.ch, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.ch, %shift
  %4 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cf) ; 2 uses
  %i.ci = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ci, label %.lr.ph85.i.i.i.i.i.preheader, label %.preheader.i.i.i.i.i

.lr.ph85.i.i.i.i.i.preheader:                     ; preds = %bb.p
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.i.preheader515, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.cj = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cj, %vector.ph ], [ %i.cm, %vector.body ]
  %vec.phi391 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cn, %vector.body ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %wide.load = load <4 x i32>, ptr %i.ck, align 4, !tbaa !154
  %wide.load392 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !154
  %i.cm = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.cn = add <4 x i32> %wide.load392, %vec.phi391 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !595

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cn, %i.cm
  %i.cp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.preheader515

.lr.ph85.i.i.i.i.i.preheader515:                  ; preds = %.lr.ph85.i.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.i.ph = phi i32 [ %4, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.cp, %middle.block ]
  br label %.lr.ph85.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph85.i.i.i.i.i, %middle.block, %bb.p
  %.075.lcssa.i.i.i.i.i = phi i32 [ %4, %bb.p ], [ %i.cp, %middle.block ], [ %i.df, %.lr.ph85.i.i.i.i.i ] ; 3 uses
  %i.cq = icmp slt i64 %i.bg, %i.as
  br i1 %i.cq, label %.lr.ph89.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i

.lr.ph89.i.i.i.i.i.preheader:                     ; preds = %.preheader.i.i.i.i.i
  %i.cr = shl nsw i64 %i.bd, 2
  %i.cs = add i64 %.0.i.i.i.i.i.i.i.i.i, %i.cr
  %i.ct = sub i64 %i.as, %i.cs                    ; 3 uses
  %min.iters.check394 = icmp ult i64 %i.ct, 8
  br i1 %min.iters.check394, label %.lr.ph89.i.i.i.i.i.preheader510, label %vector.ph395

vector.ph395:                                     ; preds = %.lr.ph89.i.i.i.i.i.preheader
  %n.vec396 = and i64 %i.ct, -8                   ; 3 uses
  %i.cu = add i64 %i.bg, %n.vec396
  %i.cv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i.i, i64 0
  %i.cw = getelementptr [4 x i8], ptr %i.ag, i64 %i.bg
  br label %vector.body397

vector.body397:                                   ; preds = %vector.body397, %vector.ph395
  %index398 = phi i64 [ 0, %vector.ph395 ], [ %index.next403, %vector.body397 ] ; 2 uses
  %vec.phi399 = phi <4 x i32> [ %i.cv, %vector.ph395 ], [ %i.cz, %vector.body397 ]
  %vec.phi400 = phi <4 x i32> [ zeroinitializer, %vector.ph395 ], [ %i.da, %vector.body397 ]
  %i.cx = getelementptr [4 x i8], ptr %i.cw, i64 %index398 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load401 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !154
  %wide.load402 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !154
  %i.cz = add <4 x i32> %wide.load401, %vec.phi399 ; 2 uses
  %i.da = add <4 x i32> %wide.load402, %vec.phi400 ; 2 uses
  %index.next403 = add nuw i64 %index398, 8       ; 2 uses
  %i.db = icmp eq i64 %index.next403, %n.vec396
  br i1 %i.db, label %middle.block404, label %vector.body397, !llvm.loop !596

middle.block404:                                  ; preds = %vector.body397
  %bin.rdx405 = add <4 x i32> %i.da, %i.cz
  %i.dc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx405) ; 2 uses
  %cmp.n406 = icmp eq i64 %i.ct, %n.vec396
  br i1 %cmp.n406, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph89.i.i.i.i.i.preheader510

.lr.ph89.i.i.i.i.i.preheader510:                  ; preds = %.lr.ph89.i.i.i.i.i.preheader, %middle.block404
  %.05588.i.i.i.i.i.ph = phi i64 [ %i.bg, %.lr.ph89.i.i.i.i.i.preheader ], [ %i.cu, %middle.block404 ]
  %.187.i.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i.i, %.lr.ph89.i.i.i.i.i.preheader ], [ %i.dc, %middle.block404 ]
  br label %.lr.ph89.i.i.i.i.i

.lr.ph85.i.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i.i.preheader515, %.lr.ph85.i.i.i.i.i
  %.05683.i.i.i.i.i = phi i64 [ %i.dg, %.lr.ph85.i.i.i.i.i ], [ %.05683.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.preheader515 ] ; 2 uses
  %.07582.i.i.i.i.i = phi i32 [ %i.df, %.lr.ph85.i.i.i.i.i ], [ %.07582.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.preheader515 ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.05683.i.i.i.i.i
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !154
  %i.df = add nsw i32 %i.de, %.07582.i.i.i.i.i    ; 2 uses
  %i.dg = add nuw nsw i64 %.05683.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.dg, %.0.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i, !llvm.loop !597

.lr.ph89.i.i.i.i.i:                               ; preds = %.lr.ph89.i.i.i.i.i.preheader510, %.lr.ph89.i.i.i.i.i
  %.05588.i.i.i.i.i = phi i64 [ %i.dk, %.lr.ph89.i.i.i.i.i ], [ %.05588.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader510 ] ; 2 uses
  %.187.i.i.i.i.i = phi i32 [ %i.dj, %.lr.ph89.i.i.i.i.i ], [ %.187.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader510 ]
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %.05588.i.i.i.i.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !154
  %i.dj = add nsw i32 %i.di, %.187.i.i.i.i.i      ; 2 uses
  %i.dk = add nsw i64 %.05588.i.i.i.i.i, 1        ; 2 uses
  %i.dl = icmp slt i64 %i.dk, %i.as
  br i1 %i.dl, label %.lr.ph89.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, !llvm.loop !598

bb.q:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i
  %i.dm = load i32, ptr %i.ag, align 4, !tbaa !154 ; 3 uses
  %i.dn = icmp sgt i64 %i.as, 1
  br i1 %i.dn, label %.lr.ph94.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i

.lr.ph94.i.i.i.i.i.preheader:                     ; preds = %bb.q
  %i.do = add nsw i64 %i.as, -1                   ; 2 uses
  %min.iters.check410 = icmp ult i64 %i.as, 9
  br i1 %min.iters.check410, label %.lr.ph94.i.i.i.i.i.preheader506, label %vector.ph411

vector.ph411:                                     ; preds = %.lr.ph94.i.i.i.i.i.preheader
  %n.vec412 = and i64 %i.do, -8                   ; 3 uses
  %i.dp = or disjoint i64 %n.vec412, 1
  %i.dq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.dm, i64 0
  br label %vector.body413

vector.body413:                                   ; preds = %vector.body413, %vector.ph411
  %index414 = phi i64 [ 0, %vector.ph411 ], [ %index.next419, %vector.body413 ] ; 2 uses
  %vec.phi415 = phi <4 x i32> [ %i.dq, %vector.ph411 ], [ %i.du, %vector.body413 ]
  %vec.phi416 = phi <4 x i32> [ zeroinitializer, %vector.ph411 ], [ %i.dv, %vector.body413 ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index414 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  %wide.load417 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !154
  %wide.load418 = load <4 x i32>, ptr %i.dt, align 4, !tbaa !154
  %i.du = add <4 x i32> %wide.load417, %vec.phi415 ; 2 uses
  %i.dv = add <4 x i32> %wide.load418, %vec.phi416 ; 2 uses
  %index.next419 = add nuw i64 %index414, 8       ; 2 uses
  %i.dw = icmp eq i64 %index.next419, %n.vec412
  br i1 %i.dw, label %middle.block420, label %vector.body413, !llvm.loop !599

middle.block420:                                  ; preds = %vector.body413
  %bin.rdx421 = add <4 x i32> %i.dv, %i.du
  %i.dx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx421) ; 2 uses
  %cmp.n422 = icmp eq i64 %i.do, %n.vec412
  br i1 %cmp.n422, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i.preheader506

.lr.ph94.i.i.i.i.i.preheader506:                  ; preds = %.lr.ph94.i.i.i.i.i.preheader, %middle.block420
  %.092.i.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.i.preheader ], [ %i.dp, %middle.block420 ]
  %.291.i.i.i.i.i.ph = phi i32 [ %i.dm, %.lr.ph94.i.i.i.i.i.preheader ], [ %i.dx, %middle.block420 ]
  br label %.lr.ph94.i.i.i.i.i

.lr.ph94.i.i.i.i.i:                               ; preds = %.lr.ph94.i.i.i.i.i.preheader506, %.lr.ph94.i.i.i.i.i
  %.092.i.i.i.i.i = phi i64 [ %i.eb, %.lr.ph94.i.i.i.i.i ], [ %.092.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.preheader506 ] ; 2 uses
  %.291.i.i.i.i.i = phi i32 [ %i.ea, %.lr.ph94.i.i.i.i.i ], [ %.291.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.preheader506 ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.092.i.i.i.i.i
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !154
  %i.ea = add nsw i32 %i.dz, %.291.i.i.i.i.i      ; 2 uses
  %i.eb = add nuw nsw i64 %.092.i.i.i.i.i, 1      ; 2 uses
  %exitcond102.not.i.i.i.i.i = icmp eq i64 %i.eb, %i.as
  br i1 %exitcond102.not.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i, !llvm.loop !600

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i: ; preds = %.lr.ph89.i.i.i.i.i, %.lr.ph94.i.i.i.i.i, %middle.block404, %middle.block420, %bb.q, %.preheader.i.i.i.i.i
  %.0.i.i.i = phi i32 [ %i.ea, %.lr.ph94.i.i.i.i.i ], [ %.075.lcssa.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.dm, %bb.q ], [ %i.dx, %middle.block420 ], [ %i.dc, %middle.block404 ], [ %i.dj, %.lr.ph89.i.i.i.i.i ]
  %i.ec = sext i32 %.0.i.i.i to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit

_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, %bb.j, %bb.i
  %.0.i.i = phi i64 [ %i.aq, %bb.i ], [ %i.ec, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i ], [ 0, %bb.j ]
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !136 ; 13 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !135 ; 2 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.d
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !154
  %i.ek = load i32, ptr %i.eh, align 4, !tbaa !154
  %i.el = sub nsw i32 %i.ej, %i.ek
  %i.em = sext i32 %i.el to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit183

bb.s:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit
  %i.en = icmp eq i64 %i.d, 0
  br i1 %i.en, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit183, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eo = ptrtoint ptr %i.ee to i64               ; 2 uses
  %i.ep = and i64 %i.eo, 3
  %.not.i.i.i.i.i.i.i.i.i149 = icmp eq i64 %i.ep, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i149, label %bb.u, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i150

bb.u:                                             ; preds = %bb.t
  %i.eq = lshr exact i64 %i.eo, 2
  %i.er = sub nsw i64 0, %i.eq
  %i.es = and i64 %i.er, 3
  %i.et = tail call i64 @llvm.smin.i64(i64 %i.es, i64 %i.d)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i150

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i150: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i.i.i151 = phi i64 [ %i.et, %bb.u ], [ %i.d, %bb.t ] ; 12 uses
  %i.eu = sub nsw i64 %i.d, %.0.i.i.i.i.i.i.i.i.i151 ; 5 uses
  %i.ev = sdiv i64 %i.eu, 8
  %i.ew = shl nsw i64 %i.ev, 3                    ; 2 uses
  %i.ex = sdiv i64 %i.eu, 4                       ; 2 uses
  %i.ey = shl nsw i64 %i.ex, 2                    ; 2 uses
  %i.ez = add nsw i64 %i.ew, %.0.i.i.i.i.i.i.i.i.i151 ; 2 uses
  %i.fa = add nsw i64 %i.ey, %.0.i.i.i.i.i.i.i.i.i151 ; 4 uses
  %.off.i.i.i.i.i152 = add i64 %i.eu, 3
  %.not.i.i.i.i.i153 = icmp ult i64 %.off.i.i.i.i.i152, 7
  br i1 %.not.i.i.i.i.i153, label %bb.z, label %bb.v

bb.v:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i150
  %i.fb = getelementptr [4 x i8], ptr %i.ee, i64 %.0.i.i.i.i.i.i.i.i.i151 ; 2 uses
  %i.fc = load <2 x i64>, ptr %i.fb, align 1, !tbaa !81 ; 2 uses
  %i.fd = icmp sgt i64 %i.eu, 7
  br i1 %i.fd, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.fe = getelementptr i8, ptr %i.fb, i64 16
  %i.ff = load <4 x i32>, ptr %i.fe, align 1, !tbaa !81 ; 2 uses
  %i.fg = bitcast <2 x i64> %i.fc to <4 x i32>    ; 2 uses
  %i.fh = icmp samesign ugt i64 %i.eu, 15
  br i1 %i.fh, label %.lr.ph.preheader.i.i.i.i.i172, label %._crit_edge.i.i.i.i.i169

.lr.ph.preheader.i.i.i.i.i172:                    ; preds = %bb.w
  %.05777.i.i.i.i.i173 = add nsw i64 %.0.i.i.i.i.i.i.i.i.i151, 8
  br label %.lr.ph.i.i.i.i.i174

._crit_edge.i.i.i.i.i169:                         ; preds = %.lr.ph.i.i.i.i.i174, %bb.w
  %.lcssa.i.i.i.i.i170 = phi <4 x i32> [ %i.ff, %bb.w ], [ %i.fs, %.lr.ph.i.i.i.i.i174 ]
  %.sroa.067.0.lcssa.i.i.i.i.i171 = phi <4 x i32> [ %i.fg, %bb.w ], [ %i.fo, %.lr.ph.i.i.i.i.i174 ]
  %i.fi = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i.i171, %.lcssa.i.i.i.i.i170 ; 2 uses
  %i.fj = bitcast <4 x i32> %i.fi to <2 x i64>
  %i.fk = icmp sgt i64 %i.ey, %i.ew
  br i1 %i.fk, label %bb.x, label %bb.y

.lr.ph.i.i.i.i.i174:                              ; preds = %.lr.ph.i.i.i.i.i174, %.lr.ph.preheader.i.i.i.i.i172
  %.05780.i.i.i.i.i175 = phi i64 [ %.057.i.i.i.i.i178, %.lr.ph.i.i.i.i.i174 ], [ %.05777.i.i.i.i.i173, %.lr.ph.preheader.i.i.i.i.i172 ] ; 3 uses
  %.057.in79.i.i.i.i.i176 = phi i64 [ %.05780.i.i.i.i.i175, %.lr.ph.i.i.i.i.i174 ], [ %.0.i.i.i.i.i.i.i.i.i151, %.lr.ph.preheader.i.i.i.i.i172 ]
  %.sroa.067.078.i.i.i.i.i177 = phi <4 x i32> [ %i.fo, %.lr.ph.i.i.i.i.i174 ], [ %i.fg, %.lr.ph.preheader.i.i.i.i.i172 ]
  %i.fl = phi <4 x i32> [ %i.fs, %.lr.ph.i.i.i.i.i174 ], [ %i.ff, %.lr.ph.preheader.i.i.i.i.i172 ]
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %.05780.i.i.i.i.i175
  %i.fn = load <4 x i32>, ptr %i.fm, align 1, !tbaa !81
  %i.fo = add <4 x i32> %i.fn, %.sroa.067.078.i.i.i.i.i177 ; 2 uses
  %i.fp = getelementptr [4 x i8], ptr %i.ee, i64 %.057.in79.i.i.i.i.i176
  %i.fq = getelementptr i8, ptr %i.fp, i64 48
  %i.fr = load <4 x i32>, ptr %i.fq, align 1, !tbaa !81
  %i.fs = add <4 x i32> %i.fr, %i.fl              ; 2 uses
  %.057.i.i.i.i.i178 = add nsw i64 %.05780.i.i.i.i.i175, 8 ; 2 uses
  %i.ft = icmp slt i64 %.057.i.i.i.i.i178, %i.ez
  br i1 %i.ft, label %.lr.ph.i.i.i.i.i174, label %._crit_edge.i.i.i.i.i169, !llvm.loop !281

bb.x:                                             ; preds = %._crit_edge.i.i.i.i.i169
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.ez
  %i.fv = load <4 x i32>, ptr %i.fu, align 1, !tbaa !81
  %i.fw = add <4 x i32> %i.fv, %i.fi
  %i.fx = bitcast <4 x i32> %i.fw to <2 x i64>
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge.i.i.i.i.i169, %bb.v
  %.sroa.067.2.i.i.i.i.i154 = phi <2 x i64> [ %i.fc, %bb.v ], [ %i.fx, %bb.x ], [ %i.fj, %._crit_edge.i.i.i.i.i169 ] ; 2 uses
  %i.fy = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i154 to <4 x i32>
  %i.fz = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i154 to <4 x i32> ; 2 uses
  %i.ga = shufflevector <4 x i32> %i.fz, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.gb = add <4 x i32> %i.ga, %i.fy              ; 2 uses
  %shift484 = shufflevector <4 x i32> %i.gb, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop485 = add nsw <4 x i32> %i.gb, %shift484
  %5 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fz) ; 2 uses
  %i.gc = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i151, 0
  br i1 %i.gc, label %.lr.ph85.i.i.i.i.i165.preheader, label %.preheader.i.i.i.i.i157

.lr.ph85.i.i.i.i.i165.preheader:                  ; preds = %bb.y
  %min.iters.check426 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i151, 8
  br i1 %min.iters.check426, label %.lr.ph85.i.i.i.i.i165.preheader500, label %vector.ph427

vector.ph427:                                     ; preds = %.lr.ph85.i.i.i.i.i165.preheader
  %n.vec428 = and i64 %.0.i.i.i.i.i.i.i.i.i151, 9223372036854775800 ; 3 uses
  %i.gd = shufflevector <4 x i32> %foldExtExtBinop485, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body429

vector.body429:                                   ; preds = %vector.body429, %vector.ph427
  %index430 = phi i64 [ 0, %vector.ph427 ], [ %index.next435, %vector.body429 ] ; 2 uses
  %vec.phi431 = phi <4 x i32> [ %i.gd, %vector.ph427 ], [ %i.gg, %vector.body429 ]
  %vec.phi432 = phi <4 x i32> [ zeroinitializer, %vector.ph427 ], [ %i.gh, %vector.body429 ]
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %index430 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %wide.load433 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !154
  %wide.load434 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !154
  %i.gg = add <4 x i32> %wide.load433, %vec.phi431 ; 2 uses
  %i.gh = add <4 x i32> %wide.load434, %vec.phi432 ; 2 uses
  %index.next435 = add nuw i64 %index430, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next435, %n.vec428
  br i1 %i.gi, label %middle.block436, label %vector.body429, !llvm.loop !601

middle.block436:                                  ; preds = %vector.body429
  %bin.rdx437 = add <4 x i32> %i.gh, %i.gg
  %i.gj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx437) ; 2 uses
  %cmp.n438 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i151, %n.vec428
  br i1 %cmp.n438, label %.preheader.i.i.i.i.i157, label %.lr.ph85.i.i.i.i.i165.preheader500

.lr.ph85.i.i.i.i.i165.preheader500:               ; preds = %.lr.ph85.i.i.i.i.i165.preheader, %middle.block436
  %.05683.i.i.i.i.i166.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.i165.preheader ], [ %n.vec428, %middle.block436 ]
  %.07582.i.i.i.i.i167.ph = phi i32 [ %5, %.lr.ph85.i.i.i.i.i165.preheader ], [ %i.gj, %middle.block436 ]
  br label %.lr.ph85.i.i.i.i.i165

.preheader.i.i.i.i.i157:                          ; preds = %.lr.ph85.i.i.i.i.i165, %middle.block436, %bb.y
  %.075.lcssa.i.i.i.i.i158 = phi i32 [ %5, %bb.y ], [ %i.gj, %middle.block436 ], [ %i.gz, %.lr.ph85.i.i.i.i.i165 ] ; 3 uses
  %i.gk = icmp slt i64 %i.fa, %i.d
  br i1 %i.gk, label %.lr.ph89.i.i.i.i.i162.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159

.lr.ph89.i.i.i.i.i162.preheader:                  ; preds = %.preheader.i.i.i.i.i157
  %i.gl = shl nsw i64 %i.ex, 2
  %i.gm = add i64 %.0.i.i.i.i.i.i.i.i.i151, %i.gl
  %i.gn = sub i64 %i.d, %i.gm                     ; 3 uses
  %min.iters.check442 = icmp ult i64 %i.gn, 8
  br i1 %min.iters.check442, label %.lr.ph89.i.i.i.i.i162.preheader495, label %vector.ph443

vector.ph443:                                     ; preds = %.lr.ph89.i.i.i.i.i162.preheader
  %n.vec444 = and i64 %i.gn, -8                   ; 3 uses
  %i.go = add i64 %i.fa, %n.vec444
  %i.gp = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i.i158, i64 0
  %i.gq = getelementptr [4 x i8], ptr %i.ee, i64 %i.fa
  br label %vector.body445

vector.body445:                                   ; preds = %vector.body445, %vector.ph443
  %index446 = phi i64 [ 0, %vector.ph443 ], [ %index.next451, %vector.body445 ] ; 2 uses
  %vec.phi447 = phi <4 x i32> [ %i.gp, %vector.ph443 ], [ %i.gt, %vector.body445 ]
  %vec.phi448 = phi <4 x i32> [ zeroinitializer, %vector.ph443 ], [ %i.gu, %vector.body445 ]
  %i.gr = getelementptr [4 x i8], ptr %i.gq, i64 %index446 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %wide.load449 = load <4 x i32>, ptr %i.gr, align 4, !tbaa !154
  %wide.load450 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !154
  %i.gt = add <4 x i32> %wide.load449, %vec.phi447 ; 2 uses
  %i.gu = add <4 x i32> %wide.load450, %vec.phi448 ; 2 uses
  %index.next451 = add nuw i64 %index446, 8       ; 2 uses
  %i.gv = icmp eq i64 %index.next451, %n.vec444
  br i1 %i.gv, label %middle.block452, label %vector.body445, !llvm.loop !602

middle.block452:                                  ; preds = %vector.body445
  %bin.rdx453 = add <4 x i32> %i.gu, %i.gt
  %i.gw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx453) ; 2 uses
  %cmp.n454 = icmp eq i64 %i.gn, %n.vec444
  br i1 %cmp.n454, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, label %.lr.ph89.i.i.i.i.i162.preheader495

.lr.ph89.i.i.i.i.i162.preheader495:               ; preds = %.lr.ph89.i.i.i.i.i162.preheader, %middle.block452
  %.05588.i.i.i.i.i163.ph = phi i64 [ %i.fa, %.lr.ph89.i.i.i.i.i162.preheader ], [ %i.go, %middle.block452 ]
  %.187.i.i.i.i.i164.ph = phi i32 [ %.075.lcssa.i.i.i.i.i158, %.lr.ph89.i.i.i.i.i162.preheader ], [ %i.gw, %middle.block452 ]
  br label %.lr.ph89.i.i.i.i.i162

.lr.ph85.i.i.i.i.i165:                            ; preds = %.lr.ph85.i.i.i.i.i165.preheader500, %.lr.ph85.i.i.i.i.i165
  %.05683.i.i.i.i.i166 = phi i64 [ %i.ha, %.lr.ph85.i.i.i.i.i165 ], [ %.05683.i.i.i.i.i166.ph, %.lr.ph85.i.i.i.i.i165.preheader500 ] ; 2 uses
  %.07582.i.i.i.i.i167 = phi i32 [ %i.gz, %.lr.ph85.i.i.i.i.i165 ], [ %.07582.i.i.i.i.i167.ph, %.lr.ph85.i.i.i.i.i165.preheader500 ]
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.05683.i.i.i.i.i166
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !154
  %i.gz = add nsw i32 %i.gy, %.07582.i.i.i.i.i167 ; 2 uses
  %i.ha = add nuw nsw i64 %.05683.i.i.i.i.i166, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i168 = icmp eq i64 %i.ha, %.0.i.i.i.i.i.i.i.i.i151
  br i1 %exitcond.not.i.i.i.i.i168, label %.preheader.i.i.i.i.i157, label %.lr.ph85.i.i.i.i.i165, !llvm.loop !603

.lr.ph89.i.i.i.i.i162:                            ; preds = %.lr.ph89.i.i.i.i.i162.preheader495, %.lr.ph89.i.i.i.i.i162
  %.05588.i.i.i.i.i163 = phi i64 [ %i.he, %.lr.ph89.i.i.i.i.i162 ], [ %.05588.i.i.i.i.i163.ph, %.lr.ph89.i.i.i.i.i162.preheader495 ] ; 2 uses
  %.187.i.i.i.i.i164 = phi i32 [ %i.hd, %.lr.ph89.i.i.i.i.i162 ], [ %.187.i.i.i.i.i164.ph, %.lr.ph89.i.i.i.i.i162.preheader495 ]
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %.05588.i.i.i.i.i163
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !154
  %i.hd = add nsw i32 %i.hc, %.187.i.i.i.i.i164   ; 2 uses
  %i.he = add nsw i64 %.05588.i.i.i.i.i163, 1     ; 2 uses
  %i.hf = icmp slt i64 %i.he, %i.d
  br i1 %i.hf, label %.lr.ph89.i.i.i.i.i162, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, !llvm.loop !604

bb.z:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i150
  %i.hg = load i32, ptr %i.ee, align 4, !tbaa !154 ; 3 uses
  %i.hh = icmp sgt i64 %i.d, 1
  br i1 %i.hh, label %.lr.ph94.i.i.i.i.i179.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159

.lr.ph94.i.i.i.i.i179.preheader:                  ; preds = %bb.z
  %i.hi = add nsw i64 %i.d, -1                    ; 2 uses
  %min.iters.check458 = icmp ult i64 %i.d, 9
  br i1 %min.iters.check458, label %.lr.ph94.i.i.i.i.i179.preheader491, label %vector.ph459

vector.ph459:                                     ; preds = %.lr.ph94.i.i.i.i.i179.preheader
  %n.vec460 = and i64 %i.hi, -8                   ; 3 uses
  %i.hj = or disjoint i64 %n.vec460, 1
  %i.hk = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.hg, i64 0
  br label %vector.body461

vector.body461:                                   ; preds = %vector.body461, %vector.ph459
  %index462 = phi i64 [ 0, %vector.ph459 ], [ %index.next467, %vector.body461 ] ; 2 uses
  %vec.phi463 = phi <4 x i32> [ %i.hk, %vector.ph459 ], [ %i.ho, %vector.body461 ]
  %vec.phi464 = phi <4 x i32> [ zeroinitializer, %vector.ph459 ], [ %i.hp, %vector.body461 ]
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %index462 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 20
  %wide.load465 = load <4 x i32>, ptr %i.hm, align 4, !tbaa !154
  %wide.load466 = load <4 x i32>, ptr %i.hn, align 4, !tbaa !154
  %i.ho = add <4 x i32> %wide.load465, %vec.phi463 ; 2 uses
  %i.hp = add <4 x i32> %wide.load466, %vec.phi464 ; 2 uses
  %index.next467 = add nuw i64 %index462, 8       ; 2 uses
  %i.hq = icmp eq i64 %index.next467, %n.vec460
  br i1 %i.hq, label %middle.block468, label %vector.body461, !llvm.loop !605

middle.block468:                                  ; preds = %vector.body461
  %bin.rdx469 = add <4 x i32> %i.hp, %i.ho
  %i.hr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx469) ; 2 uses
  %cmp.n470 = icmp eq i64 %i.hi, %n.vec460
  br i1 %cmp.n470, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, label %.lr.ph94.i.i.i.i.i179.preheader491

.lr.ph94.i.i.i.i.i179.preheader491:               ; preds = %.lr.ph94.i.i.i.i.i179.preheader, %middle.block468
  %.092.i.i.i.i.i180.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.i179.preheader ], [ %i.hj, %middle.block468 ]
  %.291.i.i.i.i.i181.ph = phi i32 [ %i.hg, %.lr.ph94.i.i.i.i.i179.preheader ], [ %i.hr, %middle.block468 ]
  br label %.lr.ph94.i.i.i.i.i179

.lr.ph94.i.i.i.i.i179:                            ; preds = %.lr.ph94.i.i.i.i.i179.preheader491, %.lr.ph94.i.i.i.i.i179
  %.092.i.i.i.i.i180 = phi i64 [ %i.hv, %.lr.ph94.i.i.i.i.i179 ], [ %.092.i.i.i.i.i180.ph, %.lr.ph94.i.i.i.i.i179.preheader491 ] ; 2 uses
  %.291.i.i.i.i.i181 = phi i32 [ %i.hu, %.lr.ph94.i.i.i.i.i179 ], [ %.291.i.i.i.i.i181.ph, %.lr.ph94.i.i.i.i.i179.preheader491 ]
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.092.i.i.i.i.i180
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !154
  %i.hu = add nsw i32 %i.ht, %.291.i.i.i.i.i181   ; 2 uses
  %i.hv = add nuw nsw i64 %.092.i.i.i.i.i180, 1   ; 2 uses
  %exitcond102.not.i.i.i.i.i182 = icmp eq i64 %i.hv, %i.d
  br i1 %exitcond102.not.i.i.i.i.i182, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, label %.lr.ph94.i.i.i.i.i179, !llvm.loop !606

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159: ; preds = %.lr.ph89.i.i.i.i.i162, %.lr.ph94.i.i.i.i.i179, %middle.block452, %middle.block468, %bb.z, %.preheader.i.i.i.i.i157
  %.0.i.i.i160 = phi i32 [ %i.hu, %.lr.ph94.i.i.i.i.i179 ], [ %.075.lcssa.i.i.i.i.i158, %.preheader.i.i.i.i.i157 ], [ %i.hg, %bb.z ], [ %i.hr, %middle.block468 ], [ %i.gw, %middle.block452 ], [ %i.hd, %.lr.ph89.i.i.i.i.i162 ]
  %i.hw = sext i32 %.0.i.i.i160 to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit183

_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit183: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, %bb.s, %bb.r
  %.0.i.i161 = phi i64 [ %i.em, %bb.r ], [ %i.hw, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159 ], [ 0, %bb.s ]
  %i.hx = add nsw i64 %.0.i.i161, %.0.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 7 uses
  store i64 0, ptr %i.hy, align 8, !tbaa !169
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !135
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !49
  %i.id = shl i64 %i.ic, 2
  %i.ie = add i64 %i.id, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ia, i8 0, i64 %i.ie, i1 false)
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !136 ; 2 uses
  %.not.i = icmp eq ptr %i.ig, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit183
  %i.ih = load i64, ptr %i.ib, align 8, !tbaa !49
  %i.ii = shl i64 %i.ih, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ig, i8 0, i64 %i.ii, i1 false)
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit

_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit:   ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit183, %bb.aa
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 9 uses
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.ij, i64 noundef %i.hx)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit.preheader unwind label %bb.ae

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit.preheader: ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit
  %i.ik = icmp sgt i64 %i.d, 0
  br i1 %i.ik, label %.lr.ph307, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge

.lr.ph307:                                        ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit.preheader
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 9 uses
  %i.is = udiv i64 %i.b, 11
end_hunk_4
begin_hunk_5_@_ZNK5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE11_solve_implINS_7ProductINS_9TransposeIS3_EENS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0EEESD_EEvRKNS_10MatrixBaseIT_EERNSF_IT0_EE:bb.a

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.w, -4                       ; 3 uses
  %i.y = add i64 %i.s, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = add i64 %i.s, %index                     ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.z ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load = load <2 x double>, ptr %i.ab, align 8, !tbaa !43
  %wide.load125 = load <2 x double>, ptr %i.ac, align 8, !tbaa !43
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <2 x double> %wide.load, ptr %i.aa, align 8, !tbaa !43
  store <2 x double> %wide.load125, ptr %i.ad, align 8, !tbaa !43
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !1847

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_9TransposeINS_12SparseMatrixIdLi0EiEEEES2_Li0EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader268

.lr.ph.i.i.i.i.i.i.i.i.preheader268:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.y, %middle.block ] ; 4 uses
  %i.af = sub i64 %i.o, %.05.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.af, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader268, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader268 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader268 ]
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !43
  store double %i.ai, ptr %i.ag, align 8, !tbaa !43
  %i.aj = add nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !1848

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader268
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader268 ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.ak = sub i64 %.05.i.i.i.i.i.i.i.i.ph, %i.o
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_9TransposeINS_12SparseMatrixIdLi0EiEEEES2_Li0EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.05.i.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.05.i.i.i.i.i.i.i.i
  %i.ao = load double, ptr %i.an, align 8, !tbaa !43
  store double %i.ao, ptr %i.am, align 8, !tbaa !43
  %i.ap = add nsw i64 %.05.i.i.i.i.i.i.i.i, 1     ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ap
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ap
  %i.as = load double, ptr %i.ar, align 8, !tbaa !43
  store double %i.as, ptr %i.aq, align 8, !tbaa !43
  %i.at = add nsw i64 %.05.i.i.i.i.i.i.i.i, 2     ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.at
  %i.av = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.at
  %i.aw = load double, ptr %i.av, align 8, !tbaa !43
  store double %i.aw, ptr %i.au, align 8, !tbaa !43
  %i.ax = add nsw i64 %.05.i.i.i.i.i.i.i.i, 3     ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ax
  %i.az = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ax
  %i.ba = load double, ptr %i.az, align 8, !tbaa !43
  store double %i.ba, ptr %i.ay, align 8, !tbaa !43
  %i.bb = add nsw i64 %.05.i.i.i.i.i.i.i.i, 4     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bb, %i.o
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_9TransposeINS_12SparseMatrixIdLi0EiEEEES2_Li0EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1849

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.f ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.011.i.i.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.011.i.i.i.i.i.i.i
  %i.be = load <2 x double>, ptr %i.bd, align 16, !tbaa !81
  store <2 x double> %i.be, ptr %i.bc, align 16, !tbaa !81
  %i.bf = add nuw nsw i64 %.011.i.i.i.i.i.i.i, 2  ; 2 uses
  %i.bg = icmp slt i64 %i.bf, %i.s
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !1850

bb.g:                                             ; preds = %thread-pre-split.i.i.i.i.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = load ptr, ptr %3, align 8, !tbaa !42
  call void @free(ptr noundef %i.bi) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %i.bh

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_9TransposeINS_12SparseMatrixIdLi0EiEEEES2_Li0EEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i
  %i.bj = load ptr, ptr %3, align 8, !tbaa !42
  call void @free(ptr noundef %i.bj) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_9TransposeINS_12SparseMatrixIdLi0EiEEEES2_Li0EEEEERS2_RKNS_9DenseBaseIT_EE.exit, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEENS5_INS_9TransposeINS_12SparseMatrixIdLi0EiEEEES2_Li0EEELi2EEEEERS2_RKNS_9DenseBaseIT_EE.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !136 ; 13 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !135 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !49
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !154
  %i.bu = load i32, ptr %i.bp, align 4, !tbaa !154
  %i.bv = sub nsw i32 %i.bt, %i.bu
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.j:                                             ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !49 ; 11 uses
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bz = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.ca = and i64 %i.bz, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.l, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.cb = lshr exact i64 %i.bz, 2
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = and i64 %i.cc, 3
  %i.ce = call i64 @llvm.smin.i64(i64 %i.cd, i64 %i.bx)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.ce, %bb.l ], [ %i.bx, %bb.k ] ; 12 uses
  %i.cf = sub nsw i64 %i.bx, %.0.i.i.i.i.i.i.i.i  ; 5 uses
  %i.cg = sdiv i64 %i.cf, 8
  %i.ch = shl nsw i64 %i.cg, 3                    ; 2 uses
  %i.ci = sdiv i64 %i.cf, 4                       ; 2 uses
  %i.cj = shl nsw i64 %i.ci, 2                    ; 2 uses
  %i.ck = add nsw i64 %i.ch, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.cl = add nsw i64 %i.cj, %.0.i.i.i.i.i.i.i.i  ; 4 uses
  %.off.i.i.i.i = add i64 %i.cf, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.cm = getelementptr [4 x i8], ptr %i.bm, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.cn = load <2 x i64>, ptr %i.cm, align 1, !tbaa !81 ; 2 uses
  %i.co = icmp sgt i64 %i.cf, 7
  br i1 %i.co, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cp = getelementptr i8, ptr %i.cm, i64 16
  %i.cq = load <4 x i32>, ptr %i.cp, align 1, !tbaa !81 ; 2 uses
  %i.cr = bitcast <2 x i64> %i.cn to <4 x i32>    ; 2 uses
  %i.cs = icmp samesign ugt i64 %i.cf, 15
  br i1 %i.cs, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.n
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.n
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.cq, %bb.n ], [ %i.dd, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.cr, %bb.n ], [ %i.cz, %.lr.ph.i.i.i.i ]
  %i.ct = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.cu = bitcast <4 x i32> %i.ct to <2 x i64>
  %i.cv = icmp sgt i64 %i.cj, %i.ch
  br i1 %i.cv, label %bb.o, label %bb.p

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.cz, %.lr.ph.i.i.i.i ], [ %i.cr, %.lr.ph.preheader.i.i.i.i ]
  %i.cw = phi <4 x i32> [ %i.dd, %.lr.ph.i.i.i.i ], [ %i.cq, %.lr.ph.preheader.i.i.i.i ]
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %.05780.i.i.i.i
  %i.cy = load <4 x i32>, ptr %i.cx, align 1, !tbaa !81
  %i.cz = add <4 x i32> %i.cy, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.da = getelementptr [4 x i8], ptr %i.bm, i64 %.057.in79.i.i.i.i
  %i.db = getelementptr i8, ptr %i.da, i64 48
  %i.dc = load <4 x i32>, ptr %i.db, align 1, !tbaa !81
  %i.dd = add <4 x i32> %i.dc, %i.cw              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.de = icmp slt i64 %.057.i.i.i.i, %i.ck
  br i1 %i.de, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !281

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  %i.df = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.ck
  %i.dg = load <4 x i32>, ptr %i.df, align 1, !tbaa !81
  %i.dh = add <4 x i32> %i.dg, %i.ct
  %i.di = bitcast <4 x i32> %i.dh to <2 x i64>
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i, %bb.m
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.cn, %bb.m ], [ %i.di, %bb.o ], [ %i.cu, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.dj = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.dk = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.dl = shufflevector <4 x i32> %i.dk, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.dm = add <4 x i32> %i.dl, %i.dj              ; 2 uses
  %shift = shufflevector <4 x i32> %i.dm, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.dm, %shift
  %7 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dk) ; 2 uses
  %i.dn = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.dn, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.p
  %min.iters.check127 = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check127, label %.lr.ph85.i.i.i.i.preheader262, label %vector.ph128

vector.ph128:                                     ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec129 = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.do = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph128
  %index131 = phi i64 [ 0, %vector.ph128 ], [ %index.next135, %vector.body130 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.do, %vector.ph128 ], [ %i.dr, %vector.body130 ]
  %vec.phi132 = phi <4 x i32> [ zeroinitializer, %vector.ph128 ], [ %i.ds, %vector.body130 ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %index131 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load133 = load <4 x i32>, ptr %i.dp, align 4, !tbaa !154
  %wide.load134 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !154
  %i.dr = add <4 x i32> %wide.load133, %vec.phi   ; 2 uses
  %i.ds = add <4 x i32> %wide.load134, %vec.phi132 ; 2 uses
  %index.next135 = add nuw i64 %index131, 8       ; 2 uses
  %i.dt = icmp eq i64 %index.next135, %n.vec129
  br i1 %i.dt, label %middle.block136, label %vector.body130, !llvm.loop !1851

middle.block136:                                  ; preds = %vector.body130
  %bin.rdx = add <4 x i32> %i.ds, %i.dr
  %i.du = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n137 = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec129
  br i1 %cmp.n137, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader262

.lr.ph85.i.i.i.i.preheader262:                    ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block136
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec129, %middle.block136 ]
  %.07582.i.i.i.i.ph = phi i32 [ %7, %.lr.ph85.i.i.i.i.preheader ], [ %i.du, %middle.block136 ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block136, %bb.p
  %.075.lcssa.i.i.i.i = phi i32 [ %7, %bb.p ], [ %i.du, %middle.block136 ], [ %i.ek, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.dv = icmp slt i64 %i.cl, %i.bx
  br i1 %i.dv, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.dw = shl nsw i64 %i.ci, 2
  %i.dx = add i64 %.0.i.i.i.i.i.i.i.i, %i.dw
  %i.dy = sub i64 %i.bx, %i.dx                    ; 3 uses
  %min.iters.check140 = icmp ult i64 %i.dy, 8
  br i1 %min.iters.check140, label %.lr.ph89.i.i.i.i.preheader257, label %vector.ph141

vector.ph141:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec142 = and i64 %i.dy, -8                   ; 3 uses
  %i.dz = add i64 %i.cl, %n.vec142
  %i.ea = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.eb = getelementptr [4 x i8], ptr %i.bm, i64 %i.cl
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next149, %vector.body143 ] ; 2 uses
  %vec.phi145 = phi <4 x i32> [ %i.ea, %vector.ph141 ], [ %i.ee, %vector.body143 ]
  %vec.phi146 = phi <4 x i32> [ zeroinitializer, %vector.ph141 ], [ %i.ef, %vector.body143 ]
  %i.ec = getelementptr [4 x i8], ptr %i.eb, i64 %index144 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %wide.load147 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !154
  %wide.load148 = load <4 x i32>, ptr %i.ed, align 4, !tbaa !154
  %i.ee = add <4 x i32> %wide.load147, %vec.phi145 ; 2 uses
  %i.ef = add <4 x i32> %wide.load148, %vec.phi146 ; 2 uses
  %index.next149 = add nuw i64 %index144, 8       ; 2 uses
  %i.eg = icmp eq i64 %index.next149, %n.vec142
  br i1 %i.eg, label %middle.block150, label %vector.body143, !llvm.loop !1852

middle.block150:                                  ; preds = %vector.body143
  %bin.rdx151 = add <4 x i32> %i.ef, %i.ee
  %i.eh = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx151) ; 2 uses
  %cmp.n152 = icmp eq i64 %i.dy, %n.vec142
  br i1 %cmp.n152, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph89.i.i.i.i.preheader257

.lr.ph89.i.i.i.i.preheader257:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block150
  %.05588.i.i.i.i.ph = phi i64 [ %i.cl, %.lr.ph89.i.i.i.i.preheader ], [ %i.dz, %middle.block150 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.eh, %middle.block150 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader262, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.el, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader262 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.ek, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader262 ]
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.05683.i.i.i.i
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !154
  %i.ek = add nsw i32 %i.ej, %.07582.i.i.i.i      ; 2 uses
  %i.el = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.el, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !1853

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader257, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.ep, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader257 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.eo, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader257 ]
  %i.em = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %.05588.i.i.i.i
  %i.en = load i32, ptr %i.em, align 4, !tbaa !154
  %i.eo = add nsw i32 %i.en, %.187.i.i.i.i        ; 2 uses
  %i.ep = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.eq = icmp slt i64 %i.ep, %i.bx
  br i1 %i.eq, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, !llvm.loop !1854

bb.q:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.er = load i32, ptr %i.bm, align 4, !tbaa !154 ; 3 uses
  %i.es = icmp sgt i64 %i.bx, 1
  br i1 %i.es, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.q
  %i.et = add nsw i64 %i.bx, -1                   ; 2 uses
  %min.iters.check156 = icmp ult i64 %i.bx, 9
  br i1 %min.iters.check156, label %.lr.ph94.i.i.i.i.preheader253, label %vector.ph157

vector.ph157:                                     ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec158 = and i64 %i.et, -8                   ; 3 uses
  %i.eu = or disjoint i64 %n.vec158, 1
  %i.ev = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.er, i64 0
  br label %vector.body159

vector.body159:                                   ; preds = %vector.body159, %vector.ph157
  %index160 = phi i64 [ 0, %vector.ph157 ], [ %index.next165, %vector.body159 ] ; 2 uses
  %vec.phi161 = phi <4 x i32> [ %i.ev, %vector.ph157 ], [ %i.ez, %vector.body159 ]
  %vec.phi162 = phi <4 x i32> [ zeroinitializer, %vector.ph157 ], [ %i.fa, %vector.body159 ]
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %index160 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 20
  %wide.load163 = load <4 x i32>, ptr %i.ex, align 4, !tbaa !154
  %wide.load164 = load <4 x i32>, ptr %i.ey, align 4, !tbaa !154
  %i.ez = add <4 x i32> %wide.load163, %vec.phi161 ; 2 uses
  %i.fa = add <4 x i32> %wide.load164, %vec.phi162 ; 2 uses
  %index.next165 = add nuw i64 %index160, 8       ; 2 uses
  %i.fb = icmp eq i64 %index.next165, %n.vec158
  br i1 %i.fb, label %middle.block166, label %vector.body159, !llvm.loop !1855

middle.block166:                                  ; preds = %vector.body159
  %bin.rdx167 = add <4 x i32> %i.fa, %i.ez
  %i.fc = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx167) ; 2 uses
  %cmp.n168 = icmp eq i64 %i.et, %n.vec158
  br i1 %cmp.n168, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i.preheader253

.lr.ph94.i.i.i.i.preheader253:                    ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block166
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.eu, %middle.block166 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.er, %.lr.ph94.i.i.i.i.preheader ], [ %i.fc, %middle.block166 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader253, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.fg, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader253 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.ff, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader253 ]
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.092.i.i.i.i
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !154
  %i.ff = add nsw i32 %i.fe, %.291.i.i.i.i        ; 2 uses
  %i.fg = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.fg, %i.bx
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i, !llvm.loop !1856

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block150, %middle.block166, %.preheader.i.i.i.i, %bb.q, %bb.i
  %.0.i.in = phi i32 [ %i.bv, %bb.i ], [ %i.ff, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.er, %bb.q ], [ %i.fc, %middle.block166 ], [ %i.eh, %middle.block150 ], [ %i.eo, %.lr.ph89.i.i.i.i ]
  %i.fh = icmp sgt i32 %.0.i.in, 0
  br i1 %i.fh, label %bb.r, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread

bb.r:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store i8 0, ptr %5, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.bk, ptr %i.fi, align 8
  call void @_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj5ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEvRNS_10MatrixBaseIT_EE(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread: ; preds = %bb.j, %bb.r, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !41 ; 4 uses
  %i.fl = icmp sgt i64 %i.fk, 0
  br i1 %i.fl, label %bb.s, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEES2_Li1EEEEERS2_RKNS_9DenseBaseIT_EE.exit

bb.s:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !42 ; 6 uses
  %i.fo = ptrtoaddr ptr %i.fn to i64
  %i.fp = load ptr, ptr %2, align 8, !tbaa !42    ; 7 uses
  %i.fq = ptrtoaddr ptr %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !41
  %.not.i.i.i.i.i.i.i11 = icmp eq i64 %i.fs, %i.fk
  br i1 %.not.i.i.i.i.i.i.i11, label %bb.t, label %thread-pre-split.i.i.i.i.i.i12

thread-pre-split.i.i.i.i.i.i12:                   ; preds = %bb.s
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.fk, i64 noundef 1)
  %.pr.i.i.i.i.i.i13 = load i64, ptr %i.fr, align 8, !tbaa !41
  %.pre = load ptr, ptr %2, align 8, !tbaa !42
  br label %bb.t

bb.t:                                             ; preds = %thread-pre-split.i.i.i.i.i.i12, %bb.s
  %i.ft = phi ptr [ %.pre, %thread-pre-split.i.i.i.i.i.i12 ], [ %i.fp, %bb.s ] ; 6 uses
  %i.fu = phi i64 [ %.pr.i.i.i.i.i.i13, %thread-pre-split.i.i.i.i.i.i12 ], [ %i.fk, %bb.s ] ; 8 uses
  %i.fv = ptrtoaddr ptr %i.ft to i64              ; 2 uses
  %i.fw = sdiv i64 %i.fu, 2                       ; 2 uses
  %i.fx = shl nsw i64 %i.fw, 1                    ; 6 uses
  %i.fy = icmp sgt i64 %i.fu, 1
  br i1 %i.fy, label %.lr.ph.i.i.i.i.i.i.i18, label %._crit_edge.i.i.i.i.i.i.i14

._crit_edge.i.i.i.i.i.i.i14:                      ; preds = %.lr.ph.i.i.i.i.i.i.i18, %bb.t
end_hunk_5
begin_hunk_6_@_ZNK5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE11_solve_implINS_7ProductINS_9TransposeIS3_EENS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0EEESD_EEvRKNS_10MatrixBaseIT_EERNSF_IT0_EE:bb.a
.lr.ph.i.i.i.i.i.i.i.i15.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i14
  %i.ga = shl nsw i64 %i.fw, 1
  %i.gb = sub i64 %i.fu, %i.ga                    ; 2 uses
  %min.iters.check175 = icmp ult i64 %i.gb, 2
  br i1 %min.iters.check175, label %.lr.ph.i.i.i.i.i.i.i.i15.preheader252, label %vector.memcheck171

vector.memcheck171:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i15.preheader
  %i.gc = sub i64 %i.fo, %i.fv
  %diff.check172 = icmp ugt i64 %i.gc, -16
  %i.gd = sub i64 %i.fq, %i.fv
  %diff.check173 = icmp ugt i64 %i.gd, -16
  %conflict.rdx = or i1 %diff.check172, %diff.check173
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.i.i15.preheader252, label %vector.ph176

vector.ph176:                                     ; preds = %vector.memcheck171
  %i.ge = and i64 %i.fu, 1                        ; 2 uses
  %n.vec177 = sub i64 %i.gb, %i.ge                ; 2 uses
  %i.gf = add i64 %i.fx, %n.vec177
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph176
  %index179 = phi i64 [ 0, %vector.ph176 ], [ %index.next182, %vector.body178 ] ; 2 uses
  %i.gg = add i64 %i.fx, %index179                ; 3 uses
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %i.gg
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.gg
  %wide.load180 = load <2 x double>, ptr %i.gi, align 8, !tbaa !43
  %i.gj = fdiv <2 x double> splat (double 1.000000e+00), %wide.load180
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %i.gg
  %wide.load181 = load <2 x double>, ptr %i.gk, align 8, !tbaa !43
  %i.gl = fmul <2 x double> %i.gj, %wide.load181
  store <2 x double> %i.gl, ptr %i.gh, align 8, !tbaa !43
  %index.next182 = add nuw i64 %index179, 2       ; 2 uses
  %i.gm = icmp eq i64 %index.next182, %n.vec177
  br i1 %i.gm, label %middle.block183, label %vector.body178, !llvm.loop !1857

middle.block183:                                  ; preds = %vector.body178
  %cmp.n184 = icmp eq i64 %i.ge, 0
  br i1 %cmp.n184, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEES2_Li1EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i15.preheader252

.lr.ph.i.i.i.i.i.i.i.i15.preheader252:            ; preds = %vector.memcheck171, %.lr.ph.i.i.i.i.i.i.i.i15.preheader, %middle.block183
  %.05.i.i.i.i.i.i.i.i16.ph = phi i64 [ %i.fx, %vector.memcheck171 ], [ %i.fx, %.lr.ph.i.i.i.i.i.i.i.i15.preheader ], [ %i.gf, %middle.block183 ] ; 7 uses
  %i.gn = sub i64 %i.fu, %.05.i.i.i.i.i.i.i.i16.ph
  %.neg = add i64 %.05.i.i.i.i.i.i.i.i16.ph, 1
  %xtraiter269 = and i64 %i.gn, 1
  %lcmp.mod270.not = icmp eq i64 %xtraiter269, 0
  br i1 %lcmp.mod270.not, label %.lr.ph.i.i.i.i.i.i.i.i15.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i15.prol

.lr.ph.i.i.i.i.i.i.i.i15.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i15.preheader252
  %i.go = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %.05.i.i.i.i.i.i.i.i16.ph
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %.05.i.i.i.i.i.i.i.i16.ph
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !43
  %i.gr = fdiv double 1.000000e+00, %i.gq
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %.05.i.i.i.i.i.i.i.i16.ph
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !43
  %i.gu = fmul double %i.gr, %i.gt
  store double %i.gu, ptr %i.go, align 8, !tbaa !43
  %i.gv = add nsw i64 %.05.i.i.i.i.i.i.i.i16.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i15.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i15.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i15.prol, %.lr.ph.i.i.i.i.i.i.i.i15.preheader252
  %.05.i.i.i.i.i.i.i.i16.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i16.ph, %.lr.ph.i.i.i.i.i.i.i.i15.preheader252 ], [ %i.gv, %.lr.ph.i.i.i.i.i.i.i.i15.prol ]
  %i.gw = icmp eq i64 %i.fu, %.neg
  br i1 %i.gw, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEES2_Li1EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i15

.lr.ph.i.i.i.i.i.i.i.i15:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i15.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i15
  %.05.i.i.i.i.i.i.i.i16 = phi i64 [ %i.hm, %.lr.ph.i.i.i.i.i.i.i.i15 ], [ %.05.i.i.i.i.i.i.i.i16.unr, %.lr.ph.i.i.i.i.i.i.i.i15.prol.loopexit ] ; 5 uses
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %.05.i.i.i.i.i.i.i.i16
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %.05.i.i.i.i.i.i.i.i16
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !43
  %i.ha = fdiv double 1.000000e+00, %i.gz
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %.05.i.i.i.i.i.i.i.i16
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !43
  %i.hd = fmul double %i.ha, %i.hc
  store double %i.hd, ptr %i.gx, align 8, !tbaa !43
  %i.he = add nsw i64 %.05.i.i.i.i.i.i.i.i16, 1   ; 3 uses
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %i.he
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.he
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !43
  %i.hi = fdiv double 1.000000e+00, %i.hh
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %i.he
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !43
  %i.hl = fmul double %i.hi, %i.hk
  store double %i.hl, ptr %i.hf, align 8, !tbaa !43
  %i.hm = add nsw i64 %.05.i.i.i.i.i.i.i.i16, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i17.1 = icmp eq i64 %i.hm, %i.fu
  br i1 %exitcond.not.i.i.i.i.i.i.i.i17.1, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEES2_Li1EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i15, !llvm.loop !1858

.lr.ph.i.i.i.i.i.i.i18:                           ; preds = %bb.t, %.lr.ph.i.i.i.i.i.i.i18
  %.011.i.i.i.i.i.i.i19 = phi i64 [ %i.hu, %.lr.ph.i.i.i.i.i.i.i18 ], [ 0, %bb.t ] ; 4 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.011.i.i.i.i.i.i.i19
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %.011.i.i.i.i.i.i.i19
  %i.hp = load <2 x double>, ptr %i.ho, align 16, !tbaa !81
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %.011.i.i.i.i.i.i.i19
  %i.hr = load <2 x double>, ptr %i.hq, align 16, !tbaa !81
  %i.hs = fdiv <2 x double> splat (double 1.000000e+00), %i.hr
  %i.ht = fmul <2 x double> %i.hp, %i.hs
  store <2 x double> %i.ht, ptr %i.hn, align 16, !tbaa !81
  %i.hu = add nuw nsw i64 %.011.i.i.i.i.i.i.i19, 2 ; 2 uses
  %i.hv = icmp slt i64 %i.hu, %i.fx
  br i1 %i.hv, label %.lr.ph.i.i.i.i.i.i.i18, label %._crit_edge.i.i.i.i.i.i.i14, !llvm.loop !1859

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEES2_Li1EEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i15.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i15, %middle.block183, %._crit_edge.i.i.i.i.i.i.i14, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread
  %i.hw = load ptr, ptr %i.bl, align 8, !tbaa !136 ; 13 uses
  %i.hx = icmp eq ptr %i.hw, null
  br i1 %i.hx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEES2_Li1EEEEERS2_RKNS_9DenseBaseIT_EE.exit
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !135 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !49
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.hz, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !154
  %i.ie = load i32, ptr %i.hz, align 4, !tbaa !154
  %i.if = sub nsw i32 %i.id, %i.ie
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54

bb.v:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEES2_Li1EEEEERS2_RKNS_9DenseBaseIT_EE.exit
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !49 ; 11 uses
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ij = ptrtoint ptr %i.hw to i64               ; 2 uses
  %i.ik = and i64 %i.ij, 3
  %.not.i.i.i.i.i.i.i.i20 = icmp eq i64 %i.ik, 0
  br i1 %.not.i.i.i.i.i.i.i.i20, label %bb.x, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i21

bb.x:                                             ; preds = %bb.w
  %i.il = lshr exact i64 %i.ij, 2
  %i.im = sub nsw i64 0, %i.il
  %i.in = and i64 %i.im, 3
  %i.io = call i64 @llvm.smin.i64(i64 %i.in, i64 %i.ih)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i21

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i21: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i.i.i22 = phi i64 [ %i.io, %bb.x ], [ %i.ih, %bb.w ] ; 12 uses
  %i.ip = sub nsw i64 %i.ih, %.0.i.i.i.i.i.i.i.i22 ; 5 uses
  %i.iq = sdiv i64 %i.ip, 8
  %i.ir = shl nsw i64 %i.iq, 3                    ; 2 uses
  %i.is = sdiv i64 %i.ip, 4                       ; 2 uses
  %i.it = shl nsw i64 %i.is, 2                    ; 2 uses
  %i.iu = add nsw i64 %i.ir, %.0.i.i.i.i.i.i.i.i22 ; 2 uses
  %i.iv = add nsw i64 %i.it, %.0.i.i.i.i.i.i.i.i22 ; 4 uses
  %.off.i.i.i.i23 = add i64 %i.ip, 3
  %.not.i.i.i.i24 = icmp ult i64 %.off.i.i.i.i23, 7
  br i1 %.not.i.i.i.i24, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i21
  %i.iw = getelementptr [4 x i8], ptr %i.hw, i64 %.0.i.i.i.i.i.i.i.i22 ; 2 uses
  %i.ix = load <2 x i64>, ptr %i.iw, align 1, !tbaa !81 ; 2 uses
  %i.iy = icmp sgt i64 %i.ip, 7
  br i1 %i.iy, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.iz = getelementptr i8, ptr %i.iw, i64 16
  %i.ja = load <4 x i32>, ptr %i.iz, align 1, !tbaa !81 ; 2 uses
  %i.jb = bitcast <2 x i64> %i.ix to <4 x i32>    ; 2 uses
  %i.jc = icmp samesign ugt i64 %i.ip, 15
  br i1 %i.jc, label %.lr.ph.preheader.i.i.i.i43, label %._crit_edge.i.i.i.i40

.lr.ph.preheader.i.i.i.i43:                       ; preds = %bb.z
  %.05777.i.i.i.i44 = add nsw i64 %.0.i.i.i.i.i.i.i.i22, 8
  br label %.lr.ph.i.i.i.i45

._crit_edge.i.i.i.i40:                            ; preds = %.lr.ph.i.i.i.i45, %bb.z
  %.lcssa.i.i.i.i41 = phi <4 x i32> [ %i.ja, %bb.z ], [ %i.jn, %.lr.ph.i.i.i.i45 ]
  %.sroa.067.0.lcssa.i.i.i.i42 = phi <4 x i32> [ %i.jb, %bb.z ], [ %i.jj, %.lr.ph.i.i.i.i45 ]
  %i.jd = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i42, %.lcssa.i.i.i.i41 ; 2 uses
  %i.je = bitcast <4 x i32> %i.jd to <2 x i64>
  %i.jf = icmp sgt i64 %i.it, %i.ir
  br i1 %i.jf, label %bb.aa, label %bb.ab

.lr.ph.i.i.i.i45:                                 ; preds = %.lr.ph.i.i.i.i45, %.lr.ph.preheader.i.i.i.i43
  %.05780.i.i.i.i46 = phi i64 [ %.057.i.i.i.i49, %.lr.ph.i.i.i.i45 ], [ %.05777.i.i.i.i44, %.lr.ph.preheader.i.i.i.i43 ] ; 3 uses
  %.057.in79.i.i.i.i47 = phi i64 [ %.05780.i.i.i.i46, %.lr.ph.i.i.i.i45 ], [ %.0.i.i.i.i.i.i.i.i22, %.lr.ph.preheader.i.i.i.i43 ]
  %.sroa.067.078.i.i.i.i48 = phi <4 x i32> [ %i.jj, %.lr.ph.i.i.i.i45 ], [ %i.jb, %.lr.ph.preheader.i.i.i.i43 ]
  %i.jg = phi <4 x i32> [ %i.jn, %.lr.ph.i.i.i.i45 ], [ %i.ja, %.lr.ph.preheader.i.i.i.i43 ]
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %.05780.i.i.i.i46
  %i.ji = load <4 x i32>, ptr %i.jh, align 1, !tbaa !81
  %i.jj = add <4 x i32> %i.ji, %.sroa.067.078.i.i.i.i48 ; 2 uses
  %i.jk = getelementptr [4 x i8], ptr %i.hw, i64 %.057.in79.i.i.i.i47
  %i.jl = getelementptr i8, ptr %i.jk, i64 48
  %i.jm = load <4 x i32>, ptr %i.jl, align 1, !tbaa !81
  %i.jn = add <4 x i32> %i.jm, %i.jg              ; 2 uses
  %.057.i.i.i.i49 = add nsw i64 %.05780.i.i.i.i46, 8 ; 2 uses
  %i.jo = icmp slt i64 %.057.i.i.i.i49, %i.iu
  br i1 %i.jo, label %.lr.ph.i.i.i.i45, label %._crit_edge.i.i.i.i40, !llvm.loop !281

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i40
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %i.iu
  %i.jq = load <4 x i32>, ptr %i.jp, align 1, !tbaa !81
  %i.jr = add <4 x i32> %i.jq, %i.jd
  %i.js = bitcast <4 x i32> %i.jr to <2 x i64>
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge.i.i.i.i40, %bb.y
  %.sroa.067.2.i.i.i.i25 = phi <2 x i64> [ %i.ix, %bb.y ], [ %i.js, %bb.aa ], [ %i.je, %._crit_edge.i.i.i.i40 ] ; 2 uses
  %i.jt = bitcast <2 x i64> %.sroa.067.2.i.i.i.i25 to <4 x i32>
  %i.ju = bitcast <2 x i64> %.sroa.067.2.i.i.i.i25 to <4 x i32> ; 2 uses
  %i.jv = shufflevector <4 x i32> %i.ju, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.jw = add <4 x i32> %i.jv, %i.jt              ; 2 uses
  %shift235 = shufflevector <4 x i32> %i.jw, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop236 = add nsw <4 x i32> %i.jw, %shift235
  %8 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ju) ; 2 uses
  %i.jx = icmp sgt i64 %.0.i.i.i.i.i.i.i.i22, 0
  br i1 %i.jx, label %.lr.ph85.i.i.i.i36.preheader, label %.preheader.i.i.i.i28

.lr.ph85.i.i.i.i36.preheader:                     ; preds = %bb.ab
  %min.iters.check187 = icmp ult i64 %.0.i.i.i.i.i.i.i.i22, 8
  br i1 %min.iters.check187, label %.lr.ph85.i.i.i.i36.preheader246, label %vector.ph188

vector.ph188:                                     ; preds = %.lr.ph85.i.i.i.i36.preheader
  %n.vec189 = and i64 %.0.i.i.i.i.i.i.i.i22, 9223372036854775800 ; 3 uses
  %i.jy = shufflevector <4 x i32> %foldExtExtBinop236, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph188
  %index191 = phi i64 [ 0, %vector.ph188 ], [ %index.next196, %vector.body190 ] ; 2 uses
  %vec.phi192 = phi <4 x i32> [ %i.jy, %vector.ph188 ], [ %i.kb, %vector.body190 ]
  %vec.phi193 = phi <4 x i32> [ zeroinitializer, %vector.ph188 ], [ %i.kc, %vector.body190 ]
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %index191 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %wide.load194 = load <4 x i32>, ptr %i.jz, align 4, !tbaa !154
  %wide.load195 = load <4 x i32>, ptr %i.ka, align 4, !tbaa !154
  %i.kb = add <4 x i32> %wide.load194, %vec.phi192 ; 2 uses
  %i.kc = add <4 x i32> %wide.load195, %vec.phi193 ; 2 uses
  %index.next196 = add nuw i64 %index191, 8       ; 2 uses
  %i.kd = icmp eq i64 %index.next196, %n.vec189
  br i1 %i.kd, label %middle.block197, label %vector.body190, !llvm.loop !1860

middle.block197:                                  ; preds = %vector.body190
  %bin.rdx198 = add <4 x i32> %i.kc, %i.kb
  %i.ke = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx198) ; 2 uses
  %cmp.n199 = icmp eq i64 %.0.i.i.i.i.i.i.i.i22, %n.vec189
  br i1 %cmp.n199, label %.preheader.i.i.i.i28, label %.lr.ph85.i.i.i.i36.preheader246

.lr.ph85.i.i.i.i36.preheader246:                  ; preds = %.lr.ph85.i.i.i.i36.preheader, %middle.block197
  %.05683.i.i.i.i37.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i36.preheader ], [ %n.vec189, %middle.block197 ]
  %.07582.i.i.i.i38.ph = phi i32 [ %8, %.lr.ph85.i.i.i.i36.preheader ], [ %i.ke, %middle.block197 ]
  br label %.lr.ph85.i.i.i.i36

.preheader.i.i.i.i28:                             ; preds = %.lr.ph85.i.i.i.i36, %middle.block197, %bb.ab
  %.075.lcssa.i.i.i.i29 = phi i32 [ %8, %bb.ab ], [ %i.ke, %middle.block197 ], [ %i.ku, %.lr.ph85.i.i.i.i36 ] ; 3 uses
  %i.kf = icmp slt i64 %i.iv, %i.ih
  br i1 %i.kf, label %.lr.ph89.i.i.i.i33.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54

.lr.ph89.i.i.i.i33.preheader:                     ; preds = %.preheader.i.i.i.i28
  %i.kg = shl nsw i64 %i.is, 2
  %i.kh = add i64 %.0.i.i.i.i.i.i.i.i22, %i.kg
  %i.ki = sub i64 %i.ih, %i.kh                    ; 3 uses
  %min.iters.check203 = icmp ult i64 %i.ki, 8
  br i1 %min.iters.check203, label %.lr.ph89.i.i.i.i33.preheader241, label %vector.ph204

vector.ph204:                                     ; preds = %.lr.ph89.i.i.i.i33.preheader
  %n.vec205 = and i64 %i.ki, -8                   ; 3 uses
  %i.kj = add i64 %i.iv, %n.vec205
  %i.kk = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i29, i64 0
  %i.kl = getelementptr [4 x i8], ptr %i.hw, i64 %i.iv
  br label %vector.body206

vector.body206:                                   ; preds = %vector.body206, %vector.ph204
  %index207 = phi i64 [ 0, %vector.ph204 ], [ %index.next212, %vector.body206 ] ; 2 uses
  %vec.phi208 = phi <4 x i32> [ %i.kk, %vector.ph204 ], [ %i.ko, %vector.body206 ]
  %vec.phi209 = phi <4 x i32> [ zeroinitializer, %vector.ph204 ], [ %i.kp, %vector.body206 ]
  %i.km = getelementptr [4 x i8], ptr %i.kl, i64 %index207 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %wide.load210 = load <4 x i32>, ptr %i.km, align 4, !tbaa !154
  %wide.load211 = load <4 x i32>, ptr %i.kn, align 4, !tbaa !154
  %i.ko = add <4 x i32> %wide.load210, %vec.phi208 ; 2 uses
  %i.kp = add <4 x i32> %wide.load211, %vec.phi209 ; 2 uses
  %index.next212 = add nuw i64 %index207, 8       ; 2 uses
  %i.kq = icmp eq i64 %index.next212, %n.vec205
  br i1 %i.kq, label %middle.block213, label %vector.body206, !llvm.loop !1861

middle.block213:                                  ; preds = %vector.body206
  %bin.rdx214 = add <4 x i32> %i.kp, %i.ko
  %i.kr = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx214) ; 2 uses
  %cmp.n215 = icmp eq i64 %i.ki, %n.vec205
  br i1 %cmp.n215, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54, label %.lr.ph89.i.i.i.i33.preheader241

.lr.ph89.i.i.i.i33.preheader241:                  ; preds = %.lr.ph89.i.i.i.i33.preheader, %middle.block213
  %.05588.i.i.i.i34.ph = phi i64 [ %i.iv, %.lr.ph89.i.i.i.i33.preheader ], [ %i.kj, %middle.block213 ]
  %.187.i.i.i.i35.ph = phi i32 [ %.075.lcssa.i.i.i.i29, %.lr.ph89.i.i.i.i33.preheader ], [ %i.kr, %middle.block213 ]
  br label %.lr.ph89.i.i.i.i33

.lr.ph85.i.i.i.i36:                               ; preds = %.lr.ph85.i.i.i.i36.preheader246, %.lr.ph85.i.i.i.i36
  %.05683.i.i.i.i37 = phi i64 [ %i.kv, %.lr.ph85.i.i.i.i36 ], [ %.05683.i.i.i.i37.ph, %.lr.ph85.i.i.i.i36.preheader246 ] ; 2 uses
  %.07582.i.i.i.i38 = phi i32 [ %i.ku, %.lr.ph85.i.i.i.i36 ], [ %.07582.i.i.i.i38.ph, %.lr.ph85.i.i.i.i36.preheader246 ]
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %.05683.i.i.i.i37
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !154
  %i.ku = add nsw i32 %i.kt, %.07582.i.i.i.i38    ; 2 uses
  %i.kv = add nuw nsw i64 %.05683.i.i.i.i37, 1    ; 2 uses
  %exitcond.not.i.i.i.i39 = icmp eq i64 %i.kv, %.0.i.i.i.i.i.i.i.i22
  br i1 %exitcond.not.i.i.i.i39, label %.preheader.i.i.i.i28, label %.lr.ph85.i.i.i.i36, !llvm.loop !1862

.lr.ph89.i.i.i.i33:                               ; preds = %.lr.ph89.i.i.i.i33.preheader241, %.lr.ph89.i.i.i.i33
  %.05588.i.i.i.i34 = phi i64 [ %i.kz, %.lr.ph89.i.i.i.i33 ], [ %.05588.i.i.i.i34.ph, %.lr.ph89.i.i.i.i33.preheader241 ] ; 2 uses
  %.187.i.i.i.i35 = phi i32 [ %i.ky, %.lr.ph89.i.i.i.i33 ], [ %.187.i.i.i.i35.ph, %.lr.ph89.i.i.i.i33.preheader241 ]
  %i.kw = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %.05588.i.i.i.i34
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !154
  %i.ky = add nsw i32 %i.kx, %.187.i.i.i.i35      ; 2 uses
  %i.kz = add nsw i64 %.05588.i.i.i.i34, 1        ; 2 uses
  %i.la = icmp slt i64 %i.kz, %i.ih
  br i1 %i.la, label %.lr.ph89.i.i.i.i33, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54, !llvm.loop !1863

bb.ac:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i21
  %i.lb = load i32, ptr %i.hw, align 4, !tbaa !154 ; 3 uses
  %i.lc = icmp sgt i64 %i.ih, 1
  br i1 %i.lc, label %.lr.ph94.i.i.i.i50.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54

.lr.ph94.i.i.i.i50.preheader:                     ; preds = %bb.ac
  %i.ld = add nsw i64 %i.ih, -1                   ; 2 uses
  %min.iters.check219 = icmp ult i64 %i.ih, 9
  br i1 %min.iters.check219, label %.lr.ph94.i.i.i.i50.preheader238, label %vector.ph220

vector.ph220:                                     ; preds = %.lr.ph94.i.i.i.i50.preheader
  %n.vec221 = and i64 %i.ld, -8                   ; 3 uses
  %i.le = or disjoint i64 %n.vec221, 1
  %i.lf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.lb, i64 0
  br label %vector.body222

vector.body222:                                   ; preds = %vector.body222, %vector.ph220
  %index223 = phi i64 [ 0, %vector.ph220 ], [ %index.next228, %vector.body222 ] ; 2 uses
  %vec.phi224 = phi <4 x i32> [ %i.lf, %vector.ph220 ], [ %i.lj, %vector.body222 ]
  %vec.phi225 = phi <4 x i32> [ zeroinitializer, %vector.ph220 ], [ %i.lk, %vector.body222 ]
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %index223 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 20
  %wide.load226 = load <4 x i32>, ptr %i.lh, align 4, !tbaa !154
  %wide.load227 = load <4 x i32>, ptr %i.li, align 4, !tbaa !154
  %i.lj = add <4 x i32> %wide.load226, %vec.phi224 ; 2 uses
  %i.lk = add <4 x i32> %wide.load227, %vec.phi225 ; 2 uses
  %index.next228 = add nuw i64 %index223, 8       ; 2 uses
  %i.ll = icmp eq i64 %index.next228, %n.vec221
  br i1 %i.ll, label %middle.block229, label %vector.body222, !llvm.loop !1864

middle.block229:                                  ; preds = %vector.body222
  %bin.rdx230 = add <4 x i32> %i.lk, %i.lj
  %i.lm = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx230) ; 2 uses
  %cmp.n231 = icmp eq i64 %i.ld, %n.vec221
  br i1 %cmp.n231, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54, label %.lr.ph94.i.i.i.i50.preheader238

.lr.ph94.i.i.i.i50.preheader238:                  ; preds = %.lr.ph94.i.i.i.i50.preheader, %middle.block229
  %.092.i.i.i.i51.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i50.preheader ], [ %i.le, %middle.block229 ]
  %.291.i.i.i.i52.ph = phi i32 [ %i.lb, %.lr.ph94.i.i.i.i50.preheader ], [ %i.lm, %middle.block229 ]
  br label %.lr.ph94.i.i.i.i50

.lr.ph94.i.i.i.i50:                               ; preds = %.lr.ph94.i.i.i.i50.preheader238, %.lr.ph94.i.i.i.i50
  %.092.i.i.i.i51 = phi i64 [ %i.lq, %.lr.ph94.i.i.i.i50 ], [ %.092.i.i.i.i51.ph, %.lr.ph94.i.i.i.i50.preheader238 ] ; 2 uses
  %.291.i.i.i.i52 = phi i32 [ %i.lp, %.lr.ph94.i.i.i.i50 ], [ %.291.i.i.i.i52.ph, %.lr.ph94.i.i.i.i50.preheader238 ]
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %.092.i.i.i.i51
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !154
  %i.lp = add nsw i32 %i.lo, %.291.i.i.i.i52      ; 2 uses
  %i.lq = add nuw nsw i64 %.092.i.i.i.i51, 1      ; 2 uses
  %exitcond102.not.i.i.i.i53 = icmp eq i64 %i.lq, %i.ih
  br i1 %exitcond102.not.i.i.i.i53, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54, label %.lr.ph94.i.i.i.i50, !llvm.loop !1865

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54: ; preds = %.lr.ph89.i.i.i.i33, %.lr.ph94.i.i.i.i50, %middle.block213, %middle.block229, %.preheader.i.i.i.i28, %bb.ac, %bb.u
  %.0.i32.in = phi i32 [ %i.if, %bb.u ], [ %i.lp, %.lr.ph94.i.i.i.i50 ], [ %.075.lcssa.i.i.i.i29, %.preheader.i.i.i.i28 ], [ %i.lb, %bb.ac ], [ %i.lm, %middle.block229 ], [ %i.kr, %middle.block213 ], [ %i.ky, %.lr.ph89.i.i.i.i33 ]
  %i.lr = icmp sgt i32 %.0.i32.in, 0
  br i1 %i.lr, label %bb.ad, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54.thread

bb.ad:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store i8 0, ptr %6, align 8, !tbaa !1866, !alias.scope !1868
  %i.ls = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i8 0, ptr %i.ls, align 8, !alias.scope !1868
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bk, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !1868
  call void @_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi6ELi2ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(16) %i.ls, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54.thread

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54.thread: ; preds = %bb.v, %bb.ad, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54
  %i.lt = load i64, ptr %i.c, align 8, !tbaa !338
  %i.lu = icmp sgt i64 %i.lt, 0
  br i1 %i.lu, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54.thread
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !338 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !41
  %.not.i.i.i.i.i55 = icmp eq i64 %i.lz, %i.lx
  br i1 %.not.i.i.i.i.i55, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.lx, i64 noundef 1)
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %bb.ae, %bb.af
  call void @_ZN5Eigen8internal26permutation_matrix_productINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi1ELb0ENS_10DenseShapeEE3runIS3_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.lv, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj5ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEvRNS_10MatrixBaseIT_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1873, !nonnull !60, !align !221 ; 5 uses
end_hunk_6
