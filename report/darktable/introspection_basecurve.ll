Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_basecurve?download=true
inline.NumInlined: 119
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 44
begin_hunk_0_@process_fusion:bb.a
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
  %scevgep715 = getelementptr i8, ptr %3, i64 12
  %scevgep755 = getelementptr i8, ptr %3, i64 16
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
  %i.gg = fmul reassoc nnan nsz arcp contract afn float %i.gd, 5.000000e-01
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
  %i.gn = fmul reassoc nnan nsz arcp contract afn float %i.gl, 6.553600e+04
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
  %i.hn = fmul reassoc nnan nsz arcp contract afn float %i.hf, 6.553600e+04
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
  %i.ih = fmul reassoc nnan nsz arcp contract afn float %i.hz, 6.553600e+04
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
  br i1 %min.iters.check689, label %.lr.ph.i.preheader826, label %vector.body692

vector.body692:                                   ; preds = %.lr.ph.i.preheader, %vector.body692
  %index693 = phi i64 [ %index.next701, %vector.body692 ], [ 0, %.lr.ph.i.preheader ]
  %vec.ind694 = phi <8 x i64> [ %vec.ind.next702, %vector.body692 ], [ <i64 0, i64 4, i64 8, i64 12, i64 16, i64 20, i64 24, i64 28>, %.lr.ph.i.preheader ] ; 2 uses
  %wide.gep695 = getelementptr inbounds nuw [4 x i8], ptr %i.aa, <8 x i64> %vec.ind694 ; 2 uses
  %i.iw = extractelement <8 x ptr> %wide.gep695, i64 0
  %wide.vec696 = load <32 x float>, ptr %i.iw, align 16, !tbaa !13 ; 3 uses
  %strided.vec697 = shufflevector <32 x float> %wide.vec696, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 5 uses
  %strided.vec698 = shufflevector <32 x float> %wide.vec696, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 5 uses
  %strided.vec699 = shufflevector <32 x float> %wide.vec696, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 5 uses
  %i.ix = fcmp reassoc nsz arcp contract afn ogt <8 x float> %strided.vec698, %strided.vec699
  %i.iy = select reassoc nsz arcp contract afn <8 x i1> %i.ix, <8 x float> %strided.vec698, <8 x float> %strided.vec699 ; 2 uses
  %i.iz = fcmp reassoc nsz arcp contract afn ogt <8 x float> %strided.vec697, %i.iy
  %i.ja = select reassoc nsz arcp contract afn <8 x i1> %i.iz, <8 x float> %strided.vec697, <8 x float> %i.iy ; 3 uses
  %i.jb = fcmp reassoc nsz arcp contract afn olt <8 x float> %strided.vec698, %strided.vec699
  %i.jc = select reassoc nsz arcp contract afn <8 x i1> %i.jb, <8 x float> %strided.vec698, <8 x float> %strided.vec699 ; 2 uses
  %i.jd = fcmp reassoc nsz arcp contract afn olt <8 x float> %strided.vec697, %i.jc
  %i.je = select reassoc nsz arcp contract afn <8 x i1> %i.jd, <8 x float> %strided.vec697, <8 x float> %i.jc
  %i.jf = fsub reassoc nsz arcp contract afn <8 x float> %i.ja, %i.je
  %i.jg = fmul reassoc nsz arcp contract afn <8 x float> %i.jf, splat (float 1.000000e-01)
  %i.jh = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ja, splat (float f0x38D1B717)
  %i.ji = select reassoc nsz arcp contract afn <8 x i1> %i.jh, <8 x float> splat (float f0x38D1B717), <8 x float> %i.ja
  %i.jj = fdiv reassoc nsz arcp contract afn <8 x float> %i.jg, %i.ji
  %i.jk = fadd reassoc nsz arcp contract afn <8 x float> %i.jj, splat (float 1.000000e-01)
  %i.jl = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec697, splat (float -5.400000e-01)
  %i.jm = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.jl) ; 2 uses
  %i.jn = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec698, splat (float -5.400000e-01)
  %i.jo = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.jn) ; 2 uses
  %i.jp = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.jo, %i.jm
  %i.jq = select reassoc nsz arcp contract afn <8 x i1> %i.jp, <8 x float> %i.jo, <8 x float> %i.jm ; 2 uses
  %i.jr = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec699, splat (float -5.400000e-01)
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
  %wide.gep700 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep695, i64 12
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.kc, <8 x ptr> align 4 %wide.gep700, <8 x i1> splat (i1 true)), !tbaa !13
  %index.next701 = add nuw i64 %index693, 8       ; 2 uses
  %vec.ind.next702 = add nuw <8 x i64> %vec.ind694, splat (i64 32)
  %i.kd = icmp eq i64 %index.next701, %n.vec691
  br i1 %i.kd, label %.lr.ph.i.preheader826, label %vector.body692, !llvm.loop !199

.lr.ph.i.preheader826:                            ; preds = %vector.body692, %.lr.ph.i.preheader
  %.084.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.fq, %vector.body692 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader826, %.lr.ph.i
  %.084.i = phi i64 [ %i.ln, %.lr.ph.i ], [ %.084.i.ph, %.lr.ph.i.preheader826 ] ; 2 uses
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
end_hunk_0
begin_hunk_1_@process_fusion:bb.a
  br label %._crit_edge337

._crit_edge337:                                   ; preds = %._crit_edge337.loopexit, %.preheader318
  %i.ql = phi <2 x i32> [ %i.j, %.preheader318 ], [ %i.qk, %._crit_edge337.loopexit ] ; 5 uses
  %.not284 = icmp eq i64 %indvars.iv391, %i.fb
  br i1 %.not284, label %.thread452, label %bb.ah

.lr.ph336:                                        ; preds = %.lr.ph336, %.lr.ph336.preheader.new
  %i.qm = phi <2 x i32> [ %i.fc, %.lr.ph336.preheader.new ], [ %i.qn, %.lr.ph336 ]
  %niter = phi i64 [ 0, %.lr.ph336.preheader.new ], [ %niter.next.7, %.lr.ph336 ]
  %i.qn = sdiv <2 x i32> %i.qm, splat (i32 256)   ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge337.loopexit.unr-lcssa, label %.lr.ph336

bb.ah:                                            ; preds = %._crit_edge337
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv391
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !126 ; 4 uses
  %i.qr = sext <2 x i32> %i.ql to <2 x i64>       ; 3 uses
  %i.qs = extractelement <2 x i64> %i.qr, i64 0   ; 8 uses
  %i.qt = add nsw i64 %i.qs, 2305843009213693951
  %i.qu = lshr i64 %i.qt, 1                       ; 2 uses
  %i.qv = add nuw nsw i64 %i.qu, 1
  %i.qw = extractelement <2 x i64> %i.qr, i64 1   ; 4 uses
  tail call void @dt_iop_image_fill(ptr noundef %3, float noundef 0.000000e+00, i64 noundef range(i64 -2147483648, 2147483648) %i.qs, i64 noundef range(i64 -2147483648, 2147483648) %i.qw, i64 noundef 4) #26
  %i.qx = icmp eq <2 x i32> %i.ql, zeroinitializer
  %i.qy = bitcast <2 x i1> %i.qx to i2
  %i.qz = icmp eq i2 %i.qy, 0
  br i1 %i.qz, label %.preheader32.i.preheader, label %.loopexit457

.preheader32.i.preheader:                         ; preds = %bb.ah
  %i.ra = shl i64 %i.qu, 4                        ; 2 uses
  %i.rb = add nsw i64 %i.ra, 16
  %scevgep.a = getelementptr i8, ptr %i.qq, i64 16
  %i.rc = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %i.qr, <2 x i64> splat (i64 2))
  %i.rd = add <2 x i64> %i.rc, splat (i64 -1)     ; 2 uses
  %i.re = extractelement <2 x i64> %i.rd, i64 1
  %i.rf = lshr i64 %i.re, 1                       ; 2 uses
  %i.rg = mul i64 %i.rf, %i.rb
  %i.rh = extractelement <2 x i64> %i.rd, i64 0
  %i.ri = lshr i64 %i.rh, 1                       ; 2 uses
  %i.rj = shl i64 %i.ri, 4
  %i.rk = getelementptr i8, ptr %scevgep.a, i64 %i.rg
  %scevgep586 = getelementptr i8, ptr %i.rk, i64 %i.rj
  %i.rl = shl i64 %i.rf, 5
  %i.rm = mul i64 %i.rl, %i.qs
  %i.rn = shl i64 %i.ri, 5
  %i.ro = getelementptr i8, ptr %scevgep587, i64 %i.rm
  %scevgep588 = getelementptr i8, ptr %i.ro, i64 %i.rn
  %i.rp = extractelement <2 x i32> %i.ql, i64 0   ; 2 uses
  %i.rq = tail call i64 @llvm.umax.i64(i64 %i.qs, i64 2)
  %i.rr = add i64 %i.rq, -1
  %i.rs = lshr i64 %i.rr, 1
  %i.rt = add nuw i64 %i.rs, 1                    ; 2 uses
  %min.iters.check590 = icmp ult i32 %i.rp, 7
  %bound0592 = icmp ult ptr %3, %scevgep586
  %bound1593 = icmp ult ptr %i.qq, %scevgep588
  %found.conflict594 = and i1 %bound0592, %bound1593
  %stride.check = icmp slt i32 %i.rp, 0
  %i.ru = or i1 %found.conflict594, %stride.check
  %stride.check595 = icmp slt i64 %i.ra, -16
  %i.rv = or i1 %i.ru, %stride.check595
  %n.vec597 = and i64 %i.rt, -4                   ; 3 uses
  %i.rw = shl i64 %n.vec597, 1
  %cmp.n = icmp eq i64 %i.rt, %n.vec597
  br label %.preheader32.i

.preheader32.i:                                   ; preds = %.preheader32.i.preheader, %._crit_edge.i
  %indvars.iv38.i = phi i64 [ %indvars.iv.next39.i, %._crit_edge.i ], [ 0, %.preheader32.i.preheader ] ; 3 uses
  %i.rx = lshr exact i64 %indvars.iv38.i, 1
  %i.ry = mul i64 %i.rx, %i.qv                    ; 2 uses
  %i.rz = mul nsw i64 %indvars.iv38.i, %i.qs      ; 2 uses
  %brmerge857 = select i1 %min.iters.check590, i1 true, i1 %i.rv
  br i1 %brmerge857, label %.preheader.i292.preheader, label %vector.ph596

vector.ph596:                                     ; preds = %.preheader32.i
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.rz, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body598

vector.body598:                                   ; preds = %vector.body598, %vector.ph596
  %index599 = phi i64 [ 0, %vector.ph596 ], [ %index.next610, %vector.body598 ] ; 2 uses
  %vec.ind600 = phi <4 x i64> [ <i64 0, i64 2, i64 4, i64 6>, %vector.ph596 ], [ %vec.ind.next611, %vector.body598 ] ; 2 uses
  %i.sa = add i64 %index599, %i.ry
  %i.sb = shl i64 %i.sa, 4
  %i.sc = getelementptr inbounds nuw i8, ptr %i.qq, i64 %i.sb
  %i.sd = add nuw nsw <4 x i64> %vec.ind600, %broadcast.splat
  %i.se = shl <4 x i64> %i.sd, splat (i64 4)
  %wide.gep601 = getelementptr inbounds nuw i8, ptr %3, <4 x i64> %i.se ; 4 uses
  %wide.vec602 = load <16 x float>, ptr %i.sc, align 4, !tbaa !13, !alias.scope !254 ; 4 uses
  %strided.vec603 = shufflevector <16 x float> %wide.vec602, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec604 = shufflevector <16 x float> %wide.vec602, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec605 = shufflevector <16 x float> %wide.vec602, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec606 = shufflevector <16 x float> %wide.vec602, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.sf = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec603, splat (float 4.000000e+00)
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.sf, <4 x ptr> align 4 %wide.gep601, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !255, !noalias !254
  %i.sg = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec604, splat (float 4.000000e+00)
  %wide.gep607 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep601, i64 4
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.sg, <4 x ptr> align 4 %wide.gep607, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !255, !noalias !254
  %i.sh = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec605, splat (float 4.000000e+00)
  %wide.gep608 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep601, i64 8
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.sh, <4 x ptr> align 4 %wide.gep608, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !255, !noalias !254
  %i.si = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec606, splat (float 4.000000e+00)
  %wide.gep609 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep601, i64 12
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.si, <4 x ptr> align 4 %wide.gep609, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !255, !noalias !254
  %index.next610 = add nuw i64 %index599, 4       ; 2 uses
  %vec.ind.next611 = add nuw nsw <4 x i64> %vec.ind600, splat (i64 8)
  %i.sj = icmp eq i64 %index.next610, %n.vec597
  br i1 %i.sj, label %middle.block612, label %vector.body598, !llvm.loop !215

middle.block612:                                  ; preds = %vector.body598
  br i1 %cmp.n, label %._crit_edge.i, label %.preheader.i292.preheader

.preheader.i292.preheader:                        ; preds = %.preheader32.i, %middle.block612
  %indvars.iv.i.ph = phi i64 [ %i.rw, %middle.block612 ], [ 0, %.preheader32.i ]
  br label %.preheader.i292

.preheader.i292:                                  ; preds = %.preheader.i292.preheader, %.preheader.i292
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i292 ], [ %indvars.iv.i.ph, %.preheader.i292.preheader ] ; 3 uses
  %i.sk = lshr exact i64 %indvars.iv.i, 1
  %i.sl = add i64 %i.sk, %i.ry
  %.idx.i293 = shl i64 %i.sl, 4
  %i.sm = getelementptr inbounds nuw i8, ptr %i.qq, i64 %.idx.i293 ; 4 uses
  %i.sn = add nsw i64 %indvars.iv.i, %i.rz
  %.idx31.i = shl i64 %i.sn, 4
  %i.so = getelementptr inbounds nuw i8, ptr %3, i64 %.idx31.i ; 4 uses
  %i.sp = load float, ptr %i.sm, align 4, !tbaa !13
  %i.sq = fmul reassoc nsz arcp contract afn float %i.sp, 4.000000e+00
  store float %i.sq, ptr %i.so, align 4, !tbaa !13
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sm, i64 4
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !13
  %i.st = fmul reassoc nsz arcp contract afn float %i.ss, 4.000000e+00
  %i.su = getelementptr inbounds nuw i8, ptr %i.so, i64 4
  store float %i.st, ptr %i.su, align 4, !tbaa !13
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !13
  %i.sx = fmul reassoc nsz arcp contract afn float %i.sw, 4.000000e+00
  %i.sy = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  store float %i.sx, ptr %i.sy, align 4, !tbaa !13
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sm, i64 12
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !13
  %i.tb = fmul reassoc nsz arcp contract afn float %i.ta, 4.000000e+00
  %i.tc = getelementptr inbounds nuw i8, ptr %i.so, i64 12
  store float %i.tb, ptr %i.tc, align 4, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.td = icmp ult i64 %indvars.iv.next.i, %i.qs
  br i1 %i.td, label %.preheader.i292, label %._crit_edge.i, !llvm.loop !216

._crit_edge.i:                                    ; preds = %.preheader.i292, %middle.block612
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 2 ; 2 uses
  %i.te = icmp ult i64 %indvars.iv.next39.i, %i.qw
  br i1 %i.te, label %.preheader32.i, label %.loopexit457

.loopexit457:                                     ; preds = %._crit_edge.i, %bb.ah
  tail call fastcc void @gauss_blur(ptr noundef %3, ptr noundef %3, i64 noundef range(i64 -2147483648, 2147483648) %i.qs, i64 noundef range(i64 -2147483648, 2147483648) %i.qw)
  %i.tf = shl nsw i64 %i.qs, 2
  %i.tg = mul i64 %i.tf, %i.qw                    ; 4 uses
  %.not370 = icmp eq i64 %i.tg, 0
  br i1 %.not370, label %._crit_edge344, label %.lr.ph343

.thread452:                                       ; preds = %._crit_edge337
  %i.th = extractelement <2 x i32> %i.ql, i64 0
  %.pre417 = sext i32 %i.th to i64
  %i.ti = extractelement <2 x i32> %i.ql, i64 1
  %.pre419 = sext i32 %i.ti to i64
  %i.tj = shl nsw i64 %.pre417, 2
  %i.tk = mul i64 %i.tj, %.pre419                 ; 4 uses
  %.not370455 = icmp eq i64 %i.tk, 0
  br i1 %.not370455, label %._crit_edge344, label %.lr.ph343.thread

.lr.ph343.thread:                                 ; preds = %.thread452
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv391
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !126 ; 4 uses
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv391
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !126 ; 4 uses
  %i.tp = load ptr, ptr %i.fe, align 8, !tbaa !126 ; 7 uses
  %i.tq = load ptr, ptr %i.fd, align 8, !tbaa !126 ; 10 uses
  %i.tr = add i64 %i.tk, -1                       ; 2 uses
  %i.ts = lshr i64 %i.tr, 2
  %i.tt = add nuw nsw i64 %i.ts, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.tk, 33
  br i1 %min.iters.check, label %.preheader314.us.preheader, label %vector.memcheck

.lr.ph343:                                        ; preds = %.loopexit457
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv391
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !126 ; 7 uses
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv391
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !126 ; 8 uses
  %i.ty = add i64 %i.tg, -1                       ; 2 uses
  %i.tz = lshr i64 %i.ty, 2
  %i.ua = add nuw nsw i64 %i.tz, 1                ; 2 uses
  %min.iters.check540 = icmp ult i64 %i.tg, 17
  br i1 %min.iters.check540, label %.preheader316.preheader, label %vector.memcheck541

.preheader316.preheader:                          ; preds = %vector.body551, %vector.memcheck541, %.lr.ph343
  %.0260341.ph = phi i64 [ 0, %vector.memcheck541 ], [ 0, %.lr.ph343 ], [ %i.uk, %vector.body551 ]
  br label %.preheader316

vector.memcheck541:                               ; preds = %.lr.ph343
  %i.ub = shl i64 %i.ty, 2
  %i.uc = and i64 %i.ub, -16                      ; 2 uses
  %i.ud = add i64 %i.uc, 16                       ; 2 uses
  %i.ue = getelementptr i8, ptr %i.tx, i64 %i.ud  ; 2 uses
  %i.uf = getelementptr i8, ptr %i.tv, i64 %i.ud
  %i.ug = getelementptr i8, ptr %scevgep, i64 %i.uc
  %bound0542 = icmp ult ptr %i.tx, %i.uf
  %bound1543 = icmp ult ptr %i.tv, %i.ue
  %found.conflict544 = and i1 %bound0542, %bound1543
  %bound0545 = icmp ult ptr %i.tx, %i.ug
  %bound1546 = icmp ult ptr %3, %i.ue
  %found.conflict547 = and i1 %bound0545, %bound1546
  %conflict.rdx548 = or i1 %found.conflict544, %found.conflict547
  br i1 %conflict.rdx548, label %.preheader316.preheader, label %vector.ph549

vector.ph549:                                     ; preds = %vector.memcheck541
  %i.uh = and i64 %i.ua, 3                        ; 2 uses
  %i.ui = icmp eq i64 %i.uh, 0
  %i.uj = select i1 %i.ui, i64 4, i64 %i.uh
  %n.vec550 = sub nsw i64 %i.ua, %i.uj            ; 2 uses
  %i.uk = shl i64 %n.vec550, 2
  br label %vector.body551

vector.body551:                                   ; preds = %vector.body551, %vector.ph549
  %index552 = phi i64 [ 0, %vector.ph549 ], [ %index.next573, %vector.body551 ] ; 2 uses
  %i.ul = shl nuw i64 %index552, 2                ; 3 uses
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %i.ul ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 12 ; 2 uses
  %wide.vec553 = load <16 x float>, ptr %i.un, align 4, !tbaa !13, !alias.scope !256
  %strided.vec554 = shufflevector <16 x float> %wide.vec553, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %wide.vec555 = load <16 x float>, ptr %i.um, align 4, !tbaa !13, !alias.scope !256 ; 4 uses
  %strided.vec556 = shufflevector <16 x float> %wide.vec555, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec557 = shufflevector <16 x float> %wide.vec555, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec558 = shufflevector <16 x float> %wide.vec555, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec559 = shufflevector <16 x float> %wide.vec555, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ul
  %wide.vec560 = load <16 x float>, ptr %i.uo, align 4, !tbaa !13, !alias.scope !257 ; 3 uses
  %strided.vec561 = shufflevector <16 x float> %wide.vec560, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec562 = shufflevector <16 x float> %wide.vec560, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec563 = shufflevector <16 x float> %wide.vec560, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.up = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec556, %strided.vec561
  %i.uq = fmul reassoc nsz arcp contract afn <4 x float> %i.up, %strided.vec554
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.ul ; 2 uses
  %wide.vec564 = load <16 x float>, ptr %i.ur, align 4, !tbaa !13, !alias.scope !258, !noalias !259 ; 4 uses
  %strided.vec565 = shufflevector <16 x float> %wide.vec564, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec566 = shufflevector <16 x float> %wide.vec564, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec567 = shufflevector <16 x float> %wide.vec564, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec568 = shufflevector <16 x float> %wide.vec564, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.us = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec565, %i.uq
  %wide.vec569 = load <16 x float>, ptr %i.un, align 4, !tbaa !13, !alias.scope !256 ; 2 uses
  %strided.vec570 = shufflevector <16 x float> %wide.vec569, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.ut = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec557, %strided.vec562
  %i.uu = fmul reassoc nsz arcp contract afn <4 x float> %i.ut, %strided.vec570
  %i.uv = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec566, %i.uu
  %strided.vec572 = shufflevector <16 x float> %wide.vec569, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.uw = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec558, %strided.vec563
  %i.ux = fmul reassoc nsz arcp contract afn <4 x float> %i.uw, %strided.vec572
  %i.uy = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec567, %i.ux
  %i.uz = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec568, %strided.vec559
  %i.va = shufflevector <4 x float> %i.us, <4 x float> %i.uv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.vb = shufflevector <4 x float> %i.uy, <4 x float> %i.uz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.va, <8 x float> %i.vb, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.ur, align 4, !tbaa !13, !alias.scope !258, !noalias !259
  %index.next573 = add nuw i64 %index552, 4       ; 2 uses
  %i.vc = icmp eq i64 %index.next573, %n.vec550
  br i1 %i.vc, label %.preheader316.preheader, label %vector.body551, !llvm.loop !221

vector.memcheck:                                  ; preds = %.lr.ph343.thread
  %i.vd = shl i64 %i.tr, 2                        ; 2 uses
  %i.ve = and i64 %i.vd, -16
  %i.vf = getelementptr i8, ptr %i.tq, i64 %i.vd  ; 3 uses
  %i.vg = getelementptr i8, ptr %i.to, i64 12     ; 3 uses
  %i.vh = add i64 %i.ve, 16                       ; 3 uses
  %i.vi = getelementptr i8, ptr %i.to, i64 %i.vh  ; 3 uses
  %i.vj = getelementptr i8, ptr %i.tp, i64 %i.vh  ; 2 uses
  %i.vk = getelementptr i8, ptr %i.tm, i64 12     ; 2 uses
  %i.vl = getelementptr i8, ptr %i.tm, i64 %i.vh  ; 2 uses
  %bound0 = icmp ult ptr %i.tq, %i.vi
  %bound1 = icmp ult ptr %i.vg, %i.vf
  %found.conflict = and i1 %bound0, %bound1
  %bound0493 = icmp ult ptr %i.tq, %i.vj
  %bound1494 = icmp ult ptr %i.tp, %i.vf
  %found.conflict495 = and i1 %bound0493, %bound1494
  %conflict.rdx = or i1 %found.conflict, %found.conflict495
  %bound0496 = icmp ult ptr %i.tq, %i.vl
  %bound1497 = icmp ult ptr %i.vk, %i.vf
  %found.conflict498 = and i1 %bound0496, %bound1497
  %conflict.rdx499 = or i1 %conflict.rdx, %found.conflict498
  %bound0500 = icmp ult ptr %i.vg, %i.vj
  %bound1501 = icmp ult ptr %i.tp, %i.vi
  %found.conflict502 = and i1 %bound0500, %bound1501
  %conflict.rdx503 = or i1 %conflict.rdx499, %found.conflict502
  %bound0504 = icmp ult ptr %i.vg, %i.vl
  %bound1505 = icmp ult ptr %i.vk, %i.vi
  %found.conflict506 = and i1 %bound0504, %bound1505
  %conflict.rdx507 = or i1 %conflict.rdx503, %found.conflict506
  br i1 %conflict.rdx507, label %.preheader314.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.vm = and i64 %i.tt, 3                        ; 2 uses
  %i.vn = icmp eq i64 %i.vm, 0
  %i.vo = select i1 %i.vn, i64 4, i64 %i.vm
  %n.vec = sub nsw i64 %i.tt, %i.vo               ; 2 uses
  %i.vp = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 4, i64 8, i64 12>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %.idx822 = shl nuw i64 %index, 4
  %i.vq = getelementptr inbounds nuw i8, ptr %i.tp, i64 %.idx822 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 12 ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.vr, align 4, !tbaa !13, !alias.scope !260
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %wide.vec508 = load <16 x float>, ptr %i.vq, align 4, !tbaa !13, !alias.scope !260 ; 4 uses
  %strided.vec509 = shufflevector <16 x float> %wide.vec508, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec510 = shufflevector <16 x float> %wide.vec508, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec511 = shufflevector <16 x float> %wide.vec508, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec512 = shufflevector <16 x float> %wide.vec508, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.vs = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec509, %strided.vec
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.tq, <4 x i64> %vec.ind ; 2 uses
  %i.vt = extractelement <4 x ptr> %wide.gep, i64 0
  %wide.vec513 = load <16 x float>, ptr %i.vt, align 4, !tbaa !13, !alias.scope !261, !noalias !262 ; 3 uses
  %strided.vec514 = shufflevector <16 x float> %wide.vec513, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec515 = shufflevector <16 x float> %wide.vec513, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec516 = shufflevector <16 x float> %wide.vec513, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.vu = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec514, %i.vs
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.vu, <4 x ptr> align 4 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !261, !noalias !262
  %wide.vec517 = load <16 x float>, ptr %i.vr, align 4, !tbaa !13, !alias.scope !260
  %strided.vec518 = shufflevector <16 x float> %wide.vec517, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.vv = or disjoint <4 x i64> %vec.ind, splat (i64 1)
  %i.vw = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec510, %strided.vec518
  %wide.gep519 = getelementptr inbounds nuw [4 x i8], ptr %i.tq, <4 x i64> %i.vv
  %i.vx = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec515, %i.vw
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.vx, <4 x ptr> align 4 %wide.gep519, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !261, !noalias !262
  %i.vy = or disjoint <4 x i64> %vec.ind, splat (i64 2)
  %i.vz = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec511, %strided.vec512
  %wide.gep520 = getelementptr inbounds nuw [4 x i8], ptr %i.tq, <4 x i64> %i.vy
  %i.wa = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec516, %i.vz
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.wa, <4 x ptr> align 4 %wide.gep520, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !261, !noalias !262
  %i.wb = or disjoint <4 x i64> %vec.ind, splat (i64 3) ; 2 uses
  %i.wc = extractelement <4 x i64> %i.wb, i64 0
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.tm, i64 %i.wc
  %wide.vec521 = load <16 x float>, ptr %i.wd, align 4, !tbaa !13, !alias.scope !263
  %strided.vec522 = shufflevector <16 x float> %wide.vec521, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %wide.gep523 = getelementptr inbounds nuw [4 x i8], ptr %i.to, <4 x i64> %i.wb ; 2 uses
  %i.we = extractelement <4 x ptr> %wide.gep523, i64 0
  %wide.vec524 = load <16 x float>, ptr %i.we, align 4, !tbaa !13, !alias.scope !264, !noalias !265
  %strided.vec525 = shufflevector <16 x float> %wide.vec524, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.wf = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec525, %strided.vec522
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.wf, <4 x ptr> align 4 %wide.gep523, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !264, !noalias !265
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.wg = icmp eq i64 %index.next, %n.vec
  br i1 %i.wg, label %.preheader314.us.preheader, label %vector.body, !llvm.loop !227

.preheader314.us.preheader:                       ; preds = %vector.body, %vector.memcheck, %.lr.ph343.thread
  %.0260341.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph343.thread ], [ %i.vp, %vector.body ]
  br label %.preheader314.us

.preheader314.us:                                 ; preds = %.preheader314.us.preheader, %.preheader314.us
  %.0260341.us = phi i64 [ %i.xl, %.preheader314.us ], [ %.0260341.us.ph, %.preheader314.us.preheader ] ; 6 uses
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %.0260341.us ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 12 ; 3 uses
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !13
  %i.wk = load float, ptr %i.wh, align 4, !tbaa !13
  %i.wl = fmul reassoc nsz arcp contract afn float %i.wk, %i.wj
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %.0260341.us ; 2 uses
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !13
  %i.wo = fadd reassoc nsz arcp contract afn float %i.wn, %i.wl
  store float %i.wo, ptr %i.wm, align 4, !tbaa !13
  %i.wp = load float, ptr %i.wi, align 4, !tbaa !13
  %i.wq = or disjoint i64 %.0260341.us, 1         ; 2 uses
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %i.wq
  %i.ws = load float, ptr %i.wr, align 4, !tbaa !13
  %i.wt = fmul reassoc nsz arcp contract afn float %i.ws, %i.wp
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %i.wq ; 2 uses
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !13
  %i.ww = fadd reassoc nsz arcp contract afn float %i.wv, %i.wt
  store float %i.ww, ptr %i.wu, align 4, !tbaa !13
  %i.wx = load float, ptr %i.wi, align 4, !tbaa !13
  %i.wy = or disjoint i64 %.0260341.us, 2         ; 2 uses
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %i.wy
  %i.xa = load float, ptr %i.wz, align 4, !tbaa !13
  %i.xb = fmul reassoc nsz arcp contract afn float %i.xa, %i.wx
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %i.wy ; 2 uses
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !13
  %i.xe = fadd reassoc nsz arcp contract afn float %i.xd, %i.xb
  store float %i.xe, ptr %i.xc, align 4, !tbaa !13
  %i.xf = or disjoint i64 %.0260341.us, 3         ; 2 uses
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.tm, i64 %i.xf
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !13
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %i.xf ; 2 uses
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !13
  %i.xk = fadd reassoc nsz arcp contract afn float %i.xj, %i.xh
  store float %i.xk, ptr %i.xi, align 4, !tbaa !13
  %i.xl = add nuw i64 %.0260341.us, 4             ; 2 uses
  %i.xm = icmp ult i64 %i.xl, %i.tk
  br i1 %i.xm, label %.preheader314.us, label %._crit_edge344, !llvm.loop !228

._crit_edge344:                                   ; preds = %.preheader316, %.preheader314.us, %.thread452, %.loopexit457
  %indvars.iv.next392 = add nsw i64 %indvars.iv391, -1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.qd, label %.preheader318, label %bb.ag

.preheader316:                                    ; preds = %.preheader316.preheader, %.preheader316
end_hunk_1
begin_hunk_2_@process_fusion:bb.a
._crit_edge360:                                   ; preds = %._crit_edge360.loopexit.unr-lcssa, %.preheader309.epil, %.epil.preheader, %.preheader312
  %i.abl = icmp sgt i32 %.pre-phi414, %i.zc
  br i1 %i.abl, label %bb.aj, label %.loopexit311

bb.ai:                                            ; preds = %.loopexit310.1, %.lr.ph359.new
  %.0255358 = phi i64 [ 0, %.lr.ph359.new ], [ %i.acj, %.loopexit310.1 ] ; 3 uses
  %niter848 = phi i64 [ 0, %.lr.ph359.new ], [ %niter848.next.1, %.loopexit310.1 ]
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %i.aas, i64 %.0255358 ; 4 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 12
  %i.abo = load float, ptr %i.abn, align 4, !tbaa !13 ; 3 uses
  %i.abp = fcmp reassoc nsz arcp contract afn ogt float %i.abo, f0x322BCC77
  br i1 %i.abp, label %.preheader309, label %.loopexit310

.preheader309:                                    ; preds = %bb.ai
  %i.abq = load <2 x float>, ptr %i.abm, align 4, !tbaa !13
  %i.abr = insertelement <2 x float> poison, float %i.abo, i64 0
  %i.abs = shufflevector <2 x float> %i.abr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abt = fdiv reassoc nsz arcp contract afn <2 x float> %i.abq, %i.abs
  store <2 x float> %i.abt, ptr %i.abm, align 4, !tbaa !13
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abm, i64 8 ; 2 uses
  %i.abv = load float, ptr %i.abu, align 4, !tbaa !13
  %i.abw = fdiv reassoc nsz arcp contract afn float %i.abv, %i.abo
  store float %i.abw, ptr %i.abu, align 4, !tbaa !13
  br label %.loopexit310

.loopexit310:                                     ; preds = %.preheader309, %bb.ai
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %i.aas, i64 %.0255358 ; 3 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 28
  %i.abz = load float, ptr %i.aby, align 4, !tbaa !13 ; 3 uses
  %i.aca = fcmp reassoc nsz arcp contract afn ogt float %i.abz, f0x322BCC77
  br i1 %i.aca, label %.preheader309.1, label %.loopexit310.1

.preheader309.1:                                  ; preds = %.loopexit310
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abx, i64 16 ; 2 uses
  %i.acc = load <2 x float>, ptr %i.acb, align 4, !tbaa !13
  %i.acd = insertelement <2 x float> poison, float %i.abz, i64 0
  %i.ace = shufflevector <2 x float> %i.acd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acf = fdiv reassoc nsz arcp contract afn <2 x float> %i.acc, %i.ace
  store <2 x float> %i.acf, ptr %i.acb, align 4, !tbaa !13
  %i.acg = getelementptr inbounds nuw i8, ptr %i.abx, i64 24 ; 2 uses
  %i.ach = load float, ptr %i.acg, align 4, !tbaa !13
  %i.aci = fdiv reassoc nsz arcp contract afn float %i.ach, %i.abz
  store float %i.aci, ptr %i.acg, align 4, !tbaa !13
  br label %.loopexit310.1

.loopexit310.1:                                   ; preds = %.preheader309.1, %.loopexit310
  %i.acj = add nuw i64 %.0255358, 8               ; 2 uses
  %niter848.next.1 = add i64 %niter848, 2         ; 2 uses
  %niter848.ncmp.1.not = icmp eq i64 %niter848.next.1, %unroll_iter847
  br i1 %niter848.ncmp.1.not, label %._crit_edge360.loopexit.unr-lcssa, label %bb.ai

bb.aj:                                            ; preds = %._crit_edge360
  %i.ack = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv403 ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 8
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !126 ; 4 uses
  %i.acn = add nsw i64 %i.aan, 2305843009213693951
  %i.aco = lshr i64 %i.acn, 1                     ; 2 uses
  %i.acp = add nuw nsw i64 %i.aco, 1
  tail call void @dt_iop_image_fill(ptr noundef %3, float noundef 0.000000e+00, i64 noundef range(i64 -2147483648, 2147483648) %i.aan, i64 noundef range(i64 -2147483648, 2147483648) %i.aap, i64 noundef 4) #26
  %i.acq = icmp eq <2 x i32> %i.aal, zeroinitializer
  %i.acr = bitcast <2 x i1> %i.acq to i2
  %i.acs = icmp eq i2 %i.acr, 0
  br i1 %i.acs, label %.preheader32.i295.preheader, label %gauss_expand.exit304

.preheader32.i295.preheader:                      ; preds = %bb.aj
  %i.act = shl i64 %i.aco, 4                      ; 2 uses
  %i.acu = add nsw i64 %i.act, 16
  %scevgep751 = getelementptr i8, ptr %i.acm, i64 16
  %i.acv = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %i.aam, <2 x i64> splat (i64 2))
  %i.acw = add <2 x i64> %i.acv, splat (i64 -1)   ; 2 uses
  %i.acx = extractelement <2 x i64> %i.acw, i64 1
  %i.acy = lshr i64 %i.acx, 1                     ; 2 uses
  %i.acz = mul i64 %i.acy, %i.acu
  %i.ada = extractelement <2 x i64> %i.acw, i64 0
  %i.adb = lshr i64 %i.ada, 1                     ; 2 uses
  %i.adc = shl i64 %i.adb, 4
  %i.add = getelementptr i8, ptr %scevgep751, i64 %i.acz
  %scevgep754 = getelementptr i8, ptr %i.add, i64 %i.adc
  %i.ade = shl nsw i64 %i.aan, 5
  %i.adf = mul i64 %i.ade, %i.acy
  %i.adg = shl i64 %i.adb, 5
  %i.adh = getelementptr i8, ptr %scevgep755, i64 %i.adf
  %scevgep756 = getelementptr i8, ptr %i.adh, i64 %i.adg
  %i.adi = tail call i64 @llvm.umax.i64(i64 %i.aan, i64 2)
  %i.adj = add i64 %i.adi, -1
  %i.adk = lshr i64 %i.adj, 1
  %i.adl = add nuw i64 %i.adk, 1                  ; 2 uses
  %min.iters.check758 = icmp ult i64 %i.aan, 7
  %bound0760 = icmp ult ptr %3, %scevgep754
  %bound1761 = icmp ult ptr %i.acm, %scevgep756
  %found.conflict762 = and i1 %bound0760, %bound1761
  %stride.check763 = icmp slt i64 %i.aan, 0
  %i.adm = or i1 %found.conflict762, %stride.check763
  %stride.check764 = icmp slt i64 %i.act, -16
  %i.adn = or i1 %i.adm, %stride.check764
  %n.vec766 = and i64 %i.adl, -4                  ; 3 uses
  %i.ado = shl i64 %n.vec766, 1
  %cmp.n784 = icmp eq i64 %i.adl, %n.vec766
  br label %.preheader32.i295

.preheader32.i295:                                ; preds = %.preheader32.i295.preheader, %._crit_edge.i302
  %indvars.iv38.i296 = phi i64 [ %indvars.iv.next39.i303, %._crit_edge.i302 ], [ 0, %.preheader32.i295.preheader ] ; 3 uses
  %i.adp = lshr exact i64 %indvars.iv38.i296, 1
  %i.adq = mul i64 %i.adp, %i.acp                 ; 2 uses
  %i.adr = mul nsw i64 %indvars.iv38.i296, %i.aan ; 2 uses
  %brmerge858 = select i1 %min.iters.check758, i1 true, i1 %i.adn
  br i1 %brmerge858, label %.preheader.i297.preheader, label %vector.ph765

vector.ph765:                                     ; preds = %.preheader32.i295
  %broadcast.splatinsert767 = insertelement <4 x i64> poison, i64 %i.adr, i64 0
  %broadcast.splat768 = shufflevector <4 x i64> %broadcast.splatinsert767, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body769

vector.body769:                                   ; preds = %vector.body769, %vector.ph765
  %index770 = phi i64 [ 0, %vector.ph765 ], [ %index.next781, %vector.body769 ] ; 2 uses
  %vec.ind771 = phi <4 x i64> [ <i64 0, i64 2, i64 4, i64 6>, %vector.ph765 ], [ %vec.ind.next782, %vector.body769 ] ; 2 uses
  %i.ads = add i64 %index770, %i.adq
  %i.adt = shl i64 %i.ads, 4
  %i.adu = getelementptr inbounds nuw i8, ptr %i.acm, i64 %i.adt
  %i.adv = add nuw nsw <4 x i64> %vec.ind771, %broadcast.splat768
  %i.adw = shl <4 x i64> %i.adv, splat (i64 4)
  %wide.gep772 = getelementptr inbounds nuw i8, ptr %3, <4 x i64> %i.adw ; 4 uses
  %wide.vec773 = load <16 x float>, ptr %i.adu, align 4, !tbaa !13, !alias.scope !270 ; 4 uses
  %strided.vec774 = shufflevector <16 x float> %wide.vec773, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec775 = shufflevector <16 x float> %wide.vec773, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec776 = shufflevector <16 x float> %wide.vec773, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec777 = shufflevector <16 x float> %wide.vec773, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.adx = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec774, splat (float 4.000000e+00)
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.adx, <4 x ptr> align 4 %wide.gep772, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !271, !noalias !270
  %i.ady = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec775, splat (float 4.000000e+00)
  %wide.gep778 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep772, i64 4
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ady, <4 x ptr> align 4 %wide.gep778, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !271, !noalias !270
  %i.adz = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec776, splat (float 4.000000e+00)
  %wide.gep779 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep772, i64 8
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.adz, <4 x ptr> align 4 %wide.gep779, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !271, !noalias !270
  %i.aea = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec777, splat (float 4.000000e+00)
  %wide.gep780 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep772, i64 12
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.aea, <4 x ptr> align 4 %wide.gep780, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !271, !noalias !270
  %index.next781 = add nuw i64 %index770, 4       ; 2 uses
  %vec.ind.next782 = add nuw nsw <4 x i64> %vec.ind771, splat (i64 8)
  %i.aeb = icmp eq i64 %index.next781, %n.vec766
  br i1 %i.aeb, label %middle.block783, label %vector.body769, !llvm.loop !239

middle.block783:                                  ; preds = %vector.body769
  br i1 %cmp.n784, label %._crit_edge.i302, label %.preheader.i297.preheader

.preheader.i297.preheader:                        ; preds = %.preheader32.i295, %middle.block783
  %indvars.iv.i298.ph = phi i64 [ %i.ado, %middle.block783 ], [ 0, %.preheader32.i295 ]
  br label %.preheader.i297

.preheader.i297:                                  ; preds = %.preheader.i297.preheader, %.preheader.i297
  %indvars.iv.i298 = phi i64 [ %indvars.iv.next.i301, %.preheader.i297 ], [ %indvars.iv.i298.ph, %.preheader.i297.preheader ] ; 3 uses
  %i.aec = lshr exact i64 %indvars.iv.i298, 1
  %i.aed = add i64 %i.aec, %i.adq
  %.idx.i299 = shl i64 %i.aed, 4
  %i.aee = getelementptr inbounds nuw i8, ptr %i.acm, i64 %.idx.i299 ; 4 uses
  %i.aef = add nsw i64 %indvars.iv.i298, %i.adr
  %.idx31.i300 = shl i64 %i.aef, 4
  %i.aeg = getelementptr inbounds nuw i8, ptr %3, i64 %.idx31.i300 ; 4 uses
  %i.aeh = load float, ptr %i.aee, align 4, !tbaa !13
  %i.aei = fmul reassoc nsz arcp contract afn float %i.aeh, 4.000000e+00
  store float %i.aei, ptr %i.aeg, align 4, !tbaa !13
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aee, i64 4
  %i.aek = load float, ptr %i.aej, align 4, !tbaa !13
  %i.ael = fmul reassoc nsz arcp contract afn float %i.aek, 4.000000e+00
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aeg, i64 4
  store float %i.ael, ptr %i.aem, align 4, !tbaa !13
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aee, i64 8
  %i.aeo = load float, ptr %i.aen, align 4, !tbaa !13
  %i.aep = fmul reassoc nsz arcp contract afn float %i.aeo, 4.000000e+00
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aeg, i64 8
  store float %i.aep, ptr %i.aeq, align 4, !tbaa !13
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aee, i64 12
  %i.aes = load float, ptr %i.aer, align 4, !tbaa !13
  %i.aet = fmul reassoc nsz arcp contract afn float %i.aes, 4.000000e+00
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aeg, i64 12
  store float %i.aet, ptr %i.aeu, align 4, !tbaa !13
  %indvars.iv.next.i301 = add nuw nsw i64 %indvars.iv.i298, 2 ; 2 uses
  %i.aev = icmp ult i64 %indvars.iv.next.i301, %i.aan
  br i1 %i.aev, label %.preheader.i297, label %._crit_edge.i302, !llvm.loop !240

._crit_edge.i302:                                 ; preds = %.preheader.i297, %middle.block783
  %indvars.iv.next39.i303 = add nuw nsw i64 %indvars.iv38.i296, 2 ; 2 uses
  %i.aew = icmp ult i64 %indvars.iv.next39.i303, %i.aap
  br i1 %i.aew, label %.preheader32.i295, label %gauss_expand.exit304

gauss_expand.exit304:                             ; preds = %._crit_edge.i302, %bb.aj
  tail call fastcc void @gauss_blur(ptr noundef %3, ptr noundef %3, i64 noundef range(i64 -2147483648, 2147483648) %i.aan, i64 noundef range(i64 -2147483648, 2147483648) %i.aap)
  br i1 %.not371, label %.loopexit311, label %.preheader308.lr.ph

.preheader308.lr.ph:                              ; preds = %gauss_expand.exit304
  %i.aex = load ptr, ptr %i.ack, align 8, !tbaa !126 ; 8 uses
  %i.aey = add i64 %i.aaq, -1                     ; 2 uses
  %i.aez = lshr i64 %i.aey, 2
  %i.afa = add nuw nsw i64 %i.aez, 1              ; 2 uses
  %min.iters.check714 = icmp ult i64 %i.aaq, 17
  br i1 %min.iters.check714, label %.preheader308.preheader, label %vector.memcheck715

vector.memcheck715:                               ; preds = %.preheader308.lr.ph
  %i.afb = shl i64 %i.aey, 2                      ; 2 uses
  %6 = and i64 %i.afb, -16
  %i.afc = getelementptr i8, ptr %i.aex, i64 %i.afb
  %i.afd = getelementptr i8, ptr %scevgep715, i64 %6
  %bound0716 = icmp ult ptr %i.aex, %i.afd
  %bound1717 = icmp ult ptr %3, %i.afc
  %found.conflict718 = and i1 %bound0716, %bound1717
  br i1 %found.conflict718, label %.preheader308.preheader, label %vector.ph719

vector.ph719:                                     ; preds = %vector.memcheck715
  %i.afe = and i64 %i.afa, 3                      ; 2 uses
  %i.aff = icmp eq i64 %i.afe, 0
  %i.afg = select i1 %i.aff, i64 4, i64 %i.afe
  %n.vec720 = sub nsw i64 %i.afa, %i.afg          ; 2 uses
  %i.afh = shl i64 %n.vec720, 2
  br label %vector.body721

vector.body721:                                   ; preds = %vector.body721, %vector.ph719
  %index722 = phi i64 [ 0, %vector.ph719 ], [ %index.next735, %vector.body721 ] ; 2 uses
  %vec.ind723 = phi <4 x i64> [ <i64 0, i64 4, i64 8, i64 12>, %vector.ph719 ], [ %vec.ind.next736, %vector.body721 ] ; 4 uses
  %.idx823 = shl nuw i64 %index722, 4
  %i.afi = getelementptr inbounds nuw i8, ptr %3, i64 %.idx823
  %wide.vec724 = load <16 x float>, ptr %i.afi, align 4, !tbaa !13, !alias.scope !272 ; 3 uses
  %strided.vec725 = shufflevector <16 x float> %wide.vec724, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec726 = shufflevector <16 x float> %wide.vec724, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec727 = shufflevector <16 x float> %wide.vec724, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %wide.gep728 = getelementptr inbounds nuw [4 x i8], ptr %i.aex, <4 x i64> %vec.ind723 ; 2 uses
  %i.afj = extractelement <4 x ptr> %wide.gep728, i64 0
  %wide.vec729 = load <16 x float>, ptr %i.afj, align 4, !tbaa !13, !alias.scope !273, !noalias !272 ; 3 uses
  %strided.vec730 = shufflevector <16 x float> %wide.vec729, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec731 = shufflevector <16 x float> %wide.vec729, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec732 = shufflevector <16 x float> %wide.vec729, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.afk = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec730, %strided.vec725
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.afk, <4 x ptr> align 4 %wide.gep728, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !273, !noalias !272
  %i.afl = or disjoint <4 x i64> %vec.ind723, splat (i64 1)
  %wide.gep733 = getelementptr inbounds nuw [4 x i8], ptr %i.aex, <4 x i64> %i.afl
  %i.afm = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec731, %strided.vec726
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.afm, <4 x ptr> align 4 %wide.gep733, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !273, !noalias !272
  %i.afn = or disjoint <4 x i64> %vec.ind723, splat (i64 2)
  %wide.gep734 = getelementptr inbounds nuw [4 x i8], ptr %i.aex, <4 x i64> %i.afn
  %i.afo = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec732, %strided.vec727
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.afo, <4 x ptr> align 4 %wide.gep734, <4 x i1> splat (i1 true)), !tbaa !13, !alias.scope !273, !noalias !272
  %index.next735 = add nuw i64 %index722, 4       ; 2 uses
  %vec.ind.next736 = add nuw <4 x i64> %vec.ind723, splat (i64 16)
  %i.afp = icmp eq i64 %index.next735, %n.vec720
  br i1 %i.afp, label %.preheader308.preheader, label %vector.body721, !llvm.loop !244

.preheader308.preheader:                          ; preds = %vector.body721, %vector.memcheck715, %.preheader308.lr.ph
  %.0253364.ph = phi i64 [ 0, %vector.memcheck715 ], [ 0, %.preheader308.lr.ph ], [ %i.afh, %vector.body721 ]
  br label %.preheader308

.preheader308:                                    ; preds = %.preheader308.preheader, %.preheader308
  %.0253364 = phi i64 [ %i.agh, %.preheader308 ], [ %.0253364.ph, %.preheader308.preheader ] ; 5 uses
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0253364
  %i.afr = load float, ptr %i.afq, align 4, !tbaa !13
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.aex, i64 %.0253364 ; 2 uses
  %i.aft = load float, ptr %i.afs, align 4, !tbaa !13
  %i.afu = fadd reassoc nsz arcp contract afn float %i.aft, %i.afr
  store float %i.afu, ptr %i.afs, align 4, !tbaa !13
  %i.afv = or disjoint i64 %.0253364, 1           ; 2 uses
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.afv
  %i.afx = load float, ptr %i.afw, align 4, !tbaa !13
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.aex, i64 %i.afv ; 2 uses
  %i.afz = load float, ptr %i.afy, align 4, !tbaa !13
  %i.aga = fadd reassoc nsz arcp contract afn float %i.afz, %i.afx
  store float %i.aga, ptr %i.afy, align 4, !tbaa !13
  %i.agb = or disjoint i64 %.0253364, 2           ; 2 uses
  %i.agc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.agb
  %i.agd = load float, ptr %i.agc, align 4, !tbaa !13
  %i.age = getelementptr inbounds nuw [4 x i8], ptr %i.aex, i64 %i.agb ; 2 uses
  %i.agf = load float, ptr %i.age, align 4, !tbaa !13
  %i.agg = fadd reassoc nsz arcp contract afn float %i.agf, %i.agd
  store float %i.agg, ptr %i.age, align 4, !tbaa !13
  %i.agh = add nuw i64 %.0253364, 4               ; 2 uses
  %i.agi = icmp ult i64 %i.agh, %i.aaq
  br i1 %i.agi, label %.preheader308, label %.loopexit311, !llvm.loop !245

.loopexit311:                                     ; preds = %.preheader308, %gauss_expand.exit304, %._crit_edge360
  %indvars.iv.next404 = add nsw i64 %indvars.iv403, -1
  %indvar.next833 = add i64 %indvar832, 1
  br i1 %i.zd, label %.preheader313, label %.preheader

scalar.ph798:                                     ; preds = %scalar.ph798.preheader, %scalar.ph798
  %.0251366 = phi i64 [ %i.ahb, %scalar.ph798 ], [ %.0251366.ph, %scalar.ph798.preheader ] ; 6 uses
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %.0251366
  %i.agk = load float, ptr %i.agj, align 4, !tbaa !13
  %i.agl = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.agk, float 0.000000e+00)
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0251366
  store float %i.agl, ptr %i.agm, align 4, !tbaa !13
  %i.agn = or disjoint i64 %.0251366, 1           ; 2 uses
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %i.agn
  %i.agp = load float, ptr %i.ago, align 4, !tbaa !13
  %i.agq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.agp, float 0.000000e+00)
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.agn
  store float %i.agq, ptr %i.agr, align 4, !tbaa !13
  %i.ags = or disjoint i64 %.0251366, 2           ; 2 uses
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %i.ags
  %i.agu = load float, ptr %i.agt, align 4, !tbaa !13
  %i.agv = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.agu, float 0.000000e+00)
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ags
  store float %i.agv, ptr %i.agw, align 4, !tbaa !13
  %i.agx = or disjoint i64 %.0251366, 3           ; 2 uses
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.agx
  %i.agz = load float, ptr %i.agy, align 4, !tbaa !13
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.agx
  store float %i.agz, ptr %i.aha, align 4, !tbaa !13
  %i.ahb = add nuw i64 %.0251366, 4               ; 2 uses
  %i.ahc = icmp ult i64 %i.ahb, %i.zh
  br i1 %i.ahc, label %scalar.ph798, label %.loopexit, !llvm.loop !246

.loopexit:                                        ; preds = %scalar.ph798, %.preheader, %.thread
  %.0274307 = phi i32 [ 8, %.thread ], [ %.0274, %.preheader ], [ %.0274, %scalar.ph798 ]
  %wide.trip.count409 = zext nneg i32 %.0274307 to i64
  br label %bb.al

bb.ak:                                            ; preds = %bb.al
  tail call void @free(ptr noundef nonnull %i.k) #26
  tail call void @free(ptr noundef nonnull %i.l) #26
  ret void

bb.al:                                            ; preds = %.loopexit, %bb.al
  %indvars.iv406 = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next407, %bb.al ] ; 3 uses
  %i.ahd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv406
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !126
  tail call void @free(ptr noundef %i.ahe) #26
  %i.ahf = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv406
  %i.ahg = load ptr, ptr %i.ahf, align 8, !tbaa !126
  tail call void @free(ptr noundef %i.ahg) #26
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
end_hunk_2
