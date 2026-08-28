Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sat_solver?download=true
inline.NumInlined: 5240
inline.NumDeleted: 1637
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 101
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_ZN3sat6solver24learn_lemma_and_backjumpEv:bb.a
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !169
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.cn, i32 %.05661)
  %i.co = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.co
  %.sroa.012.0.copyload.1 = load i32, ptr %i.cp, align 4, !tbaa !175
  %i.cq = lshr i32 %.sroa.012.0.copyload.1, 1
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !169
  %.sroa.speculated.1 = tail call i32 @llvm.umax.i32(i32 %i.ct, i32 %.sroa.speculated) ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !787

.lr.ph97:                                         ; preds = %._crit_edge
  %i.cu = zext i32 %i.bw to i64
  br label %bb.o

bb.n:                                             ; preds = %bb.o
  %i.cv = icmp ugt i64 %i.cw, 1
  br i1 %i.cv, label %bb.o, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit37, !llvm.loop !788

bb.o:                                             ; preds = %.lr.ph97, %bb.n
  %indvars.iv6596 = phi i64 [ %i.cu, %.lr.ph97 ], [ %i.cw, %bb.n ]
  %i.cw = add nsw i64 %indvars.iv6596, -1         ; 4 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.cw
  %.sroa.0.0.copyload = load i32, ptr %i.cx, align 4, !tbaa !175 ; 2 uses
  %i.cy = lshr i32 %.sroa.0.0.copyload, 1
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 8, !tbaa !169
  %i.dc = icmp eq i32 %i.db, %.sroa.speculated.lcssa
  br i1 %i.dc, label %bb.p, label %bb.n, !llvm.loop !788

bb.p:                                             ; preds = %bb.o
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.cw
  store i32 %.sroa.015.0.copyload, ptr %i.dd, align 4, !tbaa !175
  store i32 %.sroa.0.0.copyload, ptr %i.bo, align 4, !tbaa !175
  %.pre69 = load i32, ptr %i.bv, align 4, !tbaa !175
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit37

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit37:   ; preds = %bb.n, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, %bb.p, %._crit_edge
  %.056.lcssa93 = phi i32 [ %.sroa.speculated.lcssa, %._crit_edge ], [ %.sroa.speculated.lcssa, %bb.p ], [ 0, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit ], [ %.sroa.speculated.lcssa, %bb.n ] ; 2 uses
  %i.de = phi i32 [ %i.bw, %._crit_edge ], [ %.pre69, %bb.p ], [ %i.bw, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit ], [ %i.bw, %bb.n ] ; 4 uses
  %.0 = phi i32 [ %i.bu, %._crit_edge ], [ %.sroa.speculated.lcssa, %bb.p ], [ %i.bu, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit ], [ %.sroa.speculated.lcssa, %bb.n ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 4168 ; 7 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 3612 ; 4 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !183
  %i.di = add i32 %i.dh, 1                        ; 6 uses
  %i.dj = load ptr, ptr %i.df, align 8, !tbaa !174 ; 3 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i, label %_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i

_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i:              ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit37
  %.not.i.i = icmp eq i32 %i.di, 0
  br i1 %.not.i.i, label %_ZN6vectorIcLb0EjE7reserveEjRKc.exit.i, label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.preheader

_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i:       ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit37
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 -4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !175 ; 2 uses
  %i.dn = icmp ugt i32 %i.di, %i.dm
  br i1 %i.dn, label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.preheader, label %_ZN6vectorIcLb0EjE7reserveEjRKc.exit.i

_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.preheader:  ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i, %_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i
  %.ph = phi ptr [ %i.dj, %_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i ], [ null, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i ]
  %.0.i17.i.i.i.ph = phi i32 [ %i.dm, %_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i ], [ 0, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i ] ; 2 uses
  br label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i:            ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.preheader, %_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i.i
  %i.do = phi ptr [ %.pr.pre.i.i.i, %_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i.i ], [ %.ph, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i.preheader ] ; 4 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i.i, label %_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i.i

_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i.i:        ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i
  %i.dq = getelementptr inbounds i8, ptr %i.do, i64 -8
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !175
  %i.ds = icmp ugt i32 %i.di, %i.dr
  br i1 %i.ds, label %_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i.i, label %bb.q

_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i.i: ; preds = %_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i.i, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i
  tail call void @_ZN6vectorIcLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.df)
  %.pr.pre.i.i.i = load ptr, ptr %i.df, align 8, !tbaa !174
  br label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i, !llvm.loop !235

bb.q:                                             ; preds = %_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i.i
  %i.dt = getelementptr inbounds i8, ptr %i.do, i64 -4
  store i32 %i.di, ptr %i.dt, align 4, !tbaa !175
  %.not1319.i.i.i = icmp eq i32 %.0.i17.i.i.i.ph, %i.di
  br i1 %.not1319.i.i.i, label %_ZN6vectorIcLb0EjE7reserveEjRKc.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.q
  %i.du = zext i32 %i.di to i64
  %i.dv = zext i32 %.0.i17.i.i.i.ph to i64        ; 2 uses
  %i.dw = getelementptr i8, ptr %i.do, i64 %i.dv
  %i.dx = sub nsw i64 %i.du, %i.dv
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dw, i8 0, i64 %i.dx, i1 false), !tbaa !189
  br label %_ZN6vectorIcLb0EjE7reserveEjRKc.exit.i

_ZN6vectorIcLb0EjE7reserveEjRKc.exit.i:           ; preds = %.lr.ph.preheader.i.i.i, %bb.q, %_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i
  %.not22.i = icmp eq i32 %i.de, 0
  br i1 %.not22.i, label %_ZN3sat6solver15num_diff_levelsEjPKNS_7literalE.exit, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %_ZN6vectorIcLb0EjE7reserveEjRKc.exit.i
  %wide.trip.count.i = zext i32 %i.de to i64      ; 3 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.lr.ph.i38
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i38 ], [ %indvars.iv.next.i, %bb.t ] ; 2 uses
  %.019.i = phi i32 [ 0, %.lr.ph.i38 ], [ %.1.i, %bb.t ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i
  %.sroa.03.0.copyload.i = load i32, ptr %i.dy, align 4, !tbaa !175
  %i.dz = lshr i32 %.sroa.03.0.copyload.i, 1
  %i.ea = load ptr, ptr %i.bp, align 8, !tbaa !224
  %i.eb = zext nneg i32 %i.dz to i64
  %i.ec = getelementptr inbounds nuw [24 x i8], ptr %i.ea, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !169
  %i.ee = load ptr, ptr %i.df, align 8, !tbaa !174
  %i.ef = zext i32 %i.ed to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ef ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !189
  %.not.i39 = icmp eq i8 %i.eh, 0
  br i1 %.not.i39, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i8 1, ptr %i.eg, align 1, !tbaa !189
  %i.ei = add i32 %.019.i, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1.i = phi i32 [ %.019.i, %bb.r ], [ %i.ei, %bb.s ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i.preheader, label %bb.r, !llvm.loop !789

.preheader.i.preheader:                           ; preds = %bb.t
  %xtraiter103 = and i64 %wide.trip.count.i, 1
  %i.ej = icmp eq i32 %i.de, 1
  br i1 %i.ej, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter106 = and i64 %wide.trip.count.i, 4294967294
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %indvars.iv25.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %indvars.iv.next26.i.1, %.preheader.i ] ; 3 uses
  %niter107 = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter107.next.1, %.preheader.i ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv25.i
  %.sroa.0.0.copyload.i40 = load i32, ptr %i.ek, align 4, !tbaa !175
  %i.el = lshr i32 %.sroa.0.0.copyload.i40, 1
  %i.em = load ptr, ptr %i.bp, align 8, !tbaa !224
  %i.en = zext nneg i32 %i.el to i64
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %i.em, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !169
  %i.eq = load ptr, ptr %i.df, align 8, !tbaa !174
  %i.er = zext i32 %i.ep to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.er
  store i8 0, ptr %i.es, align 1, !tbaa !189
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv25.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %.sroa.0.0.copyload.i40.1 = load i32, ptr %i.eu, align 4, !tbaa !175
  %i.ev = lshr i32 %.sroa.0.0.copyload.i40.1, 1
  %i.ew = load ptr, ptr %i.bp, align 8, !tbaa !224
  %i.ex = zext nneg i32 %i.ev to i64
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %i.ew, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !169
  %i.fa = load ptr, ptr %i.df, align 8, !tbaa !174
  %i.fb = zext i32 %i.ez to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fb
  store i8 0, ptr %i.fc, align 1, !tbaa !189
  %indvars.iv.next26.i.1 = add nuw nsw i64 %indvars.iv25.i, 2 ; 2 uses
  %niter107.next.1 = add i64 %niter107, 2         ; 2 uses
  %niter107.ncmp.1 = icmp eq i64 %niter107.next.1, %unroll_iter106
  br i1 %niter107.ncmp.1, label %_ZN3sat6solver15num_diff_levelsEjPKNS_7literalE.exit.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !790

_ZN3sat6solver15num_diff_levelsEjPKNS_7literalE.exit.loopexit.unr-lcssa: ; preds = %.preheader.i
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod104.not, label %_ZN3sat6solver15num_diff_levelsEjPKNS_7literalE.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %_ZN3sat6solver15num_diff_levelsEjPKNS_7literalE.exit.loopexit.unr-lcssa, %.preheader.i.preheader
  %indvars.iv25.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %indvars.iv.next26.i.1, %_ZN3sat6solver15num_diff_levelsEjPKNS_7literalE.exit.loopexit.unr-lcssa ]
  %lcmp.mod105 = trunc i32 %i.de to i1
  tail call void @llvm.assume(i1 %lcmp.mod105)
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv25.i.epil.init
  %.sroa.0.0.copyload.i40.epil = load i32, ptr %i.fd, align 4, !tbaa !175
  %i.fe = lshr i32 %.sroa.0.0.copyload.i40.epil, 1
  %i.ff = load ptr, ptr %i.bp, align 8, !tbaa !224
  %i.fg = zext nneg i32 %i.fe to i64
  %i.fh = getelementptr inbounds nuw [24 x i8], ptr %i.ff, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !169
  %i.fj = load ptr, ptr %i.df, align 8, !tbaa !174
  %i.fk = zext i32 %i.fi to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fk
  store i8 0, ptr %i.fl, align 1, !tbaa !189
  br label %_ZN3sat6solver15num_diff_levelsEjPKNS_7literalE.exit

_ZN3sat6solver15num_diff_levelsEjPKNS_7literalE.exit: ; preds = %.preheader.i.epil.preheader, %_ZN3sat6solver15num_diff_levelsEjPKNS_7literalE.exit.loopexit.unr-lcssa, %_ZN6vectorIcLb0EjE7reserveEjRKc.exit.i
  %.0.lcssa36.i = phi i32 [ 0, %_ZN6vectorIcLb0EjE7reserveEjRKc.exit.i ], [ %.1.i, %_ZN3sat6solver15num_diff_levelsEjPKNS_7literalE.exit.loopexit.unr-lcssa ], [ %.1.i, %.preheader.i.epil.preheader ] ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 3624
  %i.fn = uitofp i32 %.0.lcssa36.i to double      ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 3632 ; 3 uses
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !186 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 3640 ; 2 uses
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !726 ; 2 uses
  %i.fs = fsub double %i.fn, %i.fr
  %i.ft = tail call double @llvm.fmuladd.f64(double %i.fp, double %i.fs, double %i.fr)
  store double %i.ft, ptr %i.fq, align 8, !tbaa !726
  %i.fu = load double, ptr %i.fm, align 8, !tbaa !208 ; 3 uses
  %i.fv = fcmp ugt double %i.fp, %i.fu
  br i1 %i.fv, label %bb.u, label %_ZN3ema6updateEd.exit

bb.u:                                             ; preds = %_ZN3sat6solver15num_diff_levelsEjPKNS_7literalE.exit
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 3652 ; 3 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !791 ; 2 uses
  %i.fy = add i32 %i.fx, -1
  store i32 %i.fy, ptr %i.fw, align 4, !tbaa !791
  %.not.i41 = icmp eq i32 %i.fx, 0
  br i1 %.not.i41, label %bb.v, label %_ZN3ema6updateEd.exit

bb.v:                                             ; preds = %bb.u
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 3648 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !792
  %i.gb = shl i32 %i.ga, 1
  %i.gc = or disjoint i32 %i.gb, 1                ; 2 uses
  store i32 %i.gc, ptr %i.fz, align 8, !tbaa !792
  store i32 %i.gc, ptr %i.fw, align 4, !tbaa !791
  %i.gd = fmul double %i.fp, 5.000000e-01         ; 2 uses
  store double %i.gd, ptr %i.fo, align 8, !tbaa !186
  %3 = fcmp olt double %i.gd, %i.fu
  br i1 %3, label %4, label %_ZN3ema6updateEd.exit

4:                                                ; preds = %bb.v
  store double %i.fu, ptr %i.fo, align 8, !tbaa !186
  br label %_ZN3ema6updateEd.exit

_ZN3ema6updateEd.exit:                            ; preds = %_ZN3sat6solver15num_diff_levelsEjPKNS_7literalE.exit, %bb.u, %bb.v, %4
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 3656
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 3664 ; 3 uses
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !186 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 3672 ; 2 uses
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !726 ; 2 uses
  %i.gj = fsub double %i.fn, %i.gi
  %i.gk = tail call double @llvm.fmuladd.f64(double %i.gg, double %i.gj, double %i.gi)
  store double %i.gk, ptr %i.gh, align 8, !tbaa !726
  %i.gl = load double, ptr %i.ge, align 8, !tbaa !208 ; 3 uses
  %i.gm = fcmp ugt double %i.gg, %i.gl
  br i1 %i.gm, label %bb.w, label %_ZN3ema6updateEd.exit43

bb.w:                                             ; preds = %_ZN3ema6updateEd.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 3684 ; 3 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !791 ; 2 uses
  %i.gp = add i32 %i.go, -1
  store i32 %i.gp, ptr %i.gn, align 4, !tbaa !791
  %.not.i42 = icmp eq i32 %i.go, 0
  br i1 %.not.i42, label %bb.x, label %_ZN3ema6updateEd.exit43

bb.x:                                             ; preds = %bb.w
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 3680 ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !792
  %i.gs = shl i32 %i.gr, 1
  %i.gt = or disjoint i32 %i.gs, 1                ; 2 uses
  store i32 %i.gt, ptr %i.gq, align 8, !tbaa !792
  store i32 %i.gt, ptr %i.gn, align 4, !tbaa !791
  %i.gu = fmul double %i.gg, 5.000000e-01         ; 2 uses
  store double %i.gu, ptr %i.gf, align 8, !tbaa !186
  %5 = fcmp olt double %i.gu, %i.gl
  br i1 %5, label %6, label %_ZN3ema6updateEd.exit43

6:                                                ; preds = %bb.x
  store double %i.gl, ptr %i.gf, align 8, !tbaa !186
  br label %_ZN3ema6updateEd.exit43

_ZN3ema6updateEd.exit43:                          ; preds = %_ZN3ema6updateEd.exit, %bb.w, %bb.x, %6
  %i.gv = load i32, ptr %i.dg, align 4, !tbaa !183 ; 3 uses
  %i.gw = sub i32 %i.gv, %.056.lcssa93            ; 2 uses
  %.not.i44 = icmp eq i32 %i.gv, %.056.lcssa93
  br i1 %.not.i44, label %_ZNK3sat6solver15use_backjumpingEj.exit.thread57, label %bb.y

bb.y:                                             ; preds = %_ZN3ema6updateEd.exit43
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !793
  %.not2.i = icmp ugt i32 %i.gw, %i.gy
  br i1 %.not2.i, label %_ZNK3sat6solver15use_backjumpingEj.exit, label %_ZNK3sat6solver15use_backjumpingEj.exit.thread

_ZNK3sat6solver15use_backjumpingEj.exit:          ; preds = %bb.y
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 4032
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !212
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !732
  %.not = icmp ugt i32 %i.ha, %i.hc
  br i1 %.not, label %_ZNK3sat6solver15use_backjumpingEj.exit.thread57, label %_ZNK3sat6solver15use_backjumpingEj.exit.thread

_ZNK3sat6solver15use_backjumpingEj.exit.thread:   ; preds = %bb.y, %_ZNK3sat6solver15use_backjumpingEj.exit
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !794
  %i.hf = add i32 %i.he, 1
  store i32 %i.hf, ptr %i.hd, align 8, !tbaa !794
  tail call void @_ZN3sat6solver3popEj(ptr noundef nonnull align 8 dereferenceable(4264) %0, i32 noundef %i.gw)
  tail call void @_ZN3sat6solver12exchange_parEv(ptr noundef nonnull align 8 dereferenceable(4264) %0)
  tail call void @_ZN3sat6solver18reinit_assumptionsEv(ptr noundef nonnull align 8 dereferenceable(4264) %0)
  %i.hg = load i32, ptr %i.dg, align 4, !tbaa !183
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %_ZNK3sat6solver15use_backjumpingEj.exit.thread
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 3784
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !197 ; 2 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %_ZN3sat6solver10pop_reinitEj.exit45, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hl = getelementptr inbounds i8, ptr %i.hj, i64 -4
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !175
  br label %_ZN3sat6solver10pop_reinitEj.exit45

bb.ab:                                            ; preds = %_ZNK3sat6solver15use_backjumpingEj.exit.thread
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 3856
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !247
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !299
  br label %_ZN3sat6solver10pop_reinitEj.exit45

_ZNK3sat6solver15use_backjumpingEj.exit.thread57: ; preds = %_ZN3ema6updateEd.exit43, %_ZNK3sat6solver15use_backjumpingEj.exit
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 508 ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !733
  %i.hs = add i32 %i.hr, 1
  store i32 %i.hs, ptr %i.hq, align 4, !tbaa !733
  %reass.sub = sub i32 %i.gv, %.0
  %i.ht = add i32 %reass.sub, 1
  tail call void @_ZN3sat6solver3popEj(ptr noundef nonnull align 8 dereferenceable(4264) %0, i32 noundef %i.ht)
  tail call void @_ZN3sat6solver12exchange_parEv(ptr noundef nonnull align 8 dereferenceable(4264) %0)
  tail call void @_ZN3sat6solver18reinit_assumptionsEv(ptr noundef nonnull align 8 dereferenceable(4264) %0)
  %i.hu = load i32, ptr %i.dg, align 4, !tbaa !183
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %_ZNK3sat6solver15use_backjumpingEj.exit.thread57
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 3784
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !197 ; 2 uses
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %_ZN3sat6solver10pop_reinitEj.exit45, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hz = getelementptr inbounds i8, ptr %i.hx, i64 -4
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !175
  br label %_ZN3sat6solver10pop_reinitEj.exit45

bb.ae:                                            ; preds = %_ZNK3sat6solver15use_backjumpingEj.exit.thread57
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 3856
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !247
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !299
  br label %_ZN3sat6solver10pop_reinitEj.exit45

_ZN3sat6solver10pop_reinitEj.exit45:              ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.sink = phi i32 [ 0, %bb.z ], [ %i.hp, %bb.ab ], [ %i.hm, %bb.aa ], [ %i.id, %bb.ae ], [ %i.ia, %bb.ad ], [ 0, %bb.ac ]
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i32 %.sink, ptr %i.ie, align 8, !tbaa !477
  %i.if = load ptr, ptr %i.a, align 8, !tbaa !197 ; 3 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit48, label %bb.af

bb.af:                                            ; preds = %_ZN3sat6solver10pop_reinitEj.exit45
  %i.ih = getelementptr inbounds i8, ptr %i.if, i64 -4
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !175
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit48

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit48:   ; preds = %_ZN3sat6solver10pop_reinitEj.exit45, %bb.af
  %.0.i47 = phi i32 [ %i.ii, %bb.af ], [ 0, %_ZN3sat6solver10pop_reinitEj.exit45 ]
  store i32 2, ptr %2, align 8, !tbaa !280, !alias.scope !795
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 -1, ptr %i.ij, align 4, !tbaa !287, !alias.scope !795
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.ik, align 8, !tbaa !288, !alias.scope !795
  %i.il = call noundef ptr @_ZN3sat6solver14mk_clause_coreEjPNS_7literalENS_6statusE(ptr noundef nonnull align 8 dereferenceable(4264) %0, i32 noundef %.0.i47, ptr noundef %i.if, ptr noundef nonnull align 8 dead_on_return %2) ; 3 uses
  %.not59 = icmp eq ptr %i.il, null
  br i1 %.not59, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit48
  %i.im = tail call i32 @llvm.umin.i32(i32 %.0.lcssa36.i, i32 255)
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 16 ; 2 uses
  %i.io = load i32, ptr %i.in, align 4
  %i.ip = shl nuw nsw i32 %i.im, 14
  %i.iq = and i32 %i.io, -4177921
  %i.ir = or disjoint i32 %i.iq, %i.ip
  store i32 %i.ir, ptr %i.in, align 4
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !304 ; 2 uses
  %.not60 = icmp eq ptr %i.it, null
  br i1 %.not60, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @_ZN3sat8parallel12share_clauseERNS_6solverERKNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(176) %i.it, ptr noundef nonnull align 8 dereferenceable(4264) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.il)
  br label %.thread

.thread:                                          ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit48, %bb.ah, %bb.ag
  %i.iu = load ptr, ptr %i.a, align 8, !tbaa !197 ; 2 uses
  %.not.i49 = icmp eq ptr %i.iu, null
  br i1 %.not.i49, label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit, label %bb.ai

bb.ai:                                            ; preds = %.thread
  %i.iv = getelementptr inbounds i8, ptr %i.iu, i64 -4
  store i32 0, ptr %i.iv, align 4, !tbaa !175
  br label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit

_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit:     ; preds = %.thread, %bb.ai
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !798
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 3368 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !173
  %i.ja = mul i32 %i.iz, %i.ix
  %i.jb = udiv i32 %i.ja, 100
  store i32 %i.jb, ptr %i.iy, align 8, !tbaa !173
  tail call void @_ZN3sat6solver19updt_phase_countersEv(ptr noundef nonnull align 8 dereferenceable(4264) %0)
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit, %_ZN3sat6solver10pop_reinitEj.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN3sat6solver34skip_literals_above_conflict_levelEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4264) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3784
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !197  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !175  ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread, label %.preheader

.preheader:                                       ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !224
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4144
  %i.j = load i32, ptr %i.i, align 8, !tbaa !312
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %.07.in = phi i32 [ %.07, %bb.b ], [ %i.e, %.preheader ]
  %.07 = add i32 %.07.in, -1                      ; 3 uses
  %i.k = zext i32 %.07 to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.k
  %.sroa.0.0.copyload = load i32, ptr %i.l, align 4, !tbaa !175
  %i.m = lshr i32 %.sroa.0.0.copyload, 1
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.n
  %i.p = load i32, ptr %i.o, align 8, !tbaa !169
  %i.q = icmp ugt i32 %i.p, %i.j
  br i1 %i.q, label %bb.b, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread, !llvm.loop !314

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread: ; preds = %bb.b, %bb.a, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %.0 = phi i32 [ 0, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit ], [ 0, %bb.a ], [ %.07, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat6solver18process_antecedentENS_7literalERj(ptr noundef nonnull align 8 dereferenceable(4264) %0, i32 %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = lshr i32 %1, 1                           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !224
  %i.d = zext nneg i32 %i.a to i64                ; 5 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !169  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3296
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !233
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !234, !range !257, !noundef !258
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = icmp eq i32 %i.f, 0
  %or.cond.not = or i1 %i.l, %i.k
end_hunk_0
begin_hunk_1_@_ZN3sat6solver15num_diff_levelsEjPKNS_7literalE:bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !175  ; 2 uses
  %i.i = icmp ugt i32 %i.d, %i.h
  br i1 %i.i, label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.preheader, label %_ZN6vectorIcLb0EjE7reserveEjRKc.exit

_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.preheader:    ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i, %_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i
  %.ph = phi ptr [ %i.e, %_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i ], [ null, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i ]
  %.0.i17.i.i.ph = phi i32 [ %i.h, %_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i ], [ 0, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i ] ; 2 uses
  br label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i:              ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.preheader, %_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i
  %i.j = phi ptr [ %.pr.pre.i.i, %_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i ], [ %.ph, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.preheader ] ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i

_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i:          ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !175
  %i.n = icmp ugt i32 %i.d, %i.m
  br i1 %i.n, label %_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i, label %bb.b

_ZNK6vectorIcLb0EjE8capacityEv.exit.thread.i.i:   ; preds = %_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i
  tail call void @_ZN6vectorIcLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pr.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !174
  br label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i, !llvm.loop !235

bb.b:                                             ; preds = %_ZNK6vectorIcLb0EjE8capacityEv.exit.i.i
  %i.o = getelementptr inbounds i8, ptr %i.j, i64 -4
  store i32 %i.d, ptr %i.o, align 4, !tbaa !175
  %.not1319.i.i = icmp eq i32 %.0.i17.i.i.ph, %i.d
  br i1 %.not1319.i.i, label %_ZN6vectorIcLb0EjE7reserveEjRKc.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.p = zext i32 %i.d to i64
  %i.q = zext i32 %.0.i17.i.i.ph to i64           ; 2 uses
  %i.r = getelementptr i8, ptr %i.j, i64 %i.q
  %i.s = sub nsw i64 %i.p, %i.q
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 0, i64 %i.s, i1 false), !tbaa !189
  br label %_ZN6vectorIcLb0EjE7reserveEjRKc.exit

_ZN6vectorIcLb0EjE7reserveEjRKc.exit:             ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i, %_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i, %bb.b, %.lr.ph.preheader.i.i
  %.not22 = icmp eq i32 %1, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorIcLb0EjE7reserveEjRKc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %wide.trip.count = zext i32 %1 to i64           ; 3 uses
  br label %bb.c

.lr.ph21:                                         ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3280 ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.v = icmp eq i32 %1, 1
  br i1 %i.v, label %.epil.preheader, label %.lr.ph21.new

.lr.ph21.new:                                     ; preds = %.lr.ph21
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.019 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.e ]  ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %.sroa.03.0.copyload = load i32, ptr %i.w, align 4, !tbaa !175
  %i.x = lshr i32 %.sroa.03.0.copyload, 1
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !224
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !169
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !174
  %i.ad = zext i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !189
  %.not = icmp eq i8 %i.af, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.ae, align 1, !tbaa !189
  %i.ag = add i32 %.019, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %.019, %bb.c ], [ %i.ag, %bb.d ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph21, label %bb.c, !llvm.loop !789

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph21
  %indvars.iv25.epil.init = phi i64 [ 0, %.lr.ph21 ], [ %indvars.iv.next26.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod37 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv25.epil.init
  %.sroa.0.0.copyload.epil = load i32, ptr %i.ah, align 4, !tbaa !175
  %i.ai = lshr i32 %.sroa.0.0.copyload.epil, 1
  %i.aj = load ptr, ptr %i.u, align 8, !tbaa !224
  %i.ak = zext nneg i32 %i.ai to i64
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 8, !tbaa !169
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !174
  %i.ao = zext i32 %i.am to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  store i8 0, ptr %i.ap, align 1, !tbaa !189
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZN6vectorIcLb0EjE7reserveEjRKc.exit
  %.0.lcssa36 = phi i32 [ 0, %_ZN6vectorIcLb0EjE7reserveEjRKc.exit ], [ %.1, %._crit_edge.loopexit.unr-lcssa ], [ %.1, %.epil.preheader ]
  ret i32 %.0.lcssa36

bb.f:                                             ; preds = %bb.f, %.lr.ph21.new
  %indvars.iv25 = phi i64 [ 0, %.lr.ph21.new ], [ %indvars.iv.next26.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph21.new ], [ %niter.next.1, %bb.f ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv25
  %.sroa.0.0.copyload = load i32, ptr %i.aq, align 4, !tbaa !175
  %i.ar = lshr i32 %.sroa.0.0.copyload, 1
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !224
  %i.at = zext nneg i32 %i.ar to i64
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 8, !tbaa !169
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !174
  %i.ax = zext i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ax
  store i8 0, ptr %i.ay, align 1, !tbaa !189
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv25
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %.sroa.0.0.copyload.1 = load i32, ptr %i.ba, align 4, !tbaa !175
  %i.bb = lshr i32 %.sroa.0.0.copyload.1, 1
  %i.bc = load ptr, ptr %i.u, align 8, !tbaa !224
  %i.bd = zext nneg i32 %i.bb to i64
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !169
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !174
  %i.bh = zext i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh
  store i8 0, ptr %i.bi, align 1, !tbaa !189
  %indvars.iv.next26.1 = add nuw nsw i64 %indvars.iv25, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.f, !llvm.loop !790
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK3sat6solver15use_backjumpingEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4264) %0, i32 noundef %1) local_unnamed_addr #21 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.b = load i32, ptr %i.a, align 4, !tbaa !793
  %.not2 = icmp ugt i32 %1, %i.b
  br i1 %.not2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4032
  %i.d = load i32, ptr %i.c, align 8, !tbaa !212
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.f = load i32, ptr %i.e, align 8, !tbaa !732
  %i.g = icmp ule i32 %i.d, %i.f
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %i.h
}

declare void @_ZN3sat8parallel12share_clauseERNS_6solverERKNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef nonnull align 8 dereferenceable(4264), ptr noundef nonnull align 4 dereferenceable(20)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN3sat6solver19updt_phase_countersEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(4264) %0) local_unnamed_addr #19 align 2 {
bb.a:
  %1 = alloca %class.ema, align 8                 ; 4 uses
  %2 = alloca %class.ema, align 8                 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3504 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !573
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !573
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3488 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !574  ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %i.f, label %bb.b, label %_ZN3ema6updateEd.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3752
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3784
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !197  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !175
  %i.m = uitofp i32 %i.l to double
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i:   ; preds = %bb.c, %bb.b
  %.0.i.i = phi double [ %i.m, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3760 ; 3 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !186 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3768 ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !726 ; 2 uses
  %i.r = fsub double %.0.i.i, %i.q
  %i.s = tail call double @llvm.fmuladd.f64(double %i.o, double %i.r, double %i.q)
  store double %i.s, ptr %i.p, align 8, !tbaa !726
  %i.t = load double, ptr %i.g, align 8, !tbaa !208 ; 3 uses
  %i.u = fcmp ugt double %i.o, %i.t
  br i1 %i.u, label %bb.d, label %_ZN3ema6updateEd.exit.i

bb.d:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3780 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !791  ; 2 uses
  %i.x = add i32 %i.w, -1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !791
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %bb.e, label %_ZN3ema6updateEd.exit.i

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3776 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !792
  %i.aa = shl i32 %i.z, 1
  %i.ab = or disjoint i32 %i.aa, 1                ; 2 uses
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !792
  store i32 %i.ab, ptr %i.v, align 4, !tbaa !791
  %i.ac = fmul double %i.o, 5.000000e-01          ; 2 uses
  store double %i.ac, ptr %i.n, align 8, !tbaa !186
  %3 = fcmp olt double %i.ac, %i.t
  br i1 %3, label %4, label %_ZN3ema6updateEd.exit.i

4:                                                ; preds = %bb.e
  store double %i.t, ptr %i.n, align 8, !tbaa !186
  br label %_ZN3ema6updateEd.exit.i

_ZN3ema6updateEd.exit.i:                          ; preds = %4, %bb.e, %bb.d, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 3500 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !813
  %.not.i = icmp ult i32 %i.c, %i.ae
  br i1 %.not.i, label %_ZN3sat6solver26should_toggle_search_stateEv.exit.thread1, label %bb.f

bb.f:                                             ; preds = %_ZN3ema6updateEd.exit.i
  %i.af = icmp eq i32 %i.e, 0                     ; 2 uses
  br i1 %i.af, label %_ZN3sat6solver26should_toggle_search_stateEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 3784
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !197 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZN3sat6solver26should_toggle_search_stateEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !175
  %i.al = uitofp i32 %i.ak to double
  br label %_ZN3sat6solver26should_toggle_search_stateEv.exit

_ZN3sat6solver26should_toggle_search_stateEv.exit: ; preds = %bb.g, %bb.h
  %.0.i1.i = phi double [ %i.al, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 3768
  %i.an = load double, ptr %i.am, align 8, !tbaa !726
  %i.ao = fmul double %i.an, 5.000000e-01
  %i.ap = fcmp olt double %i.ao, %.0.i1.i
  br i1 %i.ap, label %_ZN3sat6solver26should_toggle_search_stateEv.exit.thread, label %_ZN3sat6solver26should_toggle_search_stateEv.exit.thread1

_ZN3sat6solver26should_toggle_search_stateEv.exit.thread: ; preds = %bb.f, %_ZN3sat6solver26should_toggle_search_stateEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !514
  %i.as = add i32 %i.ar, -3
  %spec.select.i.i = icmp ult i32 %i.as, 2
  br i1 %spec.select.i.i, label %bb.i, label %._crit_edge.i

bb.i:                                             ; preds = %_ZN3sat6solver26should_toggle_search_stateEv.exit.thread
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 3508
  store i32 0, ptr %i.at, align 4, !tbaa !210
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 3688 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 3624 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false), !tbaa.struct !814
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 32, i1 false), !tbaa.struct !814
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !814
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 3720 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 3656 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 32, i1 false), !tbaa.struct !814
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false), !tbaa.struct !814
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !814
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br i1 %i.af, label %.thread.i, label %bb.j

.thread.i:                                        ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !575
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 3492 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !576
  %i.bc = add i32 %i.bb, %i.az
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !576
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !815
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 3496 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !816
  %i.bh = add i32 %i.bg, %i.be
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !816
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN3sat6solver26should_toggle_search_stateEv.exit.thread, %bb.j
  br i1 %i.f, label %_ZN3sat6solver22do_toggle_search_stateEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %.thread.i
  br label %_ZN3sat6solver22do_toggle_search_stateEv.exit

_ZN3sat6solver22do_toggle_search_stateEv.exit:    ; preds = %._crit_edge.i, %bb.k
  %.sink2.i = phi i64 [ 3492, %bb.k ], [ 3496, %._crit_edge.i ]
  %.sink1.i = phi i32 [ 1, %bb.k ], [ 0, %._crit_edge.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %.sink2.i
  %.sink.i = load i32, ptr %i.bi, align 4, !tbaa !175
  store i32 %.sink1.i, ptr %i.d, align 8, !tbaa !574
  store i32 %.sink.i, ptr %i.ad, align 4, !tbaa !813
  store i32 0, ptr %i.a, align 8, !tbaa !573
  br label %_ZN3sat6solver26should_toggle_search_stateEv.exit.thread1

_ZN3sat6solver26should_toggle_search_stateEv.exit.thread1: ; preds = %_ZN3ema6updateEd.exit.i, %_ZN3sat6solver22do_toggle_search_stateEv.exit, %_ZN3sat6solver26should_toggle_search_stateEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat6solver33process_antecedent_for_unsat_coreENS_7literalE(ptr noundef nonnull align 8 dereferenceable(4264) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = lshr i32 %1, 1                           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3296
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !233
  %i.d = zext nneg i32 %i.a to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !234, !range !257, !noundef !258
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZNK3sat6solver13is_assumptionENS_7literalE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.e, align 1, !tbaa !234
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4176 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !221  ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !175  ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !175
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %_ZN6vectorIjLb0EjE9push_backERKj.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !221 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !175
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.c, %bb.d
  %i.p = phi i32 [ %.pre2.i, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  %i.q = phi ptr [ %.pre.i, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4
  %i.s = zext i32 %i.p to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.s
  store i32 %i.a, ptr %i.t, align 4, !tbaa !175
  %i.u = add i32 %i.p, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !175
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3928
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !197  ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i: ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !175
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i, %_ZN6vectorIjLb0EjE9push_backERKj.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4200
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !197 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.i.i

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.i.i: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !175
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i

_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.i.i, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.thread.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !217 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %_ZNK3sat6solver13is_assumptionENS_7literalE.exit.thread, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.i

_ZNK3sat6solver20tracking_assumptionsEv.exit.i:   ; preds = %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.thread.i.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 344
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %i.ai), !inline_history !316
  br i1 %i.am, label %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i, label %_ZNK3sat6solver13is_assumptionENS_7literalE.exit.thread

_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i: ; preds = %_ZNK3sat6solver20tracking_assumptionsEv.exit.i, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit1.i.i, %_ZNK6vectorIN3sat7literalELb0EjE5emptyEv.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 3936
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !174 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZNK3sat11literal_set8containsENS_7literalE.exit.thread.i, label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i:            ; preds = %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !175
  %i.as = icmp ult i32 %1, %i.ar
  br i1 %i.as, label %_ZNK3sat11literal_set8containsENS_7literalE.exit.i, label %_ZNK3sat11literal_set8containsENS_7literalE.exit.thread.i

_ZNK3sat11literal_set8containsENS_7literalE.exit.i: ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i
  %i.at = zext i32 %1 to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !189
  %.not.i = icmp eq i8 %i.av, 0
  br i1 %.not.i, label %_ZNK3sat11literal_set8containsENS_7literalE.exit.thread.i, label %_ZNK3sat6solver13is_assumptionENS_7literalE.exit.thread7

_ZNK3sat11literal_set8containsENS_7literalE.exit.thread.i: ; preds = %_ZNK3sat11literal_set8containsENS_7literalE.exit.i, %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i.i, %_ZNK3sat6solver20tracking_assumptionsEv.exit.thread.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 3952
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !174 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_ZNK3sat6solver13is_assumptionENS_7literalE.exit.thread, label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i4.i

_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i4.i:           ; preds = %_ZNK3sat11literal_set8containsENS_7literalE.exit.thread.i
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !175
end_hunk_1
begin_hunk_2_@_ZN3sat6solver33process_consequent_for_unsat_coreENS_7literalERKNS_13justificationE:bb.a
  %i.u = load i32, ptr %i.t, align 4, !tbaa !278  ; 2 uses
  %i.v = icmp ult i32 %.0, %i.u
  br i1 %i.v, label %.lr.ph37, label %.loopexit

.lr.ph37:                                         ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.x = zext nneg i32 %.0 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph37, %bb.g
  %indvars.iv = phi i64 [ %i.x, %.lr.ph37 ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %.sroa.08.0.copyload = load i32, ptr %i.y, align 4, !tbaa !175
  %i.z = xor i32 %.sroa.08.0.copyload, 1
  tail call void @_ZN3sat6solver33process_antecedent_for_unsat_coreENS_7literalE(ptr noundef nonnull align 8 dereferenceable(4264) %0, i32 %i.z)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.u, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !817

bb.h:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !232
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4160 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !197 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZN3sat6solver20fill_ext_antecedentsENS_7literalENS_13justificationEb.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -4
  store i32 0, ptr %i.ac, align 4, !tbaa !175
  br label %_ZN3sat6solver20fill_ext_antecedentsENS_7literalENS_13justificationEb.exit

_ZN3sat6solver20fill_ext_antecedentsENS_7literalENS_13justificationEb.exit: ; preds = %bb.h, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !217 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i32 %1, i64 noundef %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i1 noundef zeroext false), !inline_history !313
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !197 ; 4 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.loopexit, label %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit

_ZN6vectorIN3sat7literalELb0EjE3endEv.exit:       ; preds = %_ZN3sat6solver20fill_ext_antecedentsENS_7literalENS_13justificationEb.exit
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !175 ; 2 uses
  %i.am = zext i32 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.an
  %.not34 = icmp eq i32 %i.al, 0
  br i1 %.not34, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit, %.lr.ph
  %.02635 = phi ptr [ %i.ap, %.lr.ph ], [ %i.ai, %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit ] ; 2 uses
  %.sroa.01.0.copyload = load i32, ptr %.02635, align 4, !tbaa !175
  tail call void @_ZN3sat6solver33process_antecedent_for_unsat_coreENS_7literalE(ptr noundef nonnull align 8 dereferenceable(4264) %0, i32 %.sroa.01.0.copyload)
  %i.ap = getelementptr inbounds nuw i8, ptr %.02635, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ap, %i.ao
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.j:                                             ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 2766, ptr noundef nonnull @.str.12)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.g, %_ZN3sat6solver20fill_ext_antecedentsENS_7literalENS_13justificationEb.exit, %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit, %bb.f, %bb.j, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN3sat6solver12reset_unmarkEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4264) %0, i32 noundef %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !221  ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6vectorIjLb0EjE6shrinkEj.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit

_ZNK6vectorIjLb0EjE4sizeEv.exit:                  ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !175  ; 2 uses
  %i.f = icmp ult i32 %1, %i.e
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3296
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !233  ; 5 uses
  %i.i = zext i32 %1 to i64                       ; 4 uses
  %wide.trip.count = zext i32 %i.e to i64         ; 3 uses
  %i.j = sub nsw i64 %wide.trip.count, %i.i
  %xtraiter = and i64 %i.j, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.i, %.lr.ph ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.prol
  %i.l = load i32, ptr %i.k, align 4, !tbaa !175
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.m
  store i8 0, ptr %i.n, align 1, !tbaa !234
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !818

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.i, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.o = sub nsw i64 %i.i, %wide.trip.count
  %i.p = icmp ugt i64 %i.o, -4
  br i1 %i.p, label %.loopexit, label %.lr.ph.new

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph.new, %_ZNK6vectorIjLb0EjE4sizeEv.exit
  %i.q = getelementptr inbounds i8, ptr %i.b, i64 -4
  store i32 %1, ptr %i.q, align 4, !tbaa !175
  br label %_ZN6vectorIjLb0EjE6shrinkEj.exit

_ZN6vectorIjLb0EjE6shrinkEj.exit:                 ; preds = %bb.a, %.loopexit
  ret void

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 5 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !175
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.t
  store i8 0, ptr %i.u, align 1, !tbaa !234
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !175
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.y
  store i8 0, ptr %i.z, align 1, !tbaa !234
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !175
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ad
  store i8 0, ptr %i.ae, align 1, !tbaa !234
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !175
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ai
  store i8 0, ptr %i.aj, align 1, !tbaa !234
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph.new, !llvm.loop !320
}

declare noundef i32 @_ZN3sat3musclEv(ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK3sat6solver12is_two_phaseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4264) %0) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !514
  %i.c = add i32 %i.b, -3
  %spec.select = icmp ult i32 %i.c, 2
  ret i1 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK3sat6solver12is_sat_phaseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4264) %0) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !514
  %i.c = add i32 %i.b, -3
  %spec.select.i = icmp ult i32 %i.c, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3488
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 0
  %i.g = select i1 %spec.select.i, i1 %i.f, i1 false
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN3sat6solver26should_toggle_search_stateEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(4264) %0) local_unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3488
  %i.b = load i32, ptr %i.a, align 8, !tbaa !574  ; 2 uses
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZN3ema6updateEd.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3752
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3784
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !197  ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !175
  %i.j = uitofp i32 %i.i to double
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %bb.b, %bb.c
  %.0.i = phi double [ %i.j, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3760 ; 3 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !186 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3768 ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !726 ; 2 uses
  %i.o = fsub double %.0.i, %i.n
  %i.p = tail call double @llvm.fmuladd.f64(double %i.l, double %i.o, double %i.n)
  store double %i.p, ptr %i.m, align 8, !tbaa !726
  %i.q = load double, ptr %i.d, align 8, !tbaa !208 ; 3 uses
  %i.r = fcmp ugt double %i.l, %i.q
  br i1 %i.r, label %bb.d, label %_ZN3ema6updateEd.exit

bb.d:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3780 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !791  ; 2 uses
  %i.u = add i32 %i.t, -1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !791
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.e, label %_ZN3ema6updateEd.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3776 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !792
  %i.x = shl i32 %i.w, 1
  %i.y = or disjoint i32 %i.x, 1                  ; 2 uses
  store i32 %i.y, ptr %i.v, align 8, !tbaa !792
  store i32 %i.y, ptr %i.s, align 4, !tbaa !791
  %i.z = fmul double %i.l, 5.000000e-01           ; 2 uses
  store double %i.z, ptr %i.k, align 8, !tbaa !186
  %1 = fcmp olt double %i.z, %i.q
  br i1 %1, label %2, label %_ZN3ema6updateEd.exit

2:                                                ; preds = %bb.e
  store double %i.q, ptr %i.k, align 8, !tbaa !186
  br label %_ZN3ema6updateEd.exit

_ZN3ema6updateEd.exit:                            ; preds = %2, %bb.e, %bb.d, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3504
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !573
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3500
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !813
  %.not = icmp ult i32 %i.ab, %i.ad
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN3ema6updateEd.exit
  %i.ae = icmp eq i32 %i.b, 0
  br i1 %i.ae, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 3784
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !197 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit2, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !175
  %i.ak = uitofp i32 %i.aj to double
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit2

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit2:    ; preds = %bb.g, %bb.h
  %.0.i1 = phi double [ %i.ak, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3768
  %i.am = load double, ptr %i.al, align 8, !tbaa !726
  %i.an = fmul double %i.am, 5.000000e-01
  %i.ao = fcmp olt double %i.an, %.0.i1
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit2, %_ZN3ema6updateEd.exit
  %i.ap = phi i1 [ false, %_ZN3ema6updateEd.exit ], [ true, %bb.f ], [ %i.ao, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit2 ]
  ret i1 %i.ap
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN3sat6solver22do_toggle_search_stateEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(4264) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %1 = alloca %class.ema, align 8                 ; 4 uses
  %2 = alloca %class.ema, align 8                 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !514
  %i.c = add i32 %i.b, -3
  %spec.select.i = icmp ult i32 %i.c, 2
  br i1 %spec.select.i, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 3488
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !574
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3508
  store i32 0, ptr %i.d, align 4, !tbaa !210
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3688 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3624 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !tbaa.struct !814
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !tbaa.struct !814
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !814
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3720 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3656 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !tbaa.struct !814
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !tbaa.struct !814
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !814
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3488
  %i.j = load i32, ptr %i.i, align 8, !tbaa !574  ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !575
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3492 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !576
  %i.p = add i32 %i.o, %i.m
  store i32 %i.p, ptr %i.n, align 4, !tbaa !576
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !815
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3496 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !816
  %i.u = add i32 %i.t, %i.r
  store i32 %i.u, ptr %i.s, align 8, !tbaa !816
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.v = phi i32 [ %.pre, %._crit_edge ], [ %i.j, %bb.c ]
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sink2 = phi i64 [ 3492, %bb.e ], [ 3496, %bb.d ]
  %.sink1 = phi i32 [ 1, %bb.e ], [ 0, %bb.d ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.sink2
  %.sink = load i32, ptr %i.x, align 4, !tbaa !175
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3488
  store i32 %.sink1, ptr %i.y, align 8, !tbaa !574
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3500
  store i32 %.sink, ptr %i.z, align 4, !tbaa !813
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3504
  store i32 0, ptr %i.aa, align 8, !tbaa !573
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN3sat6solver14should_reorderEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4264) %0) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4032
  %i.b = load i32, ptr %i.a, align 8, !tbaa !212  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3572
  %i.d = load i32, ptr %i.c, align 4, !tbaa !177
  %.not.i = icmp ule i32 %i.d, %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3564
  %i.f = load i32, ptr %i.e, align 4
  %.not3.i = icmp ule i32 %i.f, %i.b
  %or.cond.not.i = select i1 %.not.i, i1 %.not3.i, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3568
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp ule i32 %i.b, %i.h
  %i.j = select i1 %or.cond.not.i, i1 %i.i, i1 false
  ret i1 %i.j
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat6solver10do_reorderEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(4264) initializes((3368, 3372)) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.svector.3, align 8           ; 10 uses
  %2 = alloca %class.svector.54, align 8          ; 11 uses
  %i.a = tail call noundef i32 @_Z19get_verbosity_levelv()
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_Z11is_threadedv()
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_Z12verbose_lockv()
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.57, i64 noundef 10) ; 0 uses
  tail call void @_Z14verbose_unlockv()
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.57, i64 noundef 10) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3368
  store i32 128, ptr %i.g, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  store ptr null, ptr %1, align 8, !tbaa !221
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3280 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !224  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %._crit_edge.thread, label %_ZNK3sat6solver8num_varsEv.exit

_ZNK3sat6solver8num_varsEv.exit:                  ; preds = %bb.e
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !175  ; 2 uses
  %.not4164 = icmp eq i32 %i.l, 0
  br i1 %.not4164, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3sat6solver8num_varsEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3312
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3272
  %i.o = zext i32 %i.l to i64
  br label %bb.g

._crit_edge.thread:                               ; preds = %_ZNK3sat6solver8num_varsEv.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread

._crit_edge:                                      ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.p = icmp eq ptr %i.av, null
  br i1 %i.p, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread, label %_ZNK6vectorIjLb0EjE4sizeEv.exit

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread:           ; preds = %._crit_edge.thread, %._crit_edge
  store ptr null, ptr %2, align 8, !tbaa !429
  br label %._crit_edge75

_ZNK6vectorIjLb0EjE4sizeEv.exit:                  ; preds = %._crit_edge
  %i.q = getelementptr inbounds i8, ptr %i.av, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !175  ; 4 uses
  store ptr null, ptr %2, align 8, !tbaa !429
  %.not.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.not.i.i.i, label %._crit_edge75, label %.preheader.i.i

end_hunk_2
