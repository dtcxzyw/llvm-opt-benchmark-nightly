Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_basecurve?download=true
inline.NumInlined: 119
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 44
begin_hunk_0_@process_fusion:bb.a
  %i.bf = zext nneg i32 %i.be to i64              ; 2 uses
  %i.bg = shl nuw nsw i64 %i.bd, 4
  %i.bh = mul nuw nsw i64 %i.bg, %i.bf            ; 2 uses
  %i.bi = tail call ptr @dt_alloc_aligned(i64 noundef %i.bh) #26 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bi, i64 64) ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !126
  %i.bk = tail call ptr @dt_alloc_aligned(i64 noundef %i.bh) #26 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bk, i64 64) ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !126
  %.not.2 = icmp eq ptr %i.bi, null
  %.not282.2 = icmp eq ptr %i.bk, null
  %or.cond285.2 = select i1 %.not.2, i1 true, i1 %.not282.2
  br i1 %or.cond285.2, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @dt_iop_image_fill(ptr noundef nonnull %i.bk, float noundef 0.000000e+00, i64 noundef %i.bd, i64 noundef %i.bf, i64 noundef 4) #26
  %i.bm = icmp samesign ult i32 %., 8
  %i.bn = icmp slt <2 x i32> %i.j, splat (i32 25) ; 2 uses
  %i.bo = extractelement <2 x i1> %i.bn, i64 0
  %or.cond.2 = or i1 %i.bm, %i.bo
  %i.bp = extractelement <2 x i1> %i.bn, i64 1
  %or.cond3.2 = or i1 %or.cond.2, %i.bp
  br i1 %or.cond3.2, label %.loopexit320, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = lshr <2 x i32> %i.aj, splat (i32 3)
  %i.br = add nuw nsw <2 x i32> %i.bq, splat (i32 1) ; 2 uses
  %i.bs = extractelement <2 x i32> %i.br, i64 0
  %i.bt = zext nneg i32 %i.bs to i64              ; 2 uses
  %i.bu = extractelement <2 x i32> %i.br, i64 1
  %i.bv = zext nneg i32 %i.bu to i64              ; 2 uses
  %i.bw = shl nuw nsw i64 %i.bt, 4
  %i.bx = mul nuw nsw i64 %i.bw, %i.bv            ; 2 uses
  %i.by = tail call ptr @dt_alloc_aligned(i64 noundef %i.bx) #26 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.by, i64 64) ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !126
  %i.ca = tail call ptr @dt_alloc_aligned(i64 noundef %i.bx) #26 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ca, i64 64) ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !126
  %.not.3 = icmp eq ptr %i.by, null
  %.not282.3 = icmp eq ptr %i.ca, null
  %or.cond285.3 = select i1 %.not.3, i1 true, i1 %.not282.3
  br i1 %or.cond285.3, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @dt_iop_image_fill(ptr noundef nonnull %i.ca, float noundef 0.000000e+00, i64 noundef %i.bt, i64 noundef %i.bv, i64 noundef 4) #26
  %i.cc = icmp samesign ult i32 %., 16
  %i.cd = icmp slt <2 x i32> %i.j, splat (i32 49) ; 2 uses
  %i.ce = extractelement <2 x i1> %i.cd, i64 0
  %or.cond.3 = or i1 %i.cc, %i.ce
  %i.cf = extractelement <2 x i1> %i.cd, i64 1
  %or.cond3.3 = or i1 %or.cond.3, %i.cf
  br i1 %or.cond3.3, label %.loopexit320, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cg = lshr <2 x i32> %i.aj, splat (i32 4)
  %i.ch = add nuw nsw <2 x i32> %i.cg, splat (i32 1) ; 2 uses
  %i.ci = extractelement <2 x i32> %i.ch, i64 0
  %i.cj = zext nneg i32 %i.ci to i64              ; 2 uses
  %i.ck = extractelement <2 x i32> %i.ch, i64 1
  %i.cl = zext nneg i32 %i.ck to i64              ; 2 uses
  %i.cm = shl nuw nsw i64 %i.cj, 4
  %i.cn = mul nuw nsw i64 %i.cm, %i.cl            ; 2 uses
  %i.co = tail call ptr @dt_alloc_aligned(i64 noundef %i.cn) #26 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.co, i64 64) ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !126
  %i.cq = tail call ptr @dt_alloc_aligned(i64 noundef %i.cn) #26 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cq, i64 64) ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !126
  %.not.4 = icmp eq ptr %i.co, null
  %.not282.4 = icmp eq ptr %i.cq, null
  %or.cond285.4 = select i1 %.not.4, i1 true, i1 %.not282.4
  br i1 %or.cond285.4, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @dt_iop_image_fill(ptr noundef nonnull %i.cq, float noundef 0.000000e+00, i64 noundef %i.cj, i64 noundef %i.cl, i64 noundef 4) #26
  %i.cs = icmp samesign ult i32 %., 32
  %i.ct = icmp slt <2 x i32> %i.j, splat (i32 97) ; 2 uses
  %i.cu = extractelement <2 x i1> %i.ct, i64 0
  %or.cond.4 = or i1 %i.cs, %i.cu
  %i.cv = extractelement <2 x i1> %i.ct, i64 1
  %or.cond3.4 = or i1 %or.cond.4, %i.cv
  br i1 %or.cond3.4, label %.loopexit320, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cw = lshr <2 x i32> %i.aj, splat (i32 5)
  %i.cx = add nuw nsw <2 x i32> %i.cw, splat (i32 1) ; 2 uses
  %i.cy = extractelement <2 x i32> %i.cx, i64 0
  %i.cz = zext nneg i32 %i.cy to i64              ; 2 uses
  %i.da = extractelement <2 x i32> %i.cx, i64 1
  %i.db = zext nneg i32 %i.da to i64              ; 2 uses
  %i.dc = shl nuw nsw i64 %i.cz, 4
  %i.dd = mul nuw nsw i64 %i.dc, %i.db            ; 2 uses
  %i.de = tail call ptr @dt_alloc_aligned(i64 noundef %i.dd) #26 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.de, i64 64) ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr %i.de, ptr %i.df, align 8, !tbaa !126
  %i.dg = tail call ptr @dt_alloc_aligned(i64 noundef %i.dd) #26 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dg, i64 64) ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !126
  %.not.5 = icmp eq ptr %i.de, null
  %.not282.5 = icmp eq ptr %i.dg, null
  %or.cond285.5 = select i1 %.not.5, i1 true, i1 %.not282.5
  br i1 %or.cond285.5, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @dt_iop_image_fill(ptr noundef nonnull %i.dg, float noundef 0.000000e+00, i64 noundef %i.cz, i64 noundef %i.db, i64 noundef 4) #26
  %i.di = icmp samesign ult i32 %., 64
  %i.dj = icmp slt <2 x i32> %i.j, splat (i32 193) ; 2 uses
  %i.dk = extractelement <2 x i1> %i.dj, i64 0
  %or.cond.5 = or i1 %i.di, %i.dk
  %i.dl = extractelement <2 x i1> %i.dj, i64 1
  %or.cond3.5 = or i1 %or.cond.5, %i.dl
  br i1 %or.cond3.5, label %.loopexit320, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dm = lshr <2 x i32> %i.aj, splat (i32 6)
  %i.dn = add nuw nsw <2 x i32> %i.dm, splat (i32 1) ; 2 uses
  %i.do = extractelement <2 x i32> %i.dn, i64 0
  %i.dp = zext nneg i32 %i.do to i64              ; 2 uses
  %i.dq = extractelement <2 x i32> %i.dn, i64 1
  %i.dr = zext nneg i32 %i.dq to i64              ; 2 uses
  %i.ds = shl nuw nsw i64 %i.dp, 4
  %i.dt = mul nuw nsw i64 %i.ds, %i.dr            ; 2 uses
  %i.du = tail call ptr @dt_alloc_aligned(i64 noundef %i.dt) #26 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.du, i64 64) ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !126
  %i.dw = tail call ptr @dt_alloc_aligned(i64 noundef %i.dt) #26 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dw, i64 64) ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !126
  %.not.6 = icmp eq ptr %i.du, null
  %.not282.6 = icmp eq ptr %i.dw, null
  %or.cond285.6 = select i1 %.not.6, i1 true, i1 %.not282.6
  br i1 %or.cond285.6, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @dt_iop_image_fill(ptr noundef nonnull %i.dw, float noundef 0.000000e+00, i64 noundef %i.dp, i64 noundef %i.dr, i64 noundef 4) #26
  %i.dy = icmp samesign ult i32 %., 128
  %i.dz = icmp slt <2 x i32> %i.j, splat (i32 385) ; 2 uses
  %i.ea = extractelement <2 x i1> %i.dz, i64 0
  %or.cond.6 = or i1 %i.dy, %i.ea
  %i.eb = extractelement <2 x i1> %i.dz, i64 1
  %or.cond3.6 = or i1 %or.cond.6, %i.eb
  br i1 %or.cond3.6, label %.loopexit320, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ec = lshr <2 x i32> %i.aj, splat (i32 7)
  %i.ed = add nuw nsw <2 x i32> %i.ec, splat (i32 1) ; 2 uses
  %i.ee = extractelement <2 x i32> %i.ed, i64 0
  %i.ef = zext nneg i32 %i.ee to i64              ; 2 uses
  %i.eg = extractelement <2 x i32> %i.ed, i64 1
  %i.eh = zext nneg i32 %i.eg to i64              ; 2 uses
  %i.ei = shl nuw nsw i64 %i.ef, 4
  %i.ej = mul nuw nsw i64 %i.ei, %i.eh            ; 2 uses
  %i.ek = tail call ptr @dt_alloc_aligned(i64 noundef %i.ej) #26 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ek, i64 64) ]
  %i.el = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !126
  %i.em = tail call ptr @dt_alloc_aligned(i64 noundef %i.ej) #26 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.em, i64 64) ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store ptr %i.em, ptr %i.en, align 8, !tbaa !126
  %.not.7 = icmp eq ptr %i.ek, null
  %.not282.7 = icmp eq ptr %i.em, null
  %or.cond285.7 = select i1 %.not.7, i1 true, i1 %.not282.7
  br i1 %or.cond285.7, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @dt_iop_image_fill(ptr noundef nonnull %i.em, float noundef 0.000000e+00, i64 noundef %i.ef, i64 noundef %i.eh, i64 noundef 4) #26
  br label %.loopexit320

.loopexit320:                                     ; preds = %bb.p, %bb.b, %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n
  %i.eo = phi ptr [ %i.as, %bb.p ], [ null, %bb.b ], [ %i.as, %bb.d ], [ %i.as, %bb.f ], [ %i.as, %bb.h ], [ %i.as, %bb.j ], [ %i.as, %bb.l ], [ %i.as, %bb.n ] ; 2 uses
  %.0274 = phi i32 [ 8, %bb.p ], [ 1, %bb.b ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.h ], [ 5, %bb.j ], [ 6, %bb.l ], [ 7, %bb.n ] ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 262172 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !99 ; 2 uses
  %.not283346 = icmp slt i32 %i.eq, 0
  br i1 %.not283346, label %.loopexit320.._crit_edge350_crit_edge, label %.lr.ph349

.loopexit320.._crit_edge350_crit_edge:            ; preds = %.loopexit320
  %.pre413 = add nsw i32 %.0274, -1               ; 2 uses
  %.pre415 = zext nneg i32 %.pre413 to i64
  br label %._crit_edge350

.lr.ph349:                                        ; preds = %.loopexit320
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 262184
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 262176
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 262180
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 262160 ; 4 uses
  %i.ew = shl nsw i64 %i.w, 2
  %i.ex = mul i64 %i.ew, %i.y                     ; 7 uses
  %.not.i = icmp eq i64 %i.ex, 0                  ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 262164 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 262168 ; 3 uses
  %i.fa = add nsw i32 %.0274, -1                  ; 2 uses
  %i.fb = zext i32 %i.fa to i64                   ; 6 uses
  %wide.trip.count = zext nneg i32 %.0274 to i64
  %i.fc = add nsw <2 x i32> %i.j, splat (i32 -1)  ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.fb
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.fb
  %scevgep = getelementptr i8, ptr %3, i64 12
  %scevgep589 = getelementptr i8, ptr %3, i64 16
  %i.ff = tail call i64 @llvm.usub.sat.i64(i64 %i.ex, i64 4)
  %i.fg = shl i64 %i.ff, 2                        ; 2 uses
  %i.fh = getelementptr i8, ptr %3, i64 %i.fg
  %scevgep664 = getelementptr i8, ptr %i.fh, i64 12
  %i.fi = getelementptr i8, ptr %i.aa, i64 %i.fg
  %scevgep665 = getelementptr i8, ptr %i.fi, i64 16
  %scevgep666 = getelementptr i8, ptr %i.aa, i64 12
  %i.fj = extractelement <2 x i32> %i.j, i64 1
  %6 = tail call i64 @llvm.usub.sat.i64(i64 %i.ex, i64 4) ; 2 uses
  %min.iters.check691 = icmp ult i64 %6, 32
  %i.fk = lshr exact i64 %6, 2
  %i.fl = add nuw nsw i64 %i.fk, 1                ; 2 uses
  %i.fm = and i64 %i.fl, 7                        ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 0
  %i.fo = select i1 %i.fn, i64 8, i64 %i.fm
  %n.vec693 = sub nsw i64 %i.fl, %i.fo            ; 2 uses
  %i.fp = shl i64 %n.vec693, 2
  %i.fq = tail call i64 @llvm.usub.sat.i64(i64 %i.ex, i64 4) ; 2 uses
  %i.fr = lshr exact i64 %i.fq, 2
  %i.fs = add nuw nsw i64 %i.fr, 1                ; 2 uses
  %min.iters.check668 = icmp ult i64 %i.fq, 32
  %bound0670 = icmp ult ptr %scevgep666, %scevgep664
  %bound1671 = icmp ult ptr %3, %scevgep665
  %found.conflict672 = and i1 %bound0670, %bound1671
  %i.ft = and i64 %i.fs, 7                        ; 2 uses
  %i.fu = icmp eq i64 %i.ft, 0
  %i.fv = select i1 %i.fu, i64 8, i64 %i.ft
  %n.vec674 = sub nsw i64 %i.fs, %i.fv            ; 2 uses
  %i.fw = shl i64 %n.vec674, 2
  br label %bb.q

._crit_edge350:                                   ; preds = %bb.ag, %.loopexit320.._crit_edge350_crit_edge
  %.pre-phi416 = phi i64 [ %.pre415, %.loopexit320.._crit_edge350_crit_edge ], [ %i.fb, %bb.ag ] ; 2 uses
  %.pre-phi414 = phi i32 [ %.pre413, %.loopexit320.._crit_edge350_crit_edge ], [ %i.fa, %bb.ag ]
  %i.fx = add nsw <2 x i32> %i.j, splat (i32 -1)  ; 2 uses
  %scevgep715 = getelementptr i8, ptr %3, i64 12
  %scevgep758 = getelementptr i8, ptr %3, i64 16
  br label %.preheader313

bb.q:                                             ; preds = %.lr.ph349, %bb.ag
  %i.fy = phi i32 [ %i.eq, %.lr.ph349 ], [ %i.qg, %bb.ag ]
  %.0265347 = phi i32 [ 0, %.lr.ph349 ], [ %i.qf, %bb.ag ] ; 3 uses
  %i.fz = load i32, ptr %i.er, align 8, !tbaa !127 ; 2 uses
  %i.ga = icmp eq i32 %i.fz, 0
  %i.gb = load float, ptr %i.es, align 8, !tbaa !248
  %i.gc = uitofp nsz nneg i32 %i.fy to float
  %i.gd = load float, ptr %i.et, align 4, !tbaa !249
  %i.ge = fadd reassoc nsz arcp contract afn float %i.gd, -1.000000e+00
  %i.gf = fmul reassoc nnan nsz arcp contract afn float %i.gc, 5.000000e-01
  %i.gg = fmul reassoc nsz arcp contract afn float %i.gf, %i.ge
  %i.gh = uitofp nsz nneg i32 %.0265347 to float
  %reass.add.i = fadd reassoc nsz arcp contract afn float %i.gg, %i.gh
  %reass.mul.i = fmul reassoc nsz arcp contract afn float %reass.add.i, %i.gb
  %exp2.i = tail call reassoc nsz arcp contract afn noundef float @llvm.exp2.f32(float %reass.mul.i) ; 4 uses
  br i1 %i.ga, label %bb.r, label %apply_legacy_curve.exit

bb.r:                                             ; preds = %bb.q
  br i1 %.not.i, label %compute_features.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.r, %bb.aa
  %.02731.i = phi i64 [ %i.it, %bb.aa ], [ 0, %bb.r ] ; 6 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02731.i
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !13
  %i.gk = fmul reassoc nsz arcp contract afn float %i.gj, %exp2.i ; 3 uses
  %i.gl = fcmp reassoc nsz arcp contract afn olt float %i.gk, 1.000000e+00
  br i1 %i.gl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.preheader.i
  %i.gm = fmul reassoc nnan nsz arcp contract afn float %i.gk, 6.553600e+04
  %i.gn = fptosi float %i.gm to i32
  %i.go = tail call i32 @llvm.smax.i32(i32 %i.gn, i32 0)
  %i.gp = tail call i32 @llvm.umin.i32(i32 %i.go, i32 65535)
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.gq
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !13
  br label %bb.u

bb.t:                                             ; preds = %.preheader.i
  %i.gt = load float, ptr %i.ey, align 4, !tbaa !13
  %i.gu = load float, ptr %i.ev, align 8, !tbaa !13
  %i.gv = fmul reassoc nsz arcp contract afn float %i.gu, %i.gk
  %i.gw = load float, ptr %i.ez, align 8, !tbaa !13
  %i.gx = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.gv, float %i.gw)
  %i.gy = fmul reassoc nsz arcp contract afn float %i.gx, %i.gt
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink41.i = phi float [ %i.gy, %bb.t ], [ %i.gs, %bb.s ]
  %i.gz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink41.i, float 0.000000e+00)
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.02731.i
  store float %i.gz, ptr %i.ha, align 16, !tbaa !13
  %i.hb = or disjoint i64 %.02731.i, 1            ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hb
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !13
  %i.he = fmul reassoc nsz arcp contract afn float %i.hd, %exp2.i ; 3 uses
  %i.hf = fcmp reassoc nsz arcp contract afn olt float %i.he, 1.000000e+00
  br i1 %i.hf, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hg = load float, ptr %i.ey, align 4, !tbaa !13
  %i.hh = load float, ptr %i.ev, align 8, !tbaa !13
  %i.hi = fmul reassoc nsz arcp contract afn float %i.hh, %i.he
  %i.hj = load float, ptr %i.ez, align 8, !tbaa !13
  %i.hk = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.hi, float %i.hj)
  %i.hl = fmul reassoc nsz arcp contract afn float %i.hk, %i.hg
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.hm = fmul reassoc nnan nsz arcp contract afn float %i.he, 6.553600e+04
  %i.hn = fptosi float %i.hm to i32
  %i.ho = tail call i32 @llvm.smax.i32(i32 %i.hn, i32 0)
  %i.hp = tail call i32 @llvm.umin.i32(i32 %i.ho, i32 65535)
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.hq
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !13
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink.i = phi float [ %i.hs, %bb.w ], [ %i.hl, %bb.v ]
  %i.ht = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink.i, float 0.000000e+00)
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.hb
  store float %i.ht, ptr %i.hu, align 4, !tbaa !13
  %i.hv = or disjoint i64 %.02731.i, 2            ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hv
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !13
  %i.hy = fmul reassoc nsz arcp contract afn float %i.hx, %exp2.i ; 3 uses
  %i.hz = fcmp reassoc nsz arcp contract afn olt float %i.hy, 1.000000e+00
  br i1 %i.hz, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ia = load float, ptr %i.ey, align 4, !tbaa !13
  %i.ib = load float, ptr %i.ev, align 8, !tbaa !13
  %i.ic = fmul reassoc nsz arcp contract afn float %i.ib, %i.hy
  %i.id = load float, ptr %i.ez, align 8, !tbaa !13
  %i.ie = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ic, float %i.id)
  %i.if = fmul reassoc nsz arcp contract afn float %i.ie, %i.ia
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.ig = fmul reassoc nnan nsz arcp contract afn float %i.hy, 6.553600e+04
  %i.ih = fptosi float %i.ig to i32
  %i.ii = tail call i32 @llvm.smax.i32(i32 %i.ih, i32 0)
  %i.ij = tail call i32 @llvm.umin.i32(i32 %i.ii, i32 65535)
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.ik
  %i.im = load float, ptr %i.il, align 4, !tbaa !13
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink42.i = phi float [ %i.im, %bb.z ], [ %i.if, %bb.y ]
  %i.in = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink42.i, float 0.000000e+00)
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.hv
  store float %i.in, ptr %i.io, align 8, !tbaa !13
  %i.ip = or disjoint i64 %.02731.i, 3            ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ip
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !13
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ip
  store float %i.ir, ptr %i.is, align 4, !tbaa !13
  %i.it = add nuw i64 %.02731.i, 4                ; 2 uses
  %i.iu = icmp ult i64 %i.it, %i.ex
  br i1 %i.iu, label %.preheader.i, label %.lr.ph.i.preheader

apply_legacy_curve.exit:                          ; preds = %bb.q
  tail call fastcc void @apply_curve(ptr noundef %2, ptr noundef %i.aa, i32 noundef %i.u, i32 noundef %i.fj, i32 noundef %i.fz, float noundef %exp2.i, ptr noundef nonnull %i.eu, ptr noundef nonnull %i.ev, ptr noundef %i.h)
  br i1 %.not.i, label %compute_features.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.aa, %apply_legacy_curve.exit
  br i1 %min.iters.check691, label %.lr.ph.i.preheader829, label %vector.body694

vector.body694:                                   ; preds = %.lr.ph.i.preheader, %vector.body694
  %index695 = phi i64 [ %index.next703, %vector.body694 ], [ 0, %.lr.ph.i.preheader ]
  %vec.ind696 = phi <8 x i64> [ %vec.ind.next704, %vector.body694 ], [ <i64 0, i64 4, i64 8, i64 12, i64 16, i64 20, i64 24, i64 28>, %.lr.ph.i.preheader ] ; 2 uses
  %wide.gep697 = getelementptr inbounds nuw [4 x i8], ptr %i.aa, <8 x i64> %vec.ind696 ; 2 uses
  %i.iv = extractelement <8 x ptr> %wide.gep697, i64 0
  %wide.vec698 = load <32 x float>, ptr %i.iv, align 16, !tbaa !13 ; 3 uses
  %strided.vec699 = shufflevector <32 x float> %wide.vec698, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 5 uses
  %strided.vec700 = shufflevector <32 x float> %wide.vec698, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 5 uses
  %strided.vec701 = shufflevector <32 x float> %wide.vec698, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 5 uses
  %i.iw = fcmp reassoc nsz arcp contract afn ogt <8 x float> %strided.vec700, %strided.vec701
  %i.ix = select reassoc nsz arcp contract afn <8 x i1> %i.iw, <8 x float> %strided.vec700, <8 x float> %strided.vec701 ; 2 uses
  %i.iy = fcmp reassoc nsz arcp contract afn ogt <8 x float> %strided.vec699, %i.ix
  %i.iz = select reassoc nsz arcp contract afn <8 x i1> %i.iy, <8 x float> %strided.vec699, <8 x float> %i.ix ; 3 uses
  %i.ja = fcmp reassoc nsz arcp contract afn olt <8 x float> %strided.vec700, %strided.vec701
  %i.jb = select reassoc nsz arcp contract afn <8 x i1> %i.ja, <8 x float> %strided.vec700, <8 x float> %strided.vec701 ; 2 uses
  %i.jc = fcmp reassoc nsz arcp contract afn olt <8 x float> %strided.vec699, %i.jb
  %i.jd = select reassoc nsz arcp contract afn <8 x i1> %i.jc, <8 x float> %strided.vec699, <8 x float> %i.jb
  %i.je = fsub reassoc nsz arcp contract afn <8 x float> %i.iz, %i.jd
  %i.jf = fmul reassoc nsz arcp contract afn <8 x float> %i.je, splat (float 1.000000e-01)
  %i.jg = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.iz, splat (float f0x38D1B717)
  %i.jh = select reassoc nsz arcp contract afn <8 x i1> %i.jg, <8 x float> splat (float f0x38D1B717), <8 x float> %i.iz
  %i.ji = fdiv reassoc nsz arcp contract afn <8 x float> %i.jf, %i.jh
  %i.jj = fadd reassoc nsz arcp contract afn <8 x float> %i.ji, splat (float 1.000000e-01)
  %i.jk = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec699, splat (float -5.400000e-01)
  %i.jl = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.jk) ; 2 uses
  %i.jm = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec700, splat (float -5.400000e-01)
  %i.jn = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.jm) ; 2 uses
  %i.jo = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.jn, %i.jl
  %i.jp = select reassoc nsz arcp contract afn <8 x i1> %i.jo, <8 x float> %i.jn, <8 x float> %i.jl ; 2 uses
  %i.jq = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec701, splat (float -5.400000e-01)
  %i.jr = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.jq) ; 2 uses
  %i.js = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.jr, %i.jp
  %i.jt = select reassoc nsz arcp contract afn <8 x i1> %i.js, <8 x float> %i.jr, <8 x float> %i.jp ; 2 uses
  %i.ju = fmul reassoc nsz arcp contract afn <8 x float> %i.jt, %i.jt
  %i.jv = fmul reassoc nsz arcp contract afn <8 x float> %i.ju, splat (float 4.560520e+07)
  %i.jw = fsub reassoc nsz arcp contract afn <8 x float> splat (float f0x4E7E0000), %i.jv
  %i.jx = fptosi <8 x float> %i.jw to <8 x i32>
  %i.jy = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.jx, <8 x i32> zeroinitializer)
  %i.jz = bitcast <8 x i32> %i.jy to <8 x float>
  %i.ka = fadd reassoc nsz arcp contract afn <8 x float> %i.jz, splat (float 2.000000e-01)
  %i.kb = fmul reassoc nsz arcp contract afn <8 x float> %i.ka, %i.jj
  %wide.gep702 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep697, i64 12
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.kb, <8 x ptr> align 4 %wide.gep702, <8 x i1> splat (i1 true)), !tbaa !13
  %index.next703 = add nuw i64 %index695, 8       ; 2 uses
  %vec.ind.next704 = add nuw <8 x i64> %vec.ind696, splat (i64 32)
  %i.kc = icmp eq i64 %index.next703, %n.vec693
  br i1 %i.kc, label %.lr.ph.i.preheader829, label %vector.body694, !llvm.loop !199

.lr.ph.i.preheader829:                            ; preds = %vector.body694, %.lr.ph.i.preheader
  %.084.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.fp, %vector.body694 ]
  br label %.lr.ph.i

end_hunk_0
