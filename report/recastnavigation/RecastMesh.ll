Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastMesh?download=true
inline.NumInlined: 287
inline.NumDeleted: 47
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_Z17rcMergePolyMeshesP9rcContextPP10rcPolyMeshiRS1_:bb.a
  %.03642.i = load i32, ptr %i.gb, align 4, !tbaa !76 ; 2 uses
  %.not43.i = icmp eq i32 %.03642.i, -1
  br i1 %.not43.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u
  %i.gc = zext i16 %i.fr to i32
  %invariant.op = sub i32 2, %i.gc
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %.lr.ph.i
  %.03644.i = phi i32 [ %.03642.i, %.lr.ph.i ], [ %.036.i, %bb.y ] ; 3 uses
  %i.gd = mul nsw i32 %.03644.i, 3
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [2 x i8], ptr %i.fd, i64 %i.ge ; 3 uses
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !77
  %i.gh = icmp eq i16 %i.gg, %i.fp
  br i1 %i.gh, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 2
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !77
  %i.gk = zext i16 %i.gj to i32
  %.reass.i.reass.reass = add i32 %i.gk, %invariant.op
  %i.gl = icmp ult i32 %.reass.i.reass.reass, 5
  br i1 %i.gl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !77
  %i.go = icmp eq i16 %i.gn, %i.fu
  br i1 %i.go, label %_ZL9addVertextttPtPiS0_Ri.exit, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.gp = sext i32 %.03644.i to i64
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.gp
  %.036.i = load i32, ptr %i.gq, align 4, !tbaa !76 ; 2 uses
  %.not.i = icmp eq i32 %.036.i, -1
  br i1 %.not.i, label %._crit_edge.i, label %bb.v

._crit_edge.i:                                    ; preds = %bb.y, %bb.u
  %i.gr = load i32, ptr %i.ai, align 8, !tbaa !76 ; 5 uses
  %i.gs = add nsw i32 %i.gr, 1
  store i32 %i.gs, ptr %i.ai, align 8, !tbaa !76
  %i.gt = mul nsw i32 %i.gr, 3
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [2 x i8], ptr %i.fd, i64 %i.gu ; 3 uses
  store i16 %i.fp, ptr %i.gv, align 2, !tbaa !77
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 2
  store i16 %i.fr, ptr %i.gw, align 2, !tbaa !77
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  store i16 %i.fu, ptr %i.gx, align 2, !tbaa !77
  %i.gy = load i32, ptr %i.gb, align 4, !tbaa !76
  %i.gz = sext i32 %i.gr to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.gz
  store i32 %i.gy, ptr %i.ha, align 4, !tbaa !76
  store i32 %i.gr, ptr %i.gb, align 4, !tbaa !76
  %.pre = load i32, ptr %i.ez, align 8, !tbaa !72
  br label %_ZL9addVertextttPtPiS0_Ri.exit

_ZL9addVertextttPtPiS0_Ri.exit:                   ; preds = %bb.x, %._crit_edge.i
  %i.hb = phi i32 [ %.pre, %._crit_edge.i ], [ %i.fm, %bb.x ] ; 2 uses
  %.2.in.i = phi i32 [ %i.gr, %._crit_edge.i ], [ %.03644.i, %bb.x ]
  %.2.i = trunc i32 %.2.in.i to i16
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %indvars.iv281
  store i16 %.2.i, ptr %i.hc, align 2, !tbaa !77
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %i.hd = sext i32 %i.hb to i64
  %i.he = icmp slt i64 %indvars.iv.next282, %i.hd
  br i1 %i.he, label %bb.u, label %.preheader238

._crit_edge267:                                   ; preds = %.loopexit, %.preheader238
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next303, %wide.trip.count305
  br i1 %exitcond306.not, label %._crit_edge271, label %bb.t

bb.z:                                             ; preds = %.lr.ph266, %.loopexit
  %i.hf = phi i32 [ %.pre308, %.lr.ph266 ], [ %i.im, %.loopexit ] ; 2 uses
  %i.hg = phi i32 [ %.pre307, %.lr.ph266 ], [ %i.il, %.loopexit ] ; 2 uses
  %indvars.iv299 = phi i64 [ 0, %.lr.ph266 ], [ %indvars.iv.next300, %.loopexit ] ; 5 uses
  %i.hh = load ptr, ptr %i.ci, align 8, !tbaa !69 ; 2 uses
  %i.hi = ptrtoaddr ptr %i.hh to i64              ; 2 uses
  %i.hj = shl i32 %i.hg, 1
  %i.hk = mul i32 %i.hj, %i.hf
  %i.hl = sext i32 %i.hk to i64                   ; 3 uses
  %i.hm = getelementptr inbounds [2 x i8], ptr %i.hh, i64 %i.hl ; 39 uses
  %i.hn = load ptr, ptr %i.fi, align 8, !tbaa !69 ; 2 uses
  %i.ho = ptrtoaddr ptr %i.hn to i64              ; 2 uses
  %indvars.iv299.tr = trunc i64 %indvars.iv299 to i32
  %i.hp = shl nuw i32 %indvars.iv299.tr, 1
  %i.hq = mul i32 %i.hp, %i.hf
  %i.hr = sext i32 %i.hq to i64                   ; 3 uses
  %i.hs = getelementptr inbounds [2 x i8], ptr %i.hn, i64 %i.hr ; 10 uses
  %i.ht = load ptr, ptr %i.fj, align 8, !tbaa !70
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %indvars.iv299
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !77
  %i.hw = load ptr, ptr %i.cq, align 8, !tbaa !70
  %i.hx = sext i32 %i.hg to i64                   ; 2 uses
  %i.hy = getelementptr inbounds [2 x i8], ptr %i.hw, i64 %i.hx
  store i16 %i.hv, ptr %i.hy, align 2, !tbaa !77
  %i.hz = load ptr, ptr %i.fk, align 8, !tbaa !71
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %indvars.iv299
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !78
  %i.ic = load ptr, ptr %i.cs, align 8, !tbaa !71
  %i.id = getelementptr inbounds i8, ptr %i.ic, i64 %i.hx
  store i8 %i.ib, ptr %i.id, align 1, !tbaa !78
  %i.ie = load ptr, ptr %i.fl, align 8, !tbaa !82
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.ie, i64 %indvars.iv299
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !77
  %i.ih = load ptr, ptr %i.cu, align 8, !tbaa !82
  %i.ii = load i32, ptr %i.ca, align 4, !tbaa !73 ; 2 uses
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [2 x i8], ptr %i.ih, i64 %i.ij
  store i16 %i.ig, ptr %i.ik, align 2, !tbaa !77
  %i.il = add nsw i32 %i.ii, 1                    ; 2 uses
  store i32 %i.il, ptr %i.ca, align 4, !tbaa !73
  %i.im = load i32, ptr %i.l, align 4, !tbaa !74  ; 6 uses
  %i.in = icmp sgt i32 %i.im, 0
  br i1 %i.in, label %.lr.ph258.preheader, label %._crit_edge259

.lr.ph258.preheader:                              ; preds = %bb.z
  %wide.trip.count287 = zext nneg i32 %i.im to i64
  br label %.lr.ph258

.lr.ph258:                                        ; preds = %.lr.ph258.preheader, %bb.aa
  %indvars.iv284 = phi i64 [ 0, %.lr.ph258.preheader ], [ %indvars.iv.next285, %bb.aa ] ; 3 uses
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %i.hs, i64 %indvars.iv284
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !77 ; 2 uses
  %i.iq = icmp eq i16 %i.ip, -1
  br i1 %i.iq, label %._crit_edge259, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph258
  %i.ir = zext i16 %i.ip to i64
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %i.ir
  %i.it = load i16, ptr %i.is, align 2, !tbaa !77
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %indvars.iv284
  store i16 %i.it, ptr %i.iu, align 2, !tbaa !77
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %exitcond288.not = icmp eq i64 %indvars.iv.next285, %wide.trip.count287
  br i1 %exitcond288.not, label %._crit_edge259, label %.lr.ph258

._crit_edge259:                                   ; preds = %bb.aa, %.lr.ph258, %bb.z
  br i1 %i.ey, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge259
  %i.iv = shl nsw i32 %i.im, 1                    ; 2 uses
  %i.iw = icmp slt i32 %i.im, %i.iv
  br i1 %i.iw, label %.lr.ph264, label %.loopexit

.lr.ph264:                                        ; preds = %.preheader
  %i.ix = sext i32 %i.im to i64                   ; 11 uses
  %wide.trip.count297 = sext i32 %i.iv to i64     ; 5 uses
  %i.iy = sub nsw i64 %wide.trip.count297, %i.ix  ; 9 uses
  %min.iters.check = icmp ult i64 %i.iy, 8        ; 2 uses
  br i1 %i.er, label %.lr.ph264.split.us.preheader, label %iter.check

iter.check:                                       ; preds = %.lr.ph264
  br i1 %min.iters.check, label %.lr.ph264.split.preheader, label %vector.memcheck353

vector.memcheck353:                               ; preds = %iter.check
  %i.iz = shl nsw i64 %i.hl, 1
  %i.ja = add i64 %i.iz, %i.hi
  %i.jb = shl nsw i64 %i.hr, 1
  %i.jc = add i64 %i.jb, %i.ho
  %i.jd = sub i64 %i.jc, %i.ja
  %diff.check354 = icmp ugt i64 %i.jd, -32
  br i1 %diff.check354, label %.lr.ph264.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck353
  %min.iters.check357 = icmp ult i64 %i.iy, 16
  br i1 %min.iters.check357, label %vec.epilog.ph, label %vector.ph358

vector.ph358:                                     ; preds = %vector.main.loop.iter.check
  %i.je = and i64 %i.iy, 8
  %n.vec359 = and i64 %i.iy, -16                  ; 4 uses
  %i.jf = add nsw i64 %n.vec359, %i.ix
  br label %vector.body366

vector.body366:                                   ; preds = %vector.ph358, %pred.store.continue401
  %index367 = phi i64 [ 0, %vector.ph358 ], [ %index.next402, %pred.store.continue401 ] ; 2 uses
  %i.jg = add nuw i64 %index367, %i.ix            ; 17 uses
  %i.jh = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %i.jg ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %wide.load368 = load <8 x i16>, ptr %i.jh, align 2, !tbaa !77 ; 10 uses
  %wide.load369 = load <8 x i16>, ptr %i.ji, align 2, !tbaa !77 ; 10 uses
  %i.jj = icmp slt <8 x i16> %wide.load368, splat (i16 -1) ; 3 uses
  %i.jk = icmp slt <8 x i16> %wide.load369, splat (i16 -1) ; 3 uses
  %i.jl = and <8 x i16> %wide.load368, splat (i16 15) ; 3 uses
  %i.jm = and <8 x i16> %wide.load369, splat (i16 15) ; 3 uses
  %i.jn = icmp eq <8 x i16> %i.jl, zeroinitializer
  %i.jo = icmp eq <8 x i16> %i.jm, zeroinitializer
  %i.jp = icmp eq <8 x i16> %i.jl, splat (i16 1)
  %i.jq = icmp eq <8 x i16> %i.jm, splat (i16 1)
  %i.jr = icmp eq <8 x i16> %i.jl, splat (i16 2)
  %i.js = icmp eq <8 x i16> %i.jm, splat (i16 2)
  %i.jt = and <8 x i1> %i.jj, %i.jn
  %i.ju = and <8 x i1> %i.jk, %i.jo
  %i.jv = and <8 x i1> %i.jj, %i.jp
  %i.jw = and <8 x i1> %i.jk, %i.jq
  %i.jx = and <8 x i1> %i.jj, %i.jr
  %i.jy = and <8 x i1> %i.jk, %i.js
  %i.jz = select <8 x i1> %i.jv, <8 x i1> %broadcast.splat363, <8 x i1> zeroinitializer
  %i.ka = select <8 x i1> %i.jw, <8 x i1> %broadcast.splat363, <8 x i1> zeroinitializer
  %i.kb = select <8 x i1> %i.jx, <8 x i1> %broadcast.splat361, <8 x i1> %i.jz
  %i.kc = select <8 x i1> %i.jy, <8 x i1> %broadcast.splat361, <8 x i1> %i.ka
  %i.kd = select <8 x i1> %i.jt, <8 x i1> %broadcast.splat365, <8 x i1> zeroinitializer
  %i.ke = select <8 x i1> %i.ju, <8 x i1> %broadcast.splat365, <8 x i1> zeroinitializer
  %4 = or <8 x i1> %i.kb, %i.kd                   ; 8 uses
  %5 = or <8 x i1> %i.kc, %i.ke                   ; 8 uses
  %i.kf = extractelement <8 x i1> %4, i64 0
  br i1 %i.kf, label %pred.store.if370, label %pred.store.continue371

pred.store.if370:                                 ; preds = %vector.body366
  %i.kg = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %i.jg
  %i.kh = extractelement <8 x i16> %wide.load368, i64 0
  store i16 %i.kh, ptr %i.kg, align 2, !tbaa !77
  br label %pred.store.continue371

pred.store.continue371:                           ; preds = %pred.store.if370, %vector.body366
  %i.ki = extractelement <8 x i1> %4, i64 1
  br i1 %i.ki, label %pred.store.if372, label %pred.store.continue373

pred.store.if372:                                 ; preds = %pred.store.continue371
  %i.kj = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.kk = getelementptr i8, ptr %i.kj, i64 2
  %i.kl = extractelement <8 x i16> %wide.load368, i64 1
  store i16 %i.kl, ptr %i.kk, align 2, !tbaa !77
  br label %pred.store.continue373

pred.store.continue373:                           ; preds = %pred.store.if372, %pred.store.continue371
  %i.km = extractelement <8 x i1> %4, i64 2
  br i1 %i.km, label %pred.store.if374, label %pred.store.continue375

pred.store.if374:                                 ; preds = %pred.store.continue373
  %i.kn = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.ko = getelementptr i8, ptr %i.kn, i64 4
  %i.kp = extractelement <8 x i16> %wide.load368, i64 2
  store i16 %i.kp, ptr %i.ko, align 2, !tbaa !77
  br label %pred.store.continue375

pred.store.continue375:                           ; preds = %pred.store.if374, %pred.store.continue373
  %i.kq = extractelement <8 x i1> %4, i64 3
  br i1 %i.kq, label %pred.store.if376, label %pred.store.continue377

pred.store.if376:                                 ; preds = %pred.store.continue375
  %i.kr = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.ks = getelementptr i8, ptr %i.kr, i64 6
  %i.kt = extractelement <8 x i16> %wide.load368, i64 3
  store i16 %i.kt, ptr %i.ks, align 2, !tbaa !77
  br label %pred.store.continue377

pred.store.continue377:                           ; preds = %pred.store.if376, %pred.store.continue375
  %i.ku = extractelement <8 x i1> %4, i64 4
  br i1 %i.ku, label %pred.store.if378, label %pred.store.continue379

pred.store.if378:                                 ; preds = %pred.store.continue377
  %i.kv = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.kw = getelementptr i8, ptr %i.kv, i64 8
  %i.kx = extractelement <8 x i16> %wide.load368, i64 4
  store i16 %i.kx, ptr %i.kw, align 2, !tbaa !77
  br label %pred.store.continue379

pred.store.continue379:                           ; preds = %pred.store.if378, %pred.store.continue377
  %i.ky = extractelement <8 x i1> %4, i64 5
  br i1 %i.ky, label %pred.store.if380, label %pred.store.continue381

pred.store.if380:                                 ; preds = %pred.store.continue379
  %i.kz = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.la = getelementptr i8, ptr %i.kz, i64 10
  %i.lb = extractelement <8 x i16> %wide.load368, i64 5
  store i16 %i.lb, ptr %i.la, align 2, !tbaa !77
  br label %pred.store.continue381

pred.store.continue381:                           ; preds = %pred.store.if380, %pred.store.continue379
  %i.lc = extractelement <8 x i1> %4, i64 6
  br i1 %i.lc, label %pred.store.if382, label %pred.store.continue383

pred.store.if382:                                 ; preds = %pred.store.continue381
  %i.ld = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.le = getelementptr i8, ptr %i.ld, i64 12
  %i.lf = extractelement <8 x i16> %wide.load368, i64 6
  store i16 %i.lf, ptr %i.le, align 2, !tbaa !77
  br label %pred.store.continue383

pred.store.continue383:                           ; preds = %pred.store.if382, %pred.store.continue381
  %i.lg = extractelement <8 x i1> %4, i64 7
  br i1 %i.lg, label %pred.store.if384, label %pred.store.continue385

pred.store.if384:                                 ; preds = %pred.store.continue383
  %i.lh = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.li = getelementptr i8, ptr %i.lh, i64 14
  %i.lj = extractelement <8 x i16> %wide.load368, i64 7
  store i16 %i.lj, ptr %i.li, align 2, !tbaa !77
  br label %pred.store.continue385

pred.store.continue385:                           ; preds = %pred.store.if384, %pred.store.continue383
  %i.lk = extractelement <8 x i1> %5, i64 0
  br i1 %i.lk, label %pred.store.if386, label %pred.store.continue387

pred.store.if386:                                 ; preds = %pred.store.continue385
  %i.ll = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.lm = getelementptr i8, ptr %i.ll, i64 16
  %i.ln = extractelement <8 x i16> %wide.load369, i64 0
  store i16 %i.ln, ptr %i.lm, align 2, !tbaa !77
  br label %pred.store.continue387

pred.store.continue387:                           ; preds = %pred.store.if386, %pred.store.continue385
  %i.lo = extractelement <8 x i1> %5, i64 1
  br i1 %i.lo, label %pred.store.if388, label %pred.store.continue389

pred.store.if388:                                 ; preds = %pred.store.continue387
  %i.lp = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.lq = getelementptr i8, ptr %i.lp, i64 18
  %i.lr = extractelement <8 x i16> %wide.load369, i64 1
  store i16 %i.lr, ptr %i.lq, align 2, !tbaa !77
  br label %pred.store.continue389

pred.store.continue389:                           ; preds = %pred.store.if388, %pred.store.continue387
  %i.ls = extractelement <8 x i1> %5, i64 2
  br i1 %i.ls, label %pred.store.if390, label %pred.store.continue391

pred.store.if390:                                 ; preds = %pred.store.continue389
  %i.lt = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.lu = getelementptr i8, ptr %i.lt, i64 20
  %i.lv = extractelement <8 x i16> %wide.load369, i64 2
  store i16 %i.lv, ptr %i.lu, align 2, !tbaa !77
  br label %pred.store.continue391

pred.store.continue391:                           ; preds = %pred.store.if390, %pred.store.continue389
  %i.lw = extractelement <8 x i1> %5, i64 3
  br i1 %i.lw, label %pred.store.if392, label %pred.store.continue393

pred.store.if392:                                 ; preds = %pred.store.continue391
  %i.lx = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.ly = getelementptr i8, ptr %i.lx, i64 22
  %i.lz = extractelement <8 x i16> %wide.load369, i64 3
  store i16 %i.lz, ptr %i.ly, align 2, !tbaa !77
  br label %pred.store.continue393

pred.store.continue393:                           ; preds = %pred.store.if392, %pred.store.continue391
  %i.ma = extractelement <8 x i1> %5, i64 4
  br i1 %i.ma, label %pred.store.if394, label %pred.store.continue395

pred.store.if394:                                 ; preds = %pred.store.continue393
  %i.mb = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.mc = getelementptr i8, ptr %i.mb, i64 24
  %i.md = extractelement <8 x i16> %wide.load369, i64 4
  store i16 %i.md, ptr %i.mc, align 2, !tbaa !77
  br label %pred.store.continue395

pred.store.continue395:                           ; preds = %pred.store.if394, %pred.store.continue393
  %i.me = extractelement <8 x i1> %5, i64 5
  br i1 %i.me, label %pred.store.if396, label %pred.store.continue397

pred.store.if396:                                 ; preds = %pred.store.continue395
  %i.mf = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.mg = getelementptr i8, ptr %i.mf, i64 26
  %i.mh = extractelement <8 x i16> %wide.load369, i64 5
  store i16 %i.mh, ptr %i.mg, align 2, !tbaa !77
  br label %pred.store.continue397

pred.store.continue397:                           ; preds = %pred.store.if396, %pred.store.continue395
  %i.mi = extractelement <8 x i1> %5, i64 6
  br i1 %i.mi, label %pred.store.if398, label %pred.store.continue399

pred.store.if398:                                 ; preds = %pred.store.continue397
  %i.mj = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.mk = getelementptr i8, ptr %i.mj, i64 28
  %i.ml = extractelement <8 x i16> %wide.load369, i64 6
  store i16 %i.ml, ptr %i.mk, align 2, !tbaa !77
  br label %pred.store.continue399

pred.store.continue399:                           ; preds = %pred.store.if398, %pred.store.continue397
  %i.mm = extractelement <8 x i1> %5, i64 7
  br i1 %i.mm, label %pred.store.if400, label %pred.store.continue401

pred.store.if400:                                 ; preds = %pred.store.continue399
  %i.mn = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.mo = getelementptr i8, ptr %i.mn, i64 30
  %i.mp = extractelement <8 x i16> %wide.load369, i64 7
  store i16 %i.mp, ptr %i.mo, align 2, !tbaa !77
  br label %pred.store.continue401

pred.store.continue401:                           ; preds = %pred.store.if400, %pred.store.continue399
  %index.next402 = add nuw i64 %index367, 16      ; 2 uses
  %i.mq = icmp eq i64 %index.next402, %n.vec359
  br i1 %i.mq, label %middle.block403, label %vector.body366, !llvm.loop !120

middle.block403:                                  ; preds = %pred.store.continue401
  %cmp.n404 = icmp eq i64 %i.iy, %n.vec359
  br i1 %cmp.n404, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block403
  %min.epilog.iters.check.not.not = icmp eq i64 %i.je, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph264.split.preheader, label %vec.epilog.ph, !prof !81

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec359, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec406 = and i64 %i.iy, -8                   ; 3 uses
  %i.mr = add nsw i64 %n.vec406, %i.ix
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue430, %vec.epilog.ph
  %index413 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next431, %pred.store.continue430 ] ; 2 uses
  %i.ms = add nuw i64 %index413, %i.ix            ; 9 uses
  %i.mt = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %i.ms
  %wide.load414 = load <8 x i16>, ptr %i.mt, align 2, !tbaa !77 ; 10 uses
  %i.mu = icmp slt <8 x i16> %wide.load414, splat (i16 -1) ; 3 uses
  %i.mv = and <8 x i16> %wide.load414, splat (i16 15) ; 3 uses
  %i.mw = icmp eq <8 x i16> %i.mv, zeroinitializer
  %i.mx = icmp eq <8 x i16> %i.mv, splat (i16 1)
  %i.my = icmp eq <8 x i16> %i.mv, splat (i16 2)
  %i.mz = and <8 x i1> %i.mu, %i.mw
  %i.na = and <8 x i1> %i.mu, %i.mx
  %i.nb = and <8 x i1> %i.mu, %i.my
  %i.nc = select <8 x i1> %i.na, <8 x i1> %broadcast.splat410, <8 x i1> zeroinitializer
  %i.nd = select <8 x i1> %i.nb, <8 x i1> %broadcast.splat408, <8 x i1> %i.nc
  %i.ne = select <8 x i1> %i.mz, <8 x i1> %broadcast.splat412, <8 x i1> zeroinitializer
  %6 = or <8 x i1> %i.nd, %i.ne                   ; 8 uses
  %i.nf = extractelement <8 x i1> %6, i64 0
  br i1 %i.nf, label %pred.store.if415, label %pred.store.continue416

pred.store.if415:                                 ; preds = %vec.epilog.vector.body
  %i.ng = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %i.ms
  %i.nh = extractelement <8 x i16> %wide.load414, i64 0
  store i16 %i.nh, ptr %i.ng, align 2, !tbaa !77
  br label %pred.store.continue416

pred.store.continue416:                           ; preds = %pred.store.if415, %vec.epilog.vector.body
  %i.ni = extractelement <8 x i1> %6, i64 1
  br i1 %i.ni, label %pred.store.if417, label %pred.store.continue418

pred.store.if417:                                 ; preds = %pred.store.continue416
  %i.nj = getelementptr [2 x i8], ptr %i.hm, i64 %i.ms
  %i.nk = getelementptr i8, ptr %i.nj, i64 2
  %i.nl = extractelement <8 x i16> %wide.load414, i64 1
  store i16 %i.nl, ptr %i.nk, align 2, !tbaa !77
  br label %pred.store.continue418

pred.store.continue418:                           ; preds = %pred.store.if417, %pred.store.continue416
  %i.nm = extractelement <8 x i1> %6, i64 2
  br i1 %i.nm, label %pred.store.if419, label %pred.store.continue420

pred.store.if419:                                 ; preds = %pred.store.continue418
  %i.nn = getelementptr [2 x i8], ptr %i.hm, i64 %i.ms
  %i.no = getelementptr i8, ptr %i.nn, i64 4
  %i.np = extractelement <8 x i16> %wide.load414, i64 2
  store i16 %i.np, ptr %i.no, align 2, !tbaa !77
  br label %pred.store.continue420

pred.store.continue420:                           ; preds = %pred.store.if419, %pred.store.continue418
  %i.nq = extractelement <8 x i1> %6, i64 3
  br i1 %i.nq, label %pred.store.if421, label %pred.store.continue422

pred.store.if421:                                 ; preds = %pred.store.continue420
  %i.nr = getelementptr [2 x i8], ptr %i.hm, i64 %i.ms
  %i.ns = getelementptr i8, ptr %i.nr, i64 6
  %i.nt = extractelement <8 x i16> %wide.load414, i64 3
  store i16 %i.nt, ptr %i.ns, align 2, !tbaa !77
  br label %pred.store.continue422

pred.store.continue422:                           ; preds = %pred.store.if421, %pred.store.continue420
  %i.nu = extractelement <8 x i1> %6, i64 4
  br i1 %i.nu, label %pred.store.if423, label %pred.store.continue424

pred.store.if423:                                 ; preds = %pred.store.continue422
  %i.nv = getelementptr [2 x i8], ptr %i.hm, i64 %i.ms
  %i.nw = getelementptr i8, ptr %i.nv, i64 8
  %i.nx = extractelement <8 x i16> %wide.load414, i64 4
  store i16 %i.nx, ptr %i.nw, align 2, !tbaa !77
  br label %pred.store.continue424

pred.store.continue424:                           ; preds = %pred.store.if423, %pred.store.continue422
  %i.ny = extractelement <8 x i1> %6, i64 5
  br i1 %i.ny, label %pred.store.if425, label %pred.store.continue426

pred.store.if425:                                 ; preds = %pred.store.continue424
  %i.nz = getelementptr [2 x i8], ptr %i.hm, i64 %i.ms
  %i.oa = getelementptr i8, ptr %i.nz, i64 10
  %i.ob = extractelement <8 x i16> %wide.load414, i64 5
  store i16 %i.ob, ptr %i.oa, align 2, !tbaa !77
  br label %pred.store.continue426

pred.store.continue426:                           ; preds = %pred.store.if425, %pred.store.continue424
  %i.oc = extractelement <8 x i1> %6, i64 6
  br i1 %i.oc, label %pred.store.if427, label %pred.store.continue428

pred.store.if427:                                 ; preds = %pred.store.continue426
  %i.od = getelementptr [2 x i8], ptr %i.hm, i64 %i.ms
  %i.oe = getelementptr i8, ptr %i.od, i64 12
  %i.of = extractelement <8 x i16> %wide.load414, i64 6
  store i16 %i.of, ptr %i.oe, align 2, !tbaa !77
  br label %pred.store.continue428

pred.store.continue428:                           ; preds = %pred.store.if427, %pred.store.continue426
  %i.og = extractelement <8 x i1> %6, i64 7
  br i1 %i.og, label %pred.store.if429, label %pred.store.continue430

pred.store.if429:                                 ; preds = %pred.store.continue428
  %i.oh = getelementptr [2 x i8], ptr %i.hm, i64 %i.ms
  %i.oi = getelementptr i8, ptr %i.oh, i64 14
  %i.oj = extractelement <8 x i16> %wide.load414, i64 7
  store i16 %i.oj, ptr %i.oi, align 2, !tbaa !77
  br label %pred.store.continue430

pred.store.continue430:                           ; preds = %pred.store.if429, %pred.store.continue428
  %index.next431 = add nuw i64 %index413, 8       ; 2 uses
  %i.ok = icmp eq i64 %index.next431, %n.vec406
  br i1 %i.ok, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !121

vec.epilog.middle.block:                          ; preds = %pred.store.continue430
  %cmp.n432 = icmp eq i64 %i.iy, %n.vec406
  br i1 %cmp.n432, label %.loopexit, label %.lr.ph264.split.preheader

.lr.ph264.split.preheader:                        ; preds = %iter.check, %vector.memcheck353, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv289.ph = phi i64 [ %i.ix, %iter.check ], [ %i.ix, %vector.memcheck353 ], [ %i.jf, %vec.epilog.iter.check ], [ %i.mr, %vec.epilog.middle.block ] ; 6 uses
  %xtraiter = and i64 %indvars.iv289.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph264.split.prol.loopexit, label %.lr.ph264.split.prol

.lr.ph264.split.prol:                             ; preds = %.lr.ph264.split.preheader
  %i.ol = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %indvars.iv289.ph
  %i.om = load i16, ptr %i.ol, align 2, !tbaa !77 ; 3 uses
  %or.cond224.prol = icmp sgt i16 %i.om, -2
  br i1 %or.cond224.prol, label %.lr.ph264.split.prol.loopexit.unr-lcssa, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph264.split.prol
  %i.on = and i16 %i.om, 15
  switch i16 %i.on, label %.lr.ph264.split.prol.loopexit.unr-lcssa [
    i16 0, label %bb.ae
    i16 1, label %bb.ad
    i16 2, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.ex, label %.sink.split330.prol, label %.lr.ph264.split.prol.loopexit.unr-lcssa

bb.ad:                                            ; preds = %bb.ab
  br i1 %i.ev, label %.sink.split330.prol, label %.lr.ph264.split.prol.loopexit.unr-lcssa

bb.ae:                                            ; preds = %bb.ab
  br i1 %i.ew, label %.sink.split330.prol, label %.lr.ph264.split.prol.loopexit.unr-lcssa

.sink.split330.prol:                              ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.oo = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %indvars.iv289.ph
  store i16 %i.om, ptr %i.oo, align 2, !tbaa !77
  br label %.lr.ph264.split.prol.loopexit.unr-lcssa

.lr.ph264.split.prol.loopexit.unr-lcssa:          ; preds = %.sink.split330.prol, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %.lr.ph264.split.prol
  %indvars.iv.next290.prol = add nuw nsw i64 %indvars.iv289.ph, 1
  br label %.lr.ph264.split.prol.loopexit

.lr.ph264.split.prol.loopexit:                    ; preds = %.lr.ph264.split.prol.loopexit.unr-lcssa, %.lr.ph264.split.preheader
  %indvars.iv289.unr = phi i64 [ %indvars.iv289.ph, %.lr.ph264.split.preheader ], [ %indvars.iv.next290.prol, %.lr.ph264.split.prol.loopexit.unr-lcssa ]
  %i.op = add nsw i64 %wide.trip.count297, -1
  %i.oq = icmp eq i64 %indvars.iv289.ph, %i.op
  br i1 %i.oq, label %.loopexit, label %.lr.ph264.split

.lr.ph264.split.us.preheader:                     ; preds = %.lr.ph264
  br i1 %min.iters.check, label %.lr.ph264.split.us.preheader434, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph264.split.us.preheader
  %i.or = shl nsw i64 %i.hl, 1
  %i.os = add i64 %i.or, %i.hi
  %i.ot = shl nsw i64 %i.hr, 1
  %i.ou = add i64 %i.ot, %i.ho
  %i.ov = sub i64 %i.ou, %i.os
  %diff.check = icmp ugt i64 %i.ov, -16
  br i1 %diff.check, label %.lr.ph264.split.us.preheader434, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.iy, -8                      ; 3 uses
  %i.ow = add nsw i64 %n.vec, %i.ix
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue352, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue352 ] ; 2 uses
  %i.ox = add nuw i64 %index, %i.ix               ; 9 uses
  %i.oy = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %i.ox
  %wide.load = load <8 x i16>, ptr %i.oy, align 2, !tbaa !77 ; 10 uses
  %i.oz = icmp slt <8 x i16> %wide.load, splat (i16 -1) ; 4 uses
  %i.pa = and <8 x i16> %wide.load, splat (i16 15) ; 4 uses
  %i.pb = icmp eq <8 x i16> %i.pa, zeroinitializer
  %i.pc = icmp eq <8 x i16> %i.pa, splat (i16 1)
  %i.pd = icmp eq <8 x i16> %i.pa, splat (i16 2)
  %i.pe = icmp eq <8 x i16> %i.pa, splat (i16 3)
  %i.pf = and <8 x i1> %i.oz, %i.pb
  %i.pg = and <8 x i1> %i.oz, %i.pc
  %i.ph = and <8 x i1> %i.oz, %i.pd
  %i.pi = and <8 x i1> %i.oz, %i.pe
  %i.pj = select <8 x i1> %i.pg, <8 x i1> %broadcast.splat336, <8 x i1> zeroinitializer
  %i.pk = select <8 x i1> %i.pf, <8 x i1> %broadcast.splat338, <8 x i1> %i.pj
  %i.pl = select <8 x i1> %i.ph, <8 x i1> %broadcast.splat, <8 x i1> zeroinitializer
  %7 = or <8 x i1> %i.pk, %i.pl
  %i.pm = or <8 x i1> %7, %i.pi                   ; 8 uses
  %i.pn = extractelement <8 x i1> %i.pm, i64 0
  br i1 %i.pn, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.po = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %i.ox
  %i.pp = extractelement <8 x i16> %wide.load, i64 0
  store i16 %i.pp, ptr %i.po, align 2, !tbaa !77
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.pq = extractelement <8 x i1> %i.pm, i64 1
  br i1 %i.pq, label %pred.store.if339, label %pred.store.continue340

pred.store.if339:                                 ; preds = %pred.store.continue
  %i.pr = getelementptr [2 x i8], ptr %i.hm, i64 %i.ox
  %i.ps = getelementptr i8, ptr %i.pr, i64 2
  %i.pt = extractelement <8 x i16> %wide.load, i64 1
  store i16 %i.pt, ptr %i.ps, align 2, !tbaa !77
  br label %pred.store.continue340

pred.store.continue340:                           ; preds = %pred.store.if339, %pred.store.continue
  %i.pu = extractelement <8 x i1> %i.pm, i64 2
  br i1 %i.pu, label %pred.store.if341, label %pred.store.continue342

pred.store.if341:                                 ; preds = %pred.store.continue340
  %i.pv = getelementptr [2 x i8], ptr %i.hm, i64 %i.ox
  %i.pw = getelementptr i8, ptr %i.pv, i64 4
  %i.px = extractelement <8 x i16> %wide.load, i64 2
  store i16 %i.px, ptr %i.pw, align 2, !tbaa !77
  br label %pred.store.continue342

pred.store.continue342:                           ; preds = %pred.store.if341, %pred.store.continue340
  %i.py = extractelement <8 x i1> %i.pm, i64 3
  br i1 %i.py, label %pred.store.if343, label %pred.store.continue344

pred.store.if343:                                 ; preds = %pred.store.continue342
  %i.pz = getelementptr [2 x i8], ptr %i.hm, i64 %i.ox
  %i.qa = getelementptr i8, ptr %i.pz, i64 6
  %i.qb = extractelement <8 x i16> %wide.load, i64 3
  store i16 %i.qb, ptr %i.qa, align 2, !tbaa !77
  br label %pred.store.continue344

pred.store.continue344:                           ; preds = %pred.store.if343, %pred.store.continue342
  %i.qc = extractelement <8 x i1> %i.pm, i64 4
  br i1 %i.qc, label %pred.store.if345, label %pred.store.continue346

pred.store.if345:                                 ; preds = %pred.store.continue344
  %i.qd = getelementptr [2 x i8], ptr %i.hm, i64 %i.ox
  %i.qe = getelementptr i8, ptr %i.qd, i64 8
  %i.qf = extractelement <8 x i16> %wide.load, i64 4
  store i16 %i.qf, ptr %i.qe, align 2, !tbaa !77
  br label %pred.store.continue346

pred.store.continue346:                           ; preds = %pred.store.if345, %pred.store.continue344
  %i.qg = extractelement <8 x i1> %i.pm, i64 5
  br i1 %i.qg, label %pred.store.if347, label %pred.store.continue348

pred.store.if347:                                 ; preds = %pred.store.continue346
  %i.qh = getelementptr [2 x i8], ptr %i.hm, i64 %i.ox
  %i.qi = getelementptr i8, ptr %i.qh, i64 10
  %i.qj = extractelement <8 x i16> %wide.load, i64 5
  store i16 %i.qj, ptr %i.qi, align 2, !tbaa !77
  br label %pred.store.continue348

pred.store.continue348:                           ; preds = %pred.store.if347, %pred.store.continue346
  %i.qk = extractelement <8 x i1> %i.pm, i64 6
  br i1 %i.qk, label %pred.store.if349, label %pred.store.continue350

pred.store.if349:                                 ; preds = %pred.store.continue348
  %i.ql = getelementptr [2 x i8], ptr %i.hm, i64 %i.ox
  %i.qm = getelementptr i8, ptr %i.ql, i64 12
  %i.qn = extractelement <8 x i16> %wide.load, i64 6
  store i16 %i.qn, ptr %i.qm, align 2, !tbaa !77
  br label %pred.store.continue350

pred.store.continue350:                           ; preds = %pred.store.if349, %pred.store.continue348
  %i.qo = extractelement <8 x i1> %i.pm, i64 7
  br i1 %i.qo, label %pred.store.if351, label %pred.store.continue352

pred.store.if351:                                 ; preds = %pred.store.continue350
  %i.qp = getelementptr [2 x i8], ptr %i.hm, i64 %i.ox
  %i.qq = getelementptr i8, ptr %i.qp, i64 14
  %i.qr = extractelement <8 x i16> %wide.load, i64 7
  store i16 %i.qr, ptr %i.qq, align 2, !tbaa !77
  br label %pred.store.continue352

pred.store.continue352:                           ; preds = %pred.store.if351, %pred.store.continue350
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.qs = icmp eq i64 %index.next, %n.vec
  br i1 %i.qs, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %pred.store.continue352
  %cmp.n = icmp eq i64 %i.iy, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph264.split.us.preheader434

.lr.ph264.split.us.preheader434:                  ; preds = %vector.memcheck, %.lr.ph264.split.us.preheader, %middle.block
  %indvars.iv294.ph = phi i64 [ %i.ix, %vector.memcheck ], [ %i.ix, %.lr.ph264.split.us.preheader ], [ %i.ow, %middle.block ] ; 6 uses
  %xtraiter439 = and i64 %indvars.iv294.ph, 1
  %lcmp.mod440.not = icmp eq i64 %xtraiter439, 0
  br i1 %lcmp.mod440.not, label %.lr.ph264.split.us.prol.loopexit, label %.lr.ph264.split.us.prol

.lr.ph264.split.us.prol:                          ; preds = %.lr.ph264.split.us.preheader434
  %i.qt = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %indvars.iv294.ph
  %i.qu = load i16, ptr %i.qt, align 2, !tbaa !77 ; 3 uses
  %or.cond224.us.prol = icmp sgt i16 %i.qu, -2
  br i1 %or.cond224.us.prol, label %.lr.ph264.split.us.prol.loopexit.unr-lcssa, label %bb.af

bb.af:                                            ; preds = %.lr.ph264.split.us.prol
  %i.qv = and i16 %i.qu, 15
  switch i16 %i.qv, label %.lr.ph264.split.us.prol.loopexit.unr-lcssa [
    i16 0, label %bb.ai
    i16 1, label %bb.ah
    i16 2, label %bb.ag
    i16 3, label %.sink.split.prol
  ]

bb.ag:                                            ; preds = %bb.af
  br i1 %i.ex, label %.sink.split.prol, label %.lr.ph264.split.us.prol.loopexit.unr-lcssa

bb.ah:                                            ; preds = %bb.af
  br i1 %i.ev, label %.sink.split.prol, label %.lr.ph264.split.us.prol.loopexit.unr-lcssa

bb.ai:                                            ; preds = %bb.af
  br i1 %i.ew, label %.sink.split.prol, label %.lr.ph264.split.us.prol.loopexit.unr-lcssa

.sink.split.prol:                                 ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %i.qw = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %indvars.iv294.ph
  store i16 %i.qu, ptr %i.qw, align 2, !tbaa !77
  br label %.lr.ph264.split.us.prol.loopexit.unr-lcssa

.lr.ph264.split.us.prol.loopexit.unr-lcssa:       ; preds = %.sink.split.prol, %bb.ai, %bb.ah, %bb.ag, %bb.af, %.lr.ph264.split.us.prol
  %indvars.iv.next295.prol = add nuw nsw i64 %indvars.iv294.ph, 1
  br label %.lr.ph264.split.us.prol.loopexit

.lr.ph264.split.us.prol.loopexit:                 ; preds = %.lr.ph264.split.us.prol.loopexit.unr-lcssa, %.lr.ph264.split.us.preheader434
  %indvars.iv294.unr = phi i64 [ %indvars.iv294.ph, %.lr.ph264.split.us.preheader434 ], [ %indvars.iv.next295.prol, %.lr.ph264.split.us.prol.loopexit.unr-lcssa ]
  %i.qx = add nsw i64 %wide.trip.count297, -1
  %i.qy = icmp eq i64 %indvars.iv294.ph, %i.qx
  br i1 %i.qy, label %.loopexit, label %.lr.ph264.split.us

.lr.ph264.split.us:                               ; preds = %.lr.ph264.split.us.prol.loopexit, %bb.ar
  %indvars.iv294 = phi i64 [ %indvars.iv.next295.1, %bb.ar ], [ %indvars.iv294.unr, %.lr.ph264.split.us.prol.loopexit ] ; 4 uses
  %i.qz = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %indvars.iv294
  %i.ra = load i16, ptr %i.qz, align 2, !tbaa !77 ; 3 uses
  %or.cond224.us = icmp sgt i16 %i.ra, -2
  br i1 %or.cond224.us, label %.lr.ph264.split.us.1, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph264.split.us
  %i.rb = and i16 %i.ra, 15
  switch i16 %i.rb, label %.lr.ph264.split.us.1 [
    i16 0, label %bb.am
    i16 1, label %bb.al
    i16 2, label %bb.ak
    i16 3, label %.sink.split
  ]

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.ex, label %.sink.split, label %.lr.ph264.split.us.1

bb.al:                                            ; preds = %bb.aj
  br i1 %i.ev, label %.sink.split, label %.lr.ph264.split.us.1

bb.am:                                            ; preds = %bb.aj
  br i1 %i.ew, label %.sink.split, label %.lr.ph264.split.us.1

.sink.split:                                      ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %i.rc = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %indvars.iv294
  store i16 %i.ra, ptr %i.rc, align 2, !tbaa !77
  br label %.lr.ph264.split.us.1

.lr.ph264.split.us.1:                             ; preds = %.sink.split, %bb.am, %bb.al, %bb.ak, %bb.aj, %.lr.ph264.split.us
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %i.rd = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %indvars.iv.next295
  %i.re = load i16, ptr %i.rd, align 2, !tbaa !77 ; 3 uses
  %or.cond224.us.1 = icmp sgt i16 %i.re, -2
  br i1 %or.cond224.us.1, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %.lr.ph264.split.us.1
  %i.rf = and i16 %i.re, 15
  switch i16 %i.rf, label %bb.ar [
    i16 0, label %bb.aq
    i16 1, label %bb.ap
    i16 2, label %bb.ao
    i16 3, label %.sink.split.1
  ]

bb.ao:                                            ; preds = %bb.an
  br i1 %i.ex, label %.sink.split.1, label %bb.ar

bb.ap:                                            ; preds = %bb.an
  br i1 %i.ev, label %.sink.split.1, label %bb.ar

bb.aq:                                            ; preds = %bb.an
  br i1 %i.ew, label %.sink.split.1, label %bb.ar

.sink.split.1:                                    ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an
  %i.rg = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %indvars.iv.next295
  store i16 %i.re, ptr %i.rg, align 2, !tbaa !77
  br label %bb.ar

end_hunk_0
