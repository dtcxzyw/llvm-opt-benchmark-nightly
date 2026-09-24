Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/enc_psy?download=true
inline.NumInlined: 16
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 27
begin_hunk_0_@bands_dist:bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %i.v, i64 2056 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !184 ; 2 uses
  br i1 %.not111.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cr = lshr i32 %.0105.i, 1                    ; 2 uses
  %i.cs = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ct = call i32 %i.cq(ptr noundef nonnull %i.v, ptr noundef nonnull %1, ptr noundef nonnull %4, i32 noundef range(i32 -2147483648, 21) %i.cs, ptr noundef nonnull %i.a, ptr noundef null, i32 noundef %i.bj, i32 noundef %i.cr, i32 noundef %i.x, ptr noundef null, i32 noundef %i.aa, ptr noundef nonnull %i.c, i32 noundef 0, float noundef 1.000000e+00, ptr noundef nonnull %i.b, i32 noundef %i.bh) #12, !inline_history !168 ; 0 uses
  %i.cu = load ptr, ptr %i.cp, align 8, !tbaa !184
  %i.cv = load i32, ptr %i.g, align 4, !tbaa !81
  %i.cw = load i32, ptr %i.h, align 4, !tbaa !74
  %i.cx = call i32 %i.cu(ptr noundef nonnull %i.v, ptr noundef nonnull %1, ptr noundef nonnull %4, i32 noundef range(i32 -2147483648, 21) %i.cs, ptr noundef %i.bp, ptr noundef null, i32 noundef %i.bj, i32 noundef %i.cr, i32 noundef %i.cv, ptr noundef null, i32 noundef %i.cw, ptr noundef nonnull %i.d, i32 noundef 0, float noundef 1.000000e+00, ptr noundef nonnull %i.b, i32 noundef %i.bh) #12, !inline_history !168 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.cy = trunc nuw nsw i64 %indvars.iv to i32
  %i.cz = call i32 %i.cq(ptr noundef nonnull %i.v, ptr noundef nonnull %1, ptr noundef nonnull %4, i32 noundef range(i32 -2147483648, 21) %i.cy, ptr noundef nonnull %i.a, ptr noundef %i.bp, i32 noundef %i.bj, i32 noundef %.0105.i, i32 noundef %i.x, ptr noundef null, i32 noundef %i.aa, ptr noundef nonnull %i.c, i32 noundef 0, float noundef 1.000000e+00, ptr noundef nonnull %i.b, i32 noundef %i.bh) #12, !inline_history !168 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.da = icmp sgt i32 %i.bj, 0
  br i1 %i.da, label %.lr.ph.i, label %pvq_band_cost.exit

.lr.ph.i:                                         ; preds = %bb.h
  %wide.trip.count158.i = zext nneg i32 %i.bj to i64 ; 4 uses
  br i1 %i.bo, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %xtraiter = and i64 %wide.trip.count158.i, 3    ; 3 uses
  %i.db = icmp ult i32 %i.bj, 4
  br i1 %i.db, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i.preheader.new

.lr.ph.split.i.preheader.new:                     ; preds = %.lr.ph.split.i.preheader
  %unroll_iter = and i64 %wide.trip.count158.i, 2147483644
  br label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %xtraiter8 = and i64 %wide.trip.count158.i, 1
  %i.dc = icmp eq i32 %i.bj, 1
  br i1 %i.dc, label %.lr.ph.split.us.i.epil.preheader, label %.lr.ph.split.us.i.preheader.new

.lr.ph.split.us.i.preheader.new:                  ; preds = %.lr.ph.split.us.i.preheader
  %unroll_iter13 = and i64 %wide.trip.count158.i, 2147483646
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.i.preheader.new
  %indvars.iv155.i = phi i64 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %indvars.iv.next156.i.1, %.lr.ph.split.us.i ] ; 6 uses
  %i.dd = phi <2 x float> [ zeroinitializer, %.lr.ph.split.us.i.preheader.new ], [ %i.ef, %.lr.ph.split.us.i ]
  %niter14 = phi i64 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %niter14.next.1, %.lr.ph.split.us.i ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv155.i
  %i.df = load float, ptr %i.de, align 8, !tbaa !54
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv155.i
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !54
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv155.i
  %i.dj = load float, ptr %i.di, align 8, !tbaa !54
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv155.i
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !54
  %i.dm = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dn = insertelement <2 x float> %i.dm, float %i.df, i64 1
  %i.do = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.dp = insertelement <2 x float> %i.do, float %i.dh, i64 1
  %i.dq = fsub nsz <2 x float> %i.dn, %i.dp       ; 2 uses
  %i.dr = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dq, <2 x float> %i.dq, <2 x float> %i.dd)
  %indvars.iv.next156.i = or disjoint i64 %indvars.iv155.i, 1 ; 4 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next156.i
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !54
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next156.i
  %i.dv = load float, ptr %i.du, align 4, !tbaa !54
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next156.i
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !54
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next156.i
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !54
  %i.ea = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.eb = insertelement <2 x float> %i.ea, float %i.dt, i64 1
  %i.ec = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.ed = insertelement <2 x float> %i.ec, float %i.dv, i64 1
  %i.ee = fsub nsz <2 x float> %i.eb, %i.ed       ; 2 uses
  %i.ef = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.ee, <2 x float> %i.dr) ; 3 uses
  %indvars.iv.next156.i.1 = add nuw nsw i64 %indvars.iv155.i, 2 ; 2 uses
  %niter14.next.1 = add i64 %niter14, 2           ; 2 uses
  %niter14.ncmp.1 = icmp eq i64 %niter14.next.1, %unroll_iter13
  br i1 %niter14.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.split.us.i, !llvm.loop !169

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %indvars.iv.next.i.3, %.lr.ph.split.i ] ; 6 uses
  %.0104141.i = phi float [ 0.000000e+00, %.lr.ph.split.i.preheader.new ], [ %i.fd, %.lr.ph.split.i ]
  %niter = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %niter.next.3, %.lr.ph.split.i ]
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.eh = load float, ptr %i.eg, align 16, !tbaa !54
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.i
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !54
  %i.ek = fsub nsz float %i.eh, %i.ej             ; 2 uses
  %i.el = call nsz float @llvm.fmuladd.f32(float %i.ek, float %i.ek, float %.0104141.i)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i
  %i.en = load float, ptr %i.em, align 4, !tbaa !54
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next.i
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !54
  %i.eq = fsub nsz float %i.en, %i.ep             ; 2 uses
  %i.er = call nsz float @llvm.fmuladd.f32(float %i.eq, float %i.eq, float %i.el)
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.1
  %i.et = load float, ptr %i.es, align 8, !tbaa !54
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next.i.1
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !54
  %i.ew = fsub nsz float %i.et, %i.ev             ; 2 uses
  %i.ex = call nsz float @llvm.fmuladd.f32(float %i.ew, float %i.ew, float %i.er)
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.2
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !54
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next.i.2
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !54
  %i.fc = fsub nsz float %i.ez, %i.fb             ; 2 uses
  %i.fd = call nsz float @llvm.fmuladd.f32(float %i.fc, float %i.fc, float %i.ex) ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %pvq_band_cost.exit.loopexit.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !169

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.split.us.i
  %lcmp.mod10.not = icmp eq i64 %xtraiter8, 0
  br i1 %lcmp.mod10.not, label %._crit_edge.loopexit.i, label %.lr.ph.split.us.i.epil.preheader

.lr.ph.split.us.i.epil.preheader:                 ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.split.us.i.preheader
  %indvars.iv155.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i.preheader ], [ %indvars.iv.next156.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 4 uses
  %.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph.split.us.i.preheader ], [ %i.ef, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod12 = trunc i32 %i.bj to i1
  call void @llvm.assume(i1 %lcmp.mod12)
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv155.i.epil.init
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !54
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv155.i.epil.init
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !54
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv155.i.epil.init
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !54
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv155.i.epil.init
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !54
  %i.fm = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.fn = insertelement <2 x float> %i.fm, float %i.ff, i64 1
  %i.fo = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.fp = insertelement <2 x float> %i.fo, float %i.fh, i64 1
  %i.fq = fsub nsz <2 x float> %i.fn, %i.fp       ; 2 uses
  %i.fr = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fq, <2 x float> %.epil.init)
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.split.us.i.epil.preheader
  %.lcssa4 = phi <2 x float> [ %i.ef, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.fr, %.lr.ph.split.us.i.epil.preheader ] ; 2 uses
  %i.fs = extractelement <2 x float> %.lcssa4, i64 0
  %i.ft = call nsz float @llvm.sqrt.f32(float %i.fs)
  %i.fu = extractelement <2 x float> %.lcssa4, i64 1
  br label %pvq_band_cost.exit

pvq_band_cost.exit.loopexit.unr-lcssa:            ; preds = %.lr.ph.split.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %pvq_band_cost.exit, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %pvq_band_cost.exit.loopexit.unr-lcssa, %.lr.ph.split.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.split.i.preheader ], [ %indvars.iv.next.i.3, %pvq_band_cost.exit.loopexit.unr-lcssa ]
  %.0104141.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.i.preheader ], [ %i.fd, %pvq_band_cost.exit.loopexit.unr-lcssa ]
  %lcmp.mod7 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod7)
  br label %.lr.ph.split.i.epil

.lr.ph.split.i.epil:                              ; preds = %.lr.ph.split.i.epil, %.lr.ph.split.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.split.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.split.i.epil.preheader ] ; 3 uses
  %.0104141.i.epil = phi float [ %i.ga, %.lr.ph.split.i.epil ], [ %.0104141.i.epil.init, %.lr.ph.split.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.i.epil ], [ 0, %.lr.ph.split.i.epil.preheader ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.epil
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !54
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.i.epil
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !54
  %i.fz = fsub nsz float %i.fw, %i.fy             ; 2 uses
  %i.ga = call nsz float @llvm.fmuladd.f32(float %i.fz, float %i.fz, float %.0104141.i.epil) ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %pvq_band_cost.exit, label %.lr.ph.split.i.epil, !llvm.loop !170

pvq_band_cost.exit:                               ; preds = %pvq_band_cost.exit.loopexit.unr-lcssa, %.lr.ph.split.i.epil, %bb.h, %._crit_edge.loopexit.i
  %.0104.lcssa.i = phi float [ 0.000000e+00, %bb.h ], [ %i.fu, %._crit_edge.loopexit.i ], [ %i.fd, %pvq_band_cost.exit.loopexit.unr-lcssa ], [ %i.ga, %.lr.ph.split.i.epil ]
  %.0.lcssa.i = phi float [ 0.000000e+00, %bb.h ], [ %i.ft, %._crit_edge.loopexit.i ], [ 0.000000e+00, %.lr.ph.split.i.epil ], [ 0.000000e+00, %pvq_band_cost.exit.loopexit.unr-lcssa ]
  %i.gb = load i32, ptr %i.j, align 8, !tbaa !176
  %i.gc = load i32, ptr %i.k, align 8, !tbaa !177 ; 4 uses
  %.not.i.i.i = icmp ult i32 %i.gc, 65536         ; 2 uses
  %i.gd = lshr i32 %i.gc, 16
  %spec.select.i.i.i = select i1 %.not.i.i.i, i32 %i.gc, i32 %i.gd ; 3 uses
  %spec.select12.i.i.i = select i1 %.not.i.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i.i = icmp samesign ult i32 %spec.select.i.i.i, 256 ; 2 uses
  %i.ge = lshr i32 %spec.select.i.i.i, 8
  %i.gf = or disjoint i32 %spec.select12.i.i.i, 8
  %.110.i.i.i = select i1 %.not11.i.i.i, i32 %spec.select.i.i.i, i32 %i.ge
  %.1.i.i.i = select i1 %.not11.i.i.i, i32 %spec.select12.i.i.i, i32 %i.gf
  %i.gg = zext nneg i32 %.110.i.i.i to i64
  %i.gh = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !53
  %i.gj = zext i8 %i.gi to i32
  %i.gk = add nuw nsw i32 %.1.i.i.i, %i.gj        ; 2 uses
  %i.gl = add nsw i32 %i.gk, -15
  %i.gm = lshr i32 %i.gc, %i.gl                   ; 2 uses
  %i.gn = mul i32 %i.gm, %i.gm                    ; 3 uses
  %i.go = lshr i32 %i.gn, 15
  %5 = lshr i32 %i.gn, 31
  %i.gp = lshr i32 %i.go, %5                      ; 2 uses
  %i.gq = mul i32 %i.gp, %i.gp                    ; 3 uses
  %6 = lshr i32 %i.gq, 15
  %7 = lshr i32 %i.gq, 31
  %i.gr = lshr i32 %6, %7                         ; 2 uses
  %i.gs = mul i32 %i.gr, %i.gr
  %.neg27 = ashr i32 %i.gs, 31
  %8 = shl nuw nsw i32 %i.gk, 3
  %9 = ashr i32 %i.gn, 29
  %10 = and i32 %9, -4
  %.neg24 = sub nsw i32 %10, %8
  %.neg25 = add nsw i32 %.neg24, -8
  %i.gt = ashr i32 %i.gq, 30
  %.neg20 = and i32 %i.gt, -2
  %.neg26 = add i32 %.neg20, %.neg25
  %i.gu = call nsz float @llvm.sqrt.f32(float %.0104.lcssa.i)
  %i.gv = fadd nsz float %i.gu, %.0.lcssa.i
  %i.gw = shl i32 %i.gb, 3
  %.neg13 = sub i32 %i.bg, %i.br
  %.neg14 = add i32 %.neg13, %i.gw
  %i.gx = add i32 %.neg14, %.neg26
  %i.gy = add i32 %i.gx, %.neg27
  %i.gz = uitofp nsz i32 %i.gy to float
  %i.ha = fmul nnan nsz float %i.gz, 1.250000e-01
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1376) %4, ptr noundef nonnull align 8 dereferenceable(1376) %3, i64 1376, i1 false)
  %i.hb = fmul nsz float %i.w, %i.gv
  %i.hc = fmul nsz float %i.hb, %i.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.hd = sitofp nsz i32 %.01017 to float
  %i.he = fadd nsz float %i.hc, %i.hd
  %i.hf = fptosi float %i.he to i32               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 21
  br i1 %exitcond.not, label %bb.i, label %bb.b, !llvm.loop !171

bb.i:                                             ; preds = %pvq_band_cost.exit
  %i.hg = sitofp nsz i32 %i.hf to float
  store float %i.hg, ptr %2, align 4, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void
}

declare void @ff_opus_rc_enc_init(ptr noundef) local_unnamed_addr #8

declare void @ff_celt_bitalloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.sin.v4f64(<4 x double>) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.tan.v2f32(<2 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS14AVCodecContext", !9, i64 0}
!11 = !{!"p1 _ZTS17AVFloatDSPContext", !9, i64 0}
!12 = !{!"p1 _ZTS10FFBufQueue", !9, i64 0}
!13 = !{!"p1 _ZTS14OpusEncOptions", !9, i64 0}
!14 = !{!"float", !5, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!"OpusPacketInfo", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!17 = !{!"p1 int", !9, i64 0}
!18 = !{!"OpusPsyContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !5, i64 32, !5, i64 536, !5, i64 2384, !5, i64 4232, !6, i64 5400, !5, i64 5408, !5, i64 5440, !5, i64 5472, !6, i64 5504, !5, i64 5520, !14, i64 13712, !15, i64 13720, !15, i64 13728, !16, i64 13736, !6, i64 13752, !6, i64 13756, !6, i64 13760, !14, i64 13764, !17, i64 13768, !6, i64 13776}
!19 = !{!18, !6, i64 13752}
!20 = !{!18, !6, i64 5400}
!21 = !{!18, !6, i64 13760}
!22 = !{!18, !6, i64 5504}
!23 = !{!18, !10, i64 0}
!24 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!25 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!26 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!27 = !{!"p1 omnipotent char", !9, i64 0}
!28 = !{!"AVRational", !6, i64 0, !6, i64 4}
!29 = !{!"p1 short", !9, i64 0}
!30 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!31 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!32 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!33 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!34 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!35 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!36 = !{!"any p2 pointer", !9, i64 0}
!37 = !{!"p2 _ZTS15AVFrameSideData", !36, i64 0}
!38 = !{!"AVCodecContext", !24, i64 0, !6, i64 8, !6, i64 12, !25, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !26, i64 40, !9, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !27, i64 72, !6, i64 80, !28, i64 84, !28, i64 92, !28, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !28, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !14, i64 204, !14, i64 208, !14, i64 212, !14, i64 216, !14, i64 220, !14, i64 224, !14, i64 228, !14, i64 232, !14, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !29, i64 288, !29, i64 296, !29, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !30, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !14, i64 428, !14, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !31, i64 456, !15, i64 464, !15, i64 472, !14, i64 480, !14, i64 484, !6, i64 488, !6, i64 492, !27, i64 496, !27, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !32, i64 536, !9, i64 544, !33, i64 552, !33, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !34, i64 728, !27, i64 736, !6, i64 744, !6, i64 748, !27, i64 752, !27, i64 760, !27, i64 768, !35, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !9, i64 816, !15, i64 824, !17, i64 832, !6, i64 840, !37, i64 848, !6, i64 856, !6, i64 860}
!39 = !{!38, !6, i64 376}
!40 = !{!18, !6, i64 13756}
!41 = !{!"p1 _ZTS11OpusPsyStep", !9, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"OpusPsyStep", !6, i64 0, !6, i64 4, !5, i64 8, !5, i64 176, !5, i64 344, !5, i64 428, !14, i64 596, !5, i64 600, !5, i64 936}
!44 = !{!43, !6, i64 0}
!45 = !{!38, !6, i64 356}
!46 = !{!18, !12, i64 16}
!47 = !{!27, !27, i64 0}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!18, !11, i64 8}
!50 = !{!"p1 float", !9, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!9, !9, i64 0}
!53 = !{!5, !5, i64 0}
!54 = !{!14, !14, i64 0}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!43, !6, i64 4}
!57 = !{!43, !14, i64 596}
!58 = !{!18, !13, i64 24}
!59 = !{!"OpusEncOptions", !14, i64 0, !6, i64 4}
!60 = !{!59, !14, i64 0}
!61 = !{!38, !6, i64 344}
!62 = !{!18, !6, i64 13736}
!63 = !{!18, !6, i64 13740}
!64 = !{!18, !6, i64 13748}
!65 = !{!18, !6, i64 13744}
!66 = !{!18, !17, i64 13768}
!67 = !{!18, !6, i64 13776}
!68 = !{!6, !6, i64 0}
!69 = !{!"p1 _ZTS7CeltPVQ", !9, i64 0}
!70 = !{!"OpusDSP", !9, i64 0, !9, i64 8}
!71 = !{!"CeltFrame", !10, i64 0, !5, i64 8, !5, i64 40, !11, i64 72, !5, i64 80, !69, i64 33872, !70, i64 33880, !6, i64 33896, !6, i64 33900, !6, i64 33904, !6, i64 33908, !6, i64 33912, !6, i64 33916, !6, i64 33920, !6, i64 33924, !6, i64 33928, !6, i64 33932, !6, i64 33936, !6, i64 33940, !5, i64 33944, !6, i64 34028, !6, i64 34032, !6, i64 34036, !6, i64 34040, !6, i64 34044, !6, i64 34048, !6, i64 34052, !6, i64 34056, !6, i64 34060, !6, i64 34064, !6, i64 34068, !6, i64 34072, !6, i64 34076, !14, i64 34080, !6, i64 34084, !6, i64 34088, !6, i64 34092, !5, i64 34096, !5, i64 34180, !5, i64 34264, !5, i64 34348, !5, i64 34432}
!72 = !{!71, !6, i64 33916}
!73 = !{!71, !6, i64 33896}
!74 = !{!71, !6, i64 33908}
!75 = !{!71, !6, i64 34036}
!76 = !{!71, !6, i64 34084}
!77 = !{!71, !6, i64 34048}
!78 = !{!71, !6, i64 33924}
!79 = !{!"llvm.loop.isvectorized", i32 1}
!80 = !{!"llvm.loop.unroll.runtime.disable"}
!81 = !{!71, !6, i64 34028}
!82 = !{!71, !6, i64 33936}
!83 = !{!71, !6, i64 34052}
!84 = !{!38, !15, i64 56}
!85 = !{!18, !14, i64 13764}
!86 = !{!18, !14, i64 13712}
!87 = distinct !{!87, !48}
!88 = distinct !{!88, !48}
!89 = distinct !{null}
!90 = distinct !{!90, !48}
!91 = distinct !{!91, !48}
!92 = distinct !{!92, !55}
!93 = distinct !{!93, !48}
!94 = distinct !{!94, !55}
!95 = distinct !{!95, !48}
!96 = distinct !{!96, !48}
!97 = distinct !{!97, !48}
!98 = distinct !{!98, !55}
!99 = distinct !{!99, !48}
!100 = distinct !{!100, !48}
!101 = distinct !{!101, !48}
!102 = distinct !{!102, !48}
!103 = distinct !{!103, !55}
!104 = distinct !{!104, !48}
!105 = !{!"short", !5, i64 0}
!106 = !{!"FFBufQueue", !5, i64 0, !105, i64 1160, !105, i64 1162}
!107 = !{!106, !105, i64 1162}
!108 = !{!106, !105, i64 1160}
!109 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!110 = !{!109, !109, i64 0}
!111 = !{!"p2 omnipotent char", !36, i64 0}
!112 = !{!"p2 _ZTS11AVBufferRef", !36, i64 0}
!113 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!114 = !{!"AVFrame", !5, i64 0, !5, i64 64, !111, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !28, i64 124, !15, i64 136, !15, i64 144, !28, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !112, i64 248, !6, i64 256, !37, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !113, i64 312, !6, i64 320, !33, i64 328, !33, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !9, i64 376, !30, i64 384, !15, i64 408, !6, i64 416}
!115 = !{!114, !111, i64 96}
!116 = !{!114, !6, i64 112}
!117 = !{!"AVFloatDSPContext", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88}
end_hunk_0
