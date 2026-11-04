Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/ellipse?download=true
inline.NumInlined: 96
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ellipse_get_mask_roi:bb.a
  %broadcast.splat476 = shufflevector <2 x float> %i.db, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat478 = shufflevector <2 x float> %i.cy, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat480 = shufflevector <2 x float> %i.db, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat482 = shufflevector <2 x float> %i.t, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat484 = shufflevector <2 x float> %i.t, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.dc = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.dd = uitofp nneg <8 x i32> %vec.ind to <8 x float>
  %i.de = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.dd, splat (float f0x40C90FDB)
  %i.df = fmul reassoc nsz arcp contract afn <8 x float> %i.de, %i.dc
  %i.dg = tail call reassoc nsz arcp contract afn { <8 x float>, <8 x float> } @llvm.sincos.v8f32(<8 x float> %i.df) ; 2 uses
  %i.dh = extractvalue { <8 x float>, <8 x float> } %i.dg, 0 ; 2 uses
  %i.di = extractvalue { <8 x float>, <8 x float> } %i.dg, 1 ; 2 uses
  %i.dj = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat474, %i.di
  %i.dk = fadd reassoc nsz arcp contract afn <8 x float> %i.dj, %broadcast.splat482
  %i.dl = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat476, %i.dh
  %i.dm = fadd reassoc nsz arcp contract afn <8 x float> %i.dk, %i.dl
  %i.dn = shl nuw nsw i64 %index, 3
  %i.do = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.dn
  %i.dp = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat478, %i.di
  %i.dq = fadd reassoc nsz arcp contract afn <8 x float> %i.dp, %broadcast.splat484
  %i.dr = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat480, %i.dh
  %i.ds = fadd reassoc nsz arcp contract afn <8 x float> %i.dq, %i.dr
  %interleaved.vec = shufflevector <8 x float> %i.dm, <8 x float> %i.ds, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.do, align 64, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !191

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %i.du = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.cs
  %i.dv = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader406
  %i.dw = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !127
  %i.dx = and i32 %i.dw, 4112
  %or.cond375.not = icmp eq i32 %i.dx, 4112
  br i1 %or.cond375.not, label %bb.h, label %bb.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dy = trunc nuw nsw i64 %indvars.iv to i32
  %i.dz = uitofp nsz nneg i32 %i.dy to float
  %i.ea = fmul reassoc nnan nsz arcp contract afn float %i.dz, f0x40C90FDB
  %i.eb = fmul reassoc nsz arcp contract afn float %i.ea, %i.du
  %sincos371 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.eb) ; 2 uses
  %sin372 = extractvalue { float, float } %sincos371, 0
  %cos373 = extractvalue { float, float } %sincos371, 1
  %.idx471 = shl nuw nsw i64 %indvars.iv, 3
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx471
  %i.ed = insertelement <2 x float> poison, float %cos373, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = fmul reassoc nsz arcp contract afn <2 x float> %i.cy, %i.ee
  %i.eg = fadd reassoc nsz arcp contract afn <2 x float> %i.ef, %i.t
  %i.eh = insertelement <2 x float> poison, float %sin372, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = fmul reassoc nsz arcp contract afn <2 x float> %i.dv, %i.ei
  %i.ek = fadd reassoc nsz arcp contract afn <2 x float> %i.eg, %i.ej
  store <2 x float> %i.ek, ptr %i.ec, align 8, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !192

bb.h:                                             ; preds = %._crit_edge
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.em = call i32 @gettimeofday(ptr noundef nonnull %12, ptr noundef null) #12 ; 0 uses
  %i.en = load i64, ptr %12, align 8, !tbaa !129
  %i.eo = add nsw i64 %i.en, -1290608000
  %i.ep = sitofp reassoc nsz arcp contract afn i64 %i.eo to double
  %i.eq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !130
  %i.es = sitofp reassoc nsz arcp contract afn i64 %i.er to double
  %i.et = fmul reassoc nnan nsz arcp contract afn double %i.es, f0x3EB0C6F7A0B5ED8D
  %i.eu = fadd reassoc nsz arcp contract afn double %i.et, %i.ep ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  %i.ev = fsub reassoc nsz arcp contract afn double %i.eu, %.0
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.24, ptr noundef nonnull %i.el, double noundef %i.ev) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %.1 = phi nsz double [ %.0, %._crit_edge ], [ %i.eu, %bb.h ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !132
  %i.ey = load ptr, ptr %i.n, align 8, !tbaa !138
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 16, !tbaa !126
  %i.fb = sitofp reassoc nsz arcp contract afn i32 %i.fa to double
  %i.fc = tail call i32 @dt_dev_distort_transform_plus(ptr noundef %i.ex, ptr noundef %i.ey, double noundef %i.fb, i32 noundef 3, ptr noundef nonnull %i.cq, i64 noundef %i.co) #12
  %.not348 = icmp eq i32 %i.fc, 0
  br i1 %.not348, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.cq) #12
  br label %bb.ai

bb.k:                                             ; preds = %bb.i
  %i.fd = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !127
  %i.fe = and i32 %i.fd, 4112
  %or.cond376.not = icmp eq i32 %i.fe, 4112
  br i1 %or.cond376.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.fg = call i32 @gettimeofday(ptr noundef nonnull %11, ptr noundef null) #12 ; 0 uses
  %i.fh = load i64, ptr %11, align 8, !tbaa !129
  %i.fi = add nsw i64 %i.fh, -1290608000
  %i.fj = sitofp reassoc nsz arcp contract afn i64 %i.fi to double
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !130
  %i.fm = sitofp reassoc nsz arcp contract afn i64 %i.fl to double
  %i.fn = fmul reassoc nnan nsz arcp contract afn double %i.fm, f0x3EB0C6F7A0B5ED8D
  %i.fo = fadd reassoc nsz arcp contract afn double %i.fn, %i.fj ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.fp = fsub reassoc nsz arcp contract afn double %i.fo, %.1
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.25, ptr noundef nonnull %i.ff, double noundef %i.fp) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2397 = phi nsz double [ %.1, %bb.k ], [ %i.fo, %bb.l ] ; 2 uses
  br i1 %.not434, label %._crit_edge415, label %.lr.ph414.preheader

.lr.ph414.preheader:                              ; preds = %bb.m
  %wide.trip.count441 = zext i32 %i.cn to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count441, 1
  %i.fq = icmp eq i32 %i.cm, 1
  br i1 %i.fq, label %.lr.ph414.epil.preheader, label %.lr.ph414.preheader.new

.lr.ph414.preheader.new:                          ; preds = %.lr.ph414.preheader
  %unroll_iter = and i64 %wide.trip.count441, 4294967294
  br label %.lr.ph414

._crit_edge415.loopexit.unr-lcssa:                ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge415, label %.lr.ph414.epil.preheader

.lr.ph414.epil.preheader:                         ; preds = %._crit_edge415.loopexit.unr-lcssa, %.lr.ph414.preheader
  %indvars.iv437.epil.init = phi i64 [ 0, %.lr.ph414.preheader ], [ %indvars.iv.next438.1, %._crit_edge415.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x float> [ splat (float f0x00800000), %.lr.ph414.preheader ], [ %i.ig, %._crit_edge415.loopexit.unr-lcssa ] ; 4 uses
  %.epil.init571 = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph414.preheader ], [ %i.ih, %._crit_edge415.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod574 = trunc i32 %i.cn to i1
  tail call void @llvm.assume(i1 %lcmp.mod574)
  %.idx472.epil = shl nuw nsw i64 %indvars.iv437.epil.init, 3
  %i.fr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx472.epil ; 3 uses
  %i.fs = load float, ptr %i.fr, align 8, !tbaa !26
  %i.ft = tail call i1 @llvm.is.fpclass.f32(float %i.fs, /* (nan inf zero sub) */ i32 759)
  br i1 %i.ft, label %._crit_edge415, label %bb.n

bb.n:                                             ; preds = %.lr.ph414.epil.preheader
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !26
  %i.fw = tail call i1 @llvm.is.fpclass.f32(float %i.fv, /* (nan inf zero sub) */ i32 759)
  br i1 %i.fw, label %._crit_edge415, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fx = load <2 x float>, ptr %i.fr, align 8, !tbaa !26 ; 4 uses
  %i.fy = fcmp reassoc nsz arcp contract afn olt <2 x float> %.epil.init571, %i.fx
  %i.fz = fcmp reassoc nsz arcp contract afn ogt <2 x float> %.epil.init, %i.fx
  %i.ga = select <2 x i1> %i.fy, <2 x float> %.epil.init571, <2 x float> %i.fx
  %i.gb = select <2 x i1> %i.fz, <2 x float> %.epil.init, <2 x float> %i.fx
  br label %._crit_edge415

._crit_edge415:                                   ; preds = %._crit_edge415.loopexit.unr-lcssa, %bb.o, %bb.n, %.lr.ph414.epil.preheader, %bb.m
  %i.gc = phi <2 x float> [ splat (float f0x00800000), %bb.m ], [ %i.ig, %._crit_edge415.loopexit.unr-lcssa ], [ %i.gb, %bb.o ], [ %.epil.init, %bb.n ], [ %.epil.init, %.lr.ph414.epil.preheader ]
  %i.gd = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.m ], [ %i.ih, %._crit_edge415.loopexit.unr-lcssa ], [ %i.ga, %bb.o ], [ %.epil.init571, %bb.n ], [ %.epil.init571, %.lr.ph414.epil.preheader ]
  %i.ge = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.gf = shufflevector <2 x float> %i.ge, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gg = fmul reassoc nsz arcp contract afn <2 x float> %i.gd, %i.gf
  %i.gh = sitofp reassoc nsz arcp contract afn <2 x i32> %i.be to <2 x float> ; 2 uses
  %i.gi = fmul reassoc nsz arcp contract afn <2 x float> %i.gc, %i.gf
  %i.gj = fsub reassoc nsz arcp contract afn <2 x float> %i.gg, %i.gh
  %i.gk = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.gj)
  %i.gl = fptosi <2 x float> %i.gk to <2 x i32>
  %i.gm = sdiv <2 x i32> %i.gl, %i.bj             ; 2 uses
  %i.gn = add nsw <2 x i32> %i.gm, splat (i32 -1) ; 2 uses
  %i.go = icmp sgt <2 x i32> %i.gn, %i.bk
  %i.gp = icmp sgt <2 x i32> %i.gm, zeroinitializer
  %i.gq = select <2 x i1> %i.gp, <2 x i32> %i.gn, <2 x i32> zeroinitializer
  %i.gr = select <2 x i1> %i.go, <2 x i32> %i.bk, <2 x i32> %i.gq ; 6 uses
  %i.gs = fsub reassoc nsz arcp contract afn <2 x float> %i.gi, %i.gh
  %i.gt = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.gs)
  %i.gu = fptosi <2 x float> %i.gt to <2 x i32>
  %i.gv = sdiv <2 x i32> %i.gu, %i.bj             ; 2 uses
  %i.gw = add nsw <2 x i32> %i.gv, splat (i32 2)  ; 2 uses
  %i.gx = icmp sgt <2 x i32> %i.gw, %i.bk
  %i.gy = icmp slt <2 x i32> %i.gv, splat (i32 -2)
  %i.gz = select <2 x i1> %i.gy, <2 x i32> zeroinitializer, <2 x i32> %i.gw
  %i.ha = select <2 x i1> %i.gx, <2 x i32> %i.bk, <2 x i32> %i.gz ; 5 uses
  %i.hb = sub nsw <2 x i32> %i.ha, %i.gr
  %.fr = freeze <2 x i32> %i.hb                   ; 3 uses
  %i.hc = add nuw nsw <2 x i32> %.fr, splat (i32 1) ; 2 uses
  tail call void @free(ptr noundef nonnull %i.cq) #12
  %i.hd = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !127
  %i.he = and i32 %i.hd, 4112
  %or.cond381.not = icmp eq i32 %i.he, 4112
  br i1 %or.cond381.not, label %bb.u, label %bb.v

.lr.ph414:                                        ; preds = %bb.t, %.lr.ph414.preheader.new
  %indvars.iv437 = phi i64 [ 0, %.lr.ph414.preheader.new ], [ %indvars.iv.next438.1, %bb.t ] ; 3 uses
  %i.hf = phi <2 x float> [ splat (float f0x00800000), %.lr.ph414.preheader.new ], [ %i.ig, %bb.t ] ; 4 uses
  %i.hg = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph414.preheader.new ], [ %i.ih, %bb.t ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph414.preheader.new ], [ %niter.next.1, %bb.t ]
  %.idx472 = shl nuw nsw i64 %indvars.iv437, 3
  %i.hh = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx472 ; 3 uses
  %i.hi = load float, ptr %i.hh, align 16, !tbaa !26
  %i.hj = tail call i1 @llvm.is.fpclass.f32(float %i.hi, /* (nan inf zero sub) */ i32 759)
  br i1 %i.hj, label %.lr.ph414.1, label %bb.p

bb.p:                                             ; preds = %.lr.ph414
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !26
  %i.hm = tail call i1 @llvm.is.fpclass.f32(float %i.hl, /* (nan inf zero sub) */ i32 759)
  br i1 %i.hm, label %.lr.ph414.1, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hn = load <2 x float>, ptr %i.hh, align 16, !tbaa !26 ; 4 uses
  %i.ho = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.hg, %i.hn
  %i.hp = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.hf, %i.hn
  %i.hq = select <2 x i1> %i.ho, <2 x float> %i.hg, <2 x float> %i.hn
  %i.hr = select <2 x i1> %i.hp, <2 x float> %i.hf, <2 x float> %i.hn
  br label %.lr.ph414.1

.lr.ph414.1:                                      ; preds = %.lr.ph414, %bb.p, %bb.q
  %i.hs = phi <2 x float> [ %i.hr, %bb.q ], [ %i.hf, %bb.p ], [ %i.hf, %.lr.ph414 ] ; 4 uses
  %i.ht = phi <2 x float> [ %i.hq, %bb.q ], [ %i.hg, %bb.p ], [ %i.hg, %.lr.ph414 ] ; 4 uses
  %indvars.iv.next438 = shl i64 %indvars.iv437, 3
  %i.hu = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv.next438 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 2 uses
  %i.hw = load float, ptr %i.hv, align 8, !tbaa !26
  %i.hx = tail call i1 @llvm.is.fpclass.f32(float %i.hw, /* (nan inf zero sub) */ i32 759)
  br i1 %i.hx, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.lr.ph414.1
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 12
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !26
  %i.ia = tail call i1 @llvm.is.fpclass.f32(float %i.hz, /* (nan inf zero sub) */ i32 759)
  br i1 %i.ia, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ib = load <2 x float>, ptr %i.hv, align 8, !tbaa !26 ; 4 uses
  %i.ic = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ht, %i.ib
  %i.id = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.hs, %i.ib
  %i.ie = select <2 x i1> %i.ic, <2 x float> %i.ht, <2 x float> %i.ib
  %i.if = select <2 x i1> %i.id, <2 x float> %i.hs, <2 x float> %i.ib
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.lr.ph414.1
  %i.ig = phi <2 x float> [ %i.if, %bb.s ], [ %i.hs, %bb.r ], [ %i.hs, %.lr.ph414.1 ] ; 3 uses
  %i.ih = phi <2 x float> [ %i.ie, %bb.s ], [ %i.ht, %bb.r ], [ %i.ht, %.lr.ph414.1 ] ; 3 uses
  %indvars.iv.next438.1 = add nuw nsw i64 %indvars.iv437, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge415.loopexit.unr-lcssa, label %.lr.ph414

bb.u:                                             ; preds = %._crit_edge415
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.ij = call i32 @gettimeofday(ptr noundef nonnull %10, ptr noundef null) #12 ; 0 uses
  %i.ik = load i64, ptr %10, align 8, !tbaa !129
  %i.il = add nsw i64 %i.ik, -1290608000
  %i.im = sitofp reassoc nsz arcp contract afn i64 %i.il to double
  %i.in = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.io = load i64, ptr %i.in, align 8, !tbaa !130
  %i.ip = sitofp reassoc nsz arcp contract afn i64 %i.io to double
  %i.iq = fmul reassoc nnan nsz arcp contract afn double %i.ip, f0x3EB0C6F7A0B5ED8D
  %i.ir = fadd reassoc nsz arcp contract afn double %i.iq, %i.im ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %i.is = fsub reassoc nsz arcp contract afn double %i.ir, %.2397
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.26, ptr noundef nonnull %i.ii, double noundef %i.is) #12
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge415
  %.3 = phi nsz double [ %.2397, %._crit_edge415 ], [ %i.ir, %bb.u ] ; 2 uses
  %i.it = icmp slt <2 x i32> %.fr, splat (i32 1)
  %15 = bitcast <2 x i1> %i.it to i2
  %or.cond.not = icmp eq i2 %15, 0
  br i1 %or.cond.not, label %bb.w, label %bb.ai

bb.w:                                             ; preds = %bb.v
  %i.iu = extractelement <2 x i32> %i.hc, i64 0
  %i.iv = zext nneg i32 %i.iu to i64              ; 10 uses
  %i.iw = extractelement <2 x i32> %i.hc, i64 1
  %i.ix = zext nneg i32 %i.iw to i64              ; 2 uses
  %i.iy = shl nuw nsw i64 %i.iv, 3
  %i.iz = mul i64 %i.iy, %i.ix
  %i.ja = tail call ptr @dt_alloc_aligned(i64 noundef %i.iz) #12 ; 15 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ja, i64 64) ]
  %i.jb = icmp eq ptr %i.ja, null
  br i1 %i.jb, label %bb.ai, label %.preheader405

.preheader405:                                    ; preds = %bb.w
  %i.jc = extractelement <2 x i32> %i.ha, i64 1   ; 2 uses
  %i.jd = extractelement <2 x i32> %i.gr, i64 1   ; 4 uses
  %.not353423 = icmp sgt i32 %i.jd, %i.jc
  br i1 %.not353423, label %._crit_edge425.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader405
  %i.je = extractelement <2 x i32> %i.gr, i64 0
  %i.jf = icmp sgt <2 x i32> %i.gr, %i.ha
  %.not368419 = extractelement <2 x i1> %i.jf, i64 0
  %i.jg = sext i32 %i.je to i64                   ; 6 uses
  br i1 %.not368419, label %._crit_edge425.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.jh = sext i32 %i.jd to i64                   ; 2 uses
  %i.ji = add <2 x i32> %i.ha, splat (i32 1)      ; 2 uses
  %i.jj = extractelement <2 x i32> %.fr, i64 0    ; 2 uses
  %i.jk = extractelement <2 x i32> %i.be, i64 1
  %i.jl = extractelement <2 x i32> %i.ji, i64 1
  %min.iters.check486 = icmp ult i32 %i.jj, 3
  %min.iters.check487 = icmp ult i32 %i.jj, 31
  %i.jm = and i64 %i.iv, 28
  %n.vec489 = and i64 %i.iv, 2147483616           ; 4 uses
  %i.jn = add nsw i64 %n.vec489, %i.jg            ; 2 uses
  %broadcast.splatinsert492 = insertelement <8 x i32> poison, i32 %i.bb, i64 0
  %broadcast.splat493 = shufflevector <8 x i32> %broadcast.splatinsert492, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat495 = shufflevector <2 x i32> %i.be, <2 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert496 = insertelement <8 x float> poison, float %i.ax, i64 0
  %broadcast.splat497 = shufflevector <8 x float> %broadcast.splatinsert496, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat499 = shufflevector <2 x i32> %i.gr, <2 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat499, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %cmp.n510 = icmp eq i64 %n.vec489, %i.iv
  %min.epilog.iters.check = icmp eq i64 %i.jm, 0
  %n.vec512 = and i64 %i.iv, 2147483644           ; 3 uses
  %i.jo = add nsw i64 %n.vec512, %i.jg
  %broadcast.splatinsert515 = insertelement <4 x i32> poison, i32 %i.bb, i64 0
  %broadcast.splat516 = shufflevector <4 x i32> %broadcast.splatinsert515, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat518 = shufflevector <2 x i32> %i.be, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert519 = insertelement <4 x float> poison, float %i.ax, i64 0
  %broadcast.splat520 = shufflevector <4 x float> %broadcast.splatinsert519, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n529 = icmp eq i64 %n.vec512, %i.iv
  %i.jp = extractelement <2 x i32> %i.be, i64 0
  %i.jq = extractelement <2 x i32> %i.ji, i64 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge422
  %indvars.iv447 = phi i64 [ %i.jh, %.preheader.preheader ], [ %indvars.iv.next448, %._crit_edge422 ] ; 3 uses
  %i.jr = sub nsw i64 %indvars.iv447, %i.jh
  %i.js = mul nuw nsw i64 %i.jr, %i.iv            ; 3 uses
  %i.jt = sub i64 %i.js, %i.jg                    ; 4 uses
  %i.ju = trunc i64 %indvars.iv447 to i32
  %i.jv = mul i32 %i.bb, %i.ju
  %i.jw = add i32 %i.jv, %i.jk
  %i.jx = sitofp reassoc nsz arcp contract afn i32 %i.jw to float
  %i.jy = fmul reassoc nsz arcp contract afn float %i.ax, %i.jx ; 3 uses
  br i1 %min.iters.check486, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check487, label %vec.epilog.ph, label %vector.ph488

vector.ph488:                                     ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert490 = insertelement <8 x float> poison, float %i.jy, i64 0 ; 4 uses
  %invariant.op = add i64 8, %i.jt
  %invariant.op577 = add i64 16, %i.jt
  %invariant.op579 = add i64 24, %i.jt
  br label %vector.body500

vector.body500:                                   ; preds = %vector.ph488, %vector.body500
  %index501 = phi i64 [ 0, %vector.ph488 ], [ %index.next507, %vector.body500 ] ; 3 uses
  %vec.ind502 = phi <8 x i32> [ %induction, %vector.ph488 ], [ %vec.ind.next508, %vector.body500 ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind502, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind502, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind502, splat (i32 24)
  %i.jz = add i64 %index501, %i.jg                ; 3 uses
  %i.ka = add i64 %index501, %i.js
  %.reass = add i64 %i.jz, %invariant.op
  %.reass578 = add i64 %i.jz, %invariant.op577
  %.reass580 = add i64 %i.jz, %invariant.op579
  %i.kb = mul <8 x i32> %broadcast.splat493, %vec.ind502
  %i.kc = mul <8 x i32> %broadcast.splat493, %step.add
  %i.kd = mul <8 x i32> %broadcast.splat493, %step.add.2
  %i.ke = mul <8 x i32> %broadcast.splat493, %step.add.3
  %i.kf = add <8 x i32> %i.kb, %broadcast.splat495
  %i.kg = add <8 x i32> %i.kc, %broadcast.splat495
  %i.kh = add <8 x i32> %i.kd, %broadcast.splat495
  %i.ki = add <8 x i32> %i.ke, %broadcast.splat495
  %i.kj = sitofp reassoc nsz arcp contract afn <8 x i32> %i.kf to <8 x float>
  %i.kk = sitofp reassoc nsz arcp contract afn <8 x i32> %i.kg to <8 x float>
  %i.kl = sitofp reassoc nsz arcp contract afn <8 x i32> %i.kh to <8 x float>
  %i.km = sitofp reassoc nsz arcp contract afn <8 x i32> %i.ki to <8 x float>
  %i.kn = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat497, %i.kj
  %i.ko = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat497, %i.kk
  %i.kp = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat497, %i.kl
  %i.kq = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat497, %i.km
  %i.kr = shl i64 %i.ka, 3
  %i.ks = shl i64 %.reass, 3
  %i.kt = shl i64 %.reass578, 3
  %i.ku = shl i64 %.reass580, 3
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.kr
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.ks
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.kt
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.ku
  %interleaved.vec503 = shufflevector <8 x float> %i.kn, <8 x float> %broadcast.splatinsert490, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec503, ptr %i.kv, align 8, !tbaa !26
  %interleaved.vec504 = shufflevector <8 x float> %i.ko, <8 x float> %broadcast.splatinsert490, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec504, ptr %i.kw, align 8, !tbaa !26
  %interleaved.vec505 = shufflevector <8 x float> %i.kp, <8 x float> %broadcast.splatinsert490, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec505, ptr %i.kx, align 8, !tbaa !26
  %interleaved.vec506 = shufflevector <8 x float> %i.kq, <8 x float> %broadcast.splatinsert490, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec506, ptr %i.ky, align 8, !tbaa !26
  %index.next507 = add nuw i64 %index501, 32      ; 2 uses
  %vec.ind.next508 = add <8 x i32> %vec.ind502, splat (i32 32)
  %i.kz = icmp eq i64 %index.next507, %n.vec489
  br i1 %i.kz, label %middle.block509, label %vector.body500, !llvm.loop !193

middle.block509:                                  ; preds = %vector.body500
  br i1 %cmp.n510, label %._crit_edge422, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block509
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !131

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec489, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val511 = phi i64 [ %i.jn, %vec.epilog.iter.check ], [ %i.jg, %vector.main.loop.iter.check ]
  %broadcast.splatinsert513 = insertelement <4 x float> poison, float %i.jy, i64 0
  %i.la = trunc i64 %bc.resume.val511 to i32
  %broadcast.splatinsert521 = insertelement <4 x i32> poison, i32 %i.la, i64 0
  %broadcast.splat522 = shufflevector <4 x i32> %broadcast.splatinsert521, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction523 = add <4 x i32> %broadcast.splat522, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index524 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next527, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind525 = phi <4 x i32> [ %induction523, %vec.epilog.ph ], [ %vec.ind.next528, %vec.epilog.vector.body ] ; 2 uses
  %i.lb = add i64 %index524, %i.js
  %i.lc = mul <4 x i32> %broadcast.splat516, %vec.ind525
  %i.ld = add <4 x i32> %i.lc, %broadcast.splat518
  %i.le = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ld to <4 x float>
  %i.lf = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat520, %i.le
  %i.lg = shl i64 %i.lb, 3
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.lg
  %interleaved.vec526 = shufflevector <4 x float> %i.lf, <4 x float> %broadcast.splatinsert513, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  store <8 x float> %interleaved.vec526, ptr %i.lh, align 8, !tbaa !26
  %index.next527 = add nuw i64 %index524, 4       ; 2 uses
  %vec.ind.next528 = add <4 x i32> %vec.ind525, splat (i32 4)
  %i.li = icmp eq i64 %index.next527, %n.vec512
  br i1 %i.li, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !194

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n529, label %._crit_edge422, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv443.ph = phi i64 [ %i.jg, %iter.check ], [ %i.jn, %vec.epilog.iter.check ], [ %i.jo, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge425.split:                             ; preds = %._crit_edge422, %.preheader.lr.ph, %.preheader405
  %i.lj = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !127
  %i.lk = and i32 %i.lj, 4112
  %or.cond382.not = icmp eq i32 %i.lk, 4112
  br i1 %or.cond382.not, label %bb.x, label %bb.y

._crit_edge422:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block509
  %indvars.iv.next448 = add nsw i64 %indvars.iv447, 1 ; 2 uses
  %lftr.wideiv450 = trunc i64 %indvars.iv.next448 to i32
  %exitcond451.not = icmp eq i32 %i.jl, %lftr.wideiv450
  br i1 %exitcond451.not, label %._crit_edge425.split, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv443 = phi i64 [ %indvars.iv.next444, %vec.epilog.scalar.ph ], [ %indvars.iv443.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.ll = add i64 %i.jt, %indvars.iv443
  %i.lm = trunc i64 %indvars.iv443 to i32
  %i.ln = mul i32 %i.bb, %i.lm
  %i.lo = add i32 %i.ln, %i.jp
  %i.lp = sitofp reassoc nsz arcp contract afn i32 %i.lo to float
  %i.lq = fmul reassoc nsz arcp contract afn float %i.ax, %i.lp
  %.idx401 = shl i64 %i.ll, 3
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ja, i64 %.idx401 ; 2 uses
  store float %i.lq, ptr %i.lr, align 8, !tbaa !26
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 4
  store float %i.jy, ptr %i.ls, align 4, !tbaa !26
  %indvars.iv.next444 = add nsw i64 %indvars.iv443, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next444 to i32
  %exitcond446.not = icmp eq i32 %i.jq, %lftr.wideiv
  br i1 %exitcond446.not, label %._crit_edge422, label %vec.epilog.scalar.ph, !llvm.loop !195

bb.x:                                             ; preds = %._crit_edge425.split
  %i.lt = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.lu = call i32 @gettimeofday(ptr noundef nonnull %9, ptr noundef null) #12 ; 0 uses
  %i.lv = load i64, ptr %9, align 8, !tbaa !129
  %i.lw = add nsw i64 %i.lv, -1290608000
  %i.lx = sitofp reassoc nsz arcp contract afn i64 %i.lw to double
  %i.ly = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !130
  %i.ma = sitofp reassoc nsz arcp contract afn i64 %i.lz to double
  %i.mb = fmul reassoc nnan nsz arcp contract afn double %i.ma, f0x3EB0C6F7A0B5ED8D
  %i.mc = fadd reassoc nsz arcp contract afn double %i.mb, %i.lx ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.md = fsub reassoc nsz arcp contract afn double %i.mc, %.3
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.27, ptr noundef nonnull %i.lt, double noundef %i.md) #12
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge425.split
  %.4 = phi nsz double [ %.3, %._crit_edge425.split ], [ %i.mc, %bb.x ] ; 2 uses
  %i.me = load ptr, ptr %i.ew, align 8, !tbaa !132
  %i.mf = load ptr, ptr %i.n, align 8, !tbaa !138
  %i.mg = load i32, ptr %i.ez, align 16, !tbaa !126
  %i.mh = sitofp reassoc nsz arcp contract afn i32 %i.mg to double
  %i.mi = mul nuw nsw i64 %i.ix, %i.iv            ; 5 uses
  %i.mj = tail call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.me, ptr noundef %i.mf, double noundef %i.mh, i32 noundef 3, ptr noundef nonnull %i.ja, i64 noundef %i.mi) #12
  %.not356 = icmp eq i32 %i.mj, 0
  br i1 %.not356, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void @free(ptr noundef nonnull %i.ja) #12
  br label %bb.ai

end_hunk_0
