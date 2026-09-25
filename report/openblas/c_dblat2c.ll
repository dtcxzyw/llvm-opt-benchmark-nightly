Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/c_dblat2c?download=true
inline.NumInlined: 33
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 36
begin_hunk_0_@dchk1_:bb.a
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next366.3
  store double %i.lm, ptr %i.ln, align 8, !tbaa !14
  %indvars.iv.next366.4 = add nuw nsw i64 %indvars.iv365, 5 ; 2 uses
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next366.4
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !14
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next366.4
  store double %i.lp, ptr %i.lq, align 8, !tbaa !14
  %indvars.iv.next366.5 = add nuw nsw i64 %indvars.iv365, 6 ; 2 uses
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next366.5
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !14
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next366.5
  store double %i.ls, ptr %i.lt, align 8, !tbaa !14
  %indvars.iv.next366.6 = add nuw nsw i64 %indvars.iv365, 7 ; 2 uses
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next366.6
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !14
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next366.6
  store double %i.lv, ptr %i.lw, align 8, !tbaa !14
  %indvars.iv.next366.7 = add nuw nsw i64 %indvars.iv365, 8 ; 2 uses
  %exitcond369.not.7 = icmp eq i64 %indvars.iv.next366.7, %wide.trip.count368
  br i1 %exitcond369.not.7, label %._crit_edge295, label %.lr.ph294, !llvm.loop !59

._crit_edge295:                                   ; preds = %.lr.ph294.prol.loopexit, %.lr.ph294, %middle.block449, %vec.epilog.middle.block462, %._crit_edge289
  %storemerge188.lcssa = phi i32 [ 1, %._crit_edge289 ], [ %i.kb, %middle.block449 ], [ %i.kb, %vec.epilog.middle.block462 ], [ %i.kb, %.lr.ph294 ], [ %i.kb, %.lr.ph294.prol.loopexit ]
  store i32 %storemerge188.lcssa, ptr @dchk1_.i__, align 4, !tbaa !10
  %i.lx = load i32, ptr @dchk1_.incy, align 4, !tbaa !10
  store i32 %i.lx, ptr @dchk1_.incys, align 4, !tbaa !10
  %i.ly = load i32, ptr @dchk1_.full, align 4, !tbaa !10
  %.not190 = icmp eq i32 %i.ly, 0
  br i1 %.not190, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge295
  tail call void @cdgemv_(ptr noundef %31, ptr noundef nonnull @dchk1_.trans, ptr noundef nonnull @dchk1_.m, ptr noundef nonnull @dchk1_.n, ptr noundef nonnull @dchk1_.alpha, ptr noundef %21, ptr noundef nonnull @dchk1_.lda, ptr noundef %24, ptr noundef nonnull @dchk1_.incx, ptr noundef nonnull @dchk1_.beta, ptr noundef %27, ptr noundef nonnull @dchk1_.incy) #20
  br label %bb.v

bb.t:                                             ; preds = %._crit_edge295
  %i.lz = load i32, ptr @dchk1_.banded, align 4, !tbaa !10
  %.not191 = icmp eq i32 %i.lz, 0
  br i1 %.not191, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @cdgbmv_(ptr noundef %31, ptr noundef nonnull @dchk1_.trans, ptr noundef nonnull @dchk1_.m, ptr noundef nonnull @dchk1_.n, ptr noundef nonnull @dchk1_.kl, ptr noundef nonnull @dchk1_.ku, ptr noundef nonnull @dchk1_.alpha, ptr noundef %21, ptr noundef nonnull @dchk1_.lda, ptr noundef %24, ptr noundef nonnull @dchk1_.incx, ptr noundef nonnull @dchk1_.beta, ptr noundef %27, ptr noundef nonnull @dchk1_.incy) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.s
  %i.ma = load i32, ptr getelementptr inbounds nuw (i8, ptr @infoc_, i64 8), align 4, !tbaa !17
  %.not192 = icmp eq i32 %i.ma, 0
  br i1 %.not192, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.mb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46) ; 0 uses
  br label %.loopexit267.sink.split

bb.x:                                             ; preds = %bb.v
  %i.mc = load i8, ptr @dchk1_.trans, align 1, !tbaa !11
  %i.md = load i8, ptr @dchk1_.transs.0, align 1, !tbaa !11
  %i.me = icmp eq i8 %i.mc, %i.md
  %i.mf = load i32, ptr @dchk1_.ms, align 4, !tbaa !10
  %i.mg = load i32, ptr @dchk1_.m, align 4, !tbaa !10
  %i.mh = icmp eq i32 %i.mf, %i.mg
  %i.mi = insertelement <2 x i1> poison, i1 %i.me, i64 0
  %i.mj = insertelement <2 x i1> %i.mi, i1 %i.mh, i64 1
  %i.mk = zext <2 x i1> %i.mj to <2 x i32>
  store <2 x i32> %i.mk, ptr @dchk1_.isame, align 16, !tbaa !10
  %i.ml = load i32, ptr @dchk1_.ns, align 4, !tbaa !10
  %i.mm = load i32, ptr @dchk1_.n, align 4, !tbaa !10
  %i.mn = icmp eq i32 %i.ml, %i.mm
  %i.mo = zext i1 %i.mn to i32
  store i32 %i.mo, ptr getelementptr inbounds nuw (i8, ptr @dchk1_.isame, i64 8), align 8, !tbaa !10
  %i.mp = load i32, ptr @dchk1_.full, align 4, !tbaa !10
  %.not193 = icmp eq i32 %i.mp, 0
  br i1 %.not193, label %bb.ae, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.mq = load double, ptr @dchk1_.als, align 8, !tbaa !14
  %i.mr = load double, ptr @dchk1_.alpha, align 8, !tbaa !14
  %i.ms = fcmp oeq double %i.mq, %i.mr
  %i.mt = zext i1 %i.ms to i32
  store i32 %i.mt, ptr getelementptr inbounds nuw (i8, ptr @dchk1_.isame, i64 12), align 4, !tbaa !10
  %i.mu = load i32, ptr @dchk1_.laa, align 4, !tbaa !10 ; 2 uses
  %.not7.i = icmp slt i32 %i.mu, 1
  br i1 %.not7.i, label %lde_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.y
  %i.mv = add nuw i32 %i.mu, 1
  %wide.trip.count.i = zext i32 %i.mv to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.z, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.z ] ; 3 uses
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !14
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.mz = load double, ptr %i.my, align 8, !tbaa !14
  %i.na = fcmp une double %i.mx, %i.mz
  br i1 %i.na, label %lde_.exit, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %lde_.exit, label %.lr.ph.i, !llvm.loop !0

lde_.exit:                                        ; preds = %bb.z, %.lr.ph.i, %bb.y
  %.0.i = phi i32 [ 1, %bb.y ], [ 0, %.lr.ph.i ], [ 1, %bb.z ]
  store i32 %.0.i, ptr getelementptr inbounds nuw (i8, ptr @dchk1_.isame, i64 16), align 16, !tbaa !10
  %i.nb = load i32, ptr @dchk1_.ldas, align 4, !tbaa !10
  %i.nc = load i32, ptr @dchk1_.lda, align 4, !tbaa !10
  %i.nd = icmp eq i32 %i.nb, %i.nc
  %i.ne = zext i1 %i.nd to i32
  store i32 %i.ne, ptr getelementptr inbounds nuw (i8, ptr @dchk1_.isame, i64 20), align 4, !tbaa !10
  %i.nf = load i32, ptr @dchk1_.lx, align 4, !tbaa !10 ; 2 uses
  %.not7.i208 = icmp slt i32 %i.nf, 1
  br i1 %.not7.i208, label %lde_.exit218, label %.lr.ph.preheader.i209

.lr.ph.preheader.i209:                            ; preds = %lde_.exit
  %i.ng = add nuw i32 %i.nf, 1
  %wide.trip.count.i210 = zext i32 %i.ng to i64
  br label %.lr.ph.i211

.lr.ph.i211:                                      ; preds = %bb.aa, %.lr.ph.preheader.i209
  %indvars.iv.i212 = phi i64 [ 1, %.lr.ph.preheader.i209 ], [ %indvars.iv.next.i213, %bb.aa ] ; 3 uses
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i212
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !14
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i212
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !14
  %i.nl = fcmp une double %i.ni, %i.nk
  br i1 %i.nl, label %lde_.exit218, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i211
  %indvars.iv.next.i213 = add nuw nsw i64 %indvars.iv.i212, 1 ; 2 uses
  %exitcond.not.i214 = icmp eq i64 %indvars.iv.next.i213, %wide.trip.count.i210
  br i1 %exitcond.not.i214, label %lde_.exit218, label %.lr.ph.i211, !llvm.loop !0

lde_.exit218:                                     ; preds = %bb.aa, %.lr.ph.i211, %lde_.exit
  %.0.i216 = phi i32 [ 1, %lde_.exit ], [ 1, %bb.aa ], [ 0, %.lr.ph.i211 ]
  store i32 %.0.i216, ptr getelementptr inbounds nuw (i8, ptr @dchk1_.isame, i64 24), align 8, !tbaa !10
  %i.nm = load i32, ptr @dchk1_.incxs, align 4, !tbaa !10
  %i.nn = load i32, ptr @dchk1_.incx, align 4, !tbaa !10
  %i.no = icmp eq i32 %i.nm, %i.nn
  %i.np = load double, ptr @dchk1_.bls, align 8, !tbaa !14
  %i.nq = load double, ptr @dchk1_.beta, align 8, !tbaa !14
  %i.nr = fcmp oeq double %i.np, %i.nq
  %i.ns = insertelement <2 x i1> poison, i1 %i.no, i64 0
  %i.nt = insertelement <2 x i1> %i.ns, i1 %i.nr, i64 1
  %i.nu = zext <2 x i1> %i.nt to <2 x i32>
  store <2 x i32> %i.nu, ptr getelementptr inbounds nuw (i8, ptr @dchk1_.isame, i64 28), align 4, !tbaa !10
  %i.nv = load i32, ptr @dchk1_.null, align 4, !tbaa !10
  %.not197 = icmp eq i32 %i.nv, 0
  br i1 %.not197, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %lde_.exit218
  %i.nw = load i32, ptr @dchk1_.ly, align 4, !tbaa !10 ; 2 uses
  %.not7.i219 = icmp slt i32 %i.nw, 1
  br i1 %.not7.i219, label %lde_.exit229, label %.lr.ph.preheader.i220

.lr.ph.preheader.i220:                            ; preds = %bb.ab
  %i.nx = add nuw i32 %i.nw, 1
  %wide.trip.count.i221 = zext i32 %i.nx to i64
  br label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %bb.ac, %.lr.ph.preheader.i220
  %indvars.iv.i223 = phi i64 [ 1, %.lr.ph.preheader.i220 ], [ %indvars.iv.next.i224, %bb.ac ] ; 3 uses
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i223
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !14
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i223
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !14
  %i.oc = fcmp une double %i.nz, %i.ob
  br i1 %i.oc, label %lde_.exit229, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i222
  %indvars.iv.next.i224 = add nuw nsw i64 %indvars.iv.i223, 1 ; 2 uses
  %exitcond.not.i225 = icmp eq i64 %indvars.iv.next.i224, %wide.trip.count.i221
  br i1 %exitcond.not.i225, label %lde_.exit229, label %.lr.ph.i222, !llvm.loop !0

bb.ad:                                            ; preds = %lde_.exit218
  %i.od = load i32, ptr @dchk1_.incy, align 4, !tbaa !10
  %i.oe = tail call i32 @llvm.abs.i32(i32 %i.od, i1 true)
  store i32 %i.oe, ptr %i.i, align 4, !tbaa !10
  %i.of = call i32 @lderes_(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.41, ptr noundef nonnull @c__1, ptr noundef nonnull @dchk1_.ml, ptr noundef %28, ptr noundef %27, ptr noundef nonnull %i.i, i32 poison, i32 poison)
  br label %lde_.exit229

lde_.exit229:                                     ; preds = %.lr.ph.i222, %bb.ac, %bb.ab, %bb.ad
  %storemerge198 = phi i32 [ %i.of, %bb.ad ], [ 1, %bb.ab ], [ 1, %bb.ac ], [ 0, %.lr.ph.i222 ]
  store i32 %storemerge198, ptr getelementptr inbounds nuw (i8, ptr @dchk1_.isame, i64 36), align 4, !tbaa !10
  %i.og = load i32, ptr @dchk1_.incys, align 4, !tbaa !10
  %i.oh = load i32, ptr @dchk1_.incy, align 4, !tbaa !10
  %i.oi = icmp eq i32 %i.og, %i.oh
  %i.oj = zext i1 %i.oi to i32
  store i32 %i.oj, ptr getelementptr inbounds nuw (i8, ptr @dchk1_.isame, i64 40), align 8, !tbaa !10
  br label %bb.al

bb.ae:                                            ; preds = %bb.x
  %i.ok = load i32, ptr @dchk1_.banded, align 4, !tbaa !10
  %.not194 = icmp eq i32 %i.ok, 0
  br i1 %.not194, label %bb.al, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ol = load i32, ptr @dchk1_.kls, align 4, !tbaa !10
  %i.om = load i32, ptr @dchk1_.kl, align 4, !tbaa !10
  %i.on = load i32, ptr @dchk1_.kus, align 4, !tbaa !10
  %i.oo = load i32, ptr @dchk1_.ku, align 4, !tbaa !10
  %i.op = icmp eq i32 %i.on, %i.oo
  %i.oq = icmp eq i32 %i.ol, %i.om
  %i.or = insertelement <2 x i1> poison, i1 %i.oq, i64 0
  %i.os = insertelement <2 x i1> %i.or, i1 %i.op, i64 1
  %i.ot = zext <2 x i1> %i.os to <2 x i32>
  store <2 x i32> %i.ot, ptr getelementptr inbounds nuw (i8, ptr @dchk1_.isame, i64 12), align 4, !tbaa !10
  %i.ou = load double, ptr @dchk1_.als, align 8, !tbaa !14
  %i.ov = load double, ptr @dchk1_.alpha, align 8, !tbaa !14
  %i.ow = fcmp oeq double %i.ou, %i.ov
  %i.ox = zext i1 %i.ow to i32
  store i32 %i.ox, ptr getelementptr inbounds nuw (i8, ptr @dchk1_.isame, i64 20), align 4, !tbaa !10
  %i.oy = load i32, ptr @dchk1_.laa, align 4, !tbaa !10 ; 2 uses
  %.not7.i230 = icmp slt i32 %i.oy, 1
  br i1 %.not7.i230, label %lde_.exit240, label %.lr.ph.preheader.i231

.lr.ph.preheader.i231:                            ; preds = %bb.af
  %i.oz = add nuw i32 %i.oy, 1
  %wide.trip.count.i232 = zext i32 %i.oz to i64
  br label %.lr.ph.i233

.lr.ph.i233:                                      ; preds = %bb.ag, %.lr.ph.preheader.i231
  %indvars.iv.i234 = phi i64 [ 1, %.lr.ph.preheader.i231 ], [ %indvars.iv.next.i235, %bb.ag ] ; 3 uses
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i234
  %i.pb = load double, ptr %i.pa, align 8, !tbaa !14
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i234
  %i.pd = load double, ptr %i.pc, align 8, !tbaa !14
  %i.pe = fcmp une double %i.pb, %i.pd
  br i1 %i.pe, label %lde_.exit240, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i233
  %indvars.iv.next.i235 = add nuw nsw i64 %indvars.iv.i234, 1 ; 2 uses
  %exitcond.not.i236 = icmp eq i64 %indvars.iv.next.i235, %wide.trip.count.i232
  br i1 %exitcond.not.i236, label %lde_.exit240, label %.lr.ph.i233, !llvm.loop !0

lde_.exit240:                                     ; preds = %bb.ag, %.lr.ph.i233, %bb.af
  %.0.i238 = phi i32 [ 1, %bb.af ], [ 0, %.lr.ph.i233 ], [ 1, %bb.ag ]
  store i32 %.0.i238, ptr getelementptr inbounds nuw (i8, ptr @dchk1_.isame, i64 24), align 8, !tbaa !10
  %i.pf = load i32, ptr @dchk1_.ldas, align 4, !tbaa !10
  %i.pg = load i32, ptr @dchk1_.lda, align 4, !tbaa !10
  %i.ph = icmp eq i32 %i.pf, %i.pg
  %i.pi = zext i1 %i.ph to i32
  store i32 %i.pi, ptr getelementptr inbounds nuw (i8, ptr @dchk1_.isame, i64 28), align 4, !tbaa !10
  %i.pj = load i32, ptr @dchk1_.lx, align 4, !tbaa !10 ; 2 uses
  %.not7.i241 = icmp slt i32 %i.pj, 1
  br i1 %.not7.i241, label %lde_.exit251, label %.lr.ph.preheader.i242

.lr.ph.preheader.i242:                            ; preds = %lde_.exit240
  %i.pk = add nuw i32 %i.pj, 1
  %wide.trip.count.i243 = zext i32 %i.pk to i64
  br label %.lr.ph.i244

.lr.ph.i244:                                      ; preds = %bb.ah, %.lr.ph.preheader.i242
  %indvars.iv.i245 = phi i64 [ 1, %.lr.ph.preheader.i242 ], [ %indvars.iv.next.i246, %bb.ah ] ; 3 uses
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i245
  %i.pm = load double, ptr %i.pl, align 8, !tbaa !14
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i245
  %i.po = load double, ptr %i.pn, align 8, !tbaa !14
  %i.pp = fcmp une double %i.pm, %i.po
  br i1 %i.pp, label %lde_.exit251, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i244
  %indvars.iv.next.i246 = add nuw nsw i64 %indvars.iv.i245, 1 ; 2 uses
  %exitcond.not.i247 = icmp eq i64 %indvars.iv.next.i246, %wide.trip.count.i243
  br i1 %exitcond.not.i247, label %lde_.exit251, label %.lr.ph.i244, !llvm.loop !0

lde_.exit251:                                     ; preds = %bb.ah, %.lr.ph.i244, %lde_.exit240
  %.0.i249 = phi i32 [ 1, %lde_.exit240 ], [ 1, %bb.ah ], [ 0, %.lr.ph.i244 ]
  store i32 %.0.i249, ptr getelementptr inbounds nuw (i8, ptr @dchk1_.isame, i64 32), align 16, !tbaa !10
  %i.pq = load i32, ptr @dchk1_.incxs, align 4, !tbaa !10
  %i.pr = load i32, ptr @dchk1_.incx, align 4, !tbaa !10
  %i.ps = icmp eq i32 %i.pq, %i.pr
  %i.pt = load double, ptr @dchk1_.bls, align 8, !tbaa !14
  %i.pu = load double, ptr @dchk1_.beta, align 8, !tbaa !14
  %i.pv = fcmp oeq double %i.pt, %i.pu
  %i.pw = insertelement <2 x i1> poison, i1 %i.ps, i64 0
  %i.px = insertelement <2 x i1> %i.pw, i1 %i.pv, i64 1
  %i.py = zext <2 x i1> %i.px to <2 x i32>
  store <2 x i32> %i.py, ptr getelementptr inbounds nuw (i8, ptr @dchk1_.isame, i64 36), align 4, !tbaa !10
  %i.pz = load i32, ptr @dchk1_.null, align 4, !tbaa !10
  %.not195 = icmp eq i32 %i.pz, 0
  br i1 %.not195, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %lde_.exit251
  %i.qa = load i32, ptr @dchk1_.ly, align 4, !tbaa !10 ; 2 uses
  %.not7.i252 = icmp slt i32 %i.qa, 1
  br i1 %.not7.i252, label %lde_.exit262, label %.lr.ph.preheader.i253

.lr.ph.preheader.i253:                            ; preds = %bb.ai
  %i.qb = add nuw i32 %i.qa, 1
  %wide.trip.count.i254 = zext i32 %i.qb to i64
  br label %.lr.ph.i255

.lr.ph.i255:                                      ; preds = %bb.aj, %.lr.ph.preheader.i253
  %indvars.iv.i256 = phi i64 [ 1, %.lr.ph.preheader.i253 ], [ %indvars.iv.next.i257, %bb.aj ] ; 3 uses
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i256
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !14
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i256
  %i.qf = load double, ptr %i.qe, align 8, !tbaa !14
  %i.qg = fcmp une double %i.qd, %i.qf
  br i1 %i.qg, label %lde_.exit262, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i255
  %indvars.iv.next.i257 = add nuw nsw i64 %indvars.iv.i256, 1 ; 2 uses
  %exitcond.not.i258 = icmp eq i64 %indvars.iv.next.i257, %wide.trip.count.i254
  br i1 %exitcond.not.i258, label %lde_.exit262, label %.lr.ph.i255, !llvm.loop !0

bb.ak:                                            ; preds = %lde_.exit251
  %i.qh = load i32, ptr @dchk1_.incy, align 4, !tbaa !10
  %i.qi = tail call i32 @llvm.abs.i32(i32 %i.qh, i1 true)
  store i32 %i.qi, ptr %i.i, align 4, !tbaa !10
  %i.qj = call i32 @lderes_(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.41, ptr noundef nonnull @c__1, ptr noundef nonnull @dchk1_.ml, ptr noundef %28, ptr noundef %27, ptr noundef nonnull %i.i, i32 poison, i32 poison)
  br label %lde_.exit262

lde_.exit262:                                     ; preds = %.lr.ph.i255, %bb.aj, %bb.ai, %bb.ak
  %storemerge196 = phi i32 [ %i.qj, %bb.ak ], [ 1, %bb.ai ], [ 1, %bb.aj ], [ 0, %.lr.ph.i255 ]
  store i32 %storemerge196, ptr getelementptr inbounds nuw (i8, ptr @dchk1_.isame, i64 44), align 4, !tbaa !10
  %i.qk = load i32, ptr @dchk1_.incys, align 4, !tbaa !10
  %i.ql = load i32, ptr @dchk1_.incy, align 4, !tbaa !10
  %i.qm = icmp eq i32 %i.qk, %i.ql
  %i.qn = zext i1 %i.qm to i32
  store i32 %i.qn, ptr getelementptr inbounds nuw (i8, ptr @dchk1_.isame, i64 48), align 16, !tbaa !10
  br label %bb.al

bb.al:                                            ; preds = %bb.ae, %lde_.exit262, %lde_.exit229
  store i32 1, ptr @dchk1_.same, align 4, !tbaa !10
  %i.qo = load i32, ptr @dchk1_.nargs, align 4, !tbaa !10 ; 3 uses
  store i32 %i.qo, ptr %i.i, align 4, !tbaa !10
  store i32 1, ptr @dchk1_.i__, align 4, !tbaa !10
  %.not200297 = icmp slt i32 %i.qo, 1
  br i1 %.not200297, label %._crit_edge301.thread, label %.lr.ph300

.lr.ph300:                                        ; preds = %bb.al, %bb.an
  %i.qp = phi i32 [ %i.qu, %bb.an ], [ 1, %bb.al ]
  %storemerge199298 = phi i32 [ %i.qv, %bb.an ], [ 1, %bb.al ] ; 3 uses
  %.not206 = icmp ne i32 %i.qp, 0
  %.phi.trans.insert = sext i32 %storemerge199298 to i64
  %.phi.trans.insert373 = getelementptr [4 x i8], ptr @dchk1_.isame, i64 %.phi.trans.insert
  %.phi.trans.insert374 = getelementptr i8, ptr %.phi.trans.insert373, i64 -4
  %.pre375 = load i32, ptr %.phi.trans.insert374, align 4, !tbaa !10 ; 2 uses
  %i.qq = icmp ne i32 %.pre375, 0
  %narrow = and i1 %.not206, %i.qq
  %i.qr = zext i1 %narrow to i32                  ; 2 uses
  store i32 %i.qr, ptr @dchk1_.same, align 4, !tbaa !10
  %.not207 = icmp eq i32 %.pre375, 0
  br i1 %.not207, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.lr.ph300
  %i.qs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, i32 noundef %storemerge199298) ; 0 uses
  %.pre371 = load i32, ptr @dchk1_.same, align 4, !tbaa !10
  %.pre376 = load i32, ptr @dchk1_.i__, align 4, !tbaa !10
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph300, %bb.am
  %i.qt = phi i32 [ %storemerge199298, %.lr.ph300 ], [ %.pre376, %bb.am ] ; 2 uses
  %i.qu = phi i32 [ %i.qr, %.lr.ph300 ], [ %.pre371, %bb.am ] ; 2 uses
  %i.qv = add nsw i32 %i.qt, 1                    ; 2 uses
  store i32 %i.qv, ptr @dchk1_.i__, align 4, !tbaa !10
  %.not200.not = icmp slt i32 %i.qt, %i.qo
  br i1 %.not200.not, label %.lr.ph300, label %._crit_edge301, !llvm.loop !60

._crit_edge301:                                   ; preds = %bb.an
  %i.qw = icmp eq i32 %i.qu, 0
  br i1 %i.qw, label %.loopexit267.sink.split, label %._crit_edge301.thread

._crit_edge301.thread:                            ; preds = %bb.al, %._crit_edge301
  %i.qx = load i32, ptr @dchk1_.null, align 4, !tbaa !10
  %.not202 = icmp eq i32 %i.qx, 0
  br i1 %.not202, label %bb.ao, label %.loopexit

bb.ao:                                            ; preds = %._crit_edge301.thread
  %i.qy = tail call i32 @dmvch_(ptr noundef nonnull @dchk1_.trans, ptr noundef nonnull @dchk1_.m, ptr noundef nonnull @dchk1_.n, ptr noundef nonnull @dchk1_.alpha, ptr noundef %20, ptr noundef nonnull %18, ptr noundef %23, ptr noundef nonnull @dchk1_.incx, ptr noundef nonnull @dchk1_.beta, ptr noundef %26, ptr noundef nonnull @dchk1_.incy, ptr noundef %29, ptr noundef %30, ptr noundef %27, ptr noundef %1, ptr noundef nonnull @dchk1_.err, ptr noundef %7, ptr poison, ptr noundef nonnull @c_true, i32 poison) ; 0 uses
  %i.qz = load double, ptr @dchk1_.errmax, align 8, !tbaa !14 ; 2 uses
  %i.ra = load double, ptr @dchk1_.err, align 8, !tbaa !14 ; 2 uses
  %i.rb = fcmp oge double %i.qz, %i.ra
  %i.rc = select i1 %i.rb, double %i.qz, double %i.ra
  store double %i.rc, ptr @dchk1_.errmax, align 8, !tbaa !14
  %i.rd = load i32, ptr %7, align 4, !tbaa !10
  %.not203 = icmp eq i32 %i.rd, 0
  br i1 %.not203, label %bb.ap, label %.loopexit267

bb.ap:                                            ; preds = %bb.ao
  %i.re = load i32, ptr @dchk1_.ib, align 4, !tbaa !10 ; 2 uses
  %i.rf = add nsw i32 %i.re, 1                    ; 2 uses
  store i32 %i.rf, ptr @dchk1_.ib, align 4, !tbaa !10
  %.not183.not = icmp slt i32 %i.re, %i.fj
  br i1 %.not183.not, label %.lr.ph305, label %._crit_edge306.loopexit, !llvm.loop !61

._crit_edge306.loopexit:                          ; preds = %bb.ap
  %.pre377 = load i32, ptr @dchk1_.ia, align 4, !tbaa !10
  br label %._crit_edge306

._crit_edge306:                                   ; preds = %._crit_edge306.loopexit, %.lr.ph310.split
  %i.rg = phi i32 [ %.pre377, %._crit_edge306.loopexit ], [ %storemerge180308, %.lr.ph310.split ] ; 2 uses
  %i.rh = add nsw i32 %i.rg, 1                    ; 2 uses
  store i32 %i.rh, ptr @dchk1_.ia, align 4, !tbaa !10
  %.not181.not = icmp slt i32 %i.rg, %i.cz
  br i1 %.not181.not, label %.lr.ph310.splitthread-pre-split, label %._crit_edge311.loopexit, !llvm.loop !62

._crit_edge311.loopexit:                          ; preds = %._crit_edge306
  %.pre378 = load i32, ptr @dchk1_.iy, align 4, !tbaa !10
  br label %._crit_edge311

._crit_edge311:                                   ; preds = %._crit_edge311.loopexit, %._crit_edge311.split.us, %.lr.ph320
  %i.ri = phi i32 [ %.pre378, %._crit_edge311.loopexit ], [ %storemerge178318, %._crit_edge311.split.us ], [ %storemerge178318, %.lr.ph320 ] ; 2 uses
end_hunk_0
begin_hunk_1_@dchk4_:bb.a
  %indvars.iv.next236.1 = add nuw nsw i64 %indvars.iv235, 2 ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next236.1
  %i.gp = load double, ptr %i.go, align 8, !tbaa !14
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next236.1
  store double %i.gp, ptr %i.gq, align 8, !tbaa !14
  %indvars.iv.next236.2 = add nuw nsw i64 %indvars.iv235, 3 ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next236.2
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !14
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next236.2
  store double %i.gs, ptr %i.gt, align 8, !tbaa !14
  %indvars.iv.next236.3 = add nuw nsw i64 %indvars.iv235, 4 ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next236.3
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !14
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next236.3
  store double %i.gv, ptr %i.gw, align 8, !tbaa !14
  %indvars.iv.next236.4 = add nuw nsw i64 %indvars.iv235, 5 ; 2 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next236.4
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !14
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next236.4
  store double %i.gy, ptr %i.gz, align 8, !tbaa !14
  %indvars.iv.next236.5 = add nuw nsw i64 %indvars.iv235, 6 ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next236.5
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !14
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next236.5
  store double %i.hb, ptr %i.hc, align 8, !tbaa !14
  %indvars.iv.next236.6 = add nuw nsw i64 %indvars.iv235, 7 ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next236.6
  %i.he = load double, ptr %i.hd, align 8, !tbaa !14
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next236.6
  store double %i.he, ptr %i.hf, align 8, !tbaa !14
  %indvars.iv.next236.7 = add nuw nsw i64 %indvars.iv235, 8 ; 2 uses
  %exitcond239.not.7 = icmp eq i64 %indvars.iv.next236.7, %wide.trip.count238
  br i1 %exitcond239.not.7, label %._crit_edge182, label %.lr.ph181, !llvm.loop !124

._crit_edge182:                                   ; preds = %.lr.ph181.prol.loopexit, %.lr.ph181, %middle.block387, %vec.epilog.middle.block400, %._crit_edge
  %i.hg = load i32, ptr @dchk4_.incx, align 4, !tbaa !10
  store i32 %i.hg, ptr @dchk4_.incxs, align 4, !tbaa !10
  %i.hh = load i32, ptr @dchk4_.ly, align 4, !tbaa !10 ; 7 uses
  store i32 %i.hh, ptr %i.c, align 4, !tbaa !10
  %.not129184 = icmp slt i32 %i.hh, 1
  br i1 %.not129184, label %._crit_edge188, label %iter.check360

iter.check360:                                    ; preds = %._crit_edge182
  %i.hi = add nuw i32 %i.hh, 1                    ; 5 uses
  %wide.trip.count243 = zext i32 %i.hi to i64     ; 2 uses
  %i.hj = zext nneg i32 %i.hh to i64              ; 5 uses
  %min.iters.check345 = icmp ult i32 %i.hh, 4
  %or.cond435 = or i1 %min.iters.check345, %diff.check344
  br i1 %or.cond435, label %.lr.ph187.preheader, label %vector.main.loop.iter.check346

vector.main.loop.iter.check346:                   ; preds = %iter.check360
  %min.iters.check347 = icmp ult i32 %i.hh, 16
  br i1 %min.iters.check347, label %vec.epilog.ph364, label %vector.ph348

vector.ph348:                                     ; preds = %vector.main.loop.iter.check346
  %i.hk = and i64 %i.hj, 12
  %n.vec349 = and i64 %i.hj, 2147483632           ; 4 uses
  %i.hl = or disjoint i64 %n.vec349, 1
  br label %vector.body350

vector.body350:                                   ; preds = %vector.ph348, %vector.body350
  %index351 = phi i64 [ 0, %vector.ph348 ], [ %index.next356, %vector.body350 ] ; 3 uses
  %i.hm = getelementptr [8 x i8], ptr %23, i64 %index351 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 96
  %wide.load352 = load <4 x double>, ptr %i.hm, align 8, !tbaa !14
  %wide.load353 = load <4 x double>, ptr %i.hn, align 8, !tbaa !14
  %wide.load354 = load <4 x double>, ptr %i.ho, align 8, !tbaa !14
  %wide.load355 = load <4 x double>, ptr %i.hp, align 8, !tbaa !14
  %i.hq = getelementptr [8 x i8], ptr %24, i64 %index351 ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 32
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 96
  store <4 x double> %wide.load352, ptr %i.hq, align 8, !tbaa !14
  store <4 x double> %wide.load353, ptr %i.hr, align 8, !tbaa !14
  store <4 x double> %wide.load354, ptr %i.hs, align 8, !tbaa !14
  store <4 x double> %wide.load355, ptr %i.ht, align 8, !tbaa !14
  %index.next356 = add nuw i64 %index351, 16      ; 2 uses
  %i.hu = icmp eq i64 %index.next356, %n.vec349
  br i1 %i.hu, label %middle.block357, label %vector.body350, !llvm.loop !125

middle.block357:                                  ; preds = %vector.body350
  %cmp.n358 = icmp eq i64 %n.vec349, %i.hj
  br i1 %cmp.n358, label %._crit_edge188, label %vec.epilog.iter.check362

vec.epilog.iter.check362:                         ; preds = %middle.block357
  %min.epilog.iters.check363 = icmp eq i64 %i.hk, 0
  br i1 %min.epilog.iters.check363, label %.lr.ph187.preheader, label %vec.epilog.ph364, !prof !18

vec.epilog.ph364:                                 ; preds = %vector.main.loop.iter.check346, %vec.epilog.iter.check362
  %vec.epilog.resume.val359 = phi i64 [ %n.vec349, %vec.epilog.iter.check362 ], [ 0, %vector.main.loop.iter.check346 ]
  %n.vec365 = and i64 %i.hj, 2147483644           ; 3 uses
  %i.hv = or disjoint i64 %n.vec365, 1
  br label %vec.epilog.vector.body366

vec.epilog.vector.body366:                        ; preds = %vec.epilog.vector.body366, %vec.epilog.ph364
  %index367 = phi i64 [ %vec.epilog.resume.val359, %vec.epilog.ph364 ], [ %index.next369, %vec.epilog.vector.body366 ] ; 3 uses
  %i.hw = getelementptr [8 x i8], ptr %23, i64 %index367
  %wide.load368 = load <4 x double>, ptr %i.hw, align 8, !tbaa !14
  %i.hx = getelementptr [8 x i8], ptr %24, i64 %index367
  store <4 x double> %wide.load368, ptr %i.hx, align 8, !tbaa !14
  %index.next369 = add nuw i64 %index367, 4       ; 2 uses
  %i.hy = icmp eq i64 %index.next369, %n.vec365
  br i1 %i.hy, label %vec.epilog.middle.block370, label %vec.epilog.vector.body366, !llvm.loop !126

vec.epilog.middle.block370:                       ; preds = %vec.epilog.vector.body366
  %cmp.n371 = icmp eq i64 %n.vec365, %i.hj
  br i1 %cmp.n371, label %._crit_edge188, label %.lr.ph187.preheader

.lr.ph187.preheader:                              ; preds = %iter.check360, %vec.epilog.iter.check362, %vec.epilog.middle.block370
  %indvars.iv240.ph = phi i64 [ 1, %iter.check360 ], [ %i.hl, %vec.epilog.iter.check362 ], [ %i.hv, %vec.epilog.middle.block370 ] ; 4 uses
  %i.hz = sub nsw i64 %wide.trip.count243, %indvars.iv240.ph
  %i.ia = zext nneg i32 %i.hh to i64
  %i.ib = sub nsw i64 %i.ia, %indvars.iv240.ph
  %xtraiter444 = and i64 %i.hz, 7                 ; 2 uses
  %lcmp.mod445.not = icmp eq i64 %xtraiter444, 0
  br i1 %lcmp.mod445.not, label %.lr.ph187.prol.loopexit, label %.lr.ph187.prol

.lr.ph187.prol:                                   ; preds = %.lr.ph187.preheader, %.lr.ph187.prol
  %indvars.iv240.prol = phi i64 [ %indvars.iv.next241.prol, %.lr.ph187.prol ], [ %indvars.iv240.ph, %.lr.ph187.preheader ] ; 3 uses
  %prol.iter446 = phi i64 [ %prol.iter446.next, %.lr.ph187.prol ], [ 0, %.lr.ph187.preheader ]
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv240.prol
  %i.id = load double, ptr %i.ic, align 8, !tbaa !14
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv240.prol
  store double %i.id, ptr %i.ie, align 8, !tbaa !14
  %indvars.iv.next241.prol = add nuw nsw i64 %indvars.iv240.prol, 1 ; 2 uses
  %prol.iter446.next = add i64 %prol.iter446, 1   ; 2 uses
  %prol.iter446.cmp.not = icmp eq i64 %prol.iter446.next, %xtraiter444
  br i1 %prol.iter446.cmp.not, label %.lr.ph187.prol.loopexit, label %.lr.ph187.prol, !llvm.loop !127

.lr.ph187.prol.loopexit:                          ; preds = %.lr.ph187.prol, %.lr.ph187.preheader
  %indvars.iv240.unr = phi i64 [ %indvars.iv240.ph, %.lr.ph187.preheader ], [ %indvars.iv.next241.prol, %.lr.ph187.prol ]
  %i.if = icmp ult i64 %i.ib, 7
  br i1 %i.if, label %._crit_edge188, label %.lr.ph187

.lr.ph187:                                        ; preds = %.lr.ph187.prol.loopexit, %.lr.ph187
  %indvars.iv240 = phi i64 [ %indvars.iv.next241.7, %.lr.ph187 ], [ %indvars.iv240.unr, %.lr.ph187.prol.loopexit ] ; 11 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv240
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !14
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv240
  store double %i.ih, ptr %i.ii, align 8, !tbaa !14
  %i.ij = getelementptr [8 x i8], ptr %23, i64 %indvars.iv240
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !14
  %i.il = getelementptr [8 x i8], ptr %24, i64 %indvars.iv240
  store double %i.ik, ptr %i.il, align 8, !tbaa !14
  %indvars.iv.next241.1 = add nuw nsw i64 %indvars.iv240, 2 ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next241.1
  %i.in = load double, ptr %i.im, align 8, !tbaa !14
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next241.1
  store double %i.in, ptr %i.io, align 8, !tbaa !14
  %indvars.iv.next241.2 = add nuw nsw i64 %indvars.iv240, 3 ; 2 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next241.2
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !14
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next241.2
  store double %i.iq, ptr %i.ir, align 8, !tbaa !14
  %indvars.iv.next241.3 = add nuw nsw i64 %indvars.iv240, 4 ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next241.3
  %i.it = load double, ptr %i.is, align 8, !tbaa !14
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next241.3
  store double %i.it, ptr %i.iu, align 8, !tbaa !14
  %indvars.iv.next241.4 = add nuw nsw i64 %indvars.iv240, 5 ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next241.4
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !14
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next241.4
  store double %i.iw, ptr %i.ix, align 8, !tbaa !14
  %indvars.iv.next241.5 = add nuw nsw i64 %indvars.iv240, 6 ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next241.5
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !14
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next241.5
  store double %i.iz, ptr %i.ja, align 8, !tbaa !14
  %indvars.iv.next241.6 = add nuw nsw i64 %indvars.iv240, 7 ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next241.6
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !14
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next241.6
  store double %i.jc, ptr %i.jd, align 8, !tbaa !14
  %indvars.iv.next241.7 = add nuw nsw i64 %indvars.iv240, 8 ; 2 uses
  %exitcond244.not.7 = icmp eq i64 %indvars.iv.next241.7, %wide.trip.count243
  br i1 %exitcond244.not.7, label %._crit_edge188, label %.lr.ph187, !llvm.loop !128

._crit_edge188:                                   ; preds = %.lr.ph187.prol.loopexit, %.lr.ph187, %middle.block357, %vec.epilog.middle.block370, %._crit_edge182
  %storemerge128.lcssa = phi i32 [ 1, %._crit_edge182 ], [ %i.hi, %middle.block357 ], [ %i.hi, %vec.epilog.middle.block370 ], [ %i.hi, %.lr.ph187 ], [ %i.hi, %.lr.ph187.prol.loopexit ]
  store i32 %storemerge128.lcssa, ptr @dchk4_.i__, align 4, !tbaa !10
  %i.je = load i32, ptr @dchk4_.incy, align 4, !tbaa !10
  store i32 %i.je, ptr @dchk4_.incys, align 4, !tbaa !10
  tail call void @cdger_(ptr noundef %28, ptr noundef nonnull @dchk4_.m, ptr noundef nonnull @dchk4_.n, ptr noundef nonnull @dchk4_.alpha, ptr noundef %20, ptr noundef nonnull @dchk4_.incx, ptr noundef %23, ptr noundef nonnull @dchk4_.incy, ptr noundef %17, ptr noundef nonnull @dchk4_.lda) #20
  %i.jf = load i32, ptr getelementptr inbounds nuw (i8, ptr @infoc_, i64 8), align 4, !tbaa !17
  %.not130 = icmp eq i32 %i.jf, 0
  br i1 %.not130, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge188
  %i.jg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46) ; 0 uses
  store i32 1, ptr %7, align 4, !tbaa !10
  br label %bb.am

bb.n:                                             ; preds = %._crit_edge188
  %i.jh = load i32, ptr @dchk4_.ms, align 4, !tbaa !10
  %i.ji = load i32, ptr @dchk4_.m, align 4, !tbaa !10
  %i.jj = load i32, ptr @dchk4_.ns, align 4, !tbaa !10
  %i.jk = load i32, ptr @dchk4_.n, align 4, !tbaa !10
  %i.jl = icmp eq i32 %i.jj, %i.jk
  %i.jm = icmp eq i32 %i.jh, %i.ji
  %i.jn = insertelement <2 x i1> poison, i1 %i.jm, i64 0
  %i.jo = insertelement <2 x i1> %i.jn, i1 %i.jl, i64 1
  %i.jp = zext <2 x i1> %i.jo to <2 x i32>
  store <2 x i32> %i.jp, ptr @dchk4_.isame, align 16, !tbaa !10
  %i.jq = load double, ptr @dchk4_.als, align 8, !tbaa !14
  %i.jr = load double, ptr @dchk4_.alpha, align 8, !tbaa !14
  %i.js = fcmp oeq double %i.jq, %i.jr
  %i.jt = zext i1 %i.js to i32
  store i32 %i.jt, ptr getelementptr inbounds nuw (i8, ptr @dchk4_.isame, i64 8), align 8, !tbaa !10
  %i.ju = load i32, ptr @dchk4_.lx, align 4, !tbaa !10 ; 2 uses
  %.not7.i = icmp slt i32 %i.ju, 1
  br i1 %.not7.i, label %lde_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.n
  %i.jv = add nuw i32 %i.ju, 1
  %wide.trip.count.i = zext i32 %i.jv to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.o ] ; 3 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !14
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !14
  %i.ka = fcmp une double %i.jx, %i.jz
  br i1 %i.ka, label %lde_.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %lde_.exit, label %.lr.ph.i, !llvm.loop !0

lde_.exit:                                        ; preds = %bb.o, %.lr.ph.i, %bb.n
  %.0.i = phi i32 [ 1, %bb.n ], [ 0, %.lr.ph.i ], [ 1, %bb.o ]
  store i32 %.0.i, ptr getelementptr inbounds nuw (i8, ptr @dchk4_.isame, i64 12), align 4, !tbaa !10
  %i.kb = load i32, ptr @dchk4_.incxs, align 4, !tbaa !10
  %i.kc = load i32, ptr @dchk4_.incx, align 4, !tbaa !10
  %i.kd = icmp eq i32 %i.kb, %i.kc
  %i.ke = zext i1 %i.kd to i32
  store i32 %i.ke, ptr getelementptr inbounds nuw (i8, ptr @dchk4_.isame, i64 16), align 16, !tbaa !10
  %i.kf = load i32, ptr @dchk4_.ly, align 4, !tbaa !10 ; 2 uses
  %.not7.i147 = icmp slt i32 %i.kf, 1
  br i1 %.not7.i147, label %lde_.exit157, label %.lr.ph.preheader.i148

.lr.ph.preheader.i148:                            ; preds = %lde_.exit
  %i.kg = add nuw i32 %i.kf, 1
  %wide.trip.count.i149 = zext i32 %i.kg to i64
  br label %.lr.ph.i150

.lr.ph.i150:                                      ; preds = %bb.p, %.lr.ph.preheader.i148
  %indvars.iv.i151 = phi i64 [ 1, %.lr.ph.preheader.i148 ], [ %indvars.iv.next.i152, %bb.p ] ; 3 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.i151
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !14
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i151
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !14
  %i.kl = fcmp une double %i.ki, %i.kk
  br i1 %i.kl, label %lde_.exit157, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i150
  %indvars.iv.next.i152 = add nuw nsw i64 %indvars.iv.i151, 1 ; 2 uses
  %exitcond.not.i153 = icmp eq i64 %indvars.iv.next.i152, %wide.trip.count.i149
  br i1 %exitcond.not.i153, label %lde_.exit157, label %.lr.ph.i150, !llvm.loop !0

lde_.exit157:                                     ; preds = %bb.p, %.lr.ph.i150, %lde_.exit
  %.0.i155 = phi i32 [ 1, %lde_.exit ], [ 1, %bb.p ], [ 0, %.lr.ph.i150 ]
  store i32 %.0.i155, ptr getelementptr inbounds nuw (i8, ptr @dchk4_.isame, i64 20), align 4, !tbaa !10
  %i.km = load i32, ptr @dchk4_.incys, align 4, !tbaa !10
  %i.kn = load i32, ptr @dchk4_.incy, align 4, !tbaa !10
  %i.ko = icmp eq i32 %i.km, %i.kn
  %i.kp = zext i1 %i.ko to i32
  store i32 %i.kp, ptr getelementptr inbounds nuw (i8, ptr @dchk4_.isame, i64 24), align 8, !tbaa !10
  %i.kq = load i32, ptr @dchk4_.null, align 4, !tbaa !10
  %.not131 = icmp eq i32 %i.kq, 0
  br i1 %.not131, label %bb.s, label %bb.q

bb.q:                                             ; preds = %lde_.exit157
  %i.kr = load i32, ptr @dchk4_.laa, align 4, !tbaa !10 ; 2 uses
  %.not7.i158 = icmp slt i32 %i.kr, 1
  br i1 %.not7.i158, label %lde_.exit168, label %.lr.ph.preheader.i159

.lr.ph.preheader.i159:                            ; preds = %bb.q
  %i.ks = add nuw i32 %i.kr, 1
  %wide.trip.count.i160 = zext i32 %i.ks to i64
  br label %.lr.ph.i161

.lr.ph.i161:                                      ; preds = %bb.r, %.lr.ph.preheader.i159
  %indvars.iv.i162 = phi i64 [ 1, %.lr.ph.preheader.i159 ], [ %indvars.iv.next.i163, %bb.r ] ; 3 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i162
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !14
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i162
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !14
  %i.kx = fcmp une double %i.ku, %i.kw
  br i1 %i.kx, label %lde_.exit168, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i161
  %indvars.iv.next.i163 = add nuw nsw i64 %indvars.iv.i162, 1 ; 2 uses
  %exitcond.not.i164 = icmp eq i64 %indvars.iv.next.i163, %wide.trip.count.i160
  br i1 %exitcond.not.i164, label %lde_.exit168, label %.lr.ph.i161, !llvm.loop !0

bb.s:                                             ; preds = %lde_.exit157
  %i.ky = tail call i32 @lderes_(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.41, ptr noundef nonnull @dchk4_.m, ptr noundef nonnull @dchk4_.n, ptr noundef %18, ptr noundef %17, ptr noundef nonnull @dchk4_.lda, i32 poison, i32 poison)
  br label %lde_.exit168

lde_.exit168:                                     ; preds = %.lr.ph.i161, %bb.r, %bb.q, %bb.s
  %storemerge132 = phi i32 [ %i.ky, %bb.s ], [ 1, %bb.q ], [ 1, %bb.r ], [ 0, %.lr.ph.i161 ]
  store i32 %storemerge132, ptr getelementptr inbounds nuw (i8, ptr @dchk4_.isame, i64 28), align 4, !tbaa !10
  %i.kz = load i32, ptr @dchk4_.ldas, align 4, !tbaa !10
  %i.la = load i32, ptr @dchk4_.lda, align 4, !tbaa !10
  %i.lb = icmp eq i32 %i.kz, %i.la
  %i.lc = zext i1 %i.lb to i32
  store i32 %i.lc, ptr getelementptr inbounds nuw (i8, ptr @dchk4_.isame, i64 32), align 16, !tbaa !10
  store i32 9, ptr %i.c, align 4, !tbaa !10
  store i32 1, ptr @dchk4_.i__, align 4, !tbaa !10
  br label %._crit_edge259

._crit_edge259:                                   ; preds = %lde_.exit168, %bb.u
  %i.ld = phi i32 [ 1, %lde_.exit168 ], [ %i.li, %bb.u ]
  %storemerge133190 = phi i32 [ 1, %lde_.exit168 ], [ %i.lj, %bb.u ] ; 3 uses
  %.not145 = icmp ne i32 %i.ld, 0
  %.phi.trans.insert = sext i32 %storemerge133190 to i64
  %.phi.trans.insert260 = getelementptr [4 x i8], ptr @dchk4_.isame, i64 %.phi.trans.insert
  %.phi.trans.insert261 = getelementptr i8, ptr %.phi.trans.insert260, i64 -4
  %.pre262 = load i32, ptr %.phi.trans.insert261, align 4, !tbaa !10 ; 2 uses
  %i.le = icmp ne i32 %.pre262, 0
  %narrow291 = and i1 %.not145, %i.le
  %i.lf = zext i1 %narrow291 to i32               ; 2 uses
  store i32 %i.lf, ptr @dchk4_.same, align 4, !tbaa !10
  %.not146 = icmp eq i32 %.pre262, 0
  br i1 %.not146, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge259
  %i.lg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, i32 noundef %storemerge133190) ; 0 uses
  %.pre257 = load i32, ptr @dchk4_.same, align 4, !tbaa !10
  %.pre263 = load i32, ptr @dchk4_.i__, align 4, !tbaa !10
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge259, %bb.t
  %i.lh = phi i32 [ %storemerge133190, %._crit_edge259 ], [ %.pre263, %bb.t ] ; 2 uses
  %i.li = phi i32 [ %i.lf, %._crit_edge259 ], [ %.pre257, %bb.t ] ; 2 uses
  %i.lj = add nsw i32 %i.lh, 1                    ; 2 uses
  store i32 %i.lj, ptr @dchk4_.i__, align 4, !tbaa !10
  %.not134 = icmp sgt i32 %i.lh, 8
  br i1 %.not134, label %bb.v, label %._crit_edge259, !llvm.loop !129

bb.v:                                             ; preds = %bb.u
  %.not135 = icmp eq i32 %i.li, 0
  br i1 %.not135, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 1, ptr %7, align 4, !tbaa !10
  br label %bb.am

bb.x:                                             ; preds = %bb.v
  %i.lk = load i32, ptr @dchk4_.null, align 4, !tbaa !10
  %.not136 = icmp eq i32 %i.lk, 0
  br i1 %.not136, label %bb.y, label %.loopexit171

bb.y:                                             ; preds = %bb.x
  %i.ll = load i32, ptr @dchk4_.incx, align 4, !tbaa !10
  %i.lm = icmp sgt i32 %i.ll, 0
  %i.ln = load i32, ptr @dchk4_.m, align 4, !tbaa !10 ; 12 uses
  %.not140196 = icmp slt i32 %i.ln, 1             ; 2 uses
  br i1 %i.lm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  br i1 %.not140196, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.z
  %i.lo = add nuw i32 %i.ln, 1                    ; 5 uses
  %wide.trip.count253 = zext i32 %i.lo to i64     ; 2 uses
  %i.lp = zext nneg i32 %i.ln to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.ln, 4
  %or.cond436 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond436, label %.lr.ph199.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check296 = icmp ult i32 %i.ln, 16
  br i1 %min.iters.check296, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.lq = and i64 %i.lp, 12
  %n.vec = and i64 %i.lp, 2147483632              ; 4 uses
  %i.lr = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ls = getelementptr [8 x i8], ptr %19, i64 %index ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 32
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 64
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 96
  %wide.load = load <4 x double>, ptr %i.ls, align 8, !tbaa !14
  %wide.load297 = load <4 x double>, ptr %i.lt, align 8, !tbaa !14
  %wide.load298 = load <4 x double>, ptr %i.lu, align 8, !tbaa !14
  %wide.load299 = load <4 x double>, ptr %i.lv, align 8, !tbaa !14
  %i.lw = getelementptr [8 x i8], ptr %27, i64 %index ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 32
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 64
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 96
  store <4 x double> %wide.load, ptr %i.lw, align 8, !tbaa !14
  store <4 x double> %wide.load297, ptr %i.lx, align 8, !tbaa !14
  store <4 x double> %wide.load298, ptr %i.ly, align 8, !tbaa !14
end_hunk_1
