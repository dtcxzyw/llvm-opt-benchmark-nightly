Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/decode2d?download=true
inline.NumInlined: 46
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@zfp_decode_block_double_2:bb.a
rev_decode_block_double_2.exit:                   ; preds = %.preheader.preheader.i, %rev_inv_reinterpret_double.exit.i, %.preheader.preheader.i.i, %bb.am, %stream_skip.exit.i
  %.1.i = phi i32 [ %i.ah, %rev_inv_reinterpret_double.exit.i ], [ 1, %.preheader.preheader.i ], [ %i.r, %stream_skip.exit.i ], [ %i.dq, %.preheader.preheader.i.i ], [ %i.dq, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %decode_block_double_2.exit

bb.ap:                                            ; preds = %bb.a
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !24 ; 15 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !13 ; 2 uses
  %.not.i.i5 = icmp eq i64 %i.gc, 0
  br i1 %.not.i.i5, label %bb.aq, label %._crit_edge.i.i6

._crit_edge.i.i6:                                 ; preds = %bb.ap
  %.phi.trans.insert.i.i7 = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = add i64 %i.gc, -1
  br label %stream_read_bit.exit.i8

bb.aq:                                            ; preds = %bb.ap
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !14 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store ptr %i.gg, ptr %i.ge, align 8, !tbaa !14
  br label %stream_read_bit.exit.i8

stream_read_bit.exit.i8:                          ; preds = %bb.aq, %._crit_edge.i.i6
  %.in.i.i9 = phi ptr [ %i.gf, %bb.aq ], [ %.phi.trans.insert.i.i7, %._crit_edge.i.i6 ]
  %i.gh = phi i64 [ 63, %bb.aq ], [ %i.gd, %._crit_edge.i.i6 ] ; 7 uses
  %i.gi = load i64, ptr %.in.i.i9, align 8, !tbaa !15 ; 3 uses
  store i64 %i.gh, ptr %i.gb, align 8, !tbaa !13
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gb, i64 8 ; 4 uses
  %i.gk = lshr i64 %i.gi, 1                       ; 3 uses
  store i64 %i.gk, ptr %i.gj, align 8, !tbaa !16
  %i.gl = and i64 %i.gi, 1
  %.not.i10 = icmp eq i64 %i.gl, 0
  br i1 %.not.i10, label %.preheader.preheader.i16, label %bb.ar

.preheader.preheader.i16:                         ; preds = %stream_read_bit.exit.i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %1, i8 0, i64 128, i1 false), !tbaa !18
  %i.gm = load i32, ptr %0, align 8, !tbaa !25    ; 3 uses
  %i.gn = icmp ugt i32 %i.gm, 1
  br i1 %i.gn, label %bb.aw, label %decode_block_double_2.exit

bb.ar:                                            ; preds = %stream_read_bit.exit.i8
  %i.go = icmp ult i64 %i.gh, 11
  br i1 %i.go, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !14 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store ptr %i.gr, ptr %i.gp, align 8, !tbaa !14
  %i.gs = load i64, ptr %i.gq, align 8, !tbaa !15 ; 2 uses
  %i.gt = shl i64 %i.gs, %i.gh
  %i.gu = add i64 %i.gt, %i.gk
  %i.gv = add nuw nsw i64 %i.gh, 53
  %i.gw = sub nuw nsw i64 11, %i.gh
  %i.gx = lshr i64 %i.gs, %i.gw
  br label %stream_read_bits.exit.i11

bb.at:                                            ; preds = %bb.ar
  %i.gy = add i64 %i.gh, -11
  %i.gz = lshr i64 %i.gi, 12
  br label %stream_read_bits.exit.i11

stream_read_bits.exit.i11:                        ; preds = %bb.at, %bb.as
  %.sink.i12 = phi i64 [ %i.gv, %bb.as ], [ %i.gy, %bb.at ]
  %storemerge.i13 = phi i64 [ %i.gx, %bb.as ], [ %i.gz, %bb.at ]
  %.0.i.in.i14 = phi i64 [ %i.gu, %bb.as ], [ %i.gk, %bb.at ]
  store i64 %.sink.i12, ptr %i.gb, align 8, !tbaa !13
  store i64 %storemerge.i13, ptr %i.gj, align 8, !tbaa !16
  %i.ha = trunc i64 %.0.i.in.i14 to i32
  %i.hb = and i32 %i.ha, 2047                     ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !27
  %reass.sub = sub nsw i32 %i.hb, %i.d            ; 2 uses
  %i.he = add i32 %reass.sub, -1023
  %i.hf = add i32 %reass.sub, -1017
  %i.hg = icmp sgt i32 %i.he, -7
  %spec.select15.i.i = tail call i32 @llvm.umin.i32(i32 %i.hd, i32 %i.hf)
  %i.hh = select i1 %i.hg, i32 %spec.select15.i.i, i32 0
  %i.hi = load i32, ptr %0, align 8, !tbaa !25
  %i.hj = tail call i32 @llvm.usub.sat.i32(i32 %i.hi, i32 12) ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !26
  %i.hm = add i32 %i.hl, -12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.hn = call fastcc i32 @decode_ints_uint64(ptr noundef nonnull %i.gb, i32 noundef %i.hm, i32 noundef range(i32 0, -2147483648) %i.hh, ptr noundef %i.a) ; 3 uses
  %i.ho = icmp ult i32 %i.hn, %i.hj
  br i1 %i.ho, label %bb.au, label %decode_block_int64_2.exit.i

bb.au:                                            ; preds = %stream_read_bits.exit.i11
  %i.hp = sub nuw i32 %i.hj, %i.hn
  %i.hq = zext i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 3 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !14
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !19 ; 2 uses
  %i.hv = ptrtoint ptr %i.hs to i64
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = sub i64 %i.hv, %i.hw
  %i.hy = shl i64 %i.hx, 3
  %i.hz = load i64, ptr %i.gb, align 8, !tbaa !13
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = add i64 %i.ia, %i.hq                    ; 2 uses
  %i.ic = and i64 %i.ib, 63                       ; 3 uses
  %i.id = lshr i64 %i.ib, 6
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.id ; 3 uses
  store ptr %i.ie, ptr %i.hr, align 8, !tbaa !14
  %.not.i.i.i.i = icmp eq i64 %i.ic, 0
  br i1 %.not.i.i.i.i, label %stream_skip.exit.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store ptr %i.if, ptr %i.hr, align 8, !tbaa !14
  %i.ig = load i64, ptr %i.ie, align 8, !tbaa !15
  %i.ih = lshr i64 %i.ig, %i.ic
  %i.ii = sub nuw nsw i64 64, %i.ic
  br label %stream_skip.exit.i.i

stream_skip.exit.i.i:                             ; preds = %bb.av, %bb.au
  %.sink.i.i.i.i = phi i64 [ %i.ih, %bb.av ], [ 0, %bb.au ]
  %storemerge.i.i.i.i = phi i64 [ %i.ii, %bb.av ], [ 0, %bb.au ]
  store i64 %.sink.i.i.i.i, ptr %i.gj, align 8, !tbaa !16
  store i64 %storemerge.i.i.i.i, ptr %i.gb, align 8, !tbaa !13
  br label %decode_block_int64_2.exit.i

decode_block_int64_2.exit.i:                      ; preds = %stream_skip.exit.i.i, %stream_read_bits.exit.i11
  %.0.i32.i = phi i32 [ %i.hj, %stream_skip.exit.i.i ], [ %i.hn, %stream_read_bits.exit.i11 ]
  %i.ij = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.il = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.im = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.in = load i64, ptr %i.il, align 8, !tbaa !15
  %i.io = xor i64 %i.in, -6148914691236517206
  %i.ip = add i64 %i.io, 6148914691236517206
  %i.iq = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ir = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.is = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.it = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.iu = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.iv = load i64, ptr %i.it, align 64, !tbaa !15
  %i.iw = xor i64 %i.iv, -6148914691236517206     ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.iy = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.iz = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.ja = load i64, ptr %i.iy, align 8, !tbaa !15
  %i.jb = xor i64 %i.ja, -6148914691236517206
  %i.jc = add i64 %i.jb, 6148914691236517206
  %i.jd = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.je = load i64, ptr %i.iz, align 32, !tbaa !15
  %i.jf = xor i64 %i.je, -6148914691236517206
  %i.jg = add i64 %i.jf, 6148914691236517206      ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.ji = load i64, ptr %i.jd, align 8, !tbaa !15
  %i.jj = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !15
  %i.jl = xor i64 %i.jk, -6148914691236517206
  %i.jm = add i64 %i.jl, 6148914691236517206      ; 2 uses
  %i.jn = ashr i64 %i.jg, 1
  %i.jo = add nsw i64 %i.ip, %i.jn                ; 3 uses
  %i.jp = ashr i64 %i.jo, 1
  %i.jq = sub nsw i64 %i.jg, %i.jp                ; 2 uses
  %i.jr = add nsw i64 %i.jq, %i.jo                ; 2 uses
  %i.js = ashr i64 %i.jm, 1
  %i.jt = add nsw i64 %i.jc, %i.js                ; 3 uses
  %i.ju = ashr i64 %i.jt, 1
  %i.jv = sub nsw i64 %i.jm, %i.ju                ; 2 uses
  %i.jw = add i64 %i.iw, -6148914691236517204
  %i.jx = add i32 %.0.i32.i, 12
  %i.jy = add nsw i32 %i.hb, -1085
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ka = load i64, ptr %i.ij, align 8, !tbaa !15
  %i.kb = xor i64 %i.ka, -6148914691236517206     ; 2 uses
  %i.kc = sub nsw i64 %i.jq, %i.jo                ; 2 uses
  %i.kd = add i64 %i.kb, -6148914691236517204
  %i.ke = sub nsw i64 %i.jv, %i.jt                ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.kg = load i64, ptr %i.a, align 256, !tbaa !15
  %i.kh = load i64, ptr %i.im, align 32, !tbaa !15
  %i.ki = xor i64 %i.kh, -6148914691236517206     ; 2 uses
  %i.kj = load i64, ptr %i.iq, align 8, !tbaa !15
  %i.kk = load i64, ptr %i.ir, align 16, !tbaa !15
  %i.kl = xor i64 %i.kk, -6148914691236517206
  %i.km = add i64 %i.kl, 6148914691236517206
  %i.kn = load i64, ptr %i.ix, align 16, !tbaa !15
  %i.ko = load i64, ptr %i.jh, align 16, !tbaa !15
  %i.kp = xor i64 %i.ko, -6148914691236517206
  %i.kq = add i64 %i.kp, 6148914691236517206      ; 2 uses
  %i.kr = ashr i64 %i.kq, 1
  %i.ks = add nsw i64 %i.km, %i.kr                ; 3 uses
  %i.kt = ashr i64 %i.ks, 1
  %i.ku = sub nsw i64 %i.kq, %i.kt                ; 2 uses
  %i.kv = add nsw i64 %i.ku, %i.ks                ; 2 uses
  %i.kw = sub nsw i64 %i.ku, %i.ks                ; 2 uses
  %i.kx = add i64 %i.ki, -6148914691236517204
  %i.ky = load i64, ptr %i.ik, align 16, !tbaa !15
  %i.kz = xor i64 %i.ky, -6148914691236517206
  %i.la = xor i64 %i.kn, -6148914691236517206     ; 2 uses
  %i.lb = add i64 %i.kx, %i.la                    ; 2 uses
  %i.lc = sub i64 %i.ki, %i.la                    ; 2 uses
  %2 = add nsw i64 %i.kv, %i.lb                   ; 2 uses
  %i.ld = add nsw i64 %i.kw, %i.lc                ; 2 uses
  %i.le = sub nsw i64 %i.lc, %i.kw                ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.lg = load i64, ptr %i.is, align 8, !tbaa !15
  %i.lh = add nsw i64 %i.jv, %i.jt                ; 2 uses
  %i.li = xor i64 %i.lg, -6148914691236517206     ; 2 uses
  %i.lj = xor i64 %i.ji, -6148914691236517206     ; 2 uses
  %i.lk = add i64 %i.kd, %i.li                    ; 2 uses
  %i.ll = sub i64 %i.kb, %i.li                    ; 2 uses
  %i.lm = add nsw i64 %i.jr, %i.lk
  %i.ln = sub nsw i64 %i.lk, %i.jr
  %i.lo = add nsw i64 %i.kc, %i.ll
  %i.lp = sub nsw i64 %i.ll, %i.kc
  %i.lq = add i64 %i.jw, %i.lj                    ; 2 uses
  %i.lr = sub i64 %i.iw, %i.lj                    ; 2 uses
  %i.ls = add nsw i64 %i.lh, %i.lq                ; 2 uses
  %i.lt = sub nsw i64 %i.lq, %i.lh                ; 2 uses
  %i.lu = add nsw i64 %i.ke, %i.lr                ; 2 uses
  %i.lv = sub nsw i64 %i.lr, %i.ke                ; 2 uses
  %i.lw = ashr i64 %i.lv, 1
  %i.lx = add nsw i64 %i.lw, %i.lp                ; 3 uses
  %i.ly = ashr i64 %i.lx, 1
  %i.lz = sub nsw i64 %i.lv, %i.ly                ; 2 uses
  %i.ma = add nsw i64 %i.lz, %i.lx                ; 2 uses
  %i.mb = sub nsw i64 %i.lz, %i.lx                ; 2 uses
  %3 = ashr i64 %i.ls, 1
  %4 = add nsw i64 %i.lm, %3                      ; 3 uses
  %i.mc = ashr i64 %4, 1
  %5 = sub nsw i64 %i.ls, %i.mc                   ; 2 uses
  %i.md = ashr i64 %i.lt, 1
  %i.me = add nsw i64 %i.md, %i.ln                ; 3 uses
  %i.mf = ashr i64 %i.me, 1
  %i.mg = sub nsw i64 %i.lt, %i.mf                ; 2 uses
  %i.mh = add nsw i64 %i.mg, %i.me                ; 2 uses
  %i.mi = sub nsw i64 %i.mg, %i.me                ; 2 uses
  %6 = ashr i64 %i.lu, 1
  %7 = add nsw i64 %i.lo, %6                      ; 3 uses
  %i.mj = ashr i64 %7, 1
  %i.mk = load i64, ptr %i.iu, align 8, !tbaa !15
  %i.ml = xor i64 %i.mk, -6148914691236517206
  %i.mm = xor i64 %i.kg, -6148914691236517206     ; 2 uses
  %i.mn = add i64 %i.kz, 6148914691236517206
  %i.mo = xor i64 %i.kj, -6148914691236517206     ; 2 uses
  %i.mp = add i64 %i.ml, 6148914691236517206      ; 2 uses
  %i.mq = ashr i64 %i.mp, 1
  %i.mr = add nsw i64 %i.mn, %i.mq                ; 3 uses
  %i.ms = ashr i64 %i.mr, 1
  %i.mt = sub nsw i64 %i.mp, %i.ms                ; 2 uses
  %i.mu = add nsw i64 %i.mt, %i.mr                ; 2 uses
  %i.mv = sub nsw i64 %i.mt, %i.mr                ; 2 uses
  %i.mw = add i64 %i.mm, -6148914691236517204
  %i.mx = add i64 %i.mw, %i.mo                    ; 2 uses
  %i.my = sub i64 %i.mm, %i.mo                    ; 2 uses
  %i.mz = add nsw i64 %i.mu, %i.mx                ; 2 uses
  %i.na = sub nsw i64 %i.mx, %i.mu                ; 2 uses
  %8 = add nsw i64 %i.mv, %i.my                   ; 2 uses
  %i.nb = sub nsw i64 %i.my, %i.mv                ; 2 uses
  %i.nc = sub nsw i64 %i.lb, %i.kv                ; 2 uses
  %i.nd = add nsw i64 %i.le, %i.nb                ; 2 uses
  %i.ne = sub nsw i64 %i.nb, %i.le                ; 2 uses
  %i.nf = add nsw i64 %i.ma, %i.nd
  %i.ng = sub nsw i64 %i.nd, %i.ma
  %i.nh = add nsw i64 %i.mb, %i.ne
  %i.ni = sub nsw i64 %i.ne, %i.mb
  %i.nj = add nsw i64 %5, %4                      ; 2 uses
  %i.nk = sub nsw i64 %5, %4                      ; 2 uses
  %i.nl = add nsw i64 %2, %i.mz                   ; 2 uses
  %i.nm = sub nsw i64 %i.mz, %2                   ; 2 uses
  %i.nn = add nsw i64 %i.nj, %i.nl
  %i.no = sub nsw i64 %i.nl, %i.nj
  %i.np = add nsw i64 %i.nk, %i.nm
  %i.nq = sub nsw i64 %i.nm, %i.nk
  %i.nr = add nsw i64 %i.nc, %i.na                ; 2 uses
  %i.ns = sub nsw i64 %i.na, %i.nc                ; 2 uses
  %i.nt = add nsw i64 %i.mh, %i.nr
  %i.nu = sub nsw i64 %i.nr, %i.mh
  %i.nv = add nsw i64 %i.mi, %i.ns
  %i.nw = sub nsw i64 %i.ns, %i.mi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.nx = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef %i.jy) #8
  %i.ny = sitofp i64 %i.ni to double
  %i.nz = sitofp i64 %i.nf to double
  %i.oa = sitofp i64 %i.ng to double
  %i.ob = sitofp i64 %i.nh to double
  %i.oc = insertelement <4 x double> poison, double %i.nx, i64 0
  %i.od = shufflevector <4 x double> %i.oc, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.oe = insertelement <4 x double> poison, double %i.ny, i64 0
  %i.of = insertelement <4 x double> %i.oe, double %i.nz, i64 1
  %i.og = insertelement <4 x double> %i.of, double %i.oa, i64 2
  %i.oh = insertelement <4 x double> %i.og, double %i.ob, i64 3
  %i.oi = fmul <4 x double> %i.od, %i.oh
  store <4 x double> %i.oi, ptr %1, align 8, !tbaa !18
  %i.oj = sitofp i64 %i.nq to double
  %i.ok = sitofp i64 %i.nn to double
  %i.ol = sitofp i64 %i.no to double
  %i.om = sitofp i64 %i.np to double
  %i.on = insertelement <4 x double> poison, double %i.oj, i64 0
  %i.oo = insertelement <4 x double> %i.on, double %i.ok, i64 1
  %i.op = insertelement <4 x double> %i.oo, double %i.ol, i64 2
  %i.oq = insertelement <4 x double> %i.op, double %i.om, i64 3
  %i.or = fmul <4 x double> %i.od, %i.oq
  store <4 x double> %i.or, ptr %i.jz, align 8, !tbaa !18
  %i.os = sitofp i64 %i.nw to double
  %i.ot = sitofp i64 %i.nt to double
  %i.ou = sitofp i64 %i.nu to double
  %i.ov = sitofp i64 %i.nv to double
  %i.ow = insertelement <4 x double> poison, double %i.os, i64 0
  %i.ox = insertelement <4 x double> %i.ow, double %i.ot, i64 1
  %i.oy = insertelement <4 x double> %i.ox, double %i.ou, i64 2
  %i.oz = insertelement <4 x double> %i.oy, double %i.ov, i64 3
  %i.pa = fmul <4 x double> %i.od, %i.oz
  store <4 x double> %i.pa, ptr %i.kf, align 8, !tbaa !18
  %i.pb = sub nsw i64 %i.lu, %i.mj                ; 2 uses
  %i.pc = add nsw i64 %i.pb, %7                   ; 2 uses
  %i.pd = sub nsw i64 %i.pb, %7                   ; 2 uses
  %i.pe = add nsw i64 %i.ld, %8                   ; 2 uses
  %i.pf = sub nsw i64 %8, %i.ld                   ; 2 uses
  %i.pg = add nsw i64 %i.pc, %i.pe
  %i.ph = sub nsw i64 %i.pe, %i.pc
  %i.pi = add nsw i64 %i.pd, %i.pf
  %i.pj = sub nsw i64 %i.pf, %i.pd
  %i.pk = sitofp i64 %i.pj to double
  %i.pl = sitofp i64 %i.pg to double
  %i.pm = sitofp i64 %i.ph to double
  %i.pn = sitofp i64 %i.pi to double
  %i.po = insertelement <4 x double> poison, double %i.pk, i64 0
  %i.pp = insertelement <4 x double> %i.po, double %i.pl, i64 1
  %i.pq = insertelement <4 x double> %i.pp, double %i.pm, i64 2
  %i.pr = insertelement <4 x double> %i.pq, double %i.pn, i64 3
  %i.ps = fmul <4 x double> %i.od, %i.pr
  store <4 x double> %i.ps, ptr %i.lf, align 8, !tbaa !18
  br label %decode_block_double_2.exit

bb.aw:                                            ; preds = %.preheader.preheader.i16
  %i.pt = add i32 %i.gm, -1
  %i.pu = zext i32 %i.pt to i64
  %i.pv = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 3 uses
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !14
  %i.px = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !19 ; 2 uses
  %i.pz = ptrtoint ptr %i.pw to i64
  %i.qa = ptrtoint ptr %i.py to i64
  %i.qb = sub i64 %i.pz, %i.qa
  %i.qc = shl i64 %i.qb, 3
  %i.qd = sub i64 %i.qc, %i.gh
  %i.qe = add i64 %i.qd, %i.pu                    ; 2 uses
  %i.qf = and i64 %i.qe, 63                       ; 3 uses
  %i.qg = lshr i64 %i.qe, 6
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.py, i64 %i.qg ; 3 uses
  store ptr %i.qh, ptr %i.pv, align 8, !tbaa !14
  %.not.i.i.i17 = icmp eq i64 %i.qf, 0
  br i1 %.not.i.i.i17, label %stream_skip.exit.i18, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  store ptr %i.qi, ptr %i.pv, align 8, !tbaa !14
  %i.qj = load i64, ptr %i.qh, align 8, !tbaa !15
  %i.qk = lshr i64 %i.qj, %i.qf
  %i.ql = sub nuw nsw i64 64, %i.qf
  br label %stream_skip.exit.i18

stream_skip.exit.i18:                             ; preds = %bb.ax, %bb.aw
  %.sink.i.i.i19 = phi i64 [ %i.qk, %bb.ax ], [ 0, %bb.aw ]
  %storemerge.i.i.i20 = phi i64 [ %i.ql, %bb.ax ], [ 0, %bb.aw ]
  store i64 %.sink.i.i.i19, ptr %i.gj, align 8, !tbaa !16
  store i64 %storemerge.i.i.i20, ptr %i.gb, align 8, !tbaa !13
  br label %decode_block_double_2.exit

decode_block_double_2.exit:                       ; preds = %stream_skip.exit.i18, %decode_block_int64_2.exit.i, %.preheader.preheader.i16, %rev_decode_block_double_2.exit
  %i.qm = phi i32 [ %.1.i, %rev_decode_block_double_2.exit ], [ %i.jx, %decode_block_int64_2.exit.i ], [ %i.gm, %stream_skip.exit.i18 ], [ 1, %.preheader.preheader.i16 ]
  %i.qn = zext i32 %i.qm to i64
  ret i64 %i.qn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc i32 @rev_decode_block_int64_2(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 128)) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i64], align 256             ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16   ; 3 uses
  %i.d = load i64, ptr %0, align 8, !tbaa !13     ; 5 uses
  %i.e = icmp ult i64 %i.d, 6
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.h, ptr %i.f, align 8, !tbaa !14
  %i.i = load i64, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  %i.j = shl i64 %i.i, %i.d
  %i.k = add i64 %i.j, %i.c
  %i.l = add nuw nsw i64 %i.d, 58
  %i.m = sub nuw nsw i64 6, %i.d
  %i.n = lshr i64 %i.i, %i.m
  br label %stream_read_bits.exit

bb.c:                                             ; preds = %bb.a
  %i.o = add i64 %i.d, -6
  %i.p = lshr i64 %i.c, 6
  br label %stream_read_bits.exit

stream_read_bits.exit:                            ; preds = %bb.b, %bb.c
  %.sink = phi i64 [ %i.l, %bb.b ], [ %i.o, %bb.c ]
  %storemerge = phi i64 [ %i.n, %bb.b ], [ %i.p, %bb.c ]
  %.0.i.in = phi i64 [ %i.k, %bb.b ], [ %i.c, %bb.c ]
  store i64 %.sink, ptr %0, align 8, !tbaa !13
  store i64 %storemerge, ptr %i.b, align 8, !tbaa !16
  %i.q = trunc i64 %.0.i.in to i32
  %i.r = and i32 %i.q, 63
  %i.s = add nuw nsw i32 %i.r, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.t = add i32 %2, -6
  %i.u = call fastcc i32 @decode_ints_uint64(ptr noundef nonnull %0, i32 noundef %i.t, i32 noundef %i.s, ptr noundef %i.a)
  %i.v = add i32 %i.u, 6                          ; 3 uses
  %i.w = icmp ult i32 %i.v, %1
  br i1 %i.w, label %bb.d, label %bb.f

bb.d:                                             ; preds = %stream_read_bits.exit
  %i.x = sub nuw i32 %1, %i.v
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !19 ; 2 uses
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
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.as = load i64, ptr %i.a, align 256, !tbaa !15
  %i.at = xor i64 %i.as, -6148914691236517206
  %i.au = add i64 %i.at, 6148914691236517206      ; 3 uses
  store i64 %i.au, ptr %3, align 8, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aw = load i64, ptr %i.ar, align 8, !tbaa !15
  %i.ax = xor i64 %i.aw, -6148914691236517206
  %i.ay = add i64 %i.ax, 6148914691236517206      ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bb = load i64, ptr %i.av, align 16, !tbaa !15
  %i.bc = xor i64 %i.bb, -6148914691236517206
  %i.bd = add i64 %i.bc, 6148914691236517206      ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !15
  %i.bh = xor i64 %i.bg, -6148914691236517206
  %i.bi = add i64 %i.bh, 6148914691236517206      ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bl = load i64, ptr %i.bf, align 32, !tbaa !15
  %i.bm = xor i64 %i.bl, -6148914691236517206
  %i.bn = add i64 %i.bm, 6148914691236517206      ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !15
  %i.br = xor i64 %i.bq, -6148914691236517206
  %i.bs = add i64 %i.br, 6148914691236517206      ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bv = load i64, ptr %i.bp, align 16, !tbaa !15
  %i.bw = xor i64 %i.bv, -6148914691236517206
  %i.bx = add i64 %i.bw, 6148914691236517206      ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ca = load i64, ptr %i.bu, align 8, !tbaa !15
  %i.cb = xor i64 %i.ca, -6148914691236517206
  %i.cc = add i64 %i.cb, 6148914691236517206      ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.cf = load i64, ptr %i.bz, align 64, !tbaa !15
  %i.cg = xor i64 %i.cf, -6148914691236517206
  %i.ch = add i64 %i.cg, 6148914691236517206      ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ck = load i64, ptr %i.ce, align 8, !tbaa !15
  %i.cl = xor i64 %i.ck, -6148914691236517206
  %i.cm = add i64 %i.cl, 6148914691236517206
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.cp = load i64, ptr %i.cj, align 16, !tbaa !15
  %i.cq = xor i64 %i.cp, -6148914691236517206
  %i.cr = add i64 %i.cq, 6148914691236517206      ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.cu = load i64, ptr %i.co, align 8, !tbaa !15
  %i.cv = xor i64 %i.cu, -6148914691236517206
end_hunk_0
