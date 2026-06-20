inline.NumInlined: 3819
inline.NumDeleted: 1555
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  br i1 %i.ao, label %bb.j, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !417 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !418
  %i.at = icmp eq i32 %i.aq, %i.as
  br i1 %i.at, label %bb.k, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.au = load ptr, ptr %1, align 8, !tbaa !419   ; 2 uses
  %.not.i.i.i.i.i = icmp sgt i32 %i.aq, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.av = and i32 %i.aq, 2147483584               ; 3 uses
  %i.aw = zext nneg i32 %i.av to i64
  %.not37.i.i.not.i.i.i.i415.not = icmp eq i32 %i.av, 0
  br i1 %.not37.i.i.not.i.i.i.i415.not, label %.critedge.i.i.i.i.i.i, label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i416, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i, %i.aw
  br i1 %.not37.i.i.not.i.i.i.i, label %.lr.ph, label %.critedge.i.i.i.i.i.i, !llvm.loop !420

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %indvars.iv.i.i.i.i416 = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.ax = lshr exact i64 %indvars.iv.i.i.i.i416, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !9
  %i.ba = icmp eq i64 %i.az, -1
  br i1 %i.ba, label %bb.m, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, !llvm.loop !420

.critedge.i.i.i.i.i.i:                            ; preds = %bb.m, %bb.l
  %.not38.i.i.i.i.i.i = icmp eq i32 %i.aq, %i.av
  br i1 %.not38.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.critedge.i.i.i.i.i.i
  %i.bb = lshr i32 %i.aq, 6
  %i.bc = and i32 %i.aq, 63
  %i.bd = zext nneg i32 %i.bc to i64
  %notmask.i40.i.i.i.i.i.i = shl nsw i64 -1, %i.bd
  %i.be = zext nneg i32 %i.bb to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !9
  %.demorgan.i.i.i.i = or i64 %i.bg, %notmask.i40.i.i.i.i.i.i
  %i.bh = icmp eq i64 %.demorgan.i.i.i.i, -1
  %i.bi = zext i1 %i.bh to i16
  %i.bj = or disjoint i16 %i.bi, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i: ; preds = %.lr.ph, %bb.n, %.critedge.i.i.i.i.i.i, %bb.k, %bb.j, %bb.i
  %.sroa.0.0.insert.ext.i.i.i.i = phi i16 [ 256, %bb.j ], [ 256, %bb.i ], [ 257, %bb.k ], [ 257, %.critedge.i.i.i.i.i.i ], [ %i.bj, %bb.n ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i, ptr %i.ai, align 4
  %i.bk = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i
  %.0.in.i.i.i.i = phi i8 [ %.0.in.pre.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i ], [ %i.bk, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i ]
  %.0.i.i.i.i = trunc nuw i8 %.0.in.i.i.i.i to i1
  br i1 %.0.i.i.i.i, label %bb.o, label %bb.w

bb.o:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !417 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !415 ; 2 uses
  %i.bp = icmp slt i32 %i.bo, %i.bm
  br i1 %i.bp, label %.lr.ph.i.i.i, label %.loopexit190

.lr.ph.i.i.i:                                     ; preds = %bb.o
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !412
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !395 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 58
  %i.bt = load i8, ptr %i.bs, align 2, !tbaa !421, !range !58, !noundef !59
  %i.bu = trunc nuw i8 %i.bt to i1                ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 59 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 64 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 120
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !422 ; 3 uses
  %i.ca = sext i32 %i.bo to i64                   ; 4 uses
  %wide.trip.count.i.i.i = sext i32 %i.bm to i64  ; 2 uses
  %i.cb = sub nsw i64 %wide.trip.count.i.i.i, %i.ca ; 3 uses
  %xtraiter = and i64 %i.cb, 1
  %i.cc = add nsw i64 %wide.trip.count.i.i.i, -1
  %i.cd = icmp eq i64 %i.cc, %i.ca
  br i1 %i.cd, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %i.cb, -2
  br label %bb.p

bb.p:                                             ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.1, %.lr.ph.i.i.i.new
  %.4 = phi i32 [ 0, %.lr.ph.i.i.i.new ], [ %i.cz, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.1 ]
  %indvars.iv.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.1 ]
  %i.ce = trunc nsw i64 %indvars.iv.i.i.i to i32
  br i1 %i.bu, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = load i8, ptr %i.bv, align 1, !tbaa !424, !range !58, !noundef !59
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ch = load i32, ptr %i.bx, align 8, !tbaa !425
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.ci = load ptr, ptr %i.bw, align 8, !tbaa !426
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %indvars.iv.i.i.i
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i: ; preds = %bb.s, %bb.r, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.ck, %bb.s ], [ %i.ch, %bb.r ], [ %i.ce, %bb.p ]
  %i.cl = sext i32 %.0.i.i.i.i.i to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = add nsw i32 %i.cn, %.4
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.cp = trunc nsw i64 %indvars.iv.next.i.i.i to i32
  br i1 %i.bu, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.1, label %bb.t

bb.t:                                             ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i
  %i.cq = load i8, ptr %i.bv, align 1, !tbaa !424, !range !58, !noundef !59
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = load ptr, ptr %i.bw, align 8, !tbaa !426
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %indvars.iv.next.i.i.i
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.1

bb.v:                                             ; preds = %bb.t
  %i.cv = load i32, ptr %i.bx, align 8, !tbaa !425
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.1

_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.1: ; preds = %bb.v, %bb.u, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i
  %.0.i.i.i.i.i.1 = phi i32 [ %i.cu, %bb.u ], [ %i.cv, %bb.v ], [ %i.cp, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i ]
  %i.cw = sext i32 %.0.i.i.i.i.i.1 to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.cz = add nsw i32 %i.cy, %i.co                ; 3 uses
  %indvars.iv.next.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit190.loopexit.unr-lcssa, label %bb.p, !llvm.loop !427

bb.w:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i
  %i.da = load ptr, ptr %1, align 8, !tbaa !419   ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !415 ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !417 ; 7 uses
  %.not.i.i.i.i.i.i = icmp slt i32 %i.dc, %i.de
  br i1 %.not.i.i.i.i.i.i, label %bb.x, label %.loopexit190

bb.x:                                             ; preds = %bb.w
  %i.df = add i32 %i.dc, 63                       ; 2 uses
  %i.dg = srem i32 %i.df, 64
  %i.dh = sub nsw i32 %i.df, %i.dg                ; 6 uses
  %i.di = and i32 %i.de, -64                      ; 8 uses
  %i.dj = icmp slt i32 %i.di, %i.dh
  br i1 %i.dj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dk = ashr i32 %i.de, 6
  %i.dl = and i32 %i.de, 63
  %i.dm = zext nneg i32 %i.dl to i64
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.dm
  %i.dn = xor i64 %notmask.i.i.i.i.i.i.i, -1
  %i.do = sub nsw i32 %i.dh, %i.dc                ; 2 uses
  %i.dp = zext nneg i32 %i.do to i64
  %notmask.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.dp
  %i.dq = xor i64 %notmask.i.i.i.i.i.i.i.i, -1
  %i.dr = sub nsw i32 64, %i.do
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = shl i64 %i.dq, %i.ds
  %i.du = and i64 %i.dt, %i.dn
  %i.dv = sext i32 %i.dk to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.dv
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !9
  %i.dy = and i64 %i.du, %i.dx                    ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit190, label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.y
  %i.dz = load ptr, ptr %i.b, align 8, !tbaa !412
  %i.ea = load ptr, ptr %i.a, align 8, !tbaa !395 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 58
  %i.ec = load i8, ptr %i.eb, align 2, !tbaa !421, !range !58, !noundef !59
  %i.ed = trunc nuw i8 %i.ec to i1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 120
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !422 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 64
  br i1 %i.ed, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i.i.i, label %.preheader.split.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i.i.i
  %.017.us.i.i.i.i.i.i.i = phi i64 [ %i.eo, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i.i.i ], [ %i.dy, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.ei = phi i32 [ %i.em, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i ]
  %i.ej = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.017.us.i.i.i.i.i.i.i, i1 true)
  %35 = trunc nuw nsw i64 %i.ej to i32
  %36 = or disjoint i32 %i.di, %35
  %37 = sext i32 %36 to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %37
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !3
  %i.em = add nsw i32 %i.el, %i.ei                ; 2 uses
  %i.en = add nsw i64 %.017.us.i.i.i.i.i.i.i, -1
  %i.eo = and i64 %i.en, %.017.us.i.i.i.i.i.i.i   ; 2 uses
  %.not10.us.i.i.i.i.i.i.i = icmp eq i64 %i.eo, 0
  br i1 %.not10.us.i.i.i.i.i.i.i, label %.loopexit190, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i.i.i, !llvm.loop !428

.preheader.split.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ea, i64 59
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !424, !range !58, !noundef !59
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i.i.i.i.i.i.i.preheader, label %.preheader.split.split.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i.i.i.i.i.i.i.preheader: ; preds = %.preheader.split.i.i.i.i.i.i.i
  %i.es = load i32, ptr %i.eh, align 8, !tbaa !425
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i.i.i.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i.i.i.i.i.i.i
  %.017.us18.i.i.i.i.i.i.i = phi i64 [ %i.ez, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i.i.i.i.i.i.i ], [ %i.dy, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ew = phi i32 [ %i.ex, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i.i.i.i.i.i.i ], [ 0, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i.i.i.i.i.i.i.preheader ]
  %i.ex = add nsw i32 %i.ev, %i.ew                ; 2 uses
  %i.ey = add nsw i64 %.017.us18.i.i.i.i.i.i.i, -1
  %i.ez = and i64 %i.ey, %.017.us18.i.i.i.i.i.i.i ; 2 uses
  %.not10.us21.i.i.i.i.i.i.i = icmp eq i64 %i.ez, 0
  br i1 %.not10.us21.i.i.i.i.i.i.i, label %.loopexit190, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i.i.i.i.i.i.i, !llvm.loop !428

.preheader.split.split.i.i.i.i.i.i.i:             ; preds = %.preheader.split.i.i.i.i.i.i.i
  %i.fa = load ptr, ptr %i.eg, align 8, !tbaa !426
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i, %.preheader.split.split.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i = phi i64 [ %i.dy, %.preheader.split.split.i.i.i.i.i.i.i ], [ %i.fk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.fb = phi i32 [ 0, %.preheader.split.split.i.i.i.i.i.i.i ], [ %i.fi, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i ]
  %i.fc = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.017.i.i.i.i.i.i.i, i1 true)
  %38 = trunc nuw nsw i64 %i.fc to i32
  %39 = or disjoint i32 %i.di, %38
  %40 = sext i32 %39 to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %40
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !3
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3
  %i.fi = add nsw i32 %i.fh, %i.fb                ; 2 uses
  %i.fj = add nsw i64 %.017.i.i.i.i.i.i.i, -1
  %i.fk = and i64 %i.fj, %.017.i.i.i.i.i.i.i      ; 2 uses
  %.not10.i.i.i.i.i.i.i = icmp eq i64 %i.fk, 0
  br i1 %.not10.i.i.i.i.i.i.i, label %.loopexit190, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i, !llvm.loop !428

bb.z:                                             ; preds = %bb.x
  %.not32.i.i.i.i.i.i = icmp eq i32 %i.dc, %i.dh
  br i1 %.not32.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUlT_E_ZNS4_22applyToSelectedNoThrowISR_EEvSB_SQ_EUlSQ_E_EEvSB_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit50.i.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fl = sdiv i32 %i.dc, 64                      ; 2 uses
  %i.fm = sub nsw i32 %i.dh, %i.dc                ; 2 uses
  %i.fn = zext nneg i32 %i.fm to i64
  %notmask.i.i35.i.i.i.i.i.i = shl nsw i64 -1, %i.fn
  %i.fo = xor i64 %notmask.i.i35.i.i.i.i.i.i, -1
  %i.fp = sub nsw i32 64, %i.fm
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = shl i64 %i.fo, %i.fq
  %i.fs = sext i32 %i.fl to i64
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.fs
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !9
  %i.fv = and i64 %i.fu, %i.fr                    ; 4 uses
  %.not.i36.i.i.i.i.i.i = icmp eq i64 %i.fv, 0
  br i1 %.not.i36.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUlT_E_ZNS4_22applyToSelectedNoThrowISR_EEvSB_SQ_EUlSQ_E_EEvSB_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit50.i.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i.i

.preheader.i37.i.i.i.i.i.i:                       ; preds = %bb.aa
  %i.fw = shl nsw i32 %i.fl, 6                    ; 2 uses
  %i.fx = load ptr, ptr %i.b, align 8, !tbaa !412
  %i.fy = load ptr, ptr %i.a, align 8, !tbaa !395 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 58
  %i.ga = load i8, ptr %i.fz, align 2, !tbaa !421, !range !58, !noundef !59
  %i.gb = trunc nuw i8 %i.ga to i1
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 120
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !422 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fy, i64 64
  br i1 %i.gb, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i47.i.i.i.i.i.i, label %.preheader.split.i39.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i47.i.i.i.i.i.i: ; preds = %.preheader.i37.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i47.i.i.i.i.i.i
  %.017.us.i48.i.i.i.i.i.i = phi i64 [ %i.gm, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i47.i.i.i.i.i.i ], [ %i.fv, %.preheader.i37.i.i.i.i.i.i ] ; 3 uses
  %i.gg = phi i32 [ %i.gk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i47.i.i.i.i.i.i ], [ 0, %.preheader.i37.i.i.i.i.i.i ]
  %i.gh = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.017.us.i48.i.i.i.i.i.i, i1 true)
  %41 = trunc nuw nsw i64 %i.gh to i32
  %42 = or disjoint i32 %i.fw, %41
  %43 = sext i32 %42 to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %43
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !3
  %i.gk = add nsw i32 %i.gj, %i.gg                ; 2 uses
  %i.gl = add i64 %.017.us.i48.i.i.i.i.i.i, -1
  %i.gm = and i64 %i.gl, %.017.us.i48.i.i.i.i.i.i ; 2 uses
  %.not10.us.i49.i.i.i.i.i.i = icmp eq i64 %i.gm, 0
  br i1 %.not10.us.i49.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUlT_E_ZNS4_22applyToSelectedNoThrowISR_EEvSB_SQ_EUlSQ_E_EEvSB_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit50.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i47.i.i.i.i.i.i, !llvm.loop !428

.preheader.split.i39.i.i.i.i.i.i:                 ; preds = %.preheader.i37.i.i.i.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fy, i64 59
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !424, !range !58, !noundef !59
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i44.i.i.i.i.i.i.preheader, label %.preheader.split.split.i40.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i44.i.i.i.i.i.i.preheader: ; preds = %.preheader.split.i39.i.i.i.i.i.i
  %i.gq = load i32, ptr %i.gf, align 8, !tbaa !425
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.gr
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i44.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i44.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i44.i.i.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i44.i.i.i.i.i.i
  %.017.us18.i45.i.i.i.i.i.i = phi i64 [ %i.gx, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i44.i.i.i.i.i.i ], [ %i.fv, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i44.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.gu = phi i32 [ %i.gv, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i44.i.i.i.i.i.i ], [ 0, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i44.i.i.i.i.i.i.preheader ]
  %i.gv = add nsw i32 %i.gt, %i.gu                ; 2 uses
  %i.gw = add i64 %.017.us18.i45.i.i.i.i.i.i, -1
  %i.gx = and i64 %i.gw, %.017.us18.i45.i.i.i.i.i.i ; 2 uses
  %.not10.us21.i46.i.i.i.i.i.i = icmp eq i64 %i.gx, 0
  br i1 %.not10.us21.i46.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUlT_E_ZNS4_22applyToSelectedNoThrowISR_EEvSB_SQ_EUlSQ_E_EEvSB_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit50.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i44.i.i.i.i.i.i, !llvm.loop !428

.preheader.split.split.i40.i.i.i.i.i.i:           ; preds = %.preheader.split.i39.i.i.i.i.i.i
  %i.gy = load ptr, ptr %i.ge, align 8, !tbaa !426
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.i.i, %.preheader.split.split.i40.i.i.i.i.i.i
  %.017.i42.i.i.i.i.i.i = phi i64 [ %i.fv, %.preheader.split.split.i40.i.i.i.i.i.i ], [ %i.hi, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.i.i ] ; 3 uses
  %i.gz = phi i32 [ 0, %.preheader.split.split.i40.i.i.i.i.i.i ], [ %i.hg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.i.i ]
  %i.ha = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.017.i42.i.i.i.i.i.i, i1 true)
  %44 = trunc nuw nsw i64 %i.ha to i32
  %45 = or disjoint i32 %i.fw, %44
  %46 = sext i32 %45 to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %46
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !3
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !3
  %i.hg = add nsw i32 %i.hf, %i.gz                ; 2 uses
  %i.hh = add i64 %.017.i42.i.i.i.i.i.i, -1
  %i.hi = and i64 %i.hh, %.017.i42.i.i.i.i.i.i    ; 2 uses
  %.not10.i43.i.i.i.i.i.i = icmp eq i64 %i.hi, 0
  br i1 %.not10.i43.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUlT_E_ZNS4_22applyToSelectedNoThrowISR_EEvSB_SQ_EUlSQ_E_EEvSB_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit50.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.i.i, !llvm.loop !428

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUlT_E_ZNS4_22applyToSelectedNoThrowISR_EEvSB_SQ_EUlSQ_E_EEvSB_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit50.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i44.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i47.i.i.i.i.i.i, %bb.aa, %bb.z
  %.0 = phi i32 [ 0, %bb.z ], [ 0, %bb.aa ], [ %i.gk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i47.i.i.i.i.i.i ], [ %i.gv, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i44.i.i.i.i.i.i ], [ %i.hg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.i.i ] ; 2 uses
  %i.hj = add nsw i32 %i.dh, 64                   ; 2 uses
  %.not3383.i.i.i.i.i.i = icmp sgt i32 %i.hj, %i.di
  br i1 %.not3383.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUlT_E_ZNS4_22applyToSelectedNoThrowISR_EEvSB_SQ_EUlSQ_E_EEvSB_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit50.i.i.i.i.i.i
  %i.hk = load ptr, ptr %i.b, align 8
  %i.hl = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 58 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 64 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 120 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 59 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUlT_E_ZNS4_22applyToSelectedNoThrowISR_EEvSB_SQ_EUlSQ_E_EEvSB_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUlT_E_ZNS4_22applyToSelectedNoThrowISR_EEvSB_SQ_EUlSQ_E_EEvSB_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit50.i.i.i.i.i.i
  %.3 = phi i32 [ %.0, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUlT_E_ZNS4_22applyToSelectedNoThrowISR_EEvSB_SQ_EUlSQ_E_EEvSB_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUlimE_clEim.exit50.i.i.i.i.i.i ], [ %.2, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUlT_E_ZNS4_22applyToSelectedNoThrowISR_EEvSB_SQ_EUlSQ_E_EEvSB_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i ] ; 5 uses
  %.not34.i.i.i.i.i.i = icmp eq i32 %i.de, %i.di
  br i1 %.not34.i.i.i.i.i.i, label %.loopexit190, label %bb.ac

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUlT_E_ZNS4_22applyToSelectedNoThrowISR_EEvSB_SQ_EUlSQ_E_EEvSB_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i
  %.1 = phi i32 [ %.2, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUlT_E_ZNS4_22applyToSelectedNoThrowISR_EEvSB_SQ_EUlSQ_E_EEvSB_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i ], [ %.0, %.lr.ph.i.i.i.i.i.i.preheader ] ; 12 uses
  %i.hr = phi i32 [ %i.aap, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUlT_E_ZNS4_22applyToSelectedNoThrowISR_EEvSB_SQ_EUlSQ_E_EEvSB_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i ], [ %i.hj, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.084.i.i.i.i.i.i = phi i32 [ %i.hr, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUlT_E_ZNS4_22applyToSelectedNoThrowISR_EEvSB_SQ_EUlSQ_E_EEvSB_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i ], [ %i.dh, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.hs = sdiv i32 %.084.i.i.i.i.i.i, 64          ; 3 uses
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.ht
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !9  ; 4 uses
  switch i64 %i.hv, label %.lr.ph.i.i.i.i.i.i.i [
    i64 -1, label %bb.ab
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUlT_E_ZNS4_22applyToSelectedNoThrowISR_EEvSB_SQ_EUlSQ_E_EEvSB_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.hw = shl nsw i32 %i.hs, 6                    ; 2 uses
  %i.hx = load i8, ptr %i.hm, align 2, !tbaa !421, !range !58, !noundef !59
  %i.hy = trunc nuw i8 %i.hx to i1
  %i.hz = load ptr, ptr %i.hp, align 8, !tbaa !422 ; 3 uses
  br i1 %i.hy, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i54.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i54.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i54.i.i.i.i.i.i
  %i.ia = phi i32 [ %i.ie, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i54.i.i.i.i.i.i ], [ %.1, %.lr.ph.i.i.i.i.i.i.i ]
  %.01526.us.i.i.i.i.i.i.i = phi i64 [ %i.ig, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i54.i.i.i.i.i.i ], [ %i.hv, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.ib = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01526.us.i.i.i.i.i.i.i, i1 true)
  %47 = trunc nuw nsw i64 %i.ib to i32
  %48 = or disjoint i32 %i.hw, %47
  %49 = sext i32 %48 to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.hz, i64 %49
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !3
  %i.ie = add nsw i32 %i.id, %i.ia                ; 2 uses
  %i.if = add i64 %.01526.us.i.i.i.i.i.i.i, -1
  %i.ig = and i64 %i.if, %.01526.us.i.i.i.i.i.i.i ; 2 uses
  %.not.us.i.i.i.i.i.i.i = icmp eq i64 %i.ig, 0
  br i1 %.not.us.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUlT_E_ZNS4_22applyToSelectedNoThrowISR_EEvSB_SQ_EUlSQ_E_EEvSB_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i54.i.i.i.i.i.i, !llvm.loop !429

.lr.ph.split.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ih = load i8, ptr %i.hq, align 1, !tbaa !424, !range !58, !noundef !59
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us28.i.i.i.i.i.i.i.preheader, label %.lr.ph.split.split.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us28.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.i.i.i.i.i.i.i
  %i.ij = load i32, ptr %i.ho, align 8, !tbaa !425
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [4 x i8], ptr %i.hz, i64 %i.ik
  %i.im = load i32, ptr %i.il, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us28.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us28.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us28.i.i.i.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us28.i.i.i.i.i.i.i
  %i.in = phi i32 [ %i.io, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us28.i.i.i.i.i.i.i ], [ %.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us28.i.i.i.i.i.i.i.preheader ]
  %.01526.us27.i.i.i.i.i.i.i = phi i64 [ %i.iq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us28.i.i.i.i.i.i.i ], [ %i.hv, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us28.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.io = add nsw i32 %i.im, %i.in                ; 2 uses
  %i.ip = add i64 %.01526.us27.i.i.i.i.i.i.i, -1
  %i.iq = and i64 %i.ip, %.01526.us27.i.i.i.i.i.i.i ; 2 uses
  %.not.us30.i.i.i.i.i.i.i = icmp eq i64 %i.iq, 0
  br i1 %.not.us30.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUlT_E_ZNS4_22applyToSelectedNoThrowISR_EEvSB_SQ_EUlSQ_E_EEvSB_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us28.i.i.i.i.i.i.i, !llvm.loop !429

.lr.ph.split.split.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.split.i.i.i.i.i.i.i
  %i.ir = load ptr, ptr %i.hn, align 8, !tbaa !426
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i52.i.i.i.i.i.i

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.is = shl nsw i32 %i.hs, 6                    ; 5 uses
  %i.it = sext i32 %i.is to i64                   ; 19 uses
  %i.iu = add i32 %i.is, 64
  %i.iv = sext i32 %i.iu to i64                   ; 7 uses
  %.0.off.i.i.i.i.i.i = add i32 %.084.i.i.i.i.i.i, 127
  %.not39.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i, 64
  br i1 %.not39.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUlT_E_ZNS4_22applyToSelectedNoThrowISR_EEvSB_SQ_EUlSQ_E_EEvSB_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i, label %.lr.ph33.i.i.i.i.i.i.i

.lr.ph33.i.i.i.i.i.i.i:                           ; preds = %bb.ab
  %i.iw = load i8, ptr %i.hm, align 2, !tbaa !421, !range !58, !noundef !59
  %i.ix = trunc nuw i8 %i.iw to i1
  %i.iy = load ptr, ptr %i.hp, align 8, !tbaa !422 ; 45 uses
  br i1 %i.ix, label %iter.check, label %.lr.ph33.split.i.i.i.i.i.i.i

iter.check:                                       ; preds = %.lr.ph33.i.i.i.i.i.i.i
  %i.iz = or disjoint i64 %i.it, 1
  %umax421 = call i64 @llvm.umax.i64(i64 %i.iz, i64 %i.iv) ; 2 uses
  %i.ja = sub i64 %umax421, %i.it                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.ja, 8
  br i1 %min.iters.check, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.jb = or disjoint i64 %i.it, 1
  %umax420 = call i64 @llvm.umax.i64(i64 %i.jb, i64 %i.iv)
  %i.jc = xor i64 %i.it, -1
  %i.jd = add i64 %umax420, %i.jc                 ; 2 uses
  %i.je = sext i32 %i.is to i34                   ; 2 uses
  %i.jf = shl nsw i34 %i.je, 2
  %i.jg = trunc i64 %i.jd to i34
  %i.jh = add i34 %i.je, %i.jg
  %i.ji = shl i34 %i.jh, 2
  %i.jj = icmp slt i34 %i.ji, %i.jf
  %i.jk = icmp ugt i64 %i.jd, 4294967295
  %i.jl = or i1 %i.jj, %i.jk
  br i1 %i.jl, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check422 = icmp ult i64 %i.ja, 32
  %n.mod.vf431 = and i64 %umax421, 1              ; 3 uses
  %n.vec432 = sub i64 %i.ja, %n.mod.vf431         ; 3 uses
  %i.jm = add i64 %n.vec432, %i.it                ; 2 uses
  %i.jn = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.1, i64 0 ; 2 uses
  br i1 %min.iters.check422, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %i.jv, %vector.body ], [ %i.jn, %vector.main.loop.iter.check ]
  %vec.phi423 = phi <8 x i32> [ %i.jw, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi424 = phi <8 x i32> [ %i.jx, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi425 = phi <8 x i32> [ %i.jy, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.jo = add i64 %index, %i.it
  %i.jp = shl i64 %i.jo, 32
  %i.jq = ashr exact i64 %i.jp, 30
  %i.jr = getelementptr inbounds i8, ptr %i.iy, i64 %i.jq ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 32
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 64
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 96
  %wide.load = load <8 x i32>, ptr %i.jr, align 4, !tbaa !3
  %wide.load426 = load <8 x i32>, ptr %i.js, align 4, !tbaa !3
  %wide.load427 = load <8 x i32>, ptr %i.jt, align 4, !tbaa !3
  %wide.load428 = load <8 x i32>, ptr %i.ju, align 4, !tbaa !3
  %i.jv = add <8 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.jw = add <8 x i32> %wide.load426, %vec.phi423 ; 2 uses
  %i.jx = add <8 x i32> %wide.load427, %vec.phi424 ; 2 uses
  %i.jy = add <8 x i32> %wide.load428, %vec.phi425 ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.jz = icmp eq i64 %index.next, %n.vec432
  br i1 %i.jz, label %middle.block, label %vector.body, !llvm.loop !430

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.jw, %i.jv
  %bin.rdx429 = add <8 x i32> %i.jx, %bin.rdx
  %bin.rdx430 = add <8 x i32> %i.jy, %bin.rdx429
  %i.ka = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx430) ; 2 uses
  %cmp.n = icmp eq i64 %n.mod.vf431, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUlT_E_ZNS4_22applyToSelectedNoThrowISR_EEvSB_SQ_EUlSQ_E_EEvSB_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i.i.i.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index433 = phi i64 [ %index.next436, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi434 = phi <8 x i32> [ %i.kf, %vec.epilog.vector.body ], [ %i.jn, %vector.main.loop.iter.check ]
  %i.kb = add i64 %index433, %i.it
  %i.kc = shl i64 %i.kb, 32
  %i.kd = ashr exact i64 %i.kc, 30
  %i.ke = getelementptr inbounds i8, ptr %i.iy, i64 %i.kd
  %wide.load435 = load <8 x i32>, ptr %i.ke, align 4, !tbaa !3
  %i.kf = add <8 x i32> %wide.load435, %vec.phi434 ; 2 uses
  %index.next436 = add nuw i64 %index433, 8       ; 2 uses
  %i.kg = icmp eq i64 %index.next436, %n.vec432
  br i1 %i.kg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !431

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.kh = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.kf) ; 2 uses
  %cmp.n437 = icmp eq i64 %n.mod.vf431, 0
  br i1 %cmp.n437, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUlT_E_ZNS4_22applyToSelectedNoThrowISR_EEvSB_SQ_EUlSQ_E_EEvSB_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i.i.i.preheader

_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i.i.i.preheader: ; preds = %middle.block, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.ph = phi i32 [ %i.ka, %middle.block ], [ %.1, %vector.scevcheck ], [ %.1, %iter.check ], [ %i.kh, %vec.epilog.middle.block ]
  %.032.us.i.i.i.i.i.i.i.ph = phi i64 [ %i.jm, %middle.block ], [ %i.it, %vector.scevcheck ], [ %i.it, %iter.check ], [ %i.jm, %vec.epilog.middle.block ]
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i.i.i
  %i.ki = phi i32 [ %i.km, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i.i.i ], [ %.ph, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i.i.i.preheader ]
  %.032.us.i.i.i.i.i.i.i = phi i64 [ %i.kn, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i.i.i ], [ %.032.us.i.i.i.i.i.i.i.ph, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %sext.i.i.i.i.i.i.i = shl i64 %.032.us.i.i.i.i.i.i.i, 32
  %i.kj = ashr exact i64 %sext.i.i.i.i.i.i.i, 30
  %i.kk = getelementptr inbounds i8, ptr %i.iy, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !3
  %i.km = add nsw i32 %i.kl, %i.ki                ; 2 uses
  %i.kn = add nuw i64 %.032.us.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.ko = icmp ult i64 %i.kn, %i.iv
  br i1 %i.ko, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUlT_E_ZNS4_22applyToSelectedNoThrowISR_EEvSB_SQ_EUlSQ_E_EEvSB_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i, !llvm.loop !432

.lr.ph33.split.i.i.i.i.i.i.i:                     ; preds = %.lr.ph33.i.i.i.i.i.i.i
  %i.kp = load i8, ptr %i.hq, align 1, !tbaa !424, !range !58, !noundef !59
  %i.kq = trunc nuw i8 %i.kp to i1
  br i1 %i.kq, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us35.i.i.i.i.i.i.i.preheader, label %iter.check466

_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us35.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph33.split.i.i.i.i.i.i.i
  %i.kr = load i32, ptr %i.ho, align 8, !tbaa !425
  %i.ks = sext i32 %i.kr to i64
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.ks
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !3
  %i.kv = or disjoint i64 %i.it, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.kv, i64 %i.iv)
  %i.kw = trunc i64 %umax to i32
  %i.kx = sub i32 %i.kw, %i.is
  %i.ky = mul i32 %i.ku, %i.kx
  %i.kz = add i32 %.1, %i.ky
  br label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUlT_E_ZNS4_22applyToSelectedNoThrowISR_EEvSB_SQ_EUlSQ_E_EEvSB_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i

iter.check466:                                    ; preds = %.lr.ph33.split.i.i.i.i.i.i.i
  %i.la = load ptr, ptr %i.hn, align 8, !tbaa !426 ; 41 uses
  %i.lb = or disjoint i64 %i.it, 1
  %umax445 = call i64 @llvm.umax.i64(i64 %i.lb, i64 %i.iv) ; 2 uses
  %i.lc = sub i64 %umax445, %i.it                 ; 3 uses
  %min.iters.check446 = icmp ult i64 %i.lc, 8
  br i1 %min.iters.check446, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.i.i.preheader, label %vector.scevcheck440

vector.scevcheck440:                              ; preds = %iter.check466
  %i.ld = or disjoint i64 %i.it, 1
  %umax441 = call i64 @llvm.umax.i64(i64 %i.ld, i64 %i.iv)
  %i.le = xor i64 %i.it, -1
  %i.lf = add i64 %umax441, %i.le                 ; 2 uses
  %i.lg = sext i32 %i.is to i34                   ; 2 uses
  %i.lh = shl nsw i34 %i.lg, 2
  %i.li = trunc i64 %i.lf to i34
  %i.lj = add i34 %i.lg, %i.li
  %i.lk = shl i34 %i.lj, 2
  %i.ll = icmp slt i34 %i.lk, %i.lh
  %i.lm = icmp ugt i64 %i.lf, 4294967295
  %i.ln = or i1 %i.ll, %i.lm
  br i1 %i.ln, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check447

vector.main.loop.iter.check447:                   ; preds = %vector.scevcheck440
  %min.iters.check448 = icmp ult i64 %i.lc, 32
  %n.mod.vf471 = and i64 %umax445, 1              ; 3 uses
  %n.vec472 = sub i64 %i.lc, %n.mod.vf471         ; 3 uses
  %i.lo = add i64 %n.vec472, %i.it                ; 2 uses
  %i.lp = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.1, i64 0 ; 2 uses
  br i1 %min.iters.check448, label %vec.epilog.vector.body473, label %vector.body452

vector.body452:                                   ; preds = %vector.main.loop.iter.check447, %vector.body452
  %index453 = phi i64 [ %index.next458, %vector.body452 ], [ 0, %vector.main.loop.iter.check447 ] ; 2 uses
  %vec.phi454 = phi <8 x i32> [ %i.ws, %vector.body452 ], [ %i.lp, %vector.main.loop.iter.check447 ]
  %vec.phi455 = phi <8 x i32> [ %i.wt, %vector.body452 ], [ zeroinitializer, %vector.main.loop.iter.check447 ]
  %vec.phi456 = phi <8 x i32> [ %i.wu, %vector.body452 ], [ zeroinitializer, %vector.main.loop.iter.check447 ]
  %vec.phi457 = phi <8 x i32> [ %i.wv, %vector.body452 ], [ zeroinitializer, %vector.main.loop.iter.check447 ]
  %i.lq = add i64 %index453, %i.it                ; 32 uses
  %i.lr = shl i64 %i.lq, 32
  %i.ls = shl i64 %i.lq, 32
  %i.lt = shl i64 %i.lq, 32
  %i.lu = shl i64 %i.lq, 32
  %i.lv = shl i64 %i.lq, 32
  %i.lw = shl i64 %i.lq, 32
  %i.lx = shl i64 %i.lq, 32
  %i.ly = shl i64 %i.lq, 32
  %i.lz = shl i64 %i.lq, 32
  %i.ma = shl i64 %i.lq, 32
  %i.mb = shl i64 %i.lq, 32
  %i.mc = shl i64 %i.lq, 32
  %i.md = shl i64 %i.lq, 32
  %i.me = shl i64 %i.lq, 32
  %i.mf = shl i64 %i.lq, 32
  %i.mg = shl i64 %i.lq, 32
  %i.mh = shl i64 %i.lq, 32
  %i.mi = shl i64 %i.lq, 32
  %i.mj = shl i64 %i.lq, 32
  %i.mk = shl i64 %i.lq, 32
  %i.ml = shl i64 %i.lq, 32
  %i.mm = shl i64 %i.lq, 32
  %i.mn = shl i64 %i.lq, 32
  %i.mo = shl i64 %i.lq, 32
  %i.mp = shl i64 %i.lq, 32
  %i.mq = shl i64 %i.lq, 32
  %i.mr = shl i64 %i.lq, 32
  %i.ms = shl i64 %i.lq, 32
  %i.mt = shl i64 %i.lq, 32
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  %i.tv = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.sp
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.sq
  %i.tx = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.sr
  %i.ty = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.ss
  %i.tz = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.st
  %i.ua = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.su
  %i.ub = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.sv
  %i.uc = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.sw
  %i.ud = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.sx
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.sy
  %i.uf = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.sz
  %i.ug = load i32, ptr %i.ta, align 4, !tbaa !3
  %i.uh = load i32, ptr %i.tb, align 4, !tbaa !3
  %i.ui = load i32, ptr %i.tc, align 4, !tbaa !3
  %i.uj = load i32, ptr %i.td, align 4, !tbaa !3
  %i.uk = load i32, ptr %i.te, align 4, !tbaa !3
  %i.ul = load i32, ptr %i.tf, align 4, !tbaa !3
  %i.um = load i32, ptr %i.tg, align 4, !tbaa !3
  %i.un = load i32, ptr %i.th, align 4, !tbaa !3
  %i.uo = insertelement <8 x i32> poison, i32 %i.ug, i64 0
  %i.up = insertelement <8 x i32> %i.uo, i32 %i.uh, i64 1
  %i.uq = insertelement <8 x i32> %i.up, i32 %i.ui, i64 2
  %i.ur = insertelement <8 x i32> %i.uq, i32 %i.uj, i64 3
  %i.us = insertelement <8 x i32> %i.ur, i32 %i.uk, i64 4
  %i.ut = insertelement <8 x i32> %i.us, i32 %i.ul, i64 5
  %i.uu = insertelement <8 x i32> %i.ut, i32 %i.um, i64 6
  %i.uv = insertelement <8 x i32> %i.uu, i32 %i.un, i64 7
  %i.uw = load i32, ptr %i.ti, align 4, !tbaa !3
  %i.ux = load i32, ptr %i.tj, align 4, !tbaa !3
  %i.uy = load i32, ptr %i.tk, align 4, !tbaa !3
  %i.uz = load i32, ptr %i.tl, align 4, !tbaa !3
  %i.va = load i32, ptr %i.tm, align 4, !tbaa !3
  %i.vb = load i32, ptr %i.tn, align 4, !tbaa !3
  %i.vc = load i32, ptr %i.to, align 4, !tbaa !3
  %i.vd = load i32, ptr %i.tp, align 4, !tbaa !3
  %i.ve = insertelement <8 x i32> poison, i32 %i.uw, i64 0
  %i.vf = insertelement <8 x i32> %i.ve, i32 %i.ux, i64 1
  %i.vg = insertelement <8 x i32> %i.vf, i32 %i.uy, i64 2
  %i.vh = insertelement <8 x i32> %i.vg, i32 %i.uz, i64 3
  %i.vi = insertelement <8 x i32> %i.vh, i32 %i.va, i64 4
  %i.vj = insertelement <8 x i32> %i.vi, i32 %i.vb, i64 5
  %i.vk = insertelement <8 x i32> %i.vj, i32 %i.vc, i64 6
  %i.vl = insertelement <8 x i32> %i.vk, i32 %i.vd, i64 7
  %i.vm = load i32, ptr %i.tq, align 4, !tbaa !3
  %i.vn = load i32, ptr %i.tr, align 4, !tbaa !3
  %i.vo = load i32, ptr %i.ts, align 4, !tbaa !3
  %i.vp = load i32, ptr %i.tt, align 4, !tbaa !3
  %i.vq = load i32, ptr %i.tu, align 4, !tbaa !3
  %i.vr = load i32, ptr %i.tv, align 4, !tbaa !3
  %i.vs = load i32, ptr %i.tw, align 4, !tbaa !3
  %i.vt = load i32, ptr %i.tx, align 4, !tbaa !3
  %i.vu = insertelement <8 x i32> poison, i32 %i.vm, i64 0
  %i.vv = insertelement <8 x i32> %i.vu, i32 %i.vn, i64 1
  %i.vw = insertelement <8 x i32> %i.vv, i32 %i.vo, i64 2
  %i.vx = insertelement <8 x i32> %i.vw, i32 %i.vp, i64 3
  %i.vy = insertelement <8 x i32> %i.vx, i32 %i.vq, i64 4
  %i.vz = insertelement <8 x i32> %i.vy, i32 %i.vr, i64 5
  %i.wa = insertelement <8 x i32> %i.vz, i32 %i.vs, i64 6
  %i.wb = insertelement <8 x i32> %i.wa, i32 %i.vt, i64 7
  %i.wc = load i32, ptr %i.ty, align 4, !tbaa !3
  %i.wd = load i32, ptr %i.tz, align 4, !tbaa !3
  %i.we = load i32, ptr %i.ua, align 4, !tbaa !3
  %i.wf = load i32, ptr %i.ub, align 4, !tbaa !3
  %i.wg = load i32, ptr %i.uc, align 4, !tbaa !3
  %i.wh = load i32, ptr %i.ud, align 4, !tbaa !3
  %i.wi = load i32, ptr %i.ue, align 4, !tbaa !3
  %i.wj = load i32, ptr %i.uf, align 4, !tbaa !3
  %i.wk = insertelement <8 x i32> poison, i32 %i.wc, i64 0
  %i.wl = insertelement <8 x i32> %i.wk, i32 %i.wd, i64 1
  %i.wm = insertelement <8 x i32> %i.wl, i32 %i.we, i64 2
  %i.wn = insertelement <8 x i32> %i.wm, i32 %i.wf, i64 3
  %i.wo = insertelement <8 x i32> %i.wn, i32 %i.wg, i64 4
  %i.wp = insertelement <8 x i32> %i.wo, i32 %i.wh, i64 5
  %i.wq = insertelement <8 x i32> %i.wp, i32 %i.wi, i64 6
  %i.wr = insertelement <8 x i32> %i.wq, i32 %i.wj, i64 7
  %i.ws = add <8 x i32> %i.uv, %vec.phi454        ; 2 uses
  %i.wt = add <8 x i32> %i.vl, %vec.phi455        ; 2 uses
  %i.wu = add <8 x i32> %i.wb, %vec.phi456        ; 2 uses
  %i.wv = add <8 x i32> %i.wr, %vec.phi457        ; 2 uses
  %index.next458 = add nuw i64 %index453, 32      ; 2 uses
  %i.ww = icmp eq i64 %index.next458, %n.vec472
  br i1 %i.ww, label %middle.block459, label %vector.body452, !llvm.loop !433

middle.block459:                                  ; preds = %vector.body452
  %bin.rdx460 = add <8 x i32> %i.wt, %i.ws
  %bin.rdx461 = add <8 x i32> %i.wu, %bin.rdx460
  %bin.rdx462 = add <8 x i32> %i.wv, %bin.rdx461
  %i.wx = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx462) ; 2 uses
  %cmp.n463 = icmp eq i64 %n.mod.vf471, 0
  br i1 %cmp.n463, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUlT_E_ZNS4_22applyToSelectedNoThrowISR_EEvSB_SQ_EUlSQ_E_EEvSB_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.i.i.preheader

vec.epilog.vector.body473:                        ; preds = %vector.main.loop.iter.check447, %vec.epilog.vector.body473
  %index474 = phi i64 [ %index.next476, %vec.epilog.vector.body473 ], [ 0, %vector.main.loop.iter.check447 ] ; 2 uses
  %vec.phi475 = phi <8 x i32> [ %i.zs, %vec.epilog.vector.body473 ], [ %i.lp, %vector.main.loop.iter.check447 ]
  %i.wy = add i64 %index474, %i.it                ; 8 uses
  %i.wz = shl i64 %i.wy, 32
  %i.xa = shl i64 %i.wy, 32
  %i.xb = shl i64 %i.wy, 32
  %i.xc = shl i64 %i.wy, 32
  %i.xd = shl i64 %i.wy, 32
  %i.xe = shl i64 %i.wy, 32
  %i.xf = shl i64 %i.wy, 32
  %i.xg = shl i64 %i.wy, 32
  %i.xh = ashr exact i64 %i.wz, 30
  %i.xi = ashr exact i64 %i.xa, 30
  %i.xj = ashr exact i64 %i.xb, 30
  %i.xk = ashr exact i64 %i.xc, 30
  %i.xl = ashr exact i64 %i.xd, 30
  %i.xm = ashr exact i64 %i.xe, 30
  %i.xn = ashr exact i64 %i.xf, 30
  %i.xo = ashr exact i64 %i.xg, 30
  %i.xp = getelementptr inbounds i8, ptr %i.la, i64 %i.xh
  %i.xq = getelementptr i8, ptr %i.la, i64 %i.xi
  %i.xr = getelementptr i8, ptr %i.xq, i64 4
  %i.xs = getelementptr i8, ptr %i.la, i64 %i.xj
  %i.xt = getelementptr i8, ptr %i.xs, i64 8
  %i.xu = getelementptr i8, ptr %i.la, i64 %i.xk
  %i.xv = getelementptr i8, ptr %i.xu, i64 12
  %i.xw = getelementptr i8, ptr %i.la, i64 %i.xl
  %i.xx = getelementptr i8, ptr %i.xw, i64 16
  %i.xy = getelementptr i8, ptr %i.la, i64 %i.xm
  %i.xz = getelementptr i8, ptr %i.xy, i64 20
  %i.ya = getelementptr i8, ptr %i.la, i64 %i.xn
  %i.yb = getelementptr i8, ptr %i.ya, i64 24
  %i.yc = getelementptr i8, ptr %i.la, i64 %i.xo
  %i.yd = getelementptr i8, ptr %i.yc, i64 28
  %i.ye = load i32, ptr %i.xp, align 4, !tbaa !3
  %i.yf = load i32, ptr %i.xr, align 4, !tbaa !3
  %i.yg = load i32, ptr %i.xt, align 4, !tbaa !3
  %i.yh = load i32, ptr %i.xv, align 4, !tbaa !3
  %i.yi = load i32, ptr %i.xx, align 4, !tbaa !3
  %i.yj = load i32, ptr %i.xz, align 4, !tbaa !3
  %i.yk = load i32, ptr %i.yb, align 4, !tbaa !3
  %i.yl = load i32, ptr %i.yd, align 4, !tbaa !3
  %i.ym = sext i32 %i.ye to i64
  %i.yn = sext i32 %i.yf to i64
  %i.yo = sext i32 %i.yg to i64
  %i.yp = sext i32 %i.yh to i64
  %i.yq = sext i32 %i.yi to i64
  %i.yr = sext i32 %i.yj to i64
  %i.ys = sext i32 %i.yk to i64
  %i.yt = sext i32 %i.yl to i64
  %i.yu = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.ym
  %i.yv = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.yn
  %i.yw = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.yo
  %i.yx = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.yp
  %i.yy = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.yq
  %i.yz = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.yr
  %i.za = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.ys
  %i.zb = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.yt
  %i.zc = load i32, ptr %i.yu, align 4, !tbaa !3
  %i.zd = load i32, ptr %i.yv, align 4, !tbaa !3
  %i.ze = load i32, ptr %i.yw, align 4, !tbaa !3
  %i.zf = load i32, ptr %i.yx, align 4, !tbaa !3
  %i.zg = load i32, ptr %i.yy, align 4, !tbaa !3
  %i.zh = load i32, ptr %i.yz, align 4, !tbaa !3
  %i.zi = load i32, ptr %i.za, align 4, !tbaa !3
  %i.zj = load i32, ptr %i.zb, align 4, !tbaa !3
  %i.zk = insertelement <8 x i32> poison, i32 %i.zc, i64 0
  %i.zl = insertelement <8 x i32> %i.zk, i32 %i.zd, i64 1
  %i.zm = insertelement <8 x i32> %i.zl, i32 %i.ze, i64 2
  %i.zn = insertelement <8 x i32> %i.zm, i32 %i.zf, i64 3
  %i.zo = insertelement <8 x i32> %i.zn, i32 %i.zg, i64 4
  %i.zp = insertelement <8 x i32> %i.zo, i32 %i.zh, i64 5
  %i.zq = insertelement <8 x i32> %i.zp, i32 %i.zi, i64 6
  %i.zr = insertelement <8 x i32> %i.zq, i32 %i.zj, i64 7
  %i.zs = add <8 x i32> %i.zr, %vec.phi475        ; 2 uses
  %index.next476 = add nuw i64 %index474, 8       ; 2 uses
  %i.zt = icmp eq i64 %index.next476, %n.vec472
  br i1 %i.zt, label %vec.epilog.middle.block477, label %vec.epilog.vector.body473, !llvm.loop !434

vec.epilog.middle.block477:                       ; preds = %vec.epilog.vector.body473
  %i.zu = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.zs) ; 2 uses
  %cmp.n478 = icmp eq i64 %n.mod.vf471, 0
  br i1 %cmp.n478, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUlT_E_ZNS4_22applyToSelectedNoThrowISR_EEvSB_SQ_EUlSQ_E_EEvSB_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.i.i.preheader

_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.i.i.preheader: ; preds = %middle.block459, %vector.scevcheck440, %iter.check466, %vec.epilog.middle.block477
  %.ph633 = phi i32 [ %i.wx, %middle.block459 ], [ %.1, %vector.scevcheck440 ], [ %.1, %iter.check466 ], [ %i.zu, %vec.epilog.middle.block477 ]
  %.032.i.i.i.i.i.i.i.ph = phi i64 [ %i.lo, %middle.block459 ], [ %i.it, %vector.scevcheck440 ], [ %i.it, %iter.check466 ], [ %i.lo, %vec.epilog.middle.block477 ]
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.i.i
  %i.zv = phi i32 [ %i.aac, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.i.i ], [ %.ph633, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.i.i.preheader ]
  %.032.i.i.i.i.i.i.i = phi i64 [ %i.aad, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.i.i ], [ %.032.i.i.i.i.i.i.i.ph, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %sext.i.i.i.i.i.i.i.i = shl i64 %.032.i.i.i.i.i.i.i, 32
  %i.zw = ashr exact i64 %sext.i.i.i.i.i.i.i.i, 30
  %i.zx = getelementptr inbounds i8, ptr %i.la, i64 %i.zw
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !3
  %i.zz = sext i32 %i.zy to i64
  %i.aaa = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.zz
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !3
  %i.aac = add nsw i32 %i.aab, %i.zv              ; 2 uses
  %i.aad = add nuw i64 %.032.i.i.i.i.i.i.i, 1     ; 2 uses
  %i.aae = icmp ult i64 %i.aad, %i.iv
  br i1 %i.aae, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUlT_E_ZNS4_22applyToSelectedNoThrowISR_EEvSB_SQ_EUlSQ_E_EEvSB_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i, !llvm.loop !435

_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i52.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i52.i.i.i.i.i.i, %.lr.ph.split.split.i.i.i.i.i.i.i
  %i.aaf = phi i32 [ %.1, %.lr.ph.split.split.i.i.i.i.i.i.i ], [ %i.aam, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i52.i.i.i.i.i.i ]
  %.01526.i.i.i.i.i.i.i = phi i64 [ %i.hv, %.lr.ph.split.split.i.i.i.i.i.i.i ], [ %i.aao, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i52.i.i.i.i.i.i ] ; 3 uses
  %i.aag = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01526.i.i.i.i.i.i.i, i1 true)
  %50 = trunc nuw nsw i64 %i.aag to i32
  %51 = or disjoint i32 %i.hw, %50
  %52 = sext i32 %51 to i64
  %i.aah = getelementptr inbounds [4 x i8], ptr %i.ir, i64 %52
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !3
  %i.aaj = sext i32 %i.aai to i64
  %i.aak = getelementptr inbounds [4 x i8], ptr %i.hz, i64 %i.aaj
  %i.aal = load i32, ptr %i.aak, align 4, !tbaa !3
  %i.aam = add nsw i32 %i.aal, %i.aaf             ; 2 uses
  %i.aan = add i64 %.01526.i.i.i.i.i.i.i, -1
  %i.aao = and i64 %i.aan, %.01526.i.i.i.i.i.i.i  ; 2 uses
  %.not.i53.i.i.i.i.i.i = icmp eq i64 %i.aao, 0
  br i1 %.not.i53.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUlT_E_ZNS4_22applyToSelectedNoThrowISR_EEvSB_SQ_EUlSQ_E_EEvSB_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i52.i.i.i.i.i.i, !llvm.loop !429

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUlT_E_ZNS4_22applyToSelectedNoThrowISR_EEvSB_SQ_EUlSQ_E_EEvSB_SQ_T0_EUlSQ_E_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i52.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us28.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i54.i.i.i.i.i.i, %middle.block459, %vec.epilog.middle.block477, %middle.block, %vec.epilog.middle.block, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us35.i.i.i.i.i.i.i.preheader, %bb.ab, %.lr.ph.i.i.i.i.i.i
  %.2 = phi i32 [ %.1, %.lr.ph.i.i.i.i.i.i ], [ %i.ie, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i54.i.i.i.i.i.i ], [ %i.kz, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us35.i.i.i.i.i.i.i.preheader ], [ %.1, %bb.ab ], [ %i.io, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us28.i.i.i.i.i.i.i ], [ %i.aam, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i52.i.i.i.i.i.i ], [ %i.km, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.us.i.i.i.i.i.i.i ], [ %i.kh, %vec.epilog.middle.block ], [ %i.ka, %middle.block ], [ %i.zu, %vec.epilog.middle.block477 ], [ %i.wx, %middle.block459 ], [ %i.aac, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.aap = add nsw i32 %i.hr, 64                  ; 2 uses
  %.not33.i.i.i.i.i.i = icmp sgt i32 %i.aap, %i.di
  br i1 %.not33.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !436

bb.ac:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.aaq = ashr i32 %i.de, 6
  %i.aar = and i32 %i.de, 63
  %i.aas = zext nneg i32 %i.aar to i64
  %notmask.i55.i.i.i.i.i.i = shl nsw i64 -1, %i.aas
  %i.aat = xor i64 %notmask.i55.i.i.i.i.i.i, -1
  %i.aau = sext i32 %i.aaq to i64
  %i.aav = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.aau
  %i.aaw = load i64, ptr %i.aav, align 8, !tbaa !9
  %i.aax = and i64 %i.aaw, %i.aat                 ; 4 uses
  %.not.i56.i.i.i.i.i.i = icmp eq i64 %i.aax, 0
  br i1 %.not.i56.i.i.i.i.i.i, label %.loopexit190, label %.preheader.i57.i.i.i.i.i.i

.preheader.i57.i.i.i.i.i.i:                       ; preds = %bb.ac
  %i.aay = load ptr, ptr %i.b, align 8, !tbaa !412
  %i.aaz = load ptr, ptr %i.a, align 8, !tbaa !395 ; 4 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 58
  %i.abb = load i8, ptr %i.aba, align 2, !tbaa !421, !range !58, !noundef !59
  %i.abc = trunc nuw i8 %i.abb to i1
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aay, i64 120
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !422 ; 3 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aaz, i64 8
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aaz, i64 64
  br i1 %i.abc, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i67.i.i.i.i.i.i, label %.preheader.split.i59.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i67.i.i.i.i.i.i: ; preds = %.preheader.i57.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i67.i.i.i.i.i.i
  %.017.us.i68.i.i.i.i.i.i = phi i64 [ %i.abn, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i67.i.i.i.i.i.i ], [ %i.aax, %.preheader.i57.i.i.i.i.i.i ] ; 3 uses
  %i.abh = phi i32 [ %i.abl, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i67.i.i.i.i.i.i ], [ %.3, %.preheader.i57.i.i.i.i.i.i ]
  %i.abi = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.017.us.i68.i.i.i.i.i.i, i1 true)
  %53 = trunc nuw nsw i64 %i.abi to i32
  %54 = or disjoint i32 %i.di, %53
  %55 = sext i32 %54 to i64
  %i.abj = getelementptr inbounds [4 x i8], ptr %i.abe, i64 %55
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !3
  %i.abl = add nsw i32 %i.abk, %i.abh             ; 2 uses
  %i.abm = add nsw i64 %.017.us.i68.i.i.i.i.i.i, -1
  %i.abn = and i64 %i.abm, %.017.us.i68.i.i.i.i.i.i ; 2 uses
  %.not10.us.i69.i.i.i.i.i.i = icmp eq i64 %i.abn, 0
  br i1 %.not10.us.i69.i.i.i.i.i.i, label %.loopexit190, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i67.i.i.i.i.i.i, !llvm.loop !428

.preheader.split.i59.i.i.i.i.i.i:                 ; preds = %.preheader.i57.i.i.i.i.i.i
  %i.abo = getelementptr inbounds nuw i8, ptr %i.aaz, i64 59
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !424, !range !58, !noundef !59
  %i.abq = trunc nuw i8 %i.abp to i1
  br i1 %i.abq, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i64.i.i.i.i.i.i.preheader, label %.preheader.split.split.i60.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i64.i.i.i.i.i.i.preheader: ; preds = %.preheader.split.i59.i.i.i.i.i.i
  %i.abr = load i32, ptr %i.abg, align 8, !tbaa !425
  %i.abs = sext i32 %i.abr to i64
  %i.abt = getelementptr inbounds [4 x i8], ptr %i.abe, i64 %i.abs
  %i.abu = load i32, ptr %i.abt, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i64.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i64.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i64.i.i.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i64.i.i.i.i.i.i
  %.017.us18.i65.i.i.i.i.i.i = phi i64 [ %i.aby, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i64.i.i.i.i.i.i ], [ %i.aax, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i64.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.abv = phi i32 [ %i.abw, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i64.i.i.i.i.i.i ], [ %.3, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i64.i.i.i.i.i.i.preheader ]
  %i.abw = add nsw i32 %i.abu, %i.abv             ; 2 uses
  %i.abx = add nsw i64 %.017.us18.i65.i.i.i.i.i.i, -1
  %i.aby = and i64 %i.abx, %.017.us18.i65.i.i.i.i.i.i ; 2 uses
  %.not10.us21.i66.i.i.i.i.i.i = icmp eq i64 %i.aby, 0
  br i1 %.not10.us21.i66.i.i.i.i.i.i, label %.loopexit190, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i64.i.i.i.i.i.i, !llvm.loop !428

.preheader.split.split.i60.i.i.i.i.i.i:           ; preds = %.preheader.split.i59.i.i.i.i.i.i
  %i.abz = load ptr, ptr %i.abf, align 8, !tbaa !426
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i61.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i61.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i61.i.i.i.i.i.i, %.preheader.split.split.i60.i.i.i.i.i.i
  %.017.i62.i.i.i.i.i.i = phi i64 [ %i.aax, %.preheader.split.split.i60.i.i.i.i.i.i ], [ %i.acj, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i61.i.i.i.i.i.i ] ; 3 uses
  %i.aca = phi i32 [ %.3, %.preheader.split.split.i60.i.i.i.i.i.i ], [ %i.ach, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i61.i.i.i.i.i.i ]
  %i.acb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.017.i62.i.i.i.i.i.i, i1 true)
  %56 = trunc nuw nsw i64 %i.acb to i32
  %57 = or disjoint i32 %i.di, %56
  %58 = sext i32 %57 to i64
  %i.acc = getelementptr inbounds [4 x i8], ptr %i.abz, i64 %58
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !3
  %i.ace = sext i32 %i.acd to i64
  %i.acf = getelementptr inbounds [4 x i8], ptr %i.abe, i64 %i.ace
  %i.acg = load i32, ptr %i.acf, align 4, !tbaa !3
  %i.ach = add nsw i32 %i.acg, %i.aca             ; 2 uses
  %i.aci = add nsw i64 %.017.i62.i.i.i.i.i.i, -1
  %i.acj = and i64 %i.aci, %.017.i62.i.i.i.i.i.i  ; 2 uses
  %.not10.i63.i.i.i.i.i.i = icmp eq i64 %i.acj, 0
  br i1 %.not10.i63.i.i.i.i.i.i, label %.loopexit190, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i61.i.i.i.i.i.i, !llvm.loop !428

.loopexit190.loopexit.unr-lcssa:                  ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit190, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit190.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %.4.epil.init = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.cz, %.loopexit190.loopexit.unr-lcssa ]
  %indvars.iv.i.i.i.epil.init = phi i64 [ %i.ca, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %.loopexit190.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod656 = trunc i64 %i.cb to i1
  call void @llvm.assume(i1 %lcmp.mod656)
  %i.ack = trunc nsw i64 %indvars.iv.i.i.i.epil.init to i32
  br i1 %i.bu, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.epil, label %bb.ad

bb.ad:                                            ; preds = %.epil.preheader
  %i.acl = load i8, ptr %i.bv, align 1, !tbaa !424, !range !58, !noundef !59
  %i.acm = trunc nuw i8 %i.acl to i1
  br i1 %i.acm, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.acn = load ptr, ptr %i.bw, align 8, !tbaa !426
  %i.aco = getelementptr inbounds [4 x i8], ptr %i.acn, i64 %indvars.iv.i.i.i.epil.init
  %i.acp = load i32, ptr %i.aco, align 4, !tbaa !3
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.epil

bb.af:                                            ; preds = %bb.ad
  %i.acq = load i32, ptr %i.bx, align 8, !tbaa !425
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.epil

_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.epil: ; preds = %bb.af, %bb.ae, %.epil.preheader
  %.0.i.i.i.i.i.epil = phi i32 [ %i.acp, %bb.ae ], [ %i.acq, %bb.af ], [ %i.ack, %.epil.preheader ]
  %i.acr = sext i32 %.0.i.i.i.i.i.epil to i64
  %i.acs = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.acr
  %i.act = load i32, ptr %i.acs, align 4, !tbaa !3
  %i.acu = add nsw i32 %i.act, %.4.epil.init
  br label %.loopexit190

.loopexit190:                                     ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i61.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i64.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i67.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.epil, %.loopexit190.loopexit.unr-lcssa, %bb.o, %bb.w, %bb.y, %._crit_edge.i.i.i.i.i.i, %bb.ac
  %.5 = phi i32 [ 0, %bb.w ], [ 0, %bb.o ], [ 0, %bb.y ], [ %i.fi, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i ], [ %i.abl, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i67.i.i.i.i.i.i ], [ %i.abw, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i64.i.i.i.i.i.i ], [ %.3, %._crit_edge.i.i.i.i.i.i ], [ %.3, %bb.ac ], [ %i.acu, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.epil ], [ %i.em, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us.i.i.i.i.i.i.i ], [ %i.ex, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.us19.i.i.i.i.i.i.i ], [ %i.cz, %.loopexit190.loopexit.unr-lcssa ], [ %i.ach, %_ZZNK8facebook5velox9functions12_GLOBAL__N_120ArrayShuffleFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i61.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  %i.acv = load ptr, ptr %4, align 8, !tbaa !437
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !452
  %i.acx = sext i32 %.5 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28, !noalias !473
  store i32 0, ptr %21, align 4, !tbaa !32, !noalias !473
  %i.acy = getelementptr inbounds nuw i8, ptr %21, i64 4
  store i8 1, ptr %i.acy, align 4, !tbaa !476, !noalias !473
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %26, i64 noundef %i.acx, ptr noundef %i.acw, ptr noundef nonnull align 4 dereferenceable(8) %21, i1 noundef zeroext false)
          to label %bb.ag unwind label %bb.fq

bb.ag:                                            ; preds = %.loopexit190
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28, !noalias !473
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  %i.acz = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.ada = load i32, ptr %i.acz, align 8, !tbaa !417
  %i.adb = load ptr, ptr %4, align 8, !tbaa !437
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !452
  %i.add = sext i32 %i.ada to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28, !noalias !477
  store i32 0, ptr %20, align 4, !tbaa !32, !noalias !477
  %i.ade = getelementptr inbounds nuw i8, ptr %20, i64 4
  store i8 1, ptr %i.ade, align 4, !tbaa !476, !noalias !477
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %27, i64 noundef %i.add, ptr noundef %i.adc, ptr noundef nonnull align 4 dereferenceable(8) %20, i1 noundef zeroext false)
          to label %bb.ah unwind label %bb.fr

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28, !noalias !477
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28
  %i.adf = load i32, ptr %i.acz, align 8, !tbaa !417
  %i.adg = load ptr, ptr %4, align 8, !tbaa !437
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !452
  %i.adi = sext i32 %i.adf to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28, !noalias !480
  store i32 0, ptr %19, align 4, !tbaa !32, !noalias !480
  %i.adj = getelementptr inbounds nuw i8, ptr %19, i64 4
  store i8 1, ptr %i.adj, align 4, !tbaa !476, !noalias !480
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %28, i64 noundef %i.adi, ptr noundef %i.adh, ptr noundef nonnull align 4 dereferenceable(8) %19, i1 noundef zeroext false)
          to label %bb.ai unwind label %bb.fs

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28, !noalias !480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.adk = load ptr, ptr %26, align 8, !tbaa !483 ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 44
  %i.adm = load i8, ptr %i.adl, align 4, !tbaa !484
  %i.adn = and i8 %i.adm, 2
  %.not.i = icmp eq i8 %i.adn, 0
  br i1 %.not.i, label %bb.ak, label %bb.aj, !prof !54

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #31
          to label %.noexc unwind label %bb.ft

.noexc:                                           ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adk, i64 16
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !489
  store ptr %i.adp, ptr %i.c, align 8, !tbaa !490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.adq = load ptr, ptr %27, align 8, !tbaa !483 ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 44
  %i.ads = load i8, ptr %i.adr, align 4, !tbaa !484
  %i.adt = and i8 %i.ads, 2
  %.not.i49 = icmp eq i8 %i.adt, 0
  br i1 %.not.i49, label %bb.am, label %bb.al, !prof !54

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #31
          to label %.noexc50 unwind label %bb.fu

.noexc50:                                         ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adq, i64 16
  %i.adv = load ptr, ptr %i.adu, align 8, !tbaa !489
  store ptr %i.adv, ptr %i.d, align 8, !tbaa !490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  %i.adw = load ptr, ptr %28, align 8, !tbaa !483 ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 44
  %i.ady = load i8, ptr %i.adx, align 4, !tbaa !484
  %i.adz = and i8 %i.ady, 2
  %.not.i52 = icmp eq i8 %i.adz, 0
  br i1 %.not.i52, label %bb.ao, label %bb.an, !prof !54

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #31
          to label %.noexc53 unwind label %bb.fv

.noexc53:                                         ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adw, i64 16
  %i.aeb = load ptr, ptr %i.aea, align 8, !tbaa !489
  store ptr %i.aeb, ptr %i.e, align 8, !tbaa !490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  store i32 0, ptr %i.f, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  store ptr %i.a, ptr %18, align 8
  %.sroa.4166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  store ptr %i.b, ptr %.sroa.4166.0..sroa_idx, align 8
  %.sroa.5167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.c, ptr %.sroa.5167.0..sroa_idx, align 8
  %.sroa.6168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 7 uses
  store ptr %i.f, ptr %.sroa.6168.0..sroa_idx, align 8
  %.sroa.7169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 4 uses
  store ptr %0, ptr %.sroa.7169.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 4 uses
  store ptr %i.e, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 4 uses
  store ptr %i.d, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  %i.aec = load i8, ptr %i.aj, align 1, !tbaa !414, !range !58, !noundef !59
  %i.aed = trunc nuw i8 %i.aec to i1
  br i1 %i.aed, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i87, label %bb.ap

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i87: ; preds = %bb.ao
  %.0.in.pre.i.i.i.i88 = load i8, ptr %i.ai, align 4, !tbaa !7, !range !58
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i57

bb.ap:                                            ; preds = %bb.ao
  %i.aee = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aef = load i32, ptr %i.aee, align 4, !tbaa !415
  %i.aeg = icmp eq i32 %i.aef, 0
  br i1 %i.aeg, label %bb.aq, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i55

bb.aq:                                            ; preds = %bb.ap
  %i.aeh = load i32, ptr %i.acz, align 8, !tbaa !417 ; 6 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aej = load i32, ptr %i.aei, align 8, !tbaa !418
  %i.aek = icmp eq i32 %i.aeh, %i.aej
  br i1 %i.aek, label %bb.ar, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i55

bb.ar:                                            ; preds = %bb.aq
  %i.ael = load ptr, ptr %1, align 8, !tbaa !419  ; 2 uses
  %.not.i.i.i.i.i79 = icmp sgt i32 %i.aeh, 0
  br i1 %.not.i.i.i.i.i79, label %bb.as, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i55

bb.as:                                            ; preds = %bb.ar
  %i.aem = and i32 %i.aeh, 2147483584             ; 3 uses
  %i.aen = zext nneg i32 %i.aem to i64
  %.not37.i.i.not.i.i.i.i81417.not = icmp eq i32 %i.aem, 0
  br i1 %.not37.i.i.not.i.i.i.i81417.not, label %.critedge.i.i.i.i.i.i82, label %.lr.ph419

bb.at:                                            ; preds = %.lr.ph419
  %indvars.iv.next.i.i.i.i86 = add nuw nsw i64 %indvars.iv.i.i.i.i80418, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i81 = icmp samesign ult i64 %indvars.iv.next.i.i.i.i86, %i.aen
  br i1 %.not37.i.i.not.i.i.i.i81, label %.lr.ph419, label %.critedge.i.i.i.i.i.i82, !llvm.loop !420

end_hunk_1
