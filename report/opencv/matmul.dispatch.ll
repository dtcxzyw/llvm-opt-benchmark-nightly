Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matmul.dispatch?download=true
inline.NumInlined: 1374
inline.NumDeleted: 190
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 210
loop-unroll.NumUnrolled: 219
begin_hunk_0_@_ZN2cv12cpu_baselineL16GEMMBlockMul_32fEPKfmS2_mPdmNS_5Size_IiEES5_i:bb.a

.lr.ph.us.i.prol:                                 ; preds = %.lr.ph.us.i.preheader145, %.lr.ph.us.i.prol
  %indvars.iv353.i.prol = phi i64 [ %indvars.iv.next354.i.prol, %.lr.ph.us.i.prol ], [ %indvars.iv353.i.ph, %.lr.ph.us.i.preheader145 ] ; 3 uses
  %prol.iter152 = phi i64 [ %prol.iter152.next, %.lr.ph.us.i.prol ], [ 0, %.lr.ph.us.i.preheader145 ]
  %i.du = mul i64 %indvars.iv353.i.prol, %.0165.i
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.0168227.us.i, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !22
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %indvars.iv353.i.prol
  store float %i.dw, ptr %i.dx, align 4, !tbaa !22
  %indvars.iv.next354.i.prol = add nuw nsw i64 %indvars.iv353.i.prol, 1 ; 2 uses
  %prol.iter152.next = add i64 %prol.iter152, 1   ; 2 uses
  %prol.iter152.cmp.not = icmp eq i64 %prol.iter152.next, %xtraiter150
  br i1 %prol.iter152.cmp.not, label %.lr.ph.us.i.prol.loopexit, label %.lr.ph.us.i.prol, !llvm.loop !895

.lr.ph.us.i.prol.loopexit:                        ; preds = %.lr.ph.us.i.prol, %.lr.ph.us.i.preheader145
  %indvars.iv353.i.unr = phi i64 [ %indvars.iv353.i.ph, %.lr.ph.us.i.preheader145 ], [ %indvars.iv.next354.i.prol, %.lr.ph.us.i.prol ]
  %i.dy = sub nsw i64 %indvars.iv353.i.ph, %wide.trip.count356.i
  %i.dz = icmp ugt i64 %i.dy, -4
  br i1 %i.dz, label %.lr.ph217.us.i, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.prol.loopexit, %.lr.ph.us.i
  %indvars.iv353.i = phi i64 [ %indvars.iv.next354.i.3, %.lr.ph.us.i ], [ %indvars.iv353.i.unr, %.lr.ph.us.i.prol.loopexit ] ; 6 uses
  %i.ea = mul i64 %indvars.iv353.i, %.0165.i
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.0168227.us.i, i64 %i.ea
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !22
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %indvars.iv353.i
  store float %i.ec, ptr %i.ed, align 4, !tbaa !22
  %indvars.iv.next354.i = add nuw nsw i64 %indvars.iv353.i, 1 ; 2 uses
  %i.ee = mul i64 %indvars.iv.next354.i, %.0165.i
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.0168227.us.i, i64 %i.ee
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !22
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %indvars.iv.next354.i
  store float %i.eg, ptr %i.eh, align 4, !tbaa !22
  %indvars.iv.next354.i.1 = add nuw nsw i64 %indvars.iv353.i, 2 ; 2 uses
  %i.ei = mul i64 %indvars.iv.next354.i.1, %.0165.i
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.0168227.us.i, i64 %i.ei
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !22
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %indvars.iv.next354.i.1
  store float %i.ek, ptr %i.el, align 4, !tbaa !22
  %indvars.iv.next354.i.2 = add nuw nsw i64 %indvars.iv353.i, 3 ; 2 uses
  %i.em = mul i64 %indvars.iv.next354.i.2, %.0165.i
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.0168227.us.i, i64 %i.em
  %i.eo = load float, ptr %i.en, align 4, !tbaa !22
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %indvars.iv.next354.i.2
  store float %i.eo, ptr %i.ep, align 4, !tbaa !22
  %indvars.iv.next354.i.3 = add nuw nsw i64 %indvars.iv353.i, 4 ; 2 uses
  %exitcond357.not.i.3 = icmp eq i64 %indvars.iv.next354.i.3, %wide.trip.count356.i
  br i1 %exitcond357.not.i.3, label %.lr.ph217.us.i, label %.lr.ph.us.i, !llvm.loop !896

.lr.ph217.us.i:                                   ; preds = %.lr.ph.us.i.prol.loopexit, %.lr.ph.us.i, %middle.block91, %.lr.ph229.split.us.split.i
  %.0151.us.i = phi ptr [ %.0168227.us.i, %.lr.ph229.split.us.split.i ], [ %.0167.i, %middle.block91 ], [ %.0167.i, %.lr.ph.us.i ], [ %.0167.i, %.lr.ph.us.i.prol.loopexit ] ; 6 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.0151.us.i, i64 %i.x
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.us.i, %.lr.ph217.us.i
  %indvars.iv364.i = phi i64 [ %indvars.iv.next365.i, %._crit_edge.us.i ], [ 0, %.lr.ph217.us.i ] ; 3 uses
  %.0164215.us231.i = phi ptr [ %i.gq, %._crit_edge.us.i ], [ %2, %.lr.ph217.us.i ] ; 7 uses
  br i1 %.not186.i, label %.lr.ph207.us.i.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.i, i64 %indvars.iv364.i
  %i.es = load double, ptr %i.er, align 8, !tbaa !29
  %i.et = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.es, i64 0
  br label %.lr.ph207.us.i.preheader

.lr.ph207.us.i.preheader:                         ; preds = %bb.g, %bb.f
  %.ph144 = phi <2 x double> [ zeroinitializer, %bb.f ], [ %i.et, %bb.g ] ; 2 uses
  br i1 %i.ac, label %.lr.ph207.us.i.epil.preheader, label %.lr.ph207.us.i

.lr.ph207.us.i:                                   ; preds = %.lr.ph207.us.i.preheader, %.lr.ph207.us.i
  %indvars.iv358.i = phi i64 [ %indvars.iv.next359.i.1, %.lr.ph207.us.i ], [ 0, %.lr.ph207.us.i.preheader ] ; 4 uses
  %i.eu = phi <2 x double> [ %i.fi, %.lr.ph207.us.i ], [ %.ph144, %.lr.ph207.us.i.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph207.us.i ], [ 0, %.lr.ph207.us.i.preheader ]
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.0151.us.i, i64 %indvars.iv358.i
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.0164215.us231.i, i64 %indvars.iv358.i
  %i.ex = load <2 x float>, ptr %i.ev, align 4, !tbaa !22
  %i.ey = fpext <2 x float> %i.ex to <2 x double>
  %i.ez = load <2 x float>, ptr %i.ew, align 4, !tbaa !22
  %i.fa = fpext <2 x float> %i.ez to <2 x double>
  %i.fb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> %i.fa, <2 x double> %i.eu)
  %indvars.iv.next359.i = or disjoint i64 %indvars.iv358.i, 2 ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.0151.us.i, i64 %indvars.iv.next359.i
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.0164215.us231.i, i64 %indvars.iv.next359.i
  %i.fe = load <2 x float>, ptr %i.fc, align 4, !tbaa !22
  %i.ff = fpext <2 x float> %i.fe to <2 x double>
  %i.fg = load <2 x float>, ptr %i.fd, align 4, !tbaa !22
  %i.fh = fpext <2 x float> %i.fg to <2 x double>
  %i.fi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ff, <2 x double> %i.fh, <2 x double> %i.fb) ; 3 uses
  %indvars.iv.next359.i.1 = add nuw nsw i64 %indvars.iv358.i, 4 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..preheader197_crit_edge.us.i.unr-lcssa, label %.lr.ph207.us.i, !llvm.loop !897

..preheader197_crit_edge.us.i.unr-lcssa:          ; preds = %.lr.ph207.us.i
  br i1 %lcmp.mod154.not, label %..preheader197_crit_edge.us.i, label %.lr.ph207.us.i.epil.preheader

.lr.ph207.us.i.epil.preheader:                    ; preds = %..preheader197_crit_edge.us.i.unr-lcssa, %.lr.ph207.us.i.preheader
  %indvars.iv358.i.epil.init = phi i64 [ 0, %.lr.ph207.us.i.preheader ], [ %indvars.iv.next359.i.1, %..preheader197_crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.epil.init = phi <2 x double> [ %.ph144, %.lr.ph207.us.i.preheader ], [ %i.fi, %..preheader197_crit_edge.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod156)
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.0151.us.i, i64 %indvars.iv358.i.epil.init
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.0164215.us231.i, i64 %indvars.iv358.i.epil.init
  %i.fl = load <2 x float>, ptr %i.fj, align 4, !tbaa !22
  %i.fm = fpext <2 x float> %i.fl to <2 x double>
  %i.fn = load <2 x float>, ptr %i.fk, align 4, !tbaa !22
  %i.fo = fpext <2 x float> %i.fn to <2 x double>
  %i.fp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fm, <2 x double> %i.fo, <2 x double> %.epil.init)
  br label %..preheader197_crit_edge.us.i

..preheader197_crit_edge.us.i:                    ; preds = %..preheader197_crit_edge.us.i.unr-lcssa, %.lr.ph207.us.i.epil.preheader
  %.lcssa147 = phi <2 x double> [ %i.fi, %..preheader197_crit_edge.us.i.unr-lcssa ], [ %i.fp, %.lr.ph207.us.i.epil.preheader ] ; 2 uses
  %i.fq = extractelement <2 x double> %.lcssa147, i64 0 ; 3 uses
  br i1 %i.y, label %.lr.ph212.us.i.preheader, label %._crit_edge.us.i

.lr.ph212.us.i.preheader:                         ; preds = %..preheader197_crit_edge.us.i
  br i1 %lcmp.mod158.not, label %.lr.ph212.us.i.prol.loopexit, label %.lr.ph212.us.i.prol

.lr.ph212.us.i.prol:                              ; preds = %.lr.ph212.us.i.preheader
  %i.fr = load float, ptr %i.eq, align 4, !tbaa !22
  %i.fs = fpext float %i.fr to double
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.0164215.us231.i, i64 %i.x
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !22
  %i.fv = fpext float %i.fu to double
  %i.fw = call double @llvm.fmuladd.f64(double %i.fs, double %i.fv, double %i.fq) ; 2 uses
  br label %.lr.ph212.us.i.prol.loopexit

.lr.ph212.us.i.prol.loopexit:                     ; preds = %.lr.ph212.us.i.prol, %.lr.ph212.us.i.preheader
  %indvars.iv361.i.unr = phi i64 [ %i.x, %.lr.ph212.us.i.preheader ], [ %indvars.iv.next362.i.prol, %.lr.ph212.us.i.prol ]
  %.1163211.us.i.unr = phi double [ %i.fq, %.lr.ph212.us.i.preheader ], [ %i.fw, %.lr.ph212.us.i.prol ]
  %.lcssa148.unr = phi double [ poison, %.lr.ph212.us.i.preheader ], [ %i.fw, %.lr.ph212.us.i.prol ]
  br i1 %i.ad, label %._crit_edge.us.i, label %.lr.ph212.us.i

.lr.ph212.us.i:                                   ; preds = %.lr.ph212.us.i.prol.loopexit, %.lr.ph212.us.i
  %indvars.iv361.i = phi i64 [ %indvars.iv.next362.i.1, %.lr.ph212.us.i ], [ %indvars.iv361.i.unr, %.lr.ph212.us.i.prol.loopexit ] ; 4 uses
  %.1163211.us.i = phi double [ %i.gk, %.lr.ph212.us.i ], [ %.1163211.us.i.unr, %.lr.ph212.us.i.prol.loopexit ]
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.0151.us.i, i64 %indvars.iv361.i
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !22
  %i.fz = fpext float %i.fy to double
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.0164215.us231.i, i64 %indvars.iv361.i
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !22
  %i.gc = fpext float %i.gb to double
  %i.gd = call double @llvm.fmuladd.f64(double %i.fz, double %i.gc, double %.1163211.us.i)
  %indvars.iv.next362.i = add nuw nsw i64 %indvars.iv361.i, 1 ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.0151.us.i, i64 %indvars.iv.next362.i
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !22
  %i.gg = fpext float %i.gf to double
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.0164215.us231.i, i64 %indvars.iv.next362.i
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !22
  %i.gj = fpext float %i.gi to double
  %i.gk = call double @llvm.fmuladd.f64(double %i.gg, double %i.gj, double %i.gd) ; 2 uses
  %indvars.iv.next362.i.1 = add nuw nsw i64 %indvars.iv361.i, 2 ; 2 uses
  %i.gl = trunc nuw i64 %indvars.iv.next362.i.1 to i32
  %i.gm = icmp slt i32 %i.gl, %.0170.i
  br i1 %i.gm, label %.lr.ph212.us.i, label %._crit_edge.us.i, !llvm.loop !898

._crit_edge.us.i:                                 ; preds = %.lr.ph212.us.i.prol.loopexit, %.lr.ph212.us.i, %..preheader197_crit_edge.us.i
  %.1163.lcssa.us.i = phi double [ %i.fq, %..preheader197_crit_edge.us.i ], [ %.lcssa148.unr, %.lr.ph212.us.i.prol.loopexit ], [ %i.gk, %.lr.ph212.us.i ]
  %i.gn = extractelement <2 x double> %.lcssa147, i64 1
  %i.go = fadd double %i.gn, %.1163.lcssa.us.i
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.i, i64 %indvars.iv364.i
  store double %i.go, ptr %i.gp, align 8, !tbaa !29
  %indvars.iv.next365.i = add nuw nsw i64 %indvars.iv364.i, 1 ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %.0164215.us231.i, i64 %i.e
  %exitcond368.not.i = icmp eq i64 %indvars.iv.next365.i, %wide.trip.count367.i
  br i1 %exitcond368.not.i, label %._crit_edge218.split.us233.i, label %bb.f, !llvm.loop !888

._crit_edge218.split.us233.i:                     ; preds = %._crit_edge.us.i
  %i.gr = add nuw nsw i32 %.0176226.us.i, 1       ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.0168227.us.i, i64 %.0166.i
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.i, i64 %i.f
  %exitcond369.not.i = icmp eq i32 %i.gr, %.sroa.3.0.extract.trunc.i
  br i1 %exitcond369.not.i, label %.loopexit196.i, label %.lr.ph229.split.us.split.i, !llvm.loop !889

.lr.ph229.split.i:                                ; preds = %.lr.ph229.i
  %i.gu = icmp slt i32 %.0170.i, 1
  %brmerge321.i = select i1 %.not185.i, i1 true, i1 %i.gu
  br i1 %brmerge321.i, label %.loopexit196.i, label %.preheader198.preheader.i

.preheader198.preheader.i:                        ; preds = %.lr.ph229.split.i
  %wide.trip.count.i = and i64 %.0170.in.i, 2147483647 ; 4 uses
  %min.iters.check = icmp samesign ugt i64 %wide.trip.count.i, 7
  %ident.check.not = icmp eq i64 %.0165.i, 1
  %or.cond132 = and i1 %min.iters.check, %ident.check.not
  %n.vec = and i64 %.0170.in.i, 2147483640        ; 3 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  %xtraiter = and i64 %.0170.in.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader198.i

.preheader195.i:                                  ; preds = %_ZN2cv10AutoBufferIfLm264EE8allocateEm.exit.i
  br i1 %i.r, label %.lr.ph316.i, label %.loopexit196.i

.lr.ph316.i:                                      ; preds = %.preheader195.i
  %.not181.i = icmp eq ptr %.0167.i, null         ; 2 uses
  %i.gv = icmp slt i32 %.0170.i, 1
  %i.gw = add i32 %.sroa.0.0.extract.trunc.i, -4  ; 4 uses
  %.not182285.i = icmp slt i32 %.sroa.0.0.extract.trunc.i, 4
  %.not184.i = icmp eq i32 %i.c, 0                ; 4 uses
  %i.gx = icmp sgt i32 %.0170.i, 0                ; 2 uses
  %i.gy = sext i32 %i.gw to i64
  %i.gz = zext nneg i32 %i.gw to i64
  %i.ha = shl nuw nsw i64 %i.gz, 3
  %i.hb = and i64 %i.ha, 17179869152
  %i.hc = add nuw nsw i64 %i.hb, 32
  %i.hd = and i32 %i.gw, -4
  %i.he = add i32 %i.hd, 4
  %brmerge323.i = select i1 %.not181.i, i1 true, i1 %i.gv
  %wide.trip.count439.i = and i64 %.0170.in.i, 2147483647 ; 4 uses
  %i.hf = call i32 @llvm.smax.i32(i32 %i.gw, i32 3)
  %i.hg = and i32 %i.hf, 2147483644
  %i.hh = add nuw i32 %i.hg, 4
  %i.hi = add nsw i64 %wide.trip.count439.i, -1   ; 3 uses
  %min.iters.check121 = icmp samesign ugt i64 %wide.trip.count439.i, 7
  %ident.check119.not = icmp eq i64 %.0165.i, 1
  %or.cond133 = and i1 %min.iters.check121, %ident.check119.not
  %n.vec123 = and i64 %.0170.in.i, 2147483640     ; 3 uses
  %cmp.n130 = icmp eq i64 %wide.trip.count439.i, %n.vec123
  %xtraiter183 = and i64 %.0170.in.i, 3           ; 2 uses
  %lcmp.mod184.not = icmp eq i64 %xtraiter183, 0
  %xtraiter186 = and i64 %.0170.in.i, 1
  %i.hj = icmp eq i64 %i.hi, 0
  %unroll_iter196 = and i64 %.0170.in.i, 2147483646
  %lcmp.mod192.not = icmp eq i64 %xtraiter186, 0
  %lcmp.mod195 = trunc i64 %.0170.in.i to i1
  %xtraiter198 = and i64 %.0170.in.i, 1
  %i.hk = icmp eq i64 %i.hi, 0
  %unroll_iter203 = and i64 %.0170.in.i, 2147483646
  %lcmp.mod200.not = icmp eq i64 %xtraiter198, 0
  %lcmp.mod202 = trunc i64 %.0170.in.i to i1
  br label %bb.h

.preheader198.i:                                  ; preds = %..loopexit199_crit_edge.i, %.preheader198.preheader.i
  %.0168227.i = phi ptr [ %i.in, %..loopexit199_crit_edge.i ], [ %0, %.preheader198.preheader.i ] ; 7 uses
  %.0176226.i = phi i32 [ %i.im, %..loopexit199_crit_edge.i ], [ 0, %.preheader198.preheader.i ]
  br i1 %or.cond132, label %vector.body, label %scalar.ph.preheader

vector.body:                                      ; preds = %.preheader198.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader198.i ] ; 3 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.0168227.i, i64 %index ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %wide.load = load <4 x float>, ptr %i.hl, align 4, !tbaa !22
  %wide.load79 = load <4 x float>, ptr %i.hm, align 4, !tbaa !22
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %index ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store <4 x float> %wide.load, ptr %i.hn, align 4, !tbaa !22
  store <4 x float> %wide.load79, ptr %i.ho, align 4, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hp = icmp eq i64 %index.next, %n.vec
  br i1 %i.hp, label %middle.block, label %vector.body, !llvm.loop !899

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit199_crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader198.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader198.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hq = mul i64 %indvars.iv.i.prol, %.0165.i
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %.0168227.i, i64 %i.hq
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !22
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %indvars.iv.i.prol
  store float %i.hs, ptr %i.ht, align 4, !tbaa !22
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !900

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.hu = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.hv = icmp ugt i64 %i.hu, -4
  br i1 %i.hv, label %..loopexit199_crit_edge.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.hw = mul i64 %indvars.iv.i, %.0165.i
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.0168227.i, i64 %i.hw
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !22
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %indvars.iv.i
  store float %i.hy, ptr %i.hz, align 4, !tbaa !22
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ia = mul i64 %indvars.iv.next.i, %.0165.i
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %.0168227.i, i64 %i.ia
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !22
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %indvars.iv.next.i
  store float %i.ic, ptr %i.id, align 4, !tbaa !22
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ie = mul i64 %indvars.iv.next.i.1, %.0165.i
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %.0168227.i, i64 %i.ie
  %i.ig = load float, ptr %i.if, align 4, !tbaa !22
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %indvars.iv.next.i.1
  store float %i.ig, ptr %i.ih, align 4, !tbaa !22
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ii = mul i64 %indvars.iv.next.i.2, %.0165.i
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.0168227.i, i64 %i.ii
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !22
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %indvars.iv.next.i.2
  store float %i.ik, ptr %i.il, align 4, !tbaa !22
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %..loopexit199_crit_edge.i, label %scalar.ph, !llvm.loop !901

..loopexit199_crit_edge.i:                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.im = add nuw nsw i32 %.0176226.i, 1          ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.0168227.i, i64 %.0166.i
  %exitcond352.not.i = icmp eq i32 %i.im, %.sroa.3.0.extract.trunc.i
  br i1 %exitcond352.not.i, label %.loopexit196.i, label %.preheader198.i, !llvm.loop !889

bb.h:                                             ; preds = %._crit_edge306.i, %.lr.ph316.i
  %.1169314.i = phi ptr [ %0, %.lr.ph316.i ], [ %i.mx, %._crit_edge306.i ] ; 8 uses
  %.1177313.i = phi i32 [ 0, %.lr.ph316.i ], [ %i.mw, %._crit_edge306.i ]
  %.1179310.i = phi ptr [ %4, %.lr.ph316.i ], [ %i.my, %._crit_edge306.i ] ; 7 uses
  %.1169314.mux.i = select i1 %.not181.i, ptr %.1169314.i, ptr %.0167.i
  br i1 %brmerge323.i, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.h
  br i1 %or.cond133, label %vector.body124, label %.lr.ph.i.preheader135

vector.body124:                                   ; preds = %.lr.ph.i.preheader, %vector.body124
  %index125 = phi i64 [ %index.next128, %vector.body124 ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.1169314.i, i64 %index125 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %wide.load126 = load <4 x float>, ptr %i.io, align 4, !tbaa !22
  %wide.load127 = load <4 x float>, ptr %i.ip, align 4, !tbaa !22
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %index125 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store <4 x float> %wide.load126, ptr %i.iq, align 4, !tbaa !22
  store <4 x float> %wide.load127, ptr %i.ir, align 4, !tbaa !22
  %index.next128 = add nuw i64 %index125, 8       ; 2 uses
  %i.is = icmp eq i64 %index.next128, %n.vec123
  br i1 %i.is, label %middle.block129, label %vector.body124, !llvm.loop !902

middle.block129:                                  ; preds = %vector.body124
  br i1 %cmp.n130, label %.loopexit.i, label %.lr.ph.i.preheader135

.lr.ph.i.preheader135:                            ; preds = %.lr.ph.i.preheader, %middle.block129
  %indvars.iv436.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec123, %middle.block129 ] ; 3 uses
  %i.it = sub nsw i64 %i.hi, %indvars.iv436.i.ph
  br i1 %lcmp.mod184.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader135, %.lr.ph.i.prol
  %indvars.iv436.i.prol = phi i64 [ %indvars.iv.next437.i.prol, %.lr.ph.i.prol ], [ %indvars.iv436.i.ph, %.lr.ph.i.preheader135 ] ; 3 uses
  %prol.iter185 = phi i64 [ %prol.iter185.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader135 ]
  %i.iu = mul i64 %indvars.iv436.i.prol, %.0165.i
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %.1169314.i, i64 %i.iu
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !22
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %indvars.iv436.i.prol
  store float %i.iw, ptr %i.ix, align 4, !tbaa !22
  %indvars.iv.next437.i.prol = add nuw nsw i64 %indvars.iv436.i.prol, 1 ; 2 uses
  %prol.iter185.next = add i64 %prol.iter185, 1   ; 2 uses
  %prol.iter185.cmp.not = icmp eq i64 %prol.iter185.next, %xtraiter183
  br i1 %prol.iter185.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !903

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader135
  %indvars.iv436.i.unr = phi i64 [ %indvars.iv436.i.ph, %.lr.ph.i.preheader135 ], [ %indvars.iv.next437.i.prol, %.lr.ph.i.prol ]
  %i.iy = icmp ult i64 %i.it, 3
  br i1 %i.iy, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv436.i = phi i64 [ %indvars.iv.next437.i.3, %.lr.ph.i ], [ %indvars.iv436.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.iz = mul i64 %indvars.iv436.i, %.0165.i
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.1169314.i, i64 %i.iz
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !22
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %indvars.iv436.i
  store float %i.jb, ptr %i.jc, align 4, !tbaa !22
  %indvars.iv.next437.i = add nuw nsw i64 %indvars.iv436.i, 1 ; 2 uses
  %i.jd = mul i64 %indvars.iv.next437.i, %.0165.i
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.1169314.i, i64 %i.jd
  %i.jf = load float, ptr %i.je, align 4, !tbaa !22
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %indvars.iv.next437.i
  store float %i.jf, ptr %i.jg, align 4, !tbaa !22
  %indvars.iv.next437.i.1 = add nuw nsw i64 %indvars.iv436.i, 2 ; 2 uses
  %i.jh = mul i64 %indvars.iv.next437.i.1, %.0165.i
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %.1169314.i, i64 %i.jh
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !22
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %indvars.iv.next437.i.1
  store float %i.jj, ptr %i.jk, align 4, !tbaa !22
  %indvars.iv.next437.i.2 = add nuw nsw i64 %indvars.iv436.i, 3 ; 2 uses
  %i.jl = mul i64 %indvars.iv.next437.i.2, %.0165.i
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.1169314.i, i64 %i.jl
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !22
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.0167.i, i64 %indvars.iv.next437.i.2
  store float %i.jn, ptr %i.jo, align 4, !tbaa !22
  %indvars.iv.next437.i.3 = add nuw nsw i64 %indvars.iv436.i, 4 ; 2 uses
  %exitcond440.not.i.3 = icmp eq i64 %indvars.iv.next437.i.3, %wide.trip.count439.i
  br i1 %exitcond440.not.i.3, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !904

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block129, %bb.h
  %.1.i = phi ptr [ %.1169314.mux.i, %bb.h ], [ %.0167.i, %middle.block129 ], [ %.0167.i, %.lr.ph.i ], [ %.0167.i, %.lr.ph.i.prol.loopexit ] ; 6 uses
  br i1 %.not182285.i, label %.preheader.i, label %.lr.ph288.i

.lr.ph288.i:                                      ; preds = %.loopexit.i
  br i1 %i.gx, label %.lr.ph288.split.us.i, label %.lr.ph288.split.i

.lr.ph288.split.us.i:                             ; preds = %.lr.ph288.i, %._crit_edge.us290.i
  %indvars.iv452.i = phi i64 [ %indvars.iv.next453.i, %._crit_edge.us290.i ], [ 0, %.lr.ph288.i ] ; 4 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv452.i ; 2 uses
  br i1 %.not184.i, label %.lr.ph281.us.i.preheader, label %bb.i

bb.i:                                             ; preds = %.lr.ph288.split.us.i
end_hunk_0
begin_hunk_1_@_ZN2cv12cpu_baselineL16GEMMBlockMul_64fEPKdmS2_mPdmNS_5Size_IiEES5_i:bb.a
  %indvars.iv358.i.us.epil = phi i64 [ %indvars.iv.next359.i.us.epil, %.lr.ph207.us.i.us.epil ], [ %indvars.iv358.i.us.epil.init, %.lr.ph207.us.i.us.epil.preheader ] ; 3 uses
  %i.ft = phi <2 x double> [ %i.fy, %.lr.ph207.us.i.us.epil ], [ %.epil.init173, %.lr.ph207.us.i.us.epil.preheader ]
  %epil.iter171 = phi i64 [ %epil.iter171.next, %.lr.ph207.us.i.us.epil ], [ 0, %.lr.ph207.us.i.us.epil.preheader ]
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.0151.us.i, i64 %indvars.iv358.i.us.epil
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.0164215.us231.i.us, i64 %indvars.iv358.i.us.epil
  %i.fw = load <2 x double>, ptr %i.fu, align 8, !tbaa !29
  %i.fx = load <2 x double>, ptr %i.fv, align 8, !tbaa !29
  %i.fy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fw, <2 x double> %i.fx, <2 x double> %i.ft) ; 3 uses
  %indvars.iv.next359.i.us.epil = add nuw nsw i64 %indvars.iv358.i.us.epil, 2
  %epil.iter171.next = add i64 %epil.iter171, 1   ; 2 uses
  %epil.iter171.cmp.not = icmp eq i64 %epil.iter171.next, %xtraiter170
  br i1 %epil.iter171.cmp.not, label %.lr.ph212.us.i.us.preheader.epilog-lcssa, label %.lr.ph207.us.i.us.epil, !llvm.loop !962

.lr.ph212.us.i.us.preheader.epilog-lcssa:         ; preds = %.lr.ph207.us.i.us.epil
  %i.fz = extractelement <2 x double> %i.fy, i64 0
  br label %.lr.ph212.us.i.us.preheader

.lr.ph212.us.i.us.preheader:                      ; preds = %.lr.ph212.us.i.us.preheader.unr-lcssa, %.lr.ph212.us.i.us.preheader.epilog-lcssa
  %.lcssa160 = phi <2 x double> [ %i.fr, %.lr.ph212.us.i.us.preheader.unr-lcssa ], [ %i.fy, %.lr.ph212.us.i.us.preheader.epilog-lcssa ]
  %.lcssa159 = phi double [ %i.fs, %.lr.ph212.us.i.us.preheader.unr-lcssa ], [ %i.fz, %.lr.ph212.us.i.us.preheader.epilog-lcssa ] ; 2 uses
  br i1 %lcmp.mod181.not, label %.lr.ph212.us.i.us.prol.loopexit, label %.lr.ph212.us.i.us.prol

.lr.ph212.us.i.us.prol:                           ; preds = %.lr.ph212.us.i.us.preheader, %.lr.ph212.us.i.us.prol
  %indvars.iv361.i.us.prol = phi i64 [ %indvars.iv.next362.i.us.prol, %.lr.ph212.us.i.us.prol ], [ %i.x, %.lr.ph212.us.i.us.preheader ] ; 3 uses
  %.1163211.us.i.us.prol = phi double [ %i.ge, %.lr.ph212.us.i.us.prol ], [ %.lcssa159, %.lr.ph212.us.i.us.preheader ]
  %prol.iter182 = phi i32 [ %prol.iter182.next, %.lr.ph212.us.i.us.prol ], [ 0, %.lr.ph212.us.i.us.preheader ]
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.0151.us.i, i64 %indvars.iv361.i.us.prol
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !29
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %.0164215.us231.i.us, i64 %indvars.iv361.i.us.prol
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !29
  %i.ge = call double @llvm.fmuladd.f64(double %i.gb, double %i.gd, double %.1163211.us.i.us.prol) ; 3 uses
  %indvars.iv.next362.i.us.prol = add nuw nsw i64 %indvars.iv361.i.us.prol, 1 ; 2 uses
  %prol.iter182.next = add i32 %prol.iter182, 1   ; 2 uses
  %prol.iter182.cmp.not = icmp eq i32 %prol.iter182.next, %xtraiter180
  br i1 %prol.iter182.cmp.not, label %.lr.ph212.us.i.us.prol.loopexit, label %.lr.ph212.us.i.us.prol, !llvm.loop !963

.lr.ph212.us.i.us.prol.loopexit:                  ; preds = %.lr.ph212.us.i.us.prol, %.lr.ph212.us.i.us.preheader
  %indvars.iv361.i.us.unr = phi i64 [ %i.x, %.lr.ph212.us.i.us.preheader ], [ %indvars.iv.next362.i.us.prol, %.lr.ph212.us.i.us.prol ]
  %.1163211.us.i.us.unr = phi double [ %.lcssa159, %.lr.ph212.us.i.us.preheader ], [ %i.ge, %.lr.ph212.us.i.us.prol ]
  %.lcssa161.unr = phi double [ poison, %.lr.ph212.us.i.us.preheader ], [ %i.ge, %.lr.ph212.us.i.us.prol ]
  br i1 %i.ah, label %._crit_edge.us.i.loopexit.us, label %.lr.ph212.us.i.us

.lr.ph212.us.i.us:                                ; preds = %.lr.ph212.us.i.us.prol.loopexit, %.lr.ph212.us.i.us
  %indvars.iv361.i.us = phi i64 [ %indvars.iv.next362.i.us.3, %.lr.ph212.us.i.us ], [ %indvars.iv361.i.us.unr, %.lr.ph212.us.i.us.prol.loopexit ] ; 6 uses
  %.1163211.us.i.us = phi double [ %i.gy, %.lr.ph212.us.i.us ], [ %.1163211.us.i.us.unr, %.lr.ph212.us.i.us.prol.loopexit ]
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %.0151.us.i, i64 %indvars.iv361.i.us
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !29
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %.0164215.us231.i.us, i64 %indvars.iv361.i.us
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !29
  %i.gj = call double @llvm.fmuladd.f64(double %i.gg, double %i.gi, double %.1163211.us.i.us)
  %indvars.iv.next362.i.us = add nuw nsw i64 %indvars.iv361.i.us, 1 ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %.0151.us.i, i64 %indvars.iv.next362.i.us
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !29
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %.0164215.us231.i.us, i64 %indvars.iv.next362.i.us
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !29
  %i.go = call double @llvm.fmuladd.f64(double %i.gl, double %i.gn, double %i.gj)
  %indvars.iv.next362.i.us.1 = add nuw nsw i64 %indvars.iv361.i.us, 2 ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %.0151.us.i, i64 %indvars.iv.next362.i.us.1
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !29
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %.0164215.us231.i.us, i64 %indvars.iv.next362.i.us.1
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !29
  %i.gt = call double @llvm.fmuladd.f64(double %i.gq, double %i.gs, double %i.go)
  %indvars.iv.next362.i.us.2 = add nuw nsw i64 %indvars.iv361.i.us, 3 ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.0151.us.i, i64 %indvars.iv.next362.i.us.2
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !29
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %.0164215.us231.i.us, i64 %indvars.iv.next362.i.us.2
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !29
  %i.gy = call double @llvm.fmuladd.f64(double %i.gv, double %i.gx, double %i.gt) ; 2 uses
  %indvars.iv.next362.i.us.3 = add nuw nsw i64 %indvars.iv361.i.us, 4 ; 2 uses
  %i.gz = trunc nuw i64 %indvars.iv.next362.i.us.3 to i32
  %i.ha = icmp slt i32 %i.gz, %.0170.i
  br i1 %i.ha, label %.lr.ph212.us.i.us, label %._crit_edge.us.i.loopexit.us, !llvm.loop !964

._crit_edge.us.i.loopexit.us:                     ; preds = %.lr.ph212.us.i.us, %.lr.ph212.us.i.us.prol.loopexit
  %.lcssa161 = phi double [ %.lcssa161.unr, %.lr.ph212.us.i.us.prol.loopexit ], [ %i.gy, %.lr.ph212.us.i.us ]
  %i.hb = extractelement <2 x double> %.lcssa160, i64 1
  %i.hc = fadd double %i.hb, %.lcssa161
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.i, i64 %indvars.iv364.i.us
  store double %i.hc, ptr %i.hd, align 8, !tbaa !29
  %indvars.iv.next365.i.us = add nuw nsw i64 %indvars.iv364.i.us, 1 ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %.0164215.us231.i.us, i64 %i.e
  %exitcond368.not.i.us = icmp eq i64 %indvars.iv.next365.i.us, %wide.trip.count367.i
  br i1 %exitcond368.not.i.us, label %._crit_edge218.split.us233.i, label %.lr.ph217.us.i.split.us, !llvm.loop !952

.lr.ph217.us.i.split:                             ; preds = %.lr.ph217.us.i, %..preheader197_crit_edge.us.i
  %indvars.iv364.i = phi i64 [ %indvars.iv.next365.i, %..preheader197_crit_edge.us.i ], [ 0, %.lr.ph217.us.i ] ; 3 uses
  %.0164215.us231.i = phi ptr [ %i.il, %..preheader197_crit_edge.us.i ], [ %2, %.lr.ph217.us.i ] ; 6 uses
  br i1 %.not186.i, label %.lr.ph207.us.i.preheader, label %bb.g

bb.g:                                             ; preds = %.lr.ph217.us.i.split
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.i, i64 %indvars.iv364.i
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !29
  %i.hh = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.hg, i64 0
  br label %.lr.ph207.us.i.preheader

.lr.ph207.us.i.preheader:                         ; preds = %bb.g, %.lr.ph217.us.i.split
  %.ph154 = phi <2 x double> [ zeroinitializer, %.lr.ph217.us.i.split ], [ %i.hh, %bb.g ] ; 2 uses
  br i1 %i.af, label %.lr.ph207.us.i.epil.preheader, label %.lr.ph207.us.i

.lr.ph207.us.i:                                   ; preds = %.lr.ph207.us.i.preheader, %.lr.ph207.us.i
  %indvars.iv358.i = phi i64 [ %indvars.iv.next359.i.3, %.lr.ph207.us.i ], [ 0, %.lr.ph207.us.i.preheader ] ; 6 uses
  %i.hi = phi <2 x double> [ %i.ic, %.lr.ph207.us.i ], [ %.ph154, %.lr.ph207.us.i.preheader ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph207.us.i ], [ 0, %.lr.ph207.us.i.preheader ]
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.0151.us.i, i64 %indvars.iv358.i
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.0164215.us231.i, i64 %indvars.iv358.i
  %i.hl = load <2 x double>, ptr %i.hj, align 8, !tbaa !29
  %i.hm = load <2 x double>, ptr %i.hk, align 8, !tbaa !29
  %i.hn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hl, <2 x double> %i.hm, <2 x double> %i.hi)
  %indvars.iv.next359.i = or disjoint i64 %indvars.iv358.i, 2 ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.0151.us.i, i64 %indvars.iv.next359.i
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.0164215.us231.i, i64 %indvars.iv.next359.i
  %i.hq = load <2 x double>, ptr %i.ho, align 8, !tbaa !29
  %i.hr = load <2 x double>, ptr %i.hp, align 8, !tbaa !29
  %i.hs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hq, <2 x double> %i.hr, <2 x double> %i.hn)
  %indvars.iv.next359.i.1 = or disjoint i64 %indvars.iv358.i, 4 ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.0151.us.i, i64 %indvars.iv.next359.i.1
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %.0164215.us231.i, i64 %indvars.iv.next359.i.1
  %i.hv = load <2 x double>, ptr %i.ht, align 8, !tbaa !29
  %i.hw = load <2 x double>, ptr %i.hu, align 8, !tbaa !29
  %i.hx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.hw, <2 x double> %i.hs)
  %indvars.iv.next359.i.2 = or disjoint i64 %indvars.iv358.i, 6 ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %.0151.us.i, i64 %indvars.iv.next359.i.2
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %.0164215.us231.i, i64 %indvars.iv.next359.i.2
  %i.ia = load <2 x double>, ptr %i.hy, align 8, !tbaa !29
  %i.ib = load <2 x double>, ptr %i.hz, align 8, !tbaa !29
  %i.ic = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ia, <2 x double> %i.ib, <2 x double> %i.hx) ; 3 uses
  %indvars.iv.next359.i.3 = add nuw nsw i64 %indvars.iv358.i, 8 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..preheader197_crit_edge.us.i.unr-lcssa, label %.lr.ph207.us.i, !llvm.loop !961

..preheader197_crit_edge.us.i.unr-lcssa:          ; preds = %.lr.ph207.us.i
  br i1 %lcmp.mod167.not, label %..preheader197_crit_edge.us.i, label %.lr.ph207.us.i.epil.preheader

.lr.ph207.us.i.epil.preheader:                    ; preds = %..preheader197_crit_edge.us.i.unr-lcssa, %.lr.ph207.us.i.preheader
  %indvars.iv358.i.epil.init = phi i64 [ 0, %.lr.ph207.us.i.preheader ], [ %indvars.iv.next359.i.3, %..preheader197_crit_edge.us.i.unr-lcssa ]
  %.epil.init = phi <2 x double> [ %.ph154, %.lr.ph207.us.i.preheader ], [ %i.ic, %..preheader197_crit_edge.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod169)
  br label %.lr.ph207.us.i.epil

.lr.ph207.us.i.epil:                              ; preds = %.lr.ph207.us.i.epil, %.lr.ph207.us.i.epil.preheader
  %indvars.iv358.i.epil = phi i64 [ %indvars.iv.next359.i.epil, %.lr.ph207.us.i.epil ], [ %indvars.iv358.i.epil.init, %.lr.ph207.us.i.epil.preheader ] ; 3 uses
  %i.id = phi <2 x double> [ %i.ii, %.lr.ph207.us.i.epil ], [ %.epil.init, %.lr.ph207.us.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph207.us.i.epil ], [ 0, %.lr.ph207.us.i.epil.preheader ]
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %.0151.us.i, i64 %indvars.iv358.i.epil
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %.0164215.us231.i, i64 %indvars.iv358.i.epil
  %i.ig = load <2 x double>, ptr %i.ie, align 8, !tbaa !29
  %i.ih = load <2 x double>, ptr %i.if, align 8, !tbaa !29
  %i.ii = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ig, <2 x double> %i.ih, <2 x double> %i.id) ; 2 uses
  %indvars.iv.next359.i.epil = add nuw nsw i64 %indvars.iv358.i.epil, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter166
  br i1 %epil.iter.cmp.not, label %..preheader197_crit_edge.us.i, label %.lr.ph207.us.i.epil, !llvm.loop !965

..preheader197_crit_edge.us.i:                    ; preds = %.lr.ph207.us.i.epil, %..preheader197_crit_edge.us.i.unr-lcssa
  %.lcssa158 = phi <2 x double> [ %i.ic, %..preheader197_crit_edge.us.i.unr-lcssa ], [ %i.ii, %.lr.ph207.us.i.epil ] ; 2 uses
  %shift = shufflevector <2 x double> %.lcssa158, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %.lcssa158
  %i.ij = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.i, i64 %indvars.iv364.i
  store double %i.ij, ptr %i.ik, align 8, !tbaa !29
  %indvars.iv.next365.i = add nuw nsw i64 %indvars.iv364.i, 1 ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %.0164215.us231.i, i64 %i.e
  %exitcond368.not.i = icmp eq i64 %indvars.iv.next365.i, %wide.trip.count367.i
  br i1 %exitcond368.not.i, label %._crit_edge218.split.us233.i, label %.lr.ph217.us.i.split, !llvm.loop !952

._crit_edge218.split.us233.i:                     ; preds = %..preheader197_crit_edge.us.i, %._crit_edge.us.i.loopexit.us
  %i.im = add nuw nsw i32 %.0176226.us.i, 1       ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %.0168227.us.i, i64 %.0166.i
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %.0178222.us.i, i64 %i.f
  %exitcond369.not.i = icmp eq i32 %i.im, %.sroa.3.0.extract.trunc.i
  br i1 %exitcond369.not.i, label %.loopexit196.i, label %.lr.ph229.split.us.split.i, !llvm.loop !953

.lr.ph229.split.i:                                ; preds = %.lr.ph229.i
  %i.ip = icmp slt i32 %.0170.i, 1
  %brmerge321.i = select i1 %.not185.i, i1 true, i1 %i.ip
  br i1 %brmerge321.i, label %.loopexit196.i, label %.preheader198.preheader.i

.preheader198.preheader.i:                        ; preds = %.lr.ph229.split.i
  %wide.trip.count.i = and i64 %.0170.in.i, 2147483647 ; 4 uses
  %min.iters.check = icmp samesign ugt i64 %wide.trip.count.i, 3
  %ident.check.not = icmp eq i64 %.0165.i, 1
  %or.cond140 = and i1 %min.iters.check, %ident.check.not
  %n.vec = and i64 %.0170.in.i, 2147483644        ; 3 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  %xtraiter = and i64 %.0170.in.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader198.i

.preheader195.i:                                  ; preds = %_ZN2cv10AutoBufferIdLm136EE8allocateEm.exit.i
  br i1 %i.r, label %.lr.ph316.i, label %.loopexit196.i

.lr.ph316.i:                                      ; preds = %.preheader195.i
  %.not181.i = icmp eq ptr %.0167.i, null         ; 2 uses
  %i.iq = icmp slt i32 %.0170.i, 1
  %i.ir = add i32 %.sroa.0.0.extract.trunc.i, -4  ; 4 uses
  %.not182285.i = icmp slt i32 %.sroa.0.0.extract.trunc.i, 4
  %.not184.i = icmp eq i32 %i.c, 0                ; 4 uses
  %i.is = icmp sgt i32 %.0170.i, 0                ; 2 uses
  %i.it = sext i32 %i.ir to i64
  %i.iu = zext nneg i32 %i.ir to i64
  %i.iv = shl nuw nsw i64 %i.iu, 3
  %i.iw = and i64 %i.iv, 17179869152
  %i.ix = add nuw nsw i64 %i.iw, 32
  %i.iy = and i32 %i.ir, -4
  %i.iz = add i32 %i.iy, 4
  %brmerge323.i = select i1 %.not181.i, i1 true, i1 %i.iq
  %wide.trip.count439.i = and i64 %.0170.in.i, 2147483647 ; 4 uses
  %i.ja = call i32 @llvm.smax.i32(i32 %i.ir, i32 3)
  %i.jb = and i32 %i.ja, 2147483644
  %i.jc = add nuw i32 %i.jb, 4
  %i.jd = add nsw i64 %wide.trip.count439.i, -1   ; 3 uses
  %min.iters.check129 = icmp samesign ugt i64 %wide.trip.count439.i, 3
  %ident.check127.not = icmp eq i64 %.0165.i, 1
  %or.cond141 = and i1 %min.iters.check129, %ident.check127.not
  %n.vec131 = and i64 %.0170.in.i, 2147483644     ; 3 uses
  %cmp.n138 = icmp eq i64 %wide.trip.count439.i, %n.vec131
  %xtraiter207 = and i64 %.0170.in.i, 3           ; 2 uses
  %lcmp.mod208.not = icmp eq i64 %xtraiter207, 0
  %xtraiter210 = and i64 %.0170.in.i, 1
  %i.je = icmp eq i64 %i.jd, 0
  %unroll_iter220 = and i64 %.0170.in.i, 2147483646
  %lcmp.mod216.not = icmp eq i64 %xtraiter210, 0
  %lcmp.mod219 = trunc i64 %.0170.in.i to i1
  %xtraiter222 = and i64 %.0170.in.i, 3           ; 3 uses
  %i.jf = icmp ult i64 %i.jd, 3
  %unroll_iter227 = and i64 %.0170.in.i, 2147483644
  %lcmp.mod224.not = icmp eq i64 %xtraiter222, 0
  %lcmp.mod226 = icmp ne i64 %xtraiter222, 0
  br label %bb.h

.preheader198.i:                                  ; preds = %..loopexit199_crit_edge.i, %.preheader198.preheader.i
  %.0168227.i = phi ptr [ %i.ki, %..loopexit199_crit_edge.i ], [ %0, %.preheader198.preheader.i ] ; 7 uses
  %.0176226.i = phi i32 [ %i.kh, %..loopexit199_crit_edge.i ], [ 0, %.preheader198.preheader.i ]
  br i1 %or.cond140, label %vector.body, label %scalar.ph.preheader

vector.body:                                      ; preds = %.preheader198.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader198.i ] ; 3 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %.0168227.i, i64 %index ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %wide.load = load <2 x double>, ptr %i.jg, align 8, !tbaa !29
  %wide.load87 = load <2 x double>, ptr %i.jh, align 8, !tbaa !29
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %.0167.i, i64 %index ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  store <2 x double> %wide.load, ptr %i.ji, align 8, !tbaa !29
  store <2 x double> %wide.load87, ptr %i.jj, align 8, !tbaa !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jk = icmp eq i64 %index.next, %n.vec
  br i1 %i.jk, label %middle.block, label %vector.body, !llvm.loop !966

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit199_crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader198.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader198.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.jl = mul i64 %indvars.iv.i.prol, %.0165.i
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %.0168227.i, i64 %i.jl
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !29
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %.0167.i, i64 %indvars.iv.i.prol
  store double %i.jn, ptr %i.jo, align 8, !tbaa !29
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !967

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.jp = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.jq = icmp ugt i64 %i.jp, -4
  br i1 %i.jq, label %..loopexit199_crit_edge.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.jr = mul i64 %indvars.iv.i, %.0165.i
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %.0168227.i, i64 %i.jr
  %i.jt = load double, ptr %i.js, align 8, !tbaa !29
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %.0167.i, i64 %indvars.iv.i
  store double %i.jt, ptr %i.ju, align 8, !tbaa !29
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.jv = mul i64 %indvars.iv.next.i, %.0165.i
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %.0168227.i, i64 %i.jv
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !29
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %.0167.i, i64 %indvars.iv.next.i
  store double %i.jx, ptr %i.jy, align 8, !tbaa !29
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.jz = mul i64 %indvars.iv.next.i.1, %.0165.i
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %.0168227.i, i64 %i.jz
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !29
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %.0167.i, i64 %indvars.iv.next.i.1
  store double %i.kb, ptr %i.kc, align 8, !tbaa !29
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.kd = mul i64 %indvars.iv.next.i.2, %.0165.i
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %.0168227.i, i64 %i.kd
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !29
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %.0167.i, i64 %indvars.iv.next.i.2
  store double %i.kf, ptr %i.kg, align 8, !tbaa !29
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %..loopexit199_crit_edge.i, label %scalar.ph, !llvm.loop !968

..loopexit199_crit_edge.i:                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.kh = add nuw nsw i32 %.0176226.i, 1          ; 2 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %.0168227.i, i64 %.0166.i
  %exitcond352.not.i = icmp eq i32 %i.kh, %.sroa.3.0.extract.trunc.i
  br i1 %exitcond352.not.i, label %.loopexit196.i, label %.preheader198.i, !llvm.loop !953

bb.h:                                             ; preds = %._crit_edge306.i, %.lr.ph316.i
  %.1169314.i = phi ptr [ %0, %.lr.ph316.i ], [ %i.oq, %._crit_edge306.i ] ; 8 uses
  %.1177313.i = phi i32 [ 0, %.lr.ph316.i ], [ %i.op, %._crit_edge306.i ]
  %.1179310.i = phi ptr [ %4, %.lr.ph316.i ], [ %i.or, %._crit_edge306.i ] ; 7 uses
  %.1169314.mux.i = select i1 %.not181.i, ptr %.1169314.i, ptr %.0167.i
  br i1 %brmerge323.i, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.h
  br i1 %or.cond141, label %vector.body132, label %.lr.ph.i.preheader144

vector.body132:                                   ; preds = %.lr.ph.i.preheader, %vector.body132
  %index133 = phi i64 [ %index.next136, %vector.body132 ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %.1169314.i, i64 %index133 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %wide.load134 = load <2 x double>, ptr %i.kj, align 8, !tbaa !29
  %wide.load135 = load <2 x double>, ptr %i.kk, align 8, !tbaa !29
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.0167.i, i64 %index133 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  store <2 x double> %wide.load134, ptr %i.kl, align 8, !tbaa !29
  store <2 x double> %wide.load135, ptr %i.km, align 8, !tbaa !29
  %index.next136 = add nuw i64 %index133, 4       ; 2 uses
  %i.kn = icmp eq i64 %index.next136, %n.vec131
  br i1 %i.kn, label %middle.block137, label %vector.body132, !llvm.loop !969

middle.block137:                                  ; preds = %vector.body132
  br i1 %cmp.n138, label %.loopexit.i, label %.lr.ph.i.preheader144

.lr.ph.i.preheader144:                            ; preds = %.lr.ph.i.preheader, %middle.block137
  %indvars.iv436.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec131, %middle.block137 ] ; 3 uses
  %i.ko = sub nsw i64 %i.jd, %indvars.iv436.i.ph
  br i1 %lcmp.mod208.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader144, %.lr.ph.i.prol
  %indvars.iv436.i.prol = phi i64 [ %indvars.iv.next437.i.prol, %.lr.ph.i.prol ], [ %indvars.iv436.i.ph, %.lr.ph.i.preheader144 ] ; 3 uses
  %prol.iter209 = phi i64 [ %prol.iter209.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader144 ]
  %i.kp = mul i64 %indvars.iv436.i.prol, %.0165.i
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %.1169314.i, i64 %i.kp
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !29
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %.0167.i, i64 %indvars.iv436.i.prol
  store double %i.kr, ptr %i.ks, align 8, !tbaa !29
  %indvars.iv.next437.i.prol = add nuw nsw i64 %indvars.iv436.i.prol, 1 ; 2 uses
  %prol.iter209.next = add i64 %prol.iter209, 1   ; 2 uses
  %prol.iter209.cmp.not = icmp eq i64 %prol.iter209.next, %xtraiter207
  br i1 %prol.iter209.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !970

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader144
  %indvars.iv436.i.unr = phi i64 [ %indvars.iv436.i.ph, %.lr.ph.i.preheader144 ], [ %indvars.iv.next437.i.prol, %.lr.ph.i.prol ]
  %i.kt = icmp ult i64 %i.ko, 3
  br i1 %i.kt, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv436.i = phi i64 [ %indvars.iv.next437.i.3, %.lr.ph.i ], [ %indvars.iv436.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ku = mul i64 %indvars.iv436.i, %.0165.i
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %.1169314.i, i64 %i.ku
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !29
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %.0167.i, i64 %indvars.iv436.i
  store double %i.kw, ptr %i.kx, align 8, !tbaa !29
  %indvars.iv.next437.i = add nuw nsw i64 %indvars.iv436.i, 1 ; 2 uses
  %i.ky = mul i64 %indvars.iv.next437.i, %.0165.i
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %.1169314.i, i64 %i.ky
  %i.la = load double, ptr %i.kz, align 8, !tbaa !29
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %.0167.i, i64 %indvars.iv.next437.i
  store double %i.la, ptr %i.lb, align 8, !tbaa !29
  %indvars.iv.next437.i.1 = add nuw nsw i64 %indvars.iv436.i, 2 ; 2 uses
  %i.lc = mul i64 %indvars.iv.next437.i.1, %.0165.i
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %.1169314.i, i64 %i.lc
  %i.le = load double, ptr %i.ld, align 8, !tbaa !29
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %.0167.i, i64 %indvars.iv.next437.i.1
  store double %i.le, ptr %i.lf, align 8, !tbaa !29
  %indvars.iv.next437.i.2 = add nuw nsw i64 %indvars.iv436.i, 3 ; 2 uses
  %i.lg = mul i64 %indvars.iv.next437.i.2, %.0165.i
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %.1169314.i, i64 %i.lg
  %i.li = load double, ptr %i.lh, align 8, !tbaa !29
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %.0167.i, i64 %indvars.iv.next437.i.2
  store double %i.li, ptr %i.lj, align 8, !tbaa !29
  %indvars.iv.next437.i.3 = add nuw nsw i64 %indvars.iv436.i, 4 ; 2 uses
  %exitcond440.not.i.3 = icmp eq i64 %indvars.iv.next437.i.3, %wide.trip.count439.i
  br i1 %exitcond440.not.i.3, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !971

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block137, %bb.h
  %.1.i = phi ptr [ %.1169314.mux.i, %bb.h ], [ %.0167.i, %middle.block137 ], [ %.0167.i, %.lr.ph.i ], [ %.0167.i, %.lr.ph.i.prol.loopexit ] ; 8 uses
  br i1 %.not182285.i, label %.preheader.i, label %.lr.ph288.i

.lr.ph288.i:                                      ; preds = %.loopexit.i
  br i1 %i.is, label %.lr.ph288.split.us.i, label %.lr.ph288.split.i

.lr.ph288.split.us.i:                             ; preds = %.lr.ph288.i, %._crit_edge.us290.i
  %indvars.iv452.i = phi i64 [ %indvars.iv.next453.i, %._crit_edge.us290.i ], [ 0, %.lr.ph288.i ] ; 4 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv452.i ; 2 uses
  br i1 %.not184.i, label %.lr.ph281.us.i.preheader, label %bb.i

bb.i:                                             ; preds = %.lr.ph288.split.us.i
end_hunk_1
