Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pred?download=true
loop-unroll.NumCompletelyUnrolled: 290
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 348
begin_hunk_0_@pred_planar_2_9:bb.a
  %i.go = mul nuw nsw i32 %i.gn, 10
  %i.gp = load i16, ptr %i.k, align 2, !tbaa !82
  %i.gq = zext i16 %i.gp to i32
  %i.gr = mul nuw nsw i32 %i.ac, %i.gq
  %i.gs = load i16, ptr %i.b, align 2, !tbaa !82
  %i.gt = zext i16 %i.gs to i32
  %i.gu = mul nuw nsw i32 %i.ag, %i.gt
  %i.gv = add nuw nsw i32 %i.gl, 16
  %i.gw = add nuw nsw i32 %i.gv, %i.go
  %i.gx = add nuw nsw i32 %i.gw, %i.gr
  %i.gy = add nuw nsw i32 %i.gx, %i.gu
  %i.gz = lshr i32 %i.gy, 5
  %i.ha = trunc i32 %i.gz to i16
  %i.hb = getelementptr i8, ptr %i.t, i64 18
  store i16 %i.ha, ptr %i.hb, align 2, !tbaa !82
  %i.hc = load i16, ptr %i.r, align 2, !tbaa !82
  %i.hd = zext i16 %i.hc to i32
  %i.he = mul nuw nsw i32 %i.hd, 5
  %i.hf = load i16, ptr %i.a, align 2, !tbaa !82
  %i.hg = zext i16 %i.hf to i32
  %i.hh = mul nuw nsw i32 %i.hg, 11
  %i.hi = load i16, ptr %i.l, align 2, !tbaa !82
  %i.hj = zext i16 %i.hi to i32
  %i.hk = mul nuw nsw i32 %i.ac, %i.hj
  %i.hl = load i16, ptr %i.b, align 2, !tbaa !82
  %i.hm = zext i16 %i.hl to i32
  %i.hn = mul nuw nsw i32 %i.ag, %i.hm
  %i.ho = add nuw nsw i32 %i.he, 16
  %i.hp = add nuw nsw i32 %i.ho, %i.hh
  %i.hq = add nuw nsw i32 %i.hp, %i.hk
  %i.hr = add nuw nsw i32 %i.hq, %i.hn
  %i.hs = lshr i32 %i.hr, 5
  %i.ht = trunc i32 %i.hs to i16
  %i.hu = getelementptr i8, ptr %i.t, i64 20
  store i16 %i.ht, ptr %i.hu, align 2, !tbaa !82
  %i.hv = load i16, ptr %i.r, align 2, !tbaa !82
  %i.hw = zext i16 %i.hv to i32
  %i.hx = shl nuw nsw i32 %i.hw, 2
  %i.hy = load i16, ptr %i.a, align 2, !tbaa !82
  %i.hz = zext i16 %i.hy to i32
  %i.ia = mul nuw nsw i32 %i.hz, 12
  %i.ib = load i16, ptr %i.m, align 2, !tbaa !82
  %i.ic = zext i16 %i.ib to i32
  %i.id = mul nuw nsw i32 %i.ac, %i.ic
  %i.ie = load i16, ptr %i.b, align 2, !tbaa !82
  %i.if = zext i16 %i.ie to i32
  %i.ig = mul nuw nsw i32 %i.ag, %i.if
  %i.ih = add nuw nsw i32 %i.hx, 16
  %i.ii = add nuw nsw i32 %i.ih, %i.ia
  %i.ij = add nuw nsw i32 %i.ii, %i.id
  %i.ik = add nuw nsw i32 %i.ij, %i.ig
  %i.il = lshr i32 %i.ik, 5
  %i.im = trunc i32 %i.il to i16
  %i.in = getelementptr i8, ptr %i.t, i64 22
  store i16 %i.im, ptr %i.in, align 2, !tbaa !82
  %i.io = load i16, ptr %i.r, align 2, !tbaa !82
  %i.ip = zext i16 %i.io to i32
  %i.iq = mul nuw nsw i32 %i.ip, 3
  %i.ir = load i16, ptr %i.a, align 2, !tbaa !82
  %i.is = zext i16 %i.ir to i32
  %i.it = mul nuw nsw i32 %i.is, 13
  %i.iu = load i16, ptr %i.n, align 2, !tbaa !82
  %i.iv = zext i16 %i.iu to i32
  %i.iw = mul nuw nsw i32 %i.ac, %i.iv
  %i.ix = load i16, ptr %i.b, align 2, !tbaa !82
  %i.iy = zext i16 %i.ix to i32
  %i.iz = mul nuw nsw i32 %i.ag, %i.iy
  %i.ja = add nuw nsw i32 %i.iq, 16
  %i.jb = add nuw nsw i32 %i.ja, %i.it
  %i.jc = add nuw nsw i32 %i.jb, %i.iw
  %i.jd = add nuw nsw i32 %i.jc, %i.iz
  %i.je = lshr i32 %i.jd, 5
  %i.jf = trunc i32 %i.je to i16
  %i.jg = getelementptr i8, ptr %i.t, i64 24
  store i16 %i.jf, ptr %i.jg, align 2, !tbaa !82
  %i.jh = load i16, ptr %i.r, align 2, !tbaa !82
  %i.ji = zext i16 %i.jh to i32
  %i.jj = shl nuw nsw i32 %i.ji, 1
  %i.jk = load i16, ptr %i.a, align 2, !tbaa !82
  %i.jl = zext i16 %i.jk to i32
  %i.jm = mul nuw nsw i32 %i.jl, 14
  %i.jn = load i16, ptr %i.o, align 2, !tbaa !82
  %i.jo = zext i16 %i.jn to i32
  %i.jp = mul nuw nsw i32 %i.ac, %i.jo
  %i.jq = load i16, ptr %i.b, align 2, !tbaa !82
  %i.jr = zext i16 %i.jq to i32
  %i.js = mul nuw nsw i32 %i.ag, %i.jr
  %i.jt = add nuw nsw i32 %i.jj, 16
  %i.ju = add nuw nsw i32 %i.jt, %i.jm
  %i.jv = add nuw nsw i32 %i.ju, %i.jp
  %i.jw = add nuw nsw i32 %i.jv, %i.js
  %i.jx = lshr i32 %i.jw, 5
  %i.jy = trunc i32 %i.jx to i16
  %i.jz = getelementptr i8, ptr %i.t, i64 26
  store i16 %i.jy, ptr %i.jz, align 2, !tbaa !82
  %i.ka = load i16, ptr %i.r, align 2, !tbaa !82
  %i.kb = zext i16 %i.ka to i32
  %i.kc = load i16, ptr %i.a, align 2, !tbaa !82
  %i.kd = zext i16 %i.kc to i32
  %i.ke = mul nuw nsw i32 %i.kd, 15
  %i.kf = load i16, ptr %i.p, align 2, !tbaa !82
  %i.kg = zext i16 %i.kf to i32
  %i.kh = mul nuw nsw i32 %i.ac, %i.kg
  %i.ki = load i16, ptr %i.b, align 2, !tbaa !82
  %i.kj = zext i16 %i.ki to i32
  %i.kk = mul nuw nsw i32 %i.ag, %i.kj
  %i.kl = add nuw nsw i32 %i.kb, 16
  %i.km = add nuw nsw i32 %i.kl, %i.ke
  %i.kn = add nuw nsw i32 %i.km, %i.kh
  %i.ko = add nuw nsw i32 %i.kn, %i.kk
  %i.kp = lshr i32 %i.ko, 5
  %i.kq = trunc i32 %i.kp to i16
  %i.kr = getelementptr i8, ptr %i.t, i64 28
  store i16 %i.kq, ptr %i.kr, align 2, !tbaa !82
  %i.ks = load i16, ptr %i.a, align 2, !tbaa !82
  %i.kt = zext i16 %i.ks to i32
  %i.ku = shl nuw nsw i32 %i.kt, 4
  %i.kv = load i16, ptr %i.q, align 2, !tbaa !82
  %i.kw = zext i16 %i.kv to i32
  %i.kx = mul nuw nsw i32 %i.ac, %i.kw
  %i.ky = load i16, ptr %i.b, align 2, !tbaa !82
  %i.kz = zext i16 %i.ky to i32
  %i.la = mul nuw nsw i32 %i.ag, %i.kz
  %i.lb = add nuw nsw i32 %i.ku, 16
  %i.lc = add nuw nsw i32 %i.lb, %i.kx
  %i.ld = add nuw nsw i32 %i.lc, %i.la
  %i.le = lshr i32 %i.ld, 5
  %i.lf = trunc i32 %i.le to i16
  %i.lg = getelementptr i8, ptr %i.t, i64 30
  store i16 %i.lf, ptr %i.lg, align 2, !tbaa !82
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %pred_planar_9.exit, label %.preheader, !llvm.loop !28

pred_planar_9.exit:                               ; preds = %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_planar_3_9(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.c = insertelement <2 x ptr> poison, ptr %2, i64 0
  %i.d = insertelement <2 x ptr> %i.c, ptr %1, i64 1 ; 2 uses
  %i.e = getelementptr i8, <2 x ptr> %i.d, <2 x i64> <i64 64, i64 66>
  %scevgep19 = getelementptr i8, ptr %2, i64 66
  %i.f = mul i64 %3, 62
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %scevgep20 = getelementptr i8, ptr %i.g, i64 64 ; 2 uses
  %i.h = insertelement <2 x ptr> poison, ptr %0, i64 0
  %i.i = shufflevector <2 x ptr> %i.h, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.j = insertelement <2 x ptr> poison, ptr %scevgep20, i64 0
  %i.k = shufflevector <2 x ptr> %i.j, <2 x ptr> poison, <2 x i32> zeroinitializer
  %bound0 = icmp ult ptr %0, %scevgep19
  %bound1 = icmp ult ptr %i.b, %scevgep20
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %3, 4611686018427387904
  %stride.check = icmp ne i64 %.mask, 0
  %i.l = or i1 %found.conflict, %stride.check
  %i.m = icmp ult <2 x ptr> %i.i, %i.e
  %i.n = icmp ult <2 x ptr> %i.d, %i.k
  %i.o = and <2 x i1> %i.m, %i.n                  ; 2 uses
  %i.p = extractelement <2 x i1> %i.o, i64 0
  %conflict.rdx = or i1 %i.l, %i.p
  %i.q = extractelement <2 x i1> %i.o, i64 1
  %conflict.rdx27 = or i1 %conflict.rdx, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %middle.block
  %indvars.iv6 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next7, %middle.block ] ; 4 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv6 ; 2 uses
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1 ; 3 uses
  %i.v = mul nsw i64 %3, %indvars.iv6
  %i.w = getelementptr [2 x i8], ptr %0, i64 %i.v ; 5 uses
  %i.x = trunc i64 %indvars.iv6 to i32
  %i.y = sub i32 31, %i.x                         ; 2 uses
  %i.z = trunc nuw nsw i64 %indvars.iv.next7 to i32 ; 2 uses
  br i1 %conflict.rdx27, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.preheader
  %broadcast.splatinsert34 = insertelement <8 x i32> poison, i32 %i.y, i64 0
  %broadcast.splat35 = shufflevector <8 x i32> %broadcast.splatinsert34, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aa = load i16, ptr %i.b, align 2, !tbaa !82, !alias.scope !278
  %broadcast.splatinsert32 = insertelement <8 x i16> poison, i16 %i.aa, i64 0
  %broadcast.splat33 = shufflevector <8 x i16> %broadcast.splatinsert32, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ab = zext <8 x i16> %broadcast.splat33 to <8 x i32>
  %i.ac = mul nuw nsw <8 x i32> %broadcast.splat, %i.ab ; 4 uses
  %i.ad = load i16, ptr %i.a, align 2, !tbaa !82, !alias.scope !279
  %broadcast.splatinsert30 = insertelement <8 x i16> poison, i16 %i.ad, i64 0
  %broadcast.splat31 = shufflevector <8 x i16> %broadcast.splatinsert30, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ae = zext <8 x i16> %broadcast.splat31 to <8 x i32> ; 4 uses
  %i.af = load i16, ptr %i.u, align 2, !tbaa !82, !alias.scope !280
  %broadcast.splatinsert28 = insertelement <8 x i16> poison, i16 %i.af, i64 0
  %broadcast.splat29 = shufflevector <8 x i16> %broadcast.splatinsert28, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ag = zext <8 x i16> %broadcast.splat29 to <8 x i32> ; 4 uses
  %i.ah = mul nuw nsw <8 x i32> %i.ag, <i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24>
  %i.ai = mul nuw nsw <8 x i32> %i.ae, <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>
  %wide.load = load <8 x i16>, ptr %1, align 2, !tbaa !82, !alias.scope !279
  %i.aj = zext <8 x i16> %wide.load to <8 x i32>
  %i.ak = mul nuw nsw <8 x i32> %broadcast.splat35, %i.aj
  %i.al = add nuw nsw <8 x i32> %i.ah, splat (i32 32)
  %i.am = add nuw nsw <8 x i32> %i.al, %i.ai
  %i.an = add nuw nsw <8 x i32> %i.am, %i.ak
  %i.ao = add nuw nsw <8 x i32> %i.an, %i.ac
  %i.ap = lshr <8 x i32> %i.ao, splat (i32 6)
  %i.aq = trunc <8 x i32> %i.ap to <8 x i16>
  store <8 x i16> %i.aq, ptr %i.w, align 2, !tbaa !82, !alias.scope !281, !noalias !282
  %i.ar = mul nuw nsw <8 x i32> %i.ag, <i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16>
  %i.as = mul nuw nsw <8 x i32> %i.ae, <i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %wide.load.1 = load <8 x i16>, ptr %i.r, align 2, !tbaa !82, !alias.scope !279
  %i.at = zext <8 x i16> %wide.load.1 to <8 x i32>
  %i.au = mul nuw nsw <8 x i32> %broadcast.splat35, %i.at
  %i.av = add nuw nsw <8 x i32> %i.ar, splat (i32 32)
  %i.aw = add nuw nsw <8 x i32> %i.av, %i.as
  %i.ax = add nuw nsw <8 x i32> %i.aw, %i.au
  %i.ay = add nuw nsw <8 x i32> %i.ax, %i.ac
  %i.az = lshr <8 x i32> %i.ay, splat (i32 6)
  %i.ba = trunc <8 x i32> %i.az to <8 x i16>
  %i.bb = getelementptr i8, ptr %i.w, i64 16
  store <8 x i16> %i.ba, ptr %i.bb, align 2, !tbaa !82, !alias.scope !281, !noalias !282
  %i.bc = mul nuw nsw <8 x i32> %i.ag, <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  %i.bd = mul nuw nsw <8 x i32> %i.ae, <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %wide.load.2 = load <8 x i16>, ptr %i.s, align 2, !tbaa !82, !alias.scope !279
  %i.be = zext <8 x i16> %wide.load.2 to <8 x i32>
  %i.bf = mul nuw nsw <8 x i32> %broadcast.splat35, %i.be
  %i.bg = add nuw nsw <8 x i32> %i.bc, splat (i32 32)
  %i.bh = add nuw nsw <8 x i32> %i.bg, %i.bd
  %i.bi = add nuw nsw <8 x i32> %i.bh, %i.bf
  %i.bj = add nuw nsw <8 x i32> %i.bi, %i.ac
  %i.bk = lshr <8 x i32> %i.bj, splat (i32 6)
  %i.bl = trunc <8 x i32> %i.bk to <8 x i16>
  %i.bm = getelementptr i8, ptr %i.w, i64 32
  store <8 x i16> %i.bl, ptr %i.bm, align 2, !tbaa !82, !alias.scope !281, !noalias !282
  %i.bn = mul nuw nsw <8 x i32> %i.ag, <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bo = mul nuw nsw <8 x i32> %i.ae, <i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32>
  %wide.load.3 = load <8 x i16>, ptr %i.t, align 2, !tbaa !82, !alias.scope !279
  %i.bp = zext <8 x i16> %wide.load.3 to <8 x i32>
  %i.bq = mul nuw nsw <8 x i32> %broadcast.splat35, %i.bp
  %i.br = add nuw nsw <8 x i32> %i.bn, splat (i32 32)
  %i.bs = add nuw nsw <8 x i32> %i.br, %i.bo
  %i.bt = add nuw nsw <8 x i32> %i.bs, %i.bq
  %i.bu = add nuw nsw <8 x i32> %i.bt, %i.ac
  %i.bv = lshr <8 x i32> %i.bu, splat (i32 6)
  %i.bw = trunc <8 x i32> %i.bv to <8 x i16>
  %i.bx = getelementptr i8, ptr %i.w, i64 48
  store <8 x i16> %i.bw, ptr %i.bx, align 2, !tbaa !82, !alias.scope !281, !noalias !282
  br label %middle.block

scalar.ph:                                        ; preds = %.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %.preheader ] ; 4 uses
  %i.by = load i16, ptr %i.u, align 2, !tbaa !82
  %i.bz = zext i16 %i.by to i32
  %i.ca = trunc i64 %indvars.iv to i32
  %i.cb = sub i32 31, %i.ca
  %i.cc = mul nuw nsw i32 %i.cb, %i.bz
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cd = load i16, ptr %i.a, align 2, !tbaa !82
  %i.ce = zext i16 %i.cd to i32
  %i.cf = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.cg = mul nuw nsw i32 %i.cf, %i.ce
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !82
  %i.cj = zext i16 %i.ci to i32
  %i.ck = mul nuw nsw i32 %i.y, %i.cj
  %i.cl = load i16, ptr %i.b, align 2, !tbaa !82
  %i.cm = zext i16 %i.cl to i32
  %i.cn = mul nuw nsw i32 %i.z, %i.cm
  %i.co = add nuw nsw i32 %i.cc, 32
  %i.cp = add nuw nsw i32 %i.co, %i.cg
  %i.cq = add nuw nsw i32 %i.cp, %i.ck
  %i.cr = add nuw nsw i32 %i.cq, %i.cn
  %i.cs = lshr i32 %i.cr, 6
  %i.ct = trunc i32 %i.cs to i16
  %i.cu = getelementptr [2 x i8], ptr %i.w, i64 %indvars.iv
  store i16 %i.ct, ptr %i.cu, align 2, !tbaa !82
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %middle.block, label %scalar.ph, !llvm.loop !277

middle.block:                                     ; preds = %scalar.ph, %vector.body
  %exitcond9.not = icmp eq i64 %indvars.iv.next7, 32
  br i1 %exitcond9.not, label %pred_planar_9.exit, label %.preheader, !llvm.loop !28

pred_planar_9.exit:                               ; preds = %middle.block
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_dc_9(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) #4 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = shl nuw i32 1, %4                        ; 12 uses
  %.not = icmp eq i32 %4, 31
  br i1 %.not, label %._crit_edge64.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp slt i32 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.e = and i32 %i.d, 2147483640
  %n.vec = zext nneg i32 %i.e to i64
  %i.f = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.d, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.f, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi92 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %wide.load = load <4 x i16>, ptr %i.g, align 2, !tbaa !82
  %wide.load93 = load <4 x i16>, ptr %i.h, align 2, !tbaa !82
  %i.i = zext <4 x i16> %wide.load to <4 x i32>
  %i.j = zext <4 x i16> %wide.load93 to <4 x i32>
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %wide.load94 = load <4 x i16>, ptr %i.k, align 2, !tbaa !82
  %wide.load95 = load <4 x i16>, ptr %i.l, align 2, !tbaa !82
  %i.m = zext <4 x i16> %wide.load94 to <4 x i32>
  %i.n = zext <4 x i16> %wide.load95 to <4 x i32>
  %i.o = add <4 x i32> %vec.phi, %i.i
  %i.p = add <4 x i32> %vec.phi92, %i.j
  %i.q = add <4 x i32> %i.o, %i.m                 ; 2 uses
  %i.r = add <4 x i32> %i.p, %i.n                 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !283

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.r, %i.q
  %i.t = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %.preheader57.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader
  %i.u = load i16, ptr %2, align 2, !tbaa !82
  %i.v = zext i16 %i.u to i32
  %i.w = load i16, ptr %1, align 2, !tbaa !82
  %i.x = zext i16 %i.w to i32
  %i.y = add nuw i32 %i.d, %i.v
  %i.z = add i32 %i.y, %i.x                       ; 2 uses
  %exitcond.not = icmp slt i32 %i.d, 2
  br i1 %exitcond.not, label %.preheader57.preheader, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !82
  %i.ac = zext i16 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !82
  %i.af = zext i16 %i.ae to i32
  %i.ag = add i32 %i.z, %i.ac
  %i.ah = add i32 %i.ag, %i.af                    ; 2 uses
  %exitcond.not.1 = icmp eq i32 %4, 1
  br i1 %exitcond.not.1, label %.preheader57.preheader, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.1
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !82
  %i.ak = zext i16 %i.aj to i32
  %i.al = add i32 %i.ah, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.an = load i16, ptr %i.am, align 2, !tbaa !82
  %i.ao = zext i16 %i.an to i32
  %i.ap = add i32 %i.al, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !82
  %i.as = zext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.au = load i16, ptr %i.at, align 2, !tbaa !82
  %i.av = zext i16 %i.au to i32
  %i.aw = add i32 %i.ap, %i.as
  %i.ax = add i32 %i.aw, %i.av                    ; 2 uses
  %exitcond.not.3 = icmp eq i32 %4, 2
  br i1 %exitcond.not.3, label %.preheader57.preheader, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.3
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !82
  %i.ba = zext i16 %i.az to i32
  %i.bb = add i32 %i.ax, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !82
  %i.be = zext i16 %i.bd to i32
  %i.bf = add i32 %i.bb, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !82
  %i.bi = zext i16 %i.bh to i32
  %i.bj = add i32 %i.bf, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !82
  %i.bm = zext i16 %i.bl to i32
  %i.bn = add i32 %i.bj, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !82
  %i.bq = zext i16 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !82
  %i.bt = zext i16 %i.bs to i32
  %i.bu = add i32 %i.bn, %i.bq
  %i.bv = add i32 %i.bu, %i.bt
  br label %.preheader57.preheader

.preheader57.preheader:                           ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.3, %.lr.ph.6, %middle.block
  %.lcssa = phi i32 [ %i.t, %middle.block ], [ %i.z, %.lr.ph ], [ %i.ah, %.lr.ph.1 ], [ %i.bv, %.lr.ph.6 ], [ %i.ax, %.lr.ph.3 ]
  %i.bw = add nsw i32 %4, 1
  %i.bx = ashr i32 %.lcssa, %i.bw                 ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = mul i64 %i.by, 281479271743489          ; 2 uses
  %i.ca = sext i32 %i.d to i64                    ; 2 uses
  %smax78 = tail call i32 @llvm.smax.i32(i32 %i.d, i32 1)
  %wide.trip.count79 = zext nneg i32 %smax78 to i64
  %i.cb = tail call i64 @llvm.smax.i64(i64 %i.ca, i64 4)
  %i.cc = add nsw i64 %i.cb, -1
  %i.cd = lshr i64 %i.cc, 2
  %i.ce = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %min.iters.check97 = icmp slt i32 %i.d, 13
  %n.vec99 = and i64 %i.ce, 9223372036854775804   ; 3 uses
  %i.cf = shl i64 %n.vec99, 2
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n104 = icmp eq i64 %i.ce, %n.vec99
  br label %.preheader57

.preheader57:                                     ; preds = %.preheader57.preheader, %._crit_edge62
  %indvars.iv75 = phi i64 [ 0, %.preheader57.preheader ], [ %indvars.iv.next76, %._crit_edge62 ] ; 2 uses
  %i.cg = mul nsw i64 %3, %indvars.iv75
  %i.ch = getelementptr [2 x i8], ptr %0, i64 %i.cg ; 2 uses
  br i1 %min.iters.check97, label %scalar.ph96.preheader, label %vector.body100

vector.body100:                                   ; preds = %.preheader57, %vector.body100
  %index101 = phi i64 [ %index.next102, %vector.body100 ], [ 0, %.preheader57 ] ; 2 uses
  %.idx = shl i64 %index101, 3
end_hunk_0
begin_hunk_1_@ref_filter_3tap_9:bb.a
  %wide.load53 = load <8 x i16>, ptr %i.ag, align 2, !tbaa !82, !alias.scope !302
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ac
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -14
  %i.aj = zext <8 x i16> %wide.load to <8 x i32>
  %i.ak = add nuw nsw <8 x i32> %i.aj, splat (i32 2)
  %i.al = zext <8 x i16> %wide.load51 to <8 x i32>
  %i.am = shl nuw nsw <8 x i32> %i.al, splat (i32 1)
  %i.an = add nuw nsw <8 x i32> %i.ak, %i.am
  %i.ao = zext <8 x i16> %wide.load53 to <8 x i32>
  %i.ap = add nuw nsw <8 x i32> %i.an, %i.ao
  %i.aq = lshr <8 x i32> %i.ap, splat (i32 2)
  %reverse55 = trunc nuw <8 x i32> %i.aq to <8 x i16>
  store <8 x i16> %reverse55, ptr %i.ai, align 2, !tbaa !82, !alias.scope !303, !noalias !302
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %.lr.ph.preheader85, label %vector.body, !llvm.loop !295

.lr.ph.preheader85:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.preheader ], [ %i.ab, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader85, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader85 ] ; 4 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.au = load i16, ptr %i.at, align 2, !tbaa !82
  %i.av = zext i16 %i.au to i32
  %i.aw = load i16, ptr %i.as, align 2, !tbaa !82
  %i.ax = zext i16 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 1
  %i.az = getelementptr i8, ptr %i.as, i64 -2
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !82
  %i.bb = zext i16 %i.ba to i32
  %i.bc = add nuw nsw i32 %i.av, 2
  %i.bd = add nuw nsw i32 %i.bc, %i.ay
  %i.be = add nuw nsw i32 %i.bd, %i.bb
  %i.bf = lshr i32 %i.be, 2
  %i.bg = trunc nuw i32 %i.bf to i16
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !82
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bi = trunc nuw i64 %indvars.iv to i32
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph, label %._crit_edge, !llvm.loop !296

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.bk = load i16, ptr %2, align 2, !tbaa !82
  %i.bl = zext i16 %i.bk to i32
  %i.bm = getelementptr inbounds i8, ptr %2, i64 -2
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !82
  %i.bo = zext i16 %i.bn to i32
  %i.bp = shl nuw nsw i32 %i.bo, 1
  %i.bq = load i16, ptr %3, align 2, !tbaa !82
  %i.br = zext i16 %i.bq to i32
  %i.bs = add nuw nsw i32 %i.bl, 2
  %i.bt = add nuw nsw i32 %i.bs, %i.bp
  %i.bu = add nuw nsw i32 %i.bt, %i.br
  %i.bv = lshr i32 %i.bu, 2
  %i.bw = trunc nuw i32 %i.bv to i16              ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %0, i64 -2
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !82
  %i.by = getelementptr inbounds i8, ptr %1, i64 -2
  store i16 %i.bw, ptr %i.by, align 2, !tbaa !82
  br i1 %i.k, label %.lr.ph42.preheader, label %._crit_edge43

.lr.ph42.preheader:                               ; preds = %._crit_edge
  %i.bz = zext i32 %i.j to i64                    ; 5 uses
  %i.ca = tail call i32 @llvm.smin.i32(i32 %i.j, i32 0)
  %i.cb = add nsw i32 %i.a, -2
  %i.cc = sub i32 %i.cb, %i.ca                    ; 2 uses
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %min.iters.check64 = icmp ult i32 %i.cc, 16
  br i1 %min.iters.check64, label %.lr.ph42.preheader84, label %vector.memcheck65

vector.memcheck65:                                ; preds = %.lr.ph42.preheader
  %i.ce = shl nuw nsw i64 %i.bz, 1                ; 4 uses
  %i.cf = shl nuw nsw i64 %i.cd, 1                ; 2 uses
  %i.cg = sub nsw i64 %i.ce, %i.cf
  %i.ch = getelementptr i8, ptr %1, i64 %i.cg
  %i.ci = getelementptr i8, ptr %1, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 2
  %i.ck = add nsw i64 %i.ce, -2
  %i.cl = sub nsw i64 %i.ck, %i.cf
  %i.cm = getelementptr i8, ptr %3, i64 %i.cl
  %i.cn = getelementptr i8, ptr %3, i64 %i.ce
  %i.co = getelementptr i8, ptr %i.cn, i64 4
  %bound066 = icmp ult ptr %i.ch, %i.co
  %bound167 = icmp ult ptr %i.cm, %i.cj
  %found.conflict68 = and i1 %bound066, %bound167
  br i1 %found.conflict68, label %.lr.ph42.preheader84, label %vector.ph69

vector.ph69:                                      ; preds = %vector.memcheck65
  %n.vec70 = and i64 %i.cd, 4294967288            ; 2 uses
  %i.cp = sub nsw i64 %i.bz, %n.vec70
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph69
  %index72 = phi i64 [ 0, %vector.ph69 ], [ %index.next80, %vector.body71 ] ; 2 uses
  %i.cq = sub i64 %i.bz, %index72                 ; 2 uses
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cq ; 3 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -12
  %wide.load73 = load <8 x i16>, ptr %i.cs, align 2, !tbaa !82, !alias.scope !304
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 -14
  %wide.load75 = load <8 x i16>, ptr %i.ct, align 2, !tbaa !82, !alias.scope !304
  %i.cu = getelementptr i8, ptr %i.cr, i64 -16
  %wide.load77 = load <8 x i16>, ptr %i.cu, align 2, !tbaa !82, !alias.scope !304
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cq
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -14
  %i.cx = zext <8 x i16> %wide.load73 to <8 x i32>
  %i.cy = add nuw nsw <8 x i32> %i.cx, splat (i32 2)
  %i.cz = zext <8 x i16> %wide.load75 to <8 x i32>
  %i.da = shl nuw nsw <8 x i32> %i.cz, splat (i32 1)
  %i.db = add nuw nsw <8 x i32> %i.cy, %i.da
  %i.dc = zext <8 x i16> %wide.load77 to <8 x i32>
  %i.dd = add nuw nsw <8 x i32> %i.db, %i.dc
  %i.de = lshr <8 x i32> %i.dd, splat (i32 2)
  %reverse79 = trunc nuw <8 x i32> %i.de to <8 x i16>
  store <8 x i16> %reverse79, ptr %i.cw, align 2, !tbaa !82, !alias.scope !305, !noalias !304
  %index.next80 = add nuw i64 %index72, 8         ; 2 uses
  %i.df = icmp eq i64 %index.next80, %n.vec70
  br i1 %i.df, label %.lr.ph42.preheader84, label %vector.body71, !llvm.loop !300

.lr.ph42.preheader84:                             ; preds = %vector.body71, %vector.memcheck65, %.lr.ph42.preheader
  %indvars.iv45.ph = phi i64 [ %i.bz, %vector.memcheck65 ], [ %i.bz, %.lr.ph42.preheader ], [ %i.cp, %vector.body71 ]
  br label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42.preheader84, %.lr.ph42
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.lr.ph42 ], [ %indvars.iv45.ph, %.lr.ph42.preheader84 ] ; 4 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv45 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !82
  %i.dj = zext i16 %i.di to i32
  %i.dk = load i16, ptr %i.dg, align 2, !tbaa !82
  %i.dl = zext i16 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 1
  %i.dn = getelementptr i8, ptr %i.dg, i64 -2
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !82
  %i.dp = zext i16 %i.do to i32
  %i.dq = add nuw nsw i32 %i.dj, 2
  %i.dr = add nuw nsw i32 %i.dq, %i.dm
  %i.ds = add nuw nsw i32 %i.dr, %i.dp
  %i.dt = lshr i32 %i.ds, 2
  %i.du = trunc nuw i32 %i.dt to i16
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv45
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !82
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, -1
  %i.dw = trunc nuw i64 %indvars.iv45 to i32
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.lr.ph42, label %._crit_edge43, !llvm.loop !301

._crit_edge43:                                    ; preds = %.lr.ph42, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ref_filter_strong_9(ptr nofree noundef writeonly captures(none) initializes((-2, 0), (126, 128)) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
vector.memcheck:
  %i.a = getelementptr inbounds i8, ptr %2, i64 -2 ; 6 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !82
  %i.c = getelementptr inbounds i8, ptr %0, i64 -2
  store i16 %i.b, ptr %i.c, align 2, !tbaa !82
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 126 ; 5 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !82
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 126 ; 2 uses
  store i16 %i.e, ptr %i.f, align 2, !tbaa !82
  %i.g = getelementptr i8, ptr %2, i64 128
  %bound0 = icmp ult ptr %0, %i.g
  %bound1 = icmp ult ptr %i.a, %i.f
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.prol, label %vector.body

scalar.ph.prol:                                   ; preds = %vector.body, %vector.memcheck
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 56, %vector.body ] ; 3 uses
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1 ; 2 uses
  %i.h = load i16, ptr %i.a, align 2, !tbaa !82
  %i.i = zext i16 %i.h to i32
  %i.j = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.k = xor i32 %i.j, 63
  %i.l = mul nuw nsw i32 %i.k, %i.i
  %i.m = load i16, ptr %i.d, align 2, !tbaa !82
  %i.n = zext i16 %i.m to i32
  %i.o = trunc nuw nsw i64 %indvars.iv.next.prol to i32
  %i.p = mul nuw nsw i32 %i.o, %i.n
  %i.q = add nuw nsw i32 %i.l, 32
  %i.r = add nuw nsw i32 %i.q, %i.p
  %i.s = lshr i32 %i.r, 6
  %i.t = trunc i32 %i.s to i16
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  store i16 %i.t, ptr %i.u, align 2, !tbaa !82
  br label %scalar.ph

vector.body:                                      ; preds = %vector.memcheck
  %i.v = load i16, ptr %i.d, align 2, !tbaa !82, !alias.scope !311
  %broadcast.splatinsert29 = insertelement <8 x i16> poison, i16 %i.v, i64 0
  %broadcast.splat30 = shufflevector <8 x i16> %broadcast.splatinsert29, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.w = zext <8 x i16> %broadcast.splat30 to <8 x i32> ; 7 uses
  %i.x = load i16, ptr %i.a, align 2, !tbaa !82, !alias.scope !311
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.x, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.y = zext <8 x i16> %broadcast.splat to <8 x i32> ; 7 uses
  %i.z = mul nuw nsw <8 x i32> %i.y, <i32 63, i32 62, i32 61, i32 60, i32 59, i32 58, i32 57, i32 56>
  %i.aa = mul nuw nsw <8 x i32> %i.w, <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>
  %i.ab = add nuw nsw <8 x i32> %i.z, splat (i32 32)
  %i.ac = add nuw nsw <8 x i32> %i.ab, %i.aa
  %i.ad = lshr <8 x i32> %i.ac, splat (i32 6)
  %i.ae = trunc <8 x i32> %i.ad to <8 x i16>
  store <8 x i16> %i.ae, ptr %0, align 2, !tbaa !82, !alias.scope !312, !noalias !311
  %i.af = mul nuw nsw <8 x i32> %i.y, <i32 55, i32 54, i32 53, i32 52, i32 51, i32 50, i32 49, i32 48>
  %i.ag = mul nuw nsw <8 x i32> %i.w, <i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.ah = add nuw nsw <8 x i32> %i.af, splat (i32 32)
  %i.ai = add nuw nsw <8 x i32> %i.ah, %i.ag
  %i.aj = lshr <8 x i32> %i.ai, splat (i32 6)
  %i.ak = trunc <8 x i32> %i.aj to <8 x i16>
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <8 x i16> %i.ak, ptr %i.al, align 2, !tbaa !82, !alias.scope !312, !noalias !311
  %i.am = mul nuw nsw <8 x i32> %i.y, <i32 47, i32 46, i32 45, i32 44, i32 43, i32 42, i32 41, i32 40>
  %i.an = mul nuw nsw <8 x i32> %i.w, <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.ao = add nuw nsw <8 x i32> %i.am, splat (i32 32)
  %i.ap = add nuw nsw <8 x i32> %i.ao, %i.an
  %i.aq = lshr <8 x i32> %i.ap, splat (i32 6)
  %i.ar = trunc <8 x i32> %i.aq to <8 x i16>
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <8 x i16> %i.ar, ptr %i.as, align 2, !tbaa !82, !alias.scope !312, !noalias !311
  %i.at = mul nuw nsw <8 x i32> %i.y, <i32 39, i32 38, i32 37, i32 36, i32 35, i32 34, i32 33, i32 32>
  %i.au = mul nuw nsw <8 x i32> %i.w, <i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32>
  %i.av = add nuw nsw <8 x i32> %i.at, splat (i32 32)
  %i.aw = add nuw nsw <8 x i32> %i.av, %i.au
  %i.ax = lshr <8 x i32> %i.aw, splat (i32 6)
  %i.ay = trunc <8 x i32> %i.ax to <8 x i16>
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <8 x i16> %i.ay, ptr %i.az, align 2, !tbaa !82, !alias.scope !312, !noalias !311
  %i.ba = mul nuw nsw <8 x i32> %i.y, <i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24>
  %i.bb = mul nuw nsw <8 x i32> %i.w, <i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40>
  %i.bc = add nuw nsw <8 x i32> %i.ba, splat (i32 32)
  %i.bd = add nuw nsw <8 x i32> %i.bc, %i.bb
  %i.be = lshr <8 x i32> %i.bd, splat (i32 6)
  %i.bf = trunc <8 x i32> %i.be to <8 x i16>
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i16> %i.bf, ptr %i.bg, align 2, !tbaa !82, !alias.scope !312, !noalias !311
  %i.bh = mul nuw nsw <8 x i32> %i.y, <i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16>
  %i.bi = mul nuw nsw <8 x i32> %i.w, <i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48>
  %i.bj = add nuw nsw <8 x i32> %i.bh, splat (i32 32)
  %i.bk = add nuw nsw <8 x i32> %i.bj, %i.bi
  %i.bl = lshr <8 x i32> %i.bk, splat (i32 6)
  %i.bm = trunc <8 x i32> %i.bl to <8 x i16>
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <8 x i16> %i.bm, ptr %i.bn, align 2, !tbaa !82, !alias.scope !312, !noalias !311
  %i.bo = mul nuw nsw <8 x i32> %i.y, <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  %i.bp = mul nuw nsw <8 x i32> %i.w, <i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56>
  %i.bq = add nuw nsw <8 x i32> %i.bo, splat (i32 32)
  %i.br = add nuw nsw <8 x i32> %i.bq, %i.bp
  %i.bs = lshr <8 x i32> %i.br, splat (i32 6)
  %i.bt = trunc <8 x i32> %i.bs to <8 x i16>
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <8 x i16> %i.bt, ptr %i.bu, align 2, !tbaa !82, !alias.scope !312, !noalias !311
  br label %scalar.ph.prol

.preheader:                                       ; preds = %scalar.ph
  %i.bv = getelementptr inbounds i8, ptr %1, i64 -2
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !82 ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 126 ; 8 uses
  %i.by = zext i16 %i.bw to i64
  %broadcast.splatinsert35 = insertelement <8 x i64> poison, i64 %i.by, i64 0
  %broadcast.splat36 = shufflevector <8 x i64> %broadcast.splatinsert35, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %.preheader
  %index38 = phi i64 [ 0, %.preheader ], [ %index.next43, %vector.body37 ] ; 2 uses
  %vec.ind39 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.preheader ], [ %vec.ind.next44, %vector.body37 ] ; 2 uses
  %vec.ind40 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %.preheader ], [ %vec.ind.next45, %vector.body37 ] ; 2 uses
  %i.bz = sub nuw nsw <8 x i64> splat (i64 63), %vec.ind39
  %i.ca = mul nuw nsw <8 x i64> %i.bz, %broadcast.splat36
  %i.cb = load i16, ptr %i.bx, align 2, !tbaa !82
  %broadcast.splatinsert41 = insertelement <8 x i16> poison, i16 %i.cb, i64 0
  %broadcast.splat42 = shufflevector <8 x i16> %broadcast.splatinsert41, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cc = zext <8 x i16> %broadcast.splat42 to <8 x i32>
  %i.cd = mul nuw nsw <8 x i32> %vec.ind40, %i.cc
  %i.ce = trunc nuw nsw <8 x i64> %i.ca to <8 x i32>
  %i.cf = add nuw nsw <8 x i32> %i.ce, splat (i32 32)
  %i.cg = add nuw nsw <8 x i32> %i.cf, %i.cd
  %i.ch = lshr <8 x i32> %i.cg, splat (i32 6)
  %i.ci = trunc <8 x i32> %i.ch to <8 x i16>
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index38
  store <8 x i16> %i.ci, ptr %i.cj, align 2, !tbaa !82
  %index.next43 = add nuw i64 %index38, 8         ; 2 uses
  %vec.ind.next44 = add nuw nsw <8 x i64> %vec.ind39, splat (i64 8)
  %vec.ind.next45 = add <8 x i32> %vec.ind40, splat (i32 8)
  %i.ck = icmp eq i64 %index.next43, 56
  br i1 %i.ck, label %scalar.ph33, label %vector.body37, !llvm.loop !309

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.prol
  %indvars.iv = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.next.1, %scalar.ph ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cl = load i16, ptr %i.a, align 2, !tbaa !82
  %i.cm = zext i16 %i.cl to i32
  %i.cn = trunc i64 %indvars.iv to i32
  %i.co = sub i32 63, %i.cn
  %i.cp = mul nuw nsw i32 %i.co, %i.cm
  %i.cq = load i16, ptr %i.d, align 2, !tbaa !82
  %i.cr = zext i16 %i.cq to i32
  %i.cs = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ct = mul nuw nsw i32 %i.cs, %i.cr
  %i.cu = add nuw nsw i32 %i.cp, 32
  %i.cv = add nuw nsw i32 %i.cu, %i.ct
  %i.cw = lshr i32 %i.cv, 6
  %i.cx = trunc i32 %i.cw to i16
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.cx, ptr %i.cy, align 2, !tbaa !82
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.cz = load i16, ptr %i.a, align 2, !tbaa !82
  %i.da = zext i16 %i.cz to i32
  %i.db = trunc i64 %indvars.iv.next to i32
  %i.dc = sub i32 63, %i.db
  %i.dd = mul nuw nsw i32 %i.dc, %i.da
  %i.de = load i16, ptr %i.d, align 2, !tbaa !82
  %i.df = zext i16 %i.de to i32
  %i.dg = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.dh = mul nuw nsw i32 %i.dg, %i.df
  %i.di = add nuw nsw i32 %i.dd, 32
  %i.dj = add nuw nsw i32 %i.di, %i.dh
  %i.dk = lshr i32 %i.dj, 6
  %i.dl = trunc i32 %i.dk to i16
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  store i16 %i.dl, ptr %i.dm, align 2, !tbaa !82
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 63
  br i1 %exitcond.not.1, label %.preheader, label %scalar.ph, !llvm.loop !310

scalar.ph33:                                      ; preds = %vector.body37
  %i.dn = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.do = zext i16 %i.dn to i32
  %i.dp = mul nuw nsw i32 %i.do, 57
  %i.dq = zext i16 %i.bw to i32
  %i.dr = mul nuw nsw i32 %i.dq, 7
  %i.ds = add nuw nsw i32 %i.dr, 32
  %i.dt = add nuw nsw i32 %i.ds, %i.dp
  %i.du = lshr i32 %i.dt, 6
  %i.dv = trunc i32 %i.du to i16
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !82
  %i.dx = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.dy = zext i16 %i.dx to i32
  %i.dz = mul nuw nsw i32 %i.dy, 58
  %i.ea = zext i16 %i.bw to i32
  %i.eb = mul nuw nsw i32 %i.ea, 6
  %i.ec = add nuw nsw i32 %i.eb, 32
  %i.ed = add nuw nsw i32 %i.ec, %i.dz
  %i.ee = lshr i32 %i.ed, 6
  %i.ef = trunc i32 %i.ee to i16
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 114
  store i16 %i.ef, ptr %i.eg, align 2, !tbaa !82
  %i.eh = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.ei = zext i16 %i.eh to i32
  %i.ej = mul nuw nsw i32 %i.ei, 59
  %i.ek = zext i16 %i.bw to i32
  %i.el = mul nuw nsw i32 %i.ek, 5
  %i.em = add nuw nsw i32 %i.el, 32
  %i.en = add nuw nsw i32 %i.em, %i.ej
  %i.eo = lshr i32 %i.en, 6
  %i.ep = trunc i32 %i.eo to i16
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i16 %i.ep, ptr %i.eq, align 2, !tbaa !82
  %i.er = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.es = zext i16 %i.er to i32
  %i.et = mul nuw nsw i32 %i.es, 60
  %.tr = zext i16 %i.bw to i32
  %i.eu = shl nuw nsw i32 %.tr, 2
  %i.ev = add nuw nsw i32 %i.eu, 32
  %i.ew = add nuw nsw i32 %i.ev, %i.et
  %i.ex = lshr i32 %i.ew, 6
  %i.ey = trunc i32 %i.ex to i16
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 118
  store i16 %i.ey, ptr %i.ez, align 2, !tbaa !82
  %i.fa = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.fb = zext i16 %i.fa to i32
  %i.fc = mul nuw nsw i32 %i.fb, 61
  %i.fd = zext i16 %i.bw to i32
  %i.fe = mul nuw nsw i32 %i.fd, 3
  %i.ff = add nuw nsw i32 %i.fe, 32
  %i.fg = add nuw nsw i32 %i.ff, %i.fc
  %i.fh = lshr i32 %i.fg, 6
  %i.fi = trunc i32 %i.fh to i16
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i16 %i.fi, ptr %i.fj, align 2, !tbaa !82
  %i.fk = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.fl = zext i16 %i.fk to i32
  %i.fm = mul nuw nsw i32 %i.fl, 62
  %.tr47 = zext i16 %i.bw to i32
  %i.fn = shl nuw nsw i32 %.tr47, 1
  %i.fo = add nuw nsw i32 %i.fn, 32
  %i.fp = add nuw nsw i32 %i.fo, %i.fm
  %i.fq = lshr i32 %i.fp, 6
  %i.fr = trunc i32 %i.fq to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 122
  store i16 %i.fr, ptr %i.fs, align 2, !tbaa !82
  %i.ft = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.fu = zext i16 %i.ft to i32
  %i.fv = mul nuw nsw i32 %i.fu, 63
  %i.fw = zext i16 %i.bw to i32
  %i.fx = add nuw nsw i32 %i.fw, 32
  %i.fy = add nuw nsw i32 %i.fx, %i.fv
  %i.fz = lshr i32 %i.fy, 6
  %i.ga = trunc i32 %i.fz to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 124
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !82
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @intra_pred_2_10(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
bb.a:
  %i.a = alloca [81 x i16], align 16              ; 27 uses
  %i.b = alloca [81 x i16], align 16              ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 18 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !101  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 20264
  %i.h = sext i32 %4 to i64                       ; 4 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !77   ; 15 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 20276
  %i.l = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.h
  %i.m = load i32, ptr %i.l, align 4, !tbaa !77   ; 15 uses
  %i.n = shl i32 4, %i.j                          ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 18604
  %i.p = load i32, ptr %i.o, align 4, !tbaa !113  ; 5 uses
  %i.q = ashr i32 %i.n, %i.p
  %i.r = shl i32 4, %i.m                          ; 3 uses
  %i.s = ashr i32 %i.r, %i.p                      ; 2 uses
  %i.t = ashr i32 %2, %i.j
  %i.u = ashr i32 %3, %i.m
  %i.v = ashr i32 %2, %i.p
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 20260
  %i.x = load i32, ptr %i.w, align 4, !tbaa !114  ; 5 uses
  %i.y = and i32 %i.v, %i.x                       ; 3 uses
  %i.z = ashr i32 %3, %i.p
  %i.aa = and i32 %i.z, %i.x                      ; 3 uses
  %i.ab = icmp eq i32 %4, 0                       ; 2 uses
  %i.ac = icmp ne i32 %i.s, 0
  %or.cond.i = select i1 %i.ab, i1 true, i1 %i.ac
  %.sink256.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %.sink256.sroa.gep343 = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = shl nsw i32 %3, 1
  %i.ae = shl nuw i32 1, %i.p
  %i.af = and i32 %i.ae, %i.ad
end_hunk_1
begin_hunk_2_@pred_planar_2_10:bb.a
  %i.go = mul nuw nsw i32 %i.gn, 10
  %i.gp = load i16, ptr %i.k, align 2, !tbaa !82
  %i.gq = zext i16 %i.gp to i32
  %i.gr = mul nuw nsw i32 %i.ac, %i.gq
  %i.gs = load i16, ptr %i.b, align 2, !tbaa !82
  %i.gt = zext i16 %i.gs to i32
  %i.gu = mul nuw nsw i32 %i.ag, %i.gt
  %i.gv = add nuw nsw i32 %i.gl, 16
  %i.gw = add nuw nsw i32 %i.gv, %i.go
  %i.gx = add nuw nsw i32 %i.gw, %i.gr
  %i.gy = add nuw nsw i32 %i.gx, %i.gu
  %i.gz = lshr i32 %i.gy, 5
  %i.ha = trunc i32 %i.gz to i16
  %i.hb = getelementptr i8, ptr %i.t, i64 18
  store i16 %i.ha, ptr %i.hb, align 2, !tbaa !82
  %i.hc = load i16, ptr %i.r, align 2, !tbaa !82
  %i.hd = zext i16 %i.hc to i32
  %i.he = mul nuw nsw i32 %i.hd, 5
  %i.hf = load i16, ptr %i.a, align 2, !tbaa !82
  %i.hg = zext i16 %i.hf to i32
  %i.hh = mul nuw nsw i32 %i.hg, 11
  %i.hi = load i16, ptr %i.l, align 2, !tbaa !82
  %i.hj = zext i16 %i.hi to i32
  %i.hk = mul nuw nsw i32 %i.ac, %i.hj
  %i.hl = load i16, ptr %i.b, align 2, !tbaa !82
  %i.hm = zext i16 %i.hl to i32
  %i.hn = mul nuw nsw i32 %i.ag, %i.hm
  %i.ho = add nuw nsw i32 %i.he, 16
  %i.hp = add nuw nsw i32 %i.ho, %i.hh
  %i.hq = add nuw nsw i32 %i.hp, %i.hk
  %i.hr = add nuw nsw i32 %i.hq, %i.hn
  %i.hs = lshr i32 %i.hr, 5
  %i.ht = trunc i32 %i.hs to i16
  %i.hu = getelementptr i8, ptr %i.t, i64 20
  store i16 %i.ht, ptr %i.hu, align 2, !tbaa !82
  %i.hv = load i16, ptr %i.r, align 2, !tbaa !82
  %i.hw = zext i16 %i.hv to i32
  %i.hx = shl nuw nsw i32 %i.hw, 2
  %i.hy = load i16, ptr %i.a, align 2, !tbaa !82
  %i.hz = zext i16 %i.hy to i32
  %i.ia = mul nuw nsw i32 %i.hz, 12
  %i.ib = load i16, ptr %i.m, align 2, !tbaa !82
  %i.ic = zext i16 %i.ib to i32
  %i.id = mul nuw nsw i32 %i.ac, %i.ic
  %i.ie = load i16, ptr %i.b, align 2, !tbaa !82
  %i.if = zext i16 %i.ie to i32
  %i.ig = mul nuw nsw i32 %i.ag, %i.if
  %i.ih = add nuw nsw i32 %i.hx, 16
  %i.ii = add nuw nsw i32 %i.ih, %i.ia
  %i.ij = add nuw nsw i32 %i.ii, %i.id
  %i.ik = add nuw nsw i32 %i.ij, %i.ig
  %i.il = lshr i32 %i.ik, 5
  %i.im = trunc i32 %i.il to i16
  %i.in = getelementptr i8, ptr %i.t, i64 22
  store i16 %i.im, ptr %i.in, align 2, !tbaa !82
  %i.io = load i16, ptr %i.r, align 2, !tbaa !82
  %i.ip = zext i16 %i.io to i32
  %i.iq = mul nuw nsw i32 %i.ip, 3
  %i.ir = load i16, ptr %i.a, align 2, !tbaa !82
  %i.is = zext i16 %i.ir to i32
  %i.it = mul nuw nsw i32 %i.is, 13
  %i.iu = load i16, ptr %i.n, align 2, !tbaa !82
  %i.iv = zext i16 %i.iu to i32
  %i.iw = mul nuw nsw i32 %i.ac, %i.iv
  %i.ix = load i16, ptr %i.b, align 2, !tbaa !82
  %i.iy = zext i16 %i.ix to i32
  %i.iz = mul nuw nsw i32 %i.ag, %i.iy
  %i.ja = add nuw nsw i32 %i.iq, 16
  %i.jb = add nuw nsw i32 %i.ja, %i.it
  %i.jc = add nuw nsw i32 %i.jb, %i.iw
  %i.jd = add nuw nsw i32 %i.jc, %i.iz
  %i.je = lshr i32 %i.jd, 5
  %i.jf = trunc i32 %i.je to i16
  %i.jg = getelementptr i8, ptr %i.t, i64 24
  store i16 %i.jf, ptr %i.jg, align 2, !tbaa !82
  %i.jh = load i16, ptr %i.r, align 2, !tbaa !82
  %i.ji = zext i16 %i.jh to i32
  %i.jj = shl nuw nsw i32 %i.ji, 1
  %i.jk = load i16, ptr %i.a, align 2, !tbaa !82
  %i.jl = zext i16 %i.jk to i32
  %i.jm = mul nuw nsw i32 %i.jl, 14
  %i.jn = load i16, ptr %i.o, align 2, !tbaa !82
  %i.jo = zext i16 %i.jn to i32
  %i.jp = mul nuw nsw i32 %i.ac, %i.jo
  %i.jq = load i16, ptr %i.b, align 2, !tbaa !82
  %i.jr = zext i16 %i.jq to i32
  %i.js = mul nuw nsw i32 %i.ag, %i.jr
  %i.jt = add nuw nsw i32 %i.jj, 16
  %i.ju = add nuw nsw i32 %i.jt, %i.jm
  %i.jv = add nuw nsw i32 %i.ju, %i.jp
  %i.jw = add nuw nsw i32 %i.jv, %i.js
  %i.jx = lshr i32 %i.jw, 5
  %i.jy = trunc i32 %i.jx to i16
  %i.jz = getelementptr i8, ptr %i.t, i64 26
  store i16 %i.jy, ptr %i.jz, align 2, !tbaa !82
  %i.ka = load i16, ptr %i.r, align 2, !tbaa !82
  %i.kb = zext i16 %i.ka to i32
  %i.kc = load i16, ptr %i.a, align 2, !tbaa !82
  %i.kd = zext i16 %i.kc to i32
  %i.ke = mul nuw nsw i32 %i.kd, 15
  %i.kf = load i16, ptr %i.p, align 2, !tbaa !82
  %i.kg = zext i16 %i.kf to i32
  %i.kh = mul nuw nsw i32 %i.ac, %i.kg
  %i.ki = load i16, ptr %i.b, align 2, !tbaa !82
  %i.kj = zext i16 %i.ki to i32
  %i.kk = mul nuw nsw i32 %i.ag, %i.kj
  %i.kl = add nuw nsw i32 %i.kb, 16
  %i.km = add nuw nsw i32 %i.kl, %i.ke
  %i.kn = add nuw nsw i32 %i.km, %i.kh
  %i.ko = add nuw nsw i32 %i.kn, %i.kk
  %i.kp = lshr i32 %i.ko, 5
  %i.kq = trunc i32 %i.kp to i16
  %i.kr = getelementptr i8, ptr %i.t, i64 28
  store i16 %i.kq, ptr %i.kr, align 2, !tbaa !82
  %i.ks = load i16, ptr %i.a, align 2, !tbaa !82
  %i.kt = zext i16 %i.ks to i32
  %i.ku = shl nuw nsw i32 %i.kt, 4
  %i.kv = load i16, ptr %i.q, align 2, !tbaa !82
  %i.kw = zext i16 %i.kv to i32
  %i.kx = mul nuw nsw i32 %i.ac, %i.kw
  %i.ky = load i16, ptr %i.b, align 2, !tbaa !82
  %i.kz = zext i16 %i.ky to i32
  %i.la = mul nuw nsw i32 %i.ag, %i.kz
  %i.lb = add nuw nsw i32 %i.ku, 16
  %i.lc = add nuw nsw i32 %i.lb, %i.kx
  %i.ld = add nuw nsw i32 %i.lc, %i.la
  %i.le = lshr i32 %i.ld, 5
  %i.lf = trunc i32 %i.le to i16
  %i.lg = getelementptr i8, ptr %i.t, i64 30
  store i16 %i.lf, ptr %i.lg, align 2, !tbaa !82
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %pred_planar_10.exit, label %.preheader, !llvm.loop !41

pred_planar_10.exit:                              ; preds = %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_planar_3_10(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.c = insertelement <2 x ptr> poison, ptr %2, i64 0
  %i.d = insertelement <2 x ptr> %i.c, ptr %1, i64 1 ; 2 uses
  %i.e = getelementptr i8, <2 x ptr> %i.d, <2 x i64> <i64 64, i64 66>
  %scevgep19 = getelementptr i8, ptr %2, i64 66
  %i.f = mul i64 %3, 62
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %scevgep20 = getelementptr i8, ptr %i.g, i64 64 ; 2 uses
  %i.h = insertelement <2 x ptr> poison, ptr %0, i64 0
  %i.i = shufflevector <2 x ptr> %i.h, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.j = insertelement <2 x ptr> poison, ptr %scevgep20, i64 0
  %i.k = shufflevector <2 x ptr> %i.j, <2 x ptr> poison, <2 x i32> zeroinitializer
  %bound0 = icmp ult ptr %0, %scevgep19
  %bound1 = icmp ult ptr %i.b, %scevgep20
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %3, 4611686018427387904
  %stride.check = icmp ne i64 %.mask, 0
  %i.l = or i1 %found.conflict, %stride.check
  %i.m = icmp ult <2 x ptr> %i.i, %i.e
  %i.n = icmp ult <2 x ptr> %i.d, %i.k
  %i.o = and <2 x i1> %i.m, %i.n                  ; 2 uses
  %i.p = extractelement <2 x i1> %i.o, i64 0
  %conflict.rdx = or i1 %i.l, %i.p
  %i.q = extractelement <2 x i1> %i.o, i64 1
  %conflict.rdx27 = or i1 %conflict.rdx, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %middle.block
  %indvars.iv6 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next7, %middle.block ] ; 4 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv6 ; 2 uses
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1 ; 3 uses
  %i.v = mul nsw i64 %3, %indvars.iv6
  %i.w = getelementptr [2 x i8], ptr %0, i64 %i.v ; 5 uses
  %i.x = trunc i64 %indvars.iv6 to i32
  %i.y = sub i32 31, %i.x                         ; 2 uses
  %i.z = trunc nuw nsw i64 %indvars.iv.next7 to i32 ; 2 uses
  br i1 %conflict.rdx27, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.preheader
  %broadcast.splatinsert34 = insertelement <8 x i32> poison, i32 %i.y, i64 0
  %broadcast.splat35 = shufflevector <8 x i32> %broadcast.splatinsert34, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aa = load i16, ptr %i.b, align 2, !tbaa !82, !alias.scope !371
  %broadcast.splatinsert32 = insertelement <8 x i16> poison, i16 %i.aa, i64 0
  %broadcast.splat33 = shufflevector <8 x i16> %broadcast.splatinsert32, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ab = zext <8 x i16> %broadcast.splat33 to <8 x i32>
  %i.ac = mul nuw nsw <8 x i32> %broadcast.splat, %i.ab ; 4 uses
  %i.ad = load i16, ptr %i.a, align 2, !tbaa !82, !alias.scope !372
  %broadcast.splatinsert30 = insertelement <8 x i16> poison, i16 %i.ad, i64 0
  %broadcast.splat31 = shufflevector <8 x i16> %broadcast.splatinsert30, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ae = zext <8 x i16> %broadcast.splat31 to <8 x i32> ; 4 uses
  %i.af = load i16, ptr %i.u, align 2, !tbaa !82, !alias.scope !373
  %broadcast.splatinsert28 = insertelement <8 x i16> poison, i16 %i.af, i64 0
  %broadcast.splat29 = shufflevector <8 x i16> %broadcast.splatinsert28, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ag = zext <8 x i16> %broadcast.splat29 to <8 x i32> ; 4 uses
  %i.ah = mul nuw nsw <8 x i32> %i.ag, <i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24>
  %i.ai = mul nuw nsw <8 x i32> %i.ae, <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>
  %wide.load = load <8 x i16>, ptr %1, align 2, !tbaa !82, !alias.scope !372
  %i.aj = zext <8 x i16> %wide.load to <8 x i32>
  %i.ak = mul nuw nsw <8 x i32> %broadcast.splat35, %i.aj
  %i.al = add nuw nsw <8 x i32> %i.ah, splat (i32 32)
  %i.am = add nuw nsw <8 x i32> %i.al, %i.ai
  %i.an = add nuw nsw <8 x i32> %i.am, %i.ak
  %i.ao = add nuw nsw <8 x i32> %i.an, %i.ac
  %i.ap = lshr <8 x i32> %i.ao, splat (i32 6)
  %i.aq = trunc <8 x i32> %i.ap to <8 x i16>
  store <8 x i16> %i.aq, ptr %i.w, align 2, !tbaa !82, !alias.scope !374, !noalias !375
  %i.ar = mul nuw nsw <8 x i32> %i.ag, <i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16>
  %i.as = mul nuw nsw <8 x i32> %i.ae, <i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %wide.load.1 = load <8 x i16>, ptr %i.r, align 2, !tbaa !82, !alias.scope !372
  %i.at = zext <8 x i16> %wide.load.1 to <8 x i32>
  %i.au = mul nuw nsw <8 x i32> %broadcast.splat35, %i.at
  %i.av = add nuw nsw <8 x i32> %i.ar, splat (i32 32)
  %i.aw = add nuw nsw <8 x i32> %i.av, %i.as
  %i.ax = add nuw nsw <8 x i32> %i.aw, %i.au
  %i.ay = add nuw nsw <8 x i32> %i.ax, %i.ac
  %i.az = lshr <8 x i32> %i.ay, splat (i32 6)
  %i.ba = trunc <8 x i32> %i.az to <8 x i16>
  %i.bb = getelementptr i8, ptr %i.w, i64 16
  store <8 x i16> %i.ba, ptr %i.bb, align 2, !tbaa !82, !alias.scope !374, !noalias !375
  %i.bc = mul nuw nsw <8 x i32> %i.ag, <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  %i.bd = mul nuw nsw <8 x i32> %i.ae, <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %wide.load.2 = load <8 x i16>, ptr %i.s, align 2, !tbaa !82, !alias.scope !372
  %i.be = zext <8 x i16> %wide.load.2 to <8 x i32>
  %i.bf = mul nuw nsw <8 x i32> %broadcast.splat35, %i.be
  %i.bg = add nuw nsw <8 x i32> %i.bc, splat (i32 32)
  %i.bh = add nuw nsw <8 x i32> %i.bg, %i.bd
  %i.bi = add nuw nsw <8 x i32> %i.bh, %i.bf
  %i.bj = add nuw nsw <8 x i32> %i.bi, %i.ac
  %i.bk = lshr <8 x i32> %i.bj, splat (i32 6)
  %i.bl = trunc <8 x i32> %i.bk to <8 x i16>
  %i.bm = getelementptr i8, ptr %i.w, i64 32
  store <8 x i16> %i.bl, ptr %i.bm, align 2, !tbaa !82, !alias.scope !374, !noalias !375
  %i.bn = mul nuw nsw <8 x i32> %i.ag, <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bo = mul nuw nsw <8 x i32> %i.ae, <i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32>
  %wide.load.3 = load <8 x i16>, ptr %i.t, align 2, !tbaa !82, !alias.scope !372
  %i.bp = zext <8 x i16> %wide.load.3 to <8 x i32>
  %i.bq = mul nuw nsw <8 x i32> %broadcast.splat35, %i.bp
  %i.br = add nuw nsw <8 x i32> %i.bn, splat (i32 32)
  %i.bs = add nuw nsw <8 x i32> %i.br, %i.bo
  %i.bt = add nuw nsw <8 x i32> %i.bs, %i.bq
  %i.bu = add nuw nsw <8 x i32> %i.bt, %i.ac
  %i.bv = lshr <8 x i32> %i.bu, splat (i32 6)
  %i.bw = trunc <8 x i32> %i.bv to <8 x i16>
  %i.bx = getelementptr i8, ptr %i.w, i64 48
  store <8 x i16> %i.bw, ptr %i.bx, align 2, !tbaa !82, !alias.scope !374, !noalias !375
  br label %middle.block

scalar.ph:                                        ; preds = %.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %.preheader ] ; 4 uses
  %i.by = load i16, ptr %i.u, align 2, !tbaa !82
  %i.bz = zext i16 %i.by to i32
  %i.ca = trunc i64 %indvars.iv to i32
  %i.cb = sub i32 31, %i.ca
  %i.cc = mul nuw nsw i32 %i.cb, %i.bz
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cd = load i16, ptr %i.a, align 2, !tbaa !82
  %i.ce = zext i16 %i.cd to i32
  %i.cf = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.cg = mul nuw nsw i32 %i.cf, %i.ce
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !82
  %i.cj = zext i16 %i.ci to i32
  %i.ck = mul nuw nsw i32 %i.y, %i.cj
  %i.cl = load i16, ptr %i.b, align 2, !tbaa !82
  %i.cm = zext i16 %i.cl to i32
  %i.cn = mul nuw nsw i32 %i.z, %i.cm
  %i.co = add nuw nsw i32 %i.cc, 32
  %i.cp = add nuw nsw i32 %i.co, %i.cg
  %i.cq = add nuw nsw i32 %i.cp, %i.ck
  %i.cr = add nuw nsw i32 %i.cq, %i.cn
  %i.cs = lshr i32 %i.cr, 6
  %i.ct = trunc i32 %i.cs to i16
  %i.cu = getelementptr [2 x i8], ptr %i.w, i64 %indvars.iv
  store i16 %i.ct, ptr %i.cu, align 2, !tbaa !82
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %middle.block, label %scalar.ph, !llvm.loop !370

middle.block:                                     ; preds = %scalar.ph, %vector.body
  %exitcond9.not = icmp eq i64 %indvars.iv.next7, 32
  br i1 %exitcond9.not, label %pred_planar_10.exit, label %.preheader, !llvm.loop !41

pred_planar_10.exit:                              ; preds = %middle.block
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_dc_10(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) #4 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = shl nuw i32 1, %4                        ; 12 uses
  %.not = icmp eq i32 %4, 31
  br i1 %.not, label %._crit_edge64.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp slt i32 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.e = and i32 %i.d, 2147483640
  %n.vec = zext nneg i32 %i.e to i64
  %i.f = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.d, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.f, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi92 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %wide.load = load <4 x i16>, ptr %i.g, align 2, !tbaa !82
  %wide.load93 = load <4 x i16>, ptr %i.h, align 2, !tbaa !82
  %i.i = zext <4 x i16> %wide.load to <4 x i32>
  %i.j = zext <4 x i16> %wide.load93 to <4 x i32>
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %wide.load94 = load <4 x i16>, ptr %i.k, align 2, !tbaa !82
  %wide.load95 = load <4 x i16>, ptr %i.l, align 2, !tbaa !82
  %i.m = zext <4 x i16> %wide.load94 to <4 x i32>
  %i.n = zext <4 x i16> %wide.load95 to <4 x i32>
  %i.o = add <4 x i32> %vec.phi, %i.i
  %i.p = add <4 x i32> %vec.phi92, %i.j
  %i.q = add <4 x i32> %i.o, %i.m                 ; 2 uses
  %i.r = add <4 x i32> %i.p, %i.n                 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !376

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.r, %i.q
  %i.t = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %.preheader57.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader
  %i.u = load i16, ptr %2, align 2, !tbaa !82
  %i.v = zext i16 %i.u to i32
  %i.w = load i16, ptr %1, align 2, !tbaa !82
  %i.x = zext i16 %i.w to i32
  %i.y = add nuw i32 %i.d, %i.v
  %i.z = add i32 %i.y, %i.x                       ; 2 uses
  %exitcond.not = icmp slt i32 %i.d, 2
  br i1 %exitcond.not, label %.preheader57.preheader, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !82
  %i.ac = zext i16 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !82
  %i.af = zext i16 %i.ae to i32
  %i.ag = add i32 %i.z, %i.ac
  %i.ah = add i32 %i.ag, %i.af                    ; 2 uses
  %exitcond.not.1 = icmp eq i32 %4, 1
  br i1 %exitcond.not.1, label %.preheader57.preheader, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.1
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !82
  %i.ak = zext i16 %i.aj to i32
  %i.al = add i32 %i.ah, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.an = load i16, ptr %i.am, align 2, !tbaa !82
  %i.ao = zext i16 %i.an to i32
  %i.ap = add i32 %i.al, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !82
  %i.as = zext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.au = load i16, ptr %i.at, align 2, !tbaa !82
  %i.av = zext i16 %i.au to i32
  %i.aw = add i32 %i.ap, %i.as
  %i.ax = add i32 %i.aw, %i.av                    ; 2 uses
  %exitcond.not.3 = icmp eq i32 %4, 2
  br i1 %exitcond.not.3, label %.preheader57.preheader, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.3
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !82
  %i.ba = zext i16 %i.az to i32
  %i.bb = add i32 %i.ax, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !82
  %i.be = zext i16 %i.bd to i32
  %i.bf = add i32 %i.bb, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !82
  %i.bi = zext i16 %i.bh to i32
  %i.bj = add i32 %i.bf, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !82
  %i.bm = zext i16 %i.bl to i32
  %i.bn = add i32 %i.bj, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !82
  %i.bq = zext i16 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !82
  %i.bt = zext i16 %i.bs to i32
  %i.bu = add i32 %i.bn, %i.bq
  %i.bv = add i32 %i.bu, %i.bt
  br label %.preheader57.preheader

.preheader57.preheader:                           ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.3, %.lr.ph.6, %middle.block
  %.lcssa = phi i32 [ %i.t, %middle.block ], [ %i.z, %.lr.ph ], [ %i.ah, %.lr.ph.1 ], [ %i.bv, %.lr.ph.6 ], [ %i.ax, %.lr.ph.3 ]
  %i.bw = add nsw i32 %4, 1
  %i.bx = ashr i32 %.lcssa, %i.bw                 ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = mul i64 %i.by, 281479271743489          ; 2 uses
  %i.ca = sext i32 %i.d to i64                    ; 2 uses
  %smax78 = tail call i32 @llvm.smax.i32(i32 %i.d, i32 1)
  %wide.trip.count79 = zext nneg i32 %smax78 to i64
  %i.cb = tail call i64 @llvm.smax.i64(i64 %i.ca, i64 4)
  %i.cc = add nsw i64 %i.cb, -1
  %i.cd = lshr i64 %i.cc, 2
  %i.ce = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %min.iters.check97 = icmp slt i32 %i.d, 13
  %n.vec99 = and i64 %i.ce, 9223372036854775804   ; 3 uses
  %i.cf = shl i64 %n.vec99, 2
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n104 = icmp eq i64 %i.ce, %n.vec99
  br label %.preheader57

.preheader57:                                     ; preds = %.preheader57.preheader, %._crit_edge62
  %indvars.iv75 = phi i64 [ 0, %.preheader57.preheader ], [ %indvars.iv.next76, %._crit_edge62 ] ; 2 uses
  %i.cg = mul nsw i64 %3, %indvars.iv75
  %i.ch = getelementptr [2 x i8], ptr %0, i64 %i.cg ; 2 uses
  br i1 %min.iters.check97, label %scalar.ph96.preheader, label %vector.body100

vector.body100:                                   ; preds = %.preheader57, %vector.body100
  %index101 = phi i64 [ %index.next102, %vector.body100 ], [ 0, %.preheader57 ] ; 2 uses
  %.idx = shl i64 %index101, 3
end_hunk_2
begin_hunk_3_@ref_filter_3tap_10:bb.a
  %wide.load53 = load <8 x i16>, ptr %i.ag, align 2, !tbaa !82, !alias.scope !395
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ac
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -14
  %i.aj = zext <8 x i16> %wide.load to <8 x i32>
  %i.ak = add nuw nsw <8 x i32> %i.aj, splat (i32 2)
  %i.al = zext <8 x i16> %wide.load51 to <8 x i32>
  %i.am = shl nuw nsw <8 x i32> %i.al, splat (i32 1)
  %i.an = add nuw nsw <8 x i32> %i.ak, %i.am
  %i.ao = zext <8 x i16> %wide.load53 to <8 x i32>
  %i.ap = add nuw nsw <8 x i32> %i.an, %i.ao
  %i.aq = lshr <8 x i32> %i.ap, splat (i32 2)
  %reverse55 = trunc nuw <8 x i32> %i.aq to <8 x i16>
  store <8 x i16> %reverse55, ptr %i.ai, align 2, !tbaa !82, !alias.scope !396, !noalias !395
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %.lr.ph.preheader85, label %vector.body, !llvm.loop !388

.lr.ph.preheader85:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.preheader ], [ %i.ab, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader85, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader85 ] ; 4 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.au = load i16, ptr %i.at, align 2, !tbaa !82
  %i.av = zext i16 %i.au to i32
  %i.aw = load i16, ptr %i.as, align 2, !tbaa !82
  %i.ax = zext i16 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 1
  %i.az = getelementptr i8, ptr %i.as, i64 -2
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !82
  %i.bb = zext i16 %i.ba to i32
  %i.bc = add nuw nsw i32 %i.av, 2
  %i.bd = add nuw nsw i32 %i.bc, %i.ay
  %i.be = add nuw nsw i32 %i.bd, %i.bb
  %i.bf = lshr i32 %i.be, 2
  %i.bg = trunc nuw i32 %i.bf to i16
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !82
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bi = trunc nuw i64 %indvars.iv to i32
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph, label %._crit_edge, !llvm.loop !389

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.bk = load i16, ptr %2, align 2, !tbaa !82
  %i.bl = zext i16 %i.bk to i32
  %i.bm = getelementptr inbounds i8, ptr %2, i64 -2
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !82
  %i.bo = zext i16 %i.bn to i32
  %i.bp = shl nuw nsw i32 %i.bo, 1
  %i.bq = load i16, ptr %3, align 2, !tbaa !82
  %i.br = zext i16 %i.bq to i32
  %i.bs = add nuw nsw i32 %i.bl, 2
  %i.bt = add nuw nsw i32 %i.bs, %i.bp
  %i.bu = add nuw nsw i32 %i.bt, %i.br
  %i.bv = lshr i32 %i.bu, 2
  %i.bw = trunc nuw i32 %i.bv to i16              ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %0, i64 -2
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !82
  %i.by = getelementptr inbounds i8, ptr %1, i64 -2
  store i16 %i.bw, ptr %i.by, align 2, !tbaa !82
  br i1 %i.k, label %.lr.ph42.preheader, label %._crit_edge43

.lr.ph42.preheader:                               ; preds = %._crit_edge
  %i.bz = zext i32 %i.j to i64                    ; 5 uses
  %i.ca = tail call i32 @llvm.smin.i32(i32 %i.j, i32 0)
  %i.cb = add nsw i32 %i.a, -2
  %i.cc = sub i32 %i.cb, %i.ca                    ; 2 uses
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %min.iters.check64 = icmp ult i32 %i.cc, 16
  br i1 %min.iters.check64, label %.lr.ph42.preheader84, label %vector.memcheck65

vector.memcheck65:                                ; preds = %.lr.ph42.preheader
  %i.ce = shl nuw nsw i64 %i.bz, 1                ; 4 uses
  %i.cf = shl nuw nsw i64 %i.cd, 1                ; 2 uses
  %i.cg = sub nsw i64 %i.ce, %i.cf
  %i.ch = getelementptr i8, ptr %1, i64 %i.cg
  %i.ci = getelementptr i8, ptr %1, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 2
  %i.ck = add nsw i64 %i.ce, -2
  %i.cl = sub nsw i64 %i.ck, %i.cf
  %i.cm = getelementptr i8, ptr %3, i64 %i.cl
  %i.cn = getelementptr i8, ptr %3, i64 %i.ce
  %i.co = getelementptr i8, ptr %i.cn, i64 4
  %bound066 = icmp ult ptr %i.ch, %i.co
  %bound167 = icmp ult ptr %i.cm, %i.cj
  %found.conflict68 = and i1 %bound066, %bound167
  br i1 %found.conflict68, label %.lr.ph42.preheader84, label %vector.ph69

vector.ph69:                                      ; preds = %vector.memcheck65
  %n.vec70 = and i64 %i.cd, 4294967288            ; 2 uses
  %i.cp = sub nsw i64 %i.bz, %n.vec70
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph69
  %index72 = phi i64 [ 0, %vector.ph69 ], [ %index.next80, %vector.body71 ] ; 2 uses
  %i.cq = sub i64 %i.bz, %index72                 ; 2 uses
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cq ; 3 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -12
  %wide.load73 = load <8 x i16>, ptr %i.cs, align 2, !tbaa !82, !alias.scope !397
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 -14
  %wide.load75 = load <8 x i16>, ptr %i.ct, align 2, !tbaa !82, !alias.scope !397
  %i.cu = getelementptr i8, ptr %i.cr, i64 -16
  %wide.load77 = load <8 x i16>, ptr %i.cu, align 2, !tbaa !82, !alias.scope !397
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cq
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -14
  %i.cx = zext <8 x i16> %wide.load73 to <8 x i32>
  %i.cy = add nuw nsw <8 x i32> %i.cx, splat (i32 2)
  %i.cz = zext <8 x i16> %wide.load75 to <8 x i32>
  %i.da = shl nuw nsw <8 x i32> %i.cz, splat (i32 1)
  %i.db = add nuw nsw <8 x i32> %i.cy, %i.da
  %i.dc = zext <8 x i16> %wide.load77 to <8 x i32>
  %i.dd = add nuw nsw <8 x i32> %i.db, %i.dc
  %i.de = lshr <8 x i32> %i.dd, splat (i32 2)
  %reverse79 = trunc nuw <8 x i32> %i.de to <8 x i16>
  store <8 x i16> %reverse79, ptr %i.cw, align 2, !tbaa !82, !alias.scope !398, !noalias !397
  %index.next80 = add nuw i64 %index72, 8         ; 2 uses
  %i.df = icmp eq i64 %index.next80, %n.vec70
  br i1 %i.df, label %.lr.ph42.preheader84, label %vector.body71, !llvm.loop !393

.lr.ph42.preheader84:                             ; preds = %vector.body71, %vector.memcheck65, %.lr.ph42.preheader
  %indvars.iv45.ph = phi i64 [ %i.bz, %vector.memcheck65 ], [ %i.bz, %.lr.ph42.preheader ], [ %i.cp, %vector.body71 ]
  br label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42.preheader84, %.lr.ph42
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.lr.ph42 ], [ %indvars.iv45.ph, %.lr.ph42.preheader84 ] ; 4 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv45 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !82
  %i.dj = zext i16 %i.di to i32
  %i.dk = load i16, ptr %i.dg, align 2, !tbaa !82
  %i.dl = zext i16 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 1
  %i.dn = getelementptr i8, ptr %i.dg, i64 -2
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !82
  %i.dp = zext i16 %i.do to i32
  %i.dq = add nuw nsw i32 %i.dj, 2
  %i.dr = add nuw nsw i32 %i.dq, %i.dm
  %i.ds = add nuw nsw i32 %i.dr, %i.dp
  %i.dt = lshr i32 %i.ds, 2
  %i.du = trunc nuw i32 %i.dt to i16
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv45
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !82
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, -1
  %i.dw = trunc nuw i64 %indvars.iv45 to i32
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.lr.ph42, label %._crit_edge43, !llvm.loop !394

._crit_edge43:                                    ; preds = %.lr.ph42, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ref_filter_strong_10(ptr nofree noundef writeonly captures(none) initializes((-2, 0), (126, 128)) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
vector.memcheck:
  %i.a = getelementptr inbounds i8, ptr %2, i64 -2 ; 6 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !82
  %i.c = getelementptr inbounds i8, ptr %0, i64 -2
  store i16 %i.b, ptr %i.c, align 2, !tbaa !82
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 126 ; 5 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !82
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 126 ; 2 uses
  store i16 %i.e, ptr %i.f, align 2, !tbaa !82
  %i.g = getelementptr i8, ptr %2, i64 128
  %bound0 = icmp ult ptr %0, %i.g
  %bound1 = icmp ult ptr %i.a, %i.f
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.prol, label %vector.body

scalar.ph.prol:                                   ; preds = %vector.body, %vector.memcheck
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 56, %vector.body ] ; 3 uses
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1 ; 2 uses
  %i.h = load i16, ptr %i.a, align 2, !tbaa !82
  %i.i = zext i16 %i.h to i32
  %i.j = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.k = xor i32 %i.j, 63
  %i.l = mul nuw nsw i32 %i.k, %i.i
  %i.m = load i16, ptr %i.d, align 2, !tbaa !82
  %i.n = zext i16 %i.m to i32
  %i.o = trunc nuw nsw i64 %indvars.iv.next.prol to i32
  %i.p = mul nuw nsw i32 %i.o, %i.n
  %i.q = add nuw nsw i32 %i.l, 32
  %i.r = add nuw nsw i32 %i.q, %i.p
  %i.s = lshr i32 %i.r, 6
  %i.t = trunc i32 %i.s to i16
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  store i16 %i.t, ptr %i.u, align 2, !tbaa !82
  br label %scalar.ph

vector.body:                                      ; preds = %vector.memcheck
  %i.v = load i16, ptr %i.d, align 2, !tbaa !82, !alias.scope !404
  %broadcast.splatinsert29 = insertelement <8 x i16> poison, i16 %i.v, i64 0
  %broadcast.splat30 = shufflevector <8 x i16> %broadcast.splatinsert29, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.w = zext <8 x i16> %broadcast.splat30 to <8 x i32> ; 7 uses
  %i.x = load i16, ptr %i.a, align 2, !tbaa !82, !alias.scope !404
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.x, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.y = zext <8 x i16> %broadcast.splat to <8 x i32> ; 7 uses
  %i.z = mul nuw nsw <8 x i32> %i.y, <i32 63, i32 62, i32 61, i32 60, i32 59, i32 58, i32 57, i32 56>
  %i.aa = mul nuw nsw <8 x i32> %i.w, <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>
  %i.ab = add nuw nsw <8 x i32> %i.z, splat (i32 32)
  %i.ac = add nuw nsw <8 x i32> %i.ab, %i.aa
  %i.ad = lshr <8 x i32> %i.ac, splat (i32 6)
  %i.ae = trunc <8 x i32> %i.ad to <8 x i16>
  store <8 x i16> %i.ae, ptr %0, align 2, !tbaa !82, !alias.scope !405, !noalias !404
  %i.af = mul nuw nsw <8 x i32> %i.y, <i32 55, i32 54, i32 53, i32 52, i32 51, i32 50, i32 49, i32 48>
  %i.ag = mul nuw nsw <8 x i32> %i.w, <i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.ah = add nuw nsw <8 x i32> %i.af, splat (i32 32)
  %i.ai = add nuw nsw <8 x i32> %i.ah, %i.ag
  %i.aj = lshr <8 x i32> %i.ai, splat (i32 6)
  %i.ak = trunc <8 x i32> %i.aj to <8 x i16>
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <8 x i16> %i.ak, ptr %i.al, align 2, !tbaa !82, !alias.scope !405, !noalias !404
  %i.am = mul nuw nsw <8 x i32> %i.y, <i32 47, i32 46, i32 45, i32 44, i32 43, i32 42, i32 41, i32 40>
  %i.an = mul nuw nsw <8 x i32> %i.w, <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.ao = add nuw nsw <8 x i32> %i.am, splat (i32 32)
  %i.ap = add nuw nsw <8 x i32> %i.ao, %i.an
  %i.aq = lshr <8 x i32> %i.ap, splat (i32 6)
  %i.ar = trunc <8 x i32> %i.aq to <8 x i16>
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <8 x i16> %i.ar, ptr %i.as, align 2, !tbaa !82, !alias.scope !405, !noalias !404
  %i.at = mul nuw nsw <8 x i32> %i.y, <i32 39, i32 38, i32 37, i32 36, i32 35, i32 34, i32 33, i32 32>
  %i.au = mul nuw nsw <8 x i32> %i.w, <i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32>
  %i.av = add nuw nsw <8 x i32> %i.at, splat (i32 32)
  %i.aw = add nuw nsw <8 x i32> %i.av, %i.au
  %i.ax = lshr <8 x i32> %i.aw, splat (i32 6)
  %i.ay = trunc <8 x i32> %i.ax to <8 x i16>
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <8 x i16> %i.ay, ptr %i.az, align 2, !tbaa !82, !alias.scope !405, !noalias !404
  %i.ba = mul nuw nsw <8 x i32> %i.y, <i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24>
  %i.bb = mul nuw nsw <8 x i32> %i.w, <i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40>
  %i.bc = add nuw nsw <8 x i32> %i.ba, splat (i32 32)
  %i.bd = add nuw nsw <8 x i32> %i.bc, %i.bb
  %i.be = lshr <8 x i32> %i.bd, splat (i32 6)
  %i.bf = trunc <8 x i32> %i.be to <8 x i16>
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i16> %i.bf, ptr %i.bg, align 2, !tbaa !82, !alias.scope !405, !noalias !404
  %i.bh = mul nuw nsw <8 x i32> %i.y, <i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16>
  %i.bi = mul nuw nsw <8 x i32> %i.w, <i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48>
  %i.bj = add nuw nsw <8 x i32> %i.bh, splat (i32 32)
  %i.bk = add nuw nsw <8 x i32> %i.bj, %i.bi
  %i.bl = lshr <8 x i32> %i.bk, splat (i32 6)
  %i.bm = trunc <8 x i32> %i.bl to <8 x i16>
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <8 x i16> %i.bm, ptr %i.bn, align 2, !tbaa !82, !alias.scope !405, !noalias !404
  %i.bo = mul nuw nsw <8 x i32> %i.y, <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  %i.bp = mul nuw nsw <8 x i32> %i.w, <i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56>
  %i.bq = add nuw nsw <8 x i32> %i.bo, splat (i32 32)
  %i.br = add nuw nsw <8 x i32> %i.bq, %i.bp
  %i.bs = lshr <8 x i32> %i.br, splat (i32 6)
  %i.bt = trunc <8 x i32> %i.bs to <8 x i16>
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <8 x i16> %i.bt, ptr %i.bu, align 2, !tbaa !82, !alias.scope !405, !noalias !404
  br label %scalar.ph.prol

.preheader:                                       ; preds = %scalar.ph
  %i.bv = getelementptr inbounds i8, ptr %1, i64 -2
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !82 ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 126 ; 8 uses
  %i.by = zext i16 %i.bw to i64
  %broadcast.splatinsert35 = insertelement <8 x i64> poison, i64 %i.by, i64 0
  %broadcast.splat36 = shufflevector <8 x i64> %broadcast.splatinsert35, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %.preheader
  %index38 = phi i64 [ 0, %.preheader ], [ %index.next43, %vector.body37 ] ; 2 uses
  %vec.ind39 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.preheader ], [ %vec.ind.next44, %vector.body37 ] ; 2 uses
  %vec.ind40 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %.preheader ], [ %vec.ind.next45, %vector.body37 ] ; 2 uses
  %i.bz = sub nuw nsw <8 x i64> splat (i64 63), %vec.ind39
  %i.ca = mul nuw nsw <8 x i64> %i.bz, %broadcast.splat36
  %i.cb = load i16, ptr %i.bx, align 2, !tbaa !82
  %broadcast.splatinsert41 = insertelement <8 x i16> poison, i16 %i.cb, i64 0
  %broadcast.splat42 = shufflevector <8 x i16> %broadcast.splatinsert41, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cc = zext <8 x i16> %broadcast.splat42 to <8 x i32>
  %i.cd = mul nuw nsw <8 x i32> %vec.ind40, %i.cc
  %i.ce = trunc nuw nsw <8 x i64> %i.ca to <8 x i32>
  %i.cf = add nuw nsw <8 x i32> %i.ce, splat (i32 32)
  %i.cg = add nuw nsw <8 x i32> %i.cf, %i.cd
  %i.ch = lshr <8 x i32> %i.cg, splat (i32 6)
  %i.ci = trunc <8 x i32> %i.ch to <8 x i16>
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index38
  store <8 x i16> %i.ci, ptr %i.cj, align 2, !tbaa !82
  %index.next43 = add nuw i64 %index38, 8         ; 2 uses
  %vec.ind.next44 = add nuw nsw <8 x i64> %vec.ind39, splat (i64 8)
  %vec.ind.next45 = add <8 x i32> %vec.ind40, splat (i32 8)
  %i.ck = icmp eq i64 %index.next43, 56
  br i1 %i.ck, label %scalar.ph33, label %vector.body37, !llvm.loop !402

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.prol
  %indvars.iv = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.next.1, %scalar.ph ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cl = load i16, ptr %i.a, align 2, !tbaa !82
  %i.cm = zext i16 %i.cl to i32
  %i.cn = trunc i64 %indvars.iv to i32
  %i.co = sub i32 63, %i.cn
  %i.cp = mul nuw nsw i32 %i.co, %i.cm
  %i.cq = load i16, ptr %i.d, align 2, !tbaa !82
  %i.cr = zext i16 %i.cq to i32
  %i.cs = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ct = mul nuw nsw i32 %i.cs, %i.cr
  %i.cu = add nuw nsw i32 %i.cp, 32
  %i.cv = add nuw nsw i32 %i.cu, %i.ct
  %i.cw = lshr i32 %i.cv, 6
  %i.cx = trunc i32 %i.cw to i16
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.cx, ptr %i.cy, align 2, !tbaa !82
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.cz = load i16, ptr %i.a, align 2, !tbaa !82
  %i.da = zext i16 %i.cz to i32
  %i.db = trunc i64 %indvars.iv.next to i32
  %i.dc = sub i32 63, %i.db
  %i.dd = mul nuw nsw i32 %i.dc, %i.da
  %i.de = load i16, ptr %i.d, align 2, !tbaa !82
  %i.df = zext i16 %i.de to i32
  %i.dg = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.dh = mul nuw nsw i32 %i.dg, %i.df
  %i.di = add nuw nsw i32 %i.dd, 32
  %i.dj = add nuw nsw i32 %i.di, %i.dh
  %i.dk = lshr i32 %i.dj, 6
  %i.dl = trunc i32 %i.dk to i16
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  store i16 %i.dl, ptr %i.dm, align 2, !tbaa !82
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 63
  br i1 %exitcond.not.1, label %.preheader, label %scalar.ph, !llvm.loop !403

scalar.ph33:                                      ; preds = %vector.body37
  %i.dn = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.do = zext i16 %i.dn to i32
  %i.dp = mul nuw nsw i32 %i.do, 57
  %i.dq = zext i16 %i.bw to i32
  %i.dr = mul nuw nsw i32 %i.dq, 7
  %i.ds = add nuw nsw i32 %i.dr, 32
  %i.dt = add nuw nsw i32 %i.ds, %i.dp
  %i.du = lshr i32 %i.dt, 6
  %i.dv = trunc i32 %i.du to i16
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !82
  %i.dx = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.dy = zext i16 %i.dx to i32
  %i.dz = mul nuw nsw i32 %i.dy, 58
  %i.ea = zext i16 %i.bw to i32
  %i.eb = mul nuw nsw i32 %i.ea, 6
  %i.ec = add nuw nsw i32 %i.eb, 32
  %i.ed = add nuw nsw i32 %i.ec, %i.dz
  %i.ee = lshr i32 %i.ed, 6
  %i.ef = trunc i32 %i.ee to i16
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 114
  store i16 %i.ef, ptr %i.eg, align 2, !tbaa !82
  %i.eh = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.ei = zext i16 %i.eh to i32
  %i.ej = mul nuw nsw i32 %i.ei, 59
  %i.ek = zext i16 %i.bw to i32
  %i.el = mul nuw nsw i32 %i.ek, 5
  %i.em = add nuw nsw i32 %i.el, 32
  %i.en = add nuw nsw i32 %i.em, %i.ej
  %i.eo = lshr i32 %i.en, 6
  %i.ep = trunc i32 %i.eo to i16
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i16 %i.ep, ptr %i.eq, align 2, !tbaa !82
  %i.er = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.es = zext i16 %i.er to i32
  %i.et = mul nuw nsw i32 %i.es, 60
  %.tr = zext i16 %i.bw to i32
  %i.eu = shl nuw nsw i32 %.tr, 2
  %i.ev = add nuw nsw i32 %i.eu, 32
  %i.ew = add nuw nsw i32 %i.ev, %i.et
  %i.ex = lshr i32 %i.ew, 6
  %i.ey = trunc i32 %i.ex to i16
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 118
  store i16 %i.ey, ptr %i.ez, align 2, !tbaa !82
  %i.fa = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.fb = zext i16 %i.fa to i32
  %i.fc = mul nuw nsw i32 %i.fb, 61
  %i.fd = zext i16 %i.bw to i32
  %i.fe = mul nuw nsw i32 %i.fd, 3
  %i.ff = add nuw nsw i32 %i.fe, 32
  %i.fg = add nuw nsw i32 %i.ff, %i.fc
  %i.fh = lshr i32 %i.fg, 6
  %i.fi = trunc i32 %i.fh to i16
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i16 %i.fi, ptr %i.fj, align 2, !tbaa !82
  %i.fk = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.fl = zext i16 %i.fk to i32
  %i.fm = mul nuw nsw i32 %i.fl, 62
  %.tr47 = zext i16 %i.bw to i32
  %i.fn = shl nuw nsw i32 %.tr47, 1
  %i.fo = add nuw nsw i32 %i.fn, 32
  %i.fp = add nuw nsw i32 %i.fo, %i.fm
  %i.fq = lshr i32 %i.fp, 6
  %i.fr = trunc i32 %i.fq to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 122
  store i16 %i.fr, ptr %i.fs, align 2, !tbaa !82
  %i.ft = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.fu = zext i16 %i.ft to i32
  %i.fv = mul nuw nsw i32 %i.fu, 63
  %i.fw = zext i16 %i.bw to i32
  %i.fx = add nuw nsw i32 %i.fw, 32
  %i.fy = add nuw nsw i32 %i.fx, %i.fv
  %i.fz = lshr i32 %i.fy, 6
  %i.ga = trunc i32 %i.fz to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 124
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !82
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @intra_pred_2_12(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
bb.a:
  %i.a = alloca [81 x i16], align 16              ; 27 uses
  %i.b = alloca [81 x i16], align 16              ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 18 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !101  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 20264
  %i.h = sext i32 %4 to i64                       ; 4 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !77   ; 15 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 20276
  %i.l = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.h
  %i.m = load i32, ptr %i.l, align 4, !tbaa !77   ; 15 uses
  %i.n = shl i32 4, %i.j                          ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 18604
  %i.p = load i32, ptr %i.o, align 4, !tbaa !113  ; 5 uses
  %i.q = ashr i32 %i.n, %i.p
  %i.r = shl i32 4, %i.m                          ; 3 uses
  %i.s = ashr i32 %i.r, %i.p                      ; 2 uses
  %i.t = ashr i32 %2, %i.j
  %i.u = ashr i32 %3, %i.m
  %i.v = ashr i32 %2, %i.p
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 20260
  %i.x = load i32, ptr %i.w, align 4, !tbaa !114  ; 5 uses
  %i.y = and i32 %i.v, %i.x                       ; 3 uses
  %i.z = ashr i32 %3, %i.p
  %i.aa = and i32 %i.z, %i.x                      ; 3 uses
  %i.ab = icmp eq i32 %4, 0                       ; 2 uses
  %i.ac = icmp ne i32 %i.s, 0
  %or.cond.i = select i1 %i.ab, i1 true, i1 %i.ac
  %.sink256.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %.sink256.sroa.gep343 = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = shl nsw i32 %3, 1
  %i.ae = shl nuw i32 1, %i.p
  %i.af = and i32 %i.ae, %i.ad
end_hunk_3
begin_hunk_4_@pred_planar_2_12:bb.a
  %i.go = mul nuw nsw i32 %i.gn, 10
  %i.gp = load i16, ptr %i.k, align 2, !tbaa !82
  %i.gq = zext i16 %i.gp to i32
  %i.gr = mul nuw nsw i32 %i.ac, %i.gq
  %i.gs = load i16, ptr %i.b, align 2, !tbaa !82
  %i.gt = zext i16 %i.gs to i32
  %i.gu = mul nuw nsw i32 %i.ag, %i.gt
  %i.gv = add nuw nsw i32 %i.gl, 16
  %i.gw = add nuw nsw i32 %i.gv, %i.go
  %i.gx = add nuw nsw i32 %i.gw, %i.gr
  %i.gy = add nuw nsw i32 %i.gx, %i.gu
  %i.gz = lshr i32 %i.gy, 5
  %i.ha = trunc i32 %i.gz to i16
  %i.hb = getelementptr i8, ptr %i.t, i64 18
  store i16 %i.ha, ptr %i.hb, align 2, !tbaa !82
  %i.hc = load i16, ptr %i.r, align 2, !tbaa !82
  %i.hd = zext i16 %i.hc to i32
  %i.he = mul nuw nsw i32 %i.hd, 5
  %i.hf = load i16, ptr %i.a, align 2, !tbaa !82
  %i.hg = zext i16 %i.hf to i32
  %i.hh = mul nuw nsw i32 %i.hg, 11
  %i.hi = load i16, ptr %i.l, align 2, !tbaa !82
  %i.hj = zext i16 %i.hi to i32
  %i.hk = mul nuw nsw i32 %i.ac, %i.hj
  %i.hl = load i16, ptr %i.b, align 2, !tbaa !82
  %i.hm = zext i16 %i.hl to i32
  %i.hn = mul nuw nsw i32 %i.ag, %i.hm
  %i.ho = add nuw nsw i32 %i.he, 16
  %i.hp = add nuw nsw i32 %i.ho, %i.hh
  %i.hq = add nuw nsw i32 %i.hp, %i.hk
  %i.hr = add nuw nsw i32 %i.hq, %i.hn
  %i.hs = lshr i32 %i.hr, 5
  %i.ht = trunc i32 %i.hs to i16
  %i.hu = getelementptr i8, ptr %i.t, i64 20
  store i16 %i.ht, ptr %i.hu, align 2, !tbaa !82
  %i.hv = load i16, ptr %i.r, align 2, !tbaa !82
  %i.hw = zext i16 %i.hv to i32
  %i.hx = shl nuw nsw i32 %i.hw, 2
  %i.hy = load i16, ptr %i.a, align 2, !tbaa !82
  %i.hz = zext i16 %i.hy to i32
  %i.ia = mul nuw nsw i32 %i.hz, 12
  %i.ib = load i16, ptr %i.m, align 2, !tbaa !82
  %i.ic = zext i16 %i.ib to i32
  %i.id = mul nuw nsw i32 %i.ac, %i.ic
  %i.ie = load i16, ptr %i.b, align 2, !tbaa !82
  %i.if = zext i16 %i.ie to i32
  %i.ig = mul nuw nsw i32 %i.ag, %i.if
  %i.ih = add nuw nsw i32 %i.hx, 16
  %i.ii = add nuw nsw i32 %i.ih, %i.ia
  %i.ij = add nuw nsw i32 %i.ii, %i.id
  %i.ik = add nuw nsw i32 %i.ij, %i.ig
  %i.il = lshr i32 %i.ik, 5
  %i.im = trunc i32 %i.il to i16
  %i.in = getelementptr i8, ptr %i.t, i64 22
  store i16 %i.im, ptr %i.in, align 2, !tbaa !82
  %i.io = load i16, ptr %i.r, align 2, !tbaa !82
  %i.ip = zext i16 %i.io to i32
  %i.iq = mul nuw nsw i32 %i.ip, 3
  %i.ir = load i16, ptr %i.a, align 2, !tbaa !82
  %i.is = zext i16 %i.ir to i32
  %i.it = mul nuw nsw i32 %i.is, 13
  %i.iu = load i16, ptr %i.n, align 2, !tbaa !82
  %i.iv = zext i16 %i.iu to i32
  %i.iw = mul nuw nsw i32 %i.ac, %i.iv
  %i.ix = load i16, ptr %i.b, align 2, !tbaa !82
  %i.iy = zext i16 %i.ix to i32
  %i.iz = mul nuw nsw i32 %i.ag, %i.iy
  %i.ja = add nuw nsw i32 %i.iq, 16
  %i.jb = add nuw nsw i32 %i.ja, %i.it
  %i.jc = add nuw nsw i32 %i.jb, %i.iw
  %i.jd = add nuw nsw i32 %i.jc, %i.iz
  %i.je = lshr i32 %i.jd, 5
  %i.jf = trunc i32 %i.je to i16
  %i.jg = getelementptr i8, ptr %i.t, i64 24
  store i16 %i.jf, ptr %i.jg, align 2, !tbaa !82
  %i.jh = load i16, ptr %i.r, align 2, !tbaa !82
  %i.ji = zext i16 %i.jh to i32
  %i.jj = shl nuw nsw i32 %i.ji, 1
  %i.jk = load i16, ptr %i.a, align 2, !tbaa !82
  %i.jl = zext i16 %i.jk to i32
  %i.jm = mul nuw nsw i32 %i.jl, 14
  %i.jn = load i16, ptr %i.o, align 2, !tbaa !82
  %i.jo = zext i16 %i.jn to i32
  %i.jp = mul nuw nsw i32 %i.ac, %i.jo
  %i.jq = load i16, ptr %i.b, align 2, !tbaa !82
  %i.jr = zext i16 %i.jq to i32
  %i.js = mul nuw nsw i32 %i.ag, %i.jr
  %i.jt = add nuw nsw i32 %i.jj, 16
  %i.ju = add nuw nsw i32 %i.jt, %i.jm
  %i.jv = add nuw nsw i32 %i.ju, %i.jp
  %i.jw = add nuw nsw i32 %i.jv, %i.js
  %i.jx = lshr i32 %i.jw, 5
  %i.jy = trunc i32 %i.jx to i16
  %i.jz = getelementptr i8, ptr %i.t, i64 26
  store i16 %i.jy, ptr %i.jz, align 2, !tbaa !82
  %i.ka = load i16, ptr %i.r, align 2, !tbaa !82
  %i.kb = zext i16 %i.ka to i32
  %i.kc = load i16, ptr %i.a, align 2, !tbaa !82
  %i.kd = zext i16 %i.kc to i32
  %i.ke = mul nuw nsw i32 %i.kd, 15
  %i.kf = load i16, ptr %i.p, align 2, !tbaa !82
  %i.kg = zext i16 %i.kf to i32
  %i.kh = mul nuw nsw i32 %i.ac, %i.kg
  %i.ki = load i16, ptr %i.b, align 2, !tbaa !82
  %i.kj = zext i16 %i.ki to i32
  %i.kk = mul nuw nsw i32 %i.ag, %i.kj
  %i.kl = add nuw nsw i32 %i.kb, 16
  %i.km = add nuw nsw i32 %i.kl, %i.ke
  %i.kn = add nuw nsw i32 %i.km, %i.kh
  %i.ko = add nuw nsw i32 %i.kn, %i.kk
  %i.kp = lshr i32 %i.ko, 5
  %i.kq = trunc i32 %i.kp to i16
  %i.kr = getelementptr i8, ptr %i.t, i64 28
  store i16 %i.kq, ptr %i.kr, align 2, !tbaa !82
  %i.ks = load i16, ptr %i.a, align 2, !tbaa !82
  %i.kt = zext i16 %i.ks to i32
  %i.ku = shl nuw nsw i32 %i.kt, 4
  %i.kv = load i16, ptr %i.q, align 2, !tbaa !82
  %i.kw = zext i16 %i.kv to i32
  %i.kx = mul nuw nsw i32 %i.ac, %i.kw
  %i.ky = load i16, ptr %i.b, align 2, !tbaa !82
  %i.kz = zext i16 %i.ky to i32
  %i.la = mul nuw nsw i32 %i.ag, %i.kz
  %i.lb = add nuw nsw i32 %i.ku, 16
  %i.lc = add nuw nsw i32 %i.lb, %i.kx
  %i.ld = add nuw nsw i32 %i.lc, %i.la
  %i.le = lshr i32 %i.ld, 5
  %i.lf = trunc i32 %i.le to i16
  %i.lg = getelementptr i8, ptr %i.t, i64 30
  store i16 %i.lf, ptr %i.lg, align 2, !tbaa !82
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %pred_planar_12.exit, label %.preheader, !llvm.loop !54

pred_planar_12.exit:                              ; preds = %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_planar_3_12(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.c = insertelement <2 x ptr> poison, ptr %2, i64 0
  %i.d = insertelement <2 x ptr> %i.c, ptr %1, i64 1 ; 2 uses
  %i.e = getelementptr i8, <2 x ptr> %i.d, <2 x i64> <i64 64, i64 66>
  %scevgep19 = getelementptr i8, ptr %2, i64 66
  %i.f = mul i64 %3, 62
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %scevgep20 = getelementptr i8, ptr %i.g, i64 64 ; 2 uses
  %i.h = insertelement <2 x ptr> poison, ptr %0, i64 0
  %i.i = shufflevector <2 x ptr> %i.h, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.j = insertelement <2 x ptr> poison, ptr %scevgep20, i64 0
  %i.k = shufflevector <2 x ptr> %i.j, <2 x ptr> poison, <2 x i32> zeroinitializer
  %bound0 = icmp ult ptr %0, %scevgep19
  %bound1 = icmp ult ptr %i.b, %scevgep20
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %3, 4611686018427387904
  %stride.check = icmp ne i64 %.mask, 0
  %i.l = or i1 %found.conflict, %stride.check
  %i.m = icmp ult <2 x ptr> %i.i, %i.e
  %i.n = icmp ult <2 x ptr> %i.d, %i.k
  %i.o = and <2 x i1> %i.m, %i.n                  ; 2 uses
  %i.p = extractelement <2 x i1> %i.o, i64 0
  %conflict.rdx = or i1 %i.l, %i.p
  %i.q = extractelement <2 x i1> %i.o, i64 1
  %conflict.rdx27 = or i1 %conflict.rdx, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %middle.block
  %indvars.iv6 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next7, %middle.block ] ; 4 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv6 ; 2 uses
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1 ; 3 uses
  %i.v = mul nsw i64 %3, %indvars.iv6
  %i.w = getelementptr [2 x i8], ptr %0, i64 %i.v ; 5 uses
  %i.x = trunc i64 %indvars.iv6 to i32
  %i.y = sub i32 31, %i.x                         ; 2 uses
  %i.z = trunc nuw nsw i64 %indvars.iv.next7 to i32 ; 2 uses
  br i1 %conflict.rdx27, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.preheader
  %broadcast.splatinsert34 = insertelement <8 x i32> poison, i32 %i.y, i64 0
  %broadcast.splat35 = shufflevector <8 x i32> %broadcast.splatinsert34, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aa = load i16, ptr %i.b, align 2, !tbaa !82, !alias.scope !464
  %broadcast.splatinsert32 = insertelement <8 x i16> poison, i16 %i.aa, i64 0
  %broadcast.splat33 = shufflevector <8 x i16> %broadcast.splatinsert32, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ab = zext <8 x i16> %broadcast.splat33 to <8 x i32>
  %i.ac = mul nuw nsw <8 x i32> %broadcast.splat, %i.ab ; 4 uses
  %i.ad = load i16, ptr %i.a, align 2, !tbaa !82, !alias.scope !465
  %broadcast.splatinsert30 = insertelement <8 x i16> poison, i16 %i.ad, i64 0
  %broadcast.splat31 = shufflevector <8 x i16> %broadcast.splatinsert30, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ae = zext <8 x i16> %broadcast.splat31 to <8 x i32> ; 4 uses
  %i.af = load i16, ptr %i.u, align 2, !tbaa !82, !alias.scope !466
  %broadcast.splatinsert28 = insertelement <8 x i16> poison, i16 %i.af, i64 0
  %broadcast.splat29 = shufflevector <8 x i16> %broadcast.splatinsert28, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ag = zext <8 x i16> %broadcast.splat29 to <8 x i32> ; 4 uses
  %i.ah = mul nuw nsw <8 x i32> %i.ag, <i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24>
  %i.ai = mul nuw nsw <8 x i32> %i.ae, <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>
  %wide.load = load <8 x i16>, ptr %1, align 2, !tbaa !82, !alias.scope !465
  %i.aj = zext <8 x i16> %wide.load to <8 x i32>
  %i.ak = mul nuw nsw <8 x i32> %broadcast.splat35, %i.aj
  %i.al = add nuw nsw <8 x i32> %i.ah, splat (i32 32)
  %i.am = add nuw nsw <8 x i32> %i.al, %i.ai
  %i.an = add nuw nsw <8 x i32> %i.am, %i.ak
  %i.ao = add nuw nsw <8 x i32> %i.an, %i.ac
  %i.ap = lshr <8 x i32> %i.ao, splat (i32 6)
  %i.aq = trunc <8 x i32> %i.ap to <8 x i16>
  store <8 x i16> %i.aq, ptr %i.w, align 2, !tbaa !82, !alias.scope !467, !noalias !468
  %i.ar = mul nuw nsw <8 x i32> %i.ag, <i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16>
  %i.as = mul nuw nsw <8 x i32> %i.ae, <i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %wide.load.1 = load <8 x i16>, ptr %i.r, align 2, !tbaa !82, !alias.scope !465
  %i.at = zext <8 x i16> %wide.load.1 to <8 x i32>
  %i.au = mul nuw nsw <8 x i32> %broadcast.splat35, %i.at
  %i.av = add nuw nsw <8 x i32> %i.ar, splat (i32 32)
  %i.aw = add nuw nsw <8 x i32> %i.av, %i.as
  %i.ax = add nuw nsw <8 x i32> %i.aw, %i.au
  %i.ay = add nuw nsw <8 x i32> %i.ax, %i.ac
  %i.az = lshr <8 x i32> %i.ay, splat (i32 6)
  %i.ba = trunc <8 x i32> %i.az to <8 x i16>
  %i.bb = getelementptr i8, ptr %i.w, i64 16
  store <8 x i16> %i.ba, ptr %i.bb, align 2, !tbaa !82, !alias.scope !467, !noalias !468
  %i.bc = mul nuw nsw <8 x i32> %i.ag, <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  %i.bd = mul nuw nsw <8 x i32> %i.ae, <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %wide.load.2 = load <8 x i16>, ptr %i.s, align 2, !tbaa !82, !alias.scope !465
  %i.be = zext <8 x i16> %wide.load.2 to <8 x i32>
  %i.bf = mul nuw nsw <8 x i32> %broadcast.splat35, %i.be
  %i.bg = add nuw nsw <8 x i32> %i.bc, splat (i32 32)
  %i.bh = add nuw nsw <8 x i32> %i.bg, %i.bd
  %i.bi = add nuw nsw <8 x i32> %i.bh, %i.bf
  %i.bj = add nuw nsw <8 x i32> %i.bi, %i.ac
  %i.bk = lshr <8 x i32> %i.bj, splat (i32 6)
  %i.bl = trunc <8 x i32> %i.bk to <8 x i16>
  %i.bm = getelementptr i8, ptr %i.w, i64 32
  store <8 x i16> %i.bl, ptr %i.bm, align 2, !tbaa !82, !alias.scope !467, !noalias !468
  %i.bn = mul nuw nsw <8 x i32> %i.ag, <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bo = mul nuw nsw <8 x i32> %i.ae, <i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32>
  %wide.load.3 = load <8 x i16>, ptr %i.t, align 2, !tbaa !82, !alias.scope !465
  %i.bp = zext <8 x i16> %wide.load.3 to <8 x i32>
  %i.bq = mul nuw nsw <8 x i32> %broadcast.splat35, %i.bp
  %i.br = add nuw nsw <8 x i32> %i.bn, splat (i32 32)
  %i.bs = add nuw nsw <8 x i32> %i.br, %i.bo
  %i.bt = add nuw nsw <8 x i32> %i.bs, %i.bq
  %i.bu = add nuw nsw <8 x i32> %i.bt, %i.ac
  %i.bv = lshr <8 x i32> %i.bu, splat (i32 6)
  %i.bw = trunc <8 x i32> %i.bv to <8 x i16>
  %i.bx = getelementptr i8, ptr %i.w, i64 48
  store <8 x i16> %i.bw, ptr %i.bx, align 2, !tbaa !82, !alias.scope !467, !noalias !468
  br label %middle.block

scalar.ph:                                        ; preds = %.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %.preheader ] ; 4 uses
  %i.by = load i16, ptr %i.u, align 2, !tbaa !82
  %i.bz = zext i16 %i.by to i32
  %i.ca = trunc i64 %indvars.iv to i32
  %i.cb = sub i32 31, %i.ca
  %i.cc = mul nuw nsw i32 %i.cb, %i.bz
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cd = load i16, ptr %i.a, align 2, !tbaa !82
  %i.ce = zext i16 %i.cd to i32
  %i.cf = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.cg = mul nuw nsw i32 %i.cf, %i.ce
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !82
  %i.cj = zext i16 %i.ci to i32
  %i.ck = mul nuw nsw i32 %i.y, %i.cj
  %i.cl = load i16, ptr %i.b, align 2, !tbaa !82
  %i.cm = zext i16 %i.cl to i32
  %i.cn = mul nuw nsw i32 %i.z, %i.cm
  %i.co = add nuw nsw i32 %i.cc, 32
  %i.cp = add nuw nsw i32 %i.co, %i.cg
  %i.cq = add nuw nsw i32 %i.cp, %i.ck
  %i.cr = add nuw nsw i32 %i.cq, %i.cn
  %i.cs = lshr i32 %i.cr, 6
  %i.ct = trunc i32 %i.cs to i16
  %i.cu = getelementptr [2 x i8], ptr %i.w, i64 %indvars.iv
  store i16 %i.ct, ptr %i.cu, align 2, !tbaa !82
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %middle.block, label %scalar.ph, !llvm.loop !463

middle.block:                                     ; preds = %scalar.ph, %vector.body
  %exitcond9.not = icmp eq i64 %indvars.iv.next7, 32
  br i1 %exitcond9.not, label %pred_planar_12.exit, label %.preheader, !llvm.loop !54

pred_planar_12.exit:                              ; preds = %middle.block
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_dc_12(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) #4 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = shl nuw i32 1, %4                        ; 12 uses
  %.not = icmp eq i32 %4, 31
  br i1 %.not, label %._crit_edge64.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp slt i32 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.e = and i32 %i.d, 2147483640
  %n.vec = zext nneg i32 %i.e to i64
  %i.f = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.d, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.f, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi92 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %wide.load = load <4 x i16>, ptr %i.g, align 2, !tbaa !82
  %wide.load93 = load <4 x i16>, ptr %i.h, align 2, !tbaa !82
  %i.i = zext <4 x i16> %wide.load to <4 x i32>
  %i.j = zext <4 x i16> %wide.load93 to <4 x i32>
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %wide.load94 = load <4 x i16>, ptr %i.k, align 2, !tbaa !82
  %wide.load95 = load <4 x i16>, ptr %i.l, align 2, !tbaa !82
  %i.m = zext <4 x i16> %wide.load94 to <4 x i32>
  %i.n = zext <4 x i16> %wide.load95 to <4 x i32>
  %i.o = add <4 x i32> %vec.phi, %i.i
  %i.p = add <4 x i32> %vec.phi92, %i.j
  %i.q = add <4 x i32> %i.o, %i.m                 ; 2 uses
  %i.r = add <4 x i32> %i.p, %i.n                 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !469

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.r, %i.q
  %i.t = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %.preheader57.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader
  %i.u = load i16, ptr %2, align 2, !tbaa !82
  %i.v = zext i16 %i.u to i32
  %i.w = load i16, ptr %1, align 2, !tbaa !82
  %i.x = zext i16 %i.w to i32
  %i.y = add nuw i32 %i.d, %i.v
  %i.z = add i32 %i.y, %i.x                       ; 2 uses
  %exitcond.not = icmp slt i32 %i.d, 2
  br i1 %exitcond.not, label %.preheader57.preheader, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !82
  %i.ac = zext i16 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !82
  %i.af = zext i16 %i.ae to i32
  %i.ag = add i32 %i.z, %i.ac
  %i.ah = add i32 %i.ag, %i.af                    ; 2 uses
  %exitcond.not.1 = icmp eq i32 %4, 1
  br i1 %exitcond.not.1, label %.preheader57.preheader, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.1
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !82
  %i.ak = zext i16 %i.aj to i32
  %i.al = add i32 %i.ah, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.an = load i16, ptr %i.am, align 2, !tbaa !82
  %i.ao = zext i16 %i.an to i32
  %i.ap = add i32 %i.al, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !82
  %i.as = zext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.au = load i16, ptr %i.at, align 2, !tbaa !82
  %i.av = zext i16 %i.au to i32
  %i.aw = add i32 %i.ap, %i.as
  %i.ax = add i32 %i.aw, %i.av                    ; 2 uses
  %exitcond.not.3 = icmp eq i32 %4, 2
  br i1 %exitcond.not.3, label %.preheader57.preheader, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.3
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !82
  %i.ba = zext i16 %i.az to i32
  %i.bb = add i32 %i.ax, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !82
  %i.be = zext i16 %i.bd to i32
  %i.bf = add i32 %i.bb, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !82
  %i.bi = zext i16 %i.bh to i32
  %i.bj = add i32 %i.bf, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !82
  %i.bm = zext i16 %i.bl to i32
  %i.bn = add i32 %i.bj, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !82
  %i.bq = zext i16 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !82
  %i.bt = zext i16 %i.bs to i32
  %i.bu = add i32 %i.bn, %i.bq
  %i.bv = add i32 %i.bu, %i.bt
  br label %.preheader57.preheader

.preheader57.preheader:                           ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.3, %.lr.ph.6, %middle.block
  %.lcssa = phi i32 [ %i.t, %middle.block ], [ %i.z, %.lr.ph ], [ %i.ah, %.lr.ph.1 ], [ %i.bv, %.lr.ph.6 ], [ %i.ax, %.lr.ph.3 ]
  %i.bw = add nsw i32 %4, 1
  %i.bx = ashr i32 %.lcssa, %i.bw                 ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = mul i64 %i.by, 281479271743489          ; 2 uses
  %i.ca = sext i32 %i.d to i64                    ; 2 uses
  %smax78 = tail call i32 @llvm.smax.i32(i32 %i.d, i32 1)
  %wide.trip.count79 = zext nneg i32 %smax78 to i64
  %i.cb = tail call i64 @llvm.smax.i64(i64 %i.ca, i64 4)
  %i.cc = add nsw i64 %i.cb, -1
  %i.cd = lshr i64 %i.cc, 2
  %i.ce = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %min.iters.check97 = icmp slt i32 %i.d, 13
  %n.vec99 = and i64 %i.ce, 9223372036854775804   ; 3 uses
  %i.cf = shl i64 %n.vec99, 2
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n104 = icmp eq i64 %i.ce, %n.vec99
  br label %.preheader57

.preheader57:                                     ; preds = %.preheader57.preheader, %._crit_edge62
  %indvars.iv75 = phi i64 [ 0, %.preheader57.preheader ], [ %indvars.iv.next76, %._crit_edge62 ] ; 2 uses
  %i.cg = mul nsw i64 %3, %indvars.iv75
  %i.ch = getelementptr [2 x i8], ptr %0, i64 %i.cg ; 2 uses
  br i1 %min.iters.check97, label %scalar.ph96.preheader, label %vector.body100

vector.body100:                                   ; preds = %.preheader57, %vector.body100
  %index101 = phi i64 [ %index.next102, %vector.body100 ], [ 0, %.preheader57 ] ; 2 uses
  %.idx = shl i64 %index101, 3
end_hunk_4
begin_hunk_5_@ref_filter_3tap_12:bb.a
  %wide.load53 = load <8 x i16>, ptr %i.ag, align 2, !tbaa !82, !alias.scope !488
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ac
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -14
  %i.aj = zext <8 x i16> %wide.load to <8 x i32>
  %i.ak = add nuw nsw <8 x i32> %i.aj, splat (i32 2)
  %i.al = zext <8 x i16> %wide.load51 to <8 x i32>
  %i.am = shl nuw nsw <8 x i32> %i.al, splat (i32 1)
  %i.an = add nuw nsw <8 x i32> %i.ak, %i.am
  %i.ao = zext <8 x i16> %wide.load53 to <8 x i32>
  %i.ap = add nuw nsw <8 x i32> %i.an, %i.ao
  %i.aq = lshr <8 x i32> %i.ap, splat (i32 2)
  %reverse55 = trunc nuw <8 x i32> %i.aq to <8 x i16>
  store <8 x i16> %reverse55, ptr %i.ai, align 2, !tbaa !82, !alias.scope !489, !noalias !488
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %.lr.ph.preheader85, label %vector.body, !llvm.loop !481

.lr.ph.preheader85:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.preheader ], [ %i.ab, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader85, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader85 ] ; 4 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.au = load i16, ptr %i.at, align 2, !tbaa !82
  %i.av = zext i16 %i.au to i32
  %i.aw = load i16, ptr %i.as, align 2, !tbaa !82
  %i.ax = zext i16 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 1
  %i.az = getelementptr i8, ptr %i.as, i64 -2
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !82
  %i.bb = zext i16 %i.ba to i32
  %i.bc = add nuw nsw i32 %i.av, 2
  %i.bd = add nuw nsw i32 %i.bc, %i.ay
  %i.be = add nuw nsw i32 %i.bd, %i.bb
  %i.bf = lshr i32 %i.be, 2
  %i.bg = trunc nuw i32 %i.bf to i16
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !82
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bi = trunc nuw i64 %indvars.iv to i32
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph, label %._crit_edge, !llvm.loop !482

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.bk = load i16, ptr %2, align 2, !tbaa !82
  %i.bl = zext i16 %i.bk to i32
  %i.bm = getelementptr inbounds i8, ptr %2, i64 -2
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !82
  %i.bo = zext i16 %i.bn to i32
  %i.bp = shl nuw nsw i32 %i.bo, 1
  %i.bq = load i16, ptr %3, align 2, !tbaa !82
  %i.br = zext i16 %i.bq to i32
  %i.bs = add nuw nsw i32 %i.bl, 2
  %i.bt = add nuw nsw i32 %i.bs, %i.bp
  %i.bu = add nuw nsw i32 %i.bt, %i.br
  %i.bv = lshr i32 %i.bu, 2
  %i.bw = trunc nuw i32 %i.bv to i16              ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %0, i64 -2
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !82
  %i.by = getelementptr inbounds i8, ptr %1, i64 -2
  store i16 %i.bw, ptr %i.by, align 2, !tbaa !82
  br i1 %i.k, label %.lr.ph42.preheader, label %._crit_edge43

.lr.ph42.preheader:                               ; preds = %._crit_edge
  %i.bz = zext i32 %i.j to i64                    ; 5 uses
  %i.ca = tail call i32 @llvm.smin.i32(i32 %i.j, i32 0)
  %i.cb = add nsw i32 %i.a, -2
  %i.cc = sub i32 %i.cb, %i.ca                    ; 2 uses
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %min.iters.check64 = icmp ult i32 %i.cc, 16
  br i1 %min.iters.check64, label %.lr.ph42.preheader84, label %vector.memcheck65

vector.memcheck65:                                ; preds = %.lr.ph42.preheader
  %i.ce = shl nuw nsw i64 %i.bz, 1                ; 4 uses
  %i.cf = shl nuw nsw i64 %i.cd, 1                ; 2 uses
  %i.cg = sub nsw i64 %i.ce, %i.cf
  %i.ch = getelementptr i8, ptr %1, i64 %i.cg
  %i.ci = getelementptr i8, ptr %1, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 2
  %i.ck = add nsw i64 %i.ce, -2
  %i.cl = sub nsw i64 %i.ck, %i.cf
  %i.cm = getelementptr i8, ptr %3, i64 %i.cl
  %i.cn = getelementptr i8, ptr %3, i64 %i.ce
  %i.co = getelementptr i8, ptr %i.cn, i64 4
  %bound066 = icmp ult ptr %i.ch, %i.co
  %bound167 = icmp ult ptr %i.cm, %i.cj
  %found.conflict68 = and i1 %bound066, %bound167
  br i1 %found.conflict68, label %.lr.ph42.preheader84, label %vector.ph69

vector.ph69:                                      ; preds = %vector.memcheck65
  %n.vec70 = and i64 %i.cd, 4294967288            ; 2 uses
  %i.cp = sub nsw i64 %i.bz, %n.vec70
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph69
  %index72 = phi i64 [ 0, %vector.ph69 ], [ %index.next80, %vector.body71 ] ; 2 uses
  %i.cq = sub i64 %i.bz, %index72                 ; 2 uses
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cq ; 3 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -12
  %wide.load73 = load <8 x i16>, ptr %i.cs, align 2, !tbaa !82, !alias.scope !490
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 -14
  %wide.load75 = load <8 x i16>, ptr %i.ct, align 2, !tbaa !82, !alias.scope !490
  %i.cu = getelementptr i8, ptr %i.cr, i64 -16
  %wide.load77 = load <8 x i16>, ptr %i.cu, align 2, !tbaa !82, !alias.scope !490
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cq
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -14
  %i.cx = zext <8 x i16> %wide.load73 to <8 x i32>
  %i.cy = add nuw nsw <8 x i32> %i.cx, splat (i32 2)
  %i.cz = zext <8 x i16> %wide.load75 to <8 x i32>
  %i.da = shl nuw nsw <8 x i32> %i.cz, splat (i32 1)
  %i.db = add nuw nsw <8 x i32> %i.cy, %i.da
  %i.dc = zext <8 x i16> %wide.load77 to <8 x i32>
  %i.dd = add nuw nsw <8 x i32> %i.db, %i.dc
  %i.de = lshr <8 x i32> %i.dd, splat (i32 2)
  %reverse79 = trunc nuw <8 x i32> %i.de to <8 x i16>
  store <8 x i16> %reverse79, ptr %i.cw, align 2, !tbaa !82, !alias.scope !491, !noalias !490
  %index.next80 = add nuw i64 %index72, 8         ; 2 uses
  %i.df = icmp eq i64 %index.next80, %n.vec70
  br i1 %i.df, label %.lr.ph42.preheader84, label %vector.body71, !llvm.loop !486

.lr.ph42.preheader84:                             ; preds = %vector.body71, %vector.memcheck65, %.lr.ph42.preheader
  %indvars.iv45.ph = phi i64 [ %i.bz, %vector.memcheck65 ], [ %i.bz, %.lr.ph42.preheader ], [ %i.cp, %vector.body71 ]
  br label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42.preheader84, %.lr.ph42
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.lr.ph42 ], [ %indvars.iv45.ph, %.lr.ph42.preheader84 ] ; 4 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv45 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !82
  %i.dj = zext i16 %i.di to i32
  %i.dk = load i16, ptr %i.dg, align 2, !tbaa !82
  %i.dl = zext i16 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 1
  %i.dn = getelementptr i8, ptr %i.dg, i64 -2
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !82
  %i.dp = zext i16 %i.do to i32
  %i.dq = add nuw nsw i32 %i.dj, 2
  %i.dr = add nuw nsw i32 %i.dq, %i.dm
  %i.ds = add nuw nsw i32 %i.dr, %i.dp
  %i.dt = lshr i32 %i.ds, 2
  %i.du = trunc nuw i32 %i.dt to i16
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv45
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !82
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, -1
  %i.dw = trunc nuw i64 %indvars.iv45 to i32
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.lr.ph42, label %._crit_edge43, !llvm.loop !487

._crit_edge43:                                    ; preds = %.lr.ph42, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ref_filter_strong_12(ptr nofree noundef writeonly captures(none) initializes((-2, 0), (126, 128)) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
vector.memcheck:
  %i.a = getelementptr inbounds i8, ptr %2, i64 -2 ; 6 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !82
  %i.c = getelementptr inbounds i8, ptr %0, i64 -2
  store i16 %i.b, ptr %i.c, align 2, !tbaa !82
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 126 ; 5 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !82
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 126 ; 2 uses
  store i16 %i.e, ptr %i.f, align 2, !tbaa !82
  %i.g = getelementptr i8, ptr %2, i64 128
  %bound0 = icmp ult ptr %0, %i.g
  %bound1 = icmp ult ptr %i.a, %i.f
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.prol, label %vector.body

scalar.ph.prol:                                   ; preds = %vector.body, %vector.memcheck
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 56, %vector.body ] ; 3 uses
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1 ; 2 uses
  %i.h = load i16, ptr %i.a, align 2, !tbaa !82
  %i.i = zext i16 %i.h to i32
  %i.j = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.k = xor i32 %i.j, 63
  %i.l = mul nuw nsw i32 %i.k, %i.i
  %i.m = load i16, ptr %i.d, align 2, !tbaa !82
  %i.n = zext i16 %i.m to i32
  %i.o = trunc nuw nsw i64 %indvars.iv.next.prol to i32
  %i.p = mul nuw nsw i32 %i.o, %i.n
  %i.q = add nuw nsw i32 %i.l, 32
  %i.r = add nuw nsw i32 %i.q, %i.p
  %i.s = lshr i32 %i.r, 6
  %i.t = trunc i32 %i.s to i16
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  store i16 %i.t, ptr %i.u, align 2, !tbaa !82
  br label %scalar.ph

vector.body:                                      ; preds = %vector.memcheck
  %i.v = load i16, ptr %i.d, align 2, !tbaa !82, !alias.scope !497
  %broadcast.splatinsert29 = insertelement <8 x i16> poison, i16 %i.v, i64 0
  %broadcast.splat30 = shufflevector <8 x i16> %broadcast.splatinsert29, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.w = zext <8 x i16> %broadcast.splat30 to <8 x i32> ; 7 uses
  %i.x = load i16, ptr %i.a, align 2, !tbaa !82, !alias.scope !497
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.x, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.y = zext <8 x i16> %broadcast.splat to <8 x i32> ; 7 uses
  %i.z = mul nuw nsw <8 x i32> %i.y, <i32 63, i32 62, i32 61, i32 60, i32 59, i32 58, i32 57, i32 56>
  %i.aa = mul nuw nsw <8 x i32> %i.w, <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>
  %i.ab = add nuw nsw <8 x i32> %i.z, splat (i32 32)
  %i.ac = add nuw nsw <8 x i32> %i.ab, %i.aa
  %i.ad = lshr <8 x i32> %i.ac, splat (i32 6)
  %i.ae = trunc <8 x i32> %i.ad to <8 x i16>
  store <8 x i16> %i.ae, ptr %0, align 2, !tbaa !82, !alias.scope !498, !noalias !497
  %i.af = mul nuw nsw <8 x i32> %i.y, <i32 55, i32 54, i32 53, i32 52, i32 51, i32 50, i32 49, i32 48>
  %i.ag = mul nuw nsw <8 x i32> %i.w, <i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.ah = add nuw nsw <8 x i32> %i.af, splat (i32 32)
  %i.ai = add nuw nsw <8 x i32> %i.ah, %i.ag
  %i.aj = lshr <8 x i32> %i.ai, splat (i32 6)
  %i.ak = trunc <8 x i32> %i.aj to <8 x i16>
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <8 x i16> %i.ak, ptr %i.al, align 2, !tbaa !82, !alias.scope !498, !noalias !497
  %i.am = mul nuw nsw <8 x i32> %i.y, <i32 47, i32 46, i32 45, i32 44, i32 43, i32 42, i32 41, i32 40>
  %i.an = mul nuw nsw <8 x i32> %i.w, <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.ao = add nuw nsw <8 x i32> %i.am, splat (i32 32)
  %i.ap = add nuw nsw <8 x i32> %i.ao, %i.an
  %i.aq = lshr <8 x i32> %i.ap, splat (i32 6)
  %i.ar = trunc <8 x i32> %i.aq to <8 x i16>
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <8 x i16> %i.ar, ptr %i.as, align 2, !tbaa !82, !alias.scope !498, !noalias !497
  %i.at = mul nuw nsw <8 x i32> %i.y, <i32 39, i32 38, i32 37, i32 36, i32 35, i32 34, i32 33, i32 32>
  %i.au = mul nuw nsw <8 x i32> %i.w, <i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32>
  %i.av = add nuw nsw <8 x i32> %i.at, splat (i32 32)
  %i.aw = add nuw nsw <8 x i32> %i.av, %i.au
  %i.ax = lshr <8 x i32> %i.aw, splat (i32 6)
  %i.ay = trunc <8 x i32> %i.ax to <8 x i16>
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <8 x i16> %i.ay, ptr %i.az, align 2, !tbaa !82, !alias.scope !498, !noalias !497
  %i.ba = mul nuw nsw <8 x i32> %i.y, <i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24>
  %i.bb = mul nuw nsw <8 x i32> %i.w, <i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40>
  %i.bc = add nuw nsw <8 x i32> %i.ba, splat (i32 32)
  %i.bd = add nuw nsw <8 x i32> %i.bc, %i.bb
  %i.be = lshr <8 x i32> %i.bd, splat (i32 6)
  %i.bf = trunc <8 x i32> %i.be to <8 x i16>
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i16> %i.bf, ptr %i.bg, align 2, !tbaa !82, !alias.scope !498, !noalias !497
  %i.bh = mul nuw nsw <8 x i32> %i.y, <i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16>
  %i.bi = mul nuw nsw <8 x i32> %i.w, <i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48>
  %i.bj = add nuw nsw <8 x i32> %i.bh, splat (i32 32)
  %i.bk = add nuw nsw <8 x i32> %i.bj, %i.bi
  %i.bl = lshr <8 x i32> %i.bk, splat (i32 6)
  %i.bm = trunc <8 x i32> %i.bl to <8 x i16>
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <8 x i16> %i.bm, ptr %i.bn, align 2, !tbaa !82, !alias.scope !498, !noalias !497
  %i.bo = mul nuw nsw <8 x i32> %i.y, <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8>
  %i.bp = mul nuw nsw <8 x i32> %i.w, <i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56>
  %i.bq = add nuw nsw <8 x i32> %i.bo, splat (i32 32)
  %i.br = add nuw nsw <8 x i32> %i.bq, %i.bp
  %i.bs = lshr <8 x i32> %i.br, splat (i32 6)
  %i.bt = trunc <8 x i32> %i.bs to <8 x i16>
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <8 x i16> %i.bt, ptr %i.bu, align 2, !tbaa !82, !alias.scope !498, !noalias !497
  br label %scalar.ph.prol

.preheader:                                       ; preds = %scalar.ph
  %i.bv = getelementptr inbounds i8, ptr %1, i64 -2
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !82 ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 126 ; 8 uses
  %i.by = zext i16 %i.bw to i64
  %broadcast.splatinsert35 = insertelement <8 x i64> poison, i64 %i.by, i64 0
  %broadcast.splat36 = shufflevector <8 x i64> %broadcast.splatinsert35, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %.preheader
  %index38 = phi i64 [ 0, %.preheader ], [ %index.next43, %vector.body37 ] ; 2 uses
  %vec.ind39 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.preheader ], [ %vec.ind.next44, %vector.body37 ] ; 2 uses
  %vec.ind40 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %.preheader ], [ %vec.ind.next45, %vector.body37 ] ; 2 uses
  %i.bz = sub nuw nsw <8 x i64> splat (i64 63), %vec.ind39
  %i.ca = mul nuw nsw <8 x i64> %i.bz, %broadcast.splat36
  %i.cb = load i16, ptr %i.bx, align 2, !tbaa !82
  %broadcast.splatinsert41 = insertelement <8 x i16> poison, i16 %i.cb, i64 0
  %broadcast.splat42 = shufflevector <8 x i16> %broadcast.splatinsert41, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cc = zext <8 x i16> %broadcast.splat42 to <8 x i32>
  %i.cd = mul nuw nsw <8 x i32> %vec.ind40, %i.cc
  %i.ce = trunc nuw nsw <8 x i64> %i.ca to <8 x i32>
  %i.cf = add nuw nsw <8 x i32> %i.ce, splat (i32 32)
  %i.cg = add nuw nsw <8 x i32> %i.cf, %i.cd
  %i.ch = lshr <8 x i32> %i.cg, splat (i32 6)
  %i.ci = trunc <8 x i32> %i.ch to <8 x i16>
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index38
  store <8 x i16> %i.ci, ptr %i.cj, align 2, !tbaa !82
  %index.next43 = add nuw i64 %index38, 8         ; 2 uses
  %vec.ind.next44 = add nuw nsw <8 x i64> %vec.ind39, splat (i64 8)
  %vec.ind.next45 = add <8 x i32> %vec.ind40, splat (i32 8)
  %i.ck = icmp eq i64 %index.next43, 56
  br i1 %i.ck, label %scalar.ph33, label %vector.body37, !llvm.loop !495

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.prol
  %indvars.iv = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.next.1, %scalar.ph ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cl = load i16, ptr %i.a, align 2, !tbaa !82
  %i.cm = zext i16 %i.cl to i32
  %i.cn = trunc i64 %indvars.iv to i32
  %i.co = sub i32 63, %i.cn
  %i.cp = mul nuw nsw i32 %i.co, %i.cm
  %i.cq = load i16, ptr %i.d, align 2, !tbaa !82
  %i.cr = zext i16 %i.cq to i32
  %i.cs = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ct = mul nuw nsw i32 %i.cs, %i.cr
  %i.cu = add nuw nsw i32 %i.cp, 32
  %i.cv = add nuw nsw i32 %i.cu, %i.ct
  %i.cw = lshr i32 %i.cv, 6
  %i.cx = trunc i32 %i.cw to i16
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.cx, ptr %i.cy, align 2, !tbaa !82
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.cz = load i16, ptr %i.a, align 2, !tbaa !82
  %i.da = zext i16 %i.cz to i32
  %i.db = trunc i64 %indvars.iv.next to i32
  %i.dc = sub i32 63, %i.db
  %i.dd = mul nuw nsw i32 %i.dc, %i.da
  %i.de = load i16, ptr %i.d, align 2, !tbaa !82
  %i.df = zext i16 %i.de to i32
  %i.dg = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.dh = mul nuw nsw i32 %i.dg, %i.df
  %i.di = add nuw nsw i32 %i.dd, 32
  %i.dj = add nuw nsw i32 %i.di, %i.dh
  %i.dk = lshr i32 %i.dj, 6
  %i.dl = trunc i32 %i.dk to i16
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  store i16 %i.dl, ptr %i.dm, align 2, !tbaa !82
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 63
  br i1 %exitcond.not.1, label %.preheader, label %scalar.ph, !llvm.loop !496

scalar.ph33:                                      ; preds = %vector.body37
  %i.dn = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.do = zext i16 %i.dn to i32
  %i.dp = mul nuw nsw i32 %i.do, 57
  %i.dq = zext i16 %i.bw to i32
  %i.dr = mul nuw nsw i32 %i.dq, 7
  %i.ds = add nuw nsw i32 %i.dr, 32
  %i.dt = add nuw nsw i32 %i.ds, %i.dp
  %i.du = lshr i32 %i.dt, 6
  %i.dv = trunc i32 %i.du to i16
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !82
  %i.dx = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.dy = zext i16 %i.dx to i32
  %i.dz = mul nuw nsw i32 %i.dy, 58
  %i.ea = zext i16 %i.bw to i32
  %i.eb = mul nuw nsw i32 %i.ea, 6
  %i.ec = add nuw nsw i32 %i.eb, 32
  %i.ed = add nuw nsw i32 %i.ec, %i.dz
  %i.ee = lshr i32 %i.ed, 6
  %i.ef = trunc i32 %i.ee to i16
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 114
  store i16 %i.ef, ptr %i.eg, align 2, !tbaa !82
  %i.eh = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.ei = zext i16 %i.eh to i32
  %i.ej = mul nuw nsw i32 %i.ei, 59
  %i.ek = zext i16 %i.bw to i32
  %i.el = mul nuw nsw i32 %i.ek, 5
  %i.em = add nuw nsw i32 %i.el, 32
  %i.en = add nuw nsw i32 %i.em, %i.ej
  %i.eo = lshr i32 %i.en, 6
  %i.ep = trunc i32 %i.eo to i16
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i16 %i.ep, ptr %i.eq, align 2, !tbaa !82
  %i.er = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.es = zext i16 %i.er to i32
  %i.et = mul nuw nsw i32 %i.es, 60
  %.tr = zext i16 %i.bw to i32
  %i.eu = shl nuw nsw i32 %.tr, 2
  %i.ev = add nuw nsw i32 %i.eu, 32
  %i.ew = add nuw nsw i32 %i.ev, %i.et
  %i.ex = lshr i32 %i.ew, 6
  %i.ey = trunc i32 %i.ex to i16
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 118
  store i16 %i.ey, ptr %i.ez, align 2, !tbaa !82
  %i.fa = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.fb = zext i16 %i.fa to i32
  %i.fc = mul nuw nsw i32 %i.fb, 61
  %i.fd = zext i16 %i.bw to i32
  %i.fe = mul nuw nsw i32 %i.fd, 3
  %i.ff = add nuw nsw i32 %i.fe, 32
  %i.fg = add nuw nsw i32 %i.ff, %i.fc
  %i.fh = lshr i32 %i.fg, 6
  %i.fi = trunc i32 %i.fh to i16
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i16 %i.fi, ptr %i.fj, align 2, !tbaa !82
  %i.fk = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.fl = zext i16 %i.fk to i32
  %i.fm = mul nuw nsw i32 %i.fl, 62
  %.tr47 = zext i16 %i.bw to i32
  %i.fn = shl nuw nsw i32 %.tr47, 1
  %i.fo = add nuw nsw i32 %i.fn, 32
  %i.fp = add nuw nsw i32 %i.fo, %i.fm
  %i.fq = lshr i32 %i.fp, 6
  %i.fr = trunc i32 %i.fq to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 122
  store i16 %i.fr, ptr %i.fs, align 2, !tbaa !82
  %i.ft = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.fu = zext i16 %i.ft to i32
  %i.fv = mul nuw nsw i32 %i.fu, 63
  %i.fw = zext i16 %i.bw to i32
  %i.fx = add nuw nsw i32 %i.fw, 32
  %i.fy = add nuw nsw i32 %i.fx, %i.fv
  %i.fz = lshr i32 %i.fy, 6
  %i.ga = trunc i32 %i.fz to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 124
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !82
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @intra_pred_2_8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
bb.a:
  %i.a = alloca [81 x i8], align 16               ; 26 uses
  %i.b = alloca [81 x i8], align 16               ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 18 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !101  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 20264
  %i.h = sext i32 %4 to i64                       ; 4 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !77   ; 15 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 20276
  %i.l = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.h
  %i.m = load i32, ptr %i.l, align 4, !tbaa !77   ; 15 uses
  %i.n = shl i32 4, %i.j                          ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 18604
  %i.p = load i32, ptr %i.o, align 4, !tbaa !113  ; 5 uses
  %i.q = ashr i32 %i.n, %i.p
  %i.r = shl i32 4, %i.m                          ; 3 uses
  %i.s = ashr i32 %i.r, %i.p                      ; 2 uses
  %i.t = ashr i32 %2, %i.j
  %i.u = ashr i32 %3, %i.m
  %i.v = ashr i32 %2, %i.p
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 20260
  %i.x = load i32, ptr %i.w, align 4, !tbaa !114  ; 5 uses
  %i.y = and i32 %i.v, %i.x                       ; 3 uses
  %i.z = ashr i32 %3, %i.p
  %i.aa = and i32 %i.z, %i.x                      ; 3 uses
  %i.ab = icmp eq i32 %4, 0                       ; 2 uses
  %i.ac = icmp ne i32 %i.s, 0
  %or.cond.i = select i1 %i.ab, i1 true, i1 %i.ac
  %.sink256.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %.sink256.sroa.gep350 = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = shl nsw i32 %3, 1
  %i.ae = shl nuw i32 1, %i.p
  %i.af = and i32 %i.ae, %i.ad
end_hunk_5
begin_hunk_6_@pred_planar_2_8:bb.a
  %i.gl = mul nuw nsw i32 %i.gk, 6
  %i.gm = load i8, ptr %i.a, align 1, !tbaa !78
  %i.gn = zext i8 %i.gm to i32
  %i.go = mul nuw nsw i32 %i.gn, 10
  %i.gp = load i8, ptr %i.k, align 1, !tbaa !78
  %i.gq = zext i8 %i.gp to i32
  %i.gr = mul nuw nsw i32 %i.ac, %i.gq
  %i.gs = load i8, ptr %i.b, align 1, !tbaa !78
  %i.gt = zext i8 %i.gs to i32
  %i.gu = mul nuw nsw i32 %i.ag, %i.gt
  %i.gv = add nuw nsw i32 %i.gl, 16
  %i.gw = add nuw nsw i32 %i.gv, %i.go
  %i.gx = add nuw nsw i32 %i.gw, %i.gr
  %i.gy = add nuw nsw i32 %i.gx, %i.gu
  %i.gz = lshr i32 %i.gy, 5
  %i.ha = trunc i32 %i.gz to i8
  %i.hb = getelementptr i8, ptr %i.t, i64 9
  store i8 %i.ha, ptr %i.hb, align 1, !tbaa !78
  %i.hc = load i8, ptr %i.r, align 1, !tbaa !78
  %i.hd = zext i8 %i.hc to i32
  %i.he = mul nuw nsw i32 %i.hd, 5
  %i.hf = load i8, ptr %i.a, align 1, !tbaa !78
  %i.hg = zext i8 %i.hf to i32
  %i.hh = mul nuw nsw i32 %i.hg, 11
  %i.hi = load i8, ptr %i.l, align 1, !tbaa !78
  %i.hj = zext i8 %i.hi to i32
  %i.hk = mul nuw nsw i32 %i.ac, %i.hj
  %i.hl = load i8, ptr %i.b, align 1, !tbaa !78
  %i.hm = zext i8 %i.hl to i32
  %i.hn = mul nuw nsw i32 %i.ag, %i.hm
  %i.ho = add nuw nsw i32 %i.he, 16
  %i.hp = add nuw nsw i32 %i.ho, %i.hh
  %i.hq = add nuw nsw i32 %i.hp, %i.hk
  %i.hr = add nuw nsw i32 %i.hq, %i.hn
  %i.hs = lshr i32 %i.hr, 5
  %i.ht = trunc i32 %i.hs to i8
  %i.hu = getelementptr i8, ptr %i.t, i64 10
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !78
  %i.hv = load i8, ptr %i.r, align 1, !tbaa !78
  %i.hw = zext i8 %i.hv to i32
  %i.hx = shl nuw nsw i32 %i.hw, 2
  %i.hy = load i8, ptr %i.a, align 1, !tbaa !78
  %i.hz = zext i8 %i.hy to i32
  %i.ia = mul nuw nsw i32 %i.hz, 12
  %i.ib = load i8, ptr %i.m, align 1, !tbaa !78
  %i.ic = zext i8 %i.ib to i32
  %i.id = mul nuw nsw i32 %i.ac, %i.ic
  %i.ie = load i8, ptr %i.b, align 1, !tbaa !78
  %i.if = zext i8 %i.ie to i32
  %i.ig = mul nuw nsw i32 %i.ag, %i.if
  %i.ih = add nuw nsw i32 %i.hx, 16
  %i.ii = add nuw nsw i32 %i.ih, %i.ia
  %i.ij = add nuw nsw i32 %i.ii, %i.id
  %i.ik = add nuw nsw i32 %i.ij, %i.ig
  %i.il = lshr i32 %i.ik, 5
  %i.im = trunc i32 %i.il to i8
  %i.in = getelementptr i8, ptr %i.t, i64 11
  store i8 %i.im, ptr %i.in, align 1, !tbaa !78
  %i.io = load i8, ptr %i.r, align 1, !tbaa !78
  %i.ip = zext i8 %i.io to i32
  %i.iq = mul nuw nsw i32 %i.ip, 3
  %i.ir = load i8, ptr %i.a, align 1, !tbaa !78
  %i.is = zext i8 %i.ir to i32
  %i.it = mul nuw nsw i32 %i.is, 13
  %i.iu = load i8, ptr %i.n, align 1, !tbaa !78
  %i.iv = zext i8 %i.iu to i32
  %i.iw = mul nuw nsw i32 %i.ac, %i.iv
  %i.ix = load i8, ptr %i.b, align 1, !tbaa !78
  %i.iy = zext i8 %i.ix to i32
  %i.iz = mul nuw nsw i32 %i.ag, %i.iy
  %i.ja = add nuw nsw i32 %i.iq, 16
  %i.jb = add nuw nsw i32 %i.ja, %i.it
  %i.jc = add nuw nsw i32 %i.jb, %i.iw
  %i.jd = add nuw nsw i32 %i.jc, %i.iz
  %i.je = lshr i32 %i.jd, 5
  %i.jf = trunc i32 %i.je to i8
  %i.jg = getelementptr i8, ptr %i.t, i64 12
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !78
  %i.jh = load i8, ptr %i.r, align 1, !tbaa !78
  %i.ji = zext i8 %i.jh to i32
  %i.jj = shl nuw nsw i32 %i.ji, 1
  %i.jk = load i8, ptr %i.a, align 1, !tbaa !78
  %i.jl = zext i8 %i.jk to i32
  %i.jm = mul nuw nsw i32 %i.jl, 14
  %i.jn = load i8, ptr %i.o, align 1, !tbaa !78
  %i.jo = zext i8 %i.jn to i32
  %i.jp = mul nuw nsw i32 %i.ac, %i.jo
  %i.jq = load i8, ptr %i.b, align 1, !tbaa !78
  %i.jr = zext i8 %i.jq to i32
  %i.js = mul nuw nsw i32 %i.ag, %i.jr
  %i.jt = add nuw nsw i32 %i.jj, 16
  %i.ju = add nuw nsw i32 %i.jt, %i.jm
  %i.jv = add nuw nsw i32 %i.ju, %i.jp
  %i.jw = add nuw nsw i32 %i.jv, %i.js
  %i.jx = lshr i32 %i.jw, 5
  %i.jy = trunc i32 %i.jx to i8
  %i.jz = getelementptr i8, ptr %i.t, i64 13
  store i8 %i.jy, ptr %i.jz, align 1, !tbaa !78
  %i.ka = load i8, ptr %i.r, align 1, !tbaa !78
  %i.kb = zext i8 %i.ka to i32
  %i.kc = load i8, ptr %i.a, align 1, !tbaa !78
  %i.kd = zext i8 %i.kc to i32
  %i.ke = mul nuw nsw i32 %i.kd, 15
  %i.kf = load i8, ptr %i.p, align 1, !tbaa !78
  %i.kg = zext i8 %i.kf to i32
  %i.kh = mul nuw nsw i32 %i.ac, %i.kg
  %i.ki = load i8, ptr %i.b, align 1, !tbaa !78
  %i.kj = zext i8 %i.ki to i32
  %i.kk = mul nuw nsw i32 %i.ag, %i.kj
  %i.kl = add nuw nsw i32 %i.kb, 16
  %i.km = add nuw nsw i32 %i.kl, %i.ke
  %i.kn = add nuw nsw i32 %i.km, %i.kh
  %i.ko = add nuw nsw i32 %i.kn, %i.kk
  %i.kp = lshr i32 %i.ko, 5
  %i.kq = trunc i32 %i.kp to i8
  %i.kr = getelementptr i8, ptr %i.t, i64 14
  store i8 %i.kq, ptr %i.kr, align 1, !tbaa !78
  %i.ks = load i8, ptr %i.a, align 1, !tbaa !78
  %i.kt = zext i8 %i.ks to i32
  %i.ku = shl nuw nsw i32 %i.kt, 4
  %i.kv = load i8, ptr %i.q, align 1, !tbaa !78
  %i.kw = zext i8 %i.kv to i32
  %i.kx = mul nuw nsw i32 %i.ac, %i.kw
  %i.ky = load i8, ptr %i.b, align 1, !tbaa !78
  %i.kz = zext i8 %i.ky to i32
  %i.la = mul nuw nsw i32 %i.ag, %i.kz
  %i.lb = add nuw nsw i32 %i.ku, 16
  %i.lc = add nuw nsw i32 %i.lb, %i.kx
  %i.ld = add nuw nsw i32 %i.lc, %i.la
  %i.le = lshr i32 %i.ld, 5
  %i.lf = trunc i32 %i.le to i8
  %i.lg = getelementptr i8, ptr %i.t, i64 15
  store i8 %i.lf, ptr %i.lg, align 1, !tbaa !78
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %pred_planar_8.exit, label %.preheader, !llvm.loop !67

pred_planar_8.exit:                               ; preds = %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_planar_3_8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.c = insertelement <2 x ptr> poison, ptr %2, i64 0
  %i.d = insertelement <2 x ptr> %i.c, ptr %1, i64 1 ; 2 uses
  %i.e = getelementptr i8, <2 x ptr> %i.d, <2 x i64> <i64 32, i64 33>
  %scevgep19 = getelementptr i8, ptr %2, i64 33
  %i.f = mul i64 %3, 31
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %scevgep20 = getelementptr i8, ptr %i.g, i64 32 ; 2 uses
  %i.h = insertelement <2 x ptr> poison, ptr %0, i64 0
  %i.i = shufflevector <2 x ptr> %i.h, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.j = insertelement <2 x ptr> poison, ptr %scevgep20, i64 0
  %i.k = shufflevector <2 x ptr> %i.j, <2 x ptr> poison, <2 x i32> zeroinitializer
  %bound0 = icmp ult ptr %0, %scevgep19
  %bound1 = icmp ult ptr %i.b, %scevgep20
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %3, 0
  %i.l = or i1 %found.conflict, %stride.check
  %i.m = icmp ult <2 x ptr> %i.i, %i.e
  %i.n = icmp ult <2 x ptr> %i.d, %i.k
  %i.o = and <2 x i1> %i.m, %i.n                  ; 2 uses
  %i.p = extractelement <2 x i1> %i.o, i64 0
  %conflict.rdx = or i1 %i.l, %i.p
  %i.q = extractelement <2 x i1> %i.o, i64 1
  %conflict.rdx27 = or i1 %conflict.rdx, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %middle.block
  %indvars.iv6 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next7, %middle.block ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv6 ; 2 uses
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1 ; 3 uses
  %i.t = mul nsw i64 %3, %indvars.iv6
  %i.u = getelementptr i8, ptr %0, i64 %i.t       ; 3 uses
  %i.v = trunc i64 %indvars.iv6 to i16
  %i.w = sub i16 31, %i.v                         ; 2 uses
  %i.x = trunc i64 %indvars.iv.next7 to i16       ; 2 uses
  br i1 %conflict.rdx27, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.preheader
  %broadcast.splatinsert34 = insertelement <16 x i16> poison, i16 %i.w, i64 0
  %broadcast.splat35 = shufflevector <16 x i16> %broadcast.splatinsert34, <16 x i16> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i16> poison, i16 %i.x, i64 0
  %broadcast.splat = shufflevector <16 x i16> %broadcast.splatinsert, <16 x i16> poison, <16 x i32> zeroinitializer
  %i.y = load i8, ptr %i.b, align 1, !tbaa !78, !alias.scope !553
  %broadcast.splatinsert32 = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %broadcast.splat33 = shufflevector <16 x i8> %broadcast.splatinsert32, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.z = zext <16 x i8> %broadcast.splat33 to <16 x i16>
  %i.aa = mul <16 x i16> %broadcast.splat, %i.z   ; 2 uses
  %i.ab = load i8, ptr %i.a, align 1, !tbaa !78, !alias.scope !554
  %broadcast.splatinsert30 = insertelement <16 x i8> poison, i8 %i.ab, i64 0
  %broadcast.splat31 = shufflevector <16 x i8> %broadcast.splatinsert30, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ac = zext <16 x i8> %broadcast.splat31 to <16 x i16> ; 2 uses
  %i.ad = load i8, ptr %i.s, align 1, !tbaa !78, !alias.scope !555
  %broadcast.splatinsert28 = insertelement <16 x i8> poison, i8 %i.ad, i64 0
  %broadcast.splat29 = shufflevector <16 x i8> %broadcast.splatinsert28, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ae = zext <16 x i8> %broadcast.splat29 to <16 x i16> ; 2 uses
  %i.af = mul nuw nsw <16 x i16> %i.ae, <i16 31, i16 30, i16 29, i16 28, i16 27, i16 26, i16 25, i16 24, i16 23, i16 22, i16 21, i16 20, i16 19, i16 18, i16 17, i16 16>
  %i.ag = mul nuw nsw <16 x i16> %i.ac, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16>
  %wide.load = load <16 x i8>, ptr %1, align 1, !tbaa !78, !alias.scope !554
  %i.ah = zext <16 x i8> %wide.load to <16 x i16>
  %i.ai = mul <16 x i16> %broadcast.splat35, %i.ah
  %i.aj = add nuw nsw <16 x i16> %i.af, splat (i16 32)
  %i.ak = add nuw nsw <16 x i16> %i.aj, %i.ag
  %i.al = add <16 x i16> %i.ak, %i.ai
  %i.am = add <16 x i16> %i.al, %i.aa
  %i.an = lshr <16 x i16> %i.am, splat (i16 6)
  %i.ao = trunc <16 x i16> %i.an to <16 x i8>
  store <16 x i8> %i.ao, ptr %i.u, align 1, !tbaa !78, !alias.scope !556, !noalias !557
  %i.ap = mul nuw nsw <16 x i16> %i.ae, <i16 15, i16 14, i16 13, i16 12, i16 11, i16 10, i16 9, i16 8, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0>
  %i.aq = mul nuw nsw <16 x i16> %i.ac, <i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32>
  %wide.load.1 = load <16 x i8>, ptr %i.r, align 1, !tbaa !78, !alias.scope !554
  %i.ar = zext <16 x i8> %wide.load.1 to <16 x i16>
  %i.as = mul <16 x i16> %broadcast.splat35, %i.ar
  %i.at = add nuw nsw <16 x i16> %i.ap, splat (i16 32)
  %i.au = add nuw nsw <16 x i16> %i.at, %i.aq
  %i.av = add <16 x i16> %i.au, %i.as
  %i.aw = add <16 x i16> %i.av, %i.aa
  %i.ax = lshr <16 x i16> %i.aw, splat (i16 6)
  %i.ay = trunc <16 x i16> %i.ax to <16 x i8>
  %i.az = getelementptr i8, ptr %i.u, i64 16
  store <16 x i8> %i.ay, ptr %i.az, align 1, !tbaa !78, !alias.scope !556, !noalias !557
  br label %middle.block

scalar.ph:                                        ; preds = %.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %.preheader ] ; 4 uses
  %i.ba = load i8, ptr %i.s, align 1, !tbaa !78
  %i.bb = zext i8 %i.ba to i16
  %i.bc = trunc i64 %indvars.iv to i16
  %i.bd = sub i16 31, %i.bc
  %i.be = mul i16 %i.bd, %i.bb
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bf = load i8, ptr %i.a, align 1, !tbaa !78
  %i.bg = zext i8 %i.bf to i16
  %i.bh = trunc i64 %indvars.iv.next to i16
  %i.bi = mul i16 %i.bh, %i.bg
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !78
  %i.bl = zext i8 %i.bk to i16
  %i.bm = mul i16 %i.w, %i.bl
  %i.bn = load i8, ptr %i.b, align 1, !tbaa !78
  %i.bo = zext i8 %i.bn to i16
  %i.bp = mul i16 %i.x, %i.bo
  %i.bq = add i16 %i.be, 32
  %i.br = add i16 %i.bq, %i.bi
  %i.bs = add i16 %i.br, %i.bm
  %i.bt = add i16 %i.bs, %i.bp
  %i.bu = lshr i16 %i.bt, 6
  %i.bv = trunc i16 %i.bu to i8
  %i.bw = getelementptr i8, ptr %i.u, i64 %indvars.iv
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !78
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %middle.block, label %scalar.ph, !llvm.loop !552

middle.block:                                     ; preds = %scalar.ph, %vector.body
  %exitcond9.not = icmp eq i64 %indvars.iv.next7, 32
  br i1 %exitcond9.not, label %pred_planar_8.exit, label %.preheader, !llvm.loop !67

pred_planar_8.exit:                               ; preds = %middle.block
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pred_dc_8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) #4 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = shl nuw i32 1, %4                        ; 12 uses
  %.not = icmp eq i32 %4, 31
  br i1 %.not, label %._crit_edge64.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp slt i32 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.e = and i32 %i.d, 2147483640
  %n.vec = zext nneg i32 %i.e to i64
  %i.f = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.d, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.f, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi92 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %wide.load = load <4 x i8>, ptr %i.g, align 1, !tbaa !78
  %wide.load93 = load <4 x i8>, ptr %i.h, align 1, !tbaa !78
  %i.i = zext <4 x i8> %wide.load to <4 x i32>
  %i.j = zext <4 x i8> %wide.load93 to <4 x i32>
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %wide.load94 = load <4 x i8>, ptr %i.k, align 1, !tbaa !78
  %wide.load95 = load <4 x i8>, ptr %i.l, align 1, !tbaa !78
  %i.m = zext <4 x i8> %wide.load94 to <4 x i32>
  %i.n = zext <4 x i8> %wide.load95 to <4 x i32>
  %i.o = add <4 x i32> %vec.phi, %i.i
  %i.p = add <4 x i32> %vec.phi92, %i.j
  %i.q = add <4 x i32> %i.o, %i.m                 ; 2 uses
  %i.r = add <4 x i32> %i.p, %i.n                 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !558

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.r, %i.q
  %i.t = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %.preheader57.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader
  %i.u = load i8, ptr %2, align 1, !tbaa !78
  %i.v = zext i8 %i.u to i32
  %i.w = load i8, ptr %1, align 1, !tbaa !78
  %i.x = zext i8 %i.w to i32
  %i.y = add nuw i32 %i.d, %i.v
  %i.z = add i32 %i.y, %i.x                       ; 2 uses
  %exitcond.not = icmp slt i32 %i.d, 2
  br i1 %exitcond.not, label %.preheader57.preheader, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !78
  %i.ac = zext i8 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !78
  %i.af = zext i8 %i.ae to i32
  %i.ag = add i32 %i.z, %i.ac
  %i.ah = add i32 %i.ag, %i.af                    ; 2 uses
  %exitcond.not.1 = icmp eq i32 %4, 1
  br i1 %exitcond.not.1, label %.preheader57.preheader, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.1
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !78
  %i.ak = zext i8 %i.aj to i32
  %i.al = add i32 %i.ah, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !78
  %i.ao = zext i8 %i.an to i32
  %i.ap = add i32 %i.al, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !78
  %i.as = zext i8 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !78
  %i.av = zext i8 %i.au to i32
  %i.aw = add i32 %i.ap, %i.as
  %i.ax = add i32 %i.aw, %i.av                    ; 2 uses
  %exitcond.not.3 = icmp eq i32 %4, 2
  br i1 %exitcond.not.3, label %.preheader57.preheader, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.3
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !78
  %i.ba = zext i8 %i.az to i32
  %i.bb = add i32 %i.ax, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !78
  %i.be = zext i8 %i.bd to i32
  %i.bf = add i32 %i.bb, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !78
  %i.bi = zext i8 %i.bh to i32
  %i.bj = add i32 %i.bf, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !78
  %i.bm = zext i8 %i.bl to i32
  %i.bn = add i32 %i.bj, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !78
  %i.bq = zext i8 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !78
  %i.bt = zext i8 %i.bs to i32
  %i.bu = add i32 %i.bn, %i.bq
  %i.bv = add i32 %i.bu, %i.bt
  br label %.preheader57.preheader

.preheader57.preheader:                           ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.3, %.lr.ph.6, %middle.block
  %.lcssa = phi i32 [ %i.t, %middle.block ], [ %i.z, %.lr.ph ], [ %i.ah, %.lr.ph.1 ], [ %i.bv, %.lr.ph.6 ], [ %i.ax, %.lr.ph.3 ]
  %i.bw = add nsw i32 %4, 1
  %i.bx = ashr i32 %.lcssa, %i.bw                 ; 2 uses
  %i.by = mul i32 %i.bx, 16843009                 ; 2 uses
  %i.bz = sext i32 %i.d to i64                    ; 2 uses
  %smax78 = tail call i32 @llvm.smax.i32(i32 %i.d, i32 1)
  %wide.trip.count79 = zext nneg i32 %smax78 to i64
  %i.ca = tail call i64 @llvm.smax.i64(i64 %i.bz, i64 4)
  %i.cb = add nsw i64 %i.ca, -1
  %i.cc = lshr i64 %i.cb, 2
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check97 = icmp slt i32 %i.d, 29
  %n.vec99 = and i64 %i.cd, 9223372036854775800   ; 3 uses
  %i.ce = shl i64 %n.vec99, 2
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.by, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n104 = icmp eq i64 %i.cd, %n.vec99
  br label %.preheader57

.preheader57:                                     ; preds = %.preheader57.preheader, %._crit_edge62
  %indvars.iv75 = phi i64 [ 0, %.preheader57.preheader ], [ %indvars.iv.next76, %._crit_edge62 ] ; 2 uses
  %i.cf = mul nsw i64 %3, %indvars.iv75
  %i.cg = getelementptr i8, ptr %0, i64 %i.cf     ; 2 uses
  br i1 %min.iters.check97, label %scalar.ph96.preheader, label %vector.body100

vector.body100:                                   ; preds = %.preheader57, %vector.body100
  %index101 = phi i64 [ %index.next102, %vector.body100 ], [ 0, %.preheader57 ] ; 2 uses
  %i.ch = shl nuw i64 %index101, 2
  %i.ci = getelementptr i8, ptr %i.cg, i64 %i.ch  ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ci, align 1, !tbaa !78
  store <4 x i32> %broadcast.splat, ptr %i.cj, align 1, !tbaa !78
  %index.next102 = add nuw i64 %index101, 8       ; 2 uses
  %i.ck = icmp eq i64 %index.next102, %n.vec99
  br i1 %i.ck, label %middle.block103, label %vector.body100, !llvm.loop !559
end_hunk_6
begin_hunk_7_@ref_filter_3tap_8:bb.a

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.ce = load i8, ptr %2, align 1, !tbaa !78
  %i.cf = zext i8 %i.ce to i16
  %i.cg = getelementptr inbounds i8, ptr %2, i64 -1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !78
  %i.ci = zext i8 %i.ch to i16
  %i.cj = shl nuw nsw i16 %i.ci, 1
  %i.ck = load i8, ptr %3, align 1, !tbaa !78
  %i.cl = zext i8 %i.ck to i16
  %i.cm = add nuw nsw i16 %i.cf, 2
  %i.cn = add nuw nsw i16 %i.cm, %i.cj
  %i.co = add nuw nsw i16 %i.cn, %i.cl
  %i.cp = lshr i16 %i.co, 2
  %i.cq = trunc nuw i16 %i.cp to i8               ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %0, i64 -1
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !78
  %i.cs = getelementptr inbounds i8, ptr %1, i64 -1
  store i8 %i.cq, ptr %i.cs, align 1, !tbaa !78
  br i1 %i.k, label %iter.check98, label %._crit_edge43

iter.check98:                                     ; preds = %._crit_edge
  %i.ct = zext i32 %i.j to i64                    ; 10 uses
  %i.cu = add nsw i32 %i.a, -2
  %smin76 = tail call i32 @llvm.smin.i32(i32 %i.j, i32 0)
  %i.cv = sub i32 %i.cu, %smin76                  ; 3 uses
  %i.cw = or disjoint i32 %i.cv, 1
  %i.cx = zext i32 %i.cw to i64                   ; 3 uses
  %min.iters.check77 = icmp ult i32 %i.cv, 8
  br i1 %min.iters.check77, label %.lr.ph42.preheader, label %vector.memcheck78

vector.memcheck78:                                ; preds = %iter.check98
  %i.cy = tail call i32 @llvm.smin.i32(i32 %i.j, i32 0)
  %i.cz = add nsw i32 %i.a, -2
  %i.da = sub i32 %i.cz, %i.cy
  %i.db = zext i32 %i.da to i64                   ; 2 uses
  %i.dc = sub nsw i64 %i.ct, %i.db
  %i.dd = getelementptr i8, ptr %1, i64 %i.dc
  %i.de = getelementptr i8, ptr %1, i64 %i.ct
  %i.df = getelementptr i8, ptr %i.de, i64 1
  %i.dg = xor i64 %i.db, -1
  %i.dh = getelementptr i8, ptr %3, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.ct
  %i.dj = getelementptr i8, ptr %3, i64 %i.ct
  %i.dk = getelementptr i8, ptr %i.dj, i64 2
  %bound079 = icmp ult ptr %i.dd, %i.dk
  %bound180 = icmp ult ptr %i.di, %i.df
  %found.conflict81 = and i1 %bound079, %bound180
  br i1 %found.conflict81, label %.lr.ph42.preheader, label %vector.main.loop.iter.check82

vector.main.loop.iter.check82:                    ; preds = %vector.memcheck78
  %min.iters.check83 = icmp ult i32 %i.cv, 16
  br i1 %min.iters.check83, label %vec.epilog.ph102, label %vector.ph84

vector.ph84:                                      ; preds = %vector.main.loop.iter.check82
  %i.dl = and i64 %i.cx, 8
  %n.vec85 = and i64 %i.cx, 4294967280            ; 3 uses
  %i.dm = sub nsw i64 %i.ct, %n.vec85
  br label %vector.body86

vector.body86:                                    ; preds = %vector.ph84, %vector.body86
  %index87 = phi i64 [ 0, %vector.ph84 ], [ %index.next95, %vector.body86 ] ; 2 uses
  %i.dn = sub i64 %i.ct, %index87                 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 %i.dn ; 3 uses
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 -14
  %wide.load88 = load <16 x i8>, ptr %i.dp, align 1, !tbaa !78, !alias.scope !582
  %i.dq = getelementptr inbounds i8, ptr %i.do, i64 -15
  %wide.load90 = load <16 x i8>, ptr %i.dq, align 1, !tbaa !78, !alias.scope !582
  %i.dr = getelementptr i8, ptr %i.do, i64 -16
  %wide.load92 = load <16 x i8>, ptr %i.dr, align 1, !tbaa !78, !alias.scope !582
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 %i.dn
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -15
  %i.du = zext <16 x i8> %wide.load88 to <16 x i16>
  %i.dv = add nuw nsw <16 x i16> %i.du, splat (i16 2)
  %i.dw = zext <16 x i8> %wide.load90 to <16 x i16>
  %i.dx = shl nuw nsw <16 x i16> %i.dw, splat (i16 1)
  %i.dy = add nuw nsw <16 x i16> %i.dv, %i.dx
  %i.dz = zext <16 x i8> %wide.load92 to <16 x i16>
  %i.ea = add nuw nsw <16 x i16> %i.dy, %i.dz
  %i.eb = lshr <16 x i16> %i.ea, splat (i16 2)
  %reverse94 = trunc nuw <16 x i16> %i.eb to <16 x i8>
  store <16 x i8> %reverse94, ptr %i.dt, align 1, !tbaa !78, !alias.scope !583, !noalias !582
  %index.next95 = add nuw i64 %index87, 16        ; 2 uses
  %i.ec = icmp eq i64 %index.next95, %n.vec85
  br i1 %i.ec, label %vec.epilog.iter.check99, label %vector.body86, !llvm.loop !576

vec.epilog.iter.check99:                          ; preds = %vector.body86
  %min.epilog.iters.check101.not.not = icmp eq i64 %i.dl, 0
  br i1 %min.epilog.iters.check101.not.not, label %.lr.ph42.preheader, label %vec.epilog.ph102, !prof !581

vec.epilog.ph102:                                 ; preds = %vector.main.loop.iter.check82, %vec.epilog.iter.check99
  %vec.epilog.resume.val103 = phi i64 [ %n.vec85, %vec.epilog.iter.check99 ], [ 0, %vector.main.loop.iter.check82 ]
  %n.vec104 = and i64 %i.cx, 4294967288           ; 2 uses
  %i.ed = sub nsw i64 %i.ct, %n.vec104
  br label %vec.epilog.vector.body105

vec.epilog.vector.body105:                        ; preds = %vec.epilog.vector.body105, %vec.epilog.ph102
  %index106 = phi i64 [ %vec.epilog.resume.val103, %vec.epilog.ph102 ], [ %index.next114, %vec.epilog.vector.body105 ] ; 2 uses
  %i.ee = sub i64 %i.ct, %index106                ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 %i.ee ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -6
  %wide.load107 = load <8 x i8>, ptr %i.eg, align 1, !tbaa !78, !alias.scope !582
  %i.eh = getelementptr inbounds i8, ptr %i.ef, i64 -7
  %wide.load109 = load <8 x i8>, ptr %i.eh, align 1, !tbaa !78, !alias.scope !582
  %i.ei = getelementptr i8, ptr %i.ef, i64 -8
  %wide.load111 = load <8 x i8>, ptr %i.ei, align 1, !tbaa !78, !alias.scope !582
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 %i.ee
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -7
  %i.el = zext <8 x i8> %wide.load107 to <8 x i16>
  %i.em = add nuw nsw <8 x i16> %i.el, splat (i16 2)
  %i.en = zext <8 x i8> %wide.load109 to <8 x i16>
  %i.eo = shl nuw nsw <8 x i16> %i.en, splat (i16 1)
  %i.ep = add nuw nsw <8 x i16> %i.em, %i.eo
  %i.eq = zext <8 x i8> %wide.load111 to <8 x i16>
  %i.er = add nuw nsw <8 x i16> %i.ep, %i.eq
  %i.es = lshr <8 x i16> %i.er, splat (i16 2)
  %reverse113 = trunc nuw <8 x i16> %i.es to <8 x i8>
  store <8 x i8> %reverse113, ptr %i.ek, align 1, !tbaa !78, !alias.scope !583, !noalias !582
  %index.next114 = add nuw i64 %index106, 8       ; 2 uses
  %i.et = icmp eq i64 %index.next114, %n.vec104
  br i1 %i.et, label %.lr.ph42.preheader, label %vec.epilog.vector.body105, !llvm.loop !577

.lr.ph42.preheader:                               ; preds = %vec.epilog.vector.body105, %iter.check98, %vector.memcheck78, %vec.epilog.iter.check99
  %indvars.iv45.ph = phi i64 [ %i.ct, %iter.check98 ], [ %i.ct, %vector.memcheck78 ], [ %i.dm, %vec.epilog.iter.check99 ], [ %i.ed, %vec.epilog.vector.body105 ]
  br label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42.preheader, %.lr.ph42
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.lr.ph42 ], [ %indvars.iv45.ph, %.lr.ph42.preheader ] ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv45 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !78
  %i.ex = zext i8 %i.ew to i16
  %i.ey = load i8, ptr %i.eu, align 1, !tbaa !78
  %i.ez = zext i8 %i.ey to i16
  %i.fa = shl nuw nsw i16 %i.ez, 1
  %i.fb = getelementptr i8, ptr %i.eu, i64 -1
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !78
  %i.fd = zext i8 %i.fc to i16
  %i.fe = add nuw nsw i16 %i.ex, 2
  %i.ff = add nuw nsw i16 %i.fe, %i.fa
  %i.fg = add nuw nsw i16 %i.ff, %i.fd
  %i.fh = lshr i16 %i.fg, 2
  %i.fi = trunc nuw i16 %i.fh to i8
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv45
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !78
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, -1
  %i.fk = trunc nuw i64 %indvars.iv45 to i32
  %i.fl = icmp sgt i32 %i.fk, 0
  br i1 %i.fl, label %.lr.ph42, label %._crit_edge43, !llvm.loop !578

._crit_edge43:                                    ; preds = %.lr.ph42, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ref_filter_strong_8(ptr nofree noundef writeonly captures(none) initializes((-1, 0), (63, 64)) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #4 {
iter.check:
  %i.a = getelementptr inbounds i8, ptr %2, i64 -1 ; 7 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !78
  %i.c = getelementptr inbounds i8, ptr %0, i64 -1
  store i8 %i.b, ptr %i.c, align 1, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 63 ; 6 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 63 ; 2 uses
  store i8 %i.e, ptr %i.f, align 1, !tbaa !78
  %i.g = getelementptr i8, ptr %2, i64 64
  %bound0 = icmp ult ptr %0, %i.g
  %bound1 = icmp ult ptr %i.a, %i.f
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.prol, label %vector.body

vec.epilog.scalar.ph.prol:                        ; preds = %vector.body, %iter.check
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 60, %vector.body ] ; 3 uses
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1 ; 2 uses
  %i.h = load i8, ptr %i.a, align 1, !tbaa !78
  %i.i = zext i8 %i.h to i16
  %i.j = trunc nuw nsw i64 %indvars.iv.ph to i16
  %i.k = xor i16 %i.j, 63
  %i.l = mul nuw nsw i16 %i.k, %i.i
  %i.m = load i8, ptr %i.d, align 1, !tbaa !78
  %i.n = zext i8 %i.m to i16
  %i.o = trunc nuw nsw i64 %indvars.iv.next.prol to i16
  %i.p = mul nuw nsw i16 %i.o, %i.n
  %i.q = add nuw nsw i16 %i.l, 32
  %i.r = add nuw i16 %i.q, %i.p
  %i.s = lshr i16 %i.r, 6
  %i.t = trunc i16 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.ph
  store i8 %i.t, ptr %i.u, align 1, !tbaa !78
  br label %vec.epilog.scalar.ph

vector.body:                                      ; preds = %iter.check
  %i.v = load i8, ptr %i.d, align 1, !tbaa !78, !alias.scope !588
  %broadcast.splatinsert29 = insertelement <8 x i8> poison, i8 %i.v, i64 0
  %broadcast.splat30 = shufflevector <8 x i8> %broadcast.splatinsert29, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.w = zext <8 x i8> %broadcast.splat30 to <8 x i16> ; 6 uses
  %i.x = load i8, ptr %i.a, align 1, !tbaa !78, !alias.scope !588
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.x, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.y = zext <8 x i8> %broadcast.splat to <8 x i16> ; 6 uses
  %i.z = mul nuw nsw <8 x i16> %i.y, <i16 63, i16 62, i16 61, i16 60, i16 59, i16 58, i16 57, i16 56>
  %i.aa = mul nuw nsw <8 x i16> %i.y, <i16 55, i16 54, i16 53, i16 52, i16 51, i16 50, i16 49, i16 48>
  %i.ab = mul nuw nsw <8 x i16> %i.w, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8>
  %i.ac = mul nuw nsw <8 x i16> %i.w, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16>
  %i.ad = add nuw nsw <8 x i16> %i.z, splat (i16 32)
  %i.ae = add nuw nsw <8 x i16> %i.aa, splat (i16 32)
  %i.af = add nuw <8 x i16> %i.ad, %i.ab
  %i.ag = add nuw <8 x i16> %i.ae, %i.ac
  %i.ah = lshr <8 x i16> %i.af, splat (i16 6)
  %i.ai = lshr <8 x i16> %i.ag, splat (i16 6)
  %i.aj = trunc <8 x i16> %i.ah to <8 x i8>
  %i.ak = trunc <8 x i16> %i.ai to <8 x i8>
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <8 x i8> %i.aj, ptr %0, align 1, !tbaa !78, !alias.scope !589, !noalias !588
  store <8 x i8> %i.ak, ptr %i.al, align 1, !tbaa !78, !alias.scope !589, !noalias !588
  %i.am = mul nuw nsw <8 x i16> %i.y, <i16 47, i16 46, i16 45, i16 44, i16 43, i16 42, i16 41, i16 40>
  %i.an = mul nuw nsw <8 x i16> %i.y, <i16 39, i16 38, i16 37, i16 36, i16 35, i16 34, i16 33, i16 32>
  %i.ao = mul nuw nsw <8 x i16> %i.w, <i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24>
  %i.ap = mul nuw nsw <8 x i16> %i.w, <i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32>
  %i.aq = add nuw nsw <8 x i16> %i.am, splat (i16 32)
  %i.ar = add nuw nsw <8 x i16> %i.an, splat (i16 32)
  %i.as = add nuw <8 x i16> %i.aq, %i.ao
  %i.at = add nuw <8 x i16> %i.ar, %i.ap
  %i.au = lshr <8 x i16> %i.as, splat (i16 6)
  %i.av = lshr <8 x i16> %i.at, splat (i16 6)
  %i.aw = trunc <8 x i16> %i.au to <8 x i8>
  %i.ax = trunc <8 x i16> %i.av to <8 x i8>
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <8 x i8> %i.aw, ptr %i.ay, align 1, !tbaa !78, !alias.scope !589, !noalias !588
  store <8 x i8> %i.ax, ptr %i.az, align 1, !tbaa !78, !alias.scope !589, !noalias !588
  %i.ba = mul nuw nsw <8 x i16> %i.y, <i16 31, i16 30, i16 29, i16 28, i16 27, i16 26, i16 25, i16 24>
  %i.bb = mul nuw nsw <8 x i16> %i.y, <i16 23, i16 22, i16 21, i16 20, i16 19, i16 18, i16 17, i16 16>
  %i.bc = mul nuw nsw <8 x i16> %i.w, <i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40>
  %i.bd = mul nuw nsw <8 x i16> %i.w, <i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48>
  %i.be = add nuw nsw <8 x i16> %i.ba, splat (i16 32)
  %i.bf = add nuw nsw <8 x i16> %i.bb, splat (i16 32)
  %i.bg = add nuw nsw <8 x i16> %i.be, %i.bc
  %i.bh = add nuw nsw <8 x i16> %i.bf, %i.bd
  %i.bi = lshr <8 x i16> %i.bg, splat (i16 6)
  %i.bj = lshr <8 x i16> %i.bh, splat (i16 6)
  %i.bk = trunc <8 x i16> %i.bi to <8 x i8>
  %i.bl = trunc <8 x i16> %i.bj to <8 x i8>
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <8 x i8> %i.bk, ptr %i.bm, align 1, !tbaa !78, !alias.scope !589, !noalias !588
  store <8 x i8> %i.bl, ptr %i.bn, align 1, !tbaa !78, !alias.scope !589, !noalias !588
  %i.bo = load i8, ptr %i.d, align 1, !tbaa !78, !alias.scope !588
  %broadcast.splatinsert36 = insertelement <4 x i8> poison, i8 %i.bo, i64 0
  %broadcast.splat37 = shufflevector <4 x i8> %broadcast.splatinsert36, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.bp = zext <4 x i8> %broadcast.splat37 to <4 x i16> ; 3 uses
  %i.bq = load i8, ptr %i.a, align 1, !tbaa !78, !alias.scope !588
  %broadcast.splatinsert34 = insertelement <4 x i8> poison, i8 %i.bq, i64 0
  %broadcast.splat35 = shufflevector <4 x i8> %broadcast.splatinsert34, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.br = zext <4 x i8> %broadcast.splat35 to <4 x i16> ; 3 uses
  %i.bs = mul nuw nsw <4 x i16> %i.br, <i16 15, i16 14, i16 13, i16 12>
  %i.bt = mul nuw nsw <4 x i16> %i.bp, <i16 49, i16 50, i16 51, i16 52>
  %i.bu = add nuw nsw <4 x i16> %i.bs, splat (i16 32)
  %i.bv = add nuw nsw <4 x i16> %i.bu, %i.bt
  %i.bw = lshr <4 x i16> %i.bv, splat (i16 6)
  %i.bx = trunc <4 x i16> %i.bw to <4 x i8>
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i8> %i.bx, ptr %i.by, align 1, !tbaa !78, !alias.scope !589, !noalias !588
  %i.bz = mul nuw nsw <4 x i16> %i.br, <i16 11, i16 10, i16 9, i16 8>
  %i.ca = mul nuw nsw <4 x i16> %i.bp, <i16 53, i16 54, i16 55, i16 56>
  %i.cb = add nuw nsw <4 x i16> %i.bz, splat (i16 32)
  %i.cc = add nuw nsw <4 x i16> %i.cb, %i.ca
  %i.cd = lshr <4 x i16> %i.cc, splat (i16 6)
  %i.ce = trunc <4 x i16> %i.cd to <4 x i8>
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 52
  store <4 x i8> %i.ce, ptr %i.cf, align 1, !tbaa !78, !alias.scope !589, !noalias !588
  %i.cg = mul nuw nsw <4 x i16> %i.br, <i16 7, i16 6, i16 5, i16 4>
  %i.ch = mul nuw nsw <4 x i16> %i.bp, <i16 57, i16 58, i16 59, i16 60>
  %i.ci = add nuw nsw <4 x i16> %i.cg, splat (i16 32)
  %i.cj = add nuw nsw <4 x i16> %i.ci, %i.ch
  %i.ck = lshr <4 x i16> %i.cj, splat (i16 6)
  %i.cl = trunc <4 x i16> %i.ck to <4 x i8>
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <4 x i8> %i.cl, ptr %i.cm, align 1, !tbaa !78, !alias.scope !589, !noalias !588
  br label %vec.epilog.scalar.ph.prol

.preheader:                                       ; preds = %vec.epilog.scalar.ph
  %i.cn = getelementptr inbounds i8, ptr %1, i64 -1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !78  ; 8 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 63 ; 14 uses
  %i.cq = zext i8 %i.co to i64
  %broadcast.splatinsert50 = insertelement <8 x i64> poison, i64 %i.cq, i64 0
  %broadcast.splat51 = shufflevector <8 x i64> %broadcast.splatinsert50, <8 x i64> poison, <8 x i32> zeroinitializer ; 7 uses
  %i.cr = load i8, ptr %i.cp, align 1, !tbaa !78
  %broadcast.splatinsert56 = insertelement <8 x i8> poison, i8 %i.cr, i64 0
  %broadcast.splat57 = shufflevector <8 x i8> %broadcast.splatinsert56, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.cs = zext <8 x i8> %broadcast.splat57 to <8 x i16>
  %i.ct = mul nuw nsw <8 x i16> %i.cs, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8>
  %i.cu = trunc nuw nsw <8 x i64> %broadcast.splat51 to <8 x i16>
  %i.cv = mul nuw nsw <8 x i16> %i.cu, <i16 63, i16 62, i16 61, i16 60, i16 59, i16 58, i16 57, i16 56>
  %i.cw = add nuw nsw <8 x i16> %i.cv, splat (i16 32)
  %i.cx = add nuw <8 x i16> %i.cw, %i.ct
  %i.cy = lshr <8 x i16> %i.cx, splat (i16 6)
  %i.cz = trunc <8 x i16> %i.cy to <8 x i8>
  store <8 x i8> %i.cz, ptr %1, align 1, !tbaa !78
  %i.da = load i8, ptr %i.cp, align 1, !tbaa !78
  %broadcast.splatinsert56.1 = insertelement <8 x i8> poison, i8 %i.da, i64 0
  %broadcast.splat57.1 = shufflevector <8 x i8> %broadcast.splatinsert56.1, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.db = zext <8 x i8> %broadcast.splat57.1 to <8 x i16>
  %i.dc = mul nuw nsw <8 x i16> %i.db, <i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16>
  %i.dd = trunc nuw nsw <8 x i64> %broadcast.splat51 to <8 x i16>
  %i.de = mul nuw nsw <8 x i16> %i.dd, <i16 55, i16 54, i16 53, i16 52, i16 51, i16 50, i16 49, i16 48>
  %i.df = add nuw nsw <8 x i16> %i.de, splat (i16 32)
  %i.dg = add nuw <8 x i16> %i.df, %i.dc
  %i.dh = lshr <8 x i16> %i.dg, splat (i16 6)
  %i.di = trunc <8 x i16> %i.dh to <8 x i8>
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <8 x i8> %i.di, ptr %i.dj, align 1, !tbaa !78
  %i.dk = load i8, ptr %i.cp, align 1, !tbaa !78
  %broadcast.splatinsert56.2 = insertelement <8 x i8> poison, i8 %i.dk, i64 0
  %broadcast.splat57.2 = shufflevector <8 x i8> %broadcast.splatinsert56.2, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.dl = zext <8 x i8> %broadcast.splat57.2 to <8 x i16>
  %i.dm = mul nuw nsw <8 x i16> %i.dl, <i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24>
  %i.dn = trunc nuw nsw <8 x i64> %broadcast.splat51 to <8 x i16>
  %i.do = mul nuw nsw <8 x i16> %i.dn, <i16 47, i16 46, i16 45, i16 44, i16 43, i16 42, i16 41, i16 40>
  %i.dp = add nuw nsw <8 x i16> %i.do, splat (i16 32)
  %i.dq = add nuw <8 x i16> %i.dp, %i.dm
  %i.dr = lshr <8 x i16> %i.dq, splat (i16 6)
  %i.ds = trunc <8 x i16> %i.dr to <8 x i8>
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <8 x i8> %i.ds, ptr %i.dt, align 1, !tbaa !78
  %i.du = load i8, ptr %i.cp, align 1, !tbaa !78
  %broadcast.splatinsert56.3 = insertelement <8 x i8> poison, i8 %i.du, i64 0
  %broadcast.splat57.3 = shufflevector <8 x i8> %broadcast.splatinsert56.3, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.dv = zext <8 x i8> %broadcast.splat57.3 to <8 x i16>
  %i.dw = mul nuw nsw <8 x i16> %i.dv, <i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32>
  %i.dx = trunc nuw nsw <8 x i64> %broadcast.splat51 to <8 x i16>
  %i.dy = mul nuw nsw <8 x i16> %i.dx, <i16 39, i16 38, i16 37, i16 36, i16 35, i16 34, i16 33, i16 32>
  %i.dz = add nuw nsw <8 x i16> %i.dy, splat (i16 32)
  %i.ea = add nuw <8 x i16> %i.dz, %i.dw
  %i.eb = lshr <8 x i16> %i.ea, splat (i16 6)
  %i.ec = trunc <8 x i16> %i.eb to <8 x i8>
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 24
  store <8 x i8> %i.ec, ptr %i.ed, align 1, !tbaa !78
  %i.ee = load i8, ptr %i.cp, align 1, !tbaa !78
  %broadcast.splatinsert56.4 = insertelement <8 x i8> poison, i8 %i.ee, i64 0
  %broadcast.splat57.4 = shufflevector <8 x i8> %broadcast.splatinsert56.4, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ef = zext <8 x i8> %broadcast.splat57.4 to <8 x i16>
  %i.eg = mul nuw nsw <8 x i16> %i.ef, <i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40>
  %i.eh = trunc nuw nsw <8 x i64> %broadcast.splat51 to <8 x i16>
  %i.ei = mul nuw nsw <8 x i16> %i.eh, <i16 31, i16 30, i16 29, i16 28, i16 27, i16 26, i16 25, i16 24>
  %i.ej = add nuw nsw <8 x i16> %i.ei, splat (i16 32)
  %i.ek = add nuw nsw <8 x i16> %i.ej, %i.eg
  %i.el = lshr <8 x i16> %i.ek, splat (i16 6)
  %i.em = trunc <8 x i16> %i.el to <8 x i8>
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <8 x i8> %i.em, ptr %i.en, align 1, !tbaa !78
  %i.eo = load i8, ptr %i.cp, align 1, !tbaa !78
  %broadcast.splatinsert56.5 = insertelement <8 x i8> poison, i8 %i.eo, i64 0
  %broadcast.splat57.5 = shufflevector <8 x i8> %broadcast.splatinsert56.5, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ep = zext <8 x i8> %broadcast.splat57.5 to <8 x i16>
  %i.eq = mul nuw nsw <8 x i16> %i.ep, <i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48>
  %i.er = trunc nuw nsw <8 x i64> %broadcast.splat51 to <8 x i16>
  %i.es = mul nuw nsw <8 x i16> %i.er, <i16 23, i16 22, i16 21, i16 20, i16 19, i16 18, i16 17, i16 16>
  %i.et = add nuw nsw <8 x i16> %i.es, splat (i16 32)
  %i.eu = add nuw nsw <8 x i16> %i.et, %i.eq
  %i.ev = lshr <8 x i16> %i.eu, splat (i16 6)
  %i.ew = trunc <8 x i16> %i.ev to <8 x i8>
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <8 x i8> %i.ew, ptr %i.ex, align 1, !tbaa !78
  %i.ey = load i8, ptr %i.cp, align 1, !tbaa !78
  %broadcast.splatinsert56.6 = insertelement <8 x i8> poison, i8 %i.ey, i64 0
  %broadcast.splat57.6 = shufflevector <8 x i8> %broadcast.splatinsert56.6, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ez = zext <8 x i8> %broadcast.splat57.6 to <8 x i16>
  %i.fa = mul nuw nsw <8 x i16> %i.ez, <i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56>
  %i.fb = trunc nuw nsw <8 x i64> %broadcast.splat51 to <8 x i16>
  %i.fc = mul nuw nsw <8 x i16> %i.fb, <i16 15, i16 14, i16 13, i16 12, i16 11, i16 10, i16 9, i16 8>
  %i.fd = add nuw nsw <8 x i16> %i.fc, splat (i16 32)
  %i.fe = add nuw nsw <8 x i16> %i.fd, %i.fa
  %i.ff = lshr <8 x i16> %i.fe, splat (i16 6)
  %i.fg = trunc <8 x i16> %i.ff to <8 x i8>
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <8 x i8> %i.fg, ptr %i.fh, align 1, !tbaa !78
  %i.fi = load i8, ptr %i.cp, align 1, !tbaa !78
  %i.fj = zext i8 %i.fi to i16
  %i.fk = mul nuw nsw i16 %i.fj, 57
  %i.fl = zext i8 %i.co to i16
  %i.fm = mul nuw nsw i16 %i.fl, 7
  %i.fn = add nuw nsw i16 %i.fm, 32
  %i.fo = add nuw nsw i16 %i.fn, %i.fk
  %i.fp = lshr i16 %i.fo, 6
  %i.fq = trunc i16 %i.fp to i8
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !78
  %i.fs = load i8, ptr %i.cp, align 1, !tbaa !78
  %i.ft = zext i8 %i.fs to i16
  %i.fu = mul nuw nsw i16 %i.ft, 58
  %i.fv = zext i8 %i.co to i16
  %i.fw = mul nuw nsw i16 %i.fv, 6
  %i.fx = add nuw nsw i16 %i.fw, 32
  %i.fy = add nuw nsw i16 %i.fx, %i.fu
  %i.fz = lshr i16 %i.fy, 6
  %i.ga = trunc i16 %i.fz to i8
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 57
  store i8 %i.ga, ptr %i.gb, align 1, !tbaa !78
  %i.gc = load i8, ptr %i.cp, align 1, !tbaa !78
  %i.gd = zext i8 %i.gc to i16
  %i.ge = mul nuw nsw i16 %i.gd, 59
  %i.gf = zext i8 %i.co to i16
  %i.gg = mul nuw nsw i16 %i.gf, 5
  %i.gh = add nuw nsw i16 %i.gg, 32
  %i.gi = add nuw nsw i16 %i.gh, %i.ge
  %i.gj = lshr i16 %i.gi, 6
  %i.gk = trunc i16 %i.gj to i8
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 58
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !78
  %i.gm = load i8, ptr %i.cp, align 1, !tbaa !78
  %i.gn = zext i8 %i.gm to i16
  %i.go = mul nuw nsw i16 %i.gn, 60
  %.tr = zext i8 %i.co to i16
  %i.gp = shl nuw nsw i16 %.tr, 2
  %i.gq = add nuw nsw i16 %i.gp, 32
  %i.gr = add nuw nsw i16 %i.gq, %i.go
  %i.gs = lshr i16 %i.gr, 6
  %i.gt = trunc i16 %i.gs to i8
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 59
  store i8 %i.gt, ptr %i.gu, align 1, !tbaa !78
  %i.gv = load i8, ptr %i.cp, align 1, !tbaa !78
  %i.gw = zext i8 %i.gv to i16
  %i.gx = mul nuw nsw i16 %i.gw, 61
  %i.gy = zext i8 %i.co to i16
  %i.gz = mul nuw nsw i16 %i.gy, 3
  %i.ha = add nuw nsw i16 %i.gz, 32
  %i.hb = add nuw nsw i16 %i.ha, %i.gx
  %i.hc = lshr i16 %i.hb, 6
  %i.hd = trunc i16 %i.hc to i8
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !78
  %i.hf = load i8, ptr %i.cp, align 1, !tbaa !78
  %i.hg = zext i8 %i.hf to i16
  %i.hh = mul nuw nsw i16 %i.hg, 62
  %.tr62 = zext i8 %i.co to i16
  %i.hi = shl nuw nsw i16 %.tr62, 1
  %i.hj = add nuw nsw i16 %i.hi, 32
  %i.hk = add nuw nsw i16 %i.hj, %i.hh
  %i.hl = lshr i16 %i.hk, 6
  %i.hm = trunc i16 %i.hl to i8
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 61
  store i8 %i.hm, ptr %i.hn, align 1, !tbaa !78
  %i.ho = load i8, ptr %i.cp, align 1, !tbaa !78
  %i.hp = zext i8 %i.ho to i16
  %i.hq = mul nuw nsw i16 %i.hp, 63
  %i.hr = zext i8 %i.co to i16
  %i.hs = add nuw nsw i16 %i.hr, 32
  %i.ht = add nuw nsw i16 %i.hs, %i.hq
  %i.hu = lshr i16 %i.ht, 6
  %i.hv = trunc i16 %i.hu to i8
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 62
  store i8 %i.hv, ptr %i.hw, align 1, !tbaa !78
  ret void

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.prol
  %indvars.iv = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.next.1, %vec.epilog.scalar.ph ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.hx = load i8, ptr %i.a, align 1, !tbaa !78
  %i.hy = zext i8 %i.hx to i16
  %i.hz = trunc i64 %indvars.iv to i16
  %i.ia = sub i16 63, %i.hz
  %i.ib = mul i16 %i.ia, %i.hy
  %i.ic = load i8, ptr %i.d, align 1, !tbaa !78
  %i.id = zext i8 %i.ic to i16
  %i.ie = trunc i64 %indvars.iv.next to i16
  %i.if = mul i16 %i.ie, %i.id
  %i.ig = add i16 %i.ib, 32
  %i.ih = add i16 %i.ig, %i.if
  %i.ii = lshr i16 %i.ih, 6
  %i.ij = trunc i16 %i.ii to i8
end_hunk_7
