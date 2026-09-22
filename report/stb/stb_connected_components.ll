Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_connected_components?download=true
inline.NumInlined: 13
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@stbcc__build_clumps_for_cluster:bb.a
  %i.ga = and i32 %i.fz, %i.fx
  %.not326 = icmp eq i32 %i.ga, 0
  br i1 %.not326, label %stbcc__incluster_union.exit340, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.gb = add nuw nsw i32 %i.fs, 1                ; 2 uses
  %i.gc = ashr i32 %i.gb, 3
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds i8, ptr %i.fq, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !11
  %i.gg = zext i8 %i.gf to i32
  %i.gh = and i32 %i.gb, 7
  %i.gi = shl nuw nsw i32 1, %i.gh
  %i.gj = and i32 %i.gi, %i.gg
  %.not327 = icmp eq i32 %i.gj, 0
  br i1 %.not327, label %stbcc__incluster_union.exit340, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gk = add nuw nsw i32 %.2303361, 1
  %i.gl = call i16 @stbcc__incluster_find(ptr noundef nonnull %3, i32 noundef %.2303361, i32 noundef %i.fr) ; 3 uses
  %.sroa.53.0.extract.shift.i336 = lshr i16 %i.gl, 8 ; 2 uses
  %i.gm = call i16 @stbcc__incluster_find(ptr noundef nonnull %3, i32 noundef %i.gk, i32 noundef %i.fr) ; 3 uses
  %.sroa.5.0.extract.shift.i337 = lshr i16 %i.gm, 8
  %i.gn = xor i16 %i.gm, %i.gl
  %i.go = and i16 %i.gn, 255
  %i.gp = icmp eq i16 %i.go, 0
  %i.gq = icmp eq i16 %.sroa.53.0.extract.shift.i336, %.sroa.5.0.extract.shift.i337
  %or.cond.i338 = select i1 %i.gp, i1 %i.gq, i1 false
  br i1 %or.cond.i338, label %stbcc__incluster_union.exit340, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.53.0.extract.trunc.i339 = zext nneg i16 %.sroa.53.0.extract.shift.i336 to i64
  %i.gr = getelementptr inbounds nuw [64 x i8], ptr %3, i64 %.sroa.53.0.extract.trunc.i339
  %i.gs = and i16 %i.gl, 255
  %i.gt = zext nneg i16 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %i.gr, i64 %i.gt
  store i16 %i.gm, ptr %i.gu, align 2
  br label %stbcc__incluster_union.exit340

stbcc__incluster_union.exit340:                   ; preds = %bb.j, %bb.i, %bb.g, %bb.h
  %i.gv = add nuw nsw i32 %.2303361, 1            ; 2 uses
  %exitcond383.not.a = icmp eq i32 %i.gv, 31
  br i1 %exitcond383.not.a, label %bb.k, label %bb.g, !llvm.loop !45

bb.k:                                             ; preds = %stbcc__incluster_union.exit340
  %indvars.iv.next385 = add nuw nsw i64 %indvars.iv384, 1 ; 2 uses
  %exitcond387.not = icmp eq i64 %indvars.iv.next385, 32
  br i1 %exitcond387.not, label %.preheader354, label %bb.b, !llvm.loop !46

.preheader351:                                    ; preds = %bb.t
  %i.gw = getelementptr inbounds [128 x i8], ptr %i.bp, i64 %i.bq ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 3968
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 1984
  br label %bb.u

bb.l:                                             ; preds = %.preheader354, %bb.t
  %indvars.iv396.a = phi i64 [ 0, %.preheader354 ], [ %indvars.iv.next397.a, %bb.t ] ; 12 uses
  %.0308365 = phi i32 [ 0, %.preheader354 ], [ %.4312, %bb.t ] ; 4 uses
  %gep437 = getelementptr [128 x i8], ptr %invariant.gep436, i64 %indvars.iv396.a ; 2 uses
  %i.gz = load i8, ptr %gep437, align 1, !tbaa !11
  %i.ha = and i8 %i.gz, 1
  %.not323 = icmp eq i8 %i.ha, 0
  br i1 %.not323, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hb = trunc nuw nsw i64 %indvars.iv396.a to i32
  %i.hc = call i16 @stbcc__incluster_find(ptr noundef nonnull %3, i32 noundef 0, i32 noundef %i.hb) ; 2 uses
  %.sroa.778.0.extract.shift = lshr i16 %i.hc, 8  ; 4 uses
  %.sroa.074.0.extract.trunc.mask = and i16 %i.hc, 255 ; 3 uses
  %i.hd = icmp eq i16 %.sroa.074.0.extract.trunc.mask, 0 ; 2 uses
  %i.he = zext nneg i16 %.sroa.778.0.extract.shift to i64
  %i.hf = icmp eq i64 %indvars.iv396.a, %i.he
  %or.cond = select i1 %i.hd, i1 %i.hf, i1 false
  br i1 %or.cond, label %.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hg = icmp eq i16 %.sroa.074.0.extract.trunc.mask, 31
  %i.hh = icmp eq i16 %.sroa.778.0.extract.shift, 0
  %i.hi = or i1 %i.hg, %i.hh
  %i.hj = icmp eq i16 %.sroa.778.0.extract.shift, 31
  %i.hk = or i1 %i.hj, %i.hi
  %or.cond11 = or i1 %i.hd, %i.hk
  br i1 %or.cond11, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.3.0.extract.trunc.i = zext nneg i16 %.sroa.778.0.extract.shift to i64
  %i.hl = getelementptr inbounds nuw [64 x i8], ptr %3, i64 %.sroa.3.0.extract.trunc.i
  %i.hm = zext nneg i16 %.sroa.074.0.extract.trunc.mask to i64
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %i.hm ; 2 uses
  store i8 0, ptr %i.hn, align 2, !tbaa !26
  %i.ho = trunc i64 %indvars.iv396.a to i8        ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 1
  store i8 %i.ho, ptr %i.hp, align 1, !tbaa !27
  %i.hq = getelementptr inbounds nuw [64 x i8], ptr %3, i64 %indvars.iv396.a ; 2 uses
  store i8 0, ptr %i.hq, align 2, !tbaa !26
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 1
  store i8 %i.ho, ptr %i.hr, align 1, !tbaa !27
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.o
  %i.hs = add nsw i32 %.0308365, 1
  %i.ht = trunc i32 %.0308365 to i16
  %i.hu = getelementptr inbounds nuw [64 x i8], ptr %i.br, i64 %indvars.iv396.a
  store i16 %i.ht, ptr %i.hu, align 2, !tbaa !10
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.n, %bb.l
  %.2310 = phi i32 [ %.0308365, %bb.l ], [ %.0308365, %bb.n ], [ %i.hs, %.sink.split ] ; 4 uses
  %i.hv = getelementptr i8, ptr %gep437, i64 3
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !11
  %.not324 = icmp sgt i8 %i.hw, -1
  br i1 %.not324, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hx = trunc nuw nsw i64 %indvars.iv396.a to i32
  %i.hy = call i16 @stbcc__incluster_find(ptr noundef nonnull %3, i32 noundef 31, i32 noundef %i.hx) ; 2 uses
  %.sroa.771.0.extract.shift = lshr i16 %i.hy, 8  ; 4 uses
  %.sroa.067.0.extract.trunc.mask = and i16 %i.hy, 255 ; 3 uses
  %i.hz = icmp eq i16 %.sroa.067.0.extract.trunc.mask, 31 ; 2 uses
  %i.ia = zext nneg i16 %.sroa.771.0.extract.shift to i64
  %i.ib = icmp eq i64 %indvars.iv396.a, %i.ia
  %or.cond332 = select i1 %i.hz, i1 %i.ib, i1 false
  br i1 %or.cond332, label %.sink.split442, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ic = icmp eq i16 %.sroa.067.0.extract.trunc.mask, 0
  %i.id = icmp eq i16 %.sroa.771.0.extract.shift, 0
  %i.ie = or i1 %i.ic, %i.id
  %i.if = icmp eq i16 %.sroa.771.0.extract.shift, 31
  %i.ig = or i1 %i.if, %i.ie
  %or.cond23 = or i1 %i.hz, %i.ig
  br i1 %or.cond23, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.3.0.extract.trunc.i342 = zext nneg i16 %.sroa.771.0.extract.shift to i64
  %i.ih = getelementptr inbounds nuw [64 x i8], ptr %3, i64 %.sroa.3.0.extract.trunc.i342
  %i.ii = zext nneg i16 %.sroa.067.0.extract.trunc.mask to i64
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.ih, i64 %i.ii ; 2 uses
  store i8 31, ptr %i.ij, align 2, !tbaa !26
  %i.ik = trunc i64 %indvars.iv396.a to i8        ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 1
  store i8 %i.ik, ptr %i.il, align 1, !tbaa !27
  %i.im = getelementptr inbounds nuw [64 x i8], ptr %3, i64 %indvars.iv396.a ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 62
  store i8 31, ptr %i.in, align 2, !tbaa !26
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 63
  store i8 %i.ik, ptr %i.io, align 1, !tbaa !27
  br label %.sink.split442

.sink.split442:                                   ; preds = %bb.q, %bb.s
  %i.ip = getelementptr inbounds nuw [64 x i8], ptr %3, i64 %indvars.iv396.a
  %.4312.ph = add nsw i32 %.2310, 1
  %.sink = trunc i32 %.2310 to i16
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 2110
  store i16 %.sink, ptr %i.iq, align 2, !tbaa !10
  br label %bb.t

bb.t:                                             ; preds = %.sink.split442, %bb.r, %bb.p
  %.4312 = phi i32 [ %.2310, %bb.p ], [ %.2310, %bb.r ], [ %.4312.ph, %.sink.split442 ] ; 2 uses
  %indvars.iv.next397.a = add nuw nsw i64 %indvars.iv396.a, 1 ; 2 uses
  %exitcond399.not.a = icmp eq i64 %indvars.iv.next397.a, 32
  br i1 %exitcond399.not.a, label %.preheader351, label %bb.l, !llvm.loop !47

bb.u:                                             ; preds = %.preheader351, %bb.ac
  %indvars.iv400.a = phi i64 [ 1, %.preheader351 ], [ %indvars.iv.next401.a, %bb.ac ] ; 11 uses
  %.5313367 = phi i32 [ %.4312, %.preheader351 ], [ %.9317, %bb.ac ] ; 4 uses
  %i.ir = trunc i64 %indvars.iv400.a to i32
  %i.is = or i32 %i.bn, %i.ir
  %i.it = ashr i32 %i.is, 3
  %i.iu = sext i32 %i.it to i64                   ; 2 uses
  %i.iv = getelementptr inbounds i8, ptr %i.gw, i64 %i.iu
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !11
  %i.ix = zext i8 %i.iw to i32
  %i.iy = trunc nuw nsw i64 %indvars.iv400.a to i32 ; 3 uses
  %i.iz = and i32 %i.iy, 7
  %i.ja = shl nuw nsw i32 1, %i.iz                ; 2 uses
  %i.jb = and i32 %i.ja, %i.ix
  %.not321 = icmp eq i32 %i.jb, 0
  br i1 %.not321, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.jc = call i16 @stbcc__incluster_find(ptr noundef nonnull %3, i32 noundef %i.iy, i32 noundef 0) ; 2 uses
  %.sroa.764.0.extract.shift = lshr i16 %i.jc, 8  ; 3 uses
  %.sroa.060.0.extract.trunc.mask = and i16 %i.jc, 255 ; 4 uses
  %i.jd = zext nneg i16 %.sroa.060.0.extract.trunc.mask to i64
  %i.je = icmp eq i64 %indvars.iv400.a, %i.jd
  %i.jf = icmp eq i16 %.sroa.764.0.extract.shift, 0 ; 2 uses
  %or.cond333 = and i1 %i.jf, %i.je
  br i1 %or.cond333, label %.sink.split445, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.jg = icmp eq i16 %.sroa.060.0.extract.trunc.mask, 0
  %i.jh = icmp eq i16 %.sroa.060.0.extract.trunc.mask, 31
  %or.cond27 = or i1 %i.jg, %i.jh
  %i.ji = icmp eq i16 %.sroa.764.0.extract.shift, 31
  %i.jj = or i1 %i.ji, %or.cond27
  %or.cond35 = or i1 %i.jf, %i.jj
  br i1 %or.cond35, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.3.0.extract.trunc.i344 = zext nneg i16 %.sroa.764.0.extract.shift to i64
  %4 = trunc i64 %indvars.iv400.a to i8           ; 2 uses
  %i.jk = getelementptr inbounds nuw [64 x i8], ptr %3, i64 %.sroa.3.0.extract.trunc.i344
  %i.jl = zext nneg i16 %.sroa.060.0.extract.trunc.mask to i64
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.jk, i64 %i.jl ; 2 uses
  store i8 %4, ptr %i.jm, align 2, !tbaa !26
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 1
  store i8 0, ptr %i.jn, align 1, !tbaa !27
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv400.a ; 2 uses
  store i8 %4, ptr %i.jo, align 2, !tbaa !26
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 1
  store i8 0, ptr %i.jp, align 1, !tbaa !27
  br label %.sink.split445

.sink.split445:                                   ; preds = %bb.v, %bb.x
  %i.jq = add nsw i32 %.5313367, 1
  %i.jr = trunc i32 %.5313367 to i16
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %indvars.iv400.a
  store i16 %i.jr, ptr %i.js, align 2, !tbaa !10
  br label %bb.y

bb.y:                                             ; preds = %.sink.split445, %bb.w, %bb.u
  %.7315 = phi i32 [ %.5313367, %bb.u ], [ %.5313367, %bb.w ], [ %i.jq, %.sink.split445 ] ; 4 uses
  %i.jt = getelementptr inbounds i8, ptr %i.gx, i64 %i.iu
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !11
  %i.jv = zext i8 %i.ju to i32
  %i.jw = and i32 %i.ja, %i.jv
  %.not322 = icmp eq i32 %i.jw, 0
  br i1 %.not322, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.jx = call i16 @stbcc__incluster_find(ptr noundef nonnull %3, i32 noundef %i.iy, i32 noundef 31) ; 2 uses
  %.sroa.7.0.extract.shift = lshr i16 %i.jx, 8    ; 3 uses
  %.sroa.054.0.extract.trunc.mask = and i16 %i.jx, 255 ; 4 uses
  %i.jy = zext nneg i16 %.sroa.054.0.extract.trunc.mask to i64
  %i.jz = icmp eq i64 %indvars.iv400.a, %i.jy
  %i.ka = icmp eq i16 %.sroa.7.0.extract.shift, 31 ; 2 uses
  %or.cond334 = and i1 %i.ka, %i.jz
  br i1 %or.cond334, label %.sink.split448, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.kb = icmp eq i16 %.sroa.054.0.extract.trunc.mask, 0
  %i.kc = icmp eq i16 %.sroa.054.0.extract.trunc.mask, 31
  %or.cond39 = or i1 %i.kb, %i.kc
  %i.kd = icmp eq i16 %.sroa.7.0.extract.shift, 0
  %or.cond43 = or i1 %i.kd, %or.cond39
  %or.cond47 = or i1 %i.ka, %or.cond43
  br i1 %or.cond47, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.3.0.extract.trunc.i346 = zext nneg i16 %.sroa.7.0.extract.shift to i64
  %5 = trunc i64 %indvars.iv400.a to i8           ; 2 uses
  %i.ke = getelementptr inbounds nuw [64 x i8], ptr %3, i64 %.sroa.3.0.extract.trunc.i346
  %i.kf = zext nneg i16 %.sroa.054.0.extract.trunc.mask to i64
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %i.ke, i64 %i.kf ; 2 uses
  store i8 %5, ptr %i.kg, align 2, !tbaa !26
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 1
  store i8 31, ptr %i.kh, align 1, !tbaa !27
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %i.gy, i64 %indvars.iv400.a ; 2 uses
  store i8 %5, ptr %i.ki, align 2, !tbaa !26
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 1
  store i8 31, ptr %i.kj, align 1, !tbaa !27
  br label %.sink.split448

.sink.split448:                                   ; preds = %bb.z, %bb.ab
  %i.kk = add nsw i32 %.7315, 1
  %i.kl = trunc i32 %.7315 to i16
  %i.km = getelementptr inbounds nuw [2 x i8], ptr %i.ec, i64 %indvars.iv400.a
  store i16 %i.kl, ptr %i.km, align 2, !tbaa !10
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split448, %bb.aa, %bb.y
  %.9317 = phi i32 [ %.7315, %bb.y ], [ %.7315, %bb.aa ], [ %i.kk, %.sink.split448 ] ; 5 uses
  %indvars.iv.next401.a = add nuw nsw i64 %indvars.iv400.a, 1 ; 2 uses
  %exitcond403.not.a = icmp eq i64 %indvars.iv.next401.a, 31
  br i1 %exitcond403.not.a, label %bb.ad, label %bb.u, !llvm.loop !48

bb.ad:                                            ; preds = %bb.ac
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 2228244
  %i.ko = sext i32 %2 to i64
  %i.kp = getelementptr inbounds [139392 x i8], ptr %i.kn, i64 %i.ko
  %i.kq = sext i32 %1 to i64
  %i.kr = getelementptr inbounds [4356 x i8], ptr %i.kp, i64 %i.kq ; 6 uses
  %i.ks = trunc i32 %.9317 to i8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 2
  store i8 %i.ks, ptr %i.kt, align 2, !tbaa !13
  %invariant.gep438 = getelementptr [128 x i8], ptr %i.bp, i64 %i.bq
  br label %.preheader350

.preheader350:                                    ; preds = %bb.ad, %bb.ah
  %indvars.iv408.a = phi i64 [ 1, %bb.ad ], [ %indvars.iv.next409.a, %bb.ah ] ; 5 uses
  %.10371 = phi i32 [ %.9317, %bb.ad ], [ %.12, %bb.ah ]
  %i.ku = getelementptr inbounds nuw [64 x i8], ptr %3, i64 %indvars.iv408.a
  %gep = getelementptr [128 x i8], ptr %invariant.gep438, i64 %indvars.iv408.a
  %i.kv = getelementptr inbounds nuw [64 x i8], ptr %i.br, i64 %indvars.iv408.a
  br label %bb.ae

.preheader349:                                    ; preds = %bb.ah
  %invariant.gep439 = getelementptr [128 x i8], ptr %i.bp, i64 %i.bq
  br label %.preheader348

bb.ae:                                            ; preds = %.preheader350, %bb.ag
  %indvars.iv404 = phi i64 [ 1, %.preheader350 ], [ %indvars.iv.next405.a, %bb.ag ] ; 6 uses
  %.11369 = phi i32 [ %.10371, %.preheader350 ], [ %.12, %bb.ag ] ; 4 uses
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.ku, i64 %indvars.iv404 ; 2 uses
  %.sroa.053.0.copyload = load i8, ptr %i.kw, align 2, !tbaa !11
  %i.kx = zext i8 %.sroa.053.0.copyload to i64
  %i.ky = icmp eq i64 %indvars.iv404, %i.kx
  br i1 %i.ky, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kw, i64 1
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !11
  %i.kz = zext i8 %.sroa.4.0.copyload to i64
  %i.la = icmp eq i64 %indvars.iv408.a, %i.kz
  br i1 %i.la, label %.sink.split451, label %bb.ag

.sink.split451:                                   ; preds = %bb.af
  %i.lb = trunc nuw nsw i64 %indvars.iv404 to i32
  %i.lc = or i32 %i.bn, %i.lb
  %i.ld = ashr i32 %i.lc, 3
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds i8, ptr %gep, i64 %i.le
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !11
  %i.lh = zext i8 %i.lg to i32
  %i.li = trunc nuw nsw i64 %indvars.iv404 to i32
  %i.lj = and i32 %i.li, 7
  %i.lk = shl nuw nsw i32 1, %i.lj
  %i.ll = and i32 %i.lk, %i.lh
  %.not320 = icmp ne i32 %i.ll, 0                 ; 2 uses
  %i.lm = trunc i32 %.11369 to i16
  %.sink452 = select i1 %.not320, i16 %i.lm, i16 512
  %i.ln = zext i1 %.not320 to i32
  %.12.ph = add nsw i32 %.11369, %i.ln
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr %i.kv, i64 %indvars.iv404
  store i16 %.sink452, ptr %i.lo, align 2, !tbaa !10
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split451, %bb.af, %bb.ae
  %.12 = phi i32 [ %.11369, %bb.af ], [ %.11369, %bb.ae ], [ %.12.ph, %.sink.split451 ] ; 6 uses
  %indvars.iv.next405.a = add nuw nsw i64 %indvars.iv404, 1 ; 2 uses
  %exitcond407.not.a = icmp eq i64 %indvars.iv.next405.a, 31
  br i1 %exitcond407.not.a, label %bb.ah, label %bb.ae, !llvm.loop !49

bb.ah:                                            ; preds = %bb.ag
  %indvars.iv.next409.a = add nuw nsw i64 %indvars.iv408.a, 1 ; 2 uses
  %exitcond411.not.a = icmp eq i64 %indvars.iv.next409.a, 31
  br i1 %exitcond411.not.a, label %.preheader349, label %.preheader350, !llvm.loop !50

.preheader348:                                    ; preds = %.preheader349, %bb.am
  %indvars.iv416.a = phi i64 [ 0, %.preheader349 ], [ %indvars.iv.next417, %bb.am ] ; 5 uses
  %gep440 = getelementptr [128 x i8], ptr %invariant.gep439, i64 %indvars.iv416.a
  %i.lp = getelementptr inbounds nuw [64 x i8], ptr %i.br, i64 %indvars.iv416.a
  %i.lq = trunc nuw nsw i64 %indvars.iv416.a to i32
  br label %bb.ai

bb.ai:                                            ; preds = %.preheader348, %bb.al
  %indvars.iv412 = phi i64 [ 0, %.preheader348 ], [ %indvars.iv.next413.a, %bb.al ] ; 5 uses
  %i.lr = trunc nuw nsw i64 %indvars.iv412 to i32 ; 2 uses
  %i.ls = call i16 @stbcc__incluster_find(ptr noundef nonnull %3, i32 noundef %i.lr, i32 noundef %i.lq) ; 2 uses
  %.sroa.5.0.extract.shift = lshr i16 %i.ls, 8    ; 2 uses
  %.sroa.5.0.extract.trunc = zext nneg i16 %.sroa.5.0.extract.shift to i64
  %.sroa.050.0.extract.trunc.mask = and i16 %i.ls, 255 ; 2 uses
  %i.lt = zext nneg i16 %.sroa.050.0.extract.trunc.mask to i64
  %.not = icmp eq i64 %indvars.iv412, %i.lt
  %i.lu = zext nneg i16 %.sroa.5.0.extract.shift to i64
  %.not318 = icmp eq i64 %indvars.iv416.a, %i.lu
  %or.cond335 = select i1 %.not, i1 %.not318, i1 false
  br i1 %or.cond335, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.lv = trunc i64 %indvars.iv412 to i32
  %i.lw = or i32 %i.bn, %i.lv
  %i.lx = ashr i32 %i.lw, 3
  %i.ly = sext i32 %i.lx to i64
  %i.lz = getelementptr inbounds i8, ptr %gep440, i64 %i.ly
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !11
  %i.mb = zext i8 %i.ma to i32
  %i.mc = and i32 %i.lr, 7
  %i.md = shl nuw nsw i32 1, %i.mc
  %i.me = and i32 %i.md, %i.mb
  %.not319 = icmp eq i32 %i.me, 0
  br i1 %.not319, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.mf = getelementptr inbounds nuw [64 x i8], ptr %i.br, i64 %.sroa.5.0.extract.trunc
  %i.mg = zext nneg i16 %.sroa.050.0.extract.trunc.mask to i64
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %i.mf, i64 %i.mg
  %i.mi = load i16, ptr %i.mh, align 2, !tbaa !10
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %i.lp, i64 %indvars.iv412
  store i16 %i.mi, ptr %i.mj, align 2, !tbaa !10
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.aj, %bb.ak
  %indvars.iv.next413.a = add nuw nsw i64 %indvars.iv412, 1 ; 2 uses
  %exitcond415.not.a = icmp eq i64 %indvars.iv.next413.a, 32
  br i1 %exitcond415.not.a, label %bb.am, label %bb.ai, !llvm.loop !51

bb.am:                                            ; preds = %bb.al
  %indvars.iv.next417 = add nuw nsw i64 %indvars.iv416.a, 1 ; 2 uses
  %exitcond419.not = icmp eq i64 %indvars.iv.next417, 32
  br i1 %exitcond419.not, label %bb.an, label %.preheader348, !llvm.loop !52

bb.an:                                            ; preds = %bb.am
  %i.mk = trunc i32 %.12 to i16
  store i16 %i.mk, ptr %i.kr, align 4, !tbaa !56
  %i.ml = icmp sgt i32 %.12, 0
  br i1 %i.ml, label %.lr.ph, label %.preheader347

.lr.ph:                                           ; preds = %bb.an
  %i.mm = getelementptr inbounds nuw i8, ptr %i.kr, i64 4 ; 9 uses
  %wide.trip.count = zext nneg i32 %.12 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.mn = icmp ult i32 %.12, 8
  br i1 %i.mn, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.ap

.preheader347.loopexit.unr-lcssa:                 ; preds = %bb.ap
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader347, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader347.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv420.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next421.7, %.preheader347.loopexit.unr-lcssa ]
  %lcmp.mod454 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod454)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.epil.preheader
  %indvars.iv420.epil = phi i64 [ %indvars.iv420.epil.init, %.epil.preheader ], [ %indvars.iv.next421.epil, %bb.ao ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ao ]
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %indvars.iv420.epil ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 4
  store i8 0, ptr %i.mp, align 4, !tbaa !18
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 5
  store i8 0, ptr %i.mq, align 1, !tbaa !23
  %indvars.iv.next421.epil = add nuw nsw i64 %indvars.iv420.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader347, label %bb.ao, !llvm.loop !53

.preheader347:                                    ; preds = %.preheader347.loopexit.unr-lcssa, %bb.ao, %bb.an
  %i.mr = shl nsw i64 %i.bq, 11
  %i.ms = sext i32 %i.bn to i64
  %i.mt = shl nsw i64 %i.ms, 1
  %i.mu = add nsw i64 %i.mr, %i.mt                ; 32 uses
  %i.mv = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep = getelementptr i8, ptr %i.mv, i64 131092
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep, ptr noundef nonnull align 2 dereferenceable(64) %i.br, i64 64, i1 false), !tbaa !10
  %i.mw = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.1 = getelementptr i8, ptr %i.mw, i64 133140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.1, ptr noundef nonnull align 2 dereferenceable(64) %i.bt, i64 64, i1 false), !tbaa !10
  %i.mx = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.2 = getelementptr i8, ptr %i.mx, i64 135188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.2, ptr noundef nonnull align 2 dereferenceable(64) %i.bv, i64 64, i1 false), !tbaa !10
  %i.my = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.3 = getelementptr i8, ptr %i.my, i64 137236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.3, ptr noundef nonnull align 2 dereferenceable(64) %i.bx, i64 64, i1 false), !tbaa !10
  %i.mz = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.4 = getelementptr i8, ptr %i.mz, i64 139284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.4, ptr noundef nonnull align 2 dereferenceable(64) %i.bz, i64 64, i1 false), !tbaa !10
  %i.na = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.5 = getelementptr i8, ptr %i.na, i64 141332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.5, ptr noundef nonnull align 2 dereferenceable(64) %i.cb, i64 64, i1 false), !tbaa !10
  %i.nb = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.6 = getelementptr i8, ptr %i.nb, i64 143380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.6, ptr noundef nonnull align 2 dereferenceable(64) %i.cd, i64 64, i1 false), !tbaa !10
  %i.nc = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.7 = getelementptr i8, ptr %i.nc, i64 145428
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.7, ptr noundef nonnull align 2 dereferenceable(64) %i.cf, i64 64, i1 false), !tbaa !10
  %i.nd = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.8 = getelementptr i8, ptr %i.nd, i64 147476
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.8, ptr noundef nonnull align 2 dereferenceable(64) %i.ch, i64 64, i1 false), !tbaa !10
  %i.ne = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.9 = getelementptr i8, ptr %i.ne, i64 149524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.9, ptr noundef nonnull align 2 dereferenceable(64) %i.cj, i64 64, i1 false), !tbaa !10
  %i.nf = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.10 = getelementptr i8, ptr %i.nf, i64 151572
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.10, ptr noundef nonnull align 2 dereferenceable(64) %i.cl, i64 64, i1 false), !tbaa !10
  %i.ng = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.11 = getelementptr i8, ptr %i.ng, i64 153620
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.11, ptr noundef nonnull align 2 dereferenceable(64) %i.cn, i64 64, i1 false), !tbaa !10
  %i.nh = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.12 = getelementptr i8, ptr %i.nh, i64 155668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.12, ptr noundef nonnull align 2 dereferenceable(64) %i.cp, i64 64, i1 false), !tbaa !10
  %i.ni = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.13 = getelementptr i8, ptr %i.ni, i64 157716
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.13, ptr noundef nonnull align 2 dereferenceable(64) %i.cr, i64 64, i1 false), !tbaa !10
  %i.nj = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.14 = getelementptr i8, ptr %i.nj, i64 159764
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.14, ptr noundef nonnull align 2 dereferenceable(64) %i.ct, i64 64, i1 false), !tbaa !10
  %i.nk = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.15 = getelementptr i8, ptr %i.nk, i64 161812
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.15, ptr noundef nonnull align 2 dereferenceable(64) %i.cv, i64 64, i1 false), !tbaa !10
  %i.nl = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.16 = getelementptr i8, ptr %i.nl, i64 163860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.16, ptr noundef nonnull align 2 dereferenceable(64) %i.cx, i64 64, i1 false), !tbaa !10
  %i.nm = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.17 = getelementptr i8, ptr %i.nm, i64 165908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.17, ptr noundef nonnull align 2 dereferenceable(64) %i.cz, i64 64, i1 false), !tbaa !10
  %i.nn = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.18 = getelementptr i8, ptr %i.nn, i64 167956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.18, ptr noundef nonnull align 2 dereferenceable(64) %i.db, i64 64, i1 false), !tbaa !10
  %i.no = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.19 = getelementptr i8, ptr %i.no, i64 170004
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.19, ptr noundef nonnull align 2 dereferenceable(64) %i.dd, i64 64, i1 false), !tbaa !10
  %i.np = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.20 = getelementptr i8, ptr %i.np, i64 172052
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.20, ptr noundef nonnull align 2 dereferenceable(64) %i.df, i64 64, i1 false), !tbaa !10
  %i.nq = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.21 = getelementptr i8, ptr %i.nq, i64 174100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.21, ptr noundef nonnull align 2 dereferenceable(64) %i.dh, i64 64, i1 false), !tbaa !10
  %i.nr = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.22 = getelementptr i8, ptr %i.nr, i64 176148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.22, ptr noundef nonnull align 2 dereferenceable(64) %i.dj, i64 64, i1 false), !tbaa !10
  %i.ns = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.23 = getelementptr i8, ptr %i.ns, i64 178196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.23, ptr noundef nonnull align 2 dereferenceable(64) %i.dl, i64 64, i1 false), !tbaa !10
  %i.nt = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.24 = getelementptr i8, ptr %i.nt, i64 180244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.24, ptr noundef nonnull align 2 dereferenceable(64) %i.dn, i64 64, i1 false), !tbaa !10
  %i.nu = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.25 = getelementptr i8, ptr %i.nu, i64 182292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.25, ptr noundef nonnull align 2 dereferenceable(64) %i.dp, i64 64, i1 false), !tbaa !10
  %i.nv = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.26 = getelementptr i8, ptr %i.nv, i64 184340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.26, ptr noundef nonnull align 2 dereferenceable(64) %i.dr, i64 64, i1 false), !tbaa !10
  %i.nw = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.27 = getelementptr i8, ptr %i.nw, i64 186388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.27, ptr noundef nonnull align 2 dereferenceable(64) %i.dt, i64 64, i1 false), !tbaa !10
  %i.nx = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.28 = getelementptr i8, ptr %i.nx, i64 188436
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.28, ptr noundef nonnull align 2 dereferenceable(64) %i.dv, i64 64, i1 false), !tbaa !10
  %i.ny = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.29 = getelementptr i8, ptr %i.ny, i64 190484
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.29, ptr noundef nonnull align 2 dereferenceable(64) %i.dx, i64 64, i1 false), !tbaa !10
  %i.nz = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.30 = getelementptr i8, ptr %i.nz, i64 192532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.30, ptr noundef nonnull align 2 dereferenceable(64) %i.dz, i64 64, i1 false), !tbaa !10
  %i.oa = getelementptr i8, ptr %0, i64 %i.mu
  %scevgep.31 = getelementptr i8, ptr %i.oa, i64 194580
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %scevgep.31, ptr noundef nonnull align 2 dereferenceable(64) %i.eb, i64 64, i1 false), !tbaa !10
  %i.ob = and i32 %.9317, 255
  %i.oc = load i16, ptr %i.kr, align 4, !tbaa !56
  %i.od = sext i16 %i.oc to i32                   ; 2 uses
  %i.oe = icmp slt i32 %i.ob, %i.od
  br i1 %i.oe, label %.lr.ph379, label %._crit_edge

bb.ap:                                            ; preds = %bb.ap, %.lr.ph.new
  %indvars.iv420 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next421.7, %bb.ap ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.ap ]
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %indvars.iv420 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 4
  store i8 0, ptr %i.og, align 4, !tbaa !18
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 5
  store i8 0, ptr %i.oh, align 1, !tbaa !23
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %indvars.iv420 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 12
  store i8 0, ptr %i.oj, align 4, !tbaa !18
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oi, i64 13
  store i8 0, ptr %i.ok, align 1, !tbaa !23
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %indvars.iv420 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 20
  store i8 0, ptr %i.om, align 4, !tbaa !18
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 21
  store i8 0, ptr %i.on, align 1, !tbaa !23
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %indvars.iv420 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 28
  store i8 0, ptr %i.op, align 4, !tbaa !18
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oo, i64 29
  store i8 0, ptr %i.oq, align 1, !tbaa !23
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %indvars.iv420 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 36
  store i8 0, ptr %i.os, align 4, !tbaa !18
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 37
  store i8 0, ptr %i.ot, align 1, !tbaa !23
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %indvars.iv420 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 44
  store i8 0, ptr %i.ov, align 4, !tbaa !18
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ou, i64 45
  store i8 0, ptr %i.ow, align 1, !tbaa !23
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %indvars.iv420 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 52
  store i8 0, ptr %i.oy, align 4, !tbaa !18
end_hunk_0
begin_hunk_1_@stbcc__add_clump_connection:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = zext i16 %i.h to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4, !tbaa !18    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 5
  %i.t = load i8, ptr %i.s, align 1, !tbaa !23
  %i.u = icmp eq i8 %i.r, %i.t
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  store i8 1, ptr %i.v, align 1, !tbaa !19
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.w = sext i32 %4 to i64
  %i.x = getelementptr inbounds [2048 x i8], ptr %i.c, i64 %i.w
  %i.y = sext i32 %3 to i64
  %i.z = getelementptr inbounds [2 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !10
  %i.ab = and i16 %i.aa, 4095
  %i.ac = sub nsw i32 %3, %1
  %i.ad = trunc i32 %i.ac to i16
  %i.ae = shl i16 %i.ad, 12
  %i.af = and i16 %i.ae, 12288
  %i.ag = or disjoint i16 %i.af, %i.ab
  %i.ah = sub nsw i32 %4, %2
  %i.ai = trunc i32 %i.ah to i16
  %i.aj = shl i16 %i.ai, 14
  %i.ak = or disjoint i16 %i.ag, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 4100
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 6
  %i.an = load i8, ptr %i.am, align 2, !tbaa !17
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.ao
  %i.aq = add i8 %i.r, 1
  store i8 %i.aq, ptr %i.q, align 4, !tbaa !18
  %i.ar = zext i8 %i.r to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.ar
  store i16 %i.ak, ptr %i.as, align 2, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbcc__remove_clump_connection(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = ashr i32 %1, 5
  %i.b = ashr i32 %2, 5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 131092 ; 2 uses
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds [2048 x i8], ptr %i.c, i64 %i.d
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !10
  %i.i = sext i32 %4 to i64
  %i.j = getelementptr inbounds [2048 x i8], ptr %i.c, i64 %i.i
  %i.k = sext i32 %3 to i64
  %i.l = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2228244
  %i.o = sext i32 %i.b to i64
  %i.p = getelementptr inbounds [139392 x i8], ptr %i.n, i64 %i.o
  %i.q = sext i32 %i.a to i64
  %i.r = getelementptr inbounds [4356 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = zext i16 %i.h to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4100
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  %i.x = load i8, ptr %i.w, align 2, !tbaa !17
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.y ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !18  ; 3 uses
  %.not = icmp eq i8 %i.ab, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ac = sub nsw i32 %4, %2
  %i.ad = sub nsw i32 %3, %1
  %i.ae = shl i32 %i.ad, 30
  %i.af = ashr exact i32 %i.ae, 30
  %i.ag = shl i32 %i.ac, 30
  %i.ah = ashr exact i32 %i.ag, 30
  %wide.trip.count = zext i8 %i.ab to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv
  %i.aj = load i16, ptr %i.ai, align 2            ; 3 uses
  %i.ak = xor i16 %i.aj, %i.m
  %i.al = and i16 %i.ak, 4095
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.an = shl i16 %i.aj, 2
  %i.ao = ashr i16 %i.an, 14
  %i.ap = sext i16 %i.ao to i32
  %i.aq = icmp eq i32 %i.af, %i.ap
  br i1 %i.aq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ar = ashr i16 %i.aj, 14
  %i.as = sext i16 %i.ar to i32
  %i.at = icmp eq i32 %i.ah, %i.as
  br i1 %i.at, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !0

bb.f:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv
  %i.av = add i8 %i.ab, -1                        ; 2 uses
  store i8 %i.av, ptr %i.aa, align 4, !tbaa !18
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !11
  store i16 %i.ay, ptr %i.au, align 2, !tbaa !11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.a, %bb.f
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define i16 @stbcc__incluster_find(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds [64 x i8], ptr %0, i64 %i.a
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %.sroa.03.0.copyload = load i8, ptr %i.d, align 2, !tbaa !11 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 1, !tbaa !11 ; 2 uses
  %i.e = zext i8 %.sroa.03.0.copyload to i32      ; 2 uses
  %i.f = icmp eq i32 %1, %i.e
  %i.g = zext i8 %.sroa.6.0.copyload to i32       ; 2 uses
  %i.h = icmp eq i32 %2, %i.g
  %or.cond = select i1 %i.f, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = zext i8 %.sroa.6.0.copyload to i16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = tail call i16 @stbcc__incluster_find(ptr noundef nonnull %0, i32 noundef %i.e, i32 noundef %i.g) ; 3 uses
  store i16 %i.j, ptr %i.d, align 2
  %.sroa.016.0.extract.trunc = trunc i16 %i.j to i8
  %.sroa.3.0.extract.shift = lshr i16 %i.j, 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.016.0 = phi i8 [ %.sroa.03.0.copyload, %bb.b ], [ %.sroa.016.0.extract.trunc, %bb.c ]
  %.sroa.3.0 = phi i16 [ %i.i, %bb.b ], [ %.sroa.3.0.extract.shift, %bb.c ]
  %.sroa.3.0.insert.shift = shl nuw i16 %.sroa.3.0, 8
  %.sroa.016.0.insert.ext = zext i8 %.sroa.016.0 to i16
  %.sroa.016.0.insert.insert = or disjoint i16 %.sroa.3.0.insert.shift, %.sroa.016.0.insert.ext
  ret i16 %.sroa.016.0.insert.insert
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define void @stbcc__incluster_union(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i16 @stbcc__incluster_find(ptr noundef %0, i32 noundef %1, i32 noundef %2) ; 3 uses
  %.sroa.53.0.extract.shift = lshr i16 %i.a, 8    ; 2 uses
  %i.b = tail call i16 @stbcc__incluster_find(ptr noundef %0, i32 noundef %3, i32 noundef %4) ; 3 uses
  %.sroa.5.0.extract.shift = lshr i16 %i.b, 8
  %i.c = xor i16 %i.b, %i.a
  %i.d = and i16 %i.c, 255
  %i.e = icmp eq i16 %i.d, 0
  %i.f = icmp eq i16 %.sroa.53.0.extract.shift, %.sroa.5.0.extract.shift
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.53.0.extract.trunc = zext nneg i16 %.sroa.53.0.extract.shift to i64
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.53.0.extract.trunc
  %i.h = and i16 %i.a, 255
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.i
  store i16 %i.b, ptr %i.j, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @stbcc__switch_root(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i16 %3) local_unnamed_addr #5 {
bb.a:
  %.sroa.3.0.extract.shift = lshr i16 %3, 8
  %.sroa.3.0.extract.trunc = zext nneg i16 %.sroa.3.0.extract.shift to i64
  %4 = trunc i32 %1 to i8                         ; 2 uses
  %i.a = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.3.0.extract.trunc
  %i.b = and i16 %3, 255
  %i.c = zext nneg i16 %i.b to i64
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.c ; 2 uses
  store i8 %4, ptr %i.d, align 2, !tbaa !26
  %i.e = trunc i32 %2 to i8                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.e, ptr %i.f, align 1, !tbaa !27
  %i.g = sext i32 %2 to i64
  %i.h = getelementptr inbounds [64 x i8], ptr %0, i64 %i.g
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.i ; 2 uses
  store i8 %4, ptr %i.j, align 2, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %i.e, ptr %i.k, align 1, !tbaa !27
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !14}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"short", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!"", !9, i64 0, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 4100}
!13 = !{!12, !5, i64 2}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = !{!"", !5, i64 0, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7}
!17 = !{!16, !5, i64 6}
!18 = !{!16, !5, i64 4}
!19 = !{!12, !5, i64 3}
!20 = !{!"st_stbcc_grid", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !5, i64 20, !5, i64 131092, !5, i64 2228244}
!21 = !{!20, !6, i64 8}
!22 = !{!20, !6, i64 12}
!23 = !{!16, !5, i64 5}
!24 = !{!20, !6, i64 16}
!25 = !{!"", !5, i64 0, !5, i64 1}
!26 = !{!25, !5, i64 0}
!27 = !{!25, !5, i64 1}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !14}
!39 = distinct !{!39, !14}
!40 = distinct !{!40, !14}
!41 = distinct !{!41, !14}
!42 = distinct !{!42, !14}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14}
!45 = distinct !{!45, !14}
!46 = distinct !{!46, !14}
!47 = distinct !{!47, !14}
!48 = distinct !{!48, !14}
!49 = distinct !{!49, !14}
!50 = distinct !{!50, !14}
!51 = distinct !{!51, !14}
!52 = distinct !{!52, !14}
!53 = distinct !{!53, !15}
!54 = distinct !{!54, !14}
!55 = distinct !{!55, !14}
!56 = !{!12, !9, i64 0}
!57 = distinct !{!57, !"LVerDomain"}
!58 = distinct !{!58, !57}
!59 = distinct !{!59, !57}
!60 = distinct !{!60, !57}
!61 = distinct !{!61, !57}
!62 = distinct !{!62, !57}
!63 = distinct !{!63, !57}
!64 = distinct !{!64, !57}
!65 = distinct !{!65, !57}
!66 = distinct !{!66, !57}
!67 = distinct !{!67, !14, !87, !88}
!68 = distinct !{!68, !14, !87, !88}
!69 = distinct !{!69, !14, !87}
!70 = distinct !{!70, !14}
!71 = distinct !{!71, !14}
!72 = distinct !{!72, !14, !90}
!73 = distinct !{!73, !14}
!74 = distinct !{!74, !14, !90}
!75 = !{!20, !6, i64 0}
!76 = !{!20, !6, i64 4}
!77 = !{!58}
!78 = !{!59}
!79 = !{!60}
!80 = !{!61}
!81 = !{!62}
!82 = !{!63}
!83 = !{!64}
!84 = !{!65}
!85 = !{!66}
!86 = !{!65, !64, !63, !62, !61, !60, !59, !58}
!87 = !{!"llvm.loop.isvectorized", i32 1}
!88 = !{!"llvm.loop.unroll.runtime.disable"}
!89 = !{!"branch_weights", i32 8, i32 8}
!90 = !{!"llvm.loop.unswitch.partial.disable"}
end_hunk_1
