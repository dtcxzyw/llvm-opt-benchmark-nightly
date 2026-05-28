inline.NumInlined: 1495
inline.NumDeleted: 233
begin_hunk_0_@_ZN4llvh5APInt6divideEPKmjS2_jPmS3_:bb.a
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !3  ; 2 uses
  %i.kn = load i32, ptr %i.kk, align 4, !tbaa !3  ; 2 uses
  %i.ko = tail call i32 @llvm.umin.i32(i32 %i.km, i32 %i.kn) ; 2 uses
  %i.kp = zext i1 %.0152187.i to i32
  %i.kq = add i32 %i.km, %i.kp
  %i.kr = add i32 %i.kq, %i.kn                    ; 3 uses
  store i32 %i.kr, ptr %i.kk, align 4, !tbaa !3
  %i.ks = icmp ult i32 %i.kr, %i.ko
  br i1 %i.ks, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph190.i
  %i.kt = icmp eq i32 %i.kr, %i.ko
  %spec.select.i = and i1 %.0152187.i, %i.kt
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph190.i
  %i.ku = phi i1 [ true, %.lr.ph190.i ], [ %spec.select.i, %bb.ac ] ; 2 uses
  %indvars.iv.next217.i = add nuw nsw i64 %indvars.iv216.i, 1 ; 2 uses
  %exitcond219.not.i = icmp eq i64 %indvars.iv.next217.i, %wide.trip.count214.i
  br i1 %exitcond219.not.i, label %._crit_edge191.i, label %.lr.ph190.i, !llvm.loop !450

bb.ae:                                            ; preds = %._crit_edge191.i, %._crit_edge.i, %._crit_edge.thread.i
  %indvars.iv.next221.i = add nsw i64 %indvars.iv220.i, -1
  %i.kv = icmp sgt i64 %indvars.iv220.i, 0
  br i1 %i.kv, label %bb.v, label %bb.af, !llvm.loop !451

bb.af:                                            ; preds = %bb.ae
  %.not170.i = icmp eq ptr %.0149, null
  br i1 %.not170.i, label %_ZL8KnuthDivPjS_S_S_jj.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.kw = icmp sgt i32 %i.fu, -1                  ; 2 uses
  br i1 %.not.i, label %.preheader.i, label %.preheader173.i

.preheader173.i:                                  ; preds = %bb.ag
  br i1 %i.kw, label %.lr.ph195.i, label %_ZL8KnuthDivPjS_S_S_jj.exit

.lr.ph195.i:                                      ; preds = %.preheader173.i
  %i.kx = sub nuw nsw i32 32, %i.fy               ; 2 uses
  %i.ky = add nuw nsw i64 %i.fv, 1                ; 2 uses
  %i.kz = icmp eq i32 %i.fu, 0
  br i1 %i.kz, label %.epil.preheader, label %.lr.ph195.i.new

.lr.ph195.i.new:                                  ; preds = %.lr.ph195.i
  %unroll_iter = and i64 %i.ky, 4294967294
  br label %bb.ah

.preheader.i:                                     ; preds = %bb.ag
  br i1 %i.kw, label %.lr.ph197.i.preheader, label %_ZL8KnuthDivPjS_S_S_jj.exit

.lr.ph197.i.preheader:                            ; preds = %.preheader.i
  %i.la = add nuw nsw i64 %i.fv, 1                ; 2 uses
  %min.iters.check324 = icmp ult i32 %i.fu, 7
  %i.lb = sub i64 %.0145321, %.0149322
  %diff.check = icmp ult i64 %i.lb, 32
  %or.cond383 = select i1 %min.iters.check324, i1 true, i1 %diff.check
  br i1 %or.cond383, label %.lr.ph197.i.preheader388, label %vector.ph325

vector.ph325:                                     ; preds = %.lr.ph197.i.preheader
  %n.vec327 = and i64 %i.la, 4294967288           ; 3 uses
  %i.lc = sub nsw i64 %i.fv, %n.vec327
  br label %vector.body328

vector.body328:                                   ; preds = %vector.body328, %vector.ph325
  %index329 = phi i64 [ 0, %vector.ph325 ], [ %index.next335, %vector.body328 ] ; 2 uses
  %i.ld = sub i64 %i.fv, %index329                ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.0145, i64 %i.ld ; 2 uses
  %i.lf = getelementptr inbounds i8, ptr %i.le, i64 -12
  %i.lg = getelementptr inbounds i8, ptr %i.le, i64 -28
  %wide.load330 = load <4 x i32>, ptr %i.lf, align 4, !tbaa !3
  %wide.load331 = load <4 x i32>, ptr %i.lg, align 4, !tbaa !3
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %i.ld ; 2 uses
  %i.li = getelementptr inbounds i8, ptr %i.lh, i64 -12
  %i.lj = getelementptr inbounds i8, ptr %i.lh, i64 -28
  store <4 x i32> %wide.load330, ptr %i.li, align 4, !tbaa !3
  store <4 x i32> %wide.load331, ptr %i.lj, align 4, !tbaa !3
  %index.next335 = add nuw i64 %index329, 8       ; 2 uses
  %i.lk = icmp eq i64 %index.next335, %n.vec327
  br i1 %i.lk, label %middle.block336, label %vector.body328, !llvm.loop !452

middle.block336:                                  ; preds = %vector.body328
  %cmp.n337 = icmp eq i64 %i.la, %n.vec327
  br i1 %cmp.n337, label %_ZL8KnuthDivPjS_S_S_jj.exit, label %.lr.ph197.i.preheader388

.lr.ph197.i.preheader388:                         ; preds = %.lr.ph197.i.preheader, %middle.block336
  %indvars.iv226.i.ph = phi i64 [ %i.fv, %.lr.ph197.i.preheader ], [ %i.lc, %middle.block336 ] ; 4 uses
  %i.ll = add nsw i64 %indvars.iv226.i.ph, 1
  %xtraiter404 = and i64 %i.ll, 3                 ; 2 uses
  %lcmp.mod405.not = icmp eq i64 %xtraiter404, 0
  br i1 %lcmp.mod405.not, label %.lr.ph197.i.prol.loopexit, label %.lr.ph197.i.prol

.lr.ph197.i.prol:                                 ; preds = %.lr.ph197.i.preheader388, %.lr.ph197.i.prol
  %indvars.iv226.i.prol = phi i64 [ %indvars.iv.next227.i.prol, %.lr.ph197.i.prol ], [ %indvars.iv226.i.ph, %.lr.ph197.i.preheader388 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph197.i.prol ], [ 0, %.lr.ph197.i.preheader388 ]
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %.0145, i64 %indvars.iv226.i.prol
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !3
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %indvars.iv226.i.prol
  store i32 %i.ln, ptr %i.lo, align 4, !tbaa !3
  %indvars.iv.next227.i.prol = add nsw i64 %indvars.iv226.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter404
  br i1 %prol.iter.cmp.not, label %.lr.ph197.i.prol.loopexit, label %.lr.ph197.i.prol, !llvm.loop !453

.lr.ph197.i.prol.loopexit:                        ; preds = %.lr.ph197.i.prol, %.lr.ph197.i.preheader388
  %indvars.iv226.i.unr = phi i64 [ %indvars.iv226.i.ph, %.lr.ph197.i.preheader388 ], [ %indvars.iv.next227.i.prol, %.lr.ph197.i.prol ]
  %i.lp = icmp ult i64 %indvars.iv226.i.ph, 3
  br i1 %i.lp, label %_ZL8KnuthDivPjS_S_S_jj.exit, label %.lr.ph197.i

bb.ah:                                            ; preds = %bb.ah, %.lr.ph195.i.new
  %indvars.iv223.i = phi i64 [ %i.fv, %.lr.ph195.i.new ], [ %indvars.iv.next224.i.1, %bb.ah ] ; 4 uses
  %.0149193.i = phi i32 [ 0, %.lr.ph195.i.new ], [ %i.mb, %bb.ah ]
  %niter = phi i64 [ 0, %.lr.ph195.i.new ], [ %niter.next.1, %bb.ah ]
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %.0145, i64 %indvars.iv223.i
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !3  ; 2 uses
  %i.ls = lshr i32 %i.lr, %i.fy
  %i.lt = or i32 %i.ls, %.0149193.i
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %indvars.iv223.i
  store i32 %i.lt, ptr %i.lu, align 4, !tbaa !3
  %i.lv = shl i32 %i.lr, %i.kx
  %indvars.iv.next224.i = add nsw i64 %indvars.iv223.i, -1 ; 2 uses
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.0145, i64 %indvars.iv.next224.i
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !3  ; 2 uses
  %i.ly = lshr i32 %i.lx, %i.fy
  %i.lz = or disjoint i32 %i.ly, %i.lv
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %indvars.iv.next224.i
  store i32 %i.lz, ptr %i.ma, align 4, !tbaa !3
  %i.mb = shl i32 %i.lx, %i.kx                    ; 2 uses
  %indvars.iv.next224.i.1 = add nsw i64 %indvars.iv223.i, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL8KnuthDivPjS_S_S_jj.exit.loopexit389.unr-lcssa, label %bb.ah, !llvm.loop !454

.lr.ph197.i:                                      ; preds = %.lr.ph197.i.prol.loopexit, %.lr.ph197.i
  %indvars.iv226.i = phi i64 [ %indvars.iv.next227.i.3, %.lr.ph197.i ], [ %indvars.iv226.i.unr, %.lr.ph197.i.prol.loopexit ] ; 6 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %.0145, i64 %indvars.iv226.i
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !3
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %indvars.iv226.i
  store i32 %i.md, ptr %i.me, align 4, !tbaa !3
  %indvars.iv.next227.i = add nsw i64 %indvars.iv226.i, -1 ; 2 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %.0145, i64 %indvars.iv.next227.i
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !3
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %indvars.iv.next227.i
  store i32 %i.mg, ptr %i.mh, align 4, !tbaa !3
  %indvars.iv.next227.i.1 = add nsw i64 %indvars.iv226.i, -2 ; 2 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %.0145, i64 %indvars.iv.next227.i.1
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !3
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %indvars.iv.next227.i.1
  store i32 %i.mj, ptr %i.mk, align 4, !tbaa !3
  %indvars.iv.next227.i.2 = add nsw i64 %indvars.iv226.i, -3 ; 3 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %.0145, i64 %indvars.iv.next227.i.2
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !3
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %indvars.iv.next227.i.2
  store i32 %i.mm, ptr %i.mn, align 4, !tbaa !3
  %indvars.iv.next227.i.3 = add nsw i64 %indvars.iv226.i, -4
  %.not249.i.3 = icmp eq i64 %indvars.iv.next227.i.2, 0
  br i1 %.not249.i.3, label %_ZL8KnuthDivPjS_S_S_jj.exit, label %.lr.ph197.i, !llvm.loop !455

_ZL8KnuthDivPjS_S_S_jj.exit.loopexit389.unr-lcssa: ; preds = %bb.ah
  %i.mo = and i64 %i.fv, 1
  %lcmp.mod402.not.not = icmp eq i64 %i.mo, 0
  br i1 %lcmp.mod402.not.not, label %.epil.preheader, label %_ZL8KnuthDivPjS_S_S_jj.exit

.epil.preheader:                                  ; preds = %_ZL8KnuthDivPjS_S_S_jj.exit.loopexit389.unr-lcssa, %.lr.ph195.i
  %indvars.iv223.i.epil.init = phi i64 [ %i.fv, %.lr.ph195.i ], [ %indvars.iv.next224.i.1, %_ZL8KnuthDivPjS_S_S_jj.exit.loopexit389.unr-lcssa ] ; 2 uses
  %.0149193.i.epil.init = phi i32 [ 0, %.lr.ph195.i ], [ %i.mb, %_ZL8KnuthDivPjS_S_S_jj.exit.loopexit389.unr-lcssa ]
  %lcmp.mod403 = trunc i64 %i.ky to i1
  call void @llvm.assume(i1 %lcmp.mod403)
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.0145, i64 %indvars.iv223.i.epil.init
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !3
  %i.mr = lshr i32 %i.mq, %i.fy
  %i.ms = or i32 %i.mr, %.0149193.i.epil.init
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %indvars.iv223.i.epil.init
  store i32 %i.ms, ptr %i.mt, align 4, !tbaa !3
  br label %_ZL8KnuthDivPjS_S_S_jj.exit

_ZL8KnuthDivPjS_S_S_jj.exit:                      ; preds = %.epil.preheader, %_ZL8KnuthDivPjS_S_S_jj.exit.loopexit389.unr-lcssa, %.lr.ph197.i.prol.loopexit, %.lr.ph197.i, %middle.block336, %.preheader.i, %.preheader173.i, %bb.af, %._crit_edge195, %bb.t
  %.not160 = icmp ne ptr %4, null
  %i.mu = icmp ne i32 %1, 0
  %or.cond = and i1 %.not160, %i.mu
  br i1 %or.cond, label %.lr.ph198.preheader, label %.loopexit164

.lr.ph198.preheader:                              ; preds = %_ZL8KnuthDivPjS_S_S_jj.exit
  %wide.trip.count228 = zext i32 %1 to i64        ; 5 uses
  %i.mv = add i32 %1, -10
  %or.cond384 = icmp ult i32 %i.mv, 2147483639
  br i1 %or.cond384, label %vector.ph344, label %.lr.ph198.preheader387

vector.ph344:                                     ; preds = %.lr.ph198.preheader
  %n.vec346 = and i64 %wide.trip.count228, 4294967292 ; 3 uses
  br label %vector.body347

vector.body347:                                   ; preds = %vector.body347, %vector.ph344
  %index348 = phi i64 [ 0, %vector.ph344 ], [ %index.next353, %vector.body347 ] ; 4 uses
  %i.mw = shl i64 %index348, 1
  %i.mx = shl i64 %index348, 1
  %i.my = and i64 %i.mw, 4294967288
  %i.mz = and i64 %i.mx, 4294967288
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %i.my
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %i.mz
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %wide.vec = load <4 x i32>, ptr %i.na, align 4, !tbaa !3 ; 2 uses
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec349 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec350 = load <4 x i32>, ptr %i.nc, align 4, !tbaa !3 ; 2 uses
  %strided.vec351 = shufflevector <4 x i32> %wide.vec350, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec352 = shufflevector <4 x i32> %wide.vec350, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %6 = zext <2 x i32> %strided.vec349 to <2 x i64>
  %7 = zext <2 x i32> %strided.vec352 to <2 x i64>
  %8 = shl nuw <2 x i64> %6, splat (i64 32)
  %9 = shl nuw <2 x i64> %7, splat (i64 32)
  %10 = zext <2 x i32> %strided.vec to <2 x i64>
  %11 = zext <2 x i32> %strided.vec351 to <2 x i64>
  %12 = or disjoint <2 x i64> %8, %10
  %13 = or disjoint <2 x i64> %9, %11
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index348 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  store <2 x i64> %12, ptr %i.nd, align 8, !tbaa !10
  store <2 x i64> %13, ptr %i.ne, align 8, !tbaa !10
  %index.next353 = add nuw i64 %index348, 4       ; 2 uses
  %i.nf = icmp eq i64 %index.next353, %n.vec346
  br i1 %i.nf, label %middle.block354, label %vector.body347, !llvm.loop !456

middle.block354:                                  ; preds = %vector.body347
  %cmp.n355 = icmp eq i64 %n.vec346, %wide.trip.count228
  br i1 %cmp.n355, label %.loopexit164, label %.lr.ph198.preheader387

.lr.ph198.preheader387:                           ; preds = %.lr.ph198.preheader, %middle.block354
  %indvars.iv225.ph = phi i64 [ 0, %.lr.ph198.preheader ], [ %n.vec346, %middle.block354 ] ; 5 uses
  %xtraiter406 = and i64 %wide.trip.count228, 1
  %lcmp.mod407.not = icmp eq i64 %xtraiter406, 0
  br i1 %lcmp.mod407.not, label %.lr.ph198.prol.loopexit, label %.lr.ph198.prol

.lr.ph198.prol:                                   ; preds = %.lr.ph198.preheader387
  %i.ng = trunc nuw i64 %indvars.iv225.ph to i32
  %i.nh = shl i32 %i.ng, 1                        ; 2 uses
  %i.ni = or disjoint i32 %i.nh, 1
  %i.nj = zext i32 %i.ni to i64
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %i.nj
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !3
  %i.nm = zext i32 %i.nh to i64
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %i.nm
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !3
  %i.np = zext i32 %i.nl to i64
  %i.nq = shl nuw i64 %i.np, 32
  %i.nr = zext i32 %i.no to i64
  %i.ns = or disjoint i64 %i.nq, %i.nr
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv225.ph
  store i64 %i.ns, ptr %i.nt, align 8, !tbaa !10
  %indvars.iv.next226.prol = or disjoint i64 %indvars.iv225.ph, 1
  br label %.lr.ph198.prol.loopexit

.lr.ph198.prol.loopexit:                          ; preds = %.lr.ph198.prol, %.lr.ph198.preheader387
  %indvars.iv225.unr = phi i64 [ %indvars.iv225.ph, %.lr.ph198.preheader387 ], [ %indvars.iv.next226.prol, %.lr.ph198.prol ]
  %i.nu = add nsw i64 %wide.trip.count228, -1
  %i.nv = icmp eq i64 %indvars.iv225.ph, %i.nu
  br i1 %i.nv, label %.loopexit164, label %.lr.ph198

.lr.ph198:                                        ; preds = %.lr.ph198.prol.loopexit, %.lr.ph198
  %indvars.iv225 = phi i64 [ %indvars.iv.next226.1, %.lr.ph198 ], [ %indvars.iv225.unr, %.lr.ph198.prol.loopexit ] ; 4 uses
  %i.nw = trunc nuw i64 %indvars.iv225 to i32
  %i.nx = shl i32 %i.nw, 1                        ; 2 uses
  %i.ny = or disjoint i32 %i.nx, 1
  %i.nz = zext i32 %i.ny to i64
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %i.nz
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !3
  %i.oc = zext i32 %i.nx to i64
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %i.oc
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !3
  %i.of = zext i32 %i.ob to i64
  %i.og = shl nuw i64 %i.of, 32
  %i.oh = zext i32 %i.oe to i64
  %i.oi = or disjoint i64 %i.og, %i.oh
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv225
  store i64 %i.oi, ptr %i.oj, align 8, !tbaa !10
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1 ; 2 uses
  %i.ok = trunc nuw i64 %indvars.iv.next226 to i32
  %i.ol = shl i32 %i.ok, 1                        ; 2 uses
  %i.om = or disjoint i32 %i.ol, 1
  %i.on = zext i32 %i.om to i64
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %i.on
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !3
  %i.oq = zext i32 %i.ol to i64
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %i.oq
  %i.os = load i32, ptr %i.or, align 4, !tbaa !3
  %i.ot = zext i32 %i.op to i64
  %i.ou = shl nuw i64 %i.ot, 32
  %i.ov = zext i32 %i.os to i64
  %i.ow = or disjoint i64 %i.ou, %i.ov
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next226
  store i64 %i.ow, ptr %i.ox, align 8, !tbaa !10
  %indvars.iv.next226.1 = add nuw nsw i64 %indvars.iv225, 2 ; 2 uses
  %exitcond229.not.1 = icmp eq i64 %indvars.iv.next226.1, %wide.trip.count228
  br i1 %exitcond229.not.1, label %.loopexit164, label %.lr.ph198, !llvm.loop !457

.loopexit164:                                     ; preds = %.lr.ph198.prol.loopexit, %.lr.ph198, %middle.block354, %_ZL8KnuthDivPjS_S_S_jj.exit
  %i.oy = icmp ne i32 %3, 0
  %or.cond201 = and i1 %.not, %i.oy
  br i1 %or.cond201, label %.lr.ph200.preheader, label %.loopexit

.lr.ph200.preheader:                              ; preds = %.loopexit164
  %wide.trip.count233 = zext i32 %3 to i64        ; 5 uses
  %i.oz = add i32 %3, -10
  %or.cond385 = icmp ult i32 %i.oz, 2147483639
  br i1 %or.cond385, label %vector.ph362, label %.lr.ph200.preheader386

vector.ph362:                                     ; preds = %.lr.ph200.preheader
  %n.vec364 = and i64 %wide.trip.count233, 4294967292 ; 3 uses
  br label %vector.body365

vector.body365:                                   ; preds = %vector.body365, %vector.ph362
  %index366 = phi i64 [ 0, %vector.ph362 ], [ %index.next373, %vector.body365 ] ; 4 uses
  %i.pa = shl i64 %index366, 1
  %i.pb = shl i64 %index366, 1
  %i.pc = and i64 %i.pa, 4294967288
  %i.pd = and i64 %i.pb, 4294967288
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %i.pc
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %i.pd
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %wide.vec367 = load <4 x i32>, ptr %i.pe, align 4, !tbaa !3 ; 2 uses
  %strided.vec368 = shufflevector <4 x i32> %wide.vec367, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec369 = shufflevector <4 x i32> %wide.vec367, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec370 = load <4 x i32>, ptr %i.pg, align 4, !tbaa !3 ; 2 uses
  %strided.vec371 = shufflevector <4 x i32> %wide.vec370, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec372 = shufflevector <4 x i32> %wide.vec370, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %14 = zext <2 x i32> %strided.vec369 to <2 x i64>
  %15 = zext <2 x i32> %strided.vec372 to <2 x i64>
  %16 = shl nuw <2 x i64> %14, splat (i64 32)
  %17 = shl nuw <2 x i64> %15, splat (i64 32)
  %18 = zext <2 x i32> %strided.vec368 to <2 x i64>
  %19 = zext <2 x i32> %strided.vec371 to <2 x i64>
  %20 = or disjoint <2 x i64> %16, %18
  %21 = or disjoint <2 x i64> %17, %19
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index366 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  store <2 x i64> %20, ptr %i.ph, align 8, !tbaa !10
  store <2 x i64> %21, ptr %i.pi, align 8, !tbaa !10
  %index.next373 = add nuw i64 %index366, 4       ; 2 uses
  %i.pj = icmp eq i64 %index.next373, %n.vec364
  br i1 %i.pj, label %middle.block374, label %vector.body365, !llvm.loop !458

middle.block374:                                  ; preds = %vector.body365
  %cmp.n375 = icmp eq i64 %n.vec364, %wide.trip.count233
  br i1 %cmp.n375, label %.loopexit, label %.lr.ph200.preheader386

.lr.ph200.preheader386:                           ; preds = %.lr.ph200.preheader, %middle.block374
  %indvars.iv230.ph = phi i64 [ 0, %.lr.ph200.preheader ], [ %n.vec364, %middle.block374 ] ; 5 uses
  %xtraiter409 = and i64 %wide.trip.count233, 1
  %lcmp.mod410.not = icmp eq i64 %xtraiter409, 0
  br i1 %lcmp.mod410.not, label %.lr.ph200.prol.loopexit, label %.lr.ph200.prol

.lr.ph200.prol:                                   ; preds = %.lr.ph200.preheader386
  %i.pk = trunc nuw i64 %indvars.iv230.ph to i32
  %i.pl = shl i32 %i.pk, 1                        ; 2 uses
  %i.pm = or disjoint i32 %i.pl, 1
  %i.pn = zext i32 %i.pm to i64
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %i.pn
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !3
  %i.pq = zext i32 %i.pl to i64
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %i.pq
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !3
  %i.pt = zext i32 %i.pp to i64
  %i.pu = shl nuw i64 %i.pt, 32
  %i.pv = zext i32 %i.ps to i64
  %i.pw = or disjoint i64 %i.pu, %i.pv
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv230.ph
  store i64 %i.pw, ptr %i.px, align 8, !tbaa !10
  %indvars.iv.next231.prol = or disjoint i64 %indvars.iv230.ph, 1
  br label %.lr.ph200.prol.loopexit

.lr.ph200.prol.loopexit:                          ; preds = %.lr.ph200.prol, %.lr.ph200.preheader386
  %indvars.iv230.unr = phi i64 [ %indvars.iv230.ph, %.lr.ph200.preheader386 ], [ %indvars.iv.next231.prol, %.lr.ph200.prol ]
  %i.py = add nsw i64 %wide.trip.count233, -1
  %i.pz = icmp eq i64 %indvars.iv230.ph, %i.py
  br i1 %i.pz, label %.loopexit, label %.lr.ph200

.lr.ph200:                                        ; preds = %.lr.ph200.prol.loopexit, %.lr.ph200
  %indvars.iv230 = phi i64 [ %indvars.iv.next231.1, %.lr.ph200 ], [ %indvars.iv230.unr, %.lr.ph200.prol.loopexit ] ; 4 uses
  %i.qa = trunc nuw i64 %indvars.iv230 to i32
  %i.qb = shl i32 %i.qa, 1                        ; 2 uses
  %i.qc = or disjoint i32 %i.qb, 1
  %i.qd = zext i32 %i.qc to i64
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %i.qd
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !3
  %i.qg = zext i32 %i.qb to i64
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %i.qg
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !3
  %i.qj = zext i32 %i.qf to i64
  %i.qk = shl nuw i64 %i.qj, 32
  %i.ql = zext i32 %i.qi to i64
  %i.qm = or disjoint i64 %i.qk, %i.ql
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv230
  store i64 %i.qm, ptr %i.qn, align 8, !tbaa !10
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %i.qo = trunc nuw i64 %indvars.iv.next231 to i32
  %i.qp = shl i32 %i.qo, 1                        ; 2 uses
  %i.qq = or disjoint i32 %i.qp, 1
  %i.qr = zext i32 %i.qq to i64
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %i.qr
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !3
  %i.qu = zext i32 %i.qp to i64
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %i.qu
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !3
  %i.qx = zext i32 %i.qt to i64
  %i.qy = shl nuw i64 %i.qx, 32
  %i.qz = zext i32 %i.qw to i64
  %i.ra = or disjoint i64 %i.qy, %i.qz
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next231
  store i64 %i.ra, ptr %i.rb, align 8, !tbaa !10
  %indvars.iv.next231.1 = add nuw nsw i64 %indvars.iv230, 2 ; 2 uses
  %exitcond234.not.1 = icmp eq i64 %indvars.iv.next231.1, %wide.trip.count233
  br i1 %exitcond234.not.1, label %.loopexit, label %.lr.ph200, !llvm.loop !459

.loopexit:                                        ; preds = %.lr.ph200.prol.loopexit, %.lr.ph200, %middle.block374, %.loopexit164
  %.not161 = icmp eq ptr %.0145, %i.a
  br i1 %.not161, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %.0145) #23
  call void @_ZdaPv(ptr noundef %.0147) #23
  call void @_ZdaPv(ptr noundef %.0150) #23
  %i.rc = icmp eq ptr %.0149, null
  br i1 %i.rc, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdaPv(ptr noundef nonnull %.0149) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt4udivEm(ptr dead_on_unwind noalias writable sret(%"class.llvh::APInt") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !7    ; 18 uses
  %i.d = icmp ult i32 %i.c, 65
  br i1 %i.d, label %_ZN4llvh5APIntC2Ejmb.exit, label %.lr.ph.i.i.i

_ZN4llvh5APIntC2Ejmb.exit:                        ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !9
  %i.f = udiv i64 %i.e, %2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.c, ptr %i.g, align 8, !tbaa !7
  %i.h = sub nsw i32 0, %i.c
  %i.i = and i32 %i.h, 63
  %i.j = zext nneg i32 %i.i to i64
  %i.k = lshr i64 -1, %i.j
  %i.l = and i64 %i.f, %i.k
  store i64 %i.l, ptr %0, align 8, !tbaa !9
  br label %bb.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.m = zext i32 %i.c to i64
  %i.n = add nuw nsw i64 %i.m, 63                 ; 2 uses
  %i.o = lshr i64 %i.n, 6                         ; 10 uses
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = load ptr, ptr %1, align 8, !tbaa !9      ; 7 uses
  %i.r = shl i32 %i.p, 6                          ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.c ], [ %i.o, %.lr.ph.i.i.i ] ; 2 uses
  %.019.i.i.i = phi i32 [ %i.y, %bb.c ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i
  %i.t = load i64, ptr %i.s, align 8, !tbaa !10   ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.c, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.b
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.t, i1 true)
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = or disjoint i32 %.019.i.i.i, %i.w
  br label %_ZNK4llvh5APInt13getActiveBitsEv.exit

bb.c:                                             ; preds = %bb.b
  %i.y = add i32 %.019.i.i.i, 64
  %i.z = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.z, label %bb.b, label %_ZNK4llvh5APInt13getActiveBitsEv.exit, !llvm.loop !93

_ZNK4llvh5APInt13getActiveBitsEv.exit:            ; preds = %bb.c, %.thread.i.i.i
  %.2.i.i.i = phi i32 [ %i.x, %.thread.i.i.i ], [ %i.r, %bb.c ]
  %i.aa = and i32 %i.c, 63
  %.not.i.i.i = icmp eq i32 %i.aa, 0
  %.neg.i.i.i = or i32 %i.c, -64
  %.neg15.i.i.i = select i1 %.not.i.i.i, i32 0, i32 %.neg.i.i.i ; 3 uses
  %i.ab = add i32 %.neg15.i.i.i, %.2.i.i.i
  %i.ac = sub i32 %i.c, %i.ab
  %i.ad = zext i32 %i.ac to i64
  %i.ae = add nuw nsw i64 %i.ad, 63
  %i.af = lshr i64 %i.ae, 6                       ; 3 uses
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %.not = icmp eq i64 %i.af, 0
  br i1 %.not, label %_ZN4llvh5APIntC2Ejmb.exit9, label %bb.d

_ZN4llvh5APIntC2Ejmb.exit9:                       ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.c, ptr %i.ah, align 8, !tbaa !7
  %i.ai = shl nuw nsw i64 %i.o, 3                 ; 2 uses
  %i.aj = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ai) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aj, i8 0, i64 %i.ai, i1 false)
  store ptr %i.aj, ptr %0, align 8, !tbaa !9
  store i64 0, ptr %i.aj, align 8, !tbaa !10
  %.pn.in.in.i5 = sub i32 0, %i.c
  %.pn.in.i6 = and i32 %.pn.in.in.i5, 63
  %.pn.i7 = zext nneg i32 %.pn.in.i6 to i64
  %i.ak = lshr i64 -1, %.pn.i7
  %i.al = add nuw nsw i64 %i.o, 4294967295
  %i.am = and i64 %i.al, 4294967295
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.am ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !10
  %i.ap = and i64 %i.ao, %i.ak
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !10
  br label %bb.i

bb.d:                                             ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit
  %i.aq = icmp eq i64 %2, 1
  br i1 %i.aq, label %_ZN4llvh5APIntC2ERKS0_.exit, label %.lr.ph.i.i.i.i

_ZN4llvh5APIntC2ERKS0_.exit:                      ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.c, ptr %i.ar, align 8, !tbaa !7
  %i.as = lshr i64 %i.n, 3
  %i.at = and i64 %i.as, 1073741816               ; 2 uses
  %i.au = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.at) #22 ; 2 uses
  store ptr %i.au, ptr %0, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.au, ptr nonnull align 8 %i.q, i64 %i.at, i1 false)
  br label %bb.i

end_hunk_0
