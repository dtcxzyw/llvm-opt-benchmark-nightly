Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/tng_compress?download=true
inline.NumInlined: 102
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 61
begin_hunk_0_@unquantize_intra_differences_int:bb.a
  %indvars.iv42.1.epil = phi i64 [ %indvars.iv.next43.1.epil, %bb.e ], [ %indvars.iv42.1.epil.init, %.epil.preheader74 ] ; 2 uses
  %.032.us.us.1.epil = phi i32 [ %i.bv, %bb.e ], [ %.032.us.us.1.epil.init, %.epil.preheader74 ]
  %epil.iter76 = phi i64 [ %epil.iter76.next, %bb.e ], [ 0, %.epil.preheader74 ]
  %i.bq = add nuw nsw i64 %indvars.iv42.1.epil, %i.h
  %i.br = mul i64 %i.bq, 12884901888
  %sext57.epil = add i64 %i.br, 4294967296
  %i.bs = ashr exact i64 %sext57.epil, 32         ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !16
  %i.bv = add nsw i32 %i.bu, %.032.us.us.1.epil   ; 2 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bs
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !16
  %indvars.iv.next43.1.epil = add nuw nsw i64 %indvars.iv42.1.epil, 1
  %epil.iter76.next = add i64 %epil.iter76, 1     ; 2 uses
  %epil.iter76.cmp.not = icmp eq i64 %epil.iter76.next, %xtraiter75
  br i1 %epil.iter76.cmp.not, label %._crit_edge.us.us.1, label %bb.e, !llvm.loop !63

._crit_edge.us.us.1:                              ; preds = %bb.e, %._crit_edge.us.us.1.unr-lcssa
  %i.bx = add nuw nsw i64 %i.i, 2                 ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !16 ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bx
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !16
  br i1 %i.g, label %.epil.preheader81, label %._crit_edge.us.us.1.new

._crit_edge.us.us.1.new:                          ; preds = %._crit_edge.us.us.1
  %invariant.op101 = add nuw nsw i64 1, %i.h
  %invariant.op103 = add nuw nsw i64 2, %i.h
  %invariant.op105 = add nuw nsw i64 3, %i.h
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %._crit_edge.us.us.1.new
  %indvars.iv42.2 = phi i64 [ 1, %._crit_edge.us.us.1.new ], [ %indvars.iv.next43.2.3, %bb.f ] ; 5 uses
  %.032.us.us.2 = phi i32 [ %i.bz, %._crit_edge.us.us.1.new ], [ %i.cy, %bb.f ]
  %niter87 = phi i64 [ 0, %._crit_edge.us.us.1.new ], [ %niter87.next.3, %bb.f ]
  %i.cb = add nuw nsw i64 %indvars.iv42.2, %i.h
  %i.cc = mul i64 %i.cb, 12884901888
  %sext58 = add i64 %i.cc, 8589934592
  %i.cd = ashr exact i64 %sext58, 32              ; 2 uses
  %i.ce = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !16
  %i.cg = add nsw i32 %i.cf, %.032.us.us.2        ; 2 uses
  %i.ch = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cd
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !16
  %.reass102 = add nuw nsw i64 %indvars.iv42.2, %invariant.op101
  %i.ci = mul i64 %.reass102, 12884901888
  %sext58.1 = add i64 %i.ci, 8589934592
  %i.cj = ashr exact i64 %sext58.1, 32            ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !16
  %i.cm = add nsw i32 %i.cl, %i.cg                ; 2 uses
  %i.cn = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cj
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !16
  %.reass104 = add nuw nsw i64 %indvars.iv42.2, %invariant.op103
  %i.co = mul i64 %.reass104, 12884901888
  %sext58.2 = add i64 %i.co, 8589934592
  %i.cp = ashr exact i64 %sext58.2, 32            ; 2 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !16
  %i.cs = add nsw i32 %i.cr, %i.cm                ; 2 uses
  %i.ct = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cp
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !16
  %.reass106 = add nuw nsw i64 %indvars.iv42.2, %invariant.op105
  %i.cu = mul i64 %.reass106, 12884901888
  %sext58.3 = add i64 %i.cu, 8589934592
  %i.cv = ashr exact i64 %sext58.3, 32            ; 2 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !16
  %i.cy = add nsw i32 %i.cx, %i.cs                ; 3 uses
  %i.cz = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cv
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !16
  %indvars.iv.next43.2.3 = add nuw nsw i64 %indvars.iv42.2, 4 ; 2 uses
  %niter87.next.3 = add i64 %niter87, 4           ; 2 uses
  %niter87.ncmp.3 = icmp eq i64 %niter87.next.3, %unroll_iter86
  br i1 %niter87.ncmp.3, label %._crit_edge.us.us.2.unr-lcssa, label %bb.f, !llvm.loop !61

._crit_edge.us.us.2.unr-lcssa:                    ; preds = %bb.f
  br i1 %lcmp.mod84.not, label %._crit_edge.us.us.2, label %.epil.preheader81

.epil.preheader81:                                ; preds = %._crit_edge.us.us.2.unr-lcssa, %._crit_edge.us.us.1
  %indvars.iv42.2.epil.init = phi i64 [ 1, %._crit_edge.us.us.1 ], [ %indvars.iv.next43.2.3, %._crit_edge.us.us.2.unr-lcssa ]
  %.032.us.us.2.epil.init = phi i32 [ %i.bz, %._crit_edge.us.us.1 ], [ %i.cy, %._crit_edge.us.us.2.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod85)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader81
  %indvars.iv42.2.epil = phi i64 [ %indvars.iv.next43.2.epil, %bb.g ], [ %indvars.iv42.2.epil.init, %.epil.preheader81 ] ; 2 uses
  %.032.us.us.2.epil = phi i32 [ %i.df, %bb.g ], [ %.032.us.us.2.epil.init, %.epil.preheader81 ]
  %epil.iter83 = phi i64 [ %epil.iter83.next, %bb.g ], [ 0, %.epil.preheader81 ]
  %i.da = add nuw nsw i64 %indvars.iv42.2.epil, %i.h
  %i.db = mul i64 %i.da, 12884901888
  %sext58.epil = add i64 %i.db, 8589934592
  %i.dc = ashr exact i64 %sext58.epil, 32         ; 2 uses
  %i.dd = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !16
  %i.df = add nsw i32 %i.de, %.032.us.us.2.epil   ; 2 uses
  %i.dg = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dc
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !16
  %indvars.iv.next43.2.epil = add nuw nsw i64 %indvars.iv42.2.epil, 1
  %epil.iter83.next = add i64 %epil.iter83, 1     ; 2 uses
  %epil.iter83.cmp.not = icmp eq i64 %epil.iter83.next, %xtraiter82
  br i1 %epil.iter83.cmp.not, label %._crit_edge.us.us.2, label %bb.g, !llvm.loop !64

._crit_edge.us.us.2:                              ; preds = %bb.g, %._crit_edge.us.us.2.unr-lcssa
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count54
  br i1 %exitcond55.not, label %.split37.us, label %.preheader.us, !llvm.loop !65

.split35:                                         ; preds = %bb.a
  %factor.op.mul = mul i32 %1, 3                  ; 3 uses
  %xtraiter = and i64 %wide.trip.count54, 1
  %i.dh = icmp eq i32 %2, 1
  br i1 %i.dh, label %.preheader.epil.preheader, label %.split35.new

.split35.new:                                     ; preds = %.split35
  %unroll_iter = and i64 %wide.trip.count54, 2147483646
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.split35.new
  %indvars.iv = phi i64 [ 0, %.split35.new ], [ %indvars.iv.next.1, %.preheader ] ; 3 uses
  %niter = phi i64 [ 0, %.split35.new ], [ %niter.next.1, %.preheader ]
  %i.di = trunc nuw nsw i64 %indvars.iv to i32
  %.reass = mul i32 %factor.op.mul, %i.di
  %i.dj = sext i32 %.reass to i64                 ; 4 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !16
  %i.dm = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dj
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !16
  %i.dn = or disjoint i64 %i.dj, 1                ; 2 uses
  %i.do = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !16
  %i.dq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dn
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !16
  %i.dr = add nsw i64 %i.dj, 2                    ; 2 uses
  %i.ds = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !16
  %i.du = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dr
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !16
  %i.dv = trunc i64 %indvars.iv to i32
  %i.dw = or disjoint i32 %i.dv, 1
  %.reass.1 = mul i32 %factor.op.mul, %i.dw
  %i.dx = sext i32 %.reass.1 to i64               ; 4 uses
  %i.dy = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !16
  %i.ea = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dx
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !16
  %i.eb = add nsw i64 %i.dx, 1                    ; 2 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %3, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !16
  %i.ee = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eb
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !16
  %i.ef = add nsw i64 %i.dx, 2                    ; 2 uses
  %i.eg = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !16
  %i.ei = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ef
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.split37.us.loopexit61.unr-lcssa, label %.preheader, !llvm.loop !65

.split37.us.loopexit61.unr-lcssa:                 ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split37.us, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.split37.us.loopexit61.unr-lcssa, %.split35
  %indvars.iv.epil.init = phi i64 [ 0, %.split35 ], [ %indvars.iv.next.1, %.split37.us.loopexit61.unr-lcssa ]
  %lcmp.mod62 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.ej = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %.reass.epil = mul i32 %factor.op.mul, %i.ej
  %i.ek = sext i32 %.reass.epil to i64            ; 4 uses
  %i.el = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !16
  %i.en = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ek
  store i32 %i.em, ptr %i.en, align 4, !tbaa !16
  %i.eo = add nsw i64 %i.ek, 1                    ; 2 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %3, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !16
  %i.er = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eo
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !16
  %i.es = add nsw i64 %i.ek, 2                    ; 2 uses
  %i.et = getelementptr inbounds [4 x i8], ptr %3, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !16
  %i.ev = getelementptr inbounds [4 x i8], ptr %0, i64 %i.es
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !16
  br label %.split37.us

.split37.us:                                      ; preds = %.preheader.epil.preheader, %.split37.us.loopexit61.unr-lcssa, %._crit_edge.us.us.2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @unquantize_inter_differences(ptr nofree noundef nonnull writeonly captures(none) %0, i32 noundef %1, i32 noundef range(i32 2, -2147483648) %2, double noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.preheader.preheader, label %._crit_edge

.preheader.preheader:                             ; preds = %bb.a
  %wide.trip.count44 = zext nneg i32 %1 to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %5 = add nsw i64 %wide.trip.count, -1           ; 6 uses
  %i.b = add nsw i64 %wide.trip.count, -2         ; 3 uses
  %xtraiter = and i64 %5, 3                       ; 3 uses
  %i.c = icmp ult i64 %i.b, 3
  %unroll_iter = and i64 %5, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod46 = icmp ne i64 %xtraiter, 0
  %xtraiter55 = and i64 %5, 3                     ; 3 uses
  %i.d = icmp ult i64 %i.b, 3
  %unroll_iter60 = and i64 %5, -4
  %lcmp.mod57.not = icmp eq i64 %xtraiter55, 0
  %lcmp.mod59 = icmp ne i64 %xtraiter55, 0
  %xtraiter65 = and i64 %5, 3                     ; 3 uses
  %i.e = icmp ult i64 %i.b, 3
  %unroll_iter70 = and i64 %5, -4
  %lcmp.mod67.not = icmp eq i64 %xtraiter65, 0
  %lcmp.mod69 = icmp ne i64 %xtraiter65, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.epilog-lcssa68
  %indvars.iv41 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next42, %.epilog-lcssa68 ] ; 3 uses
  %i.f = mul nuw nsw i64 %indvars.iv41, 3         ; 4 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !16   ; 3 uses
  %i.i = sitofp i32 %i.h to double
  %i.j = fmul double %3, %i.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f
  store double %i.j, ptr %i.k, align 8, !tbaa !25
  %i.l = trunc nuw nsw i64 %indvars.iv41 to i32   ; 15 uses
  br i1 %i.c, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.new ], [ 1, %.preheader ] ; 5 uses
  %.033 = phi i32 [ %i.bd, %.preheader.new ], [ %i.h, %.preheader ]
  %niter = phi i64 [ %niter.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.m = trunc i64 %indvars.iv to i32
  %i.n = mul i32 %1, %i.m
  %i.o = add nuw i32 %i.n, %i.l
  %i.p = mul i32 %i.o, 3
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %4, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %i.t = add nsw i32 %i.s, %.033                  ; 2 uses
  %i.u = sitofp i32 %i.t to double
  %i.v = fmul double %3, %i.u
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q
  store double %i.v, ptr %i.w, align 8, !tbaa !25
  %i.x = trunc i64 %indvars.iv to i32
  %i.y = add i32 %i.x, 1
  %i.z = mul i32 %1, %i.y
  %i.aa = add nuw i32 %i.z, %i.l
  %i.ab = mul i32 %i.aa, 3
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16
  %i.af = add nsw i32 %i.ae, %i.t                 ; 2 uses
  %i.ag = sitofp i32 %i.af to double
  %i.ah = fmul double %3, %i.ag
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ac
  store double %i.ah, ptr %i.ai, align 8, !tbaa !25
  %i.aj = trunc i64 %indvars.iv to i32
  %i.ak = add i32 %i.aj, 2
  %i.al = mul i32 %1, %i.ak
  %i.am = add nuw i32 %i.al, %i.l
  %i.an = mul i32 %i.am, 3
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !16
  %i.ar = add nsw i32 %i.aq, %i.af                ; 2 uses
  %i.as = sitofp i32 %i.ar to double
  %i.at = fmul double %3, %i.as
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ao
  store double %i.at, ptr %i.au, align 8, !tbaa !25
  %i.av = trunc i64 %indvars.iv to i32
  %i.aw = add i32 %i.av, 3
  %i.ax = mul i32 %1, %i.aw
  %i.ay = add nuw i32 %i.ax, %i.l
  %i.az = mul i32 %i.ay, 3
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !16
  %i.bd = add nsw i32 %i.bc, %i.ar                ; 3 uses
  %i.be = sitofp i32 %i.bd to double
  %i.bf = fmul double %3, %i.be
  %i.bg = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ba
  store double %i.bf, ptr %i.bg, align 8, !tbaa !25
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader.new, !llvm.loop !66

.unr-lcssa:                                       ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.preheader ], [ %indvars.iv.next.3, %.unr-lcssa ]
  %.033.epil.init = phi i32 [ %i.h, %.preheader ], [ %i.bd, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod46)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %.033.epil = phi i32 [ %.033.epil.init, %.epil.preheader ], [ %i.bo, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.bh = trunc i64 %indvars.iv.epil to i32
  %i.bi = mul i32 %1, %i.bh
  %i.bj = add nuw i32 %i.bi, %i.l
  %i.bk = mul i32 %i.bj, 3
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr %4, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !16
  %i.bo = add nsw i32 %i.bn, %.033.epil           ; 2 uses
  %i.bp = sitofp i32 %i.bo to double
  %i.bq = fmul double %3, %i.bp
  %i.br = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bl
  store double %i.bq, ptr %i.br, align 8, !tbaa !25
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.b, !llvm.loop !67

.epilog-lcssa:                                    ; preds = %bb.b, %.unr-lcssa
  %i.bs = add nuw nsw i64 %i.f, 1                 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !16 ; 3 uses
  %i.bv = sitofp i32 %i.bu to double
  %i.bw = fmul double %3, %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bs
  store double %i.bw, ptr %i.bx, align 8, !tbaa !25
  br i1 %i.d, label %.epil.preheader54, label %.new

.new:                                             ; preds = %.epilog-lcssa, %.new
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1.3, %.new ], [ 1, %.epilog-lcssa ] ; 5 uses
  %.033.1 = phi i32 [ %i.dt, %.new ], [ %i.bu, %.epilog-lcssa ]
  %niter61 = phi i64 [ %niter61.next.3, %.new ], [ 0, %.epilog-lcssa ]
  %i.by = trunc i64 %indvars.iv.1 to i32
  %i.bz = mul i32 %1, %i.by
  %i.ca = add nuw i32 %i.bz, %i.l
  %i.cb = mul i32 %i.ca, 3
  %i.cc = add nsw i32 %i.cb, 1
  %i.cd = sext i32 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr inbounds [4 x i8], ptr %4, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !16
  %i.cg = add nsw i32 %i.cf, %.033.1              ; 2 uses
  %i.ch = sitofp i32 %i.cg to double
  %i.ci = fmul double %3, %i.ch
  %i.cj = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cd
  store double %i.ci, ptr %i.cj, align 8, !tbaa !25
  %i.ck = trunc i64 %indvars.iv.1 to i32
  %i.cl = add i32 %i.ck, 1
  %i.cm = mul i32 %1, %i.cl
  %i.cn = add nuw i32 %i.cm, %i.l
  %i.co = mul i32 %i.cn, 3
  %i.cp = add nsw i32 %i.co, 1
  %i.cq = sext i32 %i.cp to i64                   ; 2 uses
  %i.cr = getelementptr inbounds [4 x i8], ptr %4, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !16
  %i.ct = add nsw i32 %i.cs, %i.cg                ; 2 uses
  %i.cu = sitofp i32 %i.ct to double
  %i.cv = fmul double %3, %i.cu
  %i.cw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cq
  store double %i.cv, ptr %i.cw, align 8, !tbaa !25
  %i.cx = trunc i64 %indvars.iv.1 to i32
  %i.cy = add i32 %i.cx, 2
  %i.cz = mul i32 %1, %i.cy
  %i.da = add nuw i32 %i.cz, %i.l
  %i.db = mul i32 %i.da, 3
  %i.dc = add nsw i32 %i.db, 1
  %i.dd = sext i32 %i.dc to i64                   ; 2 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %4, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !16
  %i.dg = add nsw i32 %i.df, %i.ct                ; 2 uses
  %i.dh = sitofp i32 %i.dg to double
  %i.di = fmul double %3, %i.dh
  %i.dj = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dd
  store double %i.di, ptr %i.dj, align 8, !tbaa !25
  %i.dk = trunc i64 %indvars.iv.1 to i32
  %i.dl = add i32 %i.dk, 3
  %i.dm = mul i32 %1, %i.dl
  %i.dn = add nuw i32 %i.dm, %i.l
  %i.do = mul i32 %i.dn, 3
  %i.dp = add nsw i32 %i.do, 1
  %i.dq = sext i32 %i.dp to i64                   ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %4, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !16
  %i.dt = add nsw i32 %i.ds, %i.dg                ; 3 uses
  %i.du = sitofp i32 %i.dt to double
  %i.dv = fmul double %3, %i.du
  %i.dw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dq
  store double %i.dv, ptr %i.dw, align 8, !tbaa !25
  %indvars.iv.next.1.3 = add nuw nsw i64 %indvars.iv.1, 4 ; 2 uses
  %niter61.next.3 = add i64 %niter61, 4           ; 2 uses
  %niter61.ncmp.3 = icmp eq i64 %niter61.next.3, %unroll_iter60
  br i1 %niter61.ncmp.3, label %.unr-lcssa53, label %.new, !llvm.loop !66

.unr-lcssa53:                                     ; preds = %.new
  br i1 %lcmp.mod57.not, label %.epilog-lcssa58, label %.epil.preheader54

.epil.preheader54:                                ; preds = %.unr-lcssa53, %.epilog-lcssa
  %indvars.iv.1.epil.init = phi i64 [ 1, %.epilog-lcssa ], [ %indvars.iv.next.1.3, %.unr-lcssa53 ]
  %.033.1.epil.init = phi i32 [ %i.bu, %.epilog-lcssa ], [ %i.dt, %.unr-lcssa53 ]
  tail call void @llvm.assume(i1 %lcmp.mod59)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader54
  %indvars.iv.1.epil = phi i64 [ %indvars.iv.1.epil.init, %.epil.preheader54 ], [ %indvars.iv.next.1.epil, %bb.c ] ; 2 uses
  %.033.1.epil = phi i32 [ %.033.1.epil.init, %.epil.preheader54 ], [ %i.ef, %bb.c ]
  %epil.iter56 = phi i64 [ 0, %.epil.preheader54 ], [ %epil.iter56.next, %bb.c ]
  %i.dx = trunc i64 %indvars.iv.1.epil to i32
  %i.dy = mul i32 %1, %i.dx
  %i.dz = add nuw i32 %i.dy, %i.l
  %i.ea = mul i32 %i.dz, 3
  %i.eb = add nsw i32 %i.ea, 1
  %i.ec = sext i32 %i.eb to i64                   ; 2 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !16
  %i.ef = add nsw i32 %i.ee, %.033.1.epil         ; 2 uses
  %i.eg = sitofp i32 %i.ef to double
  %i.eh = fmul double %3, %i.eg
  %i.ei = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ec
  store double %i.eh, ptr %i.ei, align 8, !tbaa !25
  %indvars.iv.next.1.epil = add nuw nsw i64 %indvars.iv.1.epil, 1
  %epil.iter56.next = add i64 %epil.iter56, 1     ; 2 uses
  %epil.iter56.cmp.not = icmp eq i64 %epil.iter56.next, %xtraiter55
  br i1 %epil.iter56.cmp.not, label %.epilog-lcssa58, label %bb.c, !llvm.loop !68

.epilog-lcssa58:                                  ; preds = %bb.c, %.unr-lcssa53
  %i.ej = add nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !16 ; 3 uses
  %i.em = sitofp i32 %i.el to double
  %i.en = fmul double %3, %i.em
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ej
  store double %i.en, ptr %i.eo, align 8, !tbaa !25
  br i1 %i.e, label %.epil.preheader64, label %.new62

.new62:                                           ; preds = %.epilog-lcssa58, %.new62
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2.3, %.new62 ], [ 1, %.epilog-lcssa58 ] ; 5 uses
  %.033.2 = phi i32 [ %i.gk, %.new62 ], [ %i.el, %.epilog-lcssa58 ]
  %niter71 = phi i64 [ %niter71.next.3, %.new62 ], [ 0, %.epilog-lcssa58 ]
  %i.ep = trunc i64 %indvars.iv.2 to i32
  %i.eq = mul i32 %1, %i.ep
  %i.er = add nuw i32 %i.eq, %i.l
  %i.es = mul i32 %i.er, 3
  %i.et = add nsw i32 %i.es, 2
  %i.eu = sext i32 %i.et to i64                   ; 2 uses
  %i.ev = getelementptr inbounds [4 x i8], ptr %4, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !16
  %i.ex = add nsw i32 %i.ew, %.033.2              ; 2 uses
  %i.ey = sitofp i32 %i.ex to double
  %i.ez = fmul double %3, %i.ey
  %i.fa = getelementptr inbounds [8 x i8], ptr %0, i64 %i.eu
  store double %i.ez, ptr %i.fa, align 8, !tbaa !25
  %i.fb = trunc i64 %indvars.iv.2 to i32
  %i.fc = add i32 %i.fb, 1
  %i.fd = mul i32 %1, %i.fc
  %i.fe = add nuw i32 %i.fd, %i.l
  %i.ff = mul i32 %i.fe, 3
  %i.fg = add nsw i32 %i.ff, 2
  %i.fh = sext i32 %i.fg to i64                   ; 2 uses
  %i.fi = getelementptr inbounds [4 x i8], ptr %4, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !16
  %i.fk = add nsw i32 %i.fj, %i.ex                ; 2 uses
  %i.fl = sitofp i32 %i.fk to double
  %i.fm = fmul double %3, %i.fl
  %i.fn = getelementptr inbounds [8 x i8], ptr %0, i64 %i.fh
  store double %i.fm, ptr %i.fn, align 8, !tbaa !25
  %i.fo = trunc i64 %indvars.iv.2 to i32
  %i.fp = add i32 %i.fo, 2
  %i.fq = mul i32 %1, %i.fp
  %i.fr = add nuw i32 %i.fq, %i.l
  %i.fs = mul i32 %i.fr, 3
  %i.ft = add nsw i32 %i.fs, 2
  %i.fu = sext i32 %i.ft to i64                   ; 2 uses
  %i.fv = getelementptr inbounds [4 x i8], ptr %4, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !16
  %i.fx = add nsw i32 %i.fw, %i.fk                ; 2 uses
  %i.fy = sitofp i32 %i.fx to double
  %i.fz = fmul double %3, %i.fy
  %i.ga = getelementptr inbounds [8 x i8], ptr %0, i64 %i.fu
  store double %i.fz, ptr %i.ga, align 8, !tbaa !25
  %i.gb = trunc i64 %indvars.iv.2 to i32
  %i.gc = add i32 %i.gb, 3
  %i.gd = mul i32 %1, %i.gc
  %i.ge = add nuw i32 %i.gd, %i.l
  %i.gf = mul i32 %i.ge, 3
  %i.gg = add nsw i32 %i.gf, 2
  %i.gh = sext i32 %i.gg to i64                   ; 2 uses
  %i.gi = getelementptr inbounds [4 x i8], ptr %4, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !16
  %i.gk = add nsw i32 %i.gj, %i.fx                ; 3 uses
  %i.gl = sitofp i32 %i.gk to double
  %i.gm = fmul double %3, %i.gl
  %i.gn = getelementptr inbounds [8 x i8], ptr %0, i64 %i.gh
  store double %i.gm, ptr %i.gn, align 8, !tbaa !25
  %indvars.iv.next.2.3 = add nuw nsw i64 %indvars.iv.2, 4 ; 2 uses
  %niter71.next.3 = add i64 %niter71, 4           ; 2 uses
  %niter71.ncmp.3 = icmp eq i64 %niter71.next.3, %unroll_iter70
  br i1 %niter71.ncmp.3, label %.unr-lcssa63, label %.new62, !llvm.loop !66

.unr-lcssa63:                                     ; preds = %.new62
  br i1 %lcmp.mod67.not, label %.epilog-lcssa68, label %.epil.preheader64

.epil.preheader64:                                ; preds = %.unr-lcssa63, %.epilog-lcssa58
  %indvars.iv.2.epil.init = phi i64 [ 1, %.epilog-lcssa58 ], [ %indvars.iv.next.2.3, %.unr-lcssa63 ]
  %.033.2.epil.init = phi i32 [ %i.el, %.epilog-lcssa58 ], [ %i.gk, %.unr-lcssa63 ]
  tail call void @llvm.assume(i1 %lcmp.mod69)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader64
  %indvars.iv.2.epil = phi i64 [ %indvars.iv.2.epil.init, %.epil.preheader64 ], [ %indvars.iv.next.2.epil, %bb.d ] ; 2 uses
  %.033.2.epil = phi i32 [ %.033.2.epil.init, %.epil.preheader64 ], [ %i.gw, %bb.d ]
  %epil.iter66 = phi i64 [ 0, %.epil.preheader64 ], [ %epil.iter66.next, %bb.d ]
  %i.go = trunc i64 %indvars.iv.2.epil to i32
  %i.gp = mul i32 %1, %i.go
  %i.gq = add nuw i32 %i.gp, %i.l
  %i.gr = mul i32 %i.gq, 3
  %i.gs = add nsw i32 %i.gr, 2
  %i.gt = sext i32 %i.gs to i64                   ; 2 uses
  %i.gu = getelementptr inbounds [4 x i8], ptr %4, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !16
  %i.gw = add nsw i32 %i.gv, %.033.2.epil         ; 2 uses
  %i.gx = sitofp i32 %i.gw to double
  %i.gy = fmul double %3, %i.gx
  %i.gz = getelementptr inbounds [8 x i8], ptr %0, i64 %i.gt
  store double %i.gy, ptr %i.gz, align 8, !tbaa !25
  %indvars.iv.next.2.epil = add nuw nsw i64 %indvars.iv.2.epil, 1
  %epil.iter66.next = add i64 %epil.iter66, 1     ; 2 uses
  %epil.iter66.cmp.not = icmp eq i64 %epil.iter66.next, %xtraiter65
  br i1 %epil.iter66.cmp.not, label %.epilog-lcssa68, label %bb.d, !llvm.loop !69

.epilog-lcssa68:                                  ; preds = %bb.d, %.unr-lcssa63
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %._crit_edge, label %.preheader, !llvm.loop !70

._crit_edge:                                      ; preds = %.epilog-lcssa68, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @unquantize_inter_differences_float(ptr nofree noundef nonnull writeonly captures(none) %0, i32 noundef %1, i32 noundef range(i32 2, -2147483648) %2, float noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.preheader.preheader, label %._crit_edge

.preheader.preheader:                             ; preds = %bb.a
  %wide.trip.count44 = zext nneg i32 %1 to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %5 = add nsw i64 %wide.trip.count, -1           ; 6 uses
  %i.b = add nsw i64 %wide.trip.count, -2         ; 3 uses
  %xtraiter = and i64 %5, 3                       ; 3 uses
  %i.c = icmp ult i64 %i.b, 3
  %unroll_iter = and i64 %5, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod46 = icmp ne i64 %xtraiter, 0
  %xtraiter55 = and i64 %5, 3                     ; 3 uses
  %i.d = icmp ult i64 %i.b, 3
  %unroll_iter60 = and i64 %5, -4
  %lcmp.mod57.not = icmp eq i64 %xtraiter55, 0
  %lcmp.mod59 = icmp ne i64 %xtraiter55, 0
  %xtraiter65 = and i64 %5, 3                     ; 3 uses
  %i.e = icmp ult i64 %i.b, 3
  %unroll_iter70 = and i64 %5, -4
  %lcmp.mod67.not = icmp eq i64 %xtraiter65, 0
  %lcmp.mod69 = icmp ne i64 %xtraiter65, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.epilog-lcssa68
  %indvars.iv41 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next42, %.epilog-lcssa68 ] ; 3 uses
  %i.f = mul nuw nsw i64 %indvars.iv41, 3         ; 4 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !16   ; 3 uses
  %i.i = sitofp i32 %i.h to float
  %i.j = fmul float %3, %i.i
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f
  store float %i.j, ptr %i.k, align 4, !tbaa !27
  %i.l = trunc nuw nsw i64 %indvars.iv41 to i32   ; 15 uses
  br i1 %i.c, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.new ], [ 1, %.preheader ] ; 5 uses
  %.033 = phi i32 [ %i.bd, %.preheader.new ], [ %i.h, %.preheader ]
  %niter = phi i64 [ %niter.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.m = trunc i64 %indvars.iv to i32
  %i.n = mul i32 %1, %i.m
  %i.o = add nuw i32 %i.n, %i.l
  %i.p = mul i32 %i.o, 3
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %4, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %i.t = add nsw i32 %i.s, %.033                  ; 2 uses
  %i.u = sitofp i32 %i.t to float
  %i.v = fmul float %3, %i.u
  %i.w = getelementptr inbounds [4 x i8], ptr %0, i64 %i.q
  store float %i.v, ptr %i.w, align 4, !tbaa !27
  %i.x = trunc i64 %indvars.iv to i32
  %i.y = add i32 %i.x, 1
  %i.z = mul i32 %1, %i.y
  %i.aa = add nuw i32 %i.z, %i.l
  %i.ab = mul i32 %i.aa, 3
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16
  %i.af = add nsw i32 %i.ae, %i.t                 ; 2 uses
  %i.ag = sitofp i32 %i.af to float
  %i.ah = fmul float %3, %i.ag
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ac
  store float %i.ah, ptr %i.ai, align 4, !tbaa !27
  %i.aj = trunc i64 %indvars.iv to i32
  %i.ak = add i32 %i.aj, 2
  %i.al = mul i32 %1, %i.ak
  %i.am = add nuw i32 %i.al, %i.l
  %i.an = mul i32 %i.am, 3
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !16
  %i.ar = add nsw i32 %i.aq, %i.af                ; 2 uses
  %i.as = sitofp i32 %i.ar to float
  %i.at = fmul float %3, %i.as
  %i.au = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ao
  store float %i.at, ptr %i.au, align 4, !tbaa !27
  %i.av = trunc i64 %indvars.iv to i32
  %i.aw = add i32 %i.av, 3
  %i.ax = mul i32 %1, %i.aw
  %i.ay = add nuw i32 %i.ax, %i.l
  %i.az = mul i32 %i.ay, 3
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !16
  %i.bd = add nsw i32 %i.bc, %i.ar                ; 3 uses
  %i.be = sitofp i32 %i.bd to float
  %i.bf = fmul float %3, %i.be
  %i.bg = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ba
  store float %i.bf, ptr %i.bg, align 4, !tbaa !27
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader.new, !llvm.loop !71

.unr-lcssa:                                       ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.preheader ], [ %indvars.iv.next.3, %.unr-lcssa ]
  %.033.epil.init = phi i32 [ %i.h, %.preheader ], [ %i.bd, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod46)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %.033.epil = phi i32 [ %.033.epil.init, %.epil.preheader ], [ %i.bo, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.bh = trunc i64 %indvars.iv.epil to i32
  %i.bi = mul i32 %1, %i.bh
  %i.bj = add nuw i32 %i.bi, %i.l
  %i.bk = mul i32 %i.bj, 3
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr %4, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !16
  %i.bo = add nsw i32 %i.bn, %.033.epil           ; 2 uses
  %i.bp = sitofp i32 %i.bo to float
  %i.bq = fmul float %3, %i.bp
  %i.br = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bl
  store float %i.bq, ptr %i.br, align 4, !tbaa !27
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.b, !llvm.loop !72

.epilog-lcssa:                                    ; preds = %bb.b, %.unr-lcssa
  %i.bs = add nuw nsw i64 %i.f, 1                 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !16 ; 3 uses
  %i.bv = sitofp i32 %i.bu to float
  %i.bw = fmul float %3, %i.bv
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bs
  store float %i.bw, ptr %i.bx, align 4, !tbaa !27
  br i1 %i.d, label %.epil.preheader54, label %.new

.new:                                             ; preds = %.epilog-lcssa, %.new
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1.3, %.new ], [ 1, %.epilog-lcssa ] ; 5 uses
  %.033.1 = phi i32 [ %i.dt, %.new ], [ %i.bu, %.epilog-lcssa ]
  %niter61 = phi i64 [ %niter61.next.3, %.new ], [ 0, %.epilog-lcssa ]
  %i.by = trunc i64 %indvars.iv.1 to i32
  %i.bz = mul i32 %1, %i.by
  %i.ca = add nuw i32 %i.bz, %i.l
  %i.cb = mul i32 %i.ca, 3
  %i.cc = add nsw i32 %i.cb, 1
  %i.cd = sext i32 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr inbounds [4 x i8], ptr %4, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !16
  %i.cg = add nsw i32 %i.cf, %.033.1              ; 2 uses
  %i.ch = sitofp i32 %i.cg to float
  %i.ci = fmul float %3, %i.ch
  %i.cj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cd
  store float %i.ci, ptr %i.cj, align 4, !tbaa !27
  %i.ck = trunc i64 %indvars.iv.1 to i32
  %i.cl = add i32 %i.ck, 1
  %i.cm = mul i32 %1, %i.cl
  %i.cn = add nuw i32 %i.cm, %i.l
  %i.co = mul i32 %i.cn, 3
  %i.cp = add nsw i32 %i.co, 1
  %i.cq = sext i32 %i.cp to i64                   ; 2 uses
  %i.cr = getelementptr inbounds [4 x i8], ptr %4, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !16
  %i.ct = add nsw i32 %i.cs, %i.cg                ; 2 uses
  %i.cu = sitofp i32 %i.ct to float
  %i.cv = fmul float %3, %i.cu
  %i.cw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cq
  store float %i.cv, ptr %i.cw, align 4, !tbaa !27
  %i.cx = trunc i64 %indvars.iv.1 to i32
  %i.cy = add i32 %i.cx, 2
  %i.cz = mul i32 %1, %i.cy
  %i.da = add nuw i32 %i.cz, %i.l
  %i.db = mul i32 %i.da, 3
  %i.dc = add nsw i32 %i.db, 1
  %i.dd = sext i32 %i.dc to i64                   ; 2 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %4, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !16
  %i.dg = add nsw i32 %i.df, %i.ct                ; 2 uses
  %i.dh = sitofp i32 %i.dg to float
  %i.di = fmul float %3, %i.dh
  %i.dj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dd
  store float %i.di, ptr %i.dj, align 4, !tbaa !27
  %i.dk = trunc i64 %indvars.iv.1 to i32
  %i.dl = add i32 %i.dk, 3
  %i.dm = mul i32 %1, %i.dl
  %i.dn = add nuw i32 %i.dm, %i.l
  %i.do = mul i32 %i.dn, 3
  %i.dp = add nsw i32 %i.do, 1
  %i.dq = sext i32 %i.dp to i64                   ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %4, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !16
  %i.dt = add nsw i32 %i.ds, %i.dg                ; 3 uses
  %i.du = sitofp i32 %i.dt to float
  %i.dv = fmul float %3, %i.du
  %i.dw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dq
  store float %i.dv, ptr %i.dw, align 4, !tbaa !27
  %indvars.iv.next.1.3 = add nuw nsw i64 %indvars.iv.1, 4 ; 2 uses
  %niter61.next.3 = add i64 %niter61, 4           ; 2 uses
  %niter61.ncmp.3 = icmp eq i64 %niter61.next.3, %unroll_iter60
  br i1 %niter61.ncmp.3, label %.unr-lcssa53, label %.new, !llvm.loop !71

.unr-lcssa53:                                     ; preds = %.new
  br i1 %lcmp.mod57.not, label %.epilog-lcssa58, label %.epil.preheader54

.epil.preheader54:                                ; preds = %.unr-lcssa53, %.epilog-lcssa
  %indvars.iv.1.epil.init = phi i64 [ 1, %.epilog-lcssa ], [ %indvars.iv.next.1.3, %.unr-lcssa53 ]
  %.033.1.epil.init = phi i32 [ %i.bu, %.epilog-lcssa ], [ %i.dt, %.unr-lcssa53 ]
  tail call void @llvm.assume(i1 %lcmp.mod59)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader54
  %indvars.iv.1.epil = phi i64 [ %indvars.iv.1.epil.init, %.epil.preheader54 ], [ %indvars.iv.next.1.epil, %bb.c ] ; 2 uses
  %.033.1.epil = phi i32 [ %.033.1.epil.init, %.epil.preheader54 ], [ %i.ef, %bb.c ]
  %epil.iter56 = phi i64 [ 0, %.epil.preheader54 ], [ %epil.iter56.next, %bb.c ]
  %i.dx = trunc i64 %indvars.iv.1.epil to i32
  %i.dy = mul i32 %1, %i.dx
  %i.dz = add nuw i32 %i.dy, %i.l
  %i.ea = mul i32 %i.dz, 3
  %i.eb = add nsw i32 %i.ea, 1
  %i.ec = sext i32 %i.eb to i64                   ; 2 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !16
  %i.ef = add nsw i32 %i.ee, %.033.1.epil         ; 2 uses
  %i.eg = sitofp i32 %i.ef to float
  %i.eh = fmul float %3, %i.eg
  %i.ei = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ec
  store float %i.eh, ptr %i.ei, align 4, !tbaa !27
  %indvars.iv.next.1.epil = add nuw nsw i64 %indvars.iv.1.epil, 1
  %epil.iter56.next = add i64 %epil.iter56, 1     ; 2 uses
  %epil.iter56.cmp.not = icmp eq i64 %epil.iter56.next, %xtraiter55
  br i1 %epil.iter56.cmp.not, label %.epilog-lcssa58, label %bb.c, !llvm.loop !73

.epilog-lcssa58:                                  ; preds = %bb.c, %.unr-lcssa53
  %i.ej = add nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !16 ; 3 uses
  %i.em = sitofp i32 %i.el to float
  %i.en = fmul float %3, %i.em
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ej
  store float %i.en, ptr %i.eo, align 4, !tbaa !27
  br i1 %i.e, label %.epil.preheader64, label %.new62

.new62:                                           ; preds = %.epilog-lcssa58, %.new62
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2.3, %.new62 ], [ 1, %.epilog-lcssa58 ] ; 5 uses
  %.033.2 = phi i32 [ %i.gk, %.new62 ], [ %i.el, %.epilog-lcssa58 ]
  %niter71 = phi i64 [ %niter71.next.3, %.new62 ], [ 0, %.epilog-lcssa58 ]
  %i.ep = trunc i64 %indvars.iv.2 to i32
  %i.eq = mul i32 %1, %i.ep
  %i.er = add nuw i32 %i.eq, %i.l
  %i.es = mul i32 %i.er, 3
  %i.et = add nsw i32 %i.es, 2
  %i.eu = sext i32 %i.et to i64                   ; 2 uses
  %i.ev = getelementptr inbounds [4 x i8], ptr %4, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !16
  %i.ex = add nsw i32 %i.ew, %.033.2              ; 2 uses
  %i.ey = sitofp i32 %i.ex to float
  %i.ez = fmul float %3, %i.ey
  %i.fa = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eu
  store float %i.ez, ptr %i.fa, align 4, !tbaa !27
  %i.fb = trunc i64 %indvars.iv.2 to i32
  %i.fc = add i32 %i.fb, 1
  %i.fd = mul i32 %1, %i.fc
  %i.fe = add nuw i32 %i.fd, %i.l
  %i.ff = mul i32 %i.fe, 3
  %i.fg = add nsw i32 %i.ff, 2
  %i.fh = sext i32 %i.fg to i64                   ; 2 uses
  %i.fi = getelementptr inbounds [4 x i8], ptr %4, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !16
  %i.fk = add nsw i32 %i.fj, %i.ex                ; 2 uses
  %i.fl = sitofp i32 %i.fk to float
  %i.fm = fmul float %3, %i.fl
  %i.fn = getelementptr inbounds [4 x i8], ptr %0, i64 %i.fh
  store float %i.fm, ptr %i.fn, align 4, !tbaa !27
  %i.fo = trunc i64 %indvars.iv.2 to i32
  %i.fp = add i32 %i.fo, 2
  %i.fq = mul i32 %1, %i.fp
  %i.fr = add nuw i32 %i.fq, %i.l
  %i.fs = mul i32 %i.fr, 3
  %i.ft = add nsw i32 %i.fs, 2
  %i.fu = sext i32 %i.ft to i64                   ; 2 uses
  %i.fv = getelementptr inbounds [4 x i8], ptr %4, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !16
  %i.fx = add nsw i32 %i.fw, %i.fk                ; 2 uses
  %i.fy = sitofp i32 %i.fx to float
  %i.fz = fmul float %3, %i.fy
  %i.ga = getelementptr inbounds [4 x i8], ptr %0, i64 %i.fu
  store float %i.fz, ptr %i.ga, align 4, !tbaa !27
  %i.gb = trunc i64 %indvars.iv.2 to i32
  %i.gc = add i32 %i.gb, 3
  %i.gd = mul i32 %1, %i.gc
  %i.ge = add nuw i32 %i.gd, %i.l
  %i.gf = mul i32 %i.ge, 3
  %i.gg = add nsw i32 %i.gf, 2
  %i.gh = sext i32 %i.gg to i64                   ; 2 uses
  %i.gi = getelementptr inbounds [4 x i8], ptr %4, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !16
  %i.gk = add nsw i32 %i.gj, %i.fx                ; 3 uses
  %i.gl = sitofp i32 %i.gk to float
  %i.gm = fmul float %3, %i.gl
  %i.gn = getelementptr inbounds [4 x i8], ptr %0, i64 %i.gh
  store float %i.gm, ptr %i.gn, align 4, !tbaa !27
  %indvars.iv.next.2.3 = add nuw nsw i64 %indvars.iv.2, 4 ; 2 uses
  %niter71.next.3 = add i64 %niter71, 4           ; 2 uses
  %niter71.ncmp.3 = icmp eq i64 %niter71.next.3, %unroll_iter70
  br i1 %niter71.ncmp.3, label %.unr-lcssa63, label %.new62, !llvm.loop !71

.unr-lcssa63:                                     ; preds = %.new62
  br i1 %lcmp.mod67.not, label %.epilog-lcssa68, label %.epil.preheader64

.epil.preheader64:                                ; preds = %.unr-lcssa63, %.epilog-lcssa58
  %indvars.iv.2.epil.init = phi i64 [ 1, %.epilog-lcssa58 ], [ %indvars.iv.next.2.3, %.unr-lcssa63 ]
  %.033.2.epil.init = phi i32 [ %i.el, %.epilog-lcssa58 ], [ %i.gk, %.unr-lcssa63 ]
  tail call void @llvm.assume(i1 %lcmp.mod69)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader64
  %indvars.iv.2.epil = phi i64 [ %indvars.iv.2.epil.init, %.epil.preheader64 ], [ %indvars.iv.next.2.epil, %bb.d ] ; 2 uses
  %.033.2.epil = phi i32 [ %.033.2.epil.init, %.epil.preheader64 ], [ %i.gw, %bb.d ]
  %epil.iter66 = phi i64 [ 0, %.epil.preheader64 ], [ %epil.iter66.next, %bb.d ]
  %i.go = trunc i64 %indvars.iv.2.epil to i32
  %i.gp = mul i32 %1, %i.go
  %i.gq = add nuw i32 %i.gp, %i.l
  %i.gr = mul i32 %i.gq, 3
  %i.gs = add nsw i32 %i.gr, 2
  %i.gt = sext i32 %i.gs to i64                   ; 2 uses
  %i.gu = getelementptr inbounds [4 x i8], ptr %4, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !16
  %i.gw = add nsw i32 %i.gv, %.033.2.epil         ; 2 uses
  %i.gx = sitofp i32 %i.gw to float
  %i.gy = fmul float %3, %i.gx
  %i.gz = getelementptr inbounds [4 x i8], ptr %0, i64 %i.gt
  store float %i.gy, ptr %i.gz, align 4, !tbaa !27
  %indvars.iv.next.2.epil = add nuw nsw i64 %indvars.iv.2.epil, 1
  %epil.iter66.next = add i64 %epil.iter66, 1     ; 2 uses
  %epil.iter66.cmp.not = icmp eq i64 %epil.iter66.next, %xtraiter65
  br i1 %epil.iter66.cmp.not, label %.epilog-lcssa68, label %bb.d, !llvm.loop !74

.epilog-lcssa68:                                  ; preds = %bb.d, %.unr-lcssa63
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %._crit_edge, label %.preheader, !llvm.loop !75

._crit_edge:                                      ; preds = %.epilog-lcssa68, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @unquantize_inter_differences_int(ptr nofree noundef nonnull writeonly captures(none) %0, i32 noundef %1, i32 noundef range(i32 2, -2147483648) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.preheader.preheader, label %._crit_edge

.preheader.preheader:                             ; preds = %bb.a
  %wide.trip.count42 = zext nneg i32 %1 to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %4 = add nsw i64 %wide.trip.count, -1           ; 6 uses
  %i.b = add nsw i64 %wide.trip.count, -2         ; 3 uses
  %xtraiter = and i64 %4, 3                       ; 3 uses
  %i.c = icmp ult i64 %i.b, 3
  %unroll_iter = and i64 %4, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod44 = icmp ne i64 %xtraiter, 0
  %xtraiter53 = and i64 %4, 3                     ; 3 uses
  %i.d = icmp ult i64 %i.b, 3
  %unroll_iter58 = and i64 %4, -4
  %lcmp.mod55.not = icmp eq i64 %xtraiter53, 0
  %lcmp.mod57 = icmp ne i64 %xtraiter53, 0
  %xtraiter63 = and i64 %4, 3                     ; 3 uses
  %i.e = icmp ult i64 %i.b, 3
  %unroll_iter68 = and i64 %4, -4
  %lcmp.mod65.not = icmp eq i64 %xtraiter63, 0
  %lcmp.mod67 = icmp ne i64 %xtraiter63, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.epilog-lcssa66
  %indvars.iv39 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next40, %.epilog-lcssa66 ] ; 3 uses
  %i.f = mul nuw nsw i64 %indvars.iv39, 3         ; 4 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !16   ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f
  store i32 %i.h, ptr %i.i, align 4, !tbaa !16
  %i.j = trunc nuw nsw i64 %indvars.iv39 to i32   ; 15 uses
  br i1 %i.c, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.new ], [ 1, %.preheader ] ; 5 uses
  %.031 = phi i32 [ %i.av, %.preheader.new ], [ %i.h, %.preheader ]
  %niter = phi i64 [ %niter.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.k = trunc i64 %indvars.iv to i32
  %i.l = mul i32 %1, %i.k
  %i.m = add nuw i32 %i.l, %i.j
  %i.n = mul i32 %i.m, 3
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %3, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  %i.r = add nsw i32 %i.q, %.031                  ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %i.o
  store i32 %i.r, ptr %i.s, align 4, !tbaa !16
  %i.t = trunc i64 %indvars.iv to i32
  %i.u = add i32 %i.t, 1
  %i.v = mul i32 %1, %i.u
  %i.w = add nuw i32 %i.v, %i.j
  %i.x = mul i32 %i.w, 3
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %3, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !16
  %i.ab = add nsw i32 %i.aa, %i.r                 ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %i.y
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !16
  %i.ad = trunc i64 %indvars.iv to i32
  %i.ae = add i32 %i.ad, 2
  %i.af = mul i32 %1, %i.ae
  %i.ag = add nuw i32 %i.af, %i.j
  %i.ah = mul i32 %i.ag, 3
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !16
  %i.al = add nsw i32 %i.ak, %i.ab                ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ai
  store i32 %i.al, ptr %i.am, align 4, !tbaa !16
  %i.an = trunc i64 %indvars.iv to i32
  %i.ao = add i32 %i.an, 3
  %i.ap = mul i32 %1, %i.ao
  %i.aq = add nuw i32 %i.ap, %i.j
  %i.ar = mul i32 %i.aq, 3
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %3, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !16
  %i.av = add nsw i32 %i.au, %i.al                ; 3 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.as
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !16
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader.new, !llvm.loop !76

.unr-lcssa:                                       ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.preheader ], [ %indvars.iv.next.3, %.unr-lcssa ]
  %.031.epil.init = phi i32 [ %i.h, %.preheader ], [ %i.av, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod44)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %.031.epil = phi i32 [ %.031.epil.init, %.epil.preheader ], [ %i.be, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ax = trunc i64 %indvars.iv.epil to i32
  %i.ay = mul i32 %1, %i.ax
  %i.az = add nuw i32 %i.ay, %i.j
  %i.ba = mul i32 %i.az, 3
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !16
  %i.be = add nsw i32 %i.bd, %.031.epil           ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bb
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !16
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.b, !llvm.loop !77

.epilog-lcssa:                                    ; preds = %bb.b, %.unr-lcssa
  %i.bg = add nuw nsw i64 %i.f, 1                 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !16 ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bg
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !16
  br i1 %i.d, label %.epil.preheader52, label %.new

.new:                                             ; preds = %.epilog-lcssa, %.new
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1.3, %.new ], [ 1, %.epilog-lcssa ] ; 5 uses
  %.031.1 = phi i32 [ %i.cz, %.new ], [ %i.bi, %.epilog-lcssa ]
  %niter59 = phi i64 [ %niter59.next.3, %.new ], [ 0, %.epilog-lcssa ]
  %i.bk = trunc i64 %indvars.iv.1 to i32
  %i.bl = mul i32 %1, %i.bk
  %i.bm = add nuw i32 %i.bl, %i.j
  %i.bn = mul i32 %i.bm, 3
  %i.bo = add nsw i32 %i.bn, 1
  %i.bp = sext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !16
  %i.bs = add nsw i32 %i.br, %.031.1              ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bp
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !16
  %i.bu = trunc i64 %indvars.iv.1 to i32
  %i.bv = add i32 %i.bu, 1
  %i.bw = mul i32 %1, %i.bv
  %i.bx = add nuw i32 %i.bw, %i.j
  %i.by = mul i32 %i.bx, 3
  %i.bz = add nsw i32 %i.by, 1
  %i.ca = sext i32 %i.bz to i64                   ; 2 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !16
  %i.cd = add nsw i32 %i.cc, %i.bs                ; 2 uses
  %i.ce = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ca
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !16
  %i.cf = trunc i64 %indvars.iv.1 to i32
  %i.cg = add i32 %i.cf, 2
  %i.ch = mul i32 %1, %i.cg
  %i.ci = add nuw i32 %i.ch, %i.j
  %i.cj = mul i32 %i.ci, 3
  %i.ck = add nsw i32 %i.cj, 1
  %i.cl = sext i32 %i.ck to i64                   ; 2 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !16
  %i.co = add nsw i32 %i.cn, %i.cd                ; 2 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cl
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !16
  %i.cq = trunc i64 %indvars.iv.1 to i32
  %i.cr = add i32 %i.cq, 3
  %i.cs = mul i32 %1, %i.cr
  %i.ct = add nuw i32 %i.cs, %i.j
  %i.cu = mul i32 %i.ct, 3
  %i.cv = add nsw i32 %i.cu, 1
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %i.cx = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !16
  %i.cz = add nsw i32 %i.cy, %i.co                ; 3 uses
  %i.da = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cw
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !16
  %indvars.iv.next.1.3 = add nuw nsw i64 %indvars.iv.1, 4 ; 2 uses
  %niter59.next.3 = add i64 %niter59, 4           ; 2 uses
  %niter59.ncmp.3 = icmp eq i64 %niter59.next.3, %unroll_iter58
  br i1 %niter59.ncmp.3, label %.unr-lcssa51, label %.new, !llvm.loop !76

.unr-lcssa51:                                     ; preds = %.new
  br i1 %lcmp.mod55.not, label %.epilog-lcssa56, label %.epil.preheader52

.epil.preheader52:                                ; preds = %.unr-lcssa51, %.epilog-lcssa
  %indvars.iv.1.epil.init = phi i64 [ 1, %.epilog-lcssa ], [ %indvars.iv.next.1.3, %.unr-lcssa51 ]
  %.031.1.epil.init = phi i32 [ %i.bi, %.epilog-lcssa ], [ %i.cz, %.unr-lcssa51 ]
  tail call void @llvm.assume(i1 %lcmp.mod57)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader52
  %indvars.iv.1.epil = phi i64 [ %indvars.iv.1.epil.init, %.epil.preheader52 ], [ %indvars.iv.next.1.epil, %bb.c ] ; 2 uses
  %.031.1.epil = phi i32 [ %.031.1.epil.init, %.epil.preheader52 ], [ %i.dj, %bb.c ]
  %epil.iter54 = phi i64 [ 0, %.epil.preheader52 ], [ %epil.iter54.next, %bb.c ]
  %i.db = trunc i64 %indvars.iv.1.epil to i32
  %i.dc = mul i32 %1, %i.db
  %i.dd = add nuw i32 %i.dc, %i.j
  %i.de = mul i32 %i.dd, 3
  %i.df = add nsw i32 %i.de, 1
  %i.dg = sext i32 %i.df to i64                   ; 2 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !16
  %i.dj = add nsw i32 %i.di, %.031.1.epil         ; 2 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dg
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !16
  %indvars.iv.next.1.epil = add nuw nsw i64 %indvars.iv.1.epil, 1
  %epil.iter54.next = add i64 %epil.iter54, 1     ; 2 uses
  %epil.iter54.cmp.not = icmp eq i64 %epil.iter54.next, %xtraiter53
  br i1 %epil.iter54.cmp.not, label %.epilog-lcssa56, label %bb.c, !llvm.loop !78

.epilog-lcssa56:                                  ; preds = %bb.c, %.unr-lcssa51
  %i.dl = add nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !16 ; 3 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dl
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !16
  br i1 %i.e, label %.epil.preheader62, label %.new60

.new60:                                           ; preds = %.epilog-lcssa56, %.new60
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2.3, %.new60 ], [ 1, %.epilog-lcssa56 ] ; 5 uses
  %.031.2 = phi i32 [ %i.fe, %.new60 ], [ %i.dn, %.epilog-lcssa56 ]
  %niter69 = phi i64 [ %niter69.next.3, %.new60 ], [ 0, %.epilog-lcssa56 ]
  %i.dp = trunc i64 %indvars.iv.2 to i32
end_hunk_0
