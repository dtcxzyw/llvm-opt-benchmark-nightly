Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_basecurve?download=true
inline.NumInlined: 119
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 44
begin_hunk_0_@process_fusion:bb.a
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
  %i.fk = tail call i64 @llvm.usub.sat.i64(i64 %i.ex, i64 4) ; 2 uses
  %min.iters.check691 = icmp ult i64 %i.fk, 32
  %i.fl = lshr exact i64 %i.fk, 2
  %i.fm = add nuw nsw i64 %i.fl, 1                ; 2 uses
  %i.fn = and i64 %i.fm, 7                        ; 2 uses
  %i.fo = icmp eq i64 %i.fn, 0
  %i.fp = select i1 %i.fo, i64 8, i64 %i.fn
  %n.vec693 = sub nsw i64 %i.fm, %i.fp            ; 2 uses
  %i.fq = shl i64 %n.vec693, 2
  %i.fr = tail call i64 @llvm.usub.sat.i64(i64 %i.ex, i64 4) ; 2 uses
  %i.fs = lshr exact i64 %i.fr, 2
  %i.ft = add nuw nsw i64 %i.fs, 1                ; 2 uses
  %min.iters.check668 = icmp ult i64 %i.fr, 32
  %bound0670 = icmp ult ptr %scevgep666, %scevgep664
  %bound1671 = icmp ult ptr %3, %scevgep665
  %found.conflict672 = and i1 %bound0670, %bound1671
  %i.fu = and i64 %i.ft, 7                        ; 2 uses
  %i.fv = icmp eq i64 %i.fu, 0
  %i.fw = select i1 %i.fv, i64 8, i64 %i.fu
  %n.vec674 = sub nsw i64 %i.ft, %i.fw            ; 2 uses
  %i.fx = shl i64 %n.vec674, 2
  br label %bb.q

._crit_edge350:                                   ; preds = %bb.ag, %.loopexit320.._crit_edge350_crit_edge
  %.pre-phi416 = phi i64 [ %.pre415, %.loopexit320.._crit_edge350_crit_edge ], [ %i.fb, %bb.ag ] ; 2 uses
  %.pre-phi414 = phi i32 [ %.pre413, %.loopexit320.._crit_edge350_crit_edge ], [ %i.fa, %bb.ag ]
  %i.fy = add nsw <2 x i32> %i.j, splat (i32 -1)  ; 2 uses
  %scevgep715 = getelementptr i8, ptr %3, i64 12
  %scevgep758 = getelementptr i8, ptr %3, i64 16
  br label %.preheader313

bb.q:                                             ; preds = %.lr.ph349, %bb.ag
  %i.fz = phi i32 [ %i.eq, %.lr.ph349 ], [ %i.qh, %bb.ag ]
  %.0265347 = phi i32 [ 0, %.lr.ph349 ], [ %i.qg, %bb.ag ] ; 3 uses
  %i.ga = load i32, ptr %i.er, align 8, !tbaa !127 ; 2 uses
  %i.gb = icmp eq i32 %i.ga, 0
  %i.gc = load float, ptr %i.es, align 8, !tbaa !248
  %i.gd = uitofp nsz nneg i32 %i.fz to float
  %i.ge = load float, ptr %i.et, align 4, !tbaa !249
  %i.gf = fadd reassoc nsz arcp contract afn float %i.ge, -1.000000e+00
  %i.gg = fmul reassoc nsz arcp contract afn float %i.gd, 5.000000e-01
  %i.gh = fmul reassoc nsz arcp contract afn float %i.gg, %i.gf
  %i.gi = uitofp nsz nneg i32 %.0265347 to float
  %reass.add.i = fadd reassoc nsz arcp contract afn float %i.gh, %i.gi
  %reass.mul.i = fmul reassoc nsz arcp contract afn float %reass.add.i, %i.gc
  %exp2.i = tail call reassoc nsz arcp contract afn noundef float @llvm.exp2.f32(float %reass.mul.i) ; 4 uses
  br i1 %i.gb, label %bb.r, label %apply_legacy_curve.exit

bb.r:                                             ; preds = %bb.q
  br i1 %.not.i, label %compute_features.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.r, %bb.aa
  %.02731.i = phi i64 [ %i.iu, %bb.aa ], [ 0, %bb.r ] ; 6 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02731.i
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !13
  %i.gl = fmul reassoc nsz arcp contract afn float %i.gk, %exp2.i ; 3 uses
  %i.gm = fcmp reassoc nsz arcp contract afn olt float %i.gl, 1.000000e+00
  br i1 %i.gm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.preheader.i
  %i.gn = fmul reassoc nsz arcp contract afn float %i.gl, 6.553600e+04
  %i.go = fptosi float %i.gn to i32
  %i.gp = tail call i32 @llvm.smax.i32(i32 %i.go, i32 0)
  %i.gq = tail call i32 @llvm.umin.i32(i32 %i.gp, i32 65535)
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.gr
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !13
  br label %bb.u

bb.t:                                             ; preds = %.preheader.i
  %i.gu = load float, ptr %i.ey, align 4, !tbaa !13
  %i.gv = load float, ptr %i.ev, align 8, !tbaa !13
  %i.gw = fmul reassoc nsz arcp contract afn float %i.gv, %i.gl
  %i.gx = load float, ptr %i.ez, align 8, !tbaa !13
  %i.gy = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.gw, float %i.gx)
  %i.gz = fmul reassoc nsz arcp contract afn float %i.gy, %i.gu
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink41.i = phi float [ %i.gz, %bb.t ], [ %i.gt, %bb.s ]
  %i.ha = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink41.i, float 0.000000e+00)
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.02731.i
  store float %i.ha, ptr %i.hb, align 16, !tbaa !13
  %i.hc = or disjoint i64 %.02731.i, 1            ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hc
  %i.he = load float, ptr %i.hd, align 4, !tbaa !13
  %i.hf = fmul reassoc nsz arcp contract afn float %i.he, %exp2.i ; 3 uses
  %i.hg = fcmp reassoc nsz arcp contract afn olt float %i.hf, 1.000000e+00
  br i1 %i.hg, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hh = load float, ptr %i.ey, align 4, !tbaa !13
  %i.hi = load float, ptr %i.ev, align 8, !tbaa !13
  %i.hj = fmul reassoc nsz arcp contract afn float %i.hi, %i.hf
  %i.hk = load float, ptr %i.ez, align 8, !tbaa !13
  %i.hl = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.hj, float %i.hk)
  %i.hm = fmul reassoc nsz arcp contract afn float %i.hl, %i.hh
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.hn = fmul reassoc nsz arcp contract afn float %i.hf, 6.553600e+04
  %i.ho = fptosi float %i.hn to i32
  %i.hp = tail call i32 @llvm.smax.i32(i32 %i.ho, i32 0)
  %i.hq = tail call i32 @llvm.umin.i32(i32 %i.hp, i32 65535)
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.hr
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !13
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink.i = phi float [ %i.ht, %bb.w ], [ %i.hm, %bb.v ]
  %i.hu = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink.i, float 0.000000e+00)
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.hc
  store float %i.hu, ptr %i.hv, align 4, !tbaa !13
  %i.hw = or disjoint i64 %.02731.i, 2            ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hw
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !13
  %i.hz = fmul reassoc nsz arcp contract afn float %i.hy, %exp2.i ; 3 uses
  %i.ia = fcmp reassoc nsz arcp contract afn olt float %i.hz, 1.000000e+00
  br i1 %i.ia, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ib = load float, ptr %i.ey, align 4, !tbaa !13
  %i.ic = load float, ptr %i.ev, align 8, !tbaa !13
  %i.id = fmul reassoc nsz arcp contract afn float %i.ic, %i.hz
  %i.ie = load float, ptr %i.ez, align 8, !tbaa !13
  %i.if = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.id, float %i.ie)
  %i.ig = fmul reassoc nsz arcp contract afn float %i.if, %i.ib
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.ih = fmul reassoc nsz arcp contract afn float %i.hz, 6.553600e+04
  %i.ii = fptosi float %i.ih to i32
  %i.ij = tail call i32 @llvm.smax.i32(i32 %i.ii, i32 0)
  %i.ik = tail call i32 @llvm.umin.i32(i32 %i.ij, i32 65535)
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.il
  %i.in = load float, ptr %i.im, align 4, !tbaa !13
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink42.i = phi float [ %i.in, %bb.z ], [ %i.ig, %bb.y ]
  %i.io = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink42.i, float 0.000000e+00)
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.hw
  store float %i.io, ptr %i.ip, align 8, !tbaa !13
  %i.iq = or disjoint i64 %.02731.i, 3            ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.iq
  %i.is = load float, ptr %i.ir, align 4, !tbaa !13
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.iq
  store float %i.is, ptr %i.it, align 4, !tbaa !13
  %i.iu = add nuw i64 %.02731.i, 4                ; 2 uses
  %i.iv = icmp ult i64 %i.iu, %i.ex
  br i1 %i.iv, label %.preheader.i, label %.lr.ph.i.preheader

apply_legacy_curve.exit:                          ; preds = %bb.q
  tail call fastcc void @apply_curve(ptr noundef %2, ptr noundef %i.aa, i32 noundef %i.u, i32 noundef %i.fj, i32 noundef %i.ga, float noundef %exp2.i, ptr noundef nonnull %i.eu, ptr noundef nonnull %i.ev, ptr noundef %i.h)
  br i1 %.not.i, label %compute_features.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.aa, %apply_legacy_curve.exit
  br i1 %min.iters.check691, label %.lr.ph.i.preheader829, label %vector.body694

vector.body694:                                   ; preds = %.lr.ph.i.preheader, %vector.body694
  %index695 = phi i64 [ %index.next703, %vector.body694 ], [ 0, %.lr.ph.i.preheader ]
  %vec.ind696 = phi <8 x i64> [ %vec.ind.next704, %vector.body694 ], [ <i64 0, i64 4, i64 8, i64 12, i64 16, i64 20, i64 24, i64 28>, %.lr.ph.i.preheader ] ; 2 uses
  %wide.gep697 = getelementptr inbounds nuw [4 x i8], ptr %i.aa, <8 x i64> %vec.ind696 ; 2 uses
  %i.iw = extractelement <8 x ptr> %wide.gep697, i64 0
  %wide.vec698 = load <32 x float>, ptr %i.iw, align 16, !tbaa !13 ; 3 uses
  %strided.vec699 = shufflevector <32 x float> %wide.vec698, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 5 uses
  %strided.vec700 = shufflevector <32 x float> %wide.vec698, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 5 uses
  %strided.vec701 = shufflevector <32 x float> %wide.vec698, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 5 uses
  %i.ix = fcmp reassoc nsz arcp contract afn ogt <8 x float> %strided.vec700, %strided.vec701
  %i.iy = select reassoc nsz arcp contract afn <8 x i1> %i.ix, <8 x float> %strided.vec700, <8 x float> %strided.vec701 ; 2 uses
  %i.iz = fcmp reassoc nsz arcp contract afn ogt <8 x float> %strided.vec699, %i.iy
  %i.ja = select reassoc nsz arcp contract afn <8 x i1> %i.iz, <8 x float> %strided.vec699, <8 x float> %i.iy ; 3 uses
  %i.jb = fcmp reassoc nsz arcp contract afn olt <8 x float> %strided.vec700, %strided.vec701
  %i.jc = select reassoc nsz arcp contract afn <8 x i1> %i.jb, <8 x float> %strided.vec700, <8 x float> %strided.vec701 ; 2 uses
  %i.jd = fcmp reassoc nsz arcp contract afn olt <8 x float> %strided.vec699, %i.jc
  %i.je = select reassoc nsz arcp contract afn <8 x i1> %i.jd, <8 x float> %strided.vec699, <8 x float> %i.jc
  %i.jf = fsub reassoc nsz arcp contract afn <8 x float> %i.ja, %i.je
  %i.jg = fmul reassoc nsz arcp contract afn <8 x float> %i.jf, splat (float 1.000000e-01)
  %i.jh = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ja, splat (float f0x38D1B717)
  %i.ji = select reassoc nsz arcp contract afn <8 x i1> %i.jh, <8 x float> splat (float f0x38D1B717), <8 x float> %i.ja
  %i.jj = fdiv reassoc nsz arcp contract afn <8 x float> %i.jg, %i.ji
  %i.jk = fadd reassoc nsz arcp contract afn <8 x float> %i.jj, splat (float 1.000000e-01)
  %i.jl = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec699, splat (float -5.400000e-01)
  %i.jm = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.jl) ; 2 uses
  %i.jn = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec700, splat (float -5.400000e-01)
  %i.jo = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.jn) ; 2 uses
  %i.jp = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.jo, %i.jm
  %i.jq = select reassoc nsz arcp contract afn <8 x i1> %i.jp, <8 x float> %i.jo, <8 x float> %i.jm ; 2 uses
  %i.jr = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec701, splat (float -5.400000e-01)
  %i.js = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.jr) ; 2 uses
  %i.jt = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.js, %i.jq
  %i.ju = select reassoc nsz arcp contract afn <8 x i1> %i.jt, <8 x float> %i.js, <8 x float> %i.jq ; 2 uses
  %i.jv = fmul reassoc nsz arcp contract afn <8 x float> %i.ju, %i.ju
  %i.jw = fmul reassoc nsz arcp contract afn <8 x float> %i.jv, splat (float 4.560520e+07)
  %i.jx = fsub reassoc nsz arcp contract afn <8 x float> splat (float f0x4E7E0000), %i.jw
  %i.jy = fptosi <8 x float> %i.jx to <8 x i32>
  %i.jz = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.jy, <8 x i32> zeroinitializer)
  %i.ka = bitcast <8 x i32> %i.jz to <8 x float>
  %i.kb = fadd reassoc nsz arcp contract afn <8 x float> %i.ka, splat (float 2.000000e-01)
  %i.kc = fmul reassoc nsz arcp contract afn <8 x float> %i.kb, %i.jk
  %wide.gep702 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep697, i64 12
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.kc, <8 x ptr> align 4 %wide.gep702, <8 x i1> splat (i1 true)), !tbaa !13
  %index.next703 = add nuw i64 %index695, 8       ; 2 uses
  %vec.ind.next704 = add nuw <8 x i64> %vec.ind696, splat (i64 32)
  %i.kd = icmp eq i64 %index.next703, %n.vec693
  br i1 %i.kd, label %.lr.ph.i.preheader829, label %vector.body694, !llvm.loop !199

.lr.ph.i.preheader829:                            ; preds = %vector.body694, %.lr.ph.i.preheader
  %.084.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.fq, %vector.body694 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader829, %.lr.ph.i
  %.084.i = phi i64 [ %i.ln, %.lr.ph.i ], [ %.084.i.ph, %.lr.ph.i.preheader829 ] ; 2 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.084.i ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load float, ptr %i.kf, align 8, !tbaa !13 ; 5 uses
  %i.kh = load <2 x float>, ptr %i.ke, align 16, !tbaa !13 ; 3 uses
  %i.ki = extractelement <2 x float> %i.kh, i64 1 ; 4 uses
  %i.kj = fcmp reassoc nsz arcp contract afn ogt float %i.ki, %i.kg
  %..i = select reassoc nsz arcp contract afn i1 %i.kj, float %i.ki, float %i.kg ; 2 uses
  %i.kk = extractelement <2 x float> %i.kh, i64 0 ; 4 uses
  %i.kl = fcmp reassoc nsz arcp contract afn ogt float %i.kk, %..i
  %spec.select.i = select reassoc nsz arcp contract afn i1 %i.kl, float %i.kk, float %..i ; 3 uses
  %i.km = fcmp reassoc nsz arcp contract afn olt float %i.ki, %i.kg
  %.81.i = select reassoc nsz arcp contract afn i1 %i.km, float %i.ki, float %i.kg ; 2 uses
  %i.kn = fcmp reassoc nsz arcp contract afn olt float %i.kk, %.81.i
  %i.ko = select reassoc nsz arcp contract afn i1 %i.kn, float %i.kk, float %.81.i
  %i.kp = fsub reassoc nsz arcp contract afn float %spec.select.i, %i.ko
  %i.kq = fmul reassoc nsz arcp contract afn float %i.kp, 1.000000e-01
  %i.kr = fcmp reassoc nsz arcp contract afn olt float %spec.select.i, f0x38D1B717
  %i.ks = select reassoc nsz arcp contract afn i1 %i.kr, float f0x38D1B717, float %spec.select.i
  %i.kt = fdiv reassoc nsz arcp contract afn float %i.kq, %i.ks
  %i.ku = fadd reassoc nsz arcp contract afn float %i.kt, 1.000000e-01
  %i.kv = fadd reassoc nsz arcp contract afn <2 x float> %i.kh, splat (float -5.400000e-01)
  %i.kw = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.kv) ; 2 uses
  %i.kx = extractelement <2 x float> %i.kw, i64 0 ; 2 uses
  %i.ky = extractelement <2 x float> %i.kw, i64 1 ; 2 uses
  %i.kz = fcmp reassoc nsz arcp contract afn ogt float %i.ky, %i.kx
  %.83.i = select reassoc nsz arcp contract afn i1 %i.kz, float %i.ky, float %i.kx ; 2 uses
  %i.la = fadd reassoc nsz arcp contract afn float %i.kg, -5.400000e-01
  %i.lb = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.la) ; 2 uses
  %i.lc = fcmp reassoc nsz arcp contract afn ogt float %i.lb, %.83.i
  %i.ld = select reassoc nsz arcp contract afn i1 %i.lc, float %i.lb, float %.83.i ; 2 uses
  %i.le = fmul reassoc nsz arcp contract afn float %i.ld, %i.ld
  %i.lf = fmul reassoc nsz arcp contract afn float %i.le, 4.560520e+07
  %i.lg = fsub reassoc nsz arcp contract afn float f0x4E7E0000, %i.lf
  %i.lh = fptosi float %i.lg to i32
  %i.li = tail call i32 @llvm.smax.i32(i32 %i.lh, i32 0)
  %i.lj = bitcast i32 %i.li to float
  %i.lk = fadd reassoc nsz arcp contract afn float %i.lj, 2.000000e-01
  %i.ll = fmul reassoc nsz arcp contract afn float %i.lk, %i.ku
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ke, i64 12
  store float %i.ll, ptr %i.lm, align 4, !tbaa !13
  %i.ln = add nuw i64 %.084.i, 4                  ; 2 uses
  %i.lo = icmp ult i64 %i.ln, %i.ex
  br i1 %i.lo, label %.lr.ph.i, label %.lr.ph.preheader, !llvm.loop !200

compute_features.exit.thread:                     ; preds = %apply_legacy_curve.exit, %bb.r
  tail call fastcc void @gauss_reduce(ptr noundef %i.aa, ptr noundef %i.eo, ptr noundef %3, i64 noundef %i.w, i64 noundef %i.y)
  br label %.preheader319

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  tail call fastcc void @gauss_reduce(ptr noundef nonnull %i.aa, ptr noundef %i.eo, ptr noundef %3, i64 noundef %i.w, i64 noundef %i.y)
  %brmerge = select i1 %min.iters.check668, i1 true, i1 %found.conflict672
  br i1 %brmerge, label %.lr.ph.preheader828, label %vector.body675

.lr.ph.preheader828:                              ; preds = %.lr.ph.preheader, %vector.body675
  %.0264328.ph = phi i64 [ %i.fx, %vector.body675 ], [ 0, %.lr.ph.preheader ]
  br label %.lr.ph

vector.body675:                                   ; preds = %.lr.ph.preheader, %vector.body675
  %index676 = phi i64 [ %index.next686, %vector.body675 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %vec.ind677 = phi <8 x i64> [ %vec.ind.next687, %vector.body675 ], [ <i64 0, i64 4, i64 8, i64 12, i64 16, i64 20, i64 24, i64 28>, %.lr.ph.preheader ] ; 2 uses
  %.idx = shl nuw i64 %index676, 4
  %i.lp = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  %wide.vec678 = load <32 x float>, ptr %i.lp, align 4, !tbaa !13, !alias.scope !250 ; 3 uses
  %strided.vec679 = shufflevector <32 x float> %wide.vec678, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 2 uses
  %strided.vec680 = shufflevector <32 x float> %wide.vec678, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 2 uses
  %strided.vec681 = shufflevector <32 x float> %wide.vec678, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 2 uses
  %i.lq = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec679, %strided.vec679
  %i.lr = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec680, %strided.vec680
  %i.ls = fadd reassoc nsz arcp contract afn <8 x float> %i.lr, %i.lq
  %i.lt = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec681, %strided.vec681
  %i.lu = fadd reassoc nsz arcp contract afn <8 x float> %i.ls, %i.lt
  %i.lv = tail call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.lu)
  %i.lw = fadd reassoc nsz arcp contract afn <8 x float> %i.lv, splat (float 1.000000e-01)
  %wide.gep682 = getelementptr inbounds nuw [4 x i8], ptr %i.aa, <8 x i64> %vec.ind677
  %wide.gep683 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep682, i64 12 ; 2 uses
  %i.lx = extractelement <8 x ptr> %wide.gep683, i64 0
  %wide.vec684 = load <32 x float>, ptr %i.lx, align 4, !tbaa !13, !alias.scope !251, !noalias !250
  %strided.vec685 = shufflevector <32 x float> %wide.vec684, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.ly = fmul reassoc nsz arcp contract afn <8 x float> %i.lw, %strided.vec685
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ly, <8 x ptr> align 4 %wide.gep683, <8 x i1> splat (i1 true)), !tbaa !13, !alias.scope !251, !noalias !250
  %index.next686 = add nuw i64 %index676, 8       ; 2 uses
  %vec.ind.next687 = add nuw <8 x i64> %vec.ind677, splat (i64 32)
  %i.lz = icmp eq i64 %index.next686, %n.vec674
  br i1 %i.lz, label %.lr.ph.preheader828, label %vector.body675, !llvm.loop !204

.preheader319:                                    ; preds = %.lr.ph, %compute_features.exit.thread
  br i1 %or.cond3.not, label %.lr.ph332, label %.preheader318.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader828, %.lr.ph
  %.0264328 = phi i64 [ %i.mr, %.lr.ph ], [ %.0264328.ph, %.lr.ph.preheader828 ] ; 3 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0264328 ; 3 uses
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !13 ; 2 uses
  %i.mc = fmul reassoc nsz arcp contract afn float %i.mb, %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  %i.me = load float, ptr %i.md, align 4, !tbaa !13 ; 2 uses
  %i.mf = fmul reassoc nsz arcp contract afn float %i.me, %i.me
  %i.mg = fadd reassoc nsz arcp contract afn float %i.mf, %i.mc
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !13 ; 2 uses
  %i.mj = fmul reassoc nsz arcp contract afn float %i.mi, %i.mi
  %i.mk = fadd reassoc nsz arcp contract afn float %i.mg, %i.mj
  %i.ml = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.mk)
  %i.mm = fadd reassoc nsz arcp contract afn float %i.ml, 1.000000e-01
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.0264328
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 12 ; 2 uses
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !13
  %i.mq = fmul reassoc nsz arcp contract afn float %i.mm, %i.mp
  store float %i.mq, ptr %i.mo, align 4, !tbaa !13
  %i.mr = add nuw i64 %.0264328, 4                ; 2 uses
  %i.ms = icmp ult i64 %i.mr, %i.ex
  br i1 %i.ms, label %.lr.ph, label %.preheader319, !llvm.loop !205

.lr.ph332:                                        ; preds = %.preheader319, %gauss_reduce.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %gauss_reduce.exit ], [ 1, %.preheader319 ] ; 2 uses
  %i.mt = phi <2 x i32> [ %i.qb, %gauss_reduce.exit ], [ %i.j, %.preheader319 ] ; 3 uses
  %i.mu = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.mv = getelementptr i8, ptr %i.mu, i64 -8
end_hunk_0
begin_hunk_1_@process_fusion:bb.a
  %wide.gep731 = getelementptr inbounds nuw [4 x i8], ptr %i.aex, <4 x i64> %vec.ind726 ; 2 uses
  %i.afk = extractelement <4 x ptr> %wide.gep731, i64 0
  %wide.vec732 = load <16 x float>, ptr %i.afk, align 4, !tbaa !13, !alias.scope !273, !noalias !272 ; 3 uses
  %strided.vec733 = shufflevector <16 x float> %wide.vec732, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec734 = shufflevector <16 x float> %wide.vec732, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec735 = shufflevector <16 x float> %wide.vec732, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.afl = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec733, %strided.vec728
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.afl, <4 x ptr> align 4 %wide.gep731, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !273, !noalias !272
  %i.afm = or disjoint <4 x i64> %vec.ind726, splat (i64 1)
  %wide.gep736 = getelementptr inbounds nuw [4 x i8], ptr %i.aex, <4 x i64> %i.afm
  %i.afn = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec734, %strided.vec729
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.afn, <4 x ptr> align 4 %wide.gep736, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !273, !noalias !272
  %i.afo = or disjoint <4 x i64> %vec.ind726, splat (i64 2)
  %wide.gep737 = getelementptr inbounds nuw [4 x i8], ptr %i.aex, <4 x i64> %i.afo
  %i.afp = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec735, %strided.vec730
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.afp, <4 x ptr> align 4 %wide.gep737, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !273, !noalias !272
  %index.next738 = add nuw i64 %index725, 4       ; 2 uses
  %vec.ind.next739 = add nuw <4 x i64> %vec.ind726, splat (i64 16)
  %i.afq = icmp eq i64 %index.next738, %n.vec723
  br i1 %i.afq, label %.preheader308.preheader, label %vector.body724, !llvm.loop !244

.preheader308.preheader:                          ; preds = %vector.body724, %vector.memcheck718, %.preheader308.lr.ph
  %.0253364.ph = phi i64 [ 0, %vector.memcheck718 ], [ 0, %.preheader308.lr.ph ], [ %i.afi, %vector.body724 ]
  br label %.preheader308

.preheader308:                                    ; preds = %.preheader308.preheader, %.preheader308
  %.0253364 = phi i64 [ %i.agi, %.preheader308 ], [ %.0253364.ph, %.preheader308.preheader ] ; 5 uses
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0253364
  %i.afs = load float, ptr %i.afr, align 4, !tbaa !13
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %i.aex, i64 %.0253364 ; 2 uses
  %i.afu = load float, ptr %i.aft, align 4, !tbaa !13
  %i.afv = fadd reassoc nsz arcp contract afn float %i.afu, %i.afs
  store float %i.afv, ptr %i.aft, align 4, !tbaa !13
  %i.afw = or disjoint i64 %.0253364, 1           ; 2 uses
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.afw
  %i.afy = load float, ptr %i.afx, align 4, !tbaa !13
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %i.aex, i64 %i.afw ; 2 uses
  %i.aga = load float, ptr %i.afz, align 4, !tbaa !13
  %i.agb = fadd reassoc nsz arcp contract afn float %i.aga, %i.afy
  store float %i.agb, ptr %i.afz, align 4, !tbaa !13
  %i.agc = or disjoint i64 %.0253364, 2           ; 2 uses
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.agc
  %i.age = load float, ptr %i.agd, align 4, !tbaa !13
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %i.aex, i64 %i.agc ; 2 uses
  %i.agg = load float, ptr %i.agf, align 4, !tbaa !13
  %i.agh = fadd reassoc nsz arcp contract afn float %i.agg, %i.age
  store float %i.agh, ptr %i.agf, align 4, !tbaa !13
  %i.agi = add nuw i64 %.0253364, 4               ; 2 uses
  %i.agj = icmp ult i64 %i.agi, %i.aaq
  br i1 %i.agj, label %.preheader308, label %.loopexit311, !llvm.loop !245

.loopexit311:                                     ; preds = %.preheader308, %gauss_expand.exit304, %._crit_edge360
  %indvars.iv.next404 = add nsw i64 %indvars.iv403, -1
  %indvar.next836 = add i64 %indvar835, 1
  br i1 %i.zd, label %.preheader313, label %.preheader

scalar.ph801:                                     ; preds = %scalar.ph801.preheader, %scalar.ph801
  %.0251366 = phi i64 [ %i.ahc, %scalar.ph801 ], [ %.0251366.ph, %scalar.ph801.preheader ] ; 6 uses
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %.0251366
  %i.agl = load float, ptr %i.agk, align 4, !tbaa !13
  %i.agm = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.agl, float 0.000000e+00)
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0251366
  store float %i.agm, ptr %i.agn, align 4, !tbaa !13
  %i.ago = or disjoint i64 %.0251366, 1           ; 2 uses
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %i.ago
  %i.agq = load float, ptr %i.agp, align 4, !tbaa !13
  %i.agr = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.agq, float 0.000000e+00)
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ago
  store float %i.agr, ptr %i.ags, align 4, !tbaa !13
  %i.agt = or disjoint i64 %.0251366, 2           ; 2 uses
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %i.agt
  %i.agv = load float, ptr %i.agu, align 4, !tbaa !13
  %i.agw = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.agv, float 0.000000e+00)
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.agt
  store float %i.agw, ptr %i.agx, align 4, !tbaa !13
  %i.agy = or disjoint i64 %.0251366, 3           ; 2 uses
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.agy
  %i.aha = load float, ptr %i.agz, align 4, !tbaa !13
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.agy
  store float %i.aha, ptr %i.ahb, align 4, !tbaa !13
  %i.ahc = add nuw i64 %.0251366, 4               ; 2 uses
  %i.ahd = icmp ult i64 %i.ahc, %i.zh
  br i1 %i.ahd, label %scalar.ph801, label %.loopexit, !llvm.loop !246

.loopexit:                                        ; preds = %scalar.ph801, %.preheader, %.thread
  %.0274307 = phi i32 [ 8, %.thread ], [ %.0274, %.preheader ], [ %.0274, %scalar.ph801 ]
  %wide.trip.count409 = zext nneg i32 %.0274307 to i64
  br label %bb.al

bb.ak:                                            ; preds = %bb.al
  tail call void @free(ptr noundef nonnull %i.k) #26
  tail call void @free(ptr noundef nonnull %i.l) #26
  ret void

bb.al:                                            ; preds = %.loopexit, %bb.al
  %indvars.iv406 = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next407, %bb.al ] ; 3 uses
  %i.ahe = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv406
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !126
  tail call void @free(ptr noundef %i.ahf) #26
  %i.ahg = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv406
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !126
  tail call void @free(ptr noundef %i.ahh) #26
  %indvars.iv.next407 = add nuw nsw i64 %indvars.iv406, 1 ; 2 uses
  %exitcond410.not = icmp eq i64 %indvars.iv.next407, %wide.trip.count409
  br i1 %exitcond410.not, label %bb.ak, label %bb.al
}

declare ptr @dt_ioppr_get_iop_work_profile_info(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

declare void @dt_iop_copy_image_roi(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #7

declare void @dt_iop_image_fill(ptr noundef, float noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @apply_curve(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 1, 0) %4, float noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(address_is_null) %8) unnamed_addr #11 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = sext i32 %3 to i64
  %i.c = shl nsw i64 %i.a, 2
  %i.d = mul i64 %i.c, %i.b                       ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %8, null
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 768
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 852
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 712
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 704
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 772
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 776
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 720
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 780
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 784
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 788
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 728
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 792
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 796
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 800
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 592 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 596 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 600 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.ac, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.ac
  %.03438 = phi i64 [ 0, %.lr.ph ], [ %i.ij, %bb.ac ] ; 6 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03438 ; 27 uses
  switch i32 %4, label %bb.x [
    i32 1, label %bb.c
    i32 2, label %bb.s
    i32 3, label %bb.t
    i32 4, label %bb.u
    i32 5, label %bb.v
    i32 6, label %bb.w
  ]

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load i32, ptr %i.f, align 4, !tbaa !275
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.h, align 64, !tbaa !276 ; 2 uses
  %i.aa = add nsw i32 %i.z, -1
  %i.ab = sitofp reassoc nsz arcp contract afn i32 %i.aa to float ; 9 uses
  %i.ac = add nsw i32 %i.z, -2
  %i.ad = sitofp reassoc nsz arcp contract afn i32 %i.ac to float ; 6 uses
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !126 ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !13
  %i.ag = fcmp reassoc nsz arcp contract afn ult float %i.af, 0.000000e+00
  %i.ah = load float, ptr %i.x, align 4, !tbaa !13 ; 5 uses
  br i1 %i.ag, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = fcmp reassoc nsz arcp contract afn olt float %i.ah, 1.000000e+00
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ah, %i.ab ; 3 uses
  %i.ak = fcmp reassoc nsz arcp contract afn ogt float %i.aj, 0.000000e+00
  %i.al = fcmp reassoc nsz arcp contract afn olt float %i.aj, %i.ab
  %..i.i.i.i = select reassoc nsz arcp contract afn i1 %i.al, float %i.aj, float %i.ab
  %i.am = select reassoc nsz arcp contract afn i1 %i.ak, float %..i.i.i.i, float 0.000000e+00 ; 3 uses
  %i.an = fcmp reassoc nsz arcp contract afn olt float %i.am, %i.ad
  %i.ao = select reassoc nsz arcp contract afn i1 %i.an, float %i.am, float %i.ad
  %i.ap = fptosi float %i.ao to i32               ; 2 uses
  %i.aq = sitofp reassoc nsz arcp contract afn i32 %i.ap to float
  %i.ar = fsub reassoc nsz arcp contract afn float %i.am, %i.aq
  %i.as = sext i32 %i.ap to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.as ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !13 ; 2 uses
  %i.av = getelementptr i8, ptr %i.at, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !13
  %i.ax = fsub reassoc nsz arcp contract afn float %i.aw, %i.au
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, %i.ar
  %i.az = fadd reassoc nsz arcp contract afn float %i.ay, %i.au
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ba = load float, ptr %i.i, align 4, !tbaa !13
  %i.bb = load float, ptr %i.e, align 64, !tbaa !13
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, %i.ah
  %i.bd = load float, ptr %i.j, align 8, !tbaa !13
  %i.be = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bc, float %i.bd)
  %i.bf = fmul reassoc nsz arcp contract afn float %i.be, %i.ba
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %i.bg = phi reassoc nsz arcp contract afn float [ %i.bf, %bb.h ], [ %i.az, %bb.g ], [ %i.ah, %bb.e ]
  %i.bh = load ptr, ptr %i.k, align 16, !tbaa !126 ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !13
  %i.bj = fcmp reassoc nsz arcp contract afn ult float %i.bi, 0.000000e+00
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !13 ; 4 uses
  br i1 %i.bj, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = fcmp reassoc nsz arcp contract afn olt float %i.bl, 1.000000e+00
  br i1 %i.bm, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = load float, ptr %i.m, align 16, !tbaa !13
  %i.bo = load float, ptr %i.l, align 4, !tbaa !13
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bo, %i.bl
  %i.bq = load float, ptr %i.n, align 4, !tbaa !13
  %i.br = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bp, float %i.bq)
  %i.bs = fmul reassoc nsz arcp contract afn float %i.br, %i.bn
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bl, %i.ab ; 3 uses
  %i.bu = fcmp reassoc nsz arcp contract afn ogt float %i.bt, 0.000000e+00
  %i.bv = fcmp reassoc nsz arcp contract afn olt float %i.bt, %i.ab
  %..i.1.i.i.i = select reassoc nsz arcp contract afn i1 %i.bv, float %i.bt, float %i.ab
  %i.bw = select reassoc nsz arcp contract afn i1 %i.bu, float %..i.1.i.i.i, float 0.000000e+00 ; 3 uses
  %i.bx = fcmp reassoc nsz arcp contract afn olt float %i.bw, %i.ad
  %i.by = select reassoc nsz arcp contract afn i1 %i.bx, float %i.bw, float %i.ad
  %i.bz = fptosi float %i.by to i32               ; 2 uses
  %i.ca = sitofp reassoc nsz arcp contract afn i32 %i.bz to float
  %i.cb = fsub reassoc nsz arcp contract afn float %i.bw, %i.ca
  %i.cc = sext i32 %i.bz to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.cc ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !13 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.cd, i64 4
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !13
  %i.ch = fsub reassoc nsz arcp contract afn float %i.cg, %i.ce
  %i.ci = fmul reassoc nsz arcp contract afn float %i.ch, %i.cb
  %i.cj = fadd reassoc nsz arcp contract afn float %i.ci, %i.ce
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i
  %i.ck = phi reassoc nsz arcp contract afn float [ %i.bs, %bb.k ], [ %i.cj, %bb.l ], [ %i.bl, %bb.i ]
  %i.cl = load ptr, ptr %i.o, align 8, !tbaa !126 ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !13
  %i.cn = fcmp reassoc nsz arcp contract afn ult float %i.cm, 0.000000e+00
  %i.co = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.cp = load float, ptr %i.co, align 4, !tbaa !13 ; 4 uses
  br i1 %i.cn, label %dt_ioppr_apply_trc.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = fcmp reassoc nsz arcp contract afn olt float %i.cp, 1.000000e+00
  br i1 %i.cq, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cr = load float, ptr %i.q, align 4, !tbaa !13
  %i.cs = load float, ptr %i.p, align 8, !tbaa !13
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cs, %i.cp
  %i.cu = load float, ptr %i.r, align 32, !tbaa !13
  %i.cv = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ct, float %i.cu)
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, %i.cr
  br label %dt_ioppr_apply_trc.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cp, %i.ab ; 3 uses
  %i.cy = fcmp reassoc nsz arcp contract afn ogt float %i.cx, 0.000000e+00
  %i.cz = fcmp reassoc nsz arcp contract afn olt float %i.cx, %i.ab
  %..i.2.i.i.i = select reassoc nsz arcp contract afn i1 %i.cz, float %i.cx, float %i.ab
  %i.da = select reassoc nsz arcp contract afn i1 %i.cy, float %..i.2.i.i.i, float 0.000000e+00 ; 3 uses
  %i.db = fcmp reassoc nsz arcp contract afn olt float %i.da, %i.ad
  %i.dc = select reassoc nsz arcp contract afn i1 %i.db, float %i.da, float %i.ad
  %i.dd = fptosi float %i.dc to i32               ; 2 uses
  %i.de = sitofp reassoc nsz arcp contract afn i32 %i.dd to float
  %i.df = fsub reassoc nsz arcp contract afn float %i.da, %i.de
  %i.dg = sext i32 %i.dd to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.dg ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !13 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.dh, i64 4
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !13
  %i.dl = fsub reassoc nsz arcp contract afn float %i.dk, %i.di
  %i.dm = fmul reassoc nsz arcp contract afn float %i.dl, %i.df
  %i.dn = fadd reassoc nsz arcp contract afn float %i.dm, %i.di
  br label %dt_ioppr_apply_trc.exit.i.i

dt_ioppr_apply_trc.exit.i.i:                      ; preds = %bb.p, %bb.o, %bb.m
  %i.do = phi reassoc nsz arcp contract afn float [ %i.cw, %bb.o ], [ %i.dn, %bb.p ], [ %i.cp, %bb.m ]
  %i.dp = load float, ptr %i.s, align 16, !tbaa !13
  %i.dq = fmul reassoc nsz arcp contract afn float %i.dp, %i.bg
  %i.dr = load float, ptr %i.t, align 4, !tbaa !13
  %i.ds = fmul reassoc nsz arcp contract afn float %i.dr, %i.ck
  %i.dt = fadd reassoc nsz arcp contract afn float %i.ds, %i.dq
  %i.du = load float, ptr %i.u, align 8, !tbaa !13
  %i.dv = fmul reassoc nsz arcp contract afn float %i.du, %i.do
  %i.dw = fadd reassoc nsz arcp contract afn float %i.dt, %i.dv
  br label %dt_rgb_norm.exit

bb.q:                                             ; preds = %bb.d
  %i.dx = load float, ptr %i.s, align 4, !tbaa !13
  %i.dy = load float, ptr %i.x, align 4, !tbaa !13 ; 2 uses
  %i.dz = fmul reassoc nsz arcp contract afn float %i.dy, %i.dx
  %i.ea = load float, ptr %i.t, align 4, !tbaa !13
  %i.eb = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !13
  %i.ed = fmul reassoc nsz arcp contract afn float %i.ec, %i.ea
  %i.ee = fadd reassoc nsz arcp contract afn float %i.ed, %i.dz
  %i.ef = load float, ptr %i.u, align 4, !tbaa !13
  %i.eg = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !13
  %i.ei = fmul reassoc nsz arcp contract afn float %i.eh, %i.ef
  %i.ej = fadd reassoc nsz arcp contract afn float %i.ee, %i.ei
  br label %dt_rgb_norm.exit

bb.r:                                             ; preds = %bb.c
  %i.ek = load float, ptr %i.x, align 4, !tbaa !13 ; 2 uses
  %i.el = fmul reassoc nsz arcp contract afn float %i.ek, f0x3E63D838
  %i.em = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.en = load float, ptr %i.em, align 4, !tbaa !13
  %i.eo = fmul reassoc nsz arcp contract afn float %i.en, f0x3F37855B
  %i.ep = fadd reassoc nsz arcp contract afn float %i.eo, %i.el
  %i.eq = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.er = load float, ptr %i.eq, align 4, !tbaa !13
  %i.es = fmul reassoc nsz arcp contract afn float %i.er, 6.061690e-02
  %i.et = fadd reassoc nsz arcp contract afn float %i.ep, %i.es
  br label %dt_rgb_norm.exit

bb.s:                                             ; preds = %bb.b
  %i.eu = load float, ptr %i.x, align 4, !tbaa !13 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !13
  %i.ex = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.eu, float %i.ew)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !13
  %i.fa = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ex, float %i.ez)
  br label %dt_rgb_norm.exit

bb.t:                                             ; preds = %bb.b
  %i.fb = load float, ptr %i.x, align 4, !tbaa !13 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !13
  %i.fe = fadd reassoc nsz arcp contract afn float %i.fd, %i.fb
  %i.ff = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !13
  %i.fh = fadd reassoc nsz arcp contract afn float %i.fe, %i.fg
  %i.fi = fmul reassoc nsz arcp contract afn float %i.fh, f0x3EAAAAAB
  br label %dt_rgb_norm.exit

bb.u:                                             ; preds = %bb.b
  %i.fj = load float, ptr %i.x, align 4, !tbaa !13 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !13
  %i.fm = fadd reassoc nsz arcp contract afn float %i.fl, %i.fj
  %i.fn = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !13
  %i.fp = fadd reassoc nsz arcp contract afn float %i.fm, %i.fo
  br label %dt_rgb_norm.exit

bb.v:                                             ; preds = %bb.b
  %i.fq = load float, ptr %i.x, align 4, !tbaa !13 ; 3 uses
  %i.fr = fmul reassoc nsz arcp contract afn float %i.fq, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !13 ; 2 uses
  %i.fu = fmul reassoc nsz arcp contract afn float %i.ft, %i.ft
  %i.fv = fadd reassoc nsz arcp contract afn float %i.fu, %i.fr
  %i.fw = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !13 ; 2 uses
  %i.fy = fmul reassoc nsz arcp contract afn float %i.fx, %i.fx
  %i.fz = fadd reassoc nsz arcp contract afn float %i.fv, %i.fy
  %i.ga = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.fz)
  br label %dt_rgb_norm.exit

bb.w:                                             ; preds = %bb.b
  %i.gb = load float, ptr %i.x, align 4, !tbaa !13 ; 4 uses
  %i.gc = fmul reassoc nsz arcp contract afn float %i.gb, %i.gb ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !13 ; 3 uses
  %i.gf = fmul reassoc nsz arcp contract afn float %i.ge, %i.ge ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !13 ; 3 uses
  %i.gi = fmul reassoc nsz arcp contract afn float %i.gh, %i.gh ; 2 uses
  %i.gj = fmul reassoc nsz arcp contract afn float %i.gc, %i.gb
  %i.gk = fmul reassoc nsz arcp contract afn float %i.gf, %i.ge
  %i.gl = fadd reassoc nsz arcp contract afn float %i.gk, %i.gj
  %i.gm = fmul reassoc nsz arcp contract afn float %i.gi, %i.gh
  %i.gn = fadd reassoc nsz arcp contract afn float %i.gl, %i.gm
  %i.go = fadd reassoc nsz arcp contract afn float %i.gf, %i.gc
  %i.gp = fadd reassoc nsz arcp contract afn float %i.go, %i.gi
  %i.gq = fdiv reassoc nsz arcp contract afn float %i.gn, %i.gp
  br label %dt_rgb_norm.exit

bb.x:                                             ; preds = %bb.b
  %i.gr = load float, ptr %i.x, align 4, !tbaa !13 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !13
  %i.gu = fadd reassoc nsz arcp contract afn float %i.gt, %i.gr
  %i.gv = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !13
  %i.gx = fadd reassoc nsz arcp contract afn float %i.gu, %i.gw
  %i.gy = fmul reassoc nsz arcp contract afn float %i.gx, f0x3EAAAAAB
  br label %dt_rgb_norm.exit

dt_rgb_norm.exit:                                 ; preds = %dt_ioppr_apply_trc.exit.i.i, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x
  %i.gz = phi float [ %i.gr, %bb.x ], [ %i.eu, %bb.s ], [ %i.fb, %bb.t ], [ %i.fj, %bb.u ], [ %i.fq, %bb.v ], [ %i.gb, %bb.w ], [ %i.ek, %bb.r ], [ %i.ah, %dt_ioppr_apply_trc.exit.i.i ], [ %i.dy, %bb.q ]
  %.0.i = phi nsz float [ %i.gy, %bb.x ], [ %i.fa, %bb.s ], [ %i.fi, %bb.t ], [ %i.fp, %bb.u ], [ %i.ga, %bb.v ], [ %i.gq, %bb.w ], [ %i.et, %bb.r ], [ %i.dw, %dt_ioppr_apply_trc.exit.i.i ], [ %i.ej, %bb.q ]
  %i.ha = fmul reassoc nsz arcp contract afn float %.0.i, %5 ; 5 uses
  %i.hb = fcmp reassoc nsz arcp contract afn ogt float %i.ha, 0.000000e+00
  br i1 %i.hb, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %dt_rgb_norm.exit
  %i.hc = fcmp reassoc nsz arcp contract afn olt float %i.ha, 1.000000e+00
  br i1 %i.hc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.hd = fmul reassoc nsz arcp contract afn float %i.ha, 6.553600e+04
  %i.he = fptosi float %i.hd to i32
  %9 = tail call i32 @llvm.smax.i32(i32 %i.he, i32 0)
  %narrow = tail call i32 @llvm.umin.i32(i32 %9, i32 65535)
  %spec.select = zext nneg i32 %narrow to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %spec.select
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !13
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.hh = load float, ptr %i.v, align 4, !tbaa !13
  %i.hi = load float, ptr %7, align 4, !tbaa !13
  %i.hj = fmul reassoc nsz arcp contract afn float %i.hi, %i.ha
  %i.hk = load float, ptr %i.w, align 4, !tbaa !13
  %i.hl = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.hj, float %i.hk)
  %i.hm = fmul reassoc nsz arcp contract afn float %i.hl, %i.hh
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.hn = phi reassoc nsz arcp contract afn float [ %i.hg, %bb.z ], [ %i.hm, %bb.aa ]
  %i.ho = fmul reassoc nsz arcp contract afn float %i.hn, %5
  %i.hp = fdiv reassoc nsz arcp contract afn float %i.ho, %i.ha
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %dt_rgb_norm.exit
  %.033 = phi nsz float [ %i.hp, %bb.ab ], [ 1.000000e+00, %dt_rgb_norm.exit ] ; 3 uses
  %i.hq = fmul reassoc nsz arcp contract afn float %i.gz, %.033
  %i.hr = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.hq, float 0.000000e+00)
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.03438
  store float %i.hr, ptr %i.hs, align 4, !tbaa !13
  %i.ht = or disjoint i64 %.03438, 1              ; 2 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ht
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !13
  %i.hw = fmul reassoc nsz arcp contract afn float %i.hv, %.033
  %i.hx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.hw, float 0.000000e+00)
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ht
  store float %i.hx, ptr %i.hy, align 4, !tbaa !13
  %i.hz = or disjoint i64 %.03438, 2              ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hz
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !13
  %i.ic = fmul reassoc nsz arcp contract afn float %i.ib, %.033
  %i.id = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ic, float 0.000000e+00)
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hz
  store float %i.id, ptr %i.ie, align 4, !tbaa !13
  %i.if = or disjoint i64 %.03438, 3              ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.if
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !13
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.if
  store float %i.ih, ptr %i.ii, align 4, !tbaa !13
  %i.ij = add nuw i64 %.03438, 4                  ; 2 uses
  %i.ik = icmp ult i64 %i.ij, %i.d
  br i1 %i.ik, label %bb.b, label %._crit_edge
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gauss_reduce(ptr noundef captures(address) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i64 noundef range(i64 -2147483648, 2147483648) %3, i64 noundef range(i64 -2147483648, 2147483648) %4) unnamed_addr #12 {
bb.a:
  %i.a = add nsw i64 %3, -1                       ; 3 uses
  %i.b = lshr i64 %i.a, 1                         ; 9 uses
  %i.c = add nuw i64 %i.b, 1                      ; 5 uses
  %i.d = add nsw i64 %4, -1
  %i.e = lshr i64 %i.d, 1                         ; 5 uses
  %i.f = shl nsw i64 %3, 4
  %i.g = mul i64 %i.f, %4
  %i.h = tail call ptr @dt_alloc_aligned(i64 noundef %i.g) #26 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.h, i64 64) ]
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @gauss_blur(ptr noundef %0, ptr noundef nonnull %i.h, i64 noundef %3, i64 noundef %4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.136) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.048 = phi ptr [ %i.h, %bb.b ], [ %0, %bb.c ]  ; 5 uses
  %i.i = shl i64 %3, 5                            ; 3 uses
  %i.j = shl i64 %i.b, 4                          ; 2 uses
  %i.k = add i64 %i.j, 16                         ; 2 uses
  %i.l = mul i64 %3, %i.e
  %i.m = add i64 %i.l, %i.b
  %i.n = shl i64 %i.m, 5
  %i.o = getelementptr i8, ptr %.048, i64 %i.n
  %scevgep = getelementptr i8, ptr %i.o, i64 16
  %i.p = mul i64 %i.e, %i.k
  %i.q = getelementptr i8, ptr %1, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 %i.j
  %scevgep73 = getelementptr i8, ptr %i.r, i64 16
  %min.iters.check = icmp ult i64 %i.a, 32
  %mul.result = shl i64 %i.b, 5
  %mul.overflow = icmp ugt i64 %i.a, 1152921504606846975
  %bound0 = icmp ult ptr %1, %scevgep
  %bound1 = icmp ult ptr %.048, %scevgep73
  %found.conflict = and i1 %bound0, %bound1
  %i.s = or i64 %i.i, %i.k
  %i.t = icmp slt i64 %i.s, 0
  %i.u = or i1 %found.conflict, %i.t
  %i.v = and i64 %i.c, 7                          ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  %i.x = select i1 %i.w, i64 8, i64 %i.v
  %n.vec = sub nsw i64 %i.c, %i.x                 ; 2 uses
  br label %.preheader58

.preheader58:                                     ; preds = %bb.d, %.unr-lcssa
  %.04761 = phi i64 [ 0, %bb.d ], [ %i.bz, %.unr-lcssa ] ; 4 uses
  %.idx56 = mul i64 %i.i, %.04761
  %invariant.gep = getelementptr i8, ptr %.048, i64 %.idx56 ; 6 uses
  %i.y = mul i64 %.04761, %i.c                    ; 4 uses
  %i.z = getelementptr i8, ptr %invariant.gep, i64 %mul.result
  %i.aa = icmp ult ptr %i.z, %invariant.gep
  %i.ab = or i1 %i.aa, %mul.overflow
  %or.cond = select i1 %min.iters.check, i1 true, i1 %i.ab
  %brmerge = select i1 %or.cond, i1 true, i1 %i.u
  br i1 %brmerge, label %.preheader.preheader, label %vector.body

.preheader.preheader:                             ; preds = %.preheader58, %vector.body
  %.04660.ph = phi i64 [ 0, %.preheader58 ], [ %n.vec, %vector.body ] ; 6 uses
  %i.ac = add i64 %i.b, %.04660.ph
  %i.ad = and i64 %i.ac, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ad, 0
  br i1 %lcmp.mod.not.not, label %.preheader.prol, label %.preheader.prol.loopexit

.preheader.prol:                                  ; preds = %.preheader.preheader
  %.idx.prol = shl i64 %.04660.ph, 5
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %.idx.prol ; 4 uses
  %i.ae = add i64 %.04660.ph, %i.y
  %.idx57.prol = shl i64 %i.ae, 4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.idx57.prol ; 4 uses
  %i.ag = load float, ptr %gep.prol, align 4, !tbaa !13
  store float %i.ag, ptr %i.af, align 4, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %gep.prol, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store float %i.ai, ptr %i.aj, align 4, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %gep.prol, i64 8
  %i.al = load float, ptr %i.ak, align 4, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store float %i.al, ptr %i.am, align 4, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %gep.prol, i64 12
  %i.ao = load float, ptr %i.an, align 4, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store float %i.ao, ptr %i.ap, align 4, !tbaa !13
  %i.aq = add nuw nsw i64 %.04660.ph, 1
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.04660.unr = phi i64 [ %.04660.ph, %.preheader.preheader ], [ %i.aq, %.preheader.prol ]
  %i.ar = icmp eq i64 %i.b, %.04660.ph
  br i1 %i.ar, label %.unr-lcssa, label %.preheader

vector.body:                                      ; preds = %.preheader58, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader58 ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.preheader58 ] ; 2 uses
  %i.as = shl <8 x i64> %vec.ind, splat (i64 5)
  %wide.gep = getelementptr i8, ptr %invariant.gep, <8 x i64> %i.as ; 4 uses
  %i.at = add i64 %index, %i.y
  %i.au = shl i64 %i.at, 4
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %i.au
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !294
  %wide.gep75 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather76 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep75, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !294
  %wide.gep77 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.masked.gather78 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep77, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !294
  %wide.gep79 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  %wide.masked.gather80 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep79, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !294
  %i.aw = shufflevector <8 x float> %wide.masked.gather, <8 x float> %wide.masked.gather76, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ax = shufflevector <8 x float> %wide.masked.gather78, <8 x float> %wide.masked.gather80, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.aw, <16 x float> %i.ax, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.av, align 4, !tbaa !13, !alias.scope !295, !noalias !294
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %.preheader.preheader, label %vector.body, !llvm.loop !280

bb.e:                                             ; preds = %.unr-lcssa
  %.not53 = icmp eq ptr %.048, %0
  br i1 %.not53, label %bb.g, label %bb.f

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.04660 = phi i64 [ %i.by, %.preheader ], [ %.04660.unr, %.preheader.prol.loopexit ] ; 4 uses
  %.idx = shl i64 %.04660, 5
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx ; 4 uses
  %i.az = add i64 %.04660, %i.y
  %.idx57 = shl i64 %i.az, 4
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %.idx57 ; 4 uses
  %i.bb = load float, ptr %gep, align 4, !tbaa !13
  store float %i.bb, ptr %i.ba, align 4, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store float %i.bd, ptr %i.be, align 4, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store float %i.bg, ptr %i.bh, align 4, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %gep, i64 12
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store float %i.bj, ptr %i.bk, align 4, !tbaa !13
  %i.bl = add nuw i64 %.04660, 1                  ; 3 uses
  %.idx.1 = shl i64 %i.bl, 5
end_hunk_1
begin_hunk_2_@gauss_reduce:bb.a
  %n.vec129 = and i64 %i.eb, -32                  ; 4 uses
  br label %vector.body130

vector.body130:                                   ; preds = %vector.ph128, %vector.body130
  %index131 = phi i64 [ 0, %vector.ph128 ], [ %index.next139, %vector.body130 ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index131 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 96
  %wide.load = load <8 x float>, ptr %i.eh, align 4, !tbaa !13, !alias.scope !298
  %wide.load132 = load <8 x float>, ptr %i.ei, align 4, !tbaa !13, !alias.scope !298
  %wide.load133 = load <8 x float>, ptr %i.ej, align 4, !tbaa !13, !alias.scope !298
  %wide.load134 = load <8 x float>, ptr %i.ek, align 4, !tbaa !13, !alias.scope !298
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index131 ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 32 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 64 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 96 ; 2 uses
  %wide.load135 = load <8 x float>, ptr %i.el, align 4, !tbaa !13, !alias.scope !299, !noalias !298
  %wide.load136 = load <8 x float>, ptr %i.em, align 4, !tbaa !13, !alias.scope !299, !noalias !298
  %wide.load137 = load <8 x float>, ptr %i.en, align 4, !tbaa !13, !alias.scope !299, !noalias !298
  %wide.load138 = load <8 x float>, ptr %i.eo, align 4, !tbaa !13, !alias.scope !299, !noalias !298
  %i.ep = fsub reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load135
  %i.eq = fsub reassoc nsz arcp contract afn <8 x float> %wide.load132, %wide.load136
  %i.er = fsub reassoc nsz arcp contract afn <8 x float> %wide.load133, %wide.load137
  %i.es = fsub reassoc nsz arcp contract afn <8 x float> %wide.load134, %wide.load138
  store <8 x float> %i.ep, ptr %i.el, align 4, !tbaa !13, !alias.scope !299, !noalias !298
  store <8 x float> %i.eq, ptr %i.em, align 4, !tbaa !13, !alias.scope !299, !noalias !298
  store <8 x float> %i.er, ptr %i.en, align 4, !tbaa !13, !alias.scope !299, !noalias !298
  store <8 x float> %i.es, ptr %i.eo, align 4, !tbaa !13, !alias.scope !299, !noalias !298
  %index.next139 = add nuw i64 %index131, 32      ; 2 uses
  %i.et = icmp eq i64 %index.next139, %n.vec129
  br i1 %i.et, label %middle.block140, label %vector.body130, !llvm.loop !290

middle.block140:                                  ; preds = %vector.body130
  %cmp.n141 = icmp eq i64 %i.eb, %n.vec129
  br i1 %cmp.n141, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block140
  %min.epilog.iters.check = icmp eq i64 %i.eg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !300

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index143.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec129, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

.lr.ph.preheader:                                 ; preds = %vector.memcheck123, %vec.epilog.iter.check
  %.062.ph = phi i64 [ %n.vec129, %vec.epilog.iter.check ], [ 0, %vector.memcheck123 ] ; 3 uses
  %xtraiter150 = and i64 %i.eb, 4                 ; 2 uses
  %lcmp.mod151.not = icmp eq i64 %xtraiter150, 0
  br i1 %lcmp.mod151.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.062.prol = phi i64 [ %i.ez, %.lr.ph.prol ], [ %.062.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.062.prol
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !13
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.062.prol ; 2 uses
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !13
  %i.ey = fsub reassoc nsz arcp contract afn float %i.ev, %i.ex
  store float %i.ey, ptr %i.ew, align 4, !tbaa !13
  %i.ez = add nuw i64 %.062.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter150
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !291

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.062.unr = phi i64 [ %.062.ph, %.lr.ph.preheader ], [ %i.ez, %.lr.ph.prol ]
  %i.fa = sub i64 %.062.ph, %i.eb
  %i.fb = icmp ugt i64 %i.fa, -8
  br i1 %i.fb, label %.loopexit, label %.lr.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index143 = phi i64 [ %index.next146, %vec.epilog.vector.body ], [ %index143.ph, %vec.epilog.vector.body.preheader ] ; 3 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index143
  %wide.load144 = load <4 x float>, ptr %i.fc, align 4, !tbaa !13, !alias.scope !298
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index143 ; 2 uses
  %wide.load145 = load <4 x float>, ptr %i.fd, align 4, !tbaa !13, !alias.scope !299, !noalias !298
  %i.fe = fsub reassoc nsz arcp contract afn <4 x float> %wide.load144, %wide.load145
  store <4 x float> %i.fe, ptr %i.fd, align 4, !tbaa !13, !alias.scope !299, !noalias !298
  %index.next146 = add nuw i64 %index143, 4       ; 2 uses
  %i.ff = icmp eq i64 %index.next146, %i.eb
  br i1 %i.ff, label %.loopexit, label %vec.epilog.vector.body, !llvm.loop !292

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.062 = phi i64 [ %i.hb, %.lr.ph ], [ %.062.unr, %.lr.ph.prol.loopexit ] ; 10 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.062
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !13
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.062 ; 2 uses
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !13
  %i.fk = fsub reassoc nsz arcp contract afn float %i.fh, %i.fj
  store float %i.fk, ptr %i.fi, align 4, !tbaa !13
  %i.fl = add nuw i64 %.062, 1                    ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fl
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !13
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fl ; 2 uses
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !13
  %i.fq = fsub reassoc nsz arcp contract afn float %i.fn, %i.fp
  store float %i.fq, ptr %i.fo, align 4, !tbaa !13
  %i.fr = add nuw i64 %.062, 2                    ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fr
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !13
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fr ; 2 uses
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !13
  %i.fw = fsub reassoc nsz arcp contract afn float %i.ft, %i.fv
  store float %i.fw, ptr %i.fu, align 4, !tbaa !13
  %i.fx = add nuw i64 %.062, 3                    ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fx
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !13
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fx ; 2 uses
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !13
  %i.gc = fsub reassoc nsz arcp contract afn float %i.fz, %i.gb
  store float %i.gc, ptr %i.ga, align 4, !tbaa !13
  %i.gd = add nuw i64 %.062, 4                    ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gd
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !13
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gd ; 2 uses
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !13
  %i.gi = fsub reassoc nsz arcp contract afn float %i.gf, %i.gh
  store float %i.gi, ptr %i.gg, align 4, !tbaa !13
  %i.gj = add nuw i64 %.062, 5                    ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gj
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !13
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gj ; 2 uses
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !13
  %i.go = fsub reassoc nsz arcp contract afn float %i.gl, %i.gn
  store float %i.go, ptr %i.gm, align 4, !tbaa !13
  %i.gp = add nuw i64 %.062, 6                    ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gp
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !13
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gp ; 2 uses
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !13
  %i.gu = fsub reassoc nsz arcp contract afn float %i.gr, %i.gt
  store float %i.gu, ptr %i.gs, align 4, !tbaa !13
  %i.gv = add nuw i64 %.062, 7                    ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gv
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !13
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gv ; 2 uses
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !13
  %i.ha = fsub reassoc nsz arcp contract afn float %i.gx, %i.gz
  store float %i.ha, ptr %i.gy, align 4, !tbaa !13
  %i.hb = add nuw i64 %.062, 8                    ; 2 uses
  %exitcond65.not.7 = icmp eq i64 %i.hb, %i.eb
  br i1 %exitcond65.not.7, label %.loopexit, label %.lr.ph, !llvm.loop !293

.loopexit:                                        ; preds = %vec.epilog.vector.body, %.lr.ph.prol.loopexit, %.lr.ph, %middle.block140, %gauss_expand.exit, %bb.g
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #9

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define hidden void @process_lut(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree readnone captures(none) %5) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !96  ; 5 uses
  %i.c = load ptr, ptr %1, align 16, !tbaa !103   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 664
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2088
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !125
  %i.h = tail call ptr @dt_ioppr_get_iop_work_profile_info(ptr noundef %i.c, ptr noundef %i.g) #26
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !100  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !301  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 262184
  %i.n = load i32, ptr %i.m, align 8, !tbaa !127  ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 262160 ; 4 uses
  br i1 %i.o, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.r = sext i32 %i.j to i64
  %i.s = sext i32 %i.l to i64
  %i.t = shl nsw i64 %i.r, 2
  %i.u = mul i64 %i.t, %i.s                       ; 2 uses
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %apply_legacy_curve.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 262164 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 262168 ; 3 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.k, %.preheader.lr.ph.i
  %.02731.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %i.cf, %bb.k ] ; 6 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02731.i
  %i.y = load float, ptr %i.x, align 4, !tbaa !13 ; 3 uses
  %i.z = fcmp reassoc nsz arcp contract afn olt float %i.y, 1.000000e+00
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.i
  %i.aa = fmul reassoc nsz arcp contract afn float %i.y, 6.553600e+04
  %i.ab = fptosi float %i.aa to i32
  %i.ac = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 0)
  %i.ad = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 65535)
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !13
  br label %bb.e

bb.d:                                             ; preds = %.preheader.i
  %i.ah = load float, ptr %i.v, align 4, !tbaa !13
  %i.ai = load float, ptr %i.q, align 8, !tbaa !13
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ai, %i.y
  %i.ak = load float, ptr %i.w, align 8, !tbaa !13
  %i.al = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aj, float %i.ak)
  %i.am = fmul reassoc nsz arcp contract afn float %i.al, %i.ah
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink41.i = phi float [ %i.am, %bb.d ], [ %i.ag, %bb.c ]
  %i.an = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink41.i, float 0.000000e+00)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02731.i
  store float %i.an, ptr %i.ao, align 4, !tbaa !13
  %i.ap = or disjoint i64 %.02731.i, 1            ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ap
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !13 ; 3 uses
  %i.as = fcmp reassoc nsz arcp contract afn olt float %i.ar, 1.000000e+00
  br i1 %i.as, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = load float, ptr %i.v, align 4, !tbaa !13
  %i.au = load float, ptr %i.q, align 8, !tbaa !13
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, %i.ar
  %i.aw = load float, ptr %i.w, align 8, !tbaa !13
  %i.ax = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.av, float %i.aw)
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, %i.at
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.az = fmul reassoc nsz arcp contract afn float %i.ar, 6.553600e+04
  %i.ba = fptosi float %i.az to i32
  %i.bb = tail call i32 @llvm.smax.i32(i32 %i.ba, i32 0)
  %i.bc = tail call i32 @llvm.umin.i32(i32 %i.bb, i32 65535)
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bd
  %i.bf = load float, ptr %i.be, align 4, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi float [ %i.bf, %bb.g ], [ %i.ay, %bb.f ]
  %i.bg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink.i, float 0.000000e+00)
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ap
  store float %i.bg, ptr %i.bh, align 4, !tbaa !13
  %i.bi = or disjoint i64 %.02731.i, 2            ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !13 ; 3 uses
  %i.bl = fcmp reassoc nsz arcp contract afn olt float %i.bk, 1.000000e+00
  br i1 %i.bl, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = load float, ptr %i.v, align 4, !tbaa !13
  %i.bn = load float, ptr %i.q, align 8, !tbaa !13
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, %i.bk
  %i.bp = load float, ptr %i.w, align 8, !tbaa !13
  %i.bq = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bo, float %i.bp)
  %i.br = fmul reassoc nsz arcp contract afn float %i.bq, %i.bm
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bs = fmul reassoc nsz arcp contract afn float %i.bk, 6.553600e+04
  %i.bt = fptosi float %i.bs to i32
  %i.bu = tail call i32 @llvm.smax.i32(i32 %i.bt, i32 0)
  %i.bv = tail call i32 @llvm.umin.i32(i32 %i.bu, i32 65535)
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bw
  %i.by = load float, ptr %i.bx, align 4, !tbaa !13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink42.i = phi float [ %i.by, %bb.j ], [ %i.br, %bb.i ]
  %i.bz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink42.i, float 0.000000e+00)
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bi
  store float %i.bz, ptr %i.ca, align 4, !tbaa !13
  %i.cb = or disjoint i64 %.02731.i, 3            ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cb
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !13
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cb
  store float %i.cd, ptr %i.ce, align 4, !tbaa !13
  %i.cf = add nuw i64 %.02731.i, 4                ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.u
  br i1 %i.cg, label %.preheader.i, label %apply_legacy_curve.exit

bb.l:                                             ; preds = %bb.a
  tail call fastcc void @apply_curve(ptr noundef %2, ptr noundef %3, i32 noundef %i.j, i32 noundef %i.l, i32 noundef %i.n, float noundef 1.000000e+00, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef %i.h)
  br label %apply_legacy_curve.exit

apply_legacy_curve.exit:                          ; preds = %bb.k, %bb.b, %bb.l
  ret void
}

; Function Attrs: nounwind uwtable
define void @process(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 262172
  %i.d = load i32, ptr %i.c, align 4, !tbaa !99
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @process_fusion(ptr poison, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @process_lut(ptr poison, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr poison)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !96  ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.d = load i32, ptr %i.c, align 4, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 262172
  store i32 %i.d, ptr %i.e, align 4, !tbaa !99
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 508
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 262176
  %i.h = load <2 x float>, ptr %i.f, align 4, !tbaa !13
  store <2 x float> %i.h, ptr %i.g, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 516
  %i.j = load i32, ptr %i.i, align 4, !tbaa !307
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 262184
  store i32 %i.j, ptr %i.k, align 8, !tbaa !127
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !308
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 492 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16   ; 2 uses
  %.not = icmp eq i32 %i.m, %i.o
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !309  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %.not57 = icmp eq i32 %i.q, %i.s
  br i1 %.not57, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.t = icmp sgt i32 %i.q, 0
  %.pre80 = load ptr, ptr %i.b, align 8, !tbaa !131 ; 4 uses
  br i1 %i.t, label %.lr.ph71, label %.loopexit

.lr.ph71:                                         ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %.pre80, i64 24 ; 3 uses
  %wide.trip.count78 = zext nneg i32 %i.q to i64  ; 3 uses
  %min.iters.check95 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check95, label %scalar.ph94.preheader, label %vector.ph96

vector.ph96:                                      ; preds = %.lr.ph71
  %n.vec97 = and i64 %wide.trip.count78, 2147483640 ; 3 uses
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph96
  %index99 = phi i64 [ 0, %vector.ph96 ], [ %index.next108, %vector.body98 ] ; 4 uses
  %i.v = or disjoint i64 %index99, 4              ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index99
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.v
  %wide.vec100 = load <8 x float>, ptr %i.w, align 4, !tbaa !13
  %wide.vec103 = load <8 x float>, ptr %i.x, align 4, !tbaa !13
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index99
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  store <8 x float> %wide.vec100, ptr %i.y, align 4, !tbaa !13
  store <8 x float> %wide.vec103, ptr %i.z, align 4, !tbaa !13
  %index.next108 = add nuw i64 %index99, 8        ; 2 uses
  %i.aa = icmp eq i64 %index.next108, %n.vec97
  br i1 %i.aa, label %middle.block109, label %vector.body98, !llvm.loop !302

middle.block109:                                  ; preds = %vector.body98
  %cmp.n110 = icmp eq i64 %n.vec97, %wide.trip.count78
  br i1 %cmp.n110, label %.loopexit, label %scalar.ph94.preheader

scalar.ph94.preheader:                            ; preds = %.lr.ph71, %middle.block109
  %indvars.iv75.ph = phi i64 [ 0, %.lr.ph71 ], [ %n.vec97, %middle.block109 ]
  br label %scalar.ph94

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !131 ; 3 uses
  %.not58 = icmp eq ptr %i.ab, null
  br i1 %.not58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 192
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !136
  tail call void @free(ptr noundef %i.ad) #26
  tail call void @free(ptr noundef nonnull %i.ab) #26
  %.pre = load i32, ptr %i.n, align 4, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ae = phi i32 [ %.pre, %bb.d ], [ %i.o, %bb.c ]
  %i.af = tail call noalias dereferenceable_or_null(200) ptr @malloc(i64 noundef 200) #25 ; 10 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 184
  store i32 65536, ptr %i.ag, align 8, !tbaa !137
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 188
  store i32 65536, ptr %i.ah, align 4, !tbaa !138
  %i.ai = tail call noalias dereferenceable_or_null(131072) ptr @malloc(i64 noundef 131072) #25
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 192
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !136
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !139
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 20 ; 2 uses
  store i8 0, ptr %i.ak, align 4, !tbaa !140
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.al, align 4, !tbaa !13
  store ptr %i.af, ptr %i.b, align 8, !tbaa !131
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !309
  %i.ap = load i32, ptr %i.n, align 4, !tbaa !16
  store i32 %i.ap, ptr %i.l, align 8, !tbaa !308
  %i.aq = load i32, ptr %i.am, align 4, !tbaa !16 ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.aq to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.aq, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.at = or disjoint i64 %index, 4               ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.at
  %wide.vec = load <8 x float>, ptr %i.au, align 4, !tbaa !13
  %wide.vec90 = load <8 x float>, ptr %i.av, align 4, !tbaa !13
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at
  store <8 x float> %wide.vec, ptr %i.aw, align 4, !tbaa !13
  store <8 x float> %wide.vec90, ptr %i.ax, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !303

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %..loopexit68_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 2 uses
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv72
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv
  %i.bb = load <2 x float>, ptr %i.az, align 4, !tbaa !13
  store <2 x float> %i.bb, ptr %i.ba, align 8, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit68_crit_edge, label %scalar.ph, !llvm.loop !304

scalar.ph94:                                      ; preds = %scalar.ph94.preheader, %scalar.ph94
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %scalar.ph94 ], [ %indvars.iv75.ph, %scalar.ph94.preheader ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv75
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv75
  %i.be = load <2 x float>, ptr %i.bc, align 4, !tbaa !13
  store <2 x float> %i.be, ptr %i.bd, align 8, !tbaa !13
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count78
  br i1 %exitcond79.not, label %.loopexit, label %scalar.ph94, !llvm.loop !305

..loopexit68_crit_edge:                           ; preds = %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %n.vec, %middle.block ], [ %indvars.iv.next, %scalar.ph ]
  %i.bf = trunc nuw i64 %indvars.iv.next.lcssa to i8
  store i8 %i.bf, ptr %i.ak, align 4, !tbaa !140
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph94, %middle.block109, %bb.e, %..loopexit68_crit_edge, %.preheader
  %i.bg = phi ptr [ %.pre80, %.preheader ], [ %i.af, %bb.e ], [ %i.af, %..loopexit68_crit_edge ], [ %.pre80, %middle.block109 ], [ %.pre80, %scalar.ph94 ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 184 ; 2 uses
  store i32 65536, ptr %i.bi, align 8, !tbaa !137
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 188
  store i32 65536, ptr %i.bj, align 4, !tbaa !138
  %i.bk = tail call i32 @CurveDataSample(ptr noundef %i.bg, ptr noundef nonnull %i.bi) #26 ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 192
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !136 ; 2 uses
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %.loopexit
  %index115 = phi i64 [ 0, %.loopexit ], [ %index.next119.1, %vector.body114 ] ; 4 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %index115 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %wide.load = load <8 x i16>, ptr %i.bn, align 2, !tbaa !141
  %wide.load116 = load <8 x i16>, ptr %i.bo, align 2, !tbaa !141
  %wide.load117 = load <8 x i16>, ptr %i.bp, align 2, !tbaa !141
  %wide.load118 = load <8 x i16>, ptr %i.bq, align 2, !tbaa !141
  %i.br = uitofp <8 x i16> %wide.load to <8 x float>
  %i.bs = uitofp <8 x i16> %wide.load116 to <8 x float>
  %i.bt = uitofp <8 x i16> %wide.load117 to <8 x float>
  %i.bu = uitofp <8 x i16> %wide.load118 to <8 x float>
  %i.bv = fmul reassoc nsz arcp contract afn <8 x float> %i.br, splat (float f0x37800000)
  %i.bw = fmul reassoc nsz arcp contract afn <8 x float> %i.bs, splat (float f0x37800000)
  %i.bx = fmul reassoc nsz arcp contract afn <8 x float> %i.bt, splat (float f0x37800000)
  %i.by = fmul reassoc nsz arcp contract afn <8 x float> %i.bu, splat (float f0x37800000)
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index115 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 96
  store <8 x float> %i.bv, ptr %i.bz, align 4, !tbaa !13
  store <8 x float> %i.bw, ptr %i.ca, align 4, !tbaa !13
  store <8 x float> %i.bx, ptr %i.cb, align 4, !tbaa !13
  store <8 x float> %i.by, ptr %i.cc, align 4, !tbaa !13
  %index.next119 = or disjoint i64 %index115, 32  ; 2 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %index.next119 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %wide.load.1 = load <8 x i16>, ptr %i.cd, align 2, !tbaa !141
  %wide.load116.1 = load <8 x i16>, ptr %i.ce, align 2, !tbaa !141
  %wide.load117.1 = load <8 x i16>, ptr %i.cf, align 2, !tbaa !141
  %wide.load118.1 = load <8 x i16>, ptr %i.cg, align 2, !tbaa !141
  %i.ch = uitofp <8 x i16> %wide.load.1 to <8 x float>
  %i.ci = uitofp <8 x i16> %wide.load116.1 to <8 x float>
  %i.cj = uitofp <8 x i16> %wide.load117.1 to <8 x float>
  %i.ck = uitofp <8 x i16> %wide.load118.1 to <8 x float>
  %i.cl = fmul reassoc nsz arcp contract afn <8 x float> %i.ch, splat (float f0x37800000)
  %i.cm = fmul reassoc nsz arcp contract afn <8 x float> %i.ci, splat (float f0x37800000)
  %i.cn = fmul reassoc nsz arcp contract afn <8 x float> %i.cj, splat (float f0x37800000)
  %i.co = fmul reassoc nsz arcp contract afn <8 x float> %i.ck, splat (float f0x37800000)
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index.next119 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 96
  store <8 x float> %i.cl, ptr %i.cp, align 4, !tbaa !13
  store <8 x float> %i.cm, ptr %i.cq, align 4, !tbaa !13
  store <8 x float> %i.cn, ptr %i.cr, align 4, !tbaa !13
  store <8 x float> %i.co, ptr %i.cs, align 4, !tbaa !13
  %index.next119.1 = add nuw nsw i64 %index115, 64 ; 2 uses
  %i.ct = icmp eq i64 %index.next119.1, 65536
  br i1 %i.ct, label %dt_draw_curve_calc_values.exit, label %vector.body114, !llvm.loop !306

dt_draw_curve_calc_values.exit:                   ; preds = %vector.body114
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !16
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr [8 x i8], ptr %1, i64 %i.cw
  %i.cy = getelementptr i8, ptr %i.cx, i64 -8
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !143 ; 11 uses
  %i.da = fmul reassoc nsz arcp contract afn float %i.cz, f0x3F333333
  %i.db = fmul reassoc nsz arcp contract afn float %i.cz, 8.000000e-01
  %i.dc = fmul reassoc nsz arcp contract afn float %i.cz, f0x3F666666
  %i.dd = fmul reassoc nsz arcp contract afn float %i.cz, 4.587520e+04
  %i.de = fptosi float %i.dd to i32
  %i.df = tail call i32 @llvm.smax.i32(i32 %i.de, i32 0)
  %i.dg = tail call i32 @llvm.umin.i32(i32 %i.df, i32 65535)
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.dh
  %i.dj = load float, ptr %i.di, align 4, !tbaa !13
  %i.dk = fmul reassoc nsz arcp contract afn float %i.cz, 5.242880e+04
  %i.dl = fptosi float %i.dk to i32
  %i.dm = tail call i32 @llvm.smax.i32(i32 %i.dl, i32 0)
  %i.dn = tail call i32 @llvm.umin.i32(i32 %i.dm, i32 65535)
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.do
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !13
  %i.dr = fmul reassoc nsz arcp contract afn float %i.cz, f0x47666666
  %i.ds = fptosi float %i.dr to i32
  %i.dt = tail call i32 @llvm.smax.i32(i32 %i.ds, i32 0)
  %i.du = tail call i32 @llvm.umin.i32(i32 %i.dt, i32 65535)
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.dv
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !13
  %i.dy = fmul reassoc nsz arcp contract afn float %i.cz, 6.553600e+04
  %i.dz = fptosi float %i.dy to i32
  %i.ea = tail call i32 @llvm.smax.i32(i32 %i.dz, i32 0)
  %i.eb = tail call i32 @llvm.umin.i32(i32 %i.ea, i32 65535)
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ec
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !13 ; 4 uses
  %i.ef = fdiv reassoc nsz arcp contract afn float %i.dj, %i.ee ; 2 uses
  %i.eg = fdiv reassoc nsz arcp contract afn float %i.da, %i.cz ; 2 uses
  %i.eh = fcmp reassoc nsz arcp contract afn ogt float %i.ef, 0.000000e+00
  %i.ei = fcmp reassoc nsz arcp contract afn ogt float %i.eg, 0.000000e+00
  %or.cond.i = and i1 %i.ei, %i.eh
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %dt_draw_curve_calc_values.exit
  %i.ej = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.ef)
  %i.ek = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.eg)
  %i.el = fdiv reassoc nsz arcp contract afn float %i.ej, %i.ek
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %dt_draw_curve_calc_values.exit
  %.135.i = phi nsz float [ %i.el, %bb.f ], [ 0.000000e+00, %dt_draw_curve_calc_values.exit ] ; 2 uses
  %.1.i = phi i32 [ 1, %bb.f ], [ 0, %dt_draw_curve_calc_values.exit ] ; 2 uses
  %i.em = fdiv reassoc nsz arcp contract afn float %i.dq, %i.ee ; 2 uses
  %i.en = fdiv reassoc nsz arcp contract afn float %i.db, %i.cz ; 2 uses
  %i.eo = fcmp reassoc nsz arcp contract afn ogt float %i.em, 0.000000e+00
  %i.ep = fcmp reassoc nsz arcp contract afn ogt float %i.en, 0.000000e+00
  %or.cond.1.i = and i1 %i.ep, %i.eo
  br i1 %or.cond.1.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.eq = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.em)
  %i.er = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.en)
  %i.es = fdiv reassoc nsz arcp contract afn float %i.eq, %i.er
  %i.et = fadd reassoc nsz arcp contract afn float %.135.i, %i.es
  %i.eu = add nuw nsw i32 %.1.i, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.135.1.i = phi nsz float [ %i.et, %bb.h ], [ %.135.i, %bb.g ] ; 2 uses
  %.1.1.i = phi i32 [ %i.eu, %bb.h ], [ %.1.i, %bb.g ] ; 2 uses
  %i.ev = fdiv reassoc nsz arcp contract afn float %i.dx, %i.ee ; 2 uses
  %i.ew = fdiv reassoc nsz arcp contract afn float %i.dc, %i.cz ; 2 uses
  %i.ex = fcmp reassoc nsz arcp contract afn ogt float %i.ev, 0.000000e+00
  %i.ey = fcmp reassoc nsz arcp contract afn ogt float %i.ew, 0.000000e+00
  %or.cond.2.i = and i1 %i.ey, %i.ex
  br i1 %or.cond.2.i, label %bb.j, label %dt_iop_estimate_exp.exit

bb.j:                                             ; preds = %bb.i
  %i.ez = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.ev)
  %i.fa = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.ew)
  %i.fb = fdiv reassoc nsz arcp contract afn float %i.ez, %i.fa
  %i.fc = fadd reassoc nsz arcp contract afn float %.135.1.i, %i.fb
  %i.fd = add nuw nsw i32 %.1.1.i, 1
  br label %dt_iop_estimate_exp.exit

dt_iop_estimate_exp.exit:                         ; preds = %bb.i, %bb.j
  %.135.2.i = phi nsz float [ %i.fc, %bb.j ], [ %.135.1.i, %bb.i ]
  %.1.2.i = phi i32 [ %i.fd, %bb.j ], [ %.1.1.i, %bb.i ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 262160
  %.not.i = icmp eq i32 %.1.2.i, 0
  %i.ff = uitofp nneg i32 %.1.2.i to float
  %i.fg = fdiv reassoc nsz arcp contract afn float %.135.2.i, %i.ff
  %.2.i = select nsz i1 %.not.i, float 1.000000e+00, float %i.fg
  %i.fh = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.cz
  store float %i.fh, ptr %i.fe, align 8, !tbaa !13
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 262164
  store float %i.ee, ptr %i.fi, align 4, !tbaa !13
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 262168
  store float %.2.i, ptr %i.fj, align 8, !tbaa !13
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_pipe(ptr noundef %0, ptr noundef %1, ptr noundef initializes((16, 24)) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(262192) ptr @calloc(i64 noundef 1, i64 noundef 262192) #27
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !310
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !33
  tail call void %i.d(ptr noundef %0, ptr noundef %i.f, ptr noundef %1, ptr noundef %2) #26
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !131  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !136
  tail call void @free(ptr noundef %i.e) #26
  tail call void @free(ptr noundef %i.c) #26
  %i.f = load ptr, ptr %i.a, align 16, !tbaa !96
  tail call void @free(ptr noundef %i.f) #26
  store ptr null, ptr %i.a, align 16, !tbaa !96
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_update(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !145 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !149
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 504 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !37
  %i.i = icmp ne i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  tail call void @gtk_widget_set_visible(ptr noundef %i.f, i32 noundef %i.j) #26
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !150
  %i.m = load i32, ptr %i.g, align 4, !tbaa !37
  %i.n = icmp ne i32 %i.m, 0
  %i.o = zext i1 %i.n to i32
  tail call void @gtk_widget_set_visible(ptr noundef %i.l, i32 noundef %i.o) #26
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !151
  tail call void @gtk_widget_queue_draw(ptr noundef %i.q) #26
  ret void
}

declare void @gtk_widget_set_visible(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @gtk_widget_queue_draw(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @init(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  tail call void @dt_iop_default_init(ptr noundef %0) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !33  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store <2 x float> splat (float 1.000000e+00), ptr %i.c, align 4, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  store i32 2, ptr %i.d, align 4, !tbaa !16
  ret void
}

declare void @dt_iop_default_init(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(60) ptr @malloc(i64 noundef 60) #25 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !152
  store <8 x i32> splat (i32 -999), ptr %i.a, align 4, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <4 x i32> splat (i32 -999), ptr %i.c, align 4, !tbaa !16
end_hunk_2
begin_hunk_3_@dt_iop_basecurve_draw:bb.a

vector.body301:                                   ; preds = %vector.body301, %vector.ph299
  %index302 = phi i64 [ 0, %vector.ph299 ], [ %index.next311, %vector.body301 ] ; 4 uses
  %i.p = or disjoint i64 %index302, 4             ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index302
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.p
  %wide.vec303 = load <8 x float>, ptr %i.q, align 4, !tbaa !13
  %wide.vec306 = load <8 x float>, ptr %i.r, align 4, !tbaa !13
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index302
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  store <8 x float> %wide.vec303, ptr %i.s, align 4, !tbaa !13
  store <8 x float> %wide.vec306, ptr %i.t, align 4, !tbaa !13
  %index.next311 = add nuw i64 %index302, 8       ; 2 uses
  %i.u = icmp eq i64 %index.next311, %n.vec300
  br i1 %i.u, label %middle.block312, label %vector.body301, !llvm.loop !320

middle.block312:                                  ; preds = %vector.body301
  %cmp.n313 = icmp eq i64 %n.vec300, %wide.trip.count256
  br i1 %cmp.n313, label %.loopexit, label %scalar.ph297.preheader

scalar.ph297.preheader:                           ; preds = %.lr.ph246, %middle.block312
  %indvars.iv253.ph = phi i64 [ 0, %.lr.ph246 ], [ %n.vec300, %middle.block312 ]
  br label %scalar.ph297

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !154  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 192
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !136
  tail call void @free(ptr noundef %i.x) #26
  tail call void @free(ptr noundef %i.v) #26
  %i.y = load i32, ptr %i.j, align 4, !tbaa !16
  %i.z = tail call noalias dereferenceable_or_null(200) ptr @malloc(i64 noundef 200) #25 ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 184
  store i32 65536, ptr %i.aa, align 8, !tbaa !137
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 188
  store i32 65536, ptr %i.ab, align 4, !tbaa !138
  %i.ac = tail call noalias dereferenceable_or_null(131072) ptr @malloc(i64 noundef 131072) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 192
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !136
  store i32 %i.y, ptr %i.z, align 8, !tbaa !139
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 20 ; 2 uses
  store i8 0, ptr %i.ae, align 4, !tbaa !140
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.af, align 4, !tbaa !13
  store ptr %i.z, ptr %i.c, align 8, !tbaa !154
  %i.ag = load i32, ptr %i.f, align 4, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !156
  %i.ai = load i32, ptr %i.j, align 4, !tbaa !16
  store i32 %i.ai, ptr %i.h, align 8, !tbaa !155
  %i.aj = load i32, ptr %i.f, align 4, !tbaa !16  ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.aj to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.aj, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.am = or disjoint i64 %index, 4               ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.am
  %wide.vec = load <8 x float>, ptr %i.an, align 4, !tbaa !13
  %wide.vec293 = load <8 x float>, ptr %i.ao, align 4, !tbaa !13
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %index
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  store <8 x float> %wide.vec, ptr %i.ap, align 4, !tbaa !13
  store <8 x float> %wide.vec293, ptr %i.aq, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !321

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %..loopexit243_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 2 uses
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv250 = phi i64 [ %indvars.iv.next251, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv250
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.au = load <2 x float>, ptr %i.as, align 4, !tbaa !13
  store <2 x float> %i.au, ptr %i.at, align 8, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next251, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit243_crit_edge, label %scalar.ph, !llvm.loop !322

scalar.ph297:                                     ; preds = %scalar.ph297.preheader, %scalar.ph297
  %indvars.iv253 = phi i64 [ %indvars.iv.next254, %scalar.ph297 ], [ %indvars.iv253.ph, %scalar.ph297.preheader ] ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv253
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv253
  %i.ax = load <2 x float>, ptr %i.av, align 4, !tbaa !13
  store <2 x float> %i.ax, ptr %i.aw, align 8, !tbaa !13
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 1 ; 2 uses
  %exitcond257.not = icmp eq i64 %indvars.iv.next254, %wide.trip.count256
  br i1 %exitcond257.not, label %.loopexit, label %scalar.ph297, !llvm.loop !323

..loopexit243_crit_edge:                          ; preds = %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %n.vec, %middle.block ], [ %indvars.iv.next, %scalar.ph ]
  %i.ay = trunc nuw i64 %indvars.iv.next.lcssa to i8
  store i8 %i.ay, ptr %i.ae, align 4, !tbaa !140
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph297, %middle.block312, %bb.c, %..loopexit243_crit_edge, %.preheader
  %i.az = phi ptr [ %.pre, %.preheader ], [ %i.z, %bb.c ], [ %i.z, %..loopexit243_crit_edge ], [ %.pre, %middle.block312 ], [ %.pre, %scalar.ph297 ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 184 ; 2 uses
  store i32 256, ptr %i.ba, align 8, !tbaa !137
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 188
  store i32 65536, ptr %i.bb, align 4, !tbaa !138
  %i.bc = tail call i32 @CurveDataSample(ptr noundef %i.az, ptr noundef nonnull %i.ba) #26 ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  store <8 x float> <float 0.000000e+00, float 3.906250e-03, float 7.812500e-03, float f0x3C400000, float 1.562500e-02, float f0x3CA00000, float 2.343750e-02, float f0x3CE00000>, ptr %i.bd, align 8, !tbaa !13
  store <8 x float> <float 3.125000e-02, float f0x3D100000, float 3.906250e-02, float f0x3D300000, float 4.687500e-02, float f0x3D500000, float 5.468750e-02, float f0x3D700000>, ptr %i.be, align 8, !tbaa !13
  store <8 x float> <float 6.250000e-02, float f0x3D880000, float 7.031250e-02, float f0x3D980000, float 7.812500e-02, float f0x3DA80000, float 8.593750e-02, float f0x3DB80000>, ptr %i.bf, align 8, !tbaa !13
  store <8 x float> <float 9.375000e-02, float f0x3DC80000, float f0x3DD00000, float f0x3DD80000, float 1.093750e-01, float f0x3DE80000, float f0x3DF00000, float f0x3DF80000>, ptr %i.bg, align 8, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  store <8 x float> <float 1.250000e-01, float f0x3E040000, float f0x3E080000, float f0x3E0C0000, float 1.406250e-01, float f0x3E140000, float f0x3E180000, float f0x3E1C0000>, ptr %i.bh, align 8, !tbaa !13
  store <8 x float> <float 1.562500e-01, float f0x3E240000, float f0x3E280000, float f0x3E2C0000, float 1.718750e-01, float f0x3E340000, float f0x3E380000, float f0x3E3C0000>, ptr %i.bi, align 8, !tbaa !13
  store <8 x float> <float 1.875000e-01, float f0x3E440000, float f0x3E480000, float f0x3E4C0000, float 2.031250e-01, float f0x3E540000, float f0x3E580000, float f0x3E5C0000>, ptr %i.bj, align 8, !tbaa !13
  store <8 x float> <float 2.187500e-01, float f0x3E640000, float f0x3E680000, float f0x3E6C0000, float 2.343750e-01, float f0x3E740000, float f0x3E780000, float f0x3E7C0000>, ptr %i.bk, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 440
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  store <8 x float> <float 2.500000e-01, float f0x3E820000, float f0x3E840000, float f0x3E860000, float 2.656250e-01, float f0x3E8A0000, float f0x3E8C0000, float f0x3E8E0000>, ptr %i.bl, align 8, !tbaa !13
  store <8 x float> <float 2.812500e-01, float f0x3E920000, float f0x3E940000, float f0x3E960000, float 2.968750e-01, float f0x3E9A0000, float f0x3E9C0000, float f0x3E9E0000>, ptr %i.bm, align 8, !tbaa !13
  store <8 x float> <float 3.125000e-01, float f0x3EA20000, float f0x3EA40000, float f0x3EA60000, float 3.281250e-01, float f0x3EAA0000, float f0x3EAC0000, float f0x3EAE0000>, ptr %i.bn, align 8, !tbaa !13
  store <8 x float> <float 3.437500e-01, float f0x3EB20000, float f0x3EB40000, float f0x3EB60000, float 3.593750e-01, float f0x3EBA0000, float f0x3EBC0000, float f0x3EBE0000>, ptr %i.bo, align 8, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 504
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 536
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 568
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 600
  store <8 x float> <float 3.750000e-01, float f0x3EC20000, float f0x3EC40000, float f0x3EC60000, float 3.906250e-01, float f0x3ECA0000, float f0x3ECC0000, float f0x3ECE0000>, ptr %i.bp, align 8, !tbaa !13
  store <8 x float> <float 4.062500e-01, float f0x3ED20000, float f0x3ED40000, float f0x3ED60000, float 4.218750e-01, float f0x3EDA0000, float f0x3EDC0000, float f0x3EDE0000>, ptr %i.bq, align 8, !tbaa !13
  store <8 x float> <float 4.375000e-01, float f0x3EE20000, float f0x3EE40000, float f0x3EE60000, float 4.531250e-01, float f0x3EEA0000, float f0x3EEC0000, float f0x3EEE0000>, ptr %i.br, align 8, !tbaa !13
  store <8 x float> <float 4.687500e-01, float f0x3EF20000, float f0x3EF40000, float f0x3EF60000, float 4.843750e-01, float f0x3EFA0000, float f0x3EFC0000, float f0x3EFE0000>, ptr %i.bs, align 8, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 632
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 664
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 696
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 728
  store <8 x float> <float 5.000000e-01, float f0x3F010000, float f0x3F020000, float f0x3F030000, float 5.156250e-01, float f0x3F050000, float f0x3F060000, float f0x3F070000>, ptr %i.bt, align 8, !tbaa !13
  store <8 x float> <float 5.312500e-01, float f0x3F090000, float f0x3F0A0000, float f0x3F0B0000, float 5.468750e-01, float f0x3F0D0000, float f0x3F0E0000, float f0x3F0F0000>, ptr %i.bu, align 8, !tbaa !13
  store <8 x float> <float 5.625000e-01, float f0x3F110000, float f0x3F120000, float f0x3F130000, float 5.781250e-01, float f0x3F150000, float f0x3F160000, float f0x3F170000>, ptr %i.bv, align 8, !tbaa !13
  store <8 x float> <float 5.937500e-01, float f0x3F190000, float f0x3F1A0000, float f0x3F1B0000, float 6.093750e-01, float f0x3F1D0000, float f0x3F1E0000, float f0x3F1F0000>, ptr %i.bw, align 8, !tbaa !13
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 760
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 792
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 824
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 856
  store <8 x float> <float 6.250000e-01, float f0x3F210000, float f0x3F220000, float f0x3F230000, float 6.406250e-01, float f0x3F250000, float f0x3F260000, float f0x3F270000>, ptr %i.bx, align 8, !tbaa !13
  store <8 x float> <float 6.562500e-01, float f0x3F290000, float f0x3F2A0000, float f0x3F2B0000, float 6.718750e-01, float f0x3F2D0000, float f0x3F2E0000, float f0x3F2F0000>, ptr %i.by, align 8, !tbaa !13
  store <8 x float> <float 6.875000e-01, float f0x3F310000, float f0x3F320000, float f0x3F330000, float 7.031250e-01, float f0x3F350000, float f0x3F360000, float f0x3F370000>, ptr %i.bz, align 8, !tbaa !13
  store <8 x float> <float 7.187500e-01, float f0x3F390000, float f0x3F3A0000, float f0x3F3B0000, float 7.343750e-01, float f0x3F3D0000, float f0x3F3E0000, float f0x3F3F0000>, ptr %i.ca, align 8, !tbaa !13
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 888
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 920
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 952
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 984
  store <8 x float> <float 7.500000e-01, float f0x3F410000, float f0x3F420000, float f0x3F430000, float 7.656250e-01, float f0x3F450000, float f0x3F460000, float f0x3F470000>, ptr %i.cb, align 8, !tbaa !13
  store <8 x float> <float 7.812500e-01, float f0x3F490000, float f0x3F4A0000, float f0x3F4B0000, float 7.968750e-01, float f0x3F4D0000, float f0x3F4E0000, float f0x3F4F0000>, ptr %i.cc, align 8, !tbaa !13
  store <8 x float> <float 8.125000e-01, float f0x3F510000, float f0x3F520000, float f0x3F530000, float 8.281250e-01, float f0x3F550000, float f0x3F560000, float f0x3F570000>, ptr %i.cd, align 8, !tbaa !13
  store <8 x float> <float 8.437500e-01, float f0x3F590000, float f0x3F5A0000, float f0x3F5B0000, float 8.593750e-01, float f0x3F5D0000, float f0x3F5E0000, float f0x3F5F0000>, ptr %i.ce, align 8, !tbaa !13
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 1016
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 1048
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 1080
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 1112
  store <8 x float> <float 8.750000e-01, float f0x3F610000, float f0x3F620000, float f0x3F630000, float 8.906250e-01, float f0x3F650000, float f0x3F660000, float f0x3F670000>, ptr %i.cf, align 8, !tbaa !13
  store <8 x float> <float 9.062500e-01, float f0x3F690000, float f0x3F6A0000, float f0x3F6B0000, float 9.218750e-01, float f0x3F6D0000, float f0x3F6E0000, float f0x3F6F0000>, ptr %i.cg, align 8, !tbaa !13
  store <8 x float> <float 9.375000e-01, float f0x3F710000, float f0x3F720000, float f0x3F730000, float 9.531250e-01, float f0x3F750000, float f0x3F760000, float f0x3F770000>, ptr %i.ch, align 8, !tbaa !13
  store <8 x float> <float 9.687500e-01, float f0x3F790000, float f0x3F7A0000, float f0x3F7B0000, float 9.843750e-01, float f0x3F7D0000, float f0x3F7E0000, float f0x3F7F0000>, ptr %i.ci, align 8, !tbaa !13
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 1144 ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.az, i64 192
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !136 ; 32 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %wide.load = load <8 x i16>, ptr %i.cl, align 2, !tbaa !141
  %wide.load325 = load <8 x i16>, ptr %i.cm, align 2, !tbaa !141
  %wide.load326 = load <8 x i16>, ptr %i.cn, align 2, !tbaa !141
  %wide.load327 = load <8 x i16>, ptr %i.co, align 2, !tbaa !141
  %i.cp = uitofp <8 x i16> %wide.load to <8 x float>
  %i.cq = uitofp <8 x i16> %wide.load325 to <8 x float>
  %i.cr = uitofp <8 x i16> %wide.load326 to <8 x float>
  %i.cs = uitofp <8 x i16> %wide.load327 to <8 x float>
  %i.ct = fmul reassoc nsz arcp contract afn <8 x float> %i.cp, splat (float f0x37800000)
  %i.cu = fmul reassoc nsz arcp contract afn <8 x float> %i.cq, splat (float f0x37800000)
  %i.cv = fmul reassoc nsz arcp contract afn <8 x float> %i.cr, splat (float f0x37800000)
  %i.cw = fmul reassoc nsz arcp contract afn <8 x float> %i.cs, splat (float f0x37800000)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 1176
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 1208
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 1240
  store <8 x float> %i.ct, ptr %i.cj, align 8, !tbaa !13
  store <8 x float> %i.cu, ptr %i.cx, align 8, !tbaa !13
  store <8 x float> %i.cv, ptr %i.cy, align 8, !tbaa !13
  store <8 x float> %i.cw, ptr %i.cz, align 8, !tbaa !13
  %i.da = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cl, i64 80
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cl, i64 112
  %wide.load.1 = load <8 x i16>, ptr %i.da, align 2, !tbaa !141
  %wide.load325.1 = load <8 x i16>, ptr %i.db, align 2, !tbaa !141
  %wide.load326.1 = load <8 x i16>, ptr %i.dc, align 2, !tbaa !141
  %wide.load327.1 = load <8 x i16>, ptr %i.dd, align 2, !tbaa !141
  %i.de = uitofp <8 x i16> %wide.load.1 to <8 x float>
  %i.df = uitofp <8 x i16> %wide.load325.1 to <8 x float>
  %i.dg = uitofp <8 x i16> %wide.load326.1 to <8 x float>
  %i.dh = uitofp <8 x i16> %wide.load327.1 to <8 x float>
  %i.di = fmul reassoc nsz arcp contract afn <8 x float> %i.de, splat (float f0x37800000)
  %i.dj = fmul reassoc nsz arcp contract afn <8 x float> %i.df, splat (float f0x37800000)
  %i.dk = fmul reassoc nsz arcp contract afn <8 x float> %i.dg, splat (float f0x37800000)
  %i.dl = fmul reassoc nsz arcp contract afn <8 x float> %i.dh, splat (float f0x37800000)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 1272
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 1304
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 1336
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 1368
  store <8 x float> %i.di, ptr %i.dm, align 8, !tbaa !13
  store <8 x float> %i.dj, ptr %i.dn, align 8, !tbaa !13
  store <8 x float> %i.dk, ptr %i.do, align 8, !tbaa !13
  store <8 x float> %i.dl, ptr %i.dp, align 8, !tbaa !13
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cl, i64 128
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cl, i64 144
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cl, i64 160
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cl, i64 176
  %wide.load.2 = load <8 x i16>, ptr %i.dq, align 2, !tbaa !141
  %wide.load325.2 = load <8 x i16>, ptr %i.dr, align 2, !tbaa !141
  %wide.load326.2 = load <8 x i16>, ptr %i.ds, align 2, !tbaa !141
  %wide.load327.2 = load <8 x i16>, ptr %i.dt, align 2, !tbaa !141
  %i.du = uitofp <8 x i16> %wide.load.2 to <8 x float>
  %i.dv = uitofp <8 x i16> %wide.load325.2 to <8 x float>
  %i.dw = uitofp <8 x i16> %wide.load326.2 to <8 x float>
  %i.dx = uitofp <8 x i16> %wide.load327.2 to <8 x float>
  %i.dy = fmul reassoc nsz arcp contract afn <8 x float> %i.du, splat (float f0x37800000)
  %i.dz = fmul reassoc nsz arcp contract afn <8 x float> %i.dv, splat (float f0x37800000)
  %i.ea = fmul reassoc nsz arcp contract afn <8 x float> %i.dw, splat (float f0x37800000)
  %i.eb = fmul reassoc nsz arcp contract afn <8 x float> %i.dx, splat (float f0x37800000)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 1400
  %i.ed = getelementptr inbounds nuw i8, ptr %i.c, i64 1432
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 1464
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 1496
  store <8 x float> %i.dy, ptr %i.ec, align 8, !tbaa !13
  store <8 x float> %i.dz, ptr %i.ed, align 8, !tbaa !13
  store <8 x float> %i.ea, ptr %i.ee, align 8, !tbaa !13
  store <8 x float> %i.eb, ptr %i.ef, align 8, !tbaa !13
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cl, i64 192
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cl, i64 208
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cl, i64 224
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cl, i64 240
  %wide.load.3 = load <8 x i16>, ptr %i.eg, align 2, !tbaa !141
  %wide.load325.3 = load <8 x i16>, ptr %i.eh, align 2, !tbaa !141
  %wide.load326.3 = load <8 x i16>, ptr %i.ei, align 2, !tbaa !141
  %wide.load327.3 = load <8 x i16>, ptr %i.ej, align 2, !tbaa !141
  %i.ek = uitofp <8 x i16> %wide.load.3 to <8 x float>
  %i.el = uitofp <8 x i16> %wide.load325.3 to <8 x float>
  %i.em = uitofp <8 x i16> %wide.load326.3 to <8 x float>
  %i.en = uitofp <8 x i16> %wide.load327.3 to <8 x float>
  %i.eo = fmul reassoc nsz arcp contract afn <8 x float> %i.ek, splat (float f0x37800000)
  %i.ep = fmul reassoc nsz arcp contract afn <8 x float> %i.el, splat (float f0x37800000)
  %i.eq = fmul reassoc nsz arcp contract afn <8 x float> %i.em, splat (float f0x37800000)
  %i.er = fmul reassoc nsz arcp contract afn <8 x float> %i.en, splat (float f0x37800000)
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 1528
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 1560
  %i.eu = getelementptr inbounds nuw i8, ptr %i.c, i64 1592
  %i.ev = getelementptr inbounds nuw i8, ptr %i.c, i64 1624
  store <8 x float> %i.eo, ptr %i.es, align 8, !tbaa !13
  store <8 x float> %i.ep, ptr %i.et, align 8, !tbaa !13
  store <8 x float> %i.eq, ptr %i.eu, align 8, !tbaa !13
  store <8 x float> %i.er, ptr %i.ev, align 8, !tbaa !13
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cl, i64 256
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cl, i64 272
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cl, i64 288
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cl, i64 304
  %wide.load.4 = load <8 x i16>, ptr %i.ew, align 2, !tbaa !141
  %wide.load325.4 = load <8 x i16>, ptr %i.ex, align 2, !tbaa !141
  %wide.load326.4 = load <8 x i16>, ptr %i.ey, align 2, !tbaa !141
  %wide.load327.4 = load <8 x i16>, ptr %i.ez, align 2, !tbaa !141
  %i.fa = uitofp <8 x i16> %wide.load.4 to <8 x float>
  %i.fb = uitofp <8 x i16> %wide.load325.4 to <8 x float>
  %i.fc = uitofp <8 x i16> %wide.load326.4 to <8 x float>
  %i.fd = uitofp <8 x i16> %wide.load327.4 to <8 x float>
  %i.fe = fmul reassoc nsz arcp contract afn <8 x float> %i.fa, splat (float f0x37800000)
  %i.ff = fmul reassoc nsz arcp contract afn <8 x float> %i.fb, splat (float f0x37800000)
  %i.fg = fmul reassoc nsz arcp contract afn <8 x float> %i.fc, splat (float f0x37800000)
  %i.fh = fmul reassoc nsz arcp contract afn <8 x float> %i.fd, splat (float f0x37800000)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.c, i64 1656
  %i.fj = getelementptr inbounds nuw i8, ptr %i.c, i64 1688
  %i.fk = getelementptr inbounds nuw i8, ptr %i.c, i64 1720
  %i.fl = getelementptr inbounds nuw i8, ptr %i.c, i64 1752
  store <8 x float> %i.fe, ptr %i.fi, align 8, !tbaa !13
  store <8 x float> %i.ff, ptr %i.fj, align 8, !tbaa !13
  store <8 x float> %i.fg, ptr %i.fk, align 8, !tbaa !13
  store <8 x float> %i.fh, ptr %i.fl, align 8, !tbaa !13
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cl, i64 320
  %i.fn = getelementptr inbounds nuw i8, ptr %i.cl, i64 336
  %i.fo = getelementptr inbounds nuw i8, ptr %i.cl, i64 352
  %i.fp = getelementptr inbounds nuw i8, ptr %i.cl, i64 368
  %wide.load.5 = load <8 x i16>, ptr %i.fm, align 2, !tbaa !141
  %wide.load325.5 = load <8 x i16>, ptr %i.fn, align 2, !tbaa !141
  %wide.load326.5 = load <8 x i16>, ptr %i.fo, align 2, !tbaa !141
  %wide.load327.5 = load <8 x i16>, ptr %i.fp, align 2, !tbaa !141
  %i.fq = uitofp <8 x i16> %wide.load.5 to <8 x float>
  %i.fr = uitofp <8 x i16> %wide.load325.5 to <8 x float>
  %i.fs = uitofp <8 x i16> %wide.load326.5 to <8 x float>
  %i.ft = uitofp <8 x i16> %wide.load327.5 to <8 x float>
  %i.fu = fmul reassoc nsz arcp contract afn <8 x float> %i.fq, splat (float f0x37800000)
  %i.fv = fmul reassoc nsz arcp contract afn <8 x float> %i.fr, splat (float f0x37800000)
  %i.fw = fmul reassoc nsz arcp contract afn <8 x float> %i.fs, splat (float f0x37800000)
  %i.fx = fmul reassoc nsz arcp contract afn <8 x float> %i.ft, splat (float f0x37800000)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.c, i64 1784
  %i.fz = getelementptr inbounds nuw i8, ptr %i.c, i64 1816
  %i.ga = getelementptr inbounds nuw i8, ptr %i.c, i64 1848
  %i.gb = getelementptr inbounds nuw i8, ptr %i.c, i64 1880
  store <8 x float> %i.fu, ptr %i.fy, align 8, !tbaa !13
  store <8 x float> %i.fv, ptr %i.fz, align 8, !tbaa !13
  store <8 x float> %i.fw, ptr %i.ga, align 8, !tbaa !13
  store <8 x float> %i.fx, ptr %i.gb, align 8, !tbaa !13
  %i.gc = getelementptr inbounds nuw i8, ptr %i.cl, i64 384
  %i.gd = getelementptr inbounds nuw i8, ptr %i.cl, i64 400
  %i.ge = getelementptr inbounds nuw i8, ptr %i.cl, i64 416
  %i.gf = getelementptr inbounds nuw i8, ptr %i.cl, i64 432
  %wide.load.6 = load <8 x i16>, ptr %i.gc, align 2, !tbaa !141
  %wide.load325.6 = load <8 x i16>, ptr %i.gd, align 2, !tbaa !141
  %wide.load326.6 = load <8 x i16>, ptr %i.ge, align 2, !tbaa !141
  %wide.load327.6 = load <8 x i16>, ptr %i.gf, align 2, !tbaa !141
  %i.gg = uitofp <8 x i16> %wide.load.6 to <8 x float>
  %i.gh = uitofp <8 x i16> %wide.load325.6 to <8 x float>
  %i.gi = uitofp <8 x i16> %wide.load326.6 to <8 x float>
  %i.gj = uitofp <8 x i16> %wide.load327.6 to <8 x float>
  %i.gk = fmul reassoc nsz arcp contract afn <8 x float> %i.gg, splat (float f0x37800000)
  %i.gl = fmul reassoc nsz arcp contract afn <8 x float> %i.gh, splat (float f0x37800000)
  %i.gm = fmul reassoc nsz arcp contract afn <8 x float> %i.gi, splat (float f0x37800000)
  %i.gn = fmul reassoc nsz arcp contract afn <8 x float> %i.gj, splat (float f0x37800000)
  %i.go = getelementptr inbounds nuw i8, ptr %i.c, i64 1912
  %i.gp = getelementptr inbounds nuw i8, ptr %i.c, i64 1944
  %i.gq = getelementptr inbounds nuw i8, ptr %i.c, i64 1976
  %i.gr = getelementptr inbounds nuw i8, ptr %i.c, i64 2008
  store <8 x float> %i.gk, ptr %i.go, align 8, !tbaa !13
  store <8 x float> %i.gl, ptr %i.gp, align 8, !tbaa !13
  store <8 x float> %i.gm, ptr %i.gq, align 8, !tbaa !13
  store <8 x float> %i.gn, ptr %i.gr, align 8, !tbaa !13
  %i.gs = getelementptr inbounds nuw i8, ptr %i.cl, i64 448
  %i.gt = getelementptr inbounds nuw i8, ptr %i.cl, i64 464
  %i.gu = getelementptr inbounds nuw i8, ptr %i.cl, i64 480
  %i.gv = getelementptr inbounds nuw i8, ptr %i.cl, i64 496
  %wide.load.7 = load <8 x i16>, ptr %i.gs, align 2, !tbaa !141
  %wide.load325.7 = load <8 x i16>, ptr %i.gt, align 2, !tbaa !141
  %wide.load326.7 = load <8 x i16>, ptr %i.gu, align 2, !tbaa !141
  %wide.load327.7 = load <8 x i16>, ptr %i.gv, align 2, !tbaa !141
  %i.gw = uitofp <8 x i16> %wide.load.7 to <8 x float>
  %i.gx = uitofp <8 x i16> %wide.load325.7 to <8 x float>
  %i.gy = uitofp <8 x i16> %wide.load326.7 to <8 x float>
  %i.gz = uitofp <8 x i16> %wide.load327.7 to <8 x float>
  %i.ha = fmul reassoc nsz arcp contract afn <8 x float> %i.gw, splat (float f0x37800000)
  %i.hb = fmul reassoc nsz arcp contract afn <8 x float> %i.gx, splat (float f0x37800000)
  %i.hc = fmul reassoc nsz arcp contract afn <8 x float> %i.gy, splat (float f0x37800000)
  %i.hd = fmul reassoc nsz arcp contract afn <8 x float> %i.gz, splat (float f0x37800000)
  %i.he = getelementptr inbounds nuw i8, ptr %i.c, i64 2040
  %i.hf = getelementptr inbounds nuw i8, ptr %i.c, i64 2072
  %i.hg = getelementptr inbounds nuw i8, ptr %i.c, i64 2104
  %i.hh = getelementptr inbounds nuw i8, ptr %i.c, i64 2136
  store <8 x float> %i.ha, ptr %i.he, align 8, !tbaa !13
  store <8 x float> %i.hb, ptr %i.hf, align 8, !tbaa !13
  store <8 x float> %i.hc, ptr %i.hg, align 8, !tbaa !13
  store <8 x float> %i.hd, ptr %i.hh, align 8, !tbaa !13
  %i.hi = sext i32 %i.g to i64
  %i.hj = getelementptr [8 x i8], ptr %i.e, i64 %i.hi
  %i.hk = getelementptr i8, ptr %i.hj, i64 -8
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !143 ; 12 uses
  %i.hm = fmul reassoc nsz arcp contract afn float %i.hl, f0x3F333333
  %i.hn = fmul reassoc nsz arcp contract afn float %i.hl, 8.000000e-01
  %i.ho = fmul reassoc nsz arcp contract afn float %i.hl, f0x3F666666
  %i.hp = fmul reassoc nsz arcp contract afn float %i.hl, 1.792000e+02
  %i.hq = fptosi float %i.hp to i32
  %i.hr = tail call i32 @llvm.smax.i32(i32 %i.hq, i32 0)
  %i.hs = tail call i32 @llvm.umin.i32(i32 %i.hr, i32 255)
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ht
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !13
  %i.hw = fmul reassoc nsz arcp contract afn float %i.hl, 2.048000e+02
  %i.hx = fptosi float %i.hw to i32
  %i.hy = tail call i32 @llvm.smax.i32(i32 %i.hx, i32 0)
  %i.hz = tail call i32 @llvm.umin.i32(i32 %i.hy, i32 255)
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ia
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !13
  %i.id = fmul reassoc nsz arcp contract afn float %i.hl, 2.304000e+02
  %i.ie = fptosi float %i.id to i32
  %i.if = tail call i32 @llvm.smax.i32(i32 %i.ie, i32 0)
  %i.ig = tail call i32 @llvm.umin.i32(i32 %i.if, i32 255)
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ih
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !13
  %i.ik = fmul reassoc nsz arcp contract afn float %i.hl, 2.560000e+02
  %i.il = fptosi float %i.ik to i32
  %i.im = tail call i32 @llvm.smax.i32(i32 %i.il, i32 0)
  %i.in = tail call i32 @llvm.umin.i32(i32 %i.im, i32 255)
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.io
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !13 ; 4 uses
  %i.ir = fdiv reassoc nsz arcp contract afn float %i.hv, %i.iq ; 2 uses
  %i.is = fdiv reassoc nsz arcp contract afn float %i.hm, %i.hl ; 2 uses
  %i.it = fcmp reassoc nsz arcp contract afn ogt float %i.ir, 0.000000e+00
  %i.iu = fcmp reassoc nsz arcp contract afn ogt float %i.is, 0.000000e+00
  %or.cond.i = and i1 %i.iu, %i.it
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.iv = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.ir)
  %i.iw = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.is)
  %i.ix = fdiv reassoc nsz arcp contract afn float %i.iv, %i.iw
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit
  %.135.i = phi nsz float [ %i.ix, %bb.d ], [ 0.000000e+00, %.loopexit ] ; 2 uses
  %.1.i = phi i32 [ 1, %bb.d ], [ 0, %.loopexit ] ; 2 uses
  %i.iy = fdiv reassoc nsz arcp contract afn float %i.ic, %i.iq ; 2 uses
  %i.iz = fdiv reassoc nsz arcp contract afn float %i.hn, %i.hl ; 2 uses
  %i.ja = fcmp reassoc nsz arcp contract afn ogt float %i.iy, 0.000000e+00
  %i.jb = fcmp reassoc nsz arcp contract afn ogt float %i.iz, 0.000000e+00
  %or.cond.1.i = and i1 %i.jb, %i.ja
  br i1 %or.cond.1.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.jc = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.iy)
  %i.jd = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.iz)
  %i.je = fdiv reassoc nsz arcp contract afn float %i.jc, %i.jd
  %i.jf = fadd reassoc nsz arcp contract afn float %.135.i, %i.je
  %i.jg = add nuw nsw i32 %.1.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.135.1.i = phi nsz float [ %i.jf, %bb.f ], [ %.135.i, %bb.e ] ; 2 uses
  %.1.1.i = phi i32 [ %i.jg, %bb.f ], [ %.1.i, %bb.e ] ; 2 uses
  %i.jh = fdiv reassoc nsz arcp contract afn float %i.ij, %i.iq ; 2 uses
  %i.ji = fdiv reassoc nsz arcp contract afn float %i.ho, %i.hl ; 2 uses
  %i.jj = fcmp reassoc nsz arcp contract afn ogt float %i.jh, 0.000000e+00
  %i.jk = fcmp reassoc nsz arcp contract afn ogt float %i.ji, 0.000000e+00
  %or.cond.2.i = and i1 %i.jk, %i.jj
  br i1 %or.cond.2.i, label %bb.h, label %dt_iop_estimate_exp.exit

bb.h:                                             ; preds = %bb.g
  %i.jl = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.jh)
  %i.jm = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.ji)
  %i.jn = fdiv reassoc nsz arcp contract afn float %i.jl, %i.jm
  %i.jo = fadd reassoc nsz arcp contract afn float %.135.1.i, %i.jn
  %i.jp = add nuw nsw i32 %.1.1.i, 1
  br label %dt_iop_estimate_exp.exit

dt_iop_estimate_exp.exit:                         ; preds = %bb.g, %bb.h
  %.135.2.i = phi nsz float [ %i.jo, %bb.h ], [ %.135.1.i, %bb.g ]
  %.1.2.i = phi i32 [ %i.jp, %bb.h ], [ %.1.1.i, %bb.g ] ; 2 uses
  %.not.i = icmp eq i32 %.1.2.i, 0
  %i.jq = uitofp nneg i32 %.1.2.i to float
  %i.jr = fdiv reassoc nsz arcp contract afn float %.135.2.i, %i.jq
  %.2.i = select nsz i1 %.not.i, float 1.000000e+00, float %i.jr
  %i.js = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !161
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 1432
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !167
  %i.jv = fmul reassoc nsz arcp contract afn double %i.ju, 5.000000e+00
  %i.jw = fptosi double %i.jv to i32              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #26
  %i.jx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !169 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !324 ; 2 uses
  %i.kb = sitofp reassoc nsz arcp contract afn i32 %i.jy to double
  %i.kc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !161
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 1440
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !325 ; 2 uses
  %i.kf = fmul reassoc nsz arcp contract afn double %i.ke, %i.kb
  %i.kg = fptosi double %i.kf to i32
  %i.kh = sitofp reassoc nsz arcp contract afn i32 %i.ka to double
  %i.ki = fmul reassoc nsz arcp contract afn double %i.ke, %i.kh
  %i.kj = fptosi double %i.ki to i32
  %i.kk = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.kg, i32 noundef %i.kj) #26 ; 4 uses
  %i.kl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !161
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 1440
  %i.kn = load double, ptr %i.km, align 8, !tbaa !325 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.kk, double noundef %i.kn, double noundef %i.kn) #26
  %i.ko = call ptr @cairo_create(ptr noundef %i.kk) #26 ; 63 uses
  call void @cairo_set_source_rgb(ptr noundef %i.ko, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 2.000000e-01) #26
  call void @cairo_paint(ptr noundef %i.ko) #26
  %i.kp = sitofp reassoc nsz arcp contract afn i32 %i.jw to double ; 2 uses
  call void @cairo_translate(ptr noundef %i.ko, double noundef %i.kp, double noundef %i.kp) #26
  %i.kq = shl nsw i32 %i.jw, 1                    ; 2 uses
  %i.kr = sub nsw i32 %i.jy, %i.kq                ; 7 uses
  %i.ks = sub nsw i32 %i.ka, %i.kq                ; 6 uses
  %i.kt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !161
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 1432
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !167
  call void @cairo_set_line_width(ptr noundef %i.ko, double noundef %i.kv) #26
  call void @cairo_set_source_rgb(ptr noundef %i.ko, double noundef 1.000000e-01, double noundef 1.000000e-01, double noundef 1.000000e-01) #26
  %i.kw = sitofp reassoc nsz arcp contract afn i32 %i.kr to double ; 3 uses
  %i.kx = sitofp reassoc nsz arcp contract afn i32 %i.ks to double ; 4 uses
  call void @cairo_rectangle(ptr noundef %i.ko, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.kw, double noundef %i.kx) #26
  call void @cairo_stroke(ptr noundef %i.ko) #26
  call void @cairo_set_source_rgb(ptr noundef %i.ko, double noundef 3.000000e-01, double noundef 3.000000e-01, double noundef 3.000000e-01) #26
  call void @cairo_rectangle(ptr noundef %i.ko, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.kw, double noundef %i.kx) #26
  call void @cairo_fill(ptr noundef %i.ko) #26
  call void @cairo_translate(ptr noundef %i.ko, double noundef 0.000000e+00, double noundef %i.kx) #26
  %i.ky = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 4 uses
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !158
  %i.la = icmp sgt i32 %i.kz, -1
  br i1 %i.la, label %bb.i, label %bb.j

bb.i:                                             ; preds = %dt_iop_estimate_exp.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.lb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !326
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 336
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !333
  %i.le = call ptr @pango_font_description_copy_static(ptr noundef %i.ld) #26 ; 6 uses
  call void @pango_font_description_set_weight(ptr noundef %i.le, i32 noundef 700) #26
  call void @pango_font_description_set_absolute_size(ptr noundef %i.le, double noundef 1.024000e+03) #26
  %i.lf = call ptr @pango_cairo_create_layout(ptr noundef %i.ko) #26 ; 8 uses
  call void @pango_layout_set_font_description(ptr noundef %i.lf, ptr noundef %i.le) #26
  %i.lg = load i32, ptr %i.ky, align 8, !tbaa !158
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.lh
  %i.lj = load <2 x float>, ptr %i.li, align 4, !tbaa !13
  %i.lk = fmul reassoc nsz arcp contract afn <2 x float> %i.lj, splat (float 1.000000e+02) ; 2 uses
  %i.ll = extractelement <2 x float> %i.lk, i64 0 ; 2 uses
  %i.lm = extractelement <2 x float> %i.lk, i64 1 ; 2 uses
  %i.ln = fsub reassoc nsz arcp contract afn float %i.lm, %i.ll
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %i.a, ptr noundef nonnull align 1 dereferenceable(27) @.str.137, i64 27, i1 false)
  call void @pango_layout_set_text(ptr noundef %i.lf, ptr noundef nonnull %i.a, i32 noundef -1) #26
  call void @pango_layout_get_pixel_extents(ptr noundef %i.lf, ptr noundef nonnull %4, ptr noundef null) #26
  %i.lo = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !335
  %i.lq = sitofp reassoc nsz arcp contract afn i32 %i.lp to double
  %i.lr = fmul reassoc nsz arcp contract afn double %i.kw, 1.024000e+03
  %i.ls = fdiv reassoc nsz arcp contract afn double %i.lr, %i.lq
  call void @pango_font_description_set_absolute_size(ptr noundef %i.le, double noundef %i.ls) #26
  call void @pango_layout_set_font_description(ptr noundef %i.lf, ptr noundef %i.le) #26
  %i.lt = fpext reassoc nsz arcp contract afn float %i.ll to double
  %i.lu = fpext reassoc nsz arcp contract afn float %i.lm to double
  %i.lv = fpext reassoc nsz arcp contract afn float %i.ln to double
  %i.lw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 30, ptr noundef nonnull @.str.138, double noundef %i.lt, double noundef %i.lu, double noundef %i.lv) #26 ; 0 uses
  call void @cairo_set_source_rgb(ptr noundef %i.ko, double noundef 1.000000e-01, double noundef 1.000000e-01, double noundef 1.000000e-01) #26
  call void @pango_layout_set_text(ptr noundef %i.lf, ptr noundef nonnull %i.a, i32 noundef -1) #26
  call void @pango_layout_get_pixel_extents(ptr noundef %i.lf, ptr noundef nonnull %4, ptr noundef null) #26
  %i.lx = sitofp reassoc nsz arcp contract afn i32 %i.kr to float
  %i.ly = fmul reassoc nsz arcp contract afn float %i.lx, 9.800000e-01
  %i.lz = load i32, ptr %i.lo, align 4, !tbaa !335
  %i.ma = sitofp reassoc nsz arcp contract afn i32 %i.lz to float
  %i.mb = load i32, ptr %4, align 4, !tbaa !336
  %i.mc = sitofp reassoc nsz arcp contract afn i32 %i.mb to float
  %i.md = fadd reassoc nsz arcp contract afn float %i.ma, %i.mc
  %i.me = fsub reassoc nsz arcp contract afn float %i.ly, %i.md
  %i.mf = fpext reassoc nsz arcp contract afn float %i.me to double
  %i.mg = fmul reassoc nsz arcp contract afn double %i.kx, -2.000000e-02
  %i.mh = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !337
  %i.mj = sitofp reassoc nsz arcp contract afn i32 %i.mi to double
  %i.mk = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !338
  %i.mm = sitofp reassoc nsz arcp contract afn i32 %i.ml to double
  %i.mn = fadd reassoc nsz arcp contract afn double %i.mj, %i.mm
  %i.mo = fsub reassoc nsz arcp contract afn double %i.mg, %i.mn
  call void @cairo_move_to(ptr noundef %i.ko, double noundef %i.mf, double noundef %i.mo) #26
  call void @pango_cairo_show_layout(ptr noundef %i.ko, ptr noundef %i.lf) #26
  call void @cairo_stroke(ptr noundef %i.ko) #26
  call void @pango_font_description_free(ptr noundef %i.le) #26
  call void @g_object_unref(ptr noundef %i.lf) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %dt_iop_estimate_exp.exit
  call void @cairo_scale(ptr noundef %i.ko, double noundef 1.000000e+00, double noundef -1.000000e+00) #26
  %i.mp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !161
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 1432
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !167
  %i.ms = fmul reassoc nsz arcp contract afn double %i.mr, 4.000000e-01
  call void @cairo_set_line_width(ptr noundef %i.ko, double noundef %i.ms) #26
  call void @cairo_set_source_rgb(ptr noundef %i.ko, double noundef 1.000000e-01, double noundef 1.000000e-01, double noundef 1.000000e-01) #26
  %i.mt = getelementptr inbounds nuw i8, ptr %i.c, i64 6264 ; 6 uses
  %i.mu = load float, ptr %i.mt, align 8, !tbaa !159 ; 2 uses
  %i.mv = fcmp reassoc nsz arcp contract afn une float %i.mu, 0.000000e+00
  br i1 %i.mv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.mw = fadd reassoc nsz arcp contract afn float %i.mu, 1.000000e+00 ; 2 uses
  %i.mx = sitofp reassoc nsz arcp contract afn i32 %i.kr to float ; 2 uses
  %i.my = sitofp reassoc nsz arcp contract afn i32 %i.ks to float ; 2 uses
  %i.mz = fmul reassoc nsz arcp contract afn float %i.mw, 2.500000e-01 ; 2 uses
  %i.na = fadd reassoc nsz arcp contract afn float %i.mz, -2.500000e-01 ; 2 uses
  %i.nb = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.mw)
  %i.nc = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.nb ; 2 uses
  %invariant.op.i = fmul reassoc nsz arcp contract afn float %i.nc, %i.mx ; 3 uses
  %factor.op.fmul.i = fmul reassoc nsz arcp contract afn float %i.nc, %i.my ; 3 uses
  %i.nd = fpext reassoc nsz arcp contract afn float %i.my to double ; 3 uses
  %i.ne = fpext reassoc nsz arcp contract afn float %i.mx to double ; 3 uses
  %i.nf = fadd reassoc nsz arcp contract afn float %i.mz, 7.500000e-01
  %i.ng = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.nf) ; 2 uses
  %.reass30.i = fmul reassoc nsz arcp contract afn float %i.ng, %factor.op.fmul.i
  %.reass.i = fmul reassoc nsz arcp contract afn float %i.ng, %invariant.op.i
  %i.nh = fpext reassoc nsz arcp contract afn float %.reass.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.ko, double noundef %i.nh, double noundef 0.000000e+00) #26
  call void @cairo_line_to(ptr noundef %i.ko, double noundef %i.nh, double noundef %i.nd) #26
  call void @cairo_stroke(ptr noundef %i.ko) #26
  %i.ni = fpext reassoc nsz arcp contract afn float %.reass30.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.ko, double noundef 0.000000e+00, double noundef %i.ni) #26
  call void @cairo_line_to(ptr noundef %i.ko, double noundef %i.ne, double noundef %i.ni) #26
  call void @cairo_stroke(ptr noundef %i.ko) #26
  %i.nj = fmul reassoc nsz arcp contract afn float %i.na, 2.000000e+00
  %i.nk = fadd reassoc nsz arcp contract afn float %i.nj, 1.000000e+00
  %i.nl = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.nk) ; 2 uses
  %.reass30.1.i = fmul reassoc nsz arcp contract afn float %i.nl, %factor.op.fmul.i
  %.reass.1.i = fmul reassoc nsz arcp contract afn float %i.nl, %invariant.op.i
  %i.nm = fpext reassoc nsz arcp contract afn float %.reass.1.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.ko, double noundef %i.nm, double noundef 0.000000e+00) #26
  call void @cairo_line_to(ptr noundef %i.ko, double noundef %i.nm, double noundef %i.nd) #26
  call void @cairo_stroke(ptr noundef %i.ko) #26
  %i.nn = fpext reassoc nsz arcp contract afn float %.reass30.1.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.ko, double noundef 0.000000e+00, double noundef %i.nn) #26
  call void @cairo_line_to(ptr noundef %i.ko, double noundef %i.ne, double noundef %i.nn) #26
  call void @cairo_stroke(ptr noundef %i.ko) #26
  %i.no = fmul reassoc nsz arcp contract afn float %i.na, 3.000000e+00
  %i.np = fadd reassoc nsz arcp contract afn float %i.no, 1.000000e+00
  %i.nq = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.np) ; 2 uses
  %.reass30.2.i = fmul reassoc nsz arcp contract afn float %i.nq, %factor.op.fmul.i
  %.reass.2.i = fmul reassoc nsz arcp contract afn float %i.nq, %invariant.op.i
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.nr = sitofp reassoc nsz arcp contract afn i32 %i.kr to float ; 4 uses
  %i.ns = sitofp reassoc nsz arcp contract afn i32 %i.ks to float ; 4 uses
  %invariant.op.i194 = fmul reassoc nsz arcp contract afn float %i.nr, 2.500000e-01
  %factor.op.fmul.i195 = fmul reassoc nsz arcp contract afn float %i.ns, 2.500000e-01
  %i.nt = fpext reassoc nsz arcp contract afn float %i.ns to double ; 3 uses
  %i.nu = fpext reassoc nsz arcp contract afn float %i.nr to double ; 3 uses
  %i.nv = fpext reassoc nsz arcp contract afn float %invariant.op.i194 to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.ko, double noundef %i.nv, double noundef 0.000000e+00) #26
  call void @cairo_line_to(ptr noundef %i.ko, double noundef %i.nv, double noundef %i.nt) #26
  call void @cairo_stroke(ptr noundef %i.ko) #26
  %i.nw = fpext reassoc nsz arcp contract afn float %factor.op.fmul.i195 to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.ko, double noundef 0.000000e+00, double noundef %i.nw) #26
  call void @cairo_line_to(ptr noundef %i.ko, double noundef %i.nu, double noundef %i.nw) #26
  call void @cairo_stroke(ptr noundef %i.ko) #26
  %.reass31.1.i = fmul reassoc nsz arcp contract afn float %i.ns, 5.000000e-01
  %.reass.1.i196 = fmul reassoc nsz arcp contract afn float %i.nr, 5.000000e-01
  %i.nx = fpext reassoc nsz arcp contract afn float %.reass.1.i196 to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.ko, double noundef %i.nx, double noundef 0.000000e+00) #26
  call void @cairo_line_to(ptr noundef %i.ko, double noundef %i.nx, double noundef %i.nt) #26
  call void @cairo_stroke(ptr noundef %i.ko) #26
  %i.ny = fpext reassoc nsz arcp contract afn float %.reass31.1.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.ko, double noundef 0.000000e+00, double noundef %i.ny) #26
  call void @cairo_line_to(ptr noundef %i.ko, double noundef %i.nu, double noundef %i.ny) #26
  call void @cairo_stroke(ptr noundef %i.ko) #26
  %.reass31.2.i = fmul reassoc nsz arcp contract afn float %i.ns, 7.500000e-01
  %.reass.2.i197 = fmul reassoc nsz arcp contract afn float %i.nr, 7.500000e-01
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.reass.2.i197.sink = phi float [ %.reass.2.i197, %bb.l ], [ %.reass.2.i, %bb.k ]
  %.sink286 = phi double [ %i.nt, %bb.l ], [ %i.nd, %bb.k ]
  %.reass31.2.i.sink = phi float [ %.reass31.2.i, %bb.l ], [ %.reass30.2.i, %bb.k ]
  %.sink = phi double [ %i.nu, %bb.l ], [ %i.ne, %bb.k ]
  %i.nz = fpext reassoc nsz arcp contract afn float %.reass.2.i197.sink to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.ko, double noundef %i.nz, double noundef 0.000000e+00) #26
  call void @cairo_line_to(ptr noundef %i.ko, double noundef %i.nz, double noundef %.sink286) #26
  call void @cairo_stroke(ptr noundef %i.ko) #26
  %i.oa = fpext reassoc nsz arcp contract afn float %.reass31.2.i.sink to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.ko, double noundef 0.000000e+00, double noundef %i.oa) #26
  call void @cairo_line_to(ptr noundef %i.ko, double noundef %.sink, double noundef %i.oa) #26
  call void @cairo_stroke(ptr noundef %i.ko) #26
  %i.ob = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !161
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 1432
  %i.od = load double, ptr %i.oc, align 8, !tbaa !167
  call void @cairo_set_line_width(ptr noundef %i.ko, double noundef %i.od) #26
  call void @cairo_set_source_rgb(ptr noundef %i.ko, double noundef 6.000000e-01, double noundef 6.000000e-01, double noundef 6.000000e-01) #26
  %i.oe = icmp sgt i32 %i.g, 0
  br i1 %i.oe, label %.lr.ph248, label %._crit_edge

.lr.ph248:                                        ; preds = %bb.m
  %i.of = sitofp reassoc nsz arcp contract afn i32 %i.kr to float
  %i.og = sitofp reassoc nsz arcp contract afn i32 %i.ks to float
  %wide.trip.count261 = zext nneg i32 %i.g to i64
  br label %bb.n

._crit_edge:                                      ; preds = %to_log.exit199, %bb.m
  %i.oh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !161
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 1432
  %i.oj = load double, ptr %i.oi, align 8, !tbaa !167
  call void @cairo_set_line_width(ptr noundef %i.ko, double noundef %i.oj) #26
  %i.ok = load i32, ptr %i.ky, align 8, !tbaa !158
  %i.ol = icmp sgt i32 %i.ok, -1
  br i1 %i.ol, label %bb.p, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre267 = sitofp reassoc nsz arcp contract afn i32 %i.ks to float
  br label %bb.r

bb.n:                                             ; preds = %.lr.ph248, %to_log.exit199
  %indvars.iv258 = phi i64 [ 0, %.lr.ph248 ], [ %indvars.iv.next259, %to_log.exit199 ] ; 2 uses
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv258 ; 3 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !143 ; 2 uses
  %i.oo = load float, ptr %i.mt, align 8, !tbaa !159 ; 4 uses
  %i.op = fcmp reassoc nsz arcp contract afn ogt float %i.oo, 0.000000e+00
  br i1 %i.op, label %bb.o, label %to_log.exit

to_log.exit:                                      ; preds = %bb.n
  %i.oq = getelementptr inbounds nuw i8, ptr %i.om, i64 4
  %i.or = load float, ptr %i.oq, align 4, !tbaa !170
  br label %to_log.exit199

bb.o:                                             ; preds = %bb.n
  %i.os = fmul reassoc nsz arcp contract afn float %i.oo, %i.on
  %i.ot = fadd reassoc nsz arcp contract afn float %i.os, 1.000000e+00
  %i.ou = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.ot)
  %i.ov = fadd reassoc nsz arcp contract afn float %i.oo, 1.000000e+00
  %i.ow = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.ov) ; 2 uses
  %i.ox = fdiv reassoc nsz arcp contract afn float %i.ou, %i.ow
  %i.oy = getelementptr inbounds nuw i8, ptr %i.om, i64 4
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !170
  %i.pa = fmul reassoc nsz arcp contract afn float %i.oz, %i.oo
  %i.pb = fadd reassoc nsz arcp contract afn float %i.pa, 1.000000e+00
  %i.pc = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.pb)
  %i.pd = fdiv reassoc nsz arcp contract afn float %i.pc, %i.ow
  br label %to_log.exit199

to_log.exit199:                                   ; preds = %to_log.exit, %bb.o
  %.0.i224 = phi float [ %i.ox, %bb.o ], [ %i.on, %to_log.exit ]
  %.0.i198 = phi nsz float [ %i.pd, %bb.o ], [ %i.or, %to_log.exit ]
  %i.pe = fmul reassoc nsz arcp contract afn float %.0.i224, %i.of
  %i.pf = fpext reassoc nsz arcp contract afn float %i.pe to double
  %i.pg = fmul reassoc nsz arcp contract afn float %.0.i198, %i.og
  %i.ph = fpext reassoc nsz arcp contract afn float %i.pg to double
  %i.pi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !161
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 1432
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !167
  %i.pl = fmul reassoc nsz arcp contract afn double %i.pk, 3.000000e+00
  call void @cairo_arc(ptr noundef %i.ko, double noundef %i.pf, double noundef %i.ph, double noundef %i.pl, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #26
  call void @cairo_stroke(ptr noundef %i.ko) #26
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 1 ; 2 uses
  %exitcond262.not = icmp eq i64 %indvars.iv.next259, %wide.trip.count261
  br i1 %exitcond262.not, label %._crit_edge, label %bb.n

bb.p:                                             ; preds = %._crit_edge
  call void @cairo_set_source_rgb(ptr noundef %i.ko, double noundef 9.000000e-01, double noundef 9.000000e-01, double noundef 9.000000e-01) #26
  %i.pm = load i32, ptr %i.ky, align 8, !tbaa !158
  %i.pn = sext i32 %i.pm to i64
  %i.po = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.pn ; 3 uses
  %i.pp = load float, ptr %i.po, align 4, !tbaa !143 ; 2 uses
  %i.pq = load float, ptr %i.mt, align 8, !tbaa !159 ; 4 uses
  %i.pr = fcmp reassoc nsz arcp contract afn ogt float %i.pq, 0.000000e+00
  br i1 %i.pr, label %bb.q, label %to_log.exit201

to_log.exit201:                                   ; preds = %bb.p
  %i.ps = getelementptr inbounds nuw i8, ptr %i.po, i64 4
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !170
  br label %to_log.exit203

bb.q:                                             ; preds = %bb.p
  %i.pu = fmul reassoc nsz arcp contract afn float %i.pq, %i.pp
  %i.pv = fadd reassoc nsz arcp contract afn float %i.pu, 1.000000e+00
  %i.pw = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.pv)
  %i.px = fadd reassoc nsz arcp contract afn float %i.pq, 1.000000e+00
  %i.py = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.px) ; 2 uses
  %i.pz = fdiv reassoc nsz arcp contract afn float %i.pw, %i.py
  %i.qa = getelementptr inbounds nuw i8, ptr %i.po, i64 4
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !170
  %i.qc = fmul reassoc nsz arcp contract afn float %i.qb, %i.pq
  %i.qd = fadd reassoc nsz arcp contract afn float %i.qc, 1.000000e+00
  %i.qe = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.qd)
  %i.qf = fdiv reassoc nsz arcp contract afn float %i.qe, %i.py
  br label %to_log.exit203

to_log.exit203:                                   ; preds = %to_log.exit201, %bb.q
  %.0.i200227 = phi float [ %i.pz, %bb.q ], [ %i.pp, %to_log.exit201 ]
  %.0.i202 = phi nsz float [ %i.qf, %bb.q ], [ %i.pt, %to_log.exit201 ]
  %i.qg = sitofp reassoc nsz arcp contract afn i32 %i.kr to float
  %i.qh = fmul reassoc nsz arcp contract afn float %.0.i200227, %i.qg
  %i.qi = fpext reassoc nsz arcp contract afn float %i.qh to double
  %i.qj = sitofp reassoc nsz arcp contract afn i32 %i.ks to float ; 2 uses
  %i.qk = fmul reassoc nsz arcp contract afn float %.0.i202, %i.qj
  %i.ql = fpext reassoc nsz arcp contract afn float %i.qk to double
  %i.qm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !161
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 1432
  %i.qo = load double, ptr %i.qn, align 8, !tbaa !167
  %i.qp = fmul reassoc nsz arcp contract afn double %i.qo, 4.000000e+00
  call void @cairo_arc(ptr noundef %i.ko, double noundef %i.qi, double noundef %i.ql, double noundef %i.qp, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #26
  call void @cairo_stroke(ptr noundef %i.ko) #26
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge._crit_edge, %to_log.exit203
  %.pre-phi = phi float [ %.pre267, %._crit_edge._crit_edge ], [ %i.qj, %to_log.exit203 ] ; 2 uses
  %i.qq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !161
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 1432
  %i.qs = load double, ptr %i.qr, align 8, !tbaa !167
  %i.qt = fmul reassoc nsz arcp contract afn double %i.qs, 2.000000e+00
  call void @cairo_set_line_width(ptr noundef %i.ko, double noundef %i.qt) #26
  call void @cairo_set_source_rgb(ptr noundef %i.ko, double noundef 9.000000e-01, double noundef 9.000000e-01, double noundef 9.000000e-01) #26
  %i.qu = load float, ptr %i.cj, align 8, !tbaa !13 ; 2 uses
  %i.qv = load float, ptr %i.mt, align 8, !tbaa !159 ; 3 uses
  %i.qw = fcmp reassoc nsz arcp contract afn ogt float %i.qv, 0.000000e+00
  br i1 %i.qw, label %bb.s, label %to_log.exit205

bb.s:                                             ; preds = %bb.r
  %i.qx = fmul reassoc nsz arcp contract afn float %i.qv, %i.qu
  %i.qy = fadd reassoc nsz arcp contract afn float %i.qx, 1.000000e+00
  %i.qz = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.qy)
  %i.ra = fadd reassoc nsz arcp contract afn float %i.qv, 1.000000e+00
  %i.rb = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.ra)
  %i.rc = fdiv reassoc nsz arcp contract afn float %i.qz, %i.rb
  br label %to_log.exit205

to_log.exit205:                                   ; preds = %bb.r, %bb.s
  %.0.i204 = phi nsz float [ %i.rc, %bb.s ], [ %i.qu, %bb.r ]
  %i.rd = fmul reassoc nsz arcp contract afn float %.0.i204, %.pre-phi
  %i.re = fpext reassoc nsz arcp contract afn float %i.rd to double
  call void @cairo_move_to(ptr noundef %i.ko, double noundef 0.000000e+00, double noundef %i.re) #26
  %i.rf = sitofp reassoc nsz arcp contract afn i32 %i.kr to float
  %i.rg = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.hl
  br label %bb.u

bb.t:                                             ; preds = %to_log.exit209
  call void @cairo_stroke(ptr noundef %i.ko) #26
  call void @cairo_destroy(ptr noundef %i.ko) #26
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.kk, double noundef 0.000000e+00, double noundef 0.000000e+00) #26
  call void @cairo_paint(ptr noundef %1) #26
  call void @cairo_surface_destroy(ptr noundef %i.kk) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret i32 1

bb.u:                                             ; preds = %to_log.exit205, %to_log.exit209
  %indvars.iv263 = phi i64 [ 1, %to_log.exit205 ], [ %indvars.iv.next264, %to_log.exit209 ] ; 3 uses
  %i.rh = trunc nuw nsw i64 %indvars.iv263 to i32
  %i.ri = uitofp nsz nneg i32 %i.rh to float
  %i.rj = fmul reassoc nsz arcp contract afn float %i.ri, f0x3B808081 ; 6 uses
  %i.rk = fcmp reassoc nsz arcp contract afn ogt float %i.rj, %i.hl
  br i1 %i.rk, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.rl = fmul reassoc nsz arcp contract afn float %i.rj, %i.rg
  %i.rm = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.rl, float %.2.i)
  %i.rn = fmul reassoc nsz arcp contract afn float %i.rm, %i.iq ; 2 uses
  %i.ro = load float, ptr %i.mt, align 8, !tbaa !159 ; 4 uses
  %i.rp = fcmp reassoc nsz arcp contract afn ogt float %i.ro, 0.000000e+00
  br i1 %i.rp, label %bb.w, label %to_log.exit209

bb.w:                                             ; preds = %bb.v
  %i.rq = fmul reassoc nsz arcp contract afn float %i.ro, %i.rj
  %i.rr = fadd reassoc nsz arcp contract afn float %i.rq, 1.000000e+00
  %i.rs = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.rr)
  %i.rt = fadd reassoc nsz arcp contract afn float %i.ro, 1.000000e+00
  %i.ru = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.rt) ; 2 uses
  %i.rv = fdiv reassoc nsz arcp contract afn float %i.rs, %i.ru
  %i.rw = fmul reassoc nsz arcp contract afn float %i.ro, %i.rn
  %i.rx = fadd reassoc nsz arcp contract afn float %i.rw, 1.000000e+00
  %i.ry = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.rx)
  %i.rz = fdiv reassoc nsz arcp contract afn float %i.ry, %i.ru
  br label %to_log.exit209

bb.x:                                             ; preds = %bb.u
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv263
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !13 ; 2 uses
  %i.sc = load float, ptr %i.mt, align 8, !tbaa !159 ; 4 uses
  %i.sd = fcmp reassoc nsz arcp contract afn ogt float %i.sc, 0.000000e+00
  br i1 %i.sd, label %bb.y, label %to_log.exit209

bb.y:                                             ; preds = %bb.x
  %i.se = fmul reassoc nsz arcp contract afn float %i.sc, %i.rj
  %i.sf = fadd reassoc nsz arcp contract afn float %i.se, 1.000000e+00
  %i.sg = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.sf)
  %i.sh = fadd reassoc nsz arcp contract afn float %i.sc, 1.000000e+00
  %i.si = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.sh) ; 2 uses
  %i.sj = fdiv reassoc nsz arcp contract afn float %i.sg, %i.si
  %i.sk = fmul reassoc nsz arcp contract afn float %i.sc, %i.sb
  %i.sl = fadd reassoc nsz arcp contract afn float %i.sk, 1.000000e+00
  %i.sm = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.sl)
  %i.sn = fdiv reassoc nsz arcp contract afn float %i.sm, %i.si
  br label %to_log.exit209

to_log.exit209:                                   ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.0.i210233.sink = phi float [ %i.rj, %bb.v ], [ %i.rv, %bb.w ], [ %i.sj, %bb.y ], [ %i.rj, %bb.x ]
  %.0.i212.sink = phi float [ %i.rn, %bb.v ], [ %i.rz, %bb.w ], [ %i.sn, %bb.y ], [ %i.sb, %bb.x ]
  %i.so = fmul reassoc nsz arcp contract afn float %.0.i210233.sink, %i.rf
  %i.sp = fpext reassoc nsz arcp contract afn float %i.so to double
  %i.sq = fmul reassoc nsz arcp contract afn float %.0.i212.sink, %.pre-phi
  %i.sr = fpext reassoc nsz arcp contract afn float %i.sq to double
  call void @cairo_line_to(ptr noundef %i.ko, double noundef %i.sp, double noundef %i.sr) #26
  %indvars.iv.next264 = add nuw nsw i64 %indvars.iv263, 1 ; 2 uses
  %exitcond266.not = icmp eq i64 %indvars.iv.next264, 256
  br i1 %exitcond266.not, label %bb.t, label %bb.u
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @dt_iop_basecurve_button_press(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #5 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144  ; 48 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 688
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !33  ; 17 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !145 ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 480 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !16   ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.j = load i32, ptr %i.i, align 4, !tbaa !358
  switch i32 %i.j, label %bb.ai [
    i32 1, label %bb.b
    i32 3, label %bb.ae
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %1, align 8, !tbaa !359    ; 2 uses
  %i.l = icmp eq i32 %i.k, 4
  br i1 %i.l, label %bb.c, label %bb.ac

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !360
  %i.o = tail call i32 @gtk_accelerator_get_default_mod_mask() #26
  %i.p = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !16
  %i.q = or i32 %i.p, %i.n
  %i.r = and i32 %i.q, %i.o
  %i.s = icmp eq i32 %i.r, 4
  %i.t = icmp slt i32 %i.h, 20
  %or.cond = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.d, label %thread-pre-split

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 15 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !158
  %i.w = icmp eq i32 %i.v, -1
  br i1 %i.w, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !161
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1432
  %i.z = load double, ptr %i.y, align 8, !tbaa !167
  %i.aa = fmul reassoc nsz arcp contract afn double %i.z, 5.000000e+00
  %i.ab = fptosi double %i.aa to i32              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #26
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !169
  %i.ae = shl nsw i32 %i.ab, 1
  %i.af = sub nsw i32 %i.ad, %i.ae                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = sitofp reassoc nsz arcp contract afn i32 %i.ab to double
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.aj = load <2 x double>, ptr %i.ag, align 8, !tbaa !157
  %i.ak = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = fsub reassoc nsz arcp contract afn <2 x double> %i.aj, %i.al ; 2 uses
  store <2 x double> %i.am, ptr %i.ai, align 8, !tbaa !157
  %i.an = sitofp reassoc nsz arcp contract afn i32 %i.af to double ; 2 uses
  %i.ao = extractelement <2 x double> %i.am, i64 0 ; 3 uses
  %i.ap = fcmp reassoc nsz arcp contract afn ogt double %i.ao, %i.an
  %i.aq = fcmp reassoc nsz arcp contract afn olt double %i.ao, 0.000000e+00
  %spec.select = select reassoc nsz arcp contract afn i1 %i.aq, double 0.000000e+00, double %i.ao
  %i.ar = select reassoc nsz arcp contract afn i1 %i.ap, double %i.an, double %spec.select
  %i.as = sitofp reassoc nsz arcp contract afn i32 %i.af to float
  %i.at = fpext reassoc nsz arcp contract afn float %i.as to double
  %i.au = fdiv reassoc nsz arcp contract afn double %i.ar, %i.at
  %i.av = fptrunc reassoc nsz arcp contract afn double %i.au to float ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 6264 ; 2 uses
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !159 ; 3 uses
  %i.ay = fcmp reassoc nsz arcp contract afn ogt float %i.ax, 0.000000e+00
  br i1 %i.ay, label %bb.f, label %to_lin.exit

bb.f:                                             ; preds = %bb.e
  %i.az = fadd reassoc nsz arcp contract afn float %i.ax, -1.000000e+00
  %i.ba = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.az, float %i.av)
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ba, -1.000000e+00
  %i.bc = fdiv reassoc nsz arcp contract afn float %i.bb, %i.ax
  br label %to_lin.exit

to_lin.exit:                                      ; preds = %bb.e, %bb.f
  %.0.i = phi nsz float [ %i.bc, %bb.f ], [ %i.av, %bb.e ] ; 6 uses
  %i.bd = load float, ptr %i.b, align 4, !tbaa !143
  %i.be = fcmp reassoc nsz arcp contract afn ogt float %i.bd, %.0.i
  br i1 %i.be, label %.thread.thread160, label %.preheader

.preheader:                                       ; preds = %to_lin.exit
  %i.bf = icmp sgt i32 %i.h, 1
  br i1 %i.bf, label %.lr.ph170.preheader, label %.thread

.lr.ph170.preheader:                              ; preds = %.preheader
  %wide.trip.count184 = zext nneg i32 %i.h to i64
  br label %.lr.ph170

.lr.ph170:                                        ; preds = %.lr.ph170.preheader, %bb.g
  %indvars.iv181 = phi i64 [ 1, %.lr.ph170.preheader ], [ %indvars.iv.next182, %bb.g ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv181
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !143
  %i.bi = fcmp reassoc nsz arcp contract afn ogt float %i.bh, %.0.i
  br i1 %i.bi, label %.thread.thread.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph170
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond185.not = icmp eq i64 %indvars.iv.next182, %wide.trip.count184
  br i1 %exitcond185.not, label %.thread, label %.lr.ph170

.thread:                                          ; preds = %bb.g, %.preheader
  %i.bj = icmp sgt i32 %i.h, 0
  br i1 %i.bj, label %.thread.thread, label %.thread161

.thread.thread.loopexit:                          ; preds = %.lr.ph170
  %i.bk = trunc nuw nsw i64 %indvars.iv181 to i32
  br label %.thread.thread

.thread.thread:                                   ; preds = %.thread.thread.loopexit, %.thread
  %i.bl = phi i32 [ %i.h, %.thread ], [ %i.bk, %.thread.thread.loopexit ] ; 2 uses
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr [8 x i8], ptr %i.b, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 -8
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !143
  %i.bq = fsub reassoc nsz arcp contract afn float %.0.i, %i.bp
  %i.br = fpext reassoc nsz arcp contract afn float %i.bq to double
  %i.bs = fcmp reassoc nsz arcp contract afn ugt double %i.br, 2.500000e-02
  br i1 %i.bs, label %.thread.thread160, label %bb.ab

.thread.thread160:                                ; preds = %to_lin.exit, %.thread.thread
  %i.bt = phi i32 [ %i.bl, %.thread.thread ], [ 0, %to_lin.exit ] ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.h
  br i1 %i.bu, label %bb.h, label %.thread161

bb.h:                                             ; preds = %.thread.thread160
  %i.bv = sext i32 %i.bt to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !143
  %i.by = fsub reassoc nsz arcp contract afn float %i.bx, %.0.i
  %i.bz = fpext reassoc nsz arcp contract afn float %i.by to double
  %i.ca = fcmp reassoc nsz arcp contract afn ugt double %i.bz, 2.500000e-02
  br i1 %i.ca, label %.thread161, label %bb.ab

.thread161:                                       ; preds = %.thread, %bb.h, %.thread.thread160
  %i.cb = load ptr, ptr %i.f, align 8, !tbaa !154
  %i.cc = call reassoc nsz arcp contract afn fastcc float @dt_draw_curve_calc_value(ptr noundef %i.cb, float noundef %.0.i) ; 15 uses
  %i.cd = fcmp reassoc nsz arcp contract afn ult float %i.cc, 0.000000e+00
  %i.ce = fcmp reassoc nsz arcp contract afn ugt float %i.cc, 1.000000e+00
  %or.cond156 = or i1 %i.cd, %i.ce
  br i1 %or.cond156, label %bb.ab, label %bb.i

bb.i:                                             ; preds = %.thread161
  %i.cf = call fastcc i32 @_add_node(ptr noundef nonnull %i.b, ptr noundef nonnull %i.g, float noundef %.0.i, float noundef %i.cc) ; 12 uses
  %i.cg = icmp sgt i32 %i.h, 0
  br i1 %i.cg, label %.lr.ph173, label %._crit_edge174

.lr.ph173:                                        ; preds = %bb.i
  %i.ch = load float, ptr %i.aw, align 8, !tbaa !159 ; 8 uses
  %i.ci = fcmp reassoc nsz arcp contract afn ogt float %i.ch, 0.000000e+00
  %wide.trip.count194 = zext nneg i32 %i.h to i64 ; 12 uses
  br i1 %i.ci, label %to_log.exit.us.preheader, label %to_log.exit.preheader

to_log.exit.preheader:                            ; preds = %.lr.ph173
  %min.iters.check257 = icmp ult i32 %i.h, 9
  br i1 %min.iters.check257, label %to_log.exit.preheader330, label %vector.memcheck258

to_log.exit.preheader330:                         ; preds = %bb.m, %vector.memcheck258, %to_log.exit.preheader
  %indvars.iv186.ph = phi i64 [ 0, %vector.memcheck258 ], [ 0, %to_log.exit.preheader ], [ %n.vec263, %bb.m ] ; 4 uses
  %i.cj = sub nsw i64 %wide.trip.count194, %indvars.iv186.ph
  %xtraiter334 = and i64 %i.cj, 3                 ; 2 uses
  %lcmp.mod335.not = icmp eq i64 %xtraiter334, 0
  br i1 %lcmp.mod335.not, label %to_log.exit.prol.loopexit, label %to_log.exit.prol

to_log.exit.prol:                                 ; preds = %to_log.exit.preheader330, %bb.k
  %indvars.iv186.prol = phi i64 [ %indvars.iv.next187.prol, %bb.k ], [ %indvars.iv186.ph, %to_log.exit.preheader330 ] ; 2 uses
  %prol.iter336 = phi i64 [ %prol.iter336.next, %bb.k ], [ 0, %to_log.exit.preheader330 ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv186.prol
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !170
  %i.cn = fsub reassoc nsz arcp contract afn float %i.cc, %i.cm ; 2 uses
end_hunk_3
begin_hunk_4_@dt_iop_basecurve_button_press:bb.a
  br i1 %min.iters.check208, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.jy = and i64 %i.jx, 12
  %n.vec = and i64 %i.jx, 8589934576              ; 4 uses
  %i.jz = add nuw nsw i64 %n.vec, %i.jt
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ka = add nuw i64 %index, %i.jt               ; 4 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kd = getelementptr [8 x i8], ptr %i.b, i64 %i.ka
  %i.ke = getelementptr i8, ptr %i.kd, i64 72
  %wide.vec = load <16 x float>, ptr %i.kc, align 4, !tbaa !13
  %wide.vec210 = load <16 x float>, ptr %i.ke, align 4, !tbaa !13
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ka
  %i.kg = getelementptr [8 x i8], ptr %i.b, i64 %i.ka
  %i.kh = getelementptr i8, ptr %i.kg, i64 64
  store <16 x float> %wide.vec, ptr %i.kf, align 4, !tbaa !13
  store <16 x float> %wide.vec210, ptr %i.kh, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ki = icmp eq i64 %index.next, %n.vec
  br i1 %i.ki, label %middle.block, label %vector.body, !llvm.loop !354

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jx, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.jy, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !175

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec214 = and i64 %i.jx, 8589934588           ; 3 uses
  %i.kj = add nuw nsw i64 %n.vec214, %i.jt
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index215 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next220, %vec.epilog.vector.body ] ; 2 uses
  %i.kk = add nuw i64 %index215, %i.jt            ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %wide.vec216 = load <8 x float>, ptr %i.km, align 4, !tbaa !13
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.kk
  store <8 x float> %wide.vec216, ptr %i.kn, align 4, !tbaa !13
  %index.next220 = add nuw i64 %index215, 4       ; 2 uses
  %i.ko = icmp eq i64 %index.next220, %n.vec214
  br i1 %i.ko, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !355

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n221 = icmp eq i64 %i.jx, %n.vec214
  br i1 %cmp.n221, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.jt, %iter.check ], [ %i.jz, %vec.epilog.iter.check ], [ %i.kj, %vec.epilog.middle.block ]
  br label %.lr.ph

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.kp = uitofp i1 %i.jp to float                ; 2 uses
  %i.kq = zext nneg i32 %i.jn to i64
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.kq ; 2 uses
  store float %i.kp, ptr %i.kr, align 4, !tbaa !143
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  store float %i.kp, ptr %i.ks, align 4, !tbaa !170
  %i.kt = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !151
  tail call void @gtk_widget_queue_draw(ptr noundef %i.ku) #26
  %i.kv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !174
  tail call void @dt_dev_add_history_item_target(ptr noundef %i.kv, ptr noundef nonnull %2, i32 noundef 1, ptr noundef %0) #26
  br label %bb.ai

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader162
  %i.kw = sext i32 %i.jq to i64
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.kw
  store <2 x float> zeroinitializer, ptr %i.kx, align 4, !tbaa !13
  store i32 -2, ptr %i.jm, align 8, !tbaa !158
  %i.ky = load i32, ptr %i.g, align 4, !tbaa !16
  %i.kz = add nsw i32 %i.ky, -1
  store i32 %i.kz, ptr %i.g, align 4, !tbaa !16
  %i.la = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !151
  tail call void @gtk_widget_queue_draw(ptr noundef %i.lb) #26
  %i.lc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !174
  tail call void @dt_dev_add_history_item_target(ptr noundef %i.lc, ptr noundef nonnull %2, i32 noundef 1, ptr noundef %0) #26
  br label %bb.ai

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.lf = load <2 x float>, ptr %i.ld, align 4, !tbaa !13
  store <2 x float> %i.lf, ptr %i.le, align 4, !tbaa !13
  %i.lg = trunc nuw i64 %indvars.iv.next to i32
  %i.lh = icmp sgt i32 %i.jq, %i.lg
  br i1 %i.lh, label %.lr.ph, label %._crit_edge, !llvm.loop !356

bb.ai:                                            ; preds = %bb.ac, %bb.ae, %bb.a, %._crit_edge, %bb.ah, %._crit_edge168, %bb.ab
  %.0142 = phi i32 [ 1, %bb.ab ], [ 1, %._crit_edge168 ], [ 1, %._crit_edge ], [ 1, %bb.ah ], [ 0, %bb.a ], [ 0, %bb.ae ], [ 0, %bb.ac ]
  ret i32 %.0142
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @dt_iop_basecurve_motion_notify(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #5 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !145 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !144  ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 480 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !16   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #26
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !161
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1432
  %i.i = load double, ptr %i.h, align 8, !tbaa !167
  %i.j = fmul reassoc nsz arcp contract afn double %i.i, 5.000000e+00
  %i.k = fptosi double %i.j to i32                ; 2 uses
  %i.l = shl nsw i32 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !368
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !369
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = sitofp reassoc nsz arcp contract afn i32 %i.k to double
  %i.t = load <2 x i32>, ptr %i.m, align 4, !tbaa !16
  %i.u = insertelement <2 x i32> poison, i32 %i.l, i64 0
  %i.v = shufflevector <2 x i32> %i.u, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.w = sub nsw <2 x i32> %i.t, %i.v             ; 2 uses
  %i.x = load <2 x double>, ptr %i.r, align 8, !tbaa !157
  %i.y = insertelement <2 x double> poison, double %i.s, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fsub reassoc nsz arcp contract afn <2 x double> %i.x, %i.z ; 6 uses
  %i.ab = extractelement <2 x double> %i.aa, i64 0
  store double %i.ab, ptr %i.n, align 8, !tbaa !368
  %i.ac = extractelement <2 x double> %i.aa, i64 1 ; 3 uses
  store double %i.ac, ptr %i.p, align 8, !tbaa !369
  %i.ad = sitofp reassoc nsz arcp contract afn <2 x i32> %i.w to <2 x double> ; 5 uses
  %i.ae = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.aa, %i.ad
  %i.af = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.aa, zeroinitializer
  %i.ag = select <2 x i1> %i.af, <2 x double> zeroinitializer, <2 x double> %i.aa
  %i.ah = select <2 x i1> %i.ae, <2 x double> %i.ad, <2 x double> %i.ag
  %i.ai = sitofp reassoc nsz arcp contract afn <2 x i32> %i.w to <2 x float>
  %i.aj = fpext reassoc nsz arcp contract afn <2 x float> %i.ai to <2 x double>
  %i.ak = fdiv reassoc nsz arcp contract afn <2 x double> %i.ah, %i.aj ; 2 uses
  %i.al = extractelement <2 x double> %i.ak, i64 0
  %i.am = fptrunc reassoc nsz arcp contract afn double %i.al to float ; 10 uses
  %i.an = extractelement <2 x double> %i.ak, i64 1
  %i.ao = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.an
  %i.ap = fptrunc reassoc nsz arcp contract afn double %i.ao to float ; 10 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 6264
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !159 ; 12 uses
  %i.as = fcmp reassoc nsz arcp contract afn ogt float %i.ar, 0.000000e+00 ; 4 uses
  %i.at = insertelement <2 x float> poison, float %i.am, i64 0
  %i.au = insertelement <2 x float> %i.at, float %i.ap, i64 1
  br i1 %i.as, label %bb.b, label %to_lin.exit121

bb.b:                                             ; preds = %bb.a
  %i.av = fadd reassoc nsz arcp contract afn float %i.ar, -1.000000e+00 ; 2 uses
  %i.aw = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.av, float %i.am)
  %i.ax = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.av, float %i.ap)
  %i.ay = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.az = insertelement <2 x float> %i.ay, float %i.ax, i64 1
  %i.ba = fadd reassoc nsz arcp contract afn <2 x float> %i.az, splat (float -1.000000e+00)
  %i.bb = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = fdiv reassoc nsz arcp contract afn <2 x float> %i.ba, %i.bc
  br label %to_lin.exit121

to_lin.exit121:                                   ; preds = %bb.a, %bb.b
  %i.be = phi <2 x float> [ %i.bd, %bb.b ], [ %i.au, %bb.a ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !371 ; 2 uses
  %i.bh = and i32 %i.bg, 256
  %.not = icmp eq i32 %i.bh, 0
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %to_lin.exit121
  %i.bi = icmp sgt i32 %i.f, 0
  br i1 %i.bi, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %wide.trip.count173 = zext nneg i32 %i.f to i64 ; 4 uses
  br i1 %i.as, label %to_log.exit140.us.preheader, label %to_log.exit138.preheader

to_log.exit138.preheader:                         ; preds = %.lr.ph
  %xtraiter = and i64 %wide.trip.count173, 3      ; 3 uses
  %i.bj = icmp ult i32 %i.f, 4
  br i1 %i.bj, label %to_log.exit138.epil.preheader, label %to_log.exit138.preheader.new

to_log.exit138.preheader.new:                     ; preds = %to_log.exit138.preheader
  %unroll_iter = and i64 %wide.trip.count173, 2147483644
  br label %to_log.exit138

to_log.exit140.us.preheader:                      ; preds = %.lr.ph
  %i.bk = fadd reassoc nsz arcp contract afn float %i.ar, 1.000000e+00
  %i.bl = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.bk)
  %i.bm = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bo = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %xtraiter192 = and i64 %wide.trip.count173, 1
  %i.bq = icmp eq i32 %i.f, 1
  br i1 %i.bq, label %to_log.exit140.us.epil.preheader, label %to_log.exit140.us.preheader.new

to_log.exit140.us.preheader.new:                  ; preds = %to_log.exit140.us.preheader
  %unroll_iter197 = and i64 %wide.trip.count173, 2147483646
  %i.br = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.bp
  %i.bs = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.bp
  br label %to_log.exit140.us

to_log.exit140.us:                                ; preds = %to_log.exit140.us, %to_log.exit140.us.preheader.new
  %indvars.iv170 = phi i64 [ 0, %to_log.exit140.us.preheader.new ], [ %indvars.iv.next171.1, %to_log.exit140.us ] ; 4 uses
  %.0106165.us = phi i32 [ -1, %to_log.exit140.us.preheader.new ], [ %spec.select119.us.1, %to_log.exit140.us ]
  %.0107164.us = phi float [ 1.600000e-03, %to_log.exit140.us.preheader.new ], [ %spec.select118.us.1, %to_log.exit140.us ] ; 2 uses
  %niter198 = phi i64 [ 0, %to_log.exit140.us.preheader.new ], [ %niter198.next.1, %to_log.exit140.us ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv170
  %i.bu = load <2 x float>, ptr %i.bt, align 4, !tbaa !13
  %i.bv = fmul reassoc nsz arcp contract afn <2 x float> %i.bu, %i.bn
  %i.bw = fadd reassoc nsz arcp contract afn <2 x float> %i.bv, splat (float 1.000000e+00)
  %i.bx = call reassoc nsz arcp contract afn <2 x float> @llvm.log.v2f32(<2 x float> %i.bw)
  %i.by = fmul reassoc nsz arcp contract afn <2 x float> %i.bx, %i.br ; 2 uses
  %i.bz = extractelement <2 x float> %i.by, i64 1
  %i.ca = fsub reassoc nsz arcp contract afn float %i.ap, %i.bz ; 2 uses
  %i.cb = fmul reassoc nsz arcp contract afn float %i.ca, %i.ca
  %i.cc = extractelement <2 x float> %i.by, i64 0
  %i.cd = fsub reassoc nsz arcp contract afn float %i.am, %i.cc ; 2 uses
  %i.ce = fmul reassoc nsz arcp contract afn float %i.cd, %i.cd
  %i.cf = fadd reassoc nsz arcp contract afn float %i.ce, %i.cb ; 2 uses
  %i.cg = fcmp reassoc nsz arcp contract afn olt float %i.cf, %.0107164.us ; 2 uses
  %spec.select118.us = select nsz i1 %i.cg, float %i.cf, float %.0107164.us ; 2 uses
  %i.ch = trunc nuw nsw i64 %indvars.iv170 to i32
  %spec.select119.us = select i1 %i.cg, i32 %i.ch, i32 %.0106165.us
  %indvars.iv.next171 = or disjoint i64 %indvars.iv170, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next171
  %i.cj = load <2 x float>, ptr %i.ci, align 4, !tbaa !13
  %i.ck = fmul reassoc nsz arcp contract afn <2 x float> %i.cj, %i.bn
  %i.cl = fadd reassoc nsz arcp contract afn <2 x float> %i.ck, splat (float 1.000000e+00)
  %i.cm = call reassoc nsz arcp contract afn <2 x float> @llvm.log.v2f32(<2 x float> %i.cl)
  %i.cn = fmul reassoc nsz arcp contract afn <2 x float> %i.cm, %i.bs ; 2 uses
  %i.co = extractelement <2 x float> %i.cn, i64 1
  %i.cp = fsub reassoc nsz arcp contract afn float %i.ap, %i.co ; 2 uses
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cp, %i.cp
  %i.cr = extractelement <2 x float> %i.cn, i64 0
  %i.cs = fsub reassoc nsz arcp contract afn float %i.am, %i.cr ; 2 uses
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cs, %i.cs
  %i.cu = fadd reassoc nsz arcp contract afn float %i.ct, %i.cq ; 2 uses
  %i.cv = fcmp reassoc nsz arcp contract afn olt float %i.cu, %spec.select118.us ; 2 uses
  %spec.select118.us.1 = select nsz i1 %i.cv, float %i.cu, float %spec.select118.us ; 2 uses
  %i.cw = trunc nuw nsw i64 %indvars.iv.next171 to i32
  %spec.select119.us.1 = select i1 %i.cv, i32 %i.cw, i32 %spec.select119.us ; 3 uses
  %indvars.iv.next171.1 = add nuw nsw i64 %indvars.iv170, 2 ; 2 uses
  %niter198.next.1 = add i64 %niter198, 2         ; 2 uses
  %niter198.ncmp.1 = icmp eq i64 %niter198.next.1, %unroll_iter197
  br i1 %niter198.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %to_log.exit140.us

bb.c:                                             ; preds = %to_lin.exit121
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !158 ; 3 uses
  %i.cz = icmp sgt i32 %i.cy, -1
  br i1 %i.cz, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.da = extractelement <2 x double> %i.ad, i64 0
  %i.db = fdiv reassoc nsz arcp contract afn double %i.o, %i.da ; 3 uses
  %i.dc = zext nneg i32 %i.cy to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.dc ; 3 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !143 ; 2 uses
  br i1 %i.as, label %bb.e, label %to_log.exit

to_log.exit:                                      ; preds = %bb.d
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.dg = load float, ptr %i.df, align 4, !tbaa !170
  br label %to_log.exit124

bb.e:                                             ; preds = %bb.d
  %i.dh = fmul reassoc nsz arcp contract afn float %i.de, %i.ar
  %i.di = fadd reassoc nsz arcp contract afn float %i.dh, 1.000000e+00
  %i.dj = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.di)
  %i.dk = fadd reassoc nsz arcp contract afn float %i.ar, 1.000000e+00
  %i.dl = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.dk) ; 2 uses
  %i.dm = fdiv reassoc nsz arcp contract afn float %i.dj, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.do = load float, ptr %i.dn, align 4, !tbaa !170
  %i.dp = fmul reassoc nsz arcp contract afn float %i.do, %i.ar
  %i.dq = fadd reassoc nsz arcp contract afn float %i.dp, 1.000000e+00
  %i.dr = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.dq)
  %i.ds = fdiv reassoc nsz arcp contract afn float %i.dr, %i.dl
  br label %to_log.exit124

to_log.exit124:                                   ; preds = %to_log.exit, %bb.e
  %.pn156.in = phi float [ %i.dm, %bb.e ], [ %i.de, %to_log.exit ]
  %.0.i123 = phi nsz float [ %i.ds, %bb.e ], [ %i.dg, %to_log.exit ]
  %.pn156 = fpext float %.pn156.in to double
  %.in = fsub reassoc nsz arcp contract afn double %i.db, %.pn156
  %i.dt = fptrunc double %.in to float
  %i.du = extractelement <2 x double> %i.ad, i64 1 ; 3 uses
  %.pn = fdiv reassoc nsz arcp contract afn double %i.q, %i.du
  %i.dv = fsub reassoc nsz arcp contract afn double 1.000000e+00, %.pn ; 3 uses
  %i.dw = fpext reassoc nsz arcp contract afn float %.0.i123 to double
  %i.dx = fsub reassoc nsz arcp contract afn double %i.dv, %i.dw
  %i.dy = fptrunc reassoc nsz arcp contract afn double %i.dx to float ; 2 uses
  %foldExtExtBinop = fdiv reassoc nsz arcp contract afn <2 x double> %i.aa, %i.ad
  %i.dz = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ea = fpext reassoc nsz arcp contract afn float %i.dt to double ; 3 uses
  %i.eb = fsub reassoc nsz arcp contract afn double %i.dz, %i.ea
  %i.ec = fptrunc reassoc nsz arcp contract afn double %i.eb to float ; 2 uses
  br i1 %i.as, label %bb.f, label %to_lin.exit130

to_lin.exit130:                                   ; preds = %to_log.exit124
  %i.ed = fsub reassoc nsz arcp contract afn double %i.db, %i.ea
  %i.ee = fptrunc reassoc nsz arcp contract afn double %i.ed to float
  %i.ef = fsub reassoc nsz arcp contract afn float %i.ec, %i.ee
  %i.eg = fpext reassoc nsz arcp contract afn float %i.dy to double ; 2 uses
  %i.eh = fdiv reassoc nsz arcp contract afn double %i.ac, %i.du
  %i.ei = fadd reassoc nsz arcp contract afn double %i.eh, %i.eg
  %i.ej = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.ei
  %i.ek = fptrunc reassoc nsz arcp contract afn double %i.ej to float
  %i.el = fsub reassoc nsz arcp contract afn double %i.dv, %i.eg
  %i.em = fptrunc reassoc nsz arcp contract afn double %i.el to float
  br label %to_lin.exit132

bb.f:                                             ; preds = %to_log.exit124
  %i.en = fadd reassoc nsz arcp contract afn float %i.ar, -1.000000e+00 ; 4 uses
  %i.eo = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.en, float %i.ec)
  %i.ep = fsub reassoc nsz arcp contract afn double %i.db, %i.ea
  %i.eq = fptrunc reassoc nsz arcp contract afn double %i.ep to float
  %i.er = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.en, float %i.eq)
  %i.es = fsub reassoc nsz arcp contract afn float %i.eo, %i.er
  %i.et = fdiv reassoc nsz arcp contract afn float %i.es, %i.ar
  %i.eu = fpext reassoc nsz arcp contract afn float %i.dy to double ; 2 uses
  %i.ev = fdiv reassoc nsz arcp contract afn double %i.ac, %i.du
  %i.ew = fadd reassoc nsz arcp contract afn double %i.ev, %i.eu
  %i.ex = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.ew
  %i.ey = fptrunc reassoc nsz arcp contract afn double %i.ex to float
  %i.ez = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.en, float %i.ey)
  %i.fa = fadd reassoc nsz arcp contract afn float %i.ez, -1.000000e+00
  %i.fb = fdiv reassoc nsz arcp contract afn float %i.fa, %i.ar
  %i.fc = fsub reassoc nsz arcp contract afn double %i.dv, %i.eu
  %i.fd = fptrunc reassoc nsz arcp contract afn double %i.fc to float
  %i.fe = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.en, float %i.fd)
  %i.ff = fadd reassoc nsz arcp contract afn float %i.fe, -1.000000e+00
  %i.fg = fdiv reassoc nsz arcp contract afn float %i.ff, %i.ar
  br label %to_lin.exit132

to_lin.exit132:                                   ; preds = %to_lin.exit130, %bb.f
  %.0.i129151 = phi float [ %i.fb, %bb.f ], [ %i.ek, %to_lin.exit130 ]
  %i.fh = phi float [ %i.et, %bb.f ], [ %i.ef, %to_lin.exit130 ]
  %.0.i131 = phi nsz float [ %i.fg, %bb.f ], [ %i.em, %to_lin.exit130 ]
  %i.fi = fsub reassoc nsz arcp contract afn float %.0.i129151, %.0.i131
  call fastcc void @_move_point_internal(ptr noundef nonnull %2, ptr noundef %0, float noundef %i.fh, float noundef %i.fi, i32 noundef %i.bg)
  br label %bb.l

bb.g:                                             ; preds = %bb.c
  %i.fj = icmp slt i32 %i.f, 20
  %i.fk = icmp eq i32 %i.cy, -1
  %or.cond = and i1 %i.fj, %i.fk
  br i1 %or.cond, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.fl = load float, ptr %i.d, align 4, !tbaa !143
  %i.fm = extractelement <2 x float> %i.be, i64 0 ; 2 uses
  %i.fn = fcmp reassoc nsz arcp contract afn ogt float %i.fl, %i.fm
  %.pre.i = load i32, ptr %i.e, align 4, !tbaa !16 ; 7 uses
  br i1 %i.fn, label %.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.fo = icmp sgt i32 %.pre.i, 1
  br i1 %i.fo, label %.lr.ph.preheader.i, label %.thread.._crit_edge38_crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %.pre.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.i ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !143
  %i.fr = fcmp reassoc nsz arcp contract afn ogt float %i.fq, %i.fm
  br i1 %i.fr, label %.thread.loopexit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread.._crit_edge38_crit_edge.i, label %.lr.ph.i

.thread.loopexit.i:                               ; preds = %.lr.ph.i
  %i.fs = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.i, %bb.h
  %.2.i = phi i32 [ %i.fs, %.thread.loopexit.i ], [ 0, %bb.h ] ; 5 uses
  %i.ft = icmp sgt i32 %.pre.i, %.2.i
  br i1 %i.ft, label %.lr.ph37.preheader.i, label %.thread.._crit_edge38_crit_edge.i

.thread.._crit_edge38_crit_edge.i:                ; preds = %bb.i, %.thread.i, %.preheader.i
  %.248.i = phi i32 [ %.2.i, %.thread.i ], [ %.pre.i, %.preheader.i ], [ %.pre.i, %bb.i ] ; 2 uses
end_hunk_4
