Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/itx_1d?download=true
inline.NumInlined: 10
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 67
loop-unroll.NumUnrolled: 81
begin_hunk_0_@ff_vvc_inv_dct8_4:bb.a
._crit_edge.us.i.i.1:                             ; preds = %bb.c, %._crit_edge.us.i.i.1.unr-lcssa
  %.lcssa13 = phi i32 [ %i.cj, %._crit_edge.us.i.i.1.unr-lcssa ], [ %i.cr, %bb.c ]
  %i.cs = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 2 uses
  store i32 %.lcssa13, ptr %i.cs, align 4, !tbaa !11
  %xtraiter40 = and i64 %2, 3                     ; 3 uses
  %i.ct = icmp ult i64 %2, 4
  br i1 %i.ct, label %.epil.preheader39, label %._crit_edge.us.i.i.1.new

._crit_edge.us.i.i.1.new:                         ; preds = %._crit_edge.us.i.i.1
  %unroll_iter45 = and i64 %2, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %._crit_edge.us.i.i.1.new
  %indvars.iv42.i.i.2 = phi i64 [ 0, %._crit_edge.us.i.i.1.new ], [ %indvars.iv.next43.i.i.2.3, %bb.d ] ; 6 uses
  %.02233.us.i.i.2 = phi i32 [ 0, %._crit_edge.us.i.i.1.new ], [ %i.dz, %bb.d ]
  %niter46 = phi i64 [ 0, %._crit_edge.us.i.i.1.new ], [ %niter46.next.3, %bb.d ]
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.2
  %i.cv = load i32, ptr %i.cu, align 16, !tbaa !11
  %i.cw = shl nuw nsw i64 %indvars.iv42.i.i.2, 2
  %i.cx = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_4x4, i64 2), i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !16
  %i.cz = sext i8 %i.cy to i32
  %i.da = mul nsw i32 %i.cv, %i.cz
  %i.db = add nsw i32 %i.da, %.02233.us.i.i.2
  %indvars.iv.next43.i.i.2 = or disjoint i64 %indvars.iv42.i.i.2, 1 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.2
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !11
  %i.de = shl nuw nsw i64 %indvars.iv.next43.i.i.2, 2
  %i.df = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_4x4, i64 2), i64 %i.de
  %i.dg = load i8, ptr %i.df, align 2, !tbaa !16
  %i.dh = sext i8 %i.dg to i32
  %i.di = mul nsw i32 %i.dd, %i.dh
  %i.dj = add nsw i32 %i.di, %i.db
  %indvars.iv.next43.i.i.2.1 = or disjoint i64 %indvars.iv42.i.i.2, 2 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.2.1
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !11
  %i.dm = shl nuw nsw i64 %indvars.iv.next43.i.i.2.1, 2
  %i.dn = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_4x4, i64 2), i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 2, !tbaa !16
  %i.dp = sext i8 %i.do to i32
  %i.dq = mul nsw i32 %i.dl, %i.dp
  %i.dr = add nsw i32 %i.dq, %i.dj
  %indvars.iv.next43.i.i.2.2 = or disjoint i64 %indvars.iv42.i.i.2, 3 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.2.2
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !11
  %i.du = shl nuw nsw i64 %indvars.iv.next43.i.i.2.2, 2
  %i.dv = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_4x4, i64 2), i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 2, !tbaa !16
  %i.dx = sext i8 %i.dw to i32
  %i.dy = mul nsw i32 %i.dt, %i.dx
  %i.dz = add nsw i32 %i.dy, %i.dr                ; 3 uses
  %indvars.iv.next43.i.i.2.3 = add nuw nsw i64 %indvars.iv42.i.i.2, 4 ; 2 uses
  %niter46.next.3 = add i64 %niter46, 4           ; 2 uses
  %niter46.ncmp.3 = icmp eq i64 %niter46.next.3, %unroll_iter45
  br i1 %niter46.ncmp.3, label %._crit_edge.us.i.i.2.unr-lcssa, label %bb.d, !llvm.loop !0

._crit_edge.us.i.i.2.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod42.not = icmp eq i64 %xtraiter40, 0
  br i1 %lcmp.mod42.not, label %._crit_edge.us.i.i.2, label %.epil.preheader39

.epil.preheader39:                                ; preds = %._crit_edge.us.i.i.2.unr-lcssa, %._crit_edge.us.i.i.1
  %indvars.iv42.i.i.2.epil.init = phi i64 [ 0, %._crit_edge.us.i.i.1 ], [ %indvars.iv.next43.i.i.2.3, %._crit_edge.us.i.i.2.unr-lcssa ]
  %.02233.us.i.i.2.epil.init = phi i32 [ 0, %._crit_edge.us.i.i.1 ], [ %i.dz, %._crit_edge.us.i.i.2.unr-lcssa ]
  %lcmp.mod44 = icmp ne i64 %xtraiter40, 0
  tail call void @llvm.assume(i1 %lcmp.mod44)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader39
  %indvars.iv42.i.i.2.epil = phi i64 [ %indvars.iv42.i.i.2.epil.init, %.epil.preheader39 ], [ %indvars.iv.next43.i.i.2.epil, %bb.e ] ; 3 uses
  %.02233.us.i.i.2.epil = phi i32 [ %.02233.us.i.i.2.epil.init, %.epil.preheader39 ], [ %i.eh, %bb.e ]
  %epil.iter41 = phi i64 [ 0, %.epil.preheader39 ], [ %epil.iter41.next, %bb.e ]
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.2.epil
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !11
  %i.ec = shl nuw nsw i64 %indvars.iv42.i.i.2.epil, 2
  %i.ed = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_4x4, i64 2), i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 2, !tbaa !16
  %i.ef = sext i8 %i.ee to i32
  %i.eg = mul nsw i32 %i.eb, %i.ef
  %i.eh = add nsw i32 %i.eg, %.02233.us.i.i.2.epil ; 2 uses
  %indvars.iv.next43.i.i.2.epil = add nuw nsw i64 %indvars.iv42.i.i.2.epil, 1
  %epil.iter41.next = add i64 %epil.iter41, 1     ; 2 uses
  %epil.iter41.cmp.not = icmp eq i64 %epil.iter41.next, %xtraiter40
  br i1 %epil.iter41.cmp.not, label %._crit_edge.us.i.i.2, label %bb.e, !llvm.loop !21

._crit_edge.us.i.i.2:                             ; preds = %bb.e, %._crit_edge.us.i.i.2.unr-lcssa
  %.lcssa12 = phi i32 [ %i.dz, %._crit_edge.us.i.i.2.unr-lcssa ], [ %i.eh, %bb.e ]
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %1
  store i32 %.lcssa12, ptr %i.ei, align 4, !tbaa !11
  %xtraiter48 = and i64 %2, 3                     ; 3 uses
  %i.ej = icmp ult i64 %2, 4
  br i1 %i.ej, label %.epil.preheader47, label %._crit_edge.us.i.i.2.new

._crit_edge.us.i.i.2.new:                         ; preds = %._crit_edge.us.i.i.2
  %unroll_iter53 = and i64 %2, -4
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %._crit_edge.us.i.i.2.new
  %indvars.iv42.i.i.3 = phi i64 [ 0, %._crit_edge.us.i.i.2.new ], [ %indvars.iv.next43.i.i.3.3, %bb.f ] ; 6 uses
  %.02233.us.i.i.3 = phi i32 [ 0, %._crit_edge.us.i.i.2.new ], [ %i.fp, %bb.f ]
  %niter54 = phi i64 [ 0, %._crit_edge.us.i.i.2.new ], [ %niter54.next.3, %bb.f ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.3
  %i.el = load i32, ptr %i.ek, align 16, !tbaa !11
  %i.em = shl nuw nsw i64 %indvars.iv42.i.i.3, 2
  %i.en = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_4x4, i64 3), i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !16
  %i.ep = sext i8 %i.eo to i32
  %i.eq = mul nsw i32 %i.el, %i.ep
  %i.er = add nsw i32 %i.eq, %.02233.us.i.i.3
  %indvars.iv.next43.i.i.3 = or disjoint i64 %indvars.iv42.i.i.3, 1 ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.3
  %i.et = load i32, ptr %i.es, align 4, !tbaa !11
  %i.eu = shl nuw nsw i64 %indvars.iv.next43.i.i.3, 2
  %i.ev = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_4x4, i64 3), i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !16
  %i.ex = sext i8 %i.ew to i32
  %i.ey = mul nsw i32 %i.et, %i.ex
  %i.ez = add nsw i32 %i.ey, %i.er
  %indvars.iv.next43.i.i.3.1 = or disjoint i64 %indvars.iv42.i.i.3, 2 ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.3.1
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !11
  %i.fc = shl nuw nsw i64 %indvars.iv.next43.i.i.3.1, 2
  %i.fd = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_4x4, i64 3), i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !16
  %i.ff = sext i8 %i.fe to i32
  %i.fg = mul nsw i32 %i.fb, %i.ff
  %i.fh = add nsw i32 %i.fg, %i.ez
  %indvars.iv.next43.i.i.3.2 = or disjoint i64 %indvars.iv42.i.i.3, 3 ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.3.2
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !11
  %i.fk = shl nuw nsw i64 %indvars.iv.next43.i.i.3.2, 2
  %i.fl = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_4x4, i64 3), i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !16
  %i.fn = sext i8 %i.fm to i32
  %i.fo = mul nsw i32 %i.fj, %i.fn
  %i.fp = add nsw i32 %i.fo, %i.fh                ; 3 uses
  %indvars.iv.next43.i.i.3.3 = add nuw nsw i64 %indvars.iv42.i.i.3, 4 ; 2 uses
  %niter54.next.3 = add i64 %niter54, 4           ; 2 uses
  %niter54.ncmp.3 = icmp eq i64 %niter54.next.3, %unroll_iter53
  br i1 %niter54.ncmp.3, label %inv_dct8.exit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !0

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.fq = mul nsw i64 %indvars.iv.i.i, %1
  %i.fr = getelementptr inbounds [4 x i8], ptr %0, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !11
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !11
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fu = mul nsw i64 %indvars.iv.next.i.i, %1
  %i.fv = getelementptr inbounds [4 x i8], ptr %0, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !11
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !11
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.fy = mul nsw i64 %indvars.iv.next.i.i.1, %1
  %i.fz = getelementptr inbounds [4 x i8], ptr %0, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !11
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.1
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !11
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.gc = mul nsw i64 %indvars.iv.next.i.i.2, %1
  %i.gd = getelementptr inbounds [4 x i8], ptr %0, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !11
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.2
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !11
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %2
  br i1 %exitcond.not.i.i.3, label %.preheader.us.i.i.preheader.preheader, label %.lr.ph.i.i, !llvm.loop !22

inv_dct8.exit.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod50.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod50.not, label %inv_dct8.exit, label %.epil.preheader47

.epil.preheader47:                                ; preds = %inv_dct8.exit.loopexit.unr-lcssa, %._crit_edge.us.i.i.2
  %indvars.iv42.i.i.3.epil.init = phi i64 [ 0, %._crit_edge.us.i.i.2 ], [ %indvars.iv.next43.i.i.3.3, %inv_dct8.exit.loopexit.unr-lcssa ]
  %.02233.us.i.i.3.epil.init = phi i32 [ 0, %._crit_edge.us.i.i.2 ], [ %i.fp, %inv_dct8.exit.loopexit.unr-lcssa ]
  %lcmp.mod52 = icmp ne i64 %xtraiter48, 0
  tail call void @llvm.assume(i1 %lcmp.mod52)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader47
  %indvars.iv42.i.i.3.epil = phi i64 [ %indvars.iv42.i.i.3.epil.init, %.epil.preheader47 ], [ %indvars.iv.next43.i.i.3.epil, %bb.g ] ; 3 uses
  %.02233.us.i.i.3.epil = phi i32 [ %.02233.us.i.i.3.epil.init, %.epil.preheader47 ], [ %i.gn, %bb.g ]
  %epil.iter49 = phi i64 [ 0, %.epil.preheader47 ], [ %epil.iter49.next, %bb.g ]
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.3.epil
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !11
  %i.gi = shl nuw nsw i64 %indvars.iv42.i.i.3.epil, 2
  %i.gj = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_4x4, i64 3), i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !16
  %i.gl = sext i8 %i.gk to i32
  %i.gm = mul nsw i32 %i.gh, %i.gl
  %i.gn = add nsw i32 %i.gm, %.02233.us.i.i.3.epil ; 2 uses
  %indvars.iv.next43.i.i.3.epil = add nuw nsw i64 %indvars.iv42.i.i.3.epil, 1
  %epil.iter49.next = add i64 %epil.iter49, 1     ; 2 uses
  %epil.iter49.cmp.not = icmp eq i64 %epil.iter49.next, %xtraiter48
  br i1 %epil.iter49.cmp.not, label %inv_dct8.exit, label %bb.g, !llvm.loop !23

inv_dct8.exit:                                    ; preds = %inv_dct8.exit.loopexit.unr-lcssa, %bb.g, %.preheader.i.i.preheader
  %.lcssa.sink = phi i32 [ 0, %.preheader.i.i.preheader ], [ %i.fp, %inv_dct8.exit.loopexit.unr-lcssa ], [ %i.gn, %bb.g ]
  %i.go = getelementptr inbounds [4 x i8], ptr %0, i64 %1
  %.idx = shl i64 %1, 3
  %3 = getelementptr inbounds i8, ptr %i.go, i64 %.idx
  store i32 %.lcssa.sink, ptr %3, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_vvc_inv_dct8_8(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 48 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %.preheader.i.i.preheader, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ugt i64 %2, 7
  %ident.check.not = icmp eq i64 %1, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.ph, label %.lr.ph.i.i.preheader27

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <4 x i32>, ptr %i.b, align 4, !tbaa !11
  %wide.load19 = load <4 x i32>, ptr %i.c, align 4, !tbaa !11
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <4 x i32> %wide.load, ptr %i.d, align 16, !tbaa !11
  store <4 x i32> %wide.load19, ptr %i.e, align 16, !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.preheader.us.i.i.preheader.preheader, label %.lr.ph.i.i.preheader27

.lr.ph.i.i.preheader27:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader27, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader27 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader27 ]
  %i.g = mul nsw i64 %indvars.iv.i.i.prol, %1
  %i.h = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i.prol
  store i32 %i.i, ptr %i.j, align 4, !tbaa !11
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !25

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader27
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader27 ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.k = sub i64 %indvars.iv.i.i.ph, %2
  %i.l = icmp ugt i64 %i.k, -4
  br i1 %i.l, label %.preheader.us.i.i.preheader.preheader, label %.lr.ph.i.i

.preheader.us.i.i.preheader.preheader:            ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block
  %i.m = add i64 %2, -1                           ; 8 uses
  %xtraiter28 = and i64 %2, 3                     ; 3 uses
  %i.n = icmp ult i64 %i.m, 3
  br i1 %i.n, label %.preheader.us.i.i.preheader.epil.preheader, label %.preheader.us.i.i.preheader.preheader.new

.preheader.us.i.i.preheader.preheader.new:        ; preds = %.preheader.us.i.i.preheader.preheader
  %unroll_iter = and i64 %2, -4
  br label %.preheader.us.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.a
  store i32 0, ptr %0, align 4, !tbaa !11
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !11
  %i.p = getelementptr inbounds [4 x i8], ptr %i.o, i64 %1 ; 2 uses
  store i32 0, ptr %i.p, align 4, !tbaa !11
  %i.q = getelementptr inbounds [4 x i8], ptr %i.p, i64 %1 ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !11
  %i.r = getelementptr inbounds [4 x i8], ptr %i.q, i64 %1 ; 2 uses
  store i32 0, ptr %i.r, align 4, !tbaa !11
  %i.s = getelementptr inbounds [4 x i8], ptr %i.r, i64 %1 ; 2 uses
  store i32 0, ptr %i.s, align 4, !tbaa !11
  %i.t = getelementptr inbounds [4 x i8], ptr %i.s, i64 %1
  store i32 0, ptr %i.t, align 4, !tbaa !11
  br label %inv_dct8.exit

.preheader.us.i.i.preheader:                      ; preds = %.preheader.us.i.i.preheader, %.preheader.us.i.i.preheader.preheader.new
  %indvars.iv42.i.i = phi i64 [ 0, %.preheader.us.i.i.preheader.preheader.new ], [ %indvars.iv.next43.i.i.342, %.preheader.us.i.i.preheader ] ; 6 uses
  %.02233.us.i.i = phi i32 [ 0, %.preheader.us.i.i.preheader.preheader.new ], [ %i.az, %.preheader.us.i.i.preheader ]
  %niter = phi i64 [ 0, %.preheader.us.i.i.preheader.preheader.new ], [ %niter.next.3, %.preheader.us.i.i.preheader ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i
  %i.v = load i32, ptr %i.u, align 16, !tbaa !11
  %i.w = shl nuw nsw i64 %indvars.iv42.i.i, 3
  %i.x = getelementptr inbounds nuw i8, ptr @ff_vvc_dct8_8x8, i64 %i.w
  %i.y = load i8, ptr %i.x, align 16, !tbaa !16
  %i.z = sext i8 %i.y to i32
  %i.aa = mul nsw i32 %i.v, %i.z
  %i.ab = add nsw i32 %i.aa, %.02233.us.i.i
  %indvars.iv.next43.i.i = or disjoint i64 %indvars.iv42.i.i, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !11
  %i.ae = shl nuw nsw i64 %indvars.iv.next43.i.i, 3
  %i.af = getelementptr inbounds nuw i8, ptr @ff_vvc_dct8_8x8, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !16
  %i.ah = sext i8 %i.ag to i32
  %i.ai = mul nsw i32 %i.ad, %i.ah
  %i.aj = add nsw i32 %i.ai, %i.ab
  %indvars.iv.next43.i.i.134 = or disjoint i64 %indvars.iv42.i.i, 2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.134
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !11
  %i.am = shl nuw nsw i64 %indvars.iv.next43.i.i.134, 3
  %i.an = getelementptr inbounds nuw i8, ptr @ff_vvc_dct8_8x8, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 16, !tbaa !16
  %i.ap = sext i8 %i.ao to i32
  %i.aq = mul nsw i32 %i.al, %i.ap
  %i.ar = add nsw i32 %i.aq, %i.aj
  %indvars.iv.next43.i.i.238 = or disjoint i64 %indvars.iv42.i.i, 3 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.238
  %i.at = load i32, ptr %i.as, align 4, !tbaa !11
  %i.au = shl nuw nsw i64 %indvars.iv.next43.i.i.238, 3
  %i.av = getelementptr inbounds nuw i8, ptr @ff_vvc_dct8_8x8, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !16
  %i.ax = sext i8 %i.aw to i32
  %i.ay = mul nsw i32 %i.at, %i.ax
  %i.az = add nsw i32 %i.ay, %i.ar                ; 3 uses
  %indvars.iv.next43.i.i.342 = add nuw nsw i64 %indvars.iv42.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.i.unr-lcssa, label %.preheader.us.i.i.preheader, !llvm.loop !0

._crit_edge.us.i.i.unr-lcssa:                     ; preds = %.preheader.us.i.i.preheader
  %lcmp.mod29.not = icmp eq i64 %xtraiter28, 0
  br i1 %lcmp.mod29.not, label %._crit_edge.us.i.i, label %.preheader.us.i.i.preheader.epil.preheader

.preheader.us.i.i.preheader.epil.preheader:       ; preds = %._crit_edge.us.i.i.unr-lcssa, %.preheader.us.i.i.preheader.preheader
  %indvars.iv42.i.i.epil.init = phi i64 [ 0, %.preheader.us.i.i.preheader.preheader ], [ %indvars.iv.next43.i.i.342, %._crit_edge.us.i.i.unr-lcssa ]
  %.02233.us.i.i.epil.init = phi i32 [ 0, %.preheader.us.i.i.preheader.preheader ], [ %i.az, %._crit_edge.us.i.i.unr-lcssa ]
  %lcmp.mod31 = icmp ne i64 %xtraiter28, 0
  tail call void @llvm.assume(i1 %lcmp.mod31)
  br label %.preheader.us.i.i.preheader.epil

.preheader.us.i.i.preheader.epil:                 ; preds = %.preheader.us.i.i.preheader.epil, %.preheader.us.i.i.preheader.epil.preheader
  %indvars.iv42.i.i.epil = phi i64 [ %indvars.iv.next43.i.i.epil, %.preheader.us.i.i.preheader.epil ], [ %indvars.iv42.i.i.epil.init, %.preheader.us.i.i.preheader.epil.preheader ] ; 3 uses
  %.02233.us.i.i.epil = phi i32 [ %i.bh, %.preheader.us.i.i.preheader.epil ], [ %.02233.us.i.i.epil.init, %.preheader.us.i.i.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.us.i.i.preheader.epil ], [ 0, %.preheader.us.i.i.preheader.epil.preheader ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.epil
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !11
  %i.bc = shl nuw nsw i64 %indvars.iv42.i.i.epil, 3
  %i.bd = getelementptr inbounds nuw i8, ptr @ff_vvc_dct8_8x8, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !16
  %i.bf = sext i8 %i.be to i32
  %i.bg = mul nsw i32 %i.bb, %i.bf
  %i.bh = add nsw i32 %i.bg, %.02233.us.i.i.epil  ; 2 uses
  %indvars.iv.next43.i.i.epil = add nuw nsw i64 %indvars.iv42.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter28
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i.i, label %.preheader.us.i.i.preheader.epil, !llvm.loop !26

._crit_edge.us.i.i:                               ; preds = %.preheader.us.i.i.preheader.epil, %._crit_edge.us.i.i.unr-lcssa
  %.lcssa26.a = phi i32 [ %i.az, %._crit_edge.us.i.i.unr-lcssa ], [ %i.bh, %.preheader.us.i.i.preheader.epil ]
  store i32 %.lcssa26.a, ptr %0, align 4, !tbaa !11
  %xtraiter44 = and i64 %2, 3                     ; 3 uses
  %i.bi = icmp ult i64 %i.m, 3
  br i1 %i.bi, label %.epil.preheader, label %._crit_edge.us.i.i.new

._crit_edge.us.i.i.new:                           ; preds = %._crit_edge.us.i.i
  %unroll_iter49 = and i64 %2, -4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge.us.i.i.new
  %indvars.iv42.i.i.1 = phi i64 [ 0, %._crit_edge.us.i.i.new ], [ %indvars.iv.next43.i.i.1.3, %bb.b ] ; 6 uses
  %.02233.us.i.i.1 = phi i32 [ 0, %._crit_edge.us.i.i.new ], [ %i.co, %bb.b ]
  %niter50 = phi i64 [ 0, %._crit_edge.us.i.i.new ], [ %niter50.next.3, %bb.b ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.1
  %i.bk = load i32, ptr %i.bj, align 16, !tbaa !11
  %i.bl = shl nuw nsw i64 %indvars.iv42.i.i.1, 3
  %i.bm = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 1), i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !16
  %i.bo = sext i8 %i.bn to i32
  %i.bp = mul nsw i32 %i.bk, %i.bo
  %i.bq = add nsw i32 %i.bp, %.02233.us.i.i.1
  %indvars.iv.next43.i.i.1 = or disjoint i64 %indvars.iv42.i.i.1, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.1
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !11
  %i.bt = shl nuw nsw i64 %indvars.iv.next43.i.i.1, 3
  %i.bu = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 1), i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !16
  %i.bw = sext i8 %i.bv to i32
  %i.bx = mul nsw i32 %i.bs, %i.bw
  %i.by = add nsw i32 %i.bx, %i.bq
  %indvars.iv.next43.i.i.1.1 = or disjoint i64 %indvars.iv42.i.i.1, 2 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.1.1
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !11
  %i.cb = shl nuw nsw i64 %indvars.iv.next43.i.i.1.1, 3
  %i.cc = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 1), i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !16
  %i.ce = sext i8 %i.cd to i32
  %i.cf = mul nsw i32 %i.ca, %i.ce
  %i.cg = add nsw i32 %i.cf, %i.by
  %indvars.iv.next43.i.i.1.2 = or disjoint i64 %indvars.iv42.i.i.1, 3 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.1.2
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !11
  %i.cj = shl nuw nsw i64 %indvars.iv.next43.i.i.1.2, 3
  %i.ck = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 1), i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !16
  %i.cm = sext i8 %i.cl to i32
  %i.cn = mul nsw i32 %i.ci, %i.cm
  %i.co = add nsw i32 %i.cn, %i.cg                ; 3 uses
  %indvars.iv.next43.i.i.1.3 = add nuw nsw i64 %indvars.iv42.i.i.1, 4 ; 2 uses
  %niter50.next.3 = add i64 %niter50, 4           ; 2 uses
  %niter50.ncmp.3 = icmp eq i64 %niter50.next.3, %unroll_iter49
  br i1 %niter50.ncmp.3, label %._crit_edge.us.i.i.1.unr-lcssa, label %bb.b, !llvm.loop !0

._crit_edge.us.i.i.1.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod46.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod46.not, label %._crit_edge.us.i.i.1, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.i.1.unr-lcssa, %._crit_edge.us.i.i
  %indvars.iv42.i.i.1.epil.init = phi i64 [ 0, %._crit_edge.us.i.i ], [ %indvars.iv.next43.i.i.1.3, %._crit_edge.us.i.i.1.unr-lcssa ]
  %.02233.us.i.i.1.epil.init = phi i32 [ 0, %._crit_edge.us.i.i ], [ %i.co, %._crit_edge.us.i.i.1.unr-lcssa ]
  %lcmp.mod48 = icmp ne i64 %xtraiter44, 0
  tail call void @llvm.assume(i1 %lcmp.mod48)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv42.i.i.1.epil = phi i64 [ %indvars.iv42.i.i.1.epil.init, %.epil.preheader ], [ %indvars.iv.next43.i.i.1.epil, %bb.c ] ; 3 uses
  %.02233.us.i.i.1.epil = phi i32 [ %.02233.us.i.i.1.epil.init, %.epil.preheader ], [ %i.cw, %bb.c ]
  %epil.iter45 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter45.next, %bb.c ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.1.epil
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !11
  %i.cr = shl nuw nsw i64 %indvars.iv42.i.i.1.epil, 3
  %i.cs = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 1), i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !16
  %i.cu = sext i8 %i.ct to i32
  %i.cv = mul nsw i32 %i.cq, %i.cu
  %i.cw = add nsw i32 %i.cv, %.02233.us.i.i.1.epil ; 2 uses
  %indvars.iv.next43.i.i.1.epil = add nuw nsw i64 %indvars.iv42.i.i.1.epil, 1
  %epil.iter45.next = add i64 %epil.iter45, 1     ; 2 uses
  %epil.iter45.cmp.not = icmp eq i64 %epil.iter45.next, %xtraiter44
  br i1 %epil.iter45.cmp.not, label %._crit_edge.us.i.i.1, label %bb.c, !llvm.loop !27

._crit_edge.us.i.i.1:                             ; preds = %bb.c, %._crit_edge.us.i.i.1.unr-lcssa
  %.lcssa25.a = phi i32 [ %i.co, %._crit_edge.us.i.i.1.unr-lcssa ], [ %i.cw, %bb.c ]
  %i.cx = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 2 uses
  store i32 %.lcssa25.a, ptr %i.cx, align 4, !tbaa !11
  %xtraiter52 = and i64 %2, 3                     ; 3 uses
  %i.cy = icmp ult i64 %i.m, 3
  br i1 %i.cy, label %.epil.preheader51, label %._crit_edge.us.i.i.1.new

._crit_edge.us.i.i.1.new:                         ; preds = %._crit_edge.us.i.i.1
  %unroll_iter57 = and i64 %2, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %._crit_edge.us.i.i.1.new
  %indvars.iv42.i.i.2 = phi i64 [ 0, %._crit_edge.us.i.i.1.new ], [ %indvars.iv.next43.i.i.2.3, %bb.d ] ; 6 uses
  %.02233.us.i.i.2 = phi i32 [ 0, %._crit_edge.us.i.i.1.new ], [ %i.ee, %bb.d ]
  %niter58 = phi i64 [ 0, %._crit_edge.us.i.i.1.new ], [ %niter58.next.3, %bb.d ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.2
  %i.da = load i32, ptr %i.cz, align 16, !tbaa !11
  %i.db = shl nuw nsw i64 %indvars.iv42.i.i.2, 3
  %i.dc = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 2), i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 2, !tbaa !16
  %i.de = sext i8 %i.dd to i32
  %i.df = mul nsw i32 %i.da, %i.de
  %i.dg = add nsw i32 %i.df, %.02233.us.i.i.2
  %indvars.iv.next43.i.i.2 = or disjoint i64 %indvars.iv42.i.i.2, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.2
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !11
  %i.dj = shl nuw nsw i64 %indvars.iv.next43.i.i.2, 3
  %i.dk = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 2), i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 2, !tbaa !16
  %i.dm = sext i8 %i.dl to i32
  %i.dn = mul nsw i32 %i.di, %i.dm
  %i.do = add nsw i32 %i.dn, %i.dg
  %indvars.iv.next43.i.i.2.1 = or disjoint i64 %indvars.iv42.i.i.2, 2 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.2.1
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !11
  %i.dr = shl nuw nsw i64 %indvars.iv.next43.i.i.2.1, 3
  %i.ds = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 2), i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 2, !tbaa !16
  %i.du = sext i8 %i.dt to i32
  %i.dv = mul nsw i32 %i.dq, %i.du
  %i.dw = add nsw i32 %i.dv, %i.do
  %indvars.iv.next43.i.i.2.2 = or disjoint i64 %indvars.iv42.i.i.2, 3 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.2.2
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !11
  %i.dz = shl nuw nsw i64 %indvars.iv.next43.i.i.2.2, 3
  %i.ea = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 2), i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 2, !tbaa !16
  %i.ec = sext i8 %i.eb to i32
  %i.ed = mul nsw i32 %i.dy, %i.ec
  %i.ee = add nsw i32 %i.ed, %i.dw                ; 3 uses
  %indvars.iv.next43.i.i.2.3 = add nuw nsw i64 %indvars.iv42.i.i.2, 4 ; 2 uses
  %niter58.next.3 = add i64 %niter58, 4           ; 2 uses
  %niter58.ncmp.3 = icmp eq i64 %niter58.next.3, %unroll_iter57
  br i1 %niter58.ncmp.3, label %._crit_edge.us.i.i.2.unr-lcssa, label %bb.d, !llvm.loop !0

._crit_edge.us.i.i.2.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod54.not = icmp eq i64 %xtraiter52, 0
  br i1 %lcmp.mod54.not, label %._crit_edge.us.i.i.2, label %.epil.preheader51

.epil.preheader51:                                ; preds = %._crit_edge.us.i.i.2.unr-lcssa, %._crit_edge.us.i.i.1
  %indvars.iv42.i.i.2.epil.init = phi i64 [ 0, %._crit_edge.us.i.i.1 ], [ %indvars.iv.next43.i.i.2.3, %._crit_edge.us.i.i.2.unr-lcssa ]
  %.02233.us.i.i.2.epil.init = phi i32 [ 0, %._crit_edge.us.i.i.1 ], [ %i.ee, %._crit_edge.us.i.i.2.unr-lcssa ]
  %lcmp.mod56 = icmp ne i64 %xtraiter52, 0
  tail call void @llvm.assume(i1 %lcmp.mod56)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader51
  %indvars.iv42.i.i.2.epil = phi i64 [ %indvars.iv42.i.i.2.epil.init, %.epil.preheader51 ], [ %indvars.iv.next43.i.i.2.epil, %bb.e ] ; 3 uses
  %.02233.us.i.i.2.epil = phi i32 [ %.02233.us.i.i.2.epil.init, %.epil.preheader51 ], [ %i.em, %bb.e ]
  %epil.iter53 = phi i64 [ 0, %.epil.preheader51 ], [ %epil.iter53.next, %bb.e ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.2.epil
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !11
  %i.eh = shl nuw nsw i64 %indvars.iv42.i.i.2.epil, 3
  %i.ei = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 2), i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 2, !tbaa !16
  %i.ek = sext i8 %i.ej to i32
  %i.el = mul nsw i32 %i.eg, %i.ek
  %i.em = add nsw i32 %i.el, %.02233.us.i.i.2.epil ; 2 uses
  %indvars.iv.next43.i.i.2.epil = add nuw nsw i64 %indvars.iv42.i.i.2.epil, 1
  %epil.iter53.next = add i64 %epil.iter53, 1     ; 2 uses
  %epil.iter53.cmp.not = icmp eq i64 %epil.iter53.next, %xtraiter52
  br i1 %epil.iter53.cmp.not, label %._crit_edge.us.i.i.2, label %bb.e, !llvm.loop !28

._crit_edge.us.i.i.2:                             ; preds = %bb.e, %._crit_edge.us.i.i.2.unr-lcssa
  %.lcssa24.a = phi i32 [ %i.ee, %._crit_edge.us.i.i.2.unr-lcssa ], [ %i.em, %bb.e ]
  %i.en = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %1 ; 2 uses
  store i32 %.lcssa24.a, ptr %i.en, align 4, !tbaa !11
  %xtraiter60 = and i64 %2, 3                     ; 3 uses
  %i.eo = icmp ult i64 %i.m, 3
  br i1 %i.eo, label %.epil.preheader59, label %._crit_edge.us.i.i.2.new

._crit_edge.us.i.i.2.new:                         ; preds = %._crit_edge.us.i.i.2
  %unroll_iter65 = and i64 %2, -4
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %._crit_edge.us.i.i.2.new
  %indvars.iv42.i.i.3 = phi i64 [ 0, %._crit_edge.us.i.i.2.new ], [ %indvars.iv.next43.i.i.3.3, %bb.f ] ; 6 uses
  %.02233.us.i.i.3 = phi i32 [ 0, %._crit_edge.us.i.i.2.new ], [ %i.fu, %bb.f ]
  %niter66 = phi i64 [ 0, %._crit_edge.us.i.i.2.new ], [ %niter66.next.3, %bb.f ]
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.3
  %i.eq = load i32, ptr %i.ep, align 16, !tbaa !11
  %i.er = shl nuw nsw i64 %indvars.iv42.i.i.3, 3
  %i.es = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 3), i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !16
  %i.eu = sext i8 %i.et to i32
  %i.ev = mul nsw i32 %i.eq, %i.eu
  %i.ew = add nsw i32 %i.ev, %.02233.us.i.i.3
  %indvars.iv.next43.i.i.3 = or disjoint i64 %indvars.iv42.i.i.3, 1 ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.3
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !11
  %i.ez = shl nuw nsw i64 %indvars.iv.next43.i.i.3, 3
  %i.fa = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 3), i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !16
  %i.fc = sext i8 %i.fb to i32
  %i.fd = mul nsw i32 %i.ey, %i.fc
  %i.fe = add nsw i32 %i.fd, %i.ew
  %indvars.iv.next43.i.i.3.1 = or disjoint i64 %indvars.iv42.i.i.3, 2 ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.3.1
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !11
  %i.fh = shl nuw nsw i64 %indvars.iv.next43.i.i.3.1, 3
  %i.fi = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 3), i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !16
  %i.fk = sext i8 %i.fj to i32
  %i.fl = mul nsw i32 %i.fg, %i.fk
  %i.fm = add nsw i32 %i.fl, %i.fe
  %indvars.iv.next43.i.i.3.2 = or disjoint i64 %indvars.iv42.i.i.3, 3 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.3.2
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !11
  %i.fp = shl nuw nsw i64 %indvars.iv.next43.i.i.3.2, 3
  %i.fq = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 3), i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !16
  %i.fs = sext i8 %i.fr to i32
  %i.ft = mul nsw i32 %i.fo, %i.fs
  %i.fu = add nsw i32 %i.ft, %i.fm                ; 3 uses
  %indvars.iv.next43.i.i.3.3 = add nuw nsw i64 %indvars.iv42.i.i.3, 4 ; 2 uses
  %niter66.next.3 = add i64 %niter66, 4           ; 2 uses
  %niter66.ncmp.3 = icmp eq i64 %niter66.next.3, %unroll_iter65
  br i1 %niter66.ncmp.3, label %._crit_edge.us.i.i.3.unr-lcssa, label %bb.f, !llvm.loop !0

._crit_edge.us.i.i.3.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod62.not = icmp eq i64 %xtraiter60, 0
  br i1 %lcmp.mod62.not, label %._crit_edge.us.i.i.3, label %.epil.preheader59

.epil.preheader59:                                ; preds = %._crit_edge.us.i.i.3.unr-lcssa, %._crit_edge.us.i.i.2
  %indvars.iv42.i.i.3.epil.init = phi i64 [ 0, %._crit_edge.us.i.i.2 ], [ %indvars.iv.next43.i.i.3.3, %._crit_edge.us.i.i.3.unr-lcssa ]
  %.02233.us.i.i.3.epil.init = phi i32 [ 0, %._crit_edge.us.i.i.2 ], [ %i.fu, %._crit_edge.us.i.i.3.unr-lcssa ]
  %lcmp.mod64 = icmp ne i64 %xtraiter60, 0
  tail call void @llvm.assume(i1 %lcmp.mod64)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader59
  %indvars.iv42.i.i.3.epil = phi i64 [ %indvars.iv42.i.i.3.epil.init, %.epil.preheader59 ], [ %indvars.iv.next43.i.i.3.epil, %bb.g ] ; 3 uses
  %.02233.us.i.i.3.epil = phi i32 [ %.02233.us.i.i.3.epil.init, %.epil.preheader59 ], [ %i.gc, %bb.g ]
  %epil.iter61 = phi i64 [ 0, %.epil.preheader59 ], [ %epil.iter61.next, %bb.g ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.3.epil
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !11
  %i.fx = shl nuw nsw i64 %indvars.iv42.i.i.3.epil, 3
  %i.fy = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 3), i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !16
  %i.ga = sext i8 %i.fz to i32
  %i.gb = mul nsw i32 %i.fw, %i.ga
  %i.gc = add nsw i32 %i.gb, %.02233.us.i.i.3.epil ; 2 uses
  %indvars.iv.next43.i.i.3.epil = add nuw nsw i64 %indvars.iv42.i.i.3.epil, 1
  %epil.iter61.next = add i64 %epil.iter61, 1     ; 2 uses
  %epil.iter61.cmp.not = icmp eq i64 %epil.iter61.next, %xtraiter60
  br i1 %epil.iter61.cmp.not, label %._crit_edge.us.i.i.3, label %bb.g, !llvm.loop !29

._crit_edge.us.i.i.3:                             ; preds = %bb.g, %._crit_edge.us.i.i.3.unr-lcssa
  %.lcssa23.a = phi i32 [ %i.fu, %._crit_edge.us.i.i.3.unr-lcssa ], [ %i.gc, %bb.g ]
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.en, i64 %1 ; 2 uses
  store i32 %.lcssa23.a, ptr %i.gd, align 4, !tbaa !11
  %xtraiter68 = and i64 %2, 3                     ; 3 uses
  %i.ge = icmp ult i64 %i.m, 3
  br i1 %i.ge, label %.epil.preheader67, label %._crit_edge.us.i.i.3.new

._crit_edge.us.i.i.3.new:                         ; preds = %._crit_edge.us.i.i.3
  %unroll_iter73 = and i64 %2, -4
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %._crit_edge.us.i.i.3.new
  %indvars.iv42.i.i.4 = phi i64 [ 0, %._crit_edge.us.i.i.3.new ], [ %indvars.iv.next43.i.i.4.3, %bb.h ] ; 6 uses
  %.02233.us.i.i.4 = phi i32 [ 0, %._crit_edge.us.i.i.3.new ], [ %i.hk, %bb.h ]
  %niter74 = phi i64 [ 0, %._crit_edge.us.i.i.3.new ], [ %niter74.next.3, %bb.h ]
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.4
  %i.gg = load i32, ptr %i.gf, align 16, !tbaa !11
  %i.gh = shl nuw nsw i64 %indvars.iv42.i.i.4, 3
  %i.gi = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 4), i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 4, !tbaa !16
  %i.gk = sext i8 %i.gj to i32
  %i.gl = mul nsw i32 %i.gg, %i.gk
  %i.gm = add nsw i32 %i.gl, %.02233.us.i.i.4
  %indvars.iv.next43.i.i.4 = or disjoint i64 %indvars.iv42.i.i.4, 1 ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.4
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !11
  %i.gp = shl nuw nsw i64 %indvars.iv.next43.i.i.4, 3
  %i.gq = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 4), i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 4, !tbaa !16
  %i.gs = sext i8 %i.gr to i32
  %i.gt = mul nsw i32 %i.go, %i.gs
  %i.gu = add nsw i32 %i.gt, %i.gm
  %indvars.iv.next43.i.i.4.1 = or disjoint i64 %indvars.iv42.i.i.4, 2 ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.4.1
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !11
  %i.gx = shl nuw nsw i64 %indvars.iv.next43.i.i.4.1, 3
  %i.gy = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 4), i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 4, !tbaa !16
  %i.ha = sext i8 %i.gz to i32
  %i.hb = mul nsw i32 %i.gw, %i.ha
  %i.hc = add nsw i32 %i.hb, %i.gu
  %indvars.iv.next43.i.i.4.2 = or disjoint i64 %indvars.iv42.i.i.4, 3 ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.4.2
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !11
  %i.hf = shl nuw nsw i64 %indvars.iv.next43.i.i.4.2, 3
  %i.hg = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 4), i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 4, !tbaa !16
  %i.hi = sext i8 %i.hh to i32
  %i.hj = mul nsw i32 %i.he, %i.hi
  %i.hk = add nsw i32 %i.hj, %i.hc                ; 3 uses
  %indvars.iv.next43.i.i.4.3 = add nuw nsw i64 %indvars.iv42.i.i.4, 4 ; 2 uses
  %niter74.next.3 = add i64 %niter74, 4           ; 2 uses
  %niter74.ncmp.3 = icmp eq i64 %niter74.next.3, %unroll_iter73
  br i1 %niter74.ncmp.3, label %._crit_edge.us.i.i.4.unr-lcssa, label %bb.h, !llvm.loop !0

._crit_edge.us.i.i.4.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod70.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod70.not, label %._crit_edge.us.i.i.4, label %.epil.preheader67

.epil.preheader67:                                ; preds = %._crit_edge.us.i.i.4.unr-lcssa, %._crit_edge.us.i.i.3
  %indvars.iv42.i.i.4.epil.init = phi i64 [ 0, %._crit_edge.us.i.i.3 ], [ %indvars.iv.next43.i.i.4.3, %._crit_edge.us.i.i.4.unr-lcssa ]
  %.02233.us.i.i.4.epil.init = phi i32 [ 0, %._crit_edge.us.i.i.3 ], [ %i.hk, %._crit_edge.us.i.i.4.unr-lcssa ]
  %lcmp.mod72 = icmp ne i64 %xtraiter68, 0
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader67
  %indvars.iv42.i.i.4.epil = phi i64 [ %indvars.iv42.i.i.4.epil.init, %.epil.preheader67 ], [ %indvars.iv.next43.i.i.4.epil, %bb.i ] ; 3 uses
  %.02233.us.i.i.4.epil = phi i32 [ %.02233.us.i.i.4.epil.init, %.epil.preheader67 ], [ %i.hs, %bb.i ]
  %epil.iter69 = phi i64 [ 0, %.epil.preheader67 ], [ %epil.iter69.next, %bb.i ]
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.4.epil
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !11
  %i.hn = shl nuw nsw i64 %indvars.iv42.i.i.4.epil, 3
  %i.ho = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 4), i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 4, !tbaa !16
  %i.hq = sext i8 %i.hp to i32
  %i.hr = mul nsw i32 %i.hm, %i.hq
  %i.hs = add nsw i32 %i.hr, %.02233.us.i.i.4.epil ; 2 uses
  %indvars.iv.next43.i.i.4.epil = add nuw nsw i64 %indvars.iv42.i.i.4.epil, 1
  %epil.iter69.next = add i64 %epil.iter69, 1     ; 2 uses
  %epil.iter69.cmp.not = icmp eq i64 %epil.iter69.next, %xtraiter68
  br i1 %epil.iter69.cmp.not, label %._crit_edge.us.i.i.4, label %bb.i, !llvm.loop !30

._crit_edge.us.i.i.4:                             ; preds = %bb.i, %._crit_edge.us.i.i.4.unr-lcssa
  %.lcssa22.a = phi i32 [ %i.hk, %._crit_edge.us.i.i.4.unr-lcssa ], [ %i.hs, %bb.i ]
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %1 ; 2 uses
  store i32 %.lcssa22.a, ptr %i.ht, align 4, !tbaa !11
  %xtraiter76 = and i64 %2, 3                     ; 3 uses
  %i.hu = icmp ult i64 %i.m, 3
  br i1 %i.hu, label %.epil.preheader75, label %._crit_edge.us.i.i.4.new

._crit_edge.us.i.i.4.new:                         ; preds = %._crit_edge.us.i.i.4
  %unroll_iter81 = and i64 %2, -4
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %._crit_edge.us.i.i.4.new
  %indvars.iv42.i.i.5 = phi i64 [ 0, %._crit_edge.us.i.i.4.new ], [ %indvars.iv.next43.i.i.5.3, %bb.j ] ; 6 uses
  %.02233.us.i.i.5 = phi i32 [ 0, %._crit_edge.us.i.i.4.new ], [ %i.ja, %bb.j ]
  %niter82 = phi i64 [ 0, %._crit_edge.us.i.i.4.new ], [ %niter82.next.3, %bb.j ]
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.5
  %i.hw = load i32, ptr %i.hv, align 16, !tbaa !11
  %i.hx = shl nuw nsw i64 %indvars.iv42.i.i.5, 3
  %i.hy = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 5), i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !16
  %i.ia = sext i8 %i.hz to i32
  %i.ib = mul nsw i32 %i.hw, %i.ia
  %i.ic = add nsw i32 %i.ib, %.02233.us.i.i.5
  %indvars.iv.next43.i.i.5 = or disjoint i64 %indvars.iv42.i.i.5, 1 ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.5
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !11
  %i.if = shl nuw nsw i64 %indvars.iv.next43.i.i.5, 3
  %i.ig = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 5), i64 %i.if
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !16
  %i.ii = sext i8 %i.ih to i32
  %i.ij = mul nsw i32 %i.ie, %i.ii
  %i.ik = add nsw i32 %i.ij, %i.ic
  %indvars.iv.next43.i.i.5.1 = or disjoint i64 %indvars.iv42.i.i.5, 2 ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.5.1
end_hunk_0
begin_hunk_1_@ff_vvc_inv_dct8_8:bb.a
  br i1 %epil.iter77.cmp.not, label %._crit_edge.us.i.i.5, label %bb.k, !llvm.loop !31

._crit_edge.us.i.i.5:                             ; preds = %bb.k, %._crit_edge.us.i.i.5.unr-lcssa
  %.lcssa21.a = phi i32 [ %i.ja, %._crit_edge.us.i.i.5.unr-lcssa ], [ %i.ji, %bb.k ]
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %1 ; 2 uses
  store i32 %.lcssa21.a, ptr %i.jj, align 4, !tbaa !11
  %xtraiter84 = and i64 %2, 3                     ; 3 uses
  %i.jk = icmp ult i64 %i.m, 3
  br i1 %i.jk, label %.epil.preheader83, label %._crit_edge.us.i.i.5.new

._crit_edge.us.i.i.5.new:                         ; preds = %._crit_edge.us.i.i.5
  %unroll_iter89 = and i64 %2, -4
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %._crit_edge.us.i.i.5.new
  %indvars.iv42.i.i.6 = phi i64 [ 0, %._crit_edge.us.i.i.5.new ], [ %indvars.iv.next43.i.i.6.3, %bb.l ] ; 6 uses
  %.02233.us.i.i.6 = phi i32 [ 0, %._crit_edge.us.i.i.5.new ], [ %i.kq, %bb.l ]
  %niter90 = phi i64 [ 0, %._crit_edge.us.i.i.5.new ], [ %niter90.next.3, %bb.l ]
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.6
  %i.jm = load i32, ptr %i.jl, align 16, !tbaa !11
  %i.jn = shl nuw nsw i64 %indvars.iv42.i.i.6, 3
  %i.jo = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 6), i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 2, !tbaa !16
  %i.jq = sext i8 %i.jp to i32
  %i.jr = mul nsw i32 %i.jm, %i.jq
  %i.js = add nsw i32 %i.jr, %.02233.us.i.i.6
  %indvars.iv.next43.i.i.6 = or disjoint i64 %indvars.iv42.i.i.6, 1 ; 2 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.6
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !11
  %i.jv = shl nuw nsw i64 %indvars.iv.next43.i.i.6, 3
  %i.jw = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 6), i64 %i.jv
  %i.jx = load i8, ptr %i.jw, align 2, !tbaa !16
  %i.jy = sext i8 %i.jx to i32
  %i.jz = mul nsw i32 %i.ju, %i.jy
  %i.ka = add nsw i32 %i.jz, %i.js
  %indvars.iv.next43.i.i.6.1 = or disjoint i64 %indvars.iv42.i.i.6, 2 ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.6.1
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !11
  %i.kd = shl nuw nsw i64 %indvars.iv.next43.i.i.6.1, 3
  %i.ke = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 6), i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 2, !tbaa !16
  %i.kg = sext i8 %i.kf to i32
  %i.kh = mul nsw i32 %i.kc, %i.kg
  %i.ki = add nsw i32 %i.kh, %i.ka
  %indvars.iv.next43.i.i.6.2 = or disjoint i64 %indvars.iv42.i.i.6, 3 ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.6.2
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !11
  %i.kl = shl nuw nsw i64 %indvars.iv.next43.i.i.6.2, 3
  %i.km = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 6), i64 %i.kl
  %i.kn = load i8, ptr %i.km, align 2, !tbaa !16
  %i.ko = sext i8 %i.kn to i32
  %i.kp = mul nsw i32 %i.kk, %i.ko
  %i.kq = add nsw i32 %i.kp, %i.ki                ; 3 uses
  %indvars.iv.next43.i.i.6.3 = add nuw nsw i64 %indvars.iv42.i.i.6, 4 ; 2 uses
  %niter90.next.3 = add i64 %niter90, 4           ; 2 uses
  %niter90.ncmp.3 = icmp eq i64 %niter90.next.3, %unroll_iter89
  br i1 %niter90.ncmp.3, label %._crit_edge.us.i.i.6.unr-lcssa, label %bb.l, !llvm.loop !0

._crit_edge.us.i.i.6.unr-lcssa:                   ; preds = %bb.l
  %lcmp.mod86.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod86.not, label %._crit_edge.us.i.i.6, label %.epil.preheader83

.epil.preheader83:                                ; preds = %._crit_edge.us.i.i.6.unr-lcssa, %._crit_edge.us.i.i.5
  %indvars.iv42.i.i.6.epil.init = phi i64 [ 0, %._crit_edge.us.i.i.5 ], [ %indvars.iv.next43.i.i.6.3, %._crit_edge.us.i.i.6.unr-lcssa ]
  %.02233.us.i.i.6.epil.init = phi i32 [ 0, %._crit_edge.us.i.i.5 ], [ %i.kq, %._crit_edge.us.i.i.6.unr-lcssa ]
  %lcmp.mod88 = icmp ne i64 %xtraiter84, 0
  tail call void @llvm.assume(i1 %lcmp.mod88)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader83
  %indvars.iv42.i.i.6.epil = phi i64 [ %indvars.iv42.i.i.6.epil.init, %.epil.preheader83 ], [ %indvars.iv.next43.i.i.6.epil, %bb.m ] ; 3 uses
  %.02233.us.i.i.6.epil = phi i32 [ %.02233.us.i.i.6.epil.init, %.epil.preheader83 ], [ %i.ky, %bb.m ]
  %epil.iter85 = phi i64 [ 0, %.epil.preheader83 ], [ %epil.iter85.next, %bb.m ]
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.6.epil
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !11
  %i.kt = shl nuw nsw i64 %indvars.iv42.i.i.6.epil, 3
  %i.ku = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 6), i64 %i.kt
  %i.kv = load i8, ptr %i.ku, align 2, !tbaa !16
  %i.kw = sext i8 %i.kv to i32
  %i.kx = mul nsw i32 %i.ks, %i.kw
  %i.ky = add nsw i32 %i.kx, %.02233.us.i.i.6.epil ; 2 uses
  %indvars.iv.next43.i.i.6.epil = add nuw nsw i64 %indvars.iv42.i.i.6.epil, 1
  %epil.iter85.next = add i64 %epil.iter85, 1     ; 2 uses
  %epil.iter85.cmp.not = icmp eq i64 %epil.iter85.next, %xtraiter84
  br i1 %epil.iter85.cmp.not, label %._crit_edge.us.i.i.6, label %bb.m, !llvm.loop !32

._crit_edge.us.i.i.6:                             ; preds = %bb.m, %._crit_edge.us.i.i.6.unr-lcssa
  %.lcssa20 = phi i32 [ %i.kq, %._crit_edge.us.i.i.6.unr-lcssa ], [ %i.ky, %bb.m ]
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.jj, i64 %1
  store i32 %.lcssa20, ptr %i.kz, align 4, !tbaa !11
  %xtraiter92 = and i64 %2, 3                     ; 3 uses
  %i.la = icmp ult i64 %i.m, 3
  br i1 %i.la, label %.epil.preheader91, label %._crit_edge.us.i.i.6.new

._crit_edge.us.i.i.6.new:                         ; preds = %._crit_edge.us.i.i.6
  %unroll_iter97 = and i64 %2, -4
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %._crit_edge.us.i.i.6.new
  %indvars.iv42.i.i.7 = phi i64 [ 0, %._crit_edge.us.i.i.6.new ], [ %indvars.iv.next43.i.i.7.3, %bb.n ] ; 6 uses
  %.02233.us.i.i.7 = phi i32 [ 0, %._crit_edge.us.i.i.6.new ], [ %i.mg, %bb.n ]
  %niter98 = phi i64 [ 0, %._crit_edge.us.i.i.6.new ], [ %niter98.next.3, %bb.n ]
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.7
  %i.lc = load i32, ptr %i.lb, align 16, !tbaa !11
  %i.ld = shl nuw nsw i64 %indvars.iv42.i.i.7, 3
  %i.le = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 7), i64 %i.ld
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !16
  %i.lg = sext i8 %i.lf to i32
  %i.lh = mul nsw i32 %i.lc, %i.lg
  %i.li = add nsw i32 %i.lh, %.02233.us.i.i.7
  %indvars.iv.next43.i.i.7 = or disjoint i64 %indvars.iv42.i.i.7, 1 ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.7
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !11
  %i.ll = shl nuw nsw i64 %indvars.iv.next43.i.i.7, 3
  %i.lm = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 7), i64 %i.ll
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !16
  %i.lo = sext i8 %i.ln to i32
  %i.lp = mul nsw i32 %i.lk, %i.lo
  %i.lq = add nsw i32 %i.lp, %i.li
  %indvars.iv.next43.i.i.7.1 = or disjoint i64 %indvars.iv42.i.i.7, 2 ; 2 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.7.1
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !11
  %i.lt = shl nuw nsw i64 %indvars.iv.next43.i.i.7.1, 3
  %i.lu = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 7), i64 %i.lt
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !16
  %i.lw = sext i8 %i.lv to i32
  %i.lx = mul nsw i32 %i.ls, %i.lw
  %i.ly = add nsw i32 %i.lx, %i.lq
  %indvars.iv.next43.i.i.7.2 = or disjoint i64 %indvars.iv42.i.i.7, 3 ; 2 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.7.2
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !11
  %i.mb = shl nuw nsw i64 %indvars.iv.next43.i.i.7.2, 3
  %i.mc = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 7), i64 %i.mb
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !16
  %i.me = sext i8 %i.md to i32
  %i.mf = mul nsw i32 %i.ma, %i.me
  %i.mg = add nsw i32 %i.mf, %i.ly                ; 3 uses
  %indvars.iv.next43.i.i.7.3 = add nuw nsw i64 %indvars.iv42.i.i.7, 4 ; 2 uses
  %niter98.next.3 = add i64 %niter98, 4           ; 2 uses
  %niter98.ncmp.3 = icmp eq i64 %niter98.next.3, %unroll_iter97
  br i1 %niter98.ncmp.3, label %inv_dct8.exit.loopexit.unr-lcssa, label %bb.n, !llvm.loop !0

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.mh = mul nsw i64 %indvars.iv.i.i, %1
  %i.mi = getelementptr inbounds [4 x i8], ptr %0, i64 %i.mh
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !11
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i
  store i32 %i.mj, ptr %i.mk, align 4, !tbaa !11
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ml = mul nsw i64 %indvars.iv.next.i.i, %1
  %i.mm = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ml
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !11
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i
  store i32 %i.mn, ptr %i.mo, align 4, !tbaa !11
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.mp = mul nsw i64 %indvars.iv.next.i.i.1, %1
  %i.mq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.mp
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !11
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.1
  store i32 %i.mr, ptr %i.ms, align 4, !tbaa !11
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.mt = mul nsw i64 %indvars.iv.next.i.i.2, %1
  %i.mu = getelementptr inbounds [4 x i8], ptr %0, i64 %i.mt
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !11
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.2
  store i32 %i.mv, ptr %i.mw, align 4, !tbaa !11
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %2
  br i1 %exitcond.not.i.i.3, label %.preheader.us.i.i.preheader.preheader, label %.lr.ph.i.i, !llvm.loop !33

inv_dct8.exit.loopexit.unr-lcssa:                 ; preds = %bb.n
  %lcmp.mod94.not = icmp eq i64 %xtraiter92, 0
  br i1 %lcmp.mod94.not, label %inv_dct8.exit, label %.epil.preheader91

.epil.preheader91:                                ; preds = %inv_dct8.exit.loopexit.unr-lcssa, %._crit_edge.us.i.i.6
  %indvars.iv42.i.i.7.epil.init = phi i64 [ 0, %._crit_edge.us.i.i.6 ], [ %indvars.iv.next43.i.i.7.3, %inv_dct8.exit.loopexit.unr-lcssa ]
  %.02233.us.i.i.7.epil.init = phi i32 [ 0, %._crit_edge.us.i.i.6 ], [ %i.mg, %inv_dct8.exit.loopexit.unr-lcssa ]
  %lcmp.mod96 = icmp ne i64 %xtraiter92, 0
  tail call void @llvm.assume(i1 %lcmp.mod96)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader91
  %indvars.iv42.i.i.7.epil = phi i64 [ %indvars.iv42.i.i.7.epil.init, %.epil.preheader91 ], [ %indvars.iv.next43.i.i.7.epil, %bb.o ] ; 3 uses
  %.02233.us.i.i.7.epil = phi i32 [ %.02233.us.i.i.7.epil.init, %.epil.preheader91 ], [ %i.ne, %bb.o ]
  %epil.iter93 = phi i64 [ 0, %.epil.preheader91 ], [ %epil.iter93.next, %bb.o ]
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.7.epil
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !11
  %i.mz = shl nuw nsw i64 %indvars.iv42.i.i.7.epil, 3
  %i.na = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_8x8, i64 7), i64 %i.mz
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !16
  %i.nc = sext i8 %i.nb to i32
  %i.nd = mul nsw i32 %i.my, %i.nc
  %i.ne = add nsw i32 %i.nd, %.02233.us.i.i.7.epil ; 2 uses
  %indvars.iv.next43.i.i.7.epil = add nuw nsw i64 %indvars.iv42.i.i.7.epil, 1
  %epil.iter93.next = add i64 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i64 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %inv_dct8.exit, label %bb.o, !llvm.loop !34

inv_dct8.exit:                                    ; preds = %inv_dct8.exit.loopexit.unr-lcssa, %bb.o, %.preheader.i.i.preheader
  %.lcssa.sink = phi i32 [ 0, %.preheader.i.i.preheader ], [ %i.mg, %inv_dct8.exit.loopexit.unr-lcssa ], [ %i.ne, %bb.o ]
  %i.nf = getelementptr inbounds [4 x i8], ptr %0, i64 %1
  %.idx = shl i64 %1, 3
  %3 = getelementptr inbounds i8, ptr %i.nf, i64 %.idx
  %4 = shl i64 %1, 4
  %5 = getelementptr inbounds i8, ptr %3, i64 %4
  store i32 %.lcssa.sink, ptr %5, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ff_vvc_inv_dct8_16(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 88 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %.preheader.i.i.preheader, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ugt i64 %2, 7
  %ident.check.not = icmp eq i64 %1, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.ph, label %.lr.ph.i.i.preheader51

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <4 x i32>, ptr %i.b, align 4, !tbaa !11
  %wide.load35 = load <4 x i32>, ptr %i.c, align 4, !tbaa !11
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <4 x i32> %wide.load, ptr %i.d, align 16, !tbaa !11
  store <4 x i32> %wide.load35, ptr %i.e, align 16, !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.preheader.us.i.i.preheader.preheader, label %.lr.ph.i.i.preheader51

.lr.ph.i.i.preheader51:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader51, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader51 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader51 ]
  %i.g = mul nsw i64 %indvars.iv.i.i.prol, %1
  %i.h = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i.prol
  store i32 %i.i, ptr %i.j, align 4, !tbaa !11
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !36

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader51
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader51 ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.k = sub i64 %indvars.iv.i.i.ph, %2
  %i.l = icmp ugt i64 %i.k, -4
  br i1 %i.l, label %.preheader.us.i.i.preheader.preheader, label %.lr.ph.i.i

.preheader.us.i.i.preheader.preheader:            ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block
  %i.m = add i64 %2, -1                           ; 16 uses
  %xtraiter52 = and i64 %2, 3                     ; 3 uses
  %i.n = icmp ult i64 %i.m, 3
  br i1 %i.n, label %.preheader.us.i.i.preheader.epil.preheader, label %.preheader.us.i.i.preheader.preheader.new

.preheader.us.i.i.preheader.preheader.new:        ; preds = %.preheader.us.i.i.preheader.preheader
  %unroll_iter = and i64 %2, -4
  br label %.preheader.us.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.a
  store i32 0, ptr %0, align 4, !tbaa !11
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !11
  %i.p = getelementptr inbounds [4 x i8], ptr %i.o, i64 %1 ; 2 uses
  store i32 0, ptr %i.p, align 4, !tbaa !11
  %i.q = getelementptr inbounds [4 x i8], ptr %i.p, i64 %1 ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !11
  %i.r = getelementptr inbounds [4 x i8], ptr %i.q, i64 %1 ; 2 uses
  store i32 0, ptr %i.r, align 4, !tbaa !11
  %i.s = getelementptr inbounds [4 x i8], ptr %i.r, i64 %1 ; 2 uses
  store i32 0, ptr %i.s, align 4, !tbaa !11
  %i.t = getelementptr inbounds [4 x i8], ptr %i.s, i64 %1 ; 2 uses
  store i32 0, ptr %i.t, align 4, !tbaa !11
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %1 ; 2 uses
  store i32 0, ptr %i.u, align 4, !tbaa !11
  %i.v = getelementptr inbounds [4 x i8], ptr %i.u, i64 %1 ; 2 uses
  store i32 0, ptr %i.v, align 4, !tbaa !11
  %i.w = getelementptr inbounds [4 x i8], ptr %i.v, i64 %1 ; 2 uses
  store i32 0, ptr %i.w, align 4, !tbaa !11
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %1 ; 2 uses
  store i32 0, ptr %i.x, align 4, !tbaa !11
  %i.y = getelementptr inbounds [4 x i8], ptr %i.x, i64 %1 ; 2 uses
  store i32 0, ptr %i.y, align 4, !tbaa !11
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %1 ; 2 uses
  store i32 0, ptr %i.z, align 4, !tbaa !11
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %1 ; 2 uses
  store i32 0, ptr %i.aa, align 4, !tbaa !11
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %1
  store i32 0, ptr %i.ab, align 4, !tbaa !11
  br label %inv_dct8.exit

.preheader.us.i.i.preheader:                      ; preds = %.preheader.us.i.i.preheader, %.preheader.us.i.i.preheader.preheader.new
  %indvars.iv42.i.i = phi i64 [ 0, %.preheader.us.i.i.preheader.preheader.new ], [ %indvars.iv.next43.i.i.366, %.preheader.us.i.i.preheader ] ; 6 uses
  %.02233.us.i.i = phi i32 [ 0, %.preheader.us.i.i.preheader.preheader.new ], [ %i.bh, %.preheader.us.i.i.preheader ]
  %niter = phi i64 [ 0, %.preheader.us.i.i.preheader.preheader.new ], [ %niter.next.3, %.preheader.us.i.i.preheader ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i
  %i.ad = load i32, ptr %i.ac, align 16, !tbaa !11
  %i.ae = shl nuw nsw i64 %indvars.iv42.i.i, 4
  %i.af = getelementptr inbounds nuw i8, ptr @ff_vvc_dct8_16x16, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 16, !tbaa !16
  %i.ah = sext i8 %i.ag to i32
  %i.ai = mul nsw i32 %i.ad, %i.ah
  %i.aj = add nsw i32 %i.ai, %.02233.us.i.i
  %indvars.iv.next43.i.i = or disjoint i64 %indvars.iv42.i.i, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !11
  %i.am = shl nuw nsw i64 %indvars.iv.next43.i.i, 4
  %i.an = getelementptr inbounds nuw i8, ptr @ff_vvc_dct8_16x16, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 16, !tbaa !16
  %i.ap = sext i8 %i.ao to i32
  %i.aq = mul nsw i32 %i.al, %i.ap
  %i.ar = add nsw i32 %i.aq, %i.aj
  %indvars.iv.next43.i.i.158 = or disjoint i64 %indvars.iv42.i.i, 2 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.158
  %i.at = load i32, ptr %i.as, align 8, !tbaa !11
  %i.au = shl nuw nsw i64 %indvars.iv.next43.i.i.158, 4
  %i.av = getelementptr inbounds nuw i8, ptr @ff_vvc_dct8_16x16, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 16, !tbaa !16
  %i.ax = sext i8 %i.aw to i32
  %i.ay = mul nsw i32 %i.at, %i.ax
  %i.az = add nsw i32 %i.ay, %i.ar
  %indvars.iv.next43.i.i.262 = or disjoint i64 %indvars.iv42.i.i, 3 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.262
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !11
  %i.bc = shl nuw nsw i64 %indvars.iv.next43.i.i.262, 4
  %i.bd = getelementptr inbounds nuw i8, ptr @ff_vvc_dct8_16x16, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 16, !tbaa !16
  %i.bf = sext i8 %i.be to i32
  %i.bg = mul nsw i32 %i.bb, %i.bf
  %i.bh = add nsw i32 %i.bg, %i.az                ; 3 uses
  %indvars.iv.next43.i.i.366 = add nuw nsw i64 %indvars.iv42.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.i.unr-lcssa, label %.preheader.us.i.i.preheader, !llvm.loop !0

._crit_edge.us.i.i.unr-lcssa:                     ; preds = %.preheader.us.i.i.preheader
  %lcmp.mod53.not = icmp eq i64 %xtraiter52, 0
  br i1 %lcmp.mod53.not, label %._crit_edge.us.i.i, label %.preheader.us.i.i.preheader.epil.preheader

.preheader.us.i.i.preheader.epil.preheader:       ; preds = %._crit_edge.us.i.i.unr-lcssa, %.preheader.us.i.i.preheader.preheader
  %indvars.iv42.i.i.epil.init = phi i64 [ 0, %.preheader.us.i.i.preheader.preheader ], [ %indvars.iv.next43.i.i.366, %._crit_edge.us.i.i.unr-lcssa ]
  %.02233.us.i.i.epil.init = phi i32 [ 0, %.preheader.us.i.i.preheader.preheader ], [ %i.bh, %._crit_edge.us.i.i.unr-lcssa ]
  %lcmp.mod55 = icmp ne i64 %xtraiter52, 0
  tail call void @llvm.assume(i1 %lcmp.mod55)
  br label %.preheader.us.i.i.preheader.epil

.preheader.us.i.i.preheader.epil:                 ; preds = %.preheader.us.i.i.preheader.epil, %.preheader.us.i.i.preheader.epil.preheader
  %indvars.iv42.i.i.epil = phi i64 [ %indvars.iv.next43.i.i.epil, %.preheader.us.i.i.preheader.epil ], [ %indvars.iv42.i.i.epil.init, %.preheader.us.i.i.preheader.epil.preheader ] ; 3 uses
  %.02233.us.i.i.epil = phi i32 [ %i.bp, %.preheader.us.i.i.preheader.epil ], [ %.02233.us.i.i.epil.init, %.preheader.us.i.i.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.us.i.i.preheader.epil ], [ 0, %.preheader.us.i.i.preheader.epil.preheader ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.epil
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !11
  %i.bk = shl nuw nsw i64 %indvars.iv42.i.i.epil, 4
  %i.bl = getelementptr inbounds nuw i8, ptr @ff_vvc_dct8_16x16, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 16, !tbaa !16
  %i.bn = sext i8 %i.bm to i32
  %i.bo = mul nsw i32 %i.bj, %i.bn
  %i.bp = add nsw i32 %i.bo, %.02233.us.i.i.epil  ; 2 uses
  %indvars.iv.next43.i.i.epil = add nuw nsw i64 %indvars.iv42.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter52
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i.i, label %.preheader.us.i.i.preheader.epil, !llvm.loop !37

._crit_edge.us.i.i:                               ; preds = %.preheader.us.i.i.preheader.epil, %._crit_edge.us.i.i.unr-lcssa
  %.lcssa50.a = phi i32 [ %i.bh, %._crit_edge.us.i.i.unr-lcssa ], [ %i.bp, %.preheader.us.i.i.preheader.epil ]
  store i32 %.lcssa50.a, ptr %0, align 4, !tbaa !11
  %xtraiter68 = and i64 %2, 3                     ; 3 uses
  %i.bq = icmp ult i64 %i.m, 3
  br i1 %i.bq, label %.epil.preheader, label %._crit_edge.us.i.i.new

._crit_edge.us.i.i.new:                           ; preds = %._crit_edge.us.i.i
  %unroll_iter73 = and i64 %2, -4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge.us.i.i.new
  %indvars.iv42.i.i.1 = phi i64 [ 0, %._crit_edge.us.i.i.new ], [ %indvars.iv.next43.i.i.1.3, %bb.b ] ; 6 uses
  %.02233.us.i.i.1 = phi i32 [ 0, %._crit_edge.us.i.i.new ], [ %i.cw, %bb.b ]
  %niter74 = phi i64 [ 0, %._crit_edge.us.i.i.new ], [ %niter74.next.3, %bb.b ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.1
  %i.bs = load i32, ptr %i.br, align 16, !tbaa !11
  %i.bt = shl nuw nsw i64 %indvars.iv42.i.i.1, 4
  %i.bu = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 1), i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !16
  %i.bw = sext i8 %i.bv to i32
  %i.bx = mul nsw i32 %i.bs, %i.bw
  %i.by = add nsw i32 %i.bx, %.02233.us.i.i.1
  %indvars.iv.next43.i.i.1 = or disjoint i64 %indvars.iv42.i.i.1, 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.1
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !11
  %i.cb = shl nuw nsw i64 %indvars.iv.next43.i.i.1, 4
  %i.cc = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 1), i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !16
  %i.ce = sext i8 %i.cd to i32
  %i.cf = mul nsw i32 %i.ca, %i.ce
  %i.cg = add nsw i32 %i.cf, %i.by
  %indvars.iv.next43.i.i.1.1 = or disjoint i64 %indvars.iv42.i.i.1, 2 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.1.1
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !11
  %i.cj = shl nuw nsw i64 %indvars.iv.next43.i.i.1.1, 4
  %i.ck = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 1), i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !16
  %i.cm = sext i8 %i.cl to i32
  %i.cn = mul nsw i32 %i.ci, %i.cm
  %i.co = add nsw i32 %i.cn, %i.cg
  %indvars.iv.next43.i.i.1.2 = or disjoint i64 %indvars.iv42.i.i.1, 3 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.1.2
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !11
  %i.cr = shl nuw nsw i64 %indvars.iv.next43.i.i.1.2, 4
  %i.cs = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 1), i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !16
  %i.cu = sext i8 %i.ct to i32
  %i.cv = mul nsw i32 %i.cq, %i.cu
  %i.cw = add nsw i32 %i.cv, %i.co                ; 3 uses
  %indvars.iv.next43.i.i.1.3 = add nuw nsw i64 %indvars.iv42.i.i.1, 4 ; 2 uses
  %niter74.next.3 = add i64 %niter74, 4           ; 2 uses
  %niter74.ncmp.3 = icmp eq i64 %niter74.next.3, %unroll_iter73
  br i1 %niter74.ncmp.3, label %._crit_edge.us.i.i.1.unr-lcssa, label %bb.b, !llvm.loop !0

._crit_edge.us.i.i.1.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod70.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod70.not, label %._crit_edge.us.i.i.1, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.i.1.unr-lcssa, %._crit_edge.us.i.i
  %indvars.iv42.i.i.1.epil.init = phi i64 [ 0, %._crit_edge.us.i.i ], [ %indvars.iv.next43.i.i.1.3, %._crit_edge.us.i.i.1.unr-lcssa ]
  %.02233.us.i.i.1.epil.init = phi i32 [ 0, %._crit_edge.us.i.i ], [ %i.cw, %._crit_edge.us.i.i.1.unr-lcssa ]
  %lcmp.mod72 = icmp ne i64 %xtraiter68, 0
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv42.i.i.1.epil = phi i64 [ %indvars.iv42.i.i.1.epil.init, %.epil.preheader ], [ %indvars.iv.next43.i.i.1.epil, %bb.c ] ; 3 uses
  %.02233.us.i.i.1.epil = phi i32 [ %.02233.us.i.i.1.epil.init, %.epil.preheader ], [ %i.de, %bb.c ]
  %epil.iter69 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter69.next, %bb.c ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.1.epil
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !11
  %i.cz = shl nuw nsw i64 %indvars.iv42.i.i.1.epil, 4
  %i.da = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 1), i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !16
  %i.dc = sext i8 %i.db to i32
  %i.dd = mul nsw i32 %i.cy, %i.dc
  %i.de = add nsw i32 %i.dd, %.02233.us.i.i.1.epil ; 2 uses
  %indvars.iv.next43.i.i.1.epil = add nuw nsw i64 %indvars.iv42.i.i.1.epil, 1
  %epil.iter69.next = add i64 %epil.iter69, 1     ; 2 uses
  %epil.iter69.cmp.not = icmp eq i64 %epil.iter69.next, %xtraiter68
  br i1 %epil.iter69.cmp.not, label %._crit_edge.us.i.i.1, label %bb.c, !llvm.loop !38

._crit_edge.us.i.i.1:                             ; preds = %bb.c, %._crit_edge.us.i.i.1.unr-lcssa
  %.lcssa49.a = phi i32 [ %i.cw, %._crit_edge.us.i.i.1.unr-lcssa ], [ %i.de, %bb.c ]
  %i.df = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 2 uses
  store i32 %.lcssa49.a, ptr %i.df, align 4, !tbaa !11
  %xtraiter76 = and i64 %2, 3                     ; 3 uses
  %i.dg = icmp ult i64 %i.m, 3
  br i1 %i.dg, label %.epil.preheader75, label %._crit_edge.us.i.i.1.new

._crit_edge.us.i.i.1.new:                         ; preds = %._crit_edge.us.i.i.1
  %unroll_iter81 = and i64 %2, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %._crit_edge.us.i.i.1.new
  %indvars.iv42.i.i.2 = phi i64 [ 0, %._crit_edge.us.i.i.1.new ], [ %indvars.iv.next43.i.i.2.3, %bb.d ] ; 6 uses
  %.02233.us.i.i.2 = phi i32 [ 0, %._crit_edge.us.i.i.1.new ], [ %i.em, %bb.d ]
  %niter82 = phi i64 [ 0, %._crit_edge.us.i.i.1.new ], [ %niter82.next.3, %bb.d ]
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.2
  %i.di = load i32, ptr %i.dh, align 16, !tbaa !11
  %i.dj = shl nuw nsw i64 %indvars.iv42.i.i.2, 4
  %i.dk = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 2), i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 2, !tbaa !16
  %i.dm = sext i8 %i.dl to i32
  %i.dn = mul nsw i32 %i.di, %i.dm
  %i.do = add nsw i32 %i.dn, %.02233.us.i.i.2
  %indvars.iv.next43.i.i.2 = or disjoint i64 %indvars.iv42.i.i.2, 1 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.2
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !11
  %i.dr = shl nuw nsw i64 %indvars.iv.next43.i.i.2, 4
  %i.ds = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 2), i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 2, !tbaa !16
  %i.du = sext i8 %i.dt to i32
  %i.dv = mul nsw i32 %i.dq, %i.du
  %i.dw = add nsw i32 %i.dv, %i.do
  %indvars.iv.next43.i.i.2.1 = or disjoint i64 %indvars.iv42.i.i.2, 2 ; 2 uses
end_hunk_1
begin_hunk_2_@ff_vvc_inv_dct8_16:bb.a
  br i1 %niter130.ncmp.3, label %._crit_edge.us.i.i.8.unr-lcssa, label %bb.p, !llvm.loop !0

._crit_edge.us.i.i.8.unr-lcssa:                   ; preds = %bb.p
  %lcmp.mod126.not = icmp eq i64 %xtraiter124, 0
  br i1 %lcmp.mod126.not, label %._crit_edge.us.i.i.8, label %.epil.preheader123

.epil.preheader123:                               ; preds = %._crit_edge.us.i.i.8.unr-lcssa, %._crit_edge.us.i.i.7
  %indvars.iv42.i.i.8.epil.init = phi i64 [ 0, %._crit_edge.us.i.i.7 ], [ %indvars.iv.next43.i.i.8.3, %._crit_edge.us.i.i.8.unr-lcssa ]
  %.02233.us.i.i.8.epil.init = phi i32 [ 0, %._crit_edge.us.i.i.7 ], [ %i.oe, %._crit_edge.us.i.i.8.unr-lcssa ]
  %lcmp.mod128 = icmp ne i64 %xtraiter124, 0
  tail call void @llvm.assume(i1 %lcmp.mod128)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader123
  %indvars.iv42.i.i.8.epil = phi i64 [ %indvars.iv42.i.i.8.epil.init, %.epil.preheader123 ], [ %indvars.iv.next43.i.i.8.epil, %bb.q ] ; 3 uses
  %.02233.us.i.i.8.epil = phi i32 [ %.02233.us.i.i.8.epil.init, %.epil.preheader123 ], [ %i.om, %bb.q ]
  %epil.iter125 = phi i64 [ 0, %.epil.preheader123 ], [ %epil.iter125.next, %bb.q ]
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.8.epil
  %i.og = load i32, ptr %i.of, align 4, !tbaa !11
  %i.oh = shl nuw nsw i64 %indvars.iv42.i.i.8.epil, 4
  %i.oi = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 8), i64 %i.oh
  %i.oj = load i8, ptr %i.oi, align 8, !tbaa !16
  %i.ok = sext i8 %i.oj to i32
  %i.ol = mul nsw i32 %i.og, %i.ok
  %i.om = add nsw i32 %i.ol, %.02233.us.i.i.8.epil ; 2 uses
  %indvars.iv.next43.i.i.8.epil = add nuw nsw i64 %indvars.iv42.i.i.8.epil, 1
  %epil.iter125.next = add i64 %epil.iter125, 1   ; 2 uses
  %epil.iter125.cmp.not = icmp eq i64 %epil.iter125.next, %xtraiter124
  br i1 %epil.iter125.cmp.not, label %._crit_edge.us.i.i.8, label %bb.q, !llvm.loop !45

._crit_edge.us.i.i.8:                             ; preds = %bb.q, %._crit_edge.us.i.i.8.unr-lcssa
  %.lcssa42.a = phi i32 [ %i.oe, %._crit_edge.us.i.i.8.unr-lcssa ], [ %i.om, %bb.q ]
  %i.on = getelementptr inbounds [4 x i8], ptr %i.mx, i64 %1 ; 2 uses
  store i32 %.lcssa42.a, ptr %i.on, align 4, !tbaa !11
  %xtraiter132 = and i64 %2, 3                    ; 3 uses
  %i.oo = icmp ult i64 %i.m, 3
  br i1 %i.oo, label %.epil.preheader131, label %._crit_edge.us.i.i.8.new

._crit_edge.us.i.i.8.new:                         ; preds = %._crit_edge.us.i.i.8
  %unroll_iter137 = and i64 %2, -4
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %._crit_edge.us.i.i.8.new
  %indvars.iv42.i.i.9 = phi i64 [ 0, %._crit_edge.us.i.i.8.new ], [ %indvars.iv.next43.i.i.9.3, %bb.r ] ; 6 uses
  %.02233.us.i.i.9 = phi i32 [ 0, %._crit_edge.us.i.i.8.new ], [ %i.pu, %bb.r ]
  %niter138 = phi i64 [ 0, %._crit_edge.us.i.i.8.new ], [ %niter138.next.3, %bb.r ]
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.9
  %i.oq = load i32, ptr %i.op, align 16, !tbaa !11
  %i.or = shl nuw nsw i64 %indvars.iv42.i.i.9, 4
  %i.os = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 9), i64 %i.or
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !16
  %i.ou = sext i8 %i.ot to i32
  %i.ov = mul nsw i32 %i.oq, %i.ou
  %i.ow = add nsw i32 %i.ov, %.02233.us.i.i.9
  %indvars.iv.next43.i.i.9 = or disjoint i64 %indvars.iv42.i.i.9, 1 ; 2 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.9
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !11
  %i.oz = shl nuw nsw i64 %indvars.iv.next43.i.i.9, 4
  %i.pa = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 9), i64 %i.oz
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !16
  %i.pc = sext i8 %i.pb to i32
  %i.pd = mul nsw i32 %i.oy, %i.pc
  %i.pe = add nsw i32 %i.pd, %i.ow
  %indvars.iv.next43.i.i.9.1 = or disjoint i64 %indvars.iv42.i.i.9, 2 ; 2 uses
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.9.1
  %i.pg = load i32, ptr %i.pf, align 8, !tbaa !11
  %i.ph = shl nuw nsw i64 %indvars.iv.next43.i.i.9.1, 4
  %i.pi = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 9), i64 %i.ph
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !16
  %i.pk = sext i8 %i.pj to i32
  %i.pl = mul nsw i32 %i.pg, %i.pk
  %i.pm = add nsw i32 %i.pl, %i.pe
  %indvars.iv.next43.i.i.9.2 = or disjoint i64 %indvars.iv42.i.i.9, 3 ; 2 uses
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.9.2
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !11
  %i.pp = shl nuw nsw i64 %indvars.iv.next43.i.i.9.2, 4
  %i.pq = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 9), i64 %i.pp
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !16
  %i.ps = sext i8 %i.pr to i32
  %i.pt = mul nsw i32 %i.po, %i.ps
  %i.pu = add nsw i32 %i.pt, %i.pm                ; 3 uses
  %indvars.iv.next43.i.i.9.3 = add nuw nsw i64 %indvars.iv42.i.i.9, 4 ; 2 uses
  %niter138.next.3 = add i64 %niter138, 4         ; 2 uses
  %niter138.ncmp.3 = icmp eq i64 %niter138.next.3, %unroll_iter137
  br i1 %niter138.ncmp.3, label %._crit_edge.us.i.i.9.unr-lcssa, label %bb.r, !llvm.loop !0

._crit_edge.us.i.i.9.unr-lcssa:                   ; preds = %bb.r
  %lcmp.mod134.not = icmp eq i64 %xtraiter132, 0
  br i1 %lcmp.mod134.not, label %._crit_edge.us.i.i.9, label %.epil.preheader131

.epil.preheader131:                               ; preds = %._crit_edge.us.i.i.9.unr-lcssa, %._crit_edge.us.i.i.8
  %indvars.iv42.i.i.9.epil.init = phi i64 [ 0, %._crit_edge.us.i.i.8 ], [ %indvars.iv.next43.i.i.9.3, %._crit_edge.us.i.i.9.unr-lcssa ]
  %.02233.us.i.i.9.epil.init = phi i32 [ 0, %._crit_edge.us.i.i.8 ], [ %i.pu, %._crit_edge.us.i.i.9.unr-lcssa ]
  %lcmp.mod136 = icmp ne i64 %xtraiter132, 0
  tail call void @llvm.assume(i1 %lcmp.mod136)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader131
  %indvars.iv42.i.i.9.epil = phi i64 [ %indvars.iv42.i.i.9.epil.init, %.epil.preheader131 ], [ %indvars.iv.next43.i.i.9.epil, %bb.s ] ; 3 uses
  %.02233.us.i.i.9.epil = phi i32 [ %.02233.us.i.i.9.epil.init, %.epil.preheader131 ], [ %i.qc, %bb.s ]
  %epil.iter133 = phi i64 [ 0, %.epil.preheader131 ], [ %epil.iter133.next, %bb.s ]
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.9.epil
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !11
  %i.px = shl nuw nsw i64 %indvars.iv42.i.i.9.epil, 4
  %i.py = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 9), i64 %i.px
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !16
  %i.qa = sext i8 %i.pz to i32
  %i.qb = mul nsw i32 %i.pw, %i.qa
  %i.qc = add nsw i32 %i.qb, %.02233.us.i.i.9.epil ; 2 uses
  %indvars.iv.next43.i.i.9.epil = add nuw nsw i64 %indvars.iv42.i.i.9.epil, 1
  %epil.iter133.next = add i64 %epil.iter133, 1   ; 2 uses
  %epil.iter133.cmp.not = icmp eq i64 %epil.iter133.next, %xtraiter132
  br i1 %epil.iter133.cmp.not, label %._crit_edge.us.i.i.9, label %bb.s, !llvm.loop !46

._crit_edge.us.i.i.9:                             ; preds = %bb.s, %._crit_edge.us.i.i.9.unr-lcssa
  %.lcssa41.a = phi i32 [ %i.pu, %._crit_edge.us.i.i.9.unr-lcssa ], [ %i.qc, %bb.s ]
  %i.qd = getelementptr inbounds [4 x i8], ptr %i.on, i64 %1 ; 2 uses
  store i32 %.lcssa41.a, ptr %i.qd, align 4, !tbaa !11
  %xtraiter140 = and i64 %2, 3                    ; 3 uses
  %i.qe = icmp ult i64 %i.m, 3
  br i1 %i.qe, label %.epil.preheader139, label %._crit_edge.us.i.i.9.new

._crit_edge.us.i.i.9.new:                         ; preds = %._crit_edge.us.i.i.9
  %unroll_iter145 = and i64 %2, -4
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %._crit_edge.us.i.i.9.new
  %indvars.iv42.i.i.10 = phi i64 [ 0, %._crit_edge.us.i.i.9.new ], [ %indvars.iv.next43.i.i.10.3, %bb.t ] ; 6 uses
  %.02233.us.i.i.10 = phi i32 [ 0, %._crit_edge.us.i.i.9.new ], [ %i.rk, %bb.t ]
  %niter146 = phi i64 [ 0, %._crit_edge.us.i.i.9.new ], [ %niter146.next.3, %bb.t ]
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.10
  %i.qg = load i32, ptr %i.qf, align 16, !tbaa !11
  %i.qh = shl nuw nsw i64 %indvars.iv42.i.i.10, 4
  %i.qi = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 10), i64 %i.qh
  %i.qj = load i8, ptr %i.qi, align 2, !tbaa !16
  %i.qk = sext i8 %i.qj to i32
  %i.ql = mul nsw i32 %i.qg, %i.qk
  %i.qm = add nsw i32 %i.ql, %.02233.us.i.i.10
  %indvars.iv.next43.i.i.10 = or disjoint i64 %indvars.iv42.i.i.10, 1 ; 2 uses
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.10
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !11
  %i.qp = shl nuw nsw i64 %indvars.iv.next43.i.i.10, 4
  %i.qq = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 10), i64 %i.qp
  %i.qr = load i8, ptr %i.qq, align 2, !tbaa !16
  %i.qs = sext i8 %i.qr to i32
  %i.qt = mul nsw i32 %i.qo, %i.qs
  %i.qu = add nsw i32 %i.qt, %i.qm
  %indvars.iv.next43.i.i.10.1 = or disjoint i64 %indvars.iv42.i.i.10, 2 ; 2 uses
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.10.1
  %i.qw = load i32, ptr %i.qv, align 8, !tbaa !11
  %i.qx = shl nuw nsw i64 %indvars.iv.next43.i.i.10.1, 4
  %i.qy = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 10), i64 %i.qx
  %i.qz = load i8, ptr %i.qy, align 2, !tbaa !16
  %i.ra = sext i8 %i.qz to i32
  %i.rb = mul nsw i32 %i.qw, %i.ra
  %i.rc = add nsw i32 %i.rb, %i.qu
  %indvars.iv.next43.i.i.10.2 = or disjoint i64 %indvars.iv42.i.i.10, 3 ; 2 uses
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.10.2
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !11
  %i.rf = shl nuw nsw i64 %indvars.iv.next43.i.i.10.2, 4
  %i.rg = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 10), i64 %i.rf
  %i.rh = load i8, ptr %i.rg, align 2, !tbaa !16
  %i.ri = sext i8 %i.rh to i32
  %i.rj = mul nsw i32 %i.re, %i.ri
  %i.rk = add nsw i32 %i.rj, %i.rc                ; 3 uses
  %indvars.iv.next43.i.i.10.3 = add nuw nsw i64 %indvars.iv42.i.i.10, 4 ; 2 uses
  %niter146.next.3 = add i64 %niter146, 4         ; 2 uses
  %niter146.ncmp.3 = icmp eq i64 %niter146.next.3, %unroll_iter145
  br i1 %niter146.ncmp.3, label %._crit_edge.us.i.i.10.unr-lcssa, label %bb.t, !llvm.loop !0

._crit_edge.us.i.i.10.unr-lcssa:                  ; preds = %bb.t
  %lcmp.mod142.not = icmp eq i64 %xtraiter140, 0
  br i1 %lcmp.mod142.not, label %._crit_edge.us.i.i.10, label %.epil.preheader139

.epil.preheader139:                               ; preds = %._crit_edge.us.i.i.10.unr-lcssa, %._crit_edge.us.i.i.9
  %indvars.iv42.i.i.10.epil.init = phi i64 [ 0, %._crit_edge.us.i.i.9 ], [ %indvars.iv.next43.i.i.10.3, %._crit_edge.us.i.i.10.unr-lcssa ]
  %.02233.us.i.i.10.epil.init = phi i32 [ 0, %._crit_edge.us.i.i.9 ], [ %i.rk, %._crit_edge.us.i.i.10.unr-lcssa ]
  %lcmp.mod144 = icmp ne i64 %xtraiter140, 0
  tail call void @llvm.assume(i1 %lcmp.mod144)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader139
  %indvars.iv42.i.i.10.epil = phi i64 [ %indvars.iv42.i.i.10.epil.init, %.epil.preheader139 ], [ %indvars.iv.next43.i.i.10.epil, %bb.u ] ; 3 uses
  %.02233.us.i.i.10.epil = phi i32 [ %.02233.us.i.i.10.epil.init, %.epil.preheader139 ], [ %i.rs, %bb.u ]
  %epil.iter141 = phi i64 [ 0, %.epil.preheader139 ], [ %epil.iter141.next, %bb.u ]
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.10.epil
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !11
  %i.rn = shl nuw nsw i64 %indvars.iv42.i.i.10.epil, 4
  %i.ro = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 10), i64 %i.rn
  %i.rp = load i8, ptr %i.ro, align 2, !tbaa !16
  %i.rq = sext i8 %i.rp to i32
  %i.rr = mul nsw i32 %i.rm, %i.rq
  %i.rs = add nsw i32 %i.rr, %.02233.us.i.i.10.epil ; 2 uses
  %indvars.iv.next43.i.i.10.epil = add nuw nsw i64 %indvars.iv42.i.i.10.epil, 1
  %epil.iter141.next = add i64 %epil.iter141, 1   ; 2 uses
  %epil.iter141.cmp.not = icmp eq i64 %epil.iter141.next, %xtraiter140
  br i1 %epil.iter141.cmp.not, label %._crit_edge.us.i.i.10, label %bb.u, !llvm.loop !47

._crit_edge.us.i.i.10:                            ; preds = %bb.u, %._crit_edge.us.i.i.10.unr-lcssa
  %.lcssa40.a = phi i32 [ %i.rk, %._crit_edge.us.i.i.10.unr-lcssa ], [ %i.rs, %bb.u ]
  %i.rt = getelementptr inbounds [4 x i8], ptr %i.qd, i64 %1 ; 2 uses
  store i32 %.lcssa40.a, ptr %i.rt, align 4, !tbaa !11
  %xtraiter148 = and i64 %2, 3                    ; 3 uses
  %i.ru = icmp ult i64 %i.m, 3
  br i1 %i.ru, label %.epil.preheader147, label %._crit_edge.us.i.i.10.new

._crit_edge.us.i.i.10.new:                        ; preds = %._crit_edge.us.i.i.10
  %unroll_iter153 = and i64 %2, -4
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %._crit_edge.us.i.i.10.new
  %indvars.iv42.i.i.11 = phi i64 [ 0, %._crit_edge.us.i.i.10.new ], [ %indvars.iv.next43.i.i.11.3, %bb.v ] ; 6 uses
  %.02233.us.i.i.11 = phi i32 [ 0, %._crit_edge.us.i.i.10.new ], [ %i.ta, %bb.v ]
  %niter154 = phi i64 [ 0, %._crit_edge.us.i.i.10.new ], [ %niter154.next.3, %bb.v ]
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.11
  %i.rw = load i32, ptr %i.rv, align 16, !tbaa !11
  %i.rx = shl nuw nsw i64 %indvars.iv42.i.i.11, 4
  %i.ry = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 11), i64 %i.rx
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !16
  %i.sa = sext i8 %i.rz to i32
  %i.sb = mul nsw i32 %i.rw, %i.sa
  %i.sc = add nsw i32 %i.sb, %.02233.us.i.i.11
  %indvars.iv.next43.i.i.11 = or disjoint i64 %indvars.iv42.i.i.11, 1 ; 2 uses
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.11
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !11
  %i.sf = shl nuw nsw i64 %indvars.iv.next43.i.i.11, 4
  %i.sg = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 11), i64 %i.sf
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !16
  %i.si = sext i8 %i.sh to i32
  %i.sj = mul nsw i32 %i.se, %i.si
  %i.sk = add nsw i32 %i.sj, %i.sc
  %indvars.iv.next43.i.i.11.1 = or disjoint i64 %indvars.iv42.i.i.11, 2 ; 2 uses
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.11.1
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !11
  %i.sn = shl nuw nsw i64 %indvars.iv.next43.i.i.11.1, 4
  %i.so = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 11), i64 %i.sn
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !16
  %i.sq = sext i8 %i.sp to i32
  %i.sr = mul nsw i32 %i.sm, %i.sq
  %i.ss = add nsw i32 %i.sr, %i.sk
  %indvars.iv.next43.i.i.11.2 = or disjoint i64 %indvars.iv42.i.i.11, 3 ; 2 uses
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.11.2
  %i.su = load i32, ptr %i.st, align 4, !tbaa !11
  %i.sv = shl nuw nsw i64 %indvars.iv.next43.i.i.11.2, 4
  %i.sw = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 11), i64 %i.sv
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !16
  %i.sy = sext i8 %i.sx to i32
  %i.sz = mul nsw i32 %i.su, %i.sy
  %i.ta = add nsw i32 %i.sz, %i.ss                ; 3 uses
  %indvars.iv.next43.i.i.11.3 = add nuw nsw i64 %indvars.iv42.i.i.11, 4 ; 2 uses
  %niter154.next.3 = add i64 %niter154, 4         ; 2 uses
  %niter154.ncmp.3 = icmp eq i64 %niter154.next.3, %unroll_iter153
  br i1 %niter154.ncmp.3, label %._crit_edge.us.i.i.11.unr-lcssa, label %bb.v, !llvm.loop !0

._crit_edge.us.i.i.11.unr-lcssa:                  ; preds = %bb.v
  %lcmp.mod150.not = icmp eq i64 %xtraiter148, 0
  br i1 %lcmp.mod150.not, label %._crit_edge.us.i.i.11, label %.epil.preheader147

.epil.preheader147:                               ; preds = %._crit_edge.us.i.i.11.unr-lcssa, %._crit_edge.us.i.i.10
  %indvars.iv42.i.i.11.epil.init = phi i64 [ 0, %._crit_edge.us.i.i.10 ], [ %indvars.iv.next43.i.i.11.3, %._crit_edge.us.i.i.11.unr-lcssa ]
  %.02233.us.i.i.11.epil.init = phi i32 [ 0, %._crit_edge.us.i.i.10 ], [ %i.ta, %._crit_edge.us.i.i.11.unr-lcssa ]
  %lcmp.mod152 = icmp ne i64 %xtraiter148, 0
  tail call void @llvm.assume(i1 %lcmp.mod152)
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.epil.preheader147
  %indvars.iv42.i.i.11.epil = phi i64 [ %indvars.iv42.i.i.11.epil.init, %.epil.preheader147 ], [ %indvars.iv.next43.i.i.11.epil, %bb.w ] ; 3 uses
  %.02233.us.i.i.11.epil = phi i32 [ %.02233.us.i.i.11.epil.init, %.epil.preheader147 ], [ %i.ti, %bb.w ]
  %epil.iter149 = phi i64 [ 0, %.epil.preheader147 ], [ %epil.iter149.next, %bb.w ]
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.11.epil
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !11
  %i.td = shl nuw nsw i64 %indvars.iv42.i.i.11.epil, 4
  %i.te = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 11), i64 %i.td
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !16
  %i.tg = sext i8 %i.tf to i32
  %i.th = mul nsw i32 %i.tc, %i.tg
  %i.ti = add nsw i32 %i.th, %.02233.us.i.i.11.epil ; 2 uses
  %indvars.iv.next43.i.i.11.epil = add nuw nsw i64 %indvars.iv42.i.i.11.epil, 1
  %epil.iter149.next = add i64 %epil.iter149, 1   ; 2 uses
  %epil.iter149.cmp.not = icmp eq i64 %epil.iter149.next, %xtraiter148
  br i1 %epil.iter149.cmp.not, label %._crit_edge.us.i.i.11, label %bb.w, !llvm.loop !48

._crit_edge.us.i.i.11:                            ; preds = %bb.w, %._crit_edge.us.i.i.11.unr-lcssa
  %.lcssa39.a = phi i32 [ %i.ta, %._crit_edge.us.i.i.11.unr-lcssa ], [ %i.ti, %bb.w ]
  %i.tj = getelementptr inbounds [4 x i8], ptr %i.rt, i64 %1 ; 2 uses
  store i32 %.lcssa39.a, ptr %i.tj, align 4, !tbaa !11
  %xtraiter156 = and i64 %2, 3                    ; 3 uses
  %i.tk = icmp ult i64 %i.m, 3
  br i1 %i.tk, label %.epil.preheader155, label %._crit_edge.us.i.i.11.new

._crit_edge.us.i.i.11.new:                        ; preds = %._crit_edge.us.i.i.11
  %unroll_iter161 = and i64 %2, -4
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %._crit_edge.us.i.i.11.new
  %indvars.iv42.i.i.12 = phi i64 [ 0, %._crit_edge.us.i.i.11.new ], [ %indvars.iv.next43.i.i.12.3, %bb.x ] ; 6 uses
  %.02233.us.i.i.12 = phi i32 [ 0, %._crit_edge.us.i.i.11.new ], [ %i.uq, %bb.x ]
  %niter162 = phi i64 [ 0, %._crit_edge.us.i.i.11.new ], [ %niter162.next.3, %bb.x ]
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.12
  %i.tm = load i32, ptr %i.tl, align 16, !tbaa !11
  %i.tn = shl nuw nsw i64 %indvars.iv42.i.i.12, 4
  %i.to = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 12), i64 %i.tn
  %i.tp = load i8, ptr %i.to, align 4, !tbaa !16
  %i.tq = sext i8 %i.tp to i32
  %i.tr = mul nsw i32 %i.tm, %i.tq
  %i.ts = add nsw i32 %i.tr, %.02233.us.i.i.12
  %indvars.iv.next43.i.i.12 = or disjoint i64 %indvars.iv42.i.i.12, 1 ; 2 uses
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.12
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !11
  %i.tv = shl nuw nsw i64 %indvars.iv.next43.i.i.12, 4
  %i.tw = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 12), i64 %i.tv
  %i.tx = load i8, ptr %i.tw, align 4, !tbaa !16
  %i.ty = sext i8 %i.tx to i32
  %i.tz = mul nsw i32 %i.tu, %i.ty
  %i.ua = add nsw i32 %i.tz, %i.ts
  %indvars.iv.next43.i.i.12.1 = or disjoint i64 %indvars.iv42.i.i.12, 2 ; 2 uses
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.12.1
  %i.uc = load i32, ptr %i.ub, align 8, !tbaa !11
  %i.ud = shl nuw nsw i64 %indvars.iv.next43.i.i.12.1, 4
  %i.ue = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 12), i64 %i.ud
  %i.uf = load i8, ptr %i.ue, align 4, !tbaa !16
  %i.ug = sext i8 %i.uf to i32
  %i.uh = mul nsw i32 %i.uc, %i.ug
  %i.ui = add nsw i32 %i.uh, %i.ua
  %indvars.iv.next43.i.i.12.2 = or disjoint i64 %indvars.iv42.i.i.12, 3 ; 2 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.12.2
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !11
  %i.ul = shl nuw nsw i64 %indvars.iv.next43.i.i.12.2, 4
  %i.um = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 12), i64 %i.ul
  %i.un = load i8, ptr %i.um, align 4, !tbaa !16
  %i.uo = sext i8 %i.un to i32
  %i.up = mul nsw i32 %i.uk, %i.uo
  %i.uq = add nsw i32 %i.up, %i.ui                ; 3 uses
  %indvars.iv.next43.i.i.12.3 = add nuw nsw i64 %indvars.iv42.i.i.12, 4 ; 2 uses
  %niter162.next.3 = add i64 %niter162, 4         ; 2 uses
  %niter162.ncmp.3 = icmp eq i64 %niter162.next.3, %unroll_iter161
  br i1 %niter162.ncmp.3, label %._crit_edge.us.i.i.12.unr-lcssa, label %bb.x, !llvm.loop !0

._crit_edge.us.i.i.12.unr-lcssa:                  ; preds = %bb.x
  %lcmp.mod158.not = icmp eq i64 %xtraiter156, 0
  br i1 %lcmp.mod158.not, label %._crit_edge.us.i.i.12, label %.epil.preheader155

.epil.preheader155:                               ; preds = %._crit_edge.us.i.i.12.unr-lcssa, %._crit_edge.us.i.i.11
  %indvars.iv42.i.i.12.epil.init = phi i64 [ 0, %._crit_edge.us.i.i.11 ], [ %indvars.iv.next43.i.i.12.3, %._crit_edge.us.i.i.12.unr-lcssa ]
  %.02233.us.i.i.12.epil.init = phi i32 [ 0, %._crit_edge.us.i.i.11 ], [ %i.uq, %._crit_edge.us.i.i.12.unr-lcssa ]
  %lcmp.mod160 = icmp ne i64 %xtraiter156, 0
  tail call void @llvm.assume(i1 %lcmp.mod160)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.epil.preheader155
  %indvars.iv42.i.i.12.epil = phi i64 [ %indvars.iv42.i.i.12.epil.init, %.epil.preheader155 ], [ %indvars.iv.next43.i.i.12.epil, %bb.y ] ; 3 uses
  %.02233.us.i.i.12.epil = phi i32 [ %.02233.us.i.i.12.epil.init, %.epil.preheader155 ], [ %i.uy, %bb.y ]
  %epil.iter157 = phi i64 [ 0, %.epil.preheader155 ], [ %epil.iter157.next, %bb.y ]
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.12.epil
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !11
  %i.ut = shl nuw nsw i64 %indvars.iv42.i.i.12.epil, 4
  %i.uu = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 12), i64 %i.ut
  %i.uv = load i8, ptr %i.uu, align 4, !tbaa !16
  %i.uw = sext i8 %i.uv to i32
  %i.ux = mul nsw i32 %i.us, %i.uw
  %i.uy = add nsw i32 %i.ux, %.02233.us.i.i.12.epil ; 2 uses
  %indvars.iv.next43.i.i.12.epil = add nuw nsw i64 %indvars.iv42.i.i.12.epil, 1
  %epil.iter157.next = add i64 %epil.iter157, 1   ; 2 uses
  %epil.iter157.cmp.not = icmp eq i64 %epil.iter157.next, %xtraiter156
  br i1 %epil.iter157.cmp.not, label %._crit_edge.us.i.i.12, label %bb.y, !llvm.loop !49

._crit_edge.us.i.i.12:                            ; preds = %bb.y, %._crit_edge.us.i.i.12.unr-lcssa
  %.lcssa38.a = phi i32 [ %i.uq, %._crit_edge.us.i.i.12.unr-lcssa ], [ %i.uy, %bb.y ]
  %i.uz = getelementptr inbounds [4 x i8], ptr %i.tj, i64 %1 ; 2 uses
  store i32 %.lcssa38.a, ptr %i.uz, align 4, !tbaa !11
  %xtraiter164 = and i64 %2, 3                    ; 3 uses
  %i.va = icmp ult i64 %i.m, 3
  br i1 %i.va, label %.epil.preheader163, label %._crit_edge.us.i.i.12.new

._crit_edge.us.i.i.12.new:                        ; preds = %._crit_edge.us.i.i.12
  %unroll_iter169 = and i64 %2, -4
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %._crit_edge.us.i.i.12.new
  %indvars.iv42.i.i.13 = phi i64 [ 0, %._crit_edge.us.i.i.12.new ], [ %indvars.iv.next43.i.i.13.3, %bb.z ] ; 6 uses
  %.02233.us.i.i.13 = phi i32 [ 0, %._crit_edge.us.i.i.12.new ], [ %i.wg, %bb.z ]
  %niter170 = phi i64 [ 0, %._crit_edge.us.i.i.12.new ], [ %niter170.next.3, %bb.z ]
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.13
  %i.vc = load i32, ptr %i.vb, align 16, !tbaa !11
  %i.vd = shl nuw nsw i64 %indvars.iv42.i.i.13, 4
  %i.ve = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 13), i64 %i.vd
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !16
  %i.vg = sext i8 %i.vf to i32
  %i.vh = mul nsw i32 %i.vc, %i.vg
  %i.vi = add nsw i32 %i.vh, %.02233.us.i.i.13
  %indvars.iv.next43.i.i.13 = or disjoint i64 %indvars.iv42.i.i.13, 1 ; 2 uses
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.13
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !11
  %i.vl = shl nuw nsw i64 %indvars.iv.next43.i.i.13, 4
  %i.vm = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 13), i64 %i.vl
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !16
  %i.vo = sext i8 %i.vn to i32
  %i.vp = mul nsw i32 %i.vk, %i.vo
  %i.vq = add nsw i32 %i.vp, %i.vi
  %indvars.iv.next43.i.i.13.1 = or disjoint i64 %indvars.iv42.i.i.13, 2 ; 2 uses
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.13.1
end_hunk_2
begin_hunk_3_@ff_vvc_inv_dct8_16:bb.a
  br i1 %epil.iter165.cmp.not, label %._crit_edge.us.i.i.13, label %bb.aa, !llvm.loop !50

._crit_edge.us.i.i.13:                            ; preds = %bb.aa, %._crit_edge.us.i.i.13.unr-lcssa
  %.lcssa37 = phi i32 [ %i.wg, %._crit_edge.us.i.i.13.unr-lcssa ], [ %i.wo, %bb.aa ]
  %i.wp = getelementptr inbounds [4 x i8], ptr %i.uz, i64 %1 ; 2 uses
  store i32 %.lcssa37, ptr %i.wp, align 4, !tbaa !11
  %xtraiter172 = and i64 %2, 3                    ; 3 uses
  %i.wq = icmp ult i64 %i.m, 3
  br i1 %i.wq, label %.epil.preheader171, label %._crit_edge.us.i.i.13.new

._crit_edge.us.i.i.13.new:                        ; preds = %._crit_edge.us.i.i.13
  %unroll_iter177 = and i64 %2, -4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %._crit_edge.us.i.i.13.new
  %indvars.iv42.i.i.14 = phi i64 [ 0, %._crit_edge.us.i.i.13.new ], [ %indvars.iv.next43.i.i.14.3, %bb.ab ] ; 6 uses
  %.02233.us.i.i.14 = phi i32 [ 0, %._crit_edge.us.i.i.13.new ], [ %i.xw, %bb.ab ]
  %niter178 = phi i64 [ 0, %._crit_edge.us.i.i.13.new ], [ %niter178.next.3, %bb.ab ]
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.14
  %i.ws = load i32, ptr %i.wr, align 16, !tbaa !11
  %i.wt = shl nuw nsw i64 %indvars.iv42.i.i.14, 4
  %i.wu = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 14), i64 %i.wt
  %i.wv = load i8, ptr %i.wu, align 2, !tbaa !16
  %i.ww = sext i8 %i.wv to i32
  %i.wx = mul nsw i32 %i.ws, %i.ww
  %i.wy = add nsw i32 %i.wx, %.02233.us.i.i.14
  %indvars.iv.next43.i.i.14 = or disjoint i64 %indvars.iv42.i.i.14, 1 ; 2 uses
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.14
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !11
  %i.xb = shl nuw nsw i64 %indvars.iv.next43.i.i.14, 4
  %i.xc = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 14), i64 %i.xb
  %i.xd = load i8, ptr %i.xc, align 2, !tbaa !16
  %i.xe = sext i8 %i.xd to i32
  %i.xf = mul nsw i32 %i.xa, %i.xe
  %i.xg = add nsw i32 %i.xf, %i.wy
  %indvars.iv.next43.i.i.14.1 = or disjoint i64 %indvars.iv42.i.i.14, 2 ; 2 uses
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.14.1
  %i.xi = load i32, ptr %i.xh, align 8, !tbaa !11
  %i.xj = shl nuw nsw i64 %indvars.iv.next43.i.i.14.1, 4
  %i.xk = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 14), i64 %i.xj
  %i.xl = load i8, ptr %i.xk, align 2, !tbaa !16
  %i.xm = sext i8 %i.xl to i32
  %i.xn = mul nsw i32 %i.xi, %i.xm
  %i.xo = add nsw i32 %i.xn, %i.xg
  %indvars.iv.next43.i.i.14.2 = or disjoint i64 %indvars.iv42.i.i.14, 3 ; 2 uses
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.14.2
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !11
  %i.xr = shl nuw nsw i64 %indvars.iv.next43.i.i.14.2, 4
  %i.xs = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 14), i64 %i.xr
  %i.xt = load i8, ptr %i.xs, align 2, !tbaa !16
  %i.xu = sext i8 %i.xt to i32
  %i.xv = mul nsw i32 %i.xq, %i.xu
  %i.xw = add nsw i32 %i.xv, %i.xo                ; 3 uses
  %indvars.iv.next43.i.i.14.3 = add nuw nsw i64 %indvars.iv42.i.i.14, 4 ; 2 uses
  %niter178.next.3 = add i64 %niter178, 4         ; 2 uses
  %niter178.ncmp.3 = icmp eq i64 %niter178.next.3, %unroll_iter177
  br i1 %niter178.ncmp.3, label %._crit_edge.us.i.i.14.unr-lcssa, label %bb.ab, !llvm.loop !0

._crit_edge.us.i.i.14.unr-lcssa:                  ; preds = %bb.ab
  %lcmp.mod174.not = icmp eq i64 %xtraiter172, 0
  br i1 %lcmp.mod174.not, label %._crit_edge.us.i.i.14, label %.epil.preheader171

.epil.preheader171:                               ; preds = %._crit_edge.us.i.i.14.unr-lcssa, %._crit_edge.us.i.i.13
  %indvars.iv42.i.i.14.epil.init = phi i64 [ 0, %._crit_edge.us.i.i.13 ], [ %indvars.iv.next43.i.i.14.3, %._crit_edge.us.i.i.14.unr-lcssa ]
  %.02233.us.i.i.14.epil.init = phi i32 [ 0, %._crit_edge.us.i.i.13 ], [ %i.xw, %._crit_edge.us.i.i.14.unr-lcssa ]
  %lcmp.mod176 = icmp ne i64 %xtraiter172, 0
  tail call void @llvm.assume(i1 %lcmp.mod176)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.epil.preheader171
  %indvars.iv42.i.i.14.epil = phi i64 [ %indvars.iv42.i.i.14.epil.init, %.epil.preheader171 ], [ %indvars.iv.next43.i.i.14.epil, %bb.ac ] ; 3 uses
  %.02233.us.i.i.14.epil = phi i32 [ %.02233.us.i.i.14.epil.init, %.epil.preheader171 ], [ %i.ye, %bb.ac ]
  %epil.iter173 = phi i64 [ 0, %.epil.preheader171 ], [ %epil.iter173.next, %bb.ac ]
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.14.epil
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !11
  %i.xz = shl nuw nsw i64 %indvars.iv42.i.i.14.epil, 4
  %i.ya = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 14), i64 %i.xz
  %i.yb = load i8, ptr %i.ya, align 2, !tbaa !16
  %i.yc = sext i8 %i.yb to i32
  %i.yd = mul nsw i32 %i.xy, %i.yc
  %i.ye = add nsw i32 %i.yd, %.02233.us.i.i.14.epil ; 2 uses
  %indvars.iv.next43.i.i.14.epil = add nuw nsw i64 %indvars.iv42.i.i.14.epil, 1
  %epil.iter173.next = add i64 %epil.iter173, 1   ; 2 uses
  %epil.iter173.cmp.not = icmp eq i64 %epil.iter173.next, %xtraiter172
  br i1 %epil.iter173.cmp.not, label %._crit_edge.us.i.i.14, label %bb.ac, !llvm.loop !51

._crit_edge.us.i.i.14:                            ; preds = %bb.ac, %._crit_edge.us.i.i.14.unr-lcssa
  %.lcssa36 = phi i32 [ %i.xw, %._crit_edge.us.i.i.14.unr-lcssa ], [ %i.ye, %bb.ac ]
  %i.yf = getelementptr inbounds [4 x i8], ptr %i.wp, i64 %1
  store i32 %.lcssa36, ptr %i.yf, align 4, !tbaa !11
  %xtraiter180 = and i64 %2, 3                    ; 3 uses
  %i.yg = icmp ult i64 %i.m, 3
  br i1 %i.yg, label %.epil.preheader179, label %._crit_edge.us.i.i.14.new

._crit_edge.us.i.i.14.new:                        ; preds = %._crit_edge.us.i.i.14
  %unroll_iter185 = and i64 %2, -4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %._crit_edge.us.i.i.14.new
  %indvars.iv42.i.i.15 = phi i64 [ 0, %._crit_edge.us.i.i.14.new ], [ %indvars.iv.next43.i.i.15.3, %bb.ad ] ; 6 uses
  %.02233.us.i.i.15 = phi i32 [ 0, %._crit_edge.us.i.i.14.new ], [ %i.zm, %bb.ad ]
  %niter186 = phi i64 [ 0, %._crit_edge.us.i.i.14.new ], [ %niter186.next.3, %bb.ad ]
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.15
  %i.yi = load i32, ptr %i.yh, align 16, !tbaa !11
  %i.yj = shl nuw nsw i64 %indvars.iv42.i.i.15, 4
  %i.yk = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 15), i64 %i.yj
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !16
  %i.ym = sext i8 %i.yl to i32
  %i.yn = mul nsw i32 %i.yi, %i.ym
  %i.yo = add nsw i32 %i.yn, %.02233.us.i.i.15
  %indvars.iv.next43.i.i.15 = or disjoint i64 %indvars.iv42.i.i.15, 1 ; 2 uses
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.15
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !11
  %i.yr = shl nuw nsw i64 %indvars.iv.next43.i.i.15, 4
  %i.ys = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 15), i64 %i.yr
  %i.yt = load i8, ptr %i.ys, align 1, !tbaa !16
  %i.yu = sext i8 %i.yt to i32
  %i.yv = mul nsw i32 %i.yq, %i.yu
  %i.yw = add nsw i32 %i.yv, %i.yo
  %indvars.iv.next43.i.i.15.1 = or disjoint i64 %indvars.iv42.i.i.15, 2 ; 2 uses
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.15.1
  %i.yy = load i32, ptr %i.yx, align 8, !tbaa !11
  %i.yz = shl nuw nsw i64 %indvars.iv.next43.i.i.15.1, 4
  %i.za = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 15), i64 %i.yz
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !16
  %i.zc = sext i8 %i.zb to i32
  %i.zd = mul nsw i32 %i.yy, %i.zc
  %i.ze = add nsw i32 %i.zd, %i.yw
  %indvars.iv.next43.i.i.15.2 = or disjoint i64 %indvars.iv42.i.i.15, 3 ; 2 uses
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.15.2
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !11
  %i.zh = shl nuw nsw i64 %indvars.iv.next43.i.i.15.2, 4
  %i.zi = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 15), i64 %i.zh
  %i.zj = load i8, ptr %i.zi, align 1, !tbaa !16
  %i.zk = sext i8 %i.zj to i32
  %i.zl = mul nsw i32 %i.zg, %i.zk
  %i.zm = add nsw i32 %i.zl, %i.ze                ; 3 uses
  %indvars.iv.next43.i.i.15.3 = add nuw nsw i64 %indvars.iv42.i.i.15, 4 ; 2 uses
  %niter186.next.3 = add i64 %niter186, 4         ; 2 uses
  %niter186.ncmp.3 = icmp eq i64 %niter186.next.3, %unroll_iter185
  br i1 %niter186.ncmp.3, label %inv_dct8.exit.loopexit.unr-lcssa, label %bb.ad, !llvm.loop !0

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.zn = mul nsw i64 %indvars.iv.i.i, %1
  %i.zo = getelementptr inbounds [4 x i8], ptr %0, i64 %i.zn
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !11
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i
  store i32 %i.zp, ptr %i.zq, align 4, !tbaa !11
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.zr = mul nsw i64 %indvars.iv.next.i.i, %1
  %i.zs = getelementptr inbounds [4 x i8], ptr %0, i64 %i.zr
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !11
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i
  store i32 %i.zt, ptr %i.zu, align 4, !tbaa !11
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.zv = mul nsw i64 %indvars.iv.next.i.i.1, %1
  %i.zw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.zv
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !11
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.1
  store i32 %i.zx, ptr %i.zy, align 4, !tbaa !11
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.zz = mul nsw i64 %indvars.iv.next.i.i.2, %1
  %i.aaa = getelementptr inbounds [4 x i8], ptr %0, i64 %i.zz
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !11
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.2
  store i32 %i.aab, ptr %i.aac, align 4, !tbaa !11
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %2
  br i1 %exitcond.not.i.i.3, label %.preheader.us.i.i.preheader.preheader, label %.lr.ph.i.i, !llvm.loop !52

inv_dct8.exit.loopexit.unr-lcssa:                 ; preds = %bb.ad
  %lcmp.mod182.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod182.not, label %inv_dct8.exit, label %.epil.preheader179

.epil.preheader179:                               ; preds = %inv_dct8.exit.loopexit.unr-lcssa, %._crit_edge.us.i.i.14
  %indvars.iv42.i.i.15.epil.init = phi i64 [ 0, %._crit_edge.us.i.i.14 ], [ %indvars.iv.next43.i.i.15.3, %inv_dct8.exit.loopexit.unr-lcssa ]
  %.02233.us.i.i.15.epil.init = phi i32 [ 0, %._crit_edge.us.i.i.14 ], [ %i.zm, %inv_dct8.exit.loopexit.unr-lcssa ]
  %lcmp.mod184 = icmp ne i64 %xtraiter180, 0
  tail call void @llvm.assume(i1 %lcmp.mod184)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.epil.preheader179
  %indvars.iv42.i.i.15.epil = phi i64 [ %indvars.iv42.i.i.15.epil.init, %.epil.preheader179 ], [ %indvars.iv.next43.i.i.15.epil, %bb.ae ] ; 3 uses
  %.02233.us.i.i.15.epil = phi i32 [ %.02233.us.i.i.15.epil.init, %.epil.preheader179 ], [ %i.aak, %bb.ae ]
  %epil.iter181 = phi i64 [ 0, %.epil.preheader179 ], [ %epil.iter181.next, %bb.ae ]
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.15.epil
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !11
  %i.aaf = shl nuw nsw i64 %indvars.iv42.i.i.15.epil, 4
  %i.aag = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dct8_16x16, i64 15), i64 %i.aaf
  %i.aah = load i8, ptr %i.aag, align 1, !tbaa !16
  %i.aai = sext i8 %i.aah to i32
  %i.aaj = mul nsw i32 %i.aae, %i.aai
  %i.aak = add nsw i32 %i.aaj, %.02233.us.i.i.15.epil ; 2 uses
  %indvars.iv.next43.i.i.15.epil = add nuw nsw i64 %indvars.iv42.i.i.15.epil, 1
  %epil.iter181.next = add i64 %epil.iter181, 1   ; 2 uses
  %epil.iter181.cmp.not = icmp eq i64 %epil.iter181.next, %xtraiter180
  br i1 %epil.iter181.cmp.not, label %inv_dct8.exit, label %bb.ae, !llvm.loop !53

inv_dct8.exit:                                    ; preds = %inv_dct8.exit.loopexit.unr-lcssa, %bb.ae, %.preheader.i.i.preheader
  %.lcssa.sink = phi i32 [ 0, %.preheader.i.i.preheader ], [ %i.zm, %inv_dct8.exit.loopexit.unr-lcssa ], [ %i.aak, %bb.ae ]
  %i.aal = getelementptr inbounds [4 x i8], ptr %0, i64 %1
  %.idx = shl i64 %1, 3
  %3 = getelementptr inbounds i8, ptr %i.aal, i64 %.idx
  %4 = shl i64 %1, 4
  %5 = getelementptr inbounds i8, ptr %3, i64 %4
  %6 = shl i64 %1, 5
  %7 = getelementptr inbounds i8, ptr %5, i64 %6
  store i32 %.lcssa.sink, ptr %7, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ff_vvc_inv_dct8_32(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %.preheader.i.i.preheader, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ugt i64 %2, 7
  %ident.check.not = icmp eq i64 %1, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.ph, label %.lr.ph.i.i.preheader6

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <4 x i32>, ptr %i.b, align 4, !tbaa !11
  %wide.load5 = load <4 x i32>, ptr %i.c, align 4, !tbaa !11
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <4 x i32> %wide.load, ptr %i.d, align 16, !tbaa !11
  store <4 x i32> %wide.load5, ptr %i.e, align 16, !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.preheader.us.i.i.preheader, label %.lr.ph.i.i.preheader6

.lr.ph.i.i.preheader6:                            ; preds = %.lr.ph.i.i.preheader, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader6, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader6 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader6 ]
  %i.g = mul nsw i64 %indvars.iv.i.i.prol, %1
  %i.h = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i.prol
  store i32 %i.i, ptr %i.j, align 4, !tbaa !11
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !55

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader6
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader6 ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.k = sub i64 %indvars.iv.i.i.ph, %2
  %i.l = icmp ugt i64 %i.k, -4
  br i1 %i.l, label %.preheader.us.i.i.preheader, label %.lr.ph.i.i

.preheader.us.i.i.preheader:                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block
  %xtraiter7 = and i64 %2, 3                      ; 3 uses
  %i.m = icmp ult i64 %2, 4
  %unroll_iter = and i64 %2, -4
  %lcmp.mod8.not = icmp eq i64 %xtraiter7, 0
  %lcmp.mod10 = icmp ne i64 %xtraiter7, 0
  br label %.preheader.us.i.i

.preheader.i.i.preheader:                         ; preds = %bb.a
  store i32 0, ptr %0, align 4, !tbaa !11
  %i.n = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 2 uses
  store i32 0, ptr %i.n, align 4, !tbaa !11
  %i.o = getelementptr inbounds [4 x i8], ptr %i.n, i64 %1 ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !11
  %i.p = getelementptr inbounds [4 x i8], ptr %i.o, i64 %1 ; 2 uses
  store i32 0, ptr %i.p, align 4, !tbaa !11
  %i.q = getelementptr inbounds [4 x i8], ptr %i.p, i64 %1 ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !11
  %i.r = getelementptr inbounds [4 x i8], ptr %i.q, i64 %1 ; 2 uses
  store i32 0, ptr %i.r, align 4, !tbaa !11
  %i.s = getelementptr inbounds [4 x i8], ptr %i.r, i64 %1 ; 2 uses
  store i32 0, ptr %i.s, align 4, !tbaa !11
  %i.t = getelementptr inbounds [4 x i8], ptr %i.s, i64 %1 ; 2 uses
  store i32 0, ptr %i.t, align 4, !tbaa !11
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %1 ; 2 uses
  store i32 0, ptr %i.u, align 4, !tbaa !11
  %i.v = getelementptr inbounds [4 x i8], ptr %i.u, i64 %1 ; 2 uses
  store i32 0, ptr %i.v, align 4, !tbaa !11
  %i.w = getelementptr inbounds [4 x i8], ptr %i.v, i64 %1 ; 2 uses
  store i32 0, ptr %i.w, align 4, !tbaa !11
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %1 ; 2 uses
  store i32 0, ptr %i.x, align 4, !tbaa !11
  %i.y = getelementptr inbounds [4 x i8], ptr %i.x, i64 %1 ; 2 uses
  store i32 0, ptr %i.y, align 4, !tbaa !11
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %1 ; 2 uses
  store i32 0, ptr %i.z, align 4, !tbaa !11
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %1 ; 2 uses
  store i32 0, ptr %i.aa, align 4, !tbaa !11
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %1 ; 2 uses
  store i32 0, ptr %i.ab, align 4, !tbaa !11
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %1 ; 2 uses
  store i32 0, ptr %i.ac, align 4, !tbaa !11
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %1 ; 2 uses
  store i32 0, ptr %i.ad, align 4, !tbaa !11
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %1 ; 2 uses
  store i32 0, ptr %i.ae, align 4, !tbaa !11
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %1 ; 2 uses
  store i32 0, ptr %i.af, align 4, !tbaa !11
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.af, i64 %1 ; 2 uses
  store i32 0, ptr %i.ag, align 4, !tbaa !11
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %1 ; 2 uses
  store i32 0, ptr %i.ah, align 4, !tbaa !11
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %1 ; 2 uses
  store i32 0, ptr %i.ai, align 4, !tbaa !11
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %1 ; 2 uses
  store i32 0, ptr %i.aj, align 4, !tbaa !11
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %1 ; 2 uses
  store i32 0, ptr %i.ak, align 4, !tbaa !11
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %1 ; 2 uses
  store i32 0, ptr %i.al, align 4, !tbaa !11
  %i.am = getelementptr inbounds [4 x i8], ptr %i.al, i64 %1 ; 2 uses
  store i32 0, ptr %i.am, align 4, !tbaa !11
  %i.an = getelementptr inbounds [4 x i8], ptr %i.am, i64 %1 ; 2 uses
  store i32 0, ptr %i.an, align 4, !tbaa !11
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.an, i64 %1 ; 2 uses
  store i32 0, ptr %i.ao, align 4, !tbaa !11
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %1 ; 2 uses
  store i32 0, ptr %i.ap, align 4, !tbaa !11
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %1 ; 2 uses
  store i32 0, ptr %i.aq, align 4, !tbaa !11
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %1
  store i32 0, ptr %i.ar, align 4, !tbaa !11
  br label %inv_dct8.exit

.preheader.us.i.i:                                ; preds = %.preheader.us.i.i.preheader, %._crit_edge.us.i.i
  %.02338.us.i.i = phi i32 [ %i.ci, %._crit_edge.us.i.i ], [ 0, %.preheader.us.i.i.preheader ]
  %.02537.us.i.i = phi ptr [ %i.cg, %._crit_edge.us.i.i ], [ %0, %.preheader.us.i.i.preheader ] ; 2 uses
  %.02636.us.i.i = phi ptr [ %i.ch, %._crit_edge.us.i.i ], [ @ff_vvc_dct8_32x32, %.preheader.us.i.i.preheader ] ; 6 uses
  br i1 %i.m, label %.epil.preheader, label %.preheader.us.i.i.new

.preheader.us.i.i.new:                            ; preds = %.preheader.us.i.i, %.preheader.us.i.i.new
  %indvars.iv42.i.i = phi i64 [ %indvars.iv.next43.i.i.3, %.preheader.us.i.i.new ], [ 0, %.preheader.us.i.i ] ; 6 uses
  %.02233.us.i.i = phi i32 [ %i.bx, %.preheader.us.i.i.new ], [ 0, %.preheader.us.i.i ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.i.i.new ], [ 0, %.preheader.us.i.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i
  %i.at = load i32, ptr %i.as, align 16, !tbaa !11
  %i.au = shl nuw nsw i64 %indvars.iv42.i.i, 5
  %i.av = getelementptr inbounds nuw i8, ptr %.02636.us.i.i, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !16
  %i.ax = sext i8 %i.aw to i32
  %i.ay = mul nsw i32 %i.at, %i.ax
  %i.az = add nsw i32 %i.ay, %.02233.us.i.i
  %indvars.iv.next43.i.i = or disjoint i64 %indvars.iv42.i.i, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !11
  %i.bc = shl nuw nsw i64 %indvars.iv.next43.i.i, 5
  %i.bd = getelementptr inbounds nuw i8, ptr %.02636.us.i.i, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !16
  %i.bf = sext i8 %i.be to i32
  %i.bg = mul nsw i32 %i.bb, %i.bf
  %i.bh = add nsw i32 %i.bg, %i.az
  %indvars.iv.next43.i.i.1 = or disjoint i64 %indvars.iv42.i.i, 2 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.1
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !11
  %i.bk = shl nuw nsw i64 %indvars.iv.next43.i.i.1, 5
  %i.bl = getelementptr inbounds nuw i8, ptr %.02636.us.i.i, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !16
  %i.bn = sext i8 %i.bm to i32
  %i.bo = mul nsw i32 %i.bj, %i.bn
  %i.bp = add nsw i32 %i.bo, %i.bh
  %indvars.iv.next43.i.i.2 = or disjoint i64 %indvars.iv42.i.i, 3 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.2
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !11
  %i.bs = shl nuw nsw i64 %indvars.iv.next43.i.i.2, 5
  %i.bt = getelementptr inbounds nuw i8, ptr %.02636.us.i.i, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !16
  %i.bv = sext i8 %i.bu to i32
  %i.bw = mul nsw i32 %i.br, %i.bv
  %i.bx = add nsw i32 %i.bw, %i.bp                ; 3 uses
  %indvars.iv.next43.i.i.3 = add nuw nsw i64 %indvars.iv42.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.i.unr-lcssa, label %.preheader.us.i.i.new, !llvm.loop !0

._crit_edge.us.i.i.unr-lcssa:                     ; preds = %.preheader.us.i.i.new
  br i1 %lcmp.mod8.not, label %._crit_edge.us.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.i.unr-lcssa, %.preheader.us.i.i
  %indvars.iv42.i.i.epil.init = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next43.i.i.3, %._crit_edge.us.i.i.unr-lcssa ]
  %.02233.us.i.i.epil.init = phi i32 [ 0, %.preheader.us.i.i ], [ %i.bx, %._crit_edge.us.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod10)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
end_hunk_3
begin_hunk_4_@ff_vvc_inv_dst7_4:bb.a
._crit_edge.us.i.i.1:                             ; preds = %bb.c, %._crit_edge.us.i.i.1.unr-lcssa
  %.lcssa13 = phi i32 [ %i.cj, %._crit_edge.us.i.i.1.unr-lcssa ], [ %i.cr, %bb.c ]
  %i.cs = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 2 uses
  store i32 %.lcssa13, ptr %i.cs, align 4, !tbaa !11
  %xtraiter40 = and i64 %2, 3                     ; 3 uses
  %i.ct = icmp ult i64 %2, 4
  br i1 %i.ct, label %.epil.preheader39, label %._crit_edge.us.i.i.1.new

._crit_edge.us.i.i.1.new:                         ; preds = %._crit_edge.us.i.i.1
  %unroll_iter45 = and i64 %2, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %._crit_edge.us.i.i.1.new
  %indvars.iv42.i.i.2 = phi i64 [ 0, %._crit_edge.us.i.i.1.new ], [ %indvars.iv.next43.i.i.2.3, %bb.d ] ; 6 uses
  %.02233.us.i.i.2 = phi i32 [ 0, %._crit_edge.us.i.i.1.new ], [ %i.dz, %bb.d ]
  %niter46 = phi i64 [ 0, %._crit_edge.us.i.i.1.new ], [ %niter46.next.3, %bb.d ]
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.2
  %i.cv = load i32, ptr %i.cu, align 16, !tbaa !11
  %i.cw = shl nuw nsw i64 %indvars.iv42.i.i.2, 2
  %i.cx = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_4x4, i64 2), i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !16
  %i.cz = sext i8 %i.cy to i32
  %i.da = mul nsw i32 %i.cv, %i.cz
  %i.db = add nsw i32 %i.da, %.02233.us.i.i.2
  %indvars.iv.next43.i.i.2 = or disjoint i64 %indvars.iv42.i.i.2, 1 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.2
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !11
  %i.de = shl nuw nsw i64 %indvars.iv.next43.i.i.2, 2
  %i.df = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_4x4, i64 2), i64 %i.de
  %i.dg = load i8, ptr %i.df, align 2, !tbaa !16
  %i.dh = sext i8 %i.dg to i32
  %i.di = mul nsw i32 %i.dd, %i.dh
  %i.dj = add nsw i32 %i.di, %i.db
  %indvars.iv.next43.i.i.2.1 = or disjoint i64 %indvars.iv42.i.i.2, 2 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.2.1
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !11
  %i.dm = shl nuw nsw i64 %indvars.iv.next43.i.i.2.1, 2
  %i.dn = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_4x4, i64 2), i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 2, !tbaa !16
  %i.dp = sext i8 %i.do to i32
  %i.dq = mul nsw i32 %i.dl, %i.dp
  %i.dr = add nsw i32 %i.dq, %i.dj
  %indvars.iv.next43.i.i.2.2 = or disjoint i64 %indvars.iv42.i.i.2, 3 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.2.2
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !11
  %i.du = shl nuw nsw i64 %indvars.iv.next43.i.i.2.2, 2
  %i.dv = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_4x4, i64 2), i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 2, !tbaa !16
  %i.dx = sext i8 %i.dw to i32
  %i.dy = mul nsw i32 %i.dt, %i.dx
  %i.dz = add nsw i32 %i.dy, %i.dr                ; 3 uses
  %indvars.iv.next43.i.i.2.3 = add nuw nsw i64 %indvars.iv42.i.i.2, 4 ; 2 uses
  %niter46.next.3 = add i64 %niter46, 4           ; 2 uses
  %niter46.ncmp.3 = icmp eq i64 %niter46.next.3, %unroll_iter45
  br i1 %niter46.ncmp.3, label %._crit_edge.us.i.i.2.unr-lcssa, label %bb.d, !llvm.loop !0

._crit_edge.us.i.i.2.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod42.not = icmp eq i64 %xtraiter40, 0
  br i1 %lcmp.mod42.not, label %._crit_edge.us.i.i.2, label %.epil.preheader39

.epil.preheader39:                                ; preds = %._crit_edge.us.i.i.2.unr-lcssa, %._crit_edge.us.i.i.1
  %indvars.iv42.i.i.2.epil.init = phi i64 [ 0, %._crit_edge.us.i.i.1 ], [ %indvars.iv.next43.i.i.2.3, %._crit_edge.us.i.i.2.unr-lcssa ]
  %.02233.us.i.i.2.epil.init = phi i32 [ 0, %._crit_edge.us.i.i.1 ], [ %i.dz, %._crit_edge.us.i.i.2.unr-lcssa ]
  %lcmp.mod44 = icmp ne i64 %xtraiter40, 0
  tail call void @llvm.assume(i1 %lcmp.mod44)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader39
  %indvars.iv42.i.i.2.epil = phi i64 [ %indvars.iv42.i.i.2.epil.init, %.epil.preheader39 ], [ %indvars.iv.next43.i.i.2.epil, %bb.e ] ; 3 uses
  %.02233.us.i.i.2.epil = phi i32 [ %.02233.us.i.i.2.epil.init, %.epil.preheader39 ], [ %i.eh, %bb.e ]
  %epil.iter41 = phi i64 [ 0, %.epil.preheader39 ], [ %epil.iter41.next, %bb.e ]
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.2.epil
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !11
  %i.ec = shl nuw nsw i64 %indvars.iv42.i.i.2.epil, 2
  %i.ed = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_4x4, i64 2), i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 2, !tbaa !16
  %i.ef = sext i8 %i.ee to i32
  %i.eg = mul nsw i32 %i.eb, %i.ef
  %i.eh = add nsw i32 %i.eg, %.02233.us.i.i.2.epil ; 2 uses
  %indvars.iv.next43.i.i.2.epil = add nuw nsw i64 %indvars.iv42.i.i.2.epil, 1
  %epil.iter41.next = add i64 %epil.iter41, 1     ; 2 uses
  %epil.iter41.cmp.not = icmp eq i64 %epil.iter41.next, %xtraiter40
  br i1 %epil.iter41.cmp.not, label %._crit_edge.us.i.i.2, label %bb.e, !llvm.loop !62

._crit_edge.us.i.i.2:                             ; preds = %bb.e, %._crit_edge.us.i.i.2.unr-lcssa
  %.lcssa12 = phi i32 [ %i.dz, %._crit_edge.us.i.i.2.unr-lcssa ], [ %i.eh, %bb.e ]
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %1
  store i32 %.lcssa12, ptr %i.ei, align 4, !tbaa !11
  %xtraiter48 = and i64 %2, 3                     ; 3 uses
  %i.ej = icmp ult i64 %2, 4
  br i1 %i.ej, label %.epil.preheader47, label %._crit_edge.us.i.i.2.new

._crit_edge.us.i.i.2.new:                         ; preds = %._crit_edge.us.i.i.2
  %unroll_iter53 = and i64 %2, -4
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %._crit_edge.us.i.i.2.new
  %indvars.iv42.i.i.3 = phi i64 [ 0, %._crit_edge.us.i.i.2.new ], [ %indvars.iv.next43.i.i.3.3, %bb.f ] ; 6 uses
  %.02233.us.i.i.3 = phi i32 [ 0, %._crit_edge.us.i.i.2.new ], [ %i.fp, %bb.f ]
  %niter54 = phi i64 [ 0, %._crit_edge.us.i.i.2.new ], [ %niter54.next.3, %bb.f ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.3
  %i.el = load i32, ptr %i.ek, align 16, !tbaa !11
  %i.em = shl nuw nsw i64 %indvars.iv42.i.i.3, 2
  %i.en = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_4x4, i64 3), i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !16
  %i.ep = sext i8 %i.eo to i32
  %i.eq = mul nsw i32 %i.el, %i.ep
  %i.er = add nsw i32 %i.eq, %.02233.us.i.i.3
  %indvars.iv.next43.i.i.3 = or disjoint i64 %indvars.iv42.i.i.3, 1 ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.3
  %i.et = load i32, ptr %i.es, align 4, !tbaa !11
  %i.eu = shl nuw nsw i64 %indvars.iv.next43.i.i.3, 2
  %i.ev = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_4x4, i64 3), i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !16
  %i.ex = sext i8 %i.ew to i32
  %i.ey = mul nsw i32 %i.et, %i.ex
  %i.ez = add nsw i32 %i.ey, %i.er
  %indvars.iv.next43.i.i.3.1 = or disjoint i64 %indvars.iv42.i.i.3, 2 ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.3.1
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !11
  %i.fc = shl nuw nsw i64 %indvars.iv.next43.i.i.3.1, 2
  %i.fd = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_4x4, i64 3), i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !16
  %i.ff = sext i8 %i.fe to i32
  %i.fg = mul nsw i32 %i.fb, %i.ff
  %i.fh = add nsw i32 %i.fg, %i.ez
  %indvars.iv.next43.i.i.3.2 = or disjoint i64 %indvars.iv42.i.i.3, 3 ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.3.2
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !11
  %i.fk = shl nuw nsw i64 %indvars.iv.next43.i.i.3.2, 2
  %i.fl = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_4x4, i64 3), i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !16
  %i.fn = sext i8 %i.fm to i32
  %i.fo = mul nsw i32 %i.fj, %i.fn
  %i.fp = add nsw i32 %i.fo, %i.fh                ; 3 uses
  %indvars.iv.next43.i.i.3.3 = add nuw nsw i64 %indvars.iv42.i.i.3, 4 ; 2 uses
  %niter54.next.3 = add i64 %niter54, 4           ; 2 uses
  %niter54.ncmp.3 = icmp eq i64 %niter54.next.3, %unroll_iter53
  br i1 %niter54.ncmp.3, label %inv_dst7.exit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !0

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.fq = mul nsw i64 %indvars.iv.i.i, %1
  %i.fr = getelementptr inbounds [4 x i8], ptr %0, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !11
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !11
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fu = mul nsw i64 %indvars.iv.next.i.i, %1
  %i.fv = getelementptr inbounds [4 x i8], ptr %0, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !11
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !11
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.fy = mul nsw i64 %indvars.iv.next.i.i.1, %1
  %i.fz = getelementptr inbounds [4 x i8], ptr %0, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !11
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.1
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !11
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.gc = mul nsw i64 %indvars.iv.next.i.i.2, %1
  %i.gd = getelementptr inbounds [4 x i8], ptr %0, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !11
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.2
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !11
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %2
  br i1 %exitcond.not.i.i.3, label %.preheader.us.i.i.preheader.preheader, label %.lr.ph.i.i, !llvm.loop !63

inv_dst7.exit.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod50.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod50.not, label %inv_dst7.exit, label %.epil.preheader47

.epil.preheader47:                                ; preds = %inv_dst7.exit.loopexit.unr-lcssa, %._crit_edge.us.i.i.2
  %indvars.iv42.i.i.3.epil.init = phi i64 [ 0, %._crit_edge.us.i.i.2 ], [ %indvars.iv.next43.i.i.3.3, %inv_dst7.exit.loopexit.unr-lcssa ]
  %.02233.us.i.i.3.epil.init = phi i32 [ 0, %._crit_edge.us.i.i.2 ], [ %i.fp, %inv_dst7.exit.loopexit.unr-lcssa ]
  %lcmp.mod52 = icmp ne i64 %xtraiter48, 0
  tail call void @llvm.assume(i1 %lcmp.mod52)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader47
  %indvars.iv42.i.i.3.epil = phi i64 [ %indvars.iv42.i.i.3.epil.init, %.epil.preheader47 ], [ %indvars.iv.next43.i.i.3.epil, %bb.g ] ; 3 uses
  %.02233.us.i.i.3.epil = phi i32 [ %.02233.us.i.i.3.epil.init, %.epil.preheader47 ], [ %i.gn, %bb.g ]
  %epil.iter49 = phi i64 [ 0, %.epil.preheader47 ], [ %epil.iter49.next, %bb.g ]
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.3.epil
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !11
  %i.gi = shl nuw nsw i64 %indvars.iv42.i.i.3.epil, 2
  %i.gj = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_4x4, i64 3), i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !16
  %i.gl = sext i8 %i.gk to i32
  %i.gm = mul nsw i32 %i.gh, %i.gl
  %i.gn = add nsw i32 %i.gm, %.02233.us.i.i.3.epil ; 2 uses
  %indvars.iv.next43.i.i.3.epil = add nuw nsw i64 %indvars.iv42.i.i.3.epil, 1
  %epil.iter49.next = add i64 %epil.iter49, 1     ; 2 uses
  %epil.iter49.cmp.not = icmp eq i64 %epil.iter49.next, %xtraiter48
  br i1 %epil.iter49.cmp.not, label %inv_dst7.exit, label %bb.g, !llvm.loop !64

inv_dst7.exit:                                    ; preds = %inv_dst7.exit.loopexit.unr-lcssa, %bb.g, %.preheader.i.i.preheader
  %.lcssa.sink = phi i32 [ 0, %.preheader.i.i.preheader ], [ %i.fp, %inv_dst7.exit.loopexit.unr-lcssa ], [ %i.gn, %bb.g ]
  %i.go = getelementptr inbounds [4 x i8], ptr %0, i64 %1
  %.idx = shl i64 %1, 3
  %3 = getelementptr inbounds i8, ptr %i.go, i64 %.idx
  store i32 %.lcssa.sink, ptr %3, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_vvc_inv_dst7_8(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 48 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %.preheader.i.i.preheader, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ugt i64 %2, 7
  %ident.check.not = icmp eq i64 %1, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.ph, label %.lr.ph.i.i.preheader27

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <4 x i32>, ptr %i.b, align 4, !tbaa !11
  %wide.load19 = load <4 x i32>, ptr %i.c, align 4, !tbaa !11
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <4 x i32> %wide.load, ptr %i.d, align 16, !tbaa !11
  store <4 x i32> %wide.load19, ptr %i.e, align 16, !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.preheader.us.i.i.preheader.preheader, label %.lr.ph.i.i.preheader27

.lr.ph.i.i.preheader27:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader27, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader27 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader27 ]
  %i.g = mul nsw i64 %indvars.iv.i.i.prol, %1
  %i.h = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i.prol
  store i32 %i.i, ptr %i.j, align 4, !tbaa !11
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !66

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader27
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader27 ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.k = sub i64 %indvars.iv.i.i.ph, %2
  %i.l = icmp ugt i64 %i.k, -4
  br i1 %i.l, label %.preheader.us.i.i.preheader.preheader, label %.lr.ph.i.i

.preheader.us.i.i.preheader.preheader:            ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block
  %i.m = add i64 %2, -1                           ; 8 uses
  %xtraiter28 = and i64 %2, 3                     ; 3 uses
  %i.n = icmp ult i64 %i.m, 3
  br i1 %i.n, label %.preheader.us.i.i.preheader.epil.preheader, label %.preheader.us.i.i.preheader.preheader.new

.preheader.us.i.i.preheader.preheader.new:        ; preds = %.preheader.us.i.i.preheader.preheader
  %unroll_iter = and i64 %2, -4
  br label %.preheader.us.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.a
  store i32 0, ptr %0, align 4, !tbaa !11
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !11
  %i.p = getelementptr inbounds [4 x i8], ptr %i.o, i64 %1 ; 2 uses
  store i32 0, ptr %i.p, align 4, !tbaa !11
  %i.q = getelementptr inbounds [4 x i8], ptr %i.p, i64 %1 ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !11
  %i.r = getelementptr inbounds [4 x i8], ptr %i.q, i64 %1 ; 2 uses
  store i32 0, ptr %i.r, align 4, !tbaa !11
  %i.s = getelementptr inbounds [4 x i8], ptr %i.r, i64 %1 ; 2 uses
  store i32 0, ptr %i.s, align 4, !tbaa !11
  %i.t = getelementptr inbounds [4 x i8], ptr %i.s, i64 %1
  store i32 0, ptr %i.t, align 4, !tbaa !11
  br label %inv_dst7.exit

.preheader.us.i.i.preheader:                      ; preds = %.preheader.us.i.i.preheader, %.preheader.us.i.i.preheader.preheader.new
  %indvars.iv42.i.i = phi i64 [ 0, %.preheader.us.i.i.preheader.preheader.new ], [ %indvars.iv.next43.i.i.342, %.preheader.us.i.i.preheader ] ; 6 uses
  %.02233.us.i.i = phi i32 [ 0, %.preheader.us.i.i.preheader.preheader.new ], [ %i.az, %.preheader.us.i.i.preheader ]
  %niter = phi i64 [ 0, %.preheader.us.i.i.preheader.preheader.new ], [ %niter.next.3, %.preheader.us.i.i.preheader ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i
  %i.v = load i32, ptr %i.u, align 16, !tbaa !11
  %i.w = shl nuw nsw i64 %indvars.iv42.i.i, 3
  %i.x = getelementptr inbounds nuw i8, ptr @ff_vvc_dst7_8x8, i64 %i.w
  %i.y = load i8, ptr %i.x, align 16, !tbaa !16
  %i.z = sext i8 %i.y to i32
  %i.aa = mul nsw i32 %i.v, %i.z
  %i.ab = add nsw i32 %i.aa, %.02233.us.i.i
  %indvars.iv.next43.i.i = or disjoint i64 %indvars.iv42.i.i, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !11
  %i.ae = shl nuw nsw i64 %indvars.iv.next43.i.i, 3
  %i.af = getelementptr inbounds nuw i8, ptr @ff_vvc_dst7_8x8, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !16
  %i.ah = sext i8 %i.ag to i32
  %i.ai = mul nsw i32 %i.ad, %i.ah
  %i.aj = add nsw i32 %i.ai, %i.ab
  %indvars.iv.next43.i.i.134 = or disjoint i64 %indvars.iv42.i.i, 2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.134
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !11
  %i.am = shl nuw nsw i64 %indvars.iv.next43.i.i.134, 3
  %i.an = getelementptr inbounds nuw i8, ptr @ff_vvc_dst7_8x8, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 16, !tbaa !16
  %i.ap = sext i8 %i.ao to i32
  %i.aq = mul nsw i32 %i.al, %i.ap
  %i.ar = add nsw i32 %i.aq, %i.aj
  %indvars.iv.next43.i.i.238 = or disjoint i64 %indvars.iv42.i.i, 3 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.238
  %i.at = load i32, ptr %i.as, align 4, !tbaa !11
  %i.au = shl nuw nsw i64 %indvars.iv.next43.i.i.238, 3
  %i.av = getelementptr inbounds nuw i8, ptr @ff_vvc_dst7_8x8, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !16
  %i.ax = sext i8 %i.aw to i32
  %i.ay = mul nsw i32 %i.at, %i.ax
  %i.az = add nsw i32 %i.ay, %i.ar                ; 3 uses
  %indvars.iv.next43.i.i.342 = add nuw nsw i64 %indvars.iv42.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.i.unr-lcssa, label %.preheader.us.i.i.preheader, !llvm.loop !0

._crit_edge.us.i.i.unr-lcssa:                     ; preds = %.preheader.us.i.i.preheader
  %lcmp.mod29.not = icmp eq i64 %xtraiter28, 0
  br i1 %lcmp.mod29.not, label %._crit_edge.us.i.i, label %.preheader.us.i.i.preheader.epil.preheader

.preheader.us.i.i.preheader.epil.preheader:       ; preds = %._crit_edge.us.i.i.unr-lcssa, %.preheader.us.i.i.preheader.preheader
  %indvars.iv42.i.i.epil.init = phi i64 [ 0, %.preheader.us.i.i.preheader.preheader ], [ %indvars.iv.next43.i.i.342, %._crit_edge.us.i.i.unr-lcssa ]
  %.02233.us.i.i.epil.init = phi i32 [ 0, %.preheader.us.i.i.preheader.preheader ], [ %i.az, %._crit_edge.us.i.i.unr-lcssa ]
  %lcmp.mod31 = icmp ne i64 %xtraiter28, 0
  tail call void @llvm.assume(i1 %lcmp.mod31)
  br label %.preheader.us.i.i.preheader.epil

.preheader.us.i.i.preheader.epil:                 ; preds = %.preheader.us.i.i.preheader.epil, %.preheader.us.i.i.preheader.epil.preheader
  %indvars.iv42.i.i.epil = phi i64 [ %indvars.iv.next43.i.i.epil, %.preheader.us.i.i.preheader.epil ], [ %indvars.iv42.i.i.epil.init, %.preheader.us.i.i.preheader.epil.preheader ] ; 3 uses
  %.02233.us.i.i.epil = phi i32 [ %i.bh, %.preheader.us.i.i.preheader.epil ], [ %.02233.us.i.i.epil.init, %.preheader.us.i.i.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.us.i.i.preheader.epil ], [ 0, %.preheader.us.i.i.preheader.epil.preheader ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.epil
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !11
  %i.bc = shl nuw nsw i64 %indvars.iv42.i.i.epil, 3
  %i.bd = getelementptr inbounds nuw i8, ptr @ff_vvc_dst7_8x8, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !16
  %i.bf = sext i8 %i.be to i32
  %i.bg = mul nsw i32 %i.bb, %i.bf
  %i.bh = add nsw i32 %i.bg, %.02233.us.i.i.epil  ; 2 uses
  %indvars.iv.next43.i.i.epil = add nuw nsw i64 %indvars.iv42.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter28
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i.i, label %.preheader.us.i.i.preheader.epil, !llvm.loop !67

._crit_edge.us.i.i:                               ; preds = %.preheader.us.i.i.preheader.epil, %._crit_edge.us.i.i.unr-lcssa
  %.lcssa26.a = phi i32 [ %i.az, %._crit_edge.us.i.i.unr-lcssa ], [ %i.bh, %.preheader.us.i.i.preheader.epil ]
  store i32 %.lcssa26.a, ptr %0, align 4, !tbaa !11
  %xtraiter44 = and i64 %2, 3                     ; 3 uses
  %i.bi = icmp ult i64 %i.m, 3
  br i1 %i.bi, label %.epil.preheader, label %._crit_edge.us.i.i.new

._crit_edge.us.i.i.new:                           ; preds = %._crit_edge.us.i.i
  %unroll_iter49 = and i64 %2, -4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge.us.i.i.new
  %indvars.iv42.i.i.1 = phi i64 [ 0, %._crit_edge.us.i.i.new ], [ %indvars.iv.next43.i.i.1.3, %bb.b ] ; 6 uses
  %.02233.us.i.i.1 = phi i32 [ 0, %._crit_edge.us.i.i.new ], [ %i.co, %bb.b ]
  %niter50 = phi i64 [ 0, %._crit_edge.us.i.i.new ], [ %niter50.next.3, %bb.b ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.1
  %i.bk = load i32, ptr %i.bj, align 16, !tbaa !11
  %i.bl = shl nuw nsw i64 %indvars.iv42.i.i.1, 3
  %i.bm = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 1), i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !16
  %i.bo = sext i8 %i.bn to i32
  %i.bp = mul nsw i32 %i.bk, %i.bo
  %i.bq = add nsw i32 %i.bp, %.02233.us.i.i.1
  %indvars.iv.next43.i.i.1 = or disjoint i64 %indvars.iv42.i.i.1, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.1
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !11
  %i.bt = shl nuw nsw i64 %indvars.iv.next43.i.i.1, 3
  %i.bu = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 1), i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !16
  %i.bw = sext i8 %i.bv to i32
  %i.bx = mul nsw i32 %i.bs, %i.bw
  %i.by = add nsw i32 %i.bx, %i.bq
  %indvars.iv.next43.i.i.1.1 = or disjoint i64 %indvars.iv42.i.i.1, 2 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.1.1
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !11
  %i.cb = shl nuw nsw i64 %indvars.iv.next43.i.i.1.1, 3
  %i.cc = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 1), i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !16
  %i.ce = sext i8 %i.cd to i32
  %i.cf = mul nsw i32 %i.ca, %i.ce
  %i.cg = add nsw i32 %i.cf, %i.by
  %indvars.iv.next43.i.i.1.2 = or disjoint i64 %indvars.iv42.i.i.1, 3 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.1.2
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !11
  %i.cj = shl nuw nsw i64 %indvars.iv.next43.i.i.1.2, 3
  %i.ck = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 1), i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !16
  %i.cm = sext i8 %i.cl to i32
  %i.cn = mul nsw i32 %i.ci, %i.cm
  %i.co = add nsw i32 %i.cn, %i.cg                ; 3 uses
  %indvars.iv.next43.i.i.1.3 = add nuw nsw i64 %indvars.iv42.i.i.1, 4 ; 2 uses
  %niter50.next.3 = add i64 %niter50, 4           ; 2 uses
  %niter50.ncmp.3 = icmp eq i64 %niter50.next.3, %unroll_iter49
  br i1 %niter50.ncmp.3, label %._crit_edge.us.i.i.1.unr-lcssa, label %bb.b, !llvm.loop !0

._crit_edge.us.i.i.1.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod46.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod46.not, label %._crit_edge.us.i.i.1, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.i.1.unr-lcssa, %._crit_edge.us.i.i
  %indvars.iv42.i.i.1.epil.init = phi i64 [ 0, %._crit_edge.us.i.i ], [ %indvars.iv.next43.i.i.1.3, %._crit_edge.us.i.i.1.unr-lcssa ]
  %.02233.us.i.i.1.epil.init = phi i32 [ 0, %._crit_edge.us.i.i ], [ %i.co, %._crit_edge.us.i.i.1.unr-lcssa ]
  %lcmp.mod48 = icmp ne i64 %xtraiter44, 0
  tail call void @llvm.assume(i1 %lcmp.mod48)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv42.i.i.1.epil = phi i64 [ %indvars.iv42.i.i.1.epil.init, %.epil.preheader ], [ %indvars.iv.next43.i.i.1.epil, %bb.c ] ; 3 uses
  %.02233.us.i.i.1.epil = phi i32 [ %.02233.us.i.i.1.epil.init, %.epil.preheader ], [ %i.cw, %bb.c ]
  %epil.iter45 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter45.next, %bb.c ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.1.epil
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !11
  %i.cr = shl nuw nsw i64 %indvars.iv42.i.i.1.epil, 3
  %i.cs = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 1), i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !16
  %i.cu = sext i8 %i.ct to i32
  %i.cv = mul nsw i32 %i.cq, %i.cu
  %i.cw = add nsw i32 %i.cv, %.02233.us.i.i.1.epil ; 2 uses
  %indvars.iv.next43.i.i.1.epil = add nuw nsw i64 %indvars.iv42.i.i.1.epil, 1
  %epil.iter45.next = add i64 %epil.iter45, 1     ; 2 uses
  %epil.iter45.cmp.not = icmp eq i64 %epil.iter45.next, %xtraiter44
  br i1 %epil.iter45.cmp.not, label %._crit_edge.us.i.i.1, label %bb.c, !llvm.loop !68

._crit_edge.us.i.i.1:                             ; preds = %bb.c, %._crit_edge.us.i.i.1.unr-lcssa
  %.lcssa25.a = phi i32 [ %i.co, %._crit_edge.us.i.i.1.unr-lcssa ], [ %i.cw, %bb.c ]
  %i.cx = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 2 uses
  store i32 %.lcssa25.a, ptr %i.cx, align 4, !tbaa !11
  %xtraiter52 = and i64 %2, 3                     ; 3 uses
  %i.cy = icmp ult i64 %i.m, 3
  br i1 %i.cy, label %.epil.preheader51, label %._crit_edge.us.i.i.1.new

._crit_edge.us.i.i.1.new:                         ; preds = %._crit_edge.us.i.i.1
  %unroll_iter57 = and i64 %2, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %._crit_edge.us.i.i.1.new
  %indvars.iv42.i.i.2 = phi i64 [ 0, %._crit_edge.us.i.i.1.new ], [ %indvars.iv.next43.i.i.2.3, %bb.d ] ; 6 uses
  %.02233.us.i.i.2 = phi i32 [ 0, %._crit_edge.us.i.i.1.new ], [ %i.ee, %bb.d ]
  %niter58 = phi i64 [ 0, %._crit_edge.us.i.i.1.new ], [ %niter58.next.3, %bb.d ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.2
  %i.da = load i32, ptr %i.cz, align 16, !tbaa !11
  %i.db = shl nuw nsw i64 %indvars.iv42.i.i.2, 3
  %i.dc = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 2), i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 2, !tbaa !16
  %i.de = sext i8 %i.dd to i32
  %i.df = mul nsw i32 %i.da, %i.de
  %i.dg = add nsw i32 %i.df, %.02233.us.i.i.2
  %indvars.iv.next43.i.i.2 = or disjoint i64 %indvars.iv42.i.i.2, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.2
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !11
  %i.dj = shl nuw nsw i64 %indvars.iv.next43.i.i.2, 3
  %i.dk = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 2), i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 2, !tbaa !16
  %i.dm = sext i8 %i.dl to i32
  %i.dn = mul nsw i32 %i.di, %i.dm
  %i.do = add nsw i32 %i.dn, %i.dg
  %indvars.iv.next43.i.i.2.1 = or disjoint i64 %indvars.iv42.i.i.2, 2 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.2.1
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !11
  %i.dr = shl nuw nsw i64 %indvars.iv.next43.i.i.2.1, 3
  %i.ds = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 2), i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 2, !tbaa !16
  %i.du = sext i8 %i.dt to i32
  %i.dv = mul nsw i32 %i.dq, %i.du
  %i.dw = add nsw i32 %i.dv, %i.do
  %indvars.iv.next43.i.i.2.2 = or disjoint i64 %indvars.iv42.i.i.2, 3 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.2.2
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !11
  %i.dz = shl nuw nsw i64 %indvars.iv.next43.i.i.2.2, 3
  %i.ea = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 2), i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 2, !tbaa !16
  %i.ec = sext i8 %i.eb to i32
  %i.ed = mul nsw i32 %i.dy, %i.ec
  %i.ee = add nsw i32 %i.ed, %i.dw                ; 3 uses
  %indvars.iv.next43.i.i.2.3 = add nuw nsw i64 %indvars.iv42.i.i.2, 4 ; 2 uses
  %niter58.next.3 = add i64 %niter58, 4           ; 2 uses
  %niter58.ncmp.3 = icmp eq i64 %niter58.next.3, %unroll_iter57
  br i1 %niter58.ncmp.3, label %._crit_edge.us.i.i.2.unr-lcssa, label %bb.d, !llvm.loop !0

._crit_edge.us.i.i.2.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod54.not = icmp eq i64 %xtraiter52, 0
  br i1 %lcmp.mod54.not, label %._crit_edge.us.i.i.2, label %.epil.preheader51

.epil.preheader51:                                ; preds = %._crit_edge.us.i.i.2.unr-lcssa, %._crit_edge.us.i.i.1
  %indvars.iv42.i.i.2.epil.init = phi i64 [ 0, %._crit_edge.us.i.i.1 ], [ %indvars.iv.next43.i.i.2.3, %._crit_edge.us.i.i.2.unr-lcssa ]
  %.02233.us.i.i.2.epil.init = phi i32 [ 0, %._crit_edge.us.i.i.1 ], [ %i.ee, %._crit_edge.us.i.i.2.unr-lcssa ]
  %lcmp.mod56 = icmp ne i64 %xtraiter52, 0
  tail call void @llvm.assume(i1 %lcmp.mod56)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader51
  %indvars.iv42.i.i.2.epil = phi i64 [ %indvars.iv42.i.i.2.epil.init, %.epil.preheader51 ], [ %indvars.iv.next43.i.i.2.epil, %bb.e ] ; 3 uses
  %.02233.us.i.i.2.epil = phi i32 [ %.02233.us.i.i.2.epil.init, %.epil.preheader51 ], [ %i.em, %bb.e ]
  %epil.iter53 = phi i64 [ 0, %.epil.preheader51 ], [ %epil.iter53.next, %bb.e ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.2.epil
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !11
  %i.eh = shl nuw nsw i64 %indvars.iv42.i.i.2.epil, 3
  %i.ei = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 2), i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 2, !tbaa !16
  %i.ek = sext i8 %i.ej to i32
  %i.el = mul nsw i32 %i.eg, %i.ek
  %i.em = add nsw i32 %i.el, %.02233.us.i.i.2.epil ; 2 uses
  %indvars.iv.next43.i.i.2.epil = add nuw nsw i64 %indvars.iv42.i.i.2.epil, 1
  %epil.iter53.next = add i64 %epil.iter53, 1     ; 2 uses
  %epil.iter53.cmp.not = icmp eq i64 %epil.iter53.next, %xtraiter52
  br i1 %epil.iter53.cmp.not, label %._crit_edge.us.i.i.2, label %bb.e, !llvm.loop !69

._crit_edge.us.i.i.2:                             ; preds = %bb.e, %._crit_edge.us.i.i.2.unr-lcssa
  %.lcssa24.a = phi i32 [ %i.ee, %._crit_edge.us.i.i.2.unr-lcssa ], [ %i.em, %bb.e ]
  %i.en = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %1 ; 2 uses
  store i32 %.lcssa24.a, ptr %i.en, align 4, !tbaa !11
  %xtraiter60 = and i64 %2, 3                     ; 3 uses
  %i.eo = icmp ult i64 %i.m, 3
  br i1 %i.eo, label %.epil.preheader59, label %._crit_edge.us.i.i.2.new

._crit_edge.us.i.i.2.new:                         ; preds = %._crit_edge.us.i.i.2
  %unroll_iter65 = and i64 %2, -4
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %._crit_edge.us.i.i.2.new
  %indvars.iv42.i.i.3 = phi i64 [ 0, %._crit_edge.us.i.i.2.new ], [ %indvars.iv.next43.i.i.3.3, %bb.f ] ; 6 uses
  %.02233.us.i.i.3 = phi i32 [ 0, %._crit_edge.us.i.i.2.new ], [ %i.fu, %bb.f ]
  %niter66 = phi i64 [ 0, %._crit_edge.us.i.i.2.new ], [ %niter66.next.3, %bb.f ]
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.3
  %i.eq = load i32, ptr %i.ep, align 16, !tbaa !11
  %i.er = shl nuw nsw i64 %indvars.iv42.i.i.3, 3
  %i.es = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 3), i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !16
  %i.eu = sext i8 %i.et to i32
  %i.ev = mul nsw i32 %i.eq, %i.eu
  %i.ew = add nsw i32 %i.ev, %.02233.us.i.i.3
  %indvars.iv.next43.i.i.3 = or disjoint i64 %indvars.iv42.i.i.3, 1 ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.3
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !11
  %i.ez = shl nuw nsw i64 %indvars.iv.next43.i.i.3, 3
  %i.fa = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 3), i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !16
  %i.fc = sext i8 %i.fb to i32
  %i.fd = mul nsw i32 %i.ey, %i.fc
  %i.fe = add nsw i32 %i.fd, %i.ew
  %indvars.iv.next43.i.i.3.1 = or disjoint i64 %indvars.iv42.i.i.3, 2 ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.3.1
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !11
  %i.fh = shl nuw nsw i64 %indvars.iv.next43.i.i.3.1, 3
  %i.fi = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 3), i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !16
  %i.fk = sext i8 %i.fj to i32
  %i.fl = mul nsw i32 %i.fg, %i.fk
  %i.fm = add nsw i32 %i.fl, %i.fe
  %indvars.iv.next43.i.i.3.2 = or disjoint i64 %indvars.iv42.i.i.3, 3 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.3.2
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !11
  %i.fp = shl nuw nsw i64 %indvars.iv.next43.i.i.3.2, 3
  %i.fq = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 3), i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !16
  %i.fs = sext i8 %i.fr to i32
  %i.ft = mul nsw i32 %i.fo, %i.fs
  %i.fu = add nsw i32 %i.ft, %i.fm                ; 3 uses
  %indvars.iv.next43.i.i.3.3 = add nuw nsw i64 %indvars.iv42.i.i.3, 4 ; 2 uses
  %niter66.next.3 = add i64 %niter66, 4           ; 2 uses
  %niter66.ncmp.3 = icmp eq i64 %niter66.next.3, %unroll_iter65
  br i1 %niter66.ncmp.3, label %._crit_edge.us.i.i.3.unr-lcssa, label %bb.f, !llvm.loop !0

._crit_edge.us.i.i.3.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod62.not = icmp eq i64 %xtraiter60, 0
  br i1 %lcmp.mod62.not, label %._crit_edge.us.i.i.3, label %.epil.preheader59

.epil.preheader59:                                ; preds = %._crit_edge.us.i.i.3.unr-lcssa, %._crit_edge.us.i.i.2
  %indvars.iv42.i.i.3.epil.init = phi i64 [ 0, %._crit_edge.us.i.i.2 ], [ %indvars.iv.next43.i.i.3.3, %._crit_edge.us.i.i.3.unr-lcssa ]
  %.02233.us.i.i.3.epil.init = phi i32 [ 0, %._crit_edge.us.i.i.2 ], [ %i.fu, %._crit_edge.us.i.i.3.unr-lcssa ]
  %lcmp.mod64 = icmp ne i64 %xtraiter60, 0
  tail call void @llvm.assume(i1 %lcmp.mod64)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader59
  %indvars.iv42.i.i.3.epil = phi i64 [ %indvars.iv42.i.i.3.epil.init, %.epil.preheader59 ], [ %indvars.iv.next43.i.i.3.epil, %bb.g ] ; 3 uses
  %.02233.us.i.i.3.epil = phi i32 [ %.02233.us.i.i.3.epil.init, %.epil.preheader59 ], [ %i.gc, %bb.g ]
  %epil.iter61 = phi i64 [ 0, %.epil.preheader59 ], [ %epil.iter61.next, %bb.g ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.3.epil
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !11
  %i.fx = shl nuw nsw i64 %indvars.iv42.i.i.3.epil, 3
  %i.fy = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 3), i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !16
  %i.ga = sext i8 %i.fz to i32
  %i.gb = mul nsw i32 %i.fw, %i.ga
  %i.gc = add nsw i32 %i.gb, %.02233.us.i.i.3.epil ; 2 uses
  %indvars.iv.next43.i.i.3.epil = add nuw nsw i64 %indvars.iv42.i.i.3.epil, 1
  %epil.iter61.next = add i64 %epil.iter61, 1     ; 2 uses
  %epil.iter61.cmp.not = icmp eq i64 %epil.iter61.next, %xtraiter60
  br i1 %epil.iter61.cmp.not, label %._crit_edge.us.i.i.3, label %bb.g, !llvm.loop !70

._crit_edge.us.i.i.3:                             ; preds = %bb.g, %._crit_edge.us.i.i.3.unr-lcssa
  %.lcssa23.a = phi i32 [ %i.fu, %._crit_edge.us.i.i.3.unr-lcssa ], [ %i.gc, %bb.g ]
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.en, i64 %1 ; 2 uses
  store i32 %.lcssa23.a, ptr %i.gd, align 4, !tbaa !11
  %xtraiter68 = and i64 %2, 3                     ; 3 uses
  %i.ge = icmp ult i64 %i.m, 3
  br i1 %i.ge, label %.epil.preheader67, label %._crit_edge.us.i.i.3.new

._crit_edge.us.i.i.3.new:                         ; preds = %._crit_edge.us.i.i.3
  %unroll_iter73 = and i64 %2, -4
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %._crit_edge.us.i.i.3.new
  %indvars.iv42.i.i.4 = phi i64 [ 0, %._crit_edge.us.i.i.3.new ], [ %indvars.iv.next43.i.i.4.3, %bb.h ] ; 6 uses
  %.02233.us.i.i.4 = phi i32 [ 0, %._crit_edge.us.i.i.3.new ], [ %i.hk, %bb.h ]
  %niter74 = phi i64 [ 0, %._crit_edge.us.i.i.3.new ], [ %niter74.next.3, %bb.h ]
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.4
  %i.gg = load i32, ptr %i.gf, align 16, !tbaa !11
  %i.gh = shl nuw nsw i64 %indvars.iv42.i.i.4, 3
  %i.gi = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 4), i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 4, !tbaa !16
  %i.gk = sext i8 %i.gj to i32
  %i.gl = mul nsw i32 %i.gg, %i.gk
  %i.gm = add nsw i32 %i.gl, %.02233.us.i.i.4
  %indvars.iv.next43.i.i.4 = or disjoint i64 %indvars.iv42.i.i.4, 1 ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.4
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !11
  %i.gp = shl nuw nsw i64 %indvars.iv.next43.i.i.4, 3
  %i.gq = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 4), i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 4, !tbaa !16
  %i.gs = sext i8 %i.gr to i32
  %i.gt = mul nsw i32 %i.go, %i.gs
  %i.gu = add nsw i32 %i.gt, %i.gm
  %indvars.iv.next43.i.i.4.1 = or disjoint i64 %indvars.iv42.i.i.4, 2 ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.4.1
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !11
  %i.gx = shl nuw nsw i64 %indvars.iv.next43.i.i.4.1, 3
  %i.gy = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 4), i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 4, !tbaa !16
  %i.ha = sext i8 %i.gz to i32
  %i.hb = mul nsw i32 %i.gw, %i.ha
  %i.hc = add nsw i32 %i.hb, %i.gu
  %indvars.iv.next43.i.i.4.2 = or disjoint i64 %indvars.iv42.i.i.4, 3 ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.4.2
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !11
  %i.hf = shl nuw nsw i64 %indvars.iv.next43.i.i.4.2, 3
  %i.hg = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 4), i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 4, !tbaa !16
  %i.hi = sext i8 %i.hh to i32
  %i.hj = mul nsw i32 %i.he, %i.hi
  %i.hk = add nsw i32 %i.hj, %i.hc                ; 3 uses
  %indvars.iv.next43.i.i.4.3 = add nuw nsw i64 %indvars.iv42.i.i.4, 4 ; 2 uses
  %niter74.next.3 = add i64 %niter74, 4           ; 2 uses
  %niter74.ncmp.3 = icmp eq i64 %niter74.next.3, %unroll_iter73
  br i1 %niter74.ncmp.3, label %._crit_edge.us.i.i.4.unr-lcssa, label %bb.h, !llvm.loop !0

._crit_edge.us.i.i.4.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod70.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod70.not, label %._crit_edge.us.i.i.4, label %.epil.preheader67

.epil.preheader67:                                ; preds = %._crit_edge.us.i.i.4.unr-lcssa, %._crit_edge.us.i.i.3
  %indvars.iv42.i.i.4.epil.init = phi i64 [ 0, %._crit_edge.us.i.i.3 ], [ %indvars.iv.next43.i.i.4.3, %._crit_edge.us.i.i.4.unr-lcssa ]
  %.02233.us.i.i.4.epil.init = phi i32 [ 0, %._crit_edge.us.i.i.3 ], [ %i.hk, %._crit_edge.us.i.i.4.unr-lcssa ]
  %lcmp.mod72 = icmp ne i64 %xtraiter68, 0
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader67
  %indvars.iv42.i.i.4.epil = phi i64 [ %indvars.iv42.i.i.4.epil.init, %.epil.preheader67 ], [ %indvars.iv.next43.i.i.4.epil, %bb.i ] ; 3 uses
  %.02233.us.i.i.4.epil = phi i32 [ %.02233.us.i.i.4.epil.init, %.epil.preheader67 ], [ %i.hs, %bb.i ]
  %epil.iter69 = phi i64 [ 0, %.epil.preheader67 ], [ %epil.iter69.next, %bb.i ]
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.4.epil
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !11
  %i.hn = shl nuw nsw i64 %indvars.iv42.i.i.4.epil, 3
  %i.ho = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 4), i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 4, !tbaa !16
  %i.hq = sext i8 %i.hp to i32
  %i.hr = mul nsw i32 %i.hm, %i.hq
  %i.hs = add nsw i32 %i.hr, %.02233.us.i.i.4.epil ; 2 uses
  %indvars.iv.next43.i.i.4.epil = add nuw nsw i64 %indvars.iv42.i.i.4.epil, 1
  %epil.iter69.next = add i64 %epil.iter69, 1     ; 2 uses
  %epil.iter69.cmp.not = icmp eq i64 %epil.iter69.next, %xtraiter68
  br i1 %epil.iter69.cmp.not, label %._crit_edge.us.i.i.4, label %bb.i, !llvm.loop !71

._crit_edge.us.i.i.4:                             ; preds = %bb.i, %._crit_edge.us.i.i.4.unr-lcssa
  %.lcssa22.a = phi i32 [ %i.hk, %._crit_edge.us.i.i.4.unr-lcssa ], [ %i.hs, %bb.i ]
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %1 ; 2 uses
  store i32 %.lcssa22.a, ptr %i.ht, align 4, !tbaa !11
  %xtraiter76 = and i64 %2, 3                     ; 3 uses
  %i.hu = icmp ult i64 %i.m, 3
  br i1 %i.hu, label %.epil.preheader75, label %._crit_edge.us.i.i.4.new

._crit_edge.us.i.i.4.new:                         ; preds = %._crit_edge.us.i.i.4
  %unroll_iter81 = and i64 %2, -4
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %._crit_edge.us.i.i.4.new
  %indvars.iv42.i.i.5 = phi i64 [ 0, %._crit_edge.us.i.i.4.new ], [ %indvars.iv.next43.i.i.5.3, %bb.j ] ; 6 uses
  %.02233.us.i.i.5 = phi i32 [ 0, %._crit_edge.us.i.i.4.new ], [ %i.ja, %bb.j ]
  %niter82 = phi i64 [ 0, %._crit_edge.us.i.i.4.new ], [ %niter82.next.3, %bb.j ]
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.5
  %i.hw = load i32, ptr %i.hv, align 16, !tbaa !11
  %i.hx = shl nuw nsw i64 %indvars.iv42.i.i.5, 3
  %i.hy = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 5), i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !16
  %i.ia = sext i8 %i.hz to i32
  %i.ib = mul nsw i32 %i.hw, %i.ia
  %i.ic = add nsw i32 %i.ib, %.02233.us.i.i.5
  %indvars.iv.next43.i.i.5 = or disjoint i64 %indvars.iv42.i.i.5, 1 ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.5
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !11
  %i.if = shl nuw nsw i64 %indvars.iv.next43.i.i.5, 3
  %i.ig = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 5), i64 %i.if
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !16
  %i.ii = sext i8 %i.ih to i32
  %i.ij = mul nsw i32 %i.ie, %i.ii
  %i.ik = add nsw i32 %i.ij, %i.ic
  %indvars.iv.next43.i.i.5.1 = or disjoint i64 %indvars.iv42.i.i.5, 2 ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.5.1
end_hunk_4
begin_hunk_5_@ff_vvc_inv_dst7_8:bb.a
  br i1 %epil.iter77.cmp.not, label %._crit_edge.us.i.i.5, label %bb.k, !llvm.loop !72

._crit_edge.us.i.i.5:                             ; preds = %bb.k, %._crit_edge.us.i.i.5.unr-lcssa
  %.lcssa21.a = phi i32 [ %i.ja, %._crit_edge.us.i.i.5.unr-lcssa ], [ %i.ji, %bb.k ]
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %1 ; 2 uses
  store i32 %.lcssa21.a, ptr %i.jj, align 4, !tbaa !11
  %xtraiter84 = and i64 %2, 3                     ; 3 uses
  %i.jk = icmp ult i64 %i.m, 3
  br i1 %i.jk, label %.epil.preheader83, label %._crit_edge.us.i.i.5.new

._crit_edge.us.i.i.5.new:                         ; preds = %._crit_edge.us.i.i.5
  %unroll_iter89 = and i64 %2, -4
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %._crit_edge.us.i.i.5.new
  %indvars.iv42.i.i.6 = phi i64 [ 0, %._crit_edge.us.i.i.5.new ], [ %indvars.iv.next43.i.i.6.3, %bb.l ] ; 6 uses
  %.02233.us.i.i.6 = phi i32 [ 0, %._crit_edge.us.i.i.5.new ], [ %i.kq, %bb.l ]
  %niter90 = phi i64 [ 0, %._crit_edge.us.i.i.5.new ], [ %niter90.next.3, %bb.l ]
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.6
  %i.jm = load i32, ptr %i.jl, align 16, !tbaa !11
  %i.jn = shl nuw nsw i64 %indvars.iv42.i.i.6, 3
  %i.jo = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 6), i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 2, !tbaa !16
  %i.jq = sext i8 %i.jp to i32
  %i.jr = mul nsw i32 %i.jm, %i.jq
  %i.js = add nsw i32 %i.jr, %.02233.us.i.i.6
  %indvars.iv.next43.i.i.6 = or disjoint i64 %indvars.iv42.i.i.6, 1 ; 2 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.6
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !11
  %i.jv = shl nuw nsw i64 %indvars.iv.next43.i.i.6, 3
  %i.jw = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 6), i64 %i.jv
  %i.jx = load i8, ptr %i.jw, align 2, !tbaa !16
  %i.jy = sext i8 %i.jx to i32
  %i.jz = mul nsw i32 %i.ju, %i.jy
  %i.ka = add nsw i32 %i.jz, %i.js
  %indvars.iv.next43.i.i.6.1 = or disjoint i64 %indvars.iv42.i.i.6, 2 ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.6.1
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !11
  %i.kd = shl nuw nsw i64 %indvars.iv.next43.i.i.6.1, 3
  %i.ke = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 6), i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 2, !tbaa !16
  %i.kg = sext i8 %i.kf to i32
  %i.kh = mul nsw i32 %i.kc, %i.kg
  %i.ki = add nsw i32 %i.kh, %i.ka
  %indvars.iv.next43.i.i.6.2 = or disjoint i64 %indvars.iv42.i.i.6, 3 ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.6.2
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !11
  %i.kl = shl nuw nsw i64 %indvars.iv.next43.i.i.6.2, 3
  %i.km = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 6), i64 %i.kl
  %i.kn = load i8, ptr %i.km, align 2, !tbaa !16
  %i.ko = sext i8 %i.kn to i32
  %i.kp = mul nsw i32 %i.kk, %i.ko
  %i.kq = add nsw i32 %i.kp, %i.ki                ; 3 uses
  %indvars.iv.next43.i.i.6.3 = add nuw nsw i64 %indvars.iv42.i.i.6, 4 ; 2 uses
  %niter90.next.3 = add i64 %niter90, 4           ; 2 uses
  %niter90.ncmp.3 = icmp eq i64 %niter90.next.3, %unroll_iter89
  br i1 %niter90.ncmp.3, label %._crit_edge.us.i.i.6.unr-lcssa, label %bb.l, !llvm.loop !0

._crit_edge.us.i.i.6.unr-lcssa:                   ; preds = %bb.l
  %lcmp.mod86.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod86.not, label %._crit_edge.us.i.i.6, label %.epil.preheader83

.epil.preheader83:                                ; preds = %._crit_edge.us.i.i.6.unr-lcssa, %._crit_edge.us.i.i.5
  %indvars.iv42.i.i.6.epil.init = phi i64 [ 0, %._crit_edge.us.i.i.5 ], [ %indvars.iv.next43.i.i.6.3, %._crit_edge.us.i.i.6.unr-lcssa ]
  %.02233.us.i.i.6.epil.init = phi i32 [ 0, %._crit_edge.us.i.i.5 ], [ %i.kq, %._crit_edge.us.i.i.6.unr-lcssa ]
  %lcmp.mod88 = icmp ne i64 %xtraiter84, 0
  tail call void @llvm.assume(i1 %lcmp.mod88)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader83
  %indvars.iv42.i.i.6.epil = phi i64 [ %indvars.iv42.i.i.6.epil.init, %.epil.preheader83 ], [ %indvars.iv.next43.i.i.6.epil, %bb.m ] ; 3 uses
  %.02233.us.i.i.6.epil = phi i32 [ %.02233.us.i.i.6.epil.init, %.epil.preheader83 ], [ %i.ky, %bb.m ]
  %epil.iter85 = phi i64 [ 0, %.epil.preheader83 ], [ %epil.iter85.next, %bb.m ]
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.6.epil
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !11
  %i.kt = shl nuw nsw i64 %indvars.iv42.i.i.6.epil, 3
  %i.ku = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 6), i64 %i.kt
  %i.kv = load i8, ptr %i.ku, align 2, !tbaa !16
  %i.kw = sext i8 %i.kv to i32
  %i.kx = mul nsw i32 %i.ks, %i.kw
  %i.ky = add nsw i32 %i.kx, %.02233.us.i.i.6.epil ; 2 uses
  %indvars.iv.next43.i.i.6.epil = add nuw nsw i64 %indvars.iv42.i.i.6.epil, 1
  %epil.iter85.next = add i64 %epil.iter85, 1     ; 2 uses
  %epil.iter85.cmp.not = icmp eq i64 %epil.iter85.next, %xtraiter84
  br i1 %epil.iter85.cmp.not, label %._crit_edge.us.i.i.6, label %bb.m, !llvm.loop !73

._crit_edge.us.i.i.6:                             ; preds = %bb.m, %._crit_edge.us.i.i.6.unr-lcssa
  %.lcssa20 = phi i32 [ %i.kq, %._crit_edge.us.i.i.6.unr-lcssa ], [ %i.ky, %bb.m ]
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.jj, i64 %1
  store i32 %.lcssa20, ptr %i.kz, align 4, !tbaa !11
  %xtraiter92 = and i64 %2, 3                     ; 3 uses
  %i.la = icmp ult i64 %i.m, 3
  br i1 %i.la, label %.epil.preheader91, label %._crit_edge.us.i.i.6.new

._crit_edge.us.i.i.6.new:                         ; preds = %._crit_edge.us.i.i.6
  %unroll_iter97 = and i64 %2, -4
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %._crit_edge.us.i.i.6.new
  %indvars.iv42.i.i.7 = phi i64 [ 0, %._crit_edge.us.i.i.6.new ], [ %indvars.iv.next43.i.i.7.3, %bb.n ] ; 6 uses
  %.02233.us.i.i.7 = phi i32 [ 0, %._crit_edge.us.i.i.6.new ], [ %i.mg, %bb.n ]
  %niter98 = phi i64 [ 0, %._crit_edge.us.i.i.6.new ], [ %niter98.next.3, %bb.n ]
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.7
  %i.lc = load i32, ptr %i.lb, align 16, !tbaa !11
  %i.ld = shl nuw nsw i64 %indvars.iv42.i.i.7, 3
  %i.le = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 7), i64 %i.ld
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !16
  %i.lg = sext i8 %i.lf to i32
  %i.lh = mul nsw i32 %i.lc, %i.lg
  %i.li = add nsw i32 %i.lh, %.02233.us.i.i.7
  %indvars.iv.next43.i.i.7 = or disjoint i64 %indvars.iv42.i.i.7, 1 ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.7
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !11
  %i.ll = shl nuw nsw i64 %indvars.iv.next43.i.i.7, 3
  %i.lm = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 7), i64 %i.ll
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !16
  %i.lo = sext i8 %i.ln to i32
  %i.lp = mul nsw i32 %i.lk, %i.lo
  %i.lq = add nsw i32 %i.lp, %i.li
  %indvars.iv.next43.i.i.7.1 = or disjoint i64 %indvars.iv42.i.i.7, 2 ; 2 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.7.1
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !11
  %i.lt = shl nuw nsw i64 %indvars.iv.next43.i.i.7.1, 3
  %i.lu = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 7), i64 %i.lt
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !16
  %i.lw = sext i8 %i.lv to i32
  %i.lx = mul nsw i32 %i.ls, %i.lw
  %i.ly = add nsw i32 %i.lx, %i.lq
  %indvars.iv.next43.i.i.7.2 = or disjoint i64 %indvars.iv42.i.i.7, 3 ; 2 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.7.2
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !11
  %i.mb = shl nuw nsw i64 %indvars.iv.next43.i.i.7.2, 3
  %i.mc = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 7), i64 %i.mb
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !16
  %i.me = sext i8 %i.md to i32
  %i.mf = mul nsw i32 %i.ma, %i.me
  %i.mg = add nsw i32 %i.mf, %i.ly                ; 3 uses
  %indvars.iv.next43.i.i.7.3 = add nuw nsw i64 %indvars.iv42.i.i.7, 4 ; 2 uses
  %niter98.next.3 = add i64 %niter98, 4           ; 2 uses
  %niter98.ncmp.3 = icmp eq i64 %niter98.next.3, %unroll_iter97
  br i1 %niter98.ncmp.3, label %inv_dst7.exit.loopexit.unr-lcssa, label %bb.n, !llvm.loop !0

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.mh = mul nsw i64 %indvars.iv.i.i, %1
  %i.mi = getelementptr inbounds [4 x i8], ptr %0, i64 %i.mh
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !11
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i
  store i32 %i.mj, ptr %i.mk, align 4, !tbaa !11
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ml = mul nsw i64 %indvars.iv.next.i.i, %1
  %i.mm = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ml
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !11
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i
  store i32 %i.mn, ptr %i.mo, align 4, !tbaa !11
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.mp = mul nsw i64 %indvars.iv.next.i.i.1, %1
  %i.mq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.mp
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !11
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.1
  store i32 %i.mr, ptr %i.ms, align 4, !tbaa !11
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.mt = mul nsw i64 %indvars.iv.next.i.i.2, %1
  %i.mu = getelementptr inbounds [4 x i8], ptr %0, i64 %i.mt
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !11
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.2
  store i32 %i.mv, ptr %i.mw, align 4, !tbaa !11
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %2
  br i1 %exitcond.not.i.i.3, label %.preheader.us.i.i.preheader.preheader, label %.lr.ph.i.i, !llvm.loop !74

inv_dst7.exit.loopexit.unr-lcssa:                 ; preds = %bb.n
  %lcmp.mod94.not = icmp eq i64 %xtraiter92, 0
  br i1 %lcmp.mod94.not, label %inv_dst7.exit, label %.epil.preheader91

.epil.preheader91:                                ; preds = %inv_dst7.exit.loopexit.unr-lcssa, %._crit_edge.us.i.i.6
  %indvars.iv42.i.i.7.epil.init = phi i64 [ 0, %._crit_edge.us.i.i.6 ], [ %indvars.iv.next43.i.i.7.3, %inv_dst7.exit.loopexit.unr-lcssa ]
  %.02233.us.i.i.7.epil.init = phi i32 [ 0, %._crit_edge.us.i.i.6 ], [ %i.mg, %inv_dst7.exit.loopexit.unr-lcssa ]
  %lcmp.mod96 = icmp ne i64 %xtraiter92, 0
  tail call void @llvm.assume(i1 %lcmp.mod96)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader91
  %indvars.iv42.i.i.7.epil = phi i64 [ %indvars.iv42.i.i.7.epil.init, %.epil.preheader91 ], [ %indvars.iv.next43.i.i.7.epil, %bb.o ] ; 3 uses
  %.02233.us.i.i.7.epil = phi i32 [ %.02233.us.i.i.7.epil.init, %.epil.preheader91 ], [ %i.ne, %bb.o ]
  %epil.iter93 = phi i64 [ 0, %.epil.preheader91 ], [ %epil.iter93.next, %bb.o ]
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.7.epil
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !11
  %i.mz = shl nuw nsw i64 %indvars.iv42.i.i.7.epil, 3
  %i.na = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_8x8, i64 7), i64 %i.mz
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !16
  %i.nc = sext i8 %i.nb to i32
  %i.nd = mul nsw i32 %i.my, %i.nc
  %i.ne = add nsw i32 %i.nd, %.02233.us.i.i.7.epil ; 2 uses
  %indvars.iv.next43.i.i.7.epil = add nuw nsw i64 %indvars.iv42.i.i.7.epil, 1
  %epil.iter93.next = add i64 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i64 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %inv_dst7.exit, label %bb.o, !llvm.loop !75

inv_dst7.exit:                                    ; preds = %inv_dst7.exit.loopexit.unr-lcssa, %bb.o, %.preheader.i.i.preheader
  %.lcssa.sink = phi i32 [ 0, %.preheader.i.i.preheader ], [ %i.mg, %inv_dst7.exit.loopexit.unr-lcssa ], [ %i.ne, %bb.o ]
  %i.nf = getelementptr inbounds [4 x i8], ptr %0, i64 %1
  %.idx = shl i64 %1, 3
  %3 = getelementptr inbounds i8, ptr %i.nf, i64 %.idx
  %4 = shl i64 %1, 4
  %5 = getelementptr inbounds i8, ptr %3, i64 %4
  store i32 %.lcssa.sink, ptr %5, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ff_vvc_inv_dst7_16(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 88 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %.preheader.i.i.preheader, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ugt i64 %2, 7
  %ident.check.not = icmp eq i64 %1, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.ph, label %.lr.ph.i.i.preheader51

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <4 x i32>, ptr %i.b, align 4, !tbaa !11
  %wide.load35 = load <4 x i32>, ptr %i.c, align 4, !tbaa !11
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <4 x i32> %wide.load, ptr %i.d, align 16, !tbaa !11
  store <4 x i32> %wide.load35, ptr %i.e, align 16, !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.preheader.us.i.i.preheader.preheader, label %.lr.ph.i.i.preheader51

.lr.ph.i.i.preheader51:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader51, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader51 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader51 ]
  %i.g = mul nsw i64 %indvars.iv.i.i.prol, %1
  %i.h = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i.prol
  store i32 %i.i, ptr %i.j, align 4, !tbaa !11
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !77

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader51
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader51 ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.k = sub i64 %indvars.iv.i.i.ph, %2
  %i.l = icmp ugt i64 %i.k, -4
  br i1 %i.l, label %.preheader.us.i.i.preheader.preheader, label %.lr.ph.i.i

.preheader.us.i.i.preheader.preheader:            ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block
  %i.m = add i64 %2, -1                           ; 16 uses
  %xtraiter52 = and i64 %2, 3                     ; 3 uses
  %i.n = icmp ult i64 %i.m, 3
  br i1 %i.n, label %.preheader.us.i.i.preheader.epil.preheader, label %.preheader.us.i.i.preheader.preheader.new

.preheader.us.i.i.preheader.preheader.new:        ; preds = %.preheader.us.i.i.preheader.preheader
  %unroll_iter = and i64 %2, -4
  br label %.preheader.us.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.a
  store i32 0, ptr %0, align 4, !tbaa !11
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !11
  %i.p = getelementptr inbounds [4 x i8], ptr %i.o, i64 %1 ; 2 uses
  store i32 0, ptr %i.p, align 4, !tbaa !11
  %i.q = getelementptr inbounds [4 x i8], ptr %i.p, i64 %1 ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !11
  %i.r = getelementptr inbounds [4 x i8], ptr %i.q, i64 %1 ; 2 uses
  store i32 0, ptr %i.r, align 4, !tbaa !11
  %i.s = getelementptr inbounds [4 x i8], ptr %i.r, i64 %1 ; 2 uses
  store i32 0, ptr %i.s, align 4, !tbaa !11
  %i.t = getelementptr inbounds [4 x i8], ptr %i.s, i64 %1 ; 2 uses
  store i32 0, ptr %i.t, align 4, !tbaa !11
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %1 ; 2 uses
  store i32 0, ptr %i.u, align 4, !tbaa !11
  %i.v = getelementptr inbounds [4 x i8], ptr %i.u, i64 %1 ; 2 uses
  store i32 0, ptr %i.v, align 4, !tbaa !11
  %i.w = getelementptr inbounds [4 x i8], ptr %i.v, i64 %1 ; 2 uses
  store i32 0, ptr %i.w, align 4, !tbaa !11
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %1 ; 2 uses
  store i32 0, ptr %i.x, align 4, !tbaa !11
  %i.y = getelementptr inbounds [4 x i8], ptr %i.x, i64 %1 ; 2 uses
  store i32 0, ptr %i.y, align 4, !tbaa !11
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %1 ; 2 uses
  store i32 0, ptr %i.z, align 4, !tbaa !11
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %1 ; 2 uses
  store i32 0, ptr %i.aa, align 4, !tbaa !11
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %1
  store i32 0, ptr %i.ab, align 4, !tbaa !11
  br label %inv_dst7.exit

.preheader.us.i.i.preheader:                      ; preds = %.preheader.us.i.i.preheader, %.preheader.us.i.i.preheader.preheader.new
  %indvars.iv42.i.i = phi i64 [ 0, %.preheader.us.i.i.preheader.preheader.new ], [ %indvars.iv.next43.i.i.366, %.preheader.us.i.i.preheader ] ; 6 uses
  %.02233.us.i.i = phi i32 [ 0, %.preheader.us.i.i.preheader.preheader.new ], [ %i.bh, %.preheader.us.i.i.preheader ]
  %niter = phi i64 [ 0, %.preheader.us.i.i.preheader.preheader.new ], [ %niter.next.3, %.preheader.us.i.i.preheader ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i
  %i.ad = load i32, ptr %i.ac, align 16, !tbaa !11
  %i.ae = shl nuw nsw i64 %indvars.iv42.i.i, 4
  %i.af = getelementptr inbounds nuw i8, ptr @ff_vvc_dst7_16x16, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 16, !tbaa !16
  %i.ah = sext i8 %i.ag to i32
  %i.ai = mul nsw i32 %i.ad, %i.ah
  %i.aj = add nsw i32 %i.ai, %.02233.us.i.i
  %indvars.iv.next43.i.i = or disjoint i64 %indvars.iv42.i.i, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !11
  %i.am = shl nuw nsw i64 %indvars.iv.next43.i.i, 4
  %i.an = getelementptr inbounds nuw i8, ptr @ff_vvc_dst7_16x16, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 16, !tbaa !16
  %i.ap = sext i8 %i.ao to i32
  %i.aq = mul nsw i32 %i.al, %i.ap
  %i.ar = add nsw i32 %i.aq, %i.aj
  %indvars.iv.next43.i.i.158 = or disjoint i64 %indvars.iv42.i.i, 2 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.158
  %i.at = load i32, ptr %i.as, align 8, !tbaa !11
  %i.au = shl nuw nsw i64 %indvars.iv.next43.i.i.158, 4
  %i.av = getelementptr inbounds nuw i8, ptr @ff_vvc_dst7_16x16, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 16, !tbaa !16
  %i.ax = sext i8 %i.aw to i32
  %i.ay = mul nsw i32 %i.at, %i.ax
  %i.az = add nsw i32 %i.ay, %i.ar
  %indvars.iv.next43.i.i.262 = or disjoint i64 %indvars.iv42.i.i, 3 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.262
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !11
  %i.bc = shl nuw nsw i64 %indvars.iv.next43.i.i.262, 4
  %i.bd = getelementptr inbounds nuw i8, ptr @ff_vvc_dst7_16x16, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 16, !tbaa !16
  %i.bf = sext i8 %i.be to i32
  %i.bg = mul nsw i32 %i.bb, %i.bf
  %i.bh = add nsw i32 %i.bg, %i.az                ; 3 uses
  %indvars.iv.next43.i.i.366 = add nuw nsw i64 %indvars.iv42.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.i.unr-lcssa, label %.preheader.us.i.i.preheader, !llvm.loop !0

._crit_edge.us.i.i.unr-lcssa:                     ; preds = %.preheader.us.i.i.preheader
  %lcmp.mod53.not = icmp eq i64 %xtraiter52, 0
  br i1 %lcmp.mod53.not, label %._crit_edge.us.i.i, label %.preheader.us.i.i.preheader.epil.preheader

.preheader.us.i.i.preheader.epil.preheader:       ; preds = %._crit_edge.us.i.i.unr-lcssa, %.preheader.us.i.i.preheader.preheader
  %indvars.iv42.i.i.epil.init = phi i64 [ 0, %.preheader.us.i.i.preheader.preheader ], [ %indvars.iv.next43.i.i.366, %._crit_edge.us.i.i.unr-lcssa ]
  %.02233.us.i.i.epil.init = phi i32 [ 0, %.preheader.us.i.i.preheader.preheader ], [ %i.bh, %._crit_edge.us.i.i.unr-lcssa ]
  %lcmp.mod55 = icmp ne i64 %xtraiter52, 0
  tail call void @llvm.assume(i1 %lcmp.mod55)
  br label %.preheader.us.i.i.preheader.epil

.preheader.us.i.i.preheader.epil:                 ; preds = %.preheader.us.i.i.preheader.epil, %.preheader.us.i.i.preheader.epil.preheader
  %indvars.iv42.i.i.epil = phi i64 [ %indvars.iv.next43.i.i.epil, %.preheader.us.i.i.preheader.epil ], [ %indvars.iv42.i.i.epil.init, %.preheader.us.i.i.preheader.epil.preheader ] ; 3 uses
  %.02233.us.i.i.epil = phi i32 [ %i.bp, %.preheader.us.i.i.preheader.epil ], [ %.02233.us.i.i.epil.init, %.preheader.us.i.i.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.us.i.i.preheader.epil ], [ 0, %.preheader.us.i.i.preheader.epil.preheader ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.epil
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !11
  %i.bk = shl nuw nsw i64 %indvars.iv42.i.i.epil, 4
  %i.bl = getelementptr inbounds nuw i8, ptr @ff_vvc_dst7_16x16, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 16, !tbaa !16
  %i.bn = sext i8 %i.bm to i32
  %i.bo = mul nsw i32 %i.bj, %i.bn
  %i.bp = add nsw i32 %i.bo, %.02233.us.i.i.epil  ; 2 uses
  %indvars.iv.next43.i.i.epil = add nuw nsw i64 %indvars.iv42.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter52
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i.i, label %.preheader.us.i.i.preheader.epil, !llvm.loop !78

._crit_edge.us.i.i:                               ; preds = %.preheader.us.i.i.preheader.epil, %._crit_edge.us.i.i.unr-lcssa
  %.lcssa50.a = phi i32 [ %i.bh, %._crit_edge.us.i.i.unr-lcssa ], [ %i.bp, %.preheader.us.i.i.preheader.epil ]
  store i32 %.lcssa50.a, ptr %0, align 4, !tbaa !11
  %xtraiter68 = and i64 %2, 3                     ; 3 uses
  %i.bq = icmp ult i64 %i.m, 3
  br i1 %i.bq, label %.epil.preheader, label %._crit_edge.us.i.i.new

._crit_edge.us.i.i.new:                           ; preds = %._crit_edge.us.i.i
  %unroll_iter73 = and i64 %2, -4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge.us.i.i.new
  %indvars.iv42.i.i.1 = phi i64 [ 0, %._crit_edge.us.i.i.new ], [ %indvars.iv.next43.i.i.1.3, %bb.b ] ; 6 uses
  %.02233.us.i.i.1 = phi i32 [ 0, %._crit_edge.us.i.i.new ], [ %i.cw, %bb.b ]
  %niter74 = phi i64 [ 0, %._crit_edge.us.i.i.new ], [ %niter74.next.3, %bb.b ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.1
  %i.bs = load i32, ptr %i.br, align 16, !tbaa !11
  %i.bt = shl nuw nsw i64 %indvars.iv42.i.i.1, 4
  %i.bu = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 1), i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !16
  %i.bw = sext i8 %i.bv to i32
  %i.bx = mul nsw i32 %i.bs, %i.bw
  %i.by = add nsw i32 %i.bx, %.02233.us.i.i.1
  %indvars.iv.next43.i.i.1 = or disjoint i64 %indvars.iv42.i.i.1, 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.1
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !11
  %i.cb = shl nuw nsw i64 %indvars.iv.next43.i.i.1, 4
  %i.cc = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 1), i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !16
  %i.ce = sext i8 %i.cd to i32
  %i.cf = mul nsw i32 %i.ca, %i.ce
  %i.cg = add nsw i32 %i.cf, %i.by
  %indvars.iv.next43.i.i.1.1 = or disjoint i64 %indvars.iv42.i.i.1, 2 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.1.1
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !11
  %i.cj = shl nuw nsw i64 %indvars.iv.next43.i.i.1.1, 4
  %i.ck = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 1), i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !16
  %i.cm = sext i8 %i.cl to i32
  %i.cn = mul nsw i32 %i.ci, %i.cm
  %i.co = add nsw i32 %i.cn, %i.cg
  %indvars.iv.next43.i.i.1.2 = or disjoint i64 %indvars.iv42.i.i.1, 3 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.1.2
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !11
  %i.cr = shl nuw nsw i64 %indvars.iv.next43.i.i.1.2, 4
  %i.cs = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 1), i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !16
  %i.cu = sext i8 %i.ct to i32
  %i.cv = mul nsw i32 %i.cq, %i.cu
  %i.cw = add nsw i32 %i.cv, %i.co                ; 3 uses
  %indvars.iv.next43.i.i.1.3 = add nuw nsw i64 %indvars.iv42.i.i.1, 4 ; 2 uses
  %niter74.next.3 = add i64 %niter74, 4           ; 2 uses
  %niter74.ncmp.3 = icmp eq i64 %niter74.next.3, %unroll_iter73
  br i1 %niter74.ncmp.3, label %._crit_edge.us.i.i.1.unr-lcssa, label %bb.b, !llvm.loop !0

._crit_edge.us.i.i.1.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod70.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod70.not, label %._crit_edge.us.i.i.1, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.i.1.unr-lcssa, %._crit_edge.us.i.i
  %indvars.iv42.i.i.1.epil.init = phi i64 [ 0, %._crit_edge.us.i.i ], [ %indvars.iv.next43.i.i.1.3, %._crit_edge.us.i.i.1.unr-lcssa ]
  %.02233.us.i.i.1.epil.init = phi i32 [ 0, %._crit_edge.us.i.i ], [ %i.cw, %._crit_edge.us.i.i.1.unr-lcssa ]
  %lcmp.mod72 = icmp ne i64 %xtraiter68, 0
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv42.i.i.1.epil = phi i64 [ %indvars.iv42.i.i.1.epil.init, %.epil.preheader ], [ %indvars.iv.next43.i.i.1.epil, %bb.c ] ; 3 uses
  %.02233.us.i.i.1.epil = phi i32 [ %.02233.us.i.i.1.epil.init, %.epil.preheader ], [ %i.de, %bb.c ]
  %epil.iter69 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter69.next, %bb.c ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.1.epil
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !11
  %i.cz = shl nuw nsw i64 %indvars.iv42.i.i.1.epil, 4
  %i.da = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 1), i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !16
  %i.dc = sext i8 %i.db to i32
  %i.dd = mul nsw i32 %i.cy, %i.dc
  %i.de = add nsw i32 %i.dd, %.02233.us.i.i.1.epil ; 2 uses
  %indvars.iv.next43.i.i.1.epil = add nuw nsw i64 %indvars.iv42.i.i.1.epil, 1
  %epil.iter69.next = add i64 %epil.iter69, 1     ; 2 uses
  %epil.iter69.cmp.not = icmp eq i64 %epil.iter69.next, %xtraiter68
  br i1 %epil.iter69.cmp.not, label %._crit_edge.us.i.i.1, label %bb.c, !llvm.loop !79

._crit_edge.us.i.i.1:                             ; preds = %bb.c, %._crit_edge.us.i.i.1.unr-lcssa
  %.lcssa49.a = phi i32 [ %i.cw, %._crit_edge.us.i.i.1.unr-lcssa ], [ %i.de, %bb.c ]
  %i.df = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 2 uses
  store i32 %.lcssa49.a, ptr %i.df, align 4, !tbaa !11
  %xtraiter76 = and i64 %2, 3                     ; 3 uses
  %i.dg = icmp ult i64 %i.m, 3
  br i1 %i.dg, label %.epil.preheader75, label %._crit_edge.us.i.i.1.new

._crit_edge.us.i.i.1.new:                         ; preds = %._crit_edge.us.i.i.1
  %unroll_iter81 = and i64 %2, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %._crit_edge.us.i.i.1.new
  %indvars.iv42.i.i.2 = phi i64 [ 0, %._crit_edge.us.i.i.1.new ], [ %indvars.iv.next43.i.i.2.3, %bb.d ] ; 6 uses
  %.02233.us.i.i.2 = phi i32 [ 0, %._crit_edge.us.i.i.1.new ], [ %i.em, %bb.d ]
  %niter82 = phi i64 [ 0, %._crit_edge.us.i.i.1.new ], [ %niter82.next.3, %bb.d ]
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.2
  %i.di = load i32, ptr %i.dh, align 16, !tbaa !11
  %i.dj = shl nuw nsw i64 %indvars.iv42.i.i.2, 4
  %i.dk = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 2), i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 2, !tbaa !16
  %i.dm = sext i8 %i.dl to i32
  %i.dn = mul nsw i32 %i.di, %i.dm
  %i.do = add nsw i32 %i.dn, %.02233.us.i.i.2
  %indvars.iv.next43.i.i.2 = or disjoint i64 %indvars.iv42.i.i.2, 1 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.2
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !11
  %i.dr = shl nuw nsw i64 %indvars.iv.next43.i.i.2, 4
  %i.ds = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 2), i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 2, !tbaa !16
  %i.du = sext i8 %i.dt to i32
  %i.dv = mul nsw i32 %i.dq, %i.du
  %i.dw = add nsw i32 %i.dv, %i.do
  %indvars.iv.next43.i.i.2.1 = or disjoint i64 %indvars.iv42.i.i.2, 2 ; 2 uses
end_hunk_5
begin_hunk_6_@ff_vvc_inv_dst7_16:bb.a
  br i1 %niter130.ncmp.3, label %._crit_edge.us.i.i.8.unr-lcssa, label %bb.p, !llvm.loop !0

._crit_edge.us.i.i.8.unr-lcssa:                   ; preds = %bb.p
  %lcmp.mod126.not = icmp eq i64 %xtraiter124, 0
  br i1 %lcmp.mod126.not, label %._crit_edge.us.i.i.8, label %.epil.preheader123

.epil.preheader123:                               ; preds = %._crit_edge.us.i.i.8.unr-lcssa, %._crit_edge.us.i.i.7
  %indvars.iv42.i.i.8.epil.init = phi i64 [ 0, %._crit_edge.us.i.i.7 ], [ %indvars.iv.next43.i.i.8.3, %._crit_edge.us.i.i.8.unr-lcssa ]
  %.02233.us.i.i.8.epil.init = phi i32 [ 0, %._crit_edge.us.i.i.7 ], [ %i.oe, %._crit_edge.us.i.i.8.unr-lcssa ]
  %lcmp.mod128 = icmp ne i64 %xtraiter124, 0
  tail call void @llvm.assume(i1 %lcmp.mod128)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader123
  %indvars.iv42.i.i.8.epil = phi i64 [ %indvars.iv42.i.i.8.epil.init, %.epil.preheader123 ], [ %indvars.iv.next43.i.i.8.epil, %bb.q ] ; 3 uses
  %.02233.us.i.i.8.epil = phi i32 [ %.02233.us.i.i.8.epil.init, %.epil.preheader123 ], [ %i.om, %bb.q ]
  %epil.iter125 = phi i64 [ 0, %.epil.preheader123 ], [ %epil.iter125.next, %bb.q ]
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.8.epil
  %i.og = load i32, ptr %i.of, align 4, !tbaa !11
  %i.oh = shl nuw nsw i64 %indvars.iv42.i.i.8.epil, 4
  %i.oi = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 8), i64 %i.oh
  %i.oj = load i8, ptr %i.oi, align 8, !tbaa !16
  %i.ok = sext i8 %i.oj to i32
  %i.ol = mul nsw i32 %i.og, %i.ok
  %i.om = add nsw i32 %i.ol, %.02233.us.i.i.8.epil ; 2 uses
  %indvars.iv.next43.i.i.8.epil = add nuw nsw i64 %indvars.iv42.i.i.8.epil, 1
  %epil.iter125.next = add i64 %epil.iter125, 1   ; 2 uses
  %epil.iter125.cmp.not = icmp eq i64 %epil.iter125.next, %xtraiter124
  br i1 %epil.iter125.cmp.not, label %._crit_edge.us.i.i.8, label %bb.q, !llvm.loop !86

._crit_edge.us.i.i.8:                             ; preds = %bb.q, %._crit_edge.us.i.i.8.unr-lcssa
  %.lcssa42.a = phi i32 [ %i.oe, %._crit_edge.us.i.i.8.unr-lcssa ], [ %i.om, %bb.q ]
  %i.on = getelementptr inbounds [4 x i8], ptr %i.mx, i64 %1 ; 2 uses
  store i32 %.lcssa42.a, ptr %i.on, align 4, !tbaa !11
  %xtraiter132 = and i64 %2, 3                    ; 3 uses
  %i.oo = icmp ult i64 %i.m, 3
  br i1 %i.oo, label %.epil.preheader131, label %._crit_edge.us.i.i.8.new

._crit_edge.us.i.i.8.new:                         ; preds = %._crit_edge.us.i.i.8
  %unroll_iter137 = and i64 %2, -4
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %._crit_edge.us.i.i.8.new
  %indvars.iv42.i.i.9 = phi i64 [ 0, %._crit_edge.us.i.i.8.new ], [ %indvars.iv.next43.i.i.9.3, %bb.r ] ; 6 uses
  %.02233.us.i.i.9 = phi i32 [ 0, %._crit_edge.us.i.i.8.new ], [ %i.pu, %bb.r ]
  %niter138 = phi i64 [ 0, %._crit_edge.us.i.i.8.new ], [ %niter138.next.3, %bb.r ]
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.9
  %i.oq = load i32, ptr %i.op, align 16, !tbaa !11
  %i.or = shl nuw nsw i64 %indvars.iv42.i.i.9, 4
  %i.os = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 9), i64 %i.or
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !16
  %i.ou = sext i8 %i.ot to i32
  %i.ov = mul nsw i32 %i.oq, %i.ou
  %i.ow = add nsw i32 %i.ov, %.02233.us.i.i.9
  %indvars.iv.next43.i.i.9 = or disjoint i64 %indvars.iv42.i.i.9, 1 ; 2 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.9
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !11
  %i.oz = shl nuw nsw i64 %indvars.iv.next43.i.i.9, 4
  %i.pa = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 9), i64 %i.oz
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !16
  %i.pc = sext i8 %i.pb to i32
  %i.pd = mul nsw i32 %i.oy, %i.pc
  %i.pe = add nsw i32 %i.pd, %i.ow
  %indvars.iv.next43.i.i.9.1 = or disjoint i64 %indvars.iv42.i.i.9, 2 ; 2 uses
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.9.1
  %i.pg = load i32, ptr %i.pf, align 8, !tbaa !11
  %i.ph = shl nuw nsw i64 %indvars.iv.next43.i.i.9.1, 4
  %i.pi = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 9), i64 %i.ph
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !16
  %i.pk = sext i8 %i.pj to i32
  %i.pl = mul nsw i32 %i.pg, %i.pk
  %i.pm = add nsw i32 %i.pl, %i.pe
  %indvars.iv.next43.i.i.9.2 = or disjoint i64 %indvars.iv42.i.i.9, 3 ; 2 uses
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.9.2
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !11
  %i.pp = shl nuw nsw i64 %indvars.iv.next43.i.i.9.2, 4
  %i.pq = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 9), i64 %i.pp
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !16
  %i.ps = sext i8 %i.pr to i32
  %i.pt = mul nsw i32 %i.po, %i.ps
  %i.pu = add nsw i32 %i.pt, %i.pm                ; 3 uses
  %indvars.iv.next43.i.i.9.3 = add nuw nsw i64 %indvars.iv42.i.i.9, 4 ; 2 uses
  %niter138.next.3 = add i64 %niter138, 4         ; 2 uses
  %niter138.ncmp.3 = icmp eq i64 %niter138.next.3, %unroll_iter137
  br i1 %niter138.ncmp.3, label %._crit_edge.us.i.i.9.unr-lcssa, label %bb.r, !llvm.loop !0

._crit_edge.us.i.i.9.unr-lcssa:                   ; preds = %bb.r
  %lcmp.mod134.not = icmp eq i64 %xtraiter132, 0
  br i1 %lcmp.mod134.not, label %._crit_edge.us.i.i.9, label %.epil.preheader131

.epil.preheader131:                               ; preds = %._crit_edge.us.i.i.9.unr-lcssa, %._crit_edge.us.i.i.8
  %indvars.iv42.i.i.9.epil.init = phi i64 [ 0, %._crit_edge.us.i.i.8 ], [ %indvars.iv.next43.i.i.9.3, %._crit_edge.us.i.i.9.unr-lcssa ]
  %.02233.us.i.i.9.epil.init = phi i32 [ 0, %._crit_edge.us.i.i.8 ], [ %i.pu, %._crit_edge.us.i.i.9.unr-lcssa ]
  %lcmp.mod136 = icmp ne i64 %xtraiter132, 0
  tail call void @llvm.assume(i1 %lcmp.mod136)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader131
  %indvars.iv42.i.i.9.epil = phi i64 [ %indvars.iv42.i.i.9.epil.init, %.epil.preheader131 ], [ %indvars.iv.next43.i.i.9.epil, %bb.s ] ; 3 uses
  %.02233.us.i.i.9.epil = phi i32 [ %.02233.us.i.i.9.epil.init, %.epil.preheader131 ], [ %i.qc, %bb.s ]
  %epil.iter133 = phi i64 [ 0, %.epil.preheader131 ], [ %epil.iter133.next, %bb.s ]
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.9.epil
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !11
  %i.px = shl nuw nsw i64 %indvars.iv42.i.i.9.epil, 4
  %i.py = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 9), i64 %i.px
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !16
  %i.qa = sext i8 %i.pz to i32
  %i.qb = mul nsw i32 %i.pw, %i.qa
  %i.qc = add nsw i32 %i.qb, %.02233.us.i.i.9.epil ; 2 uses
  %indvars.iv.next43.i.i.9.epil = add nuw nsw i64 %indvars.iv42.i.i.9.epil, 1
  %epil.iter133.next = add i64 %epil.iter133, 1   ; 2 uses
  %epil.iter133.cmp.not = icmp eq i64 %epil.iter133.next, %xtraiter132
  br i1 %epil.iter133.cmp.not, label %._crit_edge.us.i.i.9, label %bb.s, !llvm.loop !87

._crit_edge.us.i.i.9:                             ; preds = %bb.s, %._crit_edge.us.i.i.9.unr-lcssa
  %.lcssa41.a = phi i32 [ %i.pu, %._crit_edge.us.i.i.9.unr-lcssa ], [ %i.qc, %bb.s ]
  %i.qd = getelementptr inbounds [4 x i8], ptr %i.on, i64 %1 ; 2 uses
  store i32 %.lcssa41.a, ptr %i.qd, align 4, !tbaa !11
  %xtraiter140 = and i64 %2, 3                    ; 3 uses
  %i.qe = icmp ult i64 %i.m, 3
  br i1 %i.qe, label %.epil.preheader139, label %._crit_edge.us.i.i.9.new

._crit_edge.us.i.i.9.new:                         ; preds = %._crit_edge.us.i.i.9
  %unroll_iter145 = and i64 %2, -4
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %._crit_edge.us.i.i.9.new
  %indvars.iv42.i.i.10 = phi i64 [ 0, %._crit_edge.us.i.i.9.new ], [ %indvars.iv.next43.i.i.10.3, %bb.t ] ; 6 uses
  %.02233.us.i.i.10 = phi i32 [ 0, %._crit_edge.us.i.i.9.new ], [ %i.rk, %bb.t ]
  %niter146 = phi i64 [ 0, %._crit_edge.us.i.i.9.new ], [ %niter146.next.3, %bb.t ]
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.10
  %i.qg = load i32, ptr %i.qf, align 16, !tbaa !11
  %i.qh = shl nuw nsw i64 %indvars.iv42.i.i.10, 4
  %i.qi = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 10), i64 %i.qh
  %i.qj = load i8, ptr %i.qi, align 2, !tbaa !16
  %i.qk = sext i8 %i.qj to i32
  %i.ql = mul nsw i32 %i.qg, %i.qk
  %i.qm = add nsw i32 %i.ql, %.02233.us.i.i.10
  %indvars.iv.next43.i.i.10 = or disjoint i64 %indvars.iv42.i.i.10, 1 ; 2 uses
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.10
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !11
  %i.qp = shl nuw nsw i64 %indvars.iv.next43.i.i.10, 4
  %i.qq = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 10), i64 %i.qp
  %i.qr = load i8, ptr %i.qq, align 2, !tbaa !16
  %i.qs = sext i8 %i.qr to i32
  %i.qt = mul nsw i32 %i.qo, %i.qs
  %i.qu = add nsw i32 %i.qt, %i.qm
  %indvars.iv.next43.i.i.10.1 = or disjoint i64 %indvars.iv42.i.i.10, 2 ; 2 uses
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.10.1
  %i.qw = load i32, ptr %i.qv, align 8, !tbaa !11
  %i.qx = shl nuw nsw i64 %indvars.iv.next43.i.i.10.1, 4
  %i.qy = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 10), i64 %i.qx
  %i.qz = load i8, ptr %i.qy, align 2, !tbaa !16
  %i.ra = sext i8 %i.qz to i32
  %i.rb = mul nsw i32 %i.qw, %i.ra
  %i.rc = add nsw i32 %i.rb, %i.qu
  %indvars.iv.next43.i.i.10.2 = or disjoint i64 %indvars.iv42.i.i.10, 3 ; 2 uses
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.10.2
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !11
  %i.rf = shl nuw nsw i64 %indvars.iv.next43.i.i.10.2, 4
  %i.rg = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 10), i64 %i.rf
  %i.rh = load i8, ptr %i.rg, align 2, !tbaa !16
  %i.ri = sext i8 %i.rh to i32
  %i.rj = mul nsw i32 %i.re, %i.ri
  %i.rk = add nsw i32 %i.rj, %i.rc                ; 3 uses
  %indvars.iv.next43.i.i.10.3 = add nuw nsw i64 %indvars.iv42.i.i.10, 4 ; 2 uses
  %niter146.next.3 = add i64 %niter146, 4         ; 2 uses
  %niter146.ncmp.3 = icmp eq i64 %niter146.next.3, %unroll_iter145
  br i1 %niter146.ncmp.3, label %._crit_edge.us.i.i.10.unr-lcssa, label %bb.t, !llvm.loop !0

._crit_edge.us.i.i.10.unr-lcssa:                  ; preds = %bb.t
  %lcmp.mod142.not = icmp eq i64 %xtraiter140, 0
  br i1 %lcmp.mod142.not, label %._crit_edge.us.i.i.10, label %.epil.preheader139

.epil.preheader139:                               ; preds = %._crit_edge.us.i.i.10.unr-lcssa, %._crit_edge.us.i.i.9
  %indvars.iv42.i.i.10.epil.init = phi i64 [ 0, %._crit_edge.us.i.i.9 ], [ %indvars.iv.next43.i.i.10.3, %._crit_edge.us.i.i.10.unr-lcssa ]
  %.02233.us.i.i.10.epil.init = phi i32 [ 0, %._crit_edge.us.i.i.9 ], [ %i.rk, %._crit_edge.us.i.i.10.unr-lcssa ]
  %lcmp.mod144 = icmp ne i64 %xtraiter140, 0
  tail call void @llvm.assume(i1 %lcmp.mod144)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader139
  %indvars.iv42.i.i.10.epil = phi i64 [ %indvars.iv42.i.i.10.epil.init, %.epil.preheader139 ], [ %indvars.iv.next43.i.i.10.epil, %bb.u ] ; 3 uses
  %.02233.us.i.i.10.epil = phi i32 [ %.02233.us.i.i.10.epil.init, %.epil.preheader139 ], [ %i.rs, %bb.u ]
  %epil.iter141 = phi i64 [ 0, %.epil.preheader139 ], [ %epil.iter141.next, %bb.u ]
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.10.epil
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !11
  %i.rn = shl nuw nsw i64 %indvars.iv42.i.i.10.epil, 4
  %i.ro = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 10), i64 %i.rn
  %i.rp = load i8, ptr %i.ro, align 2, !tbaa !16
  %i.rq = sext i8 %i.rp to i32
  %i.rr = mul nsw i32 %i.rm, %i.rq
  %i.rs = add nsw i32 %i.rr, %.02233.us.i.i.10.epil ; 2 uses
  %indvars.iv.next43.i.i.10.epil = add nuw nsw i64 %indvars.iv42.i.i.10.epil, 1
  %epil.iter141.next = add i64 %epil.iter141, 1   ; 2 uses
  %epil.iter141.cmp.not = icmp eq i64 %epil.iter141.next, %xtraiter140
  br i1 %epil.iter141.cmp.not, label %._crit_edge.us.i.i.10, label %bb.u, !llvm.loop !88

._crit_edge.us.i.i.10:                            ; preds = %bb.u, %._crit_edge.us.i.i.10.unr-lcssa
  %.lcssa40.a = phi i32 [ %i.rk, %._crit_edge.us.i.i.10.unr-lcssa ], [ %i.rs, %bb.u ]
  %i.rt = getelementptr inbounds [4 x i8], ptr %i.qd, i64 %1 ; 2 uses
  store i32 %.lcssa40.a, ptr %i.rt, align 4, !tbaa !11
  %xtraiter148 = and i64 %2, 3                    ; 3 uses
  %i.ru = icmp ult i64 %i.m, 3
  br i1 %i.ru, label %.epil.preheader147, label %._crit_edge.us.i.i.10.new

._crit_edge.us.i.i.10.new:                        ; preds = %._crit_edge.us.i.i.10
  %unroll_iter153 = and i64 %2, -4
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %._crit_edge.us.i.i.10.new
  %indvars.iv42.i.i.11 = phi i64 [ 0, %._crit_edge.us.i.i.10.new ], [ %indvars.iv.next43.i.i.11.3, %bb.v ] ; 6 uses
  %.02233.us.i.i.11 = phi i32 [ 0, %._crit_edge.us.i.i.10.new ], [ %i.ta, %bb.v ]
  %niter154 = phi i64 [ 0, %._crit_edge.us.i.i.10.new ], [ %niter154.next.3, %bb.v ]
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.11
  %i.rw = load i32, ptr %i.rv, align 16, !tbaa !11
  %i.rx = shl nuw nsw i64 %indvars.iv42.i.i.11, 4
  %i.ry = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 11), i64 %i.rx
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !16
  %i.sa = sext i8 %i.rz to i32
  %i.sb = mul nsw i32 %i.rw, %i.sa
  %i.sc = add nsw i32 %i.sb, %.02233.us.i.i.11
  %indvars.iv.next43.i.i.11 = or disjoint i64 %indvars.iv42.i.i.11, 1 ; 2 uses
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.11
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !11
  %i.sf = shl nuw nsw i64 %indvars.iv.next43.i.i.11, 4
  %i.sg = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 11), i64 %i.sf
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !16
  %i.si = sext i8 %i.sh to i32
  %i.sj = mul nsw i32 %i.se, %i.si
  %i.sk = add nsw i32 %i.sj, %i.sc
  %indvars.iv.next43.i.i.11.1 = or disjoint i64 %indvars.iv42.i.i.11, 2 ; 2 uses
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.11.1
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !11
  %i.sn = shl nuw nsw i64 %indvars.iv.next43.i.i.11.1, 4
  %i.so = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 11), i64 %i.sn
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !16
  %i.sq = sext i8 %i.sp to i32
  %i.sr = mul nsw i32 %i.sm, %i.sq
  %i.ss = add nsw i32 %i.sr, %i.sk
  %indvars.iv.next43.i.i.11.2 = or disjoint i64 %indvars.iv42.i.i.11, 3 ; 2 uses
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.11.2
  %i.su = load i32, ptr %i.st, align 4, !tbaa !11
  %i.sv = shl nuw nsw i64 %indvars.iv.next43.i.i.11.2, 4
  %i.sw = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 11), i64 %i.sv
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !16
  %i.sy = sext i8 %i.sx to i32
  %i.sz = mul nsw i32 %i.su, %i.sy
  %i.ta = add nsw i32 %i.sz, %i.ss                ; 3 uses
  %indvars.iv.next43.i.i.11.3 = add nuw nsw i64 %indvars.iv42.i.i.11, 4 ; 2 uses
  %niter154.next.3 = add i64 %niter154, 4         ; 2 uses
  %niter154.ncmp.3 = icmp eq i64 %niter154.next.3, %unroll_iter153
  br i1 %niter154.ncmp.3, label %._crit_edge.us.i.i.11.unr-lcssa, label %bb.v, !llvm.loop !0

._crit_edge.us.i.i.11.unr-lcssa:                  ; preds = %bb.v
  %lcmp.mod150.not = icmp eq i64 %xtraiter148, 0
  br i1 %lcmp.mod150.not, label %._crit_edge.us.i.i.11, label %.epil.preheader147

.epil.preheader147:                               ; preds = %._crit_edge.us.i.i.11.unr-lcssa, %._crit_edge.us.i.i.10
  %indvars.iv42.i.i.11.epil.init = phi i64 [ 0, %._crit_edge.us.i.i.10 ], [ %indvars.iv.next43.i.i.11.3, %._crit_edge.us.i.i.11.unr-lcssa ]
  %.02233.us.i.i.11.epil.init = phi i32 [ 0, %._crit_edge.us.i.i.10 ], [ %i.ta, %._crit_edge.us.i.i.11.unr-lcssa ]
  %lcmp.mod152 = icmp ne i64 %xtraiter148, 0
  tail call void @llvm.assume(i1 %lcmp.mod152)
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.epil.preheader147
  %indvars.iv42.i.i.11.epil = phi i64 [ %indvars.iv42.i.i.11.epil.init, %.epil.preheader147 ], [ %indvars.iv.next43.i.i.11.epil, %bb.w ] ; 3 uses
  %.02233.us.i.i.11.epil = phi i32 [ %.02233.us.i.i.11.epil.init, %.epil.preheader147 ], [ %i.ti, %bb.w ]
  %epil.iter149 = phi i64 [ 0, %.epil.preheader147 ], [ %epil.iter149.next, %bb.w ]
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.11.epil
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !11
  %i.td = shl nuw nsw i64 %indvars.iv42.i.i.11.epil, 4
  %i.te = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 11), i64 %i.td
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !16
  %i.tg = sext i8 %i.tf to i32
  %i.th = mul nsw i32 %i.tc, %i.tg
  %i.ti = add nsw i32 %i.th, %.02233.us.i.i.11.epil ; 2 uses
  %indvars.iv.next43.i.i.11.epil = add nuw nsw i64 %indvars.iv42.i.i.11.epil, 1
  %epil.iter149.next = add i64 %epil.iter149, 1   ; 2 uses
  %epil.iter149.cmp.not = icmp eq i64 %epil.iter149.next, %xtraiter148
  br i1 %epil.iter149.cmp.not, label %._crit_edge.us.i.i.11, label %bb.w, !llvm.loop !89

._crit_edge.us.i.i.11:                            ; preds = %bb.w, %._crit_edge.us.i.i.11.unr-lcssa
  %.lcssa39.a = phi i32 [ %i.ta, %._crit_edge.us.i.i.11.unr-lcssa ], [ %i.ti, %bb.w ]
  %i.tj = getelementptr inbounds [4 x i8], ptr %i.rt, i64 %1 ; 2 uses
  store i32 %.lcssa39.a, ptr %i.tj, align 4, !tbaa !11
  %xtraiter156 = and i64 %2, 3                    ; 3 uses
  %i.tk = icmp ult i64 %i.m, 3
  br i1 %i.tk, label %.epil.preheader155, label %._crit_edge.us.i.i.11.new

._crit_edge.us.i.i.11.new:                        ; preds = %._crit_edge.us.i.i.11
  %unroll_iter161 = and i64 %2, -4
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %._crit_edge.us.i.i.11.new
  %indvars.iv42.i.i.12 = phi i64 [ 0, %._crit_edge.us.i.i.11.new ], [ %indvars.iv.next43.i.i.12.3, %bb.x ] ; 6 uses
  %.02233.us.i.i.12 = phi i32 [ 0, %._crit_edge.us.i.i.11.new ], [ %i.uq, %bb.x ]
  %niter162 = phi i64 [ 0, %._crit_edge.us.i.i.11.new ], [ %niter162.next.3, %bb.x ]
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.12
  %i.tm = load i32, ptr %i.tl, align 16, !tbaa !11
  %i.tn = shl nuw nsw i64 %indvars.iv42.i.i.12, 4
  %i.to = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 12), i64 %i.tn
  %i.tp = load i8, ptr %i.to, align 4, !tbaa !16
  %i.tq = sext i8 %i.tp to i32
  %i.tr = mul nsw i32 %i.tm, %i.tq
  %i.ts = add nsw i32 %i.tr, %.02233.us.i.i.12
  %indvars.iv.next43.i.i.12 = or disjoint i64 %indvars.iv42.i.i.12, 1 ; 2 uses
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.12
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !11
  %i.tv = shl nuw nsw i64 %indvars.iv.next43.i.i.12, 4
  %i.tw = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 12), i64 %i.tv
  %i.tx = load i8, ptr %i.tw, align 4, !tbaa !16
  %i.ty = sext i8 %i.tx to i32
  %i.tz = mul nsw i32 %i.tu, %i.ty
  %i.ua = add nsw i32 %i.tz, %i.ts
  %indvars.iv.next43.i.i.12.1 = or disjoint i64 %indvars.iv42.i.i.12, 2 ; 2 uses
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.12.1
  %i.uc = load i32, ptr %i.ub, align 8, !tbaa !11
  %i.ud = shl nuw nsw i64 %indvars.iv.next43.i.i.12.1, 4
  %i.ue = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 12), i64 %i.ud
  %i.uf = load i8, ptr %i.ue, align 4, !tbaa !16
  %i.ug = sext i8 %i.uf to i32
  %i.uh = mul nsw i32 %i.uc, %i.ug
  %i.ui = add nsw i32 %i.uh, %i.ua
  %indvars.iv.next43.i.i.12.2 = or disjoint i64 %indvars.iv42.i.i.12, 3 ; 2 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.12.2
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !11
  %i.ul = shl nuw nsw i64 %indvars.iv.next43.i.i.12.2, 4
  %i.um = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 12), i64 %i.ul
  %i.un = load i8, ptr %i.um, align 4, !tbaa !16
  %i.uo = sext i8 %i.un to i32
  %i.up = mul nsw i32 %i.uk, %i.uo
  %i.uq = add nsw i32 %i.up, %i.ui                ; 3 uses
  %indvars.iv.next43.i.i.12.3 = add nuw nsw i64 %indvars.iv42.i.i.12, 4 ; 2 uses
  %niter162.next.3 = add i64 %niter162, 4         ; 2 uses
  %niter162.ncmp.3 = icmp eq i64 %niter162.next.3, %unroll_iter161
  br i1 %niter162.ncmp.3, label %._crit_edge.us.i.i.12.unr-lcssa, label %bb.x, !llvm.loop !0

._crit_edge.us.i.i.12.unr-lcssa:                  ; preds = %bb.x
  %lcmp.mod158.not = icmp eq i64 %xtraiter156, 0
  br i1 %lcmp.mod158.not, label %._crit_edge.us.i.i.12, label %.epil.preheader155

.epil.preheader155:                               ; preds = %._crit_edge.us.i.i.12.unr-lcssa, %._crit_edge.us.i.i.11
  %indvars.iv42.i.i.12.epil.init = phi i64 [ 0, %._crit_edge.us.i.i.11 ], [ %indvars.iv.next43.i.i.12.3, %._crit_edge.us.i.i.12.unr-lcssa ]
  %.02233.us.i.i.12.epil.init = phi i32 [ 0, %._crit_edge.us.i.i.11 ], [ %i.uq, %._crit_edge.us.i.i.12.unr-lcssa ]
  %lcmp.mod160 = icmp ne i64 %xtraiter156, 0
  tail call void @llvm.assume(i1 %lcmp.mod160)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.epil.preheader155
  %indvars.iv42.i.i.12.epil = phi i64 [ %indvars.iv42.i.i.12.epil.init, %.epil.preheader155 ], [ %indvars.iv.next43.i.i.12.epil, %bb.y ] ; 3 uses
  %.02233.us.i.i.12.epil = phi i32 [ %.02233.us.i.i.12.epil.init, %.epil.preheader155 ], [ %i.uy, %bb.y ]
  %epil.iter157 = phi i64 [ 0, %.epil.preheader155 ], [ %epil.iter157.next, %bb.y ]
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.12.epil
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !11
  %i.ut = shl nuw nsw i64 %indvars.iv42.i.i.12.epil, 4
  %i.uu = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 12), i64 %i.ut
  %i.uv = load i8, ptr %i.uu, align 4, !tbaa !16
  %i.uw = sext i8 %i.uv to i32
  %i.ux = mul nsw i32 %i.us, %i.uw
  %i.uy = add nsw i32 %i.ux, %.02233.us.i.i.12.epil ; 2 uses
  %indvars.iv.next43.i.i.12.epil = add nuw nsw i64 %indvars.iv42.i.i.12.epil, 1
  %epil.iter157.next = add i64 %epil.iter157, 1   ; 2 uses
  %epil.iter157.cmp.not = icmp eq i64 %epil.iter157.next, %xtraiter156
  br i1 %epil.iter157.cmp.not, label %._crit_edge.us.i.i.12, label %bb.y, !llvm.loop !90

._crit_edge.us.i.i.12:                            ; preds = %bb.y, %._crit_edge.us.i.i.12.unr-lcssa
  %.lcssa38.a = phi i32 [ %i.uq, %._crit_edge.us.i.i.12.unr-lcssa ], [ %i.uy, %bb.y ]
  %i.uz = getelementptr inbounds [4 x i8], ptr %i.tj, i64 %1 ; 2 uses
  store i32 %.lcssa38.a, ptr %i.uz, align 4, !tbaa !11
  %xtraiter164 = and i64 %2, 3                    ; 3 uses
  %i.va = icmp ult i64 %i.m, 3
  br i1 %i.va, label %.epil.preheader163, label %._crit_edge.us.i.i.12.new

._crit_edge.us.i.i.12.new:                        ; preds = %._crit_edge.us.i.i.12
  %unroll_iter169 = and i64 %2, -4
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %._crit_edge.us.i.i.12.new
  %indvars.iv42.i.i.13 = phi i64 [ 0, %._crit_edge.us.i.i.12.new ], [ %indvars.iv.next43.i.i.13.3, %bb.z ] ; 6 uses
  %.02233.us.i.i.13 = phi i32 [ 0, %._crit_edge.us.i.i.12.new ], [ %i.wg, %bb.z ]
  %niter170 = phi i64 [ 0, %._crit_edge.us.i.i.12.new ], [ %niter170.next.3, %bb.z ]
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.13
  %i.vc = load i32, ptr %i.vb, align 16, !tbaa !11
  %i.vd = shl nuw nsw i64 %indvars.iv42.i.i.13, 4
  %i.ve = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 13), i64 %i.vd
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !16
  %i.vg = sext i8 %i.vf to i32
  %i.vh = mul nsw i32 %i.vc, %i.vg
  %i.vi = add nsw i32 %i.vh, %.02233.us.i.i.13
  %indvars.iv.next43.i.i.13 = or disjoint i64 %indvars.iv42.i.i.13, 1 ; 2 uses
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.13
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !11
  %i.vl = shl nuw nsw i64 %indvars.iv.next43.i.i.13, 4
  %i.vm = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 13), i64 %i.vl
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !16
  %i.vo = sext i8 %i.vn to i32
  %i.vp = mul nsw i32 %i.vk, %i.vo
  %i.vq = add nsw i32 %i.vp, %i.vi
  %indvars.iv.next43.i.i.13.1 = or disjoint i64 %indvars.iv42.i.i.13, 2 ; 2 uses
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.13.1
end_hunk_6
begin_hunk_7_@ff_vvc_inv_dst7_16:bb.a
  br i1 %epil.iter165.cmp.not, label %._crit_edge.us.i.i.13, label %bb.aa, !llvm.loop !91

._crit_edge.us.i.i.13:                            ; preds = %bb.aa, %._crit_edge.us.i.i.13.unr-lcssa
  %.lcssa37 = phi i32 [ %i.wg, %._crit_edge.us.i.i.13.unr-lcssa ], [ %i.wo, %bb.aa ]
  %i.wp = getelementptr inbounds [4 x i8], ptr %i.uz, i64 %1 ; 2 uses
  store i32 %.lcssa37, ptr %i.wp, align 4, !tbaa !11
  %xtraiter172 = and i64 %2, 3                    ; 3 uses
  %i.wq = icmp ult i64 %i.m, 3
  br i1 %i.wq, label %.epil.preheader171, label %._crit_edge.us.i.i.13.new

._crit_edge.us.i.i.13.new:                        ; preds = %._crit_edge.us.i.i.13
  %unroll_iter177 = and i64 %2, -4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %._crit_edge.us.i.i.13.new
  %indvars.iv42.i.i.14 = phi i64 [ 0, %._crit_edge.us.i.i.13.new ], [ %indvars.iv.next43.i.i.14.3, %bb.ab ] ; 6 uses
  %.02233.us.i.i.14 = phi i32 [ 0, %._crit_edge.us.i.i.13.new ], [ %i.xw, %bb.ab ]
  %niter178 = phi i64 [ 0, %._crit_edge.us.i.i.13.new ], [ %niter178.next.3, %bb.ab ]
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.14
  %i.ws = load i32, ptr %i.wr, align 16, !tbaa !11
  %i.wt = shl nuw nsw i64 %indvars.iv42.i.i.14, 4
  %i.wu = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 14), i64 %i.wt
  %i.wv = load i8, ptr %i.wu, align 2, !tbaa !16
  %i.ww = sext i8 %i.wv to i32
  %i.wx = mul nsw i32 %i.ws, %i.ww
  %i.wy = add nsw i32 %i.wx, %.02233.us.i.i.14
  %indvars.iv.next43.i.i.14 = or disjoint i64 %indvars.iv42.i.i.14, 1 ; 2 uses
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.14
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !11
  %i.xb = shl nuw nsw i64 %indvars.iv.next43.i.i.14, 4
  %i.xc = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 14), i64 %i.xb
  %i.xd = load i8, ptr %i.xc, align 2, !tbaa !16
  %i.xe = sext i8 %i.xd to i32
  %i.xf = mul nsw i32 %i.xa, %i.xe
  %i.xg = add nsw i32 %i.xf, %i.wy
  %indvars.iv.next43.i.i.14.1 = or disjoint i64 %indvars.iv42.i.i.14, 2 ; 2 uses
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.14.1
  %i.xi = load i32, ptr %i.xh, align 8, !tbaa !11
  %i.xj = shl nuw nsw i64 %indvars.iv.next43.i.i.14.1, 4
  %i.xk = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 14), i64 %i.xj
  %i.xl = load i8, ptr %i.xk, align 2, !tbaa !16
  %i.xm = sext i8 %i.xl to i32
  %i.xn = mul nsw i32 %i.xi, %i.xm
  %i.xo = add nsw i32 %i.xn, %i.xg
  %indvars.iv.next43.i.i.14.2 = or disjoint i64 %indvars.iv42.i.i.14, 3 ; 2 uses
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.14.2
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !11
  %i.xr = shl nuw nsw i64 %indvars.iv.next43.i.i.14.2, 4
  %i.xs = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 14), i64 %i.xr
  %i.xt = load i8, ptr %i.xs, align 2, !tbaa !16
  %i.xu = sext i8 %i.xt to i32
  %i.xv = mul nsw i32 %i.xq, %i.xu
  %i.xw = add nsw i32 %i.xv, %i.xo                ; 3 uses
  %indvars.iv.next43.i.i.14.3 = add nuw nsw i64 %indvars.iv42.i.i.14, 4 ; 2 uses
  %niter178.next.3 = add i64 %niter178, 4         ; 2 uses
  %niter178.ncmp.3 = icmp eq i64 %niter178.next.3, %unroll_iter177
  br i1 %niter178.ncmp.3, label %._crit_edge.us.i.i.14.unr-lcssa, label %bb.ab, !llvm.loop !0

._crit_edge.us.i.i.14.unr-lcssa:                  ; preds = %bb.ab
  %lcmp.mod174.not = icmp eq i64 %xtraiter172, 0
  br i1 %lcmp.mod174.not, label %._crit_edge.us.i.i.14, label %.epil.preheader171

.epil.preheader171:                               ; preds = %._crit_edge.us.i.i.14.unr-lcssa, %._crit_edge.us.i.i.13
  %indvars.iv42.i.i.14.epil.init = phi i64 [ 0, %._crit_edge.us.i.i.13 ], [ %indvars.iv.next43.i.i.14.3, %._crit_edge.us.i.i.14.unr-lcssa ]
  %.02233.us.i.i.14.epil.init = phi i32 [ 0, %._crit_edge.us.i.i.13 ], [ %i.xw, %._crit_edge.us.i.i.14.unr-lcssa ]
  %lcmp.mod176 = icmp ne i64 %xtraiter172, 0
  tail call void @llvm.assume(i1 %lcmp.mod176)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.epil.preheader171
  %indvars.iv42.i.i.14.epil = phi i64 [ %indvars.iv42.i.i.14.epil.init, %.epil.preheader171 ], [ %indvars.iv.next43.i.i.14.epil, %bb.ac ] ; 3 uses
  %.02233.us.i.i.14.epil = phi i32 [ %.02233.us.i.i.14.epil.init, %.epil.preheader171 ], [ %i.ye, %bb.ac ]
  %epil.iter173 = phi i64 [ 0, %.epil.preheader171 ], [ %epil.iter173.next, %bb.ac ]
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.14.epil
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !11
  %i.xz = shl nuw nsw i64 %indvars.iv42.i.i.14.epil, 4
  %i.ya = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 14), i64 %i.xz
  %i.yb = load i8, ptr %i.ya, align 2, !tbaa !16
  %i.yc = sext i8 %i.yb to i32
  %i.yd = mul nsw i32 %i.xy, %i.yc
  %i.ye = add nsw i32 %i.yd, %.02233.us.i.i.14.epil ; 2 uses
  %indvars.iv.next43.i.i.14.epil = add nuw nsw i64 %indvars.iv42.i.i.14.epil, 1
  %epil.iter173.next = add i64 %epil.iter173, 1   ; 2 uses
  %epil.iter173.cmp.not = icmp eq i64 %epil.iter173.next, %xtraiter172
  br i1 %epil.iter173.cmp.not, label %._crit_edge.us.i.i.14, label %bb.ac, !llvm.loop !92

._crit_edge.us.i.i.14:                            ; preds = %bb.ac, %._crit_edge.us.i.i.14.unr-lcssa
  %.lcssa36 = phi i32 [ %i.xw, %._crit_edge.us.i.i.14.unr-lcssa ], [ %i.ye, %bb.ac ]
  %i.yf = getelementptr inbounds [4 x i8], ptr %i.wp, i64 %1
  store i32 %.lcssa36, ptr %i.yf, align 4, !tbaa !11
  %xtraiter180 = and i64 %2, 3                    ; 3 uses
  %i.yg = icmp ult i64 %i.m, 3
  br i1 %i.yg, label %.epil.preheader179, label %._crit_edge.us.i.i.14.new

._crit_edge.us.i.i.14.new:                        ; preds = %._crit_edge.us.i.i.14
  %unroll_iter185 = and i64 %2, -4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %._crit_edge.us.i.i.14.new
  %indvars.iv42.i.i.15 = phi i64 [ 0, %._crit_edge.us.i.i.14.new ], [ %indvars.iv.next43.i.i.15.3, %bb.ad ] ; 6 uses
  %.02233.us.i.i.15 = phi i32 [ 0, %._crit_edge.us.i.i.14.new ], [ %i.zm, %bb.ad ]
  %niter186 = phi i64 [ 0, %._crit_edge.us.i.i.14.new ], [ %niter186.next.3, %bb.ad ]
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.15
  %i.yi = load i32, ptr %i.yh, align 16, !tbaa !11
  %i.yj = shl nuw nsw i64 %indvars.iv42.i.i.15, 4
  %i.yk = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 15), i64 %i.yj
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !16
  %i.ym = sext i8 %i.yl to i32
  %i.yn = mul nsw i32 %i.yi, %i.ym
  %i.yo = add nsw i32 %i.yn, %.02233.us.i.i.15
  %indvars.iv.next43.i.i.15 = or disjoint i64 %indvars.iv42.i.i.15, 1 ; 2 uses
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.15
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !11
  %i.yr = shl nuw nsw i64 %indvars.iv.next43.i.i.15, 4
  %i.ys = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 15), i64 %i.yr
  %i.yt = load i8, ptr %i.ys, align 1, !tbaa !16
  %i.yu = sext i8 %i.yt to i32
  %i.yv = mul nsw i32 %i.yq, %i.yu
  %i.yw = add nsw i32 %i.yv, %i.yo
  %indvars.iv.next43.i.i.15.1 = or disjoint i64 %indvars.iv42.i.i.15, 2 ; 2 uses
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.15.1
  %i.yy = load i32, ptr %i.yx, align 8, !tbaa !11
  %i.yz = shl nuw nsw i64 %indvars.iv.next43.i.i.15.1, 4
  %i.za = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 15), i64 %i.yz
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !16
  %i.zc = sext i8 %i.zb to i32
  %i.zd = mul nsw i32 %i.yy, %i.zc
  %i.ze = add nsw i32 %i.zd, %i.yw
  %indvars.iv.next43.i.i.15.2 = or disjoint i64 %indvars.iv42.i.i.15, 3 ; 2 uses
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.15.2
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !11
  %i.zh = shl nuw nsw i64 %indvars.iv.next43.i.i.15.2, 4
  %i.zi = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 15), i64 %i.zh
  %i.zj = load i8, ptr %i.zi, align 1, !tbaa !16
  %i.zk = sext i8 %i.zj to i32
  %i.zl = mul nsw i32 %i.zg, %i.zk
  %i.zm = add nsw i32 %i.zl, %i.ze                ; 3 uses
  %indvars.iv.next43.i.i.15.3 = add nuw nsw i64 %indvars.iv42.i.i.15, 4 ; 2 uses
  %niter186.next.3 = add i64 %niter186, 4         ; 2 uses
  %niter186.ncmp.3 = icmp eq i64 %niter186.next.3, %unroll_iter185
  br i1 %niter186.ncmp.3, label %inv_dst7.exit.loopexit.unr-lcssa, label %bb.ad, !llvm.loop !0

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.zn = mul nsw i64 %indvars.iv.i.i, %1
  %i.zo = getelementptr inbounds [4 x i8], ptr %0, i64 %i.zn
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !11
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i
  store i32 %i.zp, ptr %i.zq, align 4, !tbaa !11
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.zr = mul nsw i64 %indvars.iv.next.i.i, %1
  %i.zs = getelementptr inbounds [4 x i8], ptr %0, i64 %i.zr
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !11
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i
  store i32 %i.zt, ptr %i.zu, align 4, !tbaa !11
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.zv = mul nsw i64 %indvars.iv.next.i.i.1, %1
  %i.zw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.zv
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !11
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.1
  store i32 %i.zx, ptr %i.zy, align 4, !tbaa !11
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.zz = mul nsw i64 %indvars.iv.next.i.i.2, %1
  %i.aaa = getelementptr inbounds [4 x i8], ptr %0, i64 %i.zz
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !11
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.2
  store i32 %i.aab, ptr %i.aac, align 4, !tbaa !11
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %2
  br i1 %exitcond.not.i.i.3, label %.preheader.us.i.i.preheader.preheader, label %.lr.ph.i.i, !llvm.loop !93

inv_dst7.exit.loopexit.unr-lcssa:                 ; preds = %bb.ad
  %lcmp.mod182.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod182.not, label %inv_dst7.exit, label %.epil.preheader179

.epil.preheader179:                               ; preds = %inv_dst7.exit.loopexit.unr-lcssa, %._crit_edge.us.i.i.14
  %indvars.iv42.i.i.15.epil.init = phi i64 [ 0, %._crit_edge.us.i.i.14 ], [ %indvars.iv.next43.i.i.15.3, %inv_dst7.exit.loopexit.unr-lcssa ]
  %.02233.us.i.i.15.epil.init = phi i32 [ 0, %._crit_edge.us.i.i.14 ], [ %i.zm, %inv_dst7.exit.loopexit.unr-lcssa ]
  %lcmp.mod184 = icmp ne i64 %xtraiter180, 0
  tail call void @llvm.assume(i1 %lcmp.mod184)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.epil.preheader179
  %indvars.iv42.i.i.15.epil = phi i64 [ %indvars.iv42.i.i.15.epil.init, %.epil.preheader179 ], [ %indvars.iv.next43.i.i.15.epil, %bb.ae ] ; 3 uses
  %.02233.us.i.i.15.epil = phi i32 [ %.02233.us.i.i.15.epil.init, %.epil.preheader179 ], [ %i.aak, %bb.ae ]
  %epil.iter181 = phi i64 [ 0, %.epil.preheader179 ], [ %epil.iter181.next, %bb.ae ]
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i.15.epil
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !11
  %i.aaf = shl nuw nsw i64 %indvars.iv42.i.i.15.epil, 4
  %i.aag = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @ff_vvc_dst7_16x16, i64 15), i64 %i.aaf
  %i.aah = load i8, ptr %i.aag, align 1, !tbaa !16
  %i.aai = sext i8 %i.aah to i32
  %i.aaj = mul nsw i32 %i.aae, %i.aai
  %i.aak = add nsw i32 %i.aaj, %.02233.us.i.i.15.epil ; 2 uses
  %indvars.iv.next43.i.i.15.epil = add nuw nsw i64 %indvars.iv42.i.i.15.epil, 1
  %epil.iter181.next = add i64 %epil.iter181, 1   ; 2 uses
  %epil.iter181.cmp.not = icmp eq i64 %epil.iter181.next, %xtraiter180
  br i1 %epil.iter181.cmp.not, label %inv_dst7.exit, label %bb.ae, !llvm.loop !94

inv_dst7.exit:                                    ; preds = %inv_dst7.exit.loopexit.unr-lcssa, %bb.ae, %.preheader.i.i.preheader
  %.lcssa.sink = phi i32 [ 0, %.preheader.i.i.preheader ], [ %i.zm, %inv_dst7.exit.loopexit.unr-lcssa ], [ %i.aak, %bb.ae ]
  %i.aal = getelementptr inbounds [4 x i8], ptr %0, i64 %1
  %.idx = shl i64 %1, 3
  %3 = getelementptr inbounds i8, ptr %i.aal, i64 %.idx
  %4 = shl i64 %1, 4
  %5 = getelementptr inbounds i8, ptr %3, i64 %4
  %6 = shl i64 %1, 5
  %7 = getelementptr inbounds i8, ptr %5, i64 %6
  store i32 %.lcssa.sink, ptr %7, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ff_vvc_inv_dst7_32(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %.preheader.i.i.preheader, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ugt i64 %2, 7
  %ident.check.not = icmp eq i64 %1, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.ph, label %.lr.ph.i.i.preheader6

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <4 x i32>, ptr %i.b, align 4, !tbaa !11
  %wide.load5 = load <4 x i32>, ptr %i.c, align 4, !tbaa !11
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <4 x i32> %wide.load, ptr %i.d, align 16, !tbaa !11
  store <4 x i32> %wide.load5, ptr %i.e, align 16, !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.preheader.us.i.i.preheader, label %.lr.ph.i.i.preheader6

.lr.ph.i.i.preheader6:                            ; preds = %.lr.ph.i.i.preheader, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader6, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader6 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader6 ]
  %i.g = mul nsw i64 %indvars.iv.i.i.prol, %1
  %i.h = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i.prol
  store i32 %i.i, ptr %i.j, align 4, !tbaa !11
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !96

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader6
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader6 ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.k = sub i64 %indvars.iv.i.i.ph, %2
  %i.l = icmp ugt i64 %i.k, -4
  br i1 %i.l, label %.preheader.us.i.i.preheader, label %.lr.ph.i.i

.preheader.us.i.i.preheader:                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block
  %xtraiter7 = and i64 %2, 3                      ; 3 uses
  %i.m = icmp ult i64 %2, 4
  %unroll_iter = and i64 %2, -4
  %lcmp.mod8.not = icmp eq i64 %xtraiter7, 0
  %lcmp.mod10 = icmp ne i64 %xtraiter7, 0
  br label %.preheader.us.i.i

.preheader.i.i.preheader:                         ; preds = %bb.a
  store i32 0, ptr %0, align 4, !tbaa !11
  %i.n = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 2 uses
  store i32 0, ptr %i.n, align 4, !tbaa !11
  %i.o = getelementptr inbounds [4 x i8], ptr %i.n, i64 %1 ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !11
  %i.p = getelementptr inbounds [4 x i8], ptr %i.o, i64 %1 ; 2 uses
  store i32 0, ptr %i.p, align 4, !tbaa !11
  %i.q = getelementptr inbounds [4 x i8], ptr %i.p, i64 %1 ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !11
  %i.r = getelementptr inbounds [4 x i8], ptr %i.q, i64 %1 ; 2 uses
  store i32 0, ptr %i.r, align 4, !tbaa !11
  %i.s = getelementptr inbounds [4 x i8], ptr %i.r, i64 %1 ; 2 uses
  store i32 0, ptr %i.s, align 4, !tbaa !11
  %i.t = getelementptr inbounds [4 x i8], ptr %i.s, i64 %1 ; 2 uses
  store i32 0, ptr %i.t, align 4, !tbaa !11
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %1 ; 2 uses
  store i32 0, ptr %i.u, align 4, !tbaa !11
  %i.v = getelementptr inbounds [4 x i8], ptr %i.u, i64 %1 ; 2 uses
  store i32 0, ptr %i.v, align 4, !tbaa !11
  %i.w = getelementptr inbounds [4 x i8], ptr %i.v, i64 %1 ; 2 uses
  store i32 0, ptr %i.w, align 4, !tbaa !11
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %1 ; 2 uses
  store i32 0, ptr %i.x, align 4, !tbaa !11
  %i.y = getelementptr inbounds [4 x i8], ptr %i.x, i64 %1 ; 2 uses
  store i32 0, ptr %i.y, align 4, !tbaa !11
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %1 ; 2 uses
  store i32 0, ptr %i.z, align 4, !tbaa !11
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %1 ; 2 uses
  store i32 0, ptr %i.aa, align 4, !tbaa !11
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %1 ; 2 uses
  store i32 0, ptr %i.ab, align 4, !tbaa !11
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %1 ; 2 uses
  store i32 0, ptr %i.ac, align 4, !tbaa !11
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %1 ; 2 uses
  store i32 0, ptr %i.ad, align 4, !tbaa !11
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %1 ; 2 uses
  store i32 0, ptr %i.ae, align 4, !tbaa !11
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %1 ; 2 uses
  store i32 0, ptr %i.af, align 4, !tbaa !11
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.af, i64 %1 ; 2 uses
  store i32 0, ptr %i.ag, align 4, !tbaa !11
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %1 ; 2 uses
  store i32 0, ptr %i.ah, align 4, !tbaa !11
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %1 ; 2 uses
  store i32 0, ptr %i.ai, align 4, !tbaa !11
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %1 ; 2 uses
  store i32 0, ptr %i.aj, align 4, !tbaa !11
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %1 ; 2 uses
  store i32 0, ptr %i.ak, align 4, !tbaa !11
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %1 ; 2 uses
  store i32 0, ptr %i.al, align 4, !tbaa !11
  %i.am = getelementptr inbounds [4 x i8], ptr %i.al, i64 %1 ; 2 uses
  store i32 0, ptr %i.am, align 4, !tbaa !11
  %i.an = getelementptr inbounds [4 x i8], ptr %i.am, i64 %1 ; 2 uses
  store i32 0, ptr %i.an, align 4, !tbaa !11
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.an, i64 %1 ; 2 uses
  store i32 0, ptr %i.ao, align 4, !tbaa !11
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %1 ; 2 uses
  store i32 0, ptr %i.ap, align 4, !tbaa !11
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %1 ; 2 uses
  store i32 0, ptr %i.aq, align 4, !tbaa !11
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %1
  store i32 0, ptr %i.ar, align 4, !tbaa !11
  br label %inv_dst7.exit

.preheader.us.i.i:                                ; preds = %.preheader.us.i.i.preheader, %._crit_edge.us.i.i
  %.02338.us.i.i = phi i32 [ %i.ci, %._crit_edge.us.i.i ], [ 0, %.preheader.us.i.i.preheader ]
  %.02537.us.i.i = phi ptr [ %i.cg, %._crit_edge.us.i.i ], [ %0, %.preheader.us.i.i.preheader ] ; 2 uses
  %.02636.us.i.i = phi ptr [ %i.ch, %._crit_edge.us.i.i ], [ @ff_vvc_dst7_32x32, %.preheader.us.i.i.preheader ] ; 6 uses
  br i1 %i.m, label %.epil.preheader, label %.preheader.us.i.i.new

.preheader.us.i.i.new:                            ; preds = %.preheader.us.i.i, %.preheader.us.i.i.new
  %indvars.iv42.i.i = phi i64 [ %indvars.iv.next43.i.i.3, %.preheader.us.i.i.new ], [ 0, %.preheader.us.i.i ] ; 6 uses
  %.02233.us.i.i = phi i32 [ %i.bx, %.preheader.us.i.i.new ], [ 0, %.preheader.us.i.i ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.i.i.new ], [ 0, %.preheader.us.i.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv42.i.i
  %i.at = load i32, ptr %i.as, align 16, !tbaa !11
  %i.au = shl nuw nsw i64 %indvars.iv42.i.i, 5
  %i.av = getelementptr inbounds nuw i8, ptr %.02636.us.i.i, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !16
  %i.ax = sext i8 %i.aw to i32
  %i.ay = mul nsw i32 %i.at, %i.ax
  %i.az = add nsw i32 %i.ay, %.02233.us.i.i
  %indvars.iv.next43.i.i = or disjoint i64 %indvars.iv42.i.i, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !11
  %i.bc = shl nuw nsw i64 %indvars.iv.next43.i.i, 5
  %i.bd = getelementptr inbounds nuw i8, ptr %.02636.us.i.i, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !16
  %i.bf = sext i8 %i.be to i32
  %i.bg = mul nsw i32 %i.bb, %i.bf
  %i.bh = add nsw i32 %i.bg, %i.az
  %indvars.iv.next43.i.i.1 = or disjoint i64 %indvars.iv42.i.i, 2 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.1
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !11
  %i.bk = shl nuw nsw i64 %indvars.iv.next43.i.i.1, 5
  %i.bl = getelementptr inbounds nuw i8, ptr %.02636.us.i.i, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !16
  %i.bn = sext i8 %i.bm to i32
  %i.bo = mul nsw i32 %i.bj, %i.bn
  %i.bp = add nsw i32 %i.bo, %i.bh
  %indvars.iv.next43.i.i.2 = or disjoint i64 %indvars.iv42.i.i, 3 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next43.i.i.2
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !11
  %i.bs = shl nuw nsw i64 %indvars.iv.next43.i.i.2, 5
  %i.bt = getelementptr inbounds nuw i8, ptr %.02636.us.i.i, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !16
  %i.bv = sext i8 %i.bu to i32
  %i.bw = mul nsw i32 %i.br, %i.bv
  %i.bx = add nsw i32 %i.bw, %i.bp                ; 3 uses
  %indvars.iv.next43.i.i.3 = add nuw nsw i64 %indvars.iv42.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.i.unr-lcssa, label %.preheader.us.i.i.new, !llvm.loop !0

._crit_edge.us.i.i.unr-lcssa:                     ; preds = %.preheader.us.i.i.new
  br i1 %lcmp.mod8.not, label %._crit_edge.us.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.i.unr-lcssa, %.preheader.us.i.i
  %indvars.iv42.i.i.epil.init = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next43.i.i.3, %._crit_edge.us.i.i.unr-lcssa ]
  %.02233.us.i.i.epil.init = phi i32 [ 0, %.preheader.us.i.i ], [ %i.bx, %._crit_edge.us.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod10)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
end_hunk_7
