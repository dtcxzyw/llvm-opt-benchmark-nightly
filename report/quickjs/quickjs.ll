Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 84
loop-unroll.NumUnrolled: 174
begin_hunk_0_@js_atof:bb.a
  br i1 %or.cond.i251.2, label %js_to_digit.exit256.thread353.2, label %.thread356

js_to_digit.exit256.thread353.2:                  ; preds = %js_to_digit.exit256.thread353.1
  %i.jf = getelementptr inbounds nuw i8, ptr %.2.i555, i64 3 ; 2 uses
  %i.jg = mul nuw nsw i32 %i.jb, 10
  %i.jh = add nuw nsw i32 %i.je, %i.jg            ; 2 uses
  %i.ji = load i8, ptr %i.jf, align 1, !tbaa !35
  %i.jj = zext i8 %i.ji to i32
  %i.jk = add nsw i32 %i.jj, -48                  ; 2 uses
  %or.cond.i251.3 = icmp ult i32 %i.jk, 10
  br i1 %or.cond.i251.3, label %js_to_digit.exit256.thread353.3, label %.thread356

js_to_digit.exit256.thread353.3:                  ; preds = %js_to_digit.exit256.thread353.2
  %i.jl = getelementptr inbounds nuw i8, ptr %.2.i555, i64 4 ; 2 uses
  %i.jm = mul nuw nsw i32 %i.jh, 10
  %i.jn = add nuw nsw i32 %i.jk, %i.jm            ; 2 uses
  %i.jo = load i8, ptr %i.jl, align 1, !tbaa !35
  %i.jp = zext i8 %i.jo to i32
  %i.jq = add nsw i32 %i.jp, -48                  ; 2 uses
  %or.cond.i251.4 = icmp ult i32 %i.jq, 10
  br i1 %or.cond.i251.4, label %js_to_digit.exit256.thread353.4, label %.thread356

js_to_digit.exit256.thread353.4:                  ; preds = %js_to_digit.exit256.thread353.3
  %i.jr = getelementptr inbounds nuw i8, ptr %.2.i555, i64 5 ; 2 uses
  %i.js = mul nuw nsw i32 %i.jn, 10
  %i.jt = add nuw nsw i32 %i.jq, %i.js            ; 2 uses
  %i.ju = load i8, ptr %i.jr, align 1, !tbaa !35
  %i.jv = zext i8 %i.ju to i32
  %i.jw = add nsw i32 %i.jv, -48                  ; 2 uses
  %or.cond.i251.5 = icmp ult i32 %i.jw, 10
  br i1 %or.cond.i251.5, label %js_to_digit.exit256.thread353.5, label %.thread356

js_to_digit.exit256.thread353.5:                  ; preds = %js_to_digit.exit256.thread353.4
  %i.jx = getelementptr inbounds nuw i8, ptr %.2.i555, i64 6 ; 2 uses
  %i.jy = mul nuw nsw i32 %i.jt, 10
  %i.jz = add nuw nsw i32 %i.jw, %i.jy            ; 2 uses
  %i.ka = load i8, ptr %i.jx, align 1, !tbaa !35
  %i.kb = zext i8 %i.ka to i32
  %i.kc = add nsw i32 %i.kb, -48                  ; 2 uses
  %or.cond.i251.6 = icmp ult i32 %i.kc, 10
  br i1 %or.cond.i251.6, label %js_to_digit.exit256.thread353.6, label %.thread356

js_to_digit.exit256.thread353.6:                  ; preds = %js_to_digit.exit256.thread353.5
  %i.kd = getelementptr inbounds nuw i8, ptr %.2.i555, i64 7 ; 2 uses
  %i.ke = mul nuw nsw i32 %i.jz, 10
  %i.kf = add nuw nsw i32 %i.kc, %i.ke            ; 2 uses
  %i.kg = load i8, ptr %i.kd, align 1, !tbaa !35
  %i.kh = zext i8 %i.kg to i32
  %i.ki = add nsw i32 %i.kh, -48                  ; 2 uses
  %or.cond.i251.7 = icmp ult i32 %i.ki, 10
  br i1 %or.cond.i251.7, label %js_to_digit.exit256.thread353.7, label %.thread356

js_to_digit.exit256.thread353.7:                  ; preds = %js_to_digit.exit256.thread353.6
  %i.kj = getelementptr inbounds nuw i8, ptr %.2.i555, i64 8 ; 2 uses
  %i.kk = mul nuw nsw i32 %i.kf, 10
  %i.kl = add nuw nsw i32 %i.ki, %i.kk            ; 2 uses
  %i.km = load i8, ptr %i.kj, align 1, !tbaa !35
  %i.kn = zext i8 %i.km to i32
  %i.ko = add nsw i32 %i.kn, -48                  ; 2 uses
  %or.cond.i251.8 = icmp ult i32 %i.ko, 10
  br i1 %or.cond.i251.8, label %js_to_digit.exit256.thread353.8, label %.thread356

js_to_digit.exit256.thread353.8:                  ; preds = %js_to_digit.exit256.thread353.7
  %i.kp = mul nuw nsw i32 %i.kl, 10
  %i.kq = add nuw nsw i32 %i.ko, %i.kp
  br label %.thread356

.thread356:                                       ; preds = %js_to_digit.exit256.thread353, %js_to_digit.exit256.thread353.1, %js_to_digit.exit256.thread353.2, %js_to_digit.exit256.thread353.3, %js_to_digit.exit256.thread353.4, %js_to_digit.exit256.thread353.5, %js_to_digit.exit256.thread353.6, %js_to_digit.exit256.thread353.7, %js_to_digit.exit256.thread353.8
  %.085.i411 = phi i64 [ 9, %js_to_digit.exit256.thread353.8 ], [ 8, %js_to_digit.exit256.thread353.7 ], [ 7, %js_to_digit.exit256.thread353.6 ], [ 6, %js_to_digit.exit256.thread353.5 ], [ 5, %js_to_digit.exit256.thread353.4 ], [ 4, %js_to_digit.exit256.thread353.3 ], [ 3, %js_to_digit.exit256.thread353.2 ], [ 2, %js_to_digit.exit256.thread353.1 ], [ 1, %js_to_digit.exit256.thread353 ] ; 2 uses
  %.083.i409 = phi i32 [ %i.kq, %js_to_digit.exit256.thread353.8 ], [ %i.kl, %js_to_digit.exit256.thread353.7 ], [ %i.kf, %js_to_digit.exit256.thread353.6 ], [ %i.jz, %js_to_digit.exit256.thread353.5 ], [ %i.jt, %js_to_digit.exit256.thread353.4 ], [ %i.jn, %js_to_digit.exit256.thread353.3 ], [ %i.jh, %js_to_digit.exit256.thread353.2 ], [ %i.jb, %js_to_digit.exit256.thread353.1 ], [ %i.iu, %js_to_digit.exit256.thread353 ] ; 4 uses
  %.3.i407 = phi ptr [ %scevgep556, %js_to_digit.exit256.thread353.8 ], [ %i.kj, %js_to_digit.exit256.thread353.7 ], [ %i.kd, %js_to_digit.exit256.thread353.6 ], [ %i.jx, %js_to_digit.exit256.thread353.5 ], [ %i.jr, %js_to_digit.exit256.thread353.4 ], [ %i.jl, %js_to_digit.exit256.thread353.3 ], [ %i.jf, %js_to_digit.exit256.thread353.2 ], [ %i.iz, %js_to_digit.exit256.thread353.1 ], [ %i.iv, %js_to_digit.exit256.thread353 ] ; 2 uses
  switch i32 %.088.i554, label %.lr.ph.i [
    i32 1, label %bb.cs
    i32 0, label %js_mp_mul1.exit250
  ]

.lr.ph.i:                                         ; preds = %.thread356
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr @js_pow_dec, i64 %.085.i411
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !8
  %i.kt = zext i32 %i.ks to i64                   ; 3 uses
  %i.ku = zext nneg i32 %.083.i409 to i64
  %wide.trip.count.i = zext i32 %.088.i554 to i64 ; 2 uses
  %xtraiter562 = and i64 %wide.trip.count.i, 1
  %unroll_iter566 = and i64 %wide.trip.count.i, 4294967294
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cr, %.lr.ph.i
  %indvars.iv.i246 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i248.1, %bb.cr ] ; 3 uses
  %.01112.i247 = phi i64 [ %i.ku, %.lr.ph.i ], [ %i.lj, %bb.cr ]
  %niter567 = phi i64 [ 0, %.lr.ph.i ], [ %niter567.next.1, %bb.cr ]
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv.i246 ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !8
  %i.kx = zext i32 %i.kw to i64
  %i.ky = mul nuw i64 %i.kx, %i.kt
  %i.kz = add nuw i64 %i.ky, %.01112.i247         ; 2 uses
  %i.la = trunc i64 %i.kz to i32
  store i32 %i.la, ptr %i.kv, align 4, !tbaa !8
  %i.lb = lshr i64 %i.kz, 32
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv.i246
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 4 ; 2 uses
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !8
  %i.lf = zext i32 %i.le to i64
  %i.lg = mul nuw i64 %i.lf, %i.kt
  %i.lh = add nuw i64 %i.lg, %i.lb                ; 2 uses
  %i.li = trunc i64 %i.lh to i32
  store i32 %i.li, ptr %i.ld, align 4, !tbaa !8
  %i.lj = lshr i64 %i.lh, 32                      ; 3 uses
  %indvars.iv.next.i248.1 = add nuw nsw i64 %indvars.iv.i246, 2 ; 2 uses
  %niter567.next.1 = add i64 %niter567, 2         ; 2 uses
  %niter567.ncmp.1 = icmp eq i64 %niter567.next.1, %unroll_iter566
  br i1 %niter567.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.cr, !llvm.loop !1446

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.cr
  %lcmp.mod563.not = icmp eq i64 %xtraiter562, 0
  br i1 %lcmp.mod563.not, label %._crit_edge.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa
  %lcmp.mod565 = trunc i32 %.088.i554 to i1
  tail call void @llvm.assume(i1 %lcmp.mod565)
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv.next.i248.1 ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !8
  %i.lm = zext i32 %i.ll to i64
  %i.ln = mul nuw i64 %i.lm, %i.kt
  %i.lo = add nuw i64 %i.ln, %i.lj                ; 2 uses
  %i.lp = trunc i64 %i.lo to i32
  store i32 %i.lp, ptr %i.lk, align 4, !tbaa !8
  %i.lq = lshr i64 %i.lo, 32
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.lj, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.lq, %.epil.preheader ]
  %i.lr = trunc nuw i64 %.lcssa to i32
  br label %js_mp_mul1.exit250

bb.cs:                                            ; preds = %.thread356
  %i.ls = load i32, ptr %i.iq, align 4, !tbaa !8  ; 2 uses
  %i.lt = icmp eq i32 %i.ls, 0
  br i1 %i.lt, label %bb.ct, label %.split92.i

.split92.i:                                       ; preds = %bb.cs
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr @js_pow_dec, i64 %.085.i411
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !8
  %i.lw = zext i32 %i.lv to i64
  %i.lx = zext nneg i32 %.083.i409 to i64
  %i.ly = zext i32 %i.ls to i64
  %i.lz = mul nuw i64 %i.ly, %i.lw
  %i.ma = add nuw i64 %i.lz, %i.lx                ; 2 uses
  %i.mb = trunc i64 %i.ma to i32
  store i32 %i.mb, ptr %i.iq, align 4, !tbaa !8
  %i.mc = lshr i64 %i.ma, 32
  %i.md = trunc nuw i64 %i.mc to i32
  br label %js_mp_mul1.exit250

bb.ct:                                            ; preds = %bb.cs
  store i32 %.083.i409, ptr %i.iq, align 4, !tbaa !8
  br label %bb.cv

js_mp_mul1.exit250:                               ; preds = %.thread356, %._crit_edge.loopexit.i, %.split92.i
  %phi.call.i = phi i32 [ %i.md, %.split92.i ], [ %.083.i409, %.thread356 ], [ %i.lr, %._crit_edge.loopexit.i ] ; 2 uses
  %.not98.i = icmp eq i32 %phi.call.i, 0
  br i1 %.not98.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %js_mp_mul1.exit250
  %i.me = add nsw i32 %.088.i554, 1
  %i.mf = sext i32 %.088.i554 to i64
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.mf
  store i32 %phi.call.i, ptr %i.mg, align 4, !tbaa !8
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %js_mp_mul1.exit250, %bb.ct
  %.189.i = phi i32 [ 1, %bb.ct ], [ %i.me, %bb.cu ], [ %.088.i554, %js_mp_mul1.exit250 ] ; 2 uses
  %i.mh = load i8, ptr %.3.i407, align 1, !tbaa !35
  %i.mi = zext i8 %i.mh to i32
  %i.mj = add nsw i32 %i.mi, -48                  ; 2 uses
  %or.cond.i251 = icmp ugt i32 %i.mj, 9
  br i1 %or.cond.i251, label %js_to_digit.exit256.thread, label %js_to_digit.exit256.thread353

js_to_digit.exit256.thread:                       ; preds = %bb.cv, %bb.cq
  %.088.i.lcssa = phi i32 [ 1, %bb.cq ], [ %.189.i, %bb.cv ] ; 3 uses
  %i.mk = sext i32 %.088.i.lcssa to i64
  %i.ml = getelementptr [4 x i8], ptr %i.iq, i64 %i.mk ; 2 uses
  %i.mm = getelementptr i8, ptr %i.ml, i64 -4
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !8
  %.not99.i = icmp sgt i32 %i.mn, -1
  br i1 %.not99.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %js_to_digit.exit256.thread
  %i.mo = add nsw i32 %.088.i.lcssa, 1
  store i32 0, ptr %i.ml, align 4, !tbaa !8
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %js_to_digit.exit256.thread
  %.290.i = phi i32 [ %i.mo, %bb.cw ], [ %.088.i.lcssa, %js_to_digit.exit256.thread ] ; 2 uses
  store i32 %.290.i, ptr %i.hq, align 8, !tbaa !8
  br label %.loopexit

bb.cy:                                            ; preds = %bb.cp
  %i.mp = zext nneg i32 %i.he to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.iq, i8 0, i64 %i.mp, i1 false)
  %.not433 = icmp eq i64 %i.gp, 0
  br i1 %.not433, label %.loopexit, label %.lr.ph420

.lr.ph420:                                        ; preds = %bb.cy, %bb.dd
  %indvars.iv467 = phi i64 [ %indvars.iv.next468, %bb.dd ], [ 0, %bb.cy ] ; 3 uses
  %i.mq = xor i64 %indvars.iv467, -1
  %7 = add nsw i64 %i.gp, %i.mq
  %8 = and i64 %7, 4294967295
  %i.mr = getelementptr inbounds nuw i8, ptr %.1.i, i64 %8
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !35  ; 3 uses
  %i.mt = zext i8 %i.ms to i32                    ; 3 uses
  %i.mu = add nsw i32 %i.mt, -48                  ; 2 uses
  %or.cond.i239 = icmp ult i32 %i.mu, 10
  br i1 %or.cond.i239, label %js_to_digit.exit244, label %bb.cz

bb.cz:                                            ; preds = %.lr.ph420
  %i.mv = add i8 %i.ms, -65
  %or.cond3.i240 = icmp ult i8 %i.mv, 26
  br i1 %or.cond3.i240, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.mw = add nsw i32 %i.mt, -55
  br label %js_to_digit.exit244

bb.db:                                            ; preds = %bb.cz
  %i.mx = add i8 %i.ms, -97
  %or.cond5.i241 = icmp ult i8 %i.mx, 26
  %i.my = add nsw i32 %i.mt, -87
  %spec.select.i242 = select i1 %or.cond5.i241, i32 %i.my, i32 36
  br label %js_to_digit.exit244

js_to_digit.exit244:                              ; preds = %.lr.ph420, %bb.da, %bb.db
  %.0.i243 = phi i32 [ %spec.select.i242, %bb.db ], [ %i.mw, %bb.da ], [ %i.mu, %.lr.ph420 ] ; 2 uses
  %i.mz = trunc i64 %indvars.iv467 to i32
  %i.na = mul i32 %i.gv, %i.mz                    ; 2 uses
  %i.nb = and i32 %i.na, 31                       ; 3 uses
  %i.nc = lshr i32 %i.na, 5
  %i.nd = shl i32 %.0.i243, %i.nb
  %i.ne = zext nneg i32 %i.nc to i64
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.ne ; 3 uses
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !8
  %i.nh = or i32 %i.ng, %i.nd
  store i32 %i.nh, ptr %i.nf, align 4, !tbaa !8
  %i.ni = icmp samesign ugt i32 %i.nb, %i.gu
  br i1 %i.ni, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %js_to_digit.exit244
  %i.nj = sub nuw nsw i32 32, %i.nb
  %i.nk = lshr i32 %.0.i243, %i.nj
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nf, i64 4 ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !8
  %i.nn = or i32 %i.nm, %i.nk
  store i32 %i.nn, ptr %i.nl, align 4, !tbaa !8
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %js_to_digit.exit244
  %indvars.iv.next468 = add nuw nsw i64 %indvars.iv467, 1 ; 2 uses
  %exitcond471.not = icmp eq i64 %indvars.iv.next468, %i.gp
  br i1 %exitcond471.not, label %.loopexit, label %.lr.ph420, !llvm.loop !1447

.loopexit:                                        ; preds = %bb.dd, %bb.cy, %bb.cx
  %i.no = phi i32 [ %.290.i, %bb.cx ], [ %i.hb, %bb.cy ], [ %i.hb, %bb.dd ] ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.nq = icmp sgt i32 %i.no, 1
  br i1 %i.nq, label %.lr.ph426, label %js_bigint_normalize.exit

.lr.ph426:                                        ; preds = %.loopexit, %bb.df
  %.0.i.i424 = phi i32 [ %i.oa, %bb.df ], [ %i.no, %.loopexit ] ; 5 uses
  %i.nr = zext nneg i32 %.0.i.i424 to i64
  %i.ns = getelementptr [4 x i8], ptr %i.np, i64 %i.nr ; 2 uses
  %i.nt = getelementptr i8, ptr %i.ns, i64 -4
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !8  ; 2 uses
  %i.nv = add i32 %i.nu, -1
  %or.cond.i.i = icmp ult i32 %i.nv, -2
  br i1 %or.cond.i.i, label %._crit_edge427, label %bb.de

bb.de:                                            ; preds = %.lr.ph426
  %i.nw = and i32 %i.nu, 1
  %i.nx = getelementptr i8, ptr %i.ns, i64 -8
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !8
  %i.nz = lshr i32 %i.ny, 31
  %.not.i.i238 = icmp eq i32 %i.nw, %i.nz
  br i1 %.not.i.i238, label %bb.df, label %._crit_edge427

bb.df:                                            ; preds = %bb.de
  %i.oa = add nsw i32 %.0.i.i424, -1
  %i.ob = icmp sgt i32 %.0.i.i424, 2
  br i1 %i.ob, label %.lr.ph426, label %._crit_edge427, !llvm.loop !1448

._crit_edge427:                                   ; preds = %bb.df, %.lr.ph426, %bb.de
  %.0.i.i.lcssa = phi i32 [ %.0.i.i424, %bb.de ], [ 1, %bb.df ], [ %.0.i.i424, %.lr.ph426 ] ; 3 uses
  %.not21.i.i = icmp eq i32 %.0.i.i.lcssa, %i.no
  br i1 %.not21.i.i, label %js_bigint_normalize.exit, label %bb.dg

bb.dg:                                            ; preds = %._crit_edge427
  store i32 %.0.i.i.lcssa, ptr %i.hq, align 8, !tbaa !8
  %i.oc = zext nneg i32 %.0.i.i.lcssa to i64
  %i.od = shl nuw nsw i64 %i.oc, 2
  %i.oe = add nuw nsw i64 %i.od, 4
  %i.of = tail call ptr @js_realloc(ptr noundef %0, ptr noundef nonnull %i.hq, i64 noundef %i.oe), !inline_history !1449 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.of, null
  %spec.select.i.i = select i1 %.not22.i.i, ptr %i.hq, ptr %i.of
  br label %js_bigint_normalize.exit

js_bigint_normalize.exit:                         ; preds = %.loopexit, %._crit_edge427, %bb.dg
  %.1.i.i = phi ptr [ %spec.select.i.i, %bb.dg ], [ %i.hq, %._crit_edge427 ], [ %i.hq, %.loopexit ] ; 3 uses
  br i1 %.not101.i, label %bb.dh, label %js_bigint_from_string.exit

bb.dh:                                            ; preds = %js_bigint_normalize.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  store i32 1, ptr %5, align 4, !tbaa !8
  %i.og = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.og, align 4, !tbaa !8
  %i.oh = call fastcc ptr @js_bigint_add(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %.1.i.i, i32 noundef 1), !inline_history !1450
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  %i.oi = load ptr, ptr %i.hg, align 8, !tbaa !50
  tail call void @js_free_rt(ptr noundef %i.oi, ptr noundef nonnull %.1.i.i)
  br label %js_bigint_from_string.exit

js_bigint_from_string.exit:                       ; preds = %js_bigint_normalize.exit, %bb.dh
  %.0.i233 = phi ptr [ %i.oh, %bb.dh ], [ %.1.i.i, %js_bigint_normalize.exit ] ; 5 uses
  %.not195 = icmp eq ptr %.0.i233, null
  br i1 %.not195, label %.split367, label %bb.di

bb.di:                                            ; preds = %js_bigint_from_string.exit
  %i.oj = load i32, ptr %.0.i233, align 4, !tbaa !8
  %i.ok = icmp eq i32 %i.oj, 1
  br i1 %i.ok, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.ol = getelementptr inbounds nuw i8, ptr %.0.i233, i64 4
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !8
  %.sroa.0.0.insert.ext.i.i237 = zext i32 %i.om to i64
  %i.on = load ptr, ptr %i.hg, align 8, !tbaa !50
  tail call void @js_free_rt(ptr noundef %i.on, ptr noundef nonnull %.0.i233)
  br label %.split367

bb.dk:                                            ; preds = %bb.di
  %i.oo = ptrtoint ptr %.0.i233 to i64
  br label %.split367

.split367:                                        ; preds = %bb.dk, %bb.dj, %bb.co, %bb.cn, %bb.cg, %bb.ce, %js_bigint_from_string.exit, %bb.ca
  %spec.select201 = phi i64 [ 8, %bb.ca ], [ 6, %bb.co ], [ 6, %js_bigint_from_string.exit ], [ 6, %bb.ce ], [ 6, %bb.cg ], [ 6, %bb.cn ], [ 7, %bb.dj ], [ -9, %bb.dk ] ; 2 uses
  %spec.select = phi i64 [ 9221120237041090560, %bb.ca ], [ 0, %bb.co ], [ 0, %js_bigint_from_string.exit ], [ 0, %bb.ce ], [ 0, %bb.cg ], [ 0, %bb.cn ], [ %.sroa.0.0.insert.ext.i.i237, %bb.dj ], [ %i.oo, %bb.dk ] ; 2 uses
  br i1 %i.ex, label %bb.dn, label %.thread360

bb.dl:                                            ; preds = %bb.bx
  tail call void @abort() #50
  unreachable

bb.dm:                                            ; preds = %bb.bz, %double_is_int32.exit.i, %.split.i
  %.sroa.0.0.insert.ext.i.pn.i = phi i64 [ %.sroa.0.0.insert.ext.i.i, %bb.bz ], [ %i.gc, %.split.i ], [ %i.gc, %double_is_int32.exit.i ] ; 2 uses
  %.sroa.3.0.i = phi i64 [ 0, %bb.bz ], [ 8, %.split.i ], [ 8, %double_is_int32.exit.i ] ; 2 uses
  br i1 %i.ex, label %bb.dn, label %.thread360

bb.dn:                                            ; preds = %.split367, %bb.dm
  %.sroa.8.1370 = phi i64 [ %spec.select201, %.split367 ], [ %.sroa.3.0.i, %bb.dm ]
  %i.op = phi i64 [ %spec.select, %.split367 ], [ %.sroa.0.0.insert.ext.i.pn.i, %bb.dm ]
  %.10368 = phi ptr [ %.9344, %.split367 ], [ %.8, %bb.dm ]
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !50
  call void @js_free_rt(ptr noundef %i.or, ptr noundef nonnull %.0142)
  br label %.thread360

.thread360:                                       ; preds = %bb.dq, %bb.dp, %.critedge27, %js_to_digit.exit219.thread331, %js_to_digit.exit, %js__strstart.exit, %.split367, %bb.dn, %bb.dm
  %.sroa.8.1366 = phi i64 [ %spec.select201, %.split367 ], [ %.sroa.8.1370, %bb.dn ], [ %.sroa.3.0.i, %bb.dm ], [ 8, %js_to_digit.exit ], [ 8, %js_to_digit.exit219.thread331 ], [ 8, %.critedge27 ], [ 8, %js__strstart.exit ], [ 6, %bb.dp ], [ 6, %bb.dq ]
  %i.os = phi i64 [ %spec.select, %.split367 ], [ %i.op, %bb.dn ], [ %.sroa.0.0.insert.ext.i.pn.i, %bb.dm ], [ 9221120237041090560, %js_to_digit.exit ], [ 9221120237041090560, %js_to_digit.exit219.thread331 ], [ 9221120237041090560, %.critedge27 ], [ %i.ba, %js__strstart.exit ], [ 0, %bb.dp ], [ 0, %bb.dq ]
  %.10365 = phi ptr [ %.9344, %.split367 ], [ %.10368, %bb.dn ], [ %.8, %bb.dm ], [ %.2293, %js_to_digit.exit ], [ %i.dn, %js_to_digit.exit219.thread331 ], [ %.8, %.critedge27 ], [ %scevgep.i, %js__strstart.exit ], [ %.8, %bb.dp ], [ %.8, %bb.dq ]
  %.not197 = icmp eq ptr %2, null
  br i1 %.not197, label %bb.dr, label %bb.do

bb.do:                                            ; preds = %.thread360
  store ptr %.10365, ptr %2, align 8, !tbaa !255
  br label %bb.dr

bb.dp:                                            ; preds = %bb.bo
  %i.ot = load ptr, ptr %i.ey, align 8, !tbaa !50
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 1256 ; 3 uses
  %i.ov = load i8, ptr %i.ou, align 8, !tbaa !57, !range !58, !noundef !59
  %i.ow = trunc nuw i8 %i.ov to i1
  br i1 %i.ow, label %.thread360, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  store i8 1, ptr %i.ou, align 8, !tbaa !57
  %i.ox = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !60 ; 0 uses
  store i8 0, ptr %i.ou, align 8, !tbaa !57
  br label %.thread360

bb.dr:                                            ; preds = %.thread360, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.os, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.8.1366, 1
  ret { i64, i64 } %.fca.1.insert
}

declare i32 @lre_is_space_non_ascii(i32 noundef) local_unnamed_addr #14

declare double @js_atod(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define internal fastcc ptr @js_bigint_new(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %1, 32768
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.143) ; 0 uses
  br label %js_malloc.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = sext i32 %1 to i64
  %i.d = shl nsw i64 %i.c, 2
  %i.e = add nsw i64 %i.d, 4                      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50   ; 8 uses
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %bb.j, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !10
  %i.l = add i64 %i.k, %i.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !14
  %i.o = add i64 %i.n, -1
  %i.p = icmp ugt i64 %i.l, %i.o
  br i1 %i.p, label %bb.j, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.q = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.g, i64 noundef %i.e) ; 6 uses
  %.not.i11 = icmp eq ptr %i.q, null
  br i1 %.not.i11, label %._crit_edge, label %bb.f

end_hunk_0
