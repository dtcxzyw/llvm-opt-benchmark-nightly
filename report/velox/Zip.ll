inline.NumInlined: 2341
inline.NumDeleted: 1232
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.q ], [ 256, %bb.p ], [ 257, %bb.r ], [ 257, %.critedge.i.i.i.i ], [ %i.di, %bb.u ], [ 256, %.lr.ph930 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.ci, align 4
  %i.dj = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.dj, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !305 ; 8 uses
  br i1 %.0.i.i, label %bb.v, label %bb.z

bb.v:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.dm = load i32, ptr %i.by, align 8, !tbaa !287 ; 2 uses
  %i.dn = icmp slt i32 %i.dl, %i.dm
  br i1 %i.dn, label %.lr.ph.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit

.lr.ph.i:                                         ; preds = %bb.v
  %i.do = sext i32 %i.dl to i64
  %wide.trip.count.i = sext i32 %i.dm to i64
  %i.dp = load ptr, ptr %13, align 8              ; 4 uses
  %i.dq = load ptr, ptr %15, align 8              ; 4 uses
  %i.dr = load ptr, ptr %14, align 8              ; 4 uses
  br label %bb.w

bb.w:                                             ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i, %.lr.ph.i
  %.19544 = phi i8 [ 1, %.lr.ph.i ], [ %.20545, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i ] ; 3 uses
  %.19 = phi i1 [ true, %.lr.ph.i ], [ %.20, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ %i.do, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i ] ; 6 uses
  %i.ds = load i32, ptr %i.a, align 4, !tbaa !3   ; 4 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %bb.x, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i

bb.x:                                             ; preds = %bb.w
  %i.du = load ptr, ptr %i.dp, align 8, !tbaa !209
  %i.dv = load ptr, ptr %i.dq, align 8, !tbaa !209
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %indvars.iv.i
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3
  %i.dy = sext i32 %i.dx to i64                   ; 2 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3
  %.sroa.speculated.peel.i.i.i = call i32 @llvm.smax.i32(i32 %i.ea, i32 0) ; 3 uses
  %exitcond.peel.not.i.i.i = icmp eq i32 %i.ds, 1
  br i1 %exitcond.peel.not.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i, label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %bb.x
  %wide.trip.count.i.i.i = zext nneg i32 %i.ds to i64
  %i.eb = load ptr, ptr %i.dr, align 8, !tbaa !209
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.dy
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !3  ; 2 uses
  %i.ee = icmp ne i8 %.19544, 0                   ; 2 uses
  %i.ef = add nsw i64 %wide.trip.count.i.i.i, -1  ; 3 uses
  %xtraiter1108 = and i64 %i.ef, 1
  %i.eg = icmp eq i32 %i.ds, 2
  br i1 %i.eg, label %.epil.preheader1107, label %.peel.next.i.i.i.new

.peel.next.i.i.i.new:                             ; preds = %.peel.next.i.i.i
  %unroll_iter1114 = and i64 %i.ef, -2
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.peel.next.i.i.i.new
  %.21546 = phi i1 [ %i.ee, %.peel.next.i.i.i.new ], [ %i.fh, %bb.y ]
  %.21 = phi i1 [ %.19, %.peel.next.i.i.i.new ], [ %i.fo, %bb.y ]
  %indvars.iv.i.i.i = phi i64 [ 1, %.peel.next.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.y ] ; 5 uses
  %.01422.i.i.i = phi i32 [ %i.ed, %.peel.next.i.i.i.new ], [ %i.fl, %bb.y ]
  %.02021.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i, %.peel.next.i.i.i.new ], [ %.sroa.speculated.i.i.i.1, %bb.y ] ; 2 uses
  %niter1115 = phi i64 [ 0, %.peel.next.i.i.i.new ], [ %niter1115.next.1, %bb.y ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.i.i.i
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !209
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.i.i.i
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !209
  %i.el = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %indvars.iv.i
  %i.em = load i32, ptr %i.el, align 4, !tbaa !3
  %i.en = sext i32 %i.em to i64                   ; 2 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !3  ; 2 uses
  %i.eq = icmp eq i32 %.02021.i.i.i, %i.ep
  %i.er = and i1 %.21546, %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv.i.i.i
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !209
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.en
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !3  ; 2 uses
  %i.ew = icmp eq i32 %.01422.i.i.i, %i.ev
  %.sroa.speculated.i.i.i = call i32 @llvm.smax.i32(i32 %.02021.i.i.i, i32 %i.ep) ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.next.i.i.i
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !209
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.next.i.i.i
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !209
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %indvars.iv.i
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !3
  %i.fd = sext i32 %i.fc to i64                   ; 2 uses
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !3  ; 2 uses
  %i.fg = icmp eq i32 %.sroa.speculated.i.i.i, %i.ff
  %i.fh = and i1 %i.er, %i.fg                     ; 3 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv.next.i.i.i
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !209
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.fd
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3  ; 3 uses
  %i.fm = icmp eq i32 %i.ev, %i.fl
  %i.fn = select i1 %i.fm, i1 %i.ew, i1 false
  %i.fo = select i1 %i.fn, i1 %.21, i1 false      ; 3 uses
  %.sroa.speculated.i.i.i.1 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i.i.i, i32 %i.ff) ; 3 uses
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter1115.next.1 = add i64 %niter1115, 2       ; 2 uses
  %niter1115.ncmp.1 = icmp eq i64 %niter1115.next.1, %unroll_iter1114
  br i1 %niter1115.ncmp.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa, label %bb.y, !llvm.loop !309

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa: ; preds = %bb.y
  %lcmp.mod1109.not = icmp eq i64 %xtraiter1108, 0
  br i1 %lcmp.mod1109.not, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit, label %.epil.preheader1107

.epil.preheader1107:                              ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa, %.peel.next.i.i.i
  %.21546.epil.init = phi i1 [ %i.ee, %.peel.next.i.i.i ], [ %i.fh, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ]
  %.21.epil.init = phi i1 [ %.19, %.peel.next.i.i.i ], [ %i.fo, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ]
  %indvars.iv.i.i.i.epil.init = phi i64 [ 1, %.peel.next.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ] ; 3 uses
  %.01422.i.i.i.epil.init = phi i32 [ %i.ed, %.peel.next.i.i.i ], [ %i.fl, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ]
  %.02021.i.i.i.epil.init = phi i32 [ %.sroa.speculated.peel.i.i.i, %.peel.next.i.i.i ], [ %.sroa.speculated.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1113 = trunc i64 %i.ef to i1
  call void @llvm.assume(i1 %lcmp.mod1113)
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.i.i.i.epil.init
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !209
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.i.i.i.epil.init
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !209
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %indvars.iv.i
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !3
  %i.fv = sext i32 %i.fu to i64                   ; 2 uses
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !3  ; 2 uses
  %i.fy = icmp eq i32 %.02021.i.i.i.epil.init, %i.fx
  %i.fz = and i1 %.21546.epil.init, %i.fy
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv.i.i.i.epil.init
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !209
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.fv
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !3
  %i.ge = icmp eq i32 %.01422.i.i.i.epil.init, %i.gd
  %i.gf = select i1 %i.ge, i1 %.21.epil.init, i1 false
  %.sroa.speculated.i.i.i.epil = call i32 @llvm.smax.i32(i32 %.02021.i.i.i.epil.init, i32 %i.fx)
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa, %.epil.preheader1107
  %.lcssa1053 = phi i1 [ %i.fh, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ], [ %i.fz, %.epil.preheader1107 ]
  %.lcssa1052 = phi i1 [ %i.fo, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ], [ %i.gf, %.epil.preheader1107 ]
  %.sroa.speculated.i.i.i.lcssa = phi i32 [ %.sroa.speculated.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit.unr-lcssa ], [ %.sroa.speculated.i.i.i.epil, %.epil.preheader1107 ]
  %i.gg = zext i1 %.lcssa1053 to i8
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit, %bb.x, %bb.w
  %.20545 = phi i8 [ %.19544, %bb.x ], [ %.19544, %bb.w ], [ %i.gg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit ] ; 2 uses
  %.20 = phi i1 [ %.19, %bb.x ], [ %.19, %bb.w ], [ %.lcssa1052, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit ] ; 2 uses
  %.020.lcssa.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i, %bb.x ], [ 0, %bb.w ], [ %.sroa.speculated.i.i.i.lcssa, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.loopexit ] ; 2 uses
  %i.gh = load i32, ptr %i.b, align 4, !tbaa !3
  %i.gi = add nsw i32 %i.gh, %.020.lcssa.i.i.i
  store i32 %i.gi, ptr %i.b, align 4, !tbaa !3
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %indvars.iv.i
  store i32 %.020.lcssa.i.i.i, ptr %i.gj, align 4, !tbaa !3
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %bb.w, !llvm.loop !311

bb.z:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.gk = load ptr, ptr %1, align 8, !tbaa !307   ; 4 uses
  %i.gl = load i32, ptr %i.by, align 8, !tbaa !287 ; 7 uses
  %.not.i.i.i.i155 = icmp slt i32 %i.dl, %i.gl
  br i1 %.not.i.i.i.i155, label %bb.aa, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit

bb.aa:                                            ; preds = %bb.z
  %i.gm = add i32 %i.dl, 63                       ; 2 uses
  %i.gn = srem i32 %i.gm, 64
  %i.go = sub nsw i32 %i.gm, %i.gn                ; 6 uses
  %i.gp = and i32 %i.gl, -64                      ; 6 uses
  %i.gq = icmp slt i32 %i.gp, %i.go
  br i1 %i.gq, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.gr = ashr i32 %i.gl, 6
  %i.gs = and i32 %i.gl, 63
  %i.gt = zext nneg i32 %i.gs to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.gt
  %i.gu = xor i64 %notmask.i.i.i.i.i, -1
  %i.gv = sub nsw i32 %i.go, %i.dl                ; 2 uses
  %i.gw = zext nneg i32 %i.gv to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.gw
  %i.gx = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.gy = sub nsw i32 64, %i.gv
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = shl i64 %i.gx, %i.gz
  %i.hb = and i64 %i.ha, %i.gu
  %i.hc = sext i32 %i.gr to i64
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.hc
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !160
  %i.hf = and i64 %i.hb, %i.he                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.hf, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %.preheader.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.preheader:                   ; preds = %bb.ab
  %i.hg = load ptr, ptr %13, align 8              ; 4 uses
  %i.hh = load ptr, ptr %15, align 8              ; 4 uses
  %i.hi = load ptr, ptr %14, align 8              ; 4 uses
  %42 = sext i32 %i.gp to i64
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i
  %.16541 = phi i8 [ %.17542, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i ], [ 1, %.preheader.i.i.i.i.i.preheader ] ; 3 uses
  %.16 = phi i1 [ %.17, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i ], [ true, %.preheader.i.i.i.i.i.preheader ] ; 4 uses
  %.011.i.i.i.i.i = phi i64 [ %i.kd, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i ], [ %i.hf, %.preheader.i.i.i.i.i.preheader ] ; 3 uses
  %i.hj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true)
  %i.hk = load i32, ptr %i.a, align 4, !tbaa !3   ; 4 uses
  %i.hl = icmp sgt i32 %i.hk, 0
  %43 = or disjoint i64 %i.hj, %42                ; 5 uses
  br i1 %i.hl, label %bb.ac, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i

bb.ac:                                            ; preds = %.preheader.i.i.i.i.i
  %i.hm = load ptr, ptr %i.hg, align 8, !tbaa !209
  %i.hn = load ptr, ptr %i.hh, align 8, !tbaa !209
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %43
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !3
  %i.hq = sext i32 %i.hp to i64                   ; 2 uses
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !3
  %.sroa.speculated.peel.i.i.i.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.hs, i32 0) ; 3 uses
  %exitcond.peel.not.i.i.i.i.i.i.i = icmp eq i32 %i.hk, 1
  br i1 %exitcond.peel.not.i.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i, label %.peel.next.i.i.i.i.i.i.i

.peel.next.i.i.i.i.i.i.i:                         ; preds = %bb.ac
  %wide.trip.count.i.i.i.i.i.i.i = zext nneg i32 %i.hk to i64
  %i.ht = load ptr, ptr %i.hi, align 8, !tbaa !209
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %i.hq
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !3  ; 2 uses
  %i.hw = icmp ne i8 %.16541, 0                   ; 2 uses
  %i.hx = add nsw i64 %wide.trip.count.i.i.i.i.i.i.i, -1 ; 3 uses
  %xtraiter1099 = and i64 %i.hx, 1
  %i.hy = icmp eq i32 %i.hk, 2
  br i1 %i.hy, label %.epil.preheader1098, label %.peel.next.i.i.i.i.i.i.i.new

.peel.next.i.i.i.i.i.i.i.new:                     ; preds = %.peel.next.i.i.i.i.i.i.i
  %unroll_iter1105 = and i64 %i.hx, -2
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.peel.next.i.i.i.i.i.i.i.new
  %.18543 = phi i1 [ %i.hw, %.peel.next.i.i.i.i.i.i.i.new ], [ %i.iz, %bb.ad ]
  %.18 = phi i1 [ %.16, %.peel.next.i.i.i.i.i.i.i.new ], [ %i.jg, %bb.ad ]
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ 1, %.peel.next.i.i.i.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.i.i.i.1, %bb.ad ] ; 5 uses
  %.01422.i.i.i.i.i.i.i = phi i32 [ %i.hv, %.peel.next.i.i.i.i.i.i.i.new ], [ %i.jd, %bb.ad ]
  %.02021.i.i.i.i.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i.i.i.i.i, %.peel.next.i.i.i.i.i.i.i.new ], [ %.sroa.speculated.i.i.i.i.i.i.i.1, %bb.ad ] ; 2 uses
  %niter1106 = phi i64 [ 0, %.peel.next.i.i.i.i.i.i.i.new ], [ %niter1106.next.1, %bb.ad ]
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !209
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !209
  %i.id = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %43
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !3
  %i.if = sext i32 %i.ie to i64                   ; 2 uses
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !3  ; 2 uses
  %i.ii = icmp eq i32 %.02021.i.i.i.i.i.i.i, %i.ih
  %i.ij = and i1 %.18543, %i.ii
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !209
  %i.im = getelementptr inbounds [4 x i8], ptr %i.il, i64 %i.if
  %i.in = load i32, ptr %i.im, align 4, !tbaa !3  ; 2 uses
  %i.io = icmp eq i32 %.01422.i.i.i.i.i.i.i, %i.in
  %.sroa.speculated.i.i.i.i.i.i.i = call i32 @llvm.smax.i32(i32 %.02021.i.i.i.i.i.i.i, i32 %i.ih) ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv.next.i.i.i.i.i.i.i
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !209
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %indvars.iv.next.i.i.i.i.i.i.i
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !209
  %i.it = getelementptr inbounds [4 x i8], ptr %i.is, i64 %43
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !3
  %i.iv = sext i32 %i.iu to i64                   ; 2 uses
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.iv
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !3  ; 2 uses
  %i.iy = icmp eq i32 %.sroa.speculated.i.i.i.i.i.i.i, %i.ix
  %i.iz = and i1 %i.ij, %i.iy                     ; 3 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv.next.i.i.i.i.i.i.i
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !209
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.jb, i64 %i.iv
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !3  ; 3 uses
  %i.je = icmp eq i32 %i.in, %i.jd
  %i.jf = select i1 %i.je, i1 %i.io, i1 false
  %i.jg = select i1 %i.jf, i1 %.18, i1 false      ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.1 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i.i.i.i.i.i.i, i32 %i.ix) ; 3 uses
  %indvars.iv.next.i.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter1106.next.1 = add i64 %niter1106, 2       ; 2 uses
  %niter1106.ncmp.1 = icmp eq i64 %niter1106.next.1, %unroll_iter1105
  br i1 %niter1106.ncmp.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa, label %bb.ad, !llvm.loop !309

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %bb.ad
  %lcmp.mod1100.not = icmp eq i64 %xtraiter1099, 0
  br i1 %lcmp.mod1100.not, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit, label %.epil.preheader1098

.epil.preheader1098:                              ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa, %.peel.next.i.i.i.i.i.i.i
  %.18543.epil.init = phi i1 [ %i.hw, %.peel.next.i.i.i.i.i.i.i ], [ %i.iz, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ]
  %.18.epil.init = phi i1 [ %.16, %.peel.next.i.i.i.i.i.i.i ], [ %i.jg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ]
  %indvars.iv.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.peel.next.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.01422.i.i.i.i.i.i.i.epil.init = phi i32 [ %i.hv, %.peel.next.i.i.i.i.i.i.i ], [ %i.jd, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ]
  %.02021.i.i.i.i.i.i.i.epil.init = phi i32 [ %.sroa.speculated.peel.i.i.i.i.i.i.i, %.peel.next.i.i.i.i.i.i.i ], [ %.sroa.speculated.i.i.i.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1104 = trunc i64 %i.hx to i1
  call void @llvm.assume(i1 %lcmp.mod1104)
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv.i.i.i.i.i.i.i.epil.init
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !209
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %indvars.iv.i.i.i.i.i.i.i.epil.init
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !209
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.jk, i64 %43
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !3
  %i.jn = sext i32 %i.jm to i64                   ; 2 uses
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %i.jn
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !3  ; 2 uses
  %i.jq = icmp eq i32 %.02021.i.i.i.i.i.i.i.epil.init, %i.jp
  %i.jr = and i1 %.18543.epil.init, %i.jq
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv.i.i.i.i.i.i.i.epil.init
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !209
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.jt, i64 %i.jn
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !3
  %i.jw = icmp eq i32 %.01422.i.i.i.i.i.i.i.epil.init, %i.jv
  %i.jx = select i1 %i.jw, i1 %.18.epil.init, i1 false
  %.sroa.speculated.i.i.i.i.i.i.i.epil = call i32 @llvm.smax.i32(i32 %.02021.i.i.i.i.i.i.i.epil.init, i32 %i.jp)
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa, %.epil.preheader1098
  %.lcssa1056 = phi i1 [ %i.iz, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.jr, %.epil.preheader1098 ]
  %.lcssa1055 = phi i1 [ %i.jg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.jx, %.epil.preheader1098 ]
  %.sroa.speculated.i.i.i.i.i.i.i.lcssa = phi i32 [ %.sroa.speculated.i.i.i.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ], [ %.sroa.speculated.i.i.i.i.i.i.i.epil, %.epil.preheader1098 ]
  %i.jy = zext i1 %.lcssa1056 to i8
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit, %bb.ac
  %.17542 = phi i8 [ %.16541, %bb.ac ], [ %i.jy, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit ], [ %.16541, %.preheader.i.i.i.i.i ] ; 2 uses
  %.17 = phi i1 [ %.16, %bb.ac ], [ %.lcssa1055, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit ], [ %.16, %.preheader.i.i.i.i.i ] ; 2 uses
  %.020.lcssa.i.i.i.i.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i.i.i.i.i, %bb.ac ], [ %.sroa.speculated.i.i.i.i.i.i.i.lcssa, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i.loopexit ], [ 0, %.preheader.i.i.i.i.i ] ; 2 uses
  %i.jz = load i32, ptr %i.b, align 4, !tbaa !3
  %i.ka = add nsw i32 %i.jz, %.020.lcssa.i.i.i.i.i.i.i
  store i32 %i.ka, ptr %i.b, align 4, !tbaa !3
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %43
  store i32 %.020.lcssa.i.i.i.i.i.i.i, ptr %i.kb, align 4, !tbaa !3
  %i.kc = add nsw i64 %.011.i.i.i.i.i, -1
  %i.kd = and i64 %i.kc, %.011.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.kd, 0
  br i1 %.not10.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %.preheader.i.i.i.i.i, !llvm.loop !312

bb.ae:                                            ; preds = %bb.aa
  %.not32.i.i.i.i = icmp eq i32 %i.dl, %i.go
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ke = sdiv i32 %i.dl, 64                      ; 2 uses
  %i.kf = sub nsw i32 %i.go, %i.dl                ; 2 uses
  %i.kg = zext nneg i32 %i.kf to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.kg
  %i.kh = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.ki = sub nsw i32 64, %i.kf
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = shl i64 %i.kh, %i.kj
  %i.kl = sext i32 %i.ke to i64
  %i.km = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.kl
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !160
  %i.ko = and i64 %i.kn, %i.kk                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.ko, 0
  br i1 %.not.i36.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i, label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.af
  %i.kp = shl nsw i32 %i.ke, 6
  %i.kq = load ptr, ptr %13, align 8              ; 4 uses
  %i.kr = load ptr, ptr %15, align 8              ; 4 uses
  %i.ks = load ptr, ptr %14, align 8              ; 4 uses
  %44 = sext i32 %i.kp to i64
  br label %bb.ag

bb.ag:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i, %.preheader.i37.i.i.i.i
  %.0525 = phi i8 [ 1, %.preheader.i37.i.i.i.i ], [ %.1526, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i ] ; 3 uses
  %.0524 = phi i1 [ true, %.preheader.i37.i.i.i.i ], [ %.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i ] ; 4 uses
  %.011.i38.i.i.i.i = phi i64 [ %i.ko, %.preheader.i37.i.i.i.i ], [ %i.nn, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i ] ; 3 uses
  %i.kt = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i, i1 true)
  %i.ku = load i32, ptr %i.a, align 4, !tbaa !3   ; 4 uses
  %i.kv = icmp sgt i32 %i.ku, 0
  %45 = or disjoint i64 %i.kt, %44                ; 5 uses
  br i1 %i.kv, label %bb.ah, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.kw = load ptr, ptr %i.kq, align 8, !tbaa !209
  %i.kx = load ptr, ptr %i.kr, align 8, !tbaa !209
  %i.ky = getelementptr inbounds [4 x i8], ptr %i.kx, i64 %45
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !3
  %i.la = sext i32 %i.kz to i64                   ; 2 uses
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.kw, i64 %i.la
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !3
  %.sroa.speculated.peel.i.i.i46.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.lc, i32 0) ; 3 uses
  %exitcond.peel.not.i.i.i47.i.i.i.i = icmp eq i32 %i.ku, 1
  br i1 %exitcond.peel.not.i.i.i47.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i, label %.peel.next.i.i.i48.i.i.i.i

.peel.next.i.i.i48.i.i.i.i:                       ; preds = %bb.ah
  %wide.trip.count.i.i.i45.i.i.i.i = zext nneg i32 %i.ku to i64
  %i.ld = load ptr, ptr %i.ks, align 8, !tbaa !209
  %i.le = getelementptr inbounds [4 x i8], ptr %i.ld, i64 %i.la
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !3  ; 2 uses
  %i.lg = icmp ne i8 %.0525, 0                    ; 2 uses
  %i.lh = add nsw i64 %wide.trip.count.i.i.i45.i.i.i.i, -1 ; 3 uses
  %xtraiter = and i64 %i.lh, 1
  %i.li = icmp eq i32 %i.ku, 2
  br i1 %i.li, label %.epil.preheader, label %.peel.next.i.i.i48.i.i.i.i.new

.peel.next.i.i.i48.i.i.i.i.new:                   ; preds = %.peel.next.i.i.i48.i.i.i.i
  %unroll_iter = and i64 %i.lh, -2
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.peel.next.i.i.i48.i.i.i.i.new
  %.15540 = phi i1 [ %i.lg, %.peel.next.i.i.i48.i.i.i.i.new ], [ %i.mj, %bb.ai ]
  %.15 = phi i1 [ %.0524, %.peel.next.i.i.i48.i.i.i.i.new ], [ %i.mq, %bb.ai ]
  %indvars.iv.i.i.i49.i.i.i.i = phi i64 [ 1, %.peel.next.i.i.i48.i.i.i.i.new ], [ %indvars.iv.next.i.i.i53.i.i.i.i.1, %bb.ai ] ; 5 uses
  %.01422.i.i.i50.i.i.i.i = phi i32 [ %i.lf, %.peel.next.i.i.i48.i.i.i.i.new ], [ %i.mn, %bb.ai ]
  %.02021.i.i.i51.i.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i46.i.i.i.i, %.peel.next.i.i.i48.i.i.i.i.new ], [ %.sroa.speculated.i.i.i52.i.i.i.i.1, %bb.ai ] ; 2 uses
  %niter = phi i64 [ 0, %.peel.next.i.i.i48.i.i.i.i.new ], [ %niter.next.1, %bb.ai ]
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %indvars.iv.i.i.i49.i.i.i.i
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !209
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %indvars.iv.i.i.i49.i.i.i.i
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !209
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.lm, i64 %45
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !3
  %i.lp = sext i32 %i.lo to i64                   ; 2 uses
  %i.lq = getelementptr inbounds [4 x i8], ptr %i.lk, i64 %i.lp
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !3  ; 2 uses
  %i.ls = icmp eq i32 %.02021.i.i.i51.i.i.i.i, %i.lr
  %i.lt = and i1 %.15540, %i.ls
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv.i.i.i49.i.i.i.i
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !209
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.lv, i64 %i.lp
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !3  ; 2 uses
  %i.ly = icmp eq i32 %.01422.i.i.i50.i.i.i.i, %i.lx
  %.sroa.speculated.i.i.i52.i.i.i.i = call i32 @llvm.smax.i32(i32 %.02021.i.i.i51.i.i.i.i, i32 %i.lr) ; 2 uses
  %indvars.iv.next.i.i.i53.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i49.i.i.i.i, 1 ; 3 uses
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %indvars.iv.next.i.i.i53.i.i.i.i
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !209
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %indvars.iv.next.i.i.i53.i.i.i.i
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !209
  %i.md = getelementptr inbounds [4 x i8], ptr %i.mc, i64 %45
  %i.me = load i32, ptr %i.md, align 4, !tbaa !3
  %i.mf = sext i32 %i.me to i64                   ; 2 uses
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.ma, i64 %i.mf
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !3  ; 2 uses
  %i.mi = icmp eq i32 %.sroa.speculated.i.i.i52.i.i.i.i, %i.mh
  %i.mj = and i1 %i.lt, %i.mi                     ; 3 uses
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv.next.i.i.i53.i.i.i.i
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !209
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.ml, i64 %i.mf
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !3  ; 3 uses
  %i.mo = icmp eq i32 %i.lx, %i.mn
  %i.mp = select i1 %i.mo, i1 %i.ly, i1 false
  %i.mq = select i1 %i.mp, i1 %.15, i1 false      ; 3 uses
  %.sroa.speculated.i.i.i52.i.i.i.i.1 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i.i.i52.i.i.i.i, i32 %i.mh) ; 3 uses
  %indvars.iv.next.i.i.i53.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i49.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa, label %bb.ai, !llvm.loop !309

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa: ; preds = %bb.ai
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa, %.peel.next.i.i.i48.i.i.i.i
  %.15540.epil.init = phi i1 [ %i.lg, %.peel.next.i.i.i48.i.i.i.i ], [ %i.mj, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa ]
  %.15.epil.init = phi i1 [ %.0524, %.peel.next.i.i.i48.i.i.i.i ], [ %i.mq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa ]
  %indvars.iv.i.i.i49.i.i.i.i.epil.init = phi i64 [ 1, %.peel.next.i.i.i48.i.i.i.i ], [ %indvars.iv.next.i.i.i53.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.01422.i.i.i50.i.i.i.i.epil.init = phi i32 [ %i.lf, %.peel.next.i.i.i48.i.i.i.i ], [ %i.mn, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa ]
  %.02021.i.i.i51.i.i.i.i.epil.init = phi i32 [ %.sroa.speculated.peel.i.i.i46.i.i.i.i, %.peel.next.i.i.i48.i.i.i.i ], [ %.sroa.speculated.i.i.i52.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1070 = trunc i64 %i.lh to i1
  call void @llvm.assume(i1 %lcmp.mod1070)
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %indvars.iv.i.i.i49.i.i.i.i.epil.init
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !209
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %indvars.iv.i.i.i49.i.i.i.i.epil.init
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !209
  %i.mv = getelementptr inbounds [4 x i8], ptr %i.mu, i64 %45
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !3
  %i.mx = sext i32 %i.mw to i64                   ; 2 uses
  %i.my = getelementptr inbounds [4 x i8], ptr %i.ms, i64 %i.mx
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !3  ; 2 uses
  %i.na = icmp eq i32 %.02021.i.i.i51.i.i.i.i.epil.init, %i.mz
  %i.nb = and i1 %.15540.epil.init, %i.na
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv.i.i.i49.i.i.i.i.epil.init
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !209
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.nd, i64 %i.mx
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !3
  %i.ng = icmp eq i32 %.01422.i.i.i50.i.i.i.i.epil.init, %i.nf
  %i.nh = select i1 %i.ng, i1 %.15.epil.init, i1 false
  %.sroa.speculated.i.i.i52.i.i.i.i.epil = call i32 @llvm.smax.i32(i32 %.02021.i.i.i51.i.i.i.i.epil.init, i32 %i.mz)
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa, %.epil.preheader
  %.lcssa1066 = phi i1 [ %i.mj, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa ], [ %i.nb, %.epil.preheader ]
  %.lcssa1065 = phi i1 [ %i.mq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa ], [ %i.nh, %.epil.preheader ]
  %.sroa.speculated.i.i.i52.i.i.i.i.lcssa = phi i32 [ %.sroa.speculated.i.i.i52.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit.unr-lcssa ], [ %.sroa.speculated.i.i.i52.i.i.i.i.epil, %.epil.preheader ]
  %i.ni = zext i1 %.lcssa1066 to i8
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i: ; preds = %bb.ag, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit, %bb.ah
  %.1526 = phi i8 [ %.0525, %bb.ah ], [ %i.ni, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit ], [ %.0525, %bb.ag ] ; 2 uses
  %.1 = phi i1 [ %.0524, %bb.ah ], [ %.lcssa1065, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit ], [ %.0524, %bb.ag ] ; 2 uses
  %.020.lcssa.i.i.i43.i.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i46.i.i.i.i, %bb.ah ], [ %.sroa.speculated.i.i.i52.i.i.i.i.lcssa, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i.loopexit ], [ 0, %bb.ag ] ; 2 uses
  %i.nj = load i32, ptr %i.b, align 4, !tbaa !3
  %i.nk = add nsw i32 %i.nj, %.020.lcssa.i.i.i43.i.i.i.i
  store i32 %i.nk, ptr %i.b, align 4, !tbaa !3
  %i.nl = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %45
  store i32 %.020.lcssa.i.i.i43.i.i.i.i, ptr %i.nl, align 4, !tbaa !3
  %i.nm = add i64 %.011.i38.i.i.i.i, -1
  %i.nn = and i64 %i.nm, %.011.i38.i.i.i.i        ; 2 uses
  %.not10.i44.i.i.i.i = icmp eq i64 %i.nn, 0
  br i1 %.not10.i44.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i, label %bb.ag, !llvm.loop !312

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i, %bb.af, %bb.ae
  %.2527 = phi i8 [ 1, %bb.ae ], [ 1, %bb.af ], [ %.1526, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i ] ; 2 uses
  %.2 = phi i1 [ true, %bb.ae ], [ true, %bb.af ], [ %.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i41.i.i.i.i ] ; 2 uses
  %i.no = add nsw i32 %i.go, 64                   ; 2 uses
  %.not3395.i.i.i.i = icmp sgt i32 %i.no, %i.gp
  br i1 %.not3395.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i
  %.5530 = phi i8 [ %.2527, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i ], [ %.4529, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ] ; 3 uses
  %.5 = phi i1 [ %.2, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i ], [ %.4, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ] ; 3 uses
  %.not34.i.i.i.i = icmp eq i32 %i.gl, %i.gp
  br i1 %.not34.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %bb.aq

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i
  %.3528 = phi i8 [ %.4529, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ], [ %.2527, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i ] ; 4 uses
  %.3 = phi i1 [ %.4, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ], [ %.2, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i ] ; 4 uses
  %i.np = phi i32 [ %i.tv, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ], [ %i.no, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i ] ; 2 uses
  %.096.i.i.i.i = phi i32 [ %i.np, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ], [ %i.go, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUlimE_clEim.exit55.i.i.i.i ] ; 2 uses
  %i.nq = sdiv i32 %.096.i.i.i.i, 64              ; 3 uses
  %i.nr = sext i32 %i.nq to i64
  %i.ns = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.nr
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !160 ; 2 uses
  switch i64 %i.nt, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.aj
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %i.nu = shl nsw i32 %i.nq, 6
  %i.nv = load ptr, ptr %13, align 8              ; 4 uses
  %i.nw = load ptr, ptr %15, align 8              ; 4 uses
  %i.nx = load ptr, ptr %14, align 8              ; 4 uses
  %46 = sext i32 %i.nu to i64
  br label %bb.an

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ny = shl nsw i32 %i.nq, 6                    ; 2 uses
  %i.nz = add i32 %i.ny, 64
  %i.oa = sext i32 %i.nz to i64
  %.0.off.i.i.i.i = add i32 %.096.i.i.i.i, 127
  %.not33.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not33.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph32.i.i.i.i.i

.lr.ph32.i.i.i.i.i:                               ; preds = %bb.aj
  %i.ob = sext i32 %i.ny to i64
  %i.oc = load ptr, ptr %13, align 8              ; 4 uses
  %i.od = load ptr, ptr %15, align 8              ; 4 uses
  %i.oe = load ptr, ptr %14, align 8              ; 4 uses
  br label %bb.ak

bb.ak:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i, %.lr.ph32.i.i.i.i.i
  %.9534 = phi i8 [ %.3528, %.lr.ph32.i.i.i.i.i ], [ %.10535, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i ] ; 3 uses
  %.9 = phi i1 [ %.3, %.lr.ph32.i.i.i.i.i ], [ %.10, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i ] ; 4 uses
  %.031.i.i.i.i.i = phi i64 [ %i.ob, %.lr.ph32.i.i.i.i.i ], [ %i.qy, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i ] ; 3 uses
  %i.of = load i32, ptr %i.a, align 4, !tbaa !3   ; 4 uses
  %i.og = icmp sgt i32 %i.of, 0
  br i1 %i.og, label %bb.al, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  %sext.i.i.i.i.i.i = shl i64 %.031.i.i.i.i.i, 32
  %i.oh = ashr exact i64 %sext.i.i.i.i.i.i, 32    ; 4 uses
  %i.oi = load ptr, ptr %i.oc, align 8, !tbaa !209
  %i.oj = load ptr, ptr %i.od, align 8, !tbaa !209
  %i.ok = getelementptr inbounds [4 x i8], ptr %i.oj, i64 %i.oh
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !3
  %i.om = sext i32 %i.ol to i64                   ; 2 uses
  %i.on = getelementptr inbounds [4 x i8], ptr %i.oi, i64 %i.om
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !3
  %.sroa.speculated.peel.i.i.i58.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.oo, i32 0) ; 3 uses
  %exitcond.peel.not.i.i.i59.i.i.i.i = icmp eq i32 %i.of, 1
  br i1 %exitcond.peel.not.i.i.i59.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i, label %.peel.next.i.i.i60.i.i.i.i

.peel.next.i.i.i60.i.i.i.i:                       ; preds = %bb.al
  %wide.trip.count.i.i.i57.i.i.i.i = zext nneg i32 %i.of to i64
  %i.op = load ptr, ptr %i.oe, align 8, !tbaa !209
  %i.oq = getelementptr inbounds [4 x i8], ptr %i.op, i64 %i.om
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !3  ; 2 uses
  %i.os = icmp ne i8 %.9534, 0                    ; 2 uses
  %i.ot = add nsw i64 %wide.trip.count.i.i.i57.i.i.i.i, -1 ; 3 uses
  %xtraiter1072 = and i64 %i.ot, 1
  %i.ou = icmp eq i32 %i.of, 2
  br i1 %i.ou, label %.epil.preheader1071, label %.peel.next.i.i.i60.i.i.i.i.new

.peel.next.i.i.i60.i.i.i.i.new:                   ; preds = %.peel.next.i.i.i60.i.i.i.i
  %unroll_iter1078 = and i64 %i.ot, -2
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.peel.next.i.i.i60.i.i.i.i.new
  %.11536 = phi i1 [ %i.os, %.peel.next.i.i.i60.i.i.i.i.new ], [ %i.pv, %bb.am ]
  %.11 = phi i1 [ %.9, %.peel.next.i.i.i60.i.i.i.i.new ], [ %i.qc, %bb.am ]
  %indvars.iv.i.i.i61.i.i.i.i = phi i64 [ 1, %.peel.next.i.i.i60.i.i.i.i.new ], [ %indvars.iv.next.i.i.i65.i.i.i.i.1, %bb.am ] ; 5 uses
  %.01422.i.i.i62.i.i.i.i = phi i32 [ %i.or, %.peel.next.i.i.i60.i.i.i.i.new ], [ %i.pz, %bb.am ]
  %.02021.i.i.i63.i.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i58.i.i.i.i, %.peel.next.i.i.i60.i.i.i.i.new ], [ %.sroa.speculated.i.i.i64.i.i.i.i.1, %bb.am ] ; 2 uses
  %niter1079 = phi i64 [ 0, %.peel.next.i.i.i60.i.i.i.i.new ], [ %niter1079.next.1, %bb.am ]
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv.i.i.i61.i.i.i.i
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !209
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.od, i64 %indvars.iv.i.i.i61.i.i.i.i
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !209
  %i.oz = getelementptr inbounds [4 x i8], ptr %i.oy, i64 %i.oh
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !3
  %i.pb = sext i32 %i.pa to i64                   ; 2 uses
  %i.pc = getelementptr inbounds [4 x i8], ptr %i.ow, i64 %i.pb
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !3  ; 2 uses
  %i.pe = icmp eq i32 %.02021.i.i.i63.i.i.i.i, %i.pd
  %i.pf = and i1 %.11536, %i.pe
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %indvars.iv.i.i.i61.i.i.i.i
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !209
  %i.pi = getelementptr inbounds [4 x i8], ptr %i.ph, i64 %i.pb
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !3  ; 2 uses
  %i.pk = icmp eq i32 %.01422.i.i.i62.i.i.i.i, %i.pj
  %.sroa.speculated.i.i.i64.i.i.i.i = call i32 @llvm.smax.i32(i32 %.02021.i.i.i63.i.i.i.i, i32 %i.pd) ; 2 uses
  %indvars.iv.next.i.i.i65.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i61.i.i.i.i, 1 ; 3 uses
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv.next.i.i.i65.i.i.i.i
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !209
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.od, i64 %indvars.iv.next.i.i.i65.i.i.i.i
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !209
  %i.pp = getelementptr inbounds [4 x i8], ptr %i.po, i64 %i.oh
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !3
  %i.pr = sext i32 %i.pq to i64                   ; 2 uses
  %i.ps = getelementptr inbounds [4 x i8], ptr %i.pm, i64 %i.pr
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !3  ; 2 uses
  %i.pu = icmp eq i32 %.sroa.speculated.i.i.i64.i.i.i.i, %i.pt
  %i.pv = and i1 %i.pf, %i.pu                     ; 3 uses
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %indvars.iv.next.i.i.i65.i.i.i.i
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !209
  %i.py = getelementptr inbounds [4 x i8], ptr %i.px, i64 %i.pr
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !3  ; 3 uses
  %i.qa = icmp eq i32 %i.pj, %i.pz
  %i.qb = select i1 %i.qa, i1 %i.pk, i1 false
  %i.qc = select i1 %i.qb, i1 %.11, i1 false      ; 3 uses
  %.sroa.speculated.i.i.i64.i.i.i.i.1 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i.i.i64.i.i.i.i, i32 %i.pt) ; 3 uses
  %indvars.iv.next.i.i.i65.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i61.i.i.i.i, 2 ; 2 uses
  %niter1079.next.1 = add i64 %niter1079, 2       ; 2 uses
  %niter1079.ncmp.1 = icmp eq i64 %niter1079.next.1, %unroll_iter1078
  br i1 %niter1079.ncmp.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa, label %bb.am, !llvm.loop !309

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %bb.am
  %lcmp.mod1073.not = icmp eq i64 %xtraiter1072, 0
  br i1 %lcmp.mod1073.not, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit, label %.epil.preheader1071

.epil.preheader1071:                              ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa, %.peel.next.i.i.i60.i.i.i.i
  %.11536.epil.init = phi i1 [ %i.os, %.peel.next.i.i.i60.i.i.i.i ], [ %i.pv, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ]
  %.11.epil.init = phi i1 [ %.9, %.peel.next.i.i.i60.i.i.i.i ], [ %i.qc, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ]
  %indvars.iv.i.i.i61.i.i.i.i.epil.init = phi i64 [ 1, %.peel.next.i.i.i60.i.i.i.i ], [ %indvars.iv.next.i.i.i65.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.01422.i.i.i62.i.i.i.i.epil.init = phi i32 [ %i.or, %.peel.next.i.i.i60.i.i.i.i ], [ %i.pz, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ]
  %.02021.i.i.i63.i.i.i.i.epil.init = phi i32 [ %.sroa.speculated.peel.i.i.i58.i.i.i.i, %.peel.next.i.i.i60.i.i.i.i ], [ %.sroa.speculated.i.i.i64.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1077 = trunc i64 %i.ot to i1
  call void @llvm.assume(i1 %lcmp.mod1077)
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv.i.i.i61.i.i.i.i.epil.init
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !209
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.od, i64 %indvars.iv.i.i.i61.i.i.i.i.epil.init
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !209
  %i.qh = getelementptr inbounds [4 x i8], ptr %i.qg, i64 %i.oh
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !3
  %i.qj = sext i32 %i.qi to i64                   ; 2 uses
  %i.qk = getelementptr inbounds [4 x i8], ptr %i.qe, i64 %i.qj
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !3  ; 2 uses
  %i.qm = icmp eq i32 %.02021.i.i.i63.i.i.i.i.epil.init, %i.ql
  %i.qn = and i1 %.11536.epil.init, %i.qm
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %indvars.iv.i.i.i61.i.i.i.i.epil.init
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !209
  %i.qq = getelementptr inbounds [4 x i8], ptr %i.qp, i64 %i.qj
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !3
  %i.qs = icmp eq i32 %.01422.i.i.i62.i.i.i.i.epil.init, %i.qr
  %i.qt = select i1 %i.qs, i1 %.11.epil.init, i1 false
  %.sroa.speculated.i.i.i64.i.i.i.i.epil = call i32 @llvm.smax.i32(i32 %.02021.i.i.i63.i.i.i.i.epil.init, i32 %i.ql)
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa, %.epil.preheader1071
  %.lcssa1062 = phi i1 [ %i.pv, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.qn, %.epil.preheader1071 ]
  %.lcssa1061 = phi i1 [ %i.qc, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.qt, %.epil.preheader1071 ]
  %.sroa.speculated.i.i.i64.i.i.i.i.lcssa = phi i32 [ %.sroa.speculated.i.i.i64.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit.unr-lcssa ], [ %.sroa.speculated.i.i.i64.i.i.i.i.epil, %.epil.preheader1071 ]
  %i.qu = zext i1 %.lcssa1062 to i8
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit, %bb.al, %bb.ak
  %.10535 = phi i8 [ %.9534, %bb.al ], [ %.9534, %bb.ak ], [ %i.qu, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit ] ; 2 uses
  %.10 = phi i1 [ %.9, %bb.al ], [ %.9, %bb.ak ], [ %.lcssa1061, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit ] ; 2 uses
  %.020.lcssa.i.i.i56.i.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i58.i.i.i.i, %bb.al ], [ 0, %bb.ak ], [ %.sroa.speculated.i.i.i64.i.i.i.i.lcssa, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i.loopexit ] ; 2 uses
  %i.qv = load i32, ptr %i.b, align 4, !tbaa !3
  %i.qw = add nsw i32 %i.qv, %.020.lcssa.i.i.i56.i.i.i.i
  store i32 %i.qw, ptr %i.b, align 4, !tbaa !3
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.031.i.i.i.i.i
  store i32 %.020.lcssa.i.i.i56.i.i.i.i, ptr %i.qx, align 4, !tbaa !3
  %i.qy = add nuw i64 %.031.i.i.i.i.i, 1          ; 2 uses
  %i.qz = icmp ult i64 %i.qy, %i.oa
  br i1 %i.qz, label %bb.ak, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !313

bb.an:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.12537 = phi i8 [ %.3528, %.lr.ph.i.i.i.i.i ], [ %.13538, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i ] ; 3 uses
  %.12 = phi i1 [ %.3, %.lr.ph.i.i.i.i.i ], [ %.13, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i ] ; 4 uses
  %.01530.i.i.i.i.i = phi i64 [ %i.nt, %.lr.ph.i.i.i.i.i ], [ %i.tu, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i ] ; 3 uses
  %i.ra = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01530.i.i.i.i.i, i1 true)
  %i.rb = load i32, ptr %i.a, align 4, !tbaa !3   ; 4 uses
  %i.rc = icmp sgt i32 %i.rb, 0
  %47 = or disjoint i64 %i.ra, %46                ; 5 uses
  br i1 %i.rc, label %bb.ao, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.rd = load ptr, ptr %i.nv, align 8, !tbaa !209
  %i.re = load ptr, ptr %i.nw, align 8, !tbaa !209
  %i.rf = getelementptr inbounds [4 x i8], ptr %i.re, i64 %47
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !3
  %i.rh = sext i32 %i.rg to i64                   ; 2 uses
  %i.ri = getelementptr inbounds [4 x i8], ptr %i.rd, i64 %i.rh
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !3
  %.sroa.speculated.peel.i.i19.i.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.rj, i32 0) ; 3 uses
  %exitcond.peel.not.i.i20.i.i.i.i.i = icmp eq i32 %i.rb, 1
  br i1 %exitcond.peel.not.i.i20.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i, label %.peel.next.i.i21.i.i.i.i.i

.peel.next.i.i21.i.i.i.i.i:                       ; preds = %bb.ao
  %wide.trip.count.i.i18.i.i.i.i.i = zext nneg i32 %i.rb to i64
  %i.rk = load ptr, ptr %i.nx, align 8, !tbaa !209
  %i.rl = getelementptr inbounds [4 x i8], ptr %i.rk, i64 %i.rh
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !3  ; 2 uses
  %i.rn = icmp ne i8 %.12537, 0                   ; 2 uses
  %i.ro = add nsw i64 %wide.trip.count.i.i18.i.i.i.i.i, -1 ; 3 uses
  %xtraiter1081 = and i64 %i.ro, 1
  %i.rp = icmp eq i32 %i.rb, 2
  br i1 %i.rp, label %.epil.preheader1080, label %.peel.next.i.i21.i.i.i.i.i.new

.peel.next.i.i21.i.i.i.i.i.new:                   ; preds = %.peel.next.i.i21.i.i.i.i.i
  %unroll_iter1087 = and i64 %i.ro, -2
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.peel.next.i.i21.i.i.i.i.i.new
  %.14539 = phi i1 [ %i.rn, %.peel.next.i.i21.i.i.i.i.i.new ], [ %i.sq, %bb.ap ]
  %.14 = phi i1 [ %.12, %.peel.next.i.i21.i.i.i.i.i.new ], [ %i.sx, %bb.ap ]
  %indvars.iv.i.i22.i.i.i.i.i = phi i64 [ 1, %.peel.next.i.i21.i.i.i.i.i.new ], [ %indvars.iv.next.i.i26.i.i.i.i.i.1, %bb.ap ] ; 5 uses
  %.01422.i.i23.i.i.i.i.i = phi i32 [ %i.rm, %.peel.next.i.i21.i.i.i.i.i.new ], [ %i.su, %bb.ap ]
  %.02021.i.i24.i.i.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i19.i.i.i.i.i, %.peel.next.i.i21.i.i.i.i.i.new ], [ %.sroa.speculated.i.i25.i.i.i.i.i.1, %bb.ap ] ; 2 uses
  %niter1088 = phi i64 [ 0, %.peel.next.i.i21.i.i.i.i.i.new ], [ %niter1088.next.1, %bb.ap ]
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %indvars.iv.i.i22.i.i.i.i.i
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !209
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %indvars.iv.i.i22.i.i.i.i.i
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !209
  %i.ru = getelementptr inbounds [4 x i8], ptr %i.rt, i64 %47
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !3
  %i.rw = sext i32 %i.rv to i64                   ; 2 uses
  %i.rx = getelementptr inbounds [4 x i8], ptr %i.rr, i64 %i.rw
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !3  ; 2 uses
  %i.rz = icmp eq i32 %.02021.i.i24.i.i.i.i.i, %i.ry
  %i.sa = and i1 %.14539, %i.rz
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %indvars.iv.i.i22.i.i.i.i.i
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !209
  %i.sd = getelementptr inbounds [4 x i8], ptr %i.sc, i64 %i.rw
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !3  ; 2 uses
  %i.sf = icmp eq i32 %.01422.i.i23.i.i.i.i.i, %i.se
  %.sroa.speculated.i.i25.i.i.i.i.i = call i32 @llvm.smax.i32(i32 %.02021.i.i24.i.i.i.i.i, i32 %i.ry) ; 2 uses
  %indvars.iv.next.i.i26.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i22.i.i.i.i.i, 1 ; 3 uses
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %indvars.iv.next.i.i26.i.i.i.i.i
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !209
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %indvars.iv.next.i.i26.i.i.i.i.i
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !209
  %i.sk = getelementptr inbounds [4 x i8], ptr %i.sj, i64 %47
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !3
  %i.sm = sext i32 %i.sl to i64                   ; 2 uses
  %i.sn = getelementptr inbounds [4 x i8], ptr %i.sh, i64 %i.sm
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !3  ; 2 uses
  %i.sp = icmp eq i32 %.sroa.speculated.i.i25.i.i.i.i.i, %i.so
  %i.sq = and i1 %i.sa, %i.sp                     ; 3 uses
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %indvars.iv.next.i.i26.i.i.i.i.i
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !209
  %i.st = getelementptr inbounds [4 x i8], ptr %i.ss, i64 %i.sm
  %i.su = load i32, ptr %i.st, align 4, !tbaa !3  ; 3 uses
  %i.sv = icmp eq i32 %i.se, %i.su
  %i.sw = select i1 %i.sv, i1 %i.sf, i1 false
  %i.sx = select i1 %i.sw, i1 %.14, i1 false      ; 3 uses
  %.sroa.speculated.i.i25.i.i.i.i.i.1 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i.i25.i.i.i.i.i, i32 %i.so) ; 3 uses
  %indvars.iv.next.i.i26.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i22.i.i.i.i.i, 2 ; 2 uses
  %niter1088.next.1 = add i64 %niter1088, 2       ; 2 uses
  %niter1088.ncmp.1 = icmp eq i64 %niter1088.next.1, %unroll_iter1087
  br i1 %niter1088.ncmp.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa, label %bb.ap, !llvm.loop !309

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa: ; preds = %bb.ap
  %lcmp.mod1082.not = icmp eq i64 %xtraiter1081, 0
  br i1 %lcmp.mod1082.not, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit, label %.epil.preheader1080

.epil.preheader1080:                              ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa, %.peel.next.i.i21.i.i.i.i.i
  %.14539.epil.init = phi i1 [ %i.rn, %.peel.next.i.i21.i.i.i.i.i ], [ %i.sq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa ]
  %.14.epil.init = phi i1 [ %.12, %.peel.next.i.i21.i.i.i.i.i ], [ %i.sx, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa ]
  %indvars.iv.i.i22.i.i.i.i.i.epil.init = phi i64 [ 1, %.peel.next.i.i21.i.i.i.i.i ], [ %indvars.iv.next.i.i26.i.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.01422.i.i23.i.i.i.i.i.epil.init = phi i32 [ %i.rm, %.peel.next.i.i21.i.i.i.i.i ], [ %i.su, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa ]
  %.02021.i.i24.i.i.i.i.i.epil.init = phi i32 [ %.sroa.speculated.peel.i.i19.i.i.i.i.i, %.peel.next.i.i21.i.i.i.i.i ], [ %.sroa.speculated.i.i25.i.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1086 = trunc i64 %i.ro to i1
  call void @llvm.assume(i1 %lcmp.mod1086)
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %indvars.iv.i.i22.i.i.i.i.i.epil.init
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !209
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %indvars.iv.i.i22.i.i.i.i.i.epil.init
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !209
  %i.tc = getelementptr inbounds [4 x i8], ptr %i.tb, i64 %47
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !3
  %i.te = sext i32 %i.td to i64                   ; 2 uses
  %i.tf = getelementptr inbounds [4 x i8], ptr %i.sz, i64 %i.te
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !3  ; 2 uses
  %i.th = icmp eq i32 %.02021.i.i24.i.i.i.i.i.epil.init, %i.tg
  %i.ti = and i1 %.14539.epil.init, %i.th
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %indvars.iv.i.i22.i.i.i.i.i.epil.init
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !209
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.tk, i64 %i.te
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !3
  %i.tn = icmp eq i32 %.01422.i.i23.i.i.i.i.i.epil.init, %i.tm
  %i.to = select i1 %i.tn, i1 %.14.epil.init, i1 false
  %.sroa.speculated.i.i25.i.i.i.i.i.epil = call i32 @llvm.smax.i32(i32 %.02021.i.i24.i.i.i.i.i.epil.init, i32 %i.tg)
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa, %.epil.preheader1080
  %.lcssa1064 = phi i1 [ %i.sq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa ], [ %i.ti, %.epil.preheader1080 ]
  %.lcssa1063 = phi i1 [ %i.sx, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa ], [ %i.to, %.epil.preheader1080 ]
  %.sroa.speculated.i.i25.i.i.i.i.i.lcssa = phi i32 [ %.sroa.speculated.i.i25.i.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit.unr-lcssa ], [ %.sroa.speculated.i.i25.i.i.i.i.i.epil, %.epil.preheader1080 ]
  %i.tp = zext i1 %.lcssa1064 to i8
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i: ; preds = %bb.an, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit, %bb.ao
  %.13538 = phi i8 [ %.12537, %bb.ao ], [ %i.tp, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit ], [ %.12537, %bb.an ] ; 2 uses
  %.13 = phi i1 [ %.12, %bb.ao ], [ %.lcssa1063, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit ], [ %.12, %bb.an ] ; 2 uses
  %.020.lcssa.i.i17.i.i.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i19.i.i.i.i.i, %bb.ao ], [ %.sroa.speculated.i.i25.i.i.i.i.i.lcssa, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i.loopexit ], [ 0, %bb.an ] ; 2 uses
  %i.tq = load i32, ptr %i.b, align 4, !tbaa !3
  %i.tr = add nsw i32 %i.tq, %.020.lcssa.i.i17.i.i.i.i.i
  store i32 %i.tr, ptr %i.b, align 4, !tbaa !3
  %i.ts = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %47
  store i32 %.020.lcssa.i.i17.i.i.i.i.i, ptr %i.ts, align 4, !tbaa !3
  %i.tt = add i64 %.01530.i.i.i.i.i, -1
  %i.tu = and i64 %i.tt, %.01530.i.i.i.i.i        ; 2 uses
  %.not.i71.i.i.i.i = icmp eq i64 %i.tu, 0
  br i1 %.not.i71.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, label %bb.an, !llvm.loop !314

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i, %bb.aj, %.lr.ph.i.i.i.i
  %.4529 = phi i8 [ %.3528, %.lr.ph.i.i.i.i ], [ %.3528, %bb.aj ], [ %.13538, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i ], [ %.10535, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i ] ; 2 uses
  %.4 = phi i1 [ %.3, %.lr.ph.i.i.i.i ], [ %.3, %bb.aj ], [ %.13, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i69.i.i.i.i ], [ %.10, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clImEEDaSN_.exit.i.i.i.i.i ] ; 2 uses
  %i.tv = add nsw i32 %i.np, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.tv, %i.gp
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !315

bb.aq:                                            ; preds = %._crit_edge.i.i.i.i
  %i.tw = ashr i32 %i.gl, 6
  %i.tx = and i32 %i.gl, 63
  %i.ty = zext nneg i32 %i.tx to i64
  %notmask.i72.i.i.i.i = shl nsw i64 -1, %i.ty
  %i.tz = xor i64 %notmask.i72.i.i.i.i, -1
  %i.ua = sext i32 %i.tw to i64
  %i.ub = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.ua
  %i.uc = load i64, ptr %i.ub, align 8, !tbaa !160
  %i.ud = and i64 %i.uc, %i.tz                    ; 2 uses
  %.not.i73.i.i.i.i = icmp eq i64 %i.ud, 0
  br i1 %.not.i73.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %.preheader.i74.i.i.i.i.preheader

.preheader.i74.i.i.i.i.preheader:                 ; preds = %bb.aq
  %i.ue = load ptr, ptr %13, align 8              ; 4 uses
  %i.uf = load ptr, ptr %15, align 8              ; 4 uses
  %i.ug = load ptr, ptr %14, align 8              ; 4 uses
  %48 = sext i32 %i.gp to i64
  br label %.preheader.i74.i.i.i.i

.preheader.i74.i.i.i.i:                           ; preds = %.preheader.i74.i.i.i.i.preheader, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i
  %.6531 = phi i8 [ %.7532, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i ], [ %.5530, %.preheader.i74.i.i.i.i.preheader ] ; 3 uses
  %.6 = phi i1 [ %.7, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i ], [ %.5, %.preheader.i74.i.i.i.i.preheader ] ; 4 uses
  %.011.i75.i.i.i.i = phi i64 [ %i.xb, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i ], [ %i.ud, %.preheader.i74.i.i.i.i.preheader ] ; 3 uses
  %i.uh = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i75.i.i.i.i, i1 true)
  %i.ui = load i32, ptr %i.a, align 4, !tbaa !3   ; 4 uses
  %i.uj = icmp sgt i32 %i.ui, 0
  %49 = or disjoint i64 %i.uh, %48                ; 5 uses
  br i1 %i.uj, label %bb.ar, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i

bb.ar:                                            ; preds = %.preheader.i74.i.i.i.i
  %i.uk = load ptr, ptr %i.ue, align 8, !tbaa !209
  %i.ul = load ptr, ptr %i.uf, align 8, !tbaa !209
  %i.um = getelementptr inbounds [4 x i8], ptr %i.ul, i64 %49
  %i.un = load i32, ptr %i.um, align 4, !tbaa !3
  %i.uo = sext i32 %i.un to i64                   ; 2 uses
  %i.up = getelementptr inbounds [4 x i8], ptr %i.uk, i64 %i.uo
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !3
  %.sroa.speculated.peel.i.i.i83.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.uq, i32 0) ; 3 uses
  %exitcond.peel.not.i.i.i84.i.i.i.i = icmp eq i32 %i.ui, 1
  br i1 %exitcond.peel.not.i.i.i84.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i, label %.peel.next.i.i.i85.i.i.i.i

.peel.next.i.i.i85.i.i.i.i:                       ; preds = %bb.ar
  %wide.trip.count.i.i.i82.i.i.i.i = zext nneg i32 %i.ui to i64
  %i.ur = load ptr, ptr %i.ug, align 8, !tbaa !209
  %i.us = getelementptr inbounds [4 x i8], ptr %i.ur, i64 %i.uo
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !3  ; 2 uses
  %i.uu = icmp ne i8 %.6531, 0                    ; 2 uses
  %i.uv = add nsw i64 %wide.trip.count.i.i.i82.i.i.i.i, -1 ; 3 uses
  %xtraiter1090 = and i64 %i.uv, 1
  %i.uw = icmp eq i32 %i.ui, 2
  br i1 %i.uw, label %.epil.preheader1089, label %.peel.next.i.i.i85.i.i.i.i.new

.peel.next.i.i.i85.i.i.i.i.new:                   ; preds = %.peel.next.i.i.i85.i.i.i.i
  %unroll_iter1096 = and i64 %i.uv, -2
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.peel.next.i.i.i85.i.i.i.i.new
  %.8533 = phi i1 [ %i.uu, %.peel.next.i.i.i85.i.i.i.i.new ], [ %i.vx, %bb.as ]
  %.8 = phi i1 [ %.6, %.peel.next.i.i.i85.i.i.i.i.new ], [ %i.we, %bb.as ]
  %indvars.iv.i.i.i86.i.i.i.i = phi i64 [ 1, %.peel.next.i.i.i85.i.i.i.i.new ], [ %indvars.iv.next.i.i.i90.i.i.i.i.1, %bb.as ] ; 5 uses
  %.01422.i.i.i87.i.i.i.i = phi i32 [ %i.ut, %.peel.next.i.i.i85.i.i.i.i.new ], [ %i.wb, %bb.as ]
  %.02021.i.i.i88.i.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i83.i.i.i.i, %.peel.next.i.i.i85.i.i.i.i.new ], [ %.sroa.speculated.i.i.i89.i.i.i.i.1, %bb.as ] ; 2 uses
  %niter1097 = phi i64 [ 0, %.peel.next.i.i.i85.i.i.i.i.new ], [ %niter1097.next.1, %bb.as ]
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.ue, i64 %indvars.iv.i.i.i86.i.i.i.i
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !209
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.uf, i64 %indvars.iv.i.i.i86.i.i.i.i
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !209
  %i.vb = getelementptr inbounds [4 x i8], ptr %i.va, i64 %49
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !3
  %i.vd = sext i32 %i.vc to i64                   ; 2 uses
  %i.ve = getelementptr inbounds [4 x i8], ptr %i.uy, i64 %i.vd
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !3  ; 2 uses
  %i.vg = icmp eq i32 %.02021.i.i.i88.i.i.i.i, %i.vf
  %i.vh = and i1 %.8533, %i.vg
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %indvars.iv.i.i.i86.i.i.i.i
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !209
  %i.vk = getelementptr inbounds [4 x i8], ptr %i.vj, i64 %i.vd
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !3  ; 2 uses
  %i.vm = icmp eq i32 %.01422.i.i.i87.i.i.i.i, %i.vl
  %.sroa.speculated.i.i.i89.i.i.i.i = call i32 @llvm.smax.i32(i32 %.02021.i.i.i88.i.i.i.i, i32 %i.vf) ; 2 uses
  %indvars.iv.next.i.i.i90.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i86.i.i.i.i, 1 ; 3 uses
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.ue, i64 %indvars.iv.next.i.i.i90.i.i.i.i
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !209
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.uf, i64 %indvars.iv.next.i.i.i90.i.i.i.i
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !209
  %i.vr = getelementptr inbounds [4 x i8], ptr %i.vq, i64 %49
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !3
  %i.vt = sext i32 %i.vs to i64                   ; 2 uses
  %i.vu = getelementptr inbounds [4 x i8], ptr %i.vo, i64 %i.vt
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !3  ; 2 uses
  %i.vw = icmp eq i32 %.sroa.speculated.i.i.i89.i.i.i.i, %i.vv
  %i.vx = and i1 %i.vh, %i.vw                     ; 3 uses
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %indvars.iv.next.i.i.i90.i.i.i.i
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !209
  %i.wa = getelementptr inbounds [4 x i8], ptr %i.vz, i64 %i.vt
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !3  ; 3 uses
  %i.wc = icmp eq i32 %i.vl, %i.wb
  %i.wd = select i1 %i.wc, i1 %i.vm, i1 false
  %i.we = select i1 %i.wd, i1 %.8, i1 false       ; 3 uses
  %.sroa.speculated.i.i.i89.i.i.i.i.1 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i.i.i89.i.i.i.i, i32 %i.vv) ; 3 uses
  %indvars.iv.next.i.i.i90.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i86.i.i.i.i, 2 ; 2 uses
  %niter1097.next.1 = add i64 %niter1097, 2       ; 2 uses
  %niter1097.ncmp.1 = icmp eq i64 %niter1097.next.1, %unroll_iter1096
  br i1 %niter1097.ncmp.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa, label %bb.as, !llvm.loop !309

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa: ; preds = %bb.as
  %lcmp.mod1091.not = icmp eq i64 %xtraiter1090, 0
  br i1 %lcmp.mod1091.not, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit, label %.epil.preheader1089

.epil.preheader1089:                              ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa, %.peel.next.i.i.i85.i.i.i.i
  %.8533.epil.init = phi i1 [ %i.uu, %.peel.next.i.i.i85.i.i.i.i ], [ %i.vx, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa ]
  %.8.epil.init = phi i1 [ %.6, %.peel.next.i.i.i85.i.i.i.i ], [ %i.we, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa ]
  %indvars.iv.i.i.i86.i.i.i.i.epil.init = phi i64 [ 1, %.peel.next.i.i.i85.i.i.i.i ], [ %indvars.iv.next.i.i.i90.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.01422.i.i.i87.i.i.i.i.epil.init = phi i32 [ %i.ut, %.peel.next.i.i.i85.i.i.i.i ], [ %i.wb, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa ]
  %.02021.i.i.i88.i.i.i.i.epil.init = phi i32 [ %.sroa.speculated.peel.i.i.i83.i.i.i.i, %.peel.next.i.i.i85.i.i.i.i ], [ %.sroa.speculated.i.i.i89.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1095 = trunc i64 %i.uv to i1
  call void @llvm.assume(i1 %lcmp.mod1095)
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.ue, i64 %indvars.iv.i.i.i86.i.i.i.i.epil.init
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !209
  %i.wh = getelementptr inbounds nuw [8 x i8], ptr %i.uf, i64 %indvars.iv.i.i.i86.i.i.i.i.epil.init
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !209
  %i.wj = getelementptr inbounds [4 x i8], ptr %i.wi, i64 %49
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !3
  %i.wl = sext i32 %i.wk to i64                   ; 2 uses
  %i.wm = getelementptr inbounds [4 x i8], ptr %i.wg, i64 %i.wl
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !3  ; 2 uses
  %i.wo = icmp eq i32 %.02021.i.i.i88.i.i.i.i.epil.init, %i.wn
  %i.wp = and i1 %.8533.epil.init, %i.wo
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %indvars.iv.i.i.i86.i.i.i.i.epil.init
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !209
  %i.ws = getelementptr inbounds [4 x i8], ptr %i.wr, i64 %i.wl
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !3
  %i.wu = icmp eq i32 %.01422.i.i.i87.i.i.i.i.epil.init, %i.wt
  %i.wv = select i1 %i.wu, i1 %.8.epil.init, i1 false
  %.sroa.speculated.i.i.i89.i.i.i.i.epil = call i32 @llvm.smax.i32(i32 %.02021.i.i.i88.i.i.i.i.epil.init, i32 %i.wn)
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa, %.epil.preheader1089
  %.lcssa1059 = phi i1 [ %i.vx, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa ], [ %i.wp, %.epil.preheader1089 ]
  %.lcssa1058 = phi i1 [ %i.we, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa ], [ %i.wv, %.epil.preheader1089 ]
  %.sroa.speculated.i.i.i89.i.i.i.i.lcssa = phi i32 [ %.sroa.speculated.i.i.i89.i.i.i.i.1, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit.unr-lcssa ], [ %.sroa.speculated.i.i.i89.i.i.i.i.epil, %.epil.preheader1089 ]
  %i.ww = zext i1 %.lcssa1059 to i8
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i: ; preds = %.preheader.i74.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit, %bb.ar
  %.7532 = phi i8 [ %.6531, %bb.ar ], [ %i.ww, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit ], [ %.6531, %.preheader.i74.i.i.i.i ] ; 2 uses
  %.7 = phi i1 [ %.6, %bb.ar ], [ %.lcssa1058, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit ], [ %.6, %.preheader.i74.i.i.i.i ] ; 2 uses
  %.020.lcssa.i.i.i80.i.i.i.i = phi i32 [ %.sroa.speculated.peel.i.i.i83.i.i.i.i, %bb.ar ], [ %.sroa.speculated.i.i.i89.i.i.i.i.lcssa, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i.loopexit ], [ 0, %.preheader.i74.i.i.i.i ] ; 2 uses
  %i.wx = load i32, ptr %i.b, align 4, !tbaa !3
  %i.wy = add nsw i32 %i.wx, %.020.lcssa.i.i.i80.i.i.i.i
  store i32 %i.wy, ptr %i.b, align 4, !tbaa !3
  %i.wz = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %49
  store i32 %.020.lcssa.i.i.i80.i.i.i.i, ptr %i.wz, align 4, !tbaa !3
  %i.xa = add nsw i64 %.011.i75.i.i.i.i, -1
  %i.xb = and i64 %i.xa, %.011.i75.i.i.i.i        ; 2 uses
  %.not10.i81.i.i.i.i = icmp eq i64 %i.xb, 0
  br i1 %.not10.i81.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit, label %.preheader.i74.i.i.i.i, !llvm.loop !312

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i, %bb.aq, %._crit_edge.i.i.i.i, %bb.ab, %bb.z, %bb.v
  %.22547 = phi i8 [ 1, %bb.z ], [ 1, %bb.v ], [ 1, %bb.ab ], [ %.17542, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i ], [ %.5530, %._crit_edge.i.i.i.i ], [ %.5530, %bb.aq ], [ %.20545, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i ], [ %.7532, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i ]
  %.22 = phi i1 [ true, %bb.z ], [ true, %bb.v ], [ true, %bb.ab ], [ %.17, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i.i.i.i.i ], [ %.5, %._crit_edge.i.i.i.i ], [ %.5, %bb.aq ], [ %.20, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i ], [ %.7, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E_clIiEEDaSN_.exit.i78.i.i.i.i ]
  %i.xc = trunc nuw i8 %.22547 to i1
  %or.cond = select i1 %i.xc, i1 %.22, i1 false
  br i1 %or.cond, label %bb.at, label %.critedge

bb.at:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_EEvSO_.exit
  %i.xd = load ptr, ptr %2, align 8, !tbaa !316   ; 28 uses
  %i.xe = load ptr, ptr %i.j, align 8, !tbaa !316 ; 6 uses
  %i.xf = icmp eq ptr %i.xd, %i.xe                ; 2 uses
  br i1 %i.xf, label %.critedge665, label %iter.check

iter.check:                                       ; preds = %bb.at
  %i.xg = ptrtoint ptr %i.xe to i64
  %i.xh = ptrtoint ptr %i.xd to i64
  %i.xi = add i64 %i.xg, -16
  %i.xj = sub i64 %i.xi, %i.xh                    ; 3 uses
  %i.xk = lshr i64 %i.xj, 4
  %i.xl = add nuw nsw i64 %i.xk, 1                ; 4 uses
  %min.iters.check = icmp ult i64 %i.xj, 64
  br i1 %min.iters.check, label %.lr.ph652.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check935 = icmp ult i64 %i.xj, 256
  br i1 %min.iters.check935, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.xl, 15                   ; 2 uses
  %i.xm = icmp eq i64 %n.mod.vf, 0
  %i.xn = select i1 %i.xm, i64 16, i64 %n.mod.vf  ; 2 uses
  %n.vec = sub nsw i64 %i.xl, %i.xn               ; 3 uses
  %i.xo = shl i64 %n.vec, 4
  %i.xp = getelementptr i8, ptr %i.xd, i64 %i.xo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ splat (i1 true), %vector.ph ], [ %i.aaw, %vector.body ]
  %vec.phi936 = phi <4 x i1> [ splat (i1 true), %vector.ph ], [ %i.aax, %vector.body ]
  %vec.phi937 = phi <4 x i1> [ splat (i1 true), %vector.ph ], [ %i.aay, %vector.body ]
  %vec.phi938 = phi <4 x i1> [ splat (i1 true), %vector.ph ], [ %i.aaz, %vector.body ]
  %i.xq = shl i64 %index, 4                       ; 16 uses
  %next.gep = getelementptr i8, ptr %i.xd, i64 %i.xq
  %i.xr = getelementptr i8, ptr %i.xd, i64 %i.xq
  %next.gep939 = getelementptr i8, ptr %i.xr, i64 16
  %i.xs = getelementptr i8, ptr %i.xd, i64 %i.xq
  %next.gep940 = getelementptr i8, ptr %i.xs, i64 32
  %i.xt = getelementptr i8, ptr %i.xd, i64 %i.xq
  %next.gep941 = getelementptr i8, ptr %i.xt, i64 48
  %i.xu = getelementptr i8, ptr %i.xd, i64 %i.xq
  %next.gep942 = getelementptr i8, ptr %i.xu, i64 64
  %i.xv = getelementptr i8, ptr %i.xd, i64 %i.xq
  %next.gep943 = getelementptr i8, ptr %i.xv, i64 80
  %i.xw = getelementptr i8, ptr %i.xd, i64 %i.xq
  %next.gep944 = getelementptr i8, ptr %i.xw, i64 96
  %i.xx = getelementptr i8, ptr %i.xd, i64 %i.xq
  %next.gep945 = getelementptr i8, ptr %i.xx, i64 112
  %i.xy = getelementptr i8, ptr %i.xd, i64 %i.xq
  %next.gep946 = getelementptr i8, ptr %i.xy, i64 128
  %i.xz = getelementptr i8, ptr %i.xd, i64 %i.xq
  %next.gep947 = getelementptr i8, ptr %i.xz, i64 144
  %i.ya = getelementptr i8, ptr %i.xd, i64 %i.xq
  %next.gep948 = getelementptr i8, ptr %i.ya, i64 160
  %i.yb = getelementptr i8, ptr %i.xd, i64 %i.xq
  %next.gep949 = getelementptr i8, ptr %i.yb, i64 176
  %i.yc = getelementptr i8, ptr %i.xd, i64 %i.xq
  %next.gep950 = getelementptr i8, ptr %i.yc, i64 192
  %i.yd = getelementptr i8, ptr %i.xd, i64 %i.xq
  %next.gep951 = getelementptr i8, ptr %i.yd, i64 208
  %i.ye = getelementptr i8, ptr %i.xd, i64 %i.xq
  %next.gep952 = getelementptr i8, ptr %i.ye, i64 224
  %i.yf = getelementptr i8, ptr %i.xd, i64 %i.xq
  %next.gep953 = getelementptr i8, ptr %i.yf, i64 240
  %i.yg = load ptr, ptr %next.gep, align 8, !tbaa !317
  %i.yh = load ptr, ptr %next.gep939, align 8, !tbaa !317
  %i.yi = load ptr, ptr %next.gep940, align 8, !tbaa !317
  %i.yj = load ptr, ptr %next.gep941, align 8, !tbaa !317
  %i.yk = load ptr, ptr %next.gep942, align 8, !tbaa !317
  %i.yl = load ptr, ptr %next.gep943, align 8, !tbaa !317
  %i.ym = load ptr, ptr %next.gep944, align 8, !tbaa !317
  %i.yn = load ptr, ptr %next.gep945, align 8, !tbaa !317
  %i.yo = load ptr, ptr %next.gep946, align 8, !tbaa !317
  %i.yp = load ptr, ptr %next.gep947, align 8, !tbaa !317
  %i.yq = load ptr, ptr %next.gep948, align 8, !tbaa !317
  %i.yr = load ptr, ptr %next.gep949, align 8, !tbaa !317
  %i.ys = load ptr, ptr %next.gep950, align 8, !tbaa !317
  %i.yt = load ptr, ptr %next.gep951, align 8, !tbaa !317
  %i.yu = load ptr, ptr %next.gep952, align 8, !tbaa !317
  %i.yv = load ptr, ptr %next.gep953, align 8, !tbaa !317
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yg, i64 28
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yh, i64 28
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yi, i64 28
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yj, i64 28
  %i.za = getelementptr inbounds nuw i8, ptr %i.yk, i64 28
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yl, i64 28
  %i.zc = getelementptr inbounds nuw i8, ptr %i.ym, i64 28
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yn, i64 28
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yo, i64 28
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yp, i64 28
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yq, i64 28
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yr, i64 28
  %i.zi = getelementptr inbounds nuw i8, ptr %i.ys, i64 28
  %i.zj = getelementptr inbounds nuw i8, ptr %i.yt, i64 28
  %i.zk = getelementptr inbounds nuw i8, ptr %i.yu, i64 28
  %i.zl = getelementptr inbounds nuw i8, ptr %i.yv, i64 28
  %i.zm = load i32, ptr %i.yw, align 4, !tbaa !319
  %i.zn = load i32, ptr %i.yx, align 4, !tbaa !319
  %i.zo = load i32, ptr %i.yy, align 4, !tbaa !319
  %i.zp = load i32, ptr %i.yz, align 4, !tbaa !319
  %i.zq = insertelement <4 x i32> poison, i32 %i.zm, i64 0
  %i.zr = insertelement <4 x i32> %i.zq, i32 %i.zn, i64 1
  %i.zs = insertelement <4 x i32> %i.zr, i32 %i.zo, i64 2
  %i.zt = insertelement <4 x i32> %i.zs, i32 %i.zp, i64 3
  %i.zu = load i32, ptr %i.za, align 4, !tbaa !319
  %i.zv = load i32, ptr %i.zb, align 4, !tbaa !319
  %i.zw = load i32, ptr %i.zc, align 4, !tbaa !319
  %i.zx = load i32, ptr %i.zd, align 4, !tbaa !319
  %i.zy = insertelement <4 x i32> poison, i32 %i.zu, i64 0
  %i.zz = insertelement <4 x i32> %i.zy, i32 %i.zv, i64 1
  %i.aaa = insertelement <4 x i32> %i.zz, i32 %i.zw, i64 2
  %i.aab = insertelement <4 x i32> %i.aaa, i32 %i.zx, i64 3
  %i.aac = load i32, ptr %i.ze, align 4, !tbaa !319
  %i.aad = load i32, ptr %i.zf, align 4, !tbaa !319
  %i.aae = load i32, ptr %i.zg, align 4, !tbaa !319
  %i.aaf = load i32, ptr %i.zh, align 4, !tbaa !319
  %i.aag = insertelement <4 x i32> poison, i32 %i.aac, i64 0
  %i.aah = insertelement <4 x i32> %i.aag, i32 %i.aad, i64 1
  %i.aai = insertelement <4 x i32> %i.aah, i32 %i.aae, i64 2
  %i.aaj = insertelement <4 x i32> %i.aai, i32 %i.aaf, i64 3
  %i.aak = load i32, ptr %i.zi, align 4, !tbaa !319
  %i.aal = load i32, ptr %i.zj, align 4, !tbaa !319
  %i.aam = load i32, ptr %i.zk, align 4, !tbaa !319
  %i.aan = load i32, ptr %i.zl, align 4, !tbaa !319
  %i.aao = insertelement <4 x i32> poison, i32 %i.aak, i64 0
  %i.aap = insertelement <4 x i32> %i.aao, i32 %i.aal, i64 1
  %i.aaq = insertelement <4 x i32> %i.aap, i32 %i.aam, i64 2
  %i.aar = insertelement <4 x i32> %i.aaq, i32 %i.aan, i64 3
  %i.aas = icmp eq <4 x i32> %i.zt, splat (i32 8)
  %i.aat = icmp eq <4 x i32> %i.aab, splat (i32 8)
  %i.aau = icmp eq <4 x i32> %i.aaj, splat (i32 8)
  %i.aav = icmp eq <4 x i32> %i.aar, splat (i32 8)
  %i.aaw = and <4 x i1> %vec.phi, %i.aas          ; 2 uses
  %i.aax = and <4 x i1> %vec.phi936, %i.aat       ; 2 uses
  %i.aay = and <4 x i1> %vec.phi937, %i.aau       ; 2 uses
  %i.aaz = and <4 x i1> %vec.phi938, %i.aav       ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aba = icmp eq i64 %index.next, %n.vec
  br i1 %i.aba, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !320

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = and <4 x i1> %i.aax, %i.aaw
  %bin.rdx954 = and <4 x i1> %i.aay, %bin.rdx
  %bin.rdx955 = and <4 x i1> %i.aaz, %bin.rdx954
  %i.abb = bitcast <4 x i1> %bin.rdx955 to i4
  %i.abc = icmp eq i4 %i.abb, -1                  ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.xn, 5
  br i1 %min.epilog.iters.check, label %.lr.ph652.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.abc, %vec.epilog.iter.check ], [ true, %vector.main.loop.iter.check ]
  %n.mod.vf956 = and i64 %i.xl, 3                 ; 2 uses
  %i.abd = icmp eq i64 %n.mod.vf956, 0
  %i.abe = select i1 %i.abd, i64 4, i64 %n.mod.vf956
  %n.vec957 = sub nsw i64 %i.xl, %i.abe           ; 2 uses
  %i.abf = shl i64 %n.vec957, 4
  %i.abg = getelementptr i8, ptr %i.xd, i64 %i.abf
  %i.abh = insertelement <4 x i1> <i1 poison, i1 true, i1 true, i1 true>, i1 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index958 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next964, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi959 = phi <4 x i1> [ %i.abh, %vec.epilog.ph ], [ %i.acd, %vec.epilog.vector.body ]
  %i.abi = shl i64 %index958, 4                   ; 4 uses
  %next.gep960 = getelementptr i8, ptr %i.xd, i64 %i.abi
  %i.abj = getelementptr i8, ptr %i.xd, i64 %i.abi
  %next.gep961 = getelementptr i8, ptr %i.abj, i64 16
  %i.abk = getelementptr i8, ptr %i.xd, i64 %i.abi
  %next.gep962 = getelementptr i8, ptr %i.abk, i64 32
  %i.abl = getelementptr i8, ptr %i.xd, i64 %i.abi
  %next.gep963 = getelementptr i8, ptr %i.abl, i64 48
  %i.abm = load ptr, ptr %next.gep960, align 8, !tbaa !317
  %i.abn = load ptr, ptr %next.gep961, align 8, !tbaa !317
  %i.abo = load ptr, ptr %next.gep962, align 8, !tbaa !317
  %i.abp = load ptr, ptr %next.gep963, align 8, !tbaa !317
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abm, i64 28
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abn, i64 28
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abo, i64 28
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abp, i64 28
  %i.abu = load i32, ptr %i.abq, align 4, !tbaa !319
  %i.abv = load i32, ptr %i.abr, align 4, !tbaa !319
  %i.abw = load i32, ptr %i.abs, align 4, !tbaa !319
  %i.abx = load i32, ptr %i.abt, align 4, !tbaa !319
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  br i1 %i.aqe, label %bb.em, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i249

bb.em:                                            ; preds = %bb.el
  %i.aqf = load ptr, ptr %1, align 8, !tbaa !307  ; 2 uses
  %.not.i.i.i284 = icmp sgt i32 %i.aqb, 0
  br i1 %.not.i.i.i284, label %bb.en, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i249

bb.en:                                            ; preds = %bb.em
  %i.aqg = and i32 %i.aqb, 2147483584             ; 3 uses
  %i.aqh = zext nneg i32 %i.aqg to i64
  %.not37.i.i.not.i.i286931.not = icmp eq i32 %i.aqg, 0
  br i1 %.not37.i.i.not.i.i286931.not, label %.critedge.i.i.i.i287, label %.lr.ph934

bb.eo:                                            ; preds = %.lr.ph934
  %indvars.iv.next.i.i291 = add nuw nsw i64 %indvars.iv.i.i285932, 64 ; 2 uses
  %.not37.i.i.not.i.i286 = icmp samesign ult i64 %indvars.iv.next.i.i291, %i.aqh
  br i1 %.not37.i.i.not.i.i286, label %.lr.ph934, label %.critedge.i.i.i.i287, !llvm.loop !308

.lr.ph934:                                        ; preds = %bb.en, %bb.eo
  %indvars.iv.i.i285932 = phi i64 [ %indvars.iv.next.i.i291, %bb.eo ], [ 0, %bb.en ] ; 2 uses
  %i.aqi = lshr exact i64 %indvars.iv.i.i285932, 3
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.aqi
  %i.aqk = load i64, ptr %i.aqj, align 8, !tbaa !160
  %i.aql = icmp eq i64 %i.aqk, -1
  br i1 %i.aql, label %bb.eo, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i249, !llvm.loop !308

.critedge.i.i.i.i287:                             ; preds = %bb.eo, %bb.en
  %.not38.i.i.i.i288 = icmp eq i32 %i.aqb, %i.aqg
  br i1 %.not38.i.i.i.i288, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i249, label %bb.ep

bb.ep:                                            ; preds = %.critedge.i.i.i.i287
  %i.aqm = lshr i32 %i.aqb, 6
  %i.aqn = and i32 %i.aqb, 63
  %i.aqo = zext nneg i32 %i.aqn to i64
  %notmask.i40.i.i.i.i289 = shl nsw i64 -1, %i.aqo
  %i.aqp = zext nneg i32 %i.aqm to i64
  %i.aqq = getelementptr inbounds nuw [8 x i8], ptr %i.aqf, i64 %i.aqp
  %i.aqr = load i64, ptr %i.aqq, align 8, !tbaa !160
  %.demorgan.i.i290 = or i64 %i.aqr, %notmask.i40.i.i.i.i289
  %i.aqs = icmp eq i64 %.demorgan.i.i290, -1
  %i.aqt = zext i1 %i.aqs to i16
  %i.aqu = or disjoint i16 %i.aqt, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i249

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i249: ; preds = %.lr.ph934, %bb.ep, %.critedge.i.i.i.i287, %bb.em, %bb.el, %bb.ek
  %.sroa.0.0.insert.ext.i.i250 = phi i16 [ 256, %bb.el ], [ 256, %bb.ek ], [ 257, %bb.em ], [ 257, %.critedge.i.i.i.i287 ], [ %i.aqu, %bb.ep ], [ 256, %.lr.ph934 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i250, ptr %i.ci, align 4
  %i.aqv = trunc i16 %.sroa.0.0.insert.ext.i.i250 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i251

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i251: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i249, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i292
  %.0.in.i.i252 = phi i8 [ %.0.in.pre.i.i293, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i292 ], [ %i.aqv, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i249 ]
  %.0.i.i253 = trunc nuw i8 %.0.in.i.i252 to i1
  %i.aqw = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aqx = load i32, ptr %i.aqw, align 4, !tbaa !305 ; 8 uses
  br i1 %.0.i.i253, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i251
  %i.aqy = load i32, ptr %i.by, align 8, !tbaa !287 ; 2 uses
  %i.aqz = icmp slt i32 %i.aqx, %i.aqy
  br i1 %i.aqz, label %.lr.ph.i282, label %.loopexit

.lr.ph.i282:                                      ; preds = %bb.eq, %.lr.ph.i282
  %.014.i = phi i32 [ %i.ara, %.lr.ph.i282 ], [ %i.aqx, %bb.eq ] ; 2 uses
  call fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E0_clIiEEDaSN_(ptr noundef nonnull readonly align 8 dereferenceable(72) %7, i32 noundef %.014.i)
  %i.ara = add i32 %.014.i, 1                     ; 2 uses
  %exitcond.not.i283 = icmp eq i32 %i.ara, %i.aqy
  br i1 %exitcond.not.i283, label %.loopexit, label %.lr.ph.i282, !llvm.loop !370

bb.er:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i251
  %i.arb = load ptr, ptr %1, align 8, !tbaa !307  ; 5 uses
  %i.arc = load i32, ptr %i.by, align 8, !tbaa !287 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.d, ptr %.sroa.39.0..sroa_idx.i.i.i, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.g, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i, align 8
  %.sroa.6.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.h, ptr %.sroa.6.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i, align 8
  %.sroa.7.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.a, ptr %.sroa.7.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i, align 8
  %.sroa.8.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %14, ptr %.sroa.8.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i, align 8
  %.sroa.9.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %15, ptr %.sroa.9.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i, align 8
  %.sroa.10.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %13, ptr %.sroa.10.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i, align 8
  %.sroa.11.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %26, ptr %.sroa.11.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i, align 8
  %.sroa.12.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %27, ptr %.sroa.12.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i, align 8
  store i8 1, ptr %6, align 8
  %.sroa.28.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.arb, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8
  %.not.i.i.i.i259 = icmp slt i32 %i.aqx, %i.arc
  br i1 %.not.i.i.i.i259, label %bb.es, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiiSP_.exit.i

bb.es:                                            ; preds = %bb.er
  %i.ard = add i32 %i.aqx, 63                     ; 2 uses
  %i.are = srem i32 %i.ard, 64
  %i.arf = sub nsw i32 %i.ard, %i.are             ; 6 uses
  %i.arg = and i32 %i.arc, -64                    ; 6 uses
  %i.arh = icmp slt i32 %i.arg, %i.arf
  br i1 %i.arh, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.ari = ashr i32 %i.arc, 6
  %i.arj = and i32 %i.arc, 63
  %i.ark = zext nneg i32 %i.arj to i64
  %notmask.i.i.i.i.i276 = shl nsw i64 -1, %i.ark
  %i.arl = xor i64 %notmask.i.i.i.i.i276, -1
  %i.arm = sub nsw i32 %i.arf, %i.aqx             ; 2 uses
  %i.arn = zext nneg i32 %i.arm to i64
  %notmask.i.i.i.i.i.i277 = shl nsw i64 -1, %i.arn
  %i.aro = xor i64 %notmask.i.i.i.i.i.i277, -1
  %i.arp = sub nsw i32 64, %i.arm
  %i.arq = zext nneg i32 %i.arp to i64
  %i.arr = shl i64 %i.aro, %i.arq
  %i.ars = and i64 %i.arr, %i.arl
  %i.art = sext i32 %i.ari to i64
  %i.aru = getelementptr inbounds [8 x i8], ptr %i.arb, i64 %i.art
  %i.arv = load i64, ptr %i.aru, align 8, !tbaa !160
  %i.arw = and i64 %i.ars, %i.arv                 ; 2 uses
  %.not.i.i.i.i.i278 = icmp eq i64 %i.arw, 0
  br i1 %.not.i.i.i.i.i278, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiiSP_.exit.i, label %.preheader.i.i.i.i.i279

.preheader.i.i.i.i.i279:                          ; preds = %bb.et, %.preheader.i.i.i.i.i279
  %.011.i.i.i.i.i280 = phi i64 [ %i.asb, %.preheader.i.i.i.i.i279 ], [ %i.arw, %bb.et ] ; 3 uses
  %i.arx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i280, i1 true)
  %i.ary = trunc nuw nsw i64 %i.arx to i32
  %i.arz = or disjoint i32 %i.arg, %i.ary
  call fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E0_clIiEEDaSN_(ptr noundef nonnull readonly align 8 dereferenceable(72) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.arz)
  %i.asa = add nsw i64 %.011.i.i.i.i.i280, -1
  %i.asb = and i64 %i.asa, %.011.i.i.i.i.i280     ; 2 uses
  %.not10.i.i.i.i.i281 = icmp eq i64 %i.asb, 0
  br i1 %.not10.i.i.i.i.i281, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiiSP_.exit.i, label %.preheader.i.i.i.i.i279, !llvm.loop !371

bb.eu:                                            ; preds = %bb.es
  %.not32.i.i.i.i260 = icmp eq i32 %i.aqx, %i.arf
  br i1 %.not32.i.i.i.i260, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.asc = sdiv i32 %i.aqx, 64                    ; 2 uses
  %i.asd = sub nsw i32 %i.arf, %i.aqx             ; 2 uses
  %i.ase = zext nneg i32 %i.asd to i64
  %notmask.i.i35.i.i.i.i261 = shl nsw i64 -1, %i.ase
  %i.asf = xor i64 %notmask.i.i35.i.i.i.i261, -1
  %i.asg = sub nsw i32 64, %i.asd
  %i.ash = zext nneg i32 %i.asg to i64
  %i.asi = shl i64 %i.asf, %i.ash
  %i.asj = sext i32 %i.asc to i64
  %i.ask = getelementptr inbounds [8 x i8], ptr %i.arb, i64 %i.asj
  %i.asl = load i64, ptr %i.ask, align 8, !tbaa !160
  %i.asm = and i64 %i.asl, %i.asi                 ; 2 uses
  %.not.i36.i.i.i.i262 = icmp eq i64 %i.asm, 0
  br i1 %.not.i36.i.i.i.i262, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUlimE_clEim.exit40.i.i.i.i, label %.preheader.i37.i.i.i.i263

.preheader.i37.i.i.i.i263:                        ; preds = %bb.ev
  %i.asn = shl nsw i32 %i.asc, 6
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ew, %.preheader.i37.i.i.i.i263
  %.011.i38.i.i.i.i264 = phi i64 [ %i.asm, %.preheader.i37.i.i.i.i263 ], [ %i.ass, %bb.ew ] ; 3 uses
  %i.aso = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i264, i1 true)
  %i.asp = trunc nuw nsw i64 %i.aso to i32
  %i.asq = or disjoint i32 %i.asn, %i.asp
  call fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E0_clIiEEDaSN_(ptr noundef nonnull readonly align 8 dereferenceable(72) %.sroa.39.0..sroa_idx.i.i.i, i32 noundef %i.asq)
  %i.asr = add i64 %.011.i38.i.i.i.i264, -1
  %i.ass = and i64 %i.asr, %.011.i38.i.i.i.i264   ; 2 uses
  %.not10.i39.i.i.i.i = icmp eq i64 %i.ass, 0
  br i1 %.not10.i39.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUlimE_clEim.exit40.i.i.i.i, label %bb.ew, !llvm.loop !371

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUlimE_clEim.exit40.i.i.i.i: ; preds = %bb.ew, %bb.ev, %bb.eu
  %i.ast = add nsw i32 %i.arf, 64                 ; 2 uses
  %.not3359.i.i.i.i = icmp sgt i32 %i.ast, %i.arg
  br i1 %.not3359.i.i.i.i, label %._crit_edge.i.i.i.i267, label %.lr.ph.i.i.i.i265.preheader

.lr.ph.i.i.i.i265.preheader:                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUlimE_clEim.exit40.i.i.i.i
  %i.asu = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.asv = load ptr, ptr %i.g, align 8            ; 2 uses
  br label %.lr.ph.i.i.i.i265

._crit_edge.i.i.i.i267:                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUlimE_clEim.exit40.i.i.i.i
  %.not34.i.i.i.i268 = icmp eq i32 %i.arc, %i.arg
  br i1 %.not34.i.i.i.i268, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiiSP_.exit.i, label %bb.fk

.lr.ph.i.i.i.i265:                                ; preds = %.lr.ph.i.i.i.i265.preheader, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i
  %i.asw = phi i32 [ %i.bax, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ], [ %i.ast, %.lr.ph.i.i.i.i265.preheader ] ; 2 uses
  %.060.i.i.i.i = phi i32 [ %i.asw, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i ], [ %i.arf, %.lr.ph.i.i.i.i265.preheader ] ; 2 uses
  %i.asx = sdiv i32 %.060.i.i.i.i, 64             ; 3 uses
  %i.asy = sext i32 %i.asx to i64
  %i.asz = getelementptr inbounds [8 x i8], ptr %i.arb, i64 %i.asy
  %i.ata = load i64, ptr %i.asz, align 8, !tbaa !160 ; 2 uses
  switch i64 %i.ata, label %.lr.ph.i.i.i.i.i275 [
    i64 -1, label %bb.ex
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i275:                              ; preds = %.lr.ph.i.i.i.i265
  %i.atb = shl nsw i32 %i.asx, 6
  %50 = sext i32 %i.atb to i64
  %.pre.i.i.i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.atc = load ptr, ptr %14, align 8
  %i.atd = load ptr, ptr %15, align 8
  %i.ate = load ptr, ptr %13, align 8
  %i.atf = load ptr, ptr %26, align 8
  %i.atg = load ptr, ptr %27, align 8
  br label %bb.fe

bb.ex:                                            ; preds = %.lr.ph.i.i.i.i265
  %i.ath = shl nsw i32 %i.asx, 6                  ; 2 uses
  %i.ati = add i32 %i.ath, 64
  %i.atj = sext i32 %i.ati to i64
  %.0.off.i.i.i.i269 = add i32 %.060.i.i.i.i, 127
  %.not22.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i269, 64
  br i1 %.not22.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph21.i.i.i.i.i

.lr.ph21.i.i.i.i.i:                               ; preds = %bb.ex
  %i.atk = sext i32 %i.ath to i64
  %.pre.i.i.i.i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.atl = load ptr, ptr %14, align 8
  %i.atm = load ptr, ptr %15, align 8
  %i.atn = load ptr, ptr %13, align 8
  %i.ato = load ptr, ptr %26, align 8
  %i.atp = load ptr, ptr %27, align 8
  br label %bb.ey

bb.ey:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E0_clImEEDaSN_.exit.i.i.i.i.i, %.lr.ph21.i.i.i.i.i
  %i.atq = phi i32 [ %.pre.i.i.i.i.i, %.lr.ph21.i.i.i.i.i ], [ %.pre-phi.i.i.i.i.i.i270, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E0_clImEEDaSN_.exit.i.i.i.i.i ] ; 3 uses
  %.020.i.i.i.i.i = phi i64 [ %i.atk, %.lr.ph21.i.i.i.i.i ], [ %i.axe, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E0_clImEEDaSN_.exit.i.i.i.i.i ] ; 4 uses
  %i.atr = getelementptr inbounds nuw [4 x i8], ptr %i.asu, i64 %.020.i.i.i.i.i
  %i.ats = load i32, ptr %i.atr, align 4, !tbaa !3 ; 3 uses
  %i.att = getelementptr inbounds nuw [4 x i8], ptr %i.asv, i64 %.020.i.i.i.i.i
  store i32 %i.atq, ptr %i.att, align 4, !tbaa !3
  %i.atu = load i32, ptr %i.a, align 4, !tbaa !3
  %i.atv = icmp sgt i32 %i.atu, 0
  br i1 %i.atv, label %.lr.ph.i.i.i.i.i.i, label %.._crit_edge_crit_edge.i.i.i.i.i.i

.._crit_edge_crit_edge.i.i.i.i.i.i:               ; preds = %bb.ey
  %.pre20.i.i.i.i.i.i = add nsw i32 %i.ats, %i.atq
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E0_clImEEDaSN_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ey, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i.i.i.i
  %i.atw = phi i32 [ %i.avk, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i.i.i.i ], [ %i.atq, %bb.ey ] ; 2 uses
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i.i.i.i ], [ 0, %bb.ey ] ; 6 uses
  %i.atx = getelementptr inbounds nuw [8 x i8], ptr %i.atm, i64 %indvars.iv.i.i.i.i.i.i
  %i.aty = load ptr, ptr %i.atx, align 8, !tbaa !209
  %i.atz = getelementptr inbounds nuw [4 x i8], ptr %i.aty, i64 %.020.i.i.i.i.i
  %i.aua = load i32, ptr %i.atz, align 4, !tbaa !3
  %i.aub = sext i32 %i.aua to i64                 ; 2 uses
  %i.auc = getelementptr inbounds nuw [8 x i8], ptr %i.atn, i64 %indvars.iv.i.i.i.i.i.i
  %i.aud = load ptr, ptr %i.auc, align 8, !tbaa !209
  %i.aue = getelementptr inbounds [4 x i8], ptr %i.aud, i64 %i.aub
  %i.auf = load i32, ptr %i.aue, align 4, !tbaa !3 ; 4 uses
  %i.aug = getelementptr inbounds nuw [8 x i8], ptr %i.ato, i64 %indvars.iv.i.i.i.i.i.i
  %i.auh = load ptr, ptr %i.aug, align 8, !tbaa !209
  %i.aui = sext i32 %i.atw to i64
  %i.auj = getelementptr inbounds [4 x i8], ptr %i.auh, i64 %i.aui ; 6 uses
  %i.auk = sext i32 %i.auf to i64
  %.idx.i.i.i.i.i.i = shl nsw i64 %i.auk, 2       ; 2 uses
  %i.aul = getelementptr inbounds i8, ptr %i.auj, i64 %.idx.i.i.i.i.i.i
  %.not6.i.i.i.i.i.i.i = icmp eq i32 %i.auf, 0
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.i.i.i.i.i.i, label %iter.check1023

iter.check1023:                                   ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aum = getelementptr inbounds nuw [8 x i8], ptr %i.atl, i64 %indvars.iv.i.i.i.i.i.i
  %i.aun = load ptr, ptr %i.aum, align 8, !tbaa !209
  %i.auo = getelementptr inbounds [4 x i8], ptr %i.aun, i64 %i.aub
  %i.aup = load i32, ptr %i.auo, align 4, !tbaa !3 ; 5 uses
  %i.auq = add nsw i64 %.idx.i.i.i.i.i.i, -4      ; 3 uses
  %i.aur = lshr exact i64 %i.auq, 2
  %i.aus = add nuw nsw i64 %i.aur, 1              ; 5 uses
  %min.iters.check1000 = icmp ult i64 %i.auq, 28
  br i1 %min.iters.check1000, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check1001

vector.main.loop.iter.check1001:                  ; preds = %iter.check1023
  %min.iters.check1002 = icmp ult i64 %i.auq, 124
  br i1 %min.iters.check1002, label %vec.epilog.ph1027, label %vector.ph1003

vector.ph1003:                                    ; preds = %vector.main.loop.iter.check1001
  %n.mod.vf1004 = and i64 %i.aus, 24
  %n.vec1005 = and i64 %i.aus, 9223372036854775776 ; 5 uses
  %i.aut = trunc i64 %n.vec1005 to i32
  %i.auu = add i32 %i.aup, %i.aut                 ; 2 uses
  %i.auv = shl i64 %n.vec1005, 2
  %i.auw = getelementptr i8, ptr %i.auj, i64 %i.auv
  %broadcast.splatinsert1006 = insertelement <8 x i32> poison, i32 %i.aup, i64 0
  %broadcast.splat1007 = shufflevector <8 x i32> %broadcast.splatinsert1006, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction1008 = add nsw <8 x i32> %broadcast.splat1007, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vector.body1009

vector.body1009:                                  ; preds = %vector.body1009, %vector.ph1003
  %index1010 = phi i64 [ 0, %vector.ph1003 ], [ %index.next1016, %vector.body1009 ] ; 2 uses
  %vec.ind1011 = phi <8 x i32> [ %induction1008, %vector.ph1003 ], [ %vec.ind.next1017, %vector.body1009 ] ; 5 uses
  %step.add1012 = add nsw <8 x i32> %vec.ind1011, splat (i32 8)
  %step.add.21013 = add nsw <8 x i32> %vec.ind1011, splat (i32 16)
  %step.add.31014 = add nsw <8 x i32> %vec.ind1011, splat (i32 24)
  %i.aux = shl i64 %index1010, 2
  %next.gep1015 = getelementptr i8, ptr %i.auj, i64 %i.aux ; 4 uses
  %i.auy = getelementptr i8, ptr %next.gep1015, i64 32
  %i.auz = getelementptr i8, ptr %next.gep1015, i64 64
  %i.ava = getelementptr i8, ptr %next.gep1015, i64 96
  store <8 x i32> %vec.ind1011, ptr %next.gep1015, align 4, !tbaa !3
  store <8 x i32> %step.add1012, ptr %i.auy, align 4, !tbaa !3
  store <8 x i32> %step.add.21013, ptr %i.auz, align 4, !tbaa !3
  store <8 x i32> %step.add.31014, ptr %i.ava, align 4, !tbaa !3
  %index.next1016 = add nuw i64 %index1010, 32    ; 2 uses
  %vec.ind.next1017 = add nsw <8 x i32> %vec.ind1011, splat (i32 32)
  %i.avb = icmp eq i64 %index.next1016, %n.vec1005
  br i1 %i.avb, label %middle.block1018, label %vector.body1009, !llvm.loop !372

middle.block1018:                                 ; preds = %vector.body1009
  %cmp.n1019 = icmp eq i64 %i.aus, %n.vec1005
  br i1 %cmp.n1019, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.loopexit.i.i.i.i.i.i, label %vec.epilog.iter.check1025

vec.epilog.iter.check1025:                        ; preds = %middle.block1018
  %min.epilog.iters.check1026 = icmp eq i64 %n.mod.vf1004, 0
  br i1 %min.epilog.iters.check1026, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph1027, !prof !373

vec.epilog.ph1027:                                ; preds = %vector.main.loop.iter.check1001, %vec.epilog.iter.check1025
  %vec.epilog.resume.val1020 = phi i64 [ %n.vec1005, %vec.epilog.iter.check1025 ], [ 0, %vector.main.loop.iter.check1001 ]
  %bc.resume.val1021 = phi i32 [ %i.auu, %vec.epilog.iter.check1025 ], [ %i.aup, %vector.main.loop.iter.check1001 ]
  %n.vec1029 = and i64 %i.aus, 9223372036854775800 ; 4 uses
  %i.avc = trunc i64 %n.vec1029 to i32
  %i.avd = add i32 %i.aup, %i.avc
  %i.ave = shl i64 %n.vec1029, 2
  %i.avf = getelementptr i8, ptr %i.auj, i64 %i.ave
  %broadcast.splatinsert1030 = insertelement <8 x i32> poison, i32 %bc.resume.val1021, i64 0
  %broadcast.splat1031 = shufflevector <8 x i32> %broadcast.splatinsert1030, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction1032 = add nsw <8 x i32> %broadcast.splat1031, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body1033

vec.epilog.vector.body1033:                       ; preds = %vec.epilog.vector.body1033, %vec.epilog.ph1027
  %index1034 = phi i64 [ %vec.epilog.resume.val1020, %vec.epilog.ph1027 ], [ %index.next1037, %vec.epilog.vector.body1033 ] ; 2 uses
  %vec.ind1035 = phi <8 x i32> [ %induction1032, %vec.epilog.ph1027 ], [ %vec.ind.next1038, %vec.epilog.vector.body1033 ] ; 2 uses
  %i.avg = shl i64 %index1034, 2
  %next.gep1036 = getelementptr i8, ptr %i.auj, i64 %i.avg
  store <8 x i32> %vec.ind1035, ptr %next.gep1036, align 4, !tbaa !3
  %index.next1037 = add nuw i64 %index1034, 8     ; 2 uses
  %vec.ind.next1038 = add nsw <8 x i32> %vec.ind1035, splat (i32 8)
  %i.avh = icmp eq i64 %index.next1037, %n.vec1029
  br i1 %i.avh, label %vec.epilog.middle.block1039, label %vec.epilog.vector.body1033, !llvm.loop !374

vec.epilog.middle.block1039:                      ; preds = %vec.epilog.vector.body1033
  %cmp.n1040 = icmp eq i64 %i.aus, %n.vec1029
  br i1 %cmp.n1040, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %iter.check1023, %vec.epilog.iter.check1025, %vec.epilog.middle.block1039
  %.08.i.i.i.i.i.i.i.ph = phi i32 [ %i.aup, %iter.check1023 ], [ %i.auu, %vec.epilog.iter.check1025 ], [ %i.avd, %vec.epilog.middle.block1039 ]
  %.057.i.i.i.i.i.i.i.ph = phi ptr [ %i.auj, %iter.check1023 ], [ %i.auw, %vec.epilog.iter.check1025 ], [ %i.avf, %vec.epilog.middle.block1039 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i = phi i32 [ %i.avi, %.lr.ph.i.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.057.i.i.i.i.i.i.i = phi ptr [ %i.avj, %.lr.ph.i.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %.08.i.i.i.i.i.i.i, ptr %.057.i.i.i.i.i.i.i, align 4, !tbaa !3
  %i.avi = add nsw i32 %.08.i.i.i.i.i.i.i, 1
  %i.avj = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i271 = icmp eq ptr %i.avj, %i.aul
  br i1 %.not.i.i.i.i.i.i.i271, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !375

_ZSt4iotaIPiiEvT_S1_T0_.exit.loopexit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %vec.epilog.middle.block1039, %middle.block1018
  %.pre.i.i.i.i.i.i272 = load i32, ptr %i.h, align 4, !tbaa !3
  br label %_ZSt4iotaIPiiEvT_S1_T0_.exit.i.i.i.i.i.i

_ZSt4iotaIPiiEvT_S1_T0_.exit.i.i.i.i.i.i:         ; preds = %_ZSt4iotaIPiiEvT_S1_T0_.exit.loopexit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.avk = phi i32 [ %.pre.i.i.i.i.i.i272, %_ZSt4iotaIPiiEvT_S1_T0_.exit.loopexit.i.i.i.i.i.i ], [ %i.atw, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.avl = getelementptr inbounds nuw [8 x i8], ptr %i.atp, i64 %indvars.iv.i.i.i.i.i.i
  %i.avm = load ptr, ptr %i.avl, align 8, !tbaa !356 ; 3 uses
  %i.avn = add nsw i32 %i.avk, %i.auf             ; 5 uses
  %i.avo = add nsw i32 %i.avk, %i.ats             ; 6 uses
  %.not.i.i.i.i.i.i.i.i273 = icmp slt i32 %i.auf, %i.ats
  br i1 %.not.i.i.i.i.i.i.i.i273, label %bb.ez, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i.i.i.i

bb.ez:                                            ; preds = %_ZSt4iotaIPiiEvT_S1_T0_.exit.i.i.i.i.i.i
  %i.avp = add i32 %i.avn, 63                     ; 2 uses
  %i.avq = srem i32 %i.avp, 64
  %i.avr = sub nsw i32 %i.avp, %i.avq             ; 6 uses
  %i.avs = and i32 %i.avo, -64                    ; 4 uses
  %i.avt = icmp slt i32 %i.avs, %i.avr
  br i1 %i.avt, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.avu = and i32 %i.avo, 63
  %i.avv = zext nneg i32 %i.avu to i64
  %notmask.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.avv
  %i.avw = sub nsw i32 %i.avr, %i.avn             ; 2 uses
  %i.avx = zext nneg i32 %i.avw to i64
  %notmask.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.avx
  %i.avy = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i, -1
  %i.avz = sub nsw i32 64, %i.avw
  %i.awa = zext nneg i32 %i.avz to i64
  %i.awb = shl i64 %i.avy, %i.awa
  %.not.i.i.i.i.i.i274 = xor i64 %i.awb, -1
  %i.awc = or i64 %notmask.i.i.i.i.i.i.i.i.i, %.not.i.i.i.i.i.i274
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.sink.split.i.i.i.i.i.i

bb.fb:                                            ; preds = %bb.ez
  %.not32.i.i.i.i.i.i.i.i = icmp eq i32 %i.avn, %i.avr
  br i1 %.not32.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i.i.i.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.awd = sdiv i32 %i.avn, 64
  %i.awe = sub nsw i32 %i.avr, %i.avn             ; 2 uses
  %i.awf = zext nneg i32 %i.awe to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.awf
  %i.awg = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i, -1
  %i.awh = sub nsw i32 64, %i.awe
  %i.awi = zext nneg i32 %i.awh to i64
  %i.awj = shl i64 %i.awg, %i.awi
  %i.awk = xor i64 %i.awj, -1
  %i.awl = sext i32 %i.awd to i64
  %i.awm = getelementptr inbounds [8 x i8], ptr %i.avm, i64 %i.awl ; 2 uses
  %i.awn = load i64, ptr %i.awm, align 8, !tbaa !160
  %i.awo = and i64 %i.awn, %i.awk
  store i64 %i.awo, ptr %i.awm, align 8, !tbaa !160
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i.i.i.i

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i.i.i.i: ; preds = %bb.fc, %bb.fb
  %i.awp = add nsw i32 %i.avr, 64                 ; 2 uses
  %.not3347.i.i.i.i.i.i.i.i = icmp sgt i32 %i.awp, %i.avs
  br i1 %.not3347.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i.i.i.i
  %.not34.i.i.i.i.i.i.i.i = icmp eq i32 %i.avo, %i.avs
  br i1 %.not34.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i.i.i.i, label %bb.fd

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.awq = phi i32 [ %i.awu, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.awp, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i.i.i.i ] ; 2 uses
  %.048.i.i.i.i.i.i.i.i = phi i32 [ %i.awq, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.avr, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i.i.i.i ]
  %i.awr = sdiv i32 %.048.i.i.i.i.i.i.i.i, 64
  %i.aws = sext i32 %i.awr to i64
  %i.awt = getelementptr inbounds [8 x i8], ptr %i.avm, i64 %i.aws
  store i64 0, ptr %i.awt, align 8, !tbaa !160
  %i.awu = add nsw i32 %i.awq, 64                 ; 2 uses
  %.not33.i.i.i.i.i.i.i.i = icmp sgt i32 %i.awu, %i.avs
  br i1 %.not33.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !376

bb.fd:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.awv = and i32 %i.avo, 63
  %i.aww = zext nneg i32 %i.awv to i64
  %notmask.i37.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.aww
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.sink.split.i.i.i.i.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.sink.split.i.i.i.i.i.i: ; preds = %bb.fd, %bb.fa
  %.sink27.i.i.i.i.i.i = phi i64 [ %i.awc, %bb.fa ], [ %notmask.i37.i.i.i.i.i.i.i.i, %bb.fd ]
  %.sink.i.i.i.i.i.i = ashr i32 %i.avo, 6
  %i.awx = sext i32 %.sink.i.i.i.i.i.i to i64
  %i.awy = getelementptr inbounds [8 x i8], ptr %i.avm, i64 %i.awx ; 2 uses
  %i.awz = load i64, ptr %i.awy, align 8, !tbaa !160
  %i.axa = and i64 %i.awz, %.sink27.i.i.i.i.i.i
  store i64 %i.axa, ptr %i.awy, align 8, !tbaa !160
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i.i.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.sink.split.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i, %_ZSt4iotaIPiiEvT_S1_T0_.exit.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %i.axb = load i32, ptr %i.a, align 4, !tbaa !3
  %i.axc = sext i32 %i.axb to i64
  %i.axd = icmp slt i64 %indvars.iv.next.i.i.i.i.i.i, %i.axc
  br i1 %i.axd, label %.lr.ph.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E0_clImEEDaSN_.exit.i.i.i.i.i, !llvm.loop !377

_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E0_clImEEDaSN_.exit.i.i.i.i.i: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i.i.i.i, %.._crit_edge_crit_edge.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i270 = phi i32 [ %.pre20.i.i.i.i.i.i, %.._crit_edge_crit_edge.i.i.i.i.i.i ], [ %i.avo, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i.i.i.i ] ; 2 uses
  store i32 %.pre-phi.i.i.i.i.i.i270, ptr %i.h, align 4, !tbaa !3
  %i.axe = add nuw i64 %.020.i.i.i.i.i, 1         ; 2 uses
  %i.axf = icmp ult i64 %i.axe, %i.atj
  br i1 %i.axf, label %bb.ey, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlT_E0_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !378

bb.fe:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E0_clIiEEDaSN_.exit.i.i.i.i, %.lr.ph.i.i.i.i.i275
  %i.axg = phi i32 [ %.pre.i.i.i.i, %.lr.ph.i.i.i.i.i275 ], [ %.pre-phi.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E0_clIiEEDaSN_.exit.i.i.i.i ] ; 3 uses
  %.01519.i.i.i.i.i = phi i64 [ %i.ata, %.lr.ph.i.i.i.i.i275 ], [ %i.baw, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E0_clIiEEDaSN_.exit.i.i.i.i ] ; 3 uses
  %i.axh = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.i.i.i.i, i1 true)
  %51 = or disjoint i64 %i.axh, %50               ; 3 uses
  %i.axi = getelementptr inbounds [4 x i8], ptr %i.asu, i64 %51
  %i.axj = load i32, ptr %i.axi, align 4, !tbaa !3 ; 3 uses
  %i.axk = getelementptr inbounds [4 x i8], ptr %i.asv, i64 %51
  store i32 %i.axg, ptr %i.axk, align 4, !tbaa !3
  %i.axl = load i32, ptr %i.a, align 4, !tbaa !3
  %i.axm = icmp sgt i32 %i.axl, 0
  br i1 %i.axm, label %.lr.ph.i48.i.i.i.i, label %.._crit_edge_crit_edge.i.i.i.i.i

.._crit_edge_crit_edge.i.i.i.i.i:                 ; preds = %bb.fe
  %.pre20.i.i.i.i.i = add nsw i32 %i.axj, %i.axg
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111ZipFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlT_E0_clIiEEDaSN_.exit.i.i.i.i

.lr.ph.i48.i.i.i.i:                               ; preds = %bb.fe, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i.i.i
  %i.axn = phi i32 [ %i.azb, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i.i.i ], [ %i.axg, %bb.fe ] ; 2 uses
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i.i.i ], [ 0, %bb.fe ] ; 6 uses
  %i.axo = getelementptr inbounds nuw [8 x i8], ptr %i.atd, i64 %indvars.iv.i.i.i.i.i
  %i.axp = load ptr, ptr %i.axo, align 8, !tbaa !209
  %i.axq = getelementptr inbounds [4 x i8], ptr %i.axp, i64 %51
  %i.axr = load i32, ptr %i.axq, align 4, !tbaa !3
  %i.axs = sext i32 %i.axr to i64                 ; 2 uses
  %i.axt = getelementptr inbounds nuw [8 x i8], ptr %i.ate, i64 %indvars.iv.i.i.i.i.i
  %i.axu = load ptr, ptr %i.axt, align 8, !tbaa !209
  %i.axv = getelementptr inbounds [4 x i8], ptr %i.axu, i64 %i.axs
  %i.axw = load i32, ptr %i.axv, align 4, !tbaa !3 ; 4 uses
  %i.axx = getelementptr inbounds nuw [8 x i8], ptr %i.atf, i64 %indvars.iv.i.i.i.i.i
  %i.axy = load ptr, ptr %i.axx, align 8, !tbaa !209
  %i.axz = sext i32 %i.axn to i64
  %i.aya = getelementptr inbounds [4 x i8], ptr %i.axy, i64 %i.axz ; 6 uses
  %i.ayb = sext i32 %i.axw to i64
  %.idx.i.i.i.i.i = shl nsw i64 %i.ayb, 2         ; 2 uses
  %i.ayc = getelementptr inbounds i8, ptr %i.aya, i64 %.idx.i.i.i.i.i
  %.not6.i.i.i.i.i.i = icmp eq i32 %i.axw, 0
  br i1 %.not6.i.i.i.i.i.i, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.i.i.i.i.i, label %iter.check980

iter.check980:                                    ; preds = %.lr.ph.i48.i.i.i.i
  %i.ayd = getelementptr inbounds nuw [8 x i8], ptr %i.atc, i64 %indvars.iv.i.i.i.i.i
  %i.aye = load ptr, ptr %i.ayd, align 8, !tbaa !209
  %i.ayf = getelementptr inbounds [4 x i8], ptr %i.aye, i64 %i.axs
  %i.ayg = load i32, ptr %i.ayf, align 4, !tbaa !3 ; 5 uses
  %i.ayh = add nsw i64 %.idx.i.i.i.i.i, -4        ; 3 uses
  %i.ayi = lshr exact i64 %i.ayh, 2
  %i.ayj = add nuw nsw i64 %i.ayi, 1              ; 5 uses
  %min.iters.check967 = icmp ult i64 %i.ayh, 28
  br i1 %min.iters.check967, label %.lr.ph.i.i49.i.i.i.i.preheader, label %vector.main.loop.iter.check968

vector.main.loop.iter.check968:                   ; preds = %iter.check980
  %min.iters.check969 = icmp ult i64 %i.ayh, 124
  br i1 %min.iters.check969, label %vec.epilog.ph984, label %vector.ph970

vector.ph970:                                     ; preds = %vector.main.loop.iter.check968
  %n.mod.vf971 = and i64 %i.ayj, 24
  %n.vec972 = and i64 %i.ayj, 9223372036854775776 ; 5 uses
  %i.ayk = trunc i64 %n.vec972 to i32
  %i.ayl = add i32 %i.ayg, %i.ayk                 ; 2 uses
  %i.aym = shl i64 %n.vec972, 2
  %i.ayn = getelementptr i8, ptr %i.aya, i64 %i.aym
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ayg, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vector.body973

vector.body973:                                   ; preds = %vector.body973, %vector.ph970
  %index974 = phi i64 [ 0, %vector.ph970 ], [ %index.next976, %vector.body973 ] ; 2 uses
  %vec.ind = phi <8 x i32> [ %induction, %vector.ph970 ], [ %vec.ind.next, %vector.body973 ] ; 5 uses
  %step.add = add nsw <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add nsw <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add nsw <8 x i32> %vec.ind, splat (i32 24)
  %i.ayo = shl i64 %index974, 2
  %next.gep975 = getelementptr i8, ptr %i.aya, i64 %i.ayo ; 4 uses
  %i.ayp = getelementptr i8, ptr %next.gep975, i64 32
  %i.ayq = getelementptr i8, ptr %next.gep975, i64 64
  %i.ayr = getelementptr i8, ptr %next.gep975, i64 96
  store <8 x i32> %vec.ind, ptr %next.gep975, align 4, !tbaa !3
  store <8 x i32> %step.add, ptr %i.ayp, align 4, !tbaa !3
  store <8 x i32> %step.add.2, ptr %i.ayq, align 4, !tbaa !3
  store <8 x i32> %step.add.3, ptr %i.ayr, align 4, !tbaa !3
  %index.next976 = add nuw i64 %index974, 32      ; 2 uses
  %vec.ind.next = add nsw <8 x i32> %vec.ind, splat (i32 32)
  %i.ays = icmp eq i64 %index.next976, %n.vec972
  br i1 %i.ays, label %middle.block977, label %vector.body973, !llvm.loop !379

middle.block977:                                  ; preds = %vector.body973
  %cmp.n = icmp eq i64 %i.ayj, %n.vec972
  br i1 %cmp.n, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.loopexit.i.i.i.i.i, label %vec.epilog.iter.check982

vec.epilog.iter.check982:                         ; preds = %middle.block977
  %min.epilog.iters.check983 = icmp eq i64 %n.mod.vf971, 0
  br i1 %min.epilog.iters.check983, label %.lr.ph.i.i49.i.i.i.i.preheader, label %vec.epilog.ph984, !prof !373

vec.epilog.ph984:                                 ; preds = %vector.main.loop.iter.check968, %vec.epilog.iter.check982
  %vec.epilog.resume.val978 = phi i64 [ %n.vec972, %vec.epilog.iter.check982 ], [ 0, %vector.main.loop.iter.check968 ]
  %bc.resume.val = phi i32 [ %i.ayl, %vec.epilog.iter.check982 ], [ %i.ayg, %vector.main.loop.iter.check968 ]
  %n.vec986 = and i64 %i.ayj, 9223372036854775800 ; 4 uses
  %i.ayt = trunc i64 %n.vec986 to i32
  %i.ayu = add i32 %i.ayg, %i.ayt
  %i.ayv = shl i64 %n.vec986, 2
  %i.ayw = getelementptr i8, ptr %i.aya, i64 %i.ayv
  %broadcast.splatinsert987 = insertelement <8 x i32> poison, i32 %bc.resume.val, i64 0
  %broadcast.splat988 = shufflevector <8 x i32> %broadcast.splatinsert987, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction989 = add nsw <8 x i32> %broadcast.splat988, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body990

vec.epilog.vector.body990:                        ; preds = %vec.epilog.vector.body990, %vec.epilog.ph984
  %index991 = phi i64 [ %vec.epilog.resume.val978, %vec.epilog.ph984 ], [ %index.next994, %vec.epilog.vector.body990 ] ; 2 uses
  %vec.ind992 = phi <8 x i32> [ %induction989, %vec.epilog.ph984 ], [ %vec.ind.next995, %vec.epilog.vector.body990 ] ; 2 uses
  %i.ayx = shl i64 %index991, 2
  %next.gep993 = getelementptr i8, ptr %i.aya, i64 %i.ayx
  store <8 x i32> %vec.ind992, ptr %next.gep993, align 4, !tbaa !3
  %index.next994 = add nuw i64 %index991, 8       ; 2 uses
  %vec.ind.next995 = add nsw <8 x i32> %vec.ind992, splat (i32 8)
  %i.ayy = icmp eq i64 %index.next994, %n.vec986
  br i1 %i.ayy, label %vec.epilog.middle.block996, label %vec.epilog.vector.body990, !llvm.loop !380

vec.epilog.middle.block996:                       ; preds = %vec.epilog.vector.body990
  %cmp.n997 = icmp eq i64 %i.ayj, %n.vec986
  br i1 %cmp.n997, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.loopexit.i.i.i.i.i, label %.lr.ph.i.i49.i.i.i.i.preheader

.lr.ph.i.i49.i.i.i.i.preheader:                   ; preds = %iter.check980, %vec.epilog.iter.check982, %vec.epilog.middle.block996
  %.08.i.i.i.i.i.i.ph = phi i32 [ %i.ayg, %iter.check980 ], [ %i.ayl, %vec.epilog.iter.check982 ], [ %i.ayu, %vec.epilog.middle.block996 ]
  %.057.i.i.i.i.i.i.ph = phi ptr [ %i.aya, %iter.check980 ], [ %i.ayn, %vec.epilog.iter.check982 ], [ %i.ayw, %vec.epilog.middle.block996 ]
  br label %.lr.ph.i.i49.i.i.i.i

.lr.ph.i.i49.i.i.i.i:                             ; preds = %.lr.ph.i.i49.i.i.i.i.preheader, %.lr.ph.i.i49.i.i.i.i
  %.08.i.i.i.i.i.i = phi i32 [ %i.ayz, %.lr.ph.i.i49.i.i.i.i ], [ %.08.i.i.i.i.i.i.ph, %.lr.ph.i.i49.i.i.i.i.preheader ] ; 2 uses
  %.057.i.i.i.i.i.i = phi ptr [ %i.aza, %.lr.ph.i.i49.i.i.i.i ], [ %.057.i.i.i.i.i.i.ph, %.lr.ph.i.i49.i.i.i.i.preheader ] ; 2 uses
  store i32 %.08.i.i.i.i.i.i, ptr %.057.i.i.i.i.i.i, align 4, !tbaa !3
  %i.ayz = add nsw i32 %.08.i.i.i.i.i.i, 1
  %i.aza = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i50.i.i.i.i = icmp eq ptr %i.aza, %i.ayc
  br i1 %.not.i.i50.i.i.i.i, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.loopexit.i.i.i.i.i, label %.lr.ph.i.i49.i.i.i.i, !llvm.loop !381

_ZSt4iotaIPiiEvT_S1_T0_.exit.loopexit.i.i.i.i.i:  ; preds = %.lr.ph.i.i49.i.i.i.i, %vec.epilog.middle.block996, %middle.block977
  %.pre.i51.i.i.i.i = load i32, ptr %i.h, align 4, !tbaa !3
  br label %_ZSt4iotaIPiiEvT_S1_T0_.exit.i.i.i.i.i

_ZSt4iotaIPiiEvT_S1_T0_.exit.i.i.i.i.i:           ; preds = %_ZSt4iotaIPiiEvT_S1_T0_.exit.loopexit.i.i.i.i.i, %.lr.ph.i48.i.i.i.i
  %i.azb = phi i32 [ %.pre.i51.i.i.i.i, %_ZSt4iotaIPiiEvT_S1_T0_.exit.loopexit.i.i.i.i.i ], [ %i.axn, %.lr.ph.i48.i.i.i.i ] ; 3 uses
  %i.azc = getelementptr inbounds nuw [8 x i8], ptr %i.atg, i64 %indvars.iv.i.i.i.i.i
  %i.azd = load ptr, ptr %i.azc, align 8, !tbaa !356 ; 3 uses
  %i.aze = add nsw i32 %i.azb, %i.axw             ; 5 uses
  %i.azf = add nsw i32 %i.azb, %i.axj             ; 6 uses
  %.not.i.i.i52.i.i.i.i = icmp slt i32 %i.axw, %i.axj
  br i1 %.not.i.i.i52.i.i.i.i, label %bb.ff, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i.i.i

bb.ff:                                            ; preds = %_ZSt4iotaIPiiEvT_S1_T0_.exit.i.i.i.i.i
  %i.azg = add i32 %i.aze, 63                     ; 2 uses
  %i.azh = srem i32 %i.azg, 64
  %i.azi = sub nsw i32 %i.azg, %i.azh             ; 6 uses
  %i.azj = and i32 %i.azf, -64                    ; 4 uses
  %i.azk = icmp slt i32 %i.azj, %i.azi
  br i1 %i.azk, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.azl = and i32 %i.azf, 63
  %i.azm = zext nneg i32 %i.azl to i64
  %notmask.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.azm
  %i.azn = sub nsw i32 %i.azi, %i.aze             ; 2 uses
  %i.azo = zext nneg i32 %i.azn to i64
  %notmask.i.i.i.i.i54.i.i.i.i = shl nsw i64 -1, %i.azo
  %i.azp = xor i64 %notmask.i.i.i.i.i54.i.i.i.i, -1
  %i.azq = sub nsw i32 64, %i.azn
  %i.azr = zext nneg i32 %i.azq to i64
  %i.azs = shl i64 %i.azp, %i.azr
  %.not.i55.i.i.i.i = xor i64 %i.azs, -1
  %i.azt = or i64 %notmask.i.i.i.i.i.i.i.i, %.not.i55.i.i.i.i
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.sink.split.i.i.i.i.i

bb.fh:                                            ; preds = %bb.ff
  %.not32.i.i.i.i.i.i.i = icmp eq i32 %i.aze, %i.azi
  br i1 %.not32.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i.i.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.azu = sdiv i32 %i.aze, 64
  %i.azv = sub nsw i32 %i.azi, %i.aze             ; 2 uses
  %i.azw = zext nneg i32 %i.azv to i64
  %notmask.i.i35.i.i.i.i.i.i.i = shl nsw i64 -1, %i.azw
  %i.azx = xor i64 %notmask.i.i35.i.i.i.i.i.i.i, -1
  %i.azy = sub nsw i32 64, %i.azv
  %i.azz = zext nneg i32 %i.azy to i64
  %i.baa = shl i64 %i.azx, %i.azz
  %i.bab = xor i64 %i.baa, -1
  %i.bac = sext i32 %i.azu to i64
  %i.bad = getelementptr inbounds [8 x i8], ptr %i.azd, i64 %i.bac ; 2 uses
  %i.bae = load i64, ptr %i.bad, align 8, !tbaa !160
  %i.baf = and i64 %i.bae, %i.bab
  store i64 %i.baf, ptr %i.bad, align 8, !tbaa !160
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i.i.i

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i.i.i: ; preds = %bb.fi, %bb.fh
  %i.bag = add nsw i32 %i.azi, 64                 ; 2 uses
  %.not3347.i.i.i.i.i.i.i = icmp sgt i32 %i.bag, %i.azj
  br i1 %.not3347.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i53.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i53.i.i.i.i, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i.i.i
  %.not34.i.i.i.i.i.i.i = icmp eq i32 %i.azf, %i.azj
  br i1 %.not34.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i.i.i, label %bb.fj

.lr.ph.i.i.i53.i.i.i.i:                           ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i.i.i, %.lr.ph.i.i.i53.i.i.i.i
  %i.bah = phi i32 [ %i.bal, %.lr.ph.i.i.i53.i.i.i.i ], [ %i.bag, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i.i.i ] ; 2 uses
  %.048.i.i.i.i.i.i.i = phi i32 [ %i.bah, %.lr.ph.i.i.i53.i.i.i.i ], [ %i.azi, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i.i.i.i.i ]
  %i.bai = sdiv i32 %.048.i.i.i.i.i.i.i, 64
  %i.baj = sext i32 %i.bai to i64
  %i.bak = getelementptr inbounds [8 x i8], ptr %i.azd, i64 %i.baj
  store i64 0, ptr %i.bak, align 8, !tbaa !160
  %i.bal = add nsw i32 %i.bah, 64                 ; 2 uses
  %.not33.i.i.i.i.i.i.i = icmp sgt i32 %i.bal, %i.azj
  br i1 %.not33.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i53.i.i.i.i, !llvm.loop !376

bb.fj:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.bam = and i32 %i.azf, 63
  %i.ban = zext nneg i32 %i.bam to i64
  %notmask.i37.i.i.i.i.i.i.i = shl nsw i64 -1, %i.ban
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.sink.split.i.i.i.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.sink.split.i.i.i.i.i: ; preds = %bb.fj, %bb.fg
  %.sink27.i.i.i.i.i = phi i64 [ %i.azt, %bb.fg ], [ %notmask.i37.i.i.i.i.i.i.i, %bb.fj ]
  %.sink.i.i.i.i.i = ashr i32 %i.azf, 6
  %i.bao = sext i32 %.sink.i.i.i.i.i to i64
end_hunk_1
