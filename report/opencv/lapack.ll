Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/lapack?download=true
inline.NumInlined: 622
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN2cv14JacobiSVDImpl_IfEEvPT_mS2_S2_miiidS1_:bb.a
  %.0308.us = phi float [ %i.cp, %bb.i ], [ %i.ca, %bb.h ] ; 5 uses
  br i1 %i.t, label %.lr.ph384.us, label %._crit_edge385.us

bb.k:                                             ; preds = %.lr.ph384.us, %bb.k
  %indvars.iv512 = phi i64 [ 0, %.lr.ph384.us ], [ %indvars.iv.next513, %bb.k ] ; 3 uses
  %i.cq = phi <2 x double> [ zeroinitializer, %.lr.ph384.us ], [ %i.de, %bb.k ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv512 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !20
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv512 ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !20
  %i.cv = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x float> %i.ef, %i.cw
  %i.cy = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.cz, <2 x float> %i.cx) ; 3 uses
  %i.db = extractelement <2 x float> %i.da, i64 0
  store float %i.db, ptr %i.cr, align 4, !tbaa !20
  %i.dc = extractelement <2 x float> %i.da, i64 1
  store float %i.dc, ptr %i.ct, align 4, !tbaa !20
  %i.dd = fpext <2 x float> %i.da to <2 x double> ; 2 uses
  %i.de = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dd, <2 x double> %i.dd, <2 x double> %i.cq) ; 2 uses
  %indvars.iv.next513 = add nuw nsw i64 %indvars.iv512, 1 ; 2 uses
  %exitcond516.not = icmp eq i64 %indvars.iv.next513, %wide.trip.count515
  br i1 %exitcond516.not, label %._crit_edge385.us, label %bb.k, !llvm.loop !52

._crit_edge385.us:                                ; preds = %bb.k, %bb.j
  %i.df = phi <2 x double> [ zeroinitializer, %bb.j ], [ %i.de, %bb.k ] ; 2 uses
  %i.dg = extractelement <2 x double> %i.df, i64 0
  store double %i.dg, ptr %i.eq, align 8, !tbaa !18
  %i.dh = extractelement <2 x double> %i.df, i64 1
  store double %i.dh, ptr %i.ah, align 8, !tbaa !18
  br i1 %.not332, label %.lr.ph390.us, label %.loopexit362.us

.lr.ph390.us:                                     ; preds = %._crit_edge385.us
  %i.di = mul i64 %i.j, %indvars.iv524
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.di ; 2 uses
  %i.dk = fneg float %.0316.us                    ; 2 uses
  %brmerge876 = select i1 %min.iters.check, i1 true, i1 %i.et
  br i1 %brmerge876, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %.lr.ph390.us, %middle.block
  %indvars.iv517.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph390.us ]
  %i.dl = insertelement <2 x float> poison, float %.0316.us, i64 0
  %i.dm = insertelement <2 x float> %i.dl, float %.0308.us, i64 1
  %i.dn = insertelement <2 x float> poison, float %.0308.us, i64 0
  %i.do = insertelement <2 x float> %i.dn, float %i.dk, i64 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv517 = phi i64 [ %indvars.iv.next518, %scalar.ph ], [ %indvars.iv517.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv517 ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !20
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv517 ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !20
  %i.dt = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = fmul <2 x float> %i.dm, %i.du
  %i.dw = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> %i.dx, <2 x float> %i.dv) ; 2 uses
  %i.dz = extractelement <2 x float> %i.dy, i64 0
  store float %i.dz, ptr %i.dp, align 4, !tbaa !20
  %i.ea = extractelement <2 x float> %i.dy, i64 1
  store float %i.ea, ptr %i.dr, align 4, !tbaa !20
  %indvars.iv.next518 = add nuw nsw i64 %indvars.iv517, 1 ; 2 uses
  %exitcond521.not = icmp eq i64 %indvars.iv.next518, %wide.trip.count526
  br i1 %exitcond521.not, label %.loopexit362.us, label %scalar.ph, !llvm.loop !53

.loopexit362.us:                                  ; preds = %scalar.ph, %middle.block, %._crit_edge385.us, %._crit_edge378.us
  %.2315.us = phi i1 [ %.1314391.us, %._crit_edge378.us ], [ true, %._crit_edge385.us ], [ true, %middle.block ], [ true, %scalar.ph ] ; 3 uses
  %indvars.iv.next525 = add nuw nsw i64 %indvars.iv524, 1 ; 2 uses
  %exitcond527.not = icmp eq i64 %indvars.iv.next525, %wide.trip.count526
  br i1 %exitcond527.not, label %.loopexit363.us, label %bb.c, !llvm.loop !54

.loopexit363.us:                                  ; preds = %.loopexit362.us
  %indvars.iv.next523 = add nuw nsw i64 %indvars.iv522, 1
  %exitcond531.not = icmp eq i64 %indvars.iv.next529, %wide.trip.count530
  br i1 %exitcond531.not, label %._crit_edge399.us, label %.lr.ph394.us, !llvm.loop !55

.lr.ph384.us:                                     ; preds = %bb.j
  %i.eb = fneg float %.0316.us
  %i.ec = insertelement <2 x float> poison, float %.0308.us, i64 0
  %i.ed = insertelement <2 x float> %i.ec, float %i.eb, i64 1
  %i.ee = insertelement <2 x float> poison, float %.0316.us, i64 0
  %i.ef = insertelement <2 x float> %i.ee, float %.0308.us, i64 1
  br label %bb.k

vector.ph:                                        ; preds = %.lr.ph390.us
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.dk, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert671 = insertelement <4 x float> poison, float %.0316.us, i64 0
  %broadcast.splat672 = shufflevector <4 x float> %broadcast.splatinsert671, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert673 = insertelement <4 x float> poison, float %.0308.us, i64 0
  %broadcast.splat674 = shufflevector <4 x float> %broadcast.splatinsert673, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.eg, align 4, !tbaa !20, !alias.scope !97, !noalias !98 ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %index ; 2 uses
  %wide.load675 = load <4 x float>, ptr %i.eh, align 4, !tbaa !20, !alias.scope !98 ; 2 uses
  %i.ei = fmul <4 x float> %broadcast.splat672, %wide.load675
  %i.ej = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat674, <4 x float> %wide.load, <4 x float> %i.ei)
  %i.ek = fmul <4 x float> %broadcast.splat674, %wide.load675
  %i.el = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %i.ek)
  store <4 x float> %i.ej, ptr %i.eg, align 4, !tbaa !20, !alias.scope !97, !noalias !98
  store <4 x float> %i.el, ptr %i.eh, align 4, !tbaa !20, !alias.scope !98
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.em = icmp eq i64 %index.next, %n.vec
  br i1 %i.em, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit362.us, label %scalar.ph.preheader

.lr.ph394.us:                                     ; preds = %.loopexit363.us, %.preheader364.us
  %indvars.iv528 = phi i64 [ 0, %.preheader364.us ], [ %indvars.iv.next529, %.loopexit363.us ] ; 5 uses
  %indvars.iv522 = phi i64 [ 1, %.preheader364.us ], [ %indvars.iv.next523, %.loopexit363.us ] ; 2 uses
  %.0313396.us = phi i1 [ false, %.preheader364.us ], [ %.2315.us, %.loopexit363.us ]
  %i.en = mul i64 %i.w, %indvars.iv528            ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ab, i64 %i.en
  %scevgep669 = getelementptr i8, ptr %i.ac, i64 %i.en
  %indvars.iv.next529 = add nuw nsw i64 %indvars.iv528, 1 ; 2 uses
  %i.eo = mul i64 %i.i, %indvars.iv528
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.eo ; 4 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv528 ; 2 uses
  %i.er = mul i64 %i.j, %indvars.iv528
  %i.es = getelementptr [4 x i8], ptr %3, i64 %i.er ; 3 uses
  %bound0 = icmp ult ptr %i.es, %scevgep670
  %bound1 = icmp ult ptr %scevgep669, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.et = or i1 %found.conflict, %stride.check
  br label %bb.c

._crit_edge399.us:                                ; preds = %.loopexit363.us
  %i.eu = add nuw nsw i32 %.0306401.us, 1         ; 2 uses
  %i.ev = icmp samesign ult i32 %i.eu, %.sroa.speculated
  %or.cond = select i1 %.2315.us, i1 %i.ev, i1 false
  br i1 %or.cond, label %.preheader364.us, label %.preheader361.lr.ph, !llvm.loop !60

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.new ], [ 0, %.lr.ph ] ; 5 uses
  %.0317368 = phi double [ %i.fo, %.lr.ph.new ], [ 0.000000e+00, %.lr.ph ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.ew = getelementptr [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !20
  %i.ey = fpext float %i.ex to double             ; 2 uses
  %i.ez = call double @llvm.fmuladd.f64(double %i.ey, double %i.ey, double %.0317368)
  %i.fa = getelementptr [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.fb = getelementptr i8, ptr %i.fa, i64 4
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !20
  %i.fd = fpext float %i.fc to double             ; 2 uses
  %i.fe = call double @llvm.fmuladd.f64(double %i.fd, double %i.fd, double %i.ez)
  %i.ff = getelementptr [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.fg = getelementptr i8, ptr %i.ff, i64 8
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !20
  %i.fi = fpext float %i.fh to double             ; 2 uses
  %i.fj = call double @llvm.fmuladd.f64(double %i.fi, double %i.fi, double %i.fe)
  %i.fk = getelementptr [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.fl = getelementptr i8, ptr %i.fk, i64 12
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !20
  %i.fn = fpext float %i.fm to double             ; 2 uses
  %i.fo = call double @llvm.fmuladd.f64(double %i.fn, double %i.fn, double %i.fj) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.new, !llvm.loop !61

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0317368.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.fo, %._crit_edge.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod786)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.l ] ; 2 uses
  %.0317368.epil = phi double [ %.0317368.epil.init, %.epil.preheader ], [ %i.fs, %bb.l ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.fp = getelementptr [4 x i8], ptr %i.r, i64 %indvars.iv.epil
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !20
  %i.fr = fpext float %i.fq to double             ; 2 uses
  %i.fs = call double @llvm.fmuladd.f64(double %i.fr, double %i.fr, double %.0317368.epil) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.l, !llvm.loop !62

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.l, %.preheader367
  %.0317.lcssa = phi double [ 0.000000e+00, %.preheader367 ], [ %i.fo, %._crit_edge.loopexit.unr-lcssa ], [ %i.fs, %bb.l ]
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv502
  store double %.0317.lcssa, ptr %i.ft, align 8, !tbaa !18
  br i1 %.not333, label %bb.m, label %._crit_edge372

._crit_edge372:                                   ; preds = %._crit_edge
  %i.fu = mul i64 %i.j, %indvars.iv502
  %i.fv = getelementptr [4 x i8], ptr %3, i64 %i.fu
  call void @llvm.memset.p0.i64(ptr align 4 %i.fv, i8 0, i64 %i.o, i1 false), !tbaa !20
  %i.fw = mul i64 %i.m, %indvars.iv502
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fw
  store float 1.000000e+00, ptr %i.fx, align 4, !tbaa !20
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %._crit_edge372
  %indvars.iv.next503 = add nuw nsw i64 %indvars.iv502, 1 ; 2 uses
  %exitcond506.not = icmp eq i64 %indvars.iv.next503, %i.n
  br i1 %exitcond506.not, label %.preheader365, label %.preheader367, !llvm.loop !63

.preheader361.lr.ph:                              ; preds = %._crit_edge399.us, %.preheader365
  %wide.trip.count543 = zext nneg i32 %6 to i64   ; 2 uses
  br i1 %i.t, label %.preheader361.us.preheader, label %.preheader361.preheader

.preheader361.preheader:                          ; preds = %.preheader361.lr.ph
  %i.fy = shl nuw nsw i64 %wide.trip.count543, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.h, i8 0, i64 %i.fy, i1 false), !tbaa !18
  br i1 %.not.not, label %.lr.ph421.preheader, label %.lr.ph419

.preheader361.us.preheader:                       ; preds = %.preheader361.lr.ph
  %xtraiter795 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.fz = icmp ult i32 %5, 4
  %unroll_iter800 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod797.not = icmp eq i64 %xtraiter795, 0
  %lcmp.mod799 = icmp ne i64 %xtraiter795, 0
  br label %.preheader361.us

.preheader361.us:                                 ; preds = %.preheader361.us.preheader, %._crit_edge405.us
  %indvars.iv540 = phi i64 [ 0, %.preheader361.us.preheader ], [ %indvars.iv.next541, %._crit_edge405.us ] ; 3 uses
  %i.ga = mul i64 %i.i, %indvars.iv540
  %i.gb = getelementptr [4 x i8], ptr %0, i64 %i.ga ; 5 uses
  br i1 %i.fz, label %.epil.preheader794, label %.preheader361.us.new

.preheader361.us.new:                             ; preds = %.preheader361.us, %.preheader361.us.new
  %indvars.iv535 = phi i64 [ %indvars.iv.next536.3, %.preheader361.us.new ], [ 0, %.preheader361.us ] ; 5 uses
  %.1318402.us = phi double [ %i.gu, %.preheader361.us.new ], [ 0.000000e+00, %.preheader361.us ]
  %niter801 = phi i64 [ %niter801.next.3, %.preheader361.us.new ], [ 0, %.preheader361.us ]
  %i.gc = getelementptr [4 x i8], ptr %i.gb, i64 %indvars.iv535
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !20
  %i.ge = fpext float %i.gd to double             ; 2 uses
  %i.gf = call double @llvm.fmuladd.f64(double %i.ge, double %i.ge, double %.1318402.us)
  %i.gg = getelementptr [4 x i8], ptr %i.gb, i64 %indvars.iv535
  %i.gh = getelementptr i8, ptr %i.gg, i64 4
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !20
  %i.gj = fpext float %i.gi to double             ; 2 uses
  %i.gk = call double @llvm.fmuladd.f64(double %i.gj, double %i.gj, double %i.gf)
  %i.gl = getelementptr [4 x i8], ptr %i.gb, i64 %indvars.iv535
  %i.gm = getelementptr i8, ptr %i.gl, i64 8
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !20
  %i.go = fpext float %i.gn to double             ; 2 uses
  %i.gp = call double @llvm.fmuladd.f64(double %i.go, double %i.go, double %i.gk)
  %i.gq = getelementptr [4 x i8], ptr %i.gb, i64 %indvars.iv535
  %i.gr = getelementptr i8, ptr %i.gq, i64 12
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !20
  %i.gt = fpext float %i.gs to double             ; 2 uses
  %i.gu = call double @llvm.fmuladd.f64(double %i.gt, double %i.gt, double %i.gp) ; 3 uses
  %indvars.iv.next536.3 = add nuw nsw i64 %indvars.iv535, 4 ; 2 uses
  %niter801.next.3 = add i64 %niter801, 4         ; 2 uses
  %niter801.ncmp.3 = icmp eq i64 %niter801.next.3, %unroll_iter800
  br i1 %niter801.ncmp.3, label %._crit_edge405.us.unr-lcssa, label %.preheader361.us.new, !llvm.loop !64

._crit_edge405.us.unr-lcssa:                      ; preds = %.preheader361.us.new
  br i1 %lcmp.mod797.not, label %._crit_edge405.us, label %.epil.preheader794

.epil.preheader794:                               ; preds = %._crit_edge405.us.unr-lcssa, %.preheader361.us
  %indvars.iv535.epil.init = phi i64 [ 0, %.preheader361.us ], [ %indvars.iv.next536.3, %._crit_edge405.us.unr-lcssa ]
  %.1318402.us.epil.init = phi double [ 0.000000e+00, %.preheader361.us ], [ %i.gu, %._crit_edge405.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod799)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader794
  %indvars.iv535.epil = phi i64 [ %indvars.iv535.epil.init, %.epil.preheader794 ], [ %indvars.iv.next536.epil, %bb.n ] ; 2 uses
  %.1318402.us.epil = phi double [ %.1318402.us.epil.init, %.epil.preheader794 ], [ %i.gy, %bb.n ]
  %epil.iter796 = phi i64 [ 0, %.epil.preheader794 ], [ %epil.iter796.next, %bb.n ]
  %i.gv = getelementptr [4 x i8], ptr %i.gb, i64 %indvars.iv535.epil
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !20
  %i.gx = fpext float %i.gw to double             ; 2 uses
  %i.gy = call double @llvm.fmuladd.f64(double %i.gx, double %i.gx, double %.1318402.us.epil) ; 2 uses
  %indvars.iv.next536.epil = add nuw nsw i64 %indvars.iv535.epil, 1
  %epil.iter796.next = add i64 %epil.iter796, 1   ; 2 uses
  %epil.iter796.cmp.not = icmp eq i64 %epil.iter796.next, %xtraiter795
  br i1 %epil.iter796.cmp.not, label %._crit_edge405.us, label %bb.n, !llvm.loop !65

._crit_edge405.us:                                ; preds = %bb.n, %._crit_edge405.us.unr-lcssa
  %.lcssa781 = phi double [ %i.gu, %._crit_edge405.us.unr-lcssa ], [ %i.gy, %bb.n ]
  %i.gz = call double @sqrt(double noundef %.lcssa781) #16
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv540
  store double %i.gz, ptr %i.ha, align 8, !tbaa !18
  %indvars.iv.next541 = add nuw nsw i64 %indvars.iv540, 1 ; 2 uses
  %exitcond544.not = icmp eq i64 %indvars.iv.next541, %wide.trip.count543
  br i1 %exitcond544.not, label %.preheader360, label %.preheader361.us, !llvm.loop !66

.preheader360:                                    ; preds = %._crit_edge405.us
  br i1 %.not.not, label %.lr.ph421.preheader, label %.lr.ph419

.lr.ph419:                                        ; preds = %.preheader361.preheader, %.preheader360
  %wide.trip.count565 = zext i32 %i.s to i64      ; 3 uses
  %wide.trip.count550 = zext nneg i32 %6 to i64
  %wide.trip.count555 = zext nneg i32 %5 to i64
  %wide.trip.count560 = zext nneg i32 %6 to i64
  %i.hb = add nuw nsw i64 %wide.trip.count565, 4611686018427387903
  %i.hc = mul i64 %i.j, %i.hb
  %i.hd = shl nuw nsw i64 %i.n, 2
  %i.he = add i64 %i.hc, %i.n
  %i.hf = shl i64 %i.he, 2
  %scevgep677 = getelementptr i8, ptr %3, i64 %i.hf
  %scevgep678 = getelementptr i8, ptr %3, i64 %i.hd
  %i.hg = and i64 %4, -4
  %i.hh = add nuw nsw i64 %wide.trip.count565, 4611686018427387903
  %i.hi = mul i64 %i.i, %i.hh
  %i.hj = shl nuw nsw i64 %wide.trip.count, 2
  %i.hk = add i64 %i.hi, %wide.trip.count
  %i.hl = shl i64 %i.hk, 2
  %scevgep699 = getelementptr i8, ptr %0, i64 %i.hl
  %scevgep700 = getelementptr i8, ptr %0, i64 %i.hj
  %i.hm = and i64 %1, -4
  %i.hn = add nsw i64 %i.n, -2
  %min.iters.check707 = icmp ult i32 %5, 8
  %stride.check705 = icmp slt i64 %1, 0
  %n.vec709 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n718 = icmp eq i64 %n.vec709, %wide.trip.count
  %xtraiter804 = and i64 %wide.trip.count, 1
  %lcmp.mod805.not = icmp eq i64 %xtraiter804, 0
  %i.ho = add nsw i64 %wide.trip.count, -1
  %min.iters.check685 = icmp ult i32 %6, 8
  %stride.check683 = icmp slt i64 %4, 0
  %n.vec687 = and i64 %i.n, 2147483640            ; 3 uses
  %cmp.n696 = icmp eq i64 %n.vec687, %i.n
  %xtraiter806 = and i64 %i.n, 1
  %lcmp.mod807.not = icmp eq i64 %xtraiter806, 0
  %i.hp = add nsw i64 %i.n, -1
  br label %.lr.ph411.preheader

.lr.ph421.preheader:                              ; preds = %.loopexit358, %.preheader360, %.preheader361.preheader
  %i.hq = phi i1 [ false, %.preheader361.preheader ], [ true, %.preheader360 ], [ %i.t, %.loopexit358 ] ; 2 uses
  %wide.trip.count570 = zext nneg i32 %6 to i64
  %min.iters.check721 = icmp ult i32 %6, 4
  br i1 %min.iters.check721, label %.lr.ph421.preheader780, label %vector.ph722

vector.ph722:                                     ; preds = %.lr.ph421.preheader
  %n.vec723 = and i64 %i.n, 2147483644            ; 3 uses
  br label %vector.body724

vector.body724:                                   ; preds = %vector.body724, %vector.ph722
  %index725 = phi i64 [ 0, %vector.ph722 ], [ %index.next728, %vector.body724 ] ; 3 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index725 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %wide.load726 = load <2 x double>, ptr %i.hr, align 8, !tbaa !18
  %wide.load727 = load <2 x double>, ptr %i.hs, align 8, !tbaa !18
  %i.ht = fptrunc <2 x double> %wide.load726 to <2 x float>
  %i.hu = fptrunc <2 x double> %wide.load727 to <2 x float>
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index725 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store <2 x float> %i.ht, ptr %i.hv, align 4, !tbaa !20
  store <2 x float> %i.hu, ptr %i.hw, align 4, !tbaa !20
  %index.next728 = add nuw i64 %index725, 4       ; 2 uses
  %i.hx = icmp eq i64 %index.next728, %n.vec723
  br i1 %i.hx, label %middle.block729, label %vector.body724, !llvm.loop !67

middle.block729:                                  ; preds = %vector.body724
  %cmp.n730 = icmp eq i64 %n.vec723, %i.n
  br i1 %cmp.n730, label %._crit_edge422, label %.lr.ph421.preheader780

.lr.ph421.preheader780:                           ; preds = %.lr.ph421.preheader, %middle.block729
  %indvars.iv567.ph = phi i64 [ 0, %.lr.ph421.preheader ], [ %n.vec723, %middle.block729 ]
  br label %.lr.ph421

.lr.ph411.preheader:                              ; preds = %.loopexit358, %.lr.ph419
  %indvars.iv562 = phi i64 [ 0, %.lr.ph419 ], [ %indvars.iv.next563, %.loopexit358 ] ; 9 uses
  %indvars.iv545 = phi i64 [ 1, %.lr.ph419 ], [ %indvars.iv.next546, %.loopexit358 ] ; 5 uses
  %indvars.iv.next563 = add nuw nsw i64 %indvars.iv562, 1 ; 2 uses
  %i.hy = trunc nuw nsw i64 %indvars.iv562 to i32 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv562
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !18 ; 3 uses
  %i.hz = sub nsw i64 %indvars.iv562, %i.n
  %i.ia = and i64 %i.hz, 1
  %lcmp.mod803.not.not = icmp eq i64 %i.ia, 0
  br i1 %lcmp.mod803.not.not, label %.lr.ph411.prol, label %.lr.ph411.prol.loopexit

.lr.ph411.prol:                                   ; preds = %.lr.ph411.preheader
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv545
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !18 ; 2 uses
  %i.id = fcmp olt double %.pre, %i.ic            ; 2 uses
  %i.ie = trunc nuw nsw i64 %indvars.iv545 to i32
  %spec.select.prol = select i1 %i.id, i32 %i.ie, i32 %i.hy ; 2 uses
  %indvars.iv.next548.prol = add nuw nsw i64 %indvars.iv545, 1
  %i.if = select i1 %i.id, double %i.ic, double %.pre
  br label %.lr.ph411.prol.loopexit

.lr.ph411.prol.loopexit:                          ; preds = %.lr.ph411.prol, %.lr.ph411.preheader
  %spec.select.lcssa.unr = phi i32 [ poison, %.lr.ph411.preheader ], [ %spec.select.prol, %.lr.ph411.prol ]
  %.unr = phi double [ %.pre, %.lr.ph411.preheader ], [ %i.if, %.lr.ph411.prol ]
  %indvars.iv547.unr = phi i64 [ %indvars.iv545, %.lr.ph411.preheader ], [ %indvars.iv.next548.prol, %.lr.ph411.prol ]
  %.1297409.unr = phi i32 [ %i.hy, %.lr.ph411.preheader ], [ %spec.select.prol, %.lr.ph411.prol ]
  %i.ig = icmp eq i64 %i.hn, %indvars.iv562
  br i1 %i.ig, label %._crit_edge412, label %.lr.ph411

.lr.ph411:                                        ; preds = %.lr.ph411.prol.loopexit, %.lr.ph411
  %i.ih = phi double [ %i.ir, %.lr.ph411 ], [ %.unr, %.lr.ph411.prol.loopexit ] ; 2 uses
  %indvars.iv547 = phi i64 [ %indvars.iv.next548.1, %.lr.ph411 ], [ %indvars.iv547.unr, %.lr.ph411.prol.loopexit ] ; 4 uses
  %.1297409 = phi i32 [ %spec.select.1, %.lr.ph411 ], [ %.1297409.unr, %.lr.ph411.prol.loopexit ]
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv547
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !18 ; 2 uses
  %i.ik = fcmp olt double %i.ih, %i.ij            ; 2 uses
  %i.il = trunc nuw nsw i64 %indvars.iv547 to i32
  %spec.select = select i1 %i.ik, i32 %i.il, i32 %.1297409
  %indvars.iv.next548 = add nuw nsw i64 %indvars.iv547, 1 ; 2 uses
  %i.im = select i1 %i.ik, double %i.ij, double %i.ih ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next548
  %i.io = load double, ptr %i.in, align 8, !tbaa !18 ; 2 uses
  %i.ip = fcmp olt double %i.im, %i.io            ; 2 uses
  %i.iq = trunc nuw nsw i64 %indvars.iv.next548 to i32
  %spec.select.1 = select i1 %i.ip, i32 %i.iq, i32 %spec.select ; 2 uses
  %indvars.iv.next548.1 = add nuw nsw i64 %indvars.iv547, 2 ; 2 uses
  %exitcond551.not.1 = icmp eq i64 %indvars.iv.next548.1, %wide.trip.count550
  %i.ir = select i1 %i.ip, double %i.io, double %i.im
  br i1 %exitcond551.not.1, label %._crit_edge412, label %.lr.ph411, !llvm.loop !68
end_hunk_0
begin_hunk_1_@_ZN2cv14JacobiSVDImpl_IdEEvPT_mS2_S2_miiidS1_:bb.a
  %i.ck = fmul double %.0.i.us, %i.cj
  %i.cl = fmul double %i.ck, 2.000000e+00
  %i.cm = fdiv double %i.bm, %i.cl
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0316.us = phi double [ %i.cj, %bb.i ], [ %i.cf, %bb.h ] ; 5 uses
  %.0308.us = phi double [ %i.cm, %bb.i ], [ %i.cc, %bb.h ] ; 5 uses
  br i1 %i.t, label %.lr.ph384.us, label %._crit_edge385.us

bb.k:                                             ; preds = %.lr.ph384.us, %bb.k
  %indvars.iv523 = phi i64 [ 0, %.lr.ph384.us ], [ %indvars.iv.next524, %bb.k ] ; 3 uses
  %i.cn = phi <2 x double> [ zeroinitializer, %.lr.ph384.us ], [ %i.da, %bb.k ]
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv523 ; 2 uses
  %i.cp = load double, ptr %i.co, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv523 ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !18
  %i.cs = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.ct = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cu = fmul <2 x double> %i.eb, %i.ct
  %i.cv = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dz, <2 x double> %i.cw, <2 x double> %i.cu) ; 4 uses
  %i.cy = extractelement <2 x double> %i.cx, i64 0
  store double %i.cy, ptr %i.co, align 8, !tbaa !18
  %i.cz = extractelement <2 x double> %i.cx, i64 1
  store double %i.cz, ptr %i.cq, align 8, !tbaa !18
  %i.da = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.cx, <2 x double> %i.cn) ; 2 uses
  %indvars.iv.next524 = add nuw nsw i64 %indvars.iv523, 1 ; 2 uses
  %exitcond527.not = icmp eq i64 %indvars.iv.next524, %wide.trip.count526
  br i1 %exitcond527.not, label %._crit_edge385.us, label %bb.k, !llvm.loop !105

._crit_edge385.us:                                ; preds = %bb.k, %bb.j
  %i.db = phi <2 x double> [ zeroinitializer, %bb.j ], [ %i.da, %bb.k ] ; 2 uses
  %i.dc = extractelement <2 x double> %i.db, i64 0
  store double %i.dc, ptr %i.em, align 8, !tbaa !18
  %i.dd = extractelement <2 x double> %i.db, i64 1
  store double %i.dd, ptr %i.ag, align 8, !tbaa !18
  br i1 %.not332, label %.lr.ph390.us, label %.loopexit362.us

.lr.ph390.us:                                     ; preds = %._crit_edge385.us
  %i.de = mul i64 %i.j, %indvars.iv535
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.de ; 2 uses
  %i.dg = fneg double %.0316.us                   ; 2 uses
  br i1 %i.ep, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %.lr.ph390.us, %middle.block
  %indvars.iv528.ph = phi i64 [ 0, %.lr.ph390.us ], [ %n.vec, %middle.block ]
  %i.dh = insertelement <2 x double> poison, double %.0316.us, i64 0
  %i.di = insertelement <2 x double> %i.dh, double %.0308.us, i64 1
  %i.dj = insertelement <2 x double> poison, double %.0308.us, i64 0
  %i.dk = insertelement <2 x double> %i.dj, double %i.dg, i64 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv528 = phi i64 [ %indvars.iv.next529, %scalar.ph ], [ %indvars.iv528.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv528 ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !18
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv528 ; 2 uses
  %i.do = load double, ptr %i.dn, align 8, !tbaa !18
  %i.dp = insertelement <2 x double> poison, double %i.do, i64 0
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dr = fmul <2 x double> %i.di, %i.dq
  %i.ds = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.dt, <2 x double> %i.dr) ; 2 uses
  %i.dv = extractelement <2 x double> %i.du, i64 0
  store double %i.dv, ptr %i.dl, align 8, !tbaa !18
  %i.dw = extractelement <2 x double> %i.du, i64 1
  store double %i.dw, ptr %i.dn, align 8, !tbaa !18
  %indvars.iv.next529 = add nuw nsw i64 %indvars.iv528, 1 ; 2 uses
  %exitcond532.not = icmp eq i64 %indvars.iv.next529, %wide.trip.count537
  br i1 %exitcond532.not, label %.loopexit362.us, label %scalar.ph, !llvm.loop !106

.loopexit362.us:                                  ; preds = %scalar.ph, %middle.block, %._crit_edge385.us, %._crit_edge378.us
  %.2315.us = phi i1 [ %.1314391.us, %._crit_edge378.us ], [ true, %._crit_edge385.us ], [ true, %middle.block ], [ true, %scalar.ph ] ; 3 uses
  %indvars.iv.next536 = add nuw nsw i64 %indvars.iv535, 1 ; 2 uses
  %exitcond538.not = icmp eq i64 %indvars.iv.next536, %wide.trip.count537
  br i1 %exitcond538.not, label %.loopexit363.us, label %bb.c, !llvm.loop !107

.loopexit363.us:                                  ; preds = %.loopexit362.us
  %indvars.iv.next534 = add nuw nsw i64 %indvars.iv533, 1
  %exitcond542.not = icmp eq i64 %indvars.iv.next540, %wide.trip.count541
  br i1 %exitcond542.not, label %._crit_edge399.us, label %.lr.ph394.us, !llvm.loop !108

.lr.ph384.us:                                     ; preds = %bb.j
  %i.dx = fneg double %.0316.us
  %i.dy = insertelement <2 x double> poison, double %.0308.us, i64 0
  %i.dz = insertelement <2 x double> %i.dy, double %i.dx, i64 1
  %i.ea = insertelement <2 x double> poison, double %.0316.us, i64 0
  %i.eb = insertelement <2 x double> %i.ea, double %.0308.us, i64 1
  br label %bb.k

vector.ph:                                        ; preds = %.lr.ph390.us
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.dg, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert682 = insertelement <2 x double> poison, double %.0316.us, i64 0
  %broadcast.splat683 = shufflevector <2 x double> %broadcast.splatinsert682, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert684 = insertelement <2 x double> poison, double %.0308.us, i64 0
  %broadcast.splat685 = shufflevector <2 x double> %broadcast.splatinsert684, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ec, align 8, !tbaa !18, !alias.scope !150, !noalias !151 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %index ; 2 uses
  %wide.load686 = load <2 x double>, ptr %i.ed, align 8, !tbaa !18, !alias.scope !151 ; 2 uses
  %i.ee = fmul <2 x double> %broadcast.splat683, %wide.load686
  %i.ef = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat685, <2 x double> %wide.load, <2 x double> %i.ee)
  %i.eg = fmul <2 x double> %broadcast.splat685, %wide.load686
  %i.eh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %i.eg)
  store <2 x double> %i.ef, ptr %i.ec, align 8, !tbaa !18, !alias.scope !150, !noalias !151
  store <2 x double> %i.eh, ptr %i.ed, align 8, !tbaa !18, !alias.scope !151
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ei = icmp eq i64 %index.next, %n.vec
  br i1 %i.ei, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit362.us, label %scalar.ph.preheader

.lr.ph394.us:                                     ; preds = %.loopexit363.us, %.preheader364.us
  %indvars.iv539 = phi i64 [ 0, %.preheader364.us ], [ %indvars.iv.next540, %.loopexit363.us ] ; 5 uses
  %indvars.iv533 = phi i64 [ 1, %.preheader364.us ], [ %indvars.iv.next534, %.loopexit363.us ] ; 2 uses
  %.0313396.us = phi i1 [ false, %.preheader364.us ], [ %.2315.us, %.loopexit363.us ]
  %i.ej = mul i64 %i.v, %indvars.iv539            ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aa, i64 %i.ej
  %scevgep680 = getelementptr i8, ptr %i.ab, i64 %i.ej
  %indvars.iv.next540 = add nuw nsw i64 %indvars.iv539, 1 ; 2 uses
  %i.ek = mul i64 %i.i, %indvars.iv539
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ek ; 6 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv539 ; 2 uses
  %i.en = mul i64 %i.j, %indvars.iv539
  %i.eo = getelementptr [8 x i8], ptr %3, i64 %i.en ; 3 uses
  %bound0 = icmp ult ptr %i.eo, %scevgep681
  %bound1 = icmp ult ptr %scevgep680, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.ep = or i1 %found.conflict, %stride.check
  br label %bb.c

._crit_edge399.us:                                ; preds = %.loopexit363.us
  %i.eq = add nuw nsw i32 %.0306401.us, 1         ; 2 uses
  %i.er = icmp samesign ult i32 %i.eq, %.sroa.speculated
  %or.cond = select i1 %.2315.us, i1 %i.er, i1 false
  br i1 %or.cond, label %.preheader364.us, label %.preheader361.lr.ph, !llvm.loop !113

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.new ], [ 0, %.lr.ph ] ; 5 uses
  %.0317368 = phi double [ %i.fg, %.lr.ph.new ], [ 0.000000e+00, %.lr.ph ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.es = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.et = load double, ptr %i.es, align 8, !tbaa !18 ; 2 uses
  %i.eu = call double @llvm.fmuladd.f64(double %i.et, double %i.et, double %.0317368)
  %i.ev = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.ew = getelementptr i8, ptr %i.ev, i64 8
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !18 ; 2 uses
  %i.ey = call double @llvm.fmuladd.f64(double %i.ex, double %i.ex, double %i.eu)
  %i.ez = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.fa = getelementptr i8, ptr %i.ez, i64 16
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !18 ; 2 uses
  %i.fc = call double @llvm.fmuladd.f64(double %i.fb, double %i.fb, double %i.ey)
  %i.fd = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.fe = getelementptr i8, ptr %i.fd, i64 24
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !18 ; 2 uses
  %i.fg = call double @llvm.fmuladd.f64(double %i.ff, double %i.ff, double %i.fc) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.new, !llvm.loop !114

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0317368.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.fg, %._crit_edge.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod797)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.l ] ; 2 uses
  %.0317368.epil = phi double [ %.0317368.epil.init, %.epil.preheader ], [ %i.fj, %bb.l ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.fh = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv.epil
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !18 ; 2 uses
  %i.fj = call double @llvm.fmuladd.f64(double %i.fi, double %i.fi, double %.0317368.epil) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.l, !llvm.loop !115

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.l, %.preheader367
  %.0317.lcssa = phi double [ 0.000000e+00, %.preheader367 ], [ %i.fg, %._crit_edge.loopexit.unr-lcssa ], [ %i.fj, %bb.l ]
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv513
  store double %.0317.lcssa, ptr %i.fk, align 8, !tbaa !18
  br i1 %.not333, label %bb.m, label %._crit_edge372

._crit_edge372:                                   ; preds = %._crit_edge
  %i.fl = mul i64 %i.j, %indvars.iv513
  %i.fm = getelementptr [8 x i8], ptr %3, i64 %i.fl
  call void @llvm.memset.p0.i64(ptr align 8 %i.fm, i8 0, i64 %i.o, i1 false), !tbaa !18
  %i.fn = mul i64 %i.m, %indvars.iv513
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.fn
  store double 1.000000e+00, ptr %i.fo, align 8, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %._crit_edge372
  %indvars.iv.next514 = add nuw nsw i64 %indvars.iv513, 1 ; 2 uses
  %exitcond517.not = icmp eq i64 %indvars.iv.next514, %i.n
  br i1 %exitcond517.not, label %.preheader365, label %.preheader367, !llvm.loop !116

.preheader361.lr.ph:                              ; preds = %._crit_edge399.us, %.preheader365
  %wide.trip.count554 = zext nneg i32 %6 to i64   ; 2 uses
  br i1 %i.t, label %.preheader361.us.preheader, label %.preheader361.preheader

.preheader361.preheader:                          ; preds = %.preheader361.lr.ph
  %i.fp = shl nuw nsw i64 %wide.trip.count554, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.h, i8 0, i64 %i.fp, i1 false), !tbaa !18
  br i1 %.not.not, label %.lr.ph421.preheader, label %.lr.ph419

.preheader361.us.preheader:                       ; preds = %.preheader361.lr.ph
  %xtraiter806 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.fq = icmp ult i32 %5, 4
  %unroll_iter811 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod808.not = icmp eq i64 %xtraiter806, 0
  %lcmp.mod810 = icmp ne i64 %xtraiter806, 0
  br label %.preheader361.us

.preheader361.us:                                 ; preds = %.preheader361.us.preheader, %._crit_edge405.us
  %indvars.iv551 = phi i64 [ 0, %.preheader361.us.preheader ], [ %indvars.iv.next552, %._crit_edge405.us ] ; 3 uses
  %i.fr = mul i64 %i.i, %indvars.iv551
  %i.fs = getelementptr [8 x i8], ptr %0, i64 %i.fr ; 5 uses
  br i1 %i.fq, label %.epil.preheader805, label %.preheader361.us.new

.preheader361.us.new:                             ; preds = %.preheader361.us, %.preheader361.us.new
  %indvars.iv546 = phi i64 [ %indvars.iv.next547.3, %.preheader361.us.new ], [ 0, %.preheader361.us ] ; 5 uses
  %.1318402.us = phi double [ %i.gh, %.preheader361.us.new ], [ 0.000000e+00, %.preheader361.us ]
  %niter812 = phi i64 [ %niter812.next.3, %.preheader361.us.new ], [ 0, %.preheader361.us ]
  %i.ft = getelementptr [8 x i8], ptr %i.fs, i64 %indvars.iv546
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !18 ; 2 uses
  %i.fv = call double @llvm.fmuladd.f64(double %i.fu, double %i.fu, double %.1318402.us)
  %i.fw = getelementptr [8 x i8], ptr %i.fs, i64 %indvars.iv546
  %i.fx = getelementptr i8, ptr %i.fw, i64 8
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !18 ; 2 uses
  %i.fz = call double @llvm.fmuladd.f64(double %i.fy, double %i.fy, double %i.fv)
  %i.ga = getelementptr [8 x i8], ptr %i.fs, i64 %indvars.iv546
  %i.gb = getelementptr i8, ptr %i.ga, i64 16
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !18 ; 2 uses
  %i.gd = call double @llvm.fmuladd.f64(double %i.gc, double %i.gc, double %i.fz)
  %i.ge = getelementptr [8 x i8], ptr %i.fs, i64 %indvars.iv546
  %i.gf = getelementptr i8, ptr %i.ge, i64 24
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !18 ; 2 uses
  %i.gh = call double @llvm.fmuladd.f64(double %i.gg, double %i.gg, double %i.gd) ; 3 uses
  %indvars.iv.next547.3 = add nuw nsw i64 %indvars.iv546, 4 ; 2 uses
  %niter812.next.3 = add i64 %niter812, 4         ; 2 uses
  %niter812.ncmp.3 = icmp eq i64 %niter812.next.3, %unroll_iter811
  br i1 %niter812.ncmp.3, label %._crit_edge405.us.unr-lcssa, label %.preheader361.us.new, !llvm.loop !117

._crit_edge405.us.unr-lcssa:                      ; preds = %.preheader361.us.new
  br i1 %lcmp.mod808.not, label %._crit_edge405.us, label %.epil.preheader805

.epil.preheader805:                               ; preds = %._crit_edge405.us.unr-lcssa, %.preheader361.us
  %indvars.iv546.epil.init = phi i64 [ 0, %.preheader361.us ], [ %indvars.iv.next547.3, %._crit_edge405.us.unr-lcssa ]
  %.1318402.us.epil.init = phi double [ 0.000000e+00, %.preheader361.us ], [ %i.gh, %._crit_edge405.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod810)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader805
  %indvars.iv546.epil = phi i64 [ %indvars.iv546.epil.init, %.epil.preheader805 ], [ %indvars.iv.next547.epil, %bb.n ] ; 2 uses
  %.1318402.us.epil = phi double [ %.1318402.us.epil.init, %.epil.preheader805 ], [ %i.gk, %bb.n ]
  %epil.iter807 = phi i64 [ 0, %.epil.preheader805 ], [ %epil.iter807.next, %bb.n ]
  %i.gi = getelementptr [8 x i8], ptr %i.fs, i64 %indvars.iv546.epil
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !18 ; 2 uses
  %i.gk = call double @llvm.fmuladd.f64(double %i.gj, double %i.gj, double %.1318402.us.epil) ; 2 uses
  %indvars.iv.next547.epil = add nuw nsw i64 %indvars.iv546.epil, 1
  %epil.iter807.next = add i64 %epil.iter807, 1   ; 2 uses
  %epil.iter807.cmp.not = icmp eq i64 %epil.iter807.next, %xtraiter806
  br i1 %epil.iter807.cmp.not, label %._crit_edge405.us, label %bb.n, !llvm.loop !118

._crit_edge405.us:                                ; preds = %bb.n, %._crit_edge405.us.unr-lcssa
  %.lcssa792 = phi double [ %i.gh, %._crit_edge405.us.unr-lcssa ], [ %i.gk, %bb.n ]
  %i.gl = call double @sqrt(double noundef %.lcssa792) #16
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv551
  store double %i.gl, ptr %i.gm, align 8, !tbaa !18
  %indvars.iv.next552 = add nuw nsw i64 %indvars.iv551, 1 ; 2 uses
  %exitcond555.not = icmp eq i64 %indvars.iv.next552, %wide.trip.count554
  br i1 %exitcond555.not, label %.preheader360, label %.preheader361.us, !llvm.loop !119

.preheader360:                                    ; preds = %._crit_edge405.us
  br i1 %.not.not, label %.lr.ph421.preheader, label %.lr.ph419

.lr.ph419:                                        ; preds = %.preheader361.preheader, %.preheader360
  %wide.trip.count576 = zext i32 %i.s to i64      ; 3 uses
  %wide.trip.count561 = zext nneg i32 %6 to i64
  %wide.trip.count566 = zext nneg i32 %5 to i64
  %wide.trip.count571 = zext nneg i32 %6 to i64
  %i.gn = add nuw nsw i64 %wide.trip.count576, 2305843009213693951
  %i.go = mul i64 %i.j, %i.gn
  %i.gp = shl nuw nsw i64 %i.n, 3
  %i.gq = add i64 %i.go, %i.n
  %i.gr = shl i64 %i.gq, 3
  %scevgep688 = getelementptr i8, ptr %3, i64 %i.gr
  %scevgep689 = getelementptr i8, ptr %3, i64 %i.gp
  %i.gs = and i64 %4, -8
  %i.gt = add nuw nsw i64 %wide.trip.count576, 2305843009213693951
  %i.gu = mul i64 %i.i, %i.gt
  %i.gv = shl nuw nsw i64 %wide.trip.count, 3
  %i.gw = add i64 %i.gu, %wide.trip.count
  %i.gx = shl i64 %i.gw, 3
  %scevgep710 = getelementptr i8, ptr %0, i64 %i.gx
  %scevgep711 = getelementptr i8, ptr %0, i64 %i.gv
  %i.gy = and i64 %1, -8
  %i.gz = add nsw i64 %i.n, -2
  %min.iters.check718 = icmp ult i32 %5, 6
  %stride.check716 = icmp slt i64 %1, 0
  %n.vec720 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n729 = icmp eq i64 %n.vec720, %wide.trip.count
  %xtraiter815 = and i64 %wide.trip.count, 1
  %lcmp.mod816.not = icmp eq i64 %xtraiter815, 0
  %i.ha = add nsw i64 %wide.trip.count, -1
  %min.iters.check696 = icmp ult i32 %6, 6
  %stride.check694 = icmp slt i64 %4, 0
  %n.vec698 = and i64 %i.n, 2147483644            ; 3 uses
  %cmp.n707 = icmp eq i64 %n.vec698, %i.n
  %xtraiter817 = and i64 %i.n, 1
  %lcmp.mod818.not = icmp eq i64 %xtraiter817, 0
  %i.hb = add nsw i64 %i.n, -1
  br label %.lr.ph411.preheader

.lr.ph421.preheader:                              ; preds = %.loopexit358, %.preheader360, %.preheader361.preheader
  %i.hc = phi i1 [ false, %.preheader361.preheader ], [ true, %.preheader360 ], [ %i.t, %.loopexit358 ] ; 2 uses
  %wide.trip.count581 = zext nneg i32 %6 to i64
  %min.iters.check732 = icmp ult i32 %6, 4
  br i1 %min.iters.check732, label %.lr.ph421.preheader791, label %vector.ph733

vector.ph733:                                     ; preds = %.lr.ph421.preheader
  %n.vec734 = and i64 %i.n, 2147483644            ; 3 uses
  br label %vector.body735

vector.body735:                                   ; preds = %vector.body735, %vector.ph733
  %index736 = phi i64 [ 0, %vector.ph733 ], [ %index.next739, %vector.body735 ] ; 3 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index736 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %wide.load737 = load <2 x double>, ptr %i.hd, align 8, !tbaa !18
  %wide.load738 = load <2 x double>, ptr %i.he, align 8, !tbaa !18
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index736 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  store <2 x double> %wide.load737, ptr %i.hf, align 8, !tbaa !18
  store <2 x double> %wide.load738, ptr %i.hg, align 8, !tbaa !18
  %index.next739 = add nuw i64 %index736, 4       ; 2 uses
  %i.hh = icmp eq i64 %index.next739, %n.vec734
  br i1 %i.hh, label %middle.block740, label %vector.body735, !llvm.loop !120

middle.block740:                                  ; preds = %vector.body735
  %cmp.n741 = icmp eq i64 %n.vec734, %i.n
  br i1 %cmp.n741, label %._crit_edge422, label %.lr.ph421.preheader791

.lr.ph421.preheader791:                           ; preds = %.lr.ph421.preheader, %middle.block740
  %indvars.iv578.ph = phi i64 [ 0, %.lr.ph421.preheader ], [ %n.vec734, %middle.block740 ]
  br label %.lr.ph421

.lr.ph411.preheader:                              ; preds = %.loopexit358, %.lr.ph419
  %indvars.iv573 = phi i64 [ 0, %.lr.ph419 ], [ %indvars.iv.next574, %.loopexit358 ] ; 9 uses
  %indvars.iv556 = phi i64 [ 1, %.lr.ph419 ], [ %indvars.iv.next557, %.loopexit358 ] ; 5 uses
  %indvars.iv.next574 = add nuw nsw i64 %indvars.iv573, 1 ; 2 uses
  %i.hi = trunc nuw nsw i64 %indvars.iv573 to i32 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv573
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !18 ; 3 uses
  %i.hj = sub nsw i64 %indvars.iv573, %i.n
  %i.hk = and i64 %i.hj, 1
  %lcmp.mod814.not.not = icmp eq i64 %i.hk, 0
  br i1 %lcmp.mod814.not.not, label %.lr.ph411.prol, label %.lr.ph411.prol.loopexit

.lr.ph411.prol:                                   ; preds = %.lr.ph411.preheader
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv556
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !18 ; 2 uses
  %i.hn = fcmp olt double %.pre, %i.hm            ; 2 uses
  %i.ho = trunc nuw nsw i64 %indvars.iv556 to i32
  %spec.select.prol = select i1 %i.hn, i32 %i.ho, i32 %i.hi ; 2 uses
  %indvars.iv.next559.prol = add nuw nsw i64 %indvars.iv556, 1
  %i.hp = select i1 %i.hn, double %i.hm, double %.pre
  br label %.lr.ph411.prol.loopexit

.lr.ph411.prol.loopexit:                          ; preds = %.lr.ph411.prol, %.lr.ph411.preheader
  %spec.select.lcssa.unr = phi i32 [ poison, %.lr.ph411.preheader ], [ %spec.select.prol, %.lr.ph411.prol ]
  %.unr = phi double [ %.pre, %.lr.ph411.preheader ], [ %i.hp, %.lr.ph411.prol ]
  %indvars.iv558.unr = phi i64 [ %indvars.iv556, %.lr.ph411.preheader ], [ %indvars.iv.next559.prol, %.lr.ph411.prol ]
  %.1297409.unr = phi i32 [ %i.hi, %.lr.ph411.preheader ], [ %spec.select.prol, %.lr.ph411.prol ]
  %i.hq = icmp eq i64 %i.gz, %indvars.iv573
  br i1 %i.hq, label %._crit_edge412, label %.lr.ph411

.lr.ph411:                                        ; preds = %.lr.ph411.prol.loopexit, %.lr.ph411
  %i.hr = phi double [ %i.ib, %.lr.ph411 ], [ %.unr, %.lr.ph411.prol.loopexit ] ; 2 uses
  %indvars.iv558 = phi i64 [ %indvars.iv.next559.1, %.lr.ph411 ], [ %indvars.iv558.unr, %.lr.ph411.prol.loopexit ] ; 4 uses
  %.1297409 = phi i32 [ %spec.select.1, %.lr.ph411 ], [ %.1297409.unr, %.lr.ph411.prol.loopexit ]
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv558
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !18 ; 2 uses
  %i.hu = fcmp olt double %i.hr, %i.ht            ; 2 uses
  %i.hv = trunc nuw nsw i64 %indvars.iv558 to i32
  %spec.select = select i1 %i.hu, i32 %i.hv, i32 %.1297409
  %indvars.iv.next559 = add nuw nsw i64 %indvars.iv558, 1 ; 2 uses
  %i.hw = select i1 %i.hu, double %i.ht, double %i.hr ; 2 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next559
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !18 ; 2 uses
  %i.hz = fcmp olt double %i.hw, %i.hy            ; 2 uses
  %i.ia = trunc nuw nsw i64 %indvars.iv.next559 to i32
  %spec.select.1 = select i1 %i.hz, i32 %i.ia, i32 %spec.select ; 2 uses
  %indvars.iv.next559.1 = add nuw nsw i64 %indvars.iv558, 2 ; 2 uses
  %exitcond562.not.1 = icmp eq i64 %indvars.iv.next559.1, %wide.trip.count561
  %i.ib = select i1 %i.hz, double %i.hy, double %i.hw
  br i1 %exitcond562.not.1, label %._crit_edge412, label %.lr.ph411, !llvm.loop !121

._crit_edge412:                                   ; preds = %.lr.ph411, %.lr.ph411.prol.loopexit
  %spec.select.lcssa = phi i32 [ %spec.select.lcssa.unr, %.lr.ph411.prol.loopexit ], [ %spec.select.1, %.lr.ph411 ] ; 2 uses
  %i.ic = zext i32 %spec.select.lcssa to i64
  %.not330 = icmp eq i64 %indvars.iv573, %i.ic
  br i1 %.not330, label %.loopexit358, label %bb.o

end_hunk_1
begin_hunk_2_@_ZN2cv5solveERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #16
  br label %bb.fj

bb.fd:                                            ; preds = %bb.ex, %bb.ew
  %.pn635 = phi { ptr, i32 } [ %i.uf, %bb.ex ], [ %i.ue, %bb.ew ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #16
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.ev
  %.pn635.pn = phi { ptr, i32 } [ %.pn635, %bb.fd ], [ %i.ud, %bb.ev ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #16
  br label %bb.fl

bb.ff:                                            ; preds = %bb.dr, %bb.dq
  %.8.shrunk = phi i1 [ %i.rx, %bb.dq ], [ %i.ry, %bb.dr ]
  br i1 %.8.shrunk, label %bb.fj, label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %.split, %.split719, %.split720
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %51, i8 0, i64 32, i1 false)
  %i.vc = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(32) %51)
          to label %bb.fh unwind label %bb.fi     ; 0 uses

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #16
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fg
  %i.vd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #16
  br label %bb.fl

bb.fj:                                            ; preds = %.split720, %.split719, %.split, %.thread715, %bb.fh, %bb.ff
  %.8.shrunk717 = phi i1 [ true, %.thread715 ], [ false, %bb.fh ], [ true, %bb.ff ], [ true, %.split ], [ true, %.split719 ], [ true, %.split720 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  %i.ve = load ptr, ptr %16, align 8, !tbaa !45   ; 3 uses
  %.not.i.i702 = icmp eq ptr %i.ve, %i.mj
  %i.vf = icmp eq ptr %i.ve, null
  %or.cond.i = or i1 %.not.i.i702, %i.vf
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  call void @_ZdaPv(ptr noundef nonnull %i.ve) #19
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit:            ; preds = %bb.fj, %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.fs

bb.fl:                                            ; preds = %bb.fi, %bb.fe, %bb.ep, %bb.dn, %bb.dj, %bb.da, %bb.cw, %bb.cs, %bb.cr, %bb.cl, %bb.ci
  %.pn649 = phi { ptr, i32 } [ %i.vd, %bb.fi ], [ %i.rn, %bb.dn ], [ %.pn645.pn.pn, %bb.ep ], [ %.pn635.pn, %bb.fe ], [ %i.qk, %bb.da ], [ %.pn627.pn, %bb.dj ], [ %i.px, %bb.cw ], [ %i.pg, %bb.ci ], [ %i.pj, %bb.cl ], [ %i.pt, %bb.cs ], [ %.pn610, %bb.cr ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #16
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.ch
  %.pn649.pn = phi { ptr, i32 } [ %.pn649, %bb.fl ], [ %i.pf, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  br label %bb.fn

bb.fn:                                            ; preds = %bb.cg, %bb.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit691, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit688
  %.pn653.pn = phi { ptr, i32 } [ %.pn653, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit688 ], [ %.pn608, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit691 ], [ %.pn649.pn, %bb.fm ], [ %i.pe, %bb.cg ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #16
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.bj
  %.pn653.pn.pn = phi { ptr, i32 } [ %.pn653.pn, %bb.fn ], [ %i.my, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.bi
  %.pn653.pn.pn.pn = phi { ptr, i32 } [ %.pn653.pn.pn, %bb.fo ], [ %i.mx, %bb.bi ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #16
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.bh
  %.pn653.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn653.pn.pn.pn, %bb.fp ], [ %i.mw, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  %i.vg = load ptr, ptr %16, align 8, !tbaa !45   ; 3 uses
  %.not.i.i704 = icmp eq ptr %i.vg, %i.mj
  %i.vh = icmp eq ptr %i.vg, null
  %or.cond.i705 = or i1 %.not.i.i704, %i.vh
  br i1 %or.cond.i705, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit707, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  call void @_ZdaPv(ptr noundef nonnull %i.vg) #19
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit707

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit707:         ; preds = %bb.fq, %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.fv

bb.fs:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit, %bb.ay
  %.0534 = phi i1 [ %.6, %bb.ay ], [ %.8.shrunk717, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.vi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.vj = load i32, ptr %i.vi, align 8, !tbaa !11
  %.not.i708 = icmp eq i32 %i.vj, 0
  br i1 %.not.i708, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.vk = landingpad { ptr, i32 }
          catch ptr null
  %i.vl = extractvalue { ptr, i32 } %i.vk, 0
  call void @__clang_call_terminate(ptr %i.vl) #17
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.fs, %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret i1 %.0534

bb.fv:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit707, %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit674, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i
  %.pn659.pn.pn = phi { ptr, i32 } [ %.pn659.pn, %bb.az ], [ %i.t, %bb.i ], [ %.pn653.pn.pn.pn.pn, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit707 ], [ %.pn604, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit674 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #16
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.h
  %.pn659.pn.pn.pn = phi { ptr, i32 } [ %.pn659.pn.pn, %bb.fv ], [ %i.s, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #16
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.g
  %.pn659.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn659.pn.pn.pn, %bb.fw ], [ %i.r, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  resume { ptr, i32 } %.pn659.pn.pn.pn.pn
}

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_autoEiRKNS0_12CheckContextE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZN2cv13mulTransposedERKNS_11_InputArrayERKNS_12_OutputArrayEbS2_di(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(24), double noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZN2cv4gemmERKNS_11_InputArrayES2_dS2_dRKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef, ptr noundef nonnull align 8 dereferenceable(24), double noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

declare noundef i32 @_ZN2cv3hal5QR32fEPfmiiiS1_mS1_(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN2cv3hal5QR64fEPdmiiiS1_mS1_(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN2cvL6SVBkSbEiiPKfmS1_mbS1_mbS1_miPfmPh(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i1 noundef zeroext %6, ptr nofree noundef readonly captures(none) %7, i64 noundef %8, ptr nofree noundef readonly captures(address_is_null) %9, i64 noundef %10, i32 noundef %11, ptr nofree noundef captures(none) %12, i64 noundef %13, ptr noundef %14) unnamed_addr #7 {
bb.a:
  %.not = icmp eq i64 %3, 0
  %i.a = lshr i64 %13, 2                          ; 2 uses
  %i.b = ptrtoint ptr %14 to i64
  %i.c = add i64 %i.b, 7
  %i.d = and i64 %i.c, -8
  %i.e = inttoptr i64 %i.d to ptr                 ; 11 uses
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %1, i32 %0) ; 3 uses
  %.not.i = icmp eq ptr %9, null                  ; 3 uses
  %spec.select.i = select i1 %.not.i, i32 %0, i32 %11 ; 8 uses
  %i.f = icmp sgt i32 %1, 0
  %i.g = icmp sgt i32 %spec.select.i, 0           ; 3 uses
  %or.cond.i = and i1 %i.f, %i.g
  br i1 %or.cond.i, label %.preheader140.preheader.i, label %.preheader139.i

.preheader140.preheader.i:                        ; preds = %bb.a
  %sext = shl i64 %i.a, 32
  %i.h = ashr exact i64 %sext, 30                 ; 9 uses
  %i.i = zext nneg i32 %spec.select.i to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 9 uses
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.k = icmp ult i32 %1, 8
  br i1 %i.k, label %.preheader140.i.epil.preheader, label %.preheader140.preheader.i.new

.preheader140.preheader.i.new:                    ; preds = %.preheader140.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %.preheader140.i

.preheader140.i:                                  ; preds = %.preheader140.i, %.preheader140.preheader.i.new
  %indvar.i = phi i64 [ 0, %.preheader140.preheader.i.new ], [ %indvar.next.i.7, %.preheader140.i ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader140.preheader.i.new ], [ %niter.next.7, %.preheader140.i ]
  %i.l = mul i64 %indvar.i, %i.h
  %scevgep.i = getelementptr i8, ptr %12, i64 %i.l
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.j, i1 false), !tbaa !20
  %indvar.next.i = or disjoint i64 %indvar.i, 1
  %i.m = mul i64 %indvar.next.i, %i.h
  %scevgep.i.1 = getelementptr i8, ptr %12, i64 %i.m
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.1, i8 0, i64 %i.j, i1 false), !tbaa !20
  %indvar.next.i.1 = or disjoint i64 %indvar.i, 2
  %i.n = mul i64 %indvar.next.i.1, %i.h
  %scevgep.i.2 = getelementptr i8, ptr %12, i64 %i.n
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.2, i8 0, i64 %i.j, i1 false), !tbaa !20
  %indvar.next.i.2 = or disjoint i64 %indvar.i, 3
  %i.o = mul i64 %indvar.next.i.2, %i.h
  %scevgep.i.3 = getelementptr i8, ptr %12, i64 %i.o
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.3, i8 0, i64 %i.j, i1 false), !tbaa !20
  %indvar.next.i.3 = or disjoint i64 %indvar.i, 4
  %i.p = mul i64 %indvar.next.i.3, %i.h
  %scevgep.i.4 = getelementptr i8, ptr %12, i64 %i.p
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.4, i8 0, i64 %i.j, i1 false), !tbaa !20
  %indvar.next.i.4 = or disjoint i64 %indvar.i, 5
  %i.q = mul i64 %indvar.next.i.4, %i.h
  %scevgep.i.5 = getelementptr i8, ptr %12, i64 %i.q
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.5, i8 0, i64 %i.j, i1 false), !tbaa !20
  %indvar.next.i.5 = or disjoint i64 %indvar.i, 6
  %i.r = mul i64 %indvar.next.i.5, %i.h
  %scevgep.i.6 = getelementptr i8, ptr %12, i64 %i.r
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.6, i8 0, i64 %i.j, i1 false), !tbaa !20
  %indvar.next.i.6 = or disjoint i64 %indvar.i, 7
  %i.s = mul i64 %indvar.next.i.6, %i.h
  %scevgep.i.7 = getelementptr i8, ptr %12, i64 %i.s
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.7, i8 0, i64 %i.j, i1 false), !tbaa !20
  %indvar.next.i.7 = add nuw nsw i64 %indvar.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader139.i.loopexit.unr-lcssa, label %.preheader140.i, !llvm.loop !214

.preheader139.i.loopexit.unr-lcssa:               ; preds = %.preheader140.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader139.i, label %.preheader140.i.epil.preheader

.preheader140.i.epil.preheader:                   ; preds = %.preheader139.i.loopexit.unr-lcssa, %.preheader140.preheader.i
  %indvar.i.epil.init = phi i64 [ 0, %.preheader140.preheader.i ], [ %indvar.next.i.7, %.preheader139.i.loopexit.unr-lcssa ]
  %lcmp.mod56 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod56)
  br label %.preheader140.i.epil

.preheader140.i.epil:                             ; preds = %.preheader140.i.epil, %.preheader140.i.epil.preheader
  %indvar.i.epil = phi i64 [ %indvar.i.epil.init, %.preheader140.i.epil.preheader ], [ %indvar.next.i.epil, %.preheader140.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader140.i.epil.preheader ], [ %epil.iter.next, %.preheader140.i.epil ]
  %i.t = mul i64 %indvar.i.epil, %i.h
  %scevgep.i.epil = getelementptr i8, ptr %12, i64 %i.t
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.epil, i8 0, i64 %i.j, i1 false), !tbaa !20
  %indvar.next.i.epil = add nuw nsw i64 %indvar.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader139.i, label %.preheader140.i.epil, !llvm.loop !215

.preheader139.i:                                  ; preds = %.preheader139.i.loopexit.unr-lcssa, %.preheader140.i.epil, %bb.a
  %i.u = icmp sgt i32 %.sroa.speculated.i, 0
  br i1 %i.u, label %.lr.ph.preheader.i, label %_ZN2cvL11SVBkSbImpl_IfEEviiPKT_iS3_ibS3_ibS3_iiPS1_iPdS1_.exit

.lr.ph.preheader.i:                               ; preds = %.preheader139.i
  %i.v = shl i64 %3, 30
  %i.w = ashr i64 %i.v, 32
  %i.x = select i1 %.not, i64 1, i64 %i.w         ; 7 uses
  %wide.trip.count176.i = zext nneg i32 %.sroa.speculated.i to i64 ; 4 uses
  %xtraiter57 = and i64 %wide.trip.count176.i, 3  ; 3 uses
  %i.y = icmp ult i32 %.sroa.speculated.i, 4
  br i1 %i.y, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter62 = and i64 %wide.trip.count176.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.0103143.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.new ], [ %i.as, %.lr.ph.i ]
  %niter63 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter63.next.3, %.lr.ph.i ]
  %i.z = mul nsw i64 %indvars.iv.i, %i.x
  %i.aa = getelementptr inbounds [4 x i8], ptr %2, i64 %i.z
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !20
  %i.ac = fpext float %i.ab to double
  %i.ad = fadd double %.0103143.i, %i.ac
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.ae = mul nsw i64 %indvars.iv.next.i, %i.x
  %i.af = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !20
  %i.ah = fpext float %i.ag to double
  %i.ai = fadd double %i.ad, %i.ah
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2
  %i.aj = mul nsw i64 %indvars.iv.next.i.1, %i.x
  %i.ak = getelementptr inbounds [4 x i8], ptr %2, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !20
  %i.am = fpext float %i.al to double
  %i.an = fadd double %i.ai, %i.am
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3
  %i.ao = mul nsw i64 %indvars.iv.next.i.2, %i.x
  %i.ap = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !20
  %i.ar = fpext float %i.aq to double
  %i.as = fadd double %i.an, %i.ar                ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter63.next.3 = add i64 %niter63, 4           ; 2 uses
  %niter63.ncmp.3 = icmp eq i64 %niter63.next.3, %unroll_iter62
  br i1 %niter63.ncmp.3, label %.lr.ph168.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !216

.lr.ph168.i.unr-lcssa:                            ; preds = %.lr.ph.i
  %lcmp.mod59.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod59.not, label %.lr.ph168.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph168.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %.lr.ph168.i.unr-lcssa ]
  %.0103143.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.as, %.lr.ph168.i.unr-lcssa ]
  %lcmp.mod61 = icmp ne i64 %xtraiter57, 0
  tail call void @llvm.assume(i1 %lcmp.mod61)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.0103143.i.epil = phi double [ %.0103143.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.ax, %.lr.ph.i.epil ]
  %epil.iter58 = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter58.next, %.lr.ph.i.epil ]
  %i.at = mul nsw i64 %indvars.iv.i.epil, %i.x
  %i.au = getelementptr inbounds [4 x i8], ptr %2, i64 %i.at
  %i.av = load float, ptr %i.au, align 4, !tbaa !20
  %i.aw = fpext float %i.av to double
  %i.ax = fadd double %.0103143.i.epil, %i.aw     ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter58.next = add i64 %epil.iter58, 1     ; 2 uses
  %epil.iter58.cmp.not = icmp eq i64 %epil.iter58.next, %xtraiter57
  br i1 %epil.iter58.cmp.not, label %.lr.ph168.i, label %.lr.ph.i.epil, !llvm.loop !217

.lr.ph168.i:                                      ; preds = %.lr.ph.i.epil, %.lr.ph168.i.unr-lcssa
  %.lcssa55 = phi double [ %i.as, %.lr.ph168.i.unr-lcssa ], [ %i.ax, %.lr.ph.i.epil ]
  %i.ay = fmul double %.lcssa55, f0x3CC0000000000000 ; 2 uses
  %i.az = icmp eq i32 %spec.select.i, 1
  %i.ba = shl i64 %10, 30
  %i.bb = ashr i64 %i.ba, 32                      ; 4 uses
  %i.bc = shl i64 %5, 30
  %i.bd = ashr i64 %i.bc, 32                      ; 2 uses
  %i.be = select i1 %6, i64 1, i64 %i.bd          ; 8 uses
  %wide.trip.count32.i.i = zext i32 %0 to i64     ; 3 uses
  %wide.trip.count.i.i = zext i32 %spec.select.i to i64 ; 15 uses
  %sext19 = shl i64 %i.a, 32
  %i.bf = ashr exact i64 %sext19, 32              ; 4 uses
  %wide.trip.count32.i112.i = zext i32 %1 to i64  ; 3 uses
  %i.bg = select i1 %6, i64 %i.bd, i64 1          ; 2 uses
  %i.bh = shl i64 %8, 30
  %i.bi = ashr i64 %i.bh, 32                      ; 2 uses
  %i.bj = shl nuw nsw i64 %wide.trip.count.i.i, 3
  br i1 %i.az, label %.lr.ph168.i.split.us.preheader, label %.lr.ph168.i.split.preheader

.lr.ph168.i.split.preheader:                      ; preds = %.lr.ph168.i
  %min.iters.check36 = icmp ult i32 %spec.select.i, 4
  %n.vec38 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %cmp.n49 = icmp eq i64 %n.vec38, %wide.trip.count.i.i
  %min.iters.check22 = icmp ult i32 %spec.select.i, 4
  %n.vec24 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %cmp.n33 = icmp eq i64 %n.vec24, %wide.trip.count.i.i
  %min.iters.check8 = icmp ugt i32 %spec.select.i, 3
  %ident.check.not = icmp eq i64 %i.be, 1
  %or.cond = and i1 %min.iters.check8, %ident.check.not
  %n.vec10 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %cmp.n19 = icmp eq i64 %n.vec10, %wide.trip.count.i.i
  %xtraiter64 = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod65.not = icmp eq i64 %xtraiter64, 0
  %i.bk = add nsw i64 %wide.trip.count.i.i, -1
  %min.iters.check = icmp ult i32 %spec.select.i, 4
  %n.vec = and i64 %wide.trip.count.i.i, 4294967292 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br label %.lr.ph168.i.split

.lr.ph168.i.split.us.preheader:                   ; preds = %.lr.ph168.i
  %xtraiter66 = and i64 %wide.trip.count32.i.i, 1
  %i.bl = icmp eq i32 %0, 1
  %unroll_iter71 = and i64 %wide.trip.count32.i.i, 4294967294
  %lcmp.mod68.not = icmp eq i64 %xtraiter66, 0
  %lcmp.mod70 = trunc i32 %0 to i1
  %xtraiter73 = and i64 %wide.trip.count32.i112.i, 1
  %i.bm = icmp eq i32 %1, 1
  %unroll_iter77 = and i64 %wide.trip.count32.i112.i, 4294967294
  %lcmp.mod75.not = icmp eq i64 %xtraiter73, 0
  %lcmp.mod76 = trunc i32 %1 to i1
  br label %.lr.ph168.i.split.us

.lr.ph168.i.split.us:                             ; preds = %.lr.ph168.i.split.us.preheader, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us
  %indvars.iv201.i.us = phi i64 [ %indvars.iv.next202.i.us, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us ], [ 0, %.lr.ph168.i.split.us.preheader ] ; 2 uses
  %.0104162.i.us = phi ptr [ %i.dz, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us ], [ %4, %.lr.ph168.i.split.us.preheader ] ; 5 uses
  %.0105160.i.us = phi ptr [ %i.ea, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us ], [ %7, %.lr.ph168.i.split.us.preheader ] ; 4 uses
  %i.bn = mul nsw i64 %indvars.iv201.i.us, %i.x
  %i.bo = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bn
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !20
  %i.bq = fpext float %i.bp to double             ; 2 uses
  %i.br = tail call noundef double @llvm.fabs.f64(double %i.bq)
  %i.bs = fcmp ugt double %i.br, %i.ay
  br i1 %i.bs, label %bb.b, label %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us

bb.b:                                             ; preds = %.lr.ph168.i.split.us
  %i.bt = fdiv double 1.000000e+00, %i.bq
  br i1 %.not.i, label %bb.c, label %.lr.ph155.i.us.preheader

.lr.ph155.i.us.preheader:                         ; preds = %bb.b
  br i1 %i.bl, label %.lr.ph155.i.us.epil.preheader, label %.lr.ph155.i.us

.lr.ph155.i.us:                                   ; preds = %.lr.ph155.i.us.preheader, %.lr.ph155.i.us
  %indvars.iv191.i.us = phi i64 [ %indvars.iv.next192.i.us.1, %.lr.ph155.i.us ], [ 0, %.lr.ph155.i.us.preheader ] ; 4 uses
  %.0154.i.us = phi double [ %i.cl, %.lr.ph155.i.us ], [ 0.000000e+00, %.lr.ph155.i.us.preheader ]
  %niter72 = phi i64 [ %niter72.next.1, %.lr.ph155.i.us ], [ 0, %.lr.ph155.i.us.preheader ]
  %i.bu = mul nsw i64 %indvars.iv191.i.us, %i.be
  %i.bv = getelementptr inbounds [4 x i8], ptr %.0104162.i.us, i64 %i.bu
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !20
  %i.bx = mul nsw i64 %indvars.iv191.i.us, %i.bb
  %i.by = getelementptr inbounds [4 x i8], ptr %9, i64 %i.bx
  %i.bz = load float, ptr %i.by, align 4, !tbaa !20
  %i.ca = fmul float %i.bw, %i.bz
  %i.cb = fpext float %i.ca to double
  %i.cc = fadd double %.0154.i.us, %i.cb
  %indvars.iv.next192.i.us = or disjoint i64 %indvars.iv191.i.us, 1 ; 2 uses
  %i.cd = mul nsw i64 %indvars.iv.next192.i.us, %i.be
  %i.ce = getelementptr inbounds [4 x i8], ptr %.0104162.i.us, i64 %i.cd
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !20
  %i.cg = mul nsw i64 %indvars.iv.next192.i.us, %i.bb
  %i.ch = getelementptr inbounds [4 x i8], ptr %9, i64 %i.cg
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !20
  %i.cj = fmul float %i.cf, %i.ci
  %i.ck = fpext float %i.cj to double
  %i.cl = fadd double %i.cc, %i.ck                ; 3 uses
  %indvars.iv.next192.i.us.1 = add nuw nsw i64 %indvars.iv191.i.us, 2 ; 2 uses
  %niter72.next.1 = add i64 %niter72, 2           ; 2 uses
  %niter72.ncmp.1 = icmp eq i64 %niter72.next.1, %unroll_iter71
  br i1 %niter72.ncmp.1, label %.lr.ph159.preheader.i.us.loopexit.unr-lcssa, label %.lr.ph155.i.us, !llvm.loop !218

bb.c:                                             ; preds = %bb.b
  %i.cm = load float, ptr %.0104162.i.us, align 4, !tbaa !20
  %i.cn = fpext float %i.cm to double
  br label %.lr.ph159.preheader.i.us

.lr.ph159.preheader.i.us.loopexit.unr-lcssa:      ; preds = %.lr.ph155.i.us
  br i1 %lcmp.mod68.not, label %.lr.ph159.preheader.i.us, label %.lr.ph155.i.us.epil.preheader

.lr.ph155.i.us.epil.preheader:                    ; preds = %.lr.ph159.preheader.i.us.loopexit.unr-lcssa, %.lr.ph155.i.us.preheader
  %indvars.iv191.i.us.epil.init = phi i64 [ 0, %.lr.ph155.i.us.preheader ], [ %indvars.iv.next192.i.us.1, %.lr.ph159.preheader.i.us.loopexit.unr-lcssa ] ; 2 uses
  %.0154.i.us.epil.init = phi double [ 0.000000e+00, %.lr.ph155.i.us.preheader ], [ %i.cl, %.lr.ph159.preheader.i.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod70)
  %i.co = mul nsw i64 %indvars.iv191.i.us.epil.init, %i.be
  %i.cp = getelementptr inbounds [4 x i8], ptr %.0104162.i.us, i64 %i.co
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !20
  %i.cr = mul nsw i64 %indvars.iv191.i.us.epil.init, %i.bb
  %i.cs = getelementptr inbounds [4 x i8], ptr %9, i64 %i.cr
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !20
  %i.cu = fmul float %i.cq, %i.ct
  %i.cv = fpext float %i.cu to double
  %i.cw = fadd double %.0154.i.us.epil.init, %i.cv
  br label %.lr.ph159.preheader.i.us

.lr.ph159.preheader.i.us:                         ; preds = %.lr.ph155.i.us.epil.preheader, %.lr.ph159.preheader.i.us.loopexit.unr-lcssa, %bb.c
  %.1.i.us = phi double [ %i.cn, %bb.c ], [ %i.cl, %.lr.ph159.preheader.i.us.loopexit.unr-lcssa ], [ %i.cw, %.lr.ph155.i.us.epil.preheader ]
  %i.cx = fmul double %i.bt, %.1.i.us             ; 3 uses
  br i1 %i.bm, label %.lr.ph159.i.us.epil.preheader, label %.lr.ph159.i.us

.lr.ph159.i.us:                                   ; preds = %.lr.ph159.preheader.i.us, %.lr.ph159.i.us
  %indvars.iv196.i.us = phi i64 [ %indvars.iv.next197.i.us.1, %.lr.ph159.i.us ], [ 0, %.lr.ph159.preheader.i.us ] ; 4 uses
  %niter78 = phi i64 [ %niter78.next.1, %.lr.ph159.i.us ], [ 0, %.lr.ph159.preheader.i.us ]
  %i.cy = mul nsw i64 %indvars.iv196.i.us, %i.bf
  %i.cz = getelementptr inbounds [4 x i8], ptr %12, i64 %i.cy ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !20
  %i.db = fpext float %i.da to double
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.0105160.i.us, i64 %indvars.iv196.i.us
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !20
  %i.de = fpext float %i.dd to double
  %i.df = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.de, double %i.db)
  %i.dg = fptrunc double %i.df to float
  store float %i.dg, ptr %i.cz, align 4, !tbaa !20
  %indvars.iv.next197.i.us = or disjoint i64 %indvars.iv196.i.us, 1 ; 2 uses
  %i.dh = mul nsw i64 %indvars.iv.next197.i.us, %i.bf
  %i.di = getelementptr inbounds [4 x i8], ptr %12, i64 %i.dh ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !20
  %i.dk = fpext float %i.dj to double
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.0105160.i.us, i64 %indvars.iv.next197.i.us
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !20
  %i.dn = fpext float %i.dm to double
  %i.do = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.dn, double %i.dk)
  %i.dp = fptrunc double %i.do to float
  store float %i.dp, ptr %i.di, align 4, !tbaa !20
  %indvars.iv.next197.i.us.1 = add nuw nsw i64 %indvars.iv196.i.us, 2 ; 2 uses
  %niter78.next.1 = add i64 %niter78, 2           ; 2 uses
  %niter78.ncmp.1 = icmp eq i64 %niter78.next.1, %unroll_iter77
  br i1 %niter78.ncmp.1, label %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us.loopexit.unr-lcssa, label %.lr.ph159.i.us, !llvm.loop !219

_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us.loopexit.unr-lcssa: ; preds = %.lr.ph159.i.us
  br i1 %lcmp.mod75.not, label %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us, label %.lr.ph159.i.us.epil.preheader

.lr.ph159.i.us.epil.preheader:                    ; preds = %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us.loopexit.unr-lcssa, %.lr.ph159.preheader.i.us
  %indvars.iv196.i.us.epil.init = phi i64 [ 0, %.lr.ph159.preheader.i.us ], [ %indvars.iv.next197.i.us.1, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod76)
  %i.dq = mul nsw i64 %indvars.iv196.i.us.epil.init, %i.bf
  %i.dr = getelementptr inbounds [4 x i8], ptr %12, i64 %i.dq ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !20
  %i.dt = fpext float %i.ds to double
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.0105160.i.us, i64 %indvars.iv196.i.us.epil.init
  %i.dv = load float, ptr %i.du, align 4, !tbaa !20
  %i.dw = fpext float %i.dv to double
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.dw, double %i.dt)
  %i.dy = fptrunc double %i.dx to float
  store float %i.dy, ptr %i.dr, align 4, !tbaa !20
  br label %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us

_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us: ; preds = %.lr.ph159.i.us.epil.preheader, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us.loopexit.unr-lcssa, %.lr.ph168.i.split.us
  %indvars.iv.next202.i.us = add nuw nsw i64 %indvars.iv201.i.us, 1 ; 2 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %.0104162.i.us, i64 %i.bg
  %i.ea = getelementptr inbounds [4 x i8], ptr %.0105160.i.us, i64 %i.bi
  %exitcond205.not.i.us = icmp eq i64 %indvars.iv.next202.i.us, %wide.trip.count176.i
  br i1 %exitcond205.not.i.us, label %_ZN2cvL11SVBkSbImpl_IfEEviiPKT_iS3_ibS3_ibS3_iiPS1_iPdS1_.exit, label %.lr.ph168.i.split.us, !llvm.loop !220

.lr.ph168.i.split:                                ; preds = %.lr.ph168.i.split.preheader, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i
  %indvars.iv201.i = phi i64 [ %indvars.iv.next202.i, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i ], [ 0, %.lr.ph168.i.split.preheader ] ; 2 uses
  %.0104162.i = phi ptr [ %i.hk, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i ], [ %4, %.lr.ph168.i.split.preheader ] ; 6 uses
  %.0105160.i = phi ptr [ %i.hl, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i ], [ %7, %.lr.ph168.i.split.preheader ] ; 2 uses
  %i.eb = mul nsw i64 %indvars.iv201.i, %i.x
  %i.ec = getelementptr inbounds [4 x i8], ptr %2, i64 %i.eb
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !20
  %i.ee = fpext float %i.ed to double             ; 2 uses
  %i.ef = tail call noundef double @llvm.fabs.f64(double %i.ee)
  %i.eg = fcmp ugt double %i.ef, %i.ay
  br i1 %i.eg, label %bb.d, label %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i

bb.d:                                             ; preds = %.lr.ph168.i.split
  %i.eh = fdiv double 1.000000e+00, %i.ee         ; 6 uses
  br i1 %.not.i, label %.preheader135.i, label %.preheader138.i

.preheader138.i:                                  ; preds = %bb.d
  br i1 %i.g, label %.lr.ph.i.preheader.i, label %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i

.preheader135.i:                                  ; preds = %bb.d
  br i1 %i.g, label %.lr.ph152.i.preheader, label %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i

.lr.ph152.i.preheader:                            ; preds = %.preheader135.i
  br i1 %or.cond, label %vector.ph9, label %.lr.ph152.i.preheader51

vector.ph9:                                       ; preds = %.lr.ph152.i.preheader
  %broadcast.splatinsert11 = insertelement <2 x double> poison, double %i.eh, i64 0
  %broadcast.splat12 = shufflevector <2 x double> %broadcast.splatinsert11, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body13

vector.body13:                                    ; preds = %vector.body13, %vector.ph9
  %index14 = phi i64 [ 0, %vector.ph9 ], [ %index.next17, %vector.body13 ] ; 3 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %.0104162.i, i64 %index14 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %wide.load15 = load <2 x float>, ptr %i.ei, align 4, !tbaa !20
  %wide.load16 = load <2 x float>, ptr %i.ej, align 4, !tbaa !20
  %i.ek = fpext <2 x float> %wide.load15 to <2 x double>
  %i.el = fpext <2 x float> %wide.load16 to <2 x double>
  %i.em = fmul <2 x double> %broadcast.splat12, %i.ek
  %i.en = fmul <2 x double> %broadcast.splat12, %i.el
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index14 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store <2 x double> %i.em, ptr %i.eo, align 8, !tbaa !18
  store <2 x double> %i.en, ptr %i.ep, align 8, !tbaa !18
  %index.next17 = add nuw i64 %index14, 4         ; 2 uses
  %i.eq = icmp eq i64 %index.next17, %n.vec10
  br i1 %i.eq, label %middle.block18, label %vector.body13, !llvm.loop !221

middle.block18:                                   ; preds = %vector.body13
  br i1 %cmp.n19, label %.lr.ph.i114.i.preheader, label %.lr.ph152.i.preheader51

.lr.ph152.i.preheader51:                          ; preds = %.lr.ph152.i.preheader, %middle.block18
  %indvars.iv186.i.ph = phi i64 [ 0, %.lr.ph152.i.preheader ], [ %n.vec10, %middle.block18 ] ; 5 uses
  br i1 %lcmp.mod65.not, label %.lr.ph152.i.prol.loopexit, label %.lr.ph152.i.prol

.lr.ph152.i.prol:                                 ; preds = %.lr.ph152.i.preheader51
  %i.er = mul nsw i64 %indvars.iv186.i.ph, %i.be
  %i.es = getelementptr inbounds [4 x i8], ptr %.0104162.i, i64 %i.er
  %i.et = load float, ptr %i.es, align 4, !tbaa !20
  %i.eu = fpext float %i.et to double
  %i.ev = fmul double %i.eh, %i.eu
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv186.i.ph
  store double %i.ev, ptr %i.ew, align 8, !tbaa !18
  %indvars.iv.next187.i.prol = or disjoint i64 %indvars.iv186.i.ph, 1
  br label %.lr.ph152.i.prol.loopexit

.lr.ph152.i.prol.loopexit:                        ; preds = %.lr.ph152.i.prol, %.lr.ph152.i.preheader51
  %indvars.iv186.i.unr = phi i64 [ %indvars.iv186.i.ph, %.lr.ph152.i.preheader51 ], [ %indvars.iv.next187.i.prol, %.lr.ph152.i.prol ]
  %i.ex = icmp eq i64 %indvars.iv186.i.ph, %i.bk
  br i1 %i.ex, label %.lr.ph.i114.i.preheader, label %.lr.ph152.i

.lr.ph.i.preheader.i:                             ; preds = %.preheader138.i
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.bj, i1 false), !tbaa !18
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i, %.lr.ph.i.preheader.i
  %indvars.iv29.i.i = phi i64 [ %indvars.iv.next30.i.i, %._crit_edge.i.i ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %.02023.i.i = phi ptr [ %i.ft, %._crit_edge.i.i ], [ %9, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.ey = mul nsw i64 %indvars.iv29.i.i, %i.be
  %i.ez = getelementptr inbounds [4 x i8], ptr %.0104162.i, i64 %i.ey
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !20 ; 2 uses
  br i1 %min.iters.check36, label %scalar.ph35.preheader, label %vector.ph37

vector.ph37:                                      ; preds = %.lr.ph.i.i
  %broadcast.splatinsert39 = insertelement <2 x float> poison, float %i.fa, i64 0
  %broadcast.splat40 = shufflevector <2 x float> %broadcast.splatinsert39, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph37
  %index42 = phi i64 [ 0, %vector.ph37 ], [ %index.next47, %vector.body41 ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index42 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  %wide.load43 = load <2 x double>, ptr %i.fb, align 8, !tbaa !18
  %wide.load44 = load <2 x double>, ptr %i.fc, align 8, !tbaa !18
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.02023.i.i, i64 %index42 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %wide.load45 = load <2 x float>, ptr %i.fd, align 4, !tbaa !20
  %wide.load46 = load <2 x float>, ptr %i.fe, align 4, !tbaa !20
  %i.ff = fmul <2 x float> %broadcast.splat40, %wide.load45
  %i.fg = fmul <2 x float> %broadcast.splat40, %wide.load46
  %i.fh = fpext <2 x float> %i.ff to <2 x double>
  %i.fi = fpext <2 x float> %i.fg to <2 x double>
  %i.fj = fadd <2 x double> %wide.load43, %i.fh
  %i.fk = fadd <2 x double> %wide.load44, %i.fi
  store <2 x double> %i.fj, ptr %i.fb, align 8, !tbaa !18
  store <2 x double> %i.fk, ptr %i.fc, align 8, !tbaa !18
  %index.next47 = add nuw i64 %index42, 4         ; 2 uses
  %i.fl = icmp eq i64 %index.next47, %n.vec38
  br i1 %i.fl, label %middle.block48, label %vector.body41, !llvm.loop !222

middle.block48:                                   ; preds = %vector.body41
  br i1 %cmp.n49, label %._crit_edge.i.i, label %scalar.ph35.preheader

scalar.ph35.preheader:                            ; preds = %.lr.ph.i.i, %middle.block48
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec38, %middle.block48 ]
  br label %scalar.ph35

scalar.ph35:                                      ; preds = %scalar.ph35.preheader, %scalar.ph35
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph35 ], [ %indvars.iv.i.i.ph, %scalar.ph35.preheader ] ; 3 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.i ; 2 uses
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !18
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.02023.i.i, i64 %indvars.iv.i.i
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !20
  %i.fq = fmul float %i.fa, %i.fp
  %i.fr = fpext float %i.fq to double
  %i.fs = fadd double %i.fn, %i.fr
  store double %i.fs, ptr %i.fm, align 8, !tbaa !18
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph35, !llvm.loop !223

._crit_edge.i.i:                                  ; preds = %scalar.ph35, %middle.block48
  %indvars.iv.next30.i.i = add nuw nsw i64 %indvars.iv29.i.i, 1 ; 2 uses
  %i.ft = getelementptr inbounds [4 x i8], ptr %.02023.i.i, i64 %i.bb
  %exitcond33.not.i.i = icmp eq i64 %indvars.iv.next30.i.i, %wide.trip.count32.i.i
  br i1 %exitcond33.not.i.i, label %.lr.ph150.i.preheader, label %.lr.ph.i.i, !llvm.loop !224

.lr.ph150.i.preheader:                            ; preds = %._crit_edge.i.i
  br i1 %min.iters.check22, label %.lr.ph150.i.preheader52, label %vector.ph23

vector.ph23:                                      ; preds = %.lr.ph150.i.preheader
  %broadcast.splatinsert25 = insertelement <2 x double> poison, double %i.eh, i64 0
  %broadcast.splat26 = shufflevector <2 x double> %broadcast.splatinsert25, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body27

vector.body27:                                    ; preds = %vector.body27, %vector.ph23
  %index28 = phi i64 [ 0, %vector.ph23 ], [ %index.next31, %vector.body27 ] ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index28 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16 ; 2 uses
  %wide.load29 = load <2 x double>, ptr %i.fu, align 8, !tbaa !18
  %wide.load30 = load <2 x double>, ptr %i.fv, align 8, !tbaa !18
  %i.fw = fmul <2 x double> %broadcast.splat26, %wide.load29
  %i.fx = fmul <2 x double> %broadcast.splat26, %wide.load30
  store <2 x double> %i.fw, ptr %i.fu, align 8, !tbaa !18
  store <2 x double> %i.fx, ptr %i.fv, align 8, !tbaa !18
  %index.next31 = add nuw i64 %index28, 4         ; 2 uses
  %i.fy = icmp eq i64 %index.next31, %n.vec24
  br i1 %i.fy, label %middle.block32, label %vector.body27, !llvm.loop !225

middle.block32:                                   ; preds = %vector.body27
  br i1 %cmp.n33, label %.lr.ph.i114.i.preheader, label %.lr.ph150.i.preheader52

.lr.ph150.i.preheader52:                          ; preds = %.lr.ph150.i.preheader, %middle.block32
  %indvars.iv181.i.ph = phi i64 [ 0, %.lr.ph150.i.preheader ], [ %n.vec24, %middle.block32 ]
  br label %.lr.ph150.i

.lr.ph150.i:                                      ; preds = %.lr.ph150.i.preheader52, %.lr.ph150.i
  %indvars.iv181.i = phi i64 [ %indvars.iv.next182.i, %.lr.ph150.i ], [ %indvars.iv181.i.ph, %.lr.ph150.i.preheader52 ] ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv181.i ; 2 uses
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !18
  %i.gb = fmul double %i.eh, %i.ga
  store double %i.gb, ptr %i.fz, align 8, !tbaa !18
  %indvars.iv.next182.i = add nuw nsw i64 %indvars.iv181.i, 1 ; 2 uses
  %exitcond185.not.i = icmp eq i64 %indvars.iv.next182.i, %wide.trip.count.i.i
  br i1 %exitcond185.not.i, label %.lr.ph.i114.i.preheader, label %.lr.ph150.i, !llvm.loop !226

.lr.ph152.i:                                      ; preds = %.lr.ph152.i.prol.loopexit, %.lr.ph152.i
  %indvars.iv186.i = phi i64 [ %indvars.iv.next187.i.1, %.lr.ph152.i ], [ %indvars.iv186.i.unr, %.lr.ph152.i.prol.loopexit ] ; 4 uses
  %i.gc = mul nsw i64 %indvars.iv186.i, %i.be
  %i.gd = getelementptr inbounds [4 x i8], ptr %.0104162.i, i64 %i.gc
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !20
  %i.gf = fpext float %i.ge to double
  %i.gg = fmul double %i.eh, %i.gf
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv186.i
  store double %i.gg, ptr %i.gh, align 8, !tbaa !18
  %indvars.iv.next187.i = add nuw nsw i64 %indvars.iv186.i, 1 ; 2 uses
  %i.gi = mul nsw i64 %indvars.iv.next187.i, %i.be
  %i.gj = getelementptr inbounds [4 x i8], ptr %.0104162.i, i64 %i.gi
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !20
  %i.gl = fpext float %i.gk to double
  %i.gm = fmul double %i.eh, %i.gl
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next187.i
  store double %i.gm, ptr %i.gn, align 8, !tbaa !18
  %indvars.iv.next187.i.1 = add nuw nsw i64 %indvars.iv186.i, 2 ; 2 uses
  %exitcond190.not.i.1 = icmp eq i64 %indvars.iv.next187.i.1, %wide.trip.count.i.i
  br i1 %exitcond190.not.i.1, label %.lr.ph.i114.i.preheader, label %.lr.ph152.i, !llvm.loop !227

.lr.ph.i114.i.preheader:                          ; preds = %.lr.ph150.i, %.lr.ph152.i.prol.loopexit, %.lr.ph152.i, %middle.block32, %middle.block18
  br label %.lr.ph.i114.i

.lr.ph.i114.i:                                    ; preds = %.lr.ph.i114.i.preheader, %._crit_edge.i119.i
  %indvars.iv29.i115.i = phi i64 [ %indvars.iv.next30.i120.i, %._crit_edge.i119.i ], [ 0, %.lr.ph.i114.i.preheader ] ; 2 uses
  %.02123.i.i = phi ptr [ %i.hj, %._crit_edge.i119.i ], [ %12, %.lr.ph.i114.i.preheader ] ; 3 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.0105160.i, i64 %indvars.iv29.i115.i
  %i.gp = load float, ptr %i.go, align 4, !tbaa !20
  %i.gq = fpext float %i.gp to double             ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i114.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.gq, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.02123.i.i, i64 %index ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 2 uses
  %wide.load = load <2 x float>, ptr %i.gr, align 4, !tbaa !20
  %wide.load4 = load <2 x float>, ptr %i.gs, align 4, !tbaa !20
  %i.gt = fpext <2 x float> %wide.load to <2 x double>
  %i.gu = fpext <2 x float> %wide.load4 to <2 x double>
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %wide.load5 = load <2 x double>, ptr %i.gv, align 8, !tbaa !18
  %wide.load6 = load <2 x double>, ptr %i.gw, align 8, !tbaa !18
  %i.gx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load5, <2 x double> %i.gt)
  %i.gy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load6, <2 x double> %i.gu)
  %i.gz = fptrunc <2 x double> %i.gx to <2 x float>
  %i.ha = fptrunc <2 x double> %i.gy to <2 x float>
  store <2 x float> %i.gz, ptr %i.gr, align 4, !tbaa !20
  store <2 x float> %i.ha, ptr %i.gs, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hb = icmp eq i64 %index.next, %n.vec
  br i1 %i.hb, label %middle.block, label %vector.body, !llvm.loop !228

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i119.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i114.i, %middle.block
  %indvars.iv.i116.i.ph = phi i64 [ 0, %.lr.ph.i114.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i116.i = phi i64 [ %indvars.iv.next.i117.i, %scalar.ph ], [ %indvars.iv.i116.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.02123.i.i, i64 %indvars.iv.i116.i ; 2 uses
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !20
  %i.he = fpext float %i.hd to double
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i116.i
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !18
  %i.hh = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.hg, double %i.he)
  %i.hi = fptrunc double %i.hh to float
  store float %i.hi, ptr %i.hc, align 4, !tbaa !20
  %indvars.iv.next.i117.i = add nuw nsw i64 %indvars.iv.i116.i, 1 ; 2 uses
  %exitcond.not.i118.i = icmp eq i64 %indvars.iv.next.i117.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i118.i, label %._crit_edge.i119.i, label %scalar.ph, !llvm.loop !229

._crit_edge.i119.i:                               ; preds = %scalar.ph, %middle.block
  %indvars.iv.next30.i120.i = add nuw nsw i64 %indvars.iv29.i115.i, 1 ; 2 uses
  %i.hj = getelementptr inbounds [4 x i8], ptr %.02123.i.i, i64 %i.bf
  %exitcond33.not.i121.i = icmp eq i64 %indvars.iv.next30.i120.i, %wide.trip.count32.i112.i
  br i1 %exitcond33.not.i121.i, label %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i, label %.lr.ph.i114.i, !llvm.loop !230

_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i: ; preds = %._crit_edge.i119.i, %.preheader135.i, %.preheader138.i, %.lr.ph168.i.split
  %indvars.iv.next202.i = add nuw nsw i64 %indvars.iv201.i, 1 ; 2 uses
  %i.hk = getelementptr inbounds [4 x i8], ptr %.0104162.i, i64 %i.bg
  %i.hl = getelementptr inbounds [4 x i8], ptr %.0105160.i, i64 %i.bi
  %exitcond205.not.i = icmp eq i64 %indvars.iv.next202.i, %wide.trip.count176.i
  br i1 %exitcond205.not.i, label %_ZN2cvL11SVBkSbImpl_IfEEviiPKT_iS3_ibS3_ibS3_iiPS1_iPdS1_.exit, label %.lr.ph168.i.split, !llvm.loop !220

_ZN2cvL11SVBkSbImpl_IfEEviiPKT_iS3_ibS3_ibS3_iiPS1_iPdS1_.exit: ; preds = %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us, %.preheader139.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN2cvL6SVBkSbEiiPKdmS1_mbS1_mbS1_miPdmPh(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i1 noundef zeroext %6, ptr nofree noundef readonly captures(none) %7, i64 noundef %8, ptr nofree noundef readonly captures(address_is_null) %9, i64 noundef %10, i32 noundef %11, ptr nofree noundef captures(none) %12, i64 noundef %13, ptr noundef %14) unnamed_addr #7 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %.not = icmp eq i64 %3, 0
  %i.b = lshr i64 %13, 3                          ; 2 uses
  %i.c = ptrtoint ptr %14 to i64
  %i.d = add i64 %i.c, 7
  %i.e = and i64 %i.d, -8                         ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 21 uses
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %1, i32 %0) ; 3 uses
  %.not.i = icmp eq ptr %9, null                  ; 3 uses
  %spec.select.i = select i1 %.not.i, i32 %0, i32 %11 ; 8 uses
  %i.g = icmp sgt i32 %1, 0
  %i.h = icmp sgt i32 %spec.select.i, 0           ; 3 uses
  %or.cond.i = and i1 %i.g, %i.h
  br i1 %or.cond.i, label %.preheader143.preheader.i, label %.preheader142.i

.preheader143.preheader.i:                        ; preds = %bb.a
  %sext = shl i64 %i.b, 32
  %i.i = ashr exact i64 %sext, 29                 ; 9 uses
  %i.j = zext nneg i32 %spec.select.i to i64
  %i.k = shl nuw nsw i64 %i.j, 3                  ; 9 uses
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.l = icmp ult i32 %1, 8
  br i1 %i.l, label %.preheader143.i.epil.preheader, label %.preheader143.preheader.i.new

.preheader143.preheader.i.new:                    ; preds = %.preheader143.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %.preheader143.i

.preheader143.i:                                  ; preds = %.preheader143.i, %.preheader143.preheader.i.new
  %indvar.i = phi i64 [ 0, %.preheader143.preheader.i.new ], [ %indvar.next.i.7, %.preheader143.i ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader143.preheader.i.new ], [ %niter.next.7, %.preheader143.i ]
  %i.m = mul i64 %indvar.i, %i.i
  %scevgep.i = getelementptr i8, ptr %12, i64 %i.m
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.k, i1 false), !tbaa !18
  %indvar.next.i = or disjoint i64 %indvar.i, 1
  %i.n = mul i64 %indvar.next.i, %i.i
  %scevgep.i.1 = getelementptr i8, ptr %12, i64 %i.n
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.1, i8 0, i64 %i.k, i1 false), !tbaa !18
  %indvar.next.i.1 = or disjoint i64 %indvar.i, 2
  %i.o = mul i64 %indvar.next.i.1, %i.i
  %scevgep.i.2 = getelementptr i8, ptr %12, i64 %i.o
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.2, i8 0, i64 %i.k, i1 false), !tbaa !18
  %indvar.next.i.2 = or disjoint i64 %indvar.i, 3
  %i.p = mul i64 %indvar.next.i.2, %i.i
  %scevgep.i.3 = getelementptr i8, ptr %12, i64 %i.p
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.3, i8 0, i64 %i.k, i1 false), !tbaa !18
  %indvar.next.i.3 = or disjoint i64 %indvar.i, 4
  %i.q = mul i64 %indvar.next.i.3, %i.i
  %scevgep.i.4 = getelementptr i8, ptr %12, i64 %i.q
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.4, i8 0, i64 %i.k, i1 false), !tbaa !18
  %indvar.next.i.4 = or disjoint i64 %indvar.i, 5
  %i.r = mul i64 %indvar.next.i.4, %i.i
  %scevgep.i.5 = getelementptr i8, ptr %12, i64 %i.r
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.5, i8 0, i64 %i.k, i1 false), !tbaa !18
  %indvar.next.i.5 = or disjoint i64 %indvar.i, 6
  %i.s = mul i64 %indvar.next.i.5, %i.i
  %scevgep.i.6 = getelementptr i8, ptr %12, i64 %i.s
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.6, i8 0, i64 %i.k, i1 false), !tbaa !18
  %indvar.next.i.6 = or disjoint i64 %indvar.i, 7
  %i.t = mul i64 %indvar.next.i.6, %i.i
  %scevgep.i.7 = getelementptr i8, ptr %12, i64 %i.t
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.7, i8 0, i64 %i.k, i1 false), !tbaa !18
  %indvar.next.i.7 = add nuw nsw i64 %indvar.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader142.i.loopexit.unr-lcssa, label %.preheader143.i, !llvm.loop !231

.preheader142.i.loopexit.unr-lcssa:               ; preds = %.preheader143.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader142.i, label %.preheader143.i.epil.preheader

.preheader143.i.epil.preheader:                   ; preds = %.preheader142.i.loopexit.unr-lcssa, %.preheader143.preheader.i
  %indvar.i.epil.init = phi i64 [ 0, %.preheader143.preheader.i ], [ %indvar.next.i.7, %.preheader142.i.loopexit.unr-lcssa ]
  %lcmp.mod67 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod67)
  br label %.preheader143.i.epil

.preheader143.i.epil:                             ; preds = %.preheader143.i.epil, %.preheader143.i.epil.preheader
  %indvar.i.epil = phi i64 [ %indvar.i.epil.init, %.preheader143.i.epil.preheader ], [ %indvar.next.i.epil, %.preheader143.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader143.i.epil.preheader ], [ %epil.iter.next, %.preheader143.i.epil ]
  %i.u = mul i64 %indvar.i.epil, %i.i
  %scevgep.i.epil = getelementptr i8, ptr %12, i64 %i.u
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.epil, i8 0, i64 %i.k, i1 false), !tbaa !18
  %indvar.next.i.epil = add nuw nsw i64 %indvar.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader142.i, label %.preheader143.i.epil, !llvm.loop !232

.preheader142.i:                                  ; preds = %.preheader142.i.loopexit.unr-lcssa, %.preheader143.i.epil, %bb.a
  %i.v = icmp sgt i32 %.sroa.speculated.i, 0
  br i1 %i.v, label %.lr.ph.preheader.i, label %_ZN2cvL11SVBkSbImpl_IdEEviiPKT_iS3_ibS3_ibS3_iiPS1_iPdS1_.exit

.lr.ph.preheader.i:                               ; preds = %.preheader142.i
  %i.w = shl i64 %3, 29
  %i.x = ashr i64 %i.w, 32
  %i.y = select i1 %.not, i64 1, i64 %i.x         ; 7 uses
  %wide.trip.count179.i = zext nneg i32 %.sroa.speculated.i to i64 ; 4 uses
  %xtraiter68 = and i64 %wide.trip.count179.i, 3  ; 3 uses
  %i.z = icmp ult i32 %.sroa.speculated.i, 4
  br i1 %i.z, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter73 = and i64 %wide.trip.count179.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.0103146.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.new ], [ %i.ap, %.lr.ph.i ]
  %niter74 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter74.next.3, %.lr.ph.i ]
  %i.aa = mul nsw i64 %indvars.iv.i, %i.y
  %i.ab = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !18
  %i.ad = fadd double %.0103146.i, %i.ac
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.ae = mul nsw i64 %indvars.iv.next.i, %i.y
  %i.af = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ae
  %i.ag = load double, ptr %i.af, align 8, !tbaa !18
  %i.ah = fadd double %i.ad, %i.ag
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2
  %i.ai = mul nsw i64 %indvars.iv.next.i.1, %i.y
  %i.aj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !18
  %i.al = fadd double %i.ah, %i.ak
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3
  %i.am = mul nsw i64 %indvars.iv.next.i.2, %i.y
  %i.an = getelementptr inbounds [8 x i8], ptr %2, i64 %i.am
  %i.ao = load double, ptr %i.an, align 8, !tbaa !18
  %i.ap = fadd double %i.al, %i.ao                ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter74.next.3 = add i64 %niter74, 4           ; 2 uses
  %niter74.ncmp.3 = icmp eq i64 %niter74.next.3, %unroll_iter73
  br i1 %niter74.ncmp.3, label %.lr.ph171.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !233

.lr.ph171.i.unr-lcssa:                            ; preds = %.lr.ph.i
  %lcmp.mod70.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod70.not, label %.lr.ph171.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph171.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %.lr.ph171.i.unr-lcssa ]
  %.0103146.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.ap, %.lr.ph171.i.unr-lcssa ]
  %lcmp.mod72 = icmp ne i64 %xtraiter68, 0
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.0103146.i.epil = phi double [ %.0103146.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.at, %.lr.ph.i.epil ]
  %epil.iter69 = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter69.next, %.lr.ph.i.epil ]
  %i.aq = mul nsw i64 %indvars.iv.i.epil, %i.y
  %i.ar = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aq
  %i.as = load double, ptr %i.ar, align 8, !tbaa !18
  %i.at = fadd double %.0103146.i.epil, %i.as     ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter69.next = add i64 %epil.iter69, 1     ; 2 uses
  %epil.iter69.cmp.not = icmp eq i64 %epil.iter69.next, %xtraiter68
  br i1 %epil.iter69.cmp.not, label %.lr.ph171.i, label %.lr.ph.i.epil, !llvm.loop !234

.lr.ph171.i:                                      ; preds = %.lr.ph.i.epil, %.lr.ph171.i.unr-lcssa
  %.lcssa66 = phi double [ %i.ap, %.lr.ph171.i.unr-lcssa ], [ %i.at, %.lr.ph.i.epil ]
  %i.au = fmul double %.lcssa66, f0x3CC0000000000000 ; 2 uses
  %i.av = icmp eq i32 %spec.select.i, 1
  %i.aw = shl i64 %10, 29
  %i.ax = ashr i64 %i.aw, 32                      ; 6 uses
  %i.ay = shl i64 %5, 29
  %i.az = ashr i64 %i.ay, 32                      ; 2 uses
  %i.ba = select i1 %6, i64 1, i64 %i.az          ; 10 uses
  %wide.trip.count33.i.i = zext i32 %0 to i64     ; 4 uses
  %wide.trip.count.i.i = zext i32 %spec.select.i to i64 ; 22 uses
  %sext19 = shl i64 %i.b, 32                      ; 2 uses
  %i.bb = ashr exact i64 %sext19, 32              ; 5 uses
  %wide.trip.count33.i112.i = zext i32 %1 to i64  ; 4 uses
  %i.bc = select i1 %6, i64 %i.az, i64 1          ; 3 uses
  %i.bd = shl i64 %8, 29
  %i.be = ashr i64 %i.bd, 32                      ; 2 uses
  br i1 %i.av, label %.lr.ph171.split.us.i.preheader, label %.lr.ph171.split.preheader.i

.lr.ph171.split.us.i.preheader:                   ; preds = %.lr.ph171.i
  %xtraiter82 = and i64 %wide.trip.count33.i.i, 1
  %i.bf = icmp eq i32 %0, 1
  %unroll_iter87 = and i64 %wide.trip.count33.i.i, 4294967294
  %lcmp.mod84.not = icmp eq i64 %xtraiter82, 0
  %lcmp.mod86 = trunc i32 %0 to i1
  %xtraiter89 = and i64 %wide.trip.count33.i112.i, 1
  %i.bg = icmp eq i32 %1, 1
  %unroll_iter93 = and i64 %wide.trip.count33.i112.i, 4294967294
  %lcmp.mod91.not = icmp eq i64 %xtraiter89, 0
  %lcmp.mod92 = trunc i32 %1 to i1
  br label %.lr.ph171.split.us.i

.lr.ph171.split.preheader.i:                      ; preds = %.lr.ph171.i
  %i.bh = shl nuw nsw i64 %wide.trip.count.i.i, 3 ; 2 uses
  %i.bi = add nuw nsw i64 %wide.trip.count33.i112.i, 2305843009213693951
  %i.bj = mul i64 %i.bi, %i.bb
  %i.bk = add i64 %i.bj, %wide.trip.count.i.i
  %i.bl = shl i64 %i.bk, 3
  %scevgep = getelementptr i8, ptr %12, i64 %i.bl
  %scevgep4 = getelementptr i8, ptr %i.f, i64 %i.bh
  %i.bm = sub i64 %i.e, %i.a
  %i.bn = mul nsw i64 %i.bc, -8
  %i.bo = shl nuw nsw i64 %wide.trip.count.i.i, 3
  %scevgep38 = getelementptr i8, ptr %i.f, i64 %i.bo
  %i.bp = add nuw nsw i64 %wide.trip.count33.i.i, 2305843009213693951
  %i.bq = mul i64 %i.ax, %i.bp
  %i.br = add i64 %i.bq, %wide.trip.count.i.i
  %i.bs = shl i64 %i.br, 3
  %scevgep39 = getelementptr i8, ptr %9, i64 %i.bs
  %min.iters.check45 = icmp ult i32 %spec.select.i, 4
  %bound040 = icmp ugt ptr %scevgep39, %i.f
  %bound141 = icmp ult ptr %9, %scevgep38
  %found.conflict42 = and i1 %bound040, %bound141
  %stride.check43 = icmp slt i64 %i.ax, 0
  %i.bt = or i1 %found.conflict42, %stride.check43
  %n.vec47 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %cmp.n58 = icmp eq i64 %n.vec47, %wide.trip.count.i.i
  %xtraiter75 = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod76.not = icmp eq i64 %xtraiter75, 0
  %i.bu = add nsw i64 %wide.trip.count.i.i, -1
  %min.iters.check24 = icmp ult i32 %spec.select.i, 4
  %n.vec26 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %cmp.n35 = icmp eq i64 %n.vec26, %wide.trip.count.i.i
  %min.iters.check10 = icmp ult i32 %spec.select.i, 4
  %ident.check.not = icmp ne i64 %i.ba, 1
  %or.cond.not61 = or i1 %min.iters.check10, %ident.check.not
  %invariant.op = add i64 %i.bm, -1
  %n.vec12 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %cmp.n21 = icmp eq i64 %n.vec12, %wide.trip.count.i.i
  %xtraiter77 = and i64 %wide.trip.count.i.i, 3   ; 2 uses
  %lcmp.mod78.not = icmp eq i64 %xtraiter77, 0
  %min.iters.check = icmp ult i32 %spec.select.i, 4
  %bound0 = icmp ult ptr %12, %scevgep4
  %bound1 = icmp ugt ptr %scevgep, %i.f
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %sext19, 0
  %i.bv = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %wide.trip.count.i.i, 4294967292 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  %xtraiter79 = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod80.not = icmp eq i64 %xtraiter79, 0
  %i.bw = add nsw i64 %wide.trip.count.i.i, -1
  br label %.lr.ph171.split.i

.lr.ph171.split.us.i:                             ; preds = %.lr.ph171.split.us.i.preheader, %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.us.i
  %indvars.iv209.i = phi i64 [ %indvars.iv.next210.i, %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.us.i ], [ 0, %.lr.ph171.split.us.i.preheader ] ; 2 uses
  %.0104165.us.i = phi ptr [ %i.ds, %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.us.i ], [ %4, %.lr.ph171.split.us.i.preheader ] ; 5 uses
  %.0105163.us.i = phi ptr [ %i.dt, %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.us.i ], [ %7, %.lr.ph171.split.us.i.preheader ] ; 4 uses
  %i.bx = mul nsw i64 %indvars.iv209.i, %i.y
  %i.by = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bx
  %i.bz = load double, ptr %i.by, align 8, !tbaa !18 ; 2 uses
  %i.ca = tail call noundef double @llvm.fabs.f64(double %i.bz)
  %i.cb = fcmp ugt double %i.ca, %i.au
  br i1 %i.cb, label %bb.b, label %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.us.i

bb.b:                                             ; preds = %.lr.ph171.split.us.i
  %i.cc = fdiv double 1.000000e+00, %i.bz
  br i1 %.not.i, label %bb.c, label %.lr.ph158.us.i.preheader

.lr.ph158.us.i.preheader:                         ; preds = %bb.b
  br i1 %i.bf, label %.lr.ph158.us.i.epil.preheader, label %.lr.ph158.us.i

.lr.ph158.us.i:                                   ; preds = %.lr.ph158.us.i.preheader, %.lr.ph158.us.i
  %indvars.iv199.i = phi i64 [ %indvars.iv.next200.i.1, %.lr.ph158.us.i ], [ 0, %.lr.ph158.us.i.preheader ] ; 4 uses
  %.0157.us.i = phi double [ %i.cq, %.lr.ph158.us.i ], [ 0.000000e+00, %.lr.ph158.us.i.preheader ]
  %niter88 = phi i64 [ %niter88.next.1, %.lr.ph158.us.i ], [ 0, %.lr.ph158.us.i.preheader ]
  %i.cd = mul nsw i64 %indvars.iv199.i, %i.ba
  %i.ce = getelementptr inbounds [8 x i8], ptr %.0104165.us.i, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !18
  %i.cg = mul nsw i64 %indvars.iv199.i, %i.ax
  %i.ch = getelementptr inbounds [8 x i8], ptr %9, i64 %i.cg
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !18
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.ci, double %.0157.us.i)
  %indvars.iv.next200.i = or disjoint i64 %indvars.iv199.i, 1 ; 2 uses
  %i.ck = mul nsw i64 %indvars.iv.next200.i, %i.ba
  %i.cl = getelementptr inbounds [8 x i8], ptr %.0104165.us.i, i64 %i.ck
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !18
  %i.cn = mul nsw i64 %indvars.iv.next200.i, %i.ax
  %i.co = getelementptr inbounds [8 x i8], ptr %9, i64 %i.cn
  %i.cp = load double, ptr %i.co, align 8, !tbaa !18
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.cp, double %i.cj) ; 3 uses
  %indvars.iv.next200.i.1 = add nuw nsw i64 %indvars.iv199.i, 2 ; 2 uses
  %niter88.next.1 = add i64 %niter88, 2           ; 2 uses
  %niter88.ncmp.1 = icmp eq i64 %niter88.next.1, %unroll_iter87
  br i1 %niter88.ncmp.1, label %.lr.ph162.us.preheader.i.loopexit.unr-lcssa, label %.lr.ph158.us.i, !llvm.loop !235

bb.c:                                             ; preds = %bb.b
  %i.cr = load double, ptr %.0104165.us.i, align 8, !tbaa !18
  br label %.lr.ph162.us.preheader.i

.lr.ph162.us.preheader.i.loopexit.unr-lcssa:      ; preds = %.lr.ph158.us.i
  br i1 %lcmp.mod84.not, label %.lr.ph162.us.preheader.i, label %.lr.ph158.us.i.epil.preheader

.lr.ph158.us.i.epil.preheader:                    ; preds = %.lr.ph162.us.preheader.i.loopexit.unr-lcssa, %.lr.ph158.us.i.preheader
  %indvars.iv199.i.epil.init = phi i64 [ 0, %.lr.ph158.us.i.preheader ], [ %indvars.iv.next200.i.1, %.lr.ph162.us.preheader.i.loopexit.unr-lcssa ] ; 2 uses
  %.0157.us.i.epil.init = phi double [ 0.000000e+00, %.lr.ph158.us.i.preheader ], [ %i.cq, %.lr.ph162.us.preheader.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.cs = mul nsw i64 %indvars.iv199.i.epil.init, %i.ba
  %i.ct = getelementptr inbounds [8 x i8], ptr %.0104165.us.i, i64 %i.cs
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !18
  %i.cv = mul nsw i64 %indvars.iv199.i.epil.init, %i.ax
  %i.cw = getelementptr inbounds [8 x i8], ptr %9, i64 %i.cv
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !18
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.cx, double %.0157.us.i.epil.init)
  br label %.lr.ph162.us.preheader.i

.lr.ph162.us.preheader.i:                         ; preds = %.lr.ph158.us.i.epil.preheader, %.lr.ph162.us.preheader.i.loopexit.unr-lcssa, %bb.c
  %.1.us.i = phi double [ %i.cr, %bb.c ], [ %i.cq, %.lr.ph162.us.preheader.i.loopexit.unr-lcssa ], [ %i.cy, %.lr.ph158.us.i.epil.preheader ]
  %i.cz = fmul double %i.cc, %.1.us.i             ; 3 uses
  br i1 %i.bg, label %.lr.ph162.us.i.epil.preheader, label %.lr.ph162.us.i

.lr.ph162.us.i:                                   ; preds = %.lr.ph162.us.preheader.i, %.lr.ph162.us.i
  %indvars.iv204.i = phi i64 [ %indvars.iv.next205.i.1, %.lr.ph162.us.i ], [ 0, %.lr.ph162.us.preheader.i ] ; 4 uses
  %niter94 = phi i64 [ %niter94.next.1, %.lr.ph162.us.i ], [ 0, %.lr.ph162.us.preheader.i ]
  %i.da = mul nsw i64 %indvars.iv204.i, %i.bb
  %i.db = getelementptr inbounds [8 x i8], ptr %12, i64 %i.da ; 2 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !18
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.0105163.us.i, i64 %indvars.iv204.i
  %i.de = load double, ptr %i.dd, align 8, !tbaa !18
  %i.df = tail call double @llvm.fmuladd.f64(double %i.cz, double %i.de, double %i.dc)
  store double %i.df, ptr %i.db, align 8, !tbaa !18
  %indvars.iv.next205.i = or disjoint i64 %indvars.iv204.i, 1 ; 2 uses
  %i.dg = mul nsw i64 %indvars.iv.next205.i, %i.bb
  %i.dh = getelementptr inbounds [8 x i8], ptr %12, i64 %i.dg ; 2 uses
  %i.di = load double, ptr %i.dh, align 8, !tbaa !18
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.0105163.us.i, i64 %indvars.iv.next205.i
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !18
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.cz, double %i.dk, double %i.di)
  store double %i.dl, ptr %i.dh, align 8, !tbaa !18
  %indvars.iv.next205.i.1 = add nuw nsw i64 %indvars.iv204.i, 2 ; 2 uses
  %niter94.next.1 = add i64 %niter94, 2           ; 2 uses
  %niter94.ncmp.1 = icmp eq i64 %niter94.next.1, %unroll_iter93
  br i1 %niter94.ncmp.1, label %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.us.i.loopexit.unr-lcssa, label %.lr.ph162.us.i, !llvm.loop !236

_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.us.i.loopexit.unr-lcssa: ; preds = %.lr.ph162.us.i
  br i1 %lcmp.mod91.not, label %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.us.i, label %.lr.ph162.us.i.epil.preheader

.lr.ph162.us.i.epil.preheader:                    ; preds = %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.us.i.loopexit.unr-lcssa, %.lr.ph162.us.preheader.i
  %indvars.iv204.i.epil.init = phi i64 [ 0, %.lr.ph162.us.preheader.i ], [ %indvars.iv.next205.i.1, %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.us.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod92)
  %i.dm = mul nsw i64 %indvars.iv204.i.epil.init, %i.bb
  %i.dn = getelementptr inbounds [8 x i8], ptr %12, i64 %i.dm ; 2 uses
  %i.do = load double, ptr %i.dn, align 8, !tbaa !18
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.0105163.us.i, i64 %indvars.iv204.i.epil.init
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !18
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.cz, double %i.dq, double %i.do)
  store double %i.dr, ptr %i.dn, align 8, !tbaa !18
  br label %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.us.i

_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.us.i: ; preds = %.lr.ph162.us.i.epil.preheader, %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.us.i.loopexit.unr-lcssa, %.lr.ph171.split.us.i
  %indvars.iv.next210.i = add nuw nsw i64 %indvars.iv209.i, 1 ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %.0104165.us.i, i64 %i.bc
  %i.dt = getelementptr inbounds [8 x i8], ptr %.0105163.us.i, i64 %i.be
  %exitcond213.not.i = icmp eq i64 %indvars.iv.next210.i, %wide.trip.count179.i
  br i1 %exitcond213.not.i, label %_ZN2cvL11SVBkSbImpl_IdEEviiPKT_iS3_ibS3_ibS3_iiPS1_iPdS1_.exit, label %.lr.ph171.split.us.i, !llvm.loop !237

.lr.ph171.split.i:                                ; preds = %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i, %.lr.ph171.split.preheader.i
  %indvars.iv194.i = phi i64 [ 0, %.lr.ph171.split.preheader.i ], [ %indvars.iv.next195.i, %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i ] ; 3 uses
  %.0104165.i = phi ptr [ %4, %.lr.ph171.split.preheader.i ], [ %i.hs, %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i ] ; 8 uses
  %.0105163.i = phi ptr [ %7, %.lr.ph171.split.preheader.i ], [ %i.ht, %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i ] ; 2 uses
  %i.du = mul i64 %i.bn, %indvars.iv194.i
  %i.dv = mul nsw i64 %indvars.iv194.i, %i.y
  %i.dw = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !18 ; 2 uses
  %i.dy = tail call noundef double @llvm.fabs.f64(double %i.dx)
  %i.dz = fcmp ugt double %i.dy, %i.au
  br i1 %i.dz, label %bb.d, label %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i

bb.d:                                             ; preds = %.lr.ph171.split.i
  %i.ea = fdiv double 1.000000e+00, %i.dx         ; 8 uses
  br i1 %.not.i, label %.preheader138.i, label %.preheader141.i

.preheader141.i:                                  ; preds = %bb.d
  br i1 %i.h, label %.lr.ph.i.preheader.i, label %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i

.preheader138.i:                                  ; preds = %bb.d
  br i1 %i.h, label %.lr.ph155.i.preheader, label %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i

.lr.ph155.i.preheader:                            ; preds = %.preheader138.i
  %.reass = add i64 %i.du, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  %or.cond60 = select i1 %or.cond.not61, i1 true, i1 %diff.check
  br i1 %or.cond60, label %.lr.ph155.i.preheader62, label %vector.ph11

vector.ph11:                                      ; preds = %.lr.ph155.i.preheader
  %broadcast.splatinsert13 = insertelement <2 x double> poison, double %i.ea, i64 0
  %broadcast.splat14 = shufflevector <2 x double> %broadcast.splatinsert13, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body15

vector.body15:                                    ; preds = %vector.body15, %vector.ph11
  %index16 = phi i64 [ 0, %vector.ph11 ], [ %index.next19, %vector.body15 ] ; 3 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %.0104165.i, i64 %index16 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %wide.load17 = load <2 x double>, ptr %i.eb, align 8, !tbaa !18
  %wide.load18 = load <2 x double>, ptr %i.ec, align 8, !tbaa !18
  %i.ed = fmul <2 x double> %broadcast.splat14, %wide.load17
  %i.ee = fmul <2 x double> %broadcast.splat14, %wide.load18
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index16 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store <2 x double> %i.ed, ptr %i.ef, align 8, !tbaa !18
  store <2 x double> %i.ee, ptr %i.eg, align 8, !tbaa !18
  %index.next19 = add nuw i64 %index16, 4         ; 2 uses
  %i.eh = icmp eq i64 %index.next19, %n.vec12
  br i1 %i.eh, label %middle.block20, label %vector.body15, !llvm.loop !238

middle.block20:                                   ; preds = %vector.body15
  br i1 %cmp.n21, label %.lr.ph.i114.i.preheader, label %.lr.ph155.i.preheader62

.lr.ph155.i.preheader62:                          ; preds = %.lr.ph155.i.preheader, %middle.block20
  %indvars.iv189.i.ph = phi i64 [ 0, %.lr.ph155.i.preheader ], [ %n.vec12, %middle.block20 ] ; 3 uses
  br i1 %lcmp.mod78.not, label %.lr.ph155.i.prol.loopexit, label %.lr.ph155.i.prol

.lr.ph155.i.prol:                                 ; preds = %.lr.ph155.i.preheader62, %.lr.ph155.i.prol
  %indvars.iv189.i.prol = phi i64 [ %indvars.iv.next190.i.prol, %.lr.ph155.i.prol ], [ %indvars.iv189.i.ph, %.lr.ph155.i.preheader62 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph155.i.prol ], [ 0, %.lr.ph155.i.preheader62 ]
  %i.ei = mul nsw i64 %indvars.iv189.i.prol, %i.ba
  %i.ej = getelementptr inbounds [8 x i8], ptr %.0104165.i, i64 %i.ei
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !18
  %i.el = fmul double %i.ea, %i.ek
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv189.i.prol
  store double %i.el, ptr %i.em, align 8, !tbaa !18
  %indvars.iv.next190.i.prol = add nuw nsw i64 %indvars.iv189.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter77
  br i1 %prol.iter.cmp.not, label %.lr.ph155.i.prol.loopexit, label %.lr.ph155.i.prol, !llvm.loop !239

.lr.ph155.i.prol.loopexit:                        ; preds = %.lr.ph155.i.prol, %.lr.ph155.i.preheader62
  %indvars.iv189.i.unr = phi i64 [ %indvars.iv189.i.ph, %.lr.ph155.i.preheader62 ], [ %indvars.iv.next190.i.prol, %.lr.ph155.i.prol ]
  %i.en = sub nsw i64 %indvars.iv189.i.ph, %wide.trip.count.i.i
  %i.eo = icmp ugt i64 %i.en, -4
  br i1 %i.eo, label %.lr.ph.i114.i.preheader, label %.lr.ph155.i

.lr.ph.i.preheader.i:                             ; preds = %.preheader141.i
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.f, i8 0, i64 %i.bh, i1 false), !tbaa !18
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i, %.lr.ph.i.preheader.i
  %indvars.iv30.i.i = phi i64 [ %indvars.iv.next31.i.i, %._crit_edge.i.i ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %.02024.i.i = phi ptr [ %i.fp, %._crit_edge.i.i ], [ %9, %.lr.ph.i.preheader.i ] ; 5 uses
  %i.ep = mul nsw i64 %indvars.iv30.i.i, %i.ba
  %i.eq = getelementptr inbounds [8 x i8], ptr %.0104165.i, i64 %i.ep
  %i.er = load double, ptr %i.eq, align 8, !tbaa !18 ; 4 uses
  %brmerge = select i1 %min.iters.check45, i1 true, i1 %i.bt
  br i1 %brmerge, label %scalar.ph44.preheader, label %vector.ph46

vector.ph46:                                      ; preds = %.lr.ph.i.i
  %broadcast.splatinsert48 = insertelement <2 x double> poison, double %i.er, i64 0
  %broadcast.splat49 = shufflevector <2 x double> %broadcast.splatinsert48, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph46
  %index51 = phi i64 [ 0, %vector.ph46 ], [ %index.next56, %vector.body50 ] ; 3 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index51 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 2 uses
  %wide.load52 = load <2 x double>, ptr %i.es, align 8, !tbaa !18, !alias.scope !254, !noalias !255
  %wide.load53 = load <2 x double>, ptr %i.et, align 8, !tbaa !18, !alias.scope !254, !noalias !255
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.02024.i.i, i64 %index51 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load54 = load <2 x double>, ptr %i.eu, align 8, !tbaa !18, !alias.scope !255
  %wide.load55 = load <2 x double>, ptr %i.ev, align 8, !tbaa !18, !alias.scope !255
  %i.ew = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat49, <2 x double> %wide.load54, <2 x double> %wide.load52)
  %i.ex = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat49, <2 x double> %wide.load55, <2 x double> %wide.load53)
  store <2 x double> %i.ew, ptr %i.es, align 8, !tbaa !18, !alias.scope !254, !noalias !255
  store <2 x double> %i.ex, ptr %i.et, align 8, !tbaa !18, !alias.scope !254, !noalias !255
  %index.next56 = add nuw i64 %index51, 4         ; 2 uses
  %i.ey = icmp eq i64 %index.next56, %n.vec47
  br i1 %i.ey, label %middle.block57, label %vector.body50, !llvm.loop !243

middle.block57:                                   ; preds = %vector.body50
  br i1 %cmp.n58, label %._crit_edge.i.i, label %scalar.ph44.preheader

scalar.ph44.preheader:                            ; preds = %.lr.ph.i.i, %middle.block57
  %indvars.iv.i.i.ph = phi i64 [ %n.vec47, %middle.block57 ], [ 0, %.lr.ph.i.i ] ; 5 uses
  br i1 %lcmp.mod76.not, label %scalar.ph44.prol.loopexit, label %scalar.ph44.prol

scalar.ph44.prol:                                 ; preds = %scalar.ph44.preheader
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i.ph ; 2 uses
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !18
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.02024.i.i, i64 %indvars.iv.i.i.ph
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !18
  %i.fd = tail call double @llvm.fmuladd.f64(double %i.er, double %i.fc, double %i.fa)
  store double %i.fd, ptr %i.ez, align 8, !tbaa !18
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %scalar.ph44.prol.loopexit

scalar.ph44.prol.loopexit:                        ; preds = %scalar.ph44.prol, %scalar.ph44.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph44.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph44.prol ]
  %i.fe = icmp eq i64 %indvars.iv.i.i.ph, %i.bu
  br i1 %i.fe, label %._crit_edge.i.i, label %scalar.ph44

scalar.ph44:                                      ; preds = %scalar.ph44.prol.loopexit, %scalar.ph44
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %scalar.ph44 ], [ %indvars.iv.i.i.unr, %scalar.ph44.prol.loopexit ] ; 4 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i ; 2 uses
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !18
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.02024.i.i, i64 %indvars.iv.i.i
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !18
  %i.fj = tail call double @llvm.fmuladd.f64(double %i.er, double %i.fi, double %i.fg)
  store double %i.fj, ptr %i.ff, align 8, !tbaa !18
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.i.i ; 2 uses
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !18
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %.02024.i.i, i64 %indvars.iv.next.i.i
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !18
  %i.fo = tail call double @llvm.fmuladd.f64(double %i.er, double %i.fn, double %i.fl)
  store double %i.fo, ptr %i.fk, align 8, !tbaa !18
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %._crit_edge.i.i, label %scalar.ph44, !llvm.loop !244

._crit_edge.i.i:                                  ; preds = %scalar.ph44.prol.loopexit, %scalar.ph44, %middle.block57
  %indvars.iv.next31.i.i = add nuw nsw i64 %indvars.iv30.i.i, 1 ; 2 uses
  %i.fp = getelementptr inbounds [8 x i8], ptr %.02024.i.i, i64 %i.ax
  %exitcond34.not.i.i = icmp eq i64 %indvars.iv.next31.i.i, %wide.trip.count33.i.i
  br i1 %exitcond34.not.i.i, label %.lr.ph153.i.preheader, label %.lr.ph.i.i, !llvm.loop !245

.lr.ph153.i.preheader:                            ; preds = %._crit_edge.i.i
  br i1 %min.iters.check24, label %.lr.ph153.i.preheader63, label %vector.ph25

vector.ph25:                                      ; preds = %.lr.ph153.i.preheader
  %broadcast.splatinsert27 = insertelement <2 x double> poison, double %i.ea, i64 0
  %broadcast.splat28 = shufflevector <2 x double> %broadcast.splatinsert27, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body29

vector.body29:                                    ; preds = %vector.body29, %vector.ph25
  %index30 = phi i64 [ 0, %vector.ph25 ], [ %index.next33, %vector.body29 ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index30 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 2 uses
  %wide.load31 = load <2 x double>, ptr %i.fq, align 8, !tbaa !18
  %wide.load32 = load <2 x double>, ptr %i.fr, align 8, !tbaa !18
  %i.fs = fmul <2 x double> %broadcast.splat28, %wide.load31
  %i.ft = fmul <2 x double> %broadcast.splat28, %wide.load32
  store <2 x double> %i.fs, ptr %i.fq, align 8, !tbaa !18
  store <2 x double> %i.ft, ptr %i.fr, align 8, !tbaa !18
  %index.next33 = add nuw i64 %index30, 4         ; 2 uses
  %i.fu = icmp eq i64 %index.next33, %n.vec26
  br i1 %i.fu, label %middle.block34, label %vector.body29, !llvm.loop !246

middle.block34:                                   ; preds = %vector.body29
  br i1 %cmp.n35, label %.lr.ph.i114.i.preheader, label %.lr.ph153.i.preheader63

.lr.ph153.i.preheader63:                          ; preds = %.lr.ph153.i.preheader, %middle.block34
  %indvars.iv184.i.ph = phi i64 [ 0, %.lr.ph153.i.preheader ], [ %n.vec26, %middle.block34 ]
  br label %.lr.ph153.i

.lr.ph153.i:                                      ; preds = %.lr.ph153.i.preheader63, %.lr.ph153.i
  %indvars.iv184.i = phi i64 [ %indvars.iv.next185.i, %.lr.ph153.i ], [ %indvars.iv184.i.ph, %.lr.ph153.i.preheader63 ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv184.i ; 2 uses
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !18
  %i.fx = fmul double %i.ea, %i.fw
  store double %i.fx, ptr %i.fv, align 8, !tbaa !18
  %indvars.iv.next185.i = add nuw nsw i64 %indvars.iv184.i, 1 ; 2 uses
  %exitcond188.not.i = icmp eq i64 %indvars.iv.next185.i, %wide.trip.count.i.i
  br i1 %exitcond188.not.i, label %.lr.ph.i114.i.preheader, label %.lr.ph153.i, !llvm.loop !247

.lr.ph155.i:                                      ; preds = %.lr.ph155.i.prol.loopexit, %.lr.ph155.i
  %indvars.iv189.i = phi i64 [ %indvars.iv.next190.i.3, %.lr.ph155.i ], [ %indvars.iv189.i.unr, %.lr.ph155.i.prol.loopexit ] ; 6 uses
  %i.fy = mul nsw i64 %indvars.iv189.i, %i.ba
  %i.fz = getelementptr inbounds [8 x i8], ptr %.0104165.i, i64 %i.fy
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !18
  %i.gb = fmul double %i.ea, %i.ga
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv189.i
  store double %i.gb, ptr %i.gc, align 8, !tbaa !18
  %indvars.iv.next190.i = add nuw nsw i64 %indvars.iv189.i, 1 ; 2 uses
  %i.gd = mul nsw i64 %indvars.iv.next190.i, %i.ba
  %i.ge = getelementptr inbounds [8 x i8], ptr %.0104165.i, i64 %i.gd
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !18
  %i.gg = fmul double %i.ea, %i.gf
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next190.i
  store double %i.gg, ptr %i.gh, align 8, !tbaa !18
  %indvars.iv.next190.i.1 = add nuw nsw i64 %indvars.iv189.i, 2 ; 2 uses
  %i.gi = mul nsw i64 %indvars.iv.next190.i.1, %i.ba
  %i.gj = getelementptr inbounds [8 x i8], ptr %.0104165.i, i64 %i.gi
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !18
  %i.gl = fmul double %i.ea, %i.gk
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next190.i.1
  store double %i.gl, ptr %i.gm, align 8, !tbaa !18
  %indvars.iv.next190.i.2 = add nuw nsw i64 %indvars.iv189.i, 3 ; 2 uses
  %i.gn = mul nsw i64 %indvars.iv.next190.i.2, %i.ba
  %i.go = getelementptr inbounds [8 x i8], ptr %.0104165.i, i64 %i.gn
  %i.gp = load double, ptr %i.go, align 8, !tbaa !18
  %i.gq = fmul double %i.ea, %i.gp
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next190.i.2
  store double %i.gq, ptr %i.gr, align 8, !tbaa !18
  %indvars.iv.next190.i.3 = add nuw nsw i64 %indvars.iv189.i, 4 ; 2 uses
  %exitcond193.not.i.3 = icmp eq i64 %indvars.iv.next190.i.3, %wide.trip.count.i.i
  br i1 %exitcond193.not.i.3, label %.lr.ph.i114.i.preheader, label %.lr.ph155.i, !llvm.loop !248

.lr.ph.i114.i.preheader:                          ; preds = %.lr.ph153.i, %.lr.ph155.i.prol.loopexit, %.lr.ph155.i, %middle.block34, %middle.block20
  br label %.lr.ph.i114.i

.lr.ph.i114.i:                                    ; preds = %.lr.ph.i114.i.preheader, %._crit_edge.i121.i
  %indvars.iv30.i115.i = phi i64 [ %indvars.iv.next31.i122.i, %._crit_edge.i121.i ], [ 0, %.lr.ph.i114.i.preheader ] ; 2 uses
  %.02123.i117.i = phi ptr [ %i.hr, %._crit_edge.i121.i ], [ %12, %.lr.ph.i114.i.preheader ] ; 5 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %.0105163.i, i64 %indvars.iv30.i115.i
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !18 ; 4 uses
  %brmerge98 = select i1 %min.iters.check, i1 true, i1 %i.bv
  br i1 %brmerge98, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i114.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.gt, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.02123.i117.i, i64 %index ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.gu, align 8, !tbaa !18, !alias.scope !256, !noalias !257
  %wide.load5 = load <2 x double>, ptr %i.gv, align 8, !tbaa !18, !alias.scope !256, !noalias !257
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %wide.load6 = load <2 x double>, ptr %i.gw, align 8, !tbaa !18, !alias.scope !257
  %wide.load7 = load <2 x double>, ptr %i.gx, align 8, !tbaa !18, !alias.scope !257
  %i.gy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load6, <2 x double> %wide.load)
  %i.gz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load7, <2 x double> %wide.load5)
  store <2 x double> %i.gy, ptr %i.gu, align 8, !tbaa !18, !alias.scope !256, !noalias !257
  store <2 x double> %i.gz, ptr %i.gv, align 8, !tbaa !18, !alias.scope !256, !noalias !257
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ha = icmp eq i64 %index.next, %n.vec
  br i1 %i.ha, label %middle.block, label %vector.body, !llvm.loop !252

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i121.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i114.i, %middle.block
  %indvars.iv.i118.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i114.i ] ; 5 uses
  br i1 %lcmp.mod80.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %.02123.i117.i, i64 %indvars.iv.i118.i.ph ; 2 uses
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !18
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i118.i.ph
  %i.he = load double, ptr %i.hd, align 8, !tbaa !18
  %i.hf = tail call double @llvm.fmuladd.f64(double %i.gt, double %i.he, double %i.hc)
end_hunk_2
begin_hunk_3_@_ZNK2cv3SVD9backSubstERKNS_11_InputArrayERKNS_12_OutputArrayE
define void @_ZNK2cv3SVD9backSubstERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(624) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.b, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 0, ptr %i.c, align 4, !tbaa !49
  store i32 16842752, ptr %3, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.d, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.e, align 8, !tbaa !48
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.f, align 4, !tbaa !49
  store i32 16842752, ptr %4, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %i.g, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.i, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.j, align 4, !tbaa !49
  store i32 16842752, ptr %5, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.h, ptr %i.k, align 8, !tbaa !27
  call void @_ZN2cv3SVD9backSubstERKNS_11_InputArrayES3_S3_S3_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv8SVDecompERKNS_11_InputArrayERKNS_12_OutputArrayES5_S5_i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %6 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv8SVDecompERKNS_11_InputArrayERKNS_12_OutputArrayES5_S5_iE26__cv_trace_location_fn1540)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  invoke void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv3SVD7computeERKNS_11_InputArrayERKNS_12_OutputArrayES6_S6_iE26__cv_trace_location_fn1483)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.a
  invoke fastcc void @_ZN2cvL11_SVDcomputeERKNS_11_InputArrayERKNS_12_OutputArrayES5_S5_i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %4)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %.noexc
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %5)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  call void @__clang_call_terminate(ptr %i.d) #17
  unreachable

bb.e:                                             ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.body

bb.f:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !11
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #17
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret void

bb.i:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.i ], [ %i.e, %bb.e ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv11SVBackSubstERKNS_11_InputArrayES2_S2_S2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv11SVBackSubstERKNS_11_InputArrayES2_S2_S2_RKNS_12_OutputArrayEE26__cv_trace_location_fn1547)
  invoke void @_ZN2cv3SVD9backSubstERKNS_11_InputArrayES3_S3_S3_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %5)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  call void @__clang_call_terminate(ptr %i.d) #17
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret void

bb.e:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  resume { ptr, i32 } %i.e
}

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv11JacobiImpl_IfEEbPT_mS2_S2_miPh(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = lshr i64 %1, 2                           ; 22 uses
  %.not = icmp eq ptr %3, null                    ; 3 uses
  br i1 %.not, label %.loopexit389, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %4, 2                           ; 7 uses
  %i.c = icmp sgt i32 %5, 0
  br i1 %i.c, label %.preheader388.lr.ph, label %._crit_edge469

.preheader388.lr.ph:                              ; preds = %bb.b
  %i.d = add nuw nsw i64 %i.b, 1                  ; 5 uses
  %i.e = zext nneg i32 %5 to i64                  ; 3 uses
  %i.f = shl nuw nsw i64 %i.e, 2                  ; 5 uses
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.g = add nsw i32 %5, -1
  %i.h = icmp ult i32 %i.g, 3
  br i1 %i.h, label %.preheader388.us.epil.preheader, label %.preheader388.lr.ph.new

.preheader388.lr.ph.new:                          ; preds = %.preheader388.lr.ph
  %unroll_iter = and i64 %i.e, 2147483644
  br label %.preheader388.us

.preheader388.us:                                 ; preds = %.preheader388.us, %.preheader388.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.preheader388.lr.ph.new ], [ %indvars.iv.next.3, %.preheader388.us ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader388.lr.ph.new ], [ %niter.next.3, %.preheader388.us ]
  %i.i = mul i64 %i.b, %indvars.iv
  %i.j = getelementptr [4 x i8], ptr %3, i64 %i.i
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.j, i8 0, i64 %i.f, i1 false), !tbaa !20
  %i.k = mul i64 %i.d, %indvars.iv
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.k
  store float 1.000000e+00, ptr %i.l, align 4, !tbaa !20
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.m = mul i64 %i.b, %indvars.iv.next
  %i.n = getelementptr [4 x i8], ptr %3, i64 %i.m
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.n, i8 0, i64 %i.f, i1 false), !tbaa !20
  %i.o = mul i64 %i.d, %indvars.iv.next
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.o
  store float 1.000000e+00, ptr %i.p, align 4, !tbaa !20
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.q = mul i64 %i.b, %indvars.iv.next.1
  %i.r = getelementptr [4 x i8], ptr %3, i64 %i.q
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.r, i8 0, i64 %i.f, i1 false), !tbaa !20
  %i.s = mul i64 %i.d, %indvars.iv.next.1
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.s
  store float 1.000000e+00, ptr %i.t, align 4, !tbaa !20
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.u = mul i64 %i.b, %indvars.iv.next.2
  %i.v = getelementptr [4 x i8], ptr %3, i64 %i.u
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.v, i8 0, i64 %i.f, i1 false), !tbaa !20
  %i.w = mul i64 %i.d, %indvars.iv.next.2
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.w
  store float 1.000000e+00, ptr %i.x, align 4, !tbaa !20
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit389.thread.unr-lcssa, label %.preheader388.us, !llvm.loop !261

.loopexit389.thread.unr-lcssa:                    ; preds = %.preheader388.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit389.thread, label %.preheader388.us.epil.preheader

.preheader388.us.epil.preheader:                  ; preds = %.loopexit389.thread.unr-lcssa, %.preheader388.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader388.lr.ph ], [ %indvars.iv.next.3, %.loopexit389.thread.unr-lcssa ]
  %lcmp.mod641 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod641)
  br label %.preheader388.us.epil

.preheader388.us.epil:                            ; preds = %.preheader388.us.epil, %.preheader388.us.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.preheader388.us.epil ], [ %indvars.iv.epil.init, %.preheader388.us.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader388.us.epil ], [ 0, %.preheader388.us.epil.preheader ]
  %i.y = mul i64 %i.b, %indvars.iv.epil
  %i.z = getelementptr [4 x i8], ptr %3, i64 %i.y
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.z, i8 0, i64 %i.f, i1 false), !tbaa !20
  %i.aa = mul i64 %i.d, %indvars.iv.epil
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aa
  store float 1.000000e+00, ptr %i.ab, align 4, !tbaa !20
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit389.thread, label %.preheader388.us.epil, !llvm.loop !262

.loopexit389.thread:                              ; preds = %.preheader388.us.epil, %.loopexit389.thread.unr-lcssa
  %i.ac = ptrtoint ptr %6 to i64
  %i.ad = add i64 %i.ac, 3
  %i.ae = and i64 %i.ad, -4
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = zext nneg i32 %5 to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  br label %.lr.ph405

.loopexit389:                                     ; preds = %bb.a
  %i.ai = ptrtoint ptr %6 to i64
  %i.aj = add i64 %i.ai, 3
  %i.ak = and i64 %i.aj, -4
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = zext nneg i32 %5 to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = icmp sgt i32 %5, 0
  br i1 %i.ao, label %.lr.ph405, label %._crit_edge469

.lr.ph405:                                        ; preds = %.loopexit389.thread, %.loopexit389
  %i.ap = phi ptr [ %i.ah, %.loopexit389.thread ], [ %i.an, %.loopexit389 ] ; 6 uses
  %i.aq = phi ptr [ %i.af, %.loopexit389.thread ], [ %i.al, %.loopexit389 ] ; 8 uses
  %.0359571 = phi i64 [ %i.b, %.loopexit389.thread ], [ %4, %.loopexit389 ] ; 8 uses
  %.pn = mul i32 %5, 30
  %i.ar = mul i32 %.pn, %5                        ; 2 uses
  %i.as = add nuw nsw i64 %i.a, 1
  %i.at = add nsw i32 %5, -1                      ; 2 uses
  %i.au = zext nneg i32 %i.at to i64              ; 3 uses
  %wide.trip.count492 = zext i32 %5 to i64        ; 16 uses
  %i.av = add nsw i64 %wide.trip.count492, -3
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph405, %bb.g
  %indvars.iv489 = phi i64 [ 0, %.lr.ph405 ], [ %indvars.iv.next490, %bb.g ] ; 16 uses
  %indvars.iv477 = phi i64 [ 2, %.lr.ph405 ], [ %indvars.iv.next478, %bb.g ] ; 5 uses
  %i.aw = add nsw i64 %indvars.iv489, -1          ; 3 uses
  %i.ax = sub nsw i64 %wide.trip.count492, %indvars.iv489
  %i.ay = mul i64 %i.as, %indvars.iv489
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !20
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv489
  store float %i.ba, ptr %i.bb, align 4, !tbaa !20
  %i.bc = icmp samesign ult i64 %indvars.iv489, %i.au
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bd = add nuw nsw i64 %indvars.iv489, 1       ; 2 uses
  %i.be = mul i64 %i.a, %indvars.iv489
  %i.bf = getelementptr [4 x i8], ptr %0, i64 %i.be ; 4 uses
  %i.bg = trunc i64 %indvars.iv489 to i32
  %i.bh = add i32 %i.bg, 2
  %i.bi = icmp slt i32 %i.bh, %5
  %i.bj = trunc nuw nsw i64 %i.bd to i32          ; 3 uses
  br i1 %i.bi, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.bk = getelementptr [4 x i8], ptr %i.bf, i64 %i.bd
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !20
  %i.bm = tail call noundef float @llvm.fabs.f32(float %i.bl) ; 3 uses
  %xtraiter642 = and i64 %i.ax, 1
  %lcmp.mod643.not = icmp eq i64 %xtraiter642, 0
  br i1 %lcmp.mod643.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.bn = getelementptr [4 x i8], ptr %i.bf, i64 %indvars.iv477
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !20
  %i.bp = tail call noundef float @llvm.fabs.f32(float %i.bo) ; 2 uses
  %i.bq = fcmp olt float %i.bm, %i.bp             ; 2 uses
  %i.br = trunc nuw i64 %indvars.iv477 to i32
  %.1330.prol = select i1 %i.bq, i32 %i.br, i32 %i.bj ; 2 uses
  %.1327.prol = select i1 %i.bq, float %i.bp, float %i.bm
  %indvars.iv.next480.prol = add nuw nsw i64 %indvars.iv477, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.1330.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.1330.prol, %.lr.ph.prol ]
  %indvars.iv479.unr = phi i64 [ %indvars.iv477, %.lr.ph.preheader ], [ %indvars.iv.next480.prol, %.lr.ph.prol ]
  %.0326394.unr = phi float [ %i.bm, %.lr.ph.preheader ], [ %.1327.prol, %.lr.ph.prol ]
  %.0329393.unr = phi i32 [ %i.bj, %.lr.ph.preheader ], [ %.1330.prol, %.lr.ph.prol ]
  %i.bs = icmp eq i64 %i.av, %indvars.iv489
  br i1 %i.bs, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv479 = phi i64 [ %indvars.iv.next480.1, %.lr.ph ], [ %indvars.iv479.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.0326394 = phi float [ %.1327.1, %.lr.ph ], [ %.0326394.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.0329393 = phi i32 [ %.1330.1, %.lr.ph ], [ %.0329393.unr, %.lr.ph.prol.loopexit ]
  %i.bt = getelementptr [4 x i8], ptr %i.bf, i64 %indvars.iv479
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !20
  %i.bv = tail call noundef float @llvm.fabs.f32(float %i.bu) ; 2 uses
  %i.bw = fcmp olt float %.0326394, %i.bv         ; 2 uses
  %i.bx = trunc nuw i64 %indvars.iv479 to i32
  %.1330 = select i1 %i.bw, i32 %i.bx, i32 %.0329393
  %.1327 = select i1 %i.bw, float %i.bv, float %.0326394 ; 2 uses
  %indvars.iv.next480 = add nuw nsw i64 %indvars.iv479, 1 ; 2 uses
  %i.by = getelementptr [4 x i8], ptr %i.bf, i64 %indvars.iv.next480
  %i.bz = load float, ptr %i.by, align 4, !tbaa !20
  %i.ca = tail call noundef float @llvm.fabs.f32(float %i.bz) ; 2 uses
  %i.cb = fcmp olt float %.1327, %i.ca            ; 2 uses
  %i.cc = trunc nuw i64 %indvars.iv.next480 to i32
  %.1330.1 = select i1 %i.cb, i32 %i.cc, i32 %.1330 ; 2 uses
  %.1327.1 = select i1 %i.cb, float %i.ca, float %.1327
  %indvars.iv.next480.1 = add nuw nsw i64 %indvars.iv479, 2 ; 2 uses
  %exitcond483.not.1 = icmp eq i64 %indvars.iv.next480.1, %wide.trip.count492
  br i1 %exitcond483.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !263

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.0329.lcssa = phi i32 [ %i.bj, %bb.d ], [ %.1330.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.1330.1, %.lr.ph ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv489
  store i32 %.0329.lcssa, ptr %i.cd, align 4, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.not376 = icmp eq i64 %indvars.iv489, 0
  br i1 %.not376, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ce = getelementptr [4 x i8], ptr %0, i64 %indvars.iv489 ; 4 uses
  %.not473 = icmp eq i64 %indvars.iv489, 1
  br i1 %.not473, label %._crit_edge400, label %.lr.ph399.preheader

.lr.ph399.preheader:                              ; preds = %bb.f
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !20
  %i.cg = tail call noundef float @llvm.fabs.f32(float %i.cf) ; 2 uses
  %xtraiter644 = and i64 %i.aw, 1
  %i.ch = icmp eq i64 %indvars.iv489, 2
  br i1 %i.ch, label %.lr.ph399.epil.preheader, label %.lr.ph399.preheader.new

.lr.ph399.preheader.new:                          ; preds = %.lr.ph399.preheader
  %unroll_iter649 = and i64 %i.aw, -2
  br label %.lr.ph399

.lr.ph399:                                        ; preds = %.lr.ph399, %.lr.ph399.preheader.new
  %indvars.iv484 = phi i64 [ 1, %.lr.ph399.preheader.new ], [ %indvars.iv.next485.1, %.lr.ph399 ] ; 4 uses
  %.2397 = phi float [ %i.cg, %.lr.ph399.preheader.new ], [ %.3.1, %.lr.ph399 ] ; 2 uses
  %.2331396 = phi i32 [ 0, %.lr.ph399.preheader.new ], [ %.3332.1, %.lr.ph399 ]
  %niter650 = phi i64 [ 0, %.lr.ph399.preheader.new ], [ %niter650.next.1, %.lr.ph399 ]
  %i.ci = mul i64 %i.a, %indvars.iv484
  %gep = getelementptr [4 x i8], ptr %i.ce, i64 %i.ci
  %i.cj = load float, ptr %gep, align 4, !tbaa !20
  %i.ck = tail call noundef float @llvm.fabs.f32(float %i.cj) ; 2 uses
  %i.cl = fcmp olt float %.2397, %i.ck            ; 2 uses
  %i.cm = trunc nuw nsw i64 %indvars.iv484 to i32
  %.3332 = select i1 %i.cl, i32 %i.cm, i32 %.2331396
  %.3 = select i1 %i.cl, float %i.ck, float %.2397 ; 2 uses
  %indvars.iv.next485 = add nuw nsw i64 %indvars.iv484, 1 ; 2 uses
  %i.cn = mul i64 %i.a, %indvars.iv.next485
  %gep.1 = getelementptr [4 x i8], ptr %i.ce, i64 %i.cn
  %i.co = load float, ptr %gep.1, align 4, !tbaa !20
  %i.cp = tail call noundef float @llvm.fabs.f32(float %i.co) ; 2 uses
  %i.cq = fcmp olt float %.3, %i.cp               ; 2 uses
  %i.cr = trunc nuw nsw i64 %indvars.iv.next485 to i32
  %.3332.1 = select i1 %i.cq, i32 %i.cr, i32 %.3332 ; 3 uses
  %.3.1 = select i1 %i.cq, float %i.cp, float %.3 ; 2 uses
  %indvars.iv.next485.1 = add nuw nsw i64 %indvars.iv484, 2 ; 2 uses
  %niter650.next.1 = add nuw i64 %niter650, 2     ; 2 uses
  %niter650.ncmp.1 = icmp eq i64 %niter650.next.1, %unroll_iter649
  br i1 %niter650.ncmp.1, label %._crit_edge400.loopexit.unr-lcssa, label %.lr.ph399, !llvm.loop !264

._crit_edge400.loopexit.unr-lcssa:                ; preds = %.lr.ph399
  %lcmp.mod646.not = icmp eq i64 %xtraiter644, 0
  br i1 %lcmp.mod646.not, label %._crit_edge400, label %.lr.ph399.epil.preheader

.lr.ph399.epil.preheader:                         ; preds = %._crit_edge400.loopexit.unr-lcssa, %.lr.ph399.preheader
  %indvars.iv484.epil.init = phi i64 [ 1, %.lr.ph399.preheader ], [ %indvars.iv.next485.1, %._crit_edge400.loopexit.unr-lcssa ] ; 2 uses
  %.2397.epil.init = phi float [ %i.cg, %.lr.ph399.preheader ], [ %.3.1, %._crit_edge400.loopexit.unr-lcssa ]
  %.2331396.epil.init = phi i32 [ 0, %.lr.ph399.preheader ], [ %.3332.1, %._crit_edge400.loopexit.unr-lcssa ]
  %lcmp.mod648 = trunc i64 %i.aw to i1
  tail call void @llvm.assume(i1 %lcmp.mod648)
  %i.cs = mul i64 %i.a, %indvars.iv484.epil.init
  %gep.epil = getelementptr [4 x i8], ptr %i.ce, i64 %i.cs
  %i.ct = load float, ptr %gep.epil, align 4, !tbaa !20
  %i.cu = tail call noundef float @llvm.fabs.f32(float %i.ct)
  %i.cv = fcmp olt float %.2397.epil.init, %i.cu
  %i.cw = trunc nuw nsw i64 %indvars.iv484.epil.init to i32
  %.3332.epil = select i1 %i.cv, i32 %i.cw, i32 %.2331396.epil.init
  br label %._crit_edge400

._crit_edge400:                                   ; preds = %.lr.ph399.epil.preheader, %._crit_edge400.loopexit.unr-lcssa, %bb.f
  %.2331.lcssa = phi i32 [ 0, %bb.f ], [ %.3332.1, %._crit_edge400.loopexit.unr-lcssa ], [ %.3332.epil, %.lr.ph399.epil.preheader ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv489
  store i32 %.2331.lcssa, ptr %i.cx, align 4, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %._crit_edge400
  %indvars.iv.next490 = add nuw nsw i64 %indvars.iv489, 1 ; 2 uses
  %indvars.iv.next478 = add nuw nsw i64 %indvars.iv477, 1
  %exitcond493.not = icmp eq i64 %indvars.iv.next490, %wide.trip.count492
  br i1 %exitcond493.not, label %._crit_edge406, label %bb.c, !llvm.loop !265

._crit_edge406:                                   ; preds = %bb.g
  %i.cy = icmp sgt i32 %5, 1                      ; 3 uses
  %i.cz = icmp ne i32 %i.ar, 0
end_hunk_3
begin_hunk_4_@_ZN2cv11JacobiImpl_IfEEbPT_mS2_S2_miPh:bb.a
  %i.qa = add i64 %i.pz, %wide.trip.count492
  %i.qb = shl i64 %i.qa, 2
  %scevgep623 = getelementptr i8, ptr %3, i64 %i.qb
  %i.qc = add nsw i64 %wide.trip.count492, -2
  %min.iters.check628 = icmp ult i32 %5, 8
  %stride.check = icmp slt i64 %i.px, 0
  %n.vec630 = and i64 %wide.trip.count492, 4294967288 ; 3 uses
  %cmp.n639 = icmp eq i64 %n.vec630, %wide.trip.count492
  %xtraiter703 = and i64 %wide.trip.count492, 1
  %lcmp.mod704.not = icmp eq i64 %xtraiter703, 0
  %i.qd = add nsw i64 %wide.trip.count492, -1
  br label %.lr.ph461.preheader

.lr.ph461.preheader:                              ; preds = %.loopexit, %.lr.ph468
  %indvars.iv546 = phi i64 [ 0, %.lr.ph468 ], [ %indvars.iv.next547, %.loopexit ] ; 8 uses
  %indvars.iv534 = phi i64 [ 1, %.lr.ph468 ], [ %indvars.iv.next535, %.loopexit ] ; 5 uses
  %indvars.iv.next547 = add nuw nsw i64 %indvars.iv546, 1 ; 2 uses
  %i.qe = trunc nuw nsw i64 %indvars.iv546 to i32 ; 2 uses
  %.phi.trans.insert552 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv546
  %.pre553 = load float, ptr %.phi.trans.insert552, align 4, !tbaa !20 ; 3 uses
  %i.qf = sub nsw i64 %indvars.iv546, %wide.trip.count492
  %i.qg = and i64 %i.qf, 1
  %lcmp.mod702.not.not = icmp eq i64 %i.qg, 0
  br i1 %lcmp.mod702.not.not, label %.lr.ph461.prol, label %.lr.ph461.prol.loopexit

.lr.ph461.prol:                                   ; preds = %.lr.ph461.preheader
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv534
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !20 ; 2 uses
  %i.qj = fcmp olt float %.pre553, %i.qi          ; 2 uses
  %i.qk = trunc nuw nsw i64 %indvars.iv534 to i32
  %spec.select.prol = select i1 %i.qj, i32 %i.qk, i32 %i.qe ; 2 uses
  %indvars.iv.next537.prol = add nuw nsw i64 %indvars.iv534, 1
  %i.ql = select i1 %i.qj, float %i.qi, float %.pre553
  br label %.lr.ph461.prol.loopexit

.lr.ph461.prol.loopexit:                          ; preds = %.lr.ph461.prol, %.lr.ph461.preheader
  %spec.select.lcssa.unr = phi i32 [ poison, %.lr.ph461.preheader ], [ %spec.select.prol, %.lr.ph461.prol ]
  %.unr = phi float [ %.pre553, %.lr.ph461.preheader ], [ %i.ql, %.lr.ph461.prol ]
  %indvars.iv536.unr = phi i64 [ %indvars.iv534, %.lr.ph461.preheader ], [ %indvars.iv.next537.prol, %.lr.ph461.prol ]
  %.8337459.unr = phi i32 [ %i.qe, %.lr.ph461.preheader ], [ %spec.select.prol, %.lr.ph461.prol ]
  %i.qm = icmp eq i64 %i.qc, %indvars.iv546
  br i1 %i.qm, label %._crit_edge462, label %.lr.ph461

.lr.ph461:                                        ; preds = %.lr.ph461.prol.loopexit, %.lr.ph461
  %i.qn = phi float [ %i.qx, %.lr.ph461 ], [ %.unr, %.lr.ph461.prol.loopexit ] ; 2 uses
  %indvars.iv536 = phi i64 [ %indvars.iv.next537.1, %.lr.ph461 ], [ %indvars.iv536.unr, %.lr.ph461.prol.loopexit ] ; 4 uses
  %.8337459 = phi i32 [ %spec.select.1, %.lr.ph461 ], [ %.8337459.unr, %.lr.ph461.prol.loopexit ]
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv536
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !20 ; 2 uses
  %i.qq = fcmp olt float %i.qn, %i.qp             ; 2 uses
  %i.qr = trunc nuw nsw i64 %indvars.iv536 to i32
  %spec.select = select i1 %i.qq, i32 %i.qr, i32 %.8337459
  %indvars.iv.next537 = add nuw nsw i64 %indvars.iv536, 1 ; 2 uses
  %i.qs = select i1 %i.qq, float %i.qp, float %i.qn ; 2 uses
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next537
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !20 ; 2 uses
  %i.qv = fcmp olt float %i.qs, %i.qu             ; 2 uses
  %i.qw = trunc nuw nsw i64 %indvars.iv.next537 to i32
  %spec.select.1 = select i1 %i.qv, i32 %i.qw, i32 %spec.select ; 2 uses
  %indvars.iv.next537.1 = add nuw nsw i64 %indvars.iv536, 2 ; 2 uses
  %exitcond540.not.1 = icmp eq i64 %indvars.iv.next537.1, %wide.trip.count539
  %i.qx = select i1 %i.qv, float %i.qu, float %i.qs
  br i1 %exitcond540.not.1, label %._crit_edge462, label %.lr.ph461, !llvm.loop !283

._crit_edge462:                                   ; preds = %.lr.ph461, %.lr.ph461.prol.loopexit
  %spec.select.lcssa = phi i32 [ %spec.select.lcssa.unr, %.lr.ph461.prol.loopexit ], [ %spec.select.1, %.lr.ph461 ] ; 2 uses
  %i.qy = zext i32 %spec.select.lcssa to i64
  %.not375 = icmp eq i64 %indvars.iv546, %i.qy
  br i1 %.not375, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %._crit_edge462
  %i.qz = sext i32 %spec.select.lcssa to i64      ; 3 uses
  %i.ra = getelementptr inbounds [4 x i8], ptr %2, i64 %i.qz ; 2 uses
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv546 ; 2 uses
  %i.rc = load float, ptr %i.ra, align 4, !tbaa !20
  %i.rd = load float, ptr %i.rb, align 4, !tbaa !20
  store float %i.rd, ptr %i.ra, align 4, !tbaa !20
  store float %i.rc, ptr %i.rb, align 4, !tbaa !20
  br i1 %.not, label %.loopexit, label %.lr.ph465

.lr.ph465:                                        ; preds = %bb.z
  %i.re = mul i64 %.0359571, %i.qz
  %i.rf = getelementptr [4 x i8], ptr %3, i64 %i.re ; 5 uses
  %i.rg = mul i64 %.0359571, %indvars.iv546
  %i.rh = getelementptr [4 x i8], ptr %3, i64 %i.rg ; 4 uses
  br i1 %min.iters.check628, label %scalar.ph627.preheader, label %vector.memcheck620

vector.memcheck620:                               ; preds = %.lr.ph465
  %i.ri = mul i64 %i.px, %i.qz
  %scevgep622 = getelementptr i8, ptr %scevgep621, i64 %i.ri
  %bound0624 = icmp ult ptr %i.rf, %scevgep623
  %bound1625 = icmp ult ptr %3, %scevgep622
  %found.conflict626 = and i1 %bound0624, %bound1625
  %i.rj = or i1 %found.conflict626, %stride.check
  br i1 %i.rj, label %scalar.ph627.preheader, label %vector.body631

vector.body631:                                   ; preds = %vector.memcheck620, %vector.body631
  %index632 = phi i64 [ %index.next637, %vector.body631 ], [ 0, %vector.memcheck620 ] ; 3 uses
  %i.rk = getelementptr [4 x i8], ptr %i.rf, i64 %index632 ; 3 uses
  %i.rl = getelementptr [4 x i8], ptr %i.rh, i64 %index632 ; 3 uses
  %i.rm = getelementptr i8, ptr %i.rk, i64 16     ; 2 uses
  %wide.load633 = load <4 x float>, ptr %i.rk, align 4, !tbaa !20, !alias.scope !294, !noalias !295
  %wide.load634 = load <4 x float>, ptr %i.rm, align 4, !tbaa !20, !alias.scope !294, !noalias !295
  %i.rn = getelementptr i8, ptr %i.rl, i64 16     ; 2 uses
  %wide.load635 = load <4 x float>, ptr %i.rl, align 4, !tbaa !20, !alias.scope !295
  %wide.load636 = load <4 x float>, ptr %i.rn, align 4, !tbaa !20, !alias.scope !295
  store <4 x float> %wide.load635, ptr %i.rk, align 4, !tbaa !20, !alias.scope !294, !noalias !295
  store <4 x float> %wide.load636, ptr %i.rm, align 4, !tbaa !20, !alias.scope !294, !noalias !295
  store <4 x float> %wide.load633, ptr %i.rl, align 4, !tbaa !20, !alias.scope !295
  store <4 x float> %wide.load634, ptr %i.rn, align 4, !tbaa !20, !alias.scope !295
  %index.next637 = add nuw i64 %index632, 8       ; 2 uses
  %i.ro = icmp eq i64 %index.next637, %n.vec630
  br i1 %i.ro, label %middle.block638, label %vector.body631, !llvm.loop !287

middle.block638:                                  ; preds = %vector.body631
  br i1 %cmp.n639, label %.loopexit, label %scalar.ph627.preheader

scalar.ph627.preheader:                           ; preds = %vector.memcheck620, %.lr.ph465, %middle.block638
  %indvars.iv541.ph = phi i64 [ 0, %vector.memcheck620 ], [ 0, %.lr.ph465 ], [ %n.vec630, %middle.block638 ] ; 5 uses
  br i1 %lcmp.mod704.not, label %scalar.ph627.prol.loopexit, label %scalar.ph627.prol

scalar.ph627.prol:                                ; preds = %scalar.ph627.preheader
  %i.rp = getelementptr [4 x i8], ptr %i.rf, i64 %indvars.iv541.ph ; 2 uses
  %i.rq = getelementptr [4 x i8], ptr %i.rh, i64 %indvars.iv541.ph ; 2 uses
  %i.rr = load float, ptr %i.rp, align 4, !tbaa !20
  %i.rs = load float, ptr %i.rq, align 4, !tbaa !20
  store float %i.rs, ptr %i.rp, align 4, !tbaa !20
  store float %i.rr, ptr %i.rq, align 4, !tbaa !20
  %indvars.iv.next542.prol = or disjoint i64 %indvars.iv541.ph, 1
  br label %scalar.ph627.prol.loopexit

scalar.ph627.prol.loopexit:                       ; preds = %scalar.ph627.prol, %scalar.ph627.preheader
  %indvars.iv541.unr = phi i64 [ %indvars.iv541.ph, %scalar.ph627.preheader ], [ %indvars.iv.next542.prol, %scalar.ph627.prol ]
  %i.rt = icmp eq i64 %indvars.iv541.ph, %i.qd
  br i1 %i.rt, label %.loopexit, label %scalar.ph627

scalar.ph627:                                     ; preds = %scalar.ph627.prol.loopexit, %scalar.ph627
  %indvars.iv541 = phi i64 [ %indvars.iv.next542.1, %scalar.ph627 ], [ %indvars.iv541.unr, %scalar.ph627.prol.loopexit ] ; 4 uses
  %i.ru = getelementptr [4 x i8], ptr %i.rf, i64 %indvars.iv541 ; 2 uses
  %i.rv = getelementptr [4 x i8], ptr %i.rh, i64 %indvars.iv541 ; 2 uses
  %i.rw = load float, ptr %i.ru, align 4, !tbaa !20
  %i.rx = load float, ptr %i.rv, align 4, !tbaa !20
  store float %i.rx, ptr %i.ru, align 4, !tbaa !20
  store float %i.rw, ptr %i.rv, align 4, !tbaa !20
  %indvars.iv.next542 = add nuw nsw i64 %indvars.iv541, 1 ; 2 uses
  %i.ry = getelementptr [4 x i8], ptr %i.rf, i64 %indvars.iv.next542 ; 2 uses
  %i.rz = getelementptr [4 x i8], ptr %i.rh, i64 %indvars.iv.next542 ; 2 uses
  %i.sa = load float, ptr %i.ry, align 4, !tbaa !20
  %i.sb = load float, ptr %i.rz, align 4, !tbaa !20
  store float %i.sb, ptr %i.ry, align 4, !tbaa !20
  store float %i.sa, ptr %i.rz, align 4, !tbaa !20
  %indvars.iv.next542.1 = add nuw nsw i64 %indvars.iv541, 2 ; 2 uses
  %exitcond545.not.1 = icmp eq i64 %indvars.iv.next542.1, %wide.trip.count544
  br i1 %exitcond545.not.1, label %.loopexit, label %scalar.ph627, !llvm.loop !288

.loopexit:                                        ; preds = %scalar.ph627.prol.loopexit, %scalar.ph627, %middle.block638, %bb.z, %._crit_edge462
  %indvars.iv.next535 = add nuw nsw i64 %indvars.iv534, 1
  %exitcond550.not = icmp eq i64 %indvars.iv.next547, %wide.trip.count549
  br i1 %exitcond550.not, label %._crit_edge469, label %.lr.ph461.preheader, !llvm.loop !289

._crit_edge469:                                   ; preds = %.loopexit, %bb.b, %.loopexit389, %._crit_edge406..loopexit387_crit_edge, %.loopexit387
  ret i1 true
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv11JacobiImpl_IdEEbPT_mS2_S2_miPh(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = lshr i64 %1, 3                           ; 22 uses
  %.not = icmp eq ptr %3, null                    ; 3 uses
  br i1 %.not, label %.loopexit389, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %4, 3                           ; 7 uses
  %i.c = icmp sgt i32 %5, 0
  br i1 %i.c, label %.preheader388.lr.ph, label %._crit_edge469

.preheader388.lr.ph:                              ; preds = %bb.b
  %i.d = add nuw nsw i64 %i.b, 1                  ; 5 uses
  %i.e = zext nneg i32 %5 to i64                  ; 3 uses
  %i.f = shl nuw nsw i64 %i.e, 3                  ; 5 uses
  %xtraiter = and i64 %i.e, 3                     ; 3 uses
  %i.g = add nsw i32 %5, -1
  %i.h = icmp ult i32 %i.g, 3
  br i1 %i.h, label %.preheader388.us.epil.preheader, label %.preheader388.lr.ph.new

.preheader388.lr.ph.new:                          ; preds = %.preheader388.lr.ph
  %unroll_iter = and i64 %i.e, 2147483644
  br label %.preheader388.us

.preheader388.us:                                 ; preds = %.preheader388.us, %.preheader388.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.preheader388.lr.ph.new ], [ %indvars.iv.next.3, %.preheader388.us ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader388.lr.ph.new ], [ %niter.next.3, %.preheader388.us ]
  %i.i = mul i64 %i.b, %indvars.iv
  %i.j = getelementptr [8 x i8], ptr %3, i64 %i.i
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.f, i1 false), !tbaa !18
  %i.k = mul i64 %i.d, %indvars.iv
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.k
  store double 1.000000e+00, ptr %i.l, align 8, !tbaa !18
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.m = mul i64 %i.b, %indvars.iv.next
  %i.n = getelementptr [8 x i8], ptr %3, i64 %i.m
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.n, i8 0, i64 %i.f, i1 false), !tbaa !18
  %i.o = mul i64 %i.d, %indvars.iv.next
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.o
  store double 1.000000e+00, ptr %i.p, align 8, !tbaa !18
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.q = mul i64 %i.b, %indvars.iv.next.1
  %i.r = getelementptr [8 x i8], ptr %3, i64 %i.q
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %i.f, i1 false), !tbaa !18
  %i.s = mul i64 %i.d, %indvars.iv.next.1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.s
  store double 1.000000e+00, ptr %i.t, align 8, !tbaa !18
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.u = mul i64 %i.b, %indvars.iv.next.2
  %i.v = getelementptr [8 x i8], ptr %3, i64 %i.u
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.f, i1 false), !tbaa !18
  %i.w = mul i64 %i.d, %indvars.iv.next.2
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.w
  store double 1.000000e+00, ptr %i.x, align 8, !tbaa !18
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit389.thread.unr-lcssa, label %.preheader388.us, !llvm.loop !296

.loopexit389.thread.unr-lcssa:                    ; preds = %.preheader388.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit389.thread, label %.preheader388.us.epil.preheader

.preheader388.us.epil.preheader:                  ; preds = %.loopexit389.thread.unr-lcssa, %.preheader388.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader388.lr.ph ], [ %indvars.iv.next.3, %.loopexit389.thread.unr-lcssa ]
  %lcmp.mod640 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod640)
  br label %.preheader388.us.epil

.preheader388.us.epil:                            ; preds = %.preheader388.us.epil, %.preheader388.us.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.preheader388.us.epil ], [ %indvars.iv.epil.init, %.preheader388.us.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader388.us.epil ], [ 0, %.preheader388.us.epil.preheader ]
  %i.y = mul i64 %i.b, %indvars.iv.epil
  %i.z = getelementptr [8 x i8], ptr %3, i64 %i.y
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.z, i8 0, i64 %i.f, i1 false), !tbaa !18
  %i.aa = mul i64 %i.d, %indvars.iv.epil
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.aa
  store double 1.000000e+00, ptr %i.ab, align 8, !tbaa !18
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit389.thread, label %.preheader388.us.epil, !llvm.loop !297

.loopexit389.thread:                              ; preds = %.preheader388.us.epil, %.loopexit389.thread.unr-lcssa
  %i.ac = ptrtoint ptr %6 to i64
  %i.ad = add i64 %i.ac, 3
  %i.ae = and i64 %i.ad, -4
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = zext nneg i32 %5 to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  br label %.lr.ph405

.loopexit389:                                     ; preds = %bb.a
  %i.ai = ptrtoint ptr %6 to i64
  %i.aj = add i64 %i.ai, 3
  %i.ak = and i64 %i.aj, -4
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = zext nneg i32 %5 to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = icmp sgt i32 %5, 0
  br i1 %i.ao, label %.lr.ph405, label %._crit_edge469

.lr.ph405:                                        ; preds = %.loopexit389.thread, %.loopexit389
  %i.ap = phi ptr [ %i.ah, %.loopexit389.thread ], [ %i.an, %.loopexit389 ] ; 6 uses
  %i.aq = phi ptr [ %i.af, %.loopexit389.thread ], [ %i.al, %.loopexit389 ] ; 8 uses
  %.0359571 = phi i64 [ %i.b, %.loopexit389.thread ], [ %4, %.loopexit389 ] ; 8 uses
  %.pn = mul i32 %5, 30
  %i.ar = mul i32 %.pn, %5                        ; 2 uses
  %i.as = add nuw nsw i64 %i.a, 1
  %i.at = add nsw i32 %5, -1                      ; 2 uses
  %i.au = zext nneg i32 %i.at to i64              ; 3 uses
  %wide.trip.count492 = zext i32 %5 to i64        ; 16 uses
  %i.av = add nsw i64 %wide.trip.count492, -3
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph405, %bb.g
  %indvars.iv489 = phi i64 [ 0, %.lr.ph405 ], [ %indvars.iv.next490, %bb.g ] ; 16 uses
  %indvars.iv477 = phi i64 [ 2, %.lr.ph405 ], [ %indvars.iv.next478, %bb.g ] ; 5 uses
  %i.aw = add nsw i64 %indvars.iv489, -1          ; 3 uses
  %i.ax = sub nsw i64 %wide.trip.count492, %indvars.iv489
  %i.ay = mul i64 %i.as, %indvars.iv489
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv489
  store double %i.ba, ptr %i.bb, align 8, !tbaa !18
  %i.bc = icmp samesign ult i64 %indvars.iv489, %i.au
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bd = add nuw nsw i64 %indvars.iv489, 1       ; 2 uses
  %i.be = mul i64 %i.a, %indvars.iv489
  %i.bf = getelementptr [8 x i8], ptr %0, i64 %i.be ; 4 uses
  %i.bg = trunc i64 %indvars.iv489 to i32
  %i.bh = add i32 %i.bg, 2
  %i.bi = icmp slt i32 %i.bh, %5
  %i.bj = trunc nuw nsw i64 %i.bd to i32          ; 3 uses
  br i1 %i.bi, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.bk = getelementptr [8 x i8], ptr %i.bf, i64 %i.bd
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !18
  %i.bm = tail call noundef double @llvm.fabs.f64(double %i.bl) ; 3 uses
  %xtraiter641 = and i64 %i.ax, 1
  %lcmp.mod642.not = icmp eq i64 %xtraiter641, 0
  br i1 %lcmp.mod642.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.bn = getelementptr [8 x i8], ptr %i.bf, i64 %indvars.iv477
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !18
  %i.bp = tail call noundef double @llvm.fabs.f64(double %i.bo) ; 2 uses
  %i.bq = fcmp olt double %i.bm, %i.bp            ; 2 uses
  %i.br = trunc nuw i64 %indvars.iv477 to i32
  %.1330.prol = select i1 %i.bq, i32 %i.br, i32 %i.bj ; 2 uses
  %.1327.prol = select i1 %i.bq, double %i.bp, double %i.bm
  %indvars.iv.next480.prol = add nuw nsw i64 %indvars.iv477, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.1330.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.1330.prol, %.lr.ph.prol ]
  %indvars.iv479.unr = phi i64 [ %indvars.iv477, %.lr.ph.preheader ], [ %indvars.iv.next480.prol, %.lr.ph.prol ]
  %.0326394.unr = phi double [ %i.bm, %.lr.ph.preheader ], [ %.1327.prol, %.lr.ph.prol ]
  %.0329393.unr = phi i32 [ %i.bj, %.lr.ph.preheader ], [ %.1330.prol, %.lr.ph.prol ]
  %i.bs = icmp eq i64 %i.av, %indvars.iv489
  br i1 %i.bs, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv479 = phi i64 [ %indvars.iv.next480.1, %.lr.ph ], [ %indvars.iv479.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.0326394 = phi double [ %.1327.1, %.lr.ph ], [ %.0326394.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.0329393 = phi i32 [ %.1330.1, %.lr.ph ], [ %.0329393.unr, %.lr.ph.prol.loopexit ]
  %i.bt = getelementptr [8 x i8], ptr %i.bf, i64 %indvars.iv479
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !18
  %i.bv = tail call noundef double @llvm.fabs.f64(double %i.bu) ; 2 uses
  %i.bw = fcmp olt double %.0326394, %i.bv        ; 2 uses
  %i.bx = trunc nuw i64 %indvars.iv479 to i32
  %.1330 = select i1 %i.bw, i32 %i.bx, i32 %.0329393
  %.1327 = select i1 %i.bw, double %i.bv, double %.0326394 ; 2 uses
  %indvars.iv.next480 = add nuw nsw i64 %indvars.iv479, 1 ; 2 uses
  %i.by = getelementptr [8 x i8], ptr %i.bf, i64 %indvars.iv.next480
  %i.bz = load double, ptr %i.by, align 8, !tbaa !18
  %i.ca = tail call noundef double @llvm.fabs.f64(double %i.bz) ; 2 uses
  %i.cb = fcmp olt double %.1327, %i.ca           ; 2 uses
  %i.cc = trunc nuw i64 %indvars.iv.next480 to i32
  %.1330.1 = select i1 %i.cb, i32 %i.cc, i32 %.1330 ; 2 uses
  %.1327.1 = select i1 %i.cb, double %i.ca, double %.1327
  %indvars.iv.next480.1 = add nuw nsw i64 %indvars.iv479, 2 ; 2 uses
  %exitcond483.not.1 = icmp eq i64 %indvars.iv.next480.1, %wide.trip.count492
  br i1 %exitcond483.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !298

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.0329.lcssa = phi i32 [ %i.bj, %bb.d ], [ %.1330.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.1330.1, %.lr.ph ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv489
  store i32 %.0329.lcssa, ptr %i.cd, align 4, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.not376 = icmp eq i64 %indvars.iv489, 0
  br i1 %.not376, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ce = getelementptr [8 x i8], ptr %0, i64 %indvars.iv489 ; 4 uses
  %.not473 = icmp eq i64 %indvars.iv489, 1
  br i1 %.not473, label %._crit_edge400, label %.lr.ph399.preheader

.lr.ph399.preheader:                              ; preds = %bb.f
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !18
  %i.cg = tail call noundef double @llvm.fabs.f64(double %i.cf) ; 2 uses
  %xtraiter643 = and i64 %i.aw, 1
  %i.ch = icmp eq i64 %indvars.iv489, 2
  br i1 %i.ch, label %.lr.ph399.epil.preheader, label %.lr.ph399.preheader.new

.lr.ph399.preheader.new:                          ; preds = %.lr.ph399.preheader
  %unroll_iter648 = and i64 %i.aw, -2
  br label %.lr.ph399

.lr.ph399:                                        ; preds = %.lr.ph399, %.lr.ph399.preheader.new
  %indvars.iv484 = phi i64 [ 1, %.lr.ph399.preheader.new ], [ %indvars.iv.next485.1, %.lr.ph399 ] ; 4 uses
  %.2397 = phi double [ %i.cg, %.lr.ph399.preheader.new ], [ %.3.1, %.lr.ph399 ] ; 2 uses
  %.2331396 = phi i32 [ 0, %.lr.ph399.preheader.new ], [ %.3332.1, %.lr.ph399 ]
  %niter649 = phi i64 [ 0, %.lr.ph399.preheader.new ], [ %niter649.next.1, %.lr.ph399 ]
  %i.ci = mul i64 %i.a, %indvars.iv484
  %gep = getelementptr [8 x i8], ptr %i.ce, i64 %i.ci
  %i.cj = load double, ptr %gep, align 8, !tbaa !18
  %i.ck = tail call noundef double @llvm.fabs.f64(double %i.cj) ; 2 uses
  %i.cl = fcmp olt double %.2397, %i.ck           ; 2 uses
  %i.cm = trunc nuw nsw i64 %indvars.iv484 to i32
  %.3332 = select i1 %i.cl, i32 %i.cm, i32 %.2331396
  %.3 = select i1 %i.cl, double %i.ck, double %.2397 ; 2 uses
  %indvars.iv.next485 = add nuw nsw i64 %indvars.iv484, 1 ; 2 uses
  %i.cn = mul i64 %i.a, %indvars.iv.next485
  %gep.1 = getelementptr [8 x i8], ptr %i.ce, i64 %i.cn
  %i.co = load double, ptr %gep.1, align 8, !tbaa !18
  %i.cp = tail call noundef double @llvm.fabs.f64(double %i.co) ; 2 uses
  %i.cq = fcmp olt double %.3, %i.cp              ; 2 uses
  %i.cr = trunc nuw nsw i64 %indvars.iv.next485 to i32
  %.3332.1 = select i1 %i.cq, i32 %i.cr, i32 %.3332 ; 3 uses
  %.3.1 = select i1 %i.cq, double %i.cp, double %.3 ; 2 uses
  %indvars.iv.next485.1 = add nuw nsw i64 %indvars.iv484, 2 ; 2 uses
  %niter649.next.1 = add nuw i64 %niter649, 2     ; 2 uses
  %niter649.ncmp.1 = icmp eq i64 %niter649.next.1, %unroll_iter648
  br i1 %niter649.ncmp.1, label %._crit_edge400.loopexit.unr-lcssa, label %.lr.ph399, !llvm.loop !299

._crit_edge400.loopexit.unr-lcssa:                ; preds = %.lr.ph399
  %lcmp.mod645.not = icmp eq i64 %xtraiter643, 0
  br i1 %lcmp.mod645.not, label %._crit_edge400, label %.lr.ph399.epil.preheader

.lr.ph399.epil.preheader:                         ; preds = %._crit_edge400.loopexit.unr-lcssa, %.lr.ph399.preheader
  %indvars.iv484.epil.init = phi i64 [ 1, %.lr.ph399.preheader ], [ %indvars.iv.next485.1, %._crit_edge400.loopexit.unr-lcssa ] ; 2 uses
  %.2397.epil.init = phi double [ %i.cg, %.lr.ph399.preheader ], [ %.3.1, %._crit_edge400.loopexit.unr-lcssa ]
  %.2331396.epil.init = phi i32 [ 0, %.lr.ph399.preheader ], [ %.3332.1, %._crit_edge400.loopexit.unr-lcssa ]
  %lcmp.mod647 = trunc i64 %i.aw to i1
  tail call void @llvm.assume(i1 %lcmp.mod647)
  %i.cs = mul i64 %i.a, %indvars.iv484.epil.init
  %gep.epil = getelementptr [8 x i8], ptr %i.ce, i64 %i.cs
  %i.ct = load double, ptr %gep.epil, align 8, !tbaa !18
  %i.cu = tail call noundef double @llvm.fabs.f64(double %i.ct)
  %i.cv = fcmp olt double %.2397.epil.init, %i.cu
  %i.cw = trunc nuw nsw i64 %indvars.iv484.epil.init to i32
  %.3332.epil = select i1 %i.cv, i32 %i.cw, i32 %.2331396.epil.init
  br label %._crit_edge400

._crit_edge400:                                   ; preds = %.lr.ph399.epil.preheader, %._crit_edge400.loopexit.unr-lcssa, %bb.f
  %.2331.lcssa = phi i32 [ 0, %bb.f ], [ %.3332.1, %._crit_edge400.loopexit.unr-lcssa ], [ %.3332.epil, %.lr.ph399.epil.preheader ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv489
  store i32 %.2331.lcssa, ptr %i.cx, align 4, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %._crit_edge400
  %indvars.iv.next490 = add nuw nsw i64 %indvars.iv489, 1 ; 2 uses
  %indvars.iv.next478 = add nuw nsw i64 %indvars.iv477, 1
  %exitcond493.not = icmp eq i64 %indvars.iv.next490, %wide.trip.count492
  br i1 %exitcond493.not, label %._crit_edge406, label %bb.c, !llvm.loop !300

._crit_edge406:                                   ; preds = %bb.g
  %i.cy = icmp sgt i32 %5, 1                      ; 3 uses
  %i.cz = icmp ne i32 %i.ar, 0
end_hunk_4
