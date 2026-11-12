Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastMesh?download=true
inline.NumInlined: 287
inline.NumDeleted: 47
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_Z17rcMergePolyMeshesP9rcContextPP10rcPolyMeshiRS1_:bb.a
  %.03642.i = load i32, ptr %i.fy, align 4, !tbaa !76 ; 2 uses
  %.not43.i = icmp eq i32 %.03642.i, -1
  br i1 %.not43.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u
  %i.fz = zext i16 %i.fo to i32
  %invariant.op = sub i32 2, %i.fz
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %.lr.ph.i
  %.03644.i = phi i32 [ %.03642.i, %.lr.ph.i ], [ %.036.i, %bb.y ] ; 3 uses
  %i.ga = mul nsw i32 %.03644.i, 3
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [2 x i8], ptr %i.fa, i64 %i.gb ; 3 uses
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !77
  %i.ge = icmp eq i16 %i.gd, %i.fm
  br i1 %i.ge, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !77
  %i.gh = zext i16 %i.gg to i32
  %.reass.i.reass.reass = add i32 %i.gh, %invariant.op
  %i.gi = icmp ult i32 %.reass.i.reass.reass, 5
  br i1 %i.gi, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !77
  %i.gl = icmp eq i16 %i.gk, %i.fr
  br i1 %i.gl, label %_ZL9addVertextttPtPiS0_Ri.exit, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.gm = sext i32 %.03644.i to i64
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.gm
  %.036.i = load i32, ptr %i.gn, align 4, !tbaa !76 ; 2 uses
  %.not.i = icmp eq i32 %.036.i, -1
  br i1 %.not.i, label %._crit_edge.i, label %bb.v

._crit_edge.i:                                    ; preds = %bb.y, %bb.u
  %i.go = load i32, ptr %i.ai, align 8, !tbaa !76 ; 5 uses
  %i.gp = add nsw i32 %i.go, 1
  store i32 %i.gp, ptr %i.ai, align 8, !tbaa !76
  %i.gq = mul nsw i32 %i.go, 3
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [2 x i8], ptr %i.fa, i64 %i.gr ; 3 uses
  store i16 %i.fm, ptr %i.gs, align 2, !tbaa !77
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 2
  store i16 %i.fo, ptr %i.gt, align 2, !tbaa !77
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  store i16 %i.fr, ptr %i.gu, align 2, !tbaa !77
  %i.gv = load i32, ptr %i.fy, align 4, !tbaa !76
  %i.gw = sext i32 %i.go to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.gw
  store i32 %i.gv, ptr %i.gx, align 4, !tbaa !76
  store i32 %i.go, ptr %i.fy, align 4, !tbaa !76
  %.pre = load i32, ptr %i.ew, align 8, !tbaa !72
  br label %_ZL9addVertextttPtPiS0_Ri.exit

_ZL9addVertextttPtPiS0_Ri.exit:                   ; preds = %bb.x, %._crit_edge.i
  %i.gy = phi i32 [ %.pre, %._crit_edge.i ], [ %i.fj, %bb.x ] ; 2 uses
  %.2.in.i = phi i32 [ %i.go, %._crit_edge.i ], [ %.03644.i, %bb.x ]
  %.2.i = trunc i32 %.2.in.i to i16
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %indvars.iv281
  store i16 %.2.i, ptr %i.gz, align 2, !tbaa !77
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %i.ha = sext i32 %i.gy to i64
  %i.hb = icmp slt i64 %indvars.iv.next282, %i.ha
  br i1 %i.hb, label %bb.u, label %.preheader238

._crit_edge267:                                   ; preds = %.loopexit, %.preheader238
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next303, %wide.trip.count305
  br i1 %exitcond306.not, label %._crit_edge271, label %bb.t

bb.z:                                             ; preds = %.lr.ph266, %.loopexit
  %i.hc = phi i32 [ %.pre308, %.lr.ph266 ], [ %i.ij, %.loopexit ] ; 2 uses
  %i.hd = phi i32 [ %.pre307, %.lr.ph266 ], [ %i.ii, %.loopexit ] ; 2 uses
  %indvars.iv299 = phi i64 [ 0, %.lr.ph266 ], [ %indvars.iv.next300, %.loopexit ] ; 5 uses
  %i.he = load ptr, ptr %i.ci, align 8, !tbaa !69 ; 2 uses
  %i.hf = ptrtoaddr ptr %i.he to i64              ; 2 uses
  %i.hg = shl i32 %i.hd, 1
  %i.hh = mul i32 %i.hg, %i.hc
  %i.hi = sext i32 %i.hh to i64                   ; 3 uses
  %i.hj = getelementptr inbounds [2 x i8], ptr %i.he, i64 %i.hi ; 55 uses
  %i.hk = load ptr, ptr %i.ff, align 8, !tbaa !69 ; 2 uses
  %i.hl = ptrtoaddr ptr %i.hk to i64              ; 2 uses
  %indvars.iv299.tr = trunc i64 %indvars.iv299 to i32
  %i.hm = shl nuw i32 %indvars.iv299.tr, 1
  %i.hn = mul i32 %i.hm, %i.hc
  %i.ho = sext i32 %i.hn to i64                   ; 3 uses
  %i.hp = getelementptr inbounds [2 x i8], ptr %i.hk, i64 %i.ho ; 11 uses
  %i.hq = load ptr, ptr %i.fg, align 8, !tbaa !70
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.hq, i64 %indvars.iv299
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !77
  %i.ht = load ptr, ptr %i.cq, align 8, !tbaa !70
  %i.hu = sext i32 %i.hd to i64                   ; 2 uses
  %i.hv = getelementptr inbounds [2 x i8], ptr %i.ht, i64 %i.hu
  store i16 %i.hs, ptr %i.hv, align 2, !tbaa !77
  %i.hw = load ptr, ptr %i.fh, align 8, !tbaa !71
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 %indvars.iv299
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !78
  %i.hz = load ptr, ptr %i.cs, align 8, !tbaa !71
  %i.ia = getelementptr inbounds i8, ptr %i.hz, i64 %i.hu
  store i8 %i.hy, ptr %i.ia, align 1, !tbaa !78
  %i.ib = load ptr, ptr %i.fi, align 8, !tbaa !82
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.ib, i64 %indvars.iv299
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !77
  %i.ie = load ptr, ptr %i.cu, align 8, !tbaa !82
  %i.if = load i32, ptr %i.ca, align 4, !tbaa !73 ; 2 uses
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds [2 x i8], ptr %i.ie, i64 %i.ig
  store i16 %i.id, ptr %i.ih, align 2, !tbaa !77
  %i.ii = add nsw i32 %i.if, 1                    ; 2 uses
  store i32 %i.ii, ptr %i.ca, align 4, !tbaa !73
  %i.ij = load i32, ptr %i.l, align 4, !tbaa !74  ; 6 uses
  %i.ik = icmp sgt i32 %i.ij, 0
  br i1 %i.ik, label %.lr.ph258.preheader, label %._crit_edge259

.lr.ph258.preheader:                              ; preds = %bb.z
  %wide.trip.count287 = zext nneg i32 %i.ij to i64
  br label %.lr.ph258

.lr.ph258:                                        ; preds = %.lr.ph258.preheader, %bb.aa
  %indvars.iv284 = phi i64 [ 0, %.lr.ph258.preheader ], [ %indvars.iv.next285, %bb.aa ] ; 3 uses
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.hp, i64 %indvars.iv284
  %i.im = load i16, ptr %i.il, align 2, !tbaa !77 ; 2 uses
  %i.in = icmp eq i16 %i.im, -1
  br i1 %i.in, label %._crit_edge259, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph258
  %i.io = zext i16 %i.im to i64
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %i.io
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !77
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.hj, i64 %indvars.iv284
  store i16 %i.iq, ptr %i.ir, align 2, !tbaa !77
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %exitcond288.not = icmp eq i64 %indvars.iv.next285, %wide.trip.count287
  br i1 %exitcond288.not, label %._crit_edge259, label %.lr.ph258

._crit_edge259:                                   ; preds = %bb.aa, %.lr.ph258, %bb.z
  br i1 %i.ev, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge259
  %i.is = shl nsw i32 %i.ij, 1                    ; 2 uses
  %i.it = icmp slt i32 %i.ij, %i.is
  br i1 %i.it, label %.lr.ph264, label %.loopexit

.lr.ph264:                                        ; preds = %.preheader
  %i.iu = sext i32 %i.ij to i64                   ; 13 uses
  %wide.trip.count297 = sext i32 %i.is to i64     ; 5 uses
  %i.iv = sub nsw i64 %wide.trip.count297, %i.iu  ; 13 uses
  %min.iters.check = icmp ult i64 %i.iv, 8        ; 2 uses
  br i1 %i.eo, label %iter.check, label %iter.check452

iter.check452:                                    ; preds = %.lr.ph264
  br i1 %min.iters.check, label %.lr.ph264.split.preheader, label %vector.memcheck401

vector.memcheck401:                               ; preds = %iter.check452
  %i.iw = shl nsw i64 %i.hi, 1
  %i.ix = shl nsw i64 %i.ho, 1
  %i.iy = add i64 %i.iw, %i.hf
  %i.iz = add i64 %i.ix, %i.hl
  %i.ja = sub i64 %i.iz, %i.iy
  %diff.check402 = icmp ugt i64 %i.ja, -32
  br i1 %diff.check402, label %.lr.ph264.split.preheader, label %vector.main.loop.iter.check403

vector.main.loop.iter.check403:                   ; preds = %vector.memcheck401
  %min.iters.check404 = icmp ult i64 %i.iv, 16
  br i1 %min.iters.check404, label %vec.epilog.ph456, label %vector.ph405

vector.ph405:                                     ; preds = %vector.main.loop.iter.check403
  %i.jb = and i64 %i.iv, 8
  %n.vec406 = and i64 %i.iv, -16                  ; 4 uses
  %i.jc = add nsw i64 %n.vec406, %i.iu
  br label %vector.body413

vector.body413:                                   ; preds = %vector.ph405, %pred.store.continue448
  %index414 = phi i64 [ 0, %vector.ph405 ], [ %index.next449, %pred.store.continue448 ] ; 2 uses
  %i.jd = add nuw i64 %index414, %i.iu            ; 17 uses
  %i.je = getelementptr inbounds [2 x i8], ptr %i.hp, i64 %i.jd ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %wide.load415 = load <8 x i16>, ptr %i.je, align 2, !tbaa !77 ; 10 uses
  %wide.load416 = load <8 x i16>, ptr %i.jf, align 2, !tbaa !77 ; 10 uses
  %i.jg = icmp slt <8 x i16> %wide.load415, splat (i16 -1) ; 3 uses
  %i.jh = icmp slt <8 x i16> %wide.load416, splat (i16 -1) ; 3 uses
  %i.ji = and <8 x i16> %wide.load415, splat (i16 15) ; 3 uses
  %i.jj = and <8 x i16> %wide.load416, splat (i16 15) ; 3 uses
  %i.jk = icmp eq <8 x i16> %i.ji, zeroinitializer
  %i.jl = icmp eq <8 x i16> %i.jj, zeroinitializer
  %i.jm = icmp eq <8 x i16> %i.ji, splat (i16 1)
  %i.jn = icmp eq <8 x i16> %i.jj, splat (i16 1)
  %i.jo = icmp eq <8 x i16> %i.ji, splat (i16 2)
  %i.jp = icmp eq <8 x i16> %i.jj, splat (i16 2)
  %i.jq = and <8 x i1> %i.jg, %i.jk
  %i.jr = and <8 x i1> %i.jh, %i.jl
  %i.js = and <8 x i1> %i.jg, %i.jm
  %i.jt = and <8 x i1> %i.jh, %i.jn
  %i.ju = and <8 x i1> %i.jg, %i.jo
  %i.jv = and <8 x i1> %i.jh, %i.jp
  %i.jw = select <8 x i1> %i.js, <8 x i1> %broadcast.splat410, <8 x i1> zeroinitializer
  %i.jx = select <8 x i1> %i.jt, <8 x i1> %broadcast.splat410, <8 x i1> zeroinitializer
  %i.jy = select <8 x i1> %i.ju, <8 x i1> %broadcast.splat408, <8 x i1> %i.jw
  %i.jz = select <8 x i1> %i.jv, <8 x i1> %broadcast.splat408, <8 x i1> %i.jx
  %i.ka = select <8 x i1> %i.jq, <8 x i1> %broadcast.splat412, <8 x i1> zeroinitializer
  %i.kb = select <8 x i1> %i.jr, <8 x i1> %broadcast.splat412, <8 x i1> zeroinitializer
  %4 = or <8 x i1> %i.jy, %i.ka                   ; 8 uses
  %5 = or <8 x i1> %i.jz, %i.kb                   ; 8 uses
  %i.kc = extractelement <8 x i1> %4, i64 0
  br i1 %i.kc, label %pred.store.if417, label %pred.store.continue418

pred.store.if417:                                 ; preds = %vector.body413
  %i.kd = getelementptr inbounds [2 x i8], ptr %i.hj, i64 %i.jd
  %i.ke = extractelement <8 x i16> %wide.load415, i64 0
  store i16 %i.ke, ptr %i.kd, align 2, !tbaa !77
  br label %pred.store.continue418

pred.store.continue418:                           ; preds = %pred.store.if417, %vector.body413
  %i.kf = extractelement <8 x i1> %4, i64 1
  br i1 %i.kf, label %pred.store.if419, label %pred.store.continue420

pred.store.if419:                                 ; preds = %pred.store.continue418
  %i.kg = getelementptr [2 x i8], ptr %i.hj, i64 %i.jd
  %i.kh = getelementptr i8, ptr %i.kg, i64 2
  %i.ki = extractelement <8 x i16> %wide.load415, i64 1
  store i16 %i.ki, ptr %i.kh, align 2, !tbaa !77
  br label %pred.store.continue420

pred.store.continue420:                           ; preds = %pred.store.if419, %pred.store.continue418
  %i.kj = extractelement <8 x i1> %4, i64 2
  br i1 %i.kj, label %pred.store.if421, label %pred.store.continue422

pred.store.if421:                                 ; preds = %pred.store.continue420
  %i.kk = getelementptr [2 x i8], ptr %i.hj, i64 %i.jd
  %i.kl = getelementptr i8, ptr %i.kk, i64 4
  %i.km = extractelement <8 x i16> %wide.load415, i64 2
  store i16 %i.km, ptr %i.kl, align 2, !tbaa !77
  br label %pred.store.continue422

pred.store.continue422:                           ; preds = %pred.store.if421, %pred.store.continue420
  %i.kn = extractelement <8 x i1> %4, i64 3
  br i1 %i.kn, label %pred.store.if423, label %pred.store.continue424

pred.store.if423:                                 ; preds = %pred.store.continue422
  %i.ko = getelementptr [2 x i8], ptr %i.hj, i64 %i.jd
  %i.kp = getelementptr i8, ptr %i.ko, i64 6
  %i.kq = extractelement <8 x i16> %wide.load415, i64 3
  store i16 %i.kq, ptr %i.kp, align 2, !tbaa !77
  br label %pred.store.continue424

pred.store.continue424:                           ; preds = %pred.store.if423, %pred.store.continue422
  %i.kr = extractelement <8 x i1> %4, i64 4
  br i1 %i.kr, label %pred.store.if425, label %pred.store.continue426

pred.store.if425:                                 ; preds = %pred.store.continue424
  %i.ks = getelementptr [2 x i8], ptr %i.hj, i64 %i.jd
  %i.kt = getelementptr i8, ptr %i.ks, i64 8
  %i.ku = extractelement <8 x i16> %wide.load415, i64 4
  store i16 %i.ku, ptr %i.kt, align 2, !tbaa !77
  br label %pred.store.continue426

pred.store.continue426:                           ; preds = %pred.store.if425, %pred.store.continue424
  %i.kv = extractelement <8 x i1> %4, i64 5
  br i1 %i.kv, label %pred.store.if427, label %pred.store.continue428

pred.store.if427:                                 ; preds = %pred.store.continue426
  %i.kw = getelementptr [2 x i8], ptr %i.hj, i64 %i.jd
  %i.kx = getelementptr i8, ptr %i.kw, i64 10
  %i.ky = extractelement <8 x i16> %wide.load415, i64 5
  store i16 %i.ky, ptr %i.kx, align 2, !tbaa !77
  br label %pred.store.continue428

pred.store.continue428:                           ; preds = %pred.store.if427, %pred.store.continue426
  %i.kz = extractelement <8 x i1> %4, i64 6
  br i1 %i.kz, label %pred.store.if429, label %pred.store.continue430

pred.store.if429:                                 ; preds = %pred.store.continue428
  %i.la = getelementptr [2 x i8], ptr %i.hj, i64 %i.jd
  %i.lb = getelementptr i8, ptr %i.la, i64 12
  %i.lc = extractelement <8 x i16> %wide.load415, i64 6
  store i16 %i.lc, ptr %i.lb, align 2, !tbaa !77
  br label %pred.store.continue430

pred.store.continue430:                           ; preds = %pred.store.if429, %pred.store.continue428
  %i.ld = extractelement <8 x i1> %4, i64 7
  br i1 %i.ld, label %pred.store.if431, label %pred.store.continue432

pred.store.if431:                                 ; preds = %pred.store.continue430
  %i.le = getelementptr [2 x i8], ptr %i.hj, i64 %i.jd
  %i.lf = getelementptr i8, ptr %i.le, i64 14
  %i.lg = extractelement <8 x i16> %wide.load415, i64 7
  store i16 %i.lg, ptr %i.lf, align 2, !tbaa !77
  br label %pred.store.continue432

pred.store.continue432:                           ; preds = %pred.store.if431, %pred.store.continue430
  %i.lh = extractelement <8 x i1> %5, i64 0
  br i1 %i.lh, label %pred.store.if433, label %pred.store.continue434

pred.store.if433:                                 ; preds = %pred.store.continue432
  %i.li = getelementptr [2 x i8], ptr %i.hj, i64 %i.jd
  %i.lj = getelementptr i8, ptr %i.li, i64 16
  %i.lk = extractelement <8 x i16> %wide.load416, i64 0
  store i16 %i.lk, ptr %i.lj, align 2, !tbaa !77
  br label %pred.store.continue434

pred.store.continue434:                           ; preds = %pred.store.if433, %pred.store.continue432
  %i.ll = extractelement <8 x i1> %5, i64 1
  br i1 %i.ll, label %pred.store.if435, label %pred.store.continue436

pred.store.if435:                                 ; preds = %pred.store.continue434
  %i.lm = getelementptr [2 x i8], ptr %i.hj, i64 %i.jd
  %i.ln = getelementptr i8, ptr %i.lm, i64 18
  %i.lo = extractelement <8 x i16> %wide.load416, i64 1
  store i16 %i.lo, ptr %i.ln, align 2, !tbaa !77
  br label %pred.store.continue436

pred.store.continue436:                           ; preds = %pred.store.if435, %pred.store.continue434
  %i.lp = extractelement <8 x i1> %5, i64 2
  br i1 %i.lp, label %pred.store.if437, label %pred.store.continue438

pred.store.if437:                                 ; preds = %pred.store.continue436
  %i.lq = getelementptr [2 x i8], ptr %i.hj, i64 %i.jd
  %i.lr = getelementptr i8, ptr %i.lq, i64 20
  %i.ls = extractelement <8 x i16> %wide.load416, i64 2
  store i16 %i.ls, ptr %i.lr, align 2, !tbaa !77
  br label %pred.store.continue438

pred.store.continue438:                           ; preds = %pred.store.if437, %pred.store.continue436
  %i.lt = extractelement <8 x i1> %5, i64 3
  br i1 %i.lt, label %pred.store.if439, label %pred.store.continue440

pred.store.if439:                                 ; preds = %pred.store.continue438
  %i.lu = getelementptr [2 x i8], ptr %i.hj, i64 %i.jd
  %i.lv = getelementptr i8, ptr %i.lu, i64 22
  %i.lw = extractelement <8 x i16> %wide.load416, i64 3
  store i16 %i.lw, ptr %i.lv, align 2, !tbaa !77
  br label %pred.store.continue440

pred.store.continue440:                           ; preds = %pred.store.if439, %pred.store.continue438
  %i.lx = extractelement <8 x i1> %5, i64 4
  br i1 %i.lx, label %pred.store.if441, label %pred.store.continue442

pred.store.if441:                                 ; preds = %pred.store.continue440
  %i.ly = getelementptr [2 x i8], ptr %i.hj, i64 %i.jd
  %i.lz = getelementptr i8, ptr %i.ly, i64 24
  %i.ma = extractelement <8 x i16> %wide.load416, i64 4
  store i16 %i.ma, ptr %i.lz, align 2, !tbaa !77
  br label %pred.store.continue442

pred.store.continue442:                           ; preds = %pred.store.if441, %pred.store.continue440
  %i.mb = extractelement <8 x i1> %5, i64 5
  br i1 %i.mb, label %pred.store.if443, label %pred.store.continue444

pred.store.if443:                                 ; preds = %pred.store.continue442
  %i.mc = getelementptr [2 x i8], ptr %i.hj, i64 %i.jd
  %i.md = getelementptr i8, ptr %i.mc, i64 26
  %i.me = extractelement <8 x i16> %wide.load416, i64 5
  store i16 %i.me, ptr %i.md, align 2, !tbaa !77
  br label %pred.store.continue444

pred.store.continue444:                           ; preds = %pred.store.if443, %pred.store.continue442
  %i.mf = extractelement <8 x i1> %5, i64 6
  br i1 %i.mf, label %pred.store.if445, label %pred.store.continue446

pred.store.if445:                                 ; preds = %pred.store.continue444
  %i.mg = getelementptr [2 x i8], ptr %i.hj, i64 %i.jd
  %i.mh = getelementptr i8, ptr %i.mg, i64 28
  %i.mi = extractelement <8 x i16> %wide.load416, i64 6
  store i16 %i.mi, ptr %i.mh, align 2, !tbaa !77
  br label %pred.store.continue446

pred.store.continue446:                           ; preds = %pred.store.if445, %pred.store.continue444
  %i.mj = extractelement <8 x i1> %5, i64 7
  br i1 %i.mj, label %pred.store.if447, label %pred.store.continue448

pred.store.if447:                                 ; preds = %pred.store.continue446
  %i.mk = getelementptr [2 x i8], ptr %i.hj, i64 %i.jd
  %i.ml = getelementptr i8, ptr %i.mk, i64 30
  %i.mm = extractelement <8 x i16> %wide.load416, i64 7
  store i16 %i.mm, ptr %i.ml, align 2, !tbaa !77
  br label %pred.store.continue448

pred.store.continue448:                           ; preds = %pred.store.if447, %pred.store.continue446
  %index.next449 = add nuw i64 %index414, 16      ; 2 uses
  %i.mn = icmp eq i64 %index.next449, %n.vec406
  br i1 %i.mn, label %middle.block450, label %vector.body413, !llvm.loop !120

middle.block450:                                  ; preds = %pred.store.continue448
  %cmp.n451 = icmp eq i64 %i.iv, %n.vec406
  br i1 %cmp.n451, label %.loopexit, label %vec.epilog.iter.check453

vec.epilog.iter.check453:                         ; preds = %middle.block450
  %min.epilog.iters.check455.not.not = icmp eq i64 %i.jb, 0
  br i1 %min.epilog.iters.check455.not.not, label %.lr.ph264.split.preheader, label %vec.epilog.ph456, !prof !81

vec.epilog.ph456:                                 ; preds = %vector.main.loop.iter.check403, %vec.epilog.iter.check453
  %vec.epilog.resume.val457 = phi i64 [ %n.vec406, %vec.epilog.iter.check453 ], [ 0, %vector.main.loop.iter.check403 ]
  %n.vec458 = and i64 %i.iv, -8                   ; 3 uses
  %i.mo = add nsw i64 %n.vec458, %i.iu
  br label %vec.epilog.vector.body465

vec.epilog.vector.body465:                        ; preds = %pred.store.continue483, %vec.epilog.ph456
  %index466 = phi i64 [ %vec.epilog.resume.val457, %vec.epilog.ph456 ], [ %index.next484, %pred.store.continue483 ] ; 2 uses
  %i.mp = add nuw i64 %index466, %i.iu            ; 9 uses
  %i.mq = getelementptr inbounds [2 x i8], ptr %i.hp, i64 %i.mp
  %wide.load467 = load <8 x i16>, ptr %i.mq, align 2, !tbaa !77 ; 10 uses
  %i.mr = icmp slt <8 x i16> %wide.load467, splat (i16 -1) ; 3 uses
  %i.ms = and <8 x i16> %wide.load467, splat (i16 15) ; 3 uses
  %i.mt = icmp eq <8 x i16> %i.ms, zeroinitializer
  %i.mu = icmp eq <8 x i16> %i.ms, splat (i16 1)
  %i.mv = icmp eq <8 x i16> %i.ms, splat (i16 2)
  %i.mw = and <8 x i1> %i.mr, %i.mt
  %i.mx = and <8 x i1> %i.mr, %i.mu
  %i.my = and <8 x i1> %i.mr, %i.mv
  %i.mz = select <8 x i1> %i.mx, <8 x i1> %broadcast.splat462, <8 x i1> zeroinitializer
  %i.na = select <8 x i1> %i.my, <8 x i1> %broadcast.splat460, <8 x i1> %i.mz
  %i.nb = select <8 x i1> %i.mw, <8 x i1> %broadcast.splat464, <8 x i1> zeroinitializer
  %6 = or <8 x i1> %i.na, %i.nb                   ; 8 uses
  %i.nc = extractelement <8 x i1> %6, i64 0
  br i1 %i.nc, label %pred.store.if468, label %pred.store.continue469

pred.store.if468:                                 ; preds = %vec.epilog.vector.body465
  %i.nd = getelementptr inbounds [2 x i8], ptr %i.hj, i64 %i.mp
  %i.ne = extractelement <8 x i16> %wide.load467, i64 0
  store i16 %i.ne, ptr %i.nd, align 2, !tbaa !77
  br label %pred.store.continue469

pred.store.continue469:                           ; preds = %pred.store.if468, %vec.epilog.vector.body465
  %i.nf = extractelement <8 x i1> %6, i64 1
  br i1 %i.nf, label %pred.store.if470, label %pred.store.continue471

pred.store.if470:                                 ; preds = %pred.store.continue469
  %i.ng = getelementptr [2 x i8], ptr %i.hj, i64 %i.mp
  %i.nh = getelementptr i8, ptr %i.ng, i64 2
  %i.ni = extractelement <8 x i16> %wide.load467, i64 1
  store i16 %i.ni, ptr %i.nh, align 2, !tbaa !77
  br label %pred.store.continue471

pred.store.continue471:                           ; preds = %pred.store.if470, %pred.store.continue469
  %i.nj = extractelement <8 x i1> %6, i64 2
  br i1 %i.nj, label %pred.store.if472, label %pred.store.continue473

pred.store.if472:                                 ; preds = %pred.store.continue471
  %i.nk = getelementptr [2 x i8], ptr %i.hj, i64 %i.mp
  %i.nl = getelementptr i8, ptr %i.nk, i64 4
  %i.nm = extractelement <8 x i16> %wide.load467, i64 2
  store i16 %i.nm, ptr %i.nl, align 2, !tbaa !77
  br label %pred.store.continue473

pred.store.continue473:                           ; preds = %pred.store.if472, %pred.store.continue471
  %i.nn = extractelement <8 x i1> %6, i64 3
  br i1 %i.nn, label %pred.store.if474, label %pred.store.continue475

pred.store.if474:                                 ; preds = %pred.store.continue473
  %i.no = getelementptr [2 x i8], ptr %i.hj, i64 %i.mp
  %i.np = getelementptr i8, ptr %i.no, i64 6
  %i.nq = extractelement <8 x i16> %wide.load467, i64 3
  store i16 %i.nq, ptr %i.np, align 2, !tbaa !77
  br label %pred.store.continue475

pred.store.continue475:                           ; preds = %pred.store.if474, %pred.store.continue473
  %i.nr = extractelement <8 x i1> %6, i64 4
  br i1 %i.nr, label %pred.store.if476, label %pred.store.continue477

pred.store.if476:                                 ; preds = %pred.store.continue475
  %i.ns = getelementptr [2 x i8], ptr %i.hj, i64 %i.mp
  %i.nt = getelementptr i8, ptr %i.ns, i64 8
  %i.nu = extractelement <8 x i16> %wide.load467, i64 4
  store i16 %i.nu, ptr %i.nt, align 2, !tbaa !77
  br label %pred.store.continue477

pred.store.continue477:                           ; preds = %pred.store.if476, %pred.store.continue475
  %i.nv = extractelement <8 x i1> %6, i64 5
  br i1 %i.nv, label %pred.store.if478, label %pred.store.continue479

pred.store.if478:                                 ; preds = %pred.store.continue477
  %i.nw = getelementptr [2 x i8], ptr %i.hj, i64 %i.mp
  %i.nx = getelementptr i8, ptr %i.nw, i64 10
  %i.ny = extractelement <8 x i16> %wide.load467, i64 5
  store i16 %i.ny, ptr %i.nx, align 2, !tbaa !77
  br label %pred.store.continue479

pred.store.continue479:                           ; preds = %pred.store.if478, %pred.store.continue477
  %i.nz = extractelement <8 x i1> %6, i64 6
  br i1 %i.nz, label %pred.store.if480, label %pred.store.continue481

pred.store.if480:                                 ; preds = %pred.store.continue479
  %i.oa = getelementptr [2 x i8], ptr %i.hj, i64 %i.mp
  %i.ob = getelementptr i8, ptr %i.oa, i64 12
  %i.oc = extractelement <8 x i16> %wide.load467, i64 6
  store i16 %i.oc, ptr %i.ob, align 2, !tbaa !77
  br label %pred.store.continue481

pred.store.continue481:                           ; preds = %pred.store.if480, %pred.store.continue479
  %i.od = extractelement <8 x i1> %6, i64 7
  br i1 %i.od, label %pred.store.if482, label %pred.store.continue483

pred.store.if482:                                 ; preds = %pred.store.continue481
  %i.oe = getelementptr [2 x i8], ptr %i.hj, i64 %i.mp
  %i.of = getelementptr i8, ptr %i.oe, i64 14
  %i.og = extractelement <8 x i16> %wide.load467, i64 7
  store i16 %i.og, ptr %i.of, align 2, !tbaa !77
  br label %pred.store.continue483

pred.store.continue483:                           ; preds = %pred.store.if482, %pred.store.continue481
  %index.next484 = add nuw i64 %index466, 8       ; 2 uses
  %i.oh = icmp eq i64 %index.next484, %n.vec458
  br i1 %i.oh, label %vec.epilog.middle.block485, label %vec.epilog.vector.body465, !llvm.loop !121

vec.epilog.middle.block485:                       ; preds = %pred.store.continue483
  %cmp.n486 = icmp eq i64 %i.iv, %n.vec458
  br i1 %cmp.n486, label %.loopexit, label %.lr.ph264.split.preheader

.lr.ph264.split.preheader:                        ; preds = %iter.check452, %vector.memcheck401, %vec.epilog.iter.check453, %vec.epilog.middle.block485
  %indvars.iv289.ph = phi i64 [ %i.iu, %iter.check452 ], [ %i.iu, %vector.memcheck401 ], [ %i.jc, %vec.epilog.iter.check453 ], [ %i.mo, %vec.epilog.middle.block485 ] ; 6 uses
  %xtraiter = and i64 %indvars.iv289.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph264.split.prol.loopexit, label %.lr.ph264.split.prol

.lr.ph264.split.prol:                             ; preds = %.lr.ph264.split.preheader
  %i.oi = getelementptr inbounds [2 x i8], ptr %i.hp, i64 %indvars.iv289.ph
  %i.oj = load i16, ptr %i.oi, align 2, !tbaa !77 ; 3 uses
  %or.cond224.prol = icmp sgt i16 %i.oj, -2
  br i1 %or.cond224.prol, label %.lr.ph264.split.prol.loopexit.unr-lcssa, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph264.split.prol
  %i.ok = and i16 %i.oj, 15
  switch i16 %i.ok, label %.lr.ph264.split.prol.loopexit.unr-lcssa [
    i16 0, label %bb.ae
    i16 1, label %bb.ad
    i16 2, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.eu, label %.sink.split330.prol, label %.lr.ph264.split.prol.loopexit.unr-lcssa

bb.ad:                                            ; preds = %bb.ab
  br i1 %i.es, label %.sink.split330.prol, label %.lr.ph264.split.prol.loopexit.unr-lcssa

bb.ae:                                            ; preds = %bb.ab
  br i1 %i.et, label %.sink.split330.prol, label %.lr.ph264.split.prol.loopexit.unr-lcssa

.sink.split330.prol:                              ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.ol = getelementptr inbounds [2 x i8], ptr %i.hj, i64 %indvars.iv289.ph
  store i16 %i.oj, ptr %i.ol, align 2, !tbaa !77
  br label %.lr.ph264.split.prol.loopexit.unr-lcssa

.lr.ph264.split.prol.loopexit.unr-lcssa:          ; preds = %.sink.split330.prol, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %.lr.ph264.split.prol
  %indvars.iv.next290.prol = add nuw nsw i64 %indvars.iv289.ph, 1
  br label %.lr.ph264.split.prol.loopexit

.lr.ph264.split.prol.loopexit:                    ; preds = %.lr.ph264.split.prol.loopexit.unr-lcssa, %.lr.ph264.split.preheader
  %indvars.iv289.unr = phi i64 [ %indvars.iv289.ph, %.lr.ph264.split.preheader ], [ %indvars.iv.next290.prol, %.lr.ph264.split.prol.loopexit.unr-lcssa ]
  %i.om = add nsw i64 %wide.trip.count297, -1
  %i.on = icmp eq i64 %indvars.iv289.ph, %i.om
  br i1 %i.on, label %.loopexit, label %.lr.ph264.split

iter.check:                                       ; preds = %.lr.ph264
  br i1 %min.iters.check, label %.lr.ph264.split.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.oo = shl nsw i64 %i.hi, 1
  %i.op = shl nsw i64 %i.ho, 1
  %i.oq = add i64 %i.oo, %i.hf
  %i.or = add i64 %i.op, %i.hl
  %i.os = sub i64 %i.or, %i.oq
  %diff.check = icmp ugt i64 %i.os, -32
  br i1 %diff.check, label %.lr.ph264.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check335 = icmp ult i64 %i.iv, 16
  br i1 %min.iters.check335, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ot = and i64 %i.iv, 8
  %n.vec = and i64 %i.iv, -16                     ; 4 uses
  %i.ou = add nsw i64 %n.vec, %i.iu
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue370
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue370 ] ; 2 uses
  %i.ov = add nuw i64 %index, %i.iu               ; 17 uses
  %i.ow = getelementptr inbounds [2 x i8], ptr %i.hp, i64 %i.ov ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %wide.load = load <8 x i16>, ptr %i.ow, align 2, !tbaa !77 ; 10 uses
  %wide.load340 = load <8 x i16>, ptr %i.ox, align 2, !tbaa !77 ; 10 uses
  %i.oy = icmp slt <8 x i16> %wide.load, splat (i16 -1) ; 4 uses
  %i.oz = icmp slt <8 x i16> %wide.load340, splat (i16 -1) ; 4 uses
  %i.pa = and <8 x i16> %wide.load, splat (i16 15) ; 4 uses
  %i.pb = and <8 x i16> %wide.load340, splat (i16 15) ; 4 uses
  %i.pc = icmp eq <8 x i16> %i.pa, zeroinitializer
  %i.pd = icmp eq <8 x i16> %i.pb, zeroinitializer
  %i.pe = icmp eq <8 x i16> %i.pa, splat (i16 1)
  %i.pf = icmp eq <8 x i16> %i.pb, splat (i16 1)
  %i.pg = icmp eq <8 x i16> %i.pa, splat (i16 2)
  %i.ph = icmp eq <8 x i16> %i.pb, splat (i16 2)
  %i.pi = icmp eq <8 x i16> %i.pa, splat (i16 3)
  %i.pj = icmp eq <8 x i16> %i.pb, splat (i16 3)
  %i.pk = and <8 x i1> %i.oy, %i.pc
  %i.pl = and <8 x i1> %i.oz, %i.pd
  %i.pm = and <8 x i1> %i.oy, %i.pe
  %i.pn = and <8 x i1> %i.oz, %i.pf
  %i.po = and <8 x i1> %i.oy, %i.pg
  %i.pp = and <8 x i1> %i.oz, %i.ph
  %i.pq = and <8 x i1> %i.oy, %i.pi
  %i.pr = and <8 x i1> %i.oz, %i.pj
  %i.ps = select <8 x i1> %i.pm, <8 x i1> %broadcast.splat337, <8 x i1> zeroinitializer
  %i.pt = select <8 x i1> %i.pn, <8 x i1> %broadcast.splat337, <8 x i1> zeroinitializer
  %i.pu = select <8 x i1> %i.pk, <8 x i1> %broadcast.splat339, <8 x i1> %i.ps
  %i.pv = select <8 x i1> %i.pl, <8 x i1> %broadcast.splat339, <8 x i1> %i.pt
  %i.pw = select <8 x i1> %i.po, <8 x i1> %broadcast.splat, <8 x i1> zeroinitializer
  %i.px = select <8 x i1> %i.pp, <8 x i1> %broadcast.splat, <8 x i1> zeroinitializer
  %7 = or <8 x i1> %i.pu, %i.pw
  %8 = or <8 x i1> %i.pv, %i.px
  %i.py = or <8 x i1> %7, %i.pq                   ; 8 uses
  %i.pz = or <8 x i1> %8, %i.pr                   ; 8 uses
  %i.qa = extractelement <8 x i1> %i.py, i64 0
  br i1 %i.qa, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.qb = getelementptr inbounds [2 x i8], ptr %i.hj, i64 %i.ov
  %i.qc = extractelement <8 x i16> %wide.load, i64 0
  store i16 %i.qc, ptr %i.qb, align 2, !tbaa !77
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.qd = extractelement <8 x i1> %i.py, i64 1
  br i1 %i.qd, label %pred.store.if341, label %pred.store.continue342

pred.store.if341:                                 ; preds = %pred.store.continue
  %i.qe = getelementptr [2 x i8], ptr %i.hj, i64 %i.ov
  %i.qf = getelementptr i8, ptr %i.qe, i64 2
  %i.qg = extractelement <8 x i16> %wide.load, i64 1
  store i16 %i.qg, ptr %i.qf, align 2, !tbaa !77
  br label %pred.store.continue342

pred.store.continue342:                           ; preds = %pred.store.if341, %pred.store.continue
  %i.qh = extractelement <8 x i1> %i.py, i64 2
  br i1 %i.qh, label %pred.store.if343, label %pred.store.continue344

pred.store.if343:                                 ; preds = %pred.store.continue342
  %i.qi = getelementptr [2 x i8], ptr %i.hj, i64 %i.ov
  %i.qj = getelementptr i8, ptr %i.qi, i64 4
  %i.qk = extractelement <8 x i16> %wide.load, i64 2
  store i16 %i.qk, ptr %i.qj, align 2, !tbaa !77
  br label %pred.store.continue344

pred.store.continue344:                           ; preds = %pred.store.if343, %pred.store.continue342
  %i.ql = extractelement <8 x i1> %i.py, i64 3
  br i1 %i.ql, label %pred.store.if345, label %pred.store.continue346

pred.store.if345:                                 ; preds = %pred.store.continue344
  %i.qm = getelementptr [2 x i8], ptr %i.hj, i64 %i.ov
  %i.qn = getelementptr i8, ptr %i.qm, i64 6
  %i.qo = extractelement <8 x i16> %wide.load, i64 3
  store i16 %i.qo, ptr %i.qn, align 2, !tbaa !77
  br label %pred.store.continue346

pred.store.continue346:                           ; preds = %pred.store.if345, %pred.store.continue344
  %i.qp = extractelement <8 x i1> %i.py, i64 4
  br i1 %i.qp, label %pred.store.if347, label %pred.store.continue348

pred.store.if347:                                 ; preds = %pred.store.continue346
  %i.qq = getelementptr [2 x i8], ptr %i.hj, i64 %i.ov
  %i.qr = getelementptr i8, ptr %i.qq, i64 8
  %i.qs = extractelement <8 x i16> %wide.load, i64 4
  store i16 %i.qs, ptr %i.qr, align 2, !tbaa !77
  br label %pred.store.continue348

pred.store.continue348:                           ; preds = %pred.store.if347, %pred.store.continue346
  %i.qt = extractelement <8 x i1> %i.py, i64 5
  br i1 %i.qt, label %pred.store.if349, label %pred.store.continue350

pred.store.if349:                                 ; preds = %pred.store.continue348
  %i.qu = getelementptr [2 x i8], ptr %i.hj, i64 %i.ov
  %i.qv = getelementptr i8, ptr %i.qu, i64 10
  %i.qw = extractelement <8 x i16> %wide.load, i64 5
  store i16 %i.qw, ptr %i.qv, align 2, !tbaa !77
  br label %pred.store.continue350

pred.store.continue350:                           ; preds = %pred.store.if349, %pred.store.continue348
  %i.qx = extractelement <8 x i1> %i.py, i64 6
  br i1 %i.qx, label %pred.store.if351, label %pred.store.continue352

pred.store.if351:                                 ; preds = %pred.store.continue350
  %i.qy = getelementptr [2 x i8], ptr %i.hj, i64 %i.ov
  %i.qz = getelementptr i8, ptr %i.qy, i64 12
  %i.ra = extractelement <8 x i16> %wide.load, i64 6
  store i16 %i.ra, ptr %i.qz, align 2, !tbaa !77
  br label %pred.store.continue352

pred.store.continue352:                           ; preds = %pred.store.if351, %pred.store.continue350
  %i.rb = extractelement <8 x i1> %i.py, i64 7
  br i1 %i.rb, label %pred.store.if353, label %pred.store.continue354

pred.store.if353:                                 ; preds = %pred.store.continue352
  %i.rc = getelementptr [2 x i8], ptr %i.hj, i64 %i.ov
  %i.rd = getelementptr i8, ptr %i.rc, i64 14
  %i.re = extractelement <8 x i16> %wide.load, i64 7
  store i16 %i.re, ptr %i.rd, align 2, !tbaa !77
  br label %pred.store.continue354

pred.store.continue354:                           ; preds = %pred.store.if353, %pred.store.continue352
  %i.rf = extractelement <8 x i1> %i.pz, i64 0
  br i1 %i.rf, label %pred.store.if355, label %pred.store.continue356

pred.store.if355:                                 ; preds = %pred.store.continue354
  %i.rg = getelementptr [2 x i8], ptr %i.hj, i64 %i.ov
  %i.rh = getelementptr i8, ptr %i.rg, i64 16
  %i.ri = extractelement <8 x i16> %wide.load340, i64 0
  store i16 %i.ri, ptr %i.rh, align 2, !tbaa !77
  br label %pred.store.continue356

pred.store.continue356:                           ; preds = %pred.store.if355, %pred.store.continue354
  %i.rj = extractelement <8 x i1> %i.pz, i64 1
  br i1 %i.rj, label %pred.store.if357, label %pred.store.continue358

pred.store.if357:                                 ; preds = %pred.store.continue356
  %i.rk = getelementptr [2 x i8], ptr %i.hj, i64 %i.ov
  %i.rl = getelementptr i8, ptr %i.rk, i64 18
  %i.rm = extractelement <8 x i16> %wide.load340, i64 1
  store i16 %i.rm, ptr %i.rl, align 2, !tbaa !77
  br label %pred.store.continue358

pred.store.continue358:                           ; preds = %pred.store.if357, %pred.store.continue356
  %i.rn = extractelement <8 x i1> %i.pz, i64 2
  br i1 %i.rn, label %pred.store.if359, label %pred.store.continue360

pred.store.if359:                                 ; preds = %pred.store.continue358
  %i.ro = getelementptr [2 x i8], ptr %i.hj, i64 %i.ov
  %i.rp = getelementptr i8, ptr %i.ro, i64 20
  %i.rq = extractelement <8 x i16> %wide.load340, i64 2
  store i16 %i.rq, ptr %i.rp, align 2, !tbaa !77
  br label %pred.store.continue360

pred.store.continue360:                           ; preds = %pred.store.if359, %pred.store.continue358
  %i.rr = extractelement <8 x i1> %i.pz, i64 3
  br i1 %i.rr, label %pred.store.if361, label %pred.store.continue362

pred.store.if361:                                 ; preds = %pred.store.continue360
  %i.rs = getelementptr [2 x i8], ptr %i.hj, i64 %i.ov
  %i.rt = getelementptr i8, ptr %i.rs, i64 22
  %i.ru = extractelement <8 x i16> %wide.load340, i64 3
  store i16 %i.ru, ptr %i.rt, align 2, !tbaa !77
  br label %pred.store.continue362

pred.store.continue362:                           ; preds = %pred.store.if361, %pred.store.continue360
  %i.rv = extractelement <8 x i1> %i.pz, i64 4
  br i1 %i.rv, label %pred.store.if363, label %pred.store.continue364

pred.store.if363:                                 ; preds = %pred.store.continue362
  %i.rw = getelementptr [2 x i8], ptr %i.hj, i64 %i.ov
  %i.rx = getelementptr i8, ptr %i.rw, i64 24
  %i.ry = extractelement <8 x i16> %wide.load340, i64 4
  store i16 %i.ry, ptr %i.rx, align 2, !tbaa !77
  br label %pred.store.continue364

pred.store.continue364:                           ; preds = %pred.store.if363, %pred.store.continue362
  %i.rz = extractelement <8 x i1> %i.pz, i64 5
  br i1 %i.rz, label %pred.store.if365, label %pred.store.continue366

pred.store.if365:                                 ; preds = %pred.store.continue364
  %i.sa = getelementptr [2 x i8], ptr %i.hj, i64 %i.ov
  %i.sb = getelementptr i8, ptr %i.sa, i64 26
  %i.sc = extractelement <8 x i16> %wide.load340, i64 5
  store i16 %i.sc, ptr %i.sb, align 2, !tbaa !77
  br label %pred.store.continue366

pred.store.continue366:                           ; preds = %pred.store.if365, %pred.store.continue364
  %i.sd = extractelement <8 x i1> %i.pz, i64 6
  br i1 %i.sd, label %pred.store.if367, label %pred.store.continue368

pred.store.if367:                                 ; preds = %pred.store.continue366
  %i.se = getelementptr [2 x i8], ptr %i.hj, i64 %i.ov
  %i.sf = getelementptr i8, ptr %i.se, i64 28
  %i.sg = extractelement <8 x i16> %wide.load340, i64 6
  store i16 %i.sg, ptr %i.sf, align 2, !tbaa !77
  br label %pred.store.continue368

pred.store.continue368:                           ; preds = %pred.store.if367, %pred.store.continue366
  %i.sh = extractelement <8 x i1> %i.pz, i64 7
  br i1 %i.sh, label %pred.store.if369, label %pred.store.continue370

pred.store.if369:                                 ; preds = %pred.store.continue368
  %i.si = getelementptr [2 x i8], ptr %i.hj, i64 %i.ov
  %i.sj = getelementptr i8, ptr %i.si, i64 30
  %i.sk = extractelement <8 x i16> %wide.load340, i64 7
  store i16 %i.sk, ptr %i.sj, align 2, !tbaa !77
  br label %pred.store.continue370

pred.store.continue370:                           ; preds = %pred.store.if369, %pred.store.continue368
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.sl = icmp eq i64 %index.next, %n.vec
  br i1 %i.sl, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %pred.store.continue370
  %cmp.n = icmp eq i64 %i.iv, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.ot, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph264.split.us.preheader, label %vec.epilog.ph, !prof !81

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec371 = and i64 %i.iv, -8                   ; 3 uses
  %i.sm = add nsw i64 %n.vec371, %i.iu
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue395, %vec.epilog.ph
  %index378 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next396, %pred.store.continue395 ] ; 2 uses
  %i.sn = add nuw i64 %index378, %i.iu            ; 9 uses
  %i.so = getelementptr inbounds [2 x i8], ptr %i.hp, i64 %i.sn
  %wide.load379 = load <8 x i16>, ptr %i.so, align 2, !tbaa !77 ; 10 uses
  %i.sp = icmp slt <8 x i16> %wide.load379, splat (i16 -1) ; 4 uses
  %i.sq = and <8 x i16> %wide.load379, splat (i16 15) ; 4 uses
  %i.sr = icmp eq <8 x i16> %i.sq, zeroinitializer
  %i.ss = icmp eq <8 x i16> %i.sq, splat (i16 1)
  %i.st = icmp eq <8 x i16> %i.sq, splat (i16 2)
  %i.su = icmp eq <8 x i16> %i.sq, splat (i16 3)
  %i.sv = and <8 x i1> %i.sp, %i.sr
  %i.sw = and <8 x i1> %i.sp, %i.ss
  %i.sx = and <8 x i1> %i.sp, %i.st
  %i.sy = and <8 x i1> %i.sp, %i.su
  %i.sz = select <8 x i1> %i.sw, <8 x i1> %broadcast.splat375, <8 x i1> zeroinitializer
  %i.ta = select <8 x i1> %i.sv, <8 x i1> %broadcast.splat377, <8 x i1> %i.sz
  %i.tb = select <8 x i1> %i.sx, <8 x i1> %broadcast.splat373, <8 x i1> zeroinitializer
  %9 = or <8 x i1> %i.ta, %i.tb
  %i.tc = or <8 x i1> %9, %i.sy                   ; 8 uses
  %i.td = extractelement <8 x i1> %i.tc, i64 0
  br i1 %i.td, label %pred.store.if380, label %pred.store.continue381

pred.store.if380:                                 ; preds = %vec.epilog.vector.body
  %i.te = getelementptr inbounds [2 x i8], ptr %i.hj, i64 %i.sn
  %i.tf = extractelement <8 x i16> %wide.load379, i64 0
  store i16 %i.tf, ptr %i.te, align 2, !tbaa !77
  br label %pred.store.continue381

pred.store.continue381:                           ; preds = %pred.store.if380, %vec.epilog.vector.body
  %i.tg = extractelement <8 x i1> %i.tc, i64 1
  br i1 %i.tg, label %pred.store.if382, label %pred.store.continue383

pred.store.if382:                                 ; preds = %pred.store.continue381
  %i.th = getelementptr [2 x i8], ptr %i.hj, i64 %i.sn
  %i.ti = getelementptr i8, ptr %i.th, i64 2
  %i.tj = extractelement <8 x i16> %wide.load379, i64 1
  store i16 %i.tj, ptr %i.ti, align 2, !tbaa !77
  br label %pred.store.continue383

pred.store.continue383:                           ; preds = %pred.store.if382, %pred.store.continue381
  %i.tk = extractelement <8 x i1> %i.tc, i64 2
  br i1 %i.tk, label %pred.store.if384, label %pred.store.continue385

pred.store.if384:                                 ; preds = %pred.store.continue383
  %i.tl = getelementptr [2 x i8], ptr %i.hj, i64 %i.sn
  %i.tm = getelementptr i8, ptr %i.tl, i64 4
  %i.tn = extractelement <8 x i16> %wide.load379, i64 2
  store i16 %i.tn, ptr %i.tm, align 2, !tbaa !77
  br label %pred.store.continue385

pred.store.continue385:                           ; preds = %pred.store.if384, %pred.store.continue383
  %i.to = extractelement <8 x i1> %i.tc, i64 3
  br i1 %i.to, label %pred.store.if386, label %pred.store.continue387

pred.store.if386:                                 ; preds = %pred.store.continue385
  %i.tp = getelementptr [2 x i8], ptr %i.hj, i64 %i.sn
  %i.tq = getelementptr i8, ptr %i.tp, i64 6
  %i.tr = extractelement <8 x i16> %wide.load379, i64 3
  store i16 %i.tr, ptr %i.tq, align 2, !tbaa !77
  br label %pred.store.continue387

pred.store.continue387:                           ; preds = %pred.store.if386, %pred.store.continue385
  %i.ts = extractelement <8 x i1> %i.tc, i64 4
  br i1 %i.ts, label %pred.store.if388, label %pred.store.continue389

pred.store.if388:                                 ; preds = %pred.store.continue387
  %i.tt = getelementptr [2 x i8], ptr %i.hj, i64 %i.sn
  %i.tu = getelementptr i8, ptr %i.tt, i64 8
  %i.tv = extractelement <8 x i16> %wide.load379, i64 4
  store i16 %i.tv, ptr %i.tu, align 2, !tbaa !77
  br label %pred.store.continue389

pred.store.continue389:                           ; preds = %pred.store.if388, %pred.store.continue387
  %i.tw = extractelement <8 x i1> %i.tc, i64 5
  br i1 %i.tw, label %pred.store.if390, label %pred.store.continue391

pred.store.if390:                                 ; preds = %pred.store.continue389
  %i.tx = getelementptr [2 x i8], ptr %i.hj, i64 %i.sn
  %i.ty = getelementptr i8, ptr %i.tx, i64 10
  %i.tz = extractelement <8 x i16> %wide.load379, i64 5
  store i16 %i.tz, ptr %i.ty, align 2, !tbaa !77
  br label %pred.store.continue391

pred.store.continue391:                           ; preds = %pred.store.if390, %pred.store.continue389
  %i.ua = extractelement <8 x i1> %i.tc, i64 6
  br i1 %i.ua, label %pred.store.if392, label %pred.store.continue393

pred.store.if392:                                 ; preds = %pred.store.continue391
  %i.ub = getelementptr [2 x i8], ptr %i.hj, i64 %i.sn
  %i.uc = getelementptr i8, ptr %i.ub, i64 12
  %i.ud = extractelement <8 x i16> %wide.load379, i64 6
  store i16 %i.ud, ptr %i.uc, align 2, !tbaa !77
  br label %pred.store.continue393

pred.store.continue393:                           ; preds = %pred.store.if392, %pred.store.continue391
  %i.ue = extractelement <8 x i1> %i.tc, i64 7
  br i1 %i.ue, label %pred.store.if394, label %pred.store.continue395

pred.store.if394:                                 ; preds = %pred.store.continue393
  %i.uf = getelementptr [2 x i8], ptr %i.hj, i64 %i.sn
  %i.ug = getelementptr i8, ptr %i.uf, i64 14
  %i.uh = extractelement <8 x i16> %wide.load379, i64 7
  store i16 %i.uh, ptr %i.ug, align 2, !tbaa !77
  br label %pred.store.continue395

pred.store.continue395:                           ; preds = %pred.store.if394, %pred.store.continue393
  %index.next396 = add nuw i64 %index378, 8       ; 2 uses
  %i.ui = icmp eq i64 %index.next396, %n.vec371
  br i1 %i.ui, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !123

vec.epilog.middle.block:                          ; preds = %pred.store.continue395
  %cmp.n397 = icmp eq i64 %i.iv, %n.vec371
  br i1 %cmp.n397, label %.loopexit, label %.lr.ph264.split.us.preheader

.lr.ph264.split.us.preheader:                     ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv294.ph = phi i64 [ %i.iu, %iter.check ], [ %i.iu, %vector.memcheck ], [ %i.ou, %vec.epilog.iter.check ], [ %i.sm, %vec.epilog.middle.block ] ; 6 uses
  %xtraiter492 = and i64 %indvars.iv294.ph, 1
  %lcmp.mod493.not = icmp eq i64 %xtraiter492, 0
  br i1 %lcmp.mod493.not, label %.lr.ph264.split.us.prol.loopexit, label %.lr.ph264.split.us.prol

.lr.ph264.split.us.prol:                          ; preds = %.lr.ph264.split.us.preheader
  %i.uj = getelementptr inbounds [2 x i8], ptr %i.hp, i64 %indvars.iv294.ph
  %i.uk = load i16, ptr %i.uj, align 2, !tbaa !77 ; 3 uses
  %or.cond224.us.prol = icmp sgt i16 %i.uk, -2
  br i1 %or.cond224.us.prol, label %.lr.ph264.split.us.prol.loopexit.unr-lcssa, label %bb.af

bb.af:                                            ; preds = %.lr.ph264.split.us.prol
  %i.ul = and i16 %i.uk, 15
  switch i16 %i.ul, label %.lr.ph264.split.us.prol.loopexit.unr-lcssa [
    i16 0, label %bb.ai
    i16 1, label %bb.ah
    i16 2, label %bb.ag
    i16 3, label %.sink.split.prol
  ]

bb.ag:                                            ; preds = %bb.af
  br i1 %i.eu, label %.sink.split.prol, label %.lr.ph264.split.us.prol.loopexit.unr-lcssa

bb.ah:                                            ; preds = %bb.af
  br i1 %i.es, label %.sink.split.prol, label %.lr.ph264.split.us.prol.loopexit.unr-lcssa

bb.ai:                                            ; preds = %bb.af
  br i1 %i.et, label %.sink.split.prol, label %.lr.ph264.split.us.prol.loopexit.unr-lcssa

.sink.split.prol:                                 ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %i.um = getelementptr inbounds [2 x i8], ptr %i.hj, i64 %indvars.iv294.ph
  store i16 %i.uk, ptr %i.um, align 2, !tbaa !77
  br label %.lr.ph264.split.us.prol.loopexit.unr-lcssa

.lr.ph264.split.us.prol.loopexit.unr-lcssa:       ; preds = %.sink.split.prol, %bb.ai, %bb.ah, %bb.ag, %bb.af, %.lr.ph264.split.us.prol
  %indvars.iv.next295.prol = add nuw nsw i64 %indvars.iv294.ph, 1
  br label %.lr.ph264.split.us.prol.loopexit

.lr.ph264.split.us.prol.loopexit:                 ; preds = %.lr.ph264.split.us.prol.loopexit.unr-lcssa, %.lr.ph264.split.us.preheader
  %indvars.iv294.unr = phi i64 [ %indvars.iv294.ph, %.lr.ph264.split.us.preheader ], [ %indvars.iv.next295.prol, %.lr.ph264.split.us.prol.loopexit.unr-lcssa ]
  %i.un = add nsw i64 %wide.trip.count297, -1
  %i.uo = icmp eq i64 %indvars.iv294.ph, %i.un
  br i1 %i.uo, label %.loopexit, label %.lr.ph264.split.us

.lr.ph264.split.us:                               ; preds = %.lr.ph264.split.us.prol.loopexit, %bb.ar
  %indvars.iv294 = phi i64 [ %indvars.iv.next295.1, %bb.ar ], [ %indvars.iv294.unr, %.lr.ph264.split.us.prol.loopexit ] ; 4 uses
  %i.up = getelementptr inbounds [2 x i8], ptr %i.hp, i64 %indvars.iv294
  %i.uq = load i16, ptr %i.up, align 2, !tbaa !77 ; 3 uses
  %or.cond224.us = icmp sgt i16 %i.uq, -2
  br i1 %or.cond224.us, label %.lr.ph264.split.us.1, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph264.split.us
  %i.ur = and i16 %i.uq, 15
  switch i16 %i.ur, label %.lr.ph264.split.us.1 [
    i16 0, label %bb.am
    i16 1, label %bb.al
    i16 2, label %bb.ak
    i16 3, label %.sink.split
  ]

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.eu, label %.sink.split, label %.lr.ph264.split.us.1

bb.al:                                            ; preds = %bb.aj
  br i1 %i.es, label %.sink.split, label %.lr.ph264.split.us.1

bb.am:                                            ; preds = %bb.aj
  br i1 %i.et, label %.sink.split, label %.lr.ph264.split.us.1

.sink.split:                                      ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %i.us = getelementptr inbounds [2 x i8], ptr %i.hj, i64 %indvars.iv294
  store i16 %i.uq, ptr %i.us, align 2, !tbaa !77
  br label %.lr.ph264.split.us.1

.lr.ph264.split.us.1:                             ; preds = %.sink.split, %bb.am, %bb.al, %bb.ak, %bb.aj, %.lr.ph264.split.us
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %i.ut = getelementptr inbounds [2 x i8], ptr %i.hp, i64 %indvars.iv.next295
  %i.uu = load i16, ptr %i.ut, align 2, !tbaa !77 ; 3 uses
  %or.cond224.us.1 = icmp sgt i16 %i.uu, -2
  br i1 %or.cond224.us.1, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %.lr.ph264.split.us.1
  %i.uv = and i16 %i.uu, 15
  switch i16 %i.uv, label %bb.ar [
    i16 0, label %bb.aq
    i16 1, label %bb.ap
    i16 2, label %bb.ao
    i16 3, label %.sink.split.1
  ]

bb.ao:                                            ; preds = %bb.an
  br i1 %i.eu, label %.sink.split.1, label %bb.ar

bb.ap:                                            ; preds = %bb.an
  br i1 %i.es, label %.sink.split.1, label %bb.ar

bb.aq:                                            ; preds = %bb.an
  br i1 %i.et, label %.sink.split.1, label %bb.ar

.sink.split.1:                                    ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an
  %i.uw = getelementptr inbounds [2 x i8], ptr %i.hj, i64 %indvars.iv.next295
  store i16 %i.uu, ptr %i.uw, align 2, !tbaa !77
  br label %bb.ar

end_hunk_0
