Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_spread?download=true
inline.NumInlined: 325
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_Z14spread_on_gridPK9gmx_pme_tP11PmeAtomCommP14PmeAndFftGridsbbb.omp_outlined.1:bb.a

vector.main.loop.iter.check476:                   ; preds = %vector.memcheck472
  %min.iters.check477 = icmp ult i32 %i.ec, 32
  br i1 %min.iters.check477, label %vec.epilog.ph495, label %vector.ph478

vector.ph478:                                     ; preds = %vector.main.loop.iter.check476
  %i.en = and i64 %wide.trip.count.i, 28
  %n.vec479 = and i64 %wide.trip.count.i, 2147483616 ; 5 uses
  %i.eo = add nsw i64 %n.vec479, %i.eh            ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.eg, i64 %i.eh
  br label %vector.body480

vector.body480:                                   ; preds = %vector.body480, %vector.ph478
  %index481 = phi i64 [ 0, %vector.ph478 ], [ %index.next486, %vector.body480 ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %index481 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 96
  %wide.load482 = load <8 x i32>, ptr %i.ep, align 4, !tbaa !105
  %wide.load483 = load <8 x i32>, ptr %i.eq, align 4, !tbaa !105
  %wide.load484 = load <8 x i32>, ptr %i.er, align 4, !tbaa !105
  %wide.load485 = load <8 x i32>, ptr %i.es, align 4, !tbaa !105
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index481 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.eu = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.ev = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <8 x i32> %wide.load482, ptr %gep, align 4, !tbaa !105
  store <8 x i32> %wide.load483, ptr %i.et, align 4, !tbaa !105
  store <8 x i32> %wide.load484, ptr %i.eu, align 4, !tbaa !105
  store <8 x i32> %wide.load485, ptr %i.ev, align 4, !tbaa !105
  %index.next486 = add nuw i64 %index481, 32      ; 2 uses
  %i.ew = icmp eq i64 %index.next486, %n.vec479
  br i1 %i.ew, label %middle.block487, label %vector.body480, !llvm.loop !267

middle.block487:                                  ; preds = %vector.body480
  %cmp.n488 = icmp eq i64 %n.vec479, %wide.trip.count.i
  br i1 %cmp.n488, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check493

vec.epilog.iter.check493:                         ; preds = %middle.block487
  %min.epilog.iters.check494 = icmp eq i64 %i.en, 0
  br i1 %min.epilog.iters.check494, label %vec.epilog.scalar.ph492.preheader, label %vec.epilog.ph495, !prof !138

vec.epilog.ph495:                                 ; preds = %vector.main.loop.iter.check476, %vec.epilog.iter.check493
  %vec.epilog.resume.val489 = phi i64 [ %n.vec479, %vec.epilog.iter.check493 ], [ 0, %vector.main.loop.iter.check476 ]
  %n.vec496 = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.ex = add nsw i64 %n.vec496, %i.eh            ; 2 uses
  %invariant.gep538 = getelementptr [4 x i8], ptr %i.eg, i64 %i.eh
  br label %vec.epilog.vector.body497

vec.epilog.vector.body497:                        ; preds = %vec.epilog.vector.body497, %vec.epilog.ph495
  %index498 = phi i64 [ %vec.epilog.resume.val489, %vec.epilog.ph495 ], [ %index.next500, %vec.epilog.vector.body497 ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %index498
  %wide.load499 = load <4 x i32>, ptr %i.ey, align 4, !tbaa !105
  %gep539 = getelementptr [4 x i8], ptr %invariant.gep538, i64 %index498
  store <4 x i32> %wide.load499, ptr %gep539, align 4, !tbaa !105
  %index.next500 = add nuw i64 %index498, 4       ; 2 uses
  %i.ez = icmp eq i64 %index.next500, %n.vec496
  br i1 %i.ez, label %vec.epilog.middle.block501, label %vec.epilog.vector.body497, !llvm.loop !268

vec.epilog.middle.block501:                       ; preds = %vec.epilog.vector.body497
  %cmp.n502 = icmp eq i64 %n.vec496, %wide.trip.count.i
  br i1 %cmp.n502, label %._crit_edge.loopexit.i, label %vec.epilog.scalar.ph492.preheader

vec.epilog.scalar.ph492.preheader:                ; preds = %vector.memcheck472, %iter.check491, %vec.epilog.iter.check493, %vec.epilog.middle.block501
  %indvars.iv35.i.ph = phi i64 [ %i.eh, %iter.check491 ], [ %i.eh, %vector.memcheck472 ], [ %i.eo, %vec.epilog.iter.check493 ], [ %i.ex, %vec.epilog.middle.block501 ] ; 2 uses
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check491 ], [ 0, %vector.memcheck472 ], [ %n.vec479, %vec.epilog.iter.check493 ], [ %n.vec496, %vec.epilog.middle.block501 ] ; 4 uses
  %i.fa = sub nsw i64 %wide.trip.count.i, %indvars.iv.i.ph
  %xtraiter = and i64 %i.fa, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph492.prol.loopexit, label %vec.epilog.scalar.ph492.prol

vec.epilog.scalar.ph492.prol:                     ; preds = %vec.epilog.scalar.ph492.preheader, %vec.epilog.scalar.ph492.prol
  %indvars.iv35.i.prol = phi i64 [ %indvars.iv.next36.i.prol, %vec.epilog.scalar.ph492.prol ], [ %indvars.iv35.i.ph, %vec.epilog.scalar.ph492.preheader ] ; 2 uses
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph492.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph492.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph492.prol ], [ 0, %vec.epilog.scalar.ph492.preheader ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i.prol
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !105
  %indvars.iv.next36.i.prol = add nsw i64 %indvars.iv35.i.prol, 1 ; 3 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv35.i.prol
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !105
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph492.prol.loopexit, label %vec.epilog.scalar.ph492.prol, !llvm.loop !269

vec.epilog.scalar.ph492.prol.loopexit:            ; preds = %vec.epilog.scalar.ph492.prol, %vec.epilog.scalar.ph492.preheader
  %indvars.iv.next36.i.lcssa514.unr = phi i64 [ poison, %vec.epilog.scalar.ph492.preheader ], [ %indvars.iv.next36.i.prol, %vec.epilog.scalar.ph492.prol ]
  %indvars.iv35.i.unr = phi i64 [ %indvars.iv35.i.ph, %vec.epilog.scalar.ph492.preheader ], [ %indvars.iv.next36.i.prol, %vec.epilog.scalar.ph492.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph492.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph492.prol ]
  %i.fe = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.ff = icmp ugt i64 %i.fe, -8
  br i1 %i.ff, label %._crit_edge.loopexit.i, label %vec.epilog.scalar.ph492

vec.epilog.scalar.ph492:                          ; preds = %vec.epilog.scalar.ph492.prol.loopexit, %vec.epilog.scalar.ph492
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i.7, %vec.epilog.scalar.ph492 ], [ %indvars.iv35.i.unr, %vec.epilog.scalar.ph492.prol.loopexit ] ; 9 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %vec.epilog.scalar.ph492 ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph492.prol.loopexit ] ; 9 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !105
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv35.i
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !105
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !105
  %i.fm = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv35.i
  %i.fn = getelementptr i8, ptr %i.fm, i64 4
  store i32 %i.fl, ptr %i.fn, align 4, !tbaa !105
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !105
  %i.fr = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv35.i
  %i.fs = getelementptr i8, ptr %i.fr, i64 8
  store i32 %i.fq, ptr %i.fs, align 4, !tbaa !105
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !105
  %i.fw = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv35.i
  %i.fx = getelementptr i8, ptr %i.fw, i64 12
  store i32 %i.fv, ptr %i.fx, align 4, !tbaa !105
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !105
  %i.gb = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv35.i
  %i.gc = getelementptr i8, ptr %i.gb, i64 16
  store i32 %i.ga, ptr %i.gc, align 4, !tbaa !105
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 20
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !105
  %i.gg = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv35.i
  %i.gh = getelementptr i8, ptr %i.gg, i64 20
  store i32 %i.gf, ptr %i.gh, align 4, !tbaa !105
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !105
  %i.gl = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv35.i
  %i.gm = getelementptr i8, ptr %i.gl, i64 24
  store i32 %i.gk, ptr %i.gm, align 4, !tbaa !105
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 28
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !105
  %indvars.iv.next36.i.7 = add nsw i64 %indvars.iv35.i, 8 ; 2 uses
  %i.gq = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv35.i
  %i.gr = getelementptr i8, ptr %i.gq, i64 28
  store i32 %i.gp, ptr %i.gr, align 4, !tbaa !105
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %._crit_edge.loopexit.i, label %vec.epilog.scalar.ph492, !llvm.loop !270

._crit_edge.loopexit.i:                           ; preds = %vec.epilog.scalar.ph492.prol.loopexit, %vec.epilog.scalar.ph492, %vec.epilog.middle.block501, %middle.block487
  %indvars.iv.next36.i.lcssa = phi i64 [ %i.ex, %vec.epilog.middle.block501 ], [ %i.eo, %middle.block487 ], [ %indvars.iv.next36.i.lcssa514.unr, %vec.epilog.scalar.ph492.prol.loopexit ], [ %indvars.iv.next36.i.7, %vec.epilog.scalar.ph492 ]
  %i.gs = trunc nsw i64 %indvars.iv.next36.i.lcssa to i32
  %.pre.i = load i32, ptr %i.an, align 8, !tbaa !182
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.lr.ph30.split.i
  %i.gt = phi i32 [ %i.dy, %.lr.ph30.split.i ], [ %.pre.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.122.lcssa.i = phi i32 [ %.02126.i, %.lr.ph30.split.i ], [ %i.gs, %._crit_edge.loopexit.i ] ; 2 uses
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %i.gu = sext i32 %i.gt to i64
  %i.gv = icmp slt i64 %indvars.iv.next41.i, %i.gu
  br i1 %i.gv, label %.lr.ph30.split.i, label %_ZL21make_thread_local_indPK11PmeAtomCommiP12splinedata_t.exit, !llvm.loop !263

_ZL21make_thread_local_indPK11PmeAtomCommiP12splinedata_t.exit: ; preds = %._crit_edge.i, %._crit_edge.us.i, %bb.h
  %.021.lcssa.i = phi i32 [ 0, %bb.h ], [ %.122.lcssa.us.i, %._crit_edge.us.i ], [ %.122.lcssa.i, %._crit_edge.i ] ; 2 uses
  store i32 %.021.lcssa.i, ptr %i.ah, align 8, !tbaa !329
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %_ZL21make_thread_local_indPK11PmeAtomCommiP12splinedata_t.exit, %bb.e
  %i.gw = phi i32 [ %i.ae, %bb.e ], [ %i.am, %bb.g ], [ %.021.lcssa.i, %_ZL21make_thread_local_indPK11PmeAtomCommiP12splinedata_t.exit ] ; 4 uses
  %i.gx = phi ptr [ %i.aa, %bb.e ], [ %.pre83, %bb.g ], [ %.pre83, %_ZL21make_thread_local_indPK11PmeAtomCommiP12splinedata_t.exit ] ; 2 uses
  %.035 = phi ptr [ %i.ac, %bb.e ], [ %i.ah, %bb.g ], [ %i.ah, %_ZL21make_thread_local_indPK11PmeAtomCommiP12splinedata_t.exit ] ; 22 uses
  %i.gy = load i8, ptr %6, align 1, !tbaa !17, !range !106, !noundef !107
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %bb.j, label %_ZL13make_bsplinesN3gmx8ArrayRefIPfEES2_iPA3_fiPKiPKfb.exit

bb.j:                                             ; preds = %bb.i
  %i.ha = getelementptr inbounds nuw i8, ptr %.035, i64 32 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.035, i64 128 ; 3 uses
  %i.hc = load ptr, ptr %4, align 8, !tbaa !11
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 112
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !330 ; 18 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gx, i64 288
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !188 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.035, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !183 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gx, i64 152
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !331 ; 3 uses
  %i.hl = load i8, ptr %7, align 1, !tbaa !17, !range !106, !noundef !107
  %i.hm = trunc nuw i8 %i.hl to i1                ; 3 uses
  %i.hn = icmp sgt i32 %i.gw, 0
  br i1 %i.hn, label %.lr.ph272.i, label %_ZL13make_bsplinesN3gmx8ArrayRefIPfEES2_iPA3_fiPKiPKfb.exit

.lr.ph272.i:                                      ; preds = %bb.j
  %i.ho = add i32 %i.he, -1                       ; 3 uses
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.hp ; 11 uses
  %i.hr = icmp sgt i32 %i.he, 3                   ; 3 uses
  %i.hs = icmp sgt i32 %i.he, 1                   ; 3 uses
  %i.ht = sitofp i32 %i.ho to double
  %i.hu = fdiv double 1.000000e+00, %i.ht
  %i.hv = fptrunc double %i.hu to float           ; 18 uses
  %i.hw = sext i32 %i.he to i64                   ; 2 uses
  %i.hx = getelementptr [4 x i8], ptr %i.d, i64 %i.hw
  %i.hy = getelementptr i8, ptr %i.hx, i64 -8     ; 6 uses
  %i.hz = icmp sgt i32 %i.he, 2                   ; 3 uses
  %i.ia = icmp sgt i32 %i.he, 0                   ; 3 uses
  switch i32 %i.he, label %.lr.ph272.split.preheader.i [
    i32 4, label %.lr.ph272.split.us.preheader.i
    i32 5, label %.lr.ph272.split.us274.preheader.i
  ]

.lr.ph272.split.us274.preheader.i:                ; preds = %.lr.ph272.i
  %wide.trip.count.i37 = zext nneg i32 %i.gw to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %.035, i64 136
  %i.ic = getelementptr inbounds nuw i8, ptr %.035, i64 40
  %i.id = getelementptr inbounds nuw i8, ptr %.035, i64 144
  %i.ie = getelementptr inbounds nuw i8, ptr %.035, i64 48
  br label %.lr.ph272.split.us274.i

.lr.ph272.split.us.preheader.i:                   ; preds = %.lr.ph272.i
  %wide.trip.count316.i = zext nneg i32 %i.gw to i64
  %i.if = getelementptr inbounds nuw i8, ptr %.035, i64 136
  %i.ig = getelementptr inbounds nuw i8, ptr %.035, i64 40
  %i.ih = getelementptr inbounds nuw i8, ptr %.035, i64 144
  %i.ii = getelementptr inbounds nuw i8, ptr %.035, i64 48
  br label %.lr.ph272.split.us.i

.lr.ph272.split.preheader.i:                      ; preds = %.lr.ph272.i
  %i.ij = zext i32 %i.he to i64                   ; 21 uses
  %i.ik = shl nuw nsw i64 %i.ij, 2                ; 3 uses
  %wide.trip.count355.i = zext nneg i32 %i.gw to i64
  %i.il = getelementptr inbounds nuw i8, ptr %.035, i64 136 ; 2 uses
  %wide.trip.count342.i = zext i32 %i.ho to i64   ; 6 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.035, i64 144 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.035, i64 40
  %i.io = getelementptr inbounds nuw i8, ptr %.035, i64 48
  %i.ip = shl nuw nsw i64 %i.ij, 2                ; 4 uses
  %scevgep184.a = getelementptr i8, ptr %i.d, i64 %i.ip ; 3 uses
  %i.iq = add nsw i64 %i.ij, -1                   ; 15 uses
  %min.iters.check377 = icmp ult i32 %i.he, 9
  %min.iters.check379 = icmp ult i32 %i.he, 33
  %i.ir = and i64 %i.iq, 24
  %n.vec381 = and i64 %i.iq, -32                  ; 4 uses
  %i.is = or disjoint i64 %n.vec381, 1
  %cmp.n394 = icmp eq i64 %i.iq, %n.vec381
  %min.epilog.iters.check400 = icmp eq i64 %i.ir, 0
  %n.vec402 = and i64 %i.iq, -8                   ; 3 uses
  %i.it = or disjoint i64 %n.vec402, 1
  %cmp.n409 = icmp eq i64 %i.iq, %n.vec402
  %i.iu = add nsw i64 %wide.trip.count342.i, -1   ; 3 uses
  %min.iters.check344 = icmp ult i64 %i.iu, 8
  %n.vec346 = and i64 %i.iu, -8                   ; 3 uses
  %i.iv = or disjoint i64 %n.vec346, 1
  %broadcast.splatinsert349 = insertelement <8 x i64> poison, i64 %i.ij, i64 0
  %broadcast.splat350 = shufflevector <8 x i64> %broadcast.splatinsert349, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert351 = insertelement <8 x float> poison, float %i.hv, i64 0
  %i.iw = shufflevector <8 x float> %broadcast.splatinsert351, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n366 = icmp eq i64 %i.iu, %n.vec346
  %min.iters.check282 = icmp ult i32 %i.he, 9
  %min.iters.check284 = icmp ult i32 %i.he, 33
  %i.ix = and i64 %i.iq, 24
  %n.vec286 = and i64 %i.iq, -32                  ; 4 uses
  %i.iy = or disjoint i64 %n.vec286, 1
  %cmp.n299 = icmp eq i64 %i.iq, %n.vec286
  %min.epilog.iters.check305 = icmp eq i64 %i.ix, 0
  %n.vec307 = and i64 %i.iq, -8                   ; 3 uses
  %i.iz = or disjoint i64 %n.vec307, 1
  %cmp.n314 = icmp eq i64 %i.iq, %n.vec307
  %i.ja = add nsw i64 %wide.trip.count342.i, -1   ; 3 uses
  %min.iters.check249 = icmp ult i64 %i.ja, 8
  %n.vec251 = and i64 %i.ja, -8                   ; 3 uses
  %i.jb = or disjoint i64 %n.vec251, 1
  %broadcast.splatinsert254 = insertelement <8 x i64> poison, i64 %i.ij, i64 0
  %broadcast.splat255 = shufflevector <8 x i64> %broadcast.splatinsert254, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert256 = insertelement <8 x float> poison, float %i.hv, i64 0
  %i.jc = shufflevector <8 x float> %broadcast.splatinsert256, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n271 = icmp eq i64 %i.ja, %n.vec251
  %min.iters.check189 = icmp ult i32 %i.he, 9
  %min.iters.check191 = icmp ult i32 %i.he, 33
  %i.jd = and i64 %i.iq, 24
  %n.vec193 = and i64 %i.iq, -32                  ; 4 uses
  %i.je = or disjoint i64 %n.vec193, 1
  %cmp.n206 = icmp eq i64 %i.iq, %n.vec193
  %min.epilog.iters.check212 = icmp eq i64 %i.jd, 0
  %n.vec214 = and i64 %i.iq, -8                   ; 3 uses
  %i.jf = or disjoint i64 %n.vec214, 1
  %cmp.n221 = icmp eq i64 %i.iq, %n.vec214
  %i.jg = add nsw i64 %wide.trip.count342.i, -1   ; 3 uses
  %min.iters.check158 = icmp ult i64 %i.jg, 8
  %n.vec160 = and i64 %i.jg, -8                   ; 3 uses
  %i.jh = or disjoint i64 %n.vec160, 1
  %broadcast.splatinsert163 = insertelement <8 x i64> poison, i64 %i.ij, i64 0
  %broadcast.splat164 = shufflevector <8 x i64> %broadcast.splatinsert163, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert165 = insertelement <8 x float> poison, float %i.hv, i64 0
  %i.ji = shufflevector <8 x float> %broadcast.splatinsert165, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n177 = icmp eq i64 %i.jg, %n.vec160
  br label %.lr.ph272.split.i

.lr.ph272.split.us.i:                             ; preds = %.loopexit230.us.i, %.lr.ph272.split.us.preheader.i
  %indvars.iv313.i = phi i64 [ 0, %.lr.ph272.split.us.preheader.i ], [ %indvars.iv.next314.i, %.loopexit230.us.i ] ; 4 uses
  %i.jj = shl nuw nsw i64 %indvars.iv313.i, 4
  %i.jk = and i64 %i.jj, 17179869168              ; 3 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv313.i
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !105
  %.pre429.i = sext i32 %i.jm to i64              ; 2 uses
  br i1 %i.hm, label %.preheader229.us.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph272.split.us.i
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %.pre429.i
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !134
  %i.jp = fcmp une float %i.jo, 0.000000e+00
  br i1 %i.jp, label %.preheader229.us.i, label %.loopexit230.us.i

.preheader229.us.i:                               ; preds = %bb.k, %.lr.ph272.split.us.i
  %i.jq = getelementptr inbounds [12 x i8], ptr %i.hg, i64 %.pre429.i ; 3 uses
  %i.jr = shl nuw nsw i64 %indvars.iv313.i, 2     ; 6 uses
  %i.js = load ptr, ptr %i.hb, align 8, !tbaa !332 ; 4 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.jr
  %i.ju = or disjoint i64 %i.jr, 1                ; 3 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.ju
  %i.jw = or disjoint i64 %i.jr, 2                ; 3 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.jw
  %i.jy = or disjoint i64 %i.jr, 3                ; 3 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.jy
  %i.ka = load ptr, ptr %i.ha, align 8, !tbaa !332
  %scevgep305.i = getelementptr nuw i8, ptr %i.ka, i64 %i.jk
  %i.kb = load float, ptr %i.jq, align 4, !tbaa !134 ; 9 uses
  %i.kc = fsub float 1.000000e+00, %i.kb          ; 4 uses
  %i.kd = fmul float %i.kb, 5.000000e-01
  %i.ke = fsub float 2.000000e+00, %i.kb          ; 2 uses
  %i.kf = fmul float %i.kc, 5.000000e-01
  %i.kg = fmul float %i.kb, %i.ke
  %i.kh = fadd float %i.kb, 1.000000e+00          ; 2 uses
  %i.ki = fadd float %i.kb, 2.000000e+00
  %i.kj = call float @llvm.fmuladd.f32(float %i.kh, float %i.kc, float %i.kg)
  %i.kk = fmul float %i.kj, 5.000000e-01          ; 4 uses
  %i.kl = fmul float %i.kc, %i.kf                 ; 4 uses
  %i.km = fmul float %i.kb, %i.kd                 ; 4 uses
  %i.kn = fneg float %i.kl
  store float %i.kn, ptr %i.jt, align 4, !tbaa !134
  %i.ko = fsub float %i.kl, %i.kk
  store float %i.ko, ptr %i.jv, align 4, !tbaa !134
  %i.kp = fsub float %i.kk, %i.km
  store float %i.kp, ptr %i.jx, align 4, !tbaa !134
  store float %i.km, ptr %i.jz, align 4, !tbaa !134
  %i.kq = fmul float %i.kb, f0x3EAAAAAB
  %i.kr = fsub float 3.000000e+00, %i.kb
  %i.ks = fmul float %i.kr, %i.km
  %i.kt = fmul float %i.ke, %i.kk
  %i.ku = fmul float %i.kc, f0x3EAAAAAB
  %i.kv = call float @llvm.fmuladd.f32(float %i.kh, float %i.kk, float %i.ks)
  %i.kw = call float @llvm.fmuladd.f32(float %i.ki, float %i.kl, float %i.kt)
  %i.kx = insertelement <4 x float> poison, float %i.ku, i64 0
  %i.ky = insertelement <4 x float> %i.kx, float %i.kw, i64 1
  %i.kz = insertelement <4 x float> %i.ky, float %i.kv, i64 2
  %i.la = insertelement <4 x float> %i.kz, float %i.kq, i64 3
  %i.lb = insertelement <4 x float> <float poison, float f0x3EAAAAAB, float f0x3EAAAAAB, float poison>, float %i.kl, i64 0
  %i.lc = insertelement <4 x float> %i.lb, float %i.km, i64 3
  %i.ld = fmul <4 x float> %i.la, %i.lc
  store <4 x float> %i.ld, ptr %scevgep305.i, align 4, !tbaa !134
  %i.le = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  %i.lf = load ptr, ptr %i.if, align 8, !tbaa !332 ; 4 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %i.jr
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %i.ju
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %i.jw
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %i.jy
  %i.lk = load ptr, ptr %i.ig, align 8, !tbaa !332
  %scevgep305.1.i = getelementptr nuw i8, ptr %i.lk, i64 %i.jk
  %i.ll = load float, ptr %i.le, align 4, !tbaa !134 ; 9 uses
  %i.lm = fsub float 1.000000e+00, %i.ll          ; 4 uses
  %i.ln = fmul float %i.ll, 5.000000e-01
  %i.lo = fsub float 2.000000e+00, %i.ll          ; 2 uses
  %i.lp = fmul float %i.lm, 5.000000e-01
  %i.lq = fmul float %i.ll, %i.lo
  %i.lr = fadd float %i.ll, 1.000000e+00          ; 2 uses
  %i.ls = fadd float %i.ll, 2.000000e+00
  %i.lt = call float @llvm.fmuladd.f32(float %i.lr, float %i.lm, float %i.lq)
  %i.lu = fmul float %i.lt, 5.000000e-01          ; 4 uses
  %i.lv = fmul float %i.lm, %i.lp                 ; 4 uses
  %i.lw = fmul float %i.ll, %i.ln                 ; 4 uses
  %i.lx = fneg float %i.lv
  store float %i.lx, ptr %i.lg, align 4, !tbaa !134
  %i.ly = fsub float %i.lv, %i.lu
  store float %i.ly, ptr %i.lh, align 4, !tbaa !134
  %i.lz = fsub float %i.lu, %i.lw
  store float %i.lz, ptr %i.li, align 4, !tbaa !134
  store float %i.lw, ptr %i.lj, align 4, !tbaa !134
  %i.ma = fmul float %i.ll, f0x3EAAAAAB
  %i.mb = fsub float 3.000000e+00, %i.ll
  %i.mc = fmul float %i.mb, %i.lw
  %i.md = fmul float %i.lo, %i.lu
  %i.me = fmul float %i.lm, f0x3EAAAAAB
  %i.mf = call float @llvm.fmuladd.f32(float %i.lr, float %i.lu, float %i.mc)
  %i.mg = call float @llvm.fmuladd.f32(float %i.ls, float %i.lv, float %i.md)
  %i.mh = insertelement <4 x float> poison, float %i.me, i64 0
  %i.mi = insertelement <4 x float> %i.mh, float %i.mg, i64 1
  %i.mj = insertelement <4 x float> %i.mi, float %i.mf, i64 2
  %i.mk = insertelement <4 x float> %i.mj, float %i.ma, i64 3
  %i.ml = insertelement <4 x float> <float poison, float f0x3EAAAAAB, float f0x3EAAAAAB, float poison>, float %i.lv, i64 0
  %i.mm = insertelement <4 x float> %i.ml, float %i.lw, i64 3
  %i.mn = fmul <4 x float> %i.mk, %i.mm
  store <4 x float> %i.mn, ptr %scevgep305.1.i, align 4, !tbaa !134
  %i.mo = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.mp = load ptr, ptr %i.ih, align 8, !tbaa !332 ; 4 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.jr
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.ju
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.jw
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.jy
  %i.mu = load ptr, ptr %i.ii, align 8, !tbaa !332
  %scevgep305.2.i = getelementptr nuw i8, ptr %i.mu, i64 %i.jk
  %i.mv = load float, ptr %i.mo, align 4, !tbaa !134 ; 9 uses
  %i.mw = fsub float 1.000000e+00, %i.mv          ; 4 uses
  %i.mx = fmul float %i.mv, 5.000000e-01
  %i.my = fsub float 2.000000e+00, %i.mv          ; 2 uses
  %i.mz = fmul float %i.mw, 5.000000e-01
  %i.na = fmul float %i.mv, %i.my
  %i.nb = fadd float %i.mv, 1.000000e+00          ; 2 uses
  %i.nc = fadd float %i.mv, 2.000000e+00
  %i.nd = call float @llvm.fmuladd.f32(float %i.nb, float %i.mw, float %i.na)
  %i.ne = fmul float %i.nd, 5.000000e-01          ; 4 uses
  %i.nf = fmul float %i.mw, %i.mz                 ; 4 uses
  %i.ng = fmul float %i.mv, %i.mx                 ; 4 uses
  %i.nh = fneg float %i.nf
  store float %i.nh, ptr %i.mq, align 4, !tbaa !134
  %i.ni = fsub float %i.nf, %i.ne
  store float %i.ni, ptr %i.mr, align 4, !tbaa !134
  %i.nj = fsub float %i.ne, %i.ng
  store float %i.nj, ptr %i.ms, align 4, !tbaa !134
  store float %i.ng, ptr %i.mt, align 4, !tbaa !134
  %i.nk = fmul float %i.mv, f0x3EAAAAAB
  %i.nl = fsub float 3.000000e+00, %i.mv
  %i.nm = fmul float %i.nl, %i.ng
  %i.nn = fmul float %i.my, %i.ne
  %i.no = fmul float %i.mw, f0x3EAAAAAB
  %i.np = call float @llvm.fmuladd.f32(float %i.nb, float %i.ne, float %i.nm)
  %i.nq = call float @llvm.fmuladd.f32(float %i.nc, float %i.nf, float %i.nn)
  %i.nr = insertelement <4 x float> poison, float %i.no, i64 0
  %i.ns = insertelement <4 x float> %i.nr, float %i.nq, i64 1
  %i.nt = insertelement <4 x float> %i.ns, float %i.np, i64 2
  %i.nu = insertelement <4 x float> %i.nt, float %i.nk, i64 3
  %i.nv = insertelement <4 x float> <float poison, float f0x3EAAAAAB, float f0x3EAAAAAB, float poison>, float %i.nf, i64 0
  %i.nw = insertelement <4 x float> %i.nv, float %i.ng, i64 3
  %i.nx = fmul <4 x float> %i.nu, %i.nw
  store <4 x float> %i.nx, ptr %scevgep305.2.i, align 4, !tbaa !134
  br label %.loopexit230.us.i

.loopexit230.us.i:                                ; preds = %.preheader229.us.i, %bb.k
  %indvars.iv.next314.i = add nuw nsw i64 %indvars.iv313.i, 1 ; 2 uses
  %exitcond317.not.i = icmp eq i64 %indvars.iv.next314.i, %wide.trip.count316.i
  br i1 %exitcond317.not.i, label %_ZL13make_bsplinesN3gmx8ArrayRefIPfEES2_iPA3_fiPKiPKfb.exit, label %.lr.ph272.split.us.i, !llvm.loop !271

.lr.ph272.split.us274.i:                          ; preds = %.loopexit232.us.i, %.lr.ph272.split.us274.preheader.i
  %indvars.iv293.i = phi i64 [ 0, %.lr.ph272.split.us274.preheader.i ], [ %indvars.iv.next294.i, %.loopexit232.us.i ] ; 3 uses
  %i.ny = mul nuw nsw i64 %indvars.iv293.i, 20    ; 4 uses
  %i.nz = and i64 %i.ny, 17179869180              ; 3 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv293.i
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !105
  %.pre431.i = sext i32 %i.ob to i64              ; 2 uses
  br i1 %i.hm, label %.preheader231.us.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph272.split.us274.i
  %i.oc = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %.pre431.i
  %i.od = load float, ptr %i.oc, align 4, !tbaa !134
  %i.oe = fcmp une float %i.od, 0.000000e+00
  br i1 %i.oe, label %.preheader231.us.i, label %.loopexit232.us.i

.preheader231.us.i:                               ; preds = %bb.l, %.lr.ph272.split.us274.i
  %i.of = getelementptr inbounds [12 x i8], ptr %i.hg, i64 %.pre431.i ; 3 uses
  %i.og = load ptr, ptr %i.hb, align 8, !tbaa !332
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.ny ; 5 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oh, i64 12
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  %i.om = load ptr, ptr %i.ha, align 8, !tbaa !332
  %scevgep.i = getelementptr nuw i8, ptr %i.om, i64 %i.nz ; 2 uses
  %i.on = load float, ptr %i.of, align 4, !tbaa !134 ; 12 uses
  %i.oo = fmul float %i.on, 5.000000e-01
  %i.op = fsub float 1.000000e+00, %i.on          ; 5 uses
  %i.oq = fsub float 4.000000e+00, %i.on
  %i.or = fsub float 3.000000e+00, %i.on          ; 2 uses
  %i.os = fsub float 2.000000e+00, %i.on          ; 3 uses
  %i.ot = fmul float %i.on, %i.os
  %i.ou = fadd float %i.on, 1.000000e+00          ; 3 uses
  %i.ov = fadd float %i.on, 2.000000e+00          ; 2 uses
  %i.ow = fadd float %i.on, 3.000000e+00
  %i.ox = call float @llvm.fmuladd.f32(float %i.ou, float %i.op, float %i.ot)
  %i.oy = fmul float %i.op, 5.000000e-01
  %i.oz = fmul float %i.on, %i.oo                 ; 2 uses
  %i.pa = fmul float %i.ox, 5.000000e-01          ; 2 uses
  %i.pb = fmul float %i.on, f0x3EAAAAAB
  %i.pc = fmul float %i.or, %i.oz
end_hunk_0
begin_hunk_1_@_Z14spread_on_gridPK9gmx_pme_tP11PmeAtomCommP14PmeAndFftGridsbbb.omp_outlined.1:bb.a

middle.block435:                                  ; preds = %vector.body423
  %cmp.n436 = icmp eq i64 %i.wp, %n.vec416
  br i1 %cmp.n436, label %._crit_edge252.i, label %.lr.ph251.i.preheader

.lr.ph251.i.preheader:                            ; preds = %.lr.ph251.preheader.i, %middle.block435
  %indvars.iv318.i.ph = phi i64 [ 1, %.lr.ph251.preheader.i ], [ %i.xb, %middle.block435 ]
  br label %.lr.ph251.i

._crit_edge252.i:                                 ; preds = %.lr.ph251.i, %middle.block435
  %i.xr = fmul float %i.ve, %i.wu
  %i.xs = load float, ptr %i.d, align 16, !tbaa !134
  %i.xt = fmul float %i.xr, %i.xs                 ; 2 uses
  store float %i.xt, ptr %i.d, align 16, !tbaa !134
  %indvars.iv.next328.i = add nuw nsw i64 %indvars.iv327.i, 1 ; 2 uses
  %indvars.iv.next326.i = add nuw nsw i64 %indvars.iv325.i, 1
  %exitcond333.not.i = icmp eq i64 %indvars.iv.next328.i, %i.ij
  %indvar.next412 = add i64 %indvar411, 1
  br i1 %exitcond333.not.i, label %._crit_edge256.i, label %.lr.ph251.preheader.i, !llvm.loop !279

.lr.ph251.i:                                      ; preds = %.lr.ph251.i.preheader, %.lr.ph251.i
  %indvars.iv318.i = phi i64 [ %indvars.iv.next319.i, %.lr.ph251.i ], [ %indvars.iv318.i.ph, %.lr.ph251.i.preheader ] ; 3 uses
  %i.xu = trunc nuw nsw i64 %indvars.iv318.i to i32
  %i.xv = uitofp nneg i32 %i.xu to float
  %i.xw = fadd float %i.vd, %i.xv
  %i.xx = sub nuw nsw i64 %indvars.iv327.i, %indvars.iv318.i ; 2 uses
  %i.xy = getelementptr [4 x i8], ptr %i.d, i64 %i.xx ; 2 uses
  %i.xz = getelementptr i8, ptr %i.xy, i64 -8
  %i.ya = load float, ptr %i.xz, align 4, !tbaa !134
  %i.yb = trunc nuw i64 %i.xx to i32
  %i.yc = uitofp nneg i32 %i.yb to float
  %i.yd = fsub float %i.yc, %i.vd
  %i.ye = getelementptr i8, ptr %i.xy, i64 -4     ; 2 uses
  %i.yf = load float, ptr %i.ye, align 4, !tbaa !134
  %i.yg = fmul float %i.yf, %i.yd
  %i.yh = call float @llvm.fmuladd.f32(float %i.xw, float %i.ya, float %i.yg)
  %i.yi = fmul float %i.yh, %i.wu
  store float %i.yi, ptr %i.ye, align 4, !tbaa !134
  %indvars.iv.next319.i = add nuw nsw i64 %indvars.iv318.i, 1 ; 2 uses
  %exitcond324.not.i = icmp eq i64 %indvars.iv.next319.i, %indvars.iv325.i
  br i1 %exitcond324.not.i, label %._crit_edge252.i, label %.lr.ph251.i, !llvm.loop !280

._crit_edge260.i:                                 ; preds = %.lr.ph259.i.prol.loopexit, %.lr.ph259.i, %vec.epilog.middle.block408, %middle.block393
  %i.yj = fmul float %i.vd, %i.hv
  %i.yk = load float, ptr %i.hy, align 4, !tbaa !134
  %i.yl = fmul float %i.yj, %i.yk
  store float %i.yl, ptr %i.hq, align 4, !tbaa !134
  br i1 %i.hz, label %.lr.ph263.i.preheader, label %._crit_edge264.thread.i

.lr.ph263.i.preheader:                            ; preds = %._crit_edge260.i
  br i1 %min.iters.check344, label %.lr.ph263.i.preheader508, label %vector.ph345

vector.ph345:                                     ; preds = %.lr.ph263.i.preheader
  %broadcast.splatinsert347 = insertelement <8 x float> poison, float %i.vd, i64 0
  %broadcast.splat348 = shufflevector <8 x float> %broadcast.splatinsert347, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body353

vector.body353:                                   ; preds = %vector.body353, %vector.ph345
  %index354 = phi i64 [ 0, %vector.ph345 ], [ %index.next362, %vector.body353 ]
  %vec.ind355 = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph345 ], [ %vec.ind.next363, %vector.body353 ] ; 2 uses
  %vec.ind356 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph345 ], [ %vec.ind.next364, %vector.body353 ] ; 2 uses
  %i.ym = uitofp nneg <8 x i32> %vec.ind356 to <8 x float>
  %i.yn = fadd <8 x float> %broadcast.splat348, %i.ym
  %i.yo = sub nuw nsw <8 x i64> %broadcast.splat350, %vec.ind355 ; 2 uses
  %i.yp = extractelement <8 x i64> %i.yo, i64 0
  %i.yq = getelementptr [4 x i8], ptr %i.d, i64 %i.yp ; 2 uses
  %i.yr = getelementptr i8, ptr %i.yq, i64 -36
  %wide.load357 = load <8 x float>, ptr %i.yr, align 4, !tbaa !134
  %reverse358 = shufflevector <8 x float> %wide.load357, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ys = trunc nuw nsw <8 x i64> %i.yo to <8 x i32>
  %i.yt = uitofp nneg <8 x i32> %i.ys to <8 x float>
  %i.yu = fsub <8 x float> %i.yt, %broadcast.splat348
  %i.yv = getelementptr i8, ptr %i.yq, i64 -32    ; 2 uses
  %wide.load359 = load <8 x float>, ptr %i.yv, align 4, !tbaa !134
  %reverse360 = shufflevector <8 x float> %wide.load359, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.yw = fmul <8 x float> %reverse360, %i.yu
  %i.yx = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.yn, <8 x float> %reverse358, <8 x float> %i.yw)
  %i.yy = shufflevector <8 x float> %i.yx, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse361 = fmul <8 x float> %i.yy, %i.iw
  store <8 x float> %reverse361, ptr %i.yv, align 4, !tbaa !134
  %index.next362 = add nuw i64 %index354, 8       ; 2 uses
  %vec.ind.next363 = add nuw nsw <8 x i64> %vec.ind355, splat (i64 8)
  %vec.ind.next364 = add <8 x i32> %vec.ind356, splat (i32 8)
  %i.yz = icmp eq i64 %index.next362, %n.vec346
  br i1 %i.yz, label %middle.block365, label %vector.body353, !llvm.loop !281

middle.block365:                                  ; preds = %vector.body353
  br i1 %cmp.n366, label %._crit_edge264.thread.i, label %.lr.ph263.i.preheader508

.lr.ph263.i.preheader508:                         ; preds = %.lr.ph263.i.preheader, %middle.block365
  %indvars.iv339.i.ph = phi i64 [ 1, %.lr.ph263.i.preheader ], [ %i.iv, %middle.block365 ]
  br label %.lr.ph263.i

.lr.ph259.i:                                      ; preds = %.lr.ph259.i.prol.loopexit, %.lr.ph259.i
  %indvars.iv334.i = phi i64 [ %indvars.iv.next335.i.7, %.lr.ph259.i ], [ %indvars.iv334.i.unr, %.lr.ph259.i.prol.loopexit ] ; 10 uses
  %i.za = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv334.i ; 2 uses
  %i.zb = getelementptr i8, ptr %i.za, i64 -4
  %i.zc = load float, ptr %i.zb, align 4, !tbaa !134
  %i.zd = load float, ptr %i.za, align 4, !tbaa !134
  %i.ze = fsub float %i.zc, %i.zd
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv334.i
  store float %i.ze, ptr %gep.i, align 4, !tbaa !134
  %indvars.iv.next335.i = add nuw nsw i64 %indvars.iv334.i, 1 ; 2 uses
  %i.zf = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.i ; 2 uses
  %i.zg = getelementptr i8, ptr %i.zf, i64 -4
  %i.zh = load float, ptr %i.zg, align 4, !tbaa !134
  %i.zi = load float, ptr %i.zf, align 4, !tbaa !134
  %i.zj = fsub float %i.zh, %i.zi
  %gep.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next335.i
  store float %i.zj, ptr %gep.i.1, align 4, !tbaa !134
  %indvars.iv.next335.i.1 = add nuw nsw i64 %indvars.iv334.i, 2 ; 2 uses
  %i.zk = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.i.1 ; 2 uses
  %i.zl = getelementptr i8, ptr %i.zk, i64 -4
  %i.zm = load float, ptr %i.zl, align 4, !tbaa !134
  %i.zn = load float, ptr %i.zk, align 4, !tbaa !134
  %i.zo = fsub float %i.zm, %i.zn
  %gep.i.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next335.i.1
  store float %i.zo, ptr %gep.i.2, align 4, !tbaa !134
  %indvars.iv.next335.i.2 = add nuw nsw i64 %indvars.iv334.i, 3 ; 2 uses
  %i.zp = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.i.2 ; 2 uses
  %i.zq = getelementptr i8, ptr %i.zp, i64 -4
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !134
  %i.zs = load float, ptr %i.zp, align 4, !tbaa !134
  %i.zt = fsub float %i.zr, %i.zs
  %gep.i.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next335.i.2
  store float %i.zt, ptr %gep.i.3, align 4, !tbaa !134
  %indvars.iv.next335.i.3 = add nuw nsw i64 %indvars.iv334.i, 4 ; 2 uses
  %i.zu = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.i.3 ; 2 uses
  %i.zv = getelementptr i8, ptr %i.zu, i64 -4
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !134
  %i.zx = load float, ptr %i.zu, align 4, !tbaa !134
  %i.zy = fsub float %i.zw, %i.zx
  %gep.i.4 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next335.i.3
  store float %i.zy, ptr %gep.i.4, align 4, !tbaa !134
  %indvars.iv.next335.i.4 = add nuw nsw i64 %indvars.iv334.i, 5 ; 2 uses
  %i.zz = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.i.4 ; 2 uses
  %i.aaa = getelementptr i8, ptr %i.zz, i64 -4
  %i.aab = load float, ptr %i.aaa, align 4, !tbaa !134
  %i.aac = load float, ptr %i.zz, align 4, !tbaa !134
  %i.aad = fsub float %i.aab, %i.aac
  %gep.i.5 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next335.i.4
  store float %i.aad, ptr %gep.i.5, align 4, !tbaa !134
  %indvars.iv.next335.i.5 = add nuw nsw i64 %indvars.iv334.i, 6 ; 2 uses
  %i.aae = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.i.5 ; 2 uses
  %i.aaf = getelementptr i8, ptr %i.aae, i64 -4
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !134
  %i.aah = load float, ptr %i.aae, align 4, !tbaa !134
  %i.aai = fsub float %i.aag, %i.aah
  %gep.i.6 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next335.i.5
  store float %i.aai, ptr %gep.i.6, align 4, !tbaa !134
  %indvars.iv.next335.i.6 = add nuw nsw i64 %indvars.iv334.i, 7 ; 2 uses
  %i.aaj = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.i.6 ; 2 uses
  %i.aak = getelementptr i8, ptr %i.aaj, i64 -4
  %i.aal = load float, ptr %i.aak, align 4, !tbaa !134
  %i.aam = load float, ptr %i.aaj, align 4, !tbaa !134
  %i.aan = fsub float %i.aal, %i.aam
  %gep.i.7 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next335.i.6
  store float %i.aan, ptr %gep.i.7, align 4, !tbaa !134
  %indvars.iv.next335.i.7 = add nuw nsw i64 %indvars.iv334.i, 8 ; 2 uses
  %exitcond338.not.i.7 = icmp eq i64 %indvars.iv.next335.i.7, %i.ij
  br i1 %exitcond338.not.i.7, label %._crit_edge260.i, label %.lr.ph259.i, !llvm.loop !282

._crit_edge264.thread.i:                          ; preds = %.lr.ph263.i, %middle.block365, %._crit_edge260.i
  %i.aao = fmul float %i.ve, %i.hv
  %i.aap = load float, ptr %i.d, align 16, !tbaa !134
  %i.aaq = fmul float %i.aao, %i.aap
  store float %i.aaq, ptr %i.d, align 16, !tbaa !134
  br label %._crit_edge268.i

._crit_edge264.i:                                 ; preds = %._crit_edge256.i
  %i.aar = fmul float %i.vd, %i.hv
  %i.aas = load float, ptr %i.hy, align 4, !tbaa !134
  %i.aat = fmul float %i.aar, %i.aas
  store float %i.aat, ptr %i.hq, align 4, !tbaa !134
  %i.aau = fmul float %i.ve, %i.hv
  %i.aav = load float, ptr %i.d, align 16, !tbaa !134
  %i.aaw = fmul float %i.aau, %i.aav
  store float %i.aaw, ptr %i.d, align 16, !tbaa !134
  br i1 %i.ia, label %._crit_edge268.i, label %._crit_edge256.1.thread.i

._crit_edge256.1.thread.i:                        ; preds = %._crit_edge264.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  %i.aax = getelementptr inbounds nuw i8, ptr %i.va, i64 4
  %i.aay = load float, ptr %i.aax, align 4, !tbaa !134 ; 3 uses
  store float 0.000000e+00, ptr %i.hq, align 4, !tbaa !134
  store float %i.aay, ptr %i.p, align 4, !tbaa !134
  %i.aaz = fsub float 1.000000e+00, %i.aay        ; 3 uses
  store float %i.aaz, ptr %i.d, align 16, !tbaa !134
  %i.aba = fneg float %i.aaz
  %i.abb = load ptr, ptr %i.il, align 8, !tbaa !332
  %i.abc = getelementptr inbounds [4 x i8], ptr %i.abb, i64 %i.vb
  store float %i.aba, ptr %i.abc, align 4, !tbaa !134
  br label %._crit_edge264.1.i

.lr.ph263.i:                                      ; preds = %.lr.ph263.i.preheader508, %.lr.ph263.i
  %indvars.iv339.i = phi i64 [ %indvars.iv.next340.i, %.lr.ph263.i ], [ %indvars.iv339.i.ph, %.lr.ph263.i.preheader508 ] ; 3 uses
  %i.abd = trunc nuw nsw i64 %indvars.iv339.i to i32
  %i.abe = uitofp nneg i32 %i.abd to float
  %i.abf = fadd float %i.vd, %i.abe
  %i.abg = sub nuw nsw i64 %i.ij, %indvars.iv339.i ; 2 uses
  %i.abh = getelementptr [4 x i8], ptr %i.d, i64 %i.abg ; 2 uses
  %i.abi = getelementptr i8, ptr %i.abh, i64 -8
  %i.abj = load float, ptr %i.abi, align 4, !tbaa !134
  %i.abk = trunc nuw nsw i64 %i.abg to i32
  %i.abl = uitofp nneg i32 %i.abk to float
  %i.abm = fsub float %i.abl, %i.vd
  %i.abn = getelementptr i8, ptr %i.abh, i64 -4   ; 2 uses
  %i.abo = load float, ptr %i.abn, align 4, !tbaa !134
  %i.abp = fmul float %i.abo, %i.abm
  %i.abq = call float @llvm.fmuladd.f32(float %i.abf, float %i.abj, float %i.abp)
  %i.abr = fmul float %i.abq, %i.hv
  store float %i.abr, ptr %i.abn, align 4, !tbaa !134
  %indvars.iv.next340.i = add nuw nsw i64 %indvars.iv339.i, 1 ; 2 uses
  %exitcond343.not.i = icmp eq i64 %indvars.iv.next340.i, %wide.trip.count342.i
  br i1 %exitcond343.not.i, label %._crit_edge264.thread.i, label %.lr.ph263.i, !llvm.loop !283

._crit_edge268.i:                                 ; preds = %._crit_edge264.i, %._crit_edge264.thread.i
  %i.abs = load ptr, ptr %i.ha, align 8, !tbaa !332
  %scevgep344.i = getelementptr nuw i8, ptr %i.abs, i64 %i.uu
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep344.i, ptr nonnull align 16 %i.d, i64 %i.ik, i1 false), !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  %i.abt = getelementptr inbounds nuw i8, ptr %i.va, i64 4
  %i.abu = load float, ptr %i.abt, align 4, !tbaa !134 ; 11 uses
  store float 0.000000e+00, ptr %i.hq, align 4, !tbaa !134
  store float %i.abu, ptr %i.p, align 4, !tbaa !134
  %i.abv = fsub float 1.000000e+00, %i.abu        ; 5 uses
  store float %i.abv, ptr %i.d, align 16, !tbaa !134
  br i1 %i.hr, label %.lr.ph251.preheader.1.i.preheader, label %._crit_edge256.1.i

.lr.ph251.preheader.1.i.preheader:                ; preds = %._crit_edge268.i
  %broadcast.splatinsert326 = insertelement <8 x float> poison, float %i.abu, i64 0
  %broadcast.splat327 = shufflevector <8 x float> %broadcast.splatinsert326, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph251.preheader.1.i

.lr.ph251.preheader.1.i:                          ; preds = %.lr.ph251.preheader.1.i.preheader, %._crit_edge252.1.i
  %indvar316 = phi i64 [ %indvar.next317, %._crit_edge252.1.i ], [ 0, %.lr.ph251.preheader.1.i.preheader ] ; 2 uses
  %indvars.iv327.1.i = phi i64 [ %indvars.iv.next328.1.i, %._crit_edge252.1.i ], [ 3, %.lr.ph251.preheader.1.i.preheader ] ; 5 uses
  %indvars.iv325.1.i = phi i64 [ %indvars.iv.next326.1.i, %._crit_edge252.1.i ], [ 2, %.lr.ph251.preheader.1.i.preheader ] ; 2 uses
  %i.abw = add i64 %indvar316, 1                  ; 3 uses
  %i.abx = add nsw i64 %indvars.iv327.1.i, -1     ; 2 uses
  %i.aby = trunc nuw nsw i64 %i.abx to i32
  %i.abz = sitofp i32 %i.aby to double
  %i.aca = fdiv double 1.000000e+00, %i.abz
  %i.acb = fptrunc double %i.aca to float         ; 4 uses
  %i.acc = fmul float %i.abu, %i.acb
  %i.acd = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv327.1.i
  %i.ace = getelementptr i8, ptr %i.acd, i64 -8
  %i.acf = load float, ptr %i.ace, align 4, !tbaa !134
  %i.acg = fmul float %i.acf, %i.acc
  %i.ach = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.abx
  store float %i.acg, ptr %i.ach, align 4, !tbaa !134
  %min.iters.check319 = icmp ult i64 %i.abw, 8
  br i1 %min.iters.check319, label %.lr.ph251.1.i.preheader, label %vector.ph320

vector.ph320:                                     ; preds = %.lr.ph251.preheader.1.i
  %n.vec321 = and i64 %i.abw, -8                  ; 3 uses
  %i.aci = or disjoint i64 %n.vec321, 1
  %broadcast.splatinsert322 = insertelement <8 x i64> poison, i64 %indvars.iv327.1.i, i64 0
  %broadcast.splat323 = shufflevector <8 x i64> %broadcast.splatinsert322, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert324 = insertelement <8 x float> poison, float %i.acb, i64 0
  %i.acj = shufflevector <8 x float> %broadcast.splatinsert324, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body328

vector.body328:                                   ; preds = %vector.body328, %vector.ph320
  %index329 = phi i64 [ 0, %vector.ph320 ], [ %index.next337, %vector.body328 ]
  %vec.ind330 = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph320 ], [ %vec.ind.next338, %vector.body328 ] ; 2 uses
  %vec.ind331 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph320 ], [ %vec.ind.next339, %vector.body328 ] ; 2 uses
  %i.ack = uitofp nneg <8 x i32> %vec.ind331 to <8 x float>
  %i.acl = fadd <8 x float> %broadcast.splat327, %i.ack
  %i.acm = sub nuw nsw <8 x i64> %broadcast.splat323, %vec.ind330 ; 2 uses
  %i.acn = extractelement <8 x i64> %i.acm, i64 0
  %i.aco = getelementptr [4 x i8], ptr %i.d, i64 %i.acn ; 2 uses
  %i.acp = getelementptr i8, ptr %i.aco, i64 -36
  %wide.load332 = load <8 x float>, ptr %i.acp, align 4, !tbaa !134
  %reverse333 = shufflevector <8 x float> %wide.load332, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.acq = trunc nuw <8 x i64> %i.acm to <8 x i32>
  %i.acr = uitofp nneg <8 x i32> %i.acq to <8 x float>
  %i.acs = fsub <8 x float> %i.acr, %broadcast.splat327
  %i.act = getelementptr i8, ptr %i.aco, i64 -32  ; 2 uses
  %wide.load334 = load <8 x float>, ptr %i.act, align 4, !tbaa !134
  %reverse335 = shufflevector <8 x float> %wide.load334, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.acu = fmul <8 x float> %reverse335, %i.acs
  %i.acv = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.acl, <8 x float> %reverse333, <8 x float> %i.acu)
  %i.acw = shufflevector <8 x float> %i.acv, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse336 = fmul <8 x float> %i.acw, %i.acj
  store <8 x float> %reverse336, ptr %i.act, align 4, !tbaa !134
  %index.next337 = add nuw i64 %index329, 8       ; 2 uses
  %vec.ind.next338 = add nuw nsw <8 x i64> %vec.ind330, splat (i64 8)
  %vec.ind.next339 = add <8 x i32> %vec.ind331, splat (i32 8)
  %i.acx = icmp eq i64 %index.next337, %n.vec321
  br i1 %i.acx, label %middle.block340, label %vector.body328, !llvm.loop !284

middle.block340:                                  ; preds = %vector.body328
  %cmp.n341 = icmp eq i64 %i.abw, %n.vec321
  br i1 %cmp.n341, label %._crit_edge252.1.i, label %.lr.ph251.1.i.preheader

.lr.ph251.1.i.preheader:                          ; preds = %.lr.ph251.preheader.1.i, %middle.block340
  %indvars.iv318.1.i.ph = phi i64 [ 1, %.lr.ph251.preheader.1.i ], [ %i.aci, %middle.block340 ]
  br label %.lr.ph251.1.i

.lr.ph251.1.i:                                    ; preds = %.lr.ph251.1.i.preheader, %.lr.ph251.1.i
  %indvars.iv318.1.i = phi i64 [ %indvars.iv.next319.1.i, %.lr.ph251.1.i ], [ %indvars.iv318.1.i.ph, %.lr.ph251.1.i.preheader ] ; 3 uses
  %i.acy = trunc nuw nsw i64 %indvars.iv318.1.i to i32
  %i.acz = uitofp nneg i32 %i.acy to float
  %i.ada = fadd float %i.abu, %i.acz
  %i.adb = sub nuw nsw i64 %indvars.iv327.1.i, %indvars.iv318.1.i ; 2 uses
  %i.adc = getelementptr [4 x i8], ptr %i.d, i64 %i.adb ; 2 uses
  %i.add = getelementptr i8, ptr %i.adc, i64 -8
  %i.ade = load float, ptr %i.add, align 4, !tbaa !134
  %i.adf = trunc nuw i64 %i.adb to i32
  %i.adg = uitofp nneg i32 %i.adf to float
  %i.adh = fsub float %i.adg, %i.abu
  %i.adi = getelementptr i8, ptr %i.adc, i64 -4   ; 2 uses
  %i.adj = load float, ptr %i.adi, align 4, !tbaa !134
  %i.adk = fmul float %i.adj, %i.adh
  %i.adl = call float @llvm.fmuladd.f32(float %i.ada, float %i.ade, float %i.adk)
  %i.adm = fmul float %i.adl, %i.acb
  store float %i.adm, ptr %i.adi, align 4, !tbaa !134
  %indvars.iv.next319.1.i = add nuw nsw i64 %indvars.iv318.1.i, 1 ; 2 uses
  %exitcond324.1.not.i = icmp eq i64 %indvars.iv.next319.1.i, %indvars.iv325.1.i
  br i1 %exitcond324.1.not.i, label %._crit_edge252.1.i, label %.lr.ph251.1.i, !llvm.loop !285

._crit_edge252.1.i:                               ; preds = %.lr.ph251.1.i, %middle.block340
  %i.adn = fmul float %i.abv, %i.acb
  %i.ado = load float, ptr %i.d, align 16, !tbaa !134
  %i.adp = fmul float %i.adn, %i.ado              ; 2 uses
  store float %i.adp, ptr %i.d, align 16, !tbaa !134
  %indvars.iv.next328.1.i = add nuw nsw i64 %indvars.iv327.1.i, 1 ; 2 uses
  %indvars.iv.next326.1.i = add nuw nsw i64 %indvars.iv325.1.i, 1
  %exitcond333.1.not.i = icmp eq i64 %indvars.iv.next328.1.i, %i.ij
  %indvar.next317 = add i64 %indvar316, 1
  br i1 %exitcond333.1.not.i, label %._crit_edge256.1.i, label %.lr.ph251.preheader.1.i, !llvm.loop !279

._crit_edge256.1.i:                               ; preds = %._crit_edge252.1.i, %._crit_edge268.i
  %i.adq = phi float [ %i.abv, %._crit_edge268.i ], [ %i.adp, %._crit_edge252.1.i ]
  %i.adr = fneg float %i.adq
  %i.ads = load ptr, ptr %i.il, align 8, !tbaa !332 ; 4 uses
  %i.adt = getelementptr inbounds [4 x i8], ptr %i.ads, i64 %i.vb
  store float %i.adr, ptr %i.adt, align 4, !tbaa !134
  br i1 %i.hs, label %iter.check302, label %._crit_edge264.1.i

iter.check302:                                    ; preds = %._crit_edge256.1.i
  %invariant.gep440.i = getelementptr inbounds nuw [4 x i8], ptr %i.ads, i64 %i.vc ; 11 uses
  br i1 %min.iters.check282, label %.lr.ph259.1.i.preheader, label %vector.memcheck273

vector.memcheck273:                               ; preds = %iter.check302
  %scevgep274 = getelementptr i8, ptr %i.ads, i64 4
  %scevgep275 = getelementptr i8, ptr %scevgep274, i64 %i.um
  %scevgep276 = getelementptr i8, ptr %i.ads, i64 %i.ip
  %scevgep277 = getelementptr i8, ptr %scevgep276, i64 %i.um
  %bound0278 = icmp ult ptr %scevgep275, %scevgep184.a
  %bound1279 = icmp ult ptr %i.d, %scevgep277
  %found.conflict280 = and i1 %bound0278, %bound1279
  br i1 %found.conflict280, label %.lr.ph259.1.i.preheader, label %vector.main.loop.iter.check283

vector.main.loop.iter.check283:                   ; preds = %vector.memcheck273
  br i1 %min.iters.check284, label %vec.epilog.ph306, label %vector.body287

vector.body287:                                   ; preds = %vector.main.loop.iter.check283, %vector.body287
  %index288 = phi i64 [ %index.next297, %vector.body287 ], [ 0, %vector.main.loop.iter.check283 ] ; 2 uses
  %i.adu = or disjoint i64 %index288, 1           ; 2 uses
  %i.adv = getelementptr [4 x i8], ptr %i.d, i64 %i.adu ; 8 uses
  %i.adw = getelementptr i8, ptr %i.adv, i64 -4
  %i.adx = getelementptr i8, ptr %i.adv, i64 28
  %i.ady = getelementptr i8, ptr %i.adv, i64 60
  %i.adz = getelementptr i8, ptr %i.adv, i64 92
  %wide.load289 = load <8 x float>, ptr %i.adw, align 16, !tbaa !134, !alias.scope !335
  %wide.load290 = load <8 x float>, ptr %i.adx, align 16, !tbaa !134, !alias.scope !335
  %wide.load291 = load <8 x float>, ptr %i.ady, align 16, !tbaa !134, !alias.scope !335
  %wide.load292 = load <8 x float>, ptr %i.adz, align 16, !tbaa !134, !alias.scope !335
  %i.aea = getelementptr i8, ptr %i.adv, i64 32
  %i.aeb = getelementptr i8, ptr %i.adv, i64 64
  %i.aec = getelementptr i8, ptr %i.adv, i64 96
  %wide.load293 = load <8 x float>, ptr %i.adv, align 4, !tbaa !134, !alias.scope !335
  %wide.load294 = load <8 x float>, ptr %i.aea, align 4, !tbaa !134, !alias.scope !335
  %wide.load295 = load <8 x float>, ptr %i.aeb, align 4, !tbaa !134, !alias.scope !335
  %wide.load296 = load <8 x float>, ptr %i.aec, align 4, !tbaa !134, !alias.scope !335
  %i.aed = fsub <8 x float> %wide.load289, %wide.load293
  %i.aee = fsub <8 x float> %wide.load290, %wide.load294
  %i.aef = fsub <8 x float> %wide.load291, %wide.load295
  %i.aeg = fsub <8 x float> %wide.load292, %wide.load296
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %i.adu ; 4 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 32
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aeh, i64 64
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aeh, i64 96
  store <8 x float> %i.aed, ptr %i.aeh, align 4, !tbaa !134, !alias.scope !336, !noalias !335
  store <8 x float> %i.aee, ptr %i.aei, align 4, !tbaa !134, !alias.scope !336, !noalias !335
  store <8 x float> %i.aef, ptr %i.aej, align 4, !tbaa !134, !alias.scope !336, !noalias !335
  store <8 x float> %i.aeg, ptr %i.aek, align 4, !tbaa !134, !alias.scope !336, !noalias !335
  %index.next297 = add nuw i64 %index288, 32      ; 2 uses
  %i.ael = icmp eq i64 %index.next297, %n.vec286
  br i1 %i.ael, label %middle.block298, label %vector.body287, !llvm.loop !289

middle.block298:                                  ; preds = %vector.body287
  br i1 %cmp.n299, label %._crit_edge260.1.i, label %vec.epilog.iter.check304

vec.epilog.iter.check304:                         ; preds = %middle.block298
  br i1 %min.epilog.iters.check305, label %.lr.ph259.1.i.preheader, label %vec.epilog.ph306, !prof !192

vec.epilog.ph306:                                 ; preds = %vector.main.loop.iter.check283, %vec.epilog.iter.check304
  %vec.epilog.resume.val300 = phi i64 [ %n.vec286, %vec.epilog.iter.check304 ], [ 0, %vector.main.loop.iter.check283 ]
  br label %vec.epilog.vector.body308

vec.epilog.vector.body308:                        ; preds = %vec.epilog.vector.body308, %vec.epilog.ph306
  %index309 = phi i64 [ %vec.epilog.resume.val300, %vec.epilog.ph306 ], [ %index.next312, %vec.epilog.vector.body308 ] ; 2 uses
  %i.aem = or disjoint i64 %index309, 1           ; 2 uses
  %i.aen = getelementptr [4 x i8], ptr %i.d, i64 %i.aem ; 2 uses
  %i.aeo = getelementptr i8, ptr %i.aen, i64 -4
  %wide.load310 = load <8 x float>, ptr %i.aeo, align 16, !tbaa !134, !alias.scope !335
  %wide.load311 = load <8 x float>, ptr %i.aen, align 4, !tbaa !134, !alias.scope !335
  %i.aep = fsub <8 x float> %wide.load310, %wide.load311
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %i.aem
  store <8 x float> %i.aep, ptr %i.aeq, align 4, !tbaa !134, !alias.scope !336, !noalias !335
  %index.next312 = add nuw i64 %index309, 8       ; 2 uses
  %i.aer = icmp eq i64 %index.next312, %n.vec307
  br i1 %i.aer, label %vec.epilog.middle.block313, label %vec.epilog.vector.body308, !llvm.loop !290

vec.epilog.middle.block313:                       ; preds = %vec.epilog.vector.body308
  br i1 %cmp.n314, label %._crit_edge260.1.i, label %.lr.ph259.1.i.preheader

.lr.ph259.1.i.preheader:                          ; preds = %vector.memcheck273, %iter.check302, %vec.epilog.iter.check304, %vec.epilog.middle.block313
  %indvars.iv334.1.i.ph = phi i64 [ 1, %iter.check302 ], [ 1, %vector.memcheck273 ], [ %i.iy, %vec.epilog.iter.check304 ], [ %i.iz, %vec.epilog.middle.block313 ] ; 4 uses
  %i.aes = sub nsw i64 %i.ij, %indvars.iv334.1.i.ph
  %xtraiter524 = and i64 %i.aes, 7                ; 2 uses
  %lcmp.mod525.not = icmp eq i64 %xtraiter524, 0
  br i1 %lcmp.mod525.not, label %.lr.ph259.1.i.prol.loopexit, label %.lr.ph259.1.i.prol

.lr.ph259.1.i.prol:                               ; preds = %.lr.ph259.1.i.preheader, %.lr.ph259.1.i.prol
  %indvars.iv334.1.i.prol = phi i64 [ %indvars.iv.next335.1.i.prol, %.lr.ph259.1.i.prol ], [ %indvars.iv334.1.i.ph, %.lr.ph259.1.i.preheader ] ; 3 uses
  %prol.iter526 = phi i64 [ %prol.iter526.next, %.lr.ph259.1.i.prol ], [ 0, %.lr.ph259.1.i.preheader ]
  %i.aet = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv334.1.i.prol ; 2 uses
  %i.aeu = getelementptr i8, ptr %i.aet, i64 -4
  %i.aev = load float, ptr %i.aeu, align 4, !tbaa !134
  %i.aew = load float, ptr %i.aet, align 4, !tbaa !134
  %i.aex = fsub float %i.aev, %i.aew
  %gep441.i.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %indvars.iv334.1.i.prol
  store float %i.aex, ptr %gep441.i.prol, align 4, !tbaa !134
  %indvars.iv.next335.1.i.prol = add nuw nsw i64 %indvars.iv334.1.i.prol, 1 ; 2 uses
  %prol.iter526.next = add i64 %prol.iter526, 1   ; 2 uses
  %prol.iter526.cmp.not = icmp eq i64 %prol.iter526.next, %xtraiter524
  br i1 %prol.iter526.cmp.not, label %.lr.ph259.1.i.prol.loopexit, label %.lr.ph259.1.i.prol, !llvm.loop !291

.lr.ph259.1.i.prol.loopexit:                      ; preds = %.lr.ph259.1.i.prol, %.lr.ph259.1.i.preheader
  %indvars.iv334.1.i.unr = phi i64 [ %indvars.iv334.1.i.ph, %.lr.ph259.1.i.preheader ], [ %indvars.iv.next335.1.i.prol, %.lr.ph259.1.i.prol ]
  %i.aey = sub nsw i64 %indvars.iv334.1.i.ph, %i.ij
  %i.aez = icmp ugt i64 %i.aey, -8
  br i1 %i.aez, label %._crit_edge260.1.i, label %.lr.ph259.1.i

.lr.ph259.1.i:                                    ; preds = %.lr.ph259.1.i.prol.loopexit, %.lr.ph259.1.i
  %indvars.iv334.1.i = phi i64 [ %indvars.iv.next335.1.i.7, %.lr.ph259.1.i ], [ %indvars.iv334.1.i.unr, %.lr.ph259.1.i.prol.loopexit ] ; 10 uses
  %i.afa = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv334.1.i ; 2 uses
  %i.afb = getelementptr i8, ptr %i.afa, i64 -4
  %i.afc = load float, ptr %i.afb, align 4, !tbaa !134
  %i.afd = load float, ptr %i.afa, align 4, !tbaa !134
  %i.afe = fsub float %i.afc, %i.afd
  %gep441.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %indvars.iv334.1.i
  store float %i.afe, ptr %gep441.i, align 4, !tbaa !134
  %indvars.iv.next335.1.i = add nuw nsw i64 %indvars.iv334.1.i, 1 ; 2 uses
  %i.aff = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.1.i ; 2 uses
  %i.afg = getelementptr i8, ptr %i.aff, i64 -4
  %i.afh = load float, ptr %i.afg, align 4, !tbaa !134
  %i.afi = load float, ptr %i.aff, align 4, !tbaa !134
  %i.afj = fsub float %i.afh, %i.afi
  %gep441.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %indvars.iv.next335.1.i
  store float %i.afj, ptr %gep441.i.1, align 4, !tbaa !134
  %indvars.iv.next335.1.i.1 = add nuw nsw i64 %indvars.iv334.1.i, 2 ; 2 uses
  %i.afk = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.1.i.1 ; 2 uses
  %i.afl = getelementptr i8, ptr %i.afk, i64 -4
  %i.afm = load float, ptr %i.afl, align 4, !tbaa !134
  %i.afn = load float, ptr %i.afk, align 4, !tbaa !134
  %i.afo = fsub float %i.afm, %i.afn
  %gep441.i.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %indvars.iv.next335.1.i.1
  store float %i.afo, ptr %gep441.i.2, align 4, !tbaa !134
  %indvars.iv.next335.1.i.2 = add nuw nsw i64 %indvars.iv334.1.i, 3 ; 2 uses
  %i.afp = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.1.i.2 ; 2 uses
  %i.afq = getelementptr i8, ptr %i.afp, i64 -4
  %i.afr = load float, ptr %i.afq, align 4, !tbaa !134
  %i.afs = load float, ptr %i.afp, align 4, !tbaa !134
  %i.aft = fsub float %i.afr, %i.afs
  %gep441.i.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %indvars.iv.next335.1.i.2
  store float %i.aft, ptr %gep441.i.3, align 4, !tbaa !134
  %indvars.iv.next335.1.i.3 = add nuw nsw i64 %indvars.iv334.1.i, 4 ; 2 uses
  %i.afu = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.1.i.3 ; 2 uses
  %i.afv = getelementptr i8, ptr %i.afu, i64 -4
  %i.afw = load float, ptr %i.afv, align 4, !tbaa !134
  %i.afx = load float, ptr %i.afu, align 4, !tbaa !134
  %i.afy = fsub float %i.afw, %i.afx
  %gep441.i.4 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %indvars.iv.next335.1.i.3
  store float %i.afy, ptr %gep441.i.4, align 4, !tbaa !134
  %indvars.iv.next335.1.i.4 = add nuw nsw i64 %indvars.iv334.1.i, 5 ; 2 uses
  %i.afz = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.1.i.4 ; 2 uses
  %i.aga = getelementptr i8, ptr %i.afz, i64 -4
  %i.agb = load float, ptr %i.aga, align 4, !tbaa !134
  %i.agc = load float, ptr %i.afz, align 4, !tbaa !134
  %i.agd = fsub float %i.agb, %i.agc
  %gep441.i.5 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %indvars.iv.next335.1.i.4
  store float %i.agd, ptr %gep441.i.5, align 4, !tbaa !134
  %indvars.iv.next335.1.i.5 = add nuw nsw i64 %indvars.iv334.1.i, 6 ; 2 uses
  %i.age = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.1.i.5 ; 2 uses
  %i.agf = getelementptr i8, ptr %i.age, i64 -4
  %i.agg = load float, ptr %i.agf, align 4, !tbaa !134
  %i.agh = load float, ptr %i.age, align 4, !tbaa !134
  %i.agi = fsub float %i.agg, %i.agh
  %gep441.i.6 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %indvars.iv.next335.1.i.5
  store float %i.agi, ptr %gep441.i.6, align 4, !tbaa !134
  %indvars.iv.next335.1.i.6 = add nuw nsw i64 %indvars.iv334.1.i, 7 ; 2 uses
  %i.agj = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.1.i.6 ; 2 uses
  %i.agk = getelementptr i8, ptr %i.agj, i64 -4
  %i.agl = load float, ptr %i.agk, align 4, !tbaa !134
  %i.agm = load float, ptr %i.agj, align 4, !tbaa !134
  %i.agn = fsub float %i.agl, %i.agm
  %gep441.i.7 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep440.i, i64 %indvars.iv.next335.1.i.6
  store float %i.agn, ptr %gep441.i.7, align 4, !tbaa !134
  %indvars.iv.next335.1.i.7 = add nuw nsw i64 %indvars.iv334.1.i, 8 ; 2 uses
  %exitcond338.1.not.i.7 = icmp eq i64 %indvars.iv.next335.1.i.7, %i.ij
  br i1 %exitcond338.1.not.i.7, label %._crit_edge260.1.i, label %.lr.ph259.1.i, !llvm.loop !292

._crit_edge260.1.i:                               ; preds = %.lr.ph259.1.i.prol.loopexit, %.lr.ph259.1.i, %vec.epilog.middle.block313, %middle.block298
  %i.ago = fmul float %i.abu, %i.hv
  %i.agp = load float, ptr %i.hy, align 4, !tbaa !134
  %i.agq = fmul float %i.ago, %i.agp
  store float %i.agq, ptr %i.hq, align 4, !tbaa !134
  br i1 %i.hz, label %.lr.ph263.1.i.preheader, label %._crit_edge264.1.thread.i

.lr.ph263.1.i.preheader:                          ; preds = %._crit_edge260.1.i
  br i1 %min.iters.check249, label %.lr.ph263.1.i.preheader507, label %vector.ph250

vector.ph250:                                     ; preds = %.lr.ph263.1.i.preheader
  %broadcast.splatinsert252 = insertelement <8 x float> poison, float %i.abu, i64 0
  %broadcast.splat253 = shufflevector <8 x float> %broadcast.splatinsert252, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body258

vector.body258:                                   ; preds = %vector.body258, %vector.ph250
  %index259 = phi i64 [ 0, %vector.ph250 ], [ %index.next267, %vector.body258 ]
  %vec.ind260 = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph250 ], [ %vec.ind.next268, %vector.body258 ] ; 2 uses
  %vec.ind261 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph250 ], [ %vec.ind.next269, %vector.body258 ] ; 2 uses
  %i.agr = uitofp nneg <8 x i32> %vec.ind261 to <8 x float>
  %i.ags = fadd <8 x float> %broadcast.splat253, %i.agr
  %i.agt = sub nuw nsw <8 x i64> %broadcast.splat255, %vec.ind260 ; 2 uses
  %i.agu = extractelement <8 x i64> %i.agt, i64 0
  %i.agv = getelementptr [4 x i8], ptr %i.d, i64 %i.agu ; 2 uses
  %i.agw = getelementptr i8, ptr %i.agv, i64 -36
  %wide.load262 = load <8 x float>, ptr %i.agw, align 4, !tbaa !134
  %reverse263 = shufflevector <8 x float> %wide.load262, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.agx = trunc nuw nsw <8 x i64> %i.agt to <8 x i32>
  %i.agy = uitofp nneg <8 x i32> %i.agx to <8 x float>
  %i.agz = fsub <8 x float> %i.agy, %broadcast.splat253
  %i.aha = getelementptr i8, ptr %i.agv, i64 -32  ; 2 uses
  %wide.load264 = load <8 x float>, ptr %i.aha, align 4, !tbaa !134
  %reverse265 = shufflevector <8 x float> %wide.load264, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ahb = fmul <8 x float> %reverse265, %i.agz
  %i.ahc = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ags, <8 x float> %reverse263, <8 x float> %i.ahb)
  %i.ahd = shufflevector <8 x float> %i.ahc, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse266 = fmul <8 x float> %i.ahd, %i.jc
  store <8 x float> %reverse266, ptr %i.aha, align 4, !tbaa !134
  %index.next267 = add nuw i64 %index259, 8       ; 2 uses
  %vec.ind.next268 = add nuw nsw <8 x i64> %vec.ind260, splat (i64 8)
  %vec.ind.next269 = add <8 x i32> %vec.ind261, splat (i32 8)
  %i.ahe = icmp eq i64 %index.next267, %n.vec251
  br i1 %i.ahe, label %middle.block270, label %vector.body258, !llvm.loop !293

middle.block270:                                  ; preds = %vector.body258
  br i1 %cmp.n271, label %._crit_edge264.1.thread.i, label %.lr.ph263.1.i.preheader507

.lr.ph263.1.i.preheader507:                       ; preds = %.lr.ph263.1.i.preheader, %middle.block270
  %indvars.iv339.1.i.ph = phi i64 [ 1, %.lr.ph263.1.i.preheader ], [ %i.jb, %middle.block270 ]
  br label %.lr.ph263.1.i

.lr.ph263.1.i:                                    ; preds = %.lr.ph263.1.i.preheader507, %.lr.ph263.1.i
  %indvars.iv339.1.i = phi i64 [ %indvars.iv.next340.1.i, %.lr.ph263.1.i ], [ %indvars.iv339.1.i.ph, %.lr.ph263.1.i.preheader507 ] ; 3 uses
  %i.ahf = trunc nuw nsw i64 %indvars.iv339.1.i to i32
  %i.ahg = uitofp nneg i32 %i.ahf to float
  %i.ahh = fadd float %i.abu, %i.ahg
  %i.ahi = sub nuw nsw i64 %i.ij, %indvars.iv339.1.i ; 2 uses
  %i.ahj = getelementptr [4 x i8], ptr %i.d, i64 %i.ahi ; 2 uses
  %i.ahk = getelementptr i8, ptr %i.ahj, i64 -8
  %i.ahl = load float, ptr %i.ahk, align 4, !tbaa !134
  %i.ahm = trunc nuw nsw i64 %i.ahi to i32
  %i.ahn = uitofp nneg i32 %i.ahm to float
  %i.aho = fsub float %i.ahn, %i.abu
  %i.ahp = getelementptr i8, ptr %i.ahj, i64 -4   ; 2 uses
  %i.ahq = load float, ptr %i.ahp, align 4, !tbaa !134
  %i.ahr = fmul float %i.ahq, %i.aho
  %i.ahs = call float @llvm.fmuladd.f32(float %i.ahh, float %i.ahl, float %i.ahr)
  %i.aht = fmul float %i.ahs, %i.hv
  store float %i.aht, ptr %i.ahp, align 4, !tbaa !134
  %indvars.iv.next340.1.i = add nuw nsw i64 %indvars.iv339.1.i, 1 ; 2 uses
  %exitcond343.1.not.i = icmp eq i64 %indvars.iv.next340.1.i, %wide.trip.count342.i
  br i1 %exitcond343.1.not.i, label %._crit_edge264.1.thread.i, label %.lr.ph263.1.i, !llvm.loop !294

._crit_edge264.1.thread.i:                        ; preds = %.lr.ph263.1.i, %middle.block270, %._crit_edge260.1.i
  %i.ahu = fmul float %i.abv, %i.hv
  %i.ahv = load float, ptr %i.d, align 16, !tbaa !134
  %i.ahw = fmul float %i.ahu, %i.ahv
  store float %i.ahw, ptr %i.d, align 16, !tbaa !134
  br label %._crit_edge268.1.i

._crit_edge264.1.i:                               ; preds = %._crit_edge256.1.i, %._crit_edge256.1.thread.i
  %.ph.i = phi float [ %i.abu, %._crit_edge256.1.i ], [ %i.aay, %._crit_edge256.1.thread.i ]
  %.ph433.i = phi float [ %i.abv, %._crit_edge256.1.i ], [ %i.aaz, %._crit_edge256.1.thread.i ]
  %i.ahx = fmul float %.ph.i, %i.hv
  %i.ahy = load float, ptr %i.hy, align 4, !tbaa !134
  %i.ahz = fmul float %i.ahx, %i.ahy
  store float %i.ahz, ptr %i.hq, align 4, !tbaa !134
  %i.aia = fmul float %.ph433.i, %i.hv
  %i.aib = load float, ptr %i.d, align 16, !tbaa !134
  %i.aic = fmul float %i.aia, %i.aib
  store float %i.aic, ptr %i.d, align 16, !tbaa !134
  br i1 %i.ia, label %._crit_edge268.1.i, label %._crit_edge256.2.thread.i

._crit_edge256.2.thread.i:                        ; preds = %._crit_edge264.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  %i.aid = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.aie = load float, ptr %i.aid, align 4, !tbaa !134 ; 3 uses
  store float 0.000000e+00, ptr %i.hq, align 4, !tbaa !134
  store float %i.aie, ptr %i.p, align 4, !tbaa !134
  %i.aif = fsub float 1.000000e+00, %i.aie        ; 3 uses
  store float %i.aif, ptr %i.d, align 16, !tbaa !134
  %i.aig = fneg float %i.aif
  %i.aih = load ptr, ptr %i.im, align 8, !tbaa !332
  %i.aii = getelementptr inbounds [4 x i8], ptr %i.aih, i64 %i.vb
  store float %i.aig, ptr %i.aii, align 4, !tbaa !134
  br label %._crit_edge264.2.i

._crit_edge268.1.i:                               ; preds = %._crit_edge264.1.i, %._crit_edge264.1.thread.i
  %i.aij = load ptr, ptr %i.in, align 8, !tbaa !332
  %scevgep344.1.i = getelementptr nuw i8, ptr %i.aij, i64 %i.uu
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep344.1.i, ptr nonnull align 16 %i.d, i64 %i.ik, i1 false), !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  %i.aik = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.ail = load float, ptr %i.aik, align 4, !tbaa !134 ; 11 uses
  store float 0.000000e+00, ptr %i.hq, align 4, !tbaa !134
  store float %i.ail, ptr %i.p, align 4, !tbaa !134
  %i.aim = fsub float 1.000000e+00, %i.ail        ; 5 uses
  store float %i.aim, ptr %i.d, align 16, !tbaa !134
  br i1 %i.hr, label %.lr.ph251.preheader.2.i.preheader, label %._crit_edge256.2.i

.lr.ph251.preheader.2.i.preheader:                ; preds = %._crit_edge268.1.i
  %broadcast.splatinsert231 = insertelement <8 x float> poison, float %i.ail, i64 0
  %broadcast.splat232 = shufflevector <8 x float> %broadcast.splatinsert231, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph251.preheader.2.i

.lr.ph251.preheader.2.i:                          ; preds = %.lr.ph251.preheader.2.i.preheader, %._crit_edge252.2.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge252.2.i ], [ 0, %.lr.ph251.preheader.2.i.preheader ] ; 2 uses
  %indvars.iv327.2.i = phi i64 [ %indvars.iv.next328.2.i, %._crit_edge252.2.i ], [ 3, %.lr.ph251.preheader.2.i.preheader ] ; 5 uses
  %indvars.iv325.2.i = phi i64 [ %indvars.iv.next326.2.i, %._crit_edge252.2.i ], [ 2, %.lr.ph251.preheader.2.i.preheader ] ; 2 uses
  %i.ain = add i64 %indvar, 1                     ; 3 uses
  %i.aio = add nsw i64 %indvars.iv327.2.i, -1     ; 2 uses
  %i.aip = trunc nuw nsw i64 %i.aio to i32
  %i.aiq = sitofp i32 %i.aip to double
  %i.air = fdiv double 1.000000e+00, %i.aiq
  %i.ais = fptrunc double %i.air to float         ; 4 uses
  %i.ait = fmul float %i.ail, %i.ais
  %i.aiu = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv327.2.i
  %i.aiv = getelementptr i8, ptr %i.aiu, i64 -8
  %i.aiw = load float, ptr %i.aiv, align 4, !tbaa !134
  %i.aix = fmul float %i.aiw, %i.ait
  %i.aiy = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.aio
  store float %i.aix, ptr %i.aiy, align 4, !tbaa !134
  %min.iters.check224 = icmp ult i64 %i.ain, 8
  br i1 %min.iters.check224, label %.lr.ph251.2.i.preheader, label %vector.ph225

vector.ph225:                                     ; preds = %.lr.ph251.preheader.2.i
  %n.vec226 = and i64 %i.ain, -8                  ; 3 uses
  %i.aiz = or disjoint i64 %n.vec226, 1
  %broadcast.splatinsert227 = insertelement <8 x i64> poison, i64 %indvars.iv327.2.i, i64 0
  %broadcast.splat228 = shufflevector <8 x i64> %broadcast.splatinsert227, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert229 = insertelement <8 x float> poison, float %i.ais, i64 0
  %i.aja = shufflevector <8 x float> %broadcast.splatinsert229, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph225
  %index234 = phi i64 [ 0, %vector.ph225 ], [ %index.next242, %vector.body233 ]
  %vec.ind235 = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph225 ], [ %vec.ind.next243, %vector.body233 ] ; 2 uses
  %vec.ind236 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph225 ], [ %vec.ind.next244, %vector.body233 ] ; 2 uses
  %i.ajb = uitofp nneg <8 x i32> %vec.ind236 to <8 x float>
  %i.ajc = fadd <8 x float> %broadcast.splat232, %i.ajb
  %i.ajd = sub nuw nsw <8 x i64> %broadcast.splat228, %vec.ind235 ; 2 uses
  %i.aje = extractelement <8 x i64> %i.ajd, i64 0
  %i.ajf = getelementptr [4 x i8], ptr %i.d, i64 %i.aje ; 2 uses
  %i.ajg = getelementptr i8, ptr %i.ajf, i64 -36
  %wide.load237 = load <8 x float>, ptr %i.ajg, align 4, !tbaa !134
  %reverse238 = shufflevector <8 x float> %wide.load237, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ajh = trunc nuw <8 x i64> %i.ajd to <8 x i32>
  %i.aji = uitofp nneg <8 x i32> %i.ajh to <8 x float>
  %i.ajj = fsub <8 x float> %i.aji, %broadcast.splat232
  %i.ajk = getelementptr i8, ptr %i.ajf, i64 -32  ; 2 uses
  %wide.load239 = load <8 x float>, ptr %i.ajk, align 4, !tbaa !134
  %reverse240 = shufflevector <8 x float> %wide.load239, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ajl = fmul <8 x float> %reverse240, %i.ajj
  %i.ajm = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ajc, <8 x float> %reverse238, <8 x float> %i.ajl)
  %i.ajn = shufflevector <8 x float> %i.ajm, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse241 = fmul <8 x float> %i.ajn, %i.aja
  store <8 x float> %reverse241, ptr %i.ajk, align 4, !tbaa !134
  %index.next242 = add nuw i64 %index234, 8       ; 2 uses
  %vec.ind.next243 = add nuw nsw <8 x i64> %vec.ind235, splat (i64 8)
  %vec.ind.next244 = add <8 x i32> %vec.ind236, splat (i32 8)
  %i.ajo = icmp eq i64 %index.next242, %n.vec226
  br i1 %i.ajo, label %middle.block245, label %vector.body233, !llvm.loop !295

middle.block245:                                  ; preds = %vector.body233
  %cmp.n246 = icmp eq i64 %i.ain, %n.vec226
  br i1 %cmp.n246, label %._crit_edge252.2.i, label %.lr.ph251.2.i.preheader

.lr.ph251.2.i.preheader:                          ; preds = %.lr.ph251.preheader.2.i, %middle.block245
  %indvars.iv318.2.i.ph = phi i64 [ 1, %.lr.ph251.preheader.2.i ], [ %i.aiz, %middle.block245 ]
  br label %.lr.ph251.2.i

.lr.ph251.2.i:                                    ; preds = %.lr.ph251.2.i.preheader, %.lr.ph251.2.i
  %indvars.iv318.2.i = phi i64 [ %indvars.iv.next319.2.i, %.lr.ph251.2.i ], [ %indvars.iv318.2.i.ph, %.lr.ph251.2.i.preheader ] ; 3 uses
  %i.ajp = trunc nuw nsw i64 %indvars.iv318.2.i to i32
  %i.ajq = uitofp nneg i32 %i.ajp to float
  %i.ajr = fadd float %i.ail, %i.ajq
  %i.ajs = sub nuw nsw i64 %indvars.iv327.2.i, %indvars.iv318.2.i ; 2 uses
  %i.ajt = getelementptr [4 x i8], ptr %i.d, i64 %i.ajs ; 2 uses
  %i.aju = getelementptr i8, ptr %i.ajt, i64 -8
  %i.ajv = load float, ptr %i.aju, align 4, !tbaa !134
  %i.ajw = trunc nuw i64 %i.ajs to i32
  %i.ajx = uitofp nneg i32 %i.ajw to float
  %i.ajy = fsub float %i.ajx, %i.ail
  %i.ajz = getelementptr i8, ptr %i.ajt, i64 -4   ; 2 uses
  %i.aka = load float, ptr %i.ajz, align 4, !tbaa !134
  %i.akb = fmul float %i.aka, %i.ajy
  %i.akc = call float @llvm.fmuladd.f32(float %i.ajr, float %i.ajv, float %i.akb)
  %i.akd = fmul float %i.akc, %i.ais
  store float %i.akd, ptr %i.ajz, align 4, !tbaa !134
  %indvars.iv.next319.2.i = add nuw nsw i64 %indvars.iv318.2.i, 1 ; 2 uses
  %exitcond324.2.not.i = icmp eq i64 %indvars.iv.next319.2.i, %indvars.iv325.2.i
  br i1 %exitcond324.2.not.i, label %._crit_edge252.2.i, label %.lr.ph251.2.i, !llvm.loop !296

._crit_edge252.2.i:                               ; preds = %.lr.ph251.2.i, %middle.block245
  %i.ake = fmul float %i.aim, %i.ais
  %i.akf = load float, ptr %i.d, align 16, !tbaa !134
  %i.akg = fmul float %i.ake, %i.akf              ; 2 uses
  store float %i.akg, ptr %i.d, align 16, !tbaa !134
  %indvars.iv.next328.2.i = add nuw nsw i64 %indvars.iv327.2.i, 1 ; 2 uses
  %indvars.iv.next326.2.i = add nuw nsw i64 %indvars.iv325.2.i, 1
  %exitcond333.2.not.i = icmp eq i64 %indvars.iv.next328.2.i, %i.ij
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond333.2.not.i, label %._crit_edge256.2.i, label %.lr.ph251.preheader.2.i, !llvm.loop !279

._crit_edge256.2.i:                               ; preds = %._crit_edge252.2.i, %._crit_edge268.1.i
  %i.akh = phi float [ %i.aim, %._crit_edge268.1.i ], [ %i.akg, %._crit_edge252.2.i ]
  %i.aki = fneg float %i.akh
  %i.akj = load ptr, ptr %i.im, align 8, !tbaa !332 ; 4 uses
  %i.akk = getelementptr inbounds [4 x i8], ptr %i.akj, i64 %i.vb
  store float %i.aki, ptr %i.akk, align 4, !tbaa !134
  br i1 %i.hs, label %iter.check209, label %._crit_edge264.2.i

iter.check209:                                    ; preds = %._crit_edge256.2.i
  %invariant.gep442.i = getelementptr inbounds nuw [4 x i8], ptr %i.akj, i64 %i.vc ; 11 uses
  br i1 %min.iters.check189, label %.lr.ph259.2.i.preheader, label %vector.memcheck179

vector.memcheck179:                               ; preds = %iter.check209
  %scevgep180 = getelementptr i8, ptr %i.akj, i64 4
  %scevgep181 = getelementptr i8, ptr %scevgep180, i64 %i.uq
  %scevgep182 = getelementptr i8, ptr %i.akj, i64 %i.ip
  %scevgep183 = getelementptr i8, ptr %scevgep182, i64 %i.uq
  %bound0185 = icmp ult ptr %scevgep181, %scevgep184.a
  %bound1186 = icmp ult ptr %i.d, %scevgep183
  %found.conflict187 = and i1 %bound0185, %bound1186
  br i1 %found.conflict187, label %.lr.ph259.2.i.preheader, label %vector.main.loop.iter.check190

vector.main.loop.iter.check190:                   ; preds = %vector.memcheck179
  br i1 %min.iters.check191, label %vec.epilog.ph213, label %vector.body194

vector.body194:                                   ; preds = %vector.main.loop.iter.check190, %vector.body194
  %index195 = phi i64 [ %index.next204, %vector.body194 ], [ 0, %vector.main.loop.iter.check190 ] ; 2 uses
  %i.akl = or disjoint i64 %index195, 1           ; 2 uses
  %i.akm = getelementptr [4 x i8], ptr %i.d, i64 %i.akl ; 8 uses
  %i.akn = getelementptr i8, ptr %i.akm, i64 -4
  %i.ako = getelementptr i8, ptr %i.akm, i64 28
end_hunk_1
begin_hunk_2_@_Z14spread_on_gridPK9gmx_pme_tP11PmeAtomCommP14PmeAndFftGridsbbb.omp_outlined.1:bb.a
  %wide.load200 = load <8 x float>, ptr %i.akm, align 4, !tbaa !134, !alias.scope !337
  %wide.load201 = load <8 x float>, ptr %i.akr, align 4, !tbaa !134, !alias.scope !337
  %wide.load202 = load <8 x float>, ptr %i.aks, align 4, !tbaa !134, !alias.scope !337
  %wide.load203 = load <8 x float>, ptr %i.akt, align 4, !tbaa !134, !alias.scope !337
  %i.aku = fsub <8 x float> %wide.load196, %wide.load200
  %i.akv = fsub <8 x float> %wide.load197, %wide.load201
  %i.akw = fsub <8 x float> %wide.load198, %wide.load202
  %i.akx = fsub <8 x float> %wide.load199, %wide.load203
  %i.aky = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %i.akl ; 4 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.aky, i64 32
  %i.ala = getelementptr inbounds nuw i8, ptr %i.aky, i64 64
  %i.alb = getelementptr inbounds nuw i8, ptr %i.aky, i64 96
  store <8 x float> %i.aku, ptr %i.aky, align 4, !tbaa !134, !alias.scope !338, !noalias !337
  store <8 x float> %i.akv, ptr %i.akz, align 4, !tbaa !134, !alias.scope !338, !noalias !337
  store <8 x float> %i.akw, ptr %i.ala, align 4, !tbaa !134, !alias.scope !338, !noalias !337
  store <8 x float> %i.akx, ptr %i.alb, align 4, !tbaa !134, !alias.scope !338, !noalias !337
  %index.next204 = add nuw i64 %index195, 32      ; 2 uses
  %i.alc = icmp eq i64 %index.next204, %n.vec193
  br i1 %i.alc, label %middle.block205, label %vector.body194, !llvm.loop !300

middle.block205:                                  ; preds = %vector.body194
  br i1 %cmp.n206, label %._crit_edge260.2.i, label %vec.epilog.iter.check211

vec.epilog.iter.check211:                         ; preds = %middle.block205
  br i1 %min.epilog.iters.check212, label %.lr.ph259.2.i.preheader, label %vec.epilog.ph213, !prof !192

vec.epilog.ph213:                                 ; preds = %vector.main.loop.iter.check190, %vec.epilog.iter.check211
  %vec.epilog.resume.val207 = phi i64 [ %n.vec193, %vec.epilog.iter.check211 ], [ 0, %vector.main.loop.iter.check190 ]
  br label %vec.epilog.vector.body215

vec.epilog.vector.body215:                        ; preds = %vec.epilog.vector.body215, %vec.epilog.ph213
  %index216 = phi i64 [ %vec.epilog.resume.val207, %vec.epilog.ph213 ], [ %index.next219, %vec.epilog.vector.body215 ] ; 2 uses
  %i.ald = or disjoint i64 %index216, 1           ; 2 uses
  %i.ale = getelementptr [4 x i8], ptr %i.d, i64 %i.ald ; 2 uses
  %i.alf = getelementptr i8, ptr %i.ale, i64 -4
  %wide.load217 = load <8 x float>, ptr %i.alf, align 16, !tbaa !134, !alias.scope !337
  %wide.load218 = load <8 x float>, ptr %i.ale, align 4, !tbaa !134, !alias.scope !337
  %i.alg = fsub <8 x float> %wide.load217, %wide.load218
  %i.alh = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %i.ald
  store <8 x float> %i.alg, ptr %i.alh, align 4, !tbaa !134, !alias.scope !338, !noalias !337
  %index.next219 = add nuw i64 %index216, 8       ; 2 uses
  %i.ali = icmp eq i64 %index.next219, %n.vec214
  br i1 %i.ali, label %vec.epilog.middle.block220, label %vec.epilog.vector.body215, !llvm.loop !301

vec.epilog.middle.block220:                       ; preds = %vec.epilog.vector.body215
  br i1 %cmp.n221, label %._crit_edge260.2.i, label %.lr.ph259.2.i.preheader

.lr.ph259.2.i.preheader:                          ; preds = %vector.memcheck179, %iter.check209, %vec.epilog.iter.check211, %vec.epilog.middle.block220
  %indvars.iv334.2.i.ph = phi i64 [ 1, %iter.check209 ], [ 1, %vector.memcheck179 ], [ %i.je, %vec.epilog.iter.check211 ], [ %i.jf, %vec.epilog.middle.block220 ] ; 4 uses
  %i.alj = sub nsw i64 %i.ij, %indvars.iv334.2.i.ph
  %xtraiter527 = and i64 %i.alj, 7                ; 2 uses
  %lcmp.mod528.not = icmp eq i64 %xtraiter527, 0
  br i1 %lcmp.mod528.not, label %.lr.ph259.2.i.prol.loopexit, label %.lr.ph259.2.i.prol

.lr.ph259.2.i.prol:                               ; preds = %.lr.ph259.2.i.preheader, %.lr.ph259.2.i.prol
  %indvars.iv334.2.i.prol = phi i64 [ %indvars.iv.next335.2.i.prol, %.lr.ph259.2.i.prol ], [ %indvars.iv334.2.i.ph, %.lr.ph259.2.i.preheader ] ; 3 uses
  %prol.iter529 = phi i64 [ %prol.iter529.next, %.lr.ph259.2.i.prol ], [ 0, %.lr.ph259.2.i.preheader ]
  %i.alk = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv334.2.i.prol ; 2 uses
  %i.all = getelementptr i8, ptr %i.alk, i64 -4
  %i.alm = load float, ptr %i.all, align 4, !tbaa !134
  %i.aln = load float, ptr %i.alk, align 4, !tbaa !134
  %i.alo = fsub float %i.alm, %i.aln
  %gep443.i.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %indvars.iv334.2.i.prol
  store float %i.alo, ptr %gep443.i.prol, align 4, !tbaa !134
  %indvars.iv.next335.2.i.prol = add nuw nsw i64 %indvars.iv334.2.i.prol, 1 ; 2 uses
  %prol.iter529.next = add i64 %prol.iter529, 1   ; 2 uses
  %prol.iter529.cmp.not = icmp eq i64 %prol.iter529.next, %xtraiter527
  br i1 %prol.iter529.cmp.not, label %.lr.ph259.2.i.prol.loopexit, label %.lr.ph259.2.i.prol, !llvm.loop !302

.lr.ph259.2.i.prol.loopexit:                      ; preds = %.lr.ph259.2.i.prol, %.lr.ph259.2.i.preheader
  %indvars.iv334.2.i.unr = phi i64 [ %indvars.iv334.2.i.ph, %.lr.ph259.2.i.preheader ], [ %indvars.iv.next335.2.i.prol, %.lr.ph259.2.i.prol ]
  %i.alp = sub nsw i64 %indvars.iv334.2.i.ph, %i.ij
  %i.alq = icmp ugt i64 %i.alp, -8
  br i1 %i.alq, label %._crit_edge260.2.i, label %.lr.ph259.2.i

.lr.ph259.2.i:                                    ; preds = %.lr.ph259.2.i.prol.loopexit, %.lr.ph259.2.i
  %indvars.iv334.2.i = phi i64 [ %indvars.iv.next335.2.i.7, %.lr.ph259.2.i ], [ %indvars.iv334.2.i.unr, %.lr.ph259.2.i.prol.loopexit ] ; 10 uses
  %i.alr = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv334.2.i ; 2 uses
  %i.als = getelementptr i8, ptr %i.alr, i64 -4
  %i.alt = load float, ptr %i.als, align 4, !tbaa !134
  %i.alu = load float, ptr %i.alr, align 4, !tbaa !134
  %i.alv = fsub float %i.alt, %i.alu
  %gep443.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %indvars.iv334.2.i
  store float %i.alv, ptr %gep443.i, align 4, !tbaa !134
  %indvars.iv.next335.2.i = add nuw nsw i64 %indvars.iv334.2.i, 1 ; 2 uses
  %i.alw = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.2.i ; 2 uses
  %i.alx = getelementptr i8, ptr %i.alw, i64 -4
  %i.aly = load float, ptr %i.alx, align 4, !tbaa !134
  %i.alz = load float, ptr %i.alw, align 4, !tbaa !134
  %i.ama = fsub float %i.aly, %i.alz
  %gep443.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %indvars.iv.next335.2.i
  store float %i.ama, ptr %gep443.i.1, align 4, !tbaa !134
  %indvars.iv.next335.2.i.1 = add nuw nsw i64 %indvars.iv334.2.i, 2 ; 2 uses
  %i.amb = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.2.i.1 ; 2 uses
  %i.amc = getelementptr i8, ptr %i.amb, i64 -4
  %i.amd = load float, ptr %i.amc, align 4, !tbaa !134
  %i.ame = load float, ptr %i.amb, align 4, !tbaa !134
  %i.amf = fsub float %i.amd, %i.ame
  %gep443.i.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %indvars.iv.next335.2.i.1
  store float %i.amf, ptr %gep443.i.2, align 4, !tbaa !134
  %indvars.iv.next335.2.i.2 = add nuw nsw i64 %indvars.iv334.2.i, 3 ; 2 uses
  %i.amg = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.2.i.2 ; 2 uses
  %i.amh = getelementptr i8, ptr %i.amg, i64 -4
  %i.ami = load float, ptr %i.amh, align 4, !tbaa !134
  %i.amj = load float, ptr %i.amg, align 4, !tbaa !134
  %i.amk = fsub float %i.ami, %i.amj
  %gep443.i.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %indvars.iv.next335.2.i.2
  store float %i.amk, ptr %gep443.i.3, align 4, !tbaa !134
  %indvars.iv.next335.2.i.3 = add nuw nsw i64 %indvars.iv334.2.i, 4 ; 2 uses
  %i.aml = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.2.i.3 ; 2 uses
  %i.amm = getelementptr i8, ptr %i.aml, i64 -4
  %i.amn = load float, ptr %i.amm, align 4, !tbaa !134
  %i.amo = load float, ptr %i.aml, align 4, !tbaa !134
  %i.amp = fsub float %i.amn, %i.amo
  %gep443.i.4 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %indvars.iv.next335.2.i.3
  store float %i.amp, ptr %gep443.i.4, align 4, !tbaa !134
  %indvars.iv.next335.2.i.4 = add nuw nsw i64 %indvars.iv334.2.i, 5 ; 2 uses
  %i.amq = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.2.i.4 ; 2 uses
  %i.amr = getelementptr i8, ptr %i.amq, i64 -4
  %i.ams = load float, ptr %i.amr, align 4, !tbaa !134
  %i.amt = load float, ptr %i.amq, align 4, !tbaa !134
  %i.amu = fsub float %i.ams, %i.amt
  %gep443.i.5 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %indvars.iv.next335.2.i.4
  store float %i.amu, ptr %gep443.i.5, align 4, !tbaa !134
  %indvars.iv.next335.2.i.5 = add nuw nsw i64 %indvars.iv334.2.i, 6 ; 2 uses
  %i.amv = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.2.i.5 ; 2 uses
  %i.amw = getelementptr i8, ptr %i.amv, i64 -4
  %i.amx = load float, ptr %i.amw, align 4, !tbaa !134
  %i.amy = load float, ptr %i.amv, align 4, !tbaa !134
  %i.amz = fsub float %i.amx, %i.amy
  %gep443.i.6 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %indvars.iv.next335.2.i.5
  store float %i.amz, ptr %gep443.i.6, align 4, !tbaa !134
  %indvars.iv.next335.2.i.6 = add nuw nsw i64 %indvars.iv334.2.i, 7 ; 2 uses
  %i.ana = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.2.i.6 ; 2 uses
  %i.anb = getelementptr i8, ptr %i.ana, i64 -4
  %i.anc = load float, ptr %i.anb, align 4, !tbaa !134
  %i.and = load float, ptr %i.ana, align 4, !tbaa !134
  %i.ane = fsub float %i.anc, %i.and
  %gep443.i.7 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %indvars.iv.next335.2.i.6
  store float %i.ane, ptr %gep443.i.7, align 4, !tbaa !134
  %indvars.iv.next335.2.i.7 = add nuw nsw i64 %indvars.iv334.2.i, 8 ; 2 uses
  %exitcond338.2.not.i.7 = icmp eq i64 %indvars.iv.next335.2.i.7, %i.ij
  br i1 %exitcond338.2.not.i.7, label %._crit_edge260.2.i, label %.lr.ph259.2.i, !llvm.loop !303

._crit_edge260.2.i:                               ; preds = %.lr.ph259.2.i.prol.loopexit, %.lr.ph259.2.i, %vec.epilog.middle.block220, %middle.block205
  %i.anf = fmul float %i.ail, %i.hv
  %i.ang = load float, ptr %i.hy, align 4, !tbaa !134
  %i.anh = fmul float %i.anf, %i.ang
  store float %i.anh, ptr %i.hq, align 4, !tbaa !134
  br i1 %i.hz, label %.lr.ph263.2.i.preheader, label %._crit_edge264.2.thread.i

.lr.ph263.2.i.preheader:                          ; preds = %._crit_edge260.2.i
  br i1 %min.iters.check158, label %.lr.ph263.2.i.preheader506, label %vector.ph159

vector.ph159:                                     ; preds = %.lr.ph263.2.i.preheader
  %broadcast.splatinsert161 = insertelement <8 x float> poison, float %i.ail, i64 0
  %broadcast.splat162 = shufflevector <8 x float> %broadcast.splatinsert161, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph159
  %index168 = phi i64 [ 0, %vector.ph159 ], [ %index.next174, %vector.body167 ]
  %vec.ind = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph159 ], [ %vec.ind.next, %vector.body167 ] ; 2 uses
  %vec.ind169 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph159 ], [ %vec.ind.next175, %vector.body167 ] ; 2 uses
  %i.ani = uitofp nneg <8 x i32> %vec.ind169 to <8 x float>
  %i.anj = fadd <8 x float> %broadcast.splat162, %i.ani
  %i.ank = sub nuw nsw <8 x i64> %broadcast.splat164, %vec.ind ; 2 uses
  %i.anl = extractelement <8 x i64> %i.ank, i64 0
  %i.anm = getelementptr [4 x i8], ptr %i.d, i64 %i.anl ; 2 uses
  %i.ann = getelementptr i8, ptr %i.anm, i64 -36
  %wide.load170 = load <8 x float>, ptr %i.ann, align 4, !tbaa !134
  %reverse = shufflevector <8 x float> %wide.load170, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ano = trunc nuw nsw <8 x i64> %i.ank to <8 x i32>
  %i.anp = uitofp nneg <8 x i32> %i.ano to <8 x float>
  %i.anq = fsub <8 x float> %i.anp, %broadcast.splat162
  %i.anr = getelementptr i8, ptr %i.anm, i64 -32  ; 2 uses
  %wide.load171 = load <8 x float>, ptr %i.anr, align 4, !tbaa !134
  %reverse172 = shufflevector <8 x float> %wide.load171, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ans = fmul <8 x float> %reverse172, %i.anq
  %i.ant = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.anj, <8 x float> %reverse, <8 x float> %i.ans)
  %i.anu = shufflevector <8 x float> %i.ant, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse173 = fmul <8 x float> %i.anu, %i.ji
  store <8 x float> %reverse173, ptr %i.anr, align 4, !tbaa !134
  %index.next174 = add nuw i64 %index168, 8       ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %vec.ind.next175 = add <8 x i32> %vec.ind169, splat (i32 8)
  %i.anv = icmp eq i64 %index.next174, %n.vec160
  br i1 %i.anv, label %middle.block176, label %vector.body167, !llvm.loop !304

middle.block176:                                  ; preds = %vector.body167
  br i1 %cmp.n177, label %._crit_edge264.2.thread.i, label %.lr.ph263.2.i.preheader506

.lr.ph263.2.i.preheader506:                       ; preds = %.lr.ph263.2.i.preheader, %middle.block176
  %indvars.iv339.2.i.ph = phi i64 [ 1, %.lr.ph263.2.i.preheader ], [ %i.jh, %middle.block176 ]
  br label %.lr.ph263.2.i

.lr.ph263.2.i:                                    ; preds = %.lr.ph263.2.i.preheader506, %.lr.ph263.2.i
  %indvars.iv339.2.i = phi i64 [ %indvars.iv.next340.2.i, %.lr.ph263.2.i ], [ %indvars.iv339.2.i.ph, %.lr.ph263.2.i.preheader506 ] ; 3 uses
  %i.anw = trunc nuw nsw i64 %indvars.iv339.2.i to i32
  %i.anx = uitofp nneg i32 %i.anw to float
  %i.any = fadd float %i.ail, %i.anx
  %i.anz = sub nuw nsw i64 %i.ij, %indvars.iv339.2.i ; 2 uses
  %i.aoa = getelementptr [4 x i8], ptr %i.d, i64 %i.anz ; 2 uses
  %i.aob = getelementptr i8, ptr %i.aoa, i64 -8
  %i.aoc = load float, ptr %i.aob, align 4, !tbaa !134
  %i.aod = trunc nuw nsw i64 %i.anz to i32
  %i.aoe = uitofp nneg i32 %i.aod to float
  %i.aof = fsub float %i.aoe, %i.ail
  %i.aog = getelementptr i8, ptr %i.aoa, i64 -4   ; 2 uses
  %i.aoh = load float, ptr %i.aog, align 4, !tbaa !134
  %i.aoi = fmul float %i.aoh, %i.aof
  %i.aoj = call float @llvm.fmuladd.f32(float %i.any, float %i.aoc, float %i.aoi)
  %i.aok = fmul float %i.aoj, %i.hv
  store float %i.aok, ptr %i.aog, align 4, !tbaa !134
  %indvars.iv.next340.2.i = add nuw nsw i64 %indvars.iv339.2.i, 1 ; 2 uses
  %exitcond343.2.not.i = icmp eq i64 %indvars.iv.next340.2.i, %wide.trip.count342.i
  br i1 %exitcond343.2.not.i, label %._crit_edge264.2.thread.i, label %.lr.ph263.2.i, !llvm.loop !305

._crit_edge264.2.thread.i:                        ; preds = %.lr.ph263.2.i, %middle.block176, %._crit_edge260.2.i
  %i.aol = fmul float %i.aim, %i.hv
  %i.aom = load float, ptr %i.d, align 16, !tbaa !134
  %i.aon = fmul float %i.aol, %i.aom
  store float %i.aon, ptr %i.d, align 16, !tbaa !134
  br label %.lr.ph267.2.i

._crit_edge264.2.i:                               ; preds = %._crit_edge256.2.i, %._crit_edge256.2.thread.i
  %.ph434.i = phi float [ %i.ail, %._crit_edge256.2.i ], [ %i.aie, %._crit_edge256.2.thread.i ]
  %.ph435.i = phi float [ %i.aim, %._crit_edge256.2.i ], [ %i.aif, %._crit_edge256.2.thread.i ]
  %i.aoo = fmul float %.ph434.i, %i.hv
  %i.aop = load float, ptr %i.hy, align 4, !tbaa !134
  %i.aoq = fmul float %i.aoo, %i.aop
  store float %i.aoq, ptr %i.hq, align 4, !tbaa !134
  %i.aor = fmul float %.ph435.i, %i.hv
  %i.aos = load float, ptr %i.d, align 16, !tbaa !134
  %i.aot = fmul float %i.aor, %i.aos
  store float %i.aot, ptr %i.d, align 16, !tbaa !134
  br i1 %i.ia, label %.lr.ph267.2.i, label %._crit_edge268.2.i

.lr.ph267.2.i:                                    ; preds = %._crit_edge264.2.i, %._crit_edge264.2.thread.i
  %i.aou = load ptr, ptr %i.io, align 8, !tbaa !332
  %scevgep344.2.i = getelementptr nuw i8, ptr %i.aou, i64 %i.uu
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep344.2.i, ptr nonnull align 16 %i.d, i64 %i.ik, i1 false), !tbaa !134
  br label %._crit_edge268.2.i

._crit_edge268.2.i:                               ; preds = %.lr.ph267.2.i, %._crit_edge264.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %._crit_edge268.2.i, %bb.m
  %indvars.iv.next353.i = add nuw nsw i64 %indvars.iv352.i, 1 ; 2 uses
  %exitcond356.not.i = icmp eq i64 %indvars.iv.next353.i, %wide.trip.count355.i
  br i1 %exitcond356.not.i, label %_ZL13make_bsplinesN3gmx8ArrayRefIPfEES2_iPA3_fiPKiPKfb.exit, label %.lr.ph272.split.i, !llvm.loop !271

_ZL13make_bsplinesN3gmx8ArrayRefIPfEES2_iPA3_fiPKiPKfb.exit: ; preds = %.loopexit232.us.i, %.loopexit230.us.i, %.loopexit.i, %bb.j, %bb.i
  %i.aov = load i8, ptr %8, align 1, !tbaa !17, !range !106, !noundef !107
  %i.aow = trunc nuw i8 %i.aov to i1
  br i1 %i.aow, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZL13make_bsplinesN3gmx8ArrayRefIPfEES2_iPA3_fiPKiPKfb.exit
  %i.aox = load ptr, ptr %4, align 8, !tbaa !11   ; 2 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 80
  %i.aoz = load i8, ptr %i.aoy, align 8, !tbaa !108, !range !106, !noundef !107
  %i.apa = trunc nuw i8 %i.aoz to i1
  %i.apb = load ptr, ptr %3, align 8, !tbaa !15   ; 2 uses
  br i1 %i.apa, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 88
  %i.apd = load ptr, ptr %i.apc, align 8, !tbaa !193
  %i.ape = getelementptr inbounds nuw [72 x i8], ptr %i.apd, i64 %indvars.iv
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.apf = phi ptr [ %i.ape, %bb.o ], [ %i.apb, %bb.n ] ; 7 uses
  %i.apg = load ptr, ptr %5, align 8, !tbaa !13   ; 2 uses
  %i.aph = getelementptr inbounds nuw i8, ptr %i.aox, i64 192
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !339 ; 2 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %i.apf, i64 40
  %i.apk = load i32, ptr %i.apj, align 8, !tbaa !105
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apf, i64 44
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apf, i64 48
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apf, i64 24
  %i.apo = load i32, ptr %i.apm, align 8, !tbaa !105 ; 15 uses
  %i.app = load i32, ptr %i.apl, align 4, !tbaa !105 ; 6 uses
  %i.apq = load <2 x i32>, ptr %i.apn, align 8, !tbaa !105 ; 4 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apf, i64 32
  %i.aps = load i32, ptr %i.apr, align 8, !tbaa !105 ; 4 uses
  %i.apt = mul i32 %i.apo, %i.app                 ; 5 uses
  %i.apu = mul i32 %i.apt, %i.apk                 ; 2 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apf, i64 56
  %i.apw = load ptr, ptr %i.apv, align 8, !tbaa !194
  %i.apx = load ptr, ptr %i.apw, align 8, !tbaa !195 ; 19 uses
  %i.apy = icmp sgt i32 %i.apu, 0
  br i1 %i.apy, label %.lr.ph.preheader.i, label %._crit_edge.i41

.lr.ph.preheader.i:                               ; preds = %bb.p
  %i.apz = zext nneg i32 %i.apu to i64
  %i.aqa = shl nuw nsw i64 %i.apz, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.apx, i8 0, i64 %i.aqa, i1 false), !tbaa !134
  br label %._crit_edge.i41

._crit_edge.i41:                                  ; preds = %.lr.ph.preheader.i, %bb.p
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.apf, i64 36
  %i.aqc = load i32, ptr %i.aqb, align 4, !tbaa !196
  %.fr.i = freeze i32 %i.aqc                      ; 6 uses
  %i.aqd = load i32, ptr %.035, align 8, !tbaa !329 ; 4 uses
  %i.aqe = icmp sgt i32 %i.aqd, 0
  br i1 %i.aqe, label %.lr.ph423.i, label %_ZL35spread_coefficients_bsplines_threadP9pmegrid_tPK11PmeAtomCommP12splinedata_tRK15pme_spline_work.exit

.lr.ph423.i:                                      ; preds = %._crit_edge.i41
  %i.aqf = getelementptr inbounds nuw i8, ptr %.035, i64 8 ; 3 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.apg, i64 152 ; 3 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.apg, i64 264 ; 3 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %.035, i64 32 ; 3 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %.035, i64 40 ; 3 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %.035, i64 48 ; 3 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.api, i64 12
  %i.aqm = sext i32 %i.apo to i64                 ; 5 uses
  %i.aqn = shl nsw i32 %i.apo, 1
  %i.aqo = sext i32 %i.aqn to i64                 ; 5 uses
  %i.aqp = mul nsw i32 %i.apo, 3
  %i.aqq = sext i32 %i.aqp to i64                 ; 5 uses
  %i.aqr = shl nsw i32 %i.apo, 2
  %i.aqs = sext i32 %i.aqr to i64                 ; 5 uses
  %i.aqt = icmp sgt i32 %.fr.i, 0
  switch i32 %.fr.i, label %.lr.ph423.split.preheader.i [
    i32 4, label %.lr.ph423.split.us.i
    i32 5, label %.lr.ph423.split.us425.i.preheader
  ]

.lr.ph423.split.us425.i.preheader:                ; preds = %.lr.ph423.i
  %i.aqu = insertelement <4 x i32> poison, i32 %i.app, i64 0
  %i.aqv = shufflevector <4 x i32> %i.aqu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aqw = insertelement <4 x i32> poison, i32 %i.apo, i64 0
  %i.aqx = shufflevector <4 x i32> %i.aqw, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph423.split.us425.i

.lr.ph423.split.preheader.i:                      ; preds = %.lr.ph423.i
  %i.aqy = sext i32 %.fr.i to i64                 ; 2 uses
  %.pre455.i = load ptr, ptr %i.aqf, align 8, !tbaa !183
  %wide.trip.count449.i = zext i32 %.fr.i to i64  ; 12 uses
  %i.aqz = zext nneg i32 %i.aqd to i64
  %i.ara = add nsw i64 %wide.trip.count449.i, -1  ; 2 uses
  %i.arb = shl nuw nsw i64 %wide.trip.count449.i, 2 ; 2 uses
  %i.arc = shl nsw i64 %i.aqy, 2
  %i.ard = mul i32 %i.app, %i.apo
  %i.are = zext i32 %i.ard to i64
  %i.arf = zext i32 %i.apo to i64
  %scevgep121.a = getelementptr i8, ptr %i.apx, i64 %i.arb
  %i.arg = extractelement <2 x i32> %i.apq, i64 0
  %i.arh = extractelement <2 x i32> %i.apq, i64 1 ; 2 uses
  %min.iters.check123 = icmp ult i32 %.fr.i, 4
  %i.ari = trunc i64 %i.ara to i32
  %i.arj = icmp ugt i64 %i.ara, 4294967295
  %min.iters.check125 = icmp ult i32 %.fr.i, 32
  %i.ark = and i64 %wide.trip.count449.i, 28
  %n.vec127 = and i64 %wide.trip.count449.i, 2147483616 ; 4 uses
  %cmp.n140 = icmp eq i64 %n.vec127, %wide.trip.count449.i
  %min.epilog.iters.check145 = icmp eq i64 %i.ark, 0
  %n.vec147 = and i64 %wide.trip.count449.i, 2147483644 ; 3 uses
  %cmp.n156 = icmp eq i64 %n.vec147, %wide.trip.count449.i
  %xtraiter530 = and i64 %wide.trip.count449.i, 3 ; 2 uses
  %lcmp.mod531.not = icmp eq i64 %xtraiter530, 0
  br label %.lr.ph423.split.i

.lr.ph423.split.us.i:                             ; preds = %.lr.ph423.i, %.loopexit406.us.i
  %i.arl = phi i32 [ %i.awv, %.loopexit406.us.i ], [ %i.aqd, %.lr.ph423.i ]
  %indvars.iv435.i = phi i64 [ %indvars.iv.next436.i, %.loopexit406.us.i ], [ 0, %.lr.ph423.i ] ; 3 uses
  %i.arm = load ptr, ptr %i.aqf, align 8, !tbaa !183
  %i.arn = getelementptr inbounds nuw [4 x i8], ptr %i.arm, i64 %indvars.iv435.i
  %i.aro = load i32, ptr %i.arn, align 4, !tbaa !105
  %i.arp = sext i32 %i.aro to i64                 ; 2 uses
  %i.arq = load i64, ptr %i.aqg, align 8
  %i.arr = inttoptr i64 %i.arq to ptr
  %i.ars = getelementptr inbounds [4 x i8], ptr %i.arr, i64 %i.arp
  %i.art = load float, ptr %i.ars, align 4, !tbaa !134 ; 5 uses
  %i.aru = fcmp une float %i.art, 0.000000e+00
  br i1 %i.aru, label %.loopexit406.us.loopexit.i, label %.loopexit406.us.i

.loopexit406.us.loopexit.i:                       ; preds = %.lr.ph423.split.us.i
  %i.arv = load ptr, ptr %i.aqh, align 8, !tbaa !187
  %i.arw = getelementptr inbounds nuw [12 x i8], ptr %i.arv, i64 %i.arp ; 2 uses
  %i.arx = shl nuw nsw i64 %indvars.iv435.i, 2    ; 3 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arw, i64 8
  %i.arz = load i32, ptr %i.ary, align 4, !tbaa !105
  %i.asa = sub nsw i32 %i.arz, %i.aps
  %i.asb = load ptr, ptr %i.aqi, align 8, !tbaa !332
  %i.asc = getelementptr inbounds nuw [4 x i8], ptr %i.asb, i64 %i.arx ; 4 uses
  %i.asd = load ptr, ptr %i.aqj, align 8, !tbaa !332
  %i.ase = getelementptr inbounds nuw [4 x i8], ptr %i.asd, i64 %i.arx ; 4 uses
  %i.asf = load ptr, ptr %i.aqk, align 8, !tbaa !332
  %i.asg = getelementptr inbounds nuw [4 x i8], ptr %i.asf, i64 %i.arx
  %i.ash = load float, ptr %i.ase, align 4, !tbaa !134
  %i.asi = insertelement <4 x float> poison, float %i.ash, i64 0
  %i.asj = shufflevector <4 x float> %i.asi, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %i.ase, i64 4
  %i.asl = load float, ptr %i.ask, align 4, !tbaa !134
  %i.asm = insertelement <4 x float> poison, float %i.asl, i64 0
  %i.asn = shufflevector <4 x float> %i.asm, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.aso = getelementptr inbounds nuw i8, ptr %i.ase, i64 8
  %i.asp = load float, ptr %i.aso, align 4, !tbaa !134
  %i.asq = insertelement <4 x float> poison, float %i.asp, i64 0
end_hunk_2
