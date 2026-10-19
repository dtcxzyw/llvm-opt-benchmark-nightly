Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/lstm_x86_fma?download=true
inline.NumInlined: 28
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4ncnn12LSTM_x86_fma20create_pipeline_int8ERKNS_6OptionE:bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i64 0, ptr %i.co, align 8, !tbaa !25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.s, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cn, i8 0, i64 20, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %_ZN4ncnn3Mat7releaseEv.exit, %_ZN4ncnnL26lstm_transform_weight_int8ERKNS_3MatES2_S2_S2_S2_RS0_S3_S3_iiiiRKNS_6OptionE.exit
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

declare void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnn12LSTM_x86_fma15create_pipelineERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !43     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !43
  %i.h = load i32, ptr %0, align 4, !tbaa !43     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !43
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !43
  %i.k = load i32, ptr %i.a, align 4, !tbaa !43   ; 2 uses
  %.not410 = icmp sgt i32 %i.k, %i.j
  br i1 %.not410, label %._crit_edge412, label %.noexc231.lr.ph

.noexc231.lr.ph:                                  ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 304
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 348
  %i.n = load i32, ptr %i.m, align 4, !tbaa !63, !noalias !221
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !24, !noalias !221 ; 20 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 368
  %i.q = load i64, ptr %i.p, align 8, !tbaa !25, !noalias !221 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 320
  %i.s = load i64, ptr %i.r, align 8, !tbaa !57, !noalias !221 ; 29 uses
  %factor.op.mul = mul i64 %i.q, %i.s
  %i.t = sext i32 %i.n to i64                     ; 26 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 376
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 420
  %i.w = load i32, ptr %i.v, align 4, !tbaa !63, !noalias !222
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !24, !noalias !222
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 440
  %i.z = load i64, ptr %i.y, align 8, !tbaa !25, !noalias !222
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 392
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !57, !noalias !222 ; 2 uses
  %factor.op.mul413 = mul i64 %i.z, %i.ab
  %i.ac = sext i32 %i.w to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 276
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !63, !noalias !223
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !24, !noalias !223 ; 20 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 296
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !25, !noalias !223 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !57, !noalias !223 ; 29 uses
  %factor.op.mul415 = mul i64 %i.ai, %i.ak
  %i.al = sext i32 %i.af to i64                   ; 26 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 664
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 708
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !63, !noalias !224
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !24, !noalias !224 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 728
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !25, !noalias !224 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 680
  %i.at = load i64, ptr %i.as, align 8, !tbaa !57, !noalias !224 ; 6 uses
  %factor.op.mul417 = mul i64 %i.ar, %i.at
  %i.au = sext i32 %i.ao to i64                   ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 736
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !24, !noalias !225
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 800
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !25, !noalias !225
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 752
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !57, !noalias !225
  %factor.op.mul419 = mul i64 %i.ay, %i.ba
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 808
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 852
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !63, !noalias !226
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !24, !noalias !226 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 872
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !25, !noalias !226 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 824
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !57, !noalias !226 ; 6 uses
  %factor.op.mul421 = mul i64 %i.bg, %i.bi
  %i.bj = sext i32 %i.bd to i64                   ; 4 uses
  %i.bk = mul i64 %i.ab, %i.ac                    ; 3 uses
  %i.bl = shl i64 %i.bk, 1
  %i.bm = mul i64 %i.bk, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 220
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !45 ; 6 uses
  %i.bp = icmp sgt i32 %i.bo, 1
  %i.bq = mul i64 %i.s, %i.t                      ; 12 uses
  %i.br = shl i32 %i.bo, 1                        ; 2 uses
  %i.bs = mul i32 %i.bo, 3                        ; 2 uses
  %i.bt = mul i64 %i.ak, %i.al                    ; 12 uses
  %i.bu = mul i64 %i.at, %i.au                    ; 2 uses
  %i.bv = mul i64 %i.bi, %i.bj                    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  %i.bx = sext i32 %i.bo to i64                   ; 8 uses
  %i.by = zext nneg i32 %i.bs to i64
  %i.bz = zext nneg i32 %i.br to i64
  %i.ca = zext i32 %i.bo to i64                   ; 18 uses
  %i.cb = zext i32 %i.br to i64                   ; 13 uses
  %i.cc = zext i32 %i.bs to i64                   ; 13 uses
  %i.cd = sext i32 %i.k to i64                    ; 7 uses
  %i.ce = add nsw i32 %i.j, 1
  %invariant.op = add nsw i64 %i.bx, -1
  %i.cf = mul i64 %i.bi, %i.bj
  %i.cg = mul i64 %i.ak, %i.al
  %i.ch = add nuw nsw i64 %i.ca, %i.cc
  %i.ci = add nsw i64 %i.ch, -1
  %i.cj = mul i64 %i.ci, %i.al
  %i.ck = mul i64 %i.ai, %i.cd                    ; 4 uses
  %i.cl = add i64 %i.cj, %i.ck
  %i.cm = mul i64 %i.ak, %i.cl
  %i.cn = mul i64 %i.ai, %i.ak
  %i.co = mul i64 %i.ak, %i.al
  %i.cp = mul i64 %i.ak, %i.al
  %i.cq = add nuw nsw i64 %i.ca, %i.cb
  %i.cr = add nsw i64 %i.cq, -1
  %i.cs = mul i64 %i.cr, %i.al
  %i.ct = add i64 %i.cs, %i.ck
  %i.cu = mul i64 %i.ak, %i.ct
  %i.cv = mul i64 %i.ak, %i.al
  %i.cw = add nsw i64 %i.bx, %i.ca
  %i.cx = add nsw i64 %i.cw, -1
  %i.cy = mul i64 %i.cx, %i.al
  %i.cz = add i64 %i.cy, %i.ck
  %i.da = mul i64 %i.ak, %i.cz
  %i.db = mul i64 %i.ak, %i.al
  %i.dc = add nsw i64 %i.ca, -1
  %i.dd = mul i64 %i.dc, %i.al
  %i.de = add i64 %i.dd, %i.ck
  %i.df = mul i64 %i.ak, %i.de
  %i.dg = mul i64 %i.at, %i.au
  %i.dh = mul i64 %i.s, %i.t
  %i.di = add nuw nsw i64 %i.ca, %i.cc
  %i.dj = add nsw i64 %i.di, -1
  %i.dk = mul i64 %i.dj, %i.t
  %i.dl = mul i64 %i.q, %i.cd                     ; 4 uses
  %i.dm = add i64 %i.dk, %i.dl
  %i.dn = mul i64 %i.s, %i.dm
  %i.do = mul i64 %i.q, %i.s
  %i.dp = mul i64 %i.s, %i.t
  %i.dq = mul i64 %i.s, %i.t
  %i.dr = add nuw nsw i64 %i.ca, %i.cb
  %i.ds = add nsw i64 %i.dr, -1
  %i.dt = mul i64 %i.ds, %i.t
  %i.du = add i64 %i.dt, %i.dl
  %i.dv = mul i64 %i.s, %i.du
  %i.dw = mul i64 %i.s, %i.t
  %i.dx = add nsw i64 %i.bx, %i.ca
  %i.dy = add nsw i64 %i.dx, -1
  %i.dz = mul i64 %i.dy, %i.t
  %i.ea = add i64 %i.dz, %i.dl
  %i.eb = mul i64 %i.s, %i.ea
  %i.ec = mul i64 %i.s, %i.t
  %i.ed = add nsw i64 %i.ca, -1
  %i.ee = mul i64 %i.ed, %i.t
  %i.ef = add i64 %i.ee, %i.dl
  %i.eg = mul i64 %i.s, %i.ef
  %i.eh = add nsw i64 %i.bx, -2                   ; 4 uses
  %i.ei = lshr i64 %i.eh, 1                       ; 2 uses
  %i.ej = mul i64 %i.ei, %i.bj
  %i.ek = mul i64 %i.bg, %i.cd
  %i.el = add i64 %i.ej, %i.ek
  %i.em = mul i64 %i.bi, %i.el
  %i.en = mul i64 %i.bg, %i.bi
  %i.eo = mul i64 %i.bi, %i.bj
  %i.ep = add nuw nsw i64 %i.cc, 1
  %i.eq = mul i64 %i.ep, %i.al
  %i.er = mul i64 %i.ai, %i.cd                    ; 15 uses
  %i.es = add i64 %i.eq, %i.er
  %i.et = mul i64 %i.ak, %i.es
  %i.eu = mul i64 %i.ai, %i.ak
  %i.ev = and i64 %i.eh, -2                       ; 5 uses
  %i.ew = add nsw i64 %i.ev, %i.cc
  %i.ex = add nsw i64 %i.ew, 1
  %i.ey = mul i64 %i.ex, %i.al
  %i.ez = add i64 %i.ey, %i.er
  %i.fa = mul i64 %i.ak, %i.ez
  %i.fb = mul i64 %i.ak, %i.al
  %5 = shl i64 %i.fb, 1
  %i.fc = or disjoint i64 %i.cb, 1
  %i.fd = mul nsw i64 %i.fc, %i.al
  %i.fe = add i64 %i.fd, %i.er
  %i.ff = mul i64 %i.ak, %i.fe
  %i.fg = add nsw i64 %i.eh, %i.cb
  %i.fh = or i64 %i.fg, 1
  %i.fi = mul i64 %i.fh, %i.al
  %i.fj = add i64 %i.fi, %i.er
  %i.fk = mul i64 %i.ak, %i.fj
  %i.fl = add nuw nsw i64 %i.ca, 1
  %i.fm = mul i64 %i.fl, %i.al
  %i.fn = add i64 %i.fm, %i.er
  %i.fo = mul i64 %i.ak, %i.fn
  %i.fp = add nsw i64 %i.ev, %i.ca
  %i.fq = add nsw i64 %i.fp, 1
  %i.fr = mul i64 %i.fq, %i.al
  %i.fs = add i64 %i.fr, %i.er
  %i.ft = mul i64 %i.ak, %i.fs
  %i.fu = add i64 %i.er, %i.al
  %i.fv = mul i64 %i.ak, %i.fu
  %i.fw = or i64 %i.eh, 1
  %i.fx = mul i64 %i.fw, %i.al
  %i.fy = add i64 %i.fx, %i.er
  %i.fz = mul i64 %i.ak, %i.fy
  %i.ga = mul nsw i64 %i.al, %i.cc
  %i.gb = add i64 %i.er, %i.ga
  %i.gc = mul i64 %i.ak, %i.gb
  %i.gd = add nsw i64 %i.ev, %i.cc
  %i.ge = mul i64 %i.gd, %i.al
  %i.gf = add i64 %i.ge, %i.er
  %i.gg = mul i64 %i.ak, %i.gf
  %i.gh = mul nsw i64 %i.al, %i.cb
  %i.gi = add i64 %i.er, %i.gh
  %i.gj = mul i64 %i.ak, %i.gi
  %i.gk = add nsw i64 %i.ev, %i.cb
  %i.gl = mul i64 %i.gk, %i.al
  %i.gm = add i64 %i.gl, %i.er
  %i.gn = mul i64 %i.ak, %i.gm
  %i.go = mul nsw i64 %i.al, %i.ca
  %i.gp = add i64 %i.er, %i.go
  %i.gq = mul i64 %i.ak, %i.gp
  %i.gr = add nsw i64 %i.ev, %i.ca
  %i.gs = mul i64 %i.gr, %i.al
  %i.gt = add i64 %i.gs, %i.er
  %i.gu = mul i64 %i.ak, %i.gt
  %i.gv = mul i64 %i.ei, %i.al
  %i.gw = shl i64 %i.gv, 1
  %i.gx = add i64 %i.gw, %i.er
  %i.gy = mul i64 %i.ak, %i.gx
  %i.gz = add nsw i64 %i.bx, -2                   ; 4 uses
  %i.ha = lshr i64 %i.gz, 1                       ; 2 uses
  %i.hb = mul i64 %i.ha, %i.au
  %i.hc = mul i64 %i.ar, %i.cd
  %i.hd = add i64 %i.hb, %i.hc
  %i.he = mul i64 %i.at, %i.hd
  %i.hf = mul i64 %i.ar, %i.at
  %i.hg = mul i64 %i.at, %i.au
  %i.hh = add nuw nsw i64 %i.cc, 1
  %i.hi = mul i64 %i.hh, %i.t
  %i.hj = mul i64 %i.q, %i.cd                     ; 15 uses
  %i.hk = add i64 %i.hi, %i.hj
  %i.hl = mul i64 %i.s, %i.hk
  %i.hm = mul i64 %i.q, %i.s
  %i.hn = and i64 %i.gz, -2                       ; 5 uses
  %i.ho = add nsw i64 %i.hn, %i.cc
  %i.hp = add nsw i64 %i.ho, 1
  %i.hq = mul i64 %i.hp, %i.t
  %i.hr = add i64 %i.hq, %i.hj
  %i.hs = mul i64 %i.s, %i.hr
  %i.ht = mul i64 %i.s, %i.t
  %6 = shl i64 %i.ht, 1
  %i.hu = or disjoint i64 %i.cb, 1
  %i.hv = mul nsw i64 %i.hu, %i.t
  %i.hw = add i64 %i.hv, %i.hj
  %i.hx = mul i64 %i.s, %i.hw
  %i.hy = add nsw i64 %i.gz, %i.cb
  %i.hz = or i64 %i.hy, 1
  %i.ia = mul i64 %i.hz, %i.t
  %i.ib = add i64 %i.ia, %i.hj
  %i.ic = mul i64 %i.s, %i.ib
  %i.id = add nuw nsw i64 %i.ca, 1
  %i.ie = mul i64 %i.id, %i.t
  %i.if = add i64 %i.ie, %i.hj
  %i.ig = mul i64 %i.s, %i.if
  %i.ih = add nsw i64 %i.hn, %i.ca
  %i.ii = add nsw i64 %i.ih, 1
  %i.ij = mul i64 %i.ii, %i.t
  %i.ik = add i64 %i.ij, %i.hj
  %i.il = mul i64 %i.s, %i.ik
  %i.im = add i64 %i.hj, %i.t
  %i.in = mul i64 %i.s, %i.im
  %i.io = or i64 %i.gz, 1
  %i.ip = mul i64 %i.io, %i.t
  %i.iq = add i64 %i.ip, %i.hj
  %i.ir = mul i64 %i.s, %i.iq
  %i.is = mul nsw i64 %i.t, %i.cc
  %i.it = add i64 %i.hj, %i.is
  %i.iu = mul i64 %i.s, %i.it
  %i.iv = add nsw i64 %i.hn, %i.cc
  %i.iw = mul i64 %i.iv, %i.t
  %i.ix = add i64 %i.iw, %i.hj
  %i.iy = mul i64 %i.s, %i.ix
  %i.iz = mul nsw i64 %i.t, %i.cb
  %i.ja = add i64 %i.hj, %i.iz
  %i.jb = mul i64 %i.s, %i.ja
  %i.jc = add nsw i64 %i.hn, %i.cb
  %i.jd = mul i64 %i.jc, %i.t
  %i.je = add i64 %i.jd, %i.hj
  %i.jf = mul i64 %i.s, %i.je
  %i.jg = mul nsw i64 %i.t, %i.ca
  %i.jh = add i64 %i.hj, %i.jg
  %i.ji = mul i64 %i.s, %i.jh
  %i.jj = add nsw i64 %i.hn, %i.ca
  %i.jk = mul i64 %i.jj, %i.t
  %i.jl = add i64 %i.jk, %i.hj
  %i.jm = mul i64 %i.s, %i.jl
  %i.jn = mul i64 %i.ha, %i.t
  %i.jo = shl i64 %i.jn, 1
  %i.jp = add i64 %i.jo, %i.hj
  %i.jq = mul i64 %i.s, %i.jp
  %i.jr = getelementptr i8, ptr %i.o, i64 %i.hl
  %i.js = getelementptr i8, ptr %i.o, i64 %i.hx
  %i.jt = getelementptr i8, ptr %i.o, i64 %i.ig
  %i.ju = getelementptr i8, ptr %i.o, i64 %i.in
  %i.jv = getelementptr i8, ptr %i.o, i64 %i.iu
  %i.jw = getelementptr i8, ptr %i.o, i64 %i.jb
  %i.jx = getelementptr i8, ptr %i.o, i64 %i.ji
  %i.jy = getelementptr i8, ptr %i.ag, i64 %i.et
  %i.jz = getelementptr i8, ptr %i.ag, i64 %i.ff
  %i.ka = getelementptr i8, ptr %i.ag, i64 %i.fo
  %i.kb = getelementptr i8, ptr %i.ag, i64 %i.fv
  %i.kc = getelementptr i8, ptr %i.ag, i64 %i.gc
  %i.kd = getelementptr i8, ptr %i.ag, i64 %i.gj
  %i.ke = getelementptr i8, ptr %i.ag, i64 %i.gq
  %i.kf = getelementptr i8, ptr %i.o, i64 %i.dn
  %i.kg = getelementptr i8, ptr %i.o, i64 %i.dv
  %i.kh = getelementptr i8, ptr %i.o, i64 %i.eb
  %i.ki = getelementptr i8, ptr %i.o, i64 %i.eg
  %i.kj = getelementptr i8, ptr %i.ag, i64 %i.cm
  %i.kk = getelementptr i8, ptr %i.ag, i64 %i.cu
  %i.kl = getelementptr i8, ptr %i.ag, i64 %i.da
  %i.km = getelementptr i8, ptr %i.ag, i64 %i.df
  %i.kn = getelementptr i8, ptr %i.ag, i64 %i.gy
  %i.ko = getelementptr i8, ptr %i.ag, i64 %i.gu
  %i.kp = getelementptr i8, ptr %i.ag, i64 %i.gn
  %i.kq = getelementptr i8, ptr %i.ag, i64 %i.gg
  %i.kr = getelementptr i8, ptr %i.ag, i64 %i.fz
  %i.ks = getelementptr i8, ptr %i.ag, i64 %i.ft
  %i.kt = getelementptr i8, ptr %i.ag, i64 %i.fk
  %i.ku = getelementptr i8, ptr %i.ag, i64 %i.fa
  %i.kv = getelementptr i8, ptr %i.be, i64 %i.em
  %i.kw = getelementptr i8, ptr %i.o, i64 %i.jq
  %i.kx = getelementptr i8, ptr %i.o, i64 %i.jm
  %i.ky = getelementptr i8, ptr %i.o, i64 %i.jf
  %i.kz = getelementptr i8, ptr %i.o, i64 %i.iy
  %i.la = getelementptr i8, ptr %i.o, i64 %i.ir
  %i.lb = getelementptr i8, ptr %i.o, i64 %i.il
  %i.lc = getelementptr i8, ptr %i.o, i64 %i.ic
  %i.ld = getelementptr i8, ptr %i.o, i64 %i.hs
  %i.le = getelementptr i8, ptr %i.ap, i64 %i.he
  %7 = or i64 %6, %i.hg
  %i.lf = icmp slt i64 %7, 0
  %8 = or i64 %5, %i.eo
  %9 = icmp slt i64 %8, 0
  %stride.check513 = icmp slt i64 %i.dp, 0
  %stride.check476 = icmp slt i64 %i.co, 0
  br label %.noexc231

.noexc231:                                        ; preds = %.noexc231.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvar460 = phi i64 [ 0, %.noexc231.lr.ph ], [ %indvar.next461, %_ZN4ncnn3MatD2Ev.exit ] ; 7 uses
  %indvars.iv448 = phi i64 [ %i.cd, %.noexc231.lr.ph ], [ %indvars.iv.next449, %_ZN4ncnn3MatD2Ev.exit ] ; 7 uses
  %i.lg = mul i64 %i.hm, %indvar460               ; 15 uses
  %scevgep639.a = getelementptr i8, ptr %i.jr, i64 %i.lg
  %scevgep642 = getelementptr i8, ptr %i.js, i64 %i.lg
  %scevgep645 = getelementptr i8, ptr %i.jt, i64 %i.lg
  %scevgep648 = getelementptr i8, ptr %i.ju, i64 %i.lg
  %scevgep651 = getelementptr i8, ptr %i.jv, i64 %i.lg
  %scevgep654 = getelementptr i8, ptr %i.jw, i64 %i.lg
  %scevgep657 = getelementptr i8, ptr %i.jx, i64 %i.lg
  %i.lh = mul i64 %i.eu, %indvar460               ; 15 uses
  %scevgep545.a = getelementptr i8, ptr %i.jy, i64 %i.lh
  %scevgep548.a = getelementptr i8, ptr %i.jz, i64 %i.lh
  %scevgep551.a = getelementptr i8, ptr %i.ka, i64 %i.lh
  %scevgep554.a = getelementptr i8, ptr %i.kb, i64 %i.lh
  %scevgep557.a = getelementptr i8, ptr %i.kc, i64 %i.lh
  %scevgep560.a = getelementptr i8, ptr %i.kd, i64 %i.lh
  %scevgep563 = getelementptr i8, ptr %i.ke, i64 %i.lh
  %i.li = mul i64 %i.do, %indvar460               ; 4 uses
  %scevgep495.a = getelementptr i8, ptr %i.kf, i64 %i.li
  %scevgep498.a = getelementptr i8, ptr %i.kg, i64 %i.li
  %scevgep501.a = getelementptr i8, ptr %i.kh, i64 %i.li
  %scevgep504 = getelementptr i8, ptr %i.ki, i64 %i.li
  %i.lj = mul i64 %i.cn, %indvar460               ; 4 uses
  %scevgep462 = getelementptr i8, ptr %i.kj, i64 %i.lj
  %scevgep465 = getelementptr i8, ptr %i.kk, i64 %i.lj
  %scevgep468 = getelementptr i8, ptr %i.kl, i64 %i.lj
  %scevgep471 = getelementptr i8, ptr %i.km, i64 %i.lj
  %.reass = mul i64 %factor.op.mul, %indvars.iv448
  %i.lk = getelementptr i8, ptr %i.o, i64 %.reass ; 17 uses
  %.reass414 = mul i64 %factor.op.mul413, %indvars.iv448
  %i.ll = getelementptr inbounds nuw i8, ptr %i.x, i64 %.reass414 ; 6 uses
  %.reass416 = mul i64 %factor.op.mul415, %indvars.iv448
  %i.lm = getelementptr i8, ptr %i.ag, i64 %.reass416 ; 17 uses
  %.reass418 = mul i64 %factor.op.mul417, %indvars.iv448
  %i.ln = getelementptr i8, ptr %i.ap, i64 %.reass418 ; 11 uses
  %.reass420 = mul i64 %factor.op.mul419, %indvars.iv448
  %i.lo = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.reass420 ; 2 uses
  %.reass422 = mul i64 %factor.op.mul421, %indvars.iv448
  %i.lp = getelementptr i8, ptr %i.be, i64 %.reass422 ; 11 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.bk ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.bl ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.bm ; 3 uses
  br i1 %i.bp, label %.lr.ph396, label %.preheader388

.lr.ph396:                                        ; preds = %.noexc231
  %scevgep566 = getelementptr i8, ptr %i.kn, i64 %i.lh
  %scevgep564 = getelementptr i8, ptr %i.ko, i64 %i.lh
  %scevgep561.a = getelementptr i8, ptr %i.kp, i64 %i.lh
  %scevgep558 = getelementptr i8, ptr %i.kq, i64 %i.lh
  %scevgep555 = getelementptr i8, ptr %i.kr, i64 %i.lh
  %scevgep552 = getelementptr i8, ptr %i.ks, i64 %i.lh
  %scevgep549 = getelementptr i8, ptr %i.kt, i64 %i.lh
  %scevgep546 = getelementptr i8, ptr %i.ku, i64 %i.lh
  %i.lt = mul i64 %i.en, %indvar460
  %scevgep543 = getelementptr i8, ptr %i.kv, i64 %i.lt
  %scevgep660 = getelementptr i8, ptr %i.kw, i64 %i.lg
  %scevgep658 = getelementptr i8, ptr %i.kx, i64 %i.lg
  %scevgep655 = getelementptr i8, ptr %i.ky, i64 %i.lg
  %scevgep652 = getelementptr i8, ptr %i.kz, i64 %i.lg
  %scevgep649 = getelementptr i8, ptr %i.la, i64 %i.lg
  %scevgep646 = getelementptr i8, ptr %i.lb, i64 %i.lg
  %scevgep643 = getelementptr i8, ptr %i.lc, i64 %i.lg
  %scevgep640 = getelementptr i8, ptr %i.ld, i64 %i.lg
  %i.lu = mul i64 %i.hf, %indvar460
  %scevgep637 = getelementptr i8, ptr %i.le, i64 %i.lu
  %i.lv = load i32, ptr %4, align 4, !tbaa !43    ; 3 uses
  %i.lw = icmp sgt i32 %i.lv, 0
  %i.lx = load i32, ptr %i.bw, align 8, !tbaa !46 ; 3 uses
  %i.ly = icmp sgt i32 %i.lx, 0
  %wide.trip.count = zext i32 %i.lv to i64        ; 5 uses
  %wide.trip.count428 = zext i32 %i.lx to i64     ; 5 uses
  %i.lz = shl nuw nsw i64 %wide.trip.count428, 5
  %scevgep544.a = getelementptr i8, ptr %scevgep543, i64 %i.lz ; 8 uses
  %i.ma = shl nuw nsw i64 %wide.trip.count428, 2  ; 8 uses
  %scevgep547.a = getelementptr i8, ptr %scevgep546, i64 %i.ma
  %scevgep550.a = getelementptr i8, ptr %scevgep549, i64 %i.ma
  %scevgep553.a = getelementptr i8, ptr %scevgep552, i64 %i.ma
  %scevgep556.a = getelementptr i8, ptr %scevgep555, i64 %i.ma
  %scevgep559.a = getelementptr i8, ptr %scevgep558, i64 %i.ma
  %scevgep562 = getelementptr i8, ptr %scevgep561.a, i64 %i.ma
  %scevgep565 = getelementptr i8, ptr %scevgep564, i64 %i.ma
  %scevgep567 = getelementptr i8, ptr %scevgep566, i64 %i.ma
  %i.mb = shl nuw nsw i64 %wide.trip.count, 5
  %scevgep638 = getelementptr i8, ptr %scevgep637, i64 %i.mb ; 8 uses
  %i.mc = shl nuw nsw i64 %wide.trip.count, 2     ; 8 uses
  %scevgep641.a = getelementptr i8, ptr %scevgep640, i64 %i.mc
  %scevgep644 = getelementptr i8, ptr %scevgep643, i64 %i.mc
  %scevgep647 = getelementptr i8, ptr %scevgep646, i64 %i.mc
  %scevgep650 = getelementptr i8, ptr %scevgep649, i64 %i.mc
  %scevgep653 = getelementptr i8, ptr %scevgep652, i64 %i.mc
  %scevgep656 = getelementptr i8, ptr %scevgep655, i64 %i.mc
  %scevgep659 = getelementptr i8, ptr %scevgep658, i64 %i.mc
  %scevgep661 = getelementptr i8, ptr %scevgep660, i64 %i.mc
  %min.iters.check710 = icmp ult i32 %i.lv, 24
  %bound0662 = icmp ult ptr %i.ln, %scevgep641.a
  %bound1663 = icmp ult ptr %scevgep639.a, %scevgep638
  %found.conflict664 = and i1 %bound0662, %bound1663
  %bound0667.a = icmp ult ptr %i.ln, %scevgep644
  %bound1668.a = icmp ult ptr %scevgep642, %scevgep638
  %found.conflict669.a = and i1 %bound0667.a, %bound1668.a
  %bound0673 = icmp ult ptr %i.ln, %scevgep647
  %bound1674 = icmp ult ptr %scevgep645, %scevgep638
  %found.conflict675 = and i1 %bound0673, %bound1674
  %bound0679 = icmp ult ptr %i.ln, %scevgep650
  %bound1680 = icmp ult ptr %scevgep648, %scevgep638
  %found.conflict681 = and i1 %bound0679, %bound1680
  %bound0685 = icmp ult ptr %i.ln, %scevgep653
  %bound1686 = icmp ult ptr %scevgep651, %scevgep638
  %found.conflict687 = and i1 %bound0685, %bound1686
  %bound0691 = icmp ult ptr %i.ln, %scevgep656
  %bound1692 = icmp ult ptr %scevgep654, %scevgep638
  %found.conflict693 = and i1 %bound0691, %bound1692
  %bound0697 = icmp ult ptr %i.ln, %scevgep659
  %bound1698 = icmp ult ptr %scevgep657, %scevgep638
  %found.conflict699 = and i1 %bound0697, %bound1698
  %bound0703 = icmp ult ptr %i.ln, %scevgep661
  %bound1704 = icmp ult ptr %i.lk, %scevgep638
  %found.conflict705 = and i1 %bound0703, %bound1704
  %op.rdx737 = or i1 %i.lf, %found.conflict664
  %op.rdx738 = or i1 %found.conflict669.a, %found.conflict675
  %op.rdx739 = or i1 %found.conflict681, %found.conflict687
  %op.rdx740 = or i1 %found.conflict693, %found.conflict699
  %op.rdx741 = or i1 %op.rdx737, %op.rdx738
  %op.rdx742 = or i1 %op.rdx739, %op.rdx740
  %op.rdx743 = or i1 %op.rdx741, %op.rdx742
  %op.rdx744 = or i1 %op.rdx743, %found.conflict705
  %n.vec712 = and i64 %wide.trip.count, 2147483640 ; 4 uses
  %i.md = shl nuw nsw i64 %n.vec712, 5
  %cmp.n727 = icmp eq i64 %n.vec712, %wide.trip.count
  %min.iters.check616 = icmp ult i32 %i.lx, 24
  %bound0568 = icmp ult ptr %i.lp, %scevgep547.a
  %bound1569 = icmp ult ptr %scevgep545.a, %scevgep544.a
  %found.conflict570 = and i1 %bound0568, %bound1569
  %bound0573 = icmp ult ptr %i.lp, %scevgep550.a
  %bound1574 = icmp ult ptr %scevgep548.a, %scevgep544.a
  %found.conflict575 = and i1 %bound0573, %bound1574
  %bound0579 = icmp ult ptr %i.lp, %scevgep553.a
  %bound1580.a = icmp ult ptr %scevgep551.a, %scevgep544.a
  %found.conflict581 = and i1 %bound0579, %bound1580.a
  %bound0585 = icmp ult ptr %i.lp, %scevgep556.a
  %bound1586 = icmp ult ptr %scevgep554.a, %scevgep544.a
  %found.conflict587 = and i1 %bound0585, %bound1586
  %bound0591.a = icmp ult ptr %i.lp, %scevgep559.a
  %bound1592.a = icmp ult ptr %scevgep557.a, %scevgep544.a
  %found.conflict593.a = and i1 %bound0591.a, %bound1592.a
  %bound0597 = icmp ult ptr %i.lp, %scevgep562
  %bound1598 = icmp ult ptr %scevgep560.a, %scevgep544.a
  %found.conflict599 = and i1 %bound0597, %bound1598
  %bound0603 = icmp ult ptr %i.lp, %scevgep565
  %bound1604 = icmp ult ptr %scevgep563, %scevgep544.a
  %found.conflict605 = and i1 %bound0603, %bound1604
  %bound0609 = icmp ult ptr %i.lp, %scevgep567
  %bound1610 = icmp ult ptr %i.lm, %scevgep544.a
  %found.conflict611 = and i1 %bound0609, %bound1610
  %op.rdx = or i1 %9, %found.conflict570
  %op.rdx730 = or i1 %found.conflict575, %found.conflict581
  %op.rdx731 = or i1 %found.conflict587, %found.conflict593.a
  %op.rdx732 = or i1 %found.conflict599, %found.conflict605
  %op.rdx733 = or i1 %op.rdx, %op.rdx730
  %op.rdx734 = or i1 %op.rdx731, %op.rdx732
  %op.rdx735 = or i1 %op.rdx733, %op.rdx734
  %op.rdx736 = or i1 %op.rdx735, %found.conflict611
  %n.vec618 = and i64 %wide.trip.count428, 2147483640 ; 4 uses
  %i.me = shl nuw nsw i64 %n.vec618, 5
  %cmp.n633 = icmp eq i64 %n.vec618, %wide.trip.count428
  br label %bb.c

.preheader388.loopexit:                           ; preds = %._crit_edge
  %i.mf = trunc nuw nsw i64 %indvars.iv.next431 to i32
  br label %.preheader388

.preheader388:                                    ; preds = %.preheader388.loopexit, %.noexc231
  %.0182.lcssa = phi ptr [ %i.lo, %.noexc231 ], [ %i.og, %.preheader388.loopexit ]
  %.0181.lcssa = phi i32 [ 0, %.noexc231 ], [ %i.mf, %.preheader388.loopexit ] ; 6 uses
  %i.mg = icmp slt i32 %.0181.lcssa, %i.bo
  br i1 %i.mg, label %.lr.ph409, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph409:                                        ; preds = %.preheader388
  %i.mh = load i32, ptr %4, align 4, !tbaa !43    ; 3 uses
  %i.mi = icmp sgt i32 %i.mh, 0
  %i.mj = load i32, ptr %i.bw, align 8, !tbaa !46 ; 3 uses
  %i.mk = icmp sgt i32 %i.mj, 0
  %i.ml = zext i32 %.0181.lcssa to i64            ; 9 uses
  %wide.trip.count436 = zext i32 %i.mh to i64     ; 7 uses
  %wide.trip.count441 = zext i32 %i.mj to i64     ; 7 uses
  %i.mm = shl nuw nsw i64 %wide.trip.count441, 4
  %scevgep = getelementptr i8, ptr %i.lp, i64 %i.mm
  %i.mn = add nuw nsw i64 %i.cc, %i.ml
  %i.mo = mul i64 %i.cg, %i.mn
  %scevgep459 = getelementptr i8, ptr %i.lm, i64 %i.mo
  %i.mp = shl nuw nsw i64 %wide.trip.count441, 2  ; 4 uses
  %scevgep463 = getelementptr i8, ptr %scevgep462, i64 %i.mp
  %i.mq = add nuw nsw i64 %i.cb, %i.ml
  %i.mr = mul i64 %i.cp, %i.mq
  %scevgep464 = getelementptr i8, ptr %i.lm, i64 %i.mr
  %scevgep466 = getelementptr i8, ptr %scevgep465, i64 %i.mp
  %i.ms = add nsw i64 %i.bx, %i.ml
  %i.mt = mul i64 %i.cv, %i.ms
  %scevgep467 = getelementptr i8, ptr %i.lm, i64 %i.mt
  %scevgep469 = getelementptr i8, ptr %scevgep468, i64 %i.mp
  %i.mu = mul i64 %i.db, %i.ml
  %scevgep470 = getelementptr i8, ptr %i.lm, i64 %i.mu
  %scevgep472 = getelementptr i8, ptr %scevgep471, i64 %i.mp
  %i.mv = shl nuw nsw i64 %wide.trip.count436, 4
  %scevgep492 = getelementptr i8, ptr %i.ln, i64 %i.mv
  %i.mw = add nuw nsw i64 %i.cc, %i.ml
  %i.mx = mul i64 %i.dh, %i.mw
  %scevgep494.a = getelementptr i8, ptr %i.lk, i64 %i.mx
  %i.my = shl nuw nsw i64 %wide.trip.count436, 2  ; 4 uses
  %scevgep496.a = getelementptr i8, ptr %scevgep495.a, i64 %i.my
  %i.mz = add nuw nsw i64 %i.cb, %i.ml
  %i.na = mul i64 %i.dq, %i.mz
  %scevgep497.a = getelementptr i8, ptr %i.lk, i64 %i.na
  %scevgep499.a = getelementptr i8, ptr %scevgep498.a, i64 %i.my
  %i.nb = add nsw i64 %i.bx, %i.ml
  %i.nc = mul i64 %i.dw, %i.nb
  %scevgep500.a = getelementptr i8, ptr %i.lk, i64 %i.nc
  %scevgep502.a = getelementptr i8, ptr %scevgep501.a, i64 %i.my
  %i.nd = mul i64 %i.ec, %i.ml
  %scevgep503 = getelementptr i8, ptr %i.lk, i64 %i.nd
  %scevgep505 = getelementptr i8, ptr %scevgep504, i64 %i.my
  %min.iters.check526 = icmp ult i32 %i.mh, 16
  %n.vec528 = and i64 %wide.trip.count436, 2147483640 ; 4 uses
  %i.ne = shl nuw nsw i64 %n.vec528, 4
  %cmp.n539 = icmp eq i64 %n.vec528, %wide.trip.count436
  %xtraiter = and i64 %wide.trip.count436, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.nf = add nsw i64 %wide.trip.count436, -1
  %min.iters.check = icmp ult i32 %i.mj, 16
  %n.vec = and i64 %wide.trip.count441, 2147483640 ; 4 uses
  %i.ng = shl nuw nsw i64 %n.vec, 4
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count441
  %xtraiter749 = and i64 %wide.trip.count441, 1
  %lcmp.mod750.not = icmp eq i64 %xtraiter749, 0
  %i.nh = add nsw i64 %wide.trip.count441, -1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph396, %._crit_edge
  %indvars.iv430 = phi i64 [ 0, %.lr.ph396 ], [ %indvars.iv.next431, %._crit_edge ] ; 12 uses
  %.0182394 = phi ptr [ %i.lo, %.lr.ph396 ], [ %i.og, %._crit_edge ] ; 9 uses
  %i.ni = or disjoint i64 %indvars.iv430, 1       ; 6 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv430
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !61
  store float %i.nk, ptr %.0182394, align 4, !tbaa !61
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %indvars.iv430
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !61
  %i.nn = getelementptr inbounds nuw i8, ptr %.0182394, i64 4
  store float %i.nm, ptr %i.nn, align 4, !tbaa !61
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %indvars.iv430
  %i.np = load float, ptr %i.no, align 4, !tbaa !61
  %i.nq = getelementptr inbounds nuw i8, ptr %.0182394, i64 8
  store float %i.np, ptr %i.nq, align 4, !tbaa !61
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv430
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !61
  %i.nt = getelementptr inbounds nuw i8, ptr %.0182394, i64 12
  store float %i.ns, ptr %i.nt, align 4, !tbaa !61
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %i.ni
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !61
  %i.nw = getelementptr inbounds nuw i8, ptr %.0182394, i64 16
  store float %i.nv, ptr %i.nw, align 4, !tbaa !61
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %i.ni
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !61
  %i.nz = getelementptr inbounds nuw i8, ptr %.0182394, i64 20
  store float %i.ny, ptr %i.nz, align 4, !tbaa !61
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.ni
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !61
  %i.oc = getelementptr inbounds nuw i8, ptr %.0182394, i64 24
  store float %i.ob, ptr %i.oc, align 4, !tbaa !61
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.ni
  %i.oe = load float, ptr %i.od, align 4, !tbaa !61
  %i.of = getelementptr inbounds nuw i8, ptr %.0182394, i64 28
  store float %i.oe, ptr %i.of, align 4, !tbaa !61
  %i.og = getelementptr inbounds nuw i8, ptr %.0182394, i64 32 ; 2 uses
  %i.oh = mul i64 %i.bq, %indvars.iv430
  %i.oi = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.oh ; 2 uses
  %i.oj = add nuw nsw i64 %indvars.iv430, %i.ca   ; 3 uses
  %i.ok = mul i64 %i.bq, %i.oj
  %i.ol = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.ok ; 2 uses
  %i.om = add nuw nsw i64 %indvars.iv430, %i.bz   ; 3 uses
  %i.on = mul i64 %i.bq, %i.om
  %i.oo = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.on ; 2 uses
  %i.op = add nuw nsw i64 %indvars.iv430, %i.by   ; 3 uses
  %i.oq = mul i64 %i.bq, %i.op
  %i.or = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.oq ; 2 uses
  %i.os = mul i64 %i.bq, %i.ni
  %i.ot = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.os ; 2 uses
  %i.ou = add nuw nsw i64 %i.oj, 1                ; 2 uses
  %i.ov = mul i64 %i.bq, %i.ou
  %i.ow = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.ov ; 2 uses
  %i.ox = or disjoint i64 %i.om, 1                ; 2 uses
  %i.oy = mul i64 %i.bq, %i.ox
  %i.oz = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.oy ; 2 uses
  %i.pa = add nuw nsw i64 %i.op, 1                ; 2 uses
  %i.pb = mul i64 %i.bq, %i.pa
  %i.pc = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.pb ; 2 uses
  %i.pd = mul i64 %i.bt, %indvars.iv430
  %i.pe = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.pd ; 2 uses
  %i.pf = mul i64 %i.bt, %i.oj
  %i.pg = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.pf ; 2 uses
  %i.ph = mul i64 %i.bt, %i.om
  %i.pi = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.ph ; 2 uses
  %i.pj = mul i64 %i.bt, %i.op
  %i.pk = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.pj ; 2 uses
  %i.pl = mul i64 %i.bt, %i.ni
  %i.pm = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.pl ; 2 uses
  %i.pn = mul i64 %i.bt, %i.ou
  %i.po = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.pn ; 2 uses
  %i.pp = mul i64 %i.bt, %i.ox
  %i.pq = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.pp ; 2 uses
  %i.pr = mul i64 %i.bt, %i.pa
  %i.ps = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.pr ; 2 uses
  %i.pt = lshr exact i64 %indvars.iv430, 1        ; 2 uses
  %i.pu = mul i64 %i.bv, %i.pt
  %i.pv = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.pu ; 3 uses
  br i1 %i.lw, label %.lr.ph.preheader, label %.preheader387

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.pw = mul i64 %i.bu, %i.pt
  %i.px = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.pw ; 3 uses
  %brmerge = select i1 %min.iters.check710, i1 true, i1 %op.rdx744
  br i1 %brmerge, label %.lr.ph.preheader748, label %vector.ph711

vector.ph711:                                     ; preds = %.lr.ph.preheader
  %i.py = getelementptr i8, ptr %i.px, i64 %i.md
  br label %vector.body713

vector.body713:                                   ; preds = %vector.body713, %vector.ph711
  %index714 = phi i64 [ 0, %vector.ph711 ], [ %index.next725, %vector.body713 ] ; 10 uses
  %i.pz = shl i64 %index714, 5
  %next.gep715 = getelementptr i8, ptr %i.px, i64 %i.pz
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %index714
  %wide.load716 = load <8 x float>, ptr %i.qa, align 4, !tbaa !61, !alias.scope !227
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %index714
  %wide.load717 = load <8 x float>, ptr %i.qb, align 4, !tbaa !61, !alias.scope !228
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %index714
  %wide.load718 = load <8 x float>, ptr %i.qc, align 4, !tbaa !61, !alias.scope !229
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %index714
  %wide.load719 = load <8 x float>, ptr %i.qd, align 4, !tbaa !61, !alias.scope !230
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %index714
  %wide.load720 = load <8 x float>, ptr %i.qe, align 4, !tbaa !61, !alias.scope !231
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %index714
  %wide.load721 = load <8 x float>, ptr %i.qf, align 4, !tbaa !61, !alias.scope !232
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %index714
  %wide.load722 = load <8 x float>, ptr %i.qg, align 4, !tbaa !61, !alias.scope !233
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %index714
  %wide.load723 = load <8 x float>, ptr %i.qh, align 4, !tbaa !61, !alias.scope !234
  %i.qi = shufflevector <8 x float> %wide.load716, <8 x float> %wide.load717, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qj = shufflevector <8 x float> %wide.load718, <8 x float> %wide.load719, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qk = shufflevector <8 x float> %wide.load720, <8 x float> %wide.load721, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ql = shufflevector <8 x float> %wide.load722, <8 x float> %wide.load723, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qm = shufflevector <16 x float> %i.qi, <16 x float> %i.qj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.qn = shufflevector <16 x float> %i.qk, <16 x float> %i.ql, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec724 = shufflevector <32 x float> %i.qm, <32 x float> %i.qn, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec724, ptr %next.gep715, align 4, !tbaa !61, !alias.scope !235, !noalias !236
  %index.next725 = add nuw i64 %index714, 8       ; 2 uses
  %i.qo = icmp eq i64 %index.next725, %n.vec712
  br i1 %i.qo, label %middle.block726, label %vector.body713, !llvm.loop !189

middle.block726:                                  ; preds = %vector.body713
  br i1 %cmp.n727, label %.preheader387, label %.lr.ph.preheader748

.lr.ph.preheader748:                              ; preds = %.lr.ph.preheader, %middle.block726
  %indvars.iv.ph = phi i64 [ %n.vec712, %middle.block726 ], [ 0, %.lr.ph.preheader ]
  %.0180389.ph = phi ptr [ %i.py, %middle.block726 ], [ %i.px, %.lr.ph.preheader ]
  br label %.lr.ph

.preheader387:                                    ; preds = %.lr.ph, %middle.block726, %bb.c
  br i1 %i.ly, label %.lr.ph393.preheader, label %._crit_edge

.lr.ph393.preheader:                              ; preds = %.preheader387
  %brmerge751 = select i1 %min.iters.check616, i1 true, i1 %op.rdx736
  br i1 %brmerge751, label %.lr.ph393.preheader747, label %vector.ph617

vector.ph617:                                     ; preds = %.lr.ph393.preheader
  %i.qp = getelementptr i8, ptr %i.pv, i64 %i.me
  br label %vector.body619

vector.body619:                                   ; preds = %vector.body619, %vector.ph617
  %index620 = phi i64 [ 0, %vector.ph617 ], [ %index.next631, %vector.body619 ] ; 10 uses
  %i.qq = shl i64 %index620, 5
  %next.gep621 = getelementptr i8, ptr %i.pv, i64 %i.qq
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %index620
  %wide.load622 = load <8 x float>, ptr %i.qr, align 4, !tbaa !61, !alias.scope !237
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %index620
  %wide.load623 = load <8 x float>, ptr %i.qs, align 4, !tbaa !61, !alias.scope !238
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %index620
  %wide.load624 = load <8 x float>, ptr %i.qt, align 4, !tbaa !61, !alias.scope !239
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %index620
  %wide.load625 = load <8 x float>, ptr %i.qu, align 4, !tbaa !61, !alias.scope !240
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %index620
  %wide.load626 = load <8 x float>, ptr %i.qv, align 4, !tbaa !61, !alias.scope !241
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %index620
  %wide.load627 = load <8 x float>, ptr %i.qw, align 4, !tbaa !61, !alias.scope !242
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %index620
  %wide.load628 = load <8 x float>, ptr %i.qx, align 4, !tbaa !61, !alias.scope !243
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %index620
  %wide.load629 = load <8 x float>, ptr %i.qy, align 4, !tbaa !61, !alias.scope !244
  %i.qz = shufflevector <8 x float> %wide.load622, <8 x float> %wide.load623, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ra = shufflevector <8 x float> %wide.load624, <8 x float> %wide.load625, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rb = shufflevector <8 x float> %wide.load626, <8 x float> %wide.load627, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rc = shufflevector <8 x float> %wide.load628, <8 x float> %wide.load629, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rd = shufflevector <16 x float> %i.qz, <16 x float> %i.ra, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.re = shufflevector <16 x float> %i.rb, <16 x float> %i.rc, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec630 = shufflevector <32 x float> %i.rd, <32 x float> %i.re, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec630, ptr %next.gep621, align 4, !tbaa !61, !alias.scope !245, !noalias !246
  %index.next631 = add nuw i64 %index620, 8       ; 2 uses
  %i.rf = icmp eq i64 %index.next631, %n.vec618
  br i1 %i.rf, label %middle.block632, label %vector.body619, !llvm.loop !200

middle.block632:                                  ; preds = %vector.body619
  br i1 %cmp.n633, label %._crit_edge, label %.lr.ph393.preheader747

.lr.ph393.preheader747:                           ; preds = %.lr.ph393.preheader, %middle.block632
  %indvars.iv425.ph = phi i64 [ %n.vec618, %middle.block632 ], [ 0, %.lr.ph393.preheader ]
  %.0179391.ph = phi ptr [ %i.qp, %middle.block632 ], [ %i.pv, %.lr.ph393.preheader ]
  br label %.lr.ph393

.lr.ph:                                           ; preds = %.lr.ph.preheader748, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader748 ] ; 9 uses
  %.0180389 = phi ptr [ %i.sd, %.lr.ph ], [ %.0180389.ph, %.lr.ph.preheader748 ] ; 9 uses
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %indvars.iv
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !61
  store float %i.rh, ptr %.0180389, align 4, !tbaa !61
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %indvars.iv
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !61
  %i.rk = getelementptr inbounds nuw i8, ptr %.0180389, i64 4
  store float %i.rj, ptr %i.rk, align 4, !tbaa !61
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !61
  %i.rn = getelementptr inbounds nuw i8, ptr %.0180389, i64 8
  store float %i.rm, ptr %i.rn, align 4, !tbaa !61
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %indvars.iv
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !61
  %i.rq = getelementptr inbounds nuw i8, ptr %.0180389, i64 12
  store float %i.rp, ptr %i.rq, align 4, !tbaa !61
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %indvars.iv
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !61
  %i.rt = getelementptr inbounds nuw i8, ptr %.0180389, i64 16
  store float %i.rs, ptr %i.rt, align 4, !tbaa !61
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %indvars.iv
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !61
  %i.rw = getelementptr inbounds nuw i8, ptr %.0180389, i64 20
  store float %i.rv, ptr %i.rw, align 4, !tbaa !61
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %indvars.iv
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !61
  %i.rz = getelementptr inbounds nuw i8, ptr %.0180389, i64 24
  store float %i.ry, ptr %i.rz, align 4, !tbaa !61
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %indvars.iv
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !61
  %i.sc = getelementptr inbounds nuw i8, ptr %.0180389, i64 28
  store float %i.sb, ptr %i.sc, align 4, !tbaa !61
  %i.sd = getelementptr inbounds nuw i8, ptr %.0180389, i64 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader387, label %.lr.ph, !llvm.loop !201

._crit_edge:                                      ; preds = %.lr.ph393, %middle.block632, %.preheader387
  %indvars.iv.next431 = add nuw nsw i64 %indvars.iv430, 2 ; 3 uses
  %i.se = icmp slt i64 %indvars.iv.next431, %invariant.op
  br i1 %i.se, label %bb.c, label %.preheader388.loopexit, !llvm.loop !202

.lr.ph393:                                        ; preds = %.lr.ph393.preheader747, %.lr.ph393
  %indvars.iv425 = phi i64 [ %indvars.iv.next426, %.lr.ph393 ], [ %indvars.iv425.ph, %.lr.ph393.preheader747 ] ; 9 uses
  %.0179391 = phi ptr [ %i.tc, %.lr.ph393 ], [ %.0179391.ph, %.lr.ph393.preheader747 ] ; 9 uses
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %indvars.iv425
  %i.sg = load float, ptr %i.sf, align 4, !tbaa !61
  store float %i.sg, ptr %.0179391, align 4, !tbaa !61
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %indvars.iv425
  %i.si = load float, ptr %i.sh, align 4, !tbaa !61
  %i.sj = getelementptr inbounds nuw i8, ptr %.0179391, i64 4
  store float %i.si, ptr %i.sj, align 4, !tbaa !61
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %indvars.iv425
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !61
  %i.sm = getelementptr inbounds nuw i8, ptr %.0179391, i64 8
  store float %i.sl, ptr %i.sm, align 4, !tbaa !61
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %indvars.iv425
  %i.so = load float, ptr %i.sn, align 4, !tbaa !61
  %i.sp = getelementptr inbounds nuw i8, ptr %.0179391, i64 12
  store float %i.so, ptr %i.sp, align 4, !tbaa !61
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %indvars.iv425
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !61
  %i.ss = getelementptr inbounds nuw i8, ptr %.0179391, i64 16
  store float %i.sr, ptr %i.ss, align 4, !tbaa !61
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %indvars.iv425
  %i.su = load float, ptr %i.st, align 4, !tbaa !61
  %i.sv = getelementptr inbounds nuw i8, ptr %.0179391, i64 20
  store float %i.su, ptr %i.sv, align 4, !tbaa !61
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %indvars.iv425
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !61
  %i.sy = getelementptr inbounds nuw i8, ptr %.0179391, i64 24
  store float %i.sx, ptr %i.sy, align 4, !tbaa !61
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %indvars.iv425
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !61
  %i.tb = getelementptr inbounds nuw i8, ptr %.0179391, i64 28
  store float %i.ta, ptr %i.tb, align 4, !tbaa !61
  %i.tc = getelementptr inbounds nuw i8, ptr %.0179391, i64 32
  %indvars.iv.next426 = add nuw nsw i64 %indvars.iv425, 1 ; 2 uses
  %exitcond429.not = icmp eq i64 %indvars.iv.next426, %wide.trip.count428
  br i1 %exitcond429.not, label %._crit_edge, label %.lr.ph393, !llvm.loop !203

bb.d:                                             ; preds = %.lr.ph409, %._crit_edge406
  %indvar = phi i32 [ 0, %.lr.ph409 ], [ %indvar.next, %._crit_edge406 ] ; 5 uses
  %indvars.iv443 = phi i64 [ %i.ml, %.lr.ph409 ], [ %indvars.iv.next444, %._crit_edge406 ] ; 11 uses
  %.1183407 = phi ptr [ %.0182.lcssa, %.lr.ph409 ], [ %i.uc, %._crit_edge406 ] ; 5 uses
  %i.td = add i32 %.0181.lcssa, %indvar
  %i.te = lshr i32 %i.td, 1
  %i.tf = sub i32 %.0181.lcssa, %indvar
  %i.tg = and i32 %i.tf, 1
  %i.th = add nuw i32 %i.te, %i.tg
  %i.ti = zext i32 %i.th to i64
  %i.tj = mul i64 %i.dg, %i.ti
  %scevgep493 = getelementptr i8, ptr %scevgep492, i64 %i.tj ; 4 uses
  %i.tk = add i32 %.0181.lcssa, %indvar
  %i.tl = lshr i32 %i.tk, 1
  %i.tm = sub i32 %.0181.lcssa, %indvar
  %i.tn = and i32 %i.tm, 1
  %i.to = add nuw i32 %i.tl, %i.tn
  %i.tp = zext i32 %i.to to i64
  %i.tq = mul i64 %i.cf, %i.tp
  %scevgep458 = getelementptr i8, ptr %scevgep, i64 %i.tq ; 4 uses
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv443
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !61
  store float %i.ts, ptr %.1183407, align 4, !tbaa !61
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %indvars.iv443
  %i.tu = load float, ptr %i.tt, align 4, !tbaa !61
  %i.tv = getelementptr inbounds nuw i8, ptr %.1183407, i64 4
  store float %i.tu, ptr %i.tv, align 4, !tbaa !61
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %indvars.iv443
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !61
  %i.ty = getelementptr inbounds nuw i8, ptr %.1183407, i64 8
  store float %i.tx, ptr %i.ty, align 4, !tbaa !61
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv443
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !61
  %i.ub = getelementptr inbounds nuw i8, ptr %.1183407, i64 12
  store float %i.ua, ptr %i.ub, align 4, !tbaa !61
  %i.uc = getelementptr inbounds nuw i8, ptr %.1183407, i64 16
  %i.ud = mul i64 %i.bq, %indvars.iv443
  %i.ue = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.ud ; 4 uses
  %i.uf = add nuw nsw i64 %indvars.iv443, %i.bx   ; 2 uses
  %i.ug = mul i64 %i.bq, %i.uf
  %i.uh = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.ug ; 4 uses
  %i.ui = add nuw nsw i64 %indvars.iv443, %i.cb   ; 2 uses
  %i.uj = mul i64 %i.bq, %i.ui
  %i.uk = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.uj ; 4 uses
  %i.ul = add nuw nsw i64 %indvars.iv443, %i.cc   ; 2 uses
  %i.um = mul i64 %i.bq, %i.ul
  %i.un = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.um ; 4 uses
  %i.uo = mul i64 %i.bt, %indvars.iv443
  %i.up = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.uo ; 4 uses
  %i.uq = mul i64 %i.bt, %i.uf
  %i.ur = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.uq ; 4 uses
  %i.us = mul i64 %i.bt, %i.ui
  %i.ut = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.us ; 4 uses
  %i.uu = mul i64 %i.bt, %i.ul
  %i.uv = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.uu ; 4 uses
  %i.uw = trunc i64 %indvars.iv443 to i32         ; 2 uses
  %i.ux = lshr i32 %i.uw, 1
  %i.uy = and i32 %i.uw, 1
  %i.uz = add nuw i32 %i.ux, %i.uy
  %i.va = zext i32 %i.uz to i64                   ; 2 uses
  %i.vb = mul i64 %i.bv, %i.va
  %i.vc = getelementptr i8, ptr %i.lp, i64 %i.vb  ; 8 uses
  br i1 %i.mi, label %.lr.ph402.preheader, label %.preheader

.lr.ph402.preheader:                              ; preds = %bb.d
  %i.vd = mul i64 %i.bu, %i.va
  %i.ve = getelementptr i8, ptr %i.ln, i64 %i.vd  ; 8 uses
  br i1 %min.iters.check526, label %.lr.ph402.preheader746, label %vector.memcheck491

vector.memcheck491:                               ; preds = %.lr.ph402.preheader
  %bound0506 = icmp ult ptr %i.ve, %scevgep496.a
  %bound1507 = icmp ult ptr %scevgep494.a, %scevgep493
  %found.conflict508 = and i1 %bound0506, %bound1507
  %bound0510 = icmp ult ptr %i.ve, %scevgep499.a
  %bound1511 = icmp ult ptr %scevgep497.a, %scevgep493
  %found.conflict512 = and i1 %bound0510, %bound1511
  %10 = or i1 %found.conflict512, %stride.check513
  %conflict.rdx514.a = or i1 %found.conflict508, %10
  %bound0515.a = icmp ult ptr %i.ve, %scevgep502.a
  %bound1516.a = icmp ult ptr %scevgep500.a, %scevgep493
  %found.conflict517.a = and i1 %bound0515.a, %bound1516.a
  %conflict.rdx519 = or i1 %found.conflict517.a, %conflict.rdx514.a
  %bound0520 = icmp ult ptr %i.ve, %scevgep505
  %bound1521 = icmp ult ptr %scevgep503, %scevgep493
  %found.conflict522 = and i1 %bound0520, %bound1521
  %conflict.rdx524 = or i1 %found.conflict522, %conflict.rdx519
  br i1 %conflict.rdx524, label %.lr.ph402.preheader746, label %vector.ph527

vector.ph527:                                     ; preds = %vector.memcheck491
  %i.vf = getelementptr i8, ptr %i.ve, i64 %i.ne
  br label %vector.body529

vector.body529:                                   ; preds = %vector.body529, %vector.ph527
  %index530 = phi i64 [ 0, %vector.ph527 ], [ %index.next537, %vector.body529 ] ; 6 uses
  %i.vg = shl i64 %index530, 4
  %next.gep531 = getelementptr i8, ptr %i.ve, i64 %i.vg
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %index530
  %wide.load532 = load <8 x float>, ptr %i.vh, align 4, !tbaa !61, !alias.scope !247
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %index530
  %wide.load533 = load <8 x float>, ptr %i.vi, align 4, !tbaa !61, !alias.scope !248
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %index530
  %wide.load534 = load <8 x float>, ptr %i.vj, align 4, !tbaa !61, !alias.scope !249
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %index530
  %wide.load535 = load <8 x float>, ptr %i.vk, align 4, !tbaa !61, !alias.scope !250
  %i.vl = shufflevector <8 x float> %wide.load532, <8 x float> %wide.load533, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.vm = shufflevector <8 x float> %wide.load534, <8 x float> %wide.load535, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec536 = shufflevector <16 x float> %i.vl, <16 x float> %i.vm, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec536, ptr %next.gep531, align 4, !tbaa !61, !alias.scope !251, !noalias !252
  %index.next537 = add nuw i64 %index530, 8       ; 2 uses
  %i.vn = icmp eq i64 %index.next537, %n.vec528
  br i1 %i.vn, label %middle.block538, label %vector.body529, !llvm.loop !210

middle.block538:                                  ; preds = %vector.body529
  br i1 %cmp.n539, label %.preheader, label %.lr.ph402.preheader746

.lr.ph402.preheader746:                           ; preds = %vector.memcheck491, %.lr.ph402.preheader, %middle.block538
  %indvars.iv433.ph = phi i64 [ 0, %vector.memcheck491 ], [ 0, %.lr.ph402.preheader ], [ %n.vec528, %middle.block538 ] ; 7 uses
  %.0176399.ph = phi ptr [ %i.ve, %vector.memcheck491 ], [ %i.ve, %.lr.ph402.preheader ], [ %i.vf, %middle.block538 ] ; 6 uses
  br i1 %lcmp.mod.not, label %.lr.ph402.prol.loopexit, label %.lr.ph402.prol

.lr.ph402.prol:                                   ; preds = %.lr.ph402.preheader746
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %indvars.iv433.ph
  %i.vp = load float, ptr %i.vo, align 4, !tbaa !61
  store float %i.vp, ptr %.0176399.ph, align 4, !tbaa !61
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %indvars.iv433.ph
  %i.vr = load float, ptr %i.vq, align 4, !tbaa !61
  %i.vs = getelementptr inbounds nuw i8, ptr %.0176399.ph, i64 4
  store float %i.vr, ptr %i.vs, align 4, !tbaa !61
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %indvars.iv433.ph
  %i.vu = load float, ptr %i.vt, align 4, !tbaa !61
  %i.vv = getelementptr inbounds nuw i8, ptr %.0176399.ph, i64 8
  store float %i.vu, ptr %i.vv, align 4, !tbaa !61
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %indvars.iv433.ph
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !61
  %i.vy = getelementptr inbounds nuw i8, ptr %.0176399.ph, i64 12
  store float %i.vx, ptr %i.vy, align 4, !tbaa !61
  %i.vz = getelementptr inbounds nuw i8, ptr %.0176399.ph, i64 16
  %indvars.iv.next434.prol = or disjoint i64 %indvars.iv433.ph, 1
  br label %.lr.ph402.prol.loopexit

.lr.ph402.prol.loopexit:                          ; preds = %.lr.ph402.prol, %.lr.ph402.preheader746
  %indvars.iv433.unr = phi i64 [ %indvars.iv433.ph, %.lr.ph402.preheader746 ], [ %indvars.iv.next434.prol, %.lr.ph402.prol ]
  %.0176399.unr = phi ptr [ %.0176399.ph, %.lr.ph402.preheader746 ], [ %i.vz, %.lr.ph402.prol ]
  %i.wa = icmp eq i64 %indvars.iv433.ph, %i.nf
  br i1 %i.wa, label %.preheader, label %.lr.ph402

.preheader:                                       ; preds = %.lr.ph402.prol.loopexit, %.lr.ph402, %middle.block538, %bb.d
  br i1 %i.mk, label %.lr.ph405.preheader, label %._crit_edge406

.lr.ph405.preheader:                              ; preds = %.preheader
  br i1 %min.iters.check, label %.lr.ph405.preheader745, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph405.preheader
  %bound0 = icmp ult ptr %i.vc, %scevgep463
  %bound1 = icmp ult ptr %scevgep459, %scevgep458
  %found.conflict = and i1 %bound0, %bound1
  %bound0473 = icmp ult ptr %i.vc, %scevgep466
  %bound1474 = icmp ult ptr %scevgep464, %scevgep458
  %found.conflict475 = and i1 %bound0473, %bound1474
  %11 = or i1 %found.conflict475, %stride.check476
  %conflict.rdx = or i1 %found.conflict, %11
  %bound0477 = icmp ult ptr %i.vc, %scevgep469
  %bound1478 = icmp ult ptr %scevgep467, %scevgep458
  %found.conflict479 = and i1 %bound0477, %bound1478
  %conflict.rdx481 = or i1 %found.conflict479, %conflict.rdx
  %bound0482 = icmp ult ptr %i.vc, %scevgep472
  %bound1483 = icmp ult ptr %scevgep470, %scevgep458
  %found.conflict484 = and i1 %bound0482, %bound1483
  %conflict.rdx486 = or i1 %found.conflict484, %conflict.rdx481
  br i1 %conflict.rdx486, label %.lr.ph405.preheader745, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.wb = getelementptr i8, ptr %i.vc, i64 %i.ng
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.wc = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.vc, i64 %i.wc
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.up, i64 %index
  %wide.load = load <8 x float>, ptr %i.wd, align 4, !tbaa !61, !alias.scope !253
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %index
  %wide.load487 = load <8 x float>, ptr %i.we, align 4, !tbaa !61, !alias.scope !254
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %index
  %wide.load488 = load <8 x float>, ptr %i.wf, align 4, !tbaa !61, !alias.scope !255
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.uv, i64 %index
  %wide.load489 = load <8 x float>, ptr %i.wg, align 4, !tbaa !61, !alias.scope !256
  %i.wh = shufflevector <8 x float> %wide.load, <8 x float> %wide.load487, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.wi = shufflevector <8 x float> %wide.load488, <8 x float> %wide.load489, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.wh, <16 x float> %i.wi, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !61, !alias.scope !257, !noalias !258
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.wj = icmp eq i64 %index.next, %n.vec
  br i1 %i.wj, label %middle.block, label %vector.body, !llvm.loop !217

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge406, label %.lr.ph405.preheader745

.lr.ph405.preheader745:                           ; preds = %vector.memcheck, %.lr.ph405.preheader, %middle.block
  %indvars.iv438.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph405.preheader ], [ %n.vec, %middle.block ] ; 7 uses
  %.0175403.ph = phi ptr [ %i.vc, %vector.memcheck ], [ %i.vc, %.lr.ph405.preheader ], [ %i.wb, %middle.block ] ; 6 uses
  br i1 %lcmp.mod750.not, label %.lr.ph405.prol.loopexit, label %.lr.ph405.prol

.lr.ph405.prol:                                   ; preds = %.lr.ph405.preheader745
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.up, i64 %indvars.iv438.ph
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !61
  store float %i.wl, ptr %.0175403.ph, align 4, !tbaa !61
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %indvars.iv438.ph
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !61
  %i.wo = getelementptr inbounds nuw i8, ptr %.0175403.ph, i64 4
  store float %i.wn, ptr %i.wo, align 4, !tbaa !61
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %indvars.iv438.ph
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !61
  %i.wr = getelementptr inbounds nuw i8, ptr %.0175403.ph, i64 8
  store float %i.wq, ptr %i.wr, align 4, !tbaa !61
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.uv, i64 %indvars.iv438.ph
  %i.wt = load float, ptr %i.ws, align 4, !tbaa !61
  %i.wu = getelementptr inbounds nuw i8, ptr %.0175403.ph, i64 12
  store float %i.wt, ptr %i.wu, align 4, !tbaa !61
  %i.wv = getelementptr inbounds nuw i8, ptr %.0175403.ph, i64 16
  %indvars.iv.next439.prol = or disjoint i64 %indvars.iv438.ph, 1
  br label %.lr.ph405.prol.loopexit

.lr.ph405.prol.loopexit:                          ; preds = %.lr.ph405.prol, %.lr.ph405.preheader745
  %indvars.iv438.unr = phi i64 [ %indvars.iv438.ph, %.lr.ph405.preheader745 ], [ %indvars.iv.next439.prol, %.lr.ph405.prol ]
  %.0175403.unr = phi ptr [ %.0175403.ph, %.lr.ph405.preheader745 ], [ %i.wv, %.lr.ph405.prol ]
  %i.ww = icmp eq i64 %indvars.iv438.ph, %i.nh
  br i1 %i.ww, label %._crit_edge406, label %.lr.ph405

.lr.ph402:                                        ; preds = %.lr.ph402.prol.loopexit, %.lr.ph402
  %indvars.iv433 = phi i64 [ %indvars.iv.next434.1, %.lr.ph402 ], [ %indvars.iv433.unr, %.lr.ph402.prol.loopexit ] ; 6 uses
  %.0176399 = phi ptr [ %i.xu, %.lr.ph402 ], [ %.0176399.unr, %.lr.ph402.prol.loopexit ] ; 9 uses
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %indvars.iv433
  %i.wy = load float, ptr %i.wx, align 4, !tbaa !61
  store float %i.wy, ptr %.0176399, align 4, !tbaa !61
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %indvars.iv433
  %i.xa = load float, ptr %i.wz, align 4, !tbaa !61
  %i.xb = getelementptr inbounds nuw i8, ptr %.0176399, i64 4
  store float %i.xa, ptr %i.xb, align 4, !tbaa !61
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %indvars.iv433
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !61
  %i.xe = getelementptr inbounds nuw i8, ptr %.0176399, i64 8
  store float %i.xd, ptr %i.xe, align 4, !tbaa !61
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %indvars.iv433
  %i.xg = load float, ptr %i.xf, align 4, !tbaa !61
  %i.xh = getelementptr inbounds nuw i8, ptr %.0176399, i64 12
  store float %i.xg, ptr %i.xh, align 4, !tbaa !61
  %i.xi = getelementptr inbounds nuw i8, ptr %.0176399, i64 16
  %indvars.iv.next434 = add nuw nsw i64 %indvars.iv433, 1 ; 4 uses
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %indvars.iv.next434
  %i.xk = load float, ptr %i.xj, align 4, !tbaa !61
  store float %i.xk, ptr %i.xi, align 4, !tbaa !61
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %indvars.iv.next434
  %i.xm = load float, ptr %i.xl, align 4, !tbaa !61
  %i.xn = getelementptr inbounds nuw i8, ptr %.0176399, i64 20
  store float %i.xm, ptr %i.xn, align 4, !tbaa !61
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %indvars.iv.next434
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !61
  %i.xq = getelementptr inbounds nuw i8, ptr %.0176399, i64 24
  store float %i.xp, ptr %i.xq, align 4, !tbaa !61
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %indvars.iv.next434
  %i.xs = load float, ptr %i.xr, align 4, !tbaa !61
  %i.xt = getelementptr inbounds nuw i8, ptr %.0176399, i64 28
  store float %i.xs, ptr %i.xt, align 4, !tbaa !61
  %i.xu = getelementptr inbounds nuw i8, ptr %.0176399, i64 32
  %indvars.iv.next434.1 = add nuw nsw i64 %indvars.iv433, 2 ; 2 uses
  %exitcond437.not.1 = icmp eq i64 %indvars.iv.next434.1, %wide.trip.count436
  br i1 %exitcond437.not.1, label %.preheader, label %.lr.ph402, !llvm.loop !218

._crit_edge406:                                   ; preds = %.lr.ph405.prol.loopexit, %.lr.ph405, %middle.block, %.preheader
  %indvars.iv.next444 = add nuw nsw i64 %indvars.iv443, 1 ; 2 uses
  %exitcond447.not = icmp eq i64 %indvars.iv.next444, %i.ca
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond447.not, label %_ZN4ncnn3MatD2Ev.exit, label %bb.d, !llvm.loop !219

.lr.ph405:                                        ; preds = %.lr.ph405.prol.loopexit, %.lr.ph405
  %indvars.iv438 = phi i64 [ %indvars.iv.next439.1, %.lr.ph405 ], [ %indvars.iv438.unr, %.lr.ph405.prol.loopexit ] ; 6 uses
  %.0175403 = phi ptr [ %i.ys, %.lr.ph405 ], [ %.0175403.unr, %.lr.ph405.prol.loopexit ] ; 9 uses
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.up, i64 %indvars.iv438
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !61
  store float %i.xw, ptr %.0175403, align 4, !tbaa !61
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %indvars.iv438
  %i.xy = load float, ptr %i.xx, align 4, !tbaa !61
  %i.xz = getelementptr inbounds nuw i8, ptr %.0175403, i64 4
  store float %i.xy, ptr %i.xz, align 4, !tbaa !61
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %indvars.iv438
  %i.yb = load float, ptr %i.ya, align 4, !tbaa !61
  %i.yc = getelementptr inbounds nuw i8, ptr %.0175403, i64 8
  store float %i.yb, ptr %i.yc, align 4, !tbaa !61
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.uv, i64 %indvars.iv438
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !61
  %i.yf = getelementptr inbounds nuw i8, ptr %.0175403, i64 12
  store float %i.ye, ptr %i.yf, align 4, !tbaa !61
  %i.yg = getelementptr inbounds nuw i8, ptr %.0175403, i64 16
  %indvars.iv.next439 = add nuw nsw i64 %indvars.iv438, 1 ; 4 uses
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.up, i64 %indvars.iv.next439
  %i.yi = load float, ptr %i.yh, align 4, !tbaa !61
  store float %i.yi, ptr %i.yg, align 4, !tbaa !61
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %indvars.iv.next439
  %i.yk = load float, ptr %i.yj, align 4, !tbaa !61
  %i.yl = getelementptr inbounds nuw i8, ptr %.0175403, i64 20
  store float %i.yk, ptr %i.yl, align 4, !tbaa !61
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %indvars.iv.next439
  %i.yn = load float, ptr %i.ym, align 4, !tbaa !61
  %i.yo = getelementptr inbounds nuw i8, ptr %.0175403, i64 24
  store float %i.yn, ptr %i.yo, align 4, !tbaa !61
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.uv, i64 %indvars.iv.next439
  %i.yq = load float, ptr %i.yp, align 4, !tbaa !61
  %i.yr = getelementptr inbounds nuw i8, ptr %.0175403, i64 28
  store float %i.yq, ptr %i.yr, align 4, !tbaa !61
  %i.ys = getelementptr inbounds nuw i8, ptr %.0175403, i64 32
  %indvars.iv.next439.1 = add nuw nsw i64 %indvars.iv438, 2 ; 2 uses
  %exitcond442.not.1 = icmp eq i64 %indvars.iv.next439.1, %wide.trip.count441
  br i1 %exitcond442.not.1, label %._crit_edge406, label %.lr.ph405, !llvm.loop !220

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge406, %.preheader388
  %indvars.iv.next449 = add nsw i64 %indvars.iv448, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next449 to i32
  %exitcond451.not = icmp eq i32 %i.ce, %lftr.wideiv
  %indvar.next461 = add i64 %indvar460, 1
  br i1 %exitcond451.not, label %._crit_edge412, label %.noexc231

._crit_edge412:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge412, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare !callback !71 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn12LSTM_x86_fma12forward_int8ERKNS_3MatERS1_RKNS_6OptionE(ptr nofree noundef nonnull readonly align 8 dereferenceable(1024) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.ncnn::Mat", align 8         ; 16 uses
  %5 = alloca %"class.ncnn::Mat", align 8         ; 16 uses
  %6 = alloca %"class.ncnn::Mat", align 8         ; 13 uses
  %7 = alloca %"class.ncnn::Mat", align 8         ; 13 uses
  %8 = alloca %"class.ncnn::Mat", align 8         ; 17 uses
  %9 = alloca %"class.ncnn::Mat", align 8         ; 17 uses
  %10 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 24 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 18 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %15 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %16 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %17 = alloca %"class.ncnn::Mat", align 8        ; 24 uses
end_hunk_0
