Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/anadih?download=true
inline.NumInlined: 282
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_Z17low_ana_dih_transbPKcbS0_iPPfN3gmx8ArrayRefI7t_dlistEEiiS0_PiS1_bfPK16gmx_output_env_t:bb.a
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !26
  %i.dl = fdiv float %i.dk, %i.ao
  store float %i.dl, ptr %i.dj, align 4, !tbaa !26
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %exitcond288.not = icmp eq i64 %indvars.iv.next285, %wide.trip.count287
  br i1 %exitcond288.not, label %._crit_edge, label %bb.c, !llvm.loop !46

bb.h:                                             ; preds = %.lr.ph, %bb.o
  %i.dm = phi i32 [ %i.aw, %.lr.ph ], [ %i.fy, %bb.o ] ; 8 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %.0148233 = phi i32 [ %i.cs, %.lr.ph ], [ %.1149, %bb.o ] ; 3 uses
  %.1151232 = phi i32 [ %.0150236, %.lr.ph ], [ %.2152, %bb.o ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  %i.do = load float, ptr %i.dn, align 4, !tbaa !26 ; 8 uses
  br i1 %12, label %call.1224, label %call.0223

call.0223:                                        ; preds = %bb.h
  %i.dp = fcmp olt float %i.do, 0.000000e+00
  %i.dq = fadd float %i.do, f0x40C90FDB
  %spec.select.i366 = select i1 %i.dp, float %i.dq, float %i.do ; 3 uses
  %i.dr = sitofp i32 %i.dm to double
  %i.ds = fdiv double 3.600000e+02, %i.dr
  %i.dt = fptrunc double %i.ds to float           ; 4 uses
  %i.du = fmul float %13, %i.dt                   ; 3 uses
  %i.dv = fsub float %i.dt, %i.du
  %i.dw = fmul float %i.dv, 5.000000e-01          ; 2 uses
  %.not27.i367 = icmp slt i32 %i.dm, 1
  br i1 %.not27.i367, label %.tail221, label %.lr.ph.i368.preheader

.lr.ph.i368.preheader:                            ; preds = %call.0223
  %min.iters.check = icmp ult i32 %i.dm, 32
  br i1 %min.iters.check, label %.lr.ph.i368.preheader531, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i368.preheader
  %n.vec = and i32 %i.dm, 2147483616              ; 3 uses
  %i.dx = or disjoint i32 %n.vec, 1
  %broadcast.splatinsert = insertelement <32 x float> poison, float %i.dt, i64 0
  %broadcast.splat = shufflevector <32 x float> %broadcast.splatinsert, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert421 = insertelement <32 x float> poison, float %i.dw, i64 0
  %broadcast.splat422 = shufflevector <32 x float> %broadcast.splatinsert421, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert423 = insertelement <32 x float> poison, float %spec.select.i366, i64 0
  %broadcast.splat424 = shufflevector <32 x float> %broadcast.splatinsert423, <32 x float> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert425 = insertelement <32 x float> poison, float %i.du, i64 0
  %broadcast.splat426 = shufflevector <32 x float> %broadcast.splatinsert425, <32 x float> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <32 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32>, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.dy = add nsw <32 x i32> %vec.ind, splat (i32 -1)
  %i.dz = sitofp <32 x i32> %i.dy to <32 x float>
  %i.ea = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %i.dz, <32 x float> %broadcast.splat, <32 x float> %broadcast.splat422) ; 2 uses
  %i.eb = fpext <32 x float> %i.ea to <32 x double>
  %i.ec = fmul <32 x double> %i.eb, splat (double f0x3F91DF46A2529D39)
  %i.ed = fptrunc <32 x double> %i.ec to <32 x float>
  %i.ee = fcmp ogt <32 x float> %broadcast.splat424, %i.ed
  %i.ef = fadd <32 x float> %broadcast.splat426, %i.ea
  %i.eg = fpext <32 x float> %i.ef to <32 x double>
  %i.eh = fmul <32 x double> %i.eg, splat (double f0x3F91DF46A2529D39)
  %i.ei = fptrunc <32 x double> %i.eh to <32 x float>
  %i.ej = fcmp olt <32 x float> %broadcast.splat424, %i.ei
  %i.ek = select <32 x i1> %i.ee, <32 x i1> %i.ej, <32 x i1> zeroinitializer
  %i.el = freeze <32 x i1> %i.ek                  ; 2 uses
  %i.em = bitcast <32 x i1> %i.el to i32
  %.not526 = icmp eq i32 %i.em, 0
  br i1 %.not526, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nuw <32 x i32> %vec.ind, splat (i32 32)
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.en = icmp eq i32 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i32 %i.dm, %n.vec
  br i1 %cmp.n, label %.tail221, label %.lr.ph.i368.preheader531

.lr.ph.i368.preheader531:                         ; preds = %.lr.ph.i368.preheader, %middle.block
  %.028.i369.ph = phi i32 [ 1, %.lr.ph.i368.preheader ], [ %i.dx, %middle.block ]
  br label %.lr.ph.i368

vector.early.exit:                                ; preds = %vector.body
  %i.eo = tail call i64 @llvm.experimental.cttz.elts.i64.v32i1(<32 x i1> %i.el, i1 false)
  %i.ep = trunc i64 %i.eo to i32
  %i.eq = add i32 %index, %i.ep
  %i.er = add i32 %i.eq, 1
  br label %.tail221

.lr.ph.i368:                                      ; preds = %.lr.ph.i368.preheader531, %bb.j
  %.028.i369 = phi i32 [ %i.fe, %bb.j ], [ %.028.i369.ph, %.lr.ph.i368.preheader531 ] ; 4 uses
  %i.es = add nsw i32 %.028.i369, -1
  %i.et = sitofp i32 %i.es to float
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.et, float %i.dt, float %i.dw) ; 2 uses
  %i.ev = fpext float %i.eu to double
  %i.ew = fmul double %i.ev, f0x3F91DF46A2529D39
  %i.ex = fptrunc double %i.ew to float
  %i.ey = fcmp ogt float %spec.select.i366, %i.ex
  br i1 %i.ey, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i368
  %i.ez = fadd float %i.du, %i.eu
  %i.fa = fpext float %i.ez to double
  %i.fb = fmul double %i.fa, f0x3F91DF46A2529D39
  %i.fc = fptrunc double %i.fb to float
  %i.fd = fcmp olt float %spec.select.i366, %i.fc
  br i1 %i.fd, label %.tail221, label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i368
  %i.fe = add nuw i32 %.028.i369, 1
  %exitcond.not.i370 = icmp eq i32 %.028.i369, %i.dm
  br i1 %exitcond.not.i370, label %.tail221, label %.lr.ph.i368, !llvm.loop !48

call.1224:                                        ; preds = %bb.h
  %i.ff = tail call float @llvm.fabs.f32(float %i.do)
  %or.cond.i373 = fcmp olt float %i.ff, f0x3F060A92
  br i1 %or.cond.i373, label %.tail221, label %bb.k

bb.k:                                             ; preds = %call.1224
  %i.fg = fcmp ogt float %i.do, f0xC0278D36
  %i.fh = fcmp olt float %i.do, f0xBFC90FDB
  %or.cond3.i374 = and i1 %i.fg, %i.fh
  br i1 %or.cond3.i374, label %.tail221, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fi = fcmp olt float %i.do, f0x40278D36
  %i.fj = fcmp ogt float %i.do, f0x3FC90FDB
  %or.cond5.i375 = and i1 %i.fi, %i.fj
  %..i376 = select i1 %or.cond5.i375, i32 3, i32 0
  br label %.tail221

.tail221:                                         ; preds = %bb.j, %bb.i, %middle.block, %vector.early.exit, %bb.l, %bb.k, %call.1224, %call.0223
  %i.fk = phi i32 [ 1, %call.1224 ], [ 0, %call.0223 ], [ %..i376, %bb.l ], [ 2, %bb.k ], [ 0, %middle.block ], [ %i.er, %vector.early.exit ], [ %.028.i369, %bb.i ], [ 0, %bb.j ] ; 5 uses
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.fl
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !34
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv284 ; 2 uses
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !26
  %i.fq = fadd float %i.fp, 1.000000e+00
  store float %i.fq, ptr %i.fo, align 4, !tbaa !26
  %i.fr = icmp eq i32 %.0148233, 0
  br i1 %i.fr, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.tail221
  %.not165 = icmp eq i32 %i.fk, 0
  %.not166 = icmp eq i32 %.0148233, %i.fk
  %or.cond = select i1 %.not165, i1 true, i1 %.not166
  br i1 %or.cond, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !28
  %i.fu = add nsw i32 %i.ft, 1
  store i32 %i.fu, ptr %i.fs, align 4, !tbaa !28
  %i.fv = load i32, ptr %i.cz, align 4, !tbaa !28
  %i.fw = add nsw i32 %i.fv, 1
  store i32 %i.fw, ptr %i.cz, align 4, !tbaa !28
  %i.fx = add nsw i32 %.1151232, 1
  %.pre = load i32, ptr %i.av, align 4, !tbaa !28
  br label %bb.o

bb.o:                                             ; preds = %.tail221, %bb.n, %bb.m
  %i.fy = phi i32 [ %i.dm, %bb.m ], [ %.pre, %bb.n ], [ %i.dm, %.tail221 ]
  %.2152 = phi i32 [ %.1151232, %bb.m ], [ %i.fx, %bb.n ], [ %.1151232, %.tail221 ] ; 5 uses
  %.1149 = phi i32 [ %.0148233, %bb.m ], [ %i.fk, %bb.n ], [ %i.fk, %.tail221 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ak
  br i1 %exitcond.not, label %.preheader227, label %bb.h, !llvm.loop !49

bb.p:                                             ; preds = %._crit_edge
  %i.fz = fmul float %i.n, %i.ao
  %i.ga = uitofp nneg i32 %8 to float
  %i.gb = fmul float %i.fz, %i.ga
  %i.gc = uitofp nneg i32 %.2152 to float
  %i.gd = fdiv float %i.gb, %i.gc
  %i.ge = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.gf = fpext float %i.gd to double
  %i.gg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ge, ptr noundef nonnull @.str.13, double noundef %i.gf) #24 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.thread, %bb.p, %._crit_edge
  %i.gh = icmp sgt i32 %4, -3
  br i1 %i.gh, label %.lr.ph258, label %._crit_edge259.split

.lr.ph258:                                        ; preds = %bb.q
  %.sroa.0.0.copyload.i = load ptr, ptr %6, align 8 ; 16 uses
  %.sroa.0.0.copyload.i484 = ptrtoaddr ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0.0.copyload.i167 = load ptr, ptr %i.gi, align 8 ; 5 uses
  %.sroa.0.0.copyload.i167485 = ptrtoaddr ptr %.sroa.0.0.copyload.i167 to i64 ; 2 uses
  %.not225241 = icmp eq ptr %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i167
  br i1 %.not225241, label %._crit_edge259.split, label %.lr.ph245.preheader

.lr.ph245.preheader:                              ; preds = %.lr.ph258
  %i.gj = add i32 %4, 2
  %smax = tail call i32 @llvm.smax.i32(i32 %i.gj, i32 0) ; 2 uses
  %i.gk = add nuw i32 %smax, 1
  %wide.trip.count307 = zext i32 %i.gk to i64
  %i.gl = add i64 %.sroa.0.0.copyload.i167485, -400
  %i.gm = sub i64 %i.gl, %.sroa.0.0.copyload.i484 ; 2 uses
  %i.gn = udiv i64 %i.gm, 400                     ; 3 uses
  %21 = shl nuw nsw i64 %i.gn, 2
  %22 = add nuw nsw i64 %21, 4                    ; 5 uses
  %scevgep = getelementptr i8, ptr %.sink, i64 %22
  %scevgep486 = getelementptr i8, ptr %i.af, i64 %22
  %scevgep487 = getelementptr i8, ptr %i.ag, i64 %22
  %scevgep488 = getelementptr i8, ptr %i.ah, i64 %22
  %i.go = mul nuw i64 %i.gn, 400                  ; 2 uses
  %i.gp = zext nneg i32 %smax to i64              ; 2 uses
  %i.gq = shl nuw nsw i64 %i.gp, 4
  %i.gr = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 %i.go
  %i.gs = getelementptr i8, ptr %i.gr, i64 %i.gq
  %scevgep.a = getelementptr i8, ptr %i.gs, i64 272 ; 4 uses
  %scevgep486.a = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 256 ; 4 uses
  %scevgep491 = getelementptr i8, ptr %i.aj, i64 %22
  %i.gt = shl nuw nsw i64 %i.gp, 2
  %i.gu = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 %i.go
  %i.gv = getelementptr i8, ptr %i.gu, i64 %i.gt
  %scevgep487.a = getelementptr i8, ptr %i.gv, i64 188
  %scevgep488.a = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 184
  %i.gw = and i64 %i.gn, 1
  %lcmp.mod.not.not = icmp eq i64 %i.gw, 0
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 112
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 184
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 256
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 400 ; 2 uses
  %i.hb = icmp ult i64 %i.gm, 400
  %i.hc = add i64 %.sroa.0.0.copyload.i167485, -400
  %i.hd = sub i64 %i.hc, %.sroa.0.0.copyload.i484 ; 2 uses
  %i.he = udiv i64 %i.hd, 400
  %i.hf = add nuw nsw i64 %i.he, 1                ; 2 uses
  %min.iters.check490 = icmp ult i64 %i.hd, 6000
  %n.vec507 = and i64 %i.hf, 144115188075855864   ; 4 uses
  %i.hg = mul i64 %n.vec507, 400
  %i.hh = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 %i.hg
  %cmp.n522 = icmp eq i64 %i.hf, %n.vec507
  br label %.lr.ph245

.lr.ph245:                                        ; preds = %.lr.ph245.preheader, %._crit_edge246
  %indvars.iv304 = phi i64 [ 0, %.lr.ph245.preheader ], [ %indvars.iv.next305, %._crit_edge246 ] ; 16 uses
  %.0139255 = phi i32 [ 0, %.lr.ph245.preheader ], [ %.us-phi, %._crit_edge246 ] ; 7 uses
  %i.hi = icmp samesign ult i64 %indvars.iv304, 2
  br i1 %i.hi, label %.lr.ph245.split.us.preheader, label %.lr.ph245.split

.lr.ph245.split.us.preheader:                     ; preds = %.lr.ph245
  %i.hj = sext i32 %.0139255 to i64               ; 5 uses
  br i1 %min.iters.check490, label %.lr.ph245.split.us.preheader527, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph245.split.us.preheader
  %i.hk = shl nsw i64 %i.hj, 2                    ; 10 uses
  %i.hl = getelementptr i8, ptr %i.aj, i64 %i.hk
  %i.hm = getelementptr i8, ptr %scevgep491, i64 %i.hk
  %i.hn = getelementptr i8, ptr %i.ah, i64 %i.hk
  %i.ho = getelementptr i8, ptr %scevgep488, i64 %i.hk
  %i.hp = getelementptr i8, ptr %i.ag, i64 %i.hk
  %i.hq = getelementptr i8, ptr %scevgep487, i64 %i.hk
  %i.hr = getelementptr i8, ptr %i.af, i64 %i.hk
  %i.hs = getelementptr i8, ptr %scevgep486, i64 %i.hk
  %i.ht = getelementptr i8, ptr %.sink, i64 %i.hk
  %i.hu = getelementptr i8, ptr %scevgep, i64 %i.hk
  %bound0 = icmp ult ptr %scevgep488.a, %i.hm
  %bound1 = icmp ult ptr %i.hl, %scevgep487.a
  %found.conflict = and i1 %bound0, %bound1
  %bound0491 = icmp ult ptr %scevgep486.a, %i.ho
  %bound1492 = icmp ult ptr %i.hn, %scevgep.a
  %found.conflict493 = and i1 %bound0491, %bound1492
  %conflict.rdx = or i1 %found.conflict, %found.conflict493
  %bound0494 = icmp ult ptr %scevgep486.a, %i.hq
  %bound1495 = icmp ult ptr %i.hp, %scevgep.a
  %found.conflict496 = and i1 %bound0494, %bound1495
  %conflict.rdx497 = or i1 %conflict.rdx, %found.conflict496
  %bound0498 = icmp ult ptr %scevgep486.a, %i.hs
  %bound1499 = icmp ult ptr %i.hr, %scevgep.a
  %found.conflict500 = and i1 %bound0498, %bound1499
  %conflict.rdx501 = or i1 %conflict.rdx497, %found.conflict500
  %bound0502 = icmp ult ptr %scevgep486.a, %i.hu
  %bound1503 = icmp ult ptr %i.ht, %scevgep.a
  %found.conflict504 = and i1 %bound0502, %bound1503
  %conflict.rdx505 = or i1 %conflict.rdx501, %found.conflict504
  br i1 %conflict.rdx505, label %.lr.ph245.split.us.preheader527, label %vector.ph506

vector.ph506:                                     ; preds = %vector.memcheck
  %i.hv = add nsw i64 %n.vec507, %i.hj            ; 2 uses
  br label %vector.body508

vector.body508:                                   ; preds = %vector.body508, %vector.ph506
  %index509 = phi i64 [ 0, %vector.ph506 ], [ %index.next520, %vector.body508 ] ; 2 uses
  %pointer.phi = phi ptr [ %.sroa.0.0.copyload.i, %vector.ph506 ], [ %ptr.ind, %vector.body508 ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <8 x i64> <i64 0, i64 400, i64 800, i64 1200, i64 1600, i64 2000, i64 2400, i64 2800> ; 2 uses
  %i.hw = add i64 %index509, %i.hj                ; 5 uses
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.hw
  %wide.load = load <8 x i32>, ptr %i.hx, align 4, !tbaa !28, !alias.scope !66
  %wide.gep = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 184
  %wide.gep510 = getelementptr inbounds nuw [4 x i8], <8 x ptr> %wide.gep, i64 %indvars.iv304
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %wide.load, <8 x ptr> align 4 %wide.gep510, <8 x i1> splat (i1 true)), !tbaa !28, !alias.scope !67, !noalias !66
  %wide.gep511 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 256
  %wide.gep512 = getelementptr inbounds nuw [16 x i8], <8 x ptr> %wide.gep511, i64 %indvars.iv304 ; 4 uses
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.hw
  %wide.load513 = load <8 x float>, ptr %i.hy, align 4, !tbaa !26, !alias.scope !68
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load513, <8 x ptr> align 4 %wide.gep512, <8 x i1> splat (i1 true)), !tbaa !26, !alias.scope !69, !noalias !70
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.hw
  %wide.load514 = load <8 x float>, ptr %i.hz, align 4, !tbaa !26, !alias.scope !71
  %wide.gep515 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep512, i64 4
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load514, <8 x ptr> align 4 %wide.gep515, <8 x i1> splat (i1 true)), !tbaa !26, !alias.scope !69, !noalias !70
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.hw
  %wide.load516 = load <8 x float>, ptr %i.ia, align 4, !tbaa !26, !alias.scope !72
  %wide.gep517 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep512, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load516, <8 x ptr> align 4 %wide.gep517, <8 x i1> splat (i1 true)), !tbaa !26, !alias.scope !69, !noalias !70
  %i.ib = getelementptr inbounds [4 x i8], ptr %.sink, i64 %i.hw
  %wide.load518 = load <8 x float>, ptr %i.ib, align 4, !tbaa !26, !alias.scope !73
  %wide.gep519 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep512, i64 12
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load518, <8 x ptr> align 4 %wide.gep519, <8 x i1> splat (i1 true)), !tbaa !26, !alias.scope !69, !noalias !70
  %index.next520 = add nuw i64 %index509, 8       ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 3200
  %i.ic = icmp eq i64 %index.next520, %n.vec507
  br i1 %i.ic, label %middle.block521, label %vector.body508, !llvm.loop !58

middle.block521:                                  ; preds = %vector.body508
  br i1 %cmp.n522, label %._crit_edge246.loopexit, label %.lr.ph245.split.us.preheader527

.lr.ph245.split.us.preheader527:                  ; preds = %vector.memcheck, %.lr.ph245.split.us.preheader, %middle.block521
  %indvars.iv301.ph = phi i64 [ %i.hj, %vector.memcheck ], [ %i.hj, %.lr.ph245.split.us.preheader ], [ %i.hv, %middle.block521 ]
  %.sroa.0209.0242.us.ph = phi ptr [ %.sroa.0.0.copyload.i, %vector.memcheck ], [ %.sroa.0.0.copyload.i, %.lr.ph245.split.us.preheader ], [ %i.hh, %middle.block521 ]
  br label %.lr.ph245.split.us

.lr.ph245.split.us:                               ; preds = %.lr.ph245.split.us.preheader527, %.lr.ph245.split.us
  %indvars.iv301 = phi i64 [ %indvars.iv.next302, %.lr.ph245.split.us ], [ %indvars.iv301.ph, %.lr.ph245.split.us.preheader527 ] ; 6 uses
  %.sroa.0209.0242.us = phi ptr [ %i.iu, %.lr.ph245.split.us ], [ %.sroa.0209.0242.us.ph, %.lr.ph245.split.us.preheader527 ] ; 3 uses
  %i.id = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %indvars.iv301
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !28
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0209.0242.us, i64 184
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv304
  store i32 %i.ie, ptr %i.ig, align 4, !tbaa !28
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0209.0242.us, i64 256
  %i.ii = getelementptr inbounds nuw [16 x i8], ptr %i.ih, i64 %indvars.iv304 ; 4 uses
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv301
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !26
  store float %i.ik, ptr %i.ii, align 4, !tbaa !26
  %i.il = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %indvars.iv301
  %i.im = load float, ptr %i.il, align 4, !tbaa !26
  %i.in = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  store float %i.im, ptr %i.in, align 4, !tbaa !26
  %i.io = getelementptr inbounds [4 x i8], ptr %i.af, i64 %indvars.iv301
  %i.ip = load float, ptr %i.io, align 4, !tbaa !26
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store float %i.ip, ptr %i.iq, align 4, !tbaa !26
  %i.ir = getelementptr inbounds [4 x i8], ptr %.sink, i64 %indvars.iv301
  %i.is = load float, ptr %i.ir, align 4, !tbaa !26
  %i.it = getelementptr inbounds nuw i8, ptr %i.ii, i64 12
  store float %i.is, ptr %i.it, align 4, !tbaa !26
  %indvars.iv.next302 = add nsw i64 %indvars.iv301, 1 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0209.0242.us, i64 400 ; 2 uses
  %.not225.us = icmp eq ptr %i.iu, %.sroa.0.0.copyload.i167
  br i1 %.not225.us, label %._crit_edge246.loopexit, label %.lr.ph245.split.us, !llvm.loop !59

.lr.ph245.split:                                  ; preds = %.lr.ph245
  %cond = icmp eq i64 %indvars.iv304, 2
  br i1 %cond, label %.lr.ph245.split.split.us, label %.lr.ph245.split.split.preheader

.lr.ph245.split.split.preheader:                  ; preds = %.lr.ph245.split
  br i1 %lcmp.mod.not.not, label %.lr.ph245.split.split.prol, label %.lr.ph245.split.split.prol.loopexit

.lr.ph245.split.split.prol:                       ; preds = %.lr.ph245.split.split.preheader
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv304
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !28
  %.not164.prol = icmp eq i32 %i.iw, -1
  br i1 %.not164.prol, label %.lr.ph245.split.split.prol.loopexit, label %bb.r

bb.r:                                             ; preds = %.lr.ph245.split.split.prol
  %i.ix = sext i32 %.0139255 to i64               ; 5 uses
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.ix
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !28
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv304
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !28
  %i.jb = getelementptr inbounds nuw [16 x i8], ptr %i.gz, i64 %indvars.iv304 ; 4 uses
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ix
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !26
  store float %i.jd, ptr %i.jb, align 4, !tbaa !26
  %i.je = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ix
  %i.jf = load float, ptr %i.je, align 4, !tbaa !26
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  store float %i.jf, ptr %i.jg, align 4, !tbaa !26
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ix
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !26
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store float %i.ji, ptr %i.jj, align 4, !tbaa !26
  %i.jk = getelementptr inbounds [4 x i8], ptr %.sink, i64 %i.ix
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !26
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jb, i64 12
  store float %i.jl, ptr %i.jm, align 4, !tbaa !26
  %i.jn = add nsw i32 %.0139255, 1                ; 2 uses
  br label %.lr.ph245.split.split.prol.loopexit

.lr.ph245.split.split.prol.loopexit:              ; preds = %.lr.ph245.split.split.prol, %bb.r, %.lr.ph245.split.split.preheader
  %.2141.lcssa.unr = phi i32 [ poison, %.lr.ph245.split.split.preheader ], [ %i.jn, %bb.r ], [ %.0139255, %.lr.ph245.split.split.prol ]
  %.1140243.unr = phi i32 [ %.0139255, %.lr.ph245.split.split.preheader ], [ %i.jn, %bb.r ], [ %.0139255, %.lr.ph245.split.split.prol ]
  %.sroa.0209.0242.unr = phi ptr [ %.sroa.0.0.copyload.i, %.lr.ph245.split.split.preheader ], [ %i.ha, %bb.r ], [ %i.ha, %.lr.ph245.split.split.prol ]
  br i1 %i.hb, label %._crit_edge246, label %.lr.ph245.split.split

.lr.ph245.split.split.us:                         ; preds = %.lr.ph245.split, %bb.t
  %.1140243.us248 = phi i32 [ %.2141.us251, %bb.t ], [ %.0139255, %.lr.ph245.split ] ; 3 uses
  %.sroa.0209.0242.us249 = phi ptr [ %i.kg, %bb.t ], [ %.sroa.0.0.copyload.i, %.lr.ph245.split ] ; 7 uses
  %i.jo = tail call noundef zeroext i1 @_Z12has_dihedraliRK7t_dlist(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(400) %.sroa.0209.0242.us249)
  br i1 %i.jo, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph245.split.split.us
  %i.jp = sext i32 %.1140243.us248 to i64         ; 5 uses
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !28
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0209.0242.us249, i64 192
  store i32 %i.jr, ptr %i.js, align 4, !tbaa !28
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0209.0242.us249, i64 288
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.jp
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !26
  store float %i.jv, ptr %i.jt, align 4, !tbaa !26
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.jp
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !26
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.0209.0242.us249, i64 292
  store float %i.jx, ptr %i.jy, align 4, !tbaa !26
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.jp
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !26
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.0209.0242.us249, i64 296
  store float %i.ka, ptr %i.kb, align 4, !tbaa !26
  %i.kc = getelementptr inbounds [4 x i8], ptr %.sink, i64 %i.jp
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !26
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.0209.0242.us249, i64 300
  store float %i.kd, ptr %i.ke, align 4, !tbaa !26
  %i.kf = add nsw i32 %.1140243.us248, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph245.split.split.us
  %.2141.us251 = phi i32 [ %i.kf, %bb.s ], [ %.1140243.us248, %.lr.ph245.split.split.us ] ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0209.0242.us249, i64 400 ; 2 uses
  %.not225.us252 = icmp eq ptr %i.kg, %.sroa.0.0.copyload.i167
  br i1 %.not225.us252, label %._crit_edge246, label %.lr.ph245.split.split.us

._crit_edge246.loopexit:                          ; preds = %.lr.ph245.split.us, %middle.block521
  %indvars.iv.next302.lcssa = phi i64 [ %i.hv, %middle.block521 ], [ %indvars.iv.next302, %.lr.ph245.split.us ]
  %i.kh = trunc nsw i64 %indvars.iv.next302.lcssa to i32
  br label %._crit_edge246

._crit_edge246:                                   ; preds = %.lr.ph245.split.split.prol.loopexit, %bb.w, %bb.t, %._crit_edge246.loopexit
  %.us-phi = phi i32 [ %.2141.us251, %bb.t ], [ %i.kh, %._crit_edge246.loopexit ], [ %.2141.lcssa.unr, %.lr.ph245.split.split.prol.loopexit ], [ %.2141.1, %bb.w ]
  %indvars.iv.next305 = add nuw nsw i64 %indvars.iv304, 1 ; 2 uses
  %exitcond308.not = icmp eq i64 %indvars.iv.next305, %wide.trip.count307
  br i1 %exitcond308.not, label %._crit_edge259.split, label %.lr.ph245, !llvm.loop !60

.lr.ph245.split.split:                            ; preds = %.lr.ph245.split.split.prol.loopexit, %bb.w
  %.1140243 = phi i32 [ %.2141.1, %bb.w ], [ %.1140243.unr, %.lr.ph245.split.split.prol.loopexit ] ; 3 uses
  %.sroa.0209.0242 = phi ptr [ %i.ma, %bb.w ], [ %.sroa.0209.0242.unr, %.lr.ph245.split.split.prol.loopexit ] ; 7 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.0209.0242, i64 112
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %indvars.iv304
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !28
  %.not164 = icmp eq i32 %i.kk, -1
  br i1 %.not164, label %.lr.ph245.split.split.1, label %bb.u

bb.u:                                             ; preds = %.lr.ph245.split.split
  %i.kl = sext i32 %.1140243 to i64               ; 5 uses
  %i.km = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.kl
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !28
end_hunk_0
