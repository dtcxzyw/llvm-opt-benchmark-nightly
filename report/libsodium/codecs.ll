Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/codecs?download=true
inline.NumInlined: 14
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@sodium_bin2base64:bb.a
  %i.gf = or <16 x i32> %i.ge, %i.fu
  %i.gg = or <16 x i32> %i.gf, %i.fz
  %i.gh = trunc <16 x i32> %i.gg to <16 x i8>
  %i.gi = getelementptr i8, ptr %i.ez, i64 %index215
  store <16 x i8> %i.gh, ptr %i.gi, align 1
  %index.next217 = add nuw i64 %index215, 16      ; 2 uses
  %vec.ind.next218 = add <16 x i64> %vec.ind216, splat (i64 -96)
  %i.gj = icmp eq i64 %index.next217, %n.vec208
  br i1 %i.gj, label %middle.block219, label %vector.body214, !llvm.loop !22

middle.block219:                                  ; preds = %vector.body214
  %cmp.n220 = icmp eq i64 %i.eu, %n.vec208
  br i1 %cmp.n220, label %.loopexit, label %vec.epilog.iter.check225

vec.epilog.iter.check225:                         ; preds = %middle.block219
  %min.epilog.iters.check226 = icmp eq i64 %i.ev, 0
  br i1 %min.epilog.iters.check226, label %vec.epilog.scalar.ph224.preheader, label %vec.epilog.ph227, !prof !25

vec.epilog.ph227:                                 ; preds = %vector.main.loop.iter.check205, %vec.epilog.iter.check225
  %vec.epilog.resume.val221 = phi i64 [ %n.vec208, %vec.epilog.iter.check225 ], [ 0, %vector.main.loop.iter.check205 ]
  %bc.resume.val222 = phi i64 [ %i.ey, %vec.epilog.iter.check225 ], [ %i.ep, %vector.main.loop.iter.check205 ]
  %n.vec228 = and i64 %i.eu, 9223372036854775804  ; 4 uses
  %i.gk = add i64 %.296, %n.vec228                ; 2 uses
  %i.gl = mul i64 %n.vec228, -6
  %i.gm = add i64 %i.ep, %i.gl                    ; 2 uses
  %broadcast.splatinsert229 = insertelement <4 x i32> poison, i32 %i.eo, i64 0
  %broadcast.splat230 = shufflevector <4 x i32> %broadcast.splatinsert229, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert231 = insertelement <4 x i64> poison, i64 %bc.resume.val222, i64 0
  %broadcast.splat232 = shufflevector <4 x i64> %broadcast.splatinsert231, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction233 = add <4 x i64> %broadcast.splat232, <i64 0, i64 -6, i64 -12, i64 -18>
  %i.gn = getelementptr i8, ptr %0, i64 %.296
  br label %vec.epilog.vector.body234

vec.epilog.vector.body234:                        ; preds = %vec.epilog.vector.body234, %vec.epilog.ph227
  %index235 = phi i64 [ %vec.epilog.resume.val221, %vec.epilog.ph227 ], [ %index.next237, %vec.epilog.vector.body234 ] ; 2 uses
  %vec.ind236 = phi <4 x i64> [ %induction233, %vec.epilog.ph227 ], [ %vec.ind.next238, %vec.epilog.vector.body234 ] ; 2 uses
  %i.go = trunc <4 x i64> %vec.ind236 to <4 x i32>
  %i.gp = add <4 x i32> %i.go, splat (i32 -6)
  %i.gq = lshr <4 x i32> %broadcast.splat230, %i.gp
  %i.gr = and <4 x i32> %i.gq, splat (i32 63)     ; 8 uses
  %i.gs = add nuw nsw <4 x i32> %i.gr, splat (i32 65510)
  %i.gt = lshr <4 x i32> %i.gs, splat (i32 8)     ; 2 uses
  %i.gu = add nuw nsw <4 x i32> %i.gr, splat (i32 65)
  %i.gv = and <4 x i32> %i.gt, %i.gu
  %i.gw = xor <4 x i32> %i.gt, splat (i32 -1)
  %i.gx = add nuw nsw <4 x i32> %i.gr, splat (i32 65484)
  %i.gy = lshr <4 x i32> %i.gx, splat (i32 8)     ; 2 uses
  %i.gz = add nuw nsw <4 x i32> %i.gr, splat (i32 71)
  %i.ha = and <4 x i32> %i.gz, %i.gw
  %i.hb = and <4 x i32> %i.ha, %i.gy
  %i.hc = or <4 x i32> %i.hb, %i.gv
  %i.hd = xor <4 x i32> %i.gy, splat (i32 -1)
  %i.he = add nuw nsw <4 x i32> %i.gr, splat (i32 65474)
  %i.hf = lshr <4 x i32> %i.he, splat (i32 8)
  %i.hg = add nuw nsw <4 x i32> %i.gr, splat (i32 252)
  %i.hh = and <4 x i32> %i.hf, %i.hg
  %i.hi = and <4 x i32> %i.hh, %i.hd
  %i.hj = xor <4 x i32> %i.gr, splat (i32 16321)
  %i.hk = add nuw nsw <4 x i32> %i.hj, splat (i32 1)
  %i.hl = lshr <4 x i32> %i.hk, splat (i32 8)
  %i.hm = and <4 x i32> %i.hl, splat (i32 43)
  %i.hn = xor <4 x i32> %i.hm, splat (i32 43)
  %i.ho = add nuw nsw <4 x i32> %i.gr, splat (i32 16321)
  %i.hp = lshr <4 x i32> %i.ho, splat (i32 8)
  %i.hq = and <4 x i32> %i.hp, splat (i32 47)
  %i.hr = xor <4 x i32> %i.hq, splat (i32 47)
  %i.hs = or <4 x i32> %i.hc, %i.hr
  %i.ht = or <4 x i32> %i.hs, %i.hi
  %i.hu = or <4 x i32> %i.ht, %i.hn
  %i.hv = trunc <4 x i32> %i.hu to <4 x i8>
  %i.hw = getelementptr i8, ptr %i.gn, i64 %index235
  store <4 x i8> %i.hv, ptr %i.hw, align 1
  %index.next237 = add nuw i64 %index235, 4       ; 2 uses
  %vec.ind.next238 = add <4 x i64> %vec.ind236, splat (i64 -24)
  %i.hx = icmp eq i64 %index.next237, %n.vec228
  br i1 %i.hx, label %vec.epilog.middle.block239, label %vec.epilog.vector.body234, !llvm.loop !23

vec.epilog.middle.block239:                       ; preds = %vec.epilog.vector.body234
  %cmp.n240 = icmp eq i64 %i.eu, %n.vec228
  br i1 %cmp.n240, label %.loopexit, label %vec.epilog.scalar.ph224.preheader

vec.epilog.scalar.ph224.preheader:                ; preds = %iter.check223, %vec.epilog.iter.check225, %vec.epilog.middle.block239
  %.394.ph = phi i64 [ %.296, %iter.check223 ], [ %i.ew, %vec.epilog.iter.check225 ], [ %i.gk, %vec.epilog.middle.block239 ]
  %.36693.ph = phi i64 [ %i.ep, %iter.check223 ], [ %i.ey, %vec.epilog.iter.check225 ], [ %i.gm, %vec.epilog.middle.block239 ]
  br label %vec.epilog.scalar.ph224

vec.epilog.scalar.ph224:                          ; preds = %vec.epilog.scalar.ph224.preheader, %vec.epilog.scalar.ph224
  %.394 = phi i64 [ %i.je, %vec.epilog.scalar.ph224 ], [ %.394.ph, %vec.epilog.scalar.ph224.preheader ] ; 2 uses
  %.36693 = phi i64 [ %i.hy, %vec.epilog.scalar.ph224 ], [ %.36693.ph, %vec.epilog.scalar.ph224.preheader ]
  %i.hy = add i64 %.36693, -6                     ; 4 uses
  %i.hz = trunc i64 %i.hy to i32
  %i.ia = lshr i32 %i.eo, %i.hz
  %i.ib = and i32 %i.ia, 63                       ; 8 uses
  %i.ic = add nuw nsw i32 %i.ib, 65510
  %i.id = lshr i32 %i.ic, 8                       ; 2 uses
  %i.ie = add nuw nsw i32 %i.ib, 65
  %i.if = and i32 %i.id, %i.ie
  %i.ig = xor i32 %i.id, -1
  %i.ih = add nuw nsw i32 %i.ib, 65484
  %i.ii = lshr i32 %i.ih, 8                       ; 2 uses
  %i.ij = add nuw nsw i32 %i.ib, 71
  %i.ik = and i32 %i.ij, %i.ig
  %i.il = and i32 %i.ik, %i.ii
  %i.im = or i32 %i.il, %i.if
  %i.in = xor i32 %i.ii, -1
  %i.io = add nuw nsw i32 %i.ib, 65474
  %i.ip = lshr i32 %i.io, 8
  %i.iq = add nuw nsw i32 %i.ib, 252
  %i.ir = and i32 %i.ip, %i.iq
  %i.is = and i32 %i.ir, %i.in
  %i.it = xor i32 %i.ib, 16321
  %.neg.i77 = add nuw nsw i32 %i.it, 1
  %i.iu = lshr i32 %.neg.i77, 8
  %i.iv = and i32 %i.iu, 43
  %i.iw = xor i32 %i.iv, 43
  %.neg10.i78 = add nuw nsw i32 %i.ib, 16321
  %i.ix = lshr i32 %.neg10.i78, 8
  %i.iy = and i32 %i.ix, 47
  %i.iz = xor i32 %i.iy, 47
  %i.ja = or i32 %i.im, %i.iz
  %i.jb = or i32 %i.ja, %i.is
  %i.jc = or i32 %i.jb, %i.iw
  %i.jd = trunc i32 %i.jc to i8
  %i.je = add i64 %.394, 1                        ; 2 uses
  %i.jf = getelementptr i8, ptr %0, i64 %.394
  store i8 %i.jd, ptr %i.jf, align 1
  %i.jg = icmp ugt i64 %i.hy, 5
  br i1 %i.jg, label %vec.epilog.scalar.ph224, label %.loopexit, !llvm.loop !24

._crit_edge100:                                   ; preds = %.loopexit
  %.not72 = icmp eq i64 %.lcssa181, 0
  br i1 %.not72, label %bb.k, label %.sink.split

.sink.split:                                      ; preds = %._crit_edge100, %._crit_edge
  %.lcssa134.lcssa.sink = phi i64 [ %.lcssa184, %._crit_edge ], [ %.lcssa181, %._crit_edge100 ]
  %.lcssa135.sink = phi i32 [ %i.q, %._crit_edge ], [ %i.eo, %._crit_edge100 ]
  %.sink155 = phi i32 [ 45, %._crit_edge ], [ 43, %._crit_edge100 ]
  %.sink151 = phi i32 [ 32705, %._crit_edge ], [ 16321, %._crit_edge100 ]
  %.sink149 = phi i32 [ 95, %._crit_edge ], [ 47, %._crit_edge100 ]
  %.lcssa.lcssa.sink140 = phi i64 [ %.lcssa183, %._crit_edge ], [ %.lcssa, %._crit_edge100 ] ; 2 uses
  %i.jh = trunc nuw nsw i64 %.lcssa134.lcssa.sink to i32
  %i.ji = sub nuw nsw i32 6, %i.jh
  %i.jj = shl i32 %.lcssa135.sink, %i.ji
  %i.jk = and i32 %i.jj, 63                       ; 8 uses
  %i.jl = add nuw nsw i32 %i.jk, 65510
  %i.jm = lshr i32 %i.jl, 8                       ; 2 uses
  %i.jn = add nuw nsw i32 %i.jk, 65
  %i.jo = and i32 %i.jm, %i.jn
  %i.jp = xor i32 %i.jm, -1
  %i.jq = add nuw nsw i32 %i.jk, 65484
  %i.jr = lshr i32 %i.jq, 8                       ; 2 uses
  %i.js = add nuw nsw i32 %i.jk, 71
  %i.jt = and i32 %i.js, %i.jp
  %i.ju = and i32 %i.jt, %i.jr
  %i.jv = or i32 %i.ju, %i.jo
  %i.jw = xor i32 %i.jr, -1
  %i.jx = add nuw nsw i32 %i.jk, 65474
  %i.jy = lshr i32 %i.jx, 8
  %i.jz = add nuw nsw i32 %i.jk, 252
  %i.ka = and i32 %i.jy, %i.jz
  %i.kb = and i32 %i.ka, %i.jw
  %i.kc = xor i32 %i.jk, 16321
  %.neg.i79 = add nuw nsw i32 %i.kc, 1
  %i.kd = lshr i32 %.neg.i79, 8
  %i.ke = xor i32 %i.kd, -1
  %i.kf = and i32 %.sink155, %i.ke
  %.neg10.i80 = add nuw nsw i32 %i.jk, %.sink151
  %i.kg = lshr i32 %.neg10.i80, 8
  %i.kh = xor i32 %i.kg, -1
  %i.ki = and i32 %.sink149, %i.kh
  %i.kj = or i32 %i.jv, %i.ki
  %i.kk = or i32 %i.kj, %i.kb
  %i.kl = or i32 %i.kk, %i.kf
  %i.km = trunc i32 %i.kl to i8
  %i.kn = add i64 %.lcssa.lcssa.sink140, 1
  %i.ko = getelementptr i8, ptr %0, i64 %.lcssa.lcssa.sink140
  store i8 %i.km, ptr %i.ko, align 1
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %._crit_edge100, %._crit_edge
  %.4 = phi i64 [ %.lcssa, %._crit_edge100 ], [ %.lcssa183, %._crit_edge ], [ %i.kn, %.sink.split ] ; 2 uses
  %.not74 = icmp ugt i64 %.4, %.062
  br i1 %.not74, label %bb.l, label %.preheader81

.preheader81:                                     ; preds = %.preheader82, %.preheader84, %bb.k
  %.4133 = phi i64 [ %.4, %bb.k ], [ 0, %.preheader84 ], [ 0, %.preheader82 ] ; 4 uses
  %i.kp = icmp ult i64 %.4133, %.062
  br i1 %i.kp, label %.lr.ph105.preheader, label %.preheader

.lr.ph105.preheader:                              ; preds = %.preheader81
  %scevgep = getelementptr i8, ptr %0, i64 %.4133
  %i.kq = sub nuw i64 %.062, %.4133
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 61, i64 %i.kq, i1 false)
  br label %.preheader

bb.l:                                             ; preds = %bb.k
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 239, ptr noundef nonnull @__PRETTY_FUNCTION__.sodium_bin2base64) #13
  unreachable

.preheader:                                       ; preds = %.lr.ph105.preheader, %.preheader81
  %.5.lcssa = phi i64 [ %.4133, %.preheader81 ], [ %.062, %.lr.ph105.preheader ] ; 3 uses
  %scevgep116 = getelementptr i8, ptr %0, i64 %.5.lcssa
  %5 = add i64 %.5.lcssa, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %1, i64 %5)
  %i.kr = sub i64 %umax, %.5.lcssa
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep116, i8 0, i64 %i.kr, i1 false)
  ret ptr %0
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind ssp uwtable
define dso_local range(i32 -1, 1) i32 @sodium_base642bin(ptr nofree noundef nonnull writeonly captures(none) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %7, -7
  %.not.i = icmp eq i32 %i.a, 1
  br i1 %.not.i, label %sodium_base64_check_variant.exit.preheader, label %bb.g

sodium_base64_check_variant.exit.preheader:       ; preds = %bb.a
  %.not171 = icmp eq i64 %3, 0
  br i1 %.not171, label %.loopexit94.thread, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %sodium_base64_check_variant.exit.preheader
  %.not = icmp samesign ult i32 %7, 4
  %.not60 = icmp eq ptr %4, null                  ; 2 uses
  br i1 %.not, label %.lr.ph.us, label %.lr.ph

.lr.ph.us:                                        ; preds = %.lr.ph.lr.ph, %sodium_base64_check_variant.exit.outer.us
  %.043.ph139.us = phi i32 [ %i.bd, %sodium_base64_check_variant.exit.outer.us ], [ 0, %.lr.ph.lr.ph ] ; 4 uses
  %.046.ph138.us = phi i64 [ %.147.us, %sodium_base64_check_variant.exit.outer.us ], [ 0, %.lr.ph.lr.ph ] ; 8 uses
  %.049.ph137.us = phi i64 [ %.150.us, %sodium_base64_check_variant.exit.outer.us ], [ 0, %.lr.ph.lr.ph ] ; 6 uses
  %.082.ph136.us = phi i64 [ %i.bm, %sodium_base64_check_variant.exit.outer.us ], [ 0, %.lr.ph.lr.ph ] ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %sodium_base64_check_variant.exit.us.us, %.lr.ph.us
  %.082106.us.us = phi i64 [ %.082.ph136.us, %.lr.ph.us ], [ %i.ba, %sodium_base64_check_variant.exit.us.us ] ; 5 uses
  %i.b = getelementptr i8, ptr %2, i64 %.082106.us.us
  %i.c = load i8, ptr %i.b, align 1
  %i.d = sext i8 %i.c to i32                      ; 3 uses
  %i.e = and i32 %i.d, 255                        ; 6 uses
  %i.f = add nsw i32 %i.e, -65                    ; 2 uses
  %i.g = lshr i32 %i.f, 8
  %i.h = xor i32 %i.g, -1
  %i.i = sub nsw i32 90, %i.e
  %i.j = lshr i32 %i.i, 8
  %i.k = and i32 %i.j, 255
  %i.l = xor i32 %i.k, 255
  %i.m = and i32 %i.l, %i.h
  %i.n = and i32 %i.m, %i.f
  %i.o = insertelement <2 x i32> poison, i32 %i.e, i64 0
  %i.p = shufflevector <2 x i32> %i.o, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.q = add nuw nsw <2 x i32> %i.p, <i32 65439, i32 65488>
  %i.r = lshr <2 x i32> %i.q, splat (i32 8)
  %i.s = xor <2 x i32> %i.r, splat (i32 -1)
  %i.t = sub nsw <2 x i32> <i32 122, i32 57>, %i.p
  %i.u = lshr <2 x i32> %i.t, splat (i32 8)
  %i.v = and <2 x i32> %i.u, splat (i32 255)
  %i.w = xor <2 x i32> %i.v, splat (i32 255)
  %i.x = insertelement <2 x i32> poison, i32 %i.d, i64 0
  %i.y = shufflevector <2 x i32> %i.x, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.z = add nsw <2 x i32> %i.y, <i32 185, i32 4>
  %i.aa = and <2 x i32> %i.z, %i.s
  %i.ab = and <2 x i32> %i.aa, %i.w               ; 2 uses
  %i.ac = xor i32 %i.e, 16340
  %.neg.i70.us.us = add nuw nsw i32 %i.ac, 1
  %i.ad = lshr i32 %.neg.i70.us.us, 8
  %i.ae = and i32 %i.ad, 62
  %i.af = xor i32 %i.ae, 62
  %i.ag = xor i32 %i.e, 16336
  %.neg15.i71.us.us = add nuw nsw i32 %i.ag, 1
  %i.ah = lshr i32 %.neg15.i71.us.us, 8
  %i.ai = and i32 %i.ah, 63
  %i.aj = xor i32 %i.ai, 63
  %i.ak = or i32 %i.aj, %i.af
  %i.al = extractelement <2 x i32> %i.ab, i64 0
  %i.am = or i32 %i.ak, %i.al
  %i.an = extractelement <2 x i32> %i.ab, i64 1
  %i.ao = or i32 %i.am, %i.an
  %i.ap = or i32 %i.ao, %i.n                      ; 2 uses
  %i.aq = sub nsw i32 0, %i.ap
  %i.ar = lshr i32 %i.aq, 8
  %i.as = and i32 %i.ar, 255
  %i.at = xor i32 %i.as, 255
  %i.au = xor i32 %i.e, 65470
  %.neg16.i72.us.us = add nuw nsw i32 %i.au, 1
  %i.av = lshr i32 %.neg16.i72.us.us, 8
  %i.aw = and i32 %i.at, %i.av
  %i.ax = or i32 %i.aw, %i.ap                     ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 255
  br i1 %i.ay, label %bb.c, label %.split.us.us

bb.c:                                             ; preds = %bb.b
  br i1 %.not60, label %.loopexit94, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %i.d) #14
  %.not61.us.us = icmp eq ptr %i.az, null
  br i1 %.not61.us.us, label %.loopexit94, label %sodium_base64_check_variant.exit.us.us

sodium_base64_check_variant.exit.us.us:           ; preds = %bb.d
  %i.ba = add nuw i64 %.082106.us.us, 1           ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %3
  br i1 %i.bb, label %bb.b, label %.loopexit94.loopexit.split.loop.exit299, !llvm.loop !26

.split.us.us:                                     ; preds = %bb.b
  %i.bc = shl i32 %.043.ph139.us, 6
  %i.bd = add i32 %i.ax, %i.bc                    ; 4 uses
  %i.be = add nuw nsw i64 %.049.ph137.us, 6
  %i.bf = icmp ugt i64 %.049.ph137.us, 1
  br i1 %i.bf, label %bb.e, label %sodium_base64_check_variant.exit.outer.us

bb.e:                                             ; preds = %.split.us.us
  %i.bg = add nsw i64 %.049.ph137.us, -2          ; 3 uses
  %.not59.us = icmp ult i64 %.046.ph138.us, %1
  br i1 %.not59.us, label %bb.f, label %.split157.us

bb.f:                                             ; preds = %bb.e
  %i.bh = trunc nuw nsw i64 %i.bg to i32
  %i.bi = lshr i32 %i.bd, %i.bh
  %i.bj = trunc i32 %i.bi to i8
  %i.bk = add nuw i64 %.046.ph138.us, 1
  %i.bl = getelementptr i8, ptr %0, i64 %.046.ph138.us
  store i8 %i.bj, ptr %i.bl, align 1
  br label %sodium_base64_check_variant.exit.outer.us

sodium_base64_check_variant.exit.outer.us:        ; preds = %bb.f, %.split.us.us
  %.150.us = phi i64 [ %i.bg, %bb.f ], [ %i.be, %.split.us.us ] ; 2 uses
  %.147.us = phi i64 [ %i.bk, %bb.f ], [ %.046.ph138.us, %.split.us.us ] ; 2 uses
  %i.bm = add nuw i64 %.082106.us.us, 1           ; 3 uses
  %i.bn = icmp ult i64 %i.bm, %3
  br i1 %i.bn, label %.lr.ph.us, label %.loopexit94, !llvm.loop !26

bb.g:                                             ; preds = %bb.a
  tail call void @sodium_misuse() #13
  unreachable

bb.h:                                             ; preds = %.lr.ph, %sodium_base64_check_variant.exit
  %.082106 = phi i64 [ %.082.ph136, %.lr.ph ], [ %i.dn, %sodium_base64_check_variant.exit ] ; 5 uses
  %i.bo = getelementptr i8, ptr %2, i64 %.082106
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = sext i8 %i.bp to i32                    ; 3 uses
  %i.br = and i32 %i.bq, 255                      ; 6 uses
  %i.bs = add nsw i32 %i.br, -65                  ; 2 uses
  %i.bt = lshr i32 %i.bs, 8
  %i.bu = xor i32 %i.bt, -1
  %i.bv = sub nsw i32 90, %i.br
  %i.bw = lshr i32 %i.bv, 8
  %i.bx = and i32 %i.bw, 255
  %i.by = xor i32 %i.bx, 255
  %i.bz = and i32 %i.by, %i.bu
  %i.ca = and i32 %i.bz, %i.bs
  %i.cb = insertelement <2 x i32> poison, i32 %i.br, i64 0
  %i.cc = shufflevector <2 x i32> %i.cb, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cd = add nuw nsw <2 x i32> %i.cc, <i32 65439, i32 65488>
  %i.ce = lshr <2 x i32> %i.cd, splat (i32 8)
  %i.cf = xor <2 x i32> %i.ce, splat (i32 -1)
  %i.cg = sub nsw <2 x i32> <i32 122, i32 57>, %i.cc
  %i.ch = lshr <2 x i32> %i.cg, splat (i32 8)
  %i.ci = and <2 x i32> %i.ch, splat (i32 255)
  %i.cj = xor <2 x i32> %i.ci, splat (i32 255)
  %i.ck = insertelement <2 x i32> poison, i32 %i.bq, i64 0
  %i.cl = shufflevector <2 x i32> %i.ck, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.cm = add nsw <2 x i32> %i.cl, <i32 185, i32 4>
  %i.cn = and <2 x i32> %i.cm, %i.cf
  %i.co = and <2 x i32> %i.cn, %i.cj              ; 2 uses
  %i.cp = xor i32 %i.br, 16338
  %.neg.i = add nuw nsw i32 %i.cp, 1
  %i.cq = lshr i32 %.neg.i, 8
  %i.cr = and i32 %i.cq, 62
  %i.cs = xor i32 %i.cr, 62
  %i.ct = xor i32 %i.br, 16288
  %.neg15.i = add nuw nsw i32 %i.ct, 1
  %i.cu = lshr i32 %.neg15.i, 8
  %i.cv = and i32 %i.cu, 63
  %i.cw = xor i32 %i.cv, 63
  %i.cx = or i32 %i.cw, %i.cs
  %i.cy = extractelement <2 x i32> %i.co, i64 0
  %i.cz = or i32 %i.cx, %i.cy
  %i.da = extractelement <2 x i32> %i.co, i64 1
  %i.db = or i32 %i.cz, %i.da
  %i.dc = or i32 %i.db, %i.ca                     ; 2 uses
  %i.dd = sub nsw i32 0, %i.dc
  %i.de = lshr i32 %i.dd, 8
  %i.df = and i32 %i.de, 255
  %i.dg = xor i32 %i.df, 255
  %i.dh = xor i32 %i.br, 65470
  %.neg16.i = add nuw nsw i32 %i.dh, 1
  %i.di = lshr i32 %.neg16.i, 8
  %i.dj = and i32 %i.dg, %i.di
  %i.dk = or i32 %i.dj, %i.dc                     ; 2 uses
  %i.dl = icmp eq i32 %i.dk, 255
  br i1 %i.dl, label %bb.i, label %.split

bb.i:                                             ; preds = %bb.h
  br i1 %.not60, label %.loopexit94, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dm = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %i.bq) #14
  %.not61 = icmp eq ptr %i.dm, null
  br i1 %.not61, label %.loopexit94, label %sodium_base64_check_variant.exit

sodium_base64_check_variant.exit:                 ; preds = %bb.j
  %i.dn = add nuw i64 %.082106, 1                 ; 2 uses
  %i.do = icmp ult i64 %i.dn, %3
end_hunk_0
