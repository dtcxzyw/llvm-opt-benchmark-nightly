Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/stb_image?download=true
inline.NumInlined: 822
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 109
begin_hunk_0_@stbi_write_png_to_mem:bb.a
  tail call fastcc void @_ZL22stbiw__encode_png_linePhiiiiiiPa(ptr noundef %0, i32 noundef %spec.select, i32 noundef %2, i32 noundef %3, i32 noundef %i.dc, i32 noundef %4, i32 noundef 0, ptr noundef %i.k)
  %i.dd = mul nsw i64 %indvars.iv, %i.u
  %i.de = getelementptr inbounds i8, ptr %i.i, i64 %i.dd ; 2 uses
  store i8 0, ptr %i.de, align 1, !tbaa !34
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.df, ptr nonnull align 1 %i.k, i64 %i.j, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count209
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !218

._crit_edge:                                      ; preds = %bb.e, %.loopexit, %bb.c, %.preheader179
  tail call void @free(ptr noundef nonnull %i.k) #33
  %i.dg = load i32, ptr @stbi_write_png_compression_level, align 4, !tbaa !24
  %i.dh = call ptr @stbi_zlib_compress(ptr noundef nonnull %i.i, i32 noundef %i.g, ptr noundef nonnull %i.a, i32 noundef %i.dg) ; 3 uses
  tail call void @free(ptr noundef nonnull %i.i) #33
  %.not109 = icmp eq ptr %i.dh, null
  br i1 %.not109, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.di = load i32, ptr %i.a, align 4, !tbaa !24  ; 9 uses
  %i.dj = add nsw i32 %i.di, 57                   ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = tail call noalias ptr @malloc(i64 noundef %i.dk) #34 ; 28 uses
  %.not110 = icmp eq ptr %i.dl, null
  br i1 %.not110, label %bb.g, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  store i32 %i.dj, ptr %5, align 4, !tbaa !24
  store i64 727905341920923785, ptr %i.dl, align 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store <8 x i8> <i8 0, i8 0, i8 0, i8 13, i8 73, i8 72, i8 68, i8 82>, ptr %i.dm, align 1, !tbaa !34
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.do = lshr i32 %2, 24                         ; 2 uses
  %i.dp = trunc nuw i32 %i.do to i8
  store i8 %i.dp, ptr %i.dn, align 1, !tbaa !34
  %i.dq = lshr i32 %2, 16                         ; 2 uses
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 17
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !34
  %i.dt = lshr i32 %2, 8                          ; 2 uses
  %i.du = trunc i32 %i.dt to i8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 18
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !34
  %i.dw = trunc i32 %2 to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dl, i64 19
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !34
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dl, i64 20
  %i.dz = lshr i32 %3, 24                         ; 2 uses
  %i.ea = trunc nuw i32 %i.dz to i8
  store i8 %i.ea, ptr %i.dy, align 1, !tbaa !34
  %i.eb = lshr i32 %3, 16                         ; 2 uses
  %i.ec = trunc i32 %i.eb to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dl, i64 21
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !34
  %i.ee = lshr i32 %3, 8                          ; 2 uses
  %i.ef = trunc i32 %i.ee to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dl, i64 22
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !34
  %i.eh = trunc i32 %3 to i8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dl, i64 23
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !34
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dl, i64 25
  store i8 8, ptr %i.ej, align 1, !tbaa !34
  %i.el = sext i32 %4 to i64
  %i.em = getelementptr inbounds [4 x i8], ptr @__const.stbi_write_png_to_mem.ctype, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !24 ; 2 uses
  %i.eo = trunc i32 %i.en to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dl, i64 26
  store i8 %i.eo, ptr %i.ek, align 1, !tbaa !34
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dl, i64 27
  store i8 0, ptr %i.ep, align 1, !tbaa !34
  %i.er = getelementptr inbounds nuw i8, ptr %i.dl, i64 28
  store i8 0, ptr %i.eq, align 1, !tbaa !34
  store i8 0, ptr %i.er, align 1, !tbaa !34
  %i.es = xor i32 %i.do, 245
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !24
  %i.ew = xor i32 %i.ev, 5725777                  ; 2 uses
  %i.ex = lshr i32 %i.ew, 8
  %i.ey = xor i32 %i.ew, %i.dq
  %i.ez = and i32 %i.ey, 255
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !24
  %i.fd = xor i32 %i.fc, %i.ex                    ; 2 uses
  %i.fe = lshr i32 %i.fd, 8
  %i.ff = xor i32 %i.fd, %i.dt
  %i.fg = and i32 %i.ff, 255
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !24
  %i.fk = xor i32 %i.fj, %i.fe                    ; 2 uses
  %i.fl = lshr i32 %i.fk, 8
  %i.fm = xor i32 %i.fk, %2
  %i.fn = and i32 %i.fm, 255
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !24
  %i.fr = xor i32 %i.fq, %i.fl                    ; 2 uses
  %i.fs = lshr i32 %i.fr, 8
  %i.ft = and i32 %i.fr, 255
  %i.fu = xor i32 %i.ft, %i.dz
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !24
  %i.fy = xor i32 %i.fx, %i.fs                    ; 2 uses
  %i.fz = lshr i32 %i.fy, 8
  %i.ga = xor i32 %i.fy, %i.eb
  %i.gb = and i32 %i.ga, 255
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !24
  %i.gf = xor i32 %i.ge, %i.fz                    ; 2 uses
  %i.gg = lshr i32 %i.gf, 8
  %i.gh = xor i32 %i.gf, %i.ee
  %i.gi = and i32 %i.gh, 255
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !24
  %i.gm = xor i32 %i.gl, %i.gg                    ; 2 uses
  %i.gn = lshr i32 %i.gm, 8
  %i.go = xor i32 %i.gm, %3
  %i.gp = and i32 %i.go, 255
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !24
  %i.gt = xor i32 %i.gs, %i.gn                    ; 2 uses
  %i.gu = lshr i32 %i.gt, 8
  %i.gv = and i32 %i.gt, 255
  %i.gw = xor i32 %i.gv, 8
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !24
  %i.ha = xor i32 %i.gz, %i.gu                    ; 2 uses
  %i.hb = lshr i32 %i.ha, 8
  %i.hc = xor i32 %i.ha, %i.en
  %i.hd = and i32 %i.hc, 255
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !24
  %i.hh = xor i32 %i.hg, %i.hb                    ; 2 uses
  %i.hi = lshr i32 %i.hh, 8
  %i.hj = and i32 %i.hh, 255
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !24
  %i.hn = xor i32 %i.hm, %i.hi                    ; 2 uses
  %i.ho = lshr i32 %i.hn, 8
  %i.hp = and i32 %i.hn, 255
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !24
  %i.ht = xor i32 %i.hs, %i.ho                    ; 2 uses
  %i.hu = lshr i32 %i.ht, 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.dl, i64 28
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !34
  %i.hx = zext i8 %i.hw to i32
  %i.hy = and i32 %i.ht, 255
  %i.hz = xor i32 %i.hy, %i.hx
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !24
  %i.id = xor i32 %i.ic, %i.hu
  %i.ie = getelementptr inbounds nuw i8, ptr %i.dl, i64 29
  %i.if = xor i32 %i.id, -1                       ; 4 uses
  %i.ig = lshr i32 %i.if, 24
  %i.ih = trunc nuw i32 %i.ig to i8
  store i8 %i.ih, ptr %i.ie, align 1, !tbaa !34
  %i.ii = lshr i32 %i.if, 16
  %i.ij = trunc i32 %i.ii to i8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.dl, i64 30
  store i8 %i.ij, ptr %i.ik, align 1, !tbaa !34
  %i.il = lshr i32 %i.if, 8
  %i.im = trunc i32 %i.il to i8
  %i.in = getelementptr inbounds nuw i8, ptr %i.dl, i64 31
  store i8 %i.im, ptr %i.in, align 1, !tbaa !34
  %i.io = trunc i32 %i.if to i8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !34
  %i.iq = getelementptr inbounds nuw i8, ptr %i.dl, i64 33
  %i.ir = lshr i32 %i.di, 24
  %i.is = trunc nuw i32 %i.ir to i8
  store i8 %i.is, ptr %i.iq, align 1, !tbaa !34
  %i.it = lshr i32 %i.di, 16
  %i.iu = trunc i32 %i.it to i8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.dl, i64 34
  store i8 %i.iu, ptr %i.iv, align 1, !tbaa !34
  %i.iw = lshr i32 %i.di, 8
  %i.ix = trunc i32 %i.iw to i8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.dl, i64 35
  store i8 %i.ix, ptr %i.iy, align 1, !tbaa !34
  %i.iz = trunc i32 %i.di to i8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.dl, i64 36
  store i8 %i.iz, ptr %i.ja, align 1, !tbaa !34
  %i.jb = getelementptr inbounds nuw i8, ptr %i.dl, i64 37 ; 4 uses
  store <4 x i8> <i8 73, i8 68, i8 65, i8 84>, ptr %i.jb, align 1, !tbaa !34
  %i.jc = getelementptr inbounds nuw i8, ptr %i.dl, i64 41 ; 2 uses
  %i.jd = sext i32 %i.di to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jc, ptr nonnull align 1 %i.dh, i64 %i.jd, i1 false)
  %i.je = getelementptr inbounds i8, ptr %i.jc, i64 %i.jd ; 6 uses
  tail call void @free(ptr noundef nonnull %i.dh) #33
  %i.jf = icmp sgt i32 %i.di, -4
  br i1 %i.jf, label %.lr.ph.preheader.i.i, label %_ZL12stbiw__wpcrcPPhi.exit119

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i.i
  %i.jg = add nsw i32 %i.di, 4                    ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.jg to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.jh = icmp eq i32 %i.jg, 1
  br i1 %i.jh, label %.lr.ph.i.i114.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %.lr.ph.i.i114

.lr.ph.i.i114:                                    ; preds = %.lr.ph.i.i114, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i115 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i117.1, %.lr.ph.i.i114 ] ; 3 uses
  %.078.i.i116 = phi i32 [ -1, %.lr.ph.preheader.i.i.new ], [ %i.kc, %.lr.ph.i.i114 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i114 ]
  %i.ji = lshr i32 %.078.i.i116, 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jb, i64 %indvars.iv.i.i115
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !34
  %i.jl = zext i8 %i.jk to i32
  %i.jm = and i32 %.078.i.i116, 255
  %i.jn = xor i32 %i.jm, %i.jl
  %i.jo = zext nneg i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !24
  %i.jr = xor i32 %i.jq, %i.ji                    ; 2 uses
  %i.js = lshr i32 %i.jr, 8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jb, i64 %indvars.iv.i.i115
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 1
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !34
  %i.jw = zext i8 %i.jv to i32
  %i.jx = and i32 %i.jr, 255
  %i.jy = xor i32 %i.jx, %i.jw
  %i.jz = zext nneg i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.jz
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !24
  %i.kc = xor i32 %i.kb, %i.js                    ; 3 uses
  %indvars.iv.next.i.i117.1 = add nuw nsw i64 %indvars.iv.i.i115, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i114, !llvm.loop !229

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i.i114
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i114.epil.preheader

.lr.ph.i.i114.epil.preheader:                     ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i115.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i117.1, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.078.i.i116.epil.init = phi i32 [ -1, %.lr.ph.preheader.i.i ], [ %i.kc, %._crit_edge.loopexit.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod320 = trunc i32 %i.di to i1
  tail call void @llvm.assume(i1 %lcmp.mod320)
  %i.kd = lshr i32 %.078.i.i116.epil.init, 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jb, i64 %indvars.iv.i.i115.epil.init
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !34
  %i.kg = zext i8 %i.kf to i32
  %i.kh = and i32 %.078.i.i116.epil.init, 255
  %i.ki = xor i32 %i.kh, %i.kg
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !24
  %i.km = xor i32 %i.kl, %i.kd
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i114.epil.preheader
  %.lcssa = phi i32 [ %i.kc, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.km, %.lr.ph.i.i114.epil.preheader ]
  %i.kn = xor i32 %.lcssa, -1
  br label %_ZL12stbiw__wpcrcPPhi.exit119

_ZL12stbiw__wpcrcPPhi.exit119:                    ; preds = %.lr.ph.i.i, %._crit_edge.loopexit.i.i
  %.07.lcssa.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.kn, %._crit_edge.loopexit.i.i ] ; 4 uses
  %i.ko = lshr i32 %.07.lcssa.i.i, 24
  %i.kp = trunc nuw i32 %i.ko to i8
  store i8 %i.kp, ptr %i.je, align 1, !tbaa !34
  %i.kq = lshr i32 %.07.lcssa.i.i, 16
  %i.kr = trunc i32 %i.kq to i8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  store i8 %i.kr, ptr %i.ks, align 1, !tbaa !34
  %i.kt = lshr i32 %.07.lcssa.i.i, 8
  %i.ku = trunc i32 %i.kt to i8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.je, i64 2
  store i8 %i.ku, ptr %i.kv, align 1, !tbaa !34
  %i.kw = trunc i32 %.07.lcssa.i.i to i8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.je, i64 3
  store i8 %i.kw, ptr %i.kx, align 1, !tbaa !34
  %i.ky = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  %i.kz = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store i32 0, ptr %i.ky, align 1
  store <8 x i8> <i8 73, i8 69, i8 78, i8 68, i8 -82, i8 66, i8 96, i8 -126>, ptr %i.kz, align 1, !tbaa !34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge, %bb.a, %_ZL12stbiw__wpcrcPPhi.exit119, %bb.d
  %.099 = phi ptr [ %i.dl, %_ZL12stbiw__wpcrcPPhi.exit119 ], [ null, %._crit_edge ], [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.099
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL22stbiw__encode_png_linePhiiiiiiPa(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef nonnull writeonly captures(none) %7) unnamed_addr #9 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 7 uses
  %i.b = ptrtoaddr ptr %7 to i64                  ; 14 uses
  %.not = icmp eq i32 %4, 0
  %_ZZL22stbiw__encode_png_linePhiiiiiiPaE7mapping._ZZL22stbiw__encode_png_linePhiiiiiiPaE8firstmap = select i1 %.not, ptr @_ZZL22stbiw__encode_png_linePhiiiiiiPaE8firstmap, ptr @_ZZL22stbiw__encode_png_linePhiiiiiiPaE7mapping
  %i.c = sext i32 %6 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %_ZZL22stbiw__encode_png_linePhiiiiiiPaE7mapping._ZZL22stbiw__encode_png_linePhiiiiiiPaE8firstmap, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !24   ; 3 uses
  %i.f = load i32, ptr @stbi__flip_vertically_on_write, align 4, !tbaa !24
  %.not136 = icmp eq i32 %i.f, 0                  ; 2 uses
  %i.g = xor i32 %4, -1
  %i.h = add i32 %3, %i.g
  %i.i = select i1 %.not136, i32 %4, i32 %i.h
  %i.j = mul i32 %i.i, %1
  %i.k = sext i32 %i.j to i64                     ; 8 uses
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k ; 77 uses
  %i.m = sub nsw i32 0, %1
  %i.n = select i1 %.not136, i32 %1, i32 %i.m     ; 4 uses
  %i.o = icmp eq i32 %i.e, 0
  br i1 %i.o, label %bb.b, label %.preheader160

.preheader160:                                    ; preds = %bb.a
  %i.p = icmp sgt i32 %5, 0
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader160
  %i.q = sext i32 %i.n to i64                     ; 3 uses
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.r = mul nsw i32 %5, %2
  %i.s = sext i32 %i.r to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %7, ptr align 1 %i.l, i64 %i.s, i1 false)
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 11 uses
  switch i32 %i.e, label %bb.i [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.u = load i8, ptr %i.t, align 1, !tbaa !34
  br label %.sink.split

bb.d:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.w = load i8, ptr %i.v, align 1, !tbaa !34
  %i.x = sub nsw i64 %indvars.iv, %i.q
  %i.y = getelementptr inbounds i8, ptr %i.l, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !34
  %i.aa = sub i8 %i.w, %i.z
  br label %.sink.split

bb.e:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !34
  %i.ad = sub nsw i64 %indvars.iv, %i.q
  %i.ae = getelementptr inbounds i8, ptr %i.l, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !34
  %i.ag = lshr i8 %i.af, 1
  %i.ah = sub i8 %i.ac, %i.ag
  br label %.sink.split

bb.f:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !34
  %i.ak = sub nsw i64 %indvars.iv, %i.q
  %i.al = getelementptr inbounds i8, ptr %i.l, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !34
  %i.an = sub i8 %i.aj, %i.am
  br label %.sink.split

bb.g:                                             ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !34
  br label %.sink.split

bb.h:                                             ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !34
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink = phi i8 [ %i.u, %bb.c ], [ %i.aa, %bb.d ], [ %i.ah, %bb.e ], [ %i.an, %bb.f ], [ %i.ap, %bb.g ], [ %i.ar, %bb.h ]
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv
  store i8 %.sink, ptr %i.as, align 1, !tbaa !34
  br label %bb.i
end_hunk_0
begin_hunk_1_@_ZL14stbiw__outfileP19stbi__write_contextiiiiiiPviiPKcz:bb.a
  br i1 %.not30.us.i, label %_ZL19stbiw__write_pixelsP19stbi__write_contextiiiiiPviii.exit, label %.preheader.us.i, !llvm.loop !711

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %.132.i = phi i32 [ %i.dt, %.preheader.i ], [ %.026.i, %bb.c ]
  %i.dr = load ptr, ptr %0, align 8, !tbaa !76
  %i.ds = load ptr, ptr %i.i, align 8, !tbaa !77
  call void %i.dr(ptr noundef %i.ds, ptr noundef nonnull %i.d, i32 noundef range(i32 0, 4) %9), !inline_history !710
  %i.dt = add nsw i32 %.132.i, %spec.select.i     ; 2 uses
  %.not30.i = icmp eq i32 %i.dt, %.025.i
  br i1 %.not30.i, label %_ZL19stbiw__write_pixelsP19stbi__write_contextiiiiiPviii.exit, label %.preheader.i, !llvm.loop !711

_ZL19stbiw__write_pixelsP19stbi__write_contextiiiiiPviii.exit: ; preds = %._crit_edge.split.us40.i, %._crit_edge.split.us.us.us.split.split.split.us.us.i, %._crit_edge.split.us.us.us.split.split.us.us.i, %._crit_edge.split.us.us.us.split.us.us.split.split.us.us.i, %._crit_edge.split.us.us.us.split.us.us.split.us.split.us.us.us.i, %.preheader.us.us.us63.i, %.preheader.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZL19stbiw__write_pixelsP19stbi__write_contextiiiiiPviii.exit
  %.0 = phi i32 [ 1, %_ZL19stbiw__write_pixelsP19stbi__write_contextiiiiiPviii.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #30

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL14stbiw__writefvP19stbi__write_contextPKcP13__va_list_tag(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [2 x i8], align 2                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = load i8, ptr %1, align 1, !tbaa !34      ; 2 uses
  %.not20 = icmp eq i8 %i.d, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %i.h = phi i8 [ %i.d, %.lr.ph ], [ %i.av, %bb.o ]
  %.021 = phi ptr [ %1, %.lr.ph ], [ %i.i, %bb.o ]
  %i.i = getelementptr inbounds nuw i8, ptr %.021, i64 1 ; 2 uses
  switch i8 %i.h, label %._crit_edge [
    i8 32, label %bb.o
    i8 49, label %bb.c
    i8 50, label %bb.g
    i8 52, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.j = load i32, ptr %2, align 8                ; 3 uses
  %i.k = icmp ult i32 %i.j, 41
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.f, align 8
  %i.m = zext nneg i32 %i.j to i64
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  %i.o = add nuw nsw i32 %i.j, 8
  store i32 %i.o, ptr %2, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8
  store ptr %i.q, ptr %i.e, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = phi ptr [ %i.n, %bb.d ], [ %i.p, %bb.e ]
  %i.s = load i32, ptr %i.r, align 4, !tbaa !24
  %i.t = trunc i32 %i.s to i8
  store i8 %i.t, ptr %i.a, align 1, !tbaa !34
  %i.u = load ptr, ptr %0, align 8, !tbaa !76
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !77
  call void %i.u(ptr noundef %i.v, ptr noundef nonnull %i.a, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.o

bb.g:                                             ; preds = %bb.b
  %i.w = load i32, ptr %2, align 8                ; 3 uses
  %i.x = icmp ult i32 %i.w, 41
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.f, align 8
  %i.z = zext nneg i32 %i.w to i64
  %i.aa = getelementptr i8, ptr %i.y, i64 %i.z
  %i.ab = add nuw nsw i32 %i.w, 8
  store i32 %i.ab, ptr %2, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  store ptr %i.ad, ptr %i.e, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ae = phi ptr [ %i.aa, %bb.h ], [ %i.ac, %bb.i ]
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.ag = trunc i32 %i.af to i16
  store i16 %i.ag, ptr %i.b, align 2
  %i.ah = load ptr, ptr %0, align 8, !tbaa !76
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !77
  call void %i.ah(ptr noundef %i.ai, ptr noundef nonnull %i.b, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %bb.o

bb.k:                                             ; preds = %bb.b
  %i.aj = load i32, ptr %2, align 8               ; 3 uses
  %i.ak = icmp ult i32 %i.aj, 41
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %i.f, align 8
  %i.am = zext nneg i32 %i.aj to i64
  %i.an = getelementptr i8, ptr %i.al, i64 %i.am
  %i.ao = add nuw nsw i32 %i.aj, 8
  store i32 %i.ao, ptr %2, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  store ptr %i.aq, ptr %i.e, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ar = phi ptr [ %i.an, %bb.l ], [ %i.ap, %bb.m ]
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i32 %i.as, ptr %i.c, align 4
  %i.at = load ptr, ptr %0, align 8, !tbaa !76
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !77
  call void %i.at(ptr noundef %i.au, ptr noundef nonnull %i.c, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j, %bb.f, %bb.b
  %i.av = load i8, ptr %i.i, align 1, !tbaa !34   ; 2 uses
  %.not = icmp eq i8 %i.av, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !713

._crit_edge:                                      ; preds = %bb.o, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #30

; Function Attrs: mustprogress nofree nounwind uwtable
define internal void @_ZL17stbi__stdio_writePvS_i(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #12 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %i.a, ptr noundef %0) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL13stbiw__writefP19stbi__write_contextPKcz(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree readnone captures(none) %1, ...) unnamed_addr #4 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.va_start.p0(ptr nonnull %2)
  call fastcc void @_ZL14stbiw__writefvP19stbi__write_contextPKcP13__va_list_tag(ptr noundef %0, ptr noundef nonnull @.str.106, ptr noundef %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { float, i32 } @llvm.frexp.f32.i32(float) #26

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL20stbiw__jpg_processDUP19stbi__write_contextPiS1_PfS2_iPA2_KtS5_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7) unnamed_addr #4 {
vector.ph:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = alloca i8, align 1                       ; 4 uses
  %i.o = alloca i8, align 1                       ; 4 uses
  %i.p = alloca i8, align 1                       ; 4 uses
  %i.q = alloca [64 x i32], align 16              ; 69 uses
  %i.r = load i16, ptr %7, align 2, !tbaa !41     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !41   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 960
  %i.v = load i16, ptr %i.u, align 2, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 962
  %i.x = load i16, ptr %i.w, align 2, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #33
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl nuw i64 %index, 3                    ; 4 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.y ; 9 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.y ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.y ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.y ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 68
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 100
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 44
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 76
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 108
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aa, i64 52
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 84
  %i.az = getelementptr inbounds nuw i8, ptr %i.ae, i64 116
  %i.ba = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aa, i64 60
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 92
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 124
  %i.bi = load float, ptr %i.z, align 4, !tbaa !55
  %i.bj = load float, ptr %i.ab, align 4, !tbaa !55
  %i.bk = load float, ptr %i.ad, align 4, !tbaa !55
  %i.bl = load float, ptr %i.af, align 4, !tbaa !55
  %i.bm = insertelement <4 x float> poison, float %i.bi, i64 0
  %i.bn = insertelement <4 x float> %i.bm, float %i.bj, i64 1
  %i.bo = insertelement <4 x float> %i.bn, float %i.bk, i64 2
  %i.bp = insertelement <4 x float> %i.bo, float %i.bl, i64 3 ; 2 uses
  %i.bq = load float, ptr %i.ag, align 4, !tbaa !55
  %i.br = load float, ptr %i.ah, align 4, !tbaa !55
  %i.bs = load float, ptr %i.ai, align 4, !tbaa !55
  %i.bt = load float, ptr %i.aj, align 4, !tbaa !55
  %i.bu = insertelement <4 x float> poison, float %i.bq, i64 0
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 1
  %i.bw = insertelement <4 x float> %i.bv, float %i.bs, i64 2
  %i.bx = insertelement <4 x float> %i.bw, float %i.bt, i64 3 ; 2 uses
  %i.by = load float, ptr %i.ak, align 4, !tbaa !55
  %i.bz = load float, ptr %i.al, align 4, !tbaa !55
  %i.ca = load float, ptr %i.am, align 4, !tbaa !55
  %i.cb = load float, ptr %i.an, align 4, !tbaa !55
  %i.cc = insertelement <4 x float> poison, float %i.by, i64 0
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 1
  %i.ce = insertelement <4 x float> %i.cd, float %i.ca, i64 2
  %i.cf = insertelement <4 x float> %i.ce, float %i.cb, i64 3 ; 2 uses
  %i.cg = load float, ptr %i.ao, align 4, !tbaa !55
  %i.ch = load float, ptr %i.ap, align 4, !tbaa !55
  %i.ci = load float, ptr %i.aq, align 4, !tbaa !55
  %i.cj = load float, ptr %i.ar, align 4, !tbaa !55
  %i.ck = insertelement <4 x float> poison, float %i.cg, i64 0
  %i.cl = insertelement <4 x float> %i.ck, float %i.ch, i64 1
  %i.cm = insertelement <4 x float> %i.cl, float %i.ci, i64 2
  %i.cn = insertelement <4 x float> %i.cm, float %i.cj, i64 3 ; 2 uses
  %i.co = load float, ptr %i.as, align 4, !tbaa !55
  %i.cp = load float, ptr %i.at, align 4, !tbaa !55
  %i.cq = load float, ptr %i.au, align 4, !tbaa !55
  %i.cr = load float, ptr %i.av, align 4, !tbaa !55
  %i.cs = insertelement <4 x float> poison, float %i.co, i64 0
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 1
  %i.cu = insertelement <4 x float> %i.ct, float %i.cq, i64 2
  %i.cv = insertelement <4 x float> %i.cu, float %i.cr, i64 3 ; 2 uses
  %i.cw = load float, ptr %i.aw, align 4, !tbaa !55
  %i.cx = load float, ptr %i.ax, align 4, !tbaa !55
  %i.cy = load float, ptr %i.ay, align 4, !tbaa !55
  %i.cz = load float, ptr %i.az, align 4, !tbaa !55
  %i.da = insertelement <4 x float> poison, float %i.cw, i64 0
  %i.db = insertelement <4 x float> %i.da, float %i.cx, i64 1
  %i.dc = insertelement <4 x float> %i.db, float %i.cy, i64 2
  %i.dd = insertelement <4 x float> %i.dc, float %i.cz, i64 3 ; 2 uses
  %i.de = load float, ptr %i.ba, align 4, !tbaa !55
  %i.df = load float, ptr %i.bb, align 4, !tbaa !55
  %i.dg = load float, ptr %i.bc, align 4, !tbaa !55
  %i.dh = load float, ptr %i.bd, align 4, !tbaa !55
  %i.di = insertelement <4 x float> poison, float %i.de, i64 0
  %i.dj = insertelement <4 x float> %i.di, float %i.df, i64 1
  %i.dk = insertelement <4 x float> %i.dj, float %i.dg, i64 2
  %i.dl = insertelement <4 x float> %i.dk, float %i.dh, i64 3 ; 2 uses
  %i.dm = load float, ptr %i.be, align 4, !tbaa !55
  %i.dn = load float, ptr %i.bf, align 4, !tbaa !55
  %i.do = load float, ptr %i.bg, align 4, !tbaa !55
  %i.dp = load float, ptr %i.bh, align 4, !tbaa !55
  %i.dq = insertelement <4 x float> poison, float %i.dm, i64 0
  %i.dr = insertelement <4 x float> %i.dq, float %i.dn, i64 1
  %i.ds = insertelement <4 x float> %i.dr, float %i.do, i64 2
  %i.dt = insertelement <4 x float> %i.ds, float %i.dp, i64 3 ; 2 uses
  %i.du = fadd <4 x float> %i.bp, %i.dt           ; 2 uses
  %i.dv = fsub <4 x float> %i.bp, %i.dt           ; 3 uses
  %i.dw = fadd <4 x float> %i.bx, %i.dl           ; 2 uses
  %i.dx = fsub <4 x float> %i.bx, %i.dl           ; 2 uses
  %i.dy = fadd <4 x float> %i.cf, %i.dd           ; 2 uses
  %i.dz = fsub <4 x float> %i.cf, %i.dd           ; 2 uses
  %i.ea = fadd <4 x float> %i.cn, %i.cv           ; 2 uses
  %i.eb = fsub <4 x float> %i.cn, %i.cv
  %i.ec = fadd <4 x float> %i.ea, %i.du           ; 2 uses
  %i.ed = fsub <4 x float> %i.du, %i.ea           ; 3 uses
  %i.ee = fadd <4 x float> %i.dy, %i.dw           ; 2 uses
  %i.ef = fsub <4 x float> %i.dw, %i.dy
  %i.eg = fsub <4 x float> %i.ec, %i.ee
  %i.eh = fadd <4 x float> %i.ef, %i.ed
  %i.ei = fmul <4 x float> %i.eh, splat (float f0x3F3504F3) ; 2 uses
  %i.ej = fadd <4 x float> %i.ed, %i.ei
  %i.ek = fadd <4 x float> %i.eb, %i.dz           ; 2 uses
  %i.el = fadd <4 x float> %i.dz, %i.dx
  %i.em = fadd <4 x float> %i.dx, %i.dv           ; 2 uses
  %i.en = fsub <4 x float> %i.ek, %i.em
  %i.eo = fmul <4 x float> %i.en, splat (float f0x3EC3EF15) ; 2 uses
  %i.ep = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ek, <4 x float> splat (float f0x3F0A8BD4), <4 x float> %i.eo) ; 2 uses
  %i.eq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.em, <4 x float> splat (float f0x3FA73D75), <4 x float> %i.eo) ; 2 uses
  %i.er = fmul <4 x float> %i.el, splat (float f0x3F3504F3) ; 2 uses
  %i.es = fadd <4 x float> %i.dv, %i.er           ; 2 uses
  %i.et = fsub <4 x float> %i.dv, %i.er           ; 2 uses
  %i.eu = fadd <4 x float> %i.et, %i.ep
  %i.ev = fsub <4 x float> %i.et, %i.ep
  %i.ew = shufflevector <4 x float> %i.ee, <4 x float> %i.es, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ex = shufflevector <4 x float> %i.ec, <4 x float> %i.eq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ey = fadd <8 x float> %i.ew, %i.ex
  %i.ez = shufflevector <4 x float> %i.ej, <4 x float> %i.ev, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fa = shufflevector <4 x float> %i.eg, <4 x float> %i.eu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fb = shufflevector <4 x float> %i.ed, <4 x float> %i.es, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fc = shufflevector <4 x float> %i.ei, <4 x float> %i.eq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fd = fsub <8 x float> %i.fb, %i.fc
  %i.fe = shufflevector <8 x float> %i.ey, <8 x float> %i.ez, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ff = shufflevector <8 x float> %i.fa, <8 x float> %i.fd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.fe, <16 x float> %i.ff, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.z, align 4, !tbaa !55
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fg = icmp eq i64 %index.next, 8
  br i1 %i.fg, label %vector.body328, label %vector.body, !llvm.loop !714

vector.body328:                                   ; preds = %vector.body
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 224 ; 2 uses
  %wide.load = load <4 x float>, ptr %3, align 4, !tbaa !55 ; 2 uses
  %wide.load330 = load <4 x float>, ptr %i.fh, align 4, !tbaa !55 ; 2 uses
  %wide.load331 = load <4 x float>, ptr %i.fi, align 4, !tbaa !55 ; 2 uses
  %wide.load332 = load <4 x float>, ptr %i.fj, align 4, !tbaa !55 ; 2 uses
  %wide.load333 = load <4 x float>, ptr %i.fk, align 4, !tbaa !55 ; 2 uses
  %wide.load334 = load <4 x float>, ptr %i.fl, align 4, !tbaa !55 ; 2 uses
  %wide.load335 = load <4 x float>, ptr %i.fm, align 4, !tbaa !55 ; 2 uses
  %wide.load336 = load <4 x float>, ptr %i.fn, align 4, !tbaa !55 ; 2 uses
  %i.fo = fadd <4 x float> %wide.load, %wide.load336 ; 2 uses
  %i.fp = fsub <4 x float> %wide.load, %wide.load336 ; 3 uses
  %i.fq = fadd <4 x float> %wide.load330, %wide.load335 ; 2 uses
  %i.fr = fsub <4 x float> %wide.load330, %wide.load335 ; 2 uses
  %i.fs = fadd <4 x float> %wide.load331, %wide.load334 ; 2 uses
  %i.ft = fsub <4 x float> %wide.load331, %wide.load334 ; 2 uses
  %i.fu = fadd <4 x float> %wide.load332, %wide.load333 ; 2 uses
  %i.fv = fsub <4 x float> %wide.load332, %wide.load333
  %i.fw = fadd <4 x float> %i.fu, %i.fo           ; 2 uses
  %i.fx = fsub <4 x float> %i.fo, %i.fu           ; 3 uses
  %i.fy = fadd <4 x float> %i.fs, %i.fq           ; 2 uses
  %i.fz = fsub <4 x float> %i.fq, %i.fs
  %i.ga = fadd <4 x float> %i.fy, %i.fw
  %i.gb = fsub <4 x float> %i.fw, %i.fy
  %i.gc = fadd <4 x float> %i.fz, %i.fx
  %i.gd = fmul <4 x float> %i.gc, splat (float f0x3F3504F3) ; 2 uses
  %i.ge = fadd <4 x float> %i.fx, %i.gd
  %i.gf = fsub <4 x float> %i.fx, %i.gd
  %i.gg = fadd <4 x float> %i.fv, %i.ft           ; 2 uses
  %i.gh = fadd <4 x float> %i.ft, %i.fr
  %i.gi = fadd <4 x float> %i.fr, %i.fp           ; 2 uses
  %i.gj = fsub <4 x float> %i.gg, %i.gi
  %i.gk = fmul <4 x float> %i.gj, splat (float f0x3EC3EF15) ; 2 uses
  %i.gl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gg, <4 x float> splat (float f0x3F0A8BD4), <4 x float> %i.gk) ; 2 uses
  %i.gm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gi, <4 x float> splat (float f0x3FA73D75), <4 x float> %i.gk) ; 2 uses
  %i.gn = fmul <4 x float> %i.gh, splat (float f0x3F3504F3) ; 2 uses
  %i.go = fadd <4 x float> %i.fp, %i.gn           ; 2 uses
  %i.gp = fsub <4 x float> %i.fp, %i.gn           ; 2 uses
  %i.gq = fadd <4 x float> %i.gp, %i.gl
  store <4 x float> %i.gq, ptr %i.fl, align 4, !tbaa !55
  %i.gr = fsub <4 x float> %i.gp, %i.gl
  store <4 x float> %i.gr, ptr %i.fj, align 4, !tbaa !55
  %i.gs = fadd <4 x float> %i.go, %i.gm
  store <4 x float> %i.gs, ptr %i.fh, align 4, !tbaa !55
  %i.gt = fsub <4 x float> %i.go, %i.gm
  store <4 x float> %i.gt, ptr %i.fn, align 4, !tbaa !55
  store <4 x float> %i.ga, ptr %3, align 4, !tbaa !55
  store <4 x float> %i.ge, ptr %i.fi, align 4, !tbaa !55
  store <4 x float> %i.gb, ptr %i.fk, align 4, !tbaa !55
  store <4 x float> %i.gf, ptr %i.fm, align 4, !tbaa !55
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 176 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 2 uses
  %wide.load.1 = load <4 x float>, ptr %i.gu, align 4, !tbaa !55 ; 2 uses
  %wide.load330.1 = load <4 x float>, ptr %i.gv, align 4, !tbaa !55 ; 2 uses
  %wide.load331.1 = load <4 x float>, ptr %i.gw, align 4, !tbaa !55 ; 2 uses
  %wide.load332.1 = load <4 x float>, ptr %i.gx, align 4, !tbaa !55 ; 2 uses
  %wide.load333.1 = load <4 x float>, ptr %i.gy, align 4, !tbaa !55 ; 2 uses
  %wide.load334.1 = load <4 x float>, ptr %i.gz, align 4, !tbaa !55 ; 2 uses
  %wide.load335.1 = load <4 x float>, ptr %i.ha, align 4, !tbaa !55 ; 2 uses
  %wide.load336.1 = load <4 x float>, ptr %i.hb, align 4, !tbaa !55 ; 2 uses
  %i.hc = fadd <4 x float> %wide.load.1, %wide.load336.1 ; 2 uses
  %i.hd = fsub <4 x float> %wide.load.1, %wide.load336.1 ; 3 uses
  %i.he = fadd <4 x float> %wide.load330.1, %wide.load335.1 ; 2 uses
  %i.hf = fsub <4 x float> %wide.load330.1, %wide.load335.1 ; 2 uses
  %i.hg = fadd <4 x float> %wide.load331.1, %wide.load334.1 ; 2 uses
  %i.hh = fsub <4 x float> %wide.load331.1, %wide.load334.1 ; 2 uses
  %i.hi = fadd <4 x float> %wide.load332.1, %wide.load333.1 ; 2 uses
  %i.hj = fsub <4 x float> %wide.load332.1, %wide.load333.1
  %i.hk = fadd <4 x float> %i.hi, %i.hc           ; 2 uses
  %i.hl = fsub <4 x float> %i.hc, %i.hi           ; 3 uses
  %i.hm = fadd <4 x float> %i.hg, %i.he           ; 2 uses
  %i.hn = fsub <4 x float> %i.he, %i.hg
  %i.ho = fadd <4 x float> %i.hm, %i.hk
  %i.hp = fsub <4 x float> %i.hk, %i.hm
  %i.hq = fadd <4 x float> %i.hn, %i.hl
  %i.hr = fmul <4 x float> %i.hq, splat (float f0x3F3504F3) ; 2 uses
  %i.hs = fadd <4 x float> %i.hl, %i.hr
  %i.ht = fsub <4 x float> %i.hl, %i.hr
  %i.hu = fadd <4 x float> %i.hj, %i.hh           ; 2 uses
  %i.hv = fadd <4 x float> %i.hh, %i.hf
  %i.hw = fadd <4 x float> %i.hf, %i.hd           ; 2 uses
  %i.hx = fsub <4 x float> %i.hu, %i.hw
  %i.hy = fmul <4 x float> %i.hx, splat (float f0x3EC3EF15) ; 2 uses
  %i.hz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hu, <4 x float> splat (float f0x3F0A8BD4), <4 x float> %i.hy) ; 2 uses
  %i.ia = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hw, <4 x float> splat (float f0x3FA73D75), <4 x float> %i.hy) ; 2 uses
  %i.ib = fmul <4 x float> %i.hv, splat (float f0x3F3504F3) ; 2 uses
  %i.ic = fadd <4 x float> %i.hd, %i.ib           ; 2 uses
  %i.id = fsub <4 x float> %i.hd, %i.ib           ; 2 uses
  %i.ie = fadd <4 x float> %i.id, %i.hz
  store <4 x float> %i.ie, ptr %i.gz, align 4, !tbaa !55
  %i.if = fsub <4 x float> %i.id, %i.hz
  store <4 x float> %i.if, ptr %i.gx, align 4, !tbaa !55
  %i.ig = fadd <4 x float> %i.ic, %i.ia
  store <4 x float> %i.ig, ptr %i.gv, align 4, !tbaa !55
  %i.ih = fsub <4 x float> %i.ic, %i.ia
  store <4 x float> %i.ih, ptr %i.hb, align 4, !tbaa !55
  store <4 x float> %i.ho, ptr %i.gu, align 4, !tbaa !55
  store <4 x float> %i.hs, ptr %i.gw, align 4, !tbaa !55
  store <4 x float> %i.hp, ptr %i.gy, align 4, !tbaa !55
  store <4 x float> %i.ht, ptr %i.ha, align 4, !tbaa !55
  br label %.preheader213

.preheader213:                                    ; preds = %.preheader213, %vector.body328
  %indvars.iv261 = phi i64 [ 0, %vector.body328 ], [ %indvars.iv.next262.1, %.preheader213 ] ; 5 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv261
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !55
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv261
  %i.il = load float, ptr %i.ik, align 4, !tbaa !55
  %i.im = fmul float %i.ij, %i.il                 ; 2 uses
  %i.in = fcmp olt float %i.im, 0.000000e+00
  %.v = select i1 %i.in, float -5.000000e-01, float 5.000000e-01
  %i.io = fadd float %i.im, %.v
  %i.ip = fptosi float %i.io to i32
  %i.iq = getelementptr inbounds nuw i8, ptr @_ZL17stbiw__jpg_ZigZag, i64 %indvars.iv261
  %i.ir = load i8, ptr %i.iq, align 2, !tbaa !34
  %i.is = zext i8 %i.ir to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.is
  store i32 %i.ip, ptr %i.it, align 4, !tbaa !24
  %indvars.iv.next262 = or disjoint i64 %indvars.iv261, 1 ; 3 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next262
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !55
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next262
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !55
  %i.iy = fmul float %i.iv, %i.ix                 ; 2 uses
  %i.iz = fcmp olt float %i.iy, 0.000000e+00
  %.v.1 = select i1 %i.iz, float -5.000000e-01, float 5.000000e-01
  %i.ja = fadd float %i.iy, %.v.1
  %i.jb = fptosi float %i.ja to i32
  %i.jc = getelementptr inbounds nuw i8, ptr @_ZL17stbiw__jpg_ZigZag, i64 %indvars.iv.next262
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !34
  %i.je = zext i8 %i.jd to i64
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.je
  store i32 %i.jb, ptr %i.jf, align 4, !tbaa !24
  %indvars.iv.next262.1 = add nuw nsw i64 %indvars.iv261, 2 ; 2 uses
  %exitcond264.not.1 = icmp eq i64 %indvars.iv.next262.1, 64
  br i1 %exitcond264.not.1, label %bb.a, label %.preheader213, !llvm.loop !715

bb.a:                                             ; preds = %.preheader213
  %i.jg = load i32, ptr %i.q, align 16, !tbaa !24 ; 3 uses
  %i.jh = icmp eq i32 %i.jg, %5
  br i1 %i.jh, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.val127 = load i16, ptr %6, align 2, !tbaa !41
  %i.ji = getelementptr i8, ptr %6, i64 2
  %.val128 = load i16, ptr %i.ji, align 2, !tbaa !41
  %i.jj = load i32, ptr %1, align 4, !tbaa !24
  %i.jk = load i32, ptr %2, align 4, !tbaa !24
  %i.jl = zext i16 %.val128 to i32
  %i.jm = add nsw i32 %i.jk, %i.jl                ; 4 uses
  %i.jn = zext i16 %.val127 to i32
  %i.jo = sub nsw i32 24, %i.jm
  %i.jp = shl i32 %i.jn, %i.jo
  %i.jq = or i32 %i.jp, %i.jj                     ; 2 uses
  %i.jr = icmp sgt i32 %i.jm, 7
  br i1 %i.jr, label %.lr.ph.i, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.js = getelementptr i8, ptr %0, i64 8         ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.02.i = phi i32 [ %i.jm, %.lr.ph.i ], [ %i.jy, %bb.e ] ; 2 uses
  %.0181.i = phi i32 [ %i.jq, %.lr.ph.i ], [ %i.jx, %bb.e ] ; 3 uses
  %i.jt = lshr i32 %.0181.i, 16
  %i.ju = trunc i32 %i.jt to i8
  %.val20.i = load ptr, ptr %0, align 8, !tbaa !76
  %.val21.i = load ptr, ptr %i.js, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 %i.ju, ptr %i.p, align 1, !tbaa !34
  call void %.val20.i(ptr noundef %.val21.i, ptr noundef nonnull %i.p, i32 noundef 1), !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.jv = and i32 %.0181.i, 16711680
  %i.jw = icmp eq i32 %i.jv, 16711680
  br i1 %i.jw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %0, align 8, !tbaa !76
  %.val19.i = load ptr, ptr %i.js, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i8 0, ptr %i.o, align 1, !tbaa !34
  call void %.val.i(ptr noundef %.val19.i, ptr noundef nonnull %i.o, i32 noundef 1), !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.jx = shl i32 %.0181.i, 8                     ; 2 uses
  %i.jy = add nsw i32 %.02.i, -8                  ; 2 uses
  %i.jz = icmp sgt i32 %.02.i, 15
  br i1 %i.jz, label %bb.c, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit, !llvm.loop !5

bb.f:                                             ; preds = %bb.a
  %i.ka = sub nsw i32 %i.jg, %5                   ; 3 uses
  %i.kb = tail call i32 @llvm.abs.i32(i32 %i.ka, i1 true)
  %i.kc = lshr i32 %i.kb, 1
  %i.kd = tail call range(i32 2, 33) i32 @llvm.ctlz.i32(i32 %i.kc, i1 false)
  %i.ke = trunc nuw nsw i32 %i.kd to i16
  %i.kf = sub nuw nsw i16 33, %i.ke               ; 2 uses
  %.lobit.i = ashr i32 %i.ka, 31
  %i.kg = add nsw i32 %.lobit.i, %i.ka
  %i.kh = zext nneg i16 %i.kf to i32              ; 2 uses
  %notmask.i = shl nsw i32 -1, %i.kh
  %i.ki = xor i32 %notmask.i, -1
  %i.kj = zext nneg i16 %i.kf to i64
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.kj ; 2 uses
  %.val125 = load i16, ptr %i.kk, align 2, !tbaa !41
  %i.kl = getelementptr i8, ptr %i.kk, i64 2
  %.val126 = load i16, ptr %i.kl, align 2, !tbaa !41
  %i.km = load i32, ptr %1, align 4, !tbaa !24
  %i.kn = load i32, ptr %2, align 4, !tbaa !24
  %i.ko = zext i16 %.val126 to i32
  %i.kp = add nsw i32 %i.kn, %i.ko                ; 4 uses
  %i.kq = zext i16 %.val125 to i32
  %i.kr = sub nsw i32 24, %i.kp
  %i.ks = shl i32 %i.kq, %i.kr
  %i.kt = or i32 %i.ks, %i.km                     ; 2 uses
  %i.ku = icmp sgt i32 %i.kp, 7
  br i1 %i.ku, label %.lr.ph.i131, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit138

.lr.ph.i131:                                      ; preds = %bb.f
  %i.kv = getelementptr i8, ptr %0, i64 8         ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i131
  %.02.i132 = phi i32 [ %i.kp, %.lr.ph.i131 ], [ %i.lb, %bb.i ] ; 2 uses
  %.0181.i133 = phi i32 [ %i.kt, %.lr.ph.i131 ], [ %i.la, %bb.i ] ; 3 uses
  %i.kw = lshr i32 %.0181.i133, 16
  %i.kx = trunc i32 %i.kw to i8
  %.val20.i134 = load ptr, ptr %0, align 8, !tbaa !76
  %.val21.i135 = load ptr, ptr %i.kv, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i8 %i.kx, ptr %i.n, align 1, !tbaa !34
  call void %.val20.i134(ptr noundef %.val21.i135, ptr noundef nonnull %i.n, i32 noundef 1), !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ky = and i32 %.0181.i133, 16711680
  %i.kz = icmp eq i32 %i.ky, 16711680
  br i1 %i.kz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.val.i136 = load ptr, ptr %0, align 8, !tbaa !76
  %.val19.i137 = load ptr, ptr %i.kv, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i8 0, ptr %i.m, align 1, !tbaa !34
  call void %.val.i136(ptr noundef %.val19.i137, ptr noundef nonnull %i.m, i32 noundef 1), !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.la = shl i32 %.0181.i133, 8                  ; 2 uses
  %i.lb = add nsw i32 %.02.i132, -8               ; 2 uses
  %i.lc = icmp sgt i32 %.02.i132, 15
  br i1 %i.lc, label %bb.g, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit138, !llvm.loop !5

_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit138: ; preds = %bb.i, %bb.f
  %.018.lcssa.i129 = phi i32 [ %i.kt, %bb.f ], [ %i.la, %bb.i ]
  %.0.lcssa.i130 = phi i32 [ %i.kp, %bb.f ], [ %i.lb, %bb.i ] ; 2 uses
  store i32 %.018.lcssa.i129, ptr %1, align 4, !tbaa !24
  store i32 %.0.lcssa.i130, ptr %2, align 4, !tbaa !24
  %i.ld = load i32, ptr %1, align 4, !tbaa !24
  %i.le = add nsw i32 %.0.lcssa.i130, %i.kh       ; 4 uses
  %i.lf = and i32 %i.kg, 65535
  %i.lg = and i32 %i.lf, %i.ki
  %i.lh = sub nsw i32 24, %i.le
  %i.li = shl i32 %i.lg, %i.lh
  %i.lj = or i32 %i.li, %i.ld                     ; 2 uses
  %i.lk = icmp sgt i32 %i.le, 7
  br i1 %i.lk, label %.lr.ph.i141, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit

.lr.ph.i141:                                      ; preds = %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit138
  %i.ll = getelementptr i8, ptr %0, i64 8         ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph.i141
  %.02.i142 = phi i32 [ %i.le, %.lr.ph.i141 ], [ %i.lr, %bb.l ] ; 2 uses
  %.0181.i143 = phi i32 [ %i.lj, %.lr.ph.i141 ], [ %i.lq, %bb.l ] ; 3 uses
  %i.lm = lshr i32 %.0181.i143, 16
  %i.ln = trunc i32 %i.lm to i8
  %.val20.i144 = load ptr, ptr %0, align 8, !tbaa !76
  %.val21.i145 = load ptr, ptr %i.ll, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 %i.ln, ptr %i.l, align 1, !tbaa !34
  call void %.val20.i144(ptr noundef %.val21.i145, ptr noundef nonnull %i.l, i32 noundef 1), !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.lo = and i32 %.0181.i143, 16711680
  %i.lp = icmp eq i32 %i.lo, 16711680
  br i1 %i.lp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.val.i146 = load ptr, ptr %0, align 8, !tbaa !76
  %.val19.i147 = load ptr, ptr %i.ll, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i8 0, ptr %i.k, align 1, !tbaa !34
  call void %.val.i146(ptr noundef %.val19.i147, ptr noundef nonnull %i.k, i32 noundef 1), !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.lq = shl i32 %.0181.i143, 8                  ; 2 uses
  %i.lr = add nsw i32 %.02.i142, -8               ; 2 uses
  %i.ls = icmp sgt i32 %.02.i142, 15
  br i1 %i.ls, label %bb.j, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit, !llvm.loop !5

_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit: ; preds = %bb.l, %bb.e, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit138, %bb.b
  %storemerge210 = phi i32 [ %i.jx, %bb.e ], [ %i.jq, %bb.b ], [ %i.lj, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit138 ], [ %i.lq, %bb.l ]
  %i.lt = phi i32 [ %i.jy, %bb.e ], [ %i.jm, %bb.b ], [ %i.le, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit138 ], [ %i.lr, %bb.l ] ; 3 uses
  store i32 %storemerge210, ptr %1, align 4, !tbaa !24
  store i32 %i.lt, ptr %2, align 4, !tbaa !24
  %i.lu = getelementptr inbounds nuw i8, ptr %i.q, i64 252
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !24
  %.not = icmp eq i32 %i.lv, 0                    ; 2 uses
  br i1 %.not, label %bb.m, label %.preheader.lr.ph

bb.m:                                             ; preds = %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit
  %i.lw = getelementptr inbounds nuw i8, ptr %i.q, i64 248
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !24
  %i.ly = icmp eq i32 %i.lx, 0
  br i1 %i.ly, label %bb.n, label %.preheader.lr.ph

bb.n:                                             ; preds = %bb.m
  %i.lz = getelementptr inbounds nuw i8, ptr %i.q, i64 244
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !24
  %i.mb = icmp eq i32 %i.ma, 0
  br i1 %i.mb, label %bb.o, label %.preheader.lr.ph

bb.o:                                             ; preds = %bb.n
  %i.mc = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  %i.md = load i32, ptr %i.mc, align 16, !tbaa !24
  %i.me = icmp eq i32 %i.md, 0
  br i1 %i.me, label %bb.p, label %.preheader.lr.ph

bb.p:                                             ; preds = %bb.o
  %i.mf = getelementptr inbounds nuw i8, ptr %i.q, i64 236
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !24
  %i.mh = icmp eq i32 %i.mg, 0
  br i1 %i.mh, label %bb.q, label %.preheader.lr.ph

bb.q:                                             ; preds = %bb.p
  %i.mi = getelementptr inbounds nuw i8, ptr %i.q, i64 232
  %i.mj = load i32, ptr %i.mi, align 8, !tbaa !24
end_hunk_1
begin_hunk_2_@_ZL20stbiw__jpg_processDUP19stbi__write_contextPiS1_PfS2_iPA2_KtS5_:vector.ph
  %i.uo = and i32 %.0181.i163, 16711680
  %i.up = icmp eq i32 %i.uo, 16711680
  br i1 %i.up, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.lr.ph.i161
  %.val.i166 = load ptr, ptr %0, align 8, !tbaa !76
  %.val19.i167 = load ptr, ptr %i.tc, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 0, ptr %i.g, align 1, !tbaa !34
  call void %.val.i166(ptr noundef %.val19.i167, ptr noundef nonnull %i.g, i32 noundef 1), !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.lr.ph.i161
  %i.uq = shl i32 %.0181.i163, 8                  ; 2 uses
  %i.ur = add nsw i32 %.02.i162, -8               ; 2 uses
  %i.us = icmp sgt i32 %.02.i162, 15
  br i1 %i.us, label %.lr.ph.i161, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit168, !llvm.loop !5

_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit168: ; preds = %bb.cc, %.lr.ph
  %.018.lcssa.i159 = phi i32 [ %i.uk, %.lr.ph ], [ %i.uq, %bb.cc ]
  %.0.lcssa.i160 = phi i32 [ %i.uh, %.lr.ph ], [ %i.ur, %bb.cc ] ; 3 uses
  store i32 %.018.lcssa.i159, ptr %1, align 4, !tbaa !24
  store i32 %.0.lcssa.i160, ptr %2, align 4, !tbaa !24
  %i.ut = add nuw nsw i32 %.0236, 1
  %exitcond270.not = icmp eq i32 %.0236, %i.ue
  br i1 %exitcond270.not, label %._crit_edge, label %.lr.ph, !llvm.loop !717

._crit_edge:                                      ; preds = %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit168
  %i.uu = and i32 %i.uc, 15
  br label %bb.cd

bb.cd:                                            ; preds = %._crit_edge, %bb.ca
  %i.uv = phi i32 [ %.0.lcssa.i160, %._crit_edge ], [ %i.tu, %bb.ca ]
  %.0103 = phi i32 [ %i.uu, %._crit_edge ], [ %i.uc, %bb.ca ]
  %i.uw = call i32 @llvm.abs.i32(i32 %i.tx, i1 true)
  %i.ux = lshr i32 %i.uw, 1
  %i.uy = call range(i32 2, 33) i32 @llvm.ctlz.i32(i32 %i.ux, i1 false)
  %i.uz = sub nuw nsw i32 33, %i.uy               ; 3 uses
  %.lobit.i169 = ashr i32 %i.tx, 31
  %i.va = add nsw i32 %.lobit.i169, %i.tx
  %notmask.i170 = shl nsw i32 -1, %i.uz
  %i.vb = xor i32 %notmask.i170, -1
  %i.vc = shl i32 %.0103, 4
  %i.vd = add nsw i32 %i.vc, %i.uz
  %i.ve = sext i32 %i.vd to i64
  %i.vf = getelementptr inbounds [4 x i8], ptr %7, i64 %i.ve ; 2 uses
  %.val117 = load i16, ptr %i.vf, align 2, !tbaa !41
  %i.vg = getelementptr i8, ptr %i.vf, i64 2
  %.val118 = load i16, ptr %i.vg, align 2, !tbaa !41
  %i.vh = load i32, ptr %1, align 4, !tbaa !24
  %i.vi = zext i16 %.val118 to i32
  %i.vj = add nsw i32 %i.uv, %i.vi                ; 4 uses
  %i.vk = zext i16 %.val117 to i32
  %i.vl = sub nsw i32 24, %i.vj
  %i.vm = shl i32 %i.vk, %i.vl
  %i.vn = or i32 %i.vm, %i.vh                     ; 2 uses
  %i.vo = icmp sgt i32 %i.vj, 7
  br i1 %i.vo, label %.lr.ph.i173, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit180

.lr.ph.i173:                                      ; preds = %bb.cd, %bb.cf
  %.02.i174 = phi i32 [ %i.vu, %bb.cf ], [ %i.vj, %bb.cd ] ; 2 uses
  %.0181.i175 = phi i32 [ %i.vt, %bb.cf ], [ %i.vn, %bb.cd ] ; 3 uses
  %i.vp = lshr i32 %.0181.i175, 16
  %i.vq = trunc i32 %i.vp to i8
  %.val20.i176 = load ptr, ptr %0, align 8, !tbaa !76
  %.val21.i177 = load ptr, ptr %i.tc, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 %i.vq, ptr %i.f, align 1, !tbaa !34
  call void %.val20.i176(ptr noundef %.val21.i177, ptr noundef nonnull %i.f, i32 noundef 1), !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.vr = and i32 %.0181.i175, 16711680
  %i.vs = icmp eq i32 %i.vr, 16711680
  br i1 %i.vs, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.lr.ph.i173
  %.val.i178 = load ptr, ptr %0, align 8, !tbaa !76
  %.val19.i179 = load ptr, ptr %i.tc, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 0, ptr %i.e, align 1, !tbaa !34
  call void %.val.i178(ptr noundef %.val19.i179, ptr noundef nonnull %i.e, i32 noundef 1), !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.lr.ph.i173
  %i.vt = shl i32 %.0181.i175, 8                  ; 2 uses
  %i.vu = add nsw i32 %.02.i174, -8               ; 2 uses
  %i.vv = icmp samesign ugt i32 %.02.i174, 15
  br i1 %i.vv, label %.lr.ph.i173, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit180, !llvm.loop !5

_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit180: ; preds = %bb.cf, %bb.cd
  %.018.lcssa.i171 = phi i32 [ %i.vn, %bb.cd ], [ %i.vt, %bb.cf ]
  %.0.lcssa.i172 = phi i32 [ %i.vj, %bb.cd ], [ %i.vu, %bb.cf ] ; 2 uses
  store i32 %.018.lcssa.i171, ptr %1, align 4, !tbaa !24
  store i32 %.0.lcssa.i172, ptr %2, align 4, !tbaa !24
  %i.vw = load i32, ptr %1, align 4, !tbaa !24
  %i.vx = add nsw i32 %.0.lcssa.i172, %i.uz       ; 4 uses
  %i.vy = and i32 %i.va, 65535
  %i.vz = and i32 %i.vy, %i.vb
  %i.wa = sub nsw i32 24, %i.vx
  %i.wb = shl i32 %i.vz, %i.wa
  %i.wc = or i32 %i.wb, %i.vw                     ; 2 uses
  %i.wd = icmp sgt i32 %i.vx, 7
  br i1 %i.wd, label %.lr.ph.i183, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit190

.lr.ph.i183:                                      ; preds = %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit180, %bb.ch
  %.02.i184 = phi i32 [ %i.wj, %bb.ch ], [ %i.vx, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit180 ] ; 2 uses
  %.0181.i185 = phi i32 [ %i.wi, %bb.ch ], [ %i.wc, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit180 ] ; 3 uses
  %i.we = lshr i32 %.0181.i185, 16
  %i.wf = trunc i32 %i.we to i8
  %.val20.i186 = load ptr, ptr %0, align 8, !tbaa !76
  %.val21.i187 = load ptr, ptr %i.tc, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.wf, ptr %i.d, align 1, !tbaa !34
  call void %.val20.i186(ptr noundef %.val21.i187, ptr noundef nonnull %i.d, i32 noundef 1), !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.wg = and i32 %.0181.i185, 16711680
  %i.wh = icmp eq i32 %i.wg, 16711680
  br i1 %i.wh, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.lr.ph.i183
  %.val.i188 = load ptr, ptr %0, align 8, !tbaa !76
  %.val19.i189 = load ptr, ptr %i.tc, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.c, align 1, !tbaa !34
  call void %.val.i188(ptr noundef %.val19.i189, ptr noundef nonnull %i.c, i32 noundef 1), !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.lr.ph.i183
  %i.wi = shl i32 %.0181.i185, 8                  ; 2 uses
  %i.wj = add nsw i32 %.02.i184, -8               ; 2 uses
  %i.wk = icmp samesign ugt i32 %.02.i184, 15
  br i1 %i.wk, label %.lr.ph.i183, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit190, !llvm.loop !5

_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit190: ; preds = %bb.ch, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit180
  %.018.lcssa.i181 = phi i32 [ %i.wc, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit180 ], [ %i.wi, %bb.ch ]
  %.0.lcssa.i182 = phi i32 [ %i.vx, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit180 ], [ %i.wj, %bb.ch ] ; 3 uses
  store i32 %.018.lcssa.i181, ptr %1, align 4, !tbaa !24
  store i32 %.0.lcssa.i182, ptr %2, align 4, !tbaa !24
  %i.wl = add nsw i32 %i.ub, 1
  %.not.not = icmp sgt i32 %.0105.lcssa.ph, %i.ub
  br i1 %.not.not, label %.preheader, label %._crit_edge239, !llvm.loop !718

._crit_edge239:                                   ; preds = %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit190
  br i1 %.not, label %bb.ci, label %bb.cm

bb.ci:                                            ; preds = %._crit_edge239
  %i.wm = load i32, ptr %1, align 4, !tbaa !24
  %i.wn = zext i16 %i.t to i32
  %i.wo = add nsw i32 %.0.lcssa.i182, %i.wn       ; 4 uses
  %i.wp = zext i16 %i.r to i32
  %i.wq = sub nsw i32 24, %i.wo
  %i.wr = shl i32 %i.wp, %i.wq
  %i.ws = or i32 %i.wr, %i.wm                     ; 2 uses
  %i.wt = icmp sgt i32 %i.wo, 7
  br i1 %i.wt, label %.lr.ph.i193, label %.sink.split

.lr.ph.i193:                                      ; preds = %bb.ci
  %i.wu = getelementptr i8, ptr %0, i64 8         ; 2 uses
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cl, %.lr.ph.i193
  %.02.i194 = phi i32 [ %i.wo, %.lr.ph.i193 ], [ %i.xa, %bb.cl ] ; 2 uses
  %.0181.i195 = phi i32 [ %i.ws, %.lr.ph.i193 ], [ %i.wz, %bb.cl ] ; 3 uses
  %i.wv = lshr i32 %.0181.i195, 16
  %i.ww = trunc i32 %i.wv to i8
  %.val20.i196 = load ptr, ptr %0, align 8, !tbaa !76
  %.val21.i197 = load ptr, ptr %i.wu, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.ww, ptr %i.b, align 1, !tbaa !34
  call void %.val20.i196(ptr noundef %.val21.i197, ptr noundef nonnull %i.b, i32 noundef 1), !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.wx = and i32 %.0181.i195, 16711680
  %i.wy = icmp eq i32 %i.wx, 16711680
  br i1 %i.wy, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %.val.i198 = load ptr, ptr %0, align 8, !tbaa !76
  %.val19.i199 = load ptr, ptr %i.wu, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 1, !tbaa !34
  call void %.val.i198(ptr noundef %.val19.i199, ptr noundef nonnull %i.a, i32 noundef 1), !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.wz = shl i32 %.0181.i195, 8                  ; 2 uses
  %i.xa = add nsw i32 %.02.i194, -8               ; 2 uses
  %i.xb = icmp sgt i32 %.02.i194, 15
  br i1 %i.xb, label %bb.cj, label %.sink.split, !llvm.loop !5

.sink.split:                                      ; preds = %bb.cl, %bb.by, %bb.ci, %.critedge
  %.018.lcssa.i191.sink = phi i32 [ %i.tr, %bb.by ], [ %i.tk, %.critedge ], [ %i.ws, %bb.ci ], [ %i.wz, %bb.cl ]
  %.0.lcssa.i192.sink = phi i32 [ %i.ts, %bb.by ], [ %i.tg, %.critedge ], [ %i.wo, %bb.ci ], [ %i.xa, %bb.cl ]
  store i32 %.018.lcssa.i191.sink, ptr %1, align 4, !tbaa !24
  store i32 %.0.lcssa.i192.sink, ptr %2, align 4, !tbaa !24
  br label %bb.cm

bb.cm:                                            ; preds = %.sink.split, %._crit_edge239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #33
  ret i32 %i.jg
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i4 @llvm.bitreverse.i4(i4) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i5 @llvm.bitreverse.i5(i5) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i7 @llvm.bitreverse.i7(i7) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.bitreverse.i8(i8) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { <4 x float>, <4 x i32> } @llvm.frexp.v4f32.v4i32(<4 x float>) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.abs.v4i8(<4 x i8>, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #26

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #17 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nofree nosync nounwind willreturn }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #33 = { nounwind }
attributes #34 = { nounwind allocsize(0) }
attributes #35 = { nounwind allocsize(1) }

!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}
!llvm.errno.tbaa = !{!20}

!0 = distinct !{null, null, null}
!1 = distinct !{!1, !42}
!2 = distinct !{!2, !42}
!3 = distinct !{null, null}
!4 = distinct !{null, null}
!5 = distinct !{!5, !42}
!6 = distinct !{!6, !42}
!7 = distinct !{!7, !42}
!8 = distinct !{null, ptr @_ZL10stbi__get8P13stbi__context, null}
!9 = distinct !{ptr @_ZL10stbi__get8P13stbi__context, null}
!10 = distinct !{null}
!11 = distinct !{null, ptr @_ZL10stbi__get8P13stbi__context, null}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!16 = !{!"Simple C++ TBAA"}
!17 = !{!"omnipotent char", !16, i64 0}
!18 = !{!"int", !17, i64 0}
!19 = !{!"__libc_errno", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"any pointer", !17, i64 0}
!22 = !{!"p1 omnipotent char", !21, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!18, !18, i64 0}
!25 = !{!21, !21, i64 0}
!26 = !{i64 0, i64 8, !25, i64 8, i64 8, !25, i64 16, i64 8, !25}
!27 = !{!"_ZTS17stbi_io_callbacks", !21, i64 0, !21, i64 8, !21, i64 16}
!28 = !{!"_ZTS13stbi__context", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !27, i64 16, !21, i64 40, !18, i64 48, !18, i64 52, !17, i64 56, !22, i64 184, !22, i64 192, !22, i64 200, !22, i64 208}
!29 = !{!28, !21, i64 40}
!30 = !{!28, !18, i64 52}
!31 = !{!28, !18, i64 48}
!32 = !{!28, !22, i64 200}
!33 = !{!28, !21, i64 16}
!34 = !{!17, !17, i64 0}
!35 = !{!28, !22, i64 184}
!36 = !{!28, !22, i64 192}
!37 = !{!28, !22, i64 208}
!38 = !{!"_ZTS17stbi__result_info", !18, i64 0, !18, i64 4, !18, i64 8}
!39 = !{!38, !18, i64 0}
!40 = !{!"short", !17, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"llvm.loop.isvectorized", i32 1}
!44 = !{!"llvm.loop.unroll.runtime.disable"}
!45 = !{!"branch_weights", i32 4, i32 12}
!46 = !{!"_ZTS9stbi__gif", !18, i64 0, !18, i64 4, !22, i64 8, !22, i64 16, !22, i64 24, !18, i64 32, !18, i64 36, !18, i64 40, !18, i64 44, !18, i64 48, !17, i64 52, !17, i64 1076, !17, i64 2100, !22, i64 34872, !18, i64 34880, !18, i64 34884, !18, i64 34888, !18, i64 34892, !18, i64 34896, !18, i64 34900, !18, i64 34904, !18, i64 34908, !18, i64 34912, !18, i64 34916, !18, i64 34920}
!47 = !{!46, !18, i64 0}
!48 = !{!46, !18, i64 4}
!49 = !{!46, !18, i64 34920}
!50 = !{!"llvm.loop.peeled.count", i32 1}
!51 = !{!46, !22, i64 8}
!52 = !{!46, !22, i64 24}
!53 = !{!46, !22, i64 16}
!54 = !{!"float", !17, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!"_ZTS14stbi__zhuffman", !17, i64 0, !17, i64 1024, !17, i64 1056, !17, i64 1124, !17, i64 1156, !17, i64 1444}
!57 = !{!"_ZTS10stbi__zbuf", !22, i64 0, !22, i64 8, !18, i64 16, !18, i64 20, !22, i64 24, !22, i64 32, !22, i64 40, !18, i64 48, !56, i64 52, !56, i64 2072}
!58 = !{!57, !22, i64 0}
!59 = !{!57, !22, i64 8}
!60 = !{!57, !22, i64 32}
!61 = !{!57, !22, i64 24}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!"branch_weights", i32 4, i32 28}
!64 = !{!"_ZTS10stbi__jpeg", !21, i64 0, !17, i64 8, !17, i64 6728, !17, i64 13448, !17, i64 13960, !18, i64 18056, !18, i64 18060, !18, i64 18064, !18, i64 18068, !18, i64 18072, !18, i64 18076, !17, i64 18080, !18, i64 18464, !18, i64 18468, !17, i64 18472, !18, i64 18476, !18, i64 18480, !18, i64 18484, !18, i64 18488, !18, i64 18492, !18, i64 18496, !18, i64 18500, !18, i64 18504, !18, i64 18508, !18, i64 18512, !18, i64 18516, !17, i64 18520, !18, i64 18536, !18, i64 18540, !21, i64 18544, !21, i64 18552, !21, i64 18560}
!65 = !{!64, !21, i64 0}
!66 = !{!28, !18, i64 0}
!67 = !{!28, !18, i64 4}
!68 = !{!28, !18, i64 8}
!69 = !{!"_ZTS9stbi__png", !21, i64 0, !22, i64 8, !22, i64 16, !22, i64 24, !18, i64 32}
!70 = !{!69, !21, i64 0}
!71 = !{!"_ZTS14stbi__bmp_data", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !18, i64 24, !18, i64 28}
!72 = !{!71, !18, i64 28}
!73 = !{!71, !18, i64 0}
!74 = !{!28, !21, i64 24}
!75 = !{!"_ZTS19stbi__write_context", !21, i64 0, !21, i64 8}
!76 = !{!75, !21, i64 0}
!77 = !{!75, !21, i64 8}
!78 = !{!"branch_weights", i32 8, i32 24}
!79 = !{!64, !18, i64 18504}
!80 = !{!64, !18, i64 18508}
!81 = !{!64, !17, i64 18472}
!82 = !{!64, !18, i64 18536}
!83 = !{!"p1 short", !21, i64 0}
!84 = !{!"_ZTSN10stbi__jpegUt_E", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !18, i64 24, !18, i64 28, !18, i64 32, !18, i64 36, !18, i64 40, !22, i64 48, !21, i64 56, !21, i64 64, !22, i64 72, !83, i64 80, !18, i64 88, !18, i64 92}
end_hunk_2
