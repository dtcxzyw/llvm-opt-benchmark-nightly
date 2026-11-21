Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/cat?download=true
inline.NumInlined: 2761
inline.NumDeleted: 1277
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN3igl3catIdEEviRKN5Eigen12SparseMatrixIT_Li0EiEES6_RS4_:bb.a
  br i1 %i.bc, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.epil.preheader, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.preheader.new

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.preheader.new: ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.preheader
  %unroll_iter = and i64 %i.au, 9223372036854775806
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.us.preheader: ; preds = %.lr.ph177
  %xtraiter312 = and i64 %i.au, 1
  %i.bd = icmp eq i64 %i.au, 1
  br i1 %i.bd, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.us.epil.preheader, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.us.preheader.new

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.us.preheader.new: ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.us.preheader
  %unroll_iter315 = and i64 %i.au, 9223372036854775806
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.us

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.us: ; preds = %bb.n, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.us.preheader.new
  %indvars.iv231 = phi i64 [ 0, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.us.preheader.new ], [ %indvars.iv.next232.1, %bb.n ] ; 4 uses
  %niter316 = phi i64 [ 0, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.us.preheader.new ], [ %niter316.next.1, %bb.n ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv231 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !103 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.be, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !103 ; 2 uses
  %i.bi = icmp slt i32 %i.bf, %i.bh
  br i1 %i.bi, label %.lr.ph.us, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.us.1

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.us.1: ; preds = %.lr.ph.us, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.us
  %indvars.iv.next232 = or disjoint i64 %indvars.iv231, 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next232 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !103 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bj, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !103 ; 2 uses
  %i.bn = icmp slt i32 %i.bk, %i.bm
  br i1 %i.bn, label %.lr.ph.us.1, label %bb.n

.lr.ph.us.1:                                      ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.us.1
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next232 ; 2 uses
  %.promoted.us.1 = load i32, ptr %i.bo, align 4, !tbaa !103
  %i.bp = add i32 %i.bm, %.promoted.us.1
  %i.bq = sub i32 %i.bp, %i.bk
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !103
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph.us.1, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.us.1
  %indvars.iv.next232.1 = add nuw nsw i64 %indvars.iv231, 2 ; 2 uses
  %niter316.next.1 = add nuw nsw i64 %niter316, 2 ; 2 uses
  %niter316.ncmp.1 = icmp eq i64 %niter316.next.1, %unroll_iter315
  br i1 %niter316.ncmp.1, label %.preheader171.loopexit.unr-lcssa, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.us, !llvm.loop !210

.lr.ph.us:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.us
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv231 ; 2 uses
  %.promoted.us = load i32, ptr %i.br, align 4, !tbaa !103
  %i.bs = add i32 %i.bh, %.promoted.us
  %i.bt = sub i32 %i.bs, %i.bf
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !103
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.us.1

.preheader169:                                    ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2INS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES1_EEEERKNS_9EigenBaseIT_EE.exit
  br i1 %i.av, label %.lr.ph196, label %.loopexit170

.lr.ph196:                                        ; preds = %.preheader169
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !99
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !100 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  %i.bz = load ptr, ptr %5, align 8               ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !99
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !100 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br label %bb.p

bb.o:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ell.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %common.resume

bb.p:                                             ; preds = %.lr.ph196, %bb.v
  %indvars.iv239 = phi i64 [ 0, %.lr.ph196 ], [ %indvars.iv.next240, %bb.v ] ; 7 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv239 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !103 ; 2 uses
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  br i1 %i.by, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cj = getelementptr i8, ptr %i.cg, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !103
  %i.cl = sext i32 %i.ck to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.r:                                             ; preds = %bb.p
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv239
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !103
  %i.co = sext i32 %i.cn to i64
  %i.cp = add nsw i64 %i.co, %i.ci
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.q, %bb.r
  %.sink.i = phi i64 [ %i.cl, %bb.q ], [ %i.cp, %bb.r ] ; 2 uses
  %i.cq = icmp sgt i64 %.sink.i, %i.ci
  br i1 %i.cq, label %.lr.ph186, label %bb.s

.lr.ph186:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv239 ; 2 uses
  %.promoted188 = load i32, ptr %i.cr, align 4, !tbaa !103
  %i.cs = trunc i64 %.sink.i to i32
  %i.ct = add i32 %.promoted188, %i.cs
  %i.cu = sub i32 %i.ct, %i.ch
  store i32 %i.cu, ptr %i.cr, align 4, !tbaa !103
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph186, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv239 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !103 ; 2 uses
  %i.cx = sext i32 %i.cw to i64                   ; 2 uses
  br i1 %i.ce, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cy = getelementptr i8, ptr %i.cv, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !103
  %i.da = sext i32 %i.cz to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit92

bb.u:                                             ; preds = %bb.s
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv239
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !103
  %i.dd = sext i32 %i.dc to i64
  %i.de = add nsw i64 %i.dd, %i.cx
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit92

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit92: ; preds = %bb.t, %bb.u
  %.sink.i91 = phi i64 [ %i.da, %bb.t ], [ %i.de, %bb.u ] ; 2 uses
  %i.df = icmp sgt i64 %.sink.i91, %i.cx
  br i1 %i.df, label %.lr.ph191, label %bb.v

.lr.ph191:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit92
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv239 ; 2 uses
  %.promoted193 = load i32, ptr %i.dg, align 4, !tbaa !103
  %i.dh = trunc i64 %.sink.i91 to i32
  %i.di = add i32 %.promoted193, %i.dh
  %i.dj = sub i32 %i.di, %i.cw
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !103
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph191, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit92
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1 ; 2 uses
  %exitcond242.not = icmp eq i64 %indvars.iv.next240, %i.au
  br i1 %exitcond242.not, label %.loopexit170, label %bb.p, !llvm.loop !211

.preheader171.loopexit.unr-lcssa:                 ; preds = %bb.n
  %lcmp.mod313.not = icmp eq i64 %xtraiter312, 0
  br i1 %lcmp.mod313.not, label %.preheader171, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.us.epil.preheader

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.us.epil.preheader: ; preds = %.preheader171.loopexit.unr-lcssa, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.us.preheader
  %indvars.iv231.epil.init = phi i64 [ 0, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.us.preheader ], [ %indvars.iv.next232.1, %.preheader171.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod314 = trunc i64 %i.au to i1
  call void @llvm.assume(i1 %lcmp.mod314)
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv231.epil.init ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !103 ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dk, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !103 ; 2 uses
  %i.do = icmp slt i32 %i.dl, %i.dn
  br i1 %i.do, label %.lr.ph.us.epil, label %.preheader171

.lr.ph.us.epil:                                   ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.us.epil.preheader
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv231.epil.init ; 2 uses
  %.promoted.us.epil = load i32, ptr %i.dp, align 4, !tbaa !103
  %i.dq = add i32 %i.dn, %.promoted.us.epil
  %i.dr = sub i32 %i.dq, %i.dl
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !103
  br label %.preheader171

.preheader171.loopexit310.unr-lcssa:              ; preds = %bb.w
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader171, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.epil.preheader

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.epil.preheader: ; preds = %.preheader171.loopexit310.unr-lcssa, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.preheader ], [ %indvars.iv.next.1, %.preheader171.loopexit310.unr-lcssa ] ; 3 uses
  %lcmp.mod311 = trunc i64 %i.au to i1
  call void @llvm.assume(i1 %lcmp.mod311)
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.epil.init
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !103 ; 2 uses
  %i.du = icmp sgt i32 %i.dt, 0
  br i1 %i.du, label %.lr.ph.epil, label %.preheader171

.lr.ph.epil:                                      ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.epil.preheader
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.epil.init
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !103 ; 2 uses
  %i.dx = add i32 %i.dt, %i.dw
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.epil.init ; 2 uses
  %.promoted.epil = load i32, ptr %i.dy, align 4, !tbaa !103
  %i.dz = add i32 %.promoted.epil, %i.dx
  %i.ea = sub i32 %i.dz, %i.dw
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !103
  br label %.preheader171

.preheader171:                                    ; preds = %.preheader171.loopexit310.unr-lcssa, %.lr.ph.epil, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.epil.preheader, %.preheader171.loopexit.unr-lcssa, %.lr.ph.us.epil, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.us.epil.preheader, %.preheader173
  %i.eb = load i64, ptr %i.j, align 8, !tbaa !97  ; 9 uses
  %i.ec = icmp sgt i64 %i.eb, 0
  br i1 %i.ec, label %.lr.ph184, label %.loopexit170

.lr.ph184:                                        ; preds = %.preheader171
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !99 ; 6 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !100 ; 4 uses
  %i.eh = icmp eq ptr %i.eg, null
  %i.ei = load ptr, ptr %5, align 8
  %i.ej = getelementptr [4 x i8], ptr %i.ei, i64 %i.au ; 6 uses
  br i1 %i.eh, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.us.preheader, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.preheader

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.preheader: ; preds = %.lr.ph184
  %xtraiter321 = and i64 %i.eb, 1
  %6 = icmp eq i64 %i.eb, 1
  br i1 %6, label %bb.aa, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.preheader.new

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.preheader.new: ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.preheader
  %unroll_iter324 = and i64 %i.eb, 9223372036854775806
  br label %bb.x

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.us.preheader: ; preds = %.lr.ph184
  %xtraiter326 = and i64 %i.eb, 1
  %7 = icmp eq i64 %i.eb, 1
  br i1 %7, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.us.preheader.new

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.us.preheader.new: ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.us.preheader
  %unroll_iter329 = and i64 %i.eb, 9223372036854775806
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.us

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.us: ; preds = %24, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.us.preheader.new
  %indvars.iv235.us = phi i64 [ 0, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.us.preheader.new ], [ %indvars.iv.next236.us.1, %24 ] ; 4 uses
  %niter330 = phi i64 [ 0, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.us.preheader.new ], [ %niter330.next.1, %24 ]
  %8 = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv235.us ; 2 uses
  %9 = load i32, ptr %8, align 4, !tbaa !103      ; 2 uses
  %10 = getelementptr i8, ptr %8, i64 4
  %11 = load i32, ptr %10, align 4, !tbaa !103    ; 2 uses
  %12 = icmp sgt i32 %11, %9
  br i1 %12, label %.lr.ph179.us, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.us.1

.lr.ph179.us:                                     ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.us
  %13 = getelementptr [4 x i8], ptr %i.ej, i64 %indvars.iv235.us ; 2 uses
  %.promoted181.us = load i32, ptr %13, align 4, !tbaa !103
  %14 = add i32 %.promoted181.us, %11
  %15 = sub i32 %14, %9
  store i32 %15, ptr %13, align 4, !tbaa !103
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.us.1

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.us.1: ; preds = %.lr.ph179.us, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.us
  %indvars.iv.next236.us = or disjoint i64 %indvars.iv235.us, 1 ; 2 uses
  %16 = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv.next236.us ; 2 uses
  %17 = load i32, ptr %16, align 4, !tbaa !103    ; 2 uses
  %18 = getelementptr i8, ptr %16, i64 4
  %19 = load i32, ptr %18, align 4, !tbaa !103    ; 2 uses
  %20 = icmp sgt i32 %19, %17
  br i1 %20, label %.lr.ph179.us.1, label %24

.lr.ph179.us.1:                                   ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.us.1
  %21 = getelementptr [4 x i8], ptr %i.ej, i64 %indvars.iv.next236.us ; 2 uses
  %.promoted181.us.1 = load i32, ptr %21, align 4, !tbaa !103
  %22 = add i32 %.promoted181.us.1, %19
  %23 = sub i32 %22, %17
  store i32 %23, ptr %21, align 4, !tbaa !103
  br label %24

24:                                               ; preds = %.lr.ph179.us.1, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.us.1
  %indvars.iv.next236.us.1 = add nuw nsw i64 %indvars.iv235.us, 2 ; 2 uses
  %niter330.next.1 = add nuw nsw i64 %niter330, 2 ; 2 uses
  %niter330.ncmp.1 = icmp eq i64 %niter330.next.1, %unroll_iter329
  br i1 %niter330.ncmp.1, label %.loopexit170.loopexit312.unr-lcssa, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.us, !llvm.loop !212

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94: ; preds = %bb.w, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.preheader.new
  %indvars.iv = phi i64 [ 0, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.preheader.new ], [ %indvars.iv.next.1, %bb.w ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.preheader.new ], [ %niter.next.1, %bb.w ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !103 ; 2 uses
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.lr.ph, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.1

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !103 ; 2 uses
  %i.ep = add i32 %i.el, %i.eo
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv ; 2 uses
  %.promoted = load i32, ptr %i.eq, align 4, !tbaa !103
  %i.er = add i32 %.promoted, %i.ep
  %i.es = sub i32 %i.er, %i.eo
  store i32 %i.es, ptr %i.eq, align 4, !tbaa !103
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.1

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.1: ; preds = %.lr.ph, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !103 ; 2 uses
  %i.ev = icmp sgt i32 %i.eu, 0
  br i1 %i.ev, label %.lr.ph.1, label %bb.w

.lr.ph.1:                                         ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.1
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !103 ; 2 uses
  %i.ey = add i32 %i.eu, %i.ex
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.next ; 2 uses
  %.promoted.1 = load i32, ptr %i.ez, align 4, !tbaa !103
  %i.fa = add i32 %.promoted.1, %i.ey
  %i.fb = sub i32 %i.fa, %i.ex
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !103
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph.1, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader171.loopexit310.unr-lcssa, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit94, !llvm.loop !210

bb.x:                                             ; preds = %40, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.preheader.new
  %indvars.iv235 = phi i64 [ 0, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.preheader.new ], [ %indvars.iv.next236.1, %40 ] ; 5 uses
  %indvars.iv235.a = phi i64 [ 0, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.preheader.new ], [ %niter325.next.1, %40 ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv235
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !103 ; 2 uses
  %25 = icmp sgt i32 %i.fd, 0
  br i1 %25, label %bb.y, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.1

bb.y:                                             ; preds = %bb.x
  %26 = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv235
  %27 = load i32, ptr %26, align 4, !tbaa !103    ; 2 uses
  %28 = add i32 %i.fd, %27
  %29 = getelementptr [4 x i8], ptr %i.ej, i64 %indvars.iv235 ; 2 uses
  %i.fe = load i32, ptr %29, align 4, !tbaa !103
  %30 = add i32 %i.fe, %28
  %31 = sub i32 %30, %27
  store i32 %31, ptr %29, align 4, !tbaa !103
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.1

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.1: ; preds = %bb.y, %bb.x
  %indvars.iv.next236 = or disjoint i64 %indvars.iv235, 1 ; 3 uses
  %32 = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next236
  %33 = load i32, ptr %32, align 4, !tbaa !103    ; 2 uses
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %bb.z, label %40

bb.z:                                             ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.1
  %35 = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv.next236
  %36 = load i32, ptr %35, align 4, !tbaa !103    ; 2 uses
  %37 = add i32 %33, %36
  %i.ff = getelementptr [4 x i8], ptr %i.ej, i64 %indvars.iv.next236 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !103
  %38 = add i32 %i.fg, %37
  %39 = sub i32 %38, %36
  store i32 %39, ptr %i.ff, align 4, !tbaa !103
  br label %40

40:                                               ; preds = %bb.z, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.1
  %indvars.iv.next236.1 = add nuw nsw i64 %indvars.iv235, 2 ; 2 uses
  %niter325.next.1 = add nuw nsw i64 %indvars.iv235.a, 2 ; 2 uses
  %niter325.ncmp.1 = icmp eq i64 %niter325.next.1, %unroll_iter324
  br i1 %niter325.ncmp.1, label %.loopexit170.loopexit313.unr-lcssa, label %bb.x, !llvm.loop !212

.loopexit170.loopexit312.unr-lcssa:               ; preds = %24
  %lcmp.mod327.not = icmp eq i64 %xtraiter326, 0
  br i1 %lcmp.mod327.not, label %.loopexit170, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96: ; preds = %.loopexit170.loopexit312.unr-lcssa, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.us.preheader
  %.sink.i95 = phi i64 [ 0, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.us.preheader ], [ %indvars.iv.next236.us.1, %.loopexit170.loopexit312.unr-lcssa ] ; 2 uses
  %lcmp.mod328 = trunc i64 %i.eb to i1
  call void @llvm.assume(i1 %lcmp.mod328)
  %41 = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.sink.i95 ; 2 uses
  %42 = load i32, ptr %41, align 4, !tbaa !103    ; 2 uses
  %43 = getelementptr i8, ptr %41, i64 4
  %44 = load i32, ptr %43, align 4, !tbaa !103    ; 2 uses
  %i.fh = icmp sgt i32 %44, %42
  br i1 %i.fh, label %.lr.ph179, label %.loopexit170

.lr.ph179:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96
  %i.fi = getelementptr [4 x i8], ptr %i.ej, i64 %.sink.i95 ; 2 uses
  %.promoted181 = load i32, ptr %i.fi, align 4, !tbaa !103
  %i.fj = add i32 %.promoted181, %44
  %i.fk = sub i32 %i.fj, %42
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !103
  br label %.loopexit170

.loopexit170.loopexit313.unr-lcssa:               ; preds = %40
  %lcmp.mod322.not = icmp eq i64 %xtraiter321, 0
  br i1 %lcmp.mod322.not, label %.loopexit170, label %bb.aa

bb.aa:                                            ; preds = %.loopexit170.loopexit313.unr-lcssa, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.preheader
  %indvars.iv235.epil.init = phi i64 [ 0, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96.preheader ], [ %indvars.iv.next236.1, %.loopexit170.loopexit313.unr-lcssa ] ; 3 uses
  %lcmp.mod323 = trunc i64 %i.eb to i1
  call void @llvm.assume(i1 %lcmp.mod323)
  %45 = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv235.epil.init
  %46 = load i32, ptr %45, align 4, !tbaa !103    ; 2 uses
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %.lr.ph179.epil, label %.loopexit170

.lr.ph179.epil:                                   ; preds = %bb.aa
  %48 = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv235.epil.init
  %49 = load i32, ptr %48, align 4, !tbaa !103    ; 2 uses
  %50 = add i32 %46, %49
  %51 = getelementptr [4 x i8], ptr %i.ej, i64 %indvars.iv235.epil.init ; 2 uses
  %.promoted181.epil = load i32, ptr %51, align 4, !tbaa !103
  %52 = add i32 %.promoted181.epil, %50
  %53 = sub i32 %52, %49
  store i32 %53, ptr %51, align 4, !tbaa !103
  br label %.loopexit170

.loopexit170:                                     ; preds = %.loopexit170.loopexit313.unr-lcssa, %.lr.ph179.epil, %bb.aa, %.loopexit170.loopexit312.unr-lcssa, %.lr.ph179, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit96, %bb.v, %.preheader171, %.preheader169
  invoke void @_ZN5Eigen12SparseMatrixIdLi0EiE19reserveInnerVectorsINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit: ; preds = %.loopexit170
  %i.fl = load i64, ptr %i.c, align 8, !tbaa !97  ; 2 uses
  %i.fm = icmp sgt i64 %i.fl, 0                   ; 2 uses
  br i1 %i.o, label %.preheader, label %.preheader168

.preheader168:                                    ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit
  br i1 %i.fm, label %.lr.ph201, label %.preheader163

.lr.ph201:                                        ; preds = %.preheader168
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.ai

.preheader:                                       ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit
  br i1 %i.fm, label %.lr.ph214, label %.loopexit160

.lr.ph214:                                        ; preds = %.preheader
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph214, %._crit_edge212
  %indvars.iv253 = phi i64 [ 0, %.lr.ph214 ], [ %indvars.iv.next254, %._crit_edge212 ] ; 7 uses
  %i.fz = load ptr, ptr %i.fr, align 8, !tbaa !101
  %i.ga = load ptr, ptr %i.fs, align 8, !tbaa !102
  %i.gb = load ptr, ptr %i.ft, align 8, !tbaa !99
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv253 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !103
  %i.ge = sext i32 %i.gd to i64                   ; 3 uses
  %i.gf = load ptr, ptr %i.fu, align 8, !tbaa !100 ; 2 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gh = getelementptr i8, ptr %i.gc, i64 4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !103
  %i.gj = sext i32 %i.gi to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit98

bb.ad:                                            ; preds = %bb.ab
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv253
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !103
  %i.gm = sext i32 %i.gl to i64
  %i.gn = add nsw i64 %i.gm, %i.ge
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit98

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit98: ; preds = %bb.ac, %bb.ad
  %.sink.i97 = phi i64 [ %i.gj, %bb.ac ], [ %i.gn, %bb.ad ] ; 2 uses
  %i.go = icmp sgt i64 %.sink.i97, %i.ge
  br i1 %i.go, label %.lr.ph208, label %._crit_edge209

._crit_edge209:                                   ; preds = %bb.ag, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit98
  %i.gp = load ptr, ptr %i.fv, align 8, !tbaa !101
  %i.gq = load ptr, ptr %i.fw, align 8, !tbaa !102
  %i.gr = load ptr, ptr %i.fx, align 8, !tbaa !99
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv253 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !103
  %i.gu = sext i32 %i.gt to i64                   ; 3 uses
  %i.gv = load ptr, ptr %i.fy, align 8, !tbaa !100 ; 2 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %._crit_edge209
  %i.gx = getelementptr i8, ptr %i.gs, i64 4
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !103
  %i.gz = sext i32 %i.gy to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit100

bb.af:                                            ; preds = %._crit_edge209
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv253
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !103
  %i.hc = sext i32 %i.hb to i64
  %i.hd = add nsw i64 %i.hc, %i.gu
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit100

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit100: ; preds = %bb.ae, %bb.af
  %.sink.i99 = phi i64 [ %i.gz, %bb.ae ], [ %i.hd, %bb.af ] ; 2 uses
  %i.he = icmp sgt i64 %.sink.i99, %i.gu
  br i1 %i.he, label %.lr.ph211, label %._crit_edge212

.lr.ph208:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit98, %bb.ag
  %.sroa.8127.0207 = phi i64 [ %i.hl, %bb.ag ], [ %i.ge, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit98 ] ; 3 uses
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %.sroa.8127.0207
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !86
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %.sroa.8127.0207
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !103
  %i.hj = sext i32 %i.hi to i64
  %i.hk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen12SparseMatrixIdLi0EiE6insertEll(ptr noundef nonnull align 8 dereferenceable(72) %3, i64 noundef %i.hj, i64 noundef %indvars.iv253)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %.lr.ph208
  store double %i.hg, ptr %i.hk, align 8, !tbaa !86
  %i.hl = add nsw i64 %.sroa.8127.0207, 1         ; 2 uses
  %exitcond251.not = icmp eq i64 %i.hl, %.sink.i97
  br i1 %exitcond251.not, label %._crit_edge209, label %.lr.ph208, !llvm.loop !213

._crit_edge212:                                   ; preds = %bb.ah, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit100
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 1 ; 2 uses
  %i.hm = load i64, ptr %i.c, align 8, !tbaa !97
  %i.hn = icmp sgt i64 %i.hm, %indvars.iv.next254
  br i1 %i.hn, label %bb.ab, label %.loopexit160, !llvm.loop !214

.lr.ph211:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit100, %bb.ah
  %.sroa.8119.0210 = phi i64 [ %i.hw, %bb.ah ], [ %i.gu, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit100 ] ; 3 uses
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %.sroa.8119.0210
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !86
  %i.hq = load i64, ptr %i.a, align 8, !tbaa !98
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.gq, i64 %.sroa.8119.0210
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !103
  %i.ht = sext i32 %i.hs to i64
  %i.hu = add nsw i64 %i.hq, %i.ht
  %i.hv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen12SparseMatrixIdLi0EiE6insertEll(ptr noundef nonnull align 8 dereferenceable(72) %3, i64 noundef %i.hu, i64 noundef %indvars.iv253)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %.lr.ph211
  store double %i.hp, ptr %i.hv, align 8, !tbaa !86
  %i.hw = add nsw i64 %.sroa.8119.0210, 1         ; 2 uses
  %exitcond252.not = icmp eq i64 %i.hw, %.sink.i99
  br i1 %exitcond252.not, label %._crit_edge212, label %.lr.ph211, !llvm.loop !215

.preheader163:                                    ; preds = %._crit_edge199, %.preheader168
  %i.hx = load i64, ptr %i.j, align 8, !tbaa !97  ; 2 uses
  %i.hy = icmp sgt i64 %i.hx, 0
  br i1 %i.hy, label %.lr.ph206, label %.loopexit160

.lr.ph206:                                        ; preds = %.preheader163
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.am

bb.ai:                                            ; preds = %.lr.ph201, %._crit_edge199
  %i.id = phi i64 [ %i.fl, %.lr.ph201 ], [ %i.iu, %._crit_edge199 ]
  %indvars.iv244 = phi i64 [ 0, %.lr.ph201 ], [ %indvars.iv.next245, %._crit_edge199 ] ; 4 uses
  %i.ie = load ptr, ptr %i.fn, align 8, !tbaa !101
  %i.if = load ptr, ptr %i.fo, align 8, !tbaa !102
  %i.ig = load ptr, ptr %i.fp, align 8, !tbaa !99
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %indvars.iv244 ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !103
  %i.ij = sext i32 %i.ii to i64                   ; 3 uses
  %i.ik = load ptr, ptr %i.fq, align 8, !tbaa !100 ; 2 uses
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.im = getelementptr i8, ptr %i.ih, i64 4
  %i.in = load i32, ptr %i.im, align 4, !tbaa !103
  %i.io = sext i32 %i.in to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit102

bb.ak:                                            ; preds = %bb.ai
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %indvars.iv244
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !103
  %i.ir = sext i32 %i.iq to i64
  %i.is = add nsw i64 %i.ir, %i.ij
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit102

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit102: ; preds = %bb.aj, %bb.ak
  %.sink.i101 = phi i64 [ %i.io, %bb.aj ], [ %i.is, %bb.ak ] ; 2 uses
  %i.it = icmp sgt i64 %.sink.i101, %i.ij
  br i1 %i.it, label %.lr.ph198, label %._crit_edge199

._crit_edge199.loopexit:                          ; preds = %bb.al
  %.pre = load i64, ptr %i.c, align 8, !tbaa !97
  br label %._crit_edge199

._crit_edge199:                                   ; preds = %._crit_edge199.loopexit, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit102
  %i.iu = phi i64 [ %.pre, %._crit_edge199.loopexit ], [ %i.id, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit102 ] ; 2 uses
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %i.iv = icmp sgt i64 %i.iu, %indvars.iv.next245
  br i1 %i.iv, label %bb.ai, label %.preheader163, !llvm.loop !216

.lr.ph198:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit102, %bb.al
  %.sroa.8111.0197 = phi i64 [ %i.jc, %bb.al ], [ %i.ij, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit102 ] ; 3 uses
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %.sroa.8111.0197
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !86
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.if, i64 %.sroa.8111.0197
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !103
  %i.ja = sext i32 %i.iz to i64
  %i.jb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen12SparseMatrixIdLi0EiE6insertEll(ptr noundef nonnull align 8 dereferenceable(72) %3, i64 noundef %i.ja, i64 noundef %indvars.iv244)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %.lr.ph198
  store double %i.ix, ptr %i.jb, align 8, !tbaa !86
  %i.jc = add nsw i64 %.sroa.8111.0197, 1         ; 2 uses
  %exitcond243.not = icmp eq i64 %i.jc, %.sink.i101
  br i1 %exitcond243.not, label %._crit_edge199.loopexit, label %.lr.ph198, !llvm.loop !217

end_hunk_0
