Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/aria?download=true
inline.NumInlined: 23
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@mbedtls_aria_setkey_enc:bb.a
  %i.do = zext i8 %i.dn to i32
  %i.dp = shl nuw nsw i32 %i.do, 16
  %i.dq = or disjoint i32 %i.di, %i.dp
  %i.dr = lshr i32 %i.am, 24
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @aria_sb2, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !15
  %i.dv = zext i8 %i.du to i32
  %i.dw = shl nuw i32 %i.dv, 24
  %i.dx = or disjoint i32 %i.dq, %i.dw
  %i.dy = and i32 %i.ar, 255
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr @aria_is1, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !15
  %i.ec = zext i8 %i.eb to i32
  %i.ed = lshr i32 %i.ar, 8
  %i.ee = and i32 %i.ed, 255
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr @aria_is2, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !15
  %i.ei = zext i8 %i.eh to i32
  %i.ej = shl nuw nsw i32 %i.ei, 8
  %i.ek = or disjoint i32 %i.ej, %i.ec
  %i.el = lshr i32 %i.ar, 16
  %i.em = and i32 %i.el, 255
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr @aria_sb1, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !15
  %i.eq = zext i8 %i.ep to i32
  %i.er = shl nuw nsw i32 %i.eq, 16
  %i.es = or disjoint i32 %i.ek, %i.er
  %i.et = lshr i32 %i.ar, 24
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr @aria_sb2, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !15
  %i.ex = zext i8 %i.ew to i32
  %i.ey = shl nuw i32 %i.ex, 24
  %i.ez = or disjoint i32 %i.es, %i.ey            ; 2 uses
  %i.fa = tail call i32 @llvm.fshl.i32(i32 %i.cv, i32 %i.cv, i32 16) ; 2 uses
  %i.fb = tail call i32 @llvm.bswap.i32(i32 %i.dx) ; 2 uses
  %i.fc = tail call i32 @llvm.fshl.i32(i32 %i.fb, i32 %i.fb, i32 16) ; 3 uses
  %i.fd = tail call i32 @llvm.bswap.i32(i32 %i.ez) ; 2 uses
  %i.fe = xor i32 %i.fc, %i.cv
  %i.ff = tail call i32 @llvm.fshl.i32(i32 %i.bt, i32 %i.bt, i32 16) ; 2 uses
  %i.fg = tail call i32 @llvm.bswap.i32(i32 %i.fe) ; 2 uses
  %i.fh = tail call i32 @llvm.fshl.i32(i32 %i.fg, i32 %i.fg, i32 16)
  %i.fi = xor i32 %i.fh, %i.ff
  %i.fj = xor i32 %i.fi, %i.fd                    ; 5 uses
  %i.fk = xor i32 %i.ez, %i.fc                    ; 3 uses
  %i.fl = tail call i32 @llvm.fshl.i32(i32 %i.fk, i32 %i.fk, i32 16)
  %i.fm = tail call i32 @llvm.bswap.i32(i32 %i.fa) ; 2 uses
  %i.fn = tail call i32 @llvm.fshl.i32(i32 %i.fm, i32 %i.fm, i32 16)
  %i.fo = xor i32 %i.fn, %i.ff                    ; 2 uses
  %i.fp = xor i32 %i.fj, %i.fk
  %i.fq = tail call i32 @llvm.bswap.i32(i32 %i.fp) ; 2 uses
  %i.fr = tail call i32 @llvm.fshl.i32(i32 %i.fq, i32 %i.fq, i32 16)
  %i.fs = tail call i32 @llvm.fshl.i32(i32 %i.fj, i32 %i.fj, i32 16)
  %i.ft = tail call i32 @llvm.bswap.i32(i32 %i.fj)
  %i.fu = tail call i32 @llvm.bswap.i32(i32 %i.fo)
  %i.fv = load i32, ptr %i.a, align 16, !tbaa !12
  %i.fw = xor i32 %i.fv, %i.fr
  %i.fx = xor i32 %i.fw, %i.fa
  store i32 %i.fx, ptr %i.x, align 16, !tbaa !12
  %i.fy = load i32, ptr %i.b, align 4, !tbaa !12
  %i.fz = xor i32 %i.fy, %i.fl
  %i.ga = xor i32 %i.fz, %i.bt
  %i.gb = xor i32 %i.ga, %i.fj
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !12
  %i.gd = load i32, ptr %i.c, align 8, !tbaa !12
  %i.ge = xor i32 %i.fu, %i.gd
  %i.gf = xor i32 %i.ge, %i.fs
  %i.gg = xor i32 %i.gf, %i.fd
  %i.gh = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 %i.gg, ptr %i.gh, align 8, !tbaa !12
  %i.gi = load i32, ptr %i.d, align 4, !tbaa !12
  %i.gj = xor i32 %i.ft, %i.gi
  %i.gk = xor i32 %i.gj, %i.fo
  %i.gl = xor i32 %i.gk, %i.fc
  %i.gm = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !12
  %i.gn = icmp samesign ult i32 %i.w, 2
  %i.go = add nuw nsw i32 %i.w, 1
  %i.gp = select i1 %i.gn, i32 %i.go, i32 0
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.gr = zext nneg i32 %i.gp to i64
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr @__const.mbedtls_aria_setkey_enc.rc, i64 %i.gr
  call fastcc void @aria_fo_xor(ptr noundef %i.gq, ptr noundef %i.x, ptr noundef %i.gs, ptr noundef %i.f)
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.e
  %indvars.iv = phi i64 [ 0, %.thread ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.gu = and i64 %indvars.iv.next, 3
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.gu ; 4 uses
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.gt, i64 %indvars.iv ; 16 uses
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 12
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !12
  %i.ha = tail call i32 @llvm.bswap.i32(i32 %i.gz) ; 8 uses
  %i.hb = load i32, ptr %i.gv, align 16, !tbaa !12
  %i.hc = tail call i32 @llvm.bswap.i32(i32 %i.hb) ; 8 uses
  %i.hd = tail call i32 @llvm.fshl.i32(i32 %i.ha, i32 %i.hc, i32 13)
  %i.he = tail call i32 @llvm.bswap.i32(i32 %i.hd)
  %i.hf = load i32, ptr %i.gx, align 16, !tbaa !12 ; 4 uses
  %i.hg = xor i32 %i.he, %i.hf
  store i32 %i.hg, ptr %i.gw, align 4, !tbaa !12
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !12
  %i.hj = tail call i32 @llvm.bswap.i32(i32 %i.hi) ; 8 uses
  %i.hk = tail call i32 @llvm.fshl.i32(i32 %i.hc, i32 %i.hj, i32 13)
  %i.hl = tail call i32 @llvm.bswap.i32(i32 %i.hk)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !12 ; 4 uses
  %i.ho = xor i32 %i.hl, %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  store i32 %i.ho, ptr %i.hp, align 4, !tbaa !12
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !12
  %i.hs = tail call i32 @llvm.bswap.i32(i32 %i.hr) ; 8 uses
  %i.ht = tail call i32 @llvm.fshl.i32(i32 %i.hj, i32 %i.hs, i32 13)
  %i.hu = tail call i32 @llvm.bswap.i32(i32 %i.ht)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !12 ; 4 uses
  %i.hx = xor i32 %i.hu, %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !12
  %i.hz = tail call i32 @llvm.fshl.i32(i32 %i.hs, i32 %i.ha, i32 13)
  %i.ia = tail call i32 @llvm.bswap.i32(i32 %i.hz)
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !12 ; 4 uses
  %i.id = xor i32 %i.ia, %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gw, i64 12
  store i32 %i.id, ptr %i.ie, align 4, !tbaa !12
  %i.if = getelementptr inbounds nuw i8, ptr %i.gw, i64 64
  %i.ig = tail call i32 @llvm.fshl.i32(i32 %i.ha, i32 %i.hc, i32 1)
  %i.ih = tail call i32 @llvm.bswap.i32(i32 %i.ig)
  %i.ii = xor i32 %i.ih, %i.hf
  store i32 %i.ii, ptr %i.if, align 4, !tbaa !12
  %i.ij = tail call i32 @llvm.fshl.i32(i32 %i.hc, i32 %i.hj, i32 1)
  %i.ik = tail call i32 @llvm.bswap.i32(i32 %i.ij)
  %i.il = xor i32 %i.ik, %i.hn
  %i.im = getelementptr inbounds nuw i8, ptr %i.gw, i64 68
  store i32 %i.il, ptr %i.im, align 4, !tbaa !12
  %i.in = tail call i32 @llvm.fshl.i32(i32 %i.hj, i32 %i.hs, i32 1)
  %i.io = tail call i32 @llvm.bswap.i32(i32 %i.in)
  %i.ip = xor i32 %i.io, %i.hw
  %i.iq = getelementptr inbounds nuw i8, ptr %i.gw, i64 72
  store i32 %i.ip, ptr %i.iq, align 4, !tbaa !12
  %i.ir = tail call i32 @llvm.fshl.i32(i32 %i.hs, i32 %i.ha, i32 1)
  %i.is = tail call i32 @llvm.bswap.i32(i32 %i.ir)
  %i.it = xor i32 %i.is, %i.ic
  %i.iu = getelementptr inbounds nuw i8, ptr %i.gw, i64 76
  store i32 %i.it, ptr %i.iu, align 4, !tbaa !12
  %i.iv = getelementptr inbounds nuw i8, ptr %i.gw, i64 128
  %i.iw = tail call i32 @llvm.fshl.i32(i32 %i.hj, i32 %i.hs, i32 29)
  %i.ix = tail call i32 @llvm.bswap.i32(i32 %i.iw)
  %i.iy = xor i32 %i.ix, %i.hf
  store i32 %i.iy, ptr %i.iv, align 4, !tbaa !12
  %i.iz = tail call i32 @llvm.fshl.i32(i32 %i.hs, i32 %i.ha, i32 29)
  %i.ja = tail call i32 @llvm.bswap.i32(i32 %i.iz)
  %i.jb = xor i32 %i.ja, %i.hn
  %i.jc = getelementptr inbounds nuw i8, ptr %i.gw, i64 132
  store i32 %i.jb, ptr %i.jc, align 4, !tbaa !12
  %i.jd = tail call i32 @llvm.fshl.i32(i32 %i.ha, i32 %i.hc, i32 29)
  %i.je = tail call i32 @llvm.bswap.i32(i32 %i.jd)
  %i.jf = xor i32 %i.hw, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %i.gw, i64 136
  store i32 %i.jf, ptr %i.jg, align 4, !tbaa !12
  %i.jh = tail call i32 @llvm.fshl.i32(i32 %i.hc, i32 %i.hj, i32 29)
  %i.ji = tail call i32 @llvm.bswap.i32(i32 %i.jh)
  %i.jj = xor i32 %i.ic, %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %i.gw, i64 140
  store i32 %i.jj, ptr %i.jk, align 4, !tbaa !12
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gw, i64 192
  %i.jm = tail call i32 @llvm.fshl.i32(i32 %i.hc, i32 %i.hj, i32 31)
  %i.jn = tail call i32 @llvm.bswap.i32(i32 %i.jm)
  %i.jo = xor i32 %i.jn, %i.hf
  store i32 %i.jo, ptr %i.jl, align 4, !tbaa !12
  %i.jp = tail call i32 @llvm.fshl.i32(i32 %i.hj, i32 %i.hs, i32 31)
  %i.jq = tail call i32 @llvm.bswap.i32(i32 %i.jp)
  %i.jr = xor i32 %i.jq, %i.hn
  %i.js = getelementptr inbounds nuw i8, ptr %i.gw, i64 196
  store i32 %i.jr, ptr %i.js, align 4, !tbaa !12
  %i.jt = tail call i32 @llvm.fshl.i32(i32 %i.hs, i32 %i.ha, i32 31)
  %i.ju = tail call i32 @llvm.bswap.i32(i32 %i.jt)
  %i.jv = xor i32 %i.ju, %i.hw
  %i.jw = getelementptr inbounds nuw i8, ptr %i.gw, i64 200
  store i32 %i.jv, ptr %i.jw, align 4, !tbaa !12
  %i.jx = tail call i32 @llvm.fshl.i32(i32 %i.ha, i32 %i.hc, i32 31)
  %i.jy = tail call i32 @llvm.bswap.i32(i32 %i.jx)
  %i.jz = xor i32 %i.ic, %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %i.gw, i64 204
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !12
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.f, label %bb.e, !llvm.loop !19

bb.f:                                             ; preds = %bb.e
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.kc = load i32, ptr %i.f, align 16, !tbaa !12
  %3 = tail call i32 @llvm.bswap.i32(i32 %i.kc)   ; 2 uses
  %i.kd = load i32, ptr %i.ad, align 4, !tbaa !12
  %4 = tail call i32 @llvm.bswap.i32(i32 %i.kd)   ; 2 uses
  %5 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %4, i32 19)
  %i.ke = tail call i32 @llvm.bswap.i32(i32 %5)
  %6 = load i32, ptr %i.ai, align 8, !tbaa !12
  %i.kf = tail call i32 @llvm.bswap.i32(i32 %6)   ; 2 uses
  %i.kg = tail call i32 @llvm.fshl.i32(i32 %4, i32 %i.kf, i32 19)
  %7 = tail call i32 @llvm.bswap.i32(i32 %i.kg)
  %8 = load i32, ptr %i.an, align 4, !tbaa !12
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)      ; 2 uses
  %10 = tail call i32 @llvm.fshl.i32(i32 %i.kf, i32 %9, i32 19)
  %i.kh = tail call i32 @llvm.bswap.i32(i32 %10)
  %11 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %3, i32 19)
  %i.ki = tail call i32 @llvm.bswap.i32(i32 %11)
  %i.kj = load <4 x i32>, ptr %i.a, align 16, !tbaa !12
  %i.kk = insertelement <4 x i32> poison, i32 %i.ke, i64 0
  %i.kl = insertelement <4 x i32> %i.kk, i32 %7, i64 1
  %i.km = insertelement <4 x i32> %i.kl, i32 %i.kh, i64 2
  %i.kn = insertelement <4 x i32> %i.km, i32 %i.ki, i64 3
  %i.ko = xor <4 x i32> %i.kn, %i.kj
  store <4 x i32> %i.ko, ptr %i.kb, align 4, !tbaa !12
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 64) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.046 = phi i32 [ 0, %bb.f ], [ -135, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.046
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @aria_fo_xor(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !12
  %i.b = load i32, ptr %2, align 4, !tbaa !12
  %i.c = xor i32 %i.b, %i.a                       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12
  %i.h = xor i32 %i.g, %i.e                       ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !12
  %i.m = xor i32 %i.l, %i.j                       ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !12
  %i.r = xor i32 %i.q, %i.o                       ; 4 uses
  %i.s = and i32 %i.c, 255
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @aria_sb1, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !15
  %i.w = zext i8 %i.v to i32
  %i.x = lshr i32 %i.c, 8
  %i.y = and i32 %i.x, 255
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @aria_sb2, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !15
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 8
  %i.ae = or disjoint i32 %i.ad, %i.w
  %i.af = lshr i32 %i.c, 16
  %i.ag = and i32 %i.af, 255
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @aria_is1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !15
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 16
  %i.am = or disjoint i32 %i.ae, %i.al
  %i.an = lshr i32 %i.c, 24
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @aria_is2, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !15
  %i.ar = zext i8 %i.aq to i32
  %i.as = shl nuw i32 %i.ar, 24
  %i.at = or disjoint i32 %i.am, %i.as            ; 3 uses
  %i.au = and i32 %i.h, 255
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @aria_sb1, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !15
  %i.ay = zext i8 %i.ax to i32
  %i.az = lshr i32 %i.h, 8
  %i.ba = and i32 %i.az, 255
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @aria_sb2, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !15
  %i.be = zext i8 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 8
  %i.bg = or disjoint i32 %i.bf, %i.ay
  %i.bh = lshr i32 %i.h, 16
  %i.bi = and i32 %i.bh, 255
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @aria_is1, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !15
  %i.bm = zext i8 %i.bl to i32
  %i.bn = shl nuw nsw i32 %i.bm, 16
  %i.bo = or disjoint i32 %i.bg, %i.bn
  %i.bp = lshr i32 %i.h, 24
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @aria_is2, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !15
  %i.bt = zext i8 %i.bs to i32
  %i.bu = shl nuw i32 %i.bt, 24
  %i.bv = or disjoint i32 %i.bo, %i.bu            ; 3 uses
  %i.bw = and i32 %i.m, 255
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @aria_sb1, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !15
  %i.ca = zext i8 %i.bz to i32
  %i.cb = lshr i32 %i.m, 8
  %i.cc = and i32 %i.cb, 255
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @aria_sb2, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !15
  %i.cg = zext i8 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 8
  %i.ci = or disjoint i32 %i.ch, %i.ca
  %i.cj = lshr i32 %i.m, 16
  %i.ck = and i32 %i.cj, 255
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr @aria_is1, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !15
  %i.co = zext i8 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 16
  %i.cq = or disjoint i32 %i.ci, %i.cp
  %i.cr = lshr i32 %i.m, 24
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr @aria_is2, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !15
  %i.cv = zext i8 %i.cu to i32
  %i.cw = shl nuw i32 %i.cv, 24
  %i.cx = or disjoint i32 %i.cq, %i.cw
  %i.cy = and i32 %i.r, 255
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr @aria_sb1, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !15
  %i.dc = zext i8 %i.db to i32
  %i.dd = lshr i32 %i.r, 8
  %i.de = and i32 %i.dd, 255
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr @aria_sb2, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !15
  %i.di = zext i8 %i.dh to i32
  %i.dj = shl nuw nsw i32 %i.di, 8
  %i.dk = or disjoint i32 %i.dj, %i.dc
  %i.dl = lshr i32 %i.r, 16
  %i.dm = and i32 %i.dl, 255
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr @aria_is1, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !15
  %i.dq = zext i8 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.dq, 16
  %i.ds = or disjoint i32 %i.dk, %i.dr
  %i.dt = lshr i32 %i.r, 24
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr @aria_is2, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !15
  %i.dx = zext i8 %i.dw to i32
  %i.dy = shl nuw i32 %i.dx, 24
  %i.dz = or disjoint i32 %i.ds, %i.dy            ; 2 uses
  %i.ea = tail call i32 @llvm.fshl.i32(i32 %i.bv, i32 %i.bv, i32 16) ; 2 uses
  %i.eb = tail call i32 @llvm.bswap.i32(i32 %i.cx) ; 2 uses
  %i.ec = tail call i32 @llvm.fshl.i32(i32 %i.eb, i32 %i.eb, i32 16) ; 3 uses
  %i.ed = tail call i32 @llvm.bswap.i32(i32 %i.dz) ; 2 uses
  %i.ee = xor i32 %i.ec, %i.bv
  %i.ef = tail call i32 @llvm.fshl.i32(i32 %i.at, i32 %i.at, i32 16) ; 2 uses
  %i.eg = tail call i32 @llvm.bswap.i32(i32 %i.ee) ; 2 uses
  %i.eh = tail call i32 @llvm.fshl.i32(i32 %i.eg, i32 %i.eg, i32 16)
  %i.ei = xor i32 %i.eh, %i.ef
  %i.ej = xor i32 %i.ei, %i.ed                    ; 5 uses
  %i.ek = xor i32 %i.dz, %i.ec                    ; 3 uses
  %i.el = tail call i32 @llvm.fshl.i32(i32 %i.ek, i32 %i.ek, i32 16)
  %i.em = tail call i32 @llvm.bswap.i32(i32 %i.ea) ; 2 uses
  %i.en = tail call i32 @llvm.fshl.i32(i32 %i.em, i32 %i.em, i32 16)
  %i.eo = xor i32 %i.en, %i.ef                    ; 2 uses
  %i.ep = xor i32 %i.ej, %i.ek
  %i.eq = tail call i32 @llvm.bswap.i32(i32 %i.ep) ; 2 uses
  %i.er = tail call i32 @llvm.fshl.i32(i32 %i.eq, i32 %i.eq, i32 16)
  %i.es = tail call i32 @llvm.fshl.i32(i32 %i.ej, i32 %i.ej, i32 16)
  %i.et = tail call i32 @llvm.bswap.i32(i32 %i.ej)
  %i.eu = tail call i32 @llvm.bswap.i32(i32 %i.eo)
  %i.ev = load i32, ptr %3, align 4, !tbaa !12
  %i.ew = xor i32 %i.ev, %i.er
  %i.ex = xor i32 %i.ew, %i.ea
  store i32 %i.ex, ptr %0, align 4, !tbaa !12
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !12
  %i.fa = xor i32 %i.ez, %i.el
  %i.fb = xor i32 %i.fa, %i.at
  %i.fc = xor i32 %i.fb, %i.ej
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !12
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !12
  %i.fg = xor i32 %i.eu, %i.ff
  %i.fh = xor i32 %i.fg, %i.es
  %i.fi = xor i32 %i.fh, %i.ed
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !12
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !12
  %i.fm = xor i32 %i.fl, %i.et
  %i.fn = xor i32 %i.fm, %i.eo
  %i.fo = xor i32 %i.fn, %i.ec
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !12
  ret void
end_hunk_0
