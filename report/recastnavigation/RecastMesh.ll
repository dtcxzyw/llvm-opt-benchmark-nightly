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

vector.body366:                                   ; preds = %pred.store.continue401, %vector.ph358
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
  %i.kf = or <8 x i1> %i.kb, %i.kd                ; 8 uses
  %i.kg = or <8 x i1> %i.kc, %i.ke                ; 8 uses
  %i.kh = extractelement <8 x i1> %i.kf, i64 0
  br i1 %i.kh, label %pred.store.if370, label %pred.store.continue371

pred.store.if370:                                 ; preds = %vector.body366
  %i.ki = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %i.jg
  %i.kj = extractelement <8 x i16> %wide.load368, i64 0
  store i16 %i.kj, ptr %i.ki, align 2, !tbaa !77
  br label %pred.store.continue371

pred.store.continue371:                           ; preds = %pred.store.if370, %vector.body366
  %i.kk = extractelement <8 x i1> %i.kf, i64 1
  br i1 %i.kk, label %pred.store.if372, label %pred.store.continue373

pred.store.if372:                                 ; preds = %pred.store.continue371
  %i.kl = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.km = getelementptr i8, ptr %i.kl, i64 2
  %i.kn = extractelement <8 x i16> %wide.load368, i64 1
  store i16 %i.kn, ptr %i.km, align 2, !tbaa !77
  br label %pred.store.continue373

pred.store.continue373:                           ; preds = %pred.store.if372, %pred.store.continue371
  %i.ko = extractelement <8 x i1> %i.kf, i64 2
  br i1 %i.ko, label %pred.store.if374, label %pred.store.continue375

pred.store.if374:                                 ; preds = %pred.store.continue373
  %i.kp = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.kq = getelementptr i8, ptr %i.kp, i64 4
  %i.kr = extractelement <8 x i16> %wide.load368, i64 2
  store i16 %i.kr, ptr %i.kq, align 2, !tbaa !77
  br label %pred.store.continue375

pred.store.continue375:                           ; preds = %pred.store.if374, %pred.store.continue373
  %i.ks = extractelement <8 x i1> %i.kf, i64 3
  br i1 %i.ks, label %pred.store.if376, label %pred.store.continue377

pred.store.if376:                                 ; preds = %pred.store.continue375
  %i.kt = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.ku = getelementptr i8, ptr %i.kt, i64 6
  %i.kv = extractelement <8 x i16> %wide.load368, i64 3
  store i16 %i.kv, ptr %i.ku, align 2, !tbaa !77
  br label %pred.store.continue377

pred.store.continue377:                           ; preds = %pred.store.if376, %pred.store.continue375
  %i.kw = extractelement <8 x i1> %i.kf, i64 4
  br i1 %i.kw, label %pred.store.if378, label %pred.store.continue379

pred.store.if378:                                 ; preds = %pred.store.continue377
  %i.kx = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.ky = getelementptr i8, ptr %i.kx, i64 8
  %i.kz = extractelement <8 x i16> %wide.load368, i64 4
  store i16 %i.kz, ptr %i.ky, align 2, !tbaa !77
  br label %pred.store.continue379

pred.store.continue379:                           ; preds = %pred.store.if378, %pred.store.continue377
  %i.la = extractelement <8 x i1> %i.kf, i64 5
  br i1 %i.la, label %pred.store.if380, label %pred.store.continue381

pred.store.if380:                                 ; preds = %pred.store.continue379
  %i.lb = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.lc = getelementptr i8, ptr %i.lb, i64 10
  %i.ld = extractelement <8 x i16> %wide.load368, i64 5
  store i16 %i.ld, ptr %i.lc, align 2, !tbaa !77
  br label %pred.store.continue381

pred.store.continue381:                           ; preds = %pred.store.if380, %pred.store.continue379
  %i.le = extractelement <8 x i1> %i.kf, i64 6
  br i1 %i.le, label %pred.store.if382, label %pred.store.continue383

pred.store.if382:                                 ; preds = %pred.store.continue381
  %i.lf = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.lg = getelementptr i8, ptr %i.lf, i64 12
  %i.lh = extractelement <8 x i16> %wide.load368, i64 6
  store i16 %i.lh, ptr %i.lg, align 2, !tbaa !77
  br label %pred.store.continue383

pred.store.continue383:                           ; preds = %pred.store.if382, %pred.store.continue381
  %i.li = extractelement <8 x i1> %i.kf, i64 7
  br i1 %i.li, label %pred.store.if384, label %pred.store.continue385

pred.store.if384:                                 ; preds = %pred.store.continue383
  %i.lj = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.lk = getelementptr i8, ptr %i.lj, i64 14
  %i.ll = extractelement <8 x i16> %wide.load368, i64 7
  store i16 %i.ll, ptr %i.lk, align 2, !tbaa !77
  br label %pred.store.continue385

pred.store.continue385:                           ; preds = %pred.store.if384, %pred.store.continue383
  %i.lm = extractelement <8 x i1> %i.kg, i64 0
  br i1 %i.lm, label %pred.store.if386, label %pred.store.continue387

pred.store.if386:                                 ; preds = %pred.store.continue385
  %i.ln = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.lo = getelementptr i8, ptr %i.ln, i64 16
  %i.lp = extractelement <8 x i16> %wide.load369, i64 0
  store i16 %i.lp, ptr %i.lo, align 2, !tbaa !77
  br label %pred.store.continue387

pred.store.continue387:                           ; preds = %pred.store.if386, %pred.store.continue385
  %i.lq = extractelement <8 x i1> %i.kg, i64 1
  br i1 %i.lq, label %pred.store.if388, label %pred.store.continue389

pred.store.if388:                                 ; preds = %pred.store.continue387
  %i.lr = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.ls = getelementptr i8, ptr %i.lr, i64 18
  %i.lt = extractelement <8 x i16> %wide.load369, i64 1
  store i16 %i.lt, ptr %i.ls, align 2, !tbaa !77
  br label %pred.store.continue389

pred.store.continue389:                           ; preds = %pred.store.if388, %pred.store.continue387
  %i.lu = extractelement <8 x i1> %i.kg, i64 2
  br i1 %i.lu, label %pred.store.if390, label %pred.store.continue391

pred.store.if390:                                 ; preds = %pred.store.continue389
  %i.lv = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.lw = getelementptr i8, ptr %i.lv, i64 20
  %i.lx = extractelement <8 x i16> %wide.load369, i64 2
  store i16 %i.lx, ptr %i.lw, align 2, !tbaa !77
  br label %pred.store.continue391

pred.store.continue391:                           ; preds = %pred.store.if390, %pred.store.continue389
  %i.ly = extractelement <8 x i1> %i.kg, i64 3
  br i1 %i.ly, label %pred.store.if392, label %pred.store.continue393

pred.store.if392:                                 ; preds = %pred.store.continue391
  %i.lz = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.ma = getelementptr i8, ptr %i.lz, i64 22
  %i.mb = extractelement <8 x i16> %wide.load369, i64 3
  store i16 %i.mb, ptr %i.ma, align 2, !tbaa !77
  br label %pred.store.continue393

pred.store.continue393:                           ; preds = %pred.store.if392, %pred.store.continue391
  %i.mc = extractelement <8 x i1> %i.kg, i64 4
  br i1 %i.mc, label %pred.store.if394, label %pred.store.continue395

pred.store.if394:                                 ; preds = %pred.store.continue393
  %i.md = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.me = getelementptr i8, ptr %i.md, i64 24
  %i.mf = extractelement <8 x i16> %wide.load369, i64 4
  store i16 %i.mf, ptr %i.me, align 2, !tbaa !77
  br label %pred.store.continue395

pred.store.continue395:                           ; preds = %pred.store.if394, %pred.store.continue393
  %i.mg = extractelement <8 x i1> %i.kg, i64 5
  br i1 %i.mg, label %pred.store.if396, label %pred.store.continue397

pred.store.if396:                                 ; preds = %pred.store.continue395
  %i.mh = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.mi = getelementptr i8, ptr %i.mh, i64 26
  %i.mj = extractelement <8 x i16> %wide.load369, i64 5
  store i16 %i.mj, ptr %i.mi, align 2, !tbaa !77
  br label %pred.store.continue397

pred.store.continue397:                           ; preds = %pred.store.if396, %pred.store.continue395
  %i.mk = extractelement <8 x i1> %i.kg, i64 6
  br i1 %i.mk, label %pred.store.if398, label %pred.store.continue399

pred.store.if398:                                 ; preds = %pred.store.continue397
  %i.ml = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.mm = getelementptr i8, ptr %i.ml, i64 28
  %i.mn = extractelement <8 x i16> %wide.load369, i64 6
  store i16 %i.mn, ptr %i.mm, align 2, !tbaa !77
  br label %pred.store.continue399

pred.store.continue399:                           ; preds = %pred.store.if398, %pred.store.continue397
  %i.mo = extractelement <8 x i1> %i.kg, i64 7
  br i1 %i.mo, label %pred.store.if400, label %pred.store.continue401

pred.store.if400:                                 ; preds = %pred.store.continue399
  %i.mp = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.mq = getelementptr i8, ptr %i.mp, i64 30
  %i.mr = extractelement <8 x i16> %wide.load369, i64 7
  store i16 %i.mr, ptr %i.mq, align 2, !tbaa !77
  br label %pred.store.continue401

pred.store.continue401:                           ; preds = %pred.store.if400, %pred.store.continue399
  %index.next402 = add nuw i64 %index367, 16      ; 2 uses
  %i.ms = icmp eq i64 %index.next402, %n.vec359
  br i1 %i.ms, label %middle.block403, label %vector.body366, !llvm.loop !120

middle.block403:                                  ; preds = %pred.store.continue401
  %cmp.n404 = icmp eq i64 %i.iy, %n.vec359
  br i1 %cmp.n404, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block403
  %min.epilog.iters.check.not.not = icmp eq i64 %i.je, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph264.split.preheader, label %vec.epilog.ph, !prof !81

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec359, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec406 = and i64 %i.iy, -8                   ; 3 uses
  %i.mt = add nsw i64 %n.vec406, %i.ix
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue430, %vec.epilog.ph
  %index413 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next431, %pred.store.continue430 ] ; 2 uses
  %i.mu = add nuw i64 %index413, %i.ix            ; 9 uses
  %i.mv = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %i.mu
  %wide.load414 = load <8 x i16>, ptr %i.mv, align 2, !tbaa !77 ; 10 uses
  %i.mw = icmp slt <8 x i16> %wide.load414, splat (i16 -1) ; 3 uses
  %i.mx = and <8 x i16> %wide.load414, splat (i16 15) ; 3 uses
  %i.my = icmp eq <8 x i16> %i.mx, zeroinitializer
  %i.mz = icmp eq <8 x i16> %i.mx, splat (i16 1)
  %i.na = icmp eq <8 x i16> %i.mx, splat (i16 2)
  %i.nb = and <8 x i1> %i.mw, %i.my
  %i.nc = and <8 x i1> %i.mw, %i.mz
  %i.nd = and <8 x i1> %i.mw, %i.na
  %i.ne = select <8 x i1> %i.nc, <8 x i1> %broadcast.splat410, <8 x i1> zeroinitializer
  %i.nf = select <8 x i1> %i.nd, <8 x i1> %broadcast.splat408, <8 x i1> %i.ne
  %i.ng = select <8 x i1> %i.nb, <8 x i1> %broadcast.splat412, <8 x i1> zeroinitializer
  %i.nh = or <8 x i1> %i.nf, %i.ng                ; 8 uses
  %i.ni = extractelement <8 x i1> %i.nh, i64 0
  br i1 %i.ni, label %pred.store.if415, label %pred.store.continue416

pred.store.if415:                                 ; preds = %vec.epilog.vector.body
  %i.nj = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %i.mu
  %i.nk = extractelement <8 x i16> %wide.load414, i64 0
  store i16 %i.nk, ptr %i.nj, align 2, !tbaa !77
  br label %pred.store.continue416

pred.store.continue416:                           ; preds = %pred.store.if415, %vec.epilog.vector.body
  %i.nl = extractelement <8 x i1> %i.nh, i64 1
  br i1 %i.nl, label %pred.store.if417, label %pred.store.continue418

pred.store.if417:                                 ; preds = %pred.store.continue416
  %i.nm = getelementptr [2 x i8], ptr %i.hm, i64 %i.mu
  %i.nn = getelementptr i8, ptr %i.nm, i64 2
  %i.no = extractelement <8 x i16> %wide.load414, i64 1
  store i16 %i.no, ptr %i.nn, align 2, !tbaa !77
  br label %pred.store.continue418

pred.store.continue418:                           ; preds = %pred.store.if417, %pred.store.continue416
  %i.np = extractelement <8 x i1> %i.nh, i64 2
  br i1 %i.np, label %pred.store.if419, label %pred.store.continue420

pred.store.if419:                                 ; preds = %pred.store.continue418
  %i.nq = getelementptr [2 x i8], ptr %i.hm, i64 %i.mu
  %i.nr = getelementptr i8, ptr %i.nq, i64 4
  %i.ns = extractelement <8 x i16> %wide.load414, i64 2
  store i16 %i.ns, ptr %i.nr, align 2, !tbaa !77
  br label %pred.store.continue420

pred.store.continue420:                           ; preds = %pred.store.if419, %pred.store.continue418
  %i.nt = extractelement <8 x i1> %i.nh, i64 3
  br i1 %i.nt, label %pred.store.if421, label %pred.store.continue422

pred.store.if421:                                 ; preds = %pred.store.continue420
  %i.nu = getelementptr [2 x i8], ptr %i.hm, i64 %i.mu
  %i.nv = getelementptr i8, ptr %i.nu, i64 6
  %i.nw = extractelement <8 x i16> %wide.load414, i64 3
  store i16 %i.nw, ptr %i.nv, align 2, !tbaa !77
  br label %pred.store.continue422

pred.store.continue422:                           ; preds = %pred.store.if421, %pred.store.continue420
  %i.nx = extractelement <8 x i1> %i.nh, i64 4
  br i1 %i.nx, label %pred.store.if423, label %pred.store.continue424

pred.store.if423:                                 ; preds = %pred.store.continue422
  %i.ny = getelementptr [2 x i8], ptr %i.hm, i64 %i.mu
  %i.nz = getelementptr i8, ptr %i.ny, i64 8
  %i.oa = extractelement <8 x i16> %wide.load414, i64 4
  store i16 %i.oa, ptr %i.nz, align 2, !tbaa !77
  br label %pred.store.continue424

pred.store.continue424:                           ; preds = %pred.store.if423, %pred.store.continue422
  %i.ob = extractelement <8 x i1> %i.nh, i64 5
  br i1 %i.ob, label %pred.store.if425, label %pred.store.continue426

pred.store.if425:                                 ; preds = %pred.store.continue424
  %i.oc = getelementptr [2 x i8], ptr %i.hm, i64 %i.mu
  %i.od = getelementptr i8, ptr %i.oc, i64 10
  %i.oe = extractelement <8 x i16> %wide.load414, i64 5
  store i16 %i.oe, ptr %i.od, align 2, !tbaa !77
  br label %pred.store.continue426

pred.store.continue426:                           ; preds = %pred.store.if425, %pred.store.continue424
  %i.of = extractelement <8 x i1> %i.nh, i64 6
  br i1 %i.of, label %pred.store.if427, label %pred.store.continue428

pred.store.if427:                                 ; preds = %pred.store.continue426
  %i.og = getelementptr [2 x i8], ptr %i.hm, i64 %i.mu
  %i.oh = getelementptr i8, ptr %i.og, i64 12
  %i.oi = extractelement <8 x i16> %wide.load414, i64 6
  store i16 %i.oi, ptr %i.oh, align 2, !tbaa !77
  br label %pred.store.continue428

pred.store.continue428:                           ; preds = %pred.store.if427, %pred.store.continue426
  %i.oj = extractelement <8 x i1> %i.nh, i64 7
  br i1 %i.oj, label %pred.store.if429, label %pred.store.continue430

pred.store.if429:                                 ; preds = %pred.store.continue428
  %i.ok = getelementptr [2 x i8], ptr %i.hm, i64 %i.mu
  %i.ol = getelementptr i8, ptr %i.ok, i64 14
  %i.om = extractelement <8 x i16> %wide.load414, i64 7
  store i16 %i.om, ptr %i.ol, align 2, !tbaa !77
  br label %pred.store.continue430

pred.store.continue430:                           ; preds = %pred.store.if429, %pred.store.continue428
  %index.next431 = add nuw i64 %index413, 8       ; 2 uses
  %i.on = icmp eq i64 %index.next431, %n.vec406
  br i1 %i.on, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !121

vec.epilog.middle.block:                          ; preds = %pred.store.continue430
  %cmp.n432 = icmp eq i64 %i.iy, %n.vec406
  br i1 %cmp.n432, label %.loopexit, label %.lr.ph264.split.preheader

.lr.ph264.split.preheader:                        ; preds = %vector.memcheck353, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv289.ph = phi i64 [ %i.ix, %iter.check ], [ %i.ix, %vector.memcheck353 ], [ %i.jf, %vec.epilog.iter.check ], [ %i.mt, %vec.epilog.middle.block ] ; 6 uses
  %xtraiter = and i64 %indvars.iv289.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph264.split.prol.loopexit, label %.lr.ph264.split.prol

.lr.ph264.split.prol:                             ; preds = %.lr.ph264.split.preheader
  %i.oo = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %indvars.iv289.ph
  %i.op = load i16, ptr %i.oo, align 2, !tbaa !77 ; 3 uses
  %or.cond224.prol = icmp sgt i16 %i.op, -2
  br i1 %or.cond224.prol, label %.lr.ph264.split.prol.loopexit.unr-lcssa, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph264.split.prol
  %i.oq = and i16 %i.op, 15
  switch i16 %i.oq, label %.lr.ph264.split.prol.loopexit.unr-lcssa [
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
  %i.or = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %indvars.iv289.ph
  store i16 %i.op, ptr %i.or, align 2, !tbaa !77
  br label %.lr.ph264.split.prol.loopexit.unr-lcssa

.lr.ph264.split.prol.loopexit.unr-lcssa:          ; preds = %.sink.split330.prol, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %.lr.ph264.split.prol
  %indvars.iv.next290.prol = add nuw nsw i64 %indvars.iv289.ph, 1
  br label %.lr.ph264.split.prol.loopexit

.lr.ph264.split.prol.loopexit:                    ; preds = %.lr.ph264.split.prol.loopexit.unr-lcssa, %.lr.ph264.split.preheader
  %indvars.iv289.unr = phi i64 [ %indvars.iv289.ph, %.lr.ph264.split.preheader ], [ %indvars.iv.next290.prol, %.lr.ph264.split.prol.loopexit.unr-lcssa ]
  %i.os = add nsw i64 %wide.trip.count297, -1
  %i.ot = icmp eq i64 %indvars.iv289.ph, %i.os
  br i1 %i.ot, label %.loopexit, label %.lr.ph264.split

.lr.ph264.split.us.preheader:                     ; preds = %.lr.ph264
  br i1 %min.iters.check, label %.lr.ph264.split.us.preheader434, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph264.split.us.preheader
  %i.ou = shl nsw i64 %i.hl, 1
  %i.ov = add i64 %i.ou, %i.hi
  %i.ow = shl nsw i64 %i.hr, 1
  %i.ox = add i64 %i.ow, %i.ho
  %i.oy = sub i64 %i.ox, %i.ov
  %diff.check = icmp ugt i64 %i.oy, -16
  br i1 %diff.check, label %.lr.ph264.split.us.preheader434, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.iy, -8                      ; 3 uses
  %i.oz = add nsw i64 %n.vec, %i.ix
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue352, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue352 ] ; 2 uses
  %i.pa = add nuw i64 %index, %i.ix               ; 9 uses
  %i.pb = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %i.pa
  %wide.load = load <8 x i16>, ptr %i.pb, align 2, !tbaa !77 ; 10 uses
  %i.pc = icmp slt <8 x i16> %wide.load, splat (i16 -1) ; 4 uses
  %i.pd = and <8 x i16> %wide.load, splat (i16 15) ; 4 uses
  %i.pe = icmp eq <8 x i16> %i.pd, zeroinitializer
  %i.pf = icmp eq <8 x i16> %i.pd, splat (i16 1)
  %i.pg = icmp eq <8 x i16> %i.pd, splat (i16 2)
  %i.ph = icmp eq <8 x i16> %i.pd, splat (i16 3)
  %i.pi = and <8 x i1> %i.pc, %i.pe
  %i.pj = and <8 x i1> %i.pc, %i.pf
  %i.pk = and <8 x i1> %i.pc, %i.pg
  %i.pl = and <8 x i1> %i.pc, %i.ph
  %i.pm = select <8 x i1> %i.pj, <8 x i1> %broadcast.splat336, <8 x i1> zeroinitializer
  %i.pn = select <8 x i1> %i.pi, <8 x i1> %broadcast.splat338, <8 x i1> %i.pm
  %i.po = select <8 x i1> %i.pk, <8 x i1> %broadcast.splat, <8 x i1> zeroinitializer
  %i.pp = or <8 x i1> %i.pn, %i.po
  %i.pq = or <8 x i1> %i.pp, %i.pl                ; 8 uses
  %i.pr = extractelement <8 x i1> %i.pq, i64 0
  br i1 %i.pr, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.ps = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %i.pa
  %i.pt = extractelement <8 x i16> %wide.load, i64 0
  store i16 %i.pt, ptr %i.ps, align 2, !tbaa !77
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.pu = extractelement <8 x i1> %i.pq, i64 1
  br i1 %i.pu, label %pred.store.if339, label %pred.store.continue340

pred.store.if339:                                 ; preds = %pred.store.continue
  %i.pv = getelementptr [2 x i8], ptr %i.hm, i64 %i.pa
  %i.pw = getelementptr i8, ptr %i.pv, i64 2
  %i.px = extractelement <8 x i16> %wide.load, i64 1
  store i16 %i.px, ptr %i.pw, align 2, !tbaa !77
  br label %pred.store.continue340

pred.store.continue340:                           ; preds = %pred.store.if339, %pred.store.continue
  %i.py = extractelement <8 x i1> %i.pq, i64 2
  br i1 %i.py, label %pred.store.if341, label %pred.store.continue342

pred.store.if341:                                 ; preds = %pred.store.continue340
  %i.pz = getelementptr [2 x i8], ptr %i.hm, i64 %i.pa
  %i.qa = getelementptr i8, ptr %i.pz, i64 4
  %i.qb = extractelement <8 x i16> %wide.load, i64 2
  store i16 %i.qb, ptr %i.qa, align 2, !tbaa !77
  br label %pred.store.continue342

pred.store.continue342:                           ; preds = %pred.store.if341, %pred.store.continue340
  %i.qc = extractelement <8 x i1> %i.pq, i64 3
  br i1 %i.qc, label %pred.store.if343, label %pred.store.continue344

pred.store.if343:                                 ; preds = %pred.store.continue342
  %i.qd = getelementptr [2 x i8], ptr %i.hm, i64 %i.pa
  %i.qe = getelementptr i8, ptr %i.qd, i64 6
  %i.qf = extractelement <8 x i16> %wide.load, i64 3
  store i16 %i.qf, ptr %i.qe, align 2, !tbaa !77
  br label %pred.store.continue344

pred.store.continue344:                           ; preds = %pred.store.if343, %pred.store.continue342
  %i.qg = extractelement <8 x i1> %i.pq, i64 4
  br i1 %i.qg, label %pred.store.if345, label %pred.store.continue346

pred.store.if345:                                 ; preds = %pred.store.continue344
  %i.qh = getelementptr [2 x i8], ptr %i.hm, i64 %i.pa
  %i.qi = getelementptr i8, ptr %i.qh, i64 8
  %i.qj = extractelement <8 x i16> %wide.load, i64 4
  store i16 %i.qj, ptr %i.qi, align 2, !tbaa !77
  br label %pred.store.continue346

pred.store.continue346:                           ; preds = %pred.store.if345, %pred.store.continue344
  %i.qk = extractelement <8 x i1> %i.pq, i64 5
  br i1 %i.qk, label %pred.store.if347, label %pred.store.continue348

pred.store.if347:                                 ; preds = %pred.store.continue346
  %i.ql = getelementptr [2 x i8], ptr %i.hm, i64 %i.pa
  %i.qm = getelementptr i8, ptr %i.ql, i64 10
  %i.qn = extractelement <8 x i16> %wide.load, i64 5
  store i16 %i.qn, ptr %i.qm, align 2, !tbaa !77
  br label %pred.store.continue348

pred.store.continue348:                           ; preds = %pred.store.if347, %pred.store.continue346
  %i.qo = extractelement <8 x i1> %i.pq, i64 6
  br i1 %i.qo, label %pred.store.if349, label %pred.store.continue350

pred.store.if349:                                 ; preds = %pred.store.continue348
  %i.qp = getelementptr [2 x i8], ptr %i.hm, i64 %i.pa
  %i.qq = getelementptr i8, ptr %i.qp, i64 12
  %i.qr = extractelement <8 x i16> %wide.load, i64 6
  store i16 %i.qr, ptr %i.qq, align 2, !tbaa !77
  br label %pred.store.continue350

pred.store.continue350:                           ; preds = %pred.store.if349, %pred.store.continue348
  %i.qs = extractelement <8 x i1> %i.pq, i64 7
  br i1 %i.qs, label %pred.store.if351, label %pred.store.continue352

pred.store.if351:                                 ; preds = %pred.store.continue350
  %i.qt = getelementptr [2 x i8], ptr %i.hm, i64 %i.pa
  %i.qu = getelementptr i8, ptr %i.qt, i64 14
  %i.qv = extractelement <8 x i16> %wide.load, i64 7
  store i16 %i.qv, ptr %i.qu, align 2, !tbaa !77
  br label %pred.store.continue352

pred.store.continue352:                           ; preds = %pred.store.if351, %pred.store.continue350
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.qw = icmp eq i64 %index.next, %n.vec
  br i1 %i.qw, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %pred.store.continue352
  %cmp.n = icmp eq i64 %i.iy, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph264.split.us.preheader434

.lr.ph264.split.us.preheader434:                  ; preds = %vector.memcheck, %.lr.ph264.split.us.preheader, %middle.block
  %indvars.iv294.ph = phi i64 [ %i.ix, %vector.memcheck ], [ %i.ix, %.lr.ph264.split.us.preheader ], [ %i.oz, %middle.block ] ; 6 uses
  %xtraiter439 = and i64 %indvars.iv294.ph, 1
  %lcmp.mod440.not = icmp eq i64 %xtraiter439, 0
  br i1 %lcmp.mod440.not, label %.lr.ph264.split.us.prol.loopexit, label %.lr.ph264.split.us.prol

.lr.ph264.split.us.prol:                          ; preds = %.lr.ph264.split.us.preheader434
  %i.qx = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %indvars.iv294.ph
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !77 ; 3 uses
  %or.cond224.us.prol = icmp sgt i16 %i.qy, -2
  br i1 %or.cond224.us.prol, label %.lr.ph264.split.us.prol.loopexit.unr-lcssa, label %bb.af

bb.af:                                            ; preds = %.lr.ph264.split.us.prol
  %i.qz = and i16 %i.qy, 15
  switch i16 %i.qz, label %.lr.ph264.split.us.prol.loopexit.unr-lcssa [
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
  %i.ra = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %indvars.iv294.ph
  store i16 %i.qy, ptr %i.ra, align 2, !tbaa !77
  br label %.lr.ph264.split.us.prol.loopexit.unr-lcssa

.lr.ph264.split.us.prol.loopexit.unr-lcssa:       ; preds = %.sink.split.prol, %bb.ai, %bb.ah, %bb.ag, %bb.af, %.lr.ph264.split.us.prol
  %indvars.iv.next295.prol = add nuw nsw i64 %indvars.iv294.ph, 1
  br label %.lr.ph264.split.us.prol.loopexit

.lr.ph264.split.us.prol.loopexit:                 ; preds = %.lr.ph264.split.us.prol.loopexit.unr-lcssa, %.lr.ph264.split.us.preheader434
  %indvars.iv294.unr = phi i64 [ %indvars.iv294.ph, %.lr.ph264.split.us.preheader434 ], [ %indvars.iv.next295.prol, %.lr.ph264.split.us.prol.loopexit.unr-lcssa ]
  %i.rb = add nsw i64 %wide.trip.count297, -1
  %i.rc = icmp eq i64 %indvars.iv294.ph, %i.rb
  br i1 %i.rc, label %.loopexit, label %.lr.ph264.split.us

.lr.ph264.split.us:                               ; preds = %.lr.ph264.split.us.prol.loopexit, %bb.ar
  %indvars.iv294 = phi i64 [ %indvars.iv.next295.1, %bb.ar ], [ %indvars.iv294.unr, %.lr.ph264.split.us.prol.loopexit ] ; 4 uses
  %i.rd = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %indvars.iv294
  %i.re = load i16, ptr %i.rd, align 2, !tbaa !77 ; 3 uses
  %or.cond224.us = icmp sgt i16 %i.re, -2
  br i1 %or.cond224.us, label %.lr.ph264.split.us.1, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph264.split.us
  %i.rf = and i16 %i.re, 15
  switch i16 %i.rf, label %.lr.ph264.split.us.1 [
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
  %i.rg = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %indvars.iv294
  store i16 %i.re, ptr %i.rg, align 2, !tbaa !77
  br label %.lr.ph264.split.us.1

.lr.ph264.split.us.1:                             ; preds = %.sink.split, %bb.am, %bb.al, %bb.ak, %bb.aj, %.lr.ph264.split.us
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %i.rh = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %indvars.iv.next295
  %i.ri = load i16, ptr %i.rh, align 2, !tbaa !77 ; 3 uses
  %or.cond224.us.1 = icmp sgt i16 %i.ri, -2
  br i1 %or.cond224.us.1, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %.lr.ph264.split.us.1
  %i.rj = and i16 %i.ri, 15
  switch i16 %i.rj, label %bb.ar [
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
  %i.rk = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %indvars.iv.next295
  store i16 %i.ri, ptr %i.rk, align 2, !tbaa !77
  br label %bb.ar
end_hunk_0
