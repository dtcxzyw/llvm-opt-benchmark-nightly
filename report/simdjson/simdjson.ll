inline.NumInlined: 1188
inline.NumDeleted: 362
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK8simdjson7haswell14implementation6minifyEPKhmPhRm:bb.a
  %i.de = and i64 %i.cv, 255
  %i.df = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !13
  %i.dh = and i64 %i.ct, 255                      ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !13
  %i.dk = insertelement <4 x i64> poison, i64 %i.dj, i64 0
  %i.dl = insertelement <4 x i64> %i.dk, i64 %i.dg, i64 1
  %i.dm = insertelement <4 x i64> %i.dl, i64 %i.dd, i64 2
  %i.dn = insertelement <4 x i64> %i.dm, i64 %i.da, i64 3
  %i.do = bitcast <4 x i64> %i.dn to <32 x i8>
  %i.dp = add <32 x i8> %i.do, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24>
  %i.dq = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.d, <32 x i8> %i.dp)
  %i.dr = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.dh
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !9
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.db
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !9
  %i.dw = zext i8 %i.dv to i64
  %i.dx = shl nuw nsw i64 %i.dt, 3
  %i.dy = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.dx
  %i.dz = load <4 x i32>, ptr %i.dy, align 8, !tbaa !9
  %i.ea = shl nuw nsw i64 %i.dw, 3
  %i.eb = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.ea
  %i.ec = load <4 x i32>, ptr %i.eb, align 8, !tbaa !9
  %i.ed = shufflevector <4 x i32> %i.dz, <4 x i32> %i.ec, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ee = bitcast <8 x i32> %i.ed to <32 x i8>
  %i.ef = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.dq, <32 x i8> %i.ee) ; 2 uses
  %i.eg = bitcast <32 x i8> %i.ef to <4 x i64>
  %i.eh = shufflevector <4 x i64> %i.eg, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.eh, ptr %.sroa.41.0614.i, align 1, !tbaa !9
  %i.ei = bitcast <32 x i8> %i.ef to <8 x i32>
  %i.ej = shufflevector <8 x i32> %i.ei, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.41.0614.i, i64 16
  %i.el = and i64 %i.ct, 65535
  %i.em = tail call noundef range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.el)
  %i.en = sub nsw i64 0, %i.em
  %i.eo = getelementptr inbounds i8, ptr %i.ek, i64 %i.en
  store <4 x i32> %i.ej, ptr %i.eo, align 1, !tbaa !9
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.41.0614.i, i64 32
  %i.eq = and i64 %i.ct, 4294967295
  %i.er = tail call noundef range(i64 0, 33) i64 @llvm.ctpop.i64(i64 %i.eq)
  %i.es = sub nsw i64 0, %i.er
  %i.et = getelementptr inbounds i8, ptr %i.ep, i64 %i.es ; 2 uses
  %i.eu = lshr i64 %i.ct, 40
  %i.ev = lshr i64 %i.ct, 48
  %i.ew = lshr i64 %i.ct, 56
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.ew
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !13
  %i.ez = and i64 %i.ev, 255                      ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.ez
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !13
  %i.fc = and i64 %i.eu, 255
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !13
  %i.ff = and i64 %i.cu, 255                      ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !13
  %i.fi = insertelement <4 x i64> poison, i64 %i.fh, i64 0
  %i.fj = insertelement <4 x i64> %i.fi, i64 %i.fe, i64 1
  %i.fk = insertelement <4 x i64> %i.fj, i64 %i.fb, i64 2
  %i.fl = insertelement <4 x i64> %i.fk, i64 %i.ey, i64 3
  %i.fm = bitcast <4 x i64> %i.fl to <32 x i8>
  %i.fn = add <32 x i8> %i.fm, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24>
  %i.fo = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.f, <32 x i8> %i.fn)
  %i.fp = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.ff
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !9
  %i.fr = zext i8 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.ez
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !9
  %i.fu = zext i8 %i.ft to i64
  %i.fv = shl nuw nsw i64 %i.fr, 3
  %i.fw = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.fv
  %i.fx = load <4 x i32>, ptr %i.fw, align 8, !tbaa !9
  %i.fy = shl nuw nsw i64 %i.fu, 3
  %i.fz = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.fy
  %i.ga = load <4 x i32>, ptr %i.fz, align 8, !tbaa !9
  %i.gb = shufflevector <4 x i32> %i.fx, <4 x i32> %i.ga, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gc = bitcast <8 x i32> %i.gb to <32 x i8>
  %i.gd = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.fo, <32 x i8> %i.gc) ; 2 uses
  %i.ge = bitcast <32 x i8> %i.gd to <4 x i64>
  %i.gf = shufflevector <4 x i64> %i.ge, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.gf, ptr %i.et, align 1, !tbaa !9
  %i.gg = bitcast <32 x i8> %i.gd to <8 x i32>
  %i.gh = shufflevector <8 x i32> %i.gg, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.gi = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.gj = and i64 %i.cu, 65535
  %i.gk = tail call noundef range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.gj)
  %i.gl = sub nsw i64 0, %i.gk
  %i.gm = getelementptr inbounds i8, ptr %i.gi, i64 %i.gl
  store <4 x i32> %i.gh, ptr %i.gm, align 1, !tbaa !9
  %i.gn = xor i64 %i.ct, -1
  %i.go = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gn)
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.41.0614.i, i64 %i.go ; 4 uses
  %i.gq = xor i64 %i.cg, -1
  %i.gr = and i64 %i.cr, %i.gq                    ; 11 uses
  %i.gs = lshr i64 %i.gr, 32                      ; 2 uses
  %i.gt = lshr i64 %i.gr, 8
  %i.gu = lshr i64 %i.gr, 16
  %i.gv = lshr i64 %i.gr, 24
  %i.gw = and i64 %i.gv, 255
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.gw
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !13
  %i.gz = and i64 %i.gu, 255                      ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.gz
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !13
  %i.hc = and i64 %i.gt, 255
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.hc
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !13
  %i.hf = and i64 %i.gr, 255                      ; 2 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.hf
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !13
  %i.hi = insertelement <4 x i64> poison, i64 %i.hh, i64 0
  %i.hj = insertelement <4 x i64> %i.hi, i64 %i.he, i64 1
  %i.hk = insertelement <4 x i64> %i.hj, i64 %i.hb, i64 2
  %i.hl = insertelement <4 x i64> %i.hk, i64 %i.gy, i64 3
  %i.hm = bitcast <4 x i64> %i.hl to <32 x i8>
  %i.hn = add <32 x i8> %i.hm, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24>
  %i.ho = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.h, <32 x i8> %i.hn)
  %i.hp = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.hf
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !9
  %i.hr = zext i8 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.gz
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !9
  %i.hu = zext i8 %i.ht to i64
  %i.hv = shl nuw nsw i64 %i.hr, 3
  %i.hw = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.hv
  %i.hx = load <4 x i32>, ptr %i.hw, align 8, !tbaa !9
  %i.hy = shl nuw nsw i64 %i.hu, 3
  %i.hz = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.hy
  %i.ia = load <4 x i32>, ptr %i.hz, align 8, !tbaa !9
  %i.ib = shufflevector <4 x i32> %i.hx, <4 x i32> %i.ia, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ic = bitcast <8 x i32> %i.ib to <32 x i8>
  %i.id = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.ho, <32 x i8> %i.ic) ; 2 uses
  %i.ie = bitcast <32 x i8> %i.id to <4 x i64>
  %i.if = shufflevector <4 x i64> %i.ie, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.if, ptr %i.gp, align 1, !tbaa !9
  %i.ig = bitcast <32 x i8> %i.id to <8 x i32>
  %i.ih = shufflevector <8 x i32> %i.ig, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.ij = and i64 %i.gr, 65535
  %i.ik = tail call noundef range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.ij)
  %i.il = sub nsw i64 0, %i.ik
  %i.im = getelementptr inbounds i8, ptr %i.ii, i64 %i.il
  store <4 x i32> %i.ih, ptr %i.im, align 1, !tbaa !9
  %i.in = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.io = and i64 %i.gr, 4294967295
  %i.ip = tail call noundef range(i64 0, 33) i64 @llvm.ctpop.i64(i64 %i.io)
  %i.iq = sub nsw i64 0, %i.ip
  %i.ir = getelementptr inbounds i8, ptr %i.in, i64 %i.iq ; 2 uses
  %i.is = lshr i64 %i.gr, 40
  %i.it = lshr i64 %i.gr, 48
  %i.iu = lshr i64 %i.gr, 56
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.iu
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !13
  %i.ix = and i64 %i.it, 255                      ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.ix
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !13
  %i.ja = and i64 %i.is, 255
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.ja
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !13
  %i.jd = and i64 %i.gs, 255                      ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.jd
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !13
  %i.jg = insertelement <4 x i64> poison, i64 %i.jf, i64 0
  %i.jh = insertelement <4 x i64> %i.jg, i64 %i.jc, i64 1
  %i.ji = insertelement <4 x i64> %i.jh, i64 %i.iz, i64 2
  %i.jj = insertelement <4 x i64> %i.ji, i64 %i.iw, i64 3
  %i.jk = bitcast <4 x i64> %i.jj to <32 x i8>
  %i.jl = add <32 x i8> %i.jk, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24>
  %i.jm = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.j, <32 x i8> %i.jl)
  %i.jn = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.jd
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !9
  %i.jp = zext i8 %i.jo to i64
  %i.jq = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.ix
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !9
  %i.js = zext i8 %i.jr to i64
  %i.jt = shl nuw nsw i64 %i.jp, 3
  %i.ju = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.jt
  %i.jv = load <4 x i32>, ptr %i.ju, align 8, !tbaa !9
  %i.jw = shl nuw nsw i64 %i.js, 3
  %i.jx = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.jw
  %i.jy = load <4 x i32>, ptr %i.jx, align 8, !tbaa !9
  %i.jz = shufflevector <4 x i32> %i.jv, <4 x i32> %i.jy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ka = bitcast <8 x i32> %i.jz to <32 x i8>
  %i.kb = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.jm, <32 x i8> %i.ka) ; 2 uses
  %i.kc = bitcast <32 x i8> %i.kb to <4 x i64>
  %i.kd = shufflevector <4 x i64> %i.kc, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.kd, ptr %i.ir, align 1, !tbaa !9
  %i.ke = bitcast <32 x i8> %i.kb to <8 x i32>
  %i.kf = shufflevector <8 x i32> %i.ke, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.kh = and i64 %i.gs, 65535
  %i.ki = tail call noundef range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.kh)
  %i.kj = sub nsw i64 0, %i.ki
  %i.kk = getelementptr inbounds i8, ptr %i.kg, i64 %i.kj
  store <4 x i32> %i.kf, ptr %i.kk, align 1, !tbaa !9
  %i.kl = xor i64 %i.gr, -1
  %i.km = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.kl)
  %i.kn = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.km ; 2 uses
  %i.ko = add nuw i64 %.sroa.11.0612.i, 128       ; 3 uses
  %i.kp = icmp ult i64 %i.ko, %spec.select.i.i
  br i1 %i.kp, label %.noexc47.i, label %._crit_edge.i, !llvm.loop !87

._crit_edge.i:                                    ; preds = %_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i, %bb.a
  %.sroa.11.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.ko, %_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ] ; 3 uses
  %.sroa.12.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %.sroa.12.1.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ] ; 3 uses
  %.sroa.41.0.lcssa.i = phi ptr [ %3, %bb.a ], [ %i.kn, %_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ] ; 3 uses
  %.sroa.32.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.ch, %_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.kq = icmp eq i64 %2, %.sroa.11.0.lcssa.i
  br i1 %i.kq, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier6minifyILm128EEENS_10error_codeEPKhmPhRm.exit, label %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i

_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i: ; preds = %._crit_edge.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 32, i64 128, i1 false)
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0.lcssa.i
  %i.ks = sub i64 %2, %.sroa.11.0.lcssa.i         ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.kr, i64 %i.ks, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %.0..0..0..0..0.608.i = load <32 x i8>, ptr %i.a, align 16, !tbaa !9 ; 5 uses
  %.32..32..32..32..32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.32..32..32..32..32.609.i = load <32 x i8>, ptr %.32..32..32..32..32..sroa_idx, align 16, !tbaa !9 ; 5 uses
  %.64..64..64..64..64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.64..64..64..64..64.610.i = load <32 x i8>, ptr %.64..64..64..64..64..sroa_idx, align 16, !tbaa !9 ; 5 uses
  %.96..96..96..96..96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.96..96..96..96..96.611.i = load <32 x i8>, ptr %.96..96..96..96..96..sroa_idx, align 16, !tbaa !9 ; 5 uses
  %i.kt = icmp eq <32 x i8> %.0..0..0..0..0.608.i, splat (i8 92)
  %i.ku = icmp eq <32 x i8> %.32..32..32..32..32.609.i, splat (i8 92)
  %i.kv = bitcast <32 x i1> %i.kt to i32
  %i.kw = zext i32 %i.kv to i64
  %i.kx = bitcast <32 x i1> %i.ku to i32
  %i.ky = sext i32 %i.kx to i64
  %i.kz = shl nsw i64 %i.ky, 32                   ; 2 uses
  %i.la = or disjoint i64 %i.kz, %i.kw            ; 3 uses
  %.not.i119.i = icmp eq i64 %i.la, 0
  br i1 %.not.i119.i, label %.noexc43.i, label %bb.d

bb.d:                                             ; preds = %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i
  %i.lb = xor i64 %.sroa.12.0.lcssa.i, -1
  %i.lc = and i64 %i.la, %i.lb                    ; 2 uses
  %i.ld = shl i64 %i.lc, 1
  %i.le = or i64 %i.ld, -6148914691236517206
  %i.lf = sub i64 %i.le, %i.lc
  %i.lg = xor i64 %i.lf, -6148914691236517206     ; 2 uses
  %i.lh = or i64 %i.la, %.sroa.12.0.lcssa.i
  %i.li = xor i64 %i.lg, %i.lh
  %i.lj = and i64 %i.lg, %i.kz
  %i.lk = lshr i64 %i.lj, 63
  br label %.noexc43.i

.noexc43.i:                                       ; preds = %bb.d, %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i
  %.sroa.12.3.i = phi i64 [ %i.lk, %bb.d ], [ 0, %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i ] ; 3 uses
  %.sroa.0.0.i120.i = phi i64 [ %i.li, %bb.d ], [ %.sroa.12.0.lcssa.i, %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i ]
  %i.ll = icmp eq <32 x i8> %.0..0..0..0..0.608.i, splat (i8 34)
  %i.lm = icmp eq <32 x i8> %.32..32..32..32..32.609.i, splat (i8 34)
  %i.ln = bitcast <32 x i1> %i.ll to i32
  %i.lo = zext i32 %i.ln to i64
  %i.lp = bitcast <32 x i1> %i.lm to i32
  %i.lq = sext i32 %i.lp to i64
  %i.lr = shl nsw i64 %i.lq, 32
  %i.ls = or disjoint i64 %i.lr, %i.lo
  %i.lt = xor i64 %.sroa.0.0.i120.i, -1
  %i.lu = and i64 %i.ls, %i.lt
  %i.lv = insertelement <2 x i64> poison, i64 %i.lu, i64 0
  %i.lw = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.lv, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.lx = extractelement <2 x i64> %i.lw, i64 0
  %i.ly = xor i64 %i.lx, %.sroa.32.0.lcssa.i      ; 2 uses
  %i.lz = ashr i64 %i.ly, 63
  %i.ma = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <32 x i8> %.0..0..0..0..0.608.i)
  %i.mb = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <32 x i8> %.32..32..32..32..32.609.i)
  %i.mc = icmp eq <32 x i8> %.0..0..0..0..0.608.i, %i.ma
  %i.md = icmp eq <32 x i8> %.32..32..32..32..32.609.i, %i.mb
  %i.me = bitcast <32 x i1> %i.mc to i32
  %i.mf = zext i32 %i.me to i64
  %i.mg = bitcast <32 x i1> %i.md to i32
  %i.mh = sext i32 %i.mg to i64
  %i.mi = shl nsw i64 %i.mh, 32
  %i.mj = or disjoint i64 %i.mi, %i.mf
  %i.mk = icmp eq <32 x i8> %.64..64..64..64..64.610.i, splat (i8 92)
  %i.ml = icmp eq <32 x i8> %.96..96..96..96..96.611.i, splat (i8 92)
  %i.mm = bitcast <32 x i1> %i.mk to i32
  %i.mn = zext i32 %i.mm to i64
  %i.mo = bitcast <32 x i1> %i.ml to i32
  %i.mp = sext i32 %i.mo to i64
  %i.mq = shl nsw i64 %i.mp, 32
  %i.mr = or disjoint i64 %i.mq, %i.mn            ; 4 uses
  %.not.i113.i = icmp eq i64 %i.mr, 0
  br i1 %.not.i113.i, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i, label %bb.e

bb.e:                                             ; preds = %.noexc43.i
  %i.ms = xor i64 %.sroa.12.3.i, -1
  %i.mt = and i64 %i.mr, %i.ms
  %i.mu = shl i64 %i.mr, 1
  %i.mv = or i64 %i.mu, -6148914691236517206
  %i.mw = sub i64 %i.mv, %i.mt
  %i.mx = or i64 %.sroa.12.3.i, %i.mr
  %i.my = xor i64 %i.mx, %i.mw
  %i.mz = xor i64 %i.my, -6148914691236517206
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i

_ZN8simdjson7haswell12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i: ; preds = %bb.e, %.noexc43.i
  %.sroa.0.0.i114.i = phi i64 [ %i.mz, %bb.e ], [ %.sroa.12.3.i, %.noexc43.i ]
  %i.na = icmp eq <32 x i8> %.64..64..64..64..64.610.i, splat (i8 34)
  %i.nb = icmp eq <32 x i8> %.96..96..96..96..96.611.i, splat (i8 34)
  %i.nc = bitcast <32 x i1> %i.na to i32
  %i.nd = zext i32 %i.nc to i64
  %i.ne = bitcast <32 x i1> %i.nb to i32
  %i.nf = sext i32 %i.ne to i64
  %i.ng = shl nsw i64 %i.nf, 32
  %i.nh = or disjoint i64 %i.ng, %i.nd
  %i.ni = xor i64 %.sroa.0.0.i114.i, -1
  %i.nj = and i64 %i.nh, %i.ni
  %i.nk = insertelement <2 x i64> poison, i64 %i.nj, i64 0
  %i.nl = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.nk, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.nm = extractelement <2 x i64> %i.nl, i64 0
  %i.nn = xor i64 %i.nm, %i.lz                    ; 2 uses
  %i.no = ashr i64 %i.nn, 63
  %i.np = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <32 x i8> %.64..64..64..64..64.610.i)
  %i.nq = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <32 x i8> %.96..96..96..96..96.611.i)
  %i.nr = icmp eq <32 x i8> %.64..64..64..64..64.610.i, %i.np
  %i.ns = icmp eq <32 x i8> %.96..96..96..96..96.611.i, %i.nq
  %i.nt = bitcast <32 x i1> %i.nr to i32
  %i.nu = zext i32 %i.nt to i64
  %i.nv = bitcast <32 x i1> %i.ns to i32
  %i.nw = sext i32 %i.nv to i64
  %i.nx = shl nsw i64 %i.nw, 32
  %i.ny = or disjoint i64 %i.nx, %i.nu
  %i.nz = xor i64 %i.ly, -1
  %i.oa = and i64 %i.mj, %i.nz                    ; 11 uses
  %i.ob = lshr i64 %i.oa, 32                      ; 2 uses
  %i.oc = lshr i64 %i.oa, 8
  %i.od = lshr i64 %i.oa, 16
  %i.oe = lshr i64 %i.oa, 24
  %i.of = and i64 %i.oe, 255
  %i.og = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.of
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !13
  %i.oi = and i64 %i.od, 255                      ; 2 uses
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.oi
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !13
  %i.ol = and i64 %i.oc, 255
  %i.om = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.ol
  %i.on = load i64, ptr %i.om, align 8, !tbaa !13
  %i.oo = and i64 %i.oa, 255                      ; 2 uses
  %i.op = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.oo
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !13
  %i.or = insertelement <4 x i64> poison, i64 %i.oq, i64 0
  %i.os = insertelement <4 x i64> %i.or, i64 %i.on, i64 1
  %i.ot = insertelement <4 x i64> %i.os, i64 %i.ok, i64 2
  %i.ou = insertelement <4 x i64> %i.ot, i64 %i.oh, i64 3
  %i.ov = bitcast <4 x i64> %i.ou to <32 x i8>
  %i.ow = add <32 x i8> %i.ov, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24, i8 24>
  %i.ox = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %.0..0..0..0..0.608.i, <32 x i8> %i.ow)
  %i.oy = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.oo
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !9
  %i.pa = zext i8 %i.oz to i64
  %i.pb = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.oi
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !9
  %i.pd = zext i8 %i.pc to i64
  %i.pe = shl nuw nsw i64 %i.pa, 3
  %i.pf = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.pe
  %i.pg = load <4 x i32>, ptr %i.pf, align 8, !tbaa !9
  %i.ph = shl nuw nsw i64 %i.pd, 3
  %i.pi = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.ph
  %i.pj = load <4 x i32>, ptr %i.pi, align 8, !tbaa !9
  %i.pk = shufflevector <4 x i32> %i.pg, <4 x i32> %i.pj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.pl = bitcast <8 x i32> %i.pk to <32 x i8>
  %i.pm = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.ox, <32 x i8> %i.pl) ; 2 uses
  %i.pn = bitcast <32 x i8> %i.pm to <4 x i64>
  %i.po = shufflevector <4 x i64> %i.pn, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.po, ptr %i.b, align 16, !tbaa !9
  %i.pp = bitcast <32 x i8> %i.pm to <8 x i32>
  %i.pq = shufflevector <8 x i32> %i.pp, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.pr = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ps = and i64 %i.oa, 65535
  %i.pt = tail call noundef range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.ps)
  %i.pu = sub nsw i64 0, %i.pt
  %i.pv = getelementptr inbounds i8, ptr %i.pr, i64 %i.pu
  store <4 x i32> %i.pq, ptr %i.pv, align 1, !tbaa !9
  %i.pw = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.px = and i64 %i.oa, 4294967295
  %i.py = tail call noundef range(i64 0, 33) i64 @llvm.ctpop.i64(i64 %i.px)
  %i.pz = sub nsw i64 0, %i.py
  %i.qa = getelementptr inbounds i8, ptr %i.pw, i64 %i.pz ; 2 uses
  %i.qb = lshr i64 %i.oa, 40
  %i.qc = lshr i64 %i.oa, 48
  %i.qd = lshr i64 %i.oa, 56
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.qd
  %i.qf = load i64, ptr %i.qe, align 8, !tbaa !13
  %i.qg = and i64 %i.qc, 255                      ; 2 uses
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.qg
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !13
  %i.qj = and i64 %i.qb, 255
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.qj
  %i.ql = load i64, ptr %i.qk, align 8, !tbaa !13
  %i.qm = and i64 %i.ob, 255                      ; 2 uses
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.qm
  %i.qo = load i64, ptr %i.qn, align 8, !tbaa !13
  %i.qp = insertelement <4 x i64> poison, i64 %i.qo, i64 0
  %i.qq = insertelement <4 x i64> %i.qp, i64 %i.ql, i64 1
  %i.qr = insertelement <4 x i64> %i.qq, i64 %i.qi, i64 2
  %i.qs = insertelement <4 x i64> %i.qr, i64 %i.qf, i64 3
end_hunk_0
begin_hunk_1_@_ZN8simdjson7haswell25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE:bb.a
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 28
  store i32 %i.sy, ptr %i.sz, align 4, !tbaa !10
  %i.ta = icmp samesign ugt i64 %i.rf, 8
  br i1 %i.ta, label %.noexc288.i, label %.loopexit2248.i, !prof !107

.noexc288.i:                                      ; preds = %.noexc229.i
  %i.tb = add i64 %i.sv, -2
  %i.tc = and i64 %i.tb, %i.sv                    ; 3 uses
  %i.td = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.tc, i1 true)
  %i.te = or disjoint i64 %i.td, %.sroa.11.02261.i
  %i.tf = trunc i64 %i.te to i32
  %i.tg = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 32
  store i32 %i.tf, ptr %i.tg, align 4, !tbaa !10
  %i.th = add i64 %i.tc, -2
  %i.ti = and i64 %i.th, %i.tc                    ; 3 uses
  %i.tj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ti, i1 true)
  %i.tk = or disjoint i64 %i.tj, %.sroa.11.02261.i
  %i.tl = trunc i64 %i.tk to i32
  %i.tm = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 36
  store i32 %i.tl, ptr %i.tm, align 4, !tbaa !10
  %i.tn = add i64 %i.ti, -2
  %i.to = and i64 %i.tn, %i.ti                    ; 3 uses
  %i.tp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.to, i1 true)
  %i.tq = or disjoint i64 %i.tp, %.sroa.11.02261.i
  %i.tr = trunc i64 %i.tq to i32
  %i.ts = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 40
  store i32 %i.tr, ptr %i.ts, align 4, !tbaa !10
  %i.tt = add i64 %i.to, -1
  %i.tu = and i64 %i.tt, %i.to                    ; 3 uses
  %i.tv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.tu, i1 true)
  %i.tw = or disjoint i64 %i.tv, %.sroa.11.02261.i
  %i.tx = trunc i64 %i.tw to i32
  %i.ty = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 44
  store i32 %i.tx, ptr %i.ty, align 4, !tbaa !10
  %i.tz = icmp samesign ugt i64 %i.rf, 12
  br i1 %i.tz, label %.noexc359.i, label %.loopexit2248.i, !prof !107

.noexc359.i:                                      ; preds = %.noexc288.i
  %i.ua = add i64 %i.tu, -2
  %i.ub = and i64 %i.ua, %i.tu                    ; 3 uses
  %i.uc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ub, i1 true)
  %i.ud = or disjoint i64 %i.uc, %.sroa.11.02261.i
  %i.ue = trunc i64 %i.ud to i32
  %i.uf = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 48
  store i32 %i.ue, ptr %i.uf, align 4, !tbaa !10
  %i.ug = add i64 %i.ub, -2
  %i.uh = and i64 %i.ug, %i.ub                    ; 3 uses
  %i.ui = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.uh, i1 true)
  %i.uj = or disjoint i64 %i.ui, %.sroa.11.02261.i
  %i.uk = trunc i64 %i.uj to i32
  %i.ul = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 52
  store i32 %i.uk, ptr %i.ul, align 4, !tbaa !10
  %i.um = add i64 %i.uh, -2
  %i.un = and i64 %i.um, %i.uh                    ; 3 uses
  %i.uo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.un, i1 true)
  %i.up = or disjoint i64 %i.uo, %.sroa.11.02261.i
  %i.uq = trunc i64 %i.up to i32
  %i.ur = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 56
  store i32 %i.uq, ptr %i.ur, align 4, !tbaa !10
  %i.us = add i64 %i.un, -2
  %i.ut = and i64 %i.us, %i.un                    ; 3 uses
  %i.uu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ut, i1 true)
  %i.uv = or disjoint i64 %i.uu, %.sroa.11.02261.i
  %i.uw = trunc i64 %i.uv to i32
  %i.ux = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 60
  store i32 %i.uw, ptr %i.ux, align 4, !tbaa !10
  %i.uy = icmp samesign ugt i64 %i.rf, 16
  br i1 %i.uy, label %.noexc418.i, label %.loopexit2248.i, !prof !107

.noexc418.i:                                      ; preds = %.noexc359.i
  %i.uz = add i64 %i.ut, -1
  %i.va = and i64 %i.uz, %i.ut                    ; 3 uses
  %i.vb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.va, i1 true)
  %i.vc = or disjoint i64 %i.vb, %.sroa.11.02261.i
  %i.vd = trunc i64 %i.vc to i32
  %i.ve = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 64
  store i32 %i.vd, ptr %i.ve, align 4, !tbaa !10
  %i.vf = add i64 %i.va, -2
  %i.vg = and i64 %i.vf, %i.va                    ; 3 uses
  %i.vh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.vg, i1 true)
  %i.vi = or disjoint i64 %i.vh, %.sroa.11.02261.i
  %i.vj = trunc i64 %i.vi to i32
  %i.vk = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 68
  store i32 %i.vj, ptr %i.vk, align 4, !tbaa !10
  %i.vl = add i64 %i.vg, -2
  %i.vm = and i64 %i.vl, %i.vg                    ; 3 uses
  %i.vn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.vm, i1 true)
  %i.vo = or disjoint i64 %i.vn, %.sroa.11.02261.i
  %i.vp = trunc i64 %i.vo to i32
  %i.vq = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 72
  store i32 %i.vp, ptr %i.vq, align 4, !tbaa !10
  %i.vr = add i64 %i.vm, -2
  %i.vs = and i64 %i.vr, %i.vm                    ; 3 uses
  %i.vt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.vs, i1 true)
  %i.vu = or disjoint i64 %i.vt, %.sroa.11.02261.i
  %i.vv = trunc i64 %i.vu to i32
  %i.vw = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 76
  store i32 %i.vv, ptr %i.vw, align 4, !tbaa !10
  %i.vx = icmp samesign ugt i64 %i.rf, 20
  br i1 %i.vx, label %.noexc148.i, label %.loopexit2248.i, !prof !107

.noexc148.i:                                      ; preds = %.noexc418.i
  %i.vy = add i64 %i.vs, -2
  %i.vz = and i64 %i.vy, %i.vs                    ; 3 uses
  %i.wa = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.vz, i1 true)
  %i.wb = or disjoint i64 %i.wa, %.sroa.11.02261.i
  %i.wc = trunc i64 %i.wb to i32
  %i.wd = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 80
  store i32 %i.wc, ptr %i.wd, align 4, !tbaa !10
  %i.we = add i64 %i.vz, -1
  %i.wf = and i64 %i.we, %i.vz                    ; 3 uses
  %i.wg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.wf, i1 true)
  %i.wh = or disjoint i64 %i.wg, %.sroa.11.02261.i
  %i.wi = trunc i64 %i.wh to i32
  %i.wj = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 84
  store i32 %i.wi, ptr %i.wj, align 4, !tbaa !10
  %i.wk = add i64 %i.wf, -2
  %i.wl = and i64 %i.wk, %i.wf                    ; 3 uses
  %i.wm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.wl, i1 true)
  %i.wn = or disjoint i64 %i.wm, %.sroa.11.02261.i
  %i.wo = trunc i64 %i.wn to i32
  %i.wp = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 88
  store i32 %i.wo, ptr %i.wp, align 4, !tbaa !10
  %i.wq = add i64 %i.wl, -2
  %i.wr = and i64 %i.wq, %i.wl                    ; 3 uses
  %i.ws = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.wr, i1 true)
  %i.wt = or disjoint i64 %i.ws, %.sroa.11.02261.i
  %i.wu = trunc i64 %i.wt to i32
  %i.wv = getelementptr inbounds nuw i8, ptr %.sroa.89.3.i, i64 92
  store i32 %i.wu, ptr %i.wv, align 4, !tbaa !10
  %i.ww = icmp samesign ugt i64 %i.rf, 24
  br i1 %i.ww, label %.noexc149.i.preheader, label %.loopexit2248.i, !prof !110

.noexc149.i.preheader:                            ; preds = %.noexc148.i
  %i.wx = add i64 %i.wr, -2
  %i.wy = and i64 %i.wx, %i.wr                    ; 2 uses
  %xtraiter95 = and i64 %i.rf, 1
  %i.wz = icmp eq i64 %i.rf, 25
  br i1 %i.wz, label %.noexc149.i.epil.preheader, label %.noexc149.i.preheader.new

.noexc149.i.preheader.new:                        ; preds = %.noexc149.i.preheader
  %i.xa = and i64 %i.rf, 126
  %i.xb = add nsw i64 %i.xa, -26
  br label %.noexc149.i

.noexc149.i:                                      ; preds = %.noexc149.i, %.noexc149.i.preheader.new
  %indvars.iv2316.i = phi i64 [ 24, %.noexc149.i.preheader.new ], [ %indvars.iv.next2317.i.1, %.noexc149.i ] ; 3 uses
  %.021672259.i = phi i64 [ %i.wy, %.noexc149.i.preheader.new ], [ %i.xo, %.noexc149.i ] ; 3 uses
  %niter99 = phi i64 [ 0, %.noexc149.i.preheader.new ], [ %niter99.next.1, %.noexc149.i ] ; 2 uses
  %i.xc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.021672259.i, i1 true)
  %i.xd = or disjoint i64 %i.xc, %.sroa.11.02261.i
  %i.xe = trunc i64 %i.xd to i32
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.3.i, i64 %indvars.iv2316.i
  store i32 %i.xe, ptr %i.xf, align 4, !tbaa !10
  %i.xg = add i64 %.021672259.i, -1
  %i.xh = and i64 %i.xg, %.021672259.i            ; 3 uses
  %i.xi = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.xh, i1 true)
  %i.xj = or disjoint i64 %i.xi, %.sroa.11.02261.i
  %i.xk = trunc i64 %i.xj to i32
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.3.i, i64 %indvars.iv2316.i
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 4
  store i32 %i.xk, ptr %i.xm, align 4, !tbaa !10
  %i.xn = add i64 %i.xh, -2
  %i.xo = and i64 %i.xn, %i.xh                    ; 2 uses
  %indvars.iv.next2317.i.1 = add nuw nsw i64 %indvars.iv2316.i, 2 ; 2 uses
  %niter99.next.1 = add i64 %niter99, 2
  %niter99.ncmp.1 = icmp eq i64 %niter99, %i.xb
  br i1 %niter99.ncmp.1, label %.loopexit2248.i.loopexit.unr-lcssa, label %.noexc149.i, !llvm.loop !111

.loopexit2248.i.loopexit.unr-lcssa:               ; preds = %.noexc149.i
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %.loopexit2248.i, label %.noexc149.i.epil.preheader

.noexc149.i.epil.preheader:                       ; preds = %.loopexit2248.i.loopexit.unr-lcssa, %.noexc149.i.preheader
  %indvars.iv2316.i.epil.init = phi i64 [ 24, %.noexc149.i.preheader ], [ %indvars.iv.next2317.i.1, %.loopexit2248.i.loopexit.unr-lcssa ]
  %.021672259.i.epil.init = phi i64 [ %i.wy, %.noexc149.i.preheader ], [ %i.xo, %.loopexit2248.i.loopexit.unr-lcssa ]
  %lcmp.mod97 = trunc i64 %i.rf to i1
  tail call void @llvm.assume(i1 %lcmp.mod97)
  %i.xp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.021672259.i.epil.init, i1 true)
  %i.xq = or disjoint i64 %i.xp, %.sroa.11.02261.i
  %i.xr = trunc i64 %i.xq to i32
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.3.i, i64 %indvars.iv2316.i.epil.init
  store i32 %i.xr, ptr %i.xs, align 4, !tbaa !10
  br label %.loopexit2248.i

.loopexit2248.i:                                  ; preds = %.noexc149.i.epil.preheader, %.loopexit2248.i.loopexit.unr-lcssa, %.noexc148.i, %.noexc418.i, %.noexc359.i, %.noexc288.i, %.noexc229.i, %.noexc186.i
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.3.i, i64 %i.rf
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit63.i

_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit63.i: ; preds = %.loopexit2248.i, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i
  %.sroa.89.4.i = phi ptr [ %.sroa.89.3.i, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i ], [ %i.xt, %.loopexit2248.i ] ; 2 uses
  %i.xu = xor i64 %i.fn, -1
  %i.xv = and i64 %i.xu, %i.fk
  %i.xw = or i64 %i.xv, %i.fi
  %i.xx = xor i64 %i.ef, %i.ej
  %i.xy = xor i64 %i.xx, -1
  %i.xz = and i64 %i.xw, %i.xy                    ; 2 uses
  %i.ya = and i64 %i.ej, %i.pd
  %i.yb = or i64 %i.ov, %.sroa.236.02266.i
  %i.yc = or i64 %i.yb, %i.ya                     ; 2 uses
  %i.yd = add nuw i64 %.sroa.11.02261.i, 128      ; 4 uses
  %i.ye = icmp ult i64 %i.yd, %spec.select.i.i
  br i1 %i.ye, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !112

._crit_edge.thread.i:                             ; preds = %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i
  %.ph.i = phi ptr [ %i.ae, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %i.ag, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ] ; 2 uses
  %.0132367.ph.i = phi i64 [ %.013.ph.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %.013.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i

._crit_edge.i:                                    ; preds = %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit63.i
  %i.yf = or <4 x i64> %.sroa.41638.1.i, %.sroa.79.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.yg = icmp eq i64 %.013.i, %i.yd
  br i1 %i.yg, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i

_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i: ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.sroa.32.0.lcssa2391.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.ek, %._crit_edge.i ]
  %.sroa.41638.0.lcssa2390.i = phi <4 x i64> [ zeroinitializer, %._crit_edge.thread.i ], [ %.sroa.41638.1.i, %._crit_edge.i ]
  %.sroa.70.0.lcssa2389.i = phi <4 x i64> [ zeroinitializer, %._crit_edge.thread.i ], [ %.sroa.70.1.i, %._crit_edge.i ] ; 2 uses
  %.sroa.79.0.lcssa2388.i = phi <4 x i64> [ zeroinitializer, %._crit_edge.thread.i ], [ %i.yf, %._crit_edge.i ] ; 2 uses
  %.sroa.89.0.lcssa2387.i = phi ptr [ %.ph.i, %._crit_edge.thread.i ], [ %.sroa.89.4.i, %._crit_edge.i ] ; 29 uses
  %.sroa.226.0.lcssa2386.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.xz, %._crit_edge.i ] ; 5 uses
  %.sroa.236.0.lcssa2385.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.yc, %._crit_edge.i ]
  %.sroa.12.0.lcssa2384.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %.sroa.12.3.i, %._crit_edge.i ] ; 3 uses
  %.sroa.0.0.lcssa2383.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.fo, %._crit_edge.i ]
  %.sroa.11.0.lcssa2382.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.yd, %._crit_edge.i ] ; 30 uses
  %.01323672381.i = phi i64 [ %.0132367.ph.i, %._crit_edge.thread.i ], [ %.013.i, %._crit_edge.i ] ; 3 uses
  %i.yh = phi ptr [ %.ph.i, %._crit_edge.thread.i ], [ %i.ag, %._crit_edge.i ] ; 14 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 32, i64 128, i1 false)
  %i.yi = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0.lcssa2382.i
  %i.yj = sub i64 %.01323672381.i, %.sroa.11.0.lcssa2382.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.yi, i64 %i.yj, i1 false)
  %.0..0..0..0..0..i = load <4 x i64>, ptr %i.a, align 16, !tbaa !9 ; 6 uses
  %.32..32..32..32..32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.32..32..32..32..32..i = load <4 x i64>, ptr %.32..32..32..32..32..sroa_idx, align 16, !tbaa !9 ; 6 uses
  %.64..64..64..64..64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.64..64..64..64..64..i = load <4 x i64>, ptr %.64..64..64..64..64..sroa_idx, align 16, !tbaa !9 ; 6 uses
  %.96..96..96..96..96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.96..96..96..96..96..i = load <4 x i64>, ptr %.96..96..96..96..96..sroa_idx, align 16, !tbaa !9 ; 5 uses
  %i.yk = bitcast <4 x i64> %.0..0..0..0..0..i to <32 x i8> ; 9 uses
  %i.yl = icmp eq <32 x i8> %i.yk, splat (i8 92)
  %i.ym = bitcast <4 x i64> %.32..32..32..32..32..i to <32 x i8> ; 10 uses
  %i.yn = icmp eq <32 x i8> %i.ym, splat (i8 92)
  %i.yo = bitcast <32 x i1> %i.yl to i32
  %i.yp = zext i32 %i.yo to i64
  %i.yq = bitcast <32 x i1> %i.yn to i32
  %i.yr = sext i32 %i.yq to i64
  %i.ys = shl nsw i64 %i.yr, 32                   ; 2 uses
  %i.yt = or disjoint i64 %i.ys, %i.yp            ; 3 uses
  %.not.i68.i.i = icmp eq i64 %i.yt, 0
  br i1 %.not.i68.i.i, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit73.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i
  %i.yu = xor i64 %.sroa.12.0.lcssa2384.i, -1
  %i.yv = and i64 %i.yt, %i.yu                    ; 2 uses
  %i.yw = shl i64 %i.yv, 1
  %i.yx = or i64 %i.yw, -6148914691236517206
  %i.yy = sub i64 %i.yx, %i.yv
  %i.yz = xor i64 %i.yy, -6148914691236517206     ; 2 uses
  %i.za = or i64 %i.yt, %.sroa.12.0.lcssa2384.i
  %i.zb = xor i64 %i.yz, %i.za
  %i.zc = and i64 %i.yz, %i.ys
  %i.zd = lshr i64 %i.zc, 63
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit73.i.i

_ZN8simdjson7haswell12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit73.i.i: ; preds = %bb.n, %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i
  %.sroa.12.1.i = phi i64 [ %i.zd, %bb.n ], [ 0, %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i ] ; 3 uses
  %.sroa.0.0.i69.i.i = phi i64 [ %i.zb, %bb.n ], [ %.sroa.12.0.lcssa2384.i, %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i ]
  %i.ze = icmp eq <32 x i8> %i.yk, splat (i8 34)
  %i.zf = icmp eq <32 x i8> %i.ym, splat (i8 34)
  %i.zg = bitcast <32 x i1> %i.ze to i32
  %i.zh = zext i32 %i.zg to i64
  %i.zi = bitcast <32 x i1> %i.zf to i32
  %i.zj = sext i32 %i.zi to i64
  %i.zk = shl nsw i64 %i.zj, 32
  %i.zl = or disjoint i64 %i.zk, %i.zh
  %i.zm = xor i64 %.sroa.0.0.i69.i.i, -1
  %i.zn = and i64 %i.zl, %i.zm                    ; 3 uses
  %i.zo = insertelement <2 x i64> poison, i64 %i.zn, i64 0
  %i.zp = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.zo, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.zq = extractelement <2 x i64> %i.zp, i64 0
  %i.zr = xor i64 %i.zq, %.sroa.32.0.lcssa2391.i  ; 3 uses
  %i.zs = ashr i64 %i.zr, 63
  %i.zt = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <32 x i8> %i.yk)
  %i.zu = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <32 x i8> %i.ym)
  %i.zv = icmp eq <32 x i8> %i.zt, %i.yk
  %i.zw = icmp eq <32 x i8> %i.zu, %i.ym
  %i.zx = bitcast <32 x i1> %i.zv to i32
  %i.zy = zext i32 %i.zx to i64
  %i.zz = bitcast <32 x i1> %i.zw to i32
  %i.aaa = sext i32 %i.zz to i64
  %i.aab = shl nsw i64 %i.aaa, 32
  %i.aac = or disjoint i64 %i.aab, %i.zy
  %i.aad = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <32 x i8> %i.yk)
  %i.aae = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <32 x i8> %i.ym)
  %i.aaf = bitcast <4 x i64> %.0..0..0..0..0..i to <32 x i8>
  %i.aag = or <32 x i8> %i.aaf, splat (i8 32)
  %i.aah = icmp eq <32 x i8> %i.aag, %i.aad
  %i.aai = bitcast <4 x i64> %.32..32..32..32..32..i to <32 x i8>
  %i.aaj = or <32 x i8> %i.aai, splat (i8 32)
  %i.aak = icmp eq <32 x i8> %i.aaj, %i.aae
  %i.aal = bitcast <32 x i1> %i.aah to i32
  %i.aam = zext i32 %i.aal to i64
  %i.aan = bitcast <32 x i1> %i.aak to i32
  %i.aao = sext i32 %i.aan to i64
  %i.aap = shl nsw i64 %i.aao, 32
  %i.aaq = or disjoint i64 %i.aap, %i.aam         ; 2 uses
  %i.aar = or i64 %i.aaq, %i.aac
  %i.aas = xor i64 %i.aar, -1                     ; 2 uses
  %i.aat = xor i64 %i.zn, -1
  %i.aau = and i64 %i.aas, %i.aat                 ; 2 uses
  %i.aav = shl i64 %i.aau, 1
  %i.aaw = or disjoint i64 %i.aav, %.sroa.0.0.lcssa2383.i
  %i.aax = bitcast <4 x i64> %.64..64..64..64..64..i to <32 x i8> ; 9 uses
  %i.aay = icmp eq <32 x i8> %i.aax, splat (i8 92)
  %i.aaz = bitcast <4 x i64> %.96..96..96..96..96..i to <32 x i8> ; 10 uses
  %i.aba = icmp eq <32 x i8> %i.aaz, splat (i8 92)
  %i.abb = bitcast <32 x i1> %i.aay to i32
  %i.abc = zext i32 %i.abb to i64
  %i.abd = bitcast <32 x i1> %i.aba to i32
  %i.abe = sext i32 %i.abd to i64
  %i.abf = shl nsw i64 %i.abe, 32
  %i.abg = or disjoint i64 %i.abf, %i.abc         ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.abg, 0
  br i1 %.not.i.i.i, label %.noexc117.i, label %bb.o

bb.o:                                             ; preds = %_ZN8simdjson7haswell12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit73.i.i
  %i.abh = xor i64 %.sroa.12.1.i, -1
  %i.abi = and i64 %i.abg, %i.abh
  %i.abj = shl i64 %i.abg, 1
  %i.abk = or i64 %i.abj, -6148914691236517206
  %i.abl = sub i64 %i.abk, %i.abi
  %i.abm = or i64 %.sroa.12.1.i, %i.abg
  %i.abn = xor i64 %i.abm, %i.abl
  %i.abo = xor i64 %i.abn, -6148914691236517206
  br label %.noexc117.i

.noexc117.i:                                      ; preds = %bb.o, %_ZN8simdjson7haswell12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit73.i.i
  %.sroa.0.0.i.i.i = phi i64 [ %i.abo, %bb.o ], [ %.sroa.12.1.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit73.i.i ]
  %i.abp = icmp eq <32 x i8> %i.aax, splat (i8 34)
  %i.abq = icmp eq <32 x i8> %i.aaz, splat (i8 34)
  %i.abr = bitcast <32 x i1> %i.abp to i32
  %i.abs = zext i32 %i.abr to i64
  %i.abt = bitcast <32 x i1> %i.abq to i32
  %i.abu = sext i32 %i.abt to i64
  %i.abv = shl nsw i64 %i.abu, 32
  %i.abw = or disjoint i64 %i.abv, %i.abs
  %i.abx = xor i64 %.sroa.0.0.i.i.i, -1
  %i.aby = and i64 %i.abw, %i.abx                 ; 3 uses
  %i.abz = insertelement <2 x i64> poison, i64 %i.aby, i64 0
  %i.aca = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.abz, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.acb = extractelement <2 x i64> %i.aca, i64 0
  %i.acc = xor i64 %i.acb, %i.zs                  ; 3 uses
  %i.acd = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <32 x i8> %i.aax)
  %i.ace = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <32 x i8> %i.aaz)
  %i.acf = icmp eq <32 x i8> %i.acd, %i.aax
  %i.acg = icmp eq <32 x i8> %i.ace, %i.aaz
  %i.ach = bitcast <32 x i1> %i.acf to i32
  %i.aci = zext i32 %i.ach to i64
  %i.acj = bitcast <32 x i1> %i.acg to i32
  %i.ack = sext i32 %i.acj to i64
  %i.acl = shl nsw i64 %i.ack, 32
  %i.acm = or disjoint i64 %i.acl, %i.aci
  %i.acn = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <32 x i8> %i.aax)
  %i.aco = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <32 x i8> %i.aaz)
  %i.acp = bitcast <4 x i64> %.64..64..64..64..64..i to <32 x i8>
  %i.acq = or <32 x i8> %i.acp, splat (i8 32)
  %i.acr = icmp eq <32 x i8> %i.acq, %i.acn
  %i.acs = bitcast <4 x i64> %.96..96..96..96..96..i to <32 x i8>
  %i.act = or <32 x i8> %i.acs, splat (i8 32)
  %i.acu = icmp eq <32 x i8> %i.act, %i.aco
  %i.acv = bitcast <32 x i1> %i.acr to i32
  %i.acw = zext i32 %i.acv to i64
  %i.acx = bitcast <32 x i1> %i.acu to i32
  %i.acy = sext i32 %i.acx to i64
  %i.acz = shl nsw i64 %i.acy, 32
  %i.ada = or disjoint i64 %i.acz, %i.acw         ; 2 uses
  %i.adb = or i64 %i.ada, %i.acm
  %i.adc = xor i64 %i.adb, -1                     ; 2 uses
  %i.add = xor i64 %i.aby, -1
  %i.ade = and i64 %i.adc, %i.add
  %i.adf = tail call i64 @llvm.fshl.i64(i64 %i.ade, i64 %i.aau, i64 1)
  %i.adg = icmp ult <32 x i8> %i.yk, splat (i8 32)
  %i.adh = icmp ult <32 x i8> %i.ym, splat (i8 32)
  %i.adi = bitcast <32 x i1> %i.adg to i32
  %i.adj = zext i32 %i.adi to i64
  %i.adk = bitcast <32 x i1> %i.adh to i32
  %i.adl = sext i32 %i.adk to i64
  %i.adm = shl nsw i64 %i.adl, 32
  %i.adn = or disjoint i64 %i.adm, %i.adj
  %i.ado = or <4 x i64> %.32..32..32..32..32..i, %.0..0..0..0..0..i
  %i.adp = bitcast <4 x i64> %i.ado to <32 x i8>
  %i.adq = icmp slt <32 x i8> %i.adp, zeroinitializer
  %i.adr = bitcast <32 x i1> %i.adq to i32
  %i.ads = icmp eq i32 %i.adr, 0
  br i1 %i.ads, label %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i115.i, label %.noexc122.i, !prof !109

.noexc122.i:                                      ; preds = %.noexc117.i
  %i.adt = shufflevector <4 x i64> %.sroa.70.0.lcssa2389.i, <4 x i64> %.0..0..0..0..0..i, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.adu = bitcast <4 x i64> %i.adt to <32 x i8>  ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN8simdjson7haswell25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE:bb.a
  %i.bfm = add nsw i32 %.036.i5822291.i, 1
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ak
  %i.bfn = add nsw i32 %.039.i5812290.i, 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.ak
  %.140.i586.i = phi i32 [ %.039.i5812290.i, %bb.ak ], [ %.039.i5812290.i, %bb.an ], [ %i.bfn, %bb.ao ] ; 5 uses
  %.137.i587.i = phi i32 [ %.036.i5822291.i, %bb.ak ], [ %i.bfm, %bb.an ], [ %.036.i5822291.i, %bb.ao ] ; 5 uses
  %i.bfo = add i32 %.035.in.i5832292.i, -2
  %i.bfp = zext i32 %i.bfo to i64
  %i.bfq = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %i.bfp
  %i.bfr = load i32, ptr %i.bfq, align 4, !tbaa !10
  %i.bfs = zext i32 %i.bfr to i64
  %i.bft = getelementptr inbounds nuw i8, ptr %1, i64 %i.bfs
  %i.bfu = load i8, ptr %i.bft, align 1, !tbaa !9
  switch i8 %i.bfu, label %bb.aq [
    i8 123, label %bb.ar
    i8 91, label %bb.ar
    i8 58, label %bb.ar
    i8 44, label %bb.ar
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.bfv = trunc nuw i64 %indvars.iv2336.i to i32
  %i.bfw = icmp ne i32 %.140.i586.i, 0
  %i.bfx = icmp ne i32 %.137.i587.i, 0
  %or.cond.i599.i = select i1 %i.bfw, i1 true, i1 %i.bfx
  %spec.select.i = select i1 %or.cond.i599.i, i32 %i.bfv, i32 %i.bfd
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit600.i

bb.ar:                                            ; preds = %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.am, %bb.al, %bb.ak, %bb.ak
  %.241.i589.i = phi i32 [ %.039.i5812290.i, %bb.ak ], [ %i.bfl, %bb.am ], [ %.039.i5812290.i, %bb.al ], [ %.039.i5812290.i, %bb.ak ], [ %.140.i586.i, %bb.ap ], [ %.140.i586.i, %bb.ap ], [ %.140.i586.i, %bb.ap ], [ %.140.i586.i, %bb.ap ] ; 2 uses
  %.238.i590.i = phi i32 [ %.036.i5822291.i, %bb.ak ], [ %.036.i5822291.i, %bb.am ], [ %i.bfk, %bb.al ], [ %.036.i5822291.i, %bb.ak ], [ %.137.i587.i, %bb.ap ], [ %.137.i587.i, %bb.ap ], [ %.137.i587.i, %bb.ap ], [ %.137.i587.i, %bb.ap ] ; 2 uses
  %indvars.iv.next2337.i = add nsw i64 %indvars.iv2336.i, -1 ; 2 uses
  %i.bfy = and i64 %indvars.iv.next2337.i, 4294967295
  %.not.i585.i = icmp eq i64 %i.bfy, 0
  %i.bfz = trunc nuw i64 %indvars.iv2336.i to i32
  br i1 %.not.i585.i, label %._crit_edge2295.i, label %bb.ak, !llvm.loop !115

._crit_edge2295.i:                                ; preds = %bb.ar, %.preheader2241.i
  %.039.i581.lcssa.i = phi i32 [ 0, %.preheader2241.i ], [ %.241.i589.i, %bb.ar ] ; 5 uses
  %.036.i582.lcssa.i = phi i32 [ 0, %.preheader2241.i ], [ %.238.i590.i, %bb.ar ] ; 5 uses
  %i.bga = load i32, ptr %i.yh, align 4, !tbaa !10
  %i.bgb = zext i32 %i.bga to i64
  %i.bgc = getelementptr inbounds nuw i8, ptr %1, i64 %i.bgb
  %i.bgd = load i8, ptr %i.bgc, align 1, !tbaa !9
  switch i8 %i.bgd, label %bb.aw [
    i8 125, label %bb.as
    i8 93, label %bb.at
    i8 123, label %bb.au
    i8 91, label %bb.av
  ]

bb.as:                                            ; preds = %._crit_edge2295.i
  %i.bge = add nsw i32 %.036.i582.lcssa.i, -1
  br label %bb.aw

bb.at:                                            ; preds = %._crit_edge2295.i
  %i.bgf = add nsw i32 %.039.i581.lcssa.i, -1
  br label %bb.aw

bb.au:                                            ; preds = %._crit_edge2295.i
  %i.bgg = add nsw i32 %.036.i582.lcssa.i, 1
  br label %bb.aw

bb.av:                                            ; preds = %._crit_edge2295.i
  %i.bgh = add nsw i32 %.039.i581.lcssa.i, 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at, %bb.as, %._crit_edge2295.i
  %.443.i596.i = phi i32 [ %.039.i581.lcssa.i, %._crit_edge2295.i ], [ %.039.i581.lcssa.i, %bb.as ], [ %i.bgf, %bb.at ], [ %.039.i581.lcssa.i, %bb.au ], [ %i.bgh, %bb.av ]
  %.4.i597.i = phi i32 [ %.036.i582.lcssa.i, %._crit_edge2295.i ], [ %i.bge, %bb.as ], [ %.036.i582.lcssa.i, %bb.at ], [ %i.bgg, %bb.au ], [ %.036.i582.lcssa.i, %bb.av ]
  %i.bgi = icmp ne i32 %.443.i596.i, 0
  %i.bgj = icmp ne i32 %.4.i597.i, 0
  %or.cond4.i598.i = select i1 %i.bgi, i1 true, i1 %i.bgj
  %spec.select2234.i = select i1 %or.cond4.i598.i, i32 0, i32 %i.bfd
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit600.i

_ZN8simdjson7haswell12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit600.i: ; preds = %bb.aw, %bb.aq, %thread-pre-split2219.i
  %.5.i595.i = phi i32 [ 0, %thread-pre-split2219.i ], [ %spec.select.i, %bb.aq ], [ %spec.select2234.i, %bb.aw ] ; 3 uses
  store i32 %.5.i595.i, ptr %i.bcy, align 8, !tbaa !73
  %i.bgk = zext i32 %.5.i595.i to i64
  %i.bgl = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %i.bgk
  %i.bgm = load i32, ptr %i.bgl, align 4, !tbaa !10
  %i.bgn = add i32 %.5.i595.i, 1
  %i.bgo = zext i32 %i.bgn to i64
  %i.bgp = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %i.bgo
  store i32 %i.bgm, ptr %i.bgp, align 4, !tbaa !10
  %i.bgq = load i32, ptr %i.bcy, align 8, !tbaa !73
  %i.bgr = zext i32 %i.bgq to i64
  %i.bgs = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %i.bgr
  store i32 %i.bcz, ptr %i.bgs, align 4, !tbaa !10
  %i.bgt = load i32, ptr %i.bcy, align 8, !tbaa !73
  %i.bgu = icmp eq i32 %i.bgt, 0
  br i1 %i.bgu, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %bb.ax, !prof !107

bb.ax:                                            ; preds = %_ZN8simdjson7haswell12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit600.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit.thread2213.i, %bb.r
  %i.bgv = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %.sroa.41638.3.i, <4 x i64> %.sroa.41638.3.i)
  %.not2239.i = icmp eq i32 %i.bgv, 0
  %i.bgw = select i1 %.not2239.i, i32 11, i32 0
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i

_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i: ; preds = %bb.ax, %_ZN8simdjson7haswell12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit600.i, %bb.ai, %bb.ah, %bb.t, %bb.q, %bb.p, %.thread.i, %.noexc.i, %._crit_edge.i
  %.0.i = phi i32 [ 13, %bb.ai ], [ 13, %_ZN8simdjson7haswell12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit600.i ], [ 1, %bb.t ], [ 15, %.noexc.i ], [ 14, %.thread.i ], [ 13, %bb.p ], [ 24, %bb.q ], [ %i.bgw, %bb.ax ], [ 24, %._crit_edge.i ], [ 1, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer5indexILm128EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit

_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer5indexILm128EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit: ; preds = %bb.a, %bb.b, %bb.g, %bb.h, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i
  %.1.i = phi i32 [ %.0.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i ], [ 1, %bb.a ], [ 13, %bb.b ], [ 11, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.i ], [ 11, %bb.h ], [ 11, %bb.g ]
  ret i32 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZNK8simdjson7haswell14implementation13validate_utf8EPKcm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 64)
  %.not.i.i = icmp ult i64 %2, 65
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i
  %.sroa.11.0375.i.i = phi i64 [ %i.bh, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.046.0374.i.i = phi <4 x i64> [ %.sroa.046.2.i.i, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ zeroinitializer, %bb.a ]
  %.sroa.19.0373.i.i = phi <4 x i64> [ %.sroa.19.1.i.i, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ zeroinitializer, %bb.a ] ; 2 uses
  %.sroa.24.0372.i.i = phi <4 x i64> [ %.sroa.24.2.i.i, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0375.i.i ; 2 uses
  %i.c = load <4 x i64>, ptr %i.b, align 1, !tbaa !9 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load <4 x i64>, ptr %i.d, align 1, !tbaa !9 ; 5 uses
  %i.f = or <4 x i64> %i.e, %i.c
  %i.g = bitcast <4 x i64> %i.f to <32 x i8>
  %i.h = icmp slt <32 x i8> %i.g, zeroinitializer
  %i.i = bitcast <32 x i1> %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i, label %bb.b, !prof !109

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = bitcast <4 x i64> %i.c to <32 x i8>      ; 3 uses
  %i.l = shufflevector <4 x i64> %.sroa.19.0373.i.i, <4 x i64> %i.c, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.m = bitcast <4 x i64> %i.l to <32 x i8>      ; 3 uses
  %i.n = shufflevector <32 x i8> %i.m, <32 x i8> %i.k, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.o = bitcast <32 x i8> %i.n to <16 x i16>
  %i.p = lshr <16 x i16> %i.o, splat (i16 4)
  %i.q = bitcast <16 x i16> %i.p to <32 x i8>
  %i.r = and <32 x i8> %i.q, splat (i8 15)
  %i.s = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.r)
  %i.t = and <32 x i8> %i.n, splat (i8 15)
  %i.u = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.t)
  %i.v = bitcast <4 x i64> %i.c to <16 x i16>
  %i.w = lshr <16 x i16> %i.v, splat (i16 4)
  %i.x = bitcast <16 x i16> %i.w to <32 x i8>
  %i.y = and <32 x i8> %i.x, splat (i8 15)
  %i.z = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.y)
  %i.aa = and <32 x i8> %i.u, %i.s
  %i.ab = and <32 x i8> %i.aa, %i.z
  %i.ac = shufflevector <32 x i8> %i.m, <32 x i8> %i.k, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.ad = shufflevector <32 x i8> %i.m, <32 x i8> %i.k, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.ae = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.ac, <32 x i8> splat (i8 96))
  %i.af = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.ad, <32 x i8> splat (i8 112))
  %i.ag = or <32 x i8> %i.ae, %i.af
  %.inner3 = and <32 x i8> %i.ag, splat (i8 -128)
  %.inner4 = xor <32 x i8> %.inner3, %i.ab
  %i.ah = bitcast <4 x i64> %i.e to <32 x i8>     ; 4 uses
  %i.ai = shufflevector <4 x i64> %i.c, <4 x i64> %i.e, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.aj = bitcast <4 x i64> %i.ai to <32 x i8>    ; 3 uses
  %i.ak = shufflevector <32 x i8> %i.aj, <32 x i8> %i.ah, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.al = bitcast <32 x i8> %i.ak to <16 x i16>
  %i.am = lshr <16 x i16> %i.al, splat (i16 4)
  %i.an = bitcast <16 x i16> %i.am to <32 x i8>
  %i.ao = and <32 x i8> %i.an, splat (i8 15)
  %i.ap = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.ao)
  %i.aq = and <32 x i8> %i.ak, splat (i8 15)
  %i.ar = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.aq)
  %i.as = bitcast <4 x i64> %i.e to <16 x i16>
  %i.at = lshr <16 x i16> %i.as, splat (i16 4)
  %i.au = bitcast <16 x i16> %i.at to <32 x i8>
  %i.av = and <32 x i8> %i.au, splat (i8 15)
  %i.aw = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.av)
  %i.ax = and <32 x i8> %i.ar, %i.ap
  %i.ay = and <32 x i8> %i.ax, %i.aw
  %i.az = shufflevector <32 x i8> %i.aj, <32 x i8> %i.ah, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.ba = shufflevector <32 x i8> %i.aj, <32 x i8> %i.ah, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.bb = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.az, <32 x i8> splat (i8 96))
  %i.bc = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.ba, <32 x i8> splat (i8 112))
  %i.bd = or <32 x i8> %i.bb, %i.bc
  %.inner7 = and <32 x i8> %i.bd, splat (i8 -128)
  %.inner8 = xor <32 x i8> %.inner7, %i.ay
  %.inner9 = or <32 x i8> %.inner8, %.inner4
  %i.be = bitcast <32 x i8> %.inner9 to <4 x i64>
  %i.bf = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.ah, <32 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.bg = bitcast <32 x i8> %i.bf to <4 x i64>
  br label %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i

_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %.sroa.24.2.i.i = phi <4 x i64> [ %i.bg, %bb.b ], [ %.sroa.24.0372.i.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.19.1.i.i = phi <4 x i64> [ %i.e, %bb.b ], [ %.sroa.19.0373.i.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.24.0372.i.pn.i = phi <4 x i64> [ %i.be, %bb.b ], [ %.sroa.24.0372.i.i, %.lr.ph.i.i ]
  %.sroa.046.2.i.i = or <4 x i64> %.sroa.24.0372.i.pn.i, %.sroa.046.0374.i.i ; 3 uses
  %i.bh = add nuw i64 %.sroa.11.0375.i.i, 64      ; 3 uses
  %i.bi = icmp ult i64 %i.bh, %spec.select.i.i.i
  br i1 %i.bi, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !116

._crit_edge.loopexit.i.i:                         ; preds = %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i
  %i.bj = or <4 x i64> %.sroa.046.2.i.i, %.sroa.24.2.i.i
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %.sroa.24.0.lcssa.i.i = phi <4 x i64> [ zeroinitializer, %bb.a ], [ %i.bj, %._crit_edge.loopexit.i.i ]
  %.sroa.19.0.lcssa.i.i = phi <4 x i64> [ zeroinitializer, %bb.a ], [ %.sroa.19.1.i.i, %._crit_edge.loopexit.i.i ]
  %.sroa.046.0.lcssa.i.i = phi <4 x i64> [ zeroinitializer, %bb.a ], [ %.sroa.046.2.i.i, %._crit_edge.loopexit.i.i ]
  %.sroa.11.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.bh, %._crit_edge.loopexit.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bk = icmp eq i64 %2, %.sroa.11.0.lcssa.i.i
  br i1 %i.bk, label %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 32, i64 64, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0.lcssa.i.i
  %i.bm = sub i64 %2, %.sroa.11.0.lcssa.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.bl, i64 %i.bm, i1 false)
  %.0..0..0..0..0..0..0..pre.i.i = load <4 x i64>, ptr %i.a, align 16, !tbaa !9
  %.32..32..32..32..32..32..32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.32..32..32..32..32..32..32..pre.i.i = load <4 x i64>, ptr %.32..32..32..32..32..32..32..sroa_idx, align 16, !tbaa !9
  br label %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i

_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i: ; preds = %bb.c, %._crit_edge.i.i
  %.32..32..i.i = phi <4 x i64> [ zeroinitializer, %._crit_edge.i.i ], [ %.32..32..32..32..32..32..32..pre.i.i, %bb.c ] ; 4 uses
  %.0..0..i.i = phi <4 x i64> [ zeroinitializer, %._crit_edge.i.i ], [ %.0..0..0..0..0..0..0..pre.i.i, %bb.c ] ; 5 uses
  %i.bn = or <4 x i64> %.0..0..i.i, %.32..32..i.i
  %i.bo = bitcast <4 x i64> %i.bn to <32 x i8>
  %i.bp = icmp slt <32 x i8> %i.bo, zeroinitializer
  %i.bq = bitcast <32 x i1> %i.bp to i32
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.e, label %bb.d, !prof !109

bb.d:                                             ; preds = %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i
  %i.bs = bitcast <4 x i64> %.0..0..i.i to <32 x i8> ; 3 uses
  %i.bt = shufflevector <4 x i64> %.sroa.19.0.lcssa.i.i, <4 x i64> %.0..0..i.i, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.bu = bitcast <4 x i64> %i.bt to <32 x i8>    ; 3 uses
  %i.bv = shufflevector <32 x i8> %i.bu, <32 x i8> %i.bs, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.bw = bitcast <32 x i8> %i.bv to <16 x i16>
  %i.bx = lshr <16 x i16> %i.bw, splat (i16 4)
  %i.by = bitcast <16 x i16> %i.bx to <32 x i8>
  %i.bz = and <32 x i8> %i.by, splat (i8 15)
  %i.ca = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.bz)
  %i.cb = and <32 x i8> %i.bv, splat (i8 15)
  %i.cc = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.cb)
  %i.cd = bitcast <4 x i64> %.0..0..i.i to <16 x i16>
  %i.ce = lshr <16 x i16> %i.cd, splat (i16 4)
  %i.cf = bitcast <16 x i16> %i.ce to <32 x i8>
  %i.cg = and <32 x i8> %i.cf, splat (i8 15)
  %i.ch = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.cg)
  %i.ci = and <32 x i8> %i.cc, %i.ca
  %i.cj = and <32 x i8> %i.ci, %i.ch
  %i.ck = shufflevector <32 x i8> %i.bu, <32 x i8> %i.bs, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.cl = shufflevector <32 x i8> %i.bu, <32 x i8> %i.bs, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.cm = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.ck, <32 x i8> splat (i8 96))
  %i.cn = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.cl, <32 x i8> splat (i8 112))
  %i.co = or <32 x i8> %i.cm, %i.cn
  %.inner12 = and <32 x i8> %i.co, splat (i8 -128)
  %.inner13 = xor <32 x i8> %.inner12, %i.cj
  %i.cp = bitcast <32 x i8> %.inner13 to <4 x i64>
  %i.cq = bitcast <4 x i64> %.32..32..i.i to <32 x i8> ; 4 uses
  %i.cr = shufflevector <4 x i64> %.0..0..i.i, <4 x i64> %.32..32..i.i, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.cs = bitcast <4 x i64> %i.cr to <32 x i8>    ; 3 uses
  %i.ct = shufflevector <32 x i8> %i.cs, <32 x i8> %i.cq, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.cu = bitcast <32 x i8> %i.ct to <16 x i16>
  %i.cv = lshr <16 x i16> %i.cu, splat (i16 4)
  %i.cw = bitcast <16 x i16> %i.cv to <32 x i8>
  %i.cx = and <32 x i8> %i.cw, splat (i8 15)
  %i.cy = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.cx)
  %i.cz = and <32 x i8> %i.ct, splat (i8 15)
  %i.da = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.cz)
  %i.db = bitcast <4 x i64> %.32..32..i.i to <16 x i16>
  %i.dc = lshr <16 x i16> %i.db, splat (i16 4)
  %i.dd = bitcast <16 x i16> %i.dc to <32 x i8>
  %i.de = and <32 x i8> %i.dd, splat (i8 15)
  %i.df = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.de)
  %i.dg = and <32 x i8> %i.da, %i.cy
  %i.dh = and <32 x i8> %i.dg, %i.df
  %i.di = shufflevector <32 x i8> %i.cs, <32 x i8> %i.cq, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.dj = shufflevector <32 x i8> %i.cs, <32 x i8> %i.cq, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.dk = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.di, <32 x i8> splat (i8 96))
  %i.dl = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.dj, <32 x i8> splat (i8 112))
  %i.dm = or <32 x i8> %i.dk, %i.dl
  %.inner16 = and <32 x i8> %i.dm, splat (i8 -128)
  %.inner17 = xor <32 x i8> %.inner16, %i.dh
  %i.dn = bitcast <32 x i8> %.inner17 to <4 x i64>
  %i.do = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.cq, <32 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.dp = bitcast <32 x i8> %i.do to <4 x i64>
  %i.dq = or <4 x i64> %.sroa.046.0.lcssa.i.i, %i.dp
  %i.dr = or <4 x i64> %i.dq, %i.cp
  %i.ds = or <4 x i64> %i.dr, %i.dn
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i
  %.sroa.046.1.i.i = phi <4 x i64> [ %i.ds, %bb.d ], [ %.sroa.24.0.lcssa.i.i, %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i ] ; 2 uses
  %i.dt = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %.sroa.046.1.i.i, <4 x i64> %.sroa.046.1.i.i)
  %i.du = icmp ne i32 %i.dt, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.du
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 14) i32 @_ZN8simdjson7haswell25dom_parser_implementation6stage2ERNS_3dom8documentE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) initializes((88, 96)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %i.f = alloca double, align 8                   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 14 uses
  store ptr %1, ptr %i.g, align 8, !tbaa !117
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !88   ; 16 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !108  ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !73   ; 3 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !118    ; 20 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !120  ; 2 uses
  store i32 0, ptr %i.s, align 4, !tbaa !121
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 0, ptr %i.t, align 4, !tbaa !123
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 15 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 10 uses
  %i.w = load i32, ptr %i.k, align 4, !tbaa !10
  %i.x = zext i32 %i.w to i64                     ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.x ; 12 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !9
  switch i8 %i.z, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit [
    i8 123, label %bb.c
    i8 91, label %bb.d
    i8 34, label %bb.g
    i8 116, label %bb.x
    i8 102, label %bb.aa
    i8 110, label %bb.ad
    i8 45, label %bb.ag
    i8 48, label %bb.ag
    i8 49, label %bb.ag
    i8 50, label %bb.ag
    i8 51, label %bb.ag
    i8 52, label %bb.ag
    i8 53, label %bb.ag
    i8 54, label %bb.ag
    i8 55, label %bb.ag
    i8 56, label %bb.ag
    i8 57, label %bb.ag
  ]

bb.c:                                             ; preds = %bb.b
  %i.aa = add i32 %i.o, -1
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !10
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !9
  %.not162.i = icmp eq i8 %i.ag, 125
  br i1 %.not162.i, label %.thread, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.ah = add i32 %i.o, -1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !10
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !9
  %.not.i = icmp eq i8 %i.an, 93
  br i1 %.not.i, label %.thread899, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread:                                          ; preds = %bb.c
  %i.ao = load i32, ptr %i.v, align 4, !tbaa !10
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9
  %i.as = icmp eq i8 %i.ar, 125
  br i1 %i.as, label %bb.e, label %bb.bv

bb.e:                                             ; preds = %.thread
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 8863084066665136131, ptr %i.u, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 9007199254740992001, ptr %i.au, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %.thread1011

.thread899:                                       ; preds = %bb.d
  %i.aw = load i32, ptr %i.v, align 4, !tbaa !10
  %i.ax = zext i32 %i.aw to i64
end_hunk_2
begin_hunk_3_@_ZNK8simdjson7haswell25dom_parser_implementation19parse_wobbly_stringEPKhPh:bb.a
  br label %.noexc

bb.n:                                             ; preds = %.lr.ph
  %i.ea = getelementptr inbounds nuw i8, ptr %.050108, i64 32
  %i.eb = getelementptr inbounds nuw i8, ptr %.0109, i64 32
  br label %.noexc

.noexc:                                           ; preds = %bb.m, %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread, %bb.n
  %.151 = phi ptr [ %.557.ph, %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread ], [ %i.ea, %bb.n ], [ %i.dy, %bb.m ] ; 2 uses
  %.1 = phi ptr [ %i.ds, %_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread ], [ %i.eb, %bb.n ], [ %i.dz, %bb.m ] ; 3 uses
  %i.ec = load <4 x i64>, ptr %.151, align 1, !tbaa !9 ; 2 uses
  store <4 x i64> %i.ec, ptr %.1, align 1, !tbaa !9
  %i.ed = bitcast <4 x i64> %i.ec to <32 x i8>    ; 2 uses
  %i.ee = icmp eq <32 x i8> %i.ed, splat (i8 92)
  %i.ef = bitcast <32 x i1> %i.ee to i32          ; 2 uses
  %i.eg = icmp eq <32 x i8> %i.ed, splat (i8 34)
  %i.eh = bitcast <32 x i1> %i.eg to i32          ; 3 uses
  %i.ei = add i32 %i.ef, -1
  %i.ej = and i32 %i.ei, %i.eh
  %.not = icmp eq i32 %i.ej, 0
  br i1 %.not, label %.lr.ph, label %.noexc2

_ZN8simdjson7haswell12_GLOBAL__N_113stringparsing19parse_wobbly_stringEPKhPh.exit: ; preds = %bb.l, %bb.j, %.noexc2
  %.5.i.ph = phi ptr [ %i.k, %.noexc2 ], [ null, %bb.j ], [ null, %bb.l ]
  ret ptr %.5.i.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 25) i32 @_ZN8simdjson7haswell25dom_parser_implementation5parseEPKhmRNS_3dom8documentE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) initializes((72, 88)) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #11 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN8simdjson7haswell25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i64 noundef %2, i32 noundef 0) #41 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN8simdjson7haswell25dom_parser_implementation6stage2ERNS_3dom8documentE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #41
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK8simdjson7icelake14implementation32create_dom_parser_implementationEmmRSt10unique_ptrINS_8internal25dom_parser_implementationESt14default_deleteIS4_EE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(96) ptr @_ZnwmRKSt9nothrow_t(i64 noundef 96, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #44 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !82
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 0, ptr %i.e, align 8, !tbaa !83
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.f, i8 0, i64 17, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN8simdjson7icelake25dom_parser_implementationE, i64 16), ptr %i.a, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load ptr, ptr %3, align 8, !tbaa !84     ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !84
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit, label %_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i: ; preds = %bb.c
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(49) %i.h) #41, !inline_history !86
  %.pr = load ptr, ptr %3, align 8, !tbaa !84
  br label %_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i
  %i.l = phi ptr [ %i.a, %bb.c ], [ %.pr, %_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i ] ; 3 uses
  %.not17 = icmp eq ptr %i.l, null
  br i1 %.not17, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(49) %i.l, i64 noundef %1) #41 ; 2 uses
  %.not.not = icmp eq i32 %i.p, 0
  br i1 %.not.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %3, align 8, !tbaa !84     ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !49
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(49) %i.q, i64 noundef %2) #41
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit
  %.2 = phi i32 [ 2, %_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit ], [ %i.u, %bb.e ], [ %i.p, %bb.d ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 0, 16) i32 @_ZNK8simdjson7icelake14implementation6minifyEPKhmPhRm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4) unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  %i.b = alloca [128 x i8], align 16              ; 5 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 128)
  %.not.i = icmp ult i64 %2, 129
  br i1 %.not.i, label %._crit_edge.i, label %.noexc45.i

.noexc45.i:                                       ; preds = %bb.a, %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i
  %.sroa.32.0363.i = phi i64 [ %i.ax, %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ], [ 0, %bb.a ]
  %.sroa.41.0362.i = phi ptr [ %i.bj, %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ], [ %3, %bb.a ] ; 2 uses
  %.sroa.12.0361.i = phi i64 [ %.sroa.12.1.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ], [ 0, %bb.a ] ; 3 uses
  %.sroa.11.0360.i = phi i64 [ %i.bk, %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0360.i ; 2 uses
  %i.d = load <64 x i8>, ptr %i.c, align 1, !tbaa !9 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.f = load <64 x i8>, ptr %i.e, align 1, !tbaa !9 ; 5 uses
  %i.g = icmp eq <64 x i8> %i.d, splat (i8 92)
  %i.h = bitcast <64 x i1> %i.g to i64            ; 4 uses
  %.not.i70.i = icmp eq i64 %i.h, 0
  br i1 %.not.i70.i, label %.noexc48.i, label %bb.b

bb.b:                                             ; preds = %.noexc45.i
  %i.i = xor i64 %.sroa.12.0361.i, -1
  %i.j = and i64 %i.h, %i.i                       ; 2 uses
  %i.k = shl i64 %i.j, 1
  %i.l = or i64 %i.k, -6148914691236517206
  %i.m = sub i64 %i.l, %i.j
  %i.n = xor i64 %i.m, -6148914691236517206       ; 2 uses
  %i.o = or i64 %.sroa.12.0361.i, %i.h
  %i.p = xor i64 %i.n, %i.o
  %i.q = and i64 %i.n, %i.h
  %i.r = lshr i64 %i.q, 63
  br label %.noexc48.i

.noexc48.i:                                       ; preds = %bb.b, %.noexc45.i
  %.sroa.12.2.i = phi i64 [ %i.r, %bb.b ], [ 0, %.noexc45.i ] ; 3 uses
  %.sroa.0.0.i71.i = phi i64 [ %i.p, %bb.b ], [ %.sroa.12.0361.i, %.noexc45.i ]
  %i.s = icmp eq <64 x i8> %i.d, splat (i8 34)
  %i.t = bitcast <64 x i1> %i.s to i64
  %i.u = xor i64 %.sroa.0.0.i71.i, -1
  %i.v = and i64 %i.u, %i.t
  %i.w = insertelement <2 x i64> poison, i64 %i.v, i64 0
  %i.x = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.w, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.y = extractelement <2 x i64> %i.x, i64 0
  %i.z = xor i64 %i.y, %.sroa.32.0363.i           ; 2 uses
  %i.aa = ashr i64 %i.z, 63
  %i.ab = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <64 x i8> %i.d)
  %i.ac = icmp ne <64 x i8> %i.d, %i.ab
  %i.ad = icmp eq <64 x i8> %i.f, splat (i8 92)
  %i.ae = bitcast <64 x i1> %i.ad to i64          ; 5 uses
  %.not.i67.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i67.i, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i, label %bb.c

bb.c:                                             ; preds = %.noexc48.i
  %i.af = xor i64 %.sroa.12.2.i, -1
  %i.ag = and i64 %i.af, %i.ae
  %i.ah = shl i64 %i.ae, 1
  %i.ai = or i64 %i.ah, -6148914691236517206
  %i.aj = sub i64 %i.ai, %i.ag
  %i.ak = xor i64 %i.aj, -6148914691236517206     ; 2 uses
  %i.al = or i64 %.sroa.12.2.i, %i.ae
  %i.am = xor i64 %i.ak, %i.al
  %i.an = and i64 %i.ak, %i.ae
  %i.ao = lshr i64 %i.an, 63
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i

_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i: ; preds = %bb.c, %.noexc48.i
  %.sroa.12.1.i = phi i64 [ %i.ao, %bb.c ], [ 0, %.noexc48.i ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ %i.am, %bb.c ], [ %.sroa.12.2.i, %.noexc48.i ]
  %i.ap = icmp eq <64 x i8> %i.f, splat (i8 34)
  %i.aq = bitcast <64 x i1> %i.ap to i64
  %i.ar = xor i64 %.sroa.0.0.i.i, -1
  %i.as = and i64 %i.ar, %i.aq
  %i.at = insertelement <2 x i64> poison, i64 %i.as, i64 0
  %i.au = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.at, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.av = extractelement <2 x i64> %i.au, i64 0
  %i.aw = xor i64 %i.av, %i.aa                    ; 2 uses
  %i.ax = ashr i64 %i.aw, 63                      ; 2 uses
  %i.ay = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <64 x i8> %i.f)
  %i.az = icmp ne <64 x i8> %i.ay, %i.f
  %.not374.i = bitcast <64 x i1> %i.ac to i64
  %i.ba = or i64 %i.z, %.not374.i                 ; 2 uses
  %i.bb = bitcast i64 %i.ba to <64 x i1>
  %i.bc = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.d, <64 x i8> zeroinitializer, <64 x i1> %i.bb)
  store <64 x i8> %i.bc, ptr %.sroa.41.0362.i, align 1, !tbaa !9
  %i.bd = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ba)
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.41.0362.i, i64 %i.bd ; 2 uses
  %.not375.i = bitcast <64 x i1> %i.az to i64
  %i.bf = or i64 %i.aw, %.not375.i                ; 2 uses
  %i.bg = bitcast i64 %i.bf to <64 x i1>
  %i.bh = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %i.f, <64 x i8> zeroinitializer, <64 x i1> %i.bg)
  store <64 x i8> %i.bh, ptr %i.be, align 1, !tbaa !9
  %i.bi = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bf)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bi ; 2 uses
  %i.bk = add nuw i64 %.sroa.11.0360.i, 128       ; 3 uses
  %i.bl = icmp ult i64 %i.bk, %spec.select.i.i
  br i1 %i.bl, label %.noexc45.i, label %._crit_edge.i, !llvm.loop !137

._crit_edge.i:                                    ; preds = %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i, %bb.a
  %.sroa.11.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.bk, %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ] ; 3 uses
  %.sroa.12.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %.sroa.12.1.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ] ; 3 uses
  %.sroa.41.0.lcssa.i = phi ptr [ %3, %bb.a ], [ %i.bj, %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ] ; 3 uses
  %.sroa.32.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.ax, %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bm = icmp eq i64 %2, %.sroa.11.0.lcssa.i
  br i1 %i.bm, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier6minifyILm128EEENS_10error_codeEPKhmPhRm.exit, label %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i

_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i: ; preds = %._crit_edge.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 32, i64 128, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0.lcssa.i
  %i.bo = sub i64 %2, %.sroa.11.0.lcssa.i         ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.bn, i64 %i.bo, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %.0..0..0..0..0.358.i = load <64 x i8>, ptr %i.a, align 16, !tbaa !9 ; 5 uses
  %.64..64..64..64..64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.64..64..64..64..64.359.i = load <64 x i8>, ptr %.64..64..64..64..64..sroa_idx, align 16, !tbaa !9 ; 5 uses
  %i.bp = icmp eq <64 x i8> %.0..0..0..0..0.358.i, splat (i8 92)
  %i.bq = bitcast <64 x i1> %i.bp to i64          ; 4 uses
  %.not.i82.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i82.i, label %.noexc42.i, label %bb.d

bb.d:                                             ; preds = %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i
  %i.br = xor i64 %.sroa.12.0.lcssa.i, -1
  %i.bs = and i64 %i.bq, %i.br                    ; 2 uses
  %i.bt = shl i64 %i.bs, 1
  %i.bu = or i64 %i.bt, -6148914691236517206
  %i.bv = sub i64 %i.bu, %i.bs
  %i.bw = xor i64 %i.bv, -6148914691236517206     ; 2 uses
  %i.bx = or i64 %.sroa.12.0.lcssa.i, %i.bq
  %i.by = xor i64 %i.bw, %i.bx
  %i.bz = and i64 %i.bw, %i.bq
  %i.ca = lshr i64 %i.bz, 63
  br label %.noexc42.i

.noexc42.i:                                       ; preds = %bb.d, %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i
  %.sroa.12.3.i = phi i64 [ %i.ca, %bb.d ], [ 0, %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i ] ; 3 uses
  %.sroa.0.0.i83.i = phi i64 [ %i.by, %bb.d ], [ %.sroa.12.0.lcssa.i, %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i ]
  %i.cb = icmp eq <64 x i8> %.0..0..0..0..0.358.i, splat (i8 34)
  %i.cc = bitcast <64 x i1> %i.cb to i64
  %i.cd = xor i64 %.sroa.0.0.i83.i, -1
  %i.ce = and i64 %i.cd, %i.cc
  %i.cf = insertelement <2 x i64> poison, i64 %i.ce, i64 0
  %i.cg = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.cf, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.ch = extractelement <2 x i64> %i.cg, i64 0
  %i.ci = xor i64 %i.ch, %.sroa.32.0.lcssa.i      ; 2 uses
  %i.cj = ashr i64 %i.ci, 63
  %i.ck = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <64 x i8> %.0..0..0..0..0.358.i)
  %i.cl = icmp ne <64 x i8> %.0..0..0..0..0.358.i, %i.ck
  %i.cm = icmp eq <64 x i8> %.64..64..64..64..64.359.i, splat (i8 92)
  %i.cn = bitcast <64 x i1> %i.cm to i64          ; 4 uses
  %.not.i76.i = icmp eq i64 %i.cn, 0
  br i1 %.not.i76.i, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i, label %bb.e

bb.e:                                             ; preds = %.noexc42.i
  %i.co = xor i64 %.sroa.12.3.i, -1
  %i.cp = and i64 %i.co, %i.cn
  %i.cq = shl i64 %i.cn, 1
  %i.cr = or i64 %i.cq, -6148914691236517206
  %i.cs = sub i64 %i.cr, %i.cp
  %i.ct = or i64 %.sroa.12.3.i, %i.cn
  %i.cu = xor i64 %i.ct, %i.cs
  %i.cv = xor i64 %i.cu, -6148914691236517206
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i

_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i: ; preds = %bb.e, %.noexc42.i
  %.sroa.0.0.i77.i = phi i64 [ %i.cv, %bb.e ], [ %.sroa.12.3.i, %.noexc42.i ]
  %i.cw = icmp eq <64 x i8> %.64..64..64..64..64.359.i, splat (i8 34)
  %i.cx = bitcast <64 x i1> %i.cw to i64
  %i.cy = xor i64 %.sroa.0.0.i77.i, -1
  %i.cz = and i64 %i.cy, %i.cx
  %i.da = insertelement <2 x i64> poison, i64 %i.cz, i64 0
  %i.db = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.da, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.dc = extractelement <2 x i64> %i.db, i64 0
  %i.dd = xor i64 %i.dc, %i.cj                    ; 2 uses
  %i.de = ashr i64 %i.dd, 63
  %i.df = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <64 x i8> %.64..64..64..64..64.359.i)
  %i.dg = icmp ne <64 x i8> %.64..64..64..64..64.359.i, %i.df
  %.not376.i = bitcast <64 x i1> %i.cl to i64
  %i.dh = or i64 %i.ci, %.not376.i                ; 2 uses
  %i.di = bitcast i64 %i.dh to <64 x i1>
  %i.dj = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %.0..0..0..0..0.358.i, <64 x i8> zeroinitializer, <64 x i1> %i.di)
  store <64 x i8> %i.dj, ptr %i.b, align 16, !tbaa !9
  %i.dk = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dh) ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dk
  %.not377.i = bitcast <64 x i1> %i.dg to i64
  %i.dm = or i64 %i.dd, %.not377.i                ; 2 uses
  %i.dn = bitcast i64 %i.dm to <64 x i1>
  %i.do = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> %.64..64..64..64..64.359.i, <64 x i8> zeroinitializer, <64 x i1> %i.dn)
  store <64 x i8> %i.do, ptr %i.dl, align 1, !tbaa !9
  %i.dp = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dm)
  %i.dq = add nuw nsw i64 %i.dp, %i.dk
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.dq, i64 %i.bo) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.41.0.lcssa.i, ptr nonnull align 16 %i.b, i64 %spec.select.i, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.41.0.lcssa.i, i64 %spec.select.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier6minifyILm128EEENS_10error_codeEPKhmPhRm.exit

_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier6minifyILm128EEENS_10error_codeEPKhmPhRm.exit: ; preds = %._crit_edge.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i
  %.sroa.41.1.i = phi ptr [ %.sroa.41.0.lcssa.i, %._crit_edge.i ], [ %i.dr, %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i ]
  %.sroa.32.1.i = phi i64 [ %.sroa.32.0.lcssa.i, %._crit_edge.i ], [ %i.de, %_ZN8simdjson7icelake12_GLOBAL__N_16stage113json_minifier4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i ]
  %.not.i111.i = icmp eq i64 %.sroa.32.1.i, 0     ; 2 uses
  %i.ds = ptrtoint ptr %.sroa.41.1.i to i64
  %i.dt = ptrtoint ptr %3 to i64
  %i.du = sub i64 %i.ds, %i.dt
  %storemerge.i.i = select i1 %.not.i111.i, i64 %i.du, i64 0
  %.0.i15.i = select i1 %.not.i111.i, i32 0, i32 15
  store i64 %storemerge.i.i, ptr %4, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.0.i15.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 25) i32 @_ZN8simdjson7icelake25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) initializes((72, 88)) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !138
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %2, ptr %i.c, align 8, !tbaa !147
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !106
  %i.f = icmp ugt i64 %2, %i.e
  br i1 %i.f, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer5indexILm128EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit, label %bb.b, !prof !107

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer5indexILm128EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp ne i32 %3, 0                     ; 2 uses
  br i1 %.not.i, label %bb.d, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult i64 %2, 3
  br i1 %i.h, label %bb.e, label %bb.i, !prof !107

bb.e:                                             ; preds = %bb.d
  %i.i = icmp eq i64 %2, 2
  br i1 %i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %1, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !9
  %i.l = icmp ugt i8 %i.k, -65
  br i1 %i.l, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load i8, ptr %1, align 1, !tbaa !9
  %i.n = icmp ugt i8 %i.m, -33
  br i1 %i.n, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer5indexILm128EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i

bb.h:                                             ; preds = %bb.e
  %i.o = load i8, ptr %1, align 1, !tbaa !9
  %i.p = icmp ugt i8 %i.o, -65
  br i1 %i.p, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer5indexILm128EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i

bb.i:                                             ; preds = %bb.d
  %i.q = add i64 %2, -1                           ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !9
  %i.t = icmp ugt i8 %i.s, -65
  br i1 %i.t, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = add i64 %2, -2                           ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !9
  %i.x = icmp ugt i8 %i.w, -33
  br i1 %i.x, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = add i64 %2, -3                           ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !9
  %i.ab = icmp ugt i8 %i.aa, -17
  br i1 %i.ab, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.i, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i

_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.i: ; preds = %bb.k
  %i.ac = icmp eq i64 %i.y, 0
  br i1 %i.ac, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer5indexILm128EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i

_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i: ; preds = %bb.h, %bb.g, %bb.f
  %.013.ph.i = phi i64 [ 1, %bb.f ], [ 1, %bb.h ], [ 2, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !108
  br label %._crit_edge.thread.i

_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i: ; preds = %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.i, %bb.k, %bb.j, %bb.i, %bb.c
  %.013.i = phi i64 [ %i.y, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.i ], [ %2, %bb.c ], [ %2, %bb.k ], [ %i.q, %bb.i ], [ %i.u, %bb.j ] ; 5 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.013.i, i64 128)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !108 ; 2 uses
  %.not921.i = icmp ult i64 %.013.i, 129
  br i1 %.not921.i, label %._crit_edge.thread.i, label %.lr.ph.i

end_hunk_3
begin_hunk_4_@_ZN8simdjson7icelake25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE:bb.a
  %i.de = lshr i64 %i.dc, 63                      ; 2 uses
  %i.df = icmp ult <64 x i8> %i.al, splat (i8 32)
  %i.dg = bitcast <64 x i1> %i.df to i64
  %i.dh = icmp slt <64 x i8> %i.al, zeroinitializer
  %i.di = bitcast <64 x i1> %i.dh to i64
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i65.i, label %.noexc70.i, !prof !109

.noexc70.i:                                       ; preds = %.noexc67.i
  %i.dk = shufflevector <8 x i64> %.sroa.62.0889.i, <8 x i64> %i.ai, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.dl = bitcast <8 x i64> %i.dk to <64 x i8>    ; 3 uses
  %i.dm = shufflevector <64 x i8> %i.dl, <64 x i8> %i.al, <64 x i32> <i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126> ; 2 uses
  %i.dn = bitcast <64 x i8> %i.dm to <32 x i16>
  %i.do = lshr <32 x i16> %i.dn, splat (i16 4)
  %i.dp = bitcast <32 x i16> %i.do to <64 x i8>
  %i.dq = and <64 x i8> %i.dp, splat (i8 15)
  %i.dr = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <64 x i8> %i.dq)
  %i.ds = and <64 x i8> %i.dm, splat (i8 15)
  %i.dt = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <64 x i8> %i.ds)
  %i.du = bitcast <8 x i64> %i.ai to <32 x i16>
  %i.dv = lshr <32 x i16> %i.du, splat (i16 4)
  %i.dw = bitcast <32 x i16> %i.dv to <64 x i8>
  %i.dx = and <64 x i8> %i.dw, splat (i8 15)
  %i.dy = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <64 x i8> %i.dx)
  %i.dz = and <64 x i8> %i.dt, %i.dr
  %i.ea = and <64 x i8> %i.dz, %i.dy
  %i.eb = shufflevector <64 x i8> %i.dl, <64 x i8> %i.al, <64 x i32> <i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %i.ec = shufflevector <64 x i8> %i.dl, <64 x i8> %i.al, <64 x i32> <i32 13, i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 29, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 45, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 61, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124>
  %i.ed = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.eb, <64 x i8> splat (i8 96))
  %i.ee = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.ec, <64 x i8> splat (i8 112))
  %i.ef = or <64 x i8> %i.ed, %i.ee
  %.inner50 = and <64 x i8> %i.ef, splat (i8 -128)
  %.inner51 = xor <64 x i8> %.inner50, %i.ea
  %i.eg = bitcast <64 x i8> %.inner51 to <8 x i64>
  %i.eh = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.al, <64 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.ei = bitcast <64 x i8> %i.eh to <8 x i64>
  br label %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i65.i

_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i65.i: ; preds = %.noexc70.i, %.noexc67.i
  %.sroa.71.2.i = phi <8 x i64> [ %i.ei, %.noexc70.i ], [ %.sroa.71.0888.i, %.noexc67.i ] ; 2 uses
  %.sroa.62.2.i = phi <8 x i64> [ %i.ai, %.noexc70.i ], [ %.sroa.62.0889.i, %.noexc67.i ] ; 2 uses
  %.sroa.71.0.pn873.i = phi <8 x i64> [ %i.eg, %.noexc70.i ], [ %.sroa.71.0888.i, %.noexc67.i ]
  %i.ej = icmp eq i64 %.sroa.113.0886.i, 0
  br i1 %i.ej, label %.noexc55.i, label %bb.n

bb.n:                                             ; preds = %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i65.i
  %i.ek = trunc i64 %.sroa.11.0882.i to i32
  %i.el = add i32 %i.ek, -64
  %i.em = bitcast i64 %.sroa.113.0886.i to <64 x i1>
  %i.en = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.em) ; 4 uses
  %i.eo = insertelement <16 x i32> poison, i32 %i.el, i64 0
  %i.ep = shufflevector <16 x i32> %i.eo, <16 x i32> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.eq = tail call noundef range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.sroa.113.0886.i) ; 4 uses
  %i.er = shufflevector <64 x i8> %i.en, <64 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.es = zext <16 x i8> %i.er to <16 x i32>
  %i.et = add <16 x i32> %i.ep, %i.es
  store <16 x i32> %i.et, ptr %.sroa.81.0887.i, align 1, !tbaa !9
  %i.eu = icmp samesign ugt i64 %i.eq, 16
  br i1 %i.eu, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ev = shufflevector <64 x i8> %i.en, <64 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ew = zext <16 x i8> %i.ev to <16 x i32>
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.81.0887.i, i64 64
  %i.ey = add <16 x i32> %i.ep, %i.ew
  store <16 x i32> %i.ey, ptr %i.ex, align 1, !tbaa !9
  %i.ez = icmp samesign ugt i64 %i.eq, 32
  br i1 %i.ez, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.fa = shufflevector <64 x i8> %i.en, <64 x i8> poison, <16 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.fb = zext <16 x i8> %i.fa to <16 x i32>
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.81.0887.i, i64 128
  %i.fd = add <16 x i32> %i.ep, %i.fb
  store <16 x i32> %i.fd, ptr %i.fc, align 1, !tbaa !9
  %i.fe = icmp samesign ugt i64 %i.eq, 48
  br i1 %i.fe, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ff = shufflevector <64 x i8> %i.en, <64 x i8> poison, <16 x i32> <i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.fg = zext <16 x i8> %i.ff to <16 x i32>
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.81.0887.i, i64 192
  %i.fi = add <16 x i32> %i.ep, %i.fg
  store <16 x i32> %i.fi, ptr %i.fh, align 1, !tbaa !9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.81.0887.i, i64 %i.eq
  br label %.noexc55.i

.noexc55.i:                                       ; preds = %bb.r, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i65.i
  %.sroa.81.3.i = phi ptr [ %.sroa.81.0887.i, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i65.i ], [ %i.fj, %bb.r ] ; 6 uses
  %i.fk = xor i64 %i.bu, -1
  %i.fl = and i64 %i.fk, %i.bq
  %i.fm = or i64 %i.fl, %i.bn
  %i.fn = xor i64 %i.bb, %i.bf
  %i.fo = xor i64 %i.fn, -1
  %i.fp = and i64 %i.fm, %i.fo                    ; 3 uses
  %i.fq = and i64 %i.bf, %i.dg
  %i.fr = icmp ult <64 x i8> %i.bv, splat (i8 32)
  %i.fs = bitcast <64 x i1> %i.fr to i64
  %i.ft = icmp slt <64 x i8> %i.bv, zeroinitializer
  %i.fu = bitcast <64 x i1> %i.ft to i64
  %i.fv = icmp eq i64 %i.fu, 0
  br i1 %i.fv, label %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i, label %.noexc58.i, !prof !109

.noexc58.i:                                       ; preds = %.noexc55.i
  %i.fw = shufflevector <8 x i64> %.sroa.62.2.i, <8 x i64> %i.ak, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.fx = bitcast <8 x i64> %i.fw to <64 x i8>    ; 3 uses
  %i.fy = shufflevector <64 x i8> %i.fx, <64 x i8> %i.bv, <64 x i32> <i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126> ; 2 uses
  %i.fz = bitcast <64 x i8> %i.fy to <32 x i16>
  %i.ga = lshr <32 x i16> %i.fz, splat (i16 4)
  %i.gb = bitcast <32 x i16> %i.ga to <64 x i8>
  %i.gc = and <64 x i8> %i.gb, splat (i8 15)
  %i.gd = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <64 x i8> %i.gc)
  %i.ge = and <64 x i8> %i.fy, splat (i8 15)
  %i.gf = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <64 x i8> %i.ge)
  %i.gg = bitcast <8 x i64> %i.ak to <32 x i16>
  %i.gh = lshr <32 x i16> %i.gg, splat (i16 4)
  %i.gi = bitcast <32 x i16> %i.gh to <64 x i8>
  %i.gj = and <64 x i8> %i.gi, splat (i8 15)
  %i.gk = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <64 x i8> %i.gj)
  %i.gl = and <64 x i8> %i.gf, %i.gd
  %i.gm = and <64 x i8> %i.gl, %i.gk
  %i.gn = shufflevector <64 x i8> %i.fx, <64 x i8> %i.bv, <64 x i32> <i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %i.go = shufflevector <64 x i8> %i.fx, <64 x i8> %i.bv, <64 x i32> <i32 13, i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 29, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 45, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 61, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124>
  %i.gp = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.gn, <64 x i8> splat (i8 96))
  %i.gq = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.go, <64 x i8> splat (i8 112))
  %i.gr = or <64 x i8> %i.gp, %i.gq
  %.inner54 = and <64 x i8> %i.gr, splat (i8 -128)
  %.inner55 = xor <64 x i8> %.inner54, %i.gm
  %i.gs = bitcast <64 x i8> %.inner55 to <8 x i64>
  %i.gt = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.bv, <64 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.gu = bitcast <64 x i8> %i.gt to <8 x i64>
  br label %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i

_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i: ; preds = %.noexc58.i, %.noexc55.i
  %.sroa.71.1.i = phi <8 x i64> [ %i.gu, %.noexc58.i ], [ %.sroa.71.2.i, %.noexc55.i ] ; 2 uses
  %.sroa.62.1.i = phi <8 x i64> [ %i.ak, %.noexc58.i ], [ %.sroa.62.2.i, %.noexc55.i ] ; 2 uses
  %.sroa.71.2.pn.i = phi <8 x i64> [ %i.gs, %.noexc58.i ], [ %.sroa.71.2.i, %.noexc55.i ]
  %i.gv = or <8 x i64> %.sroa.71.0.pn873.i, %.sroa.41175.0890.i
  %.sroa.41175.1.i = or <8 x i64> %i.gv, %.sroa.71.2.pn.i ; 2 uses
  %i.gw = icmp eq i64 %i.fp, 0
  br i1 %i.gw, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit51.i, label %bb.s

bb.s:                                             ; preds = %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i
  %i.gx = trunc i64 %.sroa.11.0882.i to i32
  %i.gy = bitcast i64 %i.fp to <64 x i1>
  %i.gz = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.gy) ; 4 uses
  %i.ha = insertelement <16 x i32> poison, i32 %i.gx, i64 0
  %i.hb = shufflevector <16 x i32> %i.ha, <16 x i32> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.hc = tail call noundef range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.fp) ; 4 uses
  %i.hd = shufflevector <64 x i8> %i.gz, <64 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.he = zext <16 x i8> %i.hd to <16 x i32>
  %i.hf = add <16 x i32> %i.hb, %i.he
  store <16 x i32> %i.hf, ptr %.sroa.81.3.i, align 1, !tbaa !9
  %i.hg = icmp samesign ugt i64 %i.hc, 16
  br i1 %i.hg, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.hh = shufflevector <64 x i8> %i.gz, <64 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hi = zext <16 x i8> %i.hh to <16 x i32>
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.81.3.i, i64 64
  %i.hk = add <16 x i32> %i.hb, %i.hi
  store <16 x i32> %i.hk, ptr %i.hj, align 1, !tbaa !9
  %i.hl = icmp samesign ugt i64 %i.hc, 32
  br i1 %i.hl, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.hm = shufflevector <64 x i8> %i.gz, <64 x i8> poison, <16 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.hn = zext <16 x i8> %i.hm to <16 x i32>
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.81.3.i, i64 128
  %i.hp = add <16 x i32> %i.hb, %i.hn
  store <16 x i32> %i.hp, ptr %i.ho, align 1, !tbaa !9
  %i.hq = icmp samesign ugt i64 %i.hc, 48
  br i1 %i.hq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.hr = shufflevector <64 x i8> %i.gz, <64 x i8> poison, <16 x i32> <i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.hs = zext <16 x i8> %i.hr to <16 x i32>
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.81.3.i, i64 192
  %i.hu = add <16 x i32> %i.hb, %i.hs
  store <16 x i32> %i.hu, ptr %i.ht, align 1, !tbaa !9
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.81.3.i, i64 %i.hc
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit51.i

_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit51.i: ; preds = %bb.w, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i
  %.sroa.81.4.i = phi ptr [ %.sroa.81.3.i, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i ], [ %i.hv, %bb.w ] ; 2 uses
  %i.hw = xor i64 %i.dd, -1
  %i.hx = and i64 %i.hw, %i.da
  %i.hy = or i64 %i.hx, %i.cx
  %i.hz = xor i64 %i.cl, %i.cp
  %i.ia = xor i64 %i.hz, -1
  %i.ib = and i64 %i.hy, %i.ia                    ; 2 uses
  %i.ic = and i64 %i.cp, %i.fs
  %i.id = or i64 %i.fq, %.sroa.123.0885.i
  %i.ie = or i64 %i.id, %i.ic                     ; 2 uses
  %i.if = add nuw i64 %.sroa.11.0882.i, 128       ; 4 uses
  %i.ig = icmp ult i64 %i.if, %spec.select.i.i
  br i1 %i.ig, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !148

._crit_edge.thread.i:                             ; preds = %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i
  %.ph.i = phi ptr [ %i.ad, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %i.af, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  %.013957.ph.i = phi i64 [ %.013.ph.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %.013.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  %.sroa.81.0.lcssa.ph.i = phi ptr [ %i.ae, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %i.ag, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i

._crit_edge.i:                                    ; preds = %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit51.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ih = icmp eq i64 %.013.i, %i.if
  br i1 %i.ih, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i

_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i: ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.sroa.32.0.lcssa979.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.cq, %._crit_edge.i ]
  %.sroa.41175.0.lcssa978.i = phi <8 x i64> [ zeroinitializer, %._crit_edge.thread.i ], [ %.sroa.41175.1.i, %._crit_edge.i ]
  %.sroa.62.0.lcssa977.i = phi <8 x i64> [ zeroinitializer, %._crit_edge.thread.i ], [ %.sroa.62.1.i, %._crit_edge.i ] ; 2 uses
  %.sroa.71.0.lcssa976.i = phi <8 x i64> [ zeroinitializer, %._crit_edge.thread.i ], [ %.sroa.71.1.i, %._crit_edge.i ] ; 2 uses
  %.sroa.81.0.lcssa975.i = phi ptr [ %.sroa.81.0.lcssa.ph.i, %._crit_edge.thread.i ], [ %.sroa.81.4.i, %._crit_edge.i ] ; 6 uses
  %.sroa.113.0.lcssa974.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.ib, %._crit_edge.i ] ; 3 uses
  %.sroa.123.0.lcssa973.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.ie, %._crit_edge.i ]
  %.sroa.12.0.lcssa972.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %.sroa.12.3.i, %._crit_edge.i ] ; 3 uses
  %.sroa.0.0.lcssa971.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.de, %._crit_edge.i ]
  %.sroa.11.0.lcssa970.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.if, %._crit_edge.i ] ; 5 uses
  %.013957969.i = phi i64 [ %.013957.ph.i, %._crit_edge.thread.i ], [ %.013.i, %._crit_edge.i ] ; 3 uses
  %i.ii = phi ptr [ %.ph.i, %._crit_edge.thread.i ], [ %i.af, %._crit_edge.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 32, i64 128, i1 false)
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0.lcssa970.i
  %i.ik = sub i64 %.013957969.i, %.sroa.11.0.lcssa970.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.ij, i64 %i.ik, i1 false)
  %.0..0..0..0..0..i = load <8 x i64>, ptr %i.a, align 16, !tbaa !9 ; 5 uses
  %.64..64..64..64..64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.64..64..64..64..64..i = load <8 x i64>, ptr %.64..64..64..64..64..sroa_idx, align 16, !tbaa !9 ; 4 uses
  %i.il = bitcast <8 x i64> %.0..0..0..0..0..i to <64 x i8> ; 11 uses
  %i.im = icmp eq <64 x i8> %i.il, splat (i8 92)
  %i.in = bitcast <64 x i1> %i.im to i64          ; 4 uses
  %.not.i29.i.i = icmp eq i64 %i.in, 0
  br i1 %.not.i29.i.i, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit34.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i
  %i.io = xor i64 %.sroa.12.0.lcssa972.i, -1
  %i.ip = and i64 %i.in, %i.io                    ; 2 uses
  %i.iq = shl i64 %i.ip, 1
  %i.ir = or i64 %i.iq, -6148914691236517206
  %i.is = sub i64 %i.ir, %i.ip
  %i.it = xor i64 %i.is, -6148914691236517206     ; 2 uses
  %i.iu = or i64 %.sroa.12.0.lcssa972.i, %i.in
  %i.iv = xor i64 %i.it, %i.iu
  %i.iw = and i64 %i.it, %i.in
  %i.ix = lshr i64 %i.iw, 63
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit34.i.i

_ZN8simdjson7icelake12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit34.i.i: ; preds = %bb.x, %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i
  %.sroa.12.1.i = phi i64 [ %i.ix, %bb.x ], [ 0, %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i ] ; 3 uses
  %.sroa.0.0.i30.i.i = phi i64 [ %i.iv, %bb.x ], [ %.sroa.12.0.lcssa972.i, %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i ]
  %i.iy = icmp eq <64 x i8> %i.il, splat (i8 34)
  %i.iz = bitcast <64 x i1> %i.iy to i64
  %i.ja = xor i64 %.sroa.0.0.i30.i.i, -1
  %i.jb = and i64 %i.ja, %i.iz                    ; 3 uses
  %i.jc = insertelement <2 x i64> poison, i64 %i.jb, i64 0
  %i.jd = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.jc, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.je = extractelement <2 x i64> %i.jd, i64 0
  %i.jf = xor i64 %i.je, %.sroa.32.0.lcssa979.i   ; 3 uses
  %i.jg = ashr i64 %i.jf, 63
  %i.jh = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <64 x i8> %i.il)
  %i.ji = icmp eq <64 x i8> %i.jh, %i.il
  %i.jj = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <64 x i8> %i.il)
  %i.jk = bitcast <8 x i64> %.0..0..0..0..0..i to <64 x i8>
  %i.jl = or <64 x i8> %i.jk, splat (i8 32)
  %i.jm = icmp eq <64 x i8> %i.jl, %i.jj          ; 2 uses
  %i.jn = bitcast <64 x i1> %i.jm to i64
  %i.jo = or <64 x i1> %i.ji, %i.jm
  %i.jp = bitcast <64 x i1> %i.jo to i64
  %i.jq = xor i64 %i.jp, -1                       ; 2 uses
  %i.jr = xor i64 %i.jb, -1
  %i.js = and i64 %i.jq, %i.jr                    ; 2 uses
  %i.jt = shl i64 %i.js, 1
  %i.ju = or disjoint i64 %i.jt, %.sroa.0.0.lcssa971.i
  %i.jv = bitcast <8 x i64> %.64..64..64..64..64..i to <64 x i8> ; 11 uses
  %i.jw = icmp eq <64 x i8> %i.jv, splat (i8 92)
  %i.jx = bitcast <64 x i1> %i.jw to i64          ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.jx, 0
  br i1 %.not.i.i.i, label %.noexc93.i, label %bb.y

bb.y:                                             ; preds = %_ZN8simdjson7icelake12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit34.i.i
  %i.jy = xor i64 %.sroa.12.1.i, -1
  %i.jz = and i64 %i.jy, %i.jx
  %i.ka = shl i64 %i.jx, 1
  %i.kb = or i64 %i.ka, -6148914691236517206
  %i.kc = sub i64 %i.kb, %i.jz
  %i.kd = or i64 %.sroa.12.1.i, %i.jx
  %i.ke = xor i64 %i.kd, %i.kc
  %i.kf = xor i64 %i.ke, -6148914691236517206
  br label %.noexc93.i

.noexc93.i:                                       ; preds = %bb.y, %_ZN8simdjson7icelake12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit34.i.i
  %.sroa.0.0.i.i.i = phi i64 [ %i.kf, %bb.y ], [ %.sroa.12.1.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit34.i.i ]
  %i.kg = icmp eq <64 x i8> %i.jv, splat (i8 34)
  %i.kh = bitcast <64 x i1> %i.kg to i64
  %i.ki = xor i64 %.sroa.0.0.i.i.i, -1
  %i.kj = and i64 %i.ki, %i.kh                    ; 3 uses
  %i.kk = insertelement <2 x i64> poison, i64 %i.kj, i64 0
  %i.kl = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.kk, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.km = extractelement <2 x i64> %i.kl, i64 0
  %i.kn = xor i64 %i.km, %i.jg                    ; 3 uses
  %i.ko = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <64 x i8> %i.jv)
  %i.kp = icmp eq <64 x i8> %i.ko, %i.jv
  %i.kq = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <64 x i8> %i.jv)
  %i.kr = bitcast <8 x i64> %.64..64..64..64..64..i to <64 x i8>
  %i.ks = or <64 x i8> %i.kr, splat (i8 32)
  %i.kt = icmp eq <64 x i8> %i.ks, %i.kq          ; 2 uses
  %i.ku = bitcast <64 x i1> %i.kt to i64
  %i.kv = or <64 x i1> %i.kp, %i.kt
  %i.kw = bitcast <64 x i1> %i.kv to i64
  %i.kx = xor i64 %i.kw, -1                       ; 2 uses
  %i.ky = xor i64 %i.kj, -1
  %i.kz = and i64 %i.kx, %i.ky
  %i.la = tail call i64 @llvm.fshl.i64(i64 %i.kz, i64 %i.js, i64 1)
  %i.lb = icmp ult <64 x i8> %i.il, splat (i8 32)
  %i.lc = bitcast <64 x i1> %i.lb to i64
  %i.ld = icmp slt <64 x i8> %i.il, zeroinitializer
  %i.le = bitcast <64 x i1> %i.ld to i64
  %i.lf = icmp eq i64 %i.le, 0
  br i1 %i.lf, label %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i91.i, label %.noexc96.i, !prof !109

.noexc96.i:                                       ; preds = %.noexc93.i
  %i.lg = shufflevector <8 x i64> %.sroa.62.0.lcssa977.i, <8 x i64> %.0..0..0..0..0..i, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.lh = bitcast <8 x i64> %i.lg to <64 x i8>    ; 3 uses
  %i.li = shufflevector <64 x i8> %i.lh, <64 x i8> %i.il, <64 x i32> <i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126> ; 2 uses
  %i.lj = bitcast <64 x i8> %i.li to <32 x i16>
  %i.lk = lshr <32 x i16> %i.lj, splat (i16 4)
  %i.ll = bitcast <32 x i16> %i.lk to <64 x i8>
  %i.lm = and <64 x i8> %i.ll, splat (i8 15)
  %i.ln = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <64 x i8> %i.lm)
  %i.lo = and <64 x i8> %i.li, splat (i8 15)
  %i.lp = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <64 x i8> %i.lo)
  %i.lq = bitcast <8 x i64> %.0..0..0..0..0..i to <32 x i16>
  %i.lr = lshr <32 x i16> %i.lq, splat (i16 4)
  %i.ls = bitcast <32 x i16> %i.lr to <64 x i8>
  %i.lt = and <64 x i8> %i.ls, splat (i8 15)
  %i.lu = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <64 x i8> %i.lt)
  %i.lv = and <64 x i8> %i.lp, %i.ln
  %i.lw = and <64 x i8> %i.lv, %i.lu
  %i.lx = shufflevector <64 x i8> %i.lh, <64 x i8> %i.il, <64 x i32> <i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %i.ly = shufflevector <64 x i8> %i.lh, <64 x i8> %i.il, <64 x i32> <i32 13, i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 29, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 45, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 61, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124>
  %i.lz = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.lx, <64 x i8> splat (i8 96))
  %i.ma = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.ly, <64 x i8> splat (i8 112))
  %i.mb = or <64 x i8> %i.lz, %i.ma
  %.inner60 = and <64 x i8> %i.mb, splat (i8 -128)
  %.inner61 = xor <64 x i8> %.inner60, %i.lw
  %i.mc = bitcast <64 x i8> %.inner61 to <8 x i64>
  %i.md = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.il, <64 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.me = bitcast <64 x i8> %i.md to <8 x i64>
  br label %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i91.i

_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i91.i: ; preds = %.noexc96.i, %.noexc93.i
  %.sroa.71.4.i = phi <8 x i64> [ %i.me, %.noexc96.i ], [ %.sroa.71.0.lcssa976.i, %.noexc93.i ] ; 2 uses
  %.sroa.62.3.i = phi <8 x i64> [ %.0..0..0..0..0..i, %.noexc96.i ], [ %.sroa.62.0.lcssa977.i, %.noexc93.i ]
  %.sroa.71.0.pn.i = phi <8 x i64> [ %i.mc, %.noexc96.i ], [ %.sroa.71.0.lcssa976.i, %.noexc93.i ]
  %i.mf = icmp eq i64 %.sroa.113.0.lcssa974.i, 0
  br i1 %i.mf, label %.noexc80.i, label %bb.z

bb.z:                                             ; preds = %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i91.i
  %i.mg = trunc i64 %.sroa.11.0.lcssa970.i to i32
  %i.mh = add i32 %i.mg, -64
  %i.mi = bitcast i64 %.sroa.113.0.lcssa974.i to <64 x i1>
  %i.mj = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.mi) ; 4 uses
  %i.mk = insertelement <16 x i32> poison, i32 %i.mh, i64 0
  %i.ml = shufflevector <16 x i32> %i.mk, <16 x i32> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.mm = tail call noundef range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.sroa.113.0.lcssa974.i) ; 4 uses
  %i.mn = shufflevector <64 x i8> %i.mj, <64 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mo = zext <16 x i8> %i.mn to <16 x i32>
  %i.mp = add <16 x i32> %i.ml, %i.mo
  store <16 x i32> %i.mp, ptr %.sroa.81.0.lcssa975.i, align 1, !tbaa !9
  %i.mq = icmp samesign ugt i64 %i.mm, 16
  br i1 %i.mq, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.mr = shufflevector <64 x i8> %i.mj, <64 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ms = zext <16 x i8> %i.mr to <16 x i32>
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.81.0.lcssa975.i, i64 64
  %i.mu = add <16 x i32> %i.ml, %i.ms
  store <16 x i32> %i.mu, ptr %i.mt, align 1, !tbaa !9
  %i.mv = icmp samesign ugt i64 %i.mm, 32
  br i1 %i.mv, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.mw = shufflevector <64 x i8> %i.mj, <64 x i8> poison, <16 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.mx = zext <16 x i8> %i.mw to <16 x i32>
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.81.0.lcssa975.i, i64 128
  %i.mz = add <16 x i32> %i.ml, %i.mx
  store <16 x i32> %i.mz, ptr %i.my, align 1, !tbaa !9
  %i.na = icmp samesign ugt i64 %i.mm, 48
  br i1 %i.na, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.nb = shufflevector <64 x i8> %i.mj, <64 x i8> poison, <16 x i32> <i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.nc = zext <16 x i8> %i.nb to <16 x i32>
end_hunk_4
begin_hunk_5_@_ZN8simdjson7icelake25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE:bb.a
  %.036.i127904.i = phi i32 [ 0, %.lr.ph907.i ], [ %.238.i135.i, %bb.bq ] ; 7 uses
  %.039.i126903.i = phi i32 [ 0, %.lr.ph907.i ], [ %.241.i134.i, %bb.bq ] ; 7 uses
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %indvars.iv.i
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !10
  %i.tq = zext i32 %i.tp to i64
  %i.tr = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.tq
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !9
  switch i8 %i.ts, label %bb.bo [
    i8 58, label %bb.bq
    i8 44, label %bb.bq
    i8 125, label %bb.bk
    i8 93, label %bb.bl
    i8 123, label %bb.bm
    i8 91, label %bb.bn
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.tt = add nsw i32 %.036.i127904.i, -1
  br label %bb.bq

bb.bl:                                            ; preds = %bb.bj
  %i.tu = add nsw i32 %.039.i126903.i, -1
  br label %bb.bq

bb.bm:                                            ; preds = %bb.bj
  %i.tv = add nsw i32 %.036.i127904.i, 1
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bj
  %i.tw = add nsw i32 %.039.i126903.i, 1
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bj
  %.140.i131.i = phi i32 [ %.039.i126903.i, %bb.bj ], [ %.039.i126903.i, %bb.bm ], [ %i.tw, %bb.bn ] ; 5 uses
  %.137.i132.i = phi i32 [ %.036.i127904.i, %bb.bj ], [ %i.tv, %bb.bm ], [ %.036.i127904.i, %bb.bn ] ; 5 uses
  %i.tx = add i32 %.035.in.i128905.i, -2
  %i.ty = zext i32 %i.tx to i64
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %i.ty
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !10
  %i.ub = zext i32 %i.ua to i64
  %i.uc = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ub
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !9
  switch i8 %i.ud, label %bb.bp [
    i8 123, label %bb.bq
    i8 91, label %bb.bq
    i8 58, label %bb.bq
    i8 44, label %bb.bq
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.ue = trunc nuw i64 %indvars.iv.i to i32
  %i.uf = icmp ne i32 %.140.i131.i, 0
  %i.ug = icmp ne i32 %.137.i132.i, 0
  %or.cond.i144.i = select i1 %i.uf, i1 true, i1 %i.ug
  %spec.select.i = select i1 %or.cond.i144.i, i32 %i.ue, i32 %i.tm
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit145.i

bb.bq:                                            ; preds = %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bl, %bb.bk, %bb.bj, %bb.bj
  %.241.i134.i = phi i32 [ %.039.i126903.i, %bb.bj ], [ %i.tu, %bb.bl ], [ %.039.i126903.i, %bb.bk ], [ %.039.i126903.i, %bb.bj ], [ %.140.i131.i, %bb.bo ], [ %.140.i131.i, %bb.bo ], [ %.140.i131.i, %bb.bo ], [ %.140.i131.i, %bb.bo ] ; 2 uses
  %.238.i135.i = phi i32 [ %.036.i127904.i, %bb.bj ], [ %.036.i127904.i, %bb.bl ], [ %i.tt, %bb.bk ], [ %.036.i127904.i, %bb.bj ], [ %.137.i132.i, %bb.bo ], [ %.137.i132.i, %bb.bo ], [ %.137.i132.i, %bb.bo ], [ %.137.i132.i, %bb.bo ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.uh = and i64 %indvars.iv.next.i, 4294967295
  %.not.i130.i = icmp eq i64 %i.uh, 0
  %i.ui = trunc nuw i64 %indvars.iv.i to i32
  br i1 %.not.i130.i, label %._crit_edge908.i, label %bb.bj, !llvm.loop !149

._crit_edge908.i:                                 ; preds = %bb.bq, %.preheader875.i
  %.039.i126.lcssa.i = phi i32 [ 0, %.preheader875.i ], [ %.241.i134.i, %bb.bq ] ; 5 uses
  %.036.i127.lcssa.i = phi i32 [ 0, %.preheader875.i ], [ %.238.i135.i, %bb.bq ] ; 5 uses
  %i.uj = load i32, ptr %i.rb, align 4, !tbaa !10
  %i.uk = zext i32 %i.uj to i64
  %i.ul = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.uk
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !9
  switch i8 %i.um, label %bb.bv [
    i8 125, label %bb.br
    i8 93, label %bb.bs
    i8 123, label %bb.bt
    i8 91, label %bb.bu
  ]

bb.br:                                            ; preds = %._crit_edge908.i
  %i.un = add nsw i32 %.036.i127.lcssa.i, -1
  br label %bb.bv

bb.bs:                                            ; preds = %._crit_edge908.i
  %i.uo = add nsw i32 %.039.i126.lcssa.i, -1
  br label %bb.bv

bb.bt:                                            ; preds = %._crit_edge908.i
  %i.up = add nsw i32 %.036.i127.lcssa.i, 1
  br label %bb.bv

bb.bu:                                            ; preds = %._crit_edge908.i
  %i.uq = add nsw i32 %.039.i126.lcssa.i, 1
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.br, %._crit_edge908.i
  %.443.i141.i = phi i32 [ %.039.i126.lcssa.i, %._crit_edge908.i ], [ %.039.i126.lcssa.i, %bb.br ], [ %i.uo, %bb.bs ], [ %.039.i126.lcssa.i, %bb.bt ], [ %i.uq, %bb.bu ]
  %.4.i142.i = phi i32 [ %.036.i127.lcssa.i, %._crit_edge908.i ], [ %i.un, %bb.br ], [ %.036.i127.lcssa.i, %bb.bs ], [ %i.up, %bb.bt ], [ %.036.i127.lcssa.i, %bb.bu ]
  %i.ur = icmp ne i32 %.443.i141.i, 0
  %i.us = icmp ne i32 %.4.i142.i, 0
  %or.cond4.i143.i = select i1 %i.ur, i1 true, i1 %i.us
  %spec.select868.i = select i1 %or.cond4.i143.i, i32 0, i32 %i.tm
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit145.i

_ZN8simdjson7icelake12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit145.i: ; preds = %bb.bv, %bb.bp, %thread-pre-split853.i
  %.5.i140.i = phi i32 [ 0, %thread-pre-split853.i ], [ %spec.select.i, %bb.bp ], [ %spec.select868.i, %bb.bv ] ; 3 uses
  store i32 %.5.i140.i, ptr %i.rh, align 8, !tbaa !73
  %i.ut = zext i32 %.5.i140.i to i64
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %i.ut
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !10
  %i.uw = add i32 %.5.i140.i, 1
  %i.ux = zext i32 %i.uw to i64
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %i.ux
  store i32 %i.uv, ptr %i.uy, align 4, !tbaa !10
  %i.uz = load i32, ptr %i.rh, align 8, !tbaa !73
  %i.va = zext i32 %i.uz to i64
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %i.va
  store i32 %i.ri, ptr %i.vb, align 4, !tbaa !10
  %i.vc = load i32, ptr %i.rh, align 8, !tbaa !73
  %i.vd = icmp eq i32 %i.vc, 0
  br i1 %i.vd, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %bb.bw, !prof !107

bb.bw:                                            ; preds = %_ZN8simdjson7icelake12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit145.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit.thread847.i, %bb.aq
  %i.ve = or <8 x i64> %.sroa.71.0.pn.i, %.sroa.41175.0.lcssa978.i
  %i.vf = or <8 x i64> %i.ve, %.sroa.71.3.i
  %i.vg = or <8 x i64> %i.vf, %.sroa.71.4.pn.i
  %i.vh = bitcast <8 x i64> %i.vg to <64 x i8>
  %i.vi = icmp ne <64 x i8> %i.vh, zeroinitializer
  %i.vj = bitcast <64 x i1> %i.vi to i64
  %.not.i.i53.not.i = icmp eq i64 %i.vj, 0
  %i.vk = select i1 %.not.i.i53.not.i, i32 0, i32 11
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i

_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i: ; preds = %bb.bw, %_ZN8simdjson7icelake12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit145.i, %bb.bh, %bb.bg, %bb.as, %bb.ap, %bb.ao, %.thread.i, %.noexc.i, %._crit_edge.i
  %.0.i = phi i32 [ 13, %bb.bh ], [ 13, %_ZN8simdjson7icelake12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit145.i ], [ 1, %bb.as ], [ 15, %.noexc.i ], [ 14, %.thread.i ], [ 13, %bb.ao ], [ 24, %bb.ap ], [ %i.vk, %bb.bw ], [ 24, %._crit_edge.i ], [ 1, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer5indexILm128EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit

_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer5indexILm128EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit: ; preds = %bb.a, %bb.b, %bb.g, %bb.h, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i
  %.1.i = phi i32 [ %.0.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i ], [ 1, %bb.a ], [ 13, %bb.b ], [ 11, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.i ], [ 11, %bb.h ], [ 11, %bb.g ]
  ret i32 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZNK8simdjson7icelake14implementation13validate_utf8EPKcm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.019.i.i = alloca <8 x i64>, align 64     ; 5 uses
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 64)
  %.not.i.i = icmp ult i64 %2, 65
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i
  %.sroa.11.0212.i.i = phi i64 [ %i.af, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.034.0211.i.i = phi <8 x i64> [ %.sroa.034.2.i.i, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ zeroinitializer, %bb.a ]
  %.sroa.15.0210.i.i = phi <8 x i64> [ %.sroa.15.1.i.i, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ zeroinitializer, %bb.a ] ; 2 uses
  %.sroa.20.0209.i.i = phi <8 x i64> [ %.sroa.20.2.i.i, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0212.i.i
  %i.b = load <8 x i64>, ptr %i.a, align 1, !tbaa !9 ; 4 uses
  %i.c = bitcast <8 x i64> %i.b to <64 x i8>      ; 5 uses
  %i.d = icmp slt <64 x i8> %i.c, zeroinitializer
  %i.e = bitcast <64 x i1> %i.d to i64
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i, label %bb.b, !prof !109

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = shufflevector <8 x i64> %.sroa.15.0210.i.i, <8 x i64> %i.b, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.h = bitcast <8 x i64> %i.g to <64 x i8>      ; 3 uses
  %i.i = shufflevector <64 x i8> %i.h, <64 x i8> %i.c, <64 x i32> <i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126> ; 2 uses
  %i.j = bitcast <64 x i8> %i.i to <32 x i16>
  %i.k = lshr <32 x i16> %i.j, splat (i16 4)
  %i.l = bitcast <32 x i16> %i.k to <64 x i8>
  %i.m = and <64 x i8> %i.l, splat (i8 15)
  %i.n = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <64 x i8> %i.m)
  %i.o = and <64 x i8> %i.i, splat (i8 15)
  %i.p = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <64 x i8> %i.o)
  %i.q = bitcast <8 x i64> %i.b to <32 x i16>
  %i.r = lshr <32 x i16> %i.q, splat (i16 4)
  %i.s = bitcast <32 x i16> %i.r to <64 x i8>
  %i.t = and <64 x i8> %i.s, splat (i8 15)
  %i.u = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <64 x i8> %i.t)
  %i.v = and <64 x i8> %i.p, %i.n
  %i.w = and <64 x i8> %i.v, %i.u
  %i.x = shufflevector <64 x i8> %i.h, <64 x i8> %i.c, <64 x i32> <i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %i.y = shufflevector <64 x i8> %i.h, <64 x i8> %i.c, <64 x i32> <i32 13, i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 29, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 45, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 61, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124>
  %i.z = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.x, <64 x i8> splat (i8 96))
  %i.aa = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.y, <64 x i8> splat (i8 112))
  %i.ab = or <64 x i8> %i.z, %i.aa
  %.inner3 = and <64 x i8> %i.ab, splat (i8 -128)
  %.inner4 = xor <64 x i8> %.inner3, %i.w
  %i.ac = bitcast <64 x i8> %.inner4 to <8 x i64>
  %i.ad = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.c, <64 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.ae = bitcast <64 x i8> %i.ad to <8 x i64>
  br label %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i

_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %.sroa.20.2.i.i = phi <8 x i64> [ %i.ae, %bb.b ], [ %.sroa.20.0209.i.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.15.1.i.i = phi <8 x i64> [ %i.b, %bb.b ], [ %.sroa.15.0210.i.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.20.0.pn208.i.i = phi <8 x i64> [ %i.ac, %bb.b ], [ %.sroa.20.0209.i.i, %.lr.ph.i.i ]
  %.sroa.034.2.i.i = or <8 x i64> %.sroa.20.0.pn208.i.i, %.sroa.034.0211.i.i ; 2 uses
  %i.af = add nuw i64 %.sroa.11.0212.i.i, 64      ; 3 uses
  %i.ag = icmp ult i64 %i.af, %spec.select.i.i.i
  br i1 %i.ag, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !150

._crit_edge.i.i:                                  ; preds = %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i, %bb.a
  %.sroa.20.0.lcssa.i.i = phi <8 x i64> [ zeroinitializer, %bb.a ], [ %.sroa.20.2.i.i, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ]
  %.sroa.15.0.lcssa.i.i = phi <8 x i64> [ zeroinitializer, %bb.a ], [ %.sroa.15.1.i.i, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ]
  %.sroa.034.0.lcssa.i.i = phi <8 x i64> [ zeroinitializer, %bb.a ], [ %.sroa.034.2.i.i, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ]
  %.sroa.11.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.af, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.019.i.i)
  %i.ah = icmp eq i64 %2, %.sroa.11.0.lcssa.i.i
  br i1 %i.ah, label %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i
  store <8 x i64> splat (i64 2314885530818453536), ptr %.sroa.019.i.i, align 64
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0.lcssa.i.i
  %i.aj = sub i64 %2, %.sroa.11.0.lcssa.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %.sroa.019.i.i, ptr readonly align 1 %i.ai, i64 %i.aj, i1 false)
  %.sroa.019.i.i.0..sroa.019.i.i.0..sroa.019.i.i.0..sroa.019.i.0..sroa.019.i.0..sroa.019.0..sroa.019.0..sroa.019.0..pre.i.i = load <8 x i64>, ptr %.sroa.019.i.i, align 64, !tbaa !9
  br label %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i

_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i: ; preds = %bb.c, %._crit_edge.i.i
  %.sroa.019.0..sroa.019.0..sroa.019.0..i.i = phi <8 x i64> [ zeroinitializer, %._crit_edge.i.i ], [ %.sroa.019.i.i.0..sroa.019.i.i.0..sroa.019.i.i.0..sroa.019.i.0..sroa.019.i.0..sroa.019.0..sroa.019.0..sroa.019.0..pre.i.i, %bb.c ] ; 3 uses
  %i.ak = bitcast <8 x i64> %.sroa.019.0..sroa.019.0..sroa.019.0..i.i to <64 x i8> ; 5 uses
  %i.al = icmp slt <64 x i8> %i.ak, zeroinitializer
  %i.am = bitcast <64 x i1> %i.al to i64
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.e, label %bb.d, !prof !109

bb.d:                                             ; preds = %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i
  %i.ao = shufflevector <8 x i64> %.sroa.15.0.lcssa.i.i, <8 x i64> %.sroa.019.0..sroa.019.0..sroa.019.0..i.i, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.ap = bitcast <8 x i64> %i.ao to <64 x i8>    ; 3 uses
  %i.aq = shufflevector <64 x i8> %i.ap, <64 x i8> %i.ak, <64 x i32> <i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126> ; 2 uses
  %i.ar = bitcast <64 x i8> %i.aq to <32 x i16>
  %i.as = lshr <32 x i16> %i.ar, splat (i16 4)
  %i.at = bitcast <32 x i16> %i.as to <64 x i8>
  %i.au = and <64 x i8> %i.at, splat (i8 15)
  %i.av = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <64 x i8> %i.au)
  %i.aw = and <64 x i8> %i.aq, splat (i8 15)
  %i.ax = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <64 x i8> %i.aw)
  %i.ay = bitcast <8 x i64> %.sroa.019.0..sroa.019.0..sroa.019.0..i.i to <32 x i16>
  %i.az = lshr <32 x i16> %i.ay, splat (i16 4)
  %i.ba = bitcast <32 x i16> %i.az to <64 x i8>
  %i.bb = and <64 x i8> %i.ba, splat (i8 15)
  %i.bc = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <64 x i8> %i.bb)
  %i.bd = and <64 x i8> %i.ax, %i.av
  %i.be = and <64 x i8> %i.bd, %i.bc
  %i.bf = shufflevector <64 x i8> %i.ap, <64 x i8> %i.ak, <64 x i32> <i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %i.bg = shufflevector <64 x i8> %i.ap, <64 x i8> %i.ak, <64 x i32> <i32 13, i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 29, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 45, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 61, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124>
  %i.bh = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.bf, <64 x i8> splat (i8 96))
  %i.bi = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.bg, <64 x i8> splat (i8 112))
  %i.bj = or <64 x i8> %i.bh, %i.bi
  %.inner7 = and <64 x i8> %i.bj, splat (i8 -128)
  %.inner8 = xor <64 x i8> %.inner7, %i.be
  %i.bk = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.ak, <64 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %.inner9 = or <64 x i8> %.inner8, %i.bk
  %i.bl = bitcast <64 x i8> %.inner9 to <8 x i64>
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i
  %.sroa.20.0.pn.i.i = phi <8 x i64> [ %i.bl, %bb.d ], [ %.sroa.20.0.lcssa.i.i, %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i ]
  %i.bm = or <8 x i64> %.sroa.20.0.pn.i.i, %.sroa.034.0.lcssa.i.i
  %i.bn = bitcast <8 x i64> %i.bm to <64 x i8>
  %i.bo = icmp ne <64 x i8> %i.bn, zeroinitializer
  %i.bp = bitcast <64 x i1> %i.bo to i64
  %.not.i.i.i = icmp eq i64 %i.bp, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.019.i.i)
  ret i1 %.not.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 14) i32 @_ZN8simdjson7icelake25dom_parser_implementation6stage2ERNS_3dom8documentE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) initializes((88, 96)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %i.f = alloca double, align 8                   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 14 uses
  store ptr %1, ptr %i.g, align 8, !tbaa !151
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !138  ; 16 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !108  ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !73   ; 3 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !118    ; 20 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !152  ; 2 uses
  store i32 0, ptr %i.s, align 4, !tbaa !153
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 0, ptr %i.t, align 4, !tbaa !155
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 15 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 10 uses
  %i.w = load i32, ptr %i.k, align 4, !tbaa !10
  %i.x = zext i32 %i.w to i64                     ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.x ; 12 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !9
  switch i8 %i.z, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit [
    i8 123, label %bb.c
    i8 91, label %bb.d
    i8 34, label %bb.g
    i8 116, label %bb.x
    i8 102, label %bb.aa
    i8 110, label %bb.ad
    i8 45, label %bb.ag
    i8 48, label %bb.ag
    i8 49, label %bb.ag
    i8 50, label %bb.ag
    i8 51, label %bb.ag
    i8 52, label %bb.ag
    i8 53, label %bb.ag
    i8 54, label %bb.ag
    i8 55, label %bb.ag
    i8 56, label %bb.ag
    i8 57, label %bb.ag
  ]

bb.c:                                             ; preds = %bb.b
  %i.aa = add i32 %i.o, -1
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !10
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !9
  %.not162.i = icmp eq i8 %i.ag, 125
  br i1 %.not162.i, label %.thread, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.ah = add i32 %i.o, -1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !10
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !9
  %.not.i = icmp eq i8 %i.an, 93
  br i1 %.not.i, label %.thread867, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit

.thread:                                          ; preds = %bb.c
  %i.ao = load i32, ptr %i.v, align 4, !tbaa !10
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9
  %i.as = icmp eq i8 %i.ar, 125
  br i1 %i.as, label %bb.e, label %bb.bw

bb.e:                                             ; preds = %.thread
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 8863084066665136131, ptr %i.u, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 9007199254740992001, ptr %i.au, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %.thread979

.thread867:                                       ; preds = %bb.d
  %i.aw = load i32, ptr %i.v, align 4, !tbaa !10
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9
  %i.ba = icmp eq i8 %i.az, 93
  br i1 %i.ba, label %bb.f, label %.thread993

bb.f:                                             ; preds = %.thread867
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 6557241057451442179, ptr %i.u, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 6701356245527298049, ptr %i.bc, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %.thread979

bb.g:                                             ; preds = %bb.b
  store i64 2449958197289549824, ptr %i.u, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %i.bh = load <8 x i64>, ptr %i.bg, align 1, !tbaa !9 ; 2 uses
  store <8 x i64> %i.bh, ptr %i.bf, align 1, !tbaa !9
  %i.bi = bitcast <8 x i64> %i.bh to <64 x i8>    ; 2 uses
  %i.bj = icmp eq <64 x i8> %i.bi, splat (i8 92)
  %i.bk = bitcast <64 x i1> %i.bj to i64          ; 2 uses
  %i.bl = icmp eq <64 x i8> %i.bi, splat (i8 34)
  %i.bm = bitcast <64 x i1> %i.bl to i64          ; 3 uses
  %i.bn = add i64 %i.bk, -1
  %i.bo = and i64 %i.bn, %i.bm
  %.not14201496 = icmp eq i64 %i.bo, 0
  br i1 %.not14201496, label %.lr.ph1499, label %_ZN8simdjson7icelake12_GLOBAL__N_113stringparsing12parse_stringEPKhPhb.exit.i

.lr.ph1499:                                       ; preds = %bb.g, %bb.w
  %i.bp = phi i64 [ %i.gh, %bb.w ], [ %i.bm, %bb.g ]
  %i.bq = phi i64 [ %i.gf, %bb.w ], [ %i.bk, %bb.g ] ; 2 uses
  %.07421498 = phi ptr [ %.1743, %bb.w ], [ %i.bf, %bb.g ] ; 4 uses
  %.07451497 = phi ptr [ %.1746, %bb.w ], [ %i.bg, %bb.g ] ; 4 uses
end_hunk_5
begin_hunk_6_@_ZNK8simdjson8westmere14implementation32create_dom_parser_implementationEmmRSt10unique_ptrINS_8internal25dom_parser_implementationESt14default_deleteIS4_EE:bb.a
  %.2 = phi i32 [ 2, %_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit ], [ %i.u, %bb.e ], [ %i.p, %bb.d ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 0, 16) i32 @_ZNK8simdjson8westmere14implementation6minifyEPKhmPhRm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4) unnamed_addr #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 8 uses
  %i.b = alloca [64 x i8], align 16               ; 7 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 64)
  %.not.i = icmp ult i64 %2, 65
  br i1 %.not.i, label %._crit_edge.i, label %.noexc28.i

.noexc28.i:                                       ; preds = %bb.a, %_ZN8simdjson8westmere12_GLOBAL__N_16stage113json_minifier4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i
  %.sroa.18.0472.i = phi i64 [ %i.bb, %_ZN8simdjson8westmere12_GLOBAL__N_16stage113json_minifier4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ], [ 0, %bb.a ]
  %.sroa.23.0471.i = phi ptr [ %i.fo, %_ZN8simdjson8westmere12_GLOBAL__N_16stage113json_minifier4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ], [ %3, %bb.a ] ; 5 uses
  %.sroa.8.0470.i = phi i64 [ %.sroa.8.1.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage113json_minifier4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ], [ 0, %bb.a ] ; 3 uses
  %.sroa.11.0469.i = phi i64 [ %i.fp, %_ZN8simdjson8westmere12_GLOBAL__N_16stage113json_minifier4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0469.i ; 4 uses
  %i.d = load <16 x i8>, ptr %i.c, align 1, !tbaa !9 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load <16 x i8>, ptr %i.e, align 1, !tbaa !9 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load <16 x i8>, ptr %i.g, align 1, !tbaa !9 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.j = load <16 x i8>, ptr %i.i, align 1, !tbaa !9 ; 5 uses
  %i.k = icmp eq <16 x i8> %i.h, splat (i8 92)
  %i.l = icmp eq <16 x i8> %i.j, splat (i8 92)
  %i.m = bitcast <16 x i1> %i.k to i16
  %i.n = zext i16 %i.m to i64
  %i.o = bitcast <16 x i1> %i.l to i16
  %i.p = zext i16 %i.o to i64
  %i.q = shufflevector <16 x i8> %i.d, <16 x i8> %i.f, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.r = icmp eq <32 x i8> %i.q, splat (i8 92)
  %i.s = bitcast <32 x i1> %i.r to i32
  %i.t = zext i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.n, 32
  %i.v = or disjoint i64 %i.u, %i.t
  %i.w = shl nuw i64 %i.p, 48                     ; 2 uses
  %i.x = or disjoint i64 %i.v, %i.w               ; 3 uses
  %.not.i51.i = icmp eq i64 %i.x, 0
  br i1 %.not.i51.i, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage113json_minifier4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i, label %bb.b

bb.b:                                             ; preds = %.noexc28.i
  %i.y = xor i64 %.sroa.8.0470.i, -1
  %i.z = and i64 %i.x, %i.y                       ; 2 uses
  %i.aa = shl i64 %i.z, 1
  %i.ab = or i64 %i.aa, -6148914691236517206
  %i.ac = sub i64 %i.ab, %i.z
  %i.ad = xor i64 %i.ac, -6148914691236517206     ; 2 uses
  %i.ae = or i64 %i.x, %.sroa.8.0470.i
  %i.af = xor i64 %i.ad, %i.ae
  %i.ag = and i64 %i.ad, %i.w
  %i.ah = lshr i64 %i.ag, 63
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage113json_minifier4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i

_ZN8simdjson8westmere12_GLOBAL__N_16stage113json_minifier4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i: ; preds = %bb.b, %.noexc28.i
  %.sroa.8.1.i = phi i64 [ %i.ah, %bb.b ], [ 0, %.noexc28.i ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ %i.af, %bb.b ], [ %.sroa.8.0470.i, %.noexc28.i ]
  %i.ai = icmp eq <16 x i8> %i.d, splat (i8 34)
  %i.aj = icmp eq <16 x i8> %i.f, splat (i8 34)
  %i.ak = icmp eq <16 x i8> %i.h, splat (i8 34)
  %i.al = icmp eq <16 x i8> %i.j, splat (i8 34)
  %i.am = bitcast <16 x i1> %i.ai to i16
  %i.an = bitcast <16 x i1> %i.aj to i16
  %i.ao = bitcast <16 x i1> %i.ak to i16
  %i.ap = bitcast <16 x i1> %i.al to i16
  %i.aq = insertelement <4 x i16> poison, i16 %i.am, i64 0
  %i.ar = insertelement <4 x i16> %i.aq, i16 %i.an, i64 1
  %i.as = insertelement <4 x i16> %i.ar, i16 %i.ao, i64 2
  %i.at = insertelement <4 x i16> %i.as, i16 %i.ap, i64 3
  %i.au = bitcast <4 x i16> %i.at to i64
  %i.av = xor i64 %.sroa.0.0.i.i, -1
  %i.aw = and i64 %i.au, %i.av
  %i.ax = insertelement <2 x i64> poison, i64 %i.aw, i64 0
  %i.ay = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ax, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.az = extractelement <2 x i64> %i.ay, i64 0
  %i.ba = xor i64 %i.az, %.sroa.18.0472.i         ; 2 uses
  %i.bb = ashr i64 %i.ba, 63                      ; 2 uses
  %i.bc = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.d)
  %i.bd = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.f)
  %i.be = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.h)
  %i.bf = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.j)
  %i.bg = icmp eq <16 x i8> %i.be, %i.h
  %i.bh = icmp eq <16 x i8> %i.bf, %i.j
  %i.bi = bitcast <16 x i1> %i.bg to i16
  %i.bj = zext i16 %i.bi to i64
  %i.bk = bitcast <16 x i1> %i.bh to i16
  %i.bl = zext i16 %i.bk to i64
  %i.bm = shufflevector <16 x i8> %i.bc, <16 x i8> %i.bd, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bn = shufflevector <16 x i8> %i.d, <16 x i8> %i.f, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bo = icmp eq <32 x i8> %i.bm, %i.bn
  %i.bp = bitcast <32 x i1> %i.bo to i32
  %i.bq = zext i32 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bj, 32
  %i.bs = or disjoint i64 %i.br, %i.bq            ; 2 uses
  %i.bt = shl nuw i64 %i.bl, 48
  %i.bu = or disjoint i64 %i.bs, %i.bt
  %i.bv = xor i64 %i.ba, -1                       ; 2 uses
  %i.bw = and i64 %i.bu, %i.bv                    ; 11 uses
  %i.bx = lshr i64 %i.bw, 8
  %i.by = and i64 %i.bx, 255
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !13
  %i.cb = and i64 %i.bw, 255                      ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !13
  %i.ce = insertelement <2 x i64> poison, i64 %i.cd, i64 0
  %i.cf = insertelement <2 x i64> %i.ce, i64 %i.ca, i64 1
  %i.cg = bitcast <2 x i64> %i.cf to <16 x i8>
  %i.ch = add <16 x i8> %i.cg, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8>
  %i.ci = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.d, <16 x i8> %i.ch)
  %i.cj = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.cb
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !9
  %i.cl = zext i8 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 3
  %i.cn = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.cm
  %i.co = load <16 x i8>, ptr %i.cn, align 8, !tbaa !9
  %i.cp = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ci, <16 x i8> %i.co)
  store <16 x i8> %i.cp, ptr %.sroa.23.0471.i, align 1, !tbaa !9
  %i.cq = lshr i64 %i.bw, 16
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.23.0471.i, i64 16
  %i.cs = and i64 %i.bw, 65535
  %i.ct = tail call noundef range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.cs)
  %i.cu = sub nsw i64 0, %i.ct
  %i.cv = getelementptr inbounds i8, ptr %i.cr, i64 %i.cu
  %i.cw = lshr i64 %i.bw, 24
  %i.cx = and i64 %i.cw, 255
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !13
  %i.da = and i64 %i.cq, 255                      ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !13
  %i.dd = insertelement <2 x i64> poison, i64 %i.dc, i64 0
  %i.de = insertelement <2 x i64> %i.dd, i64 %i.cz, i64 1
  %i.df = bitcast <2 x i64> %i.de to <16 x i8>
  %i.dg = add <16 x i8> %i.df, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8>
  %i.dh = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.f, <16 x i8> %i.dg)
  %i.di = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.da
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !9
  %i.dk = zext i8 %i.dj to i64
  %i.dl = shl nuw nsw i64 %i.dk, 3
  %i.dm = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.dl
  %i.dn = load <16 x i8>, ptr %i.dm, align 8, !tbaa !9
  %i.do = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.dh, <16 x i8> %i.dn)
  store <16 x i8> %i.do, ptr %i.cv, align 1, !tbaa !9
  %i.dp = lshr i64 %i.bw, 32
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.23.0471.i, i64 32
  %i.dr = and i64 %i.bw, 4294967295
  %i.ds = tail call noundef range(i64 0, 33) i64 @llvm.ctpop.i64(i64 %i.dr)
  %i.dt = sub nsw i64 0, %i.ds
  %i.du = getelementptr inbounds i8, ptr %i.dq, i64 %i.dt
  %i.dv = lshr i64 %i.bw, 40
  %i.dw = and i64 %i.dv, 255
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !13
  %i.dz = and i64 %i.dp, 255                      ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !13
  %i.ec = insertelement <2 x i64> poison, i64 %i.eb, i64 0
  %i.ed = insertelement <2 x i64> %i.ec, i64 %i.dy, i64 1
  %i.ee = bitcast <2 x i64> %i.ed to <16 x i8>
  %i.ef = add <16 x i8> %i.ee, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8>
  %i.eg = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.h, <16 x i8> %i.ef)
  %i.eh = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.dz
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !9
  %i.ej = zext i8 %i.ei to i64
  %i.ek = shl nuw nsw i64 %i.ej, 3
  %i.el = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.ek
  %i.em = load <16 x i8>, ptr %i.el, align 8, !tbaa !9
  %i.en = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.eg, <16 x i8> %i.em)
  store <16 x i8> %i.en, ptr %i.du, align 1, !tbaa !9
  %i.eo = lshr i64 %i.bw, 48
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.23.0471.i, i64 48
  %i.eq = and i64 %i.bs, %i.bv
  %i.er = tail call noundef range(i64 0, 49) i64 @llvm.ctpop.i64(i64 %i.eq)
  %i.es = sub nsw i64 0, %i.er
  %i.et = getelementptr inbounds i8, ptr %i.ep, i64 %i.es
  %i.eu = lshr i64 %i.bw, 56
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !13
  %i.ex = and i64 %i.eo, 255                      ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !13
  %i.fa = insertelement <2 x i64> poison, i64 %i.ez, i64 0
  %i.fb = insertelement <2 x i64> %i.fa, i64 %i.ew, i64 1
  %i.fc = bitcast <2 x i64> %i.fb to <16 x i8>
  %i.fd = add <16 x i8> %i.fc, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8>
  %i.fe = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.j, <16 x i8> %i.fd)
  %i.ff = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.ex
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !9
  %i.fh = zext i8 %i.fg to i64
  %i.fi = shl nuw nsw i64 %i.fh, 3
  %i.fj = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.fi
  %i.fk = load <16 x i8>, ptr %i.fj, align 8, !tbaa !9
  %i.fl = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.fe, <16 x i8> %i.fk)
  store <16 x i8> %i.fl, ptr %i.et, align 1, !tbaa !9
  %i.fm = xor i64 %i.bw, -1
  %i.fn = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fm)
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.23.0471.i, i64 %i.fn ; 2 uses
  %i.fp = add nuw i64 %.sroa.11.0469.i, 64        ; 3 uses
  %i.fq = icmp ult i64 %i.fp, %spec.select.i.i
  br i1 %i.fq, label %.noexc28.i, label %._crit_edge.i, !llvm.loop !162

._crit_edge.i:                                    ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_16stage113json_minifier4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i, %bb.a
  %.sroa.11.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.fp, %_ZN8simdjson8westmere12_GLOBAL__N_16stage113json_minifier4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ] ; 3 uses
  %.sroa.8.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %.sroa.8.1.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage113json_minifier4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ] ; 3 uses
  %.sroa.23.0.lcssa.i = phi ptr [ %3, %bb.a ], [ %i.fo, %_ZN8simdjson8westmere12_GLOBAL__N_16stage113json_minifier4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ] ; 3 uses
  %.sroa.18.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.bb, %_ZN8simdjson8westmere12_GLOBAL__N_16stage113json_minifier4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit14.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.fr = icmp eq i64 %2, %.sroa.11.0.lcssa.i
  br i1 %i.fr, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage113json_minifier6minifyILm64EEENS_10error_codeEPKhmPhRm.exit, label %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i

_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i: ; preds = %._crit_edge.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 32, i64 64, i1 false)
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0.lcssa.i
  %i.ft = sub i64 %2, %.sroa.11.0.lcssa.i         ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.fs, i64 %i.ft, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %.0..0..0..0..0.465.i = load <16 x i8>, ptr %i.a, align 16, !tbaa !9 ; 5 uses
  %.16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.16..16..16..16..16.466.i = load <16 x i8>, ptr %.16..16..16..16..16..sroa_idx, align 16, !tbaa !9 ; 5 uses
  %.32..32..32..32..32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.32..32..32..32..32.467.i = load <16 x i8>, ptr %.32..32..32..32..32..sroa_idx, align 16, !tbaa !9 ; 5 uses
  %.48..48..48..48..48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.48..48..48..48..48.468.i = load <16 x i8>, ptr %.48..48..48..48..48..sroa_idx, align 16, !tbaa !9 ; 5 uses
  %i.fu = icmp eq <16 x i8> %.0..0..0..0..0.465.i, splat (i8 92)
  %i.fv = icmp eq <16 x i8> %.16..16..16..16..16.466.i, splat (i8 92)
  %i.fw = icmp eq <16 x i8> %.32..32..32..32..32.467.i, splat (i8 92)
  %i.fx = icmp eq <16 x i8> %.48..48..48..48..48.468.i, splat (i8 92)
  %i.fy = bitcast <16 x i1> %i.fu to i16
  %i.fz = bitcast <16 x i1> %i.fv to i16
  %i.ga = bitcast <16 x i1> %i.fw to i16
  %i.gb = bitcast <16 x i1> %i.fx to i16
  %i.gc = insertelement <4 x i16> poison, i16 %i.fy, i64 0
  %i.gd = insertelement <4 x i16> %i.gc, i16 %i.fz, i64 1
  %i.ge = insertelement <4 x i16> %i.gd, i16 %i.ga, i64 2
  %i.gf = insertelement <4 x i16> %i.ge, i16 %i.gb, i64 3
  %i.gg = bitcast <4 x i16> %i.gf to i64          ; 3 uses
  %.not.i54.i = icmp eq i64 %i.gg, 0
  br i1 %.not.i54.i, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage113json_minifier4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i
  %i.gh = xor i64 %.sroa.8.0.lcssa.i, -1
  %i.gi = and i64 %i.gg, %i.gh                    ; 2 uses
  %i.gj = shl i64 %i.gi, 1
  %i.gk = or i64 %i.gj, -6148914691236517206
  %i.gl = sub i64 %i.gk, %i.gi
  %i.gm = or i64 %.sroa.8.0.lcssa.i, %i.gg
  %i.gn = xor i64 %i.gm, %i.gl
  %i.go = xor i64 %i.gn, -6148914691236517206
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage113json_minifier4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i

_ZN8simdjson8westmere12_GLOBAL__N_16stage113json_minifier4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i: ; preds = %bb.c, %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i
  %.sroa.0.0.i55.i = phi i64 [ %i.go, %bb.c ], [ %.sroa.8.0.lcssa.i, %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i ]
  %i.gp = icmp eq <16 x i8> %.0..0..0..0..0.465.i, splat (i8 34)
  %i.gq = icmp eq <16 x i8> %.16..16..16..16..16.466.i, splat (i8 34)
  %i.gr = icmp eq <16 x i8> %.32..32..32..32..32.467.i, splat (i8 34)
  %i.gs = icmp eq <16 x i8> %.48..48..48..48..48.468.i, splat (i8 34)
  %i.gt = bitcast <16 x i1> %i.gp to i16
  %i.gu = bitcast <16 x i1> %i.gq to i16
  %i.gv = bitcast <16 x i1> %i.gr to i16
  %i.gw = bitcast <16 x i1> %i.gs to i16
  %i.gx = insertelement <4 x i16> poison, i16 %i.gt, i64 0
  %i.gy = insertelement <4 x i16> %i.gx, i16 %i.gu, i64 1
  %i.gz = insertelement <4 x i16> %i.gy, i16 %i.gv, i64 2
  %i.ha = insertelement <4 x i16> %i.gz, i16 %i.gw, i64 3
  %i.hb = bitcast <4 x i16> %i.ha to i64
  %i.hc = xor i64 %.sroa.0.0.i55.i, -1
  %i.hd = and i64 %i.hb, %i.hc
  %i.he = insertelement <2 x i64> poison, i64 %i.hd, i64 0
  %i.hf = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.he, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.hg = extractelement <2 x i64> %i.hf, i64 0
  %i.hh = xor i64 %i.hg, %.sroa.18.0.lcssa.i      ; 2 uses
  %i.hi = ashr i64 %i.hh, 63
  %i.hj = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %.0..0..0..0..0.465.i)
  %i.hk = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %.16..16..16..16..16.466.i)
  %i.hl = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %.32..32..32..32..32.467.i)
  %i.hm = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %.48..48..48..48..48.468.i)
  %i.hn = icmp eq <16 x i8> %.32..32..32..32..32.467.i, %i.hl
  %i.ho = icmp eq <16 x i8> %.48..48..48..48..48.468.i, %i.hm
  %i.hp = bitcast <16 x i1> %i.hn to i16
  %i.hq = zext i16 %i.hp to i64
  %i.hr = bitcast <16 x i1> %i.ho to i16
  %i.hs = zext i16 %i.hr to i64
  %i.ht = shufflevector <16 x i8> %.0..0..0..0..0.465.i, <16 x i8> %.16..16..16..16..16.466.i, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hu = shufflevector <16 x i8> %i.hj, <16 x i8> %i.hk, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hv = icmp eq <32 x i8> %i.ht, %i.hu
  %i.hw = bitcast <32 x i1> %i.hv to i32
  %i.hx = zext i32 %i.hw to i64
  %i.hy = shl nuw nsw i64 %i.hq, 32
  %i.hz = or disjoint i64 %i.hy, %i.hx            ; 2 uses
  %i.ia = shl nuw i64 %i.hs, 48
  %i.ib = or disjoint i64 %i.hz, %i.ia
  %i.ic = xor i64 %i.hh, -1                       ; 2 uses
  %i.id = and i64 %i.ib, %i.ic                    ; 11 uses
  %i.ie = lshr i64 %i.id, 8
  %i.if = and i64 %i.ie, 255
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.if
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !13
  %i.ii = and i64 %i.id, 255                      ; 2 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.ii
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !13
  %i.il = insertelement <2 x i64> poison, i64 %i.ik, i64 0
  %i.im = insertelement <2 x i64> %i.il, i64 %i.ih, i64 1
  %i.in = bitcast <2 x i64> %i.im to <16 x i8>
  %i.io = add <16 x i8> %i.in, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8>
  %i.ip = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %.0..0..0..0..0.465.i, <16 x i8> %i.io)
  %i.iq = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.ii
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !9
  %i.is = zext i8 %i.ir to i64
  %i.it = shl nuw nsw i64 %i.is, 3
  %i.iu = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.it
  %i.iv = load <16 x i8>, ptr %i.iu, align 8, !tbaa !9
  %i.iw = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ip, <16 x i8> %i.iv)
  store <16 x i8> %i.iw, ptr %i.b, align 16, !tbaa !9
  %i.ix = lshr i64 %i.id, 16
  %i.iy = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.iz = and i64 %i.id, 65535
  %i.ja = tail call noundef range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.iz)
  %i.jb = sub nsw i64 0, %i.ja
  %i.jc = getelementptr inbounds i8, ptr %i.iy, i64 %i.jb
  %i.jd = lshr i64 %i.id, 24
  %i.je = and i64 %i.jd, 255
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.je
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !13
  %i.jh = and i64 %i.ix, 255                      ; 2 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.jh
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !13
  %i.jk = insertelement <2 x i64> poison, i64 %i.jj, i64 0
  %i.jl = insertelement <2 x i64> %i.jk, i64 %i.jg, i64 1
  %i.jm = bitcast <2 x i64> %i.jl to <16 x i8>
  %i.jn = add <16 x i8> %i.jm, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8>
  %i.jo = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %.16..16..16..16..16.466.i, <16 x i8> %i.jn)
  %i.jp = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.jh
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !9
  %i.jr = zext i8 %i.jq to i64
  %i.js = shl nuw nsw i64 %i.jr, 3
  %i.jt = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.js
  %i.ju = load <16 x i8>, ptr %i.jt, align 8, !tbaa !9
  %i.jv = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.jo, <16 x i8> %i.ju)
  store <16 x i8> %i.jv, ptr %i.jc, align 1, !tbaa !9
  %i.jw = lshr i64 %i.id, 32
  %i.jx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.jy = and i64 %i.id, 4294967295
  %i.jz = tail call noundef range(i64 0, 33) i64 @llvm.ctpop.i64(i64 %i.jy)
  %i.ka = sub nsw i64 0, %i.jz
  %i.kb = getelementptr inbounds i8, ptr %i.jx, i64 %i.ka
  %i.kc = lshr i64 %i.id, 40
  %i.kd = and i64 %i.kc, 255
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.kd
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !13
  %i.kg = and i64 %i.jw, 255                      ; 2 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.kg
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !13
  %i.kj = insertelement <2 x i64> poison, i64 %i.ki, i64 0
  %i.kk = insertelement <2 x i64> %i.kj, i64 %i.kf, i64 1
  %i.kl = bitcast <2 x i64> %i.kk to <16 x i8>
  %i.km = add <16 x i8> %i.kl, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8>
  %i.kn = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %.32..32..32..32..32.467.i, <16 x i8> %i.km)
  %i.ko = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.kg
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !9
  %i.kq = zext i8 %i.kp to i64
  %i.kr = shl nuw nsw i64 %i.kq, 3
  %i.ks = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.kr
  %i.kt = load <16 x i8>, ptr %i.ks, align 8, !tbaa !9
  %i.ku = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.kn, <16 x i8> %i.kt)
  store <16 x i8> %i.ku, ptr %i.kb, align 1, !tbaa !9
  %i.kv = lshr i64 %i.id, 48
  %i.kw = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.kx = and i64 %i.hz, %i.ic
  %i.ky = tail call noundef range(i64 0, 49) i64 @llvm.ctpop.i64(i64 %i.kx)
  %i.kz = sub nsw i64 0, %i.ky
  %i.la = getelementptr inbounds i8, ptr %i.kw, i64 %i.kz
  %i.lb = lshr i64 %i.id, 56
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.lb
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !13
  %i.le = and i64 %i.kv, 255                      ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr @_ZN8simdjson8internalL14thintable_epi8E, i64 %i.le
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !13
  %i.lh = insertelement <2 x i64> poison, i64 %i.lg, i64 0
  %i.li = insertelement <2 x i64> %i.lh, i64 %i.ld, i64 1
  %i.lj = bitcast <2 x i64> %i.li to <16 x i8>
  %i.lk = add <16 x i8> %i.lj, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8>
  %i.ll = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %.48..48..48..48..48.468.i, <16 x i8> %i.lk)
  %i.lm = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL19BitsSetTable256mul2E, i64 %i.le
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !9
  %i.lo = zext i8 %i.ln to i64
  %i.lp = shl nuw nsw i64 %i.lo, 3
  %i.lq = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internalL20pshufb_combine_tableE, i64 %i.lp
  %i.lr = load <16 x i8>, ptr %i.lq, align 8, !tbaa !9
  %i.ls = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ll, <16 x i8> %i.lr)
  store <16 x i8> %i.ls, ptr %i.la, align 1, !tbaa !9
  %i.lt = xor i64 %i.id, -1
  %i.lu = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.lt)
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.lu, i64 %i.ft) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.23.0.lcssa.i, ptr nonnull align 16 %i.b, i64 %spec.select.i, i1 false)
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.23.0.lcssa.i, i64 %spec.select.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage113json_minifier6minifyILm64EEENS_10error_codeEPKhmPhRm.exit

end_hunk_6
begin_hunk_7_@_ZN8simdjson8westmere25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE:bb.a
  %i.kk = or disjoint i32 %i.ip, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 28
  store i32 %i.kk, ptr %i.kl, align 4, !tbaa !10
  %i.km = icmp samesign ugt i64 %i.ir, 8
  br i1 %i.km, label %.noexc181.i, label %.loopexit1661.i, !prof !107

.noexc181.i:                                      ; preds = %.noexc158.i
  %i.kn = add i64 %i.kh, -2
  %i.ko = and i64 %i.kn, %i.kh                    ; 3 uses
  %i.kp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ko, i1 true)
  %i.kq = trunc nuw nsw i64 %i.kp to i32
  %i.kr = or disjoint i32 %i.ip, %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 32
  store i32 %i.kr, ptr %i.ks, align 4, !tbaa !10
  %i.kt = add i64 %i.ko, -2
  %i.ku = and i64 %i.kt, %i.ko                    ; 3 uses
  %i.kv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ku, i1 true)
  %i.kw = trunc nuw nsw i64 %i.kv to i32
  %i.kx = or disjoint i32 %i.ip, %i.kw
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 36
  store i32 %i.kx, ptr %i.ky, align 4, !tbaa !10
  %i.kz = add i64 %i.ku, -2
  %i.la = and i64 %i.kz, %i.ku                    ; 3 uses
  %i.lb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.la, i1 true)
  %i.lc = trunc nuw nsw i64 %i.lb to i32
  %i.ld = or disjoint i32 %i.ip, %i.lc
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 40
  store i32 %i.ld, ptr %i.le, align 4, !tbaa !10
  %i.lf = add i64 %i.la, -1
  %i.lg = and i64 %i.lf, %i.la                    ; 3 uses
  %i.lh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.lg, i1 true)
  %i.li = trunc nuw nsw i64 %i.lh to i32
  %i.lj = or disjoint i32 %i.ip, %i.li
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 44
  store i32 %i.lj, ptr %i.lk, align 4, !tbaa !10
  %i.ll = icmp samesign ugt i64 %i.ir, 12
  br i1 %i.ll, label %.noexc204.i, label %.loopexit1661.i, !prof !107

.noexc204.i:                                      ; preds = %.noexc181.i
  %i.lm = add i64 %i.lg, -2
  %i.ln = and i64 %i.lm, %i.lg                    ; 3 uses
  %i.lo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ln, i1 true)
  %i.lp = trunc nuw nsw i64 %i.lo to i32
  %i.lq = or disjoint i32 %i.ip, %i.lp
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 48
  store i32 %i.lq, ptr %i.lr, align 4, !tbaa !10
  %i.ls = add i64 %i.ln, -2
  %i.lt = and i64 %i.ls, %i.ln                    ; 3 uses
  %i.lu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.lt, i1 true)
  %i.lv = trunc nuw nsw i64 %i.lu to i32
  %i.lw = or disjoint i32 %i.ip, %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 52
  store i32 %i.lw, ptr %i.lx, align 4, !tbaa !10
  %i.ly = add i64 %i.lt, -2
  %i.lz = and i64 %i.ly, %i.lt                    ; 3 uses
  %i.ma = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.lz, i1 true)
  %i.mb = trunc nuw nsw i64 %i.ma to i32
  %i.mc = or disjoint i32 %i.ip, %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 56
  store i32 %i.mc, ptr %i.md, align 4, !tbaa !10
  %i.me = add i64 %i.lz, -2
  %i.mf = and i64 %i.me, %i.lz                    ; 3 uses
  %i.mg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.mf, i1 true)
  %i.mh = trunc nuw nsw i64 %i.mg to i32
  %i.mi = or disjoint i32 %i.ip, %i.mh
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 60
  store i32 %i.mi, ptr %i.mj, align 4, !tbaa !10
  %i.mk = icmp samesign ugt i64 %i.ir, 16
  br i1 %i.mk, label %.noexc227.i, label %.loopexit1661.i, !prof !107

.noexc227.i:                                      ; preds = %.noexc204.i
  %i.ml = add i64 %i.mf, -1
  %i.mm = and i64 %i.ml, %i.mf                    ; 3 uses
  %i.mn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.mm, i1 true)
  %i.mo = trunc nuw nsw i64 %i.mn to i32
  %i.mp = or disjoint i32 %i.ip, %i.mo
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 64
  store i32 %i.mp, ptr %i.mq, align 4, !tbaa !10
  %i.mr = add i64 %i.mm, -2
  %i.ms = and i64 %i.mr, %i.mm                    ; 3 uses
  %i.mt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ms, i1 true)
  %i.mu = trunc nuw nsw i64 %i.mt to i32
  %i.mv = or disjoint i32 %i.ip, %i.mu
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 68
  store i32 %i.mv, ptr %i.mw, align 4, !tbaa !10
  %i.mx = add i64 %i.ms, -2
  %i.my = and i64 %i.mx, %i.ms                    ; 3 uses
  %i.mz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.my, i1 true)
  %i.na = trunc nuw nsw i64 %i.mz to i32
  %i.nb = or disjoint i32 %i.ip, %i.na
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 72
  store i32 %i.nb, ptr %i.nc, align 4, !tbaa !10
  %i.nd = add i64 %i.my, -2
  %i.ne = and i64 %i.nd, %i.my                    ; 3 uses
  %i.nf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ne, i1 true)
  %i.ng = trunc nuw nsw i64 %i.nf to i32
  %i.nh = or disjoint i32 %i.ip, %i.ng
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 76
  store i32 %i.nh, ptr %i.ni, align 4, !tbaa !10
  %i.nj = icmp samesign ugt i64 %i.ir, 20
  br i1 %i.nj, label %.noexc107.i, label %.loopexit1661.i, !prof !107

.noexc107.i:                                      ; preds = %.noexc227.i
  %i.nk = add i64 %i.ne, -2
  %i.nl = and i64 %i.nk, %i.ne                    ; 3 uses
  %i.nm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.nl, i1 true)
  %i.nn = trunc nuw nsw i64 %i.nm to i32
  %i.no = or disjoint i32 %i.ip, %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 80
  store i32 %i.no, ptr %i.np, align 4, !tbaa !10
  %i.nq = add i64 %i.nl, -1
  %i.nr = and i64 %i.nq, %i.nl                    ; 3 uses
  %i.ns = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.nr, i1 true)
  %i.nt = trunc nuw nsw i64 %i.ns to i32
  %i.nu = or disjoint i32 %i.ip, %i.nt
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 84
  store i32 %i.nu, ptr %i.nv, align 4, !tbaa !10
  %i.nw = add i64 %i.nr, -2
  %i.nx = and i64 %i.nw, %i.nr                    ; 3 uses
  %i.ny = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.nx, i1 true)
  %i.nz = trunc nuw nsw i64 %i.ny to i32
  %i.oa = or disjoint i32 %i.ip, %i.nz
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 88
  store i32 %i.oa, ptr %i.ob, align 4, !tbaa !10
  %i.oc = add i64 %i.nx, -2
  %i.od = and i64 %i.oc, %i.nx                    ; 3 uses
  %i.oe = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.od, i1 true)
  %i.of = trunc nuw nsw i64 %i.oe to i32
  %i.og = or disjoint i32 %i.ip, %i.of
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 92
  store i32 %i.og, ptr %i.oh, align 4, !tbaa !10
  %i.oi = icmp samesign ugt i64 %i.ir, 24
  br i1 %i.oi, label %.noexc108.i.preheader, label %.loopexit1661.i, !prof !110

.noexc108.i.preheader:                            ; preds = %.noexc107.i
  %i.oj = add i64 %i.od, -2
  %i.ok = and i64 %i.oj, %i.od                    ; 2 uses
  %xtraiter = and i64 %i.ir, 1
  %i.ol = icmp eq i64 %i.ir, 25
  br i1 %i.ol, label %.noexc108.i.epil.preheader, label %.noexc108.i.preheader.new

.noexc108.i.preheader.new:                        ; preds = %.noexc108.i.preheader
  %i.om = and i64 %i.ir, 126
  %i.on = add nsw i64 %i.om, -26
  br label %.noexc108.i

.noexc108.i:                                      ; preds = %.noexc108.i, %.noexc108.i.preheader.new
  %indvars.iv.i = phi i64 [ 24, %.noexc108.i.preheader.new ], [ %indvars.iv.next.i.1, %.noexc108.i ] ; 3 uses
  %.015941668.i = phi i64 [ %i.ok, %.noexc108.i.preheader.new ], [ %i.pa, %.noexc108.i ] ; 3 uses
  %niter = phi i64 [ 0, %.noexc108.i.preheader.new ], [ %niter.next.1, %.noexc108.i ] ; 2 uses
  %i.oo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015941668.i, i1 true)
  %i.op = trunc nuw nsw i64 %i.oo to i32
  %i.oq = or disjoint i32 %i.ip, %i.op
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.01675.i, i64 %indvars.iv.i
  store i32 %i.oq, ptr %i.or, align 4, !tbaa !10
  %i.os = add i64 %.015941668.i, -1
  %i.ot = and i64 %i.os, %.015941668.i            ; 3 uses
  %i.ou = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ot, i1 true)
  %i.ov = trunc nuw nsw i64 %i.ou to i32
  %i.ow = or disjoint i32 %i.ip, %i.ov
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.01675.i, i64 %indvars.iv.i
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 4
  store i32 %i.ow, ptr %i.oy, align 4, !tbaa !10
  %i.oz = add i64 %i.ot, -2
  %i.pa = and i64 %i.oz, %i.ot                    ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.on
  br i1 %niter.ncmp.1, label %.loopexit1661.i.loopexit.unr-lcssa, label %.noexc108.i, !llvm.loop !173

.loopexit1661.i.loopexit.unr-lcssa:               ; preds = %.noexc108.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit1661.i, label %.noexc108.i.epil.preheader

.noexc108.i.epil.preheader:                       ; preds = %.loopexit1661.i.loopexit.unr-lcssa, %.noexc108.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 24, %.noexc108.i.preheader ], [ %indvars.iv.next.i.1, %.loopexit1661.i.loopexit.unr-lcssa ]
  %.015941668.i.epil.init = phi i64 [ %i.ok, %.noexc108.i.preheader ], [ %i.pa, %.loopexit1661.i.loopexit.unr-lcssa ]
  %lcmp.mod89 = trunc i64 %i.ir to i1
  tail call void @llvm.assume(i1 %lcmp.mod89)
  %i.pb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015941668.i.epil.init, i1 true)
  %i.pc = trunc nuw nsw i64 %i.pb to i32
  %i.pd = or disjoint i32 %i.ip, %i.pc
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.01675.i, i64 %indvars.iv.i.epil.init
  store i32 %i.pd, ptr %i.pe, align 4, !tbaa !10
  br label %.loopexit1661.i

.loopexit1661.i:                                  ; preds = %.noexc108.i.epil.preheader, %.loopexit1661.i.loopexit.unr-lcssa, %.noexc107.i, %.noexc227.i, %.noexc204.i, %.noexc181.i, %.noexc158.i, %.noexc145.i
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.01675.i, i64 %i.ir
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit52.i

_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit52.i: ; preds = %.loopexit1661.i, %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i
  %.sroa.59.2.i = phi ptr [ %.sroa.59.01675.i, %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i ], [ %i.pf, %.loopexit1661.i ] ; 2 uses
  %i.pg = xor i64 %i.ek, -1
  %i.ph = and i64 %i.pg, %i.eg
  %i.pi = or i64 %i.ph, %i.ee
  %i.pj = xor i64 %i.cg, %i.ck
  %i.pk = xor i64 %i.pj, -1
  %i.pl = and i64 %i.pi, %i.pk                    ; 2 uses
  %i.pm = and i64 %i.ck, %i.fa
  %i.pn = or i64 %i.pm, %.sroa.148.01673.i        ; 2 uses
  %i.po = add nuw i64 %.sroa.11.01670.i, 64       ; 4 uses
  %i.pp = icmp ult i64 %i.po, %spec.select.i.i
  br i1 %i.pp, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !174

._crit_edge.thread.i:                             ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i
  %.ph.i = phi ptr [ %i.ad, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %i.af, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  %.0131756.ph.i = phi i64 [ %.013.ph.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %.013.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  %.sroa.59.0.lcssa.ph.i = phi ptr [ %i.ae, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %i.ag, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i

._crit_edge.i:                                    ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit52.i
  %i.pq = bitcast <2 x i64> %.sroa.48.1.i to <16 x i8>
  %i.pr = or <2 x i64> %.sroa.23326.1.i, %.sroa.53.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ps = icmp eq i64 %.013.i, %i.po
  br i1 %i.ps, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i

_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i: ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.sroa.18.0.lcssa1779.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.cl, %._crit_edge.i ]
  %.sroa.23326.0.lcssa1778.i = phi <2 x i64> [ zeroinitializer, %._crit_edge.thread.i ], [ %.sroa.23326.1.i, %._crit_edge.i ]
  %.sroa.48.0.lcssa1777.i = phi <16 x i8> [ zeroinitializer, %._crit_edge.thread.i ], [ %i.pq, %._crit_edge.i ] ; 3 uses
  %.sroa.53.0.lcssa1776.i = phi <2 x i64> [ zeroinitializer, %._crit_edge.thread.i ], [ %i.pr, %._crit_edge.i ]
  %.sroa.59.0.lcssa1775.i = phi ptr [ %.sroa.59.0.lcssa.ph.i, %._crit_edge.thread.i ], [ %.sroa.59.2.i, %._crit_edge.i ] ; 29 uses
  %.sroa.142.0.lcssa1774.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.pl, %._crit_edge.i ] ; 5 uses
  %.sroa.148.0.lcssa1773.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.pn, %._crit_edge.i ]
  %.sroa.8.0.lcssa1772.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %.sroa.8.1.i, %._crit_edge.i ] ; 3 uses
  %.sroa.0.0.lcssa1771.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.el, %._crit_edge.i ]
  %.sroa.11.0.lcssa1770.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.po, %._crit_edge.i ] ; 30 uses
  %.01317561769.i = phi i64 [ %.0131756.ph.i, %._crit_edge.thread.i ], [ %.013.i, %._crit_edge.i ] ; 3 uses
  %i.pt = phi ptr [ %.ph.i, %._crit_edge.thread.i ], [ %i.af, %._crit_edge.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 32, i64 64, i1 false)
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0.lcssa1770.i
  %i.pv = sub i64 %.01317561769.i, %.sroa.11.0.lcssa1770.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.pu, i64 %i.pv, i1 false)
  %.0..0..0..0..0..i = load <2 x i64>, ptr %i.a, align 16, !tbaa !9 ; 6 uses
  %.16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.16..16..16..16..16..i = load <2 x i64>, ptr %.16..16..16..16..16..sroa_idx, align 16, !tbaa !9 ; 6 uses
  %.32..32..32..32..32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.32..32..32..32..32..i = load <2 x i64>, ptr %.32..32..32..32..32..sroa_idx, align 16, !tbaa !9 ; 4 uses
  %.48..48..48..48..48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.48..48..48..48..48..i = load <2 x i64>, ptr %.48..48..48..48..48..sroa_idx, align 16, !tbaa !9 ; 4 uses
  %i.pw = bitcast <2 x i64> %.0..0..0..0..0..i to <16 x i8> ; 10 uses
  %i.px = icmp eq <16 x i8> %i.pw, splat (i8 92)
  %i.py = bitcast <2 x i64> %.16..16..16..16..16..i to <16 x i8> ; 10 uses
  %i.pz = icmp eq <16 x i8> %i.py, splat (i8 92)
  %i.qa = bitcast <2 x i64> %.32..32..32..32..32..i to <16 x i8> ; 12 uses
  %i.qb = icmp eq <16 x i8> %i.qa, splat (i8 92)
  %i.qc = bitcast <2 x i64> %.48..48..48..48..48..i to <16 x i8> ; 10 uses
  %i.qd = icmp eq <16 x i8> %i.qc, splat (i8 92)
  %i.qe = bitcast <16 x i1> %i.px to i16
  %i.qf = bitcast <16 x i1> %i.pz to i16
  %i.qg = bitcast <16 x i1> %i.qb to i16
  %i.qh = bitcast <16 x i1> %i.qd to i16
  %i.qi = insertelement <4 x i16> poison, i16 %i.qe, i64 0
  %i.qj = insertelement <4 x i16> %i.qi, i16 %i.qf, i64 1
  %i.qk = insertelement <4 x i16> %i.qj, i16 %i.qg, i64 2
  %i.ql = insertelement <4 x i16> %i.qk, i16 %i.qh, i64 3
  %i.qm = bitcast <4 x i16> %i.ql to i64          ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.qm, 0
  br i1 %.not.i.i.i, label %.noexc82.i, label %bb.m

bb.m:                                             ; preds = %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i
  %i.qn = xor i64 %.sroa.8.0.lcssa1772.i, -1
  %i.qo = and i64 %i.qm, %i.qn                    ; 2 uses
  %i.qp = shl i64 %i.qo, 1
  %i.qq = or i64 %i.qp, -6148914691236517206
  %i.qr = sub i64 %i.qq, %i.qo
  %i.qs = or i64 %.sroa.8.0.lcssa1772.i, %i.qm
  %i.qt = xor i64 %i.qs, %i.qr
  %i.qu = xor i64 %i.qt, -6148914691236517206
  br label %.noexc82.i

.noexc82.i:                                       ; preds = %bb.m, %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i
  %.sroa.0.0.i.i.i = phi i64 [ %i.qu, %bb.m ], [ %.sroa.8.0.lcssa1772.i, %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i ]
  %i.qv = icmp eq <16 x i8> %i.pw, splat (i8 34)
  %i.qw = icmp eq <16 x i8> %i.py, splat (i8 34)
  %i.qx = icmp eq <16 x i8> %i.qa, splat (i8 34)
  %i.qy = icmp eq <16 x i8> %i.qc, splat (i8 34)
  %i.qz = bitcast <16 x i1> %i.qv to i16
  %i.ra = bitcast <16 x i1> %i.qw to i16
  %i.rb = bitcast <16 x i1> %i.qx to i16
  %i.rc = bitcast <16 x i1> %i.qy to i16
  %i.rd = insertelement <4 x i16> poison, i16 %i.qz, i64 0
  %i.re = insertelement <4 x i16> %i.rd, i16 %i.ra, i64 1
  %i.rf = insertelement <4 x i16> %i.re, i16 %i.rb, i64 2
  %i.rg = insertelement <4 x i16> %i.rf, i16 %i.rc, i64 3
  %i.rh = bitcast <4 x i16> %i.rg to i64
  %i.ri = xor i64 %.sroa.0.0.i.i.i, -1
  %i.rj = and i64 %i.rh, %i.ri                    ; 3 uses
  %i.rk = insertelement <2 x i64> poison, i64 %i.rj, i64 0
  %i.rl = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.rk, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.rm = extractelement <2 x i64> %i.rl, i64 0
  %i.rn = xor i64 %i.rm, %.sroa.18.0.lcssa1779.i  ; 3 uses
  %i.ro = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.pw)
  %i.rp = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.py)
  %i.rq = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.qa)
  %i.rr = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.qc)
  %i.rs = icmp eq <16 x i8> %i.rq, %i.qa
  %i.rt = icmp eq <16 x i8> %i.rr, %i.qc
  %i.ru = bitcast <16 x i1> %i.rs to i16
  %i.rv = zext i16 %i.ru to i64
  %i.rw = bitcast <16 x i1> %i.rt to i16
  %i.rx = zext i16 %i.rw to i64
  %i.ry = shufflevector <16 x i8> %i.ro, <16 x i8> %i.rp, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.rz = shufflevector <2 x i64> %.0..0..0..0..0..i, <2 x i64> %.16..16..16..16..16..i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sa = bitcast <4 x i64> %i.rz to <32 x i8>
  %i.sb = icmp eq <32 x i8> %i.ry, %i.sa
  %i.sc = bitcast <32 x i1> %i.sb to i32
  %i.sd = zext i32 %i.sc to i64
  %i.se = shl nuw nsw i64 %i.rv, 32
  %i.sf = or disjoint i64 %i.se, %i.sd
  %i.sg = shl nuw i64 %i.rx, 48
  %i.sh = or disjoint i64 %i.sf, %i.sg
  %i.si = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <16 x i8> %i.pw)
  %i.sj = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <16 x i8> %i.py)
  %i.sk = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <16 x i8> %i.qa)
  %i.sl = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <16 x i8> %i.qc)
  %i.sm = bitcast <2 x i64> %.32..32..32..32..32..i to <16 x i8>
  %i.sn = or <16 x i8> %i.sm, splat (i8 32)
  %i.so = icmp eq <16 x i8> %i.sn, %i.sk
  %i.sp = bitcast <2 x i64> %.48..48..48..48..48..i to <16 x i8>
  %i.sq = or <16 x i8> %i.sp, splat (i8 32)
  %i.sr = icmp eq <16 x i8> %i.sq, %i.sl
  %i.ss = bitcast <16 x i1> %i.so to i16
  %i.st = zext i16 %i.ss to i64
  %i.su = bitcast <16 x i1> %i.sr to i16
  %i.sv = zext i16 %i.su to i64
  %i.sw = shufflevector <2 x i64> %.0..0..0..0..0..i, <2 x i64> %.16..16..16..16..16..i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sx = bitcast <4 x i64> %i.sw to <32 x i8>
  %i.sy = or <32 x i8> %i.sx, splat (i8 32)
  %i.sz = shufflevector <16 x i8> %i.si, <16 x i8> %i.sj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ta = icmp eq <32 x i8> %i.sy, %i.sz
  %i.tb = bitcast <32 x i1> %i.ta to i32
  %i.tc = zext i32 %i.tb to i64
  %i.td = shl nuw nsw i64 %i.st, 32
  %i.te = or disjoint i64 %i.td, %i.tc
  %i.tf = shl nuw i64 %i.sv, 48
  %i.tg = or disjoint i64 %i.te, %i.tf            ; 2 uses
  %i.th = or i64 %i.tg, %i.sh
  %i.ti = xor i64 %i.th, -1                       ; 2 uses
  %i.tj = xor i64 %i.rj, -1
  %i.tk = and i64 %i.ti, %i.tj
  %i.tl = shl i64 %i.tk, 1
  %i.tm = or disjoint i64 %i.tl, %.sroa.0.0.lcssa1771.i
  %i.tn = icmp ult <16 x i8> %i.qa, splat (i8 32)
  %i.to = icmp ult <16 x i8> %i.qc, splat (i8 32)
  %i.tp = bitcast <16 x i1> %i.tn to i16
  %i.tq = zext i16 %i.tp to i64
  %i.tr = bitcast <16 x i1> %i.to to i16
  %i.ts = zext i16 %i.tr to i64
  %i.tt = shufflevector <2 x i64> %.0..0..0..0..0..i, <2 x i64> %.16..16..16..16..16..i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.tu = bitcast <4 x i64> %i.tt to <32 x i8>
  %i.tv = icmp ult <32 x i8> %i.tu, splat (i8 32)
  %i.tw = bitcast <32 x i1> %i.tv to i32
  %i.tx = zext i32 %i.tw to i64
  %i.ty = shl nuw nsw i64 %i.tq, 32
  %i.tz = or disjoint i64 %i.ty, %i.tx
  %i.ua = shl nuw i64 %i.ts, 48
  %i.ub = or disjoint i64 %i.tz, %i.ua
  %i.uc = or <2 x i64> %.16..16..16..16..16..i, %.0..0..0..0..0..i
  %i.ud = or <2 x i64> %i.uc, %.32..32..32..32..32..i
  %i.ue = or <2 x i64> %i.ud, %.48..48..48..48..48..i
  %i.uf = bitcast <2 x i64> %i.ue to <16 x i8>
  %i.ug = icmp slt <16 x i8> %i.uf, zeroinitializer
  %i.uh = bitcast <16 x i1> %i.ug to i16
  %i.ui = icmp eq i16 %i.uh, 0
  br i1 %i.ui, label %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i80.i, label %.noexc91.i, !prof !109

.noexc91.i:                                       ; preds = %.noexc82.i
  %i.uj = shufflevector <16 x i8> %.sroa.48.0.lcssa1777.i, <16 x i8> %i.pw, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.uk = bitcast <16 x i8> %i.uj to <8 x i16>
  %i.ul = lshr <8 x i16> %i.uk, splat (i16 4)
  %i.um = bitcast <8 x i16> %i.ul to <16 x i8>
  %i.un = and <16 x i8> %i.um, splat (i8 15)
  %i.uo = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.un)
  %i.up = and <16 x i8> %i.uj, splat (i8 15)
  %i.uq = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.up)
  %i.ur = bitcast <2 x i64> %.0..0..0..0..0..i to <8 x i16>
  %i.us = lshr <8 x i16> %i.ur, splat (i16 4)
  %i.ut = bitcast <8 x i16> %i.us to <16 x i8>
  %i.uu = and <16 x i8> %i.ut, splat (i8 15)
  %i.uv = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.uu)
  %i.uw = and <16 x i8> %i.uq, %i.uo
  %i.ux = and <16 x i8> %i.uw, %i.uv
  %i.uy = shufflevector <16 x i8> %.sroa.48.0.lcssa1777.i, <16 x i8> %i.pw, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.uz = shufflevector <16 x i8> %.sroa.48.0.lcssa1777.i, <16 x i8> %i.pw, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.va = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.uy, <16 x i8> splat (i8 96))
  %i.vb = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.uz, <16 x i8> splat (i8 112))
  %i.vc = or <16 x i8> %i.va, %i.vb
  %.inner69 = and <16 x i8> %i.vc, splat (i8 -128)
  %.inner70 = xor <16 x i8> %.inner69, %i.ux
  %i.vd = bitcast <16 x i8> %.inner70 to <2 x i64>
  %i.ve = shufflevector <16 x i8> %i.pw, <16 x i8> %i.py, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.vf = bitcast <16 x i8> %i.ve to <8 x i16>
  %i.vg = lshr <8 x i16> %i.vf, splat (i16 4)
  %i.vh = bitcast <8 x i16> %i.vg to <16 x i8>
  %i.vi = and <16 x i8> %i.vh, splat (i8 15)
  %i.vj = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.vi)
  %i.vk = and <16 x i8> %i.ve, splat (i8 15)
  %i.vl = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.vk)
end_hunk_7
begin_hunk_8_@_ZN8simdjson8westmere25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE:bb.a
    i8 123, label %bb.as
    i8 91, label %bb.at
  ]

bb.aq:                                            ; preds = %._crit_edge1700.i
  %i.aoy = add nsw i32 %.036.i282.lcssa.i, -1
  br label %bb.au

bb.ar:                                            ; preds = %._crit_edge1700.i
  %i.aoz = add nsw i32 %.039.i281.lcssa.i, -1
  br label %bb.au

bb.as:                                            ; preds = %._crit_edge1700.i
  %i.apa = add nsw i32 %.036.i282.lcssa.i, 1
  br label %bb.au

bb.at:                                            ; preds = %._crit_edge1700.i
  %i.apb = add nsw i32 %.039.i281.lcssa.i, 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %._crit_edge1700.i
  %.443.i296.i = phi i32 [ %.039.i281.lcssa.i, %._crit_edge1700.i ], [ %.039.i281.lcssa.i, %bb.aq ], [ %i.aoz, %bb.ar ], [ %.039.i281.lcssa.i, %bb.as ], [ %i.apb, %bb.at ]
  %.4.i297.i = phi i32 [ %.036.i282.lcssa.i, %._crit_edge1700.i ], [ %i.aoy, %bb.aq ], [ %.036.i282.lcssa.i, %bb.ar ], [ %i.apa, %bb.as ], [ %.036.i282.lcssa.i, %bb.at ]
  %i.apc = icmp ne i32 %.443.i296.i, 0
  %i.apd = icmp ne i32 %.4.i297.i, 0
  %or.cond4.i298.i = select i1 %i.apc, i1 true, i1 %i.apd
  %spec.select1649.i = select i1 %or.cond4.i298.i, i32 0, i32 %i.anx
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit300.i

_ZN8simdjson8westmere12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit300.i: ; preds = %bb.au, %bb.ao, %thread-pre-split1634.i
  %.5.i295.i = phi i32 [ 0, %thread-pre-split1634.i ], [ %spec.select.i, %bb.ao ], [ %spec.select1649.i, %bb.au ] ; 3 uses
  store i32 %.5.i295.i, ptr %i.als, align 8, !tbaa !73
  %i.ape = zext i32 %.5.i295.i to i64
  %i.apf = getelementptr inbounds nuw [4 x i8], ptr %i.alm, i64 %i.ape
  %i.apg = load i32, ptr %i.apf, align 4, !tbaa !10
  %i.aph = add i32 %.5.i295.i, 1
  %i.api = zext i32 %i.aph to i64
  %i.apj = getelementptr inbounds nuw [4 x i8], ptr %i.alm, i64 %i.api
  store i32 %i.apg, ptr %i.apj, align 4, !tbaa !10
  %i.apk = load i32, ptr %i.als, align 8, !tbaa !73
  %i.apl = zext i32 %i.apk to i64
  %i.apm = getelementptr inbounds nuw [4 x i8], ptr %i.alm, i64 %i.apl
  store i32 %i.alt, ptr %i.apm, align 4, !tbaa !10
  %i.apn = load i32, ptr %i.als, align 8, !tbaa !73
  %i.apo = icmp eq i32 %i.apn, 0
  br i1 %i.apo, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %bb.av, !prof !107

bb.av:                                            ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit300.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit.thread1628.i, %bb.p
  %i.app = tail call noundef i32 @llvm.x86.sse41.ptestz(<2 x i64> %.sroa.23326.2.i, <2 x i64> %.sroa.23326.2.i)
  %.not1654.i = icmp eq i32 %i.app, 0
  %i.apq = select i1 %.not1654.i, i32 11, i32 0
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i

_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i: ; preds = %bb.av, %_ZN8simdjson8westmere12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit300.i, %bb.ag, %bb.af, %bb.r, %bb.o, %bb.n, %.thread.i, %.noexc.i, %._crit_edge.i
  %.0.i = phi i32 [ 13, %bb.ag ], [ 13, %_ZN8simdjson8westmere12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit300.i ], [ 1, %bb.r ], [ 15, %.noexc.i ], [ 14, %.thread.i ], [ 13, %bb.n ], [ 24, %bb.o ], [ %i.apq, %bb.av ], [ 24, %._crit_edge.i ], [ 1, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer5indexILm64EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit

_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer5indexILm64EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit: ; preds = %bb.a, %bb.b, %bb.g, %bb.h, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i
  %.1.i = phi i32 [ %.0.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i ], [ 1, %bb.a ], [ 13, %bb.b ], [ 11, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.i ], [ 11, %bb.h ], [ 11, %bb.g ]
  ret i32 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZNK8simdjson8westmere14implementation13validate_utf8EPKcm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 8 uses
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 64)
  %.not.i.i = icmp ult i64 %2, 65
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i
  %.sroa.11.0684.i.i = phi i64 [ %i.da, %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.073.0683.i.i = phi <2 x i64> [ %.sroa.073.2.i.i, %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ zeroinitializer, %bb.a ]
  %.sroa.27.0682.i.i = phi <2 x i64> [ %.sroa.27.1.i.i, %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ zeroinitializer, %bb.a ] ; 2 uses
  %.sroa.32.0681.i.i = phi <2 x i64> [ %.sroa.32.2.i.i, %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0684.i.i ; 4 uses
  %i.c = load <2 x i64>, ptr %i.b, align 1, !tbaa !9 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load <2 x i64>, ptr %i.d, align 1, !tbaa !9 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load <2 x i64>, ptr %i.f, align 1, !tbaa !9 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load <2 x i64>, ptr %i.h, align 1, !tbaa !9 ; 4 uses
  %i.j = or <2 x i64> %i.e, %i.c
  %i.k = or <2 x i64> %i.j, %i.g
  %i.l = or <2 x i64> %i.k, %i.i
  %i.m = bitcast <2 x i64> %i.l to <16 x i8>
  %i.n = icmp slt <16 x i8> %i.m, zeroinitializer
  %i.o = bitcast <16 x i1> %i.n to i16
  %i.p = icmp eq i16 %i.o, 0
  br i1 %i.p, label %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i, label %bb.b, !prof !109

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.q = bitcast <2 x i64> %i.c to <16 x i8>      ; 6 uses
  %i.r = bitcast <2 x i64> %.sroa.27.0682.i.i to <16 x i8> ; 3 uses
  %i.s = shufflevector <16 x i8> %i.r, <16 x i8> %i.q, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.t = bitcast <16 x i8> %i.s to <8 x i16>
  %i.u = lshr <8 x i16> %i.t, splat (i16 4)
  %i.v = bitcast <8 x i16> %i.u to <16 x i8>
  %i.w = and <16 x i8> %i.v, splat (i8 15)
  %i.x = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.w)
  %i.y = and <16 x i8> %i.s, splat (i8 15)
  %i.z = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.y)
  %i.aa = bitcast <2 x i64> %i.c to <8 x i16>
  %i.ab = lshr <8 x i16> %i.aa, splat (i16 4)
  %i.ac = bitcast <8 x i16> %i.ab to <16 x i8>
  %i.ad = and <16 x i8> %i.ac, splat (i8 15)
  %i.ae = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.ad)
  %i.af = and <16 x i8> %i.z, %i.x
  %i.ag = and <16 x i8> %i.af, %i.ae
  %i.ah = shufflevector <16 x i8> %i.r, <16 x i8> %i.q, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.ai = shufflevector <16 x i8> %i.r, <16 x i8> %i.q, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.aj = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.ah, <16 x i8> splat (i8 96))
  %i.ak = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.ai, <16 x i8> splat (i8 112))
  %i.al = or <16 x i8> %i.aj, %i.ak
  %.inner3 = and <16 x i8> %i.al, splat (i8 -128)
  %.inner4 = xor <16 x i8> %.inner3, %i.ag
  %i.am = bitcast <2 x i64> %i.e to <16 x i8>     ; 6 uses
  %i.an = shufflevector <16 x i8> %i.q, <16 x i8> %i.am, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.ao = bitcast <16 x i8> %i.an to <8 x i16>
  %i.ap = lshr <8 x i16> %i.ao, splat (i16 4)
  %i.aq = bitcast <8 x i16> %i.ap to <16 x i8>
  %i.ar = and <16 x i8> %i.aq, splat (i8 15)
  %i.as = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.ar)
  %i.at = and <16 x i8> %i.an, splat (i8 15)
  %i.au = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.at)
  %i.av = bitcast <2 x i64> %i.e to <8 x i16>
  %i.aw = lshr <8 x i16> %i.av, splat (i16 4)
  %i.ax = bitcast <8 x i16> %i.aw to <16 x i8>
  %i.ay = and <16 x i8> %i.ax, splat (i8 15)
  %i.az = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.ay)
  %i.ba = and <16 x i8> %i.au, %i.as
  %i.bb = and <16 x i8> %i.ba, %i.az
  %i.bc = shufflevector <16 x i8> %i.q, <16 x i8> %i.am, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.bd = shufflevector <16 x i8> %i.q, <16 x i8> %i.am, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.be = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.bc, <16 x i8> splat (i8 96))
  %i.bf = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.bd, <16 x i8> splat (i8 112))
  %i.bg = or <16 x i8> %i.be, %i.bf
  %.inner7 = and <16 x i8> %i.bg, splat (i8 -128)
  %.inner8 = xor <16 x i8> %.inner7, %i.bb
  %i.bh = bitcast <2 x i64> %i.g to <16 x i8>     ; 6 uses
  %i.bi = shufflevector <16 x i8> %i.am, <16 x i8> %i.bh, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.bj = bitcast <16 x i8> %i.bi to <8 x i16>
  %i.bk = lshr <8 x i16> %i.bj, splat (i16 4)
  %i.bl = bitcast <8 x i16> %i.bk to <16 x i8>
  %i.bm = and <16 x i8> %i.bl, splat (i8 15)
  %i.bn = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.bm)
  %i.bo = and <16 x i8> %i.bi, splat (i8 15)
  %i.bp = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.bo)
  %i.bq = bitcast <2 x i64> %i.g to <8 x i16>
  %i.br = lshr <8 x i16> %i.bq, splat (i16 4)
  %i.bs = bitcast <8 x i16> %i.br to <16 x i8>
  %i.bt = and <16 x i8> %i.bs, splat (i8 15)
  %i.bu = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.bt)
  %i.bv = and <16 x i8> %i.bp, %i.bn
  %i.bw = and <16 x i8> %i.bv, %i.bu
  %i.bx = shufflevector <16 x i8> %i.am, <16 x i8> %i.bh, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.by = shufflevector <16 x i8> %i.am, <16 x i8> %i.bh, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.bz = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.bx, <16 x i8> splat (i8 96))
  %i.ca = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.by, <16 x i8> splat (i8 112))
  %i.cb = or <16 x i8> %i.bz, %i.ca
  %.inner11 = and <16 x i8> %i.cb, splat (i8 -128)
  %.inner12 = xor <16 x i8> %.inner11, %i.bw
  %i.cc = bitcast <2 x i64> %i.i to <16 x i8>     ; 4 uses
  %i.cd = shufflevector <16 x i8> %i.bh, <16 x i8> %i.cc, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.ce = bitcast <16 x i8> %i.cd to <8 x i16>
  %i.cf = lshr <8 x i16> %i.ce, splat (i16 4)
  %i.cg = bitcast <8 x i16> %i.cf to <16 x i8>
  %i.ch = and <16 x i8> %i.cg, splat (i8 15)
  %i.ci = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.ch)
  %i.cj = and <16 x i8> %i.cd, splat (i8 15)
  %i.ck = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.cj)
  %i.cl = bitcast <2 x i64> %i.i to <8 x i16>
  %i.cm = lshr <8 x i16> %i.cl, splat (i16 4)
  %i.cn = bitcast <8 x i16> %i.cm to <16 x i8>
  %i.co = and <16 x i8> %i.cn, splat (i8 15)
  %i.cp = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.co)
  %i.cq = and <16 x i8> %i.ck, %i.ci
  %i.cr = and <16 x i8> %i.cq, %i.cp
  %i.cs = shufflevector <16 x i8> %i.bh, <16 x i8> %i.cc, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.ct = shufflevector <16 x i8> %i.bh, <16 x i8> %i.cc, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.cu = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.cs, <16 x i8> splat (i8 96))
  %i.cv = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.ct, <16 x i8> splat (i8 112))
  %i.cw = or <16 x i8> %i.cu, %i.cv
  %.inner15 = and <16 x i8> %i.cw, splat (i8 -128)
  %.inner16 = xor <16 x i8> %.inner15, %i.cr
  %.inner17 = or <16 x i8> %.inner8, %.inner4
  %.inner18 = or <16 x i8> %.inner17, %.inner12
  %.inner19 = or <16 x i8> %.inner18, %.inner16
  %i.cx = bitcast <16 x i8> %.inner19 to <2 x i64>
  %i.cy = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.cc, <16 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.cz = bitcast <16 x i8> %i.cy to <2 x i64>
  br label %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i

_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %.sroa.32.2.i.i = phi <2 x i64> [ %i.cz, %bb.b ], [ %.sroa.32.0681.i.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.27.1.i.i = phi <2 x i64> [ %i.i, %bb.b ], [ %.sroa.27.0682.i.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.32.0681.i.pn.i = phi <2 x i64> [ %i.cx, %bb.b ], [ %.sroa.32.0681.i.i, %.lr.ph.i.i ]
  %.sroa.073.2.i.i = or <2 x i64> %.sroa.32.0681.i.pn.i, %.sroa.073.0683.i.i ; 3 uses
  %i.da = add nuw i64 %.sroa.11.0684.i.i, 64      ; 3 uses
  %i.db = icmp ult i64 %i.da, %spec.select.i.i.i
  br i1 %i.db, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !176

._crit_edge.loopexit.i.i:                         ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i
  %i.dc = bitcast <2 x i64> %.sroa.27.1.i.i to <16 x i8>
  %i.dd = or <2 x i64> %.sroa.073.2.i.i, %.sroa.32.2.i.i
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %.sroa.32.0.lcssa.i.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.dd, %._crit_edge.loopexit.i.i ]
  %.sroa.27.0.lcssa.i.i = phi <16 x i8> [ zeroinitializer, %bb.a ], [ %i.dc, %._crit_edge.loopexit.i.i ] ; 3 uses
  %.sroa.073.0.lcssa.i.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %.sroa.073.2.i.i, %._crit_edge.loopexit.i.i ]
  %.sroa.11.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.da, %._crit_edge.loopexit.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.de = icmp eq i64 %2, %.sroa.11.0.lcssa.i.i
  br i1 %i.de, label %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 32, i64 64, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0.lcssa.i.i
  %i.dg = sub i64 %2, %.sroa.11.0.lcssa.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.df, i64 %i.dg, i1 false)
  %.0..0..0..0..0..0..0..pre.i.i = load <2 x i64>, ptr %i.a, align 16, !tbaa !9
  %.16..16..16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.16..16..16..16..16..16..16..pre.i.i = load <2 x i64>, ptr %.16..16..16..16..16..16..16..sroa_idx, align 16, !tbaa !9
  %.32..32..32..32..32..32..32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.32..32..32..32..32..32..32..pre.i.i = load <2 x i64>, ptr %.32..32..32..32..32..32..32..sroa_idx, align 16, !tbaa !9
  %.48..48..48..48..48..48..48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.48..48..48..48..48..48..48..pre.i.i = load <2 x i64>, ptr %.48..48..48..48..48..48..48..sroa_idx, align 16, !tbaa !9
  br label %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i

_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i: ; preds = %bb.c, %._crit_edge.i.i
  %.48..48..i.i = phi <2 x i64> [ zeroinitializer, %._crit_edge.i.i ], [ %.48..48..48..48..48..48..48..pre.i.i, %bb.c ] ; 3 uses
  %.32..32..i.i = phi <2 x i64> [ zeroinitializer, %._crit_edge.i.i ], [ %.32..32..32..32..32..32..32..pre.i.i, %bb.c ] ; 3 uses
  %.16..16..i.i = phi <2 x i64> [ zeroinitializer, %._crit_edge.i.i ], [ %.16..16..16..16..16..16..16..pre.i.i, %bb.c ] ; 3 uses
  %.0..0..i.i = phi <2 x i64> [ zeroinitializer, %._crit_edge.i.i ], [ %.0..0..0..0..0..0..0..pre.i.i, %bb.c ] ; 3 uses
  %i.dh = or <2 x i64> %.32..32..i.i, %.48..48..i.i
  %i.di = or <2 x i64> %i.dh, %.16..16..i.i
  %i.dj = or <2 x i64> %i.di, %.0..0..i.i
  %i.dk = bitcast <2 x i64> %i.dj to <16 x i8>
  %i.dl = icmp slt <16 x i8> %i.dk, zeroinitializer
  %i.dm = bitcast <16 x i1> %i.dl to i16
  %i.dn = icmp eq i16 %i.dm, 0
  br i1 %i.dn, label %bb.e, label %bb.d, !prof !109

bb.d:                                             ; preds = %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i
  %i.do = bitcast <2 x i64> %.0..0..i.i to <16 x i8> ; 6 uses
  %i.dp = shufflevector <16 x i8> %.sroa.27.0.lcssa.i.i, <16 x i8> %i.do, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.dq = bitcast <16 x i8> %i.dp to <8 x i16>
  %i.dr = lshr <8 x i16> %i.dq, splat (i16 4)
  %i.ds = bitcast <8 x i16> %i.dr to <16 x i8>
  %i.dt = and <16 x i8> %i.ds, splat (i8 15)
  %i.du = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.dt)
  %i.dv = and <16 x i8> %i.dp, splat (i8 15)
  %i.dw = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.dv)
  %i.dx = bitcast <2 x i64> %.0..0..i.i to <8 x i16>
  %i.dy = lshr <8 x i16> %i.dx, splat (i16 4)
  %i.dz = bitcast <8 x i16> %i.dy to <16 x i8>
  %i.ea = and <16 x i8> %i.dz, splat (i8 15)
  %i.eb = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.ea)
  %i.ec = and <16 x i8> %i.dw, %i.du
  %i.ed = and <16 x i8> %i.ec, %i.eb
  %i.ee = shufflevector <16 x i8> %.sroa.27.0.lcssa.i.i, <16 x i8> %i.do, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.ef = shufflevector <16 x i8> %.sroa.27.0.lcssa.i.i, <16 x i8> %i.do, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.eg = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.ee, <16 x i8> splat (i8 96))
  %i.eh = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.ef, <16 x i8> splat (i8 112))
  %i.ei = or <16 x i8> %i.eg, %i.eh
  %.inner22 = and <16 x i8> %i.ei, splat (i8 -128)
  %.inner23 = xor <16 x i8> %.inner22, %i.ed
  %i.ej = bitcast <16 x i8> %.inner23 to <2 x i64>
  %i.ek = bitcast <2 x i64> %.16..16..i.i to <16 x i8> ; 6 uses
  %i.el = shufflevector <16 x i8> %i.do, <16 x i8> %i.ek, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.em = bitcast <16 x i8> %i.el to <8 x i16>
  %i.en = lshr <8 x i16> %i.em, splat (i16 4)
  %i.eo = bitcast <8 x i16> %i.en to <16 x i8>
  %i.ep = and <16 x i8> %i.eo, splat (i8 15)
  %i.eq = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.ep)
  %i.er = and <16 x i8> %i.el, splat (i8 15)
  %i.es = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.er)
  %i.et = bitcast <2 x i64> %.16..16..i.i to <8 x i16>
  %i.eu = lshr <8 x i16> %i.et, splat (i16 4)
  %i.ev = bitcast <8 x i16> %i.eu to <16 x i8>
  %i.ew = and <16 x i8> %i.ev, splat (i8 15)
  %i.ex = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.ew)
  %i.ey = and <16 x i8> %i.es, %i.eq
  %i.ez = and <16 x i8> %i.ey, %i.ex
  %i.fa = shufflevector <16 x i8> %i.do, <16 x i8> %i.ek, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.fb = shufflevector <16 x i8> %i.do, <16 x i8> %i.ek, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.fc = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.fa, <16 x i8> splat (i8 96))
  %i.fd = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.fb, <16 x i8> splat (i8 112))
  %i.fe = or <16 x i8> %i.fc, %i.fd
  %.inner26 = and <16 x i8> %i.fe, splat (i8 -128)
  %.inner27 = xor <16 x i8> %.inner26, %i.ez
  %i.ff = bitcast <16 x i8> %.inner27 to <2 x i64>
  %i.fg = bitcast <2 x i64> %.32..32..i.i to <16 x i8> ; 6 uses
  %i.fh = shufflevector <16 x i8> %i.ek, <16 x i8> %i.fg, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.fi = bitcast <16 x i8> %i.fh to <8 x i16>
  %i.fj = lshr <8 x i16> %i.fi, splat (i16 4)
  %i.fk = bitcast <8 x i16> %i.fj to <16 x i8>
  %i.fl = and <16 x i8> %i.fk, splat (i8 15)
  %i.fm = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.fl)
  %i.fn = and <16 x i8> %i.fh, splat (i8 15)
  %i.fo = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.fn)
  %i.fp = bitcast <2 x i64> %.32..32..i.i to <8 x i16>
  %i.fq = lshr <8 x i16> %i.fp, splat (i16 4)
  %i.fr = bitcast <8 x i16> %i.fq to <16 x i8>
  %i.fs = and <16 x i8> %i.fr, splat (i8 15)
  %i.ft = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.fs)
  %i.fu = and <16 x i8> %i.fo, %i.fm
  %i.fv = and <16 x i8> %i.fu, %i.ft
  %i.fw = shufflevector <16 x i8> %i.ek, <16 x i8> %i.fg, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.fx = shufflevector <16 x i8> %i.ek, <16 x i8> %i.fg, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.fy = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.fw, <16 x i8> splat (i8 96))
  %i.fz = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.fx, <16 x i8> splat (i8 112))
  %i.ga = or <16 x i8> %i.fy, %i.fz
  %.inner30 = and <16 x i8> %i.ga, splat (i8 -128)
  %.inner31 = xor <16 x i8> %.inner30, %i.fv
  %i.gb = bitcast <16 x i8> %.inner31 to <2 x i64>
  %i.gc = bitcast <2 x i64> %.48..48..i.i to <16 x i8> ; 4 uses
  %i.gd = shufflevector <16 x i8> %i.fg, <16 x i8> %i.gc, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.ge = bitcast <16 x i8> %i.gd to <8 x i16>
  %i.gf = lshr <8 x i16> %i.ge, splat (i16 4)
  %i.gg = bitcast <8 x i16> %i.gf to <16 x i8>
  %i.gh = and <16 x i8> %i.gg, splat (i8 15)
  %i.gi = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.gh)
  %i.gj = and <16 x i8> %i.gd, splat (i8 15)
  %i.gk = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.gj)
  %i.gl = bitcast <2 x i64> %.48..48..i.i to <8 x i16>
  %i.gm = lshr <8 x i16> %i.gl, splat (i16 4)
  %i.gn = bitcast <8 x i16> %i.gm to <16 x i8>
  %i.go = and <16 x i8> %i.gn, splat (i8 15)
  %i.gp = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.go)
  %i.gq = and <16 x i8> %i.gk, %i.gi
  %i.gr = and <16 x i8> %i.gq, %i.gp
  %i.gs = shufflevector <16 x i8> %i.fg, <16 x i8> %i.gc, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.gt = shufflevector <16 x i8> %i.fg, <16 x i8> %i.gc, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.gu = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.gs, <16 x i8> splat (i8 96))
  %i.gv = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.gt, <16 x i8> splat (i8 112))
  %i.gw = or <16 x i8> %i.gu, %i.gv
  %.inner34 = and <16 x i8> %i.gw, splat (i8 -128)
  %.inner35 = xor <16 x i8> %.inner34, %i.gr
  %i.gx = bitcast <16 x i8> %.inner35 to <2 x i64>
  %i.gy = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.gc, <16 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.gz = bitcast <16 x i8> %i.gy to <2 x i64>
  %i.ha = or <2 x i64> %.sroa.073.0.lcssa.i.i, %i.gz
  %i.hb = or <2 x i64> %i.ha, %i.ej
  %i.hc = or <2 x i64> %i.hb, %i.ff
  %i.hd = or <2 x i64> %i.hc, %i.gb
  %i.he = or <2 x i64> %i.hd, %i.gx
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i
  %.sroa.073.1.i.i = phi <2 x i64> [ %i.he, %bb.d ], [ %.sroa.32.0.lcssa.i.i, %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i.i ] ; 2 uses
  %i.hf = tail call noundef i32 @llvm.x86.sse41.ptestz(<2 x i64> %.sroa.073.1.i.i, <2 x i64> %.sroa.073.1.i.i)
  %i.hg = icmp ne i32 %i.hf, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.hg
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 14) i32 @_ZN8simdjson8westmere25dom_parser_implementation6stage2ERNS_3dom8documentE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) initializes((88, 96)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %i.f = alloca double, align 8                   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 14 uses
  store ptr %1, ptr %i.g, align 8, !tbaa !177
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !163  ; 16 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !108  ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !73   ; 3 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !118    ; 20 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !178  ; 2 uses
  store i32 0, ptr %i.s, align 4, !tbaa !179
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 0, ptr %i.t, align 4, !tbaa !181
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 15 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 10 uses
  %i.w = load i32, ptr %i.k, align 4, !tbaa !10
  %i.x = zext i32 %i.w to i64                     ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.x ; 12 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !9
  switch i8 %i.z, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage213json_iterator13walk_documentILb0ENS2_12tape_builderEEENS_10error_codeERT0_.exit [
    i8 123, label %bb.c
    i8 91, label %bb.d
    i8 34, label %bb.g
    i8 116, label %bb.y
    i8 102, label %bb.ab
end_hunk_8
