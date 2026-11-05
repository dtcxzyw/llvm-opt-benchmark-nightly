Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_basecurve?download=true
inline.NumInlined: 119
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 44
begin_hunk_0_@process_fusion:bb.a
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
  %scevgep587 = getelementptr i8, ptr %3, i64 16
  %i.ff = tail call i64 @llvm.usub.sat.i64(i64 %i.ex, i64 4)
  %i.fg = shl i64 %i.ff, 2                        ; 2 uses
  %i.fh = getelementptr i8, ptr %3, i64 %i.fg
  %scevgep662 = getelementptr i8, ptr %i.fh, i64 12
  %i.fi = getelementptr i8, ptr %i.aa, i64 %i.fg
  %scevgep663 = getelementptr i8, ptr %i.fi, i64 16
  %scevgep664 = getelementptr i8, ptr %i.aa, i64 12
  %i.fj = extractelement <2 x i32> %i.j, i64 1
  %i.fk = tail call i64 @llvm.usub.sat.i64(i64 %i.ex, i64 4) ; 2 uses
  %min.iters.check689 = icmp ult i64 %i.fk, 32
  %i.fl = lshr exact i64 %i.fk, 2
  %i.fm = add nuw nsw i64 %i.fl, 1                ; 2 uses
  %i.fn = and i64 %i.fm, 7                        ; 2 uses
  %i.fo = icmp eq i64 %i.fn, 0
  %i.fp = select i1 %i.fo, i64 8, i64 %i.fn
  %n.vec691 = sub nsw i64 %i.fm, %i.fp            ; 2 uses
  %i.fq = shl i64 %n.vec691, 2
  %i.fr = tail call i64 @llvm.usub.sat.i64(i64 %i.ex, i64 4) ; 2 uses
  %i.fs = lshr exact i64 %i.fr, 2
  %i.ft = add nuw nsw i64 %i.fs, 1                ; 2 uses
  %min.iters.check666 = icmp ult i64 %i.fr, 32
  %bound0668 = icmp ult ptr %scevgep664, %scevgep662
  %bound1669 = icmp ult ptr %3, %scevgep663
  %found.conflict670 = and i1 %bound0668, %bound1669
  %i.fu = and i64 %i.ft, 7                        ; 2 uses
  %i.fv = icmp eq i64 %i.fu, 0
  %i.fw = select i1 %i.fv, i64 8, i64 %i.fu
  %n.vec672 = sub nsw i64 %i.ft, %i.fw            ; 2 uses
  %i.fx = shl i64 %n.vec672, 2
  br label %bb.q

._crit_edge350:                                   ; preds = %bb.ag, %.loopexit320.._crit_edge350_crit_edge
  %.pre-phi416 = phi i64 [ %.pre415, %.loopexit320.._crit_edge350_crit_edge ], [ %i.fb, %bb.ag ] ; 2 uses
  %.pre-phi414 = phi i32 [ %.pre413, %.loopexit320.._crit_edge350_crit_edge ], [ %i.fa, %bb.ag ]
  %i.fy = add nsw <2 x i32> %i.j, splat (i32 -1)  ; 2 uses
  %scevgep755 = getelementptr i8, ptr %3, i64 16
  br label %.preheader313

bb.q:                                             ; preds = %.lr.ph349, %bb.ag
  %i.fz = phi i32 [ %i.eq, %.lr.ph349 ], [ %i.qg, %bb.ag ]
  %.0265347 = phi i32 [ 0, %.lr.ph349 ], [ %i.qf, %bb.ag ] ; 3 uses
  %i.ga = load i32, ptr %i.er, align 8, !tbaa !127 ; 2 uses
  %i.gb = icmp eq i32 %i.ga, 0
  %i.gc = load float, ptr %i.es, align 8, !tbaa !248
  %6 = uitofp nsz nneg i32 %i.fz to float
  %i.gd = load float, ptr %i.et, align 4, !tbaa !249
  %i.ge = fadd reassoc nsz arcp contract afn float %i.gd, -1.000000e+00
  %i.gf = fmul reassoc nnan nsz arcp contract afn float %6, 5.000000e-01
  %i.gg = fmul reassoc nsz arcp contract afn float %i.gf, %i.ge
  %i.gh = uitofp nsz nneg i32 %.0265347 to float
  %reass.add.i = fadd reassoc nsz arcp contract afn float %i.gg, %i.gh
  %reass.mul.i = fmul reassoc nsz arcp contract afn float %reass.add.i, %i.gc
  %exp2.i = tail call reassoc nsz arcp contract afn noundef float @llvm.exp2.f32(float %reass.mul.i) ; 4 uses
  br i1 %i.gb, label %bb.r, label %apply_legacy_curve.exit

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
  tail call fastcc void @apply_curve(ptr noundef %2, ptr noundef %i.aa, i32 noundef %i.u, i32 noundef %i.fj, i32 noundef %i.ga, float noundef %exp2.i, ptr noundef nonnull %i.eu, ptr noundef nonnull %i.ev, ptr noundef %i.h)
  br i1 %.not.i, label %compute_features.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.aa, %apply_legacy_curve.exit
  br i1 %min.iters.check689, label %.lr.ph.i.preheader826, label %vector.body692

vector.body692:                                   ; preds = %.lr.ph.i.preheader, %vector.body692
  %index693 = phi i64 [ %index.next701, %vector.body692 ], [ 0, %.lr.ph.i.preheader ]
  %vec.ind694 = phi <8 x i64> [ %vec.ind.next702, %vector.body692 ], [ <i64 0, i64 4, i64 8, i64 12, i64 16, i64 20, i64 24, i64 28>, %.lr.ph.i.preheader ] ; 2 uses
  %wide.gep695 = getelementptr inbounds nuw [4 x i8], ptr %i.aa, <8 x i64> %vec.ind694 ; 2 uses
  %i.iv = extractelement <8 x ptr> %wide.gep695, i64 0
  %wide.vec696 = load <32 x float>, ptr %i.iv, align 16, !tbaa !13 ; 3 uses
  %strided.vec697 = shufflevector <32 x float> %wide.vec696, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 5 uses
  %strided.vec698 = shufflevector <32 x float> %wide.vec696, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 5 uses
  %strided.vec699 = shufflevector <32 x float> %wide.vec696, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 5 uses
  %i.iw = fcmp reassoc nsz arcp contract afn ogt <8 x float> %strided.vec698, %strided.vec699
  %i.ix = select reassoc nsz arcp contract afn <8 x i1> %i.iw, <8 x float> %strided.vec698, <8 x float> %strided.vec699 ; 2 uses
  %i.iy = fcmp reassoc nsz arcp contract afn ogt <8 x float> %strided.vec697, %i.ix
  %i.iz = select reassoc nsz arcp contract afn <8 x i1> %i.iy, <8 x float> %strided.vec697, <8 x float> %i.ix ; 3 uses
  %i.ja = fcmp reassoc nsz arcp contract afn olt <8 x float> %strided.vec698, %strided.vec699
  %i.jb = select reassoc nsz arcp contract afn <8 x i1> %i.ja, <8 x float> %strided.vec698, <8 x float> %strided.vec699 ; 2 uses
  %i.jc = fcmp reassoc nsz arcp contract afn olt <8 x float> %strided.vec697, %i.jb
  %i.jd = select reassoc nsz arcp contract afn <8 x i1> %i.jc, <8 x float> %strided.vec697, <8 x float> %i.jb
  %i.je = fsub reassoc nsz arcp contract afn <8 x float> %i.iz, %i.jd
  %i.jf = fmul reassoc nsz arcp contract afn <8 x float> %i.je, splat (float 1.000000e-01)
  %i.jg = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.iz, splat (float f0x38D1B717)
  %i.jh = select reassoc nsz arcp contract afn <8 x i1> %i.jg, <8 x float> splat (float f0x38D1B717), <8 x float> %i.iz
  %i.ji = fdiv reassoc nsz arcp contract afn <8 x float> %i.jf, %i.jh
  %i.jj = fadd reassoc nsz arcp contract afn <8 x float> %i.ji, splat (float 1.000000e-01)
  %i.jk = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec697, splat (float -5.400000e-01)
  %i.jl = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.jk) ; 2 uses
  %i.jm = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec698, splat (float -5.400000e-01)
  %i.jn = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.jm) ; 2 uses
  %i.jo = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.jn, %i.jl
  %i.jp = select reassoc nsz arcp contract afn <8 x i1> %i.jo, <8 x float> %i.jn, <8 x float> %i.jl ; 2 uses
  %i.jq = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec699, splat (float -5.400000e-01)
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
  %wide.gep700 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep695, i64 12
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.kb, <8 x ptr> align 4 %wide.gep700, <8 x i1> splat (i1 true)), !tbaa !13
  %index.next701 = add nuw i64 %index693, 8       ; 2 uses
  %vec.ind.next702 = add nuw <8 x i64> %vec.ind694, splat (i64 32)
  %i.kc = icmp eq i64 %index.next701, %n.vec691
  br i1 %i.kc, label %.lr.ph.i.preheader826, label %vector.body692, !llvm.loop !199

.lr.ph.i.preheader826:                            ; preds = %vector.body692, %.lr.ph.i.preheader
  %.084.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.fq, %vector.body692 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader826, %.lr.ph.i
  %.084.i = phi i64 [ %i.lm, %.lr.ph.i ], [ %.084.i.ph, %.lr.ph.i.preheader826 ] ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.084.i ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load float, ptr %i.ke, align 8, !tbaa !13 ; 5 uses
  %i.kg = load <2 x float>, ptr %i.kd, align 16, !tbaa !13 ; 3 uses
  %i.kh = extractelement <2 x float> %i.kg, i64 1 ; 4 uses
  %i.ki = fcmp reassoc nsz arcp contract afn ogt float %i.kh, %i.kf
  %..i = select reassoc nsz arcp contract afn i1 %i.ki, float %i.kh, float %i.kf ; 2 uses
  %i.kj = extractelement <2 x float> %i.kg, i64 0 ; 4 uses
  %i.kk = fcmp reassoc nsz arcp contract afn ogt float %i.kj, %..i
  %spec.select.i = select reassoc nsz arcp contract afn i1 %i.kk, float %i.kj, float %..i ; 3 uses
  %i.kl = fcmp reassoc nsz arcp contract afn olt float %i.kh, %i.kf
  %.81.i = select reassoc nsz arcp contract afn i1 %i.kl, float %i.kh, float %i.kf ; 2 uses
  %i.km = fcmp reassoc nsz arcp contract afn olt float %i.kj, %.81.i
  %i.kn = select reassoc nsz arcp contract afn i1 %i.km, float %i.kj, float %.81.i
  %i.ko = fsub reassoc nsz arcp contract afn float %spec.select.i, %i.kn
  %i.kp = fmul reassoc nsz arcp contract afn float %i.ko, 1.000000e-01
  %i.kq = fcmp reassoc nsz arcp contract afn olt float %spec.select.i, f0x38D1B717
  %i.kr = select reassoc nsz arcp contract afn i1 %i.kq, float f0x38D1B717, float %spec.select.i
  %i.ks = fdiv reassoc nsz arcp contract afn float %i.kp, %i.kr
  %i.kt = fadd reassoc nsz arcp contract afn float %i.ks, 1.000000e-01
  %i.ku = fadd reassoc nsz arcp contract afn <2 x float> %i.kg, splat (float -5.400000e-01)
  %i.kv = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ku) ; 2 uses
  %i.kw = extractelement <2 x float> %i.kv, i64 0 ; 2 uses
end_hunk_0
