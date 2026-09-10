Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/StbiLdrImageSaver?download=true
inline.NumInlined: 3759
inline.NumDeleted: 1104
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_Z21stbi_write_png_to_memPhiiiiPi:bb.a
  %.1.lcssa = phi i32 [ %.0177313, %bb.e ], [ %spec.select206, %select.unfold ]
  br i1 %.not204, label %bb.e, label %._crit_edge306.thread, !llvm.loop !326

._crit_edge306.thread:                            ; preds = %._crit_edge306, %._crit_edge
  %.1179.lcssa348 = phi i32 [ %.0178312, %._crit_edge ], [ %.1179.lcssa, %._crit_edge306 ]
  %i.ee = trunc i32 %.1179.lcssa348 to i8
  %i.ef = mul nsw i64 %indvars.iv335, %i.p
  %i.eg = getelementptr inbounds i8, ptr %i.g, i64 %i.ef ; 2 uses
  store i8 %i.ee, ptr %i.eg, align 1, !tbaa !59
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eh, ptr nonnull align 1 %i.i, i64 %i.h, i1 false)
  %indvars.iv.next336 = add nuw nsw i64 %indvars.iv335, 1 ; 2 uses
  %exitcond339.not = icmp eq i64 %indvars.iv.next336, %wide.trip.count338
  br i1 %exitcond339.not, label %._crit_edge316, label %bb.d, !llvm.loop !327

._crit_edge316:                                   ; preds = %._crit_edge306.thread, %.preheader291
  tail call void @free(ptr noundef %i.i) #33
  %i.ei = call noundef ptr @_Z18stbi_zlib_compressPhiPii(ptr noundef nonnull %i.g, i32 noundef %i.e, ptr noundef nonnull %i.a, i32 noundef 8) ; 2 uses
  tail call void @free(ptr noundef nonnull %i.g) #33
  %i.ej = load i32, ptr %i.a, align 4, !tbaa !57  ; 9 uses
  %i.ek = add nsw i32 %i.ej, 57                   ; 2 uses
  %i.el = sext i32 %i.ek to i64
  %i.em = tail call noalias ptr @malloc(i64 noundef %i.el) #34 ; 28 uses
  %.not202 = icmp eq ptr %i.em, null
  br i1 %.not202, label %bb.v, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge316
  store i32 %i.ek, ptr %5, align 4, !tbaa !57
  store i64 727905341920923785, ptr %i.em, align 1
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store <8 x i8> <i8 0, i8 0, i8 0, i8 13, i8 73, i8 72, i8 68, i8 82>, ptr %i.en, align 1, !tbaa !59
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.ep = lshr i32 %2, 24                         ; 2 uses
  %i.eq = trunc nuw i32 %i.ep to i8
  store i8 %i.eq, ptr %i.eo, align 1, !tbaa !59
  %i.er = lshr i32 %2, 16                         ; 2 uses
  %i.es = trunc i32 %i.er to i8
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 17
  store i8 %i.es, ptr %i.et, align 1, !tbaa !59
  %i.eu = lshr i32 %2, 8                          ; 2 uses
  %i.ev = trunc i32 %i.eu to i8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.em, i64 18
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !59
  %i.ex = trunc i32 %2 to i8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.em, i64 19
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !59
  %i.ez = getelementptr inbounds nuw i8, ptr %i.em, i64 20
  %i.fa = lshr i32 %3, 24                         ; 2 uses
  %i.fb = trunc nuw i32 %i.fa to i8
  store i8 %i.fb, ptr %i.ez, align 1, !tbaa !59
  %i.fc = lshr i32 %3, 16                         ; 2 uses
  %i.fd = trunc i32 %i.fc to i8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.em, i64 21
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !59
  %i.ff = lshr i32 %3, 8                          ; 2 uses
  %i.fg = trunc i32 %i.ff to i8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.em, i64 22
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !59
  %i.fi = trunc i32 %3 to i8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.em, i64 23
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !59
  %i.fk = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.fl = getelementptr inbounds nuw i8, ptr %i.em, i64 25
  store i8 8, ptr %i.fk, align 1, !tbaa !59
  %i.fm = sext i32 %4 to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr @__const._Z21stbi_write_png_to_memPhiiiiPi.ctype, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !57 ; 2 uses
  %i.fp = trunc i32 %i.fo to i8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.em, i64 26
  store i8 %i.fp, ptr %i.fl, align 1, !tbaa !59
  %i.fr = getelementptr inbounds nuw i8, ptr %i.em, i64 27
  store i8 0, ptr %i.fq, align 1, !tbaa !59
  %i.fs = getelementptr inbounds nuw i8, ptr %i.em, i64 28
  store i8 0, ptr %i.fr, align 1, !tbaa !59
  store i8 0, ptr %i.fs, align 1, !tbaa !59
  %i.ft = xor i32 %i.ep, 245
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !57
  %i.fx = xor i32 %i.fw, 5725777                  ; 2 uses
  %i.fy = lshr i32 %i.fx, 8
  %i.fz = xor i32 %i.fx, %i.er
  %i.ga = and i32 %i.fz, 255
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !57
  %i.ge = xor i32 %i.gd, %i.fy                    ; 2 uses
  %i.gf = lshr i32 %i.ge, 8
  %i.gg = xor i32 %i.ge, %i.eu
  %i.gh = and i32 %i.gg, 255
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !57
  %i.gl = xor i32 %i.gk, %i.gf                    ; 2 uses
  %i.gm = lshr i32 %i.gl, 8
  %i.gn = xor i32 %i.gl, %2
  %i.go = and i32 %i.gn, 255
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !57
  %i.gs = xor i32 %i.gr, %i.gm                    ; 2 uses
  %i.gt = lshr i32 %i.gs, 8
  %i.gu = and i32 %i.gs, 255
  %i.gv = xor i32 %i.gu, %i.fa
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !57
  %i.gz = xor i32 %i.gy, %i.gt                    ; 2 uses
  %i.ha = lshr i32 %i.gz, 8
  %i.hb = xor i32 %i.gz, %i.fc
  %i.hc = and i32 %i.hb, 255
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !57
  %i.hg = xor i32 %i.hf, %i.ha                    ; 2 uses
  %i.hh = lshr i32 %i.hg, 8
  %i.hi = xor i32 %i.hg, %i.ff
  %i.hj = and i32 %i.hi, 255
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !57
  %i.hn = xor i32 %i.hm, %i.hh                    ; 2 uses
  %i.ho = lshr i32 %i.hn, 8
  %i.hp = xor i32 %i.hn, %3
  %i.hq = and i32 %i.hp, 255
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !57
  %i.hu = xor i32 %i.ht, %i.ho                    ; 2 uses
  %i.hv = lshr i32 %i.hu, 8
  %i.hw = and i32 %i.hu, 255
  %i.hx = xor i32 %i.hw, 8
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.hy
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !57
  %i.ib = xor i32 %i.ia, %i.hv                    ; 2 uses
  %i.ic = lshr i32 %i.ib, 8
  %i.id = xor i32 %i.ib, %i.fo
  %i.ie = and i32 %i.id, 255
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !57
  %i.ii = xor i32 %i.ih, %i.ic                    ; 2 uses
  %i.ij = lshr i32 %i.ii, 8
  %i.ik = and i32 %i.ii, 255
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !57
  %i.io = xor i32 %i.in, %i.ij                    ; 2 uses
  %i.ip = lshr i32 %i.io, 8
  %i.iq = and i32 %i.io, 255
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !57
  %i.iu = xor i32 %i.it, %i.ip                    ; 2 uses
  %i.iv = lshr i32 %i.iu, 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.em, i64 28
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !59
  %i.iy = zext i8 %i.ix to i32
  %i.iz = and i32 %i.iu, 255
  %i.ja = xor i32 %i.iz, %i.iy
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.jb
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !57
  %i.je = xor i32 %i.jd, %i.iv
  %i.jf = getelementptr inbounds nuw i8, ptr %i.em, i64 29
  %i.jg = xor i32 %i.je, -1                       ; 4 uses
  %i.jh = lshr i32 %i.jg, 24
  %i.ji = trunc nuw i32 %i.jh to i8
  store i8 %i.ji, ptr %i.jf, align 1, !tbaa !59
  %i.jj = lshr i32 %i.jg, 16
  %i.jk = trunc i32 %i.jj to i8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.em, i64 30
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !59
  %i.jm = lshr i32 %i.jg, 8
  %i.jn = trunc i32 %i.jm to i8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.em, i64 31
  store i8 %i.jn, ptr %i.jo, align 1, !tbaa !59
  %i.jp = trunc i32 %i.jg to i8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  store i8 %i.jp, ptr %i.jq, align 1, !tbaa !59
  %i.jr = getelementptr inbounds nuw i8, ptr %i.em, i64 33
  %i.js = lshr i32 %i.ej, 24
  %i.jt = trunc nuw i32 %i.js to i8
  store i8 %i.jt, ptr %i.jr, align 1, !tbaa !59
  %i.ju = lshr i32 %i.ej, 16
  %i.jv = trunc i32 %i.ju to i8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.em, i64 34
  store i8 %i.jv, ptr %i.jw, align 1, !tbaa !59
  %i.jx = lshr i32 %i.ej, 8
  %i.jy = trunc i32 %i.jx to i8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.em, i64 35
  store i8 %i.jy, ptr %i.jz, align 1, !tbaa !59
  %i.ka = trunc i32 %i.ej to i8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.em, i64 36
  store i8 %i.ka, ptr %i.kb, align 1, !tbaa !59
  %i.kc = getelementptr inbounds nuw i8, ptr %i.em, i64 37 ; 4 uses
  store <4 x i8> <i8 73, i8 68, i8 65, i8 84>, ptr %i.kc, align 1, !tbaa !59
  %i.kd = getelementptr inbounds nuw i8, ptr %i.em, i64 41 ; 2 uses
  %i.ke = sext i32 %i.ej to i64                   ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.kd, ptr nonnull align 1 %i.ei, i64 %i.ke, i1 false)
  %i.kf = getelementptr inbounds i8, ptr %i.kd, i64 %i.ke ; 6 uses
  tail call void @free(ptr noundef nonnull %i.ei) #33
  %i.kg = icmp sgt i32 %i.ej, -4
  br i1 %i.kg, label %.lr.ph.preheader.i.i, label %_ZL12stbiw__wpcrcPPhi.exit224

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i.i
  %i.kh = add nsw i32 %i.ej, 4                    ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.kh to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.ki = icmp eq i32 %i.kh, 1
  br i1 %i.ki, label %.lr.ph.i.i219.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %.lr.ph.i.i219

.lr.ph.i.i219:                                    ; preds = %.lr.ph.i.i219, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i220 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i222.1, %.lr.ph.i.i219 ] ; 3 uses
  %.078.i.i221 = phi i32 [ -1, %.lr.ph.preheader.i.i.new ], [ %i.ld, %.lr.ph.i.i219 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i219 ]
  %i.kj = lshr i32 %.078.i.i221, 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kc, i64 %indvars.iv.i.i220
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !59
  %i.km = zext i8 %i.kl to i32
  %i.kn = and i32 %.078.i.i221, 255
  %i.ko = xor i32 %i.kn, %i.km
  %i.kp = zext nneg i32 %i.ko to i64
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.kp
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !57
  %i.ks = xor i32 %i.kr, %i.kj                    ; 2 uses
  %i.kt = lshr i32 %i.ks, 8
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kc, i64 %indvars.iv.i.i220
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 1
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !59
  %i.kx = zext i8 %i.kw to i32
  %i.ky = and i32 %i.ks, 255
  %i.kz = xor i32 %i.ky, %i.kx
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.la
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !57
  %i.ld = xor i32 %i.lc, %i.kt                    ; 3 uses
  %indvars.iv.next.i.i222.1 = add nuw nsw i64 %indvars.iv.i.i220, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i219, !llvm.loop !328

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i.i219
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i219.epil.preheader

.lr.ph.i.i219.epil.preheader:                     ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i220.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i222.1, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.078.i.i221.epil.init = phi i32 [ -1, %.lr.ph.preheader.i.i ], [ %i.ld, %._crit_edge.loopexit.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod368 = trunc i32 %i.ej to i1
  tail call void @llvm.assume(i1 %lcmp.mod368)
  %i.le = lshr i32 %.078.i.i221.epil.init, 8
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kc, i64 %indvars.iv.i.i220.epil.init
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !59
  %i.lh = zext i8 %i.lg to i32
  %i.li = and i32 %.078.i.i221.epil.init, 255
  %i.lj = xor i32 %i.li, %i.lh
  %i.lk = zext nneg i32 %i.lj to i64
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr @_ZZL12stbiw__crc32PhiE9crc_table, i64 %i.lk
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !57
  %i.ln = xor i32 %i.lm, %i.le
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i219.epil.preheader
  %.lcssa = phi i32 [ %i.ld, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.ln, %.lr.ph.i.i219.epil.preheader ]
  %i.lo = xor i32 %.lcssa, -1
  br label %_ZL12stbiw__wpcrcPPhi.exit224

_ZL12stbiw__wpcrcPPhi.exit224:                    ; preds = %.lr.ph.i.i, %._crit_edge.loopexit.i.i
  %.07.lcssa.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.lo, %._crit_edge.loopexit.i.i ] ; 4 uses
  %i.lp = lshr i32 %.07.lcssa.i.i, 24
  %i.lq = trunc nuw i32 %i.lp to i8
  store i8 %i.lq, ptr %i.kf, align 1, !tbaa !59
  %i.lr = lshr i32 %.07.lcssa.i.i, 16
  %i.ls = trunc i32 %i.lr to i8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.kf, i64 1
  store i8 %i.ls, ptr %i.lt, align 1, !tbaa !59
  %i.lu = lshr i32 %.07.lcssa.i.i, 8
  %i.lv = trunc i32 %i.lu to i8
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kf, i64 2
  store i8 %i.lv, ptr %i.lw, align 1, !tbaa !59
  %i.lx = trunc i32 %.07.lcssa.i.i to i8
  %i.ly = getelementptr inbounds nuw i8, ptr %i.kf, i64 3
  store i8 %i.lx, ptr %i.ly, align 1, !tbaa !59
  %i.lz = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store i32 0, ptr %i.lz, align 1
  store <8 x i8> <i8 73, i8 69, i8 78, i8 68, i8 -82, i8 66, i8 96, i8 -126>, ptr %i.ma, align 1, !tbaa !59
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge316, %bb.a, %_ZL12stbiw__wpcrcPPhi.exit224, %bb.c
  %.0190 = phi ptr [ %i.em, %_ZL12stbiw__wpcrcPPhi.exit224 ], [ null, %._crit_edge316 ], [ null, %bb.a ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.0190
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i32 0, 2) i32 @stbi_write_png(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.b = call noundef ptr @_Z21stbi_write_png_to_memPhiiiiPi(ptr noundef %4, i32 noundef %5, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %i.a) ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.5) ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.a, align 4, !tbaa !57
  %i.f = sext i32 %i.e to i64
  %i.g = tail call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef %i.f, ptr noundef nonnull %i.d) ; 0 uses
  %i.h = tail call i32 @fclose(ptr noundef nonnull %i.d) ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.0.ph = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  tail call void @free(ptr noundef nonnull %i.b) #33
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local range(i32 0, 2) i32 @stbi_write_png_to_func(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.b = call noundef ptr @_Z21stbi_write_png_to_memPhiiiiPi(ptr noundef %5, i32 noundef %6, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %i.a) ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 4, !tbaa !57
  tail call void %0(ptr noundef %1, ptr noundef nonnull %i.b, i32 noundef %i.d)
  tail call void @free(ptr noundef nonnull %i.b) #33
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @stbi_write_jpg_to_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.stbi__write_context, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  store ptr %0, ptr %7, align 8, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !56
  %i.b = call fastcc noundef i32 @_ZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKvi(ptr noundef %7, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL19stbi_write_jpg_coreP19stbi__write_contextiiiPKvi(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca [64 x float], align 16            ; 4 uses
  %i.j = alloca [64 x float], align 16            ; 5 uses
  %i.k = alloca [64 x i8], align 16               ; 36 uses
  %i.l = alloca [64 x i8], align 16               ; 36 uses
  %i.m = alloca [24 x i8], align 16               ; 14 uses
  %i.n = alloca i32, align 4                      ; 7 uses
  %i.o = alloca i32, align 4                      ; 7 uses
  %i.p = alloca [64 x float], align 16            ; 5 uses
  %i.q = alloca [64 x float], align 16            ; 5 uses
  %i.r = alloca [64 x float], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
end_hunk_0
begin_hunk_1_@_ZL14stbiw__outfileP19stbi__write_contextiiiiiiPviiPKcz:bb.a
  call void %i.dk(ptr noundef %i.dl, ptr noundef nonnull %i.d, i32 noundef range(i32 0, 4) %9), !inline_history !362
  %.1.i = add nsw i32 %.131.i, -1
  %.not.i = icmp eq i32 %.131.i, 0
  br i1 %.not.i, label %_ZL19stbiw__write_pixelsP19stbi__write_contextiiiiiPviii.exit, label %.preheader.i, !llvm.loop !363

_ZL19stbiw__write_pixelsP19stbi__write_contextiiiiiPviii.exit: ; preds = %._crit_edge.split.us39.i, %._crit_edge.split.us.us.us.split.split.split.us.us.i, %._crit_edge.split.us.us.us.split.split.us.us.i, %._crit_edge.split.us.us.us.split.us.us.split.split.us.us.i, %._crit_edge.split.us.us.us.split.us.us.split.us.split.us.us.us.i, %.preheader.us.us.us64.i, %.preheader.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZL19stbiw__write_pixelsP19stbi__write_contextiiiiiPviii.exit
  %.0 = phi i32 [ 1, %_ZL19stbiw__write_pixelsP19stbi__write_contextiiiiiPviii.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #16

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL14stbiw__writefvP19stbi__write_contextPKcP13__va_list_tag(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [2 x i8], align 2                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = load i8, ptr %1, align 1, !tbaa !59      ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !57
  %i.t = trunc i32 %i.s to i8
  store i8 %i.t, ptr %i.a, align 1, !tbaa !59
  %i.u = load ptr, ptr %0, align 8, !tbaa !55
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !56
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
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.ag = trunc i32 %i.af to i16
  store i16 %i.ag, ptr %i.b, align 2
  %i.ah = load ptr, ptr %0, align 8, !tbaa !55
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !56
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
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i32 %i.as, ptr %i.c, align 4
  %i.at = load ptr, ptr %0, align 8, !tbaa !55
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !56
  call void %i.at(ptr noundef %i.au, ptr noundef nonnull %i.c, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j, %bb.f, %bb.b
  %i.av = load i8, ptr %i.i, align 1, !tbaa !59   ; 2 uses
  %.not = icmp eq i8 %i.av, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !365

._crit_edge:                                      ; preds = %bb.o, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #16

; Function Attrs: mustprogress nofree nounwind uwtable
define internal void @_ZL17stbi__stdio_writePvS_i(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #17 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %i.a, ptr noundef %0) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL13stbiw__writefP19stbi__write_contextPKcz(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree readnone captures(none) %1, ...) unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.va_start.p0(ptr nonnull %2)
  call fastcc void @_ZL14stbiw__writefvP19stbi__write_contextPKcP13__va_list_tag(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { float, i32 } @llvm.frexp.f32.i32(float) #18

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #18

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL20stbiw__jpg_processDUP19stbi__write_contextPiS1_PfS2_iPA2_KtS5_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7) unnamed_addr #0 {
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
  %i.q = alloca [64 x i32], align 16              ; 70 uses
  %i.r = load i16, ptr %7, align 2, !tbaa !69     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !69   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 960
  %i.v = load i16, ptr %i.u, align 2, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 962
  %i.x = load i16, ptr %i.w, align 2, !tbaa !69
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
  %i.bi = load float, ptr %i.z, align 4, !tbaa !61
  %i.bj = load float, ptr %i.ab, align 4, !tbaa !61
  %i.bk = load float, ptr %i.ad, align 4, !tbaa !61
  %i.bl = load float, ptr %i.af, align 4, !tbaa !61
  %i.bm = insertelement <4 x float> poison, float %i.bi, i64 0
  %i.bn = insertelement <4 x float> %i.bm, float %i.bj, i64 1
  %i.bo = insertelement <4 x float> %i.bn, float %i.bk, i64 2
  %i.bp = insertelement <4 x float> %i.bo, float %i.bl, i64 3 ; 2 uses
  %i.bq = load float, ptr %i.ag, align 4, !tbaa !61
  %i.br = load float, ptr %i.ah, align 4, !tbaa !61
  %i.bs = load float, ptr %i.ai, align 4, !tbaa !61
  %i.bt = load float, ptr %i.aj, align 4, !tbaa !61
  %i.bu = insertelement <4 x float> poison, float %i.bq, i64 0
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 1
  %i.bw = insertelement <4 x float> %i.bv, float %i.bs, i64 2
  %i.bx = insertelement <4 x float> %i.bw, float %i.bt, i64 3 ; 2 uses
  %i.by = load float, ptr %i.ak, align 4, !tbaa !61
  %i.bz = load float, ptr %i.al, align 4, !tbaa !61
  %i.ca = load float, ptr %i.am, align 4, !tbaa !61
  %i.cb = load float, ptr %i.an, align 4, !tbaa !61
  %i.cc = insertelement <4 x float> poison, float %i.by, i64 0
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 1
  %i.ce = insertelement <4 x float> %i.cd, float %i.ca, i64 2
  %i.cf = insertelement <4 x float> %i.ce, float %i.cb, i64 3 ; 2 uses
  %i.cg = load float, ptr %i.ao, align 4, !tbaa !61
  %i.ch = load float, ptr %i.ap, align 4, !tbaa !61
  %i.ci = load float, ptr %i.aq, align 4, !tbaa !61
  %i.cj = load float, ptr %i.ar, align 4, !tbaa !61
  %i.ck = insertelement <4 x float> poison, float %i.cg, i64 0
  %i.cl = insertelement <4 x float> %i.ck, float %i.ch, i64 1
  %i.cm = insertelement <4 x float> %i.cl, float %i.ci, i64 2
  %i.cn = insertelement <4 x float> %i.cm, float %i.cj, i64 3 ; 2 uses
  %i.co = load float, ptr %i.as, align 4, !tbaa !61
  %i.cp = load float, ptr %i.at, align 4, !tbaa !61
  %i.cq = load float, ptr %i.au, align 4, !tbaa !61
  %i.cr = load float, ptr %i.av, align 4, !tbaa !61
  %i.cs = insertelement <4 x float> poison, float %i.co, i64 0
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 1
  %i.cu = insertelement <4 x float> %i.ct, float %i.cq, i64 2
  %i.cv = insertelement <4 x float> %i.cu, float %i.cr, i64 3 ; 2 uses
  %i.cw = load float, ptr %i.aw, align 4, !tbaa !61
  %i.cx = load float, ptr %i.ax, align 4, !tbaa !61
  %i.cy = load float, ptr %i.ay, align 4, !tbaa !61
  %i.cz = load float, ptr %i.az, align 4, !tbaa !61
  %i.da = insertelement <4 x float> poison, float %i.cw, i64 0
  %i.db = insertelement <4 x float> %i.da, float %i.cx, i64 1
  %i.dc = insertelement <4 x float> %i.db, float %i.cy, i64 2
  %i.dd = insertelement <4 x float> %i.dc, float %i.cz, i64 3 ; 2 uses
  %i.de = load float, ptr %i.ba, align 4, !tbaa !61
  %i.df = load float, ptr %i.bb, align 4, !tbaa !61
  %i.dg = load float, ptr %i.bc, align 4, !tbaa !61
  %i.dh = load float, ptr %i.bd, align 4, !tbaa !61
  %i.di = insertelement <4 x float> poison, float %i.de, i64 0
  %i.dj = insertelement <4 x float> %i.di, float %i.df, i64 1
  %i.dk = insertelement <4 x float> %i.dj, float %i.dg, i64 2
  %i.dl = insertelement <4 x float> %i.dk, float %i.dh, i64 3 ; 2 uses
  %i.dm = load float, ptr %i.be, align 4, !tbaa !61
  %i.dn = load float, ptr %i.bf, align 4, !tbaa !61
  %i.do = load float, ptr %i.bg, align 4, !tbaa !61
  %i.dp = load float, ptr %i.bh, align 4, !tbaa !61
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
  store <32 x float> %interleaved.vec, ptr %i.z, align 4, !tbaa !61
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fg = icmp eq i64 %index.next, 8
  br i1 %i.fg, label %vector.body328, label %vector.body, !llvm.loop !366

vector.body328:                                   ; preds = %vector.body
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 224 ; 2 uses
  %wide.load = load <4 x float>, ptr %3, align 4, !tbaa !61 ; 2 uses
  %wide.load330 = load <4 x float>, ptr %i.fh, align 4, !tbaa !61 ; 2 uses
  %wide.load331 = load <4 x float>, ptr %i.fi, align 4, !tbaa !61 ; 2 uses
  %wide.load332 = load <4 x float>, ptr %i.fj, align 4, !tbaa !61 ; 2 uses
  %wide.load333 = load <4 x float>, ptr %i.fk, align 4, !tbaa !61 ; 2 uses
  %wide.load334 = load <4 x float>, ptr %i.fl, align 4, !tbaa !61 ; 2 uses
  %wide.load335 = load <4 x float>, ptr %i.fm, align 4, !tbaa !61 ; 2 uses
  %wide.load336 = load <4 x float>, ptr %i.fn, align 4, !tbaa !61 ; 2 uses
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
  store <4 x float> %i.gq, ptr %i.fl, align 4, !tbaa !61
  %i.gr = fsub <4 x float> %i.gp, %i.gl
  store <4 x float> %i.gr, ptr %i.fj, align 4, !tbaa !61
  %i.gs = fadd <4 x float> %i.go, %i.gm
  store <4 x float> %i.gs, ptr %i.fh, align 4, !tbaa !61
  %i.gt = fsub <4 x float> %i.go, %i.gm
  store <4 x float> %i.gt, ptr %i.fn, align 4, !tbaa !61
  store <4 x float> %i.ga, ptr %3, align 4, !tbaa !61
  store <4 x float> %i.ge, ptr %i.fi, align 4, !tbaa !61
  store <4 x float> %i.gb, ptr %i.fk, align 4, !tbaa !61
  store <4 x float> %i.gf, ptr %i.fm, align 4, !tbaa !61
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 176 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 2 uses
  %wide.load.1 = load <4 x float>, ptr %i.gu, align 4, !tbaa !61 ; 2 uses
  %wide.load330.1 = load <4 x float>, ptr %i.gv, align 4, !tbaa !61 ; 2 uses
  %wide.load331.1 = load <4 x float>, ptr %i.gw, align 4, !tbaa !61 ; 2 uses
  %wide.load332.1 = load <4 x float>, ptr %i.gx, align 4, !tbaa !61 ; 2 uses
  %wide.load333.1 = load <4 x float>, ptr %i.gy, align 4, !tbaa !61 ; 2 uses
  %wide.load334.1 = load <4 x float>, ptr %i.gz, align 4, !tbaa !61 ; 2 uses
  %wide.load335.1 = load <4 x float>, ptr %i.ha, align 4, !tbaa !61 ; 2 uses
  %wide.load336.1 = load <4 x float>, ptr %i.hb, align 4, !tbaa !61 ; 2 uses
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
  store <4 x float> %i.ie, ptr %i.gz, align 4, !tbaa !61
  %i.if = fsub <4 x float> %i.id, %i.hz
  store <4 x float> %i.if, ptr %i.gx, align 4, !tbaa !61
  %i.ig = fadd <4 x float> %i.ic, %i.ia
  store <4 x float> %i.ig, ptr %i.gv, align 4, !tbaa !61
  %i.ih = fsub <4 x float> %i.ic, %i.ia
  store <4 x float> %i.ih, ptr %i.hb, align 4, !tbaa !61
  store <4 x float> %i.ho, ptr %i.gu, align 4, !tbaa !61
  store <4 x float> %i.hs, ptr %i.gw, align 4, !tbaa !61
  store <4 x float> %i.hp, ptr %i.gy, align 4, !tbaa !61
  store <4 x float> %i.ht, ptr %i.ha, align 4, !tbaa !61
  br label %.preheader213

.preheader213:                                    ; preds = %.preheader213, %vector.body328
  %indvars.iv261 = phi i64 [ 0, %vector.body328 ], [ %indvars.iv.next262.1, %.preheader213 ] ; 5 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv261
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !61
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv261
  %i.il = load float, ptr %i.ik, align 4, !tbaa !61
  %i.im = fmul float %i.ij, %i.il                 ; 2 uses
  %i.in = fcmp olt float %i.im, 0.000000e+00
  %.v = select i1 %i.in, float -5.000000e-01, float 5.000000e-01
  %i.io = fadd float %i.im, %.v
  %i.ip = fptosi float %i.io to i32
  %i.iq = getelementptr inbounds nuw i8, ptr @_ZL17stbiw__jpg_ZigZag, i64 %indvars.iv261
  %i.ir = load i8, ptr %i.iq, align 2, !tbaa !59
  %i.is = zext i8 %i.ir to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.is
  store i32 %i.ip, ptr %i.it, align 4, !tbaa !57
  %indvars.iv.next262 = or disjoint i64 %indvars.iv261, 1 ; 3 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next262
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !61
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next262
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !61
  %i.iy = fmul float %i.iv, %i.ix                 ; 2 uses
  %i.iz = fcmp olt float %i.iy, 0.000000e+00
  %.v.1 = select i1 %i.iz, float -5.000000e-01, float 5.000000e-01
  %i.ja = fadd float %i.iy, %.v.1
  %i.jb = fptosi float %i.ja to i32
  %i.jc = getelementptr inbounds nuw i8, ptr @_ZL17stbiw__jpg_ZigZag, i64 %indvars.iv.next262
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !59
  %i.je = zext i8 %i.jd to i64
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.je
  store i32 %i.jb, ptr %i.jf, align 4, !tbaa !57
  %indvars.iv.next262.1 = add nuw nsw i64 %indvars.iv261, 2 ; 2 uses
  %exitcond264.not.1 = icmp eq i64 %indvars.iv.next262.1, 64
  br i1 %exitcond264.not.1, label %bb.a, label %.preheader213, !llvm.loop !367

bb.a:                                             ; preds = %.preheader213
  %i.jg = load i32, ptr %i.q, align 16, !tbaa !57 ; 2 uses
  %i.jh = icmp eq i32 %i.jg, %5
  br i1 %i.jh, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.val127 = load i16, ptr %6, align 2, !tbaa !69
  %i.ji = getelementptr i8, ptr %6, i64 2
  %.val128 = load i16, ptr %i.ji, align 2, !tbaa !69
  %i.jj = load i32, ptr %1, align 4, !tbaa !57
  %i.jk = load i32, ptr %2, align 4, !tbaa !57
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
  %.val20.i = load ptr, ptr %0, align 8, !tbaa !55
  %.val21.i = load ptr, ptr %i.js, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 %i.ju, ptr %i.p, align 1, !tbaa !59
  call void %.val20.i(ptr noundef %.val21.i, ptr noundef nonnull %i.p, i32 noundef 1), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.jv = and i32 %.0181.i, 16711680
  %i.jw = icmp eq i32 %i.jv, 16711680
  br i1 %i.jw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %0, align 8, !tbaa !55
  %.val19.i = load ptr, ptr %i.js, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i8 0, ptr %i.o, align 1, !tbaa !59
  call void %.val.i(ptr noundef %.val19.i, ptr noundef nonnull %i.o, i32 noundef 1), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.jx = shl i32 %.0181.i, 8                     ; 2 uses
  %i.jy = add nsw i32 %.02.i, -8                  ; 2 uses
  %i.jz = icmp sgt i32 %.02.i, 15
  br i1 %i.jz, label %bb.c, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit, !llvm.loop !1

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
  %.val125 = load i16, ptr %i.kk, align 2, !tbaa !69
  %i.kl = getelementptr i8, ptr %i.kk, i64 2
  %.val126 = load i16, ptr %i.kl, align 2, !tbaa !69
  %i.km = load i32, ptr %1, align 4, !tbaa !57
  %i.kn = load i32, ptr %2, align 4, !tbaa !57
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
  %.val20.i134 = load ptr, ptr %0, align 8, !tbaa !55
  %.val21.i135 = load ptr, ptr %i.kv, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i8 %i.kx, ptr %i.n, align 1, !tbaa !59
  call void %.val20.i134(ptr noundef %.val21.i135, ptr noundef nonnull %i.n, i32 noundef 1), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ky = and i32 %.0181.i133, 16711680
  %i.kz = icmp eq i32 %i.ky, 16711680
  br i1 %i.kz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.val.i136 = load ptr, ptr %0, align 8, !tbaa !55
  %.val19.i137 = load ptr, ptr %i.kv, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i8 0, ptr %i.m, align 1, !tbaa !59
  call void %.val.i136(ptr noundef %.val19.i137, ptr noundef nonnull %i.m, i32 noundef 1), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.la = shl i32 %.0181.i133, 8                  ; 2 uses
  %i.lb = add nsw i32 %.02.i132, -8               ; 2 uses
  %i.lc = icmp sgt i32 %.02.i132, 15
  br i1 %i.lc, label %bb.g, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit138, !llvm.loop !1

_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit138: ; preds = %bb.i, %bb.f
  %.018.lcssa.i129 = phi i32 [ %i.kt, %bb.f ], [ %i.la, %bb.i ]
  %.0.lcssa.i130 = phi i32 [ %i.kp, %bb.f ], [ %i.lb, %bb.i ] ; 2 uses
  store i32 %.018.lcssa.i129, ptr %1, align 4, !tbaa !57
  store i32 %.0.lcssa.i130, ptr %2, align 4, !tbaa !57
  %i.ld = load i32, ptr %1, align 4, !tbaa !57
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
  %.val20.i144 = load ptr, ptr %0, align 8, !tbaa !55
  %.val21.i145 = load ptr, ptr %i.ll, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 %i.ln, ptr %i.l, align 1, !tbaa !59
  call void %.val20.i144(ptr noundef %.val21.i145, ptr noundef nonnull %i.l, i32 noundef 1), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.lo = and i32 %.0181.i143, 16711680
  %i.lp = icmp eq i32 %i.lo, 16711680
  br i1 %i.lp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.val.i146 = load ptr, ptr %0, align 8, !tbaa !55
  %.val19.i147 = load ptr, ptr %i.ll, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i8 0, ptr %i.k, align 1, !tbaa !59
  call void %.val.i146(ptr noundef %.val19.i147, ptr noundef nonnull %i.k, i32 noundef 1), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.lq = shl i32 %.0181.i143, 8                  ; 2 uses
  %i.lr = add nsw i32 %.02.i142, -8               ; 2 uses
  %i.ls = icmp sgt i32 %.02.i142, 15
  br i1 %i.ls, label %bb.j, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit, !llvm.loop !1

_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit: ; preds = %bb.l, %bb.e, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit138, %bb.b
  %storemerge210 = phi i32 [ %i.jx, %bb.e ], [ %i.jq, %bb.b ], [ %i.lj, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit138 ], [ %i.lq, %bb.l ]
  %i.lt = phi i32 [ %i.jy, %bb.e ], [ %i.jm, %bb.b ], [ %i.le, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit138 ], [ %i.lr, %bb.l ] ; 3 uses
  store i32 %storemerge210, ptr %1, align 4, !tbaa !57
  store i32 %i.lt, ptr %2, align 4, !tbaa !57
  %i.lu = getelementptr inbounds nuw i8, ptr %i.q, i64 252
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !57
  %.not = icmp eq i32 %i.lv, 0                    ; 2 uses
  br i1 %.not, label %bb.m, label %.preheader.lr.ph

bb.m:                                             ; preds = %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit
  %i.lw = getelementptr inbounds nuw i8, ptr %i.q, i64 248
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !57
  %i.ly = icmp eq i32 %i.lx, 0
  br i1 %i.ly, label %bb.n, label %.preheader.lr.ph

bb.n:                                             ; preds = %bb.m
  %i.lz = getelementptr inbounds nuw i8, ptr %i.q, i64 244
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !57
  %i.mb = icmp eq i32 %i.ma, 0
  br i1 %i.mb, label %bb.o, label %.preheader.lr.ph

bb.o:                                             ; preds = %bb.n
  %i.mc = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  %i.md = load i32, ptr %i.mc, align 16, !tbaa !57
  %i.me = icmp eq i32 %i.md, 0
  br i1 %i.me, label %bb.p, label %.preheader.lr.ph

bb.p:                                             ; preds = %bb.o
  %i.mf = getelementptr inbounds nuw i8, ptr %i.q, i64 236
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !57
  %i.mh = icmp eq i32 %i.mg, 0
  br i1 %i.mh, label %bb.q, label %.preheader.lr.ph

bb.q:                                             ; preds = %bb.p
  %i.mi = getelementptr inbounds nuw i8, ptr %i.q, i64 232
  %i.mj = load i32, ptr %i.mi, align 8, !tbaa !57
end_hunk_1
begin_hunk_2_@_ZL20stbiw__jpg_processDUP19stbi__write_contextPiS1_PfS2_iPA2_KtS5_:vector.ph
  %i.uo = and i32 %.0181.i163, 16711680
  %i.up = icmp eq i32 %i.uo, 16711680
  br i1 %i.up, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.lr.ph.i161
  %.val.i166 = load ptr, ptr %0, align 8, !tbaa !55
  %.val19.i167 = load ptr, ptr %i.tc, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 0, ptr %i.g, align 1, !tbaa !59
  call void %.val.i166(ptr noundef %.val19.i167, ptr noundef nonnull %i.g, i32 noundef 1), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.lr.ph.i161
  %i.uq = shl i32 %.0181.i163, 8                  ; 2 uses
  %i.ur = add nsw i32 %.02.i162, -8               ; 2 uses
  %i.us = icmp sgt i32 %.02.i162, 15
  br i1 %i.us, label %.lr.ph.i161, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit168, !llvm.loop !1

_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit168: ; preds = %bb.cc, %.lr.ph
  %.018.lcssa.i159 = phi i32 [ %i.uk, %.lr.ph ], [ %i.uq, %bb.cc ]
  %.0.lcssa.i160 = phi i32 [ %i.uh, %.lr.ph ], [ %i.ur, %bb.cc ] ; 3 uses
  store i32 %.018.lcssa.i159, ptr %1, align 4, !tbaa !57
  store i32 %.0.lcssa.i160, ptr %2, align 4, !tbaa !57
  %i.ut = add nuw nsw i32 %.0236, 1
  %exitcond270.not = icmp eq i32 %.0236, %i.ue
  br i1 %exitcond270.not, label %._crit_edge, label %.lr.ph, !llvm.loop !369

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
  %.val117 = load i16, ptr %i.vf, align 2, !tbaa !69
  %i.vg = getelementptr i8, ptr %i.vf, i64 2
  %.val118 = load i16, ptr %i.vg, align 2, !tbaa !69
  %i.vh = load i32, ptr %1, align 4, !tbaa !57
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
  %.val20.i176 = load ptr, ptr %0, align 8, !tbaa !55
  %.val21.i177 = load ptr, ptr %i.tc, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 %i.vq, ptr %i.f, align 1, !tbaa !59
  call void %.val20.i176(ptr noundef %.val21.i177, ptr noundef nonnull %i.f, i32 noundef 1), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.vr = and i32 %.0181.i175, 16711680
  %i.vs = icmp eq i32 %i.vr, 16711680
  br i1 %i.vs, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.lr.ph.i173
  %.val.i178 = load ptr, ptr %0, align 8, !tbaa !55
  %.val19.i179 = load ptr, ptr %i.tc, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 0, ptr %i.e, align 1, !tbaa !59
  call void %.val.i178(ptr noundef %.val19.i179, ptr noundef nonnull %i.e, i32 noundef 1), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.lr.ph.i173
  %i.vt = shl i32 %.0181.i175, 8                  ; 2 uses
  %i.vu = add nsw i32 %.02.i174, -8               ; 2 uses
  %i.vv = icmp samesign ugt i32 %.02.i174, 15
  br i1 %i.vv, label %.lr.ph.i173, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit180, !llvm.loop !1

_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit180: ; preds = %bb.cf, %bb.cd
  %.018.lcssa.i171 = phi i32 [ %i.vn, %bb.cd ], [ %i.vt, %bb.cf ]
  %.0.lcssa.i172 = phi i32 [ %i.vj, %bb.cd ], [ %i.vu, %bb.cf ] ; 2 uses
  store i32 %.018.lcssa.i171, ptr %1, align 4, !tbaa !57
  store i32 %.0.lcssa.i172, ptr %2, align 4, !tbaa !57
  %i.vw = load i32, ptr %1, align 4, !tbaa !57
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
  %.val20.i186 = load ptr, ptr %0, align 8, !tbaa !55
  %.val21.i187 = load ptr, ptr %i.tc, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.wf, ptr %i.d, align 1, !tbaa !59
  call void %.val20.i186(ptr noundef %.val21.i187, ptr noundef nonnull %i.d, i32 noundef 1), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.wg = and i32 %.0181.i185, 16711680
  %i.wh = icmp eq i32 %i.wg, 16711680
  br i1 %i.wh, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.lr.ph.i183
  %.val.i188 = load ptr, ptr %0, align 8, !tbaa !55
  %.val19.i189 = load ptr, ptr %i.tc, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.c, align 1, !tbaa !59
  call void %.val.i188(ptr noundef %.val19.i189, ptr noundef nonnull %i.c, i32 noundef 1), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.lr.ph.i183
  %i.wi = shl i32 %.0181.i185, 8                  ; 2 uses
  %i.wj = add nsw i32 %.02.i184, -8               ; 2 uses
  %i.wk = icmp samesign ugt i32 %.02.i184, 15
  br i1 %i.wk, label %.lr.ph.i183, label %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit190, !llvm.loop !1

_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit190: ; preds = %bb.ch, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit180
  %.018.lcssa.i181 = phi i32 [ %i.wc, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit180 ], [ %i.wi, %bb.ch ]
  %.0.lcssa.i182 = phi i32 [ %i.vx, %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit180 ], [ %i.wj, %bb.ch ] ; 3 uses
  store i32 %.018.lcssa.i181, ptr %1, align 4, !tbaa !57
  store i32 %.0.lcssa.i182, ptr %2, align 4, !tbaa !57
  %i.wl = add nsw i32 %i.ub, 1
  %.not.not = icmp sgt i32 %.0105.lcssa.ph, %i.ub
  br i1 %.not.not, label %.preheader, label %._crit_edge239, !llvm.loop !370

._crit_edge239:                                   ; preds = %_ZL20stbiw__jpg_writeBitsP19stbi__write_contextPiS1_PKt.exit190
  br i1 %.not, label %bb.ci, label %bb.cm

bb.ci:                                            ; preds = %._crit_edge239
  %i.wm = load i32, ptr %1, align 4, !tbaa !57
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
  %.val20.i196 = load ptr, ptr %0, align 8, !tbaa !55
  %.val21.i197 = load ptr, ptr %i.wu, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.ww, ptr %i.b, align 1, !tbaa !59
  call void %.val20.i196(ptr noundef %.val21.i197, ptr noundef nonnull %i.b, i32 noundef 1), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.wx = and i32 %.0181.i195, 16711680
  %i.wy = icmp eq i32 %i.wx, 16711680
  br i1 %i.wy, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %.val.i198 = load ptr, ptr %0, align 8, !tbaa !55
  %.val19.i199 = load ptr, ptr %i.wu, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 1, !tbaa !59
  call void %.val.i198(ptr noundef %.val19.i199, ptr noundef nonnull %i.a, i32 noundef 1), !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.wz = shl i32 %.0181.i195, 8                  ; 2 uses
  %i.xa = add nsw i32 %.02.i194, -8               ; 2 uses
  %i.xb = icmp sgt i32 %.02.i194, 15
  br i1 %i.xb, label %bb.cj, label %.sink.split, !llvm.loop !1

.sink.split:                                      ; preds = %bb.cl, %bb.by, %bb.ci, %.critedge
  %.018.lcssa.i191.sink = phi i32 [ %i.tr, %bb.by ], [ %i.tk, %.critedge ], [ %i.ws, %bb.ci ], [ %i.wz, %bb.cl ]
  %.0.lcssa.i192.sink = phi i32 [ %i.ts, %bb.by ], [ %i.tg, %.critedge ], [ %i.wo, %bb.ci ], [ %i.xa, %bb.cl ]
  store i32 %.018.lcssa.i191.sink, ptr %1, align 4, !tbaa !57
  store i32 %.0.lcssa.i192.sink, ptr %2, align 4, !tbaa !57
  br label %bb.cm

bb.cm:                                            ; preds = %.sink.split, %._crit_edge239
  %.0104 = load i32, ptr %i.q, align 16, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #33
  ret i32 %.0104
}

declare void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %0, align 8, !tbaa !72
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #33
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %0, align 8, !tbaa !72
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %0) #33, !inline_history !371
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEE16__on_zero_sharedEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt3__119__shared_weak_count13__get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #21

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEE21__on_zero_shared_weakEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #40
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: nounwind
declare void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #21

; Function Attrs: nounwind
declare void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #21

declare { ptr, i64 } @_ZNKSt3__14__fs10filesystem4path11__extensionEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #10

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #23 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.15) #39
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef %0) local_unnamed_addr #24 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #39
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12length_error, i64 16), ptr %0, align 8, !tbaa !72
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #21

declare void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZNK3tev17StbiLdrImageSaver4saveERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEERKNS1_4__fs10filesystem4pathENS1_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiEN3$_08__invokeEPvSJ_i"(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #26 align 2 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %i.a) ; 0 uses
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #10

declare void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev14ImageSaveErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #40
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #21

declare void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv() local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__1::vector", align 8  ; 4 uses
  %1 = alloca [1 x %"class.std::__1::shared_ptr.26"], align 16 ; 7 uses
  %i.a = load atomic i8, ptr @_ZGVZN4tlog6Logger6globalEvE6logger acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.i, !prof !95

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4tlog6Logger6globalEvE6logger) #33
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #37
          to label %bb.d unwind label %bb.j       ; 3 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.e = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4tlog13ConsoleOutput6globalEv()
          to label %bb.e unwind label %bb.k       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !98   ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.e, align 8, !tbaa !67
  store <2 x ptr> %i.h, ptr %1, align 16, !tbaa !67
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrIN4tlog7IOutputEEC2B8ne180100INS1_13ConsoleOutputEvEERKNS0_IT_EE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrIN4tlog7IOutputEEC2B8ne180100INS1_13ConsoleOutputEvEERKNS0_IT_EE.exit

_ZNSt3__110shared_ptrIN4tlog7IOutputEEC2B8ne180100INS1_13ConsoleOutputEvEERKNS0_IT_EE.exit: ; preds = %bb.e, %bb.f
  invoke void @_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEEC2B8ne180100ESt16initializer_listIS4_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %1, i64 1)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %_ZNSt3__110shared_ptrIN4tlog7IOutputEEC2B8ne180100INS1_13ConsoleOutputEvEERKNS0_IT_EE.exit
  invoke void @_ZN4tlog6LoggerC2ENSt3__16vectorINS1_10shared_ptrINS_7IOutputEEENS1_9allocatorIS5_EEEE(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  store ptr %i.d, ptr @_ZZN4tlog6Logger6globalEvE6logger, align 8, !tbaa !373
  call void @_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #33
  call void @_ZNSt3__110shared_ptrIN4tlog7IOutputEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  %i.k = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3__110unique_ptrIN4tlog6LoggerENS_14default_deleteIS2_EEED2B8ne180100Ev, ptr nonnull @_ZZN4tlog6Logger6globalEvE6logger, ptr nonnull @__dso_handle) #33 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4tlog6Logger6globalEvE6logger) #33
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b, %bb.a
  ret ptr @_ZZN4tlog6Logger6globalEvE6logger

bb.j:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.l:                                             ; preds = %_ZNSt3__110shared_ptrIN4tlog7IOutputEEC2B8ne180100INS1_13ConsoleOutputEvEERKNS0_IT_EE.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.loopexit

bb.m:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #33
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.o, %bb.m ], [ %i.n, %bb.l ]
  call void @_ZNSt3__110shared_ptrIN4tlog7IOutputEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #33
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.k
end_hunk_2
