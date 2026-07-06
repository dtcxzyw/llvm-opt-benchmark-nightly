inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5folly6detail17sse_crc32c_v8s3x3EPKhmj:bb.a
  %i.jv = or disjoint i64 %i.jt, %i.ju            ; 2 uses
  %i.jw = lshr i64 %.025.i270, 1
  %i.jx = add nsw i64 %i.jw, -16                  ; 4 uses
  %i.jy = icmp ugt i64 %.025.i270, 415
  br i1 %i.jy, label %.lr.ph.i269, label %._crit_edge.loopexit.i272, !llvm.loop !16

._crit_edge.loopexit.i272:                        ; preds = %.lr.ph.i269
  %i.jz = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.hx, i64 0
  %i.ka = bitcast <4 x i32> %i.jz to <2 x i64>
  %i.kb = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %.121.lcssa.i, i64 0
  %i.kc = bitcast <4 x i32> %i.kb to <2 x i64>
  %i.kd = tail call noundef <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ka, <2 x i64> %i.kc, i8 0)
  %i.ke = xor i64 %i.jv, -1                       ; 2 uses
  %i.kf = trunc nuw nsw i64 %i.jx to i32
  %i.kg = and i32 %i.kf, 31
  %i.kh = lshr exact i32 -2147483648, %i.kg       ; 3 uses
  %i.ki = lshr i64 %i.jx, 5                       ; 4 uses
  %.not27.i256 = icmp eq i64 %i.ki, 0
  br i1 %.not27.i256, label %.preheader.i261, label %.lr.ph31.i257.preheader

.lr.ph31.i257.preheader:                          ; preds = %._crit_edge.loopexit.i272
  %xtraiter492 = and i64 %i.ki, 7                 ; 2 uses
  %lcmp.mod493.not = icmp eq i64 %xtraiter492, 0
  br i1 %lcmp.mod493.not, label %.lr.ph31.i257.prol.loopexit, label %.lr.ph31.i257.prol

.lr.ph31.i257.prol:                               ; preds = %.lr.ph31.i257.preheader, %.lr.ph31.i257.prol
  %.129.i258.prol = phi i64 [ %i.kk, %.lr.ph31.i257.prol ], [ %i.ki, %.lr.ph31.i257.preheader ]
  %.02028.i259.prol = phi i32 [ %i.kj, %.lr.ph31.i257.prol ], [ %i.kh, %.lr.ph31.i257.preheader ]
  %prol.iter494 = phi i64 [ %prol.iter494.next, %.lr.ph31.i257.prol ], [ 0, %.lr.ph31.i257.preheader ]
  %i.kj = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %.02028.i259.prol, i32 0) ; 3 uses
  %i.kk = add nsw i64 %.129.i258.prol, -1         ; 2 uses
  %prol.iter494.next = add i64 %prol.iter494, 1   ; 2 uses
  %prol.iter494.cmp.not = icmp eq i64 %prol.iter494.next, %xtraiter492
  br i1 %prol.iter494.cmp.not, label %.lr.ph31.i257.prol.loopexit, label %.lr.ph31.i257.prol, !llvm.loop !21

.lr.ph31.i257.prol.loopexit:                      ; preds = %.lr.ph31.i257.prol, %.lr.ph31.i257.preheader
  %.lcssa469.unr = phi i32 [ poison, %.lr.ph31.i257.preheader ], [ %i.kj, %.lr.ph31.i257.prol ]
  %.129.i258.unr = phi i64 [ %i.ki, %.lr.ph31.i257.preheader ], [ %i.kk, %.lr.ph31.i257.prol ]
  %.02028.i259.unr = phi i32 [ %i.kh, %.lr.ph31.i257.preheader ], [ %i.kj, %.lr.ph31.i257.prol ]
  %i.kl = icmp ult i64 %i.jx, 256
  br i1 %i.kl, label %.preheader.i261, label %.lr.ph31.i257

.preheader.i261:                                  ; preds = %.lr.ph31.i257.prol.loopexit, %.lr.ph31.i257, %._crit_edge.loopexit.i272
  %.020.lcssa.i262 = phi i32 [ %i.kh, %._crit_edge.loopexit.i272 ], [ %.lcssa469.unr, %.lr.ph31.i257.prol.loopexit ], [ %i.ku, %.lr.ph31.i257 ] ; 2 uses
  %i.km = lshr i64 %i.ke, 1                       ; 2 uses
  %.not2333.i263 = icmp eq i64 %i.km, 0
  br i1 %.not2333.i263, label %_ZN5folly6detailL6xnmodpEm.exit273, label %.lr.ph36.i264

.lr.ph31.i257:                                    ; preds = %.lr.ph31.i257.prol.loopexit, %.lr.ph31.i257
  %.129.i258 = phi i64 [ %i.kv, %.lr.ph31.i257 ], [ %.129.i258.unr, %.lr.ph31.i257.prol.loopexit ]
  %.02028.i259 = phi i32 [ %i.ku, %.lr.ph31.i257 ], [ %.02028.i259.unr, %.lr.ph31.i257.prol.loopexit ]
  %i.kn = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %.02028.i259, i32 0)
  %i.ko = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.kn, i32 0)
  %i.kp = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.ko, i32 0)
  %i.kq = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.kp, i32 0)
  %i.kr = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.kq, i32 0)
  %i.ks = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.kr, i32 0)
  %i.kt = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.ks, i32 0)
  %i.ku = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.kt, i32 0) ; 2 uses
  %i.kv = add nsw i64 %.129.i258, -8              ; 2 uses
  %.not.i260.7 = icmp eq i64 %i.kv, 0
  br i1 %.not.i260.7, label %.preheader.i261, label %.lr.ph31.i257, !llvm.loop !19

.lr.ph36.i264:                                    ; preds = %.preheader.i261, %.lr.ph36.i264
  %i.kw = phi i64 [ %i.lf, %.lr.ph36.i264 ], [ %i.km, %.preheader.i261 ] ; 2 uses
  %.11935.i265 = phi i64 [ %i.kw, %.lr.ph36.i264 ], [ %i.ke, %.preheader.i261 ]
  %.12134.i266 = phi i32 [ %i.le, %.lr.ph36.i264 ], [ %.020.lcssa.i262, %.preheader.i261 ]
  %i.kx = and i64 %.11935.i265, 1
  %i.ky = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.12134.i266, i64 0
  %i.kz = bitcast <4 x i32> %i.ky to <2 x i64>    ; 2 uses
  %i.la = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.kz, <2 x i64> %i.kz, i8 0)
  %i.lb = extractelement <2 x i64> %i.la, i64 0
  %i.lc = shl i64 %i.lb, %i.kx
  %i.ld = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.lc)
  %i.le = trunc nuw i64 %i.ld to i32              ; 2 uses
  %i.lf = lshr i64 %i.kw, 1                       ; 2 uses
  %.not23.i267 = icmp eq i64 %i.lf, 0
  br i1 %.not23.i267, label %_ZN5folly6detailL6xnmodpEm.exit273, label %.lr.ph36.i264, !llvm.loop !20

_ZN5folly6detailL6xnmodpEm.exit273:               ; preds = %.lr.ph36.i264, %.preheader.i261
  %.121.lcssa.i268 = phi i32 [ %.020.lcssa.i262, %.preheader.i261 ], [ %i.le, %.lr.ph36.i264 ]
  %i.lg = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.ib, i64 0
  %i.lh = bitcast <4 x i32> %i.lg to <2 x i64>
  %i.li = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %.121.lcssa.i268, i64 0
  %i.lj = bitcast <4 x i32> %i.li to <2 x i64>
  %i.lk = tail call noundef <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.lh, <2 x i64> %i.lj, i8 0)
  %i.ll = xor <2 x i64> %i.lk, %i.kd
  %i.lm = extractelement <2 x i64> %i.hc, i64 0
  %i.ln = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.lm)
  %i.lo = extractelement <2 x i64> %i.hc, i64 1
  %i.lp = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.ln, i64 %i.lo)
  %i.lq = trunc nuw i64 %i.lp to i32
  %i.lr = mul i64 %i.cg, 576                      ; 2 uses
  %i.ls = or disjoint i64 %i.lr, 31               ; 2 uses
  %i.lt = icmp ugt i64 %i.lr, 191
  br i1 %i.lt, label %.lr.ph.i290, label %._crit_edge.i274

.lr.ph.i290:                                      ; preds = %_ZN5folly6detailL6xnmodpEm.exit273, %.lr.ph.i290
  %.025.i291 = phi i64 [ %i.ly, %.lr.ph.i290 ], [ %i.ls, %_ZN5folly6detailL6xnmodpEm.exit273 ] ; 3 uses
  %.01824.i292 = phi i64 [ %i.lw, %.lr.ph.i290 ], [ -2, %_ZN5folly6detailL6xnmodpEm.exit273 ]
  %i.lu = shl i64 %.01824.i292, 1
  %i.lv = and i64 %.025.i291, 1
  %i.lw = or disjoint i64 %i.lu, %i.lv            ; 2 uses
  %i.lx = lshr i64 %.025.i291, 1
  %i.ly = add nsw i64 %i.lx, -16                  ; 2 uses
  %i.lz = icmp ugt i64 %.025.i291, 415
  br i1 %i.lz, label %.lr.ph.i290, label %._crit_edge.loopexit.i293, !llvm.loop !16

._crit_edge.loopexit.i293:                        ; preds = %.lr.ph.i290
  %i.ma = xor i64 %i.lw, -1
  br label %._crit_edge.i274

._crit_edge.i274:                                 ; preds = %._crit_edge.loopexit.i293, %_ZN5folly6detailL6xnmodpEm.exit273
  %.018.lcssa.i275 = phi i64 [ 1, %_ZN5folly6detailL6xnmodpEm.exit273 ], [ %i.ma, %._crit_edge.loopexit.i293 ] ; 2 uses
  %.0.lcssa.i276 = phi i64 [ %i.ls, %_ZN5folly6detailL6xnmodpEm.exit273 ], [ %i.ly, %._crit_edge.loopexit.i293 ] ; 3 uses
  %i.mb = trunc nuw nsw i64 %.0.lcssa.i276 to i32
  %i.mc = and i32 %i.mb, 31
  %i.md = lshr exact i32 -2147483648, %i.mc       ; 3 uses
  %i.me = lshr i64 %.0.lcssa.i276, 5              ; 4 uses
  %.not27.i277 = icmp eq i64 %i.me, 0
  br i1 %.not27.i277, label %.preheader.i282, label %.lr.ph31.i278.preheader

.lr.ph31.i278.preheader:                          ; preds = %._crit_edge.i274
  %xtraiter495 = and i64 %i.me, 7                 ; 2 uses
  %lcmp.mod496.not = icmp eq i64 %xtraiter495, 0
  br i1 %lcmp.mod496.not, label %.lr.ph31.i278.prol.loopexit, label %.lr.ph31.i278.prol

.lr.ph31.i278.prol:                               ; preds = %.lr.ph31.i278.preheader, %.lr.ph31.i278.prol
  %.129.i279.prol = phi i64 [ %i.mg, %.lr.ph31.i278.prol ], [ %i.me, %.lr.ph31.i278.preheader ]
  %.02028.i280.prol = phi i32 [ %i.mf, %.lr.ph31.i278.prol ], [ %i.md, %.lr.ph31.i278.preheader ]
  %prol.iter497 = phi i64 [ %prol.iter497.next, %.lr.ph31.i278.prol ], [ 0, %.lr.ph31.i278.preheader ]
  %i.mf = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %.02028.i280.prol, i32 0) ; 3 uses
  %i.mg = add nsw i64 %.129.i279.prol, -1         ; 2 uses
  %prol.iter497.next = add i64 %prol.iter497, 1   ; 2 uses
  %prol.iter497.cmp.not = icmp eq i64 %prol.iter497.next, %xtraiter495
  br i1 %prol.iter497.cmp.not, label %.lr.ph31.i278.prol.loopexit, label %.lr.ph31.i278.prol, !llvm.loop !22

.lr.ph31.i278.prol.loopexit:                      ; preds = %.lr.ph31.i278.prol, %.lr.ph31.i278.preheader
  %.lcssa465.unr = phi i32 [ poison, %.lr.ph31.i278.preheader ], [ %i.mf, %.lr.ph31.i278.prol ]
  %.129.i279.unr = phi i64 [ %i.me, %.lr.ph31.i278.preheader ], [ %i.mg, %.lr.ph31.i278.prol ]
  %.02028.i280.unr = phi i32 [ %i.md, %.lr.ph31.i278.preheader ], [ %i.mf, %.lr.ph31.i278.prol ]
  %i.mh = icmp ult i64 %.0.lcssa.i276, 256
  br i1 %i.mh, label %.preheader.i282, label %.lr.ph31.i278

.preheader.i282:                                  ; preds = %.lr.ph31.i278.prol.loopexit, %.lr.ph31.i278, %._crit_edge.i274
  %.020.lcssa.i283 = phi i32 [ %i.md, %._crit_edge.i274 ], [ %.lcssa465.unr, %.lr.ph31.i278.prol.loopexit ], [ %i.mq, %.lr.ph31.i278 ] ; 2 uses
  %i.mi = lshr i64 %.018.lcssa.i275, 1            ; 2 uses
  %.not2333.i284 = icmp eq i64 %i.mi, 0
  br i1 %.not2333.i284, label %_ZN5folly6detailL6xnmodpEm.exit294, label %.lr.ph36.i285

.lr.ph31.i278:                                    ; preds = %.lr.ph31.i278.prol.loopexit, %.lr.ph31.i278
  %.129.i279 = phi i64 [ %i.mr, %.lr.ph31.i278 ], [ %.129.i279.unr, %.lr.ph31.i278.prol.loopexit ]
  %.02028.i280 = phi i32 [ %i.mq, %.lr.ph31.i278 ], [ %.02028.i280.unr, %.lr.ph31.i278.prol.loopexit ]
  %i.mj = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %.02028.i280, i32 0)
  %i.mk = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.mj, i32 0)
  %i.ml = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.mk, i32 0)
  %i.mm = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.ml, i32 0)
  %i.mn = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.mm, i32 0)
  %i.mo = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.mn, i32 0)
  %i.mp = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.mo, i32 0)
  %i.mq = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.mp, i32 0) ; 2 uses
  %i.mr = add nsw i64 %.129.i279, -8              ; 2 uses
  %.not.i281.7 = icmp eq i64 %i.mr, 0
  br i1 %.not.i281.7, label %.preheader.i282, label %.lr.ph31.i278, !llvm.loop !19

.lr.ph36.i285:                                    ; preds = %.preheader.i282, %.lr.ph36.i285
  %i.ms = phi i64 [ %i.nb, %.lr.ph36.i285 ], [ %i.mi, %.preheader.i282 ] ; 2 uses
  %.11935.i286 = phi i64 [ %i.ms, %.lr.ph36.i285 ], [ %.018.lcssa.i275, %.preheader.i282 ]
  %.12134.i287 = phi i32 [ %i.na, %.lr.ph36.i285 ], [ %.020.lcssa.i283, %.preheader.i282 ]
  %i.mt = and i64 %.11935.i286, 1
  %i.mu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.12134.i287, i64 0
  %i.mv = bitcast <4 x i32> %i.mu to <2 x i64>    ; 2 uses
  %i.mw = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.mv, <2 x i64> %i.mv, i8 0)
  %i.mx = extractelement <2 x i64> %i.mw, i64 0
  %i.my = shl i64 %i.mx, %i.mt
  %i.mz = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.my)
  %i.na = trunc nuw i64 %i.mz to i32              ; 2 uses
  %i.nb = lshr i64 %i.ms, 1                       ; 2 uses
  %.not23.i288 = icmp eq i64 %i.nb, 0
  br i1 %.not23.i288, label %_ZN5folly6detailL6xnmodpEm.exit294, label %.lr.ph36.i285, !llvm.loop !20

_ZN5folly6detailL6xnmodpEm.exit294:               ; preds = %.lr.ph36.i285, %.preheader.i282
  %.121.lcssa.i289 = phi i32 [ %.020.lcssa.i283, %.preheader.i282 ], [ %i.na, %.lr.ph36.i285 ]
  %i.nc = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.lq, i64 0
  %i.nd = bitcast <4 x i32> %i.nc to <2 x i64>
  %i.ne = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %.121.lcssa.i289, i64 0
  %i.nf = bitcast <4 x i32> %i.ne to <2 x i64>
  %i.ng = tail call noundef <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.nd, <2 x i64> %i.nf, i8 0)
  %foldExtExtBinop = xor <2 x i64> %i.ng, %i.ll
  %i.nh = extractelement <2 x i64> %foldExtExtBinop, i64 0
  %i.ni = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.dd ; 2 uses
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !12
  %i.nk = xor i64 %i.nh, %i.nj
  %i.nl = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.ie, i64 %i.nk)
  %i.nm = trunc nuw i64 %i.nl to i32
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.no = add nsw i64 %.2234.in.lcssa, -208
  br label %bb.e

bb.e:                                             ; preds = %_ZN5folly6detailL6xnmodpEm.exit294, %bb.c
  %.3243 = phi i32 [ %i.nm, %_ZN5folly6detailL6xnmodpEm.exit294 ], [ %.1241, %bb.c ] ; 2 uses
  %.3235 = phi i64 [ %i.no, %_ZN5folly6detailL6xnmodpEm.exit294 ], [ %.1233, %bb.c ] ; 5 uses
  %.3 = phi ptr [ %i.nn, %_ZN5folly6detailL6xnmodpEm.exit294 ], [ %.1, %bb.c ] ; 3 uses
  %i.np = icmp samesign ugt i64 %.3235, 7
  br i1 %i.np, label %.lr.ph349.preheader, label %.preheader

.lr.ph349.preheader:                              ; preds = %bb.e
  %3 = zext i32 %.3243 to i64                     ; 2 uses
  %i.nq = add i64 %.3235, -8                      ; 2 uses
  %i.nr = lshr i64 %i.nq, 3
  %i.ns = add nuw nsw i64 %i.nr, 1
  %xtraiter498 = and i64 %i.ns, 7                 ; 2 uses
  %lcmp.mod499.not = icmp eq i64 %xtraiter498, 0
  br i1 %lcmp.mod499.not, label %.lr.ph349.prol.loopexit, label %.lr.ph349.prol

.lr.ph349.prol:                                   ; preds = %.lr.ph349.preheader, %.lr.ph349.prol
  %.4347.prol = phi ptr [ %i.nv, %.lr.ph349.prol ], [ %.3, %.lr.ph349.preheader ] ; 2 uses
  %.4236346.prol = phi i64 [ %i.nw, %.lr.ph349.prol ], [ %.3235, %.lr.ph349.preheader ]
  %prol.iter500.a = phi i64 [ %i.nu, %.lr.ph349.prol ], [ %3, %.lr.ph349.preheader ]
  %prol.iter500 = phi i64 [ %prol.iter500.next, %.lr.ph349.prol ], [ 0, %.lr.ph349.preheader ]
  %i.nt = load i64, ptr %.4347.prol, align 8, !tbaa !12
  %i.nu = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %prol.iter500.a, i64 %i.nt) ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.4347.prol, i64 8 ; 3 uses
  %i.nw = add nsw i64 %.4236346.prol, -8          ; 3 uses
  %prol.iter500.next = add i64 %prol.iter500, 1   ; 2 uses
  %prol.iter500.cmp.not = icmp eq i64 %prol.iter500.next, %xtraiter498
  br i1 %prol.iter500.cmp.not, label %.lr.ph349.prol.loopexit, label %.lr.ph349.prol, !llvm.loop !23

.lr.ph349.prol.loopexit:                          ; preds = %.lr.ph349.prol, %.lr.ph349.preheader
  %.4347.unr = phi ptr [ %.3, %.lr.ph349.preheader ], [ %i.nv, %.lr.ph349.prol ]
  %.4236346.unr = phi i64 [ %.3235, %.lr.ph349.preheader ], [ %i.nw, %.lr.ph349.prol ]
  %.4244345.unr = phi i64 [ %3, %.lr.ph349.preheader ], [ %i.nu, %.lr.ph349.prol ]
  %.lcssa463.unr = phi i64 [ poison, %.lr.ph349.preheader ], [ %i.nu, %.lr.ph349.prol ]
  %.lcssa462.unr = phi ptr [ poison, %.lr.ph349.preheader ], [ %i.nv, %.lr.ph349.prol ]
  %.lcssa461.unr = phi i64 [ poison, %.lr.ph349.preheader ], [ %i.nw, %.lr.ph349.prol ]
  %i.nx = icmp ult i64 %i.nq, 56
  br i1 %i.nx, label %.preheader.loopexit, label %.lr.ph349

.preheader.loopexit:                              ; preds = %.lr.ph349, %.lr.ph349.prol.loopexit
  %.lcssa463 = phi i64 [ %.lcssa463.unr, %.lr.ph349.prol.loopexit ], [ %i.oz, %.lr.ph349 ]
  %.lcssa462 = phi ptr [ %.lcssa462.unr, %.lr.ph349.prol.loopexit ], [ %i.pa, %.lr.ph349 ]
  %.lcssa461 = phi i64 [ %.lcssa461.unr, %.lr.ph349.prol.loopexit ], [ %i.pb, %.lr.ph349 ]
  %4 = trunc nuw i64 %.lcssa463 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.e
  %.4244.lcssa = phi i32 [ %.3243, %bb.e ], [ %4, %.preheader.loopexit ] ; 3 uses
  %.4236.lcssa = phi i64 [ %.3235, %bb.e ], [ %.lcssa461, %.preheader.loopexit ] ; 5 uses
  %.4.lcssa = phi ptr [ %.3, %bb.e ], [ %.lcssa462, %.preheader.loopexit ] ; 2 uses
  %.not353 = icmp eq i64 %.4236.lcssa, 0
  br i1 %.not353, label %._crit_edge358, label %.lr.ph357.preheader

.lr.ph357.preheader:                              ; preds = %.preheader
  %xtraiter501 = and i64 %.4236.lcssa, 7          ; 2 uses
  %lcmp.mod502.not = icmp eq i64 %xtraiter501, 0
  br i1 %lcmp.mod502.not, label %.lr.ph357.prol.loopexit, label %.lr.ph357.prol

.lr.ph357.prol:                                   ; preds = %.lr.ph357.preheader, %.lr.ph357.prol
  %.5356.prol = phi ptr [ %i.ny, %.lr.ph357.prol ], [ %.4.lcssa, %.lr.ph357.preheader ] ; 2 uses
  %.5237355.prol = phi i64 [ %i.ob, %.lr.ph357.prol ], [ %.4236.lcssa, %.lr.ph357.preheader ]
  %.5245354.prol = phi i32 [ %i.oa, %.lr.ph357.prol ], [ %.4244.lcssa, %.lr.ph357.preheader ]
  %prol.iter503 = phi i64 [ %prol.iter503.next, %.lr.ph357.prol ], [ 0, %.lr.ph357.preheader ]
  %i.ny = getelementptr inbounds nuw i8, ptr %.5356.prol, i64 1 ; 2 uses
  %i.nz = load i8, ptr %.5356.prol, align 1, !tbaa !11
  %i.oa = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %.5245354.prol, i8 %i.nz) ; 3 uses
  %i.ob = add nsw i64 %.5237355.prol, -1          ; 2 uses
  %prol.iter503.next = add i64 %prol.iter503, 1   ; 2 uses
  %prol.iter503.cmp.not = icmp eq i64 %prol.iter503.next, %xtraiter501
  br i1 %prol.iter503.cmp.not, label %.lr.ph357.prol.loopexit, label %.lr.ph357.prol, !llvm.loop !24

.lr.ph357.prol.loopexit:                          ; preds = %.lr.ph357.prol, %.lr.ph357.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph357.preheader ], [ %i.oa, %.lr.ph357.prol ]
  %.5356.unr = phi ptr [ %.4.lcssa, %.lr.ph357.preheader ], [ %i.ny, %.lr.ph357.prol ]
  %.5237355.unr = phi i64 [ %.4236.lcssa, %.lr.ph357.preheader ], [ %i.ob, %.lr.ph357.prol ]
  %.5245354.unr = phi i32 [ %.4244.lcssa, %.lr.ph357.preheader ], [ %i.oa, %.lr.ph357.prol ]
  %i.oc = icmp ult i64 %.4236.lcssa, 8
  br i1 %i.oc, label %._crit_edge358, label %.lr.ph357

.lr.ph349:                                        ; preds = %.lr.ph349.prol.loopexit, %.lr.ph349
  %.4347 = phi ptr [ %i.pa, %.lr.ph349 ], [ %.4347.unr, %.lr.ph349.prol.loopexit ] ; 9 uses
  %.4236346 = phi i64 [ %i.pb, %.lr.ph349 ], [ %.4236346.unr, %.lr.ph349.prol.loopexit ]
  %.4244345 = phi i64 [ %i.oz, %.lr.ph349 ], [ %.4244345.unr, %.lr.ph349.prol.loopexit ]
  %i.od = load i64, ptr %.4347, align 8, !tbaa !12
  %i.oe = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %.4244345, i64 %i.od)
  %i.of = getelementptr inbounds nuw i8, ptr %.4347, i64 8
  %i.og = load i64, ptr %i.of, align 8, !tbaa !12
  %i.oh = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.oe, i64 %i.og)
  %i.oi = getelementptr inbounds nuw i8, ptr %.4347, i64 16
  %i.oj = load i64, ptr %i.oi, align 8, !tbaa !12
  %i.ok = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.oh, i64 %i.oj)
  %i.ol = getelementptr inbounds nuw i8, ptr %.4347, i64 24
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !12
  %i.on = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.ok, i64 %i.om)
  %i.oo = getelementptr inbounds nuw i8, ptr %.4347, i64 32
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !12
  %i.oq = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.on, i64 %i.op)
  %i.or = getelementptr inbounds nuw i8, ptr %.4347, i64 40
  %i.os = load i64, ptr %i.or, align 8, !tbaa !12
  %i.ot = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.oq, i64 %i.os)
  %i.ou = getelementptr inbounds nuw i8, ptr %.4347, i64 48
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !12
  %i.ow = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.ot, i64 %i.ov)
  %i.ox = getelementptr inbounds nuw i8, ptr %.4347, i64 56
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !12
  %i.oz = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.ow, i64 %i.oy) ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.4347, i64 64 ; 2 uses
  %i.pb = add nsw i64 %.4236346, -64              ; 3 uses
  %i.pc = icmp ugt i64 %i.pb, 7
  br i1 %i.pc, label %.lr.ph349, label %.preheader.loopexit, !llvm.loop !25

.lr.ph357:                                        ; preds = %.lr.ph357.prol.loopexit, %.lr.ph357
  %.5356 = phi ptr [ %i.py, %.lr.ph357 ], [ %.5356.unr, %.lr.ph357.prol.loopexit ] ; 9 uses
  %.5237355 = phi i64 [ %i.qb, %.lr.ph357 ], [ %.5237355.unr, %.lr.ph357.prol.loopexit ]
  %.5245354 = phi i32 [ %i.qa, %.lr.ph357 ], [ %.5245354.unr, %.lr.ph357.prol.loopexit ]
  %i.pd = getelementptr inbounds nuw i8, ptr %.5356, i64 1
  %i.pe = load i8, ptr %.5356, align 1, !tbaa !11
  %i.pf = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %.5245354, i8 %i.pe)
  %i.pg = getelementptr inbounds nuw i8, ptr %.5356, i64 2
  %i.ph = load i8, ptr %i.pd, align 1, !tbaa !11
  %i.pi = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.pf, i8 %i.ph)
  %i.pj = getelementptr inbounds nuw i8, ptr %.5356, i64 3
  %i.pk = load i8, ptr %i.pg, align 1, !tbaa !11
  %i.pl = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.pi, i8 %i.pk)
  %i.pm = getelementptr inbounds nuw i8, ptr %.5356, i64 4
  %i.pn = load i8, ptr %i.pj, align 1, !tbaa !11
  %i.po = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.pl, i8 %i.pn)
  %i.pp = getelementptr inbounds nuw i8, ptr %.5356, i64 5
  %i.pq = load i8, ptr %i.pm, align 1, !tbaa !11
  %i.pr = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.po, i8 %i.pq)
  %i.ps = getelementptr inbounds nuw i8, ptr %.5356, i64 6
  %i.pt = load i8, ptr %i.pp, align 1, !tbaa !11
  %i.pu = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.pr, i8 %i.pt)
  %i.pv = getelementptr inbounds nuw i8, ptr %.5356, i64 7
  %i.pw = load i8, ptr %i.ps, align 1, !tbaa !11
  %i.px = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.pu, i8 %i.pw)
  %i.py = getelementptr inbounds nuw i8, ptr %.5356, i64 8
  %i.pz = load i8, ptr %i.pv, align 1, !tbaa !11
  %i.qa = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.px, i8 %i.pz) ; 2 uses
  %i.qb = add nsw i64 %.5237355, -8               ; 2 uses
  %.not.7 = icmp eq i64 %i.qb, 0
  br i1 %.not.7, label %._crit_edge358, label %.lr.ph357, !llvm.loop !26

._crit_edge358:                                   ; preds = %.lr.ph357.prol.loopexit, %.lr.ph357, %.preheader
  %.5245.lcssa = phi i32 [ %.4244.lcssa, %.preheader ], [ %.lcssa.unr, %.lr.ph357.prol.loopexit ], [ %i.qa, %.lr.ph357 ]
  ret i32 %.5245.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.pclmulqdq(<2 x i64>, <2 x i64>, i8 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse42.crc32.32.8(i32, i8) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.sse42.crc32.64.64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse42.crc32.32.32(i32, i32) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !9, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
end_hunk_0
