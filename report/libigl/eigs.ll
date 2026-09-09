Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/eigs?download=true
inline.NumInlined: 14241
inline.NumDeleted: 6065
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 189
loop-unroll.NumUnrolled: 194
begin_hunk_0_@_ZN5Eigen8internal12SparseLUImplIdiE10panel_bmodEllllRNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEES5_RNS3_IiLin1ELi1ELi0ELin1ELi1EEES7_RNS0_13LU_GlobalLU_tIS6_S4_EE:bb.a

bb.f:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.0212.lcssa402 = phi i64 [ 0, %._crit_edge.thread ], [ %.1213, %._crit_edge ] ; 8 uses
  %.0317.lcssa401 = phi i64 [ 0, %._crit_edge.thread ], [ %.1318, %._crit_edge ] ; 10 uses
  %i.bc = add nuw nsw i64 %.0317.lcssa401, 1
  %i.bd = and i64 %i.bc, -2                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.be = load ptr, ptr %6, align 8, !tbaa !119   ; 4 uses
  store ptr %i.be, ptr %10, align 8, !tbaa !206
  store i64 %.0317.lcssa401, ptr %i.o, align 8, !tbaa !139
  store i64 %.0212.lcssa402, ptr %i.p, align 8, !tbaa !139
  store i64 %i.bd, ptr %i.q, align 8, !tbaa !139
  br i1 %i.f, label %.lr.ph348, label %._ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi16ENS_11OuterStrideILin1EEEEaSERKS5_.exit.i.i_crit_edge

._ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi16ENS_11OuterStrideILin1EEEEaSERKS5_.exit.i.i_crit_edge: ; preds = %bb.f
  %.pre384 = add nsw i64 %i.v, 1
  br label %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi16ENS_11OuterStrideILin1EEEEaSERKS5_.exit.i.i

.lr.ph348:                                        ; preds = %bb.f
  %i.bf = load ptr, ptr %8, align 8, !tbaa !141
  %i.bg = load ptr, ptr %5, align 8, !tbaa !119
  %invariant.gep349 = getelementptr [4 x i8], ptr %i.bf, i64 %i.v
  %i.bh = sub nsw i64 %i.ao, %i.ad
  %i.bi = add nsw i64 %i.v, 1                     ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph348, %bb.k
  %.1346 = phi i64 [ %3, %.lr.ph348 ], [ %i.dl, %bb.k ] ; 2 uses
  %.0208345 = phi i64 [ 0, %.lr.ph348 ], [ %.1209, %bb.k ] ; 4 uses
  %i.bj = sub nsw i64 %.1346, %3
  %i.bk = mul nsw i64 %i.bj, %1                   ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bk ; 5 uses
  %gep350 = getelementptr [4 x i8], ptr %invariant.gep349, i64 %i.bk
  %i.bm = load i32, ptr %gep350, align 4, !tbaa !142 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, -1
  br i1 %i.bn, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bo = sext i32 %i.bm to i64                   ; 3 uses
  %i.bp = sub nsw i64 %i.v, %i.bo                 ; 3 uses
  %.neg320 = xor i64 %i.bp, -1
  %i.bq = add nsw i64 %i.bh, %i.bo                ; 2 uses
  %i.br = add nsw i64 %.0317.lcssa401, %.neg320   ; 3 uses
  %i.bs = icmp sgt i64 %i.br, 0
  br i1 %i.bs, label %.lr.ph337, label %.preheader325

.lr.ph337:                                        ; preds = %bb.h
  %i.bt = mul nsw i64 %.0208345, %i.bd
  %i.bu = getelementptr [8 x i8], ptr %i.be, i64 %i.bt
  %i.bv = shl nuw nsw i64 %i.br, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bu, i8 0, i64 %i.bv, i1 false), !tbaa !56
  br label %.preheader325

.preheader325:                                    ; preds = %.lr.ph337, %bb.h
  %.not321338 = icmp slt i64 %i.bp, 0
  br i1 %.not321338, label %._crit_edge342, label %.lr.ph341

.lr.ph341:                                        ; preds = %.preheader325
  %i.bw = load ptr, ptr %i.n, align 8, !tbaa !141 ; 5 uses
  %i.bx = mul nsw i64 %.0208345, %i.bd
  %i.by = getelementptr [8 x i8], ptr %i.be, i64 %i.bx
  %invariant.gep343 = getelementptr [8 x i8], ptr %i.by, i64 %i.br ; 5 uses
  %i.bz = sub nsw i64 %i.bi, %i.bo                ; 2 uses
  %xtraiter = and i64 %i.bz, 3                    ; 3 uses
  %i.ca = icmp ult i64 %i.bp, 3
  br i1 %i.ca, label %.epil.preheader, label %.lr.ph341.new

.lr.ph341.new:                                    ; preds = %.lr.ph341
  %unroll_iter = and i64 %i.bz, -4
  br label %bb.j

._crit_edge342.loopexit.unr-lcssa:                ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge342, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge342.loopexit.unr-lcssa, %.lr.ph341
  %.0205340.epil.init = phi i64 [ 0, %.lr.ph341 ], [ %i.dk, %._crit_edge342.loopexit.unr-lcssa ]
  %.0207339.epil.init = phi i64 [ %i.bq, %.lr.ph341 ], [ %i.dj, %._crit_edge342.loopexit.unr-lcssa ]
  %lcmp.mod406 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod406)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.0205340.epil = phi i64 [ %.0205340.epil.init, %.epil.preheader ], [ %i.ch, %bb.i ] ; 2 uses
  %.0207339.epil = phi i64 [ %.0207339.epil.init, %.epil.preheader ], [ %i.cg, %bb.i ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %.0207339.epil
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !142
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !56
  %gep344.epil = getelementptr [8 x i8], ptr %invariant.gep343, i64 %.0205340.epil
  store double %i.cf, ptr %gep344.epil, align 8, !tbaa !56
  %i.cg = add nsw i64 %.0207339.epil, 1
  %i.ch = add nuw nsw i64 %.0205340.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge342, label %bb.i, !llvm.loop !564

._crit_edge342:                                   ; preds = %._crit_edge342.loopexit.unr-lcssa, %bb.i, %.preheader325
  %i.ci = add nsw i64 %.0208345, 1
  br label %bb.k

bb.j:                                             ; preds = %bb.j, %.lr.ph341.new
  %.0205340 = phi i64 [ 0, %.lr.ph341.new ], [ %i.dk, %bb.j ] ; 5 uses
  %.0207339 = phi i64 [ %i.bq, %.lr.ph341.new ], [ %i.dj, %bb.j ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph341.new ], [ %niter.next.3, %bb.j ]
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %.0207339
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !142
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.cl
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !56
  %gep344 = getelementptr [8 x i8], ptr %invariant.gep343, i64 %.0205340
  store double %i.cn, ptr %gep344, align 8, !tbaa !56
  %i.co = getelementptr [4 x i8], ptr %i.bw, i64 %.0207339
  %i.cp = getelementptr i8, ptr %i.co, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !142
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.cr
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !56
  %i.cu = getelementptr [8 x i8], ptr %invariant.gep343, i64 %.0205340
  %gep344.1 = getelementptr i8, ptr %i.cu, i64 8
  store double %i.ct, ptr %gep344.1, align 8, !tbaa !56
  %i.cv = getelementptr [4 x i8], ptr %i.bw, i64 %.0207339
  %i.cw = getelementptr i8, ptr %i.cv, i64 8
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !142
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.cy
  %i.da = load double, ptr %i.cz, align 8, !tbaa !56
  %i.db = getelementptr [8 x i8], ptr %invariant.gep343, i64 %.0205340
  %gep344.2 = getelementptr i8, ptr %i.db, i64 16
  store double %i.da, ptr %gep344.2, align 8, !tbaa !56
  %i.dc = getelementptr [4 x i8], ptr %i.bw, i64 %.0207339
  %i.dd = getelementptr i8, ptr %i.dc, i64 12
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !142
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !56
  %i.di = getelementptr [8 x i8], ptr %invariant.gep343, i64 %.0205340
  %gep344.3 = getelementptr i8, ptr %i.di, i64 24
  store double %i.dh, ptr %gep344.3, align 8, !tbaa !56
  %i.dj = add nsw i64 %.0207339, 4                ; 2 uses
  %i.dk = add nuw nsw i64 %.0205340, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge342.loopexit.unr-lcssa, label %bb.j, !llvm.loop !565

bb.k:                                             ; preds = %bb.g, %._crit_edge342
  %.1209 = phi i64 [ %i.ci, %._crit_edge342 ], [ %.0208345, %bb.g ]
  %i.dl = add nsw i64 %.1346, 1                   ; 2 uses
  %i.dm = icmp slt i64 %i.dl, %i.e
  br i1 %i.dm, label %bb.g, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi16ENS_11OuterStrideILin1EEEEaSERKS5_.exit.i.i, !llvm.loop !566

_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi16ENS_11OuterStrideILin1EEEEaSERKS5_.exit.i.i: ; preds = %bb.k, %._ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi16ENS_11OuterStrideILin1EEEEaSERKS5_.exit.i.i_crit_edge
  %.neg323.pre-phi = phi i64 [ %.pre384, %._ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi16ENS_11OuterStrideILin1EEEEaSERKS5_.exit.i.i_crit_edge ], [ %i.bi, %bb.k ] ; 2 uses
  %i.dn = load ptr, ptr %i.l, align 8, !tbaa !141 ; 2 uses
  %i.do = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.ad
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !142 ; 2 uses
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.af
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !142
  %i.dt = sub nsw i32 %i.ds, %i.dp
  %i.du = sext i32 %i.dt to i64                   ; 3 uses
  %i.dv = add nsw i64 %.0317.lcssa401, %i.ad
  %i.dw = sub nsw i64 %.neg323.pre-phi, %i.dv
  %i.dx = add nsw i64 %i.du, 1
  %i.dy = mul i64 %i.dx, %i.dw
  %i.dz = add nsw i64 %i.dy, %i.dq                ; 3 uses
  store i64 %i.dz, ptr %i.a, align 8, !tbaa !161
  %i.ea = load ptr, ptr %i.m, align 8, !tbaa !119 ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  store ptr %i.eb, ptr %11, align 8
  store i64 %.0317.lcssa401, ptr %.sroa.4266.0..sroa_idx, align 8
  store i64 %.0317.lcssa401, ptr %.sroa.5267.0..sroa_idx, align 8
  store i64 %i.du, ptr %i.r, align 8, !tbaa !139, !alias.scope !577
  %i.ec = icmp eq i64 %.0317.lcssa401, 0
  br i1 %i.ec, label %_ZN5Eigen8internal10AssignmentINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi16ENS_11OuterStrideILin1EEEEENS_5SolveINS_14TriangularViewINS2_IS4_Li0ES6_EELj5EEES7_EENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS7_RKSC_RKSE_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi16ENS_11OuterStrideILin1EEEEaSERKS5_.exit.i.i
  call void @_ZN5Eigen8internal26triangular_solver_selectorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS2_IS4_Li16ES6_EELi1ELi5ELi0ELin1EE3runERKS7_RS8_(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(40) %10)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !161
  %.pre382 = load ptr, ptr %i.m, align 8, !tbaa !119
  %.pre383 = load ptr, ptr %6, align 8, !tbaa !119
  br label %_ZN5Eigen8internal10AssignmentINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi16ENS_11OuterStrideILin1EEEEENS_5SolveINS_14TriangularViewINS2_IS4_Li0ES6_EELj5EEES7_EENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS7_RKSC_RKSE_.exit

_ZN5Eigen8internal10AssignmentINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi16ENS_11OuterStrideILin1EEEEENS_5SolveINS_14TriangularViewINS2_IS4_Li0ES6_EELj5EEES7_EENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS7_RKSC_RKSE_.exit: ; preds = %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi16ENS_11OuterStrideILin1EEEEaSERKS5_.exit.i.i, %bb.l
  %i.ed = phi ptr [ %i.be, %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi16ENS_11OuterStrideILin1EEEEaSERKS5_.exit.i.i ], [ %.pre383, %bb.l ]
  %i.ee = phi ptr [ %i.ea, %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi16ENS_11OuterStrideILin1EEEEaSERKS5_.exit.i.i ], [ %.pre382, %bb.l ]
  %i.ef = phi i64 [ %i.dz, %_ZN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi16ENS_11OuterStrideILin1EEEEaSERKS5_.exit.i.i ], [ %.pre, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.eg = add nsw i64 %i.ef, %.0317.lcssa401      ; 2 uses
  store i64 %i.eg, ptr %i.a, align 8, !tbaa !161
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.eg ; 2 uses
  %i.ei = sub nsw i64 %i.am, %i.ae                ; 2 uses
  %i.ej = srem i64 %i.ei, 2
  %i.ek = sub nsw i64 %i.ei, %i.ej                ; 15 uses
  %i.el = ptrtoint ptr %i.eh to i64               ; 2 uses
  %i.em = and i64 %i.el, 7
  %.not.i.i = icmp eq i64 %i.em, 0
  %13 = lshr exact i64 %i.el, 3
  %14 = and i64 %13, 1
  %15 = sub nuw nsw i64 2, %14
  %i.en = select i1 %.not.i.i, i64 %15, i64 0
  %.frozen = freeze i64 %i.en                     ; 3 uses
  %.urem = add i64 %.frozen, -2
  %.cmp = icmp ult i64 %.frozen, 2
  %i.eo = select i1 %.cmp, i64 %.frozen, i64 %.urem
  %i.ep = mul nsw i64 %i.bd, %2
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ep
  %i.er = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.eo ; 15 uses
  %i.es = ptrtoint ptr %i.er to i64               ; 2 uses
  %i.et = and i64 %i.es, 7
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.et, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZN5Eigen8internal10AssignmentINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi16ENS_11OuterStrideILin1EEEEENS_5SolveINS_14TriangularViewINS2_IS4_Li0ES6_EELj5EEES7_EENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS7_RKSC_RKSE_.exit
  %i.eu = icmp sgt i64 %.0212.lcssa402, 0
  %i.ev = icmp sgt i64 %i.an, 0
  %or.cond = select i1 %i.eu, i1 %i.ev, i1 false
  br i1 %or.cond, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit

.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i:       ; preds = %bb.m
  %i.ew = shl nuw nsw i64 %i.an, 3                ; 9 uses
  %xtraiter407 = and i64 %.0212.lcssa402, 7       ; 3 uses
  %i.ex = icmp ult i64 %.0212.lcssa402, 8
  br i1 %i.ex, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.new

.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.new:   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i
  %unroll_iter411 = and i64 %.0212.lcssa402, 9223372036854775800
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.new
  %.0810.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.new ], [ %i.fv, %.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter412 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.new ], [ %niter412.next.7, %.preheader.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ey = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i, %i.ek
  %i.ez = getelementptr [8 x i8], ptr %i.er, i64 %i.ey
  call void @llvm.memset.p0.i64(ptr align 8 %i.ez, i8 0, i64 %i.ew, i1 false), !tbaa !56
  %i.fa = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.fb = mul nsw i64 %i.fa, %i.ek
  %i.fc = getelementptr [8 x i8], ptr %i.er, i64 %i.fb
  call void @llvm.memset.p0.i64(ptr align 8 %i.fc, i8 0, i64 %i.ew, i1 false), !tbaa !56
  %i.fd = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.fe = mul nsw i64 %i.fd, %i.ek
  %i.ff = getelementptr [8 x i8], ptr %i.er, i64 %i.fe
  call void @llvm.memset.p0.i64(ptr align 8 %i.ff, i8 0, i64 %i.ew, i1 false), !tbaa !56
  %i.fg = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.fh = mul nsw i64 %i.fg, %i.ek
  %i.fi = getelementptr [8 x i8], ptr %i.er, i64 %i.fh
  call void @llvm.memset.p0.i64(ptr align 8 %i.fi, i8 0, i64 %i.ew, i1 false), !tbaa !56
  %i.fj = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i, 4
  %i.fk = mul nsw i64 %i.fj, %i.ek
  %i.fl = getelementptr [8 x i8], ptr %i.er, i64 %i.fk
  call void @llvm.memset.p0.i64(ptr align 8 %i.fl, i8 0, i64 %i.ew, i1 false), !tbaa !56
  %i.fm = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i, 5
  %i.fn = mul nsw i64 %i.fm, %i.ek
  %i.fo = getelementptr [8 x i8], ptr %i.er, i64 %i.fn
  call void @llvm.memset.p0.i64(ptr align 8 %i.fo, i8 0, i64 %i.ew, i1 false), !tbaa !56
  %i.fp = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i, 6
  %i.fq = mul nsw i64 %i.fp, %i.ek
  %i.fr = getelementptr [8 x i8], ptr %i.er, i64 %i.fq
  call void @llvm.memset.p0.i64(ptr align 8 %i.fr, i8 0, i64 %i.ew, i1 false), !tbaa !56
  %i.fs = or disjoint i64 %.0810.i.i.i.i.i.i.i.i.i.i.i, 7
  %i.ft = mul nsw i64 %i.fs, %i.ek
  %i.fu = getelementptr [8 x i8], ptr %i.er, i64 %i.ft
  call void @llvm.memset.p0.i64(ptr align 8 %i.fu, i8 0, i64 %i.ew, i1 false), !tbaa !56
  %i.fv = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i, 8 ; 2 uses
  %niter412.next.7 = add nuw nsw i64 %niter412, 8 ; 2 uses
  %niter412.ncmp.7 = icmp eq i64 %niter412.next.7, %unroll_iter411
  br i1 %niter412.ncmp.7, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit.loopexit405.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !569

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal10AssignmentINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi16ENS_11OuterStrideILin1EEEEENS_5SolveINS_14TriangularViewINS2_IS4_Li0ES6_EELj5EEES7_EENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS7_RKSC_RKSE_.exit
  %i.fw = and i64 %i.ek, 1
  %i.fx = icmp sgt i64 %.0212.lcssa402, 0
  br i1 %i.fx, label %.lr.ph52.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit

.lr.ph52.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.fy = lshr exact i64 %i.es, 3
  %i.fz = and i64 %i.fy, 1
  %i.ga = call i64 @llvm.smin.i64(i64 %i.fz, i64 %i.an)
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %.lr.ph52.i.i.i.i.i.i.i.i.i.i
  %.03451.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph52.i.i.i.i.i.i.i.i.i.i ], [ %i.hb, %._crit_edge.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.03550.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ga, %.lr.ph52.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i ] ; 8 uses
  %i.gb = sub nsw i64 %i.an, %.03550.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.gc = and i64 %i.gb, -2
  %i.gd = add i64 %i.gc, %.03550.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ge = icmp sgt i64 %.03550.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ge, label %.preheader43.loopexit.i.i.i.i.i.i.i.i.i.i, label %.preheader43.i.i.i.i.i.i.i.i.i.i

.preheader43.loopexit.i.i.i.i.i.i.i.i.i.i:        ; preds = %bb.n
  %i.gf = mul nsw i64 %.03451.i.i.i.i.i.i.i.i.i.i, %i.ek
  %i.gg = getelementptr [8 x i8], ptr %i.er, i64 %i.gf
  store double 0.000000e+00, ptr %i.gg, align 8, !tbaa !56
  br label %.preheader43.i.i.i.i.i.i.i.i.i.i

.preheader43.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader43.loopexit.i.i.i.i.i.i.i.i.i.i, %bb.n
  %i.gh = icmp sgt i64 %i.gb, 1
  br i1 %i.gh, label %.lr.ph47.i.preheader.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i

.lr.ph47.i.preheader.i.i.i.i.i.i.i.i.i:           ; preds = %.preheader43.i.i.i.i.i.i.i.i.i.i
  %i.gi = mul nsw i64 %.03451.i.i.i.i.i.i.i.i.i.i, %i.ek
  %i.gj = getelementptr [8 x i8], ptr %i.er, i64 %i.gi
  %i.gk = shl nsw i64 %.03550.i.i.i.i.i.i.i.i.i.i, 3
  %scevgep.i = getelementptr i8, ptr %i.gj, i64 %i.gk
  %i.gl = add nsw i64 %.03550.i.i.i.i.i.i.i.i.i.i, 2
  %smax.i = call i64 @llvm.smax.i64(i64 %i.gd, i64 %i.gl)
  %i.gm = xor i64 %.03550.i.i.i.i.i.i.i.i.i.i, -1
  %i.gn = add i64 %smax.i, %i.gm
  %i.go = shl i64 %i.gn, 3
  %i.gp = and i64 %i.go, -16
  %i.gq = add i64 %i.gp, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.gq, i1 false), !tbaa !131
  br label %.preheader.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph47.i.preheader.i.i.i.i.i.i.i.i.i, %.preheader43.i.i.i.i.i.i.i.i.i.i
  %i.gr = icmp slt i64 %i.gd, %i.an
  br i1 %i.gr, label %.lr.ph49.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.lr.ph49.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i
  %i.gs = mul nsw i64 %.03451.i.i.i.i.i.i.i.i.i.i, %i.ek
  %i.gt = getelementptr [8 x i8], ptr %i.er, i64 %i.gs
  %i.gu = and i64 %i.gb, 2305843009213693950
  %i.gv = add nsw i64 %i.gu, %.03550.i.i.i.i.i.i.i.i.i.i
  %i.gw = shl i64 %i.gv, 3
  %scevgep3.i = getelementptr i8, ptr %i.gt, i64 %i.gw
  %i.gx = shl nsw i64 %i.gb, 3
  %i.gy = and i64 %i.gx, 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep3.i, i8 0, i64 %i.gy, i1 false), !tbaa !56
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph49.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i
  %i.gz = add nsw i64 %.03550.i.i.i.i.i.i.i.i.i.i, %i.fw
  %i.ha = srem i64 %i.gz, 2
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %i.an, i64 %i.ha)
  %i.hb = add nuw nsw i64 %.03451.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond54.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hb, %.0212.lcssa402
  br i1 %exitcond54.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit, label %bb.n, !llvm.loop !570

_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit.loopexit405.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod409.not = icmp eq i64 %xtraiter407, 0
  br i1 %lcmp.mod409.not, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:  ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit.loopexit405.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i
  %.0810.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i ], [ %i.fv, %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit.loopexit405.unr-lcssa ]
  %lcmp.mod410 = icmp ne i64 %xtraiter407, 0
  call void @llvm.assume(i1 %lcmp.mod410)
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil

.preheader.i.i.i.i.i.i.i.i.i.i.i.epil:            ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.0810.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.he, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.0810.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter408 = phi i64 [ %epil.iter408.next, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.hc = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.epil, %i.ek
  %i.hd = getelementptr [8 x i8], ptr %i.er, i64 %i.hc
  call void @llvm.memset.p0.i64(ptr align 8 %i.hd, i8 0, i64 %i.ew, i1 false), !tbaa !56
  %i.he = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter408.next = add i64 %epil.iter408, 1   ; 2 uses
  %epil.iter408.cmp.not = icmp eq i64 %epil.iter408.next, %xtraiter407
  br i1 %epil.iter408.cmp.not, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !571

_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit: ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit.loopexit405.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.i.epil, %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.m, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.hf = load ptr, ptr %10, align 8, !tbaa !206
  %i.hg = load i64, ptr %i.q, align 8, !tbaa !139
  call void @_ZN5Eigen8internal13sparselu_gemmIdEEvlllPKT_lS4_lPS2_l(i64 noundef %i.an, i64 noundef %.0212.lcssa402, i64 noundef %.0317.lcssa401, ptr noundef %i.eh, i64 noundef %i.du, ptr noundef %i.hf, i64 noundef %i.hg, ptr noundef %i.er, i64 noundef %i.ek)
  br i1 %i.f, label %.lr.ph367, label %._crit_edge368

.lr.ph367:                                        ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit
  %i.hh = load ptr, ptr %8, align 8, !tbaa !141
  %i.hi = load ptr, ptr %5, align 8, !tbaa !119
  %invariant.gep369 = getelementptr [4 x i8], ptr %i.hh, i64 %i.v
  %i.hj = sub nsw i64 %i.ao, %i.ad
  %i.hk = load ptr, ptr %10, align 8
  %i.hl = load i64, ptr %i.q, align 8
  %invariant.gep371 = getelementptr [8 x i8], ptr %i.hk, i64 %.0317.lcssa401
  %i.hm = icmp sgt i64 %i.an, 0
  %i.hn = add nsw i64 %i.ad, -2
  %i.ho = sext i32 %i.ai to i64
  %i.hp = add nsw i64 %i.hn, %i.ho
  %i.hq = add nsw i64 %i.v, %i.ao
  %xtraiter422 = and i64 %i.an, 1
  %i.hr = icmp eq i64 %i.hp, %i.hq
  %unroll_iter426 = and i64 %i.an, 9223372036854775806
  %lcmp.mod424.not = icmp eq i64 %xtraiter422, 0
  %lcmp.mod425 = trunc i64 %i.an to i1
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph367, %bb.r
  %.2366 = phi i64 [ %3, %.lr.ph367 ], [ %i.ke, %bb.r ] ; 2 uses
  %.2210365 = phi i64 [ 0, %.lr.ph367 ], [ %.3211, %bb.r ] ; 4 uses
  %i.hs = sub nsw i64 %.2366, %3
  %i.ht = mul nsw i64 %i.hs, %1                   ; 2 uses
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.ht ; 6 uses
  %gep370 = getelementptr [4 x i8], ptr %invariant.gep369, i64 %i.ht
  %i.hv = load i32, ptr %gep370, align 4, !tbaa !142 ; 3 uses
  %i.hw = icmp eq i32 %i.hv, -1
  br i1 %i.hw, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hx = sext i32 %i.hv to i64                   ; 3 uses
  %i.hy = sub nsw i64 %i.v, %i.hx                 ; 2 uses
  %i.hz = add nsw i64 %i.hj, %i.hx                ; 3 uses
  %.not351 = icmp slt i64 %i.hy, 0
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal13sparselu_gemmIdEEvlllPKT_lS4_lPS2_l:bb.a
  %.05.i.i.i.i.i.i.i667 = phi i64 [ %i.arl, %.lr.ph.i.i.i.i.i.i.i666 ], [ %.05.i.i.i.i.i.i.i667.unr, %.lr.ph.i.i.i.i.i.i.i666.prol.loopexit ] ; 6 uses
  %i.aqi = getelementptr inbounds nuw [8 x i8], ptr %gep1347, i64 %.05.i.i.i.i.i.i.i667 ; 2 uses
  %i.aqj = getelementptr inbounds nuw [8 x i8], ptr %gep1359, i64 %.05.i.i.i.i.i.i.i667
  %i.aqk = load double, ptr %i.aqj, align 8, !tbaa !56
  %i.aql = fmul double %i.aox, %i.aqk
  %i.aqm = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05.i.i.i.i.i.i.i667
  %i.aqn = load double, ptr %i.aqm, align 8, !tbaa !56
  %i.aqo = fmul double %i.aoz, %i.aqn
  %i.aqp = fadd double %i.aql, %i.aqo
  %i.aqq = getelementptr inbounds nuw [8 x i8], ptr %gep1367, i64 %.05.i.i.i.i.i.i.i667
  %i.aqr = load double, ptr %i.aqq, align 8, !tbaa !56
  %i.aqs = fmul double %i.apb, %i.aqr
  %i.aqt = fadd double %i.aqp, %i.aqs
  %i.aqu = load double, ptr %i.aqi, align 8, !tbaa !56
  %i.aqv = fadd double %i.aqu, %i.aqt
  store double %i.aqv, ptr %i.aqi, align 8, !tbaa !56
  %i.aqw = add nuw nsw i64 %.05.i.i.i.i.i.i.i667, 1 ; 4 uses
  %i.aqx = getelementptr inbounds nuw [8 x i8], ptr %gep1347, i64 %i.aqw ; 2 uses
  %i.aqy = getelementptr inbounds nuw [8 x i8], ptr %gep1359, i64 %i.aqw
  %i.aqz = load double, ptr %i.aqy, align 8, !tbaa !56
  %i.ara = fmul double %i.aox, %i.aqz
  %i.arb = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %i.aqw
  %i.arc = load double, ptr %i.arb, align 8, !tbaa !56
  %i.ard = fmul double %i.aoz, %i.arc
  %i.are = fadd double %i.ara, %i.ard
  %i.arf = getelementptr inbounds nuw [8 x i8], ptr %gep1367, i64 %i.aqw
  %i.arg = load double, ptr %i.arf, align 8, !tbaa !56
  %i.arh = fmul double %i.apb, %i.arg
  %i.ari = fadd double %i.are, %i.arh
  %i.arj = load double, ptr %i.aqx, align 8, !tbaa !56
  %i.ark = fadd double %i.arj, %i.ari
  store double %i.ark, ptr %i.aqx, align 8, !tbaa !56
  %i.arl = add nuw nsw i64 %.05.i.i.i.i.i.i.i667, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i668.1 = icmp eq i64 %i.arl, %.sroa.speculated
  br i1 %exitcond.not.i.i.i.i.i.i.i668.1, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi16ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS1_ISG_Li16ES5_EEEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i666, !llvm.loop !702

.lr.ph.i.i.i.i.i.i670:                            ; preds = %.lr.ph.i.i.i.i.i.i670, %.lr.ph.i.preheader.i.i.i.i.i669
  %.011.i.i.i.i.i.i671 = phi i64 [ %i.asa, %.lr.ph.i.i.i.i.i.i670 ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i669 ] ; 5 uses
  %i.arm = getelementptr inbounds nuw [8 x i8], ptr %gep1347, i64 %.011.i.i.i.i.i.i671 ; 2 uses
  %i.arn = getelementptr inbounds nuw [8 x i8], ptr %gep1359, i64 %.011.i.i.i.i.i.i671
  %i.aro = load <2 x double>, ptr %i.arn, align 16, !tbaa !131
  %i.arp = fmul <2 x double> %i.apd, %i.aro
  %i.arq = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.011.i.i.i.i.i.i671
  %i.arr = load <2 x double>, ptr %i.arq, align 16, !tbaa !131
  %i.ars = fmul <2 x double> %i.ape, %i.arr
  %i.art = fadd <2 x double> %i.arp, %i.ars
  %i.aru = getelementptr inbounds nuw [8 x i8], ptr %gep1367, i64 %.011.i.i.i.i.i.i671
  %i.arv = load <2 x double>, ptr %i.aru, align 16, !tbaa !131
  %i.arw = fmul <2 x double> %i.apf, %i.arv
  %i.arx = fadd <2 x double> %i.art, %i.arw
  %i.ary = load <2 x double>, ptr %i.arm, align 16, !tbaa !131
  %i.arz = fadd <2 x double> %i.ary, %i.arx
  store <2 x double> %i.arz, ptr %i.arm, align 16, !tbaa !131
  %i.asa = add nuw nsw i64 %.011.i.i.i.i.i.i671, 2 ; 2 uses
  %i.asb = icmp samesign ult i64 %i.asa, %i.if
  br i1 %i.asb, label %.lr.ph.i.i.i.i.i.i670, label %._crit_edge.i.i.i.i.i.i665, !llvm.loop !703

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi16ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS1_ISG_Li16ES5_EEEEEERS6_RKNS0_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i666.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i666, %middle.block, %._crit_edge.i.i.i.i.i.i665
  %i.asc = add nuw nsw i64 %.01348, 1             ; 2 uses
  %exitcond1385.not = icmp eq i64 %i.asc, %1
  br i1 %exitcond1385.not, label %.loopexit, label %.lr.ph1349.split, !llvm.loop !678

.loopexit:                                        ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi16ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS1_ISG_Li16ES5_EEEEEERS6_RKNS0_IT_EE.exit.us1352, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi16ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS1_ISG_Li16ES5_EEEEEERS6_RKNS0_IT_EE.exit.us, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi16ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS1_ISG_Li16ES5_EEEEEERS6_RKNS0_IT_EE.exit, %.preheader1270, %.loopexit1271
  %i.asd = add nsw i64 %.06461353, 512            ; 2 uses
  %i.ase = icmp slt i64 %i.asd, %0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ase, label %bb.d, label %._crit_edge1355, !llvm.loop !704
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal14LU_kernel_bmodILi1EE3runINS_11VectorBlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1EEES6_NS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvlRT_RT0_SC_RlllRT1_ll(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %8, i64 noundef %9) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %7, align 8, !tbaa !141
  %i.b = getelementptr [4 x i8], ptr %i.a, i64 %8
  %i.c = getelementptr [4 x i8], ptr %i.b, i64 %9 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !142
  %i.e = sext i32 %i.d to i64
  %i.f = load ptr, ptr %1, align 8, !tbaa !208    ; 4 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load double, ptr %i.g, align 8, !tbaa !56 ; 2 uses
  %i.i = add i64 %5, 1
  %i.j = mul i64 %9, %i.i
  %i.k = add nsw i64 %i.j, 1
  %i.l = load i64, ptr %4, align 8, !tbaa !161
  %i.m = add nsw i64 %i.k, %i.l                   ; 2 uses
  store i64 %i.m, ptr %4, align 8, !tbaa !161
  %i.n = load ptr, ptr %3, align 8, !tbaa !119
  %i.o = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.m ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.q = icmp sgt i64 %6, 1
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.r = fneg double %i.h
  %i.s = insertelement <2 x double> poison, double %i.r, i64 0
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.046 = phi ptr [ %i.o, %.lr.ph ], [ %i.aa, %bb.b ] ; 2 uses
  %.04145 = phi ptr [ %i.p, %.lr.ph ], [ %i.x, %bb.b ] ; 3 uses
  %.04244 = phi i64 [ 0, %.lr.ph ], [ %i.al, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %.04145, i64 4
  %i.v = load i32, ptr %.04145, align 4, !tbaa !142
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.04145, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.u, align 4, !tbaa !142
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.046, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.w ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !56
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.z ; 2 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !56
  %i.af = load <2 x double>, ptr %.046, align 8, !tbaa !56
  %i.ag = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %i.ae, i64 1
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.t, <2 x double> %i.af, <2 x double> %i.ah) ; 2 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 0
  store double %i.aj, ptr %i.ab, align 8, !tbaa !56
  %i.ak = extractelement <2 x double> %i.ai, i64 1
  store double %i.ak, ptr %i.ad, align 8, !tbaa !56
  %i.al = add nuw nsw i64 %.04244, 2              ; 2 uses
  %i.am = or disjoint i64 %i.al, 1
  %i.an = icmp slt i64 %i.am, %6
  br i1 %i.an, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !741

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.ao = and i64 %6, 9223372036854775806
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.042.lcssa = phi i64 [ 0, %bb.a ], [ %i.ao, %._crit_edge.loopexit ]
  %.041.lcssa = phi ptr [ %i.p, %bb.a ], [ %i.x, %._crit_edge.loopexit ]
  %.0.lcssa = phi ptr [ %i.o, %bb.a ], [ %i.aa, %._crit_edge.loopexit ]
  %i.ap = icmp slt i64 %.042.lcssa, %6
  br i1 %i.ap, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.aq = load double, ptr %.0.lcssa, align 8, !tbaa !56
  %i.ar = load i32, ptr %.041.lcssa, align 4, !tbaa !142
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.as ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !56
  %i.av = fneg double %i.h
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.av, double %i.aq, double %i.au)
  store double %i.aw, ptr %i.at, align 8, !tbaa !56
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal14LU_kernel_bmodILi2EE3runINS_11VectorBlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1EEES6_NS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvlRT_RT0_SC_RlllRT1_ll(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %8, i64 noundef %9) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN5Eigen3MapINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_5SolveINS_14TriangularViewINS0_INS1_IdLi2ELi2ELi0ELi2ELi2EEELi0ENS_11OuterStrideILin1EEEEELj5EEES5_EEEERS5_RKNS_9DenseBaseIT_EE.exit:
  %i.a = add nsw i64 %9, %8                       ; 4 uses
  %i.b = load ptr, ptr %7, align 8, !tbaa !141    ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !208    ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !119    ; 4 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.a
  %i.f = load i32, ptr %i.e, align 4, !tbaa !142
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.g
  %i.i = load double, ptr %i.h, align 8, !tbaa !56 ; 2 uses
  store double %i.i, ptr %i.d, align 8, !tbaa !56
  %i.j = add nsw i64 %i.a, 1                      ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !142
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.m
  %i.o = load double, ptr %i.n, align 8, !tbaa !56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store double %i.o, ptr %i.p, align 8, !tbaa !56
  %i.q = add i64 %5, 1
  %i.r = mul i64 %9, %i.q
  %i.s = load i64, ptr %4, align 8, !tbaa !161
  %i.t = add nsw i64 %i.s, %i.r                   ; 2 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !119    ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !56
  %i.y = fmul double %i.x, %i.i
  %i.z = fsub double %i.o, %i.y
  store double %i.z, ptr %i.p, align 8, !tbaa !56
  %i.aa = add nsw i64 %i.t, %0                    ; 2 uses
  store i64 %i.aa, ptr %4, align 8, !tbaa !161
  %i.ab = add i64 %6, 1                           ; 2 uses
  %i.ac = srem i64 %i.ab, 2
  %i.ad = sub nsw i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.aa ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.d, i64 %0 ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ah = and i64 %i.ag, 7
  %.not.i.i = icmp eq i64 %i.ah, 0
  %i.ai = lshr exact i64 %i.ag, 3
  %i.aj = and i64 %i.ai, 1
  %.0.i.i = select i1 %.not.i.i, i64 %i.aj, i64 2
  %i.ak = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.al = and i64 %i.ak, 7
  %.not.i.i58 = icmp eq i64 %i.al, 0
  %10 = lshr exact i64 %i.ak, 3
  %11 = and i64 %10, 1
  %12 = sub nuw nsw i64 2, %11
  %i.am = select i1 %.not.i.i58, i64 %12, i64 0
  %.frozen = freeze i64 %i.am                     ; 3 uses
  %.urem = add i64 %.frozen, -2
  %.cmp = icmp ult i64 %.frozen, 2
  %i.an = select i1 %.cmp, i64 %.frozen, i64 %.urem
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.0.i.i
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.an ; 8 uses
  %i.aq = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.ar = and i64 %i.aq, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.a, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.a:                                             ; preds = %_ZN5Eigen3MapINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_5SolveINS_14TriangularViewINS0_INS1_IdLi2ELi2ELi0ELi2ELi2EEELi0ENS_11OuterStrideILin1EEEEELj5EEES5_EEEERS5_RKNS_9DenseBaseIT_EE.exit
  %i.as = lshr exact i64 %i.aq, 3
  %i.at = and i64 %i.as, 1
  %i.au = tail call i64 @llvm.smin.i64(i64 %i.at, i64 %6)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a, %_ZN5Eigen3MapINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_5SolveINS_14TriangularViewINS0_INS1_IdLi2ELi2ELi0ELi2ELi2EEELi0ENS_11OuterStrideILin1EEEEELj5EEES5_EEEERS5_RKNS_9DenseBaseIT_EE.exit
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.au, %bb.a ], [ %6, %_ZN5Eigen3MapINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_5SolveINS_14TriangularViewINS0_INS1_IdLi2ELi2ELi0ELi2ELi2EEELi0ENS_11OuterStrideILin1EEEEELj5EEES5_EEEERS5_RKNS_9DenseBaseIT_EE.exit ] ; 8 uses
  %i.av = sub i64 %6, %.0.i.i.i.i.i.i.i.i.i.i.i   ; 3 uses
  %i.aw = sdiv i64 %i.av, 2                       ; 2 uses
  %i.ax = shl nsw i64 %i.aw, 1                    ; 2 uses
  %i.ay = add i64 %i.ax, %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.az = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.az, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.ba = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ap, i8 0, i64 %i.ba, i1 false), !tbaa !56
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.bb = icmp sgt i64 %i.av, 1
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i:             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.bc = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 3
  %scevgep.i = getelementptr i8, ptr %i.ap, i64 %i.bc
  %i.bd = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 2
  %smax.i = tail call i64 @llvm.smax.i64(i64 %i.ay, i64 %i.bd)
  %i.be = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bf = add i64 %smax.i, %i.be
  %i.bg = shl i64 %i.bf, 3
  %i.bh = and i64 %i.bg, -16
  %i.bi = add i64 %i.bh, 16
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.bi, i1 false), !tbaa !131
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.bj = icmp slt i64 %i.ay, %6
  br i1 %i.bj, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.bk = shl i64 %i.aw, 4
  %i.bl = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.bm = getelementptr i8, ptr %i.ap, i64 %i.bk
  %scevgep1.i = getelementptr i8, ptr %i.bm, i64 %i.bl
  %i.bn = sub i64 %i.av, %i.ax
  %i.bo = shl nuw i64 %i.bn, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i, i8 0, i64 %i.bo, i1 false), !tbaa !56
  br label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i
  tail call void @_ZN5Eigen8internal13sparselu_gemmIdEEvlllPKT_lS4_lPS2_l(i64 noundef %6, i64 noundef 1, i64 noundef 2, ptr noundef nonnull %i.ae, i64 noundef %5, ptr noundef nonnull %i.d, i64 noundef 2, ptr noundef nonnull %i.ap, i64 noundef %i.ad)
  %i.bp = load ptr, ptr %7, align 8, !tbaa !141   ; 5 uses
  %i.bq = load ptr, ptr %2, align 8, !tbaa !119   ; 2 uses
  %i.br = load ptr, ptr %1, align 8, !tbaa !208   ; 5 uses
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.a
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !142
  %i.bu = sext i32 %i.bt to i64
  %i.bv = load double, ptr %i.bq, align 8, !tbaa !56
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bu
  store double %i.bv, ptr %i.bw, align 8, !tbaa !56
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.j
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !142
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !56
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bz
  store double %i.cb, ptr %i.cc, align 8, !tbaa !56
  %i.cd = icmp sgt i64 %6, 0
  br i1 %i.cd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit
  %i.ce = add nsw i64 %i.a, 2                     ; 2 uses
  %xtraiter = and i64 %6, 1
  %i.cf = icmp eq i64 %6, 1
  br i1 %i.cf, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %6, 9223372036854775806
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.286 = phi i64 [ 0, %.lr.ph.new ], [ %i.cz, %bb.b ] ; 3 uses
  %.25785 = phi i64 [ %i.ce, %.lr.ph.new ], [ %i.co, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %.25785
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !142
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.286
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !56
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.ci ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !56
  %i.cn = fsub double %i.cm, %i.ck
  store double %i.cn, ptr %i.cl, align 8, !tbaa !56
  %i.co = add nsw i64 %.25785, 2                  ; 2 uses
  %i.cp = getelementptr [4 x i8], ptr %i.bp, i64 %.25785
  %i.cq = getelementptr i8, ptr %i.cp, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !142
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.286
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !56
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.cs ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !56
  %i.cy = fsub double %i.cx, %i.cv
  store double %i.cy, ptr %i.cw, align 8, !tbaa !56
  %i.cz = add nuw nsw i64 %.286, 2                ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !742

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.286.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.cz, %._crit_edge.loopexit.unr-lcssa ]
  %.25785.epil.init = phi i64 [ %i.ce, %.lr.ph ], [ %i.co, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod87 = trunc i64 %6 to i1
  tail call void @llvm.assume(i1 %lcmp.mod87)
  %i.da = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %.25785.epil.init
  %i.db = load i32, ptr %i.da, align 4, !tbaa !142
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.286.epil.init
  %i.de = load double, ptr %i.dd, align 8, !tbaa !56
  %i.df = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.dc ; 2 uses
  %i.dg = load double, ptr %i.df, align 8, !tbaa !56
  %i.dh = fsub double %i.dg, %i.de
  store double %i.dh, ptr %i.df, align 8, !tbaa !56
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal14LU_kernel_bmodILi3EE3runINS_11VectorBlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1EEES6_NS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvlRT_RT0_SC_RlllRT1_ll(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %8, i64 noundef %9) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN5Eigen3MapINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_5SolveINS_14TriangularViewINS0_INS1_IdLi3ELi3ELi0ELi3ELi3EEELi0ENS_11OuterStrideILin1EEEEELj5EEES5_EEEERS5_RKNS_9DenseBaseIT_EE.exit:
  %i.a = add nsw i64 %9, %8                       ; 5 uses
  %i.b = load ptr, ptr %7, align 8, !tbaa !141    ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !208    ; 3 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !119    ; 5 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.a
  %i.f = load i32, ptr %i.e, align 4, !tbaa !142
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.g
  %i.i = load double, ptr %i.h, align 8, !tbaa !56 ; 3 uses
  store double %i.i, ptr %i.d, align 8, !tbaa !56
  %i.j = add nsw i64 %i.a, 1                      ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !142
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.m
  %i.o = load double, ptr %i.n, align 8, !tbaa !56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store double %i.o, ptr %i.p, align 8, !tbaa !56
  %i.q = add nsw i64 %i.a, 2                      ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !142
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.t
  %i.v = load double, ptr %i.u, align 8, !tbaa !56 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store double %i.v, ptr %i.w, align 8, !tbaa !56
  %i.x = add i64 %5, 1
  %i.y = mul i64 %9, %i.x
  %i.z = load i64, ptr %4, align 8, !tbaa !161
  %i.aa = add nsw i64 %i.z, %i.y                  ; 2 uses
  %i.ab = load ptr, ptr %3, align 8, !tbaa !119   ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.aa ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !56
  %i.af = fmul double %i.ae, %i.i
  %i.ag = fsub double %i.o, %i.af                 ; 2 uses
  store double %i.ag, ptr %i.p, align 8, !tbaa !56
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !56
  %i.aj = fmul double %i.i, %i.ai
  %i.ak = getelementptr [8 x i8], ptr %i.ah, i64 %5
  %i.al = load double, ptr %i.ak, align 8, !tbaa !56
  %i.am = fmul double %i.ag, %i.al
  %i.an = fadd double %i.aj, %i.am
  %i.ao = fsub double %i.v, %i.an
  store double %i.ao, ptr %i.w, align 8, !tbaa !56
  %i.ap = add nsw i64 %i.aa, %0                   ; 2 uses
  store i64 %i.ap, ptr %4, align 8, !tbaa !161
  %i.aq = add i64 %6, 1                           ; 2 uses
  %i.ar = srem i64 %i.aq, 2
  %i.as = sub nsw i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ap ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.d, i64 %0 ; 2 uses
  %i.av = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.aw = and i64 %i.av, 7
  %.not.i.i = icmp eq i64 %i.aw, 0
  %i.ax = lshr exact i64 %i.av, 3
  %i.ay = and i64 %i.ax, 1
  %.0.i.i = select i1 %.not.i.i, i64 %i.ay, i64 2
  %i.az = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.ba = and i64 %i.az, 7
  %.not.i.i58 = icmp eq i64 %i.ba, 0
  %10 = lshr exact i64 %i.az, 3
  %11 = and i64 %10, 1
  %12 = sub nuw nsw i64 2, %11
  %i.bb = select i1 %.not.i.i58, i64 %12, i64 0
  %.frozen = freeze i64 %i.bb                     ; 3 uses
  %.urem = add i64 %.frozen, -2
  %.cmp = icmp ult i64 %.frozen, 2
  %i.bc = select i1 %.cmp, i64 %.frozen, i64 %.urem
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.0.i.i
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bc ; 8 uses
  %i.bf = ptrtoint ptr %i.be to i64               ; 2 uses
  %i.bg = and i64 %i.bf, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.a, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.a:                                             ; preds = %_ZN5Eigen3MapINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_5SolveINS_14TriangularViewINS0_INS1_IdLi3ELi3ELi0ELi3ELi3EEELi0ENS_11OuterStrideILin1EEEEELj5EEES5_EEEERS5_RKNS_9DenseBaseIT_EE.exit
  %i.bh = lshr exact i64 %i.bf, 3
  %i.bi = and i64 %i.bh, 1
  %i.bj = tail call i64 @llvm.smin.i64(i64 %i.bi, i64 %6)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a, %_ZN5Eigen3MapINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_5SolveINS_14TriangularViewINS0_INS1_IdLi3ELi3ELi0ELi3ELi3EEELi0ENS_11OuterStrideILin1EEEEELj5EEES5_EEEERS5_RKNS_9DenseBaseIT_EE.exit
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bj, %bb.a ], [ %6, %_ZN5Eigen3MapINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_5SolveINS_14TriangularViewINS0_INS1_IdLi3ELi3ELi0ELi3ELi3EEELi0ENS_11OuterStrideILin1EEEEELj5EEES5_EEEERS5_RKNS_9DenseBaseIT_EE.exit ] ; 8 uses
  %i.bk = sub i64 %6, %.0.i.i.i.i.i.i.i.i.i.i.i   ; 3 uses
  %i.bl = sdiv i64 %i.bk, 2                       ; 2 uses
  %i.bm = shl nsw i64 %i.bl, 1                    ; 2 uses
  %i.bn = add i64 %i.bm, %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bo = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.bp = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.be, i8 0, i64 %i.bp, i1 false), !tbaa !56
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.bq = icmp sgt i64 %i.bk, 1
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i:             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.br = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 3
  %scevgep.i = getelementptr i8, ptr %i.be, i64 %i.br
  %i.bs = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 2
  %smax.i = tail call i64 @llvm.smax.i64(i64 %i.bn, i64 %i.bs)
  %i.bt = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bu = add i64 %smax.i, %i.bt
  %i.bv = shl i64 %i.bu, 3
  %i.bw = and i64 %i.bv, -16
  %i.bx = add i64 %i.bw, 16
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.bx, i1 false), !tbaa !131
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.by = icmp slt i64 %i.bn, %6
  br i1 %i.by, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.bz = shl i64 %i.bl, 4
  %i.ca = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.cb = getelementptr i8, ptr %i.be, i64 %i.bz
  %scevgep1.i = getelementptr i8, ptr %i.cb, i64 %i.ca
  %i.cc = sub i64 %i.bk, %i.bm
  %i.cd = shl nuw i64 %i.cc, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i, i8 0, i64 %i.cd, i1 false), !tbaa !56
  br label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i
  tail call void @_ZN5Eigen8internal13sparselu_gemmIdEEvlllPKT_lS4_lPS2_l(i64 noundef %6, i64 noundef 1, i64 noundef 3, ptr noundef nonnull %i.at, i64 noundef %5, ptr noundef nonnull %i.d, i64 noundef 3, ptr noundef nonnull %i.be, i64 noundef %i.as)
  %i.ce = load ptr, ptr %7, align 8, !tbaa !141   ; 6 uses
  %i.cf = load ptr, ptr %2, align 8, !tbaa !119   ; 3 uses
  %i.cg = load ptr, ptr %1, align 8, !tbaa !208   ; 6 uses
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.a
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !142
  %i.cj = sext i32 %i.ci to i64
  %i.ck = load double, ptr %i.cf, align 8, !tbaa !56
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.cj
  store double %i.ck, ptr %i.cl, align 8, !tbaa !56
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.j
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !142
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !56
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.co
  store double %i.cq, ptr %i.cr, align 8, !tbaa !56
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.q
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !142
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !56
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.cu
  store double %i.cw, ptr %i.cx, align 8, !tbaa !56
  %i.cy = icmp sgt i64 %6, 0
  br i1 %i.cy, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit
  %i.cz = add nsw i64 %i.a, 3                     ; 2 uses
  %xtraiter = and i64 %6, 1
  %i.da = icmp eq i64 %6, 1
  br i1 %i.da, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %6, 9223372036854775806
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.286 = phi i64 [ 0, %.lr.ph.new ], [ %i.du, %bb.b ] ; 3 uses
  %.25785 = phi i64 [ %i.cz, %.lr.ph.new ], [ %i.dj, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.db = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %.25785
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !142
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.286
  %i.df = load double, ptr %i.de, align 8, !tbaa !56
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.dd ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !56
  %i.di = fsub double %i.dh, %i.df
  store double %i.di, ptr %i.dg, align 8, !tbaa !56
  %i.dj = add nsw i64 %.25785, 2                  ; 2 uses
  %i.dk = getelementptr [4 x i8], ptr %i.ce, i64 %.25785
  %i.dl = getelementptr i8, ptr %i.dk, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !142
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.286
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !56
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.dn ; 2 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !56
  %i.dt = fsub double %i.ds, %i.dq
  store double %i.dt, ptr %i.dr, align 8, !tbaa !56
  %i.du = add nuw nsw i64 %.286, 2                ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !743

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.286.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.du, %._crit_edge.loopexit.unr-lcssa ]
  %.25785.epil.init = phi i64 [ %i.cz, %.lr.ph ], [ %i.dj, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod89 = trunc i64 %6 to i1
  tail call void @llvm.assume(i1 %lcmp.mod89)
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %.25785.epil.init
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !142
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.286.epil.init
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !56
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.dx ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !56
  %i.ec = fsub double %i.eb, %i.dz
  store double %i.ec, ptr %i.ea, align 8, !tbaa !56
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal14LU_kernel_bmodILin1EE3runINS_11VectorBlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1EEES6_NS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvlRT_RT0_SC_RlllRT1_ll(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %8, i64 noundef %9) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.Eigen::Map.694", align 8   ; 6 uses
  %11 = alloca %"class.Eigen::TriangularView", align 8 ; 7 uses
  %i.a = add nsw i64 %9, %8                       ; 5 uses
  %i.b = icmp sgt i64 %0, 0                       ; 2 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !119   ; 7 uses
  br i1 %i.b, label %.lr.ph, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %7, align 8, !tbaa !141    ; 5 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !208    ; 5 uses
  %xtraiter = and i64 %0, 3                       ; 3 uses
  %i.e = icmp ult i64 %0, 4
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %0, 9223372036854775804
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.085 = phi i64 [ 0, %.lr.ph.new ], [ %i.ak, %bb.b ] ; 5 uses
  %.05784 = phi i64 [ %i.a, %.lr.ph.new ], [ %i.aj, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.f = getelementptr inbounds [4 x i8], ptr %i.c, i64 %.05784
  %i.g = load i32, ptr %i.f, align 4, !tbaa !142
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.h
  %i.j = load double, ptr %i.i, align 8, !tbaa !56
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.085
  store double %i.j, ptr %i.k, align 8, !tbaa !56
  %i.l = getelementptr [4 x i8], ptr %i.c, i64 %.05784
  %i.m = getelementptr i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !142
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.o
  %i.q = load double, ptr %i.p, align 8, !tbaa !56
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.085
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store double %i.q, ptr %i.s, align 8, !tbaa !56
  %i.t = getelementptr [4 x i8], ptr %i.c, i64 %.05784
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !142
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.w
  %i.y = load double, ptr %i.x, align 8, !tbaa !56
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.085
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store double %i.y, ptr %i.aa, align 8, !tbaa !56
  %i.ab = getelementptr [4 x i8], ptr %i.c, i64 %.05784
  %i.ac = getelementptr i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !142
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load double, ptr %i.af, align 8, !tbaa !56
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.085
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store double %i.ag, ptr %i.ai, align 8, !tbaa !56
  %i.aj = add nsw i64 %.05784, 4                  ; 2 uses
  %i.ak = add nuw nsw i64 %.085, 4                ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %bb.b, !llvm.loop !744

_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph
  %.085.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ak, %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.05784.epil.init = phi i64 [ %i.a, %.lr.ph ], [ %i.aj, %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod98 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod98)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.085.epil = phi i64 [ %.085.epil.init, %.epil.preheader ], [ %i.as, %bb.c ] ; 2 uses
  %.05784.epil = phi i64 [ %.05784.epil.init, %.epil.preheader ], [ %i.ar, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.al = getelementptr inbounds [4 x i8], ptr %i.c, i64 %.05784.epil
  %i.am = load i32, ptr %i.al, align 4, !tbaa !142
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !56
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.085.epil
  store double %i.ap, ptr %i.aq, align 8, !tbaa !56
  %i.ar = add nsw i64 %.05784.epil, 1
  %i.as = add nuw nsw i64 %.085.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i, label %bb.c, !llvm.loop !745

_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %bb.c, %bb.a
  %i.at = add i64 %5, 1
  %i.au = mul i64 %9, %i.at
  %i.av = load i64, ptr %4, align 8, !tbaa !161
  %i.aw = add nsw i64 %i.av, %i.au                ; 3 uses
  store i64 %i.aw, ptr %4, align 8, !tbaa !161
  %i.ax = load ptr, ptr %3, align 8, !tbaa !119   ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  store ptr %.pre, ptr %10, align 8, !tbaa !228
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 %0, ptr %i.az, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  store ptr %i.ay, ptr %11, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %0, ptr %.sroa.480.0..sroa_idx, align 8
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %0, ptr %.sroa.581.0..sroa_idx, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 %5, ptr %i.ba, align 8, !tbaa !139, !alias.scope !751
  %i.bb = icmp eq i64 %0, 0
  br i1 %i.bb, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_5SolveINS_14TriangularViewINS0_INS1_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5EEES5_EEEERS5_RKNS_9DenseBaseIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i
  call void @_ZN5Eigen8internal26triangular_solver_selectorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELi5ELi0ELi1EE3runERKS7_RSB_(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(19) %10)
  %.pre94 = load i64, ptr %4, align 8, !tbaa !161
  %.pre95 = load ptr, ptr %3, align 8, !tbaa !119
  %.pre96 = load ptr, ptr %2, align 8, !tbaa !119
  br label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_5SolveINS_14TriangularViewINS0_INS1_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5EEES5_EEEERS5_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_5SolveINS_14TriangularViewINS0_INS1_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5EEES5_EEEERS5_RKNS_9DenseBaseIT_EE.exit: ; preds = %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i, %bb.d
  %i.bc = phi ptr [ %.pre, %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i ], [ %.pre96, %bb.d ]
  %i.bd = phi ptr [ %i.ax, %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i ], [ %.pre95, %bb.d ]
  %i.be = phi i64 [ %i.aw, %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i ], [ %.pre94, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.bf = add nsw i64 %i.be, %0                   ; 2 uses
  store i64 %i.bf, ptr %4, align 8, !tbaa !161
  %i.bg = add i64 %6, 1                           ; 2 uses
  %i.bh = srem i64 %i.bg, 2
  %i.bi = sub nsw i64 %i.bg, %i.bh
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bf ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %0 ; 2 uses
  %i.bl = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bm = and i64 %i.bl, 7
  %.not.i.i = icmp eq i64 %i.bm, 0
  %i.bn = lshr exact i64 %i.bl, 3
  %i.bo = and i64 %i.bn, 1
  %.0.i.i = select i1 %.not.i.i, i64 %i.bo, i64 2
  %i.bp = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bq = and i64 %i.bp, 7
  %.not.i.i61 = icmp eq i64 %i.bq, 0
  %12 = lshr exact i64 %i.bp, 3
  %13 = and i64 %12, 1
  %14 = sub nuw nsw i64 2, %13
  %i.br = select i1 %.not.i.i61, i64 %14, i64 0
  %.frozen = freeze i64 %i.br                     ; 3 uses
  %.urem = add i64 %.frozen, -2
  %.cmp = icmp ult i64 %.frozen, 2
  %i.bs = select i1 %.cmp, i64 %.frozen, i64 %.urem
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.0.i.i
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.bs ; 8 uses
  %i.bv = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.bw = and i64 %i.bv, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_5SolveINS_14TriangularViewINS0_INS1_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5EEES5_EEEERS5_RKNS_9DenseBaseIT_EE.exit
  %i.bx = lshr exact i64 %i.bv, 3
  %i.by = and i64 %i.bx, 1
  %i.bz = call i64 @llvm.smin.i64(i64 %i.by, i64 %6)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_5SolveINS_14TriangularViewINS0_INS1_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5EEES5_EEEERS5_RKNS_9DenseBaseIT_EE.exit
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bz, %bb.e ], [ %6, %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_5SolveINS_14TriangularViewINS0_INS1_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5EEES5_EEEERS5_RKNS_9DenseBaseIT_EE.exit ] ; 8 uses
  %i.ca = sub i64 %6, %.0.i.i.i.i.i.i.i.i.i.i.i   ; 3 uses
  %i.cb = sdiv i64 %i.ca, 2                       ; 2 uses
  %i.cc = shl nsw i64 %i.cb, 1                    ; 2 uses
  %i.cd = add i64 %i.cc, %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ce = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ce, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.cf = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bu, i8 0, i64 %i.cf, i1 false), !tbaa !56
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.cg = icmp sgt i64 %i.ca, 1
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i:             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ch = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 3
  %scevgep.i = getelementptr i8, ptr %i.bu, i64 %i.ch
  %i.ci = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 2
  %smax.i = call i64 @llvm.smax.i64(i64 %i.cd, i64 %i.ci)
  %i.cj = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ck = add i64 %smax.i, %i.cj
  %i.cl = shl i64 %i.ck, 3
  %i.cm = and i64 %i.cl, -16
  %i.cn = add i64 %i.cm, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.cn, i1 false), !tbaa !131
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.co = icmp slt i64 %i.cd, %6
  br i1 %i.co, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.cp = shl i64 %i.cb, 4
  %i.cq = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.cr = getelementptr i8, ptr %i.bu, i64 %i.cp
  %scevgep1.i = getelementptr i8, ptr %i.cr, i64 %i.cq
  %i.cs = sub i64 %i.ca, %i.cc
  %i.ct = shl nuw i64 %i.cs, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i, i8 0, i64 %i.ct, i1 false), !tbaa !56
  br label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i
  %i.cu = load ptr, ptr %10, align 8, !tbaa !228
  %i.cv = load i64, ptr %i.az, align 8, !tbaa !139
  call void @_ZN5Eigen8internal13sparselu_gemmIdEEvlllPKT_lS4_lPS2_l(i64 noundef %6, i64 noundef 1, i64 noundef %0, ptr noundef %i.bj, i64 noundef %5, ptr noundef %i.cu, i64 noundef %i.cv, ptr noundef %i.bu, i64 noundef %i.bi)
  br i1 %i.b, label %.lr.ph88, label %.preheader

.lr.ph88:                                         ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit
  %i.cw = load ptr, ptr %7, align 8, !tbaa !141   ; 5 uses
  %i.cx = load ptr, ptr %2, align 8, !tbaa !119   ; 5 uses
  %i.cy = load ptr, ptr %1, align 8, !tbaa !208   ; 5 uses
  %xtraiter100 = and i64 %0, 3                    ; 3 uses
  %i.cz = icmp ult i64 %0, 4
  br i1 %i.cz, label %.epil.preheader99, label %.lr.ph88.new

.lr.ph88.new:                                     ; preds = %.lr.ph88
  %unroll_iter105 = and i64 %0, 9223372036854775804
  br label %bb.g

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.g
  %lcmp.mod102.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod102.not, label %.preheader, label %.epil.preheader99

.epil.preheader99:                                ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph88
  %.187.epil.init = phi i64 [ 0, %.lr.ph88 ], [ %i.er, %.preheader.loopexit.unr-lcssa ]
  %.15886.epil.init = phi i64 [ %i.a, %.lr.ph88 ], [ %i.ei, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod104 = icmp ne i64 %xtraiter100, 0
  call void @llvm.assume(i1 %lcmp.mod104)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader99
  %.187.epil = phi i64 [ %.187.epil.init, %.epil.preheader99 ], [ %i.dh, %bb.f ] ; 2 uses
  %.15886.epil = phi i64 [ %.15886.epil.init, %.epil.preheader99 ], [ %i.da, %bb.f ] ; 2 uses
  %epil.iter101 = phi i64 [ 0, %.epil.preheader99 ], [ %epil.iter101.next, %bb.f ]
  %i.da = add nsw i64 %.15886.epil, 1             ; 2 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %.15886.epil
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !142
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.187.epil
  %i.df = load double, ptr %i.de, align 8, !tbaa !56
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.dd
  store double %i.df, ptr %i.dg, align 8, !tbaa !56
  %i.dh = add nuw nsw i64 %.187.epil, 1
  %epil.iter101.next = add i64 %epil.iter101, 1   ; 2 uses
  %epil.iter101.cmp.not = icmp eq i64 %epil.iter101.next, %xtraiter100
  br i1 %epil.iter101.cmp.not, label %.preheader, label %bb.f, !llvm.loop !748

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.f, %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit
  %.158.lcssa = phi i64 [ %i.a, %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit ], [ %i.ei, %.preheader.loopexit.unr-lcssa ], [ %i.da, %bb.f ] ; 2 uses
  %i.di = icmp sgt i64 %6, 0
  br i1 %i.di, label %.lr.ph91, label %._crit_edge

.lr.ph91:                                         ; preds = %.preheader
  %i.dj = load ptr, ptr %7, align 8, !tbaa !141   ; 3 uses
  %i.dk = load ptr, ptr %1, align 8, !tbaa !208   ; 3 uses
  %xtraiter108 = and i64 %6, 1
  %i.dl = icmp eq i64 %6, 1
  br i1 %i.dl, label %.epil.preheader107, label %.lr.ph91.new

.lr.ph91.new:                                     ; preds = %.lr.ph91
  %unroll_iter112 = and i64 %6, 9223372036854775806
  br label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph88.new
  %.187 = phi i64 [ 0, %.lr.ph88.new ], [ %i.er, %bb.g ] ; 5 uses
  %.15886 = phi i64 [ %i.a, %.lr.ph88.new ], [ %i.ei, %bb.g ] ; 5 uses
  %niter106 = phi i64 [ 0, %.lr.ph88.new ], [ %niter106.next.3, %bb.g ]
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %.15886
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !142
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.187
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !56
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.do
  store double %i.dq, ptr %i.dr, align 8, !tbaa !56
  %i.ds = getelementptr [4 x i8], ptr %i.cw, i64 %.15886
  %i.dt = getelementptr i8, ptr %i.ds, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !142
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.187
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !56
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.dv
  store double %i.dy, ptr %i.dz, align 8, !tbaa !56
  %i.ea = getelementptr [4 x i8], ptr %i.cw, i64 %.15886
  %i.eb = getelementptr i8, ptr %i.ea, i64 8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !142
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.187
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !56
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.ed
  store double %i.eg, ptr %i.eh, align 8, !tbaa !56
  %i.ei = add nsw i64 %.15886, 4                  ; 3 uses
  %i.ej = getelementptr [4 x i8], ptr %i.cw, i64 %.15886
  %i.ek = getelementptr i8, ptr %i.ej, i64 12
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !142
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.187
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !56
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.em
  store double %i.ep, ptr %i.eq, align 8, !tbaa !56
  %i.er = add nuw nsw i64 %.187, 4                ; 2 uses
  %niter106.next.3 = add nuw nsw i64 %niter106, 4 ; 2 uses
  %niter106.ncmp.3 = icmp eq i64 %niter106.next.3, %unroll_iter105
  br i1 %niter106.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %bb.g, !llvm.loop !749

bb.h:                                             ; preds = %bb.h, %.lr.ph91.new
  %.290 = phi i64 [ 0, %.lr.ph91.new ], [ %i.fl, %bb.h ] ; 3 uses
  %.25989 = phi i64 [ %.158.lcssa, %.lr.ph91.new ], [ %i.fa, %bb.h ] ; 3 uses
  %niter113 = phi i64 [ 0, %.lr.ph91.new ], [ %niter113.next.1, %bb.h ]
  %i.es = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %.25989
  %i.et = load i32, ptr %i.es, align 4, !tbaa !142
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.290
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !56
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.eu ; 2 uses
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !56
  %i.ez = fsub double %i.ey, %i.ew
  store double %i.ez, ptr %i.ex, align 8, !tbaa !56
  %i.fa = add nsw i64 %.25989, 2                  ; 2 uses
  %i.fb = getelementptr [4 x i8], ptr %i.dj, i64 %.25989
  %i.fc = getelementptr i8, ptr %i.fb, i64 4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !142
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.290
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !56
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.fe ; 2 uses
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !56
  %i.fk = fsub double %i.fj, %i.fh
  store double %i.fk, ptr %i.fi, align 8, !tbaa !56
  %i.fl = add nuw nsw i64 %.290, 2                ; 2 uses
  %niter113.next.1 = add nuw nsw i64 %niter113, 2 ; 2 uses
  %niter113.ncmp.1 = icmp eq i64 %niter113.next.1, %unroll_iter112
  br i1 %niter113.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !750

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal14LU_kernel_bmodILi1EE3runINS_3RefINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11InnerStrideILi1EEEEES6_NS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvlRT_RT0_SE_RlllRT1_ll:bb.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.046 = phi ptr [ %i.o, %.lr.ph ], [ %i.aa, %bb.b ] ; 2 uses
  %.04145 = phi ptr [ %i.p, %.lr.ph ], [ %i.x, %bb.b ] ; 3 uses
  %.04244 = phi i64 [ 0, %.lr.ph ], [ %i.al, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %.04145, i64 4
  %i.v = load i32, ptr %.04145, align 4, !tbaa !142
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.04145, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.u, align 4, !tbaa !142
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.046, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.w ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !56
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.z ; 2 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !56
  %i.af = load <2 x double>, ptr %.046, align 8, !tbaa !56
  %i.ag = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %i.ae, i64 1
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.t, <2 x double> %i.af, <2 x double> %i.ah) ; 2 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 0
  store double %i.aj, ptr %i.ab, align 8, !tbaa !56
  %i.ak = extractelement <2 x double> %i.ai, i64 1
  store double %i.ak, ptr %i.ad, align 8, !tbaa !56
  %i.al = add nuw nsw i64 %.04244, 2              ; 2 uses
  %i.am = or disjoint i64 %i.al, 1
  %i.an = icmp slt i64 %i.am, %6
  br i1 %i.an, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !938

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.ao = and i64 %6, 9223372036854775806
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.042.lcssa = phi i64 [ 0, %bb.a ], [ %i.ao, %._crit_edge.loopexit ]
  %.041.lcssa = phi ptr [ %i.p, %bb.a ], [ %i.x, %._crit_edge.loopexit ]
  %.0.lcssa = phi ptr [ %i.o, %bb.a ], [ %i.aa, %._crit_edge.loopexit ]
  %i.ap = icmp slt i64 %.042.lcssa, %6
  br i1 %i.ap, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.aq = load double, ptr %.0.lcssa, align 8, !tbaa !56
  %i.ar = load i32, ptr %.041.lcssa, align 4, !tbaa !142
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.as ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !56
  %i.av = fneg double %i.h
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.av, double %i.aq, double %i.au)
  store double %i.aw, ptr %i.at, align 8, !tbaa !56
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal14LU_kernel_bmodILin1EE3runINS_3RefINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11InnerStrideILi1EEEEES6_NS5_IiLin1ELi1ELi0ELin1ELi1EEEEEvlRT_RT0_SE_RlllRT1_ll(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(19) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %8, i64 noundef %9) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.Eigen::Map.694", align 8   ; 6 uses
  %11 = alloca %"class.Eigen::TriangularView", align 8 ; 7 uses
  %i.a = add nsw i64 %9, %8                       ; 5 uses
  %i.b = icmp sgt i64 %0, 0                       ; 2 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !119   ; 7 uses
  br i1 %i.b, label %.lr.ph, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %7, align 8, !tbaa !141    ; 5 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !184    ; 5 uses
  %xtraiter = and i64 %0, 3                       ; 3 uses
  %i.e = icmp ult i64 %0, 4
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %0, 9223372036854775804
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.085 = phi i64 [ 0, %.lr.ph.new ], [ %i.ak, %bb.b ] ; 5 uses
  %.05784 = phi i64 [ %i.a, %.lr.ph.new ], [ %i.aj, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.f = getelementptr inbounds [4 x i8], ptr %i.c, i64 %.05784
  %i.g = load i32, ptr %i.f, align 4, !tbaa !142
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.h
  %i.j = load double, ptr %i.i, align 8, !tbaa !56
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.085
  store double %i.j, ptr %i.k, align 8, !tbaa !56
  %i.l = getelementptr [4 x i8], ptr %i.c, i64 %.05784
  %i.m = getelementptr i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !142
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.o
  %i.q = load double, ptr %i.p, align 8, !tbaa !56
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.085
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store double %i.q, ptr %i.s, align 8, !tbaa !56
  %i.t = getelementptr [4 x i8], ptr %i.c, i64 %.05784
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !142
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.w
  %i.y = load double, ptr %i.x, align 8, !tbaa !56
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.085
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store double %i.y, ptr %i.aa, align 8, !tbaa !56
  %i.ab = getelementptr [4 x i8], ptr %i.c, i64 %.05784
  %i.ac = getelementptr i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !142
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load double, ptr %i.af, align 8, !tbaa !56
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.085
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store double %i.ag, ptr %i.ai, align 8, !tbaa !56
  %i.aj = add nsw i64 %.05784, 4                  ; 2 uses
  %i.ak = add nuw nsw i64 %.085, 4                ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %bb.b, !llvm.loop !939

_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph
  %.085.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ak, %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.05784.epil.init = phi i64 [ %i.a, %.lr.ph ], [ %i.aj, %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod98 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod98)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.085.epil = phi i64 [ %.085.epil.init, %.epil.preheader ], [ %i.as, %bb.c ] ; 2 uses
  %.05784.epil = phi i64 [ %.05784.epil.init, %.epil.preheader ], [ %i.ar, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.al = getelementptr inbounds [4 x i8], ptr %i.c, i64 %.05784.epil
  %i.am = load i32, ptr %i.al, align 4, !tbaa !142
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !56
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.085.epil
  store double %i.ap, ptr %i.aq, align 8, !tbaa !56
  %i.ar = add nsw i64 %.05784.epil, 1
  %i.as = add nuw nsw i64 %.085.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i, label %bb.c, !llvm.loop !940

_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %bb.c, %bb.a
  %i.at = add i64 %5, 1
  %i.au = mul i64 %9, %i.at
  %i.av = load i64, ptr %4, align 8, !tbaa !161
  %i.aw = add nsw i64 %i.av, %i.au                ; 3 uses
  store i64 %i.aw, ptr %4, align 8, !tbaa !161
  %i.ax = load ptr, ptr %3, align 8, !tbaa !119   ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  store ptr %.pre, ptr %10, align 8, !tbaa !228
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 %0, ptr %i.az, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  store ptr %i.ay, ptr %11, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %0, ptr %.sroa.480.0..sroa_idx, align 8
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %0, ptr %.sroa.581.0..sroa_idx, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 %5, ptr %i.ba, align 8, !tbaa !139, !alias.scope !946
  %i.bb = icmp eq i64 %0, 0
  br i1 %i.bb, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_5SolveINS_14TriangularViewINS0_INS1_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5EEES5_EEEERS5_RKNS_9DenseBaseIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i
  call void @_ZN5Eigen8internal26triangular_solver_selectorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELi5ELi0ELi1EE3runERKS7_RSB_(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(19) %10)
  %.pre94 = load i64, ptr %4, align 8, !tbaa !161
  %.pre95 = load ptr, ptr %3, align 8, !tbaa !119
  %.pre96 = load ptr, ptr %2, align 8, !tbaa !119
  br label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_5SolveINS_14TriangularViewINS0_INS1_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5EEES5_EEEERS5_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_5SolveINS_14TriangularViewINS0_INS1_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5EEES5_EEEERS5_RKNS_9DenseBaseIT_EE.exit: ; preds = %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i, %bb.d
  %i.bc = phi ptr [ %.pre, %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i ], [ %.pre96, %bb.d ]
  %i.bd = phi ptr [ %i.ax, %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i ], [ %.pre95, %bb.d ]
  %i.be = phi i64 [ %i.aw, %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i ], [ %.pre94, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.bf = add nsw i64 %i.be, %0                   ; 2 uses
  store i64 %i.bf, ptr %4, align 8, !tbaa !161
  %i.bg = add i64 %6, 1                           ; 2 uses
  %i.bh = srem i64 %i.bg, 2
  %i.bi = sub nsw i64 %i.bg, %i.bh
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bf ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %0 ; 2 uses
  %i.bl = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bm = and i64 %i.bl, 7
  %.not.i.i = icmp eq i64 %i.bm, 0
  %i.bn = lshr exact i64 %i.bl, 3
  %i.bo = and i64 %i.bn, 1
  %.0.i.i = select i1 %.not.i.i, i64 %i.bo, i64 2
  %i.bp = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bq = and i64 %i.bp, 7
  %.not.i.i61 = icmp eq i64 %i.bq, 0
  %12 = lshr exact i64 %i.bp, 3
  %13 = and i64 %12, 1
  %14 = sub nuw nsw i64 2, %13
  %i.br = select i1 %.not.i.i61, i64 %14, i64 0
  %.frozen = freeze i64 %i.br                     ; 3 uses
  %.urem = add i64 %.frozen, -2
  %.cmp = icmp ult i64 %.frozen, 2
  %i.bs = select i1 %.cmp, i64 %.frozen, i64 %.urem
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.0.i.i
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.bs ; 8 uses
  %i.bv = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.bw = and i64 %i.bv, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_5SolveINS_14TriangularViewINS0_INS1_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5EEES5_EEEERS5_RKNS_9DenseBaseIT_EE.exit
  %i.bx = lshr exact i64 %i.bv, 3
  %i.by = and i64 %i.bx, 1
  %i.bz = call i64 @llvm.smin.i64(i64 %i.by, i64 %6)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_5SolveINS_14TriangularViewINS0_INS1_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5EEES5_EEEERS5_RKNS_9DenseBaseIT_EE.exit
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bz, %bb.e ], [ %6, %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_5SolveINS_14TriangularViewINS0_INS1_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5EEES5_EEEERS5_RKNS_9DenseBaseIT_EE.exit ] ; 8 uses
  %i.ca = sub i64 %6, %.0.i.i.i.i.i.i.i.i.i.i.i   ; 3 uses
  %i.cb = sdiv i64 %i.ca, 2                       ; 2 uses
  %i.cc = shl nsw i64 %i.cb, 1                    ; 2 uses
  %i.cd = add i64 %i.cc, %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ce = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ce, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.cf = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bu, i8 0, i64 %i.cf, i1 false), !tbaa !56
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.cg = icmp sgt i64 %i.ca, 1
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i:             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ch = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 3
  %scevgep.i = getelementptr i8, ptr %i.bu, i64 %i.ch
  %i.ci = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 2
  %smax.i = call i64 @llvm.smax.i64(i64 %i.cd, i64 %i.ci)
  %i.cj = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ck = add i64 %smax.i, %i.cj
  %i.cl = shl i64 %i.ck, 3
  %i.cm = and i64 %i.cl, -16
  %i.cn = add i64 %i.cm, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.cn, i1 false), !tbaa !131
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.co = icmp slt i64 %i.cd, %6
  br i1 %i.co, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.cp = shl i64 %i.cb, 4
  %i.cq = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.cr = getelementptr i8, ptr %i.bu, i64 %i.cp
  %scevgep1.i = getelementptr i8, ptr %i.cr, i64 %i.cq
  %i.cs = sub i64 %i.ca, %i.cc
  %i.ct = shl nuw i64 %i.cs, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i, i8 0, i64 %i.ct, i1 false), !tbaa !56
  br label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i
  %i.cu = load ptr, ptr %10, align 8, !tbaa !228
  %i.cv = load i64, ptr %i.az, align 8, !tbaa !139
  call void @_ZN5Eigen8internal13sparselu_gemmIdEEvlllPKT_lS4_lPS2_l(i64 noundef %6, i64 noundef 1, i64 noundef %0, ptr noundef %i.bj, i64 noundef %5, ptr noundef %i.cu, i64 noundef %i.cv, ptr noundef %i.bu, i64 noundef %i.bi)
  br i1 %i.b, label %.lr.ph88, label %.preheader

.lr.ph88:                                         ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit
  %i.cw = load ptr, ptr %7, align 8, !tbaa !141   ; 5 uses
  %i.cx = load ptr, ptr %2, align 8, !tbaa !119   ; 5 uses
  %i.cy = load ptr, ptr %1, align 8, !tbaa !184   ; 5 uses
  %xtraiter100 = and i64 %0, 3                    ; 3 uses
  %i.cz = icmp ult i64 %0, 4
  br i1 %i.cz, label %.epil.preheader99, label %.lr.ph88.new

.lr.ph88.new:                                     ; preds = %.lr.ph88
  %unroll_iter105 = and i64 %0, 9223372036854775804
  br label %bb.g

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.g
  %lcmp.mod102.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod102.not, label %.preheader, label %.epil.preheader99

.epil.preheader99:                                ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph88
  %.187.epil.init = phi i64 [ 0, %.lr.ph88 ], [ %i.er, %.preheader.loopexit.unr-lcssa ]
  %.15886.epil.init = phi i64 [ %i.a, %.lr.ph88 ], [ %i.ei, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod104 = icmp ne i64 %xtraiter100, 0
  call void @llvm.assume(i1 %lcmp.mod104)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader99
  %.187.epil = phi i64 [ %.187.epil.init, %.epil.preheader99 ], [ %i.dh, %bb.f ] ; 2 uses
  %.15886.epil = phi i64 [ %.15886.epil.init, %.epil.preheader99 ], [ %i.da, %bb.f ] ; 2 uses
  %epil.iter101 = phi i64 [ 0, %.epil.preheader99 ], [ %epil.iter101.next, %bb.f ]
  %i.da = add nsw i64 %.15886.epil, 1             ; 2 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %.15886.epil
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !142
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.187.epil
  %i.df = load double, ptr %i.de, align 8, !tbaa !56
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.dd
  store double %i.df, ptr %i.dg, align 8, !tbaa !56
  %i.dh = add nuw nsw i64 %.187.epil, 1
  %epil.iter101.next = add i64 %epil.iter101, 1   ; 2 uses
  %epil.iter101.cmp.not = icmp eq i64 %epil.iter101.next, %xtraiter100
  br i1 %epil.iter101.cmp.not, label %.preheader, label %bb.f, !llvm.loop !943

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.f, %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit
  %.158.lcssa = phi i64 [ %i.a, %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_11OuterStrideILin1EEEEEE7setZeroEv.exit ], [ %i.ei, %.preheader.loopexit.unr-lcssa ], [ %i.da, %bb.f ] ; 2 uses
  %i.di = icmp sgt i64 %6, 0
  br i1 %i.di, label %.lr.ph91, label %._crit_edge

.lr.ph91:                                         ; preds = %.preheader
  %i.dj = load ptr, ptr %7, align 8, !tbaa !141   ; 3 uses
  %i.dk = load ptr, ptr %1, align 8, !tbaa !184   ; 3 uses
  %xtraiter108 = and i64 %6, 1
  %i.dl = icmp eq i64 %6, 1
  br i1 %i.dl, label %.epil.preheader107, label %.lr.ph91.new

.lr.ph91.new:                                     ; preds = %.lr.ph91
  %unroll_iter112 = and i64 %6, 9223372036854775806
  br label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph88.new
  %.187 = phi i64 [ 0, %.lr.ph88.new ], [ %i.er, %bb.g ] ; 5 uses
  %.15886 = phi i64 [ %i.a, %.lr.ph88.new ], [ %i.ei, %bb.g ] ; 5 uses
  %niter106 = phi i64 [ 0, %.lr.ph88.new ], [ %niter106.next.3, %bb.g ]
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %.15886
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !142
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.187
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !56
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.do
  store double %i.dq, ptr %i.dr, align 8, !tbaa !56
  %i.ds = getelementptr [4 x i8], ptr %i.cw, i64 %.15886
  %i.dt = getelementptr i8, ptr %i.ds, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !142
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.187
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !56
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.dv
  store double %i.dy, ptr %i.dz, align 8, !tbaa !56
  %i.ea = getelementptr [4 x i8], ptr %i.cw, i64 %.15886
  %i.eb = getelementptr i8, ptr %i.ea, i64 8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !142
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.187
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !56
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.ed
  store double %i.eg, ptr %i.eh, align 8, !tbaa !56
  %i.ei = add nsw i64 %.15886, 4                  ; 3 uses
  %i.ej = getelementptr [4 x i8], ptr %i.cw, i64 %.15886
  %i.ek = getelementptr i8, ptr %i.ej, i64 12
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !142
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.187
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !56
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.em
  store double %i.ep, ptr %i.eq, align 8, !tbaa !56
  %i.er = add nuw nsw i64 %.187, 4                ; 2 uses
  %niter106.next.3 = add nuw nsw i64 %niter106, 4 ; 2 uses
  %niter106.ncmp.3 = icmp eq i64 %niter106.next.3, %unroll_iter105
  br i1 %niter106.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %bb.g, !llvm.loop !944

bb.h:                                             ; preds = %bb.h, %.lr.ph91.new
  %.290 = phi i64 [ 0, %.lr.ph91.new ], [ %i.fl, %bb.h ] ; 3 uses
  %.25989 = phi i64 [ %.158.lcssa, %.lr.ph91.new ], [ %i.fa, %bb.h ] ; 3 uses
  %niter113 = phi i64 [ 0, %.lr.ph91.new ], [ %niter113.next.1, %bb.h ]
  %i.es = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %.25989
  %i.et = load i32, ptr %i.es, align 4, !tbaa !142
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.290
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !56
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.eu ; 2 uses
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !56
  %i.ez = fsub double %i.ey, %i.ew
  store double %i.ez, ptr %i.ex, align 8, !tbaa !56
  %i.fa = add nsw i64 %.25989, 2                  ; 2 uses
  %i.fb = getelementptr [4 x i8], ptr %i.dj, i64 %.25989
  %i.fc = getelementptr i8, ptr %i.fb, i64 4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !142
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.290
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !56
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.fe ; 2 uses
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !56
  %i.fk = fsub double %i.fj, %i.fh
  store double %i.fk, ptr %i.fi, align 8, !tbaa !56
  %i.fl = add nuw nsw i64 %.290, 2                ; 2 uses
  %niter113.next.1 = add nuw nsw i64 %niter113, 2 ; 2 uses
  %niter113.ncmp.1 = icmp eq i64 %niter113.next.1, %unroll_iter112
  br i1 %niter113.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !945

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
end_hunk_2
