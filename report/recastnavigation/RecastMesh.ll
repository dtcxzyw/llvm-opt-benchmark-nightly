Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastMesh?download=true
inline.NumInlined: 287
inline.NumDeleted: 47
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_Z17rcMergePolyMeshesP9rcContextPP10rcPolyMeshiRS1_:bb.a
  br label %bb.z

bb.u:                                             ; preds = %.lr.ph255, %_ZL9addVertextttPtPiS0_Ri.exit
  %i.fm = phi i32 [ %i.fa, %.lr.ph255 ], [ %i.hb, %_ZL9addVertextttPtPiS0_Ri.exit ]
  %indvars.iv281 = phi i64 [ 0, %.lr.ph255 ], [ %indvars.iv.next282, %_ZL9addVertextttPtPiS0_Ri.exit ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv281, 6
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.idx ; 3 uses
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !77
  %i.fp = add i16 %i.fo, %i.fe                    ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 2
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !77 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !77
  %i.fu = add i16 %i.ft, %.fr272                  ; 3 uses
  %i.fv = zext i16 %i.fp to i64
  %i.fw = zext i16 %i.fu to i64
  %i.fx = mul nuw nsw i64 %i.fv, 835
  %i.fy = mul nuw nsw i64 %i.fw, 799
  %i.fz = add nuw nsw i64 %i.fy, %i.fx
  %i.ga = and i64 %i.fz, 4095
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.ga ; 3 uses
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
  %i.jz = select <8 x i1> %i.jx, <8 x i1> %broadcast.splat361, <8 x i1> zeroinitializer
  %i.ka = select <8 x i1> %i.jy, <8 x i1> %broadcast.splat361, <8 x i1> zeroinitializer
  %i.kb = select <8 x i1> %i.jv, <8 x i1> %broadcast.splat363, <8 x i1> zeroinitializer
  %i.kc = select <8 x i1> %i.jw, <8 x i1> %broadcast.splat363, <8 x i1> zeroinitializer
  %i.kd = or <8 x i1> %i.jz, %i.kb
  %i.ke = or <8 x i1> %i.ka, %i.kc
  %i.kf = select <8 x i1> %i.jt, <8 x i1> %broadcast.splat365, <8 x i1> zeroinitializer
  %i.kg = select <8 x i1> %i.ju, <8 x i1> %broadcast.splat365, <8 x i1> zeroinitializer
  %i.kh = or <8 x i1> %i.kd, %i.kf                ; 8 uses
  %i.ki = or <8 x i1> %i.ke, %i.kg                ; 8 uses
  %i.kj = extractelement <8 x i1> %i.kh, i64 0
  br i1 %i.kj, label %pred.store.if370, label %pred.store.continue371

pred.store.if370:                                 ; preds = %vector.body366
  %i.kk = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %i.jg
  %i.kl = extractelement <8 x i16> %wide.load368, i64 0
  store i16 %i.kl, ptr %i.kk, align 2, !tbaa !77
  br label %pred.store.continue371

pred.store.continue371:                           ; preds = %pred.store.if370, %vector.body366
  %i.km = extractelement <8 x i1> %i.kh, i64 1
  br i1 %i.km, label %pred.store.if372, label %pred.store.continue373

pred.store.if372:                                 ; preds = %pred.store.continue371
  %i.kn = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.ko = getelementptr i8, ptr %i.kn, i64 2
  %i.kp = extractelement <8 x i16> %wide.load368, i64 1
  store i16 %i.kp, ptr %i.ko, align 2, !tbaa !77
  br label %pred.store.continue373

pred.store.continue373:                           ; preds = %pred.store.if372, %pred.store.continue371
  %i.kq = extractelement <8 x i1> %i.kh, i64 2
  br i1 %i.kq, label %pred.store.if374, label %pred.store.continue375

pred.store.if374:                                 ; preds = %pred.store.continue373
  %i.kr = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.ks = getelementptr i8, ptr %i.kr, i64 4
  %i.kt = extractelement <8 x i16> %wide.load368, i64 2
  store i16 %i.kt, ptr %i.ks, align 2, !tbaa !77
  br label %pred.store.continue375

pred.store.continue375:                           ; preds = %pred.store.if374, %pred.store.continue373
  %i.ku = extractelement <8 x i1> %i.kh, i64 3
  br i1 %i.ku, label %pred.store.if376, label %pred.store.continue377

pred.store.if376:                                 ; preds = %pred.store.continue375
  %i.kv = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.kw = getelementptr i8, ptr %i.kv, i64 6
  %i.kx = extractelement <8 x i16> %wide.load368, i64 3
  store i16 %i.kx, ptr %i.kw, align 2, !tbaa !77
  br label %pred.store.continue377

pred.store.continue377:                           ; preds = %pred.store.if376, %pred.store.continue375
  %i.ky = extractelement <8 x i1> %i.kh, i64 4
  br i1 %i.ky, label %pred.store.if378, label %pred.store.continue379

pred.store.if378:                                 ; preds = %pred.store.continue377
  %i.kz = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.la = getelementptr i8, ptr %i.kz, i64 8
  %i.lb = extractelement <8 x i16> %wide.load368, i64 4
  store i16 %i.lb, ptr %i.la, align 2, !tbaa !77
  br label %pred.store.continue379

pred.store.continue379:                           ; preds = %pred.store.if378, %pred.store.continue377
  %i.lc = extractelement <8 x i1> %i.kh, i64 5
  br i1 %i.lc, label %pred.store.if380, label %pred.store.continue381

pred.store.if380:                                 ; preds = %pred.store.continue379
  %i.ld = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.le = getelementptr i8, ptr %i.ld, i64 10
  %i.lf = extractelement <8 x i16> %wide.load368, i64 5
  store i16 %i.lf, ptr %i.le, align 2, !tbaa !77
  br label %pred.store.continue381

pred.store.continue381:                           ; preds = %pred.store.if380, %pred.store.continue379
  %i.lg = extractelement <8 x i1> %i.kh, i64 6
  br i1 %i.lg, label %pred.store.if382, label %pred.store.continue383

pred.store.if382:                                 ; preds = %pred.store.continue381
  %i.lh = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.li = getelementptr i8, ptr %i.lh, i64 12
  %i.lj = extractelement <8 x i16> %wide.load368, i64 6
  store i16 %i.lj, ptr %i.li, align 2, !tbaa !77
  br label %pred.store.continue383

pred.store.continue383:                           ; preds = %pred.store.if382, %pred.store.continue381
  %i.lk = extractelement <8 x i1> %i.kh, i64 7
  br i1 %i.lk, label %pred.store.if384, label %pred.store.continue385

pred.store.if384:                                 ; preds = %pred.store.continue383
  %i.ll = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.lm = getelementptr i8, ptr %i.ll, i64 14
  %i.ln = extractelement <8 x i16> %wide.load368, i64 7
  store i16 %i.ln, ptr %i.lm, align 2, !tbaa !77
  br label %pred.store.continue385

pred.store.continue385:                           ; preds = %pred.store.if384, %pred.store.continue383
  %i.lo = extractelement <8 x i1> %i.ki, i64 0
  br i1 %i.lo, label %pred.store.if386, label %pred.store.continue387

pred.store.if386:                                 ; preds = %pred.store.continue385
  %i.lp = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.lq = getelementptr i8, ptr %i.lp, i64 16
  %i.lr = extractelement <8 x i16> %wide.load369, i64 0
  store i16 %i.lr, ptr %i.lq, align 2, !tbaa !77
  br label %pred.store.continue387

pred.store.continue387:                           ; preds = %pred.store.if386, %pred.store.continue385
  %i.ls = extractelement <8 x i1> %i.ki, i64 1
  br i1 %i.ls, label %pred.store.if388, label %pred.store.continue389

pred.store.if388:                                 ; preds = %pred.store.continue387
  %i.lt = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.lu = getelementptr i8, ptr %i.lt, i64 18
  %i.lv = extractelement <8 x i16> %wide.load369, i64 1
  store i16 %i.lv, ptr %i.lu, align 2, !tbaa !77
  br label %pred.store.continue389

pred.store.continue389:                           ; preds = %pred.store.if388, %pred.store.continue387
  %i.lw = extractelement <8 x i1> %i.ki, i64 2
  br i1 %i.lw, label %pred.store.if390, label %pred.store.continue391

pred.store.if390:                                 ; preds = %pred.store.continue389
  %i.lx = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.ly = getelementptr i8, ptr %i.lx, i64 20
  %i.lz = extractelement <8 x i16> %wide.load369, i64 2
  store i16 %i.lz, ptr %i.ly, align 2, !tbaa !77
  br label %pred.store.continue391

pred.store.continue391:                           ; preds = %pred.store.if390, %pred.store.continue389
  %i.ma = extractelement <8 x i1> %i.ki, i64 3
  br i1 %i.ma, label %pred.store.if392, label %pred.store.continue393

pred.store.if392:                                 ; preds = %pred.store.continue391
  %i.mb = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.mc = getelementptr i8, ptr %i.mb, i64 22
  %i.md = extractelement <8 x i16> %wide.load369, i64 3
  store i16 %i.md, ptr %i.mc, align 2, !tbaa !77
  br label %pred.store.continue393

pred.store.continue393:                           ; preds = %pred.store.if392, %pred.store.continue391
  %i.me = extractelement <8 x i1> %i.ki, i64 4
  br i1 %i.me, label %pred.store.if394, label %pred.store.continue395

pred.store.if394:                                 ; preds = %pred.store.continue393
  %i.mf = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.mg = getelementptr i8, ptr %i.mf, i64 24
  %i.mh = extractelement <8 x i16> %wide.load369, i64 4
  store i16 %i.mh, ptr %i.mg, align 2, !tbaa !77
  br label %pred.store.continue395

pred.store.continue395:                           ; preds = %pred.store.if394, %pred.store.continue393
  %i.mi = extractelement <8 x i1> %i.ki, i64 5
  br i1 %i.mi, label %pred.store.if396, label %pred.store.continue397

pred.store.if396:                                 ; preds = %pred.store.continue395
  %i.mj = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.mk = getelementptr i8, ptr %i.mj, i64 26
  %i.ml = extractelement <8 x i16> %wide.load369, i64 5
  store i16 %i.ml, ptr %i.mk, align 2, !tbaa !77
  br label %pred.store.continue397

pred.store.continue397:                           ; preds = %pred.store.if396, %pred.store.continue395
  %i.mm = extractelement <8 x i1> %i.ki, i64 6
  br i1 %i.mm, label %pred.store.if398, label %pred.store.continue399

pred.store.if398:                                 ; preds = %pred.store.continue397
  %i.mn = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.mo = getelementptr i8, ptr %i.mn, i64 28
  %i.mp = extractelement <8 x i16> %wide.load369, i64 6
  store i16 %i.mp, ptr %i.mo, align 2, !tbaa !77
  br label %pred.store.continue399

pred.store.continue399:                           ; preds = %pred.store.if398, %pred.store.continue397
  %i.mq = extractelement <8 x i1> %i.ki, i64 7
  br i1 %i.mq, label %pred.store.if400, label %pred.store.continue401

pred.store.if400:                                 ; preds = %pred.store.continue399
  %i.mr = getelementptr [2 x i8], ptr %i.hm, i64 %i.jg
  %i.ms = getelementptr i8, ptr %i.mr, i64 30
  %i.mt = extractelement <8 x i16> %wide.load369, i64 7
  store i16 %i.mt, ptr %i.ms, align 2, !tbaa !77
  br label %pred.store.continue401

pred.store.continue401:                           ; preds = %pred.store.if400, %pred.store.continue399
  %index.next402 = add nuw i64 %index367, 16      ; 2 uses
  %i.mu = icmp eq i64 %index.next402, %n.vec359
  br i1 %i.mu, label %middle.block403, label %vector.body366, !llvm.loop !120

middle.block403:                                  ; preds = %pred.store.continue401
  %cmp.n404 = icmp eq i64 %i.iy, %n.vec359
  br i1 %cmp.n404, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block403
  %min.epilog.iters.check.not.not = icmp eq i64 %i.je, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph264.split.preheader, label %vec.epilog.ph, !prof !81

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec359, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec406 = and i64 %i.iy, -8                   ; 3 uses
  %i.mv = add nsw i64 %n.vec406, %i.ix
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue430, %vec.epilog.ph
  %index413 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next431, %pred.store.continue430 ] ; 2 uses
  %i.mw = add nuw i64 %index413, %i.ix            ; 9 uses
  %i.mx = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %i.mw
  %wide.load414 = load <8 x i16>, ptr %i.mx, align 2, !tbaa !77 ; 10 uses
  %i.my = icmp slt <8 x i16> %wide.load414, splat (i16 -1) ; 3 uses
  %i.mz = and <8 x i16> %wide.load414, splat (i16 15) ; 3 uses
  %i.na = icmp eq <8 x i16> %i.mz, zeroinitializer
  %i.nb = icmp eq <8 x i16> %i.mz, splat (i16 1)
  %i.nc = icmp eq <8 x i16> %i.mz, splat (i16 2)
  %i.nd = and <8 x i1> %i.my, %i.na
  %i.ne = and <8 x i1> %i.my, %i.nb
  %i.nf = and <8 x i1> %i.my, %i.nc
  %i.ng = select <8 x i1> %i.nf, <8 x i1> %broadcast.splat408, <8 x i1> zeroinitializer
  %i.nh = select <8 x i1> %i.ne, <8 x i1> %broadcast.splat410, <8 x i1> zeroinitializer
  %i.ni = or <8 x i1> %i.ng, %i.nh
  %i.nj = select <8 x i1> %i.nd, <8 x i1> %broadcast.splat412, <8 x i1> zeroinitializer
  %i.nk = or <8 x i1> %i.ni, %i.nj                ; 8 uses
  %i.nl = extractelement <8 x i1> %i.nk, i64 0
  br i1 %i.nl, label %pred.store.if415, label %pred.store.continue416

pred.store.if415:                                 ; preds = %vec.epilog.vector.body
  %i.nm = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %i.mw
  %i.nn = extractelement <8 x i16> %wide.load414, i64 0
  store i16 %i.nn, ptr %i.nm, align 2, !tbaa !77
  br label %pred.store.continue416

pred.store.continue416:                           ; preds = %pred.store.if415, %vec.epilog.vector.body
  %i.no = extractelement <8 x i1> %i.nk, i64 1
  br i1 %i.no, label %pred.store.if417, label %pred.store.continue418

pred.store.if417:                                 ; preds = %pred.store.continue416
  %i.np = getelementptr [2 x i8], ptr %i.hm, i64 %i.mw
  %i.nq = getelementptr i8, ptr %i.np, i64 2
  %i.nr = extractelement <8 x i16> %wide.load414, i64 1
  store i16 %i.nr, ptr %i.nq, align 2, !tbaa !77
  br label %pred.store.continue418

pred.store.continue418:                           ; preds = %pred.store.if417, %pred.store.continue416
  %i.ns = extractelement <8 x i1> %i.nk, i64 2
  br i1 %i.ns, label %pred.store.if419, label %pred.store.continue420

pred.store.if419:                                 ; preds = %pred.store.continue418
  %i.nt = getelementptr [2 x i8], ptr %i.hm, i64 %i.mw
  %i.nu = getelementptr i8, ptr %i.nt, i64 4
  %i.nv = extractelement <8 x i16> %wide.load414, i64 2
  store i16 %i.nv, ptr %i.nu, align 2, !tbaa !77
  br label %pred.store.continue420

pred.store.continue420:                           ; preds = %pred.store.if419, %pred.store.continue418
  %i.nw = extractelement <8 x i1> %i.nk, i64 3
  br i1 %i.nw, label %pred.store.if421, label %pred.store.continue422

pred.store.if421:                                 ; preds = %pred.store.continue420
  %i.nx = getelementptr [2 x i8], ptr %i.hm, i64 %i.mw
  %i.ny = getelementptr i8, ptr %i.nx, i64 6
  %i.nz = extractelement <8 x i16> %wide.load414, i64 3
  store i16 %i.nz, ptr %i.ny, align 2, !tbaa !77
  br label %pred.store.continue422

pred.store.continue422:                           ; preds = %pred.store.if421, %pred.store.continue420
  %i.oa = extractelement <8 x i1> %i.nk, i64 4
  br i1 %i.oa, label %pred.store.if423, label %pred.store.continue424

pred.store.if423:                                 ; preds = %pred.store.continue422
  %i.ob = getelementptr [2 x i8], ptr %i.hm, i64 %i.mw
  %i.oc = getelementptr i8, ptr %i.ob, i64 8
  %i.od = extractelement <8 x i16> %wide.load414, i64 4
  store i16 %i.od, ptr %i.oc, align 2, !tbaa !77
  br label %pred.store.continue424

pred.store.continue424:                           ; preds = %pred.store.if423, %pred.store.continue422
  %i.oe = extractelement <8 x i1> %i.nk, i64 5
  br i1 %i.oe, label %pred.store.if425, label %pred.store.continue426

pred.store.if425:                                 ; preds = %pred.store.continue424
  %i.of = getelementptr [2 x i8], ptr %i.hm, i64 %i.mw
  %i.og = getelementptr i8, ptr %i.of, i64 10
  %i.oh = extractelement <8 x i16> %wide.load414, i64 5
  store i16 %i.oh, ptr %i.og, align 2, !tbaa !77
  br label %pred.store.continue426

pred.store.continue426:                           ; preds = %pred.store.if425, %pred.store.continue424
  %i.oi = extractelement <8 x i1> %i.nk, i64 6
  br i1 %i.oi, label %pred.store.if427, label %pred.store.continue428

pred.store.if427:                                 ; preds = %pred.store.continue426
  %i.oj = getelementptr [2 x i8], ptr %i.hm, i64 %i.mw
  %i.ok = getelementptr i8, ptr %i.oj, i64 12
  %i.ol = extractelement <8 x i16> %wide.load414, i64 6
  store i16 %i.ol, ptr %i.ok, align 2, !tbaa !77
  br label %pred.store.continue428

pred.store.continue428:                           ; preds = %pred.store.if427, %pred.store.continue426
  %i.om = extractelement <8 x i1> %i.nk, i64 7
  br i1 %i.om, label %pred.store.if429, label %pred.store.continue430

pred.store.if429:                                 ; preds = %pred.store.continue428
  %i.on = getelementptr [2 x i8], ptr %i.hm, i64 %i.mw
  %i.oo = getelementptr i8, ptr %i.on, i64 14
  %i.op = extractelement <8 x i16> %wide.load414, i64 7
  store i16 %i.op, ptr %i.oo, align 2, !tbaa !77
  br label %pred.store.continue430

pred.store.continue430:                           ; preds = %pred.store.if429, %pred.store.continue428
  %index.next431 = add nuw i64 %index413, 8       ; 2 uses
  %i.oq = icmp eq i64 %index.next431, %n.vec406
  br i1 %i.oq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !121

vec.epilog.middle.block:                          ; preds = %pred.store.continue430
  %cmp.n432 = icmp eq i64 %i.iy, %n.vec406
  br i1 %cmp.n432, label %.loopexit, label %.lr.ph264.split.preheader

.lr.ph264.split.preheader:                        ; preds = %vector.memcheck353, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv289.ph = phi i64 [ %i.ix, %iter.check ], [ %i.ix, %vector.memcheck353 ], [ %i.jf, %vec.epilog.iter.check ], [ %i.mv, %vec.epilog.middle.block ] ; 6 uses
  %xtraiter = and i64 %indvars.iv289.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph264.split.prol.loopexit, label %.lr.ph264.split.prol

.lr.ph264.split.prol:                             ; preds = %.lr.ph264.split.preheader
  %i.or = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %indvars.iv289.ph
  %i.os = load i16, ptr %i.or, align 2, !tbaa !77 ; 3 uses
  %or.cond224.prol = icmp sgt i16 %i.os, -2
  br i1 %or.cond224.prol, label %.lr.ph264.split.prol.loopexit.unr-lcssa, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph264.split.prol
  %i.ot = and i16 %i.os, 15
  switch i16 %i.ot, label %.lr.ph264.split.prol.loopexit.unr-lcssa [
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
  %i.ou = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %indvars.iv289.ph
  store i16 %i.os, ptr %i.ou, align 2, !tbaa !77
  br label %.lr.ph264.split.prol.loopexit.unr-lcssa

.lr.ph264.split.prol.loopexit.unr-lcssa:          ; preds = %.sink.split330.prol, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %.lr.ph264.split.prol
  %indvars.iv.next290.prol = add nuw nsw i64 %indvars.iv289.ph, 1
  br label %.lr.ph264.split.prol.loopexit

.lr.ph264.split.prol.loopexit:                    ; preds = %.lr.ph264.split.prol.loopexit.unr-lcssa, %.lr.ph264.split.preheader
  %indvars.iv289.unr = phi i64 [ %indvars.iv289.ph, %.lr.ph264.split.preheader ], [ %indvars.iv.next290.prol, %.lr.ph264.split.prol.loopexit.unr-lcssa ]
  %i.ov = add nsw i64 %wide.trip.count297, -1
  %i.ow = icmp eq i64 %indvars.iv289.ph, %i.ov
  br i1 %i.ow, label %.loopexit, label %.lr.ph264.split

.lr.ph264.split.us.preheader:                     ; preds = %.lr.ph264
  br i1 %min.iters.check, label %.lr.ph264.split.us.preheader434, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph264.split.us.preheader
  %i.ox = shl nsw i64 %i.hl, 1
  %i.oy = add i64 %i.ox, %i.hi
  %i.oz = shl nsw i64 %i.hr, 1
  %i.pa = add i64 %i.oz, %i.ho
  %i.pb = sub i64 %i.pa, %i.oy
  %diff.check = icmp ugt i64 %i.pb, -16
  br i1 %diff.check, label %.lr.ph264.split.us.preheader434, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.iy, -8                      ; 3 uses
  %i.pc = add nsw i64 %n.vec, %i.ix
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue352, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue352 ] ; 2 uses
  %i.pd = add nuw i64 %index, %i.ix               ; 9 uses
  %i.pe = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %i.pd
  %wide.load = load <8 x i16>, ptr %i.pe, align 2, !tbaa !77 ; 10 uses
  %i.pf = icmp slt <8 x i16> %wide.load, splat (i16 -1) ; 4 uses
  %i.pg = and <8 x i16> %wide.load, splat (i16 15) ; 4 uses
  %i.ph = icmp eq <8 x i16> %i.pg, zeroinitializer
  %i.pi = icmp eq <8 x i16> %i.pg, splat (i16 1)
  %i.pj = icmp eq <8 x i16> %i.pg, splat (i16 2)
  %i.pk = icmp eq <8 x i16> %i.pg, splat (i16 3)
  %i.pl = and <8 x i1> %i.pf, %i.ph
  %i.pm = and <8 x i1> %i.pf, %i.pi
  %i.pn = and <8 x i1> %i.pf, %i.pj
  %i.po = and <8 x i1> %i.pf, %i.pk
  %i.pp = select <8 x i1> %i.pl, <8 x i1> %broadcast.splat338, <8 x i1> zeroinitializer
  %i.pq = select <8 x i1> %i.pm, <8 x i1> %broadcast.splat336, <8 x i1> zeroinitializer
  %i.pr = or <8 x i1> %i.pp, %i.pq
  %i.ps = select <8 x i1> %i.pn, <8 x i1> %broadcast.splat, <8 x i1> zeroinitializer
  %i.pt = or <8 x i1> %i.pr, %i.ps
  %i.pu = or <8 x i1> %i.pt, %i.po                ; 8 uses
  %i.pv = extractelement <8 x i1> %i.pu, i64 0
  br i1 %i.pv, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.pw = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %i.pd
  %i.px = extractelement <8 x i16> %wide.load, i64 0
  store i16 %i.px, ptr %i.pw, align 2, !tbaa !77
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.py = extractelement <8 x i1> %i.pu, i64 1
  br i1 %i.py, label %pred.store.if339, label %pred.store.continue340

pred.store.if339:                                 ; preds = %pred.store.continue
  %i.pz = getelementptr [2 x i8], ptr %i.hm, i64 %i.pd
  %i.qa = getelementptr i8, ptr %i.pz, i64 2
  %i.qb = extractelement <8 x i16> %wide.load, i64 1
  store i16 %i.qb, ptr %i.qa, align 2, !tbaa !77
  br label %pred.store.continue340

pred.store.continue340:                           ; preds = %pred.store.if339, %pred.store.continue
  %i.qc = extractelement <8 x i1> %i.pu, i64 2
  br i1 %i.qc, label %pred.store.if341, label %pred.store.continue342

pred.store.if341:                                 ; preds = %pred.store.continue340
  %i.qd = getelementptr [2 x i8], ptr %i.hm, i64 %i.pd
  %i.qe = getelementptr i8, ptr %i.qd, i64 4
  %i.qf = extractelement <8 x i16> %wide.load, i64 2
  store i16 %i.qf, ptr %i.qe, align 2, !tbaa !77
  br label %pred.store.continue342

pred.store.continue342:                           ; preds = %pred.store.if341, %pred.store.continue340
  %i.qg = extractelement <8 x i1> %i.pu, i64 3
  br i1 %i.qg, label %pred.store.if343, label %pred.store.continue344

pred.store.if343:                                 ; preds = %pred.store.continue342
  %i.qh = getelementptr [2 x i8], ptr %i.hm, i64 %i.pd
  %i.qi = getelementptr i8, ptr %i.qh, i64 6
  %i.qj = extractelement <8 x i16> %wide.load, i64 3
  store i16 %i.qj, ptr %i.qi, align 2, !tbaa !77
  br label %pred.store.continue344

pred.store.continue344:                           ; preds = %pred.store.if343, %pred.store.continue342
  %i.qk = extractelement <8 x i1> %i.pu, i64 4
  br i1 %i.qk, label %pred.store.if345, label %pred.store.continue346

pred.store.if345:                                 ; preds = %pred.store.continue344
  %i.ql = getelementptr [2 x i8], ptr %i.hm, i64 %i.pd
  %i.qm = getelementptr i8, ptr %i.ql, i64 8
  %i.qn = extractelement <8 x i16> %wide.load, i64 4
  store i16 %i.qn, ptr %i.qm, align 2, !tbaa !77
  br label %pred.store.continue346

pred.store.continue346:                           ; preds = %pred.store.if345, %pred.store.continue344
  %i.qo = extractelement <8 x i1> %i.pu, i64 5
  br i1 %i.qo, label %pred.store.if347, label %pred.store.continue348

pred.store.if347:                                 ; preds = %pred.store.continue346
  %i.qp = getelementptr [2 x i8], ptr %i.hm, i64 %i.pd
  %i.qq = getelementptr i8, ptr %i.qp, i64 10
  %i.qr = extractelement <8 x i16> %wide.load, i64 5
  store i16 %i.qr, ptr %i.qq, align 2, !tbaa !77
  br label %pred.store.continue348

pred.store.continue348:                           ; preds = %pred.store.if347, %pred.store.continue346
  %i.qs = extractelement <8 x i1> %i.pu, i64 6
  br i1 %i.qs, label %pred.store.if349, label %pred.store.continue350

pred.store.if349:                                 ; preds = %pred.store.continue348
  %i.qt = getelementptr [2 x i8], ptr %i.hm, i64 %i.pd
  %i.qu = getelementptr i8, ptr %i.qt, i64 12
  %i.qv = extractelement <8 x i16> %wide.load, i64 6
  store i16 %i.qv, ptr %i.qu, align 2, !tbaa !77
  br label %pred.store.continue350

pred.store.continue350:                           ; preds = %pred.store.if349, %pred.store.continue348
  %i.qw = extractelement <8 x i1> %i.pu, i64 7
  br i1 %i.qw, label %pred.store.if351, label %pred.store.continue352

pred.store.if351:                                 ; preds = %pred.store.continue350
  %i.qx = getelementptr [2 x i8], ptr %i.hm, i64 %i.pd
  %i.qy = getelementptr i8, ptr %i.qx, i64 14
  %i.qz = extractelement <8 x i16> %wide.load, i64 7
  store i16 %i.qz, ptr %i.qy, align 2, !tbaa !77
  br label %pred.store.continue352

pred.store.continue352:                           ; preds = %pred.store.if351, %pred.store.continue350
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ra = icmp eq i64 %index.next, %n.vec
  br i1 %i.ra, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %pred.store.continue352
  %cmp.n = icmp eq i64 %i.iy, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph264.split.us.preheader434

.lr.ph264.split.us.preheader434:                  ; preds = %vector.memcheck, %.lr.ph264.split.us.preheader, %middle.block
  %indvars.iv294.ph = phi i64 [ %i.ix, %vector.memcheck ], [ %i.ix, %.lr.ph264.split.us.preheader ], [ %i.pc, %middle.block ] ; 6 uses
  %xtraiter439 = and i64 %indvars.iv294.ph, 1
  %lcmp.mod440.not = icmp eq i64 %xtraiter439, 0
  br i1 %lcmp.mod440.not, label %.lr.ph264.split.us.prol.loopexit, label %.lr.ph264.split.us.prol

.lr.ph264.split.us.prol:                          ; preds = %.lr.ph264.split.us.preheader434
  %i.rb = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %indvars.iv294.ph
  %i.rc = load i16, ptr %i.rb, align 2, !tbaa !77 ; 3 uses
  %or.cond224.us.prol = icmp sgt i16 %i.rc, -2
  br i1 %or.cond224.us.prol, label %.lr.ph264.split.us.prol.loopexit.unr-lcssa, label %bb.af

bb.af:                                            ; preds = %.lr.ph264.split.us.prol
  %i.rd = and i16 %i.rc, 15
  switch i16 %i.rd, label %.lr.ph264.split.us.prol.loopexit.unr-lcssa [
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
  %i.re = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %indvars.iv294.ph
  store i16 %i.rc, ptr %i.re, align 2, !tbaa !77
  br label %.lr.ph264.split.us.prol.loopexit.unr-lcssa

.lr.ph264.split.us.prol.loopexit.unr-lcssa:       ; preds = %.sink.split.prol, %bb.ai, %bb.ah, %bb.ag, %bb.af, %.lr.ph264.split.us.prol
  %indvars.iv.next295.prol = add nuw nsw i64 %indvars.iv294.ph, 1
  br label %.lr.ph264.split.us.prol.loopexit

.lr.ph264.split.us.prol.loopexit:                 ; preds = %.lr.ph264.split.us.prol.loopexit.unr-lcssa, %.lr.ph264.split.us.preheader434
  %indvars.iv294.unr = phi i64 [ %indvars.iv294.ph, %.lr.ph264.split.us.preheader434 ], [ %indvars.iv.next295.prol, %.lr.ph264.split.us.prol.loopexit.unr-lcssa ]
  %i.rf = add nsw i64 %wide.trip.count297, -1
  %i.rg = icmp eq i64 %indvars.iv294.ph, %i.rf
  br i1 %i.rg, label %.loopexit, label %.lr.ph264.split.us

.lr.ph264.split.us:                               ; preds = %.lr.ph264.split.us.prol.loopexit, %bb.ar
  %indvars.iv294 = phi i64 [ %indvars.iv.next295.1, %bb.ar ], [ %indvars.iv294.unr, %.lr.ph264.split.us.prol.loopexit ] ; 4 uses
  %i.rh = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %indvars.iv294
  %i.ri = load i16, ptr %i.rh, align 2, !tbaa !77 ; 3 uses
  %or.cond224.us = icmp sgt i16 %i.ri, -2
  br i1 %or.cond224.us, label %.lr.ph264.split.us.1, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph264.split.us
  %i.rj = and i16 %i.ri, 15
  switch i16 %i.rj, label %.lr.ph264.split.us.1 [
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
  %i.rk = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %indvars.iv294
  store i16 %i.ri, ptr %i.rk, align 2, !tbaa !77
  br label %.lr.ph264.split.us.1

.lr.ph264.split.us.1:                             ; preds = %.sink.split, %bb.am, %bb.al, %bb.ak, %bb.aj, %.lr.ph264.split.us
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %i.rl = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %indvars.iv.next295
  %i.rm = load i16, ptr %i.rl, align 2, !tbaa !77 ; 3 uses
  %or.cond224.us.1 = icmp sgt i16 %i.rm, -2
  br i1 %or.cond224.us.1, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %.lr.ph264.split.us.1
  %i.rn = and i16 %i.rm, 15
  switch i16 %i.rn, label %bb.ar [
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
  %i.ro = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %indvars.iv.next295
  store i16 %i.rm, ptr %i.ro, align 2, !tbaa !77
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split.1, %bb.aq, %bb.ap, %bb.ao, %bb.an, %.lr.ph264.split.us.1
  %indvars.iv.next295.1 = add nuw nsw i64 %indvars.iv294, 2 ; 2 uses
  %exitcond298.not.1 = icmp eq i64 %indvars.iv.next295.1, %wide.trip.count297
  br i1 %exitcond298.not.1, label %.loopexit, label %.lr.ph264.split.us, !llvm.loop !123

.lr.ph264.split:                                  ; preds = %.lr.ph264.split.prol.loopexit, %bb.ba
  %indvars.iv289 = phi i64 [ %indvars.iv.next290.1, %bb.ba ], [ %indvars.iv289.unr, %.lr.ph264.split.prol.loopexit ] ; 4 uses
  %i.rp = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %indvars.iv289
  %i.rq = load i16, ptr %i.rp, align 2, !tbaa !77 ; 3 uses
  %or.cond224 = icmp sgt i16 %i.rq, -2
  br i1 %or.cond224, label %.lr.ph264.split.1, label %bb.as

bb.as:                                            ; preds = %.lr.ph264.split
  %i.rr = and i16 %i.rq, 15
  switch i16 %i.rr, label %.lr.ph264.split.1 [
    i16 0, label %bb.at
    i16 1, label %bb.au
    i16 2, label %bb.av
  ]

bb.at:                                            ; preds = %bb.as
  br i1 %i.ew, label %.sink.split330, label %.lr.ph264.split.1

bb.au:                                            ; preds = %bb.as
  br i1 %i.ev, label %.sink.split330, label %.lr.ph264.split.1

bb.av:                                            ; preds = %bb.as
  br i1 %i.ex, label %.sink.split330, label %.lr.ph264.split.1

.sink.split330:                                   ; preds = %bb.av, %bb.au, %bb.at
  %i.rs = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %indvars.iv289
  store i16 %i.rq, ptr %i.rs, align 2, !tbaa !77
  br label %.lr.ph264.split.1

.lr.ph264.split.1:                                ; preds = %.sink.split330, %bb.as, %bb.at, %bb.au, %bb.av, %.lr.ph264.split
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %i.rt = getelementptr inbounds [2 x i8], ptr %i.hs, i64 %indvars.iv.next290
  %i.ru = load i16, ptr %i.rt, align 2, !tbaa !77 ; 3 uses
  %or.cond224.1 = icmp sgt i16 %i.ru, -2
  br i1 %or.cond224.1, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph264.split.1
  %i.rv = and i16 %i.ru, 15
  switch i16 %i.rv, label %bb.ba [
    i16 0, label %bb.az
    i16 1, label %bb.ay
    i16 2, label %bb.ax
  ]

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.ex, label %.sink.split330.1, label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  br i1 %i.ev, label %.sink.split330.1, label %bb.ba

bb.az:                                            ; preds = %bb.aw
  br i1 %i.ew, label %.sink.split330.1, label %bb.ba

.sink.split330.1:                                 ; preds = %bb.az, %bb.ay, %bb.ax
  %i.rw = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %indvars.iv.next290
  store i16 %i.ru, ptr %i.rw, align 2, !tbaa !77
  br label %bb.ba

bb.ba:                                            ; preds = %.sink.split330.1, %bb.az, %bb.ay, %bb.ax, %bb.aw, %.lr.ph264.split.1
  %indvars.iv.next290.1 = add nuw nsw i64 %indvars.iv289, 2 ; 2 uses
  %exitcond293.not.1 = icmp eq i64 %indvars.iv.next290.1, %wide.trip.count297
  br i1 %exitcond293.not.1, label %.loopexit, label %.lr.ph264.split, !llvm.loop !124

.loopexit:                                        ; preds = %.lr.ph264.split.prol.loopexit, %bb.ba, %.lr.ph264.split.us.prol.loopexit, %bb.ar, %middle.block403, %vec.epilog.middle.block, %middle.block, %.preheader, %._crit_edge259
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %i.rx = load i32, ptr %i.ff, align 4, !tbaa !73
  %i.ry = sext i32 %i.rx to i64
  %i.rz = icmp slt i64 %indvars.iv.next300, %i.ry
  br i1 %i.rz, label %bb.z, label %._crit_edge267

bb.bb:                                            ; preds = %._crit_edge271
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.26) #8
  br label %bb.bg

bb.bc:                                            ; preds = %._crit_edge271
  %i.sa = load i32, ptr %i.ai, align 8, !tbaa !72 ; 2 uses
  %i.sb = icmp sgt i32 %i.sa, 65535
  br i1 %i.sb, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.27, i32 noundef %i.sa, i32 noundef 65535) #8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.sc = load i32, ptr %i.ca, align 4, !tbaa !73 ; 2 uses
  %i.sd = icmp sgt i32 %i.sc, 65535
  br i1 %i.sd, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.28, i32 noundef %i.sc, i32 noundef 65535) #8
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %bb.bb, %bb.r
  %.0198 = phi i1 [ false, %bb.r ], [ false, %bb.bb ], [ true, %bb.bf ], [ true, %bb.be ]
  tail call void @_Z6rcFreePv(ptr noundef %i.da) #8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.q
  %.1 = phi i1 [ %.0198, %bb.bg ], [ false, %bb.q ]
  tail call void @_Z6rcFreePv(ptr noundef %i.cx) #8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.o
  %.2 = phi i1 [ %.1, %bb.bh ], [ false, %bb.o ]
  tail call void @_Z6rcFreePv(ptr noundef %i.cw) #8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e
  %.3 = phi i1 [ %.2, %bb.bi ], [ false, %bb.m ], [ false, %bb.k ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.e ] ; 2 uses
  %i.se = load i8, ptr %i.c, align 1, !tbaa !17, !range !18, !noundef !19
  %i.sf = trunc nuw i8 %i.se to i1
  br i1 %i.sf, label %bb.bk, label %_ZN13rcScopedTimerD2Ev.exit

bb.bk:                                            ; preds = %bb.bj
  %i.sg = load ptr, ptr %0, align 8, !tbaa !21
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 48
  %i.si = load ptr, ptr %i.sh, align 8
  tail call void %i.si(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 12) #8, !call_target !83, !inline_history !3
  br label %_ZN13rcScopedTimerD2Ev.exit

_ZN13rcScopedTimerD2Ev.exit:                      ; preds = %bb.bk, %bb.bj, %bb.a
  %.4 = phi i1 [ true, %bb.a ], [ %.3, %bb.bj ], [ %.3, %bb.bk ]
  ret i1 %.4
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #5

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @_Z14rcCopyPolyMeshP9rcContextRK10rcPolyMeshRS1_(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(96) initializes((0, 8), (40, 96)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.b, ptr %i.c, align 8, !tbaa !72
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 13 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !73   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %i.e, ptr %i.f, align 4, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 %i.e, ptr %i.g, align 8, !tbaa !75
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !74
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 %i.i, ptr %i.j, align 4, !tbaa !74
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load float, ptr %i.l, align 8, !tbaa !60
  store float %i.m, ptr %i.k, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.o = load float, ptr %i.n, align 4, !tbaa !60
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 60
  store float %i.o, ptr %i.p, align 4, !tbaa !60
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = load float, ptr %i.q, align 8, !tbaa !60
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64
  store float %i.r, ptr %i.s, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.v = load float, ptr %i.u, align 4, !tbaa !60
  store float %i.v, ptr %i.t, align 4, !tbaa !60
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = load float, ptr %i.w, align 8, !tbaa !60
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 72
  store float %i.x, ptr %i.y, align 8, !tbaa !60
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.aa = load float, ptr %i.z, align 4, !tbaa !60
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 76
  store float %i.aa, ptr %i.ab, align 4, !tbaa !60
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ae = load <2 x float>, ptr %i.ac, align 8, !tbaa !60
  store <2 x float> %i.ae, ptr %i.ad, align 8, !tbaa !60
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !65
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !65
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !66
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 92
  store float %i.aj, ptr %i.ak, align 4, !tbaa !66
  %i.al = sext i32 %i.b to i64
  %i.am = mul nsw i64 %i.al, 6
  %i.an = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.am, i32 noundef 0) #8 ; 3 uses
  store ptr %i.an, ptr %2, align 8, !tbaa !68
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ao = load i32, ptr %i.a, align 8, !tbaa !72
  %i.ap = mul nsw i32 %i.ao, 3
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.29, i32 noundef %i.ap) #8
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.aq = load ptr, ptr %1, align 8, !tbaa !68
  %i.ar = load i32, ptr %i.a, align 8, !tbaa !72
  %i.as = sext i32 %i.ar to i64
  %i.at = mul nsw i64 %i.as, 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.an, ptr align 2 %i.aq, i64 %i.at, i1 false)
  %i.au = load i32, ptr %i.d, align 4, !tbaa !73
  %i.av = sext i32 %i.au to i64
  %i.aw = shl nsw i64 %i.av, 2
  %i.ax = load i32, ptr %i.h, align 4, !tbaa !74
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul i64 %i.aw, %i.ay
  %i.ba = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.az, i32 noundef 0) #8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !69
  %.not69 = icmp eq ptr %i.ba, null
  br i1 %.not69, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bc = load i32, ptr %i.d, align 4, !tbaa !73
  %i.bd = shl nsw i32 %i.bc, 1
  %i.be = load i32, ptr %i.h, align 4, !tbaa !74
  %i.bf = mul nsw i32 %i.bd, %i.be
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.30, i32 noundef %i.bf) #8
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !69
  %i.bi = load i32, ptr %i.d, align 4, !tbaa !73
  %i.bj = sext i32 %i.bi to i64
  %i.bk = shl nsw i64 %i.bj, 2
  %i.bl = load i32, ptr %i.h, align 4, !tbaa !74
  %i.bm = sext i32 %i.bl to i64
  %i.bn = mul i64 %i.bk, %i.bm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ba, ptr align 2 %i.bh, i64 %i.bn, i1 false)
  %i.bo = load i32, ptr %i.d, align 4, !tbaa !73
  %i.bp = sext i32 %i.bo to i64
  %i.bq = shl nsw i64 %i.bp, 1
  %i.br = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.bq, i32 noundef 0) #8 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !70
  %.not70 = icmp eq ptr %i.br, null
  br i1 %.not70, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bt = load i32, ptr %i.d, align 4, !tbaa !73
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.31, i32 noundef %i.bt) #8
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !70
  %i.bw = load i32, ptr %i.d, align 4, !tbaa !73
  %i.bx = sext i32 %i.bw to i64
  %i.by = shl nsw i64 %i.bx, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.br, ptr align 2 %i.bv, i64 %i.by, i1 false)
  %i.bz = load i32, ptr %i.d, align 4, !tbaa !73
  %i.ca = sext i32 %i.bz to i64
  %i.cb = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.ca, i32 noundef 0) #8 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !71
  %.not71 = icmp eq ptr %i.cb, null
  br i1 %.not71, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
end_hunk_0
