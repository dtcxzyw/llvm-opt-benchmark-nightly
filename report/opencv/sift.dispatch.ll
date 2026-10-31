Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/sift.dispatch?download=true
inline.NumInlined: 1019
inline.NumDeleted: 410
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv12cpu_baseline18calcSIFTDescriptorERKNS_3MatENS_6Point_IfEEffiiRS1_i:bb.a
  br i1 %lcmp.mod.not, label %._crit_edge344, label %.preheader340.epil.preheader

.preheader340.epil.preheader:                     ; preds = %._crit_edge344.unr-lcssa, %.preheader341
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader341 ], [ %indvars.iv.next.3, %._crit_edge344.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod482)
  br label %.preheader340.epil

.preheader340.epil:                               ; preds = %.preheader340.epil, %.preheader340.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.preheader340.epil.preheader ], [ %indvars.iv.next.epil, %.preheader340.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader340.epil.preheader ], [ %epil.iter.next, %.preheader340.epil ]
  %i.ci = trunc nuw nsw i64 %indvars.iv.epil to i32
  %i.cj = mul i32 %i.as, %i.ci
  %i.ck = add i32 %i.bi, %i.cj
  %i.cl = sext i32 %i.ck to i64
  %i.cm = shl nsw i64 %i.cl, 2
  %scevgep.epil = getelementptr i8, ptr %i.bj, i64 %i.cm
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.epil, i8 0, i64 %i.bg, i1 false), !tbaa !30
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge344, label %.preheader340.epil, !llvm.loop !140

._crit_edge344:                                   ; preds = %.preheader340.epil, %._crit_edge344.unr-lcssa
  %i.cn = add nuw nsw i32 %.0271345, 1            ; 2 uses
  %exitcond395.not = icmp eq i32 %i.cn, %smax394
  br i1 %exitcond395.not, label %._crit_edge346.split, label %.preheader341, !llvm.loop !141

._crit_edge346.split:                             ; preds = %._crit_edge344, %bb.k
  %i.co = sub i32 0, %.sroa.speculated327         ; 2 uses
  %.not352 = icmp slt i32 %i.ac, 0
  br i1 %.not352, label %._crit_edge355, label %.preheader339.lr.ph

.preheader339.lr.ph:                              ; preds = %._crit_edge346.split
  %i.cp = sdiv i32 %4, 2
  %i.cq = sitofp i32 %i.cp to float
  %i.cr = sitofp i32 %4 to float
  %i.cs = add nsw i32 %i.ah, -1
  %i.ct = add nsw i32 %i.ae, -1
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 128
  %smax396 = call i32 @llvm.abs.i32(i32 %.sroa.speculated327, i1 false)
  %i.cx = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader339

.preheader339:                                    ; preds = %.preheader339.lr.ph, %._crit_edge351
  %.1272354 = phi i32 [ %i.co, %.preheader339.lr.ph ], [ %i.fp, %._crit_edge351 ] ; 3 uses
  %.1279353 = phi i32 [ 0, %.preheader339.lr.ph ], [ %.us-phi, %._crit_edge351 ] ; 2 uses
  %i.db = sitofp i32 %.1272354 to float           ; 2 uses
  %i.dc = fneg float %i.db
  %i.dd = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.de = insertelement <2 x float> %i.dd, float %i.db, i64 1
  %i.df = fmul <2 x float> %i.aq, %i.de
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dh = add i32 %.1272354, %i.l                 ; 5 uses
  %i.di = icmp sgt i32 %i.dh, 0
  %i.dj = icmp slt i32 %i.dh, %i.cs
  %i.dk = zext nneg i32 %i.dh to i64
  %i.dl = add nsw i32 %i.dh, -1
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = add nuw nsw i32 %i.dh, 1
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = load ptr, ptr %i.a, align 8
  %i.dq = load ptr, ptr %i.e, align 8
  %i.dr = load ptr, ptr %i.f, align 8
  %i.ds = load ptr, ptr %i.d, align 8
  br i1 %i.di, label %.lr.ph.split, label %._crit_edge351

.lr.ph.split:                                     ; preds = %.preheader339, %bb.p
  %.1276350 = phi i32 [ %i.fo, %bb.p ], [ %i.co, %.preheader339 ] ; 4 uses
  %.2280349 = phi i32 [ %.3281, %bb.p ], [ %.1279353, %.preheader339 ] ; 5 uses
  %i.dt = sitofp i32 %.1276350 to float
  %i.du = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dv, <2 x float> %i.aq, <2 x float> %i.dg) ; 4 uses
  %i.dx = fadd <2 x float> %i.dw, %i.cy
  %i.dy = fadd <2 x float> %i.dx, splat (float -5.000000e-01) ; 3 uses
  %i.dz = add nsw i32 %.1276350, %i.j             ; 3 uses
  %i.ea = extractelement <2 x float> %i.dy, i64 0 ; 2 uses
  %i.eb = fcmp ogt float %i.ea, -1.000000e+00
  br i1 %i.eb, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.lr.ph.split
  %i.ec = fcmp olt <2 x float> %i.dy, %i.da       ; 2 uses
  %i.ed = extractelement <2 x float> %i.dy, i64 1 ; 2 uses
  %i.ee = fcmp ogt float %i.ed, -1.000000e+00
  %i.ef = extractelement <2 x i1> %i.ec, i64 1
  %i.eg = and i1 %i.ee, %i.ef
  %i.eh = extractelement <2 x i1> %i.ec, i64 0
  %or.cond385 = select i1 %i.eh, i1 %i.eg, i1 false
  br i1 %or.cond385, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ei = icmp sgt i32 %i.dz, 0
  %or.cond5 = select i1 %i.dj, i1 %i.ei, i1 false
  %i.ej = icmp slt i32 %i.dz, %i.ct
  %or.cond313 = select i1 %or.cond5, i1 %i.ej, i1 false
  br i1 %or.cond313, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ek = load i32, ptr %i.cu, align 4, !tbaa !31
  %i.el = icmp slt i32 %i.ek, 2                   ; 3 uses
  %i.em = load ptr, ptr %i.cv, align 8, !tbaa !26 ; 3 uses
  %i.en = load i64, ptr %i.cw, align 8            ; 3 uses
  %i.eo = mul i64 %i.en, %i.dk
  %.sink.idx.i = select i1 %i.el, i64 0, i64 %i.eo
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.em, i64 %.sink.idx.i
  %i.ep = zext nneg i32 %i.dz to i64              ; 3 uses
  %i.eq = getelementptr [4 x i8], ptr %.sink.i, i64 %i.ep ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.es = load float, ptr %i.er, align 4, !tbaa !30
  %i.et = getelementptr i8, ptr %i.eq, i64 -4
  %i.eu = load float, ptr %i.et, align 4, !tbaa !30
  %i.ev = fsub float %i.es, %i.eu
  %i.ew = mul i64 %i.en, %i.dm
  %.sink.idx.i316 = select i1 %i.el, i64 0, i64 %i.ew
  %.sink.i317 = getelementptr inbounds nuw i8, ptr %i.em, i64 %.sink.idx.i316
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.sink.i317, i64 %i.ep
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !30
  %i.ez = mul i64 %i.en, %i.do
  %.sink.idx.i318 = select i1 %i.el, i64 0, i64 %i.ez
  %.sink.i319 = getelementptr inbounds nuw i8, ptr %i.em, i64 %.sink.idx.i318
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.sink.i319, i64 %i.ep
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !30
  %i.fc = fsub float %i.ey, %i.fb
  %i.fd = sext i32 %.2280349 to i64               ; 5 uses
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.fd
  store float %i.ev, ptr %i.fe, align 4, !tbaa !30
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.fd
  store float %i.fc, ptr %i.ff, align 4, !tbaa !30
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.fd
  store float %i.ea, ptr %i.fg, align 4, !tbaa !30
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.fd
  store float %i.ed, ptr %i.fh, align 4, !tbaa !30
  %foldExtExtBinop = fmul <2 x float> %i.dw, %i.dw
  %i.fi = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fj = extractelement <2 x float> %i.dw, i64 1 ; 2 uses
  %i.fk = call float @llvm.fmuladd.f32(float %i.fj, float %i.fj, float %i.fi)
  %i.fl = fmul float %i.u, %i.fk
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.fd
  store float %i.fl, ptr %i.fm, align 4, !tbaa !30
  %i.fn = add nsw i32 %.2280349, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.lr.ph.split
  %.3281 = phi i32 [ %i.fn, %bb.o ], [ %.2280349, %.lr.ph.split ], [ %.2280349, %bb.n ], [ %.2280349, %bb.m ] ; 2 uses
  %i.fo = add i32 %.1276350, 1
  %exitcond397.not = icmp eq i32 %.1276350, %smax396
  br i1 %exitcond397.not, label %._crit_edge351, label %.lr.ph.split, !llvm.loop !142

._crit_edge351:                                   ; preds = %bb.p, %.preheader339
  %.us-phi = phi i32 [ %.1279353, %.preheader339 ], [ %.3281, %bb.p ] ; 2 uses
  %i.fp = add i32 %.1272354, 1                    ; 2 uses
  %.not = icmp sgt i32 %i.fp, %.sroa.speculated327
  br i1 %.not, label %._crit_edge355, label %.preheader339, !llvm.loop !143

._crit_edge355:                                   ; preds = %._crit_edge351, %._crit_edge346.split
  %.1279.lcssa = phi i32 [ 0, %._crit_edge346.split ], [ %.us-phi, %._crit_edge351 ] ; 5 uses
  %i.fq = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.fr = load ptr, ptr %i.c, align 8, !tbaa !36
  invoke void @_ZN2cv3hal9fastAtan2EPKfS2_Pfib(ptr noundef %i.bc, ptr noundef %i.fq, ptr noundef %i.fr, i32 noundef %.1279.lcssa, i1 noundef zeroext true)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %._crit_edge355
  %i.fs = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.ft = load ptr, ptr %i.b, align 8, !tbaa !36
  invoke void @_ZN2cv3hal12magnitude32fEPKfS2_Pfi(ptr noundef %i.fs, ptr noundef %i.ft, ptr noundef %i.bc, i32 noundef %.1279.lcssa)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.fu = load ptr, ptr %i.d, align 8, !tbaa !36  ; 2 uses
  invoke void @_ZN2cv3hal6exp32fEPKfPfi(ptr noundef %i.fu, ptr noundef %i.fu, i32 noundef %.1279.lcssa)
          to label %.preheader338 unwind label %bb.t

.preheader338:                                    ; preds = %bb.r
  %i.fv = icmp sgt i32 %.1279.lcssa, 0
  br i1 %i.fv, label %.lr.ph, label %.preheader337

.lr.ph:                                           ; preds = %.preheader338
  %i.fw = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.fx = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.fy = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.fz = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.ga = load ptr, ptr %i.g, align 8, !tbaa !36  ; 5 uses
  %i.gb = add nsw i32 %5, 3
  %i.gc = add nsw i32 %4, 3
  %i.gd = mul nsw i32 %i.as, %i.gc
  %wide.trip.count401 = zext nneg i32 %.1279.lcssa to i64
  br label %bb.s

.preheader337:                                    ; preds = %bb.s, %.preheader338
  %i.ge = icmp sgt i32 %4, 0
  br i1 %i.ge, label %.preheader336.lr.ph, label %.preheader

.preheader336.lr.ph:                              ; preds = %.preheader337
  %i.gf = load ptr, ptr %i.g, align 8             ; 9 uses
  %i.gg = icmp sgt i32 %5, 0
  %i.gh = zext nneg i32 %4 to i64                 ; 8 uses
  br i1 %i.gg, label %.preheader336.us.preheader, label %.preheader336.preheader

.preheader336.preheader:                          ; preds = %.preheader336.lr.ph
  %i.gi = sext i32 %i.as to i64                   ; 3 uses
  %i.gj = sext i32 %5 to i64
  %i.gk = sext i32 %i.ar to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.gf, i64 %i.gj ; 3 uses
  %xtraiter483 = and i64 %i.gh, 1
  %i.gl = icmp eq i32 %4, 1
  %unroll_iter487 = and i64 %i.gh, 2147483646
  %lcmp.mod485.not = icmp eq i64 %xtraiter483, 0
  %lcmp.mod486 = trunc i32 %4 to i1
  br label %.preheader336

.preheader336.us.preheader:                       ; preds = %.preheader336.lr.ph
  %i.gm = zext i32 %i.as to i64                   ; 4 uses
  %i.gn = zext nneg i32 %5 to i64                 ; 9 uses
  %i.go = zext i32 %i.ar to i64                   ; 4 uses
  %invariant.gep468 = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gn
  %10 = mul nuw nsw i64 %i.gn, %i.gh
  %i.gp = shl nuw i64 %10, 2                      ; 2 uses
  %11 = add nuw nsw i64 %i.go, 1
  %i.gq = mul i64 %11, %i.gm
  %i.gr = shl i64 %i.gq, 2
  %i.gs = mul nuw i64 %i.gm, %i.go
  %i.gt = shl i64 %i.gs, 2
  %12 = add nuw nsw i64 %i.gh, %i.go
  %i.gu = shl nuw nsw i64 %12, 2
  %i.gv = mul i64 %i.gu, %i.gm
  %i.gw = shl nuw nsw i64 %i.gn, 2
  %i.gx = getelementptr i8, ptr %i.gf, i64 %i.gr
  %i.gy = getelementptr i8, ptr %i.gf, i64 %i.gv
  %i.gz = getelementptr i8, ptr %i.gy, i64 %i.gw
  %min.iters.check = icmp ult i32 %5, 8
  %n.vec = and i64 %i.gn, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.gn
  %xtraiter489 = and i64 %i.gn, 3                 ; 2 uses
  %lcmp.mod490.not = icmp eq i64 %xtraiter489, 0
  br label %.preheader336.us

.preheader336.us:                                 ; preds = %.preheader336.us.preheader, %._crit_edge364.split.us.us
  %indvars.iv425 = phi i64 [ 0, %.preheader336.us.preheader ], [ %indvars.iv.next426, %._crit_edge364.split.us.us ] ; 4 uses
  %i.ha = mul i64 %i.gp, %indvars.iv425           ; 2 uses
  %13 = mul i64 %i.gt, %indvars.iv425             ; 2 uses
  %scevgep475 = getelementptr i8, ptr %i.gx, i64 %13
  %scevgep476 = getelementptr i8, ptr %i.gz, i64 %13
  %indvars.iv.next426 = add nuw nsw i64 %indvars.iv425, 1 ; 3 uses
  %i.hb = mul nuw nsw i64 %indvars.iv.next426, %i.go
  %i.hc = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.hd = mul nuw nsw i64 %indvars.iv425, %i.gh
  %scevgep473 = getelementptr nuw i8, ptr %i.hc, i64 %i.ha
  %i.he = getelementptr i8, ptr %i.hc, i64 %i.gp
  %scevgep474 = getelementptr i8, ptr %i.he, i64 %i.ha
  %bound0 = icmp ult ptr %scevgep473, %scevgep476
  %bound1 = icmp ult ptr %scevgep475, %scevgep474
  %found.conflict = and i1 %bound0, %bound1
  br label %.lr.ph361.us.us

.lr.ph361.us.us:                                  ; preds = %..loopexit335_crit_edge.us.us, %.preheader336.us
  %indvars.iv420 = phi i64 [ %indvars.iv.next421, %..loopexit335_crit_edge.us.us ], [ 0, %.preheader336.us ] ; 2 uses
  %indvars.iv.next421 = add nuw nsw i64 %indvars.iv420, 1 ; 3 uses
  %i.hf = add nuw nsw i64 %indvars.iv.next421, %i.hb
  %i.hg = mul nuw nsw i64 %i.hf, %i.gm            ; 3 uses
  %gep469 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep468, i64 %i.hg
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.hg ; 2 uses
  %i.hi = load <2 x float>, ptr %gep469, align 4, !tbaa !30
  %i.hj = load <2 x float>, ptr %i.hh, align 4, !tbaa !30
  %i.hk = fadd <2 x float> %i.hi, %i.hj
  store <2 x float> %i.hk, ptr %i.hh, align 4, !tbaa !30
  %i.hl = add nuw nsw i64 %indvars.iv420, %i.hd
  %i.hm = mul nuw nsw i64 %i.hl, %i.gn
  %invariant.gep464 = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.hg ; 6 uses
  %invariant.gep466 = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.hm ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph361.us.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph361.us.us ] ; 3 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep464, i64 %index ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %wide.load = load <4 x float>, ptr %i.hn, align 4, !tbaa !30, !alias.scope !159
  %wide.load477 = load <4 x float>, ptr %i.ho, align 4, !tbaa !30, !alias.scope !159
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep466, i64 %index ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  store <4 x float> %wide.load, ptr %i.hp, align 4, !tbaa !30, !alias.scope !160, !noalias !159
  store <4 x float> %wide.load477, ptr %i.hq, align 4, !tbaa !30, !alias.scope !160, !noalias !159
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hr = icmp eq i64 %index.next, %n.vec
  br i1 %i.hr, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit335_crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph361.us.us, %middle.block
  %indvars.iv415.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph361.us.us ] ; 3 uses
  br i1 %lcmp.mod490.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv415.prol = phi i64 [ %indvars.iv.next416.prol, %scalar.ph.prol ], [ %indvars.iv415.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep465.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep464, i64 %indvars.iv415.prol
  %i.hs = load float, ptr %gep465.prol, align 4, !tbaa !30
  %gep467.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep466, i64 %indvars.iv415.prol
  store float %i.hs, ptr %gep467.prol, align 4, !tbaa !30
  %indvars.iv.next416.prol = add nuw nsw i64 %indvars.iv415.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter489
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !148

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv415.unr = phi i64 [ %indvars.iv415.ph, %scalar.ph.preheader ], [ %indvars.iv.next416.prol, %scalar.ph.prol ]
  %i.ht = sub nsw i64 %indvars.iv415.ph, %i.gn
  %i.hu = icmp ugt i64 %i.ht, -4
  br i1 %i.hu, label %..loopexit335_crit_edge.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv415 = phi i64 [ %indvars.iv.next416.3, %scalar.ph ], [ %indvars.iv415.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep465 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep464, i64 %indvars.iv415
  %i.hv = load float, ptr %gep465, align 4, !tbaa !30
  %gep467 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep466, i64 %indvars.iv415
  store float %i.hv, ptr %gep467, align 4, !tbaa !30
  %indvars.iv.next416 = add nuw nsw i64 %indvars.iv415, 1 ; 2 uses
  %gep465.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep464, i64 %indvars.iv.next416
  %i.hw = load float, ptr %gep465.1, align 4, !tbaa !30
  %gep467.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep466, i64 %indvars.iv.next416
  store float %i.hw, ptr %gep467.1, align 4, !tbaa !30
  %indvars.iv.next416.1 = add nuw nsw i64 %indvars.iv415, 2 ; 2 uses
  %gep465.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep464, i64 %indvars.iv.next416.1
  %i.hx = load float, ptr %gep465.2, align 4, !tbaa !30
  %gep467.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep466, i64 %indvars.iv.next416.1
  store float %i.hx, ptr %gep467.2, align 4, !tbaa !30
  %indvars.iv.next416.2 = add nuw nsw i64 %indvars.iv415, 3 ; 2 uses
  %gep465.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep464, i64 %indvars.iv.next416.2
  %i.hy = load float, ptr %gep465.3, align 4, !tbaa !30
  %gep467.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep466, i64 %indvars.iv.next416.2
  store float %i.hy, ptr %gep467.3, align 4, !tbaa !30
  %indvars.iv.next416.3 = add nuw nsw i64 %indvars.iv415, 4 ; 2 uses
  %exitcond419.not.3 = icmp eq i64 %indvars.iv.next416.3, %i.gn
  br i1 %exitcond419.not.3, label %..loopexit335_crit_edge.us.us, label %scalar.ph, !llvm.loop !149

..loopexit335_crit_edge.us.us:                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %exitcond424.not = icmp eq i64 %indvars.iv.next421, %i.gh
  br i1 %exitcond424.not, label %._crit_edge364.split.us.us, label %.lr.ph361.us.us, !llvm.loop !150

._crit_edge364.split.us.us:                       ; preds = %..loopexit335_crit_edge.us.us
  %exitcond429.not = icmp eq i64 %indvars.iv.next426, %i.gh
  br i1 %exitcond429.not, label %.preheader, label %.preheader336.us, !llvm.loop !151

bb.s:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv398 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next399, %bb.s ] ; 6 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv398
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !30 ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv398
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !30 ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv398
  %i.ie = load float, ptr %i.id, align 4, !tbaa !30
  %i.if = fsub float %i.ie, %2
  %i.ig = fmul float %i.q, %i.if                  ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv398
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !30
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv398
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !30
  %i.il = fmul float %i.ii, %i.ik                 ; 2 uses
  %i.im = call float @llvm.floor.f32(float %i.ia)
  %i.in = fptosi float %i.im to i32               ; 2 uses
  %i.io = call float @llvm.floor.f32(float %i.ic)
  %i.ip = fptosi float %i.io to i32               ; 2 uses
  %i.iq = call float @llvm.floor.f32(float %i.ig)
  %i.ir = fptosi float %i.iq to i32               ; 3 uses
  %i.is = sitofp i32 %i.in to float
  %i.it = fsub float %i.ia, %i.is
  %i.iu = sitofp i32 %i.ip to float
  %i.iv = fsub float %i.ic, %i.iu                 ; 2 uses
  %i.iw = sitofp i32 %i.ir to float
  %i.ix = fsub float %i.ig, %i.iw
  %i.iy = icmp slt i32 %i.ir, 0
  %i.iz = select i1 %i.iy, i32 %5, i32 0
  %spec.select = add nsw i32 %i.iz, %i.ir         ; 2 uses
  %.not304 = icmp slt i32 %spec.select, %5
  %i.ja = select i1 %.not304, i32 0, i32 %5
  %.1286 = sub nsw i32 %spec.select, %i.ja
  %i.jb = fmul float %i.it, %i.il                 ; 3 uses
  %i.jc = fsub float %i.il, %i.jb                 ; 2 uses
  %i.jd = fmul float %i.iv, %i.jb                 ; 2 uses
  %i.je = fsub float %i.jb, %i.jd
  %i.jf = fmul float %i.iv, %i.jc                 ; 2 uses
  %i.jg = fsub float %i.jc, %i.jf
  %i.jh = insertelement <4 x float> poison, float %i.jd, i64 0
  %i.ji = insertelement <4 x float> %i.jh, float %i.je, i64 1
  %i.jj = insertelement <4 x float> %i.ji, float %i.jf, i64 2
  %i.jk = insertelement <4 x float> %i.jj, float %i.jg, i64 3 ; 2 uses
  %i.jl = insertelement <4 x float> poison, float %i.ix, i64 0
  %i.jm = shufflevector <4 x float> %i.jl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jn = fmul <4 x float> %i.jk, %i.jm           ; 5 uses
  %i.jo = fsub <4 x float> %i.jk, %i.jn           ; 4 uses
  %i.jp = add nsw i32 %i.in, 1
  %i.jq = mul nsw i32 %i.jp, %i.ar
  %i.jr = add i32 %i.ip, 1
  %i.js = add i32 %i.jr, %i.jq
  %i.jt = mul nsw i32 %i.js, %i.as
  %i.ju = add nsw i32 %.1286, %i.jt               ; 5 uses
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.jv ; 2 uses
  %i.jx = load <2 x float>, ptr %i.jw, align 4, !tbaa !30
  %i.jy = shufflevector <4 x float> %i.jo, <4 x float> %i.jn, <2 x i32> <i32 3, i32 7>
  %i.jz = fadd <2 x float> %i.jx, %i.jy
  store <2 x float> %i.jz, ptr %i.jw, align 4, !tbaa !30
  %i.ka = add nsw i32 %i.ju, %i.as
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.kb ; 2 uses
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !30
  %i.ke = extractelement <4 x float> %i.jo, i64 2
  %i.kf = fadd float %i.kd, %i.ke
  store float %i.kf, ptr %i.kc, align 4, !tbaa !30
  %i.kg = add nsw i32 %i.gb, %i.ju
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.kh ; 2 uses
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !30
  %i.kk = extractelement <4 x float> %i.jn, i64 2
  %i.kl = fadd float %i.kk, %i.kj
  store float %i.kl, ptr %i.ki, align 4, !tbaa !30
  %i.km = add nsw i32 %i.ju, %i.at
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.kn ; 2 uses
  %i.kp = load <2 x float>, ptr %i.ko, align 4, !tbaa !30
  %i.kq = shufflevector <4 x float> %i.jo, <4 x float> %i.jn, <2 x i32> <i32 1, i32 5>
  %i.kr = fadd <2 x float> %i.kq, %i.kp
  store <2 x float> %i.kr, ptr %i.ko, align 4, !tbaa !30
  %i.ks = add nsw i32 %i.ju, %i.gd
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.kt ; 2 uses
  %i.kv = load <2 x float>, ptr %i.ku, align 4, !tbaa !30
  %i.kw = shufflevector <4 x float> %i.jo, <4 x float> %i.jn, <2 x i32> <i32 0, i32 4>
  %i.kx = fadd <2 x float> %i.kw, %i.kv
  store <2 x float> %i.kx, ptr %i.ku, align 4, !tbaa !30
  %indvars.iv.next399 = add nuw nsw i64 %indvars.iv398, 1 ; 2 uses
  %exitcond402.not = icmp eq i64 %indvars.iv.next399, %wide.trip.count401
  br i1 %exitcond402.not, label %.preheader337, label %bb.s, !llvm.loop !152

bb.t:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.r, %bb.q, %._crit_edge355
  %i.ky = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @_ZN2cv5utils10BufferAreaD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %9) #25
  br label %bb.ac

.preheader336:                                    ; preds = %.preheader336.preheader, %._crit_edge364.split
  %indvars.iv408 = phi i64 [ 0, %.preheader336.preheader ], [ %indvars.iv.next409, %._crit_edge364.split ]
end_hunk_0
