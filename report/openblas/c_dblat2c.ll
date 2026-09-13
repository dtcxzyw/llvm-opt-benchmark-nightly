Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/c_dblat2c?download=true
inline.NumInlined: 33
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 36
begin_hunk_0_@dmvch_:bb.a
  %i.aw = load double, ptr %i.ad, align 8, !tbaa !14
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.at, double %i.av, double %i.aw)
  store double %i.ax, ptr %i.ad, align 8, !tbaa !14
  %i.ay = load double, ptr %gep.1, align 8, !tbaa !14
  %i.az = load double, ptr %i.au, align 8, !tbaa !14
  %i.ba = fmul double %i.ay, %i.az                ; 3 uses
  %i.bb = fcmp oge double %i.ba, 0.000000e+00
  %i.bc = fneg double %i.ba
  %i.bd = select i1 %i.bb, double %i.ba, double %i.bc
  %i.be = load double, ptr %i.ae, align 8, !tbaa !14
  %i.bf = fadd double %i.be, %i.bd
  store double %i.bf, ptr %i.ae, align 8, !tbaa !14
  %indvars.iv.next165.1 = add nsw i64 %indvars.iv.next165, %i.y ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit122.us.loopexit.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !36

.loopexit122.us.loopexit.unr-lcssa:               ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %.loopexit122.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit122.us.loopexit.unr-lcssa, %.lr.ph.us
  %indvars.iv164.epil.init = phi i64 [ %i.x, %.lr.ph.us ], [ %indvars.iv.next165.1, %.loopexit122.us.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.us ], [ %indvars.iv.next.1, %.loopexit122.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod212)
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init ; 2 uses
  %i.bg = load double, ptr %gep.epil, align 8, !tbaa !14
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv164.epil.init ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !14
  %i.bj = load double, ptr %i.ad, align 8, !tbaa !14
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.bi, double %i.bj)
  store double %i.bk, ptr %i.ad, align 8, !tbaa !14
  %i.bl = load double, ptr %gep.epil, align 8, !tbaa !14
  %i.bm = load double, ptr %i.bh, align 8, !tbaa !14
  %i.bn = fmul double %i.bl, %i.bm                ; 3 uses
  %i.bo = fcmp oge double %i.bn, 0.000000e+00
  %i.bp = fneg double %i.bn
  %i.bq = select i1 %i.bo, double %i.bn, double %i.bp
  %i.br = load double, ptr %i.ae, align 8, !tbaa !14
  %i.bs = fadd double %i.br, %i.bq
  store double %i.bs, ptr %i.ae, align 8, !tbaa !14
  br label %.loopexit122.us

.loopexit122.us:                                  ; preds = %.epil.preheader, %.loopexit122.us.loopexit.unr-lcssa, %.preheader121.us
  %i.bt = load double, ptr %3, align 8, !tbaa !14
  %i.bu = load double, ptr %i.ad, align 8, !tbaa !14
  %i.bv = load double, ptr %8, align 8, !tbaa !14
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv171 ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !14
  %i.by = fmul double %i.bv, %i.bx
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bu, double %i.by)
  store double %i.bz, ptr %i.ad, align 8, !tbaa !14
  %i.ca = load double, ptr %3, align 8, !tbaa !14 ; 3 uses
  %i.cb = fcmp ult double %i.ca, 0.000000e+00
  %i.cc = fneg double %i.ca
  %i.cd = select i1 %i.cb, double %i.cc, double %i.ca
  %i.ce = load double, ptr %i.ae, align 8, !tbaa !14
  %i.cf = load double, ptr %8, align 8, !tbaa !14
  %i.cg = load double, ptr %i.bw, align 8, !tbaa !14
  %i.ch = fmul double %i.cf, %i.cg                ; 3 uses
  %i.ci = fcmp oge double %i.ch, 0.000000e+00
  %i.cj = fneg double %i.ch
  %i.ck = select i1 %i.ci, double %i.ch, double %i.cj
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.ce, double %i.ck)
  store double %i.cl, ptr %i.ae, align 8, !tbaa !14
  %indvars.iv.next172 = add nsw i64 %indvars.iv171, %storemerge106
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 2 uses
  %exitcond177.not = icmp eq i64 %indvars.iv.next170, %wide.trip.count194
  br i1 %exitcond177.not, label %.loopexit202, label %.preheader121.us, !llvm.loop !37

.lr.ph.us:                                        ; preds = %.preheader121.us
  %i.cm = mul nsw i64 %indvars.iv169, %i.aa
  %invariant.gep = getelementptr [8 x i8], ptr %i.c, i64 %i.cm ; 3 uses
  br i1 %i.ac, label %.epil.preheader, label %.lr.ph.us.new

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit120
  %indvars.iv189 = phi i64 [ %i.p, %.preheader.preheader ], [ %indvars.iv.next190, %.loopexit120 ] ; 4 uses
  %indvars.iv187 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next188, %.loopexit120 ] ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.f, i64 %indvars.iv189 ; 9 uses
  store double 0.000000e+00, ptr %i.cn, align 8, !tbaa !14
  %i.co = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv189 ; 9 uses
  store double 0.000000e+00, ptr %i.co, align 8, !tbaa !14
  br i1 %.not118123, label %.loopexit120, label %.lr.ph128.preheader

.lr.ph128.preheader:                              ; preds = %.preheader
  %invariant.gep206 = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv187 ; 3 uses
  br i1 %i.w, label %.lr.ph128.epil.preheader, label %.lr.ph128

.lr.ph128:                                        ; preds = %.lr.ph128.preheader, %.lr.ph128
  %indvars.iv180 = phi i64 [ %indvars.iv.next181.1, %.lr.ph128 ], [ %i.s, %.lr.ph128.preheader ] ; 2 uses
  %indvars.iv178 = phi i64 [ %indvars.iv.next179.1, %.lr.ph128 ], [ 1, %.lr.ph128.preheader ] ; 3 uses
  %niter217 = phi i64 [ %niter217.next.1, %.lr.ph128 ], [ 0, %.lr.ph128.preheader ]
  %i.cp = mul nsw i64 %indvars.iv178, %i.r
  %gep207 = getelementptr [8 x i8], ptr %invariant.gep206, i64 %i.cp ; 2 uses
  %i.cq = load double, ptr %gep207, align 8, !tbaa !14
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv180 ; 2 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !14
  %i.ct = load double, ptr %i.cn, align 8, !tbaa !14
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.cs, double %i.ct)
  store double %i.cu, ptr %i.cn, align 8, !tbaa !14
  %i.cv = load double, ptr %gep207, align 8, !tbaa !14
  %i.cw = load double, ptr %i.cr, align 8, !tbaa !14
  %i.cx = fmul double %i.cv, %i.cw                ; 3 uses
  %i.cy = fcmp oge double %i.cx, 0.000000e+00
  %i.cz = fneg double %i.cx
  %i.da = select i1 %i.cy, double %i.cx, double %i.cz
  %i.db = load double, ptr %i.co, align 8, !tbaa !14
  %i.dc = fadd double %i.db, %i.da
  store double %i.dc, ptr %i.co, align 8, !tbaa !14
  %indvars.iv.next181 = add nsw i64 %indvars.iv180, %i.t ; 2 uses
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1
  %i.dd = mul nsw i64 %indvars.iv.next179, %i.r
  %gep207.1 = getelementptr [8 x i8], ptr %invariant.gep206, i64 %i.dd ; 2 uses
  %i.de = load double, ptr %gep207.1, align 8, !tbaa !14
  %i.df = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv.next181 ; 2 uses
  %i.dg = load double, ptr %i.df, align 8, !tbaa !14
  %i.dh = load double, ptr %i.cn, align 8, !tbaa !14
  %i.di = tail call double @llvm.fmuladd.f64(double %i.de, double %i.dg, double %i.dh)
  store double %i.di, ptr %i.cn, align 8, !tbaa !14
  %i.dj = load double, ptr %gep207.1, align 8, !tbaa !14
  %i.dk = load double, ptr %i.df, align 8, !tbaa !14
  %i.dl = fmul double %i.dj, %i.dk                ; 3 uses
  %i.dm = fcmp oge double %i.dl, 0.000000e+00
  %i.dn = fneg double %i.dl
  %i.do = select i1 %i.dm, double %i.dl, double %i.dn
  %i.dp = load double, ptr %i.co, align 8, !tbaa !14
  %i.dq = fadd double %i.dp, %i.do
  store double %i.dq, ptr %i.co, align 8, !tbaa !14
  %indvars.iv.next181.1 = add nsw i64 %indvars.iv.next181, %i.t ; 2 uses
  %indvars.iv.next179.1 = add nuw nsw i64 %indvars.iv178, 2 ; 2 uses
  %niter217.next.1 = add nuw i64 %niter217, 2     ; 2 uses
  %niter217.ncmp.1 = icmp eq i64 %niter217.next.1, %unroll_iter216
  br i1 %niter217.ncmp.1, label %.loopexit120.loopexit.unr-lcssa, label %.lr.ph128, !llvm.loop !38

.loopexit120.loopexit.unr-lcssa:                  ; preds = %.lr.ph128
  br i1 %lcmp.mod214.not, label %.loopexit120, label %.lr.ph128.epil.preheader

.lr.ph128.epil.preheader:                         ; preds = %.loopexit120.loopexit.unr-lcssa, %.lr.ph128.preheader
  %indvars.iv180.epil.init = phi i64 [ %i.s, %.lr.ph128.preheader ], [ %indvars.iv.next181.1, %.loopexit120.loopexit.unr-lcssa ]
  %indvars.iv178.epil.init = phi i64 [ 1, %.lr.ph128.preheader ], [ %indvars.iv.next179.1, %.loopexit120.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod215)
  %i.dr = mul nsw i64 %indvars.iv178.epil.init, %i.r
  %gep207.epil = getelementptr [8 x i8], ptr %invariant.gep206, i64 %i.dr ; 2 uses
  %i.ds = load double, ptr %gep207.epil, align 8, !tbaa !14
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv180.epil.init ; 2 uses
  %i.du = load double, ptr %i.dt, align 8, !tbaa !14
  %i.dv = load double, ptr %i.cn, align 8, !tbaa !14
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.ds, double %i.du, double %i.dv)
  store double %i.dw, ptr %i.cn, align 8, !tbaa !14
  %i.dx = load double, ptr %gep207.epil, align 8, !tbaa !14
  %i.dy = load double, ptr %i.dt, align 8, !tbaa !14
  %i.dz = fmul double %i.dx, %i.dy                ; 3 uses
  %i.ea = fcmp oge double %i.dz, 0.000000e+00
  %i.eb = fneg double %i.dz
  %i.ec = select i1 %i.ea, double %i.dz, double %i.eb
  %i.ed = load double, ptr %i.co, align 8, !tbaa !14
  %i.ee = fadd double %i.ed, %i.ec
  store double %i.ee, ptr %i.co, align 8, !tbaa !14
  br label %.loopexit120

.loopexit120:                                     ; preds = %.lr.ph128.epil.preheader, %.loopexit120.loopexit.unr-lcssa, %.preheader
  %i.ef = load double, ptr %3, align 8, !tbaa !14
  %i.eg = load double, ptr %i.cn, align 8, !tbaa !14
  %i.eh = load double, ptr %8, align 8, !tbaa !14
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv189 ; 2 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !14
  %i.ek = fmul double %i.eh, %i.ej
  %i.el = tail call double @llvm.fmuladd.f64(double %i.ef, double %i.eg, double %i.ek)
  store double %i.el, ptr %i.cn, align 8, !tbaa !14
  %i.em = load double, ptr %3, align 8, !tbaa !14 ; 3 uses
  %i.en = fcmp ult double %i.em, 0.000000e+00
  %i.eo = fneg double %i.em
  %i.ep = select i1 %i.en, double %i.eo, double %i.em
  %i.eq = load double, ptr %i.co, align 8, !tbaa !14
  %i.er = load double, ptr %8, align 8, !tbaa !14
  %i.es = load double, ptr %i.ei, align 8, !tbaa !14
  %i.et = fmul double %i.er, %i.es                ; 3 uses
  %i.eu = fcmp oge double %i.et, 0.000000e+00
  %i.ev = fneg double %i.et
  %i.ew = select i1 %i.eu, double %i.et, double %i.ev
  %i.ex = tail call double @llvm.fmuladd.f64(double %i.ep, double %i.eq, double %i.ew)
  store double %i.ex, ptr %i.co, align 8, !tbaa !14
  %indvars.iv.next190 = add nsw i64 %indvars.iv189, %storemerge106
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next188, %wide.trip.count194
  br i1 %exitcond195.not, label %.loopexit202, label %.preheader, !llvm.loop !37

.loopexit202:                                     ; preds = %.loopexit122.us, %.loopexit120
  store double 0.000000e+00, ptr %15, align 8, !tbaa !14
  %i.ey = add nuw i32 %storemerge103, 1           ; 2 uses
  %wide.trip.count199 = zext i32 %i.ey to i64
  %.pre = load double, ptr %14, align 8, !tbaa !14
  br label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit202, %bb.b
  %i.ez = phi double [ 0.000000e+00, %.loopexit202 ], [ %., %bb.b ] ; 2 uses
  %i.fa = phi double [ %.pre, %.loopexit202 ], [ %i.fr, %bb.b ]
  %indvars.iv196 = phi i64 [ 1, %.loopexit202 ], [ %indvars.iv.next197, %bb.b ] ; 5 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv196
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !14
  %20 = add nsw i64 %indvars.iv196, -1
  %i.fd = load i32, ptr %10, align 4, !tbaa !10
  %i.fe = tail call i32 @llvm.abs.i32(i32 %i.fd, i1 true)
  %21 = zext nneg i32 %i.fe to i64
  %22 = mul nuw nsw i64 %20, %21
  %i.ff = getelementptr [8 x i8], ptr %i.h, i64 %22
  %i.fg = getelementptr i8, ptr %i.ff, i64 8
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !14
  %i.fi = fsub double %i.fc, %i.fh                ; 3 uses
  %i.fj = fcmp oge double %i.fi, 0.000000e+00
  %i.fk = fneg double %i.fi
  %i.fl = select i1 %i.fj, double %i.fi, double %i.fk
  %i.fm = fdiv double %i.fl, %i.fa                ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv196
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !14 ; 2 uses
  %i.fp = fcmp une double %i.fo, 0.000000e+00
  %i.fq = fdiv double %i.fm, %i.fo
  %spec.select152 = select i1 %i.fp, double %i.fq, double %i.fm ; 2 uses
  %.inv = fcmp oge double %i.ez, %spec.select152
  %. = select i1 %.inv, double %i.ez, double %spec.select152 ; 3 uses
  store double %., ptr %15, align 8, !tbaa !14
  %i.fr = load double, ptr %14, align 8, !tbaa !14 ; 2 uses
  %i.fs = tail call double @sqrt(double noundef %i.fr) #20
  %i.ft = fmul double %., %i.fs
  %i.fu = fcmp ult double %i.ft, 1.000000e+00
  br i1 %i.fu, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1 ; 2 uses
  %exitcond200.not = icmp eq i64 %indvars.iv.next197, %wide.trip.count199
  br i1 %exitcond200.not, label %.loopexit119, label %.lr.ph, !llvm.loop !39

bb.c:                                             ; preds = %.lr.ph
  %i.fv = trunc nuw nsw i64 %indvars.iv196 to i32
  store i32 %i.fv, ptr @dmvch_.i__, align 4, !tbaa !10
  store i32 1, ptr %16, align 4, !tbaa !10
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  %i.fw = load i32, ptr @dmvch_.ml, align 4, !tbaa !10 ; 2 uses
  store i32 1, ptr @dmvch_.i__, align 4, !tbaa !10
  %.not112148 = icmp slt i32 %i.fw, 1
  br i1 %.not112148, label %.loopexit, label %.lr.ph151

.lr.ph151:                                        ; preds = %bb.c, %bb.f
  %storemerge111149 = phi i32 [ %i.gx, %bb.f ], [ 1, %bb.c ] ; 6 uses
  %i.fx = load i32, ptr %18, align 4, !tbaa !10
  %.not113 = icmp eq i32 %i.fx, 0
  br i1 %.not113, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph151
  %i.fy = sext i32 %storemerge111149 to i64
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.fy
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !14
  %i.gb = add nsw i32 %storemerge111149, -1
  %i.gc = load i32, ptr %10, align 4, !tbaa !10
  %i.gd = tail call i32 @llvm.abs.i32(i32 %i.gc, i1 true)
  %i.ge = mul nsw i32 %i.gd, %i.gb
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr [8 x i8], ptr %i.h, i64 %i.gf
  %i.gh = getelementptr i8, ptr %i.gg, i64 8
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !14
  %i.gj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.83, i32 noundef %storemerge111149, double noundef %i.ga, double noundef %i.gi) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph151
  %i.gk = add nsw i32 %storemerge111149, -1
  %i.gl = load i32, ptr %10, align 4, !tbaa !10
  %i.gm = tail call i32 @llvm.abs.i32(i32 %i.gl, i1 true)
  %i.gn = mul nsw i32 %i.gm, %i.gk
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr [8 x i8], ptr %i.h, i64 %i.go
  %i.gq = getelementptr i8, ptr %i.gp, i64 8
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !14
  %i.gs = sext i32 %storemerge111149 to i64
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gs
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !14
  %i.gv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.83, i32 noundef %storemerge111149, double noundef %i.gr, double noundef %i.gu) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.gw = load i32, ptr @dmvch_.i__, align 4, !tbaa !10 ; 2 uses
  %i.gx = add nsw i32 %i.gw, 1                    ; 2 uses
  store i32 %i.gx, ptr @dmvch_.i__, align 4, !tbaa !10
  %.not112.not = icmp slt i32 %i.gw, %i.fw
  br i1 %.not112.not, label %.lr.ph151, label %.loopexit, !llvm.loop !40

.loopexit119:                                     ; preds = %bb.b, %.thread
  %storemerge109.lcssa = phi i32 [ 1, %.thread ], [ %i.ey, %bb.b ]
  store i32 %storemerge109.lcssa, ptr @dmvch_.i__, align 4, !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.c, %.loopexit119
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @lde_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8
  %i.b = getelementptr inbounds i8, ptr %0, i64 -8
  %i.c = load i32, ptr %2, align 4, !tbaa !10     ; 2 uses
  %.not7 = icmp slt i32 %i.c, 1
  br i1 %.not7, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = add nuw i32 %i.c, 1
  %wide.trip.count = zext i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.f = load double, ptr %i.e, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.h = load double, ptr %i.g, align 8, !tbaa !14
  %i.i = fcmp une double %i.f, %i.h
  br i1 %i.i, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 0, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @cd2chke_(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define noundef i32 @dchk1_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6, ptr nofree noundef captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef readonly captures(none) %11, ptr nofree noundef readonly captures(none) %12, ptr nofree noundef readonly captures(none) %13, ptr nofree noundef readonly captures(none) %14, ptr nofree noundef readonly captures(none) %15, ptr nofree noundef readonly captures(none) %16, ptr nofree noundef readonly captures(none) %17, ptr nofree noundef readonly captures(none) %18, ptr nofree readnone captures(none) %19, ptr nofree noundef captures(none) %20, ptr noundef %21, ptr nofree noundef captures(none) %22, ptr nofree noundef captures(none) %23, ptr noundef %24, ptr nofree noundef captures(none) %25, ptr nofree noundef captures(none) %26, ptr noundef %27, ptr nofree noundef captures(none) %28, ptr nofree noundef captures(none) %29, ptr nofree noundef captures(none) %30, ptr noundef %31, i32 %32) local_unnamed_addr #9 {
bb.a:
  %i.a = ptrtoaddr ptr %21 to i64
  %i.b = ptrtoaddr ptr %22 to i64
  %i.c = ptrtoaddr ptr %24 to i64
  %i.d = ptrtoaddr ptr %25 to i64
  %i.e = ptrtoaddr ptr %27 to i64
  %i.f = ptrtoaddr ptr %28 to i64
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 10 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  %i.k = getelementptr inbounds i8, ptr %9, i64 -4
  %i.l = getelementptr inbounds i8, ptr %11, i64 -4
  %i.m = getelementptr inbounds i8, ptr %13, i64 -8 ; 12 uses
  %i.n = getelementptr inbounds i8, ptr %15, i64 -8
  %i.o = getelementptr inbounds i8, ptr %17, i64 -4 ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %23, i64 -8
  %i.q = getelementptr inbounds i8, ptr %22, i64 -8 ; 10 uses
  %i.r = getelementptr inbounds i8, ptr %21, i64 -8 ; 10 uses
  %i.s = getelementptr inbounds i8, ptr %28, i64 -8 ; 10 uses
  %i.t = getelementptr inbounds i8, ptr %27, i64 -8 ; 10 uses
  %i.u = getelementptr inbounds i8, ptr %25, i64 -8 ; 10 uses
  %i.v = getelementptr inbounds i8, ptr %24, i64 -8 ; 11 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i8, ptr %i.w, align 1, !tbaa !11    ; 3 uses
  %i.y = icmp eq i8 %i.x, 101                     ; 2 uses
  %i.z = zext i1 %i.y to i32
  store i32 %i.z, ptr @dchk1_.full, align 4, !tbaa !10
  %i.aa = icmp eq i8 %i.x, 98
  %i.ab = zext i1 %i.aa to i32
  store i32 %i.ab, ptr @dchk1_.banded, align 4, !tbaa !10
  switch i8 %i.x, label %bb.b [
    i8 101, label %.sink.split
    i8 98, label %.sink.split
  ]

.sink.split:                                      ; preds = %bb.a, %bb.a
  %.mux = select i1 %i.y, i32 11, i32 13
  store i32 %.mux, ptr @dchk1_.nargs, align 4, !tbaa !10
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.sink.split
  store i32 0, ptr @dchk1_.nc, align 4, !tbaa !10
  store i32 1, ptr @dchk1_.reset, align 4, !tbaa !10
  store double 0.000000e+00, ptr @dchk1_.errmax, align 8, !tbaa !14
  %i.ac = load i32, ptr %8, align 4, !tbaa !10    ; 2 uses
  store i32 1, ptr @dchk1_.in, align 4, !tbaa !10
  %.not335 = icmp slt i32 %i.ac, 1
  br i1 %.not335, label %._crit_edge339, label %.lr.ph338

.lr.ph338:                                        ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 7
  %scevgep = getelementptr i8, ptr %13, i64 8
  %i.ae = sub i64 %i.a, %i.b
  %diff.check496 = icmp ugt i64 %i.ae, -128
  %i.af = sub i64 %i.c, %i.d
  %diff.check466 = icmp ugt i64 %i.af, -128
  %i.ag = sub i64 %i.e, %i.f
  %diff.check = icmp ugt i64 %i.ag, -128
  %bound1 = icmp ult ptr %13, getelementptr inbounds nuw (i8, ptr @dchk1_.alpha, i64 8)
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph338, %bb.aq
  %storemerge336 = phi i32 [ 1, %.lr.ph338 ], [ %i.rv, %bb.aq ]
  %i.ah = sext i32 %storemerge336 to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !10 ; 2 uses
  store i32 %i.aj, ptr @dchk1_.n, align 4, !tbaa !10
end_hunk_0
begin_hunk_1_@dchk1_:bb.a
bb.e:                                             ; preds = %bb.d
  %i.aq = load i32, ptr @dchk1_.n, align 4, !tbaa !10
  %i.ar = load i32, ptr @dchk1_.nd, align 4, !tbaa !10
  %i.as = add nsw i32 %i.ar, %i.aq
  %i.at = load i32, ptr %18, align 4, !tbaa !10
  %. = tail call i32 @llvm.smin.i32(i32 %i.as, i32 %i.at)
  br label %.sink.split421

.sink.split421:                                   ; preds = %bb.e, %.thread
  %.sink422 = phi i32 [ %i.ap, %.thread ], [ %., %bb.e ]
  store i32 %.sink422, ptr @dchk1_.m, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %.sink.split421, %bb.d
  %i.au = load i32, ptr @dchk1_.banded, align 4, !tbaa !10
  %.not162 = icmp eq i32 %i.au, 0
  br i1 %.not162, label %.thread404, label %bb.g

.thread404:                                       ; preds = %bb.f
  store i32 1, ptr @dchk1_.iku, align 4, !tbaa !10
  br label %.lr.ph333.preheader

bb.g:                                             ; preds = %bb.f
  %i.av = load i32, ptr %10, align 4, !tbaa !10   ; 2 uses
  store i32 1, ptr @dchk1_.iku, align 4, !tbaa !10
  %.not165330 = icmp slt i32 %i.av, 1
  br i1 %.not165330, label %.loopexit273, label %.lr.ph333.preheader

.lr.ph333.preheader:                              ; preds = %.thread404, %bb.g
  %storemerge163407 = phi i32 [ 1, %.thread404 ], [ %i.av, %bb.g ]
  br label %.lr.ph333

.lr.ph333:                                        ; preds = %.lr.ph333.preheader, %.loopexit272
  %storemerge164331 = phi i32 [ %i.rq, %.loopexit272 ], [ 1, %.lr.ph333.preheader ] ; 2 uses
  %i.aw = load i32, ptr @dchk1_.banded, align 4, !tbaa !10
  %.not166 = icmp eq i32 %i.aw, 0
  br i1 %.not166, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph333
  %i.ax = sext i32 %storemerge164331 to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !10 ; 3 uses
  %i.ba = tail call i32 @llvm.smax.i32(i32 %i.az, i32 1) ; 2 uses
  %i.bb = add i32 %i.ba, %i.az
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph333
  %i.bc = load i32, ptr @dchk1_.n, align 4, !tbaa !10
  %i.bd = add nsw i32 %i.bc, -1
  %i.be = load i32, ptr @dchk1_.m, align 4, !tbaa !10 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink = phi i32 [ %i.bd, %bb.i ], [ %i.az, %bb.h ]
  %storemerge167.sink.in = phi i32 [ %i.be, %bb.i ], [ %i.ba, %bb.h ]
  %storemerge169 = phi i32 [ %i.be, %bb.i ], [ %i.bb, %bb.h ] ; 4 uses
  %storemerge167.sink = add nsw i32 %storemerge167.sink.in, -1
  store i32 %.sink, ptr @dchk1_.ku, align 4, !tbaa !10
  store i32 %storemerge167.sink, ptr @dchk1_.kl, align 4, !tbaa !10
  store i32 %storemerge169, ptr @dchk1_.lda, align 4, !tbaa !10
  %i.bf = load i32, ptr %18, align 4, !tbaa !10   ; 2 uses
  %i.bg = icmp slt i32 %storemerge169, %i.bf
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bh = add nsw i32 %storemerge169, 1           ; 2 uses
  store i32 %i.bh, ptr @dchk1_.lda, align 4, !tbaa !10
  %.pre = load i32, ptr %18, align 4, !tbaa !10
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bi = phi i32 [ %.pre, %bb.k ], [ %i.bf, %bb.j ]
  %i.bj = phi i32 [ %i.bh, %bb.k ], [ %storemerge169, %bb.j ] ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, %i.bi
  br i1 %i.bk, label %.loopexit272, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = load i32, ptr @dchk1_.n, align 4, !tbaa !10 ; 2 uses
  %i.bm = mul nsw i32 %i.bl, %i.bj
  store i32 %i.bm, ptr @dchk1_.laa, align 4, !tbaa !10
  %i.bn = icmp slt i32 %i.bl, 1
  %i.bo = load i32, ptr @dchk1_.m, align 4
  %i.bp = icmp slt i32 %i.bo, 1
  %i.bq = select i1 %i.bn, i1 true, i1 %i.bp
  %i.br = zext i1 %i.bq to i32
  store i32 %i.br, ptr @dchk1_.null, align 4, !tbaa !10
  store double 0.000000e+00, ptr @dchk1_.transl, align 8, !tbaa !14
  %i.bs = tail call i32 @dmake_(ptr noundef nonnull %i.ad, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.41, ptr noundef nonnull @dchk1_.m, ptr noundef nonnull @dchk1_.n, ptr noundef %20, ptr noundef nonnull %18, ptr noundef %21, ptr noundef nonnull @dchk1_.lda, ptr noundef nonnull @dchk1_.kl, ptr noundef nonnull @dchk1_.ku, ptr noundef nonnull @dchk1_.reset, ptr noundef nonnull @dchk1_.transl, i32 poison, i32 poison, i32 poison) ; 0 uses
  store i32 1, ptr @dchk1_.ic, align 4, !tbaa !10
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge328
  %storemerge170329 = phi i32 [ 1, %bb.m ], [ %i.rn, %._crit_edge328 ] ; 2 uses
  %i.bt = sext i32 %storemerge170329 to i64
  %i.bu = getelementptr i8, ptr @dchk3_.icht, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 -1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !11  ; 3 uses
  store i8 %i.bw, ptr @dchk1_.trans, align 1, !tbaa !11
  switch i8 %i.bw, label %.critedge [
    i8 78, label %.critedge.thread
    i8 84, label %.critedge.thread408
  ]

.critedge.thread408:                              ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) @dchk1_.ctrans, ptr noundef nonnull align 1 dereferenceable(14) @.str.43, i64 14, i1 false), !tbaa !11
  br label %bb.p

.critedge.thread:                                 ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) @dchk1_.ctrans, ptr noundef nonnull align 1 dereferenceable(14) @.str.42, i64 14, i1 false), !tbaa !11
  br label %bb.o

.critedge:                                        ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) @dchk1_.ctrans, ptr noundef nonnull align 1 dereferenceable(14) @.str.44, i64 14, i1 false), !tbaa !11
  %cond = icmp eq i8 %i.bw, 67
  br i1 %cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.critedge, %.critedge.thread
  br label %bb.p

bb.p:                                             ; preds = %.critedge, %.critedge.thread408, %bb.o
  %storemerge175.in = phi ptr [ @dchk1_.m, %bb.o ], [ @dchk1_.n, %.critedge.thread408 ], [ @dchk1_.n, %.critedge ]
  %storemerge174.in = phi ptr [ @dchk1_.n, %bb.o ], [ @dchk1_.m, %.critedge.thread408 ], [ @dchk1_.m, %.critedge ]
  %storemerge175 = load i32, ptr %storemerge175.in, align 4, !tbaa !10
  store i32 %storemerge175, ptr @dchk1_.ml, align 4, !tbaa !10
  %storemerge174 = load i32, ptr %storemerge174.in, align 4, !tbaa !10
  store i32 %storemerge174, ptr @dchk1_.nl, align 4, !tbaa !10
  %i.bx = load i32, ptr %16, align 4, !tbaa !10   ; 2 uses
  store i32 1, ptr @dchk1_.ix, align 4, !tbaa !10
  %.not177324 = icmp slt i32 %i.bx, 1
  br i1 %.not177324, label %._crit_edge328, label %.lr.ph327

.lr.ph327:                                        ; preds = %bb.p, %._crit_edge321
  %storemerge176325 = phi i32 [ %i.rl, %._crit_edge321 ], [ 1, %bb.p ] ; 2 uses
  %i.by = sext i32 %storemerge176325 to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !10 ; 2 uses
  store i32 %i.ca, ptr @dchk1_.incx, align 4, !tbaa !10
  %i.cb = tail call i32 @llvm.abs.i32(i32 %i.ca, i1 true) ; 2 uses
  %i.cc = load i32, ptr @dchk1_.nl, align 4, !tbaa !10 ; 2 uses
  %i.cd = mul nsw i32 %i.cc, %i.cb
  store i32 %i.cd, ptr @dchk1_.lx, align 4, !tbaa !10
  store double 5.000000e-01, ptr @dchk1_.transl, align 8, !tbaa !14
  store i32 %i.cb, ptr %i.g, align 4, !tbaa !10
  %i.ce = add nsw i32 %i.cc, -1                   ; 2 uses
  store i32 %i.ce, ptr %i.h, align 4, !tbaa !10
  %i.cf = call i32 @dmake_(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.41, ptr noundef nonnull @c__1, ptr noundef nonnull @dchk1_.nl, ptr noundef %23, ptr noundef nonnull @c__1, ptr noundef %24, ptr noundef nonnull %i.g, ptr noundef nonnull @c__0, ptr noundef nonnull %i.h, ptr noundef nonnull @dchk1_.reset, ptr noundef nonnull @dchk1_.transl, i32 poison, i32 poison, i32 poison) ; 0 uses
  %i.cg = load i32, ptr @dchk1_.nl, align 4, !tbaa !10 ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, 1
  br i1 %i.ch, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph327
  %i.ci = lshr i32 %i.cg, 1                       ; 2 uses
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.cj
  store double 0.000000e+00, ptr %i.ck, align 8, !tbaa !14
  %i.cl = load i32, ptr @dchk1_.incx, align 4, !tbaa !10
  %i.cm = tail call i32 @llvm.abs.i32(i32 %i.cl, i1 true)
  %i.cn = add nsw i32 %i.ci, -1
  %i.co = mul nsw i32 %i.cm, %i.cn
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr [8 x i8], ptr %i.v, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  store double 0.000000e+00, ptr %i.cr, align 8, !tbaa !14
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph327
  %i.cs = load i32, ptr %16, align 4, !tbaa !10   ; 3 uses
  store i32 %i.cs, ptr %i.g, align 4, !tbaa !10
  store i32 1, ptr @dchk1_.iy, align 4, !tbaa !10
  %.not179317 = icmp slt i32 %i.cs, 1
  br i1 %.not179317, label %._crit_edge321, label %.lr.ph320

.lr.ph320:                                        ; preds = %bb.r, %._crit_edge311
  %storemerge178318 = phi i32 [ %i.rj, %._crit_edge311 ], [ 1, %bb.r ] ; 3 uses
  %i.ct = sext i32 %storemerge178318 to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !10 ; 2 uses
  store i32 %i.cv, ptr @dchk1_.incy, align 4, !tbaa !10
  %i.cw = tail call i32 @llvm.abs.i32(i32 %i.cv, i1 true)
  %i.cx = load i32, ptr @dchk1_.ml, align 4, !tbaa !10
  %i.cy = mul nsw i32 %i.cx, %i.cw
  store i32 %i.cy, ptr @dchk1_.ly, align 4, !tbaa !10
  %i.cz = load i32, ptr %12, align 4, !tbaa !10   ; 16 uses
  store i32 1, ptr @dchk1_.ia, align 4, !tbaa !10
  %.not181307 = icmp slt i32 %i.cz, 1
  br i1 %.not181307, label %._crit_edge311, label %.lr.ph310

.lr.ph310:                                        ; preds = %.lr.ph320
  %i.da = load i32, ptr %14, align 4, !tbaa !10   ; 2 uses
  %i.db = icmp slt i32 %i.da, 1
  br i1 %i.db, label %iter.check, label %.lr.ph310.split

iter.check:                                       ; preds = %.lr.ph310
  store i32 1, ptr @dchk1_.ib, align 4, !tbaa !10
  %i.dc = add nuw i32 %i.cz, 1
  %min.iters.check = icmp ult i32 %i.cz, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.dd = add nsw i32 %i.cz, -1
  %i.de = zext i32 %i.dd to i64
  %i.df = shl nuw nsw i64 %i.de, 3
  %scevgep428 = getelementptr i8, ptr %scevgep, i64 %i.df
  %bound0 = icmp ugt ptr %scevgep428, @dchk1_.alpha
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check429 = icmp ult i32 %i.cz, 16
  br i1 %min.iters.check429, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dg = and i32 %i.cz, 12
  %n.vec = and i32 %i.cz, 2147483632              ; 4 uses
  %i.dh = or disjoint i32 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.di = icmp eq i32 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %i.dj = sext i32 %index to i64
  %i.dk = getelementptr [8 x i8], ptr %i.m, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dk, i64 128
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !14, !alias.scope !69
  store double %i.dm, ptr @dchk1_.alpha, align 8, !tbaa !14, !alias.scope !70, !noalias !69
  %cmp.n = icmp eq i32 %i.cz, %n.vec
  br i1 %cmp.n, label %._crit_edge311.split.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.dg, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec430 = and i32 %i.cz, 2147483644           ; 3 uses
  %i.dn = or disjoint i32 %n.vec430, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index431 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next433, %vec.epilog.vector.body ] ; 2 uses
  %index.next433 = add nuw i32 %index431, 4       ; 2 uses
  %i.do = icmp eq i32 %index.next433, %n.vec430
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !45

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.dp = sext i32 %index431 to i64
  %i.dq = getelementptr [8 x i8], ptr %i.m, i64 %i.dp
  %i.dr = getelementptr i8, ptr %i.dq, i64 32
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !14, !alias.scope !69
  store double %i.ds, ptr @dchk1_.alpha, align 8, !tbaa !14, !alias.scope !70, !noalias !69
  %cmp.n434 = icmp eq i32 %i.cz, %n.vec430
  br i1 %cmp.n434, label %._crit_edge311.split.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i32 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.dh, %vec.epilog.iter.check ], [ %i.dn, %vec.epilog.middle.block ] ; 4 uses
  %i.dt = add nuw i32 %i.cz, 1
  %i.du = sub i32 %i.dt, %.ph
  %i.dv = sub i32 %i.cz, %.ph
  %xtraiter538 = and i32 %i.du, 7                 ; 2 uses
  %lcmp.mod539.not = icmp eq i32 %xtraiter538, 0
  br i1 %lcmp.mod539.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.dw = phi i32 [ %i.ea, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter540 = phi i32 [ %prol.iter540.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.dx
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !14
  store double %i.dz, ptr @dchk1_.alpha, align 8, !tbaa !14
  %i.ea = add i32 %i.dw, 1                        ; 2 uses
  %prol.iter540.next = add i32 %prol.iter540, 1   ; 2 uses
  %prol.iter540.cmp.not = icmp eq i32 %prol.iter540.next, %xtraiter538
  br i1 %prol.iter540.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !46

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.unr = phi i32 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ea, %vec.epilog.scalar.ph.prol ]
  %i.eb = icmp ult i32 %i.dv, 7
  br i1 %i.eb, label %._crit_edge311.split.us, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.ec = phi i32 [ %i.fi, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ed
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !14
  store double %i.ef, ptr @dchk1_.alpha, align 8, !tbaa !14
  %i.eg = add i32 %i.ec, 1
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.eh
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !14
  store double %i.ej, ptr @dchk1_.alpha, align 8, !tbaa !14
  %i.ek = add i32 %i.ec, 2
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.el
  %i.en = load double, ptr %i.em, align 8, !tbaa !14
  store double %i.en, ptr @dchk1_.alpha, align 8, !tbaa !14
  %i.eo = add i32 %i.ec, 3
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ep
  %i.er = load double, ptr %i.eq, align 8, !tbaa !14
  store double %i.er, ptr @dchk1_.alpha, align 8, !tbaa !14
  %i.es = add i32 %i.ec, 4
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.et
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !14
  store double %i.ev, ptr @dchk1_.alpha, align 8, !tbaa !14
  %i.ew = add i32 %i.ec, 5
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ex
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !14
  store double %i.ez, ptr @dchk1_.alpha, align 8, !tbaa !14
  %i.fa = add i32 %i.ec, 6
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.fb
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !14
  store double %i.fd, ptr @dchk1_.alpha, align 8, !tbaa !14
  %i.fe = add i32 %i.ec, 7                        ; 2 uses
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ff
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !14
  store double %i.fh, ptr @dchk1_.alpha, align 8, !tbaa !14
  %i.fi = add i32 %i.ec, 8
  %exitcond370.not.7 = icmp eq i32 %i.fe, %i.cz
  br i1 %exitcond370.not.7, label %._crit_edge311.split.us, label %vec.epilog.scalar.ph, !llvm.loop !47

._crit_edge311.split.us:                          ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  store i32 %i.dc, ptr @dchk1_.ia, align 4, !tbaa !10
  br label %._crit_edge311

.lr.ph310.splitthread-pre-split:                  ; preds = %._crit_edge306
  %.pr409 = load i32, ptr %14, align 4, !tbaa !10
  br label %.lr.ph310.split

.lr.ph310.split:                                  ; preds = %.lr.ph310, %.lr.ph310.splitthread-pre-split
  %i.fj = phi i32 [ %.pr409, %.lr.ph310.splitthread-pre-split ], [ %i.da, %.lr.ph310 ] ; 2 uses
  %storemerge180308 = phi i32 [ %i.rh, %.lr.ph310.splitthread-pre-split ], [ 1, %.lr.ph310 ] ; 2 uses
  %i.fk = sext i32 %storemerge180308 to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.fk
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !14
  store double %i.fm, ptr @dchk1_.alpha, align 8, !tbaa !14
  store i32 1, ptr @dchk1_.ib, align 4, !tbaa !10
  %.not183302 = icmp slt i32 %i.fj, 1
  br i1 %.not183302, label %._crit_edge306, label %.lr.ph305

.lr.ph305:                                        ; preds = %.lr.ph310.split, %bb.ap
  %storemerge182303 = phi i32 [ %i.rf, %bb.ap ], [ 1, %.lr.ph310.split ]
  %i.fn = sext i32 %storemerge182303 to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.fn
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !14
  store double %i.fp, ptr @dchk1_.beta, align 8, !tbaa !14
  store double 0.000000e+00, ptr @dchk1_.transl, align 8, !tbaa !14
  %i.fq = load i32, ptr @dchk1_.incy, align 4, !tbaa !10
  %i.fr = tail call i32 @llvm.abs.i32(i32 %i.fq, i1 true)
  store i32 %i.fr, ptr %i.i, align 4, !tbaa !10
  %i.fs = load i32, ptr @dchk1_.ml, align 4, !tbaa !10
  %i.ft = add nsw i32 %i.fs, -1
  store i32 %i.ft, ptr %i.j, align 4, !tbaa !10
  %i.fu = call i32 @dmake_(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.41, ptr noundef nonnull @c__1, ptr noundef nonnull @dchk1_.ml, ptr noundef %26, ptr noundef nonnull @c__1, ptr noundef %27, ptr noundef nonnull %i.i, ptr noundef nonnull @c__0, ptr noundef nonnull %i.j, ptr noundef nonnull @dchk1_.reset, ptr noundef nonnull @dchk1_.transl, i32 poison, i32 poison, i32 poison) ; 0 uses
  %i.fv = load i32, ptr @dchk1_.nc, align 4, !tbaa !10
  %i.fw = add nsw i32 %i.fv, 1
  store i32 %i.fw, ptr @dchk1_.nc, align 4, !tbaa !10
  %i.fx = load i8, ptr @dchk1_.trans, align 1, !tbaa !11
  store i8 %i.fx, ptr @dchk1_.transs.0, align 1, !tbaa !11
  %i.fy = load i32, ptr @dchk1_.m, align 4, !tbaa !10
  store i32 %i.fy, ptr @dchk1_.ms, align 4, !tbaa !10
  %i.fz = load i32, ptr @dchk1_.n, align 4, !tbaa !10
  store i32 %i.fz, ptr @dchk1_.ns, align 4, !tbaa !10
  %i.ga = load i32, ptr @dchk1_.kl, align 4, !tbaa !10
  store i32 %i.ga, ptr @dchk1_.kls, align 4, !tbaa !10
  %i.gb = load i32, ptr @dchk1_.ku, align 4, !tbaa !10
  store i32 %i.gb, ptr @dchk1_.kus, align 4, !tbaa !10
  %i.gc = load double, ptr @dchk1_.alpha, align 8, !tbaa !14
  store double %i.gc, ptr @dchk1_.als, align 8, !tbaa !14
  %i.gd = load i32, ptr @dchk1_.laa, align 4, !tbaa !10 ; 6 uses
  %.not185283 = icmp slt i32 %i.gd, 1
  br i1 %.not185283, label %._crit_edge, label %iter.check512

iter.check512:                                    ; preds = %.lr.ph305
  %i.ge = add nuw i32 %i.gd, 1
  %wide.trip.count = zext i32 %i.ge to i64        ; 2 uses
  %i.gf = zext nneg i32 %i.gd to i64              ; 5 uses
  %min.iters.check497 = icmp ult i32 %i.gd, 4
  %or.cond = or i1 %min.iters.check497, %diff.check496
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check498

vector.main.loop.iter.check498:                   ; preds = %iter.check512
  %min.iters.check499 = icmp ult i32 %i.gd, 16
  br i1 %min.iters.check499, label %vec.epilog.ph516, label %vector.ph500

vector.ph500:                                     ; preds = %vector.main.loop.iter.check498
  %i.gg = and i64 %i.gf, 12
  %n.vec501 = and i64 %i.gf, 2147483632           ; 4 uses
  %i.gh = or disjoint i64 %n.vec501, 1
  br label %vector.body502

vector.body502:                                   ; preds = %vector.body502, %vector.ph500
  %index503 = phi i64 [ 0, %vector.ph500 ], [ %index.next508, %vector.body502 ] ; 3 uses
  %i.gi = getelementptr [8 x i8], ptr %21, i64 %index503 ; 4 uses
end_hunk_1
begin_hunk_2_@dchk2_:bb.a
  store i32 1, ptr @dchk2_.in, align 4, !tbaa !10
  %.not156362 = icmp slt i32 %i.ae, 1
  br i1 %.not156362, label %._crit_edge366, label %.lr.ph365

.lr.ph365:                                        ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 7
  %scevgep = getelementptr i8, ptr %13, i64 8
  %i.ag = sub i64 %i.a, %i.b
  %diff.check526 = icmp ugt i64 %i.ag, -128
  %i.ah = sub i64 %i.c, %i.d
  %diff.check496 = icmp ugt i64 %i.ah, -128
  %i.ai = sub i64 %i.e, %i.f
  %diff.check = icmp ugt i64 %i.ai, -128
  %bound1 = icmp ult ptr %13, getelementptr inbounds nuw (i8, ptr @dchk2_.alpha, i64 8)
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph365, %.loopexit300
  %storemerge363 = phi i32 [ 1, %.lr.ph365 ], [ %i.ss, %.loopexit300 ]
  %i.aj = sext i32 %storemerge363 to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !10
  store i32 %i.al, ptr @dchk2_.n, align 4, !tbaa !10
  %i.am = load i32, ptr @dchk2_.banded, align 4, !tbaa !10
  %.not157 = icmp eq i32 %i.am, 0
  br i1 %.not157, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  store i32 1, ptr @dchk2_.ik, align 4, !tbaa !10
  br label %.lr.ph361.preheader

bb.d:                                             ; preds = %bb.c
  %i.an = load i32, ptr %10, align 4, !tbaa !10   ; 2 uses
  store i32 1, ptr @dchk2_.ik, align 4, !tbaa !10
  %.not160358 = icmp slt i32 %i.an, 1
  br i1 %.not160358, label %.loopexit300, label %.lr.ph361.preheader

.lr.ph361.preheader:                              ; preds = %.thread, %bb.d
  %storemerge158438 = phi i32 [ 1, %.thread ], [ %i.an, %bb.d ]
  br label %.lr.ph361

.lr.ph361:                                        ; preds = %.lr.ph361.preheader, %.loopexit299
  %storemerge159359 = phi i32 [ %i.sq, %.loopexit299 ], [ 1, %.lr.ph361.preheader ] ; 2 uses
  %i.ao = load i32, ptr @dchk2_.banded, align 4, !tbaa !10
  %.not161 = icmp eq i32 %i.ao, 0                 ; 2 uses
  br i1 %.not161, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph361
  %i.ap = sext i32 %storemerge159359 to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !10
  %.pre = load i32, ptr @dchk2_.n, align 4
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph361
  %i.as = load i32, ptr @dchk2_.n, align 4, !tbaa !10 ; 2 uses
  %i.at = add nsw i32 %i.as, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.au = phi i32 [ %i.as, %bb.f ], [ %.pre, %bb.e ] ; 5 uses
  %storemerge162 = phi i32 [ %i.at, %bb.f ], [ %i.ar, %bb.e ] ; 2 uses
  store i32 %storemerge162, ptr @dchk2_.k, align 4, !tbaa !10
  %i.av = add nsw i32 %storemerge162, 1
  %storemerge164 = select i1 %.not161, i32 %i.au, i32 %i.av ; 4 uses
  store i32 %storemerge164, ptr @dchk2_.lda, align 4, !tbaa !10
  %i.aw = load i32, ptr %18, align 4, !tbaa !10   ; 2 uses
  %i.ax = icmp slt i32 %storemerge164, %i.aw
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = add nsw i32 %storemerge164, 1           ; 2 uses
  store i32 %i.ay, ptr @dchk2_.lda, align 4, !tbaa !10
  %.pre399 = load i32, ptr %18, align 4, !tbaa !10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.az = phi i32 [ %.pre399, %bb.h ], [ %i.aw, %bb.g ]
  %i.ba = phi i32 [ %i.ay, %bb.h ], [ %storemerge164, %bb.g ] ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, %i.az
  br i1 %i.bb, label %.loopexit299, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = load i32, ptr @dchk2_.packed, align 4, !tbaa !10
  %.not165 = icmp eq i32 %i.bc, 0
  br i1 %.not165, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = add nsw i32 %i.au, 1
  %i.be = mul nsw i32 %i.bd, %i.au
  %i.bf = sdiv i32 %i.be, 2
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bg = mul nsw i32 %i.ba, %i.au
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %storemerge166 = phi i32 [ %i.bg, %bb.l ], [ %i.bf, %bb.k ]
  store i32 %storemerge166, ptr @dchk2_.laa, align 4, !tbaa !10
  %i.bh = icmp slt i32 %i.au, 1
  %i.bi = zext i1 %i.bh to i32
  store i32 %i.bi, ptr @dchk2_.null, align 4, !tbaa !10
  store i32 1, ptr @dchk2_.ic, align 4, !tbaa !10
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge356
  %storemerge167357 = phi i32 [ 1, %bb.m ], [ %i.sn, %._crit_edge356 ] ; 2 uses
  %i.bj = sext i32 %storemerge167357 to i64
  %i.bk = getelementptr i8, ptr @dchk6_.ich, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 -1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !11  ; 2 uses
  store i8 %i.bm, ptr @dchk2_.uplo, align 1, !tbaa !11
  %i.bn = icmp eq i8 %i.bm, 85
  br i1 %i.bn, label %.preheader.preheader, label %.preheader297.preheader

.preheader297.preheader:                          ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) @dchk2_.cuplo, ptr noundef nonnull align 1 dereferenceable(14) @.str.56, i64 14, i1 false), !tbaa !11
  br label %.critedge

.preheader.preheader:                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) @dchk2_.cuplo, ptr noundef nonnull align 1 dereferenceable(14) @.str.55, i64 14, i1 false), !tbaa !11
  br label %.critedge

.critedge:                                        ; preds = %.preheader297.preheader, %.preheader.preheader
  store double 0.000000e+00, ptr @dchk2_.transl, align 8, !tbaa !14
  %i.bo = tail call i32 @dmake_(ptr noundef nonnull %i.af, ptr noundef nonnull @dchk2_.uplo, ptr noundef nonnull @.str.41, ptr noundef nonnull @dchk2_.n, ptr noundef nonnull @dchk2_.n, ptr noundef %20, ptr noundef nonnull %18, ptr noundef %21, ptr noundef nonnull @dchk2_.lda, ptr noundef nonnull @dchk2_.k, ptr noundef nonnull @dchk2_.k, ptr noundef nonnull @dchk2_.reset, ptr noundef nonnull @dchk2_.transl, i32 poison, i32 poison, i32 poison) ; 0 uses
  %i.bp = load i32, ptr %16, align 4, !tbaa !10   ; 2 uses
  store i32 1, ptr @dchk2_.ix, align 4, !tbaa !10
  %.not171353 = icmp slt i32 %i.bp, 1
  br i1 %.not171353, label %._crit_edge356, label %.lr.ph355

.lr.ph355:                                        ; preds = %.critedge, %._crit_edge350
  %storemerge170354 = phi i32 [ %i.sl, %._crit_edge350 ], [ 1, %.critedge ] ; 2 uses
  %i.bq = sext i32 %storemerge170354 to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !10 ; 2 uses
  store i32 %i.bs, ptr @dchk2_.incx, align 4, !tbaa !10
  %i.bt = tail call i32 @llvm.abs.i32(i32 %i.bs, i1 true) ; 2 uses
  %i.bu = load i32, ptr @dchk2_.n, align 4, !tbaa !10 ; 2 uses
  %i.bv = mul nsw i32 %i.bu, %i.bt
  store i32 %i.bv, ptr @dchk2_.lx, align 4, !tbaa !10
  store double 5.000000e-01, ptr @dchk2_.transl, align 8, !tbaa !14
  store i32 %i.bt, ptr %i.g, align 4, !tbaa !10
  %i.bw = add nsw i32 %i.bu, -1                   ; 2 uses
  store i32 %i.bw, ptr %i.h, align 4, !tbaa !10
  %i.bx = call i32 @dmake_(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.41, ptr noundef nonnull @c__1, ptr noundef nonnull @dchk2_.n, ptr noundef %23, ptr noundef nonnull @c__1, ptr noundef %24, ptr noundef nonnull %i.g, ptr noundef nonnull @c__0, ptr noundef nonnull %i.h, ptr noundef nonnull @dchk2_.reset, ptr noundef nonnull @dchk2_.transl, i32 poison, i32 poison, i32 poison) ; 0 uses
  %i.by = load i32, ptr @dchk2_.n, align 4, !tbaa !10 ; 2 uses
  %i.bz = icmp sgt i32 %i.by, 1
  br i1 %i.bz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph355
  %i.ca = lshr i32 %i.by, 1                       ; 2 uses
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.cb
  store double 0.000000e+00, ptr %i.cc, align 8, !tbaa !14
  %i.cd = load i32, ptr @dchk2_.incx, align 4, !tbaa !10
  %i.ce = tail call i32 @llvm.abs.i32(i32 %i.cd, i1 true)
  %i.cf = add nsw i32 %i.ca, -1
  %i.cg = mul nsw i32 %i.ce, %i.cf
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr [8 x i8], ptr %i.v, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  store double 0.000000e+00, ptr %i.cj, align 8, !tbaa !14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph355
  %i.ck = load i32, ptr %16, align 4, !tbaa !10   ; 3 uses
  store i32 %i.ck, ptr %i.g, align 4, !tbaa !10
  store i32 1, ptr @dchk2_.iy, align 4, !tbaa !10
  %.not173346 = icmp slt i32 %i.ck, 1
  br i1 %.not173346, label %._crit_edge350, label %.lr.ph349

.lr.ph349:                                        ; preds = %bb.p, %._crit_edge340
  %storemerge172347 = phi i32 [ %i.sj, %._crit_edge340 ], [ 1, %bb.p ] ; 3 uses
  %i.cl = sext i32 %storemerge172347 to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !10 ; 2 uses
  store i32 %i.cn, ptr @dchk2_.incy, align 4, !tbaa !10
  %i.co = tail call i32 @llvm.abs.i32(i32 %i.cn, i1 true)
  %i.cp = load i32, ptr @dchk2_.n, align 4, !tbaa !10
  %i.cq = mul nsw i32 %i.cp, %i.co
  store i32 %i.cq, ptr @dchk2_.ly, align 4, !tbaa !10
  %i.cr = load i32, ptr %12, align 4, !tbaa !10   ; 16 uses
  store i32 1, ptr @dchk2_.ia, align 4, !tbaa !10
  %.not175336 = icmp slt i32 %i.cr, 1
  br i1 %.not175336, label %._crit_edge340, label %.lr.ph339

.lr.ph339:                                        ; preds = %.lr.ph349
  %i.cs = load i32, ptr %14, align 4, !tbaa !10   ; 2 uses
  %i.ct = icmp slt i32 %i.cs, 1
  br i1 %i.ct, label %iter.check, label %.lr.ph339.split

iter.check:                                       ; preds = %.lr.ph339
  store i32 1, ptr @dchk2_.ib, align 4, !tbaa !10
  %i.cu = add nuw i32 %i.cr, 1
  %min.iters.check = icmp ult i32 %i.cr, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cv = add nsw i32 %i.cr, -1
  %i.cw = zext i32 %i.cv to i64
  %i.cx = shl nuw nsw i64 %i.cw, 3
  %scevgep458 = getelementptr i8, ptr %scevgep, i64 %i.cx
  %bound0 = icmp ugt ptr %scevgep458, @dchk2_.alpha
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check459 = icmp ult i32 %i.cr, 16
  br i1 %min.iters.check459, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cy = and i32 %i.cr, 12
  %n.vec = and i32 %i.cr, 2147483632              ; 4 uses
  %i.cz = or disjoint i32 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.da = icmp eq i32 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %i.db = sext i32 %index to i64
  %i.dc = getelementptr [8 x i8], ptr %i.m, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 128
  %i.de = load double, ptr %i.dd, align 8, !tbaa !14, !alias.scope !98
  store double %i.de, ptr @dchk2_.alpha, align 8, !tbaa !14, !alias.scope !99, !noalias !98
  %cmp.n = icmp eq i32 %i.cr, %n.vec
  br i1 %cmp.n, label %._crit_edge340.split.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.cy, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec460 = and i32 %i.cr, 2147483644           ; 3 uses
  %i.df = or disjoint i32 %n.vec460, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index461 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next463, %vec.epilog.vector.body ] ; 2 uses
  %index.next463 = add nuw i32 %index461, 4       ; 2 uses
  %i.dg = icmp eq i32 %index.next463, %n.vec460
  br i1 %i.dg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !75

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.dh = sext i32 %index461 to i64
  %i.di = getelementptr [8 x i8], ptr %i.m, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 32
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !14, !alias.scope !98
  store double %i.dk, ptr @dchk2_.alpha, align 8, !tbaa !14, !alias.scope !99, !noalias !98
  %cmp.n464 = icmp eq i32 %i.cr, %n.vec460
  br i1 %cmp.n464, label %._crit_edge340.split.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i32 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.cz, %vec.epilog.iter.check ], [ %i.df, %vec.epilog.middle.block ] ; 4 uses
  %i.dl = add nuw i32 %i.cr, 1
  %i.dm = sub i32 %i.dl, %.ph
  %i.dn = sub i32 %i.cr, %.ph
  %xtraiter568 = and i32 %i.dm, 7                 ; 2 uses
  %lcmp.mod569.not = icmp eq i32 %xtraiter568, 0
  br i1 %lcmp.mod569.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.do = phi i32 [ %i.ds, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter570 = phi i32 [ %prol.iter570.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.dp
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !14
  store double %i.dr, ptr @dchk2_.alpha, align 8, !tbaa !14
  %i.ds = add i32 %i.do, 1                        ; 2 uses
  %prol.iter570.next = add i32 %prol.iter570, 1   ; 2 uses
  %prol.iter570.cmp.not = icmp eq i32 %prol.iter570.next, %xtraiter568
  br i1 %prol.iter570.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !76

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.unr = phi i32 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ds, %vec.epilog.scalar.ph.prol ]
  %i.dt = icmp ult i32 %i.dn, 7
  br i1 %i.dt, label %._crit_edge340.split.us, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.du = phi i32 [ %i.fa, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !14
  store double %i.dx, ptr @dchk2_.alpha, align 8, !tbaa !14
  %i.dy = add i32 %i.du, 1
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.dz
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !14
  store double %i.eb, ptr @dchk2_.alpha, align 8, !tbaa !14
  %i.ec = add i32 %i.du, 2
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ed
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !14
  store double %i.ef, ptr @dchk2_.alpha, align 8, !tbaa !14
  %i.eg = add i32 %i.du, 3
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.eh
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !14
  store double %i.ej, ptr @dchk2_.alpha, align 8, !tbaa !14
  %i.ek = add i32 %i.du, 4
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.el
  %i.en = load double, ptr %i.em, align 8, !tbaa !14
  store double %i.en, ptr @dchk2_.alpha, align 8, !tbaa !14
  %i.eo = add i32 %i.du, 5
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ep
  %i.er = load double, ptr %i.eq, align 8, !tbaa !14
  store double %i.er, ptr @dchk2_.alpha, align 8, !tbaa !14
  %i.es = add i32 %i.du, 6
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.et
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !14
  store double %i.ev, ptr @dchk2_.alpha, align 8, !tbaa !14
  %i.ew = add i32 %i.du, 7                        ; 2 uses
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ex
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !14
  store double %i.ez, ptr @dchk2_.alpha, align 8, !tbaa !14
  %i.fa = add i32 %i.du, 8
  %exitcond398.not.7 = icmp eq i32 %i.ew, %i.cr
  br i1 %exitcond398.not.7, label %._crit_edge340.split.us, label %vec.epilog.scalar.ph, !llvm.loop !77

._crit_edge340.split.us:                          ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  store i32 %i.cu, ptr @dchk2_.ia, align 4, !tbaa !10
  br label %._crit_edge340

.lr.ph339.splitthread-pre-split:                  ; preds = %._crit_edge335
  %.pr439 = load i32, ptr %14, align 4, !tbaa !10
  br label %.lr.ph339.split

.lr.ph339.split:                                  ; preds = %.lr.ph339, %.lr.ph339.splitthread-pre-split
  %i.fb = phi i32 [ %.pr439, %.lr.ph339.splitthread-pre-split ], [ %i.cs, %.lr.ph339 ] ; 2 uses
  %storemerge174337 = phi i32 [ %i.sh, %.lr.ph339.splitthread-pre-split ], [ 1, %.lr.ph339 ] ; 2 uses
  %i.fc = sext i32 %storemerge174337 to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.fc
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !14
  store double %i.fe, ptr @dchk2_.alpha, align 8, !tbaa !14
  store i32 1, ptr @dchk2_.ib, align 4, !tbaa !10
  %.not177331 = icmp slt i32 %i.fb, 1
  br i1 %.not177331, label %._crit_edge335, label %.lr.ph334

.lr.ph334:                                        ; preds = %.lr.ph339.split, %bb.aw
  %storemerge176332 = phi i32 [ %i.sf, %bb.aw ], [ 1, %.lr.ph339.split ]
  %i.ff = sext i32 %storemerge176332 to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ff
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !14
  store double %i.fh, ptr @dchk2_.beta, align 8, !tbaa !14
  store double 0.000000e+00, ptr @dchk2_.transl, align 8, !tbaa !14
  %i.fi = load i32, ptr @dchk2_.incy, align 4, !tbaa !10
  %i.fj = tail call i32 @llvm.abs.i32(i32 %i.fi, i1 true)
  store i32 %i.fj, ptr %i.i, align 4, !tbaa !10
  %i.fk = load i32, ptr @dchk2_.n, align 4, !tbaa !10
  %i.fl = add nsw i32 %i.fk, -1
  store i32 %i.fl, ptr %i.j, align 4, !tbaa !10
  %i.fm = call i32 @dmake_(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.41, ptr noundef nonnull @c__1, ptr noundef nonnull @dchk2_.n, ptr noundef %26, ptr noundef nonnull @c__1, ptr noundef %27, ptr noundef nonnull %i.i, ptr noundef nonnull @c__0, ptr noundef nonnull %i.j, ptr noundef nonnull @dchk2_.reset, ptr noundef nonnull @dchk2_.transl, i32 poison, i32 poison, i32 poison) ; 0 uses
  %i.fn = load i32, ptr @dchk2_.nc, align 4, !tbaa !10
  %i.fo = add nsw i32 %i.fn, 1
  store i32 %i.fo, ptr @dchk2_.nc, align 4, !tbaa !10
  %i.fp = load i8, ptr @dchk2_.uplo, align 1, !tbaa !11
  store i8 %i.fp, ptr @dchk2_.uplos.0, align 1, !tbaa !11
  %i.fq = load i32, ptr @dchk2_.n, align 4, !tbaa !10
  store i32 %i.fq, ptr @dchk2_.ns, align 4, !tbaa !10
  %i.fr = load i32, ptr @dchk2_.k, align 4, !tbaa !10
  store i32 %i.fr, ptr @dchk2_.ks, align 4, !tbaa !10
  %i.fs = load double, ptr @dchk2_.alpha, align 8, !tbaa !14
  store double %i.fs, ptr @dchk2_.als, align 8, !tbaa !14
  %i.ft = load i32, ptr @dchk2_.laa, align 4, !tbaa !10 ; 6 uses
  %.not179312 = icmp slt i32 %i.ft, 1
  br i1 %.not179312, label %._crit_edge, label %iter.check542

iter.check542:                                    ; preds = %.lr.ph334
  %i.fu = add nuw i32 %i.ft, 1
  %wide.trip.count = zext i32 %i.fu to i64        ; 2 uses
  %i.fv = zext nneg i32 %i.ft to i64              ; 5 uses
  %min.iters.check527 = icmp ult i32 %i.ft, 4
  %or.cond = or i1 %min.iters.check527, %diff.check526
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check528

vector.main.loop.iter.check528:                   ; preds = %iter.check542
  %min.iters.check529 = icmp ult i32 %i.ft, 16
  br i1 %min.iters.check529, label %vec.epilog.ph546, label %vector.ph530

vector.ph530:                                     ; preds = %vector.main.loop.iter.check528
  %i.fw = and i64 %i.fv, 12
  %n.vec531 = and i64 %i.fv, 2147483632           ; 4 uses
  %i.fx = or disjoint i64 %n.vec531, 1
  br label %vector.body532

vector.body532:                                   ; preds = %vector.body532, %vector.ph530
  %index533 = phi i64 [ 0, %vector.ph530 ], [ %index.next538, %vector.body532 ] ; 3 uses
  %i.fy = getelementptr [8 x i8], ptr %21, i64 %index533 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 96
  %wide.load534 = load <4 x double>, ptr %i.fy, align 8, !tbaa !14
end_hunk_2
