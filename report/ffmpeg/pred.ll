Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pred?download=true
loop-unroll.NumCompletelyUnrolled: 289
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 353
begin_hunk_0_@pred_planar_2_8:bb.a
  %i.fs = mul nuw nsw i32 %i.fr, 7
  %i.ft = load i8, ptr %i.a, align 1, !tbaa !78
  %i.fu = zext i8 %i.ft to i32
  %i.fv = mul nuw nsw i32 %i.fu, 9
  %i.fw = load i8, ptr %i.j, align 1, !tbaa !78
  %i.fx = zext i8 %i.fw to i32
  %i.fy = mul nuw nsw i32 %i.ac, %i.fx
  %i.fz = load i8, ptr %i.b, align 1, !tbaa !78
  %i.ga = zext i8 %i.fz to i32
  %i.gb = mul nuw nsw i32 %i.ag, %i.ga
  %i.gc = add nuw nsw i32 %i.fs, 16
  %i.gd = add nuw nsw i32 %i.gc, %i.fv
  %i.ge = add nuw nsw i32 %i.gd, %i.fy
  %i.gf = add nuw nsw i32 %i.ge, %i.gb
  %i.gg = lshr i32 %i.gf, 5
  %i.gh = trunc i32 %i.gg to i8
  %i.gi = getelementptr i8, ptr %i.t, i64 8
  store i8 %i.gh, ptr %i.gi, align 1, !tbaa !78
  %i.gj = load i8, ptr %i.r, align 1, !tbaa !78
  %i.gk = zext i8 %i.gj to i32
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
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.c = mul i64 %3, 31
  %i.d = getelementptr i8, ptr %0, i64 %i.c
  %scevgep = getelementptr i8, ptr %i.d, i64 32   ; 2 uses
  %i.e = insertelement <2 x ptr> poison, ptr %1, i64 0
  %i.f = insertelement <2 x ptr> %i.e, ptr %2, i64 1 ; 2 uses
  %i.g = getelementptr i8, <2 x ptr> %i.f, i64 33
  %i.h = insertelement <2 x ptr> poison, ptr %0, i64 0
  %i.i = shufflevector <2 x ptr> %i.h, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.j = insertelement <2 x ptr> %i.f, ptr %i.b, i64 1
  %i.k = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %i.l = shufflevector <2 x ptr> %i.k, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.m = icmp ult <2 x ptr> %i.i, %i.g
  %i.n = icmp ult <2 x ptr> %i.j, %i.l
  %bound012 = icmp ult ptr %0, %i.b
  %bound113 = icmp ult ptr %2, %scevgep
  %found.conflict14 = and i1 %bound012, %bound113
  %stride.check15 = icmp slt i64 %3, 0
  %i.o = or i1 %found.conflict14, %stride.check15
  %i.p = and <2 x i1> %i.m, %i.n                  ; 2 uses
  %i.q = extractelement <2 x i1> %i.p, i64 1
  %conflict.rdx = or i1 %i.q, %i.o
  %i.r = extractelement <2 x i1> %i.p, i64 0
  %conflict.rdx20 = or i1 %i.r, %conflict.rdx
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %middle.block
  %indvars.iv6 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next7, %middle.block ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv6 ; 2 uses
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1 ; 3 uses
  %i.u = mul nsw i64 %3, %indvars.iv6
  %i.v = getelementptr i8, ptr %0, i64 %i.u       ; 3 uses
  %i.w = trunc i64 %indvars.iv6 to i16
  %i.x = sub i16 31, %i.w                         ; 2 uses
  %i.y = trunc i64 %indvars.iv.next7 to i16       ; 2 uses
  br i1 %conflict.rdx20, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %.preheader
  %4 = insertelement <4 x i16> <i16 poison, i16 poison, i16 poison, i16 32>, i16 %i.x, i64 1
  %5 = insertelement <4 x i16> %4, i16 %i.y, i64 2
  br label %scalar.ph

vector.body:                                      ; preds = %.preheader
  %broadcast.splatinsert27 = insertelement <16 x i16> poison, i16 %i.x, i64 0
  %broadcast.splat28 = shufflevector <16 x i16> %broadcast.splatinsert27, <16 x i16> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i16> poison, i16 %i.y, i64 0
  %broadcast.splat = shufflevector <16 x i16> %broadcast.splatinsert, <16 x i16> poison, <16 x i32> zeroinitializer
  %i.z = load i8, ptr %i.b, align 1, !tbaa !78, !alias.scope !589
  %broadcast.splatinsert25 = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %broadcast.splat26 = shufflevector <16 x i8> %broadcast.splatinsert25, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.aa = zext <16 x i8> %broadcast.splat26 to <16 x i16>
  %i.ab = mul <16 x i16> %broadcast.splat, %i.aa  ; 2 uses
  %i.ac = load i8, ptr %i.a, align 1, !tbaa !78, !alias.scope !590
  %broadcast.splatinsert23 = insertelement <16 x i8> poison, i8 %i.ac, i64 0
  %broadcast.splat24 = shufflevector <16 x i8> %broadcast.splatinsert23, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ad = zext <16 x i8> %broadcast.splat24 to <16 x i16> ; 2 uses
  %i.ae = load i8, ptr %i.t, align 1, !tbaa !78, !alias.scope !591
  %broadcast.splatinsert21 = insertelement <16 x i8> poison, i8 %i.ae, i64 0
  %broadcast.splat22 = shufflevector <16 x i8> %broadcast.splatinsert21, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.af = zext <16 x i8> %broadcast.splat22 to <16 x i16> ; 2 uses
  %i.ag = mul nuw nsw <16 x i16> %i.af, <i16 31, i16 30, i16 29, i16 28, i16 27, i16 26, i16 25, i16 24, i16 23, i16 22, i16 21, i16 20, i16 19, i16 18, i16 17, i16 16>
  %i.ah = mul nuw nsw <16 x i16> %i.ad, <i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16>
  %wide.load = load <16 x i8>, ptr %1, align 1, !tbaa !78, !alias.scope !590
  %i.ai = zext <16 x i8> %wide.load to <16 x i16>
  %i.aj = mul <16 x i16> %broadcast.splat28, %i.ai
  %i.ak = add nuw nsw <16 x i16> %i.ag, splat (i16 32)
  %i.al = add nuw nsw <16 x i16> %i.ak, %i.ah
  %i.am = add <16 x i16> %i.al, %i.aj
  %i.an = add <16 x i16> %i.am, %i.ab
  %i.ao = lshr <16 x i16> %i.an, splat (i16 6)
  %i.ap = trunc <16 x i16> %i.ao to <16 x i8>
  store <16 x i8> %i.ap, ptr %i.v, align 1, !tbaa !78, !alias.scope !592, !noalias !593
  %i.aq = mul nuw nsw <16 x i16> %i.af, <i16 15, i16 14, i16 13, i16 12, i16 11, i16 10, i16 9, i16 8, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0>
  %i.ar = mul nuw nsw <16 x i16> %i.ad, <i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32>
  %wide.load.1 = load <16 x i8>, ptr %i.s, align 1, !tbaa !78, !alias.scope !590
  %i.as = zext <16 x i8> %wide.load.1 to <16 x i16>
  %i.at = mul <16 x i16> %broadcast.splat28, %i.as
  %i.au = add nuw nsw <16 x i16> %i.aq, splat (i16 32)
  %i.av = add nuw nsw <16 x i16> %i.au, %i.ar
  %i.aw = add <16 x i16> %i.av, %i.at
  %i.ax = add <16 x i16> %i.aw, %i.ab
  %i.ay = lshr <16 x i16> %i.ax, splat (i16 6)
  %i.az = trunc <16 x i16> %i.ay to <16 x i8>
  %i.ba = getelementptr i8, ptr %i.v, i64 16
  store <16 x i8> %i.az, ptr %i.ba, align 1, !tbaa !78, !alias.scope !592, !noalias !593
  br label %middle.block

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 4 uses
  %i.bb = load i8, ptr %i.t, align 1, !tbaa !78
  %i.bc = zext i8 %i.bb to i16
  %i.bd = trunc i64 %indvars.iv to i16
  %i.be = sub i16 31, %i.bd
  %i.bf = mul i16 %i.be, %i.bc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bg = load i8, ptr %i.a, align 1, !tbaa !78
  %i.bh = zext i8 %i.bg to i16
  %i.bi = trunc i64 %indvars.iv.next to i16
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !78
  %i.bl = zext i8 %i.bk to i16
  %i.bm = load i8, ptr %i.b, align 1, !tbaa !78
  %i.bn = zext i8 %i.bm to i16
  %6 = insertelement <4 x i16> %5, i16 %i.bi, i64 0
  %7 = insertelement <4 x i16> <i16 poison, i16 poison, i16 poison, i16 1>, i16 %i.bh, i64 0
  %8 = insertelement <4 x i16> %7, i16 %i.bl, i64 1
  %9 = insertelement <4 x i16> %8, i16 %i.bn, i64 2
  %10 = mul <4 x i16> %6, %9
  %11 = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %10)
  %op.rdx = add i16 %11, %i.bf
  %i.bo = lshr i16 %op.rdx, 6
  %i.bp = trunc i16 %i.bo to i8
  %i.bq = getelementptr i8, ptr %i.v, i64 %indvars.iv
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !78
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %middle.block, label %scalar.ph, !llvm.loop !588

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
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !594

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
  br i1 %i.ck, label %middle.block103, label %vector.body100, !llvm.loop !595

middle.block103:                                  ; preds = %vector.body100
  br i1 %cmp.n104, label %._crit_edge62, label %scalar.ph96.preheader

scalar.ph96.preheader:                            ; preds = %.preheader57, %middle.block103
  %indvars.iv72.ph = phi i64 [ 0, %.preheader57 ], [ %i.ce, %middle.block103 ]
  br label %scalar.ph96

scalar.ph96:                                      ; preds = %scalar.ph96.preheader, %scalar.ph96
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %scalar.ph96 ], [ %indvars.iv72.ph, %scalar.ph96.preheader ] ; 2 uses
  %i.cl = getelementptr i8, ptr %i.cg, i64 %indvars.iv72
  store i32 %i.by, ptr %i.cl, align 1, !tbaa !78
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 4 ; 2 uses
  %i.cm = icmp slt i64 %indvars.iv.next73, %i.bz
  br i1 %i.cm, label %scalar.ph96, label %._crit_edge62, !llvm.loop !596

._crit_edge62:                                    ; preds = %scalar.ph96, %middle.block103
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count79
  br i1 %exitcond80.not, label %._crit_edge64.split, label %.preheader57, !llvm.loop !597

._crit_edge64.split:                              ; preds = %._crit_edge62, %bb.a
  %i.cn = phi i32 [ -1, %bb.a ], [ %i.bx, %._crit_edge62 ] ; 3 uses
  %i.co = icmp eq i32 %5, 0
  %i.cp = icmp slt i32 %i.d, 32
  %or.cond = and i1 %i.co, %i.cp
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %._crit_edge64.split
  %i.cq = load i8, ptr %2, align 1, !tbaa !78
  %i.cr = zext i8 %i.cq to i32
end_hunk_0
begin_hunk_1_@ref_filter_strong_8:vector.memcheck
  %i.dh = add nuw nsw <8 x i16> %i.dg, splat (i16 32)
  %i.di = add nuw <8 x i16> %i.dh, %i.de
  %i.dj = lshr <8 x i16> %i.di, splat (i16 6)
  %i.dk = trunc <8 x i16> %i.dj to <8 x i8>
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 24
  store <8 x i8> %i.dk, ptr %i.dl, align 1, !tbaa !78
  %i.dm = load i8, ptr %i.bx, align 1, !tbaa !78
  %broadcast.splatinsert40.4 = insertelement <8 x i8> poison, i8 %i.dm, i64 0
  %broadcast.splat41.4 = shufflevector <8 x i8> %broadcast.splatinsert40.4, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.dn = zext <8 x i8> %broadcast.splat41.4 to <8 x i16>
  %i.do = mul nuw nsw <8 x i16> %i.dn, <i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40>
  %i.dp = trunc nuw nsw <8 x i64> %broadcast.splat36 to <8 x i16>
  %i.dq = mul nuw nsw <8 x i16> %i.dp, <i16 31, i16 30, i16 29, i16 28, i16 27, i16 26, i16 25, i16 24>
  %i.dr = add nuw nsw <8 x i16> %i.dq, splat (i16 32)
  %i.ds = add nuw nsw <8 x i16> %i.dr, %i.do
  %i.dt = lshr <8 x i16> %i.ds, splat (i16 6)
  %i.du = trunc <8 x i16> %i.dt to <8 x i8>
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <8 x i8> %i.du, ptr %i.dv, align 1, !tbaa !78
  %i.dw = load i8, ptr %i.bx, align 1, !tbaa !78
  %broadcast.splatinsert40.5 = insertelement <8 x i8> poison, i8 %i.dw, i64 0
  %broadcast.splat41.5 = shufflevector <8 x i8> %broadcast.splatinsert40.5, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.dx = zext <8 x i8> %broadcast.splat41.5 to <8 x i16>
  %i.dy = mul nuw nsw <8 x i16> %i.dx, <i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48>
  %i.dz = trunc nuw nsw <8 x i64> %broadcast.splat36 to <8 x i16>
  %i.ea = mul nuw nsw <8 x i16> %i.dz, <i16 23, i16 22, i16 21, i16 20, i16 19, i16 18, i16 17, i16 16>
  %i.eb = add nuw nsw <8 x i16> %i.ea, splat (i16 32)
  %i.ec = add nuw nsw <8 x i16> %i.eb, %i.dy
  %i.ed = lshr <8 x i16> %i.ec, splat (i16 6)
  %i.ee = trunc <8 x i16> %i.ed to <8 x i8>
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <8 x i8> %i.ee, ptr %i.ef, align 1, !tbaa !78
  %i.eg = load i8, ptr %i.bx, align 1, !tbaa !78
  %broadcast.splatinsert40.6 = insertelement <8 x i8> poison, i8 %i.eg, i64 0
  %broadcast.splat41.6 = shufflevector <8 x i8> %broadcast.splatinsert40.6, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.eh = zext <8 x i8> %broadcast.splat41.6 to <8 x i16>
  %i.ei = mul nuw nsw <8 x i16> %i.eh, <i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56>
  %i.ej = trunc nuw nsw <8 x i64> %broadcast.splat36 to <8 x i16>
  %i.ek = mul nuw nsw <8 x i16> %i.ej, <i16 15, i16 14, i16 13, i16 12, i16 11, i16 10, i16 9, i16 8>
  %i.el = add nuw nsw <8 x i16> %i.ek, splat (i16 32)
  %i.em = add nuw nsw <8 x i16> %i.el, %i.ei
  %i.en = lshr <8 x i16> %i.em, splat (i16 6)
  %i.eo = trunc <8 x i16> %i.en to <8 x i8>
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <8 x i8> %i.eo, ptr %i.ep, align 1, !tbaa !78
  %i.eq = load i8, ptr %i.bx, align 1, !tbaa !78
  %i.er = zext i8 %i.eq to i16
  %i.es = mul nuw nsw i16 %i.er, 57
  %i.et = zext i8 %i.bw to i16
  %i.eu = mul nuw nsw i16 %i.et, 7
  %i.ev = add nuw nsw i16 %i.eu, 32
  %i.ew = add nuw nsw i16 %i.ev, %i.es
  %i.ex = lshr i16 %i.ew, 6
  %i.ey = trunc i16 %i.ex to i8
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !78
  %i.fa = load i8, ptr %i.bx, align 1, !tbaa !78
  %i.fb = zext i8 %i.fa to i16
  %i.fc = mul nuw nsw i16 %i.fb, 58
  %i.fd = zext i8 %i.bw to i16
  %i.fe = mul nuw nsw i16 %i.fd, 6
  %i.ff = add nuw nsw i16 %i.fe, 32
  %i.fg = add nuw nsw i16 %i.ff, %i.fc
  %i.fh = lshr i16 %i.fg, 6
  %i.fi = trunc i16 %i.fh to i8
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 57
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !78
  %i.fk = load i8, ptr %i.bx, align 1, !tbaa !78
  %i.fl = zext i8 %i.fk to i16
  %i.fm = mul nuw nsw i16 %i.fl, 59
  %i.fn = zext i8 %i.bw to i16
  %i.fo = mul nuw nsw i16 %i.fn, 5
  %i.fp = add nuw nsw i16 %i.fo, 32
  %i.fq = add nuw nsw i16 %i.fp, %i.fm
  %i.fr = lshr i16 %i.fq, 6
  %i.fs = trunc i16 %i.fr to i8
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 58
  store i8 %i.fs, ptr %i.ft, align 1, !tbaa !78
  %i.fu = load i8, ptr %i.bx, align 1, !tbaa !78
  %i.fv = zext i8 %i.fu to i16
  %i.fw = mul nuw nsw i16 %i.fv, 60
  %.tr = zext i8 %i.bw to i16
  %i.fx = shl nuw nsw i16 %.tr, 2
  %i.fy = add nuw nsw i16 %i.fx, 32
  %i.fz = add nuw nsw i16 %i.fy, %i.fw
  %i.ga = lshr i16 %i.fz, 6
  %i.gb = trunc i16 %i.ga to i8
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 59
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !78
  %i.gd = load i8, ptr %i.bx, align 1, !tbaa !78
  %i.ge = zext i8 %i.gd to i16
  %i.gf = mul nuw nsw i16 %i.ge, 61
  %i.gg = zext i8 %i.bw to i16
  %i.gh = mul nuw nsw i16 %i.gg, 3
  %i.gi = add nuw nsw i16 %i.gh, 32
  %i.gj = add nuw nsw i16 %i.gi, %i.gf
  %i.gk = lshr i16 %i.gj, 6
  %i.gl = trunc i16 %i.gk to i8
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i8 %i.gl, ptr %i.gm, align 1, !tbaa !78
  %i.gn = load i8, ptr %i.bx, align 1, !tbaa !78
  %i.go = zext i8 %i.gn to i16
  %i.gp = mul nuw nsw i16 %i.go, 62
  %.tr45 = zext i8 %i.bw to i16
  %i.gq = shl nuw nsw i16 %.tr45, 1
  %i.gr = add nuw nsw i16 %i.gq, 32
  %i.gs = add nuw nsw i16 %i.gr, %i.gp
  %i.gt = lshr i16 %i.gs, 6
  %i.gu = trunc i16 %i.gt to i8
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 61
  store i8 %i.gu, ptr %i.gv, align 1, !tbaa !78
  %i.gw = load i8, ptr %i.bx, align 1, !tbaa !78
  %i.gx = zext i8 %i.gw to i16
  %i.gy = mul nuw nsw i16 %i.gx, 63
  %i.gz = zext i8 %i.bw to i16
  %i.ha = add nuw nsw i16 %i.gz, 32
  %i.hb = add nuw nsw i16 %i.ha, %i.gy
  %i.hc = lshr i16 %i.hb, 6
  %i.hd = trunc i16 %i.hc to i8
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 62
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !78
  ret void

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.prol
  %indvars.iv = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.next.1, %scalar.ph ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.hf = load i8, ptr %i.a, align 1, !tbaa !78
  %i.hg = zext i8 %i.hf to i16
  %i.hh = trunc i64 %indvars.iv to i16
  %i.hi = sub i16 63, %i.hh
  %i.hj = mul i16 %i.hi, %i.hg
  %i.hk = load i8, ptr %i.d, align 1, !tbaa !78
  %i.hl = zext i8 %i.hk to i16
  %i.hm = trunc i64 %indvars.iv.next to i16
  %i.hn = mul i16 %i.hm, %i.hl
  %i.ho = add i16 %i.hj, 32
  %i.hp = add i16 %i.ho, %i.hn
  %i.hq = lshr i16 %i.hp, 6
  %i.hr = trunc i16 %i.hq to i8
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.hr, ptr %i.hs, align 1, !tbaa !78
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ht = load i8, ptr %i.a, align 1, !tbaa !78
  %i.hu = zext i8 %i.ht to i16
  %i.hv = trunc i64 %indvars.iv.next to i16
  %i.hw = sub i16 63, %i.hv
  %i.hx = mul i16 %i.hw, %i.hu
  %i.hy = load i8, ptr %i.d, align 1, !tbaa !78
  %i.hz = zext i8 %i.hy to i16
  %i.ia = trunc i64 %indvars.iv.next.1 to i16
  %i.ib = mul i16 %i.ia, %i.hz
  %i.ic = add i16 %i.hx, 32
  %i.id = add i16 %i.ic, %i.ib
  %i.ie = lshr i16 %i.id, 6
  %i.if = trunc i16 %i.ie to i8
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  store i8 %i.if, ptr %i.ig, align 1, !tbaa !78
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 63
  br i1 %exitcond.not.1, label %.preheader, label %scalar.ph, !llvm.loop !623
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v4i16(<4 x i16>) #7

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!68, !69, !70}
!llvm.ident = !{!71}
!llvm.errno.tbaa = !{!76}

!0 = distinct !{!0, !79}
!1 = distinct !{!1, !79}
!2 = distinct !{!2, !79}
!3 = distinct !{!3, !79}
!4 = distinct !{!4, !79}
!5 = distinct !{!5, !79}
!6 = distinct !{!6, !79}
!7 = distinct !{!7, !79}
!8 = distinct !{!8, !79}
!9 = distinct !{!9, !79}
!10 = distinct !{!10, !79}
!11 = distinct !{!11, !79}
!12 = distinct !{!12, !79}
!13 = distinct !{!13, !79}
!14 = distinct !{!14, !79}
!15 = distinct !{!15, !79}
!16 = distinct !{!16, !79}
!17 = distinct !{!17, !79}
!18 = distinct !{!18, !79}
!19 = distinct !{!19, !79}
!20 = distinct !{!20, !79}
!21 = distinct !{!21, !79}
!22 = distinct !{!22, !79}
!23 = distinct !{!23, !79}
!24 = distinct !{!24, !79}
!25 = distinct !{!25, !79}
!26 = distinct !{!26, !79}
!27 = distinct !{null}
!28 = distinct !{!28, !79}
!29 = distinct !{!29, !79}
!30 = distinct !{!30, !79}
!31 = distinct !{!31, !79}
!32 = distinct !{!32, !79}
!33 = distinct !{!33, !79}
!34 = distinct !{!34, !79}
!35 = distinct !{!35, !79}
!36 = distinct !{!36, !79}
!37 = distinct !{!37, !79}
!38 = distinct !{!38, !79}
!39 = distinct !{!39, !79}
!40 = distinct !{null}
!41 = distinct !{!41, !79}
!42 = distinct !{!42, !79}
!43 = distinct !{!43, !79}
!44 = distinct !{!44, !79}
!45 = distinct !{!45, !79}
!46 = distinct !{!46, !79}
!47 = distinct !{!47, !79}
!48 = distinct !{!48, !79}
!49 = distinct !{!49, !79}
!50 = distinct !{!50, !79}
!51 = distinct !{!51, !79}
!52 = distinct !{!52, !79}
!53 = distinct !{null}
!54 = distinct !{!54, !79}
!55 = distinct !{!55, !79}
!56 = distinct !{!56, !79}
!57 = distinct !{!57, !79}
!58 = distinct !{!58, !79}
!59 = distinct !{!59, !79}
!60 = distinct !{!60, !79}
!61 = distinct !{!61, !79}
!62 = distinct !{!62, !79}
!63 = distinct !{!63, !79}
!64 = distinct !{!64, !79}
!65 = distinct !{!65, !79}
!66 = distinct !{null}
!67 = distinct !{!67, !79}
!68 = !{i32 8, !"PIC Level", i32 2}
!69 = !{i32 7, !"uwtable", i32 2}
!70 = !{i32 1, !"override-stack-alignment", i32 16}
!71 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!72 = !{!"Simple C/C++ TBAA"}
!73 = !{!"omnipotent char", !72, i64 0}
!74 = !{!"int", !73, i64 0}
!75 = !{!"__libc_errno", !74, i64 0}
!76 = !{!75, !74, i64 0}
!77 = !{!74, !74, i64 0}
!78 = !{!73, !73, i64 0}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!"llvm.loop.isvectorized", i32 1}
!81 = !{!"short", !73, i64 0}
!82 = !{!81, !81, i64 0}
!83 = !{!"any pointer", !73, i64 0}
!84 = !{!83, !83, i64 0}
!85 = !{!"HEVCPredContext", !73, i64 0, !73, i64 32, !83, i64 64, !73, i64 72, !73, i64 104, !83, i64 128}
!86 = !{!"ScalingList", !73, i64 0, !73, i64 1536}
!87 = !{!"p1 int", !83, i64 0}
!88 = !{!"p1 omnipotent char", !83, i64 0}
!89 = !{!"p1 _ZTS7HEVCSPS", !83, i64 0}
!90 = !{!"HEVCPPS", !74, i64 0, !74, i64 4, !73, i64 8, !73, i64 9, !74, i64 12, !74, i64 16, !74, i64 20, !73, i64 24, !73, i64 25, !73, i64 26, !74, i64 28, !74, i64 32, !74, i64 36, !73, i64 40, !73, i64 41, !73, i64 42, !73, i64 43, !73, i64 44, !73, i64 45, !73, i64 46, !73, i64 47, !81, i64 48, !81, i64 50, !73, i64 52, !73, i64 53, !73, i64 54, !73, i64 55, !73, i64 56, !73, i64 57, !74, i64 60, !74, i64 64, !73, i64 68, !86, i64 69, !73, i64 1617, !74, i64 1620, !74, i64 1624, !73, i64 1628, !73, i64 1629, !73, i64 1630, !73, i64 1631, !73, i64 1632, !73, i64 1633, !73, i64 1634, !73, i64 1635, !73, i64 1636, !73, i64 1637, !73, i64 1638, !73, i64 1639, !73, i64 1645, !73, i64 1651, !73, i64 1652, !73, i64 1653, !73, i64 1654, !73, i64 1655, !73, i64 1656, !73, i64 1657, !73, i64 1721, !73, i64 1786, !73, i64 1914, !73, i64 2042, !73, i64 2170, !73, i64 2298, !73, i64 2362, !73, i64 2490, !73, i64 2618, !73, i64 2746, !73, i64 2874, !73, i64 2938, !73, i64 3002, !73, i64 3066, !73, i64 3130, !73, i64 3194, !73, i64 3195, !73, i64 3196, !73, i64 3258, !73, i64 3259, !73, i64 3260, !73, i64 3261, !73, i64 3262, !73, i64 3263, !73, i64 3264, !73, i64 3265, !73, i64 3266, !73, i64 3267, !73, i64 3268, !73, i64 3269, !73, i64 3270, !73, i64 3271, !73, i64 3272, !73, i64 3273, !73, i64 3274, !73, i64 3275, !73, i64 3276, !73, i64 3277, !73, i64 3278, !73, i64 3279, !73, i64 3280, !87, i64 4048, !87, i64 4056, !87, i64 4064, !87, i64 4072, !87, i64 4080, !87, i64 4088, !87, i64 4096, !87, i64 4104, !87, i64 4112, !87, i64 4120, !87, i64 4128, !88, i64 4136, !74, i64 4144, !89, i64 4152}
!91 = !{!90, !89, i64 4152}
!92 = !{!"p1 _ZTS11HEVCContext", !83, i64 0}
!93 = !{!"CABACContext", !74, i64 0, !74, i64 4, !88, i64 8, !88, i64 16, !88, i64 24}
!94 = !{!"p1 _ZTS14HEVCCABACState", !83, i64 0}
!95 = !{!"TransformUnit", !74, i64 0, !74, i64 4, !74, i64 8, !74, i64 12, !74, i64 16, !73, i64 20, !73, i64 21, !73, i64 22, !73, i64 23, !73, i64 24}
!96 = !{!"CodingUnit", !74, i64 0, !74, i64 4, !74, i64 8, !74, i64 12, !73, i64 16, !73, i64 17, !73, i64 18}
!97 = !{!"Mv", !81, i64 0, !81, i64 2}
!98 = !{!"PredictionUnit", !74, i64 0, !74, i64 4, !73, i64 8, !97, i64 12, !73, i64 16, !73, i64 17, !73, i64 21}
!99 = !{!"NeighbourAvailable", !74, i64 0, !74, i64 4, !74, i64 8, !74, i64 12, !74, i64 16, !74, i64 20}
!100 = !{!"HEVCLocalContext", !73, i64 0, !73, i64 199, !73, i64 203, !83, i64 208, !92, i64 216, !93, i64 224, !94, i64 256, !73, i64 264, !73, i64 265, !74, i64 268, !95, i64 272, !73, i64 300, !73, i64 301, !73, i64 302, !73, i64 303, !74, i64 304, !74, i64 308, !73, i64 320, !73, i64 11680, !73, i64 23040, !74, i64 31232, !96, i64 31236, !98, i64 31256, !99, i64 31284, !74, i64 31308, !73, i64 31312}
!101 = !{!100, !92, i64 216}
!102 = !{!"HEVCWindow", !74, i64 0, !74, i64 4, !74, i64 8, !74, i64 12}
!103 = !{!"HEVCHdrFlagParams", !73, i64 0, !73, i64 1, !73, i64 2}
!104 = !{!"HEVCHdrParams", !103, i64 0, !73, i64 3, !73, i64 4, !73, i64 5, !73, i64 6, !73, i64 7, !73, i64 8, !73, i64 9, !73, i64 10, !73, i64 11, !73, i64 12, !73, i64 13, !73, i64 14, !73, i64 15, !73, i64 16, !73, i64 24, !73, i64 40, !73, i64 3652}
!105 = !{!"AVRational", !74, i64 0, !74, i64 4}
!106 = !{!"H2645VUI", !105, i64 0, !74, i64 8, !74, i64 12, !74, i64 16, !74, i64 20, !74, i64 24, !74, i64 28, !74, i64 32, !74, i64 36, !74, i64 40, !74, i64 44, !74, i64 48, !74, i64 52, !74, i64 56, !74, i64 60, !74, i64 64}
!107 = !{!"VUI", !106, i64 0, !74, i64 68, !74, i64 72, !74, i64 76, !74, i64 80, !102, i64 84, !74, i64 100, !74, i64 104, !74, i64 108, !74, i64 112, !74, i64 116, !74, i64 120, !74, i64 124, !74, i64 128, !74, i64 132, !74, i64 136, !74, i64 140, !74, i64 144, !74, i64 148, !74, i64 152, !74, i64 156}
!108 = !{!"PTLCommon", !73, i64 0, !73, i64 1, !73, i64 2, !73, i64 3, !73, i64 35, !73, i64 36, !73, i64 37, !73, i64 38, !73, i64 39, !73, i64 40, !73, i64 41, !73, i64 42, !73, i64 43, !73, i64 44, !73, i64 45, !73, i64 46, !73, i64 47, !73, i64 48, !73, i64 49, !73, i64 50}
!109 = !{!"PTL", !108, i64 0, !73, i64 51, !73, i64 408, !73, i64 415}
!110 = !{!"", !73, i64 0, !73, i64 1, !74, i64 4, !74, i64 8}
!111 = !{!"p1 _ZTS7HEVCVPS", !83, i64 0}
!112 = !{!"HEVCSPS", !74, i64 0, !74, i64 4, !102, i64 8, !102, i64 24, !104, i64 40, !74, i64 7304, !74, i64 7308, !74, i64 7312, !74, i64 7316, !74, i64 7320, !74, i64 7324, !73, i64 7328, !74, i64 7412, !107, i64 7416, !109, i64 7576, !86, i64 7998, !74, i64 9548, !73, i64 9552, !73, i64 18512, !74, i64 18576, !73, i64 18580, !110, i64 18584, !74, i64 18596, !74, i64 18600, !74, i64 18604, !74, i64 18608, !74, i64 18612, !74, i64 18616, !74, i64 18620, !74, i64 18624, !74, i64 18628, !73, i64 18632, !73, i64 18633, !73, i64 18634, !73, i64 18635, !73, i64 18636, !73, i64 18637, !73, i64 18638, !73, i64 18639, !73, i64 18640, !73, i64 18641, !73, i64 18642, !73, i64 18643, !73, i64 18644, !73, i64 18645, !73, i64 18646, !73, i64 18647, !73, i64 18648, !73, i64 18649, !73, i64 18650, !73, i64 18651, !73, i64 18652, !73, i64 18653, !73, i64 18654, !73, i64 18655, !73, i64 18656, !73, i64 18657, !73, i64 18658, !73, i64 18659, !73, i64 18660, !73, i64 18661, !74, i64 18664, !74, i64 18668, !74, i64 18672, !73, i64 18676, !74, i64 20212, !74, i64 20216, !74, i64 20220, !74, i64 20224, !74, i64 20228, !74, i64 20232, !74, i64 20236, !74, i64 20240, !74, i64 20244, !74, i64 20248, !74, i64 20252, !74, i64 20256, !74, i64 20260, !73, i64 20264, !73, i64 20276, !74, i64 20288, !88, i64 20296, !74, i64 20304, !111, i64 20312}
!113 = !{!112, !74, i64 18604}
!114 = !{!112, !74, i64 20260}
!115 = !{!90, !87, i64 4120}
!116 = !{!"p1 _ZTS7AVClass", !83, i64 0}
!117 = !{!"p1 _ZTS14AVCodecContext", !83, i64 0}
!118 = !{!"p1 _ZTS16HEVCLocalContext", !83, i64 0}
!119 = !{!"p1 _ZTS15AVContainerFifo", !83, i64 0}
!120 = !{!"HEVCParamSets", !73, i64 0, !73, i64 128, !73, i64 256}
!121 = !{!"p1 _ZTS11AVBufferRef", !83, i64 0}
!122 = !{!"AVFilmGrainAFGS1Params", !74, i64 0, !73, i64 8}
!123 = !{!"FFITUTT35Meta", !121, i64 0, !121, i64 8, !121, i64 16, !121, i64 24, !121, i64 32, !121, i64 40, !121, i64 48, !122, i64 56}
!124 = !{!"any p2 pointer", !83, i64 0}
!125 = !{!"p2 _ZTS11AVBufferRef", !124, i64 0}
!126 = !{!"H2645SEIUnregistered", !125, i64 0, !74, i64 8, !74, i64 12}
!127 = !{!"H2645SEIFramePacking", !74, i64 0, !74, i64 4, !74, i64 8, !74, i64 12, !74, i64 16, !74, i64 20, !74, i64 24, !74, i64 28}
!128 = !{!"H2645SEIDisplayOrientation", !74, i64 0, !74, i64 4, !74, i64 8, !74, i64 12}
!129 = !{!"H2645SEIAlternativeTransfer", !74, i64 0, !74, i64 4}
!130 = !{!"H2645SEIAmbientViewingEnvironment", !74, i64 0, !74, i64 4, !81, i64 8, !81, i64 10}
!131 = !{!"H2645SEIMasteringDisplay", !74, i64 0, !73, i64 4, !73, i64 16, !74, i64 20, !74, i64 24}
!132 = !{!"H2645SEIContentLight", !74, i64 0, !81, i64 4, !81, i64 6}
!133 = !{!"p1 _ZTS32H2645SEIFilmGrainCharacteristics", !83, i64 0}
!134 = !{!"H2645SEI", !123, i64 0, !126, i64 128, !127, i64 144, !128, i64 176, !129, i64 192, !130, i64 200, !131, i64 212, !132, i64 240, !133, i64 248}
!135 = !{!"HEVCSEIPictureHash", !73, i64 0, !73, i64 48}
!136 = !{!"HEVCSEIPictureTiming", !74, i64 0}
!137 = !{!"HEVCSEITimeCode", !74, i64 0, !73, i64 4, !73, i64 5, !73, i64 8, !73, i64 11, !73, i64 14, !73, i64 17, !73, i64 20, !73, i64 24, !73, i64 30, !73, i64 33, !73, i64 36, !73, i64 39, !73, i64 42, !73, i64 45, !73, i64 48, !73, i64 52}
!138 = !{!"HEVCSEITDRDI", !73, i64 0, !73, i64 1, !73, i64 2, !73, i64 3, !73, i64 4, !73, i64 68, !73, i64 132, !73, i64 168, !73, i64 424, !73, i64 456, !73, i64 712, !73, i64 744, !73, i64 808, !74, i64 812}
!139 = !{!"HEVCSEIRecoveryPoint", !81, i64 0, !73, i64 2, !73, i64 3, !73, i64 4}
!140 = !{!"HEVCSEI", !134, i64 0, !135, i64 256, !136, i64 308, !74, i64 312, !137, i64 316, !138, i64 384, !139, i64 1200}
!141 = !{!"p1 _ZTS5AVMD5", !83, i64 0}
!142 = !{!"p1 _ZTS7HEVCPPS", !83, i64 0}
!143 = !{!"ShortTermRPS", !73, i64 0, !74, i64 128, !73, i64 132, !73, i64 133, !73, i64 134, !73, i64 135, !81, i64 136, !74, i64 138, !74, i64 138, !74, i64 138}
!144 = !{!"p1 _ZTS12ShortTermRPS", !83, i64 0}
!145 = !{!"LongTermRPS", !73, i64 0, !73, i64 128, !73, i64 160, !73, i64 192}
!146 = !{!"SliceHeader", !74, i64 0, !74, i64 4, !74, i64 8, !74, i64 12, !74, i64 16, !74, i64 20, !73, i64 24, !73, i64 25, !73, i64 26, !73, i64 27, !73, i64 28, !74, i64 32, !74, i64 36, !143, i64 40, !144, i64 184, !74, i64 192, !145, i64 196, !73, i64 392, !73, i64 648, !73, i64 650, !73, i64 651, !73, i64 652, !73, i64 660, !73, i64 663, !73, i64 664, !73, i64 665, !73, i64 666, !73, i64 667, !74, i64 668, !74, i64 672, !74, i64 676, !74, i64 680, !74, i64 684, !74, i64 688, !74, i64 692, !73, i64 696, !74, i64 700, !74, i64 704, !73, i64 708, !73, i64 709, !87, i64 712, !87, i64 720, !87, i64 728, !74, i64 736, !73, i64 740, !73, i64 741, !81, i64 742, !73, i64 744, !73, i64 776, !73, i64 840, !73, i64 904, !73, i64 936, !73, i64 968, !73, i64 1032, !73, i64 1064, !74, i64 1128, !74, i64 1132}
!147 = !{!"p1 _ZTS9HEVCFrame", !83, i64 0}
!148 = !{!"HEVCDSPContext", !83, i64 0, !73, i64 8, !83, i64 40, !83, i64 48, !83, i64 56, !73, i64 64, !73, i64 96, !73, i64 128, !73, i64 168, !73, i64 208, !73, i64 224, !73, i64 544, !73, i64 864, !73, i64 1184, !73, i64 1504, !73, i64 1824, !73, i64 2144, !73, i64 2464, !73, i64 2784, !73, i64 3104, !83, i64 3424, !83, i64 3432, !83, i64 3440, !83, i64 3448, !83, i64 3456, !83, i64 3464, !83, i64 3472, !83, i64 3480}
!149 = !{!"VideoDSPContext", !83, i64 0, !83, i64 8}
!150 = !{!"BswapDSPContext", !83, i64 0, !83, i64 8}
!151 = !{!"HEVCCABACState", !73, i64 0, !73, i64 199}
!152 = !{!"p1 _ZTS14ThreadProgress", !83, i64 0}
!153 = !{!"p1 _ZTS8H2645NAL", !83, i64 0}
!154 = !{!"H2645RBSP", !88, i64 0, !121, i64 8, !74, i64 16, !74, i64 20}
!155 = !{!"H2645Packet", !153, i64 0, !154, i64 8, !74, i64 32, !74, i64 36, !74, i64 40}
!156 = !{!"long", !73, i64 0}
!157 = !{!"AVDOVIDecoderConfigurationRecord", !73, i64 0, !73, i64 1, !73, i64 2, !73, i64 3, !73, i64 4, !73, i64 5, !73, i64 6, !73, i64 7, !73, i64 8}
!158 = !{!"AVDOVIRpuDataHeader", !73, i64 0, !81, i64 2, !73, i64 4, !73, i64 5, !73, i64 6, !73, i64 7, !73, i64 8, !73, i64 9, !73, i64 10, !73, i64 11, !73, i64 12, !73, i64 13, !73, i64 14, !73, i64 15, !73, i64 16, !73, i64 17, !73, i64 18}
!159 = !{!"p1 _ZTS17AVDOVIDataMapping", !83, i64 0}
!160 = !{!"p1 _ZTS19AVDOVIColorMetadata", !83, i64 0}
!161 = !{!"p1 _ZTS7DOVIExt", !83, i64 0}
!162 = !{!"DOVIContext", !83, i64 0, !74, i64 8, !157, i64 12, !158, i64 22, !159, i64 48, !160, i64 56, !161, i64 64, !160, i64 72, !73, i64 80, !88, i64 208, !74, i64 216}
!163 = !{!"HEVCContext", !116, i64 0, !117, i64 8, !118, i64 16, !74, i64 24, !73, i64 32, !74, i64 7056, !74, i64 7060, !74, i64 7064, !73, i64 7068, !119, i64 7072, !120, i64 7080, !140, i64 7848, !141, i64 9056, !73, i64 9064, !111, i64 10912, !142, i64 10920, !146, i64 10928, !74, i64 12064, !74, i64 12068, !147, i64 12072, !147, i64 12080, !74, i64 12088, !74, i64 12092, !74, i64 12096, !74, i64 12100, !74, i64 12104, !74, i64 12108, !74, i64 12112, !85, i64 12120, !148, i64 12256, !149, i64 15744, !150, i64 15760, !88, i64 15776, !74, i64 15784, !151, i64 15788, !152, i64 15992, !74, i64 16000, !73, i64 16004, !88, i64 16008, !155, i64 16016, !74, i64 16064, !74, i64 16068, !74, i64 16072, !74, i64 16076, !87, i64 16080, !74, i64 16088, !87, i64 16096, !74, i64 16104, !87, i64 16112, !74, i64 16120, !74, i64 16124, !74, i64 16128, !74, i64 16132, !156, i64 16136, !121, i64 16144, !162, i64 16152}
!164 = !{!163, !147, i64 12072}
!165 = !{!88, !88, i64 0}
!166 = !{!112, !74, i64 20252}
!167 = !{!100, !74, i64 31284}
!168 = !{!100, !74, i64 31288}
!169 = !{!100, !74, i64 31296}
!170 = !{!100, !74, i64 31292}
!171 = !{!100, !74, i64 31300}
!172 = !{!112, !74, i64 20220}
!173 = !{!112, !74, i64 20216}
!174 = !{!90, !73, i64 24}
!175 = !{!112, !74, i64 18616}
!176 = !{!112, !74, i64 20256}
!177 = !{!"p1 _ZTS7AVFrame", !83, i64 0}
!178 = !{!"p1 _ZTS7MvField", !83, i64 0}
!179 = !{!"p1 _ZTS10RefPicList", !83, i64 0}
!180 = !{!"p2 _ZTS13RefPicListTab", !124, i64 0}
!181 = !{!"p1 _ZTS13RefPicListTab", !83, i64 0}
!182 = !{!"HEVCFrame", !73, i64 0, !177, i64 16, !74, i64 24, !178, i64 32, !179, i64 40, !180, i64 48, !74, i64 56, !74, i64 60, !142, i64 64, !181, i64 72, !74, i64 80, !83, i64 88, !74, i64 96, !73, i64 100}
!183 = !{!182, !178, i64 32}
!184 = !{!"MvField", !73, i64 0, !73, i64 8, !73, i64 10}
!185 = !{!184, !73, i64 10}
end_hunk_1
