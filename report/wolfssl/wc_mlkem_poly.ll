Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/wc_mlkem_poly?download=true
inline.NumInlined: 49
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@mlkem_to_msg:vector.memcheck
  %i.hb = getelementptr inbounds nuw i8, ptr %i.y, i64 124
  %i.hc = load i16, ptr %i.gu, align 2, !tbaa !10, !alias.scope !98
  %i.hd = load i16, ptr %i.gv, align 2, !tbaa !10, !alias.scope !98
  %i.he = load i16, ptr %i.gw, align 2, !tbaa !10, !alias.scope !98
  %i.hf = load i16, ptr %i.gx, align 2, !tbaa !10, !alias.scope !98
  %i.hg = load i16, ptr %i.gy, align 2, !tbaa !10, !alias.scope !98
  %i.hh = load i16, ptr %i.gz, align 2, !tbaa !10, !alias.scope !98
  %i.hi = load i16, ptr %i.ha, align 2, !tbaa !10, !alias.scope !98
  %i.hj = load i16, ptr %i.hb, align 2, !tbaa !10, !alias.scope !98
  %i.hk = insertelement <8 x i16> poison, i16 %i.hc, i64 0
  %i.hl = insertelement <8 x i16> %i.hk, i16 %i.hd, i64 1
  %i.hm = insertelement <8 x i16> %i.hl, i16 %i.he, i64 2
  %i.hn = insertelement <8 x i16> %i.hm, i16 %i.hf, i64 3
  %i.ho = insertelement <8 x i16> %i.hn, i16 %i.hg, i64 4
  %i.hp = insertelement <8 x i16> %i.ho, i16 %i.hh, i64 5
  %i.hq = insertelement <8 x i16> %i.hp, i16 %i.hi, i64 6
  %i.hr = insertelement <8 x i16> %i.hq, i16 %i.hj, i64 7
  %i.hs = zext <8 x i16> %i.hr to <8 x i32>
  %i.ht = mul <8 x i32> %i.hs, splat (i32 1290168)
  %i.hu = add <8 x i32> %i.ht, splat (i32 1073419776)
  %i.hv = lshr <8 x i32> %i.hu, splat (i32 25)
  %i.hw = and <8 x i32> %i.hv, splat (i32 64)
  %i.hx = or <8 x i32> %i.hw, %i.gs               ; 2 uses
  %i.hy = trunc nuw nsw <8 x i32> %i.hx to <8 x i8>
  store <8 x i8> %i.hy, ptr %i.c, align 1, !tbaa !13, !alias.scope !97, !noalias !98
  %i.hz = getelementptr inbounds nuw i8, ptr %i.l, i64 14
  %i.ia = getelementptr inbounds nuw i8, ptr %i.m, i64 30
  %i.ib = getelementptr inbounds nuw i8, ptr %i.o, i64 46
  %i.ic = getelementptr inbounds nuw i8, ptr %i.q, i64 62
  %i.id = getelementptr inbounds nuw i8, ptr %i.s, i64 78
  %i.ie = getelementptr inbounds nuw i8, ptr %i.u, i64 94
  %i.if = getelementptr inbounds nuw i8, ptr %i.w, i64 110
  %i.ig = getelementptr inbounds nuw i8, ptr %i.y, i64 126
  %i.ih = load i16, ptr %i.hz, align 2, !tbaa !10, !alias.scope !98
  %i.ii = load i16, ptr %i.ia, align 2, !tbaa !10, !alias.scope !98
  %i.ij = load i16, ptr %i.ib, align 2, !tbaa !10, !alias.scope !98
  %i.ik = load i16, ptr %i.ic, align 2, !tbaa !10, !alias.scope !98
  %i.il = load i16, ptr %i.id, align 2, !tbaa !10, !alias.scope !98
  %i.im = load i16, ptr %i.ie, align 2, !tbaa !10, !alias.scope !98
  %i.in = load i16, ptr %i.if, align 2, !tbaa !10, !alias.scope !98
  %i.io = load i16, ptr %i.ig, align 2, !tbaa !10, !alias.scope !98
  %i.ip = insertelement <8 x i16> poison, i16 %i.ih, i64 0
  %i.iq = insertelement <8 x i16> %i.ip, i16 %i.ii, i64 1
  %i.ir = insertelement <8 x i16> %i.iq, i16 %i.ij, i64 2
  %i.is = insertelement <8 x i16> %i.ir, i16 %i.ik, i64 3
  %i.it = insertelement <8 x i16> %i.is, i16 %i.il, i64 4
  %i.iu = insertelement <8 x i16> %i.it, i16 %i.im, i64 5
  %i.iv = insertelement <8 x i16> %i.iu, i16 %i.in, i64 6
  %i.iw = insertelement <8 x i16> %i.iv, i16 %i.io, i64 7
  %i.ix = zext <8 x i16> %i.iw to <8 x i32>
  %i.iy = mul <8 x i32> %i.ix, splat (i32 1290168)
  %i.iz = add <8 x i32> %i.iy, splat (i32 1073419776)
  %i.ja = lshr <8 x i32> %i.iz, splat (i32 24)
  %i.jb = and <8 x i32> %i.ja, splat (i32 128)
  %i.jc = or <8 x i32> %i.jb, %i.hx
  %i.jd = trunc nuw <8 x i32> %i.jc to <8 x i8>
  store <8 x i8> %i.jd, ptr %i.c, align 1, !tbaa !13, !alias.scope !97, !noalias !98
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.je = icmp eq i64 %index.next, 32
  br i1 %i.je, label %mlkem_to_msg_c.exit, label %vector.body, !llvm.loop !95

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ 0, %vector.memcheck ] ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i ; 9 uses
  store i8 0, ptr %i.jf, align 1, !tbaa !13
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 4
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i ; 8 uses
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !10
  %i.ji = zext i16 %i.jh to i32
  %i.jj = mul i32 %i.ji, 1290168
  %i.jk = add i32 %i.jj, 1073419776
  %i.jl = lshr i32 %i.jk, 31                      ; 2 uses
  %i.jm = trunc nuw nsw i32 %i.jl to i8
  store i8 %i.jm, ptr %i.jf, align 1, !tbaa !13
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jg, i64 2
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !10
  %i.jp = zext i16 %i.jo to i32
  %i.jq = mul i32 %i.jp, 1290168
  %i.jr = add i32 %i.jq, 1073419776
  %i.js = lshr i32 %i.jr, 30
  %i.jt = and i32 %i.js, 2
  %i.ju = or disjoint i32 %i.jt, %i.jl            ; 2 uses
  %i.jv = trunc nuw nsw i32 %i.ju to i8
  store i8 %i.jv, ptr %i.jf, align 1, !tbaa !13
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !10
  %i.jy = zext i16 %i.jx to i32
  %i.jz = mul i32 %i.jy, 1290168
  %i.ka = add i32 %i.jz, 1073419776
  %i.kb = lshr i32 %i.ka, 29
  %i.kc = and i32 %i.kb, 4
  %i.kd = or disjoint i32 %i.kc, %i.ju            ; 2 uses
  %i.ke = trunc nuw nsw i32 %i.kd to i8
  store i8 %i.ke, ptr %i.jf, align 1, !tbaa !13
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jg, i64 6
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !10
  %i.kh = zext i16 %i.kg to i32
  %i.ki = mul i32 %i.kh, 1290168
  %i.kj = add i32 %i.ki, 1073419776
  %i.kk = lshr i32 %i.kj, 28
  %i.kl = and i32 %i.kk, 8
  %i.km = or disjoint i32 %i.kl, %i.kd            ; 2 uses
  %i.kn = trunc nuw nsw i32 %i.km to i8
  store i8 %i.kn, ptr %i.jf, align 1, !tbaa !13
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !10
  %i.kq = zext i16 %i.kp to i32
  %i.kr = mul i32 %i.kq, 1290168
  %i.ks = add i32 %i.kr, 1073419776
  %i.kt = lshr i32 %i.ks, 27
  %i.ku = and i32 %i.kt, 16
  %i.kv = or disjoint i32 %i.ku, %i.km            ; 2 uses
  %i.kw = trunc nuw nsw i32 %i.kv to i8
  store i8 %i.kw, ptr %i.jf, align 1, !tbaa !13
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jg, i64 10
  %i.ky = load i16, ptr %i.kx, align 2, !tbaa !10
  %i.kz = zext i16 %i.ky to i32
  %i.la = mul i32 %i.kz, 1290168
  %i.lb = add i32 %i.la, 1073419776
  %i.lc = lshr i32 %i.lb, 26
  %i.ld = and i32 %i.lc, 32
  %i.le = or disjoint i32 %i.ld, %i.kv            ; 2 uses
  %i.lf = trunc nuw nsw i32 %i.le to i8
  store i8 %i.lf, ptr %i.jf, align 1, !tbaa !13
  %i.lg = getelementptr inbounds nuw i8, ptr %i.jg, i64 12
  %i.lh = load i16, ptr %i.lg, align 2, !tbaa !10
  %i.li = zext i16 %i.lh to i32
  %i.lj = mul i32 %i.li, 1290168
  %i.lk = add i32 %i.lj, 1073419776
  %i.ll = lshr i32 %i.lk, 25
  %i.lm = and i32 %i.ll, 64
  %i.ln = or i32 %i.lm, %i.le                     ; 2 uses
  %i.lo = trunc nuw nsw i32 %i.ln to i8
  store i8 %i.lo, ptr %i.jf, align 1, !tbaa !13
  %i.lp = getelementptr inbounds nuw i8, ptr %i.jg, i64 14
  %i.lq = load i16, ptr %i.lp, align 2, !tbaa !10
  %i.lr = zext i16 %i.lq to i32
  %i.ls = mul i32 %i.lr, 1290168
  %i.lt = add i32 %i.ls, 1073419776
  %i.lu = lshr i32 %i.lt, 24
  %i.lv = and i32 %i.lu, 128
  %i.lw = or i32 %i.lv, %i.ln
  %i.lx = trunc nuw i32 %i.lw to i8
  store i8 %i.lx, ptr %i.jf, align 1, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %mlkem_to_msg_c.exit, label %scalar.ph, !llvm.loop !96

mlkem_to_msg_c.exit:                              ; preds = %vector.body, %scalar.ph
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @mlkem_from_bytes(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.preheader.i.preheader, label %mlkem_from_bytes_c.exit

.preheader.i.preheader:                           ; preds = %bb.a
  %i.b = add nsw i32 %2, -1
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = shl nuw nsw i64 %i.c, 9
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %scevgep = getelementptr i8, ptr %i.e, i64 512
  %i.f = mul nuw nsw i64 %i.c, 384
  %i.g = getelementptr i8, ptr %1, i64 %i.f
  %scevgep3 = getelementptr i8, ptr %i.g, i64 384
  %bound0 = icmp ult ptr %0, %scevgep3
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b, %.preheader.i.preheader
  %.024.i = phi i32 [ %i.cg, %bb.b ], [ 0, %.preheader.i.preheader ]
  %.01923.i = phi ptr [ %i.ce, %bb.b ], [ %0, %.preheader.i.preheader ] ; 3 uses
  %.02022.i = phi ptr [ %i.cf, %bb.b ], [ %1, %.preheader.i.preheader ] ; 6 uses
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 6 uses
  %i.h = mul nuw nsw i64 %index, 3
  %i.i = mul nuw i64 %index, 3
  %i.j = mul nuw i64 %index, 3
  %i.k = mul nuw i64 %index, 3
  %i.l = getelementptr inbounds nuw i8, ptr %.02022.i, i64 %i.h ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02022.i, i64 %i.i ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.o = getelementptr inbounds nuw i8, ptr %.02022.i, i64 %i.j ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  %i.q = getelementptr inbounds nuw i8, ptr %.02022.i, i64 %i.k ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 9
  %i.s = load i8, ptr %i.l, align 1, !tbaa !13, !alias.scope !105
  %i.t = load i8, ptr %i.n, align 1, !tbaa !13, !alias.scope !105
  %i.u = load i8, ptr %i.p, align 1, !tbaa !13, !alias.scope !105
  %i.v = load i8, ptr %i.r, align 1, !tbaa !13, !alias.scope !105
  %i.w = insertelement <4 x i8> poison, i8 %i.s, i64 0
  %i.x = insertelement <4 x i8> %i.w, i8 %i.t, i64 1
  %i.y = insertelement <4 x i8> %i.x, i8 %i.u, i64 2
  %i.z = insertelement <4 x i8> %i.y, i8 %i.v, i64 3
  %i.aa = zext <4 x i8> %i.z to <4 x i16>
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 7 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 10 ; 2 uses
  %i.af = load i8, ptr %i.ab, align 1, !tbaa !13, !alias.scope !105
  %i.ag = load i8, ptr %i.ac, align 1, !tbaa !13, !alias.scope !105
  %i.ah = load i8, ptr %i.ad, align 1, !tbaa !13, !alias.scope !105
  %i.ai = load i8, ptr %i.ae, align 1, !tbaa !13, !alias.scope !105
  %i.aj = insertelement <4 x i8> poison, i8 %i.af, i64 0
  %i.ak = insertelement <4 x i8> %i.aj, i8 %i.ag, i64 1
  %i.al = insertelement <4 x i8> %i.ak, i8 %i.ah, i64 2
  %i.am = insertelement <4 x i8> %i.al, i8 %i.ai, i64 3
  %i.an = zext <4 x i8> %i.am to <4 x i16>
  %i.ao = shl nuw <4 x i16> %i.an, splat (i16 8)
  %i.ap = and <4 x i16> %i.ao, splat (i16 3840)
  %i.aq = or disjoint <4 x i16> %i.ap, %i.aa
  %i.ar = shl nuw nsw i64 %index, 2
  %i.as = getelementptr inbounds nuw i8, ptr %.01923.i, i64 %i.ar
  %3 = load i8, ptr %i.ab, align 1, !tbaa !13, !alias.scope !105
  %4 = load i8, ptr %i.ac, align 1, !tbaa !13, !alias.scope !105
  %5 = load i8, ptr %i.ad, align 1, !tbaa !13, !alias.scope !105
  %6 = load i8, ptr %i.ae, align 1, !tbaa !13, !alias.scope !105
  %7 = insertelement <4 x i8> poison, i8 %3, i64 0
  %8 = insertelement <4 x i8> %7, i8 %4, i64 1
  %9 = insertelement <4 x i8> %8, i8 %5, i64 2
  %10 = insertelement <4 x i8> %9, i8 %6, i64 3
  %i.at = lshr <4 x i8> %10, splat (i8 4)
  %i.au = zext nneg <4 x i8> %i.at to <4 x i16>
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 5
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 11
  %i.az = load i8, ptr %i.av, align 1, !tbaa !13, !alias.scope !105
  %i.ba = load i8, ptr %i.aw, align 1, !tbaa !13, !alias.scope !105
  %i.bb = load i8, ptr %i.ax, align 1, !tbaa !13, !alias.scope !105
  %i.bc = load i8, ptr %i.ay, align 1, !tbaa !13, !alias.scope !105
  %i.bd = insertelement <4 x i8> poison, i8 %i.az, i64 0
  %i.be = insertelement <4 x i8> %i.bd, i8 %i.ba, i64 1
  %i.bf = insertelement <4 x i8> %i.be, i8 %i.bb, i64 2
  %i.bg = insertelement <4 x i8> %i.bf, i8 %i.bc, i64 3
  %i.bh = zext <4 x i8> %i.bg to <4 x i16>
  %i.bi = shl nuw nsw <4 x i16> %i.bh, splat (i16 4)
  %i.bj = or disjoint <4 x i16> %i.bi, %i.au
  %interleaved.vec = shufflevector <4 x i16> %i.aq, <4 x i16> %i.bj, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.as, align 2, !tbaa !10, !alias.scope !106, !noalias !105
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, 124
  br i1 %i.bk, label %scalar.ph.preheader, label %vector.body, !llvm.loop !102

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 124, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bl = mul nuw nsw i64 %indvars.iv.i, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %.02022.i, i64 %i.bl ; 3 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !13
  %i.bo = zext i8 %i.bn to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !13
  %i.br = zext i8 %i.bq to i16
  %i.bs = shl nuw i16 %i.br, 8
  %.masked.i = and i16 %i.bs, 3840
  %i.bt = or disjoint i16 %.masked.i, %i.bo
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 2
  %i.bu = getelementptr inbounds nuw i8, ptr %.01923.i, i64 %.idx.i ; 2 uses
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !10
  %i.bv = load i8, ptr %i.bp, align 1, !tbaa !13
  %i.bw = lshr i8 %i.bv, 4
  %i.bx = zext nneg i8 %i.bw to i16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !13
  %i.ca = zext i8 %i.bz to i16
  %i.cb = shl nuw nsw i16 %i.ca, 4
  %i.cc = or disjoint i16 %i.cb, %i.bx
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  store i16 %i.cc, ptr %i.cd, align 2, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 128
  br i1 %exitcond.not.i, label %bb.b, label %scalar.ph, !llvm.loop !103

bb.b:                                             ; preds = %scalar.ph
  %i.ce = getelementptr inbounds nuw i8, ptr %.01923.i, i64 512
  %i.cf = getelementptr inbounds nuw i8, ptr %.02022.i, i64 384
  %i.cg = add nuw nsw i32 %.024.i, 1              ; 2 uses
  %exitcond26.not.i = icmp eq i32 %i.cg, %2
  br i1 %exitcond26.not.i, label %mlkem_from_bytes_c.exit, label %vector.memcheck, !llvm.loop !104

mlkem_from_bytes_c.exit:                          ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @mlkem_to_bytes(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.i, label %mlkem_to_bytes_c.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.027.i = phi ptr [ %i.ag, %bb.c ], [ %0, %bb.a ] ; 3 uses
  %.02126.i = phi ptr [ %i.af, %bb.c ], [ %1, %bb.a ] ; 4 uses
  %.02225.i = phi i32 [ %i.ah, %bb.c ], [ 0, %bb.a ]
  tail call fastcc void @mlkem_csubq_c(ptr noundef %.02126.i)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %bb.b ] ; 4 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 2
  %i.b = getelementptr inbounds nuw i8, ptr %.02126.i, i64 %.idx.i ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !10   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !10   ; 2 uses
  %i.f = trunc i16 %i.c to i8
  %i.g = mul nuw nsw i64 %indvars.iv.i, 3
  %i.h = getelementptr inbounds nuw i8, ptr %.027.i, i64 %i.g ; 3 uses
  store i8 %i.f, ptr %i.h, align 1, !tbaa !13
  %i.i = lshr i16 %i.c, 8
  %i.j = shl i16 %i.e, 4
  %i.k = or i16 %i.j, %i.i
  %i.l = trunc i16 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store i8 %i.l, ptr %i.m, align 1, !tbaa !13
  %i.n = lshr i16 %i.e, 4
  %i.o = trunc i16 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store i8 %i.o, ptr %i.p, align 1, !tbaa !13
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %.idx.i.1 = shl nuw nsw i64 %indvars.iv.next.i, 2
  %i.q = getelementptr inbounds nuw i8, ptr %.02126.i, i64 %.idx.i.1 ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !10   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !10   ; 2 uses
  %i.u = trunc i16 %i.r to i8
  %i.v = mul nuw nsw i64 %indvars.iv.next.i, 3
  %i.w = getelementptr inbounds nuw i8, ptr %.027.i, i64 %i.v ; 3 uses
  store i8 %i.u, ptr %i.w, align 1, !tbaa !13
  %i.x = lshr i16 %i.r, 8
  %i.y = shl i16 %i.t, 4
  %i.z = or i16 %i.y, %i.x
  %i.aa = trunc i16 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !13
  %i.ac = lshr i16 %i.t, 4
  %i.ad = trunc i16 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !13
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 128
  br i1 %exitcond.not.i.1, label %bb.c, label %bb.b, !llvm.loop !107

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %.02126.i, i64 512
  %i.ag = getelementptr inbounds nuw i8, ptr %.027.i, i64 384
  %i.ah = add nuw nsw i32 %.02225.i, 1            ; 2 uses
  %exitcond29.not.i = icmp eq i32 %i.ah, %2
  br i1 %exitcond29.not.i, label %mlkem_to_bytes_c.exit, label %.lr.ph.i, !llvm.loop !108

mlkem_to_bytes_c.exit:                            ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -134, 1) i32 @mlkem_check_reduced(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = shl i32 %1, 8
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !109

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.d = load i16, ptr %i.c, align 2, !tbaa !10
  %i.e = icmp sgt i16 %i.d, 3328
  br i1 %i.e, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.05 = phi i32 [ 0, %bb.a ], [ -134, %.lr.ph ], [ 0, %bb.b ]
  ret i32 %.05
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @mlkem_ntt(ptr nofree noundef captures(none) %0) unnamed_addr #1 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 9 uses
  %wide.load = load <8 x i16>, ptr %i.a, align 2, !tbaa !10 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %wide.load464 = load <8 x i16>, ptr %i.b, align 2, !tbaa !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %wide.load465 = load <8 x i16>, ptr %i.c, align 2, !tbaa !10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %wide.load466 = load <8 x i16>, ptr %i.d, align 2, !tbaa !10 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  %wide.load467 = load <8 x i16>, ptr %i.e, align 2, !tbaa !10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 320 ; 2 uses
  %wide.load468 = load <8 x i16>, ptr %i.f, align 2, !tbaa !10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 384 ; 2 uses
  %wide.load469 = load <8 x i16>, ptr %i.g, align 2, !tbaa !10 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 448 ; 2 uses
  %wide.load470 = load <8 x i16>, ptr %i.h, align 2, !tbaa !10 ; 2 uses
  %i.i = sext <8 x i16> %wide.load467 to <8 x i32>
  %i.j = mul nsw <8 x i32> %i.i, splat (i32 2571)
  %i.k = mul <8 x i16> %wide.load467, splat (i16 31499)
  %i.l = sext <8 x i16> %i.k to <8 x i32>
  %i.m = mul nsw <8 x i32> %i.l, splat (i32 -3329)
  %i.n = add nsw <8 x i32> %i.m, %i.j
  %i.o = sext <8 x i16> %wide.load468 to <8 x i32>
  %i.p = mul nsw <8 x i32> %i.o, splat (i32 2571)
  %i.q = mul <8 x i16> %wide.load468, splat (i16 31499)
  %i.r = sext <8 x i16> %i.q to <8 x i32>
  %i.s = mul nsw <8 x i32> %i.r, splat (i32 -3329)
  %i.t = add nsw <8 x i32> %i.s, %i.p
  %i.u = sext <8 x i16> %wide.load469 to <8 x i32>
end_hunk_0
