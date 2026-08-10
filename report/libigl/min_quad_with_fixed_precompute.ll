inline.NumInlined: 8942
inline.NumDeleted: 3137
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 170
loop-unroll.NumUnrolled: 177
begin_hunk_0_@_ZN5Eigen8SparseQRINS_12SparseMatrixIdLi0EiEENS_14COLAMDOrderingIiEEE14analyzePatternERKS2_:bb.a
  %i.bi = call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bi, align 8, !tbaa !83
  call void @__cxa_throw(ptr nonnull %i.bi, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.i: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE12setLinSpacedElRKiS5_.exit, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE12setLinSpacedElRKiS5_.exit.thread
  %i.bj = phi i64 [ %i.be, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i ], [ %i.g, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE12setLinSpacedElRKiS5_.exit.thread ], [ %i.c, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE12setLinSpacedElRKiS5_.exit ] ; 7 uses
  %.sink.i.i.i.i.i = phi ptr [ %i.bg, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i ], [ null, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE12setLinSpacedElRKiS5_.exit.thread ], [ null, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE12setLinSpacedElRKiS5_.exit ] ; 8 uses
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph.i, label %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2IS1_EERKNS_11InverseImplIT_NS_18PermutationStorageEEE.exit

.lr.ph.i:                                         ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.i
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !72  ; 5 uses
  %wide.trip.count.i = and i64 %i.bj, 2147483647
  %i.bn = add nsw i64 %wide.trip.count.i, -1
  %xtraiter255 = and i64 %i.bj, 3                 ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 3
  br i1 %i.bo, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter258 = and i64 %i.bj, 2147483644
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.i ] ; 6 uses
  %niter259 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter259.next.3, %bb.i ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.i
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !73
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %.sink.i.i.i.i.i, i64 %i.br
  %i.bt = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !73
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.next.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !73
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %.sink.i.i.i.i.i, i64 %i.bw
  %i.by = trunc nuw nsw i64 %indvars.iv.next.i to i32
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !73
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.next.i.1
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !73
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %.sink.i.i.i.i.i, i64 %i.cb
  %i.cd = trunc nuw nsw i64 %indvars.iv.next.i.1 to i32
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !73
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.next.i.2
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !73
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %.sink.i.i.i.i.i, i64 %i.cg
  %i.ci = trunc nuw nsw i64 %indvars.iv.next.i.2 to i32
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !73
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter259.next.3 = add i64 %niter259, 4         ; 2 uses
  %niter259.ncmp.3 = icmp eq i64 %niter259.next.3, %unroll_iter258
  br i1 %niter259.ncmp.3, label %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2IS1_EERKNS_11InverseImplIT_NS_18PermutationStorageEEE.exit.loopexit.unr-lcssa, label %bb.i, !llvm.loop !333

_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2IS1_EERKNS_11InverseImplIT_NS_18PermutationStorageEEE.exit.loopexit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod256.not = icmp eq i64 %xtraiter255, 0
  br i1 %lcmp.mod256.not, label %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2IS1_EERKNS_11InverseImplIT_NS_18PermutationStorageEEE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2IS1_EERKNS_11InverseImplIT_NS_18PermutationStorageEEE.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2IS1_EERKNS_11InverseImplIT_NS_18PermutationStorageEEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod257 = icmp ne i64 %xtraiter255, 0
  call void @llvm.assume(i1 %lcmp.mod257)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.j ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.i.epil
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !73
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %.sink.i.i.i.i.i, i64 %i.cl
  %i.cn = trunc nuw nsw i64 %indvars.iv.i.epil to i32
  store i32 %i.cn, ptr %i.cm, align 4, !tbaa !73
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter255
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2IS1_EERKNS_11InverseImplIT_NS_18PermutationStorageEEE.exit, label %bb.j, !llvm.loop !334

_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2IS1_EERKNS_11InverseImplIT_NS_18PermutationStorageEEE.exit: ; preds = %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2IS1_EERKNS_11InverseImplIT_NS_18PermutationStorageEEE.exit.loopexit.unr-lcssa, %bb.j, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE12setLinSpacedElRKiS5_.exit, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.i
  %i.co = phi i64 [ %i.bj, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.i ], [ 0, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE12setLinSpacedElRKiS5_.exit ], [ %i.bj, %bb.j ], [ %i.bj, %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2IS1_EERKNS_11InverseImplIT_NS_18PermutationStorageEEE.exit.loopexit.unr-lcssa ]
  %.sroa.046.0 = phi ptr [ %.sink.i.i.i.i.i, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.i ], [ null, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE12setLinSpacedElRKiS5_.exit ], [ %.sink.i.i.i.i.i, %bb.j ], [ %.sink.i.i.i.i.i, %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2IS1_EERKNS_11InverseImplIT_NS_18PermutationStorageEEE.exit.loopexit.unr-lcssa ]
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !203
  store ptr %.sroa.046.0, ptr %i.cp, align 8, !tbaa !203
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 %i.co, ptr %i.cr, align 8, !tbaa !15
  call void @free(ptr noundef %i.cq) #33
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cu = load ptr, ptr %i.cp, align 8, !tbaa !72
  %i.cv = call noundef i32 @_ZN5Eigen8internal8coletreeINS_12SparseMatrixIdLi0EiEENS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEiRKT_RT0_SA_PNS6_12StorageIndexE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef %i.cu) ; 0 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 377
  store i8 1, ptr %i.cw, align 1, !tbaa !335
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %i.cx, i64 noundef %i.e, i64 noundef %i.c)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %i.cy, i64 noundef %i.e, i64 noundef %.sroa.speculated)
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !132 ; 13 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2IS1_EERKNS_11InverseImplIT_NS_18PermutationStorageEEE.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !116 ; 2 uses
  %i.de = load i64, ptr %i.b, align 8, !tbaa !115
  %i.df = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !73
  %i.dh = load i32, ptr %i.dd, align 4, !tbaa !73
  %i.di = sub nsw i32 %i.dg, %i.dh
  %i.dj = sext i32 %i.di to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.l:                                             ; preds = %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2IS1_EERKNS_11InverseImplIT_NS_18PermutationStorageEEE.exit
  %i.dk = load i64, ptr %i.b, align 8, !tbaa !115 ; 11 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dm = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.dn = and i64 %i.dm, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.n, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.do = lshr exact i64 %i.dm, 2
  %i.dp = sub nsw i64 0, %i.do
  %i.dq = and i64 %i.dp, 3
  %i.dr = call i64 @llvm.smin.i64(i64 %i.dq, i64 %i.dk)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.dr, %bb.n ], [ %i.dk, %bb.m ] ; 12 uses
  %i.ds = sub nsw i64 %i.dk, %.0.i.i.i.i.i.i.i.i  ; 5 uses
  %i.dt = sdiv i64 %i.ds, 8
  %i.du = shl nsw i64 %i.dt, 3                    ; 2 uses
  %i.dv = sdiv i64 %i.ds, 4                       ; 2 uses
  %i.dw = shl nsw i64 %i.dv, 2                    ; 2 uses
  %i.dx = add nsw i64 %i.du, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.dy = add nsw i64 %i.dw, %.0.i.i.i.i.i.i.i.i  ; 4 uses
  %.off.i.i.i.i = add i64 %i.ds, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.dz = getelementptr [4 x i8], ptr %i.da, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.ea = load <2 x i64>, ptr %i.dz, align 1, !tbaa !81 ; 2 uses
  %i.eb = icmp sgt i64 %i.ds, 7
  br i1 %i.eb, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ec = getelementptr i8, ptr %i.dz, i64 16
  %i.ed = load <4 x i32>, ptr %i.ec, align 1, !tbaa !81 ; 2 uses
  %i.ee = bitcast <2 x i64> %i.ea to <4 x i32>    ; 2 uses
  %i.ef = icmp samesign ugt i64 %i.ds, 15
  br i1 %i.ef, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.p
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.p
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.ed, %bb.p ], [ %i.eq, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.ee, %bb.p ], [ %i.em, %.lr.ph.i.i.i.i ]
  %i.eg = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.eh = bitcast <4 x i32> %i.eg to <2 x i64>
  %i.ei = icmp sgt i64 %i.dw, %i.du
  br i1 %i.ei, label %bb.q, label %bb.r

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.em, %.lr.ph.i.i.i.i ], [ %i.ee, %.lr.ph.preheader.i.i.i.i ]
  %i.ej = phi <4 x i32> [ %i.eq, %.lr.ph.i.i.i.i ], [ %i.ed, %.lr.ph.preheader.i.i.i.i ]
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.da, i64 %.05780.i.i.i.i
  %i.el = load <4 x i32>, ptr %i.ek, align 1, !tbaa !81
  %i.em = add <4 x i32> %i.el, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.en = getelementptr [4 x i8], ptr %i.da, i64 %.057.in79.i.i.i.i
  %i.eo = getelementptr i8, ptr %i.en, i64 48
  %i.ep = load <4 x i32>, ptr %i.eo, align 1, !tbaa !81
  %i.eq = add <4 x i32> %i.ep, %i.ej              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.er = icmp slt i64 %.057.i.i.i.i, %i.dx
  br i1 %i.er, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !336

bb.q:                                             ; preds = %._crit_edge.i.i.i.i
  %i.es = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.dx
  %i.et = load <4 x i32>, ptr %i.es, align 1, !tbaa !81
  %i.eu = add <4 x i32> %i.et, %i.eg
  %i.ev = bitcast <4 x i32> %i.eu to <2 x i64>
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i, %bb.o
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.ea, %bb.o ], [ %i.ev, %bb.q ], [ %i.eh, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ew = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.ex = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.ey = shufflevector <4 x i32> %i.ex, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ez = add <4 x i32> %i.ey, %i.ew              ; 2 uses
  %shift = shufflevector <4 x i32> %i.ez, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.ez, %shift ; 2 uses
  %3 = extractelement <4 x i32> %foldExtExtBinop, i64 0 ; 2 uses
  %i.fa = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.fa, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.r
  %min.iters.check128 = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check128, label %.lr.ph85.i.i.i.i.preheader246, label %vector.ph129

vector.ph129:                                     ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec130 = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.fb = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph129
  %index132 = phi i64 [ 0, %vector.ph129 ], [ %index.next135, %vector.body131 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.fb, %vector.ph129 ], [ %i.fe, %vector.body131 ]
  %vec.phi133 = phi <4 x i32> [ zeroinitializer, %vector.ph129 ], [ %i.ff, %vector.body131 ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %index132 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %wide.load = load <4 x i32>, ptr %i.fc, align 4, !tbaa !73
  %wide.load134 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !73
  %i.fe = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ff = add <4 x i32> %wide.load134, %vec.phi133 ; 2 uses
  %index.next135 = add nuw i64 %index132, 8       ; 2 uses
  %i.fg = icmp eq i64 %index.next135, %n.vec130
  br i1 %i.fg, label %middle.block136, label %vector.body131, !llvm.loop !337

middle.block136:                                  ; preds = %vector.body131
  %bin.rdx = add <4 x i32> %i.ff, %i.fe
  %i.fh = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n137 = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec130
  br i1 %cmp.n137, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader246

.lr.ph85.i.i.i.i.preheader246:                    ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block136
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec130, %middle.block136 ]
  %.07582.i.i.i.i.ph = phi i32 [ %3, %.lr.ph85.i.i.i.i.preheader ], [ %i.fh, %middle.block136 ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block136, %bb.r
  %.075.lcssa.i.i.i.i = phi i32 [ %3, %bb.r ], [ %i.fh, %middle.block136 ], [ %i.fx, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.fi = icmp slt i64 %i.dy, %i.dk
  br i1 %i.fi, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.fj = shl nsw i64 %i.dv, 2
  %i.fk = add i64 %.0.i.i.i.i.i.i.i.i, %i.fj
  %i.fl = sub i64 %i.dk, %i.fk                    ; 3 uses
  %min.iters.check140 = icmp ult i64 %i.fl, 8
  br i1 %min.iters.check140, label %.lr.ph89.i.i.i.i.preheader241, label %vector.ph141

vector.ph141:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec142 = and i64 %i.fl, -8                   ; 3 uses
  %i.fm = add i64 %i.dy, %n.vec142
  %i.fn = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.fo = getelementptr [4 x i8], ptr %i.da, i64 %i.dy
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next149, %vector.body143 ] ; 2 uses
  %vec.phi145 = phi <4 x i32> [ %i.fn, %vector.ph141 ], [ %i.fr, %vector.body143 ]
  %vec.phi146 = phi <4 x i32> [ zeroinitializer, %vector.ph141 ], [ %i.fs, %vector.body143 ]
  %i.fp = getelementptr [4 x i8], ptr %i.fo, i64 %index144 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %wide.load147 = load <4 x i32>, ptr %i.fp, align 4, !tbaa !73
  %wide.load148 = load <4 x i32>, ptr %i.fq, align 4, !tbaa !73
  %i.fr = add <4 x i32> %wide.load147, %vec.phi145 ; 2 uses
  %i.fs = add <4 x i32> %wide.load148, %vec.phi146 ; 2 uses
  %index.next149 = add nuw i64 %index144, 8       ; 2 uses
  %i.ft = icmp eq i64 %index.next149, %n.vec142
  br i1 %i.ft, label %middle.block150, label %vector.body143, !llvm.loop !338

middle.block150:                                  ; preds = %vector.body143
  %bin.rdx151 = add <4 x i32> %i.fs, %i.fr
  %i.fu = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx151) ; 2 uses
  %cmp.n152 = icmp eq i64 %i.fl, %n.vec142
  br i1 %cmp.n152, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph89.i.i.i.i.preheader241

.lr.ph89.i.i.i.i.preheader241:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block150
  %.05588.i.i.i.i.ph = phi i64 [ %i.dy, %.lr.ph89.i.i.i.i.preheader ], [ %i.fm, %middle.block150 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.fu, %middle.block150 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader246, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.fy, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader246 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.fx, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader246 ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %.05683.i.i.i.i
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !73
  %i.fx = add nsw i32 %i.fw, %.07582.i.i.i.i      ; 2 uses
  %i.fy = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fy, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !339

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader241, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.gc, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader241 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.gb, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader241 ]
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.da, i64 %.05588.i.i.i.i
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !73
  %i.gb = add nsw i32 %i.ga, %.187.i.i.i.i        ; 2 uses
  %i.gc = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.gd = icmp slt i64 %i.gc, %i.dk
  br i1 %i.gd, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, !llvm.loop !340

bb.s:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ge = load i32, ptr %i.da, align 4, !tbaa !73 ; 3 uses
  %i.gf = icmp sgt i64 %i.dk, 1
  br i1 %i.gf, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.s
  %i.gg = add nsw i64 %i.dk, -1                   ; 2 uses
  %min.iters.check156 = icmp ult i64 %i.dk, 9
  br i1 %min.iters.check156, label %.lr.ph94.i.i.i.i.preheader237, label %vector.ph157

vector.ph157:                                     ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec158 = and i64 %i.gg, -8                   ; 3 uses
  %i.gh = or disjoint i64 %n.vec158, 1
  %i.gi = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ge, i64 0
  br label %vector.body159

vector.body159:                                   ; preds = %vector.body159, %vector.ph157
  %index160 = phi i64 [ 0, %vector.ph157 ], [ %index.next165, %vector.body159 ] ; 2 uses
  %vec.phi161 = phi <4 x i32> [ %i.gi, %vector.ph157 ], [ %i.gm, %vector.body159 ]
  %vec.phi162 = phi <4 x i32> [ zeroinitializer, %vector.ph157 ], [ %i.gn, %vector.body159 ]
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %index160 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 20
  %wide.load163 = load <4 x i32>, ptr %i.gk, align 4, !tbaa !73
  %wide.load164 = load <4 x i32>, ptr %i.gl, align 4, !tbaa !73
  %i.gm = add <4 x i32> %wide.load163, %vec.phi161 ; 2 uses
  %i.gn = add <4 x i32> %wide.load164, %vec.phi162 ; 2 uses
  %index.next165 = add nuw i64 %index160, 8       ; 2 uses
  %i.go = icmp eq i64 %index.next165, %n.vec158
  br i1 %i.go, label %middle.block166, label %vector.body159, !llvm.loop !341

middle.block166:                                  ; preds = %vector.body159
  %bin.rdx167 = add <4 x i32> %i.gn, %i.gm
  %i.gp = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx167) ; 2 uses
  %cmp.n168 = icmp eq i64 %i.gg, %n.vec158
  br i1 %cmp.n168, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i.preheader237

.lr.ph94.i.i.i.i.preheader237:                    ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block166
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.gh, %middle.block166 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.ge, %.lr.ph94.i.i.i.i.preheader ], [ %i.gp, %middle.block166 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader237, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.gt, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader237 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.gs, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader237 ]
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %.092.i.i.i.i
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !73
  %i.gs = add nsw i32 %i.gr, %.291.i.i.i.i        ; 2 uses
  %i.gt = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.gt, %i.dk
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i, !llvm.loop !342

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block150, %middle.block166, %bb.s, %.preheader.i.i.i.i
  %.0.i.i = phi i32 [ %i.gs, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ge, %bb.s ], [ %i.gp, %middle.block166 ], [ %i.fu, %middle.block150 ], [ %i.gb, %.lr.ph89.i.i.i.i ]
  %i.gu = sext i32 %.0.i.i to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %bb.k, %bb.l, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i
  %.0.i = phi i64 [ %i.dj, %bb.k ], [ %i.gu, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i ], [ 0, %bb.l ]
  %i.gv = shl nsw i64 %.0.i, 1
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.gw, i64 noundef %i.gv)
  %i.gx = load ptr, ptr %i.cz, align 8, !tbaa !132 ; 13 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !116 ; 2 uses
  %i.hb = load i64, ptr %i.b, align 8, !tbaa !115
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.hb
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !73
  %i.he = load i32, ptr %i.ha, align 4, !tbaa !73
  %i.hf = sub nsw i32 %i.hd, %i.he
  %i.hg = sext i32 %i.hf to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit44

bb.u:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.hh = load i64, ptr %i.b, align 8, !tbaa !115 ; 11 uses
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit44, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hj = ptrtoint ptr %i.gx to i64               ; 2 uses
  %i.hk = and i64 %i.hj, 3
  %.not.i.i.i.i.i.i.i.i10 = icmp eq i64 %i.hk, 0
  br i1 %.not.i.i.i.i.i.i.i.i10, label %bb.w, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i11

bb.w:                                             ; preds = %bb.v
  %i.hl = lshr exact i64 %i.hj, 2
  %i.hm = sub nsw i64 0, %i.hl
  %i.hn = and i64 %i.hm, 3
  %i.ho = call i64 @llvm.smin.i64(i64 %i.hn, i64 %i.hh)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i11

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i11: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i12 = phi i64 [ %i.ho, %bb.w ], [ %i.hh, %bb.v ] ; 12 uses
  %i.hp = sub nsw i64 %i.hh, %.0.i.i.i.i.i.i.i.i12 ; 5 uses
  %i.hq = sdiv i64 %i.hp, 8
  %i.hr = shl nsw i64 %i.hq, 3                    ; 2 uses
  %i.hs = sdiv i64 %i.hp, 4                       ; 2 uses
  %i.ht = shl nsw i64 %i.hs, 2                    ; 2 uses
  %i.hu = add nsw i64 %i.hr, %.0.i.i.i.i.i.i.i.i12 ; 2 uses
  %i.hv = add nsw i64 %i.ht, %.0.i.i.i.i.i.i.i.i12 ; 4 uses
  %.off.i.i.i.i13 = add i64 %i.hp, 3
  %.not.i.i.i.i14 = icmp ult i64 %.off.i.i.i.i13, 7
  br i1 %.not.i.i.i.i14, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i11
  %i.hw = getelementptr [4 x i8], ptr %i.gx, i64 %.0.i.i.i.i.i.i.i.i12 ; 2 uses
  %i.hx = load <2 x i64>, ptr %i.hw, align 1, !tbaa !81 ; 2 uses
  %i.hy = icmp sgt i64 %i.hp, 7
  br i1 %i.hy, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.hz = getelementptr i8, ptr %i.hw, i64 16
  %i.ia = load <4 x i32>, ptr %i.hz, align 1, !tbaa !81 ; 2 uses
  %i.ib = bitcast <2 x i64> %i.hx to <4 x i32>    ; 2 uses
  %i.ic = icmp samesign ugt i64 %i.hp, 15
  br i1 %i.ic, label %.lr.ph.preheader.i.i.i.i33, label %._crit_edge.i.i.i.i30

.lr.ph.preheader.i.i.i.i33:                       ; preds = %bb.y
  %.05777.i.i.i.i34 = add nsw i64 %.0.i.i.i.i.i.i.i.i12, 8
  br label %.lr.ph.i.i.i.i35

._crit_edge.i.i.i.i30:                            ; preds = %.lr.ph.i.i.i.i35, %bb.y
  %.lcssa.i.i.i.i31 = phi <4 x i32> [ %i.ia, %bb.y ], [ %i.in, %.lr.ph.i.i.i.i35 ]
  %.sroa.067.0.lcssa.i.i.i.i32 = phi <4 x i32> [ %i.ib, %bb.y ], [ %i.ij, %.lr.ph.i.i.i.i35 ]
  %i.id = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i32, %.lcssa.i.i.i.i31 ; 2 uses
  %i.ie = bitcast <4 x i32> %i.id to <2 x i64>
  %i.if = icmp sgt i64 %i.ht, %i.hr
  br i1 %i.if, label %bb.z, label %bb.aa

.lr.ph.i.i.i.i35:                                 ; preds = %.lr.ph.i.i.i.i35, %.lr.ph.preheader.i.i.i.i33
  %.05780.i.i.i.i36 = phi i64 [ %.057.i.i.i.i39, %.lr.ph.i.i.i.i35 ], [ %.05777.i.i.i.i34, %.lr.ph.preheader.i.i.i.i33 ] ; 3 uses
  %.057.in79.i.i.i.i37 = phi i64 [ %.05780.i.i.i.i36, %.lr.ph.i.i.i.i35 ], [ %.0.i.i.i.i.i.i.i.i12, %.lr.ph.preheader.i.i.i.i33 ]
  %.sroa.067.078.i.i.i.i38 = phi <4 x i32> [ %i.ij, %.lr.ph.i.i.i.i35 ], [ %i.ib, %.lr.ph.preheader.i.i.i.i33 ]
  %i.ig = phi <4 x i32> [ %i.in, %.lr.ph.i.i.i.i35 ], [ %i.ia, %.lr.ph.preheader.i.i.i.i33 ]
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %.05780.i.i.i.i36
  %i.ii = load <4 x i32>, ptr %i.ih, align 1, !tbaa !81
  %i.ij = add <4 x i32> %i.ii, %.sroa.067.078.i.i.i.i38 ; 2 uses
  %i.ik = getelementptr [4 x i8], ptr %i.gx, i64 %.057.in79.i.i.i.i37
  %i.il = getelementptr i8, ptr %i.ik, i64 48
  %i.im = load <4 x i32>, ptr %i.il, align 1, !tbaa !81
  %i.in = add <4 x i32> %i.im, %i.ig              ; 2 uses
  %.057.i.i.i.i39 = add nsw i64 %.05780.i.i.i.i36, 8 ; 2 uses
  %i.io = icmp slt i64 %.057.i.i.i.i39, %i.hu
  br i1 %i.io, label %.lr.ph.i.i.i.i35, label %._crit_edge.i.i.i.i30, !llvm.loop !336

bb.z:                                             ; preds = %._crit_edge.i.i.i.i30
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.hu
  %i.iq = load <4 x i32>, ptr %i.ip, align 1, !tbaa !81
  %i.ir = add <4 x i32> %i.iq, %i.id
  %i.is = bitcast <4 x i32> %i.ir to <2 x i64>
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i.i.i.i30, %bb.x
  %.sroa.067.2.i.i.i.i15 = phi <2 x i64> [ %i.hx, %bb.x ], [ %i.is, %bb.z ], [ %i.ie, %._crit_edge.i.i.i.i30 ] ; 2 uses
  %i.it = bitcast <2 x i64> %.sroa.067.2.i.i.i.i15 to <4 x i32>
  %i.iu = bitcast <2 x i64> %.sroa.067.2.i.i.i.i15 to <4 x i32>
  %i.iv = shufflevector <4 x i32> %i.iu, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.iw = add <4 x i32> %i.iv, %i.it              ; 2 uses
  %shift220 = shufflevector <4 x i32> %i.iw, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop221 = add nsw <4 x i32> %i.iw, %shift220 ; 2 uses
  %4 = extractelement <4 x i32> %foldExtExtBinop221, i64 0 ; 2 uses
  %i.ix = icmp sgt i64 %.0.i.i.i.i.i.i.i.i12, 0
  br i1 %i.ix, label %.lr.ph85.i.i.i.i26.preheader, label %.preheader.i.i.i.i18

.lr.ph85.i.i.i.i26.preheader:                     ; preds = %bb.aa
  %min.iters.check172 = icmp ult i64 %.0.i.i.i.i.i.i.i.i12, 8
  br i1 %min.iters.check172, label %.lr.ph85.i.i.i.i26.preheader231, label %vector.ph173

vector.ph173:                                     ; preds = %.lr.ph85.i.i.i.i26.preheader
  %n.vec174 = and i64 %.0.i.i.i.i.i.i.i.i12, 9223372036854775800 ; 3 uses
  %i.iy = shufflevector <4 x i32> %foldExtExtBinop221, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %vector.ph173
  %index176 = phi i64 [ 0, %vector.ph173 ], [ %index.next181, %vector.body175 ] ; 2 uses
  %vec.phi177 = phi <4 x i32> [ %i.iy, %vector.ph173 ], [ %i.jb, %vector.body175 ]
  %vec.phi178 = phi <4 x i32> [ zeroinitializer, %vector.ph173 ], [ %i.jc, %vector.body175 ]
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %index176 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %wide.load179 = load <4 x i32>, ptr %i.iz, align 4, !tbaa !73
  %wide.load180 = load <4 x i32>, ptr %i.ja, align 4, !tbaa !73
  %i.jb = add <4 x i32> %wide.load179, %vec.phi177 ; 2 uses
  %i.jc = add <4 x i32> %wide.load180, %vec.phi178 ; 2 uses
  %index.next181 = add nuw i64 %index176, 8       ; 2 uses
  %i.jd = icmp eq i64 %index.next181, %n.vec174
  br i1 %i.jd, label %middle.block182, label %vector.body175, !llvm.loop !343

middle.block182:                                  ; preds = %vector.body175
  %bin.rdx183 = add <4 x i32> %i.jc, %i.jb
  %i.je = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx183) ; 2 uses
  %cmp.n184 = icmp eq i64 %.0.i.i.i.i.i.i.i.i12, %n.vec174
  br i1 %cmp.n184, label %.preheader.i.i.i.i18, label %.lr.ph85.i.i.i.i26.preheader231

.lr.ph85.i.i.i.i26.preheader231:                  ; preds = %.lr.ph85.i.i.i.i26.preheader, %middle.block182
  %.05683.i.i.i.i27.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i26.preheader ], [ %n.vec174, %middle.block182 ]
  %.07582.i.i.i.i28.ph = phi i32 [ %4, %.lr.ph85.i.i.i.i26.preheader ], [ %i.je, %middle.block182 ]
  br label %.lr.ph85.i.i.i.i26

.preheader.i.i.i.i18:                             ; preds = %.lr.ph85.i.i.i.i26, %middle.block182, %bb.aa
  %.075.lcssa.i.i.i.i19 = phi i32 [ %4, %bb.aa ], [ %i.je, %middle.block182 ], [ %i.ju, %.lr.ph85.i.i.i.i26 ] ; 3 uses
  %i.jf = icmp slt i64 %i.hv, %i.hh
  br i1 %i.jf, label %.lr.ph89.i.i.i.i23.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i20

.lr.ph89.i.i.i.i23.preheader:                     ; preds = %.preheader.i.i.i.i18
  %i.jg = shl nsw i64 %i.hs, 2
  %i.jh = add i64 %.0.i.i.i.i.i.i.i.i12, %i.jg
  %i.ji = sub i64 %i.hh, %i.jh                    ; 3 uses
  %min.iters.check188 = icmp ult i64 %i.ji, 8
  br i1 %min.iters.check188, label %.lr.ph89.i.i.i.i23.preheader226, label %vector.ph189

vector.ph189:                                     ; preds = %.lr.ph89.i.i.i.i23.preheader
  %n.vec190 = and i64 %i.ji, -8                   ; 3 uses
  %i.jj = add i64 %i.hv, %n.vec190
  %i.jk = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i19, i64 0
  %i.jl = getelementptr [4 x i8], ptr %i.gx, i64 %i.hv
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph189
  %index192 = phi i64 [ 0, %vector.ph189 ], [ %index.next197, %vector.body191 ] ; 2 uses
  %vec.phi193 = phi <4 x i32> [ %i.jk, %vector.ph189 ], [ %i.jo, %vector.body191 ]
  %vec.phi194 = phi <4 x i32> [ zeroinitializer, %vector.ph189 ], [ %i.jp, %vector.body191 ]
  %i.jm = getelementptr [4 x i8], ptr %i.jl, i64 %index192 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %wide.load195 = load <4 x i32>, ptr %i.jm, align 4, !tbaa !73
  %wide.load196 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !73
  %i.jo = add <4 x i32> %wide.load195, %vec.phi193 ; 2 uses
  %i.jp = add <4 x i32> %wide.load196, %vec.phi194 ; 2 uses
  %index.next197 = add nuw i64 %index192, 8       ; 2 uses
  %i.jq = icmp eq i64 %index.next197, %n.vec190
  br i1 %i.jq, label %middle.block198, label %vector.body191, !llvm.loop !344

middle.block198:                                  ; preds = %vector.body191
  %bin.rdx199 = add <4 x i32> %i.jp, %i.jo
  %i.jr = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx199) ; 2 uses
  %cmp.n200 = icmp eq i64 %i.ji, %n.vec190
  br i1 %cmp.n200, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i20, label %.lr.ph89.i.i.i.i23.preheader226

.lr.ph89.i.i.i.i23.preheader226:                  ; preds = %.lr.ph89.i.i.i.i23.preheader, %middle.block198
  %.05588.i.i.i.i24.ph = phi i64 [ %i.hv, %.lr.ph89.i.i.i.i23.preheader ], [ %i.jj, %middle.block198 ]
  %.187.i.i.i.i25.ph = phi i32 [ %.075.lcssa.i.i.i.i19, %.lr.ph89.i.i.i.i23.preheader ], [ %i.jr, %middle.block198 ]
  br label %.lr.ph89.i.i.i.i23

.lr.ph85.i.i.i.i26:                               ; preds = %.lr.ph85.i.i.i.i26.preheader231, %.lr.ph85.i.i.i.i26
  %.05683.i.i.i.i27 = phi i64 [ %i.jv, %.lr.ph85.i.i.i.i26 ], [ %.05683.i.i.i.i27.ph, %.lr.ph85.i.i.i.i26.preheader231 ] ; 2 uses
  %.07582.i.i.i.i28 = phi i32 [ %i.ju, %.lr.ph85.i.i.i.i26 ], [ %.07582.i.i.i.i28.ph, %.lr.ph85.i.i.i.i26.preheader231 ]
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %.05683.i.i.i.i27
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !73
  %i.ju = add nsw i32 %i.jt, %.07582.i.i.i.i28    ; 2 uses
  %i.jv = add nuw nsw i64 %.05683.i.i.i.i27, 1    ; 2 uses
  %exitcond.not.i.i.i.i29 = icmp eq i64 %i.jv, %.0.i.i.i.i.i.i.i.i12
  br i1 %exitcond.not.i.i.i.i29, label %.preheader.i.i.i.i18, label %.lr.ph85.i.i.i.i26, !llvm.loop !345

.lr.ph89.i.i.i.i23:                               ; preds = %.lr.ph89.i.i.i.i23.preheader226, %.lr.ph89.i.i.i.i23
  %.05588.i.i.i.i24 = phi i64 [ %i.jz, %.lr.ph89.i.i.i.i23 ], [ %.05588.i.i.i.i24.ph, %.lr.ph89.i.i.i.i23.preheader226 ] ; 2 uses
  %.187.i.i.i.i25 = phi i32 [ %i.jy, %.lr.ph89.i.i.i.i23 ], [ %.187.i.i.i.i25.ph, %.lr.ph89.i.i.i.i23.preheader226 ]
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %.05588.i.i.i.i24
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !73
  %i.jy = add nsw i32 %i.jx, %.187.i.i.i.i25      ; 2 uses
  %i.jz = add nsw i64 %.05588.i.i.i.i24, 1        ; 2 uses
  %i.ka = icmp slt i64 %i.jz, %i.hh
  br i1 %i.ka, label %.lr.ph89.i.i.i.i23, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i20, !llvm.loop !346

bb.ab:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i11
  %i.kb = load i32, ptr %i.gx, align 4, !tbaa !73 ; 3 uses
  %i.kc = icmp sgt i64 %i.hh, 1
  br i1 %i.kc, label %.lr.ph94.i.i.i.i40.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i20

.lr.ph94.i.i.i.i40.preheader:                     ; preds = %bb.ab
  %i.kd = add nsw i64 %i.hh, -1                   ; 2 uses
  %min.iters.check204 = icmp ult i64 %i.hh, 9
  br i1 %min.iters.check204, label %.lr.ph94.i.i.i.i40.preheader223, label %vector.ph205

vector.ph205:                                     ; preds = %.lr.ph94.i.i.i.i40.preheader
  %n.vec206 = and i64 %i.kd, -8                   ; 3 uses
  %i.ke = or disjoint i64 %n.vec206, 1
  %i.kf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.kb, i64 0
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph205
  %index208 = phi i64 [ 0, %vector.ph205 ], [ %index.next213, %vector.body207 ] ; 2 uses
  %vec.phi209 = phi <4 x i32> [ %i.kf, %vector.ph205 ], [ %i.kj, %vector.body207 ]
  %vec.phi210 = phi <4 x i32> [ zeroinitializer, %vector.ph205 ], [ %i.kk, %vector.body207 ]
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %index208 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 20
  %wide.load211 = load <4 x i32>, ptr %i.kh, align 4, !tbaa !73
  %wide.load212 = load <4 x i32>, ptr %i.ki, align 4, !tbaa !73
  %i.kj = add <4 x i32> %wide.load211, %vec.phi209 ; 2 uses
  %i.kk = add <4 x i32> %wide.load212, %vec.phi210 ; 2 uses
  %index.next213 = add nuw i64 %index208, 8       ; 2 uses
  %i.kl = icmp eq i64 %index.next213, %n.vec206
  br i1 %i.kl, label %middle.block214, label %vector.body207, !llvm.loop !347

middle.block214:                                  ; preds = %vector.body207
  %bin.rdx215 = add <4 x i32> %i.kk, %i.kj
  %i.km = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx215) ; 2 uses
  %cmp.n216 = icmp eq i64 %i.kd, %n.vec206
  br i1 %cmp.n216, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i20, label %.lr.ph94.i.i.i.i40.preheader223

.lr.ph94.i.i.i.i40.preheader223:                  ; preds = %.lr.ph94.i.i.i.i40.preheader, %middle.block214
  %.092.i.i.i.i41.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i40.preheader ], [ %i.ke, %middle.block214 ]
  %.291.i.i.i.i42.ph = phi i32 [ %i.kb, %.lr.ph94.i.i.i.i40.preheader ], [ %i.km, %middle.block214 ]
  br label %.lr.ph94.i.i.i.i40

.lr.ph94.i.i.i.i40:                               ; preds = %.lr.ph94.i.i.i.i40.preheader223, %.lr.ph94.i.i.i.i40
  %.092.i.i.i.i41 = phi i64 [ %i.kq, %.lr.ph94.i.i.i.i40 ], [ %.092.i.i.i.i41.ph, %.lr.ph94.i.i.i.i40.preheader223 ] ; 2 uses
  %.291.i.i.i.i42 = phi i32 [ %i.kp, %.lr.ph94.i.i.i.i40 ], [ %.291.i.i.i.i42.ph, %.lr.ph94.i.i.i.i40.preheader223 ]
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %.092.i.i.i.i41
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !73
  %i.kp = add nsw i32 %i.ko, %.291.i.i.i.i42      ; 2 uses
  %i.kq = add nuw nsw i64 %.092.i.i.i.i41, 1      ; 2 uses
  %exitcond102.not.i.i.i.i43 = icmp eq i64 %i.kq, %i.hh
  br i1 %exitcond102.not.i.i.i.i43, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i20, label %.lr.ph94.i.i.i.i40, !llvm.loop !348

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i20: ; preds = %.lr.ph89.i.i.i.i23, %.lr.ph94.i.i.i.i40, %middle.block198, %middle.block214, %bb.ab, %.preheader.i.i.i.i18
  %.0.i.i21 = phi i32 [ %i.kp, %.lr.ph94.i.i.i.i40 ], [ %.075.lcssa.i.i.i.i19, %.preheader.i.i.i.i18 ], [ %i.kb, %bb.ab ], [ %i.km, %middle.block214 ], [ %i.jr, %middle.block198 ], [ %i.jy, %.lr.ph89.i.i.i.i23 ]
  %i.kr = sext i32 %.0.i.i21 to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit44

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit44: ; preds = %bb.t, %bb.u, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i20
  %.0.i22 = phi i64 [ %i.hg, %bb.t ], [ %i.kr, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i20 ], [ 0, %bb.u ]
  %i.ks = shl nsw i64 %.0.i22, 1
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.kt, i64 noundef %i.ks)
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !349
  %.not.i.i = icmp eq i64 %.sroa.speculated, %i.kw
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit44
  %i.kx = load ptr, ptr %i.ku, align 8, !tbaa !350
  call void @free(ptr noundef %i.kx) #33
  %i.ky = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.ky, label %bb.ad, label %.sink.split.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.kz = icmp samesign ugt i64 %.sroa.speculated, 2305843009213693951
  br i1 %i.kz, label %bb.ae, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.la = call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.la, align 8, !tbaa !83
  call void @__cxa_throw(ptr nonnull %i.la, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.ad
  %i.lb = shl nuw i64 %.sroa.speculated, 3
  %i.lc = call noalias ptr @malloc(i64 noundef %i.lb) #34 ; 2 uses
  %i.ld = icmp eq ptr %i.lc, null
  br i1 %i.ld, label %bb.af, label %.sink.split.i.i

bb.af:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.le = call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.le, align 8, !tbaa !83
  call void @__cxa_throw(ptr nonnull %i.le, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.ac
  %.sink.i.i = phi ptr [ %i.lc, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.ac ]
  store ptr %.sink.i.i, ptr %i.ku, align 8, !tbaa !350
end_hunk_0
begin_hunk_1_@_ZN5Eigen8SparseQRINS_12SparseMatrixIdLi0EiEENS_14COLAMDOrderingIiEEE9factorizeERKS2_:bb.a
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !116
  call void @free(ptr noundef %i.ahj) #33
  %i.ahk = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ahl = load ptr, ptr %i.ahk, align 8, !tbaa !132
  call void @free(ptr noundef %i.ahl) #33
  %i.ahm = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ahn = load ptr, ptr %i.ahm, align 8, !tbaa !133 ; 2 uses
  %i.aho = icmp eq ptr %i.ahn, null
  br i1 %i.aho, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %_ZNK5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEEmlIS2_EES2_RKNS0_IT_EE.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ahn) #36
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %_ZNK5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEEmlIS2_EES2_RKNS0_IT_EE.exit
  %i.ahp = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ahq = load ptr, ptr %i.ahp, align 8, !tbaa !134 ; 2 uses
  %i.ahr = icmp eq ptr %i.ahq, null
  br i1 %i.ahr, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @_ZdaPv(ptr noundef nonnull %i.ahq) #36
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.cs, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.cy

bb.cu:                                            ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit301, %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit
  %i.ahs = landingpad { ptr, i32 }
          cleanup
  br label %.body270

bb.cv:                                            ; preds = %bb.cm
  %i.aht = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.cx

bb.cw:                                            ; preds = %.invoke.i.i.i
  %i.ahu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.pn223 = phi { ptr, i32 } [ %i.ahu, %bb.cw ], [ %i.aht, %bb.cv ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #33
  br label %.body302

.body302:                                         ; preds = %bb.cl, %bb.cx
  %.pn223.pn = phi { ptr, i32 } [ %.pn223, %bb.cx ], [ %i.afh, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %.body270

bb.cy:                                            ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, %bb.cj
  store i8 1, ptr %0, align 8, !tbaa !402
  %i.ahv = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 1, ptr %i.ahv, align 2, !tbaa !403
  br label %.thread496

.thread496:                                       ; preds = %bb.aj, %bb.cy
  %.sink724 = phi i32 [ 0, %bb.cy ], [ 3, %bb.aj ]
  %i.ahw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink724, ptr %i.ahw, align 4, !tbaa !139
  call void @free(ptr noundef %.sroa.0365.0) #33
  call void @free(ptr noundef %.sroa.0382.0472) #33
  call void @free(ptr noundef %.sroa.0394.0) #33
  call void @free(ptr noundef %.sroa.0405.0455) #33
  ret void

.body270:                                         ; preds = %.loopexit516, %.loopexit.split-lp, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i, %bb.ak, %bb.n, %bb.cu, %.body302, %bb.by, %bb.bw, %bb.r
  %.pn240.pn = phi { ptr, i32 } [ %i.lw, %bb.ak ], [ %i.abj, %bb.by ], [ %i.bs, %bb.n ], [ %i.de, %bb.r ], [ %i.zm, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i ], [ %.pn223.pn, %.body302 ], [ %i.ahs, %bb.cu ], [ %i.aap, %bb.bw ], [ %lpad.loopexit, %.loopexit516 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @free(ptr noundef %.sroa.0365.0) #33
  br label %.body266

.body266:                                         ; preds = %bb.g, %.body270
  %.sroa.0382.0473 = phi ptr [ %.sroa.0382.0472, %.body270 ], [ %i.v, %bb.g ]
  %.pn240.pn.pn = phi { ptr, i32 } [ %.pn240.pn, %.body270 ], [ %i.ad, %bb.g ]
  call void @free(ptr noundef %.sroa.0382.0473) #33
  br label %.body259

.body259:                                         ; preds = %bb.e, %.body266
  %.pn240.pn.pn.pn = phi { ptr, i32 } [ %.pn240.pn.pn, %.body266 ], [ %i.y, %bb.e ]
  call void @free(ptr noundef %.sroa.0394.0) #33
  br label %.body

.body:                                            ; preds = %.body259, %bb.c
  %.pn240.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.s, %bb.c ], [ %.pn240.pn.pn.pn, %.body259 ]
  call void @free(ptr noundef %.sroa.0405.0455) #33
  resume { ptr, i32 } %.pn240.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen14COLAMDOrderingIiEclINS_12SparseMatrixIdLi0EiEEEEvRKT_RNS_17PermutationMatrixILin1ELin1EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca [20 x i32], align 16              ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !25
  %i.g = trunc i64 %i.f to i32                    ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !115  ; 20 uses
  %i.j = trunc i64 %i.i to i32                    ; 13 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !132  ; 13 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !116  ; 2 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !73
  %i.r = load i32, ptr %i.o, align 4, !tbaa !73
  %i.s = sub nsw i32 %i.q, %i.r
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.c:                                             ; preds = %bb.a
  %i.t = icmp eq i64 %i.i, 0
  br i1 %i.t, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.v = and i64 %i.u, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.w = lshr exact i64 %i.u, 2
  %i.x = sub nsw i64 0, %i.w
  %i.y = and i64 %i.x, 3
  %i.z = tail call i64 @llvm.smin.i64(i64 %i.y, i64 %i.i)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.z, %bb.e ], [ %i.i, %bb.d ] ; 12 uses
  %i.aa = sub nsw i64 %i.i, %.0.i.i.i.i.i.i.i.i   ; 5 uses
  %i.ab = sdiv i64 %i.aa, 8
  %i.ac = shl nsw i64 %i.ab, 3                    ; 2 uses
  %i.ad = sdiv i64 %i.aa, 4                       ; 2 uses
  %i.ae = shl nsw i64 %i.ad, 2                    ; 2 uses
  %i.af = add nsw i64 %i.ac, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.ag = add nsw i64 %i.ae, %.0.i.i.i.i.i.i.i.i  ; 4 uses
  %.off.i.i.i.i = add i64 %i.aa, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ah = getelementptr [4 x i8], ptr %i.l, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.ai = load <2 x i64>, ptr %i.ah, align 1, !tbaa !81 ; 2 uses
  %i.aj = icmp sgt i64 %i.aa, 7
  br i1 %i.aj, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr i8, ptr %i.ah, i64 16
  %i.al = load <4 x i32>, ptr %i.ak, align 1, !tbaa !81 ; 2 uses
  %i.am = bitcast <2 x i64> %i.ai to <4 x i32>    ; 2 uses
  %i.an = icmp samesign ugt i64 %i.aa, 15
  br i1 %i.an, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.g
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.al, %bb.g ], [ %i.ay, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.am, %bb.g ], [ %i.au, %.lr.ph.i.i.i.i ]
  %i.ao = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.ap = bitcast <4 x i32> %i.ao to <2 x i64>
  %i.aq = icmp sgt i64 %i.ae, %i.ac
  br i1 %i.aq, label %bb.h, label %bb.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.au, %.lr.ph.i.i.i.i ], [ %i.am, %.lr.ph.preheader.i.i.i.i ]
  %i.ar = phi <4 x i32> [ %i.ay, %.lr.ph.i.i.i.i ], [ %i.al, %.lr.ph.preheader.i.i.i.i ]
  %i.as = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.05780.i.i.i.i
  %i.at = load <4 x i32>, ptr %i.as, align 1, !tbaa !81
  %i.au = add <4 x i32> %i.at, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.av = getelementptr [4 x i8], ptr %i.l, i64 %.057.in79.i.i.i.i
  %i.aw = getelementptr i8, ptr %i.av, i64 48
  %i.ax = load <4 x i32>, ptr %i.aw, align 1, !tbaa !81
  %i.ay = add <4 x i32> %i.ax, %i.ar              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.az = icmp slt i64 %.057.i.i.i.i, %i.af
  br i1 %i.az, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !336

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.af
  %i.bb = load <4 x i32>, ptr %i.ba, align 1, !tbaa !81
  %i.bc = add <4 x i32> %i.bb, %i.ao
  %i.bd = bitcast <4 x i32> %i.bc to <2 x i64>
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i, %bb.f
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.ai, %bb.f ], [ %i.bd, %bb.h ], [ %i.ap, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.be = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.bf = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.bg = shufflevector <4 x i32> %i.bf, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bh = add <4 x i32> %i.bg, %i.be              ; 2 uses
  %shift = shufflevector <4 x i32> %i.bh, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.bh, %shift ; 2 uses
  %3 = extractelement <4 x i32> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bi = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.bi, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.preheader176, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.bj = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bj, %vector.ph ], [ %i.bm, %vector.body ]
  %vec.phi118 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bn, %vector.body ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load = load <4 x i32>, ptr %i.bk, align 4, !tbaa !73
  %wide.load119 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !73
  %i.bm = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bn = add <4 x i32> %wide.load119, %vec.phi118 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !404

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bn, %i.bm
  %i.bp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader176

.lr.ph85.i.i.i.i.preheader176:                    ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.ph = phi i32 [ %3, %.lr.ph85.i.i.i.i.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block, %bb.i
  %.075.lcssa.i.i.i.i = phi i32 [ %3, %bb.i ], [ %i.bp, %middle.block ], [ %i.cf, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.bq = icmp slt i64 %i.ag, %i.i
  br i1 %i.bq, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.br = shl nsw i64 %i.ad, 2
  %i.bs = add i64 %.0.i.i.i.i.i.i.i.i, %i.br
  %i.bt = sub i64 %i.i, %i.bs                     ; 3 uses
  %min.iters.check121 = icmp ult i64 %i.bt, 8
  br i1 %min.iters.check121, label %.lr.ph89.i.i.i.i.preheader171, label %vector.ph122

vector.ph122:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec123 = and i64 %i.bt, -8                   ; 3 uses
  %i.bu = add i64 %i.ag, %n.vec123
  %i.bv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.bw = getelementptr [4 x i8], ptr %i.l, i64 %i.ag
  br label %vector.body124

vector.body124:                                   ; preds = %vector.body124, %vector.ph122
  %index125 = phi i64 [ 0, %vector.ph122 ], [ %index.next130, %vector.body124 ] ; 2 uses
  %vec.phi126 = phi <4 x i32> [ %i.bv, %vector.ph122 ], [ %i.bz, %vector.body124 ]
  %vec.phi127 = phi <4 x i32> [ zeroinitializer, %vector.ph122 ], [ %i.ca, %vector.body124 ]
  %i.bx = getelementptr [4 x i8], ptr %i.bw, i64 %index125 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %wide.load128 = load <4 x i32>, ptr %i.bx, align 4, !tbaa !73
  %wide.load129 = load <4 x i32>, ptr %i.by, align 4, !tbaa !73
  %i.bz = add <4 x i32> %wide.load128, %vec.phi126 ; 2 uses
  %i.ca = add <4 x i32> %wide.load129, %vec.phi127 ; 2 uses
  %index.next130 = add nuw i64 %index125, 8       ; 2 uses
  %i.cb = icmp eq i64 %index.next130, %n.vec123
  br i1 %i.cb, label %middle.block131, label %vector.body124, !llvm.loop !405

middle.block131:                                  ; preds = %vector.body124
  %bin.rdx132 = add <4 x i32> %i.ca, %i.bz
  %i.cc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx132) ; 2 uses
  %cmp.n133 = icmp eq i64 %i.bt, %n.vec123
  br i1 %cmp.n133, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph89.i.i.i.i.preheader171

.lr.ph89.i.i.i.i.preheader171:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block131
  %.05588.i.i.i.i.ph = phi i64 [ %i.ag, %.lr.ph89.i.i.i.i.preheader ], [ %i.bu, %middle.block131 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.cc, %middle.block131 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader176, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.cg, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader176 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.cf, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader176 ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.05683.i.i.i.i
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !73
  %i.cf = add nsw i32 %i.ce, %.07582.i.i.i.i      ; 2 uses
  %i.cg = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cg, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !406

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader171, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.ck, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader171 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.cj, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader171 ]
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.05588.i.i.i.i
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !73
  %i.cj = add nsw i32 %i.ci, %.187.i.i.i.i        ; 2 uses
  %i.ck = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.cl = icmp slt i64 %i.ck, %i.i
  br i1 %i.cl, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, !llvm.loop !407

bb.j:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.cm = load i32, ptr %i.l, align 4, !tbaa !73  ; 3 uses
  %i.cn = icmp sgt i64 %i.i, 1
  br i1 %i.cn, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.j
  %i.co = add nsw i64 %i.i, -1                    ; 2 uses
  %min.iters.check137 = icmp ult i64 %i.i, 9
  br i1 %min.iters.check137, label %.lr.ph94.i.i.i.i.preheader168, label %vector.ph138

vector.ph138:                                     ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec139 = and i64 %i.co, -8                   ; 3 uses
  %i.cp = or disjoint i64 %n.vec139, 1
  %i.cq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.cm, i64 0
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph138
  %index141 = phi i64 [ 0, %vector.ph138 ], [ %index.next146, %vector.body140 ] ; 2 uses
  %vec.phi142 = phi <4 x i32> [ %i.cq, %vector.ph138 ], [ %i.cu, %vector.body140 ]
  %vec.phi143 = phi <4 x i32> [ zeroinitializer, %vector.ph138 ], [ %i.cv, %vector.body140 ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index141 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 20
  %wide.load144 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !73
  %wide.load145 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !73
  %i.cu = add <4 x i32> %wide.load144, %vec.phi142 ; 2 uses
  %i.cv = add <4 x i32> %wide.load145, %vec.phi143 ; 2 uses
  %index.next146 = add nuw i64 %index141, 8       ; 2 uses
  %i.cw = icmp eq i64 %index.next146, %n.vec139
  br i1 %i.cw, label %middle.block147, label %vector.body140, !llvm.loop !408

middle.block147:                                  ; preds = %vector.body140
  %bin.rdx148 = add <4 x i32> %i.cv, %i.cu
  %i.cx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx148) ; 2 uses
  %cmp.n149 = icmp eq i64 %i.co, %n.vec139
  br i1 %cmp.n149, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i.preheader168

.lr.ph94.i.i.i.i.preheader168:                    ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block147
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.cp, %middle.block147 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.cm, %.lr.ph94.i.i.i.i.preheader ], [ %i.cx, %middle.block147 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader168, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.db, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader168 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.da, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader168 ]
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.092.i.i.i.i
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !73
  %i.da = add nsw i32 %i.cz, %.291.i.i.i.i        ; 2 uses
  %i.db = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.db, %i.i
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i, !llvm.loop !409

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block131, %middle.block147, %.preheader.i.i.i.i, %bb.j, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.s, %bb.b ], [ 0, %bb.c ], [ %i.da, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cm, %bb.j ], [ %i.cx, %middle.block147 ], [ %i.cc, %middle.block131 ], [ %i.cj, %.lr.ph89.i.i.i.i ] ; 6 uses
  %i.dc = or i32 %i.j, %i.g
  %i.dd = or i32 %i.dc, %.0.i
  %or.cond3.not.i = icmp sgt i32 %i.dd, -1
  br i1 %or.cond3.not.i, label %bb.k, label %_ZN5Eigen8internal6Colamd11recommendedIiEET_S3_S3_S3_.exit

bb.k:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.de = shl nuw nsw i32 %.0.i, 1
  %i.df = mul i32 %i.j, 6
  %i.dg = shl i32 %i.g, 2
  %i.dh = udiv i32 %.0.i, 5
  %i.di = add i32 %i.dg, 10
  %i.dj = add i32 %i.di, %i.j
  %i.dk = add i32 %i.dj, %i.df
  %i.dl = add i32 %i.dk, %i.de
  %i.dm = add i32 %i.dl, %i.dh
  br label %_ZN5Eigen8internal6Colamd11recommendedIiEET_S3_S3_S3_.exit

_ZN5Eigen8internal6Colamd11recommendedIiEET_S3_S3_S3_.exit: ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, %bb.k
  %.0.i42 = phi i32 [ %i.dm, %bb.k ], [ -1, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %or.cond = icmp sgt i32 %i.j, -1
  br i1 %or.cond, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %_ZN5Eigen8internal6Colamd11recommendedIiEET_S3_S3_S3_.exit
  %i.dn = shl i64 %i.i, 32
  %sext66 = add nuw i64 %i.dn, 4294967296
  %i.do = ashr exact i64 %sext66, 30
  %i.dp = tail call noalias ptr @malloc(i64 noundef %i.do) #34 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %.noexc3.i, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit

.noexc3.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %i.dr = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dr, align 8, !tbaa !83
  tail call void @__cxa_throw(ptr nonnull %i.dr, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, %_ZN5Eigen8internal6Colamd11recommendedIiEET_S3_S3_S3_.exit
  %.sroa.056.0 = phi ptr [ null, %_ZN5Eigen8internal6Colamd11recommendedIiEET_S3_S3_S3_.exit ], [ %i.dp, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i ] ; 15 uses
  %i.ds = icmp sgt i32 %.0.i42, 0
  br i1 %i.ds, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i47, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit49

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i47: ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit
  %i.dt = zext nneg i32 %.0.i42 to i64
  %i.du = shl nuw nsw i64 %i.dt, 2
end_hunk_1
begin_hunk_2_@_ZN5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE20factorize_preorderedILb0EEEvRKS3_:bb.a
_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit167: ; preds = %bb.i
  %i.fw = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef nonnull %i.v) #33
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit168

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit168: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit167, %.split
  %.pn144.pn.pn.pn.pn.pn.pn.pn250 = phi { ptr, i32 } [ %i.bm, %.split ], [ %i.fw, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit167 ]
  tail call void @free(ptr noundef nonnull %i.n) #33
  resume { ptr, i32 } %.pn144.pn.pn.pn.pn.pn.pn.pn250
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen11AMDOrderingIiEclINS_12SparseMatrixIdLi0EiEEEEvRKT_RNS_17PermutationMatrixILin1ELin1EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::SparseMatrix", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store i8 0, ptr %3, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 -1, ptr %i.a, align 8, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  %i.d = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #34 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !116
  %.not6.i = icmp eq ptr %i.d, null
  br i1 %.not6.i, label %bb.b, label %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !83
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
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
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #33
  br label %common.resume

_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit:         ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !115
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.d, align 4
  invoke void @_ZN5Eigen8internal25ordering_helper_at_plus_aINS_12SparseMatrixIdLi0EiEEEEvRKT_RS4_(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit
  invoke void @_ZN5Eigen8internal23minimum_degree_orderingIdiEEvRNS_12SparseMatrixIT_Li0ET0_EERNS_17PermutationMatrixILin1ELin1ES4_EE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !116
  call void @free(ptr noundef %i.i) #33
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !132
  call void @free(ptr noundef %i.j) #33
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !133  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.l) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !134  ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.o) #36
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void

bb.i:                                             ; preds = %bb.d, %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal24permute_symm_to_fullsymmILi1ENS_12SparseMatrixIdLi0EiEELi0EEEvRKT0_RNS2_INS4_6ScalarEXT1_ENS4_12StorageIndexEEEPKS8_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25   ; 25 uses
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
  %i.g = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.g, align 8, !tbaa !83
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !116
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !132  ; 2 uses
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
  br i1 %i.aj, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !613

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.2144, i64 %i.p
  %i.al = load <4 x i32>, ptr %i.ak, align 16, !tbaa !81
  %i.am = add <4 x i32> %i.al, %i.y
  %i.an = bitcast <4 x i32> %i.am to <2 x i64>
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i, %bb.c
  %.sroa.064.2.i.i.i = phi <2 x i64> [ %i.s, %bb.c ], [ %i.an, %bb.e ], [ %i.z, %._crit_edge.i.i.i ] ; 2 uses
  %i.ao = bitcast <2 x i64> %.sroa.064.2.i.i.i to <4 x i32>
  %i.ap = bitcast <2 x i64> %.sroa.064.2.i.i.i to <4 x i32>
  %i.aq = shufflevector <4 x i32> %i.ap, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ar = add <4 x i32> %i.aq, %i.ao              ; 2 uses
  %shift = shufflevector <4 x i32> %i.ar, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.ar, %shift ; 2 uses
  %3 = extractelement <4 x i32> %foldExtExtBinop, i64 0 ; 2 uses
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
  %wide.load = load <4 x i32>, ptr %i.ay, align 4, !tbaa !73
  %wide.load216 = load <4 x i32>, ptr %i.az, align 4, !tbaa !73
  %i.ba = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bb = add <4 x i32> %wide.load216, %vec.phi215 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !614

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
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !73
  %i.bg = add nsw i32 %i.bf, %.177.i.i.i          ; 2 uses
  %i.bh = add nsw i64 %.05578.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bh, %i.b
  br i1 %exitcond.not.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph80.i.i.i, !llvm.loop !615

bb.g:                                             ; preds = %._crit_edge155.thread
  %i.bi = load i32, ptr %.sroa.0126.2144, align 4, !tbaa !73 ; 3 uses
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
  %wide.load225 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !73
  %wide.load226 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !73
  %i.bq = add <4 x i32> %wide.load225, %vec.phi223 ; 2 uses
  %i.br = add <4 x i32> %wide.load226, %vec.phi224 ; 2 uses
  %index.next227 = add nuw i64 %index222, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next227, %n.vec220
  br i1 %i.bs, label %middle.block228, label %vector.body221, !llvm.loop !616

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
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !73
  %i.bw = add nsw i32 %i.bv, %.282.i.i.i          ; 2 uses
  %i.bx = add nuw nsw i64 %.083.i.i.i, 1          ; 2 uses
  %exitcond92.not.i.i.i = icmp eq i64 %i.bx, %i.b
  br i1 %exitcond92.not.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph85.i.i.i, !llvm.loop !617

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
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !73
  %i.cb = sext i32 %i.ca to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.cc = phi i64 [ %i.cb, %bb.j ], [ %.084152, %bb.i ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.084152 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !73
  %i.cf = sext i32 %i.ce to i64                   ; 4 uses
  br i1 %i.n, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cg = getelementptr i8, ptr %i.cd, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !73
  %i.ci = sext i32 %i.ch to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.m:                                             ; preds = %bb.k
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.084152
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !73
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
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !73
  %i.cs = sext i32 %i.cr to i64                   ; 3 uses
  %i.ct = icmp eq i64 %.084152, %i.cs
  br i1 %i.ct, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.us
  %i.cu = icmp slt i64 %.084152, %i.cs
  br i1 %i.cu, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cv = getelementptr inbounds [4 x i8], ptr %.sroa.0126.2144, i64 %i.cs ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !73
  %i.cx = add nsw i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !73
  %i.cy = load i32, ptr %i.co, align 4, !tbaa !73
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %i.co, align 4, !tbaa !73
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph.split.us
  %i.da = load i32, ptr %i.cp, align 4, !tbaa !73
  %i.db = add nsw i32 %i.da, 1
  store i32 %i.db, ptr %i.cp, align 4, !tbaa !73
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.dc = add nsw i64 %.sroa.9.0151.us, 1         ; 2 uses
  %exitcond173.not = icmp eq i64 %i.dc, %.sink.i
  br i1 %exitcond173.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !618

._crit_edge:                                      ; preds = %bb.u, %bb.q, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.dd = add nuw nsw i64 %.084152, 1             ; 2 uses
  %exitcond174.not = icmp eq i64 %i.dd, %i.b
  br i1 %exitcond174.not, label %._crit_edge155.thread, label %bb.i, !llvm.loop !619

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.u
  %.sroa.9.0151 = phi i64 [ %i.du, %bb.u ], [ %i.cf, %.lr.ph ] ; 2 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %i.i, i64 %.sroa.9.0151
  %i.df = load i32, ptr %i.de, align 4, !tbaa !73
  %i.dg = sext i32 %i.df to i64                   ; 3 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !73
  %i.dj = sext i32 %i.di to i64                   ; 2 uses
  %i.dk = icmp eq i64 %.084152, %i.dg
  br i1 %i.dk, label %bb.r, label %bb.s
end_hunk_2
begin_hunk_3_@_ZN5Eigen8internal25ordering_helper_at_plus_aINS_12SparseMatrixIdLi0EiEEEEvRKT_RS4_:bb.a
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !73 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !73 ; 2 uses
  %i.bj = icmp slt i32 %i.bg, %i.bi
  br i1 %i.bj, label %.lr.ph.us.preheader.epil, label %._crit_edge17

.lr.ph.us.preheader.epil:                         ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.epil.preheader
  %i.bk = sext i32 %i.bi to i64
  %i.bl = sext i32 %i.bg to i64                   ; 2 uses
  %i.bm = shl nsw i64 %i.bl, 3
  %scevgep20.epil = getelementptr i8, ptr %i.n, i64 %i.bm
  %i.bn = sub nsw i64 %i.bk, %i.bl
  %i.bo = shl nsw i64 %i.bn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep20.epil, i8 0, i64 %i.bo, i1 false), !tbaa !124
  br label %._crit_edge17

._crit_edge17.loopexit31.unr-lcssa:               ; preds = %._crit_edge.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge17, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader: ; preds = %._crit_edge17.loopexit31.unr-lcssa, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.preheader ], [ %indvars.iv.next.1, %._crit_edge17.loopexit31.unr-lcssa ] ; 2 uses
  %lcmp.mod32 = trunc i64 %i.k to i1
  call void @llvm.assume(i1 %lcmp.mod32)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.epil.init
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !73 ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph.preheader.epil, label %._crit_edge17

.lr.ph.preheader.epil:                            ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader
  %i.bs = zext nneg i32 %i.bq to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.epil.init
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !73
  %i.bv = sext i32 %i.bu to i64
  %i.bw = shl nsw i64 %i.bv, 3
  %scevgep.epil = getelementptr i8, ptr %i.n, i64 %i.bw
  %i.bx = shl nuw nsw i64 %i.bs, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.epil, i8 0, i64 %i.bx, i1 false), !tbaa !124
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %._crit_edge17.loopexit31.unr-lcssa, %.lr.ph.preheader.epil, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader, %._crit_edge17.loopexit.unr-lcssa, %.lr.ph.us.preheader.epil, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.epil.preheader, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store i8 0, ptr %4, align 8, !tbaa !149, !alias.scope !625
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.by, align 8, !tbaa !20, !alias.scope !625
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %0, ptr %i.bz, align 8, !tbaa !20, !alias.scope !625
  %i.ca = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_S7_EEEERS1_RKNS_16SparseMatrixBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.g unwind label %bb.k       ; 0 uses

bb.g:                                             ; preds = %._crit_edge17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !116
  call void @free(ptr noundef %i.cb) #33
  %i.cc = load ptr, ptr %i.h, align 8, !tbaa !132
  call void @free(ptr noundef %i.cc) #33
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !133 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ce) #36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !134 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.ch) #36
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.k:                                             ; preds = %._crit_edge17
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.am, %bb.f ], [ %i.cj, %bb.k ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal23minimum_degree_orderingIdiEEvRNS_12SparseMatrixIT_Li0ET0_EERNS_17PermutationMatrixILin1ELin1ES4_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !115  ; 32 uses
  %i.c = trunc i64 %i.b to i32                    ; 17 uses
  %i.d = sitofp i32 %i.c to double
  %i.e = tail call double @sqrt(double noundef %i.d) #33
  %i.f = fmul double %i.e, 1.000000e+01
  %i.g = fptosi double %i.f to i32
  %.sroa.speculated548 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 16)
  %i.h = add nsw i32 %i.c, -2
  %.sroa.speculated543 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated548, i32 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !132  ; 13 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !116  ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.b
  %i.o = load i32, ptr %i.n, align 4, !tbaa !73
  %i.p = load i32, ptr %i.m, align 4, !tbaa !73
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
  br i1 %i.ax, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !336

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ad
  %i.az = load <4 x i32>, ptr %i.ay, align 1, !tbaa !81
  %i.ba = add <4 x i32> %i.az, %i.am
  %i.bb = bitcast <4 x i32> %i.ba to <2 x i64>
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i, %bb.f
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.ag, %bb.f ], [ %i.bb, %bb.h ], [ %i.an, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bc = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.bd = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.be = shufflevector <4 x i32> %i.bd, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bf = add <4 x i32> %i.be, %i.bc              ; 2 uses
  %shift = shufflevector <4 x i32> %i.bf, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.bf, %shift ; 2 uses
  %2 = extractelement <4 x i32> %foldExtExtBinop, i64 0 ; 2 uses
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
  %wide.load = load <4 x i32>, ptr %i.bi, align 4, !tbaa !73
  %wide.load1170 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !73
  %i.bk = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bl = add <4 x i32> %wide.load1170, %vec.phi1169 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !628

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
  %wide.load1179 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !73
  %wide.load1180 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !73
  %i.bx = add <4 x i32> %wide.load1179, %vec.phi1177 ; 2 uses
  %i.by = add <4 x i32> %wide.load1180, %vec.phi1178 ; 2 uses
  %index.next1181 = add nuw i64 %index1176, 8     ; 2 uses
  %i.bz = icmp eq i64 %index.next1181, %n.vec1174
  br i1 %i.bz, label %middle.block1182, label %vector.body1175, !llvm.loop !629

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
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !73
  %i.cd = add nsw i32 %i.cc, %.07582.i.i.i.i      ; 2 uses
  %i.ce = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ce, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !630

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader1350, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.ci, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader1350 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.ch, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader1350 ]
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.05588.i.i.i.i
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !73
  %i.ch = add nsw i32 %i.cg, %.187.i.i.i.i        ; 2 uses
  %i.ci = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.cj = icmp slt i64 %i.ci, %i.b
  br i1 %i.cj, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, !llvm.loop !631

bb.j:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ck = load i32, ptr %i.j, align 4, !tbaa !73  ; 3 uses
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
  %wide.load1195 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !73
  %wide.load1196 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !73
  %i.cs = add <4 x i32> %wide.load1195, %vec.phi1193 ; 2 uses
  %i.ct = add <4 x i32> %wide.load1196, %vec.phi1194 ; 2 uses
  %index.next1197 = add nuw i64 %index1192, 8     ; 2 uses
  %i.cu = icmp eq i64 %index.next1197, %n.vec1190
  br i1 %i.cu, label %middle.block1198, label %vector.body1191, !llvm.loop !632

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
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !73
  %i.cy = add nsw i32 %i.cx, %.291.i.i.i.i        ; 2 uses
  %i.cz = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.cz, %i.b
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i, !llvm.loop !633

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block1182, %middle.block1198, %.preheader.i.i.i.i, %bb.j, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.q, %bb.b ], [ 0, %bb.c ], [ %i.cy, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ck, %bb.j ], [ %i.cv, %middle.block1198 ], [ %i.ca, %middle.block1182 ], [ %i.ch, %.lr.ph89.i.i.i.i ] ; 3 uses
  %i.da = add nsw i32 %i.c, 1                     ; 11 uses
  %i.db = sext i32 %i.da to i64                   ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !71
  %.not.i.i.i = icmp eq i64 %i.dd, %i.db
  br i1 %.not.i.i.i, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.de = load ptr, ptr %1, align 8, !tbaa !72
  tail call void @free(ptr noundef %i.de) #33
  %i.df = icmp sgt i32 %i.c, -1
  br i1 %i.df, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, label %.sink.split.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i: ; preds = %bb.k
  %i.dg = shl nuw nsw i64 %i.db, 2
  %i.dh = tail call noalias ptr @malloc(i64 noundef %i.dg) #34 ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.l, label %.sink.split.i.i.i

bb.l:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  %i.dj = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dj, align 8, !tbaa !83
  tail call void @__cxa_throw(ptr nonnull %i.dj, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

.sink.split.i.i.i:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, %bb.k
  %.sink.i.i.i = phi ptr [ %i.dh, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i ], [ null, %bb.k ]
  store ptr %.sink.i.i.i, ptr %1, align 8, !tbaa !72
  br label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit

_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit: ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, %.sink.split.i.i.i
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !71
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
end_hunk_3
begin_hunk_4_@_ZN5Eigen8SparseLUINS_12SparseMatrixIdLi0EiEENS_14COLAMDOrderingIiEEE9factorizeERKS2_:bb.a
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !73
  %i.ez = sub nsw i32 %i.ey, %i.er
  %i.fa = load i32, ptr %i.es, align 4, !tbaa !73
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.fb
  store i32 %i.ez, ptr %i.fc, align 4, !tbaa !73
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.f, !llvm.loop !731

bb.g:                                             ; preds = %._crit_edge
  tail call void @_ZdaPv(ptr noundef nonnull %.084609) #36
  br label %.loopexit464

bb.h:                                             ; preds = %bb.a
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !115 ; 6 uses
  %.not.i.i.i = icmp eq i64 %i.fe, 0
  br i1 %.not.i.i.i, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit.thread, label %bb.i

_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit.thread: ; preds = %bb.h
  store i64 %i.fe, ptr %i.g, align 8, !tbaa !71
  br label %.loopexit464

bb.i:                                             ; preds = %bb.h
  %i.ff = load ptr, ptr %i.f, align 8, !tbaa !72
  tail call void @free(ptr noundef %i.ff) #33
  %i.fg = icmp sgt i64 %i.fe, 0
  br i1 %i.fg, label %bb.j, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit

bb.j:                                             ; preds = %bb.i
  %i.fh = icmp samesign ugt i64 %i.fe, 4611686018427387903
  br i1 %i.fh, label %bb.k, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.fi = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fi, align 8, !tbaa !83
  tail call void @__cxa_throw(ptr nonnull %i.fi, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i: ; preds = %bb.j
  %i.fj = shl nuw i64 %i.fe, 2
  %i.fk = tail call noalias ptr @malloc(i64 noundef %i.fj) #34 ; 2 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %bb.l, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit

bb.l:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  %i.fm = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fm, align 8, !tbaa !83
  tail call void @__cxa_throw(ptr nonnull %i.fm, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit: ; preds = %bb.i, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  %.sink.i.i.i = phi ptr [ %i.fk, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i ], [ null, %bb.i ]
  store ptr %.sink.i.i.i, ptr %i.f, align 8, !tbaa !72
  %.pre537 = load i64, ptr %i.fd, align 8, !tbaa !115 ; 5 uses
  store i64 %i.fe, ptr %i.g, align 8, !tbaa !71
  %i.fn = icmp sgt i64 %.pre537, 0
  br i1 %i.fn, label %.lr.ph497, label %.loopexit464

.lr.ph497:                                        ; preds = %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit
  %i.fo = load ptr, ptr %i.f, align 8, !tbaa !72  ; 2 uses
  %min.iters.check692 = icmp ult i64 %.pre537, 8
  br i1 %min.iters.check692, label %scalar.ph691.preheader, label %vector.ph693

vector.ph693:                                     ; preds = %.lr.ph497
  %n.vec694 = and i64 %.pre537, 9223372036854775800 ; 3 uses
  br label %vector.body695

vector.body695:                                   ; preds = %vector.body695, %vector.ph693
  %index696 = phi i64 [ 0, %vector.ph693 ], [ %index.next697, %vector.body695 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph693 ], [ %vec.ind.next, %vector.body695 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %index696 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store <4 x i32> %vec.ind, ptr %i.fp, align 4, !tbaa !73
  store <4 x i32> %step.add, ptr %i.fq, align 4, !tbaa !73
  %index.next697 = add nuw i64 %index696, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.fr = icmp eq i64 %index.next697, %n.vec694
  br i1 %i.fr, label %middle.block698, label %vector.body695, !llvm.loop !732

middle.block698:                                  ; preds = %vector.body695
  %cmp.n699 = icmp eq i64 %.pre537, %n.vec694
  br i1 %cmp.n699, label %.loopexit464, label %scalar.ph691.preheader

scalar.ph691.preheader:                           ; preds = %.lr.ph497, %middle.block698
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph497 ], [ %n.vec694, %middle.block698 ]
  br label %scalar.ph691

scalar.ph691:                                     ; preds = %scalar.ph691.preheader, %scalar.ph691
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph691 ], [ %indvars.iv.ph, %scalar.ph691.preheader ] ; 3 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv
  %i.ft = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ft, ptr %i.fs, align 4, !tbaa !73
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond535.not = icmp eq i64 %indvars.iv.next, %.pre537
  br i1 %exitcond535.not, label %.loopexit464, label %scalar.ph691, !llvm.loop !733

.loopexit464:                                     ; preds = %scalar.ph691, %middle.block698, %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit.thread, %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit, %._crit_edge, %bb.g
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !25 ; 40 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !115 ; 42 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !132 ; 13 uses
  %i.ga = icmp eq ptr %i.fz, null
  br i1 %i.ga, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit464
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !116 ; 2 uses
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.fx
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !73
  %i.gf = load i32, ptr %i.gc, align 4, !tbaa !73
  %i.gg = sub nsw i32 %i.ge, %i.gf
  %i.gh = sext i32 %i.gg to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.n:                                             ; preds = %.loopexit464
  %i.gi = icmp eq i64 %i.fx, 0
  br i1 %i.gi, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gj = ptrtoint ptr %i.fz to i64               ; 2 uses
  %i.gk = and i64 %i.gj, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.gk, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.p, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.gl = lshr exact i64 %i.gj, 2
  %i.gm = sub nsw i64 0, %i.gl
  %i.gn = and i64 %i.gm, 3
  %i.go = tail call i64 @llvm.smin.i64(i64 %i.gn, i64 %i.fx)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.go, %bb.p ], [ %i.fx, %bb.o ] ; 12 uses
  %i.gp = sub nsw i64 %i.fx, %.0.i.i.i.i.i.i.i.i  ; 5 uses
  %i.gq = sdiv i64 %i.gp, 8
  %i.gr = shl nsw i64 %i.gq, 3                    ; 2 uses
  %i.gs = sdiv i64 %i.gp, 4                       ; 2 uses
  %i.gt = shl nsw i64 %i.gs, 2                    ; 2 uses
  %i.gu = add nsw i64 %i.gr, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.gv = add nsw i64 %i.gt, %.0.i.i.i.i.i.i.i.i  ; 4 uses
  %.off.i.i.i.i = add i64 %i.gp, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.u, label %bb.q

bb.q:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.gw = getelementptr [4 x i8], ptr %i.fz, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.gx = load <2 x i64>, ptr %i.gw, align 1, !tbaa !81 ; 2 uses
  %i.gy = icmp sgt i64 %i.gp, 7
  br i1 %i.gy, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.gz = getelementptr i8, ptr %i.gw, i64 16
  %i.ha = load <4 x i32>, ptr %i.gz, align 1, !tbaa !81 ; 2 uses
  %i.hb = bitcast <2 x i64> %i.gx to <4 x i32>    ; 2 uses
  %i.hc = icmp samesign ugt i64 %i.gp, 15
  br i1 %i.hc, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.r
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.r
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.ha, %bb.r ], [ %i.hn, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.hb, %bb.r ], [ %i.hj, %.lr.ph.i.i.i.i ]
  %i.hd = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.he = bitcast <4 x i32> %i.hd to <2 x i64>
  %i.hf = icmp sgt i64 %i.gt, %i.gr
  br i1 %i.hf, label %bb.s, label %bb.t

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.hj, %.lr.ph.i.i.i.i ], [ %i.hb, %.lr.ph.preheader.i.i.i.i ]
  %i.hg = phi <4 x i32> [ %i.hn, %.lr.ph.i.i.i.i ], [ %i.ha, %.lr.ph.preheader.i.i.i.i ]
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.fz, i64 %.05780.i.i.i.i
  %i.hi = load <4 x i32>, ptr %i.hh, align 1, !tbaa !81
  %i.hj = add <4 x i32> %i.hi, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.hk = getelementptr [4 x i8], ptr %i.fz, i64 %.057.in79.i.i.i.i
  %i.hl = getelementptr i8, ptr %i.hk, i64 48
  %i.hm = load <4 x i32>, ptr %i.hl, align 1, !tbaa !81
  %i.hn = add <4 x i32> %i.hm, %i.hg              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.ho = icmp slt i64 %.057.i.i.i.i, %i.gu
  br i1 %i.ho, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !336

bb.s:                                             ; preds = %._crit_edge.i.i.i.i
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.fz, i64 %i.gu
  %i.hq = load <4 x i32>, ptr %i.hp, align 1, !tbaa !81
  %i.hr = add <4 x i32> %i.hq, %i.hd
  %i.hs = bitcast <4 x i32> %i.hr to <2 x i64>
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i.i, %bb.q
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.gx, %bb.q ], [ %i.hs, %bb.s ], [ %i.he, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ht = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.hu = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.hv = shufflevector <4 x i32> %i.hu, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.hw = add <4 x i32> %i.hv, %i.ht              ; 2 uses
  %shift = shufflevector <4 x i32> %i.hw, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.hw, %shift ; 2 uses
  %23 = extractelement <4 x i32> %foldExtExtBinop, i64 0 ; 2 uses
  %i.hx = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.hx, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.t
  %min.iters.check702 = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check702, label %.lr.ph85.i.i.i.i.preheader772, label %vector.ph703

vector.ph703:                                     ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec704 = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.hy = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body705

vector.body705:                                   ; preds = %vector.body705, %vector.ph703
  %index706 = phi i64 [ 0, %vector.ph703 ], [ %index.next710, %vector.body705 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.hy, %vector.ph703 ], [ %i.ib, %vector.body705 ]
  %vec.phi707 = phi <4 x i32> [ zeroinitializer, %vector.ph703 ], [ %i.ic, %vector.body705 ]
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %index706 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %wide.load708 = load <4 x i32>, ptr %i.hz, align 4, !tbaa !73
  %wide.load709 = load <4 x i32>, ptr %i.ia, align 4, !tbaa !73
  %i.ib = add <4 x i32> %wide.load708, %vec.phi   ; 2 uses
  %i.ic = add <4 x i32> %wide.load709, %vec.phi707 ; 2 uses
  %index.next710 = add nuw i64 %index706, 8       ; 2 uses
  %i.id = icmp eq i64 %index.next710, %n.vec704
  br i1 %i.id, label %middle.block711, label %vector.body705, !llvm.loop !734

middle.block711:                                  ; preds = %vector.body705
  %bin.rdx = add <4 x i32> %i.ic, %i.ib
  %i.ie = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n712 = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec704
  br i1 %cmp.n712, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader772

.lr.ph85.i.i.i.i.preheader772:                    ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block711
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec704, %middle.block711 ]
  %.07582.i.i.i.i.ph = phi i32 [ %23, %.lr.ph85.i.i.i.i.preheader ], [ %i.ie, %middle.block711 ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block711, %bb.t
  %.075.lcssa.i.i.i.i = phi i32 [ %23, %bb.t ], [ %i.ie, %middle.block711 ], [ %i.iu, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.if = icmp slt i64 %i.gv, %i.fx
  br i1 %i.if, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.ig = shl nsw i64 %i.gs, 2
  %i.ih = add i64 %.0.i.i.i.i.i.i.i.i, %i.ig
  %i.ii = sub i64 %i.fx, %i.ih                    ; 3 uses
  %min.iters.check715 = icmp ult i64 %i.ii, 8
  br i1 %min.iters.check715, label %.lr.ph89.i.i.i.i.preheader767, label %vector.ph716

vector.ph716:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec717 = and i64 %i.ii, -8                   ; 3 uses
  %i.ij = add i64 %i.gv, %n.vec717
  %i.ik = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.il = getelementptr [4 x i8], ptr %i.fz, i64 %i.gv
  br label %vector.body718

vector.body718:                                   ; preds = %vector.body718, %vector.ph716
  %index719 = phi i64 [ 0, %vector.ph716 ], [ %index.next724, %vector.body718 ] ; 2 uses
  %vec.phi720 = phi <4 x i32> [ %i.ik, %vector.ph716 ], [ %i.io, %vector.body718 ]
  %vec.phi721 = phi <4 x i32> [ zeroinitializer, %vector.ph716 ], [ %i.ip, %vector.body718 ]
  %i.im = getelementptr [4 x i8], ptr %i.il, i64 %index719 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %wide.load722 = load <4 x i32>, ptr %i.im, align 4, !tbaa !73
  %wide.load723 = load <4 x i32>, ptr %i.in, align 4, !tbaa !73
  %i.io = add <4 x i32> %wide.load722, %vec.phi720 ; 2 uses
  %i.ip = add <4 x i32> %wide.load723, %vec.phi721 ; 2 uses
  %index.next724 = add nuw i64 %index719, 8       ; 2 uses
  %i.iq = icmp eq i64 %index.next724, %n.vec717
  br i1 %i.iq, label %middle.block725, label %vector.body718, !llvm.loop !735

middle.block725:                                  ; preds = %vector.body718
  %bin.rdx726 = add <4 x i32> %i.ip, %i.io
  %i.ir = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx726) ; 2 uses
  %cmp.n727 = icmp eq i64 %i.ii, %n.vec717
  br i1 %cmp.n727, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph89.i.i.i.i.preheader767

.lr.ph89.i.i.i.i.preheader767:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block725
  %.05588.i.i.i.i.ph = phi i64 [ %i.gv, %.lr.ph89.i.i.i.i.preheader ], [ %i.ij, %middle.block725 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.ir, %middle.block725 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader772, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.iv, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader772 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.iu, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader772 ]
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %.05683.i.i.i.i
  %i.it = load i32, ptr %i.is, align 4, !tbaa !73
  %i.iu = add nsw i32 %i.it, %.07582.i.i.i.i      ; 2 uses
  %i.iv = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.iv, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !736

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader767, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.iz, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader767 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.iy, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader767 ]
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.fz, i64 %.05588.i.i.i.i
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !73
  %i.iy = add nsw i32 %i.ix, %.187.i.i.i.i        ; 2 uses
  %i.iz = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.ja = icmp slt i64 %i.iz, %i.fx
  br i1 %i.ja, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, !llvm.loop !737

bb.u:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.jb = load i32, ptr %i.fz, align 4, !tbaa !73 ; 3 uses
  %i.jc = icmp sgt i64 %i.fx, 1
  br i1 %i.jc, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.u
  %i.jd = add nsw i64 %i.fx, -1                   ; 3 uses
  %min.iters.check731 = icmp ult i64 %i.jd, 8
  br i1 %min.iters.check731, label %.lr.ph94.i.i.i.i.preheader763, label %vector.ph732

vector.ph732:                                     ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec733 = and i64 %i.jd, -8                   ; 3 uses
  %i.je = or disjoint i64 %n.vec733, 1
  %i.jf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.jb, i64 0
  br label %vector.body734

vector.body734:                                   ; preds = %vector.body734, %vector.ph732
  %index735 = phi i64 [ 0, %vector.ph732 ], [ %index.next740, %vector.body734 ] ; 2 uses
  %vec.phi736 = phi <4 x i32> [ %i.jf, %vector.ph732 ], [ %i.jj, %vector.body734 ]
  %vec.phi737 = phi <4 x i32> [ zeroinitializer, %vector.ph732 ], [ %i.jk, %vector.body734 ]
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %index735 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 20
  %wide.load738 = load <4 x i32>, ptr %i.jh, align 4, !tbaa !73
  %wide.load739 = load <4 x i32>, ptr %i.ji, align 4, !tbaa !73
  %i.jj = add <4 x i32> %wide.load738, %vec.phi736 ; 2 uses
  %i.jk = add <4 x i32> %wide.load739, %vec.phi737 ; 2 uses
  %index.next740 = add nuw i64 %index735, 8       ; 2 uses
  %i.jl = icmp eq i64 %index.next740, %n.vec733
  br i1 %i.jl, label %middle.block741, label %vector.body734, !llvm.loop !738

middle.block741:                                  ; preds = %vector.body734
  %bin.rdx742 = add <4 x i32> %i.jk, %i.jj
  %i.jm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx742) ; 2 uses
  %cmp.n743 = icmp eq i64 %i.jd, %n.vec733
  br i1 %cmp.n743, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i.preheader763

.lr.ph94.i.i.i.i.preheader763:                    ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block741
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.je, %middle.block741 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.jb, %.lr.ph94.i.i.i.i.preheader ], [ %i.jm, %middle.block741 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader763, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.jq, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader763 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.jp, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader763 ]
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %.092.i.i.i.i
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !73
  %i.jp = add nsw i32 %i.jo, %.291.i.i.i.i        ; 2 uses
  %i.jq = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.jq, %i.fx
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i, !llvm.loop !739

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block725, %middle.block741, %bb.u, %.preheader.i.i.i.i
  %.0.i.i = phi i32 [ %i.jp, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.jb, %bb.u ], [ %i.jm, %middle.block741 ], [ %i.ir, %middle.block725 ], [ %i.iy, %.lr.ph89.i.i.i.i ]
  %i.jr = sext i32 %.0.i.i to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %bb.m, %bb.n, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i
  %.0.i = phi i64 [ %i.gh, %bb.m ], [ %i.jr, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i ], [ 0, %bb.n ]
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !740 ; 2 uses
  %i.ju = mul i64 %i.jt, %i.fv                    ; 16 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !741
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 12 uses
  %i.jy = tail call noundef i64 @_ZN5Eigen8internal12SparseLUImplIdiE7memInitEllllllRNS0_13LU_GlobalLU_tINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS4_IdLin1ELi1ELi0ELin1ELi1EEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %i.fv, i64 noundef %i.fx, i64 noundef %.0.i, i64 noundef 0, i64 noundef %i.jw, i64 noundef %i.jt, ptr noundef nonnull align 8 dereferenceable(184) %i.jx)
  %.not127 = icmp eq i64 %i.jy, 0
  br i1 %.not127, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !367
  %i.kc = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.jz, i64 noundef 0, i64 noundef %i.kb, ptr noundef nonnull @.str.8, i64 noundef 35) ; 0 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.kd, align 8, !tbaa !742
  br label %bb.dj

bb.w:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %.not.i.i.i.i166 = icmp eq i64 %i.fv, 0         ; 2 uses
  br i1 %.not.i.i.i.i166, label %bb.af, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ke = icmp slt i64 %i.fv, 1                   ; 3 uses
  br i1 %i.ke, label %.thread431, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.kf = icmp samesign ugt i64 %i.fv, 4611686018427387903
  br i1 %i.kf, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.y
  %i.kg = shl nuw i64 %i.fv, 2                    ; 3 uses
  %calloc623 = tail call ptr @calloc(i64 1, i64 %i.kg) ; 2 uses
  %i.kh = icmp eq ptr %calloc623, null
  br i1 %i.kh, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i170

.invoke.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, %bb.y
end_hunk_4
begin_hunk_5_@_ZN5Eigen8internal24sparse_matrix_block_implINS_12SparseMatrixIdLi0EiEELin1ELi1EEaSINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_5BlockIS3_Lin1ELi1ELb1EEEKNS6_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEKNS9_IKS3_Lin1ELi1ELb1EEEEEEEEERSA_RKNS_16SparseMatrixBaseIT_EE:bb.a
  store <4 x i32> %i.ex, ptr %i.ev, align 4, !tbaa !73
  store <4 x i32> %i.ey, ptr %i.ew, align 4, !tbaa !73
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ez = icmp eq i64 %index.next, %n.vec
  br i1 %i.ez, label %middle.block, label %vector.body, !llvm.loop !1349

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.er, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader140

.lr.ph.preheader140:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0.in126.ph = phi i64 [ %.pre129, %.lr.ph.preheader ], [ %i.es, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader140, %.lr.ph
  %.0.in126 = phi i64 [ %.0, %.lr.ph ], [ %.0.in126.ph, %.lr.ph.preheader140 ]
  %.0 = add nsw i64 %.0.in126, 1                  ; 3 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.el, i64 %.0 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !73
  %i.fc = add nsw i32 %i.eo, %i.fb
  store i32 %i.fc, ptr %i.fa, align 4, !tbaa !73
  %exitcond.not = icmp eq i64 %.0, %i.eq
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !1350

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.aa, %bb.z
  %i.fd = load i8, ptr %i.h, align 8, !tbaa !1340, !range !142, !noundef !143
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.ab, label %_ZN5Eigen3RefIKNS_12SparseMatrixIdLi0EiEELi0ENS_11OuterStrideILin1EEEED2Ev.exit

bb.ab:                                            ; preds = %.loopexit
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !116
  call void @free(ptr noundef %i.fg) #33
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !132
  call void @free(ptr noundef %i.fi) #33
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !133 ; 2 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdaPv(ptr noundef nonnull %i.fk) #36
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !134 ; 2 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %_ZN5Eigen3RefIKNS_12SparseMatrixIdLi0EiEELi0ENS_11OuterStrideILin1EEEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZdaPv(ptr noundef nonnull %i.fn) #36
  br label %_ZN5Eigen3RefIKNS_12SparseMatrixIdLi0EiEELi0ENS_11OuterStrideILin1EEEED2Ev.exit

_ZN5Eigen3RefIKNS_12SparseMatrixIdLi0EiEELi0ENS_11OuterStrideILin1EEEED2Ev.exit: ; preds = %.loopexit, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret ptr %0

bb.af:                                            ; preds = %bb.v, %bb.q
  %.pn95.pn.pn = phi { ptr, i32 } [ %.pn, %bb.q ], [ %i.dq, %bb.v ]
  call void @_ZN5Eigen3RefIKNS_12SparseMatrixIdLi0EiEELi0ENS_11OuterStrideILin1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Eigen3RefIKNS_12SparseMatrixIdLi0EiEELi0ENS_11OuterStrideILin1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1340, !range !142, !noundef !143
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !116
  tail call void @free(ptr noundef %i.e) #33
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !132
  tail call void @free(ptr noundef %i.g) #33
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !133  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !134  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #36
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.e, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal13SparseRefBaseINS_3RefIKNS_12SparseMatrixIdLi0EiEELi0ENS_11OuterStrideILin1EEEEEE9constructIS4_EEvRT_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !25   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !115  ; 24 uses
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = mul nsw i64 %i.g, %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !132, !nonnull !143, !noundef !143 ; 12 uses
  %i.k = icmp eq i64 %i.g, 0
  br i1 %i.k, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = and i64 %i.l, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = lshr exact i64 %i.l, 2
  %i.o = sub nsw i64 0, %i.n
  %i.p = and i64 %i.o, 3
  %i.q = tail call i64 @llvm.smin.i64(i64 %i.p, i64 %i.g)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.q, %bb.d ], [ %i.g, %bb.c ] ; 12 uses
  %i.r = sub nsw i64 %i.g, %.0.i.i.i.i.i.i.i.i    ; 5 uses
  %i.s = sdiv i64 %i.r, 8
  %i.t = shl nsw i64 %i.s, 3                      ; 2 uses
  %i.u = sdiv i64 %i.r, 4                         ; 2 uses
  %i.v = shl nsw i64 %i.u, 2                      ; 2 uses
  %i.w = add nsw i64 %i.t, %.0.i.i.i.i.i.i.i.i    ; 2 uses
  %i.x = add nsw i64 %i.v, %.0.i.i.i.i.i.i.i.i    ; 4 uses
  %.off.i.i.i.i = add i64 %i.r, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.y = getelementptr [4 x i8], ptr %i.j, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.z = load <2 x i64>, ptr %i.y, align 1, !tbaa !81 ; 2 uses
  %i.aa = icmp sgt i64 %i.r, 7
  br i1 %i.aa, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr i8, ptr %i.y, i64 16
  %i.ac = load <4 x i32>, ptr %i.ab, align 1, !tbaa !81 ; 2 uses
  %i.ad = bitcast <2 x i64> %i.z to <4 x i32>     ; 2 uses
  %i.ae = icmp samesign ugt i64 %i.r, 15
  br i1 %i.ae, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.f
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.f
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.ac, %bb.f ], [ %i.ap, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.ad, %bb.f ], [ %i.al, %.lr.ph.i.i.i.i ]
  %i.af = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.ag = bitcast <4 x i32> %i.af to <2 x i64>
  %i.ah = icmp sgt i64 %i.v, %i.t
  br i1 %i.ah, label %bb.g, label %bb.h

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.al, %.lr.ph.i.i.i.i ], [ %i.ad, %.lr.ph.preheader.i.i.i.i ]
  %i.ai = phi <4 x i32> [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.ac, %.lr.ph.preheader.i.i.i.i ]
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.05780.i.i.i.i
  %i.ak = load <4 x i32>, ptr %i.aj, align 1, !tbaa !81
  %i.al = add <4 x i32> %i.ak, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.am = getelementptr [4 x i8], ptr %i.j, i64 %.057.in79.i.i.i.i
  %i.an = getelementptr i8, ptr %i.am, i64 48
  %i.ao = load <4 x i32>, ptr %i.an, align 1, !tbaa !81
  %i.ap = add <4 x i32> %i.ao, %i.ai              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.aq = icmp slt i64 %.057.i.i.i.i, %i.w
  br i1 %i.aq, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !336

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.w
  %i.as = load <4 x i32>, ptr %i.ar, align 1, !tbaa !81
  %i.at = add <4 x i32> %i.as, %i.af
  %i.au = bitcast <4 x i32> %i.at to <2 x i64>
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i, %bb.e
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.z, %bb.e ], [ %i.au, %bb.g ], [ %i.ag, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.av = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.aw = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.ax = shufflevector <4 x i32> %i.aw, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ay = add <4 x i32> %i.ax, %i.av              ; 2 uses
  %shift = shufflevector <4 x i32> %i.ay, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.ay, %shift ; 2 uses
  %2 = extractelement <4 x i32> %foldExtExtBinop, i64 0 ; 2 uses
  %i.az = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.az, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.h
  %min.iters.check143 = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check143, label %.lr.ph85.i.i.i.i.preheader202, label %vector.ph144

vector.ph144:                                     ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec145 = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.ba = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph144
  %index147 = phi i64 [ 0, %vector.ph144 ], [ %index.next152, %vector.body146 ] ; 2 uses
  %vec.phi148 = phi <4 x i32> [ %i.ba, %vector.ph144 ], [ %i.bd, %vector.body146 ]
  %vec.phi149 = phi <4 x i32> [ zeroinitializer, %vector.ph144 ], [ %i.be, %vector.body146 ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index147 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load150 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !73
  %wide.load151 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !73
  %i.bd = add <4 x i32> %wide.load150, %vec.phi148 ; 2 uses
  %i.be = add <4 x i32> %wide.load151, %vec.phi149 ; 2 uses
  %index.next152 = add nuw i64 %index147, 8       ; 2 uses
  %i.bf = icmp eq i64 %index.next152, %n.vec145
  br i1 %i.bf, label %middle.block153, label %vector.body146, !llvm.loop !1351

middle.block153:                                  ; preds = %vector.body146
  %bin.rdx154 = add <4 x i32> %i.be, %i.bd
  %i.bg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx154) ; 2 uses
  %cmp.n155 = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec145
  br i1 %cmp.n155, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader202

.lr.ph85.i.i.i.i.preheader202:                    ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block153
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec145, %middle.block153 ]
  %.07582.i.i.i.i.ph = phi i32 [ %2, %.lr.ph85.i.i.i.i.preheader ], [ %i.bg, %middle.block153 ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block153, %bb.h
  %.075.lcssa.i.i.i.i = phi i32 [ %2, %bb.h ], [ %i.bg, %middle.block153 ], [ %i.bw, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.bh = icmp slt i64 %i.x, %i.g
  br i1 %i.bh, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.bi = shl nsw i64 %i.u, 2
  %i.bj = add i64 %.0.i.i.i.i.i.i.i.i, %i.bi
  %i.bk = sub i64 %i.g, %i.bj                     ; 3 uses
  %min.iters.check159 = icmp ult i64 %i.bk, 8
  br i1 %min.iters.check159, label %.lr.ph89.i.i.i.i.preheader197, label %vector.ph160

vector.ph160:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec161 = and i64 %i.bk, -8                   ; 3 uses
  %i.bl = add i64 %i.x, %n.vec161
  %i.bm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.bn = getelementptr [4 x i8], ptr %i.j, i64 %i.x
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph160
  %index163 = phi i64 [ 0, %vector.ph160 ], [ %index.next168, %vector.body162 ] ; 2 uses
  %vec.phi164 = phi <4 x i32> [ %i.bm, %vector.ph160 ], [ %i.bq, %vector.body162 ]
  %vec.phi165 = phi <4 x i32> [ zeroinitializer, %vector.ph160 ], [ %i.br, %vector.body162 ]
  %i.bo = getelementptr [4 x i8], ptr %i.bn, i64 %index163 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load166 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !73
  %wide.load167 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !73
  %i.bq = add <4 x i32> %wide.load166, %vec.phi164 ; 2 uses
  %i.br = add <4 x i32> %wide.load167, %vec.phi165 ; 2 uses
  %index.next168 = add nuw i64 %index163, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next168, %n.vec161
  br i1 %i.bs, label %middle.block169, label %vector.body162, !llvm.loop !1352

middle.block169:                                  ; preds = %vector.body162
  %bin.rdx170 = add <4 x i32> %i.br, %i.bq
  %i.bt = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx170) ; 2 uses
  %cmp.n171 = icmp eq i64 %i.bk, %n.vec161
  br i1 %cmp.n171, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph89.i.i.i.i.preheader197

.lr.ph89.i.i.i.i.preheader197:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block169
  %.05588.i.i.i.i.ph = phi i64 [ %i.x, %.lr.ph89.i.i.i.i.preheader ], [ %i.bl, %middle.block169 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.bt, %middle.block169 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader202, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.bx, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader202 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.bw, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader202 ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.05683.i.i.i.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !73
  %i.bw = add nsw i32 %i.bv, %.07582.i.i.i.i      ; 2 uses
  %i.bx = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bx, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !1353

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader197, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.cb, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader197 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.ca, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader197 ]
  %i.by = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.05588.i.i.i.i
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !73
  %i.ca = add nsw i32 %i.bz, %.187.i.i.i.i        ; 2 uses
  %i.cb = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.cc = icmp slt i64 %i.cb, %i.g
  br i1 %i.cc, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, !llvm.loop !1354

bb.i:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.cd = load i32, ptr %i.j, align 4, !tbaa !73  ; 3 uses
  %i.ce = icmp sgt i64 %i.g, 1
  br i1 %i.ce, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.i
  %i.cf = add nsw i64 %i.g, -1                    ; 3 uses
  %min.iters.check175 = icmp ult i64 %i.cf, 8
  br i1 %min.iters.check175, label %.lr.ph94.i.i.i.i.preheader194, label %vector.ph176

vector.ph176:                                     ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec177 = and i64 %i.cf, -8                   ; 3 uses
  %i.cg = or disjoint i64 %n.vec177, 1
  %i.ch = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.cd, i64 0
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph176
  %index179 = phi i64 [ 0, %vector.ph176 ], [ %index.next184, %vector.body178 ] ; 2 uses
  %vec.phi180 = phi <4 x i32> [ %i.ch, %vector.ph176 ], [ %i.cl, %vector.body178 ]
  %vec.phi181 = phi <4 x i32> [ zeroinitializer, %vector.ph176 ], [ %i.cm, %vector.body178 ]
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index179 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 20
  %wide.load182 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !73
  %wide.load183 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !73
  %i.cl = add <4 x i32> %wide.load182, %vec.phi180 ; 2 uses
  %i.cm = add <4 x i32> %wide.load183, %vec.phi181 ; 2 uses
  %index.next184 = add nuw i64 %index179, 8       ; 2 uses
  %i.cn = icmp eq i64 %index.next184, %n.vec177
  br i1 %i.cn, label %middle.block185, label %vector.body178, !llvm.loop !1355

middle.block185:                                  ; preds = %vector.body178
  %bin.rdx186 = add <4 x i32> %i.cm, %i.cl
  %i.co = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx186) ; 2 uses
  %cmp.n187 = icmp eq i64 %i.cf, %n.vec177
  br i1 %cmp.n187, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i.preheader194

.lr.ph94.i.i.i.i.preheader194:                    ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block185
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.cg, %middle.block185 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.cd, %.lr.ph94.i.i.i.i.preheader ], [ %i.co, %middle.block185 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader194, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.cs, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader194 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.cr, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader194 ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.092.i.i.i.i
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !73
  %i.cr = add nsw i32 %i.cq, %.291.i.i.i.i        ; 2 uses
  %i.cs = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.cs, %i.g
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i, !llvm.loop !1356

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block169, %middle.block185, %.preheader.i.i.i.i, %bb.i, %bb.b
  %.0.i = phi i32 [ %i.cr, %.lr.ph94.i.i.i.i ], [ 0, %bb.b ], [ %i.cd, %bb.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.co, %middle.block185 ], [ %i.bt, %middle.block169 ], [ %i.ca, %.lr.ph89.i.i.i.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cu = load <2 x ptr>, ptr %i.ct, align 8, !tbaa !204
  store i8 0, ptr %0, align 8, !tbaa !1338
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.cv, align 8, !tbaa !1357
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %i.cw, align 8, !tbaa !1358
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.cx, align 8, !tbaa !73
  br label %bb.t

bb.j:                                             ; preds = %bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !132 ; 14 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.db = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.g
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !73
  %i.dd = load i32, ptr %i.b, align 4, !tbaa !73
  %i.de = sub nsw i32 %i.dc, %i.dd
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit47

bb.l:                                             ; preds = %bb.j
  %i.df = icmp eq i64 %i.g, 0
  br i1 %i.df, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit47, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dg = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.dh = and i64 %i.dg, 3
  %.not.i.i.i.i.i.i.i.i13 = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i.i.i.i.i.i.i13, label %bb.n, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i14

bb.n:                                             ; preds = %bb.m
  %i.di = lshr exact i64 %i.dg, 2
  %i.dj = sub nsw i64 0, %i.di
  %i.dk = and i64 %i.dj, 3
  %i.dl = tail call i64 @llvm.smin.i64(i64 %i.dk, i64 %i.g)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i14

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i14: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i15 = phi i64 [ %i.dl, %bb.n ], [ %i.g, %bb.m ] ; 12 uses
  %i.dm = sub nsw i64 %i.g, %.0.i.i.i.i.i.i.i.i15 ; 5 uses
  %i.dn = sdiv i64 %i.dm, 8
  %i.do = shl nsw i64 %i.dn, 3                    ; 2 uses
  %i.dp = sdiv i64 %i.dm, 4                       ; 2 uses
  %i.dq = shl nsw i64 %i.dp, 2                    ; 2 uses
  %i.dr = add nsw i64 %i.do, %.0.i.i.i.i.i.i.i.i15 ; 2 uses
  %i.ds = add nsw i64 %i.dq, %.0.i.i.i.i.i.i.i.i15 ; 4 uses
  %.off.i.i.i.i16 = add i64 %i.dm, 3
  %.not.i.i.i.i17 = icmp ult i64 %.off.i.i.i.i16, 7
  br i1 %.not.i.i.i.i17, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i14
  %i.dt = getelementptr [4 x i8], ptr %i.cz, i64 %.0.i.i.i.i.i.i.i.i15 ; 2 uses
  %i.du = load <2 x i64>, ptr %i.dt, align 1, !tbaa !81 ; 2 uses
  %i.dv = icmp sgt i64 %i.dm, 7
  br i1 %i.dv, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.dw = getelementptr i8, ptr %i.dt, i64 16
  %i.dx = load <4 x i32>, ptr %i.dw, align 1, !tbaa !81 ; 2 uses
  %i.dy = bitcast <2 x i64> %i.du to <4 x i32>    ; 2 uses
  %i.dz = icmp samesign ugt i64 %i.dm, 15
  br i1 %i.dz, label %.lr.ph.preheader.i.i.i.i36, label %._crit_edge.i.i.i.i33

.lr.ph.preheader.i.i.i.i36:                       ; preds = %bb.p
  %.05777.i.i.i.i37 = add nsw i64 %.0.i.i.i.i.i.i.i.i15, 8
  br label %.lr.ph.i.i.i.i38

._crit_edge.i.i.i.i33:                            ; preds = %.lr.ph.i.i.i.i38, %bb.p
  %.lcssa.i.i.i.i34 = phi <4 x i32> [ %i.dx, %bb.p ], [ %i.ek, %.lr.ph.i.i.i.i38 ]
  %.sroa.067.0.lcssa.i.i.i.i35 = phi <4 x i32> [ %i.dy, %bb.p ], [ %i.eg, %.lr.ph.i.i.i.i38 ]
  %i.ea = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i35, %.lcssa.i.i.i.i34 ; 2 uses
  %i.eb = bitcast <4 x i32> %i.ea to <2 x i64>
  %i.ec = icmp sgt i64 %i.dq, %i.do
  br i1 %i.ec, label %bb.q, label %bb.r

.lr.ph.i.i.i.i38:                                 ; preds = %.lr.ph.i.i.i.i38, %.lr.ph.preheader.i.i.i.i36
  %.05780.i.i.i.i39 = phi i64 [ %.057.i.i.i.i42, %.lr.ph.i.i.i.i38 ], [ %.05777.i.i.i.i37, %.lr.ph.preheader.i.i.i.i36 ] ; 3 uses
  %.057.in79.i.i.i.i40 = phi i64 [ %.05780.i.i.i.i39, %.lr.ph.i.i.i.i38 ], [ %.0.i.i.i.i.i.i.i.i15, %.lr.ph.preheader.i.i.i.i36 ]
  %.sroa.067.078.i.i.i.i41 = phi <4 x i32> [ %i.eg, %.lr.ph.i.i.i.i38 ], [ %i.dy, %.lr.ph.preheader.i.i.i.i36 ]
  %i.ed = phi <4 x i32> [ %i.ek, %.lr.ph.i.i.i.i38 ], [ %i.dx, %.lr.ph.preheader.i.i.i.i36 ]
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %.05780.i.i.i.i39
  %i.ef = load <4 x i32>, ptr %i.ee, align 1, !tbaa !81
  %i.eg = add <4 x i32> %i.ef, %.sroa.067.078.i.i.i.i41 ; 2 uses
  %i.eh = getelementptr [4 x i8], ptr %i.cz, i64 %.057.in79.i.i.i.i40
  %i.ei = getelementptr i8, ptr %i.eh, i64 48
  %i.ej = load <4 x i32>, ptr %i.ei, align 1, !tbaa !81
  %i.ek = add <4 x i32> %i.ej, %i.ed              ; 2 uses
  %.057.i.i.i.i42 = add nsw i64 %.05780.i.i.i.i39, 8 ; 2 uses
  %i.el = icmp slt i64 %.057.i.i.i.i42, %i.dr
  br i1 %i.el, label %.lr.ph.i.i.i.i38, label %._crit_edge.i.i.i.i33, !llvm.loop !336

bb.q:                                             ; preds = %._crit_edge.i.i.i.i33
  %i.em = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.dr
  %i.en = load <4 x i32>, ptr %i.em, align 1, !tbaa !81
  %i.eo = add <4 x i32> %i.en, %i.ea
  %i.ep = bitcast <4 x i32> %i.eo to <2 x i64>
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i33, %bb.o
  %.sroa.067.2.i.i.i.i18 = phi <2 x i64> [ %i.du, %bb.o ], [ %i.ep, %bb.q ], [ %i.eb, %._crit_edge.i.i.i.i33 ] ; 2 uses
  %i.eq = bitcast <2 x i64> %.sroa.067.2.i.i.i.i18 to <4 x i32>
  %i.er = bitcast <2 x i64> %.sroa.067.2.i.i.i.i18 to <4 x i32>
  %i.es = shufflevector <4 x i32> %i.er, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.et = add <4 x i32> %i.es, %i.eq              ; 2 uses
  %shift191 = shufflevector <4 x i32> %i.et, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop192 = add nsw <4 x i32> %i.et, %shift191 ; 2 uses
  %3 = extractelement <4 x i32> %foldExtExtBinop192, i64 0 ; 2 uses
  %i.eu = icmp sgt i64 %.0.i.i.i.i.i.i.i.i15, 0
  br i1 %i.eu, label %.lr.ph85.i.i.i.i29.preheader, label %.preheader.i.i.i.i21

.lr.ph85.i.i.i.i29.preheader:                     ; preds = %bb.r
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i15, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i29.preheader217, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i29.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i15, 9223372036854775800 ; 3 uses
  %i.ev = shufflevector <4 x i32> %foldExtExtBinop192, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ev, %vector.ph ], [ %i.ey, %vector.body ]
  %vec.phi108 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ez, %vector.body ]
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %index ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %wide.load = load <4 x i32>, ptr %i.ew, align 4, !tbaa !73
  %wide.load109 = load <4 x i32>, ptr %i.ex, align 4, !tbaa !73
  %i.ey = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ez = add <4 x i32> %wide.load109, %vec.phi108 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !1359

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ez, %i.ey
  %i.fb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i15, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i21, label %.lr.ph85.i.i.i.i29.preheader217

.lr.ph85.i.i.i.i29.preheader217:                  ; preds = %.lr.ph85.i.i.i.i29.preheader, %middle.block
  %.05683.i.i.i.i30.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i29.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i31.ph = phi i32 [ %3, %.lr.ph85.i.i.i.i29.preheader ], [ %i.fb, %middle.block ]
  br label %.lr.ph85.i.i.i.i29

.preheader.i.i.i.i21:                             ; preds = %.lr.ph85.i.i.i.i29, %middle.block, %bb.r
  %.075.lcssa.i.i.i.i22 = phi i32 [ %3, %bb.r ], [ %i.fb, %middle.block ], [ %i.fr, %.lr.ph85.i.i.i.i29 ] ; 3 uses
  %i.fc = icmp slt i64 %i.ds, %i.g
  br i1 %i.fc, label %.lr.ph89.i.i.i.i26.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit47

.lr.ph89.i.i.i.i26.preheader:                     ; preds = %.preheader.i.i.i.i21
  %i.fd = shl nsw i64 %i.dp, 2
  %i.fe = add i64 %.0.i.i.i.i.i.i.i.i15, %i.fd
  %i.ff = sub i64 %i.g, %i.fe                     ; 3 uses
  %min.iters.check111 = icmp ult i64 %i.ff, 8
  br i1 %min.iters.check111, label %.lr.ph89.i.i.i.i26.preheader212, label %vector.ph112

vector.ph112:                                     ; preds = %.lr.ph89.i.i.i.i26.preheader
  %n.vec113 = and i64 %i.ff, -8                   ; 3 uses
  %i.fg = add i64 %i.ds, %n.vec113
  %i.fh = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i22, i64 0
  %i.fi = getelementptr [4 x i8], ptr %i.cz, i64 %i.ds
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %vector.ph112
  %index115 = phi i64 [ 0, %vector.ph112 ], [ %index.next120, %vector.body114 ] ; 2 uses
  %vec.phi116 = phi <4 x i32> [ %i.fh, %vector.ph112 ], [ %i.fl, %vector.body114 ]
  %vec.phi117 = phi <4 x i32> [ zeroinitializer, %vector.ph112 ], [ %i.fm, %vector.body114 ]
  %i.fj = getelementptr [4 x i8], ptr %i.fi, i64 %index115 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %wide.load118 = load <4 x i32>, ptr %i.fj, align 4, !tbaa !73
  %wide.load119 = load <4 x i32>, ptr %i.fk, align 4, !tbaa !73
  %i.fl = add <4 x i32> %wide.load118, %vec.phi116 ; 2 uses
  %i.fm = add <4 x i32> %wide.load119, %vec.phi117 ; 2 uses
  %index.next120 = add nuw i64 %index115, 8       ; 2 uses
  %i.fn = icmp eq i64 %index.next120, %n.vec113
  br i1 %i.fn, label %middle.block121, label %vector.body114, !llvm.loop !1360

middle.block121:                                  ; preds = %vector.body114
  %bin.rdx122 = add <4 x i32> %i.fm, %i.fl
  %i.fo = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx122) ; 2 uses
  %cmp.n123 = icmp eq i64 %i.ff, %n.vec113
  br i1 %cmp.n123, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit47, label %.lr.ph89.i.i.i.i26.preheader212

.lr.ph89.i.i.i.i26.preheader212:                  ; preds = %.lr.ph89.i.i.i.i26.preheader, %middle.block121
  %.05588.i.i.i.i27.ph = phi i64 [ %i.ds, %.lr.ph89.i.i.i.i26.preheader ], [ %i.fg, %middle.block121 ]
  %.187.i.i.i.i28.ph = phi i32 [ %.075.lcssa.i.i.i.i22, %.lr.ph89.i.i.i.i26.preheader ], [ %i.fo, %middle.block121 ]
  br label %.lr.ph89.i.i.i.i26

.lr.ph85.i.i.i.i29:                               ; preds = %.lr.ph85.i.i.i.i29.preheader217, %.lr.ph85.i.i.i.i29
  %.05683.i.i.i.i30 = phi i64 [ %i.fs, %.lr.ph85.i.i.i.i29 ], [ %.05683.i.i.i.i30.ph, %.lr.ph85.i.i.i.i29.preheader217 ] ; 2 uses
  %.07582.i.i.i.i31 = phi i32 [ %i.fr, %.lr.ph85.i.i.i.i29 ], [ %.07582.i.i.i.i31.ph, %.lr.ph85.i.i.i.i29.preheader217 ]
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.05683.i.i.i.i30
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !73
  %i.fr = add nsw i32 %i.fq, %.07582.i.i.i.i31    ; 2 uses
  %i.fs = add nuw nsw i64 %.05683.i.i.i.i30, 1    ; 2 uses
  %exitcond.not.i.i.i.i32 = icmp eq i64 %i.fs, %.0.i.i.i.i.i.i.i.i15
  br i1 %exitcond.not.i.i.i.i32, label %.preheader.i.i.i.i21, label %.lr.ph85.i.i.i.i29, !llvm.loop !1361

.lr.ph89.i.i.i.i26:                               ; preds = %.lr.ph89.i.i.i.i26.preheader212, %.lr.ph89.i.i.i.i26
  %.05588.i.i.i.i27 = phi i64 [ %i.fw, %.lr.ph89.i.i.i.i26 ], [ %.05588.i.i.i.i27.ph, %.lr.ph89.i.i.i.i26.preheader212 ] ; 2 uses
  %.187.i.i.i.i28 = phi i32 [ %i.fv, %.lr.ph89.i.i.i.i26 ], [ %.187.i.i.i.i28.ph, %.lr.ph89.i.i.i.i26.preheader212 ]
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %.05588.i.i.i.i27
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !73
  %i.fv = add nsw i32 %i.fu, %.187.i.i.i.i28      ; 2 uses
  %i.fw = add nsw i64 %.05588.i.i.i.i27, 1        ; 2 uses
  %i.fx = icmp slt i64 %i.fw, %i.g
  br i1 %i.fx, label %.lr.ph89.i.i.i.i26, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit47, !llvm.loop !1362

bb.s:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i14
  %i.fy = load i32, ptr %i.cz, align 4, !tbaa !73 ; 3 uses
  %i.fz = icmp sgt i64 %i.g, 1
  br i1 %i.fz, label %.lr.ph94.i.i.i.i43.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit47

.lr.ph94.i.i.i.i43.preheader:                     ; preds = %bb.s
  %i.ga = add nsw i64 %i.g, -1                    ; 2 uses
  %min.iters.check127 = icmp ult i64 %i.g, 9
  br i1 %min.iters.check127, label %.lr.ph94.i.i.i.i43.preheader208, label %vector.ph128

vector.ph128:                                     ; preds = %.lr.ph94.i.i.i.i43.preheader
  %n.vec129 = and i64 %i.ga, -8                   ; 3 uses
  %i.gb = or disjoint i64 %n.vec129, 1
  %i.gc = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.fy, i64 0
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph128
  %index131 = phi i64 [ 0, %vector.ph128 ], [ %index.next136, %vector.body130 ] ; 2 uses
  %vec.phi132 = phi <4 x i32> [ %i.gc, %vector.ph128 ], [ %i.gg, %vector.body130 ]
  %vec.phi133 = phi <4 x i32> [ zeroinitializer, %vector.ph128 ], [ %i.gh, %vector.body130 ]
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %index131 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 20
  %wide.load134 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !73
  %wide.load135 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !73
  %i.gg = add <4 x i32> %wide.load134, %vec.phi132 ; 2 uses
  %i.gh = add <4 x i32> %wide.load135, %vec.phi133 ; 2 uses
  %index.next136 = add nuw i64 %index131, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next136, %n.vec129
  br i1 %i.gi, label %middle.block137, label %vector.body130, !llvm.loop !1363

middle.block137:                                  ; preds = %vector.body130
  %bin.rdx138 = add <4 x i32> %i.gh, %i.gg
  %i.gj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx138) ; 2 uses
  %cmp.n139 = icmp eq i64 %i.ga, %n.vec129
  br i1 %cmp.n139, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit47, label %.lr.ph94.i.i.i.i43.preheader208

.lr.ph94.i.i.i.i43.preheader208:                  ; preds = %.lr.ph94.i.i.i.i43.preheader, %middle.block137
  %.092.i.i.i.i44.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i43.preheader ], [ %i.gb, %middle.block137 ]
  %.291.i.i.i.i45.ph = phi i32 [ %i.fy, %.lr.ph94.i.i.i.i43.preheader ], [ %i.gj, %middle.block137 ]
  br label %.lr.ph94.i.i.i.i43

.lr.ph94.i.i.i.i43:                               ; preds = %.lr.ph94.i.i.i.i43.preheader208, %.lr.ph94.i.i.i.i43
  %.092.i.i.i.i44 = phi i64 [ %i.gn, %.lr.ph94.i.i.i.i43 ], [ %.092.i.i.i.i44.ph, %.lr.ph94.i.i.i.i43.preheader208 ] ; 2 uses
  %.291.i.i.i.i45 = phi i32 [ %i.gm, %.lr.ph94.i.i.i.i43 ], [ %.291.i.i.i.i45.ph, %.lr.ph94.i.i.i.i43.preheader208 ]
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.092.i.i.i.i44
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !73
  %i.gm = add nsw i32 %i.gl, %.291.i.i.i.i45      ; 2 uses
  %i.gn = add nuw nsw i64 %.092.i.i.i.i44, 1      ; 2 uses
  %exitcond102.not.i.i.i.i46 = icmp eq i64 %i.gn, %i.g
  br i1 %exitcond102.not.i.i.i.i46, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit47, label %.lr.ph94.i.i.i.i43, !llvm.loop !1364

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit47: ; preds = %.lr.ph89.i.i.i.i26, %.lr.ph94.i.i.i.i43, %middle.block121, %middle.block137, %.preheader.i.i.i.i21, %bb.s, %bb.k, %bb.l
  %.0.i25 = phi i32 [ %i.de, %bb.k ], [ 0, %bb.l ], [ %i.gm, %.lr.ph94.i.i.i.i43 ], [ %.075.lcssa.i.i.i.i22, %.preheader.i.i.i.i21 ], [ %i.fy, %bb.s ], [ %i.gj, %middle.block137 ], [ %i.fo, %middle.block121 ], [ %i.fv, %.lr.ph89.i.i.i.i26 ]
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gp = load <2 x ptr>, ptr %i.go, align 8, !tbaa !204
  store i8 0, ptr %0, align 8, !tbaa !1338
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.gq, align 8, !tbaa !1357
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.gr, align 8, !tbaa !1358
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.gs, align 8, !tbaa !73
  br label %bb.t

bb.t:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit47, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %.0.i25.sink = phi i32 [ %.0.i25, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit47 ], [ %.0.i, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit ]
  %.sink94 = phi ptr [ %i.b, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit47 ], [ %i.cx, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit ]
  %.sink = phi ptr [ %i.cz, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit47 ], [ null, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit ]
  %i.gt = phi <2 x ptr> [ %i.gp, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit47 ], [ %i.cu, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit ]
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.0.i25.sink, ptr %i.gu, align 4, !tbaa !73
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sink94, ptr %i.gv, align 8, !tbaa !1346
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gx = shufflevector <2 x ptr> %i.gt, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.gx, ptr %i.gw, align 8, !tbaa !204
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sink, ptr %i.gy, align 8, !tbaa !1365
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_5BlockIS3_Lin1ELi1ELb1EEEKNS4_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEKNS7_IKS3_Lin1ELi1ELb1EEEEEEEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(113) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::SparseMatrix", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load double, ptr %i.a, align 8, !tbaa !17 ; 8 uses
  %i.c = load i8, ptr %1, align 8, !tbaa !1308, !range !142, !noundef !143
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.ae

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1366, !nonnull !143, !align !211
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !25
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.h, i64 noundef 1)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
end_hunk_5
begin_hunk_6_@_ZN5Eigen8internal17product_evaluatorINS_7ProductINS_12SparseMatrixIdLi0EiEES4_Li2EEELi8ENS_11SparseShapeES6_ddED2Ev:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #36
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5Eigen8internalL39conservative_sparse_sparse_product_implINS_12SparseMatrixIdLi0EiEES3_S3_EEvRKT_RKT0_RT1_b(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !115  ; 14 uses
  %i.e = icmp ugt i64 %i.b, 131072                ; 5 uses
  br i1 %i.e, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.b) #34 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !83
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.b
  %i.i = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.i, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.j = shl nuw i64 %i.b, 3
  br label %bb.e

bb.d:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !83
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
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
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.t) #34 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit143

bb.f:                                             ; preds = %bb.e
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !83
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc142 unwind label %.split261

.noexc142:                                        ; preds = %bb.f
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit143:     ; preds = %bb.e
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.t) #34 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit143
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aa, align 8, !tbaa !83
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
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
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !132 ; 13 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !116 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !115
  %i.am = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !73
  %i.ao = load i32, ptr %i.aj, align 4, !tbaa !73
  %i.ap = sub nsw i32 %i.an, %i.ao
  %i.aq = sext i32 %i.ap to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !115 ; 11 uses
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
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !336

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.bf
  %i.cb = load <4 x i32>, ptr %i.ca, align 1, !tbaa !81
  %i.cc = add <4 x i32> %i.cb, %i.bo
  %i.cd = bitcast <4 x i32> %i.cc to <2 x i64>
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i.i, %bb.m
  %.sroa.067.2.i.i.i.i.i = phi <2 x i64> [ %i.bi, %bb.m ], [ %i.cd, %bb.o ], [ %i.bp, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ce = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i to <4 x i32>
  %i.cf = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i to <4 x i32>
  %i.cg = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ch = add <4 x i32> %i.cg, %i.ce              ; 2 uses
  %shift = shufflevector <4 x i32> %i.ch, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.ch, %shift ; 2 uses
  %4 = extractelement <4 x i32> %foldExtExtBinop, i64 0 ; 2 uses
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
  %wide.load = load <4 x i32>, ptr %i.ck, align 4, !tbaa !73
  %wide.load392 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !73
  %i.cm = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.cn = add <4 x i32> %wide.load392, %vec.phi391 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !1465

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
  %wide.load401 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !73
  %wide.load402 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !73
  %i.cz = add <4 x i32> %wide.load401, %vec.phi399 ; 2 uses
  %i.da = add <4 x i32> %wide.load402, %vec.phi400 ; 2 uses
  %index.next403 = add nuw i64 %index398, 8       ; 2 uses
  %i.db = icmp eq i64 %index.next403, %n.vec396
  br i1 %i.db, label %middle.block404, label %vector.body397, !llvm.loop !1466

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
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !73
  %i.df = add nsw i32 %i.de, %.07582.i.i.i.i.i    ; 2 uses
  %i.dg = add nuw nsw i64 %.05683.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.dg, %.0.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i, !llvm.loop !1467

.lr.ph89.i.i.i.i.i:                               ; preds = %.lr.ph89.i.i.i.i.i.preheader510, %.lr.ph89.i.i.i.i.i
  %.05588.i.i.i.i.i = phi i64 [ %i.dk, %.lr.ph89.i.i.i.i.i ], [ %.05588.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader510 ] ; 2 uses
  %.187.i.i.i.i.i = phi i32 [ %i.dj, %.lr.ph89.i.i.i.i.i ], [ %.187.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader510 ]
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %.05588.i.i.i.i.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !73
  %i.dj = add nsw i32 %i.di, %.187.i.i.i.i.i      ; 2 uses
  %i.dk = add nsw i64 %.05588.i.i.i.i.i, 1        ; 2 uses
  %i.dl = icmp slt i64 %i.dk, %i.as
  br i1 %i.dl, label %.lr.ph89.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, !llvm.loop !1468

bb.q:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i
  %i.dm = load i32, ptr %i.ag, align 4, !tbaa !73 ; 3 uses
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
  %wide.load417 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !73
  %wide.load418 = load <4 x i32>, ptr %i.dt, align 4, !tbaa !73
  %i.du = add <4 x i32> %wide.load417, %vec.phi415 ; 2 uses
  %i.dv = add <4 x i32> %wide.load418, %vec.phi416 ; 2 uses
  %index.next419 = add nuw i64 %index414, 8       ; 2 uses
  %i.dw = icmp eq i64 %index.next419, %n.vec412
  br i1 %i.dw, label %middle.block420, label %vector.body413, !llvm.loop !1469

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
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !73
  %i.ea = add nsw i32 %i.dz, %.291.i.i.i.i.i      ; 2 uses
  %i.eb = add nuw nsw i64 %.092.i.i.i.i.i, 1      ; 2 uses
  %exitcond102.not.i.i.i.i.i = icmp eq i64 %i.eb, %i.as
  br i1 %exitcond102.not.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i, !llvm.loop !1470

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i: ; preds = %.lr.ph89.i.i.i.i.i, %.lr.ph94.i.i.i.i.i, %middle.block404, %middle.block420, %bb.q, %.preheader.i.i.i.i.i
  %.0.i.i.i = phi i32 [ %i.ea, %.lr.ph94.i.i.i.i.i ], [ %.075.lcssa.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.dm, %bb.q ], [ %i.dx, %middle.block420 ], [ %i.dc, %middle.block404 ], [ %i.dj, %.lr.ph89.i.i.i.i.i ]
  %i.ec = sext i32 %.0.i.i.i to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit

_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, %bb.j, %bb.i
  %.0.i.i = phi i64 [ %i.aq, %bb.i ], [ %i.ec, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i ], [ 0, %bb.j ]
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !132 ; 13 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !116 ; 2 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.d
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !73
  %i.ek = load i32, ptr %i.eh, align 4, !tbaa !73
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
  br i1 %i.ft, label %.lr.ph.i.i.i.i.i174, label %._crit_edge.i.i.i.i.i169, !llvm.loop !336

bb.x:                                             ; preds = %._crit_edge.i.i.i.i.i169
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.ez
  %i.fv = load <4 x i32>, ptr %i.fu, align 1, !tbaa !81
  %i.fw = add <4 x i32> %i.fv, %i.fi
  %i.fx = bitcast <4 x i32> %i.fw to <2 x i64>
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge.i.i.i.i.i169, %bb.v
  %.sroa.067.2.i.i.i.i.i154 = phi <2 x i64> [ %i.fc, %bb.v ], [ %i.fx, %bb.x ], [ %i.fj, %._crit_edge.i.i.i.i.i169 ] ; 2 uses
  %i.fy = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i154 to <4 x i32>
  %i.fz = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i154 to <4 x i32>
  %i.ga = shufflevector <4 x i32> %i.fz, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.gb = add <4 x i32> %i.ga, %i.fy              ; 2 uses
  %shift484 = shufflevector <4 x i32> %i.gb, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop485 = add nsw <4 x i32> %i.gb, %shift484 ; 2 uses
  %5 = extractelement <4 x i32> %foldExtExtBinop485, i64 0 ; 2 uses
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
  %wide.load433 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !73
  %wide.load434 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !73
  %i.gg = add <4 x i32> %wide.load433, %vec.phi431 ; 2 uses
  %i.gh = add <4 x i32> %wide.load434, %vec.phi432 ; 2 uses
  %index.next435 = add nuw i64 %index430, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next435, %n.vec428
  br i1 %i.gi, label %middle.block436, label %vector.body429, !llvm.loop !1471

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
  %wide.load449 = load <4 x i32>, ptr %i.gr, align 4, !tbaa !73
  %wide.load450 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !73
  %i.gt = add <4 x i32> %wide.load449, %vec.phi447 ; 2 uses
  %i.gu = add <4 x i32> %wide.load450, %vec.phi448 ; 2 uses
  %index.next451 = add nuw i64 %index446, 8       ; 2 uses
  %i.gv = icmp eq i64 %index.next451, %n.vec444
  br i1 %i.gv, label %middle.block452, label %vector.body445, !llvm.loop !1472

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
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !73
  %i.gz = add nsw i32 %i.gy, %.07582.i.i.i.i.i167 ; 2 uses
  %i.ha = add nuw nsw i64 %.05683.i.i.i.i.i166, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i168 = icmp eq i64 %i.ha, %.0.i.i.i.i.i.i.i.i.i151
  br i1 %exitcond.not.i.i.i.i.i168, label %.preheader.i.i.i.i.i157, label %.lr.ph85.i.i.i.i.i165, !llvm.loop !1473

.lr.ph89.i.i.i.i.i162:                            ; preds = %.lr.ph89.i.i.i.i.i162.preheader495, %.lr.ph89.i.i.i.i.i162
  %.05588.i.i.i.i.i163 = phi i64 [ %i.he, %.lr.ph89.i.i.i.i.i162 ], [ %.05588.i.i.i.i.i163.ph, %.lr.ph89.i.i.i.i.i162.preheader495 ] ; 2 uses
  %.187.i.i.i.i.i164 = phi i32 [ %i.hd, %.lr.ph89.i.i.i.i.i162 ], [ %.187.i.i.i.i.i164.ph, %.lr.ph89.i.i.i.i.i162.preheader495 ]
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %.05588.i.i.i.i.i163
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !73
  %i.hd = add nsw i32 %i.hc, %.187.i.i.i.i.i164   ; 2 uses
  %i.he = add nsw i64 %.05588.i.i.i.i.i163, 1     ; 2 uses
  %i.hf = icmp slt i64 %i.he, %i.d
  br i1 %i.hf, label %.lr.ph89.i.i.i.i.i162, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, !llvm.loop !1474

bb.z:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i150
  %i.hg = load i32, ptr %i.ee, align 4, !tbaa !73 ; 3 uses
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
  %wide.load465 = load <4 x i32>, ptr %i.hm, align 4, !tbaa !73
  %wide.load466 = load <4 x i32>, ptr %i.hn, align 4, !tbaa !73
  %i.ho = add <4 x i32> %wide.load465, %vec.phi463 ; 2 uses
  %i.hp = add <4 x i32> %wide.load466, %vec.phi464 ; 2 uses
  %index.next467 = add nuw i64 %index462, 8       ; 2 uses
  %i.hq = icmp eq i64 %index.next467, %n.vec460
  br i1 %i.hq, label %middle.block468, label %vector.body461, !llvm.loop !1475

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
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !73
  %i.hu = add nsw i32 %i.ht, %.291.i.i.i.i.i181   ; 2 uses
  %i.hv = add nuw nsw i64 %.092.i.i.i.i.i180, 1   ; 2 uses
  %exitcond102.not.i.i.i.i.i182 = icmp eq i64 %i.hv, %i.d
  br i1 %exitcond102.not.i.i.i.i.i182, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, label %.lr.ph94.i.i.i.i.i179, !llvm.loop !1476

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159: ; preds = %.lr.ph89.i.i.i.i.i162, %.lr.ph94.i.i.i.i.i179, %middle.block452, %middle.block468, %bb.z, %.preheader.i.i.i.i.i157
  %.0.i.i.i160 = phi i32 [ %i.hu, %.lr.ph94.i.i.i.i.i179 ], [ %.075.lcssa.i.i.i.i.i158, %.preheader.i.i.i.i.i157 ], [ %i.hg, %bb.z ], [ %i.hr, %middle.block468 ], [ %i.gw, %middle.block452 ], [ %i.hd, %.lr.ph89.i.i.i.i.i162 ]
  %i.hw = sext i32 %.0.i.i.i160 to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit183

_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit183: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, %bb.s, %bb.r
  %.0.i.i161 = phi i64 [ %i.em, %bb.r ], [ %i.hw, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159 ], [ 0, %bb.s ]
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 7 uses
  store i64 0, ptr %i.hx, align 8, !tbaa !205
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !116
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !115
  %i.ic = shl i64 %i.ib, 2
  %i.id = add i64 %i.ic, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hz, i8 0, i64 %i.id, i1 false)
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !132 ; 2 uses
  %.not.i = icmp eq ptr %i.if, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit183
  %i.ig = load i64, ptr %i.ia, align 8, !tbaa !115
  %i.ih = shl i64 %i.ig, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.if, i8 0, i64 %i.ih, i1 false)
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit

_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit:   ; preds = %bb.aa, %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit183
  %i.ii = add nsw i64 %.0.i.i161, %.0.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 9 uses
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.ij, i64 noundef %i.ii)
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
end_hunk_6
