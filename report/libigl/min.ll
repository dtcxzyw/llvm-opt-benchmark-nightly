Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min?download=true
inline.NumInlined: 352
inline.NumDeleted: 238
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN3igl3minIN5Eigen5ArrayIbLin1ELi3ELi0ELin1ELi3EEENS2_IbLin1ELi1ELi0ELin1ELi1EEENS1_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_9DenseBaseIT_EEiRNS1_15PlainObjectBaseIT0_EERNSC_IT1_EE:bb.a
  br i1 %exitcond53.not, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.us, !llvm.loop !25

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.ae = icmp sgt i64 %i.v, 1
  %wide.trip.count47 = zext nneg i32 %i.g to i64  ; 6 uses
  br i1 %i.ae, label %.lr.ph.i.i.i.i.preheader.us.us.preheader, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.preheader

.lr.ph.i.i.i.i.preheader.us.us.preheader:         ; preds = %.lr.ph.split.us.split
  %i.af = add nsw i64 %i.v, -1                    ; 2 uses
  %i.ag = add nsw i64 %i.v, -2
  %xtraiter83 = and i64 %i.af, 3                  ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 3
  %unroll_iter = and i64 %i.af, -4
  %lcmp.mod84.not = icmp eq i64 %xtraiter83, 0
  %lcmp.mod87 = icmp ne i64 %xtraiter83, 0
  br label %.lr.ph.i.i.i.i.preheader.us.us

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.preheader: ; preds = %.lr.ph.split.us.split
  %min.iters.check = icmp ult i32 %i.g, 8
  %ident.check.not = icmp ne i64 %i.v, 1
  %or.cond.not77 = select i1 %min.iters.check, i1 true, i1 %ident.check.not
  %i.ai = sub i64 %i.u, %i.q
  %diff.check = icmp ugt i64 %i.ai, -8
  %or.cond76 = select i1 %or.cond.not77, i1 true, i1 %diff.check
  br i1 %or.cond76, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.preheader80, label %vector.ph

vector.ph:                                        ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.preheader
  %n.vec = and i64 %wide.trip.count47, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aj = getelementptr inbounds i8, ptr %i.t, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %wide.load = load <4 x i8>, ptr %i.aj, align 1, !tbaa !40
  %wide.load65 = load <4 x i8>, ptr %i.ak, align 1, !tbaa !40
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store <4 x i8> %wide.load, ptr %i.al, align 1, !tbaa !40
  store <4 x i8> %wide.load65, ptr %i.am, align 1, !tbaa !40
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <4 x i32> zeroinitializer, ptr %i.an, align 4, !tbaa !16
  store <4 x i32> zeroinitializer, ptr %i.ao, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count47
  br i1 %cmp.n, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.preheader80

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.preheader80: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.preheader, %middle.block
  %indvars.iv39.ph = phi i64 [ 0, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count47, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.prol.loopexit, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.prol

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.prol: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.preheader80
  %i.aq = mul nsw i64 %i.v, %indvars.iv39.ph
  %i.ar = getelementptr inbounds i8, ptr %i.t, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !40, !range !41, !noundef !38
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv39.ph
  store i8 %i.as, ptr %i.at, align 1, !tbaa !40
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv39.ph
  store i32 0, ptr %i.au, align 4, !tbaa !16
  %indvars.iv.next40.prol = or disjoint i64 %indvars.iv39.ph, 1
  br label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.prol.loopexit

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.prol.loopexit: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.prol, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.preheader80
  %indvars.iv39.unr = phi i64 [ %indvars.iv39.ph, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.preheader80 ], [ %indvars.iv.next40.prol, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.prol ]
  %i.av = add nsw i64 %wide.trip.count47, -1
  %i.aw = icmp eq i64 %indvars.iv39.ph, %i.av
  br i1 %i.aw, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us

.lr.ph.i.i.i.i.preheader.us.us:                   ; preds = %.lr.ph.i.i.i.i.preheader.us.us.preheader, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us ], [ 0, %.lr.ph.i.i.i.i.preheader.us.us.preheader ] ; 4 uses
  %i.ax = mul nuw nsw i64 %i.v, %indvars.iv44
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ax ; 6 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !40, !range !41, !noundef !38 ; 4 uses
  br i1 %i.ah, label %.lr.ph.i.i.i.i.us.us.epil.preheader, label %.lr.ph.i.i.i.i.us.us

.lr.ph.i.i.i.i.us.us:                             ; preds = %.lr.ph.i.i.i.i.preheader.us.us, %.lr.ph.i.i.i.i.us.us
  %.sroa.0.0.i.i.us.us = phi i64 [ %.sroa.0.1.i.i.us.us.3, %.lr.ph.i.i.i.i.us.us ], [ 0, %.lr.ph.i.i.i.i.preheader.us.us ]
  %.sroa.8.0.i.i.us.us = phi i8 [ %.sroa.8.1.i.i.us.us.3, %.lr.ph.i.i.i.i.us.us ], [ %i.az, %.lr.ph.i.i.i.i.preheader.us.us ]
  %.02125.i.i.i.i.us.us = phi i64 [ %i.bx, %.lr.ph.i.i.i.i.us.us ], [ 1, %.lr.ph.i.i.i.i.preheader.us.us ] ; 6 uses
  %i.ba = phi i8 [ %i.bw, %.lr.ph.i.i.i.i.us.us ], [ %i.az, %.lr.ph.i.i.i.i.preheader.us.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i.us.us ], [ 0, %.lr.ph.i.i.i.i.preheader.us.us ]
  %i.bb = getelementptr i8, ptr %i.ay, i64 %.02125.i.i.i.i.us.us
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !40, !range !41, !noundef !38
  %i.bd = icmp samesign ult i8 %i.bc, %i.ba       ; 3 uses
  %.sroa.0.1.i.i.us.us = select i1 %i.bd, i64 %.02125.i.i.i.i.us.us, i64 %.sroa.0.0.i.i.us.us
  %i.be = select i1 %i.bd, i8 0, i8 %i.ba         ; 2 uses
  %i.bf = add nuw nsw i64 %.02125.i.i.i.i.us.us, 1 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ay, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !40, !range !41, !noundef !38
  %i.bi = icmp samesign ult i8 %i.bh, %i.be       ; 3 uses
  %.sroa.0.1.i.i.us.us.1 = select i1 %i.bi, i64 %i.bf, i64 %.sroa.0.1.i.i.us.us
  %i.bj = or i1 %i.bi, %i.bd
  %i.bk = select i1 %i.bi, i8 0, i8 %i.be         ; 2 uses
  %i.bl = add nuw nsw i64 %.02125.i.i.i.i.us.us, 2 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.ay, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !40, !range !41, !noundef !38
  %i.bo = icmp samesign ult i8 %i.bn, %i.bk       ; 3 uses
  %.sroa.0.1.i.i.us.us.2 = select i1 %i.bo, i64 %i.bl, i64 %.sroa.0.1.i.i.us.us.1
  %i.bp = select i1 %i.bo, i8 0, i8 %i.bk         ; 2 uses
  %i.bq = add nuw nsw i64 %.02125.i.i.i.i.us.us, 3 ; 2 uses
  %i.br = getelementptr i8, ptr %i.ay, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !40, !range !41, !noundef !38
  %i.bt = icmp samesign ult i8 %i.bs, %i.bp       ; 3 uses
  %.sroa.0.1.i.i.us.us.3 = select i1 %i.bt, i64 %i.bq, i64 %.sroa.0.1.i.i.us.us.2 ; 3 uses
  %i.bu = or i1 %i.bt, %i.bo
  %i.bv = select i1 %i.bu, i1 true, i1 %i.bj
  %.sroa.8.1.i.i.us.us.3 = select i1 %i.bv, i8 0, i8 %.sroa.8.0.i.i.us.us ; 3 uses
  %i.bw = select i1 %i.bt, i8 0, i8 %i.bp         ; 2 uses
  %i.bx = add nuw nsw i64 %.02125.i.i.i.i.us.us, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us.unr-lcssa, label %.lr.ph.i.i.i.i.us.us, !llvm.loop !27

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.us.us
  br i1 %lcmp.mod84.not, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us, label %.lr.ph.i.i.i.i.us.us.epil.preheader

.lr.ph.i.i.i.i.us.us.epil.preheader:              ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us.unr-lcssa, %.lr.ph.i.i.i.i.preheader.us.us
  %.sroa.0.0.i.i.us.us.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.us.us ], [ %.sroa.0.1.i.i.us.us.3, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us.unr-lcssa ]
  %.sroa.8.0.i.i.us.us.epil.init = phi i8 [ %i.az, %.lr.ph.i.i.i.i.preheader.us.us ], [ %.sroa.8.1.i.i.us.us.3, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us.unr-lcssa ]
  %.02125.i.i.i.i.us.us.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.us.us ], [ %i.bx, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us.unr-lcssa ]
  %.epil.init = phi i8 [ %i.az, %.lr.ph.i.i.i.i.preheader.us.us ], [ %i.bw, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod87)
  br label %.lr.ph.i.i.i.i.us.us.epil

.lr.ph.i.i.i.i.us.us.epil:                        ; preds = %.lr.ph.i.i.i.i.us.us.epil, %.lr.ph.i.i.i.i.us.us.epil.preheader
  %.sroa.0.0.i.i.us.us.epil = phi i64 [ %.sroa.0.1.i.i.us.us.epil, %.lr.ph.i.i.i.i.us.us.epil ], [ %.sroa.0.0.i.i.us.us.epil.init, %.lr.ph.i.i.i.i.us.us.epil.preheader ]
  %.sroa.8.0.i.i.us.us.epil = phi i8 [ %.sroa.8.1.i.i.us.us.epil, %.lr.ph.i.i.i.i.us.us.epil ], [ %.sroa.8.0.i.i.us.us.epil.init, %.lr.ph.i.i.i.i.us.us.epil.preheader ]
  %.02125.i.i.i.i.us.us.epil = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.us.us.epil ], [ %.02125.i.i.i.i.us.us.epil.init, %.lr.ph.i.i.i.i.us.us.epil.preheader ] ; 3 uses
  %i.by = phi i8 [ %i.cc, %.lr.ph.i.i.i.i.us.us.epil ], [ %.epil.init, %.lr.ph.i.i.i.i.us.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.us.us.epil ], [ 0, %.lr.ph.i.i.i.i.us.us.epil.preheader ]
  %i.bz = getelementptr i8, ptr %i.ay, i64 %.02125.i.i.i.i.us.us.epil
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !40, !range !41, !noundef !38
  %i.cb = icmp samesign ult i8 %i.ca, %i.by       ; 3 uses
  %.sroa.0.1.i.i.us.us.epil = select i1 %i.cb, i64 %.02125.i.i.i.i.us.us.epil, i64 %.sroa.0.0.i.i.us.us.epil ; 2 uses
  %.sroa.8.1.i.i.us.us.epil = select i1 %i.cb, i8 0, i8 %.sroa.8.0.i.i.us.us.epil ; 2 uses
  %i.cc = select i1 %i.cb, i8 0, i8 %i.by
  %i.cd = add nuw nsw i64 %.02125.i.i.i.i.us.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter83
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us, label %.lr.ph.i.i.i.i.us.us.epil, !llvm.loop !28

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us: ; preds = %.lr.ph.i.i.i.i.us.us.epil, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us.unr-lcssa
  %.sroa.0.1.i.i.us.us.lcssa = phi i64 [ %.sroa.0.1.i.i.us.us.3, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us.unr-lcssa ], [ %.sroa.0.1.i.i.us.us.epil, %.lr.ph.i.i.i.i.us.us.epil ]
  %.sroa.8.1.i.i.us.us.lcssa = phi i8 [ %.sroa.8.1.i.i.us.us.3, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us.unr-lcssa ], [ %.sroa.8.1.i.i.us.us.epil, %.lr.ph.i.i.i.i.us.us.epil ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv44
  store i8 %.sroa.8.1.i.i.us.us.lcssa, ptr %i.ce, align 1, !tbaa !40
  %i.cf = trunc i64 %.sroa.0.1.i.i.us.us.lcssa to i32
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv44
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !16
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %exitcond48.not = icmp eq i64 %indvars.iv.next45, %wide.trip.count47
  br i1 %exitcond48.not, label %._crit_edge, label %.lr.ph.i.i.i.i.preheader.us.us, !llvm.loop !29

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.prol.loopexit, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us
  %indvars.iv39 = phi i64 [ %indvars.iv.next40.1, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us ], [ %indvars.iv39.unr, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.prol.loopexit ] ; 5 uses
  %i.ch = mul nsw i64 %i.v, %indvars.iv39
  %i.ci = getelementptr inbounds i8, ptr %i.t, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !40, !range !41, !noundef !38
  %i.ck = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv39
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !40
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv39
  store i32 0, ptr %i.cl, align 4, !tbaa !16
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 3 uses
  %i.cm = mul nsw i64 %i.v, %indvars.iv.next40
  %i.cn = getelementptr inbounds i8, ptr %i.t, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !40, !range !41, !noundef !38
  %i.cp = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv.next40
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !40
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next40
  store i32 0, ptr %i.cq, align 4, !tbaa !16
  %indvars.iv.next40.1 = add nuw nsw i64 %indvars.iv39, 2 ; 2 uses
  %exitcond43.not.1 = icmp eq i64 %indvars.iv.next40.1, %wide.trip.count47
  br i1 %exitcond43.not.1, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us, !llvm.loop !30

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cr = shl nsw i64 %i.v, 1
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.prol.loopexit, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.loopexit.us.us, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit.us.us, %middle.block, %middle.block73, %_ZN5Eigen15PlainObjectBaseINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit
  ret void

bb.f:                                             ; preds = %.lr.ph.split, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit ] ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv ; 3 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !40, !range !41, !noundef !38 ; 3 uses
  %i.cu = getelementptr i8, ptr %i.cs, i64 %i.v
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !40, !range !41, !noundef !38
  %i.cw = icmp samesign ult i8 %i.cv, %i.ct
  br i1 %i.cw, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit, label %_ZN5Eigen8internal12visitor_implINS0_17min_coeff_visitorINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEELi0EEENS0_17visitor_evaluatorIS7_EELi2EE3runERKSA_RS8_.exit.i.i.i.i

_ZN5Eigen8internal12visitor_implINS0_17min_coeff_visitorINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEELi0EEENS0_17visitor_evaluatorIS7_EELi2EE3runERKSA_RS8_.exit.i.i.i.i: ; preds = %bb.f
  %i.cx = getelementptr i8, ptr %i.cs, i64 %i.cr
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !40, !range !41, !noundef !38 ; 2 uses
  %.not5.i.i = icmp samesign ult i8 %i.cy, %i.ct
  %4 = add nsw i8 %i.ct, -1
  %.not = icmp ult i8 %4, %i.cy
  %5 = zext i1 %.not to i8
  %i.cz = select i1 %.not5.i.i, i32 2, i32 0
  br label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEE8minCoeffIlEEbPT_S9_.exit: ; preds = %_ZN5Eigen8internal12visitor_implINS0_17min_coeff_visitorINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEELi0EEENS0_17visitor_evaluatorIS7_EELi2EE3runERKSA_RS8_.exit.i.i.i.i, %bb.f
  %.0 = phi i32 [ 1, %bb.f ], [ %i.cz, %_ZN5Eigen8internal12visitor_implINS0_17min_coeff_visitorINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEELi0EEENS0_17visitor_evaluatorIS7_EELi2EE3runERKSA_RS8_.exit.i.i.i.i ]
  %.0.in = phi i8 [ 0, %bb.f ], [ %5, %_ZN5Eigen8internal12visitor_implINS0_17min_coeff_visitorINS_5BlockIKNS_5ArrayIbLin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEELi0EEENS0_17visitor_evaluatorIS7_EELi2EE3runERKSA_RS8_.exit.i.i.i.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  store i8 %.0.in, ptr %i.da, align 1, !tbaa !40
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  store i32 %.0, ptr %i.db, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !29
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !12
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #9
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !42
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !15
  tail call void @free(ptr noundef %i.i) #7
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 4611686018427387903
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !12
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #9
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #8 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !12
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #9
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !15
  br label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl3minIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_9DenseBaseIT_EEiRNS1_15PlainObjectBaseIT0_EERNSB_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %1, 1                        ; 2 uses
  %.in.v = select i1 %i.a, i64 16, i64 8
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.b = load i64, ptr %.in, align 8, !tbaa !59   ; 12 uses
  %i.c = trunc i64 %i.b to i32
  %sext = shl i64 %i.b, 32
  %i.d = ashr exact i64 %sext, 32                 ; 2 uses
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.d, i64 noundef 1)
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.d, i64 noundef 1)
  %i.e = icmp sgt i32 %i.c, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !23     ; 17 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !15     ; 16 uses
  br i1 %i.a, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.j = load ptr, ptr %0, align 8, !tbaa !61, !noalias !62 ; 6 uses
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = load i64, ptr %i.f, align 8, !tbaa !63, !noalias !62 ; 9 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us.preheader, label %.lr.ph.split.us.split

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us.preheader: ; preds = %.lr.ph.split.us
  %wide.trip.count77 = and i64 %i.b, 2147483647   ; 3 uses
  %min.iters.check117 = icmp samesign ult i64 %wide.trip.count77, 4
  br i1 %min.iters.check117, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us.preheader129, label %vector.ph118

vector.ph118:                                     ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us.preheader
  %n.vec119 = and i64 %i.b, 2147483644            ; 3 uses
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph118
  %index121 = phi i64 [ 0, %vector.ph118 ], [ %index.next122, %vector.body120 ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index121 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <2 x double> zeroinitializer, ptr %i.n, align 8, !tbaa !65
  store <2 x double> zeroinitializer, ptr %i.o, align 8, !tbaa !65
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index121 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store <2 x i32> splat (i32 -1), ptr %i.p, align 4, !tbaa !16
  store <2 x i32> splat (i32 -1), ptr %i.q, align 4, !tbaa !16
  %index.next122 = add nuw i64 %index121, 4       ; 2 uses
  %i.r = icmp eq i64 %index.next122, %n.vec119
  br i1 %i.r, label %middle.block123, label %vector.body120, !llvm.loop !45

middle.block123:                                  ; preds = %vector.body120
  %cmp.n124 = icmp eq i64 %wide.trip.count77, %n.vec119
  br i1 %cmp.n124, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us.preheader129

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us.preheader129: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us.preheader, %middle.block123
  %indvars.iv74.ph = phi i64 [ 0, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us.preheader ], [ %n.vec119, %middle.block123 ]
  br label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us.preheader129, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us ], [ %indvars.iv74.ph, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us.preheader129 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv74
  store double 0.000000e+00, ptr %i.s, align 8, !tbaa !65
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv74
  store i32 -1, ptr %i.t, align 4, !tbaa !16
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.us, !llvm.loop !46

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.u = icmp sgt i64 %i.l, 1
  %wide.trip.count72 = and i64 %i.b, 2147483647   ; 5 uses
  br i1 %i.u, label %.lr.ph.i.i.i.i.preheader.us.us.preheader, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.preheader

.lr.ph.i.i.i.i.preheader.us.us.preheader:         ; preds = %.lr.ph.split.us.split
  %i.v = add nsw i64 %i.l, -1                     ; 3 uses
  %xtraiter146 = and i64 %i.v, 1
  %i.w = icmp eq i64 %i.l, 2
  %unroll_iter151 = and i64 %i.v, -2
  %lcmp.mod147.not = icmp eq i64 %xtraiter146, 0
  %lcmp.mod150 = trunc i64 %i.v to i1
  br label %.lr.ph.i.i.i.i.preheader.us.us

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.preheader: ; preds = %.lr.ph.split.us.split
  %min.iters.check105 = icmp samesign ult i64 %wide.trip.count72, 8
  %ident.check.not = icmp ne i64 %i.l, 1
  %or.cond.not128 = or i1 %min.iters.check105, %ident.check.not
  %i.x = sub i64 %i.k, %i.h
  %diff.check103 = icmp ugt i64 %i.x, -32
  %or.cond126 = select i1 %or.cond.not128, i1 true, i1 %diff.check103
  br i1 %or.cond126, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.preheader131, label %vector.ph106

vector.ph106:                                     ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.preheader
  %n.vec107 = and i64 %i.b, 2147483644            ; 3 uses
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph106
  %index109 = phi i64 [ 0, %vector.ph106 ], [ %index.next112, %vector.body108 ] ; 4 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %i.j, i64 %index109 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load110 = load <2 x double>, ptr %i.y, align 8, !tbaa !65
  %wide.load111 = load <2 x double>, ptr %i.z, align 8, !tbaa !65
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index109 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <2 x double> %wide.load110, ptr %i.aa, align 8, !tbaa !65
  store <2 x double> %wide.load111, ptr %i.ab, align 8, !tbaa !65
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index109 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store <2 x i32> zeroinitializer, ptr %i.ac, align 4, !tbaa !16
  store <2 x i32> zeroinitializer, ptr %i.ad, align 4, !tbaa !16
  %index.next112 = add nuw i64 %index109, 4       ; 2 uses
  %i.ae = icmp eq i64 %index.next112, %n.vec107
  br i1 %i.ae, label %middle.block113, label %vector.body108, !llvm.loop !47

middle.block113:                                  ; preds = %vector.body108
  %cmp.n114 = icmp eq i64 %wide.trip.count72, %n.vec107
  br i1 %cmp.n114, label %._crit_edge, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.preheader131

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.preheader131: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.preheader, %middle.block113
  %indvars.iv64.ph = phi i64 [ 0, %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.preheader ], [ %n.vec107, %middle.block113 ] ; 6 uses
  %.neg = or disjoint i64 %indvars.iv64.ph, 1
  %xtraiter143 = and i64 %i.b, 1
  %lcmp.mod144.not = icmp eq i64 %xtraiter143, 0
  br i1 %lcmp.mod144.not, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.prol.loopexit, label %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.prol

_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.prol: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE8minCoeffIlEEdPT_S9_.exit.us.preheader131
end_hunk_0
