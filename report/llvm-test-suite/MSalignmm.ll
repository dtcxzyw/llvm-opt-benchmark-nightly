inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@MSalignmm_rec:bb.a
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1 ; 2 uses
  %exitcond65.not.i = icmp eq i64 %indvars.iv.next61.i, %wide.trip.count52.i
  br i1 %exitcond65.not.i, label %._crit_edge30.i, label %bb.f, !llvm.loop !83

._crit_edge30.i:                                  ; preds = %bb.l
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %.018532.i, i64 %i.iv
  %i.km = load float, ptr %i.kl, align 4, !tbaa !16
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv66.i
  store float %i.km, ptr %i.kn, align 4, !tbaa !16
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %exitcond71.not.i = icmp eq i64 %indvars.iv.next67.i, %wide.trip.count70.i
  br i1 %exitcond71.not.i, label %._crit_edge38.i, label %.lr.ph29.i, !llvm.loop !84

._crit_edge38.i:                                  ; preds = %._crit_edge30.i, %._crit_edge.i
  %.0181.lcssa.i = phi float [ 0.000000e+00, %._crit_edge.i ], [ %.3.i, %._crit_edge30.i ]
  %i.ko = add nsw i32 %i.v, %i.t                  ; 3 uses
  %i.kp = add nsw i32 %i.ko, 1                    ; 2 uses
  %i.kq = tail call ptr @AllocateCharVec(i32 noundef %i.kp) #13 ; 2 uses
  %i.kr = tail call ptr @AllocateCharVec(i32 noundef %i.kp) #13 ; 2 uses
  %i.ks = icmp sgt i32 %i.s, -2
  br i1 %i.ks, label %.lr.ph.preheader.i.i, label %.lr.ph119.i.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge38.i
  %wide.trip.count.i.i = zext i32 %i.dn to i64    ; 2 uses
  %xtraiter439 = and i64 %wide.trip.count.i.i, 7  ; 3 uses
  %i.kt = add i32 %i.s, 1
  %i.ku = icmp ult i32 %i.kt, 7
  br i1 %i.ku, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter442 = and i64 %wide.trip.count.i.i, 4294967288
  br label %.lr.ph.i.i

.lr.ph119.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i
  %lcmp.mod440.not = icmp eq i64 %xtraiter439, 0
  br i1 %lcmp.mod440.not, label %.lr.ph119.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.lr.ph119.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.7, %.lr.ph119.i.i.loopexit.unr-lcssa ]
  %lcmp.mod441 = icmp ne i64 %xtraiter439, 0
  tail call void @llvm.assume(i1 %lcmp.mod441)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1 ; 2 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.i.i.epil
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !81
  %i.kx = trunc nuw i64 %indvars.iv.next.i.i.epil to i32
  store i32 %i.kx, ptr %i.kw, align 4, !tbaa !4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter439
  br i1 %epil.iter.cmp.not, label %.lr.ph119.i.i, label %.lr.ph.i.i.epil, !llvm.loop !85

.lr.ph119.i.i:                                    ; preds = %.lr.ph119.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %._crit_edge38.i
  %i.ky = load ptr, ptr %i.dk, align 8, !tbaa !81 ; 2 uses
  %wide.trip.count170.i.i = zext i32 %i.et to i64 ; 3 uses
  %min.iters.check320 = icmp ult i32 %i.u, 6
  br i1 %min.iters.check320, label %scalar.ph319.preheader, label %vector.ph321

vector.ph321:                                     ; preds = %.lr.ph119.i.i
  %n.vec323 = and i64 %wide.trip.count170.i.i, 4294967288 ; 3 uses
  br label %vector.body324

vector.body324:                                   ; preds = %vector.body324, %vector.ph321
  %index325 = phi i64 [ 0, %vector.ph321 ], [ %index.next326, %vector.body324 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph321 ], [ %vec.ind.next, %vector.body324 ] ; 3 uses
  %i.kz = xor <4 x i32> %vec.ind, splat (i32 -1)
  %i.la = sub <4 x i32> splat (i32 -5), %vec.ind
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %index325 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  store <4 x i32> %i.kz, ptr %i.lb, align 4, !tbaa !4
  store <4 x i32> %i.la, ptr %i.lc, align 4, !tbaa !4
  %index.next326 = add nuw i64 %index325, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ld = icmp eq i64 %index.next326, %n.vec323
  br i1 %i.ld, label %middle.block327, label %vector.body324, !llvm.loop !86

middle.block327:                                  ; preds = %vector.body324
  %cmp.n328 = icmp eq i64 %n.vec323, %wide.trip.count170.i.i
  br i1 %cmp.n328, label %._crit_edge.i.i, label %scalar.ph319.preheader

scalar.ph319.preheader:                           ; preds = %.lr.ph119.i.i, %middle.block327
  %indvars.iv167.i.i.ph = phi i64 [ 0, %.lr.ph119.i.i ], [ %n.vec323, %middle.block327 ]
  br label %scalar.ph319

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ] ; 9 uses
  %niter443 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter443.next.7, %.lr.ph.i.i ]
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.i.i
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !81
  %i.lg = trunc nuw i64 %indvars.iv.next.i.i to i32
  store i32 %i.lg, ptr %i.lf, align 4, !tbaa !4
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.next.i.i
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !81
  %i.lj = trunc nuw i64 %indvars.iv.next.i.i.1 to i32
  store i32 %i.lj, ptr %i.li, align 4, !tbaa !4
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.next.i.i.1
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !81
  %i.lm = trunc nuw i64 %indvars.iv.next.i.i.2 to i32
  store i32 %i.lm, ptr %i.ll, align 4, !tbaa !4
  %indvars.iv.next.i.i.3 = or disjoint i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.next.i.i.2
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !81
  %i.lp = trunc nuw i64 %indvars.iv.next.i.i.3 to i32
  store i32 %i.lp, ptr %i.lo, align 4, !tbaa !4
  %indvars.iv.next.i.i.4 = or disjoint i64 %indvars.iv.i.i, 5 ; 2 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.next.i.i.3
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !81
  %i.ls = trunc nuw i64 %indvars.iv.next.i.i.4 to i32
  store i32 %i.ls, ptr %i.lr, align 4, !tbaa !4
  %indvars.iv.next.i.i.5 = or disjoint i64 %indvars.iv.i.i, 6 ; 2 uses
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.next.i.i.4
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !81
  %i.lv = trunc nuw i64 %indvars.iv.next.i.i.5 to i32
  store i32 %i.lv, ptr %i.lu, align 4, !tbaa !4
  %indvars.iv.next.i.i.6 = or disjoint i64 %indvars.iv.i.i, 7 ; 2 uses
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.next.i.i.5
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !81
  %i.ly = trunc nuw i64 %indvars.iv.next.i.i.6 to i32
  store i32 %i.ly, ptr %i.lx, align 4, !tbaa !4
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 3 uses
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.next.i.i.6
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !81
  %i.mb = trunc nuw i64 %indvars.iv.next.i.i.7 to i32
  store i32 %i.mb, ptr %i.ma, align 4, !tbaa !4
  %niter443.next.7 = add i64 %niter443, 8         ; 2 uses
  %niter443.ncmp.7 = icmp eq i64 %niter443.next.7, %unroll_iter442
  br i1 %niter443.ncmp.7, label %.lr.ph119.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !87

scalar.ph319:                                     ; preds = %scalar.ph319.preheader, %scalar.ph319
  %indvars.iv167.i.i = phi i64 [ %indvars.iv.next168.i.i, %scalar.ph319 ], [ %indvars.iv167.i.i.ph, %scalar.ph319.preheader ] ; 3 uses
  %indvars.iv.next168.i.i = add nuw nsw i64 %indvars.iv167.i.i, 1 ; 2 uses
  %i.mc = trunc nuw nsw i64 %indvars.iv167.i.i to i32
  %i.md = xor i32 %i.mc, -1
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv167.i.i
  store i32 %i.md, ptr %i.me, align 4, !tbaa !4
  %exitcond171.i.i = icmp eq i64 %indvars.iv.next168.i.i, %wide.trip.count170.i.i
  br i1 %exitcond171.i.i, label %._crit_edge.i.i, label %scalar.ph319, !llvm.loop !88

._crit_edge.i.i:                                  ; preds = %scalar.ph319, %middle.block327
  %i.mf = sext i32 %i.t to i64                    ; 2 uses
  %i.mg = getelementptr inbounds i8, ptr %i.kq, i64 %i.mf
  %i.mh = zext nneg i32 %i.v to i64               ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.mh ; 3 uses
  store i8 0, ptr %i.mi, align 1, !tbaa !40
  %i.mj = getelementptr inbounds i8, ptr %i.kr, i64 %i.mf
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.mh ; 3 uses
  store i8 0, ptr %i.mk, align 1, !tbaa !40
  %.not139.i.i = icmp slt i32 %i.ko, 0
  br i1 %.not139.i.i, label %._crit_edge147.i.i, label %.lr.ph146.i.i

.lr.ph146.i.i:                                    ; preds = %._crit_edge.i.i, %bb.r
  %.092144.i.i = phi ptr [ %i.qh, %bb.r ], [ %i.mk, %._crit_edge.i.i ] ; 7 uses
  %.096143.i.i = phi ptr [ %i.qg, %bb.r ], [ %i.mi, %._crit_edge.i.i ] ; 7 uses
  %.0102142.i.i = phi i32 [ %i.qi, %bb.r ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %.0105141.i.i = phi i32 [ %.0108.i.i, %bb.r ], [ %i.t, %._crit_edge.i.i ] ; 7 uses
  %.0106140.i.i = phi i32 [ %.0107.i.i, %bb.r ], [ %i.v, %._crit_edge.i.i ] ; 3 uses
  %.096143.i.i350 = ptrtoaddr ptr %.096143.i.i to i64
  %.092144.i.i351 = ptrtoaddr ptr %.092144.i.i to i64
  %i.ml = sext i32 %.0105141.i.i to i64
  %i.mm = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.ml
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !81
  %i.mo = sext i32 %.0106140.i.i to i64
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.mo
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !4  ; 4 uses
  %i.mr = icmp slt i32 %i.mq, 0
  br i1 %i.mr, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph146.i.i
  %i.ms = add nsw i32 %.0105141.i.i, -1
  br label %bb.q

bb.n:                                             ; preds = %.lr.ph146.i.i
  %.not113.i.i = icmp eq i32 %i.mq, 0
  br i1 %.not113.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.mt = sub nsw i32 %.0105141.i.i, %i.mq
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.mu = add nsw i32 %.0105141.i.i, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m
  %.0108.i.i = phi i32 [ %i.ms, %bb.m ], [ %i.mt, %bb.o ], [ %i.mu, %bb.p ] ; 3 uses
  %.pn.i.i = phi i32 [ %i.mq, %bb.m ], [ -1, %bb.o ], [ -1, %bb.p ] ; 5 uses
  %.0107.i.i = add nsw i32 %.pn.i.i, %.0106140.i.i
  %i.mv = xor i32 %.0108.i.i, -1
  %i.mw = add i32 %.0105141.i.i, %i.mv            ; 7 uses
  %.not114120.i.i = icmp eq i32 %i.mw, 0
  br i1 %.not114120.i.i, label %._crit_edge126.i.i, label %iter.check

iter.check:                                       ; preds = %bb.q
  %i.mx = zext i32 %i.mw to i64                   ; 5 uses
  %min.iters.check354 = icmp ult i32 %i.mw, 8
  %i.my = sub i64 %.096143.i.i350, %.092144.i.i351
  %diff.check352 = icmp ult i64 %i.my, 32
  %or.cond381 = or i1 %min.iters.check354, %diff.check352
  br i1 %or.cond381, label %.lr.ph125.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check355 = icmp ult i32 %i.mw, 32
  br i1 %min.iters.check355, label %vec.epilog.ph, label %vector.ph356

vector.ph356:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf357 = and i64 %i.mx, 24
  %n.vec358 = and i64 %i.mx, 4294967264           ; 5 uses
  %i.mz = trunc nuw i64 %n.vec358 to i32
  %i.na = sub i32 %i.mw, %i.mz
  %i.nb = sub nsw i64 0, %n.vec358                ; 2 uses
  %i.nc = getelementptr i8, ptr %.092144.i.i, i64 %i.nb ; 2 uses
  %i.nd = getelementptr i8, ptr %.096143.i.i, i64 %i.nb ; 2 uses
  br label %vector.body359

vector.body359:                                   ; preds = %vector.body359, %vector.ph356
  %index360 = phi i64 [ 0, %vector.ph356 ], [ %index.next363, %vector.body359 ] ; 2 uses
  %i.ne = sub i64 0, %index360                    ; 2 uses
  %next.gep361 = getelementptr i8, ptr %.092144.i.i, i64 %i.ne ; 2 uses
  %next.gep362 = getelementptr i8, ptr %.096143.i.i, i64 %i.ne ; 2 uses
  %i.nf = getelementptr inbounds i8, ptr %next.gep362, i64 -16
  %i.ng = getelementptr inbounds i8, ptr %next.gep362, i64 -32
  store <16 x i8> splat (i8 111), ptr %i.nf, align 1, !tbaa !40
  store <16 x i8> splat (i8 111), ptr %i.ng, align 1, !tbaa !40
  %i.nh = getelementptr inbounds i8, ptr %next.gep361, i64 -16
  %i.ni = getelementptr inbounds i8, ptr %next.gep361, i64 -32
  store <16 x i8> splat (i8 45), ptr %i.nh, align 1, !tbaa !40
  store <16 x i8> splat (i8 45), ptr %i.ni, align 1, !tbaa !40
  %index.next363 = add nuw i64 %index360, 32      ; 2 uses
  %i.nj = icmp eq i64 %index.next363, %n.vec358
  br i1 %i.nj, label %middle.block364, label %vector.body359, !llvm.loop !89

middle.block364:                                  ; preds = %vector.body359
  %cmp.n365 = icmp eq i64 %n.vec358, %i.mx
  br i1 %cmp.n365, label %._crit_edge126.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block364
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf357, 0
  br i1 %min.epilog.iters.check, label %.lr.ph125.i.i.preheader, label %vec.epilog.ph, !prof !90

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec358, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec370 = and i64 %i.mx, 4294967288           ; 4 uses
  %i.nk = trunc nuw i64 %n.vec370 to i32
  %i.nl = sub i32 %i.mw, %i.nk
  %i.nm = sub nsw i64 0, %n.vec370                ; 2 uses
  %i.nn = getelementptr i8, ptr %.092144.i.i, i64 %i.nm ; 2 uses
  %i.no = getelementptr i8, ptr %.096143.i.i, i64 %i.nm ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index371 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next374, %vec.epilog.vector.body ] ; 2 uses
  %i.np = sub i64 0, %index371                    ; 2 uses
  %next.gep372 = getelementptr i8, ptr %.092144.i.i, i64 %i.np
  %next.gep373 = getelementptr i8, ptr %.096143.i.i, i64 %i.np
  %i.nq = getelementptr inbounds i8, ptr %next.gep373, i64 -8
  store <8 x i8> splat (i8 111), ptr %i.nq, align 1, !tbaa !40
  %i.nr = getelementptr inbounds i8, ptr %next.gep372, i64 -8
  store <8 x i8> splat (i8 45), ptr %i.nr, align 1, !tbaa !40
  %index.next374 = add nuw i64 %index371, 8       ; 2 uses
  %i.ns = icmp eq i64 %index.next374, %n.vec370
  br i1 %i.ns, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !91

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n375 = icmp eq i64 %n.vec370, %i.mx
  br i1 %cmp.n375, label %._crit_edge126.loopexit.i.i, label %.lr.ph125.i.i.preheader

.lr.ph125.i.i.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph383 = phi i32 [ %i.mw, %iter.check ], [ %i.na, %vec.epilog.iter.check ], [ %i.nl, %vec.epilog.middle.block ] ; 4 uses
  %.193123.i.i.ph = phi ptr [ %.092144.i.i, %iter.check ], [ %i.nc, %vec.epilog.iter.check ], [ %i.nn, %vec.epilog.middle.block ] ; 2 uses
  %.197122.i.i.ph = phi ptr [ %.096143.i.i, %iter.check ], [ %i.nd, %vec.epilog.iter.check ], [ %i.no, %vec.epilog.middle.block ] ; 2 uses
  %i.nt = add nsw i32 %.ph383, -1
  %xtraiter444.a = and i32 %.ph383, 7             ; 2 uses
  %lcmp.mod445.not.a = icmp eq i32 %xtraiter444.a, 0
  br i1 %lcmp.mod445.not.a, label %.lr.ph125.i.i.prol.loopexit, label %.lr.ph125.i.i.prol

.lr.ph125.i.i.prol:                               ; preds = %.lr.ph125.i.i.preheader, %.lr.ph125.i.i.prol
  %i.nu = phi i32 [ %i.nx, %.lr.ph125.i.i.prol ], [ %.ph383, %.lr.ph125.i.i.preheader ]
  %.193123.i.i.prol = phi ptr [ %i.nw, %.lr.ph125.i.i.prol ], [ %.193123.i.i.ph, %.lr.ph125.i.i.preheader ]
  %.197122.i.i.prol = phi ptr [ %i.nv, %.lr.ph125.i.i.prol ], [ %.197122.i.i.ph, %.lr.ph125.i.i.preheader ]
  %prol.iter446.a = phi i32 [ %prol.iter446.next.a, %.lr.ph125.i.i.prol ], [ 0, %.lr.ph125.i.i.preheader ]
  %i.nv = getelementptr inbounds i8, ptr %.197122.i.i.prol, i64 -1 ; 4 uses
  store i8 111, ptr %i.nv, align 1, !tbaa !40
  %i.nw = getelementptr inbounds i8, ptr %.193123.i.i.prol, i64 -1 ; 4 uses
  store i8 45, ptr %i.nw, align 1, !tbaa !40
  %i.nx = add nsw i32 %i.nu, -1                   ; 2 uses
  %prol.iter446.next.a = add i32 %prol.iter446.a, 1 ; 2 uses
  %prol.iter446.cmp.not.a = icmp eq i32 %prol.iter446.next.a, %xtraiter444.a
  br i1 %prol.iter446.cmp.not.a, label %.lr.ph125.i.i.prol.loopexit, label %.lr.ph125.i.i.prol, !llvm.loop !92

.lr.ph125.i.i.prol.loopexit:                      ; preds = %.lr.ph125.i.i.prol, %.lr.ph125.i.i.preheader
  %.lcssa385.unr.a = phi ptr [ poison, %.lr.ph125.i.i.preheader ], [ %i.nv, %.lr.ph125.i.i.prol ]
  %.lcssa384.unr = phi ptr [ poison, %.lr.ph125.i.i.preheader ], [ %i.nw, %.lr.ph125.i.i.prol ]
  %.unr = phi i32 [ %.ph383, %.lr.ph125.i.i.preheader ], [ %i.nx, %.lr.ph125.i.i.prol ]
  %.193123.i.i.unr = phi ptr [ %.193123.i.i.ph, %.lr.ph125.i.i.preheader ], [ %i.nw, %.lr.ph125.i.i.prol ]
  %.197122.i.i.unr = phi ptr [ %.197122.i.i.ph, %.lr.ph125.i.i.preheader ], [ %i.nv, %.lr.ph125.i.i.prol ]
  %i.ny = icmp ult i32 %i.nt, 7
  br i1 %i.ny, label %._crit_edge126.loopexit.i.i, label %.lr.ph125.i.i

.lr.ph125.i.i:                                    ; preds = %.lr.ph125.i.i.prol.loopexit, %.lr.ph125.i.i
  %i.nz = phi i32 [ %i.oq, %.lr.ph125.i.i ], [ %.unr, %.lr.ph125.i.i.prol.loopexit ]
  %.193123.i.i = phi ptr [ %i.op, %.lr.ph125.i.i ], [ %.193123.i.i.unr, %.lr.ph125.i.i.prol.loopexit ] ; 8 uses
  %.197122.i.i = phi ptr [ %i.oo, %.lr.ph125.i.i ], [ %.197122.i.i.unr, %.lr.ph125.i.i.prol.loopexit ] ; 8 uses
  %i.oa = getelementptr inbounds i8, ptr %.197122.i.i, i64 -1
  store i8 111, ptr %i.oa, align 1, !tbaa !40
  %i.ob = getelementptr inbounds i8, ptr %.193123.i.i, i64 -1
  store i8 45, ptr %i.ob, align 1, !tbaa !40
  %i.oc = getelementptr inbounds i8, ptr %.197122.i.i, i64 -2
  store i8 111, ptr %i.oc, align 1, !tbaa !40
  %i.od = getelementptr inbounds i8, ptr %.193123.i.i, i64 -2
  store i8 45, ptr %i.od, align 1, !tbaa !40
  %i.oe = getelementptr inbounds i8, ptr %.197122.i.i, i64 -3
  store i8 111, ptr %i.oe, align 1, !tbaa !40
  %i.of = getelementptr inbounds i8, ptr %.193123.i.i, i64 -3
  store i8 45, ptr %i.of, align 1, !tbaa !40
  %i.og = getelementptr inbounds i8, ptr %.197122.i.i, i64 -4
  store i8 111, ptr %i.og, align 1, !tbaa !40
  %i.oh = getelementptr inbounds i8, ptr %.193123.i.i, i64 -4
  store i8 45, ptr %i.oh, align 1, !tbaa !40
  %i.oi = getelementptr inbounds i8, ptr %.197122.i.i, i64 -5
  store i8 111, ptr %i.oi, align 1, !tbaa !40
  %i.oj = getelementptr inbounds i8, ptr %.193123.i.i, i64 -5
  store i8 45, ptr %i.oj, align 1, !tbaa !40
  %i.ok = getelementptr inbounds i8, ptr %.197122.i.i, i64 -6
  store i8 111, ptr %i.ok, align 1, !tbaa !40
  %i.ol = getelementptr inbounds i8, ptr %.193123.i.i, i64 -6
  store i8 45, ptr %i.ol, align 1, !tbaa !40
  %i.om = getelementptr inbounds i8, ptr %.197122.i.i, i64 -7
  store i8 111, ptr %i.om, align 1, !tbaa !40
  %i.on = getelementptr inbounds i8, ptr %.193123.i.i, i64 -7
  store i8 45, ptr %i.on, align 1, !tbaa !40
  %i.oo = getelementptr inbounds i8, ptr %.197122.i.i, i64 -8 ; 3 uses
  store i8 111, ptr %i.oo, align 1, !tbaa !40
  %i.op = getelementptr inbounds i8, ptr %.193123.i.i, i64 -8 ; 3 uses
  store i8 45, ptr %i.op, align 1, !tbaa !40
  %i.oq = add nsw i32 %i.nz, -8                   ; 2 uses
  %.not114.i.i.7 = icmp eq i32 %i.oq, 0
  br i1 %.not114.i.i.7, label %._crit_edge126.loopexit.i.i, label %.lr.ph125.i.i, !llvm.loop !93

._crit_edge126.loopexit.i.i:                      ; preds = %.lr.ph125.i.i.prol.loopexit, %.lr.ph125.i.i, %vec.epilog.middle.block, %middle.block364
  %.lcssa2 = phi ptr [ %i.no, %vec.epilog.middle.block ], [ %i.nd, %middle.block364 ], [ %.lcssa385.unr.a, %.lr.ph125.i.i.prol.loopexit ], [ %i.oo, %.lr.ph125.i.i ]
  %.lcssa = phi ptr [ %i.nn, %vec.epilog.middle.block ], [ %i.nc, %middle.block364 ], [ %.lcssa384.unr, %.lr.ph125.i.i.prol.loopexit ], [ %i.op, %.lr.ph125.i.i ]
  %i.or = add i32 %.0105141.i.i, -1
  %i.os = add i32 %i.or, %.0102142.i.i
  %i.ot = sub i32 %i.os, %.0108.i.i
  br label %._crit_edge126.i.i

._crit_edge126.i.i:                               ; preds = %._crit_edge126.loopexit.i.i, %bb.q
  %.1103.lcssa.i.i = phi i32 [ %.0102142.i.i, %bb.q ], [ %i.ot, %._crit_edge126.loopexit.i.i ] ; 3 uses
  %.197.lcssa.i.i = phi ptr [ %.096143.i.i, %bb.q ], [ %.lcssa2, %._crit_edge126.loopexit.i.i ] ; 5 uses
  %.193.lcssa.i.i = phi ptr [ %.092144.i.i, %bb.q ], [ %.lcssa, %._crit_edge126.loopexit.i.i ] ; 5 uses
  %.not115129.i.i = icmp eq i32 %.pn.i.i, -1
  br i1 %.not115129.i.i, label %._crit_edge135.i.i, label %.lr.ph134.preheader.i.i

.lr.ph134.preheader.i.i:                          ; preds = %._crit_edge126.i.i
  %.193.lcssa.i.i332 = ptrtoaddr ptr %.193.lcssa.i.i to i64
  %.197.lcssa.i.i331 = ptrtoaddr ptr %.197.lcssa.i.i to i64
  %i.ou = xor i32 %.pn.i.i, -1                    ; 2 uses
  %narrow = xor i32 %.pn.i.i, -1
  %i.ov = zext nneg i32 %narrow to i64            ; 2 uses
  %min.iters.check335 = icmp ugt i32 %.pn.i.i, -9
  %i.ow = sub i64 %.197.lcssa.i.i331, %.193.lcssa.i.i332
  %diff.check333 = icmp ult i64 %i.ow, 8
  %or.cond382 = select i1 %min.iters.check335, i1 true, i1 %diff.check333
  br i1 %or.cond382, label %.lr.ph134.i.i.preheader, label %vector.ph336

vector.ph336:                                     ; preds = %.lr.ph134.preheader.i.i
  %n.vec338 = and i64 %i.ov, 2147483640           ; 4 uses
  %i.ox = trunc nuw nsw i64 %n.vec338 to i32
  %i.oy = sub nsw i32 %i.ou, %i.ox
  %i.oz = sub nsw i64 0, %n.vec338                ; 2 uses
  %i.pa = getelementptr i8, ptr %.193.lcssa.i.i, i64 %i.oz ; 2 uses
  %i.pb = getelementptr i8, ptr %.197.lcssa.i.i, i64 %i.oz ; 2 uses
  %i.pc = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1103.lcssa.i.i, i64 0
  br label %vector.body339

vector.body339:                                   ; preds = %vector.body339, %vector.ph336
  %index340 = phi i64 [ 0, %vector.ph336 ], [ %index.next343, %vector.body339 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.pc, %vector.ph336 ], [ %i.pi, %vector.body339 ]
  %vec.phi341 = phi <4 x i32> [ zeroinitializer, %vector.ph336 ], [ %i.pj, %vector.body339 ]
  %i.pd = sub i64 0, %index340                    ; 2 uses
  %next.gep = getelementptr i8, ptr %.193.lcssa.i.i, i64 %i.pd ; 2 uses
  %next.gep342 = getelementptr i8, ptr %.197.lcssa.i.i, i64 %i.pd ; 2 uses
  %i.pe = getelementptr inbounds i8, ptr %next.gep342, i64 -4
  %i.pf = getelementptr inbounds i8, ptr %next.gep342, i64 -8
  store <4 x i8> splat (i8 45), ptr %i.pe, align 1, !tbaa !40
  store <4 x i8> splat (i8 45), ptr %i.pf, align 1, !tbaa !40
  %i.pg = getelementptr inbounds i8, ptr %next.gep, i64 -4
  %i.ph = getelementptr inbounds i8, ptr %next.gep, i64 -8
  store <4 x i8> splat (i8 111), ptr %i.pg, align 1, !tbaa !40
  store <4 x i8> splat (i8 111), ptr %i.ph, align 1, !tbaa !40
  %i.pi = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.pj = add <4 x i32> %vec.phi341, splat (i32 1) ; 2 uses
  %index.next343 = add nuw i64 %index340, 8       ; 2 uses
  %i.pk = icmp eq i64 %index.next343, %n.vec338
  br i1 %i.pk, label %middle.block344, label %vector.body339, !llvm.loop !94

middle.block344:                                  ; preds = %vector.body339
  %bin.rdx = add <4 x i32> %i.pj, %i.pi
  %i.pl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n345 = icmp eq i64 %n.vec338, %i.ov
  br i1 %cmp.n345, label %._crit_edge135.i.i, label %.lr.ph134.i.i.preheader

.lr.ph134.i.i.preheader:                          ; preds = %.lr.ph134.preheader.i.i, %middle.block344
  %.ph = phi i32 [ %i.ou, %.lr.ph134.preheader.i.i ], [ %i.oy, %middle.block344 ] ; 4 uses
  %.2132.i.i.ph = phi ptr [ %.193.lcssa.i.i, %.lr.ph134.preheader.i.i ], [ %i.pa, %middle.block344 ] ; 2 uses
  %.298131.i.i.ph = phi ptr [ %.197.lcssa.i.i, %.lr.ph134.preheader.i.i ], [ %i.pb, %middle.block344 ] ; 2 uses
  %.2104130.i.i.ph = phi i32 [ %.1103.lcssa.i.i, %.lr.ph134.preheader.i.i ], [ %i.pl, %middle.block344 ] ; 2 uses
  %i.pm = add nsw i32 %.ph, -1
  %xtraiter447 = and i32 %.ph, 3                  ; 2 uses
  %lcmp.mod448.not = icmp eq i32 %xtraiter447, 0
  br i1 %lcmp.mod448.not, label %.lr.ph134.i.i.prol.loopexit, label %.lr.ph134.i.i.prol

.lr.ph134.i.i.prol:                               ; preds = %.lr.ph134.i.i.preheader, %.lr.ph134.i.i.prol
  %i.pn = phi i32 [ %i.pr, %.lr.ph134.i.i.prol ], [ %.ph, %.lr.ph134.i.i.preheader ]
  %.2132.i.i.prol = phi ptr [ %i.pp, %.lr.ph134.i.i.prol ], [ %.2132.i.i.ph, %.lr.ph134.i.i.preheader ]
  %.298131.i.i.prol = phi ptr [ %i.po, %.lr.ph134.i.i.prol ], [ %.298131.i.i.ph, %.lr.ph134.i.i.preheader ]
  %.2104130.i.i.prol = phi i32 [ %i.pq, %.lr.ph134.i.i.prol ], [ %.2104130.i.i.ph, %.lr.ph134.i.i.preheader ]
  %prol.iter449 = phi i32 [ %prol.iter449.next, %.lr.ph134.i.i.prol ], [ 0, %.lr.ph134.i.i.preheader ]
  %i.po = getelementptr inbounds i8, ptr %.298131.i.i.prol, i64 -1 ; 4 uses
  store i8 45, ptr %i.po, align 1, !tbaa !40
  %i.pp = getelementptr inbounds i8, ptr %.2132.i.i.prol, i64 -1 ; 4 uses
  store i8 111, ptr %i.pp, align 1, !tbaa !40
  %i.pq = add nsw i32 %.2104130.i.i.prol, 1       ; 3 uses
  %i.pr = add nsw i32 %i.pn, -1                   ; 2 uses
  %prol.iter449.next = add i32 %prol.iter449, 1   ; 2 uses
  %prol.iter449.cmp.not = icmp eq i32 %prol.iter449.next, %xtraiter447
  br i1 %prol.iter449.cmp.not, label %.lr.ph134.i.i.prol.loopexit, label %.lr.ph134.i.i.prol, !llvm.loop !95

.lr.ph134.i.i.prol.loopexit:                      ; preds = %.lr.ph134.i.i.prol, %.lr.ph134.i.i.preheader
  %.lcssa390.unr = phi ptr [ poison, %.lr.ph134.i.i.preheader ], [ %i.po, %.lr.ph134.i.i.prol ]
  %.lcssa389.unr = phi ptr [ poison, %.lr.ph134.i.i.preheader ], [ %i.pp, %.lr.ph134.i.i.prol ]
  %.lcssa388.unr = phi i32 [ poison, %.lr.ph134.i.i.preheader ], [ %i.pq, %.lr.ph134.i.i.prol ]
  %.unr450 = phi i32 [ %.ph, %.lr.ph134.i.i.preheader ], [ %i.pr, %.lr.ph134.i.i.prol ]
  %.2132.i.i.unr = phi ptr [ %.2132.i.i.ph, %.lr.ph134.i.i.preheader ], [ %i.pp, %.lr.ph134.i.i.prol ]
  %.298131.i.i.unr = phi ptr [ %.298131.i.i.ph, %.lr.ph134.i.i.preheader ], [ %i.po, %.lr.ph134.i.i.prol ]
  %.2104130.i.i.unr = phi i32 [ %.2104130.i.i.ph, %.lr.ph134.i.i.preheader ], [ %i.pq, %.lr.ph134.i.i.prol ]
  %i.ps = icmp ult i32 %i.pm, 3
  br i1 %i.ps, label %._crit_edge135.i.i, label %.lr.ph134.i.i

.lr.ph134.i.i:                                    ; preds = %.lr.ph134.i.i.prol.loopexit, %.lr.ph134.i.i
  %i.pt = phi i32 [ %i.qd, %.lr.ph134.i.i ], [ %.unr450, %.lr.ph134.i.i.prol.loopexit ]
  %.2132.i.i = phi ptr [ %i.qb, %.lr.ph134.i.i ], [ %.2132.i.i.unr, %.lr.ph134.i.i.prol.loopexit ] ; 4 uses
  %.298131.i.i = phi ptr [ %i.qa, %.lr.ph134.i.i ], [ %.298131.i.i.unr, %.lr.ph134.i.i.prol.loopexit ] ; 4 uses
  %.2104130.i.i = phi i32 [ %i.qc, %.lr.ph134.i.i ], [ %.2104130.i.i.unr, %.lr.ph134.i.i.prol.loopexit ]
  %i.pu = getelementptr inbounds i8, ptr %.298131.i.i, i64 -1
  store i8 45, ptr %i.pu, align 1, !tbaa !40
  %i.pv = getelementptr inbounds i8, ptr %.2132.i.i, i64 -1
  store i8 111, ptr %i.pv, align 1, !tbaa !40
  %i.pw = getelementptr inbounds i8, ptr %.298131.i.i, i64 -2
  store i8 45, ptr %i.pw, align 1, !tbaa !40
  %i.px = getelementptr inbounds i8, ptr %.2132.i.i, i64 -2
  store i8 111, ptr %i.px, align 1, !tbaa !40
  %i.py = getelementptr inbounds i8, ptr %.298131.i.i, i64 -3
  store i8 45, ptr %i.py, align 1, !tbaa !40
  %i.pz = getelementptr inbounds i8, ptr %.2132.i.i, i64 -3
  store i8 111, ptr %i.pz, align 1, !tbaa !40
  %i.qa = getelementptr inbounds i8, ptr %.298131.i.i, i64 -4 ; 3 uses
  store i8 45, ptr %i.qa, align 1, !tbaa !40
  %i.qb = getelementptr inbounds i8, ptr %.2132.i.i, i64 -4 ; 3 uses
end_hunk_0
begin_hunk_1_@MSalignmm_rec:bb.a
vector.ph130:                                     ; preds = %vector.memcheck117
  %n.vec132 = and i64 %i.zz, 2147483640           ; 3 uses
  %i.aaf = load float, ptr %i.aaa, align 4, !tbaa !16, !alias.scope !132
  %broadcast.splatinsert137 = insertelement <4 x float> poison, float %i.aaf, i64 0
  %broadcast.splat138 = shufflevector <4 x float> %broadcast.splatinsert137, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph130
  %index134 = phi i64 [ 0, %vector.ph130 ], [ %index.next141, %vector.body133 ] ; 3 uses
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index134 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 4
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aag, i64 20
  %wide.load135 = load <4 x float>, ptr %i.aah, align 4, !tbaa !16, !alias.scope !135
  %wide.load136 = load <4 x float>, ptr %i.aai, align 4, !tbaa !16, !alias.scope !135
  %i.aaj = fadd <4 x float> %broadcast.splat138, %wide.load135
  %i.aak = fadd <4 x float> %broadcast.splat138, %wide.load136
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %index134 ; 3 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 16 ; 2 uses
  %wide.load139 = load <4 x float>, ptr %i.aal, align 4, !tbaa !16, !alias.scope !137, !noalias !139
  %wide.load140 = load <4 x float>, ptr %i.aam, align 4, !tbaa !16, !alias.scope !137, !noalias !139
  %i.aan = fadd <4 x float> %wide.load139, %i.aaj
  %i.aao = fadd <4 x float> %wide.load140, %i.aak
  store <4 x float> %i.aan, ptr %i.aal, align 4, !tbaa !16, !alias.scope !137, !noalias !139
  store <4 x float> %i.aao, ptr %i.aam, align 4, !tbaa !16, !alias.scope !137, !noalias !139
  %index.next141 = add nuw i64 %index134, 8       ; 2 uses
  %i.aap = icmp eq i64 %index.next141, %n.vec132
  br i1 %i.aap, label %middle.block142, label %vector.body133, !llvm.loop !140

middle.block142:                                  ; preds = %vector.body133
  %cmp.n143 = icmp eq i64 %n.vec132, %i.zz
  br i1 %cmp.n143, label %.lr.ph60, label %scalar.ph128.preheader

scalar.ph128.preheader:                           ; preds = %vector.memcheck117, %.lr.ph58, %middle.block142
  %indvars.iv172.ph = phi i64 [ 0, %vector.memcheck117 ], [ 0, %.lr.ph58 ], [ %n.vec132, %middle.block142 ] ; 4 uses
  %xtraiter413.a = and i64 %i.zz, 1
  %lcmp.mod414.not.a = icmp eq i64 %xtraiter413.a, 0
  br i1 %lcmp.mod414.not.a, label %scalar.ph128.prol.loopexit, label %scalar.ph128.prol

scalar.ph128.prol:                                ; preds = %scalar.ph128.preheader
  %i.aaq = load float, ptr %i.aaa, align 4, !tbaa !16
  %indvars.iv.next173.prol = or disjoint i64 %indvars.iv172.ph, 1 ; 2 uses
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next173.prol
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !16
  %i.aat = fadd float %i.aaq, %i.aas
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %indvars.iv172.ph ; 2 uses
  %i.aav = load float, ptr %i.aau, align 4, !tbaa !16
  %i.aaw = fadd float %i.aav, %i.aat
  store float %i.aaw, ptr %i.aau, align 4, !tbaa !16
  br label %scalar.ph128.prol.loopexit

scalar.ph128.prol.loopexit:                       ; preds = %scalar.ph128.prol, %scalar.ph128.preheader
  %indvars.iv172.unr = phi i64 [ %indvars.iv172.ph, %scalar.ph128.preheader ], [ %indvars.iv.next173.prol, %scalar.ph128.prol ]
  %i.aax = add nsw i64 %i.zz, -1
  %i.aay = icmp eq i64 %indvars.iv172.ph, %i.aax
  br i1 %i.aay, label %.lr.ph60, label %scalar.ph128

.lr.ph60:                                         ; preds = %scalar.ph128.prol.loopexit, %scalar.ph128, %middle.block142
  %i.aaz = getelementptr [4 x i8], ptr %i.o, i64 %i.wz ; 6 uses
  %smax180 = tail call i32 @llvm.smax.i32(i32 %i.u, i32 1)
  %wide.trip.count181 = zext nneg i32 %smax180 to i64 ; 6 uses
  %min.iters.check158 = icmp slt i32 %i.u, 16
  br i1 %min.iters.check158, label %scalar.ph157.preheader, label %vector.memcheck145

vector.memcheck145:                               ; preds = %.lr.ph60
  %i.aba = shl nuw nsw i64 %wide.trip.count181, 2 ; 2 uses
  %scevgep146 = getelementptr i8, ptr %.0666.lcssa, i64 %i.aba ; 2 uses
  %i.abb = shl nsw i64 %i.k, 2                    ; 2 uses
  %i.abc = add nsw i64 %i.k, %i.wz
  %i.abd = shl nsw i64 %i.abc, 2
  %i.abe = getelementptr i8, ptr %i.n, i64 %i.abd
  %scevgep147 = getelementptr i8, ptr %i.abe, i64 4
  %i.abf = getelementptr i8, ptr %i.j, i64 %i.abb
  %scevgep148 = getelementptr i8, ptr %i.abf, i64 4
  %i.abg = getelementptr i8, ptr %i.j, i64 %i.abb
  %i.abh = getelementptr i8, ptr %i.abg, i64 %i.aba
  %scevgep149 = getelementptr i8, ptr %i.abh, i64 4
  %bound0150 = icmp ult ptr %.0666.lcssa, %scevgep147
  %bound1151 = icmp ult ptr %i.aaz, %scevgep146
  %found.conflict152 = and i1 %bound0150, %bound1151
  %bound0153 = icmp ult ptr %.0666.lcssa, %scevgep149
  %bound1154 = icmp ult ptr %scevgep148, %scevgep146
  %found.conflict155 = and i1 %bound0153, %bound1154
  %conflict.rdx156 = or i1 %found.conflict152, %found.conflict155
  br i1 %conflict.rdx156, label %scalar.ph157.preheader, label %vector.ph159

vector.ph159:                                     ; preds = %vector.memcheck145
  %n.vec161 = and i64 %wide.trip.count181, 2147483640 ; 3 uses
  %i.abi = load float, ptr %i.aaz, align 4, !tbaa !16, !alias.scope !141
  %broadcast.splatinsert166 = insertelement <4 x float> poison, float %i.abi, i64 0
  %broadcast.splat167 = shufflevector <4 x float> %broadcast.splatinsert166, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph159
  %index163 = phi i64 [ 0, %vector.ph159 ], [ %index.next170, %vector.body162 ] ; 3 uses
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index163 ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 4
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abj, i64 20
  %wide.load164 = load <4 x float>, ptr %i.abk, align 4, !tbaa !16, !alias.scope !144
  %wide.load165 = load <4 x float>, ptr %i.abl, align 4, !tbaa !16, !alias.scope !144
  %i.abm = fadd <4 x float> %broadcast.splat167, %wide.load164
  %i.abn = fadd <4 x float> %broadcast.splat167, %wide.load165
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %.0666.lcssa, i64 %index163 ; 3 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 16 ; 2 uses
  %wide.load168 = load <4 x float>, ptr %i.abo, align 4, !tbaa !16, !alias.scope !146, !noalias !148
  %wide.load169 = load <4 x float>, ptr %i.abp, align 4, !tbaa !16, !alias.scope !146, !noalias !148
  %i.abq = fadd <4 x float> %wide.load168, %i.abm
  %i.abr = fadd <4 x float> %wide.load169, %i.abn
  store <4 x float> %i.abq, ptr %i.abo, align 4, !tbaa !16, !alias.scope !146, !noalias !148
  store <4 x float> %i.abr, ptr %i.abp, align 4, !tbaa !16, !alias.scope !146, !noalias !148
  %index.next170 = add nuw i64 %index163, 8       ; 2 uses
  %i.abs = icmp eq i64 %index.next170, %n.vec161
  br i1 %i.abs, label %middle.block171, label %vector.body162, !llvm.loop !149

middle.block171:                                  ; preds = %vector.body162
  %cmp.n172 = icmp eq i64 %n.vec161, %wide.trip.count181
  br i1 %cmp.n172, label %.lr.ph62, label %scalar.ph157.preheader

scalar.ph157.preheader:                           ; preds = %vector.memcheck145, %.lr.ph60, %middle.block171
  %indvars.iv177.ph = phi i64 [ 0, %vector.memcheck145 ], [ 0, %.lr.ph60 ], [ %n.vec161, %middle.block171 ] ; 4 uses
  %xtraiter416.a = and i64 %wide.trip.count181, 1
  %lcmp.mod417.not.a = icmp eq i64 %xtraiter416.a, 0
  br i1 %lcmp.mod417.not.a, label %scalar.ph157.prol.loopexit, label %scalar.ph157.prol

scalar.ph157.prol:                                ; preds = %scalar.ph157.preheader
  %i.abt = load float, ptr %i.aaz, align 4, !tbaa !16
  %indvars.iv.next178.prol = or disjoint i64 %indvars.iv177.ph, 1 ; 2 uses
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next178.prol
  %i.abv = load float, ptr %i.abu, align 4, !tbaa !16
  %i.abw = fadd float %i.abt, %i.abv
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %.0666.lcssa, i64 %indvars.iv177.ph ; 2 uses
  %i.aby = load float, ptr %i.abx, align 4, !tbaa !16
  %i.abz = fadd float %i.aby, %i.abw
  store float %i.abz, ptr %i.abx, align 4, !tbaa !16
  br label %scalar.ph157.prol.loopexit

scalar.ph157.prol.loopexit:                       ; preds = %scalar.ph157.prol, %scalar.ph157.preheader
  %indvars.iv177.unr = phi i64 [ %indvars.iv177.ph, %scalar.ph157.preheader ], [ %indvars.iv.next178.prol, %scalar.ph157.prol ]
  %i.aca = add nsw i64 %wide.trip.count181, -1
  %i.acb = icmp eq i64 %indvars.iv177.ph, %i.aca
  br i1 %i.acb, label %.lr.ph62, label %scalar.ph157

scalar.ph128:                                     ; preds = %scalar.ph128.prol.loopexit, %scalar.ph128
  %indvars.iv172 = phi i64 [ %indvars.iv.next173.1, %scalar.ph128 ], [ %indvars.iv172.unr, %scalar.ph128.prol.loopexit ] ; 3 uses
  %i.acc = load float, ptr %i.aaa, align 4, !tbaa !16
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next173
  %i.ace = load float, ptr %i.acd, align 4, !tbaa !16
  %i.acf = fadd float %i.acc, %i.ace
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %indvars.iv172 ; 2 uses
  %i.ach = load float, ptr %i.acg, align 4, !tbaa !16
  %i.aci = fadd float %i.ach, %i.acf
  store float %i.aci, ptr %i.acg, align 4, !tbaa !16
  %i.acj = load float, ptr %i.aaa, align 4, !tbaa !16
  %indvars.iv.next173.1 = add nuw nsw i64 %indvars.iv172, 2 ; 3 uses
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next173.1
  %i.acl = load float, ptr %i.ack, align 4, !tbaa !16
  %i.acm = fadd float %i.acj, %i.acl
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %indvars.iv.next173 ; 2 uses
  %i.aco = load float, ptr %i.acn, align 4, !tbaa !16
  %i.acp = fadd float %i.aco, %i.acm
  store float %i.acp, ptr %i.acn, align 4, !tbaa !16
  %exitcond176.not.1 = icmp eq i64 %indvars.iv.next173.1, %i.zz
  br i1 %exitcond176.not.1, label %.lr.ph60, label %scalar.ph128, !llvm.loop !150

.lr.ph62:                                         ; preds = %scalar.ph157.prol.loopexit, %scalar.ph157, %middle.block171
  %i.acq = getelementptr [4 x i8], ptr %i.o, i64 %i.wz
  %i.acr = getelementptr i8, ptr %i.acq, i64 -4   ; 3 uses
  %smin186 = tail call i32 @llvm.smin.i32(i32 %i.u, i32 1)
  %i.acs = add i32 %8, %smin186
  %i.act = sub i32 %9, %i.acs                     ; 2 uses
  %i.acu = zext i32 %i.act to i64
  %i.acv = add nuw nsw i64 %i.acu, 1              ; 2 uses
  %min.iters.check188 = icmp ult i32 %i.act, 19
  br i1 %min.iters.check188, label %scalar.ph187.preheader, label %vector.memcheck174

vector.memcheck174:                               ; preds = %.lr.ph62
  %i.acw = shl nuw nsw i64 %i.wz, 2               ; 4 uses
  %i.acx = add nsw i64 %i.acw, -4
  %smin = tail call i32 @llvm.smin.i32(i32 %i.u, i32 1)
  %i.acy = add i32 %8, %smin
  %i.acz = sub i32 %9, %i.acy
  %i.ada = zext i32 %i.acz to i64
  %i.adb = shl nuw nsw i64 %i.ada, 2              ; 2 uses
  %i.adc = sub nsw i64 %i.acx, %i.adb
  %scevgep175 = getelementptr i8, ptr %i.ri, i64 %i.adc ; 2 uses
  %scevgep176 = getelementptr i8, ptr %i.ri, i64 %i.acw ; 2 uses
  %i.add = sub nsw i64 %i.acw, %i.adb
  %scevgep177 = getelementptr i8, ptr %.0666.lcssa, i64 %i.add
  %i.ade = getelementptr i8, ptr %.0666.lcssa, i64 %i.acw
  %scevgep178 = getelementptr i8, ptr %i.ade, i64 4
  %bound0179 = icmp ult ptr %scevgep175, %scevgep178
  %bound1180 = icmp ult ptr %scevgep177, %scevgep176
  %found.conflict181 = and i1 %bound0179, %bound1180
  %bound0182 = icmp ult ptr %scevgep175, %i.aaz
  %bound1183 = icmp ult ptr %i.acr, %scevgep176
  %found.conflict184 = and i1 %bound0182, %bound1183
  %conflict.rdx185 = or i1 %found.conflict181, %found.conflict184
  br i1 %conflict.rdx185, label %scalar.ph187.preheader, label %vector.ph189

vector.ph189:                                     ; preds = %vector.memcheck174
  %n.vec191 = and i64 %i.acv, 8589934588          ; 3 uses
  %broadcast.splatinsert192 = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat193 = shufflevector <4 x i32> %broadcast.splatinsert192, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.adf = sub nsw i64 %i.wz, %n.vec191
  %i.adg = load float, ptr %i.acr, align 4, !tbaa !16, !alias.scope !151
  %broadcast.splatinsert200 = insertelement <4 x float> poison, float %i.adg, i64 0
  %i.adh = shufflevector <4 x float> %broadcast.splatinsert200, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph189
  %index195 = phi i64 [ 0, %vector.ph189 ], [ %index.next204, %vector.body194 ] ; 2 uses
  %i.adi = sub i64 %i.wz, %index195               ; 3 uses
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %.0666.lcssa, i64 %i.adi
  %i.adk = getelementptr inbounds i8, ptr %i.adj, i64 -12
  %wide.load197 = load <4 x float>, ptr %i.adk, align 4, !tbaa !16, !alias.scope !154
  %i.adl = getelementptr [4 x i8], ptr %i.ri, i64 %i.adi
  %i.adm = getelementptr i8, ptr %i.adl, i64 -16
  %reverse203 = fadd <4 x float> %wide.load197, %i.adh
  store <4 x float> %reverse203, ptr %i.adm, align 4, !tbaa !16, !alias.scope !156, !noalias !158
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %i.adi
  %i.ado = getelementptr inbounds i8, ptr %i.adn, i64 -12
  store <4 x i32> %broadcast.splat193, ptr %i.ado, align 4, !tbaa !4
  %index.next204 = add nuw i64 %index195, 4       ; 2 uses
  %i.adp = icmp eq i64 %index.next204, %n.vec191
  br i1 %i.adp, label %middle.block205, label %vector.body194, !llvm.loop !159

middle.block205:                                  ; preds = %vector.body194
  %cmp.n206 = icmp eq i64 %i.acv, %n.vec191
  br i1 %cmp.n206, label %.preheader8, label %scalar.ph187.preheader

scalar.ph187.preheader:                           ; preds = %vector.memcheck174, %.lr.ph62, %middle.block205
  %indvars.iv183.ph = phi i64 [ %i.wz, %vector.memcheck174 ], [ %i.wz, %.lr.ph62 ], [ %i.adf, %middle.block205 ]
  br label %scalar.ph187

scalar.ph157:                                     ; preds = %scalar.ph157.prol.loopexit, %scalar.ph157
  %indvars.iv177 = phi i64 [ %indvars.iv.next178.1, %scalar.ph157 ], [ %indvars.iv177.unr, %scalar.ph157.prol.loopexit ] ; 3 uses
  %i.adq = load float, ptr %i.aaz, align 4, !tbaa !16
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next178
  %i.ads = load float, ptr %i.adr, align 4, !tbaa !16
  %i.adt = fadd float %i.adq, %i.ads
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %.0666.lcssa, i64 %indvars.iv177 ; 2 uses
  %i.adv = load float, ptr %i.adu, align 4, !tbaa !16
  %i.adw = fadd float %i.adv, %i.adt
  store float %i.adw, ptr %i.adu, align 4, !tbaa !16
  %i.adx = load float, ptr %i.aaz, align 4, !tbaa !16
  %indvars.iv.next178.1 = add nuw nsw i64 %indvars.iv177, 2 ; 3 uses
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next178.1
  %i.adz = load float, ptr %i.ady, align 4, !tbaa !16
  %i.aea = fadd float %i.adx, %i.adz
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %.0666.lcssa, i64 %indvars.iv.next178 ; 2 uses
  %i.aec = load float, ptr %i.aeb, align 4, !tbaa !16
  %i.aed = fadd float %i.aec, %i.aea
  store float %i.aed, ptr %i.aeb, align 4, !tbaa !16
  %exitcond182.not.1 = icmp eq i64 %indvars.iv.next178.1, %wide.trip.count181
  br i1 %exitcond182.not.1, label %.lr.ph62, label %scalar.ph157, !llvm.loop !160

.preheader8:                                      ; preds = %scalar.ph187, %middle.block205
  %i.aee = add nsw i32 %i.u, -1
  %i.aef = zext nneg i32 %i.aee to i64            ; 2 uses
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.aef
  %i.aeh = zext nneg i32 %i.v to i64              ; 4 uses
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %i.aeh
  %i.aej = getelementptr inbounds i8, ptr %i.aei, i64 -8
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %i.aeh
  %i.ael = getelementptr inbounds i8, ptr %i.aek, i64 -8
  %i.aem = add nsw i32 %i.xe, -1                  ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.qw, i64 4
  %smax197 = tail call i32 @llvm.smax.i32(i32 %i.sx, i32 1) ; 3 uses
  %i.aeo = zext i32 %i.xe to i64                  ; 2 uses
  %wide.trip.count198 = zext nneg i32 %smax197 to i64 ; 2 uses
  %i.aep = icmp sgt i32 %i.s, 0
  br i1 %i.aep, label %.lr.ph72.lr.ph, label %.loopexit

.lr.ph72.lr.ph:                                   ; preds = %.preheader8
  %i.aeq = zext nneg i32 %i.s to i64
  %xtraiter419 = and i64 %i.wz, 1
  %i.aer = and i64 %i.wz, 2147483646
  %i.aes = add nsw i64 %i.aer, -4
  %lcmp.mod420.not = icmp eq i64 %xtraiter419, 0
  %lcmp.mod423 = trunc i32 %i.u to i1
  %xtraiter424 = and i64 %wide.trip.count198, 1
  %i.aet = icmp eq i32 %smax197, 1
  %unroll_iter428 = and i64 %wide.trip.count198, 2147483646
  %lcmp.mod425.not = icmp eq i64 %xtraiter424, 0
  %lcmp.mod427 = trunc i32 %smax197 to i1
  br label %.lr.ph72

scalar.ph187:                                     ; preds = %scalar.ph187.preheader, %scalar.ph187
  %indvars.iv183 = phi i64 [ %indvars.iv.next184, %scalar.ph187 ], [ %indvars.iv183.ph, %scalar.ph187.preheader ] ; 5 uses
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %.0666.lcssa, i64 %indvars.iv183
  %i.aev = load float, ptr %i.aeu, align 4, !tbaa !16
  %i.aew = load float, ptr %i.acr, align 4, !tbaa !16
  %i.aex = fadd float %i.aev, %i.aew
  %i.aey = getelementptr [4 x i8], ptr %i.ri, i64 %indvars.iv183
  %i.aez = getelementptr i8, ptr %i.aey, i64 -4
  store float %i.aex, ptr %i.aez, align 4, !tbaa !16
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %indvars.iv183
  store i32 %i.s, ptr %i.afa, align 4, !tbaa !4
  %indvars.iv.next184 = add nsw i64 %indvars.iv183, -1
  %i.afb = trunc nuw i64 %indvars.iv183 to i32
  %i.afc = icmp sgt i32 %i.afb, 1
  br i1 %i.afc, label %scalar.ph187, label %.preheader8, !llvm.loop !161

bb.z:                                             ; preds = %bb.ar
  %i.afd = trunc nuw i64 %indvars.iv.next20120 to i32 ; 2 uses
  %i.afe = icmp sgt i32 %i.afd, 0
  br i1 %i.afe, label %.lr.ph72, label %.loopexit, !llvm.loop !162

.lr.ph72:                                         ; preds = %.lr.ph72.lr.ph, %bb.z
  %i.aff = phi i32 [ %i.s, %.lr.ph72.lr.ph ], [ %i.afd, %bb.z ] ; 3 uses
  %.019 = phi i32 [ %i.s, %.lr.ph72.lr.ph ], [ %.1, %bb.z ]
  %.061918 = phi float [ -1.000000e+07, %.lr.ph72.lr.ph ], [ %.1620, %bb.z ] ; 2 uses
  %.064117 = phi i32 [ 0, %.lr.ph72.lr.ph ], [ %.2643, %bb.z ]
  %.064516 = phi i32 [ 0, %.lr.ph72.lr.ph ], [ %.2647, %bb.z ] ; 2 uses
  %.065015 = phi i32 [ 0, %.lr.ph72.lr.ph ], [ %.5655, %bb.z ]
  %.166714 = phi ptr [ %.0666.lcssa, %.lr.ph72.lr.ph ], [ %.166913, %bb.z ] ; 3 uses
  %.166913 = phi ptr [ %.0668.lcssa, %.lr.ph72.lr.ph ], [ %.166714, %bb.z ] ; 4 uses
  %indvars.iv20012 = phi i64 [ %i.aeq, %.lr.ph72.lr.ph ], [ %indvars.iv.next20120, %bb.z ] ; 5 uses
  %indvars.iv.next20120 = add nsw i64 %indvars.iv20012, -1 ; 4 uses
  %indvars21 = trunc i64 %indvars.iv.next20120 to i32 ; 6 uses
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %indvars.iv20012
  %i.afh = load float, ptr %i.afg, align 4, !tbaa !16
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %.166714, i64 %i.wz ; 2 uses
  store float %i.afh, ptr %i.afi, align 4, !tbaa !16
  tail call fastcc void @match_calc(ptr noundef %.166913, ptr noundef %i.rq, ptr noundef %i.rp, i32 noundef %indvars21, i32 noundef %i.v, ptr noundef %i.rn, ptr noundef %i.ro, i32 noundef 0)
  %i.afj = and i64 %indvars.iv.next20120, 4294967295 ; 3 uses
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %i.afj
  %i.afl = load float, ptr %i.afk, align 4, !tbaa !16
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %.166913, i64 %i.wz
  store float %i.afl, ptr %i.afm, align 4, !tbaa !16
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %.166714, i64 %i.aeh
  %.167963 = getelementptr inbounds i8, ptr %i.afn, i64 -4
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %.166913, i64 %i.aeh
  %i.afp = getelementptr inbounds i8, ptr %i.afo, i64 -8
  %i.afq = load float, ptr %i.afi, align 4, !tbaa !16
  %i.afr = load float, ptr %i.aeg, align 4, !tbaa !16
  %i.afs = fadd float %i.afq, %i.afr
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv20012
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.afj
  %i.afv = icmp eq i32 %.064516, %indvars21
  %i.afw = icmp eq i64 %indvars.iv20012, %i.aeo   ; 2 uses
  %or.cond719 = or i1 %i.afw, %i.afv
  %i.afx = icmp eq i32 %indvars21, %i.xe
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph72, %bb.ak
  %indvars.iv186 = phi i64 [ %i.aef, %.lr.ph72 ], [ %indvars.iv.next187, %bb.ak ] ; 8 uses
  %.167970 = phi ptr [ %.167963, %.lr.ph72 ], [ %.1679, %bb.ak ] ; 2 uses
  %.167168 = phi ptr [ %i.ael, %.lr.ph72 ], [ %i.ahg, %bb.ak ] ; 3 uses
  %.267467 = phi i32 [ %i.u, %.lr.ph72 ], [ %.3675, %bb.ak ] ; 2 uses
  %.167766 = phi ptr [ %i.aej, %.lr.ph72 ], [ %i.ahf, %bb.ak ] ; 4 uses
  %.168165 = phi ptr [ %i.afp, %.lr.ph72 ], [ %i.ahh, %bb.ak ] ; 3 uses
  %.268464 = phi float [ %i.afs, %.lr.ph72 ], [ %.3685, %bb.ak ] ; 3 uses
  %i.afy = load float, ptr %.167970, align 4, !tbaa !16 ; 4 uses
  %i.afz = add nuw nsw i64 %indvars.iv186, 1      ; 3 uses
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.afz
  %i.agb = load float, ptr %i.aga, align 4, !tbaa !16
  %i.agc = fadd float %.268464, %i.agb            ; 2 uses
  %i.agd = fcmp ogt float %i.agc, %i.afy          ; 2 uses
  %.2659 = select i1 %i.agd, float %i.agc, float %i.afy ; 2 uses
  %i.age = trunc nuw i64 %i.afz to i32            ; 3 uses
  %.0626 = select i1 %i.agd, i32 %.267467, i32 %i.age
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv186
  %i.agg = load float, ptr %i.agf, align 4, !tbaa !16
  %i.agh = fadd float %i.afy, %i.agg              ; 2 uses
  %i.agi = fcmp ult float %i.agh, %.268464        ; 2 uses
  %.3685 = select i1 %i.agi, float %.268464, float %i.agh ; 2 uses
  %.3675 = select i1 %i.agi, i32 %.267467, i32 %i.age
  %i.agj = load float, ptr %.167766, align 4, !tbaa !16 ; 2 uses
  %i.agk = load float, ptr %i.aft, align 4, !tbaa !16
  %i.agl = fadd float %i.agj, %i.agk              ; 2 uses
  %i.agm = fcmp ogt float %i.agl, %.2659
  br i1 %i.agm, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.agn = load i32, ptr %.167168, align 4, !tbaa !4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.3660 = phi float [ %i.agl, %bb.ab ], [ %.2659, %bb.aa ] ; 2 uses
  %.1629 = phi i32 [ %i.agn, %bb.ab ], [ %i.aff, %bb.aa ]
  %.1627 = phi i32 [ %i.age, %bb.ab ], [ %.0626, %bb.aa ]
  %i.ago = load float, ptr %i.afu, align 4, !tbaa !16
  %i.agp = fadd float %i.afy, %i.ago              ; 2 uses
  %i.agq = fcmp ult float %i.agp, %i.agj
  br i1 %i.agq, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store float %i.agp, ptr %.167766, align 4, !tbaa !16
  store i32 %i.aff, ptr %.167168, align 4, !tbaa !4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  br i1 %or.cond719, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %indvars.iv186
  store i32 %.1629, ptr %i.agr, align 4, !tbaa !4
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %indvars.iv186
  store i32 %.1627, ptr %i.ags, align 4, !tbaa !4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  br i1 %i.afx, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %i.qw, i64 %indvars.iv186 ; 2 uses
  %i.agu = load float, ptr %i.agt, align 4, !tbaa !16
  %i.agv = fadd float %.3660, %i.agu
  store float %i.agv, ptr %i.agt, align 4, !tbaa !16
  %i.agw = load float, ptr %.167766, align 4, !tbaa !16
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %i.afz ; 2 uses
  %i.agy = load float, ptr %i.agx, align 4, !tbaa !16
  %i.agz = fadd float %i.agw, %i.agy
  store float %i.agz, ptr %i.agx, align 4, !tbaa !16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  br i1 %i.afw, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv186 ; 2 uses
end_hunk_1
begin_hunk_2_@match_calc:bb.a
  %i.kt = sitofp i32 %i.ks to float
  %i.ku = tail call float @llvm.fmuladd.f32(float %i.kt, float %i.bq, float %i.kr)
  store float %i.ku, ptr %i.hu, align 4, !tbaa !16
  %.not6170 = icmp eq i32 %4, 0
  br i1 %.not6170, label %._crit_edge75, label %.lr.ph74

.lr.ph74:                                         ; preds = %scalar.ph, %._crit_edge
  %.in = phi i32 [ %i.kv, %._crit_edge ], [ %4, %scalar.ph ]
  %.05073 = phi ptr [ %i.lm, %._crit_edge ], [ %6, %scalar.ph ] ; 2 uses
  %.05172 = phi ptr [ %i.ln, %._crit_edge ], [ %5, %scalar.ph ] ; 2 uses
  %.05271 = phi ptr [ %i.ll, %._crit_edge ], [ %0, %scalar.ph ] ; 3 uses
  %i.kv = add nsw i32 %.in, -1                    ; 2 uses
  store float 0.000000e+00, ptr %.05271, align 4, !tbaa !16
  %i.kw = load ptr, ptr %.05073, align 8, !tbaa !81 ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !4  ; 2 uses
  %i.ky = icmp sgt i32 %i.kx, -1
  br i1 %i.ky, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph74
  %i.kz = load ptr, ptr %.05172, align 8, !tbaa !34
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv89 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next90, %bb.h ] ; 2 uses
  %i.la = phi float [ 0.000000e+00, %.lr.ph ], [ %i.lh, %bb.h ]
  %i.lb = phi i32 [ %i.kx, %.lr.ph ], [ %i.lj, %bb.h ]
  %i.lc = zext nneg i32 %i.lb to i64
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lc
  %i.le = load float, ptr %i.ld, align 4, !tbaa !16
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv89
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !16
  %i.lh = tail call float @llvm.fmuladd.f32(float %i.le, float %i.lg, float %i.la) ; 2 uses
  store float %i.lh, ptr %.05271, align 4, !tbaa !16
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv.next90
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !4  ; 2 uses
  %i.lk = icmp sgt i32 %i.lj, -1
  br i1 %i.lk, label %bb.h, label %._crit_edge, !llvm.loop !177

._crit_edge:                                      ; preds = %bb.h, %.lr.ph74
  %i.ll = getelementptr inbounds nuw i8, ptr %.05271, i64 4
  %i.lm = getelementptr inbounds nuw i8, ptr %.05073, i64 8
  %i.ln = getelementptr inbounds nuw i8, ptr %.05172, i64 8
  %.not61 = icmp eq i32 %i.kv, 0
  br i1 %.not61, label %._crit_edge75, label %.lr.ph74, !llvm.loop !178

._crit_edge75:                                    ; preds = %._crit_edge, %scalar.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare void @FreeIntVec(ptr noundef) local_unnamed_addr #2

declare void @FreeIntMtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #6

declare void @gapireru(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { cold nounwind }
attributes #16 = { cold }
attributes #17 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = !{!17, !17, i64 0}
!17 = !{!"float", !6, i64 0}
!18 = !{!19}
!19 = distinct !{!19, !20}
!20 = distinct !{!20, !"LVerDomain"}
!21 = !{!22}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !14, !24, !25}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{!27}
!27 = distinct !{!27, !28}
!28 = distinct !{!28, !"LVerDomain"}
!29 = !{!30}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !14, !24, !25}
!32 = distinct !{!32, !14, !24}
!33 = distinct !{!33, !14, !24}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 float", !10, i64 0}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !14}
!39 = distinct !{!39, !14}
!40 = !{!6, !6, i64 0}
!41 = distinct !{!41, !14}
!42 = distinct !{!42, !14}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14, !24, !25}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = distinct !{!47, !14, !24, !25}
!48 = distinct !{!48, !46}
!49 = distinct !{!49, !14, !24}
!50 = distinct !{!50, !14, !24}
!51 = !{!52}
!52 = distinct !{!52, !53}
!53 = distinct !{!53, !"LVerDomain"}
!54 = !{!55}
!55 = distinct !{!55, !53}
!56 = !{!57}
!57 = distinct !{!57, !53}
!58 = !{!52, !55}
!59 = distinct !{!59, !14, !24, !25}
!60 = !{!61}
!61 = distinct !{!61, !62}
!62 = distinct !{!62, !"LVerDomain"}
!63 = !{!64}
!64 = distinct !{!64, !62}
!65 = !{!66}
!66 = distinct !{!66, !62}
!67 = !{!61, !64}
!68 = distinct !{!68, !14, !24, !25}
!69 = distinct !{!69, !14, !24}
!70 = !{!71}
!71 = distinct !{!71, !72}
!72 = distinct !{!72, !"LVerDomain"}
!73 = !{!74}
!74 = distinct !{!74, !72}
!75 = !{!76}
!76 = distinct !{!76, !72}
!77 = !{!74, !71}
!78 = distinct !{!78, !14, !24, !25}
!79 = distinct !{!79, !14, !24}
!80 = distinct !{!80, !14, !24}
!81 = !{!82, !82, i64 0}
!82 = !{!"p1 int", !10, i64 0}
!83 = distinct !{!83, !14}
!84 = distinct !{!84, !14}
!85 = distinct !{!85, !46}
!86 = distinct !{!86, !14, !24, !25}
!87 = distinct !{!87, !14}
!88 = distinct !{!88, !14, !25, !24}
!89 = distinct !{!89, !14, !24, !25}
!90 = !{!"branch_weights", i32 8, i32 24}
!91 = distinct !{!91, !14, !24, !25}
!92 = distinct !{!92, !46}
!93 = distinct !{!93, !14, !24}
!94 = distinct !{!94, !14, !24, !25}
!95 = distinct !{!95, !46}
!96 = distinct !{!96, !14, !24}
!97 = distinct !{!97, !14}
!98 = distinct !{!98, !14}
!99 = distinct !{!99, !14}
!100 = !{!101}
!101 = distinct !{!101, !102}
!102 = distinct !{!102, !"LVerDomain"}
!103 = !{!104}
!104 = distinct !{!104, !102}
!105 = !{!106}
!106 = distinct !{!106, !102}
!107 = !{!101, !104}
!108 = distinct !{!108, !14, !24, !25}
!109 = !{!110}
!110 = distinct !{!110, !111}
!111 = distinct !{!111, !"LVerDomain"}
!112 = !{!113}
!113 = distinct !{!113, !111}
!114 = !{!115}
!115 = distinct !{!115, !111}
!116 = !{!110, !113}
!117 = distinct !{!117, !14, !24, !25}
!118 = distinct !{!118, !14, !24}
!119 = !{!120}
!120 = distinct !{!120, !121}
!121 = distinct !{!121, !"LVerDomain"}
!122 = !{!123}
!123 = distinct !{!123, !121}
!124 = !{!125}
!125 = distinct !{!125, !121}
!126 = !{!123, !120}
!127 = distinct !{!127, !14, !24, !25}
!128 = distinct !{!128, !14, !24}
!129 = distinct !{!129, !14, !24}
!130 = distinct !{!130, !14}
!131 = distinct !{!131, !14}
!132 = !{!133}
!133 = distinct !{!133, !134}
!134 = distinct !{!134, !"LVerDomain"}
!135 = !{!136}
!136 = distinct !{!136, !134}
!137 = !{!138}
!138 = distinct !{!138, !134}
!139 = !{!133, !136}
!140 = distinct !{!140, !14, !24, !25}
!141 = !{!142}
!142 = distinct !{!142, !143}
!143 = distinct !{!143, !"LVerDomain"}
!144 = !{!145}
!145 = distinct !{!145, !143}
!146 = !{!147}
!147 = distinct !{!147, !143}
!148 = !{!142, !145}
!149 = distinct !{!149, !14, !24, !25}
!150 = distinct !{!150, !14, !24}
!151 = !{!152}
!152 = distinct !{!152, !153}
!153 = distinct !{!153, !"LVerDomain"}
!154 = !{!155}
!155 = distinct !{!155, !153}
!156 = !{!157}
!157 = distinct !{!157, !153}
!158 = !{!155, !152}
!159 = distinct !{!159, !14, !24, !25}
!160 = distinct !{!160, !14, !24}
!161 = distinct !{!161, !14, !24}
!162 = distinct !{!162, !14}
!163 = distinct !{!163, !14}
!164 = distinct !{!164, !14}
!165 = distinct !{!165, !14}
!166 = distinct !{!166, !14}
!167 = distinct !{!167, !14}
!168 = distinct !{!168, !14}
!169 = distinct !{!169, !14}
!170 = distinct !{!170, !14, !24, !25}
!171 = distinct !{!171, !14, !24, !25}
!172 = distinct !{!172, !14, !25, !24}
!173 = distinct !{!173, !14, !25, !24}
!174 = distinct !{!174, !14}
!175 = distinct !{!175, !14}
!176 = distinct !{!176, !14, !24, !25}
!177 = distinct !{!177, !14}
!178 = distinct !{!178, !14}
end_hunk_2
