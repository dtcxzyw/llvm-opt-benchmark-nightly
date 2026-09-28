Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/decode2f?download=true
inline.NumInlined: 46
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@zfp_decode_block_float_2:bb.a
rev_decode_block_float_2.exit:                    ; preds = %.preheader.preheader.i, %rev_inv_reinterpret_float.exit.i, %.preheader.preheader.i.i, %bb.am, %stream_skip.exit.i
  %.1.i = phi i32 [ %i.ah, %rev_inv_reinterpret_float.exit.i ], [ 1, %.preheader.preheader.i ], [ %i.r, %stream_skip.exit.i ], [ %i.dq, %.preheader.preheader.i.i ], [ %i.dq, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %decode_block_float_2.exit

bb.ap:                                            ; preds = %bb.a
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !25 ; 15 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !13 ; 2 uses
  %.not.i.i5 = icmp eq i64 %i.fi, 0
  br i1 %.not.i.i5, label %bb.aq, label %._crit_edge.i.i6

._crit_edge.i.i6:                                 ; preds = %bb.ap
  %.phi.trans.insert.i.i7 = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = add i64 %i.fi, -1
  br label %stream_read_bit.exit.i8

bb.aq:                                            ; preds = %bb.ap
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !14 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store ptr %i.fm, ptr %i.fk, align 8, !tbaa !14
  br label %stream_read_bit.exit.i8

stream_read_bit.exit.i8:                          ; preds = %bb.aq, %._crit_edge.i.i6
  %.in.i.i9 = phi ptr [ %i.fl, %bb.aq ], [ %.phi.trans.insert.i.i7, %._crit_edge.i.i6 ]
  %i.fn = phi i64 [ 63, %bb.aq ], [ %i.fj, %._crit_edge.i.i6 ] ; 7 uses
  %i.fo = load i64, ptr %.in.i.i9, align 8, !tbaa !15 ; 3 uses
  store i64 %i.fn, ptr %i.fh, align 8, !tbaa !13
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 4 uses
  %i.fq = lshr i64 %i.fo, 1                       ; 3 uses
  store i64 %i.fq, ptr %i.fp, align 8, !tbaa !16
  %i.fr = and i64 %i.fo, 1
  %.not.i10 = icmp eq i64 %i.fr, 0
  br i1 %.not.i10, label %.preheader.preheader.i16, label %bb.ar

.preheader.preheader.i16:                         ; preds = %stream_read_bit.exit.i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %1, i8 0, i64 64, i1 false), !tbaa !18
  %i.fs = load i32, ptr %0, align 8, !tbaa !26    ; 3 uses
  %i.ft = icmp ugt i32 %i.fs, 1
  br i1 %i.ft, label %bb.aw, label %decode_block_float_2.exit

bb.ar:                                            ; preds = %stream_read_bit.exit.i8
  %i.fu = icmp ult i64 %i.fn, 8
  br i1 %i.fu, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !14 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store ptr %i.fx, ptr %i.fv, align 8, !tbaa !14
  %i.fy = load i64, ptr %i.fw, align 8, !tbaa !15 ; 2 uses
  %i.fz = shl i64 %i.fy, %i.fn
  %i.ga = add i64 %i.fz, %i.fq
  %i.gb = or disjoint i64 %i.fn, 56
  %i.gc = sub nuw nsw i64 8, %i.fn
  %i.gd = lshr i64 %i.fy, %i.gc
  br label %stream_read_bits.exit.i11

bb.at:                                            ; preds = %bb.ar
  %i.ge = add i64 %i.fn, -8
  %i.gf = lshr i64 %i.fo, 9
  br label %stream_read_bits.exit.i11

stream_read_bits.exit.i11:                        ; preds = %bb.at, %bb.as
  %.sink.i12 = phi i64 [ %i.gb, %bb.as ], [ %i.ge, %bb.at ]
  %storemerge.i13 = phi i64 [ %i.gd, %bb.as ], [ %i.gf, %bb.at ]
  %.0.i.in.i14 = phi i64 [ %i.ga, %bb.as ], [ %i.fq, %bb.at ]
  store i64 %.sink.i12, ptr %i.fh, align 8, !tbaa !13
  store i64 %storemerge.i13, ptr %i.fp, align 8, !tbaa !16
  %i.gg = trunc i64 %.0.i.in.i14 to i32
  %i.gh = and i32 %i.gg, 255                      ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !28
  %reass.sub = sub nsw i32 %i.gh, %i.d            ; 2 uses
  %i.gk = add i32 %reass.sub, -127
  %i.gl = add i32 %reass.sub, -121
  %i.gm = icmp sgt i32 %i.gk, -7
  %spec.select15.i.i = tail call i32 @llvm.umin.i32(i32 %i.gj, i32 %i.gl)
  %i.gn = select i1 %i.gm, i32 %spec.select15.i.i, i32 0
  %i.go = load i32, ptr %0, align 8, !tbaa !26
  %i.gp = tail call i32 @llvm.usub.sat.i32(i32 %i.go, i32 9) ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !27
  %i.gs = add i32 %i.gr, -9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.gt = call fastcc i32 @decode_ints_uint32(ptr noundef nonnull %i.fh, i32 noundef %i.gs, i32 noundef range(i32 0, -2147483648) %i.gn, ptr noundef %i.a) ; 3 uses
  %i.gu = icmp ult i32 %i.gt, %i.gp
  br i1 %i.gu, label %bb.au, label %decode_block_int32_2.exit.i

bb.au:                                            ; preds = %stream_read_bits.exit.i11
  %i.gv = sub nuw i32 %i.gp, %i.gt
  %i.gw = zext i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 3 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !14
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !20 ; 2 uses
  %i.hb = ptrtoint ptr %i.gy to i64
  %i.hc = ptrtoint ptr %i.ha to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = shl i64 %i.hd, 3
  %i.hf = load i64, ptr %i.fh, align 8, !tbaa !13
  %i.hg = sub i64 %i.he, %i.hf
  %i.hh = add i64 %i.hg, %i.gw                    ; 2 uses
  %i.hi = and i64 %i.hh, 63                       ; 3 uses
  %i.hj = lshr i64 %i.hh, 6
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.hj ; 3 uses
  store ptr %i.hk, ptr %i.gx, align 8, !tbaa !14
  %.not.i.i.i.i = icmp eq i64 %i.hi, 0
  br i1 %.not.i.i.i.i, label %stream_skip.exit.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store ptr %i.hl, ptr %i.gx, align 8, !tbaa !14
  %i.hm = load i64, ptr %i.hk, align 8, !tbaa !15
  %i.hn = lshr i64 %i.hm, %i.hi
  %i.ho = sub nuw nsw i64 64, %i.hi
  br label %stream_skip.exit.i.i

stream_skip.exit.i.i:                             ; preds = %bb.av, %bb.au
  %.sink.i.i.i.i = phi i64 [ %i.hn, %bb.av ], [ 0, %bb.au ]
  %storemerge.i.i.i.i = phi i64 [ %i.ho, %bb.av ], [ 0, %bb.au ]
  store i64 %.sink.i.i.i.i, ptr %i.fp, align 8, !tbaa !16
  store i64 %storemerge.i.i.i.i, ptr %i.fh, align 8, !tbaa !13
  br label %decode_block_int32_2.exit.i

decode_block_int32_2.exit.i:                      ; preds = %stream_skip.exit.i.i, %stream_read_bits.exit.i11
  %.0.i32.i = phi i32 [ %i.gp, %stream_skip.exit.i.i ], [ %i.gt, %stream_read_bits.exit.i11 ]
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.hq = load i32, ptr %i.a, align 256, !tbaa !19
  %i.hr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ht = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.hu = load i32, ptr %i.hs, align 4, !tbaa !19
  %i.hv = xor i32 %i.hu, -1431655766
  %i.hw = add i32 %i.hv, 1431655766
  %i.hx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.hy = load i32, ptr %i.ht, align 16, !tbaa !19
  %i.hz = xor i32 %i.hy, -1431655766              ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ib = load i32, ptr %i.hx, align 4, !tbaa !19
  %i.ic = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.id = load i32, ptr %i.ia, align 8, !tbaa !19
  %i.ie = xor i32 %i.id, -1431655766
  %i.if = add i32 %i.ie, 1431655766
  %i.ig = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ih = load i32, ptr %i.ic, align 4, !tbaa !19
  %i.ii = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.ij = load i32, ptr %i.ig, align 32, !tbaa !19
  %i.ik = xor i32 %i.ij, -1431655766              ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.im = load i32, ptr %i.ii, align 4, !tbaa !19
  %i.in = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.io = load i32, ptr %i.il, align 8, !tbaa !19
  %i.ip = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.iq = load i32, ptr %i.in, align 4, !tbaa !19
  %i.ir = xor i32 %i.iq, -1431655766
  %i.is = add i32 %i.ir, 1431655766
  %i.it = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.iu = load i32, ptr %i.ip, align 16, !tbaa !19
  %i.iv = xor i32 %i.iu, -1431655766
  %i.iw = add i32 %i.iv, 1431655766               ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.iy = load i32, ptr %i.it, align 4, !tbaa !19
  %i.iz = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.ja = load i32, ptr %i.ix, align 8, !tbaa !19
  %i.jb = xor i32 %i.ja, -1431655766
  %i.jc = add i32 %i.jb, 1431655766               ; 2 uses
  %i.jd = load i32, ptr %i.iz, align 4, !tbaa !19
  %i.je = xor i32 %i.jd, -1431655766
  %i.jf = add i32 %i.je, 1431655766               ; 2 uses
  %i.jg = ashr i32 %i.iw, 1
  %i.jh = add nsw i32 %i.hw, %i.jg                ; 3 uses
  %i.ji = ashr i32 %i.jh, 1
  %i.jj = sub nsw i32 %i.iw, %i.ji                ; 2 uses
  %i.jk = add nsw i32 %i.jj, %i.jh                ; 2 uses
  %i.jl = ashr i32 %i.jc, 1
  %i.jm = add nsw i32 %i.if, %i.jl                ; 3 uses
  %i.jn = ashr i32 %i.jm, 1
  %i.jo = sub nsw i32 %i.jc, %i.jn                ; 2 uses
  %i.jp = add nsw i32 %i.jo, %i.jm                ; 2 uses
  %i.jq = sub nsw i32 %i.jo, %i.jm                ; 2 uses
  %i.jr = add i32 %i.hz, -1431655764
  %i.js = ashr i32 %i.jf, 1
  %i.jt = add nsw i32 %i.is, %i.js                ; 3 uses
  %i.ju = ashr i32 %i.jt, 1
  %i.jv = sub nsw i32 %i.jf, %i.ju                ; 2 uses
  %i.jw = add i32 %i.ik, -1431655764
  %i.jx = add i32 %.0.i32.i, 9
  %i.jy = add nsw i32 %i.gh, -157
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ka = load i32, ptr %i.hp, align 4, !tbaa !19
  %i.kb = xor i32 %i.ka, -1431655766              ; 2 uses
  %i.kc = load i32, ptr %i.hr, align 8, !tbaa !19
  %i.kd = xor i32 %i.kc, -1431655766
  %i.ke = xor i32 %i.io, -1431655766              ; 2 uses
  %i.kf = sub nsw i32 %i.jj, %i.jh                ; 2 uses
  %i.kg = add i32 %i.kb, -1431655764
  %i.kh = add i32 %i.jr, %i.ke                    ; 2 uses
  %i.ki = sub i32 %i.hz, %i.ke                    ; 2 uses
  %i.kj = sub nsw i32 %i.ki, %i.jq                ; 2 uses
  %i.kk = sub nsw i32 %i.jv, %i.jt                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.kl = tail call float @ldexpf(float noundef 1.000000e+00, i32 noundef %i.jy) #8
  %i.km = insertelement <4 x float> poison, float %i.kl, i64 0
  %i.kn = shufflevector <4 x float> %i.km, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 32
  %2 = add nsw i32 %i.jp, %i.kh                   ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.kq = xor i32 %i.im, -1431655766
  %i.kr = add nsw i32 %i.jv, %i.jt                ; 2 uses
  %i.ks = xor i32 %i.hq, -1431655766              ; 2 uses
  %i.kt = add i32 %i.kd, 1431655766
  %i.ku = xor i32 %i.ib, -1431655766              ; 2 uses
  %i.kv = xor i32 %i.ih, -1431655766              ; 2 uses
  %i.kw = add i32 %i.kq, 1431655766               ; 2 uses
  %i.kx = xor i32 %i.iy, -1431655766              ; 2 uses
  %i.ky = ashr i32 %i.kw, 1
  %i.kz = add nsw i32 %i.kt, %i.ky                ; 3 uses
  %i.la = ashr i32 %i.kz, 1
  %i.lb = sub nsw i32 %i.kw, %i.la                ; 2 uses
  %i.lc = add nsw i32 %i.lb, %i.kz                ; 2 uses
  %i.ld = sub nsw i32 %i.lb, %i.kz                ; 2 uses
  %i.le = add i32 %i.ks, -1431655764
  %i.lf = add i32 %i.le, %i.ku                    ; 2 uses
  %i.lg = sub i32 %i.ks, %i.ku                    ; 2 uses
  %i.lh = sub nsw i32 %i.lf, %i.lc                ; 2 uses
  %i.li = sub nsw i32 %i.lg, %i.ld                ; 2 uses
  %i.lj = add i32 %i.kg, %i.kv                    ; 2 uses
  %i.lk = sub i32 %i.kb, %i.kv                    ; 2 uses
  %i.ll = add nsw i32 %i.jk, %i.lj
  %i.lm = sub nsw i32 %i.lj, %i.jk
  %i.ln = add nsw i32 %i.kf, %i.lk
  %i.lo = sub nsw i32 %i.lk, %i.kf
  %i.lp = sub nsw i32 %i.kh, %i.jp                ; 2 uses
  %i.lq = add i32 %i.jw, %i.kx                    ; 2 uses
  %i.lr = sub i32 %i.ik, %i.kx                    ; 2 uses
  %i.ls = add nsw i32 %i.kr, %i.lq                ; 2 uses
  %i.lt = sub nsw i32 %i.lq, %i.kr                ; 2 uses
  %i.lu = add nsw i32 %i.kk, %i.lr                ; 2 uses
  %i.lv = sub nsw i32 %i.lr, %i.kk                ; 2 uses
  %i.lw = ashr i32 %i.lv, 1
  %i.lx = add nsw i32 %i.lw, %i.lo                ; 3 uses
  %i.ly = ashr i32 %i.lx, 1
  %i.lz = sub nsw i32 %i.lv, %i.ly                ; 2 uses
  %i.ma = add nsw i32 %i.lz, %i.lx                ; 2 uses
  %i.mb = sub nsw i32 %i.lz, %i.lx                ; 2 uses
  %i.mc = add nsw i32 %i.kj, %i.li                ; 2 uses
  %i.md = sub nsw i32 %i.li, %i.kj                ; 2 uses
  %i.me = add nsw i32 %i.ma, %i.mc
  %i.mf = sub nsw i32 %i.mc, %i.ma
  %i.mg = add nsw i32 %i.mb, %i.md
  %i.mh = sub nsw i32 %i.md, %i.mb
  %i.mi = ashr i32 %i.ls, 1
  %i.mj = ashr i32 %i.lt, 1
  %i.mk = add nsw i32 %i.mj, %i.lm                ; 3 uses
  %i.ml = ashr i32 %i.mk, 1
  %i.mm = sub nsw i32 %i.lt, %i.ml                ; 2 uses
  %i.mn = add nsw i32 %i.mm, %i.mk                ; 2 uses
  %i.mo = sub nsw i32 %i.mm, %i.mk                ; 2 uses
  %i.mp = add nsw i32 %i.lp, %i.lh                ; 2 uses
  %i.mq = sub nsw i32 %i.lh, %i.lp                ; 2 uses
  %i.mr = add nsw i32 %i.mn, %i.mp
  %i.ms = sub nsw i32 %i.mp, %i.mn
  %i.mt = add nsw i32 %i.mo, %i.mq
  %i.mu = sub nsw i32 %i.mq, %i.mo
  %i.mv = ashr i32 %i.lu, 1
  %i.mw = insertelement <4 x i32> poison, i32 %i.mh, i64 0
  %i.mx = insertelement <4 x i32> %i.mw, i32 %i.me, i64 1
  %i.my = insertelement <4 x i32> %i.mx, i32 %i.mf, i64 2
  %i.mz = insertelement <4 x i32> %i.my, i32 %i.mg, i64 3
  %i.na = sitofp <4 x i32> %i.mz to <4 x float>
  %i.nb = fmul <4 x float> %i.kn, %i.na
  store <4 x float> %i.nb, ptr %1, align 4, !tbaa !18
  %3 = add nsw i32 %i.lc, %i.lf                   ; 2 uses
  %4 = add nsw i32 %i.ll, %i.mi                   ; 3 uses
  %5 = ashr i32 %4, 1
  %6 = sub nsw i32 %i.ls, %5                      ; 2 uses
  %i.nc = add nsw i32 %6, %4                      ; 2 uses
  %i.nd = sub nsw i32 %6, %4                      ; 2 uses
  %i.ne = add nsw i32 %2, %3                      ; 2 uses
  %i.nf = sub nsw i32 %3, %2                      ; 2 uses
  %i.ng = add nsw i32 %i.nc, %i.ne
  %i.nh = sub nsw i32 %i.ne, %i.nc
  %i.ni = add nsw i32 %i.nd, %i.nf
  %i.nj = sub nsw i32 %i.nf, %i.nd
  %i.nk = insertelement <4 x i32> poison, i32 %i.nj, i64 0
  %i.nl = insertelement <4 x i32> %i.nk, i32 %i.ng, i64 1
  %i.nm = insertelement <4 x i32> %i.nl, i32 %i.nh, i64 2
  %i.nn = insertelement <4 x i32> %i.nm, i32 %i.ni, i64 3
  %i.no = sitofp <4 x i32> %i.nn to <4 x float>
  %i.np = fmul <4 x float> %i.kn, %i.no
  store <4 x float> %i.np, ptr %i.jz, align 4, !tbaa !18
  %i.nq = insertelement <4 x i32> poison, i32 %i.mu, i64 0
  %i.nr = insertelement <4 x i32> %i.nq, i32 %i.mr, i64 1
  %i.ns = insertelement <4 x i32> %i.nr, i32 %i.ms, i64 2
  %i.nt = insertelement <4 x i32> %i.ns, i32 %i.mt, i64 3
  %i.nu = sitofp <4 x i32> %i.nt to <4 x float>
  %i.nv = fmul <4 x float> %i.kn, %i.nu
  store <4 x float> %i.nv, ptr %i.ko, align 4, !tbaa !18
  %7 = add nsw i32 %i.jq, %i.ki                   ; 2 uses
  %8 = add nsw i32 %i.ld, %i.lg                   ; 2 uses
  %9 = add nsw i32 %i.ln, %i.mv                   ; 3 uses
  %10 = ashr i32 %9, 1
  %i.nw = sub nsw i32 %i.lu, %10                  ; 2 uses
  %i.nx = add nsw i32 %i.nw, %9                   ; 2 uses
  %i.ny = sub nsw i32 %i.nw, %9                   ; 2 uses
  %i.nz = add nsw i32 %7, %8                      ; 2 uses
  %i.oa = sub nsw i32 %8, %7                      ; 2 uses
  %i.ob = add nsw i32 %i.nx, %i.nz
  %i.oc = sub nsw i32 %i.nz, %i.nx
  %i.od = add nsw i32 %i.ny, %i.oa
  %i.oe = sub nsw i32 %i.oa, %i.ny
  %i.of = insertelement <4 x i32> poison, i32 %i.oc, i64 0
  %i.og = insertelement <4 x i32> %i.of, i32 %i.od, i64 1
  %i.oh = insertelement <4 x i32> %i.og, i32 %i.oe, i64 2
  %i.oi = insertelement <4 x i32> %i.oh, i32 %i.ob, i64 3
  %i.oj = sitofp <4 x i32> %i.oi to <4 x float>
  %i.ok = fmul <4 x float> %i.kn, %i.oj
  %i.ol = shufflevector <4 x float> %i.ok, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x float> %i.ol, ptr %i.kp, align 4, !tbaa !18
  br label %decode_block_float_2.exit

bb.aw:                                            ; preds = %.preheader.preheader.i16
  %i.om = add i32 %i.fs, -1
  %i.on = zext i32 %i.om to i64
  %i.oo = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 3 uses
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !14
  %i.oq = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !20 ; 2 uses
  %i.os = ptrtoint ptr %i.op to i64
  %i.ot = ptrtoint ptr %i.or to i64
  %i.ou = sub i64 %i.os, %i.ot
  %i.ov = shl i64 %i.ou, 3
  %i.ow = sub i64 %i.ov, %i.fn
  %i.ox = add i64 %i.ow, %i.on                    ; 2 uses
  %i.oy = and i64 %i.ox, 63                       ; 3 uses
  %i.oz = lshr i64 %i.ox, 6
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.oz ; 3 uses
  store ptr %i.pa, ptr %i.oo, align 8, !tbaa !14
  %.not.i.i.i17 = icmp eq i64 %i.oy, 0
  br i1 %.not.i.i.i17, label %stream_skip.exit.i18, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  store ptr %i.pb, ptr %i.oo, align 8, !tbaa !14
  %i.pc = load i64, ptr %i.pa, align 8, !tbaa !15
  %i.pd = lshr i64 %i.pc, %i.oy
  %i.pe = sub nuw nsw i64 64, %i.oy
  br label %stream_skip.exit.i18

stream_skip.exit.i18:                             ; preds = %bb.ax, %bb.aw
  %.sink.i.i.i19 = phi i64 [ %i.pd, %bb.ax ], [ 0, %bb.aw ]
  %storemerge.i.i.i20 = phi i64 [ %i.pe, %bb.ax ], [ 0, %bb.aw ]
  store i64 %.sink.i.i.i19, ptr %i.fp, align 8, !tbaa !16
  store i64 %storemerge.i.i.i20, ptr %i.fh, align 8, !tbaa !13
  br label %decode_block_float_2.exit

decode_block_float_2.exit:                        ; preds = %stream_skip.exit.i18, %decode_block_int32_2.exit.i, %.preheader.preheader.i16, %rev_decode_block_float_2.exit
  %i.pf = phi i32 [ %.1.i, %rev_decode_block_float_2.exit ], [ %i.jx, %decode_block_int32_2.exit.i ], [ %i.fs, %stream_skip.exit.i18 ], [ 1, %.preheader.preheader.i16 ]
  %i.pg = zext i32 %i.pf to i64
  ret i64 %i.pg
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc i32 @rev_decode_block_int32_2(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 64)) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i32], align 256             ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16   ; 3 uses
  %i.d = load i64, ptr %0, align 8, !tbaa !13     ; 5 uses
  %i.e = icmp ult i64 %i.d, 5
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.h, ptr %i.f, align 8, !tbaa !14
  %i.i = load i64, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  %i.j = shl i64 %i.i, %i.d
  %i.k = add i64 %i.j, %i.c
  %i.l = add nuw nsw i64 %i.d, 59
  %i.m = sub nuw nsw i64 5, %i.d
  %i.n = lshr i64 %i.i, %i.m
  br label %stream_read_bits.exit

bb.c:                                             ; preds = %bb.a
  %i.o = add i64 %i.d, -5
  %i.p = lshr i64 %i.c, 5
  br label %stream_read_bits.exit

stream_read_bits.exit:                            ; preds = %bb.b, %bb.c
  %.sink = phi i64 [ %i.l, %bb.b ], [ %i.o, %bb.c ]
  %storemerge = phi i64 [ %i.n, %bb.b ], [ %i.p, %bb.c ]
  %.0.i.in = phi i64 [ %i.k, %bb.b ], [ %i.c, %bb.c ]
  store i64 %.sink, ptr %0, align 8, !tbaa !13
  store i64 %storemerge, ptr %i.b, align 8, !tbaa !16
  %i.q = trunc i64 %.0.i.in to i32
  %i.r = and i32 %i.q, 31
  %i.s = add nuw nsw i32 %i.r, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.t = add i32 %2, -5
  %i.u = call fastcc i32 @decode_ints_uint32(ptr noundef nonnull %0, i32 noundef %i.t, i32 noundef %i.s, ptr noundef %i.a)
  %i.v = add i32 %i.u, 5                          ; 3 uses
  %i.w = icmp ult i32 %i.v, %1
  br i1 %i.w, label %bb.d, label %bb.f

bb.d:                                             ; preds = %stream_read_bits.exit
  %i.x = sub nuw i32 %1, %i.v
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20 ; 2 uses
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = shl i64 %i.af, 3
  %i.ah = load i64, ptr %0, align 8, !tbaa !13
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = add i64 %i.ai, %i.y                     ; 2 uses
  %i.ak = and i64 %i.aj, 63                       ; 3 uses
  %i.al = lshr i64 %i.aj, 6
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.al ; 3 uses
  store ptr %i.am, ptr %i.z, align 8, !tbaa !14
  %.not.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i, label %stream_skip.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.an, ptr %i.z, align 8, !tbaa !14
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !15
  %i.ap = lshr i64 %i.ao, %i.ak
  %i.aq = sub nuw nsw i64 64, %i.ak
  br label %stream_skip.exit

stream_skip.exit:                                 ; preds = %bb.d, %bb.e
  %.sink.i.i = phi i64 [ %i.ap, %bb.e ], [ 0, %bb.d ]
  %storemerge.i.i = phi i64 [ %i.aq, %bb.e ], [ 0, %bb.d ]
  store i64 %.sink.i.i, ptr %i.b, align 8, !tbaa !16
  store i64 %storemerge.i.i, ptr %0, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %stream_skip.exit, %stream_read_bits.exit
  %.0 = phi i32 [ %1, %stream_skip.exit ], [ %i.v, %stream_read_bits.exit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.as = load i32, ptr %i.a, align 256, !tbaa !19
  %i.at = xor i32 %i.as, -1431655766
  %i.au = add i32 %i.at, 1431655766               ; 3 uses
  store i32 %i.au, ptr %3, align 4, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aw = load i32, ptr %i.ar, align 4, !tbaa !19
  %i.ax = xor i32 %i.aw, -1431655766
  %i.ay = add i32 %i.ax, 1431655766               ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bb = load i32, ptr %i.av, align 8, !tbaa !19
  %i.bc = xor i32 %i.bb, -1431655766
  %i.bd = add i32 %i.bc, 1431655766               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bg = load i32, ptr %i.ba, align 4, !tbaa !19
  %i.bh = xor i32 %i.bg, -1431655766
  %i.bi = add i32 %i.bh, 1431655766               ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.bl = load i32, ptr %i.bf, align 16, !tbaa !19
  %i.bm = xor i32 %i.bl, -1431655766
  %i.bn = add i32 %i.bm, 1431655766               ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bq = load i32, ptr %i.bk, align 4, !tbaa !19
  %i.br = xor i32 %i.bq, -1431655766
  %i.bs = add i32 %i.br, 1431655766               ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.bv = load i32, ptr %i.bp, align 8, !tbaa !19
  %i.bw = xor i32 %i.bv, -1431655766
  %i.bx = add i32 %i.bw, 1431655766               ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ca = load i32, ptr %i.bu, align 4, !tbaa !19
  %i.cb = xor i32 %i.ca, -1431655766
  %i.cc = add i32 %i.cb, 1431655766               ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.cf = load i32, ptr %i.bz, align 32, !tbaa !19
  %i.cg = xor i32 %i.cf, -1431655766
  %i.ch = add i32 %i.cg, 1431655766               ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ck = load i32, ptr %i.ce, align 4, !tbaa !19
  %i.cl = xor i32 %i.ck, -1431655766
  %i.cm = add i32 %i.cl, 1431655766
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.cp = load i32, ptr %i.cj, align 8, !tbaa !19
  %i.cq = xor i32 %i.cp, -1431655766
  %i.cr = add i32 %i.cq, 1431655766               ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.cu = load i32, ptr %i.co, align 4, !tbaa !19
  %i.cv = xor i32 %i.cu, -1431655766
  %i.cw = add i32 %i.cv, 1431655766               ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 28
end_hunk_0
