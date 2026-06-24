inline.NumInlined: 171860
inline.NumDeleted: 43815
begin_hunk_0_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_:bb.a
bb.f:                                             ; preds = %.lr.ph197
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i196, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph197, label %.critedge.i.i.i, !llvm.loop !1540

.lr.ph197:                                        ; preds = %bb.e, %bb.f
  %indvars.iv.i196 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i196, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !855
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1540

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !855
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph197, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph197 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i25 = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i25, label %bb.h, label %bb.bb

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1538 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1536 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit134

.lr.ph:                                           ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !4246 ; 2 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !4309, !nonnull !797, !align !916 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.an = sext i32 %i.ag to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit
  %indvars.iv168 = phi i64 [ %i.an, %.lr.ph ], [ %indvars.iv.next169, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !4310, !nonnull !797, !align !916 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !4306, !nonnull !797, !align !916 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 58
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = trunc nsw i64 %indvars.iv168 to i32     ; 3 uses
  br i1 %i.at, label %.noexc5, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 59
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !1255
  br label %.noexc5

bb.l:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1529
  %i.bc = shl nsw i64 %indvars.iv168, 2
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  br label %.noexc5

.noexc5:                                          ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i = phi i32 [ %i.be, %bb.l ], [ %i.az, %bb.k ], [ %i.au, %bb.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 136
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !4236
  %i.bh = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3  ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ao, i64 144
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !4239
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bh
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3  ; 9 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.loopexit132, label %.noexc10

.noexc10:                                         ; preds = %.noexc5
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ao, i64 152
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !4307, !nonnull !797, !align !916 ; 22 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = sext i32 %i.bj to i64                   ; 11 uses
  br i1 %i.bt, label %.noexc16, label %.noexc11

.noexc11:                                         ; preds = %.noexc10
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1547 ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 58
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %.noexc12.thread, label %bb.m

bb.m:                                             ; preds = %.noexc11
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  br label %.noexc12

bb.o:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1529
  %i.cg = shl nsw i64 %i.bu, 2
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 %i.cg
  br label %.noexc12

.noexc12:                                         ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.in = phi ptr [ %i.ch, %bb.o ], [ %i.cd, %bb.n ]
  %.0.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i.in, align 4, !tbaa !3
  %i.ci = sext i32 %.0.i.i.i.i.i to i64
  %i.cj = shl nsw i64 %i.ci, 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cj
  %.0.copyload.i.i.i.i.i = load i128, ptr %i.ck, align 1 ; 3 uses
  %i.cl = icmp sgt i32 %i.bn, 1
  br i1 %i.cl, label %.noexc13.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc12.thread:                                  ; preds = %.noexc11
  %i.cm = sext i32 %i.bj to i64
  %i.cn = shl nsw i64 %i.cm, 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cn
  %.0.copyload.i.i.i.i.i180 = load i128, ptr %i.co, align 1 ; 3 uses
  %i.cp = icmp sgt i32 %i.bn, 1
  br i1 %i.cp, label %.noexc13.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc13.lr.ph:                                   ; preds = %.noexc12
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bq, i64 64 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cu = trunc nuw i8 %i.ct to i1                ; 3 uses
  %wide.trip.count = zext nneg i32 %i.bn to i64
  %i.cv = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.cv, 1
  %i.cw = icmp eq i32 %i.bn, 2
  br i1 %i.cw, label %.noexc13.epil.preheader, label %.noexc13.lr.ph.new

.noexc13.lr.ph.new:                               ; preds = %.noexc13.lr.ph
  %unroll_iter = and i64 %i.cv, -2
  %invariant.op = add i64 1, %i.bu
  br label %.noexc13

.noexc13.us.preheader:                            ; preds = %.noexc12.thread
  %wide.trip.count163 = zext nneg i32 %i.bn to i64
  %i.cx = add nsw i64 %wide.trip.count163, -1     ; 3 uses
  %xtraiter205 = and i64 %i.cx, 1
  %i.cy = icmp eq i32 %i.bn, 2
  br i1 %i.cy, label %.noexc13.us.epil.preheader, label %.noexc13.us.preheader.new

.noexc13.us.preheader.new:                        ; preds = %.noexc13.us.preheader
  %unroll_iter209 = and i64 %i.cx, -2
  %invariant.op214 = add i64 1, %i.bu
  br label %.noexc13.us

.noexc13.us:                                      ; preds = %.noexc13.us, %.noexc13.us.preheader.new
  %indvars.iv160 = phi i64 [ 1, %.noexc13.us.preheader.new ], [ %indvars.iv.next161.1, %.noexc13.us ] ; 3 uses
  %.0121142.us = phi i128 [ %.0.copyload.i.i.i.i.i180, %.noexc13.us.preheader.new ], [ %spec.select.us.1, %.noexc13.us ]
  %niter210 = phi i64 [ 0, %.noexc13.us.preheader.new ], [ %niter210.next.1, %.noexc13.us ]
  %i.cz = add nsw i64 %indvars.iv160, %i.bu
  %i.da = shl nsw i64 %i.cz, 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.da
  %.0.copyload.i.i.i.i.us = load i128, ptr %i.db, align 1
  %spec.select.us = call i128 @llvm.smin.i128(i128 %.0.copyload.i.i.i.i.us, i128 %.0121142.us)
  %.reass215 = add i64 %indvars.iv160, %invariant.op214
  %i.dc = shl nsw i64 %.reass215, 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.dc
  %.0.copyload.i.i.i.i.us.1 = load i128, ptr %i.dd, align 1
  %spec.select.us.1 = call i128 @llvm.smin.i128(i128 %.0.copyload.i.i.i.i.us.1, i128 %spec.select.us) ; 3 uses
  %indvars.iv.next161.1 = add nuw nsw i64 %indvars.iv160, 2 ; 2 uses
  %niter210.next.1 = add i64 %niter210, 2         ; 2 uses
  %niter210.ncmp.1 = icmp eq i64 %niter210.next.1, %unroll_iter209
  br i1 %niter210.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread.loopexit198.unr-lcssa, label %.noexc13.us, !llvm.loop !4314

.noexc13:                                         ; preds = %.noexc14.1, %.noexc13.lr.ph.new
  %indvars.iv = phi i64 [ 1, %.noexc13.lr.ph.new ], [ %indvars.iv.next.1, %.noexc14.1 ] ; 3 uses
  %.0121142 = phi i128 [ %.0.copyload.i.i.i.i.i, %.noexc13.lr.ph.new ], [ %spec.select.1, %.noexc14.1 ]
  %niter = phi i64 [ 0, %.noexc13.lr.ph.new ], [ %niter.next.1, %.noexc14.1 ]
  br i1 %i.cu, label %.noexc14, label %bb.p

bb.p:                                             ; preds = %.noexc13
  %i.de = add nsw i64 %indvars.iv, %i.bu
  %i.df = load ptr, ptr %i.cq, align 8, !tbaa !1529
  %i.dg = shl nsw i64 %i.de, 2
  %i.dh = getelementptr inbounds i8, ptr %i.df, i64 %i.dg
  br label %.noexc14

.noexc14:                                         ; preds = %.noexc13, %bb.p
  %.0.i.i.i.i.in = phi ptr [ %i.dh, %bb.p ], [ %i.cr, %.noexc13 ]
  %.0.i.i.i.i = load i32, ptr %.0.i.i.i.i.in, align 4, !tbaa !3
  %i.di = sext i32 %.0.i.i.i.i to i64
  %i.dj = shl nsw i64 %i.di, 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.dj
  %.0.copyload.i.i.i.i = load i128, ptr %i.dk, align 1
  %spec.select = call i128 @llvm.smin.i128(i128 %.0.copyload.i.i.i.i, i128 %.0121142)
  br i1 %i.cu, label %.noexc14.1, label %bb.q

bb.q:                                             ; preds = %.noexc14
  %.reass = add i64 %indvars.iv, %invariant.op
  %i.dl = load ptr, ptr %i.cq, align 8, !tbaa !1529
  %i.dm = shl nsw i64 %.reass, 2
  %i.dn = getelementptr inbounds i8, ptr %i.dl, i64 %i.dm
  br label %.noexc14.1

.noexc14.1:                                       ; preds = %bb.q, %.noexc14
  %.0.i.i.i.i.in.1 = phi ptr [ %i.dn, %bb.q ], [ %i.cr, %.noexc14 ]
  %.0.i.i.i.i.1 = load i32, ptr %.0.i.i.i.i.in.1, align 4, !tbaa !3
  %i.do = sext i32 %.0.i.i.i.i.1 to i64
  %i.dp = shl nsw i64 %i.do, 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.dp
  %.0.copyload.i.i.i.i.1 = load i128, ptr %i.dq, align 1
  %spec.select.1 = call i128 @llvm.smin.i128(i128 %.0.copyload.i.i.i.i.1, i128 %spec.select) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread.loopexit199.unr-lcssa, label %.noexc13, !llvm.loop !4314

.noexc16:                                         ; preds = %.noexc10
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.ds, null           ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bq, i64 58
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i, label %.noexc18, label %bb.r

bb.r:                                             ; preds = %.noexc16
  %i.dt = trunc nuw i8 %.pre to i1
  %i.du = getelementptr inbounds nuw i8, ptr %i.bq, i64 57
  %i.dv = load i8, ptr %i.du, align 1, !range !796
  %i.dw = trunc nuw i8 %i.dv to i1
  %or.cond.i.i.i = select i1 %i.dt, i1 true, i1 %i.dw
  br i1 %or.cond.i.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dx = lshr i64 %i.bu, 6
  %i.dy = and i64 %i.dx, 67108863
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !855
  %i.eb = and i64 %i.bu, 63
  %i.ec = shl nuw i64 1, %i.eb
  %i.ed = and i64 %i.ea, %i.ec
  br label %.noexc17

bb.t:                                             ; preds = %bb.r
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.eh = load i64, ptr %i.ds, align 8, !tbaa !855
  %i.ei = and i64 %i.eh, 1
  br label %.noexc17

bb.v:                                             ; preds = %bb.t
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !1529
  %i.el = shl nsw i64 %i.bu, 2
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !3
  %i.eo = zext i32 %i.en to i64                   ; 2 uses
  %i.ep = lshr i64 %i.eo, 6
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !855
  %i.es = and i64 %i.eo, 63
  %i.et = shl nuw i64 1, %i.es
  %i.eu = and i64 %i.et, %i.er
  br label %.noexc17

.noexc17:                                         ; preds = %bb.v, %bb.u, %bb.s
  %.0.i.i.i.in = phi i64 [ %i.ed, %bb.s ], [ %i.ei, %bb.u ], [ %i.eu, %bb.v ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %.loopexit132, label %.noexc18

.noexc18:                                         ; preds = %.noexc16, %.noexc17
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !1547 ; 2 uses
  %i.ex = trunc nuw i8 %.pre to i1                ; 3 uses
  br i1 %i.ex, label %.noexc19, label %bb.w

bb.w:                                             ; preds = %.noexc18
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !1255
  br label %.noexc19

bb.y:                                             ; preds = %bb.w
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !1529
  %i.ff = shl nsw i64 %i.bu, 2
  %i.fg = getelementptr inbounds i8, ptr %i.fe, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3
  br label %.noexc19

.noexc19:                                         ; preds = %bb.y, %bb.x, %.noexc18
  %.0.i.i.i.i35 = phi i32 [ %i.fh, %bb.y ], [ %i.fc, %bb.x ], [ %i.bj, %.noexc18 ]
  %i.fi = sext i32 %.0.i.i.i.i35 to i64
  %i.fj = shl nsw i64 %i.fi, 4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.fj
  %.0.copyload.i.i.i.i36 = load i128, ptr %i.fk, align 1 ; 2 uses
  %i.fl = add nsw i32 %i.bn, %i.bj
  %i.fm = icmp eq i32 %i.bn, 1
  br i1 %i.fm, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread, label %.noexc21.lr.ph

.noexc21.lr.ph:                                   ; preds = %.noexc19
  %.sroa.0103.0144 = add i32 %i.bj, 1
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bq, i64 57
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bq, i64 59 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.fr = sext i32 %.sroa.0103.0144 to i64
  br label %.noexc21

.noexc21:                                         ; preds = %.noexc21.lr.ph, %.noexc24
  %indvars.iv165 = phi i64 [ %i.fr, %.noexc21.lr.ph ], [ %indvars.iv.next166, %.noexc24 ] ; 6 uses
  %.0124145 = phi i128 [ %.0.copyload.i.i.i.i36, %.noexc21.lr.ph ], [ %spec.select130, %.noexc24 ]
  br i1 %.not.i.i.i, label %.noexc23, label %bb.z

bb.z:                                             ; preds = %.noexc21
  %i.fs = load i8, ptr %i.fn, align 1, !range !796
  %i.ft = trunc nuw i8 %i.fs to i1
  %or.cond.i.i.i41 = select i1 %i.ex, i1 true, i1 %i.ft
  br i1 %or.cond.i.i.i41, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fu = lshr i64 %indvars.iv165, 6
  %i.fv = and i64 %i.fu, 67108863
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.fv
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !855
  %i.fy = and i64 %indvars.iv165, 63
  %i.fz = shl nuw i64 1, %i.fy
  %i.ga = and i64 %i.fx, %i.fz
  br label %.noexc22

bb.ab:                                            ; preds = %bb.z
  %i.gb = load i8, ptr %i.fo, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gd = load i64, ptr %i.ds, align 8, !tbaa !855
  %i.ge = and i64 %i.gd, 1
  br label %.noexc22

bb.ad:                                            ; preds = %bb.ab
  %i.gf = load ptr, ptr %i.fp, align 8, !tbaa !1529
  %i.gg = shl nsw i64 %indvars.iv165, 2
  %i.gh = getelementptr inbounds i8, ptr %i.gf, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !3
  %i.gj = zext i32 %i.gi to i64                   ; 2 uses
  %i.gk = lshr i64 %i.gj, 6
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.gk
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !855
  %i.gn = and i64 %i.gj, 63
  %i.go = shl nuw i64 1, %i.gn
  %i.gp = and i64 %i.go, %i.gm
  br label %.noexc22

.noexc22:                                         ; preds = %bb.ad, %bb.ac, %bb.aa
  %.0.i.i.i44.in = phi i64 [ %i.ga, %bb.aa ], [ %i.ge, %bb.ac ], [ %i.gp, %bb.ad ]
  %.0.i.i.i44.not = icmp eq i64 %.0.i.i.i44.in, 0
  br i1 %.0.i.i.i44.not, label %.loopexit132, label %.noexc23

.noexc23:                                         ; preds = %.noexc21, %.noexc22
  %i.gq = trunc nsw i64 %indvars.iv165 to i32
  br i1 %i.ex, label %.noexc24, label %bb.ae
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_:bb.a
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS4_10VectorExecEEESC_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSG_EEEE7iterateIJNS4_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !4327

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS4_10VectorExecEEESC_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSG_EEEE7iterateIJNS4_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS4_10VectorExecEEESC_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSG_EEEE7iterateIJNS4_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !4328, !range !796, !noundef !797
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4330
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !855
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit139, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit
  %.0153 = phi i64 [ %i.k, %.preheader ], [ %i.je, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.o = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0153, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 5 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !4246 ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !4309, !nonnull !797, !align !916 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.t = sext i32 %i.q to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !4310, !nonnull !797, !align !916 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !4306, !nonnull !797, !align !916 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 58
  %i.z = load i8, ptr %i.y, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.noexc12, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 59
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1255
  br label %.noexc12

bb.e:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1529
  %i.ai = shl nsw i64 %i.t, 2
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  br label %.noexc12

.noexc12:                                         ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i = phi i32 [ %i.ak, %bb.e ], [ %i.af, %bb.d ], [ %i.q, %bb.b ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !4236
  %i.an = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3  ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !4239
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.an
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3  ; 9 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.loopexit137, label %.noexc17

.noexc17:                                         ; preds = %.noexc12
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !4307, !nonnull !797, !align !916 ; 22 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = sext i32 %i.ap to i64                   ; 11 uses
  br i1 %i.az, label %.noexc23, label %.noexc18

.noexc18:                                         ; preds = %.noexc17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1547 ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 58
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.noexc19.thread, label %bb.f

bb.f:                                             ; preds = %.noexc18
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  br label %.noexc19

bb.h:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1529
  %i.bm = shl nsw i64 %i.ba, 2
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 %i.bm
  br label %.noexc19

.noexc19:                                         ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.in = phi ptr [ %i.bn, %bb.h ], [ %i.bj, %bb.g ]
  %.0.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i.in, align 4, !tbaa !3
  %i.bo = sext i32 %.0.i.i.i.i.i to i64
  %i.bp = shl nsw i64 %i.bo, 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bp
  %.0.copyload.i.i.i.i.i = load i128, ptr %i.bq, align 1 ; 3 uses
  %i.br = icmp sgt i32 %i.at, 1
  br i1 %i.br, label %.noexc20.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc19.thread:                                  ; preds = %.noexc18
  %i.bs = sext i32 %i.ap to i64
  %i.bt = shl nsw i64 %i.bs, 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bt
  %.0.copyload.i.i.i.i.i177 = load i128, ptr %i.bu, align 1 ; 3 uses
  %i.bv = icmp sgt i32 %i.at, 1
  br i1 %i.bv, label %.noexc20.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc20.lr.ph:                                   ; preds = %.noexc19
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 64 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ca = trunc nuw i8 %i.bz to i1                ; 3 uses
  %wide.trip.count = zext nneg i32 %i.at to i64
  %i.cb = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.cb, 1
  %i.cc = icmp eq i32 %i.at, 2
  br i1 %i.cc, label %.noexc20.epil.preheader, label %.noexc20.lr.ph.new

.noexc20.lr.ph.new:                               ; preds = %.noexc20.lr.ph
  %unroll_iter = and i64 %i.cb, -2
  %invariant.op = add i64 1, %i.ba
  br label %.noexc20

.noexc20.us.preheader:                            ; preds = %.noexc19.thread
  %wide.trip.count165 = zext nneg i32 %i.at to i64
  %i.cd = add nsw i64 %wide.trip.count165, -1     ; 3 uses
  %xtraiter199 = and i64 %i.cd, 1
  %i.ce = icmp eq i32 %i.at, 2
  br i1 %i.ce, label %.noexc20.us.epil.preheader, label %.noexc20.us.preheader.new

.noexc20.us.preheader.new:                        ; preds = %.noexc20.us.preheader
  %unroll_iter203 = and i64 %i.cd, -2
  %invariant.op208 = add i64 1, %i.ba
  br label %.noexc20.us

.noexc20.us:                                      ; preds = %.noexc20.us, %.noexc20.us.preheader.new
  %indvars.iv162 = phi i64 [ 1, %.noexc20.us.preheader.new ], [ %indvars.iv.next163.1, %.noexc20.us ] ; 3 uses
  %.0126147.us = phi i128 [ %.0.copyload.i.i.i.i.i177, %.noexc20.us.preheader.new ], [ %spec.select.us.1, %.noexc20.us ]
  %niter204 = phi i64 [ 0, %.noexc20.us.preheader.new ], [ %niter204.next.1, %.noexc20.us ]
  %i.cf = add nsw i64 %indvars.iv162, %i.ba
  %i.cg = shl nsw i64 %i.cf, 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.cg
  %.0.copyload.i.i.i.i.us = load i128, ptr %i.ch, align 1
  %spec.select.us = call i128 @llvm.smin.i128(i128 %.0.copyload.i.i.i.i.us, i128 %.0126147.us)
  %.reass209 = add i64 %indvars.iv162, %invariant.op208
  %i.ci = shl nsw i64 %.reass209, 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ci
  %.0.copyload.i.i.i.i.us.1 = load i128, ptr %i.cj, align 1
  %spec.select.us.1 = call i128 @llvm.smin.i128(i128 %.0.copyload.i.i.i.i.us.1, i128 %spec.select.us) ; 3 uses
  %indvars.iv.next163.1 = add nuw nsw i64 %indvars.iv162, 2 ; 2 uses
  %niter204.next.1 = add i64 %niter204, 2         ; 2 uses
  %niter204.ncmp.1 = icmp eq i64 %niter204.next.1, %unroll_iter203
  br i1 %niter204.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread.loopexit192.unr-lcssa, label %.noexc20.us, !llvm.loop !4314

.noexc20:                                         ; preds = %.noexc21.1, %.noexc20.lr.ph.new
  %indvars.iv = phi i64 [ 1, %.noexc20.lr.ph.new ], [ %indvars.iv.next.1, %.noexc21.1 ] ; 3 uses
  %.0126147 = phi i128 [ %.0.copyload.i.i.i.i.i, %.noexc20.lr.ph.new ], [ %spec.select.1, %.noexc21.1 ]
  %niter = phi i64 [ 0, %.noexc20.lr.ph.new ], [ %niter.next.1, %.noexc21.1 ]
  br i1 %i.ca, label %.noexc21, label %bb.i

bb.i:                                             ; preds = %.noexc20
  %i.ck = add nsw i64 %indvars.iv, %i.ba
  %i.cl = load ptr, ptr %i.bw, align 8, !tbaa !1529
  %i.cm = shl nsw i64 %i.ck, 2
  %i.cn = getelementptr inbounds i8, ptr %i.cl, i64 %i.cm
  br label %.noexc21

.noexc21:                                         ; preds = %.noexc20, %bb.i
  %.0.i.i.i.i.in = phi ptr [ %i.cn, %bb.i ], [ %i.bx, %.noexc20 ]
  %.0.i.i.i.i = load i32, ptr %.0.i.i.i.i.in, align 4, !tbaa !3
  %i.co = sext i32 %.0.i.i.i.i to i64
  %i.cp = shl nsw i64 %i.co, 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.cp
  %.0.copyload.i.i.i.i = load i128, ptr %i.cq, align 1
  %spec.select = call i128 @llvm.smin.i128(i128 %.0.copyload.i.i.i.i, i128 %.0126147)
  br i1 %i.ca, label %.noexc21.1, label %bb.j

bb.j:                                             ; preds = %.noexc21
  %.reass = add i64 %indvars.iv, %invariant.op
  %i.cr = load ptr, ptr %i.bw, align 8, !tbaa !1529
  %i.cs = shl nsw i64 %.reass, 2
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 %i.cs
  br label %.noexc21.1

.noexc21.1:                                       ; preds = %bb.j, %.noexc21
  %.0.i.i.i.i.in.1 = phi ptr [ %i.ct, %bb.j ], [ %i.bx, %.noexc21 ]
  %.0.i.i.i.i.1 = load i32, ptr %.0.i.i.i.i.in.1, align 4, !tbaa !3
  %i.cu = sext i32 %.0.i.i.i.i.1 to i64
  %i.cv = shl nsw i64 %i.cu, 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.cv
  %.0.copyload.i.i.i.i.1 = load i128, ptr %i.cw, align 1
  %spec.select.1 = call i128 @llvm.smin.i128(i128 %.0.copyload.i.i.i.i.1, i128 %spec.select) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread.loopexit193.unr-lcssa, label %.noexc20, !llvm.loop !4314

.noexc23:                                         ; preds = %.noexc17
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.cy, null           ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aw, i64 58
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i, label %.noexc25, label %bb.k

bb.k:                                             ; preds = %.noexc23
  %i.cz = trunc nuw i8 %.pre to i1
  %i.da = getelementptr inbounds nuw i8, ptr %i.aw, i64 57
  %i.db = load i8, ptr %i.da, align 1, !range !796
  %i.dc = trunc nuw i8 %i.db to i1
  %or.cond.i.i.i = select i1 %i.cz, i1 true, i1 %i.dc
  br i1 %or.cond.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dd = lshr i64 %i.ba, 6
  %i.de = and i64 %i.dd, 67108863
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !855
  %i.dh = and i64 %i.ba, 63
  %i.di = shl nuw i64 1, %i.dh
  %i.dj = and i64 %i.dg, %i.di
  br label %.noexc24

bb.m:                                             ; preds = %bb.k
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dn = load i64, ptr %i.cy, align 8, !tbaa !855
  %i.do = and i64 %i.dn, 1
  br label %.noexc24

bb.o:                                             ; preds = %bb.m
  %i.dp = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1529
  %i.dr = shl nsw i64 %i.ba, 2
  %i.ds = getelementptr inbounds i8, ptr %i.dq, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !3
  %i.du = zext i32 %i.dt to i64                   ; 2 uses
  %i.dv = lshr i64 %i.du, 6
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dv
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !855
  %i.dy = and i64 %i.du, 63
  %i.dz = shl nuw i64 1, %i.dy
  %i.ea = and i64 %i.dz, %i.dx
  br label %.noexc24

.noexc24:                                         ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i.i.in = phi i64 [ %i.dj, %bb.l ], [ %i.do, %bb.n ], [ %i.ea, %bb.o ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %.loopexit137, label %.noexc25

.noexc25:                                         ; preds = %.noexc23, %.noexc24
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !1547 ; 2 uses
  %i.ed = trunc nuw i8 %.pre to i1                ; 3 uses
  br i1 %i.ed, label %.noexc26, label %bb.p

bb.p:                                             ; preds = %.noexc25
  %i.ee = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eh = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !1255
  br label %.noexc26

bb.r:                                             ; preds = %bb.p
  %i.ej = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !1529
  %i.el = shl nsw i64 %i.ba, 2
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !3
  br label %.noexc26

.noexc26:                                         ; preds = %bb.r, %bb.q, %.noexc25
  %.0.i.i.i.i40 = phi i32 [ %i.en, %bb.r ], [ %i.ei, %bb.q ], [ %i.ap, %.noexc25 ]
  %i.eo = sext i32 %.0.i.i.i.i40 to i64
  %i.ep = shl nsw i64 %i.eo, 4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ep
  %.0.copyload.i.i.i.i41 = load i128, ptr %i.eq, align 1 ; 2 uses
  %i.er = add nsw i32 %i.at, %i.ap
  %i.es = icmp eq i32 %i.at, 1
  br i1 %i.es, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread, label %.noexc28.lr.ph

.noexc28.lr.ph:                                   ; preds = %.noexc26
  %.sroa.0108.0149 = add i32 %i.ap, 1
  %i.et = getelementptr inbounds nuw i8, ptr %i.aw, i64 57
  %i.eu = getelementptr inbounds nuw i8, ptr %i.aw, i64 59 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.ex = sext i32 %.sroa.0108.0149 to i64
  br label %.noexc28

.noexc28:                                         ; preds = %.noexc28.lr.ph, %.noexc31
  %indvars.iv167 = phi i64 [ %i.ex, %.noexc28.lr.ph ], [ %indvars.iv.next168, %.noexc31 ] ; 6 uses
  %.0129150 = phi i128 [ %.0.copyload.i.i.i.i41, %.noexc28.lr.ph ], [ %spec.select135, %.noexc31 ]
  br i1 %.not.i.i.i, label %.noexc30, label %bb.s

bb.s:                                             ; preds = %.noexc28
  %i.ey = load i8, ptr %i.et, align 1, !range !796
  %i.ez = trunc nuw i8 %i.ey to i1
  %or.cond.i.i.i46 = select i1 %i.ed, i1 true, i1 %i.ez
  br i1 %or.cond.i.i.i46, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fa = lshr i64 %indvars.iv167, 6
  %i.fb = and i64 %i.fa, 67108863
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !855
  %i.fe = and i64 %indvars.iv167, 63
  %i.ff = shl nuw i64 1, %i.fe
  %i.fg = and i64 %i.fd, %i.ff
  br label %.noexc29

bb.u:                                             ; preds = %bb.s
  %i.fh = load i8, ptr %i.eu, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fj = load i64, ptr %i.cy, align 8, !tbaa !855
  %i.fk = and i64 %i.fj, 1
  br label %.noexc29

bb.w:                                             ; preds = %bb.u
  %i.fl = load ptr, ptr %i.ev, align 8, !tbaa !1529
  %i.fm = shl nsw i64 %indvars.iv167, 2
  %i.fn = getelementptr inbounds i8, ptr %i.fl, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !3
  %i.fp = zext i32 %i.fo to i64                   ; 2 uses
  %i.fq = lshr i64 %i.fp, 6
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.fq
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !855
  %i.ft = and i64 %i.fp, 63
  %i.fu = shl nuw i64 1, %i.ft
  %i.fv = and i64 %i.fu, %i.fs
  br label %.noexc29

.noexc29:                                         ; preds = %bb.w, %bb.v, %bb.t
  %.0.i.i.i49.in = phi i64 [ %i.fg, %bb.t ], [ %i.fk, %bb.v ], [ %i.fv, %bb.w ]
  %.0.i.i.i49.not = icmp eq i64 %.0.i.i.i49.in, 0
  br i1 %.0.i.i.i49.not, label %.loopexit137, label %.noexc30

.noexc30:                                         ; preds = %.noexc28, %.noexc29
  %i.fw = trunc nsw i64 %indvars.iv167 to i32
  br i1 %i.ed, label %.noexc31, label %bb.x
end_hunk_1
begin_hunk_2_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim:bb.a
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit67, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit72
  %i.jd = add i64 %.0153, -1
  %i.je = and i64 %i.jd, %.0153                   ; 2 uses
  %.not10 = icmp eq i64 %i.je, 0
  br i1 %.not10, label %.loopexit139, label %bb.b, !llvm.loop !4336

.loopexit139:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %5 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !4337, !range !796, !noundef !797
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4339
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !855
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit324
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.av

bb.b:                                             ; preds = %bb.a
  %i.n = shl i32 %1, 6                            ; 3 uses
  %i.o = add i32 %i.n, 64
  %i.p = sext i32 %i.o to i64
  %.not365 = icmp eq i32 %i.n, -64
  br i1 %.not365, label %.loopexit324, label %.lr.ph364

.lr.ph364:                                        ; preds = %bb.b
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph364, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clImEEDaSP_.exit
  %.0360 = phi i64 [ %i.q, %.lr.ph364 ], [ %i.jf, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clImEEDaSP_.exit ] ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !4246 ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !4309, !nonnull !797, !align !916 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !4310, !nonnull !797, !align !916 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !4306, !nonnull !797, !align !916 ; 4 uses
  %i.z = trunc i64 %.0360 to i32                  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 58
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.noexc43, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 59
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !1255
  br label %.noexc43

bb.f:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1529
  %sext.i = shl i64 %.0360, 32
  %i.ak = ashr exact i64 %sext.i, 30
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  br label %.noexc43

.noexc43:                                         ; preds = %bb.f, %bb.e, %bb.c
  %.0.i.i61 = phi i32 [ %i.am, %bb.f ], [ %i.ah, %bb.e ], [ %i.z, %bb.c ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !4236
  %i.ap = sext i32 %.0.i.i61 to i64               ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3  ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !4239
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ap
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3  ; 9 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.loopexit322, label %.noexc44

.noexc44:                                         ; preds = %.noexc43
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !4307, !nonnull !797, !align !916 ; 22 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = sext i32 %i.ar to i64                   ; 11 uses
  br i1 %i.bb, label %.noexc50, label %.noexc45

.noexc45:                                         ; preds = %.noexc44
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1547 ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 58
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %.noexc46.thread, label %bb.g

bb.g:                                             ; preds = %.noexc45
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  br label %.noexc46

bb.i:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1529
  %i.bo = shl nsw i64 %i.bc, 2
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 %i.bo
  br label %.noexc46

.noexc46:                                         ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.in = phi ptr [ %i.bp, %bb.i ], [ %i.bl, %bb.h ]
  %.0.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i.in, align 4, !tbaa !3
  %i.bq = sext i32 %.0.i.i.i.i.i to i64
  %i.br = shl nsw i64 %i.bq, 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.br
  %.0.copyload.i.i.i.i.i = load i128, ptr %i.bs, align 1 ; 3 uses
  %i.bt = icmp sgt i32 %i.av, 1
  br i1 %i.bt, label %.noexc47.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit.thread

.noexc46.thread:                                  ; preds = %.noexc45
  %i.bu = sext i32 %i.ar to i64
  %i.bv = shl nsw i64 %i.bu, 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bv
  %.0.copyload.i.i.i.i.i421 = load i128, ptr %i.bw, align 1 ; 3 uses
  %i.bx = icmp sgt i32 %i.av, 1
  br i1 %i.bx, label %.noexc47.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit.thread

.noexc47.lr.ph:                                   ; preds = %.noexc46
  %i.by = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ay, i64 64 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cc = trunc nuw i8 %i.cb to i1                ; 3 uses
  %wide.trip.count = zext nneg i32 %i.av to i64
  %i.cd = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.cd, 1
  %i.ce = icmp eq i32 %i.av, 2
  br i1 %i.ce, label %.noexc47.epil.preheader, label %.noexc47.lr.ph.new

.noexc47.lr.ph.new:                               ; preds = %.noexc47.lr.ph
  %unroll_iter = and i64 %i.cd, -2
  %invariant.op = add i64 1, %i.bc
  br label %.noexc47

.noexc47.us.preheader:                            ; preds = %.noexc46.thread
  %wide.trip.count387 = zext nneg i32 %i.av to i64
  %i.cf = add nsw i64 %wide.trip.count387, -1     ; 3 uses
  %xtraiter473 = and i64 %i.cf, 1
  %i.cg = icmp eq i32 %i.av, 2
  br i1 %i.cg, label %.noexc47.us.epil.preheader, label %.noexc47.us.preheader.new

.noexc47.us.preheader.new:                        ; preds = %.noexc47.us.preheader
  %unroll_iter477 = and i64 %i.cf, -2
  %invariant.op498 = add i64 1, %i.bc
  br label %.noexc47.us

.noexc47.us:                                      ; preds = %.noexc47.us, %.noexc47.us.preheader.new
  %indvars.iv384 = phi i64 [ 1, %.noexc47.us.preheader.new ], [ %indvars.iv.next385.1, %.noexc47.us ] ; 3 uses
  %.0296352.us = phi i128 [ %.0.copyload.i.i.i.i.i421, %.noexc47.us.preheader.new ], [ %spec.select.us.1, %.noexc47.us ]
  %niter478 = phi i64 [ 0, %.noexc47.us.preheader.new ], [ %niter478.next.1, %.noexc47.us ]
  %i.ch = add nsw i64 %indvars.iv384, %i.bc
  %i.ci = shl nsw i64 %i.ch, 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ci
  %.0.copyload.i.i.i.i.us = load i128, ptr %i.cj, align 1
  %spec.select.us = call i128 @llvm.smin.i128(i128 %.0.copyload.i.i.i.i.us, i128 %.0296352.us)
  %.reass499 = add i64 %indvars.iv384, %invariant.op498
  %i.ck = shl nsw i64 %.reass499, 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ck
  %.0.copyload.i.i.i.i.us.1 = load i128, ptr %i.cl, align 1
  %spec.select.us.1 = call i128 @llvm.smin.i128(i128 %.0.copyload.i.i.i.i.us.1, i128 %spec.select.us) ; 3 uses
  %indvars.iv.next385.1 = add nuw nsw i64 %indvars.iv384, 2 ; 2 uses
  %niter478.next.1 = add i64 %niter478, 2         ; 2 uses
  %niter478.ncmp.1 = icmp eq i64 %niter478.next.1, %unroll_iter477
  br i1 %niter478.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit.thread.loopexit463.unr-lcssa, label %.noexc47.us, !llvm.loop !4314

.noexc47:                                         ; preds = %.noexc48.1, %.noexc47.lr.ph.new
  %indvars.iv = phi i64 [ 1, %.noexc47.lr.ph.new ], [ %indvars.iv.next.1, %.noexc48.1 ] ; 3 uses
  %.0296352 = phi i128 [ %.0.copyload.i.i.i.i.i, %.noexc47.lr.ph.new ], [ %spec.select.1, %.noexc48.1 ]
  %niter = phi i64 [ 0, %.noexc47.lr.ph.new ], [ %niter.next.1, %.noexc48.1 ]
  br i1 %i.cc, label %.noexc48, label %bb.j

bb.j:                                             ; preds = %.noexc47
  %i.cm = add nsw i64 %indvars.iv, %i.bc
  %i.cn = load ptr, ptr %i.by, align 8, !tbaa !1529
  %i.co = shl nsw i64 %i.cm, 2
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 %i.co
  br label %.noexc48

.noexc48:                                         ; preds = %.noexc47, %bb.j
  %.0.i.i.i.i.in = phi ptr [ %i.cp, %bb.j ], [ %i.bz, %.noexc47 ]
  %.0.i.i.i.i = load i32, ptr %.0.i.i.i.i.in, align 4, !tbaa !3
  %i.cq = sext i32 %.0.i.i.i.i to i64
  %i.cr = shl nsw i64 %i.cq, 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cr
  %.0.copyload.i.i.i.i = load i128, ptr %i.cs, align 1
  %spec.select = call i128 @llvm.smin.i128(i128 %.0.copyload.i.i.i.i, i128 %.0296352)
  br i1 %i.cc, label %.noexc48.1, label %bb.k

bb.k:                                             ; preds = %.noexc48
  %.reass = add i64 %indvars.iv, %invariant.op
  %i.ct = load ptr, ptr %i.by, align 8, !tbaa !1529
  %i.cu = shl nsw i64 %.reass, 2
  %i.cv = getelementptr inbounds i8, ptr %i.ct, i64 %i.cu
  br label %.noexc48.1

.noexc48.1:                                       ; preds = %bb.k, %.noexc48
  %.0.i.i.i.i.in.1 = phi ptr [ %i.cv, %bb.k ], [ %i.bz, %.noexc48 ]
  %.0.i.i.i.i.1 = load i32, ptr %.0.i.i.i.i.in.1, align 4, !tbaa !3
  %i.cw = sext i32 %.0.i.i.i.i.1 to i64
  %i.cx = shl nsw i64 %i.cw, 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cx
  %.0.copyload.i.i.i.i.1 = load i128, ptr %i.cy, align 1
  %spec.select.1 = call i128 @llvm.smin.i128(i128 %.0.copyload.i.i.i.i.1, i128 %spec.select) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit.thread.loopexit464.unr-lcssa, label %.noexc47, !llvm.loop !4314

.noexc50:                                         ; preds = %.noexc44
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.da, null           ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ay, i64 58
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i, label %.noexc52, label %bb.l

bb.l:                                             ; preds = %.noexc50
  %i.db = trunc nuw i8 %.pre to i1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ay, i64 57
  %i.dd = load i8, ptr %i.dc, align 1, !range !796
  %i.de = trunc nuw i8 %i.dd to i1
  %or.cond.i.i.i = select i1 %i.db, i1 true, i1 %i.de
  br i1 %or.cond.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.df = lshr i64 %i.bc, 6
  %i.dg = and i64 %i.df, 67108863
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !855
  %i.dj = and i64 %i.bc, 63
  %i.dk = shl nuw i64 1, %i.dj
  %i.dl = and i64 %i.di, %i.dk
  br label %.noexc51

bb.n:                                             ; preds = %bb.l
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dp = load i64, ptr %i.da, align 8, !tbaa !855
  %i.dq = and i64 %i.dp, 1
  br label %.noexc51

bb.p:                                             ; preds = %bb.n
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !1529
  %i.dt = shl nsw i64 %i.bc, 2
  %i.du = getelementptr inbounds i8, ptr %i.ds, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3
  %i.dw = zext i32 %i.dv to i64                   ; 2 uses
  %i.dx = lshr i64 %i.dw, 6
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !855
  %i.ea = and i64 %i.dw, 63
  %i.eb = shl nuw i64 1, %i.ea
  %i.ec = and i64 %i.eb, %i.dz
  br label %.noexc51

.noexc51:                                         ; preds = %bb.p, %bb.o, %bb.m
  %.0.i.i.i.in = phi i64 [ %i.dl, %bb.m ], [ %i.dq, %bb.o ], [ %i.ec, %bb.p ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %.loopexit322, label %.noexc52

.noexc52:                                         ; preds = %.noexc50, %.noexc51
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !1547 ; 2 uses
  %i.ef = trunc nuw i8 %.pre to i1                ; 3 uses
  br i1 %i.ef, label %.noexc53, label %bb.q

bb.q:                                             ; preds = %.noexc52
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !1255
  br label %.noexc53

bb.s:                                             ; preds = %bb.q
  %i.el = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !1529
  %i.en = shl nsw i64 %i.bc, 2
  %i.eo = getelementptr inbounds i8, ptr %i.em, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !3
  br label %.noexc53

.noexc53:                                         ; preds = %bb.s, %bb.r, %.noexc52
  %.0.i.i.i.i70 = phi i32 [ %i.ep, %bb.s ], [ %i.ek, %bb.r ], [ %i.ar, %.noexc52 ]
  %i.eq = sext i32 %.0.i.i.i.i70 to i64
  %i.er = shl nsw i64 %i.eq, 4
  %i.es = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.er
  %.0.copyload.i.i.i.i71 = load i128, ptr %i.es, align 1 ; 2 uses
  %i.et = add nsw i32 %i.av, %i.ar
  %i.eu = icmp eq i32 %i.av, 1
  br i1 %i.eu, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit.thread, label %.noexc55.lr.ph

.noexc55.lr.ph:                                   ; preds = %.noexc53
  %.sroa.0275.0356 = add i32 %i.ar, 1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ay, i64 57
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ay, i64 59 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ez = sext i32 %.sroa.0275.0356 to i64
  br label %.noexc55

.noexc55:                                         ; preds = %.noexc55.lr.ph, %.noexc58
  %indvars.iv389 = phi i64 [ %i.ez, %.noexc55.lr.ph ], [ %indvars.iv.next390, %.noexc58 ] ; 6 uses
  %.0299357 = phi i128 [ %.0.copyload.i.i.i.i71, %.noexc55.lr.ph ], [ %spec.select318, %.noexc58 ]
  br i1 %.not.i.i.i, label %.noexc57, label %bb.t

bb.t:                                             ; preds = %.noexc55
  %i.fa = load i8, ptr %i.ev, align 1, !range !796
  %i.fb = trunc nuw i8 %i.fa to i1
  %or.cond.i.i.i76 = select i1 %i.ef, i1 true, i1 %i.fb
  br i1 %or.cond.i.i.i76, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fc = lshr i64 %indvars.iv389, 6
  %i.fd = and i64 %i.fc, 67108863
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.fd
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !855
  %i.fg = and i64 %indvars.iv389, 63
  %i.fh = shl nuw i64 1, %i.fg
  %i.fi = and i64 %i.ff, %i.fh
  br label %.noexc56

bb.v:                                             ; preds = %bb.t
  %i.fj = load i8, ptr %i.ew, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fl = load i64, ptr %i.da, align 8, !tbaa !855
  %i.fm = and i64 %i.fl, 1
  br label %.noexc56

bb.x:                                             ; preds = %bb.v
  %i.fn = load ptr, ptr %i.ex, align 8, !tbaa !1529
  %i.fo = shl nsw i64 %indvars.iv389, 2
  %i.fp = getelementptr inbounds i8, ptr %i.fn, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !3
  %i.fr = zext i32 %i.fq to i64                   ; 2 uses
  %i.fs = lshr i64 %i.fr, 6
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.fs
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !855
  %i.fv = and i64 %i.fr, 63
  %i.fw = shl nuw i64 1, %i.fv
  %i.fx = and i64 %i.fw, %i.fu
  br label %.noexc56

.noexc56:                                         ; preds = %bb.x, %bb.w, %bb.u
  %.0.i.i.i79.in = phi i64 [ %i.fi, %bb.u ], [ %i.fm, %bb.w ], [ %i.fx, %bb.x ]
  %.0.i.i.i79.not = icmp eq i64 %.0.i.i.i79.in, 0
  br i1 %.0.i.i.i79.not, label %.loopexit322, label %.noexc57

.noexc57:                                         ; preds = %.noexc55, %.noexc56
  %i.fy = trunc nsw i64 %indvars.iv389 to i32
  br i1 %i.ef, label %.noexc58, label %bb.y
end_hunk_2
begin_hunk_3_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
bb.ao:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.ja = load ptr, ptr %4, align 8, !tbaa !1108
  %.not.i101 = icmp eq ptr %i.ja, null
  br i1 %.not.i101, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit102, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit102

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit102: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clImEEDaSP_.exit

bb.aq:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.jb = landingpad { ptr, i32 }
          cleanup
  %i.jc = load ptr, ptr %4, align 8, !tbaa !1108
  %.not.i103 = icmp eq ptr %i.jc, null
  br i1 %.not.i103, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit104, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit104

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit104: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit104, %bb.an
  %.pn.i39 = phi { ptr, i32 } [ %i.jb, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit104 ], [ %i.iz, %bb.an ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.at

common.resume:                                    ; preds = %bb.ah, %bb.ca, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit180, %bb.cl, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit100, %bb.as
  %common.resume.op = phi { ptr, i32 } [ %.pn.i39, %bb.as ], [ %i.ix, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit100 ], [ %.pn.i, %bb.cl ], [ %i.so, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit180 ], [ %i.rf, %bb.ca ], [ %i.ho, %bb.ah ]
  resume { ptr, i32 } %common.resume.op

bb.at:                                            ; preds = %bb.as, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit100
  %i.jd = landingpad { ptr, i32 }
          catch ptr null
  %i.je = extractvalue { ptr, i32 } %i.jd, 0
  call void @__clang_call_terminate(ptr %i.je) #44
  unreachable

bb.au:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clImEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit97, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit102
  %i.jf = add nuw i64 %.0360, 1                   ; 2 uses
  %i.jg = icmp ult i64 %i.jf, %i.p
  br i1 %i.jg, label %bb.c, label %.loopexit324, !llvm.loop !4345

bb.av:                                            ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit
  %.015351 = phi i64 [ %i.j, %.lr.ph ], [ %i.sx, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.jh = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015351, i1 true)
  %i.ji = trunc nuw nsw i64 %i.jh to i32
  %i.jj = or disjoint i32 %i.l, %i.ji             ; 5 uses
  %i.jk = load ptr, ptr %i.m, align 8, !tbaa !4246 ; 2 uses
  %i.jl = load ptr, ptr %i.k, align 8, !tbaa !4309, !nonnull !797, !align !916 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.jm = sext i32 %i.jj to i64                   ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !4310, !nonnull !797, !align !916 ; 4 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 120
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !4306, !nonnull !797, !align !916 ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 58
  %i.js = load i8, ptr %i.jr, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %.noexc18, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 59
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.jw = trunc nuw i8 %i.jv to i1
  br i1 %i.jw, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jq, i64 64
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !1255
  br label %.noexc18

bb.ay:                                            ; preds = %bb.aw
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !1529
  %i.kb = shl nsw i64 %i.jm, 2
  %i.kc = getelementptr inbounds i8, ptr %i.ka, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !3
  br label %.noexc18

.noexc18:                                         ; preds = %bb.ay, %bb.ax, %bb.av
  %.0.i.i106 = phi i32 [ %i.kd, %bb.ay ], [ %i.jy, %bb.ax ], [ %i.jj, %bb.av ]
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jo, i64 136
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !4236
  %i.kg = sext i32 %.0.i.i106 to i64              ; 2 uses
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %i.kg
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !3  ; 5 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jo, i64 144
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !4239
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %i.kg
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !3  ; 9 uses
  %i.kn = icmp eq i32 %i.km, 0
  br i1 %i.kn, label %.loopexit328, label %.noexc23

.noexc23:                                         ; preds = %.noexc18
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jo, i64 152
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !4307, !nonnull !797, !align !916 ; 22 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 56
  %i.kr = load i8, ptr %i.kq, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.ks = trunc nuw i8 %i.kr to i1
  %i.kt = sext i32 %i.ki to i64                   ; 11 uses
  br i1 %i.ks, label %.noexc29, label %.noexc24

.noexc24:                                         ; preds = %.noexc23
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !1547 ; 8 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kp, i64 58
  %i.kx = load i8, ptr %i.kw, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.ky = trunc nuw i8 %i.kx to i1
  br i1 %i.ky, label %.noexc25.thread, label %bb.az

bb.az:                                            ; preds = %.noexc24
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kp, i64 59
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.lb = trunc nuw i8 %i.la to i1
  br i1 %i.lb, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kp, i64 64
  br label %.noexc25

bb.bb:                                            ; preds = %bb.az
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !1529
  %i.lf = shl nsw i64 %i.kt, 2
  %i.lg = getelementptr inbounds i8, ptr %i.le, i64 %i.lf
  br label %.noexc25

.noexc25:                                         ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i117.in = phi ptr [ %i.lg, %bb.bb ], [ %i.lc, %bb.ba ]
  %.0.i.i.i.i.i117 = load i32, ptr %.0.i.i.i.i.i117.in, align 4, !tbaa !3
  %i.lh = sext i32 %.0.i.i.i.i.i117 to i64
  %i.li = shl nsw i64 %i.lh, 4
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.li
  %.0.copyload.i.i.i.i.i118 = load i128, ptr %i.lj, align 1 ; 3 uses
  %i.lk = icmp sgt i32 %i.km, 1
  br i1 %i.lk, label %.noexc26.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc25.thread:                                  ; preds = %.noexc24
  %i.ll = sext i32 %i.ki to i64
  %i.lm = shl nsw i64 %i.ll, 4
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.lm
  %.0.copyload.i.i.i.i.i118427 = load i128, ptr %i.ln, align 1 ; 3 uses
  %i.lo = icmp sgt i32 %i.km, 1
  br i1 %i.lo, label %.noexc26.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc26.lr.ph:                                   ; preds = %.noexc25
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kp, i64 8 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kp, i64 64 ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kp, i64 59
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.lt = trunc nuw i8 %i.ls to i1                ; 3 uses
  %wide.trip.count395 = zext nneg i32 %i.km to i64
  %i.lu = add nsw i64 %wide.trip.count395, -1     ; 3 uses
  %xtraiter479 = and i64 %i.lu, 1
  %i.lv = icmp eq i32 %i.km, 2
  br i1 %i.lv, label %.noexc26.epil.preheader, label %.noexc26.lr.ph.new

.noexc26.lr.ph.new:                               ; preds = %.noexc26.lr.ph
  %unroll_iter483 = and i64 %i.lu, -2
  %invariant.op500 = add i64 1, %i.kt
  br label %.noexc26

.noexc26.us.preheader:                            ; preds = %.noexc25.thread
  %wide.trip.count400 = zext nneg i32 %i.km to i64
  %i.lw = add nsw i64 %wide.trip.count400, -1     ; 3 uses
  %xtraiter485 = and i64 %i.lw, 1
  %i.lx = icmp eq i32 %i.km, 2
  br i1 %i.lx, label %.noexc26.us.epil.preheader, label %.noexc26.us.preheader.new

.noexc26.us.preheader.new:                        ; preds = %.noexc26.us.preheader
  %unroll_iter489 = and i64 %i.lw, -2
  %invariant.op502 = add i64 1, %i.kt
  br label %.noexc26.us

.noexc26.us:                                      ; preds = %.noexc26.us, %.noexc26.us.preheader.new
  %indvars.iv397 = phi i64 [ 1, %.noexc26.us.preheader.new ], [ %indvars.iv.next398.1, %.noexc26.us ] ; 3 uses
  %.0304344.us = phi i128 [ %.0.copyload.i.i.i.i.i118427, %.noexc26.us.preheader.new ], [ %spec.select319.us.1, %.noexc26.us ]
  %niter490 = phi i64 [ 0, %.noexc26.us.preheader.new ], [ %niter490.next.1, %.noexc26.us ]
  %i.ly = add nsw i64 %indvars.iv397, %i.kt
  %i.lz = shl nsw i64 %i.ly, 4
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.lz
  %.0.copyload.i.i.i.i124.us = load i128, ptr %i.ma, align 1
  %spec.select319.us = call i128 @llvm.smin.i128(i128 %.0.copyload.i.i.i.i124.us, i128 %.0304344.us)
  %.reass503 = add i64 %indvars.iv397, %invariant.op502
  %i.mb = shl nsw i64 %.reass503, 4
  %i.mc = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.mb
  %.0.copyload.i.i.i.i124.us.1 = load i128, ptr %i.mc, align 1
  %spec.select319.us.1 = call i128 @llvm.smin.i128(i128 %.0.copyload.i.i.i.i124.us.1, i128 %spec.select319.us) ; 3 uses
  %indvars.iv.next398.1 = add nuw nsw i64 %indvars.iv397, 2 ; 2 uses
  %niter490.next.1 = add i64 %niter490, 2         ; 2 uses
  %niter490.ncmp.1 = icmp eq i64 %niter490.next.1, %unroll_iter489
  br i1 %niter490.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread.loopexit458.unr-lcssa, label %.noexc26.us, !llvm.loop !4314

.noexc26:                                         ; preds = %.noexc27.1, %.noexc26.lr.ph.new
  %indvars.iv392 = phi i64 [ 1, %.noexc26.lr.ph.new ], [ %indvars.iv.next393.1, %.noexc27.1 ] ; 3 uses
  %.0304344 = phi i128 [ %.0.copyload.i.i.i.i.i118, %.noexc26.lr.ph.new ], [ %spec.select319.1, %.noexc27.1 ]
  %niter484 = phi i64 [ 0, %.noexc26.lr.ph.new ], [ %niter484.next.1, %.noexc27.1 ]
  br i1 %i.lt, label %.noexc27, label %bb.bc

bb.bc:                                            ; preds = %.noexc26
  %i.md = add nsw i64 %indvars.iv392, %i.kt
  %i.me = load ptr, ptr %i.lp, align 8, !tbaa !1529
  %i.mf = shl nsw i64 %i.md, 2
  %i.mg = getelementptr inbounds i8, ptr %i.me, i64 %i.mf
  br label %.noexc27

.noexc27:                                         ; preds = %.noexc26, %bb.bc
  %.0.i.i.i.i123.in = phi ptr [ %i.mg, %bb.bc ], [ %i.lq, %.noexc26 ]
  %.0.i.i.i.i123 = load i32, ptr %.0.i.i.i.i123.in, align 4, !tbaa !3
  %i.mh = sext i32 %.0.i.i.i.i123 to i64
  %i.mi = shl nsw i64 %i.mh, 4
  %i.mj = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.mi
  %.0.copyload.i.i.i.i124 = load i128, ptr %i.mj, align 1
  %spec.select319 = call i128 @llvm.smin.i128(i128 %.0.copyload.i.i.i.i124, i128 %.0304344)
  br i1 %i.lt, label %.noexc27.1, label %bb.bd

bb.bd:                                            ; preds = %.noexc27
  %.reass501 = add i64 %indvars.iv392, %invariant.op500
  %i.mk = load ptr, ptr %i.lp, align 8, !tbaa !1529
  %i.ml = shl nsw i64 %.reass501, 2
  %i.mm = getelementptr inbounds i8, ptr %i.mk, i64 %i.ml
  br label %.noexc27.1

.noexc27.1:                                       ; preds = %bb.bd, %.noexc27
  %.0.i.i.i.i123.in.1 = phi ptr [ %i.mm, %bb.bd ], [ %i.lq, %.noexc27 ]
  %.0.i.i.i.i123.1 = load i32, ptr %.0.i.i.i.i123.in.1, align 4, !tbaa !3
  %i.mn = sext i32 %.0.i.i.i.i123.1 to i64
  %i.mo = shl nsw i64 %i.mn, 4
  %i.mp = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.mo
  %.0.copyload.i.i.i.i124.1 = load i128, ptr %i.mp, align 1
  %spec.select319.1 = call i128 @llvm.smin.i128(i128 %.0.copyload.i.i.i.i124.1, i128 %spec.select319) ; 3 uses
  %indvars.iv.next393.1 = add nuw nsw i64 %indvars.iv392, 2 ; 2 uses
  %niter484.next.1 = add i64 %niter484, 2         ; 2 uses
  %niter484.ncmp.1 = icmp eq i64 %niter484.next.1, %unroll_iter483
  br i1 %niter484.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread.loopexit459.unr-lcssa, label %.noexc26, !llvm.loop !4314

.noexc29:                                         ; preds = %.noexc23
  %i.mq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i129 = icmp eq ptr %i.mr, null        ; 2 uses
  %.phi.trans.insert406 = getelementptr inbounds nuw i8, ptr %i.kp, i64 58
  %.pre407 = load i8, ptr %.phi.trans.insert406, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i129, label %.noexc31, label %bb.be

bb.be:                                            ; preds = %.noexc29
  %i.ms = trunc nuw i8 %.pre407 to i1
  %i.mt = getelementptr inbounds nuw i8, ptr %i.kp, i64 57
  %i.mu = load i8, ptr %i.mt, align 1, !range !796
  %i.mv = trunc nuw i8 %i.mu to i1
  %or.cond.i.i.i130 = select i1 %i.ms, i1 true, i1 %i.mv
  br i1 %or.cond.i.i.i130, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.mw = lshr i64 %i.kt, 6
  %i.mx = and i64 %i.mw, 67108863
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %i.mx
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !855
  %i.na = and i64 %i.kt, 63
  %i.nb = shl nuw i64 1, %i.na
  %i.nc = and i64 %i.mz, %i.nb
  br label %.noexc30

bb.bg:                                            ; preds = %bb.be
  %i.nd = getelementptr inbounds nuw i8, ptr %i.kp, i64 59
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.nf = trunc nuw i8 %i.ne to i1
  br i1 %i.nf, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ng = load i64, ptr %i.mr, align 8, !tbaa !855
  %i.nh = and i64 %i.ng, 1
  br label %.noexc30

bb.bi:                                            ; preds = %bb.bg
  %i.ni = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !1529
  %i.nk = shl nsw i64 %i.kt, 2
  %i.nl = getelementptr inbounds i8, ptr %i.nj, i64 %i.nk
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !3
  %i.nn = zext i32 %i.nm to i64                   ; 2 uses
  %i.no = lshr i64 %i.nn, 6
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %i.no
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !855
  %i.nr = and i64 %i.nn, 63
  %i.ns = shl nuw i64 1, %i.nr
  %i.nt = and i64 %i.ns, %i.nq
  br label %.noexc30

.noexc30:                                         ; preds = %bb.bi, %bb.bh, %bb.bf
  %.0.i.i.i133.in = phi i64 [ %i.nc, %bb.bf ], [ %i.nh, %bb.bh ], [ %i.nt, %bb.bi ]
  %.0.i.i.i133.not = icmp eq i64 %.0.i.i.i133.in, 0
  br i1 %.0.i.i.i133.not, label %.loopexit328, label %.noexc31

.noexc31:                                         ; preds = %.noexc29, %.noexc30
  %i.nu = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !1547 ; 2 uses
  %i.nw = trunc nuw i8 %.pre407 to i1             ; 3 uses
  br i1 %i.nw, label %.noexc32, label %bb.bj

bb.bj:                                            ; preds = %.noexc31
  %i.nx = getelementptr inbounds nuw i8, ptr %i.kp, i64 59
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.nz = trunc nuw i8 %i.ny to i1
  br i1 %i.nz, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.oa = getelementptr inbounds nuw i8, ptr %i.kp, i64 64
  %i.ob = load i32, ptr %i.oa, align 8, !tbaa !1255
  br label %.noexc32

bb.bl:                                            ; preds = %bb.bj
  %i.oc = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !1529
  %i.oe = shl nsw i64 %i.kt, 2
  %i.of = getelementptr inbounds i8, ptr %i.od, i64 %i.oe
  %i.og = load i32, ptr %i.of, align 4, !tbaa !3
  br label %.noexc32

.noexc32:                                         ; preds = %bb.bl, %bb.bk, %.noexc31
  %.0.i.i.i.i140 = phi i32 [ %i.og, %bb.bl ], [ %i.ob, %bb.bk ], [ %i.ki, %.noexc31 ]
  %i.oh = sext i32 %.0.i.i.i.i140 to i64
  %i.oi = shl nsw i64 %i.oh, 4
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nv, i64 %i.oi
  %.0.copyload.i.i.i.i141 = load i128, ptr %i.oj, align 1 ; 2 uses
  %i.ok = add nsw i32 %i.km, %i.ki
  %i.ol = icmp eq i32 %i.km, 1
  br i1 %i.ol, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread, label %.noexc34.lr.ph

.noexc34.lr.ph:                                   ; preds = %.noexc32
  %.sroa.0218.0346 = add i32 %i.ki, 1
  %i.om = getelementptr inbounds nuw i8, ptr %i.kp, i64 57
  %i.on = getelementptr inbounds nuw i8, ptr %i.kp, i64 59 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.kp, i64 8 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.kp, i64 64
  %i.oq = sext i32 %.sroa.0218.0346 to i64
  br label %.noexc34

.noexc34:                                         ; preds = %.noexc34.lr.ph, %.noexc37
  %indvars.iv402 = phi i64 [ %i.oq, %.noexc34.lr.ph ], [ %indvars.iv.next403, %.noexc37 ] ; 6 uses
  %.0306347 = phi i128 [ %.0.copyload.i.i.i.i141, %.noexc34.lr.ph ], [ %spec.select320, %.noexc37 ]
  br i1 %.not.i.i.i129, label %.noexc36, label %bb.bm

bb.bm:                                            ; preds = %.noexc34
  %i.or = load i8, ptr %i.om, align 1, !range !796
  %i.os = trunc nuw i8 %i.or to i1
  %or.cond.i.i.i146 = select i1 %i.nw, i1 true, i1 %i.os
  br i1 %or.cond.i.i.i146, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ot = lshr i64 %indvars.iv402, 6
  %i.ou = and i64 %i.ot, 67108863
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %i.ou
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !855
  %i.ox = and i64 %indvars.iv402, 63
  %i.oy = shl nuw i64 1, %i.ox
  %i.oz = and i64 %i.ow, %i.oy
  br label %.noexc35

bb.bo:                                            ; preds = %bb.bm
  %i.pa = load i8, ptr %i.on, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.pb = trunc nuw i8 %i.pa to i1
  br i1 %i.pb, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.pc = load i64, ptr %i.mr, align 8, !tbaa !855
  %i.pd = and i64 %i.pc, 1
  br label %.noexc35

bb.bq:                                            ; preds = %bb.bo
  %i.pe = load ptr, ptr %i.oo, align 8, !tbaa !1529
  %i.pf = shl nsw i64 %indvars.iv402, 2
  %i.pg = getelementptr inbounds i8, ptr %i.pe, i64 %i.pf
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !3
  %i.pi = zext i32 %i.ph to i64                   ; 2 uses
  %i.pj = lshr i64 %i.pi, 6
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %i.pj
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !855
  %i.pm = and i64 %i.pi, 63
  %i.pn = shl nuw i64 1, %i.pm
  %i.po = and i64 %i.pn, %i.pl
  br label %.noexc35

.noexc35:                                         ; preds = %bb.bq, %bb.bp, %bb.bn
  %.0.i.i.i149.in = phi i64 [ %i.oz, %bb.bn ], [ %i.pd, %bb.bp ], [ %i.po, %bb.bq ]
  %.0.i.i.i149.not = icmp eq i64 %.0.i.i.i149.in, 0
  br i1 %.0.i.i.i149.not, label %.loopexit328, label %.noexc36

.noexc36:                                         ; preds = %.noexc34, %.noexc35
  %i.pp = trunc nsw i64 %indvars.iv402 to i32
  br i1 %i.nw, label %.noexc37, label %bb.br
end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_:bb.a
bb.f:                                             ; preds = %.lr.ph197
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i196, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph197, label %.critedge.i.i.i, !llvm.loop !1540

.lr.ph197:                                        ; preds = %bb.e, %bb.f
  %indvars.iv.i196 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i196, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !855
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1540

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !855
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph197, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph197 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i25 = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i25, label %bb.h, label %bb.bb

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1538 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1536 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit134

.lr.ph:                                           ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !4425 ; 2 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !4427, !nonnull !797, !align !916 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.an = sext i32 %i.ag to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit
  %indvars.iv168 = phi i64 [ %i.an, %.lr.ph ], [ %indvars.iv.next169, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !4428, !nonnull !797, !align !916 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !4306, !nonnull !797, !align !916 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 58
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = trunc nsw i64 %indvars.iv168 to i32     ; 3 uses
  br i1 %i.at, label %.noexc5, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 59
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !1255
  br label %.noexc5

bb.l:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1529
  %i.bc = shl nsw i64 %indvars.iv168, 2
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  br label %.noexc5

.noexc5:                                          ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i = phi i32 [ %i.be, %bb.l ], [ %i.az, %bb.k ], [ %i.au, %bb.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 136
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !4236
  %i.bh = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3  ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ao, i64 144
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !4239
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bh
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3  ; 9 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.loopexit132, label %.noexc10

.noexc10:                                         ; preds = %.noexc5
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ao, i64 152
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !4307, !nonnull !797, !align !916 ; 22 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = sext i32 %i.bj to i64                   ; 11 uses
  br i1 %i.bt, label %.noexc16, label %.noexc11

.noexc11:                                         ; preds = %.noexc10
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1547 ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 58
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %.noexc12.thread, label %bb.m

bb.m:                                             ; preds = %.noexc11
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  br label %.noexc12

bb.o:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1529
  %i.cg = shl nsw i64 %i.bu, 2
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 %i.cg
  br label %.noexc12

.noexc12:                                         ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.in = phi ptr [ %i.ch, %bb.o ], [ %i.cd, %bb.n ]
  %.0.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i.in, align 4, !tbaa !3
  %i.ci = sext i32 %.0.i.i.i.i.i to i64
  %i.cj = shl nsw i64 %i.ci, 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cj
  %.0.copyload.i.i.i.i.i = load i128, ptr %i.ck, align 1 ; 3 uses
  %i.cl = icmp sgt i32 %i.bn, 1
  br i1 %i.cl, label %.noexc13.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc12.thread:                                  ; preds = %.noexc11
  %i.cm = sext i32 %i.bj to i64
  %i.cn = shl nsw i64 %i.cm, 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cn
  %.0.copyload.i.i.i.i.i180 = load i128, ptr %i.co, align 1 ; 3 uses
  %i.cp = icmp sgt i32 %i.bn, 1
  br i1 %i.cp, label %.noexc13.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc13.lr.ph:                                   ; preds = %.noexc12
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bq, i64 64 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cu = trunc nuw i8 %i.ct to i1                ; 3 uses
  %wide.trip.count = zext nneg i32 %i.bn to i64
  %i.cv = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.cv, 1
  %i.cw = icmp eq i32 %i.bn, 2
  br i1 %i.cw, label %.noexc13.epil.preheader, label %.noexc13.lr.ph.new

.noexc13.lr.ph.new:                               ; preds = %.noexc13.lr.ph
  %unroll_iter = and i64 %i.cv, -2
  %invariant.op = add i64 1, %i.bu
  br label %.noexc13

.noexc13.us.preheader:                            ; preds = %.noexc12.thread
  %wide.trip.count163 = zext nneg i32 %i.bn to i64
  %i.cx = add nsw i64 %wide.trip.count163, -1     ; 3 uses
  %xtraiter205 = and i64 %i.cx, 1
  %i.cy = icmp eq i32 %i.bn, 2
  br i1 %i.cy, label %.noexc13.us.epil.preheader, label %.noexc13.us.preheader.new

.noexc13.us.preheader.new:                        ; preds = %.noexc13.us.preheader
  %unroll_iter209 = and i64 %i.cx, -2
  %invariant.op214 = add i64 1, %i.bu
  br label %.noexc13.us

.noexc13.us:                                      ; preds = %.noexc13.us, %.noexc13.us.preheader.new
  %indvars.iv160 = phi i64 [ 1, %.noexc13.us.preheader.new ], [ %indvars.iv.next161.1, %.noexc13.us ] ; 3 uses
  %.0121142.us = phi i128 [ %.0.copyload.i.i.i.i.i180, %.noexc13.us.preheader.new ], [ %spec.select.us.1, %.noexc13.us ]
  %niter210 = phi i64 [ 0, %.noexc13.us.preheader.new ], [ %niter210.next.1, %.noexc13.us ]
  %i.cz = add nsw i64 %indvars.iv160, %i.bu
  %i.da = shl nsw i64 %i.cz, 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.da
  %.0.copyload.i.i.i.i.us = load i128, ptr %i.db, align 1
  %spec.select.us = call i128 @llvm.smax.i128(i128 %.0.copyload.i.i.i.i.us, i128 %.0121142.us)
  %.reass215 = add i64 %indvars.iv160, %invariant.op214
  %i.dc = shl nsw i64 %.reass215, 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.dc
  %.0.copyload.i.i.i.i.us.1 = load i128, ptr %i.dd, align 1
  %spec.select.us.1 = call i128 @llvm.smax.i128(i128 %.0.copyload.i.i.i.i.us.1, i128 %spec.select.us) ; 3 uses
  %indvars.iv.next161.1 = add nuw nsw i64 %indvars.iv160, 2 ; 2 uses
  %niter210.next.1 = add i64 %niter210, 2         ; 2 uses
  %niter210.ncmp.1 = icmp eq i64 %niter210.next.1, %unroll_iter209
  br i1 %niter210.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread.loopexit198.unr-lcssa, label %.noexc13.us, !llvm.loop !4431

.noexc13:                                         ; preds = %.noexc14.1, %.noexc13.lr.ph.new
  %indvars.iv = phi i64 [ 1, %.noexc13.lr.ph.new ], [ %indvars.iv.next.1, %.noexc14.1 ] ; 3 uses
  %.0121142 = phi i128 [ %.0.copyload.i.i.i.i.i, %.noexc13.lr.ph.new ], [ %spec.select.1, %.noexc14.1 ]
  %niter = phi i64 [ 0, %.noexc13.lr.ph.new ], [ %niter.next.1, %.noexc14.1 ]
  br i1 %i.cu, label %.noexc14, label %bb.p

bb.p:                                             ; preds = %.noexc13
  %i.de = add nsw i64 %indvars.iv, %i.bu
  %i.df = load ptr, ptr %i.cq, align 8, !tbaa !1529
  %i.dg = shl nsw i64 %i.de, 2
  %i.dh = getelementptr inbounds i8, ptr %i.df, i64 %i.dg
  br label %.noexc14

.noexc14:                                         ; preds = %.noexc13, %bb.p
  %.0.i.i.i.i.in = phi ptr [ %i.dh, %bb.p ], [ %i.cr, %.noexc13 ]
  %.0.i.i.i.i = load i32, ptr %.0.i.i.i.i.in, align 4, !tbaa !3
  %i.di = sext i32 %.0.i.i.i.i to i64
  %i.dj = shl nsw i64 %i.di, 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.dj
  %.0.copyload.i.i.i.i = load i128, ptr %i.dk, align 1
  %spec.select = call i128 @llvm.smax.i128(i128 %.0.copyload.i.i.i.i, i128 %.0121142)
  br i1 %i.cu, label %.noexc14.1, label %bb.q

bb.q:                                             ; preds = %.noexc14
  %.reass = add i64 %indvars.iv, %invariant.op
  %i.dl = load ptr, ptr %i.cq, align 8, !tbaa !1529
  %i.dm = shl nsw i64 %.reass, 2
  %i.dn = getelementptr inbounds i8, ptr %i.dl, i64 %i.dm
  br label %.noexc14.1

.noexc14.1:                                       ; preds = %bb.q, %.noexc14
  %.0.i.i.i.i.in.1 = phi ptr [ %i.dn, %bb.q ], [ %i.cr, %.noexc14 ]
  %.0.i.i.i.i.1 = load i32, ptr %.0.i.i.i.i.in.1, align 4, !tbaa !3
  %i.do = sext i32 %.0.i.i.i.i.1 to i64
  %i.dp = shl nsw i64 %i.do, 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.dp
  %.0.copyload.i.i.i.i.1 = load i128, ptr %i.dq, align 1
  %spec.select.1 = call i128 @llvm.smax.i128(i128 %.0.copyload.i.i.i.i.1, i128 %spec.select) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread.loopexit199.unr-lcssa, label %.noexc13, !llvm.loop !4431

.noexc16:                                         ; preds = %.noexc10
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.ds, null           ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bq, i64 58
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i, label %.noexc18, label %bb.r

bb.r:                                             ; preds = %.noexc16
  %i.dt = trunc nuw i8 %.pre to i1
  %i.du = getelementptr inbounds nuw i8, ptr %i.bq, i64 57
  %i.dv = load i8, ptr %i.du, align 1, !range !796
  %i.dw = trunc nuw i8 %i.dv to i1
  %or.cond.i.i.i = select i1 %i.dt, i1 true, i1 %i.dw
  br i1 %or.cond.i.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dx = lshr i64 %i.bu, 6
  %i.dy = and i64 %i.dx, 67108863
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !855
  %i.eb = and i64 %i.bu, 63
  %i.ec = shl nuw i64 1, %i.eb
  %i.ed = and i64 %i.ea, %i.ec
  br label %.noexc17

bb.t:                                             ; preds = %bb.r
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.eh = load i64, ptr %i.ds, align 8, !tbaa !855
  %i.ei = and i64 %i.eh, 1
  br label %.noexc17

bb.v:                                             ; preds = %bb.t
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !1529
  %i.el = shl nsw i64 %i.bu, 2
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !3
  %i.eo = zext i32 %i.en to i64                   ; 2 uses
  %i.ep = lshr i64 %i.eo, 6
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !855
  %i.es = and i64 %i.eo, 63
  %i.et = shl nuw i64 1, %i.es
  %i.eu = and i64 %i.et, %i.er
  br label %.noexc17

.noexc17:                                         ; preds = %bb.v, %bb.u, %bb.s
  %.0.i.i.i.in = phi i64 [ %i.ed, %bb.s ], [ %i.ei, %bb.u ], [ %i.eu, %bb.v ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %.loopexit132, label %.noexc18

.noexc18:                                         ; preds = %.noexc16, %.noexc17
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !1547 ; 2 uses
  %i.ex = trunc nuw i8 %.pre to i1                ; 3 uses
  br i1 %i.ex, label %.noexc19, label %bb.w

bb.w:                                             ; preds = %.noexc18
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !1255
  br label %.noexc19

bb.y:                                             ; preds = %bb.w
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !1529
  %i.ff = shl nsw i64 %i.bu, 2
  %i.fg = getelementptr inbounds i8, ptr %i.fe, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3
  br label %.noexc19

.noexc19:                                         ; preds = %bb.y, %bb.x, %.noexc18
  %.0.i.i.i.i35 = phi i32 [ %i.fh, %bb.y ], [ %i.fc, %bb.x ], [ %i.bj, %.noexc18 ]
  %i.fi = sext i32 %.0.i.i.i.i35 to i64
  %i.fj = shl nsw i64 %i.fi, 4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.fj
  %.0.copyload.i.i.i.i36 = load i128, ptr %i.fk, align 1 ; 2 uses
  %i.fl = add nsw i32 %i.bn, %i.bj
  %i.fm = icmp eq i32 %i.bn, 1
  br i1 %i.fm, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread, label %.noexc21.lr.ph

.noexc21.lr.ph:                                   ; preds = %.noexc19
  %.sroa.0103.0144 = add i32 %i.bj, 1
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bq, i64 57
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bq, i64 59 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.fr = sext i32 %.sroa.0103.0144 to i64
  br label %.noexc21

.noexc21:                                         ; preds = %.noexc21.lr.ph, %.noexc24
  %indvars.iv165 = phi i64 [ %i.fr, %.noexc21.lr.ph ], [ %indvars.iv.next166, %.noexc24 ] ; 6 uses
  %.0124145 = phi i128 [ %.0.copyload.i.i.i.i36, %.noexc21.lr.ph ], [ %spec.select130, %.noexc24 ]
  br i1 %.not.i.i.i, label %.noexc23, label %bb.z

bb.z:                                             ; preds = %.noexc21
  %i.fs = load i8, ptr %i.fn, align 1, !range !796
  %i.ft = trunc nuw i8 %i.fs to i1
  %or.cond.i.i.i41 = select i1 %i.ex, i1 true, i1 %i.ft
  br i1 %or.cond.i.i.i41, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fu = lshr i64 %indvars.iv165, 6
  %i.fv = and i64 %i.fu, 67108863
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.fv
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !855
  %i.fy = and i64 %indvars.iv165, 63
  %i.fz = shl nuw i64 1, %i.fy
  %i.ga = and i64 %i.fx, %i.fz
  br label %.noexc22

bb.ab:                                            ; preds = %bb.z
  %i.gb = load i8, ptr %i.fo, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gd = load i64, ptr %i.ds, align 8, !tbaa !855
  %i.ge = and i64 %i.gd, 1
  br label %.noexc22

bb.ad:                                            ; preds = %bb.ab
  %i.gf = load ptr, ptr %i.fp, align 8, !tbaa !1529
  %i.gg = shl nsw i64 %indvars.iv165, 2
  %i.gh = getelementptr inbounds i8, ptr %i.gf, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !3
  %i.gj = zext i32 %i.gi to i64                   ; 2 uses
  %i.gk = lshr i64 %i.gj, 6
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.gk
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !855
  %i.gn = and i64 %i.gj, 63
  %i.go = shl nuw i64 1, %i.gn
  %i.gp = and i64 %i.go, %i.gm
  br label %.noexc22

.noexc22:                                         ; preds = %bb.ad, %bb.ac, %bb.aa
  %.0.i.i.i44.in = phi i64 [ %i.ga, %bb.aa ], [ %i.ge, %bb.ac ], [ %i.gp, %bb.ad ]
  %.0.i.i.i44.not = icmp eq i64 %.0.i.i.i44.in, 0
  br i1 %.0.i.i.i44.not, label %.loopexit132, label %.noexc23

.noexc23:                                         ; preds = %.noexc21, %.noexc22
  %i.gq = trunc nsw i64 %indvars.iv165 to i32
  br i1 %i.ex, label %.noexc24, label %bb.ae
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_:bb.a
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS4_10VectorExecEEESC_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSG_EEEE7iterateIJNS4_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !4444

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS4_10VectorExecEEESC_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSG_EEEE7iterateIJNS4_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS4_10VectorExecEEESC_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSG_EEEE7iterateIJNS4_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !4445, !range !796, !noundef !797
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4447
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !855
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit139, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit
  %.0153 = phi i64 [ %i.k, %.preheader ], [ %i.je, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.o = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0153, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 5 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !4425 ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !4427, !nonnull !797, !align !916 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.t = sext i32 %i.q to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !4428, !nonnull !797, !align !916 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !4306, !nonnull !797, !align !916 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 58
  %i.z = load i8, ptr %i.y, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.noexc12, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 59
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1255
  br label %.noexc12

bb.e:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1529
  %i.ai = shl nsw i64 %i.t, 2
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  br label %.noexc12

.noexc12:                                         ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i = phi i32 [ %i.ak, %bb.e ], [ %i.af, %bb.d ], [ %i.q, %bb.b ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !4236
  %i.an = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3  ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !4239
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.an
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3  ; 9 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.loopexit137, label %.noexc17

.noexc17:                                         ; preds = %.noexc12
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !4307, !nonnull !797, !align !916 ; 22 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = sext i32 %i.ap to i64                   ; 11 uses
  br i1 %i.az, label %.noexc23, label %.noexc18

.noexc18:                                         ; preds = %.noexc17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1547 ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 58
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.noexc19.thread, label %bb.f

bb.f:                                             ; preds = %.noexc18
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  br label %.noexc19

bb.h:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1529
  %i.bm = shl nsw i64 %i.ba, 2
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 %i.bm
  br label %.noexc19

.noexc19:                                         ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.in = phi ptr [ %i.bn, %bb.h ], [ %i.bj, %bb.g ]
  %.0.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i.in, align 4, !tbaa !3
  %i.bo = sext i32 %.0.i.i.i.i.i to i64
  %i.bp = shl nsw i64 %i.bo, 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bp
  %.0.copyload.i.i.i.i.i = load i128, ptr %i.bq, align 1 ; 3 uses
  %i.br = icmp sgt i32 %i.at, 1
  br i1 %i.br, label %.noexc20.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc19.thread:                                  ; preds = %.noexc18
  %i.bs = sext i32 %i.ap to i64
  %i.bt = shl nsw i64 %i.bs, 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bt
  %.0.copyload.i.i.i.i.i177 = load i128, ptr %i.bu, align 1 ; 3 uses
  %i.bv = icmp sgt i32 %i.at, 1
  br i1 %i.bv, label %.noexc20.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc20.lr.ph:                                   ; preds = %.noexc19
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 64 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ca = trunc nuw i8 %i.bz to i1                ; 3 uses
  %wide.trip.count = zext nneg i32 %i.at to i64
  %i.cb = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.cb, 1
  %i.cc = icmp eq i32 %i.at, 2
  br i1 %i.cc, label %.noexc20.epil.preheader, label %.noexc20.lr.ph.new

.noexc20.lr.ph.new:                               ; preds = %.noexc20.lr.ph
  %unroll_iter = and i64 %i.cb, -2
  %invariant.op = add i64 1, %i.ba
  br label %.noexc20

.noexc20.us.preheader:                            ; preds = %.noexc19.thread
  %wide.trip.count165 = zext nneg i32 %i.at to i64
  %i.cd = add nsw i64 %wide.trip.count165, -1     ; 3 uses
  %xtraiter199 = and i64 %i.cd, 1
  %i.ce = icmp eq i32 %i.at, 2
  br i1 %i.ce, label %.noexc20.us.epil.preheader, label %.noexc20.us.preheader.new

.noexc20.us.preheader.new:                        ; preds = %.noexc20.us.preheader
  %unroll_iter203 = and i64 %i.cd, -2
  %invariant.op208 = add i64 1, %i.ba
  br label %.noexc20.us

.noexc20.us:                                      ; preds = %.noexc20.us, %.noexc20.us.preheader.new
  %indvars.iv162 = phi i64 [ 1, %.noexc20.us.preheader.new ], [ %indvars.iv.next163.1, %.noexc20.us ] ; 3 uses
  %.0126147.us = phi i128 [ %.0.copyload.i.i.i.i.i177, %.noexc20.us.preheader.new ], [ %spec.select.us.1, %.noexc20.us ]
  %niter204 = phi i64 [ 0, %.noexc20.us.preheader.new ], [ %niter204.next.1, %.noexc20.us ]
  %i.cf = add nsw i64 %indvars.iv162, %i.ba
  %i.cg = shl nsw i64 %i.cf, 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.cg
  %.0.copyload.i.i.i.i.us = load i128, ptr %i.ch, align 1
  %spec.select.us = call i128 @llvm.smax.i128(i128 %.0.copyload.i.i.i.i.us, i128 %.0126147.us)
  %.reass209 = add i64 %indvars.iv162, %invariant.op208
  %i.ci = shl nsw i64 %.reass209, 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ci
  %.0.copyload.i.i.i.i.us.1 = load i128, ptr %i.cj, align 1
  %spec.select.us.1 = call i128 @llvm.smax.i128(i128 %.0.copyload.i.i.i.i.us.1, i128 %spec.select.us) ; 3 uses
  %indvars.iv.next163.1 = add nuw nsw i64 %indvars.iv162, 2 ; 2 uses
  %niter204.next.1 = add i64 %niter204, 2         ; 2 uses
  %niter204.ncmp.1 = icmp eq i64 %niter204.next.1, %unroll_iter203
  br i1 %niter204.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread.loopexit192.unr-lcssa, label %.noexc20.us, !llvm.loop !4431

.noexc20:                                         ; preds = %.noexc21.1, %.noexc20.lr.ph.new
  %indvars.iv = phi i64 [ 1, %.noexc20.lr.ph.new ], [ %indvars.iv.next.1, %.noexc21.1 ] ; 3 uses
  %.0126147 = phi i128 [ %.0.copyload.i.i.i.i.i, %.noexc20.lr.ph.new ], [ %spec.select.1, %.noexc21.1 ]
  %niter = phi i64 [ 0, %.noexc20.lr.ph.new ], [ %niter.next.1, %.noexc21.1 ]
  br i1 %i.ca, label %.noexc21, label %bb.i

bb.i:                                             ; preds = %.noexc20
  %i.ck = add nsw i64 %indvars.iv, %i.ba
  %i.cl = load ptr, ptr %i.bw, align 8, !tbaa !1529
  %i.cm = shl nsw i64 %i.ck, 2
  %i.cn = getelementptr inbounds i8, ptr %i.cl, i64 %i.cm
  br label %.noexc21

.noexc21:                                         ; preds = %.noexc20, %bb.i
  %.0.i.i.i.i.in = phi ptr [ %i.cn, %bb.i ], [ %i.bx, %.noexc20 ]
  %.0.i.i.i.i = load i32, ptr %.0.i.i.i.i.in, align 4, !tbaa !3
  %i.co = sext i32 %.0.i.i.i.i to i64
  %i.cp = shl nsw i64 %i.co, 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.cp
  %.0.copyload.i.i.i.i = load i128, ptr %i.cq, align 1
  %spec.select = call i128 @llvm.smax.i128(i128 %.0.copyload.i.i.i.i, i128 %.0126147)
  br i1 %i.ca, label %.noexc21.1, label %bb.j

bb.j:                                             ; preds = %.noexc21
  %.reass = add i64 %indvars.iv, %invariant.op
  %i.cr = load ptr, ptr %i.bw, align 8, !tbaa !1529
  %i.cs = shl nsw i64 %.reass, 2
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 %i.cs
  br label %.noexc21.1

.noexc21.1:                                       ; preds = %bb.j, %.noexc21
  %.0.i.i.i.i.in.1 = phi ptr [ %i.ct, %bb.j ], [ %i.bx, %.noexc21 ]
  %.0.i.i.i.i.1 = load i32, ptr %.0.i.i.i.i.in.1, align 4, !tbaa !3
  %i.cu = sext i32 %.0.i.i.i.i.1 to i64
  %i.cv = shl nsw i64 %i.cu, 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.cv
  %.0.copyload.i.i.i.i.1 = load i128, ptr %i.cw, align 1
  %spec.select.1 = call i128 @llvm.smax.i128(i128 %.0.copyload.i.i.i.i.1, i128 %spec.select) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread.loopexit193.unr-lcssa, label %.noexc20, !llvm.loop !4431

.noexc23:                                         ; preds = %.noexc17
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.cy, null           ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aw, i64 58
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i, label %.noexc25, label %bb.k

bb.k:                                             ; preds = %.noexc23
  %i.cz = trunc nuw i8 %.pre to i1
  %i.da = getelementptr inbounds nuw i8, ptr %i.aw, i64 57
  %i.db = load i8, ptr %i.da, align 1, !range !796
  %i.dc = trunc nuw i8 %i.db to i1
  %or.cond.i.i.i = select i1 %i.cz, i1 true, i1 %i.dc
  br i1 %or.cond.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dd = lshr i64 %i.ba, 6
  %i.de = and i64 %i.dd, 67108863
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !855
  %i.dh = and i64 %i.ba, 63
  %i.di = shl nuw i64 1, %i.dh
  %i.dj = and i64 %i.dg, %i.di
  br label %.noexc24

bb.m:                                             ; preds = %bb.k
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dn = load i64, ptr %i.cy, align 8, !tbaa !855
  %i.do = and i64 %i.dn, 1
  br label %.noexc24

bb.o:                                             ; preds = %bb.m
  %i.dp = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1529
  %i.dr = shl nsw i64 %i.ba, 2
  %i.ds = getelementptr inbounds i8, ptr %i.dq, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !3
  %i.du = zext i32 %i.dt to i64                   ; 2 uses
  %i.dv = lshr i64 %i.du, 6
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dv
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !855
  %i.dy = and i64 %i.du, 63
  %i.dz = shl nuw i64 1, %i.dy
  %i.ea = and i64 %i.dz, %i.dx
  br label %.noexc24

.noexc24:                                         ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i.i.in = phi i64 [ %i.dj, %bb.l ], [ %i.do, %bb.n ], [ %i.ea, %bb.o ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %.loopexit137, label %.noexc25

.noexc25:                                         ; preds = %.noexc23, %.noexc24
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !1547 ; 2 uses
  %i.ed = trunc nuw i8 %.pre to i1                ; 3 uses
  br i1 %i.ed, label %.noexc26, label %bb.p

bb.p:                                             ; preds = %.noexc25
  %i.ee = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eh = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !1255
  br label %.noexc26

bb.r:                                             ; preds = %bb.p
  %i.ej = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !1529
  %i.el = shl nsw i64 %i.ba, 2
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !3
  br label %.noexc26

.noexc26:                                         ; preds = %bb.r, %bb.q, %.noexc25
  %.0.i.i.i.i40 = phi i32 [ %i.en, %bb.r ], [ %i.ei, %bb.q ], [ %i.ap, %.noexc25 ]
  %i.eo = sext i32 %.0.i.i.i.i40 to i64
  %i.ep = shl nsw i64 %i.eo, 4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ep
  %.0.copyload.i.i.i.i41 = load i128, ptr %i.eq, align 1 ; 2 uses
  %i.er = add nsw i32 %i.at, %i.ap
  %i.es = icmp eq i32 %i.at, 1
  br i1 %i.es, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread, label %.noexc28.lr.ph

.noexc28.lr.ph:                                   ; preds = %.noexc26
  %.sroa.0108.0149 = add i32 %i.ap, 1
  %i.et = getelementptr inbounds nuw i8, ptr %i.aw, i64 57
  %i.eu = getelementptr inbounds nuw i8, ptr %i.aw, i64 59 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.ex = sext i32 %.sroa.0108.0149 to i64
  br label %.noexc28

.noexc28:                                         ; preds = %.noexc28.lr.ph, %.noexc31
  %indvars.iv167 = phi i64 [ %i.ex, %.noexc28.lr.ph ], [ %indvars.iv.next168, %.noexc31 ] ; 6 uses
  %.0129150 = phi i128 [ %.0.copyload.i.i.i.i41, %.noexc28.lr.ph ], [ %spec.select135, %.noexc31 ]
  br i1 %.not.i.i.i, label %.noexc30, label %bb.s

bb.s:                                             ; preds = %.noexc28
  %i.ey = load i8, ptr %i.et, align 1, !range !796
  %i.ez = trunc nuw i8 %i.ey to i1
  %or.cond.i.i.i46 = select i1 %i.ed, i1 true, i1 %i.ez
  br i1 %or.cond.i.i.i46, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fa = lshr i64 %indvars.iv167, 6
  %i.fb = and i64 %i.fa, 67108863
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !855
  %i.fe = and i64 %indvars.iv167, 63
  %i.ff = shl nuw i64 1, %i.fe
  %i.fg = and i64 %i.fd, %i.ff
  br label %.noexc29

bb.u:                                             ; preds = %bb.s
  %i.fh = load i8, ptr %i.eu, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fj = load i64, ptr %i.cy, align 8, !tbaa !855
  %i.fk = and i64 %i.fj, 1
  br label %.noexc29

bb.w:                                             ; preds = %bb.u
  %i.fl = load ptr, ptr %i.ev, align 8, !tbaa !1529
  %i.fm = shl nsw i64 %indvars.iv167, 2
  %i.fn = getelementptr inbounds i8, ptr %i.fl, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !3
  %i.fp = zext i32 %i.fo to i64                   ; 2 uses
  %i.fq = lshr i64 %i.fp, 6
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.fq
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !855
  %i.ft = and i64 %i.fp, 63
  %i.fu = shl nuw i64 1, %i.ft
  %i.fv = and i64 %i.fu, %i.fs
  br label %.noexc29

.noexc29:                                         ; preds = %bb.w, %bb.v, %bb.t
  %.0.i.i.i49.in = phi i64 [ %i.fg, %bb.t ], [ %i.fk, %bb.v ], [ %i.fv, %bb.w ]
  %.0.i.i.i49.not = icmp eq i64 %.0.i.i.i49.in, 0
  br i1 %.0.i.i.i49.not, label %.loopexit137, label %.noexc30

.noexc30:                                         ; preds = %.noexc28, %.noexc29
  %i.fw = trunc nsw i64 %indvars.iv167 to i32
  br i1 %i.ed, label %.noexc31, label %bb.x
end_hunk_5
begin_hunk_6_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim:bb.a
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit67, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit72
  %i.jd = add i64 %.0153, -1
  %i.je = and i64 %i.jd, %.0153                   ; 2 uses
  %.not10 = icmp eq i64 %i.je, 0
  br i1 %.not10, label %.loopexit139, label %bb.b, !llvm.loop !4453

.loopexit139:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %5 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !4454, !range !796, !noundef !797
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4456
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !855
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit324
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.av

bb.b:                                             ; preds = %bb.a
  %i.n = shl i32 %1, 6                            ; 3 uses
  %i.o = add i32 %i.n, 64
  %i.p = sext i32 %i.o to i64
  %.not365 = icmp eq i32 %i.n, -64
  br i1 %.not365, label %.loopexit324, label %.lr.ph364

.lr.ph364:                                        ; preds = %bb.b
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph364, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clImEEDaSP_.exit
  %.0360 = phi i64 [ %i.q, %.lr.ph364 ], [ %i.jf, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clImEEDaSP_.exit ] ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !4425 ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !4427, !nonnull !797, !align !916 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !4428, !nonnull !797, !align !916 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !4306, !nonnull !797, !align !916 ; 4 uses
  %i.z = trunc i64 %.0360 to i32                  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 58
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.noexc43, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 59
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !1255
  br label %.noexc43

bb.f:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1529
  %sext.i = shl i64 %.0360, 32
  %i.ak = ashr exact i64 %sext.i, 30
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  br label %.noexc43

.noexc43:                                         ; preds = %bb.f, %bb.e, %bb.c
  %.0.i.i61 = phi i32 [ %i.am, %bb.f ], [ %i.ah, %bb.e ], [ %i.z, %bb.c ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !4236
  %i.ap = sext i32 %.0.i.i61 to i64               ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3  ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !4239
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ap
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3  ; 9 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.loopexit322, label %.noexc44

.noexc44:                                         ; preds = %.noexc43
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !4307, !nonnull !797, !align !916 ; 22 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = sext i32 %i.ar to i64                   ; 11 uses
  br i1 %i.bb, label %.noexc50, label %.noexc45

.noexc45:                                         ; preds = %.noexc44
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1547 ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 58
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %.noexc46.thread, label %bb.g

bb.g:                                             ; preds = %.noexc45
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  br label %.noexc46

bb.i:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1529
  %i.bo = shl nsw i64 %i.bc, 2
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 %i.bo
  br label %.noexc46

.noexc46:                                         ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.in = phi ptr [ %i.bp, %bb.i ], [ %i.bl, %bb.h ]
  %.0.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i.in, align 4, !tbaa !3
  %i.bq = sext i32 %.0.i.i.i.i.i to i64
  %i.br = shl nsw i64 %i.bq, 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.br
  %.0.copyload.i.i.i.i.i = load i128, ptr %i.bs, align 1 ; 3 uses
  %i.bt = icmp sgt i32 %i.av, 1
  br i1 %i.bt, label %.noexc47.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit.thread

.noexc46.thread:                                  ; preds = %.noexc45
  %i.bu = sext i32 %i.ar to i64
  %i.bv = shl nsw i64 %i.bu, 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bv
  %.0.copyload.i.i.i.i.i421 = load i128, ptr %i.bw, align 1 ; 3 uses
  %i.bx = icmp sgt i32 %i.av, 1
  br i1 %i.bx, label %.noexc47.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit.thread

.noexc47.lr.ph:                                   ; preds = %.noexc46
  %i.by = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ay, i64 64 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cc = trunc nuw i8 %i.cb to i1                ; 3 uses
  %wide.trip.count = zext nneg i32 %i.av to i64
  %i.cd = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.cd, 1
  %i.ce = icmp eq i32 %i.av, 2
  br i1 %i.ce, label %.noexc47.epil.preheader, label %.noexc47.lr.ph.new

.noexc47.lr.ph.new:                               ; preds = %.noexc47.lr.ph
  %unroll_iter = and i64 %i.cd, -2
  %invariant.op = add i64 1, %i.bc
  br label %.noexc47

.noexc47.us.preheader:                            ; preds = %.noexc46.thread
  %wide.trip.count387 = zext nneg i32 %i.av to i64
  %i.cf = add nsw i64 %wide.trip.count387, -1     ; 3 uses
  %xtraiter473 = and i64 %i.cf, 1
  %i.cg = icmp eq i32 %i.av, 2
  br i1 %i.cg, label %.noexc47.us.epil.preheader, label %.noexc47.us.preheader.new

.noexc47.us.preheader.new:                        ; preds = %.noexc47.us.preheader
  %unroll_iter477 = and i64 %i.cf, -2
  %invariant.op498 = add i64 1, %i.bc
  br label %.noexc47.us

.noexc47.us:                                      ; preds = %.noexc47.us, %.noexc47.us.preheader.new
  %indvars.iv384 = phi i64 [ 1, %.noexc47.us.preheader.new ], [ %indvars.iv.next385.1, %.noexc47.us ] ; 3 uses
  %.0296352.us = phi i128 [ %.0.copyload.i.i.i.i.i421, %.noexc47.us.preheader.new ], [ %spec.select.us.1, %.noexc47.us ]
  %niter478 = phi i64 [ 0, %.noexc47.us.preheader.new ], [ %niter478.next.1, %.noexc47.us ]
  %i.ch = add nsw i64 %indvars.iv384, %i.bc
  %i.ci = shl nsw i64 %i.ch, 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ci
  %.0.copyload.i.i.i.i.us = load i128, ptr %i.cj, align 1
  %spec.select.us = call i128 @llvm.smax.i128(i128 %.0.copyload.i.i.i.i.us, i128 %.0296352.us)
  %.reass499 = add i64 %indvars.iv384, %invariant.op498
  %i.ck = shl nsw i64 %.reass499, 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ck
  %.0.copyload.i.i.i.i.us.1 = load i128, ptr %i.cl, align 1
  %spec.select.us.1 = call i128 @llvm.smax.i128(i128 %.0.copyload.i.i.i.i.us.1, i128 %spec.select.us) ; 3 uses
  %indvars.iv.next385.1 = add nuw nsw i64 %indvars.iv384, 2 ; 2 uses
  %niter478.next.1 = add i64 %niter478, 2         ; 2 uses
  %niter478.ncmp.1 = icmp eq i64 %niter478.next.1, %unroll_iter477
  br i1 %niter478.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit.thread.loopexit463.unr-lcssa, label %.noexc47.us, !llvm.loop !4431

.noexc47:                                         ; preds = %.noexc48.1, %.noexc47.lr.ph.new
  %indvars.iv = phi i64 [ 1, %.noexc47.lr.ph.new ], [ %indvars.iv.next.1, %.noexc48.1 ] ; 3 uses
  %.0296352 = phi i128 [ %.0.copyload.i.i.i.i.i, %.noexc47.lr.ph.new ], [ %spec.select.1, %.noexc48.1 ]
  %niter = phi i64 [ 0, %.noexc47.lr.ph.new ], [ %niter.next.1, %.noexc48.1 ]
  br i1 %i.cc, label %.noexc48, label %bb.j

bb.j:                                             ; preds = %.noexc47
  %i.cm = add nsw i64 %indvars.iv, %i.bc
  %i.cn = load ptr, ptr %i.by, align 8, !tbaa !1529
  %i.co = shl nsw i64 %i.cm, 2
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 %i.co
  br label %.noexc48

.noexc48:                                         ; preds = %.noexc47, %bb.j
  %.0.i.i.i.i.in = phi ptr [ %i.cp, %bb.j ], [ %i.bz, %.noexc47 ]
  %.0.i.i.i.i = load i32, ptr %.0.i.i.i.i.in, align 4, !tbaa !3
  %i.cq = sext i32 %.0.i.i.i.i to i64
  %i.cr = shl nsw i64 %i.cq, 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cr
  %.0.copyload.i.i.i.i = load i128, ptr %i.cs, align 1
  %spec.select = call i128 @llvm.smax.i128(i128 %.0.copyload.i.i.i.i, i128 %.0296352)
  br i1 %i.cc, label %.noexc48.1, label %bb.k

bb.k:                                             ; preds = %.noexc48
  %.reass = add i64 %indvars.iv, %invariant.op
  %i.ct = load ptr, ptr %i.by, align 8, !tbaa !1529
  %i.cu = shl nsw i64 %.reass, 2
  %i.cv = getelementptr inbounds i8, ptr %i.ct, i64 %i.cu
  br label %.noexc48.1

.noexc48.1:                                       ; preds = %bb.k, %.noexc48
  %.0.i.i.i.i.in.1 = phi ptr [ %i.cv, %bb.k ], [ %i.bz, %.noexc48 ]
  %.0.i.i.i.i.1 = load i32, ptr %.0.i.i.i.i.in.1, align 4, !tbaa !3
  %i.cw = sext i32 %.0.i.i.i.i.1 to i64
  %i.cx = shl nsw i64 %i.cw, 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cx
  %.0.copyload.i.i.i.i.1 = load i128, ptr %i.cy, align 1
  %spec.select.1 = call i128 @llvm.smax.i128(i128 %.0.copyload.i.i.i.i.1, i128 %spec.select) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit.thread.loopexit464.unr-lcssa, label %.noexc47, !llvm.loop !4431

.noexc50:                                         ; preds = %.noexc44
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.da, null           ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ay, i64 58
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i, label %.noexc52, label %bb.l

bb.l:                                             ; preds = %.noexc50
  %i.db = trunc nuw i8 %.pre to i1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ay, i64 57
  %i.dd = load i8, ptr %i.dc, align 1, !range !796
  %i.de = trunc nuw i8 %i.dd to i1
  %or.cond.i.i.i = select i1 %i.db, i1 true, i1 %i.de
  br i1 %or.cond.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.df = lshr i64 %i.bc, 6
  %i.dg = and i64 %i.df, 67108863
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !855
  %i.dj = and i64 %i.bc, 63
  %i.dk = shl nuw i64 1, %i.dj
  %i.dl = and i64 %i.di, %i.dk
  br label %.noexc51

bb.n:                                             ; preds = %bb.l
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dp = load i64, ptr %i.da, align 8, !tbaa !855
  %i.dq = and i64 %i.dp, 1
  br label %.noexc51

bb.p:                                             ; preds = %bb.n
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !1529
  %i.dt = shl nsw i64 %i.bc, 2
  %i.du = getelementptr inbounds i8, ptr %i.ds, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3
  %i.dw = zext i32 %i.dv to i64                   ; 2 uses
  %i.dx = lshr i64 %i.dw, 6
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !855
  %i.ea = and i64 %i.dw, 63
  %i.eb = shl nuw i64 1, %i.ea
  %i.ec = and i64 %i.eb, %i.dz
  br label %.noexc51

.noexc51:                                         ; preds = %bb.p, %bb.o, %bb.m
  %.0.i.i.i.in = phi i64 [ %i.dl, %bb.m ], [ %i.dq, %bb.o ], [ %i.ec, %bb.p ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %.loopexit322, label %.noexc52

.noexc52:                                         ; preds = %.noexc50, %.noexc51
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !1547 ; 2 uses
  %i.ef = trunc nuw i8 %.pre to i1                ; 3 uses
  br i1 %i.ef, label %.noexc53, label %bb.q

bb.q:                                             ; preds = %.noexc52
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !1255
  br label %.noexc53

bb.s:                                             ; preds = %bb.q
  %i.el = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !1529
  %i.en = shl nsw i64 %i.bc, 2
  %i.eo = getelementptr inbounds i8, ptr %i.em, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !3
  br label %.noexc53

.noexc53:                                         ; preds = %bb.s, %bb.r, %.noexc52
  %.0.i.i.i.i70 = phi i32 [ %i.ep, %bb.s ], [ %i.ek, %bb.r ], [ %i.ar, %.noexc52 ]
  %i.eq = sext i32 %.0.i.i.i.i70 to i64
  %i.er = shl nsw i64 %i.eq, 4
  %i.es = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.er
  %.0.copyload.i.i.i.i71 = load i128, ptr %i.es, align 1 ; 2 uses
  %i.et = add nsw i32 %i.av, %i.ar
  %i.eu = icmp eq i32 %i.av, 1
  br i1 %i.eu, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit.thread, label %.noexc55.lr.ph

.noexc55.lr.ph:                                   ; preds = %.noexc53
  %.sroa.0275.0356 = add i32 %i.ar, 1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ay, i64 57
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ay, i64 59 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ez = sext i32 %.sroa.0275.0356 to i64
  br label %.noexc55

.noexc55:                                         ; preds = %.noexc55.lr.ph, %.noexc58
  %indvars.iv389 = phi i64 [ %i.ez, %.noexc55.lr.ph ], [ %indvars.iv.next390, %.noexc58 ] ; 6 uses
  %.0299357 = phi i128 [ %.0.copyload.i.i.i.i71, %.noexc55.lr.ph ], [ %spec.select318, %.noexc58 ]
  br i1 %.not.i.i.i, label %.noexc57, label %bb.t

bb.t:                                             ; preds = %.noexc55
  %i.fa = load i8, ptr %i.ev, align 1, !range !796
  %i.fb = trunc nuw i8 %i.fa to i1
  %or.cond.i.i.i76 = select i1 %i.ef, i1 true, i1 %i.fb
  br i1 %or.cond.i.i.i76, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fc = lshr i64 %indvars.iv389, 6
  %i.fd = and i64 %i.fc, 67108863
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.fd
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !855
  %i.fg = and i64 %indvars.iv389, 63
  %i.fh = shl nuw i64 1, %i.fg
  %i.fi = and i64 %i.ff, %i.fh
  br label %.noexc56

bb.v:                                             ; preds = %bb.t
  %i.fj = load i8, ptr %i.ew, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fl = load i64, ptr %i.da, align 8, !tbaa !855
  %i.fm = and i64 %i.fl, 1
  br label %.noexc56

bb.x:                                             ; preds = %bb.v
  %i.fn = load ptr, ptr %i.ex, align 8, !tbaa !1529
  %i.fo = shl nsw i64 %indvars.iv389, 2
  %i.fp = getelementptr inbounds i8, ptr %i.fn, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !3
  %i.fr = zext i32 %i.fq to i64                   ; 2 uses
  %i.fs = lshr i64 %i.fr, 6
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.fs
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !855
  %i.fv = and i64 %i.fr, 63
  %i.fw = shl nuw i64 1, %i.fv
  %i.fx = and i64 %i.fw, %i.fu
  br label %.noexc56

.noexc56:                                         ; preds = %bb.x, %bb.w, %bb.u
  %.0.i.i.i79.in = phi i64 [ %i.fi, %bb.u ], [ %i.fm, %bb.w ], [ %i.fx, %bb.x ]
  %.0.i.i.i79.not = icmp eq i64 %.0.i.i.i79.in, 0
  br i1 %.0.i.i.i79.not, label %.loopexit322, label %.noexc57

.noexc57:                                         ; preds = %.noexc55, %.noexc56
  %i.fy = trunc nsw i64 %indvars.iv389 to i32
  br i1 %i.ef, label %.noexc58, label %bb.y
end_hunk_6
begin_hunk_7_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
bb.ao:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.ja = load ptr, ptr %4, align 8, !tbaa !1108
  %.not.i101 = icmp eq ptr %i.ja, null
  br i1 %.not.i101, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit102, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit102

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit102: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clImEEDaSP_.exit

bb.aq:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.jb = landingpad { ptr, i32 }
          cleanup
  %i.jc = load ptr, ptr %4, align 8, !tbaa !1108
  %.not.i103 = icmp eq ptr %i.jc, null
  br i1 %.not.i103, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit104, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit104

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit104: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit104, %bb.an
  %.pn.i39 = phi { ptr, i32 } [ %i.jb, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit104 ], [ %i.iz, %bb.an ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.at

common.resume:                                    ; preds = %bb.ah, %bb.ca, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit180, %bb.cl, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit100, %bb.as
  %common.resume.op = phi { ptr, i32 } [ %.pn.i39, %bb.as ], [ %i.ix, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit100 ], [ %.pn.i, %bb.cl ], [ %i.so, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit180 ], [ %i.rf, %bb.ca ], [ %i.ho, %bb.ah ]
  resume { ptr, i32 } %common.resume.op

bb.at:                                            ; preds = %bb.as, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit100
  %i.jd = landingpad { ptr, i32 }
          catch ptr null
  %i.je = extractvalue { ptr, i32 } %i.jd, 0
  call void @__clang_call_terminate(ptr %i.je) #44
  unreachable

bb.au:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clImEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit97, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit102
  %i.jf = add nuw i64 %.0360, 1                   ; 2 uses
  %i.jg = icmp ult i64 %i.jf, %i.p
  br i1 %i.jg, label %bb.c, label %.loopexit324, !llvm.loop !4462

bb.av:                                            ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit
  %.015351 = phi i64 [ %i.j, %.lr.ph ], [ %i.sx, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.jh = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015351, i1 true)
  %i.ji = trunc nuw nsw i64 %i.jh to i32
  %i.jj = or disjoint i32 %i.l, %i.ji             ; 5 uses
  %i.jk = load ptr, ptr %i.m, align 8, !tbaa !4425 ; 2 uses
  %i.jl = load ptr, ptr %i.k, align 8, !tbaa !4427, !nonnull !797, !align !916 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.jm = sext i32 %i.jj to i64                   ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !4428, !nonnull !797, !align !916 ; 4 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 120
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !4306, !nonnull !797, !align !916 ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 58
  %i.js = load i8, ptr %i.jr, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %.noexc18, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 59
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.jw = trunc nuw i8 %i.jv to i1
  br i1 %i.jw, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jq, i64 64
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !1255
  br label %.noexc18

bb.ay:                                            ; preds = %bb.aw
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !1529
  %i.kb = shl nsw i64 %i.jm, 2
  %i.kc = getelementptr inbounds i8, ptr %i.ka, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !3
  br label %.noexc18

.noexc18:                                         ; preds = %bb.ay, %bb.ax, %bb.av
  %.0.i.i106 = phi i32 [ %i.kd, %bb.ay ], [ %i.jy, %bb.ax ], [ %i.jj, %bb.av ]
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jo, i64 136
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !4236
  %i.kg = sext i32 %.0.i.i106 to i64              ; 2 uses
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %i.kg
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !3  ; 5 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jo, i64 144
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !4239
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %i.kg
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !3  ; 9 uses
  %i.kn = icmp eq i32 %i.km, 0
  br i1 %i.kn, label %.loopexit328, label %.noexc23

.noexc23:                                         ; preds = %.noexc18
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jo, i64 152
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !4307, !nonnull !797, !align !916 ; 22 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 56
  %i.kr = load i8, ptr %i.kq, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.ks = trunc nuw i8 %i.kr to i1
  %i.kt = sext i32 %i.ki to i64                   ; 11 uses
  br i1 %i.ks, label %.noexc29, label %.noexc24

.noexc24:                                         ; preds = %.noexc23
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !1547 ; 8 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kp, i64 58
  %i.kx = load i8, ptr %i.kw, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.ky = trunc nuw i8 %i.kx to i1
  br i1 %i.ky, label %.noexc25.thread, label %bb.az

bb.az:                                            ; preds = %.noexc24
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kp, i64 59
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.lb = trunc nuw i8 %i.la to i1
  br i1 %i.lb, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kp, i64 64
  br label %.noexc25

bb.bb:                                            ; preds = %bb.az
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !1529
  %i.lf = shl nsw i64 %i.kt, 2
  %i.lg = getelementptr inbounds i8, ptr %i.le, i64 %i.lf
  br label %.noexc25

.noexc25:                                         ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i117.in = phi ptr [ %i.lg, %bb.bb ], [ %i.lc, %bb.ba ]
  %.0.i.i.i.i.i117 = load i32, ptr %.0.i.i.i.i.i117.in, align 4, !tbaa !3
  %i.lh = sext i32 %.0.i.i.i.i.i117 to i64
  %i.li = shl nsw i64 %i.lh, 4
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.li
  %.0.copyload.i.i.i.i.i118 = load i128, ptr %i.lj, align 1 ; 3 uses
  %i.lk = icmp sgt i32 %i.km, 1
  br i1 %i.lk, label %.noexc26.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc25.thread:                                  ; preds = %.noexc24
  %i.ll = sext i32 %i.ki to i64
  %i.lm = shl nsw i64 %i.ll, 4
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.lm
  %.0.copyload.i.i.i.i.i118427 = load i128, ptr %i.ln, align 1 ; 3 uses
  %i.lo = icmp sgt i32 %i.km, 1
  br i1 %i.lo, label %.noexc26.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc26.lr.ph:                                   ; preds = %.noexc25
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kp, i64 8 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kp, i64 64 ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kp, i64 59
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.lt = trunc nuw i8 %i.ls to i1                ; 3 uses
  %wide.trip.count395 = zext nneg i32 %i.km to i64
  %i.lu = add nsw i64 %wide.trip.count395, -1     ; 3 uses
  %xtraiter479 = and i64 %i.lu, 1
  %i.lv = icmp eq i32 %i.km, 2
  br i1 %i.lv, label %.noexc26.epil.preheader, label %.noexc26.lr.ph.new

.noexc26.lr.ph.new:                               ; preds = %.noexc26.lr.ph
  %unroll_iter483 = and i64 %i.lu, -2
  %invariant.op500 = add i64 1, %i.kt
  br label %.noexc26

.noexc26.us.preheader:                            ; preds = %.noexc25.thread
  %wide.trip.count400 = zext nneg i32 %i.km to i64
  %i.lw = add nsw i64 %wide.trip.count400, -1     ; 3 uses
  %xtraiter485 = and i64 %i.lw, 1
  %i.lx = icmp eq i32 %i.km, 2
  br i1 %i.lx, label %.noexc26.us.epil.preheader, label %.noexc26.us.preheader.new

.noexc26.us.preheader.new:                        ; preds = %.noexc26.us.preheader
  %unroll_iter489 = and i64 %i.lw, -2
  %invariant.op502 = add i64 1, %i.kt
  br label %.noexc26.us

.noexc26.us:                                      ; preds = %.noexc26.us, %.noexc26.us.preheader.new
  %indvars.iv397 = phi i64 [ 1, %.noexc26.us.preheader.new ], [ %indvars.iv.next398.1, %.noexc26.us ] ; 3 uses
  %.0304344.us = phi i128 [ %.0.copyload.i.i.i.i.i118427, %.noexc26.us.preheader.new ], [ %spec.select319.us.1, %.noexc26.us ]
  %niter490 = phi i64 [ 0, %.noexc26.us.preheader.new ], [ %niter490.next.1, %.noexc26.us ]
  %i.ly = add nsw i64 %indvars.iv397, %i.kt
  %i.lz = shl nsw i64 %i.ly, 4
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.lz
  %.0.copyload.i.i.i.i124.us = load i128, ptr %i.ma, align 1
  %spec.select319.us = call i128 @llvm.smax.i128(i128 %.0.copyload.i.i.i.i124.us, i128 %.0304344.us)
  %.reass503 = add i64 %indvars.iv397, %invariant.op502
  %i.mb = shl nsw i64 %.reass503, 4
  %i.mc = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.mb
  %.0.copyload.i.i.i.i124.us.1 = load i128, ptr %i.mc, align 1
  %spec.select319.us.1 = call i128 @llvm.smax.i128(i128 %.0.copyload.i.i.i.i124.us.1, i128 %spec.select319.us) ; 3 uses
  %indvars.iv.next398.1 = add nuw nsw i64 %indvars.iv397, 2 ; 2 uses
  %niter490.next.1 = add i64 %niter490, 2         ; 2 uses
  %niter490.ncmp.1 = icmp eq i64 %niter490.next.1, %unroll_iter489
  br i1 %niter490.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread.loopexit458.unr-lcssa, label %.noexc26.us, !llvm.loop !4431

.noexc26:                                         ; preds = %.noexc27.1, %.noexc26.lr.ph.new
  %indvars.iv392 = phi i64 [ 1, %.noexc26.lr.ph.new ], [ %indvars.iv.next393.1, %.noexc27.1 ] ; 3 uses
  %.0304344 = phi i128 [ %.0.copyload.i.i.i.i.i118, %.noexc26.lr.ph.new ], [ %spec.select319.1, %.noexc27.1 ]
  %niter484 = phi i64 [ 0, %.noexc26.lr.ph.new ], [ %niter484.next.1, %.noexc27.1 ]
  br i1 %i.lt, label %.noexc27, label %bb.bc

bb.bc:                                            ; preds = %.noexc26
  %i.md = add nsw i64 %indvars.iv392, %i.kt
  %i.me = load ptr, ptr %i.lp, align 8, !tbaa !1529
  %i.mf = shl nsw i64 %i.md, 2
  %i.mg = getelementptr inbounds i8, ptr %i.me, i64 %i.mf
  br label %.noexc27

.noexc27:                                         ; preds = %.noexc26, %bb.bc
  %.0.i.i.i.i123.in = phi ptr [ %i.mg, %bb.bc ], [ %i.lq, %.noexc26 ]
  %.0.i.i.i.i123 = load i32, ptr %.0.i.i.i.i123.in, align 4, !tbaa !3
  %i.mh = sext i32 %.0.i.i.i.i123 to i64
  %i.mi = shl nsw i64 %i.mh, 4
  %i.mj = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.mi
  %.0.copyload.i.i.i.i124 = load i128, ptr %i.mj, align 1
  %spec.select319 = call i128 @llvm.smax.i128(i128 %.0.copyload.i.i.i.i124, i128 %.0304344)
  br i1 %i.lt, label %.noexc27.1, label %bb.bd

bb.bd:                                            ; preds = %.noexc27
  %.reass501 = add i64 %indvars.iv392, %invariant.op500
  %i.mk = load ptr, ptr %i.lp, align 8, !tbaa !1529
  %i.ml = shl nsw i64 %.reass501, 2
  %i.mm = getelementptr inbounds i8, ptr %i.mk, i64 %i.ml
  br label %.noexc27.1

.noexc27.1:                                       ; preds = %bb.bd, %.noexc27
  %.0.i.i.i.i123.in.1 = phi ptr [ %i.mm, %bb.bd ], [ %i.lq, %.noexc27 ]
  %.0.i.i.i.i123.1 = load i32, ptr %.0.i.i.i.i123.in.1, align 4, !tbaa !3
  %i.mn = sext i32 %.0.i.i.i.i123.1 to i64
  %i.mo = shl nsw i64 %i.mn, 4
  %i.mp = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.mo
  %.0.copyload.i.i.i.i124.1 = load i128, ptr %i.mp, align 1
  %spec.select319.1 = call i128 @llvm.smax.i128(i128 %.0.copyload.i.i.i.i124.1, i128 %spec.select319) ; 3 uses
  %indvars.iv.next393.1 = add nuw nsw i64 %indvars.iv392, 2 ; 2 uses
  %niter484.next.1 = add i64 %niter484, 2         ; 2 uses
  %niter484.ncmp.1 = icmp eq i64 %niter484.next.1, %unroll_iter483
  br i1 %niter484.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread.loopexit459.unr-lcssa, label %.noexc26, !llvm.loop !4431

.noexc29:                                         ; preds = %.noexc23
  %i.mq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i129 = icmp eq ptr %i.mr, null        ; 2 uses
  %.phi.trans.insert406 = getelementptr inbounds nuw i8, ptr %i.kp, i64 58
  %.pre407 = load i8, ptr %.phi.trans.insert406, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i129, label %.noexc31, label %bb.be

bb.be:                                            ; preds = %.noexc29
  %i.ms = trunc nuw i8 %.pre407 to i1
  %i.mt = getelementptr inbounds nuw i8, ptr %i.kp, i64 57
  %i.mu = load i8, ptr %i.mt, align 1, !range !796
  %i.mv = trunc nuw i8 %i.mu to i1
  %or.cond.i.i.i130 = select i1 %i.ms, i1 true, i1 %i.mv
  br i1 %or.cond.i.i.i130, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.mw = lshr i64 %i.kt, 6
  %i.mx = and i64 %i.mw, 67108863
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %i.mx
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !855
  %i.na = and i64 %i.kt, 63
  %i.nb = shl nuw i64 1, %i.na
  %i.nc = and i64 %i.mz, %i.nb
  br label %.noexc30

bb.bg:                                            ; preds = %bb.be
  %i.nd = getelementptr inbounds nuw i8, ptr %i.kp, i64 59
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.nf = trunc nuw i8 %i.ne to i1
  br i1 %i.nf, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ng = load i64, ptr %i.mr, align 8, !tbaa !855
  %i.nh = and i64 %i.ng, 1
  br label %.noexc30

bb.bi:                                            ; preds = %bb.bg
  %i.ni = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !1529
  %i.nk = shl nsw i64 %i.kt, 2
  %i.nl = getelementptr inbounds i8, ptr %i.nj, i64 %i.nk
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !3
  %i.nn = zext i32 %i.nm to i64                   ; 2 uses
  %i.no = lshr i64 %i.nn, 6
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %i.no
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !855
  %i.nr = and i64 %i.nn, 63
  %i.ns = shl nuw i64 1, %i.nr
  %i.nt = and i64 %i.ns, %i.nq
  br label %.noexc30

.noexc30:                                         ; preds = %bb.bi, %bb.bh, %bb.bf
  %.0.i.i.i133.in = phi i64 [ %i.nc, %bb.bf ], [ %i.nh, %bb.bh ], [ %i.nt, %bb.bi ]
  %.0.i.i.i133.not = icmp eq i64 %.0.i.i.i133.in, 0
  br i1 %.0.i.i.i133.not, label %.loopexit328, label %.noexc31

.noexc31:                                         ; preds = %.noexc29, %.noexc30
  %i.nu = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !1547 ; 2 uses
  %i.nw = trunc nuw i8 %.pre407 to i1             ; 3 uses
  br i1 %i.nw, label %.noexc32, label %bb.bj

bb.bj:                                            ; preds = %.noexc31
  %i.nx = getelementptr inbounds nuw i8, ptr %i.kp, i64 59
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.nz = trunc nuw i8 %i.ny to i1
  br i1 %i.nz, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.oa = getelementptr inbounds nuw i8, ptr %i.kp, i64 64
  %i.ob = load i32, ptr %i.oa, align 8, !tbaa !1255
  br label %.noexc32

bb.bl:                                            ; preds = %bb.bj
  %i.oc = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !1529
  %i.oe = shl nsw i64 %i.kt, 2
  %i.of = getelementptr inbounds i8, ptr %i.od, i64 %i.oe
  %i.og = load i32, ptr %i.of, align 4, !tbaa !3
  br label %.noexc32

.noexc32:                                         ; preds = %bb.bl, %bb.bk, %.noexc31
  %.0.i.i.i.i140 = phi i32 [ %i.og, %bb.bl ], [ %i.ob, %bb.bk ], [ %i.ki, %.noexc31 ]
  %i.oh = sext i32 %.0.i.i.i.i140 to i64
  %i.oi = shl nsw i64 %i.oh, 4
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nv, i64 %i.oi
  %.0.copyload.i.i.i.i141 = load i128, ptr %i.oj, align 1 ; 2 uses
  %i.ok = add nsw i32 %i.km, %i.ki
  %i.ol = icmp eq i32 %i.km, 1
  br i1 %i.ol, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread, label %.noexc34.lr.ph

.noexc34.lr.ph:                                   ; preds = %.noexc32
  %.sroa.0218.0346 = add i32 %i.ki, 1
  %i.om = getelementptr inbounds nuw i8, ptr %i.kp, i64 57
  %i.on = getelementptr inbounds nuw i8, ptr %i.kp, i64 59 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.kp, i64 8 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.kp, i64 64
  %i.oq = sext i32 %.sroa.0218.0346 to i64
  br label %.noexc34

.noexc34:                                         ; preds = %.noexc34.lr.ph, %.noexc37
  %indvars.iv402 = phi i64 [ %i.oq, %.noexc34.lr.ph ], [ %indvars.iv.next403, %.noexc37 ] ; 6 uses
  %.0306347 = phi i128 [ %.0.copyload.i.i.i.i141, %.noexc34.lr.ph ], [ %spec.select320, %.noexc37 ]
  br i1 %.not.i.i.i129, label %.noexc36, label %bb.bm

bb.bm:                                            ; preds = %.noexc34
  %i.or = load i8, ptr %i.om, align 1, !range !796
  %i.os = trunc nuw i8 %i.or to i1
  %or.cond.i.i.i146 = select i1 %i.nw, i1 true, i1 %i.os
  br i1 %or.cond.i.i.i146, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ot = lshr i64 %indvars.iv402, 6
  %i.ou = and i64 %i.ot, 67108863
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %i.ou
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !855
  %i.ox = and i64 %indvars.iv402, 63
  %i.oy = shl nuw i64 1, %i.ox
  %i.oz = and i64 %i.ow, %i.oy
  br label %.noexc35

bb.bo:                                            ; preds = %bb.bm
  %i.pa = load i8, ptr %i.on, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.pb = trunc nuw i8 %i.pa to i1
  br i1 %i.pb, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.pc = load i64, ptr %i.mr, align 8, !tbaa !855
  %i.pd = and i64 %i.pc, 1
  br label %.noexc35

bb.bq:                                            ; preds = %bb.bo
  %i.pe = load ptr, ptr %i.oo, align 8, !tbaa !1529
  %i.pf = shl nsw i64 %indvars.iv402, 2
  %i.pg = getelementptr inbounds i8, ptr %i.pe, i64 %i.pf
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !3
  %i.pi = zext i32 %i.ph to i64                   ; 2 uses
  %i.pj = lshr i64 %i.pi, 6
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %i.pj
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !855
  %i.pm = and i64 %i.pi, 63
  %i.pn = shl nuw i64 1, %i.pm
  %i.po = and i64 %i.pn, %i.pl
  br label %.noexc35

.noexc35:                                         ; preds = %bb.bq, %bb.bp, %bb.bn
  %.0.i.i.i149.in = phi i64 [ %i.oz, %bb.bn ], [ %i.pd, %bb.bp ], [ %i.po, %bb.bq ]
  %.0.i.i.i149.not = icmp eq i64 %.0.i.i.i149.in, 0
  br i1 %.0.i.i.i149.not, label %.loopexit328, label %.noexc36

.noexc36:                                         ; preds = %.noexc34, %.noexc35
  %i.pp = trunc nsw i64 %indvars.iv402 to i32
  br i1 %i.nw, label %.noexc37, label %bb.br
end_hunk_7
begin_hunk_8_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_:bb.a
  %.not37.i.i.not.i193.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i193.not, label %.critedge.i.i.i, label %.lr.ph195

bb.f:                                             ; preds = %.lr.ph195
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i194, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph195, label %.critedge.i.i.i, !llvm.loop !1540

.lr.ph195:                                        ; preds = %bb.e, %bb.f
  %indvars.iv.i194 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i194, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !855
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1540

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !855
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph195, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph195 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i27 = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i27, label %bb.h, label %bb.az

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1538 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1536 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit136

.lr.ph:                                           ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !4562 ; 2 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !4626, !nonnull !797, !align !916 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.an = sext i32 %i.ag to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit
  %indvars.iv170 = phi i64 [ %i.an, %.lr.ph ], [ %indvars.iv.next171, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !4627, !nonnull !797, !align !916 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !4623, !nonnull !797, !align !916 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 58
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = trunc nsw i64 %indvars.iv170 to i32     ; 3 uses
  br i1 %i.at, label %.noexc5, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 59
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !1255
  br label %.noexc5

bb.l:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1529
  %i.bc = shl nsw i64 %indvars.iv170, 2
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  br label %.noexc5

.noexc5:                                          ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i = phi i32 [ %i.be, %bb.l ], [ %i.az, %bb.k ], [ %i.au, %bb.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 136
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !4552
  %i.bh = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3  ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ao, i64 144
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !4555
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bh
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3  ; 8 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.loopexit134, label %.noexc10

.noexc10:                                         ; preds = %.noexc5
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ao, i64 152
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !4624, !nonnull !797, !align !916 ; 22 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = sext i32 %i.bj to i64                   ; 7 uses
  br i1 %i.bt, label %.noexc17, label %.noexc11

.noexc11:                                         ; preds = %.noexc10
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1547 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 58
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %.noexc12.thread, label %bb.m

bb.m:                                             ; preds = %.noexc11
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  br label %.noexc12

bb.o:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1529
  %i.cg = shl nsw i64 %i.bu, 2
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 %i.cg
  br label %.noexc12

.noexc12:                                         ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.in = phi ptr [ %i.ch, %bb.o ], [ %i.cd, %bb.n ]
  %.0.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i.in, align 4, !tbaa !3
  %i.ci = sext i32 %.0.i.i.i.i.i to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !4595 ; 2 uses
  %i.cl = icmp sgt i32 %i.bn, 1
  br i1 %i.cl, label %.noexc13.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc12.thread:                                  ; preds = %.noexc11
  %i.cm = sext i32 %i.bj to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.cm
  %i.co = load float, ptr %i.cn, align 4, !tbaa !4595 ; 3 uses
  %i.cp = icmp sgt i32 %i.bn, 1
  br i1 %i.cp, label %.noexc13.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc13.lr.ph:                                   ; preds = %.noexc12
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cu = trunc nuw i8 %i.ct to i1
  %wide.trip.count = zext nneg i32 %i.bn to i64
  br label %.noexc13

.noexc13.us.preheader:                            ; preds = %.noexc12.thread
  %wide.trip.count165 = zext nneg i32 %i.bn to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.bw, i64 %i.bu ; 3 uses
  %i.cv = add nsw i64 %wide.trip.count165, -1     ; 3 uses
  %xtraiter = and i64 %i.cv, 1
  %i.cw = icmp eq i32 %i.bn, 2
  br i1 %i.cw, label %.noexc13.us.epil.preheader, label %.noexc13.us.preheader.new

.noexc13.us.preheader.new:                        ; preds = %.noexc13.us.preheader
  %unroll_iter = and i64 %i.cv, -2
  br label %.noexc13.us

.noexc13.us:                                      ; preds = %.noexc13.us, %.noexc13.us.preheader.new
  %indvars.iv162 = phi i64 [ 1, %.noexc13.us.preheader.new ], [ %indvars.iv.next163.1, %.noexc13.us ] ; 3 uses
  %.0123144.us = phi float [ %i.co, %.noexc13.us.preheader.new ], [ %spec.select.us.1, %.noexc13.us ] ; 3 uses
  %niter = phi i64 [ 0, %.noexc13.us.preheader.new ], [ %niter.next.1, %.noexc13.us ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv162
  %i.cx = load float, ptr %gep, align 4, !tbaa !4595 ; 3 uses
  %i.cy = fcmp ord float %i.cx, 0.000000e+00
  %i.cz = fcmp uno float %.0123144.us, 0.000000e+00
  %or.cond.i.i.us = select i1 %i.cy, i1 %i.cz, i1 false
  %i.da = fcmp olt float %i.cx, %.0123144.us
  %.0.i.i33.us = select i1 %or.cond.i.i.us, i1 true, i1 %i.da
  %spec.select.us = select i1 %.0.i.i33.us, float %i.cx, float %.0123144.us ; 3 uses
  %i.db = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv162
  %gep.1 = getelementptr i8, ptr %i.db, i64 4
  %i.dc = load float, ptr %gep.1, align 4, !tbaa !4595 ; 3 uses
  %i.dd = fcmp ord float %i.dc, 0.000000e+00
  %i.de = fcmp uno float %spec.select.us, 0.000000e+00
  %or.cond.i.i.us.1 = select i1 %i.dd, i1 %i.de, i1 false
  %i.df = fcmp olt float %i.dc, %spec.select.us
  %.0.i.i33.us.1 = select i1 %or.cond.i.i.us.1, i1 true, i1 %i.df
  %spec.select.us.1 = select i1 %.0.i.i33.us.1, float %i.dc, float %spec.select.us ; 3 uses
  %indvars.iv.next163.1 = add nuw nsw i64 %indvars.iv162, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread.loopexit196.unr-lcssa, label %.noexc13.us, !llvm.loop !4631

.noexc13:                                         ; preds = %.noexc13.lr.ph, %.noexc14
  %indvars.iv = phi i64 [ 1, %.noexc13.lr.ph ], [ %indvars.iv.next, %.noexc14 ] ; 2 uses
  %.0123144 = phi float [ %i.ck, %.noexc13.lr.ph ], [ %spec.select, %.noexc14 ] ; 3 uses
  br i1 %i.cu, label %.noexc14, label %bb.p

bb.p:                                             ; preds = %.noexc13
  %i.dg = add nsw i64 %indvars.iv, %i.bu
  %i.dh = load ptr, ptr %i.cq, align 8, !tbaa !1529
  %i.di = shl nsw i64 %i.dg, 2
  %i.dj = getelementptr inbounds i8, ptr %i.dh, i64 %i.di
  br label %.noexc14

.noexc14:                                         ; preds = %.noexc13, %bb.p
  %.0.i.i.i.i.in = phi ptr [ %i.dj, %bb.p ], [ %i.cr, %.noexc13 ]
  %.0.i.i.i.i = load i32, ptr %.0.i.i.i.i.in, align 4, !tbaa !3
  %i.dk = sext i32 %.0.i.i.i.i to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.dk
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !4595 ; 3 uses
  %i.dn = fcmp ord float %i.dm, 0.000000e+00
  %i.do = fcmp uno float %.0123144, 0.000000e+00
  %or.cond.i.i = select i1 %i.dn, i1 %i.do, i1 false
  %i.dp = fcmp olt float %i.dm, %.0123144
  %.0.i.i33 = select i1 %or.cond.i.i, i1 true, i1 %i.dp
  %spec.select = select i1 %.0.i.i33, float %i.dm, float %.0123144 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread, label %.noexc13, !llvm.loop !4631

.noexc17:                                         ; preds = %.noexc10
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.dr, null           ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bq, i64 58
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i, label %.noexc19, label %bb.q

bb.q:                                             ; preds = %.noexc17
  %i.ds = trunc nuw i8 %.pre to i1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bq, i64 57
  %i.du = load i8, ptr %i.dt, align 1, !range !796
  %i.dv = trunc nuw i8 %i.du to i1
  %or.cond.i.i.i = select i1 %i.ds, i1 true, i1 %i.dv
  br i1 %or.cond.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dw = lshr i64 %i.bu, 6
  %i.dx = and i64 %i.dw, 67108863
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !855
  %i.ea = and i64 %i.bu, 63
  %i.eb = shl nuw i64 1, %i.ea
  %i.ec = and i64 %i.dz, %i.eb
  br label %.noexc18

bb.s:                                             ; preds = %bb.q
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.eg = load i64, ptr %i.dr, align 8, !tbaa !855
  %i.eh = and i64 %i.eg, 1
  br label %.noexc18

bb.u:                                             ; preds = %bb.s
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !1529
  %i.ek = shl nsw i64 %i.bu, 2
  %i.el = getelementptr inbounds i8, ptr %i.ej, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !3
  %i.en = zext i32 %i.em to i64                   ; 2 uses
  %i.eo = lshr i64 %i.en, 6
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !855
  %i.er = and i64 %i.en, 63
  %i.es = shl nuw i64 1, %i.er
  %i.et = and i64 %i.es, %i.eq
  br label %.noexc18

.noexc18:                                         ; preds = %bb.u, %bb.t, %bb.r
  %.0.i.i.i.in = phi i64 [ %i.ec, %bb.r ], [ %i.eh, %bb.t ], [ %i.et, %bb.u ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %.loopexit134, label %.noexc19

.noexc19:                                         ; preds = %.noexc17, %.noexc18
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !1547 ; 2 uses
  %i.ew = trunc nuw i8 %.pre to i1                ; 3 uses
  br i1 %i.ew, label %.noexc20, label %bb.v

bb.v:                                             ; preds = %.noexc19
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !1255
  br label %.noexc20

bb.x:                                             ; preds = %bb.v
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !1529
  %i.fe = shl nsw i64 %i.bu, 2
  %i.ff = getelementptr inbounds i8, ptr %i.fd, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !3
  br label %.noexc20

.noexc20:                                         ; preds = %bb.x, %bb.w, %.noexc19
  %.0.i.i.i.i38 = phi i32 [ %i.fg, %bb.x ], [ %i.fb, %bb.w ], [ %i.bj, %.noexc19 ]
  %i.fh = sext i32 %.0.i.i.i.i38 to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.fh
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !4595 ; 2 uses
  %i.fk = add nsw i32 %i.bn, %i.bj
  %i.fl = icmp eq i32 %i.bn, 1
  br i1 %i.fl, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread, label %.noexc22.lr.ph

.noexc22.lr.ph:                                   ; preds = %.noexc20
  %.sroa.0105.0146 = add i32 %i.bj, 1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bq, i64 57
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bq, i64 59 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.fq = sext i32 %.sroa.0105.0146 to i64
  br label %.noexc22

.noexc22:                                         ; preds = %.noexc22.lr.ph, %.noexc25
  %indvars.iv167 = phi i64 [ %i.fq, %.noexc22.lr.ph ], [ %indvars.iv.next168, %.noexc25 ] ; 6 uses
  %.0126147 = phi float [ %i.fj, %.noexc22.lr.ph ], [ %spec.select132, %.noexc25 ] ; 3 uses
  br i1 %.not.i.i.i, label %.noexc24, label %bb.y

bb.y:                                             ; preds = %.noexc22
  %i.fr = load i8, ptr %i.fm, align 1, !range !796
  %i.fs = trunc nuw i8 %i.fr to i1
  %or.cond.i.i.i43 = select i1 %i.ew, i1 true, i1 %i.fs
  br i1 %or.cond.i.i.i43, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ft = lshr i64 %indvars.iv167, 6
  %i.fu = and i64 %i.ft, 67108863
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.fu
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !855
  %i.fx = and i64 %indvars.iv167, 63
  %i.fy = shl nuw i64 1, %i.fx
  %i.fz = and i64 %i.fw, %i.fy
  br label %.noexc23

bb.aa:                                            ; preds = %bb.y
  %i.ga = load i8, ptr %i.fn, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gc = load i64, ptr %i.dr, align 8, !tbaa !855
  %i.gd = and i64 %i.gc, 1
  br label %.noexc23

bb.ac:                                            ; preds = %bb.aa
  %i.ge = load ptr, ptr %i.fo, align 8, !tbaa !1529
  %i.gf = shl nsw i64 %indvars.iv167, 2
  %i.gg = getelementptr inbounds i8, ptr %i.ge, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !3
  %i.gi = zext i32 %i.gh to i64                   ; 2 uses
  %i.gj = lshr i64 %i.gi, 6
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.gj
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !855
  %i.gm = and i64 %i.gi, 63
  %i.gn = shl nuw i64 1, %i.gm
  %i.go = and i64 %i.gn, %i.gl
  br label %.noexc23

.noexc23:                                         ; preds = %bb.ac, %bb.ab, %bb.z
  %.0.i.i.i46.in = phi i64 [ %i.fz, %bb.z ], [ %i.gd, %bb.ab ], [ %i.go, %bb.ac ]
  %.0.i.i.i46.not = icmp eq i64 %.0.i.i.i46.in, 0
  br i1 %.0.i.i.i46.not, label %.loopexit134, label %.noexc24

.noexc24:                                         ; preds = %.noexc22, %.noexc23
  %i.gp = trunc nsw i64 %indvars.iv167 to i32
  br i1 %i.ew, label %.noexc25, label %bb.ad

bb.ad:                                            ; preds = %.noexc24
  %i.gq = load i8, ptr %i.fn, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gs = load i32, ptr %i.fp, align 8, !tbaa !1255
  br label %.noexc25

bb.af:                                            ; preds = %bb.ad
  %i.gt = load ptr, ptr %i.fo, align 8, !tbaa !1529
  %i.gu = shl nsw i64 %indvars.iv167, 2
  %i.gv = getelementptr inbounds i8, ptr %i.gt, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !3
  br label %.noexc25
end_hunk_8
begin_hunk_9_@_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_:bb.a
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS4_10VectorExecEEESC_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSG_EEEE7iterateIJNS4_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !4644

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS4_10VectorExecEEESC_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSG_EEEE7iterateIJNS4_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS4_10VectorExecEEESC_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSG_EEEE7iterateIJNS4_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !4645, !range !796, !noundef !797
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4647
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !855
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit141, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit
  %.0155 = phi i64 [ %i.k, %.preheader ], [ %i.ja, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.o = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0155, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 5 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !4562 ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !4626, !nonnull !797, !align !916 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.t = sext i32 %i.q to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !4627, !nonnull !797, !align !916 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !4623, !nonnull !797, !align !916 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 58
  %i.z = load i8, ptr %i.y, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.noexc12, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 59
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1255
  br label %.noexc12

bb.e:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1529
  %i.ai = shl nsw i64 %i.t, 2
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  br label %.noexc12

.noexc12:                                         ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i = phi i32 [ %i.ak, %bb.e ], [ %i.af, %bb.d ], [ %i.q, %bb.b ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !4552
  %i.an = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3  ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !4555
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.an
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3  ; 8 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.loopexit139, label %.noexc17

.noexc17:                                         ; preds = %.noexc12
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !4624, !nonnull !797, !align !916 ; 22 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = sext i32 %i.ap to i64                   ; 7 uses
  br i1 %i.az, label %.noexc24, label %.noexc18

.noexc18:                                         ; preds = %.noexc17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1547 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 58
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.noexc19.thread, label %bb.f

bb.f:                                             ; preds = %.noexc18
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  br label %.noexc19

bb.h:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1529
  %i.bm = shl nsw i64 %i.ba, 2
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 %i.bm
  br label %.noexc19

.noexc19:                                         ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.in = phi ptr [ %i.bn, %bb.h ], [ %i.bj, %bb.g ]
  %.0.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i.in, align 4, !tbaa !3
  %i.bo = sext i32 %.0.i.i.i.i.i to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !4595 ; 2 uses
  %i.br = icmp sgt i32 %i.at, 1
  br i1 %i.br, label %.noexc20.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc19.thread:                                  ; preds = %.noexc18
  %i.bs = sext i32 %i.ap to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !4595 ; 3 uses
  %i.bv = icmp sgt i32 %i.at, 1
  br i1 %i.bv, label %.noexc20.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc20.lr.ph:                                   ; preds = %.noexc19
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ca = trunc nuw i8 %i.bz to i1
  %wide.trip.count = zext nneg i32 %i.at to i64
  br label %.noexc20

.noexc20.us.preheader:                            ; preds = %.noexc19.thread
  %wide.trip.count167 = zext nneg i32 %i.at to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.bc, i64 %i.ba ; 3 uses
  %i.cb = add nsw i64 %wide.trip.count167, -1     ; 3 uses
  %xtraiter = and i64 %i.cb, 1
  %i.cc = icmp eq i32 %i.at, 2
  br i1 %i.cc, label %.noexc20.us.epil.preheader, label %.noexc20.us.preheader.new

.noexc20.us.preheader.new:                        ; preds = %.noexc20.us.preheader
  %unroll_iter = and i64 %i.cb, -2
  br label %.noexc20.us

.noexc20.us:                                      ; preds = %.noexc20.us, %.noexc20.us.preheader.new
  %indvars.iv164 = phi i64 [ 1, %.noexc20.us.preheader.new ], [ %indvars.iv.next165.1, %.noexc20.us ] ; 3 uses
  %.0128149.us = phi float [ %i.bu, %.noexc20.us.preheader.new ], [ %spec.select.us.1, %.noexc20.us ] ; 3 uses
  %niter = phi i64 [ 0, %.noexc20.us.preheader.new ], [ %niter.next.1, %.noexc20.us ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv164
  %i.cd = load float, ptr %gep, align 4, !tbaa !4595 ; 3 uses
  %i.ce = fcmp ord float %i.cd, 0.000000e+00
  %i.cf = fcmp uno float %.0128149.us, 0.000000e+00
  %or.cond.i.i.us = select i1 %i.ce, i1 %i.cf, i1 false
  %i.cg = fcmp olt float %i.cd, %.0128149.us
  %.0.i.i38.us = select i1 %or.cond.i.i.us, i1 true, i1 %i.cg
  %spec.select.us = select i1 %.0.i.i38.us, float %i.cd, float %.0128149.us ; 3 uses
  %i.ch = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv164
  %gep.1 = getelementptr i8, ptr %i.ch, i64 4
  %i.ci = load float, ptr %gep.1, align 4, !tbaa !4595 ; 3 uses
  %i.cj = fcmp ord float %i.ci, 0.000000e+00
  %i.ck = fcmp uno float %spec.select.us, 0.000000e+00
  %or.cond.i.i.us.1 = select i1 %i.cj, i1 %i.ck, i1 false
  %i.cl = fcmp olt float %i.ci, %spec.select.us
  %.0.i.i38.us.1 = select i1 %or.cond.i.i.us.1, i1 true, i1 %i.cl
  %spec.select.us.1 = select i1 %.0.i.i38.us.1, float %i.ci, float %spec.select.us ; 3 uses
  %indvars.iv.next165.1 = add nuw nsw i64 %indvars.iv164, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread.loopexit190.unr-lcssa, label %.noexc20.us, !llvm.loop !4631

.noexc20:                                         ; preds = %.noexc20.lr.ph, %.noexc21
  %indvars.iv = phi i64 [ 1, %.noexc20.lr.ph ], [ %indvars.iv.next, %.noexc21 ] ; 2 uses
  %.0128149 = phi float [ %i.bq, %.noexc20.lr.ph ], [ %spec.select, %.noexc21 ] ; 3 uses
  br i1 %i.ca, label %.noexc21, label %bb.i

bb.i:                                             ; preds = %.noexc20
  %i.cm = add nsw i64 %indvars.iv, %i.ba
  %i.cn = load ptr, ptr %i.bw, align 8, !tbaa !1529
  %i.co = shl nsw i64 %i.cm, 2
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 %i.co
  br label %.noexc21

.noexc21:                                         ; preds = %.noexc20, %bb.i
  %.0.i.i.i.i.in = phi ptr [ %i.cp, %bb.i ], [ %i.bx, %.noexc20 ]
  %.0.i.i.i.i = load i32, ptr %.0.i.i.i.i.in, align 4, !tbaa !3
  %i.cq = sext i32 %.0.i.i.i.i to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.cq
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !4595 ; 3 uses
  %i.ct = fcmp ord float %i.cs, 0.000000e+00
  %i.cu = fcmp uno float %.0128149, 0.000000e+00
  %or.cond.i.i = select i1 %i.ct, i1 %i.cu, i1 false
  %i.cv = fcmp olt float %i.cs, %.0128149
  %.0.i.i38 = select i1 %or.cond.i.i, i1 true, i1 %i.cv
  %spec.select = select i1 %.0.i.i38, float %i.cs, float %.0128149 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread, label %.noexc20, !llvm.loop !4631

.noexc24:                                         ; preds = %.noexc17
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.cx, null           ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aw, i64 58
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i, label %.noexc26, label %bb.j

bb.j:                                             ; preds = %.noexc24
  %i.cy = trunc nuw i8 %.pre to i1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.aw, i64 57
  %i.da = load i8, ptr %i.cz, align 1, !range !796
  %i.db = trunc nuw i8 %i.da to i1
  %or.cond.i.i.i = select i1 %i.cy, i1 true, i1 %i.db
  br i1 %or.cond.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dc = lshr i64 %i.ba, 6
  %i.dd = and i64 %i.dc, 67108863
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !855
  %i.dg = and i64 %i.ba, 63
  %i.dh = shl nuw i64 1, %i.dg
  %i.di = and i64 %i.df, %i.dh
  br label %.noexc25

bb.l:                                             ; preds = %bb.j
  %i.dj = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dm = load i64, ptr %i.cx, align 8, !tbaa !855
  %i.dn = and i64 %i.dm, 1
  br label %.noexc25

bb.n:                                             ; preds = %bb.l
  %i.do = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1529
  %i.dq = shl nsw i64 %i.ba, 2
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !3
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %i.du = lshr i64 %i.dt, 6
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !855
  %i.dx = and i64 %i.dt, 63
  %i.dy = shl nuw i64 1, %i.dx
  %i.dz = and i64 %i.dy, %i.dw
  br label %.noexc25

.noexc25:                                         ; preds = %bb.n, %bb.m, %bb.k
  %.0.i.i.i.in = phi i64 [ %i.di, %bb.k ], [ %i.dn, %bb.m ], [ %i.dz, %bb.n ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %.loopexit139, label %.noexc26

.noexc26:                                         ; preds = %.noexc24, %.noexc25
  %i.ea = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !1547 ; 2 uses
  %i.ec = trunc nuw i8 %.pre to i1                ; 3 uses
  br i1 %i.ec, label %.noexc27, label %bb.o

bb.o:                                             ; preds = %.noexc26
  %i.ed = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.eg = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !1255
  br label %.noexc27

bb.q:                                             ; preds = %bb.o
  %i.ei = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !1529
  %i.ek = shl nsw i64 %i.ba, 2
  %i.el = getelementptr inbounds i8, ptr %i.ej, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !3
  br label %.noexc27

.noexc27:                                         ; preds = %bb.q, %bb.p, %.noexc26
  %.0.i.i.i.i43 = phi i32 [ %i.em, %bb.q ], [ %i.eh, %bb.p ], [ %i.ap, %.noexc26 ]
  %i.en = sext i32 %.0.i.i.i.i43 to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.en
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !4595 ; 2 uses
  %i.eq = add nsw i32 %i.at, %i.ap
  %i.er = icmp eq i32 %i.at, 1
  br i1 %i.er, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread, label %.noexc29.lr.ph

.noexc29.lr.ph:                                   ; preds = %.noexc27
  %.sroa.0110.0151 = add i32 %i.ap, 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.aw, i64 57
  %i.et = getelementptr inbounds nuw i8, ptr %i.aw, i64 59 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.ew = sext i32 %.sroa.0110.0151 to i64
  br label %.noexc29

.noexc29:                                         ; preds = %.noexc29.lr.ph, %.noexc32
  %indvars.iv169 = phi i64 [ %i.ew, %.noexc29.lr.ph ], [ %indvars.iv.next170, %.noexc32 ] ; 6 uses
  %.0131152 = phi float [ %i.ep, %.noexc29.lr.ph ], [ %spec.select137, %.noexc32 ] ; 3 uses
  br i1 %.not.i.i.i, label %.noexc31, label %bb.r

bb.r:                                             ; preds = %.noexc29
  %i.ex = load i8, ptr %i.es, align 1, !range !796
  %i.ey = trunc nuw i8 %i.ex to i1
  %or.cond.i.i.i48 = select i1 %i.ec, i1 true, i1 %i.ey
  br i1 %or.cond.i.i.i48, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ez = lshr i64 %indvars.iv169, 6
  %i.fa = and i64 %i.ez, 67108863
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.fa
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !855
  %i.fd = and i64 %indvars.iv169, 63
  %i.fe = shl nuw i64 1, %i.fd
  %i.ff = and i64 %i.fc, %i.fe
  br label %.noexc30

bb.t:                                             ; preds = %bb.r
  %i.fg = load i8, ptr %i.et, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fi = load i64, ptr %i.cx, align 8, !tbaa !855
  %i.fj = and i64 %i.fi, 1
  br label %.noexc30

bb.v:                                             ; preds = %bb.t
  %i.fk = load ptr, ptr %i.eu, align 8, !tbaa !1529
  %i.fl = shl nsw i64 %indvars.iv169, 2
  %i.fm = getelementptr inbounds i8, ptr %i.fk, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3
  %i.fo = zext i32 %i.fn to i64                   ; 2 uses
  %i.fp = lshr i64 %i.fo, 6
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.fp
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !855
  %i.fs = and i64 %i.fo, 63
  %i.ft = shl nuw i64 1, %i.fs
  %i.fu = and i64 %i.ft, %i.fr
  br label %.noexc30

.noexc30:                                         ; preds = %bb.v, %bb.u, %bb.s
  %.0.i.i.i51.in = phi i64 [ %i.ff, %bb.s ], [ %i.fj, %bb.u ], [ %i.fu, %bb.v ]
  %.0.i.i.i51.not = icmp eq i64 %.0.i.i.i51.in, 0
  br i1 %.0.i.i.i51.not, label %.loopexit139, label %.noexc31

.noexc31:                                         ; preds = %.noexc29, %.noexc30
  %i.fv = trunc nsw i64 %indvars.iv169 to i32
  br i1 %i.ec, label %.noexc32, label %bb.w

bb.w:                                             ; preds = %.noexc31
  %i.fw = load i8, ptr %i.et, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fy = load i32, ptr %i.ev, align 8, !tbaa !1255
  br label %.noexc32

bb.y:                                             ; preds = %bb.w
  %i.fz = load ptr, ptr %i.eu, align 8, !tbaa !1529
  %i.ga = shl nsw i64 %indvars.iv169, 2
  %i.gb = getelementptr inbounds i8, ptr %i.fz, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !3
  br label %.noexc32
end_hunk_9
begin_hunk_10_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim:bb.a
  unreachable

bb.ar:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit70, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit75
  %i.iz = add i64 %.0155, -1
  %i.ja = and i64 %i.iz, %.0155                   ; 2 uses
  %.not10 = icmp eq i64 %i.ja, 0
  br i1 %.not10, label %.loopexit141, label %bb.b, !llvm.loop !4653

.loopexit141:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %5 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !4654, !range !796, !noundef !797
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4656
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !855
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit328
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.at

bb.b:                                             ; preds = %bb.a
  %i.n = shl i32 %1, 6                            ; 3 uses
  %i.o = add i32 %i.n, 64
  %i.p = sext i32 %i.o to i64
  %.not369 = icmp eq i32 %i.n, -64
  br i1 %.not369, label %.loopexit328, label %.lr.ph368

.lr.ph368:                                        ; preds = %bb.b
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph368, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clImEEDaSP_.exit
  %.0364 = phi i64 [ %i.q, %.lr.ph368 ], [ %i.jb, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clImEEDaSP_.exit ] ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !4562 ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !4626, !nonnull !797, !align !916 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !4627, !nonnull !797, !align !916 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !4623, !nonnull !797, !align !916 ; 4 uses
  %i.z = trunc i64 %.0364 to i32                  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 58
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.noexc45, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 59
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !1255
  br label %.noexc45

bb.f:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1529
  %sext.i = shl i64 %.0364, 32
  %i.ak = ashr exact i64 %sext.i, 30
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  br label %.noexc45

.noexc45:                                         ; preds = %bb.f, %bb.e, %bb.c
  %.0.i.i65 = phi i32 [ %i.am, %bb.f ], [ %i.ah, %bb.e ], [ %i.z, %bb.c ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !4552
  %i.ap = sext i32 %.0.i.i65 to i64               ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3  ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !4555
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ap
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3  ; 8 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.loopexit326, label %.noexc46

.noexc46:                                         ; preds = %.noexc45
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !4624, !nonnull !797, !align !916 ; 22 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = sext i32 %i.ar to i64                   ; 7 uses
  br i1 %i.bb, label %.noexc53, label %.noexc47

.noexc47:                                         ; preds = %.noexc46
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1547 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 58
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %.noexc48.thread, label %bb.g

bb.g:                                             ; preds = %.noexc47
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  br label %.noexc48

bb.i:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1529
  %i.bo = shl nsw i64 %i.bc, 2
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 %i.bo
  br label %.noexc48

.noexc48:                                         ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.in = phi ptr [ %i.bp, %bb.i ], [ %i.bl, %bb.h ]
  %.0.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i.in, align 4, !tbaa !3
  %i.bq = sext i32 %.0.i.i.i.i.i to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bq
  %i.bs = load float, ptr %i.br, align 4, !tbaa !4595 ; 2 uses
  %i.bt = icmp sgt i32 %i.av, 1
  br i1 %i.bt, label %.noexc49.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit.thread

.noexc48.thread:                                  ; preds = %.noexc47
  %i.bu = sext i32 %i.ar to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bu
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !4595 ; 3 uses
  %i.bx = icmp sgt i32 %i.av, 1
  br i1 %i.bx, label %.noexc49.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit.thread

.noexc49.lr.ph:                                   ; preds = %.noexc48
  %i.by = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cc = trunc nuw i8 %i.cb to i1
  %wide.trip.count = zext nneg i32 %i.av to i64
  br label %.noexc49

.noexc49.us.preheader:                            ; preds = %.noexc48.thread
  %wide.trip.count391 = zext nneg i32 %i.av to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.be, i64 %i.bc ; 3 uses
  %i.cd = add nsw i64 %wide.trip.count391, -1     ; 3 uses
  %xtraiter = and i64 %i.cd, 1
  %i.ce = icmp eq i32 %i.av, 2
  br i1 %i.ce, label %.noexc49.us.epil.preheader, label %.noexc49.us.preheader.new

.noexc49.us.preheader.new:                        ; preds = %.noexc49.us.preheader
  %unroll_iter = and i64 %i.cd, -2
  br label %.noexc49.us

.noexc49.us:                                      ; preds = %.noexc49.us, %.noexc49.us.preheader.new
  %indvars.iv388 = phi i64 [ 1, %.noexc49.us.preheader.new ], [ %indvars.iv.next389.1, %.noexc49.us ] ; 3 uses
  %.0300356.us = phi float [ %i.bw, %.noexc49.us.preheader.new ], [ %spec.select.us.1, %.noexc49.us ] ; 3 uses
  %niter = phi i64 [ 0, %.noexc49.us.preheader.new ], [ %niter.next.1, %.noexc49.us ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv388
  %i.cf = load float, ptr %gep, align 4, !tbaa !4595 ; 3 uses
  %i.cg = fcmp ord float %i.cf, 0.000000e+00
  %i.ch = fcmp uno float %.0300356.us, 0.000000e+00
  %or.cond.i.i.us = select i1 %i.cg, i1 %i.ch, i1 false
  %i.ci = fcmp olt float %i.cf, %.0300356.us
  %.0.i.i70.us = select i1 %or.cond.i.i.us, i1 true, i1 %i.ci
  %spec.select.us = select i1 %.0.i.i70.us, float %i.cf, float %.0300356.us ; 3 uses
  %i.cj = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv388
  %gep.1 = getelementptr i8, ptr %i.cj, i64 4
  %i.ck = load float, ptr %gep.1, align 4, !tbaa !4595 ; 3 uses
  %i.cl = fcmp ord float %i.ck, 0.000000e+00
  %i.cm = fcmp uno float %spec.select.us, 0.000000e+00
  %or.cond.i.i.us.1 = select i1 %i.cl, i1 %i.cm, i1 false
  %i.cn = fcmp olt float %i.ck, %spec.select.us
  %.0.i.i70.us.1 = select i1 %or.cond.i.i.us.1, i1 true, i1 %i.cn
  %spec.select.us.1 = select i1 %.0.i.i70.us.1, float %i.ck, float %spec.select.us ; 3 uses
  %indvars.iv.next389.1 = add nuw nsw i64 %indvars.iv388, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit.thread.loopexit461.unr-lcssa, label %.noexc49.us, !llvm.loop !4631

.noexc49:                                         ; preds = %.noexc49.lr.ph, %.noexc50
  %indvars.iv = phi i64 [ 1, %.noexc49.lr.ph ], [ %indvars.iv.next, %.noexc50 ] ; 2 uses
  %.0300356 = phi float [ %i.bs, %.noexc49.lr.ph ], [ %spec.select, %.noexc50 ] ; 3 uses
  br i1 %i.cc, label %.noexc50, label %bb.j

bb.j:                                             ; preds = %.noexc49
  %i.co = add nsw i64 %indvars.iv, %i.bc
  %i.cp = load ptr, ptr %i.by, align 8, !tbaa !1529
  %i.cq = shl nsw i64 %i.co, 2
  %i.cr = getelementptr inbounds i8, ptr %i.cp, i64 %i.cq
  br label %.noexc50

.noexc50:                                         ; preds = %.noexc49, %bb.j
  %.0.i.i.i.i.in = phi ptr [ %i.cr, %bb.j ], [ %i.bz, %.noexc49 ]
  %.0.i.i.i.i = load i32, ptr %.0.i.i.i.i.in, align 4, !tbaa !3
  %i.cs = sext i32 %.0.i.i.i.i to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.cs
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !4595 ; 3 uses
  %i.cv = fcmp ord float %i.cu, 0.000000e+00
  %i.cw = fcmp uno float %.0300356, 0.000000e+00
  %or.cond.i.i = select i1 %i.cv, i1 %i.cw, i1 false
  %i.cx = fcmp olt float %i.cu, %.0300356
  %.0.i.i70 = select i1 %or.cond.i.i, i1 true, i1 %i.cx
  %spec.select = select i1 %.0.i.i70, float %i.cu, float %.0300356 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit.thread, label %.noexc49, !llvm.loop !4631

.noexc53:                                         ; preds = %.noexc46
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.cz, null           ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ay, i64 58
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i, label %.noexc55, label %bb.k

bb.k:                                             ; preds = %.noexc53
  %i.da = trunc nuw i8 %.pre to i1
  %i.db = getelementptr inbounds nuw i8, ptr %i.ay, i64 57
  %i.dc = load i8, ptr %i.db, align 1, !range !796
  %i.dd = trunc nuw i8 %i.dc to i1
  %or.cond.i.i.i = select i1 %i.da, i1 true, i1 %i.dd
  br i1 %or.cond.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.de = lshr i64 %i.bc, 6
  %i.df = and i64 %i.de, 67108863
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !855
  %i.di = and i64 %i.bc, 63
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = and i64 %i.dh, %i.dj
  br label %.noexc54

bb.m:                                             ; preds = %bb.k
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.do = load i64, ptr %i.cz, align 8, !tbaa !855
  %i.dp = and i64 %i.do, 1
  br label %.noexc54

bb.o:                                             ; preds = %bb.m
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1529
  %i.ds = shl nsw i64 %i.bc, 2
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !3
  %i.dv = zext i32 %i.du to i64                   ; 2 uses
  %i.dw = lshr i64 %i.dv, 6
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !855
  %i.dz = and i64 %i.dv, 63
  %i.ea = shl nuw i64 1, %i.dz
  %i.eb = and i64 %i.ea, %i.dy
  br label %.noexc54

.noexc54:                                         ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i.i.in = phi i64 [ %i.dk, %bb.l ], [ %i.dp, %bb.n ], [ %i.eb, %bb.o ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %.loopexit326, label %.noexc55

.noexc55:                                         ; preds = %.noexc53, %.noexc54
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !1547 ; 2 uses
  %i.ee = trunc nuw i8 %.pre to i1                ; 3 uses
  br i1 %i.ee, label %.noexc56, label %bb.p

bb.p:                                             ; preds = %.noexc55
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !1255
  br label %.noexc56

bb.r:                                             ; preds = %bb.p
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !1529
  %i.em = shl nsw i64 %i.bc, 2
  %i.en = getelementptr inbounds i8, ptr %i.el, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3
  br label %.noexc56

.noexc56:                                         ; preds = %bb.r, %bb.q, %.noexc55
  %.0.i.i.i.i75 = phi i32 [ %i.eo, %bb.r ], [ %i.ej, %bb.q ], [ %i.ar, %.noexc55 ]
  %i.ep = sext i32 %.0.i.i.i.i75 to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.ep
  %i.er = load float, ptr %i.eq, align 4, !tbaa !4595 ; 2 uses
  %i.es = add nsw i32 %i.av, %i.ar
  %i.et = icmp eq i32 %i.av, 1
  br i1 %i.et, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit.thread, label %.noexc58.lr.ph

.noexc58.lr.ph:                                   ; preds = %.noexc56
  %.sroa.0279.0360 = add i32 %i.ar, 1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ay, i64 57
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ay, i64 59 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ey = sext i32 %.sroa.0279.0360 to i64
  br label %.noexc58

.noexc58:                                         ; preds = %.noexc58.lr.ph, %.noexc61
  %indvars.iv393 = phi i64 [ %i.ey, %.noexc58.lr.ph ], [ %indvars.iv.next394, %.noexc61 ] ; 6 uses
  %.0303361 = phi float [ %i.er, %.noexc58.lr.ph ], [ %spec.select322, %.noexc61 ] ; 3 uses
  br i1 %.not.i.i.i, label %.noexc60, label %bb.s

bb.s:                                             ; preds = %.noexc58
  %i.ez = load i8, ptr %i.eu, align 1, !range !796
  %i.fa = trunc nuw i8 %i.ez to i1
  %or.cond.i.i.i80 = select i1 %i.ee, i1 true, i1 %i.fa
  br i1 %or.cond.i.i.i80, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fb = lshr i64 %indvars.iv393, 6
  %i.fc = and i64 %i.fb, 67108863
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !855
  %i.ff = and i64 %indvars.iv393, 63
  %i.fg = shl nuw i64 1, %i.ff
  %i.fh = and i64 %i.fe, %i.fg
  br label %.noexc59

bb.u:                                             ; preds = %bb.s
  %i.fi = load i8, ptr %i.ev, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fk = load i64, ptr %i.cz, align 8, !tbaa !855
  %i.fl = and i64 %i.fk, 1
  br label %.noexc59

bb.w:                                             ; preds = %bb.u
  %i.fm = load ptr, ptr %i.ew, align 8, !tbaa !1529
  %i.fn = shl nsw i64 %indvars.iv393, 2
  %i.fo = getelementptr inbounds i8, ptr %i.fm, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !3
  %i.fq = zext i32 %i.fp to i64                   ; 2 uses
  %i.fr = lshr i64 %i.fq, 6
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !855
  %i.fu = and i64 %i.fq, 63
  %i.fv = shl nuw i64 1, %i.fu
  %i.fw = and i64 %i.fv, %i.ft
  br label %.noexc59

.noexc59:                                         ; preds = %bb.w, %bb.v, %bb.t
  %.0.i.i.i83.in = phi i64 [ %i.fh, %bb.t ], [ %i.fl, %bb.v ], [ %i.fw, %bb.w ]
  %.0.i.i.i83.not = icmp eq i64 %.0.i.i.i83.in, 0
  br i1 %.0.i.i.i83.not, label %.loopexit326, label %.noexc60

.noexc60:                                         ; preds = %.noexc58, %.noexc59
  %i.fx = trunc nsw i64 %indvars.iv393 to i32
  br i1 %i.ee, label %.noexc61, label %bb.x

bb.x:                                             ; preds = %.noexc60
  %i.fy = load i8, ptr %i.ev, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ga = load i32, ptr %i.ex, align 8, !tbaa !1255
  br label %.noexc61

bb.z:                                             ; preds = %bb.x
  %i.gb = load ptr, ptr %i.ew, align 8, !tbaa !1529
  %i.gc = shl nsw i64 %indvars.iv393, 2
  %i.gd = getelementptr inbounds i8, ptr %i.gb, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !3
  br label %.noexc61
end_hunk_10
begin_hunk_11_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
          cleanup
  br label %bb.aq

bb.am:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.iw = load ptr, ptr %4, align 8, !tbaa !1108
  %.not.i106 = icmp eq ptr %i.iw, null
  br i1 %.not.i106, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit107, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit107

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit107: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clImEEDaSP_.exit

bb.ao:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.ix = landingpad { ptr, i32 }
          cleanup
  %i.iy = load ptr, ptr %4, align 8, !tbaa !1108
  %.not.i108 = icmp eq ptr %i.iy, null
  br i1 %.not.i108, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109, %bb.al
  %.pn.i41 = phi { ptr, i32 } [ %i.ix, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109 ], [ %i.iv, %bb.al ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ar

common.resume:                                    ; preds = %bb.af, %bb.bw, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit185, %bb.ch, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit105, %bb.aq
  %common.resume.op = phi { ptr, i32 } [ %.pn.i41, %bb.aq ], [ %i.it, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit105 ], [ %.pn.i, %bb.ch ], [ %i.sg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit185 ], [ %i.qx, %bb.bw ], [ %i.hk, %bb.af ]
  resume { ptr, i32 } %common.resume.op

bb.ar:                                            ; preds = %bb.aq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit105
  %i.iz = landingpad { ptr, i32 }
          catch ptr null
  %i.ja = extractvalue { ptr, i32 } %i.iz, 0
  call void @__clang_call_terminate(ptr %i.ja) #44
  unreachable

bb.as:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clImEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit102, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit107
  %i.jb = add nuw i64 %.0364, 1                   ; 2 uses
  %i.jc = icmp ult i64 %i.jb, %i.p
  br i1 %i.jc, label %bb.c, label %.loopexit328, !llvm.loop !4662

bb.at:                                            ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit
  %.015355 = phi i64 [ %i.j, %.lr.ph ], [ %i.sp, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.jd = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015355, i1 true)
  %i.je = trunc nuw nsw i64 %i.jd to i32
  %i.jf = or disjoint i32 %i.l, %i.je             ; 5 uses
  %i.jg = load ptr, ptr %i.m, align 8, !tbaa !4562 ; 2 uses
  %i.jh = load ptr, ptr %i.k, align 8, !tbaa !4626, !nonnull !797, !align !916 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.ji = sext i32 %i.jf to i64                   ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !4627, !nonnull !797, !align !916 ; 4 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 120
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !4623, !nonnull !797, !align !916 ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 58
  %i.jo = load i8, ptr %i.jn, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.jp = trunc nuw i8 %i.jo to i1
  br i1 %i.jp, label %.noexc18, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 59
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.js = trunc nuw i8 %i.jr to i1
  br i1 %i.js, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jm, i64 64
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !1255
  br label %.noexc18

bb.aw:                                            ; preds = %bb.au
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !1529
  %i.jx = shl nsw i64 %i.ji, 2
  %i.jy = getelementptr inbounds i8, ptr %i.jw, i64 %i.jx
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !3
  br label %.noexc18

.noexc18:                                         ; preds = %bb.aw, %bb.av, %bb.at
  %.0.i.i111 = phi i32 [ %i.jz, %bb.aw ], [ %i.ju, %bb.av ], [ %i.jf, %bb.at ]
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jk, i64 136
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !4552
  %i.kc = sext i32 %.0.i.i111 to i64              ; 2 uses
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.kb, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !3  ; 5 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jk, i64 144
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !4555
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.kc
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !3  ; 8 uses
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %.loopexit332, label %.noexc23

.noexc23:                                         ; preds = %.noexc18
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jk, i64 152
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !4624, !nonnull !797, !align !916 ; 22 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 56
  %i.kn = load i8, ptr %i.km, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.ko = trunc nuw i8 %i.kn to i1
  %i.kp = sext i32 %i.ke to i64                   ; 7 uses
  br i1 %i.ko, label %.noexc30, label %.noexc24

.noexc24:                                         ; preds = %.noexc23
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !1547 ; 4 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kl, i64 58
  %i.kt = load i8, ptr %i.ks, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.ku = trunc nuw i8 %i.kt to i1
  br i1 %i.ku, label %.noexc25.thread, label %bb.ax

bb.ax:                                            ; preds = %.noexc24
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kl, i64 59
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.kx = trunc nuw i8 %i.kw to i1
  br i1 %i.kx, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kl, i64 64
  br label %.noexc25

bb.az:                                            ; preds = %bb.ax
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !1529
  %i.lb = shl nsw i64 %i.kp, 2
  %i.lc = getelementptr inbounds i8, ptr %i.la, i64 %i.lb
  br label %.noexc25

.noexc25:                                         ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i122.in = phi ptr [ %i.lc, %bb.az ], [ %i.ky, %bb.ay ]
  %.0.i.i.i.i.i122 = load i32, ptr %.0.i.i.i.i.i122.in, align 4, !tbaa !3
  %i.ld = sext i32 %.0.i.i.i.i.i122 to i64
  %i.le = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.ld
  %i.lf = load float, ptr %i.le, align 4, !tbaa !4595 ; 2 uses
  %i.lg = icmp sgt i32 %i.ki, 1
  br i1 %i.lg, label %.noexc26.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc25.thread:                                  ; preds = %.noexc24
  %i.lh = sext i32 %i.ke to i64
  %i.li = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.lh
  %i.lj = load float, ptr %i.li, align 4, !tbaa !4595 ; 3 uses
  %i.lk = icmp sgt i32 %i.ki, 1
  br i1 %i.lk, label %.noexc26.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc26.lr.ph:                                   ; preds = %.noexc25
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kl, i64 64
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kl, i64 59
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.lp = trunc nuw i8 %i.lo to i1
  %wide.trip.count399 = zext nneg i32 %i.ki to i64
  br label %.noexc26

.noexc26.us.preheader:                            ; preds = %.noexc25.thread
  %wide.trip.count404 = zext nneg i32 %i.ki to i64
  %invariant.gep441 = getelementptr [4 x i8], ptr %i.kr, i64 %i.kp ; 3 uses
  %i.lq = add nsw i64 %wide.trip.count404, -1     ; 3 uses
  %xtraiter471 = and i64 %i.lq, 1
  %i.lr = icmp eq i32 %i.ki, 2
  br i1 %i.lr, label %.noexc26.us.epil.preheader, label %.noexc26.us.preheader.new

.noexc26.us.preheader.new:                        ; preds = %.noexc26.us.preheader
  %unroll_iter475 = and i64 %i.lq, -2
  br label %.noexc26.us

.noexc26.us:                                      ; preds = %.noexc26.us, %.noexc26.us.preheader.new
  %indvars.iv401 = phi i64 [ 1, %.noexc26.us.preheader.new ], [ %indvars.iv.next402.1, %.noexc26.us ] ; 3 uses
  %.0308348.us = phi float [ %i.lj, %.noexc26.us.preheader.new ], [ %spec.select323.us.1, %.noexc26.us ] ; 3 uses
  %niter476 = phi i64 [ 0, %.noexc26.us.preheader.new ], [ %niter476.next.1, %.noexc26.us ]
  %gep442 = getelementptr [4 x i8], ptr %invariant.gep441, i64 %indvars.iv401
  %i.ls = load float, ptr %gep442, align 4, !tbaa !4595 ; 3 uses
  %i.lt = fcmp ord float %i.ls, 0.000000e+00
  %i.lu = fcmp uno float %.0308348.us, 0.000000e+00
  %or.cond.i.i129.us = select i1 %i.lt, i1 %i.lu, i1 false
  %i.lv = fcmp olt float %i.ls, %.0308348.us
  %.0.i.i130.us = select i1 %or.cond.i.i129.us, i1 true, i1 %i.lv
  %spec.select323.us = select i1 %.0.i.i130.us, float %i.ls, float %.0308348.us ; 3 uses
  %i.lw = getelementptr [4 x i8], ptr %invariant.gep441, i64 %indvars.iv401
  %gep442.1 = getelementptr i8, ptr %i.lw, i64 4
  %i.lx = load float, ptr %gep442.1, align 4, !tbaa !4595 ; 3 uses
  %i.ly = fcmp ord float %i.lx, 0.000000e+00
  %i.lz = fcmp uno float %spec.select323.us, 0.000000e+00
  %or.cond.i.i129.us.1 = select i1 %i.ly, i1 %i.lz, i1 false
  %i.ma = fcmp olt float %i.lx, %spec.select323.us
  %.0.i.i130.us.1 = select i1 %or.cond.i.i129.us.1, i1 true, i1 %i.ma
  %spec.select323.us.1 = select i1 %.0.i.i130.us.1, float %i.lx, float %spec.select323.us ; 3 uses
  %indvars.iv.next402.1 = add nuw nsw i64 %indvars.iv401, 2 ; 2 uses
  %niter476.next.1 = add i64 %niter476, 2         ; 2 uses
  %niter476.ncmp.1 = icmp eq i64 %niter476.next.1, %unroll_iter475
  br i1 %niter476.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread.loopexit456.unr-lcssa, label %.noexc26.us, !llvm.loop !4631

.noexc26:                                         ; preds = %.noexc26.lr.ph, %.noexc27
  %indvars.iv396 = phi i64 [ 1, %.noexc26.lr.ph ], [ %indvars.iv.next397, %.noexc27 ] ; 2 uses
  %.0308348 = phi float [ %i.lf, %.noexc26.lr.ph ], [ %spec.select323, %.noexc27 ] ; 3 uses
  br i1 %i.lp, label %.noexc27, label %bb.ba

bb.ba:                                            ; preds = %.noexc26
  %i.mb = add nsw i64 %indvars.iv396, %i.kp
  %i.mc = load ptr, ptr %i.ll, align 8, !tbaa !1529
  %i.md = shl nsw i64 %i.mb, 2
  %i.me = getelementptr inbounds i8, ptr %i.mc, i64 %i.md
  br label %.noexc27

.noexc27:                                         ; preds = %.noexc26, %bb.ba
  %.0.i.i.i.i127.in = phi ptr [ %i.me, %bb.ba ], [ %i.lm, %.noexc26 ]
  %.0.i.i.i.i127 = load i32, ptr %.0.i.i.i.i127.in, align 4, !tbaa !3
  %i.mf = sext i32 %.0.i.i.i.i127 to i64
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.mf
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !4595 ; 3 uses
  %i.mi = fcmp ord float %i.mh, 0.000000e+00
  %i.mj = fcmp uno float %.0308348, 0.000000e+00
  %or.cond.i.i129 = select i1 %i.mi, i1 %i.mj, i1 false
  %i.mk = fcmp olt float %i.mh, %.0308348
  %.0.i.i130 = select i1 %or.cond.i.i129, i1 true, i1 %i.mk
  %spec.select323 = select i1 %.0.i.i130, float %i.mh, float %.0308348 ; 2 uses
  %indvars.iv.next397 = add nuw nsw i64 %indvars.iv396, 1 ; 2 uses
  %exitcond400.not = icmp eq i64 %indvars.iv.next397, %wide.trip.count399
  br i1 %exitcond400.not, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread, label %.noexc26, !llvm.loop !4631

.noexc30:                                         ; preds = %.noexc23
  %i.ml = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i134 = icmp eq ptr %i.mm, null        ; 2 uses
  %.phi.trans.insert410 = getelementptr inbounds nuw i8, ptr %i.kl, i64 58
  %.pre411 = load i8, ptr %.phi.trans.insert410, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i134, label %.noexc32, label %bb.bb

bb.bb:                                            ; preds = %.noexc30
  %i.mn = trunc nuw i8 %.pre411 to i1
  %i.mo = getelementptr inbounds nuw i8, ptr %i.kl, i64 57
  %i.mp = load i8, ptr %i.mo, align 1, !range !796
  %i.mq = trunc nuw i8 %i.mp to i1
  %or.cond.i.i.i135 = select i1 %i.mn, i1 true, i1 %i.mq
  br i1 %or.cond.i.i.i135, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.mr = lshr i64 %i.kp, 6
  %i.ms = and i64 %i.mr, 67108863
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %i.ms
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !855
  %i.mv = and i64 %i.kp, 63
  %i.mw = shl nuw i64 1, %i.mv
  %i.mx = and i64 %i.mu, %i.mw
  br label %.noexc31

bb.bd:                                            ; preds = %bb.bb
  %i.my = getelementptr inbounds nuw i8, ptr %i.kl, i64 59
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.na = trunc nuw i8 %i.mz to i1
  br i1 %i.na, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.nb = load i64, ptr %i.mm, align 8, !tbaa !855
  %i.nc = and i64 %i.nb, 1
  br label %.noexc31

bb.bf:                                            ; preds = %bb.bd
  %i.nd = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !1529
  %i.nf = shl nsw i64 %i.kp, 2
  %i.ng = getelementptr inbounds i8, ptr %i.ne, i64 %i.nf
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !3
  %i.ni = zext i32 %i.nh to i64                   ; 2 uses
  %i.nj = lshr i64 %i.ni, 6
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %i.nj
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !855
  %i.nm = and i64 %i.ni, 63
  %i.nn = shl nuw i64 1, %i.nm
  %i.no = and i64 %i.nn, %i.nl
  br label %.noexc31

.noexc31:                                         ; preds = %bb.bf, %bb.be, %bb.bc
  %.0.i.i.i138.in = phi i64 [ %i.mx, %bb.bc ], [ %i.nc, %bb.be ], [ %i.no, %bb.bf ]
  %.0.i.i.i138.not = icmp eq i64 %.0.i.i.i138.in, 0
  br i1 %.0.i.i.i138.not, label %.loopexit332, label %.noexc32

.noexc32:                                         ; preds = %.noexc30, %.noexc31
  %i.np = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !1547 ; 2 uses
  %i.nr = trunc nuw i8 %.pre411 to i1             ; 3 uses
  br i1 %i.nr, label %.noexc33, label %bb.bg

bb.bg:                                            ; preds = %.noexc32
  %i.ns = getelementptr inbounds nuw i8, ptr %i.kl, i64 59
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.nu = trunc nuw i8 %i.nt to i1
  br i1 %i.nu, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.nv = getelementptr inbounds nuw i8, ptr %i.kl, i64 64
  %i.nw = load i32, ptr %i.nv, align 8, !tbaa !1255
  br label %.noexc33

bb.bi:                                            ; preds = %bb.bg
  %i.nx = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !1529
  %i.nz = shl nsw i64 %i.kp, 2
  %i.oa = getelementptr inbounds i8, ptr %i.ny, i64 %i.nz
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !3
  br label %.noexc33

.noexc33:                                         ; preds = %bb.bi, %bb.bh, %.noexc32
  %.0.i.i.i.i145 = phi i32 [ %i.ob, %bb.bi ], [ %i.nw, %bb.bh ], [ %i.ke, %.noexc32 ]
  %i.oc = sext i32 %.0.i.i.i.i145 to i64
  %i.od = getelementptr inbounds [4 x i8], ptr %i.nq, i64 %i.oc
  %i.oe = load float, ptr %i.od, align 4, !tbaa !4595 ; 2 uses
  %i.of = add nsw i32 %i.ki, %i.ke
  %i.og = icmp eq i32 %i.ki, 1
  br i1 %i.og, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread, label %.noexc35.lr.ph

.noexc35.lr.ph:                                   ; preds = %.noexc33
  %.sroa.0222.0350 = add i32 %i.ke, 1
  %i.oh = getelementptr inbounds nuw i8, ptr %i.kl, i64 57
  %i.oi = getelementptr inbounds nuw i8, ptr %i.kl, i64 59 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.kl, i64 8 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.kl, i64 64
  %i.ol = sext i32 %.sroa.0222.0350 to i64
  br label %.noexc35

.noexc35:                                         ; preds = %.noexc35.lr.ph, %.noexc38
  %indvars.iv406 = phi i64 [ %i.ol, %.noexc35.lr.ph ], [ %indvars.iv.next407, %.noexc38 ] ; 6 uses
  %.0310351 = phi float [ %i.oe, %.noexc35.lr.ph ], [ %spec.select324, %.noexc38 ] ; 3 uses
  br i1 %.not.i.i.i134, label %.noexc37, label %bb.bj

bb.bj:                                            ; preds = %.noexc35
  %i.om = load i8, ptr %i.oh, align 1, !range !796
  %i.on = trunc nuw i8 %i.om to i1
  %or.cond.i.i.i150 = select i1 %i.nr, i1 true, i1 %i.on
  br i1 %or.cond.i.i.i150, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.oo = lshr i64 %indvars.iv406, 6
  %i.op = and i64 %i.oo, 67108863
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %i.op
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !855
  %i.os = and i64 %indvars.iv406, 63
  %i.ot = shl nuw i64 1, %i.os
  %i.ou = and i64 %i.or, %i.ot
  br label %.noexc36

bb.bl:                                            ; preds = %bb.bj
  %i.ov = load i8, ptr %i.oi, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ow = trunc nuw i8 %i.ov to i1
  br i1 %i.ow, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ox = load i64, ptr %i.mm, align 8, !tbaa !855
  %i.oy = and i64 %i.ox, 1
  br label %.noexc36

bb.bn:                                            ; preds = %bb.bl
  %i.oz = load ptr, ptr %i.oj, align 8, !tbaa !1529
  %i.pa = shl nsw i64 %indvars.iv406, 2
  %i.pb = getelementptr inbounds i8, ptr %i.oz, i64 %i.pa
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !3
  %i.pd = zext i32 %i.pc to i64                   ; 2 uses
  %i.pe = lshr i64 %i.pd, 6
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %i.pe
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !855
  %i.ph = and i64 %i.pd, 63
  %i.pi = shl nuw i64 1, %i.ph
  %i.pj = and i64 %i.pi, %i.pg
  br label %.noexc36

.noexc36:                                         ; preds = %bb.bn, %bb.bm, %bb.bk
  %.0.i.i.i153.in = phi i64 [ %i.ou, %bb.bk ], [ %i.oy, %bb.bm ], [ %i.pj, %bb.bn ]
  %.0.i.i.i153.not = icmp eq i64 %.0.i.i.i153.in, 0
  br i1 %.0.i.i.i153.not, label %.loopexit332, label %.noexc37

.noexc37:                                         ; preds = %.noexc35, %.noexc36
  %i.pk = trunc nsw i64 %indvars.iv406 to i32
  br i1 %i.nr, label %.noexc38, label %bb.bo

bb.bo:                                            ; preds = %.noexc37
  %i.pl = load i8, ptr %i.oi, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.pm = trunc nuw i8 %i.pl to i1
  br i1 %i.pm, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.pn = load i32, ptr %i.ok, align 8, !tbaa !1255
  br label %.noexc38

bb.bq:                                            ; preds = %bb.bo
  %i.po = load ptr, ptr %i.oj, align 8, !tbaa !1529
  %i.pp = shl nsw i64 %indvars.iv406, 2
  %i.pq = getelementptr inbounds i8, ptr %i.po, i64 %i.pp
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !3
  br label %.noexc38
end_hunk_11
begin_hunk_12_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_:bb.a
  %.not37.i.i.not.i193.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i193.not, label %.critedge.i.i.i, label %.lr.ph195

bb.f:                                             ; preds = %.lr.ph195
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i194, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph195, label %.critedge.i.i.i, !llvm.loop !1540

.lr.ph195:                                        ; preds = %bb.e, %bb.f
  %indvars.iv.i194 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i194, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !855
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1540

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !855
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph195, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph195 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i27 = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i27, label %bb.h, label %bb.az

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1538 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1536 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit136

.lr.ph:                                           ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !4742 ; 2 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !4744, !nonnull !797, !align !916 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.an = sext i32 %i.ag to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit
  %indvars.iv170 = phi i64 [ %i.an, %.lr.ph ], [ %indvars.iv.next171, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !4745, !nonnull !797, !align !916 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !4623, !nonnull !797, !align !916 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 58
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = trunc nsw i64 %indvars.iv170 to i32     ; 3 uses
  br i1 %i.at, label %.noexc5, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 59
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !1255
  br label %.noexc5

bb.l:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1529
  %i.bc = shl nsw i64 %indvars.iv170, 2
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  br label %.noexc5

.noexc5:                                          ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i = phi i32 [ %i.be, %bb.l ], [ %i.az, %bb.k ], [ %i.au, %bb.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 136
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !4552
  %i.bh = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3  ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ao, i64 144
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !4555
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bh
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3  ; 8 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.loopexit134, label %.noexc10

.noexc10:                                         ; preds = %.noexc5
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ao, i64 152
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !4624, !nonnull !797, !align !916 ; 22 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = sext i32 %i.bj to i64                   ; 7 uses
  br i1 %i.bt, label %.noexc17, label %.noexc11

.noexc11:                                         ; preds = %.noexc10
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1547 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 58
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %.noexc12.thread, label %bb.m

bb.m:                                             ; preds = %.noexc11
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  br label %.noexc12

bb.o:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1529
  %i.cg = shl nsw i64 %i.bu, 2
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 %i.cg
  br label %.noexc12

.noexc12:                                         ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.in = phi ptr [ %i.ch, %bb.o ], [ %i.cd, %bb.n ]
  %.0.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i.in, align 4, !tbaa !3
  %i.ci = sext i32 %.0.i.i.i.i.i to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !4595 ; 2 uses
  %i.cl = icmp sgt i32 %i.bn, 1
  br i1 %i.cl, label %.noexc13.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc12.thread:                                  ; preds = %.noexc11
  %i.cm = sext i32 %i.bj to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.cm
  %i.co = load float, ptr %i.cn, align 4, !tbaa !4595 ; 3 uses
  %i.cp = icmp sgt i32 %i.bn, 1
  br i1 %i.cp, label %.noexc13.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc13.lr.ph:                                   ; preds = %.noexc12
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cu = trunc nuw i8 %i.ct to i1
  %wide.trip.count = zext nneg i32 %i.bn to i64
  br label %.noexc13

.noexc13.us.preheader:                            ; preds = %.noexc12.thread
  %wide.trip.count165 = zext nneg i32 %i.bn to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.bw, i64 %i.bu ; 3 uses
  %i.cv = add nsw i64 %wide.trip.count165, -1     ; 3 uses
  %xtraiter = and i64 %i.cv, 1
  %i.cw = icmp eq i32 %i.bn, 2
  br i1 %i.cw, label %.noexc13.us.epil.preheader, label %.noexc13.us.preheader.new

.noexc13.us.preheader.new:                        ; preds = %.noexc13.us.preheader
  %unroll_iter = and i64 %i.cv, -2
  br label %.noexc13.us

.noexc13.us:                                      ; preds = %.noexc13.us, %.noexc13.us.preheader.new
  %indvars.iv162 = phi i64 [ 1, %.noexc13.us.preheader.new ], [ %indvars.iv.next163.1, %.noexc13.us ] ; 3 uses
  %.0123144.us = phi float [ %i.co, %.noexc13.us.preheader.new ], [ %spec.select.us.1, %.noexc13.us ] ; 3 uses
  %niter = phi i64 [ 0, %.noexc13.us.preheader.new ], [ %niter.next.1, %.noexc13.us ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv162
  %i.cx = load float, ptr %gep, align 4, !tbaa !4595 ; 3 uses
  %i.cy = fcmp uno float %i.cx, 0.000000e+00
  %i.cz = fcmp ord float %.0123144.us, 0.000000e+00
  %or.cond.not.i.i.us = select i1 %i.cy, i1 %i.cz, i1 false
  %i.da = fcmp ogt float %i.cx, %.0123144.us
  %.0.i.i33.us = select i1 %or.cond.not.i.i.us, i1 true, i1 %i.da
  %spec.select.us = select i1 %.0.i.i33.us, float %i.cx, float %.0123144.us ; 3 uses
  %i.db = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv162
  %gep.1 = getelementptr i8, ptr %i.db, i64 4
  %i.dc = load float, ptr %gep.1, align 4, !tbaa !4595 ; 3 uses
  %i.dd = fcmp uno float %i.dc, 0.000000e+00
  %i.de = fcmp ord float %spec.select.us, 0.000000e+00
  %or.cond.not.i.i.us.1 = select i1 %i.dd, i1 %i.de, i1 false
  %i.df = fcmp ogt float %i.dc, %spec.select.us
  %.0.i.i33.us.1 = select i1 %or.cond.not.i.i.us.1, i1 true, i1 %i.df
  %spec.select.us.1 = select i1 %.0.i.i33.us.1, float %i.dc, float %spec.select.us ; 3 uses
  %indvars.iv.next163.1 = add nuw nsw i64 %indvars.iv162, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread.loopexit196.unr-lcssa, label %.noexc13.us, !llvm.loop !4748

.noexc13:                                         ; preds = %.noexc13.lr.ph, %.noexc14
  %indvars.iv = phi i64 [ 1, %.noexc13.lr.ph ], [ %indvars.iv.next, %.noexc14 ] ; 2 uses
  %.0123144 = phi float [ %i.ck, %.noexc13.lr.ph ], [ %spec.select, %.noexc14 ] ; 3 uses
  br i1 %i.cu, label %.noexc14, label %bb.p

bb.p:                                             ; preds = %.noexc13
  %i.dg = add nsw i64 %indvars.iv, %i.bu
  %i.dh = load ptr, ptr %i.cq, align 8, !tbaa !1529
  %i.di = shl nsw i64 %i.dg, 2
  %i.dj = getelementptr inbounds i8, ptr %i.dh, i64 %i.di
  br label %.noexc14

.noexc14:                                         ; preds = %.noexc13, %bb.p
  %.0.i.i.i.i.in = phi ptr [ %i.dj, %bb.p ], [ %i.cr, %.noexc13 ]
  %.0.i.i.i.i = load i32, ptr %.0.i.i.i.i.in, align 4, !tbaa !3
  %i.dk = sext i32 %.0.i.i.i.i to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.dk
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !4595 ; 3 uses
  %i.dn = fcmp uno float %i.dm, 0.000000e+00
  %i.do = fcmp ord float %.0123144, 0.000000e+00
  %or.cond.not.i.i = select i1 %i.dn, i1 %i.do, i1 false
  %i.dp = fcmp ogt float %i.dm, %.0123144
  %.0.i.i33 = select i1 %or.cond.not.i.i, i1 true, i1 %i.dp
  %spec.select = select i1 %.0.i.i33, float %i.dm, float %.0123144 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread, label %.noexc13, !llvm.loop !4748

.noexc17:                                         ; preds = %.noexc10
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.dr, null           ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bq, i64 58
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i, label %.noexc19, label %bb.q

bb.q:                                             ; preds = %.noexc17
  %i.ds = trunc nuw i8 %.pre to i1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bq, i64 57
  %i.du = load i8, ptr %i.dt, align 1, !range !796
  %i.dv = trunc nuw i8 %i.du to i1
  %or.cond.i.i.i = select i1 %i.ds, i1 true, i1 %i.dv
  br i1 %or.cond.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dw = lshr i64 %i.bu, 6
  %i.dx = and i64 %i.dw, 67108863
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !855
  %i.ea = and i64 %i.bu, 63
  %i.eb = shl nuw i64 1, %i.ea
  %i.ec = and i64 %i.dz, %i.eb
  br label %.noexc18

bb.s:                                             ; preds = %bb.q
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.eg = load i64, ptr %i.dr, align 8, !tbaa !855
  %i.eh = and i64 %i.eg, 1
  br label %.noexc18

bb.u:                                             ; preds = %bb.s
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !1529
  %i.ek = shl nsw i64 %i.bu, 2
  %i.el = getelementptr inbounds i8, ptr %i.ej, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !3
  %i.en = zext i32 %i.em to i64                   ; 2 uses
  %i.eo = lshr i64 %i.en, 6
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !855
  %i.er = and i64 %i.en, 63
  %i.es = shl nuw i64 1, %i.er
  %i.et = and i64 %i.es, %i.eq
  br label %.noexc18

.noexc18:                                         ; preds = %bb.u, %bb.t, %bb.r
  %.0.i.i.i.in = phi i64 [ %i.ec, %bb.r ], [ %i.eh, %bb.t ], [ %i.et, %bb.u ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %.loopexit134, label %.noexc19

.noexc19:                                         ; preds = %.noexc17, %.noexc18
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !1547 ; 2 uses
  %i.ew = trunc nuw i8 %.pre to i1                ; 3 uses
  br i1 %i.ew, label %.noexc20, label %bb.v

bb.v:                                             ; preds = %.noexc19
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !1255
  br label %.noexc20

bb.x:                                             ; preds = %bb.v
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !1529
  %i.fe = shl nsw i64 %i.bu, 2
  %i.ff = getelementptr inbounds i8, ptr %i.fd, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !3
  br label %.noexc20

.noexc20:                                         ; preds = %bb.x, %bb.w, %.noexc19
  %.0.i.i.i.i38 = phi i32 [ %i.fg, %bb.x ], [ %i.fb, %bb.w ], [ %i.bj, %.noexc19 ]
  %i.fh = sext i32 %.0.i.i.i.i38 to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.fh
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !4595 ; 2 uses
  %i.fk = add nsw i32 %i.bn, %i.bj
  %i.fl = icmp eq i32 %i.bn, 1
  br i1 %i.fl, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread, label %.noexc22.lr.ph

.noexc22.lr.ph:                                   ; preds = %.noexc20
  %.sroa.0105.0146 = add i32 %i.bj, 1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bq, i64 57
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bq, i64 59 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.fq = sext i32 %.sroa.0105.0146 to i64
  br label %.noexc22

.noexc22:                                         ; preds = %.noexc22.lr.ph, %.noexc25
  %indvars.iv167 = phi i64 [ %i.fq, %.noexc22.lr.ph ], [ %indvars.iv.next168, %.noexc25 ] ; 6 uses
  %.0126147 = phi float [ %i.fj, %.noexc22.lr.ph ], [ %spec.select132, %.noexc25 ] ; 3 uses
  br i1 %.not.i.i.i, label %.noexc24, label %bb.y

bb.y:                                             ; preds = %.noexc22
  %i.fr = load i8, ptr %i.fm, align 1, !range !796
  %i.fs = trunc nuw i8 %i.fr to i1
  %or.cond.i.i.i43 = select i1 %i.ew, i1 true, i1 %i.fs
  br i1 %or.cond.i.i.i43, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ft = lshr i64 %indvars.iv167, 6
  %i.fu = and i64 %i.ft, 67108863
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.fu
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !855
  %i.fx = and i64 %indvars.iv167, 63
  %i.fy = shl nuw i64 1, %i.fx
  %i.fz = and i64 %i.fw, %i.fy
  br label %.noexc23

bb.aa:                                            ; preds = %bb.y
  %i.ga = load i8, ptr %i.fn, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gc = load i64, ptr %i.dr, align 8, !tbaa !855
  %i.gd = and i64 %i.gc, 1
  br label %.noexc23

bb.ac:                                            ; preds = %bb.aa
  %i.ge = load ptr, ptr %i.fo, align 8, !tbaa !1529
  %i.gf = shl nsw i64 %indvars.iv167, 2
  %i.gg = getelementptr inbounds i8, ptr %i.ge, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !3
  %i.gi = zext i32 %i.gh to i64                   ; 2 uses
  %i.gj = lshr i64 %i.gi, 6
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.gj
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !855
  %i.gm = and i64 %i.gi, 63
  %i.gn = shl nuw i64 1, %i.gm
  %i.go = and i64 %i.gn, %i.gl
  br label %.noexc23

.noexc23:                                         ; preds = %bb.ac, %bb.ab, %bb.z
  %.0.i.i.i46.in = phi i64 [ %i.fz, %bb.z ], [ %i.gd, %bb.ab ], [ %i.go, %bb.ac ]
  %.0.i.i.i46.not = icmp eq i64 %.0.i.i.i46.in, 0
  br i1 %.0.i.i.i46.not, label %.loopexit134, label %.noexc24

.noexc24:                                         ; preds = %.noexc22, %.noexc23
  %i.gp = trunc nsw i64 %indvars.iv167 to i32
  br i1 %i.ew, label %.noexc25, label %bb.ad

bb.ad:                                            ; preds = %.noexc24
  %i.gq = load i8, ptr %i.fn, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gs = load i32, ptr %i.fp, align 8, !tbaa !1255
  br label %.noexc25

bb.af:                                            ; preds = %bb.ad
  %i.gt = load ptr, ptr %i.fo, align 8, !tbaa !1529
  %i.gu = shl nsw i64 %indvars.iv167, 2
  %i.gv = getelementptr inbounds i8, ptr %i.gt, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !3
  br label %.noexc25
end_hunk_12
begin_hunk_13_@_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_:bb.a
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS4_10VectorExecEEESC_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSG_EEEE7iterateIJNS4_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !4761

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS4_10VectorExecEEESC_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSG_EEEE7iterateIJNS4_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS4_10VectorExecEEESC_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSG_EEEE7iterateIJNS4_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !4762, !range !796, !noundef !797
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4764
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !855
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit141, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit
  %.0155 = phi i64 [ %i.k, %.preheader ], [ %i.ja, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.o = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0155, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 5 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !4742 ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !4744, !nonnull !797, !align !916 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.t = sext i32 %i.q to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !4745, !nonnull !797, !align !916 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !4623, !nonnull !797, !align !916 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 58
  %i.z = load i8, ptr %i.y, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.noexc12, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 59
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1255
  br label %.noexc12

bb.e:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1529
  %i.ai = shl nsw i64 %i.t, 2
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  br label %.noexc12

.noexc12:                                         ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i = phi i32 [ %i.ak, %bb.e ], [ %i.af, %bb.d ], [ %i.q, %bb.b ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !4552
  %i.an = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3  ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !4555
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.an
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3  ; 8 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.loopexit139, label %.noexc17

.noexc17:                                         ; preds = %.noexc12
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !4624, !nonnull !797, !align !916 ; 22 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = sext i32 %i.ap to i64                   ; 7 uses
  br i1 %i.az, label %.noexc24, label %.noexc18

.noexc18:                                         ; preds = %.noexc17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1547 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 58
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.noexc19.thread, label %bb.f

bb.f:                                             ; preds = %.noexc18
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  br label %.noexc19

bb.h:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1529
  %i.bm = shl nsw i64 %i.ba, 2
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 %i.bm
  br label %.noexc19

.noexc19:                                         ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.in = phi ptr [ %i.bn, %bb.h ], [ %i.bj, %bb.g ]
  %.0.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i.in, align 4, !tbaa !3
  %i.bo = sext i32 %.0.i.i.i.i.i to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !4595 ; 2 uses
  %i.br = icmp sgt i32 %i.at, 1
  br i1 %i.br, label %.noexc20.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc19.thread:                                  ; preds = %.noexc18
  %i.bs = sext i32 %i.ap to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !4595 ; 3 uses
  %i.bv = icmp sgt i32 %i.at, 1
  br i1 %i.bv, label %.noexc20.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc20.lr.ph:                                   ; preds = %.noexc19
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ca = trunc nuw i8 %i.bz to i1
  %wide.trip.count = zext nneg i32 %i.at to i64
  br label %.noexc20

.noexc20.us.preheader:                            ; preds = %.noexc19.thread
  %wide.trip.count167 = zext nneg i32 %i.at to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.bc, i64 %i.ba ; 3 uses
  %i.cb = add nsw i64 %wide.trip.count167, -1     ; 3 uses
  %xtraiter = and i64 %i.cb, 1
  %i.cc = icmp eq i32 %i.at, 2
  br i1 %i.cc, label %.noexc20.us.epil.preheader, label %.noexc20.us.preheader.new

.noexc20.us.preheader.new:                        ; preds = %.noexc20.us.preheader
  %unroll_iter = and i64 %i.cb, -2
  br label %.noexc20.us

.noexc20.us:                                      ; preds = %.noexc20.us, %.noexc20.us.preheader.new
  %indvars.iv164 = phi i64 [ 1, %.noexc20.us.preheader.new ], [ %indvars.iv.next165.1, %.noexc20.us ] ; 3 uses
  %.0128149.us = phi float [ %i.bu, %.noexc20.us.preheader.new ], [ %spec.select.us.1, %.noexc20.us ] ; 3 uses
  %niter = phi i64 [ 0, %.noexc20.us.preheader.new ], [ %niter.next.1, %.noexc20.us ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv164
  %i.cd = load float, ptr %gep, align 4, !tbaa !4595 ; 3 uses
  %i.ce = fcmp uno float %i.cd, 0.000000e+00
  %i.cf = fcmp ord float %.0128149.us, 0.000000e+00
  %or.cond.not.i.i.us = select i1 %i.ce, i1 %i.cf, i1 false
  %i.cg = fcmp ogt float %i.cd, %.0128149.us
  %.0.i.i38.us = select i1 %or.cond.not.i.i.us, i1 true, i1 %i.cg
  %spec.select.us = select i1 %.0.i.i38.us, float %i.cd, float %.0128149.us ; 3 uses
  %i.ch = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv164
  %gep.1 = getelementptr i8, ptr %i.ch, i64 4
  %i.ci = load float, ptr %gep.1, align 4, !tbaa !4595 ; 3 uses
  %i.cj = fcmp uno float %i.ci, 0.000000e+00
  %i.ck = fcmp ord float %spec.select.us, 0.000000e+00
  %or.cond.not.i.i.us.1 = select i1 %i.cj, i1 %i.ck, i1 false
  %i.cl = fcmp ogt float %i.ci, %spec.select.us
  %.0.i.i38.us.1 = select i1 %or.cond.not.i.i.us.1, i1 true, i1 %i.cl
  %spec.select.us.1 = select i1 %.0.i.i38.us.1, float %i.ci, float %spec.select.us ; 3 uses
  %indvars.iv.next165.1 = add nuw nsw i64 %indvars.iv164, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread.loopexit190.unr-lcssa, label %.noexc20.us, !llvm.loop !4748

.noexc20:                                         ; preds = %.noexc20.lr.ph, %.noexc21
  %indvars.iv = phi i64 [ 1, %.noexc20.lr.ph ], [ %indvars.iv.next, %.noexc21 ] ; 2 uses
  %.0128149 = phi float [ %i.bq, %.noexc20.lr.ph ], [ %spec.select, %.noexc21 ] ; 3 uses
  br i1 %i.ca, label %.noexc21, label %bb.i

bb.i:                                             ; preds = %.noexc20
  %i.cm = add nsw i64 %indvars.iv, %i.ba
  %i.cn = load ptr, ptr %i.bw, align 8, !tbaa !1529
  %i.co = shl nsw i64 %i.cm, 2
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 %i.co
  br label %.noexc21

.noexc21:                                         ; preds = %.noexc20, %bb.i
  %.0.i.i.i.i.in = phi ptr [ %i.cp, %bb.i ], [ %i.bx, %.noexc20 ]
  %.0.i.i.i.i = load i32, ptr %.0.i.i.i.i.in, align 4, !tbaa !3
  %i.cq = sext i32 %.0.i.i.i.i to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.cq
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !4595 ; 3 uses
  %i.ct = fcmp uno float %i.cs, 0.000000e+00
  %i.cu = fcmp ord float %.0128149, 0.000000e+00
  %or.cond.not.i.i = select i1 %i.ct, i1 %i.cu, i1 false
  %i.cv = fcmp ogt float %i.cs, %.0128149
  %.0.i.i38 = select i1 %or.cond.not.i.i, i1 true, i1 %i.cv
  %spec.select = select i1 %.0.i.i38, float %i.cs, float %.0128149 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread, label %.noexc20, !llvm.loop !4748

.noexc24:                                         ; preds = %.noexc17
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.cx, null           ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aw, i64 58
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i, label %.noexc26, label %bb.j

bb.j:                                             ; preds = %.noexc24
  %i.cy = trunc nuw i8 %.pre to i1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.aw, i64 57
  %i.da = load i8, ptr %i.cz, align 1, !range !796
  %i.db = trunc nuw i8 %i.da to i1
  %or.cond.i.i.i = select i1 %i.cy, i1 true, i1 %i.db
  br i1 %or.cond.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dc = lshr i64 %i.ba, 6
  %i.dd = and i64 %i.dc, 67108863
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !855
  %i.dg = and i64 %i.ba, 63
  %i.dh = shl nuw i64 1, %i.dg
  %i.di = and i64 %i.df, %i.dh
  br label %.noexc25

bb.l:                                             ; preds = %bb.j
  %i.dj = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dm = load i64, ptr %i.cx, align 8, !tbaa !855
  %i.dn = and i64 %i.dm, 1
  br label %.noexc25

bb.n:                                             ; preds = %bb.l
  %i.do = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1529
  %i.dq = shl nsw i64 %i.ba, 2
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !3
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %i.du = lshr i64 %i.dt, 6
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !855
  %i.dx = and i64 %i.dt, 63
  %i.dy = shl nuw i64 1, %i.dx
  %i.dz = and i64 %i.dy, %i.dw
  br label %.noexc25

.noexc25:                                         ; preds = %bb.n, %bb.m, %bb.k
  %.0.i.i.i.in = phi i64 [ %i.di, %bb.k ], [ %i.dn, %bb.m ], [ %i.dz, %bb.n ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %.loopexit139, label %.noexc26

.noexc26:                                         ; preds = %.noexc24, %.noexc25
  %i.ea = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !1547 ; 2 uses
  %i.ec = trunc nuw i8 %.pre to i1                ; 3 uses
  br i1 %i.ec, label %.noexc27, label %bb.o

bb.o:                                             ; preds = %.noexc26
  %i.ed = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.eg = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !1255
  br label %.noexc27

bb.q:                                             ; preds = %bb.o
  %i.ei = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !1529
  %i.ek = shl nsw i64 %i.ba, 2
  %i.el = getelementptr inbounds i8, ptr %i.ej, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !3
  br label %.noexc27

.noexc27:                                         ; preds = %bb.q, %bb.p, %.noexc26
  %.0.i.i.i.i43 = phi i32 [ %i.em, %bb.q ], [ %i.eh, %bb.p ], [ %i.ap, %.noexc26 ]
  %i.en = sext i32 %.0.i.i.i.i43 to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.en
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !4595 ; 2 uses
  %i.eq = add nsw i32 %i.at, %i.ap
  %i.er = icmp eq i32 %i.at, 1
  br i1 %i.er, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread, label %.noexc29.lr.ph

.noexc29.lr.ph:                                   ; preds = %.noexc27
  %.sroa.0110.0151 = add i32 %i.ap, 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.aw, i64 57
  %i.et = getelementptr inbounds nuw i8, ptr %i.aw, i64 59 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.ew = sext i32 %.sroa.0110.0151 to i64
  br label %.noexc29

.noexc29:                                         ; preds = %.noexc29.lr.ph, %.noexc32
  %indvars.iv169 = phi i64 [ %i.ew, %.noexc29.lr.ph ], [ %indvars.iv.next170, %.noexc32 ] ; 6 uses
  %.0131152 = phi float [ %i.ep, %.noexc29.lr.ph ], [ %spec.select137, %.noexc32 ] ; 3 uses
  br i1 %.not.i.i.i, label %.noexc31, label %bb.r

bb.r:                                             ; preds = %.noexc29
  %i.ex = load i8, ptr %i.es, align 1, !range !796
  %i.ey = trunc nuw i8 %i.ex to i1
  %or.cond.i.i.i48 = select i1 %i.ec, i1 true, i1 %i.ey
  br i1 %or.cond.i.i.i48, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ez = lshr i64 %indvars.iv169, 6
  %i.fa = and i64 %i.ez, 67108863
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.fa
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !855
  %i.fd = and i64 %indvars.iv169, 63
  %i.fe = shl nuw i64 1, %i.fd
  %i.ff = and i64 %i.fc, %i.fe
  br label %.noexc30

bb.t:                                             ; preds = %bb.r
  %i.fg = load i8, ptr %i.et, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fi = load i64, ptr %i.cx, align 8, !tbaa !855
  %i.fj = and i64 %i.fi, 1
  br label %.noexc30

bb.v:                                             ; preds = %bb.t
  %i.fk = load ptr, ptr %i.eu, align 8, !tbaa !1529
  %i.fl = shl nsw i64 %indvars.iv169, 2
  %i.fm = getelementptr inbounds i8, ptr %i.fk, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3
  %i.fo = zext i32 %i.fn to i64                   ; 2 uses
  %i.fp = lshr i64 %i.fo, 6
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.fp
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !855
  %i.fs = and i64 %i.fo, 63
  %i.ft = shl nuw i64 1, %i.fs
  %i.fu = and i64 %i.ft, %i.fr
  br label %.noexc30

.noexc30:                                         ; preds = %bb.v, %bb.u, %bb.s
  %.0.i.i.i51.in = phi i64 [ %i.ff, %bb.s ], [ %i.fj, %bb.u ], [ %i.fu, %bb.v ]
  %.0.i.i.i51.not = icmp eq i64 %.0.i.i.i51.in, 0
  br i1 %.0.i.i.i51.not, label %.loopexit139, label %.noexc31

.noexc31:                                         ; preds = %.noexc29, %.noexc30
  %i.fv = trunc nsw i64 %indvars.iv169 to i32
  br i1 %i.ec, label %.noexc32, label %bb.w

bb.w:                                             ; preds = %.noexc31
  %i.fw = load i8, ptr %i.et, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fy = load i32, ptr %i.ev, align 8, !tbaa !1255
  br label %.noexc32

bb.y:                                             ; preds = %bb.w
  %i.fz = load ptr, ptr %i.eu, align 8, !tbaa !1529
  %i.ga = shl nsw i64 %indvars.iv169, 2
  %i.gb = getelementptr inbounds i8, ptr %i.fz, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !3
  br label %.noexc32
end_hunk_13
begin_hunk_14_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim:bb.a
  unreachable

bb.ar:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit70, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit75
  %i.iz = add i64 %.0155, -1
  %i.ja = and i64 %i.iz, %.0155                   ; 2 uses
  %.not10 = icmp eq i64 %i.ja, 0
  br i1 %.not10, label %.loopexit141, label %bb.b, !llvm.loop !4770

.loopexit141:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %5 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !4771, !range !796, !noundef !797
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4773
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !855
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit328
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.at

bb.b:                                             ; preds = %bb.a
  %i.n = shl i32 %1, 6                            ; 3 uses
  %i.o = add i32 %i.n, 64
  %i.p = sext i32 %i.o to i64
  %.not369 = icmp eq i32 %i.n, -64
  br i1 %.not369, label %.loopexit328, label %.lr.ph368

.lr.ph368:                                        ; preds = %bb.b
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph368, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clImEEDaSP_.exit
  %.0364 = phi i64 [ %i.q, %.lr.ph368 ], [ %i.jb, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clImEEDaSP_.exit ] ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !4742 ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !4744, !nonnull !797, !align !916 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !4745, !nonnull !797, !align !916 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !4623, !nonnull !797, !align !916 ; 4 uses
  %i.z = trunc i64 %.0364 to i32                  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 58
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.noexc45, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 59
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !1255
  br label %.noexc45

bb.f:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1529
  %sext.i = shl i64 %.0364, 32
  %i.ak = ashr exact i64 %sext.i, 30
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  br label %.noexc45

.noexc45:                                         ; preds = %bb.f, %bb.e, %bb.c
  %.0.i.i65 = phi i32 [ %i.am, %bb.f ], [ %i.ah, %bb.e ], [ %i.z, %bb.c ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !4552
  %i.ap = sext i32 %.0.i.i65 to i64               ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3  ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !4555
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ap
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3  ; 8 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.loopexit326, label %.noexc46

.noexc46:                                         ; preds = %.noexc45
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !4624, !nonnull !797, !align !916 ; 22 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = sext i32 %i.ar to i64                   ; 7 uses
  br i1 %i.bb, label %.noexc53, label %.noexc47

.noexc47:                                         ; preds = %.noexc46
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1547 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 58
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %.noexc48.thread, label %bb.g

bb.g:                                             ; preds = %.noexc47
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  br label %.noexc48

bb.i:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1529
  %i.bo = shl nsw i64 %i.bc, 2
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 %i.bo
  br label %.noexc48

.noexc48:                                         ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.in = phi ptr [ %i.bp, %bb.i ], [ %i.bl, %bb.h ]
  %.0.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i.in, align 4, !tbaa !3
  %i.bq = sext i32 %.0.i.i.i.i.i to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bq
  %i.bs = load float, ptr %i.br, align 4, !tbaa !4595 ; 2 uses
  %i.bt = icmp sgt i32 %i.av, 1
  br i1 %i.bt, label %.noexc49.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit.thread

.noexc48.thread:                                  ; preds = %.noexc47
  %i.bu = sext i32 %i.ar to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bu
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !4595 ; 3 uses
  %i.bx = icmp sgt i32 %i.av, 1
  br i1 %i.bx, label %.noexc49.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit.thread

.noexc49.lr.ph:                                   ; preds = %.noexc48
  %i.by = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cc = trunc nuw i8 %i.cb to i1
  %wide.trip.count = zext nneg i32 %i.av to i64
  br label %.noexc49

.noexc49.us.preheader:                            ; preds = %.noexc48.thread
  %wide.trip.count391 = zext nneg i32 %i.av to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.be, i64 %i.bc ; 3 uses
  %i.cd = add nsw i64 %wide.trip.count391, -1     ; 3 uses
  %xtraiter = and i64 %i.cd, 1
  %i.ce = icmp eq i32 %i.av, 2
  br i1 %i.ce, label %.noexc49.us.epil.preheader, label %.noexc49.us.preheader.new

.noexc49.us.preheader.new:                        ; preds = %.noexc49.us.preheader
  %unroll_iter = and i64 %i.cd, -2
  br label %.noexc49.us

.noexc49.us:                                      ; preds = %.noexc49.us, %.noexc49.us.preheader.new
  %indvars.iv388 = phi i64 [ 1, %.noexc49.us.preheader.new ], [ %indvars.iv.next389.1, %.noexc49.us ] ; 3 uses
  %.0300356.us = phi float [ %i.bw, %.noexc49.us.preheader.new ], [ %spec.select.us.1, %.noexc49.us ] ; 3 uses
  %niter = phi i64 [ 0, %.noexc49.us.preheader.new ], [ %niter.next.1, %.noexc49.us ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv388
  %i.cf = load float, ptr %gep, align 4, !tbaa !4595 ; 3 uses
  %i.cg = fcmp uno float %i.cf, 0.000000e+00
  %i.ch = fcmp ord float %.0300356.us, 0.000000e+00
  %or.cond.not.i.i.us = select i1 %i.cg, i1 %i.ch, i1 false
  %i.ci = fcmp ogt float %i.cf, %.0300356.us
  %.0.i.i70.us = select i1 %or.cond.not.i.i.us, i1 true, i1 %i.ci
  %spec.select.us = select i1 %.0.i.i70.us, float %i.cf, float %.0300356.us ; 3 uses
  %i.cj = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv388
  %gep.1 = getelementptr i8, ptr %i.cj, i64 4
  %i.ck = load float, ptr %gep.1, align 4, !tbaa !4595 ; 3 uses
  %i.cl = fcmp uno float %i.ck, 0.000000e+00
  %i.cm = fcmp ord float %spec.select.us, 0.000000e+00
  %or.cond.not.i.i.us.1 = select i1 %i.cl, i1 %i.cm, i1 false
  %i.cn = fcmp ogt float %i.ck, %spec.select.us
  %.0.i.i70.us.1 = select i1 %or.cond.not.i.i.us.1, i1 true, i1 %i.cn
  %spec.select.us.1 = select i1 %.0.i.i70.us.1, float %i.ck, float %spec.select.us ; 3 uses
  %indvars.iv.next389.1 = add nuw nsw i64 %indvars.iv388, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit.thread.loopexit461.unr-lcssa, label %.noexc49.us, !llvm.loop !4748

.noexc49:                                         ; preds = %.noexc49.lr.ph, %.noexc50
  %indvars.iv = phi i64 [ 1, %.noexc49.lr.ph ], [ %indvars.iv.next, %.noexc50 ] ; 2 uses
  %.0300356 = phi float [ %i.bs, %.noexc49.lr.ph ], [ %spec.select, %.noexc50 ] ; 3 uses
  br i1 %i.cc, label %.noexc50, label %bb.j

bb.j:                                             ; preds = %.noexc49
  %i.co = add nsw i64 %indvars.iv, %i.bc
  %i.cp = load ptr, ptr %i.by, align 8, !tbaa !1529
  %i.cq = shl nsw i64 %i.co, 2
  %i.cr = getelementptr inbounds i8, ptr %i.cp, i64 %i.cq
  br label %.noexc50

.noexc50:                                         ; preds = %.noexc49, %bb.j
  %.0.i.i.i.i.in = phi ptr [ %i.cr, %bb.j ], [ %i.bz, %.noexc49 ]
  %.0.i.i.i.i = load i32, ptr %.0.i.i.i.i.in, align 4, !tbaa !3
  %i.cs = sext i32 %.0.i.i.i.i to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.cs
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !4595 ; 3 uses
  %i.cv = fcmp uno float %i.cu, 0.000000e+00
  %i.cw = fcmp ord float %.0300356, 0.000000e+00
  %or.cond.not.i.i = select i1 %i.cv, i1 %i.cw, i1 false
  %i.cx = fcmp ogt float %i.cu, %.0300356
  %.0.i.i70 = select i1 %or.cond.not.i.i, i1 true, i1 %i.cx
  %spec.select = select i1 %.0.i.i70, float %i.cu, float %.0300356 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit.thread, label %.noexc49, !llvm.loop !4748

.noexc53:                                         ; preds = %.noexc46
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.cz, null           ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ay, i64 58
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i, label %.noexc55, label %bb.k

bb.k:                                             ; preds = %.noexc53
  %i.da = trunc nuw i8 %.pre to i1
  %i.db = getelementptr inbounds nuw i8, ptr %i.ay, i64 57
  %i.dc = load i8, ptr %i.db, align 1, !range !796
  %i.dd = trunc nuw i8 %i.dc to i1
  %or.cond.i.i.i = select i1 %i.da, i1 true, i1 %i.dd
  br i1 %or.cond.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.de = lshr i64 %i.bc, 6
  %i.df = and i64 %i.de, 67108863
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !855
  %i.di = and i64 %i.bc, 63
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = and i64 %i.dh, %i.dj
  br label %.noexc54

bb.m:                                             ; preds = %bb.k
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.do = load i64, ptr %i.cz, align 8, !tbaa !855
  %i.dp = and i64 %i.do, 1
  br label %.noexc54

bb.o:                                             ; preds = %bb.m
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1529
  %i.ds = shl nsw i64 %i.bc, 2
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !3
  %i.dv = zext i32 %i.du to i64                   ; 2 uses
  %i.dw = lshr i64 %i.dv, 6
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !855
  %i.dz = and i64 %i.dv, 63
  %i.ea = shl nuw i64 1, %i.dz
  %i.eb = and i64 %i.ea, %i.dy
  br label %.noexc54

.noexc54:                                         ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i.i.in = phi i64 [ %i.dk, %bb.l ], [ %i.dp, %bb.n ], [ %i.eb, %bb.o ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %.loopexit326, label %.noexc55

.noexc55:                                         ; preds = %.noexc53, %.noexc54
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !1547 ; 2 uses
  %i.ee = trunc nuw i8 %.pre to i1                ; 3 uses
  br i1 %i.ee, label %.noexc56, label %bb.p

bb.p:                                             ; preds = %.noexc55
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !1255
  br label %.noexc56

bb.r:                                             ; preds = %bb.p
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !1529
  %i.em = shl nsw i64 %i.bc, 2
  %i.en = getelementptr inbounds i8, ptr %i.el, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3
  br label %.noexc56

.noexc56:                                         ; preds = %bb.r, %bb.q, %.noexc55
  %.0.i.i.i.i75 = phi i32 [ %i.eo, %bb.r ], [ %i.ej, %bb.q ], [ %i.ar, %.noexc55 ]
  %i.ep = sext i32 %.0.i.i.i.i75 to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.ep
  %i.er = load float, ptr %i.eq, align 4, !tbaa !4595 ; 2 uses
  %i.es = add nsw i32 %i.av, %i.ar
  %i.et = icmp eq i32 %i.av, 1
  br i1 %i.et, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit.thread, label %.noexc58.lr.ph

.noexc58.lr.ph:                                   ; preds = %.noexc56
  %.sroa.0279.0360 = add i32 %i.ar, 1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ay, i64 57
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ay, i64 59 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ey = sext i32 %.sroa.0279.0360 to i64
  br label %.noexc58

.noexc58:                                         ; preds = %.noexc58.lr.ph, %.noexc61
  %indvars.iv393 = phi i64 [ %i.ey, %.noexc58.lr.ph ], [ %indvars.iv.next394, %.noexc61 ] ; 6 uses
  %.0303361 = phi float [ %i.er, %.noexc58.lr.ph ], [ %spec.select322, %.noexc61 ] ; 3 uses
  br i1 %.not.i.i.i, label %.noexc60, label %bb.s

bb.s:                                             ; preds = %.noexc58
  %i.ez = load i8, ptr %i.eu, align 1, !range !796
  %i.fa = trunc nuw i8 %i.ez to i1
  %or.cond.i.i.i80 = select i1 %i.ee, i1 true, i1 %i.fa
  br i1 %or.cond.i.i.i80, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fb = lshr i64 %indvars.iv393, 6
  %i.fc = and i64 %i.fb, 67108863
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !855
  %i.ff = and i64 %indvars.iv393, 63
  %i.fg = shl nuw i64 1, %i.ff
  %i.fh = and i64 %i.fe, %i.fg
  br label %.noexc59

bb.u:                                             ; preds = %bb.s
  %i.fi = load i8, ptr %i.ev, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fk = load i64, ptr %i.cz, align 8, !tbaa !855
  %i.fl = and i64 %i.fk, 1
  br label %.noexc59

bb.w:                                             ; preds = %bb.u
  %i.fm = load ptr, ptr %i.ew, align 8, !tbaa !1529
  %i.fn = shl nsw i64 %indvars.iv393, 2
  %i.fo = getelementptr inbounds i8, ptr %i.fm, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !3
  %i.fq = zext i32 %i.fp to i64                   ; 2 uses
  %i.fr = lshr i64 %i.fq, 6
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !855
  %i.fu = and i64 %i.fq, 63
  %i.fv = shl nuw i64 1, %i.fu
  %i.fw = and i64 %i.fv, %i.ft
  br label %.noexc59

.noexc59:                                         ; preds = %bb.w, %bb.v, %bb.t
  %.0.i.i.i83.in = phi i64 [ %i.fh, %bb.t ], [ %i.fl, %bb.v ], [ %i.fw, %bb.w ]
  %.0.i.i.i83.not = icmp eq i64 %.0.i.i.i83.in, 0
  br i1 %.0.i.i.i83.not, label %.loopexit326, label %.noexc60

.noexc60:                                         ; preds = %.noexc58, %.noexc59
  %i.fx = trunc nsw i64 %indvars.iv393 to i32
  br i1 %i.ee, label %.noexc61, label %bb.x

bb.x:                                             ; preds = %.noexc60
  %i.fy = load i8, ptr %i.ev, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ga = load i32, ptr %i.ex, align 8, !tbaa !1255
  br label %.noexc61

bb.z:                                             ; preds = %bb.x
  %i.gb = load ptr, ptr %i.ew, align 8, !tbaa !1529
  %i.gc = shl nsw i64 %indvars.iv393, 2
  %i.gd = getelementptr inbounds i8, ptr %i.gb, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !3
  br label %.noexc61
end_hunk_14
begin_hunk_15_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
          cleanup
  br label %bb.aq

bb.am:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.iw = load ptr, ptr %4, align 8, !tbaa !1108
  %.not.i106 = icmp eq ptr %i.iw, null
  br i1 %.not.i106, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit107, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit107

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit107: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clImEEDaSP_.exit

bb.ao:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.ix = landingpad { ptr, i32 }
          cleanup
  %i.iy = load ptr, ptr %4, align 8, !tbaa !1108
  %.not.i108 = icmp eq ptr %i.iy, null
  br i1 %.not.i108, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109, %bb.al
  %.pn.i41 = phi { ptr, i32 } [ %i.ix, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109 ], [ %i.iv, %bb.al ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ar

common.resume:                                    ; preds = %bb.af, %bb.bw, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit185, %bb.ch, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit105, %bb.aq
  %common.resume.op = phi { ptr, i32 } [ %.pn.i41, %bb.aq ], [ %i.it, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit105 ], [ %.pn.i, %bb.ch ], [ %i.sg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit185 ], [ %i.qx, %bb.bw ], [ %i.hk, %bb.af ]
  resume { ptr, i32 } %common.resume.op

bb.ar:                                            ; preds = %bb.aq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit105
  %i.iz = landingpad { ptr, i32 }
          catch ptr null
  %i.ja = extractvalue { ptr, i32 } %i.iz, 0
  call void @__clang_call_terminate(ptr %i.ja) #44
  unreachable

bb.as:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clImEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit102, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit107
  %i.jb = add nuw i64 %.0364, 1                   ; 2 uses
  %i.jc = icmp ult i64 %i.jb, %i.p
  br i1 %i.jc, label %bb.c, label %.loopexit328, !llvm.loop !4779

bb.at:                                            ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit
  %.015355 = phi i64 [ %i.j, %.lr.ph ], [ %i.sp, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.jd = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015355, i1 true)
  %i.je = trunc nuw nsw i64 %i.jd to i32
  %i.jf = or disjoint i32 %i.l, %i.je             ; 5 uses
  %i.jg = load ptr, ptr %i.m, align 8, !tbaa !4742 ; 2 uses
  %i.jh = load ptr, ptr %i.k, align 8, !tbaa !4744, !nonnull !797, !align !916 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.ji = sext i32 %i.jf to i64                   ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !4745, !nonnull !797, !align !916 ; 4 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 120
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !4623, !nonnull !797, !align !916 ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 58
  %i.jo = load i8, ptr %i.jn, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.jp = trunc nuw i8 %i.jo to i1
  br i1 %i.jp, label %.noexc18, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 59
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.js = trunc nuw i8 %i.jr to i1
  br i1 %i.js, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jm, i64 64
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !1255
  br label %.noexc18

bb.aw:                                            ; preds = %bb.au
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !1529
  %i.jx = shl nsw i64 %i.ji, 2
  %i.jy = getelementptr inbounds i8, ptr %i.jw, i64 %i.jx
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !3
  br label %.noexc18

.noexc18:                                         ; preds = %bb.aw, %bb.av, %bb.at
  %.0.i.i111 = phi i32 [ %i.jz, %bb.aw ], [ %i.ju, %bb.av ], [ %i.jf, %bb.at ]
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jk, i64 136
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !4552
  %i.kc = sext i32 %.0.i.i111 to i64              ; 2 uses
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.kb, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !3  ; 5 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jk, i64 144
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !4555
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.kc
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !3  ; 8 uses
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %.loopexit332, label %.noexc23

.noexc23:                                         ; preds = %.noexc18
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jk, i64 152
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !4624, !nonnull !797, !align !916 ; 22 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 56
  %i.kn = load i8, ptr %i.km, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.ko = trunc nuw i8 %i.kn to i1
  %i.kp = sext i32 %i.ke to i64                   ; 7 uses
  br i1 %i.ko, label %.noexc30, label %.noexc24

.noexc24:                                         ; preds = %.noexc23
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !1547 ; 4 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kl, i64 58
  %i.kt = load i8, ptr %i.ks, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.ku = trunc nuw i8 %i.kt to i1
  br i1 %i.ku, label %.noexc25.thread, label %bb.ax

bb.ax:                                            ; preds = %.noexc24
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kl, i64 59
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.kx = trunc nuw i8 %i.kw to i1
  br i1 %i.kx, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kl, i64 64
  br label %.noexc25

bb.az:                                            ; preds = %bb.ax
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !1529
  %i.lb = shl nsw i64 %i.kp, 2
  %i.lc = getelementptr inbounds i8, ptr %i.la, i64 %i.lb
  br label %.noexc25

.noexc25:                                         ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i122.in = phi ptr [ %i.lc, %bb.az ], [ %i.ky, %bb.ay ]
  %.0.i.i.i.i.i122 = load i32, ptr %.0.i.i.i.i.i122.in, align 4, !tbaa !3
  %i.ld = sext i32 %.0.i.i.i.i.i122 to i64
  %i.le = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.ld
  %i.lf = load float, ptr %i.le, align 4, !tbaa !4595 ; 2 uses
  %i.lg = icmp sgt i32 %i.ki, 1
  br i1 %i.lg, label %.noexc26.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc25.thread:                                  ; preds = %.noexc24
  %i.lh = sext i32 %i.ke to i64
  %i.li = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.lh
  %i.lj = load float, ptr %i.li, align 4, !tbaa !4595 ; 3 uses
  %i.lk = icmp sgt i32 %i.ki, 1
  br i1 %i.lk, label %.noexc26.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc26.lr.ph:                                   ; preds = %.noexc25
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kl, i64 64
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kl, i64 59
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.lp = trunc nuw i8 %i.lo to i1
  %wide.trip.count399 = zext nneg i32 %i.ki to i64
  br label %.noexc26

.noexc26.us.preheader:                            ; preds = %.noexc25.thread
  %wide.trip.count404 = zext nneg i32 %i.ki to i64
  %invariant.gep441 = getelementptr [4 x i8], ptr %i.kr, i64 %i.kp ; 3 uses
  %i.lq = add nsw i64 %wide.trip.count404, -1     ; 3 uses
  %xtraiter471 = and i64 %i.lq, 1
  %i.lr = icmp eq i32 %i.ki, 2
  br i1 %i.lr, label %.noexc26.us.epil.preheader, label %.noexc26.us.preheader.new

.noexc26.us.preheader.new:                        ; preds = %.noexc26.us.preheader
  %unroll_iter475 = and i64 %i.lq, -2
  br label %.noexc26.us

.noexc26.us:                                      ; preds = %.noexc26.us, %.noexc26.us.preheader.new
  %indvars.iv401 = phi i64 [ 1, %.noexc26.us.preheader.new ], [ %indvars.iv.next402.1, %.noexc26.us ] ; 3 uses
  %.0308348.us = phi float [ %i.lj, %.noexc26.us.preheader.new ], [ %spec.select323.us.1, %.noexc26.us ] ; 3 uses
  %niter476 = phi i64 [ 0, %.noexc26.us.preheader.new ], [ %niter476.next.1, %.noexc26.us ]
  %gep442 = getelementptr [4 x i8], ptr %invariant.gep441, i64 %indvars.iv401
  %i.ls = load float, ptr %gep442, align 4, !tbaa !4595 ; 3 uses
  %i.lt = fcmp uno float %i.ls, 0.000000e+00
  %i.lu = fcmp ord float %.0308348.us, 0.000000e+00
  %or.cond.not.i.i129.us = select i1 %i.lt, i1 %i.lu, i1 false
  %i.lv = fcmp ogt float %i.ls, %.0308348.us
  %.0.i.i130.us = select i1 %or.cond.not.i.i129.us, i1 true, i1 %i.lv
  %spec.select323.us = select i1 %.0.i.i130.us, float %i.ls, float %.0308348.us ; 3 uses
  %i.lw = getelementptr [4 x i8], ptr %invariant.gep441, i64 %indvars.iv401
  %gep442.1 = getelementptr i8, ptr %i.lw, i64 4
  %i.lx = load float, ptr %gep442.1, align 4, !tbaa !4595 ; 3 uses
  %i.ly = fcmp uno float %i.lx, 0.000000e+00
  %i.lz = fcmp ord float %spec.select323.us, 0.000000e+00
  %or.cond.not.i.i129.us.1 = select i1 %i.ly, i1 %i.lz, i1 false
  %i.ma = fcmp ogt float %i.lx, %spec.select323.us
  %.0.i.i130.us.1 = select i1 %or.cond.not.i.i129.us.1, i1 true, i1 %i.ma
  %spec.select323.us.1 = select i1 %.0.i.i130.us.1, float %i.lx, float %spec.select323.us ; 3 uses
  %indvars.iv.next402.1 = add nuw nsw i64 %indvars.iv401, 2 ; 2 uses
  %niter476.next.1 = add i64 %niter476, 2         ; 2 uses
  %niter476.ncmp.1 = icmp eq i64 %niter476.next.1, %unroll_iter475
  br i1 %niter476.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread.loopexit456.unr-lcssa, label %.noexc26.us, !llvm.loop !4748

.noexc26:                                         ; preds = %.noexc26.lr.ph, %.noexc27
  %indvars.iv396 = phi i64 [ 1, %.noexc26.lr.ph ], [ %indvars.iv.next397, %.noexc27 ] ; 2 uses
  %.0308348 = phi float [ %i.lf, %.noexc26.lr.ph ], [ %spec.select323, %.noexc27 ] ; 3 uses
  br i1 %i.lp, label %.noexc27, label %bb.ba

bb.ba:                                            ; preds = %.noexc26
  %i.mb = add nsw i64 %indvars.iv396, %i.kp
  %i.mc = load ptr, ptr %i.ll, align 8, !tbaa !1529
  %i.md = shl nsw i64 %i.mb, 2
  %i.me = getelementptr inbounds i8, ptr %i.mc, i64 %i.md
  br label %.noexc27

.noexc27:                                         ; preds = %.noexc26, %bb.ba
  %.0.i.i.i.i127.in = phi ptr [ %i.me, %bb.ba ], [ %i.lm, %.noexc26 ]
  %.0.i.i.i.i127 = load i32, ptr %.0.i.i.i.i127.in, align 4, !tbaa !3
  %i.mf = sext i32 %.0.i.i.i.i127 to i64
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.mf
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !4595 ; 3 uses
  %i.mi = fcmp uno float %i.mh, 0.000000e+00
  %i.mj = fcmp ord float %.0308348, 0.000000e+00
  %or.cond.not.i.i129 = select i1 %i.mi, i1 %i.mj, i1 false
  %i.mk = fcmp ogt float %i.mh, %.0308348
  %.0.i.i130 = select i1 %or.cond.not.i.i129, i1 true, i1 %i.mk
  %spec.select323 = select i1 %.0.i.i130, float %i.mh, float %.0308348 ; 2 uses
  %indvars.iv.next397 = add nuw nsw i64 %indvars.iv396, 1 ; 2 uses
  %exitcond400.not = icmp eq i64 %indvars.iv.next397, %wide.trip.count399
  br i1 %exitcond400.not, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread, label %.noexc26, !llvm.loop !4748

.noexc30:                                         ; preds = %.noexc23
  %i.ml = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i134 = icmp eq ptr %i.mm, null        ; 2 uses
  %.phi.trans.insert410 = getelementptr inbounds nuw i8, ptr %i.kl, i64 58
  %.pre411 = load i8, ptr %.phi.trans.insert410, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i134, label %.noexc32, label %bb.bb

bb.bb:                                            ; preds = %.noexc30
  %i.mn = trunc nuw i8 %.pre411 to i1
  %i.mo = getelementptr inbounds nuw i8, ptr %i.kl, i64 57
  %i.mp = load i8, ptr %i.mo, align 1, !range !796
  %i.mq = trunc nuw i8 %i.mp to i1
  %or.cond.i.i.i135 = select i1 %i.mn, i1 true, i1 %i.mq
  br i1 %or.cond.i.i.i135, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.mr = lshr i64 %i.kp, 6
  %i.ms = and i64 %i.mr, 67108863
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %i.ms
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !855
  %i.mv = and i64 %i.kp, 63
  %i.mw = shl nuw i64 1, %i.mv
  %i.mx = and i64 %i.mu, %i.mw
  br label %.noexc31

bb.bd:                                            ; preds = %bb.bb
  %i.my = getelementptr inbounds nuw i8, ptr %i.kl, i64 59
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.na = trunc nuw i8 %i.mz to i1
  br i1 %i.na, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.nb = load i64, ptr %i.mm, align 8, !tbaa !855
  %i.nc = and i64 %i.nb, 1
  br label %.noexc31

bb.bf:                                            ; preds = %bb.bd
  %i.nd = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !1529
  %i.nf = shl nsw i64 %i.kp, 2
  %i.ng = getelementptr inbounds i8, ptr %i.ne, i64 %i.nf
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !3
  %i.ni = zext i32 %i.nh to i64                   ; 2 uses
  %i.nj = lshr i64 %i.ni, 6
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %i.nj
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !855
  %i.nm = and i64 %i.ni, 63
  %i.nn = shl nuw i64 1, %i.nm
  %i.no = and i64 %i.nn, %i.nl
  br label %.noexc31

.noexc31:                                         ; preds = %bb.bf, %bb.be, %bb.bc
  %.0.i.i.i138.in = phi i64 [ %i.mx, %bb.bc ], [ %i.nc, %bb.be ], [ %i.no, %bb.bf ]
  %.0.i.i.i138.not = icmp eq i64 %.0.i.i.i138.in, 0
  br i1 %.0.i.i.i138.not, label %.loopexit332, label %.noexc32

.noexc32:                                         ; preds = %.noexc30, %.noexc31
  %i.np = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !1547 ; 2 uses
  %i.nr = trunc nuw i8 %.pre411 to i1             ; 3 uses
  br i1 %i.nr, label %.noexc33, label %bb.bg

bb.bg:                                            ; preds = %.noexc32
  %i.ns = getelementptr inbounds nuw i8, ptr %i.kl, i64 59
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.nu = trunc nuw i8 %i.nt to i1
  br i1 %i.nu, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.nv = getelementptr inbounds nuw i8, ptr %i.kl, i64 64
  %i.nw = load i32, ptr %i.nv, align 8, !tbaa !1255
  br label %.noexc33

bb.bi:                                            ; preds = %bb.bg
  %i.nx = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !1529
  %i.nz = shl nsw i64 %i.kp, 2
  %i.oa = getelementptr inbounds i8, ptr %i.ny, i64 %i.nz
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !3
  br label %.noexc33

.noexc33:                                         ; preds = %bb.bi, %bb.bh, %.noexc32
  %.0.i.i.i.i145 = phi i32 [ %i.ob, %bb.bi ], [ %i.nw, %bb.bh ], [ %i.ke, %.noexc32 ]
  %i.oc = sext i32 %.0.i.i.i.i145 to i64
  %i.od = getelementptr inbounds [4 x i8], ptr %i.nq, i64 %i.oc
  %i.oe = load float, ptr %i.od, align 4, !tbaa !4595 ; 2 uses
  %i.of = add nsw i32 %i.ki, %i.ke
  %i.og = icmp eq i32 %i.ki, 1
  br i1 %i.og, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread, label %.noexc35.lr.ph

.noexc35.lr.ph:                                   ; preds = %.noexc33
  %.sroa.0222.0350 = add i32 %i.ke, 1
  %i.oh = getelementptr inbounds nuw i8, ptr %i.kl, i64 57
  %i.oi = getelementptr inbounds nuw i8, ptr %i.kl, i64 59 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.kl, i64 8 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.kl, i64 64
  %i.ol = sext i32 %.sroa.0222.0350 to i64
  br label %.noexc35

.noexc35:                                         ; preds = %.noexc35.lr.ph, %.noexc38
  %indvars.iv406 = phi i64 [ %i.ol, %.noexc35.lr.ph ], [ %indvars.iv.next407, %.noexc38 ] ; 6 uses
  %.0310351 = phi float [ %i.oe, %.noexc35.lr.ph ], [ %spec.select324, %.noexc38 ] ; 3 uses
  br i1 %.not.i.i.i134, label %.noexc37, label %bb.bj

bb.bj:                                            ; preds = %.noexc35
  %i.om = load i8, ptr %i.oh, align 1, !range !796
  %i.on = trunc nuw i8 %i.om to i1
  %or.cond.i.i.i150 = select i1 %i.nr, i1 true, i1 %i.on
  br i1 %or.cond.i.i.i150, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.oo = lshr i64 %indvars.iv406, 6
  %i.op = and i64 %i.oo, 67108863
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %i.op
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !855
  %i.os = and i64 %indvars.iv406, 63
  %i.ot = shl nuw i64 1, %i.os
  %i.ou = and i64 %i.or, %i.ot
  br label %.noexc36

bb.bl:                                            ; preds = %bb.bj
  %i.ov = load i8, ptr %i.oi, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ow = trunc nuw i8 %i.ov to i1
  br i1 %i.ow, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ox = load i64, ptr %i.mm, align 8, !tbaa !855
  %i.oy = and i64 %i.ox, 1
  br label %.noexc36

bb.bn:                                            ; preds = %bb.bl
  %i.oz = load ptr, ptr %i.oj, align 8, !tbaa !1529
  %i.pa = shl nsw i64 %indvars.iv406, 2
  %i.pb = getelementptr inbounds i8, ptr %i.oz, i64 %i.pa
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !3
  %i.pd = zext i32 %i.pc to i64                   ; 2 uses
  %i.pe = lshr i64 %i.pd, 6
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %i.pe
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !855
  %i.ph = and i64 %i.pd, 63
  %i.pi = shl nuw i64 1, %i.ph
  %i.pj = and i64 %i.pi, %i.pg
  br label %.noexc36

.noexc36:                                         ; preds = %bb.bn, %bb.bm, %bb.bk
  %.0.i.i.i153.in = phi i64 [ %i.ou, %bb.bk ], [ %i.oy, %bb.bm ], [ %i.pj, %bb.bn ]
  %.0.i.i.i153.not = icmp eq i64 %.0.i.i.i153.in, 0
  br i1 %.0.i.i.i153.not, label %.loopexit332, label %.noexc37

.noexc37:                                         ; preds = %.noexc35, %.noexc36
  %i.pk = trunc nsw i64 %indvars.iv406 to i32
  br i1 %i.nr, label %.noexc38, label %bb.bo

bb.bo:                                            ; preds = %.noexc37
  %i.pl = load i8, ptr %i.oi, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.pm = trunc nuw i8 %i.pl to i1
  br i1 %i.pm, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.pn = load i32, ptr %i.ok, align 8, !tbaa !1255
  br label %.noexc38

bb.bq:                                            ; preds = %bb.bo
  %i.po = load ptr, ptr %i.oj, align 8, !tbaa !1529
  %i.pp = shl nsw i64 %indvars.iv406, 2
  %i.pq = getelementptr inbounds i8, ptr %i.po, i64 %i.pp
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !3
  br label %.noexc38
end_hunk_15
begin_hunk_16_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_:bb.a
  %.not37.i.i.not.i193.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i193.not, label %.critedge.i.i.i, label %.lr.ph195

bb.f:                                             ; preds = %.lr.ph195
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i194, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph195, label %.critedge.i.i.i, !llvm.loop !1540

.lr.ph195:                                        ; preds = %bb.e, %bb.f
  %indvars.iv.i194 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i194, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !855
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1540

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !855
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph195, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph195 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i27 = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i27, label %bb.h, label %bb.az

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1538 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1536 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit136

.lr.ph:                                           ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !4879 ; 2 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !4944, !nonnull !797, !align !916 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.an = sext i32 %i.ag to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit
  %indvars.iv170 = phi i64 [ %i.an, %.lr.ph ], [ %indvars.iv.next171, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !4945, !nonnull !797, !align !916 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !4941, !nonnull !797, !align !916 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 58
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = trunc nsw i64 %indvars.iv170 to i32     ; 3 uses
  br i1 %i.at, label %.noexc5, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 59
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !1255
  br label %.noexc5

bb.l:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1529
  %i.bc = shl nsw i64 %indvars.iv170, 2
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  br label %.noexc5

.noexc5:                                          ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i = phi i32 [ %i.be, %bb.l ], [ %i.az, %bb.k ], [ %i.au, %bb.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 136
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !4869
  %i.bh = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3  ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ao, i64 144
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !4872
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bh
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3  ; 8 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.loopexit134, label %.noexc10

.noexc10:                                         ; preds = %.noexc5
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ao, i64 152
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !4942, !nonnull !797, !align !916 ; 22 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = sext i32 %i.bj to i64                   ; 7 uses
  br i1 %i.bt, label %.noexc17, label %.noexc11

.noexc11:                                         ; preds = %.noexc10
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1547 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 58
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %.noexc12.thread, label %bb.m

bb.m:                                             ; preds = %.noexc11
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  br label %.noexc12

bb.o:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1529
  %i.cg = shl nsw i64 %i.bu, 2
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 %i.cg
  br label %.noexc12

.noexc12:                                         ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.in = phi ptr [ %i.ch, %bb.o ], [ %i.cd, %bb.n ]
  %.0.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i.in, align 4, !tbaa !3
  %i.ci = sext i32 %.0.i.i.i.i.i to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.ci
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !4912 ; 2 uses
  %i.cl = icmp sgt i32 %i.bn, 1
  br i1 %i.cl, label %.noexc13.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc12.thread:                                  ; preds = %.noexc11
  %i.cm = sext i32 %i.bj to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.cm
  %i.co = load double, ptr %i.cn, align 8, !tbaa !4912 ; 3 uses
  %i.cp = icmp sgt i32 %i.bn, 1
  br i1 %i.cp, label %.noexc13.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc13.lr.ph:                                   ; preds = %.noexc12
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cu = trunc nuw i8 %i.ct to i1
  %wide.trip.count = zext nneg i32 %i.bn to i64
  br label %.noexc13

.noexc13.us.preheader:                            ; preds = %.noexc12.thread
  %wide.trip.count165 = zext nneg i32 %i.bn to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.bw, i64 %i.bu ; 3 uses
  %i.cv = add nsw i64 %wide.trip.count165, -1     ; 3 uses
  %xtraiter = and i64 %i.cv, 1
  %i.cw = icmp eq i32 %i.bn, 2
  br i1 %i.cw, label %.noexc13.us.epil.preheader, label %.noexc13.us.preheader.new

.noexc13.us.preheader.new:                        ; preds = %.noexc13.us.preheader
  %unroll_iter = and i64 %i.cv, -2
  br label %.noexc13.us

.noexc13.us:                                      ; preds = %.noexc13.us, %.noexc13.us.preheader.new
  %indvars.iv162 = phi i64 [ 1, %.noexc13.us.preheader.new ], [ %indvars.iv.next163.1, %.noexc13.us ] ; 3 uses
  %.0123144.us = phi double [ %i.co, %.noexc13.us.preheader.new ], [ %spec.select.us.1, %.noexc13.us ] ; 3 uses
  %niter = phi i64 [ 0, %.noexc13.us.preheader.new ], [ %niter.next.1, %.noexc13.us ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv162
  %i.cx = load double, ptr %gep, align 8, !tbaa !4912 ; 3 uses
  %i.cy = fcmp ord double %i.cx, 0.000000e+00
  %i.cz = fcmp uno double %.0123144.us, 0.000000e+00
  %or.cond.i.i.us = select i1 %i.cy, i1 %i.cz, i1 false
  %i.da = fcmp olt double %i.cx, %.0123144.us
  %.0.i.i33.us = select i1 %or.cond.i.i.us, i1 true, i1 %i.da
  %spec.select.us = select i1 %.0.i.i33.us, double %i.cx, double %.0123144.us ; 3 uses
  %i.db = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv162
  %gep.1 = getelementptr i8, ptr %i.db, i64 8
  %i.dc = load double, ptr %gep.1, align 8, !tbaa !4912 ; 3 uses
  %i.dd = fcmp ord double %i.dc, 0.000000e+00
  %i.de = fcmp uno double %spec.select.us, 0.000000e+00
  %or.cond.i.i.us.1 = select i1 %i.dd, i1 %i.de, i1 false
  %i.df = fcmp olt double %i.dc, %spec.select.us
  %.0.i.i33.us.1 = select i1 %or.cond.i.i.us.1, i1 true, i1 %i.df
  %spec.select.us.1 = select i1 %.0.i.i33.us.1, double %i.dc, double %spec.select.us ; 3 uses
  %indvars.iv.next163.1 = add nuw nsw i64 %indvars.iv162, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread.loopexit196.unr-lcssa, label %.noexc13.us, !llvm.loop !4949

.noexc13:                                         ; preds = %.noexc13.lr.ph, %.noexc14
  %indvars.iv = phi i64 [ 1, %.noexc13.lr.ph ], [ %indvars.iv.next, %.noexc14 ] ; 2 uses
  %.0123144 = phi double [ %i.ck, %.noexc13.lr.ph ], [ %spec.select, %.noexc14 ] ; 3 uses
  br i1 %i.cu, label %.noexc14, label %bb.p

bb.p:                                             ; preds = %.noexc13
  %i.dg = add nsw i64 %indvars.iv, %i.bu
  %i.dh = load ptr, ptr %i.cq, align 8, !tbaa !1529
  %i.di = shl nsw i64 %i.dg, 2
  %i.dj = getelementptr inbounds i8, ptr %i.dh, i64 %i.di
  br label %.noexc14

.noexc14:                                         ; preds = %.noexc13, %bb.p
  %.0.i.i.i.i.in = phi ptr [ %i.dj, %bb.p ], [ %i.cr, %.noexc13 ]
  %.0.i.i.i.i = load i32, ptr %.0.i.i.i.i.in, align 4, !tbaa !3
  %i.dk = sext i32 %.0.i.i.i.i to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !4912 ; 3 uses
  %i.dn = fcmp ord double %i.dm, 0.000000e+00
  %i.do = fcmp uno double %.0123144, 0.000000e+00
  %or.cond.i.i = select i1 %i.dn, i1 %i.do, i1 false
  %i.dp = fcmp olt double %i.dm, %.0123144
  %.0.i.i33 = select i1 %or.cond.i.i, i1 true, i1 %i.dp
  %spec.select = select i1 %.0.i.i33, double %i.dm, double %.0123144 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread, label %.noexc13, !llvm.loop !4949

.noexc17:                                         ; preds = %.noexc10
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.dr, null           ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bq, i64 58
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i, label %.noexc19, label %bb.q

bb.q:                                             ; preds = %.noexc17
  %i.ds = trunc nuw i8 %.pre to i1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bq, i64 57
  %i.du = load i8, ptr %i.dt, align 1, !range !796
  %i.dv = trunc nuw i8 %i.du to i1
  %or.cond.i.i.i = select i1 %i.ds, i1 true, i1 %i.dv
  br i1 %or.cond.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dw = lshr i64 %i.bu, 6
  %i.dx = and i64 %i.dw, 67108863
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !855
  %i.ea = and i64 %i.bu, 63
  %i.eb = shl nuw i64 1, %i.ea
  %i.ec = and i64 %i.dz, %i.eb
  br label %.noexc18

bb.s:                                             ; preds = %bb.q
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.eg = load i64, ptr %i.dr, align 8, !tbaa !855
  %i.eh = and i64 %i.eg, 1
  br label %.noexc18

bb.u:                                             ; preds = %bb.s
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !1529
  %i.ek = shl nsw i64 %i.bu, 2
  %i.el = getelementptr inbounds i8, ptr %i.ej, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !3
  %i.en = zext i32 %i.em to i64                   ; 2 uses
  %i.eo = lshr i64 %i.en, 6
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !855
  %i.er = and i64 %i.en, 63
  %i.es = shl nuw i64 1, %i.er
  %i.et = and i64 %i.es, %i.eq
  br label %.noexc18

.noexc18:                                         ; preds = %bb.u, %bb.t, %bb.r
  %.0.i.i.i.in = phi i64 [ %i.ec, %bb.r ], [ %i.eh, %bb.t ], [ %i.et, %bb.u ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %.loopexit134, label %.noexc19

.noexc19:                                         ; preds = %.noexc17, %.noexc18
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !1547 ; 2 uses
  %i.ew = trunc nuw i8 %.pre to i1                ; 3 uses
  br i1 %i.ew, label %.noexc20, label %bb.v

bb.v:                                             ; preds = %.noexc19
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !1255
  br label %.noexc20

bb.x:                                             ; preds = %bb.v
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !1529
  %i.fe = shl nsw i64 %i.bu, 2
  %i.ff = getelementptr inbounds i8, ptr %i.fd, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !3
  br label %.noexc20

.noexc20:                                         ; preds = %bb.x, %bb.w, %.noexc19
  %.0.i.i.i.i38 = phi i32 [ %i.fg, %bb.x ], [ %i.fb, %bb.w ], [ %i.bj, %.noexc19 ]
  %i.fh = sext i32 %.0.i.i.i.i38 to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %i.fh
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !4912 ; 2 uses
  %i.fk = add nsw i32 %i.bn, %i.bj
  %i.fl = icmp eq i32 %i.bn, 1
  br i1 %i.fl, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread, label %.noexc22.lr.ph

.noexc22.lr.ph:                                   ; preds = %.noexc20
  %.sroa.0105.0146 = add i32 %i.bj, 1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bq, i64 57
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bq, i64 59 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.fq = sext i32 %.sroa.0105.0146 to i64
  br label %.noexc22

.noexc22:                                         ; preds = %.noexc22.lr.ph, %.noexc25
  %indvars.iv167 = phi i64 [ %i.fq, %.noexc22.lr.ph ], [ %indvars.iv.next168, %.noexc25 ] ; 6 uses
  %.0126147 = phi double [ %i.fj, %.noexc22.lr.ph ], [ %spec.select132, %.noexc25 ] ; 3 uses
  br i1 %.not.i.i.i, label %.noexc24, label %bb.y

bb.y:                                             ; preds = %.noexc22
  %i.fr = load i8, ptr %i.fm, align 1, !range !796
  %i.fs = trunc nuw i8 %i.fr to i1
  %or.cond.i.i.i43 = select i1 %i.ew, i1 true, i1 %i.fs
  br i1 %or.cond.i.i.i43, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ft = lshr i64 %indvars.iv167, 6
  %i.fu = and i64 %i.ft, 67108863
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.fu
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !855
  %i.fx = and i64 %indvars.iv167, 63
  %i.fy = shl nuw i64 1, %i.fx
  %i.fz = and i64 %i.fw, %i.fy
  br label %.noexc23

bb.aa:                                            ; preds = %bb.y
  %i.ga = load i8, ptr %i.fn, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gc = load i64, ptr %i.dr, align 8, !tbaa !855
  %i.gd = and i64 %i.gc, 1
  br label %.noexc23

bb.ac:                                            ; preds = %bb.aa
  %i.ge = load ptr, ptr %i.fo, align 8, !tbaa !1529
  %i.gf = shl nsw i64 %indvars.iv167, 2
  %i.gg = getelementptr inbounds i8, ptr %i.ge, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !3
  %i.gi = zext i32 %i.gh to i64                   ; 2 uses
  %i.gj = lshr i64 %i.gi, 6
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.gj
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !855
  %i.gm = and i64 %i.gi, 63
  %i.gn = shl nuw i64 1, %i.gm
  %i.go = and i64 %i.gn, %i.gl
  br label %.noexc23

.noexc23:                                         ; preds = %bb.ac, %bb.ab, %bb.z
  %.0.i.i.i46.in = phi i64 [ %i.fz, %bb.z ], [ %i.gd, %bb.ab ], [ %i.go, %bb.ac ]
  %.0.i.i.i46.not = icmp eq i64 %.0.i.i.i46.in, 0
  br i1 %.0.i.i.i46.not, label %.loopexit134, label %.noexc24

.noexc24:                                         ; preds = %.noexc22, %.noexc23
  %i.gp = trunc nsw i64 %indvars.iv167 to i32
  br i1 %i.ew, label %.noexc25, label %bb.ad

bb.ad:                                            ; preds = %.noexc24
  %i.gq = load i8, ptr %i.fn, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gs = load i32, ptr %i.fp, align 8, !tbaa !1255
  br label %.noexc25

bb.af:                                            ; preds = %bb.ad
  %i.gt = load ptr, ptr %i.fo, align 8, !tbaa !1529
  %i.gu = shl nsw i64 %indvars.iv167, 2
  %i.gv = getelementptr inbounds i8, ptr %i.gt, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !3
  br label %.noexc25
end_hunk_16
begin_hunk_17_@_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_:bb.a
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS4_10VectorExecEEESC_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSG_EEEE7iterateIJNS4_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !4962

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS4_10VectorExecEEESC_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSG_EEEE7iterateIJNS4_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS4_10VectorExecEEESC_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSG_EEEE7iterateIJNS4_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !4963, !range !796, !noundef !797
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4965
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !855
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit141, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit
  %.0155 = phi i64 [ %i.k, %.preheader ], [ %i.ja, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.o = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0155, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 5 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !4879 ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !4944, !nonnull !797, !align !916 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.t = sext i32 %i.q to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !4945, !nonnull !797, !align !916 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !4941, !nonnull !797, !align !916 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 58
  %i.z = load i8, ptr %i.y, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.noexc12, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 59
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1255
  br label %.noexc12

bb.e:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1529
  %i.ai = shl nsw i64 %i.t, 2
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  br label %.noexc12

.noexc12:                                         ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i = phi i32 [ %i.ak, %bb.e ], [ %i.af, %bb.d ], [ %i.q, %bb.b ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !4869
  %i.an = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3  ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !4872
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.an
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3  ; 8 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.loopexit139, label %.noexc17

.noexc17:                                         ; preds = %.noexc12
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !4942, !nonnull !797, !align !916 ; 22 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = sext i32 %i.ap to i64                   ; 7 uses
  br i1 %i.az, label %.noexc24, label %.noexc18

.noexc18:                                         ; preds = %.noexc17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1547 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 58
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.noexc19.thread, label %bb.f

bb.f:                                             ; preds = %.noexc18
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  br label %.noexc19

bb.h:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1529
  %i.bm = shl nsw i64 %i.ba, 2
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 %i.bm
  br label %.noexc19

.noexc19:                                         ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.in = phi ptr [ %i.bn, %bb.h ], [ %i.bj, %bb.g ]
  %.0.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i.in, align 4, !tbaa !3
  %i.bo = sext i32 %.0.i.i.i.i.i to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !4912 ; 2 uses
  %i.br = icmp sgt i32 %i.at, 1
  br i1 %i.br, label %.noexc20.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc19.thread:                                  ; preds = %.noexc18
  %i.bs = sext i32 %i.ap to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !4912 ; 3 uses
  %i.bv = icmp sgt i32 %i.at, 1
  br i1 %i.bv, label %.noexc20.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc20.lr.ph:                                   ; preds = %.noexc19
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ca = trunc nuw i8 %i.bz to i1
  %wide.trip.count = zext nneg i32 %i.at to i64
  br label %.noexc20

.noexc20.us.preheader:                            ; preds = %.noexc19.thread
  %wide.trip.count167 = zext nneg i32 %i.at to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.bc, i64 %i.ba ; 3 uses
  %i.cb = add nsw i64 %wide.trip.count167, -1     ; 3 uses
  %xtraiter = and i64 %i.cb, 1
  %i.cc = icmp eq i32 %i.at, 2
  br i1 %i.cc, label %.noexc20.us.epil.preheader, label %.noexc20.us.preheader.new

.noexc20.us.preheader.new:                        ; preds = %.noexc20.us.preheader
  %unroll_iter = and i64 %i.cb, -2
  br label %.noexc20.us

.noexc20.us:                                      ; preds = %.noexc20.us, %.noexc20.us.preheader.new
  %indvars.iv164 = phi i64 [ 1, %.noexc20.us.preheader.new ], [ %indvars.iv.next165.1, %.noexc20.us ] ; 3 uses
  %.0128149.us = phi double [ %i.bu, %.noexc20.us.preheader.new ], [ %spec.select.us.1, %.noexc20.us ] ; 3 uses
  %niter = phi i64 [ 0, %.noexc20.us.preheader.new ], [ %niter.next.1, %.noexc20.us ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv164
  %i.cd = load double, ptr %gep, align 8, !tbaa !4912 ; 3 uses
  %i.ce = fcmp ord double %i.cd, 0.000000e+00
  %i.cf = fcmp uno double %.0128149.us, 0.000000e+00
  %or.cond.i.i.us = select i1 %i.ce, i1 %i.cf, i1 false
  %i.cg = fcmp olt double %i.cd, %.0128149.us
  %.0.i.i38.us = select i1 %or.cond.i.i.us, i1 true, i1 %i.cg
  %spec.select.us = select i1 %.0.i.i38.us, double %i.cd, double %.0128149.us ; 3 uses
  %i.ch = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv164
  %gep.1 = getelementptr i8, ptr %i.ch, i64 8
  %i.ci = load double, ptr %gep.1, align 8, !tbaa !4912 ; 3 uses
  %i.cj = fcmp ord double %i.ci, 0.000000e+00
  %i.ck = fcmp uno double %spec.select.us, 0.000000e+00
  %or.cond.i.i.us.1 = select i1 %i.cj, i1 %i.ck, i1 false
  %i.cl = fcmp olt double %i.ci, %spec.select.us
  %.0.i.i38.us.1 = select i1 %or.cond.i.i.us.1, i1 true, i1 %i.cl
  %spec.select.us.1 = select i1 %.0.i.i38.us.1, double %i.ci, double %spec.select.us ; 3 uses
  %indvars.iv.next165.1 = add nuw nsw i64 %indvars.iv164, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread.loopexit190.unr-lcssa, label %.noexc20.us, !llvm.loop !4949

.noexc20:                                         ; preds = %.noexc20.lr.ph, %.noexc21
  %indvars.iv = phi i64 [ 1, %.noexc20.lr.ph ], [ %indvars.iv.next, %.noexc21 ] ; 2 uses
  %.0128149 = phi double [ %i.bq, %.noexc20.lr.ph ], [ %spec.select, %.noexc21 ] ; 3 uses
  br i1 %i.ca, label %.noexc21, label %bb.i

bb.i:                                             ; preds = %.noexc20
  %i.cm = add nsw i64 %indvars.iv, %i.ba
  %i.cn = load ptr, ptr %i.bw, align 8, !tbaa !1529
  %i.co = shl nsw i64 %i.cm, 2
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 %i.co
  br label %.noexc21

.noexc21:                                         ; preds = %.noexc20, %bb.i
  %.0.i.i.i.i.in = phi ptr [ %i.cp, %bb.i ], [ %i.bx, %.noexc20 ]
  %.0.i.i.i.i = load i32, ptr %.0.i.i.i.i.in, align 4, !tbaa !3
  %i.cq = sext i32 %.0.i.i.i.i to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.cq
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !4912 ; 3 uses
  %i.ct = fcmp ord double %i.cs, 0.000000e+00
  %i.cu = fcmp uno double %.0128149, 0.000000e+00
  %or.cond.i.i = select i1 %i.ct, i1 %i.cu, i1 false
  %i.cv = fcmp olt double %i.cs, %.0128149
  %.0.i.i38 = select i1 %or.cond.i.i, i1 true, i1 %i.cv
  %spec.select = select i1 %.0.i.i38, double %i.cs, double %.0128149 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread, label %.noexc20, !llvm.loop !4949

.noexc24:                                         ; preds = %.noexc17
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.cx, null           ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aw, i64 58
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i, label %.noexc26, label %bb.j

bb.j:                                             ; preds = %.noexc24
  %i.cy = trunc nuw i8 %.pre to i1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.aw, i64 57
  %i.da = load i8, ptr %i.cz, align 1, !range !796
  %i.db = trunc nuw i8 %i.da to i1
  %or.cond.i.i.i = select i1 %i.cy, i1 true, i1 %i.db
  br i1 %or.cond.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dc = lshr i64 %i.ba, 6
  %i.dd = and i64 %i.dc, 67108863
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !855
  %i.dg = and i64 %i.ba, 63
  %i.dh = shl nuw i64 1, %i.dg
  %i.di = and i64 %i.df, %i.dh
  br label %.noexc25

bb.l:                                             ; preds = %bb.j
  %i.dj = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dm = load i64, ptr %i.cx, align 8, !tbaa !855
  %i.dn = and i64 %i.dm, 1
  br label %.noexc25

bb.n:                                             ; preds = %bb.l
  %i.do = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1529
  %i.dq = shl nsw i64 %i.ba, 2
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !3
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %i.du = lshr i64 %i.dt, 6
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !855
  %i.dx = and i64 %i.dt, 63
  %i.dy = shl nuw i64 1, %i.dx
  %i.dz = and i64 %i.dy, %i.dw
  br label %.noexc25

.noexc25:                                         ; preds = %bb.n, %bb.m, %bb.k
  %.0.i.i.i.in = phi i64 [ %i.di, %bb.k ], [ %i.dn, %bb.m ], [ %i.dz, %bb.n ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %.loopexit139, label %.noexc26

.noexc26:                                         ; preds = %.noexc24, %.noexc25
  %i.ea = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !1547 ; 2 uses
  %i.ec = trunc nuw i8 %.pre to i1                ; 3 uses
  br i1 %i.ec, label %.noexc27, label %bb.o

bb.o:                                             ; preds = %.noexc26
  %i.ed = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.eg = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !1255
  br label %.noexc27

bb.q:                                             ; preds = %bb.o
  %i.ei = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !1529
  %i.ek = shl nsw i64 %i.ba, 2
  %i.el = getelementptr inbounds i8, ptr %i.ej, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !3
  br label %.noexc27

.noexc27:                                         ; preds = %bb.q, %bb.p, %.noexc26
  %.0.i.i.i.i43 = phi i32 [ %i.em, %bb.q ], [ %i.eh, %bb.p ], [ %i.ap, %.noexc26 ]
  %i.en = sext i32 %.0.i.i.i.i43 to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.en
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !4912 ; 2 uses
  %i.eq = add nsw i32 %i.at, %i.ap
  %i.er = icmp eq i32 %i.at, 1
  br i1 %i.er, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread, label %.noexc29.lr.ph

.noexc29.lr.ph:                                   ; preds = %.noexc27
  %.sroa.0110.0151 = add i32 %i.ap, 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.aw, i64 57
  %i.et = getelementptr inbounds nuw i8, ptr %i.aw, i64 59 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.ew = sext i32 %.sroa.0110.0151 to i64
  br label %.noexc29

.noexc29:                                         ; preds = %.noexc29.lr.ph, %.noexc32
  %indvars.iv169 = phi i64 [ %i.ew, %.noexc29.lr.ph ], [ %indvars.iv.next170, %.noexc32 ] ; 6 uses
  %.0131152 = phi double [ %i.ep, %.noexc29.lr.ph ], [ %spec.select137, %.noexc32 ] ; 3 uses
  br i1 %.not.i.i.i, label %.noexc31, label %bb.r

bb.r:                                             ; preds = %.noexc29
  %i.ex = load i8, ptr %i.es, align 1, !range !796
  %i.ey = trunc nuw i8 %i.ex to i1
  %or.cond.i.i.i48 = select i1 %i.ec, i1 true, i1 %i.ey
  br i1 %or.cond.i.i.i48, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ez = lshr i64 %indvars.iv169, 6
  %i.fa = and i64 %i.ez, 67108863
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.fa
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !855
  %i.fd = and i64 %indvars.iv169, 63
  %i.fe = shl nuw i64 1, %i.fd
  %i.ff = and i64 %i.fc, %i.fe
  br label %.noexc30

bb.t:                                             ; preds = %bb.r
  %i.fg = load i8, ptr %i.et, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fi = load i64, ptr %i.cx, align 8, !tbaa !855
  %i.fj = and i64 %i.fi, 1
  br label %.noexc30

bb.v:                                             ; preds = %bb.t
  %i.fk = load ptr, ptr %i.eu, align 8, !tbaa !1529
  %i.fl = shl nsw i64 %indvars.iv169, 2
  %i.fm = getelementptr inbounds i8, ptr %i.fk, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3
  %i.fo = zext i32 %i.fn to i64                   ; 2 uses
  %i.fp = lshr i64 %i.fo, 6
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.fp
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !855
  %i.fs = and i64 %i.fo, 63
  %i.ft = shl nuw i64 1, %i.fs
  %i.fu = and i64 %i.ft, %i.fr
  br label %.noexc30

.noexc30:                                         ; preds = %bb.v, %bb.u, %bb.s
  %.0.i.i.i51.in = phi i64 [ %i.ff, %bb.s ], [ %i.fj, %bb.u ], [ %i.fu, %bb.v ]
  %.0.i.i.i51.not = icmp eq i64 %.0.i.i.i51.in, 0
  br i1 %.0.i.i.i51.not, label %.loopexit139, label %.noexc31

.noexc31:                                         ; preds = %.noexc29, %.noexc30
  %i.fv = trunc nsw i64 %indvars.iv169 to i32
  br i1 %i.ec, label %.noexc32, label %bb.w

bb.w:                                             ; preds = %.noexc31
  %i.fw = load i8, ptr %i.et, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fy = load i32, ptr %i.ev, align 8, !tbaa !1255
  br label %.noexc32

bb.y:                                             ; preds = %bb.w
  %i.fz = load ptr, ptr %i.eu, align 8, !tbaa !1529
  %i.ga = shl nsw i64 %indvars.iv169, 2
  %i.gb = getelementptr inbounds i8, ptr %i.fz, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !3
  br label %.noexc32
end_hunk_17
begin_hunk_18_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim:bb.a
  unreachable

bb.ar:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit70, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit75
  %i.iz = add i64 %.0155, -1
  %i.ja = and i64 %i.iz, %.0155                   ; 2 uses
  %.not10 = icmp eq i64 %i.ja, 0
  br i1 %.not10, label %.loopexit141, label %bb.b, !llvm.loop !4971

.loopexit141:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %5 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !4972, !range !796, !noundef !797
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4974
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !855
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit328
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.at

bb.b:                                             ; preds = %bb.a
  %i.n = shl i32 %1, 6                            ; 3 uses
  %i.o = add i32 %i.n, 64
  %i.p = sext i32 %i.o to i64
  %.not369 = icmp eq i32 %i.n, -64
  br i1 %.not369, label %.loopexit328, label %.lr.ph368

.lr.ph368:                                        ; preds = %bb.b
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph368, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clImEEDaSP_.exit
  %.0364 = phi i64 [ %i.q, %.lr.ph368 ], [ %i.jb, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clImEEDaSP_.exit ] ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !4879 ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !4944, !nonnull !797, !align !916 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !4945, !nonnull !797, !align !916 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !4941, !nonnull !797, !align !916 ; 4 uses
  %i.z = trunc i64 %.0364 to i32                  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 58
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.noexc45, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 59
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !1255
  br label %.noexc45

bb.f:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1529
  %sext.i = shl i64 %.0364, 32
  %i.ak = ashr exact i64 %sext.i, 30
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  br label %.noexc45

.noexc45:                                         ; preds = %bb.f, %bb.e, %bb.c
  %.0.i.i65 = phi i32 [ %i.am, %bb.f ], [ %i.ah, %bb.e ], [ %i.z, %bb.c ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !4869
  %i.ap = sext i32 %.0.i.i65 to i64               ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3  ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !4872
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ap
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3  ; 8 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.loopexit326, label %.noexc46

.noexc46:                                         ; preds = %.noexc45
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !4942, !nonnull !797, !align !916 ; 22 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = sext i32 %i.ar to i64                   ; 7 uses
  br i1 %i.bb, label %.noexc53, label %.noexc47

.noexc47:                                         ; preds = %.noexc46
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1547 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 58
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %.noexc48.thread, label %bb.g

bb.g:                                             ; preds = %.noexc47
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  br label %.noexc48

bb.i:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1529
  %i.bo = shl nsw i64 %i.bc, 2
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 %i.bo
  br label %.noexc48

.noexc48:                                         ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.in = phi ptr [ %i.bp, %bb.i ], [ %i.bl, %bb.h ]
  %.0.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i.in, align 4, !tbaa !3
  %i.bq = sext i32 %.0.i.i.i.i.i to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !4912 ; 2 uses
  %i.bt = icmp sgt i32 %i.av, 1
  br i1 %i.bt, label %.noexc49.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit.thread

.noexc48.thread:                                  ; preds = %.noexc47
  %i.bu = sext i32 %i.ar to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bu
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !4912 ; 3 uses
  %i.bx = icmp sgt i32 %i.av, 1
  br i1 %i.bx, label %.noexc49.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit.thread

.noexc49.lr.ph:                                   ; preds = %.noexc48
  %i.by = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cc = trunc nuw i8 %i.cb to i1
  %wide.trip.count = zext nneg i32 %i.av to i64
  br label %.noexc49

.noexc49.us.preheader:                            ; preds = %.noexc48.thread
  %wide.trip.count391 = zext nneg i32 %i.av to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.be, i64 %i.bc ; 3 uses
  %i.cd = add nsw i64 %wide.trip.count391, -1     ; 3 uses
  %xtraiter = and i64 %i.cd, 1
  %i.ce = icmp eq i32 %i.av, 2
  br i1 %i.ce, label %.noexc49.us.epil.preheader, label %.noexc49.us.preheader.new

.noexc49.us.preheader.new:                        ; preds = %.noexc49.us.preheader
  %unroll_iter = and i64 %i.cd, -2
  br label %.noexc49.us

.noexc49.us:                                      ; preds = %.noexc49.us, %.noexc49.us.preheader.new
  %indvars.iv388 = phi i64 [ 1, %.noexc49.us.preheader.new ], [ %indvars.iv.next389.1, %.noexc49.us ] ; 3 uses
  %.0300356.us = phi double [ %i.bw, %.noexc49.us.preheader.new ], [ %spec.select.us.1, %.noexc49.us ] ; 3 uses
  %niter = phi i64 [ 0, %.noexc49.us.preheader.new ], [ %niter.next.1, %.noexc49.us ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv388
  %i.cf = load double, ptr %gep, align 8, !tbaa !4912 ; 3 uses
  %i.cg = fcmp ord double %i.cf, 0.000000e+00
  %i.ch = fcmp uno double %.0300356.us, 0.000000e+00
  %or.cond.i.i.us = select i1 %i.cg, i1 %i.ch, i1 false
  %i.ci = fcmp olt double %i.cf, %.0300356.us
  %.0.i.i70.us = select i1 %or.cond.i.i.us, i1 true, i1 %i.ci
  %spec.select.us = select i1 %.0.i.i70.us, double %i.cf, double %.0300356.us ; 3 uses
  %i.cj = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv388
  %gep.1 = getelementptr i8, ptr %i.cj, i64 8
  %i.ck = load double, ptr %gep.1, align 8, !tbaa !4912 ; 3 uses
  %i.cl = fcmp ord double %i.ck, 0.000000e+00
  %i.cm = fcmp uno double %spec.select.us, 0.000000e+00
  %or.cond.i.i.us.1 = select i1 %i.cl, i1 %i.cm, i1 false
  %i.cn = fcmp olt double %i.ck, %spec.select.us
  %.0.i.i70.us.1 = select i1 %or.cond.i.i.us.1, i1 true, i1 %i.cn
  %spec.select.us.1 = select i1 %.0.i.i70.us.1, double %i.ck, double %spec.select.us ; 3 uses
  %indvars.iv.next389.1 = add nuw nsw i64 %indvars.iv388, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit.thread.loopexit461.unr-lcssa, label %.noexc49.us, !llvm.loop !4949

.noexc49:                                         ; preds = %.noexc49.lr.ph, %.noexc50
  %indvars.iv = phi i64 [ 1, %.noexc49.lr.ph ], [ %indvars.iv.next, %.noexc50 ] ; 2 uses
  %.0300356 = phi double [ %i.bs, %.noexc49.lr.ph ], [ %spec.select, %.noexc50 ] ; 3 uses
  br i1 %i.cc, label %.noexc50, label %bb.j

bb.j:                                             ; preds = %.noexc49
  %i.co = add nsw i64 %indvars.iv, %i.bc
  %i.cp = load ptr, ptr %i.by, align 8, !tbaa !1529
  %i.cq = shl nsw i64 %i.co, 2
  %i.cr = getelementptr inbounds i8, ptr %i.cp, i64 %i.cq
  br label %.noexc50

.noexc50:                                         ; preds = %.noexc49, %bb.j
  %.0.i.i.i.i.in = phi ptr [ %i.cr, %bb.j ], [ %i.bz, %.noexc49 ]
  %.0.i.i.i.i = load i32, ptr %.0.i.i.i.i.in, align 4, !tbaa !3
  %i.cs = sext i32 %.0.i.i.i.i to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.cs
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !4912 ; 3 uses
  %i.cv = fcmp ord double %i.cu, 0.000000e+00
  %i.cw = fcmp uno double %.0300356, 0.000000e+00
  %or.cond.i.i = select i1 %i.cv, i1 %i.cw, i1 false
  %i.cx = fcmp olt double %i.cu, %.0300356
  %.0.i.i70 = select i1 %or.cond.i.i, i1 true, i1 %i.cx
  %spec.select = select i1 %.0.i.i70, double %i.cu, double %.0300356 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit.thread, label %.noexc49, !llvm.loop !4949

.noexc53:                                         ; preds = %.noexc46
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.cz, null           ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ay, i64 58
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i, label %.noexc55, label %bb.k

bb.k:                                             ; preds = %.noexc53
  %i.da = trunc nuw i8 %.pre to i1
  %i.db = getelementptr inbounds nuw i8, ptr %i.ay, i64 57
  %i.dc = load i8, ptr %i.db, align 1, !range !796
  %i.dd = trunc nuw i8 %i.dc to i1
  %or.cond.i.i.i = select i1 %i.da, i1 true, i1 %i.dd
  br i1 %or.cond.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.de = lshr i64 %i.bc, 6
  %i.df = and i64 %i.de, 67108863
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !855
  %i.di = and i64 %i.bc, 63
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = and i64 %i.dh, %i.dj
  br label %.noexc54

bb.m:                                             ; preds = %bb.k
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.do = load i64, ptr %i.cz, align 8, !tbaa !855
  %i.dp = and i64 %i.do, 1
  br label %.noexc54

bb.o:                                             ; preds = %bb.m
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1529
  %i.ds = shl nsw i64 %i.bc, 2
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !3
  %i.dv = zext i32 %i.du to i64                   ; 2 uses
  %i.dw = lshr i64 %i.dv, 6
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !855
  %i.dz = and i64 %i.dv, 63
  %i.ea = shl nuw i64 1, %i.dz
  %i.eb = and i64 %i.ea, %i.dy
  br label %.noexc54

.noexc54:                                         ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i.i.in = phi i64 [ %i.dk, %bb.l ], [ %i.dp, %bb.n ], [ %i.eb, %bb.o ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %.loopexit326, label %.noexc55

.noexc55:                                         ; preds = %.noexc53, %.noexc54
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !1547 ; 2 uses
  %i.ee = trunc nuw i8 %.pre to i1                ; 3 uses
  br i1 %i.ee, label %.noexc56, label %bb.p

bb.p:                                             ; preds = %.noexc55
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !1255
  br label %.noexc56

bb.r:                                             ; preds = %bb.p
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !1529
  %i.em = shl nsw i64 %i.bc, 2
  %i.en = getelementptr inbounds i8, ptr %i.el, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3
  br label %.noexc56

.noexc56:                                         ; preds = %bb.r, %bb.q, %.noexc55
  %.0.i.i.i.i75 = phi i32 [ %i.eo, %bb.r ], [ %i.ej, %bb.q ], [ %i.ar, %.noexc55 ]
  %i.ep = sext i32 %.0.i.i.i.i75 to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ep
  %i.er = load double, ptr %i.eq, align 8, !tbaa !4912 ; 2 uses
  %i.es = add nsw i32 %i.av, %i.ar
  %i.et = icmp eq i32 %i.av, 1
  br i1 %i.et, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit.thread, label %.noexc58.lr.ph

.noexc58.lr.ph:                                   ; preds = %.noexc56
  %.sroa.0279.0360 = add i32 %i.ar, 1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ay, i64 57
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ay, i64 59 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ey = sext i32 %.sroa.0279.0360 to i64
  br label %.noexc58

.noexc58:                                         ; preds = %.noexc58.lr.ph, %.noexc61
  %indvars.iv393 = phi i64 [ %i.ey, %.noexc58.lr.ph ], [ %indvars.iv.next394, %.noexc61 ] ; 6 uses
  %.0303361 = phi double [ %i.er, %.noexc58.lr.ph ], [ %spec.select322, %.noexc61 ] ; 3 uses
  br i1 %.not.i.i.i, label %.noexc60, label %bb.s

bb.s:                                             ; preds = %.noexc58
  %i.ez = load i8, ptr %i.eu, align 1, !range !796
  %i.fa = trunc nuw i8 %i.ez to i1
  %or.cond.i.i.i80 = select i1 %i.ee, i1 true, i1 %i.fa
  br i1 %or.cond.i.i.i80, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fb = lshr i64 %indvars.iv393, 6
  %i.fc = and i64 %i.fb, 67108863
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !855
  %i.ff = and i64 %indvars.iv393, 63
  %i.fg = shl nuw i64 1, %i.ff
  %i.fh = and i64 %i.fe, %i.fg
  br label %.noexc59

bb.u:                                             ; preds = %bb.s
  %i.fi = load i8, ptr %i.ev, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fk = load i64, ptr %i.cz, align 8, !tbaa !855
  %i.fl = and i64 %i.fk, 1
  br label %.noexc59

bb.w:                                             ; preds = %bb.u
  %i.fm = load ptr, ptr %i.ew, align 8, !tbaa !1529
  %i.fn = shl nsw i64 %indvars.iv393, 2
  %i.fo = getelementptr inbounds i8, ptr %i.fm, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !3
  %i.fq = zext i32 %i.fp to i64                   ; 2 uses
  %i.fr = lshr i64 %i.fq, 6
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !855
  %i.fu = and i64 %i.fq, 63
  %i.fv = shl nuw i64 1, %i.fu
  %i.fw = and i64 %i.fv, %i.ft
  br label %.noexc59

.noexc59:                                         ; preds = %bb.w, %bb.v, %bb.t
  %.0.i.i.i83.in = phi i64 [ %i.fh, %bb.t ], [ %i.fl, %bb.v ], [ %i.fw, %bb.w ]
  %.0.i.i.i83.not = icmp eq i64 %.0.i.i.i83.in, 0
  br i1 %.0.i.i.i83.not, label %.loopexit326, label %.noexc60

.noexc60:                                         ; preds = %.noexc58, %.noexc59
  %i.fx = trunc nsw i64 %indvars.iv393 to i32
  br i1 %i.ee, label %.noexc61, label %bb.x

bb.x:                                             ; preds = %.noexc60
  %i.fy = load i8, ptr %i.ev, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ga = load i32, ptr %i.ex, align 8, !tbaa !1255
  br label %.noexc61

bb.z:                                             ; preds = %bb.x
  %i.gb = load ptr, ptr %i.ew, align 8, !tbaa !1529
  %i.gc = shl nsw i64 %indvars.iv393, 2
  %i.gd = getelementptr inbounds i8, ptr %i.gb, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !3
  br label %.noexc61
end_hunk_18
begin_hunk_19_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
          cleanup
  br label %bb.aq

bb.am:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.iw = load ptr, ptr %4, align 8, !tbaa !1108
  %.not.i106 = icmp eq ptr %i.iw, null
  br i1 %.not.i106, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit107, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit107

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit107: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clImEEDaSP_.exit

bb.ao:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.ix = landingpad { ptr, i32 }
          cleanup
  %i.iy = load ptr, ptr %4, align 8, !tbaa !1108
  %.not.i108 = icmp eq ptr %i.iy, null
  br i1 %.not.i108, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109, %bb.al
  %.pn.i41 = phi { ptr, i32 } [ %i.ix, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109 ], [ %i.iv, %bb.al ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ar

common.resume:                                    ; preds = %bb.af, %bb.bw, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit185, %bb.ch, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit105, %bb.aq
  %common.resume.op = phi { ptr, i32 } [ %.pn.i41, %bb.aq ], [ %i.it, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit105 ], [ %.pn.i, %bb.ch ], [ %i.sg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit185 ], [ %i.qx, %bb.bw ], [ %i.hk, %bb.af ]
  resume { ptr, i32 } %common.resume.op

bb.ar:                                            ; preds = %bb.aq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit105
  %i.iz = landingpad { ptr, i32 }
          catch ptr null
  %i.ja = extractvalue { ptr, i32 } %i.iz, 0
  call void @__clang_call_terminate(ptr %i.ja) #44
  unreachable

bb.as:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clImEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit102, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit107
  %i.jb = add nuw i64 %.0364, 1                   ; 2 uses
  %i.jc = icmp ult i64 %i.jb, %i.p
  br i1 %i.jc, label %bb.c, label %.loopexit328, !llvm.loop !4980

bb.at:                                            ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit
  %.015355 = phi i64 [ %i.j, %.lr.ph ], [ %i.sp, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.jd = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015355, i1 true)
  %i.je = trunc nuw nsw i64 %i.jd to i32
  %i.jf = or disjoint i32 %i.l, %i.je             ; 5 uses
  %i.jg = load ptr, ptr %i.m, align 8, !tbaa !4879 ; 2 uses
  %i.jh = load ptr, ptr %i.k, align 8, !tbaa !4944, !nonnull !797, !align !916 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.ji = sext i32 %i.jf to i64                   ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !4945, !nonnull !797, !align !916 ; 4 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 120
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !4941, !nonnull !797, !align !916 ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 58
  %i.jo = load i8, ptr %i.jn, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.jp = trunc nuw i8 %i.jo to i1
  br i1 %i.jp, label %.noexc18, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 59
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.js = trunc nuw i8 %i.jr to i1
  br i1 %i.js, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jm, i64 64
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !1255
  br label %.noexc18

bb.aw:                                            ; preds = %bb.au
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !1529
  %i.jx = shl nsw i64 %i.ji, 2
  %i.jy = getelementptr inbounds i8, ptr %i.jw, i64 %i.jx
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !3
  br label %.noexc18

.noexc18:                                         ; preds = %bb.aw, %bb.av, %bb.at
  %.0.i.i111 = phi i32 [ %i.jz, %bb.aw ], [ %i.ju, %bb.av ], [ %i.jf, %bb.at ]
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jk, i64 136
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !4869
  %i.kc = sext i32 %.0.i.i111 to i64              ; 2 uses
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.kb, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !3  ; 5 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jk, i64 144
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !4872
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.kc
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !3  ; 8 uses
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %.loopexit332, label %.noexc23

.noexc23:                                         ; preds = %.noexc18
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jk, i64 152
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !4942, !nonnull !797, !align !916 ; 22 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 56
  %i.kn = load i8, ptr %i.km, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.ko = trunc nuw i8 %i.kn to i1
  %i.kp = sext i32 %i.ke to i64                   ; 7 uses
  br i1 %i.ko, label %.noexc30, label %.noexc24

.noexc24:                                         ; preds = %.noexc23
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !1547 ; 4 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kl, i64 58
  %i.kt = load i8, ptr %i.ks, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.ku = trunc nuw i8 %i.kt to i1
  br i1 %i.ku, label %.noexc25.thread, label %bb.ax

bb.ax:                                            ; preds = %.noexc24
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kl, i64 59
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.kx = trunc nuw i8 %i.kw to i1
  br i1 %i.kx, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kl, i64 64
  br label %.noexc25

bb.az:                                            ; preds = %bb.ax
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !1529
  %i.lb = shl nsw i64 %i.kp, 2
  %i.lc = getelementptr inbounds i8, ptr %i.la, i64 %i.lb
  br label %.noexc25

.noexc25:                                         ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i122.in = phi ptr [ %i.lc, %bb.az ], [ %i.ky, %bb.ay ]
  %.0.i.i.i.i.i122 = load i32, ptr %.0.i.i.i.i.i122.in, align 4, !tbaa !3
  %i.ld = sext i32 %.0.i.i.i.i.i122 to i64
  %i.le = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %i.ld
  %i.lf = load double, ptr %i.le, align 8, !tbaa !4912 ; 2 uses
  %i.lg = icmp sgt i32 %i.ki, 1
  br i1 %i.lg, label %.noexc26.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc25.thread:                                  ; preds = %.noexc24
  %i.lh = sext i32 %i.ke to i64
  %i.li = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %i.lh
  %i.lj = load double, ptr %i.li, align 8, !tbaa !4912 ; 3 uses
  %i.lk = icmp sgt i32 %i.ki, 1
  br i1 %i.lk, label %.noexc26.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc26.lr.ph:                                   ; preds = %.noexc25
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kl, i64 64
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kl, i64 59
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.lp = trunc nuw i8 %i.lo to i1
  %wide.trip.count399 = zext nneg i32 %i.ki to i64
  br label %.noexc26

.noexc26.us.preheader:                            ; preds = %.noexc25.thread
  %wide.trip.count404 = zext nneg i32 %i.ki to i64
  %invariant.gep441 = getelementptr [8 x i8], ptr %i.kr, i64 %i.kp ; 3 uses
  %i.lq = add nsw i64 %wide.trip.count404, -1     ; 3 uses
  %xtraiter471 = and i64 %i.lq, 1
  %i.lr = icmp eq i32 %i.ki, 2
  br i1 %i.lr, label %.noexc26.us.epil.preheader, label %.noexc26.us.preheader.new

.noexc26.us.preheader.new:                        ; preds = %.noexc26.us.preheader
  %unroll_iter475 = and i64 %i.lq, -2
  br label %.noexc26.us

.noexc26.us:                                      ; preds = %.noexc26.us, %.noexc26.us.preheader.new
  %indvars.iv401 = phi i64 [ 1, %.noexc26.us.preheader.new ], [ %indvars.iv.next402.1, %.noexc26.us ] ; 3 uses
  %.0308348.us = phi double [ %i.lj, %.noexc26.us.preheader.new ], [ %spec.select323.us.1, %.noexc26.us ] ; 3 uses
  %niter476 = phi i64 [ 0, %.noexc26.us.preheader.new ], [ %niter476.next.1, %.noexc26.us ]
  %gep442 = getelementptr [8 x i8], ptr %invariant.gep441, i64 %indvars.iv401
  %i.ls = load double, ptr %gep442, align 8, !tbaa !4912 ; 3 uses
  %i.lt = fcmp ord double %i.ls, 0.000000e+00
  %i.lu = fcmp uno double %.0308348.us, 0.000000e+00
  %or.cond.i.i129.us = select i1 %i.lt, i1 %i.lu, i1 false
  %i.lv = fcmp olt double %i.ls, %.0308348.us
  %.0.i.i130.us = select i1 %or.cond.i.i129.us, i1 true, i1 %i.lv
  %spec.select323.us = select i1 %.0.i.i130.us, double %i.ls, double %.0308348.us ; 3 uses
  %i.lw = getelementptr [8 x i8], ptr %invariant.gep441, i64 %indvars.iv401
  %gep442.1 = getelementptr i8, ptr %i.lw, i64 8
  %i.lx = load double, ptr %gep442.1, align 8, !tbaa !4912 ; 3 uses
  %i.ly = fcmp ord double %i.lx, 0.000000e+00
  %i.lz = fcmp uno double %spec.select323.us, 0.000000e+00
  %or.cond.i.i129.us.1 = select i1 %i.ly, i1 %i.lz, i1 false
  %i.ma = fcmp olt double %i.lx, %spec.select323.us
  %.0.i.i130.us.1 = select i1 %or.cond.i.i129.us.1, i1 true, i1 %i.ma
  %spec.select323.us.1 = select i1 %.0.i.i130.us.1, double %i.lx, double %spec.select323.us ; 3 uses
  %indvars.iv.next402.1 = add nuw nsw i64 %indvars.iv401, 2 ; 2 uses
  %niter476.next.1 = add i64 %niter476, 2         ; 2 uses
  %niter476.ncmp.1 = icmp eq i64 %niter476.next.1, %unroll_iter475
  br i1 %niter476.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread.loopexit456.unr-lcssa, label %.noexc26.us, !llvm.loop !4949

.noexc26:                                         ; preds = %.noexc26.lr.ph, %.noexc27
  %indvars.iv396 = phi i64 [ 1, %.noexc26.lr.ph ], [ %indvars.iv.next397, %.noexc27 ] ; 2 uses
  %.0308348 = phi double [ %i.lf, %.noexc26.lr.ph ], [ %spec.select323, %.noexc27 ] ; 3 uses
  br i1 %i.lp, label %.noexc27, label %bb.ba

bb.ba:                                            ; preds = %.noexc26
  %i.mb = add nsw i64 %indvars.iv396, %i.kp
  %i.mc = load ptr, ptr %i.ll, align 8, !tbaa !1529
  %i.md = shl nsw i64 %i.mb, 2
  %i.me = getelementptr inbounds i8, ptr %i.mc, i64 %i.md
  br label %.noexc27

.noexc27:                                         ; preds = %.noexc26, %bb.ba
  %.0.i.i.i.i127.in = phi ptr [ %i.me, %bb.ba ], [ %i.lm, %.noexc26 ]
  %.0.i.i.i.i127 = load i32, ptr %.0.i.i.i.i127.in, align 4, !tbaa !3
  %i.mf = sext i32 %.0.i.i.i.i127 to i64
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %i.mf
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !4912 ; 3 uses
  %i.mi = fcmp ord double %i.mh, 0.000000e+00
  %i.mj = fcmp uno double %.0308348, 0.000000e+00
  %or.cond.i.i129 = select i1 %i.mi, i1 %i.mj, i1 false
  %i.mk = fcmp olt double %i.mh, %.0308348
  %.0.i.i130 = select i1 %or.cond.i.i129, i1 true, i1 %i.mk
  %spec.select323 = select i1 %.0.i.i130, double %i.mh, double %.0308348 ; 2 uses
  %indvars.iv.next397 = add nuw nsw i64 %indvars.iv396, 1 ; 2 uses
  %exitcond400.not = icmp eq i64 %indvars.iv.next397, %wide.trip.count399
  br i1 %exitcond400.not, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread, label %.noexc26, !llvm.loop !4949

.noexc30:                                         ; preds = %.noexc23
  %i.ml = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i134 = icmp eq ptr %i.mm, null        ; 2 uses
  %.phi.trans.insert410 = getelementptr inbounds nuw i8, ptr %i.kl, i64 58
  %.pre411 = load i8, ptr %.phi.trans.insert410, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i134, label %.noexc32, label %bb.bb

bb.bb:                                            ; preds = %.noexc30
  %i.mn = trunc nuw i8 %.pre411 to i1
  %i.mo = getelementptr inbounds nuw i8, ptr %i.kl, i64 57
  %i.mp = load i8, ptr %i.mo, align 1, !range !796
  %i.mq = trunc nuw i8 %i.mp to i1
  %or.cond.i.i.i135 = select i1 %i.mn, i1 true, i1 %i.mq
  br i1 %or.cond.i.i.i135, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.mr = lshr i64 %i.kp, 6
  %i.ms = and i64 %i.mr, 67108863
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %i.ms
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !855
  %i.mv = and i64 %i.kp, 63
  %i.mw = shl nuw i64 1, %i.mv
  %i.mx = and i64 %i.mu, %i.mw
  br label %.noexc31

bb.bd:                                            ; preds = %bb.bb
  %i.my = getelementptr inbounds nuw i8, ptr %i.kl, i64 59
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.na = trunc nuw i8 %i.mz to i1
  br i1 %i.na, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.nb = load i64, ptr %i.mm, align 8, !tbaa !855
  %i.nc = and i64 %i.nb, 1
  br label %.noexc31

bb.bf:                                            ; preds = %bb.bd
  %i.nd = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !1529
  %i.nf = shl nsw i64 %i.kp, 2
  %i.ng = getelementptr inbounds i8, ptr %i.ne, i64 %i.nf
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !3
  %i.ni = zext i32 %i.nh to i64                   ; 2 uses
  %i.nj = lshr i64 %i.ni, 6
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %i.nj
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !855
  %i.nm = and i64 %i.ni, 63
  %i.nn = shl nuw i64 1, %i.nm
  %i.no = and i64 %i.nn, %i.nl
  br label %.noexc31

.noexc31:                                         ; preds = %bb.bf, %bb.be, %bb.bc
  %.0.i.i.i138.in = phi i64 [ %i.mx, %bb.bc ], [ %i.nc, %bb.be ], [ %i.no, %bb.bf ]
  %.0.i.i.i138.not = icmp eq i64 %.0.i.i.i138.in, 0
  br i1 %.0.i.i.i138.not, label %.loopexit332, label %.noexc32

.noexc32:                                         ; preds = %.noexc30, %.noexc31
  %i.np = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !1547 ; 2 uses
  %i.nr = trunc nuw i8 %.pre411 to i1             ; 3 uses
  br i1 %i.nr, label %.noexc33, label %bb.bg

bb.bg:                                            ; preds = %.noexc32
  %i.ns = getelementptr inbounds nuw i8, ptr %i.kl, i64 59
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.nu = trunc nuw i8 %i.nt to i1
  br i1 %i.nu, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.nv = getelementptr inbounds nuw i8, ptr %i.kl, i64 64
  %i.nw = load i32, ptr %i.nv, align 8, !tbaa !1255
  br label %.noexc33

bb.bi:                                            ; preds = %bb.bg
  %i.nx = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !1529
  %i.nz = shl nsw i64 %i.kp, 2
  %i.oa = getelementptr inbounds i8, ptr %i.ny, i64 %i.nz
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !3
  br label %.noexc33

.noexc33:                                         ; preds = %bb.bi, %bb.bh, %.noexc32
  %.0.i.i.i.i145 = phi i32 [ %i.ob, %bb.bi ], [ %i.nw, %bb.bh ], [ %i.ke, %.noexc32 ]
  %i.oc = sext i32 %.0.i.i.i.i145 to i64
  %i.od = getelementptr inbounds [8 x i8], ptr %i.nq, i64 %i.oc
  %i.oe = load double, ptr %i.od, align 8, !tbaa !4912 ; 2 uses
  %i.of = add nsw i32 %i.ki, %i.ke
  %i.og = icmp eq i32 %i.ki, 1
  br i1 %i.og, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread, label %.noexc35.lr.ph

.noexc35.lr.ph:                                   ; preds = %.noexc33
  %.sroa.0222.0350 = add i32 %i.ke, 1
  %i.oh = getelementptr inbounds nuw i8, ptr %i.kl, i64 57
  %i.oi = getelementptr inbounds nuw i8, ptr %i.kl, i64 59 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.kl, i64 8 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.kl, i64 64
  %i.ol = sext i32 %.sroa.0222.0350 to i64
  br label %.noexc35

.noexc35:                                         ; preds = %.noexc35.lr.ph, %.noexc38
  %indvars.iv406 = phi i64 [ %i.ol, %.noexc35.lr.ph ], [ %indvars.iv.next407, %.noexc38 ] ; 6 uses
  %.0310351 = phi double [ %i.oe, %.noexc35.lr.ph ], [ %spec.select324, %.noexc38 ] ; 3 uses
  br i1 %.not.i.i.i134, label %.noexc37, label %bb.bj

bb.bj:                                            ; preds = %.noexc35
  %i.om = load i8, ptr %i.oh, align 1, !range !796
  %i.on = trunc nuw i8 %i.om to i1
  %or.cond.i.i.i150 = select i1 %i.nr, i1 true, i1 %i.on
  br i1 %or.cond.i.i.i150, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.oo = lshr i64 %indvars.iv406, 6
  %i.op = and i64 %i.oo, 67108863
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %i.op
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !855
  %i.os = and i64 %indvars.iv406, 63
  %i.ot = shl nuw i64 1, %i.os
  %i.ou = and i64 %i.or, %i.ot
  br label %.noexc36

bb.bl:                                            ; preds = %bb.bj
  %i.ov = load i8, ptr %i.oi, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ow = trunc nuw i8 %i.ov to i1
  br i1 %i.ow, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ox = load i64, ptr %i.mm, align 8, !tbaa !855
  %i.oy = and i64 %i.ox, 1
  br label %.noexc36

bb.bn:                                            ; preds = %bb.bl
  %i.oz = load ptr, ptr %i.oj, align 8, !tbaa !1529
  %i.pa = shl nsw i64 %indvars.iv406, 2
  %i.pb = getelementptr inbounds i8, ptr %i.oz, i64 %i.pa
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !3
  %i.pd = zext i32 %i.pc to i64                   ; 2 uses
  %i.pe = lshr i64 %i.pd, 6
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %i.pe
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !855
  %i.ph = and i64 %i.pd, 63
  %i.pi = shl nuw i64 1, %i.ph
  %i.pj = and i64 %i.pi, %i.pg
  br label %.noexc36

.noexc36:                                         ; preds = %bb.bn, %bb.bm, %bb.bk
  %.0.i.i.i153.in = phi i64 [ %i.ou, %bb.bk ], [ %i.oy, %bb.bm ], [ %i.pj, %bb.bn ]
  %.0.i.i.i153.not = icmp eq i64 %.0.i.i.i153.in, 0
  br i1 %.0.i.i.i153.not, label %.loopexit332, label %.noexc37

.noexc37:                                         ; preds = %.noexc35, %.noexc36
  %i.pk = trunc nsw i64 %indvars.iv406 to i32
  br i1 %i.nr, label %.noexc38, label %bb.bo

bb.bo:                                            ; preds = %.noexc37
  %i.pl = load i8, ptr %i.oi, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.pm = trunc nuw i8 %i.pl to i1
  br i1 %i.pm, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.pn = load i32, ptr %i.ok, align 8, !tbaa !1255
  br label %.noexc38

bb.bq:                                            ; preds = %bb.bo
  %i.po = load ptr, ptr %i.oj, align 8, !tbaa !1529
  %i.pp = shl nsw i64 %indvars.iv406, 2
  %i.pq = getelementptr inbounds i8, ptr %i.po, i64 %i.pp
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !3
  br label %.noexc38
end_hunk_19
begin_hunk_20_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_:bb.a
  %.not37.i.i.not.i193.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i193.not, label %.critedge.i.i.i, label %.lr.ph195

bb.f:                                             ; preds = %.lr.ph195
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i194, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph195, label %.critedge.i.i.i, !llvm.loop !1540

.lr.ph195:                                        ; preds = %bb.e, %bb.f
  %indvars.iv.i194 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i194, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !855
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1540

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !855
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph195, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph195 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i27 = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i27, label %bb.h, label %bb.az

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1538 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1536 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit136

.lr.ph:                                           ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !5060 ; 2 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !5062, !nonnull !797, !align !916 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.an = sext i32 %i.ag to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit
  %indvars.iv170 = phi i64 [ %i.an, %.lr.ph ], [ %indvars.iv.next171, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !5063, !nonnull !797, !align !916 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !4941, !nonnull !797, !align !916 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 58
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = trunc nsw i64 %indvars.iv170 to i32     ; 3 uses
  br i1 %i.at, label %.noexc5, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 59
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !1255
  br label %.noexc5

bb.l:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1529
  %i.bc = shl nsw i64 %indvars.iv170, 2
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  br label %.noexc5

.noexc5:                                          ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i = phi i32 [ %i.be, %bb.l ], [ %i.az, %bb.k ], [ %i.au, %bb.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 136
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !4869
  %i.bh = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3  ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ao, i64 144
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !4872
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bh
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3  ; 8 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.loopexit134, label %.noexc10

.noexc10:                                         ; preds = %.noexc5
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ao, i64 152
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !4942, !nonnull !797, !align !916 ; 22 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = sext i32 %i.bj to i64                   ; 7 uses
  br i1 %i.bt, label %.noexc17, label %.noexc11

.noexc11:                                         ; preds = %.noexc10
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1547 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 58
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %.noexc12.thread, label %bb.m

bb.m:                                             ; preds = %.noexc11
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  br label %.noexc12

bb.o:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1529
  %i.cg = shl nsw i64 %i.bu, 2
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 %i.cg
  br label %.noexc12

.noexc12:                                         ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.in = phi ptr [ %i.ch, %bb.o ], [ %i.cd, %bb.n ]
  %.0.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i.in, align 4, !tbaa !3
  %i.ci = sext i32 %.0.i.i.i.i.i to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.ci
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !4912 ; 2 uses
  %i.cl = icmp sgt i32 %i.bn, 1
  br i1 %i.cl, label %.noexc13.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc12.thread:                                  ; preds = %.noexc11
  %i.cm = sext i32 %i.bj to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.cm
  %i.co = load double, ptr %i.cn, align 8, !tbaa !4912 ; 3 uses
  %i.cp = icmp sgt i32 %i.bn, 1
  br i1 %i.cp, label %.noexc13.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc13.lr.ph:                                   ; preds = %.noexc12
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cu = trunc nuw i8 %i.ct to i1
  %wide.trip.count = zext nneg i32 %i.bn to i64
  br label %.noexc13

.noexc13.us.preheader:                            ; preds = %.noexc12.thread
  %wide.trip.count165 = zext nneg i32 %i.bn to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.bw, i64 %i.bu ; 3 uses
  %i.cv = add nsw i64 %wide.trip.count165, -1     ; 3 uses
  %xtraiter = and i64 %i.cv, 1
  %i.cw = icmp eq i32 %i.bn, 2
  br i1 %i.cw, label %.noexc13.us.epil.preheader, label %.noexc13.us.preheader.new

.noexc13.us.preheader.new:                        ; preds = %.noexc13.us.preheader
  %unroll_iter = and i64 %i.cv, -2
  br label %.noexc13.us

.noexc13.us:                                      ; preds = %.noexc13.us, %.noexc13.us.preheader.new
  %indvars.iv162 = phi i64 [ 1, %.noexc13.us.preheader.new ], [ %indvars.iv.next163.1, %.noexc13.us ] ; 3 uses
  %.0123144.us = phi double [ %i.co, %.noexc13.us.preheader.new ], [ %spec.select.us.1, %.noexc13.us ] ; 3 uses
  %niter = phi i64 [ 0, %.noexc13.us.preheader.new ], [ %niter.next.1, %.noexc13.us ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv162
  %i.cx = load double, ptr %gep, align 8, !tbaa !4912 ; 3 uses
  %i.cy = fcmp uno double %i.cx, 0.000000e+00
  %i.cz = fcmp ord double %.0123144.us, 0.000000e+00
  %or.cond.not.i.i.us = select i1 %i.cy, i1 %i.cz, i1 false
  %i.da = fcmp ogt double %i.cx, %.0123144.us
  %.0.i.i33.us = select i1 %or.cond.not.i.i.us, i1 true, i1 %i.da
  %spec.select.us = select i1 %.0.i.i33.us, double %i.cx, double %.0123144.us ; 3 uses
  %i.db = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv162
  %gep.1 = getelementptr i8, ptr %i.db, i64 8
  %i.dc = load double, ptr %gep.1, align 8, !tbaa !4912 ; 3 uses
  %i.dd = fcmp uno double %i.dc, 0.000000e+00
  %i.de = fcmp ord double %spec.select.us, 0.000000e+00
  %or.cond.not.i.i.us.1 = select i1 %i.dd, i1 %i.de, i1 false
  %i.df = fcmp ogt double %i.dc, %spec.select.us
  %.0.i.i33.us.1 = select i1 %or.cond.not.i.i.us.1, i1 true, i1 %i.df
  %spec.select.us.1 = select i1 %.0.i.i33.us.1, double %i.dc, double %spec.select.us ; 3 uses
  %indvars.iv.next163.1 = add nuw nsw i64 %indvars.iv162, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread.loopexit196.unr-lcssa, label %.noexc13.us, !llvm.loop !5066

.noexc13:                                         ; preds = %.noexc13.lr.ph, %.noexc14
  %indvars.iv = phi i64 [ 1, %.noexc13.lr.ph ], [ %indvars.iv.next, %.noexc14 ] ; 2 uses
  %.0123144 = phi double [ %i.ck, %.noexc13.lr.ph ], [ %spec.select, %.noexc14 ] ; 3 uses
  br i1 %i.cu, label %.noexc14, label %bb.p

bb.p:                                             ; preds = %.noexc13
  %i.dg = add nsw i64 %indvars.iv, %i.bu
  %i.dh = load ptr, ptr %i.cq, align 8, !tbaa !1529
  %i.di = shl nsw i64 %i.dg, 2
  %i.dj = getelementptr inbounds i8, ptr %i.dh, i64 %i.di
  br label %.noexc14

.noexc14:                                         ; preds = %.noexc13, %bb.p
  %.0.i.i.i.i.in = phi ptr [ %i.dj, %bb.p ], [ %i.cr, %.noexc13 ]
  %.0.i.i.i.i = load i32, ptr %.0.i.i.i.i.in, align 4, !tbaa !3
  %i.dk = sext i32 %.0.i.i.i.i to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !4912 ; 3 uses
  %i.dn = fcmp uno double %i.dm, 0.000000e+00
  %i.do = fcmp ord double %.0123144, 0.000000e+00
  %or.cond.not.i.i = select i1 %i.dn, i1 %i.do, i1 false
  %i.dp = fcmp ogt double %i.dm, %.0123144
  %.0.i.i33 = select i1 %or.cond.not.i.i, i1 true, i1 %i.dp
  %spec.select = select i1 %.0.i.i33, double %i.dm, double %.0123144 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread, label %.noexc13, !llvm.loop !5066

.noexc17:                                         ; preds = %.noexc10
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.dr, null           ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bq, i64 58
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i, label %.noexc19, label %bb.q

bb.q:                                             ; preds = %.noexc17
  %i.ds = trunc nuw i8 %.pre to i1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bq, i64 57
  %i.du = load i8, ptr %i.dt, align 1, !range !796
  %i.dv = trunc nuw i8 %i.du to i1
  %or.cond.i.i.i = select i1 %i.ds, i1 true, i1 %i.dv
  br i1 %or.cond.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dw = lshr i64 %i.bu, 6
  %i.dx = and i64 %i.dw, 67108863
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !855
  %i.ea = and i64 %i.bu, 63
  %i.eb = shl nuw i64 1, %i.ea
  %i.ec = and i64 %i.dz, %i.eb
  br label %.noexc18

bb.s:                                             ; preds = %bb.q
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.eg = load i64, ptr %i.dr, align 8, !tbaa !855
  %i.eh = and i64 %i.eg, 1
  br label %.noexc18

bb.u:                                             ; preds = %bb.s
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !1529
  %i.ek = shl nsw i64 %i.bu, 2
  %i.el = getelementptr inbounds i8, ptr %i.ej, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !3
  %i.en = zext i32 %i.em to i64                   ; 2 uses
  %i.eo = lshr i64 %i.en, 6
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !855
  %i.er = and i64 %i.en, 63
  %i.es = shl nuw i64 1, %i.er
  %i.et = and i64 %i.es, %i.eq
  br label %.noexc18

.noexc18:                                         ; preds = %bb.u, %bb.t, %bb.r
  %.0.i.i.i.in = phi i64 [ %i.ec, %bb.r ], [ %i.eh, %bb.t ], [ %i.et, %bb.u ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %.loopexit134, label %.noexc19

.noexc19:                                         ; preds = %.noexc17, %.noexc18
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !1547 ; 2 uses
  %i.ew = trunc nuw i8 %.pre to i1                ; 3 uses
  br i1 %i.ew, label %.noexc20, label %bb.v

bb.v:                                             ; preds = %.noexc19
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !1255
  br label %.noexc20

bb.x:                                             ; preds = %bb.v
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !1529
  %i.fe = shl nsw i64 %i.bu, 2
  %i.ff = getelementptr inbounds i8, ptr %i.fd, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !3
  br label %.noexc20

.noexc20:                                         ; preds = %bb.x, %bb.w, %.noexc19
  %.0.i.i.i.i38 = phi i32 [ %i.fg, %bb.x ], [ %i.fb, %bb.w ], [ %i.bj, %.noexc19 ]
  %i.fh = sext i32 %.0.i.i.i.i38 to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %i.fh
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !4912 ; 2 uses
  %i.fk = add nsw i32 %i.bn, %i.bj
  %i.fl = icmp eq i32 %i.bn, 1
  br i1 %i.fl, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread, label %.noexc22.lr.ph

.noexc22.lr.ph:                                   ; preds = %.noexc20
  %.sroa.0105.0146 = add i32 %i.bj, 1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bq, i64 57
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bq, i64 59 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.fq = sext i32 %.sroa.0105.0146 to i64
  br label %.noexc22

.noexc22:                                         ; preds = %.noexc22.lr.ph, %.noexc25
  %indvars.iv167 = phi i64 [ %i.fq, %.noexc22.lr.ph ], [ %indvars.iv.next168, %.noexc25 ] ; 6 uses
  %.0126147 = phi double [ %i.fj, %.noexc22.lr.ph ], [ %spec.select132, %.noexc25 ] ; 3 uses
  br i1 %.not.i.i.i, label %.noexc24, label %bb.y

bb.y:                                             ; preds = %.noexc22
  %i.fr = load i8, ptr %i.fm, align 1, !range !796
  %i.fs = trunc nuw i8 %i.fr to i1
  %or.cond.i.i.i43 = select i1 %i.ew, i1 true, i1 %i.fs
  br i1 %or.cond.i.i.i43, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ft = lshr i64 %indvars.iv167, 6
  %i.fu = and i64 %i.ft, 67108863
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.fu
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !855
  %i.fx = and i64 %indvars.iv167, 63
  %i.fy = shl nuw i64 1, %i.fx
  %i.fz = and i64 %i.fw, %i.fy
  br label %.noexc23

bb.aa:                                            ; preds = %bb.y
  %i.ga = load i8, ptr %i.fn, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gc = load i64, ptr %i.dr, align 8, !tbaa !855
  %i.gd = and i64 %i.gc, 1
  br label %.noexc23

bb.ac:                                            ; preds = %bb.aa
  %i.ge = load ptr, ptr %i.fo, align 8, !tbaa !1529
  %i.gf = shl nsw i64 %indvars.iv167, 2
  %i.gg = getelementptr inbounds i8, ptr %i.ge, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !3
  %i.gi = zext i32 %i.gh to i64                   ; 2 uses
  %i.gj = lshr i64 %i.gi, 6
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.gj
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !855
  %i.gm = and i64 %i.gi, 63
  %i.gn = shl nuw i64 1, %i.gm
  %i.go = and i64 %i.gn, %i.gl
  br label %.noexc23

.noexc23:                                         ; preds = %bb.ac, %bb.ab, %bb.z
  %.0.i.i.i46.in = phi i64 [ %i.fz, %bb.z ], [ %i.gd, %bb.ab ], [ %i.go, %bb.ac ]
  %.0.i.i.i46.not = icmp eq i64 %.0.i.i.i46.in, 0
  br i1 %.0.i.i.i46.not, label %.loopexit134, label %.noexc24

.noexc24:                                         ; preds = %.noexc22, %.noexc23
  %i.gp = trunc nsw i64 %indvars.iv167 to i32
  br i1 %i.ew, label %.noexc25, label %bb.ad

bb.ad:                                            ; preds = %.noexc24
  %i.gq = load i8, ptr %i.fn, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gs = load i32, ptr %i.fp, align 8, !tbaa !1255
  br label %.noexc25

bb.af:                                            ; preds = %bb.ad
  %i.gt = load ptr, ptr %i.fo, align 8, !tbaa !1529
  %i.gu = shl nsw i64 %indvars.iv167, 2
  %i.gv = getelementptr inbounds i8, ptr %i.gt, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !3
  br label %.noexc25
end_hunk_20
begin_hunk_21_@_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_:bb.a
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS4_10VectorExecEEESC_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSG_EEEE7iterateIJNS4_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !5079

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS4_10VectorExecEEESC_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSG_EEEE7iterateIJNS4_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS4_10VectorExecEEESC_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSG_EEEE7iterateIJNS4_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_EUlimE_ZNS3_IS10_EEvS12_iibSS_EUliE_EEviiSS_SZ_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !5080, !range !796, !noundef !797
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !5082
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !855
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit141, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit
  %.0155 = phi i64 [ %i.k, %.preheader ], [ %i.ja, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.o = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0155, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 5 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !5060 ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !5062, !nonnull !797, !align !916 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.t = sext i32 %i.q to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !5063, !nonnull !797, !align !916 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !4941, !nonnull !797, !align !916 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 58
  %i.z = load i8, ptr %i.y, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.noexc12, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 59
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1255
  br label %.noexc12

bb.e:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1529
  %i.ai = shl nsw i64 %i.t, 2
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  br label %.noexc12

.noexc12:                                         ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i = phi i32 [ %i.ak, %bb.e ], [ %i.af, %bb.d ], [ %i.q, %bb.b ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !4869
  %i.an = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3  ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !4872
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.an
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3  ; 8 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.loopexit139, label %.noexc17

.noexc17:                                         ; preds = %.noexc12
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !4942, !nonnull !797, !align !916 ; 22 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = sext i32 %i.ap to i64                   ; 7 uses
  br i1 %i.az, label %.noexc24, label %.noexc18

.noexc18:                                         ; preds = %.noexc17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1547 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 58
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.noexc19.thread, label %bb.f

bb.f:                                             ; preds = %.noexc18
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  br label %.noexc19

bb.h:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1529
  %i.bm = shl nsw i64 %i.ba, 2
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 %i.bm
  br label %.noexc19

.noexc19:                                         ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.in = phi ptr [ %i.bn, %bb.h ], [ %i.bj, %bb.g ]
  %.0.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i.in, align 4, !tbaa !3
  %i.bo = sext i32 %.0.i.i.i.i.i to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !4912 ; 2 uses
  %i.br = icmp sgt i32 %i.at, 1
  br i1 %i.br, label %.noexc20.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc19.thread:                                  ; preds = %.noexc18
  %i.bs = sext i32 %i.ap to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !4912 ; 3 uses
  %i.bv = icmp sgt i32 %i.at, 1
  br i1 %i.bv, label %.noexc20.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc20.lr.ph:                                   ; preds = %.noexc19
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ca = trunc nuw i8 %i.bz to i1
  %wide.trip.count = zext nneg i32 %i.at to i64
  br label %.noexc20

.noexc20.us.preheader:                            ; preds = %.noexc19.thread
  %wide.trip.count167 = zext nneg i32 %i.at to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.bc, i64 %i.ba ; 3 uses
  %i.cb = add nsw i64 %wide.trip.count167, -1     ; 3 uses
  %xtraiter = and i64 %i.cb, 1
  %i.cc = icmp eq i32 %i.at, 2
  br i1 %i.cc, label %.noexc20.us.epil.preheader, label %.noexc20.us.preheader.new

.noexc20.us.preheader.new:                        ; preds = %.noexc20.us.preheader
  %unroll_iter = and i64 %i.cb, -2
  br label %.noexc20.us

.noexc20.us:                                      ; preds = %.noexc20.us, %.noexc20.us.preheader.new
  %indvars.iv164 = phi i64 [ 1, %.noexc20.us.preheader.new ], [ %indvars.iv.next165.1, %.noexc20.us ] ; 3 uses
  %.0128149.us = phi double [ %i.bu, %.noexc20.us.preheader.new ], [ %spec.select.us.1, %.noexc20.us ] ; 3 uses
  %niter = phi i64 [ 0, %.noexc20.us.preheader.new ], [ %niter.next.1, %.noexc20.us ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv164
  %i.cd = load double, ptr %gep, align 8, !tbaa !4912 ; 3 uses
  %i.ce = fcmp uno double %i.cd, 0.000000e+00
  %i.cf = fcmp ord double %.0128149.us, 0.000000e+00
  %or.cond.not.i.i.us = select i1 %i.ce, i1 %i.cf, i1 false
  %i.cg = fcmp ogt double %i.cd, %.0128149.us
  %.0.i.i38.us = select i1 %or.cond.not.i.i.us, i1 true, i1 %i.cg
  %spec.select.us = select i1 %.0.i.i38.us, double %i.cd, double %.0128149.us ; 3 uses
  %i.ch = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv164
  %gep.1 = getelementptr i8, ptr %i.ch, i64 8
  %i.ci = load double, ptr %gep.1, align 8, !tbaa !4912 ; 3 uses
  %i.cj = fcmp uno double %i.ci, 0.000000e+00
  %i.ck = fcmp ord double %spec.select.us, 0.000000e+00
  %or.cond.not.i.i.us.1 = select i1 %i.cj, i1 %i.ck, i1 false
  %i.cl = fcmp ogt double %i.ci, %spec.select.us
  %.0.i.i38.us.1 = select i1 %or.cond.not.i.i.us.1, i1 true, i1 %i.cl
  %spec.select.us.1 = select i1 %.0.i.i38.us.1, double %i.ci, double %spec.select.us ; 3 uses
  %indvars.iv.next165.1 = add nuw nsw i64 %indvars.iv164, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread.loopexit190.unr-lcssa, label %.noexc20.us, !llvm.loop !5066

.noexc20:                                         ; preds = %.noexc20.lr.ph, %.noexc21
  %indvars.iv = phi i64 [ 1, %.noexc20.lr.ph ], [ %indvars.iv.next, %.noexc21 ] ; 2 uses
  %.0128149 = phi double [ %i.bq, %.noexc20.lr.ph ], [ %spec.select, %.noexc21 ] ; 3 uses
  br i1 %i.ca, label %.noexc21, label %bb.i

bb.i:                                             ; preds = %.noexc20
  %i.cm = add nsw i64 %indvars.iv, %i.ba
  %i.cn = load ptr, ptr %i.bw, align 8, !tbaa !1529
  %i.co = shl nsw i64 %i.cm, 2
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 %i.co
  br label %.noexc21

.noexc21:                                         ; preds = %.noexc20, %bb.i
  %.0.i.i.i.i.in = phi ptr [ %i.cp, %bb.i ], [ %i.bx, %.noexc20 ]
  %.0.i.i.i.i = load i32, ptr %.0.i.i.i.i.in, align 4, !tbaa !3
  %i.cq = sext i32 %.0.i.i.i.i to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.cq
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !4912 ; 3 uses
  %i.ct = fcmp uno double %i.cs, 0.000000e+00
  %i.cu = fcmp ord double %.0128149, 0.000000e+00
  %or.cond.not.i.i = select i1 %i.ct, i1 %i.cu, i1 false
  %i.cv = fcmp ogt double %i.cs, %.0128149
  %.0.i.i38 = select i1 %or.cond.not.i.i, i1 true, i1 %i.cv
  %spec.select = select i1 %.0.i.i38, double %i.cs, double %.0128149 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread, label %.noexc20, !llvm.loop !5066

.noexc24:                                         ; preds = %.noexc17
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.cx, null           ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aw, i64 58
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i, label %.noexc26, label %bb.j

bb.j:                                             ; preds = %.noexc24
  %i.cy = trunc nuw i8 %.pre to i1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.aw, i64 57
  %i.da = load i8, ptr %i.cz, align 1, !range !796
  %i.db = trunc nuw i8 %i.da to i1
  %or.cond.i.i.i = select i1 %i.cy, i1 true, i1 %i.db
  br i1 %or.cond.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dc = lshr i64 %i.ba, 6
  %i.dd = and i64 %i.dc, 67108863
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !855
  %i.dg = and i64 %i.ba, 63
  %i.dh = shl nuw i64 1, %i.dg
  %i.di = and i64 %i.df, %i.dh
  br label %.noexc25

bb.l:                                             ; preds = %bb.j
  %i.dj = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dm = load i64, ptr %i.cx, align 8, !tbaa !855
  %i.dn = and i64 %i.dm, 1
  br label %.noexc25

bb.n:                                             ; preds = %bb.l
  %i.do = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1529
  %i.dq = shl nsw i64 %i.ba, 2
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !3
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %i.du = lshr i64 %i.dt, 6
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !855
  %i.dx = and i64 %i.dt, 63
  %i.dy = shl nuw i64 1, %i.dx
  %i.dz = and i64 %i.dy, %i.dw
  br label %.noexc25

.noexc25:                                         ; preds = %bb.n, %bb.m, %bb.k
  %.0.i.i.i.in = phi i64 [ %i.di, %bb.k ], [ %i.dn, %bb.m ], [ %i.dz, %bb.n ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %.loopexit139, label %.noexc26

.noexc26:                                         ; preds = %.noexc24, %.noexc25
  %i.ea = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !1547 ; 2 uses
  %i.ec = trunc nuw i8 %.pre to i1                ; 3 uses
  br i1 %i.ec, label %.noexc27, label %bb.o

bb.o:                                             ; preds = %.noexc26
  %i.ed = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.eg = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !1255
  br label %.noexc27

bb.q:                                             ; preds = %bb.o
  %i.ei = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !1529
  %i.ek = shl nsw i64 %i.ba, 2
  %i.el = getelementptr inbounds i8, ptr %i.ej, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !3
  br label %.noexc27

.noexc27:                                         ; preds = %bb.q, %bb.p, %.noexc26
  %.0.i.i.i.i43 = phi i32 [ %i.em, %bb.q ], [ %i.eh, %bb.p ], [ %i.ap, %.noexc26 ]
  %i.en = sext i32 %.0.i.i.i.i43 to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.en
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !4912 ; 2 uses
  %i.eq = add nsw i32 %i.at, %i.ap
  %i.er = icmp eq i32 %i.at, 1
  br i1 %i.er, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread, label %.noexc29.lr.ph

.noexc29.lr.ph:                                   ; preds = %.noexc27
  %.sroa.0110.0151 = add i32 %i.ap, 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.aw, i64 57
  %i.et = getelementptr inbounds nuw i8, ptr %i.aw, i64 59 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.ew = sext i32 %.sroa.0110.0151 to i64
  br label %.noexc29

.noexc29:                                         ; preds = %.noexc29.lr.ph, %.noexc32
  %indvars.iv169 = phi i64 [ %i.ew, %.noexc29.lr.ph ], [ %indvars.iv.next170, %.noexc32 ] ; 6 uses
  %.0131152 = phi double [ %i.ep, %.noexc29.lr.ph ], [ %spec.select137, %.noexc32 ] ; 3 uses
  br i1 %.not.i.i.i, label %.noexc31, label %bb.r

bb.r:                                             ; preds = %.noexc29
  %i.ex = load i8, ptr %i.es, align 1, !range !796
  %i.ey = trunc nuw i8 %i.ex to i1
  %or.cond.i.i.i48 = select i1 %i.ec, i1 true, i1 %i.ey
  br i1 %or.cond.i.i.i48, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ez = lshr i64 %indvars.iv169, 6
  %i.fa = and i64 %i.ez, 67108863
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.fa
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !855
  %i.fd = and i64 %indvars.iv169, 63
  %i.fe = shl nuw i64 1, %i.fd
  %i.ff = and i64 %i.fc, %i.fe
  br label %.noexc30

bb.t:                                             ; preds = %bb.r
  %i.fg = load i8, ptr %i.et, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fi = load i64, ptr %i.cx, align 8, !tbaa !855
  %i.fj = and i64 %i.fi, 1
  br label %.noexc30

bb.v:                                             ; preds = %bb.t
  %i.fk = load ptr, ptr %i.eu, align 8, !tbaa !1529
  %i.fl = shl nsw i64 %indvars.iv169, 2
  %i.fm = getelementptr inbounds i8, ptr %i.fk, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3
  %i.fo = zext i32 %i.fn to i64                   ; 2 uses
  %i.fp = lshr i64 %i.fo, 6
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.fp
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !855
  %i.fs = and i64 %i.fo, 63
  %i.ft = shl nuw i64 1, %i.fs
  %i.fu = and i64 %i.ft, %i.fr
  br label %.noexc30

.noexc30:                                         ; preds = %bb.v, %bb.u, %bb.s
  %.0.i.i.i51.in = phi i64 [ %i.ff, %bb.s ], [ %i.fj, %bb.u ], [ %i.fu, %bb.v ]
  %.0.i.i.i51.not = icmp eq i64 %.0.i.i.i51.in, 0
  br i1 %.0.i.i.i51.not, label %.loopexit139, label %.noexc31

.noexc31:                                         ; preds = %.noexc29, %.noexc30
  %i.fv = trunc nsw i64 %indvars.iv169 to i32
  br i1 %i.ec, label %.noexc32, label %bb.w

bb.w:                                             ; preds = %.noexc31
  %i.fw = load i8, ptr %i.et, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fy = load i32, ptr %i.ev, align 8, !tbaa !1255
  br label %.noexc32

bb.y:                                             ; preds = %bb.w
  %i.fz = load ptr, ptr %i.eu, align 8, !tbaa !1529
  %i.ga = shl nsw i64 %indvars.iv169, 2
  %i.gb = getelementptr inbounds i8, ptr %i.fz, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !3
  br label %.noexc32
end_hunk_21
begin_hunk_22_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim:bb.a
  unreachable

bb.ar:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit70, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit75
  %i.iz = add i64 %.0155, -1
  %i.ja = and i64 %i.iz, %.0155                   ; 2 uses
  %.not10 = icmp eq i64 %i.ja, 0
  br i1 %.not10, label %.loopexit141, label %bb.b, !llvm.loop !5088

.loopexit141:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %5 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !5089, !range !796, !noundef !797
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !5091
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !855
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit328
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.at

bb.b:                                             ; preds = %bb.a
  %i.n = shl i32 %1, 6                            ; 3 uses
  %i.o = add i32 %i.n, 64
  %i.p = sext i32 %i.o to i64
  %.not369 = icmp eq i32 %i.n, -64
  br i1 %.not369, label %.loopexit328, label %.lr.ph368

.lr.ph368:                                        ; preds = %bb.b
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph368, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clImEEDaSP_.exit
  %.0364 = phi i64 [ %i.q, %.lr.ph368 ], [ %i.jb, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clImEEDaSP_.exit ] ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !5060 ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !5062, !nonnull !797, !align !916 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !5063, !nonnull !797, !align !916 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !4941, !nonnull !797, !align !916 ; 4 uses
  %i.z = trunc i64 %.0364 to i32                  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 58
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.noexc45, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 59
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !1255
  br label %.noexc45

bb.f:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1529
  %sext.i = shl i64 %.0364, 32
  %i.ak = ashr exact i64 %sext.i, 30
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  br label %.noexc45

.noexc45:                                         ; preds = %bb.f, %bb.e, %bb.c
  %.0.i.i65 = phi i32 [ %i.am, %bb.f ], [ %i.ah, %bb.e ], [ %i.z, %bb.c ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !4869
  %i.ap = sext i32 %.0.i.i65 to i64               ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3  ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !4872
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ap
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3  ; 8 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.loopexit326, label %.noexc46

.noexc46:                                         ; preds = %.noexc45
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !4942, !nonnull !797, !align !916 ; 22 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = sext i32 %i.ar to i64                   ; 7 uses
  br i1 %i.bb, label %.noexc53, label %.noexc47

.noexc47:                                         ; preds = %.noexc46
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1547 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 58
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %.noexc48.thread, label %bb.g

bb.g:                                             ; preds = %.noexc47
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  br label %.noexc48

bb.i:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1529
  %i.bo = shl nsw i64 %i.bc, 2
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 %i.bo
  br label %.noexc48

.noexc48:                                         ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.in = phi ptr [ %i.bp, %bb.i ], [ %i.bl, %bb.h ]
  %.0.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i.in, align 4, !tbaa !3
  %i.bq = sext i32 %.0.i.i.i.i.i to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !4912 ; 2 uses
  %i.bt = icmp sgt i32 %i.av, 1
  br i1 %i.bt, label %.noexc49.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit.thread

.noexc48.thread:                                  ; preds = %.noexc47
  %i.bu = sext i32 %i.ar to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bu
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !4912 ; 3 uses
  %i.bx = icmp sgt i32 %i.av, 1
  br i1 %i.bx, label %.noexc49.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit.thread

.noexc49.lr.ph:                                   ; preds = %.noexc48
  %i.by = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cc = trunc nuw i8 %i.cb to i1
  %wide.trip.count = zext nneg i32 %i.av to i64
  br label %.noexc49

.noexc49.us.preheader:                            ; preds = %.noexc48.thread
  %wide.trip.count391 = zext nneg i32 %i.av to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.be, i64 %i.bc ; 3 uses
  %i.cd = add nsw i64 %wide.trip.count391, -1     ; 3 uses
  %xtraiter = and i64 %i.cd, 1
  %i.ce = icmp eq i32 %i.av, 2
  br i1 %i.ce, label %.noexc49.us.epil.preheader, label %.noexc49.us.preheader.new

.noexc49.us.preheader.new:                        ; preds = %.noexc49.us.preheader
  %unroll_iter = and i64 %i.cd, -2
  br label %.noexc49.us

.noexc49.us:                                      ; preds = %.noexc49.us, %.noexc49.us.preheader.new
  %indvars.iv388 = phi i64 [ 1, %.noexc49.us.preheader.new ], [ %indvars.iv.next389.1, %.noexc49.us ] ; 3 uses
  %.0300356.us = phi double [ %i.bw, %.noexc49.us.preheader.new ], [ %spec.select.us.1, %.noexc49.us ] ; 3 uses
  %niter = phi i64 [ 0, %.noexc49.us.preheader.new ], [ %niter.next.1, %.noexc49.us ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv388
  %i.cf = load double, ptr %gep, align 8, !tbaa !4912 ; 3 uses
  %i.cg = fcmp uno double %i.cf, 0.000000e+00
  %i.ch = fcmp ord double %.0300356.us, 0.000000e+00
  %or.cond.not.i.i.us = select i1 %i.cg, i1 %i.ch, i1 false
  %i.ci = fcmp ogt double %i.cf, %.0300356.us
  %.0.i.i70.us = select i1 %or.cond.not.i.i.us, i1 true, i1 %i.ci
  %spec.select.us = select i1 %.0.i.i70.us, double %i.cf, double %.0300356.us ; 3 uses
  %i.cj = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv388
  %gep.1 = getelementptr i8, ptr %i.cj, i64 8
  %i.ck = load double, ptr %gep.1, align 8, !tbaa !4912 ; 3 uses
  %i.cl = fcmp uno double %i.ck, 0.000000e+00
  %i.cm = fcmp ord double %spec.select.us, 0.000000e+00
  %or.cond.not.i.i.us.1 = select i1 %i.cl, i1 %i.cm, i1 false
  %i.cn = fcmp ogt double %i.ck, %spec.select.us
  %.0.i.i70.us.1 = select i1 %or.cond.not.i.i.us.1, i1 true, i1 %i.cn
  %spec.select.us.1 = select i1 %.0.i.i70.us.1, double %i.ck, double %spec.select.us ; 3 uses
  %indvars.iv.next389.1 = add nuw nsw i64 %indvars.iv388, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit.thread.loopexit461.unr-lcssa, label %.noexc49.us, !llvm.loop !5066

.noexc49:                                         ; preds = %.noexc49.lr.ph, %.noexc50
  %indvars.iv = phi i64 [ 1, %.noexc49.lr.ph ], [ %indvars.iv.next, %.noexc50 ] ; 2 uses
  %.0300356 = phi double [ %i.bs, %.noexc49.lr.ph ], [ %spec.select, %.noexc50 ] ; 3 uses
  br i1 %i.cc, label %.noexc50, label %bb.j

bb.j:                                             ; preds = %.noexc49
  %i.co = add nsw i64 %indvars.iv, %i.bc
  %i.cp = load ptr, ptr %i.by, align 8, !tbaa !1529
  %i.cq = shl nsw i64 %i.co, 2
  %i.cr = getelementptr inbounds i8, ptr %i.cp, i64 %i.cq
  br label %.noexc50

.noexc50:                                         ; preds = %.noexc49, %bb.j
  %.0.i.i.i.i.in = phi ptr [ %i.cr, %bb.j ], [ %i.bz, %.noexc49 ]
  %.0.i.i.i.i = load i32, ptr %.0.i.i.i.i.in, align 4, !tbaa !3
  %i.cs = sext i32 %.0.i.i.i.i to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.cs
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !4912 ; 3 uses
  %i.cv = fcmp uno double %i.cu, 0.000000e+00
  %i.cw = fcmp ord double %.0300356, 0.000000e+00
  %or.cond.not.i.i = select i1 %i.cv, i1 %i.cw, i1 false
  %i.cx = fcmp ogt double %i.cu, %.0300356
  %.0.i.i70 = select i1 %or.cond.not.i.i, i1 true, i1 %i.cx
  %spec.select = select i1 %.0.i.i70, double %i.cu, double %.0300356 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit.thread, label %.noexc49, !llvm.loop !5066

.noexc53:                                         ; preds = %.noexc46
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.cz, null           ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ay, i64 58
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i, label %.noexc55, label %bb.k

bb.k:                                             ; preds = %.noexc53
  %i.da = trunc nuw i8 %.pre to i1
  %i.db = getelementptr inbounds nuw i8, ptr %i.ay, i64 57
  %i.dc = load i8, ptr %i.db, align 1, !range !796
  %i.dd = trunc nuw i8 %i.dc to i1
  %or.cond.i.i.i = select i1 %i.da, i1 true, i1 %i.dd
  br i1 %or.cond.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.de = lshr i64 %i.bc, 6
  %i.df = and i64 %i.de, 67108863
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !855
  %i.di = and i64 %i.bc, 63
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = and i64 %i.dh, %i.dj
  br label %.noexc54

bb.m:                                             ; preds = %bb.k
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.do = load i64, ptr %i.cz, align 8, !tbaa !855
  %i.dp = and i64 %i.do, 1
  br label %.noexc54

bb.o:                                             ; preds = %bb.m
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1529
  %i.ds = shl nsw i64 %i.bc, 2
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !3
  %i.dv = zext i32 %i.du to i64                   ; 2 uses
  %i.dw = lshr i64 %i.dv, 6
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !855
  %i.dz = and i64 %i.dv, 63
  %i.ea = shl nuw i64 1, %i.dz
  %i.eb = and i64 %i.ea, %i.dy
  br label %.noexc54

.noexc54:                                         ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i.i.in = phi i64 [ %i.dk, %bb.l ], [ %i.dp, %bb.n ], [ %i.eb, %bb.o ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %.loopexit326, label %.noexc55

.noexc55:                                         ; preds = %.noexc53, %.noexc54
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !1547 ; 2 uses
  %i.ee = trunc nuw i8 %.pre to i1                ; 3 uses
  br i1 %i.ee, label %.noexc56, label %bb.p

bb.p:                                             ; preds = %.noexc55
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !1255
  br label %.noexc56

bb.r:                                             ; preds = %bb.p
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !1529
  %i.em = shl nsw i64 %i.bc, 2
  %i.en = getelementptr inbounds i8, ptr %i.el, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3
  br label %.noexc56

.noexc56:                                         ; preds = %bb.r, %bb.q, %.noexc55
  %.0.i.i.i.i75 = phi i32 [ %i.eo, %bb.r ], [ %i.ej, %bb.q ], [ %i.ar, %.noexc55 ]
  %i.ep = sext i32 %.0.i.i.i.i75 to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ep
  %i.er = load double, ptr %i.eq, align 8, !tbaa !4912 ; 2 uses
  %i.es = add nsw i32 %i.av, %i.ar
  %i.et = icmp eq i32 %i.av, 1
  br i1 %i.et, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSN_.exit.thread, label %.noexc58.lr.ph

.noexc58.lr.ph:                                   ; preds = %.noexc56
  %.sroa.0279.0360 = add i32 %i.ar, 1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ay, i64 57
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ay, i64 59 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ey = sext i32 %.sroa.0279.0360 to i64
  br label %.noexc58

.noexc58:                                         ; preds = %.noexc58.lr.ph, %.noexc61
  %indvars.iv393 = phi i64 [ %i.ey, %.noexc58.lr.ph ], [ %indvars.iv.next394, %.noexc61 ] ; 6 uses
  %.0303361 = phi double [ %i.er, %.noexc58.lr.ph ], [ %spec.select322, %.noexc61 ] ; 3 uses
  br i1 %.not.i.i.i, label %.noexc60, label %bb.s

bb.s:                                             ; preds = %.noexc58
  %i.ez = load i8, ptr %i.eu, align 1, !range !796
  %i.fa = trunc nuw i8 %i.ez to i1
  %or.cond.i.i.i80 = select i1 %i.ee, i1 true, i1 %i.fa
  br i1 %or.cond.i.i.i80, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fb = lshr i64 %indvars.iv393, 6
  %i.fc = and i64 %i.fb, 67108863
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !855
  %i.ff = and i64 %indvars.iv393, 63
  %i.fg = shl nuw i64 1, %i.ff
  %i.fh = and i64 %i.fe, %i.fg
  br label %.noexc59

bb.u:                                             ; preds = %bb.s
  %i.fi = load i8, ptr %i.ev, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fk = load i64, ptr %i.cz, align 8, !tbaa !855
  %i.fl = and i64 %i.fk, 1
  br label %.noexc59

bb.w:                                             ; preds = %bb.u
  %i.fm = load ptr, ptr %i.ew, align 8, !tbaa !1529
  %i.fn = shl nsw i64 %indvars.iv393, 2
  %i.fo = getelementptr inbounds i8, ptr %i.fm, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !3
  %i.fq = zext i32 %i.fp to i64                   ; 2 uses
  %i.fr = lshr i64 %i.fq, 6
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !855
  %i.fu = and i64 %i.fq, 63
  %i.fv = shl nuw i64 1, %i.fu
  %i.fw = and i64 %i.fv, %i.ft
  br label %.noexc59

.noexc59:                                         ; preds = %bb.w, %bb.v, %bb.t
  %.0.i.i.i83.in = phi i64 [ %i.fh, %bb.t ], [ %i.fl, %bb.v ], [ %i.fw, %bb.w ]
  %.0.i.i.i83.not = icmp eq i64 %.0.i.i.i83.in, 0
  br i1 %.0.i.i.i83.not, label %.loopexit326, label %.noexc60

.noexc60:                                         ; preds = %.noexc58, %.noexc59
  %i.fx = trunc nsw i64 %indvars.iv393 to i32
  br i1 %i.ee, label %.noexc61, label %bb.x

bb.x:                                             ; preds = %.noexc60
  %i.fy = load i8, ptr %i.ev, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ga = load i32, ptr %i.ex, align 8, !tbaa !1255
  br label %.noexc61

bb.z:                                             ; preds = %bb.x
  %i.gb = load ptr, ptr %i.ew, align 8, !tbaa !1529
  %i.gc = shl nsw i64 %indvars.iv393, 2
  %i.gd = getelementptr inbounds i8, ptr %i.gb, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !3
  br label %.noexc61
end_hunk_22
begin_hunk_23_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
          cleanup
  br label %bb.aq

bb.am:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.iw = load ptr, ptr %4, align 8, !tbaa !1108
  %.not.i106 = icmp eq ptr %i.iw, null
  br i1 %.not.i106, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit107, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit107

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit107: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clImEEDaSP_.exit

bb.ao:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.ix = landingpad { ptr, i32 }
          cleanup
  %i.iy = load ptr, ptr %4, align 8, !tbaa !1108
  %.not.i108 = icmp eq ptr %i.iy, null
  br i1 %.not.i108, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109, %bb.al
  %.pn.i41 = phi { ptr, i32 } [ %i.ix, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit109 ], [ %i.iv, %bb.al ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ar

common.resume:                                    ; preds = %bb.af, %bb.bw, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit185, %bb.ch, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit105, %bb.aq
  %common.resume.op = phi { ptr, i32 } [ %.pn.i41, %bb.aq ], [ %i.it, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit105 ], [ %.pn.i, %bb.ch ], [ %i.sg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit185 ], [ %i.qx, %bb.bw ], [ %i.hk, %bb.af ]
  resume { ptr, i32 } %common.resume.op

bb.ar:                                            ; preds = %bb.aq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit105
  %i.iz = landingpad { ptr, i32 }
          catch ptr null
  %i.ja = extractvalue { ptr, i32 } %i.iz, 0
  call void @__clang_call_terminate(ptr %i.ja) #44
  unreachable

bb.as:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clImEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit102, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit107
  %i.jb = add nuw i64 %.0364, 1                   ; 2 uses
  %i.jc = icmp ult i64 %i.jb, %i.p
  br i1 %i.jc, label %bb.c, label %.loopexit328, !llvm.loop !5097

bb.at:                                            ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit
  %.015355 = phi i64 [ %i.j, %.lr.ph ], [ %i.sp, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.jd = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015355, i1 true)
  %i.je = trunc nuw nsw i64 %i.jd to i32
  %i.jf = or disjoint i32 %i.l, %i.je             ; 5 uses
  %i.jg = load ptr, ptr %i.m, align 8, !tbaa !5060 ; 2 uses
  %i.jh = load ptr, ptr %i.k, align 8, !tbaa !5062, !nonnull !797, !align !916 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.ji = sext i32 %i.jf to i64                   ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !5063, !nonnull !797, !align !916 ; 4 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 120
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !4941, !nonnull !797, !align !916 ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 58
  %i.jo = load i8, ptr %i.jn, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.jp = trunc nuw i8 %i.jo to i1
  br i1 %i.jp, label %.noexc18, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 59
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.js = trunc nuw i8 %i.jr to i1
  br i1 %i.js, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jm, i64 64
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !1255
  br label %.noexc18

bb.aw:                                            ; preds = %bb.au
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !1529
  %i.jx = shl nsw i64 %i.ji, 2
  %i.jy = getelementptr inbounds i8, ptr %i.jw, i64 %i.jx
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !3
  br label %.noexc18

.noexc18:                                         ; preds = %bb.aw, %bb.av, %bb.at
  %.0.i.i111 = phi i32 [ %i.jz, %bb.aw ], [ %i.ju, %bb.av ], [ %i.jf, %bb.at ]
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jk, i64 136
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !4869
  %i.kc = sext i32 %.0.i.i111 to i64              ; 2 uses
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.kb, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !3  ; 5 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jk, i64 144
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !4872
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.kc
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !3  ; 8 uses
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %.loopexit332, label %.noexc23

.noexc23:                                         ; preds = %.noexc18
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jk, i64 152
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !4942, !nonnull !797, !align !916 ; 22 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 56
  %i.kn = load i8, ptr %i.km, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.ko = trunc nuw i8 %i.kn to i1
  %i.kp = sext i32 %i.ke to i64                   ; 7 uses
  br i1 %i.ko, label %.noexc30, label %.noexc24

.noexc24:                                         ; preds = %.noexc23
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !1547 ; 4 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kl, i64 58
  %i.kt = load i8, ptr %i.ks, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.ku = trunc nuw i8 %i.kt to i1
  br i1 %i.ku, label %.noexc25.thread, label %bb.ax

bb.ax:                                            ; preds = %.noexc24
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kl, i64 59
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.kx = trunc nuw i8 %i.kw to i1
  br i1 %i.kx, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kl, i64 64
  br label %.noexc25

bb.az:                                            ; preds = %bb.ax
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !1529
  %i.lb = shl nsw i64 %i.kp, 2
  %i.lc = getelementptr inbounds i8, ptr %i.la, i64 %i.lb
  br label %.noexc25

.noexc25:                                         ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i122.in = phi ptr [ %i.lc, %bb.az ], [ %i.ky, %bb.ay ]
  %.0.i.i.i.i.i122 = load i32, ptr %.0.i.i.i.i.i122.in, align 4, !tbaa !3
  %i.ld = sext i32 %.0.i.i.i.i.i122 to i64
  %i.le = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %i.ld
  %i.lf = load double, ptr %i.le, align 8, !tbaa !4912 ; 2 uses
  %i.lg = icmp sgt i32 %i.ki, 1
  br i1 %i.lg, label %.noexc26.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc25.thread:                                  ; preds = %.noexc24
  %i.lh = sext i32 %i.ke to i64
  %i.li = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %i.lh
  %i.lj = load double, ptr %i.li, align 8, !tbaa !4912 ; 3 uses
  %i.lk = icmp sgt i32 %i.ki, 1
  br i1 %i.lk, label %.noexc26.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread

.noexc26.lr.ph:                                   ; preds = %.noexc25
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kl, i64 64
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kl, i64 59
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.lp = trunc nuw i8 %i.lo to i1
  %wide.trip.count399 = zext nneg i32 %i.ki to i64
  br label %.noexc26

.noexc26.us.preheader:                            ; preds = %.noexc25.thread
  %wide.trip.count404 = zext nneg i32 %i.ki to i64
  %invariant.gep441 = getelementptr [8 x i8], ptr %i.kr, i64 %i.kp ; 3 uses
  %i.lq = add nsw i64 %wide.trip.count404, -1     ; 3 uses
  %xtraiter471 = and i64 %i.lq, 1
  %i.lr = icmp eq i32 %i.ki, 2
  br i1 %i.lr, label %.noexc26.us.epil.preheader, label %.noexc26.us.preheader.new

.noexc26.us.preheader.new:                        ; preds = %.noexc26.us.preheader
  %unroll_iter475 = and i64 %i.lq, -2
  br label %.noexc26.us

.noexc26.us:                                      ; preds = %.noexc26.us, %.noexc26.us.preheader.new
  %indvars.iv401 = phi i64 [ 1, %.noexc26.us.preheader.new ], [ %indvars.iv.next402.1, %.noexc26.us ] ; 3 uses
  %.0308348.us = phi double [ %i.lj, %.noexc26.us.preheader.new ], [ %spec.select323.us.1, %.noexc26.us ] ; 3 uses
  %niter476 = phi i64 [ 0, %.noexc26.us.preheader.new ], [ %niter476.next.1, %.noexc26.us ]
  %gep442 = getelementptr [8 x i8], ptr %invariant.gep441, i64 %indvars.iv401
  %i.ls = load double, ptr %gep442, align 8, !tbaa !4912 ; 3 uses
  %i.lt = fcmp uno double %i.ls, 0.000000e+00
  %i.lu = fcmp ord double %.0308348.us, 0.000000e+00
  %or.cond.not.i.i129.us = select i1 %i.lt, i1 %i.lu, i1 false
  %i.lv = fcmp ogt double %i.ls, %.0308348.us
  %.0.i.i130.us = select i1 %or.cond.not.i.i129.us, i1 true, i1 %i.lv
  %spec.select323.us = select i1 %.0.i.i130.us, double %i.ls, double %.0308348.us ; 3 uses
  %i.lw = getelementptr [8 x i8], ptr %invariant.gep441, i64 %indvars.iv401
  %gep442.1 = getelementptr i8, ptr %i.lw, i64 8
  %i.lx = load double, ptr %gep442.1, align 8, !tbaa !4912 ; 3 uses
  %i.ly = fcmp uno double %i.lx, 0.000000e+00
  %i.lz = fcmp ord double %spec.select323.us, 0.000000e+00
  %or.cond.not.i.i129.us.1 = select i1 %i.ly, i1 %i.lz, i1 false
  %i.ma = fcmp ogt double %i.lx, %spec.select323.us
  %.0.i.i130.us.1 = select i1 %or.cond.not.i.i129.us.1, i1 true, i1 %i.ma
  %spec.select323.us.1 = select i1 %.0.i.i130.us.1, double %i.lx, double %spec.select323.us ; 3 uses
  %indvars.iv.next402.1 = add nuw nsw i64 %indvars.iv401, 2 ; 2 uses
  %niter476.next.1 = add i64 %niter476, 2         ; 2 uses
  %niter476.ncmp.1 = icmp eq i64 %niter476.next.1, %unroll_iter475
  br i1 %niter476.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread.loopexit456.unr-lcssa, label %.noexc26.us, !llvm.loop !5066

.noexc26:                                         ; preds = %.noexc26.lr.ph, %.noexc27
  %indvars.iv396 = phi i64 [ 1, %.noexc26.lr.ph ], [ %indvars.iv.next397, %.noexc27 ] ; 2 uses
  %.0308348 = phi double [ %i.lf, %.noexc26.lr.ph ], [ %spec.select323, %.noexc27 ] ; 3 uses
  br i1 %i.lp, label %.noexc27, label %bb.ba

bb.ba:                                            ; preds = %.noexc26
  %i.mb = add nsw i64 %indvars.iv396, %i.kp
  %i.mc = load ptr, ptr %i.ll, align 8, !tbaa !1529
  %i.md = shl nsw i64 %i.mb, 2
  %i.me = getelementptr inbounds i8, ptr %i.mc, i64 %i.md
  br label %.noexc27

.noexc27:                                         ; preds = %.noexc26, %bb.ba
  %.0.i.i.i.i127.in = phi ptr [ %i.me, %bb.ba ], [ %i.lm, %.noexc26 ]
  %.0.i.i.i.i127 = load i32, ptr %.0.i.i.i.i127.in, align 4, !tbaa !3
  %i.mf = sext i32 %.0.i.i.i.i127 to i64
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %i.mf
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !4912 ; 3 uses
  %i.mi = fcmp uno double %i.mh, 0.000000e+00
  %i.mj = fcmp ord double %.0308348, 0.000000e+00
  %or.cond.not.i.i129 = select i1 %i.mi, i1 %i.mj, i1 false
  %i.mk = fcmp ogt double %i.mh, %.0308348
  %.0.i.i130 = select i1 %or.cond.not.i.i129, i1 true, i1 %i.mk
  %spec.select323 = select i1 %.0.i.i130, double %i.mh, double %.0308348 ; 2 uses
  %indvars.iv.next397 = add nuw nsw i64 %indvars.iv396, 1 ; 2 uses
  %exitcond400.not = icmp eq i64 %indvars.iv.next397, %wide.trip.count399
  br i1 %exitcond400.not, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread, label %.noexc26, !llvm.loop !5066

.noexc30:                                         ; preds = %.noexc23
  %i.ml = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i134 = icmp eq ptr %i.mm, null        ; 2 uses
  %.phi.trans.insert410 = getelementptr inbounds nuw i8, ptr %i.kl, i64 58
  %.pre411 = load i8, ptr %.phi.trans.insert410, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i134, label %.noexc32, label %bb.bb

bb.bb:                                            ; preds = %.noexc30
  %i.mn = trunc nuw i8 %.pre411 to i1
  %i.mo = getelementptr inbounds nuw i8, ptr %i.kl, i64 57
  %i.mp = load i8, ptr %i.mo, align 1, !range !796
  %i.mq = trunc nuw i8 %i.mp to i1
  %or.cond.i.i.i135 = select i1 %i.mn, i1 true, i1 %i.mq
  br i1 %or.cond.i.i.i135, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.mr = lshr i64 %i.kp, 6
  %i.ms = and i64 %i.mr, 67108863
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %i.ms
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !855
  %i.mv = and i64 %i.kp, 63
  %i.mw = shl nuw i64 1, %i.mv
  %i.mx = and i64 %i.mu, %i.mw
  br label %.noexc31

bb.bd:                                            ; preds = %bb.bb
  %i.my = getelementptr inbounds nuw i8, ptr %i.kl, i64 59
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.na = trunc nuw i8 %i.mz to i1
  br i1 %i.na, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.nb = load i64, ptr %i.mm, align 8, !tbaa !855
  %i.nc = and i64 %i.nb, 1
  br label %.noexc31

bb.bf:                                            ; preds = %bb.bd
  %i.nd = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !1529
  %i.nf = shl nsw i64 %i.kp, 2
  %i.ng = getelementptr inbounds i8, ptr %i.ne, i64 %i.nf
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !3
  %i.ni = zext i32 %i.nh to i64                   ; 2 uses
  %i.nj = lshr i64 %i.ni, 6
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %i.nj
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !855
  %i.nm = and i64 %i.ni, 63
  %i.nn = shl nuw i64 1, %i.nm
  %i.no = and i64 %i.nn, %i.nl
  br label %.noexc31

.noexc31:                                         ; preds = %bb.bf, %bb.be, %bb.bc
  %.0.i.i.i138.in = phi i64 [ %i.mx, %bb.bc ], [ %i.nc, %bb.be ], [ %i.no, %bb.bf ]
  %.0.i.i.i138.not = icmp eq i64 %.0.i.i.i138.in, 0
  br i1 %.0.i.i.i138.not, label %.loopexit332, label %.noexc32

.noexc32:                                         ; preds = %.noexc30, %.noexc31
  %i.np = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !1547 ; 2 uses
  %i.nr = trunc nuw i8 %.pre411 to i1             ; 3 uses
  br i1 %i.nr, label %.noexc33, label %bb.bg

bb.bg:                                            ; preds = %.noexc32
  %i.ns = getelementptr inbounds nuw i8, ptr %i.kl, i64 59
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.nu = trunc nuw i8 %i.nt to i1
  br i1 %i.nu, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.nv = getelementptr inbounds nuw i8, ptr %i.kl, i64 64
  %i.nw = load i32, ptr %i.nv, align 8, !tbaa !1255
  br label %.noexc33

bb.bi:                                            ; preds = %bb.bg
  %i.nx = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !1529
  %i.nz = shl nsw i64 %i.kp, 2
  %i.oa = getelementptr inbounds i8, ptr %i.ny, i64 %i.nz
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !3
  br label %.noexc33

.noexc33:                                         ; preds = %bb.bi, %bb.bh, %.noexc32
  %.0.i.i.i.i145 = phi i32 [ %i.ob, %bb.bi ], [ %i.nw, %bb.bh ], [ %i.ke, %.noexc32 ]
  %i.oc = sext i32 %.0.i.i.i.i145 to i64
  %i.od = getelementptr inbounds [8 x i8], ptr %i.nq, i64 %i.oc
  %i.oe = load double, ptr %i.od, align 8, !tbaa !4912 ; 2 uses
  %i.of = add nsw i32 %i.ki, %i.ke
  %i.og = icmp eq i32 %i.ki, 1
  br i1 %i.og, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSB_EEEE7iterateIJNS1_12VectorReaderISB_EEEEEvRNSE_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSN_.exit.thread, label %.noexc35.lr.ph

.noexc35.lr.ph:                                   ; preds = %.noexc33
  %.sroa.0222.0350 = add i32 %i.ke, 1
  %i.oh = getelementptr inbounds nuw i8, ptr %i.kl, i64 57
  %i.oi = getelementptr inbounds nuw i8, ptr %i.kl, i64 59 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.kl, i64 8 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.kl, i64 64
  %i.ol = sext i32 %.sroa.0222.0350 to i64
  br label %.noexc35

.noexc35:                                         ; preds = %.noexc35.lr.ph, %.noexc38
  %indvars.iv406 = phi i64 [ %i.ol, %.noexc35.lr.ph ], [ %indvars.iv.next407, %.noexc38 ] ; 6 uses
  %.0310351 = phi double [ %i.oe, %.noexc35.lr.ph ], [ %spec.select324, %.noexc38 ] ; 3 uses
  br i1 %.not.i.i.i134, label %.noexc37, label %bb.bj

bb.bj:                                            ; preds = %.noexc35
  %i.om = load i8, ptr %i.oh, align 1, !range !796
  %i.on = trunc nuw i8 %i.om to i1
  %or.cond.i.i.i150 = select i1 %i.nr, i1 true, i1 %i.on
  br i1 %or.cond.i.i.i150, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.oo = lshr i64 %indvars.iv406, 6
  %i.op = and i64 %i.oo, 67108863
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %i.op
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !855
  %i.os = and i64 %indvars.iv406, 63
  %i.ot = shl nuw i64 1, %i.os
  %i.ou = and i64 %i.or, %i.ot
  br label %.noexc36

bb.bl:                                            ; preds = %bb.bj
  %i.ov = load i8, ptr %i.oi, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ow = trunc nuw i8 %i.ov to i1
  br i1 %i.ow, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ox = load i64, ptr %i.mm, align 8, !tbaa !855
  %i.oy = and i64 %i.ox, 1
  br label %.noexc36

bb.bn:                                            ; preds = %bb.bl
  %i.oz = load ptr, ptr %i.oj, align 8, !tbaa !1529
  %i.pa = shl nsw i64 %indvars.iv406, 2
  %i.pb = getelementptr inbounds i8, ptr %i.oz, i64 %i.pa
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !3
  %i.pd = zext i32 %i.pc to i64                   ; 2 uses
  %i.pe = lshr i64 %i.pd, 6
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %i.pe
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !855
  %i.ph = and i64 %i.pd, 63
  %i.pi = shl nuw i64 1, %i.ph
  %i.pj = and i64 %i.pi, %i.pg
  br label %.noexc36

.noexc36:                                         ; preds = %bb.bn, %bb.bm, %bb.bk
  %.0.i.i.i153.in = phi i64 [ %i.ou, %bb.bk ], [ %i.oy, %bb.bm ], [ %i.pj, %bb.bn ]
  %.0.i.i.i153.not = icmp eq i64 %.0.i.i.i153.in, 0
  br i1 %.0.i.i.i153.not, label %.loopexit332, label %.noexc37

.noexc37:                                         ; preds = %.noexc35, %.noexc36
  %i.pk = trunc nsw i64 %indvars.iv406 to i32
  br i1 %i.nr, label %.noexc38, label %bb.bo

bb.bo:                                            ; preds = %.noexc37
  %i.pl = load i8, ptr %i.oi, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.pm = trunc nuw i8 %i.pl to i1
  br i1 %i.pm, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.pn = load i32, ptr %i.ok, align 8, !tbaa !1255
  br label %.noexc38

bb.bq:                                            ; preds = %bb.bo
  %i.po = load ptr, ptr %i.oj, align 8, !tbaa !1529
  %i.pp = shl nsw i64 %indvars.iv406, 2
  %i.pq = getelementptr inbounds i8, ptr %i.po, i64 %i.pp
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !3
  br label %.noexc38
end_hunk_23
begin_hunk_24_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISD_EEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKS1_SS_EUlSS_E_EEvSW_SS_T0_EUlSS_E_EEvSS_:bb.a
  %indvars.iv.i223 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i223, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !855
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1540

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !855
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph224, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph224 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i25 = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i25, label %bb.h, label %bb.az

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1538 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1536 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit150

.lr.ph:                                           ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !5822 ; 2 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !5881, !nonnull !797, !align !916 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.an = sext i32 %i.ag to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISB_EEEEEJSE_EEEE7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit
  %indvars.iv190 = phi i64 [ %i.an, %.lr.ph ], [ %indvars.iv.next191, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISB_EEEEEJSE_EEEE7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !5882, !nonnull !797, !align !916 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !5886, !nonnull !797, !align !916 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 58
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = trunc nsw i64 %indvars.iv190 to i32     ; 3 uses
  br i1 %i.at, label %.noexc5, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 59
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !1255
  br label %.noexc5

bb.l:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1529
  %i.bc = shl nsw i64 %indvars.iv190, 2
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  br label %.noexc5

.noexc5:                                          ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i = phi i32 [ %i.be, %bb.l ], [ %i.az, %bb.k ], [ %i.au, %bb.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 136
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !5812
  %i.bh = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3  ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ao, i64 144
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !5815
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bh
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3  ; 8 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.loopexit148, label %.noexc10

.noexc10:                                         ; preds = %.noexc5
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ao, i64 152
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !5887, !nonnull !797, !align !916 ; 22 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = sext i32 %i.bj to i64                   ; 7 uses
  br i1 %i.bt, label %.noexc16, label %.noexc11

.noexc11:                                         ; preds = %.noexc10
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1547 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 58
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %.noexc12.thread, label %bb.m

bb.m:                                             ; preds = %.noexc11
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  br label %.noexc12

bb.o:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1529
  %i.cg = shl nsw i64 %i.bu, 2
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 %i.cg
  br label %.noexc12

.noexc12:                                         ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.in = phi ptr [ %i.ch, %bb.o ], [ %i.cd, %bb.n ]
  %.0.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i.in, align 4, !tbaa !3
  %i.ci = sext i32 %.0.i.i.i.i.i to i64
  %i.cj = getelementptr inbounds [16 x i8], ptr %i.bw, i64 %i.ci ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.cj, align 8, !tbaa !855 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !855 ; 2 uses
  %i.ck = icmp sgt i32 %i.bn, 1
  br i1 %i.ck, label %.noexc13.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.thread

.noexc12.thread:                                  ; preds = %.noexc11
  %i.cl = sext i32 %i.bj to i64
  %i.cm = getelementptr inbounds [16 x i8], ptr %i.bw, i64 %i.cl ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i202 = load i64, ptr %i.cm, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i203 = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.sroa.2.0.copyload.i.i.i.i204 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i203, align 8, !tbaa !855 ; 3 uses
  %i.cn = icmp sgt i32 %i.bn, 1
  br i1 %i.cn, label %.noexc13.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.thread

.noexc13.lr.ph:                                   ; preds = %.noexc12
  %i.co = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cs = trunc nuw i8 %i.cr to i1
  %wide.trip.count = zext nneg i32 %i.bn to i64
  br label %.noexc13

.noexc13.us.preheader:                            ; preds = %.noexc12.thread
  %wide.trip.count185 = zext nneg i32 %i.bn to i64
  %invariant.gep = getelementptr [16 x i8], ptr %i.bw, i64 %i.bu ; 3 uses
  %i.ct = add nsw i64 %wide.trip.count185, -1     ; 3 uses
  %xtraiter = and i64 %i.ct, 1
  %i.cu = icmp eq i32 %i.bn, 2
  br i1 %i.cu, label %.noexc13.us.epil.preheader, label %.noexc13.us.preheader.new

.noexc13.us.preheader.new:                        ; preds = %.noexc13.us.preheader
  %unroll_iter = and i64 %i.ct, -2
  br label %.noexc13.us

.noexc13.us:                                      ; preds = %.noexc13.us, %.noexc13.us.preheader.new
  %indvars.iv182 = phi i64 [ 1, %.noexc13.us.preheader.new ], [ %indvars.iv.next183.1, %.noexc13.us ] ; 3 uses
  %.sroa.6137.0160.us = phi i64 [ %.sroa.2.0.copyload.i.i.i.i204, %.noexc13.us.preheader.new ], [ %spec.select144.us.1, %.noexc13.us ] ; 2 uses
  %.sroa.0135.0159.us = phi i64 [ %.sroa.0.0.copyload.i.i.i.i202, %.noexc13.us.preheader.new ], [ %spec.select.us.1, %.noexc13.us ] ; 3 uses
  %niter = phi i64 [ 0, %.noexc13.us.preheader.new ], [ %niter.next.1, %.noexc13.us ]
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv182 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.us = load i64, ptr %gep, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.us = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %.sroa.2.0.copyload.i.i.i.us = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.us, align 8, !tbaa !855 ; 2 uses
  %i.cv = icmp eq i64 %.sroa.0.0.copyload.i.i.i.us, %.sroa.0135.0159.us
  %i.cw = icmp slt i64 %.sroa.0.0.copyload.i.i.i.us, %.sroa.0135.0159.us
  %i.cx = icmp ult i64 %.sroa.2.0.copyload.i.i.i.us, %.sroa.6137.0160.us
  %.sroa.09.2.i.i.us = select i1 %i.cv, i1 %i.cx, i1 %i.cw ; 2 uses
  %spec.select.us = select i1 %.sroa.09.2.i.i.us, i64 %.sroa.0.0.copyload.i.i.i.us, i64 %.sroa.0135.0159.us ; 3 uses
  %spec.select144.us = select i1 %.sroa.09.2.i.i.us, i64 %.sroa.2.0.copyload.i.i.i.us, i64 %.sroa.6137.0160.us ; 2 uses
  %i.cy = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv182 ; 2 uses
  %gep.1 = getelementptr i8, ptr %i.cy, i64 16
  %.sroa.0.0.copyload.i.i.i.us.1 = load i64, ptr %gep.1, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.us.1 = getelementptr i8, ptr %i.cy, i64 24
  %.sroa.2.0.copyload.i.i.i.us.1 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.us.1, align 8, !tbaa !855 ; 2 uses
  %i.cz = icmp eq i64 %.sroa.0.0.copyload.i.i.i.us.1, %spec.select.us
  %i.da = icmp slt i64 %.sroa.0.0.copyload.i.i.i.us.1, %spec.select.us
  %i.db = icmp ult i64 %.sroa.2.0.copyload.i.i.i.us.1, %spec.select144.us
  %.sroa.09.2.i.i.us.1 = select i1 %i.cz, i1 %i.db, i1 %i.da ; 2 uses
  %spec.select.us.1 = select i1 %.sroa.09.2.i.i.us.1, i64 %.sroa.0.0.copyload.i.i.i.us.1, i64 %spec.select.us ; 3 uses
  %spec.select144.us.1 = select i1 %.sroa.09.2.i.i.us.1, i64 %.sroa.2.0.copyload.i.i.i.us.1, i64 %spec.select144.us ; 3 uses
  %indvars.iv.next183.1 = add nuw nsw i64 %indvars.iv182, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.thread.loopexit225.unr-lcssa, label %.noexc13.us, !llvm.loop !5888

.noexc13:                                         ; preds = %.noexc13.lr.ph, %.noexc14
  %indvars.iv = phi i64 [ 1, %.noexc13.lr.ph ], [ %indvars.iv.next, %.noexc14 ] ; 2 uses
  %.sroa.6137.0160 = phi i64 [ %.sroa.2.0.copyload.i.i.i.i, %.noexc13.lr.ph ], [ %spec.select144, %.noexc14 ] ; 2 uses
  %.sroa.0135.0159 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %.noexc13.lr.ph ], [ %spec.select, %.noexc14 ] ; 3 uses
  br i1 %i.cs, label %.noexc14, label %bb.p

bb.p:                                             ; preds = %.noexc13
  %i.dc = add nsw i64 %indvars.iv, %i.bu
  %i.dd = load ptr, ptr %i.co, align 8, !tbaa !1529
  %i.de = shl nsw i64 %i.dc, 2
  %i.df = getelementptr inbounds i8, ptr %i.dd, i64 %i.de
  br label %.noexc14

.noexc14:                                         ; preds = %.noexc13, %bb.p
  %.0.i.i.i.i.in = phi ptr [ %i.df, %bb.p ], [ %i.cp, %.noexc13 ]
  %.0.i.i.i.i = load i32, ptr %.0.i.i.i.i.in, align 4, !tbaa !3
  %i.dg = sext i32 %.0.i.i.i.i to i64
  %i.dh = getelementptr inbounds [16 x i8], ptr %i.bw, i64 %i.dg ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dh, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !855 ; 2 uses
  %i.di = icmp eq i64 %.sroa.0.0.copyload.i.i.i, %.sroa.0135.0159
  %i.dj = icmp slt i64 %.sroa.0.0.copyload.i.i.i, %.sroa.0135.0159
  %i.dk = icmp ult i64 %.sroa.2.0.copyload.i.i.i, %.sroa.6137.0160
  %.sroa.09.2.i.i = select i1 %i.di, i1 %i.dk, i1 %i.dj ; 2 uses
  %spec.select = select i1 %.sroa.09.2.i.i, i64 %.sroa.0.0.copyload.i.i.i, i64 %.sroa.0135.0159 ; 2 uses
  %spec.select144 = select i1 %.sroa.09.2.i.i, i64 %.sroa.2.0.copyload.i.i.i, i64 %.sroa.6137.0160 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.thread, label %.noexc13, !llvm.loop !5888

.noexc16:                                         ; preds = %.noexc10
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.dm, null           ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bq, i64 58
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i, label %.noexc18, label %bb.q

bb.q:                                             ; preds = %.noexc16
  %i.dn = trunc nuw i8 %.pre to i1
  %i.do = getelementptr inbounds nuw i8, ptr %i.bq, i64 57
  %i.dp = load i8, ptr %i.do, align 1, !range !796
  %i.dq = trunc nuw i8 %i.dp to i1
  %or.cond.i.i.i = select i1 %i.dn, i1 true, i1 %i.dq
  br i1 %or.cond.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dr = lshr i64 %i.bu, 6
  %i.ds = and i64 %i.dr, 67108863
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !855
  %i.dv = and i64 %i.bu, 63
  %i.dw = shl nuw i64 1, %i.dv
  %i.dx = and i64 %i.du, %i.dw
  br label %.noexc17

bb.s:                                             ; preds = %bb.q
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.eb = load i64, ptr %i.dm, align 8, !tbaa !855
  %i.ec = and i64 %i.eb, 1
  br label %.noexc17

bb.u:                                             ; preds = %bb.s
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !1529
  %i.ef = shl nsw i64 %i.bu, 2
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !3
  %i.ei = zext i32 %i.eh to i64                   ; 2 uses
  %i.ej = lshr i64 %i.ei, 6
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !855
  %i.em = and i64 %i.ei, 63
  %i.en = shl nuw i64 1, %i.em
  %i.eo = and i64 %i.en, %i.el
  br label %.noexc17

.noexc17:                                         ; preds = %bb.u, %bb.t, %bb.r
  %.0.i.i.i.in = phi i64 [ %i.dx, %bb.r ], [ %i.ec, %bb.t ], [ %i.eo, %bb.u ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %.loopexit148, label %.noexc18

.noexc18:                                         ; preds = %.noexc16, %.noexc17
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !1547 ; 2 uses
  %i.er = trunc nuw i8 %.pre to i1                ; 3 uses
  br i1 %i.er, label %.noexc19, label %bb.v

bb.v:                                             ; preds = %.noexc18
  %i.es = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.et = load i8, ptr %i.es, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !1255
  br label %.noexc19

bb.x:                                             ; preds = %bb.v
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !1529
  %i.ez = shl nsw i64 %i.bu, 2
  %i.fa = getelementptr inbounds i8, ptr %i.ey, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !3
  br label %.noexc19

.noexc19:                                         ; preds = %bb.x, %bb.w, %.noexc18
  %.0.i.i.i.i35 = phi i32 [ %i.fb, %bb.x ], [ %i.ew, %bb.w ], [ %i.bj, %.noexc18 ]
  %i.fc = sext i32 %.0.i.i.i.i35 to i64
  %i.fd = getelementptr inbounds [16 x i8], ptr %i.eq, i64 %i.fc ; 2 uses
  %.sroa.0.0.copyload.i.i.i36 = load i64, ptr %i.fd, align 8, !tbaa !855 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i37 = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %.sroa.2.0.copyload.i.i.i38 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i37, align 8, !tbaa !855 ; 2 uses
  %i.fe = add nsw i32 %i.bn, %i.bj
  %i.ff = icmp eq i32 %i.bn, 1
  br i1 %i.ff, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.thread, label %.noexc21.lr.ph

.noexc21.lr.ph:                                   ; preds = %.noexc19
  %.sroa.0118.0164 = add i32 %i.bj, 1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bq, i64 57
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bq, i64 59 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.fk = sext i32 %.sroa.0118.0164 to i64
  br label %.noexc21

.noexc21:                                         ; preds = %.noexc21.lr.ph, %.noexc24
  %indvars.iv187 = phi i64 [ %i.fk, %.noexc21.lr.ph ], [ %indvars.iv.next188, %.noexc24 ] ; 6 uses
  %.sroa.6114.0166 = phi i64 [ %.sroa.2.0.copyload.i.i.i38, %.noexc21.lr.ph ], [ %spec.select146, %.noexc24 ] ; 2 uses
  %.sroa.0112.0165 = phi i64 [ %.sroa.0.0.copyload.i.i.i36, %.noexc21.lr.ph ], [ %spec.select145, %.noexc24 ] ; 3 uses
  br i1 %.not.i.i.i, label %.noexc23, label %bb.y

bb.y:                                             ; preds = %.noexc21
  %i.fl = load i8, ptr %i.fg, align 1, !range !796
  %i.fm = trunc nuw i8 %i.fl to i1
  %or.cond.i.i.i45 = select i1 %i.er, i1 true, i1 %i.fm
  br i1 %or.cond.i.i.i45, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fn = lshr i64 %indvars.iv187, 6
  %i.fo = and i64 %i.fn, 67108863
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.fo
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !855
  %i.fr = and i64 %indvars.iv187, 63
  %i.fs = shl nuw i64 1, %i.fr
  %i.ft = and i64 %i.fq, %i.fs
  br label %.noexc22

bb.aa:                                            ; preds = %bb.y
  %i.fu = load i8, ptr %i.fh, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fw = load i64, ptr %i.dm, align 8, !tbaa !855
  %i.fx = and i64 %i.fw, 1
  br label %.noexc22

bb.ac:                                            ; preds = %bb.aa
  %i.fy = load ptr, ptr %i.fi, align 8, !tbaa !1529
  %i.fz = shl nsw i64 %indvars.iv187, 2
  %i.ga = getelementptr inbounds i8, ptr %i.fy, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !3
  %i.gc = zext i32 %i.gb to i64                   ; 2 uses
  %i.gd = lshr i64 %i.gc, 6
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.gd
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !855
  %i.gg = and i64 %i.gc, 63
  %i.gh = shl nuw i64 1, %i.gg
  %i.gi = and i64 %i.gh, %i.gf
  br label %.noexc22

.noexc22:                                         ; preds = %bb.ac, %bb.ab, %bb.z
  %.0.i.i.i48.in = phi i64 [ %i.ft, %bb.z ], [ %i.fx, %bb.ab ], [ %i.gi, %bb.ac ]
  %.0.i.i.i48.not = icmp eq i64 %.0.i.i.i48.in, 0
  br i1 %.0.i.i.i48.not, label %.loopexit148, label %.noexc23

.noexc23:                                         ; preds = %.noexc21, %.noexc22
  %i.gj = trunc nsw i64 %indvars.iv187 to i32
  br i1 %i.er, label %.noexc24, label %bb.ad

bb.ad:                                            ; preds = %.noexc23
  %i.gk = load i8, ptr %i.fh, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gm = load i32, ptr %i.fj, align 8, !tbaa !1255
  br label %.noexc24

end_hunk_24
begin_hunk_25_@_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISD_EEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_:bb.a
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISD_EEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !5901

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISD_EEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS4_10VectorExecEEESC_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISE_EEEEEJSH_EEEE7iterateIJNS4_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_EUlimE_ZNS3_IS11_EEvS13_iibST_EUliE_EEviiST_S10_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS4_10VectorExecEEESC_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISE_EEEEEJSH_EEEE7iterateIJNS4_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_EUlimE_ZNS3_IS11_EEvS13_iibST_EUliE_EEviiST_S10_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISD_EEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !5902, !range !796, !noundef !797
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !5904
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !855
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit155, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISB_EEEEEJSE_EEEE7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit
  %.0175 = phi i64 [ %i.k, %.preheader ], [ %i.is, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISB_EEEEEJSE_EEEE7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit ] ; 3 uses
  %i.o = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0175, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 5 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !5822 ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !5881, !nonnull !797, !align !916 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.t = sext i32 %i.q to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !5882, !nonnull !797, !align !916 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !5886, !nonnull !797, !align !916 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 58
  %i.z = load i8, ptr %i.y, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.noexc12, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 59
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1255
  br label %.noexc12

bb.e:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1529
  %i.ai = shl nsw i64 %i.t, 2
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  br label %.noexc12

.noexc12:                                         ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i = phi i32 [ %i.ak, %bb.e ], [ %i.af, %bb.d ], [ %i.q, %bb.b ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !5812
  %i.an = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3  ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !5815
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.an
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3  ; 8 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.loopexit153, label %.noexc17

.noexc17:                                         ; preds = %.noexc12
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !5887, !nonnull !797, !align !916 ; 22 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = sext i32 %i.ap to i64                   ; 7 uses
  br i1 %i.az, label %.noexc23, label %.noexc18

.noexc18:                                         ; preds = %.noexc17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1547 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 58
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.noexc19.thread, label %bb.f

bb.f:                                             ; preds = %.noexc18
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  br label %.noexc19

bb.h:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1529
  %i.bm = shl nsw i64 %i.ba, 2
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 %i.bm
  br label %.noexc19

.noexc19:                                         ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.in = phi ptr [ %i.bn, %bb.h ], [ %i.bj, %bb.g ]
  %.0.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i.in, align 4, !tbaa !3
  %i.bo = sext i32 %.0.i.i.i.i.i to i64
  %i.bp = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.bo ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bp, align 8, !tbaa !855 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !855 ; 2 uses
  %i.bq = icmp sgt i32 %i.at, 1
  br i1 %i.bq, label %.noexc20.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.thread

.noexc19.thread:                                  ; preds = %.noexc18
  %i.br = sext i32 %i.ap to i64
  %i.bs = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.br ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i199 = load i64, ptr %i.bs, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i200 = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.2.0.copyload.i.i.i.i201 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i200, align 8, !tbaa !855 ; 3 uses
  %i.bt = icmp sgt i32 %i.at, 1
  br i1 %i.bt, label %.noexc20.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.thread

.noexc20.lr.ph:                                   ; preds = %.noexc19
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.by = trunc nuw i8 %i.bx to i1
  %wide.trip.count = zext nneg i32 %i.at to i64
  br label %.noexc20

.noexc20.us.preheader:                            ; preds = %.noexc19.thread
  %wide.trip.count187 = zext nneg i32 %i.at to i64
  %invariant.gep = getelementptr [16 x i8], ptr %i.bc, i64 %i.ba ; 3 uses
  %i.bz = add nsw i64 %wide.trip.count187, -1     ; 3 uses
  %xtraiter = and i64 %i.bz, 1
  %i.ca = icmp eq i32 %i.at, 2
  br i1 %i.ca, label %.noexc20.us.epil.preheader, label %.noexc20.us.preheader.new

.noexc20.us.preheader.new:                        ; preds = %.noexc20.us.preheader
  %unroll_iter = and i64 %i.bz, -2
  br label %.noexc20.us

.noexc20.us:                                      ; preds = %.noexc20.us, %.noexc20.us.preheader.new
  %indvars.iv184 = phi i64 [ 1, %.noexc20.us.preheader.new ], [ %indvars.iv.next185.1, %.noexc20.us ] ; 3 uses
  %.sroa.6142.0165.us = phi i64 [ %.sroa.2.0.copyload.i.i.i.i201, %.noexc20.us.preheader.new ], [ %spec.select149.us.1, %.noexc20.us ] ; 2 uses
  %.sroa.0140.0164.us = phi i64 [ %.sroa.0.0.copyload.i.i.i.i199, %.noexc20.us.preheader.new ], [ %spec.select.us.1, %.noexc20.us ] ; 3 uses
  %niter = phi i64 [ 0, %.noexc20.us.preheader.new ], [ %niter.next.1, %.noexc20.us ]
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv184 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.us = load i64, ptr %gep, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.us = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %.sroa.2.0.copyload.i.i.i.us = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.us, align 8, !tbaa !855 ; 2 uses
  %i.cb = icmp eq i64 %.sroa.0.0.copyload.i.i.i.us, %.sroa.0140.0164.us
  %i.cc = icmp slt i64 %.sroa.0.0.copyload.i.i.i.us, %.sroa.0140.0164.us
  %i.cd = icmp ult i64 %.sroa.2.0.copyload.i.i.i.us, %.sroa.6142.0165.us
  %.sroa.09.2.i.i.us = select i1 %i.cb, i1 %i.cd, i1 %i.cc ; 2 uses
  %spec.select.us = select i1 %.sroa.09.2.i.i.us, i64 %.sroa.0.0.copyload.i.i.i.us, i64 %.sroa.0140.0164.us ; 3 uses
  %spec.select149.us = select i1 %.sroa.09.2.i.i.us, i64 %.sroa.2.0.copyload.i.i.i.us, i64 %.sroa.6142.0165.us ; 2 uses
  %i.ce = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv184 ; 2 uses
  %gep.1 = getelementptr i8, ptr %i.ce, i64 16
  %.sroa.0.0.copyload.i.i.i.us.1 = load i64, ptr %gep.1, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.us.1 = getelementptr i8, ptr %i.ce, i64 24
  %.sroa.2.0.copyload.i.i.i.us.1 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.us.1, align 8, !tbaa !855 ; 2 uses
  %i.cf = icmp eq i64 %.sroa.0.0.copyload.i.i.i.us.1, %spec.select.us
  %i.cg = icmp slt i64 %.sroa.0.0.copyload.i.i.i.us.1, %spec.select.us
  %i.ch = icmp ult i64 %.sroa.2.0.copyload.i.i.i.us.1, %spec.select149.us
  %.sroa.09.2.i.i.us.1 = select i1 %i.cf, i1 %i.ch, i1 %i.cg ; 2 uses
  %spec.select.us.1 = select i1 %.sroa.09.2.i.i.us.1, i64 %.sroa.0.0.copyload.i.i.i.us.1, i64 %spec.select.us ; 3 uses
  %spec.select149.us.1 = select i1 %.sroa.09.2.i.i.us.1, i64 %.sroa.2.0.copyload.i.i.i.us.1, i64 %spec.select149.us ; 3 uses
  %indvars.iv.next185.1 = add nuw nsw i64 %indvars.iv184, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.thread.loopexit219.unr-lcssa, label %.noexc20.us, !llvm.loop !5888

.noexc20:                                         ; preds = %.noexc20.lr.ph, %.noexc21
  %indvars.iv = phi i64 [ 1, %.noexc20.lr.ph ], [ %indvars.iv.next, %.noexc21 ] ; 2 uses
  %.sroa.6142.0165 = phi i64 [ %.sroa.2.0.copyload.i.i.i.i, %.noexc20.lr.ph ], [ %spec.select149, %.noexc21 ] ; 2 uses
  %.sroa.0140.0164 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %.noexc20.lr.ph ], [ %spec.select, %.noexc21 ] ; 3 uses
  br i1 %i.by, label %.noexc21, label %bb.i

bb.i:                                             ; preds = %.noexc20
  %i.ci = add nsw i64 %indvars.iv, %i.ba
  %i.cj = load ptr, ptr %i.bu, align 8, !tbaa !1529
  %i.ck = shl nsw i64 %i.ci, 2
  %i.cl = getelementptr inbounds i8, ptr %i.cj, i64 %i.ck
  br label %.noexc21

.noexc21:                                         ; preds = %.noexc20, %bb.i
  %.0.i.i.i.i.in = phi ptr [ %i.cl, %bb.i ], [ %i.bv, %.noexc20 ]
  %.0.i.i.i.i = load i32, ptr %.0.i.i.i.i.in, align 4, !tbaa !3
  %i.cm = sext i32 %.0.i.i.i.i to i64
  %i.cn = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.cm ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.cn, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !855 ; 2 uses
  %i.co = icmp eq i64 %.sroa.0.0.copyload.i.i.i, %.sroa.0140.0164
  %i.cp = icmp slt i64 %.sroa.0.0.copyload.i.i.i, %.sroa.0140.0164
  %i.cq = icmp ult i64 %.sroa.2.0.copyload.i.i.i, %.sroa.6142.0165
  %.sroa.09.2.i.i = select i1 %i.co, i1 %i.cq, i1 %i.cp ; 2 uses
  %spec.select = select i1 %.sroa.09.2.i.i, i64 %.sroa.0.0.copyload.i.i.i, i64 %.sroa.0140.0164 ; 2 uses
  %spec.select149 = select i1 %.sroa.09.2.i.i, i64 %.sroa.2.0.copyload.i.i.i, i64 %.sroa.6142.0165 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.thread, label %.noexc20, !llvm.loop !5888

.noexc23:                                         ; preds = %.noexc17
  %i.cr = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.cs, null           ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aw, i64 58
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i, label %.noexc25, label %bb.j

bb.j:                                             ; preds = %.noexc23
  %i.ct = trunc nuw i8 %.pre to i1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aw, i64 57
  %i.cv = load i8, ptr %i.cu, align 1, !range !796
  %i.cw = trunc nuw i8 %i.cv to i1
  %or.cond.i.i.i = select i1 %i.ct, i1 true, i1 %i.cw
  br i1 %or.cond.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cx = lshr i64 %i.ba, 6
  %i.cy = and i64 %i.cx, 67108863
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !855
  %i.db = and i64 %i.ba, 63
  %i.dc = shl nuw i64 1, %i.db
  %i.dd = and i64 %i.da, %i.dc
  br label %.noexc24

bb.l:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.df = load i8, ptr %i.de, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dh = load i64, ptr %i.cs, align 8, !tbaa !855
  %i.di = and i64 %i.dh, 1
  br label %.noexc24

bb.n:                                             ; preds = %bb.l
  %i.dj = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !1529
  %i.dl = shl nsw i64 %i.ba, 2
  %i.dm = getelementptr inbounds i8, ptr %i.dk, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3
  %i.do = zext i32 %i.dn to i64                   ; 2 uses
  %i.dp = lshr i64 %i.do, 6
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.dp
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !855
  %i.ds = and i64 %i.do, 63
  %i.dt = shl nuw i64 1, %i.ds
  %i.du = and i64 %i.dt, %i.dr
  br label %.noexc24

.noexc24:                                         ; preds = %bb.n, %bb.m, %bb.k
  %.0.i.i.i.in = phi i64 [ %i.dd, %bb.k ], [ %i.di, %bb.m ], [ %i.du, %bb.n ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %.loopexit153, label %.noexc25

.noexc25:                                         ; preds = %.noexc23, %.noexc24
  %i.dv = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1547 ; 2 uses
  %i.dx = trunc nuw i8 %.pre to i1                ; 3 uses
  br i1 %i.dx, label %.noexc26, label %bb.o

bb.o:                                             ; preds = %.noexc25
  %i.dy = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !1255
  br label %.noexc26

bb.q:                                             ; preds = %bb.o
  %i.ed = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !1529
  %i.ef = shl nsw i64 %i.ba, 2
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !3
  br label %.noexc26

.noexc26:                                         ; preds = %bb.q, %bb.p, %.noexc25
  %.0.i.i.i.i40 = phi i32 [ %i.eh, %bb.q ], [ %i.ec, %bb.p ], [ %i.ap, %.noexc25 ]
  %i.ei = sext i32 %.0.i.i.i.i40 to i64
  %i.ej = getelementptr inbounds [16 x i8], ptr %i.dw, i64 %i.ei ; 2 uses
  %.sroa.0.0.copyload.i.i.i41 = load i64, ptr %i.ej, align 8, !tbaa !855 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i42 = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.sroa.2.0.copyload.i.i.i43 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i42, align 8, !tbaa !855 ; 2 uses
  %i.ek = add nsw i32 %i.at, %i.ap
  %i.el = icmp eq i32 %i.at, 1
  br i1 %i.el, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.thread, label %.noexc28.lr.ph

.noexc28.lr.ph:                                   ; preds = %.noexc26
  %.sroa.0123.0169 = add i32 %i.ap, 1
  %i.em = getelementptr inbounds nuw i8, ptr %i.aw, i64 57
  %i.en = getelementptr inbounds nuw i8, ptr %i.aw, i64 59 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.eq = sext i32 %.sroa.0123.0169 to i64
  br label %.noexc28

.noexc28:                                         ; preds = %.noexc28.lr.ph, %.noexc31
  %indvars.iv189 = phi i64 [ %i.eq, %.noexc28.lr.ph ], [ %indvars.iv.next190, %.noexc31 ] ; 6 uses
  %.sroa.6119.0171 = phi i64 [ %.sroa.2.0.copyload.i.i.i43, %.noexc28.lr.ph ], [ %spec.select151, %.noexc31 ] ; 2 uses
  %.sroa.0117.0170 = phi i64 [ %.sroa.0.0.copyload.i.i.i41, %.noexc28.lr.ph ], [ %spec.select150, %.noexc31 ] ; 3 uses
  br i1 %.not.i.i.i, label %.noexc30, label %bb.r

bb.r:                                             ; preds = %.noexc28
  %i.er = load i8, ptr %i.em, align 1, !range !796
  %i.es = trunc nuw i8 %i.er to i1
  %or.cond.i.i.i50 = select i1 %i.dx, i1 true, i1 %i.es
  br i1 %or.cond.i.i.i50, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.et = lshr i64 %indvars.iv189, 6
  %i.eu = and i64 %i.et, 67108863
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !855
  %i.ex = and i64 %indvars.iv189, 63
  %i.ey = shl nuw i64 1, %i.ex
  %i.ez = and i64 %i.ew, %i.ey
  br label %.noexc29

bb.t:                                             ; preds = %bb.r
  %i.fa = load i8, ptr %i.en, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fc = load i64, ptr %i.cs, align 8, !tbaa !855
  %i.fd = and i64 %i.fc, 1
  br label %.noexc29

bb.v:                                             ; preds = %bb.t
  %i.fe = load ptr, ptr %i.eo, align 8, !tbaa !1529
  %i.ff = shl nsw i64 %indvars.iv189, 2
  %i.fg = getelementptr inbounds i8, ptr %i.fe, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3
  %i.fi = zext i32 %i.fh to i64                   ; 2 uses
  %i.fj = lshr i64 %i.fi, 6
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !855
  %i.fm = and i64 %i.fi, 63
  %i.fn = shl nuw i64 1, %i.fm
  %i.fo = and i64 %i.fn, %i.fl
  br label %.noexc29

.noexc29:                                         ; preds = %bb.v, %bb.u, %bb.s
  %.0.i.i.i53.in = phi i64 [ %i.ez, %bb.s ], [ %i.fd, %bb.u ], [ %i.fo, %bb.v ]
  %.0.i.i.i53.not = icmp eq i64 %.0.i.i.i53.in, 0
  br i1 %.0.i.i.i53.not, label %.loopexit153, label %.noexc30

.noexc30:                                         ; preds = %.noexc28, %.noexc29
  %i.fp = trunc nsw i64 %indvars.iv189 to i32
  br i1 %i.dx, label %.noexc31, label %bb.w

bb.w:                                             ; preds = %.noexc30
  %i.fq = load i8, ptr %i.en, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fs = load i32, ptr %i.ep, align 8, !tbaa !1255
  br label %.noexc31

end_hunk_25
begin_hunk_26_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISD_EEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim:bb.a
  br i1 %.not10, label %.loopexit155, label %bb.b, !llvm.loop !5910

.loopexit155:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISB_EEEEEJSE_EEEE7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISD_EEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %5 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !5911, !range !796, !noundef !797
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !5913
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !855
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit368
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.at

bb.b:                                             ; preds = %bb.a
  %i.n = shl i32 %1, 6                            ; 3 uses
  %i.o = add i32 %i.n, 64
  %i.p = sext i32 %i.o to i64
  %.not421 = icmp eq i32 %i.n, -64
  br i1 %.not421, label %.loopexit368, label %.lr.ph420

.lr.ph420:                                        ; preds = %bb.b
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph420, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISB_EEEEEJSE_EEEE7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clImEEDaSQ_.exit
  %.0416 = phi i64 [ %i.q, %.lr.ph420 ], [ %i.it, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISB_EEEEEJSE_EEEE7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clImEEDaSQ_.exit ] ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !5822 ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !5881, !nonnull !797, !align !916 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !5882, !nonnull !797, !align !916 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !5886, !nonnull !797, !align !916 ; 4 uses
  %i.z = trunc i64 %.0416 to i32                  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 58
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.noexc47, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 59
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !1255
  br label %.noexc47

bb.f:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1529
  %sext.i = shl i64 %.0416, 32
  %i.ak = ashr exact i64 %sext.i, 30
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  br label %.noexc47

.noexc47:                                         ; preds = %bb.f, %bb.e, %bb.c
  %.0.i.i65 = phi i32 [ %i.am, %bb.f ], [ %i.ah, %bb.e ], [ %i.z, %bb.c ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !5812
  %i.ap = sext i32 %.0.i.i65 to i64               ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3  ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !5815
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ap
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3  ; 8 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.loopexit366, label %.noexc48

.noexc48:                                         ; preds = %.noexc47
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !5887, !nonnull !797, !align !916 ; 22 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = sext i32 %i.ar to i64                   ; 7 uses
  br i1 %i.bb, label %.noexc54, label %.noexc49

.noexc49:                                         ; preds = %.noexc48
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1547 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 58
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %.noexc50.thread, label %bb.g

bb.g:                                             ; preds = %.noexc49
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  br label %.noexc50

bb.i:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1529
  %i.bo = shl nsw i64 %i.bc, 2
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 %i.bo
  br label %.noexc50

.noexc50:                                         ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.in = phi ptr [ %i.bp, %bb.i ], [ %i.bl, %bb.h ]
  %.0.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i.in, align 4, !tbaa !3
  %i.bq = sext i32 %.0.i.i.i.i.i to i64
  %i.br = getelementptr inbounds [16 x i8], ptr %i.be, i64 %i.bq ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.br, align 8, !tbaa !855 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !855 ; 2 uses
  %i.bs = icmp sgt i32 %i.av, 1
  br i1 %i.bs, label %.noexc51.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit.thread

.noexc50.thread:                                  ; preds = %.noexc49
  %i.bt = sext i32 %i.ar to i64
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.be, i64 %i.bt ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i477 = load i64, ptr %i.bu, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i478 = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.2.0.copyload.i.i.i.i479 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i478, align 8, !tbaa !855 ; 3 uses
  %i.bv = icmp sgt i32 %i.av, 1
  br i1 %i.bv, label %.noexc51.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit.thread

.noexc51.lr.ph:                                   ; preds = %.noexc50
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ca = trunc nuw i8 %i.bz to i1
  %wide.trip.count = zext nneg i32 %i.av to i64
  br label %.noexc51

.noexc51.us.preheader:                            ; preds = %.noexc50.thread
  %wide.trip.count443 = zext nneg i32 %i.av to i64
  %invariant.gep = getelementptr [16 x i8], ptr %i.be, i64 %i.bc ; 3 uses
  %i.cb = add nsw i64 %wide.trip.count443, -1     ; 3 uses
  %xtraiter = and i64 %i.cb, 1
  %i.cc = icmp eq i32 %i.av, 2
  br i1 %i.cc, label %.noexc51.us.epil.preheader, label %.noexc51.us.preheader.new

.noexc51.us.preheader.new:                        ; preds = %.noexc51.us.preheader
  %unroll_iter = and i64 %i.cb, -2
  br label %.noexc51.us

.noexc51.us:                                      ; preds = %.noexc51.us, %.noexc51.us.preheader.new
  %indvars.iv440 = phi i64 [ 1, %.noexc51.us.preheader.new ], [ %indvars.iv.next441.1, %.noexc51.us ] ; 3 uses
  %.sroa.6344.0404.us = phi i64 [ %.sroa.2.0.copyload.i.i.i.i479, %.noexc51.us.preheader.new ], [ %spec.select358.us.1, %.noexc51.us ] ; 2 uses
  %.sroa.0342.0403.us = phi i64 [ %.sroa.0.0.copyload.i.i.i.i477, %.noexc51.us.preheader.new ], [ %spec.select.us.1, %.noexc51.us ] ; 3 uses
  %niter = phi i64 [ 0, %.noexc51.us.preheader.new ], [ %niter.next.1, %.noexc51.us ]
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv440 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.us = load i64, ptr %gep, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.us = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %.sroa.2.0.copyload.i.i.i.us = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.us, align 8, !tbaa !855 ; 2 uses
  %i.cd = icmp eq i64 %.sroa.0.0.copyload.i.i.i.us, %.sroa.0342.0403.us
  %i.ce = icmp slt i64 %.sroa.0.0.copyload.i.i.i.us, %.sroa.0342.0403.us
  %i.cf = icmp ult i64 %.sroa.2.0.copyload.i.i.i.us, %.sroa.6344.0404.us
  %.sroa.09.2.i.i.us = select i1 %i.cd, i1 %i.cf, i1 %i.ce ; 2 uses
  %spec.select.us = select i1 %.sroa.09.2.i.i.us, i64 %.sroa.0.0.copyload.i.i.i.us, i64 %.sroa.0342.0403.us ; 3 uses
  %spec.select358.us = select i1 %.sroa.09.2.i.i.us, i64 %.sroa.2.0.copyload.i.i.i.us, i64 %.sroa.6344.0404.us ; 2 uses
  %i.cg = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv440 ; 2 uses
  %gep.1 = getelementptr i8, ptr %i.cg, i64 16
  %.sroa.0.0.copyload.i.i.i.us.1 = load i64, ptr %gep.1, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.us.1 = getelementptr i8, ptr %i.cg, i64 24
  %.sroa.2.0.copyload.i.i.i.us.1 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.us.1, align 8, !tbaa !855 ; 2 uses
  %i.ch = icmp eq i64 %.sroa.0.0.copyload.i.i.i.us.1, %spec.select.us
  %i.ci = icmp slt i64 %.sroa.0.0.copyload.i.i.i.us.1, %spec.select.us
  %i.cj = icmp ult i64 %.sroa.2.0.copyload.i.i.i.us.1, %spec.select358.us
  %.sroa.09.2.i.i.us.1 = select i1 %i.ch, i1 %i.cj, i1 %i.ci ; 2 uses
  %spec.select.us.1 = select i1 %.sroa.09.2.i.i.us.1, i64 %.sroa.0.0.copyload.i.i.i.us.1, i64 %spec.select.us ; 3 uses
  %spec.select358.us.1 = select i1 %.sroa.09.2.i.i.us.1, i64 %.sroa.2.0.copyload.i.i.i.us.1, i64 %spec.select358.us ; 3 uses
  %indvars.iv.next441.1 = add nuw nsw i64 %indvars.iv440, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit.thread.loopexit531.unr-lcssa, label %.noexc51.us, !llvm.loop !5888

.noexc51:                                         ; preds = %.noexc51.lr.ph, %.noexc52
  %indvars.iv = phi i64 [ 1, %.noexc51.lr.ph ], [ %indvars.iv.next, %.noexc52 ] ; 2 uses
  %.sroa.6344.0404 = phi i64 [ %.sroa.2.0.copyload.i.i.i.i, %.noexc51.lr.ph ], [ %spec.select358, %.noexc52 ] ; 2 uses
  %.sroa.0342.0403 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %.noexc51.lr.ph ], [ %spec.select, %.noexc52 ] ; 3 uses
  br i1 %i.ca, label %.noexc52, label %bb.j

bb.j:                                             ; preds = %.noexc51
  %i.ck = add nsw i64 %indvars.iv, %i.bc
  %i.cl = load ptr, ptr %i.bw, align 8, !tbaa !1529
  %i.cm = shl nsw i64 %i.ck, 2
  %i.cn = getelementptr inbounds i8, ptr %i.cl, i64 %i.cm
  br label %.noexc52

.noexc52:                                         ; preds = %.noexc51, %bb.j
  %.0.i.i.i.i.in = phi ptr [ %i.cn, %bb.j ], [ %i.bx, %.noexc51 ]
  %.0.i.i.i.i = load i32, ptr %.0.i.i.i.i.in, align 4, !tbaa !3
  %i.co = sext i32 %.0.i.i.i.i to i64
  %i.cp = getelementptr inbounds [16 x i8], ptr %i.be, i64 %i.co ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.cp, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !855 ; 2 uses
  %i.cq = icmp eq i64 %.sroa.0.0.copyload.i.i.i, %.sroa.0342.0403
  %i.cr = icmp slt i64 %.sroa.0.0.copyload.i.i.i, %.sroa.0342.0403
  %i.cs = icmp ult i64 %.sroa.2.0.copyload.i.i.i, %.sroa.6344.0404
  %.sroa.09.2.i.i = select i1 %i.cq, i1 %i.cs, i1 %i.cr ; 2 uses
  %spec.select = select i1 %.sroa.09.2.i.i, i64 %.sroa.0.0.copyload.i.i.i, i64 %.sroa.0342.0403 ; 2 uses
  %spec.select358 = select i1 %.sroa.09.2.i.i, i64 %.sroa.2.0.copyload.i.i.i, i64 %.sroa.6344.0404 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit.thread, label %.noexc51, !llvm.loop !5888

.noexc54:                                         ; preds = %.noexc48
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.cu, null           ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ay, i64 58
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i, label %.noexc56, label %bb.k

bb.k:                                             ; preds = %.noexc54
  %i.cv = trunc nuw i8 %.pre to i1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ay, i64 57
  %i.cx = load i8, ptr %i.cw, align 1, !range !796
  %i.cy = trunc nuw i8 %i.cx to i1
  %or.cond.i.i.i = select i1 %i.cv, i1 true, i1 %i.cy
  br i1 %or.cond.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cz = lshr i64 %i.bc, 6
  %i.da = and i64 %i.cz, 67108863
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !855
  %i.dd = and i64 %i.bc, 63
  %i.de = shl nuw i64 1, %i.dd
  %i.df = and i64 %i.dc, %i.de
  br label %.noexc55

bb.m:                                             ; preds = %bb.k
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dj = load i64, ptr %i.cu, align 8, !tbaa !855
  %i.dk = and i64 %i.dj, 1
  br label %.noexc55

bb.o:                                             ; preds = %bb.m
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !1529
  %i.dn = shl nsw i64 %i.bc, 2
  %i.do = getelementptr inbounds i8, ptr %i.dm, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3
  %i.dq = zext i32 %i.dp to i64                   ; 2 uses
  %i.dr = lshr i64 %i.dq, 6
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !855
  %i.du = and i64 %i.dq, 63
  %i.dv = shl nuw i64 1, %i.du
  %i.dw = and i64 %i.dv, %i.dt
  br label %.noexc55

.noexc55:                                         ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i.i.in = phi i64 [ %i.df, %bb.l ], [ %i.dk, %bb.n ], [ %i.dw, %bb.o ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %.loopexit366, label %.noexc56

.noexc56:                                         ; preds = %.noexc54, %.noexc55
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !1547 ; 2 uses
  %i.dz = trunc nuw i8 %.pre to i1                ; 3 uses
  br i1 %i.dz, label %.noexc57, label %bb.p

bb.p:                                             ; preds = %.noexc56
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !1255
  br label %.noexc57

bb.r:                                             ; preds = %bb.p
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !1529
  %i.eh = shl nsw i64 %i.bc, 2
  %i.ei = getelementptr inbounds i8, ptr %i.eg, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !3
  br label %.noexc57

.noexc57:                                         ; preds = %bb.r, %bb.q, %.noexc56
  %.0.i.i.i.i74 = phi i32 [ %i.ej, %bb.r ], [ %i.ee, %bb.q ], [ %i.ar, %.noexc56 ]
  %i.ek = sext i32 %.0.i.i.i.i74 to i64
  %i.el = getelementptr inbounds [16 x i8], ptr %i.dy, i64 %i.ek ; 2 uses
  %.sroa.0.0.copyload.i.i.i75 = load i64, ptr %i.el, align 8, !tbaa !855 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i76 = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.sroa.2.0.copyload.i.i.i77 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i76, align 8, !tbaa !855 ; 2 uses
  %i.em = add nsw i32 %i.av, %i.ar
  %i.en = icmp eq i32 %i.av, 1
  br i1 %i.en, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit.thread, label %.noexc59.lr.ph

.noexc59.lr.ph:                                   ; preds = %.noexc57
  %.sroa.0322.0410 = add i32 %i.ar, 1
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ay, i64 57
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ay, i64 59 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.es = sext i32 %.sroa.0322.0410 to i64
  br label %.noexc59

.noexc59:                                         ; preds = %.noexc59.lr.ph, %.noexc62
  %indvars.iv445 = phi i64 [ %i.es, %.noexc59.lr.ph ], [ %indvars.iv.next446, %.noexc62 ] ; 6 uses
  %.sroa.6318.0412 = phi i64 [ %.sroa.2.0.copyload.i.i.i77, %.noexc59.lr.ph ], [ %spec.select360, %.noexc62 ] ; 2 uses
  %.sroa.0316.0411 = phi i64 [ %.sroa.0.0.copyload.i.i.i75, %.noexc59.lr.ph ], [ %spec.select359, %.noexc62 ] ; 3 uses
  br i1 %.not.i.i.i, label %.noexc61, label %bb.s

bb.s:                                             ; preds = %.noexc59
  %i.et = load i8, ptr %i.eo, align 1, !range !796
  %i.eu = trunc nuw i8 %i.et to i1
  %or.cond.i.i.i84 = select i1 %i.dz, i1 true, i1 %i.eu
  br i1 %or.cond.i.i.i84, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ev = lshr i64 %indvars.iv445, 6
  %i.ew = and i64 %i.ev, 67108863
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.ew
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !855
  %i.ez = and i64 %indvars.iv445, 63
  %i.fa = shl nuw i64 1, %i.ez
  %i.fb = and i64 %i.ey, %i.fa
  br label %.noexc60

bb.u:                                             ; preds = %bb.s
  %i.fc = load i8, ptr %i.ep, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fe = load i64, ptr %i.cu, align 8, !tbaa !855
  %i.ff = and i64 %i.fe, 1
  br label %.noexc60

bb.w:                                             ; preds = %bb.u
  %i.fg = load ptr, ptr %i.eq, align 8, !tbaa !1529
  %i.fh = shl nsw i64 %indvars.iv445, 2
  %i.fi = getelementptr inbounds i8, ptr %i.fg, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !3
  %i.fk = zext i32 %i.fj to i64                   ; 2 uses
  %i.fl = lshr i64 %i.fk, 6
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.fl
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !855
  %i.fo = and i64 %i.fk, 63
  %i.fp = shl nuw i64 1, %i.fo
  %i.fq = and i64 %i.fp, %i.fn
  br label %.noexc60

.noexc60:                                         ; preds = %bb.w, %bb.v, %bb.t
  %.0.i.i.i87.in = phi i64 [ %i.fb, %bb.t ], [ %i.ff, %bb.v ], [ %i.fq, %bb.w ]
  %.0.i.i.i87.not = icmp eq i64 %.0.i.i.i87.in, 0
  br i1 %.0.i.i.i87.not, label %.loopexit366, label %.noexc61

.noexc61:                                         ; preds = %.noexc59, %.noexc60
  %i.fr = trunc nsw i64 %indvars.iv445 to i32
  br i1 %i.dz, label %.noexc62, label %bb.x

bb.x:                                             ; preds = %.noexc61
  %i.fs = load i8, ptr %i.ep, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fu = load i32, ptr %i.er, align 8, !tbaa !1255
  br label %.noexc62

end_hunk_26
begin_hunk_27_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISD_EEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi:bb.a
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit115

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit115: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISB_EEEEEJSE_EEEE7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clImEEDaSQ_.exit

bb.ao:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.ip = landingpad { ptr, i32 }
          cleanup
  %i.iq = load ptr, ptr %4, align 8, !tbaa !1108
  %.not.i116 = icmp eq ptr %i.iq, null
  br i1 %.not.i116, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit117, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit117

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit117: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit117, %bb.al
  %.pn.i39 = phi { ptr, i32 } [ %i.ip, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit117 ], [ %i.in, %bb.al ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ar

common.resume:                                    ; preds = %bb.af, %bb.bw, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit211, %bb.ch, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit113, %bb.aq
  %common.resume.op = phi { ptr, i32 } [ %.pn.i39, %bb.aq ], [ %i.il, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit113 ], [ %.pn.i, %bb.ch ], [ %i.rq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit211 ], [ %i.qh, %bb.bw ], [ %i.hc, %bb.af ]
  resume { ptr, i32 } %common.resume.op

bb.ar:                                            ; preds = %bb.aq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit113
  %i.ir = landingpad { ptr, i32 }
          catch ptr null
  %i.is = extractvalue { ptr, i32 } %i.ir, 0
  call void @__clang_call_terminate(ptr %i.is) #44
  unreachable

bb.as:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISB_EEEEEJSE_EEEE7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clImEEDaSQ_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit110, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit115
  %i.it = add nuw i64 %.0416, 1                   ; 2 uses
  %i.iu = icmp ult i64 %i.it, %i.p
  br i1 %i.iu, label %bb.c, label %.loopexit368, !llvm.loop !5919

bb.at:                                            ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISB_EEEEEJSE_EEEE7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit
  %.015402 = phi i64 [ %i.j, %.lr.ph ], [ %i.rz, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISB_EEEEEJSE_EEEE7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit ] ; 3 uses
  %i.iv = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015402, i1 true)
  %i.iw = trunc nuw nsw i64 %i.iv to i32
  %i.ix = or disjoint i32 %i.l, %i.iw             ; 5 uses
  %i.iy = load ptr, ptr %i.m, align 8, !tbaa !5822 ; 2 uses
  %i.iz = load ptr, ptr %i.k, align 8, !tbaa !5881, !nonnull !797, !align !916 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.ja = sext i32 %i.ix to i64                   ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !5882, !nonnull !797, !align !916 ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 120
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !5886, !nonnull !797, !align !916 ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 58
  %i.jg = load i8, ptr %i.jf, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.jh = trunc nuw i8 %i.jg to i1
  br i1 %i.jh, label %.noexc18, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 59
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.jk = trunc nuw i8 %i.jj to i1
  br i1 %i.jk, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.jl = getelementptr inbounds nuw i8, ptr %i.je, i64 64
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !1255
  br label %.noexc18

bb.aw:                                            ; preds = %bb.au
  %i.jn = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !1529
  %i.jp = shl nsw i64 %i.ja, 2
  %i.jq = getelementptr inbounds i8, ptr %i.jo, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !3
  br label %.noexc18

.noexc18:                                         ; preds = %bb.aw, %bb.av, %bb.at
  %.0.i.i119 = phi i32 [ %i.jr, %bb.aw ], [ %i.jm, %bb.av ], [ %i.ix, %bb.at ]
  %i.js = getelementptr inbounds nuw i8, ptr %i.jc, i64 136
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !5812
  %i.ju = sext i32 %.0.i.i119 to i64              ; 2 uses
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.jt, i64 %i.ju
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !3  ; 5 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jc, i64 144
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !5815
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %i.ju
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !3  ; 8 uses
  %i.kb = icmp eq i32 %i.ka, 0
  br i1 %i.kb, label %.loopexit372, label %.noexc23

.noexc23:                                         ; preds = %.noexc18
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jc, i64 152
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !5887, !nonnull !797, !align !916 ; 22 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 56
  %i.kf = load i8, ptr %i.ke, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.kg = trunc nuw i8 %i.kf to i1
  %i.kh = sext i32 %i.jw to i64                   ; 7 uses
  br i1 %i.kg, label %.noexc29, label %.noexc24

.noexc24:                                         ; preds = %.noexc23
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !1547 ; 4 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kd, i64 58
  %i.kl = load i8, ptr %i.kk, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.km = trunc nuw i8 %i.kl to i1
  br i1 %i.km, label %.noexc25.thread, label %bb.ax

bb.ax:                                            ; preds = %.noexc24
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kd, i64 59
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.kp = trunc nuw i8 %i.ko to i1
  br i1 %i.kp, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kd, i64 64
  br label %.noexc25

bb.az:                                            ; preds = %bb.ax
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !1529
  %i.kt = shl nsw i64 %i.kh, 2
  %i.ku = getelementptr inbounds i8, ptr %i.ks, i64 %i.kt
  br label %.noexc25

.noexc25:                                         ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i130.in = phi ptr [ %i.ku, %bb.az ], [ %i.kq, %bb.ay ]
  %.0.i.i.i.i.i130 = load i32, ptr %.0.i.i.i.i.i130.in, align 4, !tbaa !3
  %i.kv = sext i32 %.0.i.i.i.i.i130 to i64
  %i.kw = getelementptr inbounds [16 x i8], ptr %i.kj, i64 %i.kv ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i131 = load i64, ptr %i.kw, align 8, !tbaa !855 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i132 = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %.sroa.2.0.copyload.i.i.i.i133 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i132, align 8, !tbaa !855 ; 2 uses
  %i.kx = icmp sgt i32 %i.ka, 1
  br i1 %i.kx, label %.noexc26.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.thread

.noexc25.thread:                                  ; preds = %.noexc24
  %i.ky = sext i32 %i.jw to i64
  %i.kz = getelementptr inbounds [16 x i8], ptr %i.kj, i64 %i.ky ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i131488 = load i64, ptr %i.kz, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i132489 = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %.sroa.2.0.copyload.i.i.i.i133490 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i132489, align 8, !tbaa !855 ; 3 uses
  %i.la = icmp sgt i32 %i.ka, 1
  br i1 %i.la, label %.noexc26.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.thread

.noexc26.lr.ph:                                   ; preds = %.noexc25
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kd, i64 64
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kd, i64 59
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.lf = trunc nuw i8 %i.le to i1
  %wide.trip.count451 = zext nneg i32 %i.ka to i64
  br label %.noexc26

.noexc26.us.preheader:                            ; preds = %.noexc25.thread
  %wide.trip.count456 = zext nneg i32 %i.ka to i64
  %invariant.gep511 = getelementptr [16 x i8], ptr %i.kj, i64 %i.kh ; 3 uses
  %i.lg = add nsw i64 %wide.trip.count456, -1     ; 3 uses
  %xtraiter542 = and i64 %i.lg, 1
  %i.lh = icmp eq i32 %i.ka, 2
  br i1 %i.lh, label %.noexc26.us.epil.preheader, label %.noexc26.us.preheader.new

.noexc26.us.preheader.new:                        ; preds = %.noexc26.us.preheader
  %unroll_iter547 = and i64 %i.lg, -2
  br label %.noexc26.us

.noexc26.us:                                      ; preds = %.noexc26.us, %.noexc26.us.preheader.new
  %indvars.iv453 = phi i64 [ 1, %.noexc26.us.preheader.new ], [ %indvars.iv.next454.1, %.noexc26.us ] ; 3 uses
  %.sroa.6274.0391.us = phi i64 [ %.sroa.2.0.copyload.i.i.i.i133490, %.noexc26.us.preheader.new ], [ %spec.select362.us.1, %.noexc26.us ] ; 2 uses
  %.sroa.0272.0390.us = phi i64 [ %.sroa.0.0.copyload.i.i.i.i131488, %.noexc26.us.preheader.new ], [ %spec.select361.us.1, %.noexc26.us ] ; 3 uses
  %niter548 = phi i64 [ 0, %.noexc26.us.preheader.new ], [ %niter548.next.1, %.noexc26.us ]
  %gep512 = getelementptr [16 x i8], ptr %invariant.gep511, i64 %indvars.iv453 ; 2 uses
  %.sroa.0.0.copyload.i.i.i141.us = load i64, ptr %gep512, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i142.us = getelementptr inbounds nuw i8, ptr %gep512, i64 8
  %.sroa.2.0.copyload.i.i.i143.us = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i142.us, align 8, !tbaa !855 ; 2 uses
  %i.li = icmp eq i64 %.sroa.0.0.copyload.i.i.i141.us, %.sroa.0272.0390.us
  %i.lj = icmp slt i64 %.sroa.0.0.copyload.i.i.i141.us, %.sroa.0272.0390.us
  %i.lk = icmp ult i64 %.sroa.2.0.copyload.i.i.i143.us, %.sroa.6274.0391.us
  %.sroa.09.2.i.i147.us = select i1 %i.li, i1 %i.lk, i1 %i.lj ; 2 uses
  %spec.select361.us = select i1 %.sroa.09.2.i.i147.us, i64 %.sroa.0.0.copyload.i.i.i141.us, i64 %.sroa.0272.0390.us ; 3 uses
  %spec.select362.us = select i1 %.sroa.09.2.i.i147.us, i64 %.sroa.2.0.copyload.i.i.i143.us, i64 %.sroa.6274.0391.us ; 2 uses
  %i.ll = getelementptr [16 x i8], ptr %invariant.gep511, i64 %indvars.iv453 ; 2 uses
  %gep512.1 = getelementptr i8, ptr %i.ll, i64 16
  %.sroa.0.0.copyload.i.i.i141.us.1 = load i64, ptr %gep512.1, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i142.us.1 = getelementptr i8, ptr %i.ll, i64 24
  %.sroa.2.0.copyload.i.i.i143.us.1 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i142.us.1, align 8, !tbaa !855 ; 2 uses
  %i.lm = icmp eq i64 %.sroa.0.0.copyload.i.i.i141.us.1, %spec.select361.us
  %i.ln = icmp slt i64 %.sroa.0.0.copyload.i.i.i141.us.1, %spec.select361.us
  %i.lo = icmp ult i64 %.sroa.2.0.copyload.i.i.i143.us.1, %spec.select362.us
  %.sroa.09.2.i.i147.us.1 = select i1 %i.lm, i1 %i.lo, i1 %i.ln ; 2 uses
  %spec.select361.us.1 = select i1 %.sroa.09.2.i.i147.us.1, i64 %.sroa.0.0.copyload.i.i.i141.us.1, i64 %spec.select361.us ; 3 uses
  %spec.select362.us.1 = select i1 %.sroa.09.2.i.i147.us.1, i64 %.sroa.2.0.copyload.i.i.i143.us.1, i64 %spec.select362.us ; 3 uses
  %indvars.iv.next454.1 = add nuw nsw i64 %indvars.iv453, 2 ; 2 uses
  %niter548.next.1 = add i64 %niter548, 2         ; 2 uses
  %niter548.ncmp.1 = icmp eq i64 %niter548.next.1, %unroll_iter547
  br i1 %niter548.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.thread.loopexit526.unr-lcssa, label %.noexc26.us, !llvm.loop !5888

.noexc26:                                         ; preds = %.noexc26.lr.ph, %.noexc27
  %indvars.iv448 = phi i64 [ 1, %.noexc26.lr.ph ], [ %indvars.iv.next449, %.noexc27 ] ; 2 uses
  %.sroa.6274.0391 = phi i64 [ %.sroa.2.0.copyload.i.i.i.i133, %.noexc26.lr.ph ], [ %spec.select362, %.noexc27 ] ; 2 uses
  %.sroa.0272.0390 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i131, %.noexc26.lr.ph ], [ %spec.select361, %.noexc27 ] ; 3 uses
  br i1 %i.lf, label %.noexc27, label %bb.ba

bb.ba:                                            ; preds = %.noexc26
  %i.lp = add nsw i64 %indvars.iv448, %i.kh
  %i.lq = load ptr, ptr %i.lb, align 8, !tbaa !1529
  %i.lr = shl nsw i64 %i.lp, 2
  %i.ls = getelementptr inbounds i8, ptr %i.lq, i64 %i.lr
  br label %.noexc27

.noexc27:                                         ; preds = %.noexc26, %bb.ba
  %.0.i.i.i.i140.in = phi ptr [ %i.ls, %bb.ba ], [ %i.lc, %.noexc26 ]
  %.0.i.i.i.i140 = load i32, ptr %.0.i.i.i.i140.in, align 4, !tbaa !3
  %i.lt = sext i32 %.0.i.i.i.i140 to i64
  %i.lu = getelementptr inbounds [16 x i8], ptr %i.kj, i64 %i.lt ; 2 uses
  %.sroa.0.0.copyload.i.i.i141 = load i64, ptr %i.lu, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i142 = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %.sroa.2.0.copyload.i.i.i143 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i142, align 8, !tbaa !855 ; 2 uses
  %i.lv = icmp eq i64 %.sroa.0.0.copyload.i.i.i141, %.sroa.0272.0390
  %i.lw = icmp slt i64 %.sroa.0.0.copyload.i.i.i141, %.sroa.0272.0390
  %i.lx = icmp ult i64 %.sroa.2.0.copyload.i.i.i143, %.sroa.6274.0391
  %.sroa.09.2.i.i147 = select i1 %i.lv, i1 %i.lx, i1 %i.lw ; 2 uses
  %spec.select361 = select i1 %.sroa.09.2.i.i147, i64 %.sroa.0.0.copyload.i.i.i141, i64 %.sroa.0272.0390 ; 2 uses
  %spec.select362 = select i1 %.sroa.09.2.i.i147, i64 %.sroa.2.0.copyload.i.i.i143, i64 %.sroa.6274.0391 ; 2 uses
  %indvars.iv.next449 = add nuw nsw i64 %indvars.iv448, 1 ; 2 uses
  %exitcond452.not = icmp eq i64 %indvars.iv.next449, %wide.trip.count451
  br i1 %exitcond452.not, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.thread, label %.noexc26, !llvm.loop !5888

.noexc29:                                         ; preds = %.noexc23
  %i.ly = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i151 = icmp eq ptr %i.lz, null        ; 2 uses
  %.phi.trans.insert462 = getelementptr inbounds nuw i8, ptr %i.kd, i64 58
  %.pre463 = load i8, ptr %.phi.trans.insert462, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i151, label %.noexc31, label %bb.bb

bb.bb:                                            ; preds = %.noexc29
  %i.ma = trunc nuw i8 %.pre463 to i1
  %i.mb = getelementptr inbounds nuw i8, ptr %i.kd, i64 57
  %i.mc = load i8, ptr %i.mb, align 1, !range !796
  %i.md = trunc nuw i8 %i.mc to i1
  %or.cond.i.i.i152 = select i1 %i.ma, i1 true, i1 %i.md
  br i1 %or.cond.i.i.i152, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.me = lshr i64 %i.kh, 6
  %i.mf = and i64 %i.me, 67108863
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.mf
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !855
  %i.mi = and i64 %i.kh, 63
  %i.mj = shl nuw i64 1, %i.mi
  %i.mk = and i64 %i.mh, %i.mj
  br label %.noexc30

bb.bd:                                            ; preds = %bb.bb
  %i.ml = getelementptr inbounds nuw i8, ptr %i.kd, i64 59
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.mn = trunc nuw i8 %i.mm to i1
  br i1 %i.mn, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.mo = load i64, ptr %i.lz, align 8, !tbaa !855
  %i.mp = and i64 %i.mo, 1
  br label %.noexc30

bb.bf:                                            ; preds = %bb.bd
  %i.mq = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !1529
  %i.ms = shl nsw i64 %i.kh, 2
  %i.mt = getelementptr inbounds i8, ptr %i.mr, i64 %i.ms
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !3
  %i.mv = zext i32 %i.mu to i64                   ; 2 uses
  %i.mw = lshr i64 %i.mv, 6
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.mw
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !855
  %i.mz = and i64 %i.mv, 63
  %i.na = shl nuw i64 1, %i.mz
  %i.nb = and i64 %i.na, %i.my
  br label %.noexc30

.noexc30:                                         ; preds = %bb.bf, %bb.be, %bb.bc
  %.0.i.i.i155.in = phi i64 [ %i.mk, %bb.bc ], [ %i.mp, %bb.be ], [ %i.nb, %bb.bf ]
  %.0.i.i.i155.not = icmp eq i64 %.0.i.i.i155.in, 0
  br i1 %.0.i.i.i155.not, label %.loopexit372, label %.noexc31

.noexc31:                                         ; preds = %.noexc29, %.noexc30
  %i.nc = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !1547 ; 2 uses
  %i.ne = trunc nuw i8 %.pre463 to i1             ; 3 uses
  br i1 %i.ne, label %.noexc32, label %bb.bg

bb.bg:                                            ; preds = %.noexc31
  %i.nf = getelementptr inbounds nuw i8, ptr %i.kd, i64 59
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.nh = trunc nuw i8 %i.ng to i1
  br i1 %i.nh, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ni = getelementptr inbounds nuw i8, ptr %i.kd, i64 64
  %i.nj = load i32, ptr %i.ni, align 8, !tbaa !1255
  br label %.noexc32

bb.bi:                                            ; preds = %bb.bg
  %i.nk = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !1529
  %i.nm = shl nsw i64 %i.kh, 2
  %i.nn = getelementptr inbounds i8, ptr %i.nl, i64 %i.nm
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !3
  br label %.noexc32

.noexc32:                                         ; preds = %bb.bi, %bb.bh, %.noexc31
  %.0.i.i.i.i162 = phi i32 [ %i.no, %bb.bi ], [ %i.nj, %bb.bh ], [ %i.jw, %.noexc31 ]
  %i.np = sext i32 %.0.i.i.i.i162 to i64
  %i.nq = getelementptr inbounds [16 x i8], ptr %i.nd, i64 %i.np ; 2 uses
  %.sroa.0.0.copyload.i.i.i163 = load i64, ptr %i.nq, align 8, !tbaa !855 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i164 = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %.sroa.2.0.copyload.i.i.i165 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i164, align 8, !tbaa !855 ; 2 uses
  %i.nr = add nsw i32 %i.ka, %i.jw
  %i.ns = icmp eq i32 %i.ka, 1
  br i1 %i.ns, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.thread, label %.noexc34.lr.ph

.noexc34.lr.ph:                                   ; preds = %.noexc32
  %.sroa.0255.0395 = add i32 %i.jw, 1
  %i.nt = getelementptr inbounds nuw i8, ptr %i.kd, i64 57
  %i.nu = getelementptr inbounds nuw i8, ptr %i.kd, i64 59 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.kd, i64 8 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.kd, i64 64
  %i.nx = sext i32 %.sroa.0255.0395 to i64
  br label %.noexc34

.noexc34:                                         ; preds = %.noexc34.lr.ph, %.noexc37
  %indvars.iv458 = phi i64 [ %i.nx, %.noexc34.lr.ph ], [ %indvars.iv.next459, %.noexc37 ] ; 6 uses
  %.sroa.6251.0397 = phi i64 [ %.sroa.2.0.copyload.i.i.i165, %.noexc34.lr.ph ], [ %spec.select364, %.noexc37 ] ; 2 uses
  %.sroa.0249.0396 = phi i64 [ %.sroa.0.0.copyload.i.i.i163, %.noexc34.lr.ph ], [ %spec.select363, %.noexc37 ] ; 3 uses
  br i1 %.not.i.i.i151, label %.noexc36, label %bb.bj

bb.bj:                                            ; preds = %.noexc34
  %i.ny = load i8, ptr %i.nt, align 1, !range !796
  %i.nz = trunc nuw i8 %i.ny to i1
  %or.cond.i.i.i172 = select i1 %i.ne, i1 true, i1 %i.nz
  br i1 %or.cond.i.i.i172, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.oa = lshr i64 %indvars.iv458, 6
  %i.ob = and i64 %i.oa, 67108863
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.ob
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !855
  %i.oe = and i64 %indvars.iv458, 63
  %i.of = shl nuw i64 1, %i.oe
  %i.og = and i64 %i.od, %i.of
  br label %.noexc35

bb.bl:                                            ; preds = %bb.bj
  %i.oh = load i8, ptr %i.nu, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.oi = trunc nuw i8 %i.oh to i1
  br i1 %i.oi, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.oj = load i64, ptr %i.lz, align 8, !tbaa !855
  %i.ok = and i64 %i.oj, 1
  br label %.noexc35

bb.bn:                                            ; preds = %bb.bl
  %i.ol = load ptr, ptr %i.nv, align 8, !tbaa !1529
  %i.om = shl nsw i64 %indvars.iv458, 2
  %i.on = getelementptr inbounds i8, ptr %i.ol, i64 %i.om
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !3
  %i.op = zext i32 %i.oo to i64                   ; 2 uses
  %i.oq = lshr i64 %i.op, 6
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.oq
  %i.os = load i64, ptr %i.or, align 8, !tbaa !855
  %i.ot = and i64 %i.op, 63
  %i.ou = shl nuw i64 1, %i.ot
  %i.ov = and i64 %i.ou, %i.os
  br label %.noexc35

.noexc35:                                         ; preds = %bb.bn, %bb.bm, %bb.bk
  %.0.i.i.i175.in = phi i64 [ %i.og, %bb.bk ], [ %i.ok, %bb.bm ], [ %i.ov, %bb.bn ]
  %.0.i.i.i175.not = icmp eq i64 %.0.i.i.i175.in, 0
  br i1 %.0.i.i.i175.not, label %.loopexit372, label %.noexc36

.noexc36:                                         ; preds = %.noexc34, %.noexc35
  %i.ow = trunc nsw i64 %indvars.iv458 to i32
  br i1 %i.ne, label %.noexc37, label %bb.bo

bb.bo:                                            ; preds = %.noexc36
  %i.ox = load i8, ptr %i.nu, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.oy = trunc nuw i8 %i.ox to i1
  br i1 %i.oy, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.oz = load i32, ptr %i.nw, align 8, !tbaa !1255
  br label %.noexc37

end_hunk_27
begin_hunk_28_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISD_EEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKS1_SS_EUlSS_E_EEvSW_SS_T0_EUlSS_E_EEvSS_:bb.a
  %indvars.iv.i223 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i223, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !855
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1540

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !855
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph224, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph224 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i25 = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i25, label %bb.h, label %bb.az

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1538 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1536 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit150

.lr.ph:                                           ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !5999 ; 2 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !6001, !nonnull !797, !align !916 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.an = sext i32 %i.ag to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISB_EEEEEJSE_EEEE7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit
  %indvars.iv190 = phi i64 [ %i.an, %.lr.ph ], [ %indvars.iv.next191, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISB_EEEEEJSE_EEEE7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !6002, !nonnull !797, !align !916 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !5886, !nonnull !797, !align !916 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 58
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = trunc nsw i64 %indvars.iv190 to i32     ; 3 uses
  br i1 %i.at, label %.noexc5, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 59
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !1255
  br label %.noexc5

bb.l:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1529
  %i.bc = shl nsw i64 %indvars.iv190, 2
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  br label %.noexc5

.noexc5:                                          ; preds = %bb.l, %bb.k, %bb.i
  %.0.i.i = phi i32 [ %i.be, %bb.l ], [ %i.az, %bb.k ], [ %i.au, %bb.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 136
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !5812
  %i.bh = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3  ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ao, i64 144
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !5815
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bh
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3  ; 8 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.loopexit148, label %.noexc10

.noexc10:                                         ; preds = %.noexc5
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ao, i64 152
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !5887, !nonnull !797, !align !916 ; 22 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = sext i32 %i.bj to i64                   ; 7 uses
  br i1 %i.bt, label %.noexc16, label %.noexc11

.noexc11:                                         ; preds = %.noexc10
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1547 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 58
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %.noexc12.thread, label %bb.m

bb.m:                                             ; preds = %.noexc11
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  br label %.noexc12

bb.o:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1529
  %i.cg = shl nsw i64 %i.bu, 2
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 %i.cg
  br label %.noexc12

.noexc12:                                         ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.in = phi ptr [ %i.ch, %bb.o ], [ %i.cd, %bb.n ]
  %.0.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i.in, align 4, !tbaa !3
  %i.ci = sext i32 %.0.i.i.i.i.i to i64
  %i.cj = getelementptr inbounds [16 x i8], ptr %i.bw, i64 %i.ci ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.cj, align 8, !tbaa !855 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !855 ; 2 uses
  %i.ck = icmp sgt i32 %i.bn, 1
  br i1 %i.ck, label %.noexc13.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.thread

.noexc12.thread:                                  ; preds = %.noexc11
  %i.cl = sext i32 %i.bj to i64
  %i.cm = getelementptr inbounds [16 x i8], ptr %i.bw, i64 %i.cl ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i202 = load i64, ptr %i.cm, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i203 = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.sroa.2.0.copyload.i.i.i.i204 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i203, align 8, !tbaa !855 ; 3 uses
  %i.cn = icmp sgt i32 %i.bn, 1
  br i1 %i.cn, label %.noexc13.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.thread

.noexc13.lr.ph:                                   ; preds = %.noexc12
  %i.co = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cs = trunc nuw i8 %i.cr to i1
  %wide.trip.count = zext nneg i32 %i.bn to i64
  br label %.noexc13

.noexc13.us.preheader:                            ; preds = %.noexc12.thread
  %wide.trip.count185 = zext nneg i32 %i.bn to i64
  %invariant.gep = getelementptr [16 x i8], ptr %i.bw, i64 %i.bu ; 3 uses
  %i.ct = add nsw i64 %wide.trip.count185, -1     ; 3 uses
  %xtraiter = and i64 %i.ct, 1
  %i.cu = icmp eq i32 %i.bn, 2
  br i1 %i.cu, label %.noexc13.us.epil.preheader, label %.noexc13.us.preheader.new

.noexc13.us.preheader.new:                        ; preds = %.noexc13.us.preheader
  %unroll_iter = and i64 %i.ct, -2
  br label %.noexc13.us

.noexc13.us:                                      ; preds = %.noexc13.us, %.noexc13.us.preheader.new
  %indvars.iv182 = phi i64 [ 1, %.noexc13.us.preheader.new ], [ %indvars.iv.next183.1, %.noexc13.us ] ; 3 uses
  %.sroa.6137.0160.us = phi i64 [ %.sroa.2.0.copyload.i.i.i.i204, %.noexc13.us.preheader.new ], [ %spec.select144.us.1, %.noexc13.us ] ; 2 uses
  %.sroa.0135.0159.us = phi i64 [ %.sroa.0.0.copyload.i.i.i.i202, %.noexc13.us.preheader.new ], [ %spec.select.us.1, %.noexc13.us ] ; 3 uses
  %niter = phi i64 [ 0, %.noexc13.us.preheader.new ], [ %niter.next.1, %.noexc13.us ]
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv182 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.us = load i64, ptr %gep, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.us = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %.sroa.2.0.copyload.i.i.i.us = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.us, align 8, !tbaa !855 ; 2 uses
  %i.cv = icmp eq i64 %.sroa.0.0.copyload.i.i.i.us, %.sroa.0135.0159.us
  %i.cw = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.us, %.sroa.0135.0159.us
  %i.cx = icmp ugt i64 %.sroa.2.0.copyload.i.i.i.us, %.sroa.6137.0160.us
  %.sroa.09.2.i.i.us = select i1 %i.cv, i1 %i.cx, i1 %i.cw ; 2 uses
  %spec.select.us = select i1 %.sroa.09.2.i.i.us, i64 %.sroa.0.0.copyload.i.i.i.us, i64 %.sroa.0135.0159.us ; 3 uses
  %spec.select144.us = select i1 %.sroa.09.2.i.i.us, i64 %.sroa.2.0.copyload.i.i.i.us, i64 %.sroa.6137.0160.us ; 2 uses
  %i.cy = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv182 ; 2 uses
  %gep.1 = getelementptr i8, ptr %i.cy, i64 16
  %.sroa.0.0.copyload.i.i.i.us.1 = load i64, ptr %gep.1, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.us.1 = getelementptr i8, ptr %i.cy, i64 24
  %.sroa.2.0.copyload.i.i.i.us.1 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.us.1, align 8, !tbaa !855 ; 2 uses
  %i.cz = icmp eq i64 %.sroa.0.0.copyload.i.i.i.us.1, %spec.select.us
  %i.da = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.us.1, %spec.select.us
  %i.db = icmp ugt i64 %.sroa.2.0.copyload.i.i.i.us.1, %spec.select144.us
  %.sroa.09.2.i.i.us.1 = select i1 %i.cz, i1 %i.db, i1 %i.da ; 2 uses
  %spec.select.us.1 = select i1 %.sroa.09.2.i.i.us.1, i64 %.sroa.0.0.copyload.i.i.i.us.1, i64 %spec.select.us ; 3 uses
  %spec.select144.us.1 = select i1 %.sroa.09.2.i.i.us.1, i64 %.sroa.2.0.copyload.i.i.i.us.1, i64 %spec.select144.us ; 3 uses
  %indvars.iv.next183.1 = add nuw nsw i64 %indvars.iv182, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.thread.loopexit225.unr-lcssa, label %.noexc13.us, !llvm.loop !6005

.noexc13:                                         ; preds = %.noexc13.lr.ph, %.noexc14
  %indvars.iv = phi i64 [ 1, %.noexc13.lr.ph ], [ %indvars.iv.next, %.noexc14 ] ; 2 uses
  %.sroa.6137.0160 = phi i64 [ %.sroa.2.0.copyload.i.i.i.i, %.noexc13.lr.ph ], [ %spec.select144, %.noexc14 ] ; 2 uses
  %.sroa.0135.0159 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %.noexc13.lr.ph ], [ %spec.select, %.noexc14 ] ; 3 uses
  br i1 %i.cs, label %.noexc14, label %bb.p

bb.p:                                             ; preds = %.noexc13
  %i.dc = add nsw i64 %indvars.iv, %i.bu
  %i.dd = load ptr, ptr %i.co, align 8, !tbaa !1529
  %i.de = shl nsw i64 %i.dc, 2
  %i.df = getelementptr inbounds i8, ptr %i.dd, i64 %i.de
  br label %.noexc14

.noexc14:                                         ; preds = %.noexc13, %bb.p
  %.0.i.i.i.i.in = phi ptr [ %i.df, %bb.p ], [ %i.cp, %.noexc13 ]
  %.0.i.i.i.i = load i32, ptr %.0.i.i.i.i.in, align 4, !tbaa !3
  %i.dg = sext i32 %.0.i.i.i.i to i64
  %i.dh = getelementptr inbounds [16 x i8], ptr %i.bw, i64 %i.dg ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dh, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !855 ; 2 uses
  %i.di = icmp eq i64 %.sroa.0.0.copyload.i.i.i, %.sroa.0135.0159
  %i.dj = icmp sgt i64 %.sroa.0.0.copyload.i.i.i, %.sroa.0135.0159
  %i.dk = icmp ugt i64 %.sroa.2.0.copyload.i.i.i, %.sroa.6137.0160
  %.sroa.09.2.i.i = select i1 %i.di, i1 %i.dk, i1 %i.dj ; 2 uses
  %spec.select = select i1 %.sroa.09.2.i.i, i64 %.sroa.0.0.copyload.i.i.i, i64 %.sroa.0135.0159 ; 2 uses
  %spec.select144 = select i1 %.sroa.09.2.i.i, i64 %.sroa.2.0.copyload.i.i.i, i64 %.sroa.6137.0160 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.thread, label %.noexc13, !llvm.loop !6005

.noexc16:                                         ; preds = %.noexc10
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.dm, null           ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bq, i64 58
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i, label %.noexc18, label %bb.q

bb.q:                                             ; preds = %.noexc16
  %i.dn = trunc nuw i8 %.pre to i1
  %i.do = getelementptr inbounds nuw i8, ptr %i.bq, i64 57
  %i.dp = load i8, ptr %i.do, align 1, !range !796
  %i.dq = trunc nuw i8 %i.dp to i1
  %or.cond.i.i.i = select i1 %i.dn, i1 true, i1 %i.dq
  br i1 %or.cond.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dr = lshr i64 %i.bu, 6
  %i.ds = and i64 %i.dr, 67108863
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !855
  %i.dv = and i64 %i.bu, 63
  %i.dw = shl nuw i64 1, %i.dv
  %i.dx = and i64 %i.du, %i.dw
  br label %.noexc17

bb.s:                                             ; preds = %bb.q
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.eb = load i64, ptr %i.dm, align 8, !tbaa !855
  %i.ec = and i64 %i.eb, 1
  br label %.noexc17

bb.u:                                             ; preds = %bb.s
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !1529
  %i.ef = shl nsw i64 %i.bu, 2
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !3
  %i.ei = zext i32 %i.eh to i64                   ; 2 uses
  %i.ej = lshr i64 %i.ei, 6
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !855
  %i.em = and i64 %i.ei, 63
  %i.en = shl nuw i64 1, %i.em
  %i.eo = and i64 %i.en, %i.el
  br label %.noexc17

.noexc17:                                         ; preds = %bb.u, %bb.t, %bb.r
  %.0.i.i.i.in = phi i64 [ %i.dx, %bb.r ], [ %i.ec, %bb.t ], [ %i.eo, %bb.u ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %.loopexit148, label %.noexc18

.noexc18:                                         ; preds = %.noexc16, %.noexc17
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !1547 ; 2 uses
  %i.er = trunc nuw i8 %.pre to i1                ; 3 uses
  br i1 %i.er, label %.noexc19, label %bb.v

bb.v:                                             ; preds = %.noexc18
  %i.es = getelementptr inbounds nuw i8, ptr %i.bq, i64 59
  %i.et = load i8, ptr %i.es, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !1255
  br label %.noexc19

bb.x:                                             ; preds = %bb.v
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !1529
  %i.ez = shl nsw i64 %i.bu, 2
  %i.fa = getelementptr inbounds i8, ptr %i.ey, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !3
  br label %.noexc19

.noexc19:                                         ; preds = %bb.x, %bb.w, %.noexc18
  %.0.i.i.i.i35 = phi i32 [ %i.fb, %bb.x ], [ %i.ew, %bb.w ], [ %i.bj, %.noexc18 ]
  %i.fc = sext i32 %.0.i.i.i.i35 to i64
  %i.fd = getelementptr inbounds [16 x i8], ptr %i.eq, i64 %i.fc ; 2 uses
  %.sroa.0.0.copyload.i.i.i36 = load i64, ptr %i.fd, align 8, !tbaa !855 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i37 = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %.sroa.2.0.copyload.i.i.i38 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i37, align 8, !tbaa !855 ; 2 uses
  %i.fe = add nsw i32 %i.bn, %i.bj
  %i.ff = icmp eq i32 %i.bn, 1
  br i1 %i.ff, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.thread, label %.noexc21.lr.ph

.noexc21.lr.ph:                                   ; preds = %.noexc19
  %.sroa.0118.0164 = add i32 %i.bj, 1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bq, i64 57
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bq, i64 59 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.fk = sext i32 %.sroa.0118.0164 to i64
  br label %.noexc21

.noexc21:                                         ; preds = %.noexc21.lr.ph, %.noexc24
  %indvars.iv187 = phi i64 [ %i.fk, %.noexc21.lr.ph ], [ %indvars.iv.next188, %.noexc24 ] ; 6 uses
  %.sroa.6114.0166 = phi i64 [ %.sroa.2.0.copyload.i.i.i38, %.noexc21.lr.ph ], [ %spec.select146, %.noexc24 ] ; 2 uses
  %.sroa.0112.0165 = phi i64 [ %.sroa.0.0.copyload.i.i.i36, %.noexc21.lr.ph ], [ %spec.select145, %.noexc24 ] ; 3 uses
  br i1 %.not.i.i.i, label %.noexc23, label %bb.y

bb.y:                                             ; preds = %.noexc21
  %i.fl = load i8, ptr %i.fg, align 1, !range !796
  %i.fm = trunc nuw i8 %i.fl to i1
  %or.cond.i.i.i45 = select i1 %i.er, i1 true, i1 %i.fm
  br i1 %or.cond.i.i.i45, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fn = lshr i64 %indvars.iv187, 6
  %i.fo = and i64 %i.fn, 67108863
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.fo
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !855
  %i.fr = and i64 %indvars.iv187, 63
  %i.fs = shl nuw i64 1, %i.fr
  %i.ft = and i64 %i.fq, %i.fs
  br label %.noexc22

bb.aa:                                            ; preds = %bb.y
  %i.fu = load i8, ptr %i.fh, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fw = load i64, ptr %i.dm, align 8, !tbaa !855
  %i.fx = and i64 %i.fw, 1
  br label %.noexc22

bb.ac:                                            ; preds = %bb.aa
  %i.fy = load ptr, ptr %i.fi, align 8, !tbaa !1529
  %i.fz = shl nsw i64 %indvars.iv187, 2
  %i.ga = getelementptr inbounds i8, ptr %i.fy, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !3
  %i.gc = zext i32 %i.gb to i64                   ; 2 uses
  %i.gd = lshr i64 %i.gc, 6
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.gd
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !855
  %i.gg = and i64 %i.gc, 63
  %i.gh = shl nuw i64 1, %i.gg
  %i.gi = and i64 %i.gh, %i.gf
  br label %.noexc22

.noexc22:                                         ; preds = %bb.ac, %bb.ab, %bb.z
  %.0.i.i.i48.in = phi i64 [ %i.ft, %bb.z ], [ %i.fx, %bb.ab ], [ %i.gi, %bb.ac ]
  %.0.i.i.i48.not = icmp eq i64 %.0.i.i.i48.in, 0
  br i1 %.0.i.i.i48.not, label %.loopexit148, label %.noexc23

.noexc23:                                         ; preds = %.noexc21, %.noexc22
  %i.gj = trunc nsw i64 %indvars.iv187 to i32
  br i1 %i.er, label %.noexc24, label %bb.ad

bb.ad:                                            ; preds = %.noexc23
  %i.gk = load i8, ptr %i.fh, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gm = load i32, ptr %i.fj, align 8, !tbaa !1255
  br label %.noexc24

end_hunk_28
begin_hunk_29_@_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISD_EEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_:bb.a
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISD_EEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !6018

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISD_EEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS4_10VectorExecEEESC_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISE_EEEEEJSH_EEEE7iterateIJNS4_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_EUlimE_ZNS3_IS11_EEvS13_iibST_EUliE_EEviiST_S10_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS4_10VectorExecEEESC_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISE_EEEEEJSH_EEEE7iterateIJNS4_12VectorReaderISH_EEEEEvRNSK_12ApplyContextEDpRT_EUlT_E1_ZNS5_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_EUlimE_ZNS3_IS11_EEvS13_iibST_EUliE_EEviiST_S10_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISD_EEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !6019, !range !796, !noundef !797
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !6021
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !855
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit155, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISB_EEEEEJSE_EEEE7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit
  %.0175 = phi i64 [ %i.k, %.preheader ], [ %i.is, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISB_EEEEEJSE_EEEE7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit ] ; 3 uses
  %i.o = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0175, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 5 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !5999 ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !6001, !nonnull !797, !align !916 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.t = sext i32 %i.q to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !6002, !nonnull !797, !align !916 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !5886, !nonnull !797, !align !916 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 58
  %i.z = load i8, ptr %i.y, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.noexc12, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 59
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1255
  br label %.noexc12

bb.e:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1529
  %i.ai = shl nsw i64 %i.t, 2
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  br label %.noexc12

.noexc12:                                         ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i = phi i32 [ %i.ak, %bb.e ], [ %i.af, %bb.d ], [ %i.q, %bb.b ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !5812
  %i.an = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3  ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !5815
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.an
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3  ; 8 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.loopexit153, label %.noexc17

.noexc17:                                         ; preds = %.noexc12
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !5887, !nonnull !797, !align !916 ; 22 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = sext i32 %i.ap to i64                   ; 7 uses
  br i1 %i.az, label %.noexc23, label %.noexc18

.noexc18:                                         ; preds = %.noexc17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1547 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 58
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.noexc19.thread, label %bb.f

bb.f:                                             ; preds = %.noexc18
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  br label %.noexc19

bb.h:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1529
  %i.bm = shl nsw i64 %i.ba, 2
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 %i.bm
  br label %.noexc19

.noexc19:                                         ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.in = phi ptr [ %i.bn, %bb.h ], [ %i.bj, %bb.g ]
  %.0.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i.in, align 4, !tbaa !3
  %i.bo = sext i32 %.0.i.i.i.i.i to i64
  %i.bp = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.bo ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bp, align 8, !tbaa !855 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !855 ; 2 uses
  %i.bq = icmp sgt i32 %i.at, 1
  br i1 %i.bq, label %.noexc20.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.thread

.noexc19.thread:                                  ; preds = %.noexc18
  %i.br = sext i32 %i.ap to i64
  %i.bs = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.br ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i199 = load i64, ptr %i.bs, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i200 = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.2.0.copyload.i.i.i.i201 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i200, align 8, !tbaa !855 ; 3 uses
  %i.bt = icmp sgt i32 %i.at, 1
  br i1 %i.bt, label %.noexc20.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.thread

.noexc20.lr.ph:                                   ; preds = %.noexc19
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.by = trunc nuw i8 %i.bx to i1
  %wide.trip.count = zext nneg i32 %i.at to i64
  br label %.noexc20

.noexc20.us.preheader:                            ; preds = %.noexc19.thread
  %wide.trip.count187 = zext nneg i32 %i.at to i64
  %invariant.gep = getelementptr [16 x i8], ptr %i.bc, i64 %i.ba ; 3 uses
  %i.bz = add nsw i64 %wide.trip.count187, -1     ; 3 uses
  %xtraiter = and i64 %i.bz, 1
  %i.ca = icmp eq i32 %i.at, 2
  br i1 %i.ca, label %.noexc20.us.epil.preheader, label %.noexc20.us.preheader.new

.noexc20.us.preheader.new:                        ; preds = %.noexc20.us.preheader
  %unroll_iter = and i64 %i.bz, -2
  br label %.noexc20.us

.noexc20.us:                                      ; preds = %.noexc20.us, %.noexc20.us.preheader.new
  %indvars.iv184 = phi i64 [ 1, %.noexc20.us.preheader.new ], [ %indvars.iv.next185.1, %.noexc20.us ] ; 3 uses
  %.sroa.6142.0165.us = phi i64 [ %.sroa.2.0.copyload.i.i.i.i201, %.noexc20.us.preheader.new ], [ %spec.select149.us.1, %.noexc20.us ] ; 2 uses
  %.sroa.0140.0164.us = phi i64 [ %.sroa.0.0.copyload.i.i.i.i199, %.noexc20.us.preheader.new ], [ %spec.select.us.1, %.noexc20.us ] ; 3 uses
  %niter = phi i64 [ 0, %.noexc20.us.preheader.new ], [ %niter.next.1, %.noexc20.us ]
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv184 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.us = load i64, ptr %gep, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.us = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %.sroa.2.0.copyload.i.i.i.us = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.us, align 8, !tbaa !855 ; 2 uses
  %i.cb = icmp eq i64 %.sroa.0.0.copyload.i.i.i.us, %.sroa.0140.0164.us
  %i.cc = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.us, %.sroa.0140.0164.us
  %i.cd = icmp ugt i64 %.sroa.2.0.copyload.i.i.i.us, %.sroa.6142.0165.us
  %.sroa.09.2.i.i.us = select i1 %i.cb, i1 %i.cd, i1 %i.cc ; 2 uses
  %spec.select.us = select i1 %.sroa.09.2.i.i.us, i64 %.sroa.0.0.copyload.i.i.i.us, i64 %.sroa.0140.0164.us ; 3 uses
  %spec.select149.us = select i1 %.sroa.09.2.i.i.us, i64 %.sroa.2.0.copyload.i.i.i.us, i64 %.sroa.6142.0165.us ; 2 uses
  %i.ce = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv184 ; 2 uses
  %gep.1 = getelementptr i8, ptr %i.ce, i64 16
  %.sroa.0.0.copyload.i.i.i.us.1 = load i64, ptr %gep.1, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.us.1 = getelementptr i8, ptr %i.ce, i64 24
  %.sroa.2.0.copyload.i.i.i.us.1 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.us.1, align 8, !tbaa !855 ; 2 uses
  %i.cf = icmp eq i64 %.sroa.0.0.copyload.i.i.i.us.1, %spec.select.us
  %i.cg = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.us.1, %spec.select.us
  %i.ch = icmp ugt i64 %.sroa.2.0.copyload.i.i.i.us.1, %spec.select149.us
  %.sroa.09.2.i.i.us.1 = select i1 %i.cf, i1 %i.ch, i1 %i.cg ; 2 uses
  %spec.select.us.1 = select i1 %.sroa.09.2.i.i.us.1, i64 %.sroa.0.0.copyload.i.i.i.us.1, i64 %spec.select.us ; 3 uses
  %spec.select149.us.1 = select i1 %.sroa.09.2.i.i.us.1, i64 %.sroa.2.0.copyload.i.i.i.us.1, i64 %spec.select149.us ; 3 uses
  %indvars.iv.next185.1 = add nuw nsw i64 %indvars.iv184, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.thread.loopexit219.unr-lcssa, label %.noexc20.us, !llvm.loop !6005

.noexc20:                                         ; preds = %.noexc20.lr.ph, %.noexc21
  %indvars.iv = phi i64 [ 1, %.noexc20.lr.ph ], [ %indvars.iv.next, %.noexc21 ] ; 2 uses
  %.sroa.6142.0165 = phi i64 [ %.sroa.2.0.copyload.i.i.i.i, %.noexc20.lr.ph ], [ %spec.select149, %.noexc21 ] ; 2 uses
  %.sroa.0140.0164 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %.noexc20.lr.ph ], [ %spec.select, %.noexc21 ] ; 3 uses
  br i1 %i.by, label %.noexc21, label %bb.i

bb.i:                                             ; preds = %.noexc20
  %i.ci = add nsw i64 %indvars.iv, %i.ba
  %i.cj = load ptr, ptr %i.bu, align 8, !tbaa !1529
  %i.ck = shl nsw i64 %i.ci, 2
  %i.cl = getelementptr inbounds i8, ptr %i.cj, i64 %i.ck
  br label %.noexc21

.noexc21:                                         ; preds = %.noexc20, %bb.i
  %.0.i.i.i.i.in = phi ptr [ %i.cl, %bb.i ], [ %i.bv, %.noexc20 ]
  %.0.i.i.i.i = load i32, ptr %.0.i.i.i.i.in, align 4, !tbaa !3
  %i.cm = sext i32 %.0.i.i.i.i to i64
  %i.cn = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.cm ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.cn, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !855 ; 2 uses
  %i.co = icmp eq i64 %.sroa.0.0.copyload.i.i.i, %.sroa.0140.0164
  %i.cp = icmp sgt i64 %.sroa.0.0.copyload.i.i.i, %.sroa.0140.0164
  %i.cq = icmp ugt i64 %.sroa.2.0.copyload.i.i.i, %.sroa.6142.0165
  %.sroa.09.2.i.i = select i1 %i.co, i1 %i.cq, i1 %i.cp ; 2 uses
  %spec.select = select i1 %.sroa.09.2.i.i, i64 %.sroa.0.0.copyload.i.i.i, i64 %.sroa.0140.0164 ; 2 uses
  %spec.select149 = select i1 %.sroa.09.2.i.i, i64 %.sroa.2.0.copyload.i.i.i, i64 %.sroa.6142.0165 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.thread, label %.noexc20, !llvm.loop !6005

.noexc23:                                         ; preds = %.noexc17
  %i.cr = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.cs, null           ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aw, i64 58
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i, label %.noexc25, label %bb.j

bb.j:                                             ; preds = %.noexc23
  %i.ct = trunc nuw i8 %.pre to i1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aw, i64 57
  %i.cv = load i8, ptr %i.cu, align 1, !range !796
  %i.cw = trunc nuw i8 %i.cv to i1
  %or.cond.i.i.i = select i1 %i.ct, i1 true, i1 %i.cw
  br i1 %or.cond.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cx = lshr i64 %i.ba, 6
  %i.cy = and i64 %i.cx, 67108863
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !855
  %i.db = and i64 %i.ba, 63
  %i.dc = shl nuw i64 1, %i.db
  %i.dd = and i64 %i.da, %i.dc
  br label %.noexc24

bb.l:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.df = load i8, ptr %i.de, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dh = load i64, ptr %i.cs, align 8, !tbaa !855
  %i.di = and i64 %i.dh, 1
  br label %.noexc24

bb.n:                                             ; preds = %bb.l
  %i.dj = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !1529
  %i.dl = shl nsw i64 %i.ba, 2
  %i.dm = getelementptr inbounds i8, ptr %i.dk, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3
  %i.do = zext i32 %i.dn to i64                   ; 2 uses
  %i.dp = lshr i64 %i.do, 6
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.dp
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !855
  %i.ds = and i64 %i.do, 63
  %i.dt = shl nuw i64 1, %i.ds
  %i.du = and i64 %i.dt, %i.dr
  br label %.noexc24

.noexc24:                                         ; preds = %bb.n, %bb.m, %bb.k
  %.0.i.i.i.in = phi i64 [ %i.dd, %bb.k ], [ %i.di, %bb.m ], [ %i.du, %bb.n ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %.loopexit153, label %.noexc25

.noexc25:                                         ; preds = %.noexc23, %.noexc24
  %i.dv = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1547 ; 2 uses
  %i.dx = trunc nuw i8 %.pre to i1                ; 3 uses
  br i1 %i.dx, label %.noexc26, label %bb.o

bb.o:                                             ; preds = %.noexc25
  %i.dy = getelementptr inbounds nuw i8, ptr %i.aw, i64 59
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !1255
  br label %.noexc26

bb.q:                                             ; preds = %bb.o
  %i.ed = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !1529
  %i.ef = shl nsw i64 %i.ba, 2
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !3
  br label %.noexc26

.noexc26:                                         ; preds = %bb.q, %bb.p, %.noexc25
  %.0.i.i.i.i40 = phi i32 [ %i.eh, %bb.q ], [ %i.ec, %bb.p ], [ %i.ap, %.noexc25 ]
  %i.ei = sext i32 %.0.i.i.i.i40 to i64
  %i.ej = getelementptr inbounds [16 x i8], ptr %i.dw, i64 %i.ei ; 2 uses
  %.sroa.0.0.copyload.i.i.i41 = load i64, ptr %i.ej, align 8, !tbaa !855 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i42 = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.sroa.2.0.copyload.i.i.i43 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i42, align 8, !tbaa !855 ; 2 uses
  %i.ek = add nsw i32 %i.at, %i.ap
  %i.el = icmp eq i32 %i.at, 1
  br i1 %i.el, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.thread, label %.noexc28.lr.ph

.noexc28.lr.ph:                                   ; preds = %.noexc26
  %.sroa.0123.0169 = add i32 %i.ap, 1
  %i.em = getelementptr inbounds nuw i8, ptr %i.aw, i64 57
  %i.en = getelementptr inbounds nuw i8, ptr %i.aw, i64 59 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.eq = sext i32 %.sroa.0123.0169 to i64
  br label %.noexc28

.noexc28:                                         ; preds = %.noexc28.lr.ph, %.noexc31
  %indvars.iv189 = phi i64 [ %i.eq, %.noexc28.lr.ph ], [ %indvars.iv.next190, %.noexc31 ] ; 6 uses
  %.sroa.6119.0171 = phi i64 [ %.sroa.2.0.copyload.i.i.i43, %.noexc28.lr.ph ], [ %spec.select151, %.noexc31 ] ; 2 uses
  %.sroa.0117.0170 = phi i64 [ %.sroa.0.0.copyload.i.i.i41, %.noexc28.lr.ph ], [ %spec.select150, %.noexc31 ] ; 3 uses
  br i1 %.not.i.i.i, label %.noexc30, label %bb.r

bb.r:                                             ; preds = %.noexc28
  %i.er = load i8, ptr %i.em, align 1, !range !796
  %i.es = trunc nuw i8 %i.er to i1
  %or.cond.i.i.i50 = select i1 %i.dx, i1 true, i1 %i.es
  br i1 %or.cond.i.i.i50, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.et = lshr i64 %indvars.iv189, 6
  %i.eu = and i64 %i.et, 67108863
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !855
  %i.ex = and i64 %indvars.iv189, 63
  %i.ey = shl nuw i64 1, %i.ex
  %i.ez = and i64 %i.ew, %i.ey
  br label %.noexc29

bb.t:                                             ; preds = %bb.r
  %i.fa = load i8, ptr %i.en, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fc = load i64, ptr %i.cs, align 8, !tbaa !855
  %i.fd = and i64 %i.fc, 1
  br label %.noexc29

bb.v:                                             ; preds = %bb.t
  %i.fe = load ptr, ptr %i.eo, align 8, !tbaa !1529
  %i.ff = shl nsw i64 %indvars.iv189, 2
  %i.fg = getelementptr inbounds i8, ptr %i.fe, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3
  %i.fi = zext i32 %i.fh to i64                   ; 2 uses
  %i.fj = lshr i64 %i.fi, 6
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !855
  %i.fm = and i64 %i.fi, 63
  %i.fn = shl nuw i64 1, %i.fm
  %i.fo = and i64 %i.fn, %i.fl
  br label %.noexc29

.noexc29:                                         ; preds = %bb.v, %bb.u, %bb.s
  %.0.i.i.i53.in = phi i64 [ %i.ez, %bb.s ], [ %i.fd, %bb.u ], [ %i.fo, %bb.v ]
  %.0.i.i.i53.not = icmp eq i64 %.0.i.i.i53.in, 0
  br i1 %.0.i.i.i53.not, label %.loopexit153, label %.noexc30

.noexc30:                                         ; preds = %.noexc28, %.noexc29
  %i.fp = trunc nsw i64 %indvars.iv189 to i32
  br i1 %i.dx, label %.noexc31, label %bb.w

bb.w:                                             ; preds = %.noexc30
  %i.fq = load i8, ptr %i.en, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fs = load i32, ptr %i.ep, align 8, !tbaa !1255
  br label %.noexc31

end_hunk_29
begin_hunk_30_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISD_EEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim:bb.a
  br i1 %.not10, label %.loopexit155, label %bb.b, !llvm.loop !6027

.loopexit155:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISB_EEEEEJSE_EEEE7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISD_EEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %5 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !6028, !range !796, !noundef !797
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !6030
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !855
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit368
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.at

bb.b:                                             ; preds = %bb.a
  %i.n = shl i32 %1, 6                            ; 3 uses
  %i.o = add i32 %i.n, 64
  %i.p = sext i32 %i.o to i64
  %.not421 = icmp eq i32 %i.n, -64
  br i1 %.not421, label %.loopexit368, label %.lr.ph420

.lr.ph420:                                        ; preds = %bb.b
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph420, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISB_EEEEEJSE_EEEE7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clImEEDaSQ_.exit
  %.0416 = phi i64 [ %i.q, %.lr.ph420 ], [ %i.it, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISB_EEEEEJSE_EEEE7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clImEEDaSQ_.exit ] ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !5999 ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !6001, !nonnull !797, !align !916 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !6002, !nonnull !797, !align !916 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !5886, !nonnull !797, !align !916 ; 4 uses
  %i.z = trunc i64 %.0416 to i32                  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 58
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.noexc47, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 59
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !1255
  br label %.noexc47

bb.f:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1529
  %sext.i = shl i64 %.0416, 32
  %i.ak = ashr exact i64 %sext.i, 30
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  br label %.noexc47

.noexc47:                                         ; preds = %bb.f, %bb.e, %bb.c
  %.0.i.i65 = phi i32 [ %i.am, %bb.f ], [ %i.ah, %bb.e ], [ %i.z, %bb.c ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !5812
  %i.ap = sext i32 %.0.i.i65 to i64               ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3  ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !5815
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ap
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3  ; 8 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.loopexit366, label %.noexc48

.noexc48:                                         ; preds = %.noexc47
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !5887, !nonnull !797, !align !916 ; 22 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = sext i32 %i.ar to i64                   ; 7 uses
  br i1 %i.bb, label %.noexc54, label %.noexc49

.noexc49:                                         ; preds = %.noexc48
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1547 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 58
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %.noexc50.thread, label %bb.g

bb.g:                                             ; preds = %.noexc49
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  br label %.noexc50

bb.i:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1529
  %i.bo = shl nsw i64 %i.bc, 2
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 %i.bo
  br label %.noexc50

.noexc50:                                         ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.in = phi ptr [ %i.bp, %bb.i ], [ %i.bl, %bb.h ]
  %.0.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i.in, align 4, !tbaa !3
  %i.bq = sext i32 %.0.i.i.i.i.i to i64
  %i.br = getelementptr inbounds [16 x i8], ptr %i.be, i64 %i.bq ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.br, align 8, !tbaa !855 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !855 ; 2 uses
  %i.bs = icmp sgt i32 %i.av, 1
  br i1 %i.bs, label %.noexc51.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit.thread

.noexc50.thread:                                  ; preds = %.noexc49
  %i.bt = sext i32 %i.ar to i64
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.be, i64 %i.bt ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i477 = load i64, ptr %i.bu, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i478 = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.2.0.copyload.i.i.i.i479 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i478, align 8, !tbaa !855 ; 3 uses
  %i.bv = icmp sgt i32 %i.av, 1
  br i1 %i.bv, label %.noexc51.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit.thread

.noexc51.lr.ph:                                   ; preds = %.noexc50
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ca = trunc nuw i8 %i.bz to i1
  %wide.trip.count = zext nneg i32 %i.av to i64
  br label %.noexc51

.noexc51.us.preheader:                            ; preds = %.noexc50.thread
  %wide.trip.count443 = zext nneg i32 %i.av to i64
  %invariant.gep = getelementptr [16 x i8], ptr %i.be, i64 %i.bc ; 3 uses
  %i.cb = add nsw i64 %wide.trip.count443, -1     ; 3 uses
  %xtraiter = and i64 %i.cb, 1
  %i.cc = icmp eq i32 %i.av, 2
  br i1 %i.cc, label %.noexc51.us.epil.preheader, label %.noexc51.us.preheader.new

.noexc51.us.preheader.new:                        ; preds = %.noexc51.us.preheader
  %unroll_iter = and i64 %i.cb, -2
  br label %.noexc51.us

.noexc51.us:                                      ; preds = %.noexc51.us, %.noexc51.us.preheader.new
  %indvars.iv440 = phi i64 [ 1, %.noexc51.us.preheader.new ], [ %indvars.iv.next441.1, %.noexc51.us ] ; 3 uses
  %.sroa.6344.0404.us = phi i64 [ %.sroa.2.0.copyload.i.i.i.i479, %.noexc51.us.preheader.new ], [ %spec.select358.us.1, %.noexc51.us ] ; 2 uses
  %.sroa.0342.0403.us = phi i64 [ %.sroa.0.0.copyload.i.i.i.i477, %.noexc51.us.preheader.new ], [ %spec.select.us.1, %.noexc51.us ] ; 3 uses
  %niter = phi i64 [ 0, %.noexc51.us.preheader.new ], [ %niter.next.1, %.noexc51.us ]
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv440 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.us = load i64, ptr %gep, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.us = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %.sroa.2.0.copyload.i.i.i.us = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.us, align 8, !tbaa !855 ; 2 uses
  %i.cd = icmp eq i64 %.sroa.0.0.copyload.i.i.i.us, %.sroa.0342.0403.us
  %i.ce = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.us, %.sroa.0342.0403.us
  %i.cf = icmp ugt i64 %.sroa.2.0.copyload.i.i.i.us, %.sroa.6344.0404.us
  %.sroa.09.2.i.i.us = select i1 %i.cd, i1 %i.cf, i1 %i.ce ; 2 uses
  %spec.select.us = select i1 %.sroa.09.2.i.i.us, i64 %.sroa.0.0.copyload.i.i.i.us, i64 %.sroa.0342.0403.us ; 3 uses
  %spec.select358.us = select i1 %.sroa.09.2.i.i.us, i64 %.sroa.2.0.copyload.i.i.i.us, i64 %.sroa.6344.0404.us ; 2 uses
  %i.cg = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv440 ; 2 uses
  %gep.1 = getelementptr i8, ptr %i.cg, i64 16
  %.sroa.0.0.copyload.i.i.i.us.1 = load i64, ptr %gep.1, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.us.1 = getelementptr i8, ptr %i.cg, i64 24
  %.sroa.2.0.copyload.i.i.i.us.1 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.us.1, align 8, !tbaa !855 ; 2 uses
  %i.ch = icmp eq i64 %.sroa.0.0.copyload.i.i.i.us.1, %spec.select.us
  %i.ci = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.us.1, %spec.select.us
  %i.cj = icmp ugt i64 %.sroa.2.0.copyload.i.i.i.us.1, %spec.select358.us
  %.sroa.09.2.i.i.us.1 = select i1 %i.ch, i1 %i.cj, i1 %i.ci ; 2 uses
  %spec.select.us.1 = select i1 %.sroa.09.2.i.i.us.1, i64 %.sroa.0.0.copyload.i.i.i.us.1, i64 %spec.select.us ; 3 uses
  %spec.select358.us.1 = select i1 %.sroa.09.2.i.i.us.1, i64 %.sroa.2.0.copyload.i.i.i.us.1, i64 %spec.select358.us ; 3 uses
  %indvars.iv.next441.1 = add nuw nsw i64 %indvars.iv440, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit.thread.loopexit531.unr-lcssa, label %.noexc51.us, !llvm.loop !6005

.noexc51:                                         ; preds = %.noexc51.lr.ph, %.noexc52
  %indvars.iv = phi i64 [ 1, %.noexc51.lr.ph ], [ %indvars.iv.next, %.noexc52 ] ; 2 uses
  %.sroa.6344.0404 = phi i64 [ %.sroa.2.0.copyload.i.i.i.i, %.noexc51.lr.ph ], [ %spec.select358, %.noexc52 ] ; 2 uses
  %.sroa.0342.0403 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %.noexc51.lr.ph ], [ %spec.select, %.noexc52 ] ; 3 uses
  br i1 %i.ca, label %.noexc52, label %bb.j

bb.j:                                             ; preds = %.noexc51
  %i.ck = add nsw i64 %indvars.iv, %i.bc
  %i.cl = load ptr, ptr %i.bw, align 8, !tbaa !1529
  %i.cm = shl nsw i64 %i.ck, 2
  %i.cn = getelementptr inbounds i8, ptr %i.cl, i64 %i.cm
  br label %.noexc52

.noexc52:                                         ; preds = %.noexc51, %bb.j
  %.0.i.i.i.i.in = phi ptr [ %i.cn, %bb.j ], [ %i.bx, %.noexc51 ]
  %.0.i.i.i.i = load i32, ptr %.0.i.i.i.i.in, align 4, !tbaa !3
  %i.co = sext i32 %.0.i.i.i.i to i64
  %i.cp = getelementptr inbounds [16 x i8], ptr %i.be, i64 %i.co ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.cp, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !855 ; 2 uses
  %i.cq = icmp eq i64 %.sroa.0.0.copyload.i.i.i, %.sroa.0342.0403
  %i.cr = icmp sgt i64 %.sroa.0.0.copyload.i.i.i, %.sroa.0342.0403
  %i.cs = icmp ugt i64 %.sroa.2.0.copyload.i.i.i, %.sroa.6344.0404
  %.sroa.09.2.i.i = select i1 %i.cq, i1 %i.cs, i1 %i.cr ; 2 uses
  %spec.select = select i1 %.sroa.09.2.i.i, i64 %.sroa.0.0.copyload.i.i.i, i64 %.sroa.0342.0403 ; 2 uses
  %spec.select358 = select i1 %.sroa.09.2.i.i, i64 %.sroa.2.0.copyload.i.i.i, i64 %.sroa.6344.0404 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit.thread, label %.noexc51, !llvm.loop !6005

.noexc54:                                         ; preds = %.noexc48
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.cu, null           ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ay, i64 58
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i, label %.noexc56, label %bb.k

bb.k:                                             ; preds = %.noexc54
  %i.cv = trunc nuw i8 %.pre to i1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ay, i64 57
  %i.cx = load i8, ptr %i.cw, align 1, !range !796
  %i.cy = trunc nuw i8 %i.cx to i1
  %or.cond.i.i.i = select i1 %i.cv, i1 true, i1 %i.cy
  br i1 %or.cond.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cz = lshr i64 %i.bc, 6
  %i.da = and i64 %i.cz, 67108863
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !855
  %i.dd = and i64 %i.bc, 63
  %i.de = shl nuw i64 1, %i.dd
  %i.df = and i64 %i.dc, %i.de
  br label %.noexc55

bb.m:                                             ; preds = %bb.k
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dj = load i64, ptr %i.cu, align 8, !tbaa !855
  %i.dk = and i64 %i.dj, 1
  br label %.noexc55

bb.o:                                             ; preds = %bb.m
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !1529
  %i.dn = shl nsw i64 %i.bc, 2
  %i.do = getelementptr inbounds i8, ptr %i.dm, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3
  %i.dq = zext i32 %i.dp to i64                   ; 2 uses
  %i.dr = lshr i64 %i.dq, 6
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !855
  %i.du = and i64 %i.dq, 63
  %i.dv = shl nuw i64 1, %i.du
  %i.dw = and i64 %i.dv, %i.dt
  br label %.noexc55

.noexc55:                                         ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i.i.in = phi i64 [ %i.df, %bb.l ], [ %i.dk, %bb.n ], [ %i.dw, %bb.o ]
  %.0.i.i.i.not = icmp eq i64 %.0.i.i.i.in, 0
  br i1 %.0.i.i.i.not, label %.loopexit366, label %.noexc56

.noexc56:                                         ; preds = %.noexc54, %.noexc55
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !1547 ; 2 uses
  %i.dz = trunc nuw i8 %.pre to i1                ; 3 uses
  br i1 %i.dz, label %.noexc57, label %bb.p

bb.p:                                             ; preds = %.noexc56
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ay, i64 59
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !1255
  br label %.noexc57

bb.r:                                             ; preds = %bb.p
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !1529
  %i.eh = shl nsw i64 %i.bc, 2
  %i.ei = getelementptr inbounds i8, ptr %i.eg, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !3
  br label %.noexc57

.noexc57:                                         ; preds = %bb.r, %bb.q, %.noexc56
  %.0.i.i.i.i74 = phi i32 [ %i.ej, %bb.r ], [ %i.ee, %bb.q ], [ %i.ar, %.noexc56 ]
  %i.ek = sext i32 %.0.i.i.i.i74 to i64
  %i.el = getelementptr inbounds [16 x i8], ptr %i.dy, i64 %i.ek ; 2 uses
  %.sroa.0.0.copyload.i.i.i75 = load i64, ptr %i.el, align 8, !tbaa !855 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i76 = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.sroa.2.0.copyload.i.i.i77 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i76, align 8, !tbaa !855 ; 2 uses
  %i.em = add nsw i32 %i.av, %i.ar
  %i.en = icmp eq i32 %i.av, 1
  br i1 %i.en, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clImEEDaSO_.exit.thread, label %.noexc59.lr.ph

.noexc59.lr.ph:                                   ; preds = %.noexc57
  %.sroa.0322.0410 = add i32 %i.ar, 1
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ay, i64 57
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ay, i64 59 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.es = sext i32 %.sroa.0322.0410 to i64
  br label %.noexc59

.noexc59:                                         ; preds = %.noexc59.lr.ph, %.noexc62
  %indvars.iv445 = phi i64 [ %i.es, %.noexc59.lr.ph ], [ %indvars.iv.next446, %.noexc62 ] ; 6 uses
  %.sroa.6318.0412 = phi i64 [ %.sroa.2.0.copyload.i.i.i77, %.noexc59.lr.ph ], [ %spec.select360, %.noexc62 ] ; 2 uses
  %.sroa.0316.0411 = phi i64 [ %.sroa.0.0.copyload.i.i.i75, %.noexc59.lr.ph ], [ %spec.select359, %.noexc62 ] ; 3 uses
  br i1 %.not.i.i.i, label %.noexc61, label %bb.s

bb.s:                                             ; preds = %.noexc59
  %i.et = load i8, ptr %i.eo, align 1, !range !796
  %i.eu = trunc nuw i8 %i.et to i1
  %or.cond.i.i.i84 = select i1 %i.dz, i1 true, i1 %i.eu
  br i1 %or.cond.i.i.i84, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ev = lshr i64 %indvars.iv445, 6
  %i.ew = and i64 %i.ev, 67108863
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.ew
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !855
  %i.ez = and i64 %indvars.iv445, 63
  %i.fa = shl nuw i64 1, %i.ez
  %i.fb = and i64 %i.ey, %i.fa
  br label %.noexc60

bb.u:                                             ; preds = %bb.s
  %i.fc = load i8, ptr %i.ep, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fe = load i64, ptr %i.cu, align 8, !tbaa !855
  %i.ff = and i64 %i.fe, 1
  br label %.noexc60

bb.w:                                             ; preds = %bb.u
  %i.fg = load ptr, ptr %i.eq, align 8, !tbaa !1529
  %i.fh = shl nsw i64 %indvars.iv445, 2
  %i.fi = getelementptr inbounds i8, ptr %i.fg, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !3
  %i.fk = zext i32 %i.fj to i64                   ; 2 uses
  %i.fl = lshr i64 %i.fk, 6
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.fl
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !855
  %i.fo = and i64 %i.fk, 63
  %i.fp = shl nuw i64 1, %i.fo
  %i.fq = and i64 %i.fp, %i.fn
  br label %.noexc60

.noexc60:                                         ; preds = %bb.w, %bb.v, %bb.t
  %.0.i.i.i87.in = phi i64 [ %i.fb, %bb.t ], [ %i.ff, %bb.v ], [ %i.fq, %bb.w ]
  %.0.i.i.i87.not = icmp eq i64 %.0.i.i.i87.in, 0
  br i1 %.0.i.i.i87.not, label %.loopexit366, label %.noexc61

.noexc61:                                         ; preds = %.noexc59, %.noexc60
  %i.fr = trunc nsw i64 %indvars.iv445 to i32
  br i1 %i.dz, label %.noexc62, label %bb.x

bb.x:                                             ; preds = %.noexc61
  %i.fs = load i8, ptr %i.ep, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fu = load i32, ptr %i.er, align 8, !tbaa !1255
  br label %.noexc62

end_hunk_30
begin_hunk_31_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS3_10VectorExecEEESB_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISD_EEEEEJSG_EEEE7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi:bb.a
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit115

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit115: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISB_EEEEEJSE_EEEE7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clImEEDaSQ_.exit

bb.ao:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.ip = landingpad { ptr, i32 }
          cleanup
  %i.iq = load ptr, ptr %4, align 8, !tbaa !1108
  %.not.i116 = icmp eq ptr %i.iq, null
  br i1 %.not.i116, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit117, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit117

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit117: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit117, %bb.al
  %.pn.i39 = phi { ptr, i32 } [ %i.ip, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit117 ], [ %i.in, %bb.al ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ar

common.resume:                                    ; preds = %bb.af, %bb.bw, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit211, %bb.ch, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit113, %bb.aq
  %common.resume.op = phi { ptr, i32 } [ %.pn.i39, %bb.aq ], [ %i.il, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit113 ], [ %.pn.i, %bb.ch ], [ %i.rq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit211 ], [ %i.qh, %bb.bw ], [ %i.hc, %bb.af ]
  resume { ptr, i32 } %common.resume.op

bb.ar:                                            ; preds = %bb.aq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit113
  %i.ir = landingpad { ptr, i32 }
          catch ptr null
  %i.is = extractvalue { ptr, i32 } %i.ir, 0
  call void @__clang_call_terminate(ptr %i.is) #44
  unreachable

bb.as:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISB_EEEEEJSE_EEEE7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clImEEDaSQ_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit110, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit115
  %i.it = add nuw i64 %.0416, 1                   ; 2 uses
  %i.iu = icmp ult i64 %i.it, %i.p
  br i1 %i.iu, label %bb.c, label %.loopexit368, !llvm.loop !6036

bb.at:                                            ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISB_EEEEEJSE_EEEE7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit
  %.015402 = phi i64 [ %i.j, %.lr.ph ], [ %i.rz, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES9_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayISB_EEEEEJSE_EEEE7iterateIJNS1_12VectorReaderISE_EEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit ] ; 3 uses
  %i.iv = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015402, i1 true)
  %i.iw = trunc nuw nsw i64 %i.iv to i32
  %i.ix = or disjoint i32 %i.l, %i.iw             ; 5 uses
  %i.iy = load ptr, ptr %i.m, align 8, !tbaa !5999 ; 2 uses
  %i.iz = load ptr, ptr %i.k, align 8, !tbaa !6001, !nonnull !797, !align !916 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.ja = sext i32 %i.ix to i64                   ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !6002, !nonnull !797, !align !916 ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 120
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !5886, !nonnull !797, !align !916 ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 58
  %i.jg = load i8, ptr %i.jf, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.jh = trunc nuw i8 %i.jg to i1
  br i1 %i.jh, label %.noexc18, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 59
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.jk = trunc nuw i8 %i.jj to i1
  br i1 %i.jk, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.jl = getelementptr inbounds nuw i8, ptr %i.je, i64 64
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !1255
  br label %.noexc18

bb.aw:                                            ; preds = %bb.au
  %i.jn = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !1529
  %i.jp = shl nsw i64 %i.ja, 2
  %i.jq = getelementptr inbounds i8, ptr %i.jo, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !3
  br label %.noexc18

.noexc18:                                         ; preds = %bb.aw, %bb.av, %bb.at
  %.0.i.i119 = phi i32 [ %i.jr, %bb.aw ], [ %i.jm, %bb.av ], [ %i.ix, %bb.at ]
  %i.js = getelementptr inbounds nuw i8, ptr %i.jc, i64 136
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !5812
  %i.ju = sext i32 %.0.i.i119 to i64              ; 2 uses
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.jt, i64 %i.ju
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !3  ; 5 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jc, i64 144
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !5815
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %i.ju
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !3  ; 8 uses
  %i.kb = icmp eq i32 %i.ka, 0
  br i1 %i.kb, label %.loopexit372, label %.noexc23

.noexc23:                                         ; preds = %.noexc18
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jc, i64 152
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !5887, !nonnull !797, !align !916 ; 22 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 56
  %i.kf = load i8, ptr %i.ke, align 8, !tbaa !1546, !range !796, !noundef !797
  %i.kg = trunc nuw i8 %i.kf to i1
  %i.kh = sext i32 %i.jw to i64                   ; 7 uses
  br i1 %i.kg, label %.noexc29, label %.noexc24

.noexc24:                                         ; preds = %.noexc23
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !1547 ; 4 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kd, i64 58
  %i.kl = load i8, ptr %i.kk, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.km = trunc nuw i8 %i.kl to i1
  br i1 %i.km, label %.noexc25.thread, label %bb.ax

bb.ax:                                            ; preds = %.noexc24
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kd, i64 59
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.kp = trunc nuw i8 %i.ko to i1
  br i1 %i.kp, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kd, i64 64
  br label %.noexc25

bb.az:                                            ; preds = %bb.ax
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !1529
  %i.kt = shl nsw i64 %i.kh, 2
  %i.ku = getelementptr inbounds i8, ptr %i.ks, i64 %i.kt
  br label %.noexc25

.noexc25:                                         ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i130.in = phi ptr [ %i.ku, %bb.az ], [ %i.kq, %bb.ay ]
  %.0.i.i.i.i.i130 = load i32, ptr %.0.i.i.i.i.i130.in, align 4, !tbaa !3
  %i.kv = sext i32 %.0.i.i.i.i.i130 to i64
  %i.kw = getelementptr inbounds [16 x i8], ptr %i.kj, i64 %i.kv ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i131 = load i64, ptr %i.kw, align 8, !tbaa !855 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i132 = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %.sroa.2.0.copyload.i.i.i.i133 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i132, align 8, !tbaa !855 ; 2 uses
  %i.kx = icmp sgt i32 %i.ka, 1
  br i1 %i.kx, label %.noexc26.lr.ph, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.thread

.noexc25.thread:                                  ; preds = %.noexc24
  %i.ky = sext i32 %i.jw to i64
  %i.kz = getelementptr inbounds [16 x i8], ptr %i.kj, i64 %i.ky ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i131488 = load i64, ptr %i.kz, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i132489 = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %.sroa.2.0.copyload.i.i.i.i133490 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i132489, align 8, !tbaa !855 ; 3 uses
  %i.la = icmp sgt i32 %i.ka, 1
  br i1 %i.la, label %.noexc26.us.preheader, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.thread

.noexc26.lr.ph:                                   ; preds = %.noexc25
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kd, i64 64
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kd, i64 59
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.lf = trunc nuw i8 %i.le to i1
  %wide.trip.count451 = zext nneg i32 %i.ka to i64
  br label %.noexc26

.noexc26.us.preheader:                            ; preds = %.noexc25.thread
  %wide.trip.count456 = zext nneg i32 %i.ka to i64
  %invariant.gep511 = getelementptr [16 x i8], ptr %i.kj, i64 %i.kh ; 3 uses
  %i.lg = add nsw i64 %wide.trip.count456, -1     ; 3 uses
  %xtraiter542 = and i64 %i.lg, 1
  %i.lh = icmp eq i32 %i.ka, 2
  br i1 %i.lh, label %.noexc26.us.epil.preheader, label %.noexc26.us.preheader.new

.noexc26.us.preheader.new:                        ; preds = %.noexc26.us.preheader
  %unroll_iter547 = and i64 %i.lg, -2
  br label %.noexc26.us

.noexc26.us:                                      ; preds = %.noexc26.us, %.noexc26.us.preheader.new
  %indvars.iv453 = phi i64 [ 1, %.noexc26.us.preheader.new ], [ %indvars.iv.next454.1, %.noexc26.us ] ; 3 uses
  %.sroa.6274.0391.us = phi i64 [ %.sroa.2.0.copyload.i.i.i.i133490, %.noexc26.us.preheader.new ], [ %spec.select362.us.1, %.noexc26.us ] ; 2 uses
  %.sroa.0272.0390.us = phi i64 [ %.sroa.0.0.copyload.i.i.i.i131488, %.noexc26.us.preheader.new ], [ %spec.select361.us.1, %.noexc26.us ] ; 3 uses
  %niter548 = phi i64 [ 0, %.noexc26.us.preheader.new ], [ %niter548.next.1, %.noexc26.us ]
  %gep512 = getelementptr [16 x i8], ptr %invariant.gep511, i64 %indvars.iv453 ; 2 uses
  %.sroa.0.0.copyload.i.i.i141.us = load i64, ptr %gep512, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i142.us = getelementptr inbounds nuw i8, ptr %gep512, i64 8
  %.sroa.2.0.copyload.i.i.i143.us = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i142.us, align 8, !tbaa !855 ; 2 uses
  %i.li = icmp eq i64 %.sroa.0.0.copyload.i.i.i141.us, %.sroa.0272.0390.us
  %i.lj = icmp sgt i64 %.sroa.0.0.copyload.i.i.i141.us, %.sroa.0272.0390.us
  %i.lk = icmp ugt i64 %.sroa.2.0.copyload.i.i.i143.us, %.sroa.6274.0391.us
  %.sroa.09.2.i.i147.us = select i1 %i.li, i1 %i.lk, i1 %i.lj ; 2 uses
  %spec.select361.us = select i1 %.sroa.09.2.i.i147.us, i64 %.sroa.0.0.copyload.i.i.i141.us, i64 %.sroa.0272.0390.us ; 3 uses
  %spec.select362.us = select i1 %.sroa.09.2.i.i147.us, i64 %.sroa.2.0.copyload.i.i.i143.us, i64 %.sroa.6274.0391.us ; 2 uses
  %i.ll = getelementptr [16 x i8], ptr %invariant.gep511, i64 %indvars.iv453 ; 2 uses
  %gep512.1 = getelementptr i8, ptr %i.ll, i64 16
  %.sroa.0.0.copyload.i.i.i141.us.1 = load i64, ptr %gep512.1, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i142.us.1 = getelementptr i8, ptr %i.ll, i64 24
  %.sroa.2.0.copyload.i.i.i143.us.1 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i142.us.1, align 8, !tbaa !855 ; 2 uses
  %i.lm = icmp eq i64 %.sroa.0.0.copyload.i.i.i141.us.1, %spec.select361.us
  %i.ln = icmp sgt i64 %.sroa.0.0.copyload.i.i.i141.us.1, %spec.select361.us
  %i.lo = icmp ugt i64 %.sroa.2.0.copyload.i.i.i143.us.1, %spec.select362.us
  %.sroa.09.2.i.i147.us.1 = select i1 %i.lm, i1 %i.lo, i1 %i.ln ; 2 uses
  %spec.select361.us.1 = select i1 %.sroa.09.2.i.i147.us.1, i64 %.sroa.0.0.copyload.i.i.i141.us.1, i64 %spec.select361.us ; 3 uses
  %spec.select362.us.1 = select i1 %.sroa.09.2.i.i147.us.1, i64 %.sroa.2.0.copyload.i.i.i143.us.1, i64 %spec.select362.us ; 3 uses
  %indvars.iv.next454.1 = add nuw nsw i64 %indvars.iv453, 2 ; 2 uses
  %niter548.next.1 = add i64 %niter548, 2         ; 2 uses
  %niter548.ncmp.1 = icmp eq i64 %niter548.next.1, %unroll_iter547
  br i1 %niter548.ncmp.1, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.thread.loopexit526.unr-lcssa, label %.noexc26.us, !llvm.loop !6005

.noexc26:                                         ; preds = %.noexc26.lr.ph, %.noexc27
  %indvars.iv448 = phi i64 [ 1, %.noexc26.lr.ph ], [ %indvars.iv.next449, %.noexc27 ] ; 2 uses
  %.sroa.6274.0391 = phi i64 [ %.sroa.2.0.copyload.i.i.i.i133, %.noexc26.lr.ph ], [ %spec.select362, %.noexc27 ] ; 2 uses
  %.sroa.0272.0390 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i131, %.noexc26.lr.ph ], [ %spec.select361, %.noexc27 ] ; 3 uses
  br i1 %i.lf, label %.noexc27, label %bb.ba

bb.ba:                                            ; preds = %.noexc26
  %i.lp = add nsw i64 %indvars.iv448, %i.kh
  %i.lq = load ptr, ptr %i.lb, align 8, !tbaa !1529
  %i.lr = shl nsw i64 %i.lp, 2
  %i.ls = getelementptr inbounds i8, ptr %i.lq, i64 %i.lr
  br label %.noexc27

.noexc27:                                         ; preds = %.noexc26, %bb.ba
  %.0.i.i.i.i140.in = phi ptr [ %i.ls, %bb.ba ], [ %i.lc, %.noexc26 ]
  %.0.i.i.i.i140 = load i32, ptr %.0.i.i.i.i140.in, align 4, !tbaa !3
  %i.lt = sext i32 %.0.i.i.i.i140 to i64
  %i.lu = getelementptr inbounds [16 x i8], ptr %i.kj, i64 %i.lt ; 2 uses
  %.sroa.0.0.copyload.i.i.i141 = load i64, ptr %i.lu, align 8, !tbaa !855 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i142 = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %.sroa.2.0.copyload.i.i.i143 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i142, align 8, !tbaa !855 ; 2 uses
  %i.lv = icmp eq i64 %.sroa.0.0.copyload.i.i.i141, %.sroa.0272.0390
  %i.lw = icmp sgt i64 %.sroa.0.0.copyload.i.i.i141, %.sroa.0272.0390
  %i.lx = icmp ugt i64 %.sroa.2.0.copyload.i.i.i143, %.sroa.6274.0391
  %.sroa.09.2.i.i147 = select i1 %i.lv, i1 %i.lx, i1 %i.lw ; 2 uses
  %spec.select361 = select i1 %.sroa.09.2.i.i147, i64 %.sroa.0.0.copyload.i.i.i141, i64 %.sroa.0272.0390 ; 2 uses
  %spec.select362 = select i1 %.sroa.09.2.i.i147, i64 %.sroa.2.0.copyload.i.i.i143, i64 %.sroa.6274.0391 ; 2 uses
  %indvars.iv.next449 = add nuw nsw i64 %indvars.iv448, 1 ; 2 uses
  %exitcond452.not = icmp eq i64 %indvars.iv.next449, %wide.trip.count451
  br i1 %exitcond452.not, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.thread, label %.noexc26, !llvm.loop !6005

.noexc29:                                         ; preds = %.noexc23
  %i.ly = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !1530 ; 7 uses
  %.not.i.i.i151 = icmp eq ptr %i.lz, null        ; 2 uses
  %.phi.trans.insert462 = getelementptr inbounds nuw i8, ptr %i.kd, i64 58
  %.pre463 = load i8, ptr %.phi.trans.insert462, align 2, !tbaa !1527, !range !796 ; 2 uses
  br i1 %.not.i.i.i151, label %.noexc31, label %bb.bb

bb.bb:                                            ; preds = %.noexc29
  %i.ma = trunc nuw i8 %.pre463 to i1
  %i.mb = getelementptr inbounds nuw i8, ptr %i.kd, i64 57
  %i.mc = load i8, ptr %i.mb, align 1, !range !796
  %i.md = trunc nuw i8 %i.mc to i1
  %or.cond.i.i.i152 = select i1 %i.ma, i1 true, i1 %i.md
  br i1 %or.cond.i.i.i152, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.me = lshr i64 %i.kh, 6
  %i.mf = and i64 %i.me, 67108863
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.mf
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !855
  %i.mi = and i64 %i.kh, 63
  %i.mj = shl nuw i64 1, %i.mi
  %i.mk = and i64 %i.mh, %i.mj
  br label %.noexc30

bb.bd:                                            ; preds = %bb.bb
  %i.ml = getelementptr inbounds nuw i8, ptr %i.kd, i64 59
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.mn = trunc nuw i8 %i.mm to i1
  br i1 %i.mn, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.mo = load i64, ptr %i.lz, align 8, !tbaa !855
  %i.mp = and i64 %i.mo, 1
  br label %.noexc30

bb.bf:                                            ; preds = %bb.bd
  %i.mq = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !1529
  %i.ms = shl nsw i64 %i.kh, 2
  %i.mt = getelementptr inbounds i8, ptr %i.mr, i64 %i.ms
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !3
  %i.mv = zext i32 %i.mu to i64                   ; 2 uses
  %i.mw = lshr i64 %i.mv, 6
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.mw
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !855
  %i.mz = and i64 %i.mv, 63
  %i.na = shl nuw i64 1, %i.mz
  %i.nb = and i64 %i.na, %i.my
  br label %.noexc30

.noexc30:                                         ; preds = %bb.bf, %bb.be, %bb.bc
  %.0.i.i.i155.in = phi i64 [ %i.mk, %bb.bc ], [ %i.mp, %bb.be ], [ %i.nb, %bb.bf ]
  %.0.i.i.i155.not = icmp eq i64 %.0.i.i.i155.in, 0
  br i1 %.0.i.i.i155.not, label %.loopexit372, label %.noexc31

.noexc31:                                         ; preds = %.noexc29, %.noexc30
  %i.nc = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !1547 ; 2 uses
  %i.ne = trunc nuw i8 %.pre463 to i1             ; 3 uses
  br i1 %i.ne, label %.noexc32, label %bb.bg

bb.bg:                                            ; preds = %.noexc31
  %i.nf = getelementptr inbounds nuw i8, ptr %i.kd, i64 59
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.nh = trunc nuw i8 %i.ng to i1
  br i1 %i.nh, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ni = getelementptr inbounds nuw i8, ptr %i.kd, i64 64
  %i.nj = load i32, ptr %i.ni, align 8, !tbaa !1255
  br label %.noexc32

bb.bi:                                            ; preds = %bb.bg
  %i.nk = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !1529
  %i.nm = shl nsw i64 %i.kh, 2
  %i.nn = getelementptr inbounds i8, ptr %i.nl, i64 %i.nm
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !3
  br label %.noexc32

.noexc32:                                         ; preds = %bb.bi, %bb.bh, %.noexc31
  %.0.i.i.i.i162 = phi i32 [ %i.no, %bb.bi ], [ %i.nj, %bb.bh ], [ %i.jw, %.noexc31 ]
  %i.np = sext i32 %.0.i.i.i.i162 to i64
  %i.nq = getelementptr inbounds [16 x i8], ptr %i.nd, i64 %i.np ; 2 uses
  %.sroa.0.0.copyload.i.i.i163 = load i64, ptr %i.nq, align 8, !tbaa !855 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i164 = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %.sroa.2.0.copyload.i.i.i165 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i164, align 8, !tbaa !855 ; 2 uses
  %i.nr = add nsw i32 %i.ka, %i.jw
  %i.ns = icmp eq i32 %i.ka, 1
  br i1 %i.ns, label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMaxFunctionINS1_10VectorExecEEES7_NS0_9TimestampENS0_15ConstantCheckerIJNS0_5ArrayIS9_EEEEEJSC_EEEE7iterateIJNS1_12VectorReaderISC_EEEEEvRNSF_12ApplyContextEDpRT_ENKUlT_E1_clIiEEDaSO_.exit.thread, label %.noexc34.lr.ph

.noexc34.lr.ph:                                   ; preds = %.noexc32
  %.sroa.0255.0395 = add i32 %i.jw, 1
  %i.nt = getelementptr inbounds nuw i8, ptr %i.kd, i64 57
  %i.nu = getelementptr inbounds nuw i8, ptr %i.kd, i64 59 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.kd, i64 8 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.kd, i64 64
  %i.nx = sext i32 %.sroa.0255.0395 to i64
  br label %.noexc34

.noexc34:                                         ; preds = %.noexc34.lr.ph, %.noexc37
  %indvars.iv458 = phi i64 [ %i.nx, %.noexc34.lr.ph ], [ %indvars.iv.next459, %.noexc37 ] ; 6 uses
  %.sroa.6251.0397 = phi i64 [ %.sroa.2.0.copyload.i.i.i165, %.noexc34.lr.ph ], [ %spec.select364, %.noexc37 ] ; 2 uses
  %.sroa.0249.0396 = phi i64 [ %.sroa.0.0.copyload.i.i.i163, %.noexc34.lr.ph ], [ %spec.select363, %.noexc37 ] ; 3 uses
  br i1 %.not.i.i.i151, label %.noexc36, label %bb.bj

bb.bj:                                            ; preds = %.noexc34
  %i.ny = load i8, ptr %i.nt, align 1, !range !796
  %i.nz = trunc nuw i8 %i.ny to i1
  %or.cond.i.i.i172 = select i1 %i.ne, i1 true, i1 %i.nz
  br i1 %or.cond.i.i.i172, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.oa = lshr i64 %indvars.iv458, 6
  %i.ob = and i64 %i.oa, 67108863
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.ob
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !855
  %i.oe = and i64 %indvars.iv458, 63
  %i.of = shl nuw i64 1, %i.oe
  %i.og = and i64 %i.od, %i.of
  br label %.noexc35

bb.bl:                                            ; preds = %bb.bj
  %i.oh = load i8, ptr %i.nu, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.oi = trunc nuw i8 %i.oh to i1
  br i1 %i.oi, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.oj = load i64, ptr %i.lz, align 8, !tbaa !855
  %i.ok = and i64 %i.oj, 1
  br label %.noexc35

bb.bn:                                            ; preds = %bb.bl
  %i.ol = load ptr, ptr %i.nv, align 8, !tbaa !1529
  %i.om = shl nsw i64 %indvars.iv458, 2
  %i.on = getelementptr inbounds i8, ptr %i.ol, i64 %i.om
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !3
  %i.op = zext i32 %i.oo to i64                   ; 2 uses
  %i.oq = lshr i64 %i.op, 6
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.oq
  %i.os = load i64, ptr %i.or, align 8, !tbaa !855
  %i.ot = and i64 %i.op, 63
  %i.ou = shl nuw i64 1, %i.ot
  %i.ov = and i64 %i.ou, %i.os
  br label %.noexc35

.noexc35:                                         ; preds = %bb.bn, %bb.bm, %bb.bk
  %.0.i.i.i175.in = phi i64 [ %i.og, %bb.bk ], [ %i.ok, %bb.bm ], [ %i.ov, %bb.bn ]
  %.0.i.i.i175.not = icmp eq i64 %.0.i.i.i175.in, 0
  br i1 %.0.i.i.i175.not, label %.loopexit372, label %.noexc36

.noexc36:                                         ; preds = %.noexc34, %.noexc35
  %i.ow = trunc nsw i64 %indvars.iv458 to i32
  br i1 %i.ne, label %.noexc37, label %bb.bo

bb.bo:                                            ; preds = %.noexc36
  %i.ox = load i8, ptr %i.nu, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.oy = trunc nuw i8 %i.ox to i1
  br i1 %i.oy, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.oz = load i32, ptr %i.nw, align 8, !tbaa !1255
  br label %.noexc37

end_hunk_31
