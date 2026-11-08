Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/decode?download=true
inline.NumInlined: 20
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 18
begin_hunk_0_@ProcessCommands:bb.a
  %i.fn = load i64, ptr %i.do, align 8, !tbaa !54 ; 5 uses
  br i1 %i.fm, label %bb.n, label %bb.p, !prof !105

bb.n:                                             ; preds = %.lr.ph274
  %i.fo = icmp ult i64 %i.fn, 17
  %.pre364 = load i64, ptr %i.e, align 8, !tbaa !55 ; 2 uses
  br i1 %i.fo, label %bb.o, label %BrotliGet16BitsUnmasked.exit44

bb.o:                                             ; preds = %bb.n
  %i.fp = load ptr, ptr %i.j, align 8, !tbaa !49  ; 2 uses
  %.0.copyload.i.i43 = load i64, ptr %i.fp, align 1
  %i.fq = shl i64 %.0.copyload.i.i43, %i.fn
  %i.fr = or i64 %i.fq, %.pre364
  %i.fs = add nuw nsw i64 %i.fn, 48
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 6
  store ptr %i.ft, ptr %i.j, align 8, !tbaa !49
  br label %BrotliGet16BitsUnmasked.exit44

BrotliGet16BitsUnmasked.exit44:                   ; preds = %bb.n, %bb.o
  %i.fu = phi i64 [ %i.fn, %bb.n ], [ %i.fs, %bb.o ]
  %i.fv = phi i64 [ %.pre364, %bb.n ], [ %i.fr, %bb.o ] ; 2 uses
  %i.fw = and i64 %i.fv, 255
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.fw
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %.3271
  %i.fz = getelementptr [8 x i8], ptr @kBrotliBitMask, i64 %.3107272
  %i.ga = getelementptr i8, ptr %i.fz, i64 -64
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !36
  %i.gc = add i64 %i.fu, -8
  %i.gd = lshr i64 %i.fv, 8                       ; 2 uses
  %i.ge = and i64 %i.gb, %i.gd
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.ge ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 2, !tbaa !70
  %i.gh = zext i8 %i.gg to i64                    ; 2 uses
  %i.gi = sub i64 %i.gc, %i.gh                    ; 2 uses
  store i64 %i.gi, ptr %i.do, align 8, !tbaa !54
  %i.gj = lshr i64 %i.gd, %i.gh                   ; 2 uses
  store i64 %i.gj, ptr %i.e, align 8, !tbaa !55
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 2
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !71
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph274
  %i.gm = sub i64 %i.fn, %.3107272                ; 2 uses
  store i64 %i.gm, ptr %i.do, align 8, !tbaa !54
  %i.gn = load i64, ptr %i.e, align 8, !tbaa !55
  %i.go = lshr i64 %i.gn, %.3107272               ; 2 uses
  store i64 %i.go, ptr %i.e, align 8, !tbaa !55
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %BrotliGet16BitsUnmasked.exit44
  %i.gp = phi i64 [ %i.go, %bb.p ], [ %i.gj, %BrotliGet16BitsUnmasked.exit44 ] ; 2 uses
  %i.gq = phi i64 [ %i.gm, %bb.p ], [ %i.gi, %BrotliGet16BitsUnmasked.exit44 ] ; 3 uses
  %.0.i19 = phi i16 [ %.3.in269, %bb.p ], [ %i.gl, %BrotliGet16BitsUnmasked.exit44 ]
  %i.gr = icmp ult i64 %i.gq, 9
  br i1 %i.gr, label %bb.r, label %ReadPreloadedSymbol.exit

bb.r:                                             ; preds = %bb.q
  %i.gs = load ptr, ptr %i.j, align 8, !tbaa !49  ; 2 uses
  %.0.copyload.i.i.i20 = load i64, ptr %i.gs, align 1
  %i.gt = shl i64 %.0.copyload.i.i.i20, %i.gq
  %i.gu = or i64 %i.gt, %i.gp                     ; 2 uses
  store i64 %i.gu, ptr %i.e, align 8, !tbaa !55
  %i.gv = add nuw nsw i64 %i.gq, 56
  store i64 %i.gv, ptr %i.do, align 8, !tbaa !54
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 7
  store ptr %i.gw, ptr %i.j, align 8, !tbaa !49
  br label %ReadPreloadedSymbol.exit

ReadPreloadedSymbol.exit:                         ; preds = %bb.q, %bb.r
  %i.gx = phi i64 [ %i.gp, %bb.q ], [ %i.gu, %bb.r ]
  %i.gy = and i64 %i.gx, 255
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.gy ; 2 uses
  %i.ha = load i8, ptr %i.gz, align 2, !tbaa !70  ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 2
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !71 ; 2 uses
  %i.hd = trunc i16 %.0.i19 to i8
  %i.he = getelementptr inbounds i8, ptr %i.es, i64 %indvars.iv
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !53
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %.3 = zext i16 %i.hc to i64                     ; 2 uses
  %.3107 = zext i8 %i.ha to i64                   ; 2 uses
  %i.hf = icmp slt i64 %indvars.iv.next, %i.fe
  br i1 %i.hf, label %.lr.ph274, label %.preheader234.loopexit, !llvm.loop !166

.lr.ph281:                                        ; preds = %.lr.ph281.preheader, %ReadPreloadedSymbol.exit27
  %indvars.iv343 = phi i64 [ %i.fl, %.lr.ph281.preheader ], [ %indvars.iv.next344, %ReadPreloadedSymbol.exit27 ] ; 2 uses
  %i.hg = phi ptr [ %i.fh, %.lr.ph281.preheader ], [ %i.je, %ReadPreloadedSymbol.exit27 ] ; 4 uses
  %.0.i15280 = phi i32 [ %spec.store.select.i12, %.lr.ph281.preheader ], [ %i.jd, %ReadPreloadedSymbol.exit27 ]
  %.4278 = phi i64 [ %.3.lcssa, %.lr.ph281.preheader ], [ %i.ja, %ReadPreloadedSymbol.exit27 ] ; 2 uses
  %.4108277 = phi i64 [ %.3107.lcssa, %.lr.ph281.preheader ], [ %i.ix, %ReadPreloadedSymbol.exit27 ] ; 4 uses
  %i.hh = icmp samesign ugt i64 %.4108277, 8
  %i.hi = load i64, ptr %i.do, align 8, !tbaa !54 ; 5 uses
  br i1 %i.hh, label %bb.s, label %bb.u, !prof !105

bb.s:                                             ; preds = %.lr.ph281
  %i.hj = icmp ult i64 %i.hi, 17
  %.pre367.a = load i64, ptr %i.e, align 8, !tbaa !55 ; 2 uses
  br i1 %i.hj, label %bb.t, label %BrotliGet16BitsUnmasked.exit42

bb.t:                                             ; preds = %bb.s
  %.0.copyload.i.i41 = load i64, ptr %i.hg, align 1
  %i.hk = shl i64 %.0.copyload.i.i41, %i.hi
  %i.hl = or i64 %i.hk, %.pre367.a
  %i.hm = add nuw nsw i64 %i.hi, 48
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hg, i64 6 ; 2 uses
  store ptr %i.hn, ptr %i.j, align 8, !tbaa !49
  br label %BrotliGet16BitsUnmasked.exit42

BrotliGet16BitsUnmasked.exit42:                   ; preds = %bb.s, %bb.t
  %i.ho = phi ptr [ %i.hg, %bb.s ], [ %i.hn, %bb.t ]
  %i.hp = phi i64 [ %i.hi, %bb.s ], [ %i.hm, %bb.t ]
  %i.hq = phi i64 [ %.pre367.a, %bb.s ], [ %i.hl, %bb.t ] ; 2 uses
  %i.hr = and i64 %i.hq, 255
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.hr
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %.4278
  %i.hu = getelementptr [8 x i8], ptr @kBrotliBitMask, i64 %.4108277
  %i.hv = getelementptr i8, ptr %i.hu, i64 -64
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !36
  %i.hx = add i64 %i.hp, -8
  %i.hy = lshr i64 %i.hq, 8                       ; 2 uses
  %i.hz = and i64 %i.hw, %i.hy
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hz ; 2 uses
  %i.ib = load i8, ptr %i.ia, align 2, !tbaa !70
  %i.ic = zext i8 %i.ib to i64                    ; 2 uses
  %i.id = sub i64 %i.hx, %i.ic                    ; 2 uses
  store i64 %i.id, ptr %i.do, align 8, !tbaa !54
  %i.ie = lshr i64 %i.hy, %i.ic                   ; 2 uses
  store i64 %i.ie, ptr %i.e, align 8, !tbaa !55
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 2
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !71
  %i.ih = zext i16 %i.ig to i64
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph281
  %i.ii = sub i64 %i.hi, %.4108277                ; 2 uses
  store i64 %i.ii, ptr %i.do, align 8, !tbaa !54
  %i.ij = load i64, ptr %i.e, align 8, !tbaa !55
  %i.ik = lshr i64 %i.ij, %.4108277               ; 2 uses
  store i64 %i.ik, ptr %i.e, align 8, !tbaa !55
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %BrotliGet16BitsUnmasked.exit42
  %i.il = phi ptr [ %i.hg, %bb.u ], [ %i.ho, %BrotliGet16BitsUnmasked.exit42 ] ; 2 uses
  %i.im = phi i64 [ %i.ik, %bb.u ], [ %i.ie, %BrotliGet16BitsUnmasked.exit42 ] ; 2 uses
  %i.in = phi i64 [ %i.ii, %bb.u ], [ %i.id, %BrotliGet16BitsUnmasked.exit42 ] ; 3 uses
  %.0.i23 = phi i64 [ %.4278, %bb.u ], [ %i.ih, %BrotliGet16BitsUnmasked.exit42 ]
  %i.io = icmp ult i64 %i.in, 9
  br i1 %i.io, label %bb.w, label %ReadPreloadedSymbol.exit27

bb.w:                                             ; preds = %bb.v
  %.0.copyload.i.i.i24 = load i64, ptr %i.il, align 1
  %i.ip = shl i64 %.0.copyload.i.i.i24, %i.in
  %i.iq = or i64 %i.ip, %i.im                     ; 2 uses
  store i64 %i.iq, ptr %i.e, align 8, !tbaa !55
  %i.ir = add nuw nsw i64 %i.in, 56
  store i64 %i.ir, ptr %i.do, align 8, !tbaa !54
  %i.is = getelementptr inbounds nuw i8, ptr %i.il, i64 7
  store ptr %i.is, ptr %i.j, align 8, !tbaa !49
  br label %ReadPreloadedSymbol.exit27

ReadPreloadedSymbol.exit27:                       ; preds = %bb.v, %bb.w
  %i.it = phi i64 [ %i.im, %bb.v ], [ %i.iq, %bb.w ]
  %i.iu = and i64 %i.it, 255
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.iu ; 2 uses
  %i.iw = load i8, ptr %i.iv, align 2, !tbaa !70
  %i.ix = zext i8 %i.iw to i64                    ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 2
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !71
  %i.ja = zext i16 %i.iz to i64                   ; 2 uses
  %i.jb = trunc i64 %.0.i23 to i8
  %i.jc = getelementptr inbounds i8, ptr %i.es, i64 %indvars.iv343
  store i8 %i.jb, ptr %i.jc, align 1, !tbaa !53
  %indvars.iv.next344 = add nsw i64 %indvars.iv343, 1
  %i.jd = add nuw nsw i32 %.0.i15280, 1           ; 4 uses
  %i.je = load ptr, ptr %i.j, align 8, !tbaa !49  ; 2 uses
  %i.jf = load ptr, ptr %i.l, align 8, !tbaa !51
  %i.jg = icmp ult ptr %i.je, %i.jf
  %i.jh = icmp sgt i32 %.1355.i, %i.jd
  %i.ji = select i1 %i.jg, i1 %i.jh, i1 false
  br i1 %i.ji, label %.lr.ph281, label %BrotliCopyPreloadedSymbolsToU8.exit16.loopexit, !llvm.loop !167

BrotliCopyPreloadedSymbolsToU8.exit16.loopexit:   ; preds = %ReadPreloadedSymbol.exit27
  %.pre378 = add i32 %i.jd, %.1376.i
  br label %BrotliCopyPreloadedSymbolsToU8.exit16

BrotliCopyPreloadedSymbolsToU8.exit16:            ; preds = %BrotliCopyPreloadedSymbolsToU8.exit16.loopexit, %.preheader234
  %.pre-phi = phi i32 [ %.pre378, %BrotliCopyPreloadedSymbolsToU8.exit16.loopexit ], [ %i.fc, %.preheader234 ]
  %.4108.lcssa = phi i64 [ %i.ix, %BrotliCopyPreloadedSymbolsToU8.exit16.loopexit ], [ %.3107.lcssa, %.preheader234 ]
  %.4.lcssa = phi i64 [ %i.ja, %BrotliCopyPreloadedSymbolsToU8.exit16.loopexit ], [ %.3.lcssa, %.preheader234 ]
  %.0.i15.lcssa = phi i32 [ %i.jd, %BrotliCopyPreloadedSymbolsToU8.exit16.loopexit ], [ %spec.store.select.i12, %.preheader234 ] ; 2 uses
  %i.jj = zext nneg i32 %.0.i15.lcssa to i64
  %i.jk = load i64, ptr %i.dp, align 8, !tbaa !36
  %i.jl = sub i64 %i.jk, %i.jj                    ; 2 uses
  store i64 %i.jl, ptr %i.dp, align 8, !tbaa !36
  %i.jm = sub nsw i32 %.4113, %.0.i15.lcssa
  %i.jn = sext i32 %.pre-phi to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.am, %BrotliCopyPreloadedSymbolsToU8.exit16
  %i.jo = phi i64 [ %i.ob, %bb.am ], [ %i.jl, %BrotliCopyPreloadedSymbolsToU8.exit16 ]
  %indvars.iv346.a = phi i64 [ %indvars.iv.next347, %bb.am ], [ %i.jn, %BrotliCopyPreloadedSymbolsToU8.exit16 ] ; 4 uses
  %.5 = phi i32 [ %i.oe, %bb.am ], [ %i.jm, %BrotliCopyPreloadedSymbolsToU8.exit16 ] ; 4 uses
  %.0104 = phi i64 [ %.2106.lcssa, %bb.am ], [ %.4108.lcssa, %BrotliCopyPreloadedSymbolsToU8.exit16 ] ; 2 uses
  %.0 = phi i64 [ %.2.lcssa, %bb.am ], [ %.4.lcssa, %BrotliCopyPreloadedSymbolsToU8.exit16 ] ; 2 uses
  %indvars351 = trunc i64 %indvars.iv346.a to i32 ; 3 uses
  %i.jp = load ptr, ptr %i.j, align 8, !tbaa !49  ; 3 uses
  %i.jq = load ptr, ptr %i.l, align 8, !tbaa !51  ; 3 uses
  %.not226 = icmp ult ptr %i.jp, %i.jq
  br i1 %.not226, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 8, ptr %0, align 8, !tbaa !27
  br label %.thread131

bb.z:                                             ; preds = %bb.x
  %i.jr = icmp eq i64 %i.jo, 0
  br i1 %i.jr, label %.loopexit231, label %bb.aa, !prof !105

bb.aa:                                            ; preds = %bb.z
  %i.js = load ptr, ptr %i.dn, align 8, !tbaa !83 ; 4 uses
  %i.jt = load ptr, ptr %i.dr, align 8, !tbaa !52 ; 2 uses
  %i.ju = ptrtoint ptr %i.jq to i64
  %i.jv = ptrtoint ptr %i.jp to i64
  %i.jw = sub i64 %i.ju, %i.jv                    ; 2 uses
  %i.jx = shl nsw i64 %i.jw, 3
  %i.jy = sdiv i64 %i.jx, 15
  %.not.i5 = icmp sgt i64 %i.jw, 11
  %i.jz = trunc i64 %i.jy to i32
  %i.ka = add i32 %i.jz, -4
  %i.kb = tail call i32 @llvm.smax.i32(i32 %i.ka, i32 0)
  %spec.store.select.i7 = select i1 %.not.i5, i32 1, i32 %i.kb ; 2 uses
  %.not302 = icmp eq i32 %spec.store.select.i7, 0 ; 2 uses
  br i1 %.not302, label %.preheader, label %.lr.ph289.preheader

.lr.ph289.preheader:                              ; preds = %bb.aa
  %1 = add nsw i32 %spec.store.select.i7, %indvars351
  %2 = sext i32 %1 to i64
  br label %.lr.ph289

.preheader.loopexit:                              ; preds = %ReadPreloadedSymbol.exit32
  %.pre369.a = load ptr, ptr %i.j, align 8, !tbaa !49
  %.pre370.a = load ptr, ptr %i.l, align 8, !tbaa !51
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.aa
  %i.kc = phi ptr [ %i.jq, %bb.aa ], [ %.pre370.a, %.preheader.loopexit ]
  %i.kd = phi ptr [ %i.jp, %bb.aa ], [ %.pre369.a, %.preheader.loopexit ] ; 5 uses
  %.1105.lcssa = phi i64 [ %.0104, %bb.aa ], [ %i.lw, %.preheader.loopexit ] ; 5 uses
  %.1.lcssa = phi i64 [ %.0, %bb.aa ], [ %i.lz, %.preheader.loopexit ] ; 3 uses
  %.033.i.lcssa = phi i64 [ %indvars.iv346.a, %bb.aa ], [ %indvars.iv.next349, %.preheader.loopexit ]
  %i.ke = icmp ult ptr %i.kd, %i.kc
  %i.kf = and i1 %i.ke, %.not302
  br i1 %i.kf, label %.lr.ph296, label %BrotliCopyPreloadedSymbolsToU8.exit

.lr.ph289:                                        ; preds = %.lr.ph289.preheader, %ReadPreloadedSymbol.exit32
  %indvars.iv348 = phi i64 [ %indvars.iv346.a, %.lr.ph289.preheader ], [ %indvars.iv.next349, %ReadPreloadedSymbol.exit32 ] ; 2 uses
  %.1286 = phi i64 [ %.0, %.lr.ph289.preheader ], [ %i.lz, %ReadPreloadedSymbol.exit32 ] ; 2 uses
  %.1105285 = phi i64 [ %.0104, %.lr.ph289.preheader ], [ %i.lw, %ReadPreloadedSymbol.exit32 ] ; 4 uses
  %i.kg = icmp ugt i64 %.1105285, 8
  %i.kh = load i64, ptr %i.do, align 8, !tbaa !54 ; 5 uses
  br i1 %i.kg, label %bb.ab, label %bb.ad, !prof !105

bb.ab:                                            ; preds = %.lr.ph289
  %i.ki = icmp ult i64 %i.kh, 17
  %.pre368 = load i64, ptr %i.e, align 8, !tbaa !55 ; 2 uses
  br i1 %i.ki, label %bb.ac, label %BrotliGet16BitsUnmasked.exit40

bb.ac:                                            ; preds = %bb.ab
  %i.kj = load ptr, ptr %i.j, align 8, !tbaa !49  ; 2 uses
  %.0.copyload.i.i39 = load i64, ptr %i.kj, align 1
  %i.kk = shl i64 %.0.copyload.i.i39, %i.kh
  %i.kl = or i64 %i.kk, %.pre368
  %i.km = add nuw nsw i64 %i.kh, 48
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 6
  store ptr %i.kn, ptr %i.j, align 8, !tbaa !49
  br label %BrotliGet16BitsUnmasked.exit40

BrotliGet16BitsUnmasked.exit40:                   ; preds = %bb.ab, %bb.ac
  %i.ko = phi i64 [ %i.kh, %bb.ab ], [ %i.km, %bb.ac ]
  %i.kp = phi i64 [ %.pre368, %bb.ab ], [ %i.kl, %bb.ac ] ; 2 uses
  %i.kq = and i64 %i.kp, 255
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.kq
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %.1286
  %i.kt = getelementptr [8 x i8], ptr @kBrotliBitMask, i64 %.1105285
  %i.ku = getelementptr i8, ptr %i.kt, i64 -64
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !36
  %i.kw = add i64 %i.ko, -8
  %i.kx = lshr i64 %i.kp, 8                       ; 2 uses
  %i.ky = and i64 %i.kv, %i.kx
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %i.ky ; 2 uses
  %i.la = load i8, ptr %i.kz, align 2, !tbaa !70
  %i.lb = zext i8 %i.la to i64                    ; 2 uses
  %i.lc = sub i64 %i.kw, %i.lb                    ; 2 uses
  store i64 %i.lc, ptr %i.do, align 8, !tbaa !54
  %i.ld = lshr i64 %i.kx, %i.lb                   ; 2 uses
  store i64 %i.ld, ptr %i.e, align 8, !tbaa !55
  %i.le = getelementptr inbounds nuw i8, ptr %i.kz, i64 2
  %i.lf = load i16, ptr %i.le, align 2, !tbaa !71
  %i.lg = zext i16 %i.lf to i64
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph289
  %i.lh = sub i64 %i.kh, %.1105285                ; 2 uses
  store i64 %i.lh, ptr %i.do, align 8, !tbaa !54
  %i.li = load i64, ptr %i.e, align 8, !tbaa !55
  %i.lj = lshr i64 %i.li, %.1105285               ; 2 uses
  store i64 %i.lj, ptr %i.e, align 8, !tbaa !55
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %BrotliGet16BitsUnmasked.exit40
  %i.lk = phi i64 [ %i.lj, %bb.ad ], [ %i.ld, %BrotliGet16BitsUnmasked.exit40 ] ; 2 uses
  %i.ll = phi i64 [ %i.lh, %bb.ad ], [ %i.lc, %BrotliGet16BitsUnmasked.exit40 ] ; 3 uses
  %.0.i28 = phi i64 [ %.1286, %bb.ad ], [ %i.lg, %BrotliGet16BitsUnmasked.exit40 ]
  %i.lm = icmp ult i64 %i.ll, 9
  br i1 %i.lm, label %bb.af, label %ReadPreloadedSymbol.exit32

bb.af:                                            ; preds = %bb.ae
  %i.ln = load ptr, ptr %i.j, align 8, !tbaa !49  ; 2 uses
  %.0.copyload.i.i.i29 = load i64, ptr %i.ln, align 1
  %i.lo = shl i64 %.0.copyload.i.i.i29, %i.ll
  %i.lp = or i64 %i.lo, %i.lk                     ; 2 uses
  store i64 %i.lp, ptr %i.e, align 8, !tbaa !55
  %i.lq = add nuw nsw i64 %i.ll, 56
  store i64 %i.lq, ptr %i.do, align 8, !tbaa !54
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ln, i64 7
  store ptr %i.lr, ptr %i.j, align 8, !tbaa !49
  br label %ReadPreloadedSymbol.exit32

ReadPreloadedSymbol.exit32:                       ; preds = %bb.ae, %bb.af
  %i.ls = phi i64 [ %i.lk, %bb.ae ], [ %i.lp, %bb.af ]
  %i.lt = and i64 %i.ls, 255
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.lt ; 2 uses
  %i.lv = load i8, ptr %i.lu, align 2, !tbaa !70
  %i.lw = zext i8 %i.lv to i64                    ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 2
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !71
  %i.lz = zext i16 %i.ly to i64                   ; 2 uses
  %i.ma = trunc i64 %.0.i28 to i8
  %i.mb = getelementptr inbounds i8, ptr %i.jt, i64 %indvars.iv348
  store i8 %i.ma, ptr %i.mb, align 1, !tbaa !53
  %indvars.iv.next349 = add nsw i64 %indvars.iv348, 1 ; 3 uses
  %i.mc = icmp slt i64 %indvars.iv.next349, %2
  br i1 %i.mc, label %.lr.ph289, label %.preheader.loopexit, !llvm.loop !166

.lr.ph296:                                        ; preds = %.preheader
  %i.md = icmp ugt i64 %.1105.lcssa, 8
  %i.me = load i64, ptr %i.do, align 8, !tbaa !54 ; 5 uses
  br i1 %i.md, label %bb.ag, label %bb.ai, !prof !105

bb.ag:                                            ; preds = %.lr.ph296
  %i.mf = icmp ult i64 %i.me, 17
  %.pre371.a = load i64, ptr %i.e, align 8, !tbaa !55 ; 2 uses
  br i1 %i.mf, label %bb.ah, label %BrotliGet16BitsUnmasked.exit

bb.ah:                                            ; preds = %bb.ag
  %.0.copyload.i.i38 = load i64, ptr %i.kd, align 1
  %i.mg = shl i64 %.0.copyload.i.i38, %i.me
  %i.mh = or i64 %i.mg, %.pre371.a
  %i.mi = add nuw nsw i64 %i.me, 48
  %i.mj = getelementptr inbounds nuw i8, ptr %i.kd, i64 6 ; 2 uses
  store ptr %i.mj, ptr %i.j, align 8, !tbaa !49
  br label %BrotliGet16BitsUnmasked.exit

BrotliGet16BitsUnmasked.exit:                     ; preds = %bb.ag, %bb.ah
  %i.mk = phi ptr [ %i.kd, %bb.ag ], [ %i.mj, %bb.ah ]
  %i.ml = phi i64 [ %i.me, %bb.ag ], [ %i.mi, %bb.ah ]
  %i.mm = phi i64 [ %.pre371.a, %bb.ag ], [ %i.mh, %bb.ah ] ; 2 uses
  %i.mn = and i64 %i.mm, 255
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.mn
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %.1.lcssa
  %i.mq = getelementptr [8 x i8], ptr @kBrotliBitMask, i64 %.1105.lcssa
  %i.mr = getelementptr i8, ptr %i.mq, i64 -64
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !36
  %i.mt = add i64 %i.ml, -8
  %i.mu = lshr i64 %i.mm, 8                       ; 2 uses
  %i.mv = and i64 %i.ms, %i.mu
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.mv ; 2 uses
  %i.mx = load i8, ptr %i.mw, align 2, !tbaa !70
  %i.my = zext i8 %i.mx to i64                    ; 2 uses
  %i.mz = sub i64 %i.mt, %i.my                    ; 2 uses
  store i64 %i.mz, ptr %i.do, align 8, !tbaa !54
  %i.na = lshr i64 %i.mu, %i.my                   ; 2 uses
  store i64 %i.na, ptr %i.e, align 8, !tbaa !55
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mw, i64 2
  %i.nc = load i16, ptr %i.nb, align 2, !tbaa !71
  %i.nd = zext i16 %i.nc to i64
  br label %bb.aj

bb.ai:                                            ; preds = %.lr.ph296
  %i.ne = sub i64 %i.me, %.1105.lcssa             ; 2 uses
  store i64 %i.ne, ptr %i.do, align 8, !tbaa !54
  %i.nf = load i64, ptr %i.e, align 8, !tbaa !55
  %i.ng = lshr i64 %i.nf, %.1105.lcssa            ; 2 uses
  store i64 %i.ng, ptr %i.e, align 8, !tbaa !55
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %BrotliGet16BitsUnmasked.exit
  %i.nh = phi ptr [ %i.kd, %bb.ai ], [ %i.mk, %BrotliGet16BitsUnmasked.exit ] ; 2 uses
  %i.ni = phi i64 [ %i.ng, %bb.ai ], [ %i.na, %BrotliGet16BitsUnmasked.exit ] ; 2 uses
  %i.nj = phi i64 [ %i.ne, %bb.ai ], [ %i.mz, %BrotliGet16BitsUnmasked.exit ] ; 3 uses
  %.0.i33 = phi i64 [ %.1.lcssa, %bb.ai ], [ %i.nd, %BrotliGet16BitsUnmasked.exit ]
  %i.nk = icmp ult i64 %i.nj, 9
  br i1 %i.nk, label %bb.ak, label %ReadPreloadedSymbol.exit37

bb.ak:                                            ; preds = %bb.aj
  %.0.copyload.i.i.i34 = load i64, ptr %i.nh, align 1
  %i.nl = shl i64 %.0.copyload.i.i.i34, %i.nj
  %i.nm = or i64 %i.nl, %i.ni                     ; 2 uses
  store i64 %i.nm, ptr %i.e, align 8, !tbaa !55
  %i.nn = add nuw nsw i64 %i.nj, 56
  store i64 %i.nn, ptr %i.do, align 8, !tbaa !54
  %i.no = getelementptr inbounds nuw i8, ptr %i.nh, i64 7
  store ptr %i.no, ptr %i.j, align 8, !tbaa !49
  br label %ReadPreloadedSymbol.exit37

ReadPreloadedSymbol.exit37:                       ; preds = %bb.aj, %bb.ak
  %i.np = phi i64 [ %i.ni, %bb.aj ], [ %i.nm, %bb.ak ]
  %i.nq = and i64 %i.np, 255
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.nq ; 2 uses
  %i.ns = load i8, ptr %i.nr, align 2, !tbaa !70
  %i.nt = zext i8 %i.ns to i64
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nr, i64 2
  %i.nv = load i16, ptr %i.nu, align 2, !tbaa !71
  %i.nw = zext i16 %i.nv to i64
  %i.nx = trunc i64 %.0.i33 to i8
  %sext = shl i64 %.033.i.lcssa, 32
  %i.ny = ashr exact i64 %sext, 32
  %i.nz = getelementptr inbounds i8, ptr %i.jt, i64 %i.ny
  store i8 %i.nx, ptr %i.nz, align 1, !tbaa !53
  br label %BrotliCopyPreloadedSymbolsToU8.exit

BrotliCopyPreloadedSymbolsToU8.exit:              ; preds = %ReadPreloadedSymbol.exit37, %.preheader
  %.2106.lcssa = phi i64 [ %i.nt, %ReadPreloadedSymbol.exit37 ], [ %.1105.lcssa, %.preheader ]
  %.2.lcssa = phi i64 [ %i.nw, %ReadPreloadedSymbol.exit37 ], [ %.1.lcssa, %.preheader ]
  %i.oa = load i64, ptr %i.dp, align 8, !tbaa !36
  %i.ob = add i64 %i.oa, -1                       ; 2 uses
  store i64 %i.ob, ptr %i.dp, align 8, !tbaa !36
  %indvars.iv.next347 = add nsw i64 %indvars.iv346.a, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next347 to i32 ; 3 uses
  %3 = load i32, ptr %i.dq, align 4, !tbaa !90
  %i.oc = icmp eq i32 %3, %indvars
  br i1 %i.oc, label %bb.al, label %bb.am, !prof !105

bb.al:                                            ; preds = %BrotliCopyPreloadedSymbolsToU8.exit
  store i32 13, ptr %0, align 8, !tbaa !27
  %i.od = add nsw i32 %.5, -1
  br label %.thread131

bb.am:                                            ; preds = %BrotliCopyPreloadedSymbolsToU8.exit
  %i.oe = add nsw i32 %.5, -1                     ; 2 uses
  %.not446.i = icmp eq i32 %i.oe, 0
  br i1 %.not446.i, label %.thread126, label %bb.x, !llvm.loop !168

bb.an:                                            ; preds = %bb.i
  %i.of = load ptr, ptr %i.dr, align 8, !tbaa !52 ; 2 uses
  %i.og = add nsw i32 %.1376.i, -1
  %i.oh = load i32, ptr %i.ds, align 8, !tbaa !95 ; 2 uses
  %i.oi = and i32 %i.oh, %i.og
  %i.oj = sext i32 %i.oi to i64
  %i.ok = getelementptr inbounds i8, ptr %i.of, i64 %i.oj
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !53
  %i.om = add nsw i32 %.1376.i, -2
  %i.on = and i32 %i.oh, %i.om
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds i8, ptr %i.of, i64 %i.oo
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !53
  %i.or = sext i32 %.1376.i to i64
  br label %bb.ao

bb.ao:                                            ; preds = %bb.au, %bb.an
  %indvars.iv352 = phi i64 [ %indvars.iv.next353, %bb.au ], [ %i.or, %bb.an ] ; 4 uses
  %.9 = phi i32 [ %i.rd, %bb.au ], [ %.4113, %bb.an ] ; 4 uses
  %.0350.i = phi i8 [ %i.qu, %bb.au ], [ %i.ol, %bb.an ] ; 2 uses
  %.0348.i = phi i8 [ %.0350.i, %bb.au ], [ %i.oq, %bb.an ]
  %i.os = load ptr, ptr %i.j, align 8, !tbaa !49  ; 3 uses
  %i.ot = load ptr, ptr %i.l, align 8, !tbaa !51
  %.not227 = icmp ult ptr %i.os, %i.ot
  br i1 %.not227, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ou = trunc nsw i64 %indvars.iv352 to i32
  store i32 8, ptr %0, align 8, !tbaa !27
  br label %.thread131

bb.aq:                                            ; preds = %bb.ao
  %i.ov = load i64, ptr %i.dp, align 8, !tbaa !36
  %i.ow = icmp eq i64 %i.ov, 0
  br i1 %i.ow, label %.loopexit231.loopexit, label %bb.ar, !prof !105

bb.ar:                                            ; preds = %bb.aq
  %i.ox = load ptr, ptr %i.dt, align 8, !tbaa !84 ; 2 uses
  %i.oy = zext i8 %.0350.i to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.oy
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !53
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ox, i64 256
  %i.pc = zext i8 %.0348.i to i64
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.pc
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !53
  %i.pf = or i8 %i.pe, %i.pa
  %i.pg = load ptr, ptr %i.du, align 8, !tbaa !82
  %i.ph = load ptr, ptr %i.dv, align 8, !tbaa !80
  %i.pi = zext i8 %i.pf to i64
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.pi
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !53
  %i.pl = zext i8 %i.pk to i64
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %i.pl
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !79
  %i.po = load i64, ptr %i.do, align 8, !tbaa !54 ; 4 uses
  %i.pp = icmp ult i64 %i.po, 17
  %.pre372.a = load i64, ptr %i.e, align 8, !tbaa !55 ; 2 uses
  br i1 %i.pp, label %bb.as, label %BrotliGet16BitsUnmasked.exit48

bb.as:                                            ; preds = %bb.ar
  %.0.copyload.i.i47 = load i64, ptr %i.os, align 1
  %i.pq = shl i64 %.0.copyload.i.i47, %i.po
  %i.pr = or i64 %i.pq, %.pre372.a
  %i.ps = add nuw nsw i64 %i.po, 48
  %i.pt = getelementptr inbounds nuw i8, ptr %i.os, i64 6
  store ptr %i.pt, ptr %i.j, align 8, !tbaa !49
  br label %BrotliGet16BitsUnmasked.exit48

BrotliGet16BitsUnmasked.exit48:                   ; preds = %bb.ar, %bb.as
  %i.pu = phi i64 [ %i.po, %bb.ar ], [ %i.ps, %bb.as ] ; 2 uses
  %i.pv = phi i64 [ %.pre372.a, %bb.ar ], [ %i.pr, %bb.as ] ; 3 uses
  %i.pw = and i64 %i.pv, 255
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %i.pw ; 4 uses
  %i.py = load i8, ptr %i.px, align 2, !tbaa !70  ; 3 uses
  %i.pz = icmp ugt i8 %i.py, 8
  br i1 %i.pz, label %BitMask.exit.i.i, label %ReadSymbol.exit

BitMask.exit.i.i:                                 ; preds = %BrotliGet16BitsUnmasked.exit48
  %i.qa = add i64 %i.pu, -8
  %i.qb = lshr i64 %i.pv, 8                       ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.px, i64 2
  %i.qd = load i16, ptr %i.qc, align 2, !tbaa !71
  %i.qe = zext i16 %i.qd to i64
  %i.qf = zext i8 %i.py to i64
  %i.qg = getelementptr [8 x i8], ptr @kBrotliBitMask, i64 %i.qf
  %i.qh = getelementptr i8, ptr %i.qg, i64 -64
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !36
  %i.qj = and i64 %i.qi, %i.qb
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.px, i64 %i.qj
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.qk, i64 %i.qe ; 2 uses
  %.pre373.a = load i8, ptr %i.ql, align 2, !tbaa !70
  br label %ReadSymbol.exit

ReadSymbol.exit:                                  ; preds = %BrotliGet16BitsUnmasked.exit48, %BitMask.exit.i.i
  %i.qm = phi i64 [ %i.qb, %BitMask.exit.i.i ], [ %i.pv, %BrotliGet16BitsUnmasked.exit48 ]
  %i.qn = phi i64 [ %i.qa, %BitMask.exit.i.i ], [ %i.pu, %BrotliGet16BitsUnmasked.exit48 ]
  %i.qo = phi i8 [ %.pre373.a, %BitMask.exit.i.i ], [ %i.py, %BrotliGet16BitsUnmasked.exit48 ]
  %.0.i.i17 = phi ptr [ %i.ql, %BitMask.exit.i.i ], [ %i.px, %BrotliGet16BitsUnmasked.exit48 ]
  %i.qp = zext i8 %i.qo to i64                    ; 2 uses
  %i.qq = sub i64 %i.qn, %i.qp
  store i64 %i.qq, ptr %i.do, align 8, !tbaa !54
  %i.qr = lshr i64 %i.qm, %i.qp
  store i64 %i.qr, ptr %i.e, align 8, !tbaa !55
  %i.qs = getelementptr inbounds nuw i8, ptr %.0.i.i17, i64 2
  %i.qt = load i16, ptr %i.qs, align 2, !tbaa !71
  %i.qu = trunc i16 %i.qt to i8                   ; 2 uses
  %i.qv = load ptr, ptr %i.dr, align 8, !tbaa !52
  %i.qw = getelementptr inbounds i8, ptr %i.qv, i64 %indvars.iv352
  store i8 %i.qu, ptr %i.qw, align 1, !tbaa !53
  %i.qx = load i64, ptr %i.dp, align 8, !tbaa !36
  %i.qy = add i64 %i.qx, -1
  store i64 %i.qy, ptr %i.dp, align 8, !tbaa !36
  %indvars.iv.next353 = add nsw i64 %indvars.iv352, 1 ; 2 uses
  %i.qz = load i32, ptr %i.dq, align 4, !tbaa !90 ; 2 uses
  %i.ra = trunc nsw i64 %indvars.iv.next353 to i32 ; 2 uses
  %i.rb = icmp eq i32 %i.qz, %i.ra
  br i1 %i.rb, label %bb.at, label %bb.au, !prof !105

bb.at:                                            ; preds = %ReadSymbol.exit
  store i32 13, ptr %0, align 8, !tbaa !27
  %i.rc = add nsw i32 %.9, -1
  br label %.thread131

bb.au:                                            ; preds = %ReadSymbol.exit
  %i.rd = add nsw i32 %.9, -1                     ; 2 uses
  %.not442.i = icmp eq i32 %i.rd, 0
  br i1 %.not442.i, label %.thread126, label %bb.ao, !llvm.loop !2

.thread126:                                       ; preds = %bb.am, %bb.au
  %.10385.i = phi i32 [ %i.ra, %bb.au ], [ %indvars, %bb.am ] ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !62
  %i.rg = icmp slt i32 %i.rf, 1
  br i1 %i.rg, label %bb.av, label %bb.aw, !prof !105

bb.av:                                            ; preds = %.thread126
  store i32 14, ptr %0, align 8, !tbaa !27
  br label %.thread131

bb.aw:                                            ; preds = %.thread126, %ReadCommandInternal.exit, %bb.c
  %.11386.i = phi i32 [ %.0375.i.ph, %ReadCommandInternal.exit ], [ %.10385.i, %.thread126 ], [ %i.b, %bb.c ] ; 12 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 8 uses
  %i.ri = load i32, ptr %i.rh, align 8, !tbaa !101 ; 2 uses
  %i.rj = icmp sgt i32 %i.ri, -1
  br i1 %i.rj, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %.not452.i = icmp eq i32 %i.ri, 0
  %i.rk = zext i1 %.not452.i to i32               ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i32 %i.rk, ptr %i.rl, align 4, !tbaa !102
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !106
  %i.ro = add nsw i32 %i.rn, -1                   ; 2 uses
  store i32 %i.ro, ptr %i.rm, align 4, !tbaa !106
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.rq = and i32 %i.ro, 3
  %i.rr = zext nneg i32 %i.rq to i64
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %i.rr
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !44 ; 2 uses
  store i32 %i.rt, ptr %i.rh, align 8, !tbaa !101
  br label %ReadDistanceInternal.exit

bb.ay:                                            ; preds = %bb.aw
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !36
  %i.rw = icmp eq i64 %i.rv, 0
  br i1 %i.rw, label %bb.az, label %bb.ba, !prof !105

bb.az:                                            ; preds = %bb.ay
  tail call fastcc void @DecodeDistanceBlockSwitch(ptr noundef nonnull %0)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !107
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.sb = load i8, ptr %i.sa, align 4, !tbaa !103
  %i.sc = zext i8 %i.sb to i64
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %i.sc
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !79
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.sg = load i64, ptr %i.sf, align 8, !tbaa !54 ; 4 uses
  %i.sh = icmp ult i64 %i.sg, 17
  %.pre374.a = load i64, ptr %i.e, align 8, !tbaa !55 ; 2 uses
  br i1 %i.sh, label %bb.bb, label %BrotliGet16BitsUnmasked.exit.i

bb.bb:                                            ; preds = %bb.ba
  %i.si = load ptr, ptr %i.j, align 8, !tbaa !49  ; 2 uses
  %.0.copyload.i.i.i53 = load i64, ptr %i.si, align 1
  %i.sj = shl i64 %.0.copyload.i.i.i53, %i.sg
  %i.sk = or i64 %i.sj, %.pre374.a
  %i.sl = add nuw nsw i64 %i.sg, 48
  %i.sm = getelementptr inbounds nuw i8, ptr %i.si, i64 6
  store ptr %i.sm, ptr %i.j, align 8, !tbaa !49
  br label %BrotliGet16BitsUnmasked.exit.i

BrotliGet16BitsUnmasked.exit.i:                   ; preds = %bb.bb, %bb.ba
  %i.sn = phi i64 [ %i.sl, %bb.bb ], [ %i.sg, %bb.ba ] ; 2 uses
  %i.so = phi i64 [ %i.sk, %bb.bb ], [ %.pre374.a, %bb.ba ] ; 3 uses
  %i.sp = and i64 %i.so, 255
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %i.sp ; 4 uses
  %i.sr = load i8, ptr %i.sq, align 2, !tbaa !70  ; 3 uses
  %i.ss = icmp ugt i8 %i.sr, 8
  br i1 %i.ss, label %BitMask.exit.i.i.i51, label %ReadSymbol.exit.i49

BitMask.exit.i.i.i51:                             ; preds = %BrotliGet16BitsUnmasked.exit.i
  %i.st = add i64 %i.sn, -8
  %i.su = lshr i64 %i.so, 8                       ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sq, i64 2
  %i.sw = load i16, ptr %i.sv, align 2, !tbaa !71
  %i.sx = zext i16 %i.sw to i64
  %i.sy = zext i8 %i.sr to i64
  %i.sz = getelementptr [8 x i8], ptr @kBrotliBitMask, i64 %i.sy
  %i.ta = getelementptr i8, ptr %i.sz, i64 -64
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !36
  %i.tc = and i64 %i.tb, %i.su
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.sq, i64 %i.tc
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %i.sx ; 2 uses
  %.pre375 = load i8, ptr %i.te, align 2, !tbaa !70
  br label %ReadSymbol.exit.i49

ReadSymbol.exit.i49:                              ; preds = %BitMask.exit.i.i.i51, %BrotliGet16BitsUnmasked.exit.i
  %i.tf = phi i64 [ %i.su, %BitMask.exit.i.i.i51 ], [ %i.so, %BrotliGet16BitsUnmasked.exit.i ]
  %i.tg = phi i64 [ %i.st, %BitMask.exit.i.i.i51 ], [ %i.sn, %BrotliGet16BitsUnmasked.exit.i ]
  %i.th = phi i8 [ %.pre375, %BitMask.exit.i.i.i51 ], [ %i.sr, %BrotliGet16BitsUnmasked.exit.i ]
  %.0.i.i27.i = phi ptr [ %i.te, %BitMask.exit.i.i.i51 ], [ %i.sq, %BrotliGet16BitsUnmasked.exit.i ]
  %i.ti = zext i8 %i.th to i64                    ; 2 uses
  %i.tj = sub i64 %i.tg, %i.ti                    ; 5 uses
  store i64 %i.tj, ptr %i.sf, align 8, !tbaa !54
  %i.tk = lshr i64 %i.tf, %i.ti                   ; 3 uses
  store i64 %i.tk, ptr %i.e, align 8, !tbaa !55
  %i.tl = getelementptr inbounds nuw i8, ptr %.0.i.i27.i, i64 2
  %i.tm = load i16, ptr %i.tl, align 2, !tbaa !71 ; 6 uses
  %i.tn = zext i16 %i.tm to i64                   ; 2 uses
  %i.to = load i64, ptr %i.ru, align 8, !tbaa !36
  %i.tp = add i64 %i.to, -1
  store i64 %i.tp, ptr %i.ru, align 8, !tbaa !36
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  store i32 0, ptr %i.tq, align 4, !tbaa !102
  %i.tr = icmp ult i16 %i.tm, 16
  br i1 %i.tr, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %ReadSymbol.exit.i49
  %i.ts = zext nneg i16 %i.tm to i32              ; 3 uses
  store i32 %i.ts, ptr %i.rh, align 8, !tbaa !101
  %i.tt = icmp samesign ult i16 %i.tm, 4
  br i1 %i.tt, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %.neg.i = xor i32 %i.ts, -1
  %i.tu = icmp eq i16 %i.tm, 0
  %i.tv = zext i1 %i.tu to i32                    ; 3 uses
  store i32 %i.tv, ptr %i.tq, align 4, !tbaa !102
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !106 ; 2 uses
  %i.tz = add i32 %i.ty, %.neg.i
  %i.ua = and i32 %i.tz, 3
  %i.ub = zext nneg i32 %i.ua to i64
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.tw, i64 %i.ub
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !44 ; 2 uses
  store i32 %i.ud, ptr %i.rh, align 8, !tbaa !101
  %i.ue = sub nsw i32 %i.ty, %i.tv
  store i32 %i.ue, ptr %i.tx, align 4, !tbaa !106
  br label %ReadDistanceInternal.exit

bb.be:                                            ; preds = %bb.bc
  %i.uf = icmp samesign ult i16 %i.tm, 10         ; 2 uses
  %.020.i = select i1 %i.uf, i32 3, i32 2
  %.0.i54.v = select i1 %i.uf, i32 -4, i32 -10
  %.0.i54 = add nsw i32 %.0.i54.v, %i.ts
  %i.ug = shl nsw i32 %.0.i54, 2
  %i.uh = lshr i32 6312258, %i.ug
  %i.ui = and i32 %i.uh, 7
  %i.uj = add nsw i32 %i.ui, -3
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !106
  %i.un = add nsw i32 %i.um, %.020.i
  %i.uo = and i32 %i.un, 3
  %i.up = zext nneg i32 %i.uo to i64
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %i.up
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !44
  %i.us = add nsw i32 %i.uj, %i.ur                ; 2 uses
  %i.ut = icmp slt i32 %i.us, 1
  %storemerge.i = select i1 %i.ut, i32 2147483647, i32 %i.us ; 2 uses
  store i32 %storemerge.i, ptr %i.rh, align 8, !tbaa !101
  br label %ReadDistanceInternal.exit

bb.bf:                                            ; preds = %ReadSymbol.exit.i49
  %i.uu = getelementptr inbounds nuw i8, ptr %i.rx, i64 %i.tn
  %i.uv = load i8, ptr %i.uu, align 1, !tbaa !53
  %i.uw = zext i8 %i.uv to i64                    ; 3 uses
  %i.ux = icmp ult i64 %i.tj, 33
  br i1 %i.ux, label %BrotliFillBitWindow.exit.i.sink.split, label %BrotliReadBits32.exit

BrotliFillBitWindow.exit.i.sink.split:            ; preds = %bb.bf
  %i.uy = load ptr, ptr %i.j, align 8, !tbaa !49  ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 4
  %i.va = add nuw nsw i64 %i.tj, 32
  %.0.copyload.i4.i = load i32, ptr %i.uy, align 1
  %i.vb = zext i32 %.0.copyload.i4.i to i64
  %.pn = shl i64 %i.vb, %i.tj
  %.ph521 = or i64 %.pn, %i.tk
  store ptr %i.uz, ptr %i.j, align 8, !tbaa !49
  br label %BrotliReadBits32.exit

BrotliReadBits32.exit:                            ; preds = %BrotliFillBitWindow.exit.i.sink.split, %bb.bf
  %i.vc = phi i64 [ %i.va, %BrotliFillBitWindow.exit.i.sink.split ], [ %i.tj, %bb.bf ]
  %i.vd = phi i64 [ %.ph521, %BrotliFillBitWindow.exit.i.sink.split ], [ %i.tk, %bb.bf ] ; 2 uses
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr @kBrotliBitMask, i64 %i.uw
  %i.vf = load i64, ptr %i.ve, align 8, !tbaa !36
  %i.vg = and i64 %i.vf, %i.vd
  %i.vh = sub i64 %i.vc, %i.uw
  store i64 %i.vh, ptr %i.sf, align 8, !tbaa !54
  %i.vi = lshr i64 %i.vd, %i.uw
  store i64 %i.vi, ptr %i.e, align 8, !tbaa !55
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %i.tn
  %i.vl = load i64, ptr %i.vk, align 8, !tbaa !36
  %i.vm = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.vn = load i64, ptr %i.vm, align 8, !tbaa !76
  %i.vo = shl i64 %i.vg, %i.vn
  %i.vp = add i64 %i.vo, %i.vl
  %i.vq = trunc i64 %i.vp to i32                  ; 2 uses
  store i32 %i.vq, ptr %i.rh, align 8, !tbaa !101
  br label %ReadDistanceInternal.exit

end_hunk_0
begin_hunk_1_@ProcessCommands:bb.a
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.adk, i64 %i.abm
  %i.adm = load i32, ptr %i.adl, align 4, !tbaa !44
  %i.adn = mul nsw i32 %i.adi, %i.vz
  %i.ado = add nsw i32 %i.adn, %i.adm
  br label %.loopexit

.thread169:                                       ; preds = %bb.cf, %bb.cc, %bb.cd
  %.3.i182 = phi i32 [ %.0320.i300, %bb.cc ], [ %.0320.i300, %bb.cd ], [ %i.add, %bb.cf ]
  %indvars.iv.next359 = add nuw nsw i64 %indvars.iv358, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next359, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.cc, !llvm.loop !7

.loopexit:                                        ; preds = %.thread169, %.thread198, %bb.ca, %bb.bz
  %.5343.i = phi ptr [ %i.abh, %bb.bz ], [ %i.abh, %bb.ca ], [ %i.acs, %.thread198 ], [ %i.abh, %.thread169 ] ; 2 uses
  %.5337.i = phi ptr [ %i.abk, %bb.bz ], [ %i.abk, %bb.ca ], [ %i.acw, %.thread198 ], [ %i.abk, %.thread169 ] ; 3 uses
  %.5331.i = phi i32 [ %i.acf, %bb.bz ], [ %i.acf, %bb.ca ], [ %i.ado, %.thread198 ], [ %i.acf, %.thread169 ]
  %.5.i = phi i32 [ %i.aca, %bb.bz ], [ %i.aca, %bb.ca ], [ %i.adj, %.thread198 ], [ %i.aca, %.thread169 ] ; 3 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %.5343.i, i64 %i.abm
  %i.adq = load i8, ptr %i.adp, align 1, !tbaa !53
  %i.adr = icmp eq i8 %i.adq, 0
  br i1 %i.adr, label %ProcessCommandsInternal.exit, label %bb.cg, !prof !105

bb.cg:                                            ; preds = %.loopexit
  %i.ads = getelementptr inbounds nuw i8, ptr %.5343.i, i64 168
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !115 ; 2 uses
  %.not462.i = icmp eq ptr %i.adt, null
  br i1 %.not462.i, label %ProcessCommandsInternal.exit, label %bb.ch, !prof !105

bb.ch:                                            ; preds = %bb.cg
  %i.adu = getelementptr inbounds nuw i8, ptr %.5337.i, i64 24
  %i.adv = load i32, ptr %i.adu, align 8, !tbaa !112
  %i.adw = icmp slt i32 %.5.i, %i.adv
  br i1 %i.adw, label %bb.ci, label %ProcessCommandsInternal.exit

bb.ci:                                            ; preds = %bb.ch
  %i.adx = sext i32 %.5331.i to i64
  %i.ady = getelementptr inbounds i8, ptr %i.adt, i64 %i.adx ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %.5337.i, i64 48
  %i.aea = load i16, ptr %i.adz, align 8, !tbaa !98
  %i.aeb = sext i16 %i.aea to i32
  %i.aec = icmp eq i32 %.5.i, %i.aeb
  %i.aed = load ptr, ptr %i.zx, align 8, !tbaa !52
  %i.aee = sext i32 %.11386.i to i64
  %i.aef = getelementptr inbounds i8, ptr %i.aed, i64 %i.aee ; 2 uses
  br i1 %i.aec, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aef, ptr nonnull align 1 %i.ady, i64 %i.abm, i1 false)
  br label %bb.cm

bb.ck:                                            ; preds = %bb.ci
  %i.aeg = tail call i32 @BrotliTransformDictionaryWord(ptr noundef %i.aef, ptr noundef nonnull %i.ady, i32 noundef %i.vz, ptr noundef nonnull %.5337.i, i32 noundef %.5.i) #21 ; 2 uses
  %i.aeh = icmp eq i32 %i.aeg, 0
  br i1 %i.aeh, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.aei = load i32, ptr %i.rh, align 8, !tbaa !101
  %i.aej = icmp slt i32 %i.aei, 121
  br i1 %i.aej, label %ProcessCommandsInternal.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %bb.cj
  %.0319.i = phi i32 [ %i.vz, %bb.cj ], [ 0, %bb.cl ], [ %i.aeg, %bb.ck ] ; 2 uses
  %i.aek = add nsw i32 %.0319.i, %.11386.i        ; 3 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.aem = load i32, ptr %i.ael, align 4, !tbaa !62
  %i.aen = sub nsw i32 %i.aem, %.0319.i
  store i32 %i.aen, ptr %i.ael, align 4, !tbaa !62
  %i.aeo = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !90
  %.not463.i = icmp slt i32 %i.aek, %i.aep
  br i1 %.not463.i, label %.thread164, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  store i32 15, ptr %0, align 8, !tbaa !27
  br label %.thread131

bb.co:                                            ; preds = %bb.bh
  %i.aeq = sub nsw i32 %.11386.i, %i.vs
  %i.aer = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aes = load i32, ptr %i.aer, align 8, !tbaa !95
  %i.aet = and i32 %i.aes, %i.aeq                 ; 3 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aev = load ptr, ptr %i.aeu, align 8, !tbaa !52 ; 2 uses
  %i.aew = sext i32 %.11386.i to i64              ; 3 uses
  %i.aex = getelementptr inbounds i8, ptr %i.aev, i64 %i.aew ; 2 uses
  %i.aey = sext i32 %i.aet to i64
  %i.aez = getelementptr inbounds i8, ptr %i.aev, i64 %i.aey ; 2 uses
  %i.afa = add nsw i32 %i.vz, %.11386.i           ; 5 uses
  %i.afb = add nsw i32 %i.aet, %i.vz              ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.afd = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.afe = load i32, ptr %i.afd, align 4, !tbaa !106 ; 2 uses
  %i.aff = and i32 %i.afe, 3
  %i.afg = zext nneg i32 %i.aff to i64
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %i.afc, i64 %i.afg
  store i32 %i.vs, ptr %i.afh, align 4, !tbaa !44
  %i.afi = add nsw i32 %i.afe, 1
  store i32 %i.afi, ptr %i.afd, align 4, !tbaa !106
  %i.afj = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !62
  %i.afl = sub nsw i32 %i.afk, %i.vz
  store i32 %i.afl, ptr %i.afj, align 4, !tbaa !62
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aex, ptr noundef nonnull align 1 dereferenceable(16) %i.aez, i64 16, i1 false)
  %i.afm = icmp sgt i32 %i.afb, %.11386.i
  %i.afn = icmp sgt i32 %i.afa, %i.aet
  %or.cond469.i = select i1 %i.afm, i1 %i.afn, i1 false
  br i1 %or.cond469.i, label %bb.cv, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.afo = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.afp = load i32, ptr %i.afo, align 4, !tbaa !90 ; 2 uses
  %.not454.i = icmp slt i32 %i.afa, %i.afp
  %.not455.i = icmp slt i32 %i.afb, %i.afp
  %or.cond470.i = and i1 %.not454.i, %.not455.i
  br i1 %or.cond470.i, label %bb.cq, label %bb.cv

bb.cq:                                            ; preds = %bb.cp
  %i.afq = icmp sgt i32 %i.vz, 16
  br i1 %i.afq, label %bb.cr, label %.thread164

bb.cr:                                            ; preds = %bb.cq
  %i.afr = icmp samesign ugt i32 %i.vz, 32
  %i.afs = getelementptr inbounds nuw i8, ptr %i.aex, i64 16 ; 2 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.aez, i64 16 ; 2 uses
  br i1 %i.afr, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.afu = add nsw i32 %i.vz, -16
  %i.afv = zext nneg i32 %i.afu to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.afs, ptr nonnull align 1 %i.aft, i64 %i.afv, i1 false)
  br label %.thread164

bb.ct:                                            ; preds = %bb.cr
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.afs, ptr noundef nonnull align 1 dereferenceable(16) %i.aft, i64 16, i1 false)
  br label %.thread164

.thread164:                                       ; preds = %bb.cq, %bb.ct, %bb.cs, %bb.cm, %CopyFromCompoundDictionary.exit
  %.16.i = phi i32 [ %i.aek, %bb.cm ], [ %.042.i, %CopyFromCompoundDictionary.exit ], [ %i.afa, %bb.cs ], [ %i.afa, %bb.ct ], [ %i.afa, %bb.cq ] ; 2 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.afx = load i32, ptr %i.afw, align 4, !tbaa !62
  %i.afy = icmp slt i32 %i.afx, 1
  br i1 %i.afy, label %bb.cu, label %.preheader236

bb.cu:                                            ; preds = %.thread164
  store i32 14, ptr %0, align 8, !tbaa !27
  br label %.thread131

bb.cv:                                            ; preds = %._crit_edge379, %bb.co, %bb.cp
  %.pre-phi381 = phi i64 [ %.pre380, %._crit_edge379 ], [ %i.aew, %bb.co ], [ %i.aew, %bb.cp ]
  %.0109 = phi i32 [ %i.d, %._crit_edge379 ], [ %i.vz, %bb.co ], [ %i.vz, %bb.cp ]
  %.17.i = phi i32 [ %i.b, %._crit_edge379 ], [ %.11386.i, %bb.co ], [ %.11386.i, %bb.cp ]
  %i.afz = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !90
  %i.agb = sub nsw i32 %i.aga, %.17.i
  %i.agc = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.agd = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.age = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cx, %bb.cv
  %indvars.iv354 = phi i64 [ %indvars.iv.next355, %bb.cx ], [ %.pre-phi381, %bb.cv ] ; 4 uses
  %.1110 = phi i32 [ %i.agf, %bb.cx ], [ %.0109, %bb.cv ] ; 2 uses
  %.0.i = phi i32 [ %i.agr, %bb.cx ], [ %i.agb, %bb.cv ]
  %i.agf = add nsw i32 %.1110, -1                 ; 4 uses
  %i.agg = icmp sgt i32 %.1110, 0
  br i1 %i.agg, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  %i.agh = load ptr, ptr %i.agc, align 8, !tbaa !52 ; 2 uses
  %i.agi = load i32, ptr %i.agd, align 8, !tbaa !101
  %i.agj = trunc nsw i64 %indvars.iv354 to i32
  %i.agk = sub nsw i32 %i.agj, %i.agi
  %i.agl = load i32, ptr %i.age, align 8, !tbaa !95
  %i.agm = and i32 %i.agk, %i.agl
  %i.agn = sext i32 %i.agm to i64
  %i.ago = getelementptr inbounds i8, ptr %i.agh, i64 %i.agn
  %i.agp = load i8, ptr %i.ago, align 1, !tbaa !53
  %i.agq = getelementptr inbounds i8, ptr %i.agh, i64 %indvars.iv354
  store i8 %i.agp, ptr %i.agq, align 1, !tbaa !53
  %indvars.iv.next355 = add nsw i64 %indvars.iv354, 1 ; 2 uses
  %i.agr = add nsw i32 %.0.i, -1                  ; 2 uses
  %i.ags = icmp eq i32 %i.agr, 0
  br i1 %i.ags, label %bb.cy, label %bb.cw, !prof !105, !llvm.loop !8

bb.cy:                                            ; preds = %bb.cx
  %i.agt = trunc nsw i64 %indvars.iv.next355 to i32
  store i32 16, ptr %0, align 8, !tbaa !27
  br label %.thread131

bb.cz:                                            ; preds = %bb.cw
  %i.agu = trunc nsw i64 %indvars.iv354 to i32    ; 2 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.agw = load i32, ptr %i.agv, align 4, !tbaa !62
  %i.agx = icmp slt i32 %i.agw, 1
  br i1 %i.agx, label %bb.da, label %.preheader236

bb.da:                                            ; preds = %bb.cz
  store i32 14, ptr %0, align 8, !tbaa !27
  br label %.thread131

.loopexit231.loopexit:                            ; preds = %bb.aq
  %4 = trunc nsw i64 %indvars.iv352 to i32
  br label %.loopexit231

.loopexit231:                                     ; preds = %bb.z, %.loopexit231.loopexit
  %.7 = phi i32 [ %.9, %.loopexit231.loopexit ], [ %.5, %bb.z ]
  %.20.i = phi i32 [ %4, %.loopexit231.loopexit ], [ %indvars351, %bb.z ]
  tail call fastcc void @DecodeLiteralBlockSwitch(ptr noundef nonnull %0)
  br label %bb.i

.thread131:                                       ; preds = %bb.ap, %bb.at, %bb.y, %bb.al, %bb.cy, %bb.cn, %CopyFromCompoundDictionary.exit.thread, %bb.da, %bb.cu, %bb.av, %._crit_edge, %GetCompoundDictionarySize.exit
  %.2111 = phi i32 [ %i.d, %GetCompoundDictionarySize.exit ], [ %.3112.ph, %._crit_edge ], [ %i.vz, %bb.cu ], [ %i.vz, %bb.cn ], [ %i.vz, %CopyFromCompoundDictionary.exit.thread ], [ %i.agf, %bb.da ], [ %i.agf, %bb.cy ], [ 0, %bb.av ], [ %i.od, %bb.al ], [ %.5, %bb.y ], [ %.9, %bb.ap ], [ %i.rc, %bb.at ]
  %.21.i = phi i32 [ %i.b, %GetCompoundDictionarySize.exit ], [ %.0375.i.ph, %._crit_edge ], [ %.16.i, %bb.cu ], [ %i.aek, %bb.cn ], [ %.143.i468, %CopyFromCompoundDictionary.exit.thread ], [ %i.agu, %bb.da ], [ %i.agt, %bb.cy ], [ %.10385.i, %bb.av ], [ %indvars, %bb.al ], [ %indvars351, %bb.y ], [ %i.ou, %bb.ap ], [ %i.qz, %bb.at ]
  %.15.i = phi i32 [ 2, %GetCompoundDictionarySize.exit ], [ 2, %._crit_edge ], [ 1, %bb.cu ], [ 1, %bb.cn ], [ 1, %CopyFromCompoundDictionary.exit.thread ], [ 1, %bb.da ], [ 1, %bb.cy ], [ 1, %bb.av ], [ 1, %bb.al ], [ 2, %bb.y ], [ 2, %bb.ap ], [ 1, %bb.at ]
  store i32 %.21.i, ptr %i.a, align 8, !tbaa !92
  store i32 %.2111, ptr %i.c, align 4, !tbaa !56
  br label %ProcessCommandsInternal.exit

ProcessCommandsInternal.exit:                     ; preds = %bb.ch, %bb.cl, %bb.cg, %.loopexit, %bb.bq, %bb.c, %bb.bi, %bb.bw, %.thread131
  %.8399.i = phi i32 [ %.15.i, %.thread131 ], [ -31, %bb.c ], [ -12, %bb.bw ], [ -18, %bb.bq ], [ -16, %bb.bi ], [ -11, %bb.ch ], [ -11, %bb.cl ], [ -19, %bb.cg ], [ -12, %.loopexit ]
  ret i32 %.8399.i
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 -31, 3) i32 @SafeProcessCommands(ptr nofree noundef %0) unnamed_addr #10 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !92   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !56   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 38 uses
  %i.j = getelementptr i8, ptr %0, i64 808        ; 3 uses
  %.val = load ptr, ptr %i.j, align 8, !tbaa !37  ; 2 uses
  %.not.i52 = icmp eq ptr %.val, null
  br i1 %.not.i52, label %GetCompoundDictionarySize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !40
  br label %GetCompoundDictionarySize.exit

GetCompoundDictionarySize.exit:                   ; preds = %bb.b, %bb.a
  %i.m = phi i32 [ %i.l, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.n = load i32, ptr %0, align 8, !tbaa !27
  switch i32 %i.n, label %ProcessCommandsInternal.exit [
    i32 7, label %.preheader279
    i32 8, label %.preheader274
    i32 9, label %bb.y
    i32 10, label %GetCompoundDictionarySize.exit._crit_edge
  ]

GetCompoundDictionarySize.exit._crit_edge:        ; preds = %GetCompoundDictionarySize.exit
  %.pre407 = sext i32 %i.f to i64
  br label %bb.ca

.preheader279:                                    ; preds = %bb.ce, %.thread199, %GetCompoundDictionarySize.exit
  %.3.ph = phi i32 [ %i.rg, %.thread199 ], [ %i.abm, %bb.ce ], [ %i.h, %GetCompoundDictionarySize.exit ] ; 2 uses
  %.0375.i.ph = phi i32 [ %.16.i, %.thread199 ], [ %i.acb, %bb.ce ], [ %i.f, %GetCompoundDictionarySize.exit ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader279, %bb.d
  store i32 7, ptr %0, align 8, !tbaa !27
  %i.p = load i64, ptr %i.o, align 8, !tbaa !36
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e, !prof !105

bb.d:                                             ; preds = %bb.c
  %i.r = tail call fastcc i32 @SafeDecodeCommandBlockSwitch(ptr noundef nonnull %0)
  %.not466.i = icmp eq i32 %i.r, 0
  br i1 %.not466.i, label %.thread150, label %bb.c

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.s = load i64, ptr %i.i, align 8, !tbaa !55   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !54   ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !49   ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50   ; 3 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !88 ; 2 uses
  %i.ae = icmp ult i64 %i.u, 15
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.af = icmp eq ptr %i.w, %i.y
  br i1 %i.af, label %SafeReadSymbol.exit.i8, label %BrotliPullByte.exit.i.i.i12

BrotliPullByte.exit.i.i.i12:                      ; preds = %.lr.ph
  %i.ag = load i8, ptr %i.w, align 1, !tbaa !53
  %i.ah = zext i8 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, %i.u
  %i.aj = or i64 %i.ai, %i.s                      ; 3 uses
  store i64 %i.aj, ptr %i.i, align 8, !tbaa !55
  %i.ak = add nuw nsw i64 %i.u, 8                 ; 3 uses
  store i64 %i.ak, ptr %i.t, align 8, !tbaa !54
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 3 uses
  store ptr %i.al, ptr %i.v, align 8, !tbaa !49
  %i.am = icmp ult i64 %i.u, 7
  br i1 %i.am, label %.lr.ph.1, label %._crit_edge

.lr.ph.1:                                         ; preds = %BrotliPullByte.exit.i.i.i12
  %i.an = icmp eq ptr %i.al, %i.y
  br i1 %i.an, label %SafeReadSymbol.exit.i8, label %BrotliPullByte.exit.i.i.i12.1

BrotliPullByte.exit.i.i.i12.1:                    ; preds = %.lr.ph.1
  %i.ao = load i8, ptr %i.al, align 1, !tbaa !53
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, %i.ak
  %i.ar = or i64 %i.aq, %i.aj                     ; 2 uses
  store i64 %i.ar, ptr %i.i, align 8, !tbaa !55
  %i.as = or disjoint i64 %i.u, 16                ; 2 uses
  store i64 %i.as, ptr %i.t, align 8, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store ptr %i.at, ptr %i.v, align 8, !tbaa !49
  br label %._crit_edge

._crit_edge:                                      ; preds = %BrotliPullByte.exit.i.i.i12, %BrotliPullByte.exit.i.i.i12.1, %bb.e
  %i.au = phi i64 [ %i.u, %bb.e ], [ %i.ak, %BrotliPullByte.exit.i.i.i12 ], [ %i.as, %BrotliPullByte.exit.i.i.i12.1 ] ; 2 uses
  %i.av = phi i64 [ %i.s, %bb.e ], [ %i.aj, %BrotliPullByte.exit.i.i.i12 ], [ %i.ar, %BrotliPullByte.exit.i.i.i12.1 ] ; 3 uses
  %i.aw = and i64 %i.av, 255
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.aw ; 4 uses
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !70  ; 3 uses
  %i.az = icmp ugt i8 %i.ay, 8
  br i1 %i.az, label %BitMask.exit.i.i11, label %SafeReadSymbol.exit.i8.thread

BitMask.exit.i.i11:                               ; preds = %._crit_edge
  %i.ba = add i64 %i.au, -8
  %i.bb = lshr i64 %i.av, 8                       ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !71
  %i.be = zext i16 %i.bd to i64
  %i.bf = and i64 %i.bb, 127
  %i.bg = zext i8 %i.ay to i64
  %i.bh = getelementptr [8 x i8], ptr @kBrotliBitMask, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 -64
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !36
  %i.bk = and i64 %i.bf, %i.bj
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bk
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.be ; 2 uses
  %.pre = load i8, ptr %i.bm, align 2, !tbaa !70
  br label %SafeReadSymbol.exit.i8.thread

SafeReadSymbol.exit.i8.thread:                    ; preds = %._crit_edge, %BitMask.exit.i.i11
  %i.bn = phi i64 [ %i.bb, %BitMask.exit.i.i11 ], [ %i.av, %._crit_edge ]
  %i.bo = phi i64 [ %i.ba, %BitMask.exit.i.i11 ], [ %i.au, %._crit_edge ]
  %i.bp = phi i8 [ %.pre, %BitMask.exit.i.i11 ], [ %i.ay, %._crit_edge ]
  %.0.i28.i = phi ptr [ %i.bm, %BitMask.exit.i.i11 ], [ %i.ax, %._crit_edge ]
  %i.bq = zext i8 %i.bp to i64                    ; 2 uses
  %i.br = sub i64 %i.bo, %i.bq
  store i64 %i.br, ptr %i.t, align 8, !tbaa !54
  %i.bs = lshr i64 %i.bn, %i.bq
  store i64 %i.bs, ptr %i.i, align 8, !tbaa !55
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i28.i, i64 2
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !71
  %i.bv = zext i16 %i.bu to i64                   ; 2 uses
  store i64 %i.bv, ptr %i.b, align 8, !tbaa !36
  br label %bb.f

SafeReadSymbol.exit.i8:                           ; preds = %.lr.ph.1, %.lr.ph
  %i.bw = call fastcc i32 @SafeDecodeSymbol(ptr noundef %i.ad, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b)
  %.not24.i = icmp eq i32 %i.bw, 0
  br i1 %.not24.i, label %ReadCommandInternal.exit.thread, label %SafeReadSymbol.exit.i8._crit_edge

SafeReadSymbol.exit.i8._crit_edge:                ; preds = %SafeReadSymbol.exit.i8
  %.pre392 = load i64, ptr %i.b, align 8, !tbaa !36
  br label %bb.f

bb.f:                                             ; preds = %SafeReadSymbol.exit.i8._crit_edge, %SafeReadSymbol.exit.i8.thread
  %i.bx = phi i64 [ %.pre392, %SafeReadSymbol.exit.i8._crit_edge ], [ %i.bv, %SafeReadSymbol.exit.i8.thread ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr @kCmdLut, i64 %i.bx ; 6 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.by, align 8, !tbaa !53 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %.sroa.6.0.copyload.i = load i8, ptr %.sroa.6.0..sroa_idx.i, align 1, !tbaa !53 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %.sroa.8.0.copyload.i = load i8, ptr %.sroa.8.0..sroa_idx.i, align 2, !tbaa !53
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.by, i64 3
  %.sroa.9.0.copyload.i = load i8, ptr %.sroa.9.0..sroa_idx.i, align 1, !tbaa !53 ; 2 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %.sroa.10.0.copyload.i = load i16, ptr %.sroa.10.0..sroa_idx.i, align 4, !tbaa !98
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.by, i64 6
  %.sroa.11.0.copyload.i = load i16, ptr %.sroa.11.0..sroa_idx.i, align 2, !tbaa !98
  %i.bz = sext i8 %.sroa.8.0.copyload.i to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 712
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !101
  %i.cb = zext i8 %.sroa.9.0.copyload.i to i32
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !102
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !86
  %i.cf = zext i8 %.sroa.9.0.copyload.i to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !53
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 716
  store i8 %i.ch, ptr %i.ci, align 4, !tbaa !103
  %i.cj = zext i16 %.sroa.10.0.copyload.i to i32  ; 2 uses
  %i.ck = zext i8 %.sroa.0.0.copyload.i to i64    ; 5 uses
  %.not.i20 = icmp eq i8 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i20, label %bb.h, label %.preheader277

.preheader277:                                    ; preds = %bb.f
  %.promoted317 = load i64, ptr %i.t, align 8, !tbaa !54 ; 3 uses
  %i.cl = icmp ult i64 %.promoted317, %i.ck
  br i1 %i.cl, label %.lr.ph318, label %.preheader277.._crit_edge319_crit_edge
end_hunk_1
