Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaSimBase?download=true
inline.NumInlined: 1796
inline.NumDeleted: 187
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 107
loop-unroll.NumUnrolled: 129
begin_hunk_0_@Gia_ManCheckSimEquiv:bb.a
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !72
  %i.kr = xor i64 %i.kq, %i.jn
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv.next.i.i148.2
  store i64 %i.kr, ptr %i.ks, align 8, !tbaa !72
  %indvars.iv.next.i.i148.3 = add nuw nsw i64 %indvars.iv.i.i147, 4 ; 2 uses
  %niter538.next.3 = add i64 %niter538, 4         ; 2 uses
  %niter538.ncmp.3 = icmp eq i64 %niter538.next.3, %unroll_iter537
  br i1 %niter538.ncmp.3, label %Gia_ManSimPatSimPo.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i146, !llvm.loop !256

Gia_ManSimPatSimPo.exit.i.loopexit.unr-lcssa:     ; preds = %.lr.ph.i.i146
  br i1 %lcmp.mod535.not, label %Gia_ManSimPatSimPo.exit.i, label %.lr.ph.i.i146.epil.preheader

.lr.ph.i.i146.epil.preheader:                     ; preds = %Gia_ManSimPatSimPo.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i146.preheader511
  %indvars.iv.i.i147.epil.init = phi i64 [ 0, %.lr.ph.i.i146.preheader511 ], [ %indvars.iv.next.i.i148.3, %Gia_ManSimPatSimPo.exit.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod536)
  br label %.lr.ph.i.i146.epil

.lr.ph.i.i146.epil:                               ; preds = %.lr.ph.i.i146.epil, %.lr.ph.i.i146.epil.preheader
  %indvars.iv.i.i147.epil = phi i64 [ %indvars.iv.next.i.i148.epil, %.lr.ph.i.i146.epil ], [ %indvars.iv.i.i147.epil.init, %.lr.ph.i.i146.epil.preheader ] ; 3 uses
  %epil.iter534 = phi i64 [ %epil.iter534.next, %.lr.ph.i.i146.epil ], [ 0, %.lr.ph.i.i146.epil.preheader ]
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv.i.i147.epil
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !72
  %i.kv = xor i64 %i.ku, %i.jn
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv.i.i147.epil
  store i64 %i.kv, ptr %i.kw, align 8, !tbaa !72
  %indvars.iv.next.i.i148.epil = add nuw nsw i64 %indvars.iv.i.i147.epil, 1
  %epil.iter534.next = add i64 %epil.iter534, 1   ; 2 uses
  %epil.iter534.cmp.not = icmp eq i64 %epil.iter534.next, %xtraiter533
  br i1 %epil.iter534.cmp.not, label %Gia_ManSimPatSimPo.exit.i, label %.lr.ph.i.i146.epil, !llvm.loop !257

Gia_ManSimPatSimPo.exit.i:                        ; preds = %vector.body404, %Gia_ManSimPatSimPo.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i146.epil, %bb.h
  %.val35.i = load i64, ptr %i.jc, align 4        ; 2 uses
  %i.kx = trunc i64 %.val35.i to i32
  %i.ky = lshr i64 %.val35.i, 29
  %i.kz = and i64 %i.ky, 1
  %i.la = getelementptr inbounds nuw [8 x i8], ptr @__const.Gia_SimRsbSimAndCareSet.pComps, i64 %i.kz
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !72 ; 6 uses
  %i.lc = and i32 %i.kx, 536870911
  %i.ld = sub nsw i32 %i.ja, %i.lc
  %i.le = shl i32 %i.ld, %i.aj
  %i.lf = sext i32 %i.le to i64                   ; 2 uses
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.lf ; 6 uses
  br i1 %i.ih, label %.lr.ph.i41.i.preheader, label %.loopexit

.lr.ph.i41.i.preheader:                           ; preds = %Gia_ManSimPatSimPo.exit.i
  br i1 %min.iters.check383, label %.lr.ph.i41.i.preheader509, label %vector.memcheck380

.lr.ph.i41.i.preheader509:                        ; preds = %vector.memcheck380, %.lr.ph.i41.i.preheader
  br i1 %i.ij, label %.lr.ph.i41.i.epil.preheader, label %.lr.ph.i41.i

vector.memcheck380:                               ; preds = %.lr.ph.i41.i.preheader
  %i.lh = sub nsw i64 %i.jh, %i.lf
  %i.li = shl nsw i64 %i.lh, 3
  %i.lj = add nsw i64 %i.li, -1
  %diff.check381 = icmp ult i64 %i.lj, 31
  br i1 %diff.check381, label %.lr.ph.i41.i.preheader509, label %vector.ph384

vector.ph384:                                     ; preds = %vector.memcheck380
  %broadcast.splatinsert386 = insertelement <2 x i64> poison, i64 %i.lb, i64 0
  %broadcast.splat387 = shufflevector <2 x i64> %broadcast.splatinsert386, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body388

vector.body388:                                   ; preds = %vector.body388, %vector.ph384
  %index389 = phi i64 [ 0, %vector.ph384 ], [ %index.next392, %vector.body388 ] ; 3 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %index389 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %wide.load390 = load <2 x i64>, ptr %i.lk, align 8, !tbaa !72
  %wide.load391 = load <2 x i64>, ptr %i.ll, align 8, !tbaa !72
  %i.lm = xor <2 x i64> %wide.load390, %broadcast.splat387
  %i.ln = xor <2 x i64> %wide.load391, %broadcast.splat387
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %index389 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  store <2 x i64> %i.lm, ptr %i.lo, align 8, !tbaa !72
  store <2 x i64> %i.ln, ptr %i.lp, align 8, !tbaa !72
  %index.next392 = add nuw i64 %index389, 4       ; 2 uses
  %i.lq = icmp eq i64 %index.next392, %n.vec385
  br i1 %i.lq, label %.lr.ph.i48.i.preheader, label %vector.body388, !llvm.loop !258

.lr.ph.i41.i:                                     ; preds = %.lr.ph.i41.i.preheader509, %.lr.ph.i41.i
  %indvars.iv.i42.i = phi i64 [ %indvars.iv.next.i43.i.3, %.lr.ph.i41.i ], [ 0, %.lr.ph.i41.i.preheader509 ] ; 6 uses
  %niter544 = phi i64 [ %niter544.next.3, %.lr.ph.i41.i ], [ 0, %.lr.ph.i41.i.preheader509 ]
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %indvars.iv.i42.i
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !72
  %i.lt = xor i64 %i.ls, %i.lb
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %indvars.iv.i42.i
  store i64 %i.lt, ptr %i.lu, align 8, !tbaa !72
  %indvars.iv.next.i43.i = or disjoint i64 %indvars.iv.i42.i, 1 ; 2 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %indvars.iv.next.i43.i
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !72
  %i.lx = xor i64 %i.lw, %i.lb
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %indvars.iv.next.i43.i
  store i64 %i.lx, ptr %i.ly, align 8, !tbaa !72
  %indvars.iv.next.i43.i.1 = or disjoint i64 %indvars.iv.i42.i, 2 ; 2 uses
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %indvars.iv.next.i43.i.1
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !72
  %i.mb = xor i64 %i.ma, %i.lb
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %indvars.iv.next.i43.i.1
  store i64 %i.mb, ptr %i.mc, align 8, !tbaa !72
  %indvars.iv.next.i43.i.2 = or disjoint i64 %indvars.iv.i42.i, 3 ; 2 uses
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %indvars.iv.next.i43.i.2
  %i.me = load i64, ptr %i.md, align 8, !tbaa !72
  %i.mf = xor i64 %i.me, %i.lb
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %indvars.iv.next.i43.i.2
  store i64 %i.mf, ptr %i.mg, align 8, !tbaa !72
  %indvars.iv.next.i43.i.3 = add nuw nsw i64 %indvars.iv.i42.i, 4 ; 2 uses
  %niter544.next.3 = add i64 %niter544, 4         ; 2 uses
  %niter544.ncmp.3 = icmp eq i64 %niter544.next.3, %unroll_iter543
  br i1 %niter544.ncmp.3, label %.lr.ph.i48.i.preheader.loopexit.unr-lcssa, label %.lr.ph.i41.i, !llvm.loop !259

.lr.ph.i48.i.preheader.loopexit.unr-lcssa:        ; preds = %.lr.ph.i41.i
  br i1 %lcmp.mod541.not, label %.lr.ph.i48.i.preheader, label %.lr.ph.i41.i.epil.preheader

.lr.ph.i41.i.epil.preheader:                      ; preds = %.lr.ph.i48.i.preheader.loopexit.unr-lcssa, %.lr.ph.i41.i.preheader509
  %indvars.iv.i42.i.epil.init = phi i64 [ 0, %.lr.ph.i41.i.preheader509 ], [ %indvars.iv.next.i43.i.3, %.lr.ph.i48.i.preheader.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod542)
  br label %.lr.ph.i41.i.epil

.lr.ph.i41.i.epil:                                ; preds = %.lr.ph.i41.i.epil, %.lr.ph.i41.i.epil.preheader
  %indvars.iv.i42.i.epil = phi i64 [ %indvars.iv.next.i43.i.epil, %.lr.ph.i41.i.epil ], [ %indvars.iv.i42.i.epil.init, %.lr.ph.i41.i.epil.preheader ] ; 3 uses
  %epil.iter540 = phi i64 [ %epil.iter540.next, %.lr.ph.i41.i.epil ], [ 0, %.lr.ph.i41.i.epil.preheader ]
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %indvars.iv.i42.i.epil
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !72
  %i.mj = xor i64 %i.mi, %i.lb
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %indvars.iv.i42.i.epil
  store i64 %i.mj, ptr %i.mk, align 8, !tbaa !72
  %indvars.iv.next.i43.i.epil = add nuw nsw i64 %indvars.iv.i42.i.epil, 1
  %epil.iter540.next = add i64 %epil.iter540, 1   ; 2 uses
  %epil.iter540.cmp.not = icmp eq i64 %epil.iter540.next, %xtraiter539
  br i1 %epil.iter540.cmp.not, label %.lr.ph.i48.i.preheader, label %.lr.ph.i41.i.epil, !llvm.loop !260

.lr.ph.i48.i.preheader:                           ; preds = %vector.body388, %.lr.ph.i48.i.preheader.loopexit.unr-lcssa, %.lr.ph.i41.i.epil
  br label %.lr.ph.i48.i

bb.i:                                             ; preds = %.lr.ph.i48.i
  %indvars.iv.next.i50.i = add nuw nsw i64 %indvars.iv.i49.i, 1 ; 2 uses
  %exitcond.not.i51.i = icmp eq i64 %indvars.iv.next.i50.i, %wide.trip.count.i.i145
  br i1 %exitcond.not.i51.i, label %.loopexit, label %.lr.ph.i48.i, !llvm.loop !7

.lr.ph.i48.i:                                     ; preds = %.lr.ph.i48.i.preheader, %bb.i
  %indvars.iv.i49.i = phi i64 [ %indvars.iv.next.i50.i, %bb.i ], [ 0, %.lr.ph.i48.i.preheader ] ; 3 uses
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv.i49.i
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !72
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %indvars.iv.i49.i
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !72
  %.not.i.i143 = icmp eq i64 %i.mm, %i.mo
  br i1 %.not.i.i143, label %bb.i, label %Gia_ManComparePair.exit

Gia_ManComparePair.exit:                          ; preds = %.lr.ph.i48.i
  %i.mp = trunc nuw nsw i64 %indvars.iv271 to i32
  %i.mq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.mp) ; 0 uses
  %i.mr = load i32, ptr %i.as, align 8, !tbaa !84 ; 2 uses
  %i.ms = icmp sgt i32 %i.mr, 0
  %i.mt = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.pre.i.i = load ptr, ptr %i.mt, align 8, !tbaa !85 ; 3 uses
  br i1 %i.ms, label %.lr.ph.i.i151.preheader, label %._crit_edge.i.i

.lr.ph.i.i151.preheader:                          ; preds = %Gia_ManComparePair.exit
  %i.mu = zext nneg i32 %i.mr to i64
  br label %.lr.ph.i.i151

.lr.ph.i.i151:                                    ; preds = %.lr.ph.i.i151.preheader, %bb.k
  %indvars.iv.i.i152 = phi i64 [ %indvars.iv.next.i.i153, %bb.k ], [ 0, %.lr.ph.i.i151.preheader ] ; 2 uses
  %i.mv = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i152
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8 ; 2 uses
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !61 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.mx, null
  br i1 %.not15.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i151
  call void @free(ptr noundef nonnull %i.mx) #35
  store ptr null, ptr %i.mw, align 8, !tbaa !61
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i151
  %indvars.iv.next.i.i153 = add nuw nsw i64 %indvars.iv.i.i152, 1 ; 2 uses
  %exitcond276.not = icmp eq i64 %indvars.iv.next.i.i153, %i.mu
  br i1 %exitcond276.not, label %Vec_WecFree.exit, label %.lr.ph.i.i151, !llvm.loop !8

._crit_edge.i.i:                                  ; preds = %Gia_ManComparePair.exit
  %.not.i.i150 = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i150, label %Vec_WrdFree.exit.sink.split.sink.split, label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %bb.k, %._crit_edge.i.i
  call void @free(ptr noundef nonnull %.pre.i.i) #35
  call void @free(ptr noundef nonnull %i.as) #35
  %.not.i154 = icmp eq ptr %i.ap, null
  br i1 %.not.i154, label %Vec_WrdFree.exit, label %Vec_WrdFree.exit.sink.split

.loopexit:                                        ; preds = %bb.i, %Gia_ManSimPatSimPo.exit.i
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1 ; 2 uses
  %exitcond275.not = icmp eq i64 %indvars.iv.next272, %wide.trip.count274
  br i1 %exitcond275.not, label %.preheader, label %bb.h, !llvm.loop !261

bb.l:                                             ; preds = %.lr.ph258, %.thread
  %.095257 = phi i32 [ 0, %.lr.ph258 ], [ %i.wz, %.thread ] ; 8 uses
  %.097256 = phi i32 [ 0, %.lr.ph258 ], [ %.198, %.thread ]
  %.not108 = icmp eq i32 %.095257, 0
  br i1 %.not108, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.my = add nsw i32 %.095257, -1                ; 2 uses
  %4 = xor i32 %i.my, %.095257
  %5 = lshr i32 %4, 1
  %i.mz = xor i32 %.095257, %5
  %i.na = xor i32 %i.mz, %i.my
  %i.nb = call fastcc i32 @Abc_TtSuppFindFirst(i32 noundef %i.na)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.nc = phi i32 [ %i.nb, %bb.m ], [ 0, %bb.l ]
  %i.nd = add nsw i32 %i.nc, %spec.select.i
  %i.ne = sext i32 %i.nd to i64
  %i.nf = getelementptr inbounds [16 x i8], ptr %.pre.i.i220.pre, i64 %i.ne ; 2 uses
  %i.ng = getelementptr i8, ptr %i.nf, i64 8
  %.val117 = load ptr, ptr %i.ng, align 8, !tbaa !61 ; 2 uses
  %i.nh = load i32, ptr %.val117, align 4, !tbaa !62
  %i.ni = shl i32 %i.nh, %i.aj
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.nj ; 5 uses
  br i1 %i.il, label %.lr.ph.i157.preheader, label %Abc_TtNot.exit

.lr.ph.i157.preheader:                            ; preds = %bb.n
  br i1 %min.iters.check487, label %.lr.ph.i157, label %vector.body490

vector.body490:                                   ; preds = %.lr.ph.i157.preheader, %vector.body490
  %index491 = phi i64 [ %index.next494, %vector.body490 ], [ 0, %.lr.ph.i157.preheader ] ; 2 uses
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %index491 ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 16 ; 2 uses
  %wide.load492 = load <2 x i64>, ptr %i.nl, align 8, !tbaa !72
  %wide.load493 = load <2 x i64>, ptr %i.nm, align 8, !tbaa !72
  %i.nn = xor <2 x i64> %wide.load492, splat (i64 -1)
  %i.no = xor <2 x i64> %wide.load493, splat (i64 -1)
  store <2 x i64> %i.nn, ptr %i.nl, align 8, !tbaa !72
  store <2 x i64> %i.no, ptr %i.nm, align 8, !tbaa !72
  %index.next494 = add nuw i64 %index491, 4       ; 2 uses
  %i.np = icmp eq i64 %index.next494, %n.vec489
  br i1 %i.np, label %Abc_TtNot.exit, label %vector.body490, !llvm.loop !262

.lr.ph.i157:                                      ; preds = %.lr.ph.i157.preheader
  %i.nq = load i64, ptr %i.nk, align 8, !tbaa !72
  %i.nr = xor i64 %i.nq, -1
  store i64 %i.nr, ptr %i.nk, align 8, !tbaa !72
  br i1 %exitcond.not.i160, label %Abc_TtNot.exit, label %.lr.ph.i157.1

.lr.ph.i157.1:                                    ; preds = %.lr.ph.i157
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nk, i64 8 ; 2 uses
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !72
  %i.nu = xor i64 %i.nt, -1
  store i64 %i.nu, ptr %i.ns, align 8, !tbaa !72
  br i1 %exitcond.not.i160.1, label %Abc_TtNot.exit, label %.lr.ph.i157.2

.lr.ph.i157.2:                                    ; preds = %.lr.ph.i157.1
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nk, i64 16 ; 2 uses
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !72
  %i.nx = xor i64 %i.nw, -1
  store i64 %i.nx, ptr %i.nv, align 8, !tbaa !72
  br label %Abc_TtNot.exit

Abc_TtNot.exit:                                   ; preds = %vector.body490, %.lr.ph.i157, %.lr.ph.i157.1, %.lr.ph.i157.2, %bb.n
  %i.ny = getelementptr i8, ptr %i.nf, i64 4
  %.val = load i32, ptr %i.ny, align 4, !tbaa !60 ; 2 uses
  %.not112253 = icmp sgt i32 %.val, 1
  br i1 %.not112253, label %.lr.ph255, label %.critedge4

.lr.ph255:                                        ; preds = %Abc_TtNot.exit
  %.val126 = load i32, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %wide.trip.count280 = zext nneg i32 %.val to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph255, %Gia_ManSimPatSimAnd.exit179
  %indvars.iv277 = phi i64 [ 1, %.lr.ph255 ], [ %indvars.iv.next278, %Gia_ManSimPatSimAnd.exit179 ] ; 2 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %.val117, i64 %indvars.iv277
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !62 ; 6 uses
  %i.ob = icmp slt i32 %i.oa, %.val126
  br i1 %i.ob, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.val119 = load ptr, ptr %i.im, align 8, !tbaa !71
  %i.oc = sext i32 %i.oa to i64
  %i.od = getelementptr inbounds [12 x i8], ptr %.val119, i64 %i.oc
  %.val129 = load i64, ptr %i.od, align 4         ; 6 uses
  %i.oe = trunc i64 %.val129 to i32
  %i.of = lshr i64 %.val129, 29
  %i.og = and i64 %i.of, 1
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr @__const.Gia_SimRsbSimAndCareSet.pComps, i64 %i.og
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !72 ; 5 uses
  %i.oj = lshr i64 %.val129, 61
  %i.ok = and i64 %i.oj, 1
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr @__const.Gia_SimRsbSimAndCareSet.pComps, i64 %i.ok
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !72 ; 5 uses
  %i.on = and i32 %i.oe, 536870911                ; 2 uses
  %i.oo = sub nsw i32 %i.oa, %i.on
  %i.op = shl i32 %i.oo, %i.aj
  %i.oq = sext i32 %i.op to i64                   ; 3 uses
  %i.or = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.oq ; 8 uses
  %i.os = lshr i64 %.val129, 32
  %i.ot = trunc nuw i64 %i.os to i32
  %i.ou = and i32 %i.ot, 536870911                ; 2 uses
  %i.ov = sub nsw i32 %i.oa, %i.ou
  %i.ow = shl i32 %i.ov, %i.aj
  %i.ox = sext i32 %i.ow to i64                   ; 3 uses
  %i.oy = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ox ; 8 uses
  %i.oz = shl i32 %i.oa, %i.aj
  %i.pa = sext i32 %i.oz to i64                   ; 5 uses
  %i.pb = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.pa ; 8 uses
  %i.pc = and i64 %.val129, 2147483648
  %.not.i.i.i161 = icmp ne i64 %i.pc, 0
  %i.pd = and i64 %.val129, 536870911
  %i.pe = icmp eq i64 %i.pd, 536870911
  %narrow.i.not.i.not.not3.i162 = or i1 %.not.i.i.i161, %i.pe
  %i.pf = icmp samesign uge i32 %i.on, %i.ou
  %narrow.not.i163 = select i1 %narrow.i.not.i.not.not3.i162, i1 true, i1 %i.pf
  br i1 %narrow.not.i163, label %.preheader.i172, label %.preheader4.i164

.preheader4.i164:                                 ; preds = %bb.p
  br i1 %i.il, label %.lr.ph.i165, label %Gia_ManSimPatSimAnd.exit179

.lr.ph.i165:                                      ; preds = %.preheader4.i164
  %invariant.op312 = xor i64 %i.oi, %i.om         ; 4 uses
  br i1 %min.iters.check439, label %scalar.ph438.preheader, label %vector.memcheck434

scalar.ph438.preheader:                           ; preds = %vector.memcheck434, %.lr.ph.i165
  br i1 %i.it, label %scalar.ph438.epil.preheader, label %scalar.ph438

vector.memcheck434:                               ; preds = %.lr.ph.i165
  %i.pg = sub nsw i64 %i.pa, %i.oq
  %i.ph = shl nsw i64 %i.pg, 3
  %i.pi = add nsw i64 %i.ph, -1
  %diff.check435 = icmp ult i64 %i.pi, 31
  %i.pj = sub nsw i64 %i.pa, %i.ox
  %i.pk = shl nsw i64 %i.pj, 3
  %i.pl = add nsw i64 %i.pk, -1
  %diff.check436 = icmp ult i64 %i.pl, 31
  %conflict.rdx437 = or i1 %diff.check435, %diff.check436
  br i1 %conflict.rdx437, label %scalar.ph438.preheader, label %vector.ph440

vector.ph440:                                     ; preds = %vector.memcheck434
  %broadcast.splatinsert442 = insertelement <2 x i64> poison, i64 %invariant.op312, i64 0
  %broadcast.splat443 = shufflevector <2 x i64> %broadcast.splatinsert442, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body444

vector.body444:                                   ; preds = %vector.body444, %vector.ph440
  %index445 = phi i64 [ 0, %vector.ph440 ], [ %index.next450, %vector.body444 ] ; 4 uses
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %index445 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  %wide.load446 = load <2 x i64>, ptr %i.pm, align 8, !tbaa !72
  %wide.load447 = load <2 x i64>, ptr %i.pn, align 8, !tbaa !72
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.oy, i64 %index445 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 16
  %wide.load448 = load <2 x i64>, ptr %i.po, align 8, !tbaa !72
  %wide.load449 = load <2 x i64>, ptr %i.pp, align 8, !tbaa !72
  %i.pq = xor <2 x i64> %wide.load446, %wide.load448
  %i.pr = xor <2 x i64> %wide.load447, %wide.load449
  %i.ps = xor <2 x i64> %i.pq, %broadcast.splat443
  %i.pt = xor <2 x i64> %i.pr, %broadcast.splat443
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.pb, i64 %index445 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  store <2 x i64> %i.ps, ptr %i.pu, align 8, !tbaa !72
  store <2 x i64> %i.pt, ptr %i.pv, align 8, !tbaa !72
  %index.next450 = add nuw i64 %index445, 4       ; 2 uses
  %i.pw = icmp eq i64 %index.next450, %n.vec441
  br i1 %i.pw, label %Gia_ManSimPatSimAnd.exit179, label %vector.body444, !llvm.loop !263

.preheader.i172:                                  ; preds = %bb.p
  br i1 %i.il, label %.lr.ph8.i175.preheader, label %Gia_ManSimPatSimAnd.exit179

.lr.ph8.i175.preheader:                           ; preds = %.preheader.i172
  br i1 %min.iters.check417, label %.lr.ph8.i175.preheader498, label %vector.memcheck412

.lr.ph8.i175.preheader498:                        ; preds = %vector.memcheck412, %.lr.ph8.i175.preheader
  br i1 %i.iu, label %.lr.ph8.i175.epil.preheader, label %.lr.ph8.i175

vector.memcheck412:                               ; preds = %.lr.ph8.i175.preheader
  %i.px = sub nsw i64 %i.pa, %i.oq
  %i.py = shl nsw i64 %i.px, 3
  %i.pz = add nsw i64 %i.py, -1
  %diff.check413 = icmp ult i64 %i.pz, 31
  %i.qa = sub nsw i64 %i.pa, %i.ox
  %i.qb = shl nsw i64 %i.qa, 3
  %i.qc = add nsw i64 %i.qb, -1
  %diff.check414 = icmp ult i64 %i.qc, 31
  %conflict.rdx415 = or i1 %diff.check413, %diff.check414
  br i1 %conflict.rdx415, label %.lr.ph8.i175.preheader498, label %vector.ph418

vector.ph418:                                     ; preds = %vector.memcheck412
  %broadcast.splatinsert420 = insertelement <2 x i64> poison, i64 %i.oi, i64 0
  %broadcast.splat421 = shufflevector <2 x i64> %broadcast.splatinsert420, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert422 = insertelement <2 x i64> poison, i64 %i.om, i64 0
  %broadcast.splat423 = shufflevector <2 x i64> %broadcast.splatinsert422, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body424

vector.body424:                                   ; preds = %vector.body424, %vector.ph418
  %index425 = phi i64 [ 0, %vector.ph418 ], [ %index.next430, %vector.body424 ] ; 4 uses
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %index425 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %wide.load426 = load <2 x i64>, ptr %i.qd, align 8, !tbaa !72
  %wide.load427 = load <2 x i64>, ptr %i.qe, align 8, !tbaa !72
  %i.qf = xor <2 x i64> %wide.load426, %broadcast.splat421
  %i.qg = xor <2 x i64> %wide.load427, %broadcast.splat421
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.oy, i64 %index425 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %wide.load428 = load <2 x i64>, ptr %i.qh, align 8, !tbaa !72
  %wide.load429 = load <2 x i64>, ptr %i.qi, align 8, !tbaa !72
  %i.qj = xor <2 x i64> %wide.load428, %broadcast.splat423
end_hunk_0
