Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_basecurve?download=true
inline.NumInlined: 119
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 44
begin_hunk_0_@process_fusion:bb.a
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
  %scevgep555 = getelementptr i8, ptr %3, i64 16
  %scevgep615 = getelementptr i8, ptr %i.aa, i64 12
  %i.ff = tail call i64 @llvm.usub.sat.i64(i64 %i.ex, i64 4)
  %i.fg = shl i64 %i.ff, 2                        ; 2 uses
  %i.fh = getelementptr i8, ptr %i.aa, i64 %i.fg
  %scevgep617 = getelementptr i8, ptr %i.fh, i64 16
  %i.fi = getelementptr i8, ptr %3, i64 %i.fg
  %scevgep618 = getelementptr i8, ptr %i.fi, i64 12
  %i.fj = extractelement <2 x i32> %i.j, i64 1
  %i.fk = tail call i64 @llvm.usub.sat.i64(i64 %i.ex, i64 4) ; 2 uses
  %min.iters.check642 = icmp ult i64 %i.fk, 32
  %i.fl = lshr exact i64 %i.fk, 2
  %i.fm = add nuw nsw i64 %i.fl, 1                ; 2 uses
  %i.fn = and i64 %i.fm, 7                        ; 2 uses
  %i.fo = icmp eq i64 %i.fn, 0
  %i.fp = select i1 %i.fo, i64 8, i64 %i.fn
  %n.vec644 = sub nsw i64 %i.fm, %i.fp            ; 2 uses
  %i.fq = shl i64 %n.vec644, 2
  %i.fr = tail call i64 @llvm.usub.sat.i64(i64 %i.ex, i64 4) ; 2 uses
  %i.fs = lshr exact i64 %i.fr, 2
  %i.ft = add nuw nsw i64 %i.fs, 1                ; 2 uses
  %min.iters.check623 = icmp ult i64 %i.fr, 32
  %bound0619 = icmp ult ptr %scevgep615, %scevgep618
  %bound1620 = icmp ult ptr %3, %scevgep617
  %found.conflict621 = and i1 %bound0619, %bound1620
  %i.fu = and i64 %i.ft, 7                        ; 2 uses
  %i.fv = icmp eq i64 %i.fu, 0
  %i.fw = select i1 %i.fv, i64 8, i64 %i.fu
  %n.vec625 = sub nsw i64 %i.ft, %i.fw            ; 2 uses
  %i.fx = shl i64 %n.vec625, 2
  %i.fy = getelementptr i8, ptr %3, i64 -4
  br label %bb.q

._crit_edge350:                                   ; preds = %bb.ag, %.loopexit320.._crit_edge350_crit_edge
  %.pre-phi416 = phi i64 [ %.pre415, %.loopexit320.._crit_edge350_crit_edge ], [ %i.fb, %bb.ag ] ; 2 uses
  %.pre-phi414 = phi i32 [ %.pre413, %.loopexit320.._crit_edge350_crit_edge ], [ %i.fa, %bb.ag ]
  %i.fz = add nsw <2 x i32> %i.j, splat (i32 -1)  ; 2 uses
  %scevgep661 = getelementptr i8, ptr %3, i64 12
  %scevgep689 = getelementptr i8, ptr %3, i64 16
  br label %.preheader313

bb.q:                                             ; preds = %.lr.ph349, %bb.ag
  %i.ga = phi i32 [ %i.eq, %.lr.ph349 ], [ %i.qd, %bb.ag ]
  %.0265347 = phi i32 [ 0, %.lr.ph349 ], [ %i.qc, %bb.ag ] ; 3 uses
  %i.gb = load i32, ptr %i.er, align 8, !tbaa !127 ; 2 uses
  %i.gc = icmp eq i32 %i.gb, 0
  %i.gd = load float, ptr %i.es, align 8, !tbaa !248
  %i.ge = sitofp reassoc nsz arcp contract afn i32 %i.ga to float
  %i.gf = load float, ptr %i.et, align 4, !tbaa !249
  %i.gg = fadd reassoc nsz arcp contract afn float %i.gf, -1.000000e+00
  %i.gh = fmul reassoc nnan nsz arcp contract afn float %i.ge, 5.000000e-01
  %i.gi = fmul reassoc nsz arcp contract afn float %i.gh, %i.gg
  %i.gj = uitofp nsz nneg i32 %.0265347 to float
  %reass.add.i = fadd reassoc nsz arcp contract afn float %i.gi, %i.gj
  %reass.mul.i = fmul reassoc nsz arcp contract afn float %reass.add.i, %i.gd
  %exp2.i = tail call reassoc nsz arcp contract afn noundef float @llvm.exp2.f32(float %reass.mul.i) ; 4 uses
  br i1 %i.gc, label %bb.r, label %apply_legacy_curve.exit

bb.r:                                             ; preds = %bb.q
  br i1 %.not.i, label %compute_features.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.r, %bb.aa
  %.02731.i = phi i64 [ %i.iv, %bb.aa ], [ 0, %bb.r ] ; 6 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02731.i
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !13
  %i.gm = fmul reassoc nsz arcp contract afn float %i.gl, %exp2.i ; 3 uses
  %i.gn = fcmp reassoc nsz arcp contract afn olt float %i.gm, 1.000000e+00
  br i1 %i.gn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.preheader.i
  %i.go = fmul reassoc nnan nsz arcp contract afn float %i.gm, 6.553600e+04
  %i.gp = fptosi float %i.go to i32
  %i.gq = tail call i32 @llvm.smax.i32(i32 %i.gp, i32 0)
  %i.gr = tail call i32 @llvm.umin.i32(i32 %i.gq, i32 65535)
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.gs
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !13
  br label %bb.u

bb.t:                                             ; preds = %.preheader.i
  %i.gv = load float, ptr %i.ey, align 4, !tbaa !13
  %i.gw = load float, ptr %i.ev, align 8, !tbaa !13
  %i.gx = fmul reassoc nsz arcp contract afn float %i.gw, %i.gm
  %i.gy = load float, ptr %i.ez, align 8, !tbaa !13
  %i.gz = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.gx, float %i.gy)
  %i.ha = fmul reassoc nsz arcp contract afn float %i.gz, %i.gv
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink41.i = phi float [ %i.ha, %bb.t ], [ %i.gu, %bb.s ]
  %i.hb = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink41.i, float 0.000000e+00)
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.02731.i
  store float %i.hb, ptr %i.hc, align 16, !tbaa !13
  %i.hd = or disjoint i64 %.02731.i, 1            ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hd
  %i.hf = load float, ptr %i.he, align 4, !tbaa !13
  %i.hg = fmul reassoc nsz arcp contract afn float %i.hf, %exp2.i ; 3 uses
  %i.hh = fcmp reassoc nsz arcp contract afn olt float %i.hg, 1.000000e+00
  br i1 %i.hh, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hi = load float, ptr %i.ey, align 4, !tbaa !13
  %i.hj = load float, ptr %i.ev, align 8, !tbaa !13
  %i.hk = fmul reassoc nsz arcp contract afn float %i.hj, %i.hg
  %i.hl = load float, ptr %i.ez, align 8, !tbaa !13
  %i.hm = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.hk, float %i.hl)
  %i.hn = fmul reassoc nsz arcp contract afn float %i.hm, %i.hi
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ho = fmul reassoc nnan nsz arcp contract afn float %i.hg, 6.553600e+04
  %i.hp = fptosi float %i.ho to i32
  %i.hq = tail call i32 @llvm.smax.i32(i32 %i.hp, i32 0)
  %i.hr = tail call i32 @llvm.umin.i32(i32 %i.hq, i32 65535)
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.hs
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !13
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink.i = phi float [ %i.hu, %bb.w ], [ %i.hn, %bb.v ]
  %i.hv = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink.i, float 0.000000e+00)
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.hd
  store float %i.hv, ptr %i.hw, align 4, !tbaa !13
  %i.hx = or disjoint i64 %.02731.i, 2            ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hx
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !13
  %i.ia = fmul reassoc nsz arcp contract afn float %i.hz, %exp2.i ; 3 uses
  %i.ib = fcmp reassoc nsz arcp contract afn olt float %i.ia, 1.000000e+00
  br i1 %i.ib, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ic = load float, ptr %i.ey, align 4, !tbaa !13
  %i.id = load float, ptr %i.ev, align 8, !tbaa !13
  %i.ie = fmul reassoc nsz arcp contract afn float %i.id, %i.ia
  %i.if = load float, ptr %i.ez, align 8, !tbaa !13
  %i.ig = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ie, float %i.if)
  %i.ih = fmul reassoc nsz arcp contract afn float %i.ig, %i.ic
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.ii = fmul reassoc nnan nsz arcp contract afn float %i.ia, 6.553600e+04
  %i.ij = fptosi float %i.ii to i32
  %i.ik = tail call i32 @llvm.smax.i32(i32 %i.ij, i32 0)
  %i.il = tail call i32 @llvm.umin.i32(i32 %i.ik, i32 65535)
  %i.im = zext nneg i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.im
  %i.io = load float, ptr %i.in, align 4, !tbaa !13
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink42.i = phi float [ %i.io, %bb.z ], [ %i.ih, %bb.y ]
  %i.ip = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink42.i, float 0.000000e+00)
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.hx
  store float %i.ip, ptr %i.iq, align 8, !tbaa !13
  %i.ir = or disjoint i64 %.02731.i, 3            ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ir
  %i.it = load float, ptr %i.is, align 4, !tbaa !13
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ir
  store float %i.it, ptr %i.iu, align 4, !tbaa !13
  %i.iv = add nuw i64 %.02731.i, 4                ; 2 uses
  %i.iw = icmp ult i64 %i.iv, %i.ex
  br i1 %i.iw, label %.preheader.i, label %.lr.ph.i.preheader

apply_legacy_curve.exit:                          ; preds = %bb.q
  tail call fastcc void @apply_curve(ptr noundef %2, ptr noundef %i.aa, i32 noundef %i.u, i32 noundef %i.fj, i32 noundef %i.gb, float noundef %exp2.i, ptr noundef nonnull %i.eu, ptr noundef nonnull %i.ev, ptr noundef %i.h)
  br i1 %.not.i, label %compute_features.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.aa, %apply_legacy_curve.exit
  br i1 %min.iters.check642, label %.lr.ph.i.preheader756, label %vector.body645

vector.body645:                                   ; preds = %.lr.ph.i.preheader, %vector.body645
  %index646 = phi i64 [ %index.next654, %vector.body645 ], [ 0, %.lr.ph.i.preheader ]
  %vec.ind647 = phi <8 x i64> [ %vec.ind.next655, %vector.body645 ], [ <i64 0, i64 4, i64 8, i64 12, i64 16, i64 20, i64 24, i64 28>, %.lr.ph.i.preheader ] ; 2 uses
  %wide.gep648 = getelementptr inbounds nuw [4 x i8], ptr %i.aa, <8 x i64> %vec.ind647 ; 2 uses
  %i.ix = extractelement <8 x ptr> %wide.gep648, i64 0
  %wide.vec649 = load <32 x float>, ptr %i.ix, align 16, !tbaa !13 ; 3 uses
  %strided.vec650 = shufflevector <32 x float> %wide.vec649, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 5 uses
  %strided.vec651 = shufflevector <32 x float> %wide.vec649, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 5 uses
  %strided.vec652 = shufflevector <32 x float> %wide.vec649, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 5 uses
  %i.iy = fcmp reassoc nsz arcp contract afn ogt <8 x float> %strided.vec651, %strided.vec652
  %i.iz = select reassoc nsz arcp contract afn <8 x i1> %i.iy, <8 x float> %strided.vec651, <8 x float> %strided.vec652 ; 2 uses
  %i.ja = fcmp reassoc nsz arcp contract afn ogt <8 x float> %strided.vec650, %i.iz
  %i.jb = select reassoc nsz arcp contract afn <8 x i1> %i.ja, <8 x float> %strided.vec650, <8 x float> %i.iz ; 3 uses
  %i.jc = fcmp reassoc nsz arcp contract afn olt <8 x float> %strided.vec651, %strided.vec652
  %i.jd = select reassoc nsz arcp contract afn <8 x i1> %i.jc, <8 x float> %strided.vec651, <8 x float> %strided.vec652 ; 2 uses
  %i.je = fcmp reassoc nsz arcp contract afn olt <8 x float> %strided.vec650, %i.jd
  %i.jf = select reassoc nsz arcp contract afn <8 x i1> %i.je, <8 x float> %strided.vec650, <8 x float> %i.jd
  %i.jg = fsub reassoc nsz arcp contract afn <8 x float> %i.jb, %i.jf
  %i.jh = fmul reassoc nsz arcp contract afn <8 x float> %i.jg, splat (float 1.000000e-01)
  %i.ji = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.jb, splat (float f0x38D1B717)
  %i.jj = select reassoc nsz arcp contract afn <8 x i1> %i.ji, <8 x float> splat (float f0x38D1B717), <8 x float> %i.jb
  %i.jk = fdiv reassoc nsz arcp contract afn <8 x float> %i.jh, %i.jj
  %i.jl = fadd reassoc nsz arcp contract afn <8 x float> %i.jk, splat (float 1.000000e-01)
  %i.jm = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec650, splat (float -5.400000e-01)
  %i.jn = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.jm) ; 2 uses
  %i.jo = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec651, splat (float -5.400000e-01)
  %i.jp = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.jo) ; 2 uses
  %i.jq = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.jp, %i.jn
  %i.jr = select reassoc nsz arcp contract afn <8 x i1> %i.jq, <8 x float> %i.jp, <8 x float> %i.jn ; 2 uses
  %i.js = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec652, splat (float -5.400000e-01)
  %i.jt = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.js) ; 2 uses
  %i.ju = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.jt, %i.jr
  %i.jv = select reassoc nsz arcp contract afn <8 x i1> %i.ju, <8 x float> %i.jt, <8 x float> %i.jr ; 2 uses
  %i.jw = fmul reassoc nsz arcp contract afn <8 x float> %i.jv, %i.jv
  %i.jx = fmul reassoc nsz arcp contract afn <8 x float> %i.jw, splat (float 4.560520e+07)
  %i.jy = fsub reassoc nsz arcp contract afn <8 x float> splat (float f0x4E7E0000), %i.jx
  %i.jz = fptosi <8 x float> %i.jy to <8 x i32>
  %i.ka = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.jz, <8 x i32> zeroinitializer)
  %i.kb = bitcast <8 x i32> %i.ka to <8 x float>
  %i.kc = fadd reassoc nsz arcp contract afn <8 x float> %i.kb, splat (float 2.000000e-01)
  %i.kd = fmul reassoc nsz arcp contract afn <8 x float> %i.kc, %i.jl
  %wide.gep653 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep648, i64 12
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.kd, <8 x ptr> align 4 %wide.gep653, <8 x i1> splat (i1 true)), !tbaa !13
  %index.next654 = add nuw i64 %index646, 8       ; 2 uses
  %vec.ind.next655 = add nuw <8 x i64> %vec.ind647, splat (i64 32)
  %i.ke = icmp eq i64 %index.next654, %n.vec644
  br i1 %i.ke, label %.lr.ph.i.preheader756, label %vector.body645, !llvm.loop !199

.lr.ph.i.preheader756:                            ; preds = %vector.body645, %.lr.ph.i.preheader
  %.084.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.fq, %vector.body645 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader756, %.lr.ph.i
  %.084.i = phi i64 [ %i.lo, %.lr.ph.i ], [ %.084.i.ph, %.lr.ph.i.preheader756 ] ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.084.i ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load float, ptr %i.kg, align 8, !tbaa !13 ; 5 uses
  %i.ki = load <2 x float>, ptr %i.kf, align 16, !tbaa !13 ; 3 uses
  %i.kj = extractelement <2 x float> %i.ki, i64 1 ; 4 uses
  %i.kk = fcmp reassoc nsz arcp contract afn ogt float %i.kj, %i.kh
  %..i = select reassoc nsz arcp contract afn i1 %i.kk, float %i.kj, float %i.kh ; 2 uses
  %i.kl = extractelement <2 x float> %i.ki, i64 0 ; 4 uses
  %i.km = fcmp reassoc nsz arcp contract afn ogt float %i.kl, %..i
  %spec.select.i = select reassoc nsz arcp contract afn i1 %i.km, float %i.kl, float %..i ; 3 uses
  %i.kn = fcmp reassoc nsz arcp contract afn olt float %i.kj, %i.kh
  %.81.i = select reassoc nsz arcp contract afn i1 %i.kn, float %i.kj, float %i.kh ; 2 uses
  %i.ko = fcmp reassoc nsz arcp contract afn olt float %i.kl, %.81.i
  %i.kp = select reassoc nsz arcp contract afn i1 %i.ko, float %i.kl, float %.81.i
  %i.kq = fsub reassoc nsz arcp contract afn float %spec.select.i, %i.kp
  %i.kr = fmul reassoc nsz arcp contract afn float %i.kq, 1.000000e-01
  %i.ks = fcmp reassoc nsz arcp contract afn olt float %spec.select.i, f0x38D1B717
  %i.kt = select reassoc nsz arcp contract afn i1 %i.ks, float f0x38D1B717, float %spec.select.i
  %i.ku = fdiv reassoc nsz arcp contract afn float %i.kr, %i.kt
  %i.kv = fadd reassoc nsz arcp contract afn float %i.ku, 1.000000e-01
  %i.kw = fadd reassoc nsz arcp contract afn <2 x float> %i.ki, splat (float -5.400000e-01)
  %i.kx = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.kw) ; 2 uses
  %i.ky = extractelement <2 x float> %i.kx, i64 0 ; 2 uses
  %i.kz = extractelement <2 x float> %i.kx, i64 1 ; 2 uses
  %i.la = fcmp reassoc nsz arcp contract afn ogt float %i.kz, %i.ky
  %.83.i = select reassoc nsz arcp contract afn i1 %i.la, float %i.kz, float %i.ky ; 2 uses
  %i.lb = fadd reassoc nsz arcp contract afn float %i.kh, -5.400000e-01
  %i.lc = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lb) ; 2 uses
end_hunk_0
begin_hunk_1_@apply_curve:bb.a

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
  %i.cb = fsub reassoc nnan nsz arcp contract afn float %i.bw, %i.ca
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
  %i.df = fsub reassoc nnan nsz arcp contract afn float %i.da, %i.de
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
  %i.ea = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.eb = load <2 x float>, ptr %i.t, align 4, !tbaa !13
  %i.ec = load <2 x float>, ptr %i.ea, align 4, !tbaa !13
  %i.ed = fmul reassoc nsz arcp contract afn <2 x float> %i.ec, %i.eb ; 2 uses
  %i.ee = extractelement <2 x float> %i.ed, i64 0
  %i.ef = fadd reassoc nsz arcp contract afn float %i.ee, %i.dz
  %i.eg = extractelement <2 x float> %i.ed, i64 1
  %i.eh = fadd reassoc nsz arcp contract afn float %i.ef, %i.eg
  br label %dt_rgb_norm.exit

bb.r:                                             ; preds = %bb.c
  %i.ei = load float, ptr %i.x, align 4, !tbaa !13 ; 2 uses
  %i.ej = fmul reassoc nsz arcp contract afn float %i.ei, f0x3E63D838
  %i.ek = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.el = load <2 x float>, ptr %i.ek, align 4, !tbaa !13
  %i.em = fmul reassoc nsz arcp contract afn <2 x float> %i.el, <float f0x3F37855B, float 6.061690e-02> ; 2 uses
  %i.en = extractelement <2 x float> %i.em, i64 0
  %i.eo = fadd reassoc nsz arcp contract afn float %i.en, %i.ej
  %i.ep = extractelement <2 x float> %i.em, i64 1
  %i.eq = fadd reassoc nsz arcp contract afn float %i.eo, %i.ep
  br label %dt_rgb_norm.exit

bb.s:                                             ; preds = %bb.b
  %i.er = load float, ptr %i.x, align 4, !tbaa !13 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.et = load float, ptr %i.es, align 4, !tbaa !13
  %i.eu = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.er, float %i.et)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !13
  %i.ex = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.eu, float %i.ew)
  br label %dt_rgb_norm.exit

bb.t:                                             ; preds = %bb.b
  %i.ey = load float, ptr %i.x, align 4, !tbaa !13 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !13
  %i.fb = fadd reassoc nsz arcp contract afn float %i.fa, %i.ey
  %i.fc = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !13
  %i.fe = fadd reassoc nsz arcp contract afn float %i.fb, %i.fd
  %i.ff = fmul reassoc nsz arcp contract afn float %i.fe, f0x3EAAAAAB
  br label %dt_rgb_norm.exit

bb.u:                                             ; preds = %bb.b
  %i.fg = load float, ptr %i.x, align 4, !tbaa !13 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !13
  %i.fj = fadd reassoc nsz arcp contract afn float %i.fi, %i.fg
  %i.fk = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !13
  %i.fm = fadd reassoc nsz arcp contract afn float %i.fj, %i.fl
  br label %dt_rgb_norm.exit

bb.v:                                             ; preds = %bb.b
  %i.fn = load float, ptr %i.x, align 4, !tbaa !13 ; 3 uses
  %i.fo = fmul reassoc nsz arcp contract afn float %i.fn, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.fq = load <2 x float>, ptr %i.fp, align 4, !tbaa !13 ; 2 uses
  %i.fr = fmul reassoc nsz arcp contract afn <2 x float> %i.fq, %i.fq ; 2 uses
  %i.fs = extractelement <2 x float> %i.fr, i64 0
  %i.ft = fadd reassoc nsz arcp contract afn float %i.fs, %i.fo
  %i.fu = extractelement <2 x float> %i.fr, i64 1
  %i.fv = fadd reassoc nsz arcp contract afn float %i.ft, %i.fu
  %i.fw = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.fv)
  br label %dt_rgb_norm.exit

bb.w:                                             ; preds = %bb.b
  %i.fx = load float, ptr %i.x, align 4, !tbaa !13 ; 4 uses
  %i.fy = fmul reassoc nsz arcp contract afn float %i.fx, %i.fx ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ga = fmul reassoc nsz arcp contract afn float %i.fy, %i.fx
  %i.gb = load <2 x float>, ptr %i.fz, align 4, !tbaa !13 ; 3 uses
  %i.gc = fmul reassoc nsz arcp contract afn <2 x float> %i.gb, %i.gb ; 3 uses
  %i.gd = fmul reassoc nsz arcp contract afn <2 x float> %i.gc, %i.gb ; 2 uses
  %i.ge = extractelement <2 x float> %i.gd, i64 0
  %i.gf = fadd reassoc nsz arcp contract afn float %i.ge, %i.ga
  %i.gg = extractelement <2 x float> %i.gd, i64 1
  %i.gh = fadd reassoc nsz arcp contract afn float %i.gf, %i.gg
  %i.gi = extractelement <2 x float> %i.gc, i64 0
  %i.gj = fadd reassoc nsz arcp contract afn float %i.gi, %i.fy
  %i.gk = extractelement <2 x float> %i.gc, i64 1
  %i.gl = fadd reassoc nsz arcp contract afn float %i.gj, %i.gk
  %i.gm = fdiv reassoc nsz arcp contract afn float %i.gh, %i.gl
  br label %dt_rgb_norm.exit

bb.x:                                             ; preds = %bb.b
  %i.gn = load float, ptr %i.x, align 4, !tbaa !13 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.gp = load float, ptr %i.go, align 4, !tbaa !13
  %i.gq = fadd reassoc nsz arcp contract afn float %i.gp, %i.gn
  %i.gr = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !13
  %i.gt = fadd reassoc nsz arcp contract afn float %i.gq, %i.gs
  %i.gu = fmul reassoc nsz arcp contract afn float %i.gt, f0x3EAAAAAB
  br label %dt_rgb_norm.exit

dt_rgb_norm.exit:                                 ; preds = %dt_ioppr_apply_trc.exit.i.i, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x
  %i.gv = phi float [ %i.gn, %bb.x ], [ %i.er, %bb.s ], [ %i.ey, %bb.t ], [ %i.fg, %bb.u ], [ %i.fn, %bb.v ], [ %i.fx, %bb.w ], [ %i.ei, %bb.r ], [ %i.ah, %dt_ioppr_apply_trc.exit.i.i ], [ %i.dy, %bb.q ]
  %.0.i = phi nsz float [ %i.gu, %bb.x ], [ %i.ex, %bb.s ], [ %i.ff, %bb.t ], [ %i.fm, %bb.u ], [ %i.fw, %bb.v ], [ %i.gm, %bb.w ], [ %i.eq, %bb.r ], [ %i.dw, %dt_ioppr_apply_trc.exit.i.i ], [ %i.eh, %bb.q ]
  %i.gw = fmul reassoc nsz arcp contract afn float %.0.i, %5 ; 5 uses
  %i.gx = fcmp reassoc nsz arcp contract afn ogt float %i.gw, 0.000000e+00
  br i1 %i.gx, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %dt_rgb_norm.exit
  %i.gy = fcmp reassoc nsz arcp contract afn olt float %i.gw, 1.000000e+00
  br i1 %i.gy, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gz = fmul reassoc nnan nsz arcp contract afn float %i.gw, 6.553600e+04
  %i.ha = fptosi float %i.gz to i32
  %i.hb = tail call i32 @llvm.smin.i32(i32 %i.ha, i32 65535)
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.hc
  %i.he = load float, ptr %i.hd, align 4, !tbaa !13
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.hf = load float, ptr %i.v, align 4, !tbaa !13
  %i.hg = load float, ptr %7, align 4, !tbaa !13
  %i.hh = fmul reassoc nsz arcp contract afn float %i.hg, %i.gw
  %i.hi = load float, ptr %i.w, align 4, !tbaa !13
  %i.hj = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.hh, float %i.hi)
  %i.hk = fmul reassoc nsz arcp contract afn float %i.hj, %i.hf
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.hl = phi reassoc nsz arcp contract afn float [ %i.he, %bb.z ], [ %i.hk, %bb.aa ]
  %i.hm = fmul reassoc nsz arcp contract afn float %i.hl, %5
  %i.hn = fdiv reassoc nsz arcp contract afn float %i.hm, %i.gw
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %dt_rgb_norm.exit
  %.033 = phi nsz float [ %i.hn, %bb.ab ], [ 1.000000e+00, %dt_rgb_norm.exit ] ; 3 uses
  %i.ho = fmul reassoc nsz arcp contract afn float %i.gv, %.033
  %i.hp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ho, float 0.000000e+00)
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.03438
  store float %i.hp, ptr %i.hq, align 4, !tbaa !13
  %i.hr = or disjoint i64 %.03438, 1              ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hr
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !13
  %i.hu = fmul reassoc nsz arcp contract afn float %i.ht, %.033
  %i.hv = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.hu, float 0.000000e+00)
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hr
  store float %i.hv, ptr %i.hw, align 4, !tbaa !13
  %i.hx = or disjoint i64 %.03438, 2              ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hx
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !13
  %i.ia = fmul reassoc nsz arcp contract afn float %i.hz, %.033
  %i.ib = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ia, float 0.000000e+00)
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hx
  store float %i.ib, ptr %i.ic, align 4, !tbaa !13
  %i.id = or disjoint i64 %.03438, 3              ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.id
  %i.if = load float, ptr %i.ie, align 4, !tbaa !13
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.id
  store float %i.if, ptr %i.ig, align 4, !tbaa !13
  %i.ih = add nuw i64 %.03438, 4                  ; 2 uses
  %i.ii = icmp ult i64 %i.ih, %i.d
  br i1 %i.ii, label %bb.b, label %._crit_edge
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gauss_reduce(ptr noundef captures(address) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i64 noundef range(i64 -2147483648, 2147483648) %3, i64 noundef range(i64 -2147483648, 2147483648) %4) unnamed_addr #12 {
bb.a:
  %i.a = add nsw i64 %3, -1                       ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 8 uses
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
  %i.l = mul i64 %i.e, %i.k
  %i.m = getelementptr i8, ptr %1, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 %i.j
  %scevgep = getelementptr i8, ptr %i.n, i64 16
  %i.o = mul i64 %3, %i.e
  %i.p = add i64 %i.o, %i.b
  %i.q = shl i64 %i.p, 5
  %i.r = getelementptr i8, ptr %.048, i64 %i.q
  %scevgep71 = getelementptr i8, ptr %i.r, i64 16
  %min.iters.check = icmp ult i64 %i.a, 30
  %mul.result = shl i64 %i.b, 5
  %mul.overflow = icmp ugt i64 %i.a, 1152921504606846975
  %bound0 = icmp ult ptr %1, %scevgep71
  %bound1 = icmp ult ptr %.048, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.s = or i64 %i.i, %i.k
  %i.t = icmp slt i64 %i.s, 0
  %i.u = or i1 %found.conflict, %i.t
  %n.vec = and i64 %i.c, 1152921504606846968      ; 3 uses
  %cmp.n = icmp eq i64 %i.c, %n.vec
  %i.v = and i64 %i.a, 2
  %lcmp.mod.not.not = icmp eq i64 %i.v, 0
  br label %.preheader58

.preheader58:                                     ; preds = %bb.d, %.loopexit136
  %.04761 = phi i64 [ 0, %bb.d ], [ %i.bv, %.loopexit136 ] ; 4 uses
  %.idx56 = mul i64 %i.i, %.04761
  %invariant.gep = getelementptr i8, ptr %.048, i64 %.idx56 ; 6 uses
  %i.w = mul i64 %.04761, %i.c                    ; 4 uses
  %i.x = getelementptr i8, ptr %invariant.gep, i64 %mul.result
  %i.y = icmp ult ptr %i.x, %invariant.gep
  %i.z = or i1 %i.y, %mul.overflow
  %or.cond = select i1 %min.iters.check, i1 true, i1 %i.z
  %brmerge = select i1 %or.cond, i1 true, i1 %i.u
  br i1 %brmerge, label %.preheader.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader58, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader58 ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.preheader58 ] ; 2 uses
  %i.aa = shl <8 x i64> %vec.ind, splat (i64 5)
  %wide.gep = getelementptr i8, ptr %invariant.gep, <8 x i64> %i.aa ; 4 uses
  %i.ab = add i64 %index, %i.w
  %i.ac = shl i64 %i.ab, 4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !294
  %wide.gep73 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather74 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep73, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !294
  %wide.gep75 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.masked.gather76 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep75, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !294
  %wide.gep77 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  %wide.masked.gather78 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep77, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !294
  %i.ae = shufflevector <8 x float> %wide.masked.gather, <8 x float> %wide.masked.gather74, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.af = shufflevector <8 x float> %wide.masked.gather76, <8 x float> %wide.masked.gather78, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.ae, <16 x float> %i.af, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.ad, align 4, !tbaa !13, !alias.scope !295, !noalias !294
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !280

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit136, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader58, %middle.block
  %.04660.ph = phi i64 [ 0, %.preheader58 ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not.not, label %.preheader.prol, label %.preheader.prol.loopexit

.preheader.prol:                                  ; preds = %.preheader.preheader
  %.idx.prol = shl i64 %.04660.ph, 5
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %.idx.prol ; 4 uses
  %i.ah = add i64 %.04660.ph, %i.w
  %.idx57.prol = shl i64 %i.ah, 4
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.idx57.prol ; 4 uses
  %i.aj = load float, ptr %gep.prol, align 4, !tbaa !13
  store float %i.aj, ptr %i.ai, align 4, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %gep.prol, i64 4
  %i.al = load float, ptr %i.ak, align 4, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store float %i.al, ptr %i.am, align 4, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %gep.prol, i64 8
  %i.ao = load float, ptr %i.an, align 4, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store float %i.ao, ptr %i.ap, align 4, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %gep.prol, i64 12
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store float %i.ar, ptr %i.as, align 4, !tbaa !13
  %i.at = or disjoint i64 %.04660.ph, 1
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.04660.unr = phi i64 [ %.04660.ph, %.preheader.preheader ], [ %i.at, %.preheader.prol ]
  %i.au = icmp eq i64 %i.b, %.04660.ph
  br i1 %i.au, label %.loopexit136, label %.preheader

bb.e:                                             ; preds = %.loopexit136
  %.not53 = icmp eq ptr %.048, %0
  br i1 %.not53, label %bb.g, label %bb.f

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.04660 = phi i64 [ %i.bu, %.preheader ], [ %.04660.unr, %.preheader.prol.loopexit ] ; 4 uses
  %.idx = shl i64 %.04660, 5
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx ; 4 uses
  %i.av = add i64 %.04660, %i.w
  %.idx57 = shl i64 %i.av, 4
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %.idx57 ; 4 uses
  %i.ax = load float, ptr %gep, align 4, !tbaa !13
  store float %i.ax, ptr %i.aw, align 4, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store float %i.az, ptr %i.ba, align 4, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store float %i.bc, ptr %i.bd, align 4, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %gep, i64 12
  %i.bf = load float, ptr %i.be, align 4, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store float %i.bf, ptr %i.bg, align 4, !tbaa !13
  %i.bh = add nuw i64 %.04660, 1                  ; 3 uses
  %.idx.1 = shl i64 %i.bh, 5
end_hunk_1
begin_hunk_2_@dt_iop_basecurve_draw:bb.a
  %factor.op.fmul.i195 = fmul reassoc nnan nsz arcp contract afn float %i.ns, 2.500000e-01
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
  %.reass31.1.i = fmul reassoc nnan nsz arcp contract afn float %i.ns, 5.000000e-01
  %.reass.1.i196 = fmul reassoc nnan nsz arcp contract afn float %i.nr, 5.000000e-01
  %i.nx = fpext reassoc nsz arcp contract afn float %.reass.1.i196 to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.ko, double noundef %i.nx, double noundef 0.000000e+00) #26
  call void @cairo_line_to(ptr noundef %i.ko, double noundef %i.nx, double noundef %i.nt) #26
  call void @cairo_stroke(ptr noundef %i.ko) #26
  %i.ny = fpext reassoc nsz arcp contract afn float %.reass31.1.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.ko, double noundef 0.000000e+00, double noundef %i.ny) #26
  call void @cairo_line_to(ptr noundef %i.ko, double noundef %i.nu, double noundef %i.ny) #26
  call void @cairo_stroke(ptr noundef %i.ko) #26
  %.reass31.2.i = fmul reassoc nnan nsz arcp contract afn float %i.ns, 7.500000e-01
  %.reass.2.i197 = fmul reassoc nnan nsz arcp contract afn float %i.nr, 7.500000e-01
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
  %i.ov = fadd reassoc nnan nsz arcp contract afn float %i.oo, 1.000000e+00
  %i.ow = call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %i.ov) ; 2 uses
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
  %i.px = fadd reassoc nnan nsz arcp contract afn float %i.pq, 1.000000e+00
  %i.py = call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %i.px) ; 2 uses
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
  %i.ra = fadd reassoc nnan nsz arcp contract afn float %i.qv, 1.000000e+00
  %i.rb = call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %i.ra)
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
  %i.rj = fmul reassoc nnan nsz arcp contract afn float %i.ri, f0x3B808081 ; 6 uses
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
  %i.rt = fadd reassoc nnan nsz arcp contract afn float %i.ro, 1.000000e+00
  %i.ru = call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %i.rt) ; 2 uses
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
  %i.sh = fadd reassoc nnan nsz arcp contract afn float %i.sc, 1.000000e+00
  %i.si = call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %i.sh) ; 2 uses
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
end_hunk_2
