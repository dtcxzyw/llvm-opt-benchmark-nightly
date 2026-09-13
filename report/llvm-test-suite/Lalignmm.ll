Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Lalignmm?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 35
begin_hunk_0_@Lalignmm_hmout:bb.a
  %i.ma = add nsw i64 %wide.trip.count145.i, -1   ; 2 uses
  %min.iters.check377 = icmp slt i32 %i.iu, 9
  %i.mb = sub i64 %i.gw, %i.le
  %diff.check375 = icmp ugt i64 %i.mb, -32
  %or.cond542 = select i1 %min.iters.check377, i1 true, i1 %diff.check375
  br i1 %or.cond542, label %.lr.ph29.i.preheader550, label %vector.ph378

vector.ph378:                                     ; preds = %.lr.ph29.i.preheader
  %n.vec379 = and i64 %i.ma, -8                   ; 3 uses
  %i.mc = or disjoint i64 %n.vec379, 1
  br label %vector.body380

vector.body380:                                   ; preds = %vector.body380, %vector.ph378
  %index381 = phi i64 [ 0, %vector.ph378 ], [ %index.next384, %vector.body380 ] ; 2 uses
  %i.md = or disjoint i64 %index381, 1            ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.md ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %wide.load382 = load <4 x float>, ptr %i.me, align 4, !tbaa !15
  %wide.load383 = load <4 x float>, ptr %i.mf, align 4, !tbaa !15
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.md ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  store <4 x float> %wide.load382, ptr %i.mg, align 4, !tbaa !15
  store <4 x float> %wide.load383, ptr %i.mh, align 4, !tbaa !15
  %index.next384 = add nuw i64 %index381, 8       ; 2 uses
  %i.mi = icmp eq i64 %index.next384, %n.vec379
  br i1 %i.mi, label %middle.block385, label %vector.body380, !llvm.loop !59

middle.block385:                                  ; preds = %vector.body380
  %cmp.n386 = icmp eq i64 %i.ma, %n.vec379
  br i1 %cmp.n386, label %.lr.ph31.i, label %.lr.ph29.i.preheader550

.lr.ph29.i.preheader550:                          ; preds = %.lr.ph29.i.preheader, %middle.block385
  %indvars.iv154.i.ph = phi i64 [ 1, %.lr.ph29.i.preheader ], [ %i.mc, %middle.block385 ] ; 4 uses
  %i.mj = sub nsw i64 %wide.trip.count145.i, %indvars.iv154.i.ph
  %xtraiter565 = and i64 %i.mj, 3                 ; 2 uses
  %lcmp.mod566.not = icmp eq i64 %xtraiter565, 0
  br i1 %lcmp.mod566.not, label %.lr.ph29.i.prol.loopexit, label %.lr.ph29.i.prol

.lr.ph29.i.prol:                                  ; preds = %.lr.ph29.i.preheader550, %.lr.ph29.i.prol
  %indvars.iv154.i.prol = phi i64 [ %indvars.iv.next155.i.prol, %.lr.ph29.i.prol ], [ %indvars.iv154.i.ph, %.lr.ph29.i.preheader550 ] ; 3 uses
  %prol.iter567 = phi i64 [ %prol.iter567.next, %.lr.ph29.i.prol ], [ 0, %.lr.ph29.i.preheader550 ]
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv154.i.prol
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !15
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv154.i.prol
  store float %i.ml, ptr %i.mm, align 4, !tbaa !15
  %indvars.iv.next155.i.prol = add nuw nsw i64 %indvars.iv154.i.prol, 1 ; 2 uses
  %prol.iter567.next = add i64 %prol.iter567, 1   ; 2 uses
  %prol.iter567.cmp.not = icmp eq i64 %prol.iter567.next, %xtraiter565
  br i1 %prol.iter567.cmp.not, label %.lr.ph29.i.prol.loopexit, label %.lr.ph29.i.prol, !llvm.loop !60

.lr.ph29.i.prol.loopexit:                         ; preds = %.lr.ph29.i.prol, %.lr.ph29.i.preheader550
  %indvars.iv154.i.unr = phi i64 [ %indvars.iv154.i.ph, %.lr.ph29.i.preheader550 ], [ %indvars.iv.next155.i.prol, %.lr.ph29.i.prol ]
  %i.mn = sub nsw i64 %indvars.iv154.i.ph, %wide.trip.count145.i
  %i.mo = icmp ugt i64 %i.mn, -4
  br i1 %i.mo, label %.lr.ph31.i, label %.lr.ph29.i

.lr.ph31.i:                                       ; preds = %.lr.ph29.i.prol.loopexit, %.lr.ph29.i, %middle.block385
  %i.mp = getelementptr i8, ptr %i.u, i64 4       ; 6 uses
  %i.mq = add nsw i64 %wide.trip.count145.i, -1   ; 2 uses
  %min.iters.check401 = icmp slt i32 %i.iu, 13
  br i1 %min.iters.check401, label %scalar.ph400.preheader, label %vector.memcheck388

vector.memcheck388:                               ; preds = %.lr.ph31.i
  %scevgep389 = getelementptr i8, ptr %i.hj, i64 4 ; 2 uses
  %i.mr = shl nuw nsw i64 %wide.trip.count145.i, 2 ; 2 uses
  %scevgep390 = getelementptr i8, ptr %i.hj, i64 %i.mr ; 2 uses
  %i.ms = getelementptr i8, ptr %i.gv, i64 %i.mr
  %scevgep391 = getelementptr i8, ptr %i.ms, i64 -4
  %scevgep392 = getelementptr i8, ptr %i.u, i64 8
  %bound0393 = icmp ult ptr %scevgep389, %scevgep391
  %bound1394 = icmp ult ptr %i.gv, %scevgep390
  %found.conflict395 = and i1 %bound0393, %bound1394
  %bound0396 = icmp ult ptr %scevgep389, %scevgep392
  %bound1397 = icmp ult ptr %i.mp, %scevgep390
  %found.conflict398 = and i1 %bound0396, %bound1397
  %conflict.rdx399 = or i1 %found.conflict395, %found.conflict398
  br i1 %conflict.rdx399, label %scalar.ph400.preheader, label %vector.ph402

vector.ph402:                                     ; preds = %vector.memcheck388
  %n.vec403 = and i64 %i.mq, -8                   ; 3 uses
  %i.mt = or disjoint i64 %n.vec403, 1
  %i.mu = load float, ptr %i.mp, align 4, !tbaa !15, !alias.scope !118
  %broadcast.splatinsert408 = insertelement <4 x float> poison, float %i.mu, i64 0
  %broadcast.splat409 = shufflevector <4 x float> %broadcast.splatinsert408, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body404

vector.body404:                                   ; preds = %vector.body404, %vector.ph402
  %index405 = phi i64 [ 0, %vector.ph402 ], [ %index.next410, %vector.body404 ] ; 2 uses
  %i.mv = or disjoint i64 %index405, 1            ; 3 uses
  %i.mw = getelementptr [4 x i8], ptr %i.gv, i64 %i.mv ; 2 uses
  %i.mx = getelementptr i8, ptr %i.mw, i64 -4
  %i.my = getelementptr i8, ptr %i.mw, i64 12
  %wide.load406 = load <4 x float>, ptr %i.mx, align 4, !tbaa !15, !alias.scope !119
  %wide.load407 = load <4 x float>, ptr %i.my, align 4, !tbaa !15, !alias.scope !119
  %i.mz = fadd <4 x float> %wide.load406, %broadcast.splat409
  %i.na = fadd <4 x float> %wide.load407, %broadcast.splat409
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.mv ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  store <4 x float> %i.mz, ptr %i.nb, align 4, !tbaa !15, !alias.scope !120, !noalias !121
  store <4 x float> %i.na, ptr %i.nc, align 4, !tbaa !15, !alias.scope !120, !noalias !121
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.mv ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  store <4 x i32> zeroinitializer, ptr %i.nd, align 4, !tbaa !7
  store <4 x i32> zeroinitializer, ptr %i.ne, align 4, !tbaa !7
  %index.next410 = add nuw i64 %index405, 8       ; 2 uses
  %i.nf = icmp eq i64 %index.next410, %n.vec403
  br i1 %i.nf, label %middle.block411, label %vector.body404, !llvm.loop !65

middle.block411:                                  ; preds = %vector.body404
  %cmp.n412 = icmp eq i64 %i.mq, %n.vec403
  br i1 %cmp.n412, label %.lr.ph50.i, label %scalar.ph400.preheader

scalar.ph400.preheader:                           ; preds = %vector.memcheck388, %.lr.ph31.i, %middle.block411
  %indvars.iv160.i.ph = phi i64 [ 1, %vector.memcheck388 ], [ 1, %.lr.ph31.i ], [ %i.mt, %middle.block411 ] ; 6 uses
  %i.ng = and i64 %wide.trip.count145.i, 1
  %lcmp.mod569.not.not = icmp eq i64 %i.ng, 0
  br i1 %lcmp.mod569.not.not, label %scalar.ph400.prol, label %scalar.ph400.prol.loopexit

scalar.ph400.prol:                                ; preds = %scalar.ph400.preheader
  %i.nh = getelementptr [4 x i8], ptr %i.gv, i64 %indvars.iv160.i.ph
  %i.ni = getelementptr i8, ptr %i.nh, i64 -4
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !15
  %i.nk = load float, ptr %i.mp, align 4, !tbaa !15
  %i.nl = fadd float %i.nj, %i.nk
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv160.i.ph
  store float %i.nl, ptr %i.nm, align 4, !tbaa !15
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv160.i.ph
  store i32 0, ptr %i.nn, align 4, !tbaa !7
  %indvars.iv.next161.i.prol = add nuw nsw i64 %indvars.iv160.i.ph, 1
  br label %scalar.ph400.prol.loopexit

scalar.ph400.prol.loopexit:                       ; preds = %scalar.ph400.prol, %scalar.ph400.preheader
  %indvars.iv160.i.unr = phi i64 [ %indvars.iv160.i.ph, %scalar.ph400.preheader ], [ %indvars.iv.next161.i.prol, %scalar.ph400.prol ]
  %i.no = add nsw i64 %wide.trip.count145.i, -1
  %i.np = icmp eq i64 %indvars.iv160.i.ph, %i.no
  br i1 %i.np, label %.lr.ph50.i, label %scalar.ph400

.lr.ph29.i:                                       ; preds = %.lr.ph29.i.prol.loopexit, %.lr.ph29.i
  %indvars.iv154.i = phi i64 [ %indvars.iv.next155.i.3, %.lr.ph29.i ], [ %indvars.iv154.i.unr, %.lr.ph29.i.prol.loopexit ] ; 6 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv154.i
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !15
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv154.i
  store float %i.nr, ptr %i.ns, align 4, !tbaa !15
  %indvars.iv.next155.i = add nuw nsw i64 %indvars.iv154.i, 1 ; 2 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv.next155.i
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !15
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv.next155.i
  store float %i.nu, ptr %i.nv, align 4, !tbaa !15
  %indvars.iv.next155.i.1 = add nuw nsw i64 %indvars.iv154.i, 2 ; 2 uses
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv.next155.i.1
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !15
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv.next155.i.1
  store float %i.nx, ptr %i.ny, align 4, !tbaa !15
  %indvars.iv.next155.i.2 = add nuw nsw i64 %indvars.iv154.i, 3 ; 2 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv.next155.i.2
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !15
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv.next155.i.2
  store float %i.oa, ptr %i.ob, align 4, !tbaa !15
  %indvars.iv.next155.i.3 = add nuw nsw i64 %indvars.iv154.i, 4 ; 2 uses
  %exitcond159.not.i.3 = icmp eq i64 %indvars.iv.next155.i.3, %wide.trip.count145.i
  br i1 %exitcond159.not.i.3, label %.lr.ph31.i, label %.lr.ph29.i, !llvm.loop !66

scalar.ph400:                                     ; preds = %scalar.ph400.prol.loopexit, %scalar.ph400
  %indvars.iv160.i = phi i64 [ %indvars.iv.next161.i.1, %scalar.ph400 ], [ %indvars.iv160.i.unr, %scalar.ph400.prol.loopexit ] ; 5 uses
  %i.oc = getelementptr [4 x i8], ptr %i.gv, i64 %indvars.iv160.i
  %i.od = getelementptr i8, ptr %i.oc, i64 -4
  %i.oe = load float, ptr %i.od, align 4, !tbaa !15
  %i.of = load float, ptr %i.mp, align 4, !tbaa !15
  %i.og = fadd float %i.oe, %i.of
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv160.i
  store float %i.og, ptr %i.oh, align 4, !tbaa !15
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv160.i
  store i32 0, ptr %i.oi, align 4, !tbaa !7
  %indvars.iv.next161.i = add nuw nsw i64 %indvars.iv160.i, 1 ; 3 uses
  %i.oj = getelementptr [4 x i8], ptr %i.gv, i64 %indvars.iv.next161.i
  %i.ok = getelementptr i8, ptr %i.oj, i64 -4
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !15
  %i.om = load float, ptr %i.mp, align 4, !tbaa !15
  %i.on = fadd float %i.ol, %i.om
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.next161.i
  store float %i.on, ptr %i.oo, align 4, !tbaa !15
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv.next161.i
  store i32 0, ptr %i.op, align 4, !tbaa !7
  %indvars.iv.next161.i.1 = add nuw nsw i64 %indvars.iv160.i, 2 ; 2 uses
  %exitcond165.not.i.1 = icmp eq i64 %indvars.iv.next161.i.1, %wide.trip.count145.i
  br i1 %exitcond165.not.i.1, label %.lr.ph50.i, label %scalar.ph400, !llvm.loop !67

.lr.ph50.i:                                       ; preds = %scalar.ph400.prol.loopexit, %scalar.ph400, %middle.block411
  %i.oq = zext nneg i32 %i.df to i64              ; 28 uses
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.oq
  %i.os = load float, ptr %i.or, align 4, !tbaa !15
  store float %i.os, ptr %i.hi, align 4, !tbaa !15
  %i.ot = uitofp nneg i32 %i.i to double
  %i.ou = fmul nnan double %i.ot, 5.000000e-01
  %i.ov = fptosi double %i.ou to i32              ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %.057434.i = getelementptr inbounds nuw i8, ptr %i.hk, i64 4 ; 2 uses
  %.056835.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 4 ; 2 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.oq
  %i.oy = and i64 %i.k, 2147483647                ; 9 uses
  %i.oz = zext i32 %i.ov to i64                   ; 3 uses
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.oz
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.oz
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge45.i, %.lr.ph50.i
  %indvars.iv178.i = phi i64 [ 1, %.lr.ph50.i ], [ %indvars.iv.next179.i, %._crit_edge45.i ] ; 9 uses
  %.057648.i = phi ptr [ %i.gx, %.lr.ph50.i ], [ %.057847.i, %._crit_edge45.i ] ; 19 uses
  %.057847.i = phi ptr [ %i.gv, %.lr.ph50.i ], [ %.057648.i, %._crit_edge45.i ] ; 7 uses
  %i.pc = add nsw i64 %indvars.iv178.i, -1        ; 5 uses
  %i.pd = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.pc
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !15
  store float %i.pe, ptr %.057847.i, align 4, !tbaa !15
  %i.pf = trunc nuw nsw i64 %indvars.iv178.i to i32
  tail call fastcc void @match_calc(ptr noundef %.057648.i, ptr noundef readonly %i.z, ptr noundef readonly %i.aa, i32 noundef %i.pf, i32 noundef %i.l, ptr noundef %i.ho, ptr noundef %i.hp, i32 noundef 0)
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv178.i
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !15
  store float %i.ph, ptr %.057648.i, align 4, !tbaa !15
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv178.i ; 3 uses
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !15 ; 2 uses
  store float %i.pj, ptr %i.hj, align 4, !tbaa !15
  %i.pk = icmp eq i64 %indvars.iv178.i, %i.oz
  br i1 %i.pk, label %.lr.ph44.split.us.preheader.i, label %.lr.ph44.split.preheader.i

.lr.ph44.split.preheader.i:                       ; preds = %bb.o
  %i.pl = load float, ptr %.057847.i, align 4, !tbaa !15
  %i.pm = load float, ptr %i.ow, align 4, !tbaa !15
  %i.pn = fadd float %i.pl, %i.pm
  %i.po = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.pc
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv178.i
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !19
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %indvars.iv178.i
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !19 ; 2 uses
  %i.pt = trunc nuw nsw i64 %i.pc to i32
  br label %.lr.ph44.split.i

.lr.ph44.split.us.preheader.i:                    ; preds = %bb.o
  store float %i.pj, ptr %i.ha, align 4, !tbaa !15
  %i.pu = load float, ptr %.057847.i, align 4, !tbaa !15
  %i.pv = load float, ptr %i.ow, align 4, !tbaa !15
  %i.pw = fadd float %i.pu, %i.pv
  %i.px = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.pc
  %i.py = load ptr, ptr %i.pa, align 8, !tbaa !19
  %i.pz = load ptr, ptr %i.pb, align 8, !tbaa !19 ; 2 uses
  %i.qa = trunc nuw nsw i64 %i.pc to i32          ; 2 uses
  br label %.lr.ph44.split.us.i

.lr.ph44.split.us.i:                              ; preds = %bb.q, %.lr.ph44.split.us.preheader.i
  %indvars.iv172.i = phi i64 [ 1, %.lr.ph44.split.us.preheader.i ], [ %indvars.iv.next173.i, %bb.q ] ; 10 uses
  %.056842.us.i = phi ptr [ %.056835.i, %.lr.ph44.split.us.preheader.i ], [ %.0568.us.i, %bb.q ] ; 5 uses
  %.057441.us.i = phi ptr [ %.057434.i, %.lr.ph44.split.us.preheader.i ], [ %.0574.us.i, %bb.q ] ; 3 uses
  %.057648.pn273.i = phi ptr [ %.057648.i, %.lr.ph44.split.us.preheader.i ], [ %.056440.us.i, %bb.q ]
  %.056039.us.i = phi float [ %i.pw, %.lr.ph44.split.us.preheader.i ], [ %.1561.us.i, %bb.q ] ; 3 uses
  %.056638.us.i = phi ptr [ %.057847.i, %.lr.ph44.split.us.preheader.i ], [ %i.rg, %bb.q ] ; 2 uses
  %.057037.us.i = phi i32 [ 0, %.lr.ph44.split.us.preheader.i ], [ %.1571.us.i, %bb.q ]
  %.056440.us.i = getelementptr inbounds nuw i8, ptr %.057648.pn273.i, i64 4 ; 4 uses
  %i.qb = load float, ptr %.056638.us.i, align 4, !tbaa !15 ; 4 uses
  %i.qc = add nsw i64 %indvars.iv172.i, -1        ; 2 uses
  %i.qd = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.qc
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !15
  %i.qf = fadd float %.056039.us.i, %i.qe         ; 2 uses
  %i.qg = fcmp ogt float %i.qf, %i.qb
  %.0580.us.i = select i1 %i.qg, float %i.qf, float %i.qb ; 2 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv172.i
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !15
  %i.qj = fadd float %i.qb, %i.qi                 ; 2 uses
  %i.qk = fcmp ult float %i.qj, %.056039.us.i     ; 2 uses
  %i.ql = trunc nuw nsw i64 %i.qc to i32
  %.1571.us.i = select i1 %i.qk, i32 %.057037.us.i, i32 %i.ql ; 2 uses
  %.1561.us.i = select i1 %i.qk, float %.056039.us.i, float %i.qj ; 2 uses
  %i.qm = load float, ptr %.056842.us.i, align 4, !tbaa !15 ; 2 uses
  %i.qn = load float, ptr %i.px, align 4, !tbaa !15
  %i.qo = fadd float %i.qm, %i.qn                 ; 2 uses
  %i.qp = fcmp ogt float %i.qo, %.0580.us.i
  %.1581.us.i = select i1 %i.qp, float %i.qo, float %.0580.us.i
  %i.qq = load float, ptr %i.pi, align 4, !tbaa !15
  %i.qr = fadd float %i.qb, %i.qq                 ; 2 uses
  %i.qs = fcmp ult float %i.qr, %i.qm
  br i1 %i.qs, label %.lr.ph44.split.us._crit_edge.i, label %bb.p

.lr.ph44.split.us._crit_edge.i:                   ; preds = %.lr.ph44.split.us.i
  %.pre.i = load i32, ptr %.057441.us.i, align 4, !tbaa !7
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph44.split.us.i
  store float %i.qr, ptr %.056842.us.i, align 4, !tbaa !15
  store i32 %i.qa, ptr %.057441.us.i, align 4, !tbaa !7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph44.split.us._crit_edge.i
  %i.qt = phi i32 [ %.pre.i, %.lr.ph44.split.us._crit_edge.i ], [ %i.qa, %bb.p ]
  %i.qu = load float, ptr %.056440.us.i, align 4, !tbaa !15
  %i.qv = fadd float %.1581.us.i, %i.qu           ; 2 uses
  store float %i.qv, ptr %.056440.us.i, align 4, !tbaa !15
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %indvars.iv172.i
  store float %i.qv, ptr %i.qw, align 4, !tbaa !15
  %i.qx = load float, ptr %.056842.us.i, align 4, !tbaa !15
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %indvars.iv172.i
  store float %i.qx, ptr %i.qy, align 4, !tbaa !15
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv172.i
  store i32 %i.qt, ptr %i.qz, align 4, !tbaa !7
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv172.i
  store i32 %.1571.us.i, ptr %i.ra, align 4, !tbaa !7
  %i.rb = load float, ptr %.056440.us.i, align 4, !tbaa !15
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv172.i
  store float %i.rb, ptr %i.rc, align 4, !tbaa !15
  %i.rd = load float, ptr %.056842.us.i, align 4, !tbaa !15
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv172.i
  store float %i.rd, ptr %i.re, align 4, !tbaa !15
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv172.i
  store float %.1561.us.i, ptr %i.rf, align 4, !tbaa !15
  %i.rg = getelementptr inbounds nuw i8, ptr %.056638.us.i, i64 4
  %indvars.iv.next173.i = add nuw nsw i64 %indvars.iv172.i, 1 ; 2 uses
  %.0574.us.i = getelementptr inbounds nuw i8, ptr %.057441.us.i, i64 4
  %.0568.us.i = getelementptr inbounds nuw i8, ptr %.056842.us.i, i64 4
  %exitcond177.not.i = icmp eq i64 %indvars.iv.next173.i, %wide.trip.count145.i
  br i1 %exitcond177.not.i, label %._crit_edge45.i, label %.lr.ph44.split.us.i, !llvm.loop !68

.lr.ph44.split.i:                                 ; preds = %bb.s, %.lr.ph44.split.preheader.i
  %indvars.iv166.i = phi i64 [ 1, %.lr.ph44.split.preheader.i ], [ %indvars.iv.next167.i, %bb.s ] ; 5 uses
  %.056842.i = phi ptr [ %.056835.i, %.lr.ph44.split.preheader.i ], [ %.0568.i, %bb.s ] ; 4 uses
  %.057441.i = phi ptr [ %.057434.i, %.lr.ph44.split.preheader.i ], [ %.0574.i, %bb.s ] ; 2 uses
  %.057648.pn.i = phi ptr [ %.057648.i, %.lr.ph44.split.preheader.i ], [ %.056440.i, %bb.s ]
  %.056039.i = phi float [ %i.pn, %.lr.ph44.split.preheader.i ], [ %.1561.i, %bb.s ] ; 3 uses
  %.056638.i = phi ptr [ %.057847.i, %.lr.ph44.split.preheader.i ], [ %i.sc, %bb.s ] ; 2 uses
  %.056440.i = getelementptr inbounds nuw i8, ptr %.057648.pn.i, i64 4 ; 3 uses
  %i.rh = load float, ptr %.056638.i, align 4, !tbaa !15 ; 4 uses
  %i.ri = getelementptr [4 x i8], ptr %i.y, i64 %indvars.iv166.i
  %i.rj = getelementptr i8, ptr %i.ri, i64 -4
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !15
  %i.rl = fadd float %.056039.i, %i.rk            ; 2 uses
  %i.rm = fcmp ogt float %i.rl, %i.rh
  %.0580.i = select i1 %i.rm, float %i.rl, float %i.rh ; 2 uses
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv166.i
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !15
  %i.rp = fadd float %i.rh, %i.ro                 ; 2 uses
  %.inv.i = fcmp oge float %i.rp, %.056039.i
  %.1561.i = select i1 %.inv.i, float %i.rp, float %.056039.i
  %i.rq = load float, ptr %.056842.i, align 4, !tbaa !15 ; 2 uses
  %i.rr = load float, ptr %i.po, align 4, !tbaa !15
  %i.rs = fadd float %i.rq, %i.rr                 ; 2 uses
  %i.rt = fcmp ogt float %i.rs, %.0580.i
  %.1581.i = select i1 %i.rt, float %i.rs, float %.0580.i
  %i.ru = load float, ptr %i.pi, align 4, !tbaa !15
  %i.rv = fadd float %i.rh, %i.ru                 ; 2 uses
  %i.rw = fcmp ult float %i.rv, %i.rq
  br i1 %i.rw, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph44.split.i
  store float %i.rv, ptr %.056842.i, align 4, !tbaa !15
  store i32 %i.pt, ptr %.057441.i, align 4, !tbaa !7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph44.split.i
  %i.rx = load float, ptr %.056440.i, align 4, !tbaa !15
  %i.ry = fadd float %.1581.i, %i.rx              ; 2 uses
  store float %i.ry, ptr %.056440.i, align 4, !tbaa !15
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %indvars.iv166.i
  store float %i.ry, ptr %i.rz, align 4, !tbaa !15
  %i.sa = load float, ptr %.056842.i, align 4, !tbaa !15
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %indvars.iv166.i
  store float %i.sa, ptr %i.sb, align 4, !tbaa !15
  %i.sc = getelementptr inbounds nuw i8, ptr %.056638.i, i64 4
  %indvars.iv.next167.i = add nuw nsw i64 %indvars.iv166.i, 1 ; 2 uses
  %.0574.i = getelementptr inbounds nuw i8, ptr %.057441.i, i64 4
  %.0568.i = getelementptr inbounds nuw i8, ptr %.056842.i, i64 4
  %exitcond171.not.i = icmp eq i64 %indvars.iv.next167.i, %wide.trip.count145.i
  br i1 %exitcond171.not.i, label %._crit_edge45.i, label %.lr.ph44.split.i, !llvm.loop !68

._crit_edge45.i:                                  ; preds = %bb.s, %bb.q
  %i.sd = phi ptr [ %i.pz, %bb.q ], [ %i.ps, %bb.s ]
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %i.oq
  %i.sf = load float, ptr %i.se, align 4, !tbaa !15
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv178.i
  store float %i.sf, ptr %i.sg, align 4, !tbaa !15
  %i.sh = load float, ptr %i.ox, align 4, !tbaa !15
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %i.oy
  store float %i.sh, ptr %i.si, align 4, !tbaa !15
  %indvars.iv.next179.i = add nuw nsw i64 %indvars.iv178.i, 1 ; 2 uses
  %exitcond183.not.i = icmp eq i64 %indvars.iv.next179.i, %wide.trip.count139.i
  br i1 %exitcond183.not.i, label %.lr.ph56.i, label %bb.o, !llvm.loop !69

.lr.ph56.i:                                       ; preds = %._crit_edge45.i
  tail call fastcc void @match_calc(ptr noundef nonnull %i.hh, ptr noundef readonly %i.aa, ptr noundef readonly %i.z, i32 noundef range(i32 -2147483648, 2147483647) %i.df, i32 noundef %i.i, ptr noundef %i.ho, ptr noundef %i.hp, i32 noundef 1)
  tail call fastcc void @match_calc(ptr noundef nonnull %.057648.i, ptr noundef readonly %i.z, ptr noundef readonly %i.aa, i32 noundef range(i32 -2147483648, 2147483647) %i.de, i32 noundef %i.l, ptr noundef %i.ho, ptr noundef %i.hp, i32 noundef 1)
  %i.sj = zext i32 %i.de to i64                   ; 11 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.sj ; 8 uses
  %min.iters.check426 = icmp ult i32 %i.de, 12
  br i1 %min.iters.check426, label %scalar.ph425.preheader, label %vector.memcheck414

vector.memcheck414:                               ; preds = %.lr.ph56.i
  %i.sl = shl nuw nsw i64 %i.sj, 2                ; 2 uses
  %scevgep415 = getelementptr i8, ptr %i.hh, i64 %i.sl ; 2 uses
  %i.sm = add nuw nsw i64 %i.sl, 4                ; 2 uses
  %scevgep416 = getelementptr i8, ptr %i.x, i64 %i.sm
  %scevgep417 = getelementptr i8, ptr %i.u, i64 %i.sm
  %bound0418 = icmp ult ptr %i.hh, %scevgep416
  %bound1419 = icmp ult ptr %i.sk, %scevgep415
  %found.conflict420 = and i1 %bound0418, %bound1419
  %bound0421 = icmp ult ptr %i.hh, %scevgep417
  %bound1422 = icmp ult ptr %i.mp, %scevgep415
end_hunk_0
begin_hunk_1_@Lalign2m2m_hmout:bb.a
  %i.ma = add nsw i64 %wide.trip.count145.i, -1   ; 2 uses
  %min.iters.check381 = icmp slt i32 %i.iu, 9
  %i.mb = sub i64 %i.gw, %i.le
  %diff.check379 = icmp ugt i64 %i.mb, -32
  %or.cond546 = select i1 %min.iters.check381, i1 true, i1 %diff.check379
  br i1 %or.cond546, label %.lr.ph29.i.preheader554, label %vector.ph382

vector.ph382:                                     ; preds = %.lr.ph29.i.preheader
  %n.vec383 = and i64 %i.ma, -8                   ; 3 uses
  %i.mc = or disjoint i64 %n.vec383, 1
  br label %vector.body384

vector.body384:                                   ; preds = %vector.body384, %vector.ph382
  %index385 = phi i64 [ 0, %vector.ph382 ], [ %index.next388, %vector.body384 ] ; 2 uses
  %i.md = or disjoint i64 %index385, 1            ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.md ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %wide.load386 = load <4 x float>, ptr %i.me, align 4, !tbaa !15
  %wide.load387 = load <4 x float>, ptr %i.mf, align 4, !tbaa !15
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.md ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  store <4 x float> %wide.load386, ptr %i.mg, align 4, !tbaa !15
  store <4 x float> %wide.load387, ptr %i.mh, align 4, !tbaa !15
  %index.next388 = add nuw i64 %index385, 8       ; 2 uses
  %i.mi = icmp eq i64 %index.next388, %n.vec383
  br i1 %i.mi, label %middle.block389, label %vector.body384, !llvm.loop !173

middle.block389:                                  ; preds = %vector.body384
  %cmp.n390 = icmp eq i64 %i.ma, %n.vec383
  br i1 %cmp.n390, label %.lr.ph31.i, label %.lr.ph29.i.preheader554

.lr.ph29.i.preheader554:                          ; preds = %.lr.ph29.i.preheader, %middle.block389
  %indvars.iv154.i.ph = phi i64 [ 1, %.lr.ph29.i.preheader ], [ %i.mc, %middle.block389 ] ; 4 uses
  %i.mj = sub nsw i64 %wide.trip.count145.i, %indvars.iv154.i.ph
  %xtraiter569 = and i64 %i.mj, 3                 ; 2 uses
  %lcmp.mod570.not = icmp eq i64 %xtraiter569, 0
  br i1 %lcmp.mod570.not, label %.lr.ph29.i.prol.loopexit, label %.lr.ph29.i.prol

.lr.ph29.i.prol:                                  ; preds = %.lr.ph29.i.preheader554, %.lr.ph29.i.prol
  %indvars.iv154.i.prol = phi i64 [ %indvars.iv.next155.i.prol, %.lr.ph29.i.prol ], [ %indvars.iv154.i.ph, %.lr.ph29.i.preheader554 ] ; 3 uses
  %prol.iter571 = phi i64 [ %prol.iter571.next, %.lr.ph29.i.prol ], [ 0, %.lr.ph29.i.preheader554 ]
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv154.i.prol
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !15
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv154.i.prol
  store float %i.ml, ptr %i.mm, align 4, !tbaa !15
  %indvars.iv.next155.i.prol = add nuw nsw i64 %indvars.iv154.i.prol, 1 ; 2 uses
  %prol.iter571.next = add i64 %prol.iter571, 1   ; 2 uses
  %prol.iter571.cmp.not = icmp eq i64 %prol.iter571.next, %xtraiter569
  br i1 %prol.iter571.cmp.not, label %.lr.ph29.i.prol.loopexit, label %.lr.ph29.i.prol, !llvm.loop !174

.lr.ph29.i.prol.loopexit:                         ; preds = %.lr.ph29.i.prol, %.lr.ph29.i.preheader554
  %indvars.iv154.i.unr = phi i64 [ %indvars.iv154.i.ph, %.lr.ph29.i.preheader554 ], [ %indvars.iv.next155.i.prol, %.lr.ph29.i.prol ]
  %i.mn = sub nsw i64 %indvars.iv154.i.ph, %wide.trip.count145.i
  %i.mo = icmp ugt i64 %i.mn, -4
  br i1 %i.mo, label %.lr.ph31.i, label %.lr.ph29.i

.lr.ph31.i:                                       ; preds = %.lr.ph29.i.prol.loopexit, %.lr.ph29.i, %middle.block389
  %i.mp = getelementptr i8, ptr %i.u, i64 4       ; 6 uses
  %i.mq = add nsw i64 %wide.trip.count145.i, -1   ; 2 uses
  %min.iters.check405 = icmp slt i32 %i.iu, 13
  br i1 %min.iters.check405, label %scalar.ph404.preheader, label %vector.memcheck392

vector.memcheck392:                               ; preds = %.lr.ph31.i
  %scevgep393 = getelementptr i8, ptr %i.hj, i64 4 ; 2 uses
  %i.mr = shl nuw nsw i64 %wide.trip.count145.i, 2 ; 2 uses
  %scevgep394 = getelementptr i8, ptr %i.hj, i64 %i.mr ; 2 uses
  %i.ms = getelementptr i8, ptr %i.gv, i64 %i.mr
  %scevgep395 = getelementptr i8, ptr %i.ms, i64 -4
  %scevgep396 = getelementptr i8, ptr %i.u, i64 8
  %bound0397 = icmp ult ptr %scevgep393, %scevgep395
  %bound1398 = icmp ult ptr %i.gv, %scevgep394
  %found.conflict399 = and i1 %bound0397, %bound1398
  %bound0400 = icmp ult ptr %scevgep393, %scevgep396
  %bound1401 = icmp ult ptr %i.mp, %scevgep394
  %found.conflict402 = and i1 %bound0400, %bound1401
  %conflict.rdx403 = or i1 %found.conflict399, %found.conflict402
  br i1 %conflict.rdx403, label %scalar.ph404.preheader, label %vector.ph406

vector.ph406:                                     ; preds = %vector.memcheck392
  %n.vec407 = and i64 %i.mq, -8                   ; 3 uses
  %i.mt = or disjoint i64 %n.vec407, 1
  %i.mu = load float, ptr %i.mp, align 4, !tbaa !15, !alias.scope !232
  %broadcast.splatinsert412 = insertelement <4 x float> poison, float %i.mu, i64 0
  %broadcast.splat413 = shufflevector <4 x float> %broadcast.splatinsert412, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body408

vector.body408:                                   ; preds = %vector.body408, %vector.ph406
  %index409 = phi i64 [ 0, %vector.ph406 ], [ %index.next414, %vector.body408 ] ; 2 uses
  %i.mv = or disjoint i64 %index409, 1            ; 3 uses
  %i.mw = getelementptr [4 x i8], ptr %i.gv, i64 %i.mv ; 2 uses
  %i.mx = getelementptr i8, ptr %i.mw, i64 -4
  %i.my = getelementptr i8, ptr %i.mw, i64 12
  %wide.load410 = load <4 x float>, ptr %i.mx, align 4, !tbaa !15, !alias.scope !233
  %wide.load411 = load <4 x float>, ptr %i.my, align 4, !tbaa !15, !alias.scope !233
  %i.mz = fadd <4 x float> %wide.load410, %broadcast.splat413
  %i.na = fadd <4 x float> %wide.load411, %broadcast.splat413
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.mv ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  store <4 x float> %i.mz, ptr %i.nb, align 4, !tbaa !15, !alias.scope !234, !noalias !235
  store <4 x float> %i.na, ptr %i.nc, align 4, !tbaa !15, !alias.scope !234, !noalias !235
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.mv ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  store <4 x i32> zeroinitializer, ptr %i.nd, align 4, !tbaa !7
  store <4 x i32> zeroinitializer, ptr %i.ne, align 4, !tbaa !7
  %index.next414 = add nuw i64 %index409, 8       ; 2 uses
  %i.nf = icmp eq i64 %index.next414, %n.vec407
  br i1 %i.nf, label %middle.block415, label %vector.body408, !llvm.loop !179

middle.block415:                                  ; preds = %vector.body408
  %cmp.n416 = icmp eq i64 %i.mq, %n.vec407
  br i1 %cmp.n416, label %.lr.ph50.i, label %scalar.ph404.preheader

scalar.ph404.preheader:                           ; preds = %vector.memcheck392, %.lr.ph31.i, %middle.block415
  %indvars.iv160.i.ph = phi i64 [ 1, %vector.memcheck392 ], [ 1, %.lr.ph31.i ], [ %i.mt, %middle.block415 ] ; 6 uses
  %i.ng = and i64 %wide.trip.count145.i, 1
  %lcmp.mod573.not.not = icmp eq i64 %i.ng, 0
  br i1 %lcmp.mod573.not.not, label %scalar.ph404.prol, label %scalar.ph404.prol.loopexit

scalar.ph404.prol:                                ; preds = %scalar.ph404.preheader
  %i.nh = getelementptr [4 x i8], ptr %i.gv, i64 %indvars.iv160.i.ph
  %i.ni = getelementptr i8, ptr %i.nh, i64 -4
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !15
  %i.nk = load float, ptr %i.mp, align 4, !tbaa !15
  %i.nl = fadd float %i.nj, %i.nk
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv160.i.ph
  store float %i.nl, ptr %i.nm, align 4, !tbaa !15
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv160.i.ph
  store i32 0, ptr %i.nn, align 4, !tbaa !7
  %indvars.iv.next161.i.prol = add nuw nsw i64 %indvars.iv160.i.ph, 1
  br label %scalar.ph404.prol.loopexit

scalar.ph404.prol.loopexit:                       ; preds = %scalar.ph404.prol, %scalar.ph404.preheader
  %indvars.iv160.i.unr = phi i64 [ %indvars.iv160.i.ph, %scalar.ph404.preheader ], [ %indvars.iv.next161.i.prol, %scalar.ph404.prol ]
  %i.no = add nsw i64 %wide.trip.count145.i, -1
  %i.np = icmp eq i64 %indvars.iv160.i.ph, %i.no
  br i1 %i.np, label %.lr.ph50.i, label %scalar.ph404

.lr.ph29.i:                                       ; preds = %.lr.ph29.i.prol.loopexit, %.lr.ph29.i
  %indvars.iv154.i = phi i64 [ %indvars.iv.next155.i.3, %.lr.ph29.i ], [ %indvars.iv154.i.unr, %.lr.ph29.i.prol.loopexit ] ; 6 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv154.i
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !15
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv154.i
  store float %i.nr, ptr %i.ns, align 4, !tbaa !15
  %indvars.iv.next155.i = add nuw nsw i64 %indvars.iv154.i, 1 ; 2 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv.next155.i
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !15
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv.next155.i
  store float %i.nu, ptr %i.nv, align 4, !tbaa !15
  %indvars.iv.next155.i.1 = add nuw nsw i64 %indvars.iv154.i, 2 ; 2 uses
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv.next155.i.1
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !15
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv.next155.i.1
  store float %i.nx, ptr %i.ny, align 4, !tbaa !15
  %indvars.iv.next155.i.2 = add nuw nsw i64 %indvars.iv154.i, 3 ; 2 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv.next155.i.2
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !15
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv.next155.i.2
  store float %i.oa, ptr %i.ob, align 4, !tbaa !15
  %indvars.iv.next155.i.3 = add nuw nsw i64 %indvars.iv154.i, 4 ; 2 uses
  %exitcond159.not.i.3 = icmp eq i64 %indvars.iv.next155.i.3, %wide.trip.count145.i
  br i1 %exitcond159.not.i.3, label %.lr.ph31.i, label %.lr.ph29.i, !llvm.loop !180

scalar.ph404:                                     ; preds = %scalar.ph404.prol.loopexit, %scalar.ph404
  %indvars.iv160.i = phi i64 [ %indvars.iv.next161.i.1, %scalar.ph404 ], [ %indvars.iv160.i.unr, %scalar.ph404.prol.loopexit ] ; 5 uses
  %i.oc = getelementptr [4 x i8], ptr %i.gv, i64 %indvars.iv160.i
  %i.od = getelementptr i8, ptr %i.oc, i64 -4
  %i.oe = load float, ptr %i.od, align 4, !tbaa !15
  %i.of = load float, ptr %i.mp, align 4, !tbaa !15
  %i.og = fadd float %i.oe, %i.of
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv160.i
  store float %i.og, ptr %i.oh, align 4, !tbaa !15
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv160.i
  store i32 0, ptr %i.oi, align 4, !tbaa !7
  %indvars.iv.next161.i = add nuw nsw i64 %indvars.iv160.i, 1 ; 3 uses
  %i.oj = getelementptr [4 x i8], ptr %i.gv, i64 %indvars.iv.next161.i
  %i.ok = getelementptr i8, ptr %i.oj, i64 -4
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !15
  %i.om = load float, ptr %i.mp, align 4, !tbaa !15
  %i.on = fadd float %i.ol, %i.om
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.next161.i
  store float %i.on, ptr %i.oo, align 4, !tbaa !15
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv.next161.i
  store i32 0, ptr %i.op, align 4, !tbaa !7
  %indvars.iv.next161.i.1 = add nuw nsw i64 %indvars.iv160.i, 2 ; 2 uses
  %exitcond165.not.i.1 = icmp eq i64 %indvars.iv.next161.i.1, %wide.trip.count145.i
  br i1 %exitcond165.not.i.1, label %.lr.ph50.i, label %scalar.ph404, !llvm.loop !181

.lr.ph50.i:                                       ; preds = %scalar.ph404.prol.loopexit, %scalar.ph404, %middle.block415
  %i.oq = zext nneg i32 %i.df to i64              ; 28 uses
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.oq
  %i.os = load float, ptr %i.or, align 4, !tbaa !15
  store float %i.os, ptr %i.hi, align 4, !tbaa !15
  %i.ot = uitofp nneg i32 %i.i to double
  %i.ou = fmul nnan double %i.ot, 5.000000e-01
  %i.ov = fptosi double %i.ou to i32              ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %.057434.i = getelementptr inbounds nuw i8, ptr %i.hk, i64 4 ; 2 uses
  %.056835.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 4 ; 2 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.oq
  %i.oy = and i64 %i.k, 2147483647                ; 9 uses
  %i.oz = zext i32 %i.ov to i64                   ; 3 uses
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.oz
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.oz
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge45.i, %.lr.ph50.i
  %indvars.iv178.i = phi i64 [ 1, %.lr.ph50.i ], [ %indvars.iv.next179.i, %._crit_edge45.i ] ; 9 uses
  %.057648.i = phi ptr [ %i.gx, %.lr.ph50.i ], [ %.057847.i, %._crit_edge45.i ] ; 19 uses
  %.057847.i = phi ptr [ %i.gv, %.lr.ph50.i ], [ %.057648.i, %._crit_edge45.i ] ; 7 uses
  %i.pc = add nsw i64 %indvars.iv178.i, -1        ; 5 uses
  %i.pd = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.pc
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !15
  store float %i.pe, ptr %.057847.i, align 4, !tbaa !15
  %i.pf = trunc nuw nsw i64 %indvars.iv178.i to i32
  tail call fastcc void @match_ribosum(ptr noundef %.057648.i, ptr noundef readonly %i.z, ptr noundef readonly %i.aa, i32 noundef %i.pf, i32 noundef %i.l, ptr noundef %i.ho, ptr noundef %i.hp, i32 noundef 0)
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv178.i
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !15
  store float %i.ph, ptr %.057648.i, align 4, !tbaa !15
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv178.i ; 3 uses
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !15 ; 2 uses
  store float %i.pj, ptr %i.hj, align 4, !tbaa !15
  %i.pk = icmp eq i64 %indvars.iv178.i, %i.oz
  br i1 %i.pk, label %.lr.ph44.split.us.preheader.i, label %.lr.ph44.split.preheader.i

.lr.ph44.split.preheader.i:                       ; preds = %bb.o
  %i.pl = load float, ptr %.057847.i, align 4, !tbaa !15
  %i.pm = load float, ptr %i.ow, align 4, !tbaa !15
  %i.pn = fadd float %i.pl, %i.pm
  %i.po = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.pc
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv178.i
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !19
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %indvars.iv178.i
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !19 ; 2 uses
  %i.pt = trunc nuw nsw i64 %i.pc to i32
  br label %.lr.ph44.split.i

.lr.ph44.split.us.preheader.i:                    ; preds = %bb.o
  store float %i.pj, ptr %i.ha, align 4, !tbaa !15
  %i.pu = load float, ptr %.057847.i, align 4, !tbaa !15
  %i.pv = load float, ptr %i.ow, align 4, !tbaa !15
  %i.pw = fadd float %i.pu, %i.pv
  %i.px = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.pc
  %i.py = load ptr, ptr %i.pa, align 8, !tbaa !19
  %i.pz = load ptr, ptr %i.pb, align 8, !tbaa !19 ; 2 uses
  %i.qa = trunc nuw nsw i64 %i.pc to i32          ; 2 uses
  br label %.lr.ph44.split.us.i

.lr.ph44.split.us.i:                              ; preds = %bb.q, %.lr.ph44.split.us.preheader.i
  %indvars.iv172.i = phi i64 [ 1, %.lr.ph44.split.us.preheader.i ], [ %indvars.iv.next173.i, %bb.q ] ; 10 uses
  %.056842.us.i = phi ptr [ %.056835.i, %.lr.ph44.split.us.preheader.i ], [ %.0568.us.i, %bb.q ] ; 5 uses
  %.057441.us.i = phi ptr [ %.057434.i, %.lr.ph44.split.us.preheader.i ], [ %.0574.us.i, %bb.q ] ; 3 uses
  %.057648.pn273.i = phi ptr [ %.057648.i, %.lr.ph44.split.us.preheader.i ], [ %.056440.us.i, %bb.q ]
  %.056039.us.i = phi float [ %i.pw, %.lr.ph44.split.us.preheader.i ], [ %.1561.us.i, %bb.q ] ; 3 uses
  %.056638.us.i = phi ptr [ %.057847.i, %.lr.ph44.split.us.preheader.i ], [ %i.rg, %bb.q ] ; 2 uses
  %.057037.us.i = phi i32 [ 0, %.lr.ph44.split.us.preheader.i ], [ %.1571.us.i, %bb.q ]
  %.056440.us.i = getelementptr inbounds nuw i8, ptr %.057648.pn273.i, i64 4 ; 4 uses
  %i.qb = load float, ptr %.056638.us.i, align 4, !tbaa !15 ; 4 uses
  %i.qc = add nsw i64 %indvars.iv172.i, -1        ; 2 uses
  %i.qd = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.qc
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !15
  %i.qf = fadd float %.056039.us.i, %i.qe         ; 2 uses
  %i.qg = fcmp ogt float %i.qf, %i.qb
  %.0580.us.i = select i1 %i.qg, float %i.qf, float %i.qb ; 2 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv172.i
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !15
  %i.qj = fadd float %i.qb, %i.qi                 ; 2 uses
  %i.qk = fcmp ult float %i.qj, %.056039.us.i     ; 2 uses
  %i.ql = trunc nuw nsw i64 %i.qc to i32
  %.1571.us.i = select i1 %i.qk, i32 %.057037.us.i, i32 %i.ql ; 2 uses
  %.1561.us.i = select i1 %i.qk, float %.056039.us.i, float %i.qj ; 2 uses
  %i.qm = load float, ptr %.056842.us.i, align 4, !tbaa !15 ; 2 uses
  %i.qn = load float, ptr %i.px, align 4, !tbaa !15
  %i.qo = fadd float %i.qm, %i.qn                 ; 2 uses
  %i.qp = fcmp ogt float %i.qo, %.0580.us.i
  %.1581.us.i = select i1 %i.qp, float %i.qo, float %.0580.us.i
  %i.qq = load float, ptr %i.pi, align 4, !tbaa !15
  %i.qr = fadd float %i.qb, %i.qq                 ; 2 uses
  %i.qs = fcmp ult float %i.qr, %i.qm
  br i1 %i.qs, label %.lr.ph44.split.us._crit_edge.i, label %bb.p

.lr.ph44.split.us._crit_edge.i:                   ; preds = %.lr.ph44.split.us.i
  %.pre.i = load i32, ptr %.057441.us.i, align 4, !tbaa !7
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph44.split.us.i
  store float %i.qr, ptr %.056842.us.i, align 4, !tbaa !15
  store i32 %i.qa, ptr %.057441.us.i, align 4, !tbaa !7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph44.split.us._crit_edge.i
  %i.qt = phi i32 [ %.pre.i, %.lr.ph44.split.us._crit_edge.i ], [ %i.qa, %bb.p ]
  %i.qu = load float, ptr %.056440.us.i, align 4, !tbaa !15
  %i.qv = fadd float %.1581.us.i, %i.qu           ; 2 uses
  store float %i.qv, ptr %.056440.us.i, align 4, !tbaa !15
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %indvars.iv172.i
  store float %i.qv, ptr %i.qw, align 4, !tbaa !15
  %i.qx = load float, ptr %.056842.us.i, align 4, !tbaa !15
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %indvars.iv172.i
  store float %i.qx, ptr %i.qy, align 4, !tbaa !15
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv172.i
  store i32 %i.qt, ptr %i.qz, align 4, !tbaa !7
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv172.i
  store i32 %.1571.us.i, ptr %i.ra, align 4, !tbaa !7
  %i.rb = load float, ptr %.056440.us.i, align 4, !tbaa !15
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv172.i
  store float %i.rb, ptr %i.rc, align 4, !tbaa !15
  %i.rd = load float, ptr %.056842.us.i, align 4, !tbaa !15
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv172.i
  store float %i.rd, ptr %i.re, align 4, !tbaa !15
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv172.i
  store float %.1561.us.i, ptr %i.rf, align 4, !tbaa !15
  %i.rg = getelementptr inbounds nuw i8, ptr %.056638.us.i, i64 4
  %indvars.iv.next173.i = add nuw nsw i64 %indvars.iv172.i, 1 ; 2 uses
  %.0574.us.i = getelementptr inbounds nuw i8, ptr %.057441.us.i, i64 4
  %.0568.us.i = getelementptr inbounds nuw i8, ptr %.056842.us.i, i64 4
  %exitcond177.not.i = icmp eq i64 %indvars.iv.next173.i, %wide.trip.count145.i
  br i1 %exitcond177.not.i, label %._crit_edge45.i, label %.lr.ph44.split.us.i, !llvm.loop !182

.lr.ph44.split.i:                                 ; preds = %bb.s, %.lr.ph44.split.preheader.i
  %indvars.iv166.i = phi i64 [ 1, %.lr.ph44.split.preheader.i ], [ %indvars.iv.next167.i, %bb.s ] ; 5 uses
  %.056842.i = phi ptr [ %.056835.i, %.lr.ph44.split.preheader.i ], [ %.0568.i, %bb.s ] ; 4 uses
  %.057441.i = phi ptr [ %.057434.i, %.lr.ph44.split.preheader.i ], [ %.0574.i, %bb.s ] ; 2 uses
  %.057648.pn.i = phi ptr [ %.057648.i, %.lr.ph44.split.preheader.i ], [ %.056440.i, %bb.s ]
  %.056039.i = phi float [ %i.pn, %.lr.ph44.split.preheader.i ], [ %.1561.i, %bb.s ] ; 3 uses
  %.056638.i = phi ptr [ %.057847.i, %.lr.ph44.split.preheader.i ], [ %i.sc, %bb.s ] ; 2 uses
  %.056440.i = getelementptr inbounds nuw i8, ptr %.057648.pn.i, i64 4 ; 3 uses
  %i.rh = load float, ptr %.056638.i, align 4, !tbaa !15 ; 4 uses
  %i.ri = getelementptr [4 x i8], ptr %i.y, i64 %indvars.iv166.i
  %i.rj = getelementptr i8, ptr %i.ri, i64 -4
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !15
  %i.rl = fadd float %.056039.i, %i.rk            ; 2 uses
  %i.rm = fcmp ogt float %i.rl, %i.rh
  %.0580.i = select i1 %i.rm, float %i.rl, float %i.rh ; 2 uses
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv166.i
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !15
  %i.rp = fadd float %i.rh, %i.ro                 ; 2 uses
  %.inv.i = fcmp oge float %i.rp, %.056039.i
  %.1561.i = select i1 %.inv.i, float %i.rp, float %.056039.i
  %i.rq = load float, ptr %.056842.i, align 4, !tbaa !15 ; 2 uses
  %i.rr = load float, ptr %i.po, align 4, !tbaa !15
  %i.rs = fadd float %i.rq, %i.rr                 ; 2 uses
  %i.rt = fcmp ogt float %i.rs, %.0580.i
  %.1581.i = select i1 %i.rt, float %i.rs, float %.0580.i
  %i.ru = load float, ptr %i.pi, align 4, !tbaa !15
  %i.rv = fadd float %i.rh, %i.ru                 ; 2 uses
  %i.rw = fcmp ult float %i.rv, %i.rq
  br i1 %i.rw, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph44.split.i
  store float %i.rv, ptr %.056842.i, align 4, !tbaa !15
  store i32 %i.pt, ptr %.057441.i, align 4, !tbaa !7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph44.split.i
  %i.rx = load float, ptr %.056440.i, align 4, !tbaa !15
  %i.ry = fadd float %.1581.i, %i.rx              ; 2 uses
  store float %i.ry, ptr %.056440.i, align 4, !tbaa !15
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %indvars.iv166.i
  store float %i.ry, ptr %i.rz, align 4, !tbaa !15
  %i.sa = load float, ptr %.056842.i, align 4, !tbaa !15
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %indvars.iv166.i
  store float %i.sa, ptr %i.sb, align 4, !tbaa !15
  %i.sc = getelementptr inbounds nuw i8, ptr %.056638.i, i64 4
  %indvars.iv.next167.i = add nuw nsw i64 %indvars.iv166.i, 1 ; 2 uses
  %.0574.i = getelementptr inbounds nuw i8, ptr %.057441.i, i64 4
  %.0568.i = getelementptr inbounds nuw i8, ptr %.056842.i, i64 4
  %exitcond171.not.i = icmp eq i64 %indvars.iv.next167.i, %wide.trip.count145.i
  br i1 %exitcond171.not.i, label %._crit_edge45.i, label %.lr.ph44.split.i, !llvm.loop !182

._crit_edge45.i:                                  ; preds = %bb.s, %bb.q
  %i.sd = phi ptr [ %i.pz, %bb.q ], [ %i.ps, %bb.s ]
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %i.oq
  %i.sf = load float, ptr %i.se, align 4, !tbaa !15
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv178.i
  store float %i.sf, ptr %i.sg, align 4, !tbaa !15
  %i.sh = load float, ptr %i.ox, align 4, !tbaa !15
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %i.oy
  store float %i.sh, ptr %i.si, align 4, !tbaa !15
  %indvars.iv.next179.i = add nuw nsw i64 %indvars.iv178.i, 1 ; 2 uses
  %exitcond183.not.i = icmp eq i64 %indvars.iv.next179.i, %wide.trip.count139.i
  br i1 %exitcond183.not.i, label %.lr.ph56.i, label %bb.o, !llvm.loop !183

.lr.ph56.i:                                       ; preds = %._crit_edge45.i
  tail call fastcc void @match_ribosum(ptr noundef nonnull %i.hh, ptr noundef readonly %i.aa, ptr noundef readonly %i.z, i32 noundef range(i32 -2147483648, 2147483647) %i.df, i32 noundef %i.i, ptr noundef %i.ho, ptr noundef %i.hp, i32 noundef 1)
  tail call fastcc void @match_ribosum(ptr noundef nonnull %.057648.i, ptr noundef readonly %i.z, ptr noundef readonly %i.aa, i32 noundef range(i32 -2147483648, 2147483647) %i.de, i32 noundef %i.l, ptr noundef %i.ho, ptr noundef %i.hp, i32 noundef 1)
  %i.sj = zext i32 %i.de to i64                   ; 11 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.sj ; 8 uses
  %min.iters.check430 = icmp ult i32 %i.de, 12
  br i1 %min.iters.check430, label %scalar.ph429.preheader, label %vector.memcheck418

vector.memcheck418:                               ; preds = %.lr.ph56.i
  %i.sl = shl nuw nsw i64 %i.sj, 2                ; 2 uses
  %scevgep419 = getelementptr i8, ptr %i.hh, i64 %i.sl ; 2 uses
  %i.sm = add nuw nsw i64 %i.sl, 4                ; 2 uses
  %scevgep420 = getelementptr i8, ptr %i.x, i64 %i.sm
  %scevgep421 = getelementptr i8, ptr %i.u, i64 %i.sm
  %bound0422 = icmp ult ptr %i.hh, %scevgep420
  %bound1423 = icmp ult ptr %i.sk, %scevgep419
  %found.conflict424 = and i1 %bound0422, %bound1423
  %bound0425 = icmp ult ptr %i.hh, %scevgep421
  %bound1426 = icmp ult ptr %i.mp, %scevgep419
end_hunk_1
