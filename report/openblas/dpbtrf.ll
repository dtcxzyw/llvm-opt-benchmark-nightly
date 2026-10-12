Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dpbtrf?download=true
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@dpbtrf_:bb.a
  %scevgep394.2 = getelementptr i8, ptr %i.mf, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep394.2, i8 0, i64 %i.md, i1 false), !tbaa !36
  br label %.loopexit280.2

.loopexit280.2:                                   ; preds = %.lr.ph317.2, %.loopexit280.1
  %i.mg = add nuw nsw i32 %.1221320, 4            ; 2 uses
  %.not254314.not.3 = icmp slt i32 %i.ly, %i.x
  br i1 %.not254314.not.3, label %.lr.ph317.3, label %.loopexit280.3

.lr.ph317.3:                                      ; preds = %.loopexit280.2
  %indvar.next393.2 = or disjoint i64 %indvar392, 3 ; 2 uses
  %i.mh = trunc i64 %indvar.next393.2 to i32
  %i.mi = sub i32 %i.ac, %i.mh
  %i.mj = zext i32 %i.mi to i64
  %i.mk = shl nuw nsw i64 %i.mj, 3
  %i.ml = add nuw nsw i64 %i.mk, 8
  %i.mm = mul nuw nsw i64 %indvar.next393.2, 272
  %i.mn = getelementptr i8, ptr %i.d, i64 %i.mm
  %scevgep394.3 = getelementptr i8, ptr %i.mn, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep394.3, i8 0, i64 %i.ml, i1 false), !tbaa !36
  br label %.loopexit280.3

.loopexit280.3:                                   ; preds = %.lr.ph317.3, %.loopexit280.2
  %indvar.next393.3 = add nuw nsw i64 %indvar392, 4 ; 2 uses
  %niter595.next.3 = add i64 %niter595, 4         ; 2 uses
  %niter595.ncmp.3 = icmp eq i64 %niter595.next.3, %unroll_iter594
  br i1 %niter595.ncmp.3, label %._crit_edge322.unr-lcssa, label %.lr.ph321, !llvm.loop !21

.lr.ph321:                                        ; preds = %.loopexit280.3, %.lr.ph321.preheader.new
  %indvar392 = phi i64 [ 0, %.lr.ph321.preheader.new ], [ %indvar.next393.3, %.loopexit280.3 ] ; 6 uses
  %.1221320 = phi i32 [ 1, %.lr.ph321.preheader.new ], [ %i.mg, %.loopexit280.3 ] ; 5 uses
  %niter595 = phi i64 [ 0, %.lr.ph321.preheader.new ], [ %niter595.next.3, %.loopexit280.3 ]
  %i.mo = add nuw nsw i32 %.1221320, 1
  %.not254314.not = icmp slt i32 %.1221320, %i.x
  br i1 %.not254314.not, label %.lr.ph317, label %.loopexit280

.lr.ph317:                                        ; preds = %.lr.ph321
  %i.mp = trunc i64 %indvar392 to i32
  %i.mq = sub i32 %i.ac, %i.mp
  %i.mr = zext i32 %i.mq to i64
  %i.ms = shl nuw nsw i64 %i.mr, 3
  %i.mt = add nuw nsw i64 %i.ms, 8
  %i.mu = mul nuw nsw i64 %indvar392, 272
  %i.mv = getelementptr i8, ptr %i.d, i64 %i.mu
  %scevgep394 = getelementptr i8, ptr %i.mv, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep394, i8 0, i64 %i.mt, i1 false), !tbaa !36
  br label %.loopexit280

._crit_edge322.unr-lcssa:                         ; preds = %.loopexit280.3
  %lcmp.mod592.not = icmp eq i64 %xtraiter590, 0
  br i1 %lcmp.mod592.not, label %._crit_edge322, label %.lr.ph321.epil.preheader

.lr.ph321.epil.preheader:                         ; preds = %._crit_edge322.unr-lcssa, %.lr.ph321.preheader
  %indvar392.epil.init = phi i64 [ 0, %.lr.ph321.preheader ], [ %indvar.next393.3, %._crit_edge322.unr-lcssa ]
  %.1221320.epil.init = phi i32 [ 1, %.lr.ph321.preheader ], [ %i.mg, %._crit_edge322.unr-lcssa ]
  %lcmp.mod593 = icmp ne i64 %xtraiter590, 0
  tail call void @llvm.assume(i1 %lcmp.mod593)
  br label %.lr.ph321.epil

.lr.ph321.epil:                                   ; preds = %.loopexit280.epil, %.lr.ph321.epil.preheader
  %indvar392.epil = phi i64 [ %indvar392.epil.init, %.lr.ph321.epil.preheader ], [ %indvar.next393.epil, %.loopexit280.epil ] ; 3 uses
  %.1221320.epil = phi i32 [ %.1221320.epil.init, %.lr.ph321.epil.preheader ], [ %i.mw, %.loopexit280.epil ] ; 2 uses
  %epil.iter591 = phi i64 [ 0, %.lr.ph321.epil.preheader ], [ %epil.iter591.next, %.loopexit280.epil ]
  %i.mw = add nuw nsw i32 %.1221320.epil, 1
  %.not254314.not.epil = icmp slt i32 %.1221320.epil, %i.x
  br i1 %.not254314.not.epil, label %.lr.ph317.epil, label %.loopexit280.epil

.lr.ph317.epil:                                   ; preds = %.lr.ph321.epil
  %i.mx = trunc i64 %indvar392.epil to i32
  %i.my = sub i32 %i.ac, %i.mx
  %i.mz = zext i32 %i.my to i64
  %i.na = shl nuw nsw i64 %i.mz, 3
  %i.nb = add nuw nsw i64 %i.na, 8
  %i.nc = mul nuw nsw i64 %indvar392.epil, 272
  %i.nd = getelementptr i8, ptr %i.d, i64 %i.nc
  %scevgep394.epil = getelementptr i8, ptr %i.nd, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep394.epil, i8 0, i64 %i.nb, i1 false), !tbaa !36
  br label %.loopexit280.epil

.loopexit280.epil:                                ; preds = %.lr.ph317.epil, %.lr.ph321.epil
  %indvar.next393.epil = add nuw nsw i64 %indvar392.epil, 1
  %epil.iter591.next = add i64 %epil.iter591, 1   ; 2 uses
  %epil.iter591.cmp.not = icmp eq i64 %epil.iter591.next, %xtraiter590
  br i1 %epil.iter591.cmp.not, label %._crit_edge322, label %.lr.ph321.epil, !llvm.loop !22

._crit_edge322:                                   ; preds = %.loopexit280.epil, %._crit_edge322.unr-lcssa
  %i.ne = load i32, ptr %1, align 4, !tbaa !34    ; 2 uses
  %i.nf = icmp sgt i32 %i.ne, 0
  br i1 %i.nf, label %.lr.ph354.preheader, label %.loopexit279

.lr.ph354.preheader:                              ; preds = %._crit_edge322
  %i.ng = add i32 %i.i, 1                         ; 2 uses
  %i.nh = mul i32 %i.i, %i.x
  %i.ni = add i32 %i.i, -1                        ; 2 uses
  %i.nj = mul i32 %i.i, %i.x
  br label %.lr.ph354

.lr.ph354:                                        ; preds = %.lr.ph354.preheader, %.loopexit
  %indvar513 = phi i32 [ 0, %.lr.ph354.preheader ], [ %indvar.next514, %.loopexit ] ; 3 uses
  %.3225352 = phi i32 [ 1, %.lr.ph354.preheader ], [ %i.xs, %.loopexit ] ; 11 uses
  %i.nk = mul i32 %i.nj, %indvar513
  %i.nl = add i32 %i.ng, %i.nk
  %i.nm = mul i32 %i.nh, %indvar513
  %i.nn = add i32 %i.ng, %i.nm
  %i.no = load i32, ptr %1, align 4, !tbaa !34
  %i.np = sub nsw i32 %i.no, %.3225352
  %i.nq = add nsw i32 %i.np, 1                    ; 2 uses
  store i32 %i.nq, ptr %i.c, align 4, !tbaa !34
  %i.nr = call i32 @llvm.smin.i32(i32 %i.x, i32 %i.nq)
  store i32 %i.nr, ptr %i.g, align 4, !tbaa !34
  %i.ns = load i32, ptr %4, align 4, !tbaa !34
  %i.nt = add nsw i32 %i.ns, -1
  store i32 %i.nt, ptr %i.b, align 4, !tbaa !34
  %i.nu = mul nsw i32 %.3225352, %i.i             ; 3 uses
  %i.nv = sext i32 %i.nu to i64
  %i.nw = getelementptr [8 x i8], ptr %i.k, i64 %i.nv
  %i.nx = getelementptr i8, ptr %i.nw, i64 8      ; 3 uses
  %i.ny = call i32 @dpotf2_(ptr noundef %0, ptr noundef nonnull %i.g, ptr noundef %i.nx, ptr noundef nonnull %i.b, ptr noundef nonnull %i.h) #6 ; 0 uses
  %i.nz = load i32, ptr %i.h, align 4, !tbaa !34  ; 2 uses
  %.not242 = icmp eq i32 %i.nz, 0
  br i1 %.not242, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph354
  %i.oa = add nsw i32 %i.nz, %.3225352
  br label %bb.ag

bb.x:                                             ; preds = %.lr.ph354
  %i.ob = load i32, ptr %i.g, align 4, !tbaa !34  ; 5 uses
  %i.oc = add nsw i32 %i.ob, %.3225352            ; 2 uses
  %i.od = load i32, ptr %1, align 4, !tbaa !34    ; 3 uses
  %.not243 = icmp sgt i32 %i.oc, %i.od
  br i1 %.not243, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.oe = load i32, ptr %2, align 4, !tbaa !34    ; 2 uses
  %i.of = sub nsw i32 %i.oe, %i.ob
  %i.og = sub i32 %i.od, %i.oc
  %i.oh = add nsw i32 %i.og, 1
  %i.oi = call i32 @llvm.smin.i32(i32 %i.of, i32 %i.oh) ; 2 uses
  store i32 %i.oi, ptr %i.e, align 4, !tbaa !34
  store i32 %i.ob, ptr %i.b, align 4, !tbaa !34
  %i.oj = add i32 %i.od, 1
  %i.ok = add i32 %.3225352, %i.oe
  %i.ol = sub i32 %i.oj, %i.ok                    ; 2 uses
  store i32 %i.ol, ptr %i.c, align 4, !tbaa !34
  %i.om = call i32 @llvm.smin.i32(i32 %i.ob, i32 %i.ol) ; 2 uses
  store i32 %i.om, ptr %i.f, align 4, !tbaa !34
  %i.on = icmp sgt i32 %i.oi, 0
  br i1 %i.on, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.oo = load i32, ptr %4, align 4, !tbaa !34
  %i.op = add nsw i32 %i.oo, -1                   ; 2 uses
  store i32 %i.op, ptr %i.b, align 4, !tbaa !34
  store i32 %i.op, ptr %i.c, align 4, !tbaa !34
  %i.oq = add i32 %i.nu, 1                        ; 2 uses
  %i.or = add i32 %i.oq, %i.ob
  %i.os = sext i32 %i.or to i64
  %i.ot = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.os
  call void @dtrsm_(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.e, ptr noundef nonnull %i.g, ptr noundef nonnull @c_b18, ptr noundef %i.nx, ptr noundef nonnull %i.b, ptr noundef %i.ot, ptr noundef nonnull %i.c) #6
  %i.ou = load i32, ptr %4, align 4, !tbaa !34
  %i.ov = add nsw i32 %i.ou, -1                   ; 2 uses
  store i32 %i.ov, ptr %i.b, align 4, !tbaa !34
  store i32 %i.ov, ptr %i.c, align 4, !tbaa !34
  %i.ow = load i32, ptr %i.g, align 4, !tbaa !34  ; 2 uses
  %i.ox = add i32 %i.oq, %i.ow
  %i.oy = sext i32 %i.ox to i64
  %i.oz = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.oy
  %i.pa = add nsw i32 %i.ow, %.3225352
  %i.pb = mul nsw i32 %i.pa, %i.i
  %i.pc = sext i32 %i.pb to i64
  %i.pd = getelementptr [8 x i8], ptr %i.k, i64 %i.pc
  %i.pe = getelementptr i8, ptr %i.pd, i64 8
  call void @dsyrk_(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.e, ptr noundef nonnull %i.g, ptr noundef nonnull @c_b21, ptr noundef %i.oz, ptr noundef nonnull %i.b, ptr noundef nonnull @c_b18, ptr noundef %i.pe, ptr noundef nonnull %i.c) #6
  %.pr271 = load i32, ptr %i.f, align 4, !tbaa !34
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.pf = phi i32 [ %.pr271, %bb.z ], [ %i.om, %bb.y ] ; 5 uses
  %i.pg = icmp sgt i32 %i.pf, 0
  br i1 %i.pg, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  %i.ph = load i32, ptr %i.g, align 4, !tbaa !34  ; 3 uses
  %.not246332 = icmp slt i32 %i.ph, 1
  br i1 %.not246332, label %bb.ac, label %.lr.ph335

.lr.ph335:                                        ; preds = %bb.ab
  %i.pi = add nsw i32 %.3225352, -1
  %i.pj = add nuw i32 %i.ph, 1
  %wide.trip.count411 = zext i32 %i.pj to i64
  %i.pk = load i32, ptr %2, align 4, !tbaa !34    ; 2 uses
  %invariant.op456 = add i32 %i.pk, 1
  %i.pl = add i32 %i.pk, %i.nl
  br label %iter.check564

iter.check564:                                    ; preds = %._crit_edge328, %.lr.ph335
  %indvar545 = phi i32 [ %indvar.next546, %._crit_edge328 ], [ 0, %.lr.ph335 ] ; 4 uses
  %indvars.iv407 = phi i64 [ %indvars.iv.next408, %._crit_edge328 ], [ 1, %.lr.ph335 ] ; 3 uses
  %i.pm = add i32 %indvar545, 1
  %smin548 = call i32 @llvm.smin.i32(i32 %i.pf, i32 %i.pm)
  %6 = add i32 %smin548, 1
  %i.pn = zext i32 %6 to i64                      ; 3 uses
  %7 = add nsw i64 %i.pn, -1                      ; 7 uses
  %i.po = trunc nuw nsw i64 %indvars.iv407 to i32 ; 3 uses
  %smin = call i32 @llvm.smin.i32(i32 %i.pf, i32 %i.po)
  %i.pp = add i32 %smin, 1                        ; 2 uses
  %i.pq = add i32 %i.pi, %i.po
  %i.pr = mul nsw i32 %i.pq, %i.i
  %reass.sub357 = sub i32 %i.pr, %i.po
  %invariant.op330.reass = add i32 %reass.sub357, %invariant.op456 ; 11 uses
  %wide.trip.count405 = zext i32 %i.pp to i64
  %.idx442 = mul i64 %indvars.iv407, 264
  %invariant.gep454 = getelementptr i8, ptr %i.d, i64 %.idx442 ; 11 uses
  %min.iters.check549 = icmp ult i64 %7, 4
  br i1 %min.iters.check549, label %vec.epilog.scalar.ph565.preheader, label %vector.scevcheck544

vector.scevcheck544:                              ; preds = %iter.check564
  %i.ps = mul i32 %i.ni, %indvar545
  %i.pt = add i32 %i.pl, %i.ps                    ; 2 uses
  %i.pu = add i32 %indvar545, 1
  %smin547 = call i32 @llvm.smin.i32(i32 %i.pf, i32 %i.pu)
  %8 = add i32 %smin547, 1
  %i.pv = zext i32 %8 to i64
  %i.pw = add nsw i64 %i.pv, -2                   ; 2 uses
  %i.px = trunc i64 %i.pw to i32
  %i.py = add i32 %i.pt, %i.px
  %i.pz = icmp slt i32 %i.py, %i.pt
  %i.qa = icmp ugt i64 %i.pw, 4294967295
  %i.qb = or i1 %i.pz, %i.qa
  br i1 %i.qb, label %vec.epilog.scalar.ph565.preheader, label %vector.main.loop.iter.check550

vector.main.loop.iter.check550:                   ; preds = %vector.scevcheck544
  %min.iters.check551 = icmp ult i64 %7, 16
  br i1 %min.iters.check551, label %vec.epilog.ph568, label %vector.ph552

vector.ph552:                                     ; preds = %vector.main.loop.iter.check550
  %i.qc = and i64 %7, 12
  %n.vec553 = and i64 %7, -16                     ; 4 uses
  %i.qd = or disjoint i64 %n.vec553, 1
  br label %vector.body554

vector.body554:                                   ; preds = %vector.ph552, %vector.body554
  %index555 = phi i64 [ 0, %vector.ph552 ], [ %index.next560, %vector.body554 ] ; 2 uses
  %i.qe = or disjoint i64 %index555, 1            ; 2 uses
  %i.qf = trunc nuw nsw i64 %i.qe to i32
  %i.qg = add i32 %invariant.op330.reass, %i.qf
  %i.qh = sext i32 %i.qg to i64
  %i.qi = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.qh ; 4 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 32
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 64
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qi, i64 96
  %wide.load556 = load <4 x double>, ptr %i.qi, align 8, !tbaa !36
  %wide.load557 = load <4 x double>, ptr %i.qj, align 8, !tbaa !36
  %wide.load558 = load <4 x double>, ptr %i.qk, align 8, !tbaa !36
  %wide.load559 = load <4 x double>, ptr %i.ql, align 8, !tbaa !36
  %i.qm = getelementptr [8 x i8], ptr %invariant.gep454, i64 %i.qe ; 4 uses
  %i.qn = getelementptr i8, ptr %i.qm, i64 -272
  %i.qo = getelementptr i8, ptr %i.qm, i64 -240
  %i.qp = getelementptr i8, ptr %i.qm, i64 -208
  %i.qq = getelementptr i8, ptr %i.qm, i64 -176
  store <4 x double> %wide.load556, ptr %i.qn, align 8, !tbaa !36
  store <4 x double> %wide.load557, ptr %i.qo, align 8, !tbaa !36
  store <4 x double> %wide.load558, ptr %i.qp, align 8, !tbaa !36
  store <4 x double> %wide.load559, ptr %i.qq, align 8, !tbaa !36
  %index.next560 = add nuw i64 %index555, 16      ; 2 uses
  %i.qr = icmp eq i64 %index.next560, %n.vec553
  br i1 %i.qr, label %middle.block561, label %vector.body554, !llvm.loop !23

middle.block561:                                  ; preds = %vector.body554
  %cmp.n562 = icmp eq i64 %7, %n.vec553
  br i1 %cmp.n562, label %._crit_edge328, label %vec.epilog.iter.check566

vec.epilog.iter.check566:                         ; preds = %middle.block561
  %min.epilog.iters.check567 = icmp eq i64 %i.qc, 0
  br i1 %min.epilog.iters.check567, label %vec.epilog.scalar.ph565.preheader, label %vec.epilog.ph568, !prof !42

vec.epilog.ph568:                                 ; preds = %vector.main.loop.iter.check550, %vec.epilog.iter.check566
  %vec.epilog.resume.val563 = phi i64 [ %n.vec553, %vec.epilog.iter.check566 ], [ 0, %vector.main.loop.iter.check550 ]
  %n.vec569 = and i64 %7, -4                      ; 3 uses
  %i.qs = or disjoint i64 %n.vec569, 1
  br label %vec.epilog.vector.body570

vec.epilog.vector.body570:                        ; preds = %vec.epilog.vector.body570, %vec.epilog.ph568
  %index571 = phi i64 [ %vec.epilog.resume.val563, %vec.epilog.ph568 ], [ %index.next573, %vec.epilog.vector.body570 ] ; 2 uses
  %i.qt = or disjoint i64 %index571, 1            ; 2 uses
  %i.qu = trunc nuw nsw i64 %i.qt to i32
  %i.qv = add i32 %invariant.op330.reass, %i.qu
  %i.qw = sext i32 %i.qv to i64
  %i.qx = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.qw
  %wide.load572 = load <4 x double>, ptr %i.qx, align 8, !tbaa !36
  %i.qy = getelementptr [8 x i8], ptr %invariant.gep454, i64 %i.qt
  %i.qz = getelementptr i8, ptr %i.qy, i64 -272
  store <4 x double> %wide.load572, ptr %i.qz, align 8, !tbaa !36
  %index.next573 = add nuw i64 %index571, 4       ; 2 uses
  %i.ra = icmp eq i64 %index.next573, %n.vec569
  br i1 %i.ra, label %vec.epilog.middle.block574, label %vec.epilog.vector.body570, !llvm.loop !24

vec.epilog.middle.block574:                       ; preds = %vec.epilog.vector.body570
  %cmp.n575 = icmp eq i64 %7, %n.vec569
  br i1 %cmp.n575, label %._crit_edge328, label %vec.epilog.scalar.ph565.preheader

vec.epilog.scalar.ph565.preheader:                ; preds = %iter.check564, %vector.scevcheck544, %vec.epilog.iter.check566, %vec.epilog.middle.block574
  %indvars.iv402.ph = phi i64 [ 1, %iter.check564 ], [ 1, %vector.scevcheck544 ], [ %i.qd, %vec.epilog.iter.check566 ], [ %i.qs, %vec.epilog.middle.block574 ] ; 4 uses
  %i.rb = sub nsw i64 %i.pn, %indvars.iv402.ph
  %xtraiter596 = and i64 %i.rb, 7                 ; 2 uses
  %lcmp.mod597.not = icmp eq i64 %xtraiter596, 0
  br i1 %lcmp.mod597.not, label %vec.epilog.scalar.ph565.prol.loopexit, label %vec.epilog.scalar.ph565.prol

vec.epilog.scalar.ph565.prol:                     ; preds = %vec.epilog.scalar.ph565.preheader, %vec.epilog.scalar.ph565.prol
  %indvars.iv402.prol = phi i64 [ %indvars.iv.next403.prol, %vec.epilog.scalar.ph565.prol ], [ %indvars.iv402.ph, %vec.epilog.scalar.ph565.preheader ] ; 3 uses
  %prol.iter598 = phi i64 [ %prol.iter598.next, %vec.epilog.scalar.ph565.prol ], [ 0, %vec.epilog.scalar.ph565.preheader ]
  %i.rc = trunc nuw nsw i64 %indvars.iv402.prol to i32
  %.reass331.prol = add i32 %invariant.op330.reass, %i.rc
  %i.rd = sext i32 %.reass331.prol to i64
  %i.re = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.rd
  %i.rf = load double, ptr %i.re, align 8, !tbaa !36
  %gep455.prol = getelementptr [8 x i8], ptr %invariant.gep454, i64 %indvars.iv402.prol
  %i.rg = getelementptr i8, ptr %gep455.prol, i64 -272
  store double %i.rf, ptr %i.rg, align 8, !tbaa !36
  %indvars.iv.next403.prol = add nuw nsw i64 %indvars.iv402.prol, 1 ; 2 uses
  %prol.iter598.next = add i64 %prol.iter598, 1   ; 2 uses
  %prol.iter598.cmp.not = icmp eq i64 %prol.iter598.next, %xtraiter596
  br i1 %prol.iter598.cmp.not, label %vec.epilog.scalar.ph565.prol.loopexit, label %vec.epilog.scalar.ph565.prol, !llvm.loop !25

vec.epilog.scalar.ph565.prol.loopexit:            ; preds = %vec.epilog.scalar.ph565.prol, %vec.epilog.scalar.ph565.preheader
  %indvars.iv402.unr = phi i64 [ %indvars.iv402.ph, %vec.epilog.scalar.ph565.preheader ], [ %indvars.iv.next403.prol, %vec.epilog.scalar.ph565.prol ]
  %i.rh = sub nsw i64 %indvars.iv402.ph, %i.pn
  %i.ri = icmp ugt i64 %i.rh, -8
  br i1 %i.ri, label %._crit_edge328, label %vec.epilog.scalar.ph565

vec.epilog.scalar.ph565:                          ; preds = %vec.epilog.scalar.ph565.prol.loopexit, %vec.epilog.scalar.ph565
  %indvars.iv402 = phi i64 [ %indvars.iv.next403.7, %vec.epilog.scalar.ph565 ], [ %indvars.iv402.unr, %vec.epilog.scalar.ph565.prol.loopexit ] ; 10 uses
  %i.rj = trunc nuw nsw i64 %indvars.iv402 to i32
  %.reass331 = add i32 %invariant.op330.reass, %i.rj
  %i.rk = sext i32 %.reass331 to i64
  %i.rl = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.rk
  %i.rm = load double, ptr %i.rl, align 8, !tbaa !36
  %gep455 = getelementptr [8 x i8], ptr %invariant.gep454, i64 %indvars.iv402
  %i.rn = getelementptr i8, ptr %gep455, i64 -272
  store double %i.rm, ptr %i.rn, align 8, !tbaa !36
  %indvars.iv.next403 = add nuw nsw i64 %indvars.iv402, 1 ; 2 uses
  %i.ro = trunc nuw nsw i64 %indvars.iv.next403 to i32
  %.reass331.1 = add i32 %invariant.op330.reass, %i.ro
  %i.rp = sext i32 %.reass331.1 to i64
  %i.rq = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.rp
  %i.rr = load double, ptr %i.rq, align 8, !tbaa !36
  %gep455.1 = getelementptr [8 x i8], ptr %invariant.gep454, i64 %indvars.iv.next403
  %i.rs = getelementptr i8, ptr %gep455.1, i64 -272
  store double %i.rr, ptr %i.rs, align 8, !tbaa !36
  %indvars.iv.next403.1 = add nuw nsw i64 %indvars.iv402, 2 ; 2 uses
  %i.rt = trunc nuw nsw i64 %indvars.iv.next403.1 to i32
  %.reass331.2 = add i32 %invariant.op330.reass, %i.rt
  %i.ru = sext i32 %.reass331.2 to i64
  %i.rv = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ru
  %i.rw = load double, ptr %i.rv, align 8, !tbaa !36
  %gep455.2 = getelementptr [8 x i8], ptr %invariant.gep454, i64 %indvars.iv.next403.1
  %i.rx = getelementptr i8, ptr %gep455.2, i64 -272
  store double %i.rw, ptr %i.rx, align 8, !tbaa !36
  %indvars.iv.next403.2 = add nuw nsw i64 %indvars.iv402, 3 ; 2 uses
  %i.ry = trunc nuw nsw i64 %indvars.iv.next403.2 to i32
  %.reass331.3 = add i32 %invariant.op330.reass, %i.ry
  %i.rz = sext i32 %.reass331.3 to i64
  %i.sa = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.rz
  %i.sb = load double, ptr %i.sa, align 8, !tbaa !36
  %gep455.3 = getelementptr [8 x i8], ptr %invariant.gep454, i64 %indvars.iv.next403.2
  %i.sc = getelementptr i8, ptr %gep455.3, i64 -272
  store double %i.sb, ptr %i.sc, align 8, !tbaa !36
  %indvars.iv.next403.3 = add nuw nsw i64 %indvars.iv402, 4 ; 2 uses
  %i.sd = trunc nuw nsw i64 %indvars.iv.next403.3 to i32
  %.reass331.4 = add i32 %invariant.op330.reass, %i.sd
  %i.se = sext i32 %.reass331.4 to i64
  %i.sf = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.se
  %i.sg = load double, ptr %i.sf, align 8, !tbaa !36
  %gep455.4 = getelementptr [8 x i8], ptr %invariant.gep454, i64 %indvars.iv.next403.3
  %i.sh = getelementptr i8, ptr %gep455.4, i64 -272
  store double %i.sg, ptr %i.sh, align 8, !tbaa !36
  %indvars.iv.next403.4 = add nuw nsw i64 %indvars.iv402, 5 ; 2 uses
  %i.si = trunc nuw nsw i64 %indvars.iv.next403.4 to i32
  %.reass331.5 = add i32 %invariant.op330.reass, %i.si
  %i.sj = sext i32 %.reass331.5 to i64
  %i.sk = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.sj
  %i.sl = load double, ptr %i.sk, align 8, !tbaa !36
  %gep455.5 = getelementptr [8 x i8], ptr %invariant.gep454, i64 %indvars.iv.next403.4
  %i.sm = getelementptr i8, ptr %gep455.5, i64 -272
  store double %i.sl, ptr %i.sm, align 8, !tbaa !36
  %indvars.iv.next403.5 = add nuw nsw i64 %indvars.iv402, 6 ; 2 uses
  %i.sn = trunc nuw nsw i64 %indvars.iv.next403.5 to i32
  %.reass331.6 = add i32 %invariant.op330.reass, %i.sn
  %i.so = sext i32 %.reass331.6 to i64
  %i.sp = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.so
  %i.sq = load double, ptr %i.sp, align 8, !tbaa !36
  %gep455.6 = getelementptr [8 x i8], ptr %invariant.gep454, i64 %indvars.iv.next403.5
  %i.sr = getelementptr i8, ptr %gep455.6, i64 -272
  store double %i.sq, ptr %i.sr, align 8, !tbaa !36
  %indvars.iv.next403.6 = add nuw nsw i64 %indvars.iv402, 7 ; 2 uses
  %i.ss = trunc nuw nsw i64 %indvars.iv.next403.6 to i32
  %.reass331.7 = add i32 %invariant.op330.reass, %i.ss
  %i.st = sext i32 %.reass331.7 to i64
  %i.su = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.st
  %i.sv = load double, ptr %i.su, align 8, !tbaa !36
  %gep455.7 = getelementptr [8 x i8], ptr %invariant.gep454, i64 %indvars.iv.next403.6
  %i.sw = getelementptr i8, ptr %gep455.7, i64 -272
  store double %i.sv, ptr %i.sw, align 8, !tbaa !36
  %indvars.iv.next403.7 = add nuw nsw i64 %indvars.iv402, 8 ; 2 uses
  %exitcond406.not.7 = icmp eq i64 %indvars.iv.next403.7, %wide.trip.count405
  br i1 %exitcond406.not.7, label %._crit_edge328, label %vec.epilog.scalar.ph565, !llvm.loop !26

._crit_edge328:                                   ; preds = %vec.epilog.scalar.ph565.prol.loopexit, %vec.epilog.scalar.ph565, %vec.epilog.middle.block574, %middle.block561
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407, 1 ; 2 uses
  %exitcond412.not = icmp eq i64 %indvars.iv.next408, %wide.trip.count411
  %indvar.next546 = add i32 %indvar545, 1
  br i1 %exitcond412.not, label %._crit_edge336, label %iter.check564, !llvm.loop !27

._crit_edge336:                                   ; preds = %._crit_edge328
  %smin409 = call i32 @llvm.smin.i32(i32 %i.pf, i32 %i.ph)
  store i32 %smin409, ptr %i.c, align 4, !tbaa !34
  store i32 %i.pp, ptr %i.h, align 4, !tbaa !34
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge336, %bb.ab
  %i.sx = load i32, ptr %4, align 4, !tbaa !34
  %i.sy = add nsw i32 %i.sx, -1
  store i32 %i.sy, ptr %i.b, align 4, !tbaa !34
  call void @dtrsm_(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull @c_b18, ptr noundef %i.nx, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull @c__33) #6
  %i.sz = load i32, ptr %i.e, align 4, !tbaa !34
  %i.ta = icmp sgt i32 %i.sz, 0
  br i1 %i.ta, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.tb = load i32, ptr %4, align 4, !tbaa !34
  %i.tc = add nsw i32 %i.tb, -1                   ; 2 uses
  store i32 %i.tc, ptr %i.b, align 4, !tbaa !34
  store i32 %i.tc, ptr %i.c, align 4, !tbaa !34
  %i.td = load i32, ptr %i.g, align 4, !tbaa !34  ; 3 uses
  %i.te = add i32 %i.nu, 1
  %i.tf = add i32 %i.te, %i.td
  %i.tg = sext i32 %i.tf to i64
  %i.th = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.tg
  %i.ti = load i32, ptr %2, align 4, !tbaa !34
  %i.tj = add nsw i32 %i.td, %.3225352
  %i.tk = mul nsw i32 %i.tj, %i.i
  %reass.sub358 = sub i32 %i.ti, %i.td
  %i.tl = add i32 %reass.sub358, 1
  %i.tm = add nsw i32 %i.tl, %i.tk
  %i.tn = sext i32 %i.tm to i64
  %i.to = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.tn
  call void @dgemm_(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, ptr noundef nonnull %i.g, ptr noundef nonnull @c_b21, ptr noundef nonnull %i.d, ptr noundef nonnull @c__33, ptr noundef %i.th, ptr noundef nonnull %i.b, ptr noundef nonnull @c_b18, ptr noundef %i.to, ptr noundef nonnull %i.c) #6
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.tp = load i32, ptr %4, align 4, !tbaa !34
  %i.tq = add nsw i32 %i.tp, -1
  store i32 %i.tq, ptr %i.b, align 4, !tbaa !34
  %i.tr = load i32, ptr %2, align 4, !tbaa !34
  %i.ts = add nsw i32 %i.tr, %.3225352
  %i.tt = mul nsw i32 %i.ts, %i.i
  %i.tu = sext i32 %i.tt to i64
  %i.tv = getelementptr [8 x i8], ptr %i.k, i64 %i.tu
  %i.tw = getelementptr i8, ptr %i.tv, i64 8
  call void @dsyrk_(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull @c_b21, ptr noundef nonnull %i.d, ptr noundef nonnull @c__33, ptr noundef nonnull @c_b18, ptr noundef %i.tw, ptr noundef nonnull %i.b) #6
  %i.tx = load i32, ptr %i.g, align 4, !tbaa !34  ; 4 uses
  store i32 %i.tx, ptr %i.b, align 4, !tbaa !34
  %.not247346 = icmp slt i32 %i.tx, 1
  br i1 %.not247346, label %.loopexit, label %.lr.ph349

.lr.ph349:                                        ; preds = %bb.ae
  %i.ty = load i32, ptr %i.f, align 4, !tbaa !34  ; 5 uses
  %i.tz = add nsw i32 %.3225352, -1
  %i.ua = add nuw i32 %i.tx, 1
  %wide.trip.count423 = zext i32 %i.ua to i64
  %.not249338 = icmp slt i32 %i.ty, 1
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph349, %._crit_edge342
  %indvar510 = phi i32 [ 0, %.lr.ph349 ], [ %indvar.next511, %._crit_edge342 ] ; 4 uses
  %indvars.iv419 = phi i64 [ 1, %.lr.ph349 ], [ %indvars.iv.next420, %._crit_edge342 ] ; 3 uses
  %i.ub = add i32 %indvar510, 1
  %smin515 = call i32 @llvm.smin.i32(i32 %i.ty, i32 %i.ub)
  %i.uc = add i32 %smin515, 1
  %i.ud = zext i32 %i.uc to i64                   ; 3 uses
  %i.ue = add nsw i64 %i.ud, -1                   ; 7 uses
  %i.uf = add i32 %indvar510, 1
  %smin512 = call i32 @llvm.smin.i32(i32 %i.ty, i32 %i.uf)
  %i.ug = add i32 %smin512, 1
  %i.uh = zext i32 %i.ug to i64
  %i.ui = add nsw i64 %i.uh, -2                   ; 2 uses
  %i.uj = mul i32 %i.ni, %indvar510
  %i.uk = add i32 %i.nn, %i.uj
  %i.ul = trunc nuw nsw i64 %indvars.iv419 to i32 ; 3 uses
  %smin416 = call i32 @llvm.smin.i32(i32 %i.ty, i32 %i.ul)
  %i.um = add i32 %smin416, 1                     ; 5 uses
  br i1 %.not249338, label %._crit_edge342, label %iter.check531

iter.check531:                                    ; preds = %bb.af
  %i.un = load i32, ptr %2, align 4, !tbaa !34    ; 2 uses
  %i.uo = add i32 %i.tz, %i.ul
  %i.up = mul nsw i32 %i.uo, %i.i
  %reass.sub359 = sub i32 %i.up, %i.ul
  %i.uq = add i32 %reass.sub359, 1
  %invariant.op344 = add i32 %i.uq, %i.un         ; 11 uses
  %wide.trip.count417 = zext i32 %i.um to i64
  %.idx443 = mul i64 %indvars.iv419, 264
  %invariant.gep457 = getelementptr i8, ptr %i.d, i64 %.idx443 ; 11 uses
  %min.iters.check516 = icmp ult i64 %i.ue, 4
  br i1 %min.iters.check516, label %vec.epilog.scalar.ph532.preheader, label %vector.scevcheck509

vector.scevcheck509:                              ; preds = %iter.check531
  %i.ur = add i32 %i.un, %i.uk                    ; 2 uses
  %i.us = trunc i64 %i.ui to i32
  %i.ut = add i32 %i.ur, %i.us
  %i.uu = icmp slt i32 %i.ut, %i.ur
  %i.uv = icmp ugt i64 %i.ui, 4294967295
  %i.uw = or i1 %i.uu, %i.uv
  br i1 %i.uw, label %vec.epilog.scalar.ph532.preheader, label %vector.main.loop.iter.check517

vector.main.loop.iter.check517:                   ; preds = %vector.scevcheck509
  %min.iters.check518 = icmp ult i64 %i.ue, 16
  br i1 %min.iters.check518, label %vec.epilog.ph535, label %vector.ph519

vector.ph519:                                     ; preds = %vector.main.loop.iter.check517
  %i.ux = and i64 %i.ue, 12
  %n.vec520 = and i64 %i.ue, -16                  ; 4 uses
  %i.uy = or disjoint i64 %n.vec520, 1
  br label %vector.body521

vector.body521:                                   ; preds = %vector.ph519, %vector.body521
  %index522 = phi i64 [ 0, %vector.ph519 ], [ %index.next527, %vector.body521 ] ; 2 uses
end_hunk_0
