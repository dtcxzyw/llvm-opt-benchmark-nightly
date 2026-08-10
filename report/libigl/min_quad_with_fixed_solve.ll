inline.NumInlined: 8736
inline.NumDeleted: 3468
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 151
loop-unroll.NumUnrolled: 152
begin_hunk_0_@_ZNK5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE11_solve_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS_10MatrixBaseIT_EERNSC_IT0_EE:bb.a
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.f
  %i.y = icmp slt i64 %i.w, %i.s
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS1_IdLin1ELin1ELi0ELin1ELin1EEEEERS2_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.z = shl nsw i64 %i.v, 1
  %i.aa = sub i64 %i.s, %i.z                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.aa, 8
  %i.ab = sub i64 %i.l, %i.u
  %diff.check = icmp ugt i64 %i.ab, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader272, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aa, -4                      ; 3 uses
  %i.ac = add i64 %i.w, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = add i64 %i.w, %index                    ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ad ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <2 x double>, ptr %i.af, align 8, !tbaa !64
  %wide.load129 = load <2 x double>, ptr %i.ag, align 8, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <2 x double> %wide.load, ptr %i.ae, align 8, !tbaa !64
  store <2 x double> %wide.load129, ptr %i.ah, align 8, !tbaa !64
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !565

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS1_IdLin1ELin1ELi0ELin1ELin1EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader272

.lr.ph.i.i.i.i.i.i.i.i.preheader272:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ] ; 4 uses
  %i.aj = sub i64 %i.s, %.05.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.aj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader272, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader272 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader272 ]
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.al = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.am = load double, ptr %i.al, align 8, !tbaa !64
  store double %i.am, ptr %i.ak, align 8, !tbaa !64
  %i.an = add nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !566

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader272
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader272 ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.ao = sub i64 %.05.i.i.i.i.i.i.i.i.ph, %i.s
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS1_IdLin1ELin1ELi0ELin1ELin1EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.05.i.i.i.i.i.i.i.i
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.05.i.i.i.i.i.i.i.i
  %i.as = load double, ptr %i.ar, align 8, !tbaa !64
  store double %i.as, ptr %i.aq, align 8, !tbaa !64
  %i.at = add nsw i64 %.05.i.i.i.i.i.i.i.i, 1     ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.at
  %i.av = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.at
  %i.aw = load double, ptr %i.av, align 8, !tbaa !64
  store double %i.aw, ptr %i.au, align 8, !tbaa !64
  %i.ax = add nsw i64 %.05.i.i.i.i.i.i.i.i, 2     ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ax
  %i.az = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ax
  %i.ba = load double, ptr %i.az, align 8, !tbaa !64
  store double %i.ba, ptr %i.ay, align 8, !tbaa !64
  %i.bb = add nsw i64 %.05.i.i.i.i.i.i.i.i, 3     ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.bb
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bb
  %i.be = load double, ptr %i.bd, align 8, !tbaa !64
  store double %i.be, ptr %i.bc, align 8, !tbaa !64
  %i.bf = add nsw i64 %.05.i.i.i.i.i.i.i.i, 4     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bf, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS1_IdLin1ELin1ELi0ELin1ELin1EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !567

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.f ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.011.i.i.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.011.i.i.i.i.i.i.i
  %i.bi = load <2 x double>, ptr %i.bh, align 16, !tbaa !91
  store <2 x double> %i.bi, ptr %i.bg, align 16, !tbaa !91
  %i.bj = add nuw nsw i64 %.011.i.i.i.i.i.i.i, 2  ; 2 uses
  %i.bk = icmp slt i64 %i.bj, %i.w
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !568

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS1_IdLin1ELin1ELi0ELin1ELin1EEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEENS1_IdLin1ELin1ELi0ELin1ELin1EEELi2EEEEERS2_RKNS_9DenseBaseIT_EE.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !153 ; 13 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS1_IdLin1ELin1ELi0ELin1ELin1EEEEERS2_RKNS_9DenseBaseIT_EE.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !152 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !148
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !63
  %i.bv = load i32, ptr %i.bq, align 4, !tbaa !63
  %i.bw = sub nsw i32 %i.bu, %i.bv
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.h:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS1_IdLin1ELin1ELi0ELin1ELin1EEEEERS2_RKNS_9DenseBaseIT_EE.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !148 ; 11 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.cb = and i64 %i.ca, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.j, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.cc = lshr exact i64 %i.ca, 2
  %i.cd = sub nsw i64 0, %i.cc
  %i.ce = and i64 %i.cd, 3
  %i.cf = tail call i64 @llvm.smin.i64(i64 %i.ce, i64 %i.by)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.cf, %bb.j ], [ %i.by, %bb.i ] ; 12 uses
  %i.cg = sub nsw i64 %i.by, %.0.i.i.i.i.i.i.i.i  ; 5 uses
  %i.ch = sdiv i64 %i.cg, 8
  %i.ci = shl nsw i64 %i.ch, 3                    ; 2 uses
  %i.cj = sdiv i64 %i.cg, 4                       ; 2 uses
  %i.ck = shl nsw i64 %i.cj, 2                    ; 2 uses
  %i.cl = add nsw i64 %i.ci, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.cm = add nsw i64 %i.ck, %.0.i.i.i.i.i.i.i.i  ; 4 uses
  %.off.i.i.i.i = add i64 %i.cg, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.cn = getelementptr [4 x i8], ptr %i.bn, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.co = load <2 x i64>, ptr %i.cn, align 1, !tbaa !91 ; 2 uses
  %i.cp = icmp sgt i64 %i.cg, 7
  br i1 %i.cp, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cq = getelementptr i8, ptr %i.cn, i64 16
  %i.cr = load <4 x i32>, ptr %i.cq, align 1, !tbaa !91 ; 2 uses
  %i.cs = bitcast <2 x i64> %i.co to <4 x i32>    ; 2 uses
  %i.ct = icmp samesign ugt i64 %i.cg, 15
  br i1 %i.ct, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.l
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.l
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.cr, %bb.l ], [ %i.de, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.cs, %bb.l ], [ %i.da, %.lr.ph.i.i.i.i ]
  %i.cu = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.cv = bitcast <4 x i32> %i.cu to <2 x i64>
  %i.cw = icmp sgt i64 %i.ck, %i.ci
  br i1 %i.cw, label %bb.m, label %bb.n

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.da, %.lr.ph.i.i.i.i ], [ %i.cs, %.lr.ph.preheader.i.i.i.i ]
  %i.cx = phi <4 x i32> [ %i.de, %.lr.ph.i.i.i.i ], [ %i.cr, %.lr.ph.preheader.i.i.i.i ]
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %.05780.i.i.i.i
  %i.cz = load <4 x i32>, ptr %i.cy, align 1, !tbaa !91
  %i.da = add <4 x i32> %i.cz, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.db = getelementptr [4 x i8], ptr %i.bn, i64 %.057.in79.i.i.i.i
  %i.dc = getelementptr i8, ptr %i.db, i64 48
  %i.dd = load <4 x i32>, ptr %i.dc, align 1, !tbaa !91
  %i.de = add <4 x i32> %i.dd, %i.cx              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.df = icmp slt i64 %.057.i.i.i.i, %i.cl
  br i1 %i.df, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !569

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.cl
  %i.dh = load <4 x i32>, ptr %i.dg, align 1, !tbaa !91
  %i.di = add <4 x i32> %i.dh, %i.cu
  %i.dj = bitcast <4 x i32> %i.di to <2 x i64>
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i, %bb.k
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.co, %bb.k ], [ %i.dj, %bb.m ], [ %i.cv, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.dk = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.dl = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.dm = shufflevector <4 x i32> %i.dl, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.dn = add <4 x i32> %i.dm, %i.dk              ; 2 uses
  %shift = shufflevector <4 x i32> %i.dn, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.dn, %shift
  %5 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dl) ; 2 uses
  %i.do = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.do, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.n
  %min.iters.check131 = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check131, label %.lr.ph85.i.i.i.i.preheader266, label %vector.ph132

vector.ph132:                                     ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec133 = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.dp = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph132
  %index135 = phi i64 [ 0, %vector.ph132 ], [ %index.next139, %vector.body134 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.dp, %vector.ph132 ], [ %i.ds, %vector.body134 ]
  %vec.phi136 = phi <4 x i32> [ zeroinitializer, %vector.ph132 ], [ %i.dt, %vector.body134 ]
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index135 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load137 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !63
  %wide.load138 = load <4 x i32>, ptr %i.dr, align 4, !tbaa !63
  %i.ds = add <4 x i32> %wide.load137, %vec.phi   ; 2 uses
  %i.dt = add <4 x i32> %wide.load138, %vec.phi136 ; 2 uses
  %index.next139 = add nuw i64 %index135, 8       ; 2 uses
  %i.du = icmp eq i64 %index.next139, %n.vec133
  br i1 %i.du, label %middle.block140, label %vector.body134, !llvm.loop !570

middle.block140:                                  ; preds = %vector.body134
  %bin.rdx = add <4 x i32> %i.dt, %i.ds
  %i.dv = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n141 = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec133
  br i1 %cmp.n141, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader266

.lr.ph85.i.i.i.i.preheader266:                    ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block140
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec133, %middle.block140 ]
  %.07582.i.i.i.i.ph = phi i32 [ %5, %.lr.ph85.i.i.i.i.preheader ], [ %i.dv, %middle.block140 ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block140, %bb.n
  %.075.lcssa.i.i.i.i = phi i32 [ %5, %bb.n ], [ %i.dv, %middle.block140 ], [ %i.el, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.dw = icmp slt i64 %i.cm, %i.by
  br i1 %i.dw, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.dx = shl nsw i64 %i.cj, 2
  %i.dy = add i64 %.0.i.i.i.i.i.i.i.i, %i.dx
  %i.dz = sub i64 %i.by, %i.dy                    ; 3 uses
  %min.iters.check144 = icmp ult i64 %i.dz, 8
  br i1 %min.iters.check144, label %.lr.ph89.i.i.i.i.preheader261, label %vector.ph145

vector.ph145:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec146 = and i64 %i.dz, -8                   ; 3 uses
  %i.ea = add i64 %i.cm, %n.vec146
  %i.eb = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.ec = getelementptr [4 x i8], ptr %i.bn, i64 %i.cm
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph145
  %index148 = phi i64 [ 0, %vector.ph145 ], [ %index.next153, %vector.body147 ] ; 2 uses
  %vec.phi149 = phi <4 x i32> [ %i.eb, %vector.ph145 ], [ %i.ef, %vector.body147 ]
  %vec.phi150 = phi <4 x i32> [ zeroinitializer, %vector.ph145 ], [ %i.eg, %vector.body147 ]
  %i.ed = getelementptr [4 x i8], ptr %i.ec, i64 %index148 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %wide.load151 = load <4 x i32>, ptr %i.ed, align 4, !tbaa !63
  %wide.load152 = load <4 x i32>, ptr %i.ee, align 4, !tbaa !63
  %i.ef = add <4 x i32> %wide.load151, %vec.phi149 ; 2 uses
  %i.eg = add <4 x i32> %wide.load152, %vec.phi150 ; 2 uses
  %index.next153 = add nuw i64 %index148, 8       ; 2 uses
  %i.eh = icmp eq i64 %index.next153, %n.vec146
  br i1 %i.eh, label %middle.block154, label %vector.body147, !llvm.loop !571

middle.block154:                                  ; preds = %vector.body147
  %bin.rdx155 = add <4 x i32> %i.eg, %i.ef
  %i.ei = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx155) ; 2 uses
  %cmp.n156 = icmp eq i64 %i.dz, %n.vec146
  br i1 %cmp.n156, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph89.i.i.i.i.preheader261

.lr.ph89.i.i.i.i.preheader261:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block154
  %.05588.i.i.i.i.ph = phi i64 [ %i.cm, %.lr.ph89.i.i.i.i.preheader ], [ %i.ea, %middle.block154 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.ei, %middle.block154 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader266, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.em, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader266 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.el, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader266 ]
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.05683.i.i.i.i
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !63
  %i.el = add nsw i32 %i.ek, %.07582.i.i.i.i      ; 2 uses
  %i.em = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.em, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !572

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader261, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.eq, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader261 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.ep, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader261 ]
  %i.en = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %.05588.i.i.i.i
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !63
  %i.ep = add nsw i32 %i.eo, %.187.i.i.i.i        ; 2 uses
  %i.eq = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.er = icmp slt i64 %i.eq, %i.by
  br i1 %i.er, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, !llvm.loop !573

bb.o:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.es = load i32, ptr %i.bn, align 4, !tbaa !63 ; 3 uses
  %i.et = icmp sgt i64 %i.by, 1
  br i1 %i.et, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.o
  %i.eu = add nsw i64 %i.by, -1                   ; 2 uses
  %min.iters.check160 = icmp ult i64 %i.by, 9
  br i1 %min.iters.check160, label %.lr.ph94.i.i.i.i.preheader257, label %vector.ph161

vector.ph161:                                     ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec162 = and i64 %i.eu, -8                   ; 3 uses
  %i.ev = or disjoint i64 %n.vec162, 1
  %i.ew = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.es, i64 0
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph161
  %index164 = phi i64 [ 0, %vector.ph161 ], [ %index.next169, %vector.body163 ] ; 2 uses
  %vec.phi165 = phi <4 x i32> [ %i.ew, %vector.ph161 ], [ %i.fa, %vector.body163 ]
  %vec.phi166 = phi <4 x i32> [ zeroinitializer, %vector.ph161 ], [ %i.fb, %vector.body163 ]
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index164 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 20
  %wide.load167 = load <4 x i32>, ptr %i.ey, align 4, !tbaa !63
  %wide.load168 = load <4 x i32>, ptr %i.ez, align 4, !tbaa !63
  %i.fa = add <4 x i32> %wide.load167, %vec.phi165 ; 2 uses
  %i.fb = add <4 x i32> %wide.load168, %vec.phi166 ; 2 uses
  %index.next169 = add nuw i64 %index164, 8       ; 2 uses
  %i.fc = icmp eq i64 %index.next169, %n.vec162
  br i1 %i.fc, label %middle.block170, label %vector.body163, !llvm.loop !574

middle.block170:                                  ; preds = %vector.body163
  %bin.rdx171 = add <4 x i32> %i.fb, %i.fa
  %i.fd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx171) ; 2 uses
  %cmp.n172 = icmp eq i64 %i.eu, %n.vec162
  br i1 %cmp.n172, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i.preheader257

.lr.ph94.i.i.i.i.preheader257:                    ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block170
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.ev, %middle.block170 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.es, %.lr.ph94.i.i.i.i.preheader ], [ %i.fd, %middle.block170 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader257, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.fh, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader257 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.fg, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader257 ]
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.092.i.i.i.i
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !63
  %i.fg = add nsw i32 %i.ff, %.291.i.i.i.i        ; 2 uses
  %i.fh = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.fh, %i.by
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i, !llvm.loop !575

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block154, %middle.block170, %.preheader.i.i.i.i, %bb.o, %bb.g
  %.0.i.in = phi i32 [ %i.bw, %bb.g ], [ %i.fg, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.es, %bb.o ], [ %i.fd, %middle.block170 ], [ %i.ei, %middle.block154 ], [ %i.ep, %.lr.ph89.i.i.i.i ]
  %i.fi = icmp sgt i32 %.0.i.in, 0
  br i1 %i.fi, label %bb.p, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread

bb.p:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i8 0, ptr %3, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bl, ptr %i.fj, align 8
  call void @_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj1ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEvRNS_10MatrixBaseIT_EE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread: ; preds = %bb.h, %bb.p, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !72 ; 4 uses
  %i.fm = icmp sgt i64 %i.fl, 0
  br i1 %i.fm, label %bb.q, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEES2_Li1EEEEERS2_RKNS_9DenseBaseIT_EE.exit

bb.q:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !61 ; 6 uses
  %i.fp = ptrtoaddr ptr %i.fo to i64
  %i.fq = load ptr, ptr %2, align 8, !tbaa !61    ; 7 uses
  %i.fr = ptrtoaddr ptr %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !72
  %.not.i.i.i.i.i.i.i11 = icmp eq i64 %i.ft, %i.fl
  br i1 %.not.i.i.i.i.i.i.i11, label %bb.r, label %thread-pre-split.i.i.i.i.i.i12

thread-pre-split.i.i.i.i.i.i12:                   ; preds = %bb.q
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.fl, i64 noundef 1)
  %.pr.i.i.i.i.i.i13 = load i64, ptr %i.fs, align 8, !tbaa !72
  %.pre = load ptr, ptr %2, align 8, !tbaa !61
  br label %bb.r

bb.r:                                             ; preds = %thread-pre-split.i.i.i.i.i.i12, %bb.q
  %i.fu = phi ptr [ %.pre, %thread-pre-split.i.i.i.i.i.i12 ], [ %i.fq, %bb.q ] ; 6 uses
  %i.fv = phi i64 [ %.pr.i.i.i.i.i.i13, %thread-pre-split.i.i.i.i.i.i12 ], [ %i.fl, %bb.q ] ; 8 uses
  %i.fw = ptrtoaddr ptr %i.fu to i64              ; 2 uses
  %i.fx = sdiv i64 %i.fv, 2                       ; 2 uses
  %i.fy = shl nsw i64 %i.fx, 1                    ; 6 uses
  %i.fz = icmp sgt i64 %i.fv, 1
  br i1 %i.fz, label %.lr.ph.i.i.i.i.i.i.i18, label %._crit_edge.i.i.i.i.i.i.i14

._crit_edge.i.i.i.i.i.i.i14:                      ; preds = %.lr.ph.i.i.i.i.i.i.i18, %bb.r
end_hunk_0
begin_hunk_1_@_ZNK5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE11_solve_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS_10MatrixBaseIT_EERNSC_IT0_EE:bb.a
.lr.ph.i.i.i.i.i.i.i.i15.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i14
  %i.gb = shl nsw i64 %i.fx, 1
  %i.gc = sub i64 %i.fv, %i.gb                    ; 2 uses
  %min.iters.check179 = icmp ult i64 %i.gc, 2
  br i1 %min.iters.check179, label %.lr.ph.i.i.i.i.i.i.i.i15.preheader256, label %vector.memcheck175

vector.memcheck175:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i15.preheader
  %i.gd = sub i64 %i.fp, %i.fw
  %diff.check176 = icmp ugt i64 %i.gd, -16
  %i.ge = sub i64 %i.fr, %i.fw
  %diff.check177 = icmp ugt i64 %i.ge, -16
  %conflict.rdx = or i1 %diff.check176, %diff.check177
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.i.i15.preheader256, label %vector.ph180

vector.ph180:                                     ; preds = %vector.memcheck175
  %i.gf = and i64 %i.fv, 1                        ; 2 uses
  %n.vec181 = sub i64 %i.gc, %i.gf                ; 2 uses
  %i.gg = add i64 %i.fy, %n.vec181
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.ph180
  %index183 = phi i64 [ 0, %vector.ph180 ], [ %index.next186, %vector.body182 ] ; 2 uses
  %i.gh = add i64 %i.fy, %index183                ; 3 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.gh
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.gh
  %wide.load184 = load <2 x double>, ptr %i.gj, align 8, !tbaa !64
  %i.gk = fdiv <2 x double> splat (double 1.000000e+00), %wide.load184
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.gh
  %wide.load185 = load <2 x double>, ptr %i.gl, align 8, !tbaa !64
  %i.gm = fmul <2 x double> %i.gk, %wide.load185
  store <2 x double> %i.gm, ptr %i.gi, align 8, !tbaa !64
  %index.next186 = add nuw i64 %index183, 2       ; 2 uses
  %i.gn = icmp eq i64 %index.next186, %n.vec181
  br i1 %i.gn, label %middle.block187, label %vector.body182, !llvm.loop !576

middle.block187:                                  ; preds = %vector.body182
  %cmp.n188 = icmp eq i64 %i.gf, 0
  br i1 %cmp.n188, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEES2_Li1EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i15.preheader256

.lr.ph.i.i.i.i.i.i.i.i15.preheader256:            ; preds = %vector.memcheck175, %.lr.ph.i.i.i.i.i.i.i.i15.preheader, %middle.block187
  %.05.i.i.i.i.i.i.i.i16.ph = phi i64 [ %i.fy, %vector.memcheck175 ], [ %i.fy, %.lr.ph.i.i.i.i.i.i.i.i15.preheader ], [ %i.gg, %middle.block187 ] ; 7 uses
  %i.go = sub i64 %i.fv, %.05.i.i.i.i.i.i.i.i16.ph
  %.neg = add i64 %.05.i.i.i.i.i.i.i.i16.ph, 1
  %xtraiter273 = and i64 %i.go, 1
  %lcmp.mod274.not = icmp eq i64 %xtraiter273, 0
  br i1 %lcmp.mod274.not, label %.lr.ph.i.i.i.i.i.i.i.i15.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i15.prol

.lr.ph.i.i.i.i.i.i.i.i15.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i15.preheader256
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %.05.i.i.i.i.i.i.i.i16.ph
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %.05.i.i.i.i.i.i.i.i16.ph
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !64
  %i.gs = fdiv double 1.000000e+00, %i.gr
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %.05.i.i.i.i.i.i.i.i16.ph
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !64
  %i.gv = fmul double %i.gs, %i.gu
  store double %i.gv, ptr %i.gp, align 8, !tbaa !64
  %i.gw = add nsw i64 %.05.i.i.i.i.i.i.i.i16.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i15.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i15.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i15.prol, %.lr.ph.i.i.i.i.i.i.i.i15.preheader256
  %.05.i.i.i.i.i.i.i.i16.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i16.ph, %.lr.ph.i.i.i.i.i.i.i.i15.preheader256 ], [ %i.gw, %.lr.ph.i.i.i.i.i.i.i.i15.prol ]
  %i.gx = icmp eq i64 %i.fv, %.neg
  br i1 %i.gx, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEES2_Li1EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i15

.lr.ph.i.i.i.i.i.i.i.i15:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i15.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i15
  %.05.i.i.i.i.i.i.i.i16 = phi i64 [ %i.hn, %.lr.ph.i.i.i.i.i.i.i.i15 ], [ %.05.i.i.i.i.i.i.i.i16.unr, %.lr.ph.i.i.i.i.i.i.i.i15.prol.loopexit ] ; 5 uses
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %.05.i.i.i.i.i.i.i.i16
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %.05.i.i.i.i.i.i.i.i16
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !64
  %i.hb = fdiv double 1.000000e+00, %i.ha
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %.05.i.i.i.i.i.i.i.i16
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !64
  %i.he = fmul double %i.hb, %i.hd
  store double %i.he, ptr %i.gy, align 8, !tbaa !64
  %i.hf = add nsw i64 %.05.i.i.i.i.i.i.i.i16, 1   ; 3 uses
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.hf
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.hf
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !64
  %i.hj = fdiv double 1.000000e+00, %i.hi
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.hf
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !64
  %i.hm = fmul double %i.hj, %i.hl
  store double %i.hm, ptr %i.hg, align 8, !tbaa !64
  %i.hn = add nsw i64 %.05.i.i.i.i.i.i.i.i16, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i17.1 = icmp eq i64 %i.hn, %i.fv
  br i1 %exitcond.not.i.i.i.i.i.i.i.i17.1, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEES2_Li1EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i15, !llvm.loop !577

.lr.ph.i.i.i.i.i.i.i18:                           ; preds = %bb.r, %.lr.ph.i.i.i.i.i.i.i18
  %.011.i.i.i.i.i.i.i19 = phi i64 [ %i.hv, %.lr.ph.i.i.i.i.i.i.i18 ], [ 0, %bb.r ] ; 4 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %.011.i.i.i.i.i.i.i19
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %.011.i.i.i.i.i.i.i19
  %i.hq = load <2 x double>, ptr %i.hp, align 16, !tbaa !91
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %.011.i.i.i.i.i.i.i19
  %i.hs = load <2 x double>, ptr %i.hr, align 16, !tbaa !91
  %i.ht = fdiv <2 x double> splat (double 1.000000e+00), %i.hs
  %i.hu = fmul <2 x double> %i.hq, %i.ht
  store <2 x double> %i.hu, ptr %i.ho, align 16, !tbaa !91
  %i.hv = add nuw nsw i64 %.011.i.i.i.i.i.i.i19, 2 ; 2 uses
  %i.hw = icmp slt i64 %i.hv, %i.fy
  br i1 %i.hw, label %.lr.ph.i.i.i.i.i.i.i18, label %._crit_edge.i.i.i.i.i.i.i14, !llvm.loop !578

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEES2_Li1EEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i15.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i15, %middle.block187, %._crit_edge.i.i.i.i.i.i.i14, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread
  %i.hx = load ptr, ptr %i.bm, align 8, !tbaa !153 ; 13 uses
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEES2_Li1EEEEERS2_RKNS_9DenseBaseIT_EE.exit
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !152 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !148
  %i.id = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !63
  %i.if = load i32, ptr %i.ia, align 4, !tbaa !63
  %i.ig = sub nsw i32 %i.ie, %i.if
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54

bb.t:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEES2_Li1EEEEERS2_RKNS_9DenseBaseIT_EE.exit
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !148 ; 11 uses
  %i.ij = icmp eq i64 %i.ii, 0
  br i1 %i.ij, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ik = ptrtoint ptr %i.hx to i64               ; 2 uses
  %i.il = and i64 %i.ik, 3
  %.not.i.i.i.i.i.i.i.i20 = icmp eq i64 %i.il, 0
  br i1 %.not.i.i.i.i.i.i.i.i20, label %bb.v, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i21

bb.v:                                             ; preds = %bb.u
  %i.im = lshr exact i64 %i.ik, 2
  %i.in = sub nsw i64 0, %i.im
  %i.io = and i64 %i.in, 3
  %i.ip = call i64 @llvm.smin.i64(i64 %i.io, i64 %i.ii)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i21

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i21: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i.i.i22 = phi i64 [ %i.ip, %bb.v ], [ %i.ii, %bb.u ] ; 12 uses
  %i.iq = sub nsw i64 %i.ii, %.0.i.i.i.i.i.i.i.i22 ; 5 uses
  %i.ir = sdiv i64 %i.iq, 8
  %i.is = shl nsw i64 %i.ir, 3                    ; 2 uses
  %i.it = sdiv i64 %i.iq, 4                       ; 2 uses
  %i.iu = shl nsw i64 %i.it, 2                    ; 2 uses
  %i.iv = add nsw i64 %i.is, %.0.i.i.i.i.i.i.i.i22 ; 2 uses
  %i.iw = add nsw i64 %i.iu, %.0.i.i.i.i.i.i.i.i22 ; 4 uses
  %.off.i.i.i.i23 = add i64 %i.iq, 3
  %.not.i.i.i.i24 = icmp ult i64 %.off.i.i.i.i23, 7
  br i1 %.not.i.i.i.i24, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i21
  %i.ix = getelementptr [4 x i8], ptr %i.hx, i64 %.0.i.i.i.i.i.i.i.i22 ; 2 uses
  %i.iy = load <2 x i64>, ptr %i.ix, align 1, !tbaa !91 ; 2 uses
  %i.iz = icmp sgt i64 %i.iq, 7
  br i1 %i.iz, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ja = getelementptr i8, ptr %i.ix, i64 16
  %i.jb = load <4 x i32>, ptr %i.ja, align 1, !tbaa !91 ; 2 uses
  %i.jc = bitcast <2 x i64> %i.iy to <4 x i32>    ; 2 uses
  %i.jd = icmp samesign ugt i64 %i.iq, 15
  br i1 %i.jd, label %.lr.ph.preheader.i.i.i.i43, label %._crit_edge.i.i.i.i40

.lr.ph.preheader.i.i.i.i43:                       ; preds = %bb.x
  %.05777.i.i.i.i44 = add nsw i64 %.0.i.i.i.i.i.i.i.i22, 8
  br label %.lr.ph.i.i.i.i45

._crit_edge.i.i.i.i40:                            ; preds = %.lr.ph.i.i.i.i45, %bb.x
  %.lcssa.i.i.i.i41 = phi <4 x i32> [ %i.jb, %bb.x ], [ %i.jo, %.lr.ph.i.i.i.i45 ]
  %.sroa.067.0.lcssa.i.i.i.i42 = phi <4 x i32> [ %i.jc, %bb.x ], [ %i.jk, %.lr.ph.i.i.i.i45 ]
  %i.je = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i42, %.lcssa.i.i.i.i41 ; 2 uses
  %i.jf = bitcast <4 x i32> %i.je to <2 x i64>
  %i.jg = icmp sgt i64 %i.iu, %i.is
  br i1 %i.jg, label %bb.y, label %bb.z

.lr.ph.i.i.i.i45:                                 ; preds = %.lr.ph.i.i.i.i45, %.lr.ph.preheader.i.i.i.i43
  %.05780.i.i.i.i46 = phi i64 [ %.057.i.i.i.i49, %.lr.ph.i.i.i.i45 ], [ %.05777.i.i.i.i44, %.lr.ph.preheader.i.i.i.i43 ] ; 3 uses
  %.057.in79.i.i.i.i47 = phi i64 [ %.05780.i.i.i.i46, %.lr.ph.i.i.i.i45 ], [ %.0.i.i.i.i.i.i.i.i22, %.lr.ph.preheader.i.i.i.i43 ]
  %.sroa.067.078.i.i.i.i48 = phi <4 x i32> [ %i.jk, %.lr.ph.i.i.i.i45 ], [ %i.jc, %.lr.ph.preheader.i.i.i.i43 ]
  %i.jh = phi <4 x i32> [ %i.jo, %.lr.ph.i.i.i.i45 ], [ %i.jb, %.lr.ph.preheader.i.i.i.i43 ]
  %i.ji = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %.05780.i.i.i.i46
  %i.jj = load <4 x i32>, ptr %i.ji, align 1, !tbaa !91
  %i.jk = add <4 x i32> %i.jj, %.sroa.067.078.i.i.i.i48 ; 2 uses
  %i.jl = getelementptr [4 x i8], ptr %i.hx, i64 %.057.in79.i.i.i.i47
  %i.jm = getelementptr i8, ptr %i.jl, i64 48
  %i.jn = load <4 x i32>, ptr %i.jm, align 1, !tbaa !91
  %i.jo = add <4 x i32> %i.jn, %i.jh              ; 2 uses
  %.057.i.i.i.i49 = add nsw i64 %.05780.i.i.i.i46, 8 ; 2 uses
  %i.jp = icmp slt i64 %.057.i.i.i.i49, %i.iv
  br i1 %i.jp, label %.lr.ph.i.i.i.i45, label %._crit_edge.i.i.i.i40, !llvm.loop !569

bb.y:                                             ; preds = %._crit_edge.i.i.i.i40
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.iv
  %i.jr = load <4 x i32>, ptr %i.jq, align 1, !tbaa !91
  %i.js = add <4 x i32> %i.jr, %i.je
  %i.jt = bitcast <4 x i32> %i.js to <2 x i64>
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i.i.i40, %bb.w
  %.sroa.067.2.i.i.i.i25 = phi <2 x i64> [ %i.iy, %bb.w ], [ %i.jt, %bb.y ], [ %i.jf, %._crit_edge.i.i.i.i40 ] ; 2 uses
  %i.ju = bitcast <2 x i64> %.sroa.067.2.i.i.i.i25 to <4 x i32>
  %i.jv = bitcast <2 x i64> %.sroa.067.2.i.i.i.i25 to <4 x i32> ; 2 uses
  %i.jw = shufflevector <4 x i32> %i.jv, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.jx = add <4 x i32> %i.jw, %i.ju              ; 2 uses
  %shift239 = shufflevector <4 x i32> %i.jx, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop240 = add nsw <4 x i32> %i.jx, %shift239
  %6 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.jv) ; 2 uses
  %i.jy = icmp sgt i64 %.0.i.i.i.i.i.i.i.i22, 0
  br i1 %i.jy, label %.lr.ph85.i.i.i.i36.preheader, label %.preheader.i.i.i.i28

.lr.ph85.i.i.i.i36.preheader:                     ; preds = %bb.z
  %min.iters.check191 = icmp ult i64 %.0.i.i.i.i.i.i.i.i22, 8
  br i1 %min.iters.check191, label %.lr.ph85.i.i.i.i36.preheader250, label %vector.ph192

vector.ph192:                                     ; preds = %.lr.ph85.i.i.i.i36.preheader
  %n.vec193 = and i64 %.0.i.i.i.i.i.i.i.i22, 9223372036854775800 ; 3 uses
  %i.jz = shufflevector <4 x i32> %foldExtExtBinop240, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph192
  %index195 = phi i64 [ 0, %vector.ph192 ], [ %index.next200, %vector.body194 ] ; 2 uses
  %vec.phi196 = phi <4 x i32> [ %i.jz, %vector.ph192 ], [ %i.kc, %vector.body194 ]
  %vec.phi197 = phi <4 x i32> [ zeroinitializer, %vector.ph192 ], [ %i.kd, %vector.body194 ]
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %index195 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %wide.load198 = load <4 x i32>, ptr %i.ka, align 4, !tbaa !63
  %wide.load199 = load <4 x i32>, ptr %i.kb, align 4, !tbaa !63
  %i.kc = add <4 x i32> %wide.load198, %vec.phi196 ; 2 uses
  %i.kd = add <4 x i32> %wide.load199, %vec.phi197 ; 2 uses
  %index.next200 = add nuw i64 %index195, 8       ; 2 uses
  %i.ke = icmp eq i64 %index.next200, %n.vec193
  br i1 %i.ke, label %middle.block201, label %vector.body194, !llvm.loop !579

middle.block201:                                  ; preds = %vector.body194
  %bin.rdx202 = add <4 x i32> %i.kd, %i.kc
  %i.kf = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx202) ; 2 uses
  %cmp.n203 = icmp eq i64 %.0.i.i.i.i.i.i.i.i22, %n.vec193
  br i1 %cmp.n203, label %.preheader.i.i.i.i28, label %.lr.ph85.i.i.i.i36.preheader250

.lr.ph85.i.i.i.i36.preheader250:                  ; preds = %.lr.ph85.i.i.i.i36.preheader, %middle.block201
  %.05683.i.i.i.i37.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i36.preheader ], [ %n.vec193, %middle.block201 ]
  %.07582.i.i.i.i38.ph = phi i32 [ %6, %.lr.ph85.i.i.i.i36.preheader ], [ %i.kf, %middle.block201 ]
  br label %.lr.ph85.i.i.i.i36

.preheader.i.i.i.i28:                             ; preds = %.lr.ph85.i.i.i.i36, %middle.block201, %bb.z
  %.075.lcssa.i.i.i.i29 = phi i32 [ %6, %bb.z ], [ %i.kf, %middle.block201 ], [ %i.kv, %.lr.ph85.i.i.i.i36 ] ; 3 uses
  %i.kg = icmp slt i64 %i.iw, %i.ii
  br i1 %i.kg, label %.lr.ph89.i.i.i.i33.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54

.lr.ph89.i.i.i.i33.preheader:                     ; preds = %.preheader.i.i.i.i28
  %i.kh = shl nsw i64 %i.it, 2
  %i.ki = add i64 %.0.i.i.i.i.i.i.i.i22, %i.kh
  %i.kj = sub i64 %i.ii, %i.ki                    ; 3 uses
  %min.iters.check207 = icmp ult i64 %i.kj, 8
  br i1 %min.iters.check207, label %.lr.ph89.i.i.i.i33.preheader245, label %vector.ph208

vector.ph208:                                     ; preds = %.lr.ph89.i.i.i.i33.preheader
  %n.vec209 = and i64 %i.kj, -8                   ; 3 uses
  %i.kk = add i64 %i.iw, %n.vec209
  %i.kl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i29, i64 0
  %i.km = getelementptr [4 x i8], ptr %i.hx, i64 %i.iw
  br label %vector.body210

vector.body210:                                   ; preds = %vector.body210, %vector.ph208
  %index211 = phi i64 [ 0, %vector.ph208 ], [ %index.next216, %vector.body210 ] ; 2 uses
  %vec.phi212 = phi <4 x i32> [ %i.kl, %vector.ph208 ], [ %i.kp, %vector.body210 ]
  %vec.phi213 = phi <4 x i32> [ zeroinitializer, %vector.ph208 ], [ %i.kq, %vector.body210 ]
  %i.kn = getelementptr [4 x i8], ptr %i.km, i64 %index211 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %wide.load214 = load <4 x i32>, ptr %i.kn, align 4, !tbaa !63
  %wide.load215 = load <4 x i32>, ptr %i.ko, align 4, !tbaa !63
  %i.kp = add <4 x i32> %wide.load214, %vec.phi212 ; 2 uses
  %i.kq = add <4 x i32> %wide.load215, %vec.phi213 ; 2 uses
  %index.next216 = add nuw i64 %index211, 8       ; 2 uses
  %i.kr = icmp eq i64 %index.next216, %n.vec209
  br i1 %i.kr, label %middle.block217, label %vector.body210, !llvm.loop !580

middle.block217:                                  ; preds = %vector.body210
  %bin.rdx218 = add <4 x i32> %i.kq, %i.kp
  %i.ks = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx218) ; 2 uses
  %cmp.n219 = icmp eq i64 %i.kj, %n.vec209
  br i1 %cmp.n219, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54, label %.lr.ph89.i.i.i.i33.preheader245

.lr.ph89.i.i.i.i33.preheader245:                  ; preds = %.lr.ph89.i.i.i.i33.preheader, %middle.block217
  %.05588.i.i.i.i34.ph = phi i64 [ %i.iw, %.lr.ph89.i.i.i.i33.preheader ], [ %i.kk, %middle.block217 ]
  %.187.i.i.i.i35.ph = phi i32 [ %.075.lcssa.i.i.i.i29, %.lr.ph89.i.i.i.i33.preheader ], [ %i.ks, %middle.block217 ]
  br label %.lr.ph89.i.i.i.i33

.lr.ph85.i.i.i.i36:                               ; preds = %.lr.ph85.i.i.i.i36.preheader250, %.lr.ph85.i.i.i.i36
  %.05683.i.i.i.i37 = phi i64 [ %i.kw, %.lr.ph85.i.i.i.i36 ], [ %.05683.i.i.i.i37.ph, %.lr.ph85.i.i.i.i36.preheader250 ] ; 2 uses
  %.07582.i.i.i.i38 = phi i32 [ %i.kv, %.lr.ph85.i.i.i.i36 ], [ %.07582.i.i.i.i38.ph, %.lr.ph85.i.i.i.i36.preheader250 ]
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %.05683.i.i.i.i37
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !63
  %i.kv = add nsw i32 %i.ku, %.07582.i.i.i.i38    ; 2 uses
  %i.kw = add nuw nsw i64 %.05683.i.i.i.i37, 1    ; 2 uses
  %exitcond.not.i.i.i.i39 = icmp eq i64 %i.kw, %.0.i.i.i.i.i.i.i.i22
  br i1 %exitcond.not.i.i.i.i39, label %.preheader.i.i.i.i28, label %.lr.ph85.i.i.i.i36, !llvm.loop !581

.lr.ph89.i.i.i.i33:                               ; preds = %.lr.ph89.i.i.i.i33.preheader245, %.lr.ph89.i.i.i.i33
  %.05588.i.i.i.i34 = phi i64 [ %i.la, %.lr.ph89.i.i.i.i33 ], [ %.05588.i.i.i.i34.ph, %.lr.ph89.i.i.i.i33.preheader245 ] ; 2 uses
  %.187.i.i.i.i35 = phi i32 [ %i.kz, %.lr.ph89.i.i.i.i33 ], [ %.187.i.i.i.i35.ph, %.lr.ph89.i.i.i.i33.preheader245 ]
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %.05588.i.i.i.i34
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !63
  %i.kz = add nsw i32 %i.ky, %.187.i.i.i.i35      ; 2 uses
  %i.la = add nsw i64 %.05588.i.i.i.i34, 1        ; 2 uses
  %i.lb = icmp slt i64 %i.la, %i.ii
  br i1 %i.lb, label %.lr.ph89.i.i.i.i33, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54, !llvm.loop !582

bb.aa:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i21
  %i.lc = load i32, ptr %i.hx, align 4, !tbaa !63 ; 3 uses
  %i.ld = icmp sgt i64 %i.ii, 1
  br i1 %i.ld, label %.lr.ph94.i.i.i.i50.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54

.lr.ph94.i.i.i.i50.preheader:                     ; preds = %bb.aa
  %i.le = add nsw i64 %i.ii, -1                   ; 2 uses
  %min.iters.check223 = icmp ult i64 %i.ii, 9
  br i1 %min.iters.check223, label %.lr.ph94.i.i.i.i50.preheader242, label %vector.ph224

vector.ph224:                                     ; preds = %.lr.ph94.i.i.i.i50.preheader
  %n.vec225 = and i64 %i.le, -8                   ; 3 uses
  %i.lf = or disjoint i64 %n.vec225, 1
  %i.lg = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.lc, i64 0
  br label %vector.body226

vector.body226:                                   ; preds = %vector.body226, %vector.ph224
  %index227 = phi i64 [ 0, %vector.ph224 ], [ %index.next232, %vector.body226 ] ; 2 uses
  %vec.phi228 = phi <4 x i32> [ %i.lg, %vector.ph224 ], [ %i.lk, %vector.body226 ]
  %vec.phi229 = phi <4 x i32> [ zeroinitializer, %vector.ph224 ], [ %i.ll, %vector.body226 ]
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %index227 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 20
  %wide.load230 = load <4 x i32>, ptr %i.li, align 4, !tbaa !63
  %wide.load231 = load <4 x i32>, ptr %i.lj, align 4, !tbaa !63
  %i.lk = add <4 x i32> %wide.load230, %vec.phi228 ; 2 uses
  %i.ll = add <4 x i32> %wide.load231, %vec.phi229 ; 2 uses
  %index.next232 = add nuw i64 %index227, 8       ; 2 uses
  %i.lm = icmp eq i64 %index.next232, %n.vec225
  br i1 %i.lm, label %middle.block233, label %vector.body226, !llvm.loop !583

middle.block233:                                  ; preds = %vector.body226
  %bin.rdx234 = add <4 x i32> %i.ll, %i.lk
  %i.ln = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx234) ; 2 uses
  %cmp.n235 = icmp eq i64 %i.le, %n.vec225
  br i1 %cmp.n235, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54, label %.lr.ph94.i.i.i.i50.preheader242

.lr.ph94.i.i.i.i50.preheader242:                  ; preds = %.lr.ph94.i.i.i.i50.preheader, %middle.block233
  %.092.i.i.i.i51.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i50.preheader ], [ %i.lf, %middle.block233 ]
  %.291.i.i.i.i52.ph = phi i32 [ %i.lc, %.lr.ph94.i.i.i.i50.preheader ], [ %i.ln, %middle.block233 ]
  br label %.lr.ph94.i.i.i.i50

.lr.ph94.i.i.i.i50:                               ; preds = %.lr.ph94.i.i.i.i50.preheader242, %.lr.ph94.i.i.i.i50
  %.092.i.i.i.i51 = phi i64 [ %i.lr, %.lr.ph94.i.i.i.i50 ], [ %.092.i.i.i.i51.ph, %.lr.ph94.i.i.i.i50.preheader242 ] ; 2 uses
  %.291.i.i.i.i52 = phi i32 [ %i.lq, %.lr.ph94.i.i.i.i50 ], [ %.291.i.i.i.i52.ph, %.lr.ph94.i.i.i.i50.preheader242 ]
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %.092.i.i.i.i51
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !63
  %i.lq = add nsw i32 %i.lp, %.291.i.i.i.i52      ; 2 uses
  %i.lr = add nuw nsw i64 %.092.i.i.i.i51, 1      ; 2 uses
  %exitcond102.not.i.i.i.i53 = icmp eq i64 %i.lr, %i.ii
  br i1 %exitcond102.not.i.i.i.i53, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54, label %.lr.ph94.i.i.i.i50, !llvm.loop !584

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54: ; preds = %.lr.ph89.i.i.i.i33, %.lr.ph94.i.i.i.i50, %middle.block217, %middle.block233, %.preheader.i.i.i.i28, %bb.aa, %bb.s
  %.0.i32.in = phi i32 [ %i.ig, %bb.s ], [ %i.lq, %.lr.ph94.i.i.i.i50 ], [ %.075.lcssa.i.i.i.i29, %.preheader.i.i.i.i28 ], [ %i.lc, %bb.aa ], [ %i.ln, %middle.block233 ], [ %i.ks, %middle.block217 ], [ %i.kz, %.lr.ph89.i.i.i.i33 ]
  %i.ls = icmp sgt i32 %.0.i32.in, 0
  br i1 %i.ls, label %bb.ab, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54.thread

bb.ab:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i8 0, ptr %4, align 8, !tbaa !585, !alias.scope !587
  %i.lt = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 0, ptr %i.lt, align 8, !alias.scope !587
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.bl, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !587
  call void @_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi2ELi2ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(16) %i.lt, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54.thread

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54.thread: ; preds = %bb.t, %bb.ab, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54
  %i.lu = load i64, ptr %i.d, align 8, !tbaa !14
  %i.lv = icmp sgt i64 %i.lu, 0
  br i1 %i.lv, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54.thread
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !14 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !72
  %.not.i.i.i.i.i57 = icmp eq i64 %i.ma, %i.ly
  br i1 %.not.i.i.i.i.i57, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.ly, i64 noundef 1)
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %bb.ac, %bb.ad
  call void @_ZN5Eigen8internal26permutation_matrix_productINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi1ELb0ENS_10DenseShapeEE3runIS3_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.lw, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj1ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEvRNS_10MatrixBaseIT_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !592, !nonnull !71, !align !122 ; 5 uses
end_hunk_1
begin_hunk_2_@_ZNK5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE11_solve_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS_10MatrixBaseIT_EERNSC_IT0_EE:bb.a
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.f
  %i.y = icmp slt i64 %i.w, %i.s
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS1_IdLin1ELin1ELi0ELin1ELin1EEEEERS2_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.z = shl nsw i64 %i.v, 1
  %i.aa = sub i64 %i.s, %i.z                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.aa, 8
  %i.ab = sub i64 %i.l, %i.u
  %diff.check = icmp ugt i64 %i.ab, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader272, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aa, -4                      ; 3 uses
  %i.ac = add i64 %i.w, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = add i64 %i.w, %index                    ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ad ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <2 x double>, ptr %i.af, align 8, !tbaa !64
  %wide.load129 = load <2 x double>, ptr %i.ag, align 8, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <2 x double> %wide.load, ptr %i.ae, align 8, !tbaa !64
  store <2 x double> %wide.load129, ptr %i.ah, align 8, !tbaa !64
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !618

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS1_IdLin1ELin1ELi0ELin1ELin1EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader272

.lr.ph.i.i.i.i.i.i.i.i.preheader272:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ] ; 4 uses
  %i.aj = sub i64 %i.s, %.05.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.aj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader272, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader272 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader272 ]
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.al = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.am = load double, ptr %i.al, align 8, !tbaa !64
  store double %i.am, ptr %i.ak, align 8, !tbaa !64
  %i.an = add nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !619

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader272
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader272 ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.ao = sub i64 %.05.i.i.i.i.i.i.i.i.ph, %i.s
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS1_IdLin1ELin1ELi0ELin1ELin1EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.05.i.i.i.i.i.i.i.i
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.05.i.i.i.i.i.i.i.i
  %i.as = load double, ptr %i.ar, align 8, !tbaa !64
  store double %i.as, ptr %i.aq, align 8, !tbaa !64
  %i.at = add nsw i64 %.05.i.i.i.i.i.i.i.i, 1     ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.at
  %i.av = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.at
  %i.aw = load double, ptr %i.av, align 8, !tbaa !64
  store double %i.aw, ptr %i.au, align 8, !tbaa !64
  %i.ax = add nsw i64 %.05.i.i.i.i.i.i.i.i, 2     ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ax
  %i.az = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ax
  %i.ba = load double, ptr %i.az, align 8, !tbaa !64
  store double %i.ba, ptr %i.ay, align 8, !tbaa !64
  %i.bb = add nsw i64 %.05.i.i.i.i.i.i.i.i, 3     ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.bb
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bb
  %i.be = load double, ptr %i.bd, align 8, !tbaa !64
  store double %i.be, ptr %i.bc, align 8, !tbaa !64
  %i.bf = add nsw i64 %.05.i.i.i.i.i.i.i.i, 4     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bf, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS1_IdLin1ELin1ELi0ELin1ELin1EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !620

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.f ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.011.i.i.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.011.i.i.i.i.i.i.i
  %i.bi = load <2 x double>, ptr %i.bh, align 16, !tbaa !91
  store <2 x double> %i.bi, ptr %i.bg, align 16, !tbaa !91
  %i.bj = add nuw nsw i64 %.011.i.i.i.i.i.i.i, 2  ; 2 uses
  %i.bk = icmp slt i64 %i.bj, %i.w
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !568

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS1_IdLin1ELin1ELi0ELin1ELin1EEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEENS1_IdLin1ELin1ELi0ELin1ELin1EEELi2EEEEERS2_RKNS_9DenseBaseIT_EE.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !153 ; 13 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS1_IdLin1ELin1ELi0ELin1ELin1EEEEERS2_RKNS_9DenseBaseIT_EE.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !152 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !148
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !63
  %i.bv = load i32, ptr %i.bq, align 4, !tbaa !63
  %i.bw = sub nsw i32 %i.bu, %i.bv
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.h:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS1_IdLin1ELin1ELi0ELin1ELin1EEEEERS2_RKNS_9DenseBaseIT_EE.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !148 ; 11 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.cb = and i64 %i.ca, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.j, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.cc = lshr exact i64 %i.ca, 2
  %i.cd = sub nsw i64 0, %i.cc
  %i.ce = and i64 %i.cd, 3
  %i.cf = tail call i64 @llvm.smin.i64(i64 %i.ce, i64 %i.by)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.cf, %bb.j ], [ %i.by, %bb.i ] ; 12 uses
  %i.cg = sub nsw i64 %i.by, %.0.i.i.i.i.i.i.i.i  ; 5 uses
  %i.ch = sdiv i64 %i.cg, 8
  %i.ci = shl nsw i64 %i.ch, 3                    ; 2 uses
  %i.cj = sdiv i64 %i.cg, 4                       ; 2 uses
  %i.ck = shl nsw i64 %i.cj, 2                    ; 2 uses
  %i.cl = add nsw i64 %i.ci, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.cm = add nsw i64 %i.ck, %.0.i.i.i.i.i.i.i.i  ; 4 uses
  %.off.i.i.i.i = add i64 %i.cg, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.cn = getelementptr [4 x i8], ptr %i.bn, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.co = load <2 x i64>, ptr %i.cn, align 1, !tbaa !91 ; 2 uses
  %i.cp = icmp sgt i64 %i.cg, 7
  br i1 %i.cp, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cq = getelementptr i8, ptr %i.cn, i64 16
  %i.cr = load <4 x i32>, ptr %i.cq, align 1, !tbaa !91 ; 2 uses
  %i.cs = bitcast <2 x i64> %i.co to <4 x i32>    ; 2 uses
  %i.ct = icmp samesign ugt i64 %i.cg, 15
  br i1 %i.ct, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.l
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.l
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.cr, %bb.l ], [ %i.de, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.cs, %bb.l ], [ %i.da, %.lr.ph.i.i.i.i ]
  %i.cu = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.cv = bitcast <4 x i32> %i.cu to <2 x i64>
  %i.cw = icmp sgt i64 %i.ck, %i.ci
  br i1 %i.cw, label %bb.m, label %bb.n

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.da, %.lr.ph.i.i.i.i ], [ %i.cs, %.lr.ph.preheader.i.i.i.i ]
  %i.cx = phi <4 x i32> [ %i.de, %.lr.ph.i.i.i.i ], [ %i.cr, %.lr.ph.preheader.i.i.i.i ]
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %.05780.i.i.i.i
  %i.cz = load <4 x i32>, ptr %i.cy, align 1, !tbaa !91
  %i.da = add <4 x i32> %i.cz, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.db = getelementptr [4 x i8], ptr %i.bn, i64 %.057.in79.i.i.i.i
  %i.dc = getelementptr i8, ptr %i.db, i64 48
  %i.dd = load <4 x i32>, ptr %i.dc, align 1, !tbaa !91
  %i.de = add <4 x i32> %i.dd, %i.cx              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.df = icmp slt i64 %.057.i.i.i.i, %i.cl
  br i1 %i.df, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !569

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.cl
  %i.dh = load <4 x i32>, ptr %i.dg, align 1, !tbaa !91
  %i.di = add <4 x i32> %i.dh, %i.cu
  %i.dj = bitcast <4 x i32> %i.di to <2 x i64>
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i, %bb.k
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.co, %bb.k ], [ %i.dj, %bb.m ], [ %i.cv, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.dk = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.dl = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.dm = shufflevector <4 x i32> %i.dl, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.dn = add <4 x i32> %i.dm, %i.dk              ; 2 uses
  %shift = shufflevector <4 x i32> %i.dn, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.dn, %shift
  %5 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dl) ; 2 uses
  %i.do = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.do, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.n
  %min.iters.check131 = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check131, label %.lr.ph85.i.i.i.i.preheader266, label %vector.ph132

vector.ph132:                                     ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec133 = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.dp = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph132
  %index135 = phi i64 [ 0, %vector.ph132 ], [ %index.next139, %vector.body134 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.dp, %vector.ph132 ], [ %i.ds, %vector.body134 ]
  %vec.phi136 = phi <4 x i32> [ zeroinitializer, %vector.ph132 ], [ %i.dt, %vector.body134 ]
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index135 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load137 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !63
  %wide.load138 = load <4 x i32>, ptr %i.dr, align 4, !tbaa !63
  %i.ds = add <4 x i32> %wide.load137, %vec.phi   ; 2 uses
  %i.dt = add <4 x i32> %wide.load138, %vec.phi136 ; 2 uses
  %index.next139 = add nuw i64 %index135, 8       ; 2 uses
  %i.du = icmp eq i64 %index.next139, %n.vec133
  br i1 %i.du, label %middle.block140, label %vector.body134, !llvm.loop !621

middle.block140:                                  ; preds = %vector.body134
  %bin.rdx = add <4 x i32> %i.dt, %i.ds
  %i.dv = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n141 = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec133
  br i1 %cmp.n141, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader266

.lr.ph85.i.i.i.i.preheader266:                    ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block140
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec133, %middle.block140 ]
  %.07582.i.i.i.i.ph = phi i32 [ %5, %.lr.ph85.i.i.i.i.preheader ], [ %i.dv, %middle.block140 ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block140, %bb.n
  %.075.lcssa.i.i.i.i = phi i32 [ %5, %bb.n ], [ %i.dv, %middle.block140 ], [ %i.el, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.dw = icmp slt i64 %i.cm, %i.by
  br i1 %i.dw, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.dx = shl nsw i64 %i.cj, 2
  %i.dy = add i64 %.0.i.i.i.i.i.i.i.i, %i.dx
  %i.dz = sub i64 %i.by, %i.dy                    ; 3 uses
  %min.iters.check144 = icmp ult i64 %i.dz, 8
  br i1 %min.iters.check144, label %.lr.ph89.i.i.i.i.preheader261, label %vector.ph145

vector.ph145:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec146 = and i64 %i.dz, -8                   ; 3 uses
  %i.ea = add i64 %i.cm, %n.vec146
  %i.eb = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.ec = getelementptr [4 x i8], ptr %i.bn, i64 %i.cm
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph145
  %index148 = phi i64 [ 0, %vector.ph145 ], [ %index.next153, %vector.body147 ] ; 2 uses
  %vec.phi149 = phi <4 x i32> [ %i.eb, %vector.ph145 ], [ %i.ef, %vector.body147 ]
  %vec.phi150 = phi <4 x i32> [ zeroinitializer, %vector.ph145 ], [ %i.eg, %vector.body147 ]
  %i.ed = getelementptr [4 x i8], ptr %i.ec, i64 %index148 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %wide.load151 = load <4 x i32>, ptr %i.ed, align 4, !tbaa !63
  %wide.load152 = load <4 x i32>, ptr %i.ee, align 4, !tbaa !63
  %i.ef = add <4 x i32> %wide.load151, %vec.phi149 ; 2 uses
  %i.eg = add <4 x i32> %wide.load152, %vec.phi150 ; 2 uses
  %index.next153 = add nuw i64 %index148, 8       ; 2 uses
  %i.eh = icmp eq i64 %index.next153, %n.vec146
  br i1 %i.eh, label %middle.block154, label %vector.body147, !llvm.loop !622

middle.block154:                                  ; preds = %vector.body147
  %bin.rdx155 = add <4 x i32> %i.eg, %i.ef
  %i.ei = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx155) ; 2 uses
  %cmp.n156 = icmp eq i64 %i.dz, %n.vec146
  br i1 %cmp.n156, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph89.i.i.i.i.preheader261

.lr.ph89.i.i.i.i.preheader261:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block154
  %.05588.i.i.i.i.ph = phi i64 [ %i.cm, %.lr.ph89.i.i.i.i.preheader ], [ %i.ea, %middle.block154 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.ei, %middle.block154 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader266, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.em, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader266 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.el, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader266 ]
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.05683.i.i.i.i
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !63
  %i.el = add nsw i32 %i.ek, %.07582.i.i.i.i      ; 2 uses
  %i.em = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.em, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !623

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader261, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.eq, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader261 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.ep, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader261 ]
  %i.en = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %.05588.i.i.i.i
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !63
  %i.ep = add nsw i32 %i.eo, %.187.i.i.i.i        ; 2 uses
  %i.eq = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.er = icmp slt i64 %i.eq, %i.by
  br i1 %i.er, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, !llvm.loop !624

bb.o:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.es = load i32, ptr %i.bn, align 4, !tbaa !63 ; 3 uses
  %i.et = icmp sgt i64 %i.by, 1
  br i1 %i.et, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.o
  %i.eu = add nsw i64 %i.by, -1                   ; 2 uses
  %min.iters.check160 = icmp ult i64 %i.by, 9
  br i1 %min.iters.check160, label %.lr.ph94.i.i.i.i.preheader257, label %vector.ph161

vector.ph161:                                     ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec162 = and i64 %i.eu, -8                   ; 3 uses
  %i.ev = or disjoint i64 %n.vec162, 1
  %i.ew = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.es, i64 0
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph161
  %index164 = phi i64 [ 0, %vector.ph161 ], [ %index.next169, %vector.body163 ] ; 2 uses
  %vec.phi165 = phi <4 x i32> [ %i.ew, %vector.ph161 ], [ %i.fa, %vector.body163 ]
  %vec.phi166 = phi <4 x i32> [ zeroinitializer, %vector.ph161 ], [ %i.fb, %vector.body163 ]
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index164 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 20
  %wide.load167 = load <4 x i32>, ptr %i.ey, align 4, !tbaa !63
  %wide.load168 = load <4 x i32>, ptr %i.ez, align 4, !tbaa !63
  %i.fa = add <4 x i32> %wide.load167, %vec.phi165 ; 2 uses
  %i.fb = add <4 x i32> %wide.load168, %vec.phi166 ; 2 uses
  %index.next169 = add nuw i64 %index164, 8       ; 2 uses
  %i.fc = icmp eq i64 %index.next169, %n.vec162
  br i1 %i.fc, label %middle.block170, label %vector.body163, !llvm.loop !625

middle.block170:                                  ; preds = %vector.body163
  %bin.rdx171 = add <4 x i32> %i.fb, %i.fa
  %i.fd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx171) ; 2 uses
  %cmp.n172 = icmp eq i64 %i.eu, %n.vec162
  br i1 %cmp.n172, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i.preheader257

.lr.ph94.i.i.i.i.preheader257:                    ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block170
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.ev, %middle.block170 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.es, %.lr.ph94.i.i.i.i.preheader ], [ %i.fd, %middle.block170 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader257, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.fh, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader257 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.fg, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader257 ]
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.092.i.i.i.i
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !63
  %i.fg = add nsw i32 %i.ff, %.291.i.i.i.i        ; 2 uses
  %i.fh = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.fh, %i.by
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i, !llvm.loop !626

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block154, %middle.block170, %.preheader.i.i.i.i, %bb.o, %bb.g
  %.0.i.in = phi i32 [ %i.bw, %bb.g ], [ %i.fg, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.es, %bb.o ], [ %i.fd, %middle.block170 ], [ %i.ei, %middle.block154 ], [ %i.ep, %.lr.ph89.i.i.i.i ]
  %i.fi = icmp sgt i32 %.0.i.in, 0
  br i1 %i.fi, label %bb.p, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread

bb.p:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i8 0, ptr %3, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bl, ptr %i.fj, align 8
  call void @_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj5ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEvRNS_10MatrixBaseIT_EE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread: ; preds = %bb.h, %bb.p, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !72 ; 4 uses
  %i.fm = icmp sgt i64 %i.fl, 0
  br i1 %i.fm, label %bb.q, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEES2_Li1EEEEERS2_RKNS_9DenseBaseIT_EE.exit

bb.q:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !61 ; 6 uses
  %i.fp = ptrtoaddr ptr %i.fo to i64
  %i.fq = load ptr, ptr %2, align 8, !tbaa !61    ; 7 uses
  %i.fr = ptrtoaddr ptr %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !72
  %.not.i.i.i.i.i.i.i11 = icmp eq i64 %i.ft, %i.fl
  br i1 %.not.i.i.i.i.i.i.i11, label %bb.r, label %thread-pre-split.i.i.i.i.i.i12

thread-pre-split.i.i.i.i.i.i12:                   ; preds = %bb.q
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.fl, i64 noundef 1)
  %.pr.i.i.i.i.i.i13 = load i64, ptr %i.fs, align 8, !tbaa !72
  %.pre = load ptr, ptr %2, align 8, !tbaa !61
  br label %bb.r

bb.r:                                             ; preds = %thread-pre-split.i.i.i.i.i.i12, %bb.q
  %i.fu = phi ptr [ %.pre, %thread-pre-split.i.i.i.i.i.i12 ], [ %i.fq, %bb.q ] ; 6 uses
  %i.fv = phi i64 [ %.pr.i.i.i.i.i.i13, %thread-pre-split.i.i.i.i.i.i12 ], [ %i.fl, %bb.q ] ; 8 uses
  %i.fw = ptrtoaddr ptr %i.fu to i64              ; 2 uses
  %i.fx = sdiv i64 %i.fv, 2                       ; 2 uses
  %i.fy = shl nsw i64 %i.fx, 1                    ; 6 uses
  %i.fz = icmp sgt i64 %i.fv, 1
  br i1 %i.fz, label %.lr.ph.i.i.i.i.i.i.i18, label %._crit_edge.i.i.i.i.i.i.i14

._crit_edge.i.i.i.i.i.i.i14:                      ; preds = %.lr.ph.i.i.i.i.i.i.i18, %bb.r
end_hunk_2
begin_hunk_3_@_ZNK5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE11_solve_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS_10MatrixBaseIT_EERNSC_IT0_EE:bb.a
.lr.ph.i.i.i.i.i.i.i.i15.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i14
  %i.gb = shl nsw i64 %i.fx, 1
  %i.gc = sub i64 %i.fv, %i.gb                    ; 2 uses
  %min.iters.check179 = icmp ult i64 %i.gc, 2
  br i1 %min.iters.check179, label %.lr.ph.i.i.i.i.i.i.i.i15.preheader256, label %vector.memcheck175

vector.memcheck175:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i15.preheader
  %i.gd = sub i64 %i.fp, %i.fw
  %diff.check176 = icmp ugt i64 %i.gd, -16
  %i.ge = sub i64 %i.fr, %i.fw
  %diff.check177 = icmp ugt i64 %i.ge, -16
  %conflict.rdx = or i1 %diff.check176, %diff.check177
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.i.i15.preheader256, label %vector.ph180

vector.ph180:                                     ; preds = %vector.memcheck175
  %i.gf = and i64 %i.fv, 1                        ; 2 uses
  %n.vec181 = sub i64 %i.gc, %i.gf                ; 2 uses
  %i.gg = add i64 %i.fy, %n.vec181
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.ph180
  %index183 = phi i64 [ 0, %vector.ph180 ], [ %index.next186, %vector.body182 ] ; 2 uses
  %i.gh = add i64 %i.fy, %index183                ; 3 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.gh
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.gh
  %wide.load184 = load <2 x double>, ptr %i.gj, align 8, !tbaa !64
  %i.gk = fdiv <2 x double> splat (double 1.000000e+00), %wide.load184
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.gh
  %wide.load185 = load <2 x double>, ptr %i.gl, align 8, !tbaa !64
  %i.gm = fmul <2 x double> %i.gk, %wide.load185
  store <2 x double> %i.gm, ptr %i.gi, align 8, !tbaa !64
  %index.next186 = add nuw i64 %index183, 2       ; 2 uses
  %i.gn = icmp eq i64 %index.next186, %n.vec181
  br i1 %i.gn, label %middle.block187, label %vector.body182, !llvm.loop !627

middle.block187:                                  ; preds = %vector.body182
  %cmp.n188 = icmp eq i64 %i.gf, 0
  br i1 %cmp.n188, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEES2_Li1EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i15.preheader256

.lr.ph.i.i.i.i.i.i.i.i15.preheader256:            ; preds = %vector.memcheck175, %.lr.ph.i.i.i.i.i.i.i.i15.preheader, %middle.block187
  %.05.i.i.i.i.i.i.i.i16.ph = phi i64 [ %i.fy, %vector.memcheck175 ], [ %i.fy, %.lr.ph.i.i.i.i.i.i.i.i15.preheader ], [ %i.gg, %middle.block187 ] ; 7 uses
  %i.go = sub i64 %i.fv, %.05.i.i.i.i.i.i.i.i16.ph
  %.neg = add i64 %.05.i.i.i.i.i.i.i.i16.ph, 1
  %xtraiter273 = and i64 %i.go, 1
  %lcmp.mod274.not = icmp eq i64 %xtraiter273, 0
  br i1 %lcmp.mod274.not, label %.lr.ph.i.i.i.i.i.i.i.i15.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i15.prol

.lr.ph.i.i.i.i.i.i.i.i15.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i15.preheader256
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %.05.i.i.i.i.i.i.i.i16.ph
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %.05.i.i.i.i.i.i.i.i16.ph
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !64
  %i.gs = fdiv double 1.000000e+00, %i.gr
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %.05.i.i.i.i.i.i.i.i16.ph
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !64
  %i.gv = fmul double %i.gs, %i.gu
  store double %i.gv, ptr %i.gp, align 8, !tbaa !64
  %i.gw = add nsw i64 %.05.i.i.i.i.i.i.i.i16.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i15.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i15.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i15.prol, %.lr.ph.i.i.i.i.i.i.i.i15.preheader256
  %.05.i.i.i.i.i.i.i.i16.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i16.ph, %.lr.ph.i.i.i.i.i.i.i.i15.preheader256 ], [ %i.gw, %.lr.ph.i.i.i.i.i.i.i.i15.prol ]
  %i.gx = icmp eq i64 %i.fv, %.neg
  br i1 %i.gx, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEES2_Li1EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i15

.lr.ph.i.i.i.i.i.i.i.i15:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i15.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i15
  %.05.i.i.i.i.i.i.i.i16 = phi i64 [ %i.hn, %.lr.ph.i.i.i.i.i.i.i.i15 ], [ %.05.i.i.i.i.i.i.i.i16.unr, %.lr.ph.i.i.i.i.i.i.i.i15.prol.loopexit ] ; 5 uses
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %.05.i.i.i.i.i.i.i.i16
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %.05.i.i.i.i.i.i.i.i16
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !64
  %i.hb = fdiv double 1.000000e+00, %i.ha
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %.05.i.i.i.i.i.i.i.i16
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !64
  %i.he = fmul double %i.hb, %i.hd
  store double %i.he, ptr %i.gy, align 8, !tbaa !64
  %i.hf = add nsw i64 %.05.i.i.i.i.i.i.i.i16, 1   ; 3 uses
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.hf
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.hf
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !64
  %i.hj = fdiv double 1.000000e+00, %i.hi
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.hf
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !64
  %i.hm = fmul double %i.hj, %i.hl
  store double %i.hm, ptr %i.hg, align 8, !tbaa !64
  %i.hn = add nsw i64 %.05.i.i.i.i.i.i.i.i16, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i17.1 = icmp eq i64 %i.hn, %i.fv
  br i1 %exitcond.not.i.i.i.i.i.i.i.i17.1, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEES2_Li1EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i15, !llvm.loop !628

.lr.ph.i.i.i.i.i.i.i18:                           ; preds = %bb.r, %.lr.ph.i.i.i.i.i.i.i18
  %.011.i.i.i.i.i.i.i19 = phi i64 [ %i.hv, %.lr.ph.i.i.i.i.i.i.i18 ], [ 0, %bb.r ] ; 4 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %.011.i.i.i.i.i.i.i19
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %.011.i.i.i.i.i.i.i19
  %i.hq = load <2 x double>, ptr %i.hp, align 16, !tbaa !91
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %.011.i.i.i.i.i.i.i19
  %i.hs = load <2 x double>, ptr %i.hr, align 16, !tbaa !91
  %i.ht = fdiv <2 x double> splat (double 1.000000e+00), %i.hs
  %i.hu = fmul <2 x double> %i.hq, %i.ht
  store <2 x double> %i.hu, ptr %i.ho, align 16, !tbaa !91
  %i.hv = add nuw nsw i64 %.011.i.i.i.i.i.i.i19, 2 ; 2 uses
  %i.hw = icmp slt i64 %i.hv, %i.fy
  br i1 %i.hw, label %.lr.ph.i.i.i.i.i.i.i18, label %._crit_edge.i.i.i.i.i.i.i14, !llvm.loop !578

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEES2_Li1EEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i15.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i15, %middle.block187, %._crit_edge.i.i.i.i.i.i.i14, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread
  %i.hx = load ptr, ptr %i.bm, align 8, !tbaa !153 ; 13 uses
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEES2_Li1EEEEERS2_RKNS_9DenseBaseIT_EE.exit
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !152 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !148
  %i.id = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !63
  %i.if = load i32, ptr %i.ia, align 4, !tbaa !63
  %i.ig = sub nsw i32 %i.ie, %i.if
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54

bb.t:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEES2_Li1EEEEERS2_RKNS_9DenseBaseIT_EE.exit
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !148 ; 11 uses
  %i.ij = icmp eq i64 %i.ii, 0
  br i1 %i.ij, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ik = ptrtoint ptr %i.hx to i64               ; 2 uses
  %i.il = and i64 %i.ik, 3
  %.not.i.i.i.i.i.i.i.i20 = icmp eq i64 %i.il, 0
  br i1 %.not.i.i.i.i.i.i.i.i20, label %bb.v, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i21

bb.v:                                             ; preds = %bb.u
  %i.im = lshr exact i64 %i.ik, 2
  %i.in = sub nsw i64 0, %i.im
  %i.io = and i64 %i.in, 3
  %i.ip = call i64 @llvm.smin.i64(i64 %i.io, i64 %i.ii)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i21

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i21: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i.i.i22 = phi i64 [ %i.ip, %bb.v ], [ %i.ii, %bb.u ] ; 12 uses
  %i.iq = sub nsw i64 %i.ii, %.0.i.i.i.i.i.i.i.i22 ; 5 uses
  %i.ir = sdiv i64 %i.iq, 8
  %i.is = shl nsw i64 %i.ir, 3                    ; 2 uses
  %i.it = sdiv i64 %i.iq, 4                       ; 2 uses
  %i.iu = shl nsw i64 %i.it, 2                    ; 2 uses
  %i.iv = add nsw i64 %i.is, %.0.i.i.i.i.i.i.i.i22 ; 2 uses
  %i.iw = add nsw i64 %i.iu, %.0.i.i.i.i.i.i.i.i22 ; 4 uses
  %.off.i.i.i.i23 = add i64 %i.iq, 3
  %.not.i.i.i.i24 = icmp ult i64 %.off.i.i.i.i23, 7
  br i1 %.not.i.i.i.i24, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i21
  %i.ix = getelementptr [4 x i8], ptr %i.hx, i64 %.0.i.i.i.i.i.i.i.i22 ; 2 uses
  %i.iy = load <2 x i64>, ptr %i.ix, align 1, !tbaa !91 ; 2 uses
  %i.iz = icmp sgt i64 %i.iq, 7
  br i1 %i.iz, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ja = getelementptr i8, ptr %i.ix, i64 16
  %i.jb = load <4 x i32>, ptr %i.ja, align 1, !tbaa !91 ; 2 uses
  %i.jc = bitcast <2 x i64> %i.iy to <4 x i32>    ; 2 uses
  %i.jd = icmp samesign ugt i64 %i.iq, 15
  br i1 %i.jd, label %.lr.ph.preheader.i.i.i.i43, label %._crit_edge.i.i.i.i40

.lr.ph.preheader.i.i.i.i43:                       ; preds = %bb.x
  %.05777.i.i.i.i44 = add nsw i64 %.0.i.i.i.i.i.i.i.i22, 8
  br label %.lr.ph.i.i.i.i45

._crit_edge.i.i.i.i40:                            ; preds = %.lr.ph.i.i.i.i45, %bb.x
  %.lcssa.i.i.i.i41 = phi <4 x i32> [ %i.jb, %bb.x ], [ %i.jo, %.lr.ph.i.i.i.i45 ]
  %.sroa.067.0.lcssa.i.i.i.i42 = phi <4 x i32> [ %i.jc, %bb.x ], [ %i.jk, %.lr.ph.i.i.i.i45 ]
  %i.je = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i42, %.lcssa.i.i.i.i41 ; 2 uses
  %i.jf = bitcast <4 x i32> %i.je to <2 x i64>
  %i.jg = icmp sgt i64 %i.iu, %i.is
  br i1 %i.jg, label %bb.y, label %bb.z

.lr.ph.i.i.i.i45:                                 ; preds = %.lr.ph.i.i.i.i45, %.lr.ph.preheader.i.i.i.i43
  %.05780.i.i.i.i46 = phi i64 [ %.057.i.i.i.i49, %.lr.ph.i.i.i.i45 ], [ %.05777.i.i.i.i44, %.lr.ph.preheader.i.i.i.i43 ] ; 3 uses
  %.057.in79.i.i.i.i47 = phi i64 [ %.05780.i.i.i.i46, %.lr.ph.i.i.i.i45 ], [ %.0.i.i.i.i.i.i.i.i22, %.lr.ph.preheader.i.i.i.i43 ]
  %.sroa.067.078.i.i.i.i48 = phi <4 x i32> [ %i.jk, %.lr.ph.i.i.i.i45 ], [ %i.jc, %.lr.ph.preheader.i.i.i.i43 ]
  %i.jh = phi <4 x i32> [ %i.jo, %.lr.ph.i.i.i.i45 ], [ %i.jb, %.lr.ph.preheader.i.i.i.i43 ]
  %i.ji = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %.05780.i.i.i.i46
  %i.jj = load <4 x i32>, ptr %i.ji, align 1, !tbaa !91
  %i.jk = add <4 x i32> %i.jj, %.sroa.067.078.i.i.i.i48 ; 2 uses
  %i.jl = getelementptr [4 x i8], ptr %i.hx, i64 %.057.in79.i.i.i.i47
  %i.jm = getelementptr i8, ptr %i.jl, i64 48
  %i.jn = load <4 x i32>, ptr %i.jm, align 1, !tbaa !91
  %i.jo = add <4 x i32> %i.jn, %i.jh              ; 2 uses
  %.057.i.i.i.i49 = add nsw i64 %.05780.i.i.i.i46, 8 ; 2 uses
  %i.jp = icmp slt i64 %.057.i.i.i.i49, %i.iv
  br i1 %i.jp, label %.lr.ph.i.i.i.i45, label %._crit_edge.i.i.i.i40, !llvm.loop !569

bb.y:                                             ; preds = %._crit_edge.i.i.i.i40
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.iv
  %i.jr = load <4 x i32>, ptr %i.jq, align 1, !tbaa !91
  %i.js = add <4 x i32> %i.jr, %i.je
  %i.jt = bitcast <4 x i32> %i.js to <2 x i64>
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i.i.i40, %bb.w
  %.sroa.067.2.i.i.i.i25 = phi <2 x i64> [ %i.iy, %bb.w ], [ %i.jt, %bb.y ], [ %i.jf, %._crit_edge.i.i.i.i40 ] ; 2 uses
  %i.ju = bitcast <2 x i64> %.sroa.067.2.i.i.i.i25 to <4 x i32>
  %i.jv = bitcast <2 x i64> %.sroa.067.2.i.i.i.i25 to <4 x i32> ; 2 uses
  %i.jw = shufflevector <4 x i32> %i.jv, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.jx = add <4 x i32> %i.jw, %i.ju              ; 2 uses
  %shift239 = shufflevector <4 x i32> %i.jx, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop240 = add nsw <4 x i32> %i.jx, %shift239
  %6 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.jv) ; 2 uses
  %i.jy = icmp sgt i64 %.0.i.i.i.i.i.i.i.i22, 0
  br i1 %i.jy, label %.lr.ph85.i.i.i.i36.preheader, label %.preheader.i.i.i.i28

.lr.ph85.i.i.i.i36.preheader:                     ; preds = %bb.z
  %min.iters.check191 = icmp ult i64 %.0.i.i.i.i.i.i.i.i22, 8
  br i1 %min.iters.check191, label %.lr.ph85.i.i.i.i36.preheader250, label %vector.ph192

vector.ph192:                                     ; preds = %.lr.ph85.i.i.i.i36.preheader
  %n.vec193 = and i64 %.0.i.i.i.i.i.i.i.i22, 9223372036854775800 ; 3 uses
  %i.jz = shufflevector <4 x i32> %foldExtExtBinop240, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph192
  %index195 = phi i64 [ 0, %vector.ph192 ], [ %index.next200, %vector.body194 ] ; 2 uses
  %vec.phi196 = phi <4 x i32> [ %i.jz, %vector.ph192 ], [ %i.kc, %vector.body194 ]
  %vec.phi197 = phi <4 x i32> [ zeroinitializer, %vector.ph192 ], [ %i.kd, %vector.body194 ]
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %index195 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %wide.load198 = load <4 x i32>, ptr %i.ka, align 4, !tbaa !63
  %wide.load199 = load <4 x i32>, ptr %i.kb, align 4, !tbaa !63
  %i.kc = add <4 x i32> %wide.load198, %vec.phi196 ; 2 uses
  %i.kd = add <4 x i32> %wide.load199, %vec.phi197 ; 2 uses
  %index.next200 = add nuw i64 %index195, 8       ; 2 uses
  %i.ke = icmp eq i64 %index.next200, %n.vec193
  br i1 %i.ke, label %middle.block201, label %vector.body194, !llvm.loop !629

middle.block201:                                  ; preds = %vector.body194
  %bin.rdx202 = add <4 x i32> %i.kd, %i.kc
  %i.kf = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx202) ; 2 uses
  %cmp.n203 = icmp eq i64 %.0.i.i.i.i.i.i.i.i22, %n.vec193
  br i1 %cmp.n203, label %.preheader.i.i.i.i28, label %.lr.ph85.i.i.i.i36.preheader250

.lr.ph85.i.i.i.i36.preheader250:                  ; preds = %.lr.ph85.i.i.i.i36.preheader, %middle.block201
  %.05683.i.i.i.i37.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i36.preheader ], [ %n.vec193, %middle.block201 ]
  %.07582.i.i.i.i38.ph = phi i32 [ %6, %.lr.ph85.i.i.i.i36.preheader ], [ %i.kf, %middle.block201 ]
  br label %.lr.ph85.i.i.i.i36

.preheader.i.i.i.i28:                             ; preds = %.lr.ph85.i.i.i.i36, %middle.block201, %bb.z
  %.075.lcssa.i.i.i.i29 = phi i32 [ %6, %bb.z ], [ %i.kf, %middle.block201 ], [ %i.kv, %.lr.ph85.i.i.i.i36 ] ; 3 uses
  %i.kg = icmp slt i64 %i.iw, %i.ii
  br i1 %i.kg, label %.lr.ph89.i.i.i.i33.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54

.lr.ph89.i.i.i.i33.preheader:                     ; preds = %.preheader.i.i.i.i28
  %i.kh = shl nsw i64 %i.it, 2
  %i.ki = add i64 %.0.i.i.i.i.i.i.i.i22, %i.kh
  %i.kj = sub i64 %i.ii, %i.ki                    ; 3 uses
  %min.iters.check207 = icmp ult i64 %i.kj, 8
  br i1 %min.iters.check207, label %.lr.ph89.i.i.i.i33.preheader245, label %vector.ph208

vector.ph208:                                     ; preds = %.lr.ph89.i.i.i.i33.preheader
  %n.vec209 = and i64 %i.kj, -8                   ; 3 uses
  %i.kk = add i64 %i.iw, %n.vec209
  %i.kl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i29, i64 0
  %i.km = getelementptr [4 x i8], ptr %i.hx, i64 %i.iw
  br label %vector.body210

vector.body210:                                   ; preds = %vector.body210, %vector.ph208
  %index211 = phi i64 [ 0, %vector.ph208 ], [ %index.next216, %vector.body210 ] ; 2 uses
  %vec.phi212 = phi <4 x i32> [ %i.kl, %vector.ph208 ], [ %i.kp, %vector.body210 ]
  %vec.phi213 = phi <4 x i32> [ zeroinitializer, %vector.ph208 ], [ %i.kq, %vector.body210 ]
  %i.kn = getelementptr [4 x i8], ptr %i.km, i64 %index211 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %wide.load214 = load <4 x i32>, ptr %i.kn, align 4, !tbaa !63
  %wide.load215 = load <4 x i32>, ptr %i.ko, align 4, !tbaa !63
  %i.kp = add <4 x i32> %wide.load214, %vec.phi212 ; 2 uses
  %i.kq = add <4 x i32> %wide.load215, %vec.phi213 ; 2 uses
  %index.next216 = add nuw i64 %index211, 8       ; 2 uses
  %i.kr = icmp eq i64 %index.next216, %n.vec209
  br i1 %i.kr, label %middle.block217, label %vector.body210, !llvm.loop !630

middle.block217:                                  ; preds = %vector.body210
  %bin.rdx218 = add <4 x i32> %i.kq, %i.kp
  %i.ks = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx218) ; 2 uses
  %cmp.n219 = icmp eq i64 %i.kj, %n.vec209
  br i1 %cmp.n219, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54, label %.lr.ph89.i.i.i.i33.preheader245

.lr.ph89.i.i.i.i33.preheader245:                  ; preds = %.lr.ph89.i.i.i.i33.preheader, %middle.block217
  %.05588.i.i.i.i34.ph = phi i64 [ %i.iw, %.lr.ph89.i.i.i.i33.preheader ], [ %i.kk, %middle.block217 ]
  %.187.i.i.i.i35.ph = phi i32 [ %.075.lcssa.i.i.i.i29, %.lr.ph89.i.i.i.i33.preheader ], [ %i.ks, %middle.block217 ]
  br label %.lr.ph89.i.i.i.i33

.lr.ph85.i.i.i.i36:                               ; preds = %.lr.ph85.i.i.i.i36.preheader250, %.lr.ph85.i.i.i.i36
  %.05683.i.i.i.i37 = phi i64 [ %i.kw, %.lr.ph85.i.i.i.i36 ], [ %.05683.i.i.i.i37.ph, %.lr.ph85.i.i.i.i36.preheader250 ] ; 2 uses
  %.07582.i.i.i.i38 = phi i32 [ %i.kv, %.lr.ph85.i.i.i.i36 ], [ %.07582.i.i.i.i38.ph, %.lr.ph85.i.i.i.i36.preheader250 ]
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %.05683.i.i.i.i37
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !63
  %i.kv = add nsw i32 %i.ku, %.07582.i.i.i.i38    ; 2 uses
  %i.kw = add nuw nsw i64 %.05683.i.i.i.i37, 1    ; 2 uses
  %exitcond.not.i.i.i.i39 = icmp eq i64 %i.kw, %.0.i.i.i.i.i.i.i.i22
  br i1 %exitcond.not.i.i.i.i39, label %.preheader.i.i.i.i28, label %.lr.ph85.i.i.i.i36, !llvm.loop !631

.lr.ph89.i.i.i.i33:                               ; preds = %.lr.ph89.i.i.i.i33.preheader245, %.lr.ph89.i.i.i.i33
  %.05588.i.i.i.i34 = phi i64 [ %i.la, %.lr.ph89.i.i.i.i33 ], [ %.05588.i.i.i.i34.ph, %.lr.ph89.i.i.i.i33.preheader245 ] ; 2 uses
  %.187.i.i.i.i35 = phi i32 [ %i.kz, %.lr.ph89.i.i.i.i33 ], [ %.187.i.i.i.i35.ph, %.lr.ph89.i.i.i.i33.preheader245 ]
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %.05588.i.i.i.i34
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !63
  %i.kz = add nsw i32 %i.ky, %.187.i.i.i.i35      ; 2 uses
  %i.la = add nsw i64 %.05588.i.i.i.i34, 1        ; 2 uses
  %i.lb = icmp slt i64 %i.la, %i.ii
  br i1 %i.lb, label %.lr.ph89.i.i.i.i33, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54, !llvm.loop !632

bb.aa:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i21
  %i.lc = load i32, ptr %i.hx, align 4, !tbaa !63 ; 3 uses
  %i.ld = icmp sgt i64 %i.ii, 1
  br i1 %i.ld, label %.lr.ph94.i.i.i.i50.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54

.lr.ph94.i.i.i.i50.preheader:                     ; preds = %bb.aa
  %i.le = add nsw i64 %i.ii, -1                   ; 2 uses
  %min.iters.check223 = icmp ult i64 %i.ii, 9
  br i1 %min.iters.check223, label %.lr.ph94.i.i.i.i50.preheader242, label %vector.ph224

vector.ph224:                                     ; preds = %.lr.ph94.i.i.i.i50.preheader
  %n.vec225 = and i64 %i.le, -8                   ; 3 uses
  %i.lf = or disjoint i64 %n.vec225, 1
  %i.lg = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.lc, i64 0
  br label %vector.body226

vector.body226:                                   ; preds = %vector.body226, %vector.ph224
  %index227 = phi i64 [ 0, %vector.ph224 ], [ %index.next232, %vector.body226 ] ; 2 uses
  %vec.phi228 = phi <4 x i32> [ %i.lg, %vector.ph224 ], [ %i.lk, %vector.body226 ]
  %vec.phi229 = phi <4 x i32> [ zeroinitializer, %vector.ph224 ], [ %i.ll, %vector.body226 ]
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %index227 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 20
  %wide.load230 = load <4 x i32>, ptr %i.li, align 4, !tbaa !63
  %wide.load231 = load <4 x i32>, ptr %i.lj, align 4, !tbaa !63
  %i.lk = add <4 x i32> %wide.load230, %vec.phi228 ; 2 uses
  %i.ll = add <4 x i32> %wide.load231, %vec.phi229 ; 2 uses
  %index.next232 = add nuw i64 %index227, 8       ; 2 uses
  %i.lm = icmp eq i64 %index.next232, %n.vec225
  br i1 %i.lm, label %middle.block233, label %vector.body226, !llvm.loop !633

middle.block233:                                  ; preds = %vector.body226
  %bin.rdx234 = add <4 x i32> %i.ll, %i.lk
  %i.ln = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx234) ; 2 uses
  %cmp.n235 = icmp eq i64 %i.le, %n.vec225
  br i1 %cmp.n235, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54, label %.lr.ph94.i.i.i.i50.preheader242

.lr.ph94.i.i.i.i50.preheader242:                  ; preds = %.lr.ph94.i.i.i.i50.preheader, %middle.block233
  %.092.i.i.i.i51.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i50.preheader ], [ %i.lf, %middle.block233 ]
  %.291.i.i.i.i52.ph = phi i32 [ %i.lc, %.lr.ph94.i.i.i.i50.preheader ], [ %i.ln, %middle.block233 ]
  br label %.lr.ph94.i.i.i.i50

.lr.ph94.i.i.i.i50:                               ; preds = %.lr.ph94.i.i.i.i50.preheader242, %.lr.ph94.i.i.i.i50
  %.092.i.i.i.i51 = phi i64 [ %i.lr, %.lr.ph94.i.i.i.i50 ], [ %.092.i.i.i.i51.ph, %.lr.ph94.i.i.i.i50.preheader242 ] ; 2 uses
  %.291.i.i.i.i52 = phi i32 [ %i.lq, %.lr.ph94.i.i.i.i50 ], [ %.291.i.i.i.i52.ph, %.lr.ph94.i.i.i.i50.preheader242 ]
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %.092.i.i.i.i51
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !63
  %i.lq = add nsw i32 %i.lp, %.291.i.i.i.i52      ; 2 uses
  %i.lr = add nuw nsw i64 %.092.i.i.i.i51, 1      ; 2 uses
  %exitcond102.not.i.i.i.i53 = icmp eq i64 %i.lr, %i.ii
  br i1 %exitcond102.not.i.i.i.i53, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54, label %.lr.ph94.i.i.i.i50, !llvm.loop !634

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54: ; preds = %.lr.ph89.i.i.i.i33, %.lr.ph94.i.i.i.i50, %middle.block217, %middle.block233, %.preheader.i.i.i.i28, %bb.aa, %bb.s
  %.0.i32.in = phi i32 [ %i.ig, %bb.s ], [ %i.lq, %.lr.ph94.i.i.i.i50 ], [ %.075.lcssa.i.i.i.i29, %.preheader.i.i.i.i28 ], [ %i.lc, %bb.aa ], [ %i.ln, %middle.block233 ], [ %i.ks, %middle.block217 ], [ %i.kz, %.lr.ph89.i.i.i.i33 ]
  %i.ls = icmp sgt i32 %.0.i32.in, 0
  br i1 %i.ls, label %bb.ab, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54.thread

bb.ab:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i8 0, ptr %4, align 8, !tbaa !635, !alias.scope !637
  %i.lt = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 0, ptr %i.lt, align 8, !alias.scope !637
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.bl, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !637
  call void @_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi6ELi2ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(16) %i.lt, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54.thread

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54.thread: ; preds = %bb.t, %bb.ab, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54
  %i.lu = load i64, ptr %i.d, align 8, !tbaa !14
  %i.lv = icmp sgt i64 %i.lu, 0
  br i1 %i.lv, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54.thread
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !14 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !72
  %.not.i.i.i.i.i57 = icmp eq i64 %i.ma, %i.ly
  br i1 %.not.i.i.i.i.i57, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.ly, i64 noundef 1)
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %bb.ac, %bb.ad
  call void @_ZN5Eigen8internal26permutation_matrix_productINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi1ELb0ENS_10DenseShapeEE3runIS3_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.lw, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj5ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEvRNS_10MatrixBaseIT_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !642, !nonnull !71, !align !122 ; 5 uses
end_hunk_3
begin_hunk_4_@_ZN5Eigen8internal43conservative_sparse_sparse_product_selectorINS_12SparseMatrixIdLi0EiEES3_S3_Li0ELi0ELi0EE3runERKS3_S6_RS3_:bb.a
  br label %bb.z

bb.z:                                             ; preds = %.body, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bc, %bb.x ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %common.resume

bb.aa:                                            ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit21, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5Eigen8internalL39conservative_sparse_sparse_product_implINS_12SparseMatrixIdLi0EiEES3_S3_EEvRKT_RKT0_RT1_b(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 noundef zeroext %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !128  ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !148  ; 14 uses
  %i.e = icmp ugt i64 %i.b, 131072                ; 5 uses
  br i1 %i.e, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.b) #24 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !73
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.b
  %i.i = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.i, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.j = shl nuw i64 %i.b, 3
  br label %bb.e

bb.d:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc142 unwind label %.split

.noexc142:                                        ; preds = %bb.d
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.l = add nuw nsw i64 %i.b, 15
  %i.m = alloca i8, i64 %i.l, align 16            ; 2 uses
  %i.n = shl nuw nsw i64 %i.b, 3                  ; 3 uses
  %i.o = icmp samesign ult i64 %i.b, 16385
  br i1 %i.o, label %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread, label %bb.e

_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.p = add nuw nsw i64 %i.n, 15
  %i.q = alloca i8, i64 %i.p, align 16
  %i.r = add nuw nsw i64 %i.n, 15
  %i.s = alloca i8, i64 %i.r, align 16
  br label %bb.h

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.t = phi i64 [ %i.j, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread ], [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ] ; 2 uses
  %i.u = phi ptr [ %i.f, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread ], [ %i.m, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ] ; 3 uses
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.t) #24 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit

bb.f:                                             ; preds = %bb.e
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc144 unwind label %.split263

.noexc144:                                        ; preds = %bb.f
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit: ; preds = %bb.e
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.t) #24 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aa, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc149 unwind label %.split268

.noexc149:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread
  %i.ab = phi i1 [ false, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread ], [ true, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit ] ; 2 uses
  %i.ac = phi ptr [ %i.q, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread ], [ %i.v, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit ] ; 7 uses
  %i.ad = phi ptr [ %i.m, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread ], [ %i.u, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit ] ; 7 uses
  %i.ae = phi ptr [ %i.s, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread ], [ %i.y, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit ] ; 8 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ad, i8 0, i64 %i.b, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !153 ; 13 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !152 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !148
  %i.am = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !63
  %i.ao = load i32, ptr %i.aj, align 4, !tbaa !63
  %i.ap = sub nsw i32 %i.an, %i.ao
  %i.aq = sext i32 %i.ap to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !148 ; 11 uses
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
  %i.bi = load <2 x i64>, ptr %i.bh, align 1, !tbaa !91 ; 2 uses
  %i.bj = icmp sgt i64 %i.ba, 7
  br i1 %i.bj, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr i8, ptr %i.bh, i64 16
  %i.bl = load <4 x i32>, ptr %i.bk, align 1, !tbaa !91 ; 2 uses
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
  %i.bt = load <4 x i32>, ptr %i.bs, align 1, !tbaa !91
  %i.bu = add <4 x i32> %i.bt, %.sroa.067.078.i.i.i.i.i ; 2 uses
  %i.bv = getelementptr [4 x i8], ptr %i.ag, i64 %.057.in79.i.i.i.i.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 48
  %i.bx = load <4 x i32>, ptr %i.bw, align 1, !tbaa !91
  %i.by = add <4 x i32> %i.bx, %i.br              ; 2 uses
  %.057.i.i.i.i.i = add nsw i64 %.05780.i.i.i.i.i, 8 ; 2 uses
  %i.bz = icmp slt i64 %.057.i.i.i.i.i, %i.bf
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !569

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.bf
  %i.cb = load <4 x i32>, ptr %i.ca, align 1, !tbaa !91
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
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.i.preheader518, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.cj = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cj, %vector.ph ], [ %i.cm, %vector.body ]
  %vec.phi394 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cn, %vector.body ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %wide.load = load <4 x i32>, ptr %i.ck, align 4, !tbaa !63
  %wide.load395 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !63
  %i.cm = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.cn = add <4 x i32> %wide.load395, %vec.phi394 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !860

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cn, %i.cm
  %i.cp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.preheader518

.lr.ph85.i.i.i.i.i.preheader518:                  ; preds = %.lr.ph85.i.i.i.i.i.preheader, %middle.block
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
  %min.iters.check397 = icmp ult i64 %i.ct, 8
  br i1 %min.iters.check397, label %.lr.ph89.i.i.i.i.i.preheader513, label %vector.ph398

vector.ph398:                                     ; preds = %.lr.ph89.i.i.i.i.i.preheader
  %n.vec399 = and i64 %i.ct, -8                   ; 3 uses
  %i.cu = add i64 %i.bg, %n.vec399
  %i.cv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i.i, i64 0
  %i.cw = getelementptr [4 x i8], ptr %i.ag, i64 %i.bg
  br label %vector.body400

vector.body400:                                   ; preds = %vector.body400, %vector.ph398
  %index401 = phi i64 [ 0, %vector.ph398 ], [ %index.next406, %vector.body400 ] ; 2 uses
  %vec.phi402 = phi <4 x i32> [ %i.cv, %vector.ph398 ], [ %i.cz, %vector.body400 ]
  %vec.phi403 = phi <4 x i32> [ zeroinitializer, %vector.ph398 ], [ %i.da, %vector.body400 ]
  %i.cx = getelementptr [4 x i8], ptr %i.cw, i64 %index401 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load404 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !63
  %wide.load405 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !63
  %i.cz = add <4 x i32> %wide.load404, %vec.phi402 ; 2 uses
  %i.da = add <4 x i32> %wide.load405, %vec.phi403 ; 2 uses
  %index.next406 = add nuw i64 %index401, 8       ; 2 uses
  %i.db = icmp eq i64 %index.next406, %n.vec399
  br i1 %i.db, label %middle.block407, label %vector.body400, !llvm.loop !861

middle.block407:                                  ; preds = %vector.body400
  %bin.rdx408 = add <4 x i32> %i.da, %i.cz
  %i.dc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx408) ; 2 uses
  %cmp.n409 = icmp eq i64 %i.ct, %n.vec399
  br i1 %cmp.n409, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph89.i.i.i.i.i.preheader513

.lr.ph89.i.i.i.i.i.preheader513:                  ; preds = %.lr.ph89.i.i.i.i.i.preheader, %middle.block407
  %.05588.i.i.i.i.i.ph = phi i64 [ %i.bg, %.lr.ph89.i.i.i.i.i.preheader ], [ %i.cu, %middle.block407 ]
  %.187.i.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i.i, %.lr.ph89.i.i.i.i.i.preheader ], [ %i.dc, %middle.block407 ]
  br label %.lr.ph89.i.i.i.i.i

.lr.ph85.i.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i.i.preheader518, %.lr.ph85.i.i.i.i.i
  %.05683.i.i.i.i.i = phi i64 [ %i.dg, %.lr.ph85.i.i.i.i.i ], [ %.05683.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.preheader518 ] ; 2 uses
  %.07582.i.i.i.i.i = phi i32 [ %i.df, %.lr.ph85.i.i.i.i.i ], [ %.07582.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.preheader518 ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.05683.i.i.i.i.i
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !63
  %i.df = add nsw i32 %i.de, %.07582.i.i.i.i.i    ; 2 uses
  %i.dg = add nuw nsw i64 %.05683.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.dg, %.0.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i, !llvm.loop !862

.lr.ph89.i.i.i.i.i:                               ; preds = %.lr.ph89.i.i.i.i.i.preheader513, %.lr.ph89.i.i.i.i.i
  %.05588.i.i.i.i.i = phi i64 [ %i.dk, %.lr.ph89.i.i.i.i.i ], [ %.05588.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader513 ] ; 2 uses
  %.187.i.i.i.i.i = phi i32 [ %i.dj, %.lr.ph89.i.i.i.i.i ], [ %.187.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader513 ]
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %.05588.i.i.i.i.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !63
  %i.dj = add nsw i32 %i.di, %.187.i.i.i.i.i      ; 2 uses
  %i.dk = add nsw i64 %.05588.i.i.i.i.i, 1        ; 2 uses
  %i.dl = icmp slt i64 %i.dk, %i.as
  br i1 %i.dl, label %.lr.ph89.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, !llvm.loop !863

bb.q:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i
  %i.dm = load i32, ptr %i.ag, align 4, !tbaa !63 ; 3 uses
  %i.dn = icmp sgt i64 %i.as, 1
  br i1 %i.dn, label %.lr.ph94.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i

.lr.ph94.i.i.i.i.i.preheader:                     ; preds = %bb.q
  %i.do = add nsw i64 %i.as, -1                   ; 2 uses
  %min.iters.check413 = icmp ult i64 %i.as, 9
  br i1 %min.iters.check413, label %.lr.ph94.i.i.i.i.i.preheader509, label %vector.ph414

vector.ph414:                                     ; preds = %.lr.ph94.i.i.i.i.i.preheader
  %n.vec415 = and i64 %i.do, -8                   ; 3 uses
  %i.dp = or disjoint i64 %n.vec415, 1
  %i.dq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.dm, i64 0
  br label %vector.body416

vector.body416:                                   ; preds = %vector.body416, %vector.ph414
  %index417 = phi i64 [ 0, %vector.ph414 ], [ %index.next422, %vector.body416 ] ; 2 uses
  %vec.phi418 = phi <4 x i32> [ %i.dq, %vector.ph414 ], [ %i.du, %vector.body416 ]
  %vec.phi419 = phi <4 x i32> [ zeroinitializer, %vector.ph414 ], [ %i.dv, %vector.body416 ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index417 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  %wide.load420 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !63
  %wide.load421 = load <4 x i32>, ptr %i.dt, align 4, !tbaa !63
  %i.du = add <4 x i32> %wide.load420, %vec.phi418 ; 2 uses
  %i.dv = add <4 x i32> %wide.load421, %vec.phi419 ; 2 uses
  %index.next422 = add nuw i64 %index417, 8       ; 2 uses
  %i.dw = icmp eq i64 %index.next422, %n.vec415
  br i1 %i.dw, label %middle.block423, label %vector.body416, !llvm.loop !864

middle.block423:                                  ; preds = %vector.body416
  %bin.rdx424 = add <4 x i32> %i.dv, %i.du
  %i.dx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx424) ; 2 uses
  %cmp.n425 = icmp eq i64 %i.do, %n.vec415
  br i1 %cmp.n425, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i.preheader509

.lr.ph94.i.i.i.i.i.preheader509:                  ; preds = %.lr.ph94.i.i.i.i.i.preheader, %middle.block423
  %.092.i.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.i.preheader ], [ %i.dp, %middle.block423 ]
  %.291.i.i.i.i.i.ph = phi i32 [ %i.dm, %.lr.ph94.i.i.i.i.i.preheader ], [ %i.dx, %middle.block423 ]
  br label %.lr.ph94.i.i.i.i.i

.lr.ph94.i.i.i.i.i:                               ; preds = %.lr.ph94.i.i.i.i.i.preheader509, %.lr.ph94.i.i.i.i.i
  %.092.i.i.i.i.i = phi i64 [ %i.eb, %.lr.ph94.i.i.i.i.i ], [ %.092.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.preheader509 ] ; 2 uses
  %.291.i.i.i.i.i = phi i32 [ %i.ea, %.lr.ph94.i.i.i.i.i ], [ %.291.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.preheader509 ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.092.i.i.i.i.i
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !63
  %i.ea = add nsw i32 %i.dz, %.291.i.i.i.i.i      ; 2 uses
  %i.eb = add nuw nsw i64 %.092.i.i.i.i.i, 1      ; 2 uses
  %exitcond102.not.i.i.i.i.i = icmp eq i64 %i.eb, %i.as
  br i1 %exitcond102.not.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i, !llvm.loop !865

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i: ; preds = %.lr.ph89.i.i.i.i.i, %.lr.ph94.i.i.i.i.i, %middle.block407, %middle.block423, %bb.q, %.preheader.i.i.i.i.i
  %.0.i.i.i = phi i32 [ %i.ea, %.lr.ph94.i.i.i.i.i ], [ %.075.lcssa.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.dm, %bb.q ], [ %i.dx, %middle.block423 ], [ %i.dc, %middle.block407 ], [ %i.dj, %.lr.ph89.i.i.i.i.i ]
  %i.ec = sext i32 %.0.i.i.i to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit

_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, %bb.j, %bb.i
  %.0.i.i = phi i64 [ %i.aq, %bb.i ], [ %i.ec, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i ], [ 0, %bb.j ]
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !153 ; 13 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !152 ; 2 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.d
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !63
  %i.ek = load i32, ptr %i.eh, align 4, !tbaa !63
  %i.el = sub nsw i32 %i.ej, %i.ek
  %i.em = sext i32 %i.el to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit185

bb.s:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit
  %i.en = icmp eq i64 %i.d, 0
  br i1 %i.en, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit185, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eo = ptrtoint ptr %i.ee to i64               ; 2 uses
  %i.ep = and i64 %i.eo, 3
  %.not.i.i.i.i.i.i.i.i.i151 = icmp eq i64 %i.ep, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i151, label %bb.u, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i152

bb.u:                                             ; preds = %bb.t
  %i.eq = lshr exact i64 %i.eo, 2
  %i.er = sub nsw i64 0, %i.eq
  %i.es = and i64 %i.er, 3
  %i.et = tail call i64 @llvm.smin.i64(i64 %i.es, i64 %i.d)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i152

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i152: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i.i.i153 = phi i64 [ %i.et, %bb.u ], [ %i.d, %bb.t ] ; 12 uses
  %i.eu = sub nsw i64 %i.d, %.0.i.i.i.i.i.i.i.i.i153 ; 5 uses
  %i.ev = sdiv i64 %i.eu, 8
  %i.ew = shl nsw i64 %i.ev, 3                    ; 2 uses
  %i.ex = sdiv i64 %i.eu, 4                       ; 2 uses
  %i.ey = shl nsw i64 %i.ex, 2                    ; 2 uses
  %i.ez = add nsw i64 %i.ew, %.0.i.i.i.i.i.i.i.i.i153 ; 2 uses
  %i.fa = add nsw i64 %i.ey, %.0.i.i.i.i.i.i.i.i.i153 ; 4 uses
  %.off.i.i.i.i.i154 = add i64 %i.eu, 3
  %.not.i.i.i.i.i155 = icmp ult i64 %.off.i.i.i.i.i154, 7
  br i1 %.not.i.i.i.i.i155, label %bb.z, label %bb.v

bb.v:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i152
  %i.fb = getelementptr [4 x i8], ptr %i.ee, i64 %.0.i.i.i.i.i.i.i.i.i153 ; 2 uses
  %i.fc = load <2 x i64>, ptr %i.fb, align 1, !tbaa !91 ; 2 uses
  %i.fd = icmp sgt i64 %i.eu, 7
  br i1 %i.fd, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.fe = getelementptr i8, ptr %i.fb, i64 16
  %i.ff = load <4 x i32>, ptr %i.fe, align 1, !tbaa !91 ; 2 uses
  %i.fg = bitcast <2 x i64> %i.fc to <4 x i32>    ; 2 uses
  %i.fh = icmp samesign ugt i64 %i.eu, 15
  br i1 %i.fh, label %.lr.ph.preheader.i.i.i.i.i174, label %._crit_edge.i.i.i.i.i171

.lr.ph.preheader.i.i.i.i.i174:                    ; preds = %bb.w
  %.05777.i.i.i.i.i175 = add nsw i64 %.0.i.i.i.i.i.i.i.i.i153, 8
  br label %.lr.ph.i.i.i.i.i176

._crit_edge.i.i.i.i.i171:                         ; preds = %.lr.ph.i.i.i.i.i176, %bb.w
  %.lcssa.i.i.i.i.i172 = phi <4 x i32> [ %i.ff, %bb.w ], [ %i.fs, %.lr.ph.i.i.i.i.i176 ]
  %.sroa.067.0.lcssa.i.i.i.i.i173 = phi <4 x i32> [ %i.fg, %bb.w ], [ %i.fo, %.lr.ph.i.i.i.i.i176 ]
  %i.fi = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i.i173, %.lcssa.i.i.i.i.i172 ; 2 uses
  %i.fj = bitcast <4 x i32> %i.fi to <2 x i64>
  %i.fk = icmp sgt i64 %i.ey, %i.ew
  br i1 %i.fk, label %bb.x, label %bb.y

.lr.ph.i.i.i.i.i176:                              ; preds = %.lr.ph.i.i.i.i.i176, %.lr.ph.preheader.i.i.i.i.i174
  %.05780.i.i.i.i.i177 = phi i64 [ %.057.i.i.i.i.i180, %.lr.ph.i.i.i.i.i176 ], [ %.05777.i.i.i.i.i175, %.lr.ph.preheader.i.i.i.i.i174 ] ; 3 uses
  %.057.in79.i.i.i.i.i178 = phi i64 [ %.05780.i.i.i.i.i177, %.lr.ph.i.i.i.i.i176 ], [ %.0.i.i.i.i.i.i.i.i.i153, %.lr.ph.preheader.i.i.i.i.i174 ]
  %.sroa.067.078.i.i.i.i.i179 = phi <4 x i32> [ %i.fo, %.lr.ph.i.i.i.i.i176 ], [ %i.fg, %.lr.ph.preheader.i.i.i.i.i174 ]
  %i.fl = phi <4 x i32> [ %i.fs, %.lr.ph.i.i.i.i.i176 ], [ %i.ff, %.lr.ph.preheader.i.i.i.i.i174 ]
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %.05780.i.i.i.i.i177
  %i.fn = load <4 x i32>, ptr %i.fm, align 1, !tbaa !91
  %i.fo = add <4 x i32> %i.fn, %.sroa.067.078.i.i.i.i.i179 ; 2 uses
  %i.fp = getelementptr [4 x i8], ptr %i.ee, i64 %.057.in79.i.i.i.i.i178
  %i.fq = getelementptr i8, ptr %i.fp, i64 48
  %i.fr = load <4 x i32>, ptr %i.fq, align 1, !tbaa !91
  %i.fs = add <4 x i32> %i.fr, %i.fl              ; 2 uses
  %.057.i.i.i.i.i180 = add nsw i64 %.05780.i.i.i.i.i177, 8 ; 2 uses
  %i.ft = icmp slt i64 %.057.i.i.i.i.i180, %i.ez
  br i1 %i.ft, label %.lr.ph.i.i.i.i.i176, label %._crit_edge.i.i.i.i.i171, !llvm.loop !569

bb.x:                                             ; preds = %._crit_edge.i.i.i.i.i171
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.ez
  %i.fv = load <4 x i32>, ptr %i.fu, align 1, !tbaa !91
  %i.fw = add <4 x i32> %i.fv, %i.fi
  %i.fx = bitcast <4 x i32> %i.fw to <2 x i64>
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge.i.i.i.i.i171, %bb.v
  %.sroa.067.2.i.i.i.i.i156 = phi <2 x i64> [ %i.fc, %bb.v ], [ %i.fx, %bb.x ], [ %i.fj, %._crit_edge.i.i.i.i.i171 ] ; 2 uses
  %i.fy = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i156 to <4 x i32>
  %i.fz = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i156 to <4 x i32> ; 2 uses
  %i.ga = shufflevector <4 x i32> %i.fz, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.gb = add <4 x i32> %i.ga, %i.fy              ; 2 uses
  %shift487 = shufflevector <4 x i32> %i.gb, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop488 = add nsw <4 x i32> %i.gb, %shift487
  %5 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fz) ; 2 uses
  %i.gc = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i153, 0
  br i1 %i.gc, label %.lr.ph85.i.i.i.i.i167.preheader, label %.preheader.i.i.i.i.i159

.lr.ph85.i.i.i.i.i167.preheader:                  ; preds = %bb.y
  %min.iters.check429 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i153, 8
  br i1 %min.iters.check429, label %.lr.ph85.i.i.i.i.i167.preheader503, label %vector.ph430

vector.ph430:                                     ; preds = %.lr.ph85.i.i.i.i.i167.preheader
  %n.vec431 = and i64 %.0.i.i.i.i.i.i.i.i.i153, 9223372036854775800 ; 3 uses
  %i.gd = shufflevector <4 x i32> %foldExtExtBinop488, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body432

vector.body432:                                   ; preds = %vector.body432, %vector.ph430
  %index433 = phi i64 [ 0, %vector.ph430 ], [ %index.next438, %vector.body432 ] ; 2 uses
  %vec.phi434 = phi <4 x i32> [ %i.gd, %vector.ph430 ], [ %i.gg, %vector.body432 ]
  %vec.phi435 = phi <4 x i32> [ zeroinitializer, %vector.ph430 ], [ %i.gh, %vector.body432 ]
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %index433 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %wide.load436 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !63
  %wide.load437 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !63
  %i.gg = add <4 x i32> %wide.load436, %vec.phi434 ; 2 uses
  %i.gh = add <4 x i32> %wide.load437, %vec.phi435 ; 2 uses
  %index.next438 = add nuw i64 %index433, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next438, %n.vec431
  br i1 %i.gi, label %middle.block439, label %vector.body432, !llvm.loop !866

middle.block439:                                  ; preds = %vector.body432
  %bin.rdx440 = add <4 x i32> %i.gh, %i.gg
  %i.gj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx440) ; 2 uses
  %cmp.n441 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i153, %n.vec431
  br i1 %cmp.n441, label %.preheader.i.i.i.i.i159, label %.lr.ph85.i.i.i.i.i167.preheader503

.lr.ph85.i.i.i.i.i167.preheader503:               ; preds = %.lr.ph85.i.i.i.i.i167.preheader, %middle.block439
  %.05683.i.i.i.i.i168.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.i167.preheader ], [ %n.vec431, %middle.block439 ]
  %.07582.i.i.i.i.i169.ph = phi i32 [ %5, %.lr.ph85.i.i.i.i.i167.preheader ], [ %i.gj, %middle.block439 ]
  br label %.lr.ph85.i.i.i.i.i167

.preheader.i.i.i.i.i159:                          ; preds = %.lr.ph85.i.i.i.i.i167, %middle.block439, %bb.y
  %.075.lcssa.i.i.i.i.i160 = phi i32 [ %5, %bb.y ], [ %i.gj, %middle.block439 ], [ %i.gz, %.lr.ph85.i.i.i.i.i167 ] ; 3 uses
  %i.gk = icmp slt i64 %i.fa, %i.d
  br i1 %i.gk, label %.lr.ph89.i.i.i.i.i164.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i161

.lr.ph89.i.i.i.i.i164.preheader:                  ; preds = %.preheader.i.i.i.i.i159
  %i.gl = shl nsw i64 %i.ex, 2
  %i.gm = add i64 %.0.i.i.i.i.i.i.i.i.i153, %i.gl
  %i.gn = sub i64 %i.d, %i.gm                     ; 3 uses
  %min.iters.check445 = icmp ult i64 %i.gn, 8
  br i1 %min.iters.check445, label %.lr.ph89.i.i.i.i.i164.preheader498, label %vector.ph446

vector.ph446:                                     ; preds = %.lr.ph89.i.i.i.i.i164.preheader
  %n.vec447 = and i64 %i.gn, -8                   ; 3 uses
  %i.go = add i64 %i.fa, %n.vec447
  %i.gp = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i.i160, i64 0
  %i.gq = getelementptr [4 x i8], ptr %i.ee, i64 %i.fa
  br label %vector.body448

vector.body448:                                   ; preds = %vector.body448, %vector.ph446
  %index449 = phi i64 [ 0, %vector.ph446 ], [ %index.next454, %vector.body448 ] ; 2 uses
  %vec.phi450 = phi <4 x i32> [ %i.gp, %vector.ph446 ], [ %i.gt, %vector.body448 ]
  %vec.phi451 = phi <4 x i32> [ zeroinitializer, %vector.ph446 ], [ %i.gu, %vector.body448 ]
  %i.gr = getelementptr [4 x i8], ptr %i.gq, i64 %index449 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %wide.load452 = load <4 x i32>, ptr %i.gr, align 4, !tbaa !63
  %wide.load453 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !63
  %i.gt = add <4 x i32> %wide.load452, %vec.phi450 ; 2 uses
  %i.gu = add <4 x i32> %wide.load453, %vec.phi451 ; 2 uses
  %index.next454 = add nuw i64 %index449, 8       ; 2 uses
  %i.gv = icmp eq i64 %index.next454, %n.vec447
  br i1 %i.gv, label %middle.block455, label %vector.body448, !llvm.loop !867

middle.block455:                                  ; preds = %vector.body448
  %bin.rdx456 = add <4 x i32> %i.gu, %i.gt
  %i.gw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx456) ; 2 uses
  %cmp.n457 = icmp eq i64 %i.gn, %n.vec447
  br i1 %cmp.n457, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i161, label %.lr.ph89.i.i.i.i.i164.preheader498

.lr.ph89.i.i.i.i.i164.preheader498:               ; preds = %.lr.ph89.i.i.i.i.i164.preheader, %middle.block455
  %.05588.i.i.i.i.i165.ph = phi i64 [ %i.fa, %.lr.ph89.i.i.i.i.i164.preheader ], [ %i.go, %middle.block455 ]
  %.187.i.i.i.i.i166.ph = phi i32 [ %.075.lcssa.i.i.i.i.i160, %.lr.ph89.i.i.i.i.i164.preheader ], [ %i.gw, %middle.block455 ]
  br label %.lr.ph89.i.i.i.i.i164

.lr.ph85.i.i.i.i.i167:                            ; preds = %.lr.ph85.i.i.i.i.i167.preheader503, %.lr.ph85.i.i.i.i.i167
  %.05683.i.i.i.i.i168 = phi i64 [ %i.ha, %.lr.ph85.i.i.i.i.i167 ], [ %.05683.i.i.i.i.i168.ph, %.lr.ph85.i.i.i.i.i167.preheader503 ] ; 2 uses
  %.07582.i.i.i.i.i169 = phi i32 [ %i.gz, %.lr.ph85.i.i.i.i.i167 ], [ %.07582.i.i.i.i.i169.ph, %.lr.ph85.i.i.i.i.i167.preheader503 ]
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.05683.i.i.i.i.i168
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !63
  %i.gz = add nsw i32 %i.gy, %.07582.i.i.i.i.i169 ; 2 uses
  %i.ha = add nuw nsw i64 %.05683.i.i.i.i.i168, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i170 = icmp eq i64 %i.ha, %.0.i.i.i.i.i.i.i.i.i153
  br i1 %exitcond.not.i.i.i.i.i170, label %.preheader.i.i.i.i.i159, label %.lr.ph85.i.i.i.i.i167, !llvm.loop !868

.lr.ph89.i.i.i.i.i164:                            ; preds = %.lr.ph89.i.i.i.i.i164.preheader498, %.lr.ph89.i.i.i.i.i164
  %.05588.i.i.i.i.i165 = phi i64 [ %i.he, %.lr.ph89.i.i.i.i.i164 ], [ %.05588.i.i.i.i.i165.ph, %.lr.ph89.i.i.i.i.i164.preheader498 ] ; 2 uses
  %.187.i.i.i.i.i166 = phi i32 [ %i.hd, %.lr.ph89.i.i.i.i.i164 ], [ %.187.i.i.i.i.i166.ph, %.lr.ph89.i.i.i.i.i164.preheader498 ]
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %.05588.i.i.i.i.i165
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !63
  %i.hd = add nsw i32 %i.hc, %.187.i.i.i.i.i166   ; 2 uses
  %i.he = add nsw i64 %.05588.i.i.i.i.i165, 1     ; 2 uses
  %i.hf = icmp slt i64 %i.he, %i.d
  br i1 %i.hf, label %.lr.ph89.i.i.i.i.i164, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i161, !llvm.loop !869

bb.z:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i152
  %i.hg = load i32, ptr %i.ee, align 4, !tbaa !63 ; 3 uses
  %i.hh = icmp sgt i64 %i.d, 1
  br i1 %i.hh, label %.lr.ph94.i.i.i.i.i181.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i161

.lr.ph94.i.i.i.i.i181.preheader:                  ; preds = %bb.z
  %i.hi = add nsw i64 %i.d, -1                    ; 2 uses
  %min.iters.check461 = icmp ult i64 %i.d, 9
  br i1 %min.iters.check461, label %.lr.ph94.i.i.i.i.i181.preheader494, label %vector.ph462

vector.ph462:                                     ; preds = %.lr.ph94.i.i.i.i.i181.preheader
  %n.vec463 = and i64 %i.hi, -8                   ; 3 uses
  %i.hj = or disjoint i64 %n.vec463, 1
  %i.hk = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.hg, i64 0
  br label %vector.body464

vector.body464:                                   ; preds = %vector.body464, %vector.ph462
  %index465 = phi i64 [ 0, %vector.ph462 ], [ %index.next470, %vector.body464 ] ; 2 uses
  %vec.phi466 = phi <4 x i32> [ %i.hk, %vector.ph462 ], [ %i.ho, %vector.body464 ]
  %vec.phi467 = phi <4 x i32> [ zeroinitializer, %vector.ph462 ], [ %i.hp, %vector.body464 ]
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %index465 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 20
  %wide.load468 = load <4 x i32>, ptr %i.hm, align 4, !tbaa !63
  %wide.load469 = load <4 x i32>, ptr %i.hn, align 4, !tbaa !63
  %i.ho = add <4 x i32> %wide.load468, %vec.phi466 ; 2 uses
  %i.hp = add <4 x i32> %wide.load469, %vec.phi467 ; 2 uses
  %index.next470 = add nuw i64 %index465, 8       ; 2 uses
  %i.hq = icmp eq i64 %index.next470, %n.vec463
  br i1 %i.hq, label %middle.block471, label %vector.body464, !llvm.loop !870

middle.block471:                                  ; preds = %vector.body464
  %bin.rdx472 = add <4 x i32> %i.hp, %i.ho
  %i.hr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx472) ; 2 uses
  %cmp.n473 = icmp eq i64 %i.hi, %n.vec463
  br i1 %cmp.n473, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i161, label %.lr.ph94.i.i.i.i.i181.preheader494

.lr.ph94.i.i.i.i.i181.preheader494:               ; preds = %.lr.ph94.i.i.i.i.i181.preheader, %middle.block471
  %.092.i.i.i.i.i182.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.i181.preheader ], [ %i.hj, %middle.block471 ]
  %.291.i.i.i.i.i183.ph = phi i32 [ %i.hg, %.lr.ph94.i.i.i.i.i181.preheader ], [ %i.hr, %middle.block471 ]
  br label %.lr.ph94.i.i.i.i.i181

.lr.ph94.i.i.i.i.i181:                            ; preds = %.lr.ph94.i.i.i.i.i181.preheader494, %.lr.ph94.i.i.i.i.i181
  %.092.i.i.i.i.i182 = phi i64 [ %i.hv, %.lr.ph94.i.i.i.i.i181 ], [ %.092.i.i.i.i.i182.ph, %.lr.ph94.i.i.i.i.i181.preheader494 ] ; 2 uses
  %.291.i.i.i.i.i183 = phi i32 [ %i.hu, %.lr.ph94.i.i.i.i.i181 ], [ %.291.i.i.i.i.i183.ph, %.lr.ph94.i.i.i.i.i181.preheader494 ]
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.092.i.i.i.i.i182
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !63
  %i.hu = add nsw i32 %i.ht, %.291.i.i.i.i.i183   ; 2 uses
  %i.hv = add nuw nsw i64 %.092.i.i.i.i.i182, 1   ; 2 uses
  %exitcond102.not.i.i.i.i.i184 = icmp eq i64 %i.hv, %i.d
  br i1 %exitcond102.not.i.i.i.i.i184, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i161, label %.lr.ph94.i.i.i.i.i181, !llvm.loop !871

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i161: ; preds = %.lr.ph89.i.i.i.i.i164, %.lr.ph94.i.i.i.i.i181, %middle.block455, %middle.block471, %bb.z, %.preheader.i.i.i.i.i159
  %.0.i.i.i162 = phi i32 [ %i.hu, %.lr.ph94.i.i.i.i.i181 ], [ %.075.lcssa.i.i.i.i.i160, %.preheader.i.i.i.i.i159 ], [ %i.hg, %bb.z ], [ %i.hr, %middle.block471 ], [ %i.gw, %middle.block455 ], [ %i.hd, %.lr.ph89.i.i.i.i.i164 ]
  %i.hw = sext i32 %.0.i.i.i162 to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit185

_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit185: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i161, %bb.s, %bb.r
  %.0.i.i163 = phi i64 [ %i.em, %bb.r ], [ %i.hw, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i161 ], [ 0, %bb.s ]
  %i.hx = add nsw i64 %.0.i.i163, %.0.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 7 uses
  store i64 0, ptr %i.hy, align 8, !tbaa !839
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !152
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !148
  %i.id = shl i64 %i.ic, 2
  %i.ie = add i64 %i.id, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ia, i8 0, i64 %i.ie, i1 false)
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !153 ; 2 uses
  %.not.i = icmp eq ptr %i.ig, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit185
  %i.ih = load i64, ptr %i.ib, align 8, !tbaa !148
  %i.ii = shl i64 %i.ih, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ig, i8 0, i64 %i.ii, i1 false)
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit

_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit:   ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit185, %bb.aa
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 9 uses
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.ij, i64 noundef %i.hx)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit.preheader unwind label %bb.ae

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit.preheader: ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit
  %i.ik = icmp sgt i64 %i.d, 0
  br i1 %i.ik, label %.lr.ph310, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge

.lr.ph310:                                        ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit.preheader
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
begin_hunk_5_@_ZNK5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE11_solve_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_EEvRKNS_10MatrixBaseIT_EERNSB_IT0_EE:bb.a
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.j
  %i.ap = icmp slt i64 %i.an, %i.al
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.aq = shl nsw i64 %i.am, 1
  %i.ar = sub i64 %i.al, %i.aq                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ar, 8
  %i.as = sub i64 %i.s, %i.ak
  %diff.check = icmp ugt i64 %i.as, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader278, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ar, -4                      ; 3 uses
  %i.at = add i64 %i.an, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = add i64 %i.an, %index                   ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.au ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load = load <2 x double>, ptr %i.aw, align 8, !tbaa !64
  %wide.load148 = load <2 x double>, ptr %i.ax, align 8, !tbaa !64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <2 x double> %wide.load, ptr %i.av, align 8, !tbaa !64
  store <2 x double> %wide.load148, ptr %i.ay, align 8, !tbaa !64
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !920

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader278

.lr.ph.i.i.i.i.i.i.i.i.preheader278:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ] ; 4 uses
  %i.ba = sub i64 %i.al, %.05.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.ba, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader278, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader278 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader278 ]
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !64
  store double %i.bd, ptr %i.bb, align 8, !tbaa !64
  %i.be = add nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !921

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader278
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader278 ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.bf = sub i64 %.05.i.i.i.i.i.i.i.i.ph, %i.al
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %.05.i.i.i.i.i.i.i.i
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.05.i.i.i.i.i.i.i.i
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !64
  store double %i.bj, ptr %i.bh, align 8, !tbaa !64
  %i.bk = add nsw i64 %.05.i.i.i.i.i.i.i.i, 1     ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.bk
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.bk
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !64
  store double %i.bn, ptr %i.bl, align 8, !tbaa !64
  %i.bo = add nsw i64 %.05.i.i.i.i.i.i.i.i, 2     ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.bo
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.bo
  %i.br = load double, ptr %i.bq, align 8, !tbaa !64
  store double %i.br, ptr %i.bp, align 8, !tbaa !64
  %i.bs = add nsw i64 %.05.i.i.i.i.i.i.i.i, 3     ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.bs
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.bs
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !64
  store double %i.bv, ptr %i.bt, align 8, !tbaa !64
  %i.bw = add nsw i64 %.05.i.i.i.i.i.i.i.i, 4     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bw, %i.al
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !922

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.j ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.011.i.i.i.i.i.i.i
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.011.i.i.i.i.i.i.i
  %i.bz = load <2 x double>, ptr %i.by, align 16, !tbaa !91
  store <2 x double> %i.bz, ptr %i.bx, align 16, !tbaa !91
  %i.ca = add nuw nsw i64 %.011.i.i.i.i.i.i.i, 2  ; 2 uses
  %i.cb = icmp slt i64 %i.ca, %i.an
  br i1 %i.cb, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !92

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !153 ; 15 uses
  %i.cf = icmp eq ptr %i.ce, null                 ; 2 uses
  br i1 %i.cf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !152 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !148 ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !63
  %i.cm = load i32, ptr %i.ch, align 4, !tbaa !63
  %i.cn = sub nsw i32 %i.cl, %i.cm
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.l:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !148 ; 17 uses
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj1ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cr = ptrtoint ptr %i.ce to i64               ; 2 uses
  %i.cs = and i64 %i.cr, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.n, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.ct = lshr exact i64 %i.cr, 2
  %i.cu = sub nsw i64 0, %i.ct
  %i.cv = and i64 %i.cu, 3
  %i.cw = tail call i64 @llvm.smin.i64(i64 %i.cv, i64 %i.cp)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.cw, %bb.n ], [ %i.cp, %bb.m ] ; 12 uses
  %i.cx = sub nsw i64 %i.cp, %.0.i.i.i.i.i.i.i.i  ; 5 uses
  %i.cy = sdiv i64 %i.cx, 8
  %i.cz = shl nsw i64 %i.cy, 3                    ; 2 uses
  %i.da = sdiv i64 %i.cx, 4                       ; 2 uses
  %i.db = shl nsw i64 %i.da, 2                    ; 2 uses
  %i.dc = add nsw i64 %i.cz, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.dd = add nsw i64 %i.db, %.0.i.i.i.i.i.i.i.i  ; 4 uses
  %.off.i.i.i.i = add i64 %i.cx, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.de = getelementptr [4 x i8], ptr %i.ce, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.df = load <2 x i64>, ptr %i.de, align 1, !tbaa !91 ; 2 uses
  %i.dg = icmp sgt i64 %i.cx, 7
  br i1 %i.dg, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.dh = getelementptr i8, ptr %i.de, i64 16
  %i.di = load <4 x i32>, ptr %i.dh, align 1, !tbaa !91 ; 2 uses
  %i.dj = bitcast <2 x i64> %i.df to <4 x i32>    ; 2 uses
  %i.dk = icmp samesign ugt i64 %i.cx, 15
  br i1 %i.dk, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.p
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.p
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.di, %bb.p ], [ %i.dv, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.dj, %bb.p ], [ %i.dr, %.lr.ph.i.i.i.i ]
  %i.dl = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.dm = bitcast <4 x i32> %i.dl to <2 x i64>
  %i.dn = icmp sgt i64 %i.db, %i.cz
  br i1 %i.dn, label %bb.q, label %bb.r

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.dr, %.lr.ph.i.i.i.i ], [ %i.dj, %.lr.ph.preheader.i.i.i.i ]
  %i.do = phi <4 x i32> [ %i.dv, %.lr.ph.i.i.i.i ], [ %i.di, %.lr.ph.preheader.i.i.i.i ]
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %.05780.i.i.i.i
  %i.dq = load <4 x i32>, ptr %i.dp, align 1, !tbaa !91
  %i.dr = add <4 x i32> %i.dq, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.ds = getelementptr [4 x i8], ptr %i.ce, i64 %.057.in79.i.i.i.i
  %i.dt = getelementptr i8, ptr %i.ds, i64 48
  %i.du = load <4 x i32>, ptr %i.dt, align 1, !tbaa !91
  %i.dv = add <4 x i32> %i.du, %i.do              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.dw = icmp slt i64 %.057.i.i.i.i, %i.dc
  br i1 %i.dw, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !569

bb.q:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.dc
  %i.dy = load <4 x i32>, ptr %i.dx, align 1, !tbaa !91
  %i.dz = add <4 x i32> %i.dy, %i.dl
  %i.ea = bitcast <4 x i32> %i.dz to <2 x i64>
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i, %bb.o
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.df, %bb.o ], [ %i.ea, %bb.q ], [ %i.dm, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.eb = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.ec = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.ed = shufflevector <4 x i32> %i.ec, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ee = add <4 x i32> %i.ed, %i.eb              ; 2 uses
  %shift = shufflevector <4 x i32> %i.ee, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.ee, %shift
  %6 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ec) ; 2 uses
  %i.ef = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.ef, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.r
  %min.iters.check150 = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check150, label %.lr.ph85.i.i.i.i.preheader272, label %vector.ph151

vector.ph151:                                     ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec152 = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.eg = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next158, %vector.body153 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.eg, %vector.ph151 ], [ %i.ej, %vector.body153 ]
  %vec.phi155 = phi <4 x i32> [ zeroinitializer, %vector.ph151 ], [ %i.ek, %vector.body153 ]
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %index154 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load156 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !63
  %wide.load157 = load <4 x i32>, ptr %i.ei, align 4, !tbaa !63
  %i.ej = add <4 x i32> %wide.load156, %vec.phi   ; 2 uses
  %i.ek = add <4 x i32> %wide.load157, %vec.phi155 ; 2 uses
  %index.next158 = add nuw i64 %index154, 8       ; 2 uses
  %i.el = icmp eq i64 %index.next158, %n.vec152
  br i1 %i.el, label %middle.block159, label %vector.body153, !llvm.loop !923

middle.block159:                                  ; preds = %vector.body153
  %bin.rdx = add <4 x i32> %i.ek, %i.ej
  %i.em = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n160 = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec152
  br i1 %cmp.n160, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader272

.lr.ph85.i.i.i.i.preheader272:                    ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block159
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec152, %middle.block159 ]
  %.07582.i.i.i.i.ph = phi i32 [ %6, %.lr.ph85.i.i.i.i.preheader ], [ %i.em, %middle.block159 ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block159, %bb.r
  %.075.lcssa.i.i.i.i = phi i32 [ %6, %bb.r ], [ %i.em, %middle.block159 ], [ %i.fc, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.en = icmp slt i64 %i.dd, %i.cp
  br i1 %i.en, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.eo = shl nsw i64 %i.da, 2
  %i.ep = add i64 %.0.i.i.i.i.i.i.i.i, %i.eo
  %i.eq = sub i64 %i.cp, %i.ep                    ; 3 uses
  %min.iters.check163 = icmp ult i64 %i.eq, 8
  br i1 %min.iters.check163, label %.lr.ph89.i.i.i.i.preheader267, label %vector.ph164

vector.ph164:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec165 = and i64 %i.eq, -8                   ; 3 uses
  %i.er = add i64 %i.dd, %n.vec165
  %i.es = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.et = getelementptr [4 x i8], ptr %i.ce, i64 %i.dd
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph164
  %index167 = phi i64 [ 0, %vector.ph164 ], [ %index.next172, %vector.body166 ] ; 2 uses
  %vec.phi168 = phi <4 x i32> [ %i.es, %vector.ph164 ], [ %i.ew, %vector.body166 ]
  %vec.phi169 = phi <4 x i32> [ zeroinitializer, %vector.ph164 ], [ %i.ex, %vector.body166 ]
  %i.eu = getelementptr [4 x i8], ptr %i.et, i64 %index167 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load170 = load <4 x i32>, ptr %i.eu, align 4, !tbaa !63
  %wide.load171 = load <4 x i32>, ptr %i.ev, align 4, !tbaa !63
  %i.ew = add <4 x i32> %wide.load170, %vec.phi168 ; 2 uses
  %i.ex = add <4 x i32> %wide.load171, %vec.phi169 ; 2 uses
  %index.next172 = add nuw i64 %index167, 8       ; 2 uses
  %i.ey = icmp eq i64 %index.next172, %n.vec165
  br i1 %i.ey, label %middle.block173, label %vector.body166, !llvm.loop !924

middle.block173:                                  ; preds = %vector.body166
  %bin.rdx174 = add <4 x i32> %i.ex, %i.ew
  %i.ez = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx174) ; 2 uses
  %cmp.n175 = icmp eq i64 %i.eq, %n.vec165
  br i1 %cmp.n175, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph89.i.i.i.i.preheader267

.lr.ph89.i.i.i.i.preheader267:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block173
  %.05588.i.i.i.i.ph = phi i64 [ %i.dd, %.lr.ph89.i.i.i.i.preheader ], [ %i.er, %middle.block173 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.ez, %middle.block173 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader272, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.fd, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader272 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.fc, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader272 ]
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.05683.i.i.i.i
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !63
  %i.fc = add nsw i32 %i.fb, %.07582.i.i.i.i      ; 2 uses
  %i.fd = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fd, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !925

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader267, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.fh, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader267 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.fg, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader267 ]
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %.05588.i.i.i.i
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !63
  %i.fg = add nsw i32 %i.ff, %.187.i.i.i.i        ; 2 uses
  %i.fh = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.fi = icmp slt i64 %i.fh, %i.cp
  br i1 %i.fi, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, !llvm.loop !926

bb.s:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.fj = load i32, ptr %i.ce, align 4, !tbaa !63 ; 3 uses
  %i.fk = icmp sgt i64 %i.cp, 1
  br i1 %i.fk, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.s
  %i.fl = add nsw i64 %i.cp, -1                   ; 2 uses
  %min.iters.check179 = icmp ult i64 %i.cp, 9
  br i1 %min.iters.check179, label %.lr.ph94.i.i.i.i.preheader263, label %vector.ph180

vector.ph180:                                     ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec181 = and i64 %i.fl, -8                   ; 3 uses
  %i.fm = or disjoint i64 %n.vec181, 1
  %i.fn = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.fj, i64 0
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.ph180
  %index183 = phi i64 [ 0, %vector.ph180 ], [ %index.next188, %vector.body182 ] ; 2 uses
  %vec.phi184 = phi <4 x i32> [ %i.fn, %vector.ph180 ], [ %i.fr, %vector.body182 ]
  %vec.phi185 = phi <4 x i32> [ zeroinitializer, %vector.ph180 ], [ %i.fs, %vector.body182 ]
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %index183 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 20
  %wide.load186 = load <4 x i32>, ptr %i.fp, align 4, !tbaa !63
  %wide.load187 = load <4 x i32>, ptr %i.fq, align 4, !tbaa !63
  %i.fr = add <4 x i32> %wide.load186, %vec.phi184 ; 2 uses
  %i.fs = add <4 x i32> %wide.load187, %vec.phi185 ; 2 uses
  %index.next188 = add nuw i64 %index183, 8       ; 2 uses
  %i.ft = icmp eq i64 %index.next188, %n.vec181
  br i1 %i.ft, label %middle.block189, label %vector.body182, !llvm.loop !927

middle.block189:                                  ; preds = %vector.body182
  %bin.rdx190 = add <4 x i32> %i.fs, %i.fr
  %i.fu = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx190) ; 2 uses
  %cmp.n191 = icmp eq i64 %i.fl, %n.vec181
  br i1 %cmp.n191, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i.preheader263

.lr.ph94.i.i.i.i.preheader263:                    ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block189
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.fm, %middle.block189 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.fj, %.lr.ph94.i.i.i.i.preheader ], [ %i.fu, %middle.block189 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader263, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.fy, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader263 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.fx, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader263 ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.092.i.i.i.i
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !63
  %i.fx = add nsw i32 %i.fw, %.291.i.i.i.i        ; 2 uses
  %i.fy = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.fy, %i.cp
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i, !llvm.loop !928

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block173, %middle.block189, %.preheader.i.i.i.i, %bb.s, %bb.k
  %i.fz = phi i64 [ %i.cj, %bb.k ], [ %i.cp, %middle.block189 ], [ %i.cp, %.preheader.i.i.i.i ], [ %i.cp, %bb.s ], [ %i.cp, %middle.block173 ], [ %i.cp, %.lr.ph94.i.i.i.i ], [ %i.cp, %.lr.ph89.i.i.i.i ] ; 2 uses
  %.0.i.in = phi i32 [ %i.cn, %bb.k ], [ %i.fu, %middle.block189 ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.fj, %bb.s ], [ %i.ez, %middle.block173 ], [ %i.fx, %.lr.ph94.i.i.i.i ], [ %i.fg, %.lr.ph89.i.i.i.i ]
  %i.ga = icmp sgt i32 %.0.i.in, 0
  br i1 %i.ga, label %bb.t, label %_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj1ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit

bb.t:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !76 ; 2 uses
  %i.gd = icmp sgt i64 %i.gc, 0
  br i1 %i.gd, label %.preheader.lr.ph.i.i, label %_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj1ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit

.preheader.lr.ph.i.i:                             ; preds = %bb.t
  %i.ge = icmp sgt i64 %i.fz, 0
  %i.gf = load ptr, ptr %2, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gh = load i64, ptr %i.gg, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 40
  br i1 %i.ge, label %.preheader.i.i, label %_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj1ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit

.preheader.i.i:                                   ; preds = %.preheader.lr.ph.i.i, %._crit_edge.i.i
  %.046.i.i = phi i64 [ %i.gm, %._crit_edge.i.i ], [ 0, %.preheader.lr.ph.i.i ] ; 2 uses
  %i.gl = mul nsw i64 %.046.i.i, %i.gh
  %invariant.gep44.i.i = getelementptr [8 x i8], ptr %i.gf, i64 %i.gl ; 4 uses
  br label %bb.u

._crit_edge.i.i:                                  ; preds = %.loopexit.i.i
  %i.gm = add nuw nsw i64 %.046.i.i, 1            ; 2 uses
  %exitcond51.not.i.i = icmp eq i64 %i.gm, %i.gc
  br i1 %exitcond51.not.i.i, label %_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj1ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit, label %.preheader.i.i, !llvm.loop !149

bb.u:                                             ; preds = %.loopexit.i.i, %.preheader.i.i
  %.01940.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.ix, %.loopexit.i.i ] ; 6 uses
  %gep45.i.i = getelementptr [8 x i8], ptr %invariant.gep44.i.i, i64 %.01940.i.i ; 6 uses
  %i.gn = load double, ptr %gep45.i.i, align 8, !tbaa !64 ; 3 uses
  %i.go = fcmp une double %i.gn, 0.000000e+00
  br i1 %i.go, label %bb.v, label %.loopexit.i.i

bb.v:                                             ; preds = %bb.u
  %i.gp = load ptr, ptr %i.gi, align 8, !tbaa !150 ; 5 uses
  %i.gq = load ptr, ptr %i.gj, align 8, !tbaa !151 ; 4 uses
  %i.gr = load ptr, ptr %i.gk, align 8, !tbaa !152
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %.01940.i.i ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !63
  %i.gu = sext i32 %i.gt to i64                   ; 4 uses
end_hunk_5
begin_hunk_6_@_ZNK5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE11_solve_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_EEvRKNS_10MatrixBaseIT_EERNSB_IT0_EE:bb.a
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !64
  %i.hk = fdiv double %i.gn, %i.hj
  store double %i.hk, ptr %gep45.i.i, align 8, !tbaa !64
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %.sroa.11.037.i.i
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !64
  %i.hn = fdiv double %i.gn, %i.hm
  store double %i.hn, ptr %gep45.i.i, align 8, !tbaa !64
  %i.ho = icmp eq i64 %.01940.i.i, %i.hf
  %i.hp = zext i1 %i.ho to i64
  %spec.select.i.i = add nsw i64 %.sroa.11.037.i.i, %i.hp
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.critedge.i.i
  %.sroa.11.1.i.i = phi i64 [ %.sroa.11.0.lcssa.i.i, %.critedge.i.i ], [ %spec.select.i.i, %bb.z ] ; 7 uses
  %i.hq = icmp slt i64 %.sroa.11.1.i.i, %.sink.i.i.i
  br i1 %i.hq, label %.lr.ph39.i.i.preheader, label %.loopexit.i.i

.lr.ph39.i.i.preheader:                           ; preds = %bb.aa
  %i.hr = sub i64 %.sink.i.i.i, %.sroa.11.1.i.i
  %.neg = add i64 %.sroa.11.1.i.i, 1
  %xtraiter279 = and i64 %i.hr, 1
  %lcmp.mod280.not = icmp eq i64 %xtraiter279, 0
  br i1 %lcmp.mod280.not, label %.lr.ph39.i.i.prol.loopexit, label %.lr.ph39.i.i.prol

.lr.ph39.i.i.prol:                                ; preds = %.lr.ph39.i.i.preheader
  %i.hs = load double, ptr %gep45.i.i, align 8, !tbaa !64
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %.sroa.11.1.i.i
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !64
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.gq, i64 %.sroa.11.1.i.i
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !63
  %i.hx = sext i32 %i.hw to i64
  %gep.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep44.i.i, i64 %i.hx ; 2 uses
  %i.hy = load double, ptr %gep.i.i.prol, align 8, !tbaa !64
  %i.hz = fneg double %i.hs
  %i.ia = tail call double @llvm.fmuladd.f64(double %i.hz, double %i.hu, double %i.hy)
  store double %i.ia, ptr %gep.i.i.prol, align 8, !tbaa !64
  %i.ib = add nsw i64 %.sroa.11.1.i.i, 1
  br label %.lr.ph39.i.i.prol.loopexit

.lr.ph39.i.i.prol.loopexit:                       ; preds = %.lr.ph39.i.i.prol, %.lr.ph39.i.i.preheader
  %.sroa.11.238.i.i.unr = phi i64 [ %.sroa.11.1.i.i, %.lr.ph39.i.i.preheader ], [ %i.ib, %.lr.ph39.i.i.prol ]
  %i.ic = icmp eq i64 %.sink.i.i.i, %.neg
  br i1 %i.ic, label %.loopexit.i.i, label %.lr.ph39.i.i

.lr.ph39.i.i:                                     ; preds = %.lr.ph39.i.i.prol.loopexit, %.lr.ph39.i.i
  %.sroa.11.238.i.i = phi i64 [ %i.iw, %.lr.ph39.i.i ], [ %.sroa.11.238.i.i.unr, %.lr.ph39.i.i.prol.loopexit ] ; 4 uses
  %i.id = load double, ptr %gep45.i.i, align 8, !tbaa !64
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %.sroa.11.238.i.i
  %i.if = load double, ptr %i.ie, align 8, !tbaa !64
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.gq, i64 %.sroa.11.238.i.i
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !63
  %i.ii = sext i32 %i.ih to i64
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep44.i.i, i64 %i.ii ; 2 uses
  %i.ij = load double, ptr %gep.i.i, align 8, !tbaa !64
  %i.ik = fneg double %i.id
  %i.il = tail call double @llvm.fmuladd.f64(double %i.ik, double %i.if, double %i.ij)
  store double %i.il, ptr %gep.i.i, align 8, !tbaa !64
  %i.im = add nsw i64 %.sroa.11.238.i.i, 1        ; 2 uses
  %i.in = load double, ptr %gep45.i.i, align 8, !tbaa !64
  %i.io = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %i.im
  %i.ip = load double, ptr %i.io, align 8, !tbaa !64
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.gq, i64 %i.im
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !63
  %i.is = sext i32 %i.ir to i64
  %gep.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep44.i.i, i64 %i.is ; 2 uses
  %i.it = load double, ptr %gep.i.i.1, align 8, !tbaa !64
  %i.iu = fneg double %i.in
  %i.iv = tail call double @llvm.fmuladd.f64(double %i.iu, double %i.ip, double %i.it)
  store double %i.iv, ptr %gep.i.i.1, align 8, !tbaa !64
  %i.iw = add nsw i64 %.sroa.11.238.i.i, 2        ; 2 uses
  %exitcond49.not.i.i.1 = icmp eq i64 %i.iw, %.sink.i.i.i
  br i1 %exitcond49.not.i.i.1, label %.loopexit.i.i, label %.lr.ph39.i.i, !llvm.loop !155

.loopexit.i.i:                                    ; preds = %.lr.ph39.i.i.prol.loopexit, %.lr.ph39.i.i, %bb.aa, %bb.u
  %i.ix = add nuw nsw i64 %.01940.i.i, 1          ; 2 uses
  %exitcond50.not.i.i = icmp eq i64 %i.ix, %i.fz
  br i1 %exitcond50.not.i.i, label %._crit_edge.i.i, label %bb.u, !llvm.loop !156

_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj1ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit: ; preds = %._crit_edge.i.i, %bb.l, %.preheader.lr.ph.i.i, %bb.t, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !72
  %i.ja = icmp sgt i64 %i.iz, 0
  br i1 %i.ja, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj1ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.jc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.jb, ptr %i.jc, align 8, !tbaa !116, !alias.scope !929
  %i.jd = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %2, ptr %i.jd, align 8, !tbaa !93, !alias.scope !929
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS0_17scalar_inverse_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEEES3_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %.pre = load ptr, ptr %i.cd, align 8, !tbaa !153
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj1ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit
  %i.je = phi ptr [ %.pre, %bb.ab ], [ %i.ce, %_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj1ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit ] ; 13 uses
  %i.jf = icmp eq ptr %i.je, null
  br i1 %i.jf, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !152 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !148
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.jh, i64 %i.jj
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !63
  %i.jm = load i32, ptr %i.jh, align 4, !tbaa !63
  %i.jn = sub nsw i32 %i.jl, %i.jm
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46

bb.ae:                                            ; preds = %bb.ac
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !148 ; 11 uses
  %i.jq = icmp eq i64 %i.jp, 0
  br i1 %i.jq, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jr = ptrtoint ptr %i.je to i64               ; 2 uses
  %i.js = and i64 %i.jr, 3
  %.not.i.i.i.i.i.i.i.i12 = icmp eq i64 %i.js, 0
  br i1 %.not.i.i.i.i.i.i.i.i12, label %bb.ag, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i13

bb.ag:                                            ; preds = %bb.af
  %i.jt = lshr exact i64 %i.jr, 2
  %i.ju = sub nsw i64 0, %i.jt
  %i.jv = and i64 %i.ju, 3
  %i.jw = call i64 @llvm.smin.i64(i64 %i.jv, i64 %i.jp)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i13

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i13: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i.i.i14 = phi i64 [ %i.jw, %bb.ag ], [ %i.jp, %bb.af ] ; 12 uses
  %i.jx = sub nsw i64 %i.jp, %.0.i.i.i.i.i.i.i.i14 ; 5 uses
  %i.jy = sdiv i64 %i.jx, 8
  %i.jz = shl nsw i64 %i.jy, 3                    ; 2 uses
  %i.ka = sdiv i64 %i.jx, 4                       ; 2 uses
  %i.kb = shl nsw i64 %i.ka, 2                    ; 2 uses
  %i.kc = add nsw i64 %i.jz, %.0.i.i.i.i.i.i.i.i14 ; 2 uses
  %i.kd = add nsw i64 %i.kb, %.0.i.i.i.i.i.i.i.i14 ; 4 uses
  %.off.i.i.i.i15 = add i64 %i.jx, 3
  %.not.i.i.i.i16 = icmp ult i64 %.off.i.i.i.i15, 7
  br i1 %.not.i.i.i.i16, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i13
  %i.ke = getelementptr [4 x i8], ptr %i.je, i64 %.0.i.i.i.i.i.i.i.i14 ; 2 uses
  %i.kf = load <2 x i64>, ptr %i.ke, align 1, !tbaa !91 ; 2 uses
  %i.kg = icmp sgt i64 %i.jx, 7
  br i1 %i.kg, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.kh = getelementptr i8, ptr %i.ke, i64 16
  %i.ki = load <4 x i32>, ptr %i.kh, align 1, !tbaa !91 ; 2 uses
  %i.kj = bitcast <2 x i64> %i.kf to <4 x i32>    ; 2 uses
  %i.kk = icmp samesign ugt i64 %i.jx, 15
  br i1 %i.kk, label %.lr.ph.preheader.i.i.i.i35, label %._crit_edge.i.i.i.i32

.lr.ph.preheader.i.i.i.i35:                       ; preds = %bb.ai
  %.05777.i.i.i.i36 = add nsw i64 %.0.i.i.i.i.i.i.i.i14, 8
  br label %.lr.ph.i.i.i.i37

._crit_edge.i.i.i.i32:                            ; preds = %.lr.ph.i.i.i.i37, %bb.ai
  %.lcssa.i.i.i.i33 = phi <4 x i32> [ %i.ki, %bb.ai ], [ %i.kv, %.lr.ph.i.i.i.i37 ]
  %.sroa.067.0.lcssa.i.i.i.i34 = phi <4 x i32> [ %i.kj, %bb.ai ], [ %i.kr, %.lr.ph.i.i.i.i37 ]
  %i.kl = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i34, %.lcssa.i.i.i.i33 ; 2 uses
  %i.km = bitcast <4 x i32> %i.kl to <2 x i64>
  %i.kn = icmp sgt i64 %i.kb, %i.jz
  br i1 %i.kn, label %bb.aj, label %bb.ak

.lr.ph.i.i.i.i37:                                 ; preds = %.lr.ph.i.i.i.i37, %.lr.ph.preheader.i.i.i.i35
  %.05780.i.i.i.i38 = phi i64 [ %.057.i.i.i.i41, %.lr.ph.i.i.i.i37 ], [ %.05777.i.i.i.i36, %.lr.ph.preheader.i.i.i.i35 ] ; 3 uses
  %.057.in79.i.i.i.i39 = phi i64 [ %.05780.i.i.i.i38, %.lr.ph.i.i.i.i37 ], [ %.0.i.i.i.i.i.i.i.i14, %.lr.ph.preheader.i.i.i.i35 ]
  %.sroa.067.078.i.i.i.i40 = phi <4 x i32> [ %i.kr, %.lr.ph.i.i.i.i37 ], [ %i.kj, %.lr.ph.preheader.i.i.i.i35 ]
  %i.ko = phi <4 x i32> [ %i.kv, %.lr.ph.i.i.i.i37 ], [ %i.ki, %.lr.ph.preheader.i.i.i.i35 ]
  %i.kp = getelementptr inbounds [4 x i8], ptr %i.je, i64 %.05780.i.i.i.i38
  %i.kq = load <4 x i32>, ptr %i.kp, align 1, !tbaa !91
  %i.kr = add <4 x i32> %i.kq, %.sroa.067.078.i.i.i.i40 ; 2 uses
  %i.ks = getelementptr [4 x i8], ptr %i.je, i64 %.057.in79.i.i.i.i39
  %i.kt = getelementptr i8, ptr %i.ks, i64 48
  %i.ku = load <4 x i32>, ptr %i.kt, align 1, !tbaa !91
  %i.kv = add <4 x i32> %i.ku, %i.ko              ; 2 uses
  %.057.i.i.i.i41 = add nsw i64 %.05780.i.i.i.i38, 8 ; 2 uses
  %i.kw = icmp slt i64 %.057.i.i.i.i41, %i.kc
  br i1 %i.kw, label %.lr.ph.i.i.i.i37, label %._crit_edge.i.i.i.i32, !llvm.loop !569

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i32
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.je, i64 %i.kc
  %i.ky = load <4 x i32>, ptr %i.kx, align 1, !tbaa !91
  %i.kz = add <4 x i32> %i.ky, %i.kl
  %i.la = bitcast <4 x i32> %i.kz to <2 x i64>
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge.i.i.i.i32, %bb.ah
  %.sroa.067.2.i.i.i.i17 = phi <2 x i64> [ %i.kf, %bb.ah ], [ %i.la, %bb.aj ], [ %i.km, %._crit_edge.i.i.i.i32 ] ; 2 uses
  %i.lb = bitcast <2 x i64> %.sroa.067.2.i.i.i.i17 to <4 x i32>
  %i.lc = bitcast <2 x i64> %.sroa.067.2.i.i.i.i17 to <4 x i32> ; 2 uses
  %i.ld = shufflevector <4 x i32> %i.lc, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.le = add <4 x i32> %i.ld, %i.lb              ; 2 uses
  %shift243 = shufflevector <4 x i32> %i.le, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop244 = add nsw <4 x i32> %i.le, %shift243
  %7 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.lc) ; 2 uses
  %i.lf = icmp sgt i64 %.0.i.i.i.i.i.i.i.i14, 0
  br i1 %i.lf, label %.lr.ph85.i.i.i.i28.preheader, label %.preheader.i.i.i.i20

.lr.ph85.i.i.i.i28.preheader:                     ; preds = %bb.ak
  %min.iters.check195 = icmp ult i64 %.0.i.i.i.i.i.i.i.i14, 8
  br i1 %min.iters.check195, label %.lr.ph85.i.i.i.i28.preheader254, label %vector.ph196

vector.ph196:                                     ; preds = %.lr.ph85.i.i.i.i28.preheader
  %n.vec197 = and i64 %.0.i.i.i.i.i.i.i.i14, 9223372036854775800 ; 3 uses
  %i.lg = shufflevector <4 x i32> %foldExtExtBinop244, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body198

vector.body198:                                   ; preds = %vector.body198, %vector.ph196
  %index199 = phi i64 [ 0, %vector.ph196 ], [ %index.next204, %vector.body198 ] ; 2 uses
  %vec.phi200 = phi <4 x i32> [ %i.lg, %vector.ph196 ], [ %i.lj, %vector.body198 ]
  %vec.phi201 = phi <4 x i32> [ zeroinitializer, %vector.ph196 ], [ %i.lk, %vector.body198 ]
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %index199 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %wide.load202 = load <4 x i32>, ptr %i.lh, align 4, !tbaa !63
  %wide.load203 = load <4 x i32>, ptr %i.li, align 4, !tbaa !63
  %i.lj = add <4 x i32> %wide.load202, %vec.phi200 ; 2 uses
  %i.lk = add <4 x i32> %wide.load203, %vec.phi201 ; 2 uses
  %index.next204 = add nuw i64 %index199, 8       ; 2 uses
  %i.ll = icmp eq i64 %index.next204, %n.vec197
  br i1 %i.ll, label %middle.block205, label %vector.body198, !llvm.loop !932

middle.block205:                                  ; preds = %vector.body198
  %bin.rdx206 = add <4 x i32> %i.lk, %i.lj
  %i.lm = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx206) ; 2 uses
  %cmp.n207 = icmp eq i64 %.0.i.i.i.i.i.i.i.i14, %n.vec197
  br i1 %cmp.n207, label %.preheader.i.i.i.i20, label %.lr.ph85.i.i.i.i28.preheader254

.lr.ph85.i.i.i.i28.preheader254:                  ; preds = %.lr.ph85.i.i.i.i28.preheader, %middle.block205
  %.05683.i.i.i.i29.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i28.preheader ], [ %n.vec197, %middle.block205 ]
  %.07582.i.i.i.i30.ph = phi i32 [ %7, %.lr.ph85.i.i.i.i28.preheader ], [ %i.lm, %middle.block205 ]
  br label %.lr.ph85.i.i.i.i28

.preheader.i.i.i.i20:                             ; preds = %.lr.ph85.i.i.i.i28, %middle.block205, %bb.ak
  %.075.lcssa.i.i.i.i21 = phi i32 [ %7, %bb.ak ], [ %i.lm, %middle.block205 ], [ %i.mc, %.lr.ph85.i.i.i.i28 ] ; 3 uses
  %i.ln = icmp slt i64 %i.kd, %i.jp
  br i1 %i.ln, label %.lr.ph89.i.i.i.i25.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46

.lr.ph89.i.i.i.i25.preheader:                     ; preds = %.preheader.i.i.i.i20
  %i.lo = shl nsw i64 %i.ka, 2
  %i.lp = add i64 %.0.i.i.i.i.i.i.i.i14, %i.lo
  %i.lq = sub i64 %i.jp, %i.lp                    ; 3 uses
  %min.iters.check211 = icmp ult i64 %i.lq, 8
  br i1 %min.iters.check211, label %.lr.ph89.i.i.i.i25.preheader249, label %vector.ph212

vector.ph212:                                     ; preds = %.lr.ph89.i.i.i.i25.preheader
  %n.vec213 = and i64 %i.lq, -8                   ; 3 uses
  %i.lr = add i64 %i.kd, %n.vec213
  %i.ls = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i21, i64 0
  %i.lt = getelementptr [4 x i8], ptr %i.je, i64 %i.kd
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph212
  %index215 = phi i64 [ 0, %vector.ph212 ], [ %index.next220, %vector.body214 ] ; 2 uses
  %vec.phi216 = phi <4 x i32> [ %i.ls, %vector.ph212 ], [ %i.lw, %vector.body214 ]
  %vec.phi217 = phi <4 x i32> [ zeroinitializer, %vector.ph212 ], [ %i.lx, %vector.body214 ]
  %i.lu = getelementptr [4 x i8], ptr %i.lt, i64 %index215 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %wide.load218 = load <4 x i32>, ptr %i.lu, align 4, !tbaa !63
  %wide.load219 = load <4 x i32>, ptr %i.lv, align 4, !tbaa !63
  %i.lw = add <4 x i32> %wide.load218, %vec.phi216 ; 2 uses
  %i.lx = add <4 x i32> %wide.load219, %vec.phi217 ; 2 uses
  %index.next220 = add nuw i64 %index215, 8       ; 2 uses
  %i.ly = icmp eq i64 %index.next220, %n.vec213
  br i1 %i.ly, label %middle.block221, label %vector.body214, !llvm.loop !933

middle.block221:                                  ; preds = %vector.body214
  %bin.rdx222 = add <4 x i32> %i.lx, %i.lw
  %i.lz = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx222) ; 2 uses
  %cmp.n223 = icmp eq i64 %i.lq, %n.vec213
  br i1 %cmp.n223, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46, label %.lr.ph89.i.i.i.i25.preheader249

.lr.ph89.i.i.i.i25.preheader249:                  ; preds = %.lr.ph89.i.i.i.i25.preheader, %middle.block221
  %.05588.i.i.i.i26.ph = phi i64 [ %i.kd, %.lr.ph89.i.i.i.i25.preheader ], [ %i.lr, %middle.block221 ]
  %.187.i.i.i.i27.ph = phi i32 [ %.075.lcssa.i.i.i.i21, %.lr.ph89.i.i.i.i25.preheader ], [ %i.lz, %middle.block221 ]
  br label %.lr.ph89.i.i.i.i25

.lr.ph85.i.i.i.i28:                               ; preds = %.lr.ph85.i.i.i.i28.preheader254, %.lr.ph85.i.i.i.i28
  %.05683.i.i.i.i29 = phi i64 [ %i.md, %.lr.ph85.i.i.i.i28 ], [ %.05683.i.i.i.i29.ph, %.lr.ph85.i.i.i.i28.preheader254 ] ; 2 uses
  %.07582.i.i.i.i30 = phi i32 [ %i.mc, %.lr.ph85.i.i.i.i28 ], [ %.07582.i.i.i.i30.ph, %.lr.ph85.i.i.i.i28.preheader254 ]
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %.05683.i.i.i.i29
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !63
  %i.mc = add nsw i32 %i.mb, %.07582.i.i.i.i30    ; 2 uses
  %i.md = add nuw nsw i64 %.05683.i.i.i.i29, 1    ; 2 uses
  %exitcond.not.i.i.i.i31 = icmp eq i64 %i.md, %.0.i.i.i.i.i.i.i.i14
  br i1 %exitcond.not.i.i.i.i31, label %.preheader.i.i.i.i20, label %.lr.ph85.i.i.i.i28, !llvm.loop !934

.lr.ph89.i.i.i.i25:                               ; preds = %.lr.ph89.i.i.i.i25.preheader249, %.lr.ph89.i.i.i.i25
  %.05588.i.i.i.i26 = phi i64 [ %i.mh, %.lr.ph89.i.i.i.i25 ], [ %.05588.i.i.i.i26.ph, %.lr.ph89.i.i.i.i25.preheader249 ] ; 2 uses
  %.187.i.i.i.i27 = phi i32 [ %i.mg, %.lr.ph89.i.i.i.i25 ], [ %.187.i.i.i.i27.ph, %.lr.ph89.i.i.i.i25.preheader249 ]
  %i.me = getelementptr inbounds [4 x i8], ptr %i.je, i64 %.05588.i.i.i.i26
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !63
  %i.mg = add nsw i32 %i.mf, %.187.i.i.i.i27      ; 2 uses
  %i.mh = add nsw i64 %.05588.i.i.i.i26, 1        ; 2 uses
  %i.mi = icmp slt i64 %i.mh, %i.jp
  br i1 %i.mi, label %.lr.ph89.i.i.i.i25, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46, !llvm.loop !935

bb.al:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i13
  %i.mj = load i32, ptr %i.je, align 4, !tbaa !63 ; 3 uses
  %i.mk = icmp sgt i64 %i.jp, 1
  br i1 %i.mk, label %.lr.ph94.i.i.i.i42.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46

.lr.ph94.i.i.i.i42.preheader:                     ; preds = %bb.al
  %i.ml = add nsw i64 %i.jp, -1                   ; 2 uses
  %min.iters.check227 = icmp ult i64 %i.jp, 9
  br i1 %min.iters.check227, label %.lr.ph94.i.i.i.i42.preheader246, label %vector.ph228

vector.ph228:                                     ; preds = %.lr.ph94.i.i.i.i42.preheader
  %n.vec229 = and i64 %i.ml, -8                   ; 3 uses
  %i.mm = or disjoint i64 %n.vec229, 1
  %i.mn = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.mj, i64 0
  br label %vector.body230

vector.body230:                                   ; preds = %vector.body230, %vector.ph228
  %index231 = phi i64 [ 0, %vector.ph228 ], [ %index.next236, %vector.body230 ] ; 2 uses
  %vec.phi232 = phi <4 x i32> [ %i.mn, %vector.ph228 ], [ %i.mr, %vector.body230 ]
  %vec.phi233 = phi <4 x i32> [ zeroinitializer, %vector.ph228 ], [ %i.ms, %vector.body230 ]
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %index231 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 4
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 20
  %wide.load234 = load <4 x i32>, ptr %i.mp, align 4, !tbaa !63
  %wide.load235 = load <4 x i32>, ptr %i.mq, align 4, !tbaa !63
  %i.mr = add <4 x i32> %wide.load234, %vec.phi232 ; 2 uses
  %i.ms = add <4 x i32> %wide.load235, %vec.phi233 ; 2 uses
  %index.next236 = add nuw i64 %index231, 8       ; 2 uses
  %i.mt = icmp eq i64 %index.next236, %n.vec229
  br i1 %i.mt, label %middle.block237, label %vector.body230, !llvm.loop !936

middle.block237:                                  ; preds = %vector.body230
  %bin.rdx238 = add <4 x i32> %i.ms, %i.mr
  %i.mu = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx238) ; 2 uses
  %cmp.n239 = icmp eq i64 %i.ml, %n.vec229
  br i1 %cmp.n239, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46, label %.lr.ph94.i.i.i.i42.preheader246

.lr.ph94.i.i.i.i42.preheader246:                  ; preds = %.lr.ph94.i.i.i.i42.preheader, %middle.block237
  %.092.i.i.i.i43.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i42.preheader ], [ %i.mm, %middle.block237 ]
  %.291.i.i.i.i44.ph = phi i32 [ %i.mj, %.lr.ph94.i.i.i.i42.preheader ], [ %i.mu, %middle.block237 ]
  br label %.lr.ph94.i.i.i.i42

.lr.ph94.i.i.i.i42:                               ; preds = %.lr.ph94.i.i.i.i42.preheader246, %.lr.ph94.i.i.i.i42
  %.092.i.i.i.i43 = phi i64 [ %i.my, %.lr.ph94.i.i.i.i42 ], [ %.092.i.i.i.i43.ph, %.lr.ph94.i.i.i.i42.preheader246 ] ; 2 uses
  %.291.i.i.i.i44 = phi i32 [ %i.mx, %.lr.ph94.i.i.i.i42 ], [ %.291.i.i.i.i44.ph, %.lr.ph94.i.i.i.i42.preheader246 ]
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %.092.i.i.i.i43
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !63
  %i.mx = add nsw i32 %i.mw, %.291.i.i.i.i44      ; 2 uses
  %i.my = add nuw nsw i64 %.092.i.i.i.i43, 1      ; 2 uses
  %exitcond102.not.i.i.i.i45 = icmp eq i64 %i.my, %i.jp
  br i1 %exitcond102.not.i.i.i.i45, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46, label %.lr.ph94.i.i.i.i42, !llvm.loop !937

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46: ; preds = %.lr.ph89.i.i.i.i25, %.lr.ph94.i.i.i.i42, %middle.block221, %middle.block237, %.preheader.i.i.i.i20, %bb.al, %bb.ad
  %.0.i24.in = phi i32 [ %i.jn, %bb.ad ], [ %i.mx, %.lr.ph94.i.i.i.i42 ], [ %.075.lcssa.i.i.i.i21, %.preheader.i.i.i.i20 ], [ %i.mj, %bb.al ], [ %i.mu, %middle.block237 ], [ %i.lz, %middle.block221 ], [ %i.mg, %.lr.ph89.i.i.i.i25 ]
  %i.mz = icmp sgt i32 %.0.i24.in, 0
  br i1 %i.mz, label %bb.am, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46.thread

bb.am:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i8 0, ptr %5, align 8, !tbaa !585, !alias.scope !938
  %i.na = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i8 0, ptr %i.na, align 8, !alias.scope !938
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.cc, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !938
  call void @_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2ELi2ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(16) %i.na, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46.thread

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46.thread: ; preds = %bb.ae, %bb.am, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46
  %i.nb = load i64, ptr %i.d, align 8, !tbaa !14
  %i.nc = icmp sgt i64 %i.nb, 0
  br i1 %i.nc, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46.thread
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !14 ; 5 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !76 ; 4 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !75
  %.not.i.i.i.i.i49 = icmp eq i64 %i.nj, %i.nf
  br i1 %.not.i.i.i.i.i49, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit56, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.nk = icmp eq i64 %i.nf, 0
  %i.nl = icmp eq i64 %i.nh, 0
  %or.cond.i.i.i.i.i.i.i52 = or i1 %i.nk, %i.nl
  br i1 %or.cond.i.i.i.i.i.i.i52, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i53, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.nm = sdiv i64 9223372036854775807, %i.nh
  %i.nn = icmp sgt i64 %i.nf, %i.nm
  br i1 %i.nn, label %bb.aq, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i53

bb.aq:                                            ; preds = %bb.ap
  %i.no = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.no, align 8, !tbaa !73
  call void @__cxa_throw(ptr nonnull %i.no, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
end_hunk_6
begin_hunk_7_@_ZNK5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE11_solve_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_EEvRKNS_10MatrixBaseIT_EERNSB_IT0_EE:bb.a
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.j
  %i.ap = icmp slt i64 %i.an, %i.al
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.aq = shl nsw i64 %i.am, 1
  %i.ar = sub i64 %i.al, %i.aq                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ar, 8
  %i.as = sub i64 %i.s, %i.ak
  %diff.check = icmp ugt i64 %i.as, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader309, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ar, -4                      ; 3 uses
  %i.at = add i64 %i.an, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = add i64 %i.an, %index                   ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.au ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load = load <2 x double>, ptr %i.aw, align 8, !tbaa !64
  %wide.load172 = load <2 x double>, ptr %i.ax, align 8, !tbaa !64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <2 x double> %wide.load, ptr %i.av, align 8, !tbaa !64
  store <2 x double> %wide.load172, ptr %i.ay, align 8, !tbaa !64
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !971

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader309

.lr.ph.i.i.i.i.i.i.i.i.preheader309:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ] ; 4 uses
  %i.ba = sub i64 %i.al, %.05.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.ba, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader309, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader309 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader309 ]
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !64
  store double %i.bd, ptr %i.bb, align 8, !tbaa !64
  %i.be = add nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !972

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader309
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader309 ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.bf = sub i64 %.05.i.i.i.i.i.i.i.i.ph, %i.al
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %.05.i.i.i.i.i.i.i.i
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.05.i.i.i.i.i.i.i.i
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !64
  store double %i.bj, ptr %i.bh, align 8, !tbaa !64
  %i.bk = add nsw i64 %.05.i.i.i.i.i.i.i.i, 1     ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.bk
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.bk
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !64
  store double %i.bn, ptr %i.bl, align 8, !tbaa !64
  %i.bo = add nsw i64 %.05.i.i.i.i.i.i.i.i, 2     ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.bo
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.bo
  %i.br = load double, ptr %i.bq, align 8, !tbaa !64
  store double %i.br, ptr %i.bp, align 8, !tbaa !64
  %i.bs = add nsw i64 %.05.i.i.i.i.i.i.i.i, 3     ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.bs
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.bs
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !64
  store double %i.bv, ptr %i.bt, align 8, !tbaa !64
  %i.bw = add nsw i64 %.05.i.i.i.i.i.i.i.i, 4     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bw, %i.al
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !973

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.j ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.011.i.i.i.i.i.i.i
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.011.i.i.i.i.i.i.i
  %i.bz = load <2 x double>, ptr %i.by, align 16, !tbaa !91
  store <2 x double> %i.bz, ptr %i.bx, align 16, !tbaa !91
  %i.ca = add nuw nsw i64 %.011.i.i.i.i.i.i.i, 2  ; 2 uses
  %i.cb = icmp slt i64 %i.ca, %i.an
  br i1 %i.cb, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !92

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !153 ; 15 uses
  %i.cf = icmp eq ptr %i.ce, null                 ; 2 uses
  br i1 %i.cf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !152 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !148 ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !63
  %i.cm = load i32, ptr %i.ch, align 4, !tbaa !63
  %i.cn = sub nsw i32 %i.cl, %i.cm
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.l:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !148 ; 17 uses
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj5ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cr = ptrtoint ptr %i.ce to i64               ; 2 uses
  %i.cs = and i64 %i.cr, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.n, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.ct = lshr exact i64 %i.cr, 2
  %i.cu = sub nsw i64 0, %i.ct
  %i.cv = and i64 %i.cu, 3
  %i.cw = tail call i64 @llvm.smin.i64(i64 %i.cv, i64 %i.cp)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.cw, %bb.n ], [ %i.cp, %bb.m ] ; 12 uses
  %i.cx = sub nsw i64 %i.cp, %.0.i.i.i.i.i.i.i.i  ; 5 uses
  %i.cy = sdiv i64 %i.cx, 8
  %i.cz = shl nsw i64 %i.cy, 3                    ; 2 uses
  %i.da = sdiv i64 %i.cx, 4                       ; 2 uses
  %i.db = shl nsw i64 %i.da, 2                    ; 2 uses
  %i.dc = add nsw i64 %i.cz, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.dd = add nsw i64 %i.db, %.0.i.i.i.i.i.i.i.i  ; 4 uses
  %.off.i.i.i.i = add i64 %i.cx, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.de = getelementptr [4 x i8], ptr %i.ce, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.df = load <2 x i64>, ptr %i.de, align 1, !tbaa !91 ; 2 uses
  %i.dg = icmp sgt i64 %i.cx, 7
  br i1 %i.dg, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.dh = getelementptr i8, ptr %i.de, i64 16
  %i.di = load <4 x i32>, ptr %i.dh, align 1, !tbaa !91 ; 2 uses
  %i.dj = bitcast <2 x i64> %i.df to <4 x i32>    ; 2 uses
  %i.dk = icmp samesign ugt i64 %i.cx, 15
  br i1 %i.dk, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.p
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.p
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.di, %bb.p ], [ %i.dv, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.dj, %bb.p ], [ %i.dr, %.lr.ph.i.i.i.i ]
  %i.dl = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.dm = bitcast <4 x i32> %i.dl to <2 x i64>
  %i.dn = icmp sgt i64 %i.db, %i.cz
  br i1 %i.dn, label %bb.q, label %bb.r

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.dr, %.lr.ph.i.i.i.i ], [ %i.dj, %.lr.ph.preheader.i.i.i.i ]
  %i.do = phi <4 x i32> [ %i.dv, %.lr.ph.i.i.i.i ], [ %i.di, %.lr.ph.preheader.i.i.i.i ]
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %.05780.i.i.i.i
  %i.dq = load <4 x i32>, ptr %i.dp, align 1, !tbaa !91
  %i.dr = add <4 x i32> %i.dq, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.ds = getelementptr [4 x i8], ptr %i.ce, i64 %.057.in79.i.i.i.i
  %i.dt = getelementptr i8, ptr %i.ds, i64 48
  %i.du = load <4 x i32>, ptr %i.dt, align 1, !tbaa !91
  %i.dv = add <4 x i32> %i.du, %i.do              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.dw = icmp slt i64 %.057.i.i.i.i, %i.dc
  br i1 %i.dw, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !569

bb.q:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.dc
  %i.dy = load <4 x i32>, ptr %i.dx, align 1, !tbaa !91
  %i.dz = add <4 x i32> %i.dy, %i.dl
  %i.ea = bitcast <4 x i32> %i.dz to <2 x i64>
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i, %bb.o
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.df, %bb.o ], [ %i.ea, %bb.q ], [ %i.dm, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.eb = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.ec = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.ed = shufflevector <4 x i32> %i.ec, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ee = add <4 x i32> %i.ed, %i.eb              ; 2 uses
  %shift = shufflevector <4 x i32> %i.ee, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.ee, %shift
  %6 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ec) ; 2 uses
  %i.ef = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.ef, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.r
  %min.iters.check174 = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check174, label %.lr.ph85.i.i.i.i.preheader303, label %vector.ph175

vector.ph175:                                     ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec176 = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.eg = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph175
  %index178 = phi i64 [ 0, %vector.ph175 ], [ %index.next182, %vector.body177 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.eg, %vector.ph175 ], [ %i.ej, %vector.body177 ]
  %vec.phi179 = phi <4 x i32> [ zeroinitializer, %vector.ph175 ], [ %i.ek, %vector.body177 ]
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %index178 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load180 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !63
  %wide.load181 = load <4 x i32>, ptr %i.ei, align 4, !tbaa !63
  %i.ej = add <4 x i32> %wide.load180, %vec.phi   ; 2 uses
  %i.ek = add <4 x i32> %wide.load181, %vec.phi179 ; 2 uses
  %index.next182 = add nuw i64 %index178, 8       ; 2 uses
  %i.el = icmp eq i64 %index.next182, %n.vec176
  br i1 %i.el, label %middle.block183, label %vector.body177, !llvm.loop !974

middle.block183:                                  ; preds = %vector.body177
  %bin.rdx = add <4 x i32> %i.ek, %i.ej
  %i.em = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n184 = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec176
  br i1 %cmp.n184, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader303

.lr.ph85.i.i.i.i.preheader303:                    ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block183
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec176, %middle.block183 ]
  %.07582.i.i.i.i.ph = phi i32 [ %6, %.lr.ph85.i.i.i.i.preheader ], [ %i.em, %middle.block183 ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block183, %bb.r
  %.075.lcssa.i.i.i.i = phi i32 [ %6, %bb.r ], [ %i.em, %middle.block183 ], [ %i.fc, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.en = icmp slt i64 %i.dd, %i.cp
  br i1 %i.en, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.eo = shl nsw i64 %i.da, 2
  %i.ep = add i64 %.0.i.i.i.i.i.i.i.i, %i.eo
  %i.eq = sub i64 %i.cp, %i.ep                    ; 3 uses
  %min.iters.check187 = icmp ult i64 %i.eq, 8
  br i1 %min.iters.check187, label %.lr.ph89.i.i.i.i.preheader298, label %vector.ph188

vector.ph188:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec189 = and i64 %i.eq, -8                   ; 3 uses
  %i.er = add i64 %i.dd, %n.vec189
  %i.es = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.et = getelementptr [4 x i8], ptr %i.ce, i64 %i.dd
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph188
  %index191 = phi i64 [ 0, %vector.ph188 ], [ %index.next196, %vector.body190 ] ; 2 uses
  %vec.phi192 = phi <4 x i32> [ %i.es, %vector.ph188 ], [ %i.ew, %vector.body190 ]
  %vec.phi193 = phi <4 x i32> [ zeroinitializer, %vector.ph188 ], [ %i.ex, %vector.body190 ]
  %i.eu = getelementptr [4 x i8], ptr %i.et, i64 %index191 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load194 = load <4 x i32>, ptr %i.eu, align 4, !tbaa !63
  %wide.load195 = load <4 x i32>, ptr %i.ev, align 4, !tbaa !63
  %i.ew = add <4 x i32> %wide.load194, %vec.phi192 ; 2 uses
  %i.ex = add <4 x i32> %wide.load195, %vec.phi193 ; 2 uses
  %index.next196 = add nuw i64 %index191, 8       ; 2 uses
  %i.ey = icmp eq i64 %index.next196, %n.vec189
  br i1 %i.ey, label %middle.block197, label %vector.body190, !llvm.loop !975

middle.block197:                                  ; preds = %vector.body190
  %bin.rdx198 = add <4 x i32> %i.ex, %i.ew
  %i.ez = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx198) ; 2 uses
  %cmp.n199 = icmp eq i64 %i.eq, %n.vec189
  br i1 %cmp.n199, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph89.i.i.i.i.preheader298

.lr.ph89.i.i.i.i.preheader298:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block197
  %.05588.i.i.i.i.ph = phi i64 [ %i.dd, %.lr.ph89.i.i.i.i.preheader ], [ %i.er, %middle.block197 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.ez, %middle.block197 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader303, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.fd, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader303 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.fc, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader303 ]
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.05683.i.i.i.i
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !63
  %i.fc = add nsw i32 %i.fb, %.07582.i.i.i.i      ; 2 uses
  %i.fd = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fd, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !976

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader298, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.fh, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader298 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.fg, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader298 ]
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %.05588.i.i.i.i
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !63
  %i.fg = add nsw i32 %i.ff, %.187.i.i.i.i        ; 2 uses
  %i.fh = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.fi = icmp slt i64 %i.fh, %i.cp
  br i1 %i.fi, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, !llvm.loop !977

bb.s:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.fj = load i32, ptr %i.ce, align 4, !tbaa !63 ; 3 uses
  %i.fk = icmp sgt i64 %i.cp, 1
  br i1 %i.fk, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.s
  %i.fl = add nsw i64 %i.cp, -1                   ; 2 uses
  %min.iters.check203 = icmp ult i64 %i.cp, 9
  br i1 %min.iters.check203, label %.lr.ph94.i.i.i.i.preheader294, label %vector.ph204

vector.ph204:                                     ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec205 = and i64 %i.fl, -8                   ; 3 uses
  %i.fm = or disjoint i64 %n.vec205, 1
  %i.fn = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.fj, i64 0
  br label %vector.body206

vector.body206:                                   ; preds = %vector.body206, %vector.ph204
  %index207 = phi i64 [ 0, %vector.ph204 ], [ %index.next212, %vector.body206 ] ; 2 uses
  %vec.phi208 = phi <4 x i32> [ %i.fn, %vector.ph204 ], [ %i.fr, %vector.body206 ]
  %vec.phi209 = phi <4 x i32> [ zeroinitializer, %vector.ph204 ], [ %i.fs, %vector.body206 ]
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %index207 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 20
  %wide.load210 = load <4 x i32>, ptr %i.fp, align 4, !tbaa !63
  %wide.load211 = load <4 x i32>, ptr %i.fq, align 4, !tbaa !63
  %i.fr = add <4 x i32> %wide.load210, %vec.phi208 ; 2 uses
  %i.fs = add <4 x i32> %wide.load211, %vec.phi209 ; 2 uses
  %index.next212 = add nuw i64 %index207, 8       ; 2 uses
  %i.ft = icmp eq i64 %index.next212, %n.vec205
  br i1 %i.ft, label %middle.block213, label %vector.body206, !llvm.loop !978

middle.block213:                                  ; preds = %vector.body206
  %bin.rdx214 = add <4 x i32> %i.fs, %i.fr
  %i.fu = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx214) ; 2 uses
  %cmp.n215 = icmp eq i64 %i.fl, %n.vec205
  br i1 %cmp.n215, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i.preheader294

.lr.ph94.i.i.i.i.preheader294:                    ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block213
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.fm, %middle.block213 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.fj, %.lr.ph94.i.i.i.i.preheader ], [ %i.fu, %middle.block213 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader294, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.fy, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader294 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.fx, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader294 ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.092.i.i.i.i
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !63
  %i.fx = add nsw i32 %i.fw, %.291.i.i.i.i        ; 2 uses
  %i.fy = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.fy, %i.cp
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i, !llvm.loop !979

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block197, %middle.block213, %.preheader.i.i.i.i, %bb.s, %bb.k
  %i.fz = phi i64 [ %i.cj, %bb.k ], [ %i.cp, %middle.block213 ], [ %i.cp, %.preheader.i.i.i.i ], [ %i.cp, %bb.s ], [ %i.cp, %middle.block197 ], [ %i.cp, %.lr.ph94.i.i.i.i ], [ %i.cp, %.lr.ph89.i.i.i.i ] ; 3 uses
  %.0.i.in = phi i32 [ %i.cn, %bb.k ], [ %i.fu, %middle.block213 ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.fj, %bb.s ], [ %i.ez, %middle.block197 ], [ %i.fx, %.lr.ph94.i.i.i.i ], [ %i.fg, %.lr.ph89.i.i.i.i ]
  %i.ga = icmp sgt i32 %.0.i.in, 0
  br i1 %i.ga, label %bb.t, label %_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj5ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit

bb.t:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !76 ; 3 uses
  %i.gd = icmp sgt i64 %i.gc, 0
  br i1 %i.gd, label %.preheader.lr.ph.i.i, label %_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj5ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit

.preheader.lr.ph.i.i:                             ; preds = %bb.t
  %i.ge = icmp sgt i64 %i.fz, 0
  %i.gf = load ptr, ptr %2, align 8               ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gh = load i64, ptr %i.gg, align 8            ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br i1 %i.ge, label %.preheader.i.i.preheader, label %_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj5ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit

.preheader.i.i.preheader:                         ; preds = %.preheader.lr.ph.i.i
  br i1 %i.cf, label %.preheader.i.i.us, label %.preheader.i.i

.preheader.i.i.us:                                ; preds = %.preheader.i.i.preheader, %._crit_edge.i.i.split.us.us
  %.044.i.i.us = phi i64 [ %i.io, %._crit_edge.i.i.split.us.us ], [ 0, %.preheader.i.i.preheader ] ; 2 uses
  %i.gl = mul nsw i64 %.044.i.i.us, %i.gh
  %invariant.gep42.i.i.us = getelementptr [8 x i8], ptr %i.gf, i64 %i.gl ; 4 uses
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.i.i.us.us, %.preheader.i.i.us
  %.01838.i.i.us.us = phi i64 [ 0, %.preheader.i.i.us ], [ %i.in, %.loopexit.i.i.us.us ] ; 5 uses
  %gep43.i.i.us.us = getelementptr [8 x i8], ptr %invariant.gep42.i.i.us, i64 %.01838.i.i.us.us ; 4 uses
  %i.gm = load double, ptr %gep43.i.i.us.us, align 8, !tbaa !64
  %i.gn = fcmp une double %i.gm, 0.000000e+00
  br i1 %i.gn, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i.us.us, label %.loopexit.i.i.us.us

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i.us.us: ; preds = %bb.u
  %i.go = load ptr, ptr %i.gi, align 8, !tbaa !150 ; 3 uses
  %i.gp = load ptr, ptr %i.gj, align 8, !tbaa !151 ; 4 uses
  %i.gq = load ptr, ptr %i.gk, align 8, !tbaa !152
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %.01838.i.i.us.us ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !63 ; 2 uses
  %i.gt = sext i32 %i.gs to i64                   ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gr, i64 4
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !63 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZNK5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE11_solve_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_EEvRKNS_10MatrixBaseIT_EERNSB_IT0_EE:bb.a
  br i1 %i.jh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i
  %i.ji = add nsw i64 %.sroa.10.035.i.i, 1        ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ji, %i.jc
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !980

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.jj = icmp eq i64 %.01838.i.i, %i.jg
  %i.jk = zext i1 %i.jj to i64
  %spec.select.i.i = add nsw i64 %.sroa.10.035.i.i, %i.jk
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.z, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i
  %.sroa.10.1.i.i = phi i64 [ %spec.select.i.i, %bb.z ], [ %i.iy, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i ] ; 7 uses
  %i.jl = icmp slt i64 %.sroa.10.1.i.i, %i.jc
  br i1 %i.jl, label %.lr.ph37.i.i.preheader, label %.loopexit.i.i

.lr.ph37.i.i.preheader:                           ; preds = %.critedge.i.i
  %i.jm = add nsw i64 %i.jb, %i.iy
  %i.jn = sub i64 %i.jm, %.sroa.10.1.i.i
  %i.jo = add nsw i64 %i.jb, -1
  %i.jp = add nsw i64 %i.jo, %i.iy
  %xtraiter310 = and i64 %i.jn, 1
  %lcmp.mod311.not = icmp eq i64 %xtraiter310, 0
  br i1 %lcmp.mod311.not, label %.lr.ph37.i.i.prol.loopexit, label %.lr.ph37.i.i.prol

.lr.ph37.i.i.prol:                                ; preds = %.lr.ph37.i.i.preheader
  %i.jq = load double, ptr %gep43.i.i, align 8, !tbaa !64
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.it, i64 %.sroa.10.1.i.i
  %i.js = load double, ptr %i.jr, align 8, !tbaa !64
  %i.jt = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %.sroa.10.1.i.i
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !63
  %i.jv = sext i32 %i.ju to i64
  %gep.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep42.i.i, i64 %i.jv ; 2 uses
  %i.jw = load double, ptr %gep.i.i.prol, align 8, !tbaa !64
  %i.jx = fneg double %i.jq
  %i.jy = tail call double @llvm.fmuladd.f64(double %i.jx, double %i.js, double %i.jw)
  store double %i.jy, ptr %gep.i.i.prol, align 8, !tbaa !64
  %i.jz = add nsw i64 %.sroa.10.1.i.i, 1
  br label %.lr.ph37.i.i.prol.loopexit

.lr.ph37.i.i.prol.loopexit:                       ; preds = %.lr.ph37.i.i.prol, %.lr.ph37.i.i.preheader
  %.sroa.10.236.i.i.unr = phi i64 [ %.sroa.10.1.i.i, %.lr.ph37.i.i.preheader ], [ %i.jz, %.lr.ph37.i.i.prol ]
  %i.ka = icmp eq i64 %i.jp, %.sroa.10.1.i.i
  br i1 %i.ka, label %.loopexit.i.i, label %.lr.ph37.i.i

.lr.ph37.i.i:                                     ; preds = %.lr.ph37.i.i.prol.loopexit, %.lr.ph37.i.i
  %.sroa.10.236.i.i = phi i64 [ %i.ku, %.lr.ph37.i.i ], [ %.sroa.10.236.i.i.unr, %.lr.ph37.i.i.prol.loopexit ] ; 4 uses
  %i.kb = load double, ptr %gep43.i.i, align 8, !tbaa !64
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.it, i64 %.sroa.10.236.i.i
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !64
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %.sroa.10.236.i.i
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !63
  %i.kg = sext i32 %i.kf to i64
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep42.i.i, i64 %i.kg ; 2 uses
  %i.kh = load double, ptr %gep.i.i, align 8, !tbaa !64
  %i.ki = fneg double %i.kb
  %i.kj = tail call double @llvm.fmuladd.f64(double %i.ki, double %i.kd, double %i.kh)
  store double %i.kj, ptr %gep.i.i, align 8, !tbaa !64
  %i.kk = add nsw i64 %.sroa.10.236.i.i, 1        ; 2 uses
  %i.kl = load double, ptr %gep43.i.i, align 8, !tbaa !64
  %i.km = getelementptr inbounds [8 x i8], ptr %i.it, i64 %i.kk
  %i.kn = load double, ptr %i.km, align 8, !tbaa !64
  %i.ko = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %i.kk
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !63
  %i.kq = sext i32 %i.kp to i64
  %gep.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep42.i.i, i64 %i.kq ; 2 uses
  %i.kr = load double, ptr %gep.i.i.1, align 8, !tbaa !64
  %i.ks = fneg double %i.kl
  %i.kt = tail call double @llvm.fmuladd.f64(double %i.ks, double %i.kn, double %i.kr)
  store double %i.kt, ptr %gep.i.i.1, align 8, !tbaa !64
  %i.ku = add nsw i64 %.sroa.10.236.i.i, 2        ; 2 uses
  %exitcond47.not.i.i.1 = icmp eq i64 %i.ku, %i.jc
  br i1 %exitcond47.not.i.i.1, label %.loopexit.i.i, label %.lr.ph37.i.i, !llvm.loop !981

.loopexit.i.i:                                    ; preds = %bb.y, %.lr.ph37.i.i.prol.loopexit, %.lr.ph37.i.i, %.critedge.i.i, %bb.x
  %i.kv = add nuw nsw i64 %.01838.i.i, 1          ; 2 uses
  %exitcond48.not.i.i = icmp eq i64 %i.kv, %i.fz
  br i1 %exitcond48.not.i.i, label %._crit_edge.i.i.split, label %bb.x, !llvm.loop !982

_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj5ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit: ; preds = %._crit_edge.i.i.split, %._crit_edge.i.i.split.us.us, %bb.l, %.preheader.lr.ph.i.i, %bb.t, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !72
  %i.ky = icmp sgt i64 %i.kx, 0
  br i1 %i.ky, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj5ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.la = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.kz, ptr %i.la, align 8, !tbaa !116, !alias.scope !984
  %i.lb = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %2, ptr %i.lb, align 8, !tbaa !93, !alias.scope !984
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS0_17scalar_inverse_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEEES3_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %.pre = load ptr, ptr %i.cd, align 8, !tbaa !153
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj5ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit
  %i.lc = phi ptr [ %.pre, %bb.aa ], [ %i.ce, %_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj5ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRNS_10MatrixBaseIT_EE.exit ] ; 13 uses
  %i.ld = icmp eq ptr %i.lc, null
  br i1 %i.ld, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !152 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !148
  %i.li = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %i.lh
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !63
  %i.lk = load i32, ptr %i.lf, align 4, !tbaa !63
  %i.ll = sub nsw i32 %i.lj, %i.lk
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46

bb.ad:                                            ; preds = %bb.ab
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !148 ; 11 uses
  %i.lo = icmp eq i64 %i.ln, 0
  br i1 %i.lo, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.lp = ptrtoint ptr %i.lc to i64               ; 2 uses
  %i.lq = and i64 %i.lp, 3
  %.not.i.i.i.i.i.i.i.i12 = icmp eq i64 %i.lq, 0
  br i1 %.not.i.i.i.i.i.i.i.i12, label %bb.af, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i13

bb.af:                                            ; preds = %bb.ae
  %i.lr = lshr exact i64 %i.lp, 2
  %i.ls = sub nsw i64 0, %i.lr
  %i.lt = and i64 %i.ls, 3
  %i.lu = call i64 @llvm.smin.i64(i64 %i.lt, i64 %i.ln)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i13

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i13: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i.i.i14 = phi i64 [ %i.lu, %bb.af ], [ %i.ln, %bb.ae ] ; 12 uses
  %i.lv = sub nsw i64 %i.ln, %.0.i.i.i.i.i.i.i.i14 ; 5 uses
  %i.lw = sdiv i64 %i.lv, 8
  %i.lx = shl nsw i64 %i.lw, 3                    ; 2 uses
  %i.ly = sdiv i64 %i.lv, 4                       ; 2 uses
  %i.lz = shl nsw i64 %i.ly, 2                    ; 2 uses
  %i.ma = add nsw i64 %i.lx, %.0.i.i.i.i.i.i.i.i14 ; 2 uses
  %i.mb = add nsw i64 %i.lz, %.0.i.i.i.i.i.i.i.i14 ; 4 uses
  %.off.i.i.i.i15 = add i64 %i.lv, 3
  %.not.i.i.i.i16 = icmp ult i64 %.off.i.i.i.i15, 7
  br i1 %.not.i.i.i.i16, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i13
  %i.mc = getelementptr [4 x i8], ptr %i.lc, i64 %.0.i.i.i.i.i.i.i.i14 ; 2 uses
  %i.md = load <2 x i64>, ptr %i.mc, align 1, !tbaa !91 ; 2 uses
  %i.me = icmp sgt i64 %i.lv, 7
  br i1 %i.me, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.mf = getelementptr i8, ptr %i.mc, i64 16
  %i.mg = load <4 x i32>, ptr %i.mf, align 1, !tbaa !91 ; 2 uses
  %i.mh = bitcast <2 x i64> %i.md to <4 x i32>    ; 2 uses
  %i.mi = icmp samesign ugt i64 %i.lv, 15
  br i1 %i.mi, label %.lr.ph.preheader.i.i.i.i35, label %._crit_edge.i.i.i.i32

.lr.ph.preheader.i.i.i.i35:                       ; preds = %bb.ah
  %.05777.i.i.i.i36 = add nsw i64 %.0.i.i.i.i.i.i.i.i14, 8
  br label %.lr.ph.i.i.i.i37

._crit_edge.i.i.i.i32:                            ; preds = %.lr.ph.i.i.i.i37, %bb.ah
  %.lcssa.i.i.i.i33 = phi <4 x i32> [ %i.mg, %bb.ah ], [ %i.mt, %.lr.ph.i.i.i.i37 ]
  %.sroa.067.0.lcssa.i.i.i.i34 = phi <4 x i32> [ %i.mh, %bb.ah ], [ %i.mp, %.lr.ph.i.i.i.i37 ]
  %i.mj = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i34, %.lcssa.i.i.i.i33 ; 2 uses
  %i.mk = bitcast <4 x i32> %i.mj to <2 x i64>
  %i.ml = icmp sgt i64 %i.lz, %i.lx
  br i1 %i.ml, label %bb.ai, label %bb.aj

.lr.ph.i.i.i.i37:                                 ; preds = %.lr.ph.i.i.i.i37, %.lr.ph.preheader.i.i.i.i35
  %.05780.i.i.i.i38 = phi i64 [ %.057.i.i.i.i41, %.lr.ph.i.i.i.i37 ], [ %.05777.i.i.i.i36, %.lr.ph.preheader.i.i.i.i35 ] ; 3 uses
  %.057.in79.i.i.i.i39 = phi i64 [ %.05780.i.i.i.i38, %.lr.ph.i.i.i.i37 ], [ %.0.i.i.i.i.i.i.i.i14, %.lr.ph.preheader.i.i.i.i35 ]
  %.sroa.067.078.i.i.i.i40 = phi <4 x i32> [ %i.mp, %.lr.ph.i.i.i.i37 ], [ %i.mh, %.lr.ph.preheader.i.i.i.i35 ]
  %i.mm = phi <4 x i32> [ %i.mt, %.lr.ph.i.i.i.i37 ], [ %i.mg, %.lr.ph.preheader.i.i.i.i35 ]
  %i.mn = getelementptr inbounds [4 x i8], ptr %i.lc, i64 %.05780.i.i.i.i38
  %i.mo = load <4 x i32>, ptr %i.mn, align 1, !tbaa !91
  %i.mp = add <4 x i32> %i.mo, %.sroa.067.078.i.i.i.i40 ; 2 uses
  %i.mq = getelementptr [4 x i8], ptr %i.lc, i64 %.057.in79.i.i.i.i39
  %i.mr = getelementptr i8, ptr %i.mq, i64 48
  %i.ms = load <4 x i32>, ptr %i.mr, align 1, !tbaa !91
  %i.mt = add <4 x i32> %i.ms, %i.mm              ; 2 uses
  %.057.i.i.i.i41 = add nsw i64 %.05780.i.i.i.i38, 8 ; 2 uses
  %i.mu = icmp slt i64 %.057.i.i.i.i41, %i.ma
  br i1 %i.mu, label %.lr.ph.i.i.i.i37, label %._crit_edge.i.i.i.i32, !llvm.loop !569

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i32
  %i.mv = getelementptr inbounds [4 x i8], ptr %i.lc, i64 %i.ma
  %i.mw = load <4 x i32>, ptr %i.mv, align 1, !tbaa !91
  %i.mx = add <4 x i32> %i.mw, %i.mj
  %i.my = bitcast <4 x i32> %i.mx to <2 x i64>
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge.i.i.i.i32, %bb.ag
  %.sroa.067.2.i.i.i.i17 = phi <2 x i64> [ %i.md, %bb.ag ], [ %i.my, %bb.ai ], [ %i.mk, %._crit_edge.i.i.i.i32 ] ; 2 uses
  %i.mz = bitcast <2 x i64> %.sroa.067.2.i.i.i.i17 to <4 x i32>
  %i.na = bitcast <2 x i64> %.sroa.067.2.i.i.i.i17 to <4 x i32> ; 2 uses
  %i.nb = shufflevector <4 x i32> %i.na, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.nc = add <4 x i32> %i.nb, %i.mz              ; 2 uses
  %shift267 = shufflevector <4 x i32> %i.nc, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop268 = add nsw <4 x i32> %i.nc, %shift267
  %7 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.na) ; 2 uses
  %i.nd = icmp sgt i64 %.0.i.i.i.i.i.i.i.i14, 0
  br i1 %i.nd, label %.lr.ph85.i.i.i.i28.preheader, label %.preheader.i.i.i.i20

.lr.ph85.i.i.i.i28.preheader:                     ; preds = %bb.aj
  %min.iters.check219 = icmp ult i64 %.0.i.i.i.i.i.i.i.i14, 8
  br i1 %min.iters.check219, label %.lr.ph85.i.i.i.i28.preheader278, label %vector.ph220

vector.ph220:                                     ; preds = %.lr.ph85.i.i.i.i28.preheader
  %n.vec221 = and i64 %.0.i.i.i.i.i.i.i.i14, 9223372036854775800 ; 3 uses
  %i.ne = shufflevector <4 x i32> %foldExtExtBinop268, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body222

vector.body222:                                   ; preds = %vector.body222, %vector.ph220
  %index223 = phi i64 [ 0, %vector.ph220 ], [ %index.next228, %vector.body222 ] ; 2 uses
  %vec.phi224 = phi <4 x i32> [ %i.ne, %vector.ph220 ], [ %i.nh, %vector.body222 ]
  %vec.phi225 = phi <4 x i32> [ zeroinitializer, %vector.ph220 ], [ %i.ni, %vector.body222 ]
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %index223 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %wide.load226 = load <4 x i32>, ptr %i.nf, align 4, !tbaa !63
  %wide.load227 = load <4 x i32>, ptr %i.ng, align 4, !tbaa !63
  %i.nh = add <4 x i32> %wide.load226, %vec.phi224 ; 2 uses
  %i.ni = add <4 x i32> %wide.load227, %vec.phi225 ; 2 uses
  %index.next228 = add nuw i64 %index223, 8       ; 2 uses
  %i.nj = icmp eq i64 %index.next228, %n.vec221
  br i1 %i.nj, label %middle.block229, label %vector.body222, !llvm.loop !987

middle.block229:                                  ; preds = %vector.body222
  %bin.rdx230 = add <4 x i32> %i.ni, %i.nh
  %i.nk = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx230) ; 2 uses
  %cmp.n231 = icmp eq i64 %.0.i.i.i.i.i.i.i.i14, %n.vec221
  br i1 %cmp.n231, label %.preheader.i.i.i.i20, label %.lr.ph85.i.i.i.i28.preheader278

.lr.ph85.i.i.i.i28.preheader278:                  ; preds = %.lr.ph85.i.i.i.i28.preheader, %middle.block229
  %.05683.i.i.i.i29.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i28.preheader ], [ %n.vec221, %middle.block229 ]
  %.07582.i.i.i.i30.ph = phi i32 [ %7, %.lr.ph85.i.i.i.i28.preheader ], [ %i.nk, %middle.block229 ]
  br label %.lr.ph85.i.i.i.i28

.preheader.i.i.i.i20:                             ; preds = %.lr.ph85.i.i.i.i28, %middle.block229, %bb.aj
  %.075.lcssa.i.i.i.i21 = phi i32 [ %7, %bb.aj ], [ %i.nk, %middle.block229 ], [ %i.oa, %.lr.ph85.i.i.i.i28 ] ; 3 uses
  %i.nl = icmp slt i64 %i.mb, %i.ln
  br i1 %i.nl, label %.lr.ph89.i.i.i.i25.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46

.lr.ph89.i.i.i.i25.preheader:                     ; preds = %.preheader.i.i.i.i20
  %i.nm = shl nsw i64 %i.ly, 2
  %i.nn = add i64 %.0.i.i.i.i.i.i.i.i14, %i.nm
  %i.no = sub i64 %i.ln, %i.nn                    ; 3 uses
  %min.iters.check235 = icmp ult i64 %i.no, 8
  br i1 %min.iters.check235, label %.lr.ph89.i.i.i.i25.preheader273, label %vector.ph236

vector.ph236:                                     ; preds = %.lr.ph89.i.i.i.i25.preheader
  %n.vec237 = and i64 %i.no, -8                   ; 3 uses
  %i.np = add i64 %i.mb, %n.vec237
  %i.nq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i21, i64 0
  %i.nr = getelementptr [4 x i8], ptr %i.lc, i64 %i.mb
  br label %vector.body238

vector.body238:                                   ; preds = %vector.body238, %vector.ph236
  %index239 = phi i64 [ 0, %vector.ph236 ], [ %index.next244, %vector.body238 ] ; 2 uses
  %vec.phi240 = phi <4 x i32> [ %i.nq, %vector.ph236 ], [ %i.nu, %vector.body238 ]
  %vec.phi241 = phi <4 x i32> [ zeroinitializer, %vector.ph236 ], [ %i.nv, %vector.body238 ]
  %i.ns = getelementptr [4 x i8], ptr %i.nr, i64 %index239 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %wide.load242 = load <4 x i32>, ptr %i.ns, align 4, !tbaa !63
  %wide.load243 = load <4 x i32>, ptr %i.nt, align 4, !tbaa !63
  %i.nu = add <4 x i32> %wide.load242, %vec.phi240 ; 2 uses
  %i.nv = add <4 x i32> %wide.load243, %vec.phi241 ; 2 uses
  %index.next244 = add nuw i64 %index239, 8       ; 2 uses
  %i.nw = icmp eq i64 %index.next244, %n.vec237
  br i1 %i.nw, label %middle.block245, label %vector.body238, !llvm.loop !988

middle.block245:                                  ; preds = %vector.body238
  %bin.rdx246 = add <4 x i32> %i.nv, %i.nu
  %i.nx = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx246) ; 2 uses
  %cmp.n247 = icmp eq i64 %i.no, %n.vec237
  br i1 %cmp.n247, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46, label %.lr.ph89.i.i.i.i25.preheader273

.lr.ph89.i.i.i.i25.preheader273:                  ; preds = %.lr.ph89.i.i.i.i25.preheader, %middle.block245
  %.05588.i.i.i.i26.ph = phi i64 [ %i.mb, %.lr.ph89.i.i.i.i25.preheader ], [ %i.np, %middle.block245 ]
  %.187.i.i.i.i27.ph = phi i32 [ %.075.lcssa.i.i.i.i21, %.lr.ph89.i.i.i.i25.preheader ], [ %i.nx, %middle.block245 ]
  br label %.lr.ph89.i.i.i.i25

.lr.ph85.i.i.i.i28:                               ; preds = %.lr.ph85.i.i.i.i28.preheader278, %.lr.ph85.i.i.i.i28
  %.05683.i.i.i.i29 = phi i64 [ %i.ob, %.lr.ph85.i.i.i.i28 ], [ %.05683.i.i.i.i29.ph, %.lr.ph85.i.i.i.i28.preheader278 ] ; 2 uses
  %.07582.i.i.i.i30 = phi i32 [ %i.oa, %.lr.ph85.i.i.i.i28 ], [ %.07582.i.i.i.i30.ph, %.lr.ph85.i.i.i.i28.preheader278 ]
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %.05683.i.i.i.i29
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !63
  %i.oa = add nsw i32 %i.nz, %.07582.i.i.i.i30    ; 2 uses
  %i.ob = add nuw nsw i64 %.05683.i.i.i.i29, 1    ; 2 uses
  %exitcond.not.i.i.i.i31 = icmp eq i64 %i.ob, %.0.i.i.i.i.i.i.i.i14
  br i1 %exitcond.not.i.i.i.i31, label %.preheader.i.i.i.i20, label %.lr.ph85.i.i.i.i28, !llvm.loop !989

.lr.ph89.i.i.i.i25:                               ; preds = %.lr.ph89.i.i.i.i25.preheader273, %.lr.ph89.i.i.i.i25
  %.05588.i.i.i.i26 = phi i64 [ %i.of, %.lr.ph89.i.i.i.i25 ], [ %.05588.i.i.i.i26.ph, %.lr.ph89.i.i.i.i25.preheader273 ] ; 2 uses
  %.187.i.i.i.i27 = phi i32 [ %i.oe, %.lr.ph89.i.i.i.i25 ], [ %.187.i.i.i.i27.ph, %.lr.ph89.i.i.i.i25.preheader273 ]
  %i.oc = getelementptr inbounds [4 x i8], ptr %i.lc, i64 %.05588.i.i.i.i26
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !63
  %i.oe = add nsw i32 %i.od, %.187.i.i.i.i27      ; 2 uses
  %i.of = add nsw i64 %.05588.i.i.i.i26, 1        ; 2 uses
  %i.og = icmp slt i64 %i.of, %i.ln
  br i1 %i.og, label %.lr.ph89.i.i.i.i25, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46, !llvm.loop !990

bb.ak:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i13
  %i.oh = load i32, ptr %i.lc, align 4, !tbaa !63 ; 3 uses
  %i.oi = icmp sgt i64 %i.ln, 1
  br i1 %i.oi, label %.lr.ph94.i.i.i.i42.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46

.lr.ph94.i.i.i.i42.preheader:                     ; preds = %bb.ak
  %i.oj = add nsw i64 %i.ln, -1                   ; 2 uses
  %min.iters.check251 = icmp ult i64 %i.ln, 9
  br i1 %min.iters.check251, label %.lr.ph94.i.i.i.i42.preheader270, label %vector.ph252

vector.ph252:                                     ; preds = %.lr.ph94.i.i.i.i42.preheader
  %n.vec253 = and i64 %i.oj, -8                   ; 3 uses
  %i.ok = or disjoint i64 %n.vec253, 1
  %i.ol = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.oh, i64 0
  br label %vector.body254

vector.body254:                                   ; preds = %vector.body254, %vector.ph252
  %index255 = phi i64 [ 0, %vector.ph252 ], [ %index.next260, %vector.body254 ] ; 2 uses
  %vec.phi256 = phi <4 x i32> [ %i.ol, %vector.ph252 ], [ %i.op, %vector.body254 ]
  %vec.phi257 = phi <4 x i32> [ zeroinitializer, %vector.ph252 ], [ %i.oq, %vector.body254 ]
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %index255 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 4
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 20
  %wide.load258 = load <4 x i32>, ptr %i.on, align 4, !tbaa !63
  %wide.load259 = load <4 x i32>, ptr %i.oo, align 4, !tbaa !63
  %i.op = add <4 x i32> %wide.load258, %vec.phi256 ; 2 uses
  %i.oq = add <4 x i32> %wide.load259, %vec.phi257 ; 2 uses
  %index.next260 = add nuw i64 %index255, 8       ; 2 uses
  %i.or = icmp eq i64 %index.next260, %n.vec253
  br i1 %i.or, label %middle.block261, label %vector.body254, !llvm.loop !991

middle.block261:                                  ; preds = %vector.body254
  %bin.rdx262 = add <4 x i32> %i.oq, %i.op
  %i.os = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx262) ; 2 uses
  %cmp.n263 = icmp eq i64 %i.oj, %n.vec253
  br i1 %cmp.n263, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46, label %.lr.ph94.i.i.i.i42.preheader270

.lr.ph94.i.i.i.i42.preheader270:                  ; preds = %.lr.ph94.i.i.i.i42.preheader, %middle.block261
  %.092.i.i.i.i43.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i42.preheader ], [ %i.ok, %middle.block261 ]
  %.291.i.i.i.i44.ph = phi i32 [ %i.oh, %.lr.ph94.i.i.i.i42.preheader ], [ %i.os, %middle.block261 ]
  br label %.lr.ph94.i.i.i.i42

.lr.ph94.i.i.i.i42:                               ; preds = %.lr.ph94.i.i.i.i42.preheader270, %.lr.ph94.i.i.i.i42
  %.092.i.i.i.i43 = phi i64 [ %i.ow, %.lr.ph94.i.i.i.i42 ], [ %.092.i.i.i.i43.ph, %.lr.ph94.i.i.i.i42.preheader270 ] ; 2 uses
  %.291.i.i.i.i44 = phi i32 [ %i.ov, %.lr.ph94.i.i.i.i42 ], [ %.291.i.i.i.i44.ph, %.lr.ph94.i.i.i.i42.preheader270 ]
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %.092.i.i.i.i43
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !63
  %i.ov = add nsw i32 %i.ou, %.291.i.i.i.i44      ; 2 uses
  %i.ow = add nuw nsw i64 %.092.i.i.i.i43, 1      ; 2 uses
  %exitcond102.not.i.i.i.i45 = icmp eq i64 %i.ow, %i.ln
  br i1 %exitcond102.not.i.i.i.i45, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46, label %.lr.ph94.i.i.i.i42, !llvm.loop !992

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46: ; preds = %.lr.ph89.i.i.i.i25, %.lr.ph94.i.i.i.i42, %middle.block245, %middle.block261, %.preheader.i.i.i.i20, %bb.ak, %bb.ac
  %.0.i24.in = phi i32 [ %i.ll, %bb.ac ], [ %i.ov, %.lr.ph94.i.i.i.i42 ], [ %.075.lcssa.i.i.i.i21, %.preheader.i.i.i.i20 ], [ %i.oh, %bb.ak ], [ %i.os, %middle.block261 ], [ %i.nx, %middle.block245 ], [ %i.oe, %.lr.ph89.i.i.i.i25 ]
  %i.ox = icmp sgt i32 %.0.i24.in, 0
  br i1 %i.ox, label %bb.al, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46.thread

bb.al:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i8 0, ptr %5, align 8, !tbaa !635, !alias.scope !993
  %i.oy = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i8 0, ptr %i.oy, align 8, !alias.scope !993
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.cc, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !993
  call void @_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi6ELi2ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(16) %i.oy, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46.thread

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46.thread: ; preds = %bb.ad, %bb.al, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46
  %i.oz = load i64, ptr %i.d, align 8, !tbaa !14
  %i.pa = icmp sgt i64 %i.oz, 0
  br i1 %i.pa, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46.thread
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !14 ; 5 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.pf = load i64, ptr %i.pe, align 8, !tbaa !76 ; 4 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ph = load i64, ptr %i.pg, align 8, !tbaa !75
  %.not.i.i.i.i.i49 = icmp eq i64 %i.ph, %i.pd
  br i1 %.not.i.i.i.i.i49, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit56, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.pi = icmp eq i64 %i.pd, 0
  %i.pj = icmp eq i64 %i.pf, 0
  %or.cond.i.i.i.i.i.i.i52 = or i1 %i.pi, %i.pj
  br i1 %or.cond.i.i.i.i.i.i.i52, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i53, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.pk = sdiv i64 9223372036854775807, %i.pf
  %i.pl = icmp sgt i64 %i.pd, %i.pk
  br i1 %i.pl, label %bb.ap, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i53

bb.ap:                                            ; preds = %bb.ao
  %i.pm = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.pm, align 8, !tbaa !73
  call void @__cxa_throw(ptr nonnull %i.pm, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
end_hunk_8
